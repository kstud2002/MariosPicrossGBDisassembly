; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

Picross10x10GameBoardTileData::
    INCBIN "gfx/Picross10x10GameBoardTileData.2bpp"

Picross10x10MarioLowTimeTileData::
    INCBIN "gfx/Picross10x10MarioLowTimeTileData.2bpp"

Picross10x10MarioClearTileData::
    INCBIN "gfx/Picross10x10MarioClearTileData.2bpp"

Picross10x10MarioGameOverTileData::
    INCBIN "gfx/Picross10x10MarioGameOverTileData.2bpp"

    ; padding
    ds $200, $00

Picross10x10PuzzleClearRedrawFrameTileData::
    INCBIN "gfx/Picross10x10PuzzleClearRedrawFrameTileData.2bpp"

TitleScreenTileData::
    INCBIN "gfx/TitleScreenTileData.2bpp"

TitleScreenBlinkAnimationTileData::
    INCBIN "gfx/TitleScreenBlinkAnimationTileData.2bpp"
