; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

SETCHARMAP messages

GS05_EasyPicrossCompletionMessage::
    db "Congratulations!!", $fe, $ff

    db "You have solved", $fe, $ff

    db "all the puzzles", $fe, $ff

    db "in “EASY PICROSS”!", $ff, $ff

GS04_KinokoCourseCompletionMessage_Unused::
    db "Congratulations!!", $fe, $ff

    db "Let's move on", $fe, $ff

    db "and challenge", $fe, $ff

    db "the “STAR COURSE”!", $ff, $ff

GS04_KinokoCourseCompletionMessage::
    db "Congratulations!!", $fe, $ff

    db "Let's move on", $fe, $ff

    db "and challenge", $fe, $ff

    db "the “STAR COURSE”!", $ff, $ff

GS04_PICROSSCompletionMessage_Part1::
    db "Congratulations!!", $fe, $ff

    db "You have solved", $fe, $ff

    db "every puzzle", $fe, $ff

    db "in “PICROSS”!", $ff, $ff

GS04_PICROSSCompletionMessage_Part2::
    db "Now you may select", $fe, $ff

    db "the TIME TRIAL MODE.", $ff, $ff

GS04_PICROSSCompletionMessage_Part3::
    db "There is no time limit, no", $fe, $ff

    db "hints and your mistakes", $fe, $ff

    db "will not be revealed", $fe, $ff

    db "to you during the ", $fe, $ff

    db "TIME TRIAL MODE play.", $ff, $ff

GS04_PICROSSCompletionMessage_Part4::
    db "This is the ultimate", $fe, $ff

    db "PICROSS challenge!", $ff, $ff

GameState_04_PicrossCoursePuzzleSelectScreen_PhaseDispatcher::
    ld a, [rStatePhase_Current]
    rst RST_18

GS04_PhasePointer_00::
    db $9a, $43

GS04_PhasePointer_01::
    db $7d, $47

GS04_PhasePointer_02::
    db $09, $48

GS04_PhasePointer_03::
    db $72, $49

GS04_PhasePointer_04::
    db $10, $44

GS04_PhasePointer_05::
    db $b7, $47

GS04_StatePhase_00_PicrossCoursePuzzleSelectScreenInit::
    ld a, $43
    ld [rLCDCShadow], a
    xor a
    ld [rBGPShadow], a
    ld [rOBP0Shadow], a
    ld [rOBP1Shadow], a
    ld [rSCXShadow], a
    ld [rSCYShadow], a
    call FillBGMap0WithTile01
    call FillBGMap1WithTile01
    ld a, $0b
    ld hl, $5000
    ld de, $8000
    ld bc, $0300
    call BankedTileCopy
    ld a, $07
    ld hl, $7b00
    ld de, $8300
    ld bc, $0200
    call BankedTileCopy
    ld a, $0a
    ld hl, $6000
    ld de, $8800
    ld bc, $1000
    call BankedTileCopy
    call LoadPicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse
    call GS04_LoadPicrossCourseSelectGraphicsBySelectedCourse
    call GS04_DrawCompletedPuzzleMarkersForSelectedSaveSlotAndCourse
    call ClearShadowOAMBuffer
    ld b, $03
    ld hl, $4e80
    call SwitchBankToBAndJumpToHL
    ld b, $03
    ld hl, $4ee9
    call SwitchBankToBAndJumpToHL
    xor a
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanel
    call GS04_PlayCursorPreviewSfxBySelectedCourse
    call EnableLCDFromShadow
    call GS04_PlayPicrossCourseSelectFadeInBySelectedCourse
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS04_StatePhase_04_ReturnFromPuzzleTransitionAndHandleUnlockFlow::
    ld a, $43
    ld [rLCDCShadow], a
    xor a
    ld [rBGPShadow], a
    ld [rOBP0Shadow], a
    ld [rOBP1Shadow], a
    ld [rSCXShadow], a
    ld [rSCYShadow], a
    call FillBGMap0WithTile01
    call FillBGMap1WithTile01
    ld a, $0b
    ld hl, $5000
    ld de, $8000
    ld bc, $0300
    call BankedTileCopy
    ld a, $07
    ld hl, $7b00
    ld de, $8300
    ld bc, $0200
    call BankedTileCopy
    ld a, $0a
    ld hl, $6000
    ld de, $8800
    ld bc, $1000
    call BankedTileCopy
    call LoadPicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse
    call GS04_LoadPicrossCourseSelectGraphicsBySelectedCourse
    call GS04_DrawCompletedPuzzleMarkersForSelectedSaveSlotAndCourseExceptCurrentSelection
    ld a, [rSelectedPuzzleStatusData]
    bit 7, a
    jr z, .ContinueAfterSelectedPuzzleCompletedMarkerCheck

    ld a, [rPuzzleCursorColumn]
    ld c, a
    ld a, [rPuzzleAndMenuCursorRow]
    ld b, a
    call GS04_DrawCompletedPuzzleMarkerAtGridPosition

.ContinueAfterSelectedPuzzleCompletedMarkerCheck:
    call ClearShadowOAMBuffer
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanelFromSelectedPuzzleCache
    ld b, $03
    ld hl, $4e80
    call SwitchBankToBAndJumpToHL
    ld a, [rPuzzlePostClearFlowFlag]
    and a
    push af
    jr nz, .BeginPostReturnFadeInAndResultFlow

    ld b, $03
    ld hl, $4ee9
    call SwitchBankToBAndJumpToHL

.BeginPostReturnFadeInAndResultFlow:
    xor a
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame
    call GS04_PlayCursorPreviewSfxBySelectedCourse
    call EnableLCDFromShadow
    call GS04_PlayPicrossCourseSelectFadeInBySelectedCourse
    pop af
    jp z, GS04_ReturnToIdlePhaseAndRefreshSaveChecksums

    call GS04_HandlePostReturnClearStatusChangeAnimationAndPrompt
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1UnlockProgressState
    add hl, bc
    ld a, [hl]
    cp $03
    jp z, GS04_ReturnToIdlePhaseAndRefreshSaveChecksums

    ld hl, rSaveSlot1PicrossKinokoStarClearedPuzzleCount
    add hl, bc
    ld a, [hl]
    cp $40
    jp nz, GS04_ReturnToIdlePhaseAndRefreshSaveChecksums

    ld hl, rSaveSlot1UnlockProgressState
    add hl, bc
    inc [hl]
    ld a, [hl]
    cp $03
    jp z, GS04_RunTimeTrialUnlockMessageFlowAndReturnToCourseSelect

    ld hl, rSaveSlot1PicrossKinokoStarClearedPuzzleCount
    add hl, bc
    xor a
    ld [hl], a
    call RefreshSaveValidationChecksumsAndMirrors
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call ClearShadowOAMBuffer
    call GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse
    call DisableLCDAtVBlank
    ld b, $01
    ld hl, LoadPicrossCourseSelectGraphicsBySelectedCourse_Banked
    call SwitchBankToBAndJumpToHL
    ld a, $7e
    ld [rTilemapToTileDataAddressLookupTableLow], a
    ld a, $16
    ld [rTilemapToTileDataAddressLookupTableHigh], a
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $07
    ld a, $01
    call CallSoundCommandDispatcher
    ld a, $2f
    ld [rLYCShadow], a
    ld hl, rLCDCInterruptControlFlags
    set 6, [hl]
    ld hl, rIE
    set 1, [hl]
    ld a, $02
    ld [rLCDCInterruptDispatchIndex], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    call EnableLCDFromShadow
    ld b, $01
    ld hl, PlayPicrossCourseSelectFadeInBySelectedCourse_Banked
    call SwitchBankToBAndJumpToHL
    ld a, $10
    ld [rMessageScriptStreamResetEntryLow], a
    ld [rMessageScriptStreamEntryLow], a
    ld a, $20
    ld [rMessageScriptStreamResetEntryHigh], a
    ld [rMessageScriptStreamEntryHigh], a
    ld a, $90
    ld [rMessageScriptStreamLimitLow], a
    ld a, $58
    ld [rMessageScriptStreamLimitHigh], a
    ld a, $0c
    ld [rMessageScriptStreamPointerLow], a
    ld a, $41
    ld [rMessageScriptStreamPointerHigh], a
    call RunMessageScriptUntilEnd
    call WaitForAConfirmOnBottomPrompt
    xor a
    ld [rPuzzleCursorColumn], a
    ld [rPuzzleAndMenuCursorRow], a
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    ld b, $01
    ld hl, PlayPicrossCourseSelectFadeOutBySelectedCourse_Banked
    call SwitchBankToBAndJumpToHL
    call DisableLCDAtVBlank
    ld hl, rLCDCInterruptControlFlags
    res 6, [hl]
    ld hl, rIE
    res 1, [hl]
    xor a
    ld [rLCDCInterruptDispatchIndex], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    inc [hl]
    call GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse
    xor a
    ld [rStatePhase_Current], a
    ld hl, rGameState_Current
    dec [hl]
    jp RefreshSaveValidationChecksumsAndMirrors


GS04_RunTimeTrialUnlockMessageFlowAndReturnToCourseSelect::
    call RefreshSaveValidationChecksumsAndMirrors
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call ClearShadowOAMBuffer
    call GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse
    call DisableLCDAtVBlank
    ld b, $01
    ld hl, LoadPicrossCourseSelectGraphicsBySelectedCourse_Banked
    call SwitchBankToBAndJumpToHL
    ld a, $7e
    ld [rTilemapToTileDataAddressLookupTableLow], a
    ld a, $16
    ld [rTilemapToTileDataAddressLookupTableHigh], a
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $06
    ld a, $01
    call CallSoundCommandDispatcher
    ld a, $2f
    ld [rLYCShadow], a
    ld hl, rLCDCInterruptControlFlags
    set 6, [hl]
    ld hl, rIE
    set 1, [hl]
    ld a, $02
    ld [rLCDCInterruptDispatchIndex], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    call EnableLCDFromShadow
    ld b, $01
    ld hl, PlayPicrossCourseSelectFadeInBySelectedCourse_Banked
    call SwitchBankToBAndJumpToHL
    ld a, $10
    ld [rMessageScriptStreamResetEntryLow], a
    ld [rMessageScriptStreamEntryLow], a
    ld a, $20
    ld [rMessageScriptStreamResetEntryHigh], a
    ld [rMessageScriptStreamEntryHigh], a
    ld a, $90
    ld [rMessageScriptStreamLimitLow], a
    ld a, $58
    ld [rMessageScriptStreamLimitHigh], a
    ld a, $8e
    ld [rMessageScriptStreamPointerLow], a
    ld a, $41
    ld [rMessageScriptStreamPointerHigh], a
    call RunMessageScriptUntilEnd
    call WaitForAConfirmOnBottomPrompt
    call GS04_ClearMessagePromptRows
    ld a, $08
    ld [rMessageScriptStreamPointerLow], a
    ld a, $42
    ld [rMessageScriptStreamPointerHigh], a
    call RunMessageScriptUntilEnd
    call WaitForAConfirmOnBottomPrompt
    call GS04_ClearMessagePromptRows
    ld a, $58
    ld [rMessageScriptStreamPointerLow], a
    ld a, $42
    ld [rMessageScriptStreamPointerHigh], a
    call RunMessageScriptUntilEnd
    call WaitForAConfirmOnBottomPrompt
    call GS04_ClearMessagePromptRows
    ld a, $3a
    ld [rMessageScriptStreamPointerLow], a
    ld a, $43
    ld [rMessageScriptStreamPointerHigh], a
    call RunMessageScriptUntilEnd
    call WaitForAConfirmOnBottomPrompt
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    ld b, $01
    ld hl, PlayPicrossCourseSelectFadeOutBySelectedCourse_Banked
    call SwitchBankToBAndJumpToHL
    call DisableLCDAtVBlank
    ld hl, rLCDCInterruptControlFlags
    res 6, [hl]
    ld hl, rIE
    res 1, [hl]
    xor a
    ld [rLCDCInterruptDispatchIndex], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    inc [hl]
    call GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse
    xor a
    ld [rStatePhase_Current], a
    ld hl, rGameState_Current
    dec [hl]
    jp RefreshSaveValidationChecksumsAndMirrors


GS04_ReturnToIdlePhaseAndRefreshSaveChecksums::
    ld a, $01
    ld [rStatePhase_Current], a
    jp RefreshSaveValidationChecksumsAndMirrors


GS04_HandlePostReturnClearStatusChangeAnimationAndPrompt::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot
    add hl, bc
    ld c, [hl]
    add hl, bc
    sla a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld hl, rSelectedPuzzleStatusData
    xor [hl]
    bit 7, a
    jr z, .BeginPostResultPromptDelay

    ld c, $08
    ld a, $02
    call CallSoundCommandDispatcher
    ld c, $08

.AnimateCursorFrame1BeforeCompletedMarker:
    push bc
    call ClearShadowOAMBuffer
    ld a, $01
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanel
    rst RST_08
    pop bc
    dec c
    jr nz, .AnimateCursorFrame1BeforeCompletedMarker

    ld a, [rPuzzleCursorColumn]
    ld c, a
    ld a, [rPuzzleAndMenuCursorRow]
    ld b, a
    call GS04_DrawCompletedPuzzleMarkerAtGridPosition
    ld c, $08

.AnimateCursorFrame2AfterCompletedMarker:
    push bc
    call ClearShadowOAMBuffer
    ld a, $02
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanel
    rst RST_08
    pop bc
    dec c
    jr nz, .AnimateCursorFrame2AfterCompletedMarker

.BeginPostResultPromptDelay:
    rst RST_08
    ld bc, $005a

.PostResultPromptLoop:
    push bc
    call ClearShadowOAMBuffer
    ld b, $03
    ld hl, $4ea6
    call SwitchBankToBAndJumpToHL
    ld a, [rVBlankFrameCounter]
    bit 2, a
    jr nz, .DrawPostResultPromptFrame

    xor a
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame

.DrawPostResultPromptFrame:
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanel
    rst RST_08
    pop bc
    ld a, [rInputButtonsPressed]
    and a
    jr nz, .AdvanceSelectionAfterPostResultPrompt

    dec bc
    ld a, c
    or b
    jr nz, .PostResultPromptLoop

.AdvanceSelectionAfterPostResultPrompt:
    jp GS04_AdvanceSelectionToNextUnclearedPuzzleIfPossible


GS04_StatePhase_01_PicrossCoursePuzzleSelectScreenIdle::
    ld b, $03
    ld hl, $4ee9
    call SwitchBankToBAndJumpToHL
    xor a
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanel
    call GS04_HandlePicrossCoursePuzzleSelectDirectionalInput
    ld a, [rInputButtonsPressed]
    and $09
    jr z, .CheckCancelInputB

    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    ld hl, rStatePhase_Current
    inc [hl]
    ret


.CheckCancelInputB:
    ld a, [rInputButtonsPressed]
    and $02
    jr z, .ReturnFromIdlePhaseNoSelectionInput

    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, $03
    ld [rStatePhase_Current], a
    ret


.ReturnFromIdlePhaseNoSelectionInput:
    ret


GS04_StatePhase_05_ReturnFromPuzzleTransitionAndCommitResult::
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse
    call DisableLCDAtVBlank
    call GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse
    xor a
    ld [rPuzzleTimerSecondOnes], a
    ld [rPuzzleTimerSecondTens], a
    ld [rPuzzleTimerMinuteOnes], a
    ld a, $03
    ld [rPuzzleTimerMinuteTens], a
    xor a
    ld [rHintPopupSelection], a
    ld a, $01
    ld [rPuzzlePostClearFlowFlag], a
    call LoadPicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse
    call GS04_LoadSelectedPicrossCoursePuzzleStatusAndTimeDataRecord
    call GS04_IncrementSelectedPicrossCoursePuzzleClearCountIfAllowed
    call UpdateSelectedPicrossCoursePuzzleClearStatusAndTimes
    call RefreshSaveValidationChecksumsAndMirrors
    ld a, $04
    ld [rStatePhase_Current], a
    ret


GS04_StatePhase_02_ConfirmSelectionTransitionToPuzzle::
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse
    call DisableLCDAtVBlank
    call GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse
    call GS04_LoadSelectedPicrossCoursePuzzleStatusAndTimeDataRecord
    call GS04_IncrementSelectedPicrossCoursePuzzleClearCountIfAllowed
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    sla a
    ld c, a
    ld hl, GS04_PuzzleDataIndexTableOffsetTableByCourse
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    add hl, bc
    ld a, [rPuzzleCursorColumn]
    sla a
    ld c, a
    ld a, [rPuzzleAndMenuCursorRow]
    swap a
    or c
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld [rPuzzleDataIndexLow], a
    ld a, [hl]
    ld [rPuzzleDataIndexHigh], a
    xor a
    ld [rStatePhase_Current], a
    ld a, $0a
    ld [rGameState_Current], a
    jp RefreshSaveValidationChecksumsAndMirrors


GS04_PuzzleDataIndexTableOffsetTableByCourse::
    db $03, $00
    db $81, $00

GS04_PuzzleDataIndexTableByGridPosition_Kinoko::
    db $41, $00, $42, $00, $43, $00, $44, $00
    db $45, $00, $46, $00, $47, $00, $48, $00
    db $49, $00, $4a, $00, $4b, $00, $4c, $00
    db $4d, $00, $4e, $00, $4f, $00, $50, $00
    db $51, $00, $52, $00, $53, $00, $54, $00
    db $55, $00, $56, $00, $57, $00, $58, $00
    db $59, $00, $5a, $00, $5b, $00, $5c, $00
    db $5d, $00, $5e, $00, $5f, $00, $60, $00
    db $61, $00, $62, $00, $63, $00, $64, $00
    db $65, $00, $66, $00, $67, $00, $68, $00
    db $69, $00, $6a, $00, $6b, $00, $6c, $00
    db $6d, $00, $6e, $00, $6f, $00, $70, $00
    db $71, $00, $72, $00, $73, $00, $74, $00
    db $75, $00, $76, $00, $77, $00, $78, $00
    db $79, $00, $7a, $00, $7b, $00, $7c, $00
    db $7d, $00, $7e, $00, $7f, $00, $80, $00

GS04_PuzzleDataIndexTableByGridPosition_Star::
    db $81, $00, $82, $00, $83, $00, $84, $00
    db $85, $00, $86, $00, $87, $00, $88, $00
    db $89, $00, $8a, $00, $8b, $00, $8c, $00
    db $8d, $00, $8e, $00, $8f, $00, $90, $00
    db $91, $00, $92, $00, $93, $00, $94, $00
    db $95, $00, $96, $00, $97, $00, $98, $00
    db $99, $00, $9a, $00, $9b, $00, $9c, $00
    db $9d, $00, $9e, $00, $9f, $00, $a0, $00
    db $a1, $00, $a2, $00, $a3, $00, $a4, $00
    db $a5, $00, $a6, $00, $a7, $00, $a8, $00
    db $a9, $00, $aa, $00, $ab, $00, $ac, $00
    db $ad, $00, $ae, $00, $af, $00, $b0, $00
    db $b1, $00, $b2, $00, $b3, $00, $b4, $00
    db $b5, $00, $b6, $00, $b7, $00, $b8, $00
    db $b9, $00, $ba, $00, $bb, $00, $bc, $00
    db $bd, $00, $be, $00, $bf, $00, $c0, $00

GS04_StatePhase_03_CancelSelectionTransitionToCourseSelect::
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse
    call DisableLCDAtVBlank
    call GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse
    xor a
    ld [rStatePhase_Current], a
    ld hl, rGameState_Current
    dec [hl]
    jp RefreshSaveValidationChecksumsAndMirrors


LoadPicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    add c
    add [hl]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1PicrossKinokoCoursePuzzleSelectCursorColumn
    add hl, bc
    ld a, [hl]
    ld [rPuzzleCursorColumn], a
    ld hl, rSaveSlot1PicrossKinokoCoursePuzzleSelectCursorRow
    add hl, bc
    ld a, [hl]
    ld [rPuzzleAndMenuCursorRow], a
    ret


GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    add c
    add [hl]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1PicrossKinokoCoursePuzzleSelectCursorColumn
    add hl, bc
    ld a, [rPuzzleCursorColumn]
    ld [hl], a
    ld hl, rSaveSlot1PicrossKinokoCoursePuzzleSelectCursorRow
    add hl, bc
    ld a, [rPuzzleAndMenuCursorRow]
    ld [hl], a
    ret


GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame::
    push af
    ld a, [rPuzzleCursorColumn]
    swap a
    add $20
    ld b, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    add $32
    ld c, a
    pop af
    add $60
    jp CopyOAMSpriteById


GS04_HandlePicrossCoursePuzzleSelectDirectionalInput::
    ld a, [rInputButtonsPressedOrRepeated]
    and $f0
    ret z

    ld c, $0a
    ld a, $02
    call CallSoundCommandDispatcher
    ld hl, rInputButtonsPressedOrRepeated
    bit 5, [hl]
    jr z, .CheckRight

    ld a, [rPuzzleCursorColumn]
    dec a
    and $07
    ld [rPuzzleCursorColumn], a

.CheckRight:
    bit 4, [hl]
    jr z, .CheckUp

    ld a, [rPuzzleCursorColumn]
    inc a
    and $07
    ld [rPuzzleCursorColumn], a

.CheckUp:
    bit 6, [hl]
    jr z, .CheckDown

    ld a, [rPuzzleAndMenuCursorRow]
    dec a
    and $07
    ld [rPuzzleAndMenuCursorRow], a

.CheckDown:
    bit 7, [hl]
    jr z, .Return

    ld a, [rPuzzleAndMenuCursorRow]
    inc a
    and $07
    ld [rPuzzleAndMenuCursorRow], a

.Return:
    ret


GS04_PlayCursorPreviewSfxBySelectedCourse::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    and a
    jr nz, .PlayStarCoursePreviewSfxVariant

    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $04
    ld a, $01
    call CallSoundCommandDispatcher
    ret


.PlayStarCoursePreviewSfxVariant:
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $10
    ld a, $01
    call CallSoundCommandDispatcher
    ret


GS04_LoadPicrossCourseSelectGraphicsBySelectedCourse::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    and a
    jr nz, .LoadStarCourseGraphicsVariant

    ld a, $0a
    ld hl, $7000
    ld de, $9300
    ld bc, $0500
    call BankedTileCopy
    ld a, $0a
    ld hl, $7500
    ld de, $8800
    ld bc, $0100
    call BankedTileCopy
    ld a, $0c
    ld hl, $7000
    ld de, $9800
    ld bc, $0400
    call BankedTileCopy
    ret


.LoadStarCourseGraphicsVariant:
    ld a, $0a
    ld hl, $7600
    ld de, $9300
    ld bc, $0500
    call BankedTileCopy
    ld a, $0a
    ld hl, $7b00
    ld de, $8800
    ld bc, $0100
    call BankedTileCopy
    ld a, $0c
    ld hl, $7400
    ld de, $9800
    ld bc, $0400
    call BankedTileCopy
    ret


LoadPicrossCourseSelectGraphicsBySelectedCourse_Banked::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    and a
    jr nz, .LoadStarCourseGraphicsAndTilemapVariant

    ld a, $0a
    ld hl, $7000
    ld de, $9300
    ld bc, $0500
    call BankedTileCopy
    ld a, $0a
    ld hl, $7500
    ld de, $8800
    ld bc, $0100
    call BankedTileCopy
    ld a, $04
    ld hl, $6c00
    ld de, $9800
    ld bc, $0400
    call BankedTileCopy
    jp ReturnFromBankedJumpRestoreBank


.LoadStarCourseGraphicsAndTilemapVariant:
    ld a, $0a
    ld hl, $7600
    ld de, $9300
    ld bc, $0500
    call BankedTileCopy
    ld a, $0a
    ld hl, $7b00
    ld de, $8800
    ld bc, $0100
    call BankedTileCopy
    ld a, $0a
    ld hl, $7c00
    ld de, $9100
    ld bc, $0100
    call BankedTileCopy
    ld a, $04
    ld hl, $7000
    ld de, $9800
    ld bc, $0400
    call BankedTileCopy
    jp ReturnFromBankedJumpRestoreBank


GS04_PlayPicrossCourseSelectFadeInBySelectedCourse::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    and a
    jr nz, .PlayStarCourseFadeInVariant

    ld b, $03
    ld hl, $46f4
    ld c, $09
    ld de, $0084
    call PlayScreenTransitionFadeIn
    ret


.PlayStarCourseFadeInVariant:
    ld b, $03
    ld hl, $4700
    ld c, $0a
    ld de, $0094
    call PlayScreenTransitionFadeIn
    ret


GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    and a
    jr nz, .PlayStarCourseFadeOutVariant

    ld b, $03
    ld hl, $46ff
    ld c, $09
    ld de, $0093
    call PlayScreenTransitionFadeOut
    ret


.PlayStarCourseFadeOutVariant:
    ld b, $03
    ld hl, $470b
    ld c, $0a
    ld de, $00a3
    call PlayScreenTransitionFadeOut
    ret


PlayPicrossCourseSelectFadeInBySelectedCourse_Banked::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    and a
    jr nz, .PlayStarCourseFadeInBankedVariant

    ld b, $03
    ld hl, $46f4
    ld c, $0c
    ld de, $0084
    call PlayScreenTransitionFadeIn
    jp ReturnFromBankedJumpRestoreBank


