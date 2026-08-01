; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

Picross15x15GameBoardTileData::
    INCBIN "gfx/Picross15x15GameBoardTileData.2bpp"

CellEffectTileDataSet00::
    INCBIN "gfx/CellEffectTileDataSet00.2bpp"

    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff

PuzzleTimerDigitsTileData::
    INCBIN "gfx/PuzzleTimerDigitsTileData.2bpp"

    db $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00

    ; padding
    ds $10, $00

ClueDigitsWhiteBGTileData::
    INCBIN "gfx/ClueDigitsWhiteBGTileData.2bpp"

ClueDigitsGreyBGTileData::
    INCBIN "gfx/ClueDigitsGreyBGTileData.2bpp"

Picross10x10And15x15GameOverMessageTileData::
    INCBIN "gfx/Picross10x10And15x15GameOverMessageTileData.2bpp"

Picross15x15PuzzleClearRedrawFrameTileData::
    INCBIN "gfx/Picross15x15PuzzleClearRedrawFrameTileData.2bpp"

    ; padding
    ds $600, $00

CellEffectTileDataSet01::
    INCBIN "gfx/CellEffectTileDataSet01.2bpp"

CellEffectTileDataSet02::
    INCBIN "gfx/CellEffectTileDataSet02.2bpp"

CellEffectTileDataSet03::
    INCBIN "gfx/CellEffectTileDataSet03.2bpp"

CellEffectTileDataSet04::
    INCBIN "gfx/CellEffectTileDataSet04.2bpp"

CellEffectTileDataSet05::
    INCBIN "gfx/CellEffectTileDataSet05.2bpp"

CellEffectTileDataSet06::
    INCBIN "gfx/CellEffectTileDataSet06.2bpp"

CellEffectTileDataSet07::
    INCBIN "gfx/CellEffectTileDataSet07.2bpp"

CellEffectTileDataSet08::
    INCBIN "gfx/CellEffectTileDataSet08.2bpp"

CellEffectTileDataSet09::
    INCBIN "gfx/CellEffectTileDataSet09.2bpp"

CellEffectTileDataSet0a::
    INCBIN "gfx/CellEffectTileDataSet0a.2bpp"

CellEffectTileDataSet0b::
    INCBIN "gfx/CellEffectTileDataSet0b.2bpp"

CellEffectTileDataSet0c::
    INCBIN "gfx/CellEffectTileDataSet0c.2bpp"

CellEffectTileDataSet0d::
    INCBIN "gfx/CellEffectTileDataSet0d.2bpp"

CellEffectTileDataSet0e::
    INCBIN "gfx/CellEffectTileDataSet0e.2bpp"

CellEffectTileDataSet0f::
    INCBIN "gfx/CellEffectTileDataSet0f.2bpp"

CellEffectTileDataSet10::
    INCBIN "gfx/CellEffectTileDataSet10.2bpp"

CellEffectTileDataSet11::
    INCBIN "gfx/CellEffectTileDataSet11.2bpp"

CellEffectTileDataSet12::
    INCBIN "gfx/CellEffectTileDataSet12.2bpp"

CellEffectTileDataSet13::
    INCBIN "gfx/CellEffectTileDataSet13.2bpp"

CellEffectTileDataSet14::
    INCBIN "gfx/CellEffectTileDataSet14.2bpp"

CellEffectTileDataSet15::
    INCBIN "gfx/CellEffectTileDataSet15.2bpp"

CellEffectTileDataSet16::
    INCBIN "gfx/CellEffectTileDataSet16.2bpp"

CellEffectTileDataSet17::
    INCBIN "gfx/CellEffectTileDataSet17.2bpp"

CellEffectTileDataSet18::
    INCBIN "gfx/CellEffectTileDataSet18.2bpp"

CellEffectTileDataSet19::
    INCBIN "gfx/CellEffectTileDataSet19.2bpp"

CellEffectTileDataSet1a::
    INCBIN "gfx/CellEffectTileDataSet1a.2bpp"

    ; padding
    ds $20, $00

Picross15x15MarioLowTimeTileData::
    INCBIN "gfx/Picross15x15MarioLowTimeTileData.2bpp"

Picross15x15MarioClearTileData::
    INCBIN "gfx/Picross15x15MarioClearTileData.2bpp"

Picross15x15MarioGameOverTileData::
    INCBIN "gfx/Picross15x15MarioGameOverTileData.2bpp"

    ; padding
    ds $200, $00

HintMessageTileData::
    INCBIN "gfx/HintMessageTileData.2bpp"

PauseMenuTileData::
    INCBIN "gfx/PauseMenuTileData.2bpp"

    ; padding
    ds $2f0, $00

    ; padding
    ds $10, $ff
