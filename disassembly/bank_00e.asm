; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

Unused_MessageFontTileData::
    INCBIN "gfx/Unused_MessageFontTileData.2bpp"

    ; padding
    ds $1800, $00