.PlayStarCourseFadeInBankedVariant:
    ld b, $03
    ld hl, $4700
    ld c, $0d
    ld de, $0094
    call PlayScreenTransitionFadeIn
    jp ReturnFromBankedJumpRestoreBank


PlayPicrossCourseSelectFadeOutBySelectedCourse_Banked::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    and a
    jr nz, .PlayStarCourseFadeOutBankedVariant

    ld b, $03
    ld hl, $46ff
    ld c, $0c
    ld de, $0093
    call PlayScreenTransitionFadeOut
    jp ReturnFromBankedJumpRestoreBank


.PlayStarCourseFadeOutBankedVariant:
    ld b, $03
    ld hl, $470b
    ld c, $0d
    ld de, $00a3
    call PlayScreenTransitionFadeOut
    jp ReturnFromBankedJumpRestoreBank


GS04_DrawCompletedPuzzleMarkersForSelectedSaveSlotAndCourse::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot
    add hl, bc
    ld c, [hl]
    add hl, bc
    sla a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $00

.BeginNextStatusGridRowScan:
    ld c, $00

.ScanStatusGridCellForCompletedMarker:
    ld a, [hl+]
    bit 7, a
    jr z, .AdvanceToNextStatusGridColumn

    call GS04_DrawCompletedPuzzleMarkerAtGridPosition

.AdvanceToNextStatusGridColumn:
    inc c
    ld a, c
    cp $08
    jr nz, .ScanStatusGridCellForCompletedMarker

    inc b
    ld a, b
    cp $08
    jr nz, .BeginNextStatusGridRowScan

    ret


GS04_DrawCompletedPuzzleMarkersForSelectedSaveSlotAndCourseExceptCurrentSelection::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot
    add hl, bc
    ld c, [hl]
    add hl, bc
    sla a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $00

.BeginNextStatusGridRowScan:
    ld c, $00

.ScanStatusGridCellForCompletedMarker:
    ld a, [hl+]
    bit 7, a
    jr z, .AdvanceToNextStatusGridColumn

    ld a, [rPuzzleCursorColumn]
    cp c
    jr nz, .DrawCompletedMarkerForNonSelectedCell

    ld a, [rPuzzleAndMenuCursorRow]
    cp b
    jr z, .AdvanceToNextStatusGridColumn

.DrawCompletedMarkerForNonSelectedCell:
    call GS04_DrawCompletedPuzzleMarkerAtGridPosition

.AdvanceToNextStatusGridColumn:
    inc c
    ld a, c
    cp $08
    jr nz, .ScanStatusGridCellForCompletedMarker

    inc b
    ld a, b
    cp $08
    jr nz, .BeginNextStatusGridRowScan

    ret


GS04_DrawCompletedPuzzleMarkerAtGridPosition::
    push bc
    push hl
    ld l, b
    ld h, $00
    sla l
    rl h
    sla l
    rl h
    sla l
    rl h
    sla l
    rl h
    sla l
    rl h
    sla c
    ld b, $00
    add hl, bc
    ld bc, $98c4
    add hl, bc
    ld a, h
    ld [rSharedSingleTileCommandStreamDestHigh], a
    ld a, l
    ld [rSharedSingleTileCommandStreamDestLow], a
    ld a, $01
    ld [rSharedSingleTileCommandStreamTileCount], a
    ld a, $55
    ld [rSharedSingleTileCommandStreamTileId], a
    ld a, $00
    ld [rSharedSingleTileCommandStreamTerminator], a
    ld a, $00
    ld bc, rSharedSingleTileCommandStreamDestHigh
    call QueueCommandStreamAndProcessIfLCDOff
    pop hl
    pop bc
    ret


GS04_IncrementSelectedPicrossCoursePuzzleClearCountIfAllowed::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot
    add hl, bc
    ld c, [hl]
    add hl, bc
    sla a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    ld b, $00
    add hl, bc
    bit 7, [hl]
    ret nz

    ld a, [hl]
    cp $63
    ret z

    inc [hl]
    ret


UpdateSelectedPicrossCoursePuzzleClearStatusAndTimes::
    xor a
    ld [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag], a
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot
    add hl, bc
    ld c, [hl]
    add hl, bc
    sla a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    ld b, $00
    add hl, bc
    bit 7, [hl]
    push af
    jr nz, .UpdateBestClearTime

    push hl
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1PicrossKinokoStarClearedPuzzleCount
    add hl, bc
    inc [hl]
    pop hl
    set 7, [hl]
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    ld hl, GS04_PicrossCourseTimeDataPointerTableOffsetBySaveSlot
    add hl, bc
    ld c, [hl]
    add hl, bc
    sla a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    sla a
    add c
    ld c, a
    ld b, $00
    add hl, bc
    call EncodePuzzleTimerToPackedClearTimeBC
    ld [hl], c
    inc hl
    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $01
    ld [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag], a
    ld a, [rHintPopupSelection]
    and a
    jr nz, .UpdateBestClearTime

    set 3, [hl]

.UpdateBestClearTime:
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    ld hl, GS04_PicrossCourseTimeDataPointerTableOffsetBySaveSlot
    add hl, bc
    ld c, [hl]
    add hl, bc
    sla a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    sla a
    add c
    ld c, a
    ld b, $00
    add hl, bc
    inc hl
    push hl
    call EncodePuzzleTimerToPackedClearTimeBC
    ld a, [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag]
    and a
    jr nz, .StoreNewBestClearTime

    ld a, [hl+]
    and $70
    swap a
    cp b
    jr z, .CompareBestClearTimeLowByteAndHintUsedOnTie

    jr nc, .SkipBestClearTimeUpdate

    jr .StoreNewBestClearTime

.CompareBestClearTimeLowByteAndHintUsedOnTie:
    ld a, [hl]
    cp c
    jr c, .StoreNewBestClearTime

    jr nz, .SkipBestClearTimeUpdate

    ld a, [rHintPopupSelection]
    and a
    jr z, .SkipBestClearTimeUpdate

.StoreNewBestClearTime:
    pop hl
    ld a, [hl]
    and $0f
    swap b
    or b
    ld [hl+], a
    ld [hl], c
    ld a, [rHintPopupSelection]
    and a
    jr nz, .ReturnFromClearStatusAndTimeUpdate

    dec hl
    set 7, [hl]
    jr .ReturnFromClearStatusAndTimeUpdate

.SkipBestClearTimeUpdate:
    pop hl

.ReturnFromClearStatusAndTimeUpdate:
    pop af
    ret


GS04_DrawSelectedPicrossCoursePuzzleInfoPanel::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot
    add hl, bc
    ld c, [hl]
    add hl, bc
    sla a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    push af
    and $7f
    call SplitAToDecimalDigitsAndPushHundredsTens
    add $51
    ld bc, $4818
    call CopyOAMSpriteById
    pop af
    cp $0a
    jr z, .AfterTimesClearedDigits

    add $51
    ld bc, $4018
    call CopyOAMSpriteById

.AfterTimesClearedDigits:
    pop af
    pop af
    bit 7, a
    jp z, GS04_DrawSelectedPicrossCoursePuzzleInfoPanel_DrawUnclearedPlaceholders

    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    ld hl, GS04_PicrossCourseTimeDataPointerTableOffsetBySaveSlot
    add hl, bc
    ld c, [hl]
    add hl, bc
    sla a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    sla a
    add c
    ld c, a
    ld b, $00
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    call DecodePackedPuzzleClearTimeToBCDDigits
    push bc
    ld a, b
    and $f0
    swap a
    add $51
    ld bc, $0818
    call CopyOAMSpriteById
    pop bc
    push bc
    ld a, b
    and $0f
    add $51
    ld bc, $1018
    call CopyOAMSpriteById
    pop bc
    push bc
    ld a, c
    and $f0
    swap a
    add $51
    ld bc, $2018
    call CopyOAMSpriteById
    pop bc
    ld a, c
    and $0f
    add $51
    ld bc, $2818
    call CopyOAMSpriteById
    ld a, [hl]
    call GS04_UpdateFirstClearTimeHintUsedIconTile
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    ld hl, GS04_PicrossCourseTimeDataPointerTableOffsetBySaveSlot
    add hl, bc
    ld c, [hl]
    add hl, bc
    sla a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    sla a
    add c
    ld c, a
    ld b, $00
    add hl, bc
    inc hl
    ld a, [hl+]
    and $f0
    swap a
    ld b, a
    ld c, [hl]
    call DecodePackedPuzzleClearTimeToBCDDigits
    push bc
    ld a, b
    and $f0
    swap a
    add $51
    ld bc, $6818
    call CopyOAMSpriteById
    pop bc
    push bc
    ld a, b
    and $0f
    add $51
    ld bc, $7018
    call CopyOAMSpriteById
    pop bc
    push bc
    ld a, c
    and $f0
    swap a
    add $51
    ld bc, $8018
    call CopyOAMSpriteById
    pop bc
    ld a, c
    and $0f
    add $51
    ld bc, $8818
    call CopyOAMSpriteById
    dec hl
    ld a, [hl]
    jp GS04_UpdateBestClearTimeHintUsedIconTile


GS04_DrawSelectedPicrossCoursePuzzleInfoPanel_DrawUnclearedPlaceholders::
    ld a, $80
    ld bc, $0818
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $1018
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $2018
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $2818
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $6818
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $7018
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $8018
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $8818
    call CopyOAMSpriteById
    xor a
    call GS04_UpdateFirstClearTimeHintUsedIconTile
    jp GS04_UpdateBestClearTimeHintUsedIconTile


GS04_DrawSelectedPicrossCoursePuzzleInfoPanelFromSelectedPuzzleCache::
    ld a, [rSelectedPuzzleStatusData]
    push af
    and $7f
    call SplitAToDecimalDigitsAndPushHundredsTens
    add $51
    ld bc, $4818
    call CopyOAMSpriteById
    pop af
    cp $0a
    jr z, .AfterTimesClearedDigits

    add $51
    ld bc, $4018
    call CopyOAMSpriteById

.AfterTimesClearedDigits:
    pop af
    pop af
    bit 7, a
    jp z, GS04_DrawSelectedPicrossCoursePuzzleInfoPanelFromSelectedPuzzleCache_DrawUnclearedPlaceholders

    ld hl, rSelectedPuzzleTimeDataRecordByte0
    ld c, [hl]
    inc hl
    ld b, [hl]
    call DecodePackedPuzzleClearTimeToBCDDigits
    push bc
    ld a, b
    and $f0
    swap a
    add $51
    ld bc, $0818
    call CopyOAMSpriteById
    pop bc
    push bc
    ld a, b
    and $0f
    add $51
    ld bc, $1018
    call CopyOAMSpriteById
    pop bc
    push bc
    ld a, c
    and $f0
    swap a
    add $51
    ld bc, $2018
    call CopyOAMSpriteById
    pop bc
    ld a, c
    and $0f
    add $51
    ld bc, $2818
    call CopyOAMSpriteById
    ld a, [hl]
    call GS04_UpdateFirstClearTimeHintUsedIconTile
    ld hl, rSelectedPuzzleTimeDataRecordByte1
    ld a, [hl+]
    and $f0
    swap a
    ld b, a
    ld c, [hl]
    call DecodePackedPuzzleClearTimeToBCDDigits
    push bc
    ld a, b
    and $f0
    swap a
    add $51
    ld bc, $6818
    call CopyOAMSpriteById
    pop bc
    push bc
    ld a, b
    and $0f
    add $51
    ld bc, $7018
    call CopyOAMSpriteById
    pop bc
    push bc
    ld a, c
    and $f0
    swap a
    add $51
    ld bc, $8018
    call CopyOAMSpriteById
    pop bc
    ld a, c
    and $0f
    add $51
    ld bc, $8818
    call CopyOAMSpriteById
    dec hl
    ld a, [hl]
    jp GS04_UpdateBestClearTimeHintUsedIconTile


GS04_DrawSelectedPicrossCoursePuzzleInfoPanelFromSelectedPuzzleCache_DrawUnclearedPlaceholders::
    ld a, $80
    ld bc, $0818
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $1018
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $2018
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $2818
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $6818
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $7018
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $8018
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $8818
    call CopyOAMSpriteById
    xor a
    call GS04_UpdateFirstClearTimeHintUsedIconTile
    jp GS04_UpdateBestClearTimeHintUsedIconTile


GS04_LoadSelectedPicrossCoursePuzzleStatusAndTimeDataRecord::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot
    add hl, bc
    ld c, [hl]
    add hl, bc
    sla a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [rSelectedPuzzleStatusData], a
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    ld hl, GS04_PicrossCourseTimeDataPointerTableOffsetBySaveSlot
    add hl, bc
    ld c, [hl]
    add hl, bc
    sla a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    sla a
    add c
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld [rSelectedPuzzleTimeDataRecordByte0], a
    ld a, [hl+]
    ld [rSelectedPuzzleTimeDataRecordByte1], a
    ld a, [hl]
    ld [rSelectedPuzzleTimeDataRecordByte2], a
    ret


GS04_UpdateFirstClearTimeHintUsedIconTile::
    push af
    push hl
    bit 3, a
    jr z, .DrawFirstClearTimeHintUsedBlankTile

    ld a, $01
    ld bc, GS04_FirstClearTimeHintUsedIconCommandStream
    call QueueCommandStreamAndProcessIfLCDOff
    jr .ReturnFromFirstClearTimeHintUsedTileUpdate

.DrawFirstClearTimeHintUsedBlankTile:
    ld a, $01
    ld bc, GS04_FirstClearTimeHintUsedBlankCommandStream
    call QueueCommandStreamAndProcessIfLCDOff

.ReturnFromFirstClearTimeHintUsedTileUpdate:
    pop hl
    pop af
    ret


GS04_FirstClearTimeHintUsedIconCommandStream::
    db $98, $66, $01, $2f
    db $00

GS04_FirstClearTimeHintUsedBlankCommandStream::
    db $98, $66, $01, $2b
    db $00

GS04_UpdateBestClearTimeHintUsedIconTile::
    push af
    push hl
    bit 7, a
    jr z, .DrawBestClearTimeHintUsedBlankTile

    ld a, $01
    ld bc, GS04_BestClearTimeHintUsedIconCommandStream
    call QueueCommandStreamAndProcessIfLCDOff
    jr .ReturnFromBestClearTimeHintUsedTileUpdate

.DrawBestClearTimeHintUsedBlankTile:
    ld a, $01
    ld bc, GS04_BestClearTimeHintUsedBlankCommandStream
    call QueueCommandStreamAndProcessIfLCDOff

.ReturnFromBestClearTimeHintUsedTileUpdate:
    pop hl
    pop af
    ret


GS04_BestClearTimeHintUsedIconCommandStream::
    db $98, $72, $01, $2f
    db $00

GS04_BestClearTimeHintUsedBlankCommandStream::
    db $98, $72, $01, $2b
    db $00

GS04_AdvanceSelectionToNextUnclearedPuzzleIfPossible::
    ld a, [rPuzzleAndMenuCursorRow]
    cp $07
    jr nz, .CheckNextPuzzleClearStatus

    ld a, [rPuzzleCursorColumn]
    cp $07
    ret z

.CheckNextPuzzleClearStatus:
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [hl]
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot
    add hl, bc
    ld c, [hl]
    add hl, bc
    sla a
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    ld b, $00
    add hl, bc
    inc hl
    bit 7, [hl]
    ret nz

    ld a, [rPuzzleCursorColumn]
    inc a
    cp $08
    jr nz, .StoreAdvancedSelectionAndPlayMoveSfx

    ld a, [rPuzzleAndMenuCursorRow]
    inc a
    ld [rPuzzleAndMenuCursorRow], a
    xor a

.StoreAdvancedSelectionAndPlayMoveSfx:
    ld [rPuzzleCursorColumn], a
    ld c, $0a
    ld a, $02
    call CallSoundCommandDispatcher
    ret


EncodePuzzleTimerToPackedClearTimeBC::
    push hl
    ld a, [rPuzzleTimerSecondTens]
    ld c, a
    sla a
    sla a
    add c
    sla a
    ld hl, rPuzzleTimerSecondOnes
    add [hl]
    ld c, a
    ld a, [rPuzzleTimerMinuteTens]
    ld b, a
    sla a
    sla a
    add b
    sla a
    ld hl, rPuzzleTimerMinuteOnes
    add [hl]
    ld b, a
    xor a
    srl b
    rr a
    srl b
    rr a
    or c
    ld c, a
    pop hl
    ret


DecodePackedPuzzleClearTimeToBCDDigits::
    push hl
    ld a, c
    and $3f
    ld e, $00

.SubtractLowerFieldTensLoop:
    cp $0a
    jr c, .PackLowerFieldTensAndOnes

    sub $0a
    inc e
    jr .SubtractLowerFieldTensLoop

.PackLowerFieldTensAndOnes:
    swap e
    or e
    ld e, a
    sla c
    rl b
    sla c
    rl b
    ld a, b
    and $1f
    ld d, $00

.SubtractUpperFieldTensLoop:
    cp $0a
    jr c, .PackUpperFieldTensAndOnes

    sub $0a
    inc d
    jr .SubtractUpperFieldTensLoop

.PackUpperFieldTensAndOnes:
    swap d
    or d
    ld d, a
    ld c, e
    ld b, d
    pop hl
    ret


GS04_PicrossCourseTimeDataPointerTableOffsetBySaveSlot::
    db $03, $08, $0d

GS04_PicrossCourseTimeDataPointerTableBySaveSlotAndCourse::
    db $a2, $a3
    db $62, $a4
    db $22, $a5
    db $e2, $a5
    db $a2, $a6
    db $62, $a7
    db $22, $a8
    db $e2, $a8
    db $a2, $a9

GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot::
    db $03, $08, $0d

GS04_PicrossCourseStatusDataPointerTableBySaveSlotAndCourse::
    db $62, $aa
    db $a2, $aa
    db $e2, $aa
    db $22, $ab
    db $62, $ab
    db $a2, $ab
    db $e2, $ab
    db $22, $ac
    db $62, $ac

RunMessageScriptUntilEnd::
    rst RST_08
    call AdvanceMessageScriptStreamHelper_NoBankSwitch
    jr nz, RunMessageScriptUntilEnd

    ret


GS04_ClearMessagePromptRows::
    ld bc, $1020
    ld de, $7f07
    call GS04_CopyMessagePromptRowSpan
    ld bc, $1028
    ld de, $7f07
    call GS04_CopyMessagePromptRowSpan
    ld bc, $1030
    ld de, $7f07
    call GS04_CopyMessagePromptRowSpan
    ld bc, $1038
    ld de, $7f07
    call GS04_CopyMessagePromptRowSpan
    ld bc, $1040
    ld de, $7f07
    call GS04_CopyMessagePromptRowSpan
    ld bc, $1048
    ld de, $7f07
    call GS04_CopyMessagePromptRowSpan
    ld bc, $1050
    ld de, $7f07
    call GS04_CopyMessagePromptRowSpan
    ld a, [rMessageScriptStreamResetEntryLow]
    ld [rMessageScriptStreamEntryLow], a
    ld a, [rMessageScriptStreamResetEntryHigh]
    ld [rMessageScriptStreamEntryHigh], a
    ret


GS04_CopyMessagePromptRowSpan::
    ld a, $00
    ld [rBGTileCopyBankAddressLow], a
    ld a, $61
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $0a
    ld [rBGTileCopyBank], a
    ld a, b
    ld [rBGTileCopySourceX], a
    add d
    ld [rBGTileCopyDestX], a
    ld a, c
    ld [rBGTileCopySourceY], a
    add e
    ld [rBGTileCopyDestY], a
    jp PrepareBGTileCopyNoLCDCBit4Force


WaitForAConfirmOnBottomPrompt::
    ld b, $03
    ld hl, $4ea6
    call SwitchBankToBAndJumpToHL
    call ClearShadowOAMBufferFromCursor
    rst RST_08
    ld a, [rInputButtonsPressed]
    and $01
    jr z, WaitForAConfirmOnBottomPrompt

    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    ret


GameState_05_EasyPicrossPuzzleSelectScreen_PhaseDispatcher::
    ld a, [rStatePhase_Current]
    rst RST_18

GS05_PhasePointer_00::
    db $7d, $52

GS05_PhasePointer_01::
    db $85, $55

GS05_PhasePointer_02::
    db $1b, $56

GS05_PhasePointer_03::
    db $f7, $56

GS05_PhasePointer_04::
    db $16, $53

GS05_PhasePointer_05::
    db $bf, $55

GS05_StatePhase_00_EasyPicrossPuzzleSelectScreenInit::
    ld a, $43
    ld [rLCDCShadow], a
    xor a
    ld [rBGPShadow], a
    ld [rOBP0Shadow], a
    ld [rOBP1Shadow], a
    ld [rSCXShadow], a
    ld [rSCYShadow], a
    call FillBGMap0WithTile01
    call FillBGMap1WithTile01
    ld a, $0b
    ld hl, $5000
    ld de, $8000
    ld bc, $0300
    call BankedTileCopy
    ld a, $07
    ld hl, $7b00
    ld de, $8300
    ld bc, $0200
    call BankedTileCopy
    ld a, $0a
    ld hl, $6000
    ld de, $8800
    ld bc, $1000
    call BankedTileCopy
    ld a, $0c
    ld hl, $6c00
    ld de, $9800
    ld bc, $0400
    call BankedTileCopy
    call GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot
    call GS05_DrawCompletedPuzzleMarkersForSelectedSaveSlot
    call ClearShadowOAMBuffer
    ld b, $03
    ld hl, $4e80
    call SwitchBankToBAndJumpToHL
    ld b, $03
    ld hl, $4ee9
    call SwitchBankToBAndJumpToHL
    xor a
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanel
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $04
    ld a, $01
    call CallSoundCommandDispatcher
    call EnableLCDFromShadow
    ld b, $03
    ld hl, $46e8
    ld c, $08
    ld de, $0074
    call PlayScreenTransitionFadeIn
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS05_StatePhase_04_TODO::
    ld a, $43
    ld [rLCDCShadow], a
    xor a
    ld [rBGPShadow], a
    ld [rOBP0Shadow], a
    ld [rOBP1Shadow], a
    ld [rSCXShadow], a
    ld [rSCYShadow], a
    call FillBGMap0WithTile01
    call FillBGMap1WithTile01
    ld a, $0b
    ld hl, $5000
    ld de, $8000
    ld bc, $0300
    call BankedTileCopy
    ld a, $07
    ld hl, $7b00
    ld de, $8300
    ld bc, $0200
    call BankedTileCopy
    ld a, $0a
    ld hl, $6000
    ld de, $8800
    ld bc, $1000
    call BankedTileCopy
    ld a, $0c
    ld hl, $6c00
    ld de, $9800
    ld bc, $0400
    call BankedTileCopy
    call GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot
    call GS05_DrawCompletedPuzzleMarkersForSelectedSaveSlotExceptCurrentSelection
    ld a, [rSelectedPuzzleStatusData]
    bit 7, a
    jr z, .ContinueAfterSelectedPuzzleCompletedMarkerCheck

    ld a, [rPuzzleCursorColumn]
    ld c, a
    ld a, [rPuzzleAndMenuCursorRow]
    ld b, a
    call GS05_DrawCompletedPuzzleMarkerAtGridPosition

.ContinueAfterSelectedPuzzleCompletedMarkerCheck:
    call ClearShadowOAMBuffer
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanelFromSelectedPuzzleCache
    ld b, $03
    ld hl, $4e80
    call SwitchBankToBAndJumpToHL
    ld a, [rPuzzlePostClearFlowFlag]
    and a
    push af
    jr nz, .BeginPostReturnFadeInAndResultFlow

    ld b, $03
    ld hl, $4ee9
    call SwitchBankToBAndJumpToHL

