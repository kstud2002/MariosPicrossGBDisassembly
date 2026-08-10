; Disassembly of "Mario no Picross (Japan) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

MessageFontTileData::
    INCBIN "gfx/MessageFontTileData.2bpp"

    ; padding
    ds $1800, $00
