; Disassembly of "Mario no Picross (Japan) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

SETCHARMAP messages

GS05_EasyPicrossCompletionMessage::
    db "おめでとう ございます!!", $fe, $ff

    db "｢やさしいピクロス｣の", $fe, $ff

    db "すべて の もんだいが", $fe, $ff

    db "クリアされました｡", $ff, $ff

GS04_KinokoCourseCompletionMessage_Unused::
    db "おめでとう ございます!!", $fe, $ff

    db "つぎは､フラワーコースに", $fe, $ff

    db "チャレンジしてみよう｡", $ff, $ff

GS04_KinokoCourseCompletionMessage::
    db "おめでとう ございます!!", $fe, $ff

    db "つぎは､スターコースに", $fe, $ff

    db "チャレンジしてみよう｡", $ff, $ff

GS04_PICROSSCompletionMessage_Part1::
    db "おめでとう ございます!!", $fe, $ff

    db "｢ピクロス｣の すべて の", $fe, $ff

    db "コースが クリアされました｡", $ff, $ff

GS04_PICROSSCompletionMessage_Part2::
    db "タイムトライアルモードが", $fe, $ff

    db "せんたくできるように", $fe, $ff

    db "なりました｡", $ff, $ff

GS04_PICROSSCompletionMessage_Part3::
    db "タイムトライアルでは､", $fe, $ff

    db "せいげんじかんは あ⁣りません｡", $fe, $ff

    db "ヒントもあ⁣りません｡", $fe, $ff

    db "まちがっていても", $fe, $ff

    db "ミスをしらせてくれません｡", $ff, $ff

GS04_PICROSSCompletionMessage_Part4::
    db "なんぷんで とけるかな?", $fe, $ff

    db "さあ⁣､チャレンジしてみよう!!", $ff, $ff

GameState_04_PicrossCoursePuzzleSelectScreen_PhaseDispatcher::
    ld a, [rStatePhase_Current]                   ; $4244: $fa $35 $d6
    rst RST_18                                    ; $4247: $df

GS04_PhasePointer_00::
    db $54, $42

GS04_PhasePointer_01::
    db $37, $46

GS04_PhasePointer_02::
    db $c3, $46

GS04_PhasePointer_03::
    db $2c, $48

GS04_PhasePointer_04::
    db $ca, $42

GS04_PhasePointer_05::
    db $71, $46

GS04_StatePhase_00_PicrossCoursePuzzleSelectScreenInit::
    ld a, $43                                     ; $4254: $3e $43
    ld [rLCDCShadow], a                           ; $4256: $ea $2e $c3
    xor a                                         ; $4259: $af
    ld [rBGPShadow], a                            ; $425a: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $425d: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $4260: $ea $31 $c3
    ld [rSCXShadow], a                            ; $4263: $ea $32 $c3
    ld [rSCYShadow], a                            ; $4266: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $4269: $cd $9d $05
    call FillBGMap1WithTile01                     ; $426c: $cd $a8 $05
    ld a, $0b                                     ; $426f: $3e $0b
    ld hl, $5000                                  ; $4271: $21 $00 $50
    ld de, $8000                                  ; $4274: $11 $00 $80
    ld bc, $0300                                  ; $4277: $01 $00 $03
    call BankedTileCopy                           ; $427a: $cd $e1 $04
    ld a, $07                                     ; $427d: $3e $07
    ld hl, $7b00                                  ; $427f: $21 $00 $7b
    ld de, $8300                                  ; $4282: $11 $00 $83
    ld bc, $0200                                  ; $4285: $01 $00 $02
    call BankedTileCopy                           ; $4288: $cd $e1 $04
    ld a, $0a                                     ; $428b: $3e $0a
    ld hl, $6000                                  ; $428d: $21 $00 $60
    ld de, $8800                                  ; $4290: $11 $00 $88
    ld bc, $1000                                  ; $4293: $01 $00 $10
    call BankedTileCopy                           ; $4296: $cd $e1 $04
    call LoadPicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $4299: $cd $5c $48
    call GS04_LoadPicrossCourseSelectGraphicsBySelectedCourse; $429c: $cd $3a $49
    call GS04_DrawCompletedPuzzleMarkersForSelectedSaveSlotAndCourse; $429f: $cd $c4 $4a
    call ClearShadowOAMBuffer                     ; $42a2: $cd $b3 $05
    ld b, $03                                     ; $42a5: $06 $03
    ld hl, $4e80                                  ; $42a7: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $42aa: $cd $db $05
    ld b, $03                                     ; $42ad: $06 $03
    ld hl, $4ee9                                  ; $42af: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $42b2: $cd $db $05
    xor a                                         ; $42b5: $af
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame; $42b6: $cd $a8 $48
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanel; $42b9: $cd $98 $4c
    call GS04_PlayCursorPreviewSfxBySelectedCourse; $42bc: $cd $08 $49
    call EnableLCDFromShadow                      ; $42bf: $cd $9f $04
    call GS04_PlayPicrossCourseSelectFadeInBySelectedCourse; $42c2: $cd $14 $4a
    ld hl, rStatePhase_Current                    ; $42c5: $21 $35 $d6
    inc [hl]                                      ; $42c8: $34
    ret                                           ; $42c9: $c9


GS04_StatePhase_04_ReturnFromPuzzleTransitionAndHandleUnlockFlow::
    ld a, $43                                     ; $42ca: $3e $43
    ld [rLCDCShadow], a                           ; $42cc: $ea $2e $c3
    xor a                                         ; $42cf: $af
    ld [rBGPShadow], a                            ; $42d0: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $42d3: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $42d6: $ea $31 $c3
    ld [rSCXShadow], a                            ; $42d9: $ea $32 $c3
    ld [rSCYShadow], a                            ; $42dc: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $42df: $cd $9d $05
    call FillBGMap1WithTile01                     ; $42e2: $cd $a8 $05
    ld a, $0b                                     ; $42e5: $3e $0b
    ld hl, $5000                                  ; $42e7: $21 $00 $50
    ld de, $8000                                  ; $42ea: $11 $00 $80
    ld bc, $0300                                  ; $42ed: $01 $00 $03
    call BankedTileCopy                           ; $42f0: $cd $e1 $04
    ld a, $07                                     ; $42f3: $3e $07
    ld hl, $7b00                                  ; $42f5: $21 $00 $7b
    ld de, $8300                                  ; $42f8: $11 $00 $83
    ld bc, $0200                                  ; $42fb: $01 $00 $02
    call BankedTileCopy                           ; $42fe: $cd $e1 $04
    ld a, $0a                                     ; $4301: $3e $0a
    ld hl, $6000                                  ; $4303: $21 $00 $60
    ld de, $8800                                  ; $4306: $11 $00 $88
    ld bc, $1000                                  ; $4309: $01 $00 $10
    call BankedTileCopy                           ; $430c: $cd $e1 $04
    call LoadPicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $430f: $cd $5c $48
    call GS04_LoadPicrossCourseSelectGraphicsBySelectedCourse; $4312: $cd $3a $49
    call GS04_DrawCompletedPuzzleMarkersForSelectedSaveSlotAndCourseExceptCurrentSelection; $4315: $cd $f5 $4a
    ld a, [rSelectedPuzzleStatusData]             ; $4318: $fa $4c $d8
    bit 7, a                                      ; $431b: $cb $7f
    jr z, .ContinueAfterSelectedPuzzleCompletedMarkerCheck; $431d: $28 $0b

    ld a, [rPuzzleCursorColumn]                   ; $431f: $fa $36 $d6
    ld c, a                                       ; $4322: $4f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4323: $fa $37 $d6
    ld b, a                                       ; $4326: $47
    call GS04_DrawCompletedPuzzleMarkerAtGridPosition; $4327: $cd $32 $4b

.ContinueAfterSelectedPuzzleCompletedMarkerCheck:
    call ClearShadowOAMBuffer                     ; $432a: $cd $b3 $05
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanelFromSelectedPuzzleCache; $432d: $cd $0e $4e
    ld b, $03                                     ; $4330: $06 $03
    ld hl, $4e80                                  ; $4332: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $4335: $cd $db $05
    ld a, [rPuzzlePostClearFlowFlag]              ; $4338: $fa $05 $d8
    and a                                         ; $433b: $a7
    push af                                       ; $433c: $f5
    jr nz, .BeginPostReturnFadeInAndResultFlow    ; $433d: $20 $08

    ld b, $03                                     ; $433f: $06 $03
    ld hl, $4ee9                                  ; $4341: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $4344: $cd $db $05

.BeginPostReturnFadeInAndResultFlow:
    xor a                                         ; $4347: $af
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame; $4348: $cd $a8 $48
    call GS04_PlayCursorPreviewSfxBySelectedCourse; $434b: $cd $08 $49
    call EnableLCDFromShadow                      ; $434e: $cd $9f $04
    call GS04_PlayPicrossCourseSelectFadeInBySelectedCourse; $4351: $cd $14 $4a
    pop af                                        ; $4354: $f1
    jp z, GS04_ReturnToIdlePhaseAndRefreshSaveChecksums; $4355: $ca $96 $45

    call GS04_HandlePostReturnClearStatusChangeAnimationAndPrompt; $4358: $cd $9e $45
    ld a, [rSelectedSaveSlotIndex]                ; $435b: $fa $65 $a0
    ld c, a                                       ; $435e: $4f
    ld b, $00                                     ; $435f: $06 $00
    ld hl, rSaveSlot1UnlockProgressState          ; $4361: $21 $87 $a3
    add hl, bc                                    ; $4364: $09
    ld a, [hl]                                    ; $4365: $7e
    cp $03                                        ; $4366: $fe $03
    jp z, GS04_ReturnToIdlePhaseAndRefreshSaveChecksums; $4368: $ca $96 $45

    ld hl, rSaveSlot1PicrossKinokoStarClearedPuzzleCount; $436b: $21 $8a $a3
    add hl, bc                                    ; $436e: $09
    ld a, [hl]                                    ; $436f: $7e
    cp $40                                        ; $4370: $fe $40
    jp nz, GS04_ReturnToIdlePhaseAndRefreshSaveChecksums; $4372: $c2 $96 $45

    ld hl, rSaveSlot1UnlockProgressState          ; $4375: $21 $87 $a3
    add hl, bc                                    ; $4378: $09
    inc [hl]                                      ; $4379: $34
    ld a, [hl]                                    ; $437a: $7e
    cp $03                                        ; $437b: $fe $03
    jp z, GS04_RunTimeTrialUnlockMessageFlowAndReturnToCourseSelect; $437d: $ca $75 $44

    ld hl, rSaveSlot1PicrossKinokoStarClearedPuzzleCount; $4380: $21 $8a $a3
    add hl, bc                                    ; $4383: $09
    xor a                                         ; $4384: $af
    ld [hl], a                                    ; $4385: $77
    call RefreshSaveValidationChecksumsAndMirrors ; $4386: $cd $1c $1b
    ld bc, $003c                                  ; $4389: $01 $3c $00
    call DelayFramesByBC                          ; $438c: $cd $f7 $05
    ld a, $05                                     ; $438f: $3e $05
    call CallSoundCommandDispatcher               ; $4391: $cd $b3 $03
    ld c, $00                                     ; $4394: $0e $00
    ld a, $01                                     ; $4396: $3e $01
    call CallSoundCommandDispatcher               ; $4398: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $439b: $cd $96 $03
    ld c, $00                                     ; $439e: $0e $00
    ld a, $01                                     ; $43a0: $3e $01
    call CallSoundCommandDispatcher               ; $43a2: $cd $b3 $03
    call ClearShadowOAMBuffer                     ; $43a5: $cd $b3 $05
    call GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse; $43a8: $cd $3e $4a
    call DisableLCDAtVBlank                       ; $43ab: $cd $80 $04
    ld b, $01                                     ; $43ae: $06 $01
    ld hl, LoadPicrossCourseSelectGraphicsBySelectedCourse_Banked; $43b0: $21 $9e $49
    call SwitchBankToBAndJumpToHL                 ; $43b3: $cd $db $05
    ld a, $7b                                     ; $43b6: $3e $7b
    ld [rTilemapToTileDataAddressLookupTableLow], a; $43b8: $ea $63 $cd
    ld a, $16                                     ; $43bb: $3e $16
    ld [rTilemapToTileDataAddressLookupTableHigh], a; $43bd: $ea $64 $cd
    ld c, $00                                     ; $43c0: $0e $00
    ld a, $01                                     ; $43c2: $3e $01
    call CallSoundCommandDispatcher               ; $43c4: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $43c7: $cd $96 $03
    ld c, $07                                     ; $43ca: $0e $07
    ld a, $01                                     ; $43cc: $3e $01
    call CallSoundCommandDispatcher               ; $43ce: $cd $b3 $03
    ld a, $2f                                     ; $43d1: $3e $2f
    ld [rLYCShadow], a                            ; $43d3: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags             ; $43d6: $21 $37 $c3
    set 6, [hl]                                   ; $43d9: $cb $f6
    ld hl, rIE                                    ; $43db: $21 $ff $ff
    set 1, [hl]                                   ; $43de: $cb $ce
    ld a, $02                                     ; $43e0: $3e $02
    ld [rLCDCInterruptDispatchIndex], a           ; $43e2: $ea $38 $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $43e5: $ea $50 $c3
    call EnableLCDFromShadow                      ; $43e8: $cd $9f $04
    ld b, $01                                     ; $43eb: $06 $01
    ld hl, PlayPicrossCourseSelectFadeInBySelectedCourse_Banked; $43ed: $21 $68 $4a
    call SwitchBankToBAndJumpToHL                 ; $43f0: $cd $db $05
    ld a, $10                                     ; $43f3: $3e $10
    ld [rMessageScriptStreamResetEntryLow], a     ; $43f5: $ea $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $43f8: $ea $2b $d8
    ld a, $20                                     ; $43fb: $3e $20
    ld [rMessageScriptStreamResetEntryHigh], a    ; $43fd: $ea $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $4400: $ea $2c $d8
    ld a, $90                                     ; $4403: $3e $90
    ld [rMessageScriptStreamLimitLow], a          ; $4405: $ea $45 $d8
    ld a, $58                                     ; $4408: $3e $58
    ld [rMessageScriptStreamLimitHigh], a         ; $440a: $ea $46 $d8
    ld a, $ae                                     ; $440d: $3e $ae
    ld [rMessageScriptStreamPointerLow], a        ; $440f: $ea $2d $d8
    ld a, $40                                     ; $4412: $3e $40
    ld [rMessageScriptStreamPointerHigh], a       ; $4414: $ea $2e $d8
    call RunMessageScriptUntilEnd                 ; $4417: $cd $97 $50
    call WaitForAConfirmOnBottomPrompt            ; $441a: $cd $0c $51
    xor a                                         ; $441d: $af
    ld [rPuzzleCursorColumn], a                   ; $441e: $ea $36 $d6
    ld [rPuzzleAndMenuCursorRow], a               ; $4421: $ea $37 $d6
    ld bc, $003c                                  ; $4424: $01 $3c $00
    call DelayFramesByBC                          ; $4427: $cd $f7 $05
    ld a, $05                                     ; $442a: $3e $05
    call CallSoundCommandDispatcher               ; $442c: $cd $b3 $03
    ld c, $00                                     ; $442f: $0e $00
    ld a, $01                                     ; $4431: $3e $01
    call CallSoundCommandDispatcher               ; $4433: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $4436: $cd $96 $03
    ld c, $00                                     ; $4439: $0e $00
    ld a, $01                                     ; $443b: $3e $01
    call CallSoundCommandDispatcher               ; $443d: $cd $b3 $03
    ld b, $01                                     ; $4440: $06 $01
    ld hl, PlayPicrossCourseSelectFadeOutBySelectedCourse_Banked; $4442: $21 $96 $4a
    call SwitchBankToBAndJumpToHL                 ; $4445: $cd $db $05
    call DisableLCDAtVBlank                       ; $4448: $cd $80 $04
    ld hl, rLCDCInterruptControlFlags             ; $444b: $21 $37 $c3
    res 6, [hl]                                   ; $444e: $cb $b6
    ld hl, rIE                                    ; $4450: $21 $ff $ff
    res 1, [hl]                                   ; $4453: $cb $8e
    xor a                                         ; $4455: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $4456: $ea $38 $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $4459: $ea $50 $c3
    ld a, [rSelectedSaveSlotIndex]                ; $445c: $fa $65 $a0
    ld c, a                                       ; $445f: $4f
    ld b, $00                                     ; $4460: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4462: $21 $8d $a3
    add hl, bc                                    ; $4465: $09
    inc [hl]                                      ; $4466: $34
    call GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $4467: $cd $82 $48
    xor a                                         ; $446a: $af
    ld [rStatePhase_Current], a                   ; $446b: $ea $35 $d6
    ld hl, rGameState_Current                     ; $446e: $21 $34 $d6
    dec [hl]                                      ; $4471: $35
    jp RefreshSaveValidationChecksumsAndMirrors   ; $4472: $c3 $1c $1b


GS04_RunTimeTrialUnlockMessageFlowAndReturnToCourseSelect::
    call RefreshSaveValidationChecksumsAndMirrors ; $4475: $cd $1c $1b
    ld bc, $003c                                  ; $4478: $01 $3c $00
    call DelayFramesByBC                          ; $447b: $cd $f7 $05
    ld a, $05                                     ; $447e: $3e $05
    call CallSoundCommandDispatcher               ; $4480: $cd $b3 $03
    ld c, $00                                     ; $4483: $0e $00
    ld a, $01                                     ; $4485: $3e $01
    call CallSoundCommandDispatcher               ; $4487: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $448a: $cd $96 $03
    ld c, $00                                     ; $448d: $0e $00
    ld a, $01                                     ; $448f: $3e $01
    call CallSoundCommandDispatcher               ; $4491: $cd $b3 $03
    call ClearShadowOAMBuffer                     ; $4494: $cd $b3 $05
    call GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse; $4497: $cd $3e $4a
    call DisableLCDAtVBlank                       ; $449a: $cd $80 $04
    ld b, $01                                     ; $449d: $06 $01
    ld hl, LoadPicrossCourseSelectGraphicsBySelectedCourse_Banked; $449f: $21 $9e $49
    call SwitchBankToBAndJumpToHL                 ; $44a2: $cd $db $05
    ld a, $7b                                     ; $44a5: $3e $7b
    ld [rTilemapToTileDataAddressLookupTableLow], a; $44a7: $ea $63 $cd
    ld a, $16                                     ; $44aa: $3e $16
    ld [rTilemapToTileDataAddressLookupTableHigh], a; $44ac: $ea $64 $cd
    ld c, $00                                     ; $44af: $0e $00
    ld a, $01                                     ; $44b1: $3e $01
    call CallSoundCommandDispatcher               ; $44b3: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $44b6: $cd $96 $03
    ld c, $06                                     ; $44b9: $0e $06
    ld a, $01                                     ; $44bb: $3e $01
    call CallSoundCommandDispatcher               ; $44bd: $cd $b3 $03
    ld a, $2f                                     ; $44c0: $3e $2f
    ld [rLYCShadow], a                            ; $44c2: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags             ; $44c5: $21 $37 $c3
    set 6, [hl]                                   ; $44c8: $cb $f6
    ld hl, rIE                                    ; $44ca: $21 $ff $ff
    set 1, [hl]                                   ; $44cd: $cb $ce
    ld a, $02                                     ; $44cf: $3e $02
    ld [rLCDCInterruptDispatchIndex], a           ; $44d1: $ea $38 $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $44d4: $ea $50 $c3
    call EnableLCDFromShadow                      ; $44d7: $cd $9f $04
    ld b, $01                                     ; $44da: $06 $01
    ld hl, PlayPicrossCourseSelectFadeInBySelectedCourse_Banked; $44dc: $21 $68 $4a
    call SwitchBankToBAndJumpToHL                 ; $44df: $cd $db $05
    ld a, $10                                     ; $44e2: $3e $10
    ld [rMessageScriptStreamResetEntryLow], a     ; $44e4: $ea $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $44e7: $ea $2b $d8
    ld a, $20                                     ; $44ea: $3e $20
    ld [rMessageScriptStreamResetEntryHigh], a    ; $44ec: $ea $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $44ef: $ea $2c $d8
    ld a, $90                                     ; $44f2: $3e $90
    ld [rMessageScriptStreamLimitLow], a          ; $44f4: $ea $45 $d8
    ld a, $58                                     ; $44f7: $3e $58
    ld [rMessageScriptStreamLimitHigh], a         ; $44f9: $ea $46 $d8
    ld a, $fa                                     ; $44fc: $3e $fa
    ld [rMessageScriptStreamPointerLow], a        ; $44fe: $ea $2d $d8
    ld a, $40                                     ; $4501: $3e $40
    ld [rMessageScriptStreamPointerHigh], a       ; $4503: $ea $2e $d8
    call RunMessageScriptUntilEnd                 ; $4506: $cd $97 $50
    call WaitForAConfirmOnBottomPrompt            ; $4509: $cd $0c $51
    call GS04_ClearMessagePromptRows              ; $450c: $cd $9e $50
    ld a, $50                                     ; $450f: $3e $50
    ld [rMessageScriptStreamPointerLow], a        ; $4511: $ea $2d $d8
    ld a, $41                                     ; $4514: $3e $41
    ld [rMessageScriptStreamPointerHigh], a       ; $4516: $ea $2e $d8
    call RunMessageScriptUntilEnd                 ; $4519: $cd $97 $50
    call WaitForAConfirmOnBottomPrompt            ; $451c: $cd $0c $51
    call GS04_ClearMessagePromptRows              ; $451f: $cd $9e $50
    ld a, $8e                                     ; $4522: $3e $8e
    ld [rMessageScriptStreamPointerLow], a        ; $4524: $ea $2d $d8
    ld a, $41                                     ; $4527: $3e $41
    ld [rMessageScriptStreamPointerHigh], a       ; $4529: $ea $2e $d8
    call RunMessageScriptUntilEnd                 ; $452c: $cd $97 $50
    call WaitForAConfirmOnBottomPrompt            ; $452f: $cd $0c $51
    call GS04_ClearMessagePromptRows              ; $4532: $cd $9e $50
    ld a, $0a                                     ; $4535: $3e $0a
    ld [rMessageScriptStreamPointerLow], a        ; $4537: $ea $2d $d8
    ld a, $42                                     ; $453a: $3e $42
    ld [rMessageScriptStreamPointerHigh], a       ; $453c: $ea $2e $d8
    call RunMessageScriptUntilEnd                 ; $453f: $cd $97 $50
    call WaitForAConfirmOnBottomPrompt            ; $4542: $cd $0c $51
    ld bc, $003c                                  ; $4545: $01 $3c $00
    call DelayFramesByBC                          ; $4548: $cd $f7 $05
    ld a, $05                                     ; $454b: $3e $05
    call CallSoundCommandDispatcher               ; $454d: $cd $b3 $03
    ld c, $00                                     ; $4550: $0e $00
    ld a, $01                                     ; $4552: $3e $01
    call CallSoundCommandDispatcher               ; $4554: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $4557: $cd $96 $03
    ld c, $00                                     ; $455a: $0e $00
    ld a, $01                                     ; $455c: $3e $01
    call CallSoundCommandDispatcher               ; $455e: $cd $b3 $03
    ld b, $01                                     ; $4561: $06 $01
    ld hl, PlayPicrossCourseSelectFadeOutBySelectedCourse_Banked; $4563: $21 $96 $4a
    call SwitchBankToBAndJumpToHL                 ; $4566: $cd $db $05
    call DisableLCDAtVBlank                       ; $4569: $cd $80 $04
    ld hl, rLCDCInterruptControlFlags             ; $456c: $21 $37 $c3
    res 6, [hl]                                   ; $456f: $cb $b6
    ld hl, rIE                                    ; $4571: $21 $ff $ff
    res 1, [hl]                                   ; $4574: $cb $8e
    xor a                                         ; $4576: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $4577: $ea $38 $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $457a: $ea $50 $c3
    ld a, [rSelectedSaveSlotIndex]                ; $457d: $fa $65 $a0
    ld c, a                                       ; $4580: $4f
    ld b, $00                                     ; $4581: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4583: $21 $8d $a3
    add hl, bc                                    ; $4586: $09
    inc [hl]                                      ; $4587: $34
    call GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $4588: $cd $82 $48
    xor a                                         ; $458b: $af
    ld [rStatePhase_Current], a                   ; $458c: $ea $35 $d6
    ld hl, rGameState_Current                     ; $458f: $21 $34 $d6
    dec [hl]                                      ; $4592: $35
    jp RefreshSaveValidationChecksumsAndMirrors   ; $4593: $c3 $1c $1b


GS04_ReturnToIdlePhaseAndRefreshSaveChecksums::
    ld a, $01                                     ; $4596: $3e $01
    ld [rStatePhase_Current], a                   ; $4598: $ea $35 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $459b: $c3 $1c $1b


GS04_HandlePostReturnClearStatusChangeAnimationAndPrompt::
    ld a, [rSelectedSaveSlotIndex]                ; $459e: $fa $65 $a0
    ld c, a                                       ; $45a1: $4f
    ld b, $00                                     ; $45a2: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $45a4: $21 $8d $a3
    add hl, bc                                    ; $45a7: $09
    ld a, [hl]                                    ; $45a8: $7e
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot; $45a9: $21 $82 $50
    add hl, bc                                    ; $45ac: $09
    ld c, [hl]                                    ; $45ad: $4e
    add hl, bc                                    ; $45ae: $09
    sla a                                         ; $45af: $cb $27
    ld c, a                                       ; $45b1: $4f
    add hl, bc                                    ; $45b2: $09
    ld a, [hl+]                                   ; $45b3: $2a
    ld h, [hl]                                    ; $45b4: $66
    ld l, a                                       ; $45b5: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $45b6: $fa $37 $d6
    sla a                                         ; $45b9: $cb $27
    sla a                                         ; $45bb: $cb $27
    sla a                                         ; $45bd: $cb $27
    ld c, a                                       ; $45bf: $4f
    ld a, [rPuzzleCursorColumn]                   ; $45c0: $fa $36 $d6
    or c                                          ; $45c3: $b1
    ld c, a                                       ; $45c4: $4f
    ld b, $00                                     ; $45c5: $06 $00
    add hl, bc                                    ; $45c7: $09
    ld a, [hl]                                    ; $45c8: $7e
    ld hl, rSelectedPuzzleStatusData              ; $45c9: $21 $4c $d8
    xor [hl]                                      ; $45cc: $ae
    bit 7, a                                      ; $45cd: $cb $7f
    jr z, .BeginPostResultPromptDelay             ; $45cf: $28 $38

    ld c, $08                                     ; $45d1: $0e $08
    ld a, $02                                     ; $45d3: $3e $02
    call CallSoundCommandDispatcher               ; $45d5: $cd $b3 $03
    ld c, $08                                     ; $45d8: $0e $08

.AnimateCursorFrame1BeforeCompletedMarker:
    push bc                                       ; $45da: $c5
    call ClearShadowOAMBuffer                     ; $45db: $cd $b3 $05
    ld a, $01                                     ; $45de: $3e $01
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame; $45e0: $cd $a8 $48
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanel; $45e3: $cd $98 $4c
    rst RST_08                                    ; $45e6: $cf
    pop bc                                        ; $45e7: $c1
    dec c                                         ; $45e8: $0d
    jr nz, .AnimateCursorFrame1BeforeCompletedMarker; $45e9: $20 $ef

    ld a, [rPuzzleCursorColumn]                   ; $45eb: $fa $36 $d6
    ld c, a                                       ; $45ee: $4f
    ld a, [rPuzzleAndMenuCursorRow]               ; $45ef: $fa $37 $d6
    ld b, a                                       ; $45f2: $47
    call GS04_DrawCompletedPuzzleMarkerAtGridPosition; $45f3: $cd $32 $4b
    ld c, $08                                     ; $45f6: $0e $08

.AnimateCursorFrame2AfterCompletedMarker:
    push bc                                       ; $45f8: $c5
    call ClearShadowOAMBuffer                     ; $45f9: $cd $b3 $05
    ld a, $02                                     ; $45fc: $3e $02
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame; $45fe: $cd $a8 $48
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanel; $4601: $cd $98 $4c
    rst RST_08                                    ; $4604: $cf
    pop bc                                        ; $4605: $c1
    dec c                                         ; $4606: $0d
    jr nz, .AnimateCursorFrame2AfterCompletedMarker; $4607: $20 $ef

.BeginPostResultPromptDelay:
    rst RST_08                                    ; $4609: $cf
    ld bc, $005a                                  ; $460a: $01 $5a $00

.PostResultPromptLoop:
    push bc                                       ; $460d: $c5
    call ClearShadowOAMBuffer                     ; $460e: $cd $b3 $05
    ld b, $03                                     ; $4611: $06 $03
    ld hl, $4ea6                                  ; $4613: $21 $a6 $4e
    call SwitchBankToBAndJumpToHL                 ; $4616: $cd $db $05
    ld a, [rVBlankFrameCounter]                   ; $4619: $fa $3a $c3
    bit 2, a                                      ; $461c: $cb $57
    jr nz, .DrawPostResultPromptFrame             ; $461e: $20 $04

    xor a                                         ; $4620: $af
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame; $4621: $cd $a8 $48

.DrawPostResultPromptFrame:
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanel; $4624: $cd $98 $4c
    rst RST_08                                    ; $4627: $cf
    pop bc                                        ; $4628: $c1
    ld a, [rInputButtonsPressed]                  ; $4629: $fa $1e $c3
    and a                                         ; $462c: $a7
    jr nz, .AdvanceSelectionAfterPostResultPrompt ; $462d: $20 $05

    dec bc                                        ; $462f: $0b
    ld a, c                                       ; $4630: $79
    or b                                          ; $4631: $b0
    jr nz, .PostResultPromptLoop                  ; $4632: $20 $d9

.AdvanceSelectionAfterPostResultPrompt:
    jp GS04_AdvanceSelectionToNextUnclearedPuzzleIfPossible; $4634: $c3 $b8 $4f


GS04_StatePhase_01_PicrossCoursePuzzleSelectScreenIdle::
    ld b, $03                                     ; $4637: $06 $03
    ld hl, $4ee9                                  ; $4639: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $463c: $cd $db $05
    xor a                                         ; $463f: $af
    call GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame; $4640: $cd $a8 $48
    call GS04_DrawSelectedPicrossCoursePuzzleInfoPanel; $4643: $cd $98 $4c
    call GS04_HandlePicrossCoursePuzzleSelectDirectionalInput; $4646: $cd $c3 $48
    ld a, [rInputButtonsPressed]                  ; $4649: $fa $1e $c3
    and $09                                       ; $464c: $e6 $09
    jr z, .CheckCancelInputB                      ; $464e: $28 $0c

    ld c, $03                                     ; $4650: $0e $03
    ld a, $02                                     ; $4652: $3e $02
    call CallSoundCommandDispatcher               ; $4654: $cd $b3 $03
    ld hl, rStatePhase_Current                    ; $4657: $21 $35 $d6
    inc [hl]                                      ; $465a: $34
    ret                                           ; $465b: $c9


.CheckCancelInputB:
    ld a, [rInputButtonsPressed]                  ; $465c: $fa $1e $c3
    and $02                                       ; $465f: $e6 $02
    jr z, .ReturnFromIdlePhaseNoSelectionInput    ; $4661: $28 $0d

    ld c, $04                                     ; $4663: $0e $04
    ld a, $02                                     ; $4665: $3e $02
    call CallSoundCommandDispatcher               ; $4667: $cd $b3 $03
    ld a, $03                                     ; $466a: $3e $03
    ld [rStatePhase_Current], a                   ; $466c: $ea $35 $d6
    ret                                           ; $466f: $c9


.ReturnFromIdlePhaseNoSelectionInput:
    ret                                           ; $4670: $c9


GS04_StatePhase_05_ReturnFromPuzzleTransitionAndCommitResult::
    ld bc, $003c                                  ; $4671: $01 $3c $00
    call DelayFramesByBC                          ; $4674: $cd $f7 $05
    ld a, $05                                     ; $4677: $3e $05
    call CallSoundCommandDispatcher               ; $4679: $cd $b3 $03
    ld c, $00                                     ; $467c: $0e $00
    ld a, $01                                     ; $467e: $3e $01
    call CallSoundCommandDispatcher               ; $4680: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $4683: $cd $96 $03
    ld c, $00                                     ; $4686: $0e $00
    ld a, $01                                     ; $4688: $3e $01
    call CallSoundCommandDispatcher               ; $468a: $cd $b3 $03
    call GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse; $468d: $cd $3e $4a
    call DisableLCDAtVBlank                       ; $4690: $cd $80 $04
    call GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $4693: $cd $82 $48
    xor a                                         ; $4696: $af
    ld [rPuzzleTimerSecondOnes], a                ; $4697: $ea $0b $d8
    ld [rPuzzleTimerSecondTens], a                ; $469a: $ea $0c $d8
    ld [rPuzzleTimerMinuteOnes], a                ; $469d: $ea $09 $d8
    ld a, $03                                     ; $46a0: $3e $03
    ld [rPuzzleTimerMinuteTens], a                ; $46a2: $ea $0a $d8
    xor a                                         ; $46a5: $af
    ld [rHintPopupSelection], a                   ; $46a6: $ea $33 $d8
    ld a, $01                                     ; $46a9: $3e $01
    ld [rPuzzlePostClearFlowFlag], a              ; $46ab: $ea $05 $d8
    call LoadPicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $46ae: $cd $5c $48
    call GS04_LoadSelectedPicrossCoursePuzzleStatusAndTimeDataRecord; $46b1: $cd $05 $4f
    call GS04_IncrementSelectedPicrossCoursePuzzleClearCountIfAllowed; $46b4: $cd $76 $4b
    call UpdateSelectedPicrossCoursePuzzleClearStatusAndTimes; $46b7: $cd $a9 $4b
    call RefreshSaveValidationChecksumsAndMirrors ; $46ba: $cd $1c $1b
    ld a, $04                                     ; $46bd: $3e $04
    ld [rStatePhase_Current], a                   ; $46bf: $ea $35 $d6
    ret                                           ; $46c2: $c9


GS04_StatePhase_02_ConfirmSelectionTransitionToPuzzle::
    ld bc, $003c                                  ; $46c3: $01 $3c $00
    call DelayFramesByBC                          ; $46c6: $cd $f7 $05
    ld a, $05                                     ; $46c9: $3e $05
    call CallSoundCommandDispatcher               ; $46cb: $cd $b3 $03
    ld c, $00                                     ; $46ce: $0e $00
    ld a, $01                                     ; $46d0: $3e $01
    call CallSoundCommandDispatcher               ; $46d2: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $46d5: $cd $96 $03
    ld c, $00                                     ; $46d8: $0e $00
    ld a, $01                                     ; $46da: $3e $01
    call CallSoundCommandDispatcher               ; $46dc: $cd $b3 $03
    call GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse; $46df: $cd $3e $4a
    call DisableLCDAtVBlank                       ; $46e2: $cd $80 $04
    call GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $46e5: $cd $82 $48
    call GS04_LoadSelectedPicrossCoursePuzzleStatusAndTimeDataRecord; $46e8: $cd $05 $4f
    call GS04_IncrementSelectedPicrossCoursePuzzleClearCountIfAllowed; $46eb: $cd $76 $4b
    ld a, [rSelectedSaveSlotIndex]                ; $46ee: $fa $65 $a0
    ld c, a                                       ; $46f1: $4f
    ld b, $00                                     ; $46f2: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $46f4: $21 $8d $a3
    add hl, bc                                    ; $46f7: $09
    ld a, [hl]                                    ; $46f8: $7e
    sla a                                         ; $46f9: $cb $27
    ld c, a                                       ; $46fb: $4f
    ld hl, GS04_PuzzleDataIndexTableOffsetTableByCourse; $46fc: $21 $28 $47
    add hl, bc                                    ; $46ff: $09
    ld c, [hl]                                    ; $4700: $4e
    inc hl                                        ; $4701: $23
    ld b, [hl]                                    ; $4702: $46
    add hl, bc                                    ; $4703: $09
    ld a, [rPuzzleCursorColumn]                   ; $4704: $fa $36 $d6
    sla a                                         ; $4707: $cb $27
    ld c, a                                       ; $4709: $4f
    ld a, [rPuzzleAndMenuCursorRow]               ; $470a: $fa $37 $d6
    swap a                                        ; $470d: $cb $37
    or c                                          ; $470f: $b1
    ld c, a                                       ; $4710: $4f
    ld b, $00                                     ; $4711: $06 $00
    add hl, bc                                    ; $4713: $09
    ld a, [hl+]                                   ; $4714: $2a
    ld [rPuzzleDataIndexLow], a                   ; $4715: $ea $07 $d8
    ld a, [hl]                                    ; $4718: $7e
    ld [rPuzzleDataIndexHigh], a                  ; $4719: $ea $08 $d8
    xor a                                         ; $471c: $af
    ld [rStatePhase_Current], a                   ; $471d: $ea $35 $d6
    ld a, $0a                                     ; $4720: $3e $0a
    ld [rGameState_Current], a                    ; $4722: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $4725: $c3 $1c $1b


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
    ld bc, $003c                                  ; $482c: $01 $3c $00
    call DelayFramesByBC                          ; $482f: $cd $f7 $05
    ld a, $05                                     ; $4832: $3e $05
    call CallSoundCommandDispatcher               ; $4834: $cd $b3 $03
    ld c, $00                                     ; $4837: $0e $00
    ld a, $01                                     ; $4839: $3e $01
    call CallSoundCommandDispatcher               ; $483b: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $483e: $cd $96 $03
    ld c, $00                                     ; $4841: $0e $00
    ld a, $01                                     ; $4843: $3e $01
    call CallSoundCommandDispatcher               ; $4845: $cd $b3 $03
    call GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse; $4848: $cd $3e $4a
    call DisableLCDAtVBlank                       ; $484b: $cd $80 $04
    call GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $484e: $cd $82 $48
    xor a                                         ; $4851: $af
    ld [rStatePhase_Current], a                   ; $4852: $ea $35 $d6
    ld hl, rGameState_Current                     ; $4855: $21 $34 $d6
    dec [hl]                                      ; $4858: $35
    jp RefreshSaveValidationChecksumsAndMirrors   ; $4859: $c3 $1c $1b


LoadPicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse::
    ld a, [rSelectedSaveSlotIndex]                ; $485c: $fa $65 $a0
    ld c, a                                       ; $485f: $4f
    ld b, $00                                     ; $4860: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4862: $21 $8d $a3
    add hl, bc                                    ; $4865: $09
    ld a, [rSelectedSaveSlotIndex]                ; $4866: $fa $65 $a0
    ld c, a                                       ; $4869: $4f
    sla a                                         ; $486a: $cb $27
    add c                                         ; $486c: $81
    add [hl]                                      ; $486d: $86
    ld c, a                                       ; $486e: $4f
    ld b, $00                                     ; $486f: $06 $00
    ld hl, rSaveSlot1PicrossKinokoCoursePuzzleSelectCursorColumn; $4871: $21 $90 $a3
    add hl, bc                                    ; $4874: $09
    ld a, [hl]                                    ; $4875: $7e
    ld [rPuzzleCursorColumn], a                   ; $4876: $ea $36 $d6
    ld hl, rSaveSlot1PicrossKinokoCoursePuzzleSelectCursorRow; $4879: $21 $99 $a3
    add hl, bc                                    ; $487c: $09
    ld a, [hl]                                    ; $487d: $7e
    ld [rPuzzleAndMenuCursorRow], a               ; $487e: $ea $37 $d6
    ret                                           ; $4881: $c9


GS04_SavePicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse::
    ld a, [rSelectedSaveSlotIndex]                ; $4882: $fa $65 $a0
    ld c, a                                       ; $4885: $4f
    ld b, $00                                     ; $4886: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4888: $21 $8d $a3
    add hl, bc                                    ; $488b: $09
    ld a, [rSelectedSaveSlotIndex]                ; $488c: $fa $65 $a0
    ld c, a                                       ; $488f: $4f
    sla a                                         ; $4890: $cb $27
    add c                                         ; $4892: $81
    add [hl]                                      ; $4893: $86
    ld c, a                                       ; $4894: $4f
    ld b, $00                                     ; $4895: $06 $00
    ld hl, rSaveSlot1PicrossKinokoCoursePuzzleSelectCursorColumn; $4897: $21 $90 $a3
    add hl, bc                                    ; $489a: $09
    ld a, [rPuzzleCursorColumn]                   ; $489b: $fa $36 $d6
    ld [hl], a                                    ; $489e: $77
    ld hl, rSaveSlot1PicrossKinokoCoursePuzzleSelectCursorRow; $489f: $21 $99 $a3
    add hl, bc                                    ; $48a2: $09
    ld a, [rPuzzleAndMenuCursorRow]               ; $48a3: $fa $37 $d6
    ld [hl], a                                    ; $48a6: $77
    ret                                           ; $48a7: $c9


GS04_DrawPicrossCoursePuzzleSelectCursorSpriteByFrame::
    push af                                       ; $48a8: $f5
    ld a, [rPuzzleCursorColumn]                   ; $48a9: $fa $36 $d6
    swap a                                        ; $48ac: $cb $37
    add $20                                       ; $48ae: $c6 $20
    ld b, a                                       ; $48b0: $47
    ld a, [rPuzzleAndMenuCursorRow]               ; $48b1: $fa $37 $d6
    sla a                                         ; $48b4: $cb $27
    sla a                                         ; $48b6: $cb $27
    sla a                                         ; $48b8: $cb $27
    add $32                                       ; $48ba: $c6 $32
    ld c, a                                       ; $48bc: $4f
    pop af                                        ; $48bd: $f1
    add $60                                       ; $48be: $c6 $60
    jp CopyOAMSpriteById                          ; $48c0: $c3 $cb $20


GS04_HandlePicrossCoursePuzzleSelectDirectionalInput::
    ld a, [rInputButtonsPressedOrRepeated]        ; $48c3: $fa $22 $c3
    and $f0                                       ; $48c6: $e6 $f0
    ret z                                         ; $48c8: $c8

    ld c, $0a                                     ; $48c9: $0e $0a
    ld a, $02                                     ; $48cb: $3e $02
    call CallSoundCommandDispatcher               ; $48cd: $cd $b3 $03
    ld hl, rInputButtonsPressedOrRepeated         ; $48d0: $21 $22 $c3
    bit 5, [hl]                                   ; $48d3: $cb $6e
    jr z, .CheckRight                             ; $48d5: $28 $09

    ld a, [rPuzzleCursorColumn]                   ; $48d7: $fa $36 $d6
    dec a                                         ; $48da: $3d
    and $07                                       ; $48db: $e6 $07
    ld [rPuzzleCursorColumn], a                   ; $48dd: $ea $36 $d6

.CheckRight:
    bit 4, [hl]                                   ; $48e0: $cb $66
    jr z, .CheckUp                                ; $48e2: $28 $09

    ld a, [rPuzzleCursorColumn]                   ; $48e4: $fa $36 $d6
    inc a                                         ; $48e7: $3c
    and $07                                       ; $48e8: $e6 $07
    ld [rPuzzleCursorColumn], a                   ; $48ea: $ea $36 $d6

.CheckUp:
    bit 6, [hl]                                   ; $48ed: $cb $76
    jr z, .CheckDown                              ; $48ef: $28 $09

    ld a, [rPuzzleAndMenuCursorRow]               ; $48f1: $fa $37 $d6
    dec a                                         ; $48f4: $3d
    and $07                                       ; $48f5: $e6 $07
    ld [rPuzzleAndMenuCursorRow], a               ; $48f7: $ea $37 $d6

.CheckDown:
    bit 7, [hl]                                   ; $48fa: $cb $7e
    jr z, .Return                                 ; $48fc: $28 $09

    ld a, [rPuzzleAndMenuCursorRow]               ; $48fe: $fa $37 $d6
    inc a                                         ; $4901: $3c
    and $07                                       ; $4902: $e6 $07
    ld [rPuzzleAndMenuCursorRow], a               ; $4904: $ea $37 $d6

.Return:
    ret                                           ; $4907: $c9


GS04_PlayCursorPreviewSfxBySelectedCourse::
    ld a, [rSelectedSaveSlotIndex]                ; $4908: $fa $65 $a0
    ld c, a                                       ; $490b: $4f
    ld b, $00                                     ; $490c: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $490e: $21 $8d $a3
    add hl, bc                                    ; $4911: $09
    ld a, [hl]                                    ; $4912: $7e
    and a                                         ; $4913: $a7
    jr nz, .PlayStarCoursePreviewSfxVariant       ; $4914: $20 $12

    ld c, $00                                     ; $4916: $0e $00
    ld a, $01                                     ; $4918: $3e $01
    call CallSoundCommandDispatcher               ; $491a: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $491d: $cd $96 $03
    ld c, $04                                     ; $4920: $0e $04
    ld a, $01                                     ; $4922: $3e $01
    call CallSoundCommandDispatcher               ; $4924: $cd $b3 $03
    ret                                           ; $4927: $c9


.PlayStarCoursePreviewSfxVariant:
    ld c, $00                                     ; $4928: $0e $00
    ld a, $01                                     ; $492a: $3e $01
    call CallSoundCommandDispatcher               ; $492c: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $492f: $cd $96 $03
    ld c, $10                                     ; $4932: $0e $10
    ld a, $01                                     ; $4934: $3e $01
    call CallSoundCommandDispatcher               ; $4936: $cd $b3 $03
    ret                                           ; $4939: $c9


GS04_LoadPicrossCourseSelectGraphicsBySelectedCourse::
    ld a, [rSelectedSaveSlotIndex]                ; $493a: $fa $65 $a0
    ld c, a                                       ; $493d: $4f
    ld b, $00                                     ; $493e: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4940: $21 $8d $a3
    add hl, bc                                    ; $4943: $09
    ld a, [hl]                                    ; $4944: $7e
    and a                                         ; $4945: $a7
    jr nz, .LoadStarCourseGraphicsVariant         ; $4946: $20 $2b

    ld a, $0a                                     ; $4948: $3e $0a
    ld hl, $7000                                  ; $494a: $21 $00 $70
    ld de, $9300                                  ; $494d: $11 $00 $93
    ld bc, $0500                                  ; $4950: $01 $00 $05
    call BankedTileCopy                           ; $4953: $cd $e1 $04
    ld a, $0a                                     ; $4956: $3e $0a
    ld hl, $7500                                  ; $4958: $21 $00 $75
    ld de, $8800                                  ; $495b: $11 $00 $88
    ld bc, $0100                                  ; $495e: $01 $00 $01
    call BankedTileCopy                           ; $4961: $cd $e1 $04
    ld a, $0c                                     ; $4964: $3e $0c
    ld hl, $7000                                  ; $4966: $21 $00 $70
    ld de, $9800                                  ; $4969: $11 $00 $98
    ld bc, $0400                                  ; $496c: $01 $00 $04
    call BankedTileCopy                           ; $496f: $cd $e1 $04
    ret                                           ; $4972: $c9


.LoadStarCourseGraphicsVariant:
    ld a, $0a                                     ; $4973: $3e $0a
    ld hl, $7600                                  ; $4975: $21 $00 $76
    ld de, $9300                                  ; $4978: $11 $00 $93
    ld bc, $0500                                  ; $497b: $01 $00 $05
    call BankedTileCopy                           ; $497e: $cd $e1 $04
    ld a, $0a                                     ; $4981: $3e $0a
    ld hl, $7b00                                  ; $4983: $21 $00 $7b
    ld de, $8800                                  ; $4986: $11 $00 $88
    ld bc, $0100                                  ; $4989: $01 $00 $01
    call BankedTileCopy                           ; $498c: $cd $e1 $04
    ld a, $0c                                     ; $498f: $3e $0c
    ld hl, $7400                                  ; $4991: $21 $00 $74
    ld de, $9800                                  ; $4994: $11 $00 $98
    ld bc, $0400                                  ; $4997: $01 $00 $04
    call BankedTileCopy                           ; $499a: $cd $e1 $04
    ret                                           ; $499d: $c9


LoadPicrossCourseSelectGraphicsBySelectedCourse_Banked::
    ld a, [rSelectedSaveSlotIndex]                ; $499e: $fa $65 $a0
    ld c, a                                       ; $49a1: $4f
    ld b, $00                                     ; $49a2: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $49a4: $21 $8d $a3
    add hl, bc                                    ; $49a7: $09
    ld a, [hl]                                    ; $49a8: $7e
    and a                                         ; $49a9: $a7
    jr nz, .LoadStarCourseGraphicsAndTilemapVariant; $49aa: $20 $2d

    ld a, $0a                                     ; $49ac: $3e $0a
    ld hl, $7000                                  ; $49ae: $21 $00 $70
    ld de, $9300                                  ; $49b1: $11 $00 $93
    ld bc, $0500                                  ; $49b4: $01 $00 $05
    call BankedTileCopy                           ; $49b7: $cd $e1 $04
    ld a, $0a                                     ; $49ba: $3e $0a
    ld hl, $7500                                  ; $49bc: $21 $00 $75
    ld de, $8800                                  ; $49bf: $11 $00 $88
    ld bc, $0100                                  ; $49c2: $01 $00 $01
    call BankedTileCopy                           ; $49c5: $cd $e1 $04
    ld a, $04                                     ; $49c8: $3e $04
    ld hl, $6c00                                  ; $49ca: $21 $00 $6c
    ld de, $9800                                  ; $49cd: $11 $00 $98
    ld bc, $0400                                  ; $49d0: $01 $00 $04
    call BankedTileCopy                           ; $49d3: $cd $e1 $04
    jp ReturnFromBankedJumpRestoreBank            ; $49d6: $c3 $e7 $05


.LoadStarCourseGraphicsAndTilemapVariant:
    ld a, $0a                                     ; $49d9: $3e $0a
    ld hl, $7600                                  ; $49db: $21 $00 $76
    ld de, $9300                                  ; $49de: $11 $00 $93
    ld bc, $0500                                  ; $49e1: $01 $00 $05
    call BankedTileCopy                           ; $49e4: $cd $e1 $04
    ld a, $0a                                     ; $49e7: $3e $0a
    ld hl, $7b00                                  ; $49e9: $21 $00 $7b
    ld de, $8800                                  ; $49ec: $11 $00 $88
    ld bc, $0100                                  ; $49ef: $01 $00 $01
    call BankedTileCopy                           ; $49f2: $cd $e1 $04
    ld a, $0a                                     ; $49f5: $3e $0a
    ld hl, $7c00                                  ; $49f7: $21 $00 $7c
    ld de, $9100                                  ; $49fa: $11 $00 $91
    ld bc, $0100                                  ; $49fd: $01 $00 $01
    call BankedTileCopy                           ; $4a00: $cd $e1 $04
    ld a, $04                                     ; $4a03: $3e $04
    ld hl, $7000                                  ; $4a05: $21 $00 $70
    ld de, $9800                                  ; $4a08: $11 $00 $98
    ld bc, $0400                                  ; $4a0b: $01 $00 $04
    call BankedTileCopy                           ; $4a0e: $cd $e1 $04
    jp ReturnFromBankedJumpRestoreBank            ; $4a11: $c3 $e7 $05


GS04_PlayPicrossCourseSelectFadeInBySelectedCourse::
    ld a, [rSelectedSaveSlotIndex]                ; $4a14: $fa $65 $a0
    ld c, a                                       ; $4a17: $4f
    ld b, $00                                     ; $4a18: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4a1a: $21 $8d $a3
    add hl, bc                                    ; $4a1d: $09
    ld a, [hl]                                    ; $4a1e: $7e
    and a                                         ; $4a1f: $a7
    jr nz, .PlayStarCourseFadeInVariant           ; $4a20: $20 $0e

    ld b, $03                                     ; $4a22: $06 $03
    ld hl, $46f4                                  ; $4a24: $21 $f4 $46
    ld c, $09                                     ; $4a27: $0e $09
    ld de, $0084                                  ; $4a29: $11 $84 $00
    call PlayScreenTransitionFadeIn               ; $4a2c: $cd $0a $04
    ret                                           ; $4a2f: $c9


.PlayStarCourseFadeInVariant:
    ld b, $03                                     ; $4a30: $06 $03
    ld hl, $4700                                  ; $4a32: $21 $00 $47
    ld c, $0a                                     ; $4a35: $0e $0a
    ld de, $0094                                  ; $4a37: $11 $94 $00
    call PlayScreenTransitionFadeIn               ; $4a3a: $cd $0a $04
    ret                                           ; $4a3d: $c9


GS04_PlayPicrossCourseSelectFadeOutBySelectedCourse::
    ld a, [rSelectedSaveSlotIndex]                ; $4a3e: $fa $65 $a0
    ld c, a                                       ; $4a41: $4f
    ld b, $00                                     ; $4a42: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4a44: $21 $8d $a3
    add hl, bc                                    ; $4a47: $09
    ld a, [hl]                                    ; $4a48: $7e
    and a                                         ; $4a49: $a7
    jr nz, .PlayStarCourseFadeOutVariant          ; $4a4a: $20 $0e

    ld b, $03                                     ; $4a4c: $06 $03
    ld hl, $46ff                                  ; $4a4e: $21 $ff $46
    ld c, $09                                     ; $4a51: $0e $09
    ld de, $0093                                  ; $4a53: $11 $93 $00
    call PlayScreenTransitionFadeOut              ; $4a56: $cd $4b $04
    ret                                           ; $4a59: $c9


.PlayStarCourseFadeOutVariant:
    ld b, $03                                     ; $4a5a: $06 $03
    ld hl, $470b                                  ; $4a5c: $21 $0b $47
    ld c, $0a                                     ; $4a5f: $0e $0a
    ld de, $00a3                                  ; $4a61: $11 $a3 $00
    call PlayScreenTransitionFadeOut              ; $4a64: $cd $4b $04
    ret                                           ; $4a67: $c9


PlayPicrossCourseSelectFadeInBySelectedCourse_Banked::
    ld a, [rSelectedSaveSlotIndex]                ; $4a68: $fa $65 $a0
    ld c, a                                       ; $4a6b: $4f
    ld b, $00                                     ; $4a6c: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4a6e: $21 $8d $a3
    add hl, bc                                    ; $4a71: $09
    ld a, [hl]                                    ; $4a72: $7e
    and a                                         ; $4a73: $a7
    jr nz, .PlayStarCourseFadeInBankedVariant     ; $4a74: $20 $10

    ld b, $03                                     ; $4a76: $06 $03
    ld hl, $46f4                                  ; $4a78: $21 $f4 $46
    ld c, $0c                                     ; $4a7b: $0e $0c
    ld de, $0084                                  ; $4a7d: $11 $84 $00
    call PlayScreenTransitionFadeIn               ; $4a80: $cd $0a $04
    jp ReturnFromBankedJumpRestoreBank            ; $4a83: $c3 $e7 $05


.PlayStarCourseFadeInBankedVariant:
    ld b, $03                                     ; $4a86: $06 $03
    ld hl, $4700                                  ; $4a88: $21 $00 $47
    ld c, $0d                                     ; $4a8b: $0e $0d
    ld de, $0094                                  ; $4a8d: $11 $94 $00
    call PlayScreenTransitionFadeIn               ; $4a90: $cd $0a $04
    jp ReturnFromBankedJumpRestoreBank            ; $4a93: $c3 $e7 $05


PlayPicrossCourseSelectFadeOutBySelectedCourse_Banked::
    ld a, [rSelectedSaveSlotIndex]                ; $4a96: $fa $65 $a0
    ld c, a                                       ; $4a99: $4f
    ld b, $00                                     ; $4a9a: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4a9c: $21 $8d $a3
    add hl, bc                                    ; $4a9f: $09
    ld a, [hl]                                    ; $4aa0: $7e
    and a                                         ; $4aa1: $a7
    jr nz, .PlayStarCourseFadeOutBankedVariant    ; $4aa2: $20 $10

    ld b, $03                                     ; $4aa4: $06 $03
    ld hl, $46ff                                  ; $4aa6: $21 $ff $46
    ld c, $0c                                     ; $4aa9: $0e $0c
    ld de, $0093                                  ; $4aab: $11 $93 $00
    call PlayScreenTransitionFadeOut              ; $4aae: $cd $4b $04
    jp ReturnFromBankedJumpRestoreBank            ; $4ab1: $c3 $e7 $05


.PlayStarCourseFadeOutBankedVariant:
    ld b, $03                                     ; $4ab4: $06 $03
    ld hl, $470b                                  ; $4ab6: $21 $0b $47
    ld c, $0d                                     ; $4ab9: $0e $0d
    ld de, $00a3                                  ; $4abb: $11 $a3 $00
    call PlayScreenTransitionFadeOut              ; $4abe: $cd $4b $04
    jp ReturnFromBankedJumpRestoreBank            ; $4ac1: $c3 $e7 $05


GS04_DrawCompletedPuzzleMarkersForSelectedSaveSlotAndCourse::
    ld a, [rSelectedSaveSlotIndex]                ; $4ac4: $fa $65 $a0
    ld c, a                                       ; $4ac7: $4f
    ld b, $00                                     ; $4ac8: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4aca: $21 $8d $a3
    add hl, bc                                    ; $4acd: $09
    ld a, [hl]                                    ; $4ace: $7e
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot; $4acf: $21 $82 $50
    add hl, bc                                    ; $4ad2: $09
    ld c, [hl]                                    ; $4ad3: $4e
    add hl, bc                                    ; $4ad4: $09
    sla a                                         ; $4ad5: $cb $27
    ld c, a                                       ; $4ad7: $4f
    add hl, bc                                    ; $4ad8: $09
    ld a, [hl+]                                   ; $4ad9: $2a
    ld h, [hl]                                    ; $4ada: $66
    ld l, a                                       ; $4adb: $6f
    ld b, $00                                     ; $4adc: $06 $00

.BeginNextStatusGridRowScan:
    ld c, $00                                     ; $4ade: $0e $00

.ScanStatusGridCellForCompletedMarker:
    ld a, [hl+]                                   ; $4ae0: $2a
    bit 7, a                                      ; $4ae1: $cb $7f
    jr z, .AdvanceToNextStatusGridColumn          ; $4ae3: $28 $03

    call GS04_DrawCompletedPuzzleMarkerAtGridPosition; $4ae5: $cd $32 $4b

.AdvanceToNextStatusGridColumn:
    inc c                                         ; $4ae8: $0c
    ld a, c                                       ; $4ae9: $79
    cp $08                                        ; $4aea: $fe $08
    jr nz, .ScanStatusGridCellForCompletedMarker  ; $4aec: $20 $f2

    inc b                                         ; $4aee: $04
    ld a, b                                       ; $4aef: $78
    cp $08                                        ; $4af0: $fe $08
    jr nz, .BeginNextStatusGridRowScan            ; $4af2: $20 $ea

    ret                                           ; $4af4: $c9


GS04_DrawCompletedPuzzleMarkersForSelectedSaveSlotAndCourseExceptCurrentSelection::
    ld a, [rSelectedSaveSlotIndex]                ; $4af5: $fa $65 $a0
    ld c, a                                       ; $4af8: $4f
    ld b, $00                                     ; $4af9: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4afb: $21 $8d $a3
    add hl, bc                                    ; $4afe: $09
    ld a, [hl]                                    ; $4aff: $7e
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot; $4b00: $21 $82 $50
    add hl, bc                                    ; $4b03: $09
    ld c, [hl]                                    ; $4b04: $4e
    add hl, bc                                    ; $4b05: $09
    sla a                                         ; $4b06: $cb $27
    ld c, a                                       ; $4b08: $4f
    add hl, bc                                    ; $4b09: $09
    ld a, [hl+]                                   ; $4b0a: $2a
    ld h, [hl]                                    ; $4b0b: $66
    ld l, a                                       ; $4b0c: $6f
    ld b, $00                                     ; $4b0d: $06 $00

.BeginNextStatusGridRowScan:
    ld c, $00                                     ; $4b0f: $0e $00

.ScanStatusGridCellForCompletedMarker:
    ld a, [hl+]                                   ; $4b11: $2a
    bit 7, a                                      ; $4b12: $cb $7f
    jr z, .AdvanceToNextStatusGridColumn          ; $4b14: $28 $0f

    ld a, [rPuzzleCursorColumn]                   ; $4b16: $fa $36 $d6
    cp c                                          ; $4b19: $b9
    jr nz, .DrawCompletedMarkerForNonSelectedCell ; $4b1a: $20 $06

    ld a, [rPuzzleAndMenuCursorRow]               ; $4b1c: $fa $37 $d6
    cp b                                          ; $4b1f: $b8
    jr z, .AdvanceToNextStatusGridColumn          ; $4b20: $28 $03

.DrawCompletedMarkerForNonSelectedCell:
    call GS04_DrawCompletedPuzzleMarkerAtGridPosition; $4b22: $cd $32 $4b

.AdvanceToNextStatusGridColumn:
    inc c                                         ; $4b25: $0c
    ld a, c                                       ; $4b26: $79
    cp $08                                        ; $4b27: $fe $08
    jr nz, .ScanStatusGridCellForCompletedMarker  ; $4b29: $20 $e6

    inc b                                         ; $4b2b: $04
    ld a, b                                       ; $4b2c: $78
    cp $08                                        ; $4b2d: $fe $08
    jr nz, .BeginNextStatusGridRowScan            ; $4b2f: $20 $de

    ret                                           ; $4b31: $c9


GS04_DrawCompletedPuzzleMarkerAtGridPosition::
    push bc                                       ; $4b32: $c5
    push hl                                       ; $4b33: $e5
    ld l, b                                       ; $4b34: $68
    ld h, $00                                     ; $4b35: $26 $00
    sla l                                         ; $4b37: $cb $25
    rl h                                          ; $4b39: $cb $14
    sla l                                         ; $4b3b: $cb $25
    rl h                                          ; $4b3d: $cb $14
    sla l                                         ; $4b3f: $cb $25
    rl h                                          ; $4b41: $cb $14
    sla l                                         ; $4b43: $cb $25
    rl h                                          ; $4b45: $cb $14
    sla l                                         ; $4b47: $cb $25
    rl h                                          ; $4b49: $cb $14
    sla c                                         ; $4b4b: $cb $21
    ld b, $00                                     ; $4b4d: $06 $00
    add hl, bc                                    ; $4b4f: $09
    ld bc, $98c4                                  ; $4b50: $01 $c4 $98
    add hl, bc                                    ; $4b53: $09
    ld a, h                                       ; $4b54: $7c
    ld [rSharedSingleTileCommandStreamDestHigh], a; $4b55: $ea $00 $c1
    ld a, l                                       ; $4b58: $7d
    ld [rSharedSingleTileCommandStreamDestLow], a ; $4b59: $ea $01 $c1
    ld a, $01                                     ; $4b5c: $3e $01
    ld [rSharedSingleTileCommandStreamTileCount], a; $4b5e: $ea $02 $c1
    ld a, $55                                     ; $4b61: $3e $55
    ld [rSharedSingleTileCommandStreamTileId], a  ; $4b63: $ea $03 $c1
    ld a, $00                                     ; $4b66: $3e $00
    ld [rSharedSingleTileCommandStreamTerminator], a; $4b68: $ea $04 $c1
    ld a, $00                                     ; $4b6b: $3e $00
    ld bc, rSharedSingleTileCommandStreamDestHigh ; $4b6d: $01 $00 $c1
    call QueueCommandStreamAndProcessIfLCDOff     ; $4b70: $cd $35 $07
    pop hl                                        ; $4b73: $e1
    pop bc                                        ; $4b74: $c1
    ret                                           ; $4b75: $c9


GS04_IncrementSelectedPicrossCoursePuzzleClearCountIfAllowed::
    ld a, [rSelectedSaveSlotIndex]                ; $4b76: $fa $65 $a0
    ld c, a                                       ; $4b79: $4f
    ld b, $00                                     ; $4b7a: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4b7c: $21 $8d $a3
    add hl, bc                                    ; $4b7f: $09
    ld a, [hl]                                    ; $4b80: $7e
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot; $4b81: $21 $82 $50
    add hl, bc                                    ; $4b84: $09
    ld c, [hl]                                    ; $4b85: $4e
    add hl, bc                                    ; $4b86: $09
    sla a                                         ; $4b87: $cb $27
    ld c, a                                       ; $4b89: $4f
    add hl, bc                                    ; $4b8a: $09
    ld a, [hl+]                                   ; $4b8b: $2a
    ld h, [hl]                                    ; $4b8c: $66
    ld l, a                                       ; $4b8d: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4b8e: $fa $37 $d6
    sla a                                         ; $4b91: $cb $27
    sla a                                         ; $4b93: $cb $27
    sla a                                         ; $4b95: $cb $27
    ld c, a                                       ; $4b97: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4b98: $fa $36 $d6
    or c                                          ; $4b9b: $b1
    ld c, a                                       ; $4b9c: $4f
    ld b, $00                                     ; $4b9d: $06 $00
    add hl, bc                                    ; $4b9f: $09
    bit 7, [hl]                                   ; $4ba0: $cb $7e
    ret nz                                        ; $4ba2: $c0

    ld a, [hl]                                    ; $4ba3: $7e
    cp $63                                        ; $4ba4: $fe $63
    ret z                                         ; $4ba6: $c8

    inc [hl]                                      ; $4ba7: $34
    ret                                           ; $4ba8: $c9


UpdateSelectedPicrossCoursePuzzleClearStatusAndTimes::
    xor a                                         ; $4ba9: $af
    ld [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag], a; $4baa: $ea $42 $d8
    ld a, [rSelectedSaveSlotIndex]                ; $4bad: $fa $65 $a0
    ld c, a                                       ; $4bb0: $4f
    ld b, $00                                     ; $4bb1: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4bb3: $21 $8d $a3
    add hl, bc                                    ; $4bb6: $09
    ld a, [hl]                                    ; $4bb7: $7e
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot; $4bb8: $21 $82 $50
    add hl, bc                                    ; $4bbb: $09
    ld c, [hl]                                    ; $4bbc: $4e
    add hl, bc                                    ; $4bbd: $09
    sla a                                         ; $4bbe: $cb $27
    ld c, a                                       ; $4bc0: $4f
    add hl, bc                                    ; $4bc1: $09
    ld a, [hl+]                                   ; $4bc2: $2a
    ld h, [hl]                                    ; $4bc3: $66
    ld l, a                                       ; $4bc4: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4bc5: $fa $37 $d6
    sla a                                         ; $4bc8: $cb $27
    sla a                                         ; $4bca: $cb $27
    sla a                                         ; $4bcc: $cb $27
    ld c, a                                       ; $4bce: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4bcf: $fa $36 $d6
    or c                                          ; $4bd2: $b1
    ld c, a                                       ; $4bd3: $4f
    ld b, $00                                     ; $4bd4: $06 $00
    add hl, bc                                    ; $4bd6: $09
    bit 7, [hl]                                   ; $4bd7: $cb $7e
    push af                                       ; $4bd9: $f5
    jr nz, .UpdateBestClearTime                   ; $4bda: $20 $54

    push hl                                       ; $4bdc: $e5
    ld a, [rSelectedSaveSlotIndex]                ; $4bdd: $fa $65 $a0
    ld c, a                                       ; $4be0: $4f
    ld b, $00                                     ; $4be1: $06 $00
    ld hl, rSaveSlot1PicrossKinokoStarClearedPuzzleCount; $4be3: $21 $8a $a3
    add hl, bc                                    ; $4be6: $09
    inc [hl]                                      ; $4be7: $34
    pop hl                                        ; $4be8: $e1
    set 7, [hl]                                   ; $4be9: $cb $fe
    ld a, [rSelectedSaveSlotIndex]                ; $4beb: $fa $65 $a0
    ld c, a                                       ; $4bee: $4f
    ld b, $00                                     ; $4bef: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4bf1: $21 $8d $a3
    add hl, bc                                    ; $4bf4: $09
    ld a, [hl]                                    ; $4bf5: $7e
    ld hl, GS04_PicrossCourseTimeDataPointerTableOffsetBySaveSlot; $4bf6: $21 $6d $50
    add hl, bc                                    ; $4bf9: $09
    ld c, [hl]                                    ; $4bfa: $4e
    add hl, bc                                    ; $4bfb: $09
    sla a                                         ; $4bfc: $cb $27
    ld c, a                                       ; $4bfe: $4f
    add hl, bc                                    ; $4bff: $09
    ld a, [hl+]                                   ; $4c00: $2a
    ld h, [hl]                                    ; $4c01: $66
    ld l, a                                       ; $4c02: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4c03: $fa $37 $d6
    sla a                                         ; $4c06: $cb $27
    sla a                                         ; $4c08: $cb $27
    sla a                                         ; $4c0a: $cb $27
    ld c, a                                       ; $4c0c: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4c0d: $fa $36 $d6
    or c                                          ; $4c10: $b1
    ld c, a                                       ; $4c11: $4f
    sla a                                         ; $4c12: $cb $27
    add c                                         ; $4c14: $81
    ld c, a                                       ; $4c15: $4f
    ld b, $00                                     ; $4c16: $06 $00
    add hl, bc                                    ; $4c18: $09
    call EncodePuzzleTimerToPackedClearTimeBC     ; $4c19: $cd $0e $50
    ld [hl], c                                    ; $4c1c: $71
    inc hl                                        ; $4c1d: $23
    ld a, [hl]                                    ; $4c1e: $7e
    and $f0                                       ; $4c1f: $e6 $f0
    or b                                          ; $4c21: $b0
    ld [hl], a                                    ; $4c22: $77
    ld a, $01                                     ; $4c23: $3e $01
    ld [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag], a; $4c25: $ea $42 $d8
    ld a, [rHintPopupSelection]                   ; $4c28: $fa $33 $d8
    and a                                         ; $4c2b: $a7
    jr nz, .UpdateBestClearTime                   ; $4c2c: $20 $02

    set 3, [hl]                                   ; $4c2e: $cb $de

.UpdateBestClearTime:
    ld a, [rSelectedSaveSlotIndex]                ; $4c30: $fa $65 $a0
    ld c, a                                       ; $4c33: $4f
    ld b, $00                                     ; $4c34: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4c36: $21 $8d $a3
    add hl, bc                                    ; $4c39: $09
    ld a, [hl]                                    ; $4c3a: $7e
    ld hl, GS04_PicrossCourseTimeDataPointerTableOffsetBySaveSlot; $4c3b: $21 $6d $50
    add hl, bc                                    ; $4c3e: $09
    ld c, [hl]                                    ; $4c3f: $4e
    add hl, bc                                    ; $4c40: $09
    sla a                                         ; $4c41: $cb $27
    ld c, a                                       ; $4c43: $4f
    add hl, bc                                    ; $4c44: $09
    ld a, [hl+]                                   ; $4c45: $2a
    ld h, [hl]                                    ; $4c46: $66
    ld l, a                                       ; $4c47: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4c48: $fa $37 $d6
    sla a                                         ; $4c4b: $cb $27
    sla a                                         ; $4c4d: $cb $27
    sla a                                         ; $4c4f: $cb $27
    ld c, a                                       ; $4c51: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4c52: $fa $36 $d6
    or c                                          ; $4c55: $b1
    ld c, a                                       ; $4c56: $4f
    sla a                                         ; $4c57: $cb $27
    add c                                         ; $4c59: $81
    ld c, a                                       ; $4c5a: $4f
    ld b, $00                                     ; $4c5b: $06 $00
    add hl, bc                                    ; $4c5d: $09
    inc hl                                        ; $4c5e: $23
    push hl                                       ; $4c5f: $e5
    call EncodePuzzleTimerToPackedClearTimeBC     ; $4c60: $cd $0e $50
    ld a, [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag]; $4c63: $fa $42 $d8
    and a                                         ; $4c66: $a7
    jr nz, .StoreNewBestClearTime                 ; $4c67: $20 $18

    ld a, [hl+]                                   ; $4c69: $2a
    and $70                                       ; $4c6a: $e6 $70
    swap a                                        ; $4c6c: $cb $37
    cp b                                          ; $4c6e: $b8
    jr z, .CompareBestClearTimeLowByteAndHintUsedOnTie; $4c6f: $28 $04

    jr nc, .SkipBestClearTimeUpdate               ; $4c71: $30 $22

    jr .StoreNewBestClearTime                     ; $4c73: $18 $0c

.CompareBestClearTimeLowByteAndHintUsedOnTie:
    ld a, [hl]                                    ; $4c75: $7e
    cp c                                          ; $4c76: $b9
    jr c, .StoreNewBestClearTime                  ; $4c77: $38 $08

    jr nz, .SkipBestClearTimeUpdate               ; $4c79: $20 $1a

    ld a, [rHintPopupSelection]                   ; $4c7b: $fa $33 $d8
    and a                                         ; $4c7e: $a7
    jr z, .SkipBestClearTimeUpdate                ; $4c7f: $28 $14

.StoreNewBestClearTime:
    pop hl                                        ; $4c81: $e1
    ld a, [hl]                                    ; $4c82: $7e
    and $0f                                       ; $4c83: $e6 $0f
    swap b                                        ; $4c85: $cb $30
    or b                                          ; $4c87: $b0
    ld [hl+], a                                   ; $4c88: $22
    ld [hl], c                                    ; $4c89: $71
    ld a, [rHintPopupSelection]                   ; $4c8a: $fa $33 $d8
    and a                                         ; $4c8d: $a7
    jr nz, .ReturnFromClearStatusAndTimeUpdate    ; $4c8e: $20 $06

    dec hl                                        ; $4c90: $2b
    set 7, [hl]                                   ; $4c91: $cb $fe
    jr .ReturnFromClearStatusAndTimeUpdate        ; $4c93: $18 $01

.SkipBestClearTimeUpdate:
    pop hl                                        ; $4c95: $e1

.ReturnFromClearStatusAndTimeUpdate:
    pop af                                        ; $4c96: $f1
    ret                                           ; $4c97: $c9


GS04_DrawSelectedPicrossCoursePuzzleInfoPanel::
    ld a, [rSelectedSaveSlotIndex]                ; $4c98: $fa $65 $a0
    ld c, a                                       ; $4c9b: $4f
    ld b, $00                                     ; $4c9c: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4c9e: $21 $8d $a3
    add hl, bc                                    ; $4ca1: $09
    ld a, [hl]                                    ; $4ca2: $7e
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot; $4ca3: $21 $82 $50
    add hl, bc                                    ; $4ca6: $09
    ld c, [hl]                                    ; $4ca7: $4e
    add hl, bc                                    ; $4ca8: $09
    sla a                                         ; $4ca9: $cb $27
    ld c, a                                       ; $4cab: $4f
    add hl, bc                                    ; $4cac: $09
    ld a, [hl+]                                   ; $4cad: $2a
    ld h, [hl]                                    ; $4cae: $66
    ld l, a                                       ; $4caf: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4cb0: $fa $37 $d6
    sla a                                         ; $4cb3: $cb $27
    sla a                                         ; $4cb5: $cb $27
    sla a                                         ; $4cb7: $cb $27
    ld c, a                                       ; $4cb9: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4cba: $fa $36 $d6
    or c                                          ; $4cbd: $b1
    ld c, a                                       ; $4cbe: $4f
    ld b, $00                                     ; $4cbf: $06 $00
    add hl, bc                                    ; $4cc1: $09
    ld a, [hl]                                    ; $4cc2: $7e
    push af                                       ; $4cc3: $f5
    and $7f                                       ; $4cc4: $e6 $7f
    call SplitAToDecimalDigitsAndPushHundredsTens ; $4cc6: $cd $6f $19
    add $51                                       ; $4cc9: $c6 $51
    ld bc, $4818                                  ; $4ccb: $01 $18 $48
    call CopyOAMSpriteById                        ; $4cce: $cd $cb $20
    pop af                                        ; $4cd1: $f1
    cp $0a                                        ; $4cd2: $fe $0a
    jr z, .AfterTimesClearedDigits                ; $4cd4: $28 $08

    add $51                                       ; $4cd6: $c6 $51
    ld bc, $4018                                  ; $4cd8: $01 $18 $40
    call CopyOAMSpriteById                        ; $4cdb: $cd $cb $20

.AfterTimesClearedDigits:
    pop af                                        ; $4cde: $f1
    pop af                                        ; $4cdf: $f1
    bit 7, a                                      ; $4ce0: $cb $7f
    jp z, GS04_DrawSelectedPicrossCoursePuzzleInfoPanel_DrawUnclearedPlaceholders; $4ce2: $ca $c7 $4d

    ld a, [rSelectedSaveSlotIndex]                ; $4ce5: $fa $65 $a0
    ld c, a                                       ; $4ce8: $4f
    ld b, $00                                     ; $4ce9: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4ceb: $21 $8d $a3
    add hl, bc                                    ; $4cee: $09
    ld a, [hl]                                    ; $4cef: $7e
    ld hl, GS04_PicrossCourseTimeDataPointerTableOffsetBySaveSlot; $4cf0: $21 $6d $50
    add hl, bc                                    ; $4cf3: $09
    ld c, [hl]                                    ; $4cf4: $4e
    add hl, bc                                    ; $4cf5: $09
    sla a                                         ; $4cf6: $cb $27
    ld c, a                                       ; $4cf8: $4f
    add hl, bc                                    ; $4cf9: $09
    ld a, [hl+]                                   ; $4cfa: $2a
    ld h, [hl]                                    ; $4cfb: $66
    ld l, a                                       ; $4cfc: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4cfd: $fa $37 $d6
    sla a                                         ; $4d00: $cb $27
    sla a                                         ; $4d02: $cb $27
    sla a                                         ; $4d04: $cb $27
    ld c, a                                       ; $4d06: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4d07: $fa $36 $d6
    or c                                          ; $4d0a: $b1
    ld c, a                                       ; $4d0b: $4f
    sla a                                         ; $4d0c: $cb $27
    add c                                         ; $4d0e: $81
    ld c, a                                       ; $4d0f: $4f
    ld b, $00                                     ; $4d10: $06 $00
    add hl, bc                                    ; $4d12: $09
    ld c, [hl]                                    ; $4d13: $4e
    inc hl                                        ; $4d14: $23
    ld b, [hl]                                    ; $4d15: $46
    call DecodePackedPuzzleClearTimeToBCDDigits   ; $4d16: $cd $3c $50
    push bc                                       ; $4d19: $c5
    ld a, b                                       ; $4d1a: $78
    and $f0                                       ; $4d1b: $e6 $f0
    swap a                                        ; $4d1d: $cb $37
    add $51                                       ; $4d1f: $c6 $51
    ld bc, $0818                                  ; $4d21: $01 $18 $08
    call CopyOAMSpriteById                        ; $4d24: $cd $cb $20
    pop bc                                        ; $4d27: $c1
    push bc                                       ; $4d28: $c5
    ld a, b                                       ; $4d29: $78
    and $0f                                       ; $4d2a: $e6 $0f
    add $51                                       ; $4d2c: $c6 $51
    ld bc, $1018                                  ; $4d2e: $01 $18 $10
    call CopyOAMSpriteById                        ; $4d31: $cd $cb $20
    pop bc                                        ; $4d34: $c1
    push bc                                       ; $4d35: $c5
    ld a, c                                       ; $4d36: $79
    and $f0                                       ; $4d37: $e6 $f0
    swap a                                        ; $4d39: $cb $37
    add $51                                       ; $4d3b: $c6 $51
    ld bc, $2018                                  ; $4d3d: $01 $18 $20
    call CopyOAMSpriteById                        ; $4d40: $cd $cb $20
    pop bc                                        ; $4d43: $c1
    ld a, c                                       ; $4d44: $79
    and $0f                                       ; $4d45: $e6 $0f
    add $51                                       ; $4d47: $c6 $51
    ld bc, $2818                                  ; $4d49: $01 $18 $28
    call CopyOAMSpriteById                        ; $4d4c: $cd $cb $20
    ld a, [hl]                                    ; $4d4f: $7e
    call GS04_UpdateFirstClearTimeHintUsedIconTile; $4d50: $cd $6e $4f
    ld a, [rSelectedSaveSlotIndex]                ; $4d53: $fa $65 $a0
    ld c, a                                       ; $4d56: $4f
    ld b, $00                                     ; $4d57: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4d59: $21 $8d $a3
    add hl, bc                                    ; $4d5c: $09
    ld a, [hl]                                    ; $4d5d: $7e
    ld hl, GS04_PicrossCourseTimeDataPointerTableOffsetBySaveSlot; $4d5e: $21 $6d $50
    add hl, bc                                    ; $4d61: $09
    ld c, [hl]                                    ; $4d62: $4e
    add hl, bc                                    ; $4d63: $09
    sla a                                         ; $4d64: $cb $27
    ld c, a                                       ; $4d66: $4f
    add hl, bc                                    ; $4d67: $09
    ld a, [hl+]                                   ; $4d68: $2a
    ld h, [hl]                                    ; $4d69: $66
    ld l, a                                       ; $4d6a: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4d6b: $fa $37 $d6
    sla a                                         ; $4d6e: $cb $27
    sla a                                         ; $4d70: $cb $27
    sla a                                         ; $4d72: $cb $27
    ld c, a                                       ; $4d74: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4d75: $fa $36 $d6
    or c                                          ; $4d78: $b1
    ld c, a                                       ; $4d79: $4f
    sla a                                         ; $4d7a: $cb $27
    add c                                         ; $4d7c: $81
    ld c, a                                       ; $4d7d: $4f
    ld b, $00                                     ; $4d7e: $06 $00
    add hl, bc                                    ; $4d80: $09
    inc hl                                        ; $4d81: $23
    ld a, [hl+]                                   ; $4d82: $2a
    and $f0                                       ; $4d83: $e6 $f0
    swap a                                        ; $4d85: $cb $37
    ld b, a                                       ; $4d87: $47
    ld c, [hl]                                    ; $4d88: $4e
    call DecodePackedPuzzleClearTimeToBCDDigits   ; $4d89: $cd $3c $50
    push bc                                       ; $4d8c: $c5
    ld a, b                                       ; $4d8d: $78
    and $f0                                       ; $4d8e: $e6 $f0
    swap a                                        ; $4d90: $cb $37
    add $51                                       ; $4d92: $c6 $51
    ld bc, $6818                                  ; $4d94: $01 $18 $68
    call CopyOAMSpriteById                        ; $4d97: $cd $cb $20
    pop bc                                        ; $4d9a: $c1
    push bc                                       ; $4d9b: $c5
    ld a, b                                       ; $4d9c: $78
    and $0f                                       ; $4d9d: $e6 $0f
    add $51                                       ; $4d9f: $c6 $51
    ld bc, $7018                                  ; $4da1: $01 $18 $70
    call CopyOAMSpriteById                        ; $4da4: $cd $cb $20
    pop bc                                        ; $4da7: $c1
    push bc                                       ; $4da8: $c5
    ld a, c                                       ; $4da9: $79
    and $f0                                       ; $4daa: $e6 $f0
    swap a                                        ; $4dac: $cb $37
    add $51                                       ; $4dae: $c6 $51
    ld bc, $8018                                  ; $4db0: $01 $18 $80
    call CopyOAMSpriteById                        ; $4db3: $cd $cb $20
    pop bc                                        ; $4db6: $c1
    ld a, c                                       ; $4db7: $79
    and $0f                                       ; $4db8: $e6 $0f
    add $51                                       ; $4dba: $c6 $51
    ld bc, $8818                                  ; $4dbc: $01 $18 $88
    call CopyOAMSpriteById                        ; $4dbf: $cd $cb $20
    dec hl                                        ; $4dc2: $2b
    ld a, [hl]                                    ; $4dc3: $7e
    jp GS04_UpdateBestClearTimeHintUsedIconTile   ; $4dc4: $c3 $93 $4f


GS04_DrawSelectedPicrossCoursePuzzleInfoPanel_DrawUnclearedPlaceholders::
    ld a, $80                                     ; $4dc7: $3e $80
    ld bc, $0818                                  ; $4dc9: $01 $18 $08
    call CopyOAMSpriteById                        ; $4dcc: $cd $cb $20
    ld a, $80                                     ; $4dcf: $3e $80
    ld bc, $1018                                  ; $4dd1: $01 $18 $10
    call CopyOAMSpriteById                        ; $4dd4: $cd $cb $20
    ld a, $80                                     ; $4dd7: $3e $80
    ld bc, $2018                                  ; $4dd9: $01 $18 $20
    call CopyOAMSpriteById                        ; $4ddc: $cd $cb $20
    ld a, $80                                     ; $4ddf: $3e $80
    ld bc, $2818                                  ; $4de1: $01 $18 $28
    call CopyOAMSpriteById                        ; $4de4: $cd $cb $20
    ld a, $80                                     ; $4de7: $3e $80
    ld bc, $6818                                  ; $4de9: $01 $18 $68
    call CopyOAMSpriteById                        ; $4dec: $cd $cb $20
    ld a, $80                                     ; $4def: $3e $80
    ld bc, $7018                                  ; $4df1: $01 $18 $70
    call CopyOAMSpriteById                        ; $4df4: $cd $cb $20
    ld a, $80                                     ; $4df7: $3e $80
    ld bc, $8018                                  ; $4df9: $01 $18 $80
    call CopyOAMSpriteById                        ; $4dfc: $cd $cb $20
    ld a, $80                                     ; $4dff: $3e $80
    ld bc, $8818                                  ; $4e01: $01 $18 $88
    call CopyOAMSpriteById                        ; $4e04: $cd $cb $20
    xor a                                         ; $4e07: $af
    call GS04_UpdateFirstClearTimeHintUsedIconTile; $4e08: $cd $6e $4f
    jp GS04_UpdateBestClearTimeHintUsedIconTile   ; $4e0b: $c3 $93 $4f


GS04_DrawSelectedPicrossCoursePuzzleInfoPanelFromSelectedPuzzleCache::
    ld a, [rSelectedPuzzleStatusData]             ; $4e0e: $fa $4c $d8
    push af                                       ; $4e11: $f5
    and $7f                                       ; $4e12: $e6 $7f
    call SplitAToDecimalDigitsAndPushHundredsTens ; $4e14: $cd $6f $19
    add $51                                       ; $4e17: $c6 $51
    ld bc, $4818                                  ; $4e19: $01 $18 $48
    call CopyOAMSpriteById                        ; $4e1c: $cd $cb $20
    pop af                                        ; $4e1f: $f1
    cp $0a                                        ; $4e20: $fe $0a
    jr z, .AfterTimesClearedDigits                ; $4e22: $28 $08

    add $51                                       ; $4e24: $c6 $51
    ld bc, $4018                                  ; $4e26: $01 $18 $40
    call CopyOAMSpriteById                        ; $4e29: $cd $cb $20

.AfterTimesClearedDigits:
    pop af                                        ; $4e2c: $f1
    pop af                                        ; $4e2d: $f1
    bit 7, a                                      ; $4e2e: $cb $7f
    jp z, GS04_DrawSelectedPicrossCoursePuzzleInfoPanelFromSelectedPuzzleCache_DrawUnclearedPlaceholders; $4e30: $ca $be $4e

    ld hl, rSelectedPuzzleTimeDataRecordByte0     ; $4e33: $21 $49 $d8
    ld c, [hl]                                    ; $4e36: $4e
    inc hl                                        ; $4e37: $23
    ld b, [hl]                                    ; $4e38: $46
    call DecodePackedPuzzleClearTimeToBCDDigits   ; $4e39: $cd $3c $50
    push bc                                       ; $4e3c: $c5
    ld a, b                                       ; $4e3d: $78
    and $f0                                       ; $4e3e: $e6 $f0
    swap a                                        ; $4e40: $cb $37
    add $51                                       ; $4e42: $c6 $51
    ld bc, $0818                                  ; $4e44: $01 $18 $08
    call CopyOAMSpriteById                        ; $4e47: $cd $cb $20
    pop bc                                        ; $4e4a: $c1
    push bc                                       ; $4e4b: $c5
    ld a, b                                       ; $4e4c: $78
    and $0f                                       ; $4e4d: $e6 $0f
    add $51                                       ; $4e4f: $c6 $51
    ld bc, $1018                                  ; $4e51: $01 $18 $10
    call CopyOAMSpriteById                        ; $4e54: $cd $cb $20
    pop bc                                        ; $4e57: $c1
    push bc                                       ; $4e58: $c5
    ld a, c                                       ; $4e59: $79
    and $f0                                       ; $4e5a: $e6 $f0
    swap a                                        ; $4e5c: $cb $37
    add $51                                       ; $4e5e: $c6 $51
    ld bc, $2018                                  ; $4e60: $01 $18 $20
    call CopyOAMSpriteById                        ; $4e63: $cd $cb $20
    pop bc                                        ; $4e66: $c1
    ld a, c                                       ; $4e67: $79
    and $0f                                       ; $4e68: $e6 $0f
    add $51                                       ; $4e6a: $c6 $51
    ld bc, $2818                                  ; $4e6c: $01 $18 $28
    call CopyOAMSpriteById                        ; $4e6f: $cd $cb $20
    ld a, [hl]                                    ; $4e72: $7e
    call GS04_UpdateFirstClearTimeHintUsedIconTile; $4e73: $cd $6e $4f
    ld hl, rSelectedPuzzleTimeDataRecordByte1     ; $4e76: $21 $4a $d8
    ld a, [hl+]                                   ; $4e79: $2a
    and $f0                                       ; $4e7a: $e6 $f0
    swap a                                        ; $4e7c: $cb $37
    ld b, a                                       ; $4e7e: $47
    ld c, [hl]                                    ; $4e7f: $4e
    call DecodePackedPuzzleClearTimeToBCDDigits   ; $4e80: $cd $3c $50
    push bc                                       ; $4e83: $c5
    ld a, b                                       ; $4e84: $78
    and $f0                                       ; $4e85: $e6 $f0
    swap a                                        ; $4e87: $cb $37
    add $51                                       ; $4e89: $c6 $51
    ld bc, $6818                                  ; $4e8b: $01 $18 $68
    call CopyOAMSpriteById                        ; $4e8e: $cd $cb $20
    pop bc                                        ; $4e91: $c1
    push bc                                       ; $4e92: $c5
    ld a, b                                       ; $4e93: $78
    and $0f                                       ; $4e94: $e6 $0f
    add $51                                       ; $4e96: $c6 $51
    ld bc, $7018                                  ; $4e98: $01 $18 $70
    call CopyOAMSpriteById                        ; $4e9b: $cd $cb $20
    pop bc                                        ; $4e9e: $c1
    push bc                                       ; $4e9f: $c5
    ld a, c                                       ; $4ea0: $79
    and $f0                                       ; $4ea1: $e6 $f0
    swap a                                        ; $4ea3: $cb $37
    add $51                                       ; $4ea5: $c6 $51
    ld bc, $8018                                  ; $4ea7: $01 $18 $80
    call CopyOAMSpriteById                        ; $4eaa: $cd $cb $20
    pop bc                                        ; $4ead: $c1
    ld a, c                                       ; $4eae: $79
    and $0f                                       ; $4eaf: $e6 $0f
    add $51                                       ; $4eb1: $c6 $51
    ld bc, $8818                                  ; $4eb3: $01 $18 $88
    call CopyOAMSpriteById                        ; $4eb6: $cd $cb $20
    dec hl                                        ; $4eb9: $2b
    ld a, [hl]                                    ; $4eba: $7e
    jp GS04_UpdateBestClearTimeHintUsedIconTile   ; $4ebb: $c3 $93 $4f


GS04_DrawSelectedPicrossCoursePuzzleInfoPanelFromSelectedPuzzleCache_DrawUnclearedPlaceholders::
    ld a, $80                                     ; $4ebe: $3e $80
    ld bc, $0818                                  ; $4ec0: $01 $18 $08
    call CopyOAMSpriteById                        ; $4ec3: $cd $cb $20
    ld a, $80                                     ; $4ec6: $3e $80
    ld bc, $1018                                  ; $4ec8: $01 $18 $10
    call CopyOAMSpriteById                        ; $4ecb: $cd $cb $20
    ld a, $80                                     ; $4ece: $3e $80
    ld bc, $2018                                  ; $4ed0: $01 $18 $20
    call CopyOAMSpriteById                        ; $4ed3: $cd $cb $20
    ld a, $80                                     ; $4ed6: $3e $80
    ld bc, $2818                                  ; $4ed8: $01 $18 $28
    call CopyOAMSpriteById                        ; $4edb: $cd $cb $20
    ld a, $80                                     ; $4ede: $3e $80
    ld bc, $6818                                  ; $4ee0: $01 $18 $68
    call CopyOAMSpriteById                        ; $4ee3: $cd $cb $20
    ld a, $80                                     ; $4ee6: $3e $80
    ld bc, $7018                                  ; $4ee8: $01 $18 $70
    call CopyOAMSpriteById                        ; $4eeb: $cd $cb $20
    ld a, $80                                     ; $4eee: $3e $80
    ld bc, $8018                                  ; $4ef0: $01 $18 $80
    call CopyOAMSpriteById                        ; $4ef3: $cd $cb $20
    ld a, $80                                     ; $4ef6: $3e $80
    ld bc, $8818                                  ; $4ef8: $01 $18 $88
    call CopyOAMSpriteById                        ; $4efb: $cd $cb $20
    xor a                                         ; $4efe: $af
    call GS04_UpdateFirstClearTimeHintUsedIconTile; $4eff: $cd $6e $4f
    jp GS04_UpdateBestClearTimeHintUsedIconTile   ; $4f02: $c3 $93 $4f


GS04_LoadSelectedPicrossCoursePuzzleStatusAndTimeDataRecord::
    ld a, [rSelectedSaveSlotIndex]                ; $4f05: $fa $65 $a0
    ld c, a                                       ; $4f08: $4f
    ld b, $00                                     ; $4f09: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4f0b: $21 $8d $a3
    add hl, bc                                    ; $4f0e: $09
    ld a, [hl]                                    ; $4f0f: $7e
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot; $4f10: $21 $82 $50
    add hl, bc                                    ; $4f13: $09
    ld c, [hl]                                    ; $4f14: $4e
    add hl, bc                                    ; $4f15: $09
    sla a                                         ; $4f16: $cb $27
    ld c, a                                       ; $4f18: $4f
    add hl, bc                                    ; $4f19: $09
    ld a, [hl+]                                   ; $4f1a: $2a
    ld h, [hl]                                    ; $4f1b: $66
    ld l, a                                       ; $4f1c: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4f1d: $fa $37 $d6
    sla a                                         ; $4f20: $cb $27
    sla a                                         ; $4f22: $cb $27
    sla a                                         ; $4f24: $cb $27
    ld c, a                                       ; $4f26: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4f27: $fa $36 $d6
    or c                                          ; $4f2a: $b1
    ld c, a                                       ; $4f2b: $4f
    ld b, $00                                     ; $4f2c: $06 $00
    add hl, bc                                    ; $4f2e: $09
    ld a, [hl]                                    ; $4f2f: $7e
    ld [rSelectedPuzzleStatusData], a             ; $4f30: $ea $4c $d8
    ld a, [rSelectedSaveSlotIndex]                ; $4f33: $fa $65 $a0
    ld c, a                                       ; $4f36: $4f
    ld b, $00                                     ; $4f37: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4f39: $21 $8d $a3
    add hl, bc                                    ; $4f3c: $09
    ld a, [hl]                                    ; $4f3d: $7e
    ld hl, GS04_PicrossCourseTimeDataPointerTableOffsetBySaveSlot; $4f3e: $21 $6d $50
    add hl, bc                                    ; $4f41: $09
    ld c, [hl]                                    ; $4f42: $4e
    add hl, bc                                    ; $4f43: $09
    sla a                                         ; $4f44: $cb $27
    ld c, a                                       ; $4f46: $4f
    add hl, bc                                    ; $4f47: $09
    ld a, [hl+]                                   ; $4f48: $2a
    ld h, [hl]                                    ; $4f49: $66
    ld l, a                                       ; $4f4a: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4f4b: $fa $37 $d6
    sla a                                         ; $4f4e: $cb $27
    sla a                                         ; $4f50: $cb $27
    sla a                                         ; $4f52: $cb $27
    ld c, a                                       ; $4f54: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4f55: $fa $36 $d6
    or c                                          ; $4f58: $b1
    ld c, a                                       ; $4f59: $4f
    sla a                                         ; $4f5a: $cb $27
    add c                                         ; $4f5c: $81
    ld c, a                                       ; $4f5d: $4f
    ld b, $00                                     ; $4f5e: $06 $00
    add hl, bc                                    ; $4f60: $09
    ld a, [hl+]                                   ; $4f61: $2a
    ld [rSelectedPuzzleTimeDataRecordByte0], a    ; $4f62: $ea $49 $d8
    ld a, [hl+]                                   ; $4f65: $2a
    ld [rSelectedPuzzleTimeDataRecordByte1], a    ; $4f66: $ea $4a $d8
    ld a, [hl]                                    ; $4f69: $7e
    ld [rSelectedPuzzleTimeDataRecordByte2], a    ; $4f6a: $ea $4b $d8
    ret                                           ; $4f6d: $c9


GS04_UpdateFirstClearTimeHintUsedIconTile::
    push af                                       ; $4f6e: $f5
    push hl                                       ; $4f6f: $e5
    bit 3, a                                      ; $4f70: $cb $5f
    jr z, .DrawFirstClearTimeHintUsedBlankTile    ; $4f72: $28 $0a

    ld a, $01                                     ; $4f74: $3e $01
    ld bc, GS04_FirstClearTimeHintUsedIconCommandStream; $4f76: $01 $89 $4f
    call QueueCommandStreamAndProcessIfLCDOff     ; $4f79: $cd $35 $07
    jr .ReturnFromFirstClearTimeHintUsedTileUpdate; $4f7c: $18 $08

.DrawFirstClearTimeHintUsedBlankTile:
    ld a, $01                                     ; $4f7e: $3e $01
    ld bc, GS04_FirstClearTimeHintUsedBlankCommandStream; $4f80: $01 $8e $4f
    call QueueCommandStreamAndProcessIfLCDOff     ; $4f83: $cd $35 $07

.ReturnFromFirstClearTimeHintUsedTileUpdate:
    pop hl                                        ; $4f86: $e1
    pop af                                        ; $4f87: $f1
    ret                                           ; $4f88: $c9


GS04_FirstClearTimeHintUsedIconCommandStream::
    db $98, $66, $01, $2f
    db $00

GS04_FirstClearTimeHintUsedBlankCommandStream::
    db $98, $66, $01, $2b
    db $00

GS04_UpdateBestClearTimeHintUsedIconTile::
    push af                                       ; $4f93: $f5
    push hl                                       ; $4f94: $e5
    bit 7, a                                      ; $4f95: $cb $7f
    jr z, .DrawBestClearTimeHintUsedBlankTile     ; $4f97: $28 $0a

    ld a, $01                                     ; $4f99: $3e $01
    ld bc, GS04_BestClearTimeHintUsedIconCommandStream; $4f9b: $01 $ae $4f
    call QueueCommandStreamAndProcessIfLCDOff     ; $4f9e: $cd $35 $07
    jr .ReturnFromBestClearTimeHintUsedTileUpdate ; $4fa1: $18 $08

.DrawBestClearTimeHintUsedBlankTile:
    ld a, $01                                     ; $4fa3: $3e $01
    ld bc, GS04_BestClearTimeHintUsedBlankCommandStream; $4fa5: $01 $b3 $4f
    call QueueCommandStreamAndProcessIfLCDOff     ; $4fa8: $cd $35 $07

.ReturnFromBestClearTimeHintUsedTileUpdate:
    pop hl                                        ; $4fab: $e1
    pop af                                        ; $4fac: $f1
    ret                                           ; $4fad: $c9


GS04_BestClearTimeHintUsedIconCommandStream::
    db $98, $72, $01, $2f
    db $00

GS04_BestClearTimeHintUsedBlankCommandStream::
    db $98, $72, $01, $2b
    db $00

GS04_AdvanceSelectionToNextUnclearedPuzzleIfPossible::
    ld a, [rPuzzleAndMenuCursorRow]               ; $4fb8: $fa $37 $d6
    cp $07                                        ; $4fbb: $fe $07
    jr nz, .CheckNextPuzzleClearStatus            ; $4fbd: $20 $06

    ld a, [rPuzzleCursorColumn]                   ; $4fbf: $fa $36 $d6
    cp $07                                        ; $4fc2: $fe $07
    ret z                                         ; $4fc4: $c8

.CheckNextPuzzleClearStatus:
    ld a, [rSelectedSaveSlotIndex]                ; $4fc5: $fa $65 $a0
    ld c, a                                       ; $4fc8: $4f
    ld b, $00                                     ; $4fc9: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4fcb: $21 $8d $a3
    add hl, bc                                    ; $4fce: $09
    ld a, [hl]                                    ; $4fcf: $7e
    ld hl, GS04_PicrossCourseStatusDataPointerTableOffsetBySaveSlot; $4fd0: $21 $82 $50
    add hl, bc                                    ; $4fd3: $09
    ld c, [hl]                                    ; $4fd4: $4e
    add hl, bc                                    ; $4fd5: $09
    sla a                                         ; $4fd6: $cb $27
    ld c, a                                       ; $4fd8: $4f
    add hl, bc                                    ; $4fd9: $09
    ld a, [hl+]                                   ; $4fda: $2a
    ld h, [hl]                                    ; $4fdb: $66
    ld l, a                                       ; $4fdc: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $4fdd: $fa $37 $d6
    sla a                                         ; $4fe0: $cb $27
    sla a                                         ; $4fe2: $cb $27
    sla a                                         ; $4fe4: $cb $27
    ld c, a                                       ; $4fe6: $4f
    ld a, [rPuzzleCursorColumn]                   ; $4fe7: $fa $36 $d6
    or c                                          ; $4fea: $b1
    ld c, a                                       ; $4feb: $4f
    ld b, $00                                     ; $4fec: $06 $00
    add hl, bc                                    ; $4fee: $09
    inc hl                                        ; $4fef: $23
    bit 7, [hl]                                   ; $4ff0: $cb $7e
    ret nz                                        ; $4ff2: $c0

    ld a, [rPuzzleCursorColumn]                   ; $4ff3: $fa $36 $d6
    inc a                                         ; $4ff6: $3c
    cp $08                                        ; $4ff7: $fe $08
    jr nz, .StoreAdvancedSelectionAndPlayMoveSfx  ; $4ff9: $20 $08

    ld a, [rPuzzleAndMenuCursorRow]               ; $4ffb: $fa $37 $d6
    inc a                                         ; $4ffe: $3c
    ld [rPuzzleAndMenuCursorRow], a               ; $4fff: $ea $37 $d6
    xor a                                         ; $5002: $af

.StoreAdvancedSelectionAndPlayMoveSfx:
    ld [rPuzzleCursorColumn], a                   ; $5003: $ea $36 $d6
    ld c, $0a                                     ; $5006: $0e $0a
    ld a, $02                                     ; $5008: $3e $02
    call CallSoundCommandDispatcher               ; $500a: $cd $b3 $03
    ret                                           ; $500d: $c9


EncodePuzzleTimerToPackedClearTimeBC::
    push hl                                       ; $500e: $e5
    ld a, [rPuzzleTimerSecondTens]                ; $500f: $fa $0c $d8
    ld c, a                                       ; $5012: $4f
    sla a                                         ; $5013: $cb $27
    sla a                                         ; $5015: $cb $27
    add c                                         ; $5017: $81
    sla a                                         ; $5018: $cb $27
    ld hl, rPuzzleTimerSecondOnes                 ; $501a: $21 $0b $d8
    add [hl]                                      ; $501d: $86
    ld c, a                                       ; $501e: $4f
    ld a, [rPuzzleTimerMinuteTens]                ; $501f: $fa $0a $d8
    ld b, a                                       ; $5022: $47
    sla a                                         ; $5023: $cb $27
    sla a                                         ; $5025: $cb $27
    add b                                         ; $5027: $80
    sla a                                         ; $5028: $cb $27
    ld hl, rPuzzleTimerMinuteOnes                 ; $502a: $21 $09 $d8
    add [hl]                                      ; $502d: $86
    ld b, a                                       ; $502e: $47
    xor a                                         ; $502f: $af
    srl b                                         ; $5030: $cb $38
    rr a                                          ; $5032: $cb $1f
    srl b                                         ; $5034: $cb $38
    rr a                                          ; $5036: $cb $1f
    or c                                          ; $5038: $b1
    ld c, a                                       ; $5039: $4f
    pop hl                                        ; $503a: $e1
    ret                                           ; $503b: $c9


DecodePackedPuzzleClearTimeToBCDDigits::
    push hl                                       ; $503c: $e5
    ld a, c                                       ; $503d: $79
    and $3f                                       ; $503e: $e6 $3f
    ld e, $00                                     ; $5040: $1e $00

.SubtractLowerFieldTensLoop:
    cp $0a                                        ; $5042: $fe $0a
    jr c, .PackLowerFieldTensAndOnes              ; $5044: $38 $05

    sub $0a                                       ; $5046: $d6 $0a
    inc e                                         ; $5048: $1c
    jr .SubtractLowerFieldTensLoop                ; $5049: $18 $f7

.PackLowerFieldTensAndOnes:
    swap e                                        ; $504b: $cb $33
    or e                                          ; $504d: $b3
    ld e, a                                       ; $504e: $5f
    sla c                                         ; $504f: $cb $21
    rl b                                          ; $5051: $cb $10
    sla c                                         ; $5053: $cb $21
    rl b                                          ; $5055: $cb $10
    ld a, b                                       ; $5057: $78
    and $1f                                       ; $5058: $e6 $1f
    ld d, $00                                     ; $505a: $16 $00

.SubtractUpperFieldTensLoop:
    cp $0a                                        ; $505c: $fe $0a
    jr c, .PackUpperFieldTensAndOnes              ; $505e: $38 $05

    sub $0a                                       ; $5060: $d6 $0a
    inc d                                         ; $5062: $14
    jr .SubtractUpperFieldTensLoop                ; $5063: $18 $f7

.PackUpperFieldTensAndOnes:
    swap d                                        ; $5065: $cb $32
    or d                                          ; $5067: $b2
    ld d, a                                       ; $5068: $57
    ld c, e                                       ; $5069: $4b
    ld b, d                                       ; $506a: $42
    pop hl                                        ; $506b: $e1
    ret                                           ; $506c: $c9


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
    rst RST_08                                    ; $5097: $cf
    call AdvanceMessageScriptStreamHelper_NoBankSwitch; $5098: $cd $24 $2c
    jr nz, RunMessageScriptUntilEnd               ; $509b: $20 $fa

    ret                                           ; $509d: $c9


GS04_ClearMessagePromptRows::
    ld bc, $1020                                  ; $509e: $01 $20 $10
    ld de, $7f07                                  ; $50a1: $11 $07 $7f
    call GS04_CopyMessagePromptRowSpan            ; $50a4: $cd $ea $50
    ld bc, $1028                                  ; $50a7: $01 $28 $10
    ld de, $7f07                                  ; $50aa: $11 $07 $7f
    call GS04_CopyMessagePromptRowSpan            ; $50ad: $cd $ea $50
    ld bc, $1030                                  ; $50b0: $01 $30 $10
    ld de, $7f07                                  ; $50b3: $11 $07 $7f
    call GS04_CopyMessagePromptRowSpan            ; $50b6: $cd $ea $50
    ld bc, $1038                                  ; $50b9: $01 $38 $10
    ld de, $7f07                                  ; $50bc: $11 $07 $7f
    call GS04_CopyMessagePromptRowSpan            ; $50bf: $cd $ea $50
    ld bc, $1040                                  ; $50c2: $01 $40 $10
    ld de, $7f07                                  ; $50c5: $11 $07 $7f
    call GS04_CopyMessagePromptRowSpan            ; $50c8: $cd $ea $50
    ld bc, $1048                                  ; $50cb: $01 $48 $10
    ld de, $7f07                                  ; $50ce: $11 $07 $7f
    call GS04_CopyMessagePromptRowSpan            ; $50d1: $cd $ea $50
    ld bc, $1050                                  ; $50d4: $01 $50 $10
    ld de, $7f07                                  ; $50d7: $11 $07 $7f
    call GS04_CopyMessagePromptRowSpan            ; $50da: $cd $ea $50
    ld a, [rMessageScriptStreamResetEntryLow]     ; $50dd: $fa $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $50e0: $ea $2b $d8
    ld a, [rMessageScriptStreamResetEntryHigh]    ; $50e3: $fa $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $50e6: $ea $2c $d8
    ret                                           ; $50e9: $c9


GS04_CopyMessagePromptRowSpan::
    ld a, $00                                     ; $50ea: $3e $00
    ld [rBGTileCopyBankAddressLow], a             ; $50ec: $ea $55 $c3
    ld a, $61                                     ; $50ef: $3e $61
    ld [rBGTileCopyBankAddressHigh], a            ; $50f1: $ea $56 $c3
    ld a, $0a                                     ; $50f4: $3e $0a
    ld [rBGTileCopyBank], a                       ; $50f6: $ea $57 $c3
    ld a, b                                       ; $50f9: $78
    ld [rBGTileCopySourceX], a                    ; $50fa: $ea $51 $c3
    add d                                         ; $50fd: $82
    ld [rBGTileCopyDestX], a                      ; $50fe: $ea $53 $c3
    ld a, c                                       ; $5101: $79
    ld [rBGTileCopySourceY], a                    ; $5102: $ea $52 $c3
    add e                                         ; $5105: $83
    ld [rBGTileCopyDestY], a                      ; $5106: $ea $54 $c3
    jp PrepareBGTileCopyNoLCDCBit4Force           ; $5109: $c3 $0a $0b


WaitForAConfirmOnBottomPrompt::
    ld b, $03                                     ; $510c: $06 $03
    ld hl, $4ea6                                  ; $510e: $21 $a6 $4e
    call SwitchBankToBAndJumpToHL                 ; $5111: $cd $db $05
    call ClearShadowOAMBufferFromCursor           ; $5114: $cd $c2 $05
    rst RST_08                                    ; $5117: $cf
    ld a, [rInputButtonsPressed]                  ; $5118: $fa $1e $c3
    and $01                                       ; $511b: $e6 $01
    jr z, WaitForAConfirmOnBottomPrompt           ; $511d: $28 $ed

    ld c, $03                                     ; $511f: $0e $03
    ld a, $02                                     ; $5121: $3e $02
    call CallSoundCommandDispatcher               ; $5123: $cd $b3 $03
    ret                                           ; $5126: $c9


GameState_05_EasyPicrossPuzzleSelectScreen_PhaseDispatcher::
    ld a, [rStatePhase_Current]                   ; $5127: $fa $35 $d6
    rst RST_18                                    ; $512a: $df

GS05_PhasePointer_00::
    db $37, $51

GS05_PhasePointer_01::
    db $3f, $54

GS05_PhasePointer_02::
    db $d5, $54

GS05_PhasePointer_03::
    db $b1, $55

GS05_PhasePointer_04::
    db $d0, $51

GS05_PhasePointer_05::
    db $79, $54

GS05_StatePhase_00_EasyPicrossPuzzleSelectScreenInit::
    ld a, $43                                     ; $5137: $3e $43
    ld [rLCDCShadow], a                           ; $5139: $ea $2e $c3
    xor a                                         ; $513c: $af
    ld [rBGPShadow], a                            ; $513d: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $5140: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $5143: $ea $31 $c3
    ld [rSCXShadow], a                            ; $5146: $ea $32 $c3
    ld [rSCYShadow], a                            ; $5149: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $514c: $cd $9d $05
    call FillBGMap1WithTile01                     ; $514f: $cd $a8 $05
    ld a, $0b                                     ; $5152: $3e $0b
    ld hl, $5000                                  ; $5154: $21 $00 $50
    ld de, $8000                                  ; $5157: $11 $00 $80
    ld bc, $0300                                  ; $515a: $01 $00 $03
    call BankedTileCopy                           ; $515d: $cd $e1 $04
    ld a, $07                                     ; $5160: $3e $07
    ld hl, $7b00                                  ; $5162: $21 $00 $7b
    ld de, $8300                                  ; $5165: $11 $00 $83
    ld bc, $0200                                  ; $5168: $01 $00 $02
    call BankedTileCopy                           ; $516b: $cd $e1 $04
    ld a, $0a                                     ; $516e: $3e $0a
    ld hl, $6000                                  ; $5170: $21 $00 $60
    ld de, $8800                                  ; $5173: $11 $00 $88
    ld bc, $1000                                  ; $5176: $01 $00 $10
    call BankedTileCopy                           ; $5179: $cd $e1 $04
    ld a, $0c                                     ; $517c: $3e $0c
    ld hl, $6c00                                  ; $517e: $21 $00 $6c
    ld de, $9800                                  ; $5181: $11 $00 $98
    ld bc, $0400                                  ; $5184: $01 $00 $04
    call BankedTileCopy                           ; $5187: $cd $e1 $04
    call GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $518a: $cd $ec $55
    call GS05_DrawCompletedPuzzleMarkersForSelectedSaveSlot; $518d: $cd $7a $56
    call ClearShadowOAMBuffer                     ; $5190: $cd $b3 $05
    ld b, $03                                     ; $5193: $06 $03
    ld hl, $4e80                                  ; $5195: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $5198: $cd $db $05
    ld b, $03                                     ; $519b: $06 $03
    ld hl, $4ee9                                  ; $519d: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $51a0: $cd $db $05
    xor a                                         ; $51a3: $af
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame; $51a4: $cd $1a $56
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanel; $51a7: $cd $18 $58
    ld c, $00                                     ; $51aa: $0e $00
    ld a, $01                                     ; $51ac: $3e $01
    call CallSoundCommandDispatcher               ; $51ae: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $51b1: $cd $96 $03
    ld c, $04                                     ; $51b4: $0e $04
    ld a, $01                                     ; $51b6: $3e $01
    call CallSoundCommandDispatcher               ; $51b8: $cd $b3 $03
    call EnableLCDFromShadow                      ; $51bb: $cd $9f $04
    ld b, $03                                     ; $51be: $06 $03
    ld hl, $46e8                                  ; $51c0: $21 $e8 $46
    ld c, $08                                     ; $51c3: $0e $08
    ld de, $0074                                  ; $51c5: $11 $74 $00
    call PlayScreenTransitionFadeIn               ; $51c8: $cd $0a $04
    ld hl, rStatePhase_Current                    ; $51cb: $21 $35 $d6
    inc [hl]                                      ; $51ce: $34
    ret                                           ; $51cf: $c9


GS05_StatePhase_04_TODO::
    ld a, $43                                     ; $51d0: $3e $43
    ld [rLCDCShadow], a                           ; $51d2: $ea $2e $c3
    xor a                                         ; $51d5: $af
    ld [rBGPShadow], a                            ; $51d6: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $51d9: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $51dc: $ea $31 $c3
    ld [rSCXShadow], a                            ; $51df: $ea $32 $c3
    ld [rSCYShadow], a                            ; $51e2: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $51e5: $cd $9d $05
    call FillBGMap1WithTile01                     ; $51e8: $cd $a8 $05
    ld a, $0b                                     ; $51eb: $3e $0b
    ld hl, $5000                                  ; $51ed: $21 $00 $50
    ld de, $8000                                  ; $51f0: $11 $00 $80
    ld bc, $0300                                  ; $51f3: $01 $00 $03
    call BankedTileCopy                           ; $51f6: $cd $e1 $04
    ld a, $07                                     ; $51f9: $3e $07
    ld hl, $7b00                                  ; $51fb: $21 $00 $7b
    ld de, $8300                                  ; $51fe: $11 $00 $83
    ld bc, $0200                                  ; $5201: $01 $00 $02
    call BankedTileCopy                           ; $5204: $cd $e1 $04
    ld a, $0a                                     ; $5207: $3e $0a
    ld hl, $6000                                  ; $5209: $21 $00 $60
    ld de, $8800                                  ; $520c: $11 $00 $88
    ld bc, $1000                                  ; $520f: $01 $00 $10
    call BankedTileCopy                           ; $5212: $cd $e1 $04
    ld a, $0c                                     ; $5215: $3e $0c
    ld hl, $6c00                                  ; $5217: $21 $00 $6c
    ld de, $9800                                  ; $521a: $11 $00 $98
    ld bc, $0400                                  ; $521d: $01 $00 $04
    call BankedTileCopy                           ; $5220: $cd $e1 $04
    call GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $5223: $cd $ec $55
    call GS05_DrawCompletedPuzzleMarkersForSelectedSaveSlotExceptCurrentSelection; $5226: $cd $a2 $56
    ld a, [rSelectedPuzzleStatusData]             ; $5229: $fa $4c $d8
    bit 7, a                                      ; $522c: $cb $7f
    jr z, .ContinueAfterSelectedPuzzleCompletedMarkerCheck; $522e: $28 $0b

    ld a, [rPuzzleCursorColumn]                   ; $5230: $fa $36 $d6
    ld c, a                                       ; $5233: $4f
    ld a, [rPuzzleAndMenuCursorRow]               ; $5234: $fa $37 $d6
    ld b, a                                       ; $5237: $47
    call GS05_DrawCompletedPuzzleMarkerAtGridPosition; $5238: $cd $d6 $56

.ContinueAfterSelectedPuzzleCompletedMarkerCheck:
    call ClearShadowOAMBuffer                     ; $523b: $cd $b3 $05
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanelFromSelectedPuzzleCache; $523e: $cd $73 $59
    ld b, $03                                     ; $5241: $06 $03
    ld hl, $4e80                                  ; $5243: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $5246: $cd $db $05
    ld a, [rPuzzlePostClearFlowFlag]              ; $5249: $fa $05 $d8
    and a                                         ; $524c: $a7
    push af                                       ; $524d: $f5
    jr nz, .BeginPostReturnFadeInAndResultFlow    ; $524e: $20 $08

    ld b, $03                                     ; $5250: $06 $03
    ld hl, $4ee9                                  ; $5252: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $5255: $cd $db $05

.BeginPostReturnFadeInAndResultFlow:
    xor a                                         ; $5258: $af
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame; $5259: $cd $1a $56
    ld c, $00                                     ; $525c: $0e $00
    ld a, $01                                     ; $525e: $3e $01
    call CallSoundCommandDispatcher               ; $5260: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $5263: $cd $96 $03
    ld c, $04                                     ; $5266: $0e $04
    ld a, $01                                     ; $5268: $3e $01
    call CallSoundCommandDispatcher               ; $526a: $cd $b3 $03
    call EnableLCDFromShadow                      ; $526d: $cd $9f $04
    ld b, $03                                     ; $5270: $06 $03
    ld hl, $46e8                                  ; $5272: $21 $e8 $46
    ld c, $08                                     ; $5275: $0e $08
    ld de, $0074                                  ; $5277: $11 $74 $00
    call PlayScreenTransitionFadeIn               ; $527a: $cd $0a $04
    pop af                                        ; $527d: $f1
    jp z, GS05_ReturnToIdlePhaseAndRefreshSaveChecksums; $527e: $ca $a7 $53

    call GS05_HandlePostReturnClearStatusChangeAnimationAndPrompt; $5281: $cd $af $53
    ld a, [rSelectedSaveSlotIndex]                ; $5284: $fa $65 $a0
    ld c, a                                       ; $5287: $4f
    ld b, $00                                     ; $5288: $06 $00
    ld hl, rSaveSlot1EasyPicrossPostClearUnlockHandledFlag; $528a: $21 $7b $a0
    add hl, bc                                    ; $528d: $09
    ld a, [hl]                                    ; $528e: $7e
    and a                                         ; $528f: $a7
    jp nz, GS05_ReturnToIdlePhaseAndRefreshSaveChecksums; $5290: $c2 $a7 $53

    ld hl, rSaveSlot1EasyPicrossClearedPuzzleCount; $5293: $21 $7e $a0
    add hl, bc                                    ; $5296: $09
    ld a, [hl]                                    ; $5297: $7e
    cp $40                                        ; $5298: $fe $40
    jp nz, GS05_ReturnToIdlePhaseAndRefreshSaveChecksums; $529a: $c2 $a7 $53

    ld hl, rSaveSlot1EasyPicrossPostClearUnlockHandledFlag; $529d: $21 $7b $a0
    add hl, bc                                    ; $52a0: $09
    inc [hl]                                      ; $52a1: $34
    ld a, [rSelectedSaveSlotIndex]                ; $52a2: $fa $65 $a0
    ld c, a                                       ; $52a5: $4f
    ld b, $00                                     ; $52a6: $06 $00
    ld hl, rSaveSlot1GameSelectCursorRow          ; $52a8: $21 $78 $a0
    add hl, bc                                    ; $52ab: $09
    ld a, $02                                     ; $52ac: $3e $02
    ld [hl], a                                    ; $52ae: $77
    call RefreshSaveValidationChecksumsAndMirrors ; $52af: $cd $1c $1b
    ld bc, $00b4                                  ; $52b2: $01 $b4 $00
    call DelayFramesByBC                          ; $52b5: $cd $f7 $05
    ld a, $05                                     ; $52b8: $3e $05
    call CallSoundCommandDispatcher               ; $52ba: $cd $b3 $03
    ld c, $00                                     ; $52bd: $0e $00
    ld a, $01                                     ; $52bf: $3e $01
    call CallSoundCommandDispatcher               ; $52c1: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $52c4: $cd $96 $03
    ld c, $00                                     ; $52c7: $0e $00
    ld a, $01                                     ; $52c9: $3e $01
    call CallSoundCommandDispatcher               ; $52cb: $cd $b3 $03
    call ClearShadowOAMBuffer                     ; $52ce: $cd $b3 $05
    ld b, $03                                     ; $52d1: $06 $03
    ld hl, $46f3                                  ; $52d3: $21 $f3 $46
    ld c, $08                                     ; $52d6: $0e $08
    ld de, $0083                                  ; $52d8: $11 $83 $00
    call PlayScreenTransitionFadeOut              ; $52db: $cd $4b $04
    call DisableLCDAtVBlank                       ; $52de: $cd $80 $04
    ld a, $0c                                     ; $52e1: $3e $0c
    ld hl, $7800                                  ; $52e3: $21 $00 $78
    ld de, $9800                                  ; $52e6: $11 $00 $98
    ld bc, $0400                                  ; $52e9: $01 $00 $04
    call BankedTileCopy                           ; $52ec: $cd $e1 $04
    ld a, $7b                                     ; $52ef: $3e $7b
    ld [rTilemapToTileDataAddressLookupTableLow], a; $52f1: $ea $63 $cd
    ld a, $16                                     ; $52f4: $3e $16
    ld [rTilemapToTileDataAddressLookupTableHigh], a; $52f6: $ea $64 $cd
    ld c, $00                                     ; $52f9: $0e $00
    ld a, $01                                     ; $52fb: $3e $01
    call CallSoundCommandDispatcher               ; $52fd: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $5300: $cd $96 $03
    ld c, $07                                     ; $5303: $0e $07
    ld a, $01                                     ; $5305: $3e $01
    call CallSoundCommandDispatcher               ; $5307: $cd $b3 $03
    ld a, $2f                                     ; $530a: $3e $2f
    ld [rLYCShadow], a                            ; $530c: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags             ; $530f: $21 $37 $c3
    set 6, [hl]                                   ; $5312: $cb $f6
    ld hl, rIE                                    ; $5314: $21 $ff $ff
    set 1, [hl]                                   ; $5317: $cb $ce
    ld a, $02                                     ; $5319: $3e $02
    ld [rLCDCInterruptDispatchIndex], a           ; $531b: $ea $38 $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $531e: $ea $50 $c3
    call EnableLCDFromShadow                      ; $5321: $cd $9f $04
    ld b, $03                                     ; $5324: $06 $03
    ld hl, $46e8                                  ; $5326: $21 $e8 $46
    ld c, $0b                                     ; $5329: $0e $0b
    ld de, $0074                                  ; $532b: $11 $74 $00
    call PlayScreenTransitionFadeIn               ; $532e: $cd $0a $04
    ld a, $10                                     ; $5331: $3e $10
    ld [rMessageScriptStreamResetEntryLow], a     ; $5333: $ea $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $5336: $ea $2b $d8
    ld a, $20                                     ; $5339: $3e $20
    ld [rMessageScriptStreamResetEntryHigh], a    ; $533b: $ea $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $533e: $ea $2c $d8
    ld a, $90                                     ; $5341: $3e $90
    ld [rMessageScriptStreamLimitLow], a          ; $5343: $ea $45 $d8
    ld a, $58                                     ; $5346: $3e $58
    ld [rMessageScriptStreamLimitHigh], a         ; $5348: $ea $46 $d8
    ld a, $00                                     ; $534b: $3e $00
    ld [rMessageScriptStreamPointerLow], a        ; $534d: $ea $2d $d8
    ld a, $40                                     ; $5350: $3e $40
    ld [rMessageScriptStreamPointerHigh], a       ; $5352: $ea $2e $d8
    call RunMessageScriptUntilEnd                 ; $5355: $cd $97 $50
    call WaitForAConfirmOnBottomPrompt            ; $5358: $cd $0c $51
    ld bc, $003c                                  ; $535b: $01 $3c $00
    call DelayFramesByBC                          ; $535e: $cd $f7 $05
    ld a, $05                                     ; $5361: $3e $05
    call CallSoundCommandDispatcher               ; $5363: $cd $b3 $03
    ld c, $00                                     ; $5366: $0e $00
    ld a, $01                                     ; $5368: $3e $01
    call CallSoundCommandDispatcher               ; $536a: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $536d: $cd $96 $03
    ld c, $00                                     ; $5370: $0e $00
    ld a, $01                                     ; $5372: $3e $01
    call CallSoundCommandDispatcher               ; $5374: $cd $b3 $03
    ld b, $03                                     ; $5377: $06 $03
    ld hl, $46f3                                  ; $5379: $21 $f3 $46
    ld c, $0b                                     ; $537c: $0e $0b
    ld de, $0083                                  ; $537e: $11 $83 $00
    call PlayScreenTransitionFadeOut              ; $5381: $cd $4b $04
    call DisableLCDAtVBlank                       ; $5384: $cd $80 $04
    ld hl, rLCDCInterruptControlFlags             ; $5387: $21 $37 $c3
    res 6, [hl]                                   ; $538a: $cb $b6
    ld hl, rIE                                    ; $538c: $21 $ff $ff
    res 1, [hl]                                   ; $538f: $cb $8e
    xor a                                         ; $5391: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $5392: $ea $38 $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $5395: $ea $50 $c3
    call GS05_SaveEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $5398: $cd $03 $56
    xor a                                         ; $539b: $af
    ld [rStatePhase_Current], a                   ; $539c: $ea $35 $d6
    ld a, $02                                     ; $539f: $3e $02
    ld [rGameState_Current], a                    ; $53a1: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $53a4: $c3 $1c $1b


GS05_ReturnToIdlePhaseAndRefreshSaveChecksums::
    ld a, $01                                     ; $53a7: $3e $01
    ld [rStatePhase_Current], a                   ; $53a9: $ea $35 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $53ac: $c3 $1c $1b


GS05_HandlePostReturnClearStatusChangeAnimationAndPrompt::
    ld a, [rSelectedSaveSlotIndex]                ; $53af: $fa $65 $a0
    sla a                                         ; $53b2: $cb $27
    ld c, a                                       ; $53b4: $4f
    ld b, $00                                     ; $53b5: $06 $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot; $53b7: $21 $5e $5b
    add hl, bc                                    ; $53ba: $09
    ld a, [hl+]                                   ; $53bb: $2a
    ld h, [hl]                                    ; $53bc: $66
    ld l, a                                       ; $53bd: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $53be: $fa $37 $d6
    sla a                                         ; $53c1: $cb $27
    sla a                                         ; $53c3: $cb $27
    sla a                                         ; $53c5: $cb $27
    ld c, a                                       ; $53c7: $4f
    ld a, [rPuzzleCursorColumn]                   ; $53c8: $fa $36 $d6
    or c                                          ; $53cb: $b1
    ld c, a                                       ; $53cc: $4f
    ld b, $00                                     ; $53cd: $06 $00
    add hl, bc                                    ; $53cf: $09
    ld a, [hl]                                    ; $53d0: $7e
    ld hl, rSelectedPuzzleStatusData              ; $53d1: $21 $4c $d8
    xor [hl]                                      ; $53d4: $ae
    bit 7, a                                      ; $53d5: $cb $7f
    jr z, .BeginPostResultPromptDelay             ; $53d7: $28 $38

    ld c, $08                                     ; $53d9: $0e $08
    ld a, $02                                     ; $53db: $3e $02
    call CallSoundCommandDispatcher               ; $53dd: $cd $b3 $03
    ld c, $08                                     ; $53e0: $0e $08

.AnimateCursorFrame1BeforeCompletedMarker:
    push bc                                       ; $53e2: $c5
    call ClearShadowOAMBuffer                     ; $53e3: $cd $b3 $05
    ld a, $01                                     ; $53e6: $3e $01
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame; $53e8: $cd $1a $56
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanel; $53eb: $cd $18 $58
    rst RST_08                                    ; $53ee: $cf
    pop bc                                        ; $53ef: $c1
    dec c                                         ; $53f0: $0d
    jr nz, .AnimateCursorFrame1BeforeCompletedMarker; $53f1: $20 $ef

    ld a, [rPuzzleCursorColumn]                   ; $53f3: $fa $36 $d6
    ld c, a                                       ; $53f6: $4f
    ld a, [rPuzzleAndMenuCursorRow]               ; $53f7: $fa $37 $d6
    ld b, a                                       ; $53fa: $47
    call GS05_DrawCompletedPuzzleMarkerAtGridPosition; $53fb: $cd $d6 $56
    ld c, $08                                     ; $53fe: $0e $08

.AnimateCursorFrame2AfterCompletedMarker:
    push bc                                       ; $5400: $c5
    call ClearShadowOAMBuffer                     ; $5401: $cd $b3 $05
    ld a, $02                                     ; $5404: $3e $02
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame; $5406: $cd $1a $56
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanel; $5409: $cd $18 $58
    rst RST_08                                    ; $540c: $cf
    pop bc                                        ; $540d: $c1
    dec c                                         ; $540e: $0d
    jr nz, .AnimateCursorFrame2AfterCompletedMarker; $540f: $20 $ef

.BeginPostResultPromptDelay:
    rst RST_08                                    ; $5411: $cf
    ld bc, $005a                                  ; $5412: $01 $5a $00

.PostResultPromptLoop:
    push bc                                       ; $5415: $c5
    call ClearShadowOAMBuffer                     ; $5416: $cd $b3 $05
    ld b, $03                                     ; $5419: $06 $03
    ld hl, $4ea6                                  ; $541b: $21 $a6 $4e
    call SwitchBankToBAndJumpToHL                 ; $541e: $cd $db $05
    ld a, [rVBlankFrameCounter]                   ; $5421: $fa $3a $c3
    bit 2, a                                      ; $5424: $cb $57
    jr nz, .DrawPostResultPromptFrame             ; $5426: $20 $04

    xor a                                         ; $5428: $af
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame; $5429: $cd $1a $56

.DrawPostResultPromptFrame:
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanel; $542c: $cd $18 $58
    rst RST_08                                    ; $542f: $cf
    pop bc                                        ; $5430: $c1
    ld a, [rInputButtonsPressed]                  ; $5431: $fa $1e $c3
    and a                                         ; $5434: $a7
    jr nz, .AdvanceSelectionAfterPostResultPrompt ; $5435: $20 $05

    dec bc                                        ; $5437: $0b
    ld a, c                                       ; $5438: $79
    or b                                          ; $5439: $b0
    jr nz, .PostResultPromptLoop                  ; $543a: $20 $d9

.AdvanceSelectionAfterPostResultPrompt:
    jp GS05_AdvanceSelectionToNextUnclearedPuzzleIfPossible; $543c: $c3 $0b $5b


GS05_StatePhase_01_EasyPicrossPuzzleSelectScreenIdle::
    ld b, $03                                     ; $543f: $06 $03
    ld hl, $4ee9                                  ; $5441: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $5444: $cd $db $05
    xor a                                         ; $5447: $af
    call GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame; $5448: $cd $1a $56
    call GS05_DrawSelectedEasyPicrossPuzzleInfoPanel; $544b: $cd $18 $58
    call GS05_HandleEasyPicrossPuzzleSelectDirectionalInput; $544e: $cd $35 $56
    ld a, [rInputButtonsPressed]                  ; $5451: $fa $1e $c3
    and $09                                       ; $5454: $e6 $09
    jr z, .CheckCancelInputB                      ; $5456: $28 $0c

    ld c, $03                                     ; $5458: $0e $03
    ld a, $02                                     ; $545a: $3e $02
    call CallSoundCommandDispatcher               ; $545c: $cd $b3 $03
    ld hl, rStatePhase_Current                    ; $545f: $21 $35 $d6
    inc [hl]                                      ; $5462: $34
    ret                                           ; $5463: $c9


.CheckCancelInputB:
    ld a, [rInputButtonsPressed]                  ; $5464: $fa $1e $c3
    and $02                                       ; $5467: $e6 $02
    jr z, .ReturnFromIdlePhaseNoSelectionInput    ; $5469: $28 $0d

    ld c, $04                                     ; $546b: $0e $04
    ld a, $02                                     ; $546d: $3e $02
    call CallSoundCommandDispatcher               ; $546f: $cd $b3 $03
    ld a, $03                                     ; $5472: $3e $03
    ld [rStatePhase_Current], a                   ; $5474: $ea $35 $d6
    ret                                           ; $5477: $c9


.ReturnFromIdlePhaseNoSelectionInput:
    ret                                           ; $5478: $c9


GS05_StatePhase_05_ReturnFromPuzzleTransitionAndCommitResult::
    ld bc, $003c                                  ; $5479: $01 $3c $00
    call DelayFramesByBC                          ; $547c: $cd $f7 $05
    ld a, $05                                     ; $547f: $3e $05
    call CallSoundCommandDispatcher               ; $5481: $cd $b3 $03
    ld c, $00                                     ; $5484: $0e $00
    ld a, $01                                     ; $5486: $3e $01
    call CallSoundCommandDispatcher               ; $5488: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $548b: $cd $96 $03
    ld c, $00                                     ; $548e: $0e $00
    ld a, $01                                     ; $5490: $3e $01
    call CallSoundCommandDispatcher               ; $5492: $cd $b3 $03
    ld b, $03                                     ; $5495: $06 $03
    ld hl, $46f3                                  ; $5497: $21 $f3 $46
    ld c, $08                                     ; $549a: $0e $08
    ld de, $0083                                  ; $549c: $11 $83 $00
    call PlayScreenTransitionFadeOut              ; $549f: $cd $4b $04
    call DisableLCDAtVBlank                       ; $54a2: $cd $80 $04
    call GS05_SaveEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $54a5: $cd $03 $56
    xor a                                         ; $54a8: $af
    ld [rPuzzleTimerSecondOnes], a                ; $54a9: $ea $0b $d8
    ld [rPuzzleTimerSecondTens], a                ; $54ac: $ea $0c $d8
    ld [rPuzzleTimerMinuteOnes], a                ; $54af: $ea $09 $d8
    ld a, $03                                     ; $54b2: $3e $03
    ld [rPuzzleTimerMinuteTens], a                ; $54b4: $ea $0a $d8
    xor a                                         ; $54b7: $af
    ld [rHintPopupSelection], a                   ; $54b8: $ea $33 $d8
    ld a, $01                                     ; $54bb: $3e $01
    ld [rPuzzlePostClearFlowFlag], a              ; $54bd: $ea $05 $d8
    call GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $54c0: $cd $ec $55
    call GS05_LoadSelectedEasyPicrossPuzzleStatusAndTimeDataRecord; $54c3: $cd $6a $5a
    call GS05_IncrementSelectedEasyPicrossPuzzleClearCountIfAllowed; $54c6: $cd $1a $57
    call GS05_UpdateSelectedEasyPicrossPuzzleClearStatusAndTimes; $54c9: $cd $44 $57
    call RefreshSaveValidationChecksumsAndMirrors ; $54cc: $cd $1c $1b
    ld a, $04                                     ; $54cf: $3e $04
    ld [rStatePhase_Current], a                   ; $54d1: $ea $35 $d6
    ret                                           ; $54d4: $c9


GS05_StatePhase_02_ConfirmSelectionTransitionToPuzzle::
    ld bc, $003c                                  ; $54d5: $01 $3c $00
    call DelayFramesByBC                          ; $54d8: $cd $f7 $05
    ld a, $05                                     ; $54db: $3e $05
    call CallSoundCommandDispatcher               ; $54dd: $cd $b3 $03
    ld c, $00                                     ; $54e0: $0e $00
    ld a, $01                                     ; $54e2: $3e $01
    call CallSoundCommandDispatcher               ; $54e4: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $54e7: $cd $96 $03
    ld c, $00                                     ; $54ea: $0e $00
    ld a, $01                                     ; $54ec: $3e $01
    call CallSoundCommandDispatcher               ; $54ee: $cd $b3 $03
    ld b, $03                                     ; $54f1: $06 $03
    ld hl, $46f3                                  ; $54f3: $21 $f3 $46
    ld c, $08                                     ; $54f6: $0e $08
    ld de, $0083                                  ; $54f8: $11 $83 $00
    call PlayScreenTransitionFadeOut              ; $54fb: $cd $4b $04
    call DisableLCDAtVBlank                       ; $54fe: $cd $80 $04
    call GS05_SaveEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $5501: $cd $03 $56
    call GS05_LoadSelectedEasyPicrossPuzzleStatusAndTimeDataRecord; $5504: $cd $6a $5a
    call GS05_IncrementSelectedEasyPicrossPuzzleClearCountIfAllowed; $5507: $cd $1a $57
    ld a, [rPuzzleAndMenuCursorRow]               ; $550a: $fa $37 $d6
    swap a                                        ; $550d: $cb $37
    ld c, a                                       ; $550f: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5510: $fa $36 $d6
    sla a                                         ; $5513: $cb $27
    or c                                          ; $5515: $b1
    ld c, a                                       ; $5516: $4f
    ld b, $00                                     ; $5517: $06 $00
    ld hl, GS05_EasyPicrossPuzzleDataIndexTableByGridPosition; $5519: $21 $31 $55
    add hl, bc                                    ; $551c: $09
    ld a, [hl+]                                   ; $551d: $2a
    ld [rPuzzleDataIndexLow], a                   ; $551e: $ea $07 $d8
    ld a, [hl]                                    ; $5521: $7e
    ld [rPuzzleDataIndexHigh], a                  ; $5522: $ea $08 $d8
    xor a                                         ; $5525: $af
    ld [rStatePhase_Current], a                   ; $5526: $ea $35 $d6
    ld a, $08                                     ; $5529: $3e $08
    ld [rGameState_Current], a                    ; $552b: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $552e: $c3 $1c $1b


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
    ld bc, $003c                                  ; $55b1: $01 $3c $00
    call DelayFramesByBC                          ; $55b4: $cd $f7 $05
    ld a, $05                                     ; $55b7: $3e $05
    call CallSoundCommandDispatcher               ; $55b9: $cd $b3 $03
    ld c, $00                                     ; $55bc: $0e $00
    ld a, $01                                     ; $55be: $3e $01
    call CallSoundCommandDispatcher               ; $55c0: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $55c3: $cd $96 $03
    ld c, $00                                     ; $55c6: $0e $00
    ld a, $01                                     ; $55c8: $3e $01
    call CallSoundCommandDispatcher               ; $55ca: $cd $b3 $03
    ld b, $03                                     ; $55cd: $06 $03
    ld hl, $46f3                                  ; $55cf: $21 $f3 $46
    ld c, $08                                     ; $55d2: $0e $08
    ld de, $0083                                  ; $55d4: $11 $83 $00
    call PlayScreenTransitionFadeOut              ; $55d7: $cd $4b $04
    call DisableLCDAtVBlank                       ; $55da: $cd $80 $04
    call GS05_SaveEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $55dd: $cd $03 $56
    xor a                                         ; $55e0: $af
    ld [rStatePhase_Current], a                   ; $55e1: $ea $35 $d6
    ld a, $02                                     ; $55e4: $3e $02
    ld [rGameState_Current], a                    ; $55e6: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $55e9: $c3 $1c $1b


GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot::
    ld a, [rSelectedSaveSlotIndex]                ; $55ec: $fa $65 $a0
    ld c, a                                       ; $55ef: $4f
    ld b, $00                                     ; $55f0: $06 $00
    ld hl, rSaveSlot1EasyPicrossPuzzleSelectCursorColumn; $55f2: $21 $81 $a0
    add hl, bc                                    ; $55f5: $09
    ld a, [hl]                                    ; $55f6: $7e
    ld [rPuzzleCursorColumn], a                   ; $55f7: $ea $36 $d6
    ld hl, rSaveSlot1EasyPicrossPuzzleSelectCursorRow; $55fa: $21 $84 $a0
    add hl, bc                                    ; $55fd: $09
    ld a, [hl]                                    ; $55fe: $7e
    ld [rPuzzleAndMenuCursorRow], a               ; $55ff: $ea $37 $d6
    ret                                           ; $5602: $c9


GS05_SaveEasyPicrossPuzzleSelectCursorForSelectedSaveSlot::
    ld a, [rSelectedSaveSlotIndex]                ; $5603: $fa $65 $a0
    ld c, a                                       ; $5606: $4f
    ld b, $00                                     ; $5607: $06 $00
    ld hl, rSaveSlot1EasyPicrossPuzzleSelectCursorColumn; $5609: $21 $81 $a0
    add hl, bc                                    ; $560c: $09
    ld a, [rPuzzleCursorColumn]                   ; $560d: $fa $36 $d6
    ld [hl], a                                    ; $5610: $77
    ld hl, rSaveSlot1EasyPicrossPuzzleSelectCursorRow; $5611: $21 $84 $a0
    add hl, bc                                    ; $5614: $09
    ld a, [rPuzzleAndMenuCursorRow]               ; $5615: $fa $37 $d6
    ld [hl], a                                    ; $5618: $77
    ret                                           ; $5619: $c9


GS05_DrawEasyPicrossPuzzleSelectCursorSpriteByFrame::
    push af                                       ; $561a: $f5
    ld a, [rPuzzleCursorColumn]                   ; $561b: $fa $36 $d6
    swap a                                        ; $561e: $cb $37
    add $20                                       ; $5620: $c6 $20
    ld b, a                                       ; $5622: $47
    ld a, [rPuzzleAndMenuCursorRow]               ; $5623: $fa $37 $d6
    sla a                                         ; $5626: $cb $27
    sla a                                         ; $5628: $cb $27
    sla a                                         ; $562a: $cb $27
    add $32                                       ; $562c: $c6 $32
    ld c, a                                       ; $562e: $4f
    pop af                                        ; $562f: $f1
    add $60                                       ; $5630: $c6 $60
    jp CopyOAMSpriteById                          ; $5632: $c3 $cb $20


GS05_HandleEasyPicrossPuzzleSelectDirectionalInput::
    ld a, [rInputButtonsPressedOrRepeated]        ; $5635: $fa $22 $c3
    and $f0                                       ; $5638: $e6 $f0
    ret z                                         ; $563a: $c8

    ld c, $0a                                     ; $563b: $0e $0a
    ld a, $02                                     ; $563d: $3e $02
    call CallSoundCommandDispatcher               ; $563f: $cd $b3 $03
    ld hl, rInputButtonsPressedOrRepeated         ; $5642: $21 $22 $c3
    bit 5, [hl]                                   ; $5645: $cb $6e
    jr z, .CheckRight                             ; $5647: $28 $09

    ld a, [rPuzzleCursorColumn]                   ; $5649: $fa $36 $d6
    dec a                                         ; $564c: $3d
    and $07                                       ; $564d: $e6 $07
    ld [rPuzzleCursorColumn], a                   ; $564f: $ea $36 $d6

.CheckRight:
    bit 4, [hl]                                   ; $5652: $cb $66
    jr z, .CheckUp                                ; $5654: $28 $09

    ld a, [rPuzzleCursorColumn]                   ; $5656: $fa $36 $d6
    inc a                                         ; $5659: $3c
    and $07                                       ; $565a: $e6 $07
    ld [rPuzzleCursorColumn], a                   ; $565c: $ea $36 $d6

.CheckUp:
    bit 6, [hl]                                   ; $565f: $cb $76
    jr z, .CheckDown                              ; $5661: $28 $09

    ld a, [rPuzzleAndMenuCursorRow]               ; $5663: $fa $37 $d6
    dec a                                         ; $5666: $3d
    and $07                                       ; $5667: $e6 $07
    ld [rPuzzleAndMenuCursorRow], a               ; $5669: $ea $37 $d6

.CheckDown:
    bit 7, [hl]                                   ; $566c: $cb $7e
    jr z, .Return                                 ; $566e: $28 $09

    ld a, [rPuzzleAndMenuCursorRow]               ; $5670: $fa $37 $d6
    inc a                                         ; $5673: $3c
    and $07                                       ; $5674: $e6 $07
    ld [rPuzzleAndMenuCursorRow], a               ; $5676: $ea $37 $d6

.Return:
    ret                                           ; $5679: $c9


GS05_DrawCompletedPuzzleMarkersForSelectedSaveSlot::
    ld a, [rSelectedSaveSlotIndex]                ; $567a: $fa $65 $a0
    sla a                                         ; $567d: $cb $27
    ld c, a                                       ; $567f: $4f
    ld b, $00                                     ; $5680: $06 $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot; $5682: $21 $5e $5b
    add hl, bc                                    ; $5685: $09
    ld a, [hl+]                                   ; $5686: $2a
    ld h, [hl]                                    ; $5687: $66
    ld l, a                                       ; $5688: $6f
    ld b, $00                                     ; $5689: $06 $00

.BeginNextStatusGridRowScan:
    ld c, $00                                     ; $568b: $0e $00

.ScanStatusGridCellForCompletedMarker:
    ld a, [hl+]                                   ; $568d: $2a
    bit 7, a                                      ; $568e: $cb $7f
    jr z, .AdvanceToNextStatusGridColumn          ; $5690: $28 $03

    call GS05_DrawCompletedPuzzleMarkerAtGridPosition; $5692: $cd $d6 $56

.AdvanceToNextStatusGridColumn:
    inc c                                         ; $5695: $0c
    ld a, c                                       ; $5696: $79
    cp $08                                        ; $5697: $fe $08
    jr nz, .ScanStatusGridCellForCompletedMarker  ; $5699: $20 $f2

    inc b                                         ; $569b: $04
    ld a, b                                       ; $569c: $78
    cp $08                                        ; $569d: $fe $08
    jr nz, .BeginNextStatusGridRowScan            ; $569f: $20 $ea

    ret                                           ; $56a1: $c9


GS05_DrawCompletedPuzzleMarkersForSelectedSaveSlotExceptCurrentSelection::
    ld a, [rSelectedSaveSlotIndex]                ; $56a2: $fa $65 $a0
    sla a                                         ; $56a5: $cb $27
    ld c, a                                       ; $56a7: $4f
    ld b, $00                                     ; $56a8: $06 $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot; $56aa: $21 $5e $5b
    add hl, bc                                    ; $56ad: $09
    ld a, [hl+]                                   ; $56ae: $2a
    ld h, [hl]                                    ; $56af: $66
    ld l, a                                       ; $56b0: $6f
    ld b, $00                                     ; $56b1: $06 $00

.BeginNextStatusGridRowScan:
    ld c, $00                                     ; $56b3: $0e $00

.ScanStatusGridCellForCompletedMarker:
    ld a, [hl+]                                   ; $56b5: $2a
    bit 7, a                                      ; $56b6: $cb $7f
    jr z, .AdvanceToNextStatusGridColumn          ; $56b8: $28 $0f

    ld a, [rPuzzleCursorColumn]                   ; $56ba: $fa $36 $d6
    cp c                                          ; $56bd: $b9
    jr nz, .DrawCompletedMarkerForNonSelectedCell ; $56be: $20 $06

    ld a, [rPuzzleAndMenuCursorRow]               ; $56c0: $fa $37 $d6
    cp b                                          ; $56c3: $b8
    jr z, .AdvanceToNextStatusGridColumn          ; $56c4: $28 $03

.DrawCompletedMarkerForNonSelectedCell:
    call GS05_DrawCompletedPuzzleMarkerAtGridPosition; $56c6: $cd $d6 $56

.AdvanceToNextStatusGridColumn:
    inc c                                         ; $56c9: $0c
    ld a, c                                       ; $56ca: $79
    cp $08                                        ; $56cb: $fe $08
    jr nz, .ScanStatusGridCellForCompletedMarker  ; $56cd: $20 $e6

    inc b                                         ; $56cf: $04
    ld a, b                                       ; $56d0: $78
    cp $08                                        ; $56d1: $fe $08
    jr nz, .BeginNextStatusGridRowScan            ; $56d3: $20 $de

    ret                                           ; $56d5: $c9


GS05_DrawCompletedPuzzleMarkerAtGridPosition::
    push bc                                       ; $56d6: $c5
    push hl                                       ; $56d7: $e5
    ld l, b                                       ; $56d8: $68
    ld h, $00                                     ; $56d9: $26 $00
    sla l                                         ; $56db: $cb $25
    rl h                                          ; $56dd: $cb $14
    sla l                                         ; $56df: $cb $25
    rl h                                          ; $56e1: $cb $14
    sla l                                         ; $56e3: $cb $25
    rl h                                          ; $56e5: $cb $14
    sla l                                         ; $56e7: $cb $25
    rl h                                          ; $56e9: $cb $14
    sla l                                         ; $56eb: $cb $25
    rl h                                          ; $56ed: $cb $14
    sla c                                         ; $56ef: $cb $21
    ld b, $00                                     ; $56f1: $06 $00
    add hl, bc                                    ; $56f3: $09
    ld bc, $98c4                                  ; $56f4: $01 $c4 $98
    add hl, bc                                    ; $56f7: $09
    ld a, h                                       ; $56f8: $7c
    ld [rSharedSingleTileCommandStreamDestHigh], a; $56f9: $ea $00 $c1
    ld a, l                                       ; $56fc: $7d
    ld [rSharedSingleTileCommandStreamDestLow], a ; $56fd: $ea $01 $c1
    ld a, $01                                     ; $5700: $3e $01
    ld [rSharedSingleTileCommandStreamTileCount], a; $5702: $ea $02 $c1
    ld a, $55                                     ; $5705: $3e $55
    ld [rSharedSingleTileCommandStreamTileId], a  ; $5707: $ea $03 $c1
    ld a, $00                                     ; $570a: $3e $00
    ld [rSharedSingleTileCommandStreamTerminator], a; $570c: $ea $04 $c1
    ld a, $00                                     ; $570f: $3e $00
    ld bc, rSharedSingleTileCommandStreamDestHigh ; $5711: $01 $00 $c1
    call QueueCommandStreamAndProcessIfLCDOff     ; $5714: $cd $35 $07
    pop hl                                        ; $5717: $e1
    pop bc                                        ; $5718: $c1
    ret                                           ; $5719: $c9


GS05_IncrementSelectedEasyPicrossPuzzleClearCountIfAllowed::
    ld a, [rSelectedSaveSlotIndex]                ; $571a: $fa $65 $a0
    sla a                                         ; $571d: $cb $27
    ld c, a                                       ; $571f: $4f
    ld b, $00                                     ; $5720: $06 $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot; $5722: $21 $5e $5b
    add hl, bc                                    ; $5725: $09
    ld a, [hl+]                                   ; $5726: $2a
    ld h, [hl]                                    ; $5727: $66
    ld l, a                                       ; $5728: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $5729: $fa $37 $d6
    sla a                                         ; $572c: $cb $27
    sla a                                         ; $572e: $cb $27
    sla a                                         ; $5730: $cb $27
    ld c, a                                       ; $5732: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5733: $fa $36 $d6
    or c                                          ; $5736: $b1
    ld c, a                                       ; $5737: $4f
    ld b, $00                                     ; $5738: $06 $00
    add hl, bc                                    ; $573a: $09
    bit 7, [hl]                                   ; $573b: $cb $7e
    ret nz                                        ; $573d: $c0

    ld a, [hl]                                    ; $573e: $7e
    cp $63                                        ; $573f: $fe $63
    ret z                                         ; $5741: $c8

    inc [hl]                                      ; $5742: $34
    ret                                           ; $5743: $c9


GS05_UpdateSelectedEasyPicrossPuzzleClearStatusAndTimes::
    xor a                                         ; $5744: $af
    ld [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag], a; $5745: $ea $42 $d8
    ld a, [rSelectedSaveSlotIndex]                ; $5748: $fa $65 $a0
    sla a                                         ; $574b: $cb $27
    ld c, a                                       ; $574d: $4f
    ld b, $00                                     ; $574e: $06 $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot; $5750: $21 $5e $5b
    add hl, bc                                    ; $5753: $09
    ld a, [hl+]                                   ; $5754: $2a
    ld h, [hl]                                    ; $5755: $66
    ld l, a                                       ; $5756: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $5757: $fa $37 $d6
    sla a                                         ; $575a: $cb $27
    sla a                                         ; $575c: $cb $27
    sla a                                         ; $575e: $cb $27
    ld c, a                                       ; $5760: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5761: $fa $36 $d6
    or c                                          ; $5764: $b1
    ld c, a                                       ; $5765: $4f
    ld b, $00                                     ; $5766: $06 $00
    add hl, bc                                    ; $5768: $09
    bit 7, [hl]                                   ; $5769: $cb $7e
    push af                                       ; $576b: $f5
    jr nz, .UpdateBestClearTime                   ; $576c: $20 $4b

    push hl                                       ; $576e: $e5
    ld a, [rSelectedSaveSlotIndex]                ; $576f: $fa $65 $a0
    ld c, a                                       ; $5772: $4f
    ld b, $00                                     ; $5773: $06 $00
    ld hl, rSaveSlot1EasyPicrossClearedPuzzleCount; $5775: $21 $7e $a0
    add hl, bc                                    ; $5778: $09
    inc [hl]                                      ; $5779: $34
    pop hl                                        ; $577a: $e1
    set 7, [hl]                                   ; $577b: $cb $fe
    ld a, [rSelectedSaveSlotIndex]                ; $577d: $fa $65 $a0
    sla a                                         ; $5780: $cb $27
    ld c, a                                       ; $5782: $4f
    ld b, $00                                     ; $5783: $06 $00
    ld hl, GS05_EasyPicrossTimeDataPointerTableBySaveSlot; $5785: $21 $58 $5b
    add hl, bc                                    ; $5788: $09
    ld a, [hl+]                                   ; $5789: $2a
    ld h, [hl]                                    ; $578a: $66
    ld l, a                                       ; $578b: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $578c: $fa $37 $d6
    sla a                                         ; $578f: $cb $27
    sla a                                         ; $5791: $cb $27
    sla a                                         ; $5793: $cb $27
    ld c, a                                       ; $5795: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5796: $fa $36 $d6
    or c                                          ; $5799: $b1
    ld c, a                                       ; $579a: $4f
    sla a                                         ; $579b: $cb $27
    add c                                         ; $579d: $81
    ld c, a                                       ; $579e: $4f
    ld b, $00                                     ; $579f: $06 $00
    add hl, bc                                    ; $57a1: $09
    call EncodePuzzleTimerToPackedClearTimeBC     ; $57a2: $cd $0e $50
    ld [hl], c                                    ; $57a5: $71
    inc hl                                        ; $57a6: $23
    ld a, [hl]                                    ; $57a7: $7e
    and $f0                                       ; $57a8: $e6 $f0
    or b                                          ; $57aa: $b0
    ld [hl], a                                    ; $57ab: $77
    ld a, $01                                     ; $57ac: $3e $01
    ld [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag], a; $57ae: $ea $42 $d8
    ld a, [rHintPopupSelection]                   ; $57b1: $fa $33 $d8
    and a                                         ; $57b4: $a7
    jr nz, .UpdateBestClearTime                   ; $57b5: $20 $02

    set 3, [hl]                                   ; $57b7: $cb $de

.UpdateBestClearTime:
    ld a, [rSelectedSaveSlotIndex]                ; $57b9: $fa $65 $a0
    sla a                                         ; $57bc: $cb $27
    ld c, a                                       ; $57be: $4f
    ld b, $00                                     ; $57bf: $06 $00
    ld hl, GS05_EasyPicrossTimeDataPointerTableBySaveSlot; $57c1: $21 $58 $5b
    add hl, bc                                    ; $57c4: $09
    ld a, [hl+]                                   ; $57c5: $2a
    ld h, [hl]                                    ; $57c6: $66
    ld l, a                                       ; $57c7: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $57c8: $fa $37 $d6
    sla a                                         ; $57cb: $cb $27
    sla a                                         ; $57cd: $cb $27
    sla a                                         ; $57cf: $cb $27
    ld c, a                                       ; $57d1: $4f
    ld a, [rPuzzleCursorColumn]                   ; $57d2: $fa $36 $d6
    or c                                          ; $57d5: $b1
    ld c, a                                       ; $57d6: $4f
    sla a                                         ; $57d7: $cb $27
    add c                                         ; $57d9: $81
    ld c, a                                       ; $57da: $4f
    ld b, $00                                     ; $57db: $06 $00
    add hl, bc                                    ; $57dd: $09
    inc hl                                        ; $57de: $23
    push hl                                       ; $57df: $e5
    call EncodePuzzleTimerToPackedClearTimeBC     ; $57e0: $cd $0e $50
    ld a, [rSelectedPuzzleWasFirstClearInStatusAndTimeUpdateFlag]; $57e3: $fa $42 $d8
    and a                                         ; $57e6: $a7
    jr nz, .StoreNewBestClearTime                 ; $57e7: $20 $18

    ld a, [hl+]                                   ; $57e9: $2a
    and $70                                       ; $57ea: $e6 $70
    swap a                                        ; $57ec: $cb $37
    cp b                                          ; $57ee: $b8
    jr z, .CompareBestClearTimeLowByteAndHintUsedOnTie; $57ef: $28 $04

    jr nc, .SkipBestClearTimeUpdate               ; $57f1: $30 $22

    jr .StoreNewBestClearTime                     ; $57f3: $18 $0c

.CompareBestClearTimeLowByteAndHintUsedOnTie:
    ld a, [hl]                                    ; $57f5: $7e
    cp c                                          ; $57f6: $b9
    jr c, .StoreNewBestClearTime                  ; $57f7: $38 $08

    jr nz, .SkipBestClearTimeUpdate               ; $57f9: $20 $1a

    ld a, [rHintPopupSelection]                   ; $57fb: $fa $33 $d8
    and a                                         ; $57fe: $a7
    jr z, .SkipBestClearTimeUpdate                ; $57ff: $28 $14

.StoreNewBestClearTime:
    pop hl                                        ; $5801: $e1
    ld a, [hl]                                    ; $5802: $7e
    and $0f                                       ; $5803: $e6 $0f
    swap b                                        ; $5805: $cb $30
    or b                                          ; $5807: $b0
    ld [hl+], a                                   ; $5808: $22
    ld [hl], c                                    ; $5809: $71
    ld a, [rHintPopupSelection]                   ; $580a: $fa $33 $d8
    and a                                         ; $580d: $a7
    jr nz, .ReturnFromClearStatusAndTimeUpdate    ; $580e: $20 $06

    dec hl                                        ; $5810: $2b
    set 7, [hl]                                   ; $5811: $cb $fe
    jr .ReturnFromClearStatusAndTimeUpdate        ; $5813: $18 $01

.SkipBestClearTimeUpdate:
    pop hl                                        ; $5815: $e1

.ReturnFromClearStatusAndTimeUpdate:
    pop af                                        ; $5816: $f1
    ret                                           ; $5817: $c9


GS05_DrawSelectedEasyPicrossPuzzleInfoPanel::
    ld a, [rSelectedSaveSlotIndex]                ; $5818: $fa $65 $a0
    sla a                                         ; $581b: $cb $27
    ld c, a                                       ; $581d: $4f
    ld b, $00                                     ; $581e: $06 $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot; $5820: $21 $5e $5b
    add hl, bc                                    ; $5823: $09
    ld a, [hl+]                                   ; $5824: $2a
    ld h, [hl]                                    ; $5825: $66
    ld l, a                                       ; $5826: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $5827: $fa $37 $d6
    sla a                                         ; $582a: $cb $27
    sla a                                         ; $582c: $cb $27
    sla a                                         ; $582e: $cb $27
    ld c, a                                       ; $5830: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5831: $fa $36 $d6
    or c                                          ; $5834: $b1
    ld c, a                                       ; $5835: $4f
    ld b, $00                                     ; $5836: $06 $00
    add hl, bc                                    ; $5838: $09
    ld a, [hl]                                    ; $5839: $7e
    push af                                       ; $583a: $f5
    and $7f                                       ; $583b: $e6 $7f
    call SplitAToDecimalDigitsAndPushHundredsTens ; $583d: $cd $6f $19
    add $51                                       ; $5840: $c6 $51
    ld bc, $4818                                  ; $5842: $01 $18 $48
    call CopyOAMSpriteById                        ; $5845: $cd $cb $20
    pop af                                        ; $5848: $f1
    cp $0a                                        ; $5849: $fe $0a
    jr z, .AfterTimesClearedDigits                ; $584b: $28 $08

    add $51                                       ; $584d: $c6 $51
    ld bc, $4018                                  ; $584f: $01 $18 $40
    call CopyOAMSpriteById                        ; $5852: $cd $cb $20

.AfterTimesClearedDigits:
    pop af                                        ; $5855: $f1
    pop af                                        ; $5856: $f1
    bit 7, a                                      ; $5857: $cb $7f
    jp z, GS05_DrawSelectedEasyPicrossPuzzleInfoPanel_DrawUnclearedPlaceholders; $5859: $ca $2c $59

    ld a, [rSelectedSaveSlotIndex]                ; $585c: $fa $65 $a0
    sla a                                         ; $585f: $cb $27
    ld c, a                                       ; $5861: $4f
    ld b, $00                                     ; $5862: $06 $00
    ld hl, GS05_EasyPicrossTimeDataPointerTableBySaveSlot; $5864: $21 $58 $5b
    add hl, bc                                    ; $5867: $09
    ld a, [hl+]                                   ; $5868: $2a
    ld h, [hl]                                    ; $5869: $66
    ld l, a                                       ; $586a: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $586b: $fa $37 $d6
    sla a                                         ; $586e: $cb $27
    sla a                                         ; $5870: $cb $27
    sla a                                         ; $5872: $cb $27
    ld c, a                                       ; $5874: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5875: $fa $36 $d6
    or c                                          ; $5878: $b1
    ld c, a                                       ; $5879: $4f
    sla a                                         ; $587a: $cb $27
    add c                                         ; $587c: $81
    ld c, a                                       ; $587d: $4f
    ld b, $00                                     ; $587e: $06 $00
    add hl, bc                                    ; $5880: $09
    ld c, [hl]                                    ; $5881: $4e
    inc hl                                        ; $5882: $23
    ld b, [hl]                                    ; $5883: $46
    call DecodePackedPuzzleClearTimeToBCDDigits   ; $5884: $cd $3c $50
    push bc                                       ; $5887: $c5
    ld a, b                                       ; $5888: $78
    and $f0                                       ; $5889: $e6 $f0
    swap a                                        ; $588b: $cb $37
    add $51                                       ; $588d: $c6 $51
    ld bc, $0818                                  ; $588f: $01 $18 $08
    call CopyOAMSpriteById                        ; $5892: $cd $cb $20
    pop bc                                        ; $5895: $c1
    push bc                                       ; $5896: $c5
    ld a, b                                       ; $5897: $78
    and $0f                                       ; $5898: $e6 $0f
    add $51                                       ; $589a: $c6 $51
    ld bc, $1018                                  ; $589c: $01 $18 $10
    call CopyOAMSpriteById                        ; $589f: $cd $cb $20
    pop bc                                        ; $58a2: $c1
    push bc                                       ; $58a3: $c5
    ld a, c                                       ; $58a4: $79
    and $f0                                       ; $58a5: $e6 $f0
    swap a                                        ; $58a7: $cb $37
    add $51                                       ; $58a9: $c6 $51
    ld bc, $2018                                  ; $58ab: $01 $18 $20
    call CopyOAMSpriteById                        ; $58ae: $cd $cb $20
    pop bc                                        ; $58b1: $c1
    ld a, c                                       ; $58b2: $79
    and $0f                                       ; $58b3: $e6 $0f
    add $51                                       ; $58b5: $c6 $51
    ld bc, $2818                                  ; $58b7: $01 $18 $28
    call CopyOAMSpriteById                        ; $58ba: $cd $cb $20
    ld a, [hl]                                    ; $58bd: $7e
    call GS05_UpdateFirstClearTimeHintUsedIconTile; $58be: $cd $c1 $5a
    ld a, [rSelectedSaveSlotIndex]                ; $58c1: $fa $65 $a0
    sla a                                         ; $58c4: $cb $27
    ld c, a                                       ; $58c6: $4f
    ld b, $00                                     ; $58c7: $06 $00
    ld hl, GS05_EasyPicrossTimeDataPointerTableBySaveSlot; $58c9: $21 $58 $5b
    add hl, bc                                    ; $58cc: $09
    ld a, [hl+]                                   ; $58cd: $2a
    ld h, [hl]                                    ; $58ce: $66
    ld l, a                                       ; $58cf: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $58d0: $fa $37 $d6
    sla a                                         ; $58d3: $cb $27
    sla a                                         ; $58d5: $cb $27
    sla a                                         ; $58d7: $cb $27
    ld c, a                                       ; $58d9: $4f
    ld a, [rPuzzleCursorColumn]                   ; $58da: $fa $36 $d6
    or c                                          ; $58dd: $b1
    ld c, a                                       ; $58de: $4f
    sla a                                         ; $58df: $cb $27
    add c                                         ; $58e1: $81
    ld c, a                                       ; $58e2: $4f
    ld b, $00                                     ; $58e3: $06 $00
    add hl, bc                                    ; $58e5: $09
    inc hl                                        ; $58e6: $23
    ld a, [hl+]                                   ; $58e7: $2a
    and $f0                                       ; $58e8: $e6 $f0
    swap a                                        ; $58ea: $cb $37
    ld b, a                                       ; $58ec: $47
    ld c, [hl]                                    ; $58ed: $4e
    call DecodePackedPuzzleClearTimeToBCDDigits   ; $58ee: $cd $3c $50
    push bc                                       ; $58f1: $c5
    ld a, b                                       ; $58f2: $78
    and $f0                                       ; $58f3: $e6 $f0
    swap a                                        ; $58f5: $cb $37
    add $51                                       ; $58f7: $c6 $51
    ld bc, $6818                                  ; $58f9: $01 $18 $68
    call CopyOAMSpriteById                        ; $58fc: $cd $cb $20
    pop bc                                        ; $58ff: $c1
    push bc                                       ; $5900: $c5
    ld a, b                                       ; $5901: $78
    and $0f                                       ; $5902: $e6 $0f
    add $51                                       ; $5904: $c6 $51
    ld bc, $7018                                  ; $5906: $01 $18 $70
    call CopyOAMSpriteById                        ; $5909: $cd $cb $20
    pop bc                                        ; $590c: $c1
    push bc                                       ; $590d: $c5
    ld a, c                                       ; $590e: $79
    and $f0                                       ; $590f: $e6 $f0
    swap a                                        ; $5911: $cb $37
    add $51                                       ; $5913: $c6 $51
    ld bc, $8018                                  ; $5915: $01 $18 $80
    call CopyOAMSpriteById                        ; $5918: $cd $cb $20
    pop bc                                        ; $591b: $c1
    ld a, c                                       ; $591c: $79
    and $0f                                       ; $591d: $e6 $0f
    add $51                                       ; $591f: $c6 $51
    ld bc, $8818                                  ; $5921: $01 $18 $88
    call CopyOAMSpriteById                        ; $5924: $cd $cb $20
    dec hl                                        ; $5927: $2b
    ld a, [hl]                                    ; $5928: $7e
    jp GS05_UpdateBestClearTimeHintUsedIconTile   ; $5929: $c3 $e6 $5a


GS05_DrawSelectedEasyPicrossPuzzleInfoPanel_DrawUnclearedPlaceholders::
    ld a, $80                                     ; $592c: $3e $80
    ld bc, $0818                                  ; $592e: $01 $18 $08
    call CopyOAMSpriteById                        ; $5931: $cd $cb $20
    ld a, $80                                     ; $5934: $3e $80
    ld bc, $1018                                  ; $5936: $01 $18 $10
    call CopyOAMSpriteById                        ; $5939: $cd $cb $20
    ld a, $80                                     ; $593c: $3e $80
    ld bc, $2018                                  ; $593e: $01 $18 $20
    call CopyOAMSpriteById                        ; $5941: $cd $cb $20
    ld a, $80                                     ; $5944: $3e $80
    ld bc, $2818                                  ; $5946: $01 $18 $28
    call CopyOAMSpriteById                        ; $5949: $cd $cb $20
    ld a, $80                                     ; $594c: $3e $80
    ld bc, $6818                                  ; $594e: $01 $18 $68
    call CopyOAMSpriteById                        ; $5951: $cd $cb $20
    ld a, $80                                     ; $5954: $3e $80
    ld bc, $7018                                  ; $5956: $01 $18 $70
    call CopyOAMSpriteById                        ; $5959: $cd $cb $20
    ld a, $80                                     ; $595c: $3e $80
    ld bc, $8018                                  ; $595e: $01 $18 $80
    call CopyOAMSpriteById                        ; $5961: $cd $cb $20
    ld a, $80                                     ; $5964: $3e $80
    ld bc, $8818                                  ; $5966: $01 $18 $88
    call CopyOAMSpriteById                        ; $5969: $cd $cb $20
    xor a                                         ; $596c: $af
    call GS05_UpdateFirstClearTimeHintUsedIconTile; $596d: $cd $c1 $5a
    jp GS05_UpdateBestClearTimeHintUsedIconTile   ; $5970: $c3 $e6 $5a


GS05_DrawSelectedEasyPicrossPuzzleInfoPanelFromSelectedPuzzleCache::
    ld a, [rSelectedPuzzleStatusData]             ; $5973: $fa $4c $d8
    push af                                       ; $5976: $f5
    and $7f                                       ; $5977: $e6 $7f
    call SplitAToDecimalDigitsAndPushHundredsTens ; $5979: $cd $6f $19
    add $51                                       ; $597c: $c6 $51
    ld bc, $4818                                  ; $597e: $01 $18 $48
    call CopyOAMSpriteById                        ; $5981: $cd $cb $20
    pop af                                        ; $5984: $f1
    cp $0a                                        ; $5985: $fe $0a
    jr z, .AfterTimesClearedDigits                ; $5987: $28 $08

    add $51                                       ; $5989: $c6 $51
    ld bc, $4018                                  ; $598b: $01 $18 $40
    call CopyOAMSpriteById                        ; $598e: $cd $cb $20

.AfterTimesClearedDigits:
    pop af                                        ; $5991: $f1
    pop af                                        ; $5992: $f1
    bit 7, a                                      ; $5993: $cb $7f
    jp z, GS05_DrawSelectedEasyPicrossPuzzleInfoPanelFromSelectedPuzzleCache_DrawUnclearedPlaceholders; $5995: $ca $23 $5a

    ld hl, rSelectedPuzzleTimeDataRecordByte0     ; $5998: $21 $49 $d8
    ld c, [hl]                                    ; $599b: $4e
    inc hl                                        ; $599c: $23
    ld b, [hl]                                    ; $599d: $46
    call DecodePackedPuzzleClearTimeToBCDDigits   ; $599e: $cd $3c $50
    push bc                                       ; $59a1: $c5
    ld a, b                                       ; $59a2: $78
    and $f0                                       ; $59a3: $e6 $f0
    swap a                                        ; $59a5: $cb $37
    add $51                                       ; $59a7: $c6 $51
    ld bc, $0818                                  ; $59a9: $01 $18 $08
    call CopyOAMSpriteById                        ; $59ac: $cd $cb $20
    pop bc                                        ; $59af: $c1
    push bc                                       ; $59b0: $c5
    ld a, b                                       ; $59b1: $78
    and $0f                                       ; $59b2: $e6 $0f
    add $51                                       ; $59b4: $c6 $51
    ld bc, $1018                                  ; $59b6: $01 $18 $10
    call CopyOAMSpriteById                        ; $59b9: $cd $cb $20
    pop bc                                        ; $59bc: $c1
    push bc                                       ; $59bd: $c5
    ld a, c                                       ; $59be: $79
    and $f0                                       ; $59bf: $e6 $f0
    swap a                                        ; $59c1: $cb $37
    add $51                                       ; $59c3: $c6 $51
    ld bc, $2018                                  ; $59c5: $01 $18 $20
    call CopyOAMSpriteById                        ; $59c8: $cd $cb $20
    pop bc                                        ; $59cb: $c1
    ld a, c                                       ; $59cc: $79
    and $0f                                       ; $59cd: $e6 $0f
    add $51                                       ; $59cf: $c6 $51
    ld bc, $2818                                  ; $59d1: $01 $18 $28
    call CopyOAMSpriteById                        ; $59d4: $cd $cb $20
    ld a, [hl]                                    ; $59d7: $7e
    call GS05_UpdateFirstClearTimeHintUsedIconTile; $59d8: $cd $c1 $5a
    ld hl, rSelectedPuzzleTimeDataRecordByte1     ; $59db: $21 $4a $d8
    ld a, [hl+]                                   ; $59de: $2a
    and $f0                                       ; $59df: $e6 $f0
    swap a                                        ; $59e1: $cb $37
    ld b, a                                       ; $59e3: $47
    ld c, [hl]                                    ; $59e4: $4e
    call DecodePackedPuzzleClearTimeToBCDDigits   ; $59e5: $cd $3c $50
    push bc                                       ; $59e8: $c5
    ld a, b                                       ; $59e9: $78
    and $f0                                       ; $59ea: $e6 $f0
    swap a                                        ; $59ec: $cb $37
    add $51                                       ; $59ee: $c6 $51
    ld bc, $6818                                  ; $59f0: $01 $18 $68
    call CopyOAMSpriteById                        ; $59f3: $cd $cb $20
    pop bc                                        ; $59f6: $c1
    push bc                                       ; $59f7: $c5
    ld a, b                                       ; $59f8: $78
    and $0f                                       ; $59f9: $e6 $0f
    add $51                                       ; $59fb: $c6 $51
    ld bc, $7018                                  ; $59fd: $01 $18 $70
    call CopyOAMSpriteById                        ; $5a00: $cd $cb $20
    pop bc                                        ; $5a03: $c1
    push bc                                       ; $5a04: $c5
    ld a, c                                       ; $5a05: $79
    and $f0                                       ; $5a06: $e6 $f0
    swap a                                        ; $5a08: $cb $37
    add $51                                       ; $5a0a: $c6 $51
    ld bc, $8018                                  ; $5a0c: $01 $18 $80
    call CopyOAMSpriteById                        ; $5a0f: $cd $cb $20
    pop bc                                        ; $5a12: $c1
    ld a, c                                       ; $5a13: $79
    and $0f                                       ; $5a14: $e6 $0f
    add $51                                       ; $5a16: $c6 $51
    ld bc, $8818                                  ; $5a18: $01 $18 $88
    call CopyOAMSpriteById                        ; $5a1b: $cd $cb $20
    dec hl                                        ; $5a1e: $2b
    ld a, [hl]                                    ; $5a1f: $7e
    jp GS05_UpdateBestClearTimeHintUsedIconTile   ; $5a20: $c3 $e6 $5a


GS05_DrawSelectedEasyPicrossPuzzleInfoPanelFromSelectedPuzzleCache_DrawUnclearedPlaceholders::
    ld a, $80                                     ; $5a23: $3e $80
    ld bc, $0818                                  ; $5a25: $01 $18 $08
    call CopyOAMSpriteById                        ; $5a28: $cd $cb $20
    ld a, $80                                     ; $5a2b: $3e $80
    ld bc, $1018                                  ; $5a2d: $01 $18 $10
    call CopyOAMSpriteById                        ; $5a30: $cd $cb $20
    ld a, $80                                     ; $5a33: $3e $80
    ld bc, $2018                                  ; $5a35: $01 $18 $20
    call CopyOAMSpriteById                        ; $5a38: $cd $cb $20
    ld a, $80                                     ; $5a3b: $3e $80
    ld bc, $2818                                  ; $5a3d: $01 $18 $28
    call CopyOAMSpriteById                        ; $5a40: $cd $cb $20
    ld a, $80                                     ; $5a43: $3e $80
    ld bc, $6818                                  ; $5a45: $01 $18 $68
    call CopyOAMSpriteById                        ; $5a48: $cd $cb $20
    ld a, $80                                     ; $5a4b: $3e $80
    ld bc, $7018                                  ; $5a4d: $01 $18 $70
    call CopyOAMSpriteById                        ; $5a50: $cd $cb $20
    ld a, $80                                     ; $5a53: $3e $80
    ld bc, $8018                                  ; $5a55: $01 $18 $80
    call CopyOAMSpriteById                        ; $5a58: $cd $cb $20
    ld a, $80                                     ; $5a5b: $3e $80
    ld bc, $8818                                  ; $5a5d: $01 $18 $88
    call CopyOAMSpriteById                        ; $5a60: $cd $cb $20
    xor a                                         ; $5a63: $af
    call GS05_UpdateFirstClearTimeHintUsedIconTile; $5a64: $cd $c1 $5a
    jp GS05_UpdateBestClearTimeHintUsedIconTile   ; $5a67: $c3 $e6 $5a


GS05_LoadSelectedEasyPicrossPuzzleStatusAndTimeDataRecord::
    ld a, [rSelectedSaveSlotIndex]                ; $5a6a: $fa $65 $a0
    sla a                                         ; $5a6d: $cb $27
    ld c, a                                       ; $5a6f: $4f
    ld b, $00                                     ; $5a70: $06 $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot; $5a72: $21 $5e $5b
    add hl, bc                                    ; $5a75: $09
    ld a, [hl+]                                   ; $5a76: $2a
    ld h, [hl]                                    ; $5a77: $66
    ld l, a                                       ; $5a78: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $5a79: $fa $37 $d6
    sla a                                         ; $5a7c: $cb $27
    sla a                                         ; $5a7e: $cb $27
    sla a                                         ; $5a80: $cb $27
    ld c, a                                       ; $5a82: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5a83: $fa $36 $d6
    or c                                          ; $5a86: $b1
    ld c, a                                       ; $5a87: $4f
    ld b, $00                                     ; $5a88: $06 $00
    add hl, bc                                    ; $5a8a: $09
    ld a, [hl]                                    ; $5a8b: $7e
    ld [rSelectedPuzzleStatusData], a             ; $5a8c: $ea $4c $d8
    ld a, [rSelectedSaveSlotIndex]                ; $5a8f: $fa $65 $a0
    sla a                                         ; $5a92: $cb $27
    ld c, a                                       ; $5a94: $4f
    ld b, $00                                     ; $5a95: $06 $00
    ld hl, GS05_EasyPicrossTimeDataPointerTableBySaveSlot; $5a97: $21 $58 $5b
    add hl, bc                                    ; $5a9a: $09
    ld a, [hl+]                                   ; $5a9b: $2a
    ld h, [hl]                                    ; $5a9c: $66
    ld l, a                                       ; $5a9d: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $5a9e: $fa $37 $d6
    sla a                                         ; $5aa1: $cb $27
    sla a                                         ; $5aa3: $cb $27
    sla a                                         ; $5aa5: $cb $27
    ld c, a                                       ; $5aa7: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5aa8: $fa $36 $d6
    or c                                          ; $5aab: $b1
    ld c, a                                       ; $5aac: $4f
    sla a                                         ; $5aad: $cb $27
    add c                                         ; $5aaf: $81
    ld c, a                                       ; $5ab0: $4f
    ld b, $00                                     ; $5ab1: $06 $00
    add hl, bc                                    ; $5ab3: $09
    ld a, [hl+]                                   ; $5ab4: $2a
    ld [rSelectedPuzzleTimeDataRecordByte0], a    ; $5ab5: $ea $49 $d8
    ld a, [hl+]                                   ; $5ab8: $2a
    ld [rSelectedPuzzleTimeDataRecordByte1], a    ; $5ab9: $ea $4a $d8
    ld a, [hl]                                    ; $5abc: $7e
    ld [rSelectedPuzzleTimeDataRecordByte2], a    ; $5abd: $ea $4b $d8
    ret                                           ; $5ac0: $c9


GS05_UpdateFirstClearTimeHintUsedIconTile::
    push af                                       ; $5ac1: $f5
    push hl                                       ; $5ac2: $e5
    bit 3, a                                      ; $5ac3: $cb $5f
    jr z, .DrawFirstClearTimeHintUsedBlankTile    ; $5ac5: $28 $0a

    ld a, $01                                     ; $5ac7: $3e $01
    ld bc, GS05_FirstClearTimeHintUsedIconCommandStream; $5ac9: $01 $dc $5a
    call QueueCommandStreamAndProcessIfLCDOff     ; $5acc: $cd $35 $07
    jr .ReturnFromFirstClearTimeHintUsedTileUpdate; $5acf: $18 $08

.DrawFirstClearTimeHintUsedBlankTile:
    ld a, $01                                     ; $5ad1: $3e $01
    ld bc, GS05_FirstClearTimeHintUsedBlankCommandStream; $5ad3: $01 $e1 $5a
    call QueueCommandStreamAndProcessIfLCDOff     ; $5ad6: $cd $35 $07

.ReturnFromFirstClearTimeHintUsedTileUpdate:
    pop hl                                        ; $5ad9: $e1
    pop af                                        ; $5ada: $f1
    ret                                           ; $5adb: $c9


GS05_FirstClearTimeHintUsedIconCommandStream::
    db $98, $66, $01, $2f
    db $00

GS05_FirstClearTimeHintUsedBlankCommandStream::
    db $98, $66, $01, $2b
    db $00

GS05_UpdateBestClearTimeHintUsedIconTile::
    push af                                       ; $5ae6: $f5
    push hl                                       ; $5ae7: $e5
    bit 7, a                                      ; $5ae8: $cb $7f
    jr z, .DrawBestClearTimeHintUsedBlankTile     ; $5aea: $28 $0a

    ld a, $01                                     ; $5aec: $3e $01
    ld bc, GS05_BestClearTimeHintUsedIconCommandStream; $5aee: $01 $01 $5b
    call QueueCommandStreamAndProcessIfLCDOff     ; $5af1: $cd $35 $07
    jr .ReturnFromBestClearTimeHintUsedTileUpdate ; $5af4: $18 $08

.DrawBestClearTimeHintUsedBlankTile:
    ld a, $01                                     ; $5af6: $3e $01
    ld bc, GS05_BestClearTimeHintUsedBlankCommandStream; $5af8: $01 $06 $5b
    call QueueCommandStreamAndProcessIfLCDOff     ; $5afb: $cd $35 $07

.ReturnFromBestClearTimeHintUsedTileUpdate:
    pop hl                                        ; $5afe: $e1
    pop af                                        ; $5aff: $f1
    ret                                           ; $5b00: $c9


GS05_BestClearTimeHintUsedIconCommandStream::
    db $98, $72, $01, $2f
    db $00

GS05_BestClearTimeHintUsedBlankCommandStream::
    db $98, $72, $01, $2b
    db $00

GS05_AdvanceSelectionToNextUnclearedPuzzleIfPossible::
    ld a, [rPuzzleAndMenuCursorRow]               ; $5b0b: $fa $37 $d6
    cp $07                                        ; $5b0e: $fe $07
    jr nz, .CheckNextPuzzleClearStatus            ; $5b10: $20 $06

    ld a, [rPuzzleCursorColumn]                   ; $5b12: $fa $36 $d6
    cp $07                                        ; $5b15: $fe $07
    ret z                                         ; $5b17: $c8

.CheckNextPuzzleClearStatus:
    ld a, [rSelectedSaveSlotIndex]                ; $5b18: $fa $65 $a0
    sla a                                         ; $5b1b: $cb $27
    ld c, a                                       ; $5b1d: $4f
    ld b, $00                                     ; $5b1e: $06 $00
    ld hl, GS05_EasyPicrossStatusDataPointerTableBySaveSlot; $5b20: $21 $5e $5b
    add hl, bc                                    ; $5b23: $09
    ld a, [hl+]                                   ; $5b24: $2a
    ld h, [hl]                                    ; $5b25: $66
    ld l, a                                       ; $5b26: $6f
    ld a, [rPuzzleAndMenuCursorRow]               ; $5b27: $fa $37 $d6
    sla a                                         ; $5b2a: $cb $27
    sla a                                         ; $5b2c: $cb $27
    sla a                                         ; $5b2e: $cb $27
    ld c, a                                       ; $5b30: $4f
    ld a, [rPuzzleCursorColumn]                   ; $5b31: $fa $36 $d6
    or c                                          ; $5b34: $b1
    ld c, a                                       ; $5b35: $4f
    ld b, $00                                     ; $5b36: $06 $00
    add hl, bc                                    ; $5b38: $09
    inc hl                                        ; $5b39: $23
    bit 7, [hl]                                   ; $5b3a: $cb $7e
    ret nz                                        ; $5b3c: $c0

    ld a, [rPuzzleCursorColumn]                   ; $5b3d: $fa $36 $d6
    inc a                                         ; $5b40: $3c
    cp $08                                        ; $5b41: $fe $08
    jr nz, .StoreAdvancedSelectionAndPlayMoveSfx  ; $5b43: $20 $08

    ld a, [rPuzzleAndMenuCursorRow]               ; $5b45: $fa $37 $d6
    inc a                                         ; $5b48: $3c
    ld [rPuzzleAndMenuCursorRow], a               ; $5b49: $ea $37 $d6
    xor a                                         ; $5b4c: $af

.StoreAdvancedSelectionAndPlayMoveSfx:
    ld [rPuzzleCursorColumn], a                   ; $5b4d: $ea $36 $d6
    ld c, $0a                                     ; $5b50: $0e $0a
    ld a, $02                                     ; $5b52: $3e $02
    call CallSoundCommandDispatcher               ; $5b54: $cd $b3 $03
    ret                                           ; $5b57: $c9


GS05_EasyPicrossTimeDataPointerTableBySaveSlot::
    db $87, $a0
    db $47, $a1
    db $07, $a2

GS05_EasyPicrossStatusDataPointerTableBySaveSlot::
    db $c7, $a2
    db $07, $a3
    db $47, $a3

LetsTryThisOneText::
    db "さぁ､このもんだいに", $fe, $ff, "チャレンジしてみよう｡", $ff, $ff

VeryGoodText::
    db "たいへんよくできました｡", $ff, $ff

LetsTryAgainText::
    db "ざんねんでした｡", $fe, $ff, "また､チャレンジしてください｡", $ff, $ff

ItsTheLetterText::
    db $fe, $ff, "このこたえは､", $ff, $ff

LText::
    db "アルファベットの", $fe, $ff, "“L”です｡", $ff, $ff

EText::
    db "アルファベットの", $fe, $ff, "“E”です｡", $ff, $ff

TText::
    db "アルファベットの", $fe, $ff, "“T”です｡", $ff, $ff

SText::
    db "アルファベットの", $fe, $ff, "“S”です｡", $ff, $ff

WText::
    db "アルファベットの", $fe, $ff, "“W”です｡", $ff, $ff

OText::
    db "アルファベットの", $fe, $ff, "“O”です｡", $ff, $ff

RText::
    db "アルファベットの", $fe, $ff, "“R”です｡", $ff, $ff

KText::
    db "アルファベットの", $fe, $ff, "“K”です｡", $ff, $ff

GameState_08_EasyPicrossPuzzle_PhaseDispatcher::
    ld a, [rStatePhase_Current]                   ; $5cf0: $fa $35 $d6
    rst RST_18                                    ; $5cf3: $df

GS08_PhasePointer_00::
    db $0c, $5d

GS08_PhasePointer_01::
    db $17, $5f

GS08_PhasePointer_02::
    db $1a, $5f

GS08_PhasePointer_03::
    db $3d, $5f

GS08_PhasePointer_04::
    db $ed, $60

GS08_PhasePointer_05::
    db $6e, $61

GS08_PhasePointer_06::
    db $aa, $61

GS08_PhasePointer_07::
    db $e2, $61

GS08_PhasePointer_08::
    db $9a, $62

GS08_PhasePointer_09::
    db $b5, $62

GS08_PhasePointer_0a::
    db $35, $63

GS08_PhasePointer_0b::
    db $05, $5e

GS08_StatePhase_00_EasyPicrossPuzzleInit::
    ld a, $43                                     ; $5d0c: $3e $43
    ld [rLCDCShadow], a                           ; $5d0e: $ea $2e $c3
    xor a                                         ; $5d11: $af
    ld [rBGPShadow], a                            ; $5d12: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $5d15: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $5d18: $ea $31 $c3
    ld [rSCXShadow], a                            ; $5d1b: $ea $32 $c3
    ld [rSCYShadow], a                            ; $5d1e: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $5d21: $cd $9d $05
    call FillBGMap1WithTile01                     ; $5d24: $cd $a8 $05
    call LoadPuzzleDataBuffer                     ; $5d27: $cd $ee $07
    call LoadGameBoardTileData                    ; $5d2a: $cd $2b $69
    xor a                                         ; $5d2d: $af
    ld [rPuzzleCursorColumn], a                   ; $5d2e: $ea $36 $d6
    ld [rPuzzleAndMenuCursorRow], a               ; $5d31: $ea $37 $d6
    ld a, $00                                     ; $5d34: $3e $00
    ld [rHintPopupSelection], a                   ; $5d36: $ea $33 $d8
    ld a, $02                                     ; $5d39: $3e $02
    ld [rPuzzleTimerPenaltyStep], a               ; $5d3b: $ea $11 $d8
    ld a, $06                                     ; $5d3e: $3e $06
    ld hl, $7800                                  ; $5d40: $21 $00 $78
    ld de, $8500                                  ; $5d43: $11 $00 $85
    ld bc, $0200                                  ; $5d46: $01 $00 $02
    call BankedTileCopy                           ; $5d49: $cd $e1 $04
    ld a, $2f                                     ; $5d4c: $3e $2f
    ld [rLYCShadow], a                            ; $5d4e: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags             ; $5d51: $21 $37 $c3
    set 6, [hl]                                   ; $5d54: $cb $f6
    ld hl, rIE                                    ; $5d56: $21 $ff $ff
    set 1, [hl]                                   ; $5d59: $cb $ce
    ld a, $01                                     ; $5d5b: $3e $01
    ld [rLCDCInterruptDispatchIndex], a           ; $5d5d: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $5d60: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $5d63: $ea $50 $c3
    call BuildClueRunLengthBuffers                ; $5d66: $cd $a2 $6e
    call ClearShadowOAMBuffer                     ; $5d69: $cd $b3 $05
    call ResetPuzzleTimerState                    ; $5d6c: $cd $5d $7b
    call RedrawBoardCellEffectFramesFromStateBuffer; $5d6f: $cd $e0 $77
    ld a, [rSelectedSaveSlotIndex]                ; $5d72: $fa $65 $a0
    ld c, a                                       ; $5d75: $4f
    sla a                                         ; $5d76: $cb $27
    sla a                                         ; $5d78: $cb $27
    add c                                         ; $5d7a: $81
    ld c, a                                       ; $5d7b: $4f
    ld b, $00                                     ; $5d7c: $06 $00
    ld hl, rSaveSlot1EasyPicrossBGMSelectionIndex ; $5d7e: $21 $69 $a0
    add hl, bc                                    ; $5d81: $09
    ld c, [hl]                                    ; $5d82: $4e
    ld b, $00                                     ; $5d83: $06 $00
    ld hl, PuzzleModeSecondarySfxIdTable          ; $5d85: $21 $9f $7d
    add hl, bc                                    ; $5d88: $09
    ld c, $00                                     ; $5d89: $0e $00
    ld a, $01                                     ; $5d8b: $3e $01
    call CallSoundCommandDispatcher               ; $5d8d: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $5d90: $cd $96 $03
    ld c, [hl]                                    ; $5d93: $4e
    ld a, $01                                     ; $5d94: $3e $01
    call CallSoundCommandDispatcher               ; $5d96: $cd $b3 $03
    call EnableLCDFromShadow                      ; $5d99: $cd $9f $04
    ld a, [rPuzzleGridWidth]                      ; $5d9c: $fa $00 $d8
    cp $05                                        ; $5d9f: $fe $05
    jr nz, .SelectFadeInParamsForNon5x5Grid       ; $5da1: $20 $0f

    ld b, $03                                     ; $5da3: $06 $03
    ld hl, $46a0                                  ; $5da5: $21 $a0 $46
    ld c, $01                                     ; $5da8: $0e $01
    ld de, $0014                                  ; $5daa: $11 $14 $00
    call PlayScreenTransitionFadeIn               ; $5dad: $cd $0a $04
    jr .MaybeRun5x5OpeningMessageScript           ; $5db0: $18 $20

.SelectFadeInParamsForNon5x5Grid:
    cp $0a                                        ; $5db2: $fe $0a
    jr nz, .ApplyFadeInParamsFor15x15Grid         ; $5db4: $20 $0f

    ld b, $03                                     ; $5db6: $06 $03
    ld hl, $46ac                                  ; $5db8: $21 $ac $46
    ld c, $02                                     ; $5dbb: $0e $02
    ld de, $0024                                  ; $5dbd: $11 $24 $00
    call PlayScreenTransitionFadeIn               ; $5dc0: $cd $0a $04
    jr .MaybeRun5x5OpeningMessageScript           ; $5dc3: $18 $0d

.ApplyFadeInParamsFor15x15Grid:
    ld b, $03                                     ; $5dc5: $06 $03
    ld hl, $4694                                  ; $5dc7: $21 $94 $46
    ld c, $00                                     ; $5dca: $0e $00
    ld de, $0004                                  ; $5dcc: $11 $04 $00
    call PlayScreenTransitionFadeIn               ; $5dcf: $cd $0a $04

.MaybeRun5x5OpeningMessageScript:
    ld a, [rPuzzleGridWidth]                      ; $5dd2: $fa $00 $d8
    cp $05                                        ; $5dd5: $fe $05
    jr nz, .AdvanceToNextPhase                    ; $5dd7: $20 $27

    ld a, $0d                                     ; $5dd9: $3e $0d
    ld [rMessageScriptStreamResetEntryLow], a     ; $5ddb: $ea $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $5dde: $ea $2b $d8
    ld a, $58                                     ; $5de1: $3e $58
    ld [rMessageScriptStreamResetEntryHigh], a    ; $5de3: $ea $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $5de6: $ea $2c $d8
    ld a, $93                                     ; $5de9: $3e $93
    ld [rMessageScriptStreamLimitLow], a          ; $5deb: $ea $45 $d8
    ld a, $86                                     ; $5dee: $3e $86
    ld [rMessageScriptStreamLimitHigh], a         ; $5df0: $ea $46 $d8
    ld a, $64                                     ; $5df3: $3e $64
    ld [rMessageScriptStreamPointerLow], a        ; $5df5: $ea $2d $d8
    ld a, $5b                                     ; $5df8: $3e $5b
    ld [rMessageScriptStreamPointerHigh], a       ; $5dfa: $ea $2e $d8
    call GS08_RunMessageScriptUntilEndWithFrameUpdates; $5dfd: $cd $1d $5f

.AdvanceToNextPhase:
    ld hl, rStatePhase_Current                    ; $5e00: $21 $35 $d6
    inc [hl]                                      ; $5e03: $34
    ret                                           ; $5e04: $c9


GS08_StatePhase_0b_ContinueSavedPuzzleInitAndOpenPauseMenu::
    ld a, $43                                     ; $5e05: $3e $43
    ld [rLCDCShadow], a                           ; $5e07: $ea $2e $c3
    xor a                                         ; $5e0a: $af
    ld [rBGPShadow], a                            ; $5e0b: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $5e0e: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $5e11: $ea $31 $c3
    ld [rSCXShadow], a                            ; $5e14: $ea $32 $c3
    ld [rSCYShadow], a                            ; $5e17: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $5e1a: $cd $9d $05
    call FillBGMap1WithTile01                     ; $5e1d: $cd $a8 $05
    call RestoreCurrentPuzzleProgressFromSaveData ; $5e20: $cd $93 $1c
    call LoadGameBoardTileData                    ; $5e23: $cd $2b $69
    ld a, $2f                                     ; $5e26: $3e $2f
    ld [rLYCShadow], a                            ; $5e28: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags             ; $5e2b: $21 $37 $c3
    set 6, [hl]                                   ; $5e2e: $cb $f6
    ld hl, rIE                                    ; $5e30: $21 $ff $ff
    set 1, [hl]                                   ; $5e33: $cb $ce
    ld a, $01                                     ; $5e35: $3e $01
    ld [rLCDCInterruptDispatchIndex], a           ; $5e37: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $5e3a: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $5e3d: $ea $50 $c3
    call BuildClueRunLengthBuffers                ; $5e40: $cd $a2 $6e
    call ClearShadowOAMBuffer                     ; $5e43: $cd $b3 $05
    call RenderPuzzleTimerDigits                  ; $5e46: $cd $76 $7b
    call RedrawBoardCellEffectFramesFromStateBuffer; $5e49: $cd $e0 $77
    ld a, [rSelectedSaveSlotIndex]                ; $5e4c: $fa $65 $a0
    ld c, a                                       ; $5e4f: $4f
    sla a                                         ; $5e50: $cb $27
    sla a                                         ; $5e52: $cb $27
    add c                                         ; $5e54: $81
    ld c, a                                       ; $5e55: $4f
    ld b, $00                                     ; $5e56: $06 $00
    ld hl, rSaveSlot1EasyPicrossBGMSelectionIndex ; $5e58: $21 $69 $a0
    add hl, bc                                    ; $5e5b: $09
    ld c, [hl]                                    ; $5e5c: $4e
    ld b, $00                                     ; $5e5d: $06 $00
    ld hl, PuzzleModeSecondarySfxIdTable          ; $5e5f: $21 $9f $7d
    add hl, bc                                    ; $5e62: $09
    ld c, $00                                     ; $5e63: $0e $00
    ld a, $01                                     ; $5e65: $3e $01
    call CallSoundCommandDispatcher               ; $5e67: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $5e6a: $cd $96 $03
    ld c, [hl]                                    ; $5e6d: $4e
    ld a, $01                                     ; $5e6e: $3e $01
    call CallSoundCommandDispatcher               ; $5e70: $cd $b3 $03
    call EnableLCDFromShadow                      ; $5e73: $cd $9f $04
    ld a, [rPuzzleGridWidth]                      ; $5e76: $fa $00 $d8
    cp $05                                        ; $5e79: $fe $05
    jr nz, .SelectFadeInParamsForNon5x5Grid       ; $5e7b: $20 $0f

    ld b, $03                                     ; $5e7d: $06 $03
    ld hl, $46a0                                  ; $5e7f: $21 $a0 $46
    ld c, $01                                     ; $5e82: $0e $01
    ld de, $0014                                  ; $5e84: $11 $14 $00
    call PlayScreenTransitionFadeIn               ; $5e87: $cd $0a $04
    jr .MaybeRun5x5OpeningMessageScript           ; $5e8a: $18 $20

.SelectFadeInParamsForNon5x5Grid:
    cp $0a                                        ; $5e8c: $fe $0a
    jr nz, .ApplyFadeInParamsFor15x15Grid         ; $5e8e: $20 $0f

    ld b, $03                                     ; $5e90: $06 $03
    ld hl, $46ac                                  ; $5e92: $21 $ac $46
    ld c, $02                                     ; $5e95: $0e $02
    ld de, $0024                                  ; $5e97: $11 $24 $00
    call PlayScreenTransitionFadeIn               ; $5e9a: $cd $0a $04
    jr .MaybeRun5x5OpeningMessageScript           ; $5e9d: $18 $0d

.ApplyFadeInParamsFor15x15Grid:
    ld b, $03                                     ; $5e9f: $06 $03
    ld hl, $4694                                  ; $5ea1: $21 $94 $46
    ld c, $00                                     ; $5ea4: $0e $00
    ld de, $0004                                  ; $5ea6: $11 $04 $00
    call PlayScreenTransitionFadeIn               ; $5ea9: $cd $0a $04

.MaybeRun5x5OpeningMessageScript:
    ld a, [rPuzzleGridWidth]                      ; $5eac: $fa $00 $d8
    cp $05                                        ; $5eaf: $fe $05
    jr nz, .InitializePauseMenuStateAndEnterPauseMenuIdle; $5eb1: $20 $27

    ld a, $0d                                     ; $5eb3: $3e $0d
    ld [rMessageScriptStreamResetEntryLow], a     ; $5eb5: $ea $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $5eb8: $ea $2b $d8
    ld a, $58                                     ; $5ebb: $3e $58
    ld [rMessageScriptStreamResetEntryHigh], a    ; $5ebd: $ea $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $5ec0: $ea $2c $d8
    ld a, $93                                     ; $5ec3: $3e $93
    ld [rMessageScriptStreamLimitLow], a          ; $5ec5: $ea $45 $d8
    ld a, $86                                     ; $5ec8: $3e $86
    ld [rMessageScriptStreamLimitHigh], a         ; $5eca: $ea $46 $d8
    ld a, $64                                     ; $5ecd: $3e $64
    ld [rMessageScriptStreamPointerLow], a        ; $5ecf: $ea $2d $d8
    ld a, $5b                                     ; $5ed2: $3e $5b
    ld [rMessageScriptStreamPointerHigh], a       ; $5ed4: $ea $2e $d8
    call GS08_RunMessageScriptUntilEndWithFrameUpdates; $5ed7: $cd $1d $5f

.InitializePauseMenuStateAndEnterPauseMenuIdle:
    call ClearShadowOAMBuffer                     ; $5eda: $cd $b3 $05
    rst RST_08                                    ; $5edd: $cf
    xor a                                         ; $5ede: $af
    ld [rGS08_PauseMenuMainSelection], a          ; $5edf: $ea $3a $d8
    ld a, $01                                     ; $5ee2: $3e $01
    ld [rGS08_PauseMenuSavePromptSelection], a    ; $5ee4: $ea $3b $d8
    ld a, [rSelectedSaveSlotIndex]                ; $5ee7: $fa $65 $a0
    ld c, a                                       ; $5eea: $4f
    sla a                                         ; $5eeb: $cb $27
    sla a                                         ; $5eed: $cb $27
    add c                                         ; $5eef: $81
    ld c, a                                       ; $5ef0: $4f
    ld b, $00                                     ; $5ef1: $06 $00
    ld hl, rSaveSlot1EasyPicrossBGMSelectionIndex ; $5ef3: $21 $69 $a0
    add hl, bc                                    ; $5ef6: $09
    ld a, [hl]                                    ; $5ef7: $7e
    ld [rGS08_PauseMenuBGMSubmenuSelection], a    ; $5ef8: $ea $3c $d8
    ld a, $01                                     ; $5efb: $3e $01
    ld [rGS08_PauseMenuGiveUpPromptSelection], a  ; $5efd: $ea $3d $d8
    ld a, $06                                     ; $5f00: $3e $06
    ld hl, $7a00                                  ; $5f02: $21 $00 $7a
    ld de, $8500                                  ; $5f05: $11 $00 $85
    ld bc, $0300                                  ; $5f08: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $5f0b: $cd $35 $05
    call RecomputePuzzleCellBitSetCounters        ; $5f0e: $cd $3d $7d
    ld a, $06                                     ; $5f11: $3e $06
    ld [rStatePhase_Current], a                   ; $5f13: $ea $35 $d6
    ret                                           ; $5f16: $c9


GS08_StatePhase_01_HintPopupSelection::
    jp GS0A_StatePhase_01_HintPopupSelection      ; $5f17: $c3 $04 $6a


GS08_StatePhase_02_HintCursorSweepAndApplySelection::
    jp GS0A_StatePhase_02_HintCursorSweepAndApplySelection; $5f1a: $c3 $b6 $6a


GS08_RunMessageScriptUntilEndWithFrameUpdates::
    call ClearShadowOAMBufferFromCursor           ; $5f1d: $cd $c2 $05
    rst RST_08                                    ; $5f20: $cf
    call TickMarioBlinkAnimation                  ; $5f21: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $5f24: $cd $98 $30
    call AdvanceMessageScriptStreamHelper         ; $5f27: $cd $8d $2b
    jr nz, GS08_RunMessageScriptUntilEndWithFrameUpdates; $5f2a: $20 $f1

    ret                                           ; $5f2c: $c9


GS08_RunMessageScriptUntilEndWithTextAnimation::
    call AdvanceMessageScriptStreamHelper         ; $5f2d: $cd $8d $2b
    ret z                                         ; $5f30: $c8

    call TickMarioBlinkAnimation                  ; $5f31: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $5f34: $cd $98 $30
    call ClearShadowOAMBufferFromCursor           ; $5f37: $cd $c2 $05
    rst RST_08                                    ; $5f3a: $cf
    jr GS08_RunMessageScriptUntilEndWithTextAnimation; $5f3b: $18 $f0

GS08_StatePhase_03_PuzzleGameplayLoop::
    ld a, [rPuzzleGridWidth]                      ; $5f3d: $fa $00 $d8
    cp $05                                        ; $5f40: $fe $05
    jp z, GS08_StatePhase_03_PuzzleGameplayLoop_5x5; $5f42: $ca $ec $5f

    call UpdatePuzzleCursorFromDirectionalInput   ; $5f45: $cd $3c $71
    call DrawPuzzleCursorSpritesAndTickStepSequence; $5f48: $cd $b0 $70
    call TickMarioBlinkAnimation                  ; $5f4b: $cd $8a $78
    call TickLowTimerMarioSweatIndicator          ; $5f4e: $cd $a5 $7d
    call ApplyLowTimerMarioFaceTilesOnce          ; $5f51: $cd $e9 $7d
    call UpdatePuzzleTimerCountdown               ; $5f54: $cd $5c $7a
    call UpdatePuzzleTimerDisplayState            ; $5f57: $cd $0a $7a
    call ProcessPuzzleCellActionInput             ; $5f5a: $cd $94 $71
    call TickPendingCellActionEffect              ; $5f5d: $cd $88 $74
    call FinalizePuzzleClearAndSetPostClearFlowFlag; $5f60: $cd $68 $75
    call TickPuzzleTimerCompletionState           ; $5f63: $cd $3a $7c
    ld a, [rInputButtonsPressed]                  ; $5f66: $fa $1e $c3
    and $08                                       ; $5f69: $e6 $08
    jr z, .HandlePostClearFlowOrCheckTimeout      ; $5f6b: $28 $0d

    ld c, $10                                     ; $5f6d: $0e $10
    ld a, $02                                     ; $5f6f: $3e $02
    call CallSoundCommandDispatcher               ; $5f71: $cd $b3 $03
    ld a, $05                                     ; $5f74: $3e $05
    ld [rStatePhase_Current], a                   ; $5f76: $ea $35 $d6
    ret                                           ; $5f79: $c9


.HandlePostClearFlowOrCheckTimeout:
    ld a, [rPuzzlePostClearFlowFlag]              ; $5f7a: $fa $05 $d8
    and a                                         ; $5f7d: $a7
    jr z, .HandleTimerCompletionGameOverFlow      ; $5f7e: $28 $4b

    call GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $5f80: $cd $ec $55
    call GS05_UpdateSelectedEasyPicrossPuzzleClearStatusAndTimes; $5f83: $cd $44 $57
    call RefreshSaveValidationChecksumsAndMirrors ; $5f86: $cd $1c $1b
    ld c, $00                                     ; $5f89: $0e $00
    ld a, $01                                     ; $5f8b: $3e $01
    call CallSoundCommandDispatcher               ; $5f8d: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $5f90: $cd $96 $03
    ld c, $09                                     ; $5f93: $0e $09
    ld a, $01                                     ; $5f95: $3e $01
    call CallSoundCommandDispatcher               ; $5f97: $cd $b3 $03
    call ClearShadowOAMBuffer                     ; $5f9a: $cd $b3 $05
    call RedrawPuzzleBoard                        ; $5f9d: $cd $a7 $75

.WaitForPostClearInputAndAdvance:
    rst RST_08                                    ; $5fa0: $cf
    ld a, [rInputButtonsPressed]                  ; $5fa1: $fa $1e $c3
    and $09                                       ; $5fa4: $e6 $09
    jr z, .WaitForPostClearInputAndAdvance        ; $5fa6: $28 $f8

    ld c, $03                                     ; $5fa8: $0e $03
    ld a, $02                                     ; $5faa: $3e $02
    call CallSoundCommandDispatcher               ; $5fac: $cd $b3 $03
    call RedrawPostClearSolvedCellsByGridSize     ; $5faf: $cd $1b $76
    call DrawPuzzleNameFromPointerTable           ; $5fb2: $cd $42 $1a
    ld c, $00                                     ; $5fb5: $0e $00
    ld a, $01                                     ; $5fb7: $3e $01
    call CallSoundCommandDispatcher               ; $5fb9: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $5fbc: $cd $96 $03
    ld c, $12                                     ; $5fbf: $0e $12
    ld a, $01                                     ; $5fc1: $3e $01
    call CallSoundCommandDispatcher               ; $5fc3: $cd $b3 $03
    ld hl, rStatePhase_Current                    ; $5fc6: $21 $35 $d6
    inc [hl]                                      ; $5fc9: $34
    ret                                           ; $5fca: $c9


.HandleTimerCompletionGameOverFlow:
    ld a, [rPuzzleTimerCompletionState]           ; $5fcb: $fa $06 $d8
    and a                                         ; $5fce: $a7
    ret z                                         ; $5fcf: $c8

    ld c, $00                                     ; $5fd0: $0e $00
    ld a, $01                                     ; $5fd2: $3e $01
    call CallSoundCommandDispatcher               ; $5fd4: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $5fd7: $cd $96 $03
    ld c, $08                                     ; $5fda: $0e $08
    ld a, $01                                     ; $5fdc: $3e $01
    call CallSoundCommandDispatcher               ; $5fde: $cd $b3 $03
    call ClearShadowOAMBuffer                     ; $5fe1: $cd $b3 $05
    call LoadGameOverMessageTileData              ; $5fe4: $cd $55 $7c
    ld hl, rStatePhase_Current                    ; $5fe7: $21 $35 $d6
    inc [hl]                                      ; $5fea: $34
    ret                                           ; $5feb: $c9


GS08_StatePhase_03_PuzzleGameplayLoop_5x5::
    call UpdatePuzzleCursorFromDirectionalInput   ; $5fec: $cd $3c $71
    call DrawPuzzleCursorSpritesAndTickStepSequence; $5fef: $cd $b0 $70
    call TickMarioBlinkAnimation                  ; $5ff2: $cd $8a $78
    call UpdatePuzzleTimerCountdown               ; $5ff5: $cd $5c $7a
    call UpdatePuzzleTimerDisplayState            ; $5ff8: $cd $0a $7a
    call ProcessPuzzleCellActionInput             ; $5ffb: $cd $94 $71
    call TickPendingCellActionEffect              ; $5ffe: $cd $88 $74
    call FinalizePuzzleClearAndSetPostClearFlowFlag; $6001: $cd $68 $75
    call TickPuzzleTimerCompletionState           ; $6004: $cd $3a $7c
    ld a, [rInputButtonsPressed]                  ; $6007: $fa $1e $c3
    and $08                                       ; $600a: $e6 $08
    jr z, .Handle5x5PostClearFlowOrCheckTimeout   ; $600c: $28 $0d

    ld c, $10                                     ; $600e: $0e $10
    ld a, $02                                     ; $6010: $3e $02
    call CallSoundCommandDispatcher               ; $6012: $cd $b3 $03
    ld a, $05                                     ; $6015: $3e $05
    ld [rStatePhase_Current], a                   ; $6017: $ea $35 $d6
    ret                                           ; $601a: $c9


.Handle5x5PostClearFlowOrCheckTimeout:
    ld a, [rPuzzlePostClearFlowFlag]              ; $601b: $fa $05 $d8
    and a                                         ; $601e: $a7
    jp z, Handle5x5TimerCompletionGameOverFlow    ; $601f: $ca $ac $60

    call GS05_LoadEasyPicrossPuzzleSelectCursorForSelectedSaveSlot; $6022: $cd $ec $55
    call GS05_UpdateSelectedEasyPicrossPuzzleClearStatusAndTimes; $6025: $cd $44 $57
    call RefreshSaveValidationChecksumsAndMirrors ; $6028: $cd $1c $1b
    ld c, $00                                     ; $602b: $0e $00
    ld a, $01                                     ; $602d: $3e $01
    call CallSoundCommandDispatcher               ; $602f: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $6032: $cd $96 $03
    ld c, $09                                     ; $6035: $0e $09
    ld a, $01                                     ; $6037: $3e $01
    call CallSoundCommandDispatcher               ; $6039: $cd $b3 $03
    call ClearShadowOAMBuffer                     ; $603c: $cd $b3 $05
    call RedrawPuzzleBoard                        ; $603f: $cd $a7 $75
    call GS06_CopyRedrawSourceToProgressionBuffer ; $6042: $cd $33 $30
    ld a, $92                                     ; $6045: $3e $92
    ld [rMessageScriptStreamPointerLow], a        ; $6047: $ea $2d $d8
    ld a, $5b                                     ; $604a: $3e $5b
    ld [rMessageScriptStreamPointerHigh], a       ; $604c: $ea $2e $d8
    call GS08_RunMessageScriptUntilEndWithTextAnimation; $604f: $cd $2d $5f

.WaitFor5x5PostClearInputAndAdvance:
    call TickMarioBlinkAnimation                  ; $6052: $cd $8a $78
    call ClearShadowOAMBufferFromCursor           ; $6055: $cd $c2 $05
    rst RST_08                                    ; $6058: $cf
    ld a, [rInputButtonsPressed]                  ; $6059: $fa $1e $c3
    and $09                                       ; $605c: $e6 $09
    jr z, .WaitFor5x5PostClearInputAndAdvance     ; $605e: $28 $f2

    ld c, $03                                     ; $6060: $0e $03
    ld a, $02                                     ; $6062: $3e $02
    call CallSoundCommandDispatcher               ; $6064: $cd $b3 $03
    call RedrawPostClearSolvedCellsByGridSize     ; $6067: $cd $1b $76
    ld a, $de                                     ; $606a: $3e $de
    ld [rMessageScriptStreamPointerLow], a        ; $606c: $ea $2d $d8
    ld a, $5b                                     ; $606f: $3e $5b
    ld [rMessageScriptStreamPointerHigh], a       ; $6071: $ea $2e $d8
    call GS08_RunMessageScriptUntilEndWithTextAnimation; $6074: $cd $2d $5f
    ld a, [rSelectedSaveSlotIndex]                ; $6077: $fa $65 $a0
    ld c, a                                       ; $607a: $4f
    ld b, $00                                     ; $607b: $06 $00
    ld hl, rSaveSlot1EasyPicrossPuzzleSelectCursorColumn; $607d: $21 $81 $a0
    add hl, bc                                    ; $6080: $09
    ld a, [hl]                                    ; $6081: $7e
    sla a                                         ; $6082: $cb $27
    ld c, a                                       ; $6084: $4f
    ld b, $00                                     ; $6085: $06 $00
    ld hl, LetterTextPointerTable                 ; $6087: $21 $dd $60
    add hl, bc                                    ; $608a: $09
    ld a, [hl+]                                   ; $608b: $2a
    ld [rMessageScriptStreamPointerLow], a        ; $608c: $ea $2d $d8
    ld a, [hl]                                    ; $608f: $7e
    ld [rMessageScriptStreamPointerHigh], a       ; $6090: $ea $2e $d8
    call GS08_RunMessageScriptUntilEndWithTextAnimation; $6093: $cd $2d $5f
    ld c, $00                                     ; $6096: $0e $00
    ld a, $01                                     ; $6098: $3e $01
    call CallSoundCommandDispatcher               ; $609a: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $609d: $cd $96 $03
    ld c, $12                                     ; $60a0: $0e $12
    ld a, $01                                     ; $60a2: $3e $01
    call CallSoundCommandDispatcher               ; $60a4: $cd $b3 $03
    ld hl, rStatePhase_Current                    ; $60a7: $21 $35 $d6
    inc [hl]                                      ; $60aa: $34
    ret                                           ; $60ab: $c9


Handle5x5TimerCompletionGameOverFlow::
    ld a, [rPuzzleTimerCompletionState]           ; $60ac: $fa $06 $d8
    and a                                         ; $60af: $a7
    ret z                                         ; $60b0: $c8

    ld c, $00                                     ; $60b1: $0e $00
    ld a, $01                                     ; $60b3: $3e $01
    call CallSoundCommandDispatcher               ; $60b5: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $60b8: $cd $96 $03
    ld c, $08                                     ; $60bb: $0e $08
    ld a, $01                                     ; $60bd: $3e $01
    call CallSoundCommandDispatcher               ; $60bf: $cd $b3 $03
    call ClearShadowOAMBuffer                     ; $60c2: $cd $b3 $05
    call LoadGameOverMessageTileData              ; $60c5: $cd $55 $7c
    call GS06_CopyRedrawSourceToProgressionBuffer ; $60c8: $cd $33 $30
    ld a, $ac                                     ; $60cb: $3e $ac
    ld [rMessageScriptStreamPointerLow], a        ; $60cd: $ea $2d $d8
    ld a, $5b                                     ; $60d0: $3e $5b
    ld [rMessageScriptStreamPointerHigh], a       ; $60d2: $ea $2e $d8
    call GS08_RunMessageScriptUntilEndWithTextAnimation; $60d5: $cd $2d $5f
    ld hl, rStatePhase_Current                    ; $60d8: $21 $35 $d6
    inc [hl]                                      ; $60db: $34
    ret                                           ; $60dc: $c9


LetterTextPointerTable::
    db $f0, $5b
    db $10, $5c
    db $30, $5c
    db $50, $5c
    db $70, $5c
    db $90, $5c
    db $b0, $5c
    db $d0, $5c

GS08_StatePhase_04_ConfirmExitAndReturnToEasyPicrossSelect::
    ld a, [rInputButtonsPressed]                  ; $60ed: $fa $1e $c3
    and $09                                       ; $60f0: $e6 $09
    ret z                                         ; $60f2: $c8

    ld c, $03                                     ; $60f3: $0e $03
    ld a, $02                                     ; $60f5: $3e $02
    call CallSoundCommandDispatcher               ; $60f7: $cd $b3 $03
    ld bc, $003c                                  ; $60fa: $01 $3c $00
    call DelayFramesByBC                          ; $60fd: $cd $f7 $05
    ld a, $05                                     ; $6100: $3e $05
    call CallSoundCommandDispatcher               ; $6102: $cd $b3 $03
    ld c, $00                                     ; $6105: $0e $00
    ld a, $01                                     ; $6107: $3e $01
    call CallSoundCommandDispatcher               ; $6109: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $610c: $cd $96 $03
    ld c, $00                                     ; $610f: $0e $00
    ld a, $01                                     ; $6111: $3e $01
    call CallSoundCommandDispatcher               ; $6113: $cd $b3 $03
    ld a, [rPuzzleGridWidth]                      ; $6116: $fa $00 $d8
    cp $05                                        ; $6119: $fe $05
    jr nz, .SelectFadeOutParamsForNon5x5Grid      ; $611b: $20 $0f

    ld b, $03                                     ; $611d: $06 $03
    ld hl, $46ab                                  ; $611f: $21 $ab $46
    ld c, $01                                     ; $6122: $0e $01
    ld de, $0023                                  ; $6124: $11 $23 $00
    call PlayScreenTransitionFadeOut              ; $6127: $cd $4b $04
    jr .FinalizeExitTransitionToGS05              ; $612a: $18 $20

.SelectFadeOutParamsForNon5x5Grid:
    cp $0a                                        ; $612c: $fe $0a
    jr nz, .ApplyFadeOutParamsFor15x15Grid        ; $612e: $20 $0f

    ld b, $03                                     ; $6130: $06 $03
    ld hl, $46b7                                  ; $6132: $21 $b7 $46
    ld c, $02                                     ; $6135: $0e $02
    ld de, $0033                                  ; $6137: $11 $33 $00
    call PlayScreenTransitionFadeOut              ; $613a: $cd $4b $04
    jr .FinalizeExitTransitionToGS05              ; $613d: $18 $0d

.ApplyFadeOutParamsFor15x15Grid:
    ld b, $03                                     ; $613f: $06 $03
    ld hl, $469f                                  ; $6141: $21 $9f $46
    ld c, $00                                     ; $6144: $0e $00
    ld de, $0013                                  ; $6146: $11 $13 $00
    call PlayScreenTransitionFadeOut              ; $6149: $cd $4b $04

.FinalizeExitTransitionToGS05:
    call DisableLCDAtVBlank                       ; $614c: $cd $80 $04
    ld hl, rLCDCInterruptControlFlags             ; $614f: $21 $37 $c3
    res 6, [hl]                                   ; $6152: $cb $b6
    ld hl, rIE                                    ; $6154: $21 $ff $ff
    res 1, [hl]                                   ; $6157: $cb $8e
    xor a                                         ; $6159: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $615a: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $615d: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $6160: $ea $50 $c3
    ld a, $04                                     ; $6163: $3e $04
    ld [rStatePhase_Current], a                   ; $6165: $ea $35 $d6
    ld a, $05                                     ; $6168: $3e $05
    ld [rGameState_Current], a                    ; $616a: $ea $34 $d6
    ret                                           ; $616d: $c9


GS08_StatePhase_05_PauseMenuInitAndMaskClues::
    call ClearShadowOAMBuffer                     ; $616e: $cd $b3 $05
    rst RST_08                                    ; $6171: $cf
    xor a                                         ; $6172: $af
    ld [rGS08_PauseMenuMainSelection], a          ; $6173: $ea $3a $d8
    ld a, $01                                     ; $6176: $3e $01
    ld [rGS08_PauseMenuSavePromptSelection], a    ; $6178: $ea $3b $d8
    ld a, [rSelectedSaveSlotIndex]                ; $617b: $fa $65 $a0
    ld c, a                                       ; $617e: $4f
    sla a                                         ; $617f: $cb $27
    sla a                                         ; $6181: $cb $27
    add c                                         ; $6183: $81
    ld c, a                                       ; $6184: $4f
    ld b, $00                                     ; $6185: $06 $00
    ld hl, rSaveSlot1EasyPicrossBGMSelectionIndex ; $6187: $21 $69 $a0
    add hl, bc                                    ; $618a: $09
    ld a, [hl]                                    ; $618b: $7e
    ld [rGS08_PauseMenuBGMSubmenuSelection], a    ; $618c: $ea $3c $d8
    ld a, $01                                     ; $618f: $3e $01
    ld [rGS08_PauseMenuGiveUpPromptSelection], a  ; $6191: $ea $3d $d8
    ld a, $06                                     ; $6194: $3e $06
    ld hl, $7a00                                  ; $6196: $21 $00 $7a
    ld de, $8500                                  ; $6199: $11 $00 $85
    ld bc, $0300                                  ; $619c: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $619f: $cd $35 $05
    call MaskClueDigitSlotsFromRunLengthBuffers   ; $61a2: $cd $13 $70
    ld hl, rStatePhase_Current                    ; $61a5: $21 $35 $d6
    inc [hl]                                      ; $61a8: $34
    ret                                           ; $61a9: $c9


GS08_StatePhase_06_PauseMenuIdle::
    ld b, $02                                     ; $61aa: $06 $02
    ld hl, $4632                                  ; $61ac: $21 $32 $46
    call SwitchBankToBAndJumpToHL                 ; $61af: $cd $db $05
    ld a, [rInputButtonsPressed]                  ; $61b2: $fa $1e $c3
    bit 0, a                                      ; $61b5: $cb $47
    jr z, .HandlePauseMenuCloseInput              ; $61b7: $28 $16

    ld c, $03                                     ; $61b9: $0e $03
    ld a, $02                                     ; $61bb: $3e $02
    call CallSoundCommandDispatcher               ; $61bd: $cd $b3 $03
    ld a, [rGS08_PauseMenuMainSelection]          ; $61c0: $fa $3a $d8
    ld c, a                                       ; $61c3: $4f
    ld b, $00                                     ; $61c4: $06 $00
    ld hl, GS08_PauseMenuSelectionNextPhaseTable  ; $61c6: $21 $df $61
    add hl, bc                                    ; $61c9: $09
    ld a, [hl]                                    ; $61ca: $7e
    ld [rStatePhase_Current], a                   ; $61cb: $ea $35 $d6
    ret                                           ; $61ce: $c9


.HandlePauseMenuCloseInput:
    bit 3, a                                      ; $61cf: $cb $5f
    ret z                                         ; $61d1: $c8

    ld c, $04                                     ; $61d2: $0e $04
    ld a, $02                                     ; $61d4: $3e $02
    call CallSoundCommandDispatcher               ; $61d6: $cd $b3 $03
    ld a, $0a                                     ; $61d9: $3e $0a
    ld [rStatePhase_Current], a                   ; $61db: $ea $35 $d6
    ret                                           ; $61de: $c9


GS08_PauseMenuSelectionNextPhaseTable::
    db $07, $09, $08

GS08_StatePhase_07_PauseMenuSavePrompt::
    ld b, $02                                     ; $61e2: $06 $02
    ld hl, $4672                                  ; $61e4: $21 $72 $46
    call SwitchBankToBAndJumpToHL                 ; $61e7: $cd $db $05
    ld a, [rInputButtonsPressed]                  ; $61ea: $fa $1e $c3
    and $01                                       ; $61ed: $e6 $01
    ret z                                         ; $61ef: $c8

    ld c, $04                                     ; $61f0: $0e $04
    ld a, $02                                     ; $61f2: $3e $02
    call CallSoundCommandDispatcher               ; $61f4: $cd $b3 $03
    ld a, [rGS08_PauseMenuSavePromptSelection]    ; $61f7: $fa $3b $d8
    and a                                         ; $61fa: $a7
    jr z, .HandlePauseMenuSavePromptConfirmAndBeginExitFlow; $61fb: $28 $06

    ld a, $06                                     ; $61fd: $3e $06
    ld [rStatePhase_Current], a                   ; $61ff: $ea $35 $d6
    ret                                           ; $6202: $c9


.HandlePauseMenuSavePromptConfirmAndBeginExitFlow:
    call SaveCurrentPuzzleProgressToSaveData      ; $6203: $cd $11 $1c
    ld a, $01                                     ; $6206: $3e $01
    ld [rContinueSavedPuzzlePromptRouteMode], a   ; $6208: $ea $a2 $ac
    ld c, $03                                     ; $620b: $0e $03
    ld a, $02                                     ; $620d: $3e $02
    call CallSoundCommandDispatcher               ; $620f: $cd $b3 $03
    ld bc, $003c                                  ; $6212: $01 $3c $00
    call DelayFramesByBC                          ; $6215: $cd $f7 $05
    ld a, $05                                     ; $6218: $3e $05
    call CallSoundCommandDispatcher               ; $621a: $cd $b3 $03
    ld c, $00                                     ; $621d: $0e $00
    ld a, $01                                     ; $621f: $3e $01
    call CallSoundCommandDispatcher               ; $6221: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $6224: $cd $96 $03
    ld c, $00                                     ; $6227: $0e $00
    ld a, $01                                     ; $6229: $3e $01
    call CallSoundCommandDispatcher               ; $622b: $cd $b3 $03
    ld a, [rPuzzleGridWidth]                      ; $622e: $fa $00 $d8
    cp $05                                        ; $6231: $fe $05
    jr nz, .SelectFadeOutParamsForNon5x5Grid      ; $6233: $20 $0f

    ld b, $03                                     ; $6235: $06 $03
    ld hl, $46ab                                  ; $6237: $21 $ab $46
    ld c, $01                                     ; $623a: $0e $01
    ld de, $0023                                  ; $623c: $11 $23 $00
    call PlayScreenTransitionFadeOut              ; $623f: $cd $4b $04
    jr .FinalizeSavePromptTransitionToGS00        ; $6242: $18 $20

.SelectFadeOutParamsForNon5x5Grid:
    cp $0a                                        ; $6244: $fe $0a
    jr nz, .ApplyFadeOutParamsFor15x15Grid        ; $6246: $20 $0f

    ld b, $03                                     ; $6248: $06 $03
    ld hl, $46b7                                  ; $624a: $21 $b7 $46
    ld c, $02                                     ; $624d: $0e $02
    ld de, $0033                                  ; $624f: $11 $33 $00
    call PlayScreenTransitionFadeOut              ; $6252: $cd $4b $04
    jr .FinalizeSavePromptTransitionToGS00        ; $6255: $18 $0d

.ApplyFadeOutParamsFor15x15Grid:
    ld b, $03                                     ; $6257: $06 $03
    ld hl, $469f                                  ; $6259: $21 $9f $46
    ld c, $00                                     ; $625c: $0e $00
    ld de, $0013                                  ; $625e: $11 $13 $00
    call PlayScreenTransitionFadeOut              ; $6261: $cd $4b $04

.FinalizeSavePromptTransitionToGS00:
    call DisableLCDAtVBlank                       ; $6264: $cd $80 $04
    ld hl, rLCDCInterruptControlFlags             ; $6267: $21 $37 $c3
    res 6, [hl]                                   ; $626a: $cb $b6
    ld hl, rIE                                    ; $626c: $21 $ff $ff
    res 1, [hl]                                   ; $626f: $cb $8e
    xor a                                         ; $6271: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $6272: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $6275: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $6278: $ea $50 $c3
    ld c, a                                       ; $627b: $4f
    sla a                                         ; $627c: $cb $27
    sla a                                         ; $627e: $cb $27
    add c                                         ; $6280: $81
    ld c, a                                       ; $6281: $4f
    ld b, $00                                     ; $6282: $06 $00
    ld hl, rSaveSlot1EasyPicrossBGMSelectionIndex ; $6284: $21 $69 $a0
    add hl, bc                                    ; $6287: $09
    ld a, [hl]                                    ; $6288: $7e
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]    ; $6289: $fa $3c $d8
    ld [hl], a                                    ; $628c: $77
    ld a, $04                                     ; $628d: $3e $04
    ld [rStatePhase_Current], a                   ; $628f: $ea $35 $d6
    ld a, $00                                     ; $6292: $3e $00
    ld [rGameState_Current], a                    ; $6294: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $6297: $c3 $1c $1b


GS08_StatePhase_08_PauseMenuBGMSubmenu::
    ld b, $02                                     ; $629a: $06 $02
    ld hl, $46b2                                  ; $629c: $21 $b2 $46
    call SwitchBankToBAndJumpToHL                 ; $629f: $cd $db $05
    ld a, [rInputButtonsPressed]                  ; $62a2: $fa $1e $c3
    and $01                                       ; $62a5: $e6 $01
    ret z                                         ; $62a7: $c8

    ld c, $04                                     ; $62a8: $0e $04
    ld a, $02                                     ; $62aa: $3e $02
    call CallSoundCommandDispatcher               ; $62ac: $cd $b3 $03
    ld a, $06                                     ; $62af: $3e $06
    ld [rStatePhase_Current], a                   ; $62b1: $ea $35 $d6
    ret                                           ; $62b4: $c9


GS08_StatePhase_09_PauseMenuGiveUpPrompt::
    ld b, $02                                     ; $62b5: $06 $02
    ld hl, $470f                                  ; $62b7: $21 $0f $47
    call SwitchBankToBAndJumpToHL                 ; $62ba: $cd $db $05
    ld a, [rInputButtonsPressed]                  ; $62bd: $fa $1e $c3
    and $01                                       ; $62c0: $e6 $01
    ret z                                         ; $62c2: $c8

    ld c, $04                                     ; $62c3: $0e $04
    ld a, $02                                     ; $62c5: $3e $02
    call CallSoundCommandDispatcher               ; $62c7: $cd $b3 $03
    ld a, [rGS08_PauseMenuGiveUpPromptSelection]  ; $62ca: $fa $3d $d8
    and a                                         ; $62cd: $a7
    jr z, .HandlePauseMenuGiveUpConfirmAndStartGameOverFlow; $62ce: $28 $06

    ld a, $06                                     ; $62d0: $3e $06
    ld [rStatePhase_Current], a                   ; $62d2: $ea $35 $d6
    ret                                           ; $62d5: $c9


.HandlePauseMenuGiveUpConfirmAndStartGameOverFlow:
    ld a, $01                                     ; $62d6: $3e $01
    ld [rPuzzleTimerCompletionState], a           ; $62d8: $ea $06 $d8
    ld c, $00                                     ; $62db: $0e $00
    ld a, $01                                     ; $62dd: $3e $01
    call CallSoundCommandDispatcher               ; $62df: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $62e2: $cd $96 $03
    ld c, $08                                     ; $62e5: $0e $08
    ld a, $01                                     ; $62e7: $3e $01
    call CallSoundCommandDispatcher               ; $62e9: $cd $b3 $03
    call ClearShadowOAMBuffer                     ; $62ec: $cd $b3 $05
    call LoadGameOverMessageTileData              ; $62ef: $cd $55 $7c
    ld a, $06                                     ; $62f2: $3e $06
    ld hl, $4500                                  ; $62f4: $21 $00 $45
    ld de, $8500                                  ; $62f7: $11 $00 $85
    ld bc, $0300                                  ; $62fa: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $62fd: $cd $35 $05
    ld a, [rPuzzleGridWidth]                      ; $6300: $fa $00 $d8
    cp $05                                        ; $6303: $fe $05
    jr nz, .FinalizePauseMenuGiveUpFlowAndAdvanceToPhase04; $6305: $20 $10

    call GS06_CopyRedrawSourceToProgressionBuffer ; $6307: $cd $33 $30
    ld a, $ac                                     ; $630a: $3e $ac
    ld [rMessageScriptStreamPointerLow], a        ; $630c: $ea $2d $d8
    ld a, $5b                                     ; $630f: $3e $5b
    ld [rMessageScriptStreamPointerHigh], a       ; $6311: $ea $2e $d8
    call GS08_RunMessageScriptUntilEndWithTextAnimation; $6314: $cd $2d $5f

.FinalizePauseMenuGiveUpFlowAndAdvanceToPhase04:
    ld c, a                                       ; $6317: $4f
    sla a                                         ; $6318: $cb $27
    sla a                                         ; $631a: $cb $27
    add c                                         ; $631c: $81
    ld c, a                                       ; $631d: $4f
    ld b, $00                                     ; $631e: $06 $00
    ld hl, rSaveSlot1EasyPicrossBGMSelectionIndex ; $6320: $21 $69 $a0
    add hl, bc                                    ; $6323: $09
    ld a, [hl]                                    ; $6324: $7e
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]    ; $6325: $fa $3c $d8
    ld [hl], a                                    ; $6328: $77
    ld a, $04                                     ; $6329: $3e $04
    ld [rStatePhase_Current], a                   ; $632b: $ea $35 $d6
    xor a                                         ; $632e: $af
    ld [rContinueSavedPuzzlePromptRouteMode], a   ; $632f: $ea $a2 $ac
    jp RefreshSaveValidationChecksumsAndMirrors   ; $6332: $c3 $1c $1b


GS08_StatePhase_0a_ClosePauseMenuAndResumeGameplay::
    call ClearShadowOAMBuffer                     ; $6335: $cd $b3 $05
    rst RST_08                                    ; $6338: $cf
    ld a, [rSelectedSaveSlotIndex]                ; $6339: $fa $65 $a0
    ld c, a                                       ; $633c: $4f
    sla a                                         ; $633d: $cb $27
    sla a                                         ; $633f: $cb $27
    add c                                         ; $6341: $81
    ld c, a                                       ; $6342: $4f
    ld b, $00                                     ; $6343: $06 $00
    ld hl, rSaveSlot1EasyPicrossBGMSelectionIndex ; $6345: $21 $69 $a0
    add hl, bc                                    ; $6348: $09
    ld a, [hl]                                    ; $6349: $7e
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]    ; $634a: $fa $3c $d8
    ld [hl], a                                    ; $634d: $77
    ld a, $06                                     ; $634e: $3e $06
    ld hl, $4500                                  ; $6350: $21 $00 $45
    ld de, $8500                                  ; $6353: $11 $00 $85
    ld bc, $0300                                  ; $6356: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $6359: $cd $35 $05
    call DrawClueNumbersFromRunLengthBuffers      ; $635c: $cd $2b $6f
    call RenderPuzzleTimerDigits                  ; $635f: $cd $76 $7b
    ld a, $03                                     ; $6362: $3e $03
    ld [rStatePhase_Current], a                   ; $6364: $ea $35 $d6
    xor a                                         ; $6367: $af
    ld [rContinueSavedPuzzlePromptRouteMode], a   ; $6368: $ea $a2 $ac
    jp RefreshSaveValidationChecksumsAndMirrors   ; $636b: $c3 $1c $1b


GameState_09_TimeTrialPuzzle_PhaseDispatcher::
    ld a, [rStatePhase_Current]                   ; $636e: $fa $35 $d6
    rst RST_18                                    ; $6371: $df

GS09_PhasePointer_00::
    db $86, $63

GS09_PhasePointer_01::
    db $de, $64

GS09_PhasePointer_02::
    db $91, $65

GS09_PhasePointer_03::
    db $e9, $65

GS09_PhasePointer_04::
    db $25, $66

GS09_PhasePointer_05::
    db $5d, $66

GS09_PhasePointer_06::
    db $ef, $66

GS09_PhasePointer_07::
    db $0a, $67

GS09_PhasePointer_08::
    db $68, $67

GS09_PhasePointer_09::
    db $23, $64

GS09_StatePhase_00_TimeTrialPuzzleInit::
    ld a, $43                                     ; $6386: $3e $43
    ld [rLCDCShadow], a                           ; $6388: $ea $2e $c3
    xor a                                         ; $638b: $af
    ld [rBGPShadow], a                            ; $638c: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $638f: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $6392: $ea $31 $c3
    ld [rSCXShadow], a                            ; $6395: $ea $32 $c3
    ld [rSCYShadow], a                            ; $6398: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $639b: $cd $9d $05
    call FillBGMap1WithTile01                     ; $639e: $cd $a8 $05
    call LoadPuzzleDataBuffer                     ; $63a1: $cd $ee $07
    call LoadGameBoardTileData                    ; $63a4: $cd $2b $69
    xor a                                         ; $63a7: $af
    ld [rPuzzleCursorColumn], a                   ; $63a8: $ea $36 $d6
    ld [rPuzzleAndMenuCursorRow], a               ; $63ab: $ea $37 $d6
    ld a, $00                                     ; $63ae: $3e $00
    ld [rHintPopupSelection], a                   ; $63b0: $ea $33 $d8
    ld a, $02                                     ; $63b3: $3e $02
    ld [rPuzzleTimerPenaltyStep], a               ; $63b5: $ea $11 $d8
    ld a, $2f                                     ; $63b8: $3e $2f
    ld [rLYCShadow], a                            ; $63ba: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags             ; $63bd: $21 $37 $c3
    set 6, [hl]                                   ; $63c0: $cb $f6
    ld hl, rIE                                    ; $63c2: $21 $ff $ff
    set 1, [hl]                                   ; $63c5: $cb $ce
    ld a, $01                                     ; $63c7: $3e $01
    ld [rLCDCInterruptDispatchIndex], a           ; $63c9: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $63cc: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $63cf: $ea $50 $c3
    call BuildClueRunLengthBuffers                ; $63d2: $cd $a2 $6e
    call RecomputePuzzleCellBitSetCounters        ; $63d5: $cd $3d $7d
    call ClearShadowOAMBuffer                     ; $63d8: $cd $b3 $05
    call DrawPuzzleCursorSpritesAndTickStepSequence; $63db: $cd $b0 $70
    call ResetPuzzleTimerState                    ; $63de: $cd $5d $7b
    call RedrawBoardCellEffectFramesFromStateBuffer; $63e1: $cd $e0 $77
    ld a, [rSelectedSaveSlotIndex]                ; $63e4: $fa $65 $a0
    ld c, a                                       ; $63e7: $4f
    sla a                                         ; $63e8: $cb $27
    sla a                                         ; $63ea: $cb $27
    add c                                         ; $63ec: $81
    ld c, a                                       ; $63ed: $4f
    ld b, $00                                     ; $63ee: $06 $00
    ld hl, rSaveSlot1TimeTrialBGMSelectionIndex   ; $63f0: $21 $6c $a0
    add hl, bc                                    ; $63f3: $09
    ld c, [hl]                                    ; $63f4: $4e
    ld b, $00                                     ; $63f5: $06 $00
    ld hl, PuzzleModeSecondarySfxIdTable          ; $63f7: $21 $9f $7d
    add hl, bc                                    ; $63fa: $09
    ld c, $00                                     ; $63fb: $0e $00
    ld a, $01                                     ; $63fd: $3e $01
    call CallSoundCommandDispatcher               ; $63ff: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $6402: $cd $96 $03
    ld c, [hl]                                    ; $6405: $4e
    ld a, $01                                     ; $6406: $3e $01
    call CallSoundCommandDispatcher               ; $6408: $cd $b3 $03
    call EnableLCDFromShadow                      ; $640b: $cd $9f $04
    ld b, $03                                     ; $640e: $06 $03
    ld hl, $4694                                  ; $6410: $21 $94 $46
    ld c, $00                                     ; $6413: $0e $00
    ld de, $0004                                  ; $6415: $11 $04 $00
    call PlayScreenTransitionFadeIn               ; $6418: $cd $0a $04
    ld hl, rStatePhase_Current                    ; $641b: $21 $35 $d6
    inc [hl]                                      ; $641e: $34
    call DrawClueNumbersFromRunLengthBuffers      ; $641f: $cd $2b $6f
    ret                                           ; $6422: $c9


GS09_StatePhase_09_ContinueSavedPuzzleInitAndOpenPauseMenu::
    ld a, $43                                     ; $6423: $3e $43
    ld [rLCDCShadow], a                           ; $6425: $ea $2e $c3
    xor a                                         ; $6428: $af
    ld [rBGPShadow], a                            ; $6429: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $642c: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $642f: $ea $31 $c3
    ld [rSCXShadow], a                            ; $6432: $ea $32 $c3
    ld [rSCYShadow], a                            ; $6435: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $6438: $cd $9d $05
    call FillBGMap1WithTile01                     ; $643b: $cd $a8 $05
    call RestoreCurrentPuzzleProgressFromSaveData ; $643e: $cd $93 $1c
    call LoadGameBoardTileData                    ; $6441: $cd $2b $69
    ld a, $2f                                     ; $6444: $3e $2f
    ld [rLYCShadow], a                            ; $6446: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags             ; $6449: $21 $37 $c3
    set 6, [hl]                                   ; $644c: $cb $f6
    ld hl, rIE                                    ; $644e: $21 $ff $ff
    set 1, [hl]                                   ; $6451: $cb $ce
    ld a, $01                                     ; $6453: $3e $01
    ld [rLCDCInterruptDispatchIndex], a           ; $6455: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $6458: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $645b: $ea $50 $c3
    call BuildClueRunLengthBuffers                ; $645e: $cd $a2 $6e
    call ClearShadowOAMBuffer                     ; $6461: $cd $b3 $05
    call RenderPuzzleTimerDigits                  ; $6464: $cd $76 $7b
    call RedrawBoardCellEffectFramesFromStateBuffer; $6467: $cd $e0 $77
    ld a, [rSelectedSaveSlotIndex]                ; $646a: $fa $65 $a0
    ld c, a                                       ; $646d: $4f
    sla a                                         ; $646e: $cb $27
    sla a                                         ; $6470: $cb $27
    add c                                         ; $6472: $81
    ld c, a                                       ; $6473: $4f
    ld b, $00                                     ; $6474: $06 $00
    ld hl, rSaveSlot1TimeTrialBGMSelectionIndex   ; $6476: $21 $6c $a0
    add hl, bc                                    ; $6479: $09
    ld c, [hl]                                    ; $647a: $4e
    ld b, $00                                     ; $647b: $06 $00
    ld hl, PuzzleModeSecondarySfxIdTable          ; $647d: $21 $9f $7d
    add hl, bc                                    ; $6480: $09
    ld c, $00                                     ; $6481: $0e $00
    ld a, $01                                     ; $6483: $3e $01
    call CallSoundCommandDispatcher               ; $6485: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $6488: $cd $96 $03
    ld c, [hl]                                    ; $648b: $4e
    ld a, $01                                     ; $648c: $3e $01
    call CallSoundCommandDispatcher               ; $648e: $cd $b3 $03
    call EnableLCDFromShadow                      ; $6491: $cd $9f $04
    ld b, $03                                     ; $6494: $06 $03
    ld hl, $4694                                  ; $6496: $21 $94 $46
    ld c, $00                                     ; $6499: $0e $00
    ld de, $0004                                  ; $649b: $11 $04 $00
    call PlayScreenTransitionFadeIn               ; $649e: $cd $0a $04
    call ClearShadowOAMBuffer                     ; $64a1: $cd $b3 $05
    rst RST_08                                    ; $64a4: $cf
    xor a                                         ; $64a5: $af
    ld [rGS08_PauseMenuMainSelection], a          ; $64a6: $ea $3a $d8
    ld a, $01                                     ; $64a9: $3e $01
    ld [rGS08_PauseMenuSavePromptSelection], a    ; $64ab: $ea $3b $d8
    ld a, [rSelectedSaveSlotIndex]                ; $64ae: $fa $65 $a0
    ld c, a                                       ; $64b1: $4f
    sla a                                         ; $64b2: $cb $27
    sla a                                         ; $64b4: $cb $27
    add c                                         ; $64b6: $81
    ld c, a                                       ; $64b7: $4f
    ld b, $00                                     ; $64b8: $06 $00
    ld hl, rSaveSlot1TimeTrialBGMSelectionIndex   ; $64ba: $21 $6c $a0
    add hl, bc                                    ; $64bd: $09
    ld a, [hl]                                    ; $64be: $7e
    ld [rGS08_PauseMenuBGMSubmenuSelection], a    ; $64bf: $ea $3c $d8
    ld a, $01                                     ; $64c2: $3e $01
    ld [rGS08_PauseMenuGiveUpPromptSelection], a  ; $64c4: $ea $3d $d8
    ld a, $06                                     ; $64c7: $3e $06
    ld hl, $7a00                                  ; $64c9: $21 $00 $7a
    ld de, $8500                                  ; $64cc: $11 $00 $85
    ld bc, $0300                                  ; $64cf: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $64d2: $cd $35 $05
    call RecomputePuzzleCellBitSetCounters        ; $64d5: $cd $3d $7d
    ld a, $04                                     ; $64d8: $3e $04
    ld [rStatePhase_Current], a                   ; $64da: $ea $35 $d6
    ret                                           ; $64dd: $c9


GS09_StatePhase_01_PuzzleGameplayLoop::
    call UpdatePuzzleCursorFromDirectionalInput   ; $64de: $cd $3c $71
    call DrawPuzzleCursorSpritesAndTickStepSequence; $64e1: $cd $b0 $70
    call UpdatePuzzleTimerCountdown               ; $64e4: $cd $5c $7a
    call TickMarioBlinkAnimation                  ; $64e7: $cd $8a $78
    call RouteTimeTrialCellActionInputByUnusedSaveRuleFlag; $64ea: $cd $a1 $67
    call TickPendingCellActionEffect              ; $64ed: $cd $88 $74
    call FinalizePuzzleClearAndSetPostClearFlowFlag; $64f0: $cd $68 $75
    call TickPuzzleTimerCompletionState           ; $64f3: $cd $3a $7c
    ld a, [rInputButtonsPressed]                  ; $64f6: $fa $1e $c3
    and $08                                       ; $64f9: $e6 $08
    jr z, .HandlePostClearFlowOrCheckTimeout      ; $64fb: $28 $0d

    ld c, $10                                     ; $64fd: $0e $10
    ld a, $02                                     ; $64ff: $3e $02
    call CallSoundCommandDispatcher               ; $6501: $cd $b3 $03
    ld a, $03                                     ; $6504: $3e $03
    ld [rStatePhase_Current], a                   ; $6506: $ea $35 $d6
    ret                                           ; $6509: $c9


.HandlePostClearFlowOrCheckTimeout:
    ld a, [rPuzzlePostClearFlowFlag]              ; $650a: $fa $05 $d8
    and a                                         ; $650d: $a7
    jr z, .HandleTimerCompletionGameOverFlow      ; $650e: $28 $60

    ld c, $00                                     ; $6510: $0e $00
    ld a, $05                                     ; $6512: $3e $05
    call CallSoundCommandDispatcher               ; $6514: $cd $b3 $03
    ld c, $00                                     ; $6517: $0e $00
    ld a, $01                                     ; $6519: $3e $01
    call CallSoundCommandDispatcher               ; $651b: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $651e: $cd $96 $03
    ld c, $00                                     ; $6521: $0e $00
    ld a, $01                                     ; $6523: $3e $01
    call CallSoundCommandDispatcher               ; $6525: $cd $b3 $03
    ld bc, $0003                                  ; $6528: $01 $03 $00
    call BusyWaitDelayByBC                        ; $652b: $cd $00 $06
    ld c, $00                                     ; $652e: $0e $00
    ld a, $01                                     ; $6530: $3e $01
    call CallSoundCommandDispatcher               ; $6532: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $6535: $cd $96 $03
    ld c, $09                                     ; $6538: $0e $09
    ld a, $01                                     ; $653a: $3e $01
    call CallSoundCommandDispatcher               ; $653c: $cd $b3 $03
    call ClearShadowOAMBuffer                     ; $653f: $cd $b3 $05
    call RedrawPuzzleBoard                        ; $6542: $cd $a7 $75

.WaitForPostClearInputAndAdvance:
    rst RST_08                                    ; $6545: $cf
    ld a, [rInputButtonsPressed]                  ; $6546: $fa $1e $c3
    and $09                                       ; $6549: $e6 $09
    jr z, .WaitForPostClearInputAndAdvance        ; $654b: $28 $f8

    ld c, $03                                     ; $654d: $0e $03
    ld a, $02                                     ; $654f: $3e $02
    call CallSoundCommandDispatcher               ; $6551: $cd $b3 $03
    call RedrawPostClearSolvedCellsByGridSize     ; $6554: $cd $1b $76
    call DrawPuzzleNameFromPointerTable           ; $6557: $cd $42 $1a
    ld c, $00                                     ; $655a: $0e $00
    ld a, $01                                     ; $655c: $3e $01
    call CallSoundCommandDispatcher               ; $655e: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $6561: $cd $96 $03
    ld c, $12                                     ; $6564: $0e $12
    ld a, $01                                     ; $6566: $3e $01
    call CallSoundCommandDispatcher               ; $6568: $cd $b3 $03
    ld hl, rStatePhase_Current                    ; $656b: $21 $35 $d6
    inc [hl]                                      ; $656e: $34
    ret                                           ; $656f: $c9


.HandleTimerCompletionGameOverFlow:
    ld a, [rPuzzleTimerCompletionState]           ; $6570: $fa $06 $d8
    and a                                         ; $6573: $a7
    ret z                                         ; $6574: $c8

    ld c, $00                                     ; $6575: $0e $00
    ld a, $01                                     ; $6577: $3e $01
    call CallSoundCommandDispatcher               ; $6579: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $657c: $cd $96 $03
    ld c, $08                                     ; $657f: $0e $08
    ld a, $01                                     ; $6581: $3e $01
    call CallSoundCommandDispatcher               ; $6583: $cd $b3 $03
    call ClearShadowOAMBuffer                     ; $6586: $cd $b3 $05
    call LoadGameOverMessageTileData              ; $6589: $cd $55 $7c
    ld hl, rStatePhase_Current                    ; $658c: $21 $35 $d6
    inc [hl]                                      ; $658f: $34
    ret                                           ; $6590: $c9


GS09_StatePhase_02_ConfirmExitAndReturnToTimeTrialRankingScreen::
    ld a, [rInputButtonsPressed]                  ; $6591: $fa $1e $c3
    and $09                                       ; $6594: $e6 $09
    ret z                                         ; $6596: $c8

    ld c, $03                                     ; $6597: $0e $03
    ld a, $02                                     ; $6599: $3e $02
    call CallSoundCommandDispatcher               ; $659b: $cd $b3 $03
    ld bc, $003c                                  ; $659e: $01 $3c $00
    call DelayFramesByBC                          ; $65a1: $cd $f7 $05
    ld a, $05                                     ; $65a4: $3e $05
    call CallSoundCommandDispatcher               ; $65a6: $cd $b3 $03
    ld c, $00                                     ; $65a9: $0e $00
    ld a, $01                                     ; $65ab: $3e $01
    call CallSoundCommandDispatcher               ; $65ad: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $65b0: $cd $96 $03
    ld c, $00                                     ; $65b3: $0e $00
    ld a, $01                                     ; $65b5: $3e $01
    call CallSoundCommandDispatcher               ; $65b7: $cd $b3 $03
    ld b, $03                                     ; $65ba: $06 $03
    ld hl, $469f                                  ; $65bc: $21 $9f $46
    ld c, $00                                     ; $65bf: $0e $00
    ld de, $0013                                  ; $65c1: $11 $13 $00
    call PlayScreenTransitionFadeOut              ; $65c4: $cd $4b $04
    call DisableLCDAtVBlank                       ; $65c7: $cd $80 $04
    ld hl, rLCDCInterruptControlFlags             ; $65ca: $21 $37 $c3
    res 6, [hl]                                   ; $65cd: $cb $b6
    ld hl, rIE                                    ; $65cf: $21 $ff $ff
    res 1, [hl]                                   ; $65d2: $cb $8e
    xor a                                         ; $65d4: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $65d5: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $65d8: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $65db: $ea $50 $c3
    ld a, $04                                     ; $65de: $3e $04
    ld [rStatePhase_Current], a                   ; $65e0: $ea $35 $d6
    ld a, $07                                     ; $65e3: $3e $07
    ld [rGameState_Current], a                    ; $65e5: $ea $34 $d6
    ret                                           ; $65e8: $c9


GS09_StatePhase_03_PauseMenuInitAndMaskClues::
    call ClearShadowOAMBuffer                     ; $65e9: $cd $b3 $05
    rst RST_08                                    ; $65ec: $cf
    xor a                                         ; $65ed: $af
    ld [rGS08_PauseMenuMainSelection], a          ; $65ee: $ea $3a $d8
    ld a, $01                                     ; $65f1: $3e $01
    ld [rGS08_PauseMenuSavePromptSelection], a    ; $65f3: $ea $3b $d8
    ld a, [rSelectedSaveSlotIndex]                ; $65f6: $fa $65 $a0
    ld c, a                                       ; $65f9: $4f
    sla a                                         ; $65fa: $cb $27
    sla a                                         ; $65fc: $cb $27
    add c                                         ; $65fe: $81
    ld c, a                                       ; $65ff: $4f
    ld b, $00                                     ; $6600: $06 $00
    ld hl, rSaveSlot1TimeTrialBGMSelectionIndex   ; $6602: $21 $6c $a0
    add hl, bc                                    ; $6605: $09
    ld a, [hl]                                    ; $6606: $7e
    ld [rGS08_PauseMenuBGMSubmenuSelection], a    ; $6607: $ea $3c $d8
    ld a, $01                                     ; $660a: $3e $01
    ld [rGS08_PauseMenuGiveUpPromptSelection], a  ; $660c: $ea $3d $d8
    ld a, $06                                     ; $660f: $3e $06
    ld hl, $7a00                                  ; $6611: $21 $00 $7a
    ld de, $8500                                  ; $6614: $11 $00 $85
    ld bc, $0300                                  ; $6617: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $661a: $cd $35 $05
    call MaskClueDigitSlotsFromRunLengthBuffers   ; $661d: $cd $13 $70
    ld hl, rStatePhase_Current                    ; $6620: $21 $35 $d6
    inc [hl]                                      ; $6623: $34
    ret                                           ; $6624: $c9


GS09_StatePhase_04_PauseMenuIdle::
    ld b, $02                                     ; $6625: $06 $02
    ld hl, $4632                                  ; $6627: $21 $32 $46
    call SwitchBankToBAndJumpToHL                 ; $662a: $cd $db $05
    ld a, [rInputButtonsPressed]                  ; $662d: $fa $1e $c3
    bit 0, a                                      ; $6630: $cb $47
    jr z, .HandlePauseMenuCloseInput              ; $6632: $28 $16

    ld c, $03                                     ; $6634: $0e $03
    ld a, $02                                     ; $6636: $3e $02
    call CallSoundCommandDispatcher               ; $6638: $cd $b3 $03
    ld a, [rGS08_PauseMenuMainSelection]          ; $663b: $fa $3a $d8
    ld c, a                                       ; $663e: $4f
    ld b, $00                                     ; $663f: $06 $00
    ld hl, GS09_PauseMenuSelectionNextPhaseTable  ; $6641: $21 $5a $66
    add hl, bc                                    ; $6644: $09
    ld a, [hl]                                    ; $6645: $7e
    ld [rStatePhase_Current], a                   ; $6646: $ea $35 $d6
    ret                                           ; $6649: $c9


.HandlePauseMenuCloseInput:
    bit 3, a                                      ; $664a: $cb $5f
    ret z                                         ; $664c: $c8

    ld c, $04                                     ; $664d: $0e $04
    ld a, $02                                     ; $664f: $3e $02
    call CallSoundCommandDispatcher               ; $6651: $cd $b3 $03
    ld a, $08                                     ; $6654: $3e $08
    ld [rStatePhase_Current], a                   ; $6656: $ea $35 $d6
    ret                                           ; $6659: $c9


GS09_PauseMenuSelectionNextPhaseTable::
    db $05, $07, $06

GS09_StatePhase_05_PauseMenuSavePrompt::
    ld b, $02                                     ; $665d: $06 $02
    ld hl, $4672                                  ; $665f: $21 $72 $46
    call SwitchBankToBAndJumpToHL                 ; $6662: $cd $db $05
    ld a, [rInputButtonsPressed]                  ; $6665: $fa $1e $c3
    and $01                                       ; $6668: $e6 $01
    ret z                                         ; $666a: $c8

    ld c, $04                                     ; $666b: $0e $04
    ld a, $02                                     ; $666d: $3e $02
    call CallSoundCommandDispatcher               ; $666f: $cd $b3 $03
    ld a, [rGS08_PauseMenuSavePromptSelection]    ; $6672: $fa $3b $d8
    and a                                         ; $6675: $a7
    jr z, .HandlePauseMenuSavePromptConfirmAndBeginExitFlow; $6676: $28 $06

    ld a, $04                                     ; $6678: $3e $04
    ld [rStatePhase_Current], a                   ; $667a: $ea $35 $d6
    ret                                           ; $667d: $c9


.HandlePauseMenuSavePromptConfirmAndBeginExitFlow:
    call SaveCurrentPuzzleProgressToSaveData      ; $667e: $cd $11 $1c
    ld a, $03                                     ; $6681: $3e $03
    ld [rContinueSavedPuzzlePromptRouteMode], a   ; $6683: $ea $a2 $ac
    ld c, $03                                     ; $6686: $0e $03
    ld a, $02                                     ; $6688: $3e $02
    call CallSoundCommandDispatcher               ; $668a: $cd $b3 $03
    ld bc, $003c                                  ; $668d: $01 $3c $00
    call DelayFramesByBC                          ; $6690: $cd $f7 $05
    ld a, $05                                     ; $6693: $3e $05
    call CallSoundCommandDispatcher               ; $6695: $cd $b3 $03
    ld c, $00                                     ; $6698: $0e $00
    ld a, $01                                     ; $669a: $3e $01
    call CallSoundCommandDispatcher               ; $669c: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $669f: $cd $96 $03
    ld c, $00                                     ; $66a2: $0e $00
    ld a, $01                                     ; $66a4: $3e $01
    call CallSoundCommandDispatcher               ; $66a6: $cd $b3 $03
    ld b, $03                                     ; $66a9: $06 $03
    ld hl, $469f                                  ; $66ab: $21 $9f $46
    ld c, $00                                     ; $66ae: $0e $00
    ld de, $0013                                  ; $66b0: $11 $13 $00
    call PlayScreenTransitionFadeOut              ; $66b3: $cd $4b $04
    call DisableLCDAtVBlank                       ; $66b6: $cd $80 $04
    ld hl, rLCDCInterruptControlFlags             ; $66b9: $21 $37 $c3
    res 6, [hl]                                   ; $66bc: $cb $b6
    ld hl, rIE                                    ; $66be: $21 $ff $ff
    res 1, [hl]                                   ; $66c1: $cb $8e
    xor a                                         ; $66c3: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $66c4: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $66c7: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $66ca: $ea $50 $c3
    ld a, [rSelectedSaveSlotIndex]                ; $66cd: $fa $65 $a0
    ld c, a                                       ; $66d0: $4f
    sla a                                         ; $66d1: $cb $27
    sla a                                         ; $66d3: $cb $27
    add c                                         ; $66d5: $81
    ld c, a                                       ; $66d6: $4f
    ld b, $00                                     ; $66d7: $06 $00
    ld hl, rSaveSlot1TimeTrialBGMSelectionIndex   ; $66d9: $21 $6c $a0
    add hl, bc                                    ; $66dc: $09
    ld a, [hl]                                    ; $66dd: $7e
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]    ; $66de: $fa $3c $d8
    ld [hl], a                                    ; $66e1: $77
    ld a, $04                                     ; $66e2: $3e $04
    ld [rStatePhase_Current], a                   ; $66e4: $ea $35 $d6
    ld a, $00                                     ; $66e7: $3e $00
    ld [rGameState_Current], a                    ; $66e9: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $66ec: $c3 $1c $1b


GS09_StatePhase_06_PauseMenuBGMSubmenu::
    ld b, $02                                     ; $66ef: $06 $02
    ld hl, $46b2                                  ; $66f1: $21 $b2 $46
    call SwitchBankToBAndJumpToHL                 ; $66f4: $cd $db $05
    ld a, [rInputButtonsPressed]                  ; $66f7: $fa $1e $c3
    and $01                                       ; $66fa: $e6 $01
    ret z                                         ; $66fc: $c8

    ld c, $04                                     ; $66fd: $0e $04
    ld a, $02                                     ; $66ff: $3e $02
    call CallSoundCommandDispatcher               ; $6701: $cd $b3 $03
    ld a, $04                                     ; $6704: $3e $04
    ld [rStatePhase_Current], a                   ; $6706: $ea $35 $d6
    ret                                           ; $6709: $c9


GS09_StatePhase_07_PauseMenuGiveUpPrompt::
    ld b, $02                                     ; $670a: $06 $02
    ld hl, $470f                                  ; $670c: $21 $0f $47
    call SwitchBankToBAndJumpToHL                 ; $670f: $cd $db $05
    ld a, [rInputButtonsPressed]                  ; $6712: $fa $1e $c3
    and $01                                       ; $6715: $e6 $01
    ret z                                         ; $6717: $c8

    ld c, $04                                     ; $6718: $0e $04
    ld a, $02                                     ; $671a: $3e $02
    call CallSoundCommandDispatcher               ; $671c: $cd $b3 $03
    ld a, [rGS08_PauseMenuGiveUpPromptSelection]  ; $671f: $fa $3d $d8
    and a                                         ; $6722: $a7
    jr z, .HandlePauseMenuGiveUpConfirmAndStartGameOverFlow; $6723: $28 $06

    ld a, $04                                     ; $6725: $3e $04
    ld [rStatePhase_Current], a                   ; $6727: $ea $35 $d6
    ret                                           ; $672a: $c9


.HandlePauseMenuGiveUpConfirmAndStartGameOverFlow:
    ld a, $01                                     ; $672b: $3e $01
    ld [rPuzzleTimerCompletionState], a           ; $672d: $ea $06 $d8
    ld c, $00                                     ; $6730: $0e $00
    ld a, $01                                     ; $6732: $3e $01
    call CallSoundCommandDispatcher               ; $6734: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $6737: $cd $96 $03
    ld c, $08                                     ; $673a: $0e $08
    ld a, $01                                     ; $673c: $3e $01
    call CallSoundCommandDispatcher               ; $673e: $cd $b3 $03
    call ClearShadowOAMBuffer                     ; $6741: $cd $b3 $05
    call LoadGameOverMessageTileData              ; $6744: $cd $55 $7c
    ld a, [rSelectedSaveSlotIndex]                ; $6747: $fa $65 $a0
    ld c, a                                       ; $674a: $4f
    sla a                                         ; $674b: $cb $27
    sla a                                         ; $674d: $cb $27
    add c                                         ; $674f: $81
    ld c, a                                       ; $6750: $4f
    ld b, $00                                     ; $6751: $06 $00
    ld hl, rSaveSlot1TimeTrialBGMSelectionIndex   ; $6753: $21 $6c $a0
    add hl, bc                                    ; $6756: $09
    ld a, [hl]                                    ; $6757: $7e
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]    ; $6758: $fa $3c $d8
    ld [hl], a                                    ; $675b: $77
    ld a, $02                                     ; $675c: $3e $02
    ld [rStatePhase_Current], a                   ; $675e: $ea $35 $d6
    xor a                                         ; $6761: $af
    ld [rContinueSavedPuzzlePromptRouteMode], a   ; $6762: $ea $a2 $ac
    jp RefreshSaveValidationChecksumsAndMirrors   ; $6765: $c3 $1c $1b


GS09_StatePhase_08_ClosePauseMenuAndResumeGameplay::
    call ClearShadowOAMBuffer                     ; $6768: $cd $b3 $05
    rst RST_08                                    ; $676b: $cf
    ld a, [rSelectedSaveSlotIndex]                ; $676c: $fa $65 $a0
    ld c, a                                       ; $676f: $4f
    sla a                                         ; $6770: $cb $27
    sla a                                         ; $6772: $cb $27
    add c                                         ; $6774: $81
    ld c, a                                       ; $6775: $4f
    ld b, $00                                     ; $6776: $06 $00
    ld hl, rSaveSlot1TimeTrialBGMSelectionIndex   ; $6778: $21 $6c $a0
    add hl, bc                                    ; $677b: $09
    ld a, [hl]                                    ; $677c: $7e
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]    ; $677d: $fa $3c $d8
    ld [hl], a                                    ; $6780: $77
    ld a, $06                                     ; $6781: $3e $06
    ld hl, $4500                                  ; $6783: $21 $00 $45
    ld de, $8500                                  ; $6786: $11 $00 $85
    ld bc, $0300                                  ; $6789: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $678c: $cd $35 $05
    call DrawClueNumbersFromRunLengthBuffers      ; $678f: $cd $2b $6f
    call RenderPuzzleTimerDigits                  ; $6792: $cd $76 $7b
    ld a, $01                                     ; $6795: $3e $01
    ld [rStatePhase_Current], a                   ; $6797: $ea $35 $d6
    xor a                                         ; $679a: $af
    ld [rContinueSavedPuzzlePromptRouteMode], a   ; $679b: $ea $a2 $ac
    jp RefreshSaveValidationChecksumsAndMirrors   ; $679e: $c3 $1c $1b


RouteTimeTrialCellActionInputByUnusedSaveRuleFlag::
    ld a, [rInputButtonsHeld]                     ; $67a1: $fa $1a $c3
    and $01                                       ; $67a4: $e6 $01
    jr z, .ResetActionRepeatGuard                 ; $67a6: $28 $07

    ld a, [rInputButtonsPressedOrRepeated]        ; $67a8: $fa $22 $c3
    and $f0                                       ; $67ab: $e6 $f0
    jr z, .DispatchCellActionByUnusedSaveRuleFlag ; $67ad: $28 $04

.ResetActionRepeatGuard:
    xor a                                         ; $67af: $af
    ld [rPuzzleActionRepeatGuard], a              ; $67b0: $ea $0f $d8

.DispatchCellActionByUnusedSaveRuleFlag:
    ld a, [rPuzzleAndMenuCursorRow]               ; $67b3: $fa $37 $d6
    sla a                                         ; $67b6: $cb $27
    sla a                                         ; $67b8: $cb $27
    sla a                                         ; $67ba: $cb $27
    sla a                                         ; $67bc: $cb $27
    ld hl, rPuzzleCursorColumn                    ; $67be: $21 $36 $d6
    add [hl]                                      ; $67c1: $86
    ld c, a                                       ; $67c2: $4f
    ld b, $00                                     ; $67c3: $06 $00
    ld hl, rPuzzleCellStateBufferStart            ; $67c5: $21 $40 $d6
    add hl, bc                                    ; $67c8: $09
    push hl                                       ; $67c9: $e5
    ld a, [rSelectedSaveSlotIndex]                ; $67ca: $fa $65 $a0
    ld c, a                                       ; $67cd: $4f
    ld b, $00                                     ; $67ce: $06 $00
    ld hl, rSaveSlot1PuzzleActionRuleIndex_Unused ; $67d0: $21 $66 $a0
    add hl, bc                                    ; $67d3: $09
    ld a, [hl]                                    ; $67d4: $7e
    pop hl                                        ; $67d5: $e1
    and a                                         ; $67d6: $a7
    jp z, ProcessPuzzleCellActionInput_HandleFillActionInput; $67d7: $ca $d2 $71

    dec a                                         ; $67da: $3d
    jp z, ProcessPuzzleCellActionInput_HandleFillActionInput; $67db: $ca $d2 $71

    ret                                           ; $67de: $c9


GameState_0A_PicrossPuzzle_PhaseDispatcher::
    ld a, [rStatePhase_Current]                   ; $67df: $fa $35 $d6
    rst RST_18                                    ; $67e2: $df

GS0A_PhasePointer_00::
    db $fb, $67

GS0A_PhasePointer_01::
    db $04, $6a

GS0A_PhasePointer_02::
    db $b6, $6a

GS0A_PhasePointer_03::
    db $b3, $6b

GS0A_PhasePointer_04::
    db $71, $6c

GS0A_PhasePointer_05::
    db $c9, $6c

GS0A_PhasePointer_06::
    db $0e, $6d

GS0A_PhasePointer_07::
    db $46, $6d

GS0A_PhasePointer_08::
    db $e0, $6d

GS0A_PhasePointer_09::
    db $fb, $6d

GS0A_PhasePointer_0a::
    db $61, $6e

GS0A_PhasePointer_0b::
    db $79, $68

GS0A_StatePhase_00_PicrossPuzzleInit::
    ld a, $43                                     ; $67fb: $3e $43
    ld [rLCDCShadow], a                           ; $67fd: $ea $2e $c3
    xor a                                         ; $6800: $af
    ld [rBGPShadow], a                            ; $6801: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $6804: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $6807: $ea $31 $c3
    ld [rSCXShadow], a                            ; $680a: $ea $32 $c3
    ld [rSCYShadow], a                            ; $680d: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $6810: $cd $9d $05
    call FillBGMap1WithTile01                     ; $6813: $cd $a8 $05
    call LoadPuzzleDataBuffer                     ; $6816: $cd $ee $07
    call LoadGameBoardTileData                    ; $6819: $cd $2b $69
    xor a                                         ; $681c: $af
    ld [rPuzzleCursorColumn], a                   ; $681d: $ea $36 $d6
    ld [rPuzzleAndMenuCursorRow], a               ; $6820: $ea $37 $d6
    ld a, $00                                     ; $6823: $3e $00
    ld [rHintPopupSelection], a                   ; $6825: $ea $33 $d8
    ld a, $02                                     ; $6828: $3e $02
    ld [rPuzzleTimerPenaltyStep], a               ; $682a: $ea $11 $d8
    ld a, $06                                     ; $682d: $3e $06
    ld hl, $7800                                  ; $682f: $21 $00 $78
    ld de, $8500                                  ; $6832: $11 $00 $85
    ld bc, $0200                                  ; $6835: $01 $00 $02
    call BankedTileCopy                           ; $6838: $cd $e1 $04
    ld a, $2f                                     ; $683b: $3e $2f
    ld [rLYCShadow], a                            ; $683d: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags             ; $6840: $21 $37 $c3
    set 6, [hl]                                   ; $6843: $cb $f6
    ld hl, rIE                                    ; $6845: $21 $ff $ff
    set 1, [hl]                                   ; $6848: $cb $ce
    ld a, $01                                     ; $684a: $3e $01
    ld [rLCDCInterruptDispatchIndex], a           ; $684c: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $684f: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $6852: $ea $50 $c3
    call BuildClueRunLengthBuffers                ; $6855: $cd $a2 $6e
    call ClearShadowOAMBuffer                     ; $6858: $cd $b3 $05
    call ResetPuzzleTimerState                    ; $685b: $cd $5d $7b
    call RedrawBoardCellEffectFramesFromStateBuffer; $685e: $cd $e0 $77
    call PlayPuzzleModeSecondarySfxPairBySelectedCourseBGM; $6861: $cd $70 $7d
    call EnableLCDFromShadow                      ; $6864: $cd $9f $04
    ld b, $03                                     ; $6867: $06 $03
    ld hl, $4694                                  ; $6869: $21 $94 $46
    ld c, $00                                     ; $686c: $0e $00
    ld de, $0004                                  ; $686e: $11 $04 $00
    call PlayScreenTransitionFadeIn               ; $6871: $cd $0a $04
    ld hl, rStatePhase_Current                    ; $6874: $21 $35 $d6
    inc [hl]                                      ; $6877: $34
    ret                                           ; $6878: $c9


GS0A_StatePhase_0b_ContinueSavedPuzzleInitAndOpenPauseMenu::
    ld a, $43                                     ; $6879: $3e $43
    ld [rLCDCShadow], a                           ; $687b: $ea $2e $c3
    xor a                                         ; $687e: $af
    ld [rBGPShadow], a                            ; $687f: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $6882: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $6885: $ea $31 $c3
    ld [rSCXShadow], a                            ; $6888: $ea $32 $c3
    ld [rSCYShadow], a                            ; $688b: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $688e: $cd $9d $05
    call FillBGMap1WithTile01                     ; $6891: $cd $a8 $05
    call RestoreCurrentPuzzleProgressFromSaveData ; $6894: $cd $93 $1c
    call LoadGameBoardTileData                    ; $6897: $cd $2b $69
    ld a, $06                                     ; $689a: $3e $06
    ld hl, $7800                                  ; $689c: $21 $00 $78
    ld de, $8500                                  ; $689f: $11 $00 $85
    ld bc, $0200                                  ; $68a2: $01 $00 $02
    call BankedTileCopy                           ; $68a5: $cd $e1 $04
    ld a, $2f                                     ; $68a8: $3e $2f
    ld [rLYCShadow], a                            ; $68aa: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags             ; $68ad: $21 $37 $c3
    set 6, [hl]                                   ; $68b0: $cb $f6
    ld hl, rIE                                    ; $68b2: $21 $ff $ff
    set 1, [hl]                                   ; $68b5: $cb $ce
    ld a, $01                                     ; $68b7: $3e $01
    ld [rLCDCInterruptDispatchIndex], a           ; $68b9: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $68bc: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $68bf: $ea $50 $c3
    call BuildClueRunLengthBuffers                ; $68c2: $cd $a2 $6e
    call ClearShadowOAMBuffer                     ; $68c5: $cd $b3 $05
    xor a                                         ; $68c8: $af
    ld [rPuzzleTimerActive], a                    ; $68c9: $ea $0d $d8
    call RenderPuzzleTimerDigits                  ; $68cc: $cd $76 $7b
    call RedrawBoardCellEffectFramesFromStateBuffer; $68cf: $cd $e0 $77
    call PlayPuzzleModeSecondarySfxPairBySelectedCourseBGM; $68d2: $cd $70 $7d
    call EnableLCDFromShadow                      ; $68d5: $cd $9f $04
    ld b, $03                                     ; $68d8: $06 $03
    ld hl, $4694                                  ; $68da: $21 $94 $46
    ld c, $00                                     ; $68dd: $0e $00
    ld de, $0004                                  ; $68df: $11 $04 $00
    call PlayScreenTransitionFadeIn               ; $68e2: $cd $0a $04
    call ClearShadowOAMBuffer                     ; $68e5: $cd $b3 $05
    rst RST_08                                    ; $68e8: $cf
    xor a                                         ; $68e9: $af
    ld [rGS08_PauseMenuMainSelection], a          ; $68ea: $ea $3a $d8
    ld a, $01                                     ; $68ed: $3e $01
    ld [rGS08_PauseMenuSavePromptSelection], a    ; $68ef: $ea $3b $d8
    ld a, [rSelectedSaveSlotIndex]                ; $68f2: $fa $65 $a0
    ld c, a                                       ; $68f5: $4f
    ld b, $00                                     ; $68f6: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $68f8: $21 $8d $a3
    add hl, bc                                    ; $68fb: $09
    ld a, [rSelectedSaveSlotIndex]                ; $68fc: $fa $65 $a0
    ld c, a                                       ; $68ff: $4f
    sla a                                         ; $6900: $cb $27
    sla a                                         ; $6902: $cb $27
    add c                                         ; $6904: $81
    add [hl]                                      ; $6905: $86
    ld c, a                                       ; $6906: $4f
    ld hl, rSaveSlot1PicrossKinokoBGMSelectionIndex; $6907: $21 $6a $a0
    add hl, bc                                    ; $690a: $09
    ld a, [hl]                                    ; $690b: $7e
    ld [rGS08_PauseMenuBGMSubmenuSelection], a    ; $690c: $ea $3c $d8
    ld a, $01                                     ; $690f: $3e $01
    ld [rGS08_PauseMenuGiveUpPromptSelection], a  ; $6911: $ea $3d $d8
    ld a, $06                                     ; $6914: $3e $06
    ld hl, $7a00                                  ; $6916: $21 $00 $7a
    ld de, $8500                                  ; $6919: $11 $00 $85
    ld bc, $0300                                  ; $691c: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $691f: $cd $35 $05
    call RecomputePuzzleCellBitSetCounters        ; $6922: $cd $3d $7d
    ld a, $06                                     ; $6925: $3e $06
    ld [rStatePhase_Current], a                   ; $6927: $ea $35 $d6
    ret                                           ; $692a: $c9


LoadGameBoardTileData::
    ld a, [rPuzzleGridWidth]                      ; $692b: $fa $00 $d8
    cp $05                                        ; $692e: $fe $05
    jr nz, .Load10x10GameBoardTileData            ; $6930: $20 $36

    ld a, $07                                     ; $6932: $3e $07
    ld hl, GS05_EasyPicrossCompletionMessage      ; $6934: $21 $00 $40
    ld de, $8000                                  ; $6937: $11 $00 $80
    ld bc, $1800                                  ; $693a: $01 $00 $18
    call BankedTileCopy                           ; $693d: $cd $e1 $04
    ld a, $06                                     ; $6940: $3e $06
    ld hl, $4800                                  ; $6942: $21 $00 $48
    ld de, $8800                                  ; $6945: $11 $00 $88
    ld bc, $0200                                  ; $6948: $01 $00 $02
    call BankedTileCopy                           ; $694b: $cd $e1 $04
    ld a, $0b                                     ; $694e: $3e $0b
    ld hl, $6000                                  ; $6950: $21 $00 $60
    ld de, $9800                                  ; $6953: $11 $00 $98
    ld bc, $0400                                  ; $6956: $01 $00 $04
    call BankedTileCopy                           ; $6959: $cd $e1 $04
    ld a, $93                                     ; $695c: $3e $93
    ld [rTilemapToTileDataAddressLookupTableLow], a; $695e: $ea $63 $cd
    ld a, $10                                     ; $6961: $3e $10
    ld [rTilemapToTileDataAddressLookupTableHigh], a; $6963: $ea $64 $cd
    jr .InitializePuzzleRuntimeStateAfterBoardLoad; $6966: $18 $52

.Load10x10GameBoardTileData:
    cp $0a                                        ; $6968: $fe $0a
    jr nz, .Load15x15GameBoardTileData            ; $696a: $20 $28

    ld a, $08                                     ; $696c: $3e $08
    ld hl, GS05_EasyPicrossCompletionMessage      ; $696e: $21 $00 $40
    ld de, $8000                                  ; $6971: $11 $00 $80
    ld bc, $1800                                  ; $6974: $01 $00 $18
    call BankedTileCopy                           ; $6977: $cd $e1 $04
    ld a, $0b                                     ; $697a: $3e $0b
    ld hl, $6400                                  ; $697c: $21 $00 $64
    ld de, $9800                                  ; $697f: $11 $00 $98
    ld bc, $0400                                  ; $6982: $01 $00 $04
    call BankedTileCopy                           ; $6985: $cd $e1 $04
    ld a, $87                                     ; $6988: $3e $87
    ld [rTilemapToTileDataAddressLookupTableLow], a; $698a: $ea $63 $cd
    ld a, $13                                     ; $698d: $3e $13
    ld [rTilemapToTileDataAddressLookupTableHigh], a; $698f: $ea $64 $cd
    jr .InitializePuzzleRuntimeStateAfterBoardLoad; $6992: $18 $26

.Load15x15GameBoardTileData:
    ld a, $06                                     ; $6994: $3e $06
    ld hl, GS05_EasyPicrossCompletionMessage      ; $6996: $21 $00 $40
    ld de, $8000                                  ; $6999: $11 $00 $80
    ld bc, $1800                                  ; $699c: $01 $00 $18
    call BankedTileCopy                           ; $699f: $cd $e1 $04
    ld a, $0b                                     ; $69a2: $3e $0b
    ld hl, $5c00                                  ; $69a4: $21 $00 $5c
    ld de, $9800                                  ; $69a7: $11 $00 $98
    ld bc, $0400                                  ; $69aa: $01 $00 $04
    call BankedTileCopy                           ; $69ad: $cd $e1 $04
    ld a, $9f                                     ; $69b0: $3e $9f
    ld [rTilemapToTileDataAddressLookupTableLow], a; $69b2: $ea $63 $cd
    ld a, $0d                                     ; $69b5: $3e $0d
    ld [rTilemapToTileDataAddressLookupTableHigh], a; $69b7: $ea $64 $cd

.InitializePuzzleRuntimeStateAfterBoardLoad:
    xor a                                         ; $69ba: $af
    ld [rPuzzlePostClearFlowFlag], a              ; $69bb: $ea $05 $d8
    ld [rPuzzleTimerCompletionState], a           ; $69be: $ea $06 $d8
    ld [rMarioBlinkAnimationSequenceCursor], a    ; $69c1: $ea $18 $d8
    ld [rMarioBlinkAnimationDelay], a             ; $69c4: $ea $17 $d8
    ld [rLowTimerMarioSweatIndicatorTickCounter], a; $69c7: $ea $1c $d8
    ld [rLowTimerMarioFaceTilesAppliedFlag], a    ; $69ca: $ea $1d $d8
    ld [rPuzzleActionRepeatGuard], a              ; $69cd: $ea $0f $d8
    ld [rCellActionStepDelayTimer], a             ; $69d0: $ea $1f $d8
    ld [rCellActionStepSequenceCursor], a         ; $69d3: $ea $20 $d8
    ld [rCellActionStepSequenceState], a          ; $69d6: $ea $21 $d8
    ld [rCellEffectTargetColumn], a               ; $69d9: $ea $24 $d8
    ld [rCellEffectTargetRow], a                  ; $69dc: $ea $25 $d8
    ld [rPendingCellEffectCode], a                ; $69df: $ea $23 $d8
    ld [rPendingCellEffectDelay], a               ; $69e2: $ea $22 $d8
    ld a, $01                                     ; $69e5: $3e $01
    ld [rHintCursorAnimationColumnThreshold], a   ; $69e7: $ea $12 $d8
    ld [rHintCursorAnimationRowThreshold], a      ; $69ea: $ea $13 $d8
    call GetSubtractiveRNGStateByte               ; $69ed: $cd $11 $06
    sla a                                         ; $69f0: $cb $27
    add $b4                                       ; $69f2: $c6 $b4
    ld [rHintCursorSweepAdvanceDelayLow], a       ; $69f4: $ea $14 $d8
    ld a, $00                                     ; $69f7: $3e $00
    adc $00                                       ; $69f9: $ce $00
    ld [rHintCursorSweepAdvanceDelayHigh], a      ; $69fb: $ea $15 $d8
    ld a, $05                                     ; $69fe: $3e $05
    ld [rCountdownSfxTimer], a                    ; $6a00: $ea $2a $d8
    ret                                           ; $6a03: $c9


GS0A_StatePhase_01_HintPopupSelection::
    call TickMarioBlinkAnimation                  ; $6a04: $cd $8a $78
    ld a, [rHintPopupSelection]                   ; $6a07: $fa $33 $d8
    add $3a                                       ; $6a0a: $c6 $3a
    ld bc, $2848                                  ; $6a0c: $01 $48 $28
    call CopyOAMSpriteById                        ; $6a0f: $cd $cb $20
    ld a, [rInputButtonsPressed]                  ; $6a12: $fa $1e $c3
    and $f0                                       ; $6a15: $e6 $f0
    jr z, .HandleHintPopupConfirmOrCancelInput    ; $6a17: $28 $10

    ld c, $0a                                     ; $6a19: $0e $0a
    ld a, $02                                     ; $6a1b: $3e $02
    call CallSoundCommandDispatcher               ; $6a1d: $cd $b3 $03
    ld a, [rHintPopupSelection]                   ; $6a20: $fa $33 $d8
    xor $01                                       ; $6a23: $ee $01
    ld [rHintPopupSelection], a                   ; $6a25: $ea $33 $d8
    ret                                           ; $6a28: $c9


.HandleHintPopupConfirmOrCancelInput:
    ld a, [rInputButtonsPressed]                  ; $6a29: $fa $1e $c3
    and $09                                       ; $6a2c: $e6 $09
    jr nz, .PlayHintPopupConfirmSfx               ; $6a2e: $20 $29

    ld a, [rInputButtonsPressed]                  ; $6a30: $fa $1e $c3
    and $02                                       ; $6a33: $e6 $02
    ret z                                         ; $6a35: $c8

    call ClearShadowOAMBufferFromCursor           ; $6a36: $cd $c2 $05
    rst RST_08                                    ; $6a39: $cf
    ld c, $04                                     ; $6a3a: $0e $04
    ld a, $02                                     ; $6a3c: $3e $02
    call CallSoundCommandDispatcher               ; $6a3e: $cd $b3 $03
    call ClearShadowOAMBuffer                     ; $6a41: $cd $b3 $05
    ld a, $01                                     ; $6a44: $3e $01
    ld [rHintPopupSelection], a                   ; $6a46: $ea $33 $d8
    add $3a                                       ; $6a49: $c6 $3a
    ld bc, $2848                                  ; $6a4b: $01 $48 $28
    call CopyOAMSpriteById                        ; $6a4e: $cd $cb $20
    ld bc, $001e                                  ; $6a51: $01 $1e $00
    call DelayFramesByBC                          ; $6a54: $cd $f7 $05
    jr .ApplyHintPopupSelectionAndAdvancePhase    ; $6a57: $18 $07

.PlayHintPopupConfirmSfx:
    ld c, $03                                     ; $6a59: $0e $03
    ld a, $02                                     ; $6a5b: $3e $02
    call CallSoundCommandDispatcher               ; $6a5d: $cd $b3 $03

.ApplyHintPopupSelectionAndAdvancePhase:
    ld a, [rHintPopupSelection]                   ; $6a60: $fa $33 $d8
    and a                                         ; $6a63: $a7
    jr nz, .AdvanceWithHintEnabledPath            ; $6a64: $20 $06

    ld hl, rStatePhase_Current                    ; $6a66: $21 $35 $d6
    inc [hl]                                      ; $6a69: $34
    jr .RefreshClueDisplayAfterHintPopupSelection ; $6a6a: $18 $0b

.AdvanceWithHintEnabledPath:
    call RecomputePuzzleCellBitSetCounters        ; $6a6c: $cd $3d $7d
    ld hl, rStatePhase_Current                    ; $6a6f: $21 $35 $d6
    inc [hl]                                      ; $6a72: $34
    ld hl, rStatePhase_Current                    ; $6a73: $21 $35 $d6
    inc [hl]                                      ; $6a76: $34

.RefreshClueDisplayAfterHintPopupSelection:
    call ClearShadowOAMBuffer                     ; $6a77: $cd $b3 $05
    rst RST_08                                    ; $6a7a: $cf
    call DrawClueNumbersFromRunLengthBuffers      ; $6a7b: $cd $2b $6f
    ld a, [rPuzzleGridWidth]                      ; $6a7e: $fa $00 $d8
    cp $05                                        ; $6a81: $fe $05
    jr nz, .LoadClueTileDataForNon5x5             ; $6a83: $20 $0f

    ld a, $07                                     ; $6a85: $3e $07
    ld hl, $4500                                  ; $6a87: $21 $00 $45
    ld de, $8500                                  ; $6a8a: $11 $00 $85
    ld bc, $0200                                  ; $6a8d: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $6a90: $cd $35 $05
    ret                                           ; $6a93: $c9


.LoadClueTileDataForNon5x5:
    cp $0a                                        ; $6a94: $fe $0a
    jr nz, .Load15x15ClueTileData                 ; $6a96: $20 $0f

    ld a, $08                                     ; $6a98: $3e $08
    ld hl, $4500                                  ; $6a9a: $21 $00 $45
    ld de, $8500                                  ; $6a9d: $11 $00 $85
    ld bc, $0200                                  ; $6aa0: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $6aa3: $cd $35 $05
    ret                                           ; $6aa6: $c9


.Load15x15ClueTileData:
    ld a, $06                                     ; $6aa7: $3e $06
    ld hl, $4500                                  ; $6aa9: $21 $00 $45
    ld de, $8500                                  ; $6aac: $11 $00 $85
    ld bc, $0200                                  ; $6aaf: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $6ab2: $cd $35 $05
    ret                                           ; $6ab5: $c9


GS0A_StatePhase_02_HintCursorSweepAndApplySelection::
    ld a, [rHintCursorAnimationColumnThreshold]   ; $6ab6: $fa $12 $d8
    cp $3f                                        ; $6ab9: $fe $3f
    jr z, .ProcessHintCursorRowSweep              ; $6abb: $28 $34

    ld c, a                                       ; $6abd: $4f
    ld a, [rVBlankFrameCounter]                   ; $6abe: $fa $3a $c3
    and c                                         ; $6ac1: $a1
    jr nz, .ProcessHintCursorRowSweep             ; $6ac2: $20 $2d

    ld a, c                                       ; $6ac4: $79
    cp $01                                        ; $6ac5: $fe $01
    jr z, .AdvanceHintCursorColumnUntilClueFound  ; $6ac7: $28 $06

    scf                                           ; $6ac9: $37
    ld hl, rHintCursorAnimationColumnThreshold    ; $6aca: $21 $12 $d8
    rl [hl]                                       ; $6acd: $cb $16

.AdvanceHintCursorColumnUntilClueFound:
    ld a, [rPuzzleCursorColumn]                   ; $6acf: $fa $36 $d6
    inc a                                         ; $6ad2: $3c
    ld hl, rPuzzleGridWidth                       ; $6ad3: $21 $00 $d8
    cp [hl]                                       ; $6ad6: $be
    jr nz, .StoreHintCursorColumnAndCheckClue     ; $6ad7: $20 $01

    xor a                                         ; $6ad9: $af

.StoreHintCursorColumnAndCheckClue:
    ld [rPuzzleCursorColumn], a                   ; $6ada: $ea $36 $d6
    ld c, a                                       ; $6add: $4f
    sla a                                         ; $6ade: $cb $27
    add c                                         ; $6ae0: $81
    sla a                                         ; $6ae1: $cb $27
    ld c, a                                       ; $6ae3: $4f
    ld b, $00                                     ; $6ae4: $06 $00
    ld hl, rClueRunLengthVerticalBufferField5Base ; $6ae6: $21 $a5 $d7
    add hl, bc                                    ; $6ae9: $09
    ld a, [hl]                                    ; $6aea: $7e
    and a                                         ; $6aeb: $a7
    jr z, .AdvanceHintCursorColumnUntilClueFound  ; $6aec: $28 $e1

    call TickCountdownAndEmitSfx                  ; $6aee: $cd $9e $6b

.ProcessHintCursorRowSweep:
    ld a, [rHintCursorAnimationRowThreshold]      ; $6af1: $fa $13 $d8
    cp $3f                                        ; $6af4: $fe $3f
    jr z, .DrawHintCursorAndCheckSweepCompletion  ; $6af6: $28 $34

    ld c, a                                       ; $6af8: $4f
    ld a, [rVBlankFrameCounter]                   ; $6af9: $fa $3a $c3
    and c                                         ; $6afc: $a1
    jr nz, .DrawHintCursorAndCheckSweepCompletion ; $6afd: $20 $2d

    ld a, c                                       ; $6aff: $79
    cp $01                                        ; $6b00: $fe $01
    jr z, .AdvanceHintCursorRowUntilClueFound     ; $6b02: $28 $06

    scf                                           ; $6b04: $37
    ld hl, rHintCursorAnimationRowThreshold       ; $6b05: $21 $13 $d8
    rl [hl]                                       ; $6b08: $cb $16

.AdvanceHintCursorRowUntilClueFound:
    ld a, [rPuzzleAndMenuCursorRow]               ; $6b0a: $fa $37 $d6
    inc a                                         ; $6b0d: $3c
    ld hl, rPuzzleGridHeight                      ; $6b0e: $21 $01 $d8
    cp [hl]                                       ; $6b11: $be
    jr nz, .StoreHintCursorRowAndCheckClue        ; $6b12: $20 $01

    xor a                                         ; $6b14: $af

.StoreHintCursorRowAndCheckClue:
    ld [rPuzzleAndMenuCursorRow], a               ; $6b15: $ea $37 $d6
    ld c, a                                       ; $6b18: $4f
    sla a                                         ; $6b19: $cb $27
    add c                                         ; $6b1b: $81
    sla a                                         ; $6b1c: $cb $27
    ld c, a                                       ; $6b1e: $4f
    ld b, $00                                     ; $6b1f: $06 $00
    ld hl, rClueRunLengthHorizontalBufferField5Base; $6b21: $21 $45 $d7
    add hl, bc                                    ; $6b24: $09
    ld a, [hl]                                    ; $6b25: $7e
    and a                                         ; $6b26: $a7
    jr z, .AdvanceHintCursorRowUntilClueFound     ; $6b27: $28 $e1

    call TickCountdownAndEmitSfx                  ; $6b29: $cd $9e $6b

.DrawHintCursorAndCheckSweepCompletion:
    call DrawPuzzleCursorSprites                  ; $6b2c: $cd $f7 $70
    call TickMarioBlinkAnimation                  ; $6b2f: $cd $8a $78
    ld a, [rHintCursorAnimationColumnThreshold]   ; $6b32: $fa $12 $d8
    ld c, a                                       ; $6b35: $4f
    ld a, [rHintCursorAnimationRowThreshold]      ; $6b36: $fa $13 $d8
    and c                                         ; $6b39: $a1
    cp $3f                                        ; $6b3a: $fe $3f
    jr nz, .HandleHintSweepAdvanceGate            ; $6b3c: $20 $0b

    call ApplyHintSelectionToRowAndColumn         ; $6b3e: $cd $14 $78
    call RecomputePuzzleCellBitSetCounters        ; $6b41: $cd $3d $7d
    ld hl, rStatePhase_Current                    ; $6b44: $21 $35 $d6
    inc [hl]                                      ; $6b47: $34
    ret                                           ; $6b48: $c9


.HandleHintSweepAdvanceGate:
    ld a, [rHintCursorAnimationRowThreshold]      ; $6b49: $fa $13 $d8
    cp $01                                        ; $6b4c: $fe $01
    ret nz                                        ; $6b4e: $c0

    ld hl, rHintCursorSweepAdvanceDelayHigh       ; $6b4f: $21 $15 $d8
    ld a, [hl-]                                   ; $6b52: $3a
    or [hl]                                       ; $6b53: $b6
    jr z, .AdvanceHintCursorColumnThresholdFromInitial; $6b54: $28 $0f

    ld a, [hl]                                    ; $6b56: $7e
    sub $01                                       ; $6b57: $d6 $01
    ld [hl], a                                    ; $6b59: $77
    inc hl                                        ; $6b5a: $23
    ld a, [hl]                                    ; $6b5b: $7e
    sbc $00                                       ; $6b5c: $de $00
    ld [hl], a                                    ; $6b5e: $77
    ld a, [rInputButtonsPressed]                  ; $6b5f: $fa $1e $c3
    and $09                                       ; $6b62: $e6 $09
    ret z                                         ; $6b64: $c8

.AdvanceHintCursorColumnThresholdFromInitial:
    ld a, [rHintCursorAnimationColumnThreshold]   ; $6b65: $fa $12 $d8
    cp $01                                        ; $6b68: $fe $01
    jr nz, .AdvanceHintCursorRowThresholdFromInitial; $6b6a: $20 $1e

    scf                                           ; $6b6c: $37
    rl a                                          ; $6b6d: $cb $17
    ld [rHintCursorAnimationColumnThreshold], a   ; $6b6f: $ea $12 $d8
    ld hl, rHintCursorSweepAdvanceDelayLow        ; $6b72: $21 $14 $d8
    call GetSubtractiveRNGStateByte               ; $6b75: $cd $11 $06
    sla a                                         ; $6b78: $cb $27
    add $78                                       ; $6b7a: $c6 $78
    ld [hl+], a                                   ; $6b7c: $22
    ld a, $00                                     ; $6b7d: $3e $00
    adc $00                                       ; $6b7f: $ce $00
    ld [hl], a                                    ; $6b81: $77
    ld c, $03                                     ; $6b82: $0e $03
    ld a, $02                                     ; $6b84: $3e $02
    call CallSoundCommandDispatcher               ; $6b86: $cd $b3 $03
    ret                                           ; $6b89: $c9


.AdvanceHintCursorRowThresholdFromInitial:
    ld a, [rHintCursorAnimationRowThreshold]      ; $6b8a: $fa $13 $d8
    cp $01                                        ; $6b8d: $fe $01
    ret nz                                        ; $6b8f: $c0

    scf                                           ; $6b90: $37
    rl a                                          ; $6b91: $cb $17
    ld [rHintCursorAnimationRowThreshold], a      ; $6b93: $ea $13 $d8
    ld c, $03                                     ; $6b96: $0e $03
    ld a, $02                                     ; $6b98: $3e $02
    call CallSoundCommandDispatcher               ; $6b9a: $cd $b3 $03
    ret                                           ; $6b9d: $c9


TickCountdownAndEmitSfx::
    ld a, [rCountdownSfxTimer]                    ; $6b9e: $fa $2a $d8
    dec a                                         ; $6ba1: $3d
    ld [rCountdownSfxTimer], a                    ; $6ba2: $ea $2a $d8
    ret nz                                        ; $6ba5: $c0

    ld a, $05                                     ; $6ba6: $3e $05
    ld [rCountdownSfxTimer], a                    ; $6ba8: $ea $2a $d8
    ld c, $02                                     ; $6bab: $0e $02
    ld a, $02                                     ; $6bad: $3e $02
    call CallSoundCommandDispatcher               ; $6baf: $cd $b3 $03
    ret                                           ; $6bb2: $c9


GS0A_StatePhase_03_PuzzleGameplayLoop::
    call UpdatePuzzleCursorFromDirectionalInput   ; $6bb3: $cd $3c $71
    call DrawPuzzleCursorSpritesAndTickStepSequence; $6bb6: $cd $b0 $70
    call TickMarioBlinkAnimation                  ; $6bb9: $cd $8a $78
    call TickLowTimerMarioSweatIndicator          ; $6bbc: $cd $a5 $7d
    call ApplyLowTimerMarioFaceTilesOnce          ; $6bbf: $cd $e9 $7d
    call UpdatePuzzleTimerCountdown               ; $6bc2: $cd $5c $7a
    call UpdatePuzzleTimerDisplayState            ; $6bc5: $cd $0a $7a
    call ProcessPuzzleCellActionInput             ; $6bc8: $cd $94 $71
    call TickPendingCellActionEffect              ; $6bcb: $cd $88 $74
    call FinalizePuzzleClearAndSetPostClearFlowFlag; $6bce: $cd $68 $75
    call TickPuzzleTimerCompletionState           ; $6bd1: $cd $3a $7c
    ld a, [rInputButtonsPressed]                  ; $6bd4: $fa $1e $c3
    and $08                                       ; $6bd7: $e6 $08
    jr z, .HandlePostClearFlowOrCheckTimeout      ; $6bd9: $28 $0d

    ld c, $10                                     ; $6bdb: $0e $10
    ld a, $02                                     ; $6bdd: $3e $02
    call CallSoundCommandDispatcher               ; $6bdf: $cd $b3 $03
    ld a, $05                                     ; $6be2: $3e $05
    ld [rStatePhase_Current], a                   ; $6be4: $ea $35 $d6
    ret                                           ; $6be7: $c9


.HandlePostClearFlowOrCheckTimeout:
    ld a, [rPuzzlePostClearFlowFlag]              ; $6be8: $fa $05 $d8
    and a                                         ; $6beb: $a7
    jr z, .HandleTimerCompletionGameOverFlow      ; $6bec: $28 $62

    call LoadPicrossCoursePuzzleSelectCursorForSelectedSaveSlotAndCourse; $6bee: $cd $5c $48
    call UpdateSelectedPicrossCoursePuzzleClearStatusAndTimes; $6bf1: $cd $a9 $4b
    call RefreshSaveValidationChecksumsAndMirrors ; $6bf4: $cd $1c $1b
    ld c, $00                                     ; $6bf7: $0e $00
    ld a, $01                                     ; $6bf9: $3e $01
    call CallSoundCommandDispatcher               ; $6bfb: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $6bfe: $cd $96 $03
    ld c, $09                                     ; $6c01: $0e $09
    ld a, $01                                     ; $6c03: $3e $01
    call CallSoundCommandDispatcher               ; $6c05: $cd $b3 $03
    call ClearShadowOAMBuffer                     ; $6c08: $cd $b3 $05
    call RedrawPuzzleBoard                        ; $6c0b: $cd $a7 $75

.WaitForPostClearInputAndAdvance:
    rst RST_08                                    ; $6c0e: $cf
    ld a, [rInputButtonsPressed]                  ; $6c0f: $fa $1e $c3
    and $09                                       ; $6c12: $e6 $09
    jr z, .WaitForPostClearInputAndAdvance        ; $6c14: $28 $f8

    ld c, $03                                     ; $6c16: $0e $03
    ld a, $02                                     ; $6c18: $3e $02
    call CallSoundCommandDispatcher               ; $6c1a: $cd $b3 $03
    call RedrawPostClearSolvedCellsByGridSize     ; $6c1d: $cd $1b $76
    ld c, $00                                     ; $6c20: $0e $00
    ld a, $01                                     ; $6c22: $3e $01
    call CallSoundCommandDispatcher               ; $6c24: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $6c27: $cd $96 $03
    ld c, $00                                     ; $6c2a: $0e $00
    ld a, $01                                     ; $6c2c: $3e $01
    call CallSoundCommandDispatcher               ; $6c2e: $cd $b3 $03
    call DrawPuzzleNameFromPointerTable           ; $6c31: $cd $42 $1a
    ld bc, $0004                                  ; $6c34: $01 $04 $00
    call DelayFramesByBC                          ; $6c37: $cd $f7 $05
    ld c, $00                                     ; $6c3a: $0e $00
    ld a, $01                                     ; $6c3c: $3e $01
    call CallSoundCommandDispatcher               ; $6c3e: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $6c41: $cd $96 $03
    ld c, $12                                     ; $6c44: $0e $12
    ld a, $01                                     ; $6c46: $3e $01
    call CallSoundCommandDispatcher               ; $6c48: $cd $b3 $03
    ld hl, rStatePhase_Current                    ; $6c4b: $21 $35 $d6
    inc [hl]                                      ; $6c4e: $34
    ret                                           ; $6c4f: $c9


.HandleTimerCompletionGameOverFlow:
    ld a, [rPuzzleTimerCompletionState]           ; $6c50: $fa $06 $d8
    and a                                         ; $6c53: $a7
    ret z                                         ; $6c54: $c8

    ld c, $00                                     ; $6c55: $0e $00
    ld a, $01                                     ; $6c57: $3e $01
    call CallSoundCommandDispatcher               ; $6c59: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $6c5c: $cd $96 $03
    ld c, $08                                     ; $6c5f: $0e $08
    ld a, $01                                     ; $6c61: $3e $01
    call CallSoundCommandDispatcher               ; $6c63: $cd $b3 $03
    call ClearShadowOAMBuffer                     ; $6c66: $cd $b3 $05
    call LoadGameOverMessageTileData              ; $6c69: $cd $55 $7c
    ld hl, rStatePhase_Current                    ; $6c6c: $21 $35 $d6
    inc [hl]                                      ; $6c6f: $34
    ret                                           ; $6c70: $c9


GS0A_StatePhase_04_ConfirmExitAndReturnToPicrossCoursePuzzleSelect::
    ld a, [rInputButtonsPressed]                  ; $6c71: $fa $1e $c3
    and $09                                       ; $6c74: $e6 $09
    ret z                                         ; $6c76: $c8

    ld c, $03                                     ; $6c77: $0e $03
    ld a, $02                                     ; $6c79: $3e $02
    call CallSoundCommandDispatcher               ; $6c7b: $cd $b3 $03
    ld bc, $003c                                  ; $6c7e: $01 $3c $00
    call DelayFramesByBC                          ; $6c81: $cd $f7 $05
    ld a, $05                                     ; $6c84: $3e $05
    call CallSoundCommandDispatcher               ; $6c86: $cd $b3 $03
    ld c, $00                                     ; $6c89: $0e $00
    ld a, $01                                     ; $6c8b: $3e $01
    call CallSoundCommandDispatcher               ; $6c8d: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $6c90: $cd $96 $03
    ld c, $00                                     ; $6c93: $0e $00
    ld a, $01                                     ; $6c95: $3e $01
    call CallSoundCommandDispatcher               ; $6c97: $cd $b3 $03
    ld b, $03                                     ; $6c9a: $06 $03
    ld hl, $469f                                  ; $6c9c: $21 $9f $46
    ld c, $00                                     ; $6c9f: $0e $00
    ld de, $0013                                  ; $6ca1: $11 $13 $00
    call PlayScreenTransitionFadeOut              ; $6ca4: $cd $4b $04
    call DisableLCDAtVBlank                       ; $6ca7: $cd $80 $04
    ld hl, rLCDCInterruptControlFlags             ; $6caa: $21 $37 $c3
    res 6, [hl]                                   ; $6cad: $cb $b6
    ld hl, rIE                                    ; $6caf: $21 $ff $ff
    res 1, [hl]                                   ; $6cb2: $cb $8e
    xor a                                         ; $6cb4: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $6cb5: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $6cb8: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $6cbb: $ea $50 $c3
    ld a, $04                                     ; $6cbe: $3e $04
    ld [rStatePhase_Current], a                   ; $6cc0: $ea $35 $d6
    ld a, $04                                     ; $6cc3: $3e $04
    ld [rGameState_Current], a                    ; $6cc5: $ea $34 $d6
    ret                                           ; $6cc8: $c9


GS0A_StatePhase_05_PauseMenuInitAndMaskClues::
    call ClearShadowOAMBuffer                     ; $6cc9: $cd $b3 $05
    rst RST_08                                    ; $6ccc: $cf
    xor a                                         ; $6ccd: $af
    ld [rGS08_PauseMenuMainSelection], a          ; $6cce: $ea $3a $d8
    ld a, $01                                     ; $6cd1: $3e $01
    ld [rGS08_PauseMenuSavePromptSelection], a    ; $6cd3: $ea $3b $d8
    ld a, [rSelectedSaveSlotIndex]                ; $6cd6: $fa $65 $a0
    ld c, a                                       ; $6cd9: $4f
    ld b, $00                                     ; $6cda: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $6cdc: $21 $8d $a3
    add hl, bc                                    ; $6cdf: $09
    ld a, [rSelectedSaveSlotIndex]                ; $6ce0: $fa $65 $a0
    ld c, a                                       ; $6ce3: $4f
    sla a                                         ; $6ce4: $cb $27
    sla a                                         ; $6ce6: $cb $27
    add c                                         ; $6ce8: $81
    add [hl]                                      ; $6ce9: $86
    ld c, a                                       ; $6cea: $4f
    ld hl, rSaveSlot1PicrossKinokoBGMSelectionIndex; $6ceb: $21 $6a $a0
    add hl, bc                                    ; $6cee: $09
    ld a, [hl]                                    ; $6cef: $7e
    ld [rGS08_PauseMenuBGMSubmenuSelection], a    ; $6cf0: $ea $3c $d8
    ld a, $01                                     ; $6cf3: $3e $01
    ld [rGS08_PauseMenuGiveUpPromptSelection], a  ; $6cf5: $ea $3d $d8
    ld a, $06                                     ; $6cf8: $3e $06
    ld hl, $7a00                                  ; $6cfa: $21 $00 $7a
    ld de, $8500                                  ; $6cfd: $11 $00 $85
    ld bc, $0300                                  ; $6d00: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $6d03: $cd $35 $05
    call MaskClueDigitSlotsFromRunLengthBuffers   ; $6d06: $cd $13 $70
    ld hl, rStatePhase_Current                    ; $6d09: $21 $35 $d6
    inc [hl]                                      ; $6d0c: $34
    ret                                           ; $6d0d: $c9


GS0A_StatePhase_06_PauseMenuIdle::
    ld b, $02                                     ; $6d0e: $06 $02
    ld hl, $4632                                  ; $6d10: $21 $32 $46
    call SwitchBankToBAndJumpToHL                 ; $6d13: $cd $db $05
    ld a, [rInputButtonsPressed]                  ; $6d16: $fa $1e $c3
    bit 0, a                                      ; $6d19: $cb $47
    jr z, .HandlePauseMenuCloseInput              ; $6d1b: $28 $16

    ld c, $03                                     ; $6d1d: $0e $03
    ld a, $02                                     ; $6d1f: $3e $02
    call CallSoundCommandDispatcher               ; $6d21: $cd $b3 $03
    ld a, [rGS08_PauseMenuMainSelection]          ; $6d24: $fa $3a $d8
    ld c, a                                       ; $6d27: $4f
    ld b, $00                                     ; $6d28: $06 $00
    ld hl, GS0A_PauseMenuSelectionNextPhaseTable  ; $6d2a: $21 $43 $6d
    add hl, bc                                    ; $6d2d: $09
    ld a, [hl]                                    ; $6d2e: $7e
    ld [rStatePhase_Current], a                   ; $6d2f: $ea $35 $d6
    ret                                           ; $6d32: $c9


.HandlePauseMenuCloseInput:
    bit 3, a                                      ; $6d33: $cb $5f
    ret z                                         ; $6d35: $c8

    ld c, $04                                     ; $6d36: $0e $04
    ld a, $02                                     ; $6d38: $3e $02
    call CallSoundCommandDispatcher               ; $6d3a: $cd $b3 $03
    ld a, $0a                                     ; $6d3d: $3e $0a
    ld [rStatePhase_Current], a                   ; $6d3f: $ea $35 $d6
    ret                                           ; $6d42: $c9


GS0A_PauseMenuSelectionNextPhaseTable::
    db $07, $09, $08

GS0A_StatePhase_07_PauseMenuSavePrompt::
    ld b, $02                                     ; $6d46: $06 $02
    ld hl, $4672                                  ; $6d48: $21 $72 $46
    call SwitchBankToBAndJumpToHL                 ; $6d4b: $cd $db $05
    ld a, [rInputButtonsPressed]                  ; $6d4e: $fa $1e $c3
    and $01                                       ; $6d51: $e6 $01
    ret z                                         ; $6d53: $c8

    ld c, $04                                     ; $6d54: $0e $04
    ld a, $02                                     ; $6d56: $3e $02
    call CallSoundCommandDispatcher               ; $6d58: $cd $b3 $03
    ld a, [rGS08_PauseMenuSavePromptSelection]    ; $6d5b: $fa $3b $d8
    and a                                         ; $6d5e: $a7
    jr z, .HandlePauseMenuSavePromptConfirmAndBeginExitFlow; $6d5f: $28 $06

    ld a, $06                                     ; $6d61: $3e $06
    ld [rStatePhase_Current], a                   ; $6d63: $ea $35 $d6
    ret                                           ; $6d66: $c9


.HandlePauseMenuSavePromptConfirmAndBeginExitFlow:
    call SaveCurrentPuzzleProgressToSaveData      ; $6d67: $cd $11 $1c
    ld a, $02                                     ; $6d6a: $3e $02
    ld [rContinueSavedPuzzlePromptRouteMode], a   ; $6d6c: $ea $a2 $ac
    ld c, $03                                     ; $6d6f: $0e $03
    ld a, $02                                     ; $6d71: $3e $02
    call CallSoundCommandDispatcher               ; $6d73: $cd $b3 $03
    ld bc, $003c                                  ; $6d76: $01 $3c $00
    call DelayFramesByBC                          ; $6d79: $cd $f7 $05
    ld a, $05                                     ; $6d7c: $3e $05
    call CallSoundCommandDispatcher               ; $6d7e: $cd $b3 $03
    ld c, $00                                     ; $6d81: $0e $00
    ld a, $01                                     ; $6d83: $3e $01
    call CallSoundCommandDispatcher               ; $6d85: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $6d88: $cd $96 $03
    ld c, $00                                     ; $6d8b: $0e $00
    ld a, $01                                     ; $6d8d: $3e $01
    call CallSoundCommandDispatcher               ; $6d8f: $cd $b3 $03
    ld b, $03                                     ; $6d92: $06 $03
    ld hl, $469f                                  ; $6d94: $21 $9f $46
    ld c, $00                                     ; $6d97: $0e $00
    ld de, $0013                                  ; $6d99: $11 $13 $00
    call PlayScreenTransitionFadeOut              ; $6d9c: $cd $4b $04
    call DisableLCDAtVBlank                       ; $6d9f: $cd $80 $04
    ld hl, rLCDCInterruptControlFlags             ; $6da2: $21 $37 $c3
    res 6, [hl]                                   ; $6da5: $cb $b6
    ld hl, rIE                                    ; $6da7: $21 $ff $ff
    res 1, [hl]                                   ; $6daa: $cb $8e
    xor a                                         ; $6dac: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $6dad: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $6db0: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $6db3: $ea $50 $c3
    ld a, [rSelectedSaveSlotIndex]                ; $6db6: $fa $65 $a0
    ld c, a                                       ; $6db9: $4f
    ld b, $00                                     ; $6dba: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $6dbc: $21 $8d $a3
    add hl, bc                                    ; $6dbf: $09
    ld a, [rSelectedSaveSlotIndex]                ; $6dc0: $fa $65 $a0
    ld c, a                                       ; $6dc3: $4f
    sla a                                         ; $6dc4: $cb $27
    sla a                                         ; $6dc6: $cb $27
    add c                                         ; $6dc8: $81
    add [hl]                                      ; $6dc9: $86
    ld c, a                                       ; $6dca: $4f
    ld hl, rSaveSlot1PicrossKinokoBGMSelectionIndex; $6dcb: $21 $6a $a0
    add hl, bc                                    ; $6dce: $09
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]    ; $6dcf: $fa $3c $d8
    ld [hl], a                                    ; $6dd2: $77
    ld a, $04                                     ; $6dd3: $3e $04
    ld [rStatePhase_Current], a                   ; $6dd5: $ea $35 $d6
    ld a, $00                                     ; $6dd8: $3e $00
    ld [rGameState_Current], a                    ; $6dda: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $6ddd: $c3 $1c $1b


GS0A_StatePhase_08_PauseMenuBGMSubmenu::
    ld b, $02                                     ; $6de0: $06 $02
    ld hl, $46b2                                  ; $6de2: $21 $b2 $46
    call SwitchBankToBAndJumpToHL                 ; $6de5: $cd $db $05
    ld a, [rInputButtonsPressed]                  ; $6de8: $fa $1e $c3
    and $01                                       ; $6deb: $e6 $01
    ret z                                         ; $6ded: $c8

    ld c, $04                                     ; $6dee: $0e $04
    ld a, $02                                     ; $6df0: $3e $02
    call CallSoundCommandDispatcher               ; $6df2: $cd $b3 $03
    ld a, $06                                     ; $6df5: $3e $06
    ld [rStatePhase_Current], a                   ; $6df7: $ea $35 $d6
    ret                                           ; $6dfa: $c9


GS0A_StatePhase_09_PauseMenuGiveUpPrompt::
    ld b, $02                                     ; $6dfb: $06 $02
    ld hl, $470f                                  ; $6dfd: $21 $0f $47
    call SwitchBankToBAndJumpToHL                 ; $6e00: $cd $db $05
    ld a, [rInputButtonsPressed]                  ; $6e03: $fa $1e $c3
    and $01                                       ; $6e06: $e6 $01
    ret z                                         ; $6e08: $c8

    ld c, $04                                     ; $6e09: $0e $04
    ld a, $02                                     ; $6e0b: $3e $02
    call CallSoundCommandDispatcher               ; $6e0d: $cd $b3 $03
    ld a, [rGS08_PauseMenuGiveUpPromptSelection]  ; $6e10: $fa $3d $d8
    and a                                         ; $6e13: $a7
    jr z, .HandlePauseMenuGiveUpConfirmAndStartGameOverFlow; $6e14: $28 $06

    ld a, $06                                     ; $6e16: $3e $06
    ld [rStatePhase_Current], a                   ; $6e18: $ea $35 $d6
    ret                                           ; $6e1b: $c9


.HandlePauseMenuGiveUpConfirmAndStartGameOverFlow:
    ld a, $01                                     ; $6e1c: $3e $01
    ld [rPuzzleTimerCompletionState], a           ; $6e1e: $ea $06 $d8
    ld c, $00                                     ; $6e21: $0e $00
    ld a, $01                                     ; $6e23: $3e $01
    call CallSoundCommandDispatcher               ; $6e25: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $6e28: $cd $96 $03
    ld c, $08                                     ; $6e2b: $0e $08
    ld a, $01                                     ; $6e2d: $3e $01
    call CallSoundCommandDispatcher               ; $6e2f: $cd $b3 $03
    call ClearShadowOAMBuffer                     ; $6e32: $cd $b3 $05
    call LoadGameOverMessageTileData              ; $6e35: $cd $55 $7c
    ld a, [rSelectedSaveSlotIndex]                ; $6e38: $fa $65 $a0
    ld c, a                                       ; $6e3b: $4f
    ld b, $00                                     ; $6e3c: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $6e3e: $21 $8d $a3
    add hl, bc                                    ; $6e41: $09
    ld a, [rSelectedSaveSlotIndex]                ; $6e42: $fa $65 $a0
    ld c, a                                       ; $6e45: $4f
    sla a                                         ; $6e46: $cb $27
    sla a                                         ; $6e48: $cb $27
    add c                                         ; $6e4a: $81
    add [hl]                                      ; $6e4b: $86
    ld c, a                                       ; $6e4c: $4f
    ld hl, rSaveSlot1PicrossKinokoBGMSelectionIndex; $6e4d: $21 $6a $a0
    add hl, bc                                    ; $6e50: $09
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]    ; $6e51: $fa $3c $d8
    ld [hl], a                                    ; $6e54: $77
    ld a, $04                                     ; $6e55: $3e $04
    ld [rStatePhase_Current], a                   ; $6e57: $ea $35 $d6
    xor a                                         ; $6e5a: $af
    ld [rContinueSavedPuzzlePromptRouteMode], a   ; $6e5b: $ea $a2 $ac
    jp RefreshSaveValidationChecksumsAndMirrors   ; $6e5e: $c3 $1c $1b


GS0A_StatePhase_0a_ClosePauseMenuAndResumeGameplay::
    call ClearShadowOAMBuffer                     ; $6e61: $cd $b3 $05
    rst RST_08                                    ; $6e64: $cf
    ld a, [rSelectedSaveSlotIndex]                ; $6e65: $fa $65 $a0
    ld c, a                                       ; $6e68: $4f
    ld b, $00                                     ; $6e69: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $6e6b: $21 $8d $a3
    add hl, bc                                    ; $6e6e: $09
    ld a, [rSelectedSaveSlotIndex]                ; $6e6f: $fa $65 $a0
    ld c, a                                       ; $6e72: $4f
    sla a                                         ; $6e73: $cb $27
    sla a                                         ; $6e75: $cb $27
    add c                                         ; $6e77: $81
    add [hl]                                      ; $6e78: $86
    ld c, a                                       ; $6e79: $4f
    ld hl, rSaveSlot1PicrossKinokoBGMSelectionIndex; $6e7a: $21 $6a $a0
    add hl, bc                                    ; $6e7d: $09
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]    ; $6e7e: $fa $3c $d8
    ld [hl], a                                    ; $6e81: $77
    ld a, $06                                     ; $6e82: $3e $06
    ld hl, $4500                                  ; $6e84: $21 $00 $45
    ld de, $8500                                  ; $6e87: $11 $00 $85
    ld bc, $0300                                  ; $6e8a: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $6e8d: $cd $35 $05
    call DrawClueNumbersFromRunLengthBuffers      ; $6e90: $cd $2b $6f
    call RenderPuzzleTimerDigits                  ; $6e93: $cd $76 $7b
    ld a, $03                                     ; $6e96: $3e $03
    ld [rStatePhase_Current], a                   ; $6e98: $ea $35 $d6
    xor a                                         ; $6e9b: $af
    ld [rContinueSavedPuzzlePromptRouteMode], a   ; $6e9c: $ea $a2 $ac
    jp RefreshSaveValidationChecksumsAndMirrors   ; $6e9f: $c3 $1c $1b


BuildClueRunLengthBuffers::
    call BuildHorizontalClueRunLengthBuffer       ; $6ea2: $cd $a9 $6e
    call BuildVerticalClueRunLengthBuffer         ; $6ea5: $cd $de $6e
    ret                                           ; $6ea8: $c9


BuildHorizontalClueRunLengthBuffer::
    ld hl, rPuzzleCellStateBufferEnd              ; $6ea9: $21 $3f $d7
    ld de, rClueRunLengthHorizontalBufferBuildBase; $6eac: $11 $99 $d7
    ld c, $10                                     ; $6eaf: $0e $10

.HorizontalRunLength_InitLine:
    push de                                       ; $6eb1: $d5
    xor a                                         ; $6eb2: $af
    ld b, $06                                     ; $6eb3: $06 $06

.HorizontalRunLength_ClearSixSlotsLoop:
    inc de                                        ; $6eb5: $13
    ld [de], a                                    ; $6eb6: $12
    dec b                                         ; $6eb7: $05
    jr nz, .HorizontalRunLength_ClearSixSlotsLoop ; $6eb8: $20 $fb

    ld b, $10                                     ; $6eba: $06 $10

.HorizontalRunLength_ScanBitsLoop:
    bit 0, [hl]                                   ; $6ebc: $cb $46
    jr z, .HorizontalRunLength_AdvanceBitLoop     ; $6ebe: $28 $0c

    xor a                                         ; $6ec0: $af

.HorizontalRunLength_CountFilledRunLoop:
    inc a                                         ; $6ec1: $3c
    dec hl                                        ; $6ec2: $2b
    dec b                                         ; $6ec3: $05
    jr z, .HorizontalRunLength_StoreTerminalRun   ; $6ec4: $28 $0c

    bit 0, [hl]                                   ; $6ec6: $cb $46
    jr nz, .HorizontalRunLength_CountFilledRunLoop; $6ec8: $20 $f7

    ld [de], a                                    ; $6eca: $12
    dec de                                        ; $6ecb: $1b

.HorizontalRunLength_AdvanceBitLoop:
    dec hl                                        ; $6ecc: $2b
    dec b                                         ; $6ecd: $05
    jr nz, .HorizontalRunLength_ScanBitsLoop      ; $6ece: $20 $ec

    jr .HorizontalRunLength_NextLine              ; $6ed0: $18 $01

.HorizontalRunLength_StoreTerminalRun:
    ld [de], a                                    ; $6ed2: $12

.HorizontalRunLength_NextLine:
    pop de                                        ; $6ed3: $d1
    dec de                                        ; $6ed4: $1b
    dec de                                        ; $6ed5: $1b
    dec de                                        ; $6ed6: $1b
    dec de                                        ; $6ed7: $1b
    dec de                                        ; $6ed8: $1b
    dec de                                        ; $6ed9: $1b
    dec c                                         ; $6eda: $0d
    jr nz, .HorizontalRunLength_InitLine          ; $6edb: $20 $d4

    ret                                           ; $6edd: $c9


BuildVerticalClueRunLengthBuffer::
    ld hl, rPuzzleCellStateBufferEnd              ; $6ede: $21 $3f $d7
    ld de, rClueRunLengthVerticalBufferBuildBase  ; $6ee1: $11 $f9 $d7
    ld c, $10                                     ; $6ee4: $0e $10

.VerticalRunLength_InitLine:
    push de                                       ; $6ee6: $d5
    xor a                                         ; $6ee7: $af
    ld b, $06                                     ; $6ee8: $06 $06

.VerticalRunLength_ClearSixSlotsLoop:
    inc de                                        ; $6eea: $13
    ld [de], a                                    ; $6eeb: $12
    dec b                                         ; $6eec: $05
    jr nz, .VerticalRunLength_ClearSixSlotsLoop   ; $6eed: $20 $fb

    ld b, $10                                     ; $6eef: $06 $10

.VerticalRunLength_ScanBitsLoop:
    bit 0, [hl]                                   ; $6ef1: $cb $46
    jr z, .VerticalRunLength_AdvanceBitLoop       ; $6ef3: $28 $15

    xor a                                         ; $6ef5: $af

.VerticalRunLength_CountFilledRunLoop:
    inc a                                         ; $6ef6: $3c
    push af                                       ; $6ef7: $f5
    ld a, l                                       ; $6ef8: $7d
    sub $10                                       ; $6ef9: $d6 $10
    ld l, a                                       ; $6efb: $6f
    ld a, h                                       ; $6efc: $7c
    sbc $00                                       ; $6efd: $de $00
    ld h, a                                       ; $6eff: $67
    pop af                                        ; $6f00: $f1
    dec b                                         ; $6f01: $05
    jr z, .VerticalRunLength_StoreTerminalRun     ; $6f02: $28 $13

    bit 0, [hl]                                   ; $6f04: $cb $46
    jr nz, .VerticalRunLength_CountFilledRunLoop  ; $6f06: $20 $ee

    ld [de], a                                    ; $6f08: $12
    dec de                                        ; $6f09: $1b

.VerticalRunLength_AdvanceBitLoop:
    ld a, l                                       ; $6f0a: $7d
    sub $10                                       ; $6f0b: $d6 $10
    ld l, a                                       ; $6f0d: $6f
    ld a, h                                       ; $6f0e: $7c
    sbc $00                                       ; $6f0f: $de $00
    ld h, a                                       ; $6f11: $67
    dec b                                         ; $6f12: $05
    jr nz, .VerticalRunLength_ScanBitsLoop        ; $6f13: $20 $dc

    jr .VerticalRunLength_NextLine                ; $6f15: $18 $01

.VerticalRunLength_StoreTerminalRun:
    ld [de], a                                    ; $6f17: $12

.VerticalRunLength_NextLine:
    ld a, l                                       ; $6f18: $7d
    add $ff                                       ; $6f19: $c6 $ff
    ld l, a                                       ; $6f1b: $6f
    ld a, h                                       ; $6f1c: $7c
    adc $00                                       ; $6f1d: $ce $00
    ld h, a                                       ; $6f1f: $67
    pop de                                        ; $6f20: $d1
    dec de                                        ; $6f21: $1b
    dec de                                        ; $6f22: $1b
    dec de                                        ; $6f23: $1b
    dec de                                        ; $6f24: $1b
    dec de                                        ; $6f25: $1b
    dec de                                        ; $6f26: $1b
    dec c                                         ; $6f27: $0d
    jr nz, .VerticalRunLength_InitLine            ; $6f28: $20 $bc

    ret                                           ; $6f2a: $c9


DrawClueNumbersFromRunLengthBuffers::
    call DrawClueNumbersHorizontalPass            ; $6f2b: $cd $32 $6f
    call DrawClueNumbersVerticalPass              ; $6f2e: $cd $5f $6f
    ret                                           ; $6f31: $c9


DrawClueNumbersHorizontalPass::
    ld hl, rClueRunLengthHorizontalBufferStart    ; $6f32: $21 $40 $d7
    ld e, $00                                     ; $6f35: $1e $00
    ld b, $32                                     ; $6f37: $06 $32
    ld a, [rPuzzleGridHeight]                     ; $6f39: $fa $01 $d8

.HorizontalPass_RowLoop:
    push af                                       ; $6f3c: $f5
    ld c, $09                                     ; $6f3d: $0e $09

.HorizontalPass_ColumnLoop:
    ld a, [hl+]                                   ; $6f3f: $2a
    and a                                         ; $6f40: $a7
    jr z, .HorizontalPass_NextColumn              ; $6f41: $28 $03

    call PrepareBGTileCopyForClueDigit            ; $6f43: $cd $8d $6f

.HorizontalPass_NextColumn:
    ld a, c                                       ; $6f46: $79
    add $07                                       ; $6f47: $c6 $07
    ld c, a                                       ; $6f49: $4f
    cp $2c                                        ; $6f4a: $fe $2c
    jr nz, .HorizontalPass_ColumnLoop             ; $6f4c: $20 $f1

    ld a, [hl+]                                   ; $6f4e: $2a
    call PrepareBGTileCopyForClueDigit            ; $6f4f: $cd $8d $6f
    ld a, e                                       ; $6f52: $7b
    xor $ff                                       ; $6f53: $ee $ff
    ld e, a                                       ; $6f55: $5f
    ld a, b                                       ; $6f56: $78
    add $06                                       ; $6f57: $c6 $06
    ld b, a                                       ; $6f59: $47
    pop af                                        ; $6f5a: $f1
    dec a                                         ; $6f5b: $3d
    jr nz, .HorizontalPass_RowLoop                ; $6f5c: $20 $de

    ret                                           ; $6f5e: $c9


DrawClueNumbersVerticalPass::
    ld hl, rClueRunLengthVerticalBufferStart      ; $6f5f: $21 $a0 $d7
    ld e, $00                                     ; $6f62: $1e $00
    ld c, $3a                                     ; $6f64: $0e $3a
    ld a, [rPuzzleGridWidth]                      ; $6f66: $fa $00 $d8

.VerticalPass_ColumnLoop:
    push af                                       ; $6f69: $f5
    ld b, $08                                     ; $6f6a: $06 $08
    ld a, [hl+]                                   ; $6f6c: $2a

.VerticalPass_RowLoop:
    ld a, [hl+]                                   ; $6f6d: $2a
    and a                                         ; $6f6e: $a7
    jr z, .VerticalPass_NextRow                   ; $6f6f: $28 $03

    call PrepareBGTileCopyForClueDigit            ; $6f71: $cd $8d $6f

.VerticalPass_NextRow:
    ld a, b                                       ; $6f74: $78
    add $07                                       ; $6f75: $c6 $07
    ld b, a                                       ; $6f77: $47
    cp $24                                        ; $6f78: $fe $24
    jr nz, .VerticalPass_RowLoop                  ; $6f7a: $20 $f1

    ld a, [hl+]                                   ; $6f7c: $2a
    call PrepareBGTileCopyForClueDigit            ; $6f7d: $cd $8d $6f
    ld a, e                                       ; $6f80: $7b
    xor $ff                                       ; $6f81: $ee $ff
    ld e, a                                       ; $6f83: $5f
    ld a, c                                       ; $6f84: $79
    add $06                                       ; $6f85: $c6 $06
    ld c, a                                       ; $6f87: $4f
    pop af                                        ; $6f88: $f1
    dec a                                         ; $6f89: $3d
    jr nz, .VerticalPass_ColumnLoop               ; $6f8a: $20 $dd

    ret                                           ; $6f8c: $c9


PrepareBGTileCopyForClueDigit::
    push bc                                       ; $6f8d: $c5
    push de                                       ; $6f8e: $d5
    push hl                                       ; $6f8f: $e5
    push af                                       ; $6f90: $f5
    ld a, c                                       ; $6f91: $79
    ld [rBGTileCopySourceX], a                    ; $6f92: $ea $51 $c3
    add $05                                       ; $6f95: $c6 $05
    ld [rBGTileCopyDestX], a                      ; $6f97: $ea $53 $c3
    ld a, b                                       ; $6f9a: $78
    ld [rBGTileCopySourceY], a                    ; $6f9b: $ea $52 $c3
    add $05                                       ; $6f9e: $c6 $05
    ld [rBGTileCopyDestY], a                      ; $6fa0: $ea $54 $c3
    pop af                                        ; $6fa3: $f1
    sla a                                         ; $6fa4: $cb $27
    ld c, a                                       ; $6fa6: $4f
    ld b, $00                                     ; $6fa7: $06 $00
    ld a, e                                       ; $6fa9: $7b
    and a                                         ; $6faa: $a7
    jr nz, .UseGrayBGClueDigitSourceTable         ; $6fab: $20 $0e

    ld hl, ClueDigitTileSourceTableWhiteBG        ; $6fad: $21 $d3 $6f
    add hl, bc                                    ; $6fb0: $09
    ld a, [hl+]                                   ; $6fb1: $2a
    ld [rBGTileCopyBankAddressLow], a             ; $6fb2: $ea $55 $c3
    ld a, [hl+]                                   ; $6fb5: $2a
    ld [rBGTileCopyBankAddressHigh], a            ; $6fb6: $ea $56 $c3
    jr .ApplyClueDigitTileCopy                    ; $6fb9: $18 $0c

.UseGrayBGClueDigitSourceTable:
    ld hl, ClueDigitTileSourceTableGrayBG         ; $6fbb: $21 $f3 $6f
    add hl, bc                                    ; $6fbe: $09
    ld a, [hl+]                                   ; $6fbf: $2a
    ld [rBGTileCopyBankAddressLow], a             ; $6fc0: $ea $55 $c3
    ld a, [hl+]                                   ; $6fc3: $2a
    ld [rBGTileCopyBankAddressHigh], a            ; $6fc4: $ea $56 $c3

.ApplyClueDigitTileCopy:
    ld a, $06                                     ; $6fc7: $3e $06
    ld [rBGTileCopyBank], a                       ; $6fc9: $ea $57 $c3
    call PrepareBGTileCopy                        ; $6fcc: $cd $b0 $08
    pop hl                                        ; $6fcf: $e1
    pop de                                        ; $6fd0: $d1
    pop bc                                        ; $6fd1: $c1
    ret                                           ; $6fd2: $c9


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
    call MaskHorizontalClueDigitSlotsFromRunLengthBuffer; $7013: $cd $1a $70
    call MaskVerticalClueDigitSlotsFromRunLengthBuffer; $7016: $cd $47 $70
    ret                                           ; $7019: $c9


MaskHorizontalClueDigitSlotsFromRunLengthBuffer::
    ld hl, rClueRunLengthHorizontalBufferStart    ; $701a: $21 $40 $d7
    ld e, $00                                     ; $701d: $1e $00
    ld b, $32                                     ; $701f: $06 $32
    ld a, [rPuzzleGridHeight]                     ; $7021: $fa $01 $d8

.HorizontalMask_RowLoop:
    push af                                       ; $7024: $f5
    ld c, $09                                     ; $7025: $0e $09

.HorizontalMask_ColumnLoop:
    ld a, [hl+]                                   ; $7027: $2a
    and a                                         ; $7028: $a7
    jr z, .HorizontalMask_NextColumn              ; $7029: $28 $03

    call PrepareBGTileCopyForMaskedClueSlot       ; $702b: $cd $75 $70

.HorizontalMask_NextColumn:
    ld a, c                                       ; $702e: $79
    add $07                                       ; $702f: $c6 $07
    ld c, a                                       ; $7031: $4f
    cp $2c                                        ; $7032: $fe $2c
    jr nz, .HorizontalMask_ColumnLoop             ; $7034: $20 $f1

    ld a, [hl+]                                   ; $7036: $2a
    call PrepareBGTileCopyForMaskedClueSlot       ; $7037: $cd $75 $70
    ld a, e                                       ; $703a: $7b
    xor $ff                                       ; $703b: $ee $ff
    ld e, a                                       ; $703d: $5f
    ld a, b                                       ; $703e: $78
    add $06                                       ; $703f: $c6 $06
    ld b, a                                       ; $7041: $47
    pop af                                        ; $7042: $f1
    dec a                                         ; $7043: $3d
    jr nz, .HorizontalMask_RowLoop                ; $7044: $20 $de

    ret                                           ; $7046: $c9


MaskVerticalClueDigitSlotsFromRunLengthBuffer::
    ld hl, rClueRunLengthVerticalBufferStart      ; $7047: $21 $a0 $d7
    ld e, $00                                     ; $704a: $1e $00
    ld c, $3a                                     ; $704c: $0e $3a
    ld a, [rPuzzleGridWidth]                      ; $704e: $fa $00 $d8

.VerticalMask_ColumnLoop:
    push af                                       ; $7051: $f5
    ld b, $08                                     ; $7052: $06 $08
    ld a, [hl+]                                   ; $7054: $2a

.VerticalMask_RowLoop:
    ld a, [hl+]                                   ; $7055: $2a
    and a                                         ; $7056: $a7
    jr z, .VerticalMask_NextRow                   ; $7057: $28 $03

    call PrepareBGTileCopyForMaskedClueSlot       ; $7059: $cd $75 $70

.VerticalMask_NextRow:
    ld a, b                                       ; $705c: $78
    add $07                                       ; $705d: $c6 $07
    ld b, a                                       ; $705f: $47
    cp $24                                        ; $7060: $fe $24
    jr nz, .VerticalMask_RowLoop                  ; $7062: $20 $f1

    ld a, [hl+]                                   ; $7064: $2a
    call PrepareBGTileCopyForMaskedClueSlot       ; $7065: $cd $75 $70
    ld a, e                                       ; $7068: $7b
    xor $ff                                       ; $7069: $ee $ff
    ld e, a                                       ; $706b: $5f
    ld a, c                                       ; $706c: $79
    add $06                                       ; $706d: $c6 $06
    ld c, a                                       ; $706f: $4f
    pop af                                        ; $7070: $f1
    dec a                                         ; $7071: $3d
    jr nz, .VerticalMask_ColumnLoop               ; $7072: $20 $dd

    ret                                           ; $7074: $c9


PrepareBGTileCopyForMaskedClueSlot::
    push bc                                       ; $7075: $c5
    push de                                       ; $7076: $d5
    push hl                                       ; $7077: $e5
    ld a, c                                       ; $7078: $79
    ld [rBGTileCopySourceX], a                    ; $7079: $ea $51 $c3
    add $05                                       ; $707c: $c6 $05
    ld [rBGTileCopyDestX], a                      ; $707e: $ea $53 $c3
    ld a, b                                       ; $7081: $78
    ld [rBGTileCopySourceY], a                    ; $7082: $ea $52 $c3
    add $05                                       ; $7085: $c6 $05
    ld [rBGTileCopyDestY], a                      ; $7087: $ea $54 $c3
    ld a, e                                       ; $708a: $7b
    and a                                         ; $708b: $a7
    jr nz, .UseGrayBGMaskedClueTileSource         ; $708c: $20 $0c

    ld a, $e0                                     ; $708e: $3e $e0
    ld [rBGTileCopyBankAddressLow], a             ; $7090: $ea $55 $c3
    ld a, $58                                     ; $7093: $3e $58
    ld [rBGTileCopyBankAddressHigh], a            ; $7095: $ea $56 $c3
    jr .ApplyMaskedClueTileCopy                   ; $7098: $18 $0a

.UseGrayBGMaskedClueTileSource:
    ld a, $f0                                     ; $709a: $3e $f0
    ld [rBGTileCopyBankAddressLow], a             ; $709c: $ea $55 $c3
    ld a, $58                                     ; $709f: $3e $58
    ld [rBGTileCopyBankAddressHigh], a            ; $70a1: $ea $56 $c3

.ApplyMaskedClueTileCopy:
    ld a, $06                                     ; $70a4: $3e $06
    ld [rBGTileCopyBank], a                       ; $70a6: $ea $57 $c3
    call PrepareBGTileCopy                        ; $70a9: $cd $b0 $08
    pop hl                                        ; $70ac: $e1
    pop de                                        ; $70ad: $d1
    pop bc                                        ; $70ae: $c1
    ret                                           ; $70af: $c9


DrawPuzzleCursorSpritesAndTickStepSequence::
    ld a, [rPuzzleCursorColumn]                   ; $70b0: $fa $36 $d6
    ld e, a                                       ; $70b3: $5f
    sla a                                         ; $70b4: $cb $27
    add e                                         ; $70b6: $83
    sla a                                         ; $70b7: $cb $27
    ld b, a                                       ; $70b9: $47
    ld a, [rPuzzleAndMenuCursorRow]               ; $70ba: $fa $37 $d6
    ld e, a                                       ; $70bd: $5f
    sla a                                         ; $70be: $cb $27
    add e                                         ; $70c0: $83
    sla a                                         ; $70c1: $cb $27
    ld c, a                                       ; $70c3: $4f
    push bc                                       ; $70c4: $c5
    ld a, b                                       ; $70c5: $78
    add $3a                                       ; $70c6: $c6 $3a
    ld b, a                                       ; $70c8: $47
    ld c, $00                                     ; $70c9: $0e $00
    ld a, [rVBlankFrameCounter]                   ; $70cb: $fa $3a $c3
    srl a                                         ; $70ce: $cb $3f
    srl a                                         ; $70d0: $cb $3f
    srl a                                         ; $70d2: $cb $3f
    and $01                                       ; $70d4: $e6 $01
    add $03                                       ; $70d6: $c6 $03
    call CopyOAMSpriteById                        ; $70d8: $cd $cb $20
    pop bc                                        ; $70db: $c1
    push bc                                       ; $70dc: $c5
    ld b, $00                                     ; $70dd: $06 $00
    ld a, c                                       ; $70df: $79
    add $32                                       ; $70e0: $c6 $32
    ld c, a                                       ; $70e2: $4f
    ld a, [rVBlankFrameCounter]                   ; $70e3: $fa $3a $c3
    srl a                                         ; $70e6: $cb $3f
    srl a                                         ; $70e8: $cb $3f
    srl a                                         ; $70ea: $cb $3f
    and $01                                       ; $70ec: $e6 $01
    add $05                                       ; $70ee: $c6 $05
    call CopyOAMSpriteById                        ; $70f0: $cd $cb $20
    pop bc                                        ; $70f3: $c1
    jp TickCellActionStepSequenceAndEmitSprite    ; $70f4: $c3 $d9 $78


DrawPuzzleCursorSprites::
    ld a, [rPuzzleCursorColumn]                   ; $70f7: $fa $36 $d6
    ld e, a                                       ; $70fa: $5f
    sla a                                         ; $70fb: $cb $27
    add e                                         ; $70fd: $83
    sla a                                         ; $70fe: $cb $27
    ld b, a                                       ; $7100: $47
    ld a, [rPuzzleAndMenuCursorRow]               ; $7101: $fa $37 $d6
    ld e, a                                       ; $7104: $5f
    sla a                                         ; $7105: $cb $27
    add e                                         ; $7107: $83
    sla a                                         ; $7108: $cb $27
    ld c, a                                       ; $710a: $4f
    push bc                                       ; $710b: $c5
    ld a, b                                       ; $710c: $78
    add $3a                                       ; $710d: $c6 $3a
    ld b, a                                       ; $710f: $47
    ld c, $00                                     ; $7110: $0e $00
    ld a, [rVBlankFrameCounter]                   ; $7112: $fa $3a $c3
    srl a                                         ; $7115: $cb $3f
    srl a                                         ; $7117: $cb $3f
    srl a                                         ; $7119: $cb $3f
    and $01                                       ; $711b: $e6 $01
    add $03                                       ; $711d: $c6 $03
    call CopyOAMSpriteById                        ; $711f: $cd $cb $20
    pop bc                                        ; $7122: $c1
    push bc                                       ; $7123: $c5
    ld b, $00                                     ; $7124: $06 $00
    ld a, c                                       ; $7126: $79
    add $32                                       ; $7127: $c6 $32
    ld c, a                                       ; $7129: $4f
    ld a, [rVBlankFrameCounter]                   ; $712a: $fa $3a $c3
    srl a                                         ; $712d: $cb $3f
    srl a                                         ; $712f: $cb $3f
    srl a                                         ; $7131: $cb $3f
    and $01                                       ; $7133: $e6 $01
    add $05                                       ; $7135: $c6 $05
    call CopyOAMSpriteById                        ; $7137: $cd $cb $20
    pop bc                                        ; $713a: $c1
    ret                                           ; $713b: $c9


UpdatePuzzleCursorFromDirectionalInput::
    ld a, [rInputButtonsPressedOrRepeated]        ; $713c: $fa $22 $c3
    and $f0                                       ; $713f: $e6 $f0
    ret z                                         ; $7141: $c8

    ld a, [rInputButtonsHeld]                     ; $7142: $fa $1a $c3
    and $03                                       ; $7145: $e6 $03
    jr nz, .CheckLeft                             ; $7147: $20 $07

    ld c, $0b                                     ; $7149: $0e $0b
    ld a, $02                                     ; $714b: $3e $02
    call CallSoundCommandDispatcher               ; $714d: $cd $b3 $03

.CheckLeft:
    ld hl, rInputButtonsPressedOrRepeated         ; $7150: $21 $22 $c3
    bit 5, [hl]                                   ; $7153: $cb $6e
    jr z, .CheckRight                             ; $7155: $28 $0a

    ld a, [rPuzzleCursorColumn]                   ; $7157: $fa $36 $d6
    and a                                         ; $715a: $a7
    jr z, .CheckRight                             ; $715b: $28 $04

    dec a                                         ; $715d: $3d
    ld [rPuzzleCursorColumn], a                   ; $715e: $ea $36 $d6

.CheckRight:
    bit 4, [hl]                                   ; $7161: $cb $66
    jr z, .CheckUp                                ; $7163: $28 $0e

    ld a, [rPuzzleGridWidth]                      ; $7165: $fa $00 $d8
    ld c, a                                       ; $7168: $4f
    ld a, [rPuzzleCursorColumn]                   ; $7169: $fa $36 $d6
    inc a                                         ; $716c: $3c
    cp c                                          ; $716d: $b9
    jr z, .CheckUp                                ; $716e: $28 $03

    ld [rPuzzleCursorColumn], a                   ; $7170: $ea $36 $d6

.CheckUp:
    bit 6, [hl]                                   ; $7173: $cb $76
    jr z, .CheckDown                              ; $7175: $28 $0a

    ld a, [rPuzzleAndMenuCursorRow]               ; $7177: $fa $37 $d6
    and a                                         ; $717a: $a7
    jr z, .CheckDown                              ; $717b: $28 $04

    dec a                                         ; $717d: $3d
    ld [rPuzzleAndMenuCursorRow], a               ; $717e: $ea $37 $d6

.CheckDown:
    bit 7, [hl]                                   ; $7181: $cb $7e
    jr z, .Return                                 ; $7183: $28 $0e

    ld a, [rPuzzleGridHeight]                     ; $7185: $fa $01 $d8
    ld c, a                                       ; $7188: $4f
    ld a, [rPuzzleAndMenuCursorRow]               ; $7189: $fa $37 $d6
    inc a                                         ; $718c: $3c
    cp c                                          ; $718d: $b9
    jr z, .Return                                 ; $718e: $28 $03

    ld [rPuzzleAndMenuCursorRow], a               ; $7190: $ea $37 $d6

.Return:
    ret                                           ; $7193: $c9


ProcessPuzzleCellActionInput::
    ld a, [rInputButtonsHeld]                     ; $7194: $fa $1a $c3
    and $01                                       ; $7197: $e6 $01
    jr z, .ClearActionRepeatState                 ; $7199: $28 $07

    ld a, [rInputButtonsPressedOrRepeated]        ; $719b: $fa $22 $c3
    and $f0                                       ; $719e: $e6 $f0
    jr z, .LoadCursorCellAndTileState             ; $71a0: $28 $04

.ClearActionRepeatState:
    xor a                                         ; $71a2: $af
    ld [rPuzzleActionRepeatGuard], a              ; $71a3: $ea $0f $d8

.LoadCursorCellAndTileState:
    ld a, [rPuzzleAndMenuCursorRow]               ; $71a6: $fa $37 $d6
    sla a                                         ; $71a9: $cb $27
    sla a                                         ; $71ab: $cb $27
    sla a                                         ; $71ad: $cb $27
    sla a                                         ; $71af: $cb $27
    ld hl, rPuzzleCursorColumn                    ; $71b1: $21 $36 $d6
    add [hl]                                      ; $71b4: $86
    ld c, a                                       ; $71b5: $4f
    ld b, $00                                     ; $71b6: $06 $00
    ld hl, rPuzzleCellStateBufferStart            ; $71b8: $21 $40 $d6
    add hl, bc                                    ; $71bb: $09
    push hl                                       ; $71bc: $e5
    ld a, [rSelectedSaveSlotIndex]                ; $71bd: $fa $65 $a0
    ld c, a                                       ; $71c0: $4f
    ld b, $00                                     ; $71c1: $06 $00
    ld hl, rSaveSlot1PuzzleActionRuleIndex_Unused ; $71c3: $21 $66 $a0
    add hl, bc                                    ; $71c6: $09
    ld a, [hl]                                    ; $71c7: $7e
    pop hl                                        ; $71c8: $e1
    and a                                         ; $71c9: $a7
    jp z, ProcessPuzzleCellActionInput_HandleFillActionInput; $71ca: $ca $d2 $71

    dec a                                         ; $71cd: $3d
    jp z, ProcessPuzzleCellActionInput_HandleFillActionInput; $71ce: $ca $d2 $71

    ret                                           ; $71d1: $c9


ProcessPuzzleCellActionInput_HandleFillActionInput::
    ld a, [rInputButtonsHeld]                     ; $71d2: $fa $1a $c3
    and $01                                       ; $71d5: $e6 $01
    jr z, .HandleMarkXActionInput                 ; $71d7: $28 $23

    ld a, [rInputButtonsPressed]                  ; $71d9: $fa $1e $c3
    and $01                                       ; $71dc: $e6 $01
    jr z, .ApplyPendingFillAction                 ; $71de: $28 $12

    ld a, [hl]                                    ; $71e0: $7e
    and $06                                       ; $71e1: $e6 $06
    cp $02                                        ; $71e3: $fe $02
    jr z, .ClearPendingFillAction                 ; $71e5: $28 $07

    ld a, $01                                     ; $71e7: $3e $01
    ld [rPuzzleCellPendingActionMode], a          ; $71e9: $ea $04 $d8
    jr .ApplyPendingFillAction                    ; $71ec: $18 $04

.ClearPendingFillAction:
    xor a                                         ; $71ee: $af
    ld [rPuzzleCellPendingActionMode], a          ; $71ef: $ea $04 $d8

.ApplyPendingFillAction:
    ld a, [rPuzzleCellPendingActionMode]          ; $71f2: $fa $04 $d8
    and a                                         ; $71f5: $a7
    jp z, ProcessPuzzleCellActionInput_ClearCellState; $71f6: $ca $0c $74

    jp ProcessPuzzleCellActionInput_ApplyFillAction; $71f9: $c3 $57 $72


.HandleMarkXActionInput:
    ld a, [rInputButtonsHeld]                     ; $71fc: $fa $1a $c3
    and $02                                       ; $71ff: $e6 $02
    ret z                                         ; $7201: $c8

    ld a, [rInputButtonsPressed]                  ; $7202: $fa $1e $c3
    and $02                                       ; $7205: $e6 $02
    jr z, .ApplyPendingMarkXAction                ; $7207: $28 $12

    ld a, [hl]                                    ; $7209: $7e
    and $06                                       ; $720a: $e6 $06
    cp $04                                        ; $720c: $fe $04
    jr z, .ClearPendingMarkXAction                ; $720e: $28 $07

    ld a, $02                                     ; $7210: $3e $02
    ld [rPuzzleCellPendingActionMode], a          ; $7212: $ea $04 $d8
    jr .ApplyPendingMarkXAction                   ; $7215: $18 $04

.ClearPendingMarkXAction:
    xor a                                         ; $7217: $af
    ld [rPuzzleCellPendingActionMode], a          ; $7218: $ea $04 $d8

.ApplyPendingMarkXAction:
    ld a, [rPuzzleCellPendingActionMode]          ; $721b: $fa $04 $d8
    and a                                         ; $721e: $a7
    jp z, ProcessPuzzleCellActionInput_ClearCellState; $721f: $ca $0c $74

    jp ProcessPuzzleCellActionInput_ApplyMarkXAction; $7222: $c3 $8e $73


    ld a, [rInputButtonsHeld]                     ; $7225: $fa $1a $c3
    and $03                                       ; $7228: $e6 $03
    cp $03                                        ; $722a: $fe $03
    jr z, .HandleDualHeldInputClearAction         ; $722c: $28 $23

    ld a, [rPuzzleCellPendingActionMode]          ; $722e: $fa $04 $d8
    and a                                         ; $7231: $a7
    jr z, .RouteHeldInputToFillOrMarkX            ; $7232: $28 $0a

    ld a, [rInputButtonsHeld]                     ; $7234: $fa $1a $c3
    and $03                                       ; $7237: $e6 $03
    ret nz                                        ; $7239: $c0

    ld [rPuzzleCellPendingActionMode], a          ; $723a: $ea $04 $d8
    ret                                           ; $723d: $c9


.RouteHeldInputToFillOrMarkX:
    ld a, [rInputButtonsHeld]                     ; $723e: $fa $1a $c3
    and $01                                       ; $7241: $e6 $01
    jr z, .RouteHeldInputToMarkX                  ; $7243: $28 $03

    jp ProcessPuzzleCellActionInput_ApplyFillAction; $7245: $c3 $57 $72


.RouteHeldInputToMarkX:
    ld a, [rInputButtonsHeld]                     ; $7248: $fa $1a $c3
    and $02                                       ; $724b: $e6 $02
    ret z                                         ; $724d: $c8

    jp ProcessPuzzleCellActionInput_ApplyMarkXAction; $724e: $c3 $8e $73


.HandleDualHeldInputClearAction:
    ld [rPuzzleCellPendingActionMode], a          ; $7251: $ea $04 $d8
    jp ProcessPuzzleCellActionInput_ClearCellState; $7254: $c3 $0c $74


ProcessPuzzleCellActionInput_ApplyFillAction::
    ld a, [hl]                                    ; $7257: $7e
    and $06                                       ; $7258: $e6 $06
    cp $02                                        ; $725a: $fe $02
    ret z                                         ; $725c: $c8

    bit 0, [hl]                                   ; $725d: $cb $46
    jp nz, ApplyFillNoPenaltyPath                 ; $725f: $c2 $11 $73

    ld a, [rGameState_Current]                    ; $7262: $fa $34 $d6
    cp $09                                        ; $7265: $fe $09
    jp z, ApplyFillNoPenaltyPath                  ; $7267: $ca $11 $73

    ld a, [rPuzzleActionRepeatGuard]              ; $726a: $fa $0f $d8
    and a                                         ; $726d: $a7
    ret nz                                        ; $726e: $c0

    ld a, [rPuzzleCursorColumn]                   ; $726f: $fa $36 $d6
    ld e, a                                       ; $7272: $5f
    sla a                                         ; $7273: $cb $27
    add e                                         ; $7275: $83
    sla a                                         ; $7276: $cb $27
    add $32                                       ; $7278: $c6 $32
    ld [rMistakePenaltyPopupSpriteX], a           ; $727a: $ea $26 $d8
    ld a, [rPuzzleAndMenuCursorRow]               ; $727d: $fa $37 $d6
    ld e, a                                       ; $7280: $5f
    sla a                                         ; $7281: $cb $27
    add e                                         ; $7283: $83
    sla a                                         ; $7284: $cb $27
    add $2b                                       ; $7286: $c6 $2b
    ld [rMistakePenaltyPopupSpriteY], a           ; $7288: $ea $27 $d8
    ld a, [rPendingCellEffectDelay]               ; $728b: $fa $22 $d8
    and a                                         ; $728e: $a7
    jr z, .BeginMistakeFillEffectSequence         ; $728f: $28 $09

    ld a, [rPendingCellEffectCode]                ; $7291: $fa $23 $d8
    call PrepareCellEffectFrameCopy               ; $7294: $cd $bb $74
    call DispatchCellEffectSfxByEffectCode        ; $7297: $cd $9b $74

.BeginMistakeFillEffectSequence:
    ld a, [rPuzzleCursorColumn]                   ; $729a: $fa $36 $d6
    ld [rCellEffectTargetColumn], a               ; $729d: $ea $24 $d8
    ld a, [rPuzzleAndMenuCursorRow]               ; $72a0: $fa $37 $d6
    ld [rCellEffectTargetRow], a                  ; $72a3: $ea $25 $d8
    xor a                                         ; $72a6: $af
    ld [rPendingCellEffectDelay], a               ; $72a7: $ea $22 $d8
    ld a, [hl]                                    ; $72aa: $7e
    and $06                                       ; $72ab: $e6 $06
    srl a                                         ; $72ad: $cb $3f
    swap a                                        ; $72af: $cb $37
    ld [rPendingCellEffectCode], a                ; $72b1: $ea $23 $d8
    ld a, $04                                     ; $72b4: $3e $04
    ld [rCellActionStepSequenceState], a          ; $72b6: $ea $21 $d8
    xor a                                         ; $72b9: $af
    ld [rCellActionStepSequenceCursor], a         ; $72ba: $ea $20 $d8
    ld [rCellActionStepDelayTimer], a             ; $72bd: $ea $1f $d8
    xor a                                         ; $72c0: $af
    ld [rPendingCellEffectDelay], a               ; $72c1: $ea $22 $d8
    ld c, $09                                     ; $72c4: $0e $09
    ld a, $02                                     ; $72c6: $3e $02
    call CallSoundCommandDispatcher               ; $72c8: $cd $b3 $03
    xor a                                         ; $72cb: $af

.RunMistakeFillAnimationLoop:
    push af                                       ; $72cc: $f5
    call ClearShadowOAMBufferFromCursor           ; $72cd: $cd $c2 $05
    rst RST_08                                    ; $72d0: $cf
    call TickAndDrawMistakePenaltyPopupSprite     ; $72d1: $cd $f3 $7c
    call DrawPuzzleCursorSpritesAndTickStepSequence; $72d4: $cd $b0 $70
    ld a, [rGameState_Current]                    ; $72d7: $fa $34 $d6
    cp $06                                        ; $72da: $fe $06
    jr z, .TickMistakeFillFrameDelay              ; $72dc: $28 $03

    call UpdatePuzzleTimerCountdown               ; $72de: $cd $5c $7a

.TickMistakeFillFrameDelay:
    call TickMarioBlinkAnimation                  ; $72e1: $cd $8a $78
    pop af                                        ; $72e4: $f1
    push af                                       ; $72e5: $f5
    cp $10                                        ; $72e6: $fe $10
    jr nz, .CheckLateMistakeFillEffectTrigger     ; $72e8: $20 $0a

    ld a, $10                                     ; $72ea: $3e $10
    call PrepareCellEffectFrameCopy               ; $72ec: $cd $bb $74
    call DispatchCellEffectSfxByEffectCode        ; $72ef: $cd $9b $74
    jr .AdvanceMistakeFillAnimationFrame          ; $72f2: $18 $0f

.CheckLateMistakeFillEffectTrigger:
    cp $54                                        ; $72f4: $fe $54
    jr nz, .AdvanceMistakeFillAnimationFrame      ; $72f6: $20 $0b

    ld a, [rPendingCellEffectCode]                ; $72f8: $fa $23 $d8
    call PrepareCellEffectFrameCopy               ; $72fb: $cd $bb $74
    ld a, $10                                     ; $72fe: $3e $10
    call DispatchCellEffectSfxByEffectCode        ; $7300: $cd $9b $74

.AdvanceMistakeFillAnimationFrame:
    pop af                                        ; $7303: $f1
    inc a                                         ; $7304: $3c
    cp $58                                        ; $7305: $fe $58
    jr nz, .RunMistakeFillAnimationLoop           ; $7307: $20 $c3

    call ApplyPuzzleTimerMistakePenalty           ; $7309: $cd $fa $7b
    ld hl, rPuzzleActionRepeatGuard               ; $730c: $21 $0f $d8
    inc [hl]                                      ; $730f: $34
    ret                                           ; $7310: $c9


ApplyFillNoPenaltyPath::
    bit 0, [hl]                                   ; $7311: $cb $46
    jr z, .QueueFillNoPenaltyEffects              ; $7313: $28 $07

    ld a, [rPuzzleBit0AndBit1ClearCellCounter]    ; $7315: $fa $02 $d8
    dec a                                         ; $7318: $3d
    ld [rPuzzleBit0AndBit1ClearCellCounter], a    ; $7319: $ea $02 $d8

.QueueFillNoPenaltyEffects:
    ld a, [rPuzzleBit1ClearCellCounter]           ; $731c: $fa $03 $d8
    dec a                                         ; $731f: $3d
    ld [rPuzzleBit1ClearCellCounter], a           ; $7320: $ea $03 $d8
    set 1, [hl]                                   ; $7323: $cb $ce
    res 2, [hl]                                   ; $7325: $cb $96
    ld a, [rPendingCellEffectDelay]               ; $7327: $fa $22 $d8
    and a                                         ; $732a: $a7
    jr z, .BeginOrContinueNoPenaltyFillStepSequence; $732b: $28 $09

    ld a, [rPendingCellEffectCode]                ; $732d: $fa $23 $d8
    call PrepareCellEffectFrameCopy               ; $7330: $cd $bb $74
    call DispatchCellEffectSfxByEffectCode        ; $7333: $cd $9b $74

.BeginOrContinueNoPenaltyFillStepSequence:
    ld a, [rCellActionStepSequenceState]          ; $7336: $fa $21 $d8
    cp $01                                        ; $7339: $fe $01
    jr z, .TickNoPenaltyFillStepSequence          ; $733b: $28 $27

    cp $02                                        ; $733d: $fe $02
    jr z, .TickNoPenaltyFillStepSequence          ; $733f: $28 $23

    ld a, $01                                     ; $7341: $3e $01
    ld [rCellActionStepSequenceState], a          ; $7343: $ea $21 $d8
    xor a                                         ; $7346: $af
    ld [rCellActionStepSequenceCursor], a         ; $7347: $ea $20 $d8
    ld [rCellActionStepDelayTimer], a             ; $734a: $ea $1f $d8
    ld a, $08                                     ; $734d: $3e $08
    ld [rPendingCellEffectDelay], a               ; $734f: $ea $22 $d8
    ld a, $10                                     ; $7352: $3e $10
    ld [rPendingCellEffectCode], a                ; $7354: $ea $23 $d8
    ld a, [rPuzzleCursorColumn]                   ; $7357: $fa $36 $d6
    ld [rCellEffectTargetColumn], a               ; $735a: $ea $24 $d8
    ld a, [rPuzzleAndMenuCursorRow]               ; $735d: $fa $37 $d6
    ld [rCellEffectTargetRow], a                  ; $7360: $ea $25 $d8
    ret                                           ; $7363: $c9


.TickNoPenaltyFillStepSequence:
    ld a, [rCellActionStepSequenceCursor]         ; $7364: $fa $20 $d8
    cp $0c                                        ; $7367: $fe $0c
    jr c, .QueueNoPenaltyFillEffectFrame          ; $7369: $38 $0c

    ld a, $02                                     ; $736b: $3e $02
    ld [rCellActionStepSequenceState], a          ; $736d: $ea $21 $d8
    xor a                                         ; $7370: $af
    ld [rCellActionStepSequenceCursor], a         ; $7371: $ea $20 $d8
    ld [rCellActionStepDelayTimer], a             ; $7374: $ea $1f $d8

.QueueNoPenaltyFillEffectFrame:
    ld a, $07                                     ; $7377: $3e $07
    ld [rPendingCellEffectDelay], a               ; $7379: $ea $22 $d8
    ld a, $10                                     ; $737c: $3e $10
    ld [rPendingCellEffectCode], a                ; $737e: $ea $23 $d8
    ld a, [rPuzzleCursorColumn]                   ; $7381: $fa $36 $d6
    ld [rCellEffectTargetColumn], a               ; $7384: $ea $24 $d8
    ld a, [rPuzzleAndMenuCursorRow]               ; $7387: $fa $37 $d6
    ld [rCellEffectTargetRow], a                  ; $738a: $ea $25 $d8
    ret                                           ; $738d: $c9


ProcessPuzzleCellActionInput_ApplyMarkXAction::
    ld a, [hl]                                    ; $738e: $7e
    and $06                                       ; $738f: $e6 $06
    cp $04                                        ; $7391: $fe $04
    ret z                                         ; $7393: $c8

    cp $02                                        ; $7394: $fe $02
    jr nz, .ApplyMarkXBits                        ; $7396: $20 $12

    bit 0, [hl]                                   ; $7398: $cb $46
    jr z, .IncrementMarkedCellCounter             ; $739a: $28 $07

    ld a, [rPuzzleBit0AndBit1ClearCellCounter]    ; $739c: $fa $02 $d8
    inc a                                         ; $739f: $3c
    ld [rPuzzleBit0AndBit1ClearCellCounter], a    ; $73a0: $ea $02 $d8

.IncrementMarkedCellCounter:
    ld a, [rPuzzleBit1ClearCellCounter]           ; $73a3: $fa $03 $d8
    inc a                                         ; $73a6: $3c
    ld [rPuzzleBit1ClearCellCounter], a           ; $73a7: $ea $03 $d8

.ApplyMarkXBits:
    res 1, [hl]                                   ; $73aa: $cb $8e
    set 2, [hl]                                   ; $73ac: $cb $d6
    ld a, [rPendingCellEffectDelay]               ; $73ae: $fa $22 $d8
    and a                                         ; $73b1: $a7
    jr z, .BeginMarkXEffectSequence               ; $73b2: $28 $09

    ld a, [rPendingCellEffectCode]                ; $73b4: $fa $23 $d8
    call PrepareCellEffectFrameCopy               ; $73b7: $cd $bb $74
    call DispatchCellEffectSfxByEffectCode        ; $73ba: $cd $9b $74

.BeginMarkXEffectSequence:
    ld a, [rCellActionStepSequenceState]          ; $73bd: $fa $21 $d8
    cp $03                                        ; $73c0: $fe $03
    jr z, .TickMarkXEffectSequence                ; $73c2: $28 $23

    ld a, $03                                     ; $73c4: $3e $03
    ld [rCellActionStepSequenceState], a          ; $73c6: $ea $21 $d8
    xor a                                         ; $73c9: $af
    ld [rCellActionStepSequenceCursor], a         ; $73ca: $ea $20 $d8
    ld [rCellActionStepDelayTimer], a             ; $73cd: $ea $1f $d8
    ld a, $06                                     ; $73d0: $3e $06
    ld [rPendingCellEffectDelay], a               ; $73d2: $ea $22 $d8
    ld a, $20                                     ; $73d5: $3e $20
    ld [rPendingCellEffectCode], a                ; $73d7: $ea $23 $d8
    ld a, [rPuzzleCursorColumn]                   ; $73da: $fa $36 $d6
    ld [rCellEffectTargetColumn], a               ; $73dd: $ea $24 $d8
    ld a, [rPuzzleAndMenuCursorRow]               ; $73e0: $fa $37 $d6
    ld [rCellEffectTargetRow], a                  ; $73e3: $ea $25 $d8
    ret                                           ; $73e6: $c9


.TickMarkXEffectSequence:
    ld a, [rCellActionStepSequenceCursor]         ; $73e7: $fa $20 $d8
    cp $02                                        ; $73ea: $fe $02
    jr c, .QueueMarkXEffectFrame                  ; $73ec: $38 $07

    xor a                                         ; $73ee: $af
    ld [rCellActionStepSequenceCursor], a         ; $73ef: $ea $20 $d8
    ld [rCellActionStepDelayTimer], a             ; $73f2: $ea $1f $d8

.QueueMarkXEffectFrame:
    ld a, $06                                     ; $73f5: $3e $06
    ld [rPendingCellEffectDelay], a               ; $73f7: $ea $22 $d8
    ld a, $20                                     ; $73fa: $3e $20
    ld [rPendingCellEffectCode], a                ; $73fc: $ea $23 $d8
    ld a, [rPuzzleCursorColumn]                   ; $73ff: $fa $36 $d6
    ld [rCellEffectTargetColumn], a               ; $7402: $ea $24 $d8
    ld a, [rPuzzleAndMenuCursorRow]               ; $7405: $fa $37 $d6
    ld [rCellEffectTargetRow], a                  ; $7408: $ea $25 $d8
    ret                                           ; $740b: $c9


ProcessPuzzleCellActionInput_ClearCellState::
    ld a, [hl]                                    ; $740c: $7e
    and $06                                       ; $740d: $e6 $06
    ret z                                         ; $740f: $c8

    cp $02                                        ; $7410: $fe $02
    jr nz, .ClearCellMarkBits                     ; $7412: $20 $12

    bit 0, [hl]                                   ; $7414: $cb $46
    jr z, .IncrementClearedCellCounter            ; $7416: $28 $07

    ld a, [rPuzzleBit0AndBit1ClearCellCounter]    ; $7418: $fa $02 $d8
    inc a                                         ; $741b: $3c
    ld [rPuzzleBit0AndBit1ClearCellCounter], a    ; $741c: $ea $02 $d8

.IncrementClearedCellCounter:
    ld a, [rPuzzleBit1ClearCellCounter]           ; $741f: $fa $03 $d8
    inc a                                         ; $7422: $3c
    ld [rPuzzleBit1ClearCellCounter], a           ; $7423: $ea $03 $d8

.ClearCellMarkBits:
    res 1, [hl]                                   ; $7426: $cb $8e
    res 2, [hl]                                   ; $7428: $cb $96
    ld a, [rPendingCellEffectDelay]               ; $742a: $fa $22 $d8
    and a                                         ; $742d: $a7
    jr z, .BeginClearCellEffectSequence           ; $742e: $28 $09

    ld a, [rPendingCellEffectCode]                ; $7430: $fa $23 $d8
    call PrepareCellEffectFrameCopy               ; $7433: $cd $bb $74
    call DispatchCellEffectSfxByEffectCode        ; $7436: $cd $9b $74

.BeginClearCellEffectSequence:
    ld a, [rCellActionStepSequenceState]          ; $7439: $fa $21 $d8
    cp $05                                        ; $743c: $fe $05
    jr z, .TickClearCellEffectSequence            ; $743e: $28 $23

    ld a, $05                                     ; $7440: $3e $05
    ld [rCellActionStepSequenceState], a          ; $7442: $ea $21 $d8
    xor a                                         ; $7445: $af
    ld [rCellActionStepSequenceCursor], a         ; $7446: $ea $20 $d8
    ld [rCellActionStepDelayTimer], a             ; $7449: $ea $1f $d8
    ld a, $0c                                     ; $744c: $3e $0c
    ld [rPendingCellEffectDelay], a               ; $744e: $ea $22 $d8
    ld a, $00                                     ; $7451: $3e $00
    ld [rPendingCellEffectCode], a                ; $7453: $ea $23 $d8
    ld a, [rPuzzleCursorColumn]                   ; $7456: $fa $36 $d6
    ld [rCellEffectTargetColumn], a               ; $7459: $ea $24 $d8
    ld a, [rPuzzleAndMenuCursorRow]               ; $745c: $fa $37 $d6
    ld [rCellEffectTargetRow], a                  ; $745f: $ea $25 $d8
    ret                                           ; $7462: $c9


.TickClearCellEffectSequence:
    ld a, [rCellActionStepSequenceCursor]         ; $7463: $fa $20 $d8
    cp $08                                        ; $7466: $fe $08
    jr c, .QueueClearCellEffectFrame              ; $7468: $38 $07

    xor a                                         ; $746a: $af
    ld [rCellActionStepSequenceCursor], a         ; $746b: $ea $20 $d8
    ld [rCellActionStepDelayTimer], a             ; $746e: $ea $1f $d8

.QueueClearCellEffectFrame:
    ld a, $0c                                     ; $7471: $3e $0c
    ld [rPendingCellEffectDelay], a               ; $7473: $ea $22 $d8
    ld a, $00                                     ; $7476: $3e $00
    ld [rPendingCellEffectCode], a                ; $7478: $ea $23 $d8
    ld a, [rPuzzleCursorColumn]                   ; $747b: $fa $36 $d6
    ld [rCellEffectTargetColumn], a               ; $747e: $ea $24 $d8
    ld a, [rPuzzleAndMenuCursorRow]               ; $7481: $fa $37 $d6
    ld [rCellEffectTargetRow], a                  ; $7484: $ea $25 $d8
    ret                                           ; $7487: $c9


TickPendingCellActionEffect::
    ld a, [rPendingCellEffectDelay]               ; $7488: $fa $22 $d8
    and a                                         ; $748b: $a7
    ret z                                         ; $748c: $c8

    dec a                                         ; $748d: $3d
    ld [rPendingCellEffectDelay], a               ; $748e: $ea $22 $d8
    ret nz                                        ; $7491: $c0

    ld a, [rPendingCellEffectCode]                ; $7492: $fa $23 $d8
    call PrepareCellEffectFrameCopy               ; $7495: $cd $bb $74
    jp DispatchCellEffectSfxByEffectCode          ; $7498: $c3 $9b $74


DispatchCellEffectSfxByEffectCode::
    cp $10                                        ; $749b: $fe $10
    jr nz, .CheckClearCellEffectCode              ; $749d: $20 $08

    ld c, $05                                     ; $749f: $0e $05
    ld a, $02                                     ; $74a1: $3e $02
    call CallSoundCommandDispatcher               ; $74a3: $cd $b3 $03
    ret                                           ; $74a6: $c9


.CheckClearCellEffectCode:
    cp $00                                        ; $74a7: $fe $00
    jr nz, .PlayDefaultCellEffectSfx              ; $74a9: $20 $08

    ld c, $07                                     ; $74ab: $0e $07
    ld a, $02                                     ; $74ad: $3e $02
    call CallSoundCommandDispatcher               ; $74af: $cd $b3 $03
    ret                                           ; $74b2: $c9


.PlayDefaultCellEffectSfx:
    ld c, $0c                                     ; $74b3: $0e $0c
    ld a, $02                                     ; $74b5: $3e $02
    call CallSoundCommandDispatcher               ; $74b7: $cd $b3 $03
    ret                                           ; $74ba: $c9


PrepareCellEffectFrameCopy::
    push af                                       ; $74bb: $f5
    push bc                                       ; $74bc: $c5
    push de                                       ; $74bd: $d5
    push hl                                       ; $74be: $e5
    push af                                       ; $74bf: $f5
    ld a, [rCellEffectFrameSourceBaseIndex]       ; $74c0: $fa $10 $d8
    sla a                                         ; $74c3: $cb $27
    ld c, a                                       ; $74c5: $4f
    ld b, $00                                     ; $74c6: $06 $00
    ld hl, CellEffectFrameSourceBaseAddressTable  ; $74c8: $21 $0b $75
    add hl, bc                                    ; $74cb: $09
    pop af                                        ; $74cc: $f1
    add [hl]                                      ; $74cd: $86
    ld [rBGTileCopyBankAddressLow], a             ; $74ce: $ea $55 $c3
    inc hl                                        ; $74d1: $23
    ld a, $00                                     ; $74d2: $3e $00
    adc [hl]                                      ; $74d4: $8e
    ld [rBGTileCopyBankAddressHigh], a            ; $74d5: $ea $56 $c3
    ld a, $06                                     ; $74d8: $3e $06
    ld [rBGTileCopyBank], a                       ; $74da: $ea $57 $c3
    ld a, [rCellEffectTargetColumn]               ; $74dd: $fa $24 $d8
    ld e, a                                       ; $74e0: $5f
    sla a                                         ; $74e1: $cb $27
    add e                                         ; $74e3: $83
    sla a                                         ; $74e4: $cb $27
    add $3b                                       ; $74e6: $c6 $3b
    ld [rBGTileCopySourceX], a                    ; $74e8: $ea $51 $c3
    add $04                                       ; $74eb: $c6 $04
    ld [rBGTileCopyDestX], a                      ; $74ed: $ea $53 $c3
    ld a, [rCellEffectTargetRow]                  ; $74f0: $fa $25 $d8
    ld e, a                                       ; $74f3: $5f
    sla a                                         ; $74f4: $cb $27
    add e                                         ; $74f6: $83
    sla a                                         ; $74f7: $cb $27
    add $33                                       ; $74f9: $c6 $33
    ld [rBGTileCopySourceY], a                    ; $74fb: $ea $52 $c3
    add $04                                       ; $74fe: $c6 $04
    ld [rBGTileCopyDestY], a                      ; $7500: $ea $54 $c3
    call PrepareBGTileCopy                        ; $7503: $cd $b0 $08
    pop hl                                        ; $7506: $e1
    pop de                                        ; $7507: $d1
    pop bc                                        ; $7508: $c1
    pop af                                        ; $7509: $f1
    ret                                           ; $750a: $c9


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
    push bc                                       ; $7541: $c5
    push de                                       ; $7542: $d5
    push hl                                       ; $7543: $e5
    ld [rBGTileCopyBankAddressLow], a             ; $7544: $ea $55 $c3
    ld a, $58                                     ; $7547: $3e $58
    ld [rBGTileCopyBankAddressHigh], a            ; $7549: $ea $56 $c3
    ld a, $06                                     ; $754c: $3e $06
    ld [rBGTileCopyBank], a                       ; $754e: $ea $57 $c3
    ld a, b                                       ; $7551: $78
    ld [rBGTileCopySourceX], a                    ; $7552: $ea $51 $c3
    add d                                         ; $7555: $82
    ld [rBGTileCopyDestX], a                      ; $7556: $ea $53 $c3
    ld a, c                                       ; $7559: $79
    ld [rBGTileCopySourceY], a                    ; $755a: $ea $52 $c3
    add e                                         ; $755d: $83
    ld [rBGTileCopyDestY], a                      ; $755e: $ea $54 $c3
    call PrepareBGTileCopy                        ; $7561: $cd $b0 $08
    pop hl                                        ; $7564: $e1
    pop de                                        ; $7565: $d1
    pop bc                                        ; $7566: $c1
    ret                                           ; $7567: $c9


FinalizePuzzleClearAndSetPostClearFlowFlag::
    ld a, [rPuzzleBit1ClearCellCounter]           ; $7568: $fa $03 $d8
    ld hl, rPuzzleBit0AndBit1ClearCellCounter     ; $756b: $21 $02 $d8
    or [hl]                                       ; $756e: $b6
    ret nz                                        ; $756f: $c0

    ld c, $00                                     ; $7570: $0e $00
    ld a, $01                                     ; $7572: $3e $01
    call CallSoundCommandDispatcher               ; $7574: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $7577: $cd $96 $03
    ld c, $00                                     ; $757a: $0e $00
    ld a, $01                                     ; $757c: $3e $01
    call CallSoundCommandDispatcher               ; $757e: $cd $b3 $03

.WaitForMessageAndEffectsToSettle:
    call ClearShadowOAMBufferFromCursor           ; $7581: $cd $c2 $05
    rst RST_08                                    ; $7584: $cf
    xor a                                         ; $7585: $af
    ld [rInputButtonsHeld], a                     ; $7586: $ea $1a $c3
    ld [rInputButtonsPressed], a                  ; $7589: $ea $1e $c3
    ld [rInputButtonsPressedOrRepeated], a        ; $758c: $ea $22 $c3
    call DrawPuzzleCursorSpritesAndTickStepSequence; $758f: $cd $b0 $70
    call TickMarioBlinkAnimation                  ; $7592: $cd $8a $78
    call TickPendingCellActionEffect              ; $7595: $cd $88 $74
    ld a, [rCellActionStepSequenceState]          ; $7598: $fa $21 $d8
    and a                                         ; $759b: $a7
    jr nz, .WaitForMessageAndEffectsToSettle      ; $759c: $20 $e3

    call ClearShadowOAMBuffer                     ; $759e: $cd $b3 $05
    ld a, $ff                                     ; $75a1: $3e $ff
    ld [rPuzzlePostClearFlowFlag], a              ; $75a3: $ea $05 $d8
    ret                                           ; $75a6: $c9


RedrawPuzzleBoard::
    ld a, [rPuzzleGridWidth]                      ; $75a7: $fa $00 $d8
    cp $05                                        ; $75aa: $fe $05
    jr nz, .Load10x10BoardTileData                ; $75ac: $20 $02

    jr .RedrawBoardCells                          ; $75ae: $18 $22

.Load10x10BoardTileData:
    cp $0a                                        ; $75b0: $fe $0a
    jr nz, .Load15x15BoardTileData                ; $75b2: $20 $10

    ld a, $08                                     ; $75b4: $3e $08
    ld hl, $5a00                                  ; $75b6: $21 $00 $5a
    ld de, $8800                                  ; $75b9: $11 $00 $88
    ld bc, $0200                                  ; $75bc: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $75bf: $cd $35 $05
    jr .RedrawBoardCells                          ; $75c2: $18 $0e

.Load15x15BoardTileData:
    ld a, $06                                     ; $75c4: $3e $06
    ld hl, $7200                                  ; $75c6: $21 $00 $72
    ld de, $8800                                  ; $75c9: $11 $00 $88
    ld bc, $0200                                  ; $75cc: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $75cf: $cd $35 $05

.RedrawBoardCells:
    ld hl, rPuzzleCellStateBufferStart            ; $75d2: $21 $40 $d6
    ld c, $33                                     ; $75d5: $0e $33
    ld e, $05                                     ; $75d7: $1e $05
    ld a, [rPuzzleGridHeight]                     ; $75d9: $fa $01 $d8

.ProcessBoardRows:
    push af                                       ; $75dc: $f5
    ld b, $3b                                     ; $75dd: $06 $3b
    ld d, $05                                     ; $75df: $16 $05
    ld a, [rPuzzleGridWidth]                      ; $75e1: $fa $00 $d8

.ProcessBoardCells:
    push af                                       ; $75e4: $f5
    ld a, [hl+]                                   ; $75e5: $2a
    and $01                                       ; $75e6: $e6 $01
    swap a                                        ; $75e8: $cb $37
    call PrepareBGTileCopyFromCellEffectParams    ; $75ea: $cd $41 $75
    ld a, b                                       ; $75ed: $78
    add $06                                       ; $75ee: $c6 $06
    ld b, a                                       ; $75f0: $47
    pop af                                        ; $75f1: $f1
    dec a                                         ; $75f2: $3d
    cp $01                                        ; $75f3: $fe $01
    jr nz, .AdvanceToNextRow                      ; $75f5: $20 $03

    dec d                                         ; $75f7: $15
    jr .ProcessBoardCells                         ; $75f8: $18 $ea

.AdvanceToNextRow:
    and a                                         ; $75fa: $a7
    jr nz, .ProcessBoardCells                     ; $75fb: $20 $e7

    ld a, [rPuzzleGridWidth]                      ; $75fd: $fa $00 $d8
    sub $11                                       ; $7600: $d6 $11
    xor $ff                                       ; $7602: $ee $ff
    add l                                         ; $7604: $85
    ld l, a                                       ; $7605: $6f
    ld a, $00                                     ; $7606: $3e $00
    adc h                                         ; $7608: $8c
    ld h, a                                       ; $7609: $67
    ld a, c                                       ; $760a: $79
    add $06                                       ; $760b: $c6 $06
    ld c, a                                       ; $760d: $4f
    pop af                                        ; $760e: $f1
    dec a                                         ; $760f: $3d
    cp $01                                        ; $7610: $fe $01
    jr nz, .AdvanceToNextColumn                   ; $7612: $20 $03

    dec e                                         ; $7614: $1d
    jr .ProcessBoardRows                          ; $7615: $18 $c5

.AdvanceToNextColumn:
    and a                                         ; $7617: $a7
    jr nz, .ProcessBoardRows                      ; $7618: $20 $c2

    ret                                           ; $761a: $c9


RedrawPostClearSolvedCellsByGridSize::
    ld a, [rPuzzleGridWidth]                      ; $761b: $fa $00 $d8
    cp $05                                        ; $761e: $fe $05
    jp z, RedrawPostClearSolvedCells5x5           ; $7620: $ca $2b $76

    cp $0a                                        ; $7623: $fe $0a
    jp z, RedrawPostClearSolvedCells10x10         ; $7625: $ca $5a $76

    jp RedrawPostClearSolvedCells15x15            ; $7628: $c3 $89 $76


RedrawPostClearSolvedCells5x5::
    call Load5x5PostClearBoardBaseTiles           ; $762b: $cd $b3 $76
    ld hl, rPuzzleCellStateBufferStart            ; $762e: $21 $40 $d6
    ld c, $3c                                     ; $7631: $0e $3c
    ld e, $01                                     ; $7633: $1e $01

.Begin5x5SolvedCellRedrawRow:
    ld b, $44                                     ; $7635: $06 $44
    ld d, $01                                     ; $7637: $16 $01

.Scan5x5SolvedCellRedrawColumn:
    ld a, [hl+]                                   ; $7639: $2a
    and $01                                       ; $763a: $e6 $01
    jr z, .Advance5x5SolvedCellRedrawColumnOrRow  ; $763c: $28 $05

    swap a                                        ; $763e: $cb $37
    call PrepareBGTileCopyFromCellEffectParams    ; $7640: $cd $41 $75

.Advance5x5SolvedCellRedrawColumnOrRow:
    ld a, b                                       ; $7643: $78
    add $02                                       ; $7644: $c6 $02
    ld b, a                                       ; $7646: $47
    cp $4e                                        ; $7647: $fe $4e
    jr nz, .Scan5x5SolvedCellRedrawColumn         ; $7649: $20 $ee

    push bc                                       ; $764b: $c5
    ld bc, $000b                                  ; $764c: $01 $0b $00
    add hl, bc                                    ; $764f: $09
    pop bc                                        ; $7650: $c1
    ld a, c                                       ; $7651: $79
    add $02                                       ; $7652: $c6 $02
    ld c, a                                       ; $7654: $4f
    cp $46                                        ; $7655: $fe $46
    jr nz, .Begin5x5SolvedCellRedrawRow           ; $7657: $20 $dc

    ret                                           ; $7659: $c9


RedrawPostClearSolvedCells10x10::
    call Load10x10PostClearBoardBaseTiles         ; $765a: $cd $18 $77
    ld hl, rPuzzleCellStateBufferStart            ; $765d: $21 $40 $d6
    ld c, $43                                     ; $7660: $0e $43
    ld e, $01                                     ; $7662: $1e $01

.Begin10x10SolvedCellRedrawRow:
    ld b, $4e                                     ; $7664: $06 $4e
    ld d, $01                                     ; $7666: $16 $01

.Scan10x10SolvedCellRedrawColumn:
    ld a, [hl+]                                   ; $7668: $2a
    and $01                                       ; $7669: $e6 $01
    jr z, .Advance10x10SolvedCellRedrawColumnOrRow; $766b: $28 $05

    swap a                                        ; $766d: $cb $37
    call PrepareBGTileCopyFromCellEffectParams    ; $766f: $cd $41 $75

.Advance10x10SolvedCellRedrawColumnOrRow:
    ld a, b                                       ; $7672: $78
    add $02                                       ; $7673: $c6 $02
    ld b, a                                       ; $7675: $47
    cp $62                                        ; $7676: $fe $62
    jr nz, .Scan10x10SolvedCellRedrawColumn       ; $7678: $20 $ee

    push bc                                       ; $767a: $c5
    ld bc, $0006                                  ; $767b: $01 $06 $00
    add hl, bc                                    ; $767e: $09
    pop bc                                        ; $767f: $c1
    ld a, c                                       ; $7680: $79
    add $02                                       ; $7681: $c6 $02
    ld c, a                                       ; $7683: $4f
    cp $57                                        ; $7684: $fe $57
    jr nz, .Begin10x10SolvedCellRedrawRow         ; $7686: $20 $dc

    ret                                           ; $7688: $c9


RedrawPostClearSolvedCells15x15::
    call Load15x15PostClearBoardBaseTiles         ; $7689: $cd $7c $77
    ld hl, rPuzzleCellStateBufferStart            ; $768c: $21 $40 $d6
    ld c, $4d                                     ; $768f: $0e $4d
    ld e, $01                                     ; $7691: $1e $01

.Begin15x15SolvedCellRedrawRow:
    ld b, $59                                     ; $7693: $06 $59
    ld d, $01                                     ; $7695: $16 $01

.Scan15x15SolvedCellRedrawColumn:
    ld a, [hl+]                                   ; $7697: $2a
    and $01                                       ; $7698: $e6 $01
    jr z, .Advance15x15SolvedCellRedrawColumnOrRow; $769a: $28 $05

    swap a                                        ; $769c: $cb $37
    call PrepareBGTileCopyFromCellEffectParams    ; $769e: $cd $41 $75

.Advance15x15SolvedCellRedrawColumnOrRow:
    ld a, b                                       ; $76a1: $78
    add $02                                       ; $76a2: $c6 $02
    ld b, a                                       ; $76a4: $47
    cp $77                                        ; $76a5: $fe $77
    jr nz, .Scan15x15SolvedCellRedrawColumn       ; $76a7: $20 $ee

    inc hl                                        ; $76a9: $23
    ld a, c                                       ; $76aa: $79
    add $02                                       ; $76ab: $c6 $02
    ld c, a                                       ; $76ad: $4f
    cp $6b                                        ; $76ae: $fe $6b
    jr nz, .Begin15x15SolvedCellRedrawRow         ; $76b0: $20 $e1

    ret                                           ; $76b2: $c9


Load5x5PostClearBoardBaseTiles::
    ld hl, $6340                                  ; $76b3: $21 $40 $63
    ld c, $33                                     ; $76b6: $0e $33

.Copy5x5PostClearBoardBaseTileRows:
    push bc                                       ; $76b8: $c5
    push hl                                       ; $76b9: $e5
    ld a, l                                       ; $76ba: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $76bb: $ea $55 $c3
    ld a, h                                       ; $76be: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $76bf: $ea $56 $c3
    ld a, $07                                     ; $76c2: $3e $07
    ld [rBGTileCopyBank], a                       ; $76c4: $ea $57 $c3
    ld a, $3b                                     ; $76c7: $3e $3b
    ld [rBGTileCopySourceX], a                    ; $76c9: $ea $51 $c3
    add $1c                                       ; $76cc: $c6 $1c
    ld [rBGTileCopyDestX], a                      ; $76ce: $ea $53 $c3
    ld a, c                                       ; $76d1: $79
    ld [rBGTileCopySourceY], a                    ; $76d2: $ea $52 $c3
    add $0b                                       ; $76d5: $c6 $0b
    ld [rBGTileCopyDestY], a                      ; $76d7: $ea $54 $c3
    call PrepareBGTileCopy                        ; $76da: $cd $b0 $08
    pop hl                                        ; $76dd: $e1
    pop bc                                        ; $76de: $c1
    ld de, $0108                                  ; $76df: $11 $08 $01
    add hl, de                                    ; $76e2: $19
    bit 3, l                                      ; $76e3: $cb $5d
    jr nz, .Advance5x5PostClearBoardBaseTileRow   ; $76e5: $20 $04

    ld de, $00f0                                  ; $76e7: $11 $f0 $00
    add hl, de                                    ; $76ea: $19

.Advance5x5PostClearBoardBaseTileRow:
    ld a, c                                       ; $76eb: $79
    add $0c                                       ; $76ec: $c6 $0c
    ld c, a                                       ; $76ee: $4f
    cp $4b                                        ; $76ef: $fe $4b
    jr nz, .Copy5x5PostClearBoardBaseTileRows     ; $76f1: $20 $c5

    ld a, l                                       ; $76f3: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $76f4: $ea $55 $c3
    ld a, h                                       ; $76f7: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $76f8: $ea $56 $c3
    ld a, $07                                     ; $76fb: $3e $07
    ld [rBGTileCopyBank], a                       ; $76fd: $ea $57 $c3
    ld a, $3b                                     ; $7700: $3e $3b
    ld [rBGTileCopySourceX], a                    ; $7702: $ea $51 $c3
    add $1c                                       ; $7705: $c6 $1c
    ld [rBGTileCopyDestX], a                      ; $7707: $ea $53 $c3
    ld a, c                                       ; $770a: $79
    ld [rBGTileCopySourceY], a                    ; $770b: $ea $52 $c3
    add $04                                       ; $770e: $c6 $04
    ld [rBGTileCopyDestY], a                      ; $7710: $ea $54 $c3
    call PrepareBGTileCopy                        ; $7713: $cd $b0 $08
    ret                                           ; $7716: $c9


    ret                                           ; $7717: $c9


Load10x10PostClearBoardBaseTiles::
    ld hl, $6000                                  ; $7718: $21 $00 $60
    ld c, $33                                     ; $771b: $0e $33

.Copy10x10PostClearBoardBaseTileRows:
    push bc                                       ; $771d: $c5
    push hl                                       ; $771e: $e5
    ld a, l                                       ; $771f: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $7720: $ea $55 $c3
    ld a, h                                       ; $7723: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $7724: $ea $56 $c3
    ld a, $08                                     ; $7727: $3e $08
    ld [rBGTileCopyBank], a                       ; $7729: $ea $57 $c3
    ld a, $3b                                     ; $772c: $3e $3b
    ld [rBGTileCopySourceX], a                    ; $772e: $ea $51 $c3
    add $3a                                       ; $7731: $c6 $3a
    ld [rBGTileCopyDestX], a                      ; $7733: $ea $53 $c3
    ld a, c                                       ; $7736: $79
    ld [rBGTileCopySourceY], a                    ; $7737: $ea $52 $c3
    add $0b                                       ; $773a: $c6 $0b
    ld [rBGTileCopyDestY], a                      ; $773c: $ea $54 $c3
    call PrepareBGTileCopy                        ; $773f: $cd $b0 $08
    pop hl                                        ; $7742: $e1
    pop bc                                        ; $7743: $c1
    ld de, $0108                                  ; $7744: $11 $08 $01
    add hl, de                                    ; $7747: $19
    bit 3, l                                      ; $7748: $cb $5d
    jr nz, .Advance10x10PostClearBoardBaseTileRow ; $774a: $20 $04

    ld de, $00f0                                  ; $774c: $11 $f0 $00
    add hl, de                                    ; $774f: $19

.Advance10x10PostClearBoardBaseTileRow:
    ld a, c                                       ; $7750: $79
    add $0c                                       ; $7751: $c6 $0c
    ld c, a                                       ; $7753: $4f
    cp $63                                        ; $7754: $fe $63
    jr nz, .Copy10x10PostClearBoardBaseTileRows   ; $7756: $20 $c5

    ld a, l                                       ; $7758: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $7759: $ea $55 $c3
    ld a, h                                       ; $775c: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $775d: $ea $56 $c3
    ld a, $08                                     ; $7760: $3e $08
    ld [rBGTileCopyBank], a                       ; $7762: $ea $57 $c3
    ld a, $3b                                     ; $7765: $3e $3b
    ld [rBGTileCopySourceX], a                    ; $7767: $ea $51 $c3
    add $3a                                       ; $776a: $c6 $3a
    ld [rBGTileCopyDestX], a                      ; $776c: $ea $53 $c3
    ld a, c                                       ; $776f: $79
    ld [rBGTileCopySourceY], a                    ; $7770: $ea $52 $c3
    add $0a                                       ; $7773: $c6 $0a
    ld [rBGTileCopyDestY], a                      ; $7775: $ea $54 $c3
    call PrepareBGTileCopy                        ; $7778: $cd $b0 $08
    ret                                           ; $777b: $c9


Load15x15PostClearBoardBaseTiles::
    ld hl, GS08_PhasePointer_06                   ; $777c: $21 $00 $5d
    ld c, $33                                     ; $777f: $0e $33

.Copy15x15PostClearBoardBaseTileRows:
    push bc                                       ; $7781: $c5
    push hl                                       ; $7782: $e5
    ld a, l                                       ; $7783: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $7784: $ea $55 $c3
    ld a, h                                       ; $7787: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $7788: $ea $56 $c3
    ld a, $06                                     ; $778b: $3e $06
    ld [rBGTileCopyBank], a                       ; $778d: $ea $57 $c3
    ld a, $3b                                     ; $7790: $3e $3b
    ld [rBGTileCopySourceX], a                    ; $7792: $ea $51 $c3
    add $58                                       ; $7795: $c6 $58
    ld [rBGTileCopyDestX], a                      ; $7797: $ea $53 $c3
    ld a, c                                       ; $779a: $79
    ld [rBGTileCopySourceY], a                    ; $779b: $ea $52 $c3
    add $0b                                       ; $779e: $c6 $0b
    ld [rBGTileCopyDestY], a                      ; $77a0: $ea $54 $c3
    call PrepareBGTileCopy                        ; $77a3: $cd $b0 $08
    pop hl                                        ; $77a6: $e1
    pop bc                                        ; $77a7: $c1
    ld de, $0108                                  ; $77a8: $11 $08 $01
    add hl, de                                    ; $77ab: $19
    bit 3, l                                      ; $77ac: $cb $5d
    jr nz, .Advance15x15PostClearBoardBaseTileRow ; $77ae: $20 $04

    ld de, $00f0                                  ; $77b0: $11 $f0 $00
    add hl, de                                    ; $77b3: $19

.Advance15x15PostClearBoardBaseTileRow:
    ld a, c                                       ; $77b4: $79
    add $0c                                       ; $77b5: $c6 $0c
    ld c, a                                       ; $77b7: $4f
    cp $87                                        ; $77b8: $fe $87
    jr nz, .Copy15x15PostClearBoardBaseTileRows   ; $77ba: $20 $c5

    ld a, l                                       ; $77bc: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $77bd: $ea $55 $c3
    ld a, h                                       ; $77c0: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $77c1: $ea $56 $c3
    ld a, $06                                     ; $77c4: $3e $06
    ld [rBGTileCopyBank], a                       ; $77c6: $ea $57 $c3
    ld a, $3b                                     ; $77c9: $3e $3b
    ld [rBGTileCopySourceX], a                    ; $77cb: $ea $51 $c3
    add $58                                       ; $77ce: $c6 $58
    ld [rBGTileCopyDestX], a                      ; $77d0: $ea $53 $c3
    ld a, c                                       ; $77d3: $79
    ld [rBGTileCopySourceY], a                    ; $77d4: $ea $52 $c3
    add $04                                       ; $77d7: $c6 $04
    ld [rBGTileCopyDestY], a                      ; $77d9: $ea $54 $c3
    call PrepareBGTileCopy                        ; $77dc: $cd $b0 $08
    ret                                           ; $77df: $c9


RedrawBoardCellEffectFramesFromStateBuffer::
    ld hl, rPuzzleCellStateBufferStart            ; $77e0: $21 $40 $d6
    ld c, $00                                     ; $77e3: $0e $00

.RedrawBoardCellEffectFramesRowLoop:
    ld b, $00                                     ; $77e5: $06 $00

.RedrawBoardCellEffectFramesColumnLoop:
    ld a, b                                       ; $77e7: $78
    ld [rCellEffectTargetColumn], a               ; $77e8: $ea $24 $d8
    ld a, c                                       ; $77eb: $79
    ld [rCellEffectTargetRow], a                  ; $77ec: $ea $25 $d8
    ld a, [hl+]                                   ; $77ef: $2a
    srl a                                         ; $77f0: $cb $3f
    swap a                                        ; $77f2: $cb $37
    call PrepareCellEffectFrameCopy               ; $77f4: $cd $bb $74
    inc b                                         ; $77f7: $04
    ld a, [rPuzzleGridWidth]                      ; $77f8: $fa $00 $d8
    cp b                                          ; $77fb: $b8
    jr nz, .RedrawBoardCellEffectFramesColumnLoop ; $77fc: $20 $e9

    ld a, [rPuzzleGridWidth]                      ; $77fe: $fa $00 $d8
    sub $11                                       ; $7801: $d6 $11
    xor $ff                                       ; $7803: $ee $ff
    add l                                         ; $7805: $85
    ld l, a                                       ; $7806: $6f
    ld a, $00                                     ; $7807: $3e $00
    adc h                                         ; $7809: $8c
    ld h, a                                       ; $780a: $67
    inc c                                         ; $780b: $0c
    ld a, [rPuzzleGridHeight]                     ; $780c: $fa $01 $d8
    cp c                                          ; $780f: $b9
    jr nz, .RedrawBoardCellEffectFramesRowLoop    ; $7810: $20 $d3

    xor a                                         ; $7812: $af
    ret                                           ; $7813: $c9


ApplyHintSelectionToRowAndColumn::
    ld a, [rPuzzleCursorColumn]                   ; $7814: $fa $36 $d6
    ld c, a                                       ; $7817: $4f
    ld a, [rPuzzleAndMenuCursorRow]               ; $7818: $fa $37 $d6
    ld b, a                                       ; $781b: $47
    ld e, c                                       ; $781c: $59
    ld d, $00                                     ; $781d: $16 $00
    ld hl, rPuzzleCellStateBufferStart            ; $781f: $21 $40 $d6
    add hl, de                                    ; $7822: $19
    push bc                                       ; $7823: $c5
    ld b, $00                                     ; $7824: $06 $00

.ApplyHintSelectionToColumnLoop:
    ld a, c                                       ; $7826: $79
    ld [rCellEffectTargetColumn], a               ; $7827: $ea $24 $d8
    ld a, b                                       ; $782a: $78
    ld [rCellEffectTargetRow], a                  ; $782b: $ea $25 $d8
    ld a, [hl]                                    ; $782e: $7e
    and $01                                       ; $782f: $e6 $01
    push af                                       ; $7831: $f5
    swap a                                        ; $7832: $cb $37
    jr nz, .CopyHintSelectionColumnCellFrame      ; $7834: $20 $02

    ld a, $20                                     ; $7836: $3e $20

.CopyHintSelectionColumnCellFrame:
    call PrepareCellEffectFrameCopy               ; $7838: $cd $bb $74
    pop af                                        ; $783b: $f1
    jr z, .MarkHintSelectionColumnCellAsX         ; $783c: $28 $06

    set 1, [hl]                                   ; $783e: $cb $ce
    res 2, [hl]                                   ; $7840: $cb $96
    jr .AdvanceHintSelectionColumnLoop            ; $7842: $18 $04

.MarkHintSelectionColumnCellAsX:
    res 1, [hl]                                   ; $7844: $cb $8e
    set 2, [hl]                                   ; $7846: $cb $d6

.AdvanceHintSelectionColumnLoop:
    ld de, $0010                                  ; $7848: $11 $10 $00
    add hl, de                                    ; $784b: $19
    inc b                                         ; $784c: $04
    ld a, [rPuzzleGridHeight]                     ; $784d: $fa $01 $d8
    cp b                                          ; $7850: $b8
    jr nz, .ApplyHintSelectionToColumnLoop        ; $7851: $20 $d3

    pop bc                                        ; $7853: $c1
    ld e, b                                       ; $7854: $58
    swap e                                        ; $7855: $cb $33
    ld d, $00                                     ; $7857: $16 $00
    ld hl, rPuzzleCellStateBufferStart            ; $7859: $21 $40 $d6
    add hl, de                                    ; $785c: $19
    ld c, $00                                     ; $785d: $0e $00

.ApplyHintSelectionToRowLoop:
    ld a, c                                       ; $785f: $79
    ld [rCellEffectTargetColumn], a               ; $7860: $ea $24 $d8
    ld a, b                                       ; $7863: $78
    ld [rCellEffectTargetRow], a                  ; $7864: $ea $25 $d8
    ld a, [hl]                                    ; $7867: $7e
    and $01                                       ; $7868: $e6 $01
    push af                                       ; $786a: $f5
    swap a                                        ; $786b: $cb $37
    jr nz, .CopyHintSelectionRowCellFrame         ; $786d: $20 $02

    ld a, $20                                     ; $786f: $3e $20

.CopyHintSelectionRowCellFrame:
    call PrepareCellEffectFrameCopy               ; $7871: $cd $bb $74
    pop af                                        ; $7874: $f1
    jr z, .MarkHintSelectionRowCellAsX            ; $7875: $28 $06

    set 1, [hl]                                   ; $7877: $cb $ce
    res 2, [hl]                                   ; $7879: $cb $96
    jr .AdvanceHintSelectionRowLoop               ; $787b: $18 $04

.MarkHintSelectionRowCellAsX:
    res 1, [hl]                                   ; $787d: $cb $8e
    set 2, [hl]                                   ; $787f: $cb $d6

.AdvanceHintSelectionRowLoop:
    inc hl                                        ; $7881: $23
    inc c                                         ; $7882: $0c
    ld a, [rPuzzleGridWidth]                      ; $7883: $fa $00 $d8
    cp c                                          ; $7886: $b9
    jr nz, .ApplyHintSelectionToRowLoop           ; $7887: $20 $d6

    ret                                           ; $7889: $c9


TickMarioBlinkAnimation::
    ld a, [rMarioBlinkAnimationDelay]             ; $788a: $fa $17 $d8
    and a                                         ; $788d: $a7
    jr nz, .TickBlinkFrameDelay                   ; $788e: $20 $20

    ld a, [rMarioBlinkAnimationSequenceCursor]    ; $7890: $fa $18 $d8
    ld c, a                                       ; $7893: $4f
    ld b, $00                                     ; $7894: $06 $00

.FindNextBlinkFrameEntry:
    ld hl, MarioBlinkFrameDelayAndSpriteIdTable   ; $7896: $21 $c0 $78
    add hl, bc                                    ; $7899: $09
    ld a, [hl+]                                   ; $789a: $2a
    and a                                         ; $789b: $a7
    jr nz, .LoadBlinkFrameEntry                   ; $789c: $20 $05

    ld bc, $0000                                  ; $789e: $01 $00 $00
    jr .FindNextBlinkFrameEntry                   ; $78a1: $18 $f3

.LoadBlinkFrameEntry:
    ld [rMarioBlinkAnimationDelay], a             ; $78a3: $ea $17 $d8
    ld a, [hl]                                    ; $78a6: $7e
    ld [rMarioBlinkAnimationSpriteId], a          ; $78a7: $ea $16 $d8
    inc c                                         ; $78aa: $0c
    inc c                                         ; $78ab: $0c
    ld a, c                                       ; $78ac: $79
    ld [rMarioBlinkAnimationSequenceCursor], a    ; $78ad: $ea $18 $d8

.TickBlinkFrameDelay:
    ld hl, rMarioBlinkAnimationDelay              ; $78b0: $21 $17 $d8
    dec [hl]                                      ; $78b3: $35
    ld a, [rMarioBlinkAnimationSpriteId]          ; $78b4: $fa $16 $d8
    cp $ff                                        ; $78b7: $fe $ff
    ret z                                         ; $78b9: $c8

    ld bc, $1810                                  ; $78ba: $01 $10 $18
    jp CopyOAMSpriteById                          ; $78bd: $c3 $cb $20


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
    ld a, [rCellActionStepDelayTimer]             ; $78d9: $fa $1f $d8
    and a                                         ; $78dc: $a7
    jr nz, .TickCellActionStepDelayAndEmitSprite  ; $78dd: $20 $4d

    ld a, [rCellActionStepSequenceState]          ; $78df: $fa $21 $d8
    ld c, a                                       ; $78e2: $4f
    ld b, $00                                     ; $78e3: $06 $00
    ld hl, CellActionStepSequenceStateOffsetTable ; $78e5: $21 $71 $79
    add hl, bc                                    ; $78e8: $09
    ld c, [hl]                                    ; $78e9: $4e
    add hl, bc                                    ; $78ea: $09
    ld a, [rCellActionStepSequenceCursor]         ; $78eb: $fa $20 $d8
    ld c, a                                       ; $78ee: $4f
    ld b, $00                                     ; $78ef: $06 $00

.FindNextCellActionStepEntry:
    push hl                                       ; $78f1: $e5
    add hl, bc                                    ; $78f2: $09
    ld a, [hl+]                                   ; $78f3: $2a
    and a                                         ; $78f4: $a7
    jr nz, .ProcessCellActionStepEntryOrStateAdvance; $78f5: $20 $06

    ld bc, $0000                                  ; $78f7: $01 $00 $00
    pop hl                                        ; $78fa: $e1
    jr .FindNextCellActionStepEntry               ; $78fb: $18 $f4

.ProcessCellActionStepEntryOrStateAdvance:
    cp $ff                                        ; $78fd: $fe $ff
    jr nz, .ApplyCellActionStepDelayAndSpriteId   ; $78ff: $20 $1d

    ld a, [rInputButtonsHeld]                     ; $7901: $fa $1a $c3
    and $03                                       ; $7904: $e6 $03
    jr z, .AdvanceToNextCellActionState           ; $7906: $28 $08

    pop hl                                        ; $7908: $e1
    ld a, $01                                     ; $7909: $3e $01
    ld [rCellActionStepDelayTimer], a             ; $790b: $ea $1f $d8
    jr .TickCellActionStepDelayAndEmitSprite      ; $790e: $18 $1c

.AdvanceToNextCellActionState:
    ld a, [hl+]                                   ; $7910: $2a
    ld [rCellActionStepSequenceState], a          ; $7911: $ea $21 $d8
    xor a                                         ; $7914: $af
    ld [rCellActionStepDelayTimer], a             ; $7915: $ea $1f $d8
    ld [rCellActionStepSequenceCursor], a         ; $7918: $ea $20 $d8
    pop hl                                        ; $791b: $e1
    jr TickCellActionStepSequenceAndEmitSprite    ; $791c: $18 $bb

.ApplyCellActionStepDelayAndSpriteId:
    ld [rCellActionStepDelayTimer], a             ; $791e: $ea $1f $d8
    ld a, [hl]                                    ; $7921: $7e
    ld [rCellActionStepSequenceSpriteId], a       ; $7922: $ea $1e $d8
    inc c                                         ; $7925: $0c
    inc c                                         ; $7926: $0c
    ld a, c                                       ; $7927: $79
    ld [rCellActionStepSequenceCursor], a         ; $7928: $ea $20 $d8
    pop hl                                        ; $792b: $e1

.TickCellActionStepDelayAndEmitSprite:
    ld hl, rCellActionStepDelayTimer              ; $792c: $21 $1f $d8
    dec [hl]                                      ; $792f: $35
    ld a, [rCellActionStepSequenceSpriteId]       ; $7930: $fa $1e $d8
    cp $ff                                        ; $7933: $fe $ff
    ret z                                         ; $7935: $c8

    push af                                       ; $7936: $f5
    ld a, [rPuzzleCursorColumn]                   ; $7937: $fa $36 $d6
    ld e, a                                       ; $793a: $5f
    sla a                                         ; $793b: $cb $27
    add e                                         ; $793d: $83
    sla a                                         ; $793e: $cb $27
    add $3a                                       ; $7940: $c6 $3a
    ld b, a                                       ; $7942: $47
    ld a, [rPuzzleAndMenuCursorRow]               ; $7943: $fa $37 $d6
    ld e, a                                       ; $7946: $5f
    sla a                                         ; $7947: $cb $27
    add e                                         ; $7949: $83
    sla a                                         ; $794a: $cb $27
    add $32                                       ; $794c: $c6 $32
    ld c, a                                       ; $794e: $4f
    pop af                                        ; $794f: $f1
    call CopyOAMSpriteById                        ; $7950: $cd $cb $20
    ld a, [rCellActionStepSequenceState]          ; $7953: $fa $21 $d8
    cp $01                                        ; $7956: $fe $01
    jr z, .CheckCellActionStepSfxTrigger          ; $7958: $28 $03

    cp $02                                        ; $795a: $fe $02
    ret nz                                        ; $795c: $c0

.CheckCellActionStepSfxTrigger:
    ld a, [rCellActionStepSequenceCursor]         ; $795d: $fa $20 $d8
    cp $02                                        ; $7960: $fe $02
    ret nz                                        ; $7962: $c0

    ld a, [rCellActionStepDelayTimer]             ; $7963: $fa $1f $d8
    cp $02                                        ; $7966: $fe $02
    ret nz                                        ; $7968: $c0

    ld c, $06                                     ; $7969: $0e $06
    ld a, $02                                     ; $796b: $3e $02
    call CallSoundCommandDispatcher               ; $796d: $cd $b3 $03
    ret                                           ; $7970: $c9


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
    ld a, [rPuzzleTimerWarningSfxGateFlag]        ; $7a0a: $fa $0e $d8
    and a                                         ; $7a0d: $a7
    ret nz                                        ; $7a0e: $c0

    ld a, $01                                     ; $7a0f: $3e $01
    ld [rPuzzleTimerWarningSfxGateFlag], a        ; $7a11: $ea $0e $d8
    ld a, [rPuzzleTimerMinuteTens]                ; $7a14: $fa $0a $d8
    and a                                         ; $7a17: $a7
    ret nz                                        ; $7a18: $c0

    ld a, [rPuzzleTimerMinuteOnes]                ; $7a19: $fa $09 $d8
    cp $03                                        ; $7a1c: $fe $03
    jr z, .CheckThreeMinuteWarningWindow          ; $7a1e: $28 $0c

    cp $02                                        ; $7a20: $fe $02
    jr z, .CheckTwoMinuteWarningWindow            ; $7a22: $28 $12

    cp $01                                        ; $7a24: $fe $01
    jr z, .CheckOneMinuteWarningWindow            ; $7a26: $28 $20

    and a                                         ; $7a28: $a7
    jr z, .PlayLowTimeWarningSfx                  ; $7a29: $28 $29

    ret                                           ; $7a2b: $c9


.CheckThreeMinuteWarningWindow:
    ld a, [rPuzzleTimerSecondTens]                ; $7a2c: $fa $0c $d8
    ld hl, rPuzzleTimerSecondOnes                 ; $7a2f: $21 $0b $d8
    or [hl]                                       ; $7a32: $b6
    jr z, .CheckTwoMinuteWarningWindow            ; $7a33: $28 $01

    ret                                           ; $7a35: $c9


.CheckTwoMinuteWarningWindow:
    ld a, [rPuzzleTimerSecondTens]                ; $7a36: $fa $0c $d8
    ld hl, rPuzzleTimerSecondOnes                 ; $7a39: $21 $0b $d8
    or [hl]                                       ; $7a3c: $b6
    jr z, .CheckOneMinuteWarningWindow            ; $7a3d: $28 $09

    ld a, [hl]                                    ; $7a3f: $7e
    and a                                         ; $7a40: $a7
    jr z, .PlayLowTimeWarningSfx                  ; $7a41: $28 $11

    cp $05                                        ; $7a43: $fe $05
    jr z, .PlayLowTimeWarningSfx                  ; $7a45: $28 $0d

    ret                                           ; $7a47: $c9


.CheckOneMinuteWarningWindow:
    ld a, [rPuzzleTimerSecondTens]                ; $7a48: $fa $0c $d8
    ld hl, rPuzzleTimerSecondOnes                 ; $7a4b: $21 $0b $d8
    or [hl]                                       ; $7a4e: $b6
    jr z, .PlayLowTimeWarningSfx                  ; $7a4f: $28 $03

    bit 0, [hl]                                   ; $7a51: $cb $46
    ret nz                                        ; $7a53: $c0

.PlayLowTimeWarningSfx:
    ld c, $0d                                     ; $7a54: $0e $0d
    ld a, $02                                     ; $7a56: $3e $02
    call CallSoundCommandDispatcher               ; $7a58: $cd $b3 $03
    ret                                           ; $7a5b: $c9


UpdatePuzzleTimerCountdown::
    ld a, [rPuzzleTimerActive]                    ; $7a5c: $fa $0d $d8
    cp $3c                                        ; $7a5f: $fe $3c
    ret c                                         ; $7a61: $d8

    xor a                                         ; $7a62: $af
    ld [rPuzzleTimerActive], a                    ; $7a63: $ea $0d $d8
    ld [rPuzzleTimerWarningSfxGateFlag], a        ; $7a66: $ea $0e $d8
    ld a, [rGameState_Current]                    ; $7a69: $fa $34 $d6
    cp $09                                        ; $7a6c: $fe $09
    jr z, .TickTimeTrialTimerCountUp              ; $7a6e: $28 $70

    ld a, [rPuzzleTimerSecondOnes]                ; $7a70: $fa $0b $d8
    ld hl, rPuzzleTimerSecondTens                 ; $7a73: $21 $0c $d8
    or [hl]                                       ; $7a76: $b6
    ld hl, rPuzzleTimerMinuteOnes                 ; $7a77: $21 $09 $d8
    or [hl]                                       ; $7a7a: $b6
    ld hl, rPuzzleTimerMinuteTens                 ; $7a7b: $21 $0a $d8
    or [hl]                                       ; $7a7e: $b6
    ret z                                         ; $7a7f: $c8

    ld a, [rPuzzleTimerSecondOnes]                ; $7a80: $fa $0b $d8
    dec a                                         ; $7a83: $3d
    cp $ff                                        ; $7a84: $fe $ff
    jr nz, .StoreSecondOnesAndRender_Down         ; $7a86: $20 $02

    ld a, $09                                     ; $7a88: $3e $09

.StoreSecondOnesAndRender_Down:
    ld [rPuzzleTimerSecondOnes], a                ; $7a8a: $ea $0b $d8
    push af                                       ; $7a8d: $f5
    ld bc, $2b27                                  ; $7a8e: $01 $27 $2b
    call RenderPuzzleTimerDigitTile               ; $7a91: $cd $9b $7b
    pop af                                        ; $7a94: $f1
    ret nz                                        ; $7a95: $c0

    ld a, [rPuzzleTimerSecondTens]                ; $7a96: $fa $0c $d8
    dec a                                         ; $7a99: $3d
    cp $ff                                        ; $7a9a: $fe $ff
    jr nz, .StoreSecondTensAndRender_Down         ; $7a9c: $20 $02

    ld a, $05                                     ; $7a9e: $3e $05

.StoreSecondTensAndRender_Down:
    ld [rPuzzleTimerSecondTens], a                ; $7aa0: $ea $0c $d8
    push af                                       ; $7aa3: $f5
    ld bc, $2327                                  ; $7aa4: $01 $27 $23
    call RenderPuzzleTimerDigitTile               ; $7aa7: $cd $9b $7b
    pop af                                        ; $7aaa: $f1
    ret nz                                        ; $7aab: $c0

    ld a, [rPuzzleTimerMinuteOnes]                ; $7aac: $fa $09 $d8
    dec a                                         ; $7aaf: $3d
    cp $ff                                        ; $7ab0: $fe $ff
    jr nz, .StoreMinuteOnesAndRender_Down         ; $7ab2: $20 $02

    ld a, $09                                     ; $7ab4: $3e $09

.StoreMinuteOnesAndRender_Down:
    ld [rPuzzleTimerMinuteOnes], a                ; $7ab6: $ea $09 $d8
    push af                                       ; $7ab9: $f5
    ld bc, $1527                                  ; $7aba: $01 $27 $15
    call RenderPuzzleTimerDigitTile               ; $7abd: $cd $9b $7b
    pop af                                        ; $7ac0: $f1
    ret nz                                        ; $7ac1: $c0

    ld a, [rPuzzleTimerMinuteTens]                ; $7ac2: $fa $0a $d8
    dec a                                         ; $7ac5: $3d
    cp $ff                                        ; $7ac6: $fe $ff
    jr nz, .StoreMinuteTensAndRender_Down         ; $7ac8: $20 $0a

    xor a                                         ; $7aca: $af
    ld [rPuzzleTimerSecondOnes], a                ; $7acb: $ea $0b $d8
    ld [rPuzzleTimerSecondTens], a                ; $7ace: $ea $0c $d8
    ld [rPuzzleTimerMinuteOnes], a                ; $7ad1: $ea $09 $d8

.StoreMinuteTensAndRender_Down:
    ld [rPuzzleTimerMinuteTens], a                ; $7ad4: $ea $0a $d8
    push af                                       ; $7ad7: $f5
    ld bc, $0d27                                  ; $7ad8: $01 $27 $0d
    call RenderPuzzleTimerDigitTile               ; $7adb: $cd $9b $7b
    pop af                                        ; $7ade: $f1
    ret                                           ; $7adf: $c9


.TickTimeTrialTimerCountUp:
    ld a, [rPuzzleTimerSecondOnes]                ; $7ae0: $fa $0b $d8
    cp $09                                        ; $7ae3: $fe $09
    jr nz, .IncrementSecondOnes_CountUp           ; $7ae5: $20 $16

    ld a, [rPuzzleTimerSecondTens]                ; $7ae7: $fa $0c $d8
    cp $05                                        ; $7aea: $fe $05
    jr nz, .IncrementSecondOnes_CountUp           ; $7aec: $20 $0f

    ld a, [rPuzzleTimerMinuteOnes]                ; $7aee: $fa $09 $d8
    cp $09                                        ; $7af1: $fe $09
    jr nz, .IncrementSecondOnes_CountUp           ; $7af3: $20 $08

    ld a, [rPuzzleTimerMinuteTens]                ; $7af5: $fa $0a $d8
    cp $09                                        ; $7af8: $fe $09
    jr nz, .IncrementSecondOnes_CountUp           ; $7afa: $20 $01

    ret                                           ; $7afc: $c9


.IncrementSecondOnes_CountUp:
    ld a, [rPuzzleTimerSecondOnes]                ; $7afd: $fa $0b $d8
    inc a                                         ; $7b00: $3c
    cp $0a                                        ; $7b01: $fe $0a
    jr nz, .StoreSecondOnesAndRender_Up           ; $7b03: $20 $01

    xor a                                         ; $7b05: $af

.StoreSecondOnesAndRender_Up:
    ld [rPuzzleTimerSecondOnes], a                ; $7b06: $ea $0b $d8
    push af                                       ; $7b09: $f5
    ld bc, $2b27                                  ; $7b0a: $01 $27 $2b
    call RenderPuzzleTimerDigitTile               ; $7b0d: $cd $9b $7b
    pop af                                        ; $7b10: $f1
    ret nz                                        ; $7b11: $c0

    ld a, [rPuzzleTimerSecondTens]                ; $7b12: $fa $0c $d8
    inc a                                         ; $7b15: $3c
    cp $06                                        ; $7b16: $fe $06
    jr nz, .StoreSecondTensAndRender_Up           ; $7b18: $20 $01

    xor a                                         ; $7b1a: $af

.StoreSecondTensAndRender_Up:
    ld [rPuzzleTimerSecondTens], a                ; $7b1b: $ea $0c $d8
    push af                                       ; $7b1e: $f5
    ld bc, $2327                                  ; $7b1f: $01 $27 $23
    call RenderPuzzleTimerDigitTile               ; $7b22: $cd $9b $7b
    pop af                                        ; $7b25: $f1
    ret nz                                        ; $7b26: $c0

    ld a, [rPuzzleTimerMinuteOnes]                ; $7b27: $fa $09 $d8
    inc a                                         ; $7b2a: $3c
    cp $0a                                        ; $7b2b: $fe $0a
    jr nz, .StoreMinuteOnesAndRender_Up           ; $7b2d: $20 $01

    xor a                                         ; $7b2f: $af

.StoreMinuteOnesAndRender_Up:
    ld [rPuzzleTimerMinuteOnes], a                ; $7b30: $ea $09 $d8
    push af                                       ; $7b33: $f5
    ld bc, $1527                                  ; $7b34: $01 $27 $15
    call RenderPuzzleTimerDigitTile               ; $7b37: $cd $9b $7b
    pop af                                        ; $7b3a: $f1
    ret nz                                        ; $7b3b: $c0

    ld a, [rPuzzleTimerMinuteTens]                ; $7b3c: $fa $0a $d8
    inc a                                         ; $7b3f: $3c
    cp $0a                                        ; $7b40: $fe $0a
    jr nz, .StoreMinuteTensAndRender_Up           ; $7b42: $20 $0d

    ld a, $05                                     ; $7b44: $3e $05
    ld [rPuzzleTimerSecondTens], a                ; $7b46: $ea $0c $d8
    ld a, $09                                     ; $7b49: $3e $09
    ld [rPuzzleTimerSecondOnes], a                ; $7b4b: $ea $0b $d8
    ld [rPuzzleTimerMinuteOnes], a                ; $7b4e: $ea $09 $d8

.StoreMinuteTensAndRender_Up:
    ld [rPuzzleTimerMinuteTens], a                ; $7b51: $ea $0a $d8
    push af                                       ; $7b54: $f5
    ld bc, $0d27                                  ; $7b55: $01 $27 $0d
    call RenderPuzzleTimerDigitTile               ; $7b58: $cd $9b $7b
    pop af                                        ; $7b5b: $f1
    ret                                           ; $7b5c: $c9


ResetPuzzleTimerState::
    xor a                                         ; $7b5d: $af
    ld [rPuzzleTimerActive], a                    ; $7b5e: $ea $0d $d8
    ld [rPuzzleTimerSecondOnes], a                ; $7b61: $ea $0b $d8
    ld [rPuzzleTimerSecondTens], a                ; $7b64: $ea $0c $d8
    ld [rPuzzleTimerMinuteOnes], a                ; $7b67: $ea $09 $d8
    ld a, [rGameState_Current]                    ; $7b6a: $fa $34 $d6
    sub $09                                       ; $7b6d: $d6 $09
    jr z, .StoreInitialMinuteTensByMode           ; $7b6f: $28 $02

    ld a, $03                                     ; $7b71: $3e $03

.StoreInitialMinuteTensByMode:
    ld [rPuzzleTimerMinuteTens], a                ; $7b73: $ea $0a $d8

RenderPuzzleTimerDigits::
    ld a, [rPuzzleTimerSecondOnes]                ; $7b76: $fa $0b $d8
    ld bc, $2b27                                  ; $7b79: $01 $27 $2b
    call RenderPuzzleTimerDigitTile               ; $7b7c: $cd $9b $7b
    ld a, [rPuzzleTimerSecondTens]                ; $7b7f: $fa $0c $d8
    ld bc, $2327                                  ; $7b82: $01 $27 $23
    call RenderPuzzleTimerDigitTile               ; $7b85: $cd $9b $7b
    ld a, [rPuzzleTimerMinuteOnes]                ; $7b88: $fa $09 $d8
    ld bc, $1527                                  ; $7b8b: $01 $27 $15
    call RenderPuzzleTimerDigitTile               ; $7b8e: $cd $9b $7b
    ld a, [rPuzzleTimerMinuteTens]                ; $7b91: $fa $0a $d8
    ld bc, $0d27                                  ; $7b94: $01 $27 $0d
    call RenderPuzzleTimerDigitTile               ; $7b97: $cd $9b $7b
    ret                                           ; $7b9a: $c9


RenderPuzzleTimerDigitTile::
    ld e, a                                       ; $7b9b: $5f
    ld d, $00                                     ; $7b9c: $16 $00
    sla e                                         ; $7b9e: $cb $23
    rl d                                          ; $7ba0: $cb $12
    sla e                                         ; $7ba2: $cb $23
    rl d                                          ; $7ba4: $cb $12
    sla e                                         ; $7ba6: $cb $23
    rl d                                          ; $7ba8: $cb $12
    sla e                                         ; $7baa: $cb $23
    rl d                                          ; $7bac: $cb $12
    ld hl, $5840                                  ; $7bae: $21 $40 $58
    add hl, de                                    ; $7bb1: $19
    ld a, l                                       ; $7bb2: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $7bb3: $ea $55 $c3
    ld a, h                                       ; $7bb6: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $7bb7: $ea $56 $c3
    ld a, $06                                     ; $7bba: $3e $06
    ld [rBGTileCopyBank], a                       ; $7bbc: $ea $57 $c3
    ld a, b                                       ; $7bbf: $78
    ld [rBGTileCopySourceX], a                    ; $7bc0: $ea $51 $c3
    add $07                                       ; $7bc3: $c6 $07
    ld [rBGTileCopyDestX], a                      ; $7bc5: $ea $53 $c3
    ld a, c                                       ; $7bc8: $79
    ld [rBGTileCopySourceY], a                    ; $7bc9: $ea $52 $c3
    add $07                                       ; $7bcc: $c6 $07
    ld [rBGTileCopyDestY], a                      ; $7bce: $ea $54 $c3
    jp PrepareBGTileCopy                          ; $7bd1: $c3 $b0 $08


    ld a, $a0                                     ; $7bd4: $3e $a0
    ld [rBGTileCopyBankAddressLow], a             ; $7bd6: $ea $55 $c3
    ld a, $5b                                     ; $7bd9: $3e $5b
    ld [rBGTileCopyBankAddressHigh], a            ; $7bdb: $ea $56 $c3
    ld a, $06                                     ; $7bde: $3e $06
    ld [rBGTileCopyBank], a                       ; $7be0: $ea $57 $c3
    ld a, $08                                     ; $7be3: $3e $08
    ld [rBGTileCopySourceX], a                    ; $7be5: $ea $51 $c3
    add $2f                                       ; $7be8: $c6 $2f
    ld [rBGTileCopyDestX], a                      ; $7bea: $ea $53 $c3
    ld a, $26                                     ; $7bed: $3e $26
    ld [rBGTileCopySourceY], a                    ; $7bef: $ea $52 $c3
    add $09                                       ; $7bf2: $c6 $09
    ld [rBGTileCopyDestY], a                      ; $7bf4: $ea $54 $c3
    jp PrepareBGTileCopy                          ; $7bf7: $c3 $b0 $08


ApplyPuzzleTimerMistakePenalty::
    ld a, [rPuzzleTimerPenaltyStep]               ; $7bfa: $fa $11 $d8
    ld c, a                                       ; $7bfd: $4f
    ld a, [rPuzzleTimerMinuteOnes]                ; $7bfe: $fa $09 $d8
    sub c                                         ; $7c01: $91
    ld [rPuzzleTimerMinuteOnes], a                ; $7c02: $ea $09 $d8
    bit 7, a                                      ; $7c05: $cb $7f
    jr z, .DoubleTimerPenaltyStepIfNot8           ; $7c07: $28 $22

    add $0a                                       ; $7c09: $c6 $0a
    ld [rPuzzleTimerMinuteOnes], a                ; $7c0b: $ea $09 $d8
    ld a, [rPuzzleTimerMinuteTens]                ; $7c0e: $fa $0a $d8
    dec a                                         ; $7c11: $3d
    ld [rPuzzleTimerMinuteTens], a                ; $7c12: $ea $0a $d8
    bit 7, a                                      ; $7c15: $cb $7f
    jr z, .DoubleTimerPenaltyStepIfNot8           ; $7c17: $28 $12

    xor a                                         ; $7c19: $af
    ld [rPuzzleTimerSecondOnes], a                ; $7c1a: $ea $0b $d8
    ld [rPuzzleTimerSecondTens], a                ; $7c1d: $ea $0c $d8
    ld [rPuzzleTimerMinuteOnes], a                ; $7c20: $ea $09 $d8
    ld [rPuzzleTimerMinuteTens], a                ; $7c23: $ea $0a $d8
    ld a, $32                                     ; $7c26: $3e $32
    ld [rPuzzleTimerActive], a                    ; $7c28: $ea $0d $d8

.DoubleTimerPenaltyStepIfNot8:
    ld a, [rPuzzleTimerPenaltyStep]               ; $7c2b: $fa $11 $d8
    cp $08                                        ; $7c2e: $fe $08
    jr z, .RenderTimerAfterPenalty                ; $7c30: $28 $05

    sla a                                         ; $7c32: $cb $27
    ld [rPuzzleTimerPenaltyStep], a               ; $7c34: $ea $11 $d8

.RenderTimerAfterPenalty:
    jp RenderPuzzleTimerDigits                    ; $7c37: $c3 $76 $7b


TickPuzzleTimerCompletionState::
    ld a, [rPuzzleTimerActive]                    ; $7c3a: $fa $0d $d8
    cp $32                                        ; $7c3d: $fe $32
    ret c                                         ; $7c3f: $d8

    ld a, [rPuzzleTimerSecondOnes]                ; $7c40: $fa $0b $d8
    ld hl, rPuzzleTimerSecondTens                 ; $7c43: $21 $0c $d8
    or [hl]                                       ; $7c46: $b6
    ld hl, rPuzzleTimerMinuteOnes                 ; $7c47: $21 $09 $d8
    or [hl]                                       ; $7c4a: $b6
    ld hl, rPuzzleTimerMinuteTens                 ; $7c4b: $21 $0a $d8
    or [hl]                                       ; $7c4e: $b6
    ret nz                                        ; $7c4f: $c0

    ld hl, rPuzzleTimerCompletionState            ; $7c50: $21 $06 $d8
    inc [hl]                                      ; $7c53: $34
    ret                                           ; $7c54: $c9


LoadGameOverMessageTileData::
    ld a, [rPuzzleGridWidth]                      ; $7c55: $fa $00 $d8
    cp $05                                        ; $7c58: $fe $05
    jp z, Load5x5GameOverMessageTileData          ; $7c5a: $ca $65 $7c

    cp $0a                                        ; $7c5d: $fe $0a
    jp z, Load10x10GameOverMessageTileData        ; $7c5f: $ca $8b $7c

    jp Load15x15GameOverMessageTileData           ; $7c62: $c3 $bf $7c


Load5x5GameOverMessageTileData::
    ld a, $00                                     ; $7c65: $3e $00
    ld [rBGTileCopyBankAddressLow], a             ; $7c67: $ea $55 $c3
    ld a, $63                                     ; $7c6a: $3e $63
    ld [rBGTileCopyBankAddressHigh], a            ; $7c6c: $ea $56 $c3
    ld a, $07                                     ; $7c6f: $3e $07
    ld [rBGTileCopyBank], a                       ; $7c71: $ea $57 $c3
    ld a, $3c                                     ; $7c74: $3e $3c
    ld [rBGTileCopySourceX], a                    ; $7c76: $ea $51 $c3
    add $1a                                       ; $7c79: $c6 $1a
    ld [rBGTileCopyDestX], a                      ; $7c7b: $ea $53 $c3
    ld a, $3a                                     ; $7c7e: $3e $3a
    ld [rBGTileCopySourceY], a                    ; $7c80: $ea $52 $c3
    add $0f                                       ; $7c83: $c6 $0f
    ld [rBGTileCopyDestY], a                      ; $7c85: $ea $54 $c3
    jp PrepareBGTileCopy                          ; $7c88: $c3 $b0 $08


Load10x10GameOverMessageTileData::
    ld a, $08                                     ; $7c8b: $3e $08
    ld hl, $5c00                                  ; $7c8d: $21 $00 $5c
    ld de, $8800                                  ; $7c90: $11 $00 $88
    ld bc, $0200                                  ; $7c93: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $7c96: $cd $35 $05
    ld a, $00                                     ; $7c99: $3e $00
    ld [rBGTileCopyBankAddressLow], a             ; $7c9b: $ea $55 $c3
    ld a, $5b                                     ; $7c9e: $3e $5b
    ld [rBGTileCopyBankAddressHigh], a            ; $7ca0: $ea $56 $c3
    ld a, $06                                     ; $7ca3: $3e $06
    ld [rBGTileCopyBank], a                       ; $7ca5: $ea $57 $c3
    ld a, $38                                     ; $7ca8: $3e $38
    ld [rBGTileCopySourceX], a                    ; $7caa: $ea $51 $c3
    add $3f                                       ; $7cad: $c6 $3f
    ld [rBGTileCopyDestX], a                      ; $7caf: $ea $53 $c3
    ld a, $49                                     ; $7cb2: $3e $49
    ld [rBGTileCopySourceY], a                    ; $7cb4: $ea $52 $c3
    add $0f                                       ; $7cb7: $c6 $0f
    ld [rBGTileCopyDestY], a                      ; $7cb9: $ea $54 $c3
    jp PrepareBGTileCopy                          ; $7cbc: $c3 $b0 $08


Load15x15GameOverMessageTileData::
    ld a, $06                                     ; $7cbf: $3e $06
    ld hl, $7400                                  ; $7cc1: $21 $00 $74
    ld de, $8800                                  ; $7cc4: $11 $00 $88
    ld bc, $0200                                  ; $7cc7: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $7cca: $cd $35 $05
    ld a, $00                                     ; $7ccd: $3e $00
    ld [rBGTileCopyBankAddressLow], a             ; $7ccf: $ea $55 $c3
    ld a, $5b                                     ; $7cd2: $3e $5b
    ld [rBGTileCopyBankAddressHigh], a            ; $7cd4: $ea $56 $c3
    ld a, $06                                     ; $7cd7: $3e $06
    ld [rBGTileCopyBank], a                       ; $7cd9: $ea $57 $c3
    ld a, $47                                     ; $7cdc: $3e $47
    ld [rBGTileCopySourceX], a                    ; $7cde: $ea $51 $c3
    add $3f                                       ; $7ce1: $c6 $3f
    ld [rBGTileCopyDestX], a                      ; $7ce3: $ea $53 $c3
    ld a, $57                                     ; $7ce6: $3e $57
    ld [rBGTileCopySourceY], a                    ; $7ce8: $ea $52 $c3
    add $0f                                       ; $7ceb: $c6 $0f
    ld [rBGTileCopyDestY], a                      ; $7ced: $ea $54 $c3
    jp PrepareBGTileCopy                          ; $7cf0: $c3 $b0 $08


TickAndDrawMistakePenaltyPopupSprite::
    ld a, [rMistakePenaltyPopupSpriteX]           ; $7cf3: $fa $26 $d8
    ld b, a                                       ; $7cf6: $47
    ld a, [rMistakePenaltyPopupSpriteY]           ; $7cf7: $fa $27 $d8
    ld c, a                                       ; $7cfa: $4f
    ld a, [rPuzzleTimerPenaltyStep]               ; $7cfb: $fa $11 $d8
    cp $02                                        ; $7cfe: $fe $02
    jr nz, .CheckPenaltyStep4Sprite               ; $7d00: $20 $04

    ld a, $07                                     ; $7d02: $3e $07
    jr .DrawPenaltyPopupAndTickPosition           ; $7d04: $18 $0a

.CheckPenaltyStep4Sprite:
    cp $04                                        ; $7d06: $fe $04
    jr nz, .UsePenaltyStep8OrMoreSprite           ; $7d08: $20 $04

    ld a, $08                                     ; $7d0a: $3e $08
    jr .DrawPenaltyPopupAndTickPosition           ; $7d0c: $18 $02

.UsePenaltyStep8OrMoreSprite:
    ld a, $09                                     ; $7d0e: $3e $09

.DrawPenaltyPopupAndTickPosition:
    call CopyOAMSpriteById                        ; $7d10: $cd $cb $20
    ld a, [rVBlankFrameCounter]                   ; $7d13: $fa $3a $c3
    and $03                                       ; $7d16: $e6 $03
    jr nz, .MaybeAdvancePenaltyPopupX             ; $7d18: $20 $07

    ld a, [rMistakePenaltyPopupSpriteY]           ; $7d1a: $fa $27 $d8
    dec a                                         ; $7d1d: $3d
    ld [rMistakePenaltyPopupSpriteY], a           ; $7d1e: $ea $27 $d8

.MaybeAdvancePenaltyPopupX:
    ld a, [rVBlankFrameCounter]                   ; $7d21: $fa $3a $c3
    and $03                                       ; $7d24: $e6 $03
    ret nz                                        ; $7d26: $c0

    ld a, [rVBlankFrameCounter]                   ; $7d27: $fa $3a $c3
    bit 2, a                                      ; $7d2a: $cb $57
    jr nz, .SkipPenaltyPopupXAdvance              ; $7d2c: $20 $08

    ld a, [rMistakePenaltyPopupSpriteX]           ; $7d2e: $fa $26 $d8
    inc a                                         ; $7d31: $3c
    ld [rMistakePenaltyPopupSpriteX], a           ; $7d32: $ea $26 $d8
    ret                                           ; $7d35: $c9


.SkipPenaltyPopupXAdvance:
    ld a, [rMistakePenaltyPopupSpriteX]           ; $7d36: $fa $26 $d8
    ld [rMistakePenaltyPopupSpriteX], a           ; $7d39: $ea $26 $d8
    ret                                           ; $7d3c: $c9


RecomputePuzzleCellBitSetCounters::
    ld hl, rPuzzleCellStateBufferStart            ; $7d3d: $21 $40 $d6
    ld bc, $0100                                  ; $7d40: $01 $00 $01
    ld e, $00                                     ; $7d43: $1e $00

.CountBit0SetCellsLoop:
    ld a, [hl+]                                   ; $7d45: $2a
    bit 0, a                                      ; $7d46: $cb $47
    jr z, .AdvanceCountBit0SetCellsLoop           ; $7d48: $28 $01

    inc e                                         ; $7d4a: $1c

.AdvanceCountBit0SetCellsLoop:
    dec bc                                        ; $7d4b: $0b
    ld a, c                                       ; $7d4c: $79
    or b                                          ; $7d4d: $b0
    jr nz, .CountBit0SetCellsLoop                 ; $7d4e: $20 $f5

    ld hl, rPuzzleCellStateBufferStart            ; $7d50: $21 $40 $d6
    ld bc, $0100                                  ; $7d53: $01 $00 $01
    ld d, e                                       ; $7d56: $53

.AdjustCountersForBit1SetCellsLoop:
    ld a, [hl+]                                   ; $7d57: $2a
    bit 1, a                                      ; $7d58: $cb $4f
    jr z, .AdvanceAdjustCountersForBit1SetCellsLoop; $7d5a: $28 $06

    dec e                                         ; $7d5c: $1d
    bit 0, a                                      ; $7d5d: $cb $47
    jr z, .AdvanceAdjustCountersForBit1SetCellsLoop; $7d5f: $28 $01

    dec d                                         ; $7d61: $15

.AdvanceAdjustCountersForBit1SetCellsLoop:
    dec bc                                        ; $7d62: $0b
    ld a, c                                       ; $7d63: $79
    or b                                          ; $7d64: $b0
    jr nz, .AdjustCountersForBit1SetCellsLoop     ; $7d65: $20 $f0

    ld a, e                                       ; $7d67: $7b
    ld [rPuzzleBit1ClearCellCounter], a           ; $7d68: $ea $03 $d8
    ld a, d                                       ; $7d6b: $7a
    ld [rPuzzleBit0AndBit1ClearCellCounter], a    ; $7d6c: $ea $02 $d8
    ret                                           ; $7d6f: $c9


PlayPuzzleModeSecondarySfxPairBySelectedCourseBGM::
    ld a, [rSelectedSaveSlotIndex]                ; $7d70: $fa $65 $a0
    ld c, a                                       ; $7d73: $4f
    ld b, $00                                     ; $7d74: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $7d76: $21 $8d $a3
    add hl, bc                                    ; $7d79: $09
    ld a, [rSelectedSaveSlotIndex]                ; $7d7a: $fa $65 $a0
    ld c, a                                       ; $7d7d: $4f
    sla a                                         ; $7d7e: $cb $27
    sla a                                         ; $7d80: $cb $27
    add c                                         ; $7d82: $81
    add [hl]                                      ; $7d83: $86
    ld c, a                                       ; $7d84: $4f
    ld hl, rSaveSlot1PicrossKinokoBGMSelectionIndex; $7d85: $21 $6a $a0
    add hl, bc                                    ; $7d88: $09
    ld c, [hl]                                    ; $7d89: $4e
    ld hl, PuzzleModeSecondarySfxIdTable          ; $7d8a: $21 $9f $7d
    add hl, bc                                    ; $7d8d: $09
    ld c, $00                                     ; $7d8e: $0e $00
    ld a, $01                                     ; $7d90: $3e $01
    call CallSoundCommandDispatcher               ; $7d92: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $7d95: $cd $96 $03
    ld c, [hl]                                    ; $7d98: $4e
    ld a, $01                                     ; $7d99: $3e $01
    call CallSoundCommandDispatcher               ; $7d9b: $cd $b3 $03
    ret                                           ; $7d9e: $c9


PuzzleModeSecondarySfxIdTable::
    db $05, $01, $0b, $03, $02, $00

TickLowTimerMarioSweatIndicator::
    ld hl, rLowTimerMarioSweatIndicatorTickCounter; $7da5: $21 $1c $d8
    inc [hl]                                      ; $7da8: $34
    ld a, [rPuzzleTimerMinuteTens]                ; $7da9: $fa $0a $d8
    and a                                         ; $7dac: $a7
    ret nz                                        ; $7dad: $c0

    ld a, [rPuzzleTimerMinuteOnes]                ; $7dae: $fa $09 $d8
    cp $02                                        ; $7db1: $fe $02
    jr z, .TickBelowThreeMinutesWarningWindow     ; $7db3: $28 $08

    cp $01                                        ; $7db5: $fe $01
    jr z, .TickBelowTwoMinutesWarningWindow       ; $7db7: $28 $10

    and a                                         ; $7db9: $a7
    jr z, .TickBelowOneMinuteWarningWindow        ; $7dba: $28 $19

    ret                                           ; $7dbc: $c9


.TickBelowThreeMinutesWarningWindow:
    ld a, [hl]                                    ; $7dbd: $7e
    cp $3c                                        ; $7dbe: $fe $3c
    jr c, .CheckBelowThreeMinutesWarningSpriteWindow; $7dc0: $38 $02

    xor a                                         ; $7dc2: $af
    ld [hl], a                                    ; $7dc3: $77

.CheckBelowThreeMinutesWarningSpriteWindow:
    cp $08                                        ; $7dc4: $fe $08
    jr c, .DrawMarioSweatWarningSprite            ; $7dc6: $38 $19

    ret                                           ; $7dc8: $c9


.TickBelowTwoMinutesWarningWindow:
    ld a, [hl]                                    ; $7dc9: $7e
    cp $1e                                        ; $7dca: $fe $1e
    jr c, .CheckBelowTwoMinutesWarningSpriteWindow; $7dcc: $38 $02

    xor a                                         ; $7dce: $af
    ld [hl], a                                    ; $7dcf: $77

.CheckBelowTwoMinutesWarningSpriteWindow:
    cp $08                                        ; $7dd0: $fe $08
    jr c, .DrawMarioSweatWarningSprite            ; $7dd2: $38 $0d

    ret                                           ; $7dd4: $c9


.TickBelowOneMinuteWarningWindow:
    ld a, [hl]                                    ; $7dd5: $7e
    cp $0f                                        ; $7dd6: $fe $0f
    jr c, .CheckBelowOneMinuteWarningSpriteWindow ; $7dd8: $38 $02

    xor a                                         ; $7dda: $af
    ld [hl], a                                    ; $7ddb: $77

.CheckBelowOneMinuteWarningSpriteWindow:
    cp $08                                        ; $7ddc: $fe $08
    jr c, .DrawMarioSweatWarningSprite            ; $7dde: $38 $01

    ret                                           ; $7de0: $c9


.DrawMarioSweatWarningSprite:
    ld bc, $2e0c                                  ; $7de1: $01 $0c $2e
    ld a, $0a                                     ; $7de4: $3e $0a
    jp CopyOAMSpriteById                          ; $7de6: $c3 $cb $20


ApplyLowTimerMarioFaceTilesOnce::
    ld a, [rLowTimerMarioFaceTilesAppliedFlag]    ; $7de9: $fa $1d $d8
    and a                                         ; $7dec: $a7
    ret nz                                        ; $7ded: $c0

    ld a, [rPuzzleTimerMinuteTens]                ; $7dee: $fa $0a $d8
    and a                                         ; $7df1: $a7
    ret nz                                        ; $7df2: $c0

    ld a, [rPuzzleTimerMinuteOnes]                ; $7df3: $fa $09 $d8
    cp $03                                        ; $7df6: $fe $03
    ret nc                                        ; $7df8: $d0

    ld a, $01                                     ; $7df9: $3e $01
    ld [rLowTimerMarioFaceTilesAppliedFlag], a    ; $7dfb: $ea $1d $d8
    ld a, [rPuzzleGridWidth]                      ; $7dfe: $fa $00 $d8
    cp $05                                        ; $7e01: $fe $05
    jr nz, .Load10x10LowTimerMarioFaceTiles       ; $7e03: $20 $02

    jr .ReturnFromLowTimerMarioFaceTiles          ; $7e05: $18 $76

.Load10x10LowTimerMarioFaceTiles:
    cp $0a                                        ; $7e07: $fe $0a
    jr nz, .Load15x15LowTimerMarioFaceTiles       ; $7e09: $20 $3a

    ld a, $08                                     ; $7e0b: $3e $08
    ld hl, $58b0                                  ; $7e0d: $21 $b0 $58
    ld de, $88b0                                  ; $7e10: $11 $b0 $88
    ld bc, $0020                                  ; $7e13: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7e16: $cd $35 $05
    ld a, $08                                     ; $7e19: $3e $08
    ld hl, $5900                                  ; $7e1b: $21 $00 $59
    ld de, $8900                                  ; $7e1e: $11 $00 $89
    ld bc, $0020                                  ; $7e21: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7e24: $cd $35 $05
    ld a, $08                                     ; $7e27: $3e $08
    ld hl, $5960                                  ; $7e29: $21 $60 $59
    ld de, $8960                                  ; $7e2c: $11 $60 $89
    ld bc, $0020                                  ; $7e2f: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7e32: $cd $35 $05
    ld a, $08                                     ; $7e35: $3e $08
    ld hl, $59c0                                  ; $7e37: $21 $c0 $59
    ld de, $89c0                                  ; $7e3a: $11 $c0 $89
    ld bc, $0020                                  ; $7e3d: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7e40: $cd $35 $05
    jr .ReturnFromLowTimerMarioFaceTiles          ; $7e43: $18 $38

.Load15x15LowTimerMarioFaceTiles:
    ld a, $06                                     ; $7e45: $3e $06
    ld hl, DrawPuzzleCursorSpritesAndTickStepSequence; $7e47: $21 $b0 $70
    ld de, $88b0                                  ; $7e4a: $11 $b0 $88
    ld bc, $0020                                  ; $7e4d: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7e50: $cd $35 $05
    ld a, $06                                     ; $7e53: $3e $06
    ld hl, $7100                                  ; $7e55: $21 $00 $71
    ld de, $8900                                  ; $7e58: $11 $00 $89
    ld bc, $0020                                  ; $7e5b: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7e5e: $cd $35 $05
    ld a, $06                                     ; $7e61: $3e $06
    ld hl, $7160                                  ; $7e63: $21 $60 $71
    ld de, $8960                                  ; $7e66: $11 $60 $89
    ld bc, $0020                                  ; $7e69: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7e6c: $cd $35 $05
    ld a, $06                                     ; $7e6f: $3e $06
    ld hl, $71c0                                  ; $7e71: $21 $c0 $71
    ld de, $89c0                                  ; $7e74: $11 $c0 $89
    ld bc, $0020                                  ; $7e77: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7e7a: $cd $35 $05

.ReturnFromLowTimerMarioFaceTiles:
    ret                                           ; $7e7d: $c9


    ; padding
    ds $182, $00