.BeginPostReturnFadeInAndResultFlow:
    xor a
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $04
    ld a, $01
    call CallSoundCommandDispatcher
    call EnableLCDFromShadow
    ld b, $03
    ld hl, $46e8
    ld c, $08
    ld de, $0074
    call PlayScreenTransitionFadeIn
    pop af
    jp z, GS05_ReturnToIdlePhaseAndRefreshSaveChecksums

    call GS05_HandlePostReturnClearStatusChangeAnimationAndPrompt
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1EasyPicrossPostClearUnlockHandledFlag
    add hl, bc
    ld a, [hl]
    and a
    jp nz, GS05_ReturnToIdlePhaseAndRefreshSaveChecksums

    ld hl, rSaveSlot1EasyPicrossClearedPuzzleCount
    add hl, bc
    ld a, [hl]
    cp $40
    jp nz, GS05_ReturnToIdlePhaseAndRefreshSaveChecksums

    ld hl, rSaveSlot1EasyPicrossPostClearUnlockHandledFlag
    add hl, bc
    inc [hl]
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1GameSelectCursorRow
    add hl, bc
    ld a, $02
    ld [hl], a
    call RefreshSaveValidationChecksumsAndMirrors
    ld bc, $00b4
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call ClearShadowOAMBuffer
    ld b, $03
    ld hl, $46f3
    ld c, $08
    ld de, $0083
    call PlayScreenTransitionFadeOut
    call DisableLCDAtVBlank
    ld a, $0c
    ld hl, $7800
    ld de, $9800
    ld bc, $0400
    call BankedTileCopy
    ld a, $7e
    ld [rTilemapToTileDataAddressLookupTableLow], a
    ld a, $16
    ld [rTilemapToTileDataAddressLookupTableHigh], a
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $07
    ld a, $01
    call CallSoundCommandDispatcher
    ld a, $2f
    ld [rLYCShadow], a
    ld hl, rLCDCInterruptControlFlags
    set 6, [hl]
    ld hl, rIE
    set 1, [hl]
    ld a, $02
    ld [rLCDCInterruptDispatchIndex], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    call EnableLCDFromShadow
    ld b, $03
    ld hl, $46e8
    ld c, $0b
    ld de, $0074
    call PlayScreenTransitionFadeIn
    ld a, $10
    ld [rMessageScriptStreamResetEntryLow], a
    ld [rMessageScriptStreamEntryLow], a
    ld a, $20
    ld [rMessageScriptStreamResetEntryHigh], a
    ld [rMessageScriptStreamEntryHigh], a
    ld a, $90
    ld [rMessageScriptStreamLimitLow], a
    ld a, $58
    ld [rMessageScriptStreamLimitHigh], a
    ld a, $00
    ld [rMessageScriptStreamPointerLow], a
    ld a, $40
    ld [rMessageScriptStreamPointerHigh], a
    call RunMessageScriptUntilEnd
    call WaitForAConfirmOnBottomPrompt
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    ld b, $03
    ld hl, $46f3
    ld c, $0b
    ld de, $0083
    call PlayScreenTransitionFadeOut
    call DisableLCDAtVBlank
    ld hl, rLCDCInterruptControlFlags
    res 6, [hl]
    ld hl, rIE
    res 1, [hl]
    xor a
    ld [rLCDCInterruptDispatchIndex], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    call GS05_SaveEasyPicrossPuzzleSelectCursorForSelectedSaveSlot
    xor a
    ld [rStatePhase_Current], a
    ld a, $02
    ld [rGameState_Current], a
    jp RefreshSaveValidationChecksumsAndMirrors


GS05_ReturnToIdlePhaseAndRefreshSaveChecksums::
    ld a, $01
    ld [rStatePhase_Current], a
    jp RefreshSaveValidationChecksumsAndMirrors


GS05_HandlePostReturnClearStatusChangeAnimationAndPrompt::
    ld a, [rSelectedSaveSlotIndex]
    sla a
    ld c, a
    ld b, $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld hl, rSelectedPuzzleStatusData
    xor [hl]
    bit 7, a
    jr z, .BeginPostResultPromptDelay

    ld c, $08
    ld a, $02
    call CallSoundCommandDispatcher
    ld c, $08

.AnimateCursorFrame1BeforeCompletedMarker:
    push bc
    call ClearShadowOAMBuffer
    ld a, $01
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanel
    rst RST_08
    pop bc
    dec c
    jr nz, .AnimateCursorFrame1BeforeCompletedMarker

    ld a, [rPuzzleCursorColumn]
    ld c, a
    ld a, [rPuzzleAndMenuCursorRow]
    ld b, a
    call GS05_DrawCompletedPuzzleMarkerAtGridPosition
    ld c, $08

.AnimateCursorFrame2AfterCompletedMarker:
    push bc
    call ClearShadowOAMBuffer
    ld a, $02
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanel
    rst RST_08
    pop bc
    dec c
    jr nz, .AnimateCursorFrame2AfterCompletedMarker

.BeginPostResultPromptDelay:
    rst RST_08
    ld bc, $005a

.PostResultPromptLoop:
    push bc
    call ClearShadowOAMBuffer
    ld b, $03
    ld hl, $4ea6
    call SwitchBankToBAndJumpToHL
    ld a, [rVBlankFrameCounter]
    bit 2, a
    jr nz, .DrawPostResultPromptFrame

    xor a
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame

.DrawPostResultPromptFrame:
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanel
    rst RST_08
    pop bc
    ld a, [rInputButtonsPressed]
    and a
    jr nz, .AdvanceSelectionAfterPostResultPrompt

    dec bc
    ld a, c
    or b
    jr nz, .PostResultPromptLoop

.AdvanceSelectionAfterPostResultPrompt:
    jp GS05_AdvanceSelectionToNextUnclearedPuzzleIfPossible


GS05_StatePhase_01_EasyPicrossPuzzleSelectScreenIdle::
    ld b, $03
    ld hl, $4ee9
    call SwitchBankToBAndJumpToHL
    xor a
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanel
    call GS05_HandleEasyPicrossPuzzleSelectDirectionalInput
    ld a, [rInputButtonsPressed]
    and $09
    jr z, .CheckCancelInputB

    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    ld hl, rStatePhase_Current
    inc [hl]
    ret


.CheckCancelInputB:
    ld a, [rInputButtonsPressed]
    and $02
    jr z, .ReturnFromIdlePhaseNoSelectionInput

    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, $03
    ld [rStatePhase_Current], a
    ret


.ReturnFromIdlePhaseNoSelectionInput:
    ret


GS05_StatePhase_05_ReturnFromPuzzleTransitionAndCommitResult::
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    ld b, $03
    ld hl, $46f3
    ld c, $08
    ld de, $0083
    call PlayScreenTransitionFadeOut
    call DisableLCDAtVBlank
    call GS05_SaveEasyPicrossPuzzleSelectCursorForSelectedSaveSlot
    xor a
    ld [rPuzzleTimerSecondOnes], a
    ld [rPuzzleTimerSecondTens], a
    ld [rPuzzleTimerMinuteOnes], a
    ld a, $03
    ld [rPuzzleTimerMinuteTens], a
    xor a
    ld [rHintPopupSelection], a
    ld a, $01
    ld [rPuzzlePostClearFlowFlag], a
    call GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot
    call GS05_LoadSelectedEasyPicrossPuzzleStatusAndTimeDataRecord
    call GS05_IncrementSelectedEasyPicrossPuzzleClearCountIfAllowed
    call GS05_UpdateSelectedEasyPicrossPuzzleClearStatusAndTimes
    call RefreshSaveValidationChecksumsAndMirrors
    ld a, $04
    ld [rStatePhase_Current], a
    ret


GS05_StatePhase_02_ConfirmSelectionTransitionToPuzzle::
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    ld b, $03
    ld hl, $46f3
    ld c, $08
    ld de, $0083
    call PlayScreenTransitionFadeOut
    call DisableLCDAtVBlank
    call GS05_SaveEasyPicrossPuzzleSelectCursorForSelectedSaveSlot
    call GS05_LoadSelectedEasyPicrossPuzzleStatusAndTimeDataRecord
    call GS05_IncrementSelectedEasyPicrossPuzzleClearCountIfAllowed
    ld a, [rPuzzleAndMenuCursorRow]
    swap a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    sla a
    or c
    ld c, a
    ld b, $00
    ld hl, GS05_EasyPicrossPuzzleDataIndexTableByGridPosition
    add hl, bc
    ld a, [hl+]
    ld [rPuzzleDataIndexLow], a
    ld a, [hl]
    ld [rPuzzleDataIndexHigh], a
    xor a
    ld [rStatePhase_Current], a
    ld a, $08
    ld [rGameState_Current], a
    jp RefreshSaveValidationChecksumsAndMirrors


GS05_EasyPicrossPuzzleDataIndexTableByGridPosition::
    db $01, $00, $02, $00, $03, $00, $04, $00
    db $05, $00, $06, $00, $07, $00, $08, $00
    db $09, $00, $0a, $00, $0b, $00, $0c, $00
    db $0d, $00, $0e, $00, $0f, $00, $10, $00
    db $11, $00, $12, $00, $13, $00, $14, $00
    db $15, $00, $16, $00, $17, $00, $18, $00
    db $19, $00, $1a, $00, $1b, $00, $1c, $00
    db $1d, $00, $1e, $00, $1f, $00, $20, $00
    db $21, $00, $22, $00, $23, $00, $24, $00
    db $25, $00, $26, $00, $27, $00, $28, $00
    db $29, $00, $2a, $00, $2b, $00, $2c, $00
    db $2d, $00, $2e, $00, $2f, $00, $30, $00
    db $31, $00, $32, $00, $33, $00, $34, $00
    db $35, $00, $36, $00, $37, $00, $38, $00
    db $39, $00, $3a, $00, $3b, $00, $3c, $00
    db $3d, $00, $3e, $00, $3f, $00, $40, $00

GS05_StatePhase_03_CancelSelectionTransitionToGameSelect::
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    ld b, $03
    ld hl, $46f3
    ld c, $08
    ld de, $0083
    call PlayScreenTransitionFadeOut
    call DisableLCDAtVBlank
    call GS05_SaveEasyPicrossPuzzleSelectCursorForSelectedSaveSlot
    xor a
    ld [rStatePhase_Current], a
    ld a, $02
    ld [rGameState_Current], a
    jp RefreshSaveValidationChecksumsAndMirrors


GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1EasyPicrossPuzzleSelectCursorColumn
    add hl, bc
    ld a, [hl]
    ld [rPuzzleCursorColumn], a
    ld hl, rSaveSlot1EasyPicrossPuzzleSelectCursorRow
    add hl, bc
    ld a, [hl]
    ld [rPuzzleAndMenuCursorRow], a
    ret


GS05_SaveEasyPicrossPuzzleSelectCursorForSelectedSaveSlot::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1EasyPicrossPuzzleSelectCursorColumn
    add hl, bc
    ld a, [rPuzzleCursorColumn]
    ld [hl], a
    ld hl, rSaveSlot1EasyPicrossPuzzleSelectCursorRow
    add hl, bc
    ld a, [rPuzzleAndMenuCursorRow]
    ld [hl], a
    ret


GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame::
    push af
    ld a, [rPuzzleCursorColumn]
    swap a
    add $20
    ld b, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    add $32
    ld c, a
    pop af
    add $60
    jp CopyOAMSpriteById


GS05_HandleEasyPicrossPuzzleSelectDirectionalInput::
    ld a, [rInputButtonsPressedOrRepeated]
    and $f0
    ret z

    ld c, $0a
    ld a, $02
    call CallSoundCommandDispatcher
    ld hl, rInputButtonsPressedOrRepeated
    bit 5, [hl]
    jr z, .CheckRight

    ld a, [rPuzzleCursorColumn]
    dec a
    and $07
    ld [rPuzzleCursorColumn], a

.CheckRight:
    bit 4, [hl]
    jr z, .CheckUp

    ld a, [rPuzzleCursorColumn]
    inc a
    and $07
    ld [rPuzzleCursorColumn], a

.CheckUp:
    bit 6, [hl]
    jr z, .CheckDown

    ld a, [rPuzzleAndMenuCursorRow]
    dec a
    and $07
    ld [rPuzzleAndMenuCursorRow], a

.CheckDown:
    bit 7, [hl]
    jr z, .Return

    ld a, [rPuzzleAndMenuCursorRow]
    inc a
    and $07
    ld [rPuzzleAndMenuCursorRow], a

.Return:
    ret


GS05_DrawCompletedPuzzleMarkersForSelectedSaveSlot::
    ld a, [rSelectedSaveSlotIndex]
    sla a
    ld c, a
    ld b, $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $00

.BeginNextStatusGridRowScan:
    ld c, $00

.ScanStatusGridCellForCompletedMarker:
    ld a, [hl+]
    bit 7, a
    jr z, .AdvanceToNextStatusGridColumn

    call GS05_DrawCompletedPuzzleMarkerAtGridPosition

.AdvanceToNextStatusGridColumn:
    inc c
    ld a, c
    cp $08
    jr nz, .ScanStatusGridCellForCompletedMarker

    inc b
    ld a, b
    cp $08
    jr nz, .BeginNextStatusGridRowScan

    ret


GS05_DrawCompletedPuzzleMarkersForSelectedSaveSlotExceptCurrentSelection::
    ld a, [rSelectedSaveSlotIndex]
    sla a
    ld c, a
    ld b, $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $00

.BeginNextStatusGridRowScan:
    ld c, $00

.ScanStatusGridCellForCompletedMarker:
    ld a, [hl+]
    bit 7, a
    jr z, .AdvanceToNextStatusGridColumn

    ld a, [rPuzzleCursorColumn]
    cp c
    jr nz, .DrawCompletedMarkerForNonSelectedCell

    ld a, [rPuzzleAndMenuCursorRow]
    cp b
    jr z, .AdvanceToNextStatusGridColumn

.DrawCompletedMarkerForNonSelectedCell:
    call GS05_DrawCompletedPuzzleMarkerAtGridPosition

.AdvanceToNextStatusGridColumn:
    inc c
    ld a, c
    cp $08
    jr nz, .ScanStatusGridCellForCompletedMarker

    inc b
    ld a, b
    cp $08
    jr nz, .BeginNextStatusGridRowScan

    ret


GS05_DrawCompletedPuzzleMarkerAtGridPosition::
    push bc
    push hl
    ld l, b
    ld h, $00
    sla l
    rl h
    sla l
    rl h
    sla l
    rl h
    sla l
    rl h
    sla l
    rl h
    sla c
    ld b, $00
    add hl, bc
    ld bc, $98c4
    add hl, bc
    ld a, h
    ld [rSharedSingleTileCommandStreamDestHigh], a
    ld a, l
    ld [rSharedSingleTileCommandStreamDestLow], a
    ld a, $01
    ld [rSharedSingleTileCommandStreamTileCount], a
    ld a, $55
    ld [rSharedSingleTileCommandStreamTileId], a
    ld a, $00
    ld [rSharedSingleTileCommandStreamTerminator], a
    ld a, $00
    ld bc, rSharedSingleTileCommandStreamDestHigh
    call QueueCommandStreamAndProcessIfLCDOff
    pop hl
    pop bc
    ret


GS05_IncrementSelectedEasyPicrossPuzzleClearCountIfAllowed::
    ld a, [rSelectedSaveSlotIndex]
    sla a
    ld c, a
    ld b, $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    ld b, $00
    add hl, bc
    bit 7, [hl]
    ret nz

    ld a, [hl]
    cp $63
    ret z

    inc [hl]
    ret


GS05_UpdateSelectedEasyPicrossPuzzleClearStatusAndTimes::
    xor a
    ld [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag], a
    ld a, [rSelectedSaveSlotIndex]
    sla a
    ld c, a
    ld b, $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    ld b, $00
    add hl, bc
    bit 7, [hl]
    push af
    jr nz, .UpdateBestClearTime

    push hl
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1EasyPicrossClearedPuzzleCount
    add hl, bc
    inc [hl]
    pop hl
    set 7, [hl]
    ld a, [rSelectedSaveSlotIndex]
    sla a
    ld c, a
    ld b, $00
    ld hl, GS05_EasyPicrossTimeDataPointerTableBySaveSlot
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    sla a
    add c
    ld c, a
    ld b, $00
    add hl, bc
    call EncodePuzzleTimerToPackedClearTimeBC
    ld [hl], c
    inc hl
    ld a, [hl]
    and $f0
    or b
    ld [hl], a
    ld a, $01
    ld [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag], a
    ld a, [rHintPopupSelection]
    and a
    jr nz, .UpdateBestClearTime

    set 3, [hl]

.UpdateBestClearTime:
    ld a, [rSelectedSaveSlotIndex]
    sla a
    ld c, a
    ld b, $00
    ld hl, GS05_EasyPicrossTimeDataPointerTableBySaveSlot
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    sla a
    add c
    ld c, a
    ld b, $00
    add hl, bc
    inc hl
    push hl
    call EncodePuzzleTimerToPackedClearTimeBC
    ld a, [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag]
    and a
    jr nz, .StoreNewBestClearTime

    ld a, [hl+]
    and $70
    swap a
    cp b
    jr z, .CompareBestClearTimeLowByteAndHintUsedOnTie

    jr nc, .SkipBestClearTimeUpdate

    jr .StoreNewBestClearTime

.CompareBestClearTimeLowByteAndHintUsedOnTie:
    ld a, [hl]
    cp c
    jr c, .StoreNewBestClearTime

    jr nz, .SkipBestClearTimeUpdate

    ld a, [rHintPopupSelection]
    and a
    jr z, .SkipBestClearTimeUpdate

.StoreNewBestClearTime:
    pop hl
    ld a, [hl]
    and $0f
    swap b
    or b
    ld [hl+], a
    ld [hl], c
    ld a, [rHintPopupSelection]
    and a
    jr nz, .ReturnFromClearStatusAndTimeUpdate

    dec hl
    set 7, [hl]
    jr .ReturnFromClearStatusAndTimeUpdate

.SkipBestClearTimeUpdate:
    pop hl

.ReturnFromClearStatusAndTimeUpdate:
    pop af
    ret


GS05_DrawSelectedEasyPicrossPuzzleInfoPanel::
    ld a, [rSelectedSaveSlotIndex]
    sla a
    ld c, a
    ld b, $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    push af
    and $7f
    call SplitAToDecimalDigitsAndPushHundredsTens
    add $51
    ld bc, $4818
    call CopyOAMSpriteById
    pop af
    cp $0a
    jr z, .AfterTimesClearedDigits

    add $51
    ld bc, $4018
    call CopyOAMSpriteById

.AfterTimesClearedDigits:
    pop af
    pop af
    bit 7, a
    jp z, GS05_DrawSelectedEasyPicrossPuzzleInfoPanel_DrawUnclearedPlaceholders

    ld a, [rSelectedSaveSlotIndex]
    sla a
    ld c, a
    ld b, $00
    ld hl, GS05_EasyPicrossTimeDataPointerTableBySaveSlot
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    sla a
    add c
    ld c, a
    ld b, $00
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    call DecodePackedPuzzleClearTimeToBCDDigits
    push bc
    ld a, b
    and $f0
    swap a
    add $51
    ld bc, $0818
    call CopyOAMSpriteById
    pop bc
    push bc
    ld a, b
    and $0f
    add $51
    ld bc, $1018
    call CopyOAMSpriteById
    pop bc
    push bc
    ld a, c
    and $f0
    swap a
    add $51
    ld bc, $2018
    call CopyOAMSpriteById
    pop bc
    ld a, c
    and $0f
    add $51
    ld bc, $2818
    call CopyOAMSpriteById
    ld a, [hl]
    call GS05_UpdateFirstClearTimeHintUsedIconTile
    ld a, [rSelectedSaveSlotIndex]
    sla a
    ld c, a
    ld b, $00
    ld hl, GS05_EasyPicrossTimeDataPointerTableBySaveSlot
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    sla a
    add c
    ld c, a
    ld b, $00
    add hl, bc
    inc hl
    ld a, [hl+]
    and $f0
    swap a
    ld b, a
    ld c, [hl]
    call DecodePackedPuzzleClearTimeToBCDDigits
    push bc
    ld a, b
    and $f0
    swap a
    add $51
    ld bc, $6818
    call CopyOAMSpriteById
    pop bc
    push bc
    ld a, b
    and $0f
    add $51
    ld bc, $7018
    call CopyOAMSpriteById
    pop bc
    push bc
    ld a, c
    and $f0
    swap a
    add $51
    ld bc, $8018
    call CopyOAMSpriteById
    pop bc
    ld a, c
    and $0f
    add $51
    ld bc, $8818
    call CopyOAMSpriteById
    dec hl
    ld a, [hl]
    jp GS05_UpdateBestClearTimeHintUsedIconTile


GS05_DrawSelectedEasyPicrossPuzzleInfoPanel_DrawUnclearedPlaceholders::
    ld a, $80
    ld bc, $0818
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $1018
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $2018
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $2818
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $6818
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $7018
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $8018
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $8818
    call CopyOAMSpriteById
    xor a
    call GS05_UpdateFirstClearTimeHintUsedIconTile
    jp GS05_UpdateBestClearTimeHintUsedIconTile


GS05_DrawSelectedEasyPicrossPuzzleInfoPanelFromSelectedPuzzleCache::
    ld a, [rSelectedPuzzleStatusData]
    push af
    and $7f
    call SplitAToDecimalDigitsAndPushHundredsTens
    add $51
    ld bc, $4818
    call CopyOAMSpriteById
    pop af
    cp $0a
    jr z, .AfterTimesClearedDigits

    add $51
    ld bc, $4018
    call CopyOAMSpriteById

.AfterTimesClearedDigits:
    pop af
    pop af
    bit 7, a
    jp z, GS05_DrawSelectedEasyPicrossPuzzleInfoPanelFromSelectedPuzzleCache_DrawUnclearedPlaceholders

    ld hl, rSelectedPuzzleTimeDataRecordByte0
    ld c, [hl]
    inc hl
    ld b, [hl]
    call DecodePackedPuzzleClearTimeToBCDDigits
    push bc
    ld a, b
    and $f0
    swap a
    add $51
    ld bc, $0818
    call CopyOAMSpriteById
    pop bc
    push bc
    ld a, b
    and $0f
    add $51
    ld bc, $1018
    call CopyOAMSpriteById
    pop bc
    push bc
    ld a, c
    and $f0
    swap a
    add $51
    ld bc, $2018
    call CopyOAMSpriteById
    pop bc
    ld a, c
    and $0f
    add $51
    ld bc, $2818
    call CopyOAMSpriteById
    ld a, [hl]
    call GS05_UpdateFirstClearTimeHintUsedIconTile
    ld hl, rSelectedPuzzleTimeDataRecordByte1
    ld a, [hl+]
    and $f0
    swap a
    ld b, a
    ld c, [hl]
    call DecodePackedPuzzleClearTimeToBCDDigits
    push bc
    ld a, b
    and $f0
    swap a
    add $51
    ld bc, $6818
    call CopyOAMSpriteById
    pop bc
    push bc
    ld a, b
    and $0f
    add $51
    ld bc, $7018
    call CopyOAMSpriteById
    pop bc
    push bc
    ld a, c
    and $f0
    swap a
    add $51
    ld bc, $8018
    call CopyOAMSpriteById
    pop bc
    ld a, c
    and $0f
    add $51
    ld bc, $8818
    call CopyOAMSpriteById
    dec hl
    ld a, [hl]
    jp GS05_UpdateBestClearTimeHintUsedIconTile


GS05_DrawSelectedEasyPicrossPuzzleInfoPanelFromSelectedPuzzleCache_DrawUnclearedPlaceholders::
    ld a, $80
    ld bc, $0818
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $1018
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $2018
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $2818
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $6818
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $7018
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $8018
    call CopyOAMSpriteById
    ld a, $80
    ld bc, $8818
    call CopyOAMSpriteById
    xor a
    call GS05_UpdateFirstClearTimeHintUsedIconTile
    jp GS05_UpdateBestClearTimeHintUsedIconTile


GS05_LoadSelectedEasyPicrossPuzzleStatusAndTimeDataRecord::
    ld a, [rSelectedSaveSlotIndex]
    sla a
    ld c, a
    ld b, $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [rSelectedPuzzleStatusData], a
    ld a, [rSelectedSaveSlotIndex]
    sla a
    ld c, a
    ld b, $00
    ld hl, GS05_EasyPicrossTimeDataPointerTableBySaveSlot
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    sla a
    add c
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld [rSelectedPuzzleTimeDataRecordByte0], a
    ld a, [hl+]
    ld [rSelectedPuzzleTimeDataRecordByte1], a
    ld a, [hl]
    ld [rSelectedPuzzleTimeDataRecordByte2], a
    ret


GS05_UpdateFirstClearTimeHintUsedIconTile::
    push af
    push hl
    bit 3, a
    jr z, .DrawFirstClearTimeHintUsedBlankTile

    ld a, $01
    ld bc, GS05_FirstClearTimeHintUsedIconCommandStream
    call QueueCommandStreamAndProcessIfLCDOff
    jr .ReturnFromFirstClearTimeHintUsedTileUpdate

.DrawFirstClearTimeHintUsedBlankTile:
    ld a, $01
    ld bc, GS05_FirstClearTimeHintUsedBlankCommandStream
    call QueueCommandStreamAndProcessIfLCDOff

.ReturnFromFirstClearTimeHintUsedTileUpdate:
    pop hl
    pop af
    ret


GS05_FirstClearTimeHintUsedIconCommandStream::
    db $98, $66, $01, $2f
    db $00

GS05_FirstClearTimeHintUsedBlankCommandStream::
    db $98, $66, $01, $2b
    db $00

GS05_UpdateBestClearTimeHintUsedIconTile::
    push af
    push hl
    bit 7, a
    jr z, .DrawBestClearTimeHintUsedBlankTile

    ld a, $01
    ld bc, GS05_BestClearTimeHintUsedIconCommandStream
    call QueueCommandStreamAndProcessIfLCDOff
    jr .ReturnFromBestClearTimeHintUsedTileUpdate

.DrawBestClearTimeHintUsedBlankTile:
    ld a, $01
    ld bc, GS05_BestClearTimeHintUsedBlankCommandStream
    call QueueCommandStreamAndProcessIfLCDOff

.ReturnFromBestClearTimeHintUsedTileUpdate:
    pop hl
    pop af
    ret


GS05_BestClearTimeHintUsedIconCommandStream::
    db $98, $72, $01, $2f
    db $00

GS05_BestClearTimeHintUsedBlankCommandStream::
    db $98, $72, $01, $2b
    db $00

GS05_AdvanceSelectionToNextUnclearedPuzzleIfPossible::
    ld a, [rPuzzleAndMenuCursorRow]
    cp $07
    jr nz, .CheckNextPuzzleClearStatus

    ld a, [rPuzzleCursorColumn]
    cp $07
    ret z

