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
    ld a, [rStatePhase_Current]                   ; $438a: $fa $35 $d6
    rst RST_18                                    ; $438d: $df

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
    ld a, $43                                     ; $439a: $3e $43
    ld [rLCDCShadow], a                           ; $439c: $ea $2e $c3
    xor a                                         ; $439f: $af
    ld [rBGPShadow], a                            ; $43a0: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $43a3: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $43a6: $ea $31 $c3
    ld [rSCXShadow], a                            ; $43a9: $ea $32 $c3
    ld [rSCYShadow], a                            ; $43ac: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $43af: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $43b2: $cd $ab $05
    ld a, $0b                                     ; $43b5: $3e $0b
    ld hl, $5000                                  ; $43b7: $21 $00 $50
    ld de, $8000                                  ; $43ba: $11 $00 $80
    ld bc, .CheckAllFaceButtonsHeldCombo          ; $43bd: $01 $00 $03
    call BankedTileCopy                           ; $43c0: $cd $e4 $04
    ld a, $07                                     ; $43c3: $3e $07
    ld hl, $7b00                                  ; $43c5: $21 $00 $7b
    ld de, $8300                                  ; $43c8: $11 $00 $83
    ld bc, $0200                                  ; $43cb: $01 $00 $02
    call BankedTileCopy                           ; $43ce: $cd $e4 $04
    ld a, $0a                                     ; $43d1: $3e $0a
    ld hl, $6000                                  ; $43d3: $21 $00 $60
    ld de, $8800                                  ; $43d6: $11 $00 $88
    ld bc, $1000                                  ; $43d9: $01 $00 $10
    call BankedTileCopy                           ; $43dc: $cd $e4 $04
    call GS04_LoadPicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $43df: $cd $a2 $49
    call GS04_LoadPicrossCourseSelectGraphicsBySelectedCourse; $43e2: $cd $80 $4a
    call GS04_DrawCompletedPuzzleMarkersForSelectedSaveSlotAndCourse; $43e5: $cd $0a $4c
    call ClearShadowOAMBuffer                     ; $43e8: $cd $b6 $05
    ld b, $03                                     ; $43eb: $06 $03
    ld hl, $4e80                                  ; $43ed: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $43f0: $cd $de $05
    ld b, $03                                     ; $43f3: $06 $03
    ld hl, $4ee9                                  ; $43f5: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $43f8: $cd $de $05
    xor a                                         ; $43fb: $af
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame; $43fc: $cd $ee $49
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanel; $43ff: $cd $de $4d
    call GS04_PlayCursorPreviewSfxBySelectedCourse; $4402: $cd $4e $4a
    call EnableLCDFromShadow                      ; $4405: $cd $a2 $04
    call GS04_PlayPicrossCourseSelectFadeInBySelectedCourse; $4408: $cd $5a $4b
    ld hl, rStatePhase_Current                    ; $440b: $21 $35 $d6
    inc [hl]                                      ; $440e: $34
    ret                                           ; $440f: $c9


GS04_StatePhase_04_ReturnFromPuzzleTransitionAndHandleUnlockFlow::
    ld a, $43                                     ; $4410: $3e $43
    ld [rLCDCShadow], a                           ; $4412: $ea $2e $c3
    xor a                                         ; $4415: $af
    ld [rBGPShadow], a                            ; $4416: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $4419: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $441c: $ea $31 $c3
    ld [rSCXShadow], a                            ; $441f: $ea $32 $c3
    ld [rSCYShadow], a                            ; $4422: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $4425: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $4428: $cd $ab $05
    ld a, $0b                                     ; $442b: $3e $0b
    ld hl, $5000                                  ; $442d: $21 $00 $50
    ld de, $8000                                  ; $4430: $11 $00 $80
    ld bc, .CheckAllFaceButtonsHeldCombo          ; $4433: $01 $00 $03
    call BankedTileCopy                           ; $4436: $cd $e4 $04
    ld a, $07                                     ; $4439: $3e $07
    ld hl, $7b00                                  ; $443b: $21 $00 $7b
    ld de, $8300                                  ; $443e: $11 $00 $83
    ld bc, $0200                                  ; $4441: $01 $00 $02
    call BankedTileCopy                           ; $4444: $cd $e4 $04
    ld a, $0a                                     ; $4447: $3e $0a
    ld hl, $6000                                  ; $4449: $21 $00 $60
    ld de, $8800                                  ; $444c: $11 $00 $88
    ld bc, $1000                                  ; $444f: $01 $00 $10
    call BankedTileCopy                           ; $4452: $cd $e4 $04
    call GS04_LoadPicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $4455: $cd $a2 $49
    call GS04_LoadPicrossCourseSelectGraphicsBySelectedCourse; $4458: $cd $80 $4a
    call GS04_DrawCompletedPuzzleMarkersForSelectedSaveSlotAndCourseExceptCurrentSelection; $445b: $cd $3b $4c
    ld a, [rSelectedPuzzleStatusData]             ; $445e: $fa $4c $d8
    bit 7, a                                      ; $4461: $cb $7f
    jr z, .ContinueAfterSelectedPuzzleCompletedMarkerCheck; $4463: $28 $0b

    ld a, [rPuzzleCursorColumn]                   ; $4465: $fa $36 $d6
    ld c, a                                       ; $4468: $4f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4469: $fa $37 $d6
    ld b, a                                       ; $446c: $47
    call GS04_DrawCompletedPuzzleMarkerAtGridPosition; $446d: $cd $78 $4c

.ContinueAfterSelectedPuzzleCompletedMarkerCheck:
    call ClearShadowOAMBuffer                     ; $4470: $cd $b6 $05
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanelFromSelectedPuzzleCache; $4473: $cd $54 $4f
    ld b, $03                                     ; $4476: $06 $03
    ld hl, $4e80                                  ; $4478: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $447b: $cd $de $05
    ld a, [rPuzzleFlowVariant_Unsure]             ; $447e: $fa $05 $d8
    and a                                         ; $4481: $a7
    push af                                       ; $4482: $f5
    jr nz, .BeginPostReturnFadeInAndResultFlow    ; $4483: $20 $08

    ld b, $03                                     ; $4485: $06 $03
    ld hl, $4ee9                                  ; $4487: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $448a: $cd $de $05

.BeginPostReturnFadeInAndResultFlow:
    xor a                                         ; $448d: $af
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame; $448e: $cd $ee $49
    call GS04_PlayCursorPreviewSfxBySelectedCourse; $4491: $cd $4e $4a
    call EnableLCDFromShadow                      ; $4494: $cd $a2 $04
    call GS04_PlayPicrossCourseSelectFadeInBySelectedCourse; $4497: $cd $5a $4b
    pop af                                        ; $449a: $f1
    jp z, GS04_ReturnToIdlePhaseAndRefreshSaveChecksums; $449b: $ca $dc $46

    call GS04_HandlePostReturnClearStatusChangeAnimationAndPrompt; $449e: $cd $e4 $46
    ld a, [rSelectedSaveSlotIndex]                ; $44a1: $fa $65 $a0
    ld c, a                                       ; $44a4: $4f
    ld b, $00                                     ; $44a5: $06 $00
    ld hl, rSaveSlot1UnlockProgressState          ; $44a7: $21 $87 $a3
    add hl, bc                                    ; $44aa: $09
    ld a, [hl]                                    ; $44ab: $7e
    cp $03                                        ; $44ac: $fe $03
    jp z, GS04_ReturnToIdlePhaseAndRefreshSaveChecksums; $44ae: $ca $dc $46

    ld hl, rSaveSlot1PicrossKinokoStarClearedPuzzleCount; $44b1: $21 $8a $a3
    add hl, bc                                    ; $44b4: $09
    ld a, [hl]                                    ; $44b5: $7e
    cp $40                                        ; $44b6: $fe $40
    jp nz, GS04_ReturnToIdlePhaseAndRefreshSaveChecksums; $44b8: $c2 $dc $46

    ld hl, rSaveSlot1UnlockProgressState          ; $44bb: $21 $87 $a3
    add hl, bc                                    ; $44be: $09
    inc [hl]                                      ; $44bf: $34
    ld a, [hl]                                    ; $44c0: $7e
    cp $03                                        ; $44c1: $fe $03
    jp z, GS04_RunTimeTrialUnlockMessageFlowAndReturnToCourseSelect; $44c3: $ca $bb $45

    ld hl, rSaveSlot1PicrossKinokoStarClearedPuzzleCount; $44c6: $21 $8a $a3
    add hl, bc                                    ; $44c9: $09
    xor a                                         ; $44ca: $af
    ld [hl], a                                    ; $44cb: $77
    call RefreshSaveValidationChecksumsAndMirrors ; $44cc: $cd $1f $1b
    ld bc, $003c                                  ; $44cf: $01 $3c $00
    call DelayFramesByBC                          ; $44d2: $cd $fa $05
    ld a, $05                                     ; $44d5: $3e $05
    call CallSoundEffectDispatcher                ; $44d7: $cd $b6 $03
    ld c, $00                                     ; $44da: $0e $00
    ld a, $01                                     ; $44dc: $3e $01
    call CallSoundEffectDispatcher                ; $44de: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $44e1: $cd $99 $03
    ld c, $00                                     ; $44e4: $0e $00
    ld a, $01                                     ; $44e6: $3e $01
    call CallSoundEffectDispatcher                ; $44e8: $cd $b6 $03
    call ClearShadowOAMBuffer                     ; $44eb: $cd $b6 $05
    call GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse; $44ee: $cd $84 $4b
    call DisableLCDAtVBlank                       ; $44f1: $cd $83 $04
    ld b, $01                                     ; $44f4: $06 $01
    ld hl, GS04_LoadPicrossCourseSelectGraphicsBySelectedCourse_Banked; $44f6: $21 $e4 $4a
    call SwitchBankToBAndJumpToHL                 ; $44f9: $cd $de $05
    ld a, $7e                                     ; $44fc: $3e $7e
    ld [rTilemapToTileDataAddressLookupTableLow], a; $44fe: $ea $63 $cd
    ld a, $16                                     ; $4501: $3e $16
    ld [rTilemapToTileDataAddressLookupTableHigh], a; $4503: $ea $64 $cd
    ld c, $00                                     ; $4506: $0e $00
    ld a, $01                                     ; $4508: $3e $01
    call CallSoundEffectDispatcher                ; $450a: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $450d: $cd $99 $03
    ld c, $07                                     ; $4510: $0e $07
    ld a, $01                                     ; $4512: $3e $01
    call CallSoundEffectDispatcher                ; $4514: $cd $b6 $03
    ld a, $2f                                     ; $4517: $3e $2f
    ld [rLYCShadow], a                            ; $4519: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $451c: $21 $37 $c3
    set 6, [hl]                                   ; $451f: $cb $f6
    ld hl, rIE                                    ; $4521: $21 $ff $ff
    set 1, [hl]                                   ; $4524: $cb $ce
    ld a, $02                                     ; $4526: $3e $02
    ld [rLCDCInterruptDispatchIndex], a           ; $4528: $ea $38 $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $452b: $ea $50 $c3
    call EnableLCDFromShadow                      ; $452e: $cd $a2 $04
    ld b, $01                                     ; $4531: $06 $01
    ld hl, GS04_PlayPicrossCourseSelectFadeInBySelectedCourse_Banked; $4533: $21 $ae $4b
    call SwitchBankToBAndJumpToHL                 ; $4536: $cd $de $05
    ld a, $10                                     ; $4539: $3e $10
    ld [rMessageScriptStreamResetEntryLow], a     ; $453b: $ea $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $453e: $ea $2b $d8
    ld a, $20                                     ; $4541: $3e $20
    ld [rMessageScriptStreamResetEntryHigh], a    ; $4543: $ea $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $4546: $ea $2c $d8
    ld a, $90                                     ; $4549: $3e $90
    ld [rMessageScriptStreamLimitLow], a          ; $454b: $ea $45 $d8
    ld a, $58                                     ; $454e: $3e $58
    ld [rMessageScriptStreamLimitHigh], a         ; $4550: $ea $46 $d8
    ld a, $0c                                     ; $4553: $3e $0c
    ld [rMessageScriptStreamPointerLow], a        ; $4555: $ea $2d $d8
    ld a, $41                                     ; $4558: $3e $41
    ld [rMessageScriptStreamPointerHigh], a       ; $455a: $ea $2e $d8
    call RunMessageScriptUntilEnd                 ; $455d: $cd $dd $51
    call WaitForAConfirmOnBottomPrompt            ; $4560: $cd $52 $52
    xor a                                         ; $4563: $af
    ld [rPuzzleCursorColumn], a                   ; $4564: $ea $36 $d6
    ld [rPuzzleAndMenuCursorRow], a               ; $4567: $ea $37 $d6
    ld bc, $003c                                  ; $456a: $01 $3c $00
    call DelayFramesByBC                          ; $456d: $cd $fa $05
    ld a, $05                                     ; $4570: $3e $05
    call CallSoundEffectDispatcher                ; $4572: $cd $b6 $03
    ld c, $00                                     ; $4575: $0e $00
    ld a, $01                                     ; $4577: $3e $01
    call CallSoundEffectDispatcher                ; $4579: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $457c: $cd $99 $03
    ld c, $00                                     ; $457f: $0e $00
    ld a, $01                                     ; $4581: $3e $01
    call CallSoundEffectDispatcher                ; $4583: $cd $b6 $03
    ld b, $01                                     ; $4586: $06 $01
    ld hl, GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse_Banked; $4588: $21 $dc $4b
    call SwitchBankToBAndJumpToHL                 ; $458b: $cd $de $05
    call DisableLCDAtVBlank                       ; $458e: $cd $83 $04
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $4591: $21 $37 $c3
    res 6, [hl]                                   ; $4594: $cb $b6
    ld hl, rIE                                    ; $4596: $21 $ff $ff
    res 1, [hl]                                   ; $4599: $cb $8e
    xor a                                         ; $459b: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $459c: $ea $38 $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $459f: $ea $50 $c3
    ld a, [rSelectedSaveSlotIndex]                ; $45a2: $fa $65 $a0
    ld c, a                                       ; $45a5: $4f
    ld b, $00                                     ; $45a6: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $45a8: $21 $8d $a3
    add hl, bc                                    ; $45ab: $09
    inc [hl]                                      ; $45ac: $34
    call GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $45ad: $cd $c8 $49
    xor a                                         ; $45b0: $af
    ld [rStatePhase_Current], a                   ; $45b1: $ea $35 $d6
    ld hl, rGameState_Current                     ; $45b4: $21 $34 $d6
    dec [hl]                                      ; $45b7: $35
    jp RefreshSaveValidationChecksumsAndMirrors   ; $45b8: $c3 $1f $1b


GS04_RunTimeTrialUnlockMessageFlowAndReturnToCourseSelect::
    call RefreshSaveValidationChecksumsAndMirrors ; $45bb: $cd $1f $1b
    ld bc, $003c                                  ; $45be: $01 $3c $00
    call DelayFramesByBC                          ; $45c1: $cd $fa $05
    ld a, $05                                     ; $45c4: $3e $05
    call CallSoundEffectDispatcher                ; $45c6: $cd $b6 $03
    ld c, $00                                     ; $45c9: $0e $00
    ld a, $01                                     ; $45cb: $3e $01
    call CallSoundEffectDispatcher                ; $45cd: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $45d0: $cd $99 $03
    ld c, $00                                     ; $45d3: $0e $00
    ld a, $01                                     ; $45d5: $3e $01
    call CallSoundEffectDispatcher                ; $45d7: $cd $b6 $03
    call ClearShadowOAMBuffer                     ; $45da: $cd $b6 $05
    call GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse; $45dd: $cd $84 $4b
    call DisableLCDAtVBlank                       ; $45e0: $cd $83 $04
    ld b, $01                                     ; $45e3: $06 $01
    ld hl, GS04_LoadPicrossCourseSelectGraphicsBySelectedCourse_Banked; $45e5: $21 $e4 $4a
    call SwitchBankToBAndJumpToHL                 ; $45e8: $cd $de $05
    ld a, $7e                                     ; $45eb: $3e $7e
    ld [rTilemapToTileDataAddressLookupTableLow], a; $45ed: $ea $63 $cd
    ld a, $16                                     ; $45f0: $3e $16
    ld [rTilemapToTileDataAddressLookupTableHigh], a; $45f2: $ea $64 $cd
    ld c, $00                                     ; $45f5: $0e $00
    ld a, $01                                     ; $45f7: $3e $01
    call CallSoundEffectDispatcher                ; $45f9: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $45fc: $cd $99 $03
    ld c, $06                                     ; $45ff: $0e $06
    ld a, $01                                     ; $4601: $3e $01
    call CallSoundEffectDispatcher                ; $4603: $cd $b6 $03
    ld a, $2f                                     ; $4606: $3e $2f
    ld [rLYCShadow], a                            ; $4608: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $460b: $21 $37 $c3
    set 6, [hl]                                   ; $460e: $cb $f6
    ld hl, rIE                                    ; $4610: $21 $ff $ff
    set 1, [hl]                                   ; $4613: $cb $ce
    ld a, $02                                     ; $4615: $3e $02
    ld [rLCDCInterruptDispatchIndex], a           ; $4617: $ea $38 $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $461a: $ea $50 $c3
    call EnableLCDFromShadow                      ; $461d: $cd $a2 $04
    ld b, $01                                     ; $4620: $06 $01
    ld hl, GS04_PlayPicrossCourseSelectFadeInBySelectedCourse_Banked; $4622: $21 $ae $4b
    call SwitchBankToBAndJumpToHL                 ; $4625: $cd $de $05
    ld a, $10                                     ; $4628: $3e $10
    ld [rMessageScriptStreamResetEntryLow], a     ; $462a: $ea $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $462d: $ea $2b $d8
    ld a, $20                                     ; $4630: $3e $20
    ld [rMessageScriptStreamResetEntryHigh], a    ; $4632: $ea $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $4635: $ea $2c $d8
    ld a, $90                                     ; $4638: $3e $90
    ld [rMessageScriptStreamLimitLow], a          ; $463a: $ea $45 $d8
    ld a, $58                                     ; $463d: $3e $58
    ld [rMessageScriptStreamLimitHigh], a         ; $463f: $ea $46 $d8
    ld a, $8e                                     ; $4642: $3e $8e
    ld [rMessageScriptStreamPointerLow], a        ; $4644: $ea $2d $d8
    ld a, $41                                     ; $4647: $3e $41
    ld [rMessageScriptStreamPointerHigh], a       ; $4649: $ea $2e $d8
    call RunMessageScriptUntilEnd                 ; $464c: $cd $dd $51
    call WaitForAConfirmOnBottomPrompt            ; $464f: $cd $52 $52
    call GS04_ClearMessagePromptRows              ; $4652: $cd $e4 $51
    ld a, $08                                     ; $4655: $3e $08
    ld [rMessageScriptStreamPointerLow], a        ; $4657: $ea $2d $d8
    ld a, $42                                     ; $465a: $3e $42
    ld [rMessageScriptStreamPointerHigh], a       ; $465c: $ea $2e $d8
    call RunMessageScriptUntilEnd                 ; $465f: $cd $dd $51
    call WaitForAConfirmOnBottomPrompt            ; $4662: $cd $52 $52
    call GS04_ClearMessagePromptRows              ; $4665: $cd $e4 $51
    ld a, $58                                     ; $4668: $3e $58
    ld [rMessageScriptStreamPointerLow], a        ; $466a: $ea $2d $d8
    ld a, $42                                     ; $466d: $3e $42
    ld [rMessageScriptStreamPointerHigh], a       ; $466f: $ea $2e $d8
    call RunMessageScriptUntilEnd                 ; $4672: $cd $dd $51
    call WaitForAConfirmOnBottomPrompt            ; $4675: $cd $52 $52
    call GS04_ClearMessagePromptRows              ; $4678: $cd $e4 $51
    ld a, $3a                                     ; $467b: $3e $3a
    ld [rMessageScriptStreamPointerLow], a        ; $467d: $ea $2d $d8
    ld a, $43                                     ; $4680: $3e $43
    ld [rMessageScriptStreamPointerHigh], a       ; $4682: $ea $2e $d8
    call RunMessageScriptUntilEnd                 ; $4685: $cd $dd $51
    call WaitForAConfirmOnBottomPrompt            ; $4688: $cd $52 $52
    ld bc, $003c                                  ; $468b: $01 $3c $00
    call DelayFramesByBC                          ; $468e: $cd $fa $05
    ld a, $05                                     ; $4691: $3e $05
    call CallSoundEffectDispatcher                ; $4693: $cd $b6 $03
    ld c, $00                                     ; $4696: $0e $00
    ld a, $01                                     ; $4698: $3e $01
    call CallSoundEffectDispatcher                ; $469a: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $469d: $cd $99 $03
    ld c, $00                                     ; $46a0: $0e $00
    ld a, $01                                     ; $46a2: $3e $01
    call CallSoundEffectDispatcher                ; $46a4: $cd $b6 $03
    ld b, $01                                     ; $46a7: $06 $01
    ld hl, GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse_Banked; $46a9: $21 $dc $4b
    call SwitchBankToBAndJumpToHL                 ; $46ac: $cd $de $05
    call DisableLCDAtVBlank                       ; $46af: $cd $83 $04
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $46b2: $21 $37 $c3
    res 6, [hl]                                   ; $46b5: $cb $b6
    ld hl, rIE                                    ; $46b7: $21 $ff $ff
    res 1, [hl]                                   ; $46ba: $cb $8e
    xor a                                         ; $46bc: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $46bd: $ea $38 $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $46c0: $ea $50 $c3
    ld a, [rSelectedSaveSlotIndex]                ; $46c3: $fa $65 $a0
    ld c, a                                       ; $46c6: $4f
    ld b, $00                                     ; $46c7: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $46c9: $21 $8d $a3
    add hl, bc                                    ; $46cc: $09
    inc [hl]                                      ; $46cd: $34
    call GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $46ce: $cd $c8 $49
    xor a                                         ; $46d1: $af
    ld [rStatePhase_Current], a                   ; $46d2: $ea $35 $d6
    ld hl, rGameState_Current                     ; $46d5: $21 $34 $d6
    dec [hl]                                      ; $46d8: $35
    jp RefreshSaveValidationChecksumsAndMirrors   ; $46d9: $c3 $1f $1b


GS04_ReturnToIdlePhaseAndRefreshSaveChecksums::
    ld a, $01                                     ; $46dc: $3e $01
    ld [rStatePhase_Current], a                   ; $46de: $ea $35 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $46e1: $c3 $1f $1b


GS04_HandlePostReturnClearStatusChangeAnimationAndPrompt::
    ld a, [rSelectedSaveSlotIndex]                ; $46e4: $fa $65 $a0
    ld c, a                                       ; $46e7: $4f
    ld b, $00                                     ; $46e8: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $46ea: $21 $8d $a3
    add hl, bc                                    ; $46ed: $09
    ld a, [hl]                                    ; $46ee: $7e
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot; $46ef: $21 $c8 $51
    add hl, bc                                    ; $46f2: $09
    ld c, [hl]                                    ; $46f3: $4e
    add hl, bc                                    ; $46f4: $09
    sla a                                         ; $46f5: $cb $27
    ld c, a                                       ; $46f7: $4f
    add hl, bc                                    ; $46f8: $09
    ld a, [hl+]                                   ; $46f9: $2a
    ld h, [hl]                                    ; $46fa: $66
    ld l, a                                       ; $46fb: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $46fc: $fa $37 $d6
    sla a                                         ; $46ff: $cb $27
    sla a                                         ; $4701: $cb $27
    sla a                                         ; $4703: $cb $27
    ld c, a                                       ; $4705: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4706: $fa $36 $d6
    or c                                          ; $4709: $b1
    ld c, a                                       ; $470a: $4f
    ld b, $00                                     ; $470b: $06 $00
    add hl, bc                                    ; $470d: $09
    ld a, [hl]                                    ; $470e: $7e
    ld hl, rSelectedPuzzleStatusData              ; $470f: $21 $4c $d8
    xor [hl]                                      ; $4712: $ae
    bit 7, a                                      ; $4713: $cb $7f
    jr z, .BeginPostResultPromptDelay             ; $4715: $28 $38

    ld c, $08                                     ; $4717: $0e $08
    ld a, $02                                     ; $4719: $3e $02
    call CallSoundEffectDispatcher                ; $471b: $cd $b6 $03
    ld c, $08                                     ; $471e: $0e $08

.AnimateCursorFrame1BeforeCompletedMarker:
    push bc                                       ; $4720: $c5
    call ClearShadowOAMBuffer                     ; $4721: $cd $b6 $05
    ld a, $01                                     ; $4724: $3e $01
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame; $4726: $cd $ee $49
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanel; $4729: $cd $de $4d
    rst RST_08                                    ; $472c: $cf
    pop bc                                        ; $472d: $c1
    dec c                                         ; $472e: $0d
    jr nz, .AnimateCursorFrame1BeforeCompletedMarker; $472f: $20 $ef

    ld a, [rPuzzleCursorColumn]                   ; $4731: $fa $36 $d6
    ld c, a                                       ; $4734: $4f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4735: $fa $37 $d6
    ld b, a                                       ; $4738: $47
    call GS04_DrawCompletedPuzzleMarkerAtGridPosition; $4739: $cd $78 $4c
    ld c, $08                                     ; $473c: $0e $08

.AnimateCursorFrame2AfterCompletedMarker:
    push bc                                       ; $473e: $c5
    call ClearShadowOAMBuffer                     ; $473f: $cd $b6 $05
    ld a, $02                                     ; $4742: $3e $02
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame; $4744: $cd $ee $49
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanel; $4747: $cd $de $4d
    rst RST_08                                    ; $474a: $cf
    pop bc                                        ; $474b: $c1
    dec c                                         ; $474c: $0d
    jr nz, .AnimateCursorFrame2AfterCompletedMarker; $474d: $20 $ef

.BeginPostResultPromptDelay:
    rst RST_08                                    ; $474f: $cf
    ld bc, $005a                                  ; $4750: $01 $5a $00

.PostResultPromptLoop:
    push bc                                       ; $4753: $c5
    call ClearShadowOAMBuffer                     ; $4754: $cd $b6 $05
    ld b, $03                                     ; $4757: $06 $03
    ld hl, $4ea6                                  ; $4759: $21 $a6 $4e
    call SwitchBankToBAndJumpToHL                 ; $475c: $cd $de $05
    ld a, [rVBlankFrameCounter]                   ; $475f: $fa $3a $c3
    bit 2, a                                      ; $4762: $cb $57
    jr nz, .DrawPostResultPromptFrame             ; $4764: $20 $04

    xor a                                         ; $4766: $af
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame; $4767: $cd $ee $49

.DrawPostResultPromptFrame:
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanel; $476a: $cd $de $4d
    rst RST_08                                    ; $476d: $cf
    pop bc                                        ; $476e: $c1
    ld a, [rInputButtonsPressed]                  ; $476f: $fa $1e $c3
    and a                                         ; $4772: $a7
    jr nz, .AdvanceSelectionAfterPostResultPrompt ; $4773: $20 $05

    dec bc                                        ; $4775: $0b
    ld a, c                                       ; $4776: $79
    or b                                          ; $4777: $b0
    jr nz, .PostResultPromptLoop                  ; $4778: $20 $d9

.AdvanceSelectionAfterPostResultPrompt:
    jp GS04_AdvanceSelectionToNextUnclearedPuzzleIfPossible; $477a: $c3 $fe $50


GS04_StatePhase_01_PicrossCoursePuzzleSelectScreenIdle::
    ld b, $03                                     ; $477d: $06 $03
    ld hl, $4ee9                                  ; $477f: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $4782: $cd $de $05
    xor a                                         ; $4785: $af
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame; $4786: $cd $ee $49
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanel; $4789: $cd $de $4d
    call GS04_HandlePicrossCoursePuzzleSelectDirectionalInput; $478c: $cd $09 $4a
    ld a, [rInputButtonsPressed]                  ; $478f: $fa $1e $c3
    and $09                                       ; $4792: $e6 $09
    jr z, .CheckCancelInputB                      ; $4794: $28 $0c

    ld c, $03                                     ; $4796: $0e $03
    ld a, $02                                     ; $4798: $3e $02
    call CallSoundEffectDispatcher                ; $479a: $cd $b6 $03
    ld hl, rStatePhase_Current                    ; $479d: $21 $35 $d6
    inc [hl]                                      ; $47a0: $34
    ret                                           ; $47a1: $c9


.CheckCancelInputB:
    ld a, [rInputButtonsPressed]                  ; $47a2: $fa $1e $c3
    and $02                                       ; $47a5: $e6 $02
    jr z, .ReturnFromIdlePhaseNoSelectionInput    ; $47a7: $28 $0d

    ld c, $04                                     ; $47a9: $0e $04
    ld a, $02                                     ; $47ab: $3e $02
    call CallSoundEffectDispatcher                ; $47ad: $cd $b6 $03
    ld a, $03                                     ; $47b0: $3e $03
    ld [rStatePhase_Current], a                   ; $47b2: $ea $35 $d6
    ret                                           ; $47b5: $c9


.ReturnFromIdlePhaseNoSelectionInput:
    ret                                           ; $47b6: $c9


GS04_StatePhase_05_ReturnFromPuzzleTransitionAndCommitResult::
    ld bc, $003c                                  ; $47b7: $01 $3c $00
    call DelayFramesByBC                          ; $47ba: $cd $fa $05
    ld a, $05                                     ; $47bd: $3e $05
    call CallSoundEffectDispatcher                ; $47bf: $cd $b6 $03
    ld c, $00                                     ; $47c2: $0e $00
    ld a, $01                                     ; $47c4: $3e $01
    call CallSoundEffectDispatcher                ; $47c6: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $47c9: $cd $99 $03
    ld c, $00                                     ; $47cc: $0e $00
    ld a, $01                                     ; $47ce: $3e $01
    call CallSoundEffectDispatcher                ; $47d0: $cd $b6 $03
    call GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse; $47d3: $cd $84 $4b
    call DisableLCDAtVBlank                       ; $47d6: $cd $83 $04
    call GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $47d9: $cd $c8 $49
    xor a                                         ; $47dc: $af
    ld [rPuzzleTimerSecondOnes], a                ; $47dd: $ea $0b $d8
    ld [rPuzzleTimerSecondTens], a                ; $47e0: $ea $0c $d8
    ld [rPuzzleTimerMinuteOnes], a                ; $47e3: $ea $09 $d8
    ld a, $03                                     ; $47e6: $3e $03
    ld [rPuzzleTimerMinuteTens], a                ; $47e8: $ea $0a $d8
    xor a                                         ; $47eb: $af
    ld [rHintPopupSelection], a                   ; $47ec: $ea $33 $d8
    ld a, $01                                     ; $47ef: $3e $01
    ld [rPuzzleFlowVariant_Unsure], a             ; $47f1: $ea $05 $d8
    call GS04_LoadPicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $47f4: $cd $a2 $49
    call GS04_LoadSelectedPicrossCoursePuzzleStatusAndTimeDataRecord; $47f7: $cd $4b $50
    call GS04_IncrementSelectedPicrossCoursePuzzleClearCountIfAllowed; $47fa: $cd $bc $4c
    call GS04_UpdateSelectedPicrossCoursePuzzleClearStatusAndTimes; $47fd: $cd $ef $4c
    call RefreshSaveValidationChecksumsAndMirrors ; $4800: $cd $1f $1b
    ld a, $04                                     ; $4803: $3e $04
    ld [rStatePhase_Current], a                   ; $4805: $ea $35 $d6
    ret                                           ; $4808: $c9


GS04_StatePhase_02_ConfirmSelectionTransitionToPuzzle::
    ld bc, $003c                                  ; $4809: $01 $3c $00
    call DelayFramesByBC                          ; $480c: $cd $fa $05
    ld a, $05                                     ; $480f: $3e $05
    call CallSoundEffectDispatcher                ; $4811: $cd $b6 $03
    ld c, $00                                     ; $4814: $0e $00
    ld a, $01                                     ; $4816: $3e $01
    call CallSoundEffectDispatcher                ; $4818: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $481b: $cd $99 $03
    ld c, $00                                     ; $481e: $0e $00
    ld a, $01                                     ; $4820: $3e $01
    call CallSoundEffectDispatcher                ; $4822: $cd $b6 $03
    call GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse; $4825: $cd $84 $4b
    call DisableLCDAtVBlank                       ; $4828: $cd $83 $04
    call GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $482b: $cd $c8 $49
    call GS04_LoadSelectedPicrossCoursePuzzleStatusAndTimeDataRecord; $482e: $cd $4b $50
    call GS04_IncrementSelectedPicrossCoursePuzzleClearCountIfAllowed; $4831: $cd $bc $4c
    ld a, [rSelectedSaveSlotIndex]                ; $4834: $fa $65 $a0
    ld c, a                                       ; $4837: $4f
    ld b, $00                                     ; $4838: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $483a: $21 $8d $a3
    add hl, bc                                    ; $483d: $09
    ld a, [hl]                                    ; $483e: $7e
    sla a                                         ; $483f: $cb $27
    ld c, a                                       ; $4841: $4f
    ld hl, GS04_PuzzleDataIndexTableOffsetTableByCourse; $4842: $21 $6e $48
    add hl, bc                                    ; $4845: $09
    ld c, [hl]                                    ; $4846: $4e
    inc hl                                        ; $4847: $23
    ld b, [hl]                                    ; $4848: $46
    add hl, bc                                    ; $4849: $09
    ld a, [rPuzzleCursorColumn]                   ; $484a: $fa $36 $d6
    sla a                                         ; $484d: $cb $27
    ld c, a                                       ; $484f: $4f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4850: $fa $37 $d6
    swap a                                        ; $4853: $cb $37
    or c                                          ; $4855: $b1
    ld c, a                                       ; $4856: $4f
    ld b, $00                                     ; $4857: $06 $00
    add hl, bc                                    ; $4859: $09
    ld a, [hl+]                                   ; $485a: $2a
    ld [rPuzzleDataIndexLow], a                   ; $485b: $ea $07 $d8
    ld a, [hl]                                    ; $485e: $7e
    ld [rPuzzleDataIndexHigh], a                  ; $485f: $ea $08 $d8
    xor a                                         ; $4862: $af
    ld [rStatePhase_Current], a                   ; $4863: $ea $35 $d6
    ld a, $0a                                     ; $4866: $3e $0a
    ld [rGameState_Current], a                    ; $4868: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $486b: $c3 $1f $1b


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
    ld bc, $003c                                  ; $4972: $01 $3c $00
    call DelayFramesByBC                          ; $4975: $cd $fa $05
    ld a, $05                                     ; $4978: $3e $05
    call CallSoundEffectDispatcher                ; $497a: $cd $b6 $03
    ld c, $00                                     ; $497d: $0e $00
    ld a, $01                                     ; $497f: $3e $01
    call CallSoundEffectDispatcher                ; $4981: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $4984: $cd $99 $03
    ld c, $00                                     ; $4987: $0e $00
    ld a, $01                                     ; $4989: $3e $01
    call CallSoundEffectDispatcher                ; $498b: $cd $b6 $03
    call GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse; $498e: $cd $84 $4b
    call DisableLCDAtVBlank                       ; $4991: $cd $83 $04
    call GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $4994: $cd $c8 $49
    xor a                                         ; $4997: $af
    ld [rStatePhase_Current], a                   ; $4998: $ea $35 $d6
    ld hl, rGameState_Current                     ; $499b: $21 $34 $d6
    dec [hl]                                      ; $499e: $35
    jp RefreshSaveValidationChecksumsAndMirrors   ; $499f: $c3 $1f $1b


GS04_LoadPicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse::
    ld a, [rSelectedSaveSlotIndex]                ; $49a2: $fa $65 $a0
    ld c, a                                       ; $49a5: $4f
    ld b, $00                                     ; $49a6: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $49a8: $21 $8d $a3
    add hl, bc                                    ; $49ab: $09
    ld a, [rSelectedSaveSlotIndex]                ; $49ac: $fa $65 $a0
    ld c, a                                       ; $49af: $4f
    sla a                                         ; $49b0: $cb $27
    add c                                         ; $49b2: $81
    add [hl]                                      ; $49b3: $86
    ld c, a                                       ; $49b4: $4f
    ld b, $00                                     ; $49b5: $06 $00
    ld hl, rSaveSlot1PicrossKinokoCoursePuzzleSelectCursorColumn; $49b7: $21 $90 $a3
    add hl, bc                                    ; $49ba: $09
    ld a, [hl]                                    ; $49bb: $7e
    ld [rPuzzleCursorColumn], a                   ; $49bc: $ea $36 $d6
    ld hl, rSaveSlot1PicrossKinokoCoursePuzzleSelectCursorRow; $49bf: $21 $99 $a3
    add hl, bc                                    ; $49c2: $09
    ld a, [hl]                                    ; $49c3: $7e
    ld [rPuzzleAndMenuCursorRow], a               ; $49c4: $ea $37 $d6
    ret                                           ; $49c7: $c9


GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse::
    ld a, [rSelectedSaveSlotIndex]                ; $49c8: $fa $65 $a0
    ld c, a                                       ; $49cb: $4f
    ld b, $00                                     ; $49cc: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $49ce: $21 $8d $a3
    add hl, bc                                    ; $49d1: $09
    ld a, [rSelectedSaveSlotIndex]                ; $49d2: $fa $65 $a0
    ld c, a                                       ; $49d5: $4f
    sla a                                         ; $49d6: $cb $27
    add c                                         ; $49d8: $81
    add [hl]                                      ; $49d9: $86
    ld c, a                                       ; $49da: $4f
    ld b, $00                                     ; $49db: $06 $00
    ld hl, rSaveSlot1PicrossKinokoCoursePuzzleSelectCursorColumn; $49dd: $21 $90 $a3
    add hl, bc                                    ; $49e0: $09
    ld a, [rPuzzleCursorColumn]                   ; $49e1: $fa $36 $d6
    ld [hl], a                                    ; $49e4: $77
    ld hl, rSaveSlot1PicrossKinokoCoursePuzzleSelectCursorRow; $49e5: $21 $99 $a3
    add hl, bc                                    ; $49e8: $09
    ld a, [rPuzzleAndMenuCursorRow]               ; $49e9: $fa $37 $d6
    ld [hl], a                                    ; $49ec: $77
    ret                                           ; $49ed: $c9


GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame::
    push af                                       ; $49ee: $f5
    ld a, [rPuzzleCursorColumn]                   ; $49ef: $fa $36 $d6
    swap a                                        ; $49f2: $cb $37
    add $20                                       ; $49f4: $c6 $20
    ld b, a                                       ; $49f6: $47
    ld a, [rPuzzleAndMenuCursorRow]               ; $49f7: $fa $37 $d6
    sla a                                         ; $49fa: $cb $27
    sla a                                         ; $49fc: $cb $27
    sla a                                         ; $49fe: $cb $27
    add $32                                       ; $4a00: $c6 $32
    ld c, a                                       ; $4a02: $4f
    pop af                                        ; $4a03: $f1
    add $60                                       ; $4a04: $c6 $60
    jp CopyOAMSpriteById                          ; $4a06: $c3 $ce $20


GS04_HandlePicrossCoursePuzzleSelectDirectionalInput::
    ld a, [rInputButtonsPressedOrRepeated]        ; $4a09: $fa $22 $c3
    and $f0                                       ; $4a0c: $e6 $f0
    ret z                                         ; $4a0e: $c8

    ld c, $0a                                     ; $4a0f: $0e $0a
    ld a, $02                                     ; $4a11: $3e $02
    call CallSoundEffectDispatcher                ; $4a13: $cd $b6 $03
    ld hl, rInputButtonsPressedOrRepeated         ; $4a16: $21 $22 $c3
    bit 5, [hl]                                   ; $4a19: $cb $6e
    jr z, .CheckRight                             ; $4a1b: $28 $09

    ld a, [rPuzzleCursorColumn]                   ; $4a1d: $fa $36 $d6
    dec a                                         ; $4a20: $3d
    and $07                                       ; $4a21: $e6 $07
    ld [rPuzzleCursorColumn], a                   ; $4a23: $ea $36 $d6

.CheckRight:
    bit 4, [hl]                                   ; $4a26: $cb $66
    jr z, .CheckUp                                ; $4a28: $28 $09

    ld a, [rPuzzleCursorColumn]                   ; $4a2a: $fa $36 $d6
    inc a                                         ; $4a2d: $3c
    and $07                                       ; $4a2e: $e6 $07
    ld [rPuzzleCursorColumn], a                   ; $4a30: $ea $36 $d6

.CheckUp:
    bit 6, [hl]                                   ; $4a33: $cb $76
    jr z, .CheckDown                              ; $4a35: $28 $09

    ld a, [rPuzzleAndMenuCursorRow]               ; $4a37: $fa $37 $d6
    dec a                                         ; $4a3a: $3d
    and $07                                       ; $4a3b: $e6 $07
    ld [rPuzzleAndMenuCursorRow], a               ; $4a3d: $ea $37 $d6

.CheckDown:
    bit 7, [hl]                                   ; $4a40: $cb $7e
    jr z, .Return                                 ; $4a42: $28 $09

    ld a, [rPuzzleAndMenuCursorRow]               ; $4a44: $fa $37 $d6
    inc a                                         ; $4a47: $3c
    and $07                                       ; $4a48: $e6 $07
    ld [rPuzzleAndMenuCursorRow], a               ; $4a4a: $ea $37 $d6

.Return:
    ret                                           ; $4a4d: $c9


GS04_PlayCursorPreviewSfxBySelectedCourse::
    ld a, [rSelectedSaveSlotIndex]                ; $4a4e: $fa $65 $a0
    ld c, a                                       ; $4a51: $4f
    ld b, $00                                     ; $4a52: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4a54: $21 $8d $a3
    add hl, bc                                    ; $4a57: $09
    ld a, [hl]                                    ; $4a58: $7e
    and a                                         ; $4a59: $a7
    jr nz, .PlayStarCoursePreviewSfxVariant       ; $4a5a: $20 $12

    ld c, $00                                     ; $4a5c: $0e $00
    ld a, $01                                     ; $4a5e: $3e $01
    call CallSoundEffectDispatcher                ; $4a60: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $4a63: $cd $99 $03
    ld c, $04                                     ; $4a66: $0e $04
    ld a, $01                                     ; $4a68: $3e $01
    call CallSoundEffectDispatcher                ; $4a6a: $cd $b6 $03
    ret                                           ; $4a6d: $c9


.PlayStarCoursePreviewSfxVariant:
    ld c, $00                                     ; $4a6e: $0e $00
    ld a, $01                                     ; $4a70: $3e $01
    call CallSoundEffectDispatcher                ; $4a72: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $4a75: $cd $99 $03
    ld c, $10                                     ; $4a78: $0e $10
    ld a, $01                                     ; $4a7a: $3e $01
    call CallSoundEffectDispatcher                ; $4a7c: $cd $b6 $03
    ret                                           ; $4a7f: $c9


GS04_LoadPicrossCourseSelectGraphicsBySelectedCourse::
    ld a, [rSelectedSaveSlotIndex]                ; $4a80: $fa $65 $a0
    ld c, a                                       ; $4a83: $4f
    ld b, $00                                     ; $4a84: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4a86: $21 $8d $a3
    add hl, bc                                    ; $4a89: $09
    ld a, [hl]                                    ; $4a8a: $7e
    and a                                         ; $4a8b: $a7
    jr nz, .LoadStarCourseGraphicsVariant         ; $4a8c: $20 $2b

    ld a, $0a                                     ; $4a8e: $3e $0a
    ld hl, $7000                                  ; $4a90: $21 $00 $70
    ld de, $9300                                  ; $4a93: $11 $00 $93
    ld bc, $0500                                  ; $4a96: $01 $00 $05
    call BankedTileCopy                           ; $4a99: $cd $e4 $04
    ld a, $0a                                     ; $4a9c: $3e $0a
    ld hl, $7500                                  ; $4a9e: $21 $00 $75
    ld de, $8800                                  ; $4aa1: $11 $00 $88
    ld bc, $0100                                  ; $4aa4: $01 $00 $01
    call BankedTileCopy                           ; $4aa7: $cd $e4 $04
    ld a, $0c                                     ; $4aaa: $3e $0c
    ld hl, $7000                                  ; $4aac: $21 $00 $70
    ld de, $9800                                  ; $4aaf: $11 $00 $98
    ld bc, $0400                                  ; $4ab2: $01 $00 $04
    call BankedTileCopy                           ; $4ab5: $cd $e4 $04
    ret                                           ; $4ab8: $c9


.LoadStarCourseGraphicsVariant:
    ld a, $0a                                     ; $4ab9: $3e $0a
    ld hl, $7600                                  ; $4abb: $21 $00 $76
    ld de, $9300                                  ; $4abe: $11 $00 $93
    ld bc, $0500                                  ; $4ac1: $01 $00 $05
    call BankedTileCopy                           ; $4ac4: $cd $e4 $04
    ld a, $0a                                     ; $4ac7: $3e $0a
    ld hl, $7b00                                  ; $4ac9: $21 $00 $7b
    ld de, $8800                                  ; $4acc: $11 $00 $88
    ld bc, $0100                                  ; $4acf: $01 $00 $01
    call BankedTileCopy                           ; $4ad2: $cd $e4 $04
    ld a, $0c                                     ; $4ad5: $3e $0c
    ld hl, $7400                                  ; $4ad7: $21 $00 $74
    ld de, $9800                                  ; $4ada: $11 $00 $98
    ld bc, $0400                                  ; $4add: $01 $00 $04
    call BankedTileCopy                           ; $4ae0: $cd $e4 $04
    ret                                           ; $4ae3: $c9


GS04_LoadPicrossCourseSelectGraphicsBySelectedCourse_Banked::
    ld a, [rSelectedSaveSlotIndex]                ; $4ae4: $fa $65 $a0
    ld c, a                                       ; $4ae7: $4f
    ld b, $00                                     ; $4ae8: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4aea: $21 $8d $a3
    add hl, bc                                    ; $4aed: $09
    ld a, [hl]                                    ; $4aee: $7e
    and a                                         ; $4aef: $a7
    jr nz, .LoadStarCourseGraphicsAndTilemapVariant; $4af0: $20 $2d

    ld a, $0a                                     ; $4af2: $3e $0a
    ld hl, $7000                                  ; $4af4: $21 $00 $70
    ld de, $9300                                  ; $4af7: $11 $00 $93
    ld bc, $0500                                  ; $4afa: $01 $00 $05
    call BankedTileCopy                           ; $4afd: $cd $e4 $04
    ld a, $0a                                     ; $4b00: $3e $0a
    ld hl, $7500                                  ; $4b02: $21 $00 $75
    ld de, $8800                                  ; $4b05: $11 $00 $88
    ld bc, $0100                                  ; $4b08: $01 $00 $01
    call BankedTileCopy                           ; $4b0b: $cd $e4 $04
    ld a, $04                                     ; $4b0e: $3e $04
    ld hl, $6c00                                  ; $4b10: $21 $00 $6c
    ld de, $9800                                  ; $4b13: $11 $00 $98
    ld bc, $0400                                  ; $4b16: $01 $00 $04
    call BankedTileCopy                           ; $4b19: $cd $e4 $04
    jp ReturnFromBankedJumpRestoreBank            ; $4b1c: $c3 $ea $05


.LoadStarCourseGraphicsAndTilemapVariant:
    ld a, $0a                                     ; $4b1f: $3e $0a
    ld hl, $7600                                  ; $4b21: $21 $00 $76
    ld de, $9300                                  ; $4b24: $11 $00 $93
    ld bc, $0500                                  ; $4b27: $01 $00 $05
    call BankedTileCopy                           ; $4b2a: $cd $e4 $04
    ld a, $0a                                     ; $4b2d: $3e $0a
    ld hl, $7b00                                  ; $4b2f: $21 $00 $7b
    ld de, $8800                                  ; $4b32: $11 $00 $88
    ld bc, $0100                                  ; $4b35: $01 $00 $01
    call BankedTileCopy                           ; $4b38: $cd $e4 $04
    ld a, $0a                                     ; $4b3b: $3e $0a
    ld hl, $7c00                                  ; $4b3d: $21 $00 $7c
    ld de, $9100                                  ; $4b40: $11 $00 $91
    ld bc, $0100                                  ; $4b43: $01 $00 $01
    call BankedTileCopy                           ; $4b46: $cd $e4 $04
    ld a, $04                                     ; $4b49: $3e $04
    ld hl, $7000                                  ; $4b4b: $21 $00 $70
    ld de, $9800                                  ; $4b4e: $11 $00 $98
    ld bc, $0400                                  ; $4b51: $01 $00 $04
    call BankedTileCopy                           ; $4b54: $cd $e4 $04
    jp ReturnFromBankedJumpRestoreBank            ; $4b57: $c3 $ea $05


GS04_PlayPicrossCourseSelectFadeInBySelectedCourse::
    ld a, [rSelectedSaveSlotIndex]                ; $4b5a: $fa $65 $a0
    ld c, a                                       ; $4b5d: $4f
    ld b, $00                                     ; $4b5e: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4b60: $21 $8d $a3
    add hl, bc                                    ; $4b63: $09
    ld a, [hl]                                    ; $4b64: $7e
    and a                                         ; $4b65: $a7
    jr nz, .PlayStarCourseFadeInVariant           ; $4b66: $20 $0e

    ld b, $03                                     ; $4b68: $06 $03
    ld hl, $46f4                                  ; $4b6a: $21 $f4 $46
    ld c, $09                                     ; $4b6d: $0e $09
    ld de, $0084                                  ; $4b6f: $11 $84 $00
    call PlayScreenTransitionFadeIn               ; $4b72: $cd $0d $04
    ret                                           ; $4b75: $c9


.PlayStarCourseFadeInVariant:
    ld b, $03                                     ; $4b76: $06 $03
    ld hl, $4700                                  ; $4b78: $21 $00 $47
    ld c, $0a                                     ; $4b7b: $0e $0a
    ld de, $0094                                  ; $4b7d: $11 $94 $00
    call PlayScreenTransitionFadeIn               ; $4b80: $cd $0d $04
    ret                                           ; $4b83: $c9


GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse::
    ld a, [rSelectedSaveSlotIndex]                ; $4b84: $fa $65 $a0
    ld c, a                                       ; $4b87: $4f
    ld b, $00                                     ; $4b88: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4b8a: $21 $8d $a3
    add hl, bc                                    ; $4b8d: $09
    ld a, [hl]                                    ; $4b8e: $7e
    and a                                         ; $4b8f: $a7
    jr nz, .PlayStarCourseFadeOutVariant          ; $4b90: $20 $0e

    ld b, $03                                     ; $4b92: $06 $03
    ld hl, $46ff                                  ; $4b94: $21 $ff $46
    ld c, $09                                     ; $4b97: $0e $09
    ld de, $0093                                  ; $4b99: $11 $93 $00
    call PlayScreenTransitionFadeOut              ; $4b9c: $cd $4e $04
    ret                                           ; $4b9f: $c9


.PlayStarCourseFadeOutVariant:
    ld b, $03                                     ; $4ba0: $06 $03
    ld hl, $470b                                  ; $4ba2: $21 $0b $47
    ld c, $0a                                     ; $4ba5: $0e $0a
    ld de, $00a3                                  ; $4ba7: $11 $a3 $00
    call PlayScreenTransitionFadeOut              ; $4baa: $cd $4e $04
    ret                                           ; $4bad: $c9


GS04_PlayPicrossCourseSelectFadeInBySelectedCourse_Banked::
    ld a, [rSelectedSaveSlotIndex]                ; $4bae: $fa $65 $a0
    ld c, a                                       ; $4bb1: $4f
    ld b, $00                                     ; $4bb2: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4bb4: $21 $8d $a3
    add hl, bc                                    ; $4bb7: $09
    ld a, [hl]                                    ; $4bb8: $7e
    and a                                         ; $4bb9: $a7
    jr nz, .PlayStarCourseFadeInBankedVariant     ; $4bba: $20 $10

    ld b, $03                                     ; $4bbc: $06 $03
    ld hl, $46f4                                  ; $4bbe: $21 $f4 $46
    ld c, $0c                                     ; $4bc1: $0e $0c
    ld de, $0084                                  ; $4bc3: $11 $84 $00
    call PlayScreenTransitionFadeIn               ; $4bc6: $cd $0d $04
    jp ReturnFromBankedJumpRestoreBank            ; $4bc9: $c3 $ea $05


.PlayStarCourseFadeInBankedVariant:
    ld b, $03                                     ; $4bcc: $06 $03
    ld hl, $4700                                  ; $4bce: $21 $00 $47
    ld c, $0d                                     ; $4bd1: $0e $0d
    ld de, $0094                                  ; $4bd3: $11 $94 $00
    call PlayScreenTransitionFadeIn               ; $4bd6: $cd $0d $04
    jp ReturnFromBankedJumpRestoreBank            ; $4bd9: $c3 $ea $05


GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse_Banked::
    ld a, [rSelectedSaveSlotIndex]                ; $4bdc: $fa $65 $a0
    ld c, a                                       ; $4bdf: $4f
    ld b, $00                                     ; $4be0: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4be2: $21 $8d $a3
    add hl, bc                                    ; $4be5: $09
    ld a, [hl]                                    ; $4be6: $7e
    and a                                         ; $4be7: $a7
    jr nz, .PlayStarCourseFadeOutBankedVariant    ; $4be8: $20 $10

    ld b, $03                                     ; $4bea: $06 $03
    ld hl, $46ff                                  ; $4bec: $21 $ff $46
    ld c, $0c                                     ; $4bef: $0e $0c
    ld de, $0093                                  ; $4bf1: $11 $93 $00
    call PlayScreenTransitionFadeOut              ; $4bf4: $cd $4e $04
    jp ReturnFromBankedJumpRestoreBank            ; $4bf7: $c3 $ea $05


.PlayStarCourseFadeOutBankedVariant:
    ld b, $03                                     ; $4bfa: $06 $03
    ld hl, $470b                                  ; $4bfc: $21 $0b $47
    ld c, $0d                                     ; $4bff: $0e $0d
    ld de, $00a3                                  ; $4c01: $11 $a3 $00
    call PlayScreenTransitionFadeOut              ; $4c04: $cd $4e $04
    jp ReturnFromBankedJumpRestoreBank            ; $4c07: $c3 $ea $05


GS04_DrawCompletedPuzzleMarkersForSelectedSaveSlotAndCourse::
    ld a, [rSelectedSaveSlotIndex]                ; $4c0a: $fa $65 $a0
    ld c, a                                       ; $4c0d: $4f
    ld b, $00                                     ; $4c0e: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4c10: $21 $8d $a3
    add hl, bc                                    ; $4c13: $09
    ld a, [hl]                                    ; $4c14: $7e
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot; $4c15: $21 $c8 $51
    add hl, bc                                    ; $4c18: $09
    ld c, [hl]                                    ; $4c19: $4e
    add hl, bc                                    ; $4c1a: $09
    sla a                                         ; $4c1b: $cb $27
    ld c, a                                       ; $4c1d: $4f
    add hl, bc                                    ; $4c1e: $09
    ld a, [hl+]                                   ; $4c1f: $2a
    ld h, [hl]                                    ; $4c20: $66
    ld l, a                                       ; $4c21: $6f
    ld b, $00                                     ; $4c22: $06 $00

.BeginNextStatusGridRowScan:
    ld c, $00                                     ; $4c24: $0e $00

.ScanStatusGridCellForCompletedMarker:
    ld a, [hl+]                                   ; $4c26: $2a
    bit 7, a                                      ; $4c27: $cb $7f
    jr z, .AdvanceToNextStatusGridColumn          ; $4c29: $28 $03

    call GS04_DrawCompletedPuzzleMarkerAtGridPosition; $4c2b: $cd $78 $4c

.AdvanceToNextStatusGridColumn:
    inc c                                         ; $4c2e: $0c
    ld a, c                                       ; $4c2f: $79
    cp $08                                        ; $4c30: $fe $08
    jr nz, .ScanStatusGridCellForCompletedMarker  ; $4c32: $20 $f2

    inc b                                         ; $4c34: $04
    ld a, b                                       ; $4c35: $78
    cp $08                                        ; $4c36: $fe $08
    jr nz, .BeginNextStatusGridRowScan            ; $4c38: $20 $ea

    ret                                           ; $4c3a: $c9


GS04_DrawCompletedPuzzleMarkersForSelectedSaveSlotAndCourseExceptCurrentSelection::
    ld a, [rSelectedSaveSlotIndex]                ; $4c3b: $fa $65 $a0
    ld c, a                                       ; $4c3e: $4f
    ld b, $00                                     ; $4c3f: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4c41: $21 $8d $a3
    add hl, bc                                    ; $4c44: $09
    ld a, [hl]                                    ; $4c45: $7e
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot; $4c46: $21 $c8 $51
    add hl, bc                                    ; $4c49: $09
    ld c, [hl]                                    ; $4c4a: $4e
    add hl, bc                                    ; $4c4b: $09
    sla a                                         ; $4c4c: $cb $27
    ld c, a                                       ; $4c4e: $4f
    add hl, bc                                    ; $4c4f: $09
    ld a, [hl+]                                   ; $4c50: $2a
    ld h, [hl]                                    ; $4c51: $66
    ld l, a                                       ; $4c52: $6f
    ld b, $00                                     ; $4c53: $06 $00

.BeginNextStatusGridRowScan:
    ld c, $00                                     ; $4c55: $0e $00

.ScanStatusGridCellForCompletedMarker:
    ld a, [hl+]                                   ; $4c57: $2a
    bit 7, a                                      ; $4c58: $cb $7f
    jr z, .AdvanceToNextStatusGridColumn          ; $4c5a: $28 $0f

    ld a, [rPuzzleCursorColumn]                   ; $4c5c: $fa $36 $d6
    cp c                                          ; $4c5f: $b9
    jr nz, .DrawCompletedMarkerForNonSelectedCell ; $4c60: $20 $06

    ld a, [rPuzzleAndMenuCursorRow]               ; $4c62: $fa $37 $d6
    cp b                                          ; $4c65: $b8
    jr z, .AdvanceToNextStatusGridColumn          ; $4c66: $28 $03

.DrawCompletedMarkerForNonSelectedCell:
    call GS04_DrawCompletedPuzzleMarkerAtGridPosition; $4c68: $cd $78 $4c

.AdvanceToNextStatusGridColumn:
    inc c                                         ; $4c6b: $0c
    ld a, c                                       ; $4c6c: $79
    cp $08                                        ; $4c6d: $fe $08
    jr nz, .ScanStatusGridCellForCompletedMarker  ; $4c6f: $20 $e6

    inc b                                         ; $4c71: $04
    ld a, b                                       ; $4c72: $78
    cp $08                                        ; $4c73: $fe $08
    jr nz, .BeginNextStatusGridRowScan            ; $4c75: $20 $de

    ret                                           ; $4c77: $c9


GS04_DrawCompletedPuzzleMarkerAtGridPosition::
    push bc                                       ; $4c78: $c5
    push hl                                       ; $4c79: $e5
    ld l, b                                       ; $4c7a: $68
    ld h, $00                                     ; $4c7b: $26 $00
    sla l                                         ; $4c7d: $cb $25
    rl h                                          ; $4c7f: $cb $14
    sla l                                         ; $4c81: $cb $25
    rl h                                          ; $4c83: $cb $14
    sla l                                         ; $4c85: $cb $25
    rl h                                          ; $4c87: $cb $14
    sla l                                         ; $4c89: $cb $25
    rl h                                          ; $4c8b: $cb $14
    sla l                                         ; $4c8d: $cb $25
    rl h                                          ; $4c8f: $cb $14
    sla c                                         ; $4c91: $cb $21
    ld b, $00                                     ; $4c93: $06 $00
    add hl, bc                                    ; $4c95: $09
    ld bc, $98c4                                  ; $4c96: $01 $c4 $98
    add hl, bc                                    ; $4c99: $09
    ld a, h                                       ; $4c9a: $7c
    ld [rSharedSingleTileCommandStreamDestHigh], a; $4c9b: $ea $00 $c1
    ld a, l                                       ; $4c9e: $7d
    ld [rSharedSingleTileCommandStreamDestLow], a ; $4c9f: $ea $01 $c1
    ld a, $01                                     ; $4ca2: $3e $01
    ld [rSharedSingleTileCommandStreamTileCount], a; $4ca4: $ea $02 $c1
    ld a, $55                                     ; $4ca7: $3e $55
    ld [rSharedSingleTileCommandStreamTileId], a  ; $4ca9: $ea $03 $c1
    ld a, $00                                     ; $4cac: $3e $00
    ld [rSharedSingleTileCommandStreamTerminator], a; $4cae: $ea $04 $c1
    ld a, $00                                     ; $4cb1: $3e $00
    ld bc, rSharedSingleTileCommandStreamDestHigh ; $4cb3: $01 $00 $c1
    call QueueCommandStreamAndProcessIfLCDOff     ; $4cb6: $cd $38 $07
    pop hl                                        ; $4cb9: $e1
    pop bc                                        ; $4cba: $c1
    ret                                           ; $4cbb: $c9


GS04_IncrementSelectedPicrossCoursePuzzleClearCountIfAllowed::
    ld a, [rSelectedSaveSlotIndex]                ; $4cbc: $fa $65 $a0
    ld c, a                                       ; $4cbf: $4f
    ld b, $00                                     ; $4cc0: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4cc2: $21 $8d $a3
    add hl, bc                                    ; $4cc5: $09
    ld a, [hl]                                    ; $4cc6: $7e
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot; $4cc7: $21 $c8 $51
    add hl, bc                                    ; $4cca: $09
    ld c, [hl]                                    ; $4ccb: $4e
    add hl, bc                                    ; $4ccc: $09
    sla a                                         ; $4ccd: $cb $27
    ld c, a                                       ; $4ccf: $4f
    add hl, bc                                    ; $4cd0: $09
    ld a, [hl+]                                   ; $4cd1: $2a
    ld h, [hl]                                    ; $4cd2: $66
    ld l, a                                       ; $4cd3: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4cd4: $fa $37 $d6
    sla a                                         ; $4cd7: $cb $27
    sla a                                         ; $4cd9: $cb $27
    sla a                                         ; $4cdb: $cb $27
    ld c, a                                       ; $4cdd: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4cde: $fa $36 $d6
    or c                                          ; $4ce1: $b1
    ld c, a                                       ; $4ce2: $4f
    ld b, $00                                     ; $4ce3: $06 $00
    add hl, bc                                    ; $4ce5: $09
    bit 7, [hl]                                   ; $4ce6: $cb $7e
    ret nz                                        ; $4ce8: $c0

    ld a, [hl]                                    ; $4ce9: $7e
    cp $63                                        ; $4cea: $fe $63
    ret z                                         ; $4cec: $c8

    inc [hl]                                      ; $4ced: $34
    ret                                           ; $4cee: $c9


GS04_UpdateSelectedPicrossCoursePuzzleClearStatusAndTimes::
    xor a                                         ; $4cef: $af
    ld [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag], a; $4cf0: $ea $42 $d8
    ld a, [rSelectedSaveSlotIndex]                ; $4cf3: $fa $65 $a0
    ld c, a                                       ; $4cf6: $4f
    ld b, $00                                     ; $4cf7: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4cf9: $21 $8d $a3
    add hl, bc                                    ; $4cfc: $09
    ld a, [hl]                                    ; $4cfd: $7e
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot; $4cfe: $21 $c8 $51
    add hl, bc                                    ; $4d01: $09
    ld c, [hl]                                    ; $4d02: $4e
    add hl, bc                                    ; $4d03: $09
    sla a                                         ; $4d04: $cb $27
    ld c, a                                       ; $4d06: $4f
    add hl, bc                                    ; $4d07: $09
    ld a, [hl+]                                   ; $4d08: $2a
    ld h, [hl]                                    ; $4d09: $66
    ld l, a                                       ; $4d0a: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4d0b: $fa $37 $d6
    sla a                                         ; $4d0e: $cb $27
    sla a                                         ; $4d10: $cb $27
    sla a                                         ; $4d12: $cb $27
    ld c, a                                       ; $4d14: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4d15: $fa $36 $d6
    or c                                          ; $4d18: $b1
    ld c, a                                       ; $4d19: $4f
    ld b, $00                                     ; $4d1a: $06 $00
    add hl, bc                                    ; $4d1c: $09
    bit 7, [hl]                                   ; $4d1d: $cb $7e
    push af                                       ; $4d1f: $f5
    jr nz, .UpdateBestClearTime                   ; $4d20: $20 $54

    push hl                                       ; $4d22: $e5
    ld a, [rSelectedSaveSlotIndex]                ; $4d23: $fa $65 $a0
    ld c, a                                       ; $4d26: $4f
    ld b, $00                                     ; $4d27: $06 $00
    ld hl, rSaveSlot1PicrossKinokoStarClearedPuzzleCount; $4d29: $21 $8a $a3
    add hl, bc                                    ; $4d2c: $09
    inc [hl]                                      ; $4d2d: $34
    pop hl                                        ; $4d2e: $e1
    set 7, [hl]                                   ; $4d2f: $cb $fe
    ld a, [rSelectedSaveSlotIndex]                ; $4d31: $fa $65 $a0
    ld c, a                                       ; $4d34: $4f
    ld b, $00                                     ; $4d35: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4d37: $21 $8d $a3
    add hl, bc                                    ; $4d3a: $09
    ld a, [hl]                                    ; $4d3b: $7e
    ld hl, GS04_PicrossCourseTimeDataPointerTableOffsetBySaveSlot; $4d3c: $21 $b3 $51
    add hl, bc                                    ; $4d3f: $09
    ld c, [hl]                                    ; $4d40: $4e
    add hl, bc                                    ; $4d41: $09
    sla a                                         ; $4d42: $cb $27
    ld c, a                                       ; $4d44: $4f
    add hl, bc                                    ; $4d45: $09
    ld a, [hl+]                                   ; $4d46: $2a
    ld h, [hl]                                    ; $4d47: $66
    ld l, a                                       ; $4d48: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4d49: $fa $37 $d6
    sla a                                         ; $4d4c: $cb $27
    sla a                                         ; $4d4e: $cb $27
    sla a                                         ; $4d50: $cb $27
    ld c, a                                       ; $4d52: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4d53: $fa $36 $d6
    or c                                          ; $4d56: $b1
    ld c, a                                       ; $4d57: $4f
    sla a                                         ; $4d58: $cb $27
    add c                                         ; $4d5a: $81
    ld c, a                                       ; $4d5b: $4f
    ld b, $00                                     ; $4d5c: $06 $00
    add hl, bc                                    ; $4d5e: $09
    call EncodePuzzleTimerToPackedClearTimeBC     ; $4d5f: $cd $54 $51
    ld [hl], c                                    ; $4d62: $71
    inc hl                                        ; $4d63: $23
    ld a, [hl]                                    ; $4d64: $7e
    and $f0                                       ; $4d65: $e6 $f0
    or b                                          ; $4d67: $b0
    ld [hl], a                                    ; $4d68: $77
    ld a, $01                                     ; $4d69: $3e $01
    ld [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag], a; $4d6b: $ea $42 $d8
    ld a, [rHintPopupSelection]                   ; $4d6e: $fa $33 $d8
    and a                                         ; $4d71: $a7
    jr nz, .UpdateBestClearTime                   ; $4d72: $20 $02

    set 3, [hl]                                   ; $4d74: $cb $de

.UpdateBestClearTime:
    ld a, [rSelectedSaveSlotIndex]                ; $4d76: $fa $65 $a0
    ld c, a                                       ; $4d79: $4f
    ld b, $00                                     ; $4d7a: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4d7c: $21 $8d $a3
    add hl, bc                                    ; $4d7f: $09
    ld a, [hl]                                    ; $4d80: $7e
    ld hl, GS04_PicrossCourseTimeDataPointerTableOffsetBySaveSlot; $4d81: $21 $b3 $51
    add hl, bc                                    ; $4d84: $09
    ld c, [hl]                                    ; $4d85: $4e
    add hl, bc                                    ; $4d86: $09
    sla a                                         ; $4d87: $cb $27
    ld c, a                                       ; $4d89: $4f
    add hl, bc                                    ; $4d8a: $09
    ld a, [hl+]                                   ; $4d8b: $2a
    ld h, [hl]                                    ; $4d8c: $66
    ld l, a                                       ; $4d8d: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4d8e: $fa $37 $d6
    sla a                                         ; $4d91: $cb $27
    sla a                                         ; $4d93: $cb $27
    sla a                                         ; $4d95: $cb $27
    ld c, a                                       ; $4d97: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4d98: $fa $36 $d6
    or c                                          ; $4d9b: $b1
    ld c, a                                       ; $4d9c: $4f
    sla a                                         ; $4d9d: $cb $27
    add c                                         ; $4d9f: $81
    ld c, a                                       ; $4da0: $4f
    ld b, $00                                     ; $4da1: $06 $00
    add hl, bc                                    ; $4da3: $09
    inc hl                                        ; $4da4: $23
    push hl                                       ; $4da5: $e5
    call EncodePuzzleTimerToPackedClearTimeBC     ; $4da6: $cd $54 $51
    ld a, [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag]; $4da9: $fa $42 $d8
    and a                                         ; $4dac: $a7
    jr nz, .StoreNewBestClearTime                 ; $4dad: $20 $18

    ld a, [hl+]                                   ; $4daf: $2a
    and $70                                       ; $4db0: $e6 $70
    swap a                                        ; $4db2: $cb $37
    cp b                                          ; $4db4: $b8
    jr z, .CompareBestClearTimeLowByteAndHintUsedOnTie; $4db5: $28 $04

    jr nc, .SkipBestClearTimeUpdate               ; $4db7: $30 $22

    jr .StoreNewBestClearTime                     ; $4db9: $18 $0c

.CompareBestClearTimeLowByteAndHintUsedOnTie:
    ld a, [hl]                                    ; $4dbb: $7e
    cp c                                          ; $4dbc: $b9
    jr c, .StoreNewBestClearTime                  ; $4dbd: $38 $08

    jr nz, .SkipBestClearTimeUpdate               ; $4dbf: $20 $1a

    ld a, [rHintPopupSelection]                   ; $4dc1: $fa $33 $d8
    and a                                         ; $4dc4: $a7
    jr z, .SkipBestClearTimeUpdate                ; $4dc5: $28 $14

.StoreNewBestClearTime:
    pop hl                                        ; $4dc7: $e1
    ld a, [hl]                                    ; $4dc8: $7e
    and $0f                                       ; $4dc9: $e6 $0f
    swap b                                        ; $4dcb: $cb $30
    or b                                          ; $4dcd: $b0
    ld [hl+], a                                   ; $4dce: $22
    ld [hl], c                                    ; $4dcf: $71
    ld a, [rHintPopupSelection]                   ; $4dd0: $fa $33 $d8
    and a                                         ; $4dd3: $a7
    jr nz, .ReturnFromClearStatusAndTimeUpdate    ; $4dd4: $20 $06

    dec hl                                        ; $4dd6: $2b
    set 7, [hl]                                   ; $4dd7: $cb $fe
    jr .ReturnFromClearStatusAndTimeUpdate        ; $4dd9: $18 $01

.SkipBestClearTimeUpdate:
    pop hl                                        ; $4ddb: $e1

.ReturnFromClearStatusAndTimeUpdate:
    pop af                                        ; $4ddc: $f1
    ret                                           ; $4ddd: $c9


GS04_DrawSelectedPicrossCoursePuzzleInfoPanel::
    ld a, [rSelectedSaveSlotIndex]                ; $4dde: $fa $65 $a0
    ld c, a                                       ; $4de1: $4f
    ld b, $00                                     ; $4de2: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4de4: $21 $8d $a3
    add hl, bc                                    ; $4de7: $09
    ld a, [hl]                                    ; $4de8: $7e
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot; $4de9: $21 $c8 $51
    add hl, bc                                    ; $4dec: $09
    ld c, [hl]                                    ; $4ded: $4e
    add hl, bc                                    ; $4dee: $09
    sla a                                         ; $4def: $cb $27
    ld c, a                                       ; $4df1: $4f
    add hl, bc                                    ; $4df2: $09
    ld a, [hl+]                                   ; $4df3: $2a
    ld h, [hl]                                    ; $4df4: $66
    ld l, a                                       ; $4df5: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4df6: $fa $37 $d6
    sla a                                         ; $4df9: $cb $27
    sla a                                         ; $4dfb: $cb $27
    sla a                                         ; $4dfd: $cb $27
    ld c, a                                       ; $4dff: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4e00: $fa $36 $d6
    or c                                          ; $4e03: $b1
    ld c, a                                       ; $4e04: $4f
    ld b, $00                                     ; $4e05: $06 $00
    add hl, bc                                    ; $4e07: $09
    ld a, [hl]                                    ; $4e08: $7e
    push af                                       ; $4e09: $f5
    and $7f                                       ; $4e0a: $e6 $7f
    call SplitAToDecimalDigitsAndPushHundredsTens ; $4e0c: $cd $72 $19
    add $51                                       ; $4e0f: $c6 $51
    ld bc, $4818                                  ; $4e11: $01 $18 $48
    call CopyOAMSpriteById                        ; $4e14: $cd $ce $20
    pop af                                        ; $4e17: $f1
    cp $0a                                        ; $4e18: $fe $0a
    jr z, .AfterTimesClearedDigits                ; $4e1a: $28 $08

    add $51                                       ; $4e1c: $c6 $51
    ld bc, $4018                                  ; $4e1e: $01 $18 $40
    call CopyOAMSpriteById                        ; $4e21: $cd $ce $20

.AfterTimesClearedDigits:
    pop af                                        ; $4e24: $f1
    pop af                                        ; $4e25: $f1
    bit 7, a                                      ; $4e26: $cb $7f
    jp z, GS04_DrawSelectedPicrossCoursePuzzleInfoPanel_DrawUnclearedPlaceholders; $4e28: $ca $0d $4f

    ld a, [rSelectedSaveSlotIndex]                ; $4e2b: $fa $65 $a0
    ld c, a                                       ; $4e2e: $4f
    ld b, $00                                     ; $4e2f: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4e31: $21 $8d $a3
    add hl, bc                                    ; $4e34: $09
    ld a, [hl]                                    ; $4e35: $7e
    ld hl, GS04_PicrossCourseTimeDataPointerTableOffsetBySaveSlot; $4e36: $21 $b3 $51
    add hl, bc                                    ; $4e39: $09
    ld c, [hl]                                    ; $4e3a: $4e
    add hl, bc                                    ; $4e3b: $09
    sla a                                         ; $4e3c: $cb $27
    ld c, a                                       ; $4e3e: $4f
    add hl, bc                                    ; $4e3f: $09
    ld a, [hl+]                                   ; $4e40: $2a
    ld h, [hl]                                    ; $4e41: $66
    ld l, a                                       ; $4e42: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4e43: $fa $37 $d6
    sla a                                         ; $4e46: $cb $27
    sla a                                         ; $4e48: $cb $27
    sla a                                         ; $4e4a: $cb $27
    ld c, a                                       ; $4e4c: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4e4d: $fa $36 $d6
    or c                                          ; $4e50: $b1
    ld c, a                                       ; $4e51: $4f
    sla a                                         ; $4e52: $cb $27
    add c                                         ; $4e54: $81
    ld c, a                                       ; $4e55: $4f
    ld b, $00                                     ; $4e56: $06 $00
    add hl, bc                                    ; $4e58: $09
    ld c, [hl]                                    ; $4e59: $4e
    inc hl                                        ; $4e5a: $23
    ld b, [hl]                                    ; $4e5b: $46
    call DecodePackedPuzzleClearTimeToBCDDigits   ; $4e5c: $cd $82 $51
    push bc                                       ; $4e5f: $c5
    ld a, b                                       ; $4e60: $78
    and $f0                                       ; $4e61: $e6 $f0
    swap a                                        ; $4e63: $cb $37
    add $51                                       ; $4e65: $c6 $51
    ld bc, $0818                                  ; $4e67: $01 $18 $08
    call CopyOAMSpriteById                        ; $4e6a: $cd $ce $20
    pop bc                                        ; $4e6d: $c1
    push bc                                       ; $4e6e: $c5
    ld a, b                                       ; $4e6f: $78
    and $0f                                       ; $4e70: $e6 $0f
    add $51                                       ; $4e72: $c6 $51
    ld bc, $1018                                  ; $4e74: $01 $18 $10
    call CopyOAMSpriteById                        ; $4e77: $cd $ce $20
    pop bc                                        ; $4e7a: $c1
    push bc                                       ; $4e7b: $c5
    ld a, c                                       ; $4e7c: $79
    and $f0                                       ; $4e7d: $e6 $f0
    swap a                                        ; $4e7f: $cb $37
    add $51                                       ; $4e81: $c6 $51
    ld bc, $2018                                  ; $4e83: $01 $18 $20
    call CopyOAMSpriteById                        ; $4e86: $cd $ce $20
    pop bc                                        ; $4e89: $c1
    ld a, c                                       ; $4e8a: $79
    and $0f                                       ; $4e8b: $e6 $0f
    add $51                                       ; $4e8d: $c6 $51
    ld bc, $2818                                  ; $4e8f: $01 $18 $28
    call CopyOAMSpriteById                        ; $4e92: $cd $ce $20
    ld a, [hl]                                    ; $4e95: $7e
    call GS04_UpdateFirstClearTimeHintUsedIconTile; $4e96: $cd $b4 $50
    ld a, [rSelectedSaveSlotIndex]                ; $4e99: $fa $65 $a0
    ld c, a                                       ; $4e9c: $4f
    ld b, $00                                     ; $4e9d: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4e9f: $21 $8d $a3
    add hl, bc                                    ; $4ea2: $09
    ld a, [hl]                                    ; $4ea3: $7e
    ld hl, GS04_PicrossCourseTimeDataPointerTableOffsetBySaveSlot; $4ea4: $21 $b3 $51
    add hl, bc                                    ; $4ea7: $09
    ld c, [hl]                                    ; $4ea8: $4e
    add hl, bc                                    ; $4ea9: $09
    sla a                                         ; $4eaa: $cb $27
    ld c, a                                       ; $4eac: $4f
    add hl, bc                                    ; $4ead: $09
    ld a, [hl+]                                   ; $4eae: $2a
    ld h, [hl]                                    ; $4eaf: $66
    ld l, a                                       ; $4eb0: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4eb1: $fa $37 $d6
    sla a                                         ; $4eb4: $cb $27
    sla a                                         ; $4eb6: $cb $27
    sla a                                         ; $4eb8: $cb $27
    ld c, a                                       ; $4eba: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4ebb: $fa $36 $d6
    or c                                          ; $4ebe: $b1
    ld c, a                                       ; $4ebf: $4f
    sla a                                         ; $4ec0: $cb $27
    add c                                         ; $4ec2: $81
    ld c, a                                       ; $4ec3: $4f
    ld b, $00                                     ; $4ec4: $06 $00
    add hl, bc                                    ; $4ec6: $09
    inc hl                                        ; $4ec7: $23
    ld a, [hl+]                                   ; $4ec8: $2a
    and $f0                                       ; $4ec9: $e6 $f0
    swap a                                        ; $4ecb: $cb $37
    ld b, a                                       ; $4ecd: $47
    ld c, [hl]                                    ; $4ece: $4e
    call DecodePackedPuzzleClearTimeToBCDDigits   ; $4ecf: $cd $82 $51
    push bc                                       ; $4ed2: $c5
    ld a, b                                       ; $4ed3: $78
    and $f0                                       ; $4ed4: $e6 $f0
    swap a                                        ; $4ed6: $cb $37
    add $51                                       ; $4ed8: $c6 $51
    ld bc, $6818                                  ; $4eda: $01 $18 $68
    call CopyOAMSpriteById                        ; $4edd: $cd $ce $20
    pop bc                                        ; $4ee0: $c1
    push bc                                       ; $4ee1: $c5
    ld a, b                                       ; $4ee2: $78
    and $0f                                       ; $4ee3: $e6 $0f
    add $51                                       ; $4ee5: $c6 $51
    ld bc, $7018                                  ; $4ee7: $01 $18 $70
    call CopyOAMSpriteById                        ; $4eea: $cd $ce $20
    pop bc                                        ; $4eed: $c1
    push bc                                       ; $4eee: $c5
    ld a, c                                       ; $4eef: $79
    and $f0                                       ; $4ef0: $e6 $f0
    swap a                                        ; $4ef2: $cb $37
    add $51                                       ; $4ef4: $c6 $51
    ld bc, $8018                                  ; $4ef6: $01 $18 $80
    call CopyOAMSpriteById                        ; $4ef9: $cd $ce $20
    pop bc                                        ; $4efc: $c1
    ld a, c                                       ; $4efd: $79
    and $0f                                       ; $4efe: $e6 $0f
    add $51                                       ; $4f00: $c6 $51
    ld bc, $8818                                  ; $4f02: $01 $18 $88
    call CopyOAMSpriteById                        ; $4f05: $cd $ce $20
    dec hl                                        ; $4f08: $2b
    ld a, [hl]                                    ; $4f09: $7e
    jp GS04_UpdateBestClearTimeHintUsedIconTile   ; $4f0a: $c3 $d9 $50


GS04_DrawSelectedPicrossCoursePuzzleInfoPanel_DrawUnclearedPlaceholders::
    ld a, $80                                     ; $4f0d: $3e $80
    ld bc, $0818                                  ; $4f0f: $01 $18 $08
    call CopyOAMSpriteById                        ; $4f12: $cd $ce $20
    ld a, $80                                     ; $4f15: $3e $80
    ld bc, $1018                                  ; $4f17: $01 $18 $10
    call CopyOAMSpriteById                        ; $4f1a: $cd $ce $20
    ld a, $80                                     ; $4f1d: $3e $80
    ld bc, $2018                                  ; $4f1f: $01 $18 $20
    call CopyOAMSpriteById                        ; $4f22: $cd $ce $20
    ld a, $80                                     ; $4f25: $3e $80
    ld bc, $2818                                  ; $4f27: $01 $18 $28
    call CopyOAMSpriteById                        ; $4f2a: $cd $ce $20
    ld a, $80                                     ; $4f2d: $3e $80
    ld bc, $6818                                  ; $4f2f: $01 $18 $68
    call CopyOAMSpriteById                        ; $4f32: $cd $ce $20
    ld a, $80                                     ; $4f35: $3e $80
    ld bc, $7018                                  ; $4f37: $01 $18 $70
    call CopyOAMSpriteById                        ; $4f3a: $cd $ce $20
    ld a, $80                                     ; $4f3d: $3e $80
    ld bc, $8018                                  ; $4f3f: $01 $18 $80
    call CopyOAMSpriteById                        ; $4f42: $cd $ce $20
    ld a, $80                                     ; $4f45: $3e $80
    ld bc, $8818                                  ; $4f47: $01 $18 $88
    call CopyOAMSpriteById                        ; $4f4a: $cd $ce $20
    xor a                                         ; $4f4d: $af
    call GS04_UpdateFirstClearTimeHintUsedIconTile; $4f4e: $cd $b4 $50
    jp GS04_UpdateBestClearTimeHintUsedIconTile   ; $4f51: $c3 $d9 $50


GS04_DrawSelectedPicrossCoursePuzzleInfoPanelFromSelectedPuzzleCache::
    ld a, [rSelectedPuzzleStatusData]             ; $4f54: $fa $4c $d8
    push af                                       ; $4f57: $f5
    and $7f                                       ; $4f58: $e6 $7f
    call SplitAToDecimalDigitsAndPushHundredsTens ; $4f5a: $cd $72 $19
    add $51                                       ; $4f5d: $c6 $51
    ld bc, $4818                                  ; $4f5f: $01 $18 $48
    call CopyOAMSpriteById                        ; $4f62: $cd $ce $20
    pop af                                        ; $4f65: $f1
    cp $0a                                        ; $4f66: $fe $0a
    jr z, .AfterTimesClearedDigits                ; $4f68: $28 $08

    add $51                                       ; $4f6a: $c6 $51
    ld bc, $4018                                  ; $4f6c: $01 $18 $40
    call CopyOAMSpriteById                        ; $4f6f: $cd $ce $20

.AfterTimesClearedDigits:
    pop af                                        ; $4f72: $f1
    pop af                                        ; $4f73: $f1
    bit 7, a                                      ; $4f74: $cb $7f
    jp z, GS04_DrawSelectedPicrossCoursePuzzleInfoPanelFromSelectedPuzzleCache_DrawUnclearedPlaceholders; $4f76: $ca $04 $50

    ld hl, rSelectedPuzzleTimeDataRecordByte0     ; $4f79: $21 $49 $d8
    ld c, [hl]                                    ; $4f7c: $4e
    inc hl                                        ; $4f7d: $23
    ld b, [hl]                                    ; $4f7e: $46
    call DecodePackedPuzzleClearTimeToBCDDigits   ; $4f7f: $cd $82 $51
    push bc                                       ; $4f82: $c5
    ld a, b                                       ; $4f83: $78
    and $f0                                       ; $4f84: $e6 $f0
    swap a                                        ; $4f86: $cb $37
    add $51                                       ; $4f88: $c6 $51
    ld bc, $0818                                  ; $4f8a: $01 $18 $08
    call CopyOAMSpriteById                        ; $4f8d: $cd $ce $20
    pop bc                                        ; $4f90: $c1
    push bc                                       ; $4f91: $c5
    ld a, b                                       ; $4f92: $78
    and $0f                                       ; $4f93: $e6 $0f
    add $51                                       ; $4f95: $c6 $51
    ld bc, $1018                                  ; $4f97: $01 $18 $10
    call CopyOAMSpriteById                        ; $4f9a: $cd $ce $20
    pop bc                                        ; $4f9d: $c1
    push bc                                       ; $4f9e: $c5
    ld a, c                                       ; $4f9f: $79
    and $f0                                       ; $4fa0: $e6 $f0
    swap a                                        ; $4fa2: $cb $37
    add $51                                       ; $4fa4: $c6 $51
    ld bc, $2018                                  ; $4fa6: $01 $18 $20
    call CopyOAMSpriteById                        ; $4fa9: $cd $ce $20
    pop bc                                        ; $4fac: $c1
    ld a, c                                       ; $4fad: $79
    and $0f                                       ; $4fae: $e6 $0f
    add $51                                       ; $4fb0: $c6 $51
    ld bc, $2818                                  ; $4fb2: $01 $18 $28
    call CopyOAMSpriteById                        ; $4fb5: $cd $ce $20
    ld a, [hl]                                    ; $4fb8: $7e
    call GS04_UpdateFirstClearTimeHintUsedIconTile; $4fb9: $cd $b4 $50
    ld hl, rSelectedPuzzleTimeDataRecordByte1     ; $4fbc: $21 $4a $d8
    ld a, [hl+]                                   ; $4fbf: $2a
    and $f0                                       ; $4fc0: $e6 $f0
    swap a                                        ; $4fc2: $cb $37
    ld b, a                                       ; $4fc4: $47
    ld c, [hl]                                    ; $4fc5: $4e
    call DecodePackedPuzzleClearTimeToBCDDigits   ; $4fc6: $cd $82 $51
    push bc                                       ; $4fc9: $c5
    ld a, b                                       ; $4fca: $78
    and $f0                                       ; $4fcb: $e6 $f0
    swap a                                        ; $4fcd: $cb $37
    add $51                                       ; $4fcf: $c6 $51
    ld bc, $6818                                  ; $4fd1: $01 $18 $68
    call CopyOAMSpriteById                        ; $4fd4: $cd $ce $20
    pop bc                                        ; $4fd7: $c1
    push bc                                       ; $4fd8: $c5
    ld a, b                                       ; $4fd9: $78
    and $0f                                       ; $4fda: $e6 $0f
    add $51                                       ; $4fdc: $c6 $51
    ld bc, $7018                                  ; $4fde: $01 $18 $70
    call CopyOAMSpriteById                        ; $4fe1: $cd $ce $20
    pop bc                                        ; $4fe4: $c1
    push bc                                       ; $4fe5: $c5
    ld a, c                                       ; $4fe6: $79
    and $f0                                       ; $4fe7: $e6 $f0
    swap a                                        ; $4fe9: $cb $37
    add $51                                       ; $4feb: $c6 $51
    ld bc, $8018                                  ; $4fed: $01 $18 $80
    call CopyOAMSpriteById                        ; $4ff0: $cd $ce $20
    pop bc                                        ; $4ff3: $c1
    ld a, c                                       ; $4ff4: $79
    and $0f                                       ; $4ff5: $e6 $0f
    add $51                                       ; $4ff7: $c6 $51
    ld bc, $8818                                  ; $4ff9: $01 $18 $88
    call CopyOAMSpriteById                        ; $4ffc: $cd $ce $20
    dec hl                                        ; $4fff: $2b
    ld a, [hl]                                    ; $5000: $7e
    jp GS04_UpdateBestClearTimeHintUsedIconTile   ; $5001: $c3 $d9 $50


GS04_DrawSelectedPicrossCoursePuzzleInfoPanelFromSelectedPuzzleCache_DrawUnclearedPlaceholders::
    ld a, $80                                     ; $5004: $3e $80
    ld bc, $0818                                  ; $5006: $01 $18 $08
    call CopyOAMSpriteById                        ; $5009: $cd $ce $20
    ld a, $80                                     ; $500c: $3e $80
    ld bc, $1018                                  ; $500e: $01 $18 $10
    call CopyOAMSpriteById                        ; $5011: $cd $ce $20
    ld a, $80                                     ; $5014: $3e $80
    ld bc, $2018                                  ; $5016: $01 $18 $20
    call CopyOAMSpriteById                        ; $5019: $cd $ce $20
    ld a, $80                                     ; $501c: $3e $80
    ld bc, $2818                                  ; $501e: $01 $18 $28
    call CopyOAMSpriteById                        ; $5021: $cd $ce $20
    ld a, $80                                     ; $5024: $3e $80
    ld bc, $6818                                  ; $5026: $01 $18 $68
    call CopyOAMSpriteById                        ; $5029: $cd $ce $20
    ld a, $80                                     ; $502c: $3e $80
    ld bc, $7018                                  ; $502e: $01 $18 $70
    call CopyOAMSpriteById                        ; $5031: $cd $ce $20
    ld a, $80                                     ; $5034: $3e $80
    ld bc, $8018                                  ; $5036: $01 $18 $80
    call CopyOAMSpriteById                        ; $5039: $cd $ce $20
    ld a, $80                                     ; $503c: $3e $80
    ld bc, $8818                                  ; $503e: $01 $18 $88
    call CopyOAMSpriteById                        ; $5041: $cd $ce $20
    xor a                                         ; $5044: $af
    call GS04_UpdateFirstClearTimeHintUsedIconTile; $5045: $cd $b4 $50
    jp GS04_UpdateBestClearTimeHintUsedIconTile   ; $5048: $c3 $d9 $50


GS04_LoadSelectedPicrossCoursePuzzleStatusAndTimeDataRecord::
    ld a, [rSelectedSaveSlotIndex]                ; $504b: $fa $65 $a0
    ld c, a                                       ; $504e: $4f
    ld b, $00                                     ; $504f: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $5051: $21 $8d $a3
    add hl, bc                                    ; $5054: $09
    ld a, [hl]                                    ; $5055: $7e
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot; $5056: $21 $c8 $51
    add hl, bc                                    ; $5059: $09
    ld c, [hl]                                    ; $505a: $4e
    add hl, bc                                    ; $505b: $09
    sla a                                         ; $505c: $cb $27
    ld c, a                                       ; $505e: $4f
    add hl, bc                                    ; $505f: $09
    ld a, [hl+]                                   ; $5060: $2a
    ld h, [hl]                                    ; $5061: $66
    ld l, a                                       ; $5062: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $5063: $fa $37 $d6
    sla a                                         ; $5066: $cb $27
    sla a                                         ; $5068: $cb $27
    sla a                                         ; $506a: $cb $27
    ld c, a                                       ; $506c: $4f
    ld a, [rPuzzleCursorColumn]                   ; $506d: $fa $36 $d6
    or c                                          ; $5070: $b1
    ld c, a                                       ; $5071: $4f
    ld b, $00                                     ; $5072: $06 $00
    add hl, bc                                    ; $5074: $09
    ld a, [hl]                                    ; $5075: $7e
    ld [rSelectedPuzzleStatusData], a             ; $5076: $ea $4c $d8
    ld a, [rSelectedSaveSlotIndex]                ; $5079: $fa $65 $a0
    ld c, a                                       ; $507c: $4f
    ld b, $00                                     ; $507d: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $507f: $21 $8d $a3
    add hl, bc                                    ; $5082: $09
    ld a, [hl]                                    ; $5083: $7e
    ld hl, GS04_PicrossCourseTimeDataPointerTableOffsetBySaveSlot; $5084: $21 $b3 $51
    add hl, bc                                    ; $5087: $09
    ld c, [hl]                                    ; $5088: $4e
    add hl, bc                                    ; $5089: $09
    sla a                                         ; $508a: $cb $27
    ld c, a                                       ; $508c: $4f
    add hl, bc                                    ; $508d: $09
    ld a, [hl+]                                   ; $508e: $2a
    ld h, [hl]                                    ; $508f: $66
    ld l, a                                       ; $5090: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $5091: $fa $37 $d6
    sla a                                         ; $5094: $cb $27
    sla a                                         ; $5096: $cb $27
    sla a                                         ; $5098: $cb $27
    ld c, a                                       ; $509a: $4f
    ld a, [rPuzzleCursorColumn]                   ; $509b: $fa $36 $d6
    or c                                          ; $509e: $b1
    ld c, a                                       ; $509f: $4f
    sla a                                         ; $50a0: $cb $27
    add c                                         ; $50a2: $81
    ld c, a                                       ; $50a3: $4f
    ld b, $00                                     ; $50a4: $06 $00
    add hl, bc                                    ; $50a6: $09
    ld a, [hl+]                                   ; $50a7: $2a
    ld [rSelectedPuzzleTimeDataRecordByte0], a    ; $50a8: $ea $49 $d8
    ld a, [hl+]                                   ; $50ab: $2a
    ld [rSelectedPuzzleTimeDataRecordByte1], a    ; $50ac: $ea $4a $d8
    ld a, [hl]                                    ; $50af: $7e
    ld [rSelectedPuzzleTimeDataRecordByte2], a    ; $50b0: $ea $4b $d8
    ret                                           ; $50b3: $c9


GS04_UpdateFirstClearTimeHintUsedIconTile::
    push af                                       ; $50b4: $f5
    push hl                                       ; $50b5: $e5
    bit 3, a                                      ; $50b6: $cb $5f
    jr z, .DrawFirstClearTimeHintUsedBlankTile    ; $50b8: $28 $0a

    ld a, $01                                     ; $50ba: $3e $01
    ld bc, GS04_FirstClearTimeHintUsedIconCommandStream; $50bc: $01 $cf $50
    call QueueCommandStreamAndProcessIfLCDOff     ; $50bf: $cd $38 $07
    jr .ReturnFromFirstClearTimeHintUsedTileUpdate; $50c2: $18 $08

.DrawFirstClearTimeHintUsedBlankTile:
    ld a, $01                                     ; $50c4: $3e $01
    ld bc, GS04_FirstClearTimeHintUsedBlankCommandStream; $50c6: $01 $d4 $50
    call QueueCommandStreamAndProcessIfLCDOff     ; $50c9: $cd $38 $07

.ReturnFromFirstClearTimeHintUsedTileUpdate:
    pop hl                                        ; $50cc: $e1
    pop af                                        ; $50cd: $f1
    ret                                           ; $50ce: $c9


GS04_FirstClearTimeHintUsedIconCommandStream::
    db $98, $66, $01, $2f
    db $00

GS04_FirstClearTimeHintUsedBlankCommandStream::
    db $98, $66, $01, $2b
    db $00

GS04_UpdateBestClearTimeHintUsedIconTile::
    push af                                       ; $50d9: $f5
    push hl                                       ; $50da: $e5
    bit 7, a                                      ; $50db: $cb $7f
    jr z, .DrawBestClearTimeHintUsedBlankTile     ; $50dd: $28 $0a

    ld a, $01                                     ; $50df: $3e $01
    ld bc, GS04_BestClearTimeHintUsedIconCommandStream; $50e1: $01 $f4 $50
    call QueueCommandStreamAndProcessIfLCDOff     ; $50e4: $cd $38 $07
    jr .ReturnFromBestClearTimeHintUsedTileUpdate ; $50e7: $18 $08

.DrawBestClearTimeHintUsedBlankTile:
    ld a, $01                                     ; $50e9: $3e $01
    ld bc, GS04_BestClearTimeHintUsedBlankCommandStream; $50eb: $01 $f9 $50
    call QueueCommandStreamAndProcessIfLCDOff     ; $50ee: $cd $38 $07

.ReturnFromBestClearTimeHintUsedTileUpdate:
    pop hl                                        ; $50f1: $e1
    pop af                                        ; $50f2: $f1
    ret                                           ; $50f3: $c9


GS04_BestClearTimeHintUsedIconCommandStream::
    db $98, $72, $01, $2f
    db $00

GS04_BestClearTimeHintUsedBlankCommandStream::
    db $98, $72, $01, $2b
    db $00

GS04_AdvanceSelectionToNextUnclearedPuzzleIfPossible::
    ld a, [rPuzzleAndMenuCursorRow]               ; $50fe: $fa $37 $d6
    cp $07                                        ; $5101: $fe $07
    jr nz, .CheckNextPuzzleClearStatus            ; $5103: $20 $06

    ld a, [rPuzzleCursorColumn]                   ; $5105: $fa $36 $d6
    cp $07                                        ; $5108: $fe $07
    ret z                                         ; $510a: $c8

.CheckNextPuzzleClearStatus:
    ld a, [rSelectedSaveSlotIndex]                ; $510b: $fa $65 $a0
    ld c, a                                       ; $510e: $4f
    ld b, $00                                     ; $510f: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $5111: $21 $8d $a3
    add hl, bc                                    ; $5114: $09
    ld a, [hl]                                    ; $5115: $7e
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot; $5116: $21 $c8 $51
    add hl, bc                                    ; $5119: $09
    ld c, [hl]                                    ; $511a: $4e
    add hl, bc                                    ; $511b: $09
    sla a                                         ; $511c: $cb $27
    ld c, a                                       ; $511e: $4f
    add hl, bc                                    ; $511f: $09
    ld a, [hl+]                                   ; $5120: $2a
    ld h, [hl]                                    ; $5121: $66
    ld l, a                                       ; $5122: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $5123: $fa $37 $d6
    sla a                                         ; $5126: $cb $27
    sla a                                         ; $5128: $cb $27
    sla a                                         ; $512a: $cb $27
    ld c, a                                       ; $512c: $4f
    ld a, [rPuzzleCursorColumn]                   ; $512d: $fa $36 $d6
    or c                                          ; $5130: $b1
    ld c, a                                       ; $5131: $4f
    ld b, $00                                     ; $5132: $06 $00
    add hl, bc                                    ; $5134: $09
    inc hl                                        ; $5135: $23
    bit 7, [hl]                                   ; $5136: $cb $7e
    ret nz                                        ; $5138: $c0

    ld a, [rPuzzleCursorColumn]                   ; $5139: $fa $36 $d6
    inc a                                         ; $513c: $3c
    cp $08                                        ; $513d: $fe $08
    jr nz, .StoreAdvancedSelectionAndPlayMoveSfx  ; $513f: $20 $08

    ld a, [rPuzzleAndMenuCursorRow]               ; $5141: $fa $37 $d6
    inc a                                         ; $5144: $3c
    ld [rPuzzleAndMenuCursorRow], a               ; $5145: $ea $37 $d6
    xor a                                         ; $5148: $af

.StoreAdvancedSelectionAndPlayMoveSfx:
    ld [rPuzzleCursorColumn], a                   ; $5149: $ea $36 $d6
    ld c, $0a                                     ; $514c: $0e $0a
    ld a, $02                                     ; $514e: $3e $02
    call CallSoundEffectDispatcher                ; $5150: $cd $b6 $03
    ret                                           ; $5153: $c9


EncodePuzzleTimerToPackedClearTimeBC::
    push hl                                       ; $5154: $e5
    ld a, [rPuzzleTimerSecondTens]                ; $5155: $fa $0c $d8
    ld c, a                                       ; $5158: $4f
    sla a                                         ; $5159: $cb $27
    sla a                                         ; $515b: $cb $27
    add c                                         ; $515d: $81
    sla a                                         ; $515e: $cb $27
    ld hl, rPuzzleTimerSecondOnes                 ; $5160: $21 $0b $d8
    add [hl]                                      ; $5163: $86
    ld c, a                                       ; $5164: $4f
    ld a, [rPuzzleTimerMinuteTens]                ; $5165: $fa $0a $d8
    ld b, a                                       ; $5168: $47
    sla a                                         ; $5169: $cb $27
    sla a                                         ; $516b: $cb $27
    add b                                         ; $516d: $80
    sla a                                         ; $516e: $cb $27
    ld hl, rPuzzleTimerMinuteOnes                 ; $5170: $21 $09 $d8
    add [hl]                                      ; $5173: $86
    ld b, a                                       ; $5174: $47
    xor a                                         ; $5175: $af
    srl b                                         ; $5176: $cb $38
    rr a                                          ; $5178: $cb $1f
    srl b                                         ; $517a: $cb $38
    rr a                                          ; $517c: $cb $1f
    or c                                          ; $517e: $b1
    ld c, a                                       ; $517f: $4f
    pop hl                                        ; $5180: $e1
    ret                                           ; $5181: $c9


DecodePackedPuzzleClearTimeToBCDDigits::
    push hl                                       ; $5182: $e5
    ld a, c                                       ; $5183: $79
    and $3f                                       ; $5184: $e6 $3f
    ld e, $00                                     ; $5186: $1e $00

.SubtractLowerFieldTensLoop:
    cp $0a                                        ; $5188: $fe $0a
    jr c, .PackLowerFieldTensAndOnes              ; $518a: $38 $05

    sub $0a                                       ; $518c: $d6 $0a
    inc e                                         ; $518e: $1c
    jr .SubtractLowerFieldTensLoop                ; $518f: $18 $f7

.PackLowerFieldTensAndOnes:
    swap e                                        ; $5191: $cb $33
    or e                                          ; $5193: $b3
    ld e, a                                       ; $5194: $5f
    sla c                                         ; $5195: $cb $21
    rl b                                          ; $5197: $cb $10
    sla c                                         ; $5199: $cb $21
    rl b                                          ; $519b: $cb $10
    ld a, b                                       ; $519d: $78
    and $1f                                       ; $519e: $e6 $1f
    ld d, $00                                     ; $51a0: $16 $00

.SubtractUpperFieldTensLoop:
    cp $0a                                        ; $51a2: $fe $0a
    jr c, .PackUpperFieldTensAndOnes              ; $51a4: $38 $05

    sub $0a                                       ; $51a6: $d6 $0a
    inc d                                         ; $51a8: $14
    jr .SubtractUpperFieldTensLoop                ; $51a9: $18 $f7

.PackUpperFieldTensAndOnes:
    swap d                                        ; $51ab: $cb $32
    or d                                          ; $51ad: $b2
    ld d, a                                       ; $51ae: $57
    ld c, e                                       ; $51af: $4b
    ld b, d                                       ; $51b0: $42
    pop hl                                        ; $51b1: $e1
    ret                                           ; $51b2: $c9


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
    rst RST_08                                    ; $51dd: $cf
    call AdvanceMessageScriptStreamHelper_NoBankSwitch; $51de: $cd $1f $2c
    jr nz, RunMessageScriptUntilEnd               ; $51e1: $20 $fa

    ret                                           ; $51e3: $c9


GS04_ClearMessagePromptRows::
    ld bc, $1020                                  ; $51e4: $01 $20 $10
    ld de, $7f07                                  ; $51e7: $11 $07 $7f
    call GS04_CopyMessagePromptRowSpan            ; $51ea: $cd $30 $52
    ld bc, $1028                                  ; $51ed: $01 $28 $10
    ld de, $7f07                                  ; $51f0: $11 $07 $7f
    call GS04_CopyMessagePromptRowSpan            ; $51f3: $cd $30 $52
    ld bc, $1030                                  ; $51f6: $01 $30 $10
    ld de, $7f07                                  ; $51f9: $11 $07 $7f
    call GS04_CopyMessagePromptRowSpan            ; $51fc: $cd $30 $52
    ld bc, $1038                                  ; $51ff: $01 $38 $10
    ld de, $7f07                                  ; $5202: $11 $07 $7f
    call GS04_CopyMessagePromptRowSpan            ; $5205: $cd $30 $52
    ld bc, $1040                                  ; $5208: $01 $40 $10
    ld de, $7f07                                  ; $520b: $11 $07 $7f
    call GS04_CopyMessagePromptRowSpan            ; $520e: $cd $30 $52
    ld bc, $1048                                  ; $5211: $01 $48 $10
    ld de, $7f07                                  ; $5214: $11 $07 $7f
    call GS04_CopyMessagePromptRowSpan            ; $5217: $cd $30 $52
    ld bc, $1050                                  ; $521a: $01 $50 $10
    ld de, $7f07                                  ; $521d: $11 $07 $7f
    call GS04_CopyMessagePromptRowSpan            ; $5220: $cd $30 $52
    ld a, [rMessageScriptStreamResetEntryLow]     ; $5223: $fa $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $5226: $ea $2b $d8
    ld a, [rMessageScriptStreamResetEntryHigh]    ; $5229: $fa $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $522c: $ea $2c $d8
    ret                                           ; $522f: $c9


GS04_CopyMessagePromptRowSpan::
    ld a, $00                                     ; $5230: $3e $00
    ld [rBGTileCopyBankAddressLow], a             ; $5232: $ea $55 $c3
    ld a, $61                                     ; $5235: $3e $61
    ld [rBGTileCopyBankAddressHigh], a            ; $5237: $ea $56 $c3
    ld a, $0a                                     ; $523a: $3e $0a
    ld [rBGTileCopyBank], a                       ; $523c: $ea $57 $c3
    ld a, b                                       ; $523f: $78
    ld [rBGTileCopySourceX], a                    ; $5240: $ea $51 $c3
    add d                                         ; $5243: $82
    ld [rBGTileCopyDestX], a                      ; $5244: $ea $53 $c3
    ld a, c                                       ; $5247: $79
    ld [rBGTileCopySourceY], a                    ; $5248: $ea $52 $c3
    add e                                         ; $524b: $83
    ld [rBGTileCopyDestY], a                      ; $524c: $ea $54 $c3
    jp Jump_000_0b0d                              ; $524f: $c3 $0d $0b


WaitForAConfirmOnBottomPrompt::
    ld b, $03                                     ; $5252: $06 $03
    ld hl, $4ea6                                  ; $5254: $21 $a6 $4e
    call SwitchBankToBAndJumpToHL                 ; $5257: $cd $de $05
    call ClearShadowOAMBufferFromCursor           ; $525a: $cd $c5 $05
    rst RST_08                                    ; $525d: $cf
    ld a, [rInputButtonsPressed]                  ; $525e: $fa $1e $c3
    and $01                                       ; $5261: $e6 $01
    jr z, WaitForAConfirmOnBottomPrompt           ; $5263: $28 $ed

    ld c, $03                                     ; $5265: $0e $03
    ld a, $02                                     ; $5267: $3e $02
    call CallSoundEffectDispatcher                ; $5269: $cd $b6 $03
    ret                                           ; $526c: $c9


GameState_05_EasyPicrossPuzzleSelectScreen_PhaseDispatcher::
    ld a, [rStatePhase_Current]                   ; $526d: $fa $35 $d6
    rst RST_18                                    ; $5270: $df

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
    ld a, $43                                     ; $527d: $3e $43
    ld [rLCDCShadow], a                           ; $527f: $ea $2e $c3
    xor a                                         ; $5282: $af
    ld [rBGPShadow], a                            ; $5283: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $5286: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $5289: $ea $31 $c3
    ld [rSCXShadow], a                            ; $528c: $ea $32 $c3
    ld [rSCYShadow], a                            ; $528f: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $5292: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $5295: $cd $ab $05
    ld a, $0b                                     ; $5298: $3e $0b
    ld hl, $5000                                  ; $529a: $21 $00 $50
    ld de, $8000                                  ; $529d: $11 $00 $80
    ld bc, .CheckAllFaceButtonsHeldCombo          ; $52a0: $01 $00 $03
    call BankedTileCopy                           ; $52a3: $cd $e4 $04
    ld a, $07                                     ; $52a6: $3e $07
    ld hl, $7b00                                  ; $52a8: $21 $00 $7b
    ld de, $8300                                  ; $52ab: $11 $00 $83
    ld bc, $0200                                  ; $52ae: $01 $00 $02
    call BankedTileCopy                           ; $52b1: $cd $e4 $04
    ld a, $0a                                     ; $52b4: $3e $0a
    ld hl, $6000                                  ; $52b6: $21 $00 $60
    ld de, $8800                                  ; $52b9: $11 $00 $88
    ld bc, $1000                                  ; $52bc: $01 $00 $10
    call BankedTileCopy                           ; $52bf: $cd $e4 $04
    ld a, $0c                                     ; $52c2: $3e $0c
    ld hl, $6c00                                  ; $52c4: $21 $00 $6c
    ld de, $9800                                  ; $52c7: $11 $00 $98
    ld bc, $0400                                  ; $52ca: $01 $00 $04
    call BankedTileCopy                           ; $52cd: $cd $e4 $04
    call GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $52d0: $cd $32 $57
    call GS05_DrawCompletedPuzzleMarkersForSelectedSaveSlot; $52d3: $cd $c0 $57
    call ClearShadowOAMBuffer                     ; $52d6: $cd $b6 $05
    ld b, $03                                     ; $52d9: $06 $03
    ld hl, $4e80                                  ; $52db: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $52de: $cd $de $05
    ld b, $03                                     ; $52e1: $06 $03
    ld hl, $4ee9                                  ; $52e3: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $52e6: $cd $de $05
    xor a                                         ; $52e9: $af
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame; $52ea: $cd $60 $57
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanel; $52ed: $cd $5e $59
    ld c, $00                                     ; $52f0: $0e $00
    ld a, $01                                     ; $52f2: $3e $01
    call CallSoundEffectDispatcher                ; $52f4: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $52f7: $cd $99 $03
    ld c, $04                                     ; $52fa: $0e $04
    ld a, $01                                     ; $52fc: $3e $01
    call CallSoundEffectDispatcher                ; $52fe: $cd $b6 $03
    call EnableLCDFromShadow                      ; $5301: $cd $a2 $04
    ld b, $03                                     ; $5304: $06 $03
    ld hl, $46e8                                  ; $5306: $21 $e8 $46
    ld c, $08                                     ; $5309: $0e $08
    ld de, $0074                                  ; $530b: $11 $74 $00
    call PlayScreenTransitionFadeIn               ; $530e: $cd $0d $04
    ld hl, rStatePhase_Current                    ; $5311: $21 $35 $d6
    inc [hl]                                      ; $5314: $34
    ret                                           ; $5315: $c9


GS05_StatePhase_04_TODO::
    ld a, $43                                     ; $5316: $3e $43
    ld [rLCDCShadow], a                           ; $5318: $ea $2e $c3
    xor a                                         ; $531b: $af
    ld [rBGPShadow], a                            ; $531c: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $531f: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $5322: $ea $31 $c3
    ld [rSCXShadow], a                            ; $5325: $ea $32 $c3
    ld [rSCYShadow], a                            ; $5328: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $532b: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $532e: $cd $ab $05
    ld a, $0b                                     ; $5331: $3e $0b
    ld hl, $5000                                  ; $5333: $21 $00 $50
    ld de, $8000                                  ; $5336: $11 $00 $80
    ld bc, .CheckAllFaceButtonsHeldCombo          ; $5339: $01 $00 $03
    call BankedTileCopy                           ; $533c: $cd $e4 $04
    ld a, $07                                     ; $533f: $3e $07
    ld hl, $7b00                                  ; $5341: $21 $00 $7b
    ld de, $8300                                  ; $5344: $11 $00 $83
    ld bc, $0200                                  ; $5347: $01 $00 $02
    call BankedTileCopy                           ; $534a: $cd $e4 $04
    ld a, $0a                                     ; $534d: $3e $0a
    ld hl, $6000                                  ; $534f: $21 $00 $60
    ld de, $8800                                  ; $5352: $11 $00 $88
    ld bc, $1000                                  ; $5355: $01 $00 $10
    call BankedTileCopy                           ; $5358: $cd $e4 $04
    ld a, $0c                                     ; $535b: $3e $0c
    ld hl, $6c00                                  ; $535d: $21 $00 $6c
    ld de, $9800                                  ; $5360: $11 $00 $98
    ld bc, $0400                                  ; $5363: $01 $00 $04
    call BankedTileCopy                           ; $5366: $cd $e4 $04
    call GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $5369: $cd $32 $57
    call GS05_DrawCompletedPuzzleMarkersForSelectedSaveSlotExceptCurrentSelection; $536c: $cd $e8 $57
    ld a, [rSelectedPuzzleStatusData]             ; $536f: $fa $4c $d8
    bit 7, a                                      ; $5372: $cb $7f
    jr z, .ContinueAfterSelectedPuzzleCompletedMarkerCheck; $5374: $28 $0b

    ld a, [rPuzzleCursorColumn]                   ; $5376: $fa $36 $d6
    ld c, a                                       ; $5379: $4f
    ld a, [rPuzzleAndMenuCursorRow]               ; $537a: $fa $37 $d6
    ld b, a                                       ; $537d: $47
    call GS05_DrawCompletedPuzzleMarkerAtGridPosition; $537e: $cd $1c $58

.ContinueAfterSelectedPuzzleCompletedMarkerCheck:
    call ClearShadowOAMBuffer                     ; $5381: $cd $b6 $05
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanelFromSelectedPuzzleCache; $5384: $cd $b9 $5a
    ld b, $03                                     ; $5387: $06 $03
    ld hl, $4e80                                  ; $5389: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $538c: $cd $de $05
    ld a, [rPuzzleFlowVariant_Unsure]             ; $538f: $fa $05 $d8
    and a                                         ; $5392: $a7
    push af                                       ; $5393: $f5
    jr nz, .BeginPostReturnFadeInAndResultFlow    ; $5394: $20 $08

    ld b, $03                                     ; $5396: $06 $03
    ld hl, $4ee9                                  ; $5398: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $539b: $cd $de $05

.BeginPostReturnFadeInAndResultFlow:
    xor a                                         ; $539e: $af
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame; $539f: $cd $60 $57
    ld c, $00                                     ; $53a2: $0e $00
    ld a, $01                                     ; $53a4: $3e $01
    call CallSoundEffectDispatcher                ; $53a6: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $53a9: $cd $99 $03
    ld c, $04                                     ; $53ac: $0e $04
    ld a, $01                                     ; $53ae: $3e $01
    call CallSoundEffectDispatcher                ; $53b0: $cd $b6 $03
    call EnableLCDFromShadow                      ; $53b3: $cd $a2 $04
    ld b, $03                                     ; $53b6: $06 $03
    ld hl, $46e8                                  ; $53b8: $21 $e8 $46
    ld c, $08                                     ; $53bb: $0e $08
    ld de, $0074                                  ; $53bd: $11 $74 $00
    call PlayScreenTransitionFadeIn               ; $53c0: $cd $0d $04
    pop af                                        ; $53c3: $f1
    jp z, GS05_ReturnToIdlePhaseAndRefreshSaveChecksums; $53c4: $ca $ed $54

    call GS05_HandlePostReturnClearStatusChangeAnimationAndPrompt; $53c7: $cd $f5 $54
    ld a, [rSelectedSaveSlotIndex]                ; $53ca: $fa $65 $a0
    ld c, a                                       ; $53cd: $4f
    ld b, $00                                     ; $53ce: $06 $00
    ld hl, rSaveSlot1EasyPicrossPostClearUnlockFlowState_Unsure; $53d0: $21 $7b $a0
    add hl, bc                                    ; $53d3: $09
    ld a, [hl]                                    ; $53d4: $7e
    and a                                         ; $53d5: $a7
    jp nz, GS05_ReturnToIdlePhaseAndRefreshSaveChecksums; $53d6: $c2 $ed $54

    ld hl, rSaveSlot1EasyPicrossClearedPuzzleCount; $53d9: $21 $7e $a0
    add hl, bc                                    ; $53dc: $09
    ld a, [hl]                                    ; $53dd: $7e
    cp $40                                        ; $53de: $fe $40
    jp nz, GS05_ReturnToIdlePhaseAndRefreshSaveChecksums; $53e0: $c2 $ed $54

    ld hl, rSaveSlot1EasyPicrossPostClearUnlockFlowState_Unsure; $53e3: $21 $7b $a0
    add hl, bc                                    ; $53e6: $09
    inc [hl]                                      ; $53e7: $34
    ld a, [rSelectedSaveSlotIndex]                ; $53e8: $fa $65 $a0
    ld c, a                                       ; $53eb: $4f
    ld b, $00                                     ; $53ec: $06 $00
    ld hl, rSaveSlot1GameSelectCursorRow          ; $53ee: $21 $78 $a0
    add hl, bc                                    ; $53f1: $09
    ld a, $02                                     ; $53f2: $3e $02
    ld [hl], a                                    ; $53f4: $77
    call RefreshSaveValidationChecksumsAndMirrors ; $53f5: $cd $1f $1b
    ld bc, $00b4                                  ; $53f8: $01 $b4 $00
    call DelayFramesByBC                          ; $53fb: $cd $fa $05
    ld a, $05                                     ; $53fe: $3e $05
    call CallSoundEffectDispatcher                ; $5400: $cd $b6 $03
    ld c, $00                                     ; $5403: $0e $00
    ld a, $01                                     ; $5405: $3e $01
    call CallSoundEffectDispatcher                ; $5407: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $540a: $cd $99 $03
    ld c, $00                                     ; $540d: $0e $00
    ld a, $01                                     ; $540f: $3e $01
    call CallSoundEffectDispatcher                ; $5411: $cd $b6 $03
    call ClearShadowOAMBuffer                     ; $5414: $cd $b6 $05
    ld b, $03                                     ; $5417: $06 $03
    ld hl, $46f3                                  ; $5419: $21 $f3 $46
    ld c, $08                                     ; $541c: $0e $08
    ld de, $0083                                  ; $541e: $11 $83 $00
    call PlayScreenTransitionFadeOut              ; $5421: $cd $4e $04
    call DisableLCDAtVBlank                       ; $5424: $cd $83 $04
    ld a, $0c                                     ; $5427: $3e $0c
    ld hl, $7800                                  ; $5429: $21 $00 $78
    ld de, $9800                                  ; $542c: $11 $00 $98
    ld bc, $0400                                  ; $542f: $01 $00 $04
    call BankedTileCopy                           ; $5432: $cd $e4 $04
    ld a, $7e                                     ; $5435: $3e $7e
    ld [rTilemapToTileDataAddressLookupTableLow], a; $5437: $ea $63 $cd
    ld a, $16                                     ; $543a: $3e $16
    ld [rTilemapToTileDataAddressLookupTableHigh], a; $543c: $ea $64 $cd
    ld c, $00                                     ; $543f: $0e $00
    ld a, $01                                     ; $5441: $3e $01
    call CallSoundEffectDispatcher                ; $5443: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $5446: $cd $99 $03
    ld c, $07                                     ; $5449: $0e $07
    ld a, $01                                     ; $544b: $3e $01
    call CallSoundEffectDispatcher                ; $544d: $cd $b6 $03
    ld a, $2f                                     ; $5450: $3e $2f
    ld [rLYCShadow], a                            ; $5452: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $5455: $21 $37 $c3
    set 6, [hl]                                   ; $5458: $cb $f6
    ld hl, rIE                                    ; $545a: $21 $ff $ff
    set 1, [hl]                                   ; $545d: $cb $ce
    ld a, $02                                     ; $545f: $3e $02
    ld [rLCDCInterruptDispatchIndex], a           ; $5461: $ea $38 $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $5464: $ea $50 $c3
    call EnableLCDFromShadow                      ; $5467: $cd $a2 $04
    ld b, $03                                     ; $546a: $06 $03
    ld hl, $46e8                                  ; $546c: $21 $e8 $46
    ld c, $0b                                     ; $546f: $0e $0b
    ld de, $0074                                  ; $5471: $11 $74 $00
    call PlayScreenTransitionFadeIn               ; $5474: $cd $0d $04
    ld a, $10                                     ; $5477: $3e $10
    ld [rMessageScriptStreamResetEntryLow], a     ; $5479: $ea $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $547c: $ea $2b $d8
    ld a, $20                                     ; $547f: $3e $20
    ld [rMessageScriptStreamResetEntryHigh], a    ; $5481: $ea $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $5484: $ea $2c $d8
    ld a, $90                                     ; $5487: $3e $90
    ld [rMessageScriptStreamLimitLow], a          ; $5489: $ea $45 $d8
    ld a, $58                                     ; $548c: $3e $58
    ld [rMessageScriptStreamLimitHigh], a         ; $548e: $ea $46 $d8
    ld a, $00                                     ; $5491: $3e $00
    ld [rMessageScriptStreamPointerLow], a        ; $5493: $ea $2d $d8
    ld a, $40                                     ; $5496: $3e $40
    ld [rMessageScriptStreamPointerHigh], a       ; $5498: $ea $2e $d8
    call RunMessageScriptUntilEnd                 ; $549b: $cd $dd $51
    call WaitForAConfirmOnBottomPrompt            ; $549e: $cd $52 $52
    ld bc, $003c                                  ; $54a1: $01 $3c $00
    call DelayFramesByBC                          ; $54a4: $cd $fa $05
    ld a, $05                                     ; $54a7: $3e $05
    call CallSoundEffectDispatcher                ; $54a9: $cd $b6 $03
    ld c, $00                                     ; $54ac: $0e $00
    ld a, $01                                     ; $54ae: $3e $01
    call CallSoundEffectDispatcher                ; $54b0: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $54b3: $cd $99 $03
    ld c, $00                                     ; $54b6: $0e $00
    ld a, $01                                     ; $54b8: $3e $01
    call CallSoundEffectDispatcher                ; $54ba: $cd $b6 $03
    ld b, $03                                     ; $54bd: $06 $03
    ld hl, $46f3                                  ; $54bf: $21 $f3 $46
    ld c, $0b                                     ; $54c2: $0e $0b
    ld de, $0083                                  ; $54c4: $11 $83 $00
    call PlayScreenTransitionFadeOut              ; $54c7: $cd $4e $04
    call DisableLCDAtVBlank                       ; $54ca: $cd $83 $04
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $54cd: $21 $37 $c3
    res 6, [hl]                                   ; $54d0: $cb $b6
    ld hl, rIE                                    ; $54d2: $21 $ff $ff
    res 1, [hl]                                   ; $54d5: $cb $8e
    xor a                                         ; $54d7: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $54d8: $ea $38 $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $54db: $ea $50 $c3
    call GS05_SaveEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $54de: $cd $49 $57
    xor a                                         ; $54e1: $af
    ld [rStatePhase_Current], a                   ; $54e2: $ea $35 $d6
    ld a, $02                                     ; $54e5: $3e $02
    ld [rGameState_Current], a                    ; $54e7: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $54ea: $c3 $1f $1b


GS05_ReturnToIdlePhaseAndRefreshSaveChecksums::
    ld a, $01                                     ; $54ed: $3e $01
    ld [rStatePhase_Current], a                   ; $54ef: $ea $35 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $54f2: $c3 $1f $1b


GS05_HandlePostReturnClearStatusChangeAnimationAndPrompt::
    ld a, [rSelectedSaveSlotIndex]                ; $54f5: $fa $65 $a0
    sla a                                         ; $54f8: $cb $27
    ld c, a                                       ; $54fa: $4f
    ld b, $00                                     ; $54fb: $06 $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot; $54fd: $21 $a4 $5c
    add hl, bc                                    ; $5500: $09
    ld a, [hl+]                                   ; $5501: $2a
    ld h, [hl]                                    ; $5502: $66
    ld l, a                                       ; $5503: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $5504: $fa $37 $d6
    sla a                                         ; $5507: $cb $27
    sla a                                         ; $5509: $cb $27
    sla a                                         ; $550b: $cb $27
    ld c, a                                       ; $550d: $4f
    ld a, [rPuzzleCursorColumn]                   ; $550e: $fa $36 $d6
    or c                                          ; $5511: $b1
    ld c, a                                       ; $5512: $4f
    ld b, $00                                     ; $5513: $06 $00
    add hl, bc                                    ; $5515: $09
    ld a, [hl]                                    ; $5516: $7e
    ld hl, rSelectedPuzzleStatusData              ; $5517: $21 $4c $d8
    xor [hl]                                      ; $551a: $ae
    bit 7, a                                      ; $551b: $cb $7f
    jr z, .BeginPostResultPromptDelay             ; $551d: $28 $38

    ld c, $08                                     ; $551f: $0e $08
    ld a, $02                                     ; $5521: $3e $02
    call CallSoundEffectDispatcher                ; $5523: $cd $b6 $03
    ld c, $08                                     ; $5526: $0e $08

.AnimateCursorFrame1BeforeCompletedMarker:
    push bc                                       ; $5528: $c5
    call ClearShadowOAMBuffer                     ; $5529: $cd $b6 $05
    ld a, $01                                     ; $552c: $3e $01
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame; $552e: $cd $60 $57
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanel; $5531: $cd $5e $59
    rst RST_08                                    ; $5534: $cf
    pop bc                                        ; $5535: $c1
    dec c                                         ; $5536: $0d
    jr nz, .AnimateCursorFrame1BeforeCompletedMarker; $5537: $20 $ef

    ld a, [rPuzzleCursorColumn]                   ; $5539: $fa $36 $d6
    ld c, a                                       ; $553c: $4f
    ld a, [rPuzzleAndMenuCursorRow]               ; $553d: $fa $37 $d6
    ld b, a                                       ; $5540: $47
    call GS05_DrawCompletedPuzzleMarkerAtGridPosition; $5541: $cd $1c $58
    ld c, $08                                     ; $5544: $0e $08

.AnimateCursorFrame2AfterCompletedMarker:
    push bc                                       ; $5546: $c5
    call ClearShadowOAMBuffer                     ; $5547: $cd $b6 $05
    ld a, $02                                     ; $554a: $3e $02
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame; $554c: $cd $60 $57
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanel; $554f: $cd $5e $59
    rst RST_08                                    ; $5552: $cf
    pop bc                                        ; $5553: $c1
    dec c                                         ; $5554: $0d
    jr nz, .AnimateCursorFrame2AfterCompletedMarker; $5555: $20 $ef

.BeginPostResultPromptDelay:
    rst RST_08                                    ; $5557: $cf
    ld bc, $005a                                  ; $5558: $01 $5a $00

.PostResultPromptLoop:
    push bc                                       ; $555b: $c5
    call ClearShadowOAMBuffer                     ; $555c: $cd $b6 $05
    ld b, $03                                     ; $555f: $06 $03
    ld hl, $4ea6                                  ; $5561: $21 $a6 $4e
    call SwitchBankToBAndJumpToHL                 ; $5564: $cd $de $05
    ld a, [rVBlankFrameCounter]                   ; $5567: $fa $3a $c3
    bit 2, a                                      ; $556a: $cb $57
    jr nz, .DrawPostResultPromptFrame             ; $556c: $20 $04

    xor a                                         ; $556e: $af
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame; $556f: $cd $60 $57

.DrawPostResultPromptFrame:
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanel; $5572: $cd $5e $59
    rst RST_08                                    ; $5575: $cf
    pop bc                                        ; $5576: $c1
    ld a, [rInputButtonsPressed]                  ; $5577: $fa $1e $c3
    and a                                         ; $557a: $a7
    jr nz, .AdvanceSelectionAfterPostResultPrompt ; $557b: $20 $05

    dec bc                                        ; $557d: $0b
    ld a, c                                       ; $557e: $79
    or b                                          ; $557f: $b0
    jr nz, .PostResultPromptLoop                  ; $5580: $20 $d9

.AdvanceSelectionAfterPostResultPrompt:
    jp GS05_AdvanceSelectionToNextUnclearedPuzzleIfPossible; $5582: $c3 $51 $5c


GS05_StatePhase_01_EasyPicrossPuzzleSelectScreenIdle::
    ld b, $03                                     ; $5585: $06 $03
    ld hl, $4ee9                                  ; $5587: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $558a: $cd $de $05
    xor a                                         ; $558d: $af
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame; $558e: $cd $60 $57
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanel; $5591: $cd $5e $59
    call GS05_HandleEasyPicrossPuzzleSelectDirectionalInput; $5594: $cd $7b $57
    ld a, [rInputButtonsPressed]                  ; $5597: $fa $1e $c3
    and $09                                       ; $559a: $e6 $09
    jr z, .CheckCancelInputB                      ; $559c: $28 $0c

    ld c, $03                                     ; $559e: $0e $03
    ld a, $02                                     ; $55a0: $3e $02
    call CallSoundEffectDispatcher                ; $55a2: $cd $b6 $03
    ld hl, rStatePhase_Current                    ; $55a5: $21 $35 $d6
    inc [hl]                                      ; $55a8: $34
    ret                                           ; $55a9: $c9


.CheckCancelInputB:
    ld a, [rInputButtonsPressed]                  ; $55aa: $fa $1e $c3
    and $02                                       ; $55ad: $e6 $02
    jr z, .ReturnFromIdlePhaseNoSelectionInput    ; $55af: $28 $0d

    ld c, $04                                     ; $55b1: $0e $04
    ld a, $02                                     ; $55b3: $3e $02
    call CallSoundEffectDispatcher                ; $55b5: $cd $b6 $03
    ld a, $03                                     ; $55b8: $3e $03
    ld [rStatePhase_Current], a                   ; $55ba: $ea $35 $d6
    ret                                           ; $55bd: $c9


.ReturnFromIdlePhaseNoSelectionInput:
    ret                                           ; $55be: $c9


GS05_StatePhase_05_ReturnFromPuzzleTransitionAndCommitResult::
    ld bc, $003c                                  ; $55bf: $01 $3c $00
    call DelayFramesByBC                          ; $55c2: $cd $fa $05
    ld a, $05                                     ; $55c5: $3e $05
    call CallSoundEffectDispatcher                ; $55c7: $cd $b6 $03
    ld c, $00                                     ; $55ca: $0e $00
    ld a, $01                                     ; $55cc: $3e $01
    call CallSoundEffectDispatcher                ; $55ce: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $55d1: $cd $99 $03
    ld c, $00                                     ; $55d4: $0e $00
    ld a, $01                                     ; $55d6: $3e $01
    call CallSoundEffectDispatcher                ; $55d8: $cd $b6 $03
    ld b, $03                                     ; $55db: $06 $03
    ld hl, $46f3                                  ; $55dd: $21 $f3 $46
    ld c, $08                                     ; $55e0: $0e $08
    ld de, $0083                                  ; $55e2: $11 $83 $00
    call PlayScreenTransitionFadeOut              ; $55e5: $cd $4e $04
    call DisableLCDAtVBlank                       ; $55e8: $cd $83 $04
    call GS05_SaveEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $55eb: $cd $49 $57
    xor a                                         ; $55ee: $af
    ld [rPuzzleTimerSecondOnes], a                ; $55ef: $ea $0b $d8
    ld [rPuzzleTimerSecondTens], a                ; $55f2: $ea $0c $d8
    ld [rPuzzleTimerMinuteOnes], a                ; $55f5: $ea $09 $d8
    ld a, $03                                     ; $55f8: $3e $03
    ld [rPuzzleTimerMinuteTens], a                ; $55fa: $ea $0a $d8
    xor a                                         ; $55fd: $af
    ld [rHintPopupSelection], a                   ; $55fe: $ea $33 $d8
    ld a, $01                                     ; $5601: $3e $01
    ld [rPuzzleFlowVariant_Unsure], a             ; $5603: $ea $05 $d8
    call GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $5606: $cd $32 $57
    call GS05_LoadSelectedEasyPicrossPuzzleStatusAndTimeDataRecord; $5609: $cd $b0 $5b
    call GS05_IncrementSelectedEasyPicrossPuzzleClearCountIfAllowed; $560c: $cd $60 $58
    call GS05_UpdateSelectedEasyPicrossPuzzleClearStatusAndTimes; $560f: $cd $8a $58
    call RefreshSaveValidationChecksumsAndMirrors ; $5612: $cd $1f $1b
    ld a, $04                                     ; $5615: $3e $04
    ld [rStatePhase_Current], a                   ; $5617: $ea $35 $d6
    ret                                           ; $561a: $c9


GS05_StatePhase_02_ConfirmSelectionTransitionToPuzzle::
    ld bc, $003c                                  ; $561b: $01 $3c $00
    call DelayFramesByBC                          ; $561e: $cd $fa $05
    ld a, $05                                     ; $5621: $3e $05
    call CallSoundEffectDispatcher                ; $5623: $cd $b6 $03
    ld c, $00                                     ; $5626: $0e $00
    ld a, $01                                     ; $5628: $3e $01
    call CallSoundEffectDispatcher                ; $562a: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $562d: $cd $99 $03
    ld c, $00                                     ; $5630: $0e $00
    ld a, $01                                     ; $5632: $3e $01
    call CallSoundEffectDispatcher                ; $5634: $cd $b6 $03
    ld b, $03                                     ; $5637: $06 $03
    ld hl, $46f3                                  ; $5639: $21 $f3 $46
    ld c, $08                                     ; $563c: $0e $08
    ld de, $0083                                  ; $563e: $11 $83 $00
    call PlayScreenTransitionFadeOut              ; $5641: $cd $4e $04
    call DisableLCDAtVBlank                       ; $5644: $cd $83 $04
    call GS05_SaveEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $5647: $cd $49 $57
    call GS05_LoadSelectedEasyPicrossPuzzleStatusAndTimeDataRecord; $564a: $cd $b0 $5b
    call GS05_IncrementSelectedEasyPicrossPuzzleClearCountIfAllowed; $564d: $cd $60 $58
    ld a, [rPuzzleAndMenuCursorRow]               ; $5650: $fa $37 $d6
    swap a                                        ; $5653: $cb $37
    ld c, a                                       ; $5655: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5656: $fa $36 $d6
    sla a                                         ; $5659: $cb $27
    or c                                          ; $565b: $b1
    ld c, a                                       ; $565c: $4f
    ld b, $00                                     ; $565d: $06 $00
    ld hl, GS05_EasyPicrossPuzzleDataIndexTableByGridPosition; $565f: $21 $77 $56
    add hl, bc                                    ; $5662: $09
    ld a, [hl+]                                   ; $5663: $2a
    ld [rPuzzleDataIndexLow], a                   ; $5664: $ea $07 $d8
    ld a, [hl]                                    ; $5667: $7e
    ld [rPuzzleDataIndexHigh], a                  ; $5668: $ea $08 $d8
    xor a                                         ; $566b: $af
    ld [rStatePhase_Current], a                   ; $566c: $ea $35 $d6
    ld a, $08                                     ; $566f: $3e $08
    ld [rGameState_Current], a                    ; $5671: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $5674: $c3 $1f $1b


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
    ld bc, $003c                                  ; $56f7: $01 $3c $00
    call DelayFramesByBC                          ; $56fa: $cd $fa $05
    ld a, $05                                     ; $56fd: $3e $05
    call CallSoundEffectDispatcher                ; $56ff: $cd $b6 $03
    ld c, $00                                     ; $5702: $0e $00
    ld a, $01                                     ; $5704: $3e $01
    call CallSoundEffectDispatcher                ; $5706: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $5709: $cd $99 $03
    ld c, $00                                     ; $570c: $0e $00
    ld a, $01                                     ; $570e: $3e $01
    call CallSoundEffectDispatcher                ; $5710: $cd $b6 $03
    ld b, $03                                     ; $5713: $06 $03
    ld hl, $46f3                                  ; $5715: $21 $f3 $46
    ld c, $08                                     ; $5718: $0e $08
    ld de, $0083                                  ; $571a: $11 $83 $00
    call PlayScreenTransitionFadeOut              ; $571d: $cd $4e $04
    call DisableLCDAtVBlank                       ; $5720: $cd $83 $04
    call GS05_SaveEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $5723: $cd $49 $57
    xor a                                         ; $5726: $af
    ld [rStatePhase_Current], a                   ; $5727: $ea $35 $d6
    ld a, $02                                     ; $572a: $3e $02
    ld [rGameState_Current], a                    ; $572c: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $572f: $c3 $1f $1b


GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot::
    ld a, [rSelectedSaveSlotIndex]                ; $5732: $fa $65 $a0
    ld c, a                                       ; $5735: $4f
    ld b, $00                                     ; $5736: $06 $00
    ld hl, rSaveSlot1EasyPicrossPuzzleSelectCursorColumn; $5738: $21 $81 $a0
    add hl, bc                                    ; $573b: $09
    ld a, [hl]                                    ; $573c: $7e
    ld [rPuzzleCursorColumn], a                   ; $573d: $ea $36 $d6
    ld hl, rSaveSlot1EasyPicrossPuzzleSelectCursorRow; $5740: $21 $84 $a0
    add hl, bc                                    ; $5743: $09
    ld a, [hl]                                    ; $5744: $7e
    ld [rPuzzleAndMenuCursorRow], a               ; $5745: $ea $37 $d6
    ret                                           ; $5748: $c9


GS05_SaveEasyPicrossPuzzleSelectCursorForSelectedSaveSlot::
    ld a, [rSelectedSaveSlotIndex]                ; $5749: $fa $65 $a0
    ld c, a                                       ; $574c: $4f
    ld b, $00                                     ; $574d: $06 $00
    ld hl, rSaveSlot1EasyPicrossPuzzleSelectCursorColumn; $574f: $21 $81 $a0
    add hl, bc                                    ; $5752: $09
    ld a, [rPuzzleCursorColumn]                   ; $5753: $fa $36 $d6
    ld [hl], a                                    ; $5756: $77
    ld hl, rSaveSlot1EasyPicrossPuzzleSelectCursorRow; $5757: $21 $84 $a0
    add hl, bc                                    ; $575a: $09
    ld a, [rPuzzleAndMenuCursorRow]               ; $575b: $fa $37 $d6
    ld [hl], a                                    ; $575e: $77
    ret                                           ; $575f: $c9


GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame::
    push af                                       ; $5760: $f5
    ld a, [rPuzzleCursorColumn]                   ; $5761: $fa $36 $d6
    swap a                                        ; $5764: $cb $37
    add $20                                       ; $5766: $c6 $20
    ld b, a                                       ; $5768: $47
    ld a, [rPuzzleAndMenuCursorRow]               ; $5769: $fa $37 $d6
    sla a                                         ; $576c: $cb $27
    sla a                                         ; $576e: $cb $27
    sla a                                         ; $5770: $cb $27
    add $32                                       ; $5772: $c6 $32
    ld c, a                                       ; $5774: $4f
    pop af                                        ; $5775: $f1
    add $60                                       ; $5776: $c6 $60
    jp CopyOAMSpriteById                          ; $5778: $c3 $ce $20


GS05_HandleEasyPicrossPuzzleSelectDirectionalInput::
    ld a, [rInputButtonsPressedOrRepeated]        ; $577b: $fa $22 $c3
    and $f0                                       ; $577e: $e6 $f0
    ret z                                         ; $5780: $c8

    ld c, $0a                                     ; $5781: $0e $0a
    ld a, $02                                     ; $5783: $3e $02
    call CallSoundEffectDispatcher                ; $5785: $cd $b6 $03
    ld hl, rInputButtonsPressedOrRepeated         ; $5788: $21 $22 $c3
    bit 5, [hl]                                   ; $578b: $cb $6e
    jr z, .CheckRight                             ; $578d: $28 $09

    ld a, [rPuzzleCursorColumn]                   ; $578f: $fa $36 $d6
    dec a                                         ; $5792: $3d
    and $07                                       ; $5793: $e6 $07
    ld [rPuzzleCursorColumn], a                   ; $5795: $ea $36 $d6

.CheckRight:
    bit 4, [hl]                                   ; $5798: $cb $66
    jr z, .CheckUp                                ; $579a: $28 $09

    ld a, [rPuzzleCursorColumn]                   ; $579c: $fa $36 $d6
    inc a                                         ; $579f: $3c
    and $07                                       ; $57a0: $e6 $07
    ld [rPuzzleCursorColumn], a                   ; $57a2: $ea $36 $d6

.CheckUp:
    bit 6, [hl]                                   ; $57a5: $cb $76
    jr z, .CheckDown                              ; $57a7: $28 $09

    ld a, [rPuzzleAndMenuCursorRow]               ; $57a9: $fa $37 $d6
    dec a                                         ; $57ac: $3d
    and $07                                       ; $57ad: $e6 $07
    ld [rPuzzleAndMenuCursorRow], a               ; $57af: $ea $37 $d6

.CheckDown:
    bit 7, [hl]                                   ; $57b2: $cb $7e
    jr z, .Return                                 ; $57b4: $28 $09

    ld a, [rPuzzleAndMenuCursorRow]               ; $57b6: $fa $37 $d6
    inc a                                         ; $57b9: $3c
    and $07                                       ; $57ba: $e6 $07
    ld [rPuzzleAndMenuCursorRow], a               ; $57bc: $ea $37 $d6

.Return:
    ret                                           ; $57bf: $c9


GS05_DrawCompletedPuzzleMarkersForSelectedSaveSlot::
    ld a, [rSelectedSaveSlotIndex]                ; $57c0: $fa $65 $a0
    sla a                                         ; $57c3: $cb $27
    ld c, a                                       ; $57c5: $4f
    ld b, $00                                     ; $57c6: $06 $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot; $57c8: $21 $a4 $5c
    add hl, bc                                    ; $57cb: $09
    ld a, [hl+]                                   ; $57cc: $2a
    ld h, [hl]                                    ; $57cd: $66
    ld l, a                                       ; $57ce: $6f
    ld b, $00                                     ; $57cf: $06 $00

.BeginNextStatusGridRowScan:
    ld c, $00                                     ; $57d1: $0e $00

.ScanStatusGridCellForCompletedMarker:
    ld a, [hl+]                                   ; $57d3: $2a
    bit 7, a                                      ; $57d4: $cb $7f
    jr z, .AdvanceToNextStatusGridColumn          ; $57d6: $28 $03

    call GS05_DrawCompletedPuzzleMarkerAtGridPosition; $57d8: $cd $1c $58

.AdvanceToNextStatusGridColumn:
    inc c                                         ; $57db: $0c
    ld a, c                                       ; $57dc: $79
    cp $08                                        ; $57dd: $fe $08
    jr nz, .ScanStatusGridCellForCompletedMarker  ; $57df: $20 $f2

    inc b                                         ; $57e1: $04
    ld a, b                                       ; $57e2: $78
    cp $08                                        ; $57e3: $fe $08
    jr nz, .BeginNextStatusGridRowScan            ; $57e5: $20 $ea

    ret                                           ; $57e7: $c9


GS05_DrawCompletedPuzzleMarkersForSelectedSaveSlotExceptCurrentSelection::
    ld a, [rSelectedSaveSlotIndex]                ; $57e8: $fa $65 $a0
    sla a                                         ; $57eb: $cb $27
    ld c, a                                       ; $57ed: $4f
    ld b, $00                                     ; $57ee: $06 $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot; $57f0: $21 $a4 $5c
    add hl, bc                                    ; $57f3: $09
    ld a, [hl+]                                   ; $57f4: $2a
    ld h, [hl]                                    ; $57f5: $66
    ld l, a                                       ; $57f6: $6f
    ld b, $00                                     ; $57f7: $06 $00

.BeginNextStatusGridRowScan:
    ld c, $00                                     ; $57f9: $0e $00

.ScanStatusGridCellForCompletedMarker:
    ld a, [hl+]                                   ; $57fb: $2a
    bit 7, a                                      ; $57fc: $cb $7f
    jr z, .AdvanceToNextStatusGridColumn          ; $57fe: $28 $0f

    ld a, [rPuzzleCursorColumn]                   ; $5800: $fa $36 $d6
    cp c                                          ; $5803: $b9
    jr nz, .DrawCompletedMarkerForNonSelectedCell ; $5804: $20 $06

    ld a, [rPuzzleAndMenuCursorRow]               ; $5806: $fa $37 $d6
    cp b                                          ; $5809: $b8
    jr z, .AdvanceToNextStatusGridColumn          ; $580a: $28 $03

.DrawCompletedMarkerForNonSelectedCell:
    call GS05_DrawCompletedPuzzleMarkerAtGridPosition; $580c: $cd $1c $58

.AdvanceToNextStatusGridColumn:
    inc c                                         ; $580f: $0c
    ld a, c                                       ; $5810: $79
    cp $08                                        ; $5811: $fe $08
    jr nz, .ScanStatusGridCellForCompletedMarker  ; $5813: $20 $e6

    inc b                                         ; $5815: $04
    ld a, b                                       ; $5816: $78
    cp $08                                        ; $5817: $fe $08
    jr nz, .BeginNextStatusGridRowScan            ; $5819: $20 $de

    ret                                           ; $581b: $c9


GS05_DrawCompletedPuzzleMarkerAtGridPosition::
    push bc                                       ; $581c: $c5
    push hl                                       ; $581d: $e5
    ld l, b                                       ; $581e: $68
    ld h, $00                                     ; $581f: $26 $00
    sla l                                         ; $5821: $cb $25
    rl h                                          ; $5823: $cb $14
    sla l                                         ; $5825: $cb $25
    rl h                                          ; $5827: $cb $14
    sla l                                         ; $5829: $cb $25
    rl h                                          ; $582b: $cb $14
    sla l                                         ; $582d: $cb $25
    rl h                                          ; $582f: $cb $14
    sla l                                         ; $5831: $cb $25
    rl h                                          ; $5833: $cb $14
    sla c                                         ; $5835: $cb $21
    ld b, $00                                     ; $5837: $06 $00
    add hl, bc                                    ; $5839: $09
    ld bc, $98c4                                  ; $583a: $01 $c4 $98
    add hl, bc                                    ; $583d: $09
    ld a, h                                       ; $583e: $7c
    ld [rSharedSingleTileCommandStreamDestHigh], a; $583f: $ea $00 $c1
    ld a, l                                       ; $5842: $7d
    ld [rSharedSingleTileCommandStreamDestLow], a ; $5843: $ea $01 $c1
    ld a, $01                                     ; $5846: $3e $01
    ld [rSharedSingleTileCommandStreamTileCount], a; $5848: $ea $02 $c1
    ld a, $55                                     ; $584b: $3e $55
    ld [rSharedSingleTileCommandStreamTileId], a  ; $584d: $ea $03 $c1
    ld a, $00                                     ; $5850: $3e $00
    ld [rSharedSingleTileCommandStreamTerminator], a; $5852: $ea $04 $c1
    ld a, $00                                     ; $5855: $3e $00
    ld bc, rSharedSingleTileCommandStreamDestHigh ; $5857: $01 $00 $c1
    call QueueCommandStreamAndProcessIfLCDOff     ; $585a: $cd $38 $07
    pop hl                                        ; $585d: $e1
    pop bc                                        ; $585e: $c1
    ret                                           ; $585f: $c9


GS05_IncrementSelectedEasyPicrossPuzzleClearCountIfAllowed::
    ld a, [rSelectedSaveSlotIndex]                ; $5860: $fa $65 $a0
    sla a                                         ; $5863: $cb $27
    ld c, a                                       ; $5865: $4f
    ld b, $00                                     ; $5866: $06 $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot; $5868: $21 $a4 $5c
    add hl, bc                                    ; $586b: $09
    ld a, [hl+]                                   ; $586c: $2a
    ld h, [hl]                                    ; $586d: $66
    ld l, a                                       ; $586e: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $586f: $fa $37 $d6
    sla a                                         ; $5872: $cb $27
    sla a                                         ; $5874: $cb $27
    sla a                                         ; $5876: $cb $27
    ld c, a                                       ; $5878: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5879: $fa $36 $d6
    or c                                          ; $587c: $b1
    ld c, a                                       ; $587d: $4f
    ld b, $00                                     ; $587e: $06 $00
    add hl, bc                                    ; $5880: $09
    bit 7, [hl]                                   ; $5881: $cb $7e
    ret nz                                        ; $5883: $c0

    ld a, [hl]                                    ; $5884: $7e
    cp $63                                        ; $5885: $fe $63
    ret z                                         ; $5887: $c8

    inc [hl]                                      ; $5888: $34
    ret                                           ; $5889: $c9


GS05_UpdateSelectedEasyPicrossPuzzleClearStatusAndTimes::
    xor a                                         ; $588a: $af
    ld [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag], a; $588b: $ea $42 $d8
    ld a, [rSelectedSaveSlotIndex]                ; $588e: $fa $65 $a0
    sla a                                         ; $5891: $cb $27
    ld c, a                                       ; $5893: $4f
    ld b, $00                                     ; $5894: $06 $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot; $5896: $21 $a4 $5c
    add hl, bc                                    ; $5899: $09
    ld a, [hl+]                                   ; $589a: $2a
    ld h, [hl]                                    ; $589b: $66
    ld l, a                                       ; $589c: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $589d: $fa $37 $d6
    sla a                                         ; $58a0: $cb $27
    sla a                                         ; $58a2: $cb $27
    sla a                                         ; $58a4: $cb $27
    ld c, a                                       ; $58a6: $4f
    ld a, [rPuzzleCursorColumn]                   ; $58a7: $fa $36 $d6
    or c                                          ; $58aa: $b1
    ld c, a                                       ; $58ab: $4f
    ld b, $00                                     ; $58ac: $06 $00
    add hl, bc                                    ; $58ae: $09
    bit 7, [hl]                                   ; $58af: $cb $7e
    push af                                       ; $58b1: $f5
    jr nz, .UpdateBestClearTime                   ; $58b2: $20 $4b

    push hl                                       ; $58b4: $e5
    ld a, [rSelectedSaveSlotIndex]                ; $58b5: $fa $65 $a0
    ld c, a                                       ; $58b8: $4f
    ld b, $00                                     ; $58b9: $06 $00
    ld hl, rSaveSlot1EasyPicrossClearedPuzzleCount; $58bb: $21 $7e $a0
    add hl, bc                                    ; $58be: $09
    inc [hl]                                      ; $58bf: $34
    pop hl                                        ; $58c0: $e1
    set 7, [hl]                                   ; $58c1: $cb $fe
    ld a, [rSelectedSaveSlotIndex]                ; $58c3: $fa $65 $a0
    sla a                                         ; $58c6: $cb $27
    ld c, a                                       ; $58c8: $4f
    ld b, $00                                     ; $58c9: $06 $00
    ld hl, GS05_EasyPicrossTimeDataPointerTableBySaveSlot; $58cb: $21 $9e $5c
    add hl, bc                                    ; $58ce: $09
    ld a, [hl+]                                   ; $58cf: $2a
    ld h, [hl]                                    ; $58d0: $66
    ld l, a                                       ; $58d1: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $58d2: $fa $37 $d6
    sla a                                         ; $58d5: $cb $27
    sla a                                         ; $58d7: $cb $27
    sla a                                         ; $58d9: $cb $27
    ld c, a                                       ; $58db: $4f
    ld a, [rPuzzleCursorColumn]                   ; $58dc: $fa $36 $d6
    or c                                          ; $58df: $b1
    ld c, a                                       ; $58e0: $4f
    sla a                                         ; $58e1: $cb $27
    add c                                         ; $58e3: $81
    ld c, a                                       ; $58e4: $4f
    ld b, $00                                     ; $58e5: $06 $00
    add hl, bc                                    ; $58e7: $09
    call EncodePuzzleTimerToPackedClearTimeBC     ; $58e8: $cd $54 $51
    ld [hl], c                                    ; $58eb: $71
    inc hl                                        ; $58ec: $23
    ld a, [hl]                                    ; $58ed: $7e
    and $f0                                       ; $58ee: $e6 $f0
    or b                                          ; $58f0: $b0
    ld [hl], a                                    ; $58f1: $77
    ld a, $01                                     ; $58f2: $3e $01
    ld [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag], a; $58f4: $ea $42 $d8
    ld a, [rHintPopupSelection]                   ; $58f7: $fa $33 $d8
    and a                                         ; $58fa: $a7
    jr nz, .UpdateBestClearTime                   ; $58fb: $20 $02

    set 3, [hl]                                   ; $58fd: $cb $de

.UpdateBestClearTime:
    ld a, [rSelectedSaveSlotIndex]                ; $58ff: $fa $65 $a0
    sla a                                         ; $5902: $cb $27
    ld c, a                                       ; $5904: $4f
    ld b, $00                                     ; $5905: $06 $00
    ld hl, GS05_EasyPicrossTimeDataPointerTableBySaveSlot; $5907: $21 $9e $5c
    add hl, bc                                    ; $590a: $09
    ld a, [hl+]                                   ; $590b: $2a
    ld h, [hl]                                    ; $590c: $66
    ld l, a                                       ; $590d: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $590e: $fa $37 $d6
    sla a                                         ; $5911: $cb $27
    sla a                                         ; $5913: $cb $27
    sla a                                         ; $5915: $cb $27
    ld c, a                                       ; $5917: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5918: $fa $36 $d6
    or c                                          ; $591b: $b1
    ld c, a                                       ; $591c: $4f
    sla a                                         ; $591d: $cb $27
    add c                                         ; $591f: $81
    ld c, a                                       ; $5920: $4f
    ld b, $00                                     ; $5921: $06 $00
    add hl, bc                                    ; $5923: $09
    inc hl                                        ; $5924: $23
    push hl                                       ; $5925: $e5
    call EncodePuzzleTimerToPackedClearTimeBC     ; $5926: $cd $54 $51
    ld a, [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag]; $5929: $fa $42 $d8
    and a                                         ; $592c: $a7
    jr nz, .StoreNewBestClearTime                 ; $592d: $20 $18

    ld a, [hl+]                                   ; $592f: $2a
    and $70                                       ; $5930: $e6 $70
    swap a                                        ; $5932: $cb $37
    cp b                                          ; $5934: $b8
    jr z, .CompareBestClearTimeLowByteAndHintUsedOnTie; $5935: $28 $04

    jr nc, .SkipBestClearTimeUpdate               ; $5937: $30 $22

    jr .StoreNewBestClearTime                     ; $5939: $18 $0c

.CompareBestClearTimeLowByteAndHintUsedOnTie:
    ld a, [hl]                                    ; $593b: $7e
    cp c                                          ; $593c: $b9
    jr c, .StoreNewBestClearTime                  ; $593d: $38 $08

    jr nz, .SkipBestClearTimeUpdate               ; $593f: $20 $1a

    ld a, [rHintPopupSelection]                   ; $5941: $fa $33 $d8
    and a                                         ; $5944: $a7
    jr z, .SkipBestClearTimeUpdate                ; $5945: $28 $14

.StoreNewBestClearTime:
    pop hl                                        ; $5947: $e1
    ld a, [hl]                                    ; $5948: $7e
    and $0f                                       ; $5949: $e6 $0f
    swap b                                        ; $594b: $cb $30
    or b                                          ; $594d: $b0
    ld [hl+], a                                   ; $594e: $22
    ld [hl], c                                    ; $594f: $71
    ld a, [rHintPopupSelection]                   ; $5950: $fa $33 $d8
    and a                                         ; $5953: $a7
    jr nz, .ReturnFromClearStatusAndTimeUpdate    ; $5954: $20 $06

    dec hl                                        ; $5956: $2b
    set 7, [hl]                                   ; $5957: $cb $fe
    jr .ReturnFromClearStatusAndTimeUpdate        ; $5959: $18 $01

.SkipBestClearTimeUpdate:
    pop hl                                        ; $595b: $e1

.ReturnFromClearStatusAndTimeUpdate:
    pop af                                        ; $595c: $f1
    ret                                           ; $595d: $c9


GS05_DrawSelectedEasyPicrossPuzzleInfoPanel::
    ld a, [rSelectedSaveSlotIndex]                ; $595e: $fa $65 $a0
    sla a                                         ; $5961: $cb $27
    ld c, a                                       ; $5963: $4f
    ld b, $00                                     ; $5964: $06 $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot; $5966: $21 $a4 $5c
    add hl, bc                                    ; $5969: $09
    ld a, [hl+]                                   ; $596a: $2a
    ld h, [hl]                                    ; $596b: $66
    ld l, a                                       ; $596c: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $596d: $fa $37 $d6
    sla a                                         ; $5970: $cb $27
    sla a                                         ; $5972: $cb $27
    sla a                                         ; $5974: $cb $27
    ld c, a                                       ; $5976: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5977: $fa $36 $d6
    or c                                          ; $597a: $b1
    ld c, a                                       ; $597b: $4f
    ld b, $00                                     ; $597c: $06 $00
    add hl, bc                                    ; $597e: $09
    ld a, [hl]                                    ; $597f: $7e
    push af                                       ; $5980: $f5
    and $7f                                       ; $5981: $e6 $7f
    call SplitAToDecimalDigitsAndPushHundredsTens ; $5983: $cd $72 $19
    add $51                                       ; $5986: $c6 $51
    ld bc, $4818                                  ; $5988: $01 $18 $48
    call CopyOAMSpriteById                        ; $598b: $cd $ce $20
    pop af                                        ; $598e: $f1
    cp $0a                                        ; $598f: $fe $0a
    jr z, .AfterTimesClearedDigits                ; $5991: $28 $08

    add $51                                       ; $5993: $c6 $51
    ld bc, $4018                                  ; $5995: $01 $18 $40
    call CopyOAMSpriteById                        ; $5998: $cd $ce $20

.AfterTimesClearedDigits:
    pop af                                        ; $599b: $f1
    pop af                                        ; $599c: $f1
    bit 7, a                                      ; $599d: $cb $7f
    jp z, GS05_DrawSelectedEasyPicrossPuzzleInfoPanel_DrawUnclearedPlaceholders; $599f: $ca $72 $5a

    ld a, [rSelectedSaveSlotIndex]                ; $59a2: $fa $65 $a0
    sla a                                         ; $59a5: $cb $27
    ld c, a                                       ; $59a7: $4f
    ld b, $00                                     ; $59a8: $06 $00
    ld hl, GS05_EasyPicrossTimeDataPointerTableBySaveSlot; $59aa: $21 $9e $5c
    add hl, bc                                    ; $59ad: $09
    ld a, [hl+]                                   ; $59ae: $2a
    ld h, [hl]                                    ; $59af: $66
    ld l, a                                       ; $59b0: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $59b1: $fa $37 $d6
    sla a                                         ; $59b4: $cb $27
    sla a                                         ; $59b6: $cb $27
    sla a                                         ; $59b8: $cb $27
    ld c, a                                       ; $59ba: $4f
    ld a, [rPuzzleCursorColumn]                   ; $59bb: $fa $36 $d6
    or c                                          ; $59be: $b1
    ld c, a                                       ; $59bf: $4f
    sla a                                         ; $59c0: $cb $27
    add c                                         ; $59c2: $81
    ld c, a                                       ; $59c3: $4f
    ld b, $00                                     ; $59c4: $06 $00
    add hl, bc                                    ; $59c6: $09
    ld c, [hl]                                    ; $59c7: $4e
    inc hl                                        ; $59c8: $23
    ld b, [hl]                                    ; $59c9: $46
    call DecodePackedPuzzleClearTimeToBCDDigits   ; $59ca: $cd $82 $51
    push bc                                       ; $59cd: $c5
    ld a, b                                       ; $59ce: $78
    and $f0                                       ; $59cf: $e6 $f0
    swap a                                        ; $59d1: $cb $37
    add $51                                       ; $59d3: $c6 $51
    ld bc, $0818                                  ; $59d5: $01 $18 $08
    call CopyOAMSpriteById                        ; $59d8: $cd $ce $20
    pop bc                                        ; $59db: $c1
    push bc                                       ; $59dc: $c5
    ld a, b                                       ; $59dd: $78
    and $0f                                       ; $59de: $e6 $0f
    add $51                                       ; $59e0: $c6 $51
    ld bc, $1018                                  ; $59e2: $01 $18 $10
    call CopyOAMSpriteById                        ; $59e5: $cd $ce $20
    pop bc                                        ; $59e8: $c1
    push bc                                       ; $59e9: $c5
    ld a, c                                       ; $59ea: $79
    and $f0                                       ; $59eb: $e6 $f0
    swap a                                        ; $59ed: $cb $37
    add $51                                       ; $59ef: $c6 $51
    ld bc, $2018                                  ; $59f1: $01 $18 $20
    call CopyOAMSpriteById                        ; $59f4: $cd $ce $20
    pop bc                                        ; $59f7: $c1
    ld a, c                                       ; $59f8: $79
    and $0f                                       ; $59f9: $e6 $0f
    add $51                                       ; $59fb: $c6 $51
    ld bc, $2818                                  ; $59fd: $01 $18 $28
    call CopyOAMSpriteById                        ; $5a00: $cd $ce $20
    ld a, [hl]                                    ; $5a03: $7e
    call GS05_UpdateFirstClearTimeHintUsedIconTile; $5a04: $cd $07 $5c
    ld a, [rSelectedSaveSlotIndex]                ; $5a07: $fa $65 $a0
    sla a                                         ; $5a0a: $cb $27
    ld c, a                                       ; $5a0c: $4f
    ld b, $00                                     ; $5a0d: $06 $00
    ld hl, GS05_EasyPicrossTimeDataPointerTableBySaveSlot; $5a0f: $21 $9e $5c
    add hl, bc                                    ; $5a12: $09
    ld a, [hl+]                                   ; $5a13: $2a
    ld h, [hl]                                    ; $5a14: $66
    ld l, a                                       ; $5a15: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $5a16: $fa $37 $d6
    sla a                                         ; $5a19: $cb $27
    sla a                                         ; $5a1b: $cb $27
    sla a                                         ; $5a1d: $cb $27
    ld c, a                                       ; $5a1f: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5a20: $fa $36 $d6
    or c                                          ; $5a23: $b1
    ld c, a                                       ; $5a24: $4f
    sla a                                         ; $5a25: $cb $27
    add c                                         ; $5a27: $81
    ld c, a                                       ; $5a28: $4f
    ld b, $00                                     ; $5a29: $06 $00
    add hl, bc                                    ; $5a2b: $09
    inc hl                                        ; $5a2c: $23
    ld a, [hl+]                                   ; $5a2d: $2a
    and $f0                                       ; $5a2e: $e6 $f0
    swap a                                        ; $5a30: $cb $37
    ld b, a                                       ; $5a32: $47
    ld c, [hl]                                    ; $5a33: $4e
    call DecodePackedPuzzleClearTimeToBCDDigits   ; $5a34: $cd $82 $51
    push bc                                       ; $5a37: $c5
    ld a, b                                       ; $5a38: $78
    and $f0                                       ; $5a39: $e6 $f0
    swap a                                        ; $5a3b: $cb $37
    add $51                                       ; $5a3d: $c6 $51
    ld bc, $6818                                  ; $5a3f: $01 $18 $68
    call CopyOAMSpriteById                        ; $5a42: $cd $ce $20
    pop bc                                        ; $5a45: $c1
    push bc                                       ; $5a46: $c5
    ld a, b                                       ; $5a47: $78
    and $0f                                       ; $5a48: $e6 $0f
    add $51                                       ; $5a4a: $c6 $51
    ld bc, $7018                                  ; $5a4c: $01 $18 $70
    call CopyOAMSpriteById                        ; $5a4f: $cd $ce $20
    pop bc                                        ; $5a52: $c1
    push bc                                       ; $5a53: $c5
    ld a, c                                       ; $5a54: $79
    and $f0                                       ; $5a55: $e6 $f0
    swap a                                        ; $5a57: $cb $37
    add $51                                       ; $5a59: $c6 $51
    ld bc, $8018                                  ; $5a5b: $01 $18 $80
    call CopyOAMSpriteById                        ; $5a5e: $cd $ce $20
    pop bc                                        ; $5a61: $c1
    ld a, c                                       ; $5a62: $79
    and $0f                                       ; $5a63: $e6 $0f
    add $51                                       ; $5a65: $c6 $51
    ld bc, $8818                                  ; $5a67: $01 $18 $88
    call CopyOAMSpriteById                        ; $5a6a: $cd $ce $20
    dec hl                                        ; $5a6d: $2b
    ld a, [hl]                                    ; $5a6e: $7e
    jp GS05_UpdateBestClearTimeHintUsedIconTile   ; $5a6f: $c3 $2c $5c


GS05_DrawSelectedEasyPicrossPuzzleInfoPanel_DrawUnclearedPlaceholders::
    ld a, $80                                     ; $5a72: $3e $80
    ld bc, $0818                                  ; $5a74: $01 $18 $08
    call CopyOAMSpriteById                        ; $5a77: $cd $ce $20
    ld a, $80                                     ; $5a7a: $3e $80
    ld bc, $1018                                  ; $5a7c: $01 $18 $10
    call CopyOAMSpriteById                        ; $5a7f: $cd $ce $20
    ld a, $80                                     ; $5a82: $3e $80
    ld bc, $2018                                  ; $5a84: $01 $18 $20
    call CopyOAMSpriteById                        ; $5a87: $cd $ce $20
    ld a, $80                                     ; $5a8a: $3e $80
    ld bc, $2818                                  ; $5a8c: $01 $18 $28
    call CopyOAMSpriteById                        ; $5a8f: $cd $ce $20
    ld a, $80                                     ; $5a92: $3e $80
    ld bc, $6818                                  ; $5a94: $01 $18 $68
    call CopyOAMSpriteById                        ; $5a97: $cd $ce $20
    ld a, $80                                     ; $5a9a: $3e $80
    ld bc, $7018                                  ; $5a9c: $01 $18 $70
    call CopyOAMSpriteById                        ; $5a9f: $cd $ce $20
    ld a, $80                                     ; $5aa2: $3e $80
    ld bc, $8018                                  ; $5aa4: $01 $18 $80
    call CopyOAMSpriteById                        ; $5aa7: $cd $ce $20
    ld a, $80                                     ; $5aaa: $3e $80
    ld bc, $8818                                  ; $5aac: $01 $18 $88
    call CopyOAMSpriteById                        ; $5aaf: $cd $ce $20
    xor a                                         ; $5ab2: $af
    call GS05_UpdateFirstClearTimeHintUsedIconTile; $5ab3: $cd $07 $5c
    jp GS05_UpdateBestClearTimeHintUsedIconTile   ; $5ab6: $c3 $2c $5c


GS05_DrawSelectedEasyPicrossPuzzleInfoPanelFromSelectedPuzzleCache::
    ld a, [rSelectedPuzzleStatusData]             ; $5ab9: $fa $4c $d8
    push af                                       ; $5abc: $f5
    and $7f                                       ; $5abd: $e6 $7f
    call SplitAToDecimalDigitsAndPushHundredsTens ; $5abf: $cd $72 $19
    add $51                                       ; $5ac2: $c6 $51
    ld bc, $4818                                  ; $5ac4: $01 $18 $48
    call CopyOAMSpriteById                        ; $5ac7: $cd $ce $20
    pop af                                        ; $5aca: $f1
    cp $0a                                        ; $5acb: $fe $0a
    jr z, .AfterTimesClearedDigits                ; $5acd: $28 $08

    add $51                                       ; $5acf: $c6 $51
    ld bc, $4018                                  ; $5ad1: $01 $18 $40
    call CopyOAMSpriteById                        ; $5ad4: $cd $ce $20

.AfterTimesClearedDigits:
    pop af                                        ; $5ad7: $f1
    pop af                                        ; $5ad8: $f1
    bit 7, a                                      ; $5ad9: $cb $7f
    jp z, GS05_DrawSelectedEasyPicrossPuzzleInfoPanelFromSelectedPuzzleCache_DrawUnclearedPlaceholders; $5adb: $ca $69 $5b

    ld hl, rSelectedPuzzleTimeDataRecordByte0     ; $5ade: $21 $49 $d8
    ld c, [hl]                                    ; $5ae1: $4e
    inc hl                                        ; $5ae2: $23
    ld b, [hl]                                    ; $5ae3: $46
    call DecodePackedPuzzleClearTimeToBCDDigits   ; $5ae4: $cd $82 $51
    push bc                                       ; $5ae7: $c5
    ld a, b                                       ; $5ae8: $78
    and $f0                                       ; $5ae9: $e6 $f0
    swap a                                        ; $5aeb: $cb $37
    add $51                                       ; $5aed: $c6 $51
    ld bc, $0818                                  ; $5aef: $01 $18 $08
    call CopyOAMSpriteById                        ; $5af2: $cd $ce $20
    pop bc                                        ; $5af5: $c1
    push bc                                       ; $5af6: $c5
    ld a, b                                       ; $5af7: $78
    and $0f                                       ; $5af8: $e6 $0f
    add $51                                       ; $5afa: $c6 $51
    ld bc, $1018                                  ; $5afc: $01 $18 $10
    call CopyOAMSpriteById                        ; $5aff: $cd $ce $20
    pop bc                                        ; $5b02: $c1
    push bc                                       ; $5b03: $c5
    ld a, c                                       ; $5b04: $79
    and $f0                                       ; $5b05: $e6 $f0
    swap a                                        ; $5b07: $cb $37
    add $51                                       ; $5b09: $c6 $51
    ld bc, $2018                                  ; $5b0b: $01 $18 $20
    call CopyOAMSpriteById                        ; $5b0e: $cd $ce $20
    pop bc                                        ; $5b11: $c1
    ld a, c                                       ; $5b12: $79
    and $0f                                       ; $5b13: $e6 $0f
    add $51                                       ; $5b15: $c6 $51
    ld bc, $2818                                  ; $5b17: $01 $18 $28
    call CopyOAMSpriteById                        ; $5b1a: $cd $ce $20
    ld a, [hl]                                    ; $5b1d: $7e
    call GS05_UpdateFirstClearTimeHintUsedIconTile; $5b1e: $cd $07 $5c
    ld hl, rSelectedPuzzleTimeDataRecordByte1     ; $5b21: $21 $4a $d8
    ld a, [hl+]                                   ; $5b24: $2a
    and $f0                                       ; $5b25: $e6 $f0
    swap a                                        ; $5b27: $cb $37
    ld b, a                                       ; $5b29: $47
    ld c, [hl]                                    ; $5b2a: $4e
    call DecodePackedPuzzleClearTimeToBCDDigits   ; $5b2b: $cd $82 $51
    push bc                                       ; $5b2e: $c5
    ld a, b                                       ; $5b2f: $78
    and $f0                                       ; $5b30: $e6 $f0
    swap a                                        ; $5b32: $cb $37
    add $51                                       ; $5b34: $c6 $51
    ld bc, $6818                                  ; $5b36: $01 $18 $68
    call CopyOAMSpriteById                        ; $5b39: $cd $ce $20
    pop bc                                        ; $5b3c: $c1
    push bc                                       ; $5b3d: $c5
    ld a, b                                       ; $5b3e: $78
    and $0f                                       ; $5b3f: $e6 $0f
    add $51                                       ; $5b41: $c6 $51
    ld bc, $7018                                  ; $5b43: $01 $18 $70
    call CopyOAMSpriteById                        ; $5b46: $cd $ce $20
    pop bc                                        ; $5b49: $c1
    push bc                                       ; $5b4a: $c5
    ld a, c                                       ; $5b4b: $79
    and $f0                                       ; $5b4c: $e6 $f0
    swap a                                        ; $5b4e: $cb $37
    add $51                                       ; $5b50: $c6 $51
    ld bc, $8018                                  ; $5b52: $01 $18 $80
    call CopyOAMSpriteById                        ; $5b55: $cd $ce $20
    pop bc                                        ; $5b58: $c1
    ld a, c                                       ; $5b59: $79
    and $0f                                       ; $5b5a: $e6 $0f
    add $51                                       ; $5b5c: $c6 $51
    ld bc, $8818                                  ; $5b5e: $01 $18 $88
    call CopyOAMSpriteById                        ; $5b61: $cd $ce $20
    dec hl                                        ; $5b64: $2b
    ld a, [hl]                                    ; $5b65: $7e
    jp GS05_UpdateBestClearTimeHintUsedIconTile   ; $5b66: $c3 $2c $5c


GS05_DrawSelectedEasyPicrossPuzzleInfoPanelFromSelectedPuzzleCache_DrawUnclearedPlaceholders::
    ld a, $80                                     ; $5b69: $3e $80
    ld bc, $0818                                  ; $5b6b: $01 $18 $08
    call CopyOAMSpriteById                        ; $5b6e: $cd $ce $20
    ld a, $80                                     ; $5b71: $3e $80
    ld bc, $1018                                  ; $5b73: $01 $18 $10
    call CopyOAMSpriteById                        ; $5b76: $cd $ce $20
    ld a, $80                                     ; $5b79: $3e $80
    ld bc, $2018                                  ; $5b7b: $01 $18 $20
    call CopyOAMSpriteById                        ; $5b7e: $cd $ce $20
    ld a, $80                                     ; $5b81: $3e $80
    ld bc, $2818                                  ; $5b83: $01 $18 $28
    call CopyOAMSpriteById                        ; $5b86: $cd $ce $20
    ld a, $80                                     ; $5b89: $3e $80
    ld bc, $6818                                  ; $5b8b: $01 $18 $68
    call CopyOAMSpriteById                        ; $5b8e: $cd $ce $20
    ld a, $80                                     ; $5b91: $3e $80
    ld bc, $7018                                  ; $5b93: $01 $18 $70
    call CopyOAMSpriteById                        ; $5b96: $cd $ce $20
    ld a, $80                                     ; $5b99: $3e $80
    ld bc, $8018                                  ; $5b9b: $01 $18 $80
    call CopyOAMSpriteById                        ; $5b9e: $cd $ce $20
    ld a, $80                                     ; $5ba1: $3e $80
    ld bc, $8818                                  ; $5ba3: $01 $18 $88
    call CopyOAMSpriteById                        ; $5ba6: $cd $ce $20
    xor a                                         ; $5ba9: $af
    call GS05_UpdateFirstClearTimeHintUsedIconTile; $5baa: $cd $07 $5c
    jp GS05_UpdateBestClearTimeHintUsedIconTile   ; $5bad: $c3 $2c $5c


GS05_LoadSelectedEasyPicrossPuzzleStatusAndTimeDataRecord::
    ld a, [rSelectedSaveSlotIndex]                ; $5bb0: $fa $65 $a0
    sla a                                         ; $5bb3: $cb $27
    ld c, a                                       ; $5bb5: $4f
    ld b, $00                                     ; $5bb6: $06 $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot; $5bb8: $21 $a4 $5c
    add hl, bc                                    ; $5bbb: $09
    ld a, [hl+]                                   ; $5bbc: $2a
    ld h, [hl]                                    ; $5bbd: $66
    ld l, a                                       ; $5bbe: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $5bbf: $fa $37 $d6
    sla a                                         ; $5bc2: $cb $27
    sla a                                         ; $5bc4: $cb $27
    sla a                                         ; $5bc6: $cb $27
    ld c, a                                       ; $5bc8: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5bc9: $fa $36 $d6
    or c                                          ; $5bcc: $b1
    ld c, a                                       ; $5bcd: $4f
    ld b, $00                                     ; $5bce: $06 $00
    add hl, bc                                    ; $5bd0: $09
    ld a, [hl]                                    ; $5bd1: $7e
    ld [rSelectedPuzzleStatusData], a             ; $5bd2: $ea $4c $d8
    ld a, [rSelectedSaveSlotIndex]                ; $5bd5: $fa $65 $a0
    sla a                                         ; $5bd8: $cb $27
    ld c, a                                       ; $5bda: $4f
    ld b, $00                                     ; $5bdb: $06 $00
    ld hl, GS05_EasyPicrossTimeDataPointerTableBySaveSlot; $5bdd: $21 $9e $5c
    add hl, bc                                    ; $5be0: $09
    ld a, [hl+]                                   ; $5be1: $2a
    ld h, [hl]                                    ; $5be2: $66
    ld l, a                                       ; $5be3: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $5be4: $fa $37 $d6
    sla a                                         ; $5be7: $cb $27
    sla a                                         ; $5be9: $cb $27
    sla a                                         ; $5beb: $cb $27
    ld c, a                                       ; $5bed: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5bee: $fa $36 $d6
    or c                                          ; $5bf1: $b1
    ld c, a                                       ; $5bf2: $4f
    sla a                                         ; $5bf3: $cb $27
    add c                                         ; $5bf5: $81
    ld c, a                                       ; $5bf6: $4f
    ld b, $00                                     ; $5bf7: $06 $00
    add hl, bc                                    ; $5bf9: $09
    ld a, [hl+]                                   ; $5bfa: $2a
    ld [rSelectedPuzzleTimeDataRecordByte0], a    ; $5bfb: $ea $49 $d8
    ld a, [hl+]                                   ; $5bfe: $2a
    ld [rSelectedPuzzleTimeDataRecordByte1], a    ; $5bff: $ea $4a $d8
    ld a, [hl]                                    ; $5c02: $7e
    ld [rSelectedPuzzleTimeDataRecordByte2], a    ; $5c03: $ea $4b $d8
    ret                                           ; $5c06: $c9


GS05_UpdateFirstClearTimeHintUsedIconTile::
    push af                                       ; $5c07: $f5
    push hl                                       ; $5c08: $e5
    bit 3, a                                      ; $5c09: $cb $5f
    jr z, .DrawFirstClearTimeHintUsedBlankTile    ; $5c0b: $28 $0a

    ld a, $01                                     ; $5c0d: $3e $01
    ld bc, GS05_FirstClearTimeHintUsedIconCommandStream; $5c0f: $01 $22 $5c
    call QueueCommandStreamAndProcessIfLCDOff     ; $5c12: $cd $38 $07
    jr .ReturnFromFirstClearTimeHintUsedTileUpdate; $5c15: $18 $08

.DrawFirstClearTimeHintUsedBlankTile:
    ld a, $01                                     ; $5c17: $3e $01
    ld bc, GS05_FirstClearTimeHintUsedBlankCommandStream; $5c19: $01 $27 $5c
    call QueueCommandStreamAndProcessIfLCDOff     ; $5c1c: $cd $38 $07

.ReturnFromFirstClearTimeHintUsedTileUpdate:
    pop hl                                        ; $5c1f: $e1
    pop af                                        ; $5c20: $f1
    ret                                           ; $5c21: $c9


GS05_FirstClearTimeHintUsedIconCommandStream::
    db $98, $66, $01, $2f
    db $00

GS05_FirstClearTimeHintUsedBlankCommandStream::
    db $98, $66, $01, $2b
    db $00

GS05_UpdateBestClearTimeHintUsedIconTile::
    push af                                       ; $5c2c: $f5
    push hl                                       ; $5c2d: $e5
    bit 7, a                                      ; $5c2e: $cb $7f
    jr z, .DrawBestClearTimeHintUsedBlankTile     ; $5c30: $28 $0a

    ld a, $01                                     ; $5c32: $3e $01
    ld bc, GS05_BestClearTimeHintUsedIconCommandStream; $5c34: $01 $47 $5c
    call QueueCommandStreamAndProcessIfLCDOff     ; $5c37: $cd $38 $07
    jr .ReturnFromBestClearTimeHintUsedTileUpdate ; $5c3a: $18 $08

.DrawBestClearTimeHintUsedBlankTile:
    ld a, $01                                     ; $5c3c: $3e $01
    ld bc, GS05_BestClearTimeHintUsedBlankCommandStream; $5c3e: $01 $4c $5c
    call QueueCommandStreamAndProcessIfLCDOff     ; $5c41: $cd $38 $07

.ReturnFromBestClearTimeHintUsedTileUpdate:
    pop hl                                        ; $5c44: $e1
    pop af                                        ; $5c45: $f1
    ret                                           ; $5c46: $c9


GS05_BestClearTimeHintUsedIconCommandStream::
    db $98, $72, $01, $2f
    db $00

GS05_BestClearTimeHintUsedBlankCommandStream::
    db $98, $72, $01, $2b
    db $00

GS05_AdvanceSelectionToNextUnclearedPuzzleIfPossible::
    ld a, [rPuzzleAndMenuCursorRow]               ; $5c51: $fa $37 $d6
    cp $07                                        ; $5c54: $fe $07
    jr nz, .CheckNextPuzzleClearStatus            ; $5c56: $20 $06

    ld a, [rPuzzleCursorColumn]                   ; $5c58: $fa $36 $d6
    cp $07                                        ; $5c5b: $fe $07
    ret z                                         ; $5c5d: $c8

.CheckNextPuzzleClearStatus:
    ld a, [rSelectedSaveSlotIndex]                ; $5c5e: $fa $65 $a0
    sla a                                         ; $5c61: $cb $27
    ld c, a                                       ; $5c63: $4f
    ld b, $00                                     ; $5c64: $06 $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot; $5c66: $21 $a4 $5c
    add hl, bc                                    ; $5c69: $09
    ld a, [hl+]                                   ; $5c6a: $2a
    ld h, [hl]                                    ; $5c6b: $66
    ld l, a                                       ; $5c6c: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $5c6d: $fa $37 $d6
    sla a                                         ; $5c70: $cb $27
    sla a                                         ; $5c72: $cb $27
    sla a                                         ; $5c74: $cb $27
    ld c, a                                       ; $5c76: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5c77: $fa $36 $d6
    or c                                          ; $5c7a: $b1
    ld c, a                                       ; $5c7b: $4f
    ld b, $00                                     ; $5c7c: $06 $00
    add hl, bc                                    ; $5c7e: $09
    inc hl                                        ; $5c7f: $23
    bit 7, [hl]                                   ; $5c80: $cb $7e
    ret nz                                        ; $5c82: $c0

    ld a, [rPuzzleCursorColumn]                   ; $5c83: $fa $36 $d6
    inc a                                         ; $5c86: $3c
    cp $08                                        ; $5c87: $fe $08
    jr nz, .StoreAdvancedSelectionAndPlayMoveSfx  ; $5c89: $20 $08

    ld a, [rPuzzleAndMenuCursorRow]               ; $5c8b: $fa $37 $d6
    inc a                                         ; $5c8e: $3c
    ld [rPuzzleAndMenuCursorRow], a               ; $5c8f: $ea $37 $d6
    xor a                                         ; $5c92: $af

.StoreAdvancedSelectionAndPlayMoveSfx:
    ld [rPuzzleCursorColumn], a                   ; $5c93: $ea $36 $d6
    ld c, $0a                                     ; $5c96: $0e $0a
    ld a, $02                                     ; $5c98: $3e $02
    call CallSoundEffectDispatcher                ; $5c9a: $cd $b6 $03
    ret                                           ; $5c9d: $c9


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

GameState_08_TODO_PhaseDispatcher::
    ld a, [rStatePhase_Current]                   ; $5d7e: $fa $35 $d6
    rst RST_18                                    ; $5d81: $df

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

GS08_StatePhase_00_TODO::
    ld a, $43                                     ; $5d9a: $3e $43
    ld [rLCDCShadow], a                           ; $5d9c: $ea $2e $c3
    xor a                                         ; $5d9f: $af
    ld [rBGPShadow], a                            ; $5da0: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $5da3: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $5da6: $ea $31 $c3
    ld [rSCXShadow], a                            ; $5da9: $ea $32 $c3
    ld [rSCYShadow], a                            ; $5dac: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $5daf: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $5db2: $cd $ab $05
    call LoadPuzzleDataBuffer                     ; $5db5: $cd $f1 $07
    call LoadGameBoardTileData                    ; $5db8: $cd $b9 $69
    xor a                                         ; $5dbb: $af
    ld [rPuzzleCursorColumn], a                   ; $5dbc: $ea $36 $d6
    ld [rPuzzleAndMenuCursorRow], a               ; $5dbf: $ea $37 $d6
    ld a, $00                                     ; $5dc2: $3e $00
    ld [rHintPopupSelection], a                   ; $5dc4: $ea $33 $d8
    ld a, $02                                     ; $5dc7: $3e $02
    ld [rPuzzleTimerAdjustmentStep], a            ; $5dc9: $ea $11 $d8
    ld a, $06                                     ; $5dcc: $3e $06
    ld hl, $7800                                  ; $5dce: $21 $00 $78
    ld de, $8500                                  ; $5dd1: $11 $00 $85
    ld bc, $0200                                  ; $5dd4: $01 $00 $02
    call BankedTileCopy                           ; $5dd7: $cd $e4 $04
    ld a, $2f                                     ; $5dda: $3e $2f
    ld [rLYCShadow], a                            ; $5ddc: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $5ddf: $21 $37 $c3
    set 6, [hl]                                   ; $5de2: $cb $f6
    ld hl, rIE                                    ; $5de4: $21 $ff $ff
    set 1, [hl]                                   ; $5de7: $cb $ce
    ld a, $01                                     ; $5de9: $3e $01
    ld [rLCDCInterruptDispatchIndex], a           ; $5deb: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $5dee: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $5df1: $ea $50 $c3
    call BuildClueRunLengthBuffers                ; $5df4: $cd $30 $6f
    call ClearShadowOAMBuffer                     ; $5df7: $cd $b6 $05
    call ResetPuzzleTimerState                    ; $5dfa: $cd $eb $7b
    call Call_001_786e                            ; $5dfd: $cd $6e $78
    ld a, [rSelectedSaveSlotIndex]                ; $5e00: $fa $65 $a0
    ld c, a                                       ; $5e03: $4f
    sla a                                         ; $5e04: $cb $27
    sla a                                         ; $5e06: $cb $27
    add c                                         ; $5e08: $81
    ld c, a                                       ; $5e09: $4f
    ld b, $00                                     ; $5e0a: $06 $00
    ld hl, rSaveDataDefaultBlockBDest             ; $5e0c: $21 $69 $a0
    add hl, bc                                    ; $5e0f: $09
    ld c, [hl]                                    ; $5e10: $4e
    ld b, $00                                     ; $5e11: $06 $00
    ld hl, $7e2d                                  ; $5e13: $21 $2d $7e
    add hl, bc                                    ; $5e16: $09
    ld c, $00                                     ; $5e17: $0e $00
    ld a, $01                                     ; $5e19: $3e $01
    call CallSoundEffectDispatcher                ; $5e1b: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $5e1e: $cd $99 $03
    ld c, [hl]                                    ; $5e21: $4e
    ld a, $01                                     ; $5e22: $3e $01
    call CallSoundEffectDispatcher                ; $5e24: $cd $b6 $03
    call EnableLCDFromShadow                      ; $5e27: $cd $a2 $04
    ld a, [rPuzzleGridWidth]                      ; $5e2a: $fa $00 $d8
    cp $05                                        ; $5e2d: $fe $05
    jr nz, jr_001_5e40                            ; $5e2f: $20 $0f

    ld b, $03                                     ; $5e31: $06 $03
    ld hl, $46a0                                  ; $5e33: $21 $a0 $46
    ld c, $01                                     ; $5e36: $0e $01
    ld de, $0014                                  ; $5e38: $11 $14 $00
    call PlayScreenTransitionFadeIn               ; $5e3b: $cd $0d $04
    jr jr_001_5e60                                ; $5e3e: $18 $20

jr_001_5e40:
    cp $0a                                        ; $5e40: $fe $0a
    jr nz, jr_001_5e53                            ; $5e42: $20 $0f

    ld b, $03                                     ; $5e44: $06 $03
    ld hl, $46ac                                  ; $5e46: $21 $ac $46
    ld c, $02                                     ; $5e49: $0e $02
    ld de, $0024                                  ; $5e4b: $11 $24 $00
    call PlayScreenTransitionFadeIn               ; $5e4e: $cd $0d $04
    jr jr_001_5e60                                ; $5e51: $18 $0d

jr_001_5e53:
    ld b, $03                                     ; $5e53: $06 $03
    ld hl, $4694                                  ; $5e55: $21 $94 $46
    ld c, $00                                     ; $5e58: $0e $00
    ld de, $0004                                  ; $5e5a: $11 $04 $00
    call PlayScreenTransitionFadeIn               ; $5e5d: $cd $0d $04

jr_001_5e60:
    ld a, [rPuzzleGridWidth]                      ; $5e60: $fa $00 $d8
    cp $05                                        ; $5e63: $fe $05
    jr nz, jr_001_5e8e                            ; $5e65: $20 $27

    ld a, $0d                                     ; $5e67: $3e $0d
    ld [rMessageScriptStreamResetEntryLow], a     ; $5e69: $ea $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $5e6c: $ea $2b $d8
    ld a, $58                                     ; $5e6f: $3e $58
    ld [rMessageScriptStreamResetEntryHigh], a    ; $5e71: $ea $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $5e74: $ea $2c $d8
    ld a, $93                                     ; $5e77: $3e $93
    ld [rMessageScriptStreamLimitLow], a          ; $5e79: $ea $45 $d8
    ld a, $86                                     ; $5e7c: $3e $86
    ld [rMessageScriptStreamLimitHigh], a         ; $5e7e: $ea $46 $d8
    ld a, $aa                                     ; $5e81: $3e $aa
    ld [rMessageScriptStreamPointerLow], a        ; $5e83: $ea $2d $d8
    ld a, $5c                                     ; $5e86: $3e $5c
    ld [rMessageScriptStreamPointerHigh], a       ; $5e88: $ea $2e $d8
    call Call_001_5fab                            ; $5e8b: $cd $ab $5f

jr_001_5e8e:
    ld hl, rStatePhase_Current                    ; $5e8e: $21 $35 $d6
    inc [hl]                                      ; $5e91: $34
    ret                                           ; $5e92: $c9


GS08_StatePhase_0b_TODO::
    ld a, $43                                     ; $5e93: $3e $43
    ld [rLCDCShadow], a                           ; $5e95: $ea $2e $c3
    xor a                                         ; $5e98: $af
    ld [rBGPShadow], a                            ; $5e99: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $5e9c: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $5e9f: $ea $31 $c3
    ld [rSCXShadow], a                            ; $5ea2: $ea $32 $c3
    ld [rSCYShadow], a                            ; $5ea5: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $5ea8: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $5eab: $cd $ab $05
    call Call_000_1c96                            ; $5eae: $cd $96 $1c
    call LoadGameBoardTileData                    ; $5eb1: $cd $b9 $69
    ld a, $2f                                     ; $5eb4: $3e $2f
    ld [rLYCShadow], a                            ; $5eb6: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $5eb9: $21 $37 $c3
    set 6, [hl]                                   ; $5ebc: $cb $f6
    ld hl, rIE                                    ; $5ebe: $21 $ff $ff
    set 1, [hl]                                   ; $5ec1: $cb $ce
    ld a, $01                                     ; $5ec3: $3e $01
    ld [rLCDCInterruptDispatchIndex], a           ; $5ec5: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $5ec8: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $5ecb: $ea $50 $c3
    call BuildClueRunLengthBuffers                ; $5ece: $cd $30 $6f
    call ClearShadowOAMBuffer                     ; $5ed1: $cd $b6 $05
    call RenderPuzzleTimerDigits                  ; $5ed4: $cd $04 $7c
    call Call_001_786e                            ; $5ed7: $cd $6e $78
    ld a, [rSelectedSaveSlotIndex]                ; $5eda: $fa $65 $a0
    ld c, a                                       ; $5edd: $4f
    sla a                                         ; $5ede: $cb $27
    sla a                                         ; $5ee0: $cb $27
    add c                                         ; $5ee2: $81
    ld c, a                                       ; $5ee3: $4f
    ld b, $00                                     ; $5ee4: $06 $00
    ld hl, rSaveDataDefaultBlockBDest             ; $5ee6: $21 $69 $a0
    add hl, bc                                    ; $5ee9: $09
    ld c, [hl]                                    ; $5eea: $4e
    ld b, $00                                     ; $5eeb: $06 $00
    ld hl, $7e2d                                  ; $5eed: $21 $2d $7e
    add hl, bc                                    ; $5ef0: $09
    ld c, $00                                     ; $5ef1: $0e $00
    ld a, $01                                     ; $5ef3: $3e $01
    call CallSoundEffectDispatcher                ; $5ef5: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $5ef8: $cd $99 $03
    ld c, [hl]                                    ; $5efb: $4e
    ld a, $01                                     ; $5efc: $3e $01
    call CallSoundEffectDispatcher                ; $5efe: $cd $b6 $03
    call EnableLCDFromShadow                      ; $5f01: $cd $a2 $04
    ld a, [rPuzzleGridWidth]                      ; $5f04: $fa $00 $d8
    cp $05                                        ; $5f07: $fe $05
    jr nz, jr_001_5f1a                            ; $5f09: $20 $0f

    ld b, $03                                     ; $5f0b: $06 $03
    ld hl, $46a0                                  ; $5f0d: $21 $a0 $46
    ld c, $01                                     ; $5f10: $0e $01
    ld de, $0014                                  ; $5f12: $11 $14 $00
    call PlayScreenTransitionFadeIn               ; $5f15: $cd $0d $04
    jr jr_001_5f3a                                ; $5f18: $18 $20

jr_001_5f1a:
    cp $0a                                        ; $5f1a: $fe $0a
    jr nz, jr_001_5f2d                            ; $5f1c: $20 $0f

    ld b, $03                                     ; $5f1e: $06 $03
    ld hl, $46ac                                  ; $5f20: $21 $ac $46
    ld c, $02                                     ; $5f23: $0e $02
    ld de, $0024                                  ; $5f25: $11 $24 $00
    call PlayScreenTransitionFadeIn               ; $5f28: $cd $0d $04
    jr jr_001_5f3a                                ; $5f2b: $18 $0d

jr_001_5f2d:
    ld b, $03                                     ; $5f2d: $06 $03
    ld hl, $4694                                  ; $5f2f: $21 $94 $46
    ld c, $00                                     ; $5f32: $0e $00
    ld de, $0004                                  ; $5f34: $11 $04 $00
    call PlayScreenTransitionFadeIn               ; $5f37: $cd $0d $04

jr_001_5f3a:
    ld a, [rPuzzleGridWidth]                      ; $5f3a: $fa $00 $d8
    cp $05                                        ; $5f3d: $fe $05
    jr nz, jr_001_5f68                            ; $5f3f: $20 $27

    ld a, $0d                                     ; $5f41: $3e $0d
    ld [rMessageScriptStreamResetEntryLow], a     ; $5f43: $ea $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $5f46: $ea $2b $d8
    ld a, $58                                     ; $5f49: $3e $58
    ld [rMessageScriptStreamResetEntryHigh], a    ; $5f4b: $ea $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $5f4e: $ea $2c $d8
    ld a, $93                                     ; $5f51: $3e $93
    ld [rMessageScriptStreamLimitLow], a          ; $5f53: $ea $45 $d8
    ld a, $86                                     ; $5f56: $3e $86
    ld [rMessageScriptStreamLimitHigh], a         ; $5f58: $ea $46 $d8
    ld a, $aa                                     ; $5f5b: $3e $aa
    ld [rMessageScriptStreamPointerLow], a        ; $5f5d: $ea $2d $d8
    ld a, $5c                                     ; $5f60: $3e $5c
    ld [rMessageScriptStreamPointerHigh], a       ; $5f62: $ea $2e $d8
    call Call_001_5fab                            ; $5f65: $cd $ab $5f

jr_001_5f68:
    call ClearShadowOAMBuffer                     ; $5f68: $cd $b6 $05
    rst RST_08                                    ; $5f6b: $cf
    xor a                                         ; $5f6c: $af
    ld [$d83a], a                                 ; $5f6d: $ea $3a $d8
    ld a, $01                                     ; $5f70: $3e $01
    ld [$d83b], a                                 ; $5f72: $ea $3b $d8
    ld a, [rSelectedSaveSlotIndex]                ; $5f75: $fa $65 $a0
    ld c, a                                       ; $5f78: $4f
    sla a                                         ; $5f79: $cb $27
    sla a                                         ; $5f7b: $cb $27
    add c                                         ; $5f7d: $81
    ld c, a                                       ; $5f7e: $4f
    ld b, $00                                     ; $5f7f: $06 $00
    ld hl, rSaveDataDefaultBlockBDest             ; $5f81: $21 $69 $a0
    add hl, bc                                    ; $5f84: $09
    ld a, [hl]                                    ; $5f85: $7e
    ld [$d83c], a                                 ; $5f86: $ea $3c $d8
    ld a, $01                                     ; $5f89: $3e $01
    ld [$d83d], a                                 ; $5f8b: $ea $3d $d8
    ld a, $06                                     ; $5f8e: $3e $06
    ld hl, $7a00                                  ; $5f90: $21 $00 $7a
    ld de, $8500                                  ; $5f93: $11 $00 $85
    ld bc, .CheckAllFaceButtonsHeldCombo          ; $5f96: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $5f99: $cd $38 $05
    call Call_001_7dcb                            ; $5f9c: $cd $cb $7d
    ld a, $06                                     ; $5f9f: $3e $06
    ld [rStatePhase_Current], a                   ; $5fa1: $ea $35 $d6
    ret                                           ; $5fa4: $c9


GS08_StatePhase_01_TODO::
    jp GS0A_StatePhase_01_TODO                    ; $5fa5: $c3 $92 $6a


GS08_StatePhase_02_TODO::
    jp GS0A_StatePhase_02_TODO                    ; $5fa8: $c3 $44 $6b


Call_001_5fab:
jr_001_5fab:
    call ClearShadowOAMBufferFromCursor           ; $5fab: $cd $c5 $05
    rst RST_08                                    ; $5fae: $cf
    call TickMarioBlinkAnimation                  ; $5faf: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $5fb2: $cd $93 $30
    call AdvanceMessageScriptStreamHelper         ; $5fb5: $cd $88 $2b
    jr nz, jr_001_5fab                            ; $5fb8: $20 $f1

    ret                                           ; $5fba: $c9


Call_001_5fbb:
jr_001_5fbb:
    call AdvanceMessageScriptStreamHelper         ; $5fbb: $cd $88 $2b
    ret z                                         ; $5fbe: $c8

    call TickMarioBlinkAnimation                  ; $5fbf: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $5fc2: $cd $93 $30
    call ClearShadowOAMBufferFromCursor           ; $5fc5: $cd $c5 $05
    rst RST_08                                    ; $5fc8: $cf
    jr jr_001_5fbb                                ; $5fc9: $18 $f0

GS08_StatePhase_03_TODO::
    ld a, [rPuzzleGridWidth]                      ; $5fcb: $fa $00 $d8
    cp $05                                        ; $5fce: $fe $05
    jp z, Jump_001_607a                           ; $5fd0: $ca $7a $60

    call UpdatePuzzleCursorFromDirectionalInput   ; $5fd3: $cd $ca $71
    call DrawPuzzleCursorSpritesAndTickStepSequence; $5fd6: $cd $3e $71
    call TickMarioBlinkAnimation                  ; $5fd9: $cd $18 $79
    call Call_001_7e33                            ; $5fdc: $cd $33 $7e
    call Call_001_7e77                            ; $5fdf: $cd $77 $7e
    call UpdatePuzzleTimerCountdown               ; $5fe2: $cd $ea $7a
    call UpdatePuzzleTimerDisplayState            ; $5fe5: $cd $98 $7a
    call ProcessPuzzleCellActionInput             ; $5fe8: $cd $22 $72
    call TickPendingCellActionEffect              ; $5feb: $cd $16 $75
    call Call_001_75f6                            ; $5fee: $cd $f6 $75
    call TickPuzzleTimerCompletionState           ; $5ff1: $cd $c8 $7c
    ld a, [rInputButtonsPressed]                  ; $5ff4: $fa $1e $c3
    and $08                                       ; $5ff7: $e6 $08
    jr z, jr_001_6008                             ; $5ff9: $28 $0d

    ld c, $10                                     ; $5ffb: $0e $10
    ld a, $02                                     ; $5ffd: $3e $02
    call CallSoundEffectDispatcher                ; $5fff: $cd $b6 $03
    ld a, $05                                     ; $6002: $3e $05
    ld [rStatePhase_Current], a                   ; $6004: $ea $35 $d6
    ret                                           ; $6007: $c9


jr_001_6008:
    ld a, [rPuzzleFlowVariant_Unsure]             ; $6008: $fa $05 $d8
    and a                                         ; $600b: $a7
    jr z, jr_001_6059                             ; $600c: $28 $4b

    call GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $600e: $cd $32 $57
    call GS05_UpdateSelectedEasyPicrossPuzzleClearStatusAndTimes; $6011: $cd $8a $58
    call RefreshSaveValidationChecksumsAndMirrors ; $6014: $cd $1f $1b
    ld c, $00                                     ; $6017: $0e $00
    ld a, $01                                     ; $6019: $3e $01
    call CallSoundEffectDispatcher                ; $601b: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $601e: $cd $99 $03
    ld c, $09                                     ; $6021: $0e $09
    ld a, $01                                     ; $6023: $3e $01
    call CallSoundEffectDispatcher                ; $6025: $cd $b6 $03
    call ClearShadowOAMBuffer                     ; $6028: $cd $b6 $05
    call RedrawPuzzleBoard                        ; $602b: $cd $35 $76

jr_001_602e:
    rst RST_08                                    ; $602e: $cf
    ld a, [rInputButtonsPressed]                  ; $602f: $fa $1e $c3
    and $09                                       ; $6032: $e6 $09
    jr z, jr_001_602e                             ; $6034: $28 $f8

    ld c, $03                                     ; $6036: $0e $03
    ld a, $02                                     ; $6038: $3e $02
    call CallSoundEffectDispatcher                ; $603a: $cd $b6 $03
    call Call_001_76a9                            ; $603d: $cd $a9 $76
    call Call_000_1a45                            ; $6040: $cd $45 $1a
    ld c, $00                                     ; $6043: $0e $00
    ld a, $01                                     ; $6045: $3e $01
    call CallSoundEffectDispatcher                ; $6047: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $604a: $cd $99 $03
    ld c, $12                                     ; $604d: $0e $12
    ld a, $01                                     ; $604f: $3e $01
    call CallSoundEffectDispatcher                ; $6051: $cd $b6 $03
    ld hl, rStatePhase_Current                    ; $6054: $21 $35 $d6
    inc [hl]                                      ; $6057: $34
    ret                                           ; $6058: $c9


jr_001_6059:
    ld a, [rPuzzleTimerCompletionState]           ; $6059: $fa $06 $d8
    and a                                         ; $605c: $a7
    ret z                                         ; $605d: $c8

    ld c, $00                                     ; $605e: $0e $00
    ld a, $01                                     ; $6060: $3e $01
    call CallSoundEffectDispatcher                ; $6062: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $6065: $cd $99 $03
    ld c, $08                                     ; $6068: $0e $08
    ld a, $01                                     ; $606a: $3e $01
    call CallSoundEffectDispatcher                ; $606c: $cd $b6 $03
    call ClearShadowOAMBuffer                     ; $606f: $cd $b6 $05
    call LoadGameOverMessageTileData              ; $6072: $cd $e3 $7c
    ld hl, rStatePhase_Current                    ; $6075: $21 $35 $d6
    inc [hl]                                      ; $6078: $34
    ret                                           ; $6079: $c9


Jump_001_607a:
    call UpdatePuzzleCursorFromDirectionalInput   ; $607a: $cd $ca $71
    call DrawPuzzleCursorSpritesAndTickStepSequence; $607d: $cd $3e $71
    call TickMarioBlinkAnimation                  ; $6080: $cd $18 $79
    call UpdatePuzzleTimerCountdown               ; $6083: $cd $ea $7a
    call UpdatePuzzleTimerDisplayState            ; $6086: $cd $98 $7a
    call ProcessPuzzleCellActionInput             ; $6089: $cd $22 $72
    call TickPendingCellActionEffect              ; $608c: $cd $16 $75
    call Call_001_75f6                            ; $608f: $cd $f6 $75
    call TickPuzzleTimerCompletionState           ; $6092: $cd $c8 $7c
    ld a, [rInputButtonsPressed]                  ; $6095: $fa $1e $c3
    and $08                                       ; $6098: $e6 $08
    jr z, jr_001_60a9                             ; $609a: $28 $0d

    ld c, $10                                     ; $609c: $0e $10
    ld a, $02                                     ; $609e: $3e $02
    call CallSoundEffectDispatcher                ; $60a0: $cd $b6 $03
    ld a, $05                                     ; $60a3: $3e $05
    ld [rStatePhase_Current], a                   ; $60a5: $ea $35 $d6
    ret                                           ; $60a8: $c9


jr_001_60a9:
    ld a, [rPuzzleFlowVariant_Unsure]             ; $60a9: $fa $05 $d8
    and a                                         ; $60ac: $a7
    jp z, Jump_001_613a                           ; $60ad: $ca $3a $61

    call GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $60b0: $cd $32 $57
    call GS05_UpdateSelectedEasyPicrossPuzzleClearStatusAndTimes; $60b3: $cd $8a $58
    call RefreshSaveValidationChecksumsAndMirrors ; $60b6: $cd $1f $1b
    ld c, $00                                     ; $60b9: $0e $00
    ld a, $01                                     ; $60bb: $3e $01
    call CallSoundEffectDispatcher                ; $60bd: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $60c0: $cd $99 $03
    ld c, $09                                     ; $60c3: $0e $09
    ld a, $01                                     ; $60c5: $3e $01
    call CallSoundEffectDispatcher                ; $60c7: $cd $b6 $03
    call ClearShadowOAMBuffer                     ; $60ca: $cd $b6 $05
    call RedrawPuzzleBoard                        ; $60cd: $cd $35 $76
    call GS06_CopyRedrawSourceToProgressionBuffer ; $60d0: $cd $2e $30
    ld a, $d2                                     ; $60d3: $3e $d2
    ld [rMessageScriptStreamPointerLow], a        ; $60d5: $ea $2d $d8
    ld a, $5c                                     ; $60d8: $3e $5c
    ld [rMessageScriptStreamPointerHigh], a       ; $60da: $ea $2e $d8
    call Call_001_5fbb                            ; $60dd: $cd $bb $5f

jr_001_60e0:
    call TickMarioBlinkAnimation                  ; $60e0: $cd $18 $79
    call ClearShadowOAMBufferFromCursor           ; $60e3: $cd $c5 $05
    rst RST_08                                    ; $60e6: $cf
    ld a, [rInputButtonsPressed]                  ; $60e7: $fa $1e $c3
    and $09                                       ; $60ea: $e6 $09
    jr z, jr_001_60e0                             ; $60ec: $28 $f2

    ld c, $03                                     ; $60ee: $0e $03
    ld a, $02                                     ; $60f0: $3e $02
    call CallSoundEffectDispatcher                ; $60f2: $cd $b6 $03
    call Call_001_76a9                            ; $60f5: $cd $a9 $76
    ld a, $0a                                     ; $60f8: $3e $0a
    ld [rMessageScriptStreamPointerLow], a        ; $60fa: $ea $2d $d8
    ld a, $5d                                     ; $60fd: $3e $5d
    ld [rMessageScriptStreamPointerHigh], a       ; $60ff: $ea $2e $d8
    call Call_001_5fbb                            ; $6102: $cd $bb $5f
    ld a, [rSelectedSaveSlotIndex]                ; $6105: $fa $65 $a0
    ld c, a                                       ; $6108: $4f
    ld b, $00                                     ; $6109: $06 $00
    ld hl, rSaveSlot1EasyPicrossPuzzleSelectCursorColumn; $610b: $21 $81 $a0
    add hl, bc                                    ; $610e: $09
    ld a, [hl]                                    ; $610f: $7e
    sla a                                         ; $6110: $cb $27
    ld c, a                                       ; $6112: $4f
    ld b, $00                                     ; $6113: $06 $00
    ld hl, LetterTextPointerTable                 ; $6115: $21 $6b $61
    add hl, bc                                    ; $6118: $09
    ld a, [hl+]                                   ; $6119: $2a
    ld [rMessageScriptStreamPointerLow], a        ; $611a: $ea $2d $d8
    ld a, [hl]                                    ; $611d: $7e
    ld [rMessageScriptStreamPointerHigh], a       ; $611e: $ea $2e $d8
    call Call_001_5fbb                            ; $6121: $cd $bb $5f
    ld c, $00                                     ; $6124: $0e $00
    ld a, $01                                     ; $6126: $3e $01
    call CallSoundEffectDispatcher                ; $6128: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $612b: $cd $99 $03
    ld c, $12                                     ; $612e: $0e $12
    ld a, $01                                     ; $6130: $3e $01
    call CallSoundEffectDispatcher                ; $6132: $cd $b6 $03
    ld hl, rStatePhase_Current                    ; $6135: $21 $35 $d6
    inc [hl]                                      ; $6138: $34
    ret                                           ; $6139: $c9


Jump_001_613a:
    ld a, [rPuzzleTimerCompletionState]           ; $613a: $fa $06 $d8
    and a                                         ; $613d: $a7
    ret z                                         ; $613e: $c8

    ld c, $00                                     ; $613f: $0e $00
    ld a, $01                                     ; $6141: $3e $01
    call CallSoundEffectDispatcher                ; $6143: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $6146: $cd $99 $03
    ld c, $08                                     ; $6149: $0e $08
    ld a, $01                                     ; $614b: $3e $01
    call CallSoundEffectDispatcher                ; $614d: $cd $b6 $03
    call ClearShadowOAMBuffer                     ; $6150: $cd $b6 $05
    call LoadGameOverMessageTileData              ; $6153: $cd $e3 $7c
    call GS06_CopyRedrawSourceToProgressionBuffer ; $6156: $cd $2e $30
    ld a, $e8                                     ; $6159: $3e $e8
    ld [rMessageScriptStreamPointerLow], a        ; $615b: $ea $2d $d8
    ld a, $5c                                     ; $615e: $3e $5c
    ld [rMessageScriptStreamPointerHigh], a       ; $6160: $ea $2e $d8
    call Call_001_5fbb                            ; $6163: $cd $bb $5f
    ld hl, rStatePhase_Current                    ; $6166: $21 $35 $d6
    inc [hl]                                      ; $6169: $34
    ret                                           ; $616a: $c9


LetterTextPointerTable::
    db $2e, $5d
    db $38, $5d
    db $42, $5d
    db $4c, $5d
    db $56, $5d
    db $60, $5d
    db $6a, $5d
    db $74, $5d

GS08_StatePhase_04_TODO::
    ld a, [rInputButtonsPressed]                  ; $617b: $fa $1e $c3
    and $09                                       ; $617e: $e6 $09
    ret z                                         ; $6180: $c8

    ld c, $03                                     ; $6181: $0e $03
    ld a, $02                                     ; $6183: $3e $02
    call CallSoundEffectDispatcher                ; $6185: $cd $b6 $03
    ld bc, $003c                                  ; $6188: $01 $3c $00
    call DelayFramesByBC                          ; $618b: $cd $fa $05
    ld a, $05                                     ; $618e: $3e $05
    call CallSoundEffectDispatcher                ; $6190: $cd $b6 $03
    ld c, $00                                     ; $6193: $0e $00
    ld a, $01                                     ; $6195: $3e $01
    call CallSoundEffectDispatcher                ; $6197: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $619a: $cd $99 $03
    ld c, $00                                     ; $619d: $0e $00
    ld a, $01                                     ; $619f: $3e $01
    call CallSoundEffectDispatcher                ; $61a1: $cd $b6 $03
    ld a, [rPuzzleGridWidth]                      ; $61a4: $fa $00 $d8
    cp $05                                        ; $61a7: $fe $05
    jr nz, jr_001_61ba                            ; $61a9: $20 $0f

    ld b, $03                                     ; $61ab: $06 $03
    ld hl, $46ab                                  ; $61ad: $21 $ab $46
    ld c, $01                                     ; $61b0: $0e $01
    ld de, $0023                                  ; $61b2: $11 $23 $00
    call PlayScreenTransitionFadeOut              ; $61b5: $cd $4e $04
    jr jr_001_61da                                ; $61b8: $18 $20

jr_001_61ba:
    cp $0a                                        ; $61ba: $fe $0a
    jr nz, jr_001_61cd                            ; $61bc: $20 $0f

    ld b, $03                                     ; $61be: $06 $03
    ld hl, $46b7                                  ; $61c0: $21 $b7 $46
    ld c, $02                                     ; $61c3: $0e $02
    ld de, $0033                                  ; $61c5: $11 $33 $00
    call PlayScreenTransitionFadeOut              ; $61c8: $cd $4e $04
    jr jr_001_61da                                ; $61cb: $18 $0d

jr_001_61cd:
    ld b, $03                                     ; $61cd: $06 $03
    ld hl, $469f                                  ; $61cf: $21 $9f $46
    ld c, $00                                     ; $61d2: $0e $00
    ld de, $0013                                  ; $61d4: $11 $13 $00
    call PlayScreenTransitionFadeOut              ; $61d7: $cd $4e $04

jr_001_61da:
    call DisableLCDAtVBlank                       ; $61da: $cd $83 $04
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $61dd: $21 $37 $c3
    res 6, [hl]                                   ; $61e0: $cb $b6
    ld hl, rIE                                    ; $61e2: $21 $ff $ff
    res 1, [hl]                                   ; $61e5: $cb $8e
    xor a                                         ; $61e7: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $61e8: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $61eb: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $61ee: $ea $50 $c3
    ld a, $04                                     ; $61f1: $3e $04
    ld [rStatePhase_Current], a                   ; $61f3: $ea $35 $d6
    ld a, $05                                     ; $61f6: $3e $05
    ld [rGameState_Current], a                    ; $61f8: $ea $34 $d6
    ret                                           ; $61fb: $c9


GS08_StatePhase_05_TODO::
    call ClearShadowOAMBuffer                     ; $61fc: $cd $b6 $05
    rst RST_08                                    ; $61ff: $cf
    xor a                                         ; $6200: $af
    ld [$d83a], a                                 ; $6201: $ea $3a $d8
    ld a, $01                                     ; $6204: $3e $01
    ld [$d83b], a                                 ; $6206: $ea $3b $d8
    ld a, [rSelectedSaveSlotIndex]                ; $6209: $fa $65 $a0
    ld c, a                                       ; $620c: $4f
    sla a                                         ; $620d: $cb $27
    sla a                                         ; $620f: $cb $27
    add c                                         ; $6211: $81
    ld c, a                                       ; $6212: $4f
    ld b, $00                                     ; $6213: $06 $00
    ld hl, rSaveDataDefaultBlockBDest             ; $6215: $21 $69 $a0
    add hl, bc                                    ; $6218: $09
    ld a, [hl]                                    ; $6219: $7e
    ld [$d83c], a                                 ; $621a: $ea $3c $d8
    ld a, $01                                     ; $621d: $3e $01
    ld [$d83d], a                                 ; $621f: $ea $3d $d8
    ld a, $06                                     ; $6222: $3e $06
    ld hl, $7a00                                  ; $6224: $21 $00 $7a
    ld de, $8500                                  ; $6227: $11 $00 $85
    ld bc, .CheckAllFaceButtonsHeldCombo          ; $622a: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $622d: $cd $38 $05
    call Call_001_70a1                            ; $6230: $cd $a1 $70
    ld hl, rStatePhase_Current                    ; $6233: $21 $35 $d6
    inc [hl]                                      ; $6236: $34
    ret                                           ; $6237: $c9


GS08_StatePhase_06_TODO::
    ld b, $02                                     ; $6238: $06 $02
    ld hl, $4632                                  ; $623a: $21 $32 $46
    call SwitchBankToBAndJumpToHL                 ; $623d: $cd $de $05
    ld a, [rInputButtonsPressed]                  ; $6240: $fa $1e $c3
    bit 0, a                                      ; $6243: $cb $47
    jr z, jr_001_625d                             ; $6245: $28 $16

    ld c, $03                                     ; $6247: $0e $03
    ld a, $02                                     ; $6249: $3e $02
    call CallSoundEffectDispatcher                ; $624b: $cd $b6 $03
    ld a, [$d83a]                                 ; $624e: $fa $3a $d8
    ld c, a                                       ; $6251: $4f
    ld b, $00                                     ; $6252: $06 $00
    ld hl, GS08_StatePhase_06_TODO_Data           ; $6254: $21 $6d $62
    add hl, bc                                    ; $6257: $09
    ld a, [hl]                                    ; $6258: $7e
    ld [rStatePhase_Current], a                   ; $6259: $ea $35 $d6
    ret                                           ; $625c: $c9


jr_001_625d:
    bit 3, a                                      ; $625d: $cb $5f
    ret z                                         ; $625f: $c8

    ld c, $04                                     ; $6260: $0e $04
    ld a, $02                                     ; $6262: $3e $02
    call CallSoundEffectDispatcher                ; $6264: $cd $b6 $03
    ld a, $0a                                     ; $6267: $3e $0a
    ld [rStatePhase_Current], a                   ; $6269: $ea $35 $d6
    ret                                           ; $626c: $c9


GS08_StatePhase_06_TODO_Data::
    db $07, $09, $08

GS08_StatePhase_07_TODO::
    ld b, $02                                     ; $6270: $06 $02
    ld hl, $4672                                  ; $6272: $21 $72 $46
    call SwitchBankToBAndJumpToHL                 ; $6275: $cd $de $05
    ld a, [rInputButtonsPressed]                  ; $6278: $fa $1e $c3
    and $01                                       ; $627b: $e6 $01
    ret z                                         ; $627d: $c8

    ld c, $04                                     ; $627e: $0e $04
    ld a, $02                                     ; $6280: $3e $02
    call CallSoundEffectDispatcher                ; $6282: $cd $b6 $03
    ld a, [$d83b]                                 ; $6285: $fa $3b $d8
    and a                                         ; $6288: $a7
    jr z, jr_001_6291                             ; $6289: $28 $06

    ld a, $06                                     ; $628b: $3e $06
    ld [rStatePhase_Current], a                   ; $628d: $ea $35 $d6
    ret                                           ; $6290: $c9


jr_001_6291:
    call Call_000_1c14                            ; $6291: $cd $14 $1c
    ld a, $01                                     ; $6294: $3e $01
    ld [rContinueSavedGameFlowMode_Unsure], a     ; $6296: $ea $a2 $ac
    ld c, $03                                     ; $6299: $0e $03
    ld a, $02                                     ; $629b: $3e $02
    call CallSoundEffectDispatcher                ; $629d: $cd $b6 $03
    ld bc, $003c                                  ; $62a0: $01 $3c $00
    call DelayFramesByBC                          ; $62a3: $cd $fa $05
    ld a, $05                                     ; $62a6: $3e $05
    call CallSoundEffectDispatcher                ; $62a8: $cd $b6 $03
    ld c, $00                                     ; $62ab: $0e $00
    ld a, $01                                     ; $62ad: $3e $01
    call CallSoundEffectDispatcher                ; $62af: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $62b2: $cd $99 $03
    ld c, $00                                     ; $62b5: $0e $00
    ld a, $01                                     ; $62b7: $3e $01
    call CallSoundEffectDispatcher                ; $62b9: $cd $b6 $03
    ld a, [rPuzzleGridWidth]                      ; $62bc: $fa $00 $d8
    cp $05                                        ; $62bf: $fe $05
    jr nz, jr_001_62d2                            ; $62c1: $20 $0f

    ld b, $03                                     ; $62c3: $06 $03
    ld hl, $46ab                                  ; $62c5: $21 $ab $46
    ld c, $01                                     ; $62c8: $0e $01
    ld de, $0023                                  ; $62ca: $11 $23 $00
    call PlayScreenTransitionFadeOut              ; $62cd: $cd $4e $04
    jr jr_001_62f2                                ; $62d0: $18 $20

jr_001_62d2:
    cp $0a                                        ; $62d2: $fe $0a
    jr nz, jr_001_62e5                            ; $62d4: $20 $0f

    ld b, $03                                     ; $62d6: $06 $03
    ld hl, $46b7                                  ; $62d8: $21 $b7 $46
    ld c, $02                                     ; $62db: $0e $02
    ld de, $0033                                  ; $62dd: $11 $33 $00
    call PlayScreenTransitionFadeOut              ; $62e0: $cd $4e $04
    jr jr_001_62f2                                ; $62e3: $18 $0d

jr_001_62e5:
    ld b, $03                                     ; $62e5: $06 $03
    ld hl, $469f                                  ; $62e7: $21 $9f $46
    ld c, $00                                     ; $62ea: $0e $00
    ld de, $0013                                  ; $62ec: $11 $13 $00
    call PlayScreenTransitionFadeOut              ; $62ef: $cd $4e $04

jr_001_62f2:
    call DisableLCDAtVBlank                       ; $62f2: $cd $83 $04
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $62f5: $21 $37 $c3
    res 6, [hl]                                   ; $62f8: $cb $b6
    ld hl, rIE                                    ; $62fa: $21 $ff $ff
    res 1, [hl]                                   ; $62fd: $cb $8e
    xor a                                         ; $62ff: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $6300: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $6303: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $6306: $ea $50 $c3
    ld c, a                                       ; $6309: $4f
    sla a                                         ; $630a: $cb $27
    sla a                                         ; $630c: $cb $27
    add c                                         ; $630e: $81
    ld c, a                                       ; $630f: $4f
    ld b, $00                                     ; $6310: $06 $00
    ld hl, rSaveDataDefaultBlockBDest             ; $6312: $21 $69 $a0
    add hl, bc                                    ; $6315: $09
    ld a, [hl]                                    ; $6316: $7e
    ld a, [$d83c]                                 ; $6317: $fa $3c $d8
    ld [hl], a                                    ; $631a: $77
    ld a, $04                                     ; $631b: $3e $04
    ld [rStatePhase_Current], a                   ; $631d: $ea $35 $d6
    ld a, $00                                     ; $6320: $3e $00
    ld [rGameState_Current], a                    ; $6322: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $6325: $c3 $1f $1b


GS08_StatePhase_08_TODO::
    ld b, $02                                     ; $6328: $06 $02
    ld hl, $46b2                                  ; $632a: $21 $b2 $46
    call SwitchBankToBAndJumpToHL                 ; $632d: $cd $de $05
    ld a, [rInputButtonsPressed]                  ; $6330: $fa $1e $c3
    and $01                                       ; $6333: $e6 $01
    ret z                                         ; $6335: $c8

    ld c, $04                                     ; $6336: $0e $04
    ld a, $02                                     ; $6338: $3e $02
    call CallSoundEffectDispatcher                ; $633a: $cd $b6 $03
    ld a, $06                                     ; $633d: $3e $06
    ld [rStatePhase_Current], a                   ; $633f: $ea $35 $d6
    ret                                           ; $6342: $c9


GS08_StatePhase_09_TODO::
    ld b, $02                                     ; $6343: $06 $02
    ld hl, $470f                                  ; $6345: $21 $0f $47
    call SwitchBankToBAndJumpToHL                 ; $6348: $cd $de $05
    ld a, [rInputButtonsPressed]                  ; $634b: $fa $1e $c3
    and $01                                       ; $634e: $e6 $01
    ret z                                         ; $6350: $c8

    ld c, $04                                     ; $6351: $0e $04
    ld a, $02                                     ; $6353: $3e $02
    call CallSoundEffectDispatcher                ; $6355: $cd $b6 $03
    ld a, [$d83d]                                 ; $6358: $fa $3d $d8
    and a                                         ; $635b: $a7
    jr z, jr_001_6364                             ; $635c: $28 $06

    ld a, $06                                     ; $635e: $3e $06
    ld [rStatePhase_Current], a                   ; $6360: $ea $35 $d6
    ret                                           ; $6363: $c9


jr_001_6364:
    ld a, $01                                     ; $6364: $3e $01
    ld [rPuzzleTimerCompletionState], a           ; $6366: $ea $06 $d8
    ld c, $00                                     ; $6369: $0e $00
    ld a, $01                                     ; $636b: $3e $01
    call CallSoundEffectDispatcher                ; $636d: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $6370: $cd $99 $03
    ld c, $08                                     ; $6373: $0e $08
    ld a, $01                                     ; $6375: $3e $01
    call CallSoundEffectDispatcher                ; $6377: $cd $b6 $03
    call ClearShadowOAMBuffer                     ; $637a: $cd $b6 $05
    call LoadGameOverMessageTileData              ; $637d: $cd $e3 $7c
    ld a, $06                                     ; $6380: $3e $06
    ld hl, $4500                                  ; $6382: $21 $00 $45
    ld de, $8500                                  ; $6385: $11 $00 $85
    ld bc, .CheckAllFaceButtonsHeldCombo          ; $6388: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $638b: $cd $38 $05
    ld a, [rPuzzleGridWidth]                      ; $638e: $fa $00 $d8
    cp $05                                        ; $6391: $fe $05
    jr nz, jr_001_63a5                            ; $6393: $20 $10

    call GS06_CopyRedrawSourceToProgressionBuffer ; $6395: $cd $2e $30
    ld a, $e8                                     ; $6398: $3e $e8
    ld [rMessageScriptStreamPointerLow], a        ; $639a: $ea $2d $d8
    ld a, $5c                                     ; $639d: $3e $5c
    ld [rMessageScriptStreamPointerHigh], a       ; $639f: $ea $2e $d8
    call Call_001_5fbb                            ; $63a2: $cd $bb $5f

jr_001_63a5:
    ld c, a                                       ; $63a5: $4f
    sla a                                         ; $63a6: $cb $27
    sla a                                         ; $63a8: $cb $27
    add c                                         ; $63aa: $81
    ld c, a                                       ; $63ab: $4f
    ld b, $00                                     ; $63ac: $06 $00
    ld hl, rSaveDataDefaultBlockBDest             ; $63ae: $21 $69 $a0
    add hl, bc                                    ; $63b1: $09
    ld a, [hl]                                    ; $63b2: $7e
    ld a, [$d83c]                                 ; $63b3: $fa $3c $d8
    ld [hl], a                                    ; $63b6: $77
    ld a, $04                                     ; $63b7: $3e $04
    ld [rStatePhase_Current], a                   ; $63b9: $ea $35 $d6
    xor a                                         ; $63bc: $af
    ld [rContinueSavedGameFlowMode_Unsure], a     ; $63bd: $ea $a2 $ac
    jp RefreshSaveValidationChecksumsAndMirrors   ; $63c0: $c3 $1f $1b


GS08_StatePhase_0a_TODO::
    call ClearShadowOAMBuffer                     ; $63c3: $cd $b6 $05
    rst RST_08                                    ; $63c6: $cf
    ld a, [rSelectedSaveSlotIndex]                ; $63c7: $fa $65 $a0
    ld c, a                                       ; $63ca: $4f
    sla a                                         ; $63cb: $cb $27
    sla a                                         ; $63cd: $cb $27
    add c                                         ; $63cf: $81
    ld c, a                                       ; $63d0: $4f
    ld b, $00                                     ; $63d1: $06 $00
    ld hl, rSaveDataDefaultBlockBDest             ; $63d3: $21 $69 $a0
    add hl, bc                                    ; $63d6: $09
    ld a, [hl]                                    ; $63d7: $7e
    ld a, [$d83c]                                 ; $63d8: $fa $3c $d8
    ld [hl], a                                    ; $63db: $77
    ld a, $06                                     ; $63dc: $3e $06
    ld hl, $4500                                  ; $63de: $21 $00 $45
    ld de, $8500                                  ; $63e1: $11 $00 $85
    ld bc, .CheckAllFaceButtonsHeldCombo          ; $63e4: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $63e7: $cd $38 $05
    call DrawClueNumbersFromRunLengthBuffers      ; $63ea: $cd $b9 $6f
    call RenderPuzzleTimerDigits                  ; $63ed: $cd $04 $7c
    ld a, $03                                     ; $63f0: $3e $03
    ld [rStatePhase_Current], a                   ; $63f2: $ea $35 $d6
    xor a                                         ; $63f5: $af
    ld [rContinueSavedGameFlowMode_Unsure], a     ; $63f6: $ea $a2 $ac
    jp RefreshSaveValidationChecksumsAndMirrors   ; $63f9: $c3 $1f $1b


GameState_09_TODO_PhaseDispatcher::
    ld a, [rStatePhase_Current]                   ; $63fc: $fa $35 $d6
    rst RST_18                                    ; $63ff: $df

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

GS09_StatePhase_00_TODO::
    ld a, $43                                     ; $6414: $3e $43
    ld [rLCDCShadow], a                           ; $6416: $ea $2e $c3
    xor a                                         ; $6419: $af
    ld [rBGPShadow], a                            ; $641a: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $641d: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $6420: $ea $31 $c3
    ld [rSCXShadow], a                            ; $6423: $ea $32 $c3
    ld [rSCYShadow], a                            ; $6426: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $6429: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $642c: $cd $ab $05
    call LoadPuzzleDataBuffer                     ; $642f: $cd $f1 $07
    call LoadGameBoardTileData                    ; $6432: $cd $b9 $69
    xor a                                         ; $6435: $af
    ld [rPuzzleCursorColumn], a                   ; $6436: $ea $36 $d6
    ld [rPuzzleAndMenuCursorRow], a               ; $6439: $ea $37 $d6
    ld a, $00                                     ; $643c: $3e $00
    ld [rHintPopupSelection], a                   ; $643e: $ea $33 $d8
    ld a, $02                                     ; $6441: $3e $02
    ld [rPuzzleTimerAdjustmentStep], a            ; $6443: $ea $11 $d8
    ld a, $2f                                     ; $6446: $3e $2f
    ld [rLYCShadow], a                            ; $6448: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $644b: $21 $37 $c3
    set 6, [hl]                                   ; $644e: $cb $f6
    ld hl, rIE                                    ; $6450: $21 $ff $ff
    set 1, [hl]                                   ; $6453: $cb $ce
    ld a, $01                                     ; $6455: $3e $01
    ld [rLCDCInterruptDispatchIndex], a           ; $6457: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $645a: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $645d: $ea $50 $c3
    call BuildClueRunLengthBuffers                ; $6460: $cd $30 $6f
    call Call_001_7dcb                            ; $6463: $cd $cb $7d
    call ClearShadowOAMBuffer                     ; $6466: $cd $b6 $05
    call DrawPuzzleCursorSpritesAndTickStepSequence; $6469: $cd $3e $71
    call ResetPuzzleTimerState                    ; $646c: $cd $eb $7b
    call Call_001_786e                            ; $646f: $cd $6e $78
    ld a, [rSelectedSaveSlotIndex]                ; $6472: $fa $65 $a0
    ld c, a                                       ; $6475: $4f
    sla a                                         ; $6476: $cb $27
    sla a                                         ; $6478: $cb $27
    add c                                         ; $647a: $81
    ld c, a                                       ; $647b: $4f
    ld b, $00                                     ; $647c: $06 $00
    ld hl, $a06c                                  ; $647e: $21 $6c $a0
    add hl, bc                                    ; $6481: $09
    ld c, [hl]                                    ; $6482: $4e
    ld b, $00                                     ; $6483: $06 $00
    ld hl, $7e2d                                  ; $6485: $21 $2d $7e
    add hl, bc                                    ; $6488: $09
    ld c, $00                                     ; $6489: $0e $00
    ld a, $01                                     ; $648b: $3e $01
    call CallSoundEffectDispatcher                ; $648d: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $6490: $cd $99 $03
    ld c, [hl]                                    ; $6493: $4e
    ld a, $01                                     ; $6494: $3e $01
    call CallSoundEffectDispatcher                ; $6496: $cd $b6 $03
    call EnableLCDFromShadow                      ; $6499: $cd $a2 $04
    ld b, $03                                     ; $649c: $06 $03
    ld hl, $4694                                  ; $649e: $21 $94 $46
    ld c, $00                                     ; $64a1: $0e $00
    ld de, $0004                                  ; $64a3: $11 $04 $00
    call PlayScreenTransitionFadeIn               ; $64a6: $cd $0d $04
    ld hl, rStatePhase_Current                    ; $64a9: $21 $35 $d6
    inc [hl]                                      ; $64ac: $34
    call DrawClueNumbersFromRunLengthBuffers      ; $64ad: $cd $b9 $6f
    ret                                           ; $64b0: $c9


GS09_StatePhase_09_TODO::
    ld a, $43                                     ; $64b1: $3e $43
    ld [rLCDCShadow], a                           ; $64b3: $ea $2e $c3
    xor a                                         ; $64b6: $af
    ld [rBGPShadow], a                            ; $64b7: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $64ba: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $64bd: $ea $31 $c3
    ld [rSCXShadow], a                            ; $64c0: $ea $32 $c3
    ld [rSCYShadow], a                            ; $64c3: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $64c6: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $64c9: $cd $ab $05
    call Call_000_1c96                            ; $64cc: $cd $96 $1c
    call LoadGameBoardTileData                    ; $64cf: $cd $b9 $69
    ld a, $2f                                     ; $64d2: $3e $2f
    ld [rLYCShadow], a                            ; $64d4: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $64d7: $21 $37 $c3
    set 6, [hl]                                   ; $64da: $cb $f6
    ld hl, rIE                                    ; $64dc: $21 $ff $ff
    set 1, [hl]                                   ; $64df: $cb $ce
    ld a, $01                                     ; $64e1: $3e $01
    ld [rLCDCInterruptDispatchIndex], a           ; $64e3: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $64e6: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $64e9: $ea $50 $c3
    call BuildClueRunLengthBuffers                ; $64ec: $cd $30 $6f
    call ClearShadowOAMBuffer                     ; $64ef: $cd $b6 $05
    call RenderPuzzleTimerDigits                  ; $64f2: $cd $04 $7c
    call Call_001_786e                            ; $64f5: $cd $6e $78
    ld a, [rSelectedSaveSlotIndex]                ; $64f8: $fa $65 $a0
    ld c, a                                       ; $64fb: $4f
    sla a                                         ; $64fc: $cb $27
    sla a                                         ; $64fe: $cb $27
    add c                                         ; $6500: $81
    ld c, a                                       ; $6501: $4f
    ld b, $00                                     ; $6502: $06 $00
    ld hl, $a06c                                  ; $6504: $21 $6c $a0
    add hl, bc                                    ; $6507: $09
    ld c, [hl]                                    ; $6508: $4e
    ld b, $00                                     ; $6509: $06 $00
    ld hl, $7e2d                                  ; $650b: $21 $2d $7e
    add hl, bc                                    ; $650e: $09
    ld c, $00                                     ; $650f: $0e $00
    ld a, $01                                     ; $6511: $3e $01
    call CallSoundEffectDispatcher                ; $6513: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $6516: $cd $99 $03
    ld c, [hl]                                    ; $6519: $4e
    ld a, $01                                     ; $651a: $3e $01
    call CallSoundEffectDispatcher                ; $651c: $cd $b6 $03
    call EnableLCDFromShadow                      ; $651f: $cd $a2 $04
    ld b, $03                                     ; $6522: $06 $03
    ld hl, $4694                                  ; $6524: $21 $94 $46
    ld c, $00                                     ; $6527: $0e $00
    ld de, $0004                                  ; $6529: $11 $04 $00
    call PlayScreenTransitionFadeIn               ; $652c: $cd $0d $04
    call ClearShadowOAMBuffer                     ; $652f: $cd $b6 $05
    rst RST_08                                    ; $6532: $cf
    xor a                                         ; $6533: $af
    ld [$d83a], a                                 ; $6534: $ea $3a $d8
    ld a, $01                                     ; $6537: $3e $01
    ld [$d83b], a                                 ; $6539: $ea $3b $d8
    ld a, [rSelectedSaveSlotIndex]                ; $653c: $fa $65 $a0
    ld c, a                                       ; $653f: $4f
    sla a                                         ; $6540: $cb $27
    sla a                                         ; $6542: $cb $27
    add c                                         ; $6544: $81
    ld c, a                                       ; $6545: $4f
    ld b, $00                                     ; $6546: $06 $00
    ld hl, $a06c                                  ; $6548: $21 $6c $a0
    add hl, bc                                    ; $654b: $09
    ld a, [hl]                                    ; $654c: $7e
    ld [$d83c], a                                 ; $654d: $ea $3c $d8
    ld a, $01                                     ; $6550: $3e $01
    ld [$d83d], a                                 ; $6552: $ea $3d $d8
    ld a, $06                                     ; $6555: $3e $06
    ld hl, $7a00                                  ; $6557: $21 $00 $7a
    ld de, $8500                                  ; $655a: $11 $00 $85
    ld bc, .CheckAllFaceButtonsHeldCombo          ; $655d: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $6560: $cd $38 $05
    call Call_001_7dcb                            ; $6563: $cd $cb $7d
    ld a, $04                                     ; $6566: $3e $04
    ld [rStatePhase_Current], a                   ; $6568: $ea $35 $d6
    ret                                           ; $656b: $c9


GS09_StatePhase_01_TODO::
    call UpdatePuzzleCursorFromDirectionalInput   ; $656c: $cd $ca $71
    call DrawPuzzleCursorSpritesAndTickStepSequence; $656f: $cd $3e $71
    call UpdatePuzzleTimerCountdown               ; $6572: $cd $ea $7a
    call TickMarioBlinkAnimation                  ; $6575: $cd $18 $79
    call Call_001_682f                            ; $6578: $cd $2f $68
    call TickPendingCellActionEffect              ; $657b: $cd $16 $75
    call Call_001_75f6                            ; $657e: $cd $f6 $75
    call TickPuzzleTimerCompletionState           ; $6581: $cd $c8 $7c
    ld a, [rInputButtonsPressed]                  ; $6584: $fa $1e $c3
    and $08                                       ; $6587: $e6 $08
    jr z, jr_001_6598                             ; $6589: $28 $0d

    ld c, $10                                     ; $658b: $0e $10
    ld a, $02                                     ; $658d: $3e $02
    call CallSoundEffectDispatcher                ; $658f: $cd $b6 $03
    ld a, $03                                     ; $6592: $3e $03
    ld [rStatePhase_Current], a                   ; $6594: $ea $35 $d6
    ret                                           ; $6597: $c9


jr_001_6598:
    ld a, [rPuzzleFlowVariant_Unsure]             ; $6598: $fa $05 $d8
    and a                                         ; $659b: $a7
    jr z, jr_001_65fe                             ; $659c: $28 $60

    ld c, $00                                     ; $659e: $0e $00
    ld a, $05                                     ; $65a0: $3e $05
    call CallSoundEffectDispatcher                ; $65a2: $cd $b6 $03
    ld c, $00                                     ; $65a5: $0e $00
    ld a, $01                                     ; $65a7: $3e $01
    call CallSoundEffectDispatcher                ; $65a9: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $65ac: $cd $99 $03
    ld c, $00                                     ; $65af: $0e $00
    ld a, $01                                     ; $65b1: $3e $01
    call CallSoundEffectDispatcher                ; $65b3: $cd $b6 $03
    ld bc, $0003                                  ; $65b6: $01 $03 $00
    call BusyWaitDelayByBC                        ; $65b9: $cd $03 $06
    ld c, $00                                     ; $65bc: $0e $00
    ld a, $01                                     ; $65be: $3e $01
    call CallSoundEffectDispatcher                ; $65c0: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $65c3: $cd $99 $03
    ld c, $09                                     ; $65c6: $0e $09
    ld a, $01                                     ; $65c8: $3e $01
    call CallSoundEffectDispatcher                ; $65ca: $cd $b6 $03
    call ClearShadowOAMBuffer                     ; $65cd: $cd $b6 $05
    call RedrawPuzzleBoard                        ; $65d0: $cd $35 $76

jr_001_65d3:
    rst RST_08                                    ; $65d3: $cf
    ld a, [rInputButtonsPressed]                  ; $65d4: $fa $1e $c3
    and $09                                       ; $65d7: $e6 $09
    jr z, jr_001_65d3                             ; $65d9: $28 $f8

    ld c, $03                                     ; $65db: $0e $03
    ld a, $02                                     ; $65dd: $3e $02
    call CallSoundEffectDispatcher                ; $65df: $cd $b6 $03
    call Call_001_76a9                            ; $65e2: $cd $a9 $76
    call Call_000_1a45                            ; $65e5: $cd $45 $1a
    ld c, $00                                     ; $65e8: $0e $00
    ld a, $01                                     ; $65ea: $3e $01
    call CallSoundEffectDispatcher                ; $65ec: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $65ef: $cd $99 $03
    ld c, $12                                     ; $65f2: $0e $12
    ld a, $01                                     ; $65f4: $3e $01
    call CallSoundEffectDispatcher                ; $65f6: $cd $b6 $03
    ld hl, rStatePhase_Current                    ; $65f9: $21 $35 $d6
    inc [hl]                                      ; $65fc: $34
    ret                                           ; $65fd: $c9


jr_001_65fe:
    ld a, [rPuzzleTimerCompletionState]           ; $65fe: $fa $06 $d8
    and a                                         ; $6601: $a7
    ret z                                         ; $6602: $c8

    ld c, $00                                     ; $6603: $0e $00
    ld a, $01                                     ; $6605: $3e $01
    call CallSoundEffectDispatcher                ; $6607: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $660a: $cd $99 $03
    ld c, $08                                     ; $660d: $0e $08
    ld a, $01                                     ; $660f: $3e $01
    call CallSoundEffectDispatcher                ; $6611: $cd $b6 $03
    call ClearShadowOAMBuffer                     ; $6614: $cd $b6 $05
    call LoadGameOverMessageTileData              ; $6617: $cd $e3 $7c
    ld hl, rStatePhase_Current                    ; $661a: $21 $35 $d6
    inc [hl]                                      ; $661d: $34
    ret                                           ; $661e: $c9


GS09_StatePhase_02_TODO::
    ld a, [rInputButtonsPressed]                  ; $661f: $fa $1e $c3
    and $09                                       ; $6622: $e6 $09
    ret z                                         ; $6624: $c8

    ld c, $03                                     ; $6625: $0e $03
    ld a, $02                                     ; $6627: $3e $02
    call CallSoundEffectDispatcher                ; $6629: $cd $b6 $03
    ld bc, $003c                                  ; $662c: $01 $3c $00
    call DelayFramesByBC                          ; $662f: $cd $fa $05
    ld a, $05                                     ; $6632: $3e $05
    call CallSoundEffectDispatcher                ; $6634: $cd $b6 $03
    ld c, $00                                     ; $6637: $0e $00
    ld a, $01                                     ; $6639: $3e $01
    call CallSoundEffectDispatcher                ; $663b: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $663e: $cd $99 $03
    ld c, $00                                     ; $6641: $0e $00
    ld a, $01                                     ; $6643: $3e $01
    call CallSoundEffectDispatcher                ; $6645: $cd $b6 $03
    ld b, $03                                     ; $6648: $06 $03
    ld hl, $469f                                  ; $664a: $21 $9f $46
    ld c, $00                                     ; $664d: $0e $00
    ld de, $0013                                  ; $664f: $11 $13 $00
    call PlayScreenTransitionFadeOut              ; $6652: $cd $4e $04
    call DisableLCDAtVBlank                       ; $6655: $cd $83 $04
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $6658: $21 $37 $c3
    res 6, [hl]                                   ; $665b: $cb $b6
    ld hl, rIE                                    ; $665d: $21 $ff $ff
    res 1, [hl]                                   ; $6660: $cb $8e
    xor a                                         ; $6662: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $6663: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $6666: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $6669: $ea $50 $c3
    ld a, $04                                     ; $666c: $3e $04
    ld [rStatePhase_Current], a                   ; $666e: $ea $35 $d6
    ld a, $07                                     ; $6671: $3e $07
    ld [rGameState_Current], a                    ; $6673: $ea $34 $d6
    ret                                           ; $6676: $c9


GS09_StatePhase_03_TODO::
    call ClearShadowOAMBuffer                     ; $6677: $cd $b6 $05
    rst RST_08                                    ; $667a: $cf
    xor a                                         ; $667b: $af
    ld [$d83a], a                                 ; $667c: $ea $3a $d8
    ld a, $01                                     ; $667f: $3e $01
    ld [$d83b], a                                 ; $6681: $ea $3b $d8
    ld a, [rSelectedSaveSlotIndex]                ; $6684: $fa $65 $a0
    ld c, a                                       ; $6687: $4f
    sla a                                         ; $6688: $cb $27
    sla a                                         ; $668a: $cb $27
    add c                                         ; $668c: $81
    ld c, a                                       ; $668d: $4f
    ld b, $00                                     ; $668e: $06 $00
    ld hl, $a06c                                  ; $6690: $21 $6c $a0
    add hl, bc                                    ; $6693: $09
    ld a, [hl]                                    ; $6694: $7e
    ld [$d83c], a                                 ; $6695: $ea $3c $d8
    ld a, $01                                     ; $6698: $3e $01
    ld [$d83d], a                                 ; $669a: $ea $3d $d8
    ld a, $06                                     ; $669d: $3e $06
    ld hl, $7a00                                  ; $669f: $21 $00 $7a
    ld de, $8500                                  ; $66a2: $11 $00 $85
    ld bc, .CheckAllFaceButtonsHeldCombo          ; $66a5: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $66a8: $cd $38 $05
    call Call_001_70a1                            ; $66ab: $cd $a1 $70
    ld hl, rStatePhase_Current                    ; $66ae: $21 $35 $d6
    inc [hl]                                      ; $66b1: $34
    ret                                           ; $66b2: $c9


GS09_StatePhase_04_TODO::
    ld b, $02                                     ; $66b3: $06 $02
    ld hl, $4632                                  ; $66b5: $21 $32 $46
    call SwitchBankToBAndJumpToHL                 ; $66b8: $cd $de $05
    ld a, [rInputButtonsPressed]                  ; $66bb: $fa $1e $c3
    bit 0, a                                      ; $66be: $cb $47
    jr z, jr_001_66d8                             ; $66c0: $28 $16

    ld c, $03                                     ; $66c2: $0e $03
    ld a, $02                                     ; $66c4: $3e $02
    call CallSoundEffectDispatcher                ; $66c6: $cd $b6 $03
    ld a, [$d83a]                                 ; $66c9: $fa $3a $d8
    ld c, a                                       ; $66cc: $4f
    ld b, $00                                     ; $66cd: $06 $00
    ld hl, GS09_StatePhase_04_TODO_Data           ; $66cf: $21 $e8 $66
    add hl, bc                                    ; $66d2: $09
    ld a, [hl]                                    ; $66d3: $7e
    ld [rStatePhase_Current], a                   ; $66d4: $ea $35 $d6
    ret                                           ; $66d7: $c9


jr_001_66d8:
    bit 3, a                                      ; $66d8: $cb $5f
    ret z                                         ; $66da: $c8

    ld c, $04                                     ; $66db: $0e $04
    ld a, $02                                     ; $66dd: $3e $02
    call CallSoundEffectDispatcher                ; $66df: $cd $b6 $03
    ld a, $08                                     ; $66e2: $3e $08
    ld [rStatePhase_Current], a                   ; $66e4: $ea $35 $d6
    ret                                           ; $66e7: $c9


GS09_StatePhase_04_TODO_Data::
    db $05, $07, $06

GS09_StatePhase_05_TODO::
    ld b, $02                                     ; $66eb: $06 $02
    ld hl, $4672                                  ; $66ed: $21 $72 $46
    call SwitchBankToBAndJumpToHL                 ; $66f0: $cd $de $05
    ld a, [rInputButtonsPressed]                  ; $66f3: $fa $1e $c3
    and $01                                       ; $66f6: $e6 $01
    ret z                                         ; $66f8: $c8

    ld c, $04                                     ; $66f9: $0e $04
    ld a, $02                                     ; $66fb: $3e $02
    call CallSoundEffectDispatcher                ; $66fd: $cd $b6 $03
    ld a, [$d83b]                                 ; $6700: $fa $3b $d8
    and a                                         ; $6703: $a7
    jr z, jr_001_670c                             ; $6704: $28 $06

    ld a, $04                                     ; $6706: $3e $04
    ld [rStatePhase_Current], a                   ; $6708: $ea $35 $d6
    ret                                           ; $670b: $c9


jr_001_670c:
    call Call_000_1c14                            ; $670c: $cd $14 $1c
    ld a, $03                                     ; $670f: $3e $03
    ld [rContinueSavedGameFlowMode_Unsure], a     ; $6711: $ea $a2 $ac
    ld c, $03                                     ; $6714: $0e $03
    ld a, $02                                     ; $6716: $3e $02
    call CallSoundEffectDispatcher                ; $6718: $cd $b6 $03
    ld bc, $003c                                  ; $671b: $01 $3c $00
    call DelayFramesByBC                          ; $671e: $cd $fa $05
    ld a, $05                                     ; $6721: $3e $05
    call CallSoundEffectDispatcher                ; $6723: $cd $b6 $03
    ld c, $00                                     ; $6726: $0e $00
    ld a, $01                                     ; $6728: $3e $01
    call CallSoundEffectDispatcher                ; $672a: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $672d: $cd $99 $03
    ld c, $00                                     ; $6730: $0e $00
    ld a, $01                                     ; $6732: $3e $01
    call CallSoundEffectDispatcher                ; $6734: $cd $b6 $03
    ld b, $03                                     ; $6737: $06 $03
    ld hl, $469f                                  ; $6739: $21 $9f $46
    ld c, $00                                     ; $673c: $0e $00
    ld de, $0013                                  ; $673e: $11 $13 $00
    call PlayScreenTransitionFadeOut              ; $6741: $cd $4e $04
    call DisableLCDAtVBlank                       ; $6744: $cd $83 $04
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $6747: $21 $37 $c3
    res 6, [hl]                                   ; $674a: $cb $b6
    ld hl, rIE                                    ; $674c: $21 $ff $ff
    res 1, [hl]                                   ; $674f: $cb $8e
    xor a                                         ; $6751: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $6752: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $6755: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $6758: $ea $50 $c3
    ld a, [rSelectedSaveSlotIndex]                ; $675b: $fa $65 $a0
    ld c, a                                       ; $675e: $4f
    sla a                                         ; $675f: $cb $27
    sla a                                         ; $6761: $cb $27
    add c                                         ; $6763: $81
    ld c, a                                       ; $6764: $4f
    ld b, $00                                     ; $6765: $06 $00
    ld hl, $a06c                                  ; $6767: $21 $6c $a0
    add hl, bc                                    ; $676a: $09
    ld a, [hl]                                    ; $676b: $7e
    ld a, [$d83c]                                 ; $676c: $fa $3c $d8
    ld [hl], a                                    ; $676f: $77
    ld a, $04                                     ; $6770: $3e $04
    ld [rStatePhase_Current], a                   ; $6772: $ea $35 $d6
    ld a, $00                                     ; $6775: $3e $00
    ld [rGameState_Current], a                    ; $6777: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $677a: $c3 $1f $1b


GS09_StatePhase_06_TODO::
    ld b, $02                                     ; $677d: $06 $02
    ld hl, $46b2                                  ; $677f: $21 $b2 $46
    call SwitchBankToBAndJumpToHL                 ; $6782: $cd $de $05
    ld a, [rInputButtonsPressed]                  ; $6785: $fa $1e $c3
    and $01                                       ; $6788: $e6 $01
    ret z                                         ; $678a: $c8

    ld c, $04                                     ; $678b: $0e $04
    ld a, $02                                     ; $678d: $3e $02
    call CallSoundEffectDispatcher                ; $678f: $cd $b6 $03
    ld a, $04                                     ; $6792: $3e $04
    ld [rStatePhase_Current], a                   ; $6794: $ea $35 $d6
    ret                                           ; $6797: $c9


GS09_StatePhase_07_TODO::
    ld b, $02                                     ; $6798: $06 $02
    ld hl, $470f                                  ; $679a: $21 $0f $47
    call SwitchBankToBAndJumpToHL                 ; $679d: $cd $de $05
    ld a, [rInputButtonsPressed]                  ; $67a0: $fa $1e $c3
    and $01                                       ; $67a3: $e6 $01
    ret z                                         ; $67a5: $c8

    ld c, $04                                     ; $67a6: $0e $04
    ld a, $02                                     ; $67a8: $3e $02
    call CallSoundEffectDispatcher                ; $67aa: $cd $b6 $03
    ld a, [$d83d]                                 ; $67ad: $fa $3d $d8
    and a                                         ; $67b0: $a7
    jr z, jr_001_67b9                             ; $67b1: $28 $06

    ld a, $04                                     ; $67b3: $3e $04
    ld [rStatePhase_Current], a                   ; $67b5: $ea $35 $d6
    ret                                           ; $67b8: $c9


jr_001_67b9:
    ld a, $01                                     ; $67b9: $3e $01
    ld [rPuzzleTimerCompletionState], a           ; $67bb: $ea $06 $d8
    ld c, $00                                     ; $67be: $0e $00
    ld a, $01                                     ; $67c0: $3e $01
    call CallSoundEffectDispatcher                ; $67c2: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $67c5: $cd $99 $03
    ld c, $08                                     ; $67c8: $0e $08
    ld a, $01                                     ; $67ca: $3e $01
    call CallSoundEffectDispatcher                ; $67cc: $cd $b6 $03
    call ClearShadowOAMBuffer                     ; $67cf: $cd $b6 $05
    call LoadGameOverMessageTileData              ; $67d2: $cd $e3 $7c
    ld a, [rSelectedSaveSlotIndex]                ; $67d5: $fa $65 $a0
    ld c, a                                       ; $67d8: $4f
    sla a                                         ; $67d9: $cb $27
    sla a                                         ; $67db: $cb $27
    add c                                         ; $67dd: $81
    ld c, a                                       ; $67de: $4f
    ld b, $00                                     ; $67df: $06 $00
    ld hl, $a06c                                  ; $67e1: $21 $6c $a0
    add hl, bc                                    ; $67e4: $09
    ld a, [hl]                                    ; $67e5: $7e
    ld a, [$d83c]                                 ; $67e6: $fa $3c $d8
    ld [hl], a                                    ; $67e9: $77
    ld a, $02                                     ; $67ea: $3e $02
    ld [rStatePhase_Current], a                   ; $67ec: $ea $35 $d6
    xor a                                         ; $67ef: $af
    ld [rContinueSavedGameFlowMode_Unsure], a     ; $67f0: $ea $a2 $ac
    jp RefreshSaveValidationChecksumsAndMirrors   ; $67f3: $c3 $1f $1b


GS09_StatePhase_08_TODO::
    call ClearShadowOAMBuffer                     ; $67f6: $cd $b6 $05
    rst RST_08                                    ; $67f9: $cf
    ld a, [rSelectedSaveSlotIndex]                ; $67fa: $fa $65 $a0
    ld c, a                                       ; $67fd: $4f
    sla a                                         ; $67fe: $cb $27
    sla a                                         ; $6800: $cb $27
    add c                                         ; $6802: $81
    ld c, a                                       ; $6803: $4f
    ld b, $00                                     ; $6804: $06 $00
    ld hl, $a06c                                  ; $6806: $21 $6c $a0
    add hl, bc                                    ; $6809: $09
    ld a, [hl]                                    ; $680a: $7e
    ld a, [$d83c]                                 ; $680b: $fa $3c $d8
    ld [hl], a                                    ; $680e: $77
    ld a, $06                                     ; $680f: $3e $06
    ld hl, $4500                                  ; $6811: $21 $00 $45
    ld de, $8500                                  ; $6814: $11 $00 $85
    ld bc, .CheckAllFaceButtonsHeldCombo          ; $6817: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $681a: $cd $38 $05
    call DrawClueNumbersFromRunLengthBuffers      ; $681d: $cd $b9 $6f
    call RenderPuzzleTimerDigits                  ; $6820: $cd $04 $7c
    ld a, $01                                     ; $6823: $3e $01
    ld [rStatePhase_Current], a                   ; $6825: $ea $35 $d6
    xor a                                         ; $6828: $af
    ld [rContinueSavedGameFlowMode_Unsure], a     ; $6829: $ea $a2 $ac
    jp RefreshSaveValidationChecksumsAndMirrors   ; $682c: $c3 $1f $1b


Call_001_682f:
    ld a, [rInputButtonsHeld]                     ; $682f: $fa $1a $c3
    and $01                                       ; $6832: $e6 $01
    jr z, jr_001_683d                             ; $6834: $28 $07

    ld a, [rInputButtonsPressedOrRepeated]        ; $6836: $fa $22 $c3
    and $f0                                       ; $6839: $e6 $f0
    jr z, jr_001_6841                             ; $683b: $28 $04

jr_001_683d:
    xor a                                         ; $683d: $af
    ld [rPuzzleActionRepeatGuard], a              ; $683e: $ea $0f $d8

jr_001_6841:
    ld a, [rPuzzleAndMenuCursorRow]               ; $6841: $fa $37 $d6
    sla a                                         ; $6844: $cb $27
    sla a                                         ; $6846: $cb $27
    sla a                                         ; $6848: $cb $27
    sla a                                         ; $684a: $cb $27
    ld hl, rPuzzleCursorColumn                    ; $684c: $21 $36 $d6
    add [hl]                                      ; $684f: $86
    ld c, a                                       ; $6850: $4f
    ld b, $00                                     ; $6851: $06 $00
    ld hl, $d640                                  ; $6853: $21 $40 $d6
    add hl, bc                                    ; $6856: $09
    push hl                                       ; $6857: $e5
    ld a, [rSelectedSaveSlotIndex]                ; $6858: $fa $65 $a0
    ld c, a                                       ; $685b: $4f
    ld b, $00                                     ; $685c: $06 $00
    ld hl, $a066                                  ; $685e: $21 $66 $a0
    add hl, bc                                    ; $6861: $09
    ld a, [hl]                                    ; $6862: $7e
    pop hl                                        ; $6863: $e1
    and a                                         ; $6864: $a7
    jp z, ProcessPuzzleCellActionInput_HandleFillActionInput; $6865: $ca $60 $72

    dec a                                         ; $6868: $3d
    jp z, ProcessPuzzleCellActionInput_HandleFillActionInput; $6869: $ca $60 $72

    ret                                           ; $686c: $c9


GameState_0A_TODO_PhaseDispatcher::
    ld a, [rStatePhase_Current]                   ; $686d: $fa $35 $d6
    rst RST_18                                    ; $6870: $df

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

GS0A_StatePhase_00_TODO::
    ld a, $43                                     ; $6889: $3e $43
    ld [rLCDCShadow], a                           ; $688b: $ea $2e $c3
    xor a                                         ; $688e: $af
    ld [rBGPShadow], a                            ; $688f: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $6892: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $6895: $ea $31 $c3
    ld [rSCXShadow], a                            ; $6898: $ea $32 $c3
    ld [rSCYShadow], a                            ; $689b: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $689e: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $68a1: $cd $ab $05
    call LoadPuzzleDataBuffer                     ; $68a4: $cd $f1 $07
    call LoadGameBoardTileData                    ; $68a7: $cd $b9 $69
    xor a                                         ; $68aa: $af
    ld [rPuzzleCursorColumn], a                   ; $68ab: $ea $36 $d6
    ld [rPuzzleAndMenuCursorRow], a               ; $68ae: $ea $37 $d6
    ld a, $00                                     ; $68b1: $3e $00
    ld [rHintPopupSelection], a                   ; $68b3: $ea $33 $d8
    ld a, $02                                     ; $68b6: $3e $02
    ld [rPuzzleTimerAdjustmentStep], a            ; $68b8: $ea $11 $d8
    ld a, $06                                     ; $68bb: $3e $06
    ld hl, $7800                                  ; $68bd: $21 $00 $78
    ld de, $8500                                  ; $68c0: $11 $00 $85
    ld bc, $0200                                  ; $68c3: $01 $00 $02
    call BankedTileCopy                           ; $68c6: $cd $e4 $04
    ld a, $2f                                     ; $68c9: $3e $2f
    ld [rLYCShadow], a                            ; $68cb: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $68ce: $21 $37 $c3
    set 6, [hl]                                   ; $68d1: $cb $f6
    ld hl, rIE                                    ; $68d3: $21 $ff $ff
    set 1, [hl]                                   ; $68d6: $cb $ce
    ld a, $01                                     ; $68d8: $3e $01
    ld [rLCDCInterruptDispatchIndex], a           ; $68da: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $68dd: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $68e0: $ea $50 $c3
    call BuildClueRunLengthBuffers                ; $68e3: $cd $30 $6f
    call ClearShadowOAMBuffer                     ; $68e6: $cd $b6 $05
    call ResetPuzzleTimerState                    ; $68e9: $cd $eb $7b
    call Call_001_786e                            ; $68ec: $cd $6e $78
    call Call_001_7dfe                            ; $68ef: $cd $fe $7d
    call EnableLCDFromShadow                      ; $68f2: $cd $a2 $04
    ld b, $03                                     ; $68f5: $06 $03
    ld hl, $4694                                  ; $68f7: $21 $94 $46
    ld c, $00                                     ; $68fa: $0e $00
    ld de, $0004                                  ; $68fc: $11 $04 $00
    call PlayScreenTransitionFadeIn               ; $68ff: $cd $0d $04
    ld hl, rStatePhase_Current                    ; $6902: $21 $35 $d6
    inc [hl]                                      ; $6905: $34
    ret                                           ; $6906: $c9


GS0A_StatePhase_0b_TODO::
    ld a, $43                                     ; $6907: $3e $43
    ld [rLCDCShadow], a                           ; $6909: $ea $2e $c3
    xor a                                         ; $690c: $af
    ld [rBGPShadow], a                            ; $690d: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $6910: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $6913: $ea $31 $c3
    ld [rSCXShadow], a                            ; $6916: $ea $32 $c3
    ld [rSCYShadow], a                            ; $6919: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $691c: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $691f: $cd $ab $05
    call Call_000_1c96                            ; $6922: $cd $96 $1c
    call LoadGameBoardTileData                    ; $6925: $cd $b9 $69
    ld a, $06                                     ; $6928: $3e $06
    ld hl, $7800                                  ; $692a: $21 $00 $78
    ld de, $8500                                  ; $692d: $11 $00 $85
    ld bc, $0200                                  ; $6930: $01 $00 $02
    call BankedTileCopy                           ; $6933: $cd $e4 $04
    ld a, $2f                                     ; $6936: $3e $2f
    ld [rLYCShadow], a                            ; $6938: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $693b: $21 $37 $c3
    set 6, [hl]                                   ; $693e: $cb $f6
    ld hl, rIE                                    ; $6940: $21 $ff $ff
    set 1, [hl]                                   ; $6943: $cb $ce
    ld a, $01                                     ; $6945: $3e $01
    ld [rLCDCInterruptDispatchIndex], a           ; $6947: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $694a: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $694d: $ea $50 $c3
    call BuildClueRunLengthBuffers                ; $6950: $cd $30 $6f
    call ClearShadowOAMBuffer                     ; $6953: $cd $b6 $05
    xor a                                         ; $6956: $af
    ld [rPuzzleTimerActive], a                    ; $6957: $ea $0d $d8
    call RenderPuzzleTimerDigits                  ; $695a: $cd $04 $7c
    call Call_001_786e                            ; $695d: $cd $6e $78
    call Call_001_7dfe                            ; $6960: $cd $fe $7d
    call EnableLCDFromShadow                      ; $6963: $cd $a2 $04
    ld b, $03                                     ; $6966: $06 $03
    ld hl, $4694                                  ; $6968: $21 $94 $46
    ld c, $00                                     ; $696b: $0e $00
    ld de, $0004                                  ; $696d: $11 $04 $00
    call PlayScreenTransitionFadeIn               ; $6970: $cd $0d $04
    call ClearShadowOAMBuffer                     ; $6973: $cd $b6 $05
    rst RST_08                                    ; $6976: $cf
    xor a                                         ; $6977: $af
    ld [$d83a], a                                 ; $6978: $ea $3a $d8
    ld a, $01                                     ; $697b: $3e $01
    ld [$d83b], a                                 ; $697d: $ea $3b $d8
    ld a, [rSelectedSaveSlotIndex]                ; $6980: $fa $65 $a0
    ld c, a                                       ; $6983: $4f
    ld b, $00                                     ; $6984: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $6986: $21 $8d $a3
    add hl, bc                                    ; $6989: $09
    ld a, [rSelectedSaveSlotIndex]                ; $698a: $fa $65 $a0
    ld c, a                                       ; $698d: $4f
    sla a                                         ; $698e: $cb $27
    sla a                                         ; $6990: $cb $27
    add c                                         ; $6992: $81
    add [hl]                                      ; $6993: $86
    ld c, a                                       ; $6994: $4f
    ld hl, $a06a                                  ; $6995: $21 $6a $a0
    add hl, bc                                    ; $6998: $09
    ld a, [hl]                                    ; $6999: $7e
    ld [$d83c], a                                 ; $699a: $ea $3c $d8
    ld a, $01                                     ; $699d: $3e $01
    ld [$d83d], a                                 ; $699f: $ea $3d $d8
    ld a, $06                                     ; $69a2: $3e $06
    ld hl, $7a00                                  ; $69a4: $21 $00 $7a
    ld de, $8500                                  ; $69a7: $11 $00 $85
    ld bc, .CheckAllFaceButtonsHeldCombo          ; $69aa: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $69ad: $cd $38 $05
    call Call_001_7dcb                            ; $69b0: $cd $cb $7d
    ld a, $06                                     ; $69b3: $3e $06
    ld [rStatePhase_Current], a                   ; $69b5: $ea $35 $d6
    ret                                           ; $69b8: $c9


LoadGameBoardTileData::
    ld a, [rPuzzleGridWidth]                      ; $69b9: $fa $00 $d8
    cp $05                                        ; $69bc: $fe $05
    jr nz, Load10x10GameBoardTileData             ; $69be: $20 $36

    ld a, $07                                     ; $69c0: $3e $07
    ld hl, GS05_EasyPicrossCompletionMessage      ; $69c2: $21 $00 $40
    ld de, $8000                                  ; $69c5: $11 $00 $80
    ld bc, $1800                                  ; $69c8: $01 $00 $18
    call BankedTileCopy                           ; $69cb: $cd $e4 $04
    ld a, $06                                     ; $69ce: $3e $06
    ld hl, $4800                                  ; $69d0: $21 $00 $48
    ld de, $8800                                  ; $69d3: $11 $00 $88
    ld bc, $0200                                  ; $69d6: $01 $00 $02
    call BankedTileCopy                           ; $69d9: $cd $e4 $04
    ld a, $0b                                     ; $69dc: $3e $0b
    ld hl, $6000                                  ; $69de: $21 $00 $60
    ld de, $9800                                  ; $69e1: $11 $00 $98
    ld bc, $0400                                  ; $69e4: $01 $00 $04
    call BankedTileCopy                           ; $69e7: $cd $e4 $04
    ld a, $96                                     ; $69ea: $3e $96
    ld [rTilemapToTileDataAddressLookupTableLow], a; $69ec: $ea $63 $cd
    ld a, $10                                     ; $69ef: $3e $10
    ld [rTilemapToTileDataAddressLookupTableHigh], a; $69f1: $ea $64 $cd
    jr jr_001_6a48                                ; $69f4: $18 $52

Load10x10GameBoardTileData::
    cp $0a                                        ; $69f6: $fe $0a
    jr nz, Load15x15GameBoardTileData             ; $69f8: $20 $28

    ld a, $08                                     ; $69fa: $3e $08
    ld hl, GS05_EasyPicrossCompletionMessage      ; $69fc: $21 $00 $40
    ld de, $8000                                  ; $69ff: $11 $00 $80
    ld bc, $1800                                  ; $6a02: $01 $00 $18
    call BankedTileCopy                           ; $6a05: $cd $e4 $04
    ld a, $0b                                     ; $6a08: $3e $0b
    ld hl, GS09_PhasePointer_00                   ; $6a0a: $21 $00 $64
    ld de, $9800                                  ; $6a0d: $11 $00 $98
    ld bc, $0400                                  ; $6a10: $01 $00 $04
    call BankedTileCopy                           ; $6a13: $cd $e4 $04
    ld a, $8a                                     ; $6a16: $3e $8a
    ld [rTilemapToTileDataAddressLookupTableLow], a; $6a18: $ea $63 $cd
    ld a, $13                                     ; $6a1b: $3e $13
    ld [rTilemapToTileDataAddressLookupTableHigh], a; $6a1d: $ea $64 $cd
    jr jr_001_6a48                                ; $6a20: $18 $26

Load15x15GameBoardTileData::
    ld a, $06                                     ; $6a22: $3e $06
    ld hl, GS05_EasyPicrossCompletionMessage      ; $6a24: $21 $00 $40
    ld de, $8000                                  ; $6a27: $11 $00 $80
    ld bc, $1800                                  ; $6a2a: $01 $00 $18
    call BankedTileCopy                           ; $6a2d: $cd $e4 $04
    ld a, $0b                                     ; $6a30: $3e $0b
    ld hl, $5c00                                  ; $6a32: $21 $00 $5c
    ld de, $9800                                  ; $6a35: $11 $00 $98
    ld bc, $0400                                  ; $6a38: $01 $00 $04
    call BankedTileCopy                           ; $6a3b: $cd $e4 $04
    ld a, $a2                                     ; $6a3e: $3e $a2
    ld [rTilemapToTileDataAddressLookupTableLow], a; $6a40: $ea $63 $cd
    ld a, $0d                                     ; $6a43: $3e $0d
    ld [rTilemapToTileDataAddressLookupTableHigh], a; $6a45: $ea $64 $cd

jr_001_6a48:
    xor a                                         ; $6a48: $af
    ld [rPuzzleFlowVariant_Unsure], a             ; $6a49: $ea $05 $d8
    ld [rPuzzleTimerCompletionState], a           ; $6a4c: $ea $06 $d8
    ld [rMarioBlinkAnimationSequenceCursor], a    ; $6a4f: $ea $18 $d8
    ld [rMarioBlinkAnimationDelay], a             ; $6a52: $ea $17 $d8
    ld [$d81c], a                                 ; $6a55: $ea $1c $d8
    ld [$d81d], a                                 ; $6a58: $ea $1d $d8
    ld [rPuzzleActionRepeatGuard], a              ; $6a5b: $ea $0f $d8
    ld [rMessageStepDelayTimer], a                ; $6a5e: $ea $1f $d8
    ld [rMessageStepSequenceCursor], a            ; $6a61: $ea $20 $d8
    ld [rMessageStepSequenceState], a             ; $6a64: $ea $21 $d8
    ld [rCellEffectTargetColumn], a               ; $6a67: $ea $24 $d8
    ld [rCellEffectTargetRow], a                  ; $6a6a: $ea $25 $d8
    ld [rPendingCellEffectCode], a                ; $6a6d: $ea $23 $d8
    ld [rPendingCellEffectDelay], a               ; $6a70: $ea $22 $d8
    ld a, $01                                     ; $6a73: $3e $01
    ld [rHintCursorAnimationColumnThreshold], a   ; $6a75: $ea $12 $d8
    ld [rHintCursorAnimationRowThreshold], a      ; $6a78: $ea $13 $d8
    call GetSubtractiveRNGStateByte               ; $6a7b: $cd $14 $06
    sla a                                         ; $6a7e: $cb $27
    add $b4                                       ; $6a80: $c6 $b4
    ld [$d814], a                                 ; $6a82: $ea $14 $d8
    ld a, $00                                     ; $6a85: $3e $00
    adc $00                                       ; $6a87: $ce $00
    ld [$d815], a                                 ; $6a89: $ea $15 $d8
    ld a, $05                                     ; $6a8c: $3e $05
    ld [rCountdownSfxTimer], a                    ; $6a8e: $ea $2a $d8
    ret                                           ; $6a91: $c9


GS0A_StatePhase_01_TODO::
    call TickMarioBlinkAnimation                  ; $6a92: $cd $18 $79
    ld a, [rHintPopupSelection]                   ; $6a95: $fa $33 $d8
    add $3a                                       ; $6a98: $c6 $3a
    ld bc, $2848                                  ; $6a9a: $01 $48 $28
    call CopyOAMSpriteById                        ; $6a9d: $cd $ce $20
    ld a, [rInputButtonsPressed]                  ; $6aa0: $fa $1e $c3
    and $f0                                       ; $6aa3: $e6 $f0
    jr z, jr_001_6ab7                             ; $6aa5: $28 $10

    ld c, $0a                                     ; $6aa7: $0e $0a
    ld a, $02                                     ; $6aa9: $3e $02
    call CallSoundEffectDispatcher                ; $6aab: $cd $b6 $03
    ld a, [rHintPopupSelection]                   ; $6aae: $fa $33 $d8
    xor $01                                       ; $6ab1: $ee $01
    ld [rHintPopupSelection], a                   ; $6ab3: $ea $33 $d8
    ret                                           ; $6ab6: $c9


jr_001_6ab7:
    ld a, [rInputButtonsPressed]                  ; $6ab7: $fa $1e $c3
    and $09                                       ; $6aba: $e6 $09
    jr nz, jr_001_6ae7                            ; $6abc: $20 $29

    ld a, [rInputButtonsPressed]                  ; $6abe: $fa $1e $c3
    and $02                                       ; $6ac1: $e6 $02
    ret z                                         ; $6ac3: $c8

    call ClearShadowOAMBufferFromCursor           ; $6ac4: $cd $c5 $05
    rst RST_08                                    ; $6ac7: $cf
    ld c, $04                                     ; $6ac8: $0e $04
    ld a, $02                                     ; $6aca: $3e $02
    call CallSoundEffectDispatcher                ; $6acc: $cd $b6 $03
    call ClearShadowOAMBuffer                     ; $6acf: $cd $b6 $05
    ld a, $01                                     ; $6ad2: $3e $01
    ld [rHintPopupSelection], a                   ; $6ad4: $ea $33 $d8
    add $3a                                       ; $6ad7: $c6 $3a
    ld bc, $2848                                  ; $6ad9: $01 $48 $28
    call CopyOAMSpriteById                        ; $6adc: $cd $ce $20
    ld bc, $001e                                  ; $6adf: $01 $1e $00
    call DelayFramesByBC                          ; $6ae2: $cd $fa $05
    jr jr_001_6aee                                ; $6ae5: $18 $07

jr_001_6ae7:
    ld c, $03                                     ; $6ae7: $0e $03
    ld a, $02                                     ; $6ae9: $3e $02
    call CallSoundEffectDispatcher                ; $6aeb: $cd $b6 $03

jr_001_6aee:
    ld a, [rHintPopupSelection]                   ; $6aee: $fa $33 $d8
    and a                                         ; $6af1: $a7
    jr nz, jr_001_6afa                            ; $6af2: $20 $06

    ld hl, rStatePhase_Current                    ; $6af4: $21 $35 $d6
    inc [hl]                                      ; $6af7: $34
    jr jr_001_6b05                                ; $6af8: $18 $0b

jr_001_6afa:
    call Call_001_7dcb                            ; $6afa: $cd $cb $7d
    ld hl, rStatePhase_Current                    ; $6afd: $21 $35 $d6
    inc [hl]                                      ; $6b00: $34
    ld hl, rStatePhase_Current                    ; $6b01: $21 $35 $d6
    inc [hl]                                      ; $6b04: $34

jr_001_6b05:
    call ClearShadowOAMBuffer                     ; $6b05: $cd $b6 $05
    rst RST_08                                    ; $6b08: $cf
    call DrawClueNumbersFromRunLengthBuffers      ; $6b09: $cd $b9 $6f
    ld a, [rPuzzleGridWidth]                      ; $6b0c: $fa $00 $d8
    cp $05                                        ; $6b0f: $fe $05
    jr nz, jr_001_6b22                            ; $6b11: $20 $0f

    ld a, $07                                     ; $6b13: $3e $07
    ld hl, $4500                                  ; $6b15: $21 $00 $45
    ld de, $8500                                  ; $6b18: $11 $00 $85
    ld bc, $0200                                  ; $6b1b: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $6b1e: $cd $38 $05
    ret                                           ; $6b21: $c9


jr_001_6b22:
    cp $0a                                        ; $6b22: $fe $0a
    jr nz, jr_001_6b35                            ; $6b24: $20 $0f

    ld a, $08                                     ; $6b26: $3e $08
    ld hl, $4500                                  ; $6b28: $21 $00 $45
    ld de, $8500                                  ; $6b2b: $11 $00 $85
    ld bc, $0200                                  ; $6b2e: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $6b31: $cd $38 $05
    ret                                           ; $6b34: $c9


jr_001_6b35:
    ld a, $06                                     ; $6b35: $3e $06
    ld hl, $4500                                  ; $6b37: $21 $00 $45
    ld de, $8500                                  ; $6b3a: $11 $00 $85
    ld bc, $0200                                  ; $6b3d: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $6b40: $cd $38 $05
    ret                                           ; $6b43: $c9


GS0A_StatePhase_02_TODO::
    ld a, [rHintCursorAnimationColumnThreshold]   ; $6b44: $fa $12 $d8
    cp $3f                                        ; $6b47: $fe $3f
    jr z, jr_001_6b7f                             ; $6b49: $28 $34

    ld c, a                                       ; $6b4b: $4f
    ld a, [rVBlankFrameCounter]                   ; $6b4c: $fa $3a $c3
    and c                                         ; $6b4f: $a1
    jr nz, jr_001_6b7f                            ; $6b50: $20 $2d

    ld a, c                                       ; $6b52: $79
    cp $01                                        ; $6b53: $fe $01
    jr z, jr_001_6b5d                             ; $6b55: $28 $06

    scf                                           ; $6b57: $37
    ld hl, rHintCursorAnimationColumnThreshold    ; $6b58: $21 $12 $d8
    rl [hl]                                       ; $6b5b: $cb $16

jr_001_6b5d:
    ld a, [rPuzzleCursorColumn]                   ; $6b5d: $fa $36 $d6
    inc a                                         ; $6b60: $3c
    ld hl, rPuzzleGridWidth                       ; $6b61: $21 $00 $d8
    cp [hl]                                       ; $6b64: $be
    jr nz, jr_001_6b68                            ; $6b65: $20 $01

    xor a                                         ; $6b67: $af

jr_001_6b68:
    ld [rPuzzleCursorColumn], a                   ; $6b68: $ea $36 $d6
    ld c, a                                       ; $6b6b: $4f
    sla a                                         ; $6b6c: $cb $27
    add c                                         ; $6b6e: $81
    sla a                                         ; $6b6f: $cb $27
    ld c, a                                       ; $6b71: $4f
    ld b, $00                                     ; $6b72: $06 $00
    ld hl, $d7a5                                  ; $6b74: $21 $a5 $d7
    add hl, bc                                    ; $6b77: $09
    ld a, [hl]                                    ; $6b78: $7e
    and a                                         ; $6b79: $a7
    jr z, jr_001_6b5d                             ; $6b7a: $28 $e1

    call TickCountdownAndEmitSfx                  ; $6b7c: $cd $2c $6c

jr_001_6b7f:
    ld a, [rHintCursorAnimationRowThreshold]      ; $6b7f: $fa $13 $d8
    cp $3f                                        ; $6b82: $fe $3f
    jr z, jr_001_6bba                             ; $6b84: $28 $34

    ld c, a                                       ; $6b86: $4f
    ld a, [rVBlankFrameCounter]                   ; $6b87: $fa $3a $c3
    and c                                         ; $6b8a: $a1
    jr nz, jr_001_6bba                            ; $6b8b: $20 $2d

    ld a, c                                       ; $6b8d: $79
    cp $01                                        ; $6b8e: $fe $01
    jr z, jr_001_6b98                             ; $6b90: $28 $06

    scf                                           ; $6b92: $37
    ld hl, rHintCursorAnimationRowThreshold       ; $6b93: $21 $13 $d8
    rl [hl]                                       ; $6b96: $cb $16

jr_001_6b98:
    ld a, [rPuzzleAndMenuCursorRow]               ; $6b98: $fa $37 $d6
    inc a                                         ; $6b9b: $3c
    ld hl, rPuzzleGridHeight                      ; $6b9c: $21 $01 $d8
    cp [hl]                                       ; $6b9f: $be
    jr nz, jr_001_6ba3                            ; $6ba0: $20 $01

    xor a                                         ; $6ba2: $af

jr_001_6ba3:
    ld [rPuzzleAndMenuCursorRow], a               ; $6ba3: $ea $37 $d6
    ld c, a                                       ; $6ba6: $4f
    sla a                                         ; $6ba7: $cb $27
    add c                                         ; $6ba9: $81
    sla a                                         ; $6baa: $cb $27
    ld c, a                                       ; $6bac: $4f
    ld b, $00                                     ; $6bad: $06 $00
    ld hl, $d745                                  ; $6baf: $21 $45 $d7
    add hl, bc                                    ; $6bb2: $09
    ld a, [hl]                                    ; $6bb3: $7e
    and a                                         ; $6bb4: $a7
    jr z, jr_001_6b98                             ; $6bb5: $28 $e1

    call TickCountdownAndEmitSfx                  ; $6bb7: $cd $2c $6c

jr_001_6bba:
    call DrawPuzzleCursorSprites                  ; $6bba: $cd $85 $71
    call TickMarioBlinkAnimation                  ; $6bbd: $cd $18 $79
    ld a, [rHintCursorAnimationColumnThreshold]   ; $6bc0: $fa $12 $d8
    ld c, a                                       ; $6bc3: $4f
    ld a, [rHintCursorAnimationRowThreshold]      ; $6bc4: $fa $13 $d8
    and c                                         ; $6bc7: $a1
    cp $3f                                        ; $6bc8: $fe $3f
    jr nz, jr_001_6bd7                            ; $6bca: $20 $0b

    call ApplyHintSelectionToRowAndColumn         ; $6bcc: $cd $a2 $78
    call Call_001_7dcb                            ; $6bcf: $cd $cb $7d
    ld hl, rStatePhase_Current                    ; $6bd2: $21 $35 $d6
    inc [hl]                                      ; $6bd5: $34
    ret                                           ; $6bd6: $c9


jr_001_6bd7:
    ld a, [rHintCursorAnimationRowThreshold]      ; $6bd7: $fa $13 $d8
    cp $01                                        ; $6bda: $fe $01
    ret nz                                        ; $6bdc: $c0

    ld hl, $d815                                  ; $6bdd: $21 $15 $d8
    ld a, [hl-]                                   ; $6be0: $3a
    or [hl]                                       ; $6be1: $b6
    jr z, jr_001_6bf3                             ; $6be2: $28 $0f

    ld a, [hl]                                    ; $6be4: $7e
    sub $01                                       ; $6be5: $d6 $01
    ld [hl], a                                    ; $6be7: $77
    inc hl                                        ; $6be8: $23
    ld a, [hl]                                    ; $6be9: $7e
    sbc $00                                       ; $6bea: $de $00
    ld [hl], a                                    ; $6bec: $77
    ld a, [rInputButtonsPressed]                  ; $6bed: $fa $1e $c3
    and $09                                       ; $6bf0: $e6 $09
    ret z                                         ; $6bf2: $c8

jr_001_6bf3:
    ld a, [rHintCursorAnimationColumnThreshold]   ; $6bf3: $fa $12 $d8
    cp $01                                        ; $6bf6: $fe $01
    jr nz, jr_001_6c18                            ; $6bf8: $20 $1e

    scf                                           ; $6bfa: $37
    rl a                                          ; $6bfb: $cb $17
    ld [rHintCursorAnimationColumnThreshold], a   ; $6bfd: $ea $12 $d8
    ld hl, $d814                                  ; $6c00: $21 $14 $d8
    call GetSubtractiveRNGStateByte               ; $6c03: $cd $14 $06
    sla a                                         ; $6c06: $cb $27
    add $78                                       ; $6c08: $c6 $78
    ld [hl+], a                                   ; $6c0a: $22
    ld a, $00                                     ; $6c0b: $3e $00
    adc $00                                       ; $6c0d: $ce $00
    ld [hl], a                                    ; $6c0f: $77
    ld c, $03                                     ; $6c10: $0e $03
    ld a, $02                                     ; $6c12: $3e $02
    call CallSoundEffectDispatcher                ; $6c14: $cd $b6 $03
    ret                                           ; $6c17: $c9


jr_001_6c18:
    ld a, [rHintCursorAnimationRowThreshold]      ; $6c18: $fa $13 $d8
    cp $01                                        ; $6c1b: $fe $01
    ret nz                                        ; $6c1d: $c0

    scf                                           ; $6c1e: $37
    rl a                                          ; $6c1f: $cb $17
    ld [rHintCursorAnimationRowThreshold], a      ; $6c21: $ea $13 $d8
    ld c, $03                                     ; $6c24: $0e $03
    ld a, $02                                     ; $6c26: $3e $02
    call CallSoundEffectDispatcher                ; $6c28: $cd $b6 $03
    ret                                           ; $6c2b: $c9


TickCountdownAndEmitSfx::
    ld a, [rCountdownSfxTimer]                    ; $6c2c: $fa $2a $d8
    dec a                                         ; $6c2f: $3d
    ld [rCountdownSfxTimer], a                    ; $6c30: $ea $2a $d8
    ret nz                                        ; $6c33: $c0

    ld a, $05                                     ; $6c34: $3e $05
    ld [rCountdownSfxTimer], a                    ; $6c36: $ea $2a $d8
    ld c, $02                                     ; $6c39: $0e $02
    ld a, $02                                     ; $6c3b: $3e $02
    call CallSoundEffectDispatcher                ; $6c3d: $cd $b6 $03
    ret                                           ; $6c40: $c9


GS0A_StatePhase_03_TODO::
    call UpdatePuzzleCursorFromDirectionalInput   ; $6c41: $cd $ca $71
    call DrawPuzzleCursorSpritesAndTickStepSequence; $6c44: $cd $3e $71
    call TickMarioBlinkAnimation                  ; $6c47: $cd $18 $79
    call Call_001_7e33                            ; $6c4a: $cd $33 $7e
    call Call_001_7e77                            ; $6c4d: $cd $77 $7e
    call UpdatePuzzleTimerCountdown               ; $6c50: $cd $ea $7a
    call UpdatePuzzleTimerDisplayState            ; $6c53: $cd $98 $7a
    call ProcessPuzzleCellActionInput             ; $6c56: $cd $22 $72
    call TickPendingCellActionEffect              ; $6c59: $cd $16 $75
    call Call_001_75f6                            ; $6c5c: $cd $f6 $75
    call TickPuzzleTimerCompletionState           ; $6c5f: $cd $c8 $7c
    ld a, [rInputButtonsPressed]                  ; $6c62: $fa $1e $c3
    and $08                                       ; $6c65: $e6 $08
    jr z, jr_001_6c76                             ; $6c67: $28 $0d

    ld c, $10                                     ; $6c69: $0e $10
    ld a, $02                                     ; $6c6b: $3e $02
    call CallSoundEffectDispatcher                ; $6c6d: $cd $b6 $03
    ld a, $05                                     ; $6c70: $3e $05
    ld [rStatePhase_Current], a                   ; $6c72: $ea $35 $d6
    ret                                           ; $6c75: $c9


jr_001_6c76:
    ld a, [rPuzzleFlowVariant_Unsure]             ; $6c76: $fa $05 $d8
    and a                                         ; $6c79: $a7
    jr z, jr_001_6cde                             ; $6c7a: $28 $62

    call GS04_LoadPicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $6c7c: $cd $a2 $49
    call GS04_UpdateSelectedPicrossCoursePuzzleClearStatusAndTimes; $6c7f: $cd $ef $4c
    call RefreshSaveValidationChecksumsAndMirrors ; $6c82: $cd $1f $1b
    ld c, $00                                     ; $6c85: $0e $00
    ld a, $01                                     ; $6c87: $3e $01
    call CallSoundEffectDispatcher                ; $6c89: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $6c8c: $cd $99 $03
    ld c, $09                                     ; $6c8f: $0e $09
    ld a, $01                                     ; $6c91: $3e $01
    call CallSoundEffectDispatcher                ; $6c93: $cd $b6 $03
    call ClearShadowOAMBuffer                     ; $6c96: $cd $b6 $05
    call RedrawPuzzleBoard                        ; $6c99: $cd $35 $76

jr_001_6c9c:
    rst RST_08                                    ; $6c9c: $cf
    ld a, [rInputButtonsPressed]                  ; $6c9d: $fa $1e $c3
    and $09                                       ; $6ca0: $e6 $09
    jr z, jr_001_6c9c                             ; $6ca2: $28 $f8

    ld c, $03                                     ; $6ca4: $0e $03
    ld a, $02                                     ; $6ca6: $3e $02
    call CallSoundEffectDispatcher                ; $6ca8: $cd $b6 $03
    call Call_001_76a9                            ; $6cab: $cd $a9 $76
    ld c, $00                                     ; $6cae: $0e $00
    ld a, $01                                     ; $6cb0: $3e $01
    call CallSoundEffectDispatcher                ; $6cb2: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $6cb5: $cd $99 $03
    ld c, $00                                     ; $6cb8: $0e $00
    ld a, $01                                     ; $6cba: $3e $01
    call CallSoundEffectDispatcher                ; $6cbc: $cd $b6 $03
    call Call_000_1a45                            ; $6cbf: $cd $45 $1a
    ld bc, $0004                                  ; $6cc2: $01 $04 $00
    call DelayFramesByBC                          ; $6cc5: $cd $fa $05
    ld c, $00                                     ; $6cc8: $0e $00
    ld a, $01                                     ; $6cca: $3e $01
    call CallSoundEffectDispatcher                ; $6ccc: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $6ccf: $cd $99 $03
    ld c, $12                                     ; $6cd2: $0e $12
    ld a, $01                                     ; $6cd4: $3e $01
    call CallSoundEffectDispatcher                ; $6cd6: $cd $b6 $03
    ld hl, rStatePhase_Current                    ; $6cd9: $21 $35 $d6
    inc [hl]                                      ; $6cdc: $34
    ret                                           ; $6cdd: $c9


jr_001_6cde:
    ld a, [rPuzzleTimerCompletionState]           ; $6cde: $fa $06 $d8
    and a                                         ; $6ce1: $a7
    ret z                                         ; $6ce2: $c8

    ld c, $00                                     ; $6ce3: $0e $00
    ld a, $01                                     ; $6ce5: $3e $01
    call CallSoundEffectDispatcher                ; $6ce7: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $6cea: $cd $99 $03
    ld c, $08                                     ; $6ced: $0e $08
    ld a, $01                                     ; $6cef: $3e $01
    call CallSoundEffectDispatcher                ; $6cf1: $cd $b6 $03
    call ClearShadowOAMBuffer                     ; $6cf4: $cd $b6 $05
    call LoadGameOverMessageTileData              ; $6cf7: $cd $e3 $7c
    ld hl, rStatePhase_Current                    ; $6cfa: $21 $35 $d6
    inc [hl]                                      ; $6cfd: $34
    ret                                           ; $6cfe: $c9


GS0A_StatePhase_04_TODO::
    ld a, [rInputButtonsPressed]                  ; $6cff: $fa $1e $c3
    and $09                                       ; $6d02: $e6 $09
    ret z                                         ; $6d04: $c8

    ld c, $03                                     ; $6d05: $0e $03
    ld a, $02                                     ; $6d07: $3e $02
    call CallSoundEffectDispatcher                ; $6d09: $cd $b6 $03
    ld bc, $003c                                  ; $6d0c: $01 $3c $00
    call DelayFramesByBC                          ; $6d0f: $cd $fa $05
    ld a, $05                                     ; $6d12: $3e $05
    call CallSoundEffectDispatcher                ; $6d14: $cd $b6 $03
    ld c, $00                                     ; $6d17: $0e $00
    ld a, $01                                     ; $6d19: $3e $01
    call CallSoundEffectDispatcher                ; $6d1b: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $6d1e: $cd $99 $03
    ld c, $00                                     ; $6d21: $0e $00
    ld a, $01                                     ; $6d23: $3e $01
    call CallSoundEffectDispatcher                ; $6d25: $cd $b6 $03
    ld b, $03                                     ; $6d28: $06 $03
    ld hl, $469f                                  ; $6d2a: $21 $9f $46
    ld c, $00                                     ; $6d2d: $0e $00
    ld de, $0013                                  ; $6d2f: $11 $13 $00
    call PlayScreenTransitionFadeOut              ; $6d32: $cd $4e $04
    call DisableLCDAtVBlank                       ; $6d35: $cd $83 $04
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $6d38: $21 $37 $c3
    res 6, [hl]                                   ; $6d3b: $cb $b6
    ld hl, rIE                                    ; $6d3d: $21 $ff $ff
    res 1, [hl]                                   ; $6d40: $cb $8e
    xor a                                         ; $6d42: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $6d43: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $6d46: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $6d49: $ea $50 $c3
    ld a, $04                                     ; $6d4c: $3e $04
    ld [rStatePhase_Current], a                   ; $6d4e: $ea $35 $d6
    ld a, $04                                     ; $6d51: $3e $04
    ld [rGameState_Current], a                    ; $6d53: $ea $34 $d6
    ret                                           ; $6d56: $c9


GS0A_StatePhase_05_TODO::
    call ClearShadowOAMBuffer                     ; $6d57: $cd $b6 $05
    rst RST_08                                    ; $6d5a: $cf
    xor a                                         ; $6d5b: $af
    ld [$d83a], a                                 ; $6d5c: $ea $3a $d8
    ld a, $01                                     ; $6d5f: $3e $01
    ld [$d83b], a                                 ; $6d61: $ea $3b $d8
    ld a, [rSelectedSaveSlotIndex]                ; $6d64: $fa $65 $a0
    ld c, a                                       ; $6d67: $4f
    ld b, $00                                     ; $6d68: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $6d6a: $21 $8d $a3
    add hl, bc                                    ; $6d6d: $09
    ld a, [rSelectedSaveSlotIndex]                ; $6d6e: $fa $65 $a0
    ld c, a                                       ; $6d71: $4f
    sla a                                         ; $6d72: $cb $27
    sla a                                         ; $6d74: $cb $27
    add c                                         ; $6d76: $81
    add [hl]                                      ; $6d77: $86
    ld c, a                                       ; $6d78: $4f
    ld hl, $a06a                                  ; $6d79: $21 $6a $a0
    add hl, bc                                    ; $6d7c: $09
    ld a, [hl]                                    ; $6d7d: $7e
    ld [$d83c], a                                 ; $6d7e: $ea $3c $d8
    ld a, $01                                     ; $6d81: $3e $01
    ld [$d83d], a                                 ; $6d83: $ea $3d $d8
    ld a, $06                                     ; $6d86: $3e $06
    ld hl, $7a00                                  ; $6d88: $21 $00 $7a
    ld de, $8500                                  ; $6d8b: $11 $00 $85
    ld bc, .CheckAllFaceButtonsHeldCombo          ; $6d8e: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $6d91: $cd $38 $05
    call Call_001_70a1                            ; $6d94: $cd $a1 $70
    ld hl, rStatePhase_Current                    ; $6d97: $21 $35 $d6
    inc [hl]                                      ; $6d9a: $34
    ret                                           ; $6d9b: $c9


GS0A_StatePhase_06_TODO::
    ld b, $02                                     ; $6d9c: $06 $02
    ld hl, $4632                                  ; $6d9e: $21 $32 $46
    call SwitchBankToBAndJumpToHL                 ; $6da1: $cd $de $05
    ld a, [rInputButtonsPressed]                  ; $6da4: $fa $1e $c3
    bit 0, a                                      ; $6da7: $cb $47
    jr z, jr_001_6dc1                             ; $6da9: $28 $16

    ld c, $03                                     ; $6dab: $0e $03
    ld a, $02                                     ; $6dad: $3e $02
    call CallSoundEffectDispatcher                ; $6daf: $cd $b6 $03
    ld a, [$d83a]                                 ; $6db2: $fa $3a $d8
    ld c, a                                       ; $6db5: $4f
    ld b, $00                                     ; $6db6: $06 $00
    ld hl, GS0A_StatePhase_06_TODO_Data           ; $6db8: $21 $d1 $6d
    add hl, bc                                    ; $6dbb: $09
    ld a, [hl]                                    ; $6dbc: $7e
    ld [rStatePhase_Current], a                   ; $6dbd: $ea $35 $d6
    ret                                           ; $6dc0: $c9


jr_001_6dc1:
    bit 3, a                                      ; $6dc1: $cb $5f
    ret z                                         ; $6dc3: $c8

    ld c, $04                                     ; $6dc4: $0e $04
    ld a, $02                                     ; $6dc6: $3e $02
    call CallSoundEffectDispatcher                ; $6dc8: $cd $b6 $03
    ld a, $0a                                     ; $6dcb: $3e $0a
    ld [rStatePhase_Current], a                   ; $6dcd: $ea $35 $d6
    ret                                           ; $6dd0: $c9


GS0A_StatePhase_06_TODO_Data::
    db $07, $09, $08

GS0A_StatePhase_07_TODO::
    ld b, $02                                     ; $6dd4: $06 $02
    ld hl, $4672                                  ; $6dd6: $21 $72 $46
    call SwitchBankToBAndJumpToHL                 ; $6dd9: $cd $de $05
    ld a, [rInputButtonsPressed]                  ; $6ddc: $fa $1e $c3
    and $01                                       ; $6ddf: $e6 $01
    ret z                                         ; $6de1: $c8

    ld c, $04                                     ; $6de2: $0e $04
    ld a, $02                                     ; $6de4: $3e $02
    call CallSoundEffectDispatcher                ; $6de6: $cd $b6 $03
    ld a, [$d83b]                                 ; $6de9: $fa $3b $d8
    and a                                         ; $6dec: $a7
    jr z, jr_001_6df5                             ; $6ded: $28 $06

    ld a, $06                                     ; $6def: $3e $06
    ld [rStatePhase_Current], a                   ; $6df1: $ea $35 $d6
    ret                                           ; $6df4: $c9


jr_001_6df5:
    call Call_000_1c14                            ; $6df5: $cd $14 $1c
    ld a, $02                                     ; $6df8: $3e $02
    ld [rContinueSavedGameFlowMode_Unsure], a     ; $6dfa: $ea $a2 $ac
    ld c, $03                                     ; $6dfd: $0e $03
    ld a, $02                                     ; $6dff: $3e $02
    call CallSoundEffectDispatcher                ; $6e01: $cd $b6 $03
    ld bc, $003c                                  ; $6e04: $01 $3c $00
    call DelayFramesByBC                          ; $6e07: $cd $fa $05
    ld a, $05                                     ; $6e0a: $3e $05
    call CallSoundEffectDispatcher                ; $6e0c: $cd $b6 $03
    ld c, $00                                     ; $6e0f: $0e $00
    ld a, $01                                     ; $6e11: $3e $01
    call CallSoundEffectDispatcher                ; $6e13: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $6e16: $cd $99 $03
    ld c, $00                                     ; $6e19: $0e $00
    ld a, $01                                     ; $6e1b: $3e $01
    call CallSoundEffectDispatcher                ; $6e1d: $cd $b6 $03
    ld b, $03                                     ; $6e20: $06 $03
    ld hl, $469f                                  ; $6e22: $21 $9f $46
    ld c, $00                                     ; $6e25: $0e $00
    ld de, $0013                                  ; $6e27: $11 $13 $00
    call PlayScreenTransitionFadeOut              ; $6e2a: $cd $4e $04
    call DisableLCDAtVBlank                       ; $6e2d: $cd $83 $04
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $6e30: $21 $37 $c3
    res 6, [hl]                                   ; $6e33: $cb $b6
    ld hl, rIE                                    ; $6e35: $21 $ff $ff
    res 1, [hl]                                   ; $6e38: $cb $8e
    xor a                                         ; $6e3a: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $6e3b: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $6e3e: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $6e41: $ea $50 $c3
    ld a, [rSelectedSaveSlotIndex]                ; $6e44: $fa $65 $a0
    ld c, a                                       ; $6e47: $4f
    ld b, $00                                     ; $6e48: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $6e4a: $21 $8d $a3
    add hl, bc                                    ; $6e4d: $09
    ld a, [rSelectedSaveSlotIndex]                ; $6e4e: $fa $65 $a0
    ld c, a                                       ; $6e51: $4f
    sla a                                         ; $6e52: $cb $27
    sla a                                         ; $6e54: $cb $27
    add c                                         ; $6e56: $81
    add [hl]                                      ; $6e57: $86
    ld c, a                                       ; $6e58: $4f
    ld hl, $a06a                                  ; $6e59: $21 $6a $a0
    add hl, bc                                    ; $6e5c: $09
    ld a, [$d83c]                                 ; $6e5d: $fa $3c $d8
    ld [hl], a                                    ; $6e60: $77
    ld a, $04                                     ; $6e61: $3e $04
    ld [rStatePhase_Current], a                   ; $6e63: $ea $35 $d6
    ld a, $00                                     ; $6e66: $3e $00
    ld [rGameState_Current], a                    ; $6e68: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $6e6b: $c3 $1f $1b


GS0A_StatePhase_08_TODO::
    ld b, $02                                     ; $6e6e: $06 $02
    ld hl, $46b2                                  ; $6e70: $21 $b2 $46
    call SwitchBankToBAndJumpToHL                 ; $6e73: $cd $de $05
    ld a, [rInputButtonsPressed]                  ; $6e76: $fa $1e $c3
    and $01                                       ; $6e79: $e6 $01
    ret z                                         ; $6e7b: $c8

    ld c, $04                                     ; $6e7c: $0e $04
    ld a, $02                                     ; $6e7e: $3e $02
    call CallSoundEffectDispatcher                ; $6e80: $cd $b6 $03
    ld a, $06                                     ; $6e83: $3e $06
    ld [rStatePhase_Current], a                   ; $6e85: $ea $35 $d6
    ret                                           ; $6e88: $c9


GS0A_StatePhase_09_TODO::
    ld b, $02                                     ; $6e89: $06 $02
    ld hl, $470f                                  ; $6e8b: $21 $0f $47
    call SwitchBankToBAndJumpToHL                 ; $6e8e: $cd $de $05
    ld a, [rInputButtonsPressed]                  ; $6e91: $fa $1e $c3
    and $01                                       ; $6e94: $e6 $01
    ret z                                         ; $6e96: $c8

    ld c, $04                                     ; $6e97: $0e $04
    ld a, $02                                     ; $6e99: $3e $02
    call CallSoundEffectDispatcher                ; $6e9b: $cd $b6 $03
    ld a, [$d83d]                                 ; $6e9e: $fa $3d $d8
    and a                                         ; $6ea1: $a7
    jr z, jr_001_6eaa                             ; $6ea2: $28 $06

    ld a, $06                                     ; $6ea4: $3e $06
    ld [rStatePhase_Current], a                   ; $6ea6: $ea $35 $d6
    ret                                           ; $6ea9: $c9


jr_001_6eaa:
    ld a, $01                                     ; $6eaa: $3e $01
    ld [rPuzzleTimerCompletionState], a           ; $6eac: $ea $06 $d8
    ld c, $00                                     ; $6eaf: $0e $00
    ld a, $01                                     ; $6eb1: $3e $01
    call CallSoundEffectDispatcher                ; $6eb3: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $6eb6: $cd $99 $03
    ld c, $08                                     ; $6eb9: $0e $08
    ld a, $01                                     ; $6ebb: $3e $01
    call CallSoundEffectDispatcher                ; $6ebd: $cd $b6 $03
    call ClearShadowOAMBuffer                     ; $6ec0: $cd $b6 $05
    call LoadGameOverMessageTileData              ; $6ec3: $cd $e3 $7c
    ld a, [rSelectedSaveSlotIndex]                ; $6ec6: $fa $65 $a0
    ld c, a                                       ; $6ec9: $4f
    ld b, $00                                     ; $6eca: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $6ecc: $21 $8d $a3
    add hl, bc                                    ; $6ecf: $09
    ld a, [rSelectedSaveSlotIndex]                ; $6ed0: $fa $65 $a0
    ld c, a                                       ; $6ed3: $4f
    sla a                                         ; $6ed4: $cb $27
    sla a                                         ; $6ed6: $cb $27
    add c                                         ; $6ed8: $81
    add [hl]                                      ; $6ed9: $86
    ld c, a                                       ; $6eda: $4f
    ld hl, $a06a                                  ; $6edb: $21 $6a $a0
    add hl, bc                                    ; $6ede: $09
    ld a, [$d83c]                                 ; $6edf: $fa $3c $d8
    ld [hl], a                                    ; $6ee2: $77
    ld a, $04                                     ; $6ee3: $3e $04
    ld [rStatePhase_Current], a                   ; $6ee5: $ea $35 $d6
    xor a                                         ; $6ee8: $af
    ld [rContinueSavedGameFlowMode_Unsure], a     ; $6ee9: $ea $a2 $ac
    jp RefreshSaveValidationChecksumsAndMirrors   ; $6eec: $c3 $1f $1b


GS0A_StatePhase_0a_TODO::
    call ClearShadowOAMBuffer                     ; $6eef: $cd $b6 $05
    rst RST_08                                    ; $6ef2: $cf
    ld a, [rSelectedSaveSlotIndex]                ; $6ef3: $fa $65 $a0
    ld c, a                                       ; $6ef6: $4f
    ld b, $00                                     ; $6ef7: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $6ef9: $21 $8d $a3
    add hl, bc                                    ; $6efc: $09
    ld a, [rSelectedSaveSlotIndex]                ; $6efd: $fa $65 $a0
    ld c, a                                       ; $6f00: $4f
    sla a                                         ; $6f01: $cb $27
    sla a                                         ; $6f03: $cb $27
    add c                                         ; $6f05: $81
    add [hl]                                      ; $6f06: $86
    ld c, a                                       ; $6f07: $4f
    ld hl, $a06a                                  ; $6f08: $21 $6a $a0
    add hl, bc                                    ; $6f0b: $09
    ld a, [$d83c]                                 ; $6f0c: $fa $3c $d8
    ld [hl], a                                    ; $6f0f: $77
    ld a, $06                                     ; $6f10: $3e $06
    ld hl, $4500                                  ; $6f12: $21 $00 $45
    ld de, $8500                                  ; $6f15: $11 $00 $85
    ld bc, .CheckAllFaceButtonsHeldCombo          ; $6f18: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $6f1b: $cd $38 $05
    call DrawClueNumbersFromRunLengthBuffers      ; $6f1e: $cd $b9 $6f
    call RenderPuzzleTimerDigits                  ; $6f21: $cd $04 $7c
    ld a, $03                                     ; $6f24: $3e $03
    ld [rStatePhase_Current], a                   ; $6f26: $ea $35 $d6
    xor a                                         ; $6f29: $af
    ld [rContinueSavedGameFlowMode_Unsure], a     ; $6f2a: $ea $a2 $ac
    jp RefreshSaveValidationChecksumsAndMirrors   ; $6f2d: $c3 $1f $1b


BuildClueRunLengthBuffers::
    call BuildHorizontalClueRunLengthBuffer       ; $6f30: $cd $37 $6f
    call BuildVerticalClueRunLengthBuffer         ; $6f33: $cd $6c $6f
    ret                                           ; $6f36: $c9


BuildHorizontalClueRunLengthBuffer::
    ld hl, rPuzzleCellStateBufferEnd              ; $6f37: $21 $3f $d7
    ld de, rClueRunLengthHorizontalBufferBuildBase; $6f3a: $11 $99 $d7
    ld c, $10                                     ; $6f3d: $0e $10

.HorizontalRunLength_InitLine:
    push de                                       ; $6f3f: $d5
    xor a                                         ; $6f40: $af
    ld b, $06                                     ; $6f41: $06 $06

.HorizontalRunLength_ClearSixSlotsLoop:
    inc de                                        ; $6f43: $13
    ld [de], a                                    ; $6f44: $12
    dec b                                         ; $6f45: $05
    jr nz, .HorizontalRunLength_ClearSixSlotsLoop ; $6f46: $20 $fb

    ld b, $10                                     ; $6f48: $06 $10

.HorizontalRunLength_ScanBitsLoop:
    bit 0, [hl]                                   ; $6f4a: $cb $46
    jr z, .HorizontalRunLength_AdvanceBitLoop     ; $6f4c: $28 $0c

    xor a                                         ; $6f4e: $af

.HorizontalRunLength_CountFilledRunLoop:
    inc a                                         ; $6f4f: $3c
    dec hl                                        ; $6f50: $2b
    dec b                                         ; $6f51: $05
    jr z, .HorizontalRunLength_StoreTerminalRun   ; $6f52: $28 $0c

    bit 0, [hl]                                   ; $6f54: $cb $46
    jr nz, .HorizontalRunLength_CountFilledRunLoop; $6f56: $20 $f7

    ld [de], a                                    ; $6f58: $12
    dec de                                        ; $6f59: $1b

.HorizontalRunLength_AdvanceBitLoop:
    dec hl                                        ; $6f5a: $2b
    dec b                                         ; $6f5b: $05
    jr nz, .HorizontalRunLength_ScanBitsLoop      ; $6f5c: $20 $ec

    jr .HorizontalRunLength_NextLine              ; $6f5e: $18 $01

.HorizontalRunLength_StoreTerminalRun:
    ld [de], a                                    ; $6f60: $12

.HorizontalRunLength_NextLine:
    pop de                                        ; $6f61: $d1
    dec de                                        ; $6f62: $1b
    dec de                                        ; $6f63: $1b
    dec de                                        ; $6f64: $1b
    dec de                                        ; $6f65: $1b
    dec de                                        ; $6f66: $1b
    dec de                                        ; $6f67: $1b
    dec c                                         ; $6f68: $0d
    jr nz, .HorizontalRunLength_InitLine          ; $6f69: $20 $d4

    ret                                           ; $6f6b: $c9


BuildVerticalClueRunLengthBuffer::
    ld hl, rPuzzleCellStateBufferEnd              ; $6f6c: $21 $3f $d7
    ld de, rClueRunLengthVerticalBufferBuildBase  ; $6f6f: $11 $f9 $d7
    ld c, $10                                     ; $6f72: $0e $10

.VerticalRunLength_InitLine:
    push de                                       ; $6f74: $d5
    xor a                                         ; $6f75: $af
    ld b, $06                                     ; $6f76: $06 $06

.VerticalRunLength_ClearSixSlotsLoop:
    inc de                                        ; $6f78: $13
    ld [de], a                                    ; $6f79: $12
    dec b                                         ; $6f7a: $05
    jr nz, .VerticalRunLength_ClearSixSlotsLoop   ; $6f7b: $20 $fb

    ld b, $10                                     ; $6f7d: $06 $10

.VerticalRunLength_ScanBitsLoop:
    bit 0, [hl]                                   ; $6f7f: $cb $46
    jr z, .VerticalRunLength_AdvanceBitLoop       ; $6f81: $28 $15

    xor a                                         ; $6f83: $af

.VerticalRunLength_CountFilledRunLoop:
    inc a                                         ; $6f84: $3c
    push af                                       ; $6f85: $f5
    ld a, l                                       ; $6f86: $7d
    sub $10                                       ; $6f87: $d6 $10
    ld l, a                                       ; $6f89: $6f
    ld a, h                                       ; $6f8a: $7c
    sbc $00                                       ; $6f8b: $de $00
    ld h, a                                       ; $6f8d: $67
    pop af                                        ; $6f8e: $f1
    dec b                                         ; $6f8f: $05
    jr z, .VerticalRunLength_StoreTerminalRun     ; $6f90: $28 $13

    bit 0, [hl]                                   ; $6f92: $cb $46
    jr nz, .VerticalRunLength_CountFilledRunLoop  ; $6f94: $20 $ee

    ld [de], a                                    ; $6f96: $12
    dec de                                        ; $6f97: $1b

.VerticalRunLength_AdvanceBitLoop:
    ld a, l                                       ; $6f98: $7d
    sub $10                                       ; $6f99: $d6 $10
    ld l, a                                       ; $6f9b: $6f
    ld a, h                                       ; $6f9c: $7c
    sbc $00                                       ; $6f9d: $de $00
    ld h, a                                       ; $6f9f: $67
    dec b                                         ; $6fa0: $05
    jr nz, .VerticalRunLength_ScanBitsLoop        ; $6fa1: $20 $dc

    jr .VerticalRunLength_NextLine                ; $6fa3: $18 $01

.VerticalRunLength_StoreTerminalRun:
    ld [de], a                                    ; $6fa5: $12

.VerticalRunLength_NextLine:
    ld a, l                                       ; $6fa6: $7d
    add $ff                                       ; $6fa7: $c6 $ff
    ld l, a                                       ; $6fa9: $6f
    ld a, h                                       ; $6faa: $7c
    adc $00                                       ; $6fab: $ce $00
    ld h, a                                       ; $6fad: $67
    pop de                                        ; $6fae: $d1
    dec de                                        ; $6faf: $1b
    dec de                                        ; $6fb0: $1b
    dec de                                        ; $6fb1: $1b
    dec de                                        ; $6fb2: $1b
    dec de                                        ; $6fb3: $1b
    dec de                                        ; $6fb4: $1b
    dec c                                         ; $6fb5: $0d
    jr nz, .VerticalRunLength_InitLine            ; $6fb6: $20 $bc

    ret                                           ; $6fb8: $c9


DrawClueNumbersFromRunLengthBuffers::
    call DrawClueNumbersHorizontalPass            ; $6fb9: $cd $c0 $6f
    call DrawClueNumbersVerticalPass              ; $6fbc: $cd $ed $6f
    ret                                           ; $6fbf: $c9


DrawClueNumbersHorizontalPass::
    ld hl, rClueRunLengthHorizontalBufferStart    ; $6fc0: $21 $40 $d7
    ld e, $00                                     ; $6fc3: $1e $00
    ld b, $32                                     ; $6fc5: $06 $32
    ld a, [rPuzzleGridHeight]                     ; $6fc7: $fa $01 $d8

.HorizontalPass_RowLoop:
    push af                                       ; $6fca: $f5
    ld c, $09                                     ; $6fcb: $0e $09

.HorizontalPass_ColumnLoop:
    ld a, [hl+]                                   ; $6fcd: $2a
    and a                                         ; $6fce: $a7
    jr z, .HorizontalPass_NextColumn              ; $6fcf: $28 $03

    call PrepareBGTileCopyForClueDigit            ; $6fd1: $cd $1b $70

.HorizontalPass_NextColumn:
    ld a, c                                       ; $6fd4: $79
    add $07                                       ; $6fd5: $c6 $07
    ld c, a                                       ; $6fd7: $4f
    cp $2c                                        ; $6fd8: $fe $2c
    jr nz, .HorizontalPass_ColumnLoop             ; $6fda: $20 $f1

    ld a, [hl+]                                   ; $6fdc: $2a
    call PrepareBGTileCopyForClueDigit            ; $6fdd: $cd $1b $70
    ld a, e                                       ; $6fe0: $7b
    xor $ff                                       ; $6fe1: $ee $ff
    ld e, a                                       ; $6fe3: $5f
    ld a, b                                       ; $6fe4: $78
    add $06                                       ; $6fe5: $c6 $06
    ld b, a                                       ; $6fe7: $47
    pop af                                        ; $6fe8: $f1
    dec a                                         ; $6fe9: $3d
    jr nz, .HorizontalPass_RowLoop                ; $6fea: $20 $de

    ret                                           ; $6fec: $c9


DrawClueNumbersVerticalPass::
    ld hl, rClueRunLengthVerticalBufferStart      ; $6fed: $21 $a0 $d7
    ld e, $00                                     ; $6ff0: $1e $00
    ld c, $3a                                     ; $6ff2: $0e $3a
    ld a, [rPuzzleGridWidth]                      ; $6ff4: $fa $00 $d8

.VerticalPass_ColumnLoop:
    push af                                       ; $6ff7: $f5
    ld b, $08                                     ; $6ff8: $06 $08
    ld a, [hl+]                                   ; $6ffa: $2a

.VerticalPass_RowLoop:
    ld a, [hl+]                                   ; $6ffb: $2a
    and a                                         ; $6ffc: $a7
    jr z, .VerticalPass_NextRow                   ; $6ffd: $28 $03

    call PrepareBGTileCopyForClueDigit            ; $6fff: $cd $1b $70

.VerticalPass_NextRow:
    ld a, b                                       ; $7002: $78
    add $07                                       ; $7003: $c6 $07
    ld b, a                                       ; $7005: $47
    cp $24                                        ; $7006: $fe $24
    jr nz, .VerticalPass_RowLoop                  ; $7008: $20 $f1

    ld a, [hl+]                                   ; $700a: $2a
    call PrepareBGTileCopyForClueDigit            ; $700b: $cd $1b $70
    ld a, e                                       ; $700e: $7b
    xor $ff                                       ; $700f: $ee $ff
    ld e, a                                       ; $7011: $5f
    ld a, c                                       ; $7012: $79
    add $06                                       ; $7013: $c6 $06
    ld c, a                                       ; $7015: $4f
    pop af                                        ; $7016: $f1
    dec a                                         ; $7017: $3d
    jr nz, .VerticalPass_ColumnLoop               ; $7018: $20 $dd

    ret                                           ; $701a: $c9


PrepareBGTileCopyForClueDigit::
    push bc                                       ; $701b: $c5
    push de                                       ; $701c: $d5
    push hl                                       ; $701d: $e5
    push af                                       ; $701e: $f5
    ld a, c                                       ; $701f: $79
    ld [rBGTileCopySourceX], a                    ; $7020: $ea $51 $c3
    add $05                                       ; $7023: $c6 $05
    ld [rBGTileCopyDestX], a                      ; $7025: $ea $53 $c3
    ld a, b                                       ; $7028: $78
    ld [rBGTileCopySourceY], a                    ; $7029: $ea $52 $c3
    add $05                                       ; $702c: $c6 $05
    ld [rBGTileCopyDestY], a                      ; $702e: $ea $54 $c3
    pop af                                        ; $7031: $f1
    sla a                                         ; $7032: $cb $27
    ld c, a                                       ; $7034: $4f
    ld b, $00                                     ; $7035: $06 $00
    ld a, e                                       ; $7037: $7b
    and a                                         ; $7038: $a7
    jr nz, .UseGrayBGClueDigitSourceTable         ; $7039: $20 $0e

    ld hl, ClueDigitTileSourceTableWhiteBG        ; $703b: $21 $61 $70
    add hl, bc                                    ; $703e: $09
    ld a, [hl+]                                   ; $703f: $2a
    ld [rBGTileCopyBankAddressLow], a             ; $7040: $ea $55 $c3
    ld a, [hl+]                                   ; $7043: $2a
    ld [rBGTileCopyBankAddressHigh], a            ; $7044: $ea $56 $c3
    jr .ApplyClueDigitTileCopy                    ; $7047: $18 $0c

.UseGrayBGClueDigitSourceTable:
    ld hl, ClueDigitTileSourceTableGrayBG         ; $7049: $21 $81 $70
    add hl, bc                                    ; $704c: $09
    ld a, [hl+]                                   ; $704d: $2a
    ld [rBGTileCopyBankAddressLow], a             ; $704e: $ea $55 $c3
    ld a, [hl+]                                   ; $7051: $2a
    ld [rBGTileCopyBankAddressHigh], a            ; $7052: $ea $56 $c3

.ApplyClueDigitTileCopy:
    ld a, $06                                     ; $7055: $3e $06
    ld [rBGTileCopyBank], a                       ; $7057: $ea $57 $c3
    call PrepareBGTileCopy                        ; $705a: $cd $b3 $08
    pop hl                                        ; $705d: $e1
    pop de                                        ; $705e: $d1
    pop bc                                        ; $705f: $c1
    ret                                           ; $7060: $c9


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

Call_001_70a1:
    call Call_001_70a8                            ; $70a1: $cd $a8 $70
    call Call_001_70d5                            ; $70a4: $cd $d5 $70
    ret                                           ; $70a7: $c9


Call_001_70a8:
    ld hl, rClueRunLengthHorizontalBufferStart    ; $70a8: $21 $40 $d7
    ld e, $00                                     ; $70ab: $1e $00
    ld b, $32                                     ; $70ad: $06 $32
    ld a, [rPuzzleGridHeight]                     ; $70af: $fa $01 $d8

jr_001_70b2:
    push af                                       ; $70b2: $f5
    ld c, $09                                     ; $70b3: $0e $09

jr_001_70b5:
    ld a, [hl+]                                   ; $70b5: $2a
    and a                                         ; $70b6: $a7
    jr z, jr_001_70bc                             ; $70b7: $28 $03

    call Call_001_7103                            ; $70b9: $cd $03 $71

jr_001_70bc:
    ld a, c                                       ; $70bc: $79
    add $07                                       ; $70bd: $c6 $07
    ld c, a                                       ; $70bf: $4f
    cp $2c                                        ; $70c0: $fe $2c
    jr nz, jr_001_70b5                            ; $70c2: $20 $f1

    ld a, [hl+]                                   ; $70c4: $2a
    call Call_001_7103                            ; $70c5: $cd $03 $71
    ld a, e                                       ; $70c8: $7b
    xor $ff                                       ; $70c9: $ee $ff
    ld e, a                                       ; $70cb: $5f
    ld a, b                                       ; $70cc: $78
    add $06                                       ; $70cd: $c6 $06
    ld b, a                                       ; $70cf: $47
    pop af                                        ; $70d0: $f1
    dec a                                         ; $70d1: $3d
    jr nz, jr_001_70b2                            ; $70d2: $20 $de

    ret                                           ; $70d4: $c9


Call_001_70d5:
    ld hl, rClueRunLengthVerticalBufferStart      ; $70d5: $21 $a0 $d7
    ld e, $00                                     ; $70d8: $1e $00
    ld c, $3a                                     ; $70da: $0e $3a
    ld a, [rPuzzleGridWidth]                      ; $70dc: $fa $00 $d8

jr_001_70df:
    push af                                       ; $70df: $f5
    ld b, $08                                     ; $70e0: $06 $08
    ld a, [hl+]                                   ; $70e2: $2a

jr_001_70e3:
    ld a, [hl+]                                   ; $70e3: $2a
    and a                                         ; $70e4: $a7
    jr z, jr_001_70ea                             ; $70e5: $28 $03

    call Call_001_7103                            ; $70e7: $cd $03 $71

jr_001_70ea:
    ld a, b                                       ; $70ea: $78
    add $07                                       ; $70eb: $c6 $07
    ld b, a                                       ; $70ed: $47
    cp $24                                        ; $70ee: $fe $24
    jr nz, jr_001_70e3                            ; $70f0: $20 $f1

    ld a, [hl+]                                   ; $70f2: $2a
    call Call_001_7103                            ; $70f3: $cd $03 $71
    ld a, e                                       ; $70f6: $7b
    xor $ff                                       ; $70f7: $ee $ff
    ld e, a                                       ; $70f9: $5f
    ld a, c                                       ; $70fa: $79
    add $06                                       ; $70fb: $c6 $06
    ld c, a                                       ; $70fd: $4f
    pop af                                        ; $70fe: $f1
    dec a                                         ; $70ff: $3d
    jr nz, jr_001_70df                            ; $7100: $20 $dd

    ret                                           ; $7102: $c9


Call_001_7103:
    push bc                                       ; $7103: $c5
    push de                                       ; $7104: $d5
    push hl                                       ; $7105: $e5
    ld a, c                                       ; $7106: $79
    ld [rBGTileCopySourceX], a                    ; $7107: $ea $51 $c3
    add $05                                       ; $710a: $c6 $05
    ld [rBGTileCopyDestX], a                      ; $710c: $ea $53 $c3
    ld a, b                                       ; $710f: $78
    ld [rBGTileCopySourceY], a                    ; $7110: $ea $52 $c3
    add $05                                       ; $7113: $c6 $05
    ld [rBGTileCopyDestY], a                      ; $7115: $ea $54 $c3
    ld a, e                                       ; $7118: $7b
    and a                                         ; $7119: $a7
    jr nz, jr_001_7128                            ; $711a: $20 $0c

    ld a, $e0                                     ; $711c: $3e $e0
    ld [rBGTileCopyBankAddressLow], a             ; $711e: $ea $55 $c3
    ld a, $58                                     ; $7121: $3e $58
    ld [rBGTileCopyBankAddressHigh], a            ; $7123: $ea $56 $c3
    jr jr_001_7132                                ; $7126: $18 $0a

jr_001_7128:
    ld a, $f0                                     ; $7128: $3e $f0
    ld [rBGTileCopyBankAddressLow], a             ; $712a: $ea $55 $c3
    ld a, $58                                     ; $712d: $3e $58
    ld [rBGTileCopyBankAddressHigh], a            ; $712f: $ea $56 $c3

jr_001_7132:
    ld a, $06                                     ; $7132: $3e $06
    ld [rBGTileCopyBank], a                       ; $7134: $ea $57 $c3
    call PrepareBGTileCopy                        ; $7137: $cd $b3 $08
    pop hl                                        ; $713a: $e1
    pop de                                        ; $713b: $d1
    pop bc                                        ; $713c: $c1
    ret                                           ; $713d: $c9


DrawPuzzleCursorSpritesAndTickStepSequence::
    ld a, [rPuzzleCursorColumn]                   ; $713e: $fa $36 $d6
    ld e, a                                       ; $7141: $5f
    sla a                                         ; $7142: $cb $27
    add e                                         ; $7144: $83
    sla a                                         ; $7145: $cb $27
    ld b, a                                       ; $7147: $47
    ld a, [rPuzzleAndMenuCursorRow]               ; $7148: $fa $37 $d6
    ld e, a                                       ; $714b: $5f
    sla a                                         ; $714c: $cb $27
    add e                                         ; $714e: $83
    sla a                                         ; $714f: $cb $27
    ld c, a                                       ; $7151: $4f
    push bc                                       ; $7152: $c5
    ld a, b                                       ; $7153: $78
    add $3a                                       ; $7154: $c6 $3a
    ld b, a                                       ; $7156: $47
    ld c, $00                                     ; $7157: $0e $00
    ld a, [rVBlankFrameCounter]                   ; $7159: $fa $3a $c3
    srl a                                         ; $715c: $cb $3f
    srl a                                         ; $715e: $cb $3f
    srl a                                         ; $7160: $cb $3f
    and $01                                       ; $7162: $e6 $01
    add $03                                       ; $7164: $c6 $03
    call CopyOAMSpriteById                        ; $7166: $cd $ce $20
    pop bc                                        ; $7169: $c1
    push bc                                       ; $716a: $c5
    ld b, $00                                     ; $716b: $06 $00
    ld a, c                                       ; $716d: $79
    add $32                                       ; $716e: $c6 $32
    ld c, a                                       ; $7170: $4f
    ld a, [rVBlankFrameCounter]                   ; $7171: $fa $3a $c3
    srl a                                         ; $7174: $cb $3f
    srl a                                         ; $7176: $cb $3f
    srl a                                         ; $7178: $cb $3f
    and $01                                       ; $717a: $e6 $01
    add $05                                       ; $717c: $c6 $05
    call CopyOAMSpriteById                        ; $717e: $cd $ce $20
    pop bc                                        ; $7181: $c1
    jp TickMessageStepSequenceAndEmitSprite       ; $7182: $c3 $67 $79


DrawPuzzleCursorSprites::
    ld a, [rPuzzleCursorColumn]                   ; $7185: $fa $36 $d6
    ld e, a                                       ; $7188: $5f
    sla a                                         ; $7189: $cb $27
    add e                                         ; $718b: $83
    sla a                                         ; $718c: $cb $27
    ld b, a                                       ; $718e: $47
    ld a, [rPuzzleAndMenuCursorRow]               ; $718f: $fa $37 $d6
    ld e, a                                       ; $7192: $5f
    sla a                                         ; $7193: $cb $27
    add e                                         ; $7195: $83
    sla a                                         ; $7196: $cb $27
    ld c, a                                       ; $7198: $4f
    push bc                                       ; $7199: $c5
    ld a, b                                       ; $719a: $78
    add $3a                                       ; $719b: $c6 $3a
    ld b, a                                       ; $719d: $47
    ld c, $00                                     ; $719e: $0e $00
    ld a, [rVBlankFrameCounter]                   ; $71a0: $fa $3a $c3
    srl a                                         ; $71a3: $cb $3f
    srl a                                         ; $71a5: $cb $3f
    srl a                                         ; $71a7: $cb $3f
    and $01                                       ; $71a9: $e6 $01
    add $03                                       ; $71ab: $c6 $03
    call CopyOAMSpriteById                        ; $71ad: $cd $ce $20
    pop bc                                        ; $71b0: $c1
    push bc                                       ; $71b1: $c5
    ld b, $00                                     ; $71b2: $06 $00
    ld a, c                                       ; $71b4: $79
    add $32                                       ; $71b5: $c6 $32
    ld c, a                                       ; $71b7: $4f
    ld a, [rVBlankFrameCounter]                   ; $71b8: $fa $3a $c3
    srl a                                         ; $71bb: $cb $3f
    srl a                                         ; $71bd: $cb $3f
    srl a                                         ; $71bf: $cb $3f
    and $01                                       ; $71c1: $e6 $01
    add $05                                       ; $71c3: $c6 $05
    call CopyOAMSpriteById                        ; $71c5: $cd $ce $20
    pop bc                                        ; $71c8: $c1
    ret                                           ; $71c9: $c9


UpdatePuzzleCursorFromDirectionalInput::
    ld a, [rInputButtonsPressedOrRepeated]        ; $71ca: $fa $22 $c3
    and $f0                                       ; $71cd: $e6 $f0
    ret z                                         ; $71cf: $c8

    ld a, [rInputButtonsHeld]                     ; $71d0: $fa $1a $c3
    and $03                                       ; $71d3: $e6 $03
    jr nz, .CheckLeft                             ; $71d5: $20 $07

    ld c, $0b                                     ; $71d7: $0e $0b
    ld a, $02                                     ; $71d9: $3e $02
    call CallSoundEffectDispatcher                ; $71db: $cd $b6 $03

.CheckLeft:
    ld hl, rInputButtonsPressedOrRepeated         ; $71de: $21 $22 $c3
    bit 5, [hl]                                   ; $71e1: $cb $6e
    jr z, .CheckRight                             ; $71e3: $28 $0a

    ld a, [rPuzzleCursorColumn]                   ; $71e5: $fa $36 $d6
    and a                                         ; $71e8: $a7
    jr z, .CheckRight                             ; $71e9: $28 $04

    dec a                                         ; $71eb: $3d
    ld [rPuzzleCursorColumn], a                   ; $71ec: $ea $36 $d6

.CheckRight:
    bit 4, [hl]                                   ; $71ef: $cb $66
    jr z, .CheckUp                                ; $71f1: $28 $0e

    ld a, [rPuzzleGridWidth]                      ; $71f3: $fa $00 $d8
    ld c, a                                       ; $71f6: $4f
    ld a, [rPuzzleCursorColumn]                   ; $71f7: $fa $36 $d6
    inc a                                         ; $71fa: $3c
    cp c                                          ; $71fb: $b9
    jr z, .CheckUp                                ; $71fc: $28 $03

    ld [rPuzzleCursorColumn], a                   ; $71fe: $ea $36 $d6

.CheckUp:
    bit 6, [hl]                                   ; $7201: $cb $76
    jr z, .CheckDown                              ; $7203: $28 $0a

    ld a, [rPuzzleAndMenuCursorRow]               ; $7205: $fa $37 $d6
    and a                                         ; $7208: $a7
    jr z, .CheckDown                              ; $7209: $28 $04

    dec a                                         ; $720b: $3d
    ld [rPuzzleAndMenuCursorRow], a               ; $720c: $ea $37 $d6

.CheckDown:
    bit 7, [hl]                                   ; $720f: $cb $7e
    jr z, .Return                                 ; $7211: $28 $0e

    ld a, [rPuzzleGridHeight]                     ; $7213: $fa $01 $d8
    ld c, a                                       ; $7216: $4f
    ld a, [rPuzzleAndMenuCursorRow]               ; $7217: $fa $37 $d6
    inc a                                         ; $721a: $3c
    cp c                                          ; $721b: $b9
    jr z, .Return                                 ; $721c: $28 $03

    ld [rPuzzleAndMenuCursorRow], a               ; $721e: $ea $37 $d6

.Return:
    ret                                           ; $7221: $c9


ProcessPuzzleCellActionInput::
    ld a, [rInputButtonsHeld]                     ; $7222: $fa $1a $c3
    and $01                                       ; $7225: $e6 $01
    jr z, .ClearActionRepeatState                 ; $7227: $28 $07

    ld a, [rInputButtonsPressedOrRepeated]        ; $7229: $fa $22 $c3
    and $f0                                       ; $722c: $e6 $f0
    jr z, .LoadCursorCellAndTileState             ; $722e: $28 $04

.ClearActionRepeatState:
    xor a                                         ; $7230: $af
    ld [rPuzzleActionRepeatGuard], a              ; $7231: $ea $0f $d8

.LoadCursorCellAndTileState:
    ld a, [rPuzzleAndMenuCursorRow]               ; $7234: $fa $37 $d6
    sla a                                         ; $7237: $cb $27
    sla a                                         ; $7239: $cb $27
    sla a                                         ; $723b: $cb $27
    sla a                                         ; $723d: $cb $27
    ld hl, rPuzzleCursorColumn                    ; $723f: $21 $36 $d6
    add [hl]                                      ; $7242: $86
    ld c, a                                       ; $7243: $4f
    ld b, $00                                     ; $7244: $06 $00
    ld hl, $d640                                  ; $7246: $21 $40 $d6
    add hl, bc                                    ; $7249: $09
    push hl                                       ; $724a: $e5
    ld a, [rSelectedSaveSlotIndex]                ; $724b: $fa $65 $a0
    ld c, a                                       ; $724e: $4f
    ld b, $00                                     ; $724f: $06 $00
    ld hl, $a066                                  ; $7251: $21 $66 $a0
    add hl, bc                                    ; $7254: $09
    ld a, [hl]                                    ; $7255: $7e
    pop hl                                        ; $7256: $e1
    and a                                         ; $7257: $a7
    jp z, ProcessPuzzleCellActionInput_HandleFillActionInput; $7258: $ca $60 $72

    dec a                                         ; $725b: $3d
    jp z, ProcessPuzzleCellActionInput_HandleFillActionInput; $725c: $ca $60 $72

    ret                                           ; $725f: $c9


ProcessPuzzleCellActionInput_HandleFillActionInput::
    ld a, [rInputButtonsHeld]                     ; $7260: $fa $1a $c3
    and $01                                       ; $7263: $e6 $01
    jr z, .HandleMarkXActionInput                 ; $7265: $28 $23

    ld a, [rInputButtonsPressed]                  ; $7267: $fa $1e $c3
    and $01                                       ; $726a: $e6 $01
    jr z, .ApplyPendingFillAction                 ; $726c: $28 $12

    ld a, [hl]                                    ; $726e: $7e
    and $06                                       ; $726f: $e6 $06
    cp $02                                        ; $7271: $fe $02
    jr z, .ClearPendingFillAction                 ; $7273: $28 $07

    ld a, $01                                     ; $7275: $3e $01
    ld [rPuzzleCellPendingActionMode], a          ; $7277: $ea $04 $d8
    jr .ApplyPendingFillAction                    ; $727a: $18 $04

.ClearPendingFillAction:
    xor a                                         ; $727c: $af
    ld [rPuzzleCellPendingActionMode], a          ; $727d: $ea $04 $d8

.ApplyPendingFillAction:
    ld a, [rPuzzleCellPendingActionMode]          ; $7280: $fa $04 $d8
    and a                                         ; $7283: $a7
    jp z, ProcessPuzzleCellActionInput_ClearCellState; $7284: $ca $9a $74

    jp ProcessPuzzleCellActionInput_ApplyFillAction; $7287: $c3 $e5 $72


.HandleMarkXActionInput:
    ld a, [rInputButtonsHeld]                     ; $728a: $fa $1a $c3
    and $02                                       ; $728d: $e6 $02
    ret z                                         ; $728f: $c8

    ld a, [rInputButtonsPressed]                  ; $7290: $fa $1e $c3
    and $02                                       ; $7293: $e6 $02
    jr z, .ApplyPendingMarkXAction                ; $7295: $28 $12

    ld a, [hl]                                    ; $7297: $7e
    and $06                                       ; $7298: $e6 $06
    cp $04                                        ; $729a: $fe $04
    jr z, .ClearPendingMarkXAction                ; $729c: $28 $07

    ld a, $02                                     ; $729e: $3e $02
    ld [rPuzzleCellPendingActionMode], a          ; $72a0: $ea $04 $d8
    jr .ApplyPendingMarkXAction                   ; $72a3: $18 $04

.ClearPendingMarkXAction:
    xor a                                         ; $72a5: $af
    ld [rPuzzleCellPendingActionMode], a          ; $72a6: $ea $04 $d8

.ApplyPendingMarkXAction:
    ld a, [rPuzzleCellPendingActionMode]          ; $72a9: $fa $04 $d8
    and a                                         ; $72ac: $a7
    jp z, ProcessPuzzleCellActionInput_ClearCellState; $72ad: $ca $9a $74

    jp ProcessPuzzleCellActionInput_ApplyMarkXAction; $72b0: $c3 $1c $74


    ld a, [rInputButtonsHeld]                     ; $72b3: $fa $1a $c3
    and $03                                       ; $72b6: $e6 $03
    cp $03                                        ; $72b8: $fe $03
    jr z, .HandleDualHeldInputClearAction         ; $72ba: $28 $23

    ld a, [rPuzzleCellPendingActionMode]          ; $72bc: $fa $04 $d8
    and a                                         ; $72bf: $a7
    jr z, .RouteHeldInputToFillOrMarkX            ; $72c0: $28 $0a

    ld a, [rInputButtonsHeld]                     ; $72c2: $fa $1a $c3
    and $03                                       ; $72c5: $e6 $03
    ret nz                                        ; $72c7: $c0

    ld [rPuzzleCellPendingActionMode], a          ; $72c8: $ea $04 $d8
    ret                                           ; $72cb: $c9


.RouteHeldInputToFillOrMarkX:
    ld a, [rInputButtonsHeld]                     ; $72cc: $fa $1a $c3
    and $01                                       ; $72cf: $e6 $01
    jr z, .RouteHeldInputToMarkX                  ; $72d1: $28 $03

    jp ProcessPuzzleCellActionInput_ApplyFillAction; $72d3: $c3 $e5 $72


.RouteHeldInputToMarkX:
    ld a, [rInputButtonsHeld]                     ; $72d6: $fa $1a $c3
    and $02                                       ; $72d9: $e6 $02
    ret z                                         ; $72db: $c8

    jp ProcessPuzzleCellActionInput_ApplyMarkXAction; $72dc: $c3 $1c $74


.HandleDualHeldInputClearAction:
    ld [rPuzzleCellPendingActionMode], a          ; $72df: $ea $04 $d8
    jp ProcessPuzzleCellActionInput_ClearCellState; $72e2: $c3 $9a $74


ProcessPuzzleCellActionInput_ApplyFillAction::
    ld a, [hl]                                    ; $72e5: $7e
    and $06                                       ; $72e6: $e6 $06
    cp $02                                        ; $72e8: $fe $02
    ret z                                         ; $72ea: $c8

    bit 0, [hl]                                   ; $72eb: $cb $46
    jp nz, Jump_001_739f                          ; $72ed: $c2 $9f $73

    ld a, [rGameState_Current]                    ; $72f0: $fa $34 $d6
    cp $09                                        ; $72f3: $fe $09
    jp z, Jump_001_739f                           ; $72f5: $ca $9f $73

    ld a, [rPuzzleActionRepeatGuard]              ; $72f8: $fa $0f $d8
    and a                                         ; $72fb: $a7
    ret nz                                        ; $72fc: $c0

    ld a, [rPuzzleCursorColumn]                   ; $72fd: $fa $36 $d6
    ld e, a                                       ; $7300: $5f
    sla a                                         ; $7301: $cb $27
    add e                                         ; $7303: $83
    sla a                                         ; $7304: $cb $27
    add $32                                       ; $7306: $c6 $32
    ld [$d826], a                                 ; $7308: $ea $26 $d8
    ld a, [rPuzzleAndMenuCursorRow]               ; $730b: $fa $37 $d6
    ld e, a                                       ; $730e: $5f
    sla a                                         ; $730f: $cb $27
    add e                                         ; $7311: $83
    sla a                                         ; $7312: $cb $27
    add $2b                                       ; $7314: $c6 $2b
    ld [$d827], a                                 ; $7316: $ea $27 $d8
    ld a, [rPendingCellEffectDelay]               ; $7319: $fa $22 $d8
    and a                                         ; $731c: $a7
    jr z, .BeginFillEffectSequence                ; $731d: $28 $09

    ld a, [rPendingCellEffectCode]                ; $731f: $fa $23 $d8
    call PrepareCellEffectFrameCopy               ; $7322: $cd $49 $75
    call Call_001_7529                            ; $7325: $cd $29 $75

.BeginFillEffectSequence:
    ld a, [rPuzzleCursorColumn]                   ; $7328: $fa $36 $d6
    ld [rCellEffectTargetColumn], a               ; $732b: $ea $24 $d8
    ld a, [rPuzzleAndMenuCursorRow]               ; $732e: $fa $37 $d6
    ld [rCellEffectTargetRow], a                  ; $7331: $ea $25 $d8
    xor a                                         ; $7334: $af
    ld [rPendingCellEffectDelay], a               ; $7335: $ea $22 $d8
    ld a, [hl]                                    ; $7338: $7e
    and $06                                       ; $7339: $e6 $06
    srl a                                         ; $733b: $cb $3f
    swap a                                        ; $733d: $cb $37
    ld [rPendingCellEffectCode], a                ; $733f: $ea $23 $d8
    ld a, $04                                     ; $7342: $3e $04
    ld [rMessageStepSequenceState], a             ; $7344: $ea $21 $d8
    xor a                                         ; $7347: $af
    ld [rMessageStepSequenceCursor], a            ; $7348: $ea $20 $d8
    ld [rMessageStepDelayTimer], a                ; $734b: $ea $1f $d8
    xor a                                         ; $734e: $af
    ld [rPendingCellEffectDelay], a               ; $734f: $ea $22 $d8
    ld c, $09                                     ; $7352: $0e $09
    ld a, $02                                     ; $7354: $3e $02
    call CallSoundEffectDispatcher                ; $7356: $cd $b6 $03
    xor a                                         ; $7359: $af

.RunFillActionAnimationLoop:
    push af                                       ; $735a: $f5
    call ClearShadowOAMBufferFromCursor           ; $735b: $cd $c5 $05
    rst RST_08                                    ; $735e: $cf
    call Call_001_7d81                            ; $735f: $cd $81 $7d
    call DrawPuzzleCursorSpritesAndTickStepSequence; $7362: $cd $3e $71
    ld a, [rGameState_Current]                    ; $7365: $fa $34 $d6
    cp $06                                        ; $7368: $fe $06
    jr z, .TickFillActionFrameDelay               ; $736a: $28 $03

    call UpdatePuzzleTimerCountdown               ; $736c: $cd $ea $7a

.TickFillActionFrameDelay:
    call TickMarioBlinkAnimation                  ; $736f: $cd $18 $79
    pop af                                        ; $7372: $f1
    push af                                       ; $7373: $f5
    cp $10                                        ; $7374: $fe $10
    jr nz, .CheckLateFillEffectTrigger            ; $7376: $20 $0a

    ld a, $10                                     ; $7378: $3e $10
    call PrepareCellEffectFrameCopy               ; $737a: $cd $49 $75
    call Call_001_7529                            ; $737d: $cd $29 $75
    jr .AdvanceFillAnimationFrame                 ; $7380: $18 $0f

.CheckLateFillEffectTrigger:
    cp $54                                        ; $7382: $fe $54
    jr nz, .AdvanceFillAnimationFrame             ; $7384: $20 $0b

    ld a, [rPendingCellEffectCode]                ; $7386: $fa $23 $d8
    call PrepareCellEffectFrameCopy               ; $7389: $cd $49 $75
    ld a, $10                                     ; $738c: $3e $10
    call Call_001_7529                            ; $738e: $cd $29 $75

.AdvanceFillAnimationFrame:
    pop af                                        ; $7391: $f1
    inc a                                         ; $7392: $3c
    cp $58                                        ; $7393: $fe $58
    jr nz, .RunFillActionAnimationLoop            ; $7395: $20 $c3

    call TickPuzzleTimerInputAdjustment           ; $7397: $cd $88 $7c
    ld hl, rPuzzleActionRepeatGuard               ; $739a: $21 $0f $d8
    inc [hl]                                      ; $739d: $34
    ret                                           ; $739e: $c9


Jump_001_739f:
    bit 0, [hl]                                   ; $739f: $cb $46
    jr z, jr_001_73aa                             ; $73a1: $28 $07

    ld a, [$d802]                                 ; $73a3: $fa $02 $d8
    dec a                                         ; $73a6: $3d
    ld [$d802], a                                 ; $73a7: $ea $02 $d8

jr_001_73aa:
    ld a, [$d803]                                 ; $73aa: $fa $03 $d8
    dec a                                         ; $73ad: $3d
    ld [$d803], a                                 ; $73ae: $ea $03 $d8
    set 1, [hl]                                   ; $73b1: $cb $ce
    res 2, [hl]                                   ; $73b3: $cb $96
    ld a, [rPendingCellEffectDelay]               ; $73b5: $fa $22 $d8
    and a                                         ; $73b8: $a7
    jr z, jr_001_73c4                             ; $73b9: $28 $09

    ld a, [rPendingCellEffectCode]                ; $73bb: $fa $23 $d8
    call PrepareCellEffectFrameCopy               ; $73be: $cd $49 $75
    call Call_001_7529                            ; $73c1: $cd $29 $75

jr_001_73c4:
    ld a, [rMessageStepSequenceState]             ; $73c4: $fa $21 $d8
    cp $01                                        ; $73c7: $fe $01
    jr z, jr_001_73f2                             ; $73c9: $28 $27

    cp $02                                        ; $73cb: $fe $02
    jr z, jr_001_73f2                             ; $73cd: $28 $23

    ld a, $01                                     ; $73cf: $3e $01
    ld [rMessageStepSequenceState], a             ; $73d1: $ea $21 $d8
    xor a                                         ; $73d4: $af
    ld [rMessageStepSequenceCursor], a            ; $73d5: $ea $20 $d8
    ld [rMessageStepDelayTimer], a                ; $73d8: $ea $1f $d8
    ld a, $08                                     ; $73db: $3e $08
    ld [rPendingCellEffectDelay], a               ; $73dd: $ea $22 $d8
    ld a, $10                                     ; $73e0: $3e $10
    ld [rPendingCellEffectCode], a                ; $73e2: $ea $23 $d8
    ld a, [rPuzzleCursorColumn]                   ; $73e5: $fa $36 $d6
    ld [rCellEffectTargetColumn], a               ; $73e8: $ea $24 $d8
    ld a, [rPuzzleAndMenuCursorRow]               ; $73eb: $fa $37 $d6
    ld [rCellEffectTargetRow], a                  ; $73ee: $ea $25 $d8
    ret                                           ; $73f1: $c9


jr_001_73f2:
    ld a, [rMessageStepSequenceCursor]            ; $73f2: $fa $20 $d8
    cp $0c                                        ; $73f5: $fe $0c
    jr c, jr_001_7405                             ; $73f7: $38 $0c

    ld a, $02                                     ; $73f9: $3e $02
    ld [rMessageStepSequenceState], a             ; $73fb: $ea $21 $d8
    xor a                                         ; $73fe: $af
    ld [rMessageStepSequenceCursor], a            ; $73ff: $ea $20 $d8
    ld [rMessageStepDelayTimer], a                ; $7402: $ea $1f $d8

jr_001_7405:
    ld a, $07                                     ; $7405: $3e $07
    ld [rPendingCellEffectDelay], a               ; $7407: $ea $22 $d8
    ld a, $10                                     ; $740a: $3e $10
    ld [rPendingCellEffectCode], a                ; $740c: $ea $23 $d8
    ld a, [rPuzzleCursorColumn]                   ; $740f: $fa $36 $d6
    ld [rCellEffectTargetColumn], a               ; $7412: $ea $24 $d8
    ld a, [rPuzzleAndMenuCursorRow]               ; $7415: $fa $37 $d6
    ld [rCellEffectTargetRow], a                  ; $7418: $ea $25 $d8
    ret                                           ; $741b: $c9


ProcessPuzzleCellActionInput_ApplyMarkXAction::
    ld a, [hl]                                    ; $741c: $7e
    and $06                                       ; $741d: $e6 $06
    cp $04                                        ; $741f: $fe $04
    ret z                                         ; $7421: $c8

    cp $02                                        ; $7422: $fe $02
    jr nz, .ApplyMarkXBits                        ; $7424: $20 $12

    bit 0, [hl]                                   ; $7426: $cb $46
    jr z, .IncrementMarkedCellCounter             ; $7428: $28 $07

    ld a, [$d802]                                 ; $742a: $fa $02 $d8
    inc a                                         ; $742d: $3c
    ld [$d802], a                                 ; $742e: $ea $02 $d8

.IncrementMarkedCellCounter:
    ld a, [$d803]                                 ; $7431: $fa $03 $d8
    inc a                                         ; $7434: $3c
    ld [$d803], a                                 ; $7435: $ea $03 $d8

.ApplyMarkXBits:
    res 1, [hl]                                   ; $7438: $cb $8e
    set 2, [hl]                                   ; $743a: $cb $d6
    ld a, [rPendingCellEffectDelay]               ; $743c: $fa $22 $d8
    and a                                         ; $743f: $a7
    jr z, .BeginMarkXEffectSequence               ; $7440: $28 $09

    ld a, [rPendingCellEffectCode]                ; $7442: $fa $23 $d8
    call PrepareCellEffectFrameCopy               ; $7445: $cd $49 $75
    call Call_001_7529                            ; $7448: $cd $29 $75

.BeginMarkXEffectSequence:
    ld a, [rMessageStepSequenceState]             ; $744b: $fa $21 $d8
    cp $03                                        ; $744e: $fe $03
    jr z, .TickMarkXEffectSequence                ; $7450: $28 $23

    ld a, $03                                     ; $7452: $3e $03
    ld [rMessageStepSequenceState], a             ; $7454: $ea $21 $d8
    xor a                                         ; $7457: $af
    ld [rMessageStepSequenceCursor], a            ; $7458: $ea $20 $d8
    ld [rMessageStepDelayTimer], a                ; $745b: $ea $1f $d8
    ld a, $06                                     ; $745e: $3e $06
    ld [rPendingCellEffectDelay], a               ; $7460: $ea $22 $d8
    ld a, $20                                     ; $7463: $3e $20
    ld [rPendingCellEffectCode], a                ; $7465: $ea $23 $d8
    ld a, [rPuzzleCursorColumn]                   ; $7468: $fa $36 $d6
    ld [rCellEffectTargetColumn], a               ; $746b: $ea $24 $d8
    ld a, [rPuzzleAndMenuCursorRow]               ; $746e: $fa $37 $d6
    ld [rCellEffectTargetRow], a                  ; $7471: $ea $25 $d8
    ret                                           ; $7474: $c9


.TickMarkXEffectSequence:
    ld a, [rMessageStepSequenceCursor]            ; $7475: $fa $20 $d8
    cp $02                                        ; $7478: $fe $02
    jr c, .QueueMarkXEffectFrame                  ; $747a: $38 $07

    xor a                                         ; $747c: $af
    ld [rMessageStepSequenceCursor], a            ; $747d: $ea $20 $d8
    ld [rMessageStepDelayTimer], a                ; $7480: $ea $1f $d8

.QueueMarkXEffectFrame:
    ld a, $06                                     ; $7483: $3e $06
    ld [rPendingCellEffectDelay], a               ; $7485: $ea $22 $d8
    ld a, $20                                     ; $7488: $3e $20
    ld [rPendingCellEffectCode], a                ; $748a: $ea $23 $d8
    ld a, [rPuzzleCursorColumn]                   ; $748d: $fa $36 $d6
    ld [rCellEffectTargetColumn], a               ; $7490: $ea $24 $d8
    ld a, [rPuzzleAndMenuCursorRow]               ; $7493: $fa $37 $d6
    ld [rCellEffectTargetRow], a                  ; $7496: $ea $25 $d8
    ret                                           ; $7499: $c9


ProcessPuzzleCellActionInput_ClearCellState::
    ld a, [hl]                                    ; $749a: $7e
    and $06                                       ; $749b: $e6 $06
    ret z                                         ; $749d: $c8

    cp $02                                        ; $749e: $fe $02
    jr nz, .ClearCellMarkBits                     ; $74a0: $20 $12

    bit 0, [hl]                                   ; $74a2: $cb $46
    jr z, .IncrementClearedCellCounter            ; $74a4: $28 $07

    ld a, [$d802]                                 ; $74a6: $fa $02 $d8
    inc a                                         ; $74a9: $3c
    ld [$d802], a                                 ; $74aa: $ea $02 $d8

.IncrementClearedCellCounter:
    ld a, [$d803]                                 ; $74ad: $fa $03 $d8
    inc a                                         ; $74b0: $3c
    ld [$d803], a                                 ; $74b1: $ea $03 $d8

.ClearCellMarkBits:
    res 1, [hl]                                   ; $74b4: $cb $8e
    res 2, [hl]                                   ; $74b6: $cb $96
    ld a, [rPendingCellEffectDelay]               ; $74b8: $fa $22 $d8
    and a                                         ; $74bb: $a7
    jr z, .BeginClearCellEffectSequence           ; $74bc: $28 $09

    ld a, [rPendingCellEffectCode]                ; $74be: $fa $23 $d8
    call PrepareCellEffectFrameCopy               ; $74c1: $cd $49 $75
    call Call_001_7529                            ; $74c4: $cd $29 $75

.BeginClearCellEffectSequence:
    ld a, [rMessageStepSequenceState]             ; $74c7: $fa $21 $d8
    cp $05                                        ; $74ca: $fe $05
    jr z, .TickClearCellEffectSequence            ; $74cc: $28 $23

    ld a, $05                                     ; $74ce: $3e $05
    ld [rMessageStepSequenceState], a             ; $74d0: $ea $21 $d8
    xor a                                         ; $74d3: $af
    ld [rMessageStepSequenceCursor], a            ; $74d4: $ea $20 $d8
    ld [rMessageStepDelayTimer], a                ; $74d7: $ea $1f $d8
    ld a, $0c                                     ; $74da: $3e $0c
    ld [rPendingCellEffectDelay], a               ; $74dc: $ea $22 $d8
    ld a, $00                                     ; $74df: $3e $00
    ld [rPendingCellEffectCode], a                ; $74e1: $ea $23 $d8
    ld a, [rPuzzleCursorColumn]                   ; $74e4: $fa $36 $d6
    ld [rCellEffectTargetColumn], a               ; $74e7: $ea $24 $d8
    ld a, [rPuzzleAndMenuCursorRow]               ; $74ea: $fa $37 $d6
    ld [rCellEffectTargetRow], a                  ; $74ed: $ea $25 $d8
    ret                                           ; $74f0: $c9


.TickClearCellEffectSequence:
    ld a, [rMessageStepSequenceCursor]            ; $74f1: $fa $20 $d8
    cp $08                                        ; $74f4: $fe $08
    jr c, .QueueClearCellEffectFrame              ; $74f6: $38 $07

    xor a                                         ; $74f8: $af
    ld [rMessageStepSequenceCursor], a            ; $74f9: $ea $20 $d8
    ld [rMessageStepDelayTimer], a                ; $74fc: $ea $1f $d8

.QueueClearCellEffectFrame:
    ld a, $0c                                     ; $74ff: $3e $0c
    ld [rPendingCellEffectDelay], a               ; $7501: $ea $22 $d8
    ld a, $00                                     ; $7504: $3e $00
    ld [rPendingCellEffectCode], a                ; $7506: $ea $23 $d8
    ld a, [rPuzzleCursorColumn]                   ; $7509: $fa $36 $d6
    ld [rCellEffectTargetColumn], a               ; $750c: $ea $24 $d8
    ld a, [rPuzzleAndMenuCursorRow]               ; $750f: $fa $37 $d6
    ld [rCellEffectTargetRow], a                  ; $7512: $ea $25 $d8
    ret                                           ; $7515: $c9


TickPendingCellActionEffect::
    ld a, [rPendingCellEffectDelay]               ; $7516: $fa $22 $d8
    and a                                         ; $7519: $a7
    ret z                                         ; $751a: $c8

    dec a                                         ; $751b: $3d
    ld [rPendingCellEffectDelay], a               ; $751c: $ea $22 $d8
    ret nz                                        ; $751f: $c0

    ld a, [rPendingCellEffectCode]                ; $7520: $fa $23 $d8
    call PrepareCellEffectFrameCopy               ; $7523: $cd $49 $75
    jp Jump_001_7529                              ; $7526: $c3 $29 $75


Call_001_7529:
Jump_001_7529:
    cp $10                                        ; $7529: $fe $10
    jr nz, jr_001_7535                            ; $752b: $20 $08

    ld c, $05                                     ; $752d: $0e $05
    ld a, $02                                     ; $752f: $3e $02
    call CallSoundEffectDispatcher                ; $7531: $cd $b6 $03
    ret                                           ; $7534: $c9


jr_001_7535:
    cp $00                                        ; $7535: $fe $00
    jr nz, jr_001_7541                            ; $7537: $20 $08

    ld c, $07                                     ; $7539: $0e $07
    ld a, $02                                     ; $753b: $3e $02
    call CallSoundEffectDispatcher                ; $753d: $cd $b6 $03
    ret                                           ; $7540: $c9


jr_001_7541:
    ld c, $0c                                     ; $7541: $0e $0c
    ld a, $02                                     ; $7543: $3e $02
    call CallSoundEffectDispatcher                ; $7545: $cd $b6 $03
    ret                                           ; $7548: $c9


PrepareCellEffectFrameCopy::
    push af                                       ; $7549: $f5
    push bc                                       ; $754a: $c5
    push de                                       ; $754b: $d5
    push hl                                       ; $754c: $e5
    push af                                       ; $754d: $f5
    ld a, [rCellEffectFrameSourceBaseIndex]       ; $754e: $fa $10 $d8
    sla a                                         ; $7551: $cb $27
    ld c, a                                       ; $7553: $4f
    ld b, $00                                     ; $7554: $06 $00
    ld hl, CellEffectFrameSourceBaseAddressTable  ; $7556: $21 $99 $75
    add hl, bc                                    ; $7559: $09
    pop af                                        ; $755a: $f1
    add [hl]                                      ; $755b: $86
    ld [rBGTileCopyBankAddressLow], a             ; $755c: $ea $55 $c3
    inc hl                                        ; $755f: $23
    ld a, $00                                     ; $7560: $3e $00
    adc [hl]                                      ; $7562: $8e
    ld [rBGTileCopyBankAddressHigh], a            ; $7563: $ea $56 $c3
    ld a, $06                                     ; $7566: $3e $06
    ld [rBGTileCopyBank], a                       ; $7568: $ea $57 $c3
    ld a, [rCellEffectTargetColumn]               ; $756b: $fa $24 $d8
    ld e, a                                       ; $756e: $5f
    sla a                                         ; $756f: $cb $27
    add e                                         ; $7571: $83
    sla a                                         ; $7572: $cb $27
    add $3b                                       ; $7574: $c6 $3b
    ld [rBGTileCopySourceX], a                    ; $7576: $ea $51 $c3
    add $04                                       ; $7579: $c6 $04
    ld [rBGTileCopyDestX], a                      ; $757b: $ea $53 $c3
    ld a, [rCellEffectTargetRow]                  ; $757e: $fa $25 $d8
    ld e, a                                       ; $7581: $5f
    sla a                                         ; $7582: $cb $27
    add e                                         ; $7584: $83
    sla a                                         ; $7585: $cb $27
    add $33                                       ; $7587: $c6 $33
    ld [rBGTileCopySourceY], a                    ; $7589: $ea $52 $c3
    add $04                                       ; $758c: $c6 $04
    ld [rBGTileCopyDestY], a                      ; $758e: $ea $54 $c3
    call PrepareBGTileCopy                        ; $7591: $cd $b3 $08
    pop hl                                        ; $7594: $e1
    pop de                                        ; $7595: $d1
    pop bc                                        ; $7596: $c1
    pop af                                        ; $7597: $f1
    ret                                           ; $7598: $c9


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
    push bc                                       ; $75cf: $c5
    push de                                       ; $75d0: $d5
    push hl                                       ; $75d1: $e5
    ld [rBGTileCopyBankAddressLow], a             ; $75d2: $ea $55 $c3
    ld a, $58                                     ; $75d5: $3e $58
    ld [rBGTileCopyBankAddressHigh], a            ; $75d7: $ea $56 $c3
    ld a, $06                                     ; $75da: $3e $06
    ld [rBGTileCopyBank], a                       ; $75dc: $ea $57 $c3
    ld a, b                                       ; $75df: $78
    ld [rBGTileCopySourceX], a                    ; $75e0: $ea $51 $c3
    add d                                         ; $75e3: $82
    ld [rBGTileCopyDestX], a                      ; $75e4: $ea $53 $c3
    ld a, c                                       ; $75e7: $79
    ld [rBGTileCopySourceY], a                    ; $75e8: $ea $52 $c3
    add e                                         ; $75eb: $83
    ld [rBGTileCopyDestY], a                      ; $75ec: $ea $54 $c3
    call PrepareBGTileCopy                        ; $75ef: $cd $b3 $08
    pop hl                                        ; $75f2: $e1
    pop de                                        ; $75f3: $d1
    pop bc                                        ; $75f4: $c1
    ret                                           ; $75f5: $c9


Call_001_75f6:
    ld a, [$d803]                                 ; $75f6: $fa $03 $d8
    ld hl, $d802                                  ; $75f9: $21 $02 $d8
    or [hl]                                       ; $75fc: $b6
    ret nz                                        ; $75fd: $c0

    ld c, $00                                     ; $75fe: $0e $00
    ld a, $01                                     ; $7600: $3e $01
    call CallSoundEffectDispatcher                ; $7602: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $7605: $cd $99 $03
    ld c, $00                                     ; $7608: $0e $00
    ld a, $01                                     ; $760a: $3e $01
    call CallSoundEffectDispatcher                ; $760c: $cd $b6 $03

jr_001_760f:
    call ClearShadowOAMBufferFromCursor           ; $760f: $cd $c5 $05
    rst RST_08                                    ; $7612: $cf
    xor a                                         ; $7613: $af
    ld [rInputButtonsHeld], a                     ; $7614: $ea $1a $c3
    ld [rInputButtonsPressed], a                  ; $7617: $ea $1e $c3
    ld [rInputButtonsPressedOrRepeated], a        ; $761a: $ea $22 $c3
    call DrawPuzzleCursorSpritesAndTickStepSequence; $761d: $cd $3e $71
    call TickMarioBlinkAnimation                  ; $7620: $cd $18 $79
    call TickPendingCellActionEffect              ; $7623: $cd $16 $75
    ld a, [rMessageStepSequenceState]             ; $7626: $fa $21 $d8
    and a                                         ; $7629: $a7
    jr nz, jr_001_760f                            ; $762a: $20 $e3

    call ClearShadowOAMBuffer                     ; $762c: $cd $b6 $05
    ld a, $ff                                     ; $762f: $3e $ff
    ld [rPuzzleFlowVariant_Unsure], a             ; $7631: $ea $05 $d8
    ret                                           ; $7634: $c9


RedrawPuzzleBoard::
    ld a, [rPuzzleGridWidth]                      ; $7635: $fa $00 $d8
    cp $05                                        ; $7638: $fe $05
    jr nz, .Load10x10BoardTileData                ; $763a: $20 $02

    jr .RedrawBoardCells                          ; $763c: $18 $22

.Load10x10BoardTileData:
    cp $0a                                        ; $763e: $fe $0a
    jr nz, .Load15x15BoardTileData                ; $7640: $20 $10

    ld a, $08                                     ; $7642: $3e $08
    ld hl, $5a00                                  ; $7644: $21 $00 $5a
    ld de, $8800                                  ; $7647: $11 $00 $88
    ld bc, $0200                                  ; $764a: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $764d: $cd $38 $05
    jr .RedrawBoardCells                          ; $7650: $18 $0e

.Load15x15BoardTileData:
    ld a, $06                                     ; $7652: $3e $06
    ld hl, $7200                                  ; $7654: $21 $00 $72
    ld de, $8800                                  ; $7657: $11 $00 $88
    ld bc, $0200                                  ; $765a: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $765d: $cd $38 $05

.RedrawBoardCells:
    ld hl, $d640                                  ; $7660: $21 $40 $d6
    ld c, $33                                     ; $7663: $0e $33
    ld e, $05                                     ; $7665: $1e $05
    ld a, [rPuzzleGridHeight]                     ; $7667: $fa $01 $d8

.ProcessBoardRows:
    push af                                       ; $766a: $f5
    ld b, $3b                                     ; $766b: $06 $3b
    ld d, $05                                     ; $766d: $16 $05
    ld a, [rPuzzleGridWidth]                      ; $766f: $fa $00 $d8

.ProcessBoardCells:
    push af                                       ; $7672: $f5
    ld a, [hl+]                                   ; $7673: $2a
    and $01                                       ; $7674: $e6 $01
    swap a                                        ; $7676: $cb $37
    call PrepareBGTileCopyFromCellEffectParams    ; $7678: $cd $cf $75
    ld a, b                                       ; $767b: $78
    add $06                                       ; $767c: $c6 $06
    ld b, a                                       ; $767e: $47
    pop af                                        ; $767f: $f1
    dec a                                         ; $7680: $3d
    cp $01                                        ; $7681: $fe $01
    jr nz, .AdvanceToNextRow                      ; $7683: $20 $03

    dec d                                         ; $7685: $15
    jr .ProcessBoardCells                         ; $7686: $18 $ea

.AdvanceToNextRow:
    and a                                         ; $7688: $a7
    jr nz, .ProcessBoardCells                     ; $7689: $20 $e7

    ld a, [rPuzzleGridWidth]                      ; $768b: $fa $00 $d8
    sub $11                                       ; $768e: $d6 $11
    xor $ff                                       ; $7690: $ee $ff
    add l                                         ; $7692: $85
    ld l, a                                       ; $7693: $6f
    ld a, $00                                     ; $7694: $3e $00
    adc h                                         ; $7696: $8c
    ld h, a                                       ; $7697: $67
    ld a, c                                       ; $7698: $79
    add $06                                       ; $7699: $c6 $06
    ld c, a                                       ; $769b: $4f
    pop af                                        ; $769c: $f1
    dec a                                         ; $769d: $3d
    cp $01                                        ; $769e: $fe $01
    jr nz, .AdvanceToNextColumn                   ; $76a0: $20 $03

    dec e                                         ; $76a2: $1d
    jr .ProcessBoardRows                          ; $76a3: $18 $c5

.AdvanceToNextColumn:
    and a                                         ; $76a5: $a7
    jr nz, .ProcessBoardRows                      ; $76a6: $20 $c2

    ret                                           ; $76a8: $c9


Call_001_76a9:
    ld a, [rPuzzleGridWidth]                      ; $76a9: $fa $00 $d8
    cp $05                                        ; $76ac: $fe $05
    jp z, Jump_001_76b9                           ; $76ae: $ca $b9 $76

    cp $0a                                        ; $76b1: $fe $0a
    jp z, Jump_001_76e8                           ; $76b3: $ca $e8 $76

    jp Jump_001_7717                              ; $76b6: $c3 $17 $77


Jump_001_76b9:
    call Call_001_7741                            ; $76b9: $cd $41 $77
    ld hl, $d640                                  ; $76bc: $21 $40 $d6
    ld c, $3c                                     ; $76bf: $0e $3c
    ld e, $01                                     ; $76c1: $1e $01

jr_001_76c3:
    ld b, $44                                     ; $76c3: $06 $44
    ld d, $01                                     ; $76c5: $16 $01

jr_001_76c7:
    ld a, [hl+]                                   ; $76c7: $2a
    and $01                                       ; $76c8: $e6 $01
    jr z, jr_001_76d1                             ; $76ca: $28 $05

    swap a                                        ; $76cc: $cb $37
    call PrepareBGTileCopyFromCellEffectParams    ; $76ce: $cd $cf $75

jr_001_76d1:
    ld a, b                                       ; $76d1: $78
    add $02                                       ; $76d2: $c6 $02
    ld b, a                                       ; $76d4: $47
    cp $4e                                        ; $76d5: $fe $4e
    jr nz, jr_001_76c7                            ; $76d7: $20 $ee

    push bc                                       ; $76d9: $c5
    ld bc, $000b                                  ; $76da: $01 $0b $00
    add hl, bc                                    ; $76dd: $09
    pop bc                                        ; $76de: $c1
    ld a, c                                       ; $76df: $79
    add $02                                       ; $76e0: $c6 $02
    ld c, a                                       ; $76e2: $4f
    cp $46                                        ; $76e3: $fe $46
    jr nz, jr_001_76c3                            ; $76e5: $20 $dc

    ret                                           ; $76e7: $c9


Jump_001_76e8:
    call Call_001_77a6                            ; $76e8: $cd $a6 $77
    ld hl, $d640                                  ; $76eb: $21 $40 $d6
    ld c, $43                                     ; $76ee: $0e $43
    ld e, $01                                     ; $76f0: $1e $01

jr_001_76f2:
    ld b, $4e                                     ; $76f2: $06 $4e
    ld d, $01                                     ; $76f4: $16 $01

jr_001_76f6:
    ld a, [hl+]                                   ; $76f6: $2a
    and $01                                       ; $76f7: $e6 $01
    jr z, jr_001_7700                             ; $76f9: $28 $05

    swap a                                        ; $76fb: $cb $37
    call PrepareBGTileCopyFromCellEffectParams    ; $76fd: $cd $cf $75

jr_001_7700:
    ld a, b                                       ; $7700: $78
    add $02                                       ; $7701: $c6 $02
    ld b, a                                       ; $7703: $47
    cp $62                                        ; $7704: $fe $62
    jr nz, jr_001_76f6                            ; $7706: $20 $ee

    push bc                                       ; $7708: $c5
    ld bc, $0006                                  ; $7709: $01 $06 $00
    add hl, bc                                    ; $770c: $09
    pop bc                                        ; $770d: $c1
    ld a, c                                       ; $770e: $79
    add $02                                       ; $770f: $c6 $02
    ld c, a                                       ; $7711: $4f
    cp $57                                        ; $7712: $fe $57
    jr nz, jr_001_76f2                            ; $7714: $20 $dc

    ret                                           ; $7716: $c9


Jump_001_7717:
    call Call_001_780a                            ; $7717: $cd $0a $78
    ld hl, $d640                                  ; $771a: $21 $40 $d6
    ld c, $4d                                     ; $771d: $0e $4d
    ld e, $01                                     ; $771f: $1e $01

jr_001_7721:
    ld b, $59                                     ; $7721: $06 $59
    ld d, $01                                     ; $7723: $16 $01

jr_001_7725:
    ld a, [hl+]                                   ; $7725: $2a
    and $01                                       ; $7726: $e6 $01
    jr z, jr_001_772f                             ; $7728: $28 $05

    swap a                                        ; $772a: $cb $37
    call PrepareBGTileCopyFromCellEffectParams    ; $772c: $cd $cf $75

jr_001_772f:
    ld a, b                                       ; $772f: $78
    add $02                                       ; $7730: $c6 $02
    ld b, a                                       ; $7732: $47
    cp $77                                        ; $7733: $fe $77
    jr nz, jr_001_7725                            ; $7735: $20 $ee

    inc hl                                        ; $7737: $23
    ld a, c                                       ; $7738: $79
    add $02                                       ; $7739: $c6 $02
    ld c, a                                       ; $773b: $4f
    cp $6b                                        ; $773c: $fe $6b
    jr nz, jr_001_7721                            ; $773e: $20 $e1

    ret                                           ; $7740: $c9


Call_001_7741:
    ld hl, $6340                                  ; $7741: $21 $40 $63
    ld c, $33                                     ; $7744: $0e $33

jr_001_7746:
    push bc                                       ; $7746: $c5
    push hl                                       ; $7747: $e5
    ld a, l                                       ; $7748: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $7749: $ea $55 $c3
    ld a, h                                       ; $774c: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $774d: $ea $56 $c3
    ld a, $07                                     ; $7750: $3e $07
    ld [rBGTileCopyBank], a                       ; $7752: $ea $57 $c3
    ld a, $3b                                     ; $7755: $3e $3b
    ld [rBGTileCopySourceX], a                    ; $7757: $ea $51 $c3
    add $1c                                       ; $775a: $c6 $1c
    ld [rBGTileCopyDestX], a                      ; $775c: $ea $53 $c3
    ld a, c                                       ; $775f: $79
    ld [rBGTileCopySourceY], a                    ; $7760: $ea $52 $c3
    add $0b                                       ; $7763: $c6 $0b
    ld [rBGTileCopyDestY], a                      ; $7765: $ea $54 $c3
    call PrepareBGTileCopy                        ; $7768: $cd $b3 $08
    pop hl                                        ; $776b: $e1
    pop bc                                        ; $776c: $c1
    ld de, $0108                                  ; $776d: $11 $08 $01
    add hl, de                                    ; $7770: $19
    bit 3, l                                      ; $7771: $cb $5d
    jr nz, jr_001_7779                            ; $7773: $20 $04

    ld de, $00f0                                  ; $7775: $11 $f0 $00
    add hl, de                                    ; $7778: $19

jr_001_7779:
    ld a, c                                       ; $7779: $79
    add $0c                                       ; $777a: $c6 $0c
    ld c, a                                       ; $777c: $4f
    cp $4b                                        ; $777d: $fe $4b
    jr nz, jr_001_7746                            ; $777f: $20 $c5

    ld a, l                                       ; $7781: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $7782: $ea $55 $c3
    ld a, h                                       ; $7785: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $7786: $ea $56 $c3
    ld a, $07                                     ; $7789: $3e $07
    ld [rBGTileCopyBank], a                       ; $778b: $ea $57 $c3
    ld a, $3b                                     ; $778e: $3e $3b
    ld [rBGTileCopySourceX], a                    ; $7790: $ea $51 $c3
    add $1c                                       ; $7793: $c6 $1c
    ld [rBGTileCopyDestX], a                      ; $7795: $ea $53 $c3
    ld a, c                                       ; $7798: $79
    ld [rBGTileCopySourceY], a                    ; $7799: $ea $52 $c3
    add $04                                       ; $779c: $c6 $04
    ld [rBGTileCopyDestY], a                      ; $779e: $ea $54 $c3
    call PrepareBGTileCopy                        ; $77a1: $cd $b3 $08
    ret                                           ; $77a4: $c9


    ret                                           ; $77a5: $c9


Call_001_77a6:
    ld hl, $6000                                  ; $77a6: $21 $00 $60
    ld c, $33                                     ; $77a9: $0e $33

jr_001_77ab:
    push bc                                       ; $77ab: $c5
    push hl                                       ; $77ac: $e5
    ld a, l                                       ; $77ad: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $77ae: $ea $55 $c3
    ld a, h                                       ; $77b1: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $77b2: $ea $56 $c3
    ld a, $08                                     ; $77b5: $3e $08
    ld [rBGTileCopyBank], a                       ; $77b7: $ea $57 $c3
    ld a, $3b                                     ; $77ba: $3e $3b
    ld [rBGTileCopySourceX], a                    ; $77bc: $ea $51 $c3
    add $3a                                       ; $77bf: $c6 $3a
    ld [rBGTileCopyDestX], a                      ; $77c1: $ea $53 $c3
    ld a, c                                       ; $77c4: $79
    ld [rBGTileCopySourceY], a                    ; $77c5: $ea $52 $c3
    add $0b                                       ; $77c8: $c6 $0b
    ld [rBGTileCopyDestY], a                      ; $77ca: $ea $54 $c3
    call PrepareBGTileCopy                        ; $77cd: $cd $b3 $08
    pop hl                                        ; $77d0: $e1
    pop bc                                        ; $77d1: $c1
    ld de, $0108                                  ; $77d2: $11 $08 $01
    add hl, de                                    ; $77d5: $19
    bit 3, l                                      ; $77d6: $cb $5d
    jr nz, jr_001_77de                            ; $77d8: $20 $04

    ld de, $00f0                                  ; $77da: $11 $f0 $00
    add hl, de                                    ; $77dd: $19

jr_001_77de:
    ld a, c                                       ; $77de: $79
    add $0c                                       ; $77df: $c6 $0c
    ld c, a                                       ; $77e1: $4f
    cp $63                                        ; $77e2: $fe $63
    jr nz, jr_001_77ab                            ; $77e4: $20 $c5

    ld a, l                                       ; $77e6: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $77e7: $ea $55 $c3
    ld a, h                                       ; $77ea: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $77eb: $ea $56 $c3
    ld a, $08                                     ; $77ee: $3e $08
    ld [rBGTileCopyBank], a                       ; $77f0: $ea $57 $c3
    ld a, $3b                                     ; $77f3: $3e $3b
    ld [rBGTileCopySourceX], a                    ; $77f5: $ea $51 $c3
    add $3a                                       ; $77f8: $c6 $3a
    ld [rBGTileCopyDestX], a                      ; $77fa: $ea $53 $c3
    ld a, c                                       ; $77fd: $79
    ld [rBGTileCopySourceY], a                    ; $77fe: $ea $52 $c3
    add $0a                                       ; $7801: $c6 $0a
    ld [rBGTileCopyDestY], a                      ; $7803: $ea $54 $c3
    call PrepareBGTileCopy                        ; $7806: $cd $b3 $08
    ret                                           ; $7809: $c9


Call_001_780a:
    ld hl, $5d00                                  ; $780a: $21 $00 $5d
    ld c, $33                                     ; $780d: $0e $33

jr_001_780f:
    push bc                                       ; $780f: $c5
    push hl                                       ; $7810: $e5
    ld a, l                                       ; $7811: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $7812: $ea $55 $c3
    ld a, h                                       ; $7815: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $7816: $ea $56 $c3
    ld a, $06                                     ; $7819: $3e $06
    ld [rBGTileCopyBank], a                       ; $781b: $ea $57 $c3
    ld a, $3b                                     ; $781e: $3e $3b
    ld [rBGTileCopySourceX], a                    ; $7820: $ea $51 $c3
    add $58                                       ; $7823: $c6 $58
    ld [rBGTileCopyDestX], a                      ; $7825: $ea $53 $c3
    ld a, c                                       ; $7828: $79
    ld [rBGTileCopySourceY], a                    ; $7829: $ea $52 $c3
    add $0b                                       ; $782c: $c6 $0b
    ld [rBGTileCopyDestY], a                      ; $782e: $ea $54 $c3
    call PrepareBGTileCopy                        ; $7831: $cd $b3 $08
    pop hl                                        ; $7834: $e1
    pop bc                                        ; $7835: $c1
    ld de, $0108                                  ; $7836: $11 $08 $01
    add hl, de                                    ; $7839: $19
    bit 3, l                                      ; $783a: $cb $5d
    jr nz, jr_001_7842                            ; $783c: $20 $04

    ld de, $00f0                                  ; $783e: $11 $f0 $00
    add hl, de                                    ; $7841: $19

jr_001_7842:
    ld a, c                                       ; $7842: $79
    add $0c                                       ; $7843: $c6 $0c
    ld c, a                                       ; $7845: $4f
    cp $87                                        ; $7846: $fe $87
    jr nz, jr_001_780f                            ; $7848: $20 $c5

    ld a, l                                       ; $784a: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $784b: $ea $55 $c3
    ld a, h                                       ; $784e: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $784f: $ea $56 $c3
    ld a, $06                                     ; $7852: $3e $06
    ld [rBGTileCopyBank], a                       ; $7854: $ea $57 $c3
    ld a, $3b                                     ; $7857: $3e $3b
    ld [rBGTileCopySourceX], a                    ; $7859: $ea $51 $c3
    add $58                                       ; $785c: $c6 $58
    ld [rBGTileCopyDestX], a                      ; $785e: $ea $53 $c3
    ld a, c                                       ; $7861: $79
    ld [rBGTileCopySourceY], a                    ; $7862: $ea $52 $c3
    add $04                                       ; $7865: $c6 $04
    ld [rBGTileCopyDestY], a                      ; $7867: $ea $54 $c3
    call PrepareBGTileCopy                        ; $786a: $cd $b3 $08
    ret                                           ; $786d: $c9


Call_001_786e:
    ld hl, $d640                                  ; $786e: $21 $40 $d6
    ld c, $00                                     ; $7871: $0e $00

jr_001_7873:
    ld b, $00                                     ; $7873: $06 $00

jr_001_7875:
    ld a, b                                       ; $7875: $78
    ld [rCellEffectTargetColumn], a               ; $7876: $ea $24 $d8
    ld a, c                                       ; $7879: $79
    ld [rCellEffectTargetRow], a                  ; $787a: $ea $25 $d8
    ld a, [hl+]                                   ; $787d: $2a
    srl a                                         ; $787e: $cb $3f
    swap a                                        ; $7880: $cb $37
    call PrepareCellEffectFrameCopy               ; $7882: $cd $49 $75
    inc b                                         ; $7885: $04
    ld a, [rPuzzleGridWidth]                      ; $7886: $fa $00 $d8
    cp b                                          ; $7889: $b8
    jr nz, jr_001_7875                            ; $788a: $20 $e9

    ld a, [rPuzzleGridWidth]                      ; $788c: $fa $00 $d8
    sub $11                                       ; $788f: $d6 $11
    xor $ff                                       ; $7891: $ee $ff
    add l                                         ; $7893: $85
    ld l, a                                       ; $7894: $6f
    ld a, $00                                     ; $7895: $3e $00
    adc h                                         ; $7897: $8c
    ld h, a                                       ; $7898: $67
    inc c                                         ; $7899: $0c
    ld a, [rPuzzleGridHeight]                     ; $789a: $fa $01 $d8
    cp c                                          ; $789d: $b9
    jr nz, jr_001_7873                            ; $789e: $20 $d3

    xor a                                         ; $78a0: $af
    ret                                           ; $78a1: $c9


ApplyHintSelectionToRowAndColumn::
    ld a, [rPuzzleCursorColumn]                   ; $78a2: $fa $36 $d6
    ld c, a                                       ; $78a5: $4f
    ld a, [rPuzzleAndMenuCursorRow]               ; $78a6: $fa $37 $d6
    ld b, a                                       ; $78a9: $47
    ld e, c                                       ; $78aa: $59
    ld d, $00                                     ; $78ab: $16 $00
    ld hl, $d640                                  ; $78ad: $21 $40 $d6
    add hl, de                                    ; $78b0: $19
    push bc                                       ; $78b1: $c5
    ld b, $00                                     ; $78b2: $06 $00

.ApplyHintSelectionToColumnLoop:
    ld a, c                                       ; $78b4: $79
    ld [rCellEffectTargetColumn], a               ; $78b5: $ea $24 $d8
    ld a, b                                       ; $78b8: $78
    ld [rCellEffectTargetRow], a                  ; $78b9: $ea $25 $d8
    ld a, [hl]                                    ; $78bc: $7e
    and $01                                       ; $78bd: $e6 $01
    push af                                       ; $78bf: $f5
    swap a                                        ; $78c0: $cb $37
    jr nz, .CopyHintSelectionColumnCellFrame      ; $78c2: $20 $02

    ld a, $20                                     ; $78c4: $3e $20

.CopyHintSelectionColumnCellFrame:
    call PrepareCellEffectFrameCopy               ; $78c6: $cd $49 $75
    pop af                                        ; $78c9: $f1
    jr z, .MarkHintSelectionColumnCellAsX         ; $78ca: $28 $06

    set 1, [hl]                                   ; $78cc: $cb $ce
    res 2, [hl]                                   ; $78ce: $cb $96
    jr .AdvanceHintSelectionColumnLoop            ; $78d0: $18 $04

.MarkHintSelectionColumnCellAsX:
    res 1, [hl]                                   ; $78d2: $cb $8e
    set 2, [hl]                                   ; $78d4: $cb $d6

.AdvanceHintSelectionColumnLoop:
    ld de, $0010                                  ; $78d6: $11 $10 $00
    add hl, de                                    ; $78d9: $19
    inc b                                         ; $78da: $04
    ld a, [rPuzzleGridHeight]                     ; $78db: $fa $01 $d8
    cp b                                          ; $78de: $b8
    jr nz, .ApplyHintSelectionToColumnLoop        ; $78df: $20 $d3

    pop bc                                        ; $78e1: $c1
    ld e, b                                       ; $78e2: $58
    swap e                                        ; $78e3: $cb $33
    ld d, $00                                     ; $78e5: $16 $00
    ld hl, $d640                                  ; $78e7: $21 $40 $d6
    add hl, de                                    ; $78ea: $19
    ld c, $00                                     ; $78eb: $0e $00

.ApplyHintSelectionToRowLoop:
    ld a, c                                       ; $78ed: $79
    ld [rCellEffectTargetColumn], a               ; $78ee: $ea $24 $d8
    ld a, b                                       ; $78f1: $78
    ld [rCellEffectTargetRow], a                  ; $78f2: $ea $25 $d8
    ld a, [hl]                                    ; $78f5: $7e
    and $01                                       ; $78f6: $e6 $01
    push af                                       ; $78f8: $f5
    swap a                                        ; $78f9: $cb $37
    jr nz, .CopyHintSelectionRowCellFrame         ; $78fb: $20 $02

    ld a, $20                                     ; $78fd: $3e $20

.CopyHintSelectionRowCellFrame:
    call PrepareCellEffectFrameCopy               ; $78ff: $cd $49 $75
    pop af                                        ; $7902: $f1
    jr z, .MarkHintSelectionRowCellAsX            ; $7903: $28 $06

    set 1, [hl]                                   ; $7905: $cb $ce
    res 2, [hl]                                   ; $7907: $cb $96
    jr .AdvanceHintSelectionRowLoop               ; $7909: $18 $04

.MarkHintSelectionRowCellAsX:
    res 1, [hl]                                   ; $790b: $cb $8e
    set 2, [hl]                                   ; $790d: $cb $d6

.AdvanceHintSelectionRowLoop:
    inc hl                                        ; $790f: $23
    inc c                                         ; $7910: $0c
    ld a, [rPuzzleGridWidth]                      ; $7911: $fa $00 $d8
    cp c                                          ; $7914: $b9
    jr nz, .ApplyHintSelectionToRowLoop           ; $7915: $20 $d6

    ret                                           ; $7917: $c9


TickMarioBlinkAnimation::
    ld a, [rMarioBlinkAnimationDelay]             ; $7918: $fa $17 $d8
    and a                                         ; $791b: $a7
    jr nz, .TickBlinkFrameDelay                   ; $791c: $20 $20

    ld a, [rMarioBlinkAnimationSequenceCursor]    ; $791e: $fa $18 $d8
    ld c, a                                       ; $7921: $4f
    ld b, $00                                     ; $7922: $06 $00

.FindNextBlinkFrameEntry:
    ld hl, MarioBlinkFrameDelayAndSpriteIdTable   ; $7924: $21 $4e $79
    add hl, bc                                    ; $7927: $09
    ld a, [hl+]                                   ; $7928: $2a
    and a                                         ; $7929: $a7
    jr nz, .LoadBlinkFrameEntry                   ; $792a: $20 $05

    ld bc, $0000                                  ; $792c: $01 $00 $00
    jr .FindNextBlinkFrameEntry                   ; $792f: $18 $f3

.LoadBlinkFrameEntry:
    ld [rMarioBlinkAnimationDelay], a             ; $7931: $ea $17 $d8
    ld a, [hl]                                    ; $7934: $7e
    ld [rMarioBlinkAnimationSpriteId], a          ; $7935: $ea $16 $d8
    inc c                                         ; $7938: $0c
    inc c                                         ; $7939: $0c
    ld a, c                                       ; $793a: $79
    ld [rMarioBlinkAnimationSequenceCursor], a    ; $793b: $ea $18 $d8

.TickBlinkFrameDelay:
    ld hl, rMarioBlinkAnimationDelay              ; $793e: $21 $17 $d8
    dec [hl]                                      ; $7941: $35
    ld a, [rMarioBlinkAnimationSpriteId]          ; $7942: $fa $16 $d8
    cp $ff                                        ; $7945: $fe $ff
    ret z                                         ; $7947: $c8

    ld bc, $1810                                  ; $7948: $01 $10 $18
    jp CopyOAMSpriteById                          ; $794b: $c3 $ce $20


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

TickMessageStepSequenceAndEmitSprite::
    ld a, [rMessageStepDelayTimer]                ; $7967: $fa $1f $d8
    and a                                         ; $796a: $a7
    jr nz, jr_001_79ba                            ; $796b: $20 $4d

    ld a, [rMessageStepSequenceState]             ; $796d: $fa $21 $d8
    ld c, a                                       ; $7970: $4f
    ld b, $00                                     ; $7971: $06 $00
    ld hl, $79ff                                  ; $7973: $21 $ff $79
    add hl, bc                                    ; $7976: $09
    ld c, [hl]                                    ; $7977: $4e
    add hl, bc                                    ; $7978: $09
    ld a, [rMessageStepSequenceCursor]            ; $7979: $fa $20 $d8
    ld c, a                                       ; $797c: $4f
    ld b, $00                                     ; $797d: $06 $00

jr_001_797f:
    push hl                                       ; $797f: $e5
    add hl, bc                                    ; $7980: $09
    ld a, [hl+]                                   ; $7981: $2a
    and a                                         ; $7982: $a7
    jr nz, jr_001_798b                            ; $7983: $20 $06

    ld bc, $0000                                  ; $7985: $01 $00 $00
    pop hl                                        ; $7988: $e1
    jr jr_001_797f                                ; $7989: $18 $f4

jr_001_798b:
    cp $ff                                        ; $798b: $fe $ff
    jr nz, jr_001_79ac                            ; $798d: $20 $1d

    ld a, [rInputButtonsHeld]                     ; $798f: $fa $1a $c3
    and $03                                       ; $7992: $e6 $03
    jr z, jr_001_799e                             ; $7994: $28 $08

    pop hl                                        ; $7996: $e1
    ld a, $01                                     ; $7997: $3e $01
    ld [rMessageStepDelayTimer], a                ; $7999: $ea $1f $d8
    jr jr_001_79ba                                ; $799c: $18 $1c

jr_001_799e:
    ld a, [hl+]                                   ; $799e: $2a
    ld [rMessageStepSequenceState], a             ; $799f: $ea $21 $d8
    xor a                                         ; $79a2: $af
    ld [rMessageStepDelayTimer], a                ; $79a3: $ea $1f $d8
    ld [rMessageStepSequenceCursor], a            ; $79a6: $ea $20 $d8
    pop hl                                        ; $79a9: $e1
    jr TickMessageStepSequenceAndEmitSprite       ; $79aa: $18 $bb

jr_001_79ac:
    ld [rMessageStepDelayTimer], a                ; $79ac: $ea $1f $d8
    ld a, [hl]                                    ; $79af: $7e
    ld [$d81e], a                                 ; $79b0: $ea $1e $d8
    inc c                                         ; $79b3: $0c
    inc c                                         ; $79b4: $0c
    ld a, c                                       ; $79b5: $79
    ld [rMessageStepSequenceCursor], a            ; $79b6: $ea $20 $d8
    pop hl                                        ; $79b9: $e1

jr_001_79ba:
    ld hl, rMessageStepDelayTimer                 ; $79ba: $21 $1f $d8
    dec [hl]                                      ; $79bd: $35
    ld a, [$d81e]                                 ; $79be: $fa $1e $d8
    cp $ff                                        ; $79c1: $fe $ff
    ret z                                         ; $79c3: $c8

    push af                                       ; $79c4: $f5
    ld a, [rPuzzleCursorColumn]                   ; $79c5: $fa $36 $d6
    ld e, a                                       ; $79c8: $5f
    sla a                                         ; $79c9: $cb $27
    add e                                         ; $79cb: $83
    sla a                                         ; $79cc: $cb $27
    add $3a                                       ; $79ce: $c6 $3a
    ld b, a                                       ; $79d0: $47
    ld a, [rPuzzleAndMenuCursorRow]               ; $79d1: $fa $37 $d6
    ld e, a                                       ; $79d4: $5f
    sla a                                         ; $79d5: $cb $27
    add e                                         ; $79d7: $83
    sla a                                         ; $79d8: $cb $27
    add $32                                       ; $79da: $c6 $32
    ld c, a                                       ; $79dc: $4f
    pop af                                        ; $79dd: $f1
    call CopyOAMSpriteById                        ; $79de: $cd $ce $20
    ld a, [rMessageStepSequenceState]             ; $79e1: $fa $21 $d8
    cp $01                                        ; $79e4: $fe $01
    jr z, jr_001_79eb                             ; $79e6: $28 $03

    cp $02                                        ; $79e8: $fe $02
    ret nz                                        ; $79ea: $c0

jr_001_79eb:
    ld a, [rMessageStepSequenceCursor]            ; $79eb: $fa $20 $d8
    cp $02                                        ; $79ee: $fe $02
    ret nz                                        ; $79f0: $c0

    ld a, [rMessageStepDelayTimer]                ; $79f1: $fa $1f $d8
    cp $02                                        ; $79f4: $fe $02
    ret nz                                        ; $79f6: $c0

    ld c, $06                                     ; $79f7: $0e $06
    ld a, $02                                     ; $79f9: $3e $02
    call CallSoundEffectDispatcher                ; $79fb: $cd $b6 $03
    ret                                           ; $79fe: $c9


    ld b, $0e                                     ; $79ff: $06 $0e
    ld sp, $5750                                  ; $7a01: $31 $50 $57
    adc b                                         ; $7a04: $88
    inc b                                         ; $7a05: $04
    dec bc                                        ; $7a06: $0b
    inc b                                         ; $7a07: $04
    inc c                                         ; $7a08: $0c
    inc b                                         ; $7a09: $04
    dec c                                         ; $7a0a: $0d
    inc b                                         ; $7a0b: $04
    inc c                                         ; $7a0c: $0c
    nop                                           ; $7a0d: $00
    ld bc, $011e                                  ; $7a0e: $01 $1e $01
    ld c, $01                                     ; $7a11: $0e $01
    ld a, [hl+]                                   ; $7a13: $2a
    ld bc, $010f                                  ; $7a14: $01 $0f $01
    rra                                           ; $7a17: $1f
    inc bc                                        ; $7a18: $03
    db $10                                        ; $7a19: $10
    inc b                                         ; $7a1a: $04
    ld de, $1204                                  ; $7a1b: $11 $04 $12
    inc b                                         ; $7a1e: $04
    inc de                                        ; $7a1f: $13
    inc b                                         ; $7a20: $04
    inc d                                         ; $7a21: $14
    inc b                                         ; $7a22: $04
    dec d                                         ; $7a23: $15
    inc b                                         ; $7a24: $04
    ld d, $04                                     ; $7a25: $16 $04
    rla                                           ; $7a27: $17
    inc b                                         ; $7a28: $04
    jr jr_001_7a2f                                ; $7a29: $18 $04

    add hl, de                                    ; $7a2b: $19
    inc b                                         ; $7a2c: $04
    ld a, [de]                                    ; $7a2d: $1a
    inc b                                         ; $7a2e: $04

jr_001_7a2f:
    dec de                                        ; $7a2f: $1b
    rst $38                                       ; $7a30: $ff
    nop                                           ; $7a31: $00
    ld bc, $010e                                  ; $7a32: $01 $0e $01
    ld a, [hl+]                                   ; $7a35: $2a
    ld bc, $010f                                  ; $7a36: $01 $0f $01
    rra                                           ; $7a39: $1f
    inc bc                                        ; $7a3a: $03
    db $10                                        ; $7a3b: $10
    inc b                                         ; $7a3c: $04
    ld de, $1204                                  ; $7a3d: $11 $04 $12
    inc b                                         ; $7a40: $04
    inc de                                        ; $7a41: $13
    inc b                                         ; $7a42: $04
    inc d                                         ; $7a43: $14
    inc b                                         ; $7a44: $04
    dec d                                         ; $7a45: $15
    inc b                                         ; $7a46: $04
    ld d, $04                                     ; $7a47: $16 $04
    rla                                           ; $7a49: $17
    inc b                                         ; $7a4a: $04
    add hl, de                                    ; $7a4b: $19
    inc b                                         ; $7a4c: $04
    ld a, [de]                                    ; $7a4d: $1a
    inc b                                         ; $7a4e: $04
    dec de                                        ; $7a4f: $1b
    rst $38                                       ; $7a50: $ff
    nop                                           ; $7a51: $00
    inc bc                                        ; $7a52: $03
    inc e                                         ; $7a53: $1c
    dec b                                         ; $7a54: $05
    dec e                                         ; $7a55: $1d
    inc b                                         ; $7a56: $04
    ld e, $ff                                     ; $7a57: $1e $ff
    nop                                           ; $7a59: $00
    inc b                                         ; $7a5a: $04
    ld e, $02                                     ; $7a5b: $1e $02
    ld c, $02                                     ; $7a5d: $0e $02
    ld a, [hl+]                                   ; $7a5f: $2a
    inc bc                                        ; $7a60: $03
    rrca                                          ; $7a61: $0f
    ld [bc], a                                    ; $7a62: $02
    rra                                           ; $7a63: $1f
    inc bc                                        ; $7a64: $03
    db $10                                        ; $7a65: $10
    inc b                                         ; $7a66: $04
    ld de, $1204                                  ; $7a67: $11 $04 $12
    inc b                                         ; $7a6a: $04
    inc de                                        ; $7a6b: $13
    inc b                                         ; $7a6c: $04
    inc d                                         ; $7a6d: $14
    inc b                                         ; $7a6e: $04
    dec d                                         ; $7a6f: $15
    inc b                                         ; $7a70: $04
    ld d, $04                                     ; $7a71: $16 $04
    rla                                           ; $7a73: $17
    inc b                                         ; $7a74: $04
    jr jr_001_7a7b                                ; $7a75: $18 $04

    add hl, de                                    ; $7a77: $19
    inc b                                         ; $7a78: $04
    ld a, [de]                                    ; $7a79: $1a
    inc b                                         ; $7a7a: $04

jr_001_7a7b:
    ld [hl+], a                                   ; $7a7b: $22
    inc b                                         ; $7a7c: $04
    inc hl                                        ; $7a7d: $23
    inc b                                         ; $7a7e: $04
    inc h                                         ; $7a7f: $24
    inc b                                         ; $7a80: $04
    dec h                                         ; $7a81: $25
    inc b                                         ; $7a82: $04
    ld h, $04                                     ; $7a83: $26 $04
    daa                                           ; $7a85: $27
    inc b                                         ; $7a86: $04
    jr z, jr_001_7a8d                             ; $7a87: $28 $04

    ld c, $ff                                     ; $7a89: $0e $ff
    nop                                           ; $7a8b: $00
    inc b                                         ; $7a8c: $04

jr_001_7a8d:
    jr nz, jr_001_7a96                            ; $7a8d: $20 $07

    ld hl, $2004                                  ; $7a8f: $21 $04 $20
    rlca                                          ; $7a92: $07
    ld hl, $2004                                  ; $7a93: $21 $04 $20

jr_001_7a96:
    rst $38                                       ; $7a96: $ff
    nop                                           ; $7a97: $00

UpdatePuzzleTimerDisplayState::
    ld a, [$d80e]                                 ; $7a98: $fa $0e $d8
    and a                                         ; $7a9b: $a7
    ret nz                                        ; $7a9c: $c0

    ld a, $01                                     ; $7a9d: $3e $01
    ld [$d80e], a                                 ; $7a9f: $ea $0e $d8
    ld a, [rPuzzleTimerMinuteTens]                ; $7aa2: $fa $0a $d8
    and a                                         ; $7aa5: $a7
    ret nz                                        ; $7aa6: $c0

    ld a, [rPuzzleTimerMinuteOnes]                ; $7aa7: $fa $09 $d8
    cp $03                                        ; $7aaa: $fe $03
    jr z, jr_001_7aba                             ; $7aac: $28 $0c

    cp $02                                        ; $7aae: $fe $02
    jr z, jr_001_7ac4                             ; $7ab0: $28 $12

    cp $01                                        ; $7ab2: $fe $01
    jr z, jr_001_7ad6                             ; $7ab4: $28 $20

    and a                                         ; $7ab6: $a7
    jr z, jr_001_7ae2                             ; $7ab7: $28 $29

    ret                                           ; $7ab9: $c9


jr_001_7aba:
    ld a, [rPuzzleTimerSecondTens]                ; $7aba: $fa $0c $d8
    ld hl, rPuzzleTimerSecondOnes                 ; $7abd: $21 $0b $d8
    or [hl]                                       ; $7ac0: $b6
    jr z, jr_001_7ac4                             ; $7ac1: $28 $01

    ret                                           ; $7ac3: $c9


jr_001_7ac4:
    ld a, [rPuzzleTimerSecondTens]                ; $7ac4: $fa $0c $d8
    ld hl, rPuzzleTimerSecondOnes                 ; $7ac7: $21 $0b $d8
    or [hl]                                       ; $7aca: $b6
    jr z, jr_001_7ad6                             ; $7acb: $28 $09

    ld a, [hl]                                    ; $7acd: $7e
    and a                                         ; $7ace: $a7
    jr z, jr_001_7ae2                             ; $7acf: $28 $11

    cp $05                                        ; $7ad1: $fe $05
    jr z, jr_001_7ae2                             ; $7ad3: $28 $0d

    ret                                           ; $7ad5: $c9


jr_001_7ad6:
    ld a, [rPuzzleTimerSecondTens]                ; $7ad6: $fa $0c $d8
    ld hl, rPuzzleTimerSecondOnes                 ; $7ad9: $21 $0b $d8
    or [hl]                                       ; $7adc: $b6
    jr z, jr_001_7ae2                             ; $7add: $28 $03

    bit 0, [hl]                                   ; $7adf: $cb $46
    ret nz                                        ; $7ae1: $c0

jr_001_7ae2:
    ld c, $0d                                     ; $7ae2: $0e $0d
    ld a, $02                                     ; $7ae4: $3e $02
    call CallSoundEffectDispatcher                ; $7ae6: $cd $b6 $03
    ret                                           ; $7ae9: $c9


UpdatePuzzleTimerCountdown::
    ld a, [rPuzzleTimerActive]                    ; $7aea: $fa $0d $d8
    cp $3c                                        ; $7aed: $fe $3c
    ret c                                         ; $7aef: $d8

    xor a                                         ; $7af0: $af
    ld [rPuzzleTimerActive], a                    ; $7af1: $ea $0d $d8
    ld [$d80e], a                                 ; $7af4: $ea $0e $d8
    ld a, [rGameState_Current]                    ; $7af7: $fa $34 $d6
    cp $09                                        ; $7afa: $fe $09
    jr z, jr_001_7b6e                             ; $7afc: $28 $70

    ld a, [rPuzzleTimerSecondOnes]                ; $7afe: $fa $0b $d8
    ld hl, rPuzzleTimerSecondTens                 ; $7b01: $21 $0c $d8
    or [hl]                                       ; $7b04: $b6
    ld hl, rPuzzleTimerMinuteOnes                 ; $7b05: $21 $09 $d8
    or [hl]                                       ; $7b08: $b6
    ld hl, rPuzzleTimerMinuteTens                 ; $7b09: $21 $0a $d8
    or [hl]                                       ; $7b0c: $b6
    ret z                                         ; $7b0d: $c8

    ld a, [rPuzzleTimerSecondOnes]                ; $7b0e: $fa $0b $d8
    dec a                                         ; $7b11: $3d
    cp $ff                                        ; $7b12: $fe $ff
    jr nz, jr_001_7b18                            ; $7b14: $20 $02

    ld a, $09                                     ; $7b16: $3e $09

jr_001_7b18:
    ld [rPuzzleTimerSecondOnes], a                ; $7b18: $ea $0b $d8
    push af                                       ; $7b1b: $f5
    ld bc, $2b27                                  ; $7b1c: $01 $27 $2b
    call RenderPuzzleTimerDigitTile               ; $7b1f: $cd $29 $7c
    pop af                                        ; $7b22: $f1
    ret nz                                        ; $7b23: $c0

    ld a, [rPuzzleTimerSecondTens]                ; $7b24: $fa $0c $d8
    dec a                                         ; $7b27: $3d
    cp $ff                                        ; $7b28: $fe $ff
    jr nz, jr_001_7b2e                            ; $7b2a: $20 $02

    ld a, $05                                     ; $7b2c: $3e $05

jr_001_7b2e:
    ld [rPuzzleTimerSecondTens], a                ; $7b2e: $ea $0c $d8
    push af                                       ; $7b31: $f5
    ld bc, $2327                                  ; $7b32: $01 $27 $23
    call RenderPuzzleTimerDigitTile               ; $7b35: $cd $29 $7c
    pop af                                        ; $7b38: $f1
    ret nz                                        ; $7b39: $c0

    ld a, [rPuzzleTimerMinuteOnes]                ; $7b3a: $fa $09 $d8
    dec a                                         ; $7b3d: $3d
    cp $ff                                        ; $7b3e: $fe $ff
    jr nz, jr_001_7b44                            ; $7b40: $20 $02

    ld a, $09                                     ; $7b42: $3e $09

jr_001_7b44:
    ld [rPuzzleTimerMinuteOnes], a                ; $7b44: $ea $09 $d8
    push af                                       ; $7b47: $f5
    ld bc, $1527                                  ; $7b48: $01 $27 $15
    call RenderPuzzleTimerDigitTile               ; $7b4b: $cd $29 $7c
    pop af                                        ; $7b4e: $f1
    ret nz                                        ; $7b4f: $c0

    ld a, [rPuzzleTimerMinuteTens]                ; $7b50: $fa $0a $d8
    dec a                                         ; $7b53: $3d
    cp $ff                                        ; $7b54: $fe $ff
    jr nz, jr_001_7b62                            ; $7b56: $20 $0a

    xor a                                         ; $7b58: $af
    ld [rPuzzleTimerSecondOnes], a                ; $7b59: $ea $0b $d8
    ld [rPuzzleTimerSecondTens], a                ; $7b5c: $ea $0c $d8
    ld [rPuzzleTimerMinuteOnes], a                ; $7b5f: $ea $09 $d8

jr_001_7b62:
    ld [rPuzzleTimerMinuteTens], a                ; $7b62: $ea $0a $d8
    push af                                       ; $7b65: $f5
    ld bc, $0d27                                  ; $7b66: $01 $27 $0d
    call RenderPuzzleTimerDigitTile               ; $7b69: $cd $29 $7c
    pop af                                        ; $7b6c: $f1
    ret                                           ; $7b6d: $c9


jr_001_7b6e:
    ld a, [rPuzzleTimerSecondOnes]                ; $7b6e: $fa $0b $d8
    cp $09                                        ; $7b71: $fe $09
    jr nz, jr_001_7b8b                            ; $7b73: $20 $16

    ld a, [rPuzzleTimerSecondTens]                ; $7b75: $fa $0c $d8
    cp $05                                        ; $7b78: $fe $05
    jr nz, jr_001_7b8b                            ; $7b7a: $20 $0f

    ld a, [rPuzzleTimerMinuteOnes]                ; $7b7c: $fa $09 $d8
    cp $09                                        ; $7b7f: $fe $09
    jr nz, jr_001_7b8b                            ; $7b81: $20 $08

    ld a, [rPuzzleTimerMinuteTens]                ; $7b83: $fa $0a $d8
    cp $09                                        ; $7b86: $fe $09
    jr nz, jr_001_7b8b                            ; $7b88: $20 $01

    ret                                           ; $7b8a: $c9


jr_001_7b8b:
    ld a, [rPuzzleTimerSecondOnes]                ; $7b8b: $fa $0b $d8
    inc a                                         ; $7b8e: $3c
    cp $0a                                        ; $7b8f: $fe $0a
    jr nz, jr_001_7b94                            ; $7b91: $20 $01

    xor a                                         ; $7b93: $af

jr_001_7b94:
    ld [rPuzzleTimerSecondOnes], a                ; $7b94: $ea $0b $d8
    push af                                       ; $7b97: $f5
    ld bc, $2b27                                  ; $7b98: $01 $27 $2b
    call RenderPuzzleTimerDigitTile               ; $7b9b: $cd $29 $7c
    pop af                                        ; $7b9e: $f1
    ret nz                                        ; $7b9f: $c0

    ld a, [rPuzzleTimerSecondTens]                ; $7ba0: $fa $0c $d8
    inc a                                         ; $7ba3: $3c
    cp $06                                        ; $7ba4: $fe $06
    jr nz, jr_001_7ba9                            ; $7ba6: $20 $01

    xor a                                         ; $7ba8: $af

jr_001_7ba9:
    ld [rPuzzleTimerSecondTens], a                ; $7ba9: $ea $0c $d8
    push af                                       ; $7bac: $f5
    ld bc, $2327                                  ; $7bad: $01 $27 $23
    call RenderPuzzleTimerDigitTile               ; $7bb0: $cd $29 $7c
    pop af                                        ; $7bb3: $f1
    ret nz                                        ; $7bb4: $c0

    ld a, [rPuzzleTimerMinuteOnes]                ; $7bb5: $fa $09 $d8
    inc a                                         ; $7bb8: $3c
    cp $0a                                        ; $7bb9: $fe $0a
    jr nz, jr_001_7bbe                            ; $7bbb: $20 $01

    xor a                                         ; $7bbd: $af

jr_001_7bbe:
    ld [rPuzzleTimerMinuteOnes], a                ; $7bbe: $ea $09 $d8
    push af                                       ; $7bc1: $f5
    ld bc, $1527                                  ; $7bc2: $01 $27 $15
    call RenderPuzzleTimerDigitTile               ; $7bc5: $cd $29 $7c
    pop af                                        ; $7bc8: $f1
    ret nz                                        ; $7bc9: $c0

    ld a, [rPuzzleTimerMinuteTens]                ; $7bca: $fa $0a $d8
    inc a                                         ; $7bcd: $3c
    cp $0a                                        ; $7bce: $fe $0a
    jr nz, jr_001_7bdf                            ; $7bd0: $20 $0d

    ld a, $05                                     ; $7bd2: $3e $05
    ld [rPuzzleTimerSecondTens], a                ; $7bd4: $ea $0c $d8
    ld a, $09                                     ; $7bd7: $3e $09
    ld [rPuzzleTimerSecondOnes], a                ; $7bd9: $ea $0b $d8
    ld [rPuzzleTimerMinuteOnes], a                ; $7bdc: $ea $09 $d8

jr_001_7bdf:
    ld [rPuzzleTimerMinuteTens], a                ; $7bdf: $ea $0a $d8
    push af                                       ; $7be2: $f5
    ld bc, $0d27                                  ; $7be3: $01 $27 $0d
    call RenderPuzzleTimerDigitTile               ; $7be6: $cd $29 $7c
    pop af                                        ; $7be9: $f1
    ret                                           ; $7bea: $c9


ResetPuzzleTimerState::
    xor a                                         ; $7beb: $af
    ld [rPuzzleTimerActive], a                    ; $7bec: $ea $0d $d8
    ld [rPuzzleTimerSecondOnes], a                ; $7bef: $ea $0b $d8
    ld [rPuzzleTimerSecondTens], a                ; $7bf2: $ea $0c $d8
    ld [rPuzzleTimerMinuteOnes], a                ; $7bf5: $ea $09 $d8
    ld a, [rGameState_Current]                    ; $7bf8: $fa $34 $d6
    sub $09                                       ; $7bfb: $d6 $09
    jr z, jr_001_7c01                             ; $7bfd: $28 $02

    ld a, $03                                     ; $7bff: $3e $03

jr_001_7c01:
    ld [rPuzzleTimerMinuteTens], a                ; $7c01: $ea $0a $d8

RenderPuzzleTimerDigits::
    ld a, [rPuzzleTimerSecondOnes]                ; $7c04: $fa $0b $d8
    ld bc, $2b27                                  ; $7c07: $01 $27 $2b
    call RenderPuzzleTimerDigitTile               ; $7c0a: $cd $29 $7c
    ld a, [rPuzzleTimerSecondTens]                ; $7c0d: $fa $0c $d8
    ld bc, $2327                                  ; $7c10: $01 $27 $23
    call RenderPuzzleTimerDigitTile               ; $7c13: $cd $29 $7c
    ld a, [rPuzzleTimerMinuteOnes]                ; $7c16: $fa $09 $d8
    ld bc, $1527                                  ; $7c19: $01 $27 $15
    call RenderPuzzleTimerDigitTile               ; $7c1c: $cd $29 $7c
    ld a, [rPuzzleTimerMinuteTens]                ; $7c1f: $fa $0a $d8
    ld bc, $0d27                                  ; $7c22: $01 $27 $0d
    call RenderPuzzleTimerDigitTile               ; $7c25: $cd $29 $7c
    ret                                           ; $7c28: $c9


RenderPuzzleTimerDigitTile::
    ld e, a                                       ; $7c29: $5f
    ld d, $00                                     ; $7c2a: $16 $00
    sla e                                         ; $7c2c: $cb $23
    rl d                                          ; $7c2e: $cb $12
    sla e                                         ; $7c30: $cb $23
    rl d                                          ; $7c32: $cb $12
    sla e                                         ; $7c34: $cb $23
    rl d                                          ; $7c36: $cb $12
    sla e                                         ; $7c38: $cb $23
    rl d                                          ; $7c3a: $cb $12
    ld hl, $5840                                  ; $7c3c: $21 $40 $58
    add hl, de                                    ; $7c3f: $19
    ld a, l                                       ; $7c40: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $7c41: $ea $55 $c3
    ld a, h                                       ; $7c44: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $7c45: $ea $56 $c3
    ld a, $06                                     ; $7c48: $3e $06
    ld [rBGTileCopyBank], a                       ; $7c4a: $ea $57 $c3
    ld a, b                                       ; $7c4d: $78
    ld [rBGTileCopySourceX], a                    ; $7c4e: $ea $51 $c3
    add $07                                       ; $7c51: $c6 $07
    ld [rBGTileCopyDestX], a                      ; $7c53: $ea $53 $c3
    ld a, c                                       ; $7c56: $79
    ld [rBGTileCopySourceY], a                    ; $7c57: $ea $52 $c3
    add $07                                       ; $7c5a: $c6 $07
    ld [rBGTileCopyDestY], a                      ; $7c5c: $ea $54 $c3
    jp PrepareBGTileCopy                          ; $7c5f: $c3 $b3 $08


    ld a, $a0                                     ; $7c62: $3e $a0
    ld [rBGTileCopyBankAddressLow], a             ; $7c64: $ea $55 $c3
    ld a, $5b                                     ; $7c67: $3e $5b
    ld [rBGTileCopyBankAddressHigh], a            ; $7c69: $ea $56 $c3
    ld a, $06                                     ; $7c6c: $3e $06
    ld [rBGTileCopyBank], a                       ; $7c6e: $ea $57 $c3
    ld a, $08                                     ; $7c71: $3e $08
    ld [rBGTileCopySourceX], a                    ; $7c73: $ea $51 $c3
    add $2f                                       ; $7c76: $c6 $2f
    ld [rBGTileCopyDestX], a                      ; $7c78: $ea $53 $c3
    ld a, $26                                     ; $7c7b: $3e $26
    ld [rBGTileCopySourceY], a                    ; $7c7d: $ea $52 $c3
    add $09                                       ; $7c80: $c6 $09
    ld [rBGTileCopyDestY], a                      ; $7c82: $ea $54 $c3
    jp PrepareBGTileCopy                          ; $7c85: $c3 $b3 $08


TickPuzzleTimerInputAdjustment::
    ld a, [rPuzzleTimerAdjustmentStep]            ; $7c88: $fa $11 $d8
    ld c, a                                       ; $7c8b: $4f
    ld a, [rPuzzleTimerMinuteOnes]                ; $7c8c: $fa $09 $d8
    sub c                                         ; $7c8f: $91
    ld [rPuzzleTimerMinuteOnes], a                ; $7c90: $ea $09 $d8
    bit 7, a                                      ; $7c93: $cb $7f
    jr z, jr_001_7cb9                             ; $7c95: $28 $22

    add $0a                                       ; $7c97: $c6 $0a
    ld [rPuzzleTimerMinuteOnes], a                ; $7c99: $ea $09 $d8
    ld a, [rPuzzleTimerMinuteTens]                ; $7c9c: $fa $0a $d8
    dec a                                         ; $7c9f: $3d
    ld [rPuzzleTimerMinuteTens], a                ; $7ca0: $ea $0a $d8
    bit 7, a                                      ; $7ca3: $cb $7f
    jr z, jr_001_7cb9                             ; $7ca5: $28 $12

    xor a                                         ; $7ca7: $af
    ld [rPuzzleTimerSecondOnes], a                ; $7ca8: $ea $0b $d8
    ld [rPuzzleTimerSecondTens], a                ; $7cab: $ea $0c $d8
    ld [rPuzzleTimerMinuteOnes], a                ; $7cae: $ea $09 $d8
    ld [rPuzzleTimerMinuteTens], a                ; $7cb1: $ea $0a $d8
    ld a, $32                                     ; $7cb4: $3e $32
    ld [rPuzzleTimerActive], a                    ; $7cb6: $ea $0d $d8

jr_001_7cb9:
    ld a, [rPuzzleTimerAdjustmentStep]            ; $7cb9: $fa $11 $d8
    cp $08                                        ; $7cbc: $fe $08
    jr z, jr_001_7cc5                             ; $7cbe: $28 $05

    sla a                                         ; $7cc0: $cb $27
    ld [rPuzzleTimerAdjustmentStep], a            ; $7cc2: $ea $11 $d8

jr_001_7cc5:
    jp RenderPuzzleTimerDigits                    ; $7cc5: $c3 $04 $7c


TickPuzzleTimerCompletionState::
    ld a, [rPuzzleTimerActive]                    ; $7cc8: $fa $0d $d8
    cp $32                                        ; $7ccb: $fe $32
    ret c                                         ; $7ccd: $d8

    ld a, [rPuzzleTimerSecondOnes]                ; $7cce: $fa $0b $d8
    ld hl, rPuzzleTimerSecondTens                 ; $7cd1: $21 $0c $d8
    or [hl]                                       ; $7cd4: $b6
    ld hl, rPuzzleTimerMinuteOnes                 ; $7cd5: $21 $09 $d8
    or [hl]                                       ; $7cd8: $b6
    ld hl, rPuzzleTimerMinuteTens                 ; $7cd9: $21 $0a $d8
    or [hl]                                       ; $7cdc: $b6
    ret nz                                        ; $7cdd: $c0

    ld hl, rPuzzleTimerCompletionState            ; $7cde: $21 $06 $d8
    inc [hl]                                      ; $7ce1: $34
    ret                                           ; $7ce2: $c9


LoadGameOverMessageTileData::
    ld a, [rPuzzleGridWidth]                      ; $7ce3: $fa $00 $d8
    cp $05                                        ; $7ce6: $fe $05
    jp z, Load5x5GameOverMessageTileData          ; $7ce8: $ca $f3 $7c

    cp $0a                                        ; $7ceb: $fe $0a
    jp z, Load10x10GameOverMessageTileData        ; $7ced: $ca $19 $7d

    jp Load15x15GameOverMessageTileData           ; $7cf0: $c3 $4d $7d


Load5x5GameOverMessageTileData::
    ld a, $00                                     ; $7cf3: $3e $00
    ld [rBGTileCopyBankAddressLow], a             ; $7cf5: $ea $55 $c3
    ld a, $63                                     ; $7cf8: $3e $63
    ld [rBGTileCopyBankAddressHigh], a            ; $7cfa: $ea $56 $c3
    ld a, $07                                     ; $7cfd: $3e $07
    ld [rBGTileCopyBank], a                       ; $7cff: $ea $57 $c3
    ld a, $3c                                     ; $7d02: $3e $3c
    ld [rBGTileCopySourceX], a                    ; $7d04: $ea $51 $c3
    add $1a                                       ; $7d07: $c6 $1a
    ld [rBGTileCopyDestX], a                      ; $7d09: $ea $53 $c3
    ld a, $3a                                     ; $7d0c: $3e $3a
    ld [rBGTileCopySourceY], a                    ; $7d0e: $ea $52 $c3
    add $0f                                       ; $7d11: $c6 $0f
    ld [rBGTileCopyDestY], a                      ; $7d13: $ea $54 $c3
    jp PrepareBGTileCopy                          ; $7d16: $c3 $b3 $08


Load10x10GameOverMessageTileData::
    ld a, $08                                     ; $7d19: $3e $08
    ld hl, $5c00                                  ; $7d1b: $21 $00 $5c
    ld de, $8800                                  ; $7d1e: $11 $00 $88
    ld bc, $0200                                  ; $7d21: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $7d24: $cd $38 $05
    ld a, $00                                     ; $7d27: $3e $00
    ld [rBGTileCopyBankAddressLow], a             ; $7d29: $ea $55 $c3
    ld a, $5b                                     ; $7d2c: $3e $5b
    ld [rBGTileCopyBankAddressHigh], a            ; $7d2e: $ea $56 $c3
    ld a, $06                                     ; $7d31: $3e $06
    ld [rBGTileCopyBank], a                       ; $7d33: $ea $57 $c3
    ld a, $38                                     ; $7d36: $3e $38
    ld [rBGTileCopySourceX], a                    ; $7d38: $ea $51 $c3
    add $3f                                       ; $7d3b: $c6 $3f
    ld [rBGTileCopyDestX], a                      ; $7d3d: $ea $53 $c3
    ld a, $49                                     ; $7d40: $3e $49
    ld [rBGTileCopySourceY], a                    ; $7d42: $ea $52 $c3
    add $0f                                       ; $7d45: $c6 $0f
    ld [rBGTileCopyDestY], a                      ; $7d47: $ea $54 $c3
    jp PrepareBGTileCopy                          ; $7d4a: $c3 $b3 $08


Load15x15GameOverMessageTileData::
    ld a, $06                                     ; $7d4d: $3e $06
    ld hl, $7400                                  ; $7d4f: $21 $00 $74
    ld de, $8800                                  ; $7d52: $11 $00 $88
    ld bc, $0200                                  ; $7d55: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $7d58: $cd $38 $05
    ld a, $00                                     ; $7d5b: $3e $00
    ld [rBGTileCopyBankAddressLow], a             ; $7d5d: $ea $55 $c3
    ld a, $5b                                     ; $7d60: $3e $5b
    ld [rBGTileCopyBankAddressHigh], a            ; $7d62: $ea $56 $c3
    ld a, $06                                     ; $7d65: $3e $06
    ld [rBGTileCopyBank], a                       ; $7d67: $ea $57 $c3
    ld a, $47                                     ; $7d6a: $3e $47
    ld [rBGTileCopySourceX], a                    ; $7d6c: $ea $51 $c3
    add $3f                                       ; $7d6f: $c6 $3f
    ld [rBGTileCopyDestX], a                      ; $7d71: $ea $53 $c3
    ld a, $57                                     ; $7d74: $3e $57
    ld [rBGTileCopySourceY], a                    ; $7d76: $ea $52 $c3
    add $0f                                       ; $7d79: $c6 $0f
    ld [rBGTileCopyDestY], a                      ; $7d7b: $ea $54 $c3
    jp PrepareBGTileCopy                          ; $7d7e: $c3 $b3 $08


Call_001_7d81:
    ld a, [$d826]                                 ; $7d81: $fa $26 $d8
    ld b, a                                       ; $7d84: $47
    ld a, [$d827]                                 ; $7d85: $fa $27 $d8
    ld c, a                                       ; $7d88: $4f
    ld a, [rPuzzleTimerAdjustmentStep]            ; $7d89: $fa $11 $d8
    cp $02                                        ; $7d8c: $fe $02
    jr nz, jr_001_7d94                            ; $7d8e: $20 $04

    ld a, $07                                     ; $7d90: $3e $07
    jr jr_001_7d9e                                ; $7d92: $18 $0a

jr_001_7d94:
    cp $04                                        ; $7d94: $fe $04
    jr nz, jr_001_7d9c                            ; $7d96: $20 $04

    ld a, $08                                     ; $7d98: $3e $08
    jr jr_001_7d9e                                ; $7d9a: $18 $02

jr_001_7d9c:
    ld a, $09                                     ; $7d9c: $3e $09

jr_001_7d9e:
    call CopyOAMSpriteById                        ; $7d9e: $cd $ce $20
    ld a, [rVBlankFrameCounter]                   ; $7da1: $fa $3a $c3
    and $03                                       ; $7da4: $e6 $03
    jr nz, jr_001_7daf                            ; $7da6: $20 $07

    ld a, [$d827]                                 ; $7da8: $fa $27 $d8
    dec a                                         ; $7dab: $3d
    ld [$d827], a                                 ; $7dac: $ea $27 $d8

jr_001_7daf:
    ld a, [rVBlankFrameCounter]                   ; $7daf: $fa $3a $c3
    and $03                                       ; $7db2: $e6 $03
    ret nz                                        ; $7db4: $c0

    ld a, [rVBlankFrameCounter]                   ; $7db5: $fa $3a $c3
    bit 2, a                                      ; $7db8: $cb $57
    jr nz, jr_001_7dc4                            ; $7dba: $20 $08

    ld a, [$d826]                                 ; $7dbc: $fa $26 $d8
    inc a                                         ; $7dbf: $3c
    ld [$d826], a                                 ; $7dc0: $ea $26 $d8
    ret                                           ; $7dc3: $c9


jr_001_7dc4:
    ld a, [$d826]                                 ; $7dc4: $fa $26 $d8
    ld [$d826], a                                 ; $7dc7: $ea $26 $d8
    ret                                           ; $7dca: $c9


Call_001_7dcb:
    ld hl, $d640                                  ; $7dcb: $21 $40 $d6
    ld bc, $0100                                  ; $7dce: $01 $00 $01
    ld e, $00                                     ; $7dd1: $1e $00

jr_001_7dd3:
    ld a, [hl+]                                   ; $7dd3: $2a
    bit 0, a                                      ; $7dd4: $cb $47
    jr z, jr_001_7dd9                             ; $7dd6: $28 $01

    inc e                                         ; $7dd8: $1c

jr_001_7dd9:
    dec bc                                        ; $7dd9: $0b
    ld a, c                                       ; $7dda: $79
    or b                                          ; $7ddb: $b0
    jr nz, jr_001_7dd3                            ; $7ddc: $20 $f5

    ld hl, $d640                                  ; $7dde: $21 $40 $d6
    ld bc, $0100                                  ; $7de1: $01 $00 $01
    ld d, e                                       ; $7de4: $53

jr_001_7de5:
    ld a, [hl+]                                   ; $7de5: $2a
    bit 1, a                                      ; $7de6: $cb $4f
    jr z, jr_001_7df0                             ; $7de8: $28 $06

    dec e                                         ; $7dea: $1d
    bit 0, a                                      ; $7deb: $cb $47
    jr z, jr_001_7df0                             ; $7ded: $28 $01

    dec d                                         ; $7def: $15

jr_001_7df0:
    dec bc                                        ; $7df0: $0b
    ld a, c                                       ; $7df1: $79
    or b                                          ; $7df2: $b0
    jr nz, jr_001_7de5                            ; $7df3: $20 $f0

    ld a, e                                       ; $7df5: $7b
    ld [$d803], a                                 ; $7df6: $ea $03 $d8
    ld a, d                                       ; $7df9: $7a
    ld [$d802], a                                 ; $7dfa: $ea $02 $d8
    ret                                           ; $7dfd: $c9


Call_001_7dfe:
    ld a, [rSelectedSaveSlotIndex]                ; $7dfe: $fa $65 $a0
    ld c, a                                       ; $7e01: $4f
    ld b, $00                                     ; $7e02: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $7e04: $21 $8d $a3
    add hl, bc                                    ; $7e07: $09
    ld a, [rSelectedSaveSlotIndex]                ; $7e08: $fa $65 $a0
    ld c, a                                       ; $7e0b: $4f
    sla a                                         ; $7e0c: $cb $27
    sla a                                         ; $7e0e: $cb $27
    add c                                         ; $7e10: $81
    add [hl]                                      ; $7e11: $86
    ld c, a                                       ; $7e12: $4f
    ld hl, $a06a                                  ; $7e13: $21 $6a $a0
    add hl, bc                                    ; $7e16: $09
    ld c, [hl]                                    ; $7e17: $4e
    ld hl, $7e2d                                  ; $7e18: $21 $2d $7e
    add hl, bc                                    ; $7e1b: $09
    ld c, $00                                     ; $7e1c: $0e $00
    ld a, $01                                     ; $7e1e: $3e $01
    call CallSoundEffectDispatcher                ; $7e20: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $7e23: $cd $99 $03
    ld c, [hl]                                    ; $7e26: $4e
    ld a, $01                                     ; $7e27: $3e $01
    call CallSoundEffectDispatcher                ; $7e29: $cd $b6 $03
    ret                                           ; $7e2c: $c9


    dec b                                         ; $7e2d: $05
    ld bc, $030b                                  ; $7e2e: $01 $0b $03
    ld [bc], a                                    ; $7e31: $02
    nop                                           ; $7e32: $00

Call_001_7e33:
    ld hl, $d81c                                  ; $7e33: $21 $1c $d8
    inc [hl]                                      ; $7e36: $34
    ld a, [rPuzzleTimerMinuteTens]                ; $7e37: $fa $0a $d8
    and a                                         ; $7e3a: $a7
    ret nz                                        ; $7e3b: $c0

    ld a, [rPuzzleTimerMinuteOnes]                ; $7e3c: $fa $09 $d8
    cp $02                                        ; $7e3f: $fe $02
    jr z, jr_001_7e4b                             ; $7e41: $28 $08

    cp $01                                        ; $7e43: $fe $01
    jr z, jr_001_7e57                             ; $7e45: $28 $10

    and a                                         ; $7e47: $a7
    jr z, jr_001_7e63                             ; $7e48: $28 $19

    ret                                           ; $7e4a: $c9


jr_001_7e4b:
    ld a, [hl]                                    ; $7e4b: $7e
    cp $3c                                        ; $7e4c: $fe $3c
    jr c, jr_001_7e52                             ; $7e4e: $38 $02

    xor a                                         ; $7e50: $af
    ld [hl], a                                    ; $7e51: $77

jr_001_7e52:
    cp $08                                        ; $7e52: $fe $08
    jr c, jr_001_7e6f                             ; $7e54: $38 $19

    ret                                           ; $7e56: $c9


jr_001_7e57:
    ld a, [hl]                                    ; $7e57: $7e
    cp $1e                                        ; $7e58: $fe $1e
    jr c, jr_001_7e5e                             ; $7e5a: $38 $02

    xor a                                         ; $7e5c: $af
    ld [hl], a                                    ; $7e5d: $77

jr_001_7e5e:
    cp $08                                        ; $7e5e: $fe $08
    jr c, jr_001_7e6f                             ; $7e60: $38 $0d

    ret                                           ; $7e62: $c9


jr_001_7e63:
    ld a, [hl]                                    ; $7e63: $7e
    cp $0f                                        ; $7e64: $fe $0f
    jr c, jr_001_7e6a                             ; $7e66: $38 $02

    xor a                                         ; $7e68: $af
    ld [hl], a                                    ; $7e69: $77

jr_001_7e6a:
    cp $08                                        ; $7e6a: $fe $08
    jr c, jr_001_7e6f                             ; $7e6c: $38 $01

    ret                                           ; $7e6e: $c9


jr_001_7e6f:
    ld bc, $2e0c                                  ; $7e6f: $01 $0c $2e
    ld a, $0a                                     ; $7e72: $3e $0a
    jp CopyOAMSpriteById                          ; $7e74: $c3 $ce $20


Call_001_7e77:
    ld a, [$d81d]                                 ; $7e77: $fa $1d $d8
    and a                                         ; $7e7a: $a7
    ret nz                                        ; $7e7b: $c0

    ld a, [rPuzzleTimerMinuteTens]                ; $7e7c: $fa $0a $d8
    and a                                         ; $7e7f: $a7
    ret nz                                        ; $7e80: $c0

    ld a, [rPuzzleTimerMinuteOnes]                ; $7e81: $fa $09 $d8
    cp $03                                        ; $7e84: $fe $03
    ret nc                                        ; $7e86: $d0

    ld a, $01                                     ; $7e87: $3e $01
    ld [$d81d], a                                 ; $7e89: $ea $1d $d8
    ld a, [rPuzzleGridWidth]                      ; $7e8c: $fa $00 $d8
    cp $05                                        ; $7e8f: $fe $05
    jr nz, jr_001_7e95                            ; $7e91: $20 $02

    jr jr_001_7f0b                                ; $7e93: $18 $76

jr_001_7e95:
    cp $0a                                        ; $7e95: $fe $0a
    jr nz, jr_001_7ed3                            ; $7e97: $20 $3a

    ld a, $08                                     ; $7e99: $3e $08
    ld hl, $58b0                                  ; $7e9b: $21 $b0 $58
    ld de, $88b0                                  ; $7e9e: $11 $b0 $88
    ld bc, $0020                                  ; $7ea1: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7ea4: $cd $38 $05
    ld a, $08                                     ; $7ea7: $3e $08
    ld hl, $5900                                  ; $7ea9: $21 $00 $59
    ld de, $8900                                  ; $7eac: $11 $00 $89
    ld bc, $0020                                  ; $7eaf: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7eb2: $cd $38 $05
    ld a, $08                                     ; $7eb5: $3e $08
    ld hl, $5960                                  ; $7eb7: $21 $60 $59
    ld de, $8960                                  ; $7eba: $11 $60 $89
    ld bc, $0020                                  ; $7ebd: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7ec0: $cd $38 $05
    ld a, $08                                     ; $7ec3: $3e $08
    ld hl, $59c0                                  ; $7ec5: $21 $c0 $59
    ld de, $89c0                                  ; $7ec8: $11 $c0 $89
    ld bc, $0020                                  ; $7ecb: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7ece: $cd $38 $05
    jr jr_001_7f0b                                ; $7ed1: $18 $38

jr_001_7ed3:
    ld a, $06                                     ; $7ed3: $3e $06
    ld hl, $70b0                                  ; $7ed5: $21 $b0 $70
    ld de, $88b0                                  ; $7ed8: $11 $b0 $88
    ld bc, $0020                                  ; $7edb: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7ede: $cd $38 $05
    ld a, $06                                     ; $7ee1: $3e $06
    ld hl, $7100                                  ; $7ee3: $21 $00 $71
    ld de, $8900                                  ; $7ee6: $11 $00 $89
    ld bc, $0020                                  ; $7ee9: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7eec: $cd $38 $05
    ld a, $06                                     ; $7eef: $3e $06
    ld hl, $7160                                  ; $7ef1: $21 $60 $71
    ld de, $8960                                  ; $7ef4: $11 $60 $89
    ld bc, $0020                                  ; $7ef7: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7efa: $cd $38 $05
    ld a, $06                                     ; $7efd: $3e $06
    ld hl, $71c0                                  ; $7eff: $21 $c0 $71
    ld de, $89c0                                  ; $7f02: $11 $c0 $89
    ld bc, $0020                                  ; $7f05: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7f08: $cd $38 $05

jr_001_7f0b:
    ret                                           ; $7f0b: $c9


    ; padding
    ds $f4, $00
