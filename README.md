# Mario's Picross (USA, Europe) (SGB Enhanced) – GB Disassembly

A complete, byte-accurate disassembly of the original Game Boy Mario's Picross ROM with human-readable, behaviour-first symbol names.

## What this is

A comprehensive disassembly of Mario's Picross (released 1995), Nintendo's puzzle game for the Game Boy. This project provides a complete, byte-accurate disassembly suitable for study, documentation, and modification.

The ROM is 256 KB with 16 banks:

| Bank | Role |
|------|------|
| `bank_000` | EntryPoint, InterruptHandlers, GameStateDispatcher, Helpers, GameStateHandlers |
| `bank_001` | GameStateHandlers, ??? |
| `bank_002` | StatePhaseDispatcher, GameStateHandlers, ??? |
| `bank_003` | GameStateHandlers, ??? |
| `bank_004` | ??? |
| `bank_005` | ??? |
| `bank_006` | TileData, ??? |
| `bank_007` | ??? |
| `bank_008` | ??? |
| `bank_009` | TileData |
| `bank_00a` | TileData |
| `bank_00b` | TileData, TileMaps, ??? |
| `bank_00c` | TileMaps, ??? |
| `bank_00d` | MessageFont-TileData |
| `bank_00e` | ??? |
| `bank_00f` | ??? |

## Repository layout

```
Mario's Picross (USA, Europe) (SGB Enhanced).gb   – original ROM (you must provide your own copy)
Mario's Picross (USA, Europe) (SGB Enhanced).sym  – canonical symbol map (the main product of this work)
mgbdis.py                   – mgbdis disassembler (modified with: ram.inc handling from https://github.com/H0smax/mgbdis + symbol exclusion support)
instruction_set.py          – instruction set definitions for mgbdis (from https://github.com/mattcurrie/mgbdis)
png.py                       – PNG graphics utilities (from https://github.com/mattcurrie/mgbdis)
charmap.asm                 – Game Boy character-map for string rendering
hardware.inc                – GB hardware register definitions
disassembly/
  game.asm                  – top-level include (entry point for assembler)
  bank_000.asm through bank_00f.asm  – disassembly of all 16 ROM banks
  charmap.asm               – character map copy for assembler
  hardware.inc              – hardware register copy for assembler
  Makefile                  – builds game.gb with rgbds
README_FLOW.md              – detailed game-flow, state-machine, and internals reference
```

## Regenerating the disassembly

After editing the symbol map, regenerate `bank_00X.asm` with:

```sh
mgbdis --print-hex --character-map-path "charmap.asm" --exclude-default-symbols "RST_10,RST_20,RST_28,RST_30,RST_38" --overwrite "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
```

(Note: mgbdis.py is included in this repository with enhancements for:
- ram.inc handling: automatic symbol labeling for game-specific RAM addresses
- symbol exclusion support: `--exclude-default-symbols` parameter filters out default interrupt vectors or other symbols
- hardware register labels: automatic replacement of 16-bit addressing modes (`d16`, `a16`, `[a16]`) with hardware.inc register names when applicable)

## SGB border extraction

`sgbborder_extract.py` generates PNG previews of Super Game Boy border graphics from ROM data referenced by `.sgbborder` tags.

### Separate symbol file workflow

`mgbdis.py` does not understand `.sgbborder` block tags, so those entries are kept in a dedicated symbol file: `sgbborder.sym`.

Run extraction with:

```sh
python3 sgbborder_extract.py --overwrite --sym "sgbborder.sym" "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
```

Default output folder:

- `disassembly/sgb`

If `--sym` is omitted, the script uses `sgbborder.sym`.

### `.sgbborder` tag format

Current expected format:

```txt
BB:AAAA .sgbborder:chr1=...[,chr2=...][,optional_key=value,...]
```

Required key:

- `chr1`: start address of first CHR chunk (default length `0x1000` unless overridden)

Optional CHR key:

- `chr2`: start address of second CHR chunk (default length `0x1000` unless overridden). If omitted, only `chr1` tile data is used.

Optional keys:

- `chr1bank`, `chr2bank`: bank override for CHR chunks (default is the block bank)
- `chr1len`, `chr2len`: CHR chunk sizes (defaults to `0x1000`)
- `pctbank`: bank containing PCT/map/palette payload (default is the block bank)
- `pctaddr`: address of PCT payload (default is the block address)
- `pctlen`: byte length of PCT payload (default `0x1000`)
- `paladdr`: alternate palette source address copied into the PCT palette area
- `palname`: optional filename suffix that replaces the default `pal_XXXX` variant suffix
- `mapw`, `maph`: tilemap width/height in tiles (defaults `32` and `28`)
- `mapoff`: tilemap offset within PCT payload (default `0x0`)
- `paloff`: palette table offset within PCT payload (default `0x800`)
- `palcount`: number of palettes to decode (default `3`)
- `palbase`: palette index base for decoded palette slots (default `4`)
- `tilepal`: fallback palette index for tile-sheet rendering (default `palbase`)
- `wNNN`: tile-sheet preview width token in pixels (for example `w128`)

Example tags:

```txt
04:6030 .sgbborder:chr1=0x4010,chr2=0x5020
05:6030 .sgbborder:chr1=0x4010
05:6030 .sgbborder:chr1=0x4010,chr2=0x5020,paladdr=0x6870
05:6030 .sgbborder:chr1=0x4010,chr2=0x5020,paladdr=0x6870,palname=green
```

## Verifying the disassembly round-trips

The `disassembly/Makefile` reassembles the output with [rgbds](https://rgbds.gbdev.io/) and confirms the resulting ROM matches the original via md5:

```sh
cd disassembly && make
```

A successful build means the disassembly is byte-accurate.

## Documentation

## Tools used

- [mgbdis](https://github.com/mattcurrie/mgbdis) – Game Boy ROM disassembler
- [mgbdis ram.inc handling](https://github.com/H0smax/mgbdis) – patch for mgbdis.py to handle ram address labels for reassembly
- [hardware.inc](https://github.com/gbdev/hardware.inc) – Game Boy hardware register definitions
- [rgbds](https://rgbds.gbdev.io/) – Game Boy assembler/linker/fixer