.CheckNextPuzzleClearStatus:
    ld a, [rSelectedSaveSlotIndex]
    sla a
    ld c, a
    ld b, $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    ld c, a
    ld a, [rPuzzleCursorColumn]
    or c
    ld c, a
    ld b, $00
    add hl, bc
    inc hl
    bit 7, [hl]
    ret nz

    ld a, [rPuzzleCursorColumn]
    inc a
    cp $08
    jr nz, .StoreAdvancedSelectionAndPlayMoveSfx

    ld a, [rPuzzleAndMenuCursorRow]
    inc a
    ld [rPuzzleAndMenuCursorRow], a
    xor a

.StoreAdvancedSelectionAndPlayMoveSfx:
    ld [rPuzzleCursorColumn], a
    ld c, $0a
    ld a, $02
    call CallSoundCommandDispatcher
    ret


GS05_EasyPicrossTimeDataPointerTableBySaveSlot::
    db $87, $a0
    db $47, $a1
    db $07, $a2

GS05_EasyPicrossStatusDataPointerTableBySaveSlot::
    db $c7, $a2
    db $07, $a3
    db $47, $a3

LetsTryThisOneText::
    db "Let's try this one.", $ff, $ff

VeryGoodText::
    db "Very good.", $ff, $ff

LetsTryAgainText::
    db "Let's try again.", $ff, $ff

ItsTheLetterText::
    db $fe, $ff, "It's the letter ", $ff, $ff

LText::
    db "“L”.", $ff, $ff

EText::
    db "“E”.", $ff, $ff

TText::
    db "“T”.", $ff, $ff

SText::
    db "“S”.", $ff, $ff

WText::
    db "“W”.", $ff, $ff

OText::
    db "“O”.", $ff, $ff

RText::
    db "“R”.", $ff, $ff

KText::
    db "“K”.", $ff, $ff

GameState_08_EasyPicrossPuzzle_PhaseDispatcher::
    ld a, [rStatePhase_Current]
    rst RST_18

GS08_PhasePointer_00::
    db $9a, $5d

GS08_PhasePointer_01::
    db $a5, $5f

GS08_PhasePointer_02::
    db $a8, $5f

GS08_PhasePointer_03::
    db $cb, $5f

GS08_PhasePointer_04::
    db $7b, $61

GS08_PhasePointer_05::
    db $fc, $61

GS08_PhasePointer_06::
    db $38, $62

GS08_PhasePointer_07::
    db $70, $62

GS08_PhasePointer_08::
    db $28, $63

GS08_PhasePointer_09::
    db $43, $63

GS08_PhasePointer_0a::
    db $c3, $63

GS08_PhasePointer_0b::
    db $93, $5e

GS08_StatePhase_00_EasyPicrossPuzzleInit::
    ld a, $43
    ld [rLCDCShadow], a
    xor a
    ld [rBGPShadow], a
    ld [rOBP0Shadow], a
    ld [rOBP1Shadow], a
    ld [rSCXShadow], a
    ld [rSCYShadow], a
    call FillBGMap0WithTile01
    call FillBGMap1WithTile01
    call LoadPuzzleDataBuffer
    call LoadGameBoardTileData
    xor a
    ld [rPuzzleCursorColumn], a
    ld [rPuzzleAndMenuCursorRow], a
    ld a, $00
    ld [rHintPopupSelection], a
    ld a, $02
    ld [rPuzzleTimerPenaltyStep], a
    ld a, $06
    ld hl, $7800
    ld de, $8500
    ld bc, $0200
    call BankedTileCopy
    ld a, $2f
    ld [rLYCShadow], a
    ld hl, rLCDCInterruptControlFlags
    set 6, [hl]
    ld hl, rIE
    set 1, [hl]
    ld a, $01
    ld [rLCDCInterruptDispatchIndex], a
    ld [rVBlankLCDCBit4ForceFlag], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    call BuildClueRunLengthBuffers
    call ClearShadowOAMBuffer
    call ResetPuzzleTimerState
    call RedrawBoardCellEffectFramesFromStateBuffer
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1EasyPicrossBGMSelectionIndex
    add hl, bc
    ld c, [hl]
    ld b, $00
    ld hl, PuzzleModeSecondarySfxIdTable
    add hl, bc
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, [hl]
    ld a, $01
    call CallSoundCommandDispatcher
    call EnableLCDFromShadow
    ld a, [rPuzzleGridWidth]
    cp $05
    jr nz, .SelectFadeInParamsForNon5x5Grid

    ld b, $03
    ld hl, $46a0
    ld c, $01
    ld de, $0014
    call PlayScreenTransitionFadeIn
    jr .MaybeRun5x5OpeningMessageScript

.SelectFadeInParamsForNon5x5Grid:
    cp $0a
    jr nz, .ApplyFadeInParamsFor15x15Grid

    ld b, $03
    ld hl, $46ac
    ld c, $02
    ld de, $0024
    call PlayScreenTransitionFadeIn
    jr .MaybeRun5x5OpeningMessageScript

.ApplyFadeInParamsFor15x15Grid:
    ld b, $03
    ld hl, $4694
    ld c, $00
    ld de, $0004
    call PlayScreenTransitionFadeIn

.MaybeRun5x5OpeningMessageScript:
    ld a, [rPuzzleGridWidth]
    cp $05
    jr nz, .AdvanceToNextPhase

    ld a, $0d
    ld [rMessageScriptStreamResetEntryLow], a
    ld [rMessageScriptStreamEntryLow], a
    ld a, $58
    ld [rMessageScriptStreamResetEntryHigh], a
    ld [rMessageScriptStreamEntryHigh], a
    ld a, $93
    ld [rMessageScriptStreamLimitLow], a
    ld a, $86
    ld [rMessageScriptStreamLimitHigh], a
    ld a, $aa
    ld [rMessageScriptStreamPointerLow], a
    ld a, $5c
    ld [rMessageScriptStreamPointerHigh], a
    call GS08_RunMessageScriptUntilEndWithFrameUpdates

.AdvanceToNextPhase:
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS08_StatePhase_0b_ContinueSavedPuzzleInitAndOpenPauseMenu::
    ld a, $43
    ld [rLCDCShadow], a
    xor a
    ld [rBGPShadow], a
    ld [rOBP0Shadow], a
    ld [rOBP1Shadow], a
    ld [rSCXShadow], a
    ld [rSCYShadow], a
    call FillBGMap0WithTile01
    call FillBGMap1WithTile01
    call RestoreCurrentPuzzleProgressFromSaveData
    call LoadGameBoardTileData
    ld a, $2f
    ld [rLYCShadow], a
    ld hl, rLCDCInterruptControlFlags
    set 6, [hl]
    ld hl, rIE
    set 1, [hl]
    ld a, $01
    ld [rLCDCInterruptDispatchIndex], a
    ld [rVBlankLCDCBit4ForceFlag], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    call BuildClueRunLengthBuffers
    call ClearShadowOAMBuffer
    call RenderPuzzleTimerDigits
    call RedrawBoardCellEffectFramesFromStateBuffer
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1EasyPicrossBGMSelectionIndex
    add hl, bc
    ld c, [hl]
    ld b, $00
    ld hl, PuzzleModeSecondarySfxIdTable
    add hl, bc
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, [hl]
    ld a, $01
    call CallSoundCommandDispatcher
    call EnableLCDFromShadow
    ld a, [rPuzzleGridWidth]
    cp $05
    jr nz, .SelectFadeInParamsForNon5x5Grid

    ld b, $03
    ld hl, $46a0
    ld c, $01
    ld de, $0014
    call PlayScreenTransitionFadeIn
    jr .MaybeRun5x5OpeningMessageScript

.SelectFadeInParamsForNon5x5Grid:
    cp $0a
    jr nz, .ApplyFadeInParamsFor15x15Grid

    ld b, $03
    ld hl, $46ac
    ld c, $02
    ld de, $0024
    call PlayScreenTransitionFadeIn
    jr .MaybeRun5x5OpeningMessageScript

.ApplyFadeInParamsFor15x15Grid:
    ld b, $03
    ld hl, $4694
    ld c, $00
    ld de, $0004
    call PlayScreenTransitionFadeIn

.MaybeRun5x5OpeningMessageScript:
    ld a, [rPuzzleGridWidth]
    cp $05
    jr nz, .InitializePauseMenuStateAndEnterPauseMenuIdle

    ld a, $0d
    ld [rMessageScriptStreamResetEntryLow], a
    ld [rMessageScriptStreamEntryLow], a
    ld a, $58
    ld [rMessageScriptStreamResetEntryHigh], a
    ld [rMessageScriptStreamEntryHigh], a
    ld a, $93
    ld [rMessageScriptStreamLimitLow], a
    ld a, $86
    ld [rMessageScriptStreamLimitHigh], a
    ld a, $aa
    ld [rMessageScriptStreamPointerLow], a
    ld a, $5c
    ld [rMessageScriptStreamPointerHigh], a
    call GS08_RunMessageScriptUntilEndWithFrameUpdates

.InitializePauseMenuStateAndEnterPauseMenuIdle:
    call ClearShadowOAMBuffer
    rst RST_08
    xor a
    ld [rGS08_PauseMenuMainSelection], a
    ld a, $01
    ld [rGS08_PauseMenuSavePromptSelection], a
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1EasyPicrossBGMSelectionIndex
    add hl, bc
    ld a, [hl]
    ld [rGS08_PauseMenuBGMSubmenuSelection], a
    ld a, $01
    ld [rGS08_PauseMenuGiveUpPromptSelection], a
    ld a, $06
    ld hl, $7a00
    ld de, $8500
    ld bc, $0300
    call BankedTileCopyVRAMSafe
    call RecomputePuzzleCellBitSetCounters
    ld a, $06
    ld [rStatePhase_Current], a
    ret


GS08_StatePhase_01_HintPopupSelection::
    jp GS0A_StatePhase_01_HintPopupSelection


GS08_StatePhase_02_HintCursorSweepAndApplySelection::
    jp GS0A_StatePhase_02_HintCursorSweepAndApplySelection


GS08_RunMessageScriptUntilEndWithFrameUpdates::
    call ClearShadowOAMBufferFromCursor
    rst RST_08
    call TickMarioBlinkAnimation
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStreamHelper
    jr nz, GS08_RunMessageScriptUntilEndWithFrameUpdates

    ret


GS08_RunMessageScriptUntilEndWithTextAnimation::
    call AdvanceMessageScriptStreamHelper
    ret z

    call TickMarioBlinkAnimation
    call AnimateMarioMouthDuringText
    call ClearShadowOAMBufferFromCursor
    rst RST_08
    jr GS08_RunMessageScriptUntilEndWithTextAnimation

GS08_StatePhase_03_PuzzleGameplayLoop::
    ld a, [rPuzzleGridWidth]
    cp $05
    jp z, GS08_StatePhase_03_PuzzleGameplayLoop_5x5

    call UpdatePuzzleCursorFromDirectionalInput
    call DrawPuzzleCursorSpritesAndTickStepSequence
    call TickMarioBlinkAnimation
    call TickLowTimerMarioSweatIndicator
    call ApplyLowTimerMarioFaceTilesOnce
    call UpdatePuzzleTimerCountdown
    call UpdatePuzzleTimerDisplayState
    call ProcessPuzzleCellActionInput
    call TickPendingCellActionEffect
    call FinalizePuzzleClearAndSetPostClearFlowFlag
    call TickPuzzleTimerCompletionState
    ld a, [rInputButtonsPressed]
    and $08
    jr z, .HandlePostClearFlowOrCheckTimeout

    ld c, $10
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, $05
    ld [rStatePhase_Current], a
    ret


.HandlePostClearFlowOrCheckTimeout:
    ld a, [rPuzzlePostClearFlowFlag]
    and a
    jr z, .HandleTimerCompletionGameOverFlow

    call GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot
    call GS05_UpdateSelectedEasyPicrossPuzzleClearStatusAndTimes
    call RefreshSaveValidationChecksumsAndMirrors
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $09
    ld a, $01
    call CallSoundCommandDispatcher
    call ClearShadowOAMBuffer
    call RedrawPuzzleBoard

.WaitForPostClearInputAndAdvance:
    rst RST_08
    ld a, [rInputButtonsPressed]
    and $09
    jr z, .WaitForPostClearInputAndAdvance

    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    call RedrawPostClearSolvedCellsByGridSize
    call DrawPuzzleNameFromPointerTable
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $12
    ld a, $01
    call CallSoundCommandDispatcher
    ld hl, rStatePhase_Current
    inc [hl]
    ret


.HandleTimerCompletionGameOverFlow:
    ld a, [rPuzzleTimerCompletionState]
    and a
    ret z

    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $08
    ld a, $01
    call CallSoundCommandDispatcher
    call ClearShadowOAMBuffer
    call LoadGameOverMessageTileData
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS08_StatePhase_03_PuzzleGameplayLoop_5x5::
    call UpdatePuzzleCursorFromDirectionalInput
    call DrawPuzzleCursorSpritesAndTickStepSequence
    call TickMarioBlinkAnimation
    call UpdatePuzzleTimerCountdown
    call UpdatePuzzleTimerDisplayState
    call ProcessPuzzleCellActionInput
    call TickPendingCellActionEffect
    call FinalizePuzzleClearAndSetPostClearFlowFlag
    call TickPuzzleTimerCompletionState
    ld a, [rInputButtonsPressed]
    and $08
    jr z, .Handle5x5PostClearFlowOrCheckTimeout

    ld c, $10
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, $05
    ld [rStatePhase_Current], a
    ret


.Handle5x5PostClearFlowOrCheckTimeout:
    ld a, [rPuzzlePostClearFlowFlag]
    and a
    jp z, Handle5x5TimerCompletionGameOverFlow

    call GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot
    call GS05_UpdateSelectedEasyPicrossPuzzleClearStatusAndTimes
    call RefreshSaveValidationChecksumsAndMirrors
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $09
    ld a, $01
    call CallSoundCommandDispatcher
    call ClearShadowOAMBuffer
    call RedrawPuzzleBoard
    call GS06_CopyRedrawSourceToProgressionBuffer
    ld a, $d2
    ld [rMessageScriptStreamPointerLow], a
    ld a, $5c
    ld [rMessageScriptStreamPointerHigh], a
    call GS08_RunMessageScriptUntilEndWithTextAnimation

.WaitFor5x5PostClearInputAndAdvance:
    call TickMarioBlinkAnimation
    call ClearShadowOAMBufferFromCursor
    rst RST_08
    ld a, [rInputButtonsPressed]
    and $09
    jr z, .WaitFor5x5PostClearInputAndAdvance

    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    call RedrawPostClearSolvedCellsByGridSize
    ld a, $0a
    ld [rMessageScriptStreamPointerLow], a
    ld a, $5d
    ld [rMessageScriptStreamPointerHigh], a
    call GS08_RunMessageScriptUntilEndWithTextAnimation
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1EasyPicrossPuzzleSelectCursorColumn
    add hl, bc
    ld a, [hl]
    sla a
    ld c, a
    ld b, $00
    ld hl, LetterTextPointerTable
    add hl, bc
    ld a, [hl+]
    ld [rMessageScriptStreamPointerLow], a
    ld a, [hl]
    ld [rMessageScriptStreamPointerHigh], a
    call GS08_RunMessageScriptUntilEndWithTextAnimation
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $12
    ld a, $01
    call CallSoundCommandDispatcher
    ld hl, rStatePhase_Current
    inc [hl]
    ret


Handle5x5TimerCompletionGameOverFlow::
    ld a, [rPuzzleTimerCompletionState]
    and a
    ret z

    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $08
    ld a, $01
    call CallSoundCommandDispatcher
    call ClearShadowOAMBuffer
    call LoadGameOverMessageTileData
    call GS06_CopyRedrawSourceToProgressionBuffer
    ld a, $e8
    ld [rMessageScriptStreamPointerLow], a
    ld a, $5c
    ld [rMessageScriptStreamPointerHigh], a
    call GS08_RunMessageScriptUntilEndWithTextAnimation
    ld hl, rStatePhase_Current
    inc [hl]
    ret


LetterTextPointerTable::
    db $2e, $5d
    db $38, $5d
    db $42, $5d
    db $4c, $5d
    db $56, $5d
    db $60, $5d
    db $6a, $5d
    db $74, $5d

GS08_StatePhase_04_ConfirmExitAndReturnToEasyPicrossSelect::
    ld a, [rInputButtonsPressed]
    and $09
    ret z

    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    ld a, [rPuzzleGridWidth]
    cp $05
    jr nz, .SelectFadeOutParamsForNon5x5Grid

    ld b, $03
    ld hl, $46ab
    ld c, $01
    ld de, $0023
    call PlayScreenTransitionFadeOut
    jr .FinalizeExitTransitionToGS05

.SelectFadeOutParamsForNon5x5Grid:
    cp $0a
    jr nz, .ApplyFadeOutParamsFor15x15Grid

    ld b, $03
    ld hl, $46b7
    ld c, $02
    ld de, $0033
    call PlayScreenTransitionFadeOut
    jr .FinalizeExitTransitionToGS05

.ApplyFadeOutParamsFor15x15Grid:
    ld b, $03
    ld hl, $469f
    ld c, $00
    ld de, $0013
    call PlayScreenTransitionFadeOut

.FinalizeExitTransitionToGS05:
    call DisableLCDAtVBlank
    ld hl, rLCDCInterruptControlFlags
    res 6, [hl]
    ld hl, rIE
    res 1, [hl]
    xor a
    ld [rLCDCInterruptDispatchIndex], a
    ld [rVBlankLCDCBit4ForceFlag], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    ld a, $04
    ld [rStatePhase_Current], a
    ld a, $05
    ld [rGameState_Current], a
    ret


GS08_StatePhase_05_PauseMenuInitAndMaskClues::
    call ClearShadowOAMBuffer
    rst RST_08
    xor a
    ld [rGS08_PauseMenuMainSelection], a
    ld a, $01
    ld [rGS08_PauseMenuSavePromptSelection], a
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1EasyPicrossBGMSelectionIndex
    add hl, bc
    ld a, [hl]
    ld [rGS08_PauseMenuBGMSubmenuSelection], a
    ld a, $01
    ld [rGS08_PauseMenuGiveUpPromptSelection], a
    ld a, $06
    ld hl, $7a00
    ld de, $8500
    ld bc, $0300
    call BankedTileCopyVRAMSafe
    call MaskClueDigitSlotsFromRunLengthBuffers
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS08_StatePhase_06_PauseMenuIdle::
    ld b, $02
    ld hl, $4632
    call SwitchBankToBAndJumpToHL
    ld a, [rInputButtonsPressed]
    bit 0, a
    jr z, .HandlePauseMenuCloseInput

    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, [rGS08_PauseMenuMainSelection]
    ld c, a
    ld b, $00
    ld hl, GS08_PauseMenuSelectionNextPhaseTable
    add hl, bc
    ld a, [hl]
    ld [rStatePhase_Current], a
    ret


.HandlePauseMenuCloseInput:
    bit 3, a
    ret z

    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, $0a
    ld [rStatePhase_Current], a
    ret


GS08_PauseMenuSelectionNextPhaseTable::
    db $07, $09, $08

GS08_StatePhase_07_PauseMenuSavePrompt::
    ld b, $02
    ld hl, $4672
    call SwitchBankToBAndJumpToHL
    ld a, [rInputButtonsPressed]
    and $01
    ret z

    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, [rGS08_PauseMenuSavePromptSelection]
    and a
    jr z, .HandlePauseMenuSavePromptConfirmAndBeginExitFlow

    ld a, $06
    ld [rStatePhase_Current], a
    ret


.HandlePauseMenuSavePromptConfirmAndBeginExitFlow:
    call SaveCurrentPuzzleProgressToSaveData
    ld a, $01
    ld [rContinueSavedPuzzlePromptRouteMode], a
    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    ld a, [rPuzzleGridWidth]
    cp $05
    jr nz, .SelectFadeOutParamsForNon5x5Grid

    ld b, $03
    ld hl, $46ab
    ld c, $01
    ld de, $0023
    call PlayScreenTransitionFadeOut
    jr .FinalizeSavePromptTransitionToGS00

.SelectFadeOutParamsForNon5x5Grid:
    cp $0a
    jr nz, .ApplyFadeOutParamsFor15x15Grid

    ld b, $03
    ld hl, $46b7
    ld c, $02
    ld de, $0033
    call PlayScreenTransitionFadeOut
    jr .FinalizeSavePromptTransitionToGS00

.ApplyFadeOutParamsFor15x15Grid:
    ld b, $03
    ld hl, $469f
    ld c, $00
    ld de, $0013
    call PlayScreenTransitionFadeOut

.FinalizeSavePromptTransitionToGS00:
    call DisableLCDAtVBlank
    ld hl, rLCDCInterruptControlFlags
    res 6, [hl]
    ld hl, rIE
    res 1, [hl]
    xor a
    ld [rLCDCInterruptDispatchIndex], a
    ld [rVBlankLCDCBit4ForceFlag], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    ld c, a
    sla a
    sla a
    add c
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1EasyPicrossBGMSelectionIndex
    add hl, bc
    ld a, [hl]
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]
    ld [hl], a
    ld a, $04
    ld [rStatePhase_Current], a
    ld a, $00
    ld [rGameState_Current], a
    jp RefreshSaveValidationChecksumsAndMirrors


GS08_StatePhase_08_PauseMenuBGMSubmenu::
    ld b, $02
    ld hl, $46b2
    call SwitchBankToBAndJumpToHL
    ld a, [rInputButtonsPressed]
    and $01
    ret z

    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, $06
    ld [rStatePhase_Current], a
    ret


GS08_StatePhase_09_PauseMenuGiveUpPrompt::
    ld b, $02
    ld hl, $470f
    call SwitchBankToBAndJumpToHL
    ld a, [rInputButtonsPressed]
    and $01
    ret z

    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, [rGS08_PauseMenuGiveUpPromptSelection]
    and a
    jr z, .HandlePauseMenuGiveUpConfirmAndStartGameOverFlow

    ld a, $06
    ld [rStatePhase_Current], a
    ret


.HandlePauseMenuGiveUpConfirmAndStartGameOverFlow:
    ld a, $01
    ld [rPuzzleTimerCompletionState], a
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $08
    ld a, $01
    call CallSoundCommandDispatcher
    call ClearShadowOAMBuffer
    call LoadGameOverMessageTileData
    ld a, $06
    ld hl, $4500
    ld de, $8500
    ld bc, $0300
    call BankedTileCopyVRAMSafe
    ld a, [rPuzzleGridWidth]
    cp $05
    jr nz, .FinalizePauseMenuGiveUpFlowAndAdvanceToPhase04

    call GS06_CopyRedrawSourceToProgressionBuffer
    ld a, $e8
    ld [rMessageScriptStreamPointerLow], a
    ld a, $5c
    ld [rMessageScriptStreamPointerHigh], a
    call GS08_RunMessageScriptUntilEndWithTextAnimation

.FinalizePauseMenuGiveUpFlowAndAdvanceToPhase04:
    ld c, a
    sla a
    sla a
    add c
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1EasyPicrossBGMSelectionIndex
    add hl, bc
    ld a, [hl]
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]
    ld [hl], a
    ld a, $04
    ld [rStatePhase_Current], a
    xor a
    ld [rContinueSavedPuzzlePromptRouteMode], a
    jp RefreshSaveValidationChecksumsAndMirrors


GS08_StatePhase_0a_ClosePauseMenuAndResumeGameplay::
    call ClearShadowOAMBuffer
    rst RST_08
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1EasyPicrossBGMSelectionIndex
    add hl, bc
    ld a, [hl]
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]
    ld [hl], a
    ld a, $06
    ld hl, $4500
    ld de, $8500
    ld bc, $0300
    call BankedTileCopyVRAMSafe
    call DrawClueNumbersFromRunLengthBuffers
    call RenderPuzzleTimerDigits
    ld a, $03
    ld [rStatePhase_Current], a
    xor a
    ld [rContinueSavedPuzzlePromptRouteMode], a
    jp RefreshSaveValidationChecksumsAndMirrors


GameState_09_TimeTrialPuzzle_PhaseDispatcher::
    ld a, [rStatePhase_Current]
    rst RST_18

GS09_PhasePointer_00::
    db $14, $64

GS09_PhasePointer_01::
    db $6c, $65

GS09_PhasePointer_02::
    db $1f, $66

GS09_PhasePointer_03::
    db $77, $66

GS09_PhasePointer_04::
    db $b3, $66

GS09_PhasePointer_05::
    db $eb, $66

GS09_PhasePointer_06::
    db $7d, $67

GS09_PhasePointer_07::
    db $98, $67

GS09_PhasePointer_08::
    db $f6, $67

GS09_PhasePointer_09::
    db $b1, $64

