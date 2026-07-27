#!/usr/bin/env python3

"""Extract SGB border previews from ROM data blocks tagged .sgbborder in a .sym file."""

import argparse
import os
import png


def warn(message):
    print("WARNING:", message)


def abort(message):
    print("FATAL:", message)
    raise SystemExit(1)


def parse_int(value):
    value = value.strip().lower()
    if value.startswith("$"):
        return int(value[1:], 16)
    if value.startswith("0x"):
        return int(value[2:], 16)
    return int(value, 10)


def parse_argument_map(arguments):
    result = {}
    if arguments is None:
        return result

    for argument in arguments.split(","):
        argument = argument.strip()
        if not argument or "=" not in argument:
            continue
        key, value = argument.split("=", 1)
        result[key.strip().lower()] = value.strip()

    return result


def parse_image_width(arguments):
    width = 128

    if arguments is None:
        return width

    for token in arguments.split(","):
        token = token.strip().lower()
        if not token or "=" in token:
            continue
        if token.startswith("w") and len(token) > 1:
            width = int(token[1:], 10)

    return width


def banked_address_to_rom_offset(bank, address):
    if bank < 0:
        raise ValueError("Invalid bank: {}".format(bank))

    if bank == 0:
        if address >= 0x4000:
            raise ValueError("Invalid banked address for bank 0: ${:04x}".format(address))
        return address

    if address < 0x4000 or address >= 0x8000:
        raise ValueError("Invalid switchable banked address: ${:04x}".format(address))

    return (bank * 0x4000) + (address - 0x4000)


def convert_palette_to_rgb(palette, bpp):
    col0 = 255 - (((palette & 0x03)) << 6)
    col1 = 255 - (((palette & 0x0C) >> 2) << 6)
    col2 = 255 - (((palette & 0x30) >> 4) << 6)
    col3 = 255 - (((palette & 0xC0) >> 6) << 6)

    if bpp == 2:
        return [
            (col0, col0, col0),
            (col1, col1, col1),
            (col2, col2, col2),
            (col3, col3, col3),
        ]
    if bpp == 1:
        return [
            (col0, col0, col0),
            (col3, col3, col3),
        ]
    if bpp == 4:
        anchors = [col0, col1, col2, col3]
        colors = []
        for index in range(16):
            t = (index * 3.0) / 15.0
            lo = int(t)
            hi = min(lo + 1, 3)
            frac = t - lo
            value = int(round(anchors[lo] * (1.0 - frac) + anchors[hi] * frac))
            colors.append((value, value, value))
        return colors

    raise ValueError("Unsupported bpp: {}".format(bpp))


def coordinate_to_tile_offset(x, y, width, bpp):
    tiles_per_row = width // 8
    tile_y = y // 8
    tile_x = x // 8
    row_of_tile = y & 7

    if bpp == 4:
        tile_base = (tile_y * tiles_per_row + tile_x) * 32
        p01_offset = tile_base + (row_of_tile * 2)
        p23_offset = tile_base + 16 + (row_of_tile * 2)
        return p01_offset, p23_offset

    bytes_per_tile_row = bpp
    bytes_per_tile = bytes_per_tile_row * 8
    return (tile_y * tiles_per_row * bytes_per_tile) + (tile_x * bytes_per_tile) + (row_of_tile * bytes_per_tile_row)


def convert_snes4bpp_to_pixel_data(data, width, height):
    result = []

    for y in range(height):
        row = []
        for x in range(width):
            bit = 7 - (x & 7)
            p01_offset, p23_offset = coordinate_to_tile_offset(x, y, width, 4)

            if p23_offset + 1 < len(data):
                b0 = data[p01_offset]
                b1 = data[p01_offset + 1]
                b2 = data[p23_offset]
                b3 = data[p23_offset + 1]
                color = (
                    ((b0 >> bit) & 1)
                    | (((b1 >> bit) & 1) << 1)
                    | (((b2 >> bit) & 1) << 2)
                    | (((b3 >> bit) & 1) << 3)
                )
            else:
                color = 0

            row.append(color)
        result.append(row)

    return result


