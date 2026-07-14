# Mario's Picross (USA, Europe) (SGB Enhanced) – GB Disassembly

A complete, byte-accurate disassembly of the original Game Boy Mario's Picross ROM with human-readable, behaviour-first symbol names.

## What this is

A comprehensive disassembly of Mario's Picross (released 1995), Nintendo's puzzle game for the Game Boy. This project provides a complete, byte-accurate disassembly suitable for study, documentation, and modification.

The ROM is 256 KB with 16 banks:

| Bank | Role |
|------|------|
| `bank_000` | |
| `bank_001` | |
| `bank_002` | |
| `bank_003` | |
| `bank_004` | |
| `bank_005` | |
| `bank_006` | |
| `bank_007` | |
| `bank_008` | |
| `bank_009` | |
| `bank_00a` | |
| `bank_00b` | |
| `bank_00c` | |
| `bank_00d` | |
| `bank_00e` | |
| `bank_00f` | |

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
mgbdis --print-hex --character-map-path "charmap.asm" --exclude-default-symbols "" --overwrite "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
```

(Note: mgbdis.py is included in this repository with enhancements for:
- ram.inc handling: automatic symbol labeling for game-specific RAM addresses
- symbol exclusion support: `--exclude-default-symbols` parameter filters out default interrupt vectors or other symbols
- hardware register labels: automatic replacement of 16-bit addressing modes (`d16`, `a16`, `[a16]`) with hardware.inc register names when applicable)

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