GS09_StatePhase_00_TimeTrialPuzzleInit::
    ld a, $43
    ld [rLCDCShadow], a
    xor a
    ld [rBGPShadow], a
    ld [rOBP0Shadow], a
    ld [rOBP1Shadow], a
    ld [rSCXShadow], a
    ld [rSCYShadow], a
    call FillBGMap0WithTile01
    call FillBGMap1WithTile01
    call LoadPuzzleDataBuffer
    call LoadGameBoardTileData
    xor a
    ld [rPuzzleCursorColumn], a
    ld [rPuzzleAndMenuCursorRow], a
    ld a, $00
    ld [rHintPopupSelection], a
    ld a, $02
    ld [rPuzzleTimerPenaltyStep], a
    ld a, $2f
    ld [rLYCShadow], a
    ld hl, rLCDCInterruptControlFlags
    set 6, [hl]
    ld hl, rIE
    set 1, [hl]
    ld a, $01
    ld [rLCDCInterruptDispatchIndex], a
    ld [rVBlankLCDCBit4ForceFlag], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    call BuildClueRunLengthBuffers
    call RecomputePuzzleCellBitSetCounters
    call ClearShadowOAMBuffer
    call DrawPuzzleCursorSpritesAndTickStepSequence
    call ResetPuzzleTimerState
    call RedrawBoardCellEffectFramesFromStateBuffer
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1TimeTrialBGMSelectionIndex
    add hl, bc
    ld c, [hl]
    ld b, $00
    ld hl, PuzzleModeSecondarySfxIdTable
    add hl, bc
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, [hl]
    ld a, $01
    call CallSoundCommandDispatcher
    call EnableLCDFromShadow
    ld b, $03
    ld hl, $4694
    ld c, $00
    ld de, $0004
    call PlayScreenTransitionFadeIn
    ld hl, rStatePhase_Current
    inc [hl]
    call DrawClueNumbersFromRunLengthBuffers
    ret


GS09_StatePhase_09_ContinueSavedPuzzleInitAndOpenPauseMenu::
    ld a, $43
    ld [rLCDCShadow], a
    xor a
    ld [rBGPShadow], a
    ld [rOBP0Shadow], a
    ld [rOBP1Shadow], a
    ld [rSCXShadow], a
    ld [rSCYShadow], a
    call FillBGMap0WithTile01
    call FillBGMap1WithTile01
    call RestoreCurrentPuzzleProgressFromSaveData
    call LoadGameBoardTileData
    ld a, $2f
    ld [rLYCShadow], a
    ld hl, rLCDCInterruptControlFlags
    set 6, [hl]
    ld hl, rIE
    set 1, [hl]
    ld a, $01
    ld [rLCDCInterruptDispatchIndex], a
    ld [rVBlankLCDCBit4ForceFlag], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    call BuildClueRunLengthBuffers
    call ClearShadowOAMBuffer
    call RenderPuzzleTimerDigits
    call RedrawBoardCellEffectFramesFromStateBuffer
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1TimeTrialBGMSelectionIndex
    add hl, bc
    ld c, [hl]
    ld b, $00
    ld hl, PuzzleModeSecondarySfxIdTable
    add hl, bc
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, [hl]
    ld a, $01
    call CallSoundCommandDispatcher
    call EnableLCDFromShadow
    ld b, $03
    ld hl, $4694
    ld c, $00
    ld de, $0004
    call PlayScreenTransitionFadeIn
    call ClearShadowOAMBuffer
    rst RST_08
    xor a
    ld [rGS08_PauseMenuMainSelection], a
    ld a, $01
    ld [rGS08_PauseMenuSavePromptSelection], a
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1TimeTrialBGMSelectionIndex
    add hl, bc
    ld a, [hl]
    ld [rGS08_PauseMenuBGMSubmenuSelection], a
    ld a, $01
    ld [rGS08_PauseMenuGiveUpPromptSelection], a
    ld a, $06
    ld hl, $7a00
    ld de, $8500
    ld bc, $0300
    call BankedTileCopyVRAMSafe
    call RecomputePuzzleCellBitSetCounters
    ld a, $04
    ld [rStatePhase_Current], a
    ret


GS09_StatePhase_01_PuzzleGameplayLoop::
    call UpdatePuzzleCursorFromDirectionalInput
    call DrawPuzzleCursorSpritesAndTickStepSequence
    call UpdatePuzzleTimerCountdown
    call TickMarioBlinkAnimation
    call RouteTimeTrialCellActionInputByUnusedSaveRuleFlag
    call TickPendingCellActionEffect
    call FinalizePuzzleClearAndSetPostClearFlowFlag
    call TickPuzzleTimerCompletionState
    ld a, [rInputButtonsPressed]
    and $08
    jr z, .HandlePostClearFlowOrCheckTimeout

    ld c, $10
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, $03
    ld [rStatePhase_Current], a
    ret


.HandlePostClearFlowOrCheckTimeout:
    ld a, [rPuzzlePostClearFlowFlag]
    and a
    jr z, .HandleTimerCompletionGameOverFlow

    ld c, $00
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    ld bc, $0003
    call BusyWaitDelayByBC
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $09
    ld a, $01
    call CallSoundCommandDispatcher
    call ClearShadowOAMBuffer
    call RedrawPuzzleBoard

.WaitForPostClearInputAndAdvance:
    rst RST_08
    ld a, [rInputButtonsPressed]
    and $09
    jr z, .WaitForPostClearInputAndAdvance

    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    call RedrawPostClearSolvedCellsByGridSize
    call DrawPuzzleNameFromPointerTable
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $12
    ld a, $01
    call CallSoundCommandDispatcher
    ld hl, rStatePhase_Current
    inc [hl]
    ret


.HandleTimerCompletionGameOverFlow:
    ld a, [rPuzzleTimerCompletionState]
    and a
    ret z

    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $08
    ld a, $01
    call CallSoundCommandDispatcher
    call ClearShadowOAMBuffer
    call LoadGameOverMessageTileData
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS09_StatePhase_02_ConfirmExitAndReturnToTimeTrialRankingScreen::
    ld a, [rInputButtonsPressed]
    and $09
    ret z

    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    ld b, $03
    ld hl, $469f
    ld c, $00
    ld de, $0013
    call PlayScreenTransitionFadeOut
    call DisableLCDAtVBlank
    ld hl, rLCDCInterruptControlFlags
    res 6, [hl]
    ld hl, rIE
    res 1, [hl]
    xor a
    ld [rLCDCInterruptDispatchIndex], a
    ld [rVBlankLCDCBit4ForceFlag], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    ld a, $04
    ld [rStatePhase_Current], a
    ld a, $07
    ld [rGameState_Current], a
    ret


GS09_StatePhase_03_PauseMenuInitAndMaskClues::
    call ClearShadowOAMBuffer
    rst RST_08
    xor a
    ld [rGS08_PauseMenuMainSelection], a
    ld a, $01
    ld [rGS08_PauseMenuSavePromptSelection], a
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1TimeTrialBGMSelectionIndex
    add hl, bc
    ld a, [hl]
    ld [rGS08_PauseMenuBGMSubmenuSelection], a
    ld a, $01
    ld [rGS08_PauseMenuGiveUpPromptSelection], a
    ld a, $06
    ld hl, $7a00
    ld de, $8500
    ld bc, $0300
    call BankedTileCopyVRAMSafe
    call MaskClueDigitSlotsFromRunLengthBuffers
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS09_StatePhase_04_PauseMenuIdle::
    ld b, $02
    ld hl, $4632
    call SwitchBankToBAndJumpToHL
    ld a, [rInputButtonsPressed]
    bit 0, a
    jr z, .HandlePauseMenuCloseInput

    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, [rGS08_PauseMenuMainSelection]
    ld c, a
    ld b, $00
    ld hl, GS09_PauseMenuSelectionNextPhaseTable
    add hl, bc
    ld a, [hl]
    ld [rStatePhase_Current], a
    ret


.HandlePauseMenuCloseInput:
    bit 3, a
    ret z

    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, $08
    ld [rStatePhase_Current], a
    ret


GS09_PauseMenuSelectionNextPhaseTable::
    db $05, $07, $06

GS09_StatePhase_05_PauseMenuSavePrompt::
    ld b, $02
    ld hl, $4672
    call SwitchBankToBAndJumpToHL
    ld a, [rInputButtonsPressed]
    and $01
    ret z

    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, [rGS08_PauseMenuSavePromptSelection]
    and a
    jr z, .HandlePauseMenuSavePromptConfirmAndBeginExitFlow

    ld a, $04
    ld [rStatePhase_Current], a
    ret


.HandlePauseMenuSavePromptConfirmAndBeginExitFlow:
    call SaveCurrentPuzzleProgressToSaveData
    ld a, $03
    ld [rContinueSavedPuzzlePromptRouteMode], a
    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    ld b, $03
    ld hl, $469f
    ld c, $00
    ld de, $0013
    call PlayScreenTransitionFadeOut
    call DisableLCDAtVBlank
    ld hl, rLCDCInterruptControlFlags
    res 6, [hl]
    ld hl, rIE
    res 1, [hl]
    xor a
    ld [rLCDCInterruptDispatchIndex], a
    ld [rVBlankLCDCBit4ForceFlag], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1TimeTrialBGMSelectionIndex
    add hl, bc
    ld a, [hl]
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]
    ld [hl], a
    ld a, $04
    ld [rStatePhase_Current], a
    ld a, $00
    ld [rGameState_Current], a
    jp RefreshSaveValidationChecksumsAndMirrors


GS09_StatePhase_06_PauseMenuBGMSubmenu::
    ld b, $02
    ld hl, $46b2
    call SwitchBankToBAndJumpToHL
    ld a, [rInputButtonsPressed]
    and $01
    ret z

    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, $04
    ld [rStatePhase_Current], a
    ret


GS09_StatePhase_07_PauseMenuGiveUpPrompt::
    ld b, $02
    ld hl, $470f
    call SwitchBankToBAndJumpToHL
    ld a, [rInputButtonsPressed]
    and $01
    ret z

    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, [rGS08_PauseMenuGiveUpPromptSelection]
    and a
    jr z, .HandlePauseMenuGiveUpConfirmAndStartGameOverFlow

    ld a, $04
    ld [rStatePhase_Current], a
    ret


.HandlePauseMenuGiveUpConfirmAndStartGameOverFlow:
    ld a, $01
    ld [rPuzzleTimerCompletionState], a
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $08
    ld a, $01
    call CallSoundCommandDispatcher
    call ClearShadowOAMBuffer
    call LoadGameOverMessageTileData
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1TimeTrialBGMSelectionIndex
    add hl, bc
    ld a, [hl]
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]
    ld [hl], a
    ld a, $02
    ld [rStatePhase_Current], a
    xor a
    ld [rContinueSavedPuzzlePromptRouteMode], a
    jp RefreshSaveValidationChecksumsAndMirrors


GS09_StatePhase_08_ClosePauseMenuAndResumeGameplay::
    call ClearShadowOAMBuffer
    rst RST_08
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1TimeTrialBGMSelectionIndex
    add hl, bc
    ld a, [hl]
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]
    ld [hl], a
    ld a, $06
    ld hl, $4500
    ld de, $8500
    ld bc, $0300
    call BankedTileCopyVRAMSafe
    call DrawClueNumbersFromRunLengthBuffers
    call RenderPuzzleTimerDigits
    ld a, $01
    ld [rStatePhase_Current], a
    xor a
    ld [rContinueSavedPuzzlePromptRouteMode], a
    jp RefreshSaveValidationChecksumsAndMirrors


RouteTimeTrialCellActionInputByUnusedSaveRuleFlag::
    ld a, [rInputButtonsHeld]
    and $01
    jr z, .ResetActionRepeatGuard

    ld a, [rInputButtonsPressedOrRepeated]
    and $f0
    jr z, .DispatchCellActionByUnusedSaveRuleFlag

.ResetActionRepeatGuard:
    xor a
    ld [rPuzzleActionRepeatGuard], a

.DispatchCellActionByUnusedSaveRuleFlag:
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    sla a
    ld hl, rPuzzleCursorColumn
    add [hl]
    ld c, a
    ld b, $00
    ld hl, rPuzzleCellStateBufferStart
    add hl, bc
    push hl
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1PuzzleActionRuleIndex_Unused
    add hl, bc
    ld a, [hl]
    pop hl
    and a
    jp z, ProcessPuzzleCellActionInput_HandleFillActionInput

    dec a
    jp z, ProcessPuzzleCellActionInput_HandleFillActionInput

    ret


GameState_0A_PicrossPuzzle_PhaseDispatcher::
    ld a, [rStatePhase_Current]
    rst RST_18

GS0A_PhasePointer_00::
    db $89, $68

GS0A_PhasePointer_01::
    db $92, $6a

GS0A_PhasePointer_02::
    db $44, $6b

GS0A_PhasePointer_03::
    db $41, $6c

GS0A_PhasePointer_04::
    db $ff, $6c

GS0A_PhasePointer_05::
    db $57, $6d

GS0A_PhasePointer_06::
    db $9c, $6d

GS0A_PhasePointer_07::
    db $d4, $6d

GS0A_PhasePointer_08::
    db $6e, $6e

GS0A_PhasePointer_09::
    db $89, $6e

GS0A_PhasePointer_0a::
    db $ef, $6e

GS0A_PhasePointer_0b::
    db $07, $69

GS0A_StatePhase_00_PicrossPuzzleInit::
    ld a, $43
    ld [rLCDCShadow], a
    xor a
    ld [rBGPShadow], a
    ld [rOBP0Shadow], a
    ld [rOBP1Shadow], a
    ld [rSCXShadow], a
    ld [rSCYShadow], a
    call FillBGMap0WithTile01
    call FillBGMap1WithTile01
    call LoadPuzzleDataBuffer
    call LoadGameBoardTileData
    xor a
    ld [rPuzzleCursorColumn], a
    ld [rPuzzleAndMenuCursorRow], a
    ld a, $00
    ld [rHintPopupSelection], a
    ld a, $02
    ld [rPuzzleTimerPenaltyStep], a
    ld a, $06
    ld hl, $7800
    ld de, $8500
    ld bc, $0200
    call BankedTileCopy
    ld a, $2f
    ld [rLYCShadow], a
    ld hl, rLCDCInterruptControlFlags
    set 6, [hl]
    ld hl, rIE
    set 1, [hl]
    ld a, $01
    ld [rLCDCInterruptDispatchIndex], a
    ld [rVBlankLCDCBit4ForceFlag], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    call BuildClueRunLengthBuffers
    call ClearShadowOAMBuffer
    call ResetPuzzleTimerState
    call RedrawBoardCellEffectFramesFromStateBuffer
    call PlayPuzzleModeSecondarySfxPairBySelectedCourseBGM
    call EnableLCDFromShadow
    ld b, $03
    ld hl, $4694
    ld c, $00
    ld de, $0004
    call PlayScreenTransitionFadeIn
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS0A_StatePhase_0b_ContinueSavedPuzzleInitAndOpenPauseMenu::
    ld a, $43
    ld [rLCDCShadow], a
    xor a
    ld [rBGPShadow], a
    ld [rOBP0Shadow], a
    ld [rOBP1Shadow], a
    ld [rSCXShadow], a
    ld [rSCYShadow], a
    call FillBGMap0WithTile01
    call FillBGMap1WithTile01
    call RestoreCurrentPuzzleProgressFromSaveData
    call LoadGameBoardTileData
    ld a, $06
    ld hl, $7800
    ld de, $8500
    ld bc, $0200
    call BankedTileCopy
    ld a, $2f
    ld [rLYCShadow], a
    ld hl, rLCDCInterruptControlFlags
    set 6, [hl]
    ld hl, rIE
    set 1, [hl]
    ld a, $01
    ld [rLCDCInterruptDispatchIndex], a
    ld [rVBlankLCDCBit4ForceFlag], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    call BuildClueRunLengthBuffers
    call ClearShadowOAMBuffer
    xor a
    ld [rPuzzleTimerActive], a
    call RenderPuzzleTimerDigits
    call RedrawBoardCellEffectFramesFromStateBuffer
    call PlayPuzzleModeSecondarySfxPairBySelectedCourseBGM
    call EnableLCDFromShadow
    ld b, $03
    ld hl, $4694
    ld c, $00
    ld de, $0004
    call PlayScreenTransitionFadeIn
    call ClearShadowOAMBuffer
    rst RST_08
    xor a
    ld [rGS08_PauseMenuMainSelection], a
    ld a, $01
    ld [rGS08_PauseMenuSavePromptSelection], a
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    add [hl]
    ld c, a
    ld hl, rSaveSlot1PicrossKinokoBGMSelectionIndex
    add hl, bc
    ld a, [hl]
    ld [rGS08_PauseMenuBGMSubmenuSelection], a
    ld a, $01
    ld [rGS08_PauseMenuGiveUpPromptSelection], a
    ld a, $06
    ld hl, $7a00
    ld de, $8500
    ld bc, $0300
    call BankedTileCopyVRAMSafe
    call RecomputePuzzleCellBitSetCounters
    ld a, $06
    ld [rStatePhase_Current], a
    ret


LoadGameBoardTileData::
    ld a, [rPuzzleGridWidth]
    cp $05
    jr nz, .Load10x10GameBoardTileData

    ld a, $07
    ld hl, GS05_EasyPicrossCompletionMessage
    ld de, $8000
    ld bc, $1800
    call BankedTileCopy
    ld a, $06
    ld hl, $4800
    ld de, $8800
    ld bc, $0200
    call BankedTileCopy
    ld a, $0b
    ld hl, $6000
    ld de, $9800
    ld bc, $0400
    call BankedTileCopy
    ld a, $96
    ld [rTilemapToTileDataAddressLookupTableLow], a
    ld a, $10
    ld [rTilemapToTileDataAddressLookupTableHigh], a
    jr .InitializePuzzleRuntimeStateAfterBoardLoad

.Load10x10GameBoardTileData:
    cp $0a
    jr nz, .Load15x15GameBoardTileData

    ld a, $08
    ld hl, GS05_EasyPicrossCompletionMessage
    ld de, $8000
    ld bc, $1800
    call BankedTileCopy
    ld a, $0b
    ld hl, GS09_PhasePointer_00
    ld de, $9800
    ld bc, $0400
    call BankedTileCopy
    ld a, $8a
    ld [rTilemapToTileDataAddressLookupTableLow], a
    ld a, $13
    ld [rTilemapToTileDataAddressLookupTableHigh], a
    jr .InitializePuzzleRuntimeStateAfterBoardLoad

.Load15x15GameBoardTileData:
    ld a, $06
    ld hl, GS05_EasyPicrossCompletionMessage
    ld de, $8000
    ld bc, $1800
    call BankedTileCopy
    ld a, $0b
    ld hl, $5c00
    ld de, $9800
    ld bc, $0400
    call BankedTileCopy
    ld a, $a2
    ld [rTilemapToTileDataAddressLookupTableLow], a
    ld a, $0d
    ld [rTilemapToTileDataAddressLookupTableHigh], a

.InitializePuzzleRuntimeStateAfterBoardLoad:
    xor a
    ld [rPuzzlePostClearFlowFlag], a
    ld [rPuzzleTimerCompletionState], a
    ld [rMarioBlinkAnimationSequenceCursor], a
    ld [rMarioBlinkAnimationDelay], a
    ld [rLowTimerMarioSweatIndicatorTickCounter], a
    ld [rLowTimerMarioFaceTilesAppliedFlag], a
    ld [rPuzzleActionRepeatGuard], a
    ld [rCellActionStepDelayTimer], a
    ld [rCellActionStepSequenceCursor], a
    ld [rCellActionStepSequenceState], a
    ld [rCellEffectTargetColumn], a
    ld [rCellEffectTargetRow], a
    ld [rPendingCellEffectCode], a
    ld [rPendingCellEffectDelay], a
    ld a, $01
    ld [rHintCursorAnimationColumnThreshold], a
    ld [rHintCursorAnimationRowThreshold], a
    call GetSubtractiveRNGStateByte
    sla a
    add $b4
    ld [rHintCursorSweepAdvanceDelayLow], a
    ld a, $00
    adc $00
    ld [rHintCursorSweepAdvanceDelayHigh], a
    ld a, $05
    ld [rCountdownSfxTimer], a
    ret


GS0A_StatePhase_01_HintPopupSelection::
    call TickMarioBlinkAnimation
    ld a, [rHintPopupSelection]
    add $3a
    ld bc, $2848
    call CopyOAMSpriteById
    ld a, [rInputButtonsPressed]
    and $f0
    jr z, .HandleHintPopupConfirmOrCancelInput

    ld c, $0a
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, [rHintPopupSelection]
    xor $01
    ld [rHintPopupSelection], a
    ret


.HandleHintPopupConfirmOrCancelInput:
    ld a, [rInputButtonsPressed]
    and $09
    jr nz, .PlayHintPopupConfirmSfx

    ld a, [rInputButtonsPressed]
    and $02
    ret z

    call ClearShadowOAMBufferFromCursor
    rst RST_08
    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    call ClearShadowOAMBuffer
    ld a, $01
    ld [rHintPopupSelection], a
    add $3a
    ld bc, $2848
    call CopyOAMSpriteById
    ld bc, $001e
    call DelayFramesByBC
    jr .ApplyHintPopupSelectionAndAdvancePhase

.PlayHintPopupConfirmSfx:
    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher

.ApplyHintPopupSelectionAndAdvancePhase:
    ld a, [rHintPopupSelection]
    and a
    jr nz, .AdvanceWithHintEnabledPath

    ld hl, rStatePhase_Current
    inc [hl]
    jr .RefreshClueDisplayAfterHintPopupSelection

.AdvanceWithHintEnabledPath:
    call RecomputePuzzleCellBitSetCounters
    ld hl, rStatePhase_Current
    inc [hl]
    ld hl, rStatePhase_Current
    inc [hl]

.RefreshClueDisplayAfterHintPopupSelection:
    call ClearShadowOAMBuffer
    rst RST_08
    call DrawClueNumbersFromRunLengthBuffers
    ld a, [rPuzzleGridWidth]
    cp $05
    jr nz, .LoadClueTileDataForNon5x5

    ld a, $07
    ld hl, $4500
    ld de, $8500
    ld bc, $0200
    call BankedTileCopyVRAMSafe
    ret


.LoadClueTileDataForNon5x5:
    cp $0a
    jr nz, .Load15x15ClueTileData

    ld a, $08
    ld hl, $4500
    ld de, $8500
    ld bc, $0200
    call BankedTileCopyVRAMSafe
    ret


.Load15x15ClueTileData:
    ld a, $06
    ld hl, $4500
    ld de, $8500
    ld bc, $0200
    call BankedTileCopyVRAMSafe
    ret


GS0A_StatePhase_02_HintCursorSweepAndApplySelection::
    ld a, [rHintCursorAnimationColumnThreshold]
    cp $3f
    jr z, .ProcessHintCursorRowSweep

    ld c, a
    ld a, [rVBlankFrameCounter]
    and c
    jr nz, .ProcessHintCursorRowSweep

    ld a, c
    cp $01
    jr z, .AdvanceHintCursorColumnUntilClueFound

    scf
    ld hl, rHintCursorAnimationColumnThreshold
    rl [hl]

.AdvanceHintCursorColumnUntilClueFound:
    ld a, [rPuzzleCursorColumn]
    inc a
    ld hl, rPuzzleGridWidth
    cp [hl]
    jr nz, .StoreHintCursorColumnAndCheckClue

    xor a

.StoreHintCursorColumnAndCheckClue:
    ld [rPuzzleCursorColumn], a
    ld c, a
    sla a
    add c
    sla a
    ld c, a
    ld b, $00
    ld hl, rClueRunLengthVerticalBufferField5Base
    add hl, bc
    ld a, [hl]
    and a
    jr z, .AdvanceHintCursorColumnUntilClueFound

    call TickCountdownAndEmitSfx

.ProcessHintCursorRowSweep:
    ld a, [rHintCursorAnimationRowThreshold]
    cp $3f
    jr z, .DrawHintCursorAndCheckSweepCompletion

    ld c, a
    ld a, [rVBlankFrameCounter]
    and c
    jr nz, .DrawHintCursorAndCheckSweepCompletion

    ld a, c
    cp $01
    jr z, .AdvanceHintCursorRowUntilClueFound

    scf
    ld hl, rHintCursorAnimationRowThreshold
    rl [hl]

.AdvanceHintCursorRowUntilClueFound:
    ld a, [rPuzzleAndMenuCursorRow]
    inc a
    ld hl, rPuzzleGridHeight
    cp [hl]
    jr nz, .StoreHintCursorRowAndCheckClue

    xor a

.StoreHintCursorRowAndCheckClue:
    ld [rPuzzleAndMenuCursorRow], a
    ld c, a
    sla a
    add c
    sla a
    ld c, a
    ld b, $00
    ld hl, rClueRunLengthHorizontalBufferField5Base
    add hl, bc
    ld a, [hl]
    and a
    jr z, .AdvanceHintCursorRowUntilClueFound

    call TickCountdownAndEmitSfx

.DrawHintCursorAndCheckSweepCompletion:
    call DrawPuzzleCursorSprites
    call TickMarioBlinkAnimation
    ld a, [rHintCursorAnimationColumnThreshold]
    ld c, a
    ld a, [rHintCursorAnimationRowThreshold]
    and c
    cp $3f
    jr nz, .HandleHintSweepAdvanceGate

    call ApplyHintSelectionToRowAndColumn
    call RecomputePuzzleCellBitSetCounters
    ld hl, rStatePhase_Current
    inc [hl]
    ret


.HandleHintSweepAdvanceGate:
    ld a, [rHintCursorAnimationRowThreshold]
    cp $01
    ret nz

    ld hl, rHintCursorSweepAdvanceDelayHigh
    ld a, [hl-]
    or [hl]
    jr z, .AdvanceHintCursorColumnThresholdFromInitial

    ld a, [hl]
    sub $01
    ld [hl], a
    inc hl
    ld a, [hl]
    sbc $00
    ld [hl], a
    ld a, [rInputButtonsPressed]
    and $09
    ret z