def convert_to_pixel_data(data, width, height, bpp):
    if bpp == 4:
        return convert_snes4bpp_to_pixel_data(data, width, height)

    result = []
    for y in range(height):
        row = []
        for x in range(width):
            offset = coordinate_to_tile_offset(x, y, width, bpp)
            if offset < len(data):
                shift = 7 - (x & 7)
                mask = 1 << shift
                if bpp == 2:
                    color = ((data[offset] & mask) >> shift) + (((data[offset + 1] & mask) >> shift) << 1)
                else:
                    color = (data[offset] & mask) >> shift
            else:
                color = 0
            row.append(color)
        result.append(row)

    return result


def decode_sgb_cgram_color(color):
    r5 = color & 0x1F
    g5 = (color >> 5) & 0x1F
    b5 = (color >> 10) & 0x1F
    r8 = (r5 << 3) | (r5 >> 2)
    g8 = (g5 << 3) | (g5 >> 2)
    b8 = (b5 << 3) | (b5 >> 2)
    return r8, g8, b8


def decode_sgb_palettes(pct_data, palette_offset, palette_count, palette_base):
    palettes = {}
    for palette_slot in range(palette_count):
        colors = []
        palette_addr = palette_offset + (palette_slot * 32)
        for color_index in range(16):
            color_offset = palette_addr + (color_index * 2)
            if color_offset + 1 < len(pct_data):
                value = pct_data[color_offset] | (pct_data[color_offset + 1] << 8)
                colors.append(decode_sgb_cgram_color(value))
            else:
                colors.append((0, 0, 0))
        palettes[palette_base + palette_slot] = colors
    return palettes


def decode_snes4bpp_tile_pixel(tile_data, tile_index, pixel_x, pixel_y):
    tile_base = tile_index * 32
    row_base = tile_base + (pixel_y * 2)
    plane2_base = tile_base + 16 + (pixel_y * 2)

    if plane2_base + 1 >= len(tile_data):
        return 0

    bit = 7 - pixel_x
    b0 = tile_data[row_base]
    b1 = tile_data[row_base + 1]
    b2 = tile_data[plane2_base]
    b3 = tile_data[plane2_base + 1]

    return (
        ((b0 >> bit) & 1)
        | (((b1 >> bit) & 1) << 1)
        | (((b2 >> bit) & 1) << 2)
        | (((b3 >> bit) & 1) << 3)
    )


def build_sgb_border_rgb_rows(tile_data, pct_data, map_width, map_height, map_offset, palette_offset, palette_count, palette_base):
    palettes = decode_sgb_palettes(pct_data, palette_offset, palette_count, palette_base)
    width = map_width * 8
    height = map_height * 8
    rows = []

    for y in range(height):
        row = []
        tile_y = y // 8
        pixel_y = y & 7

        for x in range(width):
            tile_x = x // 8
            pixel_x = x & 7

            map_index = tile_y * map_width + tile_x
            entry_offset = map_offset + (map_index * 2)
            if entry_offset + 1 >= len(pct_data):
                row.extend((0, 0, 0))
                continue

            entry = pct_data[entry_offset] | (pct_data[entry_offset + 1] << 8)
            tile_index = entry & 0x03FF
            palette_index = (entry >> 10) & 0x07
            hflip = bool(entry & 0x4000)
            vflip = bool(entry & 0x8000)

            sample_x = 7 - pixel_x if hflip else pixel_x
            sample_y = 7 - pixel_y if vflip else pixel_y
            color_index = decode_snes4bpp_tile_pixel(tile_data, tile_index, sample_x, sample_y)

            if palette_index not in palettes:
                rgb = (0, 0, 0)
            else:
                rgb = palettes[palette_index][color_index]

            row.extend(rgb)

        rows.append(row)

    return rows


def infer_most_used_palette_per_tile(pct_data, map_width, map_height, map_offset):
    tile_palette_counts = {}

    for tile_y in range(map_height):
        for tile_x in range(map_width):
            map_index = tile_y * map_width + tile_x
            entry_offset = map_offset + (map_index * 2)
            if entry_offset + 1 >= len(pct_data):
                continue

            entry = pct_data[entry_offset] | (pct_data[entry_offset + 1] << 8)
            tile_index = entry & 0x03FF
            palette_index = (entry >> 10) & 0x07

            if tile_index not in tile_palette_counts:
                tile_palette_counts[tile_index] = {}
            tile_palette_counts[tile_index][palette_index] = tile_palette_counts[tile_index].get(palette_index, 0) + 1

    tile_palette_map = {}
    for tile_index, palette_counts in tile_palette_counts.items():
        best_palette = min(palette_counts.items(), key=lambda item: (-item[1], item[0]))[0]
        tile_palette_map[tile_index] = best_palette

    return tile_palette_map


