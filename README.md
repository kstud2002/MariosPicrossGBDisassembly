# Mario's Picross / Mario no Picross (SGB Enhanced) – GB Disassembly

A complete, byte-accurate disassembly workspace for the Game Boy SGB-enhanced releases of Mario's Picross (USA/Europe) and Mario no Picross (Japan), with human-readable, behaviour-first symbol names.

## What this is

A comprehensive disassembly of Nintendo's 1995 Game Boy puzzle title across both regional SGB-enhanced ROM variants in this repository. The project provides byte-accurate disassembly output suitable for study, documentation, and modification.

Each ROM is 256 KB with 16 banks:

| Bank | Role |
|------|------|
| `bank_000` | EntryPoint, InterruptHandlers, GameStateDispatcher, Helpers, GameStateHandlers |
| `bank_001` | GameStateHandlers, PuzzleGameplay/State-Flow Logic, Message Scripts |
| `bank_002` | StatePhaseDispatcher, GameStateHandlers, Menu/Ranking Flow Logic |
| `bank_003` | GameStateHandlers, UI/Sprite Data, Screen Transition & SGB Control Data |
| `bank_004` | SGB Border Transfer Payloads (Title Border) |
| `bank_005` | SGB Border Transfer Payloads (Default Border), Text/Message Data |
| `bank_006` | TileData, Puzzle/UI Graphics |
| `bank_007` | TileData (5x5 Set + Unused Graphics Variants) |
| `bank_008` | TileData (10x10 Set + Title-Related Graphics) |
| `bank_009` | TileData (Course/Data Select, Ranking, Continue Screens) |
| `bank_00a` | TileData (Game Select + Course Select Assets) |
| `bank_00b` | TileData, TileMaps, Continue/Puzzle Screen Map Data |
| `bank_00c` | TileMaps, SGB Border Transfer Payloads (X-Ray Border) |
| `bank_00d` | MessageFont-TileData |
| `bank_00e` | Unused MessageFont-TileData |
| `bank_00f` | SoundEngine, Music/SE Command Streams, Audio Driver Data |

## Repository layout

```
Mario's Picross (USA, Europe) (SGB Enhanced).gb   – USA/Europe ROM input (you must provide your own copy)
Mario's Picross (USA, Europe) (SGB Enhanced).sym  – USA/Europe symbol map
Mario no Picross (Japan) (SGB Enhanced).gb        – Japan ROM input (you must provide your own copy)
Mario no Picross (Japan) (SGB Enhanced).sym       – Japan symbol map
mgbdis.py                   – mgbdis disassembler (modified with: ram.inc handling from https://github.com/H0smax/mgbdis + symbol exclusion support)
instruction_set.py          – instruction set definitions for mgbdis (from https://github.com/mattcurrie/mgbdis)
png.py                       – PNG graphics utilities (from https://github.com/mattcurrie/mgbdis)
charmap.asm                 – Game Boy character-map for string rendering
hardware.inc                – GB hardware register definitions
disassembly/
  game.asm                  – top-level include for USA/Europe output
  bank_000.asm through bank_00f.asm  – USA/Europe disassembly (16 ROM banks)
  charmap.asm               – character map copy for assembler
  hardware.inc              – hardware register copy for assembler
  Makefile                  – reassembles USA/Europe output with rgbds
disassembly_jp/
  game.asm                  – top-level include for Japan output
  bank_000.asm through bank_00f.asm  – Japan disassembly (16 ROM banks)
  charmap.asm               – character map copy for assembler
  hardware.inc              – hardware register copy for assembler
  Makefile                  – reassembles Japan output with rgbds
GAME_FLOW_REFERENCE.md      – detailed game-flow, state-machine, and internals reference
```

## Regenerating the disassembly

After editing the symbol map, regenerate `bank_00X.asm` with:

```sh
python3 -m mgbdis --output "disassembly" --character-map-path "charmap.asm" --exclude-default-symbols "RST_10,RST_20,RST_28,RST_30,RST_38" --overwrite "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
```

```sh
python3 -m mgbdis --output "disassembly_jp" --character-map-path "charmap.asm" --exclude-default-symbols "RST_10,RST_20,RST_28,RST_30,RST_38" --overwrite "Mario no Picross (Japan) (SGB Enhanced).gb"
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
python3 sgbborder_extract.py --output "disassembly/sgb" --overwrite --sym "sgbborder.sym" "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
```

```sh
python3 sgbborder_extract.py --output "disassembly_jp/sgb" --overwrite --sym "sgbborder.sym" "Mario no Picross (Japan) (SGB Enhanced).gb"
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

The Makefiles in both output directories reassemble their respective versions with [rgbds](https://rgbds.gbdev.io/) and verify ROM equivalence:

```sh
cd disassembly && make
cd disassembly_jp && make
```

A successful build in each directory means that version's disassembly is byte-accurate.

## Documentation

- [GAME_FLOW_REFERENCE.md](GAME_FLOW_REFERENCE.md): High-level reference for runtime flow, including the game-state/phase graphs, core rendering and sound-engine notes, save-slot RAM structure, and currently tracked unused/cut-content symbols.

## Tools used

- [mgbdis](https://github.com/mattcurrie/mgbdis) – Game Boy ROM disassembler
- [mgbdis ram.inc handling](https://github.com/H0smax/mgbdis) – patch for mgbdis.py to handle ram address labels for reassembly
- [hardware.inc](https://github.com/gbdev/hardware.inc) – Game Boy hardware register definitions
- [rgbds](https://rgbds.gbdev.io/) – Game Boy assembler/linker/fixer