.AdvanceHintCursorColumnThresholdFromInitial:
    ld a, [rHintCursorAnimationColumnThreshold]
    cp $01
    jr nz, .AdvanceHintCursorRowThresholdFromInitial

    scf
    rl a
    ld [rHintCursorAnimationColumnThreshold], a
    ld hl, rHintCursorSweepAdvanceDelayLow
    call GetSubtractiveRNGStateByte
    sla a
    add $78
    ld [hl+], a
    ld a, $00
    adc $00
    ld [hl], a
    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    ret


.AdvanceHintCursorRowThresholdFromInitial:
    ld a, [rHintCursorAnimationRowThreshold]
    cp $01
    ret nz

    scf
    rl a
    ld [rHintCursorAnimationRowThreshold], a
    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    ret


TickCountdownAndEmitSfx::
    ld a, [rCountdownSfxTimer]
    dec a
    ld [rCountdownSfxTimer], a
    ret nz

    ld a, $05
    ld [rCountdownSfxTimer], a
    ld c, $02
    ld a, $02
    call CallSoundCommandDispatcher
    ret


GS0A_StatePhase_03_PuzzleGameplayLoop::
    call UpdatePuzzleCursorFromDirectionalInput
    call DrawPuzzleCursorSpritesAndTickStepSequence
    call TickMarioBlinkAnimation
    call TickLowTimerMarioSweatIndicator
    call ApplyLowTimerMarioFaceTilesOnce
    call UpdatePuzzleTimerCountdown
    call UpdatePuzzleTimerDisplayState
    call ProcessPuzzleCellActionInput
    call TickPendingCellActionEffect
    call FinalizePuzzleClearAndSetPostClearFlowFlag
    call TickPuzzleTimerCompletionState
    ld a, [rInputButtonsPressed]
    and $08
    jr z, .HandlePostClearFlowOrCheckTimeout

    ld c, $10
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, $05
    ld [rStatePhase_Current], a
    ret


.HandlePostClearFlowOrCheckTimeout:
    ld a, [rPuzzlePostClearFlowFlag]
    and a
    jr z, .HandleTimerCompletionGameOverFlow

    call LoadPicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse
    call UpdateSelectedPicrossCoursePuzzleClearStatusAndTimes
    call RefreshSaveValidationChecksumsAndMirrors
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $09
    ld a, $01
    call CallSoundCommandDispatcher
    call ClearShadowOAMBuffer
    call RedrawPuzzleBoard

.WaitForPostClearInputAndAdvance:
    rst RST_08
    ld a, [rInputButtonsPressed]
    and $09
    jr z, .WaitForPostClearInputAndAdvance

    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    call RedrawPostClearSolvedCellsByGridSize
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call DrawPuzzleNameFromPointerTable
    ld bc, $0004
    call DelayFramesByBC
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $12
    ld a, $01
    call CallSoundCommandDispatcher
    ld hl, rStatePhase_Current
    inc [hl]
    ret


.HandleTimerCompletionGameOverFlow:
    ld a, [rPuzzleTimerCompletionState]
    and a
    ret z

    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $08
    ld a, $01
    call CallSoundCommandDispatcher
    call ClearShadowOAMBuffer
    call LoadGameOverMessageTileData
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS0A_StatePhase_04_ConfirmExitAndReturnToPicrossCoursePuzzleSelect::
    ld a, [rInputButtonsPressed]
    and $09
    ret z

    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    ld b, $03
    ld hl, $469f
    ld c, $00
    ld de, $0013
    call PlayScreenTransitionFadeOut
    call DisableLCDAtVBlank
    ld hl, rLCDCInterruptControlFlags
    res 6, [hl]
    ld hl, rIE
    res 1, [hl]
    xor a
    ld [rLCDCInterruptDispatchIndex], a
    ld [rVBlankLCDCBit4ForceFlag], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    ld a, $04
    ld [rStatePhase_Current], a
    ld a, $04
    ld [rGameState_Current], a
    ret


GS0A_StatePhase_05_PauseMenuInitAndMaskClues::
    call ClearShadowOAMBuffer
    rst RST_08
    xor a
    ld [rGS08_PauseMenuMainSelection], a
    ld a, $01
    ld [rGS08_PauseMenuSavePromptSelection], a
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    add [hl]
    ld c, a
    ld hl, rSaveSlot1PicrossKinokoBGMSelectionIndex
    add hl, bc
    ld a, [hl]
    ld [rGS08_PauseMenuBGMSubmenuSelection], a
    ld a, $01
    ld [rGS08_PauseMenuGiveUpPromptSelection], a
    ld a, $06
    ld hl, $7a00
    ld de, $8500
    ld bc, $0300
    call BankedTileCopyVRAMSafe
    call MaskClueDigitSlotsFromRunLengthBuffers
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS0A_StatePhase_06_PauseMenuIdle::
    ld b, $02
    ld hl, $4632
    call SwitchBankToBAndJumpToHL
    ld a, [rInputButtonsPressed]
    bit 0, a
    jr z, .HandlePauseMenuCloseInput

    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, [rGS08_PauseMenuMainSelection]
    ld c, a
    ld b, $00
    ld hl, GS0A_PauseMenuSelectionNextPhaseTable
    add hl, bc
    ld a, [hl]
    ld [rStatePhase_Current], a
    ret


.HandlePauseMenuCloseInput:
    bit 3, a
    ret z

    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, $0a
    ld [rStatePhase_Current], a
    ret


GS0A_PauseMenuSelectionNextPhaseTable::
    db $07, $09, $08

GS0A_StatePhase_07_PauseMenuSavePrompt::
    ld b, $02
    ld hl, $4672
    call SwitchBankToBAndJumpToHL
    ld a, [rInputButtonsPressed]
    and $01
    ret z

    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, [rGS08_PauseMenuSavePromptSelection]
    and a
    jr z, .HandlePauseMenuSavePromptConfirmAndBeginExitFlow

    ld a, $06
    ld [rStatePhase_Current], a
    ret


.HandlePauseMenuSavePromptConfirmAndBeginExitFlow:
    call SaveCurrentPuzzleProgressToSaveData
    ld a, $02
    ld [rContinueSavedPuzzlePromptRouteMode], a
    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    ld bc, $003c
    call DelayFramesByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    ld b, $03
    ld hl, $469f
    ld c, $00
    ld de, $0013
    call PlayScreenTransitionFadeOut
    call DisableLCDAtVBlank
    ld hl, rLCDCInterruptControlFlags
    res 6, [hl]
    ld hl, rIE
    res 1, [hl]
    xor a
    ld [rLCDCInterruptDispatchIndex], a
    ld [rVBlankLCDCBit4ForceFlag], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    add [hl]
    ld c, a
    ld hl, rSaveSlot1PicrossKinokoBGMSelectionIndex
    add hl, bc
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]
    ld [hl], a
    ld a, $04
    ld [rStatePhase_Current], a
    ld a, $00
    ld [rGameState_Current], a
    jp RefreshSaveValidationChecksumsAndMirrors


GS0A_StatePhase_08_PauseMenuBGMSubmenu::
    ld b, $02
    ld hl, $46b2
    call SwitchBankToBAndJumpToHL
    ld a, [rInputButtonsPressed]
    and $01
    ret z

    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, $06
    ld [rStatePhase_Current], a
    ret


GS0A_StatePhase_09_PauseMenuGiveUpPrompt::
    ld b, $02
    ld hl, $470f
    call SwitchBankToBAndJumpToHL
    ld a, [rInputButtonsPressed]
    and $01
    ret z

    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, [rGS08_PauseMenuGiveUpPromptSelection]
    and a
    jr z, .HandlePauseMenuGiveUpConfirmAndStartGameOverFlow

    ld a, $06
    ld [rStatePhase_Current], a
    ret


.HandlePauseMenuGiveUpConfirmAndStartGameOverFlow:
    ld a, $01
    ld [rPuzzleTimerCompletionState], a
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $08
    ld a, $01
    call CallSoundCommandDispatcher
    call ClearShadowOAMBuffer
    call LoadGameOverMessageTileData
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    add [hl]
    ld c, a
    ld hl, rSaveSlot1PicrossKinokoBGMSelectionIndex
    add hl, bc
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]
    ld [hl], a
    ld a, $04
    ld [rStatePhase_Current], a
    xor a
    ld [rContinueSavedPuzzlePromptRouteMode], a
    jp RefreshSaveValidationChecksumsAndMirrors


GS0A_StatePhase_0a_ClosePauseMenuAndResumeGameplay::
    call ClearShadowOAMBuffer
    rst RST_08
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    add [hl]
    ld c, a
    ld hl, rSaveSlot1PicrossKinokoBGMSelectionIndex
    add hl, bc
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]
    ld [hl], a
    ld a, $06
    ld hl, $4500
    ld de, $8500
    ld bc, $0300
    call BankedTileCopyVRAMSafe
    call DrawClueNumbersFromRunLengthBuffers
    call RenderPuzzleTimerDigits
    ld a, $03
    ld [rStatePhase_Current], a
    xor a
    ld [rContinueSavedPuzzlePromptRouteMode], a
    jp RefreshSaveValidationChecksumsAndMirrors


BuildClueRunLengthBuffers::
    call BuildHorizontalClueRunLengthBuffer
    call BuildVerticalClueRunLengthBuffer
    ret


BuildHorizontalClueRunLengthBuffer::
    ld hl, rPuzzleCellStateBufferEnd
    ld de, rClueRunLengthHorizontalBufferBuildBase
    ld c, $10

.HorizontalRunLength_InitLine:
    push de
    xor a
    ld b, $06

.HorizontalRunLength_ClearSixSlotsLoop:
    inc de
    ld [de], a
    dec b
    jr nz, .HorizontalRunLength_ClearSixSlotsLoop

    ld b, $10

.HorizontalRunLength_ScanBitsLoop:
    bit 0, [hl]
    jr z, .HorizontalRunLength_AdvanceBitLoop

    xor a

.HorizontalRunLength_CountFilledRunLoop:
    inc a
    dec hl
    dec b
    jr z, .HorizontalRunLength_StoreTerminalRun

    bit 0, [hl]
    jr nz, .HorizontalRunLength_CountFilledRunLoop

    ld [de], a
    dec de

.HorizontalRunLength_AdvanceBitLoop:
    dec hl
    dec b
    jr nz, .HorizontalRunLength_ScanBitsLoop

    jr .HorizontalRunLength_NextLine

.HorizontalRunLength_StoreTerminalRun:
    ld [de], a

.HorizontalRunLength_NextLine:
    pop de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec c
    jr nz, .HorizontalRunLength_InitLine

    ret


BuildVerticalClueRunLengthBuffer::
    ld hl, rPuzzleCellStateBufferEnd
    ld de, rClueRunLengthVerticalBufferBuildBase
    ld c, $10

.VerticalRunLength_InitLine:
    push de
    xor a
    ld b, $06

.VerticalRunLength_ClearSixSlotsLoop:
    inc de
    ld [de], a
    dec b
    jr nz, .VerticalRunLength_ClearSixSlotsLoop

    ld b, $10

.VerticalRunLength_ScanBitsLoop:
    bit 0, [hl]
    jr z, .VerticalRunLength_AdvanceBitLoop

    xor a

.VerticalRunLength_CountFilledRunLoop:
    inc a
    push af
    ld a, l
    sub $10
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    pop af
    dec b
    jr z, .VerticalRunLength_StoreTerminalRun

    bit 0, [hl]
    jr nz, .VerticalRunLength_CountFilledRunLoop

    ld [de], a
    dec de

.VerticalRunLength_AdvanceBitLoop:
    ld a, l
    sub $10
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    dec b
    jr nz, .VerticalRunLength_ScanBitsLoop

    jr .VerticalRunLength_NextLine

.VerticalRunLength_StoreTerminalRun:
    ld [de], a

.VerticalRunLength_NextLine:
    ld a, l
    add $ff
    ld l, a
    ld a, h
    adc $00
    ld h, a
    pop de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec c
    jr nz, .VerticalRunLength_InitLine

    ret


DrawClueNumbersFromRunLengthBuffers::
    call DrawClueNumbersHorizontalPass
    call DrawClueNumbersVerticalPass
    ret


DrawClueNumbersHorizontalPass::
    ld hl, rClueRunLengthHorizontalBufferStart
    ld e, $00
    ld b, $32
    ld a, [rPuzzleGridHeight]

.HorizontalPass_RowLoop:
    push af
    ld c, $09

.HorizontalPass_ColumnLoop:
    ld a, [hl+]
    and a
    jr z, .HorizontalPass_NextColumn

    call PrepareBGTileCopyForClueDigit

.HorizontalPass_NextColumn:
    ld a, c
    add $07
    ld c, a
    cp $2c
    jr nz, .HorizontalPass_ColumnLoop

    ld a, [hl+]
    call PrepareBGTileCopyForClueDigit
    ld a, e
    xor $ff
    ld e, a
    ld a, b
    add $06
    ld b, a
    pop af
    dec a
    jr nz, .HorizontalPass_RowLoop

    ret


DrawClueNumbersVerticalPass::
    ld hl, rClueRunLengthVerticalBufferStart
    ld e, $00
    ld c, $3a
    ld a, [rPuzzleGridWidth]

.VerticalPass_ColumnLoop:
    push af
    ld b, $08
    ld a, [hl+]

.VerticalPass_RowLoop:
    ld a, [hl+]
    and a
    jr z, .VerticalPass_NextRow

    call PrepareBGTileCopyForClueDigit

.VerticalPass_NextRow:
    ld a, b
    add $07
    ld b, a
    cp $24
    jr nz, .VerticalPass_RowLoop

    ld a, [hl+]
    call PrepareBGTileCopyForClueDigit
    ld a, e
    xor $ff
    ld e, a
    ld a, c
    add $06
    ld c, a
    pop af
    dec a
    jr nz, .VerticalPass_ColumnLoop

    ret


PrepareBGTileCopyForClueDigit::
    push bc
    push de
    push hl
    push af
    ld a, c
    ld [rBGTileCopySourceX], a
    add $05
    ld [rBGTileCopyDestX], a
    ld a, b
    ld [rBGTileCopySourceY], a
    add $05
    ld [rBGTileCopyDestY], a
    pop af
    sla a
    ld c, a
    ld b, $00
    ld a, e
    and a
    jr nz, .UseGrayBGClueDigitSourceTable

    ld hl, ClueDigitTileSourceTableWhiteBG
    add hl, bc
    ld a, [hl+]
    ld [rBGTileCopyBankAddressLow], a
    ld a, [hl+]
    ld [rBGTileCopyBankAddressHigh], a
    jr .ApplyClueDigitTileCopy

.UseGrayBGClueDigitSourceTable:
    ld hl, ClueDigitTileSourceTableGrayBG
    add hl, bc
    ld a, [hl+]
    ld [rBGTileCopyBankAddressLow], a
    ld a, [hl+]
    ld [rBGTileCopyBankAddressHigh], a

.ApplyClueDigitTileCopy:
    ld a, $06
    ld [rBGTileCopyBank], a
    call PrepareBGTileCopy
    pop hl
    pop de
    pop bc
    ret


ClueDigitTileSourceTableWhiteBG::
    db $f0, $59
    db $00, $59
    db $10, $59
    db $20, $59
    db $30, $59
    db $40, $59
    db $50, $59
    db $60, $59
    db $70, $59
    db $80, $59
    db $90, $59
    db $a0, $59
    db $b0, $59
    db $c0, $59
    db $d0, $59
    db $e0, $59

ClueDigitTileSourceTableGrayBG::
    db $f0, $5a
    db $00, $5a
    db $10, $5a
    db $20, $5a
    db $30, $5a
    db $40, $5a
    db $50, $5a
    db $60, $5a
    db $70, $5a
    db $80, $5a
    db $90, $5a
    db $a0, $5a
    db $b0, $5a
    db $c0, $5a
    db $d0, $5a
    db $e0, $5a

MaskClueDigitSlotsFromRunLengthBuffers::
    call MaskHorizontalClueDigitSlotsFromRunLengthBuffer
    call MaskVerticalClueDigitSlotsFromRunLengthBuffer
    ret


MaskHorizontalClueDigitSlotsFromRunLengthBuffer::
    ld hl, rClueRunLengthHorizontalBufferStart
    ld e, $00
    ld b, $32
    ld a, [rPuzzleGridHeight]

.HorizontalMask_RowLoop:
    push af
    ld c, $09

.HorizontalMask_ColumnLoop:
    ld a, [hl+]
    and a
    jr z, .HorizontalMask_NextColumn

    call PrepareBGTileCopyForMaskedClueSlot

.HorizontalMask_NextColumn:
    ld a, c
    add $07
    ld c, a
    cp $2c
    jr nz, .HorizontalMask_ColumnLoop

    ld a, [hl+]
    call PrepareBGTileCopyForMaskedClueSlot
    ld a, e
    xor $ff
    ld e, a
    ld a, b
    add $06
    ld b, a
    pop af
    dec a
    jr nz, .HorizontalMask_RowLoop

    ret


MaskVerticalClueDigitSlotsFromRunLengthBuffer::
    ld hl, rClueRunLengthVerticalBufferStart
    ld e, $00
    ld c, $3a
    ld a, [rPuzzleGridWidth]

.VerticalMask_ColumnLoop:
    push af
    ld b, $08
    ld a, [hl+]

.VerticalMask_RowLoop:
    ld a, [hl+]
    and a
    jr z, .VerticalMask_NextRow

    call PrepareBGTileCopyForMaskedClueSlot

.VerticalMask_NextRow:
    ld a, b
    add $07
    ld b, a
    cp $24
    jr nz, .VerticalMask_RowLoop

    ld a, [hl+]
    call PrepareBGTileCopyForMaskedClueSlot
    ld a, e
    xor $ff
    ld e, a
    ld a, c
    add $06
    ld c, a
    pop af
    dec a
    jr nz, .VerticalMask_ColumnLoop

    ret


PrepareBGTileCopyForMaskedClueSlot::
    push bc
    push de
    push hl
    ld a, c
    ld [rBGTileCopySourceX], a
    add $05
    ld [rBGTileCopyDestX], a
    ld a, b
    ld [rBGTileCopySourceY], a
    add $05
    ld [rBGTileCopyDestY], a
    ld a, e
    and a
    jr nz, .UseGrayBGMaskedClueTileSource

    ld a, $e0
    ld [rBGTileCopyBankAddressLow], a
    ld a, $58
    ld [rBGTileCopyBankAddressHigh], a
    jr .ApplyMaskedClueTileCopy

.UseGrayBGMaskedClueTileSource:
    ld a, $f0
    ld [rBGTileCopyBankAddressLow], a
    ld a, $58
    ld [rBGTileCopyBankAddressHigh], a

.ApplyMaskedClueTileCopy:
    ld a, $06
    ld [rBGTileCopyBank], a
    call PrepareBGTileCopy
    pop hl
    pop de
    pop bc
    ret


DrawPuzzleCursorSpritesAndTickStepSequence::
    ld a, [rPuzzleCursorColumn]
    ld e, a
    sla a
    add e
    sla a
    ld b, a
    ld a, [rPuzzleAndMenuCursorRow]
    ld e, a
    sla a
    add e
    sla a
    ld c, a
    push bc
    ld a, b
    add $3a
    ld b, a
    ld c, $00
    ld a, [rVBlankFrameCounter]
    srl a
    srl a
    srl a
    and $01
    add $03
    call CopyOAMSpriteById
    pop bc
    push bc
    ld b, $00
    ld a, c
    add $32
    ld c, a
    ld a, [rVBlankFrameCounter]
    srl a
    srl a
    srl a
    and $01
    add $05
    call CopyOAMSpriteById
    pop bc
    jp TickCellActionStepSequenceAndEmitSprite


DrawPuzzleCursorSprites::
    ld a, [rPuzzleCursorColumn]
    ld e, a
    sla a
    add e
    sla a
    ld b, a
    ld a, [rPuzzleAndMenuCursorRow]
    ld e, a
    sla a
    add e
    sla a
    ld c, a
    push bc
    ld a, b
    add $3a
    ld b, a
    ld c, $00
    ld a, [rVBlankFrameCounter]
    srl a
    srl a
    srl a
    and $01
    add $03
    call CopyOAMSpriteById
    pop bc
    push bc
    ld b, $00
    ld a, c
    add $32
    ld c, a
    ld a, [rVBlankFrameCounter]
    srl a
    srl a
    srl a
    and $01
    add $05
    call CopyOAMSpriteById
    pop bc
    ret


UpdatePuzzleCursorFromDirectionalInput::
    ld a, [rInputButtonsPressedOrRepeated]
    and $f0
    ret z

    ld a, [rInputButtonsHeld]
    and $03
    jr nz, .CheckLeft

    ld c, $0b
    ld a, $02
    call CallSoundCommandDispatcher

.CheckLeft:
    ld hl, rInputButtonsPressedOrRepeated
    bit 5, [hl]
    jr z, .CheckRight

    ld a, [rPuzzleCursorColumn]
    and a
    jr z, .CheckRight

    dec a
    ld [rPuzzleCursorColumn], a

.CheckRight:
    bit 4, [hl]
    jr z, .CheckUp

    ld a, [rPuzzleGridWidth]
    ld c, a
    ld a, [rPuzzleCursorColumn]
    inc a
    cp c
    jr z, .CheckUp

    ld [rPuzzleCursorColumn], a

.CheckUp:
    bit 6, [hl]
    jr z, .CheckDown

    ld a, [rPuzzleAndMenuCursorRow]
    and a
    jr z, .CheckDown

    dec a
    ld [rPuzzleAndMenuCursorRow], a

.CheckDown:
    bit 7, [hl]
    jr z, .Return

    ld a, [rPuzzleGridHeight]
    ld c, a
    ld a, [rPuzzleAndMenuCursorRow]
    inc a
    cp c
    jr z, .Return

    ld [rPuzzleAndMenuCursorRow], a

.Return:
    ret


ProcessPuzzleCellActionInput::
    ld a, [rInputButtonsHeld]
    and $01
    jr z, .ClearActionRepeatState

    ld a, [rInputButtonsPressedOrRepeated]
    and $f0
    jr z, .LoadCursorCellAndTileState

.ClearActionRepeatState:
    xor a
    ld [rPuzzleActionRepeatGuard], a

.LoadCursorCellAndTileState:
    ld a, [rPuzzleAndMenuCursorRow]
    sla a
    sla a
    sla a
    sla a
    ld hl, rPuzzleCursorColumn
    add [hl]
    ld c, a
    ld b, $00
    ld hl, rPuzzleCellStateBufferStart
    add hl, bc
    push hl
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1PuzzleActionRuleIndex_Unused
    add hl, bc
    ld a, [hl]
    pop hl
    and a
    jp z, ProcessPuzzleCellActionInput_HandleFillActionInput

    dec a
    jp z, ProcessPuzzleCellActionInput_HandleFillActionInput

    ret


ProcessPuzzleCellActionInput_HandleFillActionInput::
    ld a, [rInputButtonsHeld]
    and $01
    jr z, .HandleMarkXActionInput

    ld a, [rInputButtonsPressed]
    and $01
    jr z, .ApplyPendingFillAction

    ld a, [hl]
    and $06
    cp $02
    jr z, .ClearPendingFillAction

    ld a, $01
    ld [rPuzzleCellPendingActionMode], a
    jr .ApplyPendingFillAction

.ClearPendingFillAction:
    xor a
    ld [rPuzzleCellPendingActionMode], a

.ApplyPendingFillAction:
    ld a, [rPuzzleCellPendingActionMode]
    and a
    jp z, ProcessPuzzleCellActionInput_ClearCellState

    jp ProcessPuzzleCellActionInput_ApplyFillAction


.HandleMarkXActionInput:
    ld a, [rInputButtonsHeld]
    and $02
    ret z

    ld a, [rInputButtonsPressed]
    and $02
    jr z, .ApplyPendingMarkXAction

    ld a, [hl]
    and $06
    cp $04
    jr z, .ClearPendingMarkXAction

    ld a, $02
    ld [rPuzzleCellPendingActionMode], a
    jr .ApplyPendingMarkXAction

.ClearPendingMarkXAction:
    xor a
    ld [rPuzzleCellPendingActionMode], a

.ApplyPendingMarkXAction:
    ld a, [rPuzzleCellPendingActionMode]
    and a
    jp z, ProcessPuzzleCellActionInput_ClearCellState

    jp ProcessPuzzleCellActionInput_ApplyMarkXAction


    ld a, [rInputButtonsHeld]
    and $03
    cp $03
    jr z, .HandleDualHeldInputClearAction

    ld a, [rPuzzleCellPendingActionMode]
    and a
    jr z, .RouteHeldInputToFillOrMarkX

    ld a, [rInputButtonsHeld]
    and $03
    ret nz

    ld [rPuzzleCellPendingActionMode], a
    ret


.RouteHeldInputToFillOrMarkX:
    ld a, [rInputButtonsHeld]
    and $01
    jr z, .RouteHeldInputToMarkX

    jp ProcessPuzzleCellActionInput_ApplyFillAction


