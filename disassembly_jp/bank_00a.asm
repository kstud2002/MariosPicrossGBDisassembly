; Disassembly of "Mario no Picross (Japan) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    ; padding
    ds $300, $00

GameSelectScreenTileData::
    INCBIN "gfx/GameSelectScreenTileData.2bpp"

    ; padding
    ds $800, $00

EasyPicrossLevelSelectTileData::
    INCBIN "gfx/EasyPicrossLevelSelectTileData.2bpp"

KinokoCourseLevelSelectTileData::
    INCBIN "gfx/KinokoCourseLevelSelectTileData.2bpp"

KinokoCourseSignTileData::
    INCBIN "gfx/KinokoCourseSignTileData.2bpp"

StarCourseLevelSelectTileData::
    INCBIN "gfx/StarCourseLevelSelectTileData.2bpp"

StarCourseSignTileData::
    INCBIN "gfx/StarCourseSignTileData.2bpp"

SelectAProblemBottomTileData::
    INCBIN "gfx/SelectAProblemBottomTileData.2bpp"

    ; padding
    ds $300, $00