def write_indexed_png(path, width, height, bitdepth, palette, rows):
    with open(path, "wb") as png_file:
        writer = png.Writer(width, height, alpha=False, bitdepth=bitdepth, palette=palette)
        writer.write(png_file, rows)


def write_rgb_png(path, width, height, rows):
    with open(path, "wb") as png_file:
        writer = png.Writer(width, height, greyscale=False, alpha=False)
        writer.write(png_file, rows)


def resolve_chr_spec(argument_map, block, key, fallback_address=None):
    if key in argument_map:
        address = parse_int(argument_map[key])
    elif key + "addr" in argument_map:
        address = parse_int(argument_map[key + "addr"])
    else:
        address = fallback_address

    if address is None:
        return None

    bank = block["bank"]
    if key + "bank" in argument_map:
        bank = parse_int(argument_map[key + "bank"])

    length = parse_int(argument_map.get(key + "len", "0x1000"))
    return bank, address, length


def build_border_tile_data(rom_data, block):
    argument_map = parse_argument_map(block["arguments"])

    chr1_spec = resolve_chr_spec(argument_map, block, "chr1")
    chr2_spec = resolve_chr_spec(argument_map, block, "chr2")

    if chr1_spec is None:
        raise ValueError(
            "Missing required .sgbborder argument chr1 at {:02x}:{:04x}".format(
                block["bank"], block["address"]
            )
        )

    tile_data = b""
    for spec in [chr1_spec, chr2_spec]:
        if spec is None:
            continue
        bank, address, length = spec
        offset = banked_address_to_rom_offset(bank, address)
        end = offset + length
        if end > len(rom_data):
            raise ValueError(
                "CHR payload out of bounds at {:02x}:{:04x} (len ${:x})".format(bank, address, length)
            )
        tile_data += rom_data[offset:end]

    if not tile_data:
        raise ValueError("No CHR tile data found for border")

    return tile_data


def parse_sym(sym_path):
    labels = {}
    blocks = []

    with open(sym_path, "r", encoding="utf-8") as sym_file:
        for raw_line in sym_file:
            line = raw_line.strip()
            if not line or line.startswith(";"):
                continue

            parts = line.split(None, 1)
            if len(parts) != 2:
                continue

            location, definition = parts
            if ":" not in location:
                continue

            try:
                bank_hex, addr_hex = location.split(":", 1)
                bank = int(bank_hex, 16)
                address = int(addr_hex, 16)
            except ValueError:
                continue

            if definition.startswith("."):
                block_parts = definition.split(":", 1)
                if len(block_parts) < 2:
                    continue

                block_type = block_parts[0].lower()
                if block_type != ".sgbborder":
                    continue

                arguments = block_parts[1]
                blocks.append(
                    {
                        "bank": bank,
                        "address": address,
                        "arguments": arguments,
                    }
                )
            else:
                labels[(bank, address)] = definition

    return labels, blocks