.RouteHeldInputToMarkX:
    ld a, [rInputButtonsHeld]
    and $02
    ret z

    jp ProcessPuzzleCellActionInput_ApplyMarkXAction


.HandleDualHeldInputClearAction:
    ld [rPuzzleCellPendingActionMode], a
    jp ProcessPuzzleCellActionInput_ClearCellState


ProcessPuzzleCellActionInput_ApplyFillAction::
    ld a, [hl]
    and $06
    cp $02
    ret z

    bit 0, [hl]
    jp nz, ApplyFillNoPenaltyPath

    ld a, [rGameState_Current]
    cp $09
    jp z, ApplyFillNoPenaltyPath

    ld a, [rPuzzleActionRepeatGuard]
    and a
    ret nz

    ld a, [rPuzzleCursorColumn]
    ld e, a
    sla a
    add e
    sla a
    add $32
    ld [rMistakePenaltyPopupSpriteX], a
    ld a, [rPuzzleAndMenuCursorRow]
    ld e, a
    sla a
    add e
    sla a
    add $2b
    ld [rMistakePenaltyPopupSpriteY], a
    ld a, [rPendingCellEffectDelay]
    and a
    jr z, .BeginMistakeFillEffectSequence

    ld a, [rPendingCellEffectCode]
    call PrepareCellEffectFrameCopy
    call DispatchCellEffectSfxByEffectCode

.BeginMistakeFillEffectSequence:
    ld a, [rPuzzleCursorColumn]
    ld [rCellEffectTargetColumn], a
    ld a, [rPuzzleAndMenuCursorRow]
    ld [rCellEffectTargetRow], a
    xor a
    ld [rPendingCellEffectDelay], a
    ld a, [hl]
    and $06
    srl a
    swap a
    ld [rPendingCellEffectCode], a
    ld a, $04
    ld [rCellActionStepSequenceState], a
    xor a
    ld [rCellActionStepSequenceCursor], a
    ld [rCellActionStepDelayTimer], a
    xor a
    ld [rPendingCellEffectDelay], a
    ld c, $09
    ld a, $02
    call CallSoundCommandDispatcher
    xor a

.RunMistakeFillAnimationLoop:
    push af
    call ClearShadowOAMBufferFromCursor
    rst RST_08
    call TickAndDrawMistakePenaltyPopupSprite
    call DrawPuzzleCursorSpritesAndTickStepSequence
    ld a, [rGameState_Current]
    cp $06
    jr z, .TickMistakeFillFrameDelay

    call UpdatePuzzleTimerCountdown

.TickMistakeFillFrameDelay:
    call TickMarioBlinkAnimation
    pop af
    push af
    cp $10
    jr nz, .CheckLateMistakeFillEffectTrigger

    ld a, $10
    call PrepareCellEffectFrameCopy
    call DispatchCellEffectSfxByEffectCode
    jr .AdvanceMistakeFillAnimationFrame

.CheckLateMistakeFillEffectTrigger:
    cp $54
    jr nz, .AdvanceMistakeFillAnimationFrame

    ld a, [rPendingCellEffectCode]
    call PrepareCellEffectFrameCopy
    ld a, $10
    call DispatchCellEffectSfxByEffectCode

.AdvanceMistakeFillAnimationFrame:
    pop af
    inc a
    cp $58
    jr nz, .RunMistakeFillAnimationLoop

    call ApplyPuzzleTimerMistakePenalty
    ld hl, rPuzzleActionRepeatGuard
    inc [hl]
    ret


ApplyFillNoPenaltyPath::
    bit 0, [hl]
    jr z, .QueueFillNoPenaltyEffects

    ld a, [rPuzzleBit0AndBit1ClearCellCounter]
    dec a
    ld [rPuzzleBit0AndBit1ClearCellCounter], a

.QueueFillNoPenaltyEffects:
    ld a, [rPuzzleBit1ClearCellCounter]
    dec a
    ld [rPuzzleBit1ClearCellCounter], a
    set 1, [hl]
    res 2, [hl]
    ld a, [rPendingCellEffectDelay]
    and a
    jr z, .BeginOrContinueNoPenaltyFillStepSequence

    ld a, [rPendingCellEffectCode]
    call PrepareCellEffectFrameCopy
    call DispatchCellEffectSfxByEffectCode

.BeginOrContinueNoPenaltyFillStepSequence:
    ld a, [rCellActionStepSequenceState]
    cp $01
    jr z, .TickNoPenaltyFillStepSequence

    cp $02
    jr z, .TickNoPenaltyFillStepSequence

    ld a, $01
    ld [rCellActionStepSequenceState], a
    xor a
    ld [rCellActionStepSequenceCursor], a
    ld [rCellActionStepDelayTimer], a
    ld a, $08
    ld [rPendingCellEffectDelay], a
    ld a, $10
    ld [rPendingCellEffectCode], a
    ld a, [rPuzzleCursorColumn]
    ld [rCellEffectTargetColumn], a
    ld a, [rPuzzleAndMenuCursorRow]
    ld [rCellEffectTargetRow], a
    ret


.TickNoPenaltyFillStepSequence:
    ld a, [rCellActionStepSequenceCursor]
    cp $0c
    jr c, .QueueNoPenaltyFillEffectFrame

    ld a, $02
    ld [rCellActionStepSequenceState], a
    xor a
    ld [rCellActionStepSequenceCursor], a
    ld [rCellActionStepDelayTimer], a

.QueueNoPenaltyFillEffectFrame:
    ld a, $07
    ld [rPendingCellEffectDelay], a
    ld a, $10
    ld [rPendingCellEffectCode], a
    ld a, [rPuzzleCursorColumn]
    ld [rCellEffectTargetColumn], a
    ld a, [rPuzzleAndMenuCursorRow]
    ld [rCellEffectTargetRow], a
    ret


ProcessPuzzleCellActionInput_ApplyMarkXAction::
    ld a, [hl]
    and $06
    cp $04
    ret z

    cp $02
    jr nz, .ApplyMarkXBits

    bit 0, [hl]
    jr z, .IncrementMarkedCellCounter

    ld a, [rPuzzleBit0AndBit1ClearCellCounter]
    inc a
    ld [rPuzzleBit0AndBit1ClearCellCounter], a

.IncrementMarkedCellCounter:
    ld a, [rPuzzleBit1ClearCellCounter]
    inc a
    ld [rPuzzleBit1ClearCellCounter], a

.ApplyMarkXBits:
    res 1, [hl]
    set 2, [hl]
    ld a, [rPendingCellEffectDelay]
    and a
    jr z, .BeginMarkXEffectSequence

    ld a, [rPendingCellEffectCode]
    call PrepareCellEffectFrameCopy
    call DispatchCellEffectSfxByEffectCode

.BeginMarkXEffectSequence:
    ld a, [rCellActionStepSequenceState]
    cp $03
    jr z, .TickMarkXEffectSequence

    ld a, $03
    ld [rCellActionStepSequenceState], a
    xor a
    ld [rCellActionStepSequenceCursor], a
    ld [rCellActionStepDelayTimer], a
    ld a, $06
    ld [rPendingCellEffectDelay], a
    ld a, $20
    ld [rPendingCellEffectCode], a
    ld a, [rPuzzleCursorColumn]
    ld [rCellEffectTargetColumn], a
    ld a, [rPuzzleAndMenuCursorRow]
    ld [rCellEffectTargetRow], a
    ret


.TickMarkXEffectSequence:
    ld a, [rCellActionStepSequenceCursor]
    cp $02
    jr c, .QueueMarkXEffectFrame

    xor a
    ld [rCellActionStepSequenceCursor], a
    ld [rCellActionStepDelayTimer], a

.QueueMarkXEffectFrame:
    ld a, $06
    ld [rPendingCellEffectDelay], a
    ld a, $20
    ld [rPendingCellEffectCode], a
    ld a, [rPuzzleCursorColumn]
    ld [rCellEffectTargetColumn], a
    ld a, [rPuzzleAndMenuCursorRow]
    ld [rCellEffectTargetRow], a
    ret


ProcessPuzzleCellActionInput_ClearCellState::
    ld a, [hl]
    and $06
    ret z

    cp $02
    jr nz, .ClearCellMarkBits

    bit 0, [hl]
    jr z, .IncrementClearedCellCounter

    ld a, [rPuzzleBit0AndBit1ClearCellCounter]
    inc a
    ld [rPuzzleBit0AndBit1ClearCellCounter], a

.IncrementClearedCellCounter:
    ld a, [rPuzzleBit1ClearCellCounter]
    inc a
    ld [rPuzzleBit1ClearCellCounter], a

.ClearCellMarkBits:
    res 1, [hl]
    res 2, [hl]
    ld a, [rPendingCellEffectDelay]
    and a
    jr z, .BeginClearCellEffectSequence

    ld a, [rPendingCellEffectCode]
    call PrepareCellEffectFrameCopy
    call DispatchCellEffectSfxByEffectCode

.BeginClearCellEffectSequence:
    ld a, [rCellActionStepSequenceState]
    cp $05
    jr z, .TickClearCellEffectSequence

    ld a, $05
    ld [rCellActionStepSequenceState], a
    xor a
    ld [rCellActionStepSequenceCursor], a
    ld [rCellActionStepDelayTimer], a
    ld a, $0c
    ld [rPendingCellEffectDelay], a
    ld a, $00
    ld [rPendingCellEffectCode], a
    ld a, [rPuzzleCursorColumn]
    ld [rCellEffectTargetColumn], a
    ld a, [rPuzzleAndMenuCursorRow]
    ld [rCellEffectTargetRow], a
    ret


.TickClearCellEffectSequence:
    ld a, [rCellActionStepSequenceCursor]
    cp $08
    jr c, .QueueClearCellEffectFrame

    xor a
    ld [rCellActionStepSequenceCursor], a
    ld [rCellActionStepDelayTimer], a

.QueueClearCellEffectFrame:
    ld a, $0c
    ld [rPendingCellEffectDelay], a
    ld a, $00
    ld [rPendingCellEffectCode], a
    ld a, [rPuzzleCursorColumn]
    ld [rCellEffectTargetColumn], a
    ld a, [rPuzzleAndMenuCursorRow]
    ld [rCellEffectTargetRow], a
    ret


TickPendingCellActionEffect::
    ld a, [rPendingCellEffectDelay]
    and a
    ret z

    dec a
    ld [rPendingCellEffectDelay], a
    ret nz

    ld a, [rPendingCellEffectCode]
    call PrepareCellEffectFrameCopy
    jp DispatchCellEffectSfxByEffectCode


DispatchCellEffectSfxByEffectCode::
    cp $10
    jr nz, .CheckClearCellEffectCode

    ld c, $05
    ld a, $02
    call CallSoundCommandDispatcher
    ret


.CheckClearCellEffectCode:
    cp $00
    jr nz, .PlayDefaultCellEffectSfx

    ld c, $07
    ld a, $02
    call CallSoundCommandDispatcher
    ret


.PlayDefaultCellEffectSfx:
    ld c, $0c
    ld a, $02
    call CallSoundCommandDispatcher
    ret


PrepareCellEffectFrameCopy::
    push af
    push bc
    push de
    push hl
    push af
    ld a, [rCellEffectFrameSourceBaseIndex]
    sla a
    ld c, a
    ld b, $00
    ld hl, CellEffectFrameSourceBaseAddressTable
    add hl, bc
    pop af
    add [hl]
    ld [rBGTileCopyBankAddressLow], a
    inc hl
    ld a, $00
    adc [hl]
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $06
    ld [rBGTileCopyBank], a
    ld a, [rCellEffectTargetColumn]
    ld e, a
    sla a
    add e
    sla a
    add $3b
    ld [rBGTileCopySourceX], a
    add $04
    ld [rBGTileCopyDestX], a
    ld a, [rCellEffectTargetRow]
    ld e, a
    sla a
    add e
    sla a
    add $33
    ld [rBGTileCopySourceY], a
    add $04
    ld [rBGTileCopyDestY], a
    call PrepareBGTileCopy
    pop hl
    pop de
    pop bc
    pop af
    ret


CellEffectFrameSourceBaseAddressTable::
    db $00, $58
    db $00, $6b
    db $30, $6b
    db $60, $6b
    db $90, $6b
    db $c0, $6b
    db $f0, $6b
    db $20, $6c
    db $50, $6c
    db $80, $6c
    db $b0, $6c
    db $e0, $6c
    db $10, $6d
    db $40, $6d
    db $70, $6d
    db $a0, $6d
    db $d0, $6d
    db $00, $6e
    db $30, $6e
    db $60, $6e
    db $90, $6e
    db $c0, $6e
    db $f0, $6e
    db $20, $6f
    db $50, $6f
    db $80, $6f
    db $b0, $6f

PrepareBGTileCopyFromCellEffectParams::
    push bc
    push de
    push hl
    ld [rBGTileCopyBankAddressLow], a
    ld a, $58
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $06
    ld [rBGTileCopyBank], a
    ld a, b
    ld [rBGTileCopySourceX], a
    add d
    ld [rBGTileCopyDestX], a
    ld a, c
    ld [rBGTileCopySourceY], a
    add e
    ld [rBGTileCopyDestY], a
    call PrepareBGTileCopy
    pop hl
    pop de
    pop bc
    ret


FinalizePuzzleClearAndSetPostClearFlowFlag::
    ld a, [rPuzzleBit1ClearCellCounter]
    ld hl, rPuzzleBit0AndBit1ClearCellCounter
    or [hl]
    ret nz

    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher

.WaitForMessageAndEffectsToSettle:
    call ClearShadowOAMBufferFromCursor
    rst RST_08
    xor a
    ld [rInputButtonsHeld], a
    ld [rInputButtonsPressed], a
    ld [rInputButtonsPressedOrRepeated], a
    call DrawPuzzleCursorSpritesAndTickStepSequence
    call TickMarioBlinkAnimation
    call TickPendingCellActionEffect
    ld a, [rCellActionStepSequenceState]
    and a
    jr nz, .WaitForMessageAndEffectsToSettle

    call ClearShadowOAMBuffer
    ld a, $ff
    ld [rPuzzlePostClearFlowFlag], a
    ret


RedrawPuzzleBoard::
    ld a, [rPuzzleGridWidth]
    cp $05
    jr nz, .Load10x10BoardTileData

    jr .RedrawBoardCells

.Load10x10BoardTileData:
    cp $0a
    jr nz, .Load15x15BoardTileData

    ld a, $08
    ld hl, $5a00
    ld de, $8800
    ld bc, $0200
    call BankedTileCopyVRAMSafe
    jr .RedrawBoardCells

.Load15x15BoardTileData:
    ld a, $06
    ld hl, $7200
    ld de, $8800
    ld bc, $0200
    call BankedTileCopyVRAMSafe

.RedrawBoardCells:
    ld hl, rPuzzleCellStateBufferStart
    ld c, $33
    ld e, $05
    ld a, [rPuzzleGridHeight]

.ProcessBoardRows:
    push af
    ld b, $3b
    ld d, $05
    ld a, [rPuzzleGridWidth]

.ProcessBoardCells:
    push af
    ld a, [hl+]
    and $01
    swap a
    call PrepareBGTileCopyFromCellEffectParams
    ld a, b
    add $06
    ld b, a
    pop af
    dec a
    cp $01
    jr nz, .AdvanceToNextRow

    dec d
    jr .ProcessBoardCells

.AdvanceToNextRow:
    and a
    jr nz, .ProcessBoardCells

    ld a, [rPuzzleGridWidth]
    sub $11
    xor $ff
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, c
    add $06
    ld c, a
    pop af
    dec a
    cp $01
    jr nz, .AdvanceToNextColumn

    dec e
    jr .ProcessBoardRows

.AdvanceToNextColumn:
    and a
    jr nz, .ProcessBoardRows

    ret


RedrawPostClearSolvedCellsByGridSize::
    ld a, [rPuzzleGridWidth]
    cp $05
    jp z, RedrawPostClearSolvedCells5x5

    cp $0a
    jp z, RedrawPostClearSolvedCells10x10

    jp RedrawPostClearSolvedCells15x15


RedrawPostClearSolvedCells5x5::
    call Load5x5PostClearBoardBaseTiles
    ld hl, rPuzzleCellStateBufferStart
    ld c, $3c
    ld e, $01

.Begin5x5SolvedCellRedrawRow:
    ld b, $44
    ld d, $01

.Scan5x5SolvedCellRedrawColumn:
    ld a, [hl+]
    and $01
    jr z, .Advance5x5SolvedCellRedrawColumnOrRow

    swap a
    call PrepareBGTileCopyFromCellEffectParams

.Advance5x5SolvedCellRedrawColumnOrRow:
    ld a, b
    add $02
    ld b, a
    cp $4e
    jr nz, .Scan5x5SolvedCellRedrawColumn

    push bc
    ld bc, $000b
    add hl, bc
    pop bc
    ld a, c
    add $02
    ld c, a
    cp $46
    jr nz, .Begin5x5SolvedCellRedrawRow

    ret


RedrawPostClearSolvedCells10x10::
    call Load10x10PostClearBoardBaseTiles
    ld hl, rPuzzleCellStateBufferStart
    ld c, $43
    ld e, $01

.Begin10x10SolvedCellRedrawRow:
    ld b, $4e
    ld d, $01

.Scan10x10SolvedCellRedrawColumn:
    ld a, [hl+]
    and $01
    jr z, .Advance10x10SolvedCellRedrawColumnOrRow

    swap a
    call PrepareBGTileCopyFromCellEffectParams

.Advance10x10SolvedCellRedrawColumnOrRow:
    ld a, b
    add $02
    ld b, a
    cp $62
    jr nz, .Scan10x10SolvedCellRedrawColumn

    push bc
    ld bc, $0006
    add hl, bc
    pop bc
    ld a, c
    add $02
    ld c, a
    cp $57
    jr nz, .Begin10x10SolvedCellRedrawRow

    ret


RedrawPostClearSolvedCells15x15::
    call Load15x15PostClearBoardBaseTiles
    ld hl, rPuzzleCellStateBufferStart
    ld c, $4d
    ld e, $01

.Begin15x15SolvedCellRedrawRow:
    ld b, $59
    ld d, $01

.Scan15x15SolvedCellRedrawColumn:
    ld a, [hl+]
    and $01
    jr z, .Advance15x15SolvedCellRedrawColumnOrRow

    swap a
    call PrepareBGTileCopyFromCellEffectParams

.Advance15x15SolvedCellRedrawColumnOrRow:
    ld a, b
    add $02
    ld b, a
    cp $77
    jr nz, .Scan15x15SolvedCellRedrawColumn

    inc hl
    ld a, c
    add $02
    ld c, a
    cp $6b
    jr nz, .Begin15x15SolvedCellRedrawRow

    ret


Load5x5PostClearBoardBaseTiles::
    ld hl, $6340
    ld c, $33

.Copy5x5PostClearBoardBaseTileRows:
    push bc
    push hl
    ld a, l
    ld [rBGTileCopyBankAddressLow], a
    ld a, h
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $07
    ld [rBGTileCopyBank], a
    ld a, $3b
    ld [rBGTileCopySourceX], a
    add $1c
    ld [rBGTileCopyDestX], a
    ld a, c
    ld [rBGTileCopySourceY], a
    add $0b
    ld [rBGTileCopyDestY], a
    call PrepareBGTileCopy
    pop hl
    pop bc
    ld de, $0108
    add hl, de
    bit 3, l
    jr nz, .Advance5x5PostClearBoardBaseTileRow

    ld de, $00f0
    add hl, de

.Advance5x5PostClearBoardBaseTileRow:
    ld a, c
    add $0c
    ld c, a
    cp $4b
    jr nz, .Copy5x5PostClearBoardBaseTileRows

    ld a, l
    ld [rBGTileCopyBankAddressLow], a
    ld a, h
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $07
    ld [rBGTileCopyBank], a
    ld a, $3b
    ld [rBGTileCopySourceX], a
    add $1c
    ld [rBGTileCopyDestX], a
    ld a, c
    ld [rBGTileCopySourceY], a
    add $04
    ld [rBGTileCopyDestY], a
    call PrepareBGTileCopy
    ret


    ret


Load10x10PostClearBoardBaseTiles::
    ld hl, $6000
    ld c, $33

.Copy10x10PostClearBoardBaseTileRows:
    push bc
    push hl
    ld a, l
    ld [rBGTileCopyBankAddressLow], a
    ld a, h
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $08
    ld [rBGTileCopyBank], a
    ld a, $3b
    ld [rBGTileCopySourceX], a
    add $3a
    ld [rBGTileCopyDestX], a
    ld a, c
    ld [rBGTileCopySourceY], a
    add $0b
    ld [rBGTileCopyDestY], a
    call PrepareBGTileCopy
    pop hl
    pop bc
    ld de, $0108
    add hl, de
    bit 3, l
    jr nz, .Advance10x10PostClearBoardBaseTileRow

    ld de, $00f0
    add hl, de

.Advance10x10PostClearBoardBaseTileRow:
    ld a, c
    add $0c
    ld c, a
    cp $63
    jr nz, .Copy10x10PostClearBoardBaseTileRows

    ld a, l
    ld [rBGTileCopyBankAddressLow], a
    ld a, h
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $08
    ld [rBGTileCopyBank], a
    ld a, $3b
    ld [rBGTileCopySourceX], a
    add $3a
    ld [rBGTileCopyDestX], a
    ld a, c
    ld [rBGTileCopySourceY], a
    add $0a
    ld [rBGTileCopyDestY], a
    call PrepareBGTileCopy
    ret


Load15x15PostClearBoardBaseTiles::
    ld hl, $5d00
    ld c, $33

.Copy15x15PostClearBoardBaseTileRows:
    push bc
    push hl
    ld a, l
    ld [rBGTileCopyBankAddressLow], a
    ld a, h
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $06
    ld [rBGTileCopyBank], a
    ld a, $3b
    ld [rBGTileCopySourceX], a
    add $58
    ld [rBGTileCopyDestX], a
    ld a, c
    ld [rBGTileCopySourceY], a
    add $0b
    ld [rBGTileCopyDestY], a
    call PrepareBGTileCopy
    pop hl
    pop bc
    ld de, $0108
    add hl, de
    bit 3, l
    jr nz, .Advance15x15PostClearBoardBaseTileRow

    ld de, $00f0
    add hl, de

.Advance15x15PostClearBoardBaseTileRow:
    ld a, c
    add $0c
    ld c, a
    cp $87
    jr nz, .Copy15x15PostClearBoardBaseTileRows

    ld a, l
    ld [rBGTileCopyBankAddressLow], a
    ld a, h
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $06
    ld [rBGTileCopyBank], a
    ld a, $3b
    ld [rBGTileCopySourceX], a
    add $58
    ld [rBGTileCopyDestX], a
    ld a, c
    ld [rBGTileCopySourceY], a
    add $04
    ld [rBGTileCopyDestY], a
    call PrepareBGTileCopy
    ret


RedrawBoardCellEffectFramesFromStateBuffer::
    ld hl, rPuzzleCellStateBufferStart
    ld c, $00

.RedrawBoardCellEffectFramesRowLoop:
    ld b, $00

.RedrawBoardCellEffectFramesColumnLoop:
    ld a, b
    ld [rCellEffectTargetColumn], a
    ld a, c
    ld [rCellEffectTargetRow], a
    ld a, [hl+]
    srl a
    swap a
    call PrepareCellEffectFrameCopy
    inc b
    ld a, [rPuzzleGridWidth]
    cp b
    jr nz, .RedrawBoardCellEffectFramesColumnLoop

    ld a, [rPuzzleGridWidth]
    sub $11
    xor $ff
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    inc c
    ld a, [rPuzzleGridHeight]
    cp c
    jr nz, .RedrawBoardCellEffectFramesRowLoop

    xor a
    ret


ApplyHintSelectionToRowAndColumn::
    ld a, [rPuzzleCursorColumn]
    ld c, a
    ld a, [rPuzzleAndMenuCursorRow]
    ld b, a
    ld e, c
    ld d, $00
    ld hl, rPuzzleCellStateBufferStart
    add hl, de
    push bc
    ld b, $00

.ApplyHintSelectionToColumnLoop:
    ld a, c
    ld [rCellEffectTargetColumn], a
    ld a, b
    ld [rCellEffectTargetRow], a
    ld a, [hl]
    and $01
    push af
    swap a
    jr nz, .CopyHintSelectionColumnCellFrame

    ld a, $20

.CopyHintSelectionColumnCellFrame:
    call PrepareCellEffectFrameCopy
    pop af
    jr z, .MarkHintSelectionColumnCellAsX

    set 1, [hl]
    res 2, [hl]
    jr .AdvanceHintSelectionColumnLoop

.MarkHintSelectionColumnCellAsX:
    res 1, [hl]
    set 2, [hl]

.AdvanceHintSelectionColumnLoop:
    ld de, $0010
    add hl, de
    inc b
    ld a, [rPuzzleGridHeight]
    cp b
    jr nz, .ApplyHintSelectionToColumnLoop

    pop bc
    ld e, b
    swap e
    ld d, $00
    ld hl, rPuzzleCellStateBufferStart
    add hl, de
    ld c, $00

.ApplyHintSelectionToRowLoop:
    ld a, c
    ld [rCellEffectTargetColumn], a
    ld a, b
    ld [rCellEffectTargetRow], a
    ld a, [hl]
    and $01
    push af
    swap a
    jr nz, .CopyHintSelectionRowCellFrame

    ld a, $20

