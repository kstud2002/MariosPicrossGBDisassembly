; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

CourseSelectScreenTileData::
    INCBIN "gfx/CourseSelectScreenTileData.2bpp"

DataSelectScreenTileData::
    INCBIN "gfx/DataSelectScreenTileData.2bpp"

TimeTrialRankingScreenTileData::
    INCBIN "gfx/TimeTrialRankingScreenTileData.2bpp"

ContinueSavedGameScreenTileData::
    INCBIN "gfx/ContinueSavedGameScreenTileData.2bpp"