def make_colored_tiledata_preview(rom_data, output_dir, basename, block, tile_data, overwrite):
    argument_map = parse_argument_map(block["arguments"])
    width = parse_image_width(block["arguments"])

    bytes_per_tile_row = 4
    bytes_per_tile = bytes_per_tile_row * 8
    num_tiles = len(tile_data) // bytes_per_tile
    if num_tiles == 0:
        raise ValueError("No tile data found")

    tiles_per_row = width // 8
    if num_tiles < tiles_per_row or (num_tiles & 1):
        tiles_per_row = num_tiles
        width = num_tiles * 8

    tile_rows = num_tiles / tiles_per_row
    if not tile_rows.is_integer():
        raise ValueError("Invalid tile layout for colored tiledata preview")

    height = int(tile_rows) * 8

    pct_bank = parse_int(argument_map["pctbank"]) if "pctbank" in argument_map else block["bank"]
    pct_address = parse_int(argument_map["pctaddr"]) if "pctaddr" in argument_map else block["address"]
    pct_length = parse_int(argument_map.get("pctlen", "0x1000"))
    map_width = parse_int(argument_map.get("mapw", "32"))
    map_height = parse_int(argument_map.get("maph", "28"))
    map_offset = parse_int(argument_map.get("mapoff", "0"))
    palette_offset = parse_int(argument_map.get("paloff", "0x800"))
    palette_count = parse_int(argument_map.get("palcount", "3"))
    palette_base = parse_int(argument_map.get("palbase", "4"))

    pct_offset = banked_address_to_rom_offset(pct_bank, pct_address)
    if pct_offset + pct_length > len(rom_data):
        raise ValueError("PCT payload out of bounds at {:02x}:{:04x}".format(pct_bank, pct_address))

    pct_data = bytearray(rom_data[pct_offset:pct_offset + pct_length])

    if "paladdr" in argument_map:
        pal_address = parse_int(argument_map["paladdr"])
        pal_offset = banked_address_to_rom_offset(pct_bank, pal_address)
        pal_length = 0x40

        if pal_offset + pal_length > len(rom_data):
            raise ValueError("Palette payload out of bounds at {:02x}:{:04x}".format(pct_bank, pal_address))

        if palette_offset + pal_length > len(pct_data):
            raise ValueError("Palette payload does not fit at paloff ${:x}".format(palette_offset))

        pct_data[palette_offset:palette_offset + pal_length] = rom_data[pal_offset:pal_offset + pal_length]

    palettes = decode_sgb_palettes(bytes(pct_data), palette_offset, palette_count, palette_base)
    tile_palette_index = parse_int(argument_map.get("tilepal", str(palette_base)))
    if tile_palette_index not in palettes:
        # Fall back to the first decoded palette slot if requested index is absent.
        available = sorted(palettes.keys())
        if not available:
            raise ValueError("No palettes decoded for colored tiledata preview")
        tile_palette_index = available[0]

    tile_palette_map = infer_most_used_palette_per_tile(bytes(pct_data), map_width, map_height, map_offset)
    indexed_rows = convert_snes4bpp_to_pixel_data(tile_data, width, height)
    rgb_rows = []
    tiles_per_row = width // 8
    for y, row in enumerate(indexed_rows):
        rgb_row = []
        tile_y = y // 8
        for x, color_index in enumerate(row):
            tile_x = x // 8
            tile_index = tile_y * tiles_per_row + tile_x
            palette_index = tile_palette_map.get(tile_index, tile_palette_index)
            selected_palette = palettes.get(palette_index, palettes[tile_palette_index])
            rgb_row.extend(selected_palette[color_index])
        rgb_rows.append(rgb_row)

    out_path = os.path.join(output_dir, basename + "_tiles.png")
    if (not overwrite) and os.path.exists(out_path):
        return out_path, False

    write_rgb_png(out_path, width, height, rgb_rows)
    return out_path, True


def make_color_preview(rom_data, output_dir, basename, block, tile_data, overwrite):
    argument_map = parse_argument_map(block["arguments"])

    pct_bank = parse_int(argument_map["pctbank"]) if "pctbank" in argument_map else block["bank"]
    pct_address = parse_int(argument_map["pctaddr"]) if "pctaddr" in argument_map else block["address"]
    pct_length = parse_int(argument_map.get("pctlen", "0x1000"))

    map_width = parse_int(argument_map.get("mapw", "32"))
    map_height = parse_int(argument_map.get("maph", "28"))
    map_offset = parse_int(argument_map.get("mapoff", "0"))
    palette_offset = parse_int(argument_map.get("paloff", "0x800"))
    palette_count = parse_int(argument_map.get("palcount", "3"))
    palette_base = parse_int(argument_map.get("palbase", "4"))

    pct_offset = banked_address_to_rom_offset(pct_bank, pct_address)
    if pct_offset + pct_length > len(rom_data):
        raise ValueError("PCT payload out of bounds at {:02x}:{:04x}".format(pct_bank, pct_address))

    pct_data = bytearray(rom_data[pct_offset:pct_offset + pct_length])

    # Optional palette override: read palette bytes from paladdr in the
    # same bank as the PCT payload and place them at paloff in the PCT buffer.
    if "paladdr" in argument_map:
        pal_address = parse_int(argument_map["paladdr"])
        pal_offset = banked_address_to_rom_offset(pct_bank, pal_address)
        pal_length = 0x40

        if pal_offset + pal_length > len(rom_data):
            raise ValueError("Palette payload out of bounds at {:02x}:{:04x}".format(pct_bank, pal_address))

        if palette_offset + pal_length > len(pct_data):
            raise ValueError("Palette payload does not fit at paloff ${:x}".format(palette_offset))

        pct_data[palette_offset:palette_offset + pal_length] = rom_data[pal_offset:pal_offset + pal_length]
    rows = build_sgb_border_rgb_rows(
        tile_data,
        bytes(pct_data),
        map_width,
        map_height,
        map_offset,
        palette_offset,
        palette_count,
        palette_base,
    )

    out_path = os.path.join(output_dir, basename + ".png")
    if (not overwrite) and os.path.exists(out_path):
        return out_path, False

    write_rgb_png(out_path, map_width * 8, map_height * 8, rows)
    return out_path, True