.CopyHintSelectionRowCellFrame:
    call PrepareCellEffectFrameCopy
    pop af
    jr z, .MarkHintSelectionRowCellAsX

    set 1, [hl]
    res 2, [hl]
    jr .AdvanceHintSelectionRowLoop

.MarkHintSelectionRowCellAsX:
    res 1, [hl]
    set 2, [hl]

.AdvanceHintSelectionRowLoop:
    inc hl
    inc c
    ld a, [rPuzzleGridWidth]
    cp c
    jr nz, .ApplyHintSelectionToRowLoop

    ret


TickMarioBlinkAnimation::
    ld a, [rMarioBlinkAnimationDelay]
    and a
    jr nz, .TickBlinkFrameDelay

    ld a, [rMarioBlinkAnimationSequenceCursor]
    ld c, a
    ld b, $00

.FindNextBlinkFrameEntry:
    ld hl, MarioBlinkFrameDelayAndSpriteIdTable
    add hl, bc
    ld a, [hl+]
    and a
    jr nz, .LoadBlinkFrameEntry

    ld bc, $0000
    jr .FindNextBlinkFrameEntry

.LoadBlinkFrameEntry:
    ld [rMarioBlinkAnimationDelay], a
    ld a, [hl]
    ld [rMarioBlinkAnimationSpriteId], a
    inc c
    inc c
    ld a, c
    ld [rMarioBlinkAnimationSequenceCursor], a

.TickBlinkFrameDelay:
    ld hl, rMarioBlinkAnimationDelay
    dec [hl]
    ld a, [rMarioBlinkAnimationSpriteId]
    cp $ff
    ret z

    ld bc, $1810
    jp CopyOAMSpriteById


MarioBlinkFrameDelayAndSpriteIdTable::
    db $c0, $ff
    db $04, $00
    db $04, $01
    db $02, $00
    db $80, $ff
    db $03, $00
    db $05, $01
    db $02, $00
    db $03, $ff
    db $03, $00
    db $05, $01
    db $02, $00
    db $00

TickCellActionStepSequenceAndEmitSprite::
    ld a, [rCellActionStepDelayTimer]
    and a
    jr nz, .TickCellActionStepDelayAndEmitSprite

    ld a, [rCellActionStepSequenceState]
    ld c, a
    ld b, $00
    ld hl, CellActionStepSequenceStateOffsetTable
    add hl, bc
    ld c, [hl]
    add hl, bc
    ld a, [rCellActionStepSequenceCursor]
    ld c, a
    ld b, $00

.FindNextCellActionStepEntry:
    push hl
    add hl, bc
    ld a, [hl+]
    and a
    jr nz, .ProcessCellActionStepEntryOrStateAdvance

    ld bc, $0000
    pop hl
    jr .FindNextCellActionStepEntry

.ProcessCellActionStepEntryOrStateAdvance:
    cp $ff
    jr nz, .ApplyCellActionStepDelayAndSpriteId

    ld a, [rInputButtonsHeld]
    and $03
    jr z, .AdvanceToNextCellActionState

    pop hl
    ld a, $01
    ld [rCellActionStepDelayTimer], a
    jr .TickCellActionStepDelayAndEmitSprite

.AdvanceToNextCellActionState:
    ld a, [hl+]
    ld [rCellActionStepSequenceState], a
    xor a
    ld [rCellActionStepDelayTimer], a
    ld [rCellActionStepSequenceCursor], a
    pop hl
    jr TickCellActionStepSequenceAndEmitSprite

.ApplyCellActionStepDelayAndSpriteId:
    ld [rCellActionStepDelayTimer], a
    ld a, [hl]
    ld [rCellActionStepSequenceSpriteId], a
    inc c
    inc c
    ld a, c
    ld [rCellActionStepSequenceCursor], a
    pop hl

.TickCellActionStepDelayAndEmitSprite:
    ld hl, rCellActionStepDelayTimer
    dec [hl]
    ld a, [rCellActionStepSequenceSpriteId]
    cp $ff
    ret z

    push af
    ld a, [rPuzzleCursorColumn]
    ld e, a
    sla a
    add e
    sla a
    add $3a
    ld b, a
    ld a, [rPuzzleAndMenuCursorRow]
    ld e, a
    sla a
    add e
    sla a
    add $32
    ld c, a
    pop af
    call CopyOAMSpriteById
    ld a, [rCellActionStepSequenceState]
    cp $01
    jr z, .CheckCellActionStepSfxTrigger

    cp $02
    ret nz

.CheckCellActionStepSfxTrigger:
    ld a, [rCellActionStepSequenceCursor]
    cp $02
    ret nz

    ld a, [rCellActionStepDelayTimer]
    cp $02
    ret nz

    ld c, $06
    ld a, $02
    call CallSoundCommandDispatcher
    ret


CellActionStepSequenceStateOffsetTable::
    db $06, $0e, $31, $50, $57, $88

CellActionStepSequenceStream_ChisleIdle::
    db $04, $0b, $04, $0c, $04, $0d, $04, $0c, $00

CellActionStepSequenceStream_FillCell::
    db $01, $1e, $01, $0e, $01, $2a, $01, $0f, $01, $1f, $03, $10, $04, $11, $04, $12
    db $04, $13, $04, $14, $04, $15, $04, $16, $04, $17, $04, $18, $04, $19, $04, $1a
    db $04, $1b, $ff, $00

CellActionStepSequenceStream_FillCell_Short::
    db $01, $0e, $01, $2a, $01, $0f, $01, $1f, $03, $10, $04, $11, $04, $12, $04, $13
    db $04, $14, $04, $15, $04, $16, $04, $17, $04, $19, $04, $1a, $04, $1b, $ff, $00

CellActionStepSequenceStream_MarkX::
    db $03, $1c, $05, $1d, $04, $1e, $ff, $00

CellActionStepSequenceStream_FillWrongCell::
    db $04, $1e, $02, $0e, $02, $2a, $03, $0f, $02, $1f, $03, $10, $04, $11, $04, $12
    db $04, $13, $04, $14, $04, $15, $04, $16, $04, $17, $04, $18, $04, $19, $04, $1a
    db $04, $22, $04, $23, $04, $24, $04, $25, $04, $26, $04, $27, $04, $28, $04, $0e
    db $ff, $00

CellActionStepSequenceStream_ClearCell::
    db $04, $20, $07, $21, $04, $20, $07, $21, $04, $20, $ff, $00

UpdatePuzzleTimerDisplayState::
    ld a, [rPuzzleTimerWarningSfxGateFlag]
    and a
    ret nz

    ld a, $01
    ld [rPuzzleTimerWarningSfxGateFlag], a
    ld a, [rPuzzleTimerMinuteTens]
    and a
    ret nz

    ld a, [rPuzzleTimerMinuteOnes]
    cp $03
    jr z, .CheckThreeMinuteWarningWindow

    cp $02
    jr z, .CheckTwoMinuteWarningWindow

    cp $01
    jr z, .CheckOneMinuteWarningWindow

    and a
    jr z, .PlayLowTimeWarningSfx

    ret


.CheckThreeMinuteWarningWindow:
    ld a, [rPuzzleTimerSecondTens]
    ld hl, rPuzzleTimerSecondOnes
    or [hl]
    jr z, .CheckTwoMinuteWarningWindow

    ret


.CheckTwoMinuteWarningWindow:
    ld a, [rPuzzleTimerSecondTens]
    ld hl, rPuzzleTimerSecondOnes
    or [hl]
    jr z, .CheckOneMinuteWarningWindow

    ld a, [hl]
    and a
    jr z, .PlayLowTimeWarningSfx

    cp $05
    jr z, .PlayLowTimeWarningSfx

    ret


.CheckOneMinuteWarningWindow:
    ld a, [rPuzzleTimerSecondTens]
    ld hl, rPuzzleTimerSecondOnes
    or [hl]
    jr z, .PlayLowTimeWarningSfx

    bit 0, [hl]
    ret nz

.PlayLowTimeWarningSfx:
    ld c, $0d
    ld a, $02
    call CallSoundCommandDispatcher
    ret


UpdatePuzzleTimerCountdown::
    ld a, [rPuzzleTimerActive]
    cp $3c
    ret c

    xor a
    ld [rPuzzleTimerActive], a
    ld [rPuzzleTimerWarningSfxGateFlag], a
    ld a, [rGameState_Current]
    cp $09
    jr z, .TickTimeTrialTimerCountUp

    ld a, [rPuzzleTimerSecondOnes]
    ld hl, rPuzzleTimerSecondTens
    or [hl]
    ld hl, rPuzzleTimerMinuteOnes
    or [hl]
    ld hl, rPuzzleTimerMinuteTens
    or [hl]
    ret z

    ld a, [rPuzzleTimerSecondOnes]
    dec a
    cp $ff
    jr nz, .StoreSecondOnesAndRender_Down

    ld a, $09

.StoreSecondOnesAndRender_Down:
    ld [rPuzzleTimerSecondOnes], a
    push af
    ld bc, $2b27
    call RenderPuzzleTimerDigitTile
    pop af
    ret nz

    ld a, [rPuzzleTimerSecondTens]
    dec a
    cp $ff
    jr nz, .StoreSecondTensAndRender_Down

    ld a, $05

.StoreSecondTensAndRender_Down:
    ld [rPuzzleTimerSecondTens], a
    push af
    ld bc, $2327
    call RenderPuzzleTimerDigitTile
    pop af
    ret nz

    ld a, [rPuzzleTimerMinuteOnes]
    dec a
    cp $ff
    jr nz, .StoreMinuteOnesAndRender_Down

    ld a, $09

.StoreMinuteOnesAndRender_Down:
    ld [rPuzzleTimerMinuteOnes], a
    push af
    ld bc, $1527
    call RenderPuzzleTimerDigitTile
    pop af
    ret nz

    ld a, [rPuzzleTimerMinuteTens]
    dec a
    cp $ff
    jr nz, .StoreMinuteTensAndRender_Down

    xor a
    ld [rPuzzleTimerSecondOnes], a
    ld [rPuzzleTimerSecondTens], a
    ld [rPuzzleTimerMinuteOnes], a

.StoreMinuteTensAndRender_Down:
    ld [rPuzzleTimerMinuteTens], a
    push af
    ld bc, $0d27
    call RenderPuzzleTimerDigitTile
    pop af
    ret


.TickTimeTrialTimerCountUp:
    ld a, [rPuzzleTimerSecondOnes]
    cp $09
    jr nz, .IncrementSecondOnes_CountUp

    ld a, [rPuzzleTimerSecondTens]
    cp $05
    jr nz, .IncrementSecondOnes_CountUp

    ld a, [rPuzzleTimerMinuteOnes]
    cp $09
    jr nz, .IncrementSecondOnes_CountUp

    ld a, [rPuzzleTimerMinuteTens]
    cp $09
    jr nz, .IncrementSecondOnes_CountUp

    ret


.IncrementSecondOnes_CountUp:
    ld a, [rPuzzleTimerSecondOnes]
    inc a
    cp $0a
    jr nz, .StoreSecondOnesAndRender_Up

    xor a

.StoreSecondOnesAndRender_Up:
    ld [rPuzzleTimerSecondOnes], a
    push af
    ld bc, $2b27
    call RenderPuzzleTimerDigitTile
    pop af
    ret nz

    ld a, [rPuzzleTimerSecondTens]
    inc a
    cp $06
    jr nz, .StoreSecondTensAndRender_Up

    xor a

.StoreSecondTensAndRender_Up:
    ld [rPuzzleTimerSecondTens], a
    push af
    ld bc, $2327
    call RenderPuzzleTimerDigitTile
    pop af
    ret nz

    ld a, [rPuzzleTimerMinuteOnes]
    inc a
    cp $0a
    jr nz, .StoreMinuteOnesAndRender_Up

    xor a

.StoreMinuteOnesAndRender_Up:
    ld [rPuzzleTimerMinuteOnes], a
    push af
    ld bc, $1527
    call RenderPuzzleTimerDigitTile
    pop af
    ret nz

    ld a, [rPuzzleTimerMinuteTens]
    inc a
    cp $0a
    jr nz, .StoreMinuteTensAndRender_Up

    ld a, $05
    ld [rPuzzleTimerSecondTens], a
    ld a, $09
    ld [rPuzzleTimerSecondOnes], a
    ld [rPuzzleTimerMinuteOnes], a

.StoreMinuteTensAndRender_Up:
    ld [rPuzzleTimerMinuteTens], a
    push af
    ld bc, $0d27
    call RenderPuzzleTimerDigitTile
    pop af
    ret


ResetPuzzleTimerState::
    xor a
    ld [rPuzzleTimerActive], a
    ld [rPuzzleTimerSecondOnes], a
    ld [rPuzzleTimerSecondTens], a
    ld [rPuzzleTimerMinuteOnes], a
    ld a, [rGameState_Current]
    sub $09
    jr z, .StoreInitialMinuteTensByMode

    ld a, $03

.StoreInitialMinuteTensByMode:
    ld [rPuzzleTimerMinuteTens], a

RenderPuzzleTimerDigits::
    ld a, [rPuzzleTimerSecondOnes]
    ld bc, $2b27
    call RenderPuzzleTimerDigitTile
    ld a, [rPuzzleTimerSecondTens]
    ld bc, $2327
    call RenderPuzzleTimerDigitTile
    ld a, [rPuzzleTimerMinuteOnes]
    ld bc, $1527
    call RenderPuzzleTimerDigitTile
    ld a, [rPuzzleTimerMinuteTens]
    ld bc, $0d27
    call RenderPuzzleTimerDigitTile
    ret


RenderPuzzleTimerDigitTile::
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    ld hl, $5840
    add hl, de
    ld a, l
    ld [rBGTileCopyBankAddressLow], a
    ld a, h
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $06
    ld [rBGTileCopyBank], a
    ld a, b
    ld [rBGTileCopySourceX], a
    add $07
    ld [rBGTileCopyDestX], a
    ld a, c
    ld [rBGTileCopySourceY], a
    add $07
    ld [rBGTileCopyDestY], a
    jp PrepareBGTileCopy


    ld a, $a0
    ld [rBGTileCopyBankAddressLow], a
    ld a, $5b
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $06
    ld [rBGTileCopyBank], a
    ld a, $08
    ld [rBGTileCopySourceX], a
    add $2f
    ld [rBGTileCopyDestX], a
    ld a, $26
    ld [rBGTileCopySourceY], a
    add $09
    ld [rBGTileCopyDestY], a
    jp PrepareBGTileCopy


ApplyPuzzleTimerMistakePenalty::
    ld a, [rPuzzleTimerPenaltyStep]
    ld c, a
    ld a, [rPuzzleTimerMinuteOnes]
    sub c
    ld [rPuzzleTimerMinuteOnes], a
    bit 7, a
    jr z, .DoubleTimerPenaltyStepIfNot8

    add $0a
    ld [rPuzzleTimerMinuteOnes], a
    ld a, [rPuzzleTimerMinuteTens]
    dec a
    ld [rPuzzleTimerMinuteTens], a
    bit 7, a
    jr z, .DoubleTimerPenaltyStepIfNot8

    xor a
    ld [rPuzzleTimerSecondOnes], a
    ld [rPuzzleTimerSecondTens], a
    ld [rPuzzleTimerMinuteOnes], a
    ld [rPuzzleTimerMinuteTens], a
    ld a, $32
    ld [rPuzzleTimerActive], a

.DoubleTimerPenaltyStepIfNot8:
    ld a, [rPuzzleTimerPenaltyStep]
    cp $08
    jr z, .RenderTimerAfterPenalty

    sla a
    ld [rPuzzleTimerPenaltyStep], a

.RenderTimerAfterPenalty:
    jp RenderPuzzleTimerDigits


TickPuzzleTimerCompletionState::
    ld a, [rPuzzleTimerActive]
    cp $32
    ret c

    ld a, [rPuzzleTimerSecondOnes]
    ld hl, rPuzzleTimerSecondTens
    or [hl]
    ld hl, rPuzzleTimerMinuteOnes
    or [hl]
    ld hl, rPuzzleTimerMinuteTens
    or [hl]
    ret nz

    ld hl, rPuzzleTimerCompletionState
    inc [hl]
    ret


LoadGameOverMessageTileData::
    ld a, [rPuzzleGridWidth]
    cp $05
    jp z, Load5x5GameOverMessageTileData

    cp $0a
    jp z, Load10x10GameOverMessageTileData

    jp Load15x15GameOverMessageTileData


Load5x5GameOverMessageTileData::
    ld a, $00
    ld [rBGTileCopyBankAddressLow], a
    ld a, $63
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $07
    ld [rBGTileCopyBank], a
    ld a, $3c
    ld [rBGTileCopySourceX], a
    add $1a
    ld [rBGTileCopyDestX], a
    ld a, $3a
    ld [rBGTileCopySourceY], a
    add $0f
    ld [rBGTileCopyDestY], a
    jp PrepareBGTileCopy


Load10x10GameOverMessageTileData::
    ld a, $08
    ld hl, $5c00
    ld de, $8800
    ld bc, $0200
    call BankedTileCopyVRAMSafe
    ld a, $00
    ld [rBGTileCopyBankAddressLow], a
    ld a, $5b
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $06
    ld [rBGTileCopyBank], a
    ld a, $38
    ld [rBGTileCopySourceX], a
    add $3f
    ld [rBGTileCopyDestX], a
    ld a, $49
    ld [rBGTileCopySourceY], a
    add $0f
    ld [rBGTileCopyDestY], a
    jp PrepareBGTileCopy


Load15x15GameOverMessageTileData::
    ld a, $06
    ld hl, $7400
    ld de, $8800
    ld bc, $0200
    call BankedTileCopyVRAMSafe
    ld a, $00
    ld [rBGTileCopyBankAddressLow], a
    ld a, $5b
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $06
    ld [rBGTileCopyBank], a
    ld a, $47
    ld [rBGTileCopySourceX], a
    add $3f
    ld [rBGTileCopyDestX], a
    ld a, $57
    ld [rBGTileCopySourceY], a
    add $0f
    ld [rBGTileCopyDestY], a
    jp PrepareBGTileCopy


TickAndDrawMistakePenaltyPopupSprite::
    ld a, [rMistakePenaltyPopupSpriteX]
    ld b, a
    ld a, [rMistakePenaltyPopupSpriteY]
    ld c, a
    ld a, [rPuzzleTimerPenaltyStep]
    cp $02
    jr nz, .CheckPenaltyStep4Sprite

    ld a, $07
    jr .DrawPenaltyPopupAndTickPosition

.CheckPenaltyStep4Sprite:
    cp $04
    jr nz, .UsePenaltyStep8OrMoreSprite

    ld a, $08
    jr .DrawPenaltyPopupAndTickPosition

.UsePenaltyStep8OrMoreSprite:
    ld a, $09

.DrawPenaltyPopupAndTickPosition:
    call CopyOAMSpriteById
    ld a, [rVBlankFrameCounter]
    and $03
    jr nz, .MaybeAdvancePenaltyPopupX

    ld a, [rMistakePenaltyPopupSpriteY]
    dec a
    ld [rMistakePenaltyPopupSpriteY], a

.MaybeAdvancePenaltyPopupX:
    ld a, [rVBlankFrameCounter]
    and $03
    ret nz

    ld a, [rVBlankFrameCounter]
    bit 2, a
    jr nz, .SkipPenaltyPopupXAdvance

    ld a, [rMistakePenaltyPopupSpriteX]
    inc a
    ld [rMistakePenaltyPopupSpriteX], a
    ret


.SkipPenaltyPopupXAdvance:
    ld a, [rMistakePenaltyPopupSpriteX]
    ld [rMistakePenaltyPopupSpriteX], a
    ret


RecomputePuzzleCellBitSetCounters::
    ld hl, rPuzzleCellStateBufferStart
    ld bc, $0100
    ld e, $00

.CountBit0SetCellsLoop:
    ld a, [hl+]
    bit 0, a
    jr z, .AdvanceCountBit0SetCellsLoop

    inc e

.AdvanceCountBit0SetCellsLoop:
    dec bc
    ld a, c
    or b
    jr nz, .CountBit0SetCellsLoop

    ld hl, rPuzzleCellStateBufferStart
    ld bc, $0100
    ld d, e

.AdjustCountersForBit1SetCellsLoop:
    ld a, [hl+]
    bit 1, a
    jr z, .AdvanceAdjustCountersForBit1SetCellsLoop

    dec e
    bit 0, a
    jr z, .AdvanceAdjustCountersForBit1SetCellsLoop

    dec d

.AdvanceAdjustCountersForBit1SetCellsLoop:
    dec bc
    ld a, c
    or b
    jr nz, .AdjustCountersForBit1SetCellsLoop

    ld a, e
    ld [rPuzzleBit1ClearCellCounter], a
    ld a, d
    ld [rPuzzleBit0AndBit1ClearCellCounter], a
    ret


PlayPuzzleModeSecondarySfxPairBySelectedCourseBGM::
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    ld b, $00
    ld hl, rSaveSlot1CourseSelectCursorRow
    add hl, bc
    ld a, [rSelectedSaveSlotIndex]
    ld c, a
    sla a
    sla a
    add c
    add [hl]
    ld c, a
    ld hl, rSaveSlot1PicrossKinokoBGMSelectionIndex
    add hl, bc
    ld c, [hl]
    ld hl, PuzzleModeSecondarySfxIdTable
    add hl, bc
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, [hl]
    ld a, $01
    call CallSoundCommandDispatcher
    ret


PuzzleModeSecondarySfxIdTable::
    db $05, $01, $0b, $03, $02, $00

TickLowTimerMarioSweatIndicator::
    ld hl, rLowTimerMarioSweatIndicatorTickCounter
    inc [hl]
    ld a, [rPuzzleTimerMinuteTens]
    and a
    ret nz

    ld a, [rPuzzleTimerMinuteOnes]
    cp $02
    jr z, .TickBelowThreeMinutesWarningWindow

    cp $01
    jr z, .TickBelowTwoMinutesWarningWindow

    and a
    jr z, .TickBelowOneMinuteWarningWindow

    ret


.TickBelowThreeMinutesWarningWindow:
    ld a, [hl]
    cp $3c
    jr c, .CheckBelowThreeMinutesWarningSpriteWindow

    xor a
    ld [hl], a

.CheckBelowThreeMinutesWarningSpriteWindow:
    cp $08
    jr c, .DrawMarioSweatWarningSprite

    ret


.TickBelowTwoMinutesWarningWindow:
    ld a, [hl]
    cp $1e
    jr c, .CheckBelowTwoMinutesWarningSpriteWindow

    xor a
    ld [hl], a

.CheckBelowTwoMinutesWarningSpriteWindow:
    cp $08
    jr c, .DrawMarioSweatWarningSprite

    ret


.TickBelowOneMinuteWarningWindow:
    ld a, [hl]
    cp $0f
    jr c, .CheckBelowOneMinuteWarningSpriteWindow

    xor a
    ld [hl], a

.CheckBelowOneMinuteWarningSpriteWindow:
    cp $08
    jr c, .DrawMarioSweatWarningSprite

    ret


.DrawMarioSweatWarningSprite:
    ld bc, $2e0c
    ld a, $0a
    jp CopyOAMSpriteById


ApplyLowTimerMarioFaceTilesOnce::
    ld a, [rLowTimerMarioFaceTilesAppliedFlag]
    and a
    ret nz

    ld a, [rPuzzleTimerMinuteTens]
    and a
    ret nz

    ld a, [rPuzzleTimerMinuteOnes]
    cp $03
    ret nc

    ld a, $01
    ld [rLowTimerMarioFaceTilesAppliedFlag], a
    ld a, [rPuzzleGridWidth]
    cp $05
    jr nz, .Load10x10LowTimerMarioFaceTiles

    jr .ReturnFromLowTimerMarioFaceTiles

.Load10x10LowTimerMarioFaceTiles:
    cp $0a
    jr nz, .Load15x15LowTimerMarioFaceTiles

    ld a, $08
    ld hl, $58b0
    ld de, $88b0
    ld bc, $0020
    call BankedTileCopyVRAMSafe
    ld a, $08
    ld hl, $5900
    ld de, $8900
    ld bc, $0020
    call BankedTileCopyVRAMSafe
    ld a, $08
    ld hl, $5960
    ld de, $8960
    ld bc, $0020
    call BankedTileCopyVRAMSafe
    ld a, $08
    ld hl, $59c0
    ld de, $89c0
    ld bc, $0020
    call BankedTileCopyVRAMSafe
    jr .ReturnFromLowTimerMarioFaceTiles

.Load15x15LowTimerMarioFaceTiles:
    ld a, $06
    ld hl, $70b0
    ld de, $88b0
    ld bc, $0020
    call BankedTileCopyVRAMSafe
    ld a, $06
    ld hl, $7100
    ld de, $8900
    ld bc, $0020
    call BankedTileCopyVRAMSafe
    ld a, $06
    ld hl, $7160
    ld de, $8960
    ld bc, $0020
    call BankedTileCopyVRAMSafe
    ld a, $06
    ld hl, $71c0
    ld de, $89c0
    ld bc, $0020
    call BankedTileCopyVRAMSafe

.ReturnFromLowTimerMarioFaceTiles:
    ret


    ; padding
    ds $f4, $00