def get_color_variant_basename(base, block_arguments):
    argument_map = parse_argument_map(block_arguments)
    if "palname" in argument_map:
        # Keep output filenames safe and predictable.
        raw_name = argument_map["palname"].strip()
        safe_name = "".join(ch if (ch.isalnum() or ch in "-_") else "_" for ch in raw_name)
        safe_name = safe_name.strip("_")
        if safe_name:
            return "{}_{}".format(base, safe_name)

    if "paladdr" in argument_map:
        pal_address = parse_int(argument_map["paladdr"])
        return "{}_pal_{:04x}".format(base, pal_address)
    return base


def extract_sgb_borders(rom_path, sym_path, output_dir, overwrite, verbose):
    with open(rom_path, "rb") as rom_file:
        rom_data = rom_file.read()

    labels, blocks = parse_sym(sym_path)

    if not blocks:
        warn("No .sgbborder blocks found in sym file")
        return 0

    os.makedirs(output_dir, exist_ok=True)

    written_files = 0
    for block in blocks:
        bank = block["bank"]
        address = block["address"]
        basename = labels.get((bank, address), "sgbborder_{:03x}_{:04x}".format(bank, address))
        color_basename = get_color_variant_basename(basename, block["arguments"])

        if verbose:
            print("Processing {:02x}:{:04x} -> {}".format(bank, address, color_basename))

        try:
            tile_data = build_border_tile_data(rom_data, block)

            _, wrote_tiles_color = make_colored_tiledata_preview(
                rom_data,
                output_dir,
                color_basename,
                block,
                tile_data,
                overwrite,
            )
            if wrote_tiles_color:
                written_files += 1

            _, wrote_color = make_color_preview(
                rom_data,
                output_dir,
                color_basename,
                block,
                tile_data,
                overwrite,
            )
            if wrote_color:
                written_files += 1

        except Exception as error:  # broad catch by design: per-entry best-effort
            warn("Skipping {} ({:02x}:{:04x}): {}".format(basename, bank, address, error))

    return written_files


def parse_args():
    parser = argparse.ArgumentParser(
        description="Extract SGB border previews from ROM using .sgbborder tags in a .sym file"
    )
    parser.add_argument("rom_path", help="Game Boy ROM file")
    parser.add_argument(
        "--sym",
        dest="sym_path",
        default=None,
        help='Path to symbol file (default: "sgbborder.sym")',
    )
    parser.add_argument(
        "--output-dir",
        default="disassembly/sgb",
        help='Directory for output PNGs (default: "disassembly/sgb")',
    )
    parser.add_argument(
        "--overwrite",
        action="store_true",
        help="Overwrite existing output files",
    )
    parser.add_argument(
        "--verbose",
        action="store_true",
        help="Print per-block processing details",
    )
    return parser.parse_args()


def main():
    args = parse_args()

    sym_path = args.sym_path if args.sym_path is not None else "sgbborder.sym"

    if not os.path.isfile(args.rom_path):
        abort('ROM file not found: "{}"'.format(args.rom_path))

    if not os.path.isfile(sym_path):
        abort('Symbol file not found: "{}"'.format(sym_path))

    written = extract_sgb_borders(
        args.rom_path,
        sym_path,
        args.output_dir,
        args.overwrite,
        args.verbose,
    )

    print("Done. Wrote {} file(s) to {}".format(written, os.path.abspath(args.output_dir)))


if __name__ == "__main__":
    main()
