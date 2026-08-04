; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

GameState_03_CourseSelectScreen_PhaseDispatcher::
    ld a, [rStatePhase_Current]                   ; $4000: $fa $35 $d6
    rst RST_18                                    ; $4003: $df

GS03_PhasePointer_00::
    db $0c, $40

GS03_PhasePointer_01::
    db $ff, $40

GS03_PhasePointer_02::
    db $30, $41

GS03_PhasePointer_03::
    db $9b, $41

GS03_StatePhase_00_CourseSelectScreenInit::
    ld a, $43                                     ; $400c: $3e $43
    ld [rLCDCShadow], a                           ; $400e: $ea $2e $c3
    xor a                                         ; $4011: $af
    ld [rBGPShadow], a                            ; $4012: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $4015: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $4018: $ea $31 $c3
    ld [rSCXShadow], a                            ; $401b: $ea $32 $c3
    ld [rSCYShadow], a                            ; $401e: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $4021: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $4024: $cd $ab $05
    ld a, $0b                                     ; $4027: $3e $0b
    ld hl, $5000                                  ; $4029: $21 $00 $50
    ld de, $8000                                  ; $402c: $11 $00 $80
    ld bc, $0300                                  ; $402f: $01 $00 $03
    call BankedTileCopy                           ; $4032: $cd $e4 $04
    ld a, $09                                     ; $4035: $3e $09
    ld hl, GameState_03_CourseSelectScreen_PhaseDispatcher; $4037: $21 $00 $40
    ld de, $8800                                  ; $403a: $11 $00 $88
    ld bc, $1000                                  ; $403d: $01 $00 $10
    call BankedTileCopy                           ; $4040: $cd $e4 $04
    ld a, $0b                                     ; $4043: $3e $0b
    ld hl, $7c00                                  ; $4045: $21 $00 $7c
    ld de, $9800                                  ; $4048: $11 $00 $98
    ld bc, $0400                                  ; $404b: $01 $00 $04
    call BankedTileCopy                           ; $404e: $cd $e4 $04
    ld a, [rSelectedSaveSlotIndex]                ; $4051: $fa $65 $a0
    ld c, a                                       ; $4054: $4f
    ld b, $00                                     ; $4055: $06 $00
    ld hl, rSaveSlot1UnlockProgressState          ; $4057: $21 $87 $a3
    add hl, bc                                    ; $405a: $09
    ld a, [hl]                                    ; $405b: $7e
    dec a                                         ; $405c: $3d
    ld [rMenuCursorRowMaxIndex], a                ; $405d: $ea $3b $d6
    jr z, .ContinueCourseSelectInitAfterCourseTileLoad; $4060: $28 $3d

    push af                                       ; $4062: $f5
    ld a, $09                                     ; $4063: $3e $09
    ld hl, $5000                                  ; $4065: $21 $00 $50
    ld de, $9200                                  ; $4068: $11 $00 $92
    ld bc, $00a0                                  ; $406b: $01 $a0 $00
    call BankedTileCopy                           ; $406e: $cd $e4 $04
    ld a, $09                                     ; $4071: $3e $09
    ld hl, $5100                                  ; $4073: $21 $00 $51
    ld de, $9300                                  ; $4076: $11 $00 $93
    ld bc, $00a0                                  ; $4079: $01 $a0 $00
    call BankedTileCopy                           ; $407c: $cd $e4 $04
    pop af                                        ; $407f: $f1
    dec a                                         ; $4080: $3d
    jr z, .ContinueCourseSelectInitAfterCourseTileLoad; $4081: $28 $1c

    ld a, $09                                     ; $4083: $3e $09
    ld hl, $5200                                  ; $4085: $21 $00 $52
    ld de, $9400                                  ; $4088: $11 $00 $94
    ld bc, $00a0                                  ; $408b: $01 $a0 $00
    call BankedTileCopy                           ; $408e: $cd $e4 $04
    ld a, $09                                     ; $4091: $3e $09
    ld hl, $5300                                  ; $4093: $21 $00 $53
    ld de, $9500                                  ; $4096: $11 $00 $95
    ld bc, $00a0                                  ; $4099: $01 $a0 $00
    call BankedTileCopy                           ; $409c: $cd $e4 $04

.ContinueCourseSelectInitAfterCourseTileLoad:
    ld a, [rSelectedSaveSlotIndex]                ; $409f: $fa $65 $a0
    ld c, a                                       ; $40a2: $4f
    ld b, $00                                     ; $40a3: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $40a5: $21 $8d $a3
    add hl, bc                                    ; $40a8: $09
    ld a, [hl]                                    ; $40a9: $7e
    ld [rPuzzleAndMenuCursorRow], a               ; $40aa: $ea $37 $d6
    call GS03_QueueCourseSelectionHighlightCommandStream; $40ad: $cd $f6 $41
    call ClearShadowOAMBuffer                     ; $40b0: $cd $b6 $05
    ld b, $03                                     ; $40b3: $06 $03
    ld hl, $4e80                                  ; $40b5: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $40b8: $cd $de $05
    ld b, $03                                     ; $40bb: $06 $03
    ld hl, $4ec2                                  ; $40bd: $21 $c2 $4e
    call SwitchBankToBAndJumpToHL                 ; $40c0: $cd $de $05
    ld c, $00                                     ; $40c3: $0e $00
    ld a, $01                                     ; $40c5: $3e $01
    call CallSoundCommandDispatcher               ; $40c7: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $40ca: $cd $99 $03
    ld c, $0e                                     ; $40cd: $0e $0e
    ld a, $01                                     ; $40cf: $3e $01
    call CallSoundCommandDispatcher               ; $40d1: $cd $b6 $03
    call EnableLCDFromShadow                      ; $40d4: $cd $a2 $04
    ld a, [rMenuCursorRowMaxIndex]                ; $40d7: $fa $3b $d6
    cp $02                                        ; $40da: $fe $02
    jr z, .RunCourseSelectFadeIn_AllCoursesUnlocked; $40dc: $28 $0f

    ld b, $03                                     ; $40de: $06 $03
    ld hl, $46b8                                  ; $40e0: $21 $b8 $46
    ld c, $03                                     ; $40e3: $0e $03
    ld de, $0034                                  ; $40e5: $11 $34 $00
    call PlayScreenTransitionFadeIn               ; $40e8: $cd $0d $04
    jr .AdvanceToCourseSelectIdlePhase            ; $40eb: $18 $0d

.RunCourseSelectFadeIn_AllCoursesUnlocked:
    ld b, $03                                     ; $40ed: $06 $03
    ld hl, $46b8                                  ; $40ef: $21 $b8 $46
    ld c, $04                                     ; $40f2: $0e $04
    ld de, $0034                                  ; $40f4: $11 $34 $00
    call PlayScreenTransitionFadeIn               ; $40f7: $cd $0d $04

.AdvanceToCourseSelectIdlePhase:
    ld hl, rStatePhase_Current                    ; $40fa: $21 $35 $d6
    inc [hl]                                      ; $40fd: $34
    ret                                           ; $40fe: $c9


GS03_StatePhase_01_CourseSelectScreenIdle::
    ld b, $03                                     ; $40ff: $06 $03
    ld hl, $4ec2                                  ; $4101: $21 $c2 $4e
    call SwitchBankToBAndJumpToHL                 ; $4104: $cd $de $05
    call GS03_HandleCourseSelectVerticalInput     ; $4107: $cd $be $42
    ld a, [rInputButtonsPressed]                  ; $410a: $fa $1e $c3
    and $09                                       ; $410d: $e6 $09
    jr z, .CheckCourseSelectCancelInput           ; $410f: $28 $0c

    ld c, $03                                     ; $4111: $0e $03
    ld a, $02                                     ; $4113: $3e $02
    call CallSoundCommandDispatcher               ; $4115: $cd $b6 $03
    ld hl, rStatePhase_Current                    ; $4118: $21 $35 $d6
    inc [hl]                                      ; $411b: $34
    ret                                           ; $411c: $c9


.CheckCourseSelectCancelInput:
    ld a, [rInputButtonsPressed]                  ; $411d: $fa $1e $c3
    and $02                                       ; $4120: $e6 $02
    ret z                                         ; $4122: $c8

    ld c, $04                                     ; $4123: $0e $04
    ld a, $02                                     ; $4125: $3e $02
    call CallSoundCommandDispatcher               ; $4127: $cd $b6 $03
    ld a, $03                                     ; $412a: $3e $03
    ld [rStatePhase_Current], a                   ; $412c: $ea $35 $d6
    ret                                           ; $412f: $c9


GS03_StatePhase_02_ConfirmSelectionTransition::
    ld bc, $003c                                  ; $4130: $01 $3c $00
    call DelayFramesByBC                          ; $4133: $cd $fa $05
    ld a, $05                                     ; $4136: $3e $05
    call CallSoundCommandDispatcher               ; $4138: $cd $b6 $03
    ld c, $00                                     ; $413b: $0e $00
    ld a, $01                                     ; $413d: $3e $01
    call CallSoundCommandDispatcher               ; $413f: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $4142: $cd $99 $03
    ld c, $00                                     ; $4145: $0e $00
    ld a, $01                                     ; $4147: $3e $01
    call CallSoundCommandDispatcher               ; $4149: $cd $b6 $03
    ld a, [rMenuCursorRowMaxIndex]                ; $414c: $fa $3b $d6
    cp $02                                        ; $414f: $fe $02
    jr z, .RunConfirmTransitionFadeOut_AllCoursesUnlocked; $4151: $28 $0f

    ld b, $03                                     ; $4153: $06 $03
    ld hl, $46c3                                  ; $4155: $21 $c3 $46
    ld c, $03                                     ; $4158: $0e $03
    ld de, $0043                                  ; $415a: $11 $43 $00
    call PlayScreenTransitionFadeOut              ; $415d: $cd $4e $04
    jr .FinalizeConfirmSelectionTransition        ; $4160: $18 $0d

.RunConfirmTransitionFadeOut_AllCoursesUnlocked:
    ld b, $03                                     ; $4162: $06 $03
    ld hl, $46c3                                  ; $4164: $21 $c3 $46
    ld c, $04                                     ; $4167: $0e $04
    ld de, $0043                                  ; $4169: $11 $43 $00
    call PlayScreenTransitionFadeOut              ; $416c: $cd $4e $04

.FinalizeConfirmSelectionTransition:
    call DisableLCDAtVBlank                       ; $416f: $cd $83 $04
    ld a, [rSelectedSaveSlotIndex]                ; $4172: $fa $65 $a0
    ld c, a                                       ; $4175: $4f
    ld b, $00                                     ; $4176: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $4178: $21 $8d $a3
    add hl, bc                                    ; $417b: $09
    ld a, [rPuzzleAndMenuCursorRow]               ; $417c: $fa $37 $d6
    ld [hl], a                                    ; $417f: $77
    cp $02                                        ; $4180: $fe $02
    jr z, .SetNextGameState_TimeTrial             ; $4182: $28 $0b

    xor a                                         ; $4184: $af
    ld [rStatePhase_Current], a                   ; $4185: $ea $35 $d6
    ld hl, rGameState_Current                     ; $4188: $21 $34 $d6
    inc [hl]                                      ; $418b: $34
    jp RefreshSaveValidationChecksumsAndMirrors   ; $418c: $c3 $1f $1b


.SetNextGameState_TimeTrial:
    xor a                                         ; $418f: $af
    ld [rStatePhase_Current], a                   ; $4190: $ea $35 $d6
    ld a, $07                                     ; $4193: $3e $07
    ld [rGameState_Current], a                    ; $4195: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $4198: $c3 $1f $1b


GS03_StatePhase_03_CancelSelectionTransition::
    ld bc, $003c                                  ; $419b: $01 $3c $00
    call DelayFramesByBC                          ; $419e: $cd $fa $05
    ld a, $05                                     ; $41a1: $3e $05
    call CallSoundCommandDispatcher               ; $41a3: $cd $b6 $03
    ld c, $00                                     ; $41a6: $0e $00
    ld a, $01                                     ; $41a8: $3e $01
    call CallSoundCommandDispatcher               ; $41aa: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $41ad: $cd $99 $03
    ld c, $00                                     ; $41b0: $0e $00
    ld a, $01                                     ; $41b2: $3e $01
    call CallSoundCommandDispatcher               ; $41b4: $cd $b6 $03
    ld a, [rMenuCursorRowMaxIndex]                ; $41b7: $fa $3b $d6
    cp $02                                        ; $41ba: $fe $02
    jr z, .RunCancelTransitionFadeOut_AllCoursesUnlocked; $41bc: $28 $0f

    ld b, $03                                     ; $41be: $06 $03
    ld hl, $46c3                                  ; $41c0: $21 $c3 $46
    ld c, $03                                     ; $41c3: $0e $03
    ld de, $0043                                  ; $41c5: $11 $43 $00
    call PlayScreenTransitionFadeOut              ; $41c8: $cd $4e $04
    jr .FinalizeCancelSelectionTransition         ; $41cb: $18 $0d

.RunCancelTransitionFadeOut_AllCoursesUnlocked:
    ld b, $03                                     ; $41cd: $06 $03
    ld hl, $46c3                                  ; $41cf: $21 $c3 $46
    ld c, $04                                     ; $41d2: $0e $04
    ld de, $0043                                  ; $41d4: $11 $43 $00
    call PlayScreenTransitionFadeOut              ; $41d7: $cd $4e $04

.FinalizeCancelSelectionTransition:
    call DisableLCDAtVBlank                       ; $41da: $cd $83 $04
    ld a, [rSelectedSaveSlotIndex]                ; $41dd: $fa $65 $a0
    ld c, a                                       ; $41e0: $4f
    ld b, $00                                     ; $41e1: $06 $00
    ld hl, rSaveSlot1CourseSelectCursorRow        ; $41e3: $21 $8d $a3
    add hl, bc                                    ; $41e6: $09
    ld a, [rPuzzleAndMenuCursorRow]               ; $41e7: $fa $37 $d6
    ld [hl], a                                    ; $41ea: $77
    xor a                                         ; $41eb: $af
    ld [rStatePhase_Current], a                   ; $41ec: $ea $35 $d6
    ld hl, rGameState_Current                     ; $41ef: $21 $34 $d6
    dec [hl]                                      ; $41f2: $35
    jp RefreshSaveValidationChecksumsAndMirrors   ; $41f3: $c3 $1f $1b


GS03_QueueCourseSelectionHighlightCommandStream::
    ld c, a                                       ; $41f6: $4f
    ld b, $00                                     ; $41f7: $06 $00
    ld hl, CourseSelectHighlightCommandOffsetTable; $41f9: $21 $06 $42
    add hl, bc                                    ; $41fc: $09
    ld c, [hl]                                    ; $41fd: $4e
    add hl, bc                                    ; $41fe: $09
    ld a, $02                                     ; $41ff: $3e $02
    ld c, l                                       ; $4201: $4d
    ld b, h                                       ; $4202: $44
    jp QueueCommandStreamAndProcessIfLCDOff       ; $4203: $c3 $38 $07


CourseSelectHighlightCommandOffsetTable::
    db $03, $1d, $37

KinokoCourseHighlightCommandScript::
    db $98, $a5, $0a, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69
    db $98, $c5, $0a, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79
    db $00

StarCourseHighlightCommandScript::
    db $99, $25, $0a, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89
    db $99, $45, $0a, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99
    db $00

TimeTrialCourseHighlightCommandScript::
    db $99, $a5, $0a, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9
    db $99, $c5, $0a, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9
    db $00

GS03_QueueCourseSelectionUnhighlightCommandStream::
    ld c, a                                       ; $425a: $4f
    ld b, $00                                     ; $425b: $06 $00
    ld hl, CourseSelectUnhighlightCommandOffsetTable; $425d: $21 $6a $42
    add hl, bc                                    ; $4260: $09
    ld c, [hl]                                    ; $4261: $4e
    add hl, bc                                    ; $4262: $09
    ld a, $02                                     ; $4263: $3e $02
    ld c, l                                       ; $4265: $4d
    ld b, h                                       ; $4266: $44
    jp QueueCommandStreamAndProcessIfLCDOff       ; $4267: $c3 $38 $07


CourseSelectUnhighlightCommandOffsetTable::
    db $03, $1d, $37

KinokoCourseUnhighlightCommandScript::
    db $98, $a5, $0a, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09
    db $98, $c5, $0a, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19
    db $00

StarCourseUnhighlightCommandScript::
    db $99, $25, $0a, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29
    db $99, $45, $0a, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39
    db $00

TimeTrialCourseUnhighlightCommandScript::
    db $99, $a5, $0a, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49
    db $99, $c5, $0a, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59
    db $00

GS03_HandleCourseSelectVerticalInput::
    ld a, [rMenuCursorRowMaxIndex]                ; $42be: $fa $3b $d6
    and a                                         ; $42c1: $a7
    ret z                                         ; $42c2: $c8

    ld a, [rInputButtonsPressedOrRepeated]        ; $42c3: $fa $22 $c3
    and $c0                                       ; $42c6: $e6 $c0
    ret z                                         ; $42c8: $c8

    push af                                       ; $42c9: $f5
    ld a, [rPuzzleAndMenuCursorRow]               ; $42ca: $fa $37 $d6
    call GS03_QueueCourseSelectionUnhighlightCommandStream; $42cd: $cd $5a $42
    rst RST_08                                    ; $42d0: $cf
    ld c, $0a                                     ; $42d1: $0e $0a
    ld a, $02                                     ; $42d3: $3e $02
    call CallSoundCommandDispatcher               ; $42d5: $cd $b6 $03
    pop af                                        ; $42d8: $f1
    and $40                                       ; $42d9: $e6 $40

.HandleCourseSelectMoveUp:
    jr z, .HandleCourseSelectMoveDown             ; $42db: $28 $11

    ld a, [rPuzzleAndMenuCursorRow]               ; $42dd: $fa $37 $d6
    dec a                                         ; $42e0: $3d
    cp $ff                                        ; $42e1: $fe $ff
    jr nz, .StoreCursorRowAndQueueSelectionUpdate_UpPath; $42e3: $20 $03

    ld a, [rMenuCursorRowMaxIndex]                ; $42e5: $fa $3b $d6

.StoreCursorRowAndQueueSelectionUpdate_UpPath:
    ld [rPuzzleAndMenuCursorRow], a               ; $42e8: $ea $37 $d6
    jp GS03_QueueCourseSelectionHighlightCommandStream; $42eb: $c3 $f6 $41


.HandleCourseSelectMoveDown:
    ld a, [rPuzzleAndMenuCursorRow]               ; $42ee: $fa $37 $d6
    ld hl, rMenuCursorRowMaxIndex                 ; $42f1: $21 $3b $d6
    cp [hl]                                       ; $42f4: $be
    jr nz, .StoreCursorRowAndQueueSelectionUpdate_DownPath; $42f5: $20 $02

    ld a, $ff                                     ; $42f7: $3e $ff

.StoreCursorRowAndQueueSelectionUpdate_DownPath:
    inc a                                         ; $42f9: $3c
    ld [rPuzzleAndMenuCursorRow], a               ; $42fa: $ea $37 $d6
    jp GS03_QueueCourseSelectionHighlightCommandStream; $42fd: $c3 $f6 $41


GameState_02_GameSelectScreen_PhaseDispatcher::
    ld a, [rStatePhase_Current]                   ; $4300: $fa $35 $d6
    rst RST_18                                    ; $4303: $df

GS02_PhasePointer_00::
    db $0c, $43

GS02_PhasePointer_01::
    db $bd, $43

GS02_PhasePointer_02::
    db $ee, $43

GS02_PhasePointer_03::
    db $58, $44

GS02_StatePhase_00_GameSelectScreenInit::
    ld a, $43                                     ; $430c: $3e $43
    ld [rLCDCShadow], a                           ; $430e: $ea $2e $c3
    xor a                                         ; $4311: $af
    ld [rBGPShadow], a                            ; $4312: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $4315: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $4318: $ea $31 $c3
    ld [rSCXShadow], a                            ; $431b: $ea $32 $c3
    ld [rSCYShadow], a                            ; $431e: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $4321: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $4324: $cd $ab $05
    ld a, $0b                                     ; $4327: $3e $0b
    ld hl, $5000                                  ; $4329: $21 $00 $50
    ld de, $8000                                  ; $432c: $11 $00 $80
    ld bc, $0300                                  ; $432f: $01 $00 $03
    call BankedTileCopy                           ; $4332: $cd $e4 $04
    ld a, $0a                                     ; $4335: $3e $0a
    ld hl, GameState_02_GameSelectScreen_PhaseDispatcher; $4337: $21 $00 $43
    ld de, $8300                                  ; $433a: $11 $00 $83
    ld bc, $1500                                  ; $433d: $01 $00 $15
    call BankedTileCopy                           ; $4340: $cd $e4 $04
    ld a, $0b                                     ; $4343: $3e $0b
    ld hl, $7400                                  ; $4345: $21 $00 $74
    ld de, $9800                                  ; $4348: $11 $00 $98
    ld bc, $0400                                  ; $434b: $01 $00 $04
    call BankedTileCopy                           ; $434e: $cd $e4 $04
    ld a, $2f                                     ; $4351: $3e $2f
    ld [rLYCShadow], a                            ; $4353: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $4356: $21 $37 $c3
    set 6, [hl]                                   ; $4359: $cb $f6
    ld hl, rIE                                    ; $435b: $21 $ff $ff
    set 1, [hl]                                   ; $435e: $cb $ce
    ld a, $01                                     ; $4360: $3e $01
    ld [rLCDCInterruptDispatchIndex], a           ; $4362: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $4365: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $4368: $ea $50 $c3
    ld a, $02                                     ; $436b: $3e $02
    ld [rMenuCursorRowMaxIndex], a                ; $436d: $ea $3b $d6
    ld a, [rSelectedSaveSlotIndex]                ; $4370: $fa $65 $a0
    ld c, a                                       ; $4373: $4f
    ld b, $00                                     ; $4374: $06 $00
    ld hl, rSaveSlot1GameSelectCursorRow          ; $4376: $21 $78 $a0
    add hl, bc                                    ; $4379: $09
    ld a, [hl]                                    ; $437a: $7e
    ld [rPuzzleAndMenuCursorRow], a               ; $437b: $ea $37 $d6
    call GS02_QueueSelectionHighlightCommandStream; $437e: $cd $b1 $44
    call ClearShadowOAMBuffer                     ; $4381: $cd $b6 $05
    ld b, $03                                     ; $4384: $06 $03
    ld hl, $4e80                                  ; $4386: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $4389: $cd $de $05
    ld b, $03                                     ; $438c: $06 $03
    ld hl, $4ec2                                  ; $438e: $21 $c2 $4e
    call SwitchBankToBAndJumpToHL                 ; $4391: $cd $de $05
    ld c, $00                                     ; $4394: $0e $00
    ld a, $01                                     ; $4396: $3e $01
    call CallSoundCommandDispatcher               ; $4398: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $439b: $cd $99 $03
    ld c, $0d                                     ; $439e: $0e $0d
    ld a, $01                                     ; $43a0: $3e $01
    call CallSoundCommandDispatcher               ; $43a2: $cd $b6 $03
    call EnableLCDFromShadow                      ; $43a5: $cd $a2 $04
    call EnsureSGBMaskFreezeDisabled              ; $43a8: $cd $a5 $1f
    ld b, $03                                     ; $43ab: $06 $03
    ld hl, $46d0                                  ; $43ad: $21 $d0 $46
    ld c, $06                                     ; $43b0: $0e $06
    ld de, $0054                                  ; $43b2: $11 $54 $00
    call PlayScreenTransitionFadeIn               ; $43b5: $cd $0d $04
    ld hl, rStatePhase_Current                    ; $43b8: $21 $35 $d6
    inc [hl]                                      ; $43bb: $34
    ret                                           ; $43bc: $c9


GS02_StatePhase_01_GameSelectScreenIdle::
    ld b, $03                                     ; $43bd: $06 $03
    ld hl, $4ec2                                  ; $43bf: $21 $c2 $4e
    call SwitchBankToBAndJumpToHL                 ; $43c2: $cd $de $05
    call GS02_HandleGameSelectVerticalInput       ; $43c5: $cd $b1 $45
    ld a, [rInputButtonsPressed]                  ; $43c8: $fa $1e $c3
    and $09                                       ; $43cb: $e6 $09
    jr z, .CheckGameSelectCancelInput             ; $43cd: $28 $0c

    ld c, $03                                     ; $43cf: $0e $03
    ld a, $02                                     ; $43d1: $3e $02
    call CallSoundCommandDispatcher               ; $43d3: $cd $b6 $03
    ld hl, rStatePhase_Current                    ; $43d6: $21 $35 $d6
    inc [hl]                                      ; $43d9: $34
    ret                                           ; $43da: $c9


.CheckGameSelectCancelInput:
    ld a, [rInputButtonsPressed]                  ; $43db: $fa $1e $c3
    cp $02                                        ; $43de: $fe $02
    ret nz                                        ; $43e0: $c0

    ld c, $04                                     ; $43e1: $0e $04
    ld a, $02                                     ; $43e3: $3e $02
    call CallSoundCommandDispatcher               ; $43e5: $cd $b6 $03
    ld a, $03                                     ; $43e8: $3e $03
    ld [rStatePhase_Current], a                   ; $43ea: $ea $35 $d6
    ret                                           ; $43ed: $c9


GS02_StatePhase_02_ConfirmSelectionTransition::
    ld bc, $003c                                  ; $43ee: $01 $3c $00
    call DelayFramesByBC                          ; $43f1: $cd $fa $05
    ld a, $05                                     ; $43f4: $3e $05
    call CallSoundCommandDispatcher               ; $43f6: $cd $b6 $03
    ld c, $00                                     ; $43f9: $0e $00
    ld a, $01                                     ; $43fb: $3e $01
    call CallSoundCommandDispatcher               ; $43fd: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $4400: $cd $99 $03
    ld c, $00                                     ; $4403: $0e $00
    ld a, $01                                     ; $4405: $3e $01
    call CallSoundCommandDispatcher               ; $4407: $cd $b6 $03
    ld b, $03                                     ; $440a: $06 $03
    ld hl, $46db                                  ; $440c: $21 $db $46
    ld c, $06                                     ; $440f: $0e $06
    ld de, $0063                                  ; $4411: $11 $63 $00
    call PlayScreenTransitionFadeOut              ; $4414: $cd $4e $04
    call DisableLCDAtVBlank                       ; $4417: $cd $83 $04
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $441a: $21 $37 $c3
    res 6, [hl]                                   ; $441d: $cb $b6
    ld hl, rIE                                    ; $441f: $21 $ff $ff
    res 1, [hl]                                   ; $4422: $cb $8e
    xor a                                         ; $4424: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $4425: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $4428: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $442b: $ea $50 $c3
    ld a, [rSelectedSaveSlotIndex]                ; $442e: $fa $65 $a0
    ld c, a                                       ; $4431: $4f
    ld b, $00                                     ; $4432: $06 $00
    ld hl, rSaveSlot1GameSelectCursorRow          ; $4434: $21 $78 $a0
    add hl, bc                                    ; $4437: $09
    ld a, [rPuzzleAndMenuCursorRow]               ; $4438: $fa $37 $d6
    ld [hl], a                                    ; $443b: $77
    ld c, a                                       ; $443c: $4f
    ld b, $00                                     ; $443d: $06 $00
    ld hl, GS02_StatePhase_02_ConfirmSelectionTargetGameStateTable; $443f: $21 $55 $44
    add hl, bc                                    ; $4442: $09
    xor a                                         ; $4443: $af
    ld [rAdvanceOrSkipTimeoutEnabled], a          ; $4444: $ea $35 $d8
    ld [rGS06_HowToPlaySkipRequestedFlag], a      ; $4447: $ea $37 $d8
    xor a                                         ; $444a: $af
    ld [rStatePhase_Current], a                   ; $444b: $ea $35 $d6
    ld a, [hl]                                    ; $444e: $7e
    ld [rGameState_Current], a                    ; $444f: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $4452: $c3 $1f $1b


GS02_StatePhase_02_ConfirmSelectionTargetGameStateTable::
    db $06, $05, $03

GS02_StatePhase_03_CancelSelectionTransition::
    ld bc, $003c                                  ; $4458: $01 $3c $00
    call DelayFramesByBC                          ; $445b: $cd $fa $05
    ld a, $05                                     ; $445e: $3e $05
    call CallSoundCommandDispatcher               ; $4460: $cd $b6 $03
    ld c, $00                                     ; $4463: $0e $00
    ld a, $01                                     ; $4465: $3e $01
    call CallSoundCommandDispatcher               ; $4467: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $446a: $cd $99 $03
    ld c, $00                                     ; $446d: $0e $00
    ld a, $01                                     ; $446f: $3e $01
    call CallSoundCommandDispatcher               ; $4471: $cd $b6 $03
    ld b, $03                                     ; $4474: $06 $03
    ld hl, $46db                                  ; $4476: $21 $db $46
    ld c, $06                                     ; $4479: $0e $06
    ld de, $0063                                  ; $447b: $11 $63 $00
    call PlayScreenTransitionFadeOut              ; $447e: $cd $4e $04
    call DisableLCDAtVBlank                       ; $4481: $cd $83 $04
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $4484: $21 $37 $c3
    res 6, [hl]                                   ; $4487: $cb $b6
    ld hl, rIE                                    ; $4489: $21 $ff $ff
    res 1, [hl]                                   ; $448c: $cb $8e
    xor a                                         ; $448e: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $448f: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $4492: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $4495: $ea $50 $c3
    ld a, [rSelectedSaveSlotIndex]                ; $4498: $fa $65 $a0
    ld c, a                                       ; $449b: $4f
    ld b, $00                                     ; $449c: $06 $00
    ld hl, rSaveSlot1GameSelectCursorRow          ; $449e: $21 $78 $a0
    add hl, bc                                    ; $44a1: $09
    ld a, [rPuzzleAndMenuCursorRow]               ; $44a2: $fa $37 $d6
    ld [hl], a                                    ; $44a5: $77
    xor a                                         ; $44a6: $af
    ld [rStatePhase_Current], a                   ; $44a7: $ea $35 $d6
    ld hl, rGameState_Current                     ; $44aa: $21 $34 $d6
    dec [hl]                                      ; $44ad: $35
    jp RefreshSaveValidationChecksumsAndMirrors   ; $44ae: $c3 $1f $1b


GS02_QueueSelectionHighlightCommandStream::
    ld c, a                                       ; $44b1: $4f
    ld b, $00                                     ; $44b2: $06 $00
    ld hl, GameSelectHighlightCommandOffsetTable  ; $44b4: $21 $c1 $44
    add hl, bc                                    ; $44b7: $09
    ld c, [hl]                                    ; $44b8: $4e
    add hl, bc                                    ; $44b9: $09
    ld a, $02                                     ; $44ba: $3e $02
    ld c, l                                       ; $44bc: $4d
    ld b, h                                       ; $44bd: $44
    jp QueueCommandStreamAndProcessIfLCDOff       ; $44be: $c3 $38 $07


GameSelectHighlightCommandOffsetTable::
    db $04, $1e, $38, $52

HowToPlayHighlightCommandScript::
    db $98, $85, $0a, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba
    db $98, $a5, $0a, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4
    db $00

EasyPicrossHighlightCommandScript::
    db $99, $05, $0a, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce
    db $99, $25, $0a, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8
    db $00

PicrossHighlightCommandScript::
    db $99, $85, $0a, $fe, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $ff
    db $99, $a5, $0a, $0e, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $0f
    db $00

UnusedHighlightCommandScript::
    db $99, $a5, $0a, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06
    db $99, $c5, $0a, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10
    db $00

GS02_QueueSelectionUnhighlightCommandStream::
    ld c, a                                       ; $4531: $4f
    ld b, $00                                     ; $4532: $06 $00
    ld hl, GameSelectUnhighlightCommandOffsetTable; $4534: $21 $41 $45
    add hl, bc                                    ; $4537: $09
    ld c, [hl]                                    ; $4538: $4e
    add hl, bc                                    ; $4539: $09
    ld a, $02                                     ; $453a: $3e $02
    ld c, l                                       ; $453c: $4d
    ld b, h                                       ; $453d: $44
    jp QueueCommandStreamAndProcessIfLCDOff       ; $453e: $c3 $38 $07


GameSelectUnhighlightCommandOffsetTable::
    db $04, $1e, $38, $52

HowToPlayUnhighlightCommandScript::
    db $98, $85, $0a, $97, $73, $74, $75, $76, $77, $78, $79, $7a, $a0
    db $98, $a5, $0a, $a1, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $aa
    db $00

EasyPicrossUnhighlightCommandScript::
    db $99, $05, $0a, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c
    db $99, $25, $0a, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96
    db $00

PicrossUnhighlightCommandScript::
    db $99, $85, $0a, $7c, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $7d
    db $99, $a5, $0a, $7e, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $7f
    db $00

UnusedUnhighlightCommandScript::
    db $99, $a5, $0a, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2
    db $99, $c5, $0a, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc
    db $00

GS02_HandleGameSelectVerticalInput::
    ld a, [rInputButtonsPressedOrRepeated]        ; $45b1: $fa $22 $c3
    and $c0                                       ; $45b4: $e6 $c0
    ret z                                         ; $45b6: $c8

    push af                                       ; $45b7: $f5
    ld a, [rPuzzleAndMenuCursorRow]               ; $45b8: $fa $37 $d6
    call GS02_QueueSelectionUnhighlightCommandStream; $45bb: $cd $31 $45
    rst RST_08                                    ; $45be: $cf
    ld c, $0a                                     ; $45bf: $0e $0a
    ld a, $02                                     ; $45c1: $3e $02
    call CallSoundCommandDispatcher               ; $45c3: $cd $b6 $03
    pop af                                        ; $45c6: $f1
    and $40                                       ; $45c7: $e6 $40
    jr z, .HandleGameSelectMoveDown               ; $45c9: $28 $11

    ld a, [rPuzzleAndMenuCursorRow]               ; $45cb: $fa $37 $d6
    dec a                                         ; $45ce: $3d
    cp $ff                                        ; $45cf: $fe $ff
    jr nz, .StoreCursorRowAndQueueSelectionUpdate_UpPath; $45d1: $20 $03

    ld a, [rMenuCursorRowMaxIndex]                ; $45d3: $fa $3b $d6

.StoreCursorRowAndQueueSelectionUpdate_UpPath:
    ld [rPuzzleAndMenuCursorRow], a               ; $45d6: $ea $37 $d6
    jp GS02_QueueSelectionHighlightCommandStream  ; $45d9: $c3 $b1 $44


.HandleGameSelectMoveDown:
    ld a, [rPuzzleAndMenuCursorRow]               ; $45dc: $fa $37 $d6
    ld hl, rMenuCursorRowMaxIndex                 ; $45df: $21 $3b $d6
    cp [hl]                                       ; $45e2: $be
    jr nz, .StoreCursorRowAndQueueSelectionUpdate_DownPath; $45e3: $20 $02

    ld a, $ff                                     ; $45e5: $3e $ff

.StoreCursorRowAndQueueSelectionUpdate_DownPath:
    inc a                                         ; $45e7: $3c
    ld [rPuzzleAndMenuCursorRow], a               ; $45e8: $ea $37 $d6
    jp GS02_QueueSelectionHighlightCommandStream  ; $45eb: $c3 $b1 $44


InitializeMainLoopAndEnter::
    ld a, $0c                                     ; $45ee: $3e $0c
    ld [rInputRepeatInitialDelay], a              ; $45f0: $ea $18 $c3
    ld a, $04                                     ; $45f3: $3e $04
    ld [rInputRepeatSubsequentInterval], a        ; $45f5: $ea $19 $c3
    xor a                                         ; $45f8: $af
    ld [rGameState_Current], a                    ; $45f9: $ea $34 $d6
    ld [rStatePhase_Current], a                   ; $45fc: $ea $35 $d6
    ld [rMainLoopInitScratchFlag_Unsure], a       ; $45ff: $ea $10 $c3

.MainLoop:
    call DispatchCurrentGameState                 ; $4602: $cd $0b $46
    call ClearShadowOAMBufferFromCursor           ; $4605: $cd $c5 $05
    rst RST_08                                    ; $4608: $cf
    jr .MainLoop                                  ; $4609: $18 $f7

DispatchCurrentGameState::
    ld a, [rGameState_Current]                    ; $460b: $fa $34 $d6
    call GameStateDispatcher                      ; $460e: $cd $73 $03

StatePointer_00::
    db $87, $4f, $03

StatePointer_01::
    db $4f, $47, $02

StatePointer_02::
    db $00, $43, $02

StatePointer_03::
    db $00, $40, $02

StatePointer_04::
    db $8a, $43, $01

StatePointer_05::
    db $6d, $52, $01

StatePointer_06::
    db $11, $21, $00

StatePointer_07::
    db $55, $4c, $02

StatePointer_08::
    db $7e, $5d, $01

StatePointer_09::
    db $fc, $63, $01

StatePointer_0a::
    db $6d, $68, $01

GS08_PauseMenuMainSelectionInputHandler_Banked::
    ld a, [rGS08_PauseMenuMainSelection]          ; $4632: $fa $3a $d8
    add $40                                       ; $4635: $c6 $40
    ld bc, $4038                                  ; $4637: $01 $38 $40
    call CopyOAMSpriteById                        ; $463a: $cd $ce $20
    ld a, $3c                                     ; $463d: $3e $3c
    ld bc, $4038                                  ; $463f: $01 $38 $40
    call CopyOAMSpriteById                        ; $4642: $cd $ce $20
    ld a, [rInputButtonsPressedOrRepeated]        ; $4645: $fa $22 $c3
    and $c0                                       ; $4648: $e6 $c0
    jr z, .ReturnFromPauseMenuMainSelectionInputHandler; $464a: $28 $23

    push af                                       ; $464c: $f5
    ld c, $0a                                     ; $464d: $0e $0a
    ld a, $02                                     ; $464f: $3e $02
    call CallSoundCommandDispatcher               ; $4651: $cd $b6 $03
    pop af                                        ; $4654: $f1
    and $40                                       ; $4655: $e6 $40
    ld a, [rGS08_PauseMenuMainSelection]          ; $4657: $fa $3a $d8
    jr z, .HandlePauseMenuSelectionMoveDown       ; $465a: $28 $09

    dec a                                         ; $465c: $3d
    cp $ff                                        ; $465d: $fe $ff
    jr nz, .StorePauseMenuSelectionAndRestoreAF   ; $465f: $20 $0a

    ld a, $02                                     ; $4661: $3e $02
    jr .StorePauseMenuSelectionAndRestoreAF       ; $4663: $18 $06

.HandlePauseMenuSelectionMoveDown:
    inc a                                         ; $4665: $3c
    cp $03                                        ; $4666: $fe $03
    jr nz, .StorePauseMenuSelectionAndRestoreAF   ; $4668: $20 $01

    xor a                                         ; $466a: $af

.StorePauseMenuSelectionAndRestoreAF:
    ld [rGS08_PauseMenuMainSelection], a          ; $466b: $ea $3a $d8
    pop af                                        ; $466e: $f1

.ReturnFromPauseMenuMainSelectionInputHandler:
    jp ReturnFromBankedJumpRestoreBank            ; $466f: $c3 $ea $05


GS08_PauseMenuSavePromptSelectionInputHandler_Banked::
    ld a, [rGS08_PauseMenuSavePromptSelection]    ; $4672: $fa $3b $d8
    add $43                                       ; $4675: $c6 $43
    ld bc, $4038                                  ; $4677: $01 $38 $40
    call CopyOAMSpriteById                        ; $467a: $cd $ce $20
    ld a, $3f                                     ; $467d: $3e $3f
    ld bc, $4038                                  ; $467f: $01 $38 $40
    call CopyOAMSpriteById                        ; $4682: $cd $ce $20
    ld a, [rInputButtonsPressedOrRepeated]        ; $4685: $fa $22 $c3
    and $c0                                       ; $4688: $e6 $c0
    jr z, .ReturnFromPauseMenuSavePromptSelectionInputHandler; $468a: $28 $23

    push af                                       ; $468c: $f5
    ld c, $0a                                     ; $468d: $0e $0a
    ld a, $02                                     ; $468f: $3e $02
    call CallSoundCommandDispatcher               ; $4691: $cd $b6 $03
    pop af                                        ; $4694: $f1
    and $40                                       ; $4695: $e6 $40
    ld a, [rGS08_PauseMenuSavePromptSelection]    ; $4697: $fa $3b $d8
    jr z, .HandlePauseMenuSavePromptSelectionMoveDown; $469a: $28 $09

    dec a                                         ; $469c: $3d
    cp $ff                                        ; $469d: $fe $ff
    jr nz, .StorePauseMenuSavePromptSelectionAndRestoreAF; $469f: $20 $0a

    ld a, $01                                     ; $46a1: $3e $01
    jr .StorePauseMenuSavePromptSelectionAndRestoreAF; $46a3: $18 $06

.HandlePauseMenuSavePromptSelectionMoveDown:
    inc a                                         ; $46a5: $3c
    cp $02                                        ; $46a6: $fe $02
    jr nz, .StorePauseMenuSavePromptSelectionAndRestoreAF; $46a8: $20 $01

    xor a                                         ; $46aa: $af

.StorePauseMenuSavePromptSelectionAndRestoreAF:
    ld [rGS08_PauseMenuSavePromptSelection], a    ; $46ab: $ea $3b $d8
    pop af                                        ; $46ae: $f1

.ReturnFromPauseMenuSavePromptSelectionInputHandler:
    jp ReturnFromBankedJumpRestoreBank            ; $46af: $c3 $ea $05


GS08_PauseMenuBGMSubmenuSelectionInputHandler_Banked::
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]    ; $46b2: $fa $3c $d8
    add $45                                       ; $46b5: $c6 $45
    ld bc, $4038                                  ; $46b7: $01 $38 $40
    call CopyOAMSpriteById                        ; $46ba: $cd $ce $20
    ld a, $3e                                     ; $46bd: $3e $3e
    ld bc, $4038                                  ; $46bf: $01 $38 $40
    call CopyOAMSpriteById                        ; $46c2: $cd $ce $20
    ld a, [rInputButtonsPressedOrRepeated]        ; $46c5: $fa $22 $c3
    and $c0                                       ; $46c8: $e6 $c0
    jr z, .ReturnFromPauseMenuBGMSubmenuSelectionInputHandler; $46ca: $28 $3a

    push af                                       ; $46cc: $f5
    ld c, $0a                                     ; $46cd: $0e $0a
    ld a, $02                                     ; $46cf: $3e $02
    call CallSoundCommandDispatcher               ; $46d1: $cd $b6 $03
    pop af                                        ; $46d4: $f1
    and $40                                       ; $46d5: $e6 $40
    ld a, [rGS08_PauseMenuBGMSubmenuSelection]    ; $46d7: $fa $3c $d8
    jr z, .HandlePauseMenuBGMSubmenuSelectionMoveDown; $46da: $28 $09

    dec a                                         ; $46dc: $3d
    cp $ff                                        ; $46dd: $fe $ff
    jr nz, .StorePauseMenuBGMSubmenuSelectionAndPlayPreviewSfx; $46df: $20 $0a

    ld a, $05                                     ; $46e1: $3e $05
    jr .StorePauseMenuBGMSubmenuSelectionAndPlayPreviewSfx; $46e3: $18 $06

.HandlePauseMenuBGMSubmenuSelectionMoveDown:
    inc a                                         ; $46e5: $3c
    cp $06                                        ; $46e6: $fe $06
    jr nz, .StorePauseMenuBGMSubmenuSelectionAndPlayPreviewSfx; $46e8: $20 $01

    xor a                                         ; $46ea: $af

.StorePauseMenuBGMSubmenuSelectionAndPlayPreviewSfx:
    ld [rGS08_PauseMenuBGMSubmenuSelection], a    ; $46eb: $ea $3c $d8
    ld c, a                                       ; $46ee: $4f
    ld b, $00                                     ; $46ef: $06 $00
    ld hl, GS08_PauseMenuBGMSubmenuPreviewSfxIdTable; $46f1: $21 $09 $47
    add hl, bc                                    ; $46f4: $09
    ld c, $00                                     ; $46f5: $0e $00
    ld a, $01                                     ; $46f7: $3e $01
    call CallSoundCommandDispatcher               ; $46f9: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $46fc: $cd $99 $03
    ld c, [hl]                                    ; $46ff: $4e
    ld a, $01                                     ; $4700: $3e $01
    call CallSoundCommandDispatcher               ; $4702: $cd $b6 $03
    pop af                                        ; $4705: $f1

.ReturnFromPauseMenuBGMSubmenuSelectionInputHandler:
    jp ReturnFromBankedJumpRestoreBank            ; $4706: $c3 $ea $05


GS08_PauseMenuBGMSubmenuPreviewSfxIdTable::
    db $05, $01, $0b, $03, $02, $00

GS08_PauseMenuGiveUpPromptSelectionInputHandler_Banked::
    ld a, [rGS08_PauseMenuGiveUpPromptSelection]  ; $470f: $fa $3d $d8
    add $43                                       ; $4712: $c6 $43
    ld bc, $4038                                  ; $4714: $01 $38 $40
    call CopyOAMSpriteById                        ; $4717: $cd $ce $20
    ld a, $3f                                     ; $471a: $3e $3f
    ld bc, $4038                                  ; $471c: $01 $38 $40
    call CopyOAMSpriteById                        ; $471f: $cd $ce $20
    ld a, [rInputButtonsPressedOrRepeated]        ; $4722: $fa $22 $c3
    and $c0                                       ; $4725: $e6 $c0
    jr z, .ReturnFromPauseMenuGiveUpPromptSelectionInputHandler; $4727: $28 $23

    push af                                       ; $4729: $f5
    ld c, $0a                                     ; $472a: $0e $0a
    ld a, $02                                     ; $472c: $3e $02
    call CallSoundCommandDispatcher               ; $472e: $cd $b6 $03
    pop af                                        ; $4731: $f1
    and $40                                       ; $4732: $e6 $40
    ld a, [rGS08_PauseMenuGiveUpPromptSelection]  ; $4734: $fa $3d $d8
    jr z, .HandlePauseMenuGiveUpPromptSelectionMoveDown; $4737: $28 $09

    dec a                                         ; $4739: $3d
    cp $ff                                        ; $473a: $fe $ff
    jr nz, .StorePauseMenuGiveUpPromptSelectionAndRestoreAF; $473c: $20 $0a

    ld a, $01                                     ; $473e: $3e $01
    jr .StorePauseMenuGiveUpPromptSelectionAndRestoreAF; $4740: $18 $06

.HandlePauseMenuGiveUpPromptSelectionMoveDown:
    inc a                                         ; $4742: $3c
    cp $02                                        ; $4743: $fe $02
    jr nz, .StorePauseMenuGiveUpPromptSelectionAndRestoreAF; $4745: $20 $01

    xor a                                         ; $4747: $af

.StorePauseMenuGiveUpPromptSelectionAndRestoreAF:
    ld [rGS08_PauseMenuGiveUpPromptSelection], a  ; $4748: $ea $3d $d8
    pop af                                        ; $474b: $f1

.ReturnFromPauseMenuGiveUpPromptSelectionInputHandler:
    jp ReturnFromBankedJumpRestoreBank            ; $474c: $c3 $ea $05


GameState_01_DataSelectScreen_PhaseDispatcher::
    ld a, [rStatePhase_Current]                   ; $474f: $fa $35 $d6
    rst RST_18                                    ; $4752: $df

GS01_PhasePointer_00::
    db $59, $47

GS01_PhasePointer_01::
    db $f1, $47

GS01_PhasePointer_02::
    db $40, $49

GS01_StatePhase_00_DataSelectScreenInit::
    ld a, $43                                     ; $4759: $3e $43
    ld [rLCDCShadow], a                           ; $475b: $ea $2e $c3
    xor a                                         ; $475e: $af
    ld [rBGPShadow], a                            ; $475f: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $4762: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $4765: $ea $31 $c3
    ld [rSCXShadow], a                            ; $4768: $ea $32 $c3
    ld [rSCYShadow], a                            ; $476b: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $476e: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $4771: $cd $ab $05
    ld a, $0b                                     ; $4774: $3e $0b
    ld hl, $5000                                  ; $4776: $21 $00 $50
    ld de, $8000                                  ; $4779: $11 $00 $80
    ld bc, $0300                                  ; $477c: $01 $00 $03
    call BankedTileCopy                           ; $477f: $cd $e4 $04
    ld a, $09                                     ; $4782: $3e $09
    ld hl, $5800                                  ; $4784: $21 $00 $58
    ld de, $8800                                  ; $4787: $11 $00 $88
    ld bc, $1000                                  ; $478a: $01 $00 $10
    call BankedTileCopy                           ; $478d: $cd $e4 $04
    ld a, $0b                                     ; $4790: $3e $0b
    ld hl, $7800                                  ; $4792: $21 $00 $78
    ld de, $9800                                  ; $4795: $11 $00 $98
    ld bc, $0400                                  ; $4798: $01 $00 $04
    call BankedTileCopy                           ; $479b: $cd $e4 $04
    xor a                                         ; $479e: $af
    call GS01_BuildSaveSlotTemplateCommandStream  ; $479f: $cd $d5 $4a
    ld a, $01                                     ; $47a2: $3e $01
    call GS01_BuildSaveSlotTemplateCommandStream  ; $47a4: $cd $d5 $4a
    ld a, $02                                     ; $47a7: $3e $02
    call GS01_BuildSaveSlotTemplateCommandStream  ; $47a9: $cd $d5 $4a
    ld a, [rSelectedSaveSlotIndex]                ; $47ac: $fa $65 $a0
    ld [rPuzzleAndMenuCursorRow], a               ; $47af: $ea $37 $d6
    call GS01_BuildSelectedSaveSlotTemplateCommandStream; $47b2: $cd $8e $49
    call ClearShadowOAMBuffer                     ; $47b5: $cd $b6 $05
    ld b, $03                                     ; $47b8: $06 $03
    ld hl, $4e80                                  ; $47ba: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $47bd: $cd $de $05
    ld b, $03                                     ; $47c0: $06 $03
    ld hl, $4ea6                                  ; $47c2: $21 $a6 $4e
    call SwitchBankToBAndJumpToHL                 ; $47c5: $cd $de $05
    ld c, $00                                     ; $47c8: $0e $00
    ld a, $01                                     ; $47ca: $3e $01
    call CallSoundCommandDispatcher               ; $47cc: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $47cf: $cd $99 $03
    ld c, $0d                                     ; $47d2: $0e $0d
    ld a, $01                                     ; $47d4: $3e $01
    call CallSoundCommandDispatcher               ; $47d6: $cd $b6 $03
    call EnableLCDFromShadow                      ; $47d9: $cd $a2 $04
    call EnsureSGBMaskFreezeDisabled              ; $47dc: $cd $a5 $1f
    ld b, $03                                     ; $47df: $06 $03
    ld hl, $46c4                                  ; $47e1: $21 $c4 $46
    ld c, $05                                     ; $47e4: $0e $05
    ld de, $0044                                  ; $47e6: $11 $44 $00
    call PlayScreenTransitionFadeIn               ; $47e9: $cd $0d $04
    ld hl, rStatePhase_Current                    ; $47ec: $21 $35 $d6
    inc [hl]                                      ; $47ef: $34
    ret                                           ; $47f0: $c9


GS01_StatePhase_01_DataSelectScreenIdle::
    ld b, $03                                     ; $47f1: $06 $03
    ld hl, $4ea6                                  ; $47f3: $21 $a6 $4e
    call SwitchBankToBAndJumpToHL                 ; $47f6: $cd $de $05
    call GS01_HandleDataSelectVerticalInput       ; $47f9: $cd $1c $4c
    ld a, [rInputButtonsHeld]                     ; $47fc: $fa $1a $c3
    bit 2, a                                      ; $47ff: $cb $57
    jr z, .CheckDataSelectAOrStartInput           ; $4801: $28 $06

    cp $07                                        ; $4803: $fe $07
    ret nz                                        ; $4805: $c0

    jp GS01_RunEraseSelectedSavePrompt            ; $4806: $c3 $1d $48


.CheckDataSelectAOrStartInput:
    ld a, [rInputButtonsPressed]                  ; $4809: $fa $1e $c3
    and $09                                       ; $480c: $e6 $09
    jr z, .ReturnIfNoDataSelectAOrStart           ; $480e: $28 $0c

    ld c, $03                                     ; $4810: $0e $03
    ld a, $02                                     ; $4812: $3e $02
    call CallSoundCommandDispatcher               ; $4814: $cd $b6 $03
    ld hl, rStatePhase_Current                    ; $4817: $21 $35 $d6
    inc [hl]                                      ; $481a: $34
    ret                                           ; $481b: $c9


.ReturnIfNoDataSelectAOrStart:
    ret                                           ; $481c: $c9


GS01_RunEraseSelectedSavePrompt::
    call ClearShadowOAMBufferFromCursor           ; $481d: $cd $c5 $05
    ld bc, $0014                                  ; $4820: $01 $14 $00
    call DelayFramesByBC                          ; $4823: $cd $fa $05

.EraseSelectedSavePromptLoop:
    ld b, $03                                     ; $4826: $06 $03
    ld hl, $4ec2                                  ; $4828: $21 $c2 $4e
    call SwitchBankToBAndJumpToHL                 ; $482b: $cd $de $05
    ld a, [rVBlankFrameCounter]                   ; $482e: $fa $3a $c3
    bit 4, a                                      ; $4831: $cb $67
    jr nz, .CheckEraseSelectedSaveConfirmInput    ; $4833: $20 $11

    ld a, [rPuzzleAndMenuCursorRow]               ; $4835: $fa $37 $d6
    swap a                                        ; $4838: $cb $37
    sla a                                         ; $483a: $cb $27
    add $10                                       ; $483c: $c6 $10
    ld c, a                                       ; $483e: $4f
    ld b, $30                                     ; $483f: $06 $30
    ld a, $4b                                     ; $4841: $3e $4b
    call CopyOAMSpriteById                        ; $4843: $cd $ce $20

.CheckEraseSelectedSaveConfirmInput:
    ld a, [rInputButtonsPressed]                  ; $4846: $fa $1e $c3
    bit 0, a                                      ; $4849: $cb $47
    jr z, .CheckEraseSelectedSaveCancelInput      ; $484b: $28 $4b

    ld a, [rPuzzleAndMenuCursorRow]               ; $484d: $fa $37 $d6
    ld c, a                                       ; $4850: $4f
    ld b, $00                                     ; $4851: $06 $00
    ld hl, EraseSelectedSaveSlotDestinationPointerOffsetTable; $4853: $21 $a2 $48
    add hl, bc                                    ; $4856: $09
    ld c, [hl]                                    ; $4857: $4e
    add hl, bc                                    ; $4858: $09
    ld bc, EraseSelectedSaveSlotRewriteScript     ; $4859: $01 $0b $49

.RunEraseSelectedSaveRewriteStepLoop:
    ld a, [hl+]                                   ; $485c: $2a
    ld e, a                                       ; $485d: $5f
    ld d, [hl]                                    ; $485e: $56
    or d                                          ; $485f: $b2
    jr z, .FinalizeEraseSelectedSaveRewrite       ; $4860: $28 $2b

    inc hl                                        ; $4862: $23
    ld a, [bc]                                    ; $4863: $0a
    inc bc                                        ; $4864: $03
    and a                                         ; $4865: $a7
    jr nz, .CopyLiteralEraseSelectedSaveRange     ; $4866: $20 $12

    push hl                                       ; $4868: $e5
    ld a, [bc]                                    ; $4869: $0a
    ld l, a                                       ; $486a: $6f
    inc bc                                        ; $486b: $03
    ld a, [bc]                                    ; $486c: $0a
    ld h, a                                       ; $486d: $67
    inc bc                                        ; $486e: $03

.ZeroFillEraseSelectedSaveRangeLoop:
    xor a                                         ; $486f: $af
    ld [de], a                                    ; $4870: $12
    inc de                                        ; $4871: $13
    dec hl                                        ; $4872: $2b
    ld a, l                                       ; $4873: $7d
    or h                                          ; $4874: $b4
    jr nz, .ZeroFillEraseSelectedSaveRangeLoop    ; $4875: $20 $f8

    pop hl                                        ; $4877: $e1
    jr .RunEraseSelectedSaveRewriteStepLoop       ; $4878: $18 $e2

.CopyLiteralEraseSelectedSaveRange:
    push hl                                       ; $487a: $e5
    ld a, [bc]                                    ; $487b: $0a
    ld l, a                                       ; $487c: $6f
    inc bc                                        ; $487d: $03
    ld a, [bc]                                    ; $487e: $0a
    ld h, a                                       ; $487f: $67
    inc bc                                        ; $4880: $03

.CopyLiteralEraseSelectedSaveRangeLoop:
    ld a, [bc]                                    ; $4881: $0a
    ld [de], a                                    ; $4882: $12
    inc bc                                        ; $4883: $03
    inc de                                        ; $4884: $13
    dec hl                                        ; $4885: $2b
    ld a, l                                       ; $4886: $7d
    or h                                          ; $4887: $b4
    jr nz, .CopyLiteralEraseSelectedSaveRangeLoop ; $4888: $20 $f7

    pop hl                                        ; $488a: $e1
    jr .RunEraseSelectedSaveRewriteStepLoop       ; $488b: $18 $cf

.FinalizeEraseSelectedSaveRewrite:
    call RefreshSaveValidationChecksumsAndMirrors ; $488d: $cd $1f $1b
    ld a, [rPuzzleAndMenuCursorRow]               ; $4890: $fa $37 $d6
    call GS01_BuildSelectedSaveSlotTemplateCommandStream; $4893: $cd $8e $49

.PresentFrameAndReturnFromEraseSelectedSavePrompt:
    rst RST_08                                    ; $4896: $cf
    ret                                           ; $4897: $c9


.CheckEraseSelectedSaveCancelInput:
    bit 1, a                                      ; $4898: $cb $4f
    jr nz, .PresentFrameAndReturnFromEraseSelectedSavePrompt; $489a: $20 $fa

    call ClearShadowOAMBufferFromCursor           ; $489c: $cd $c5 $05
    rst RST_08                                    ; $489f: $cf
    jr .EraseSelectedSavePromptLoop               ; $48a0: $18 $84

EraseSelectedSaveSlotDestinationPointerOffsetTable::
    db $03, $24, $45

EraseSelectedSaveSlot1DestinationList::
    db $66, $a0, $69, $a0, $78, $a0, $7b, $a0, $7e, $a0, $81, $a0, $84, $a0, $87, $a0
    db $c7, $a2, $87, $a3, $8a, $a3, $8d, $a3, $90, $a3, $99, $a3, $a2, $a3, $62, $aa
    db $00, $00

EraseSelectedSaveSlot2DestinationList::
    db $67, $a0, $6e, $a0, $79, $a0, $7c, $a0, $7f, $a0, $82, $a0, $85, $a0, $47, $a1
    db $07, $a3, $88, $a3, $8b, $a3, $8e, $a3, $93, $a3, $9c, $a3, $e2, $a5, $22, $ab
    db $00, $00

EraseSelectedSaveSlot3DestinationList::
    db $68, $a0, $73, $a0, $7a, $a0, $7d, $a0, $80, $a0, $83, $a0, $86, $a0, $07, $a2
    db $47, $a3, $89, $a3, $8c, $a3, $8f, $a3, $96, $a3, $9f, $a3, $22, $a8, $e2, $ab
    db $00, $00

EraseSelectedSaveSlotRewriteScript::
    db $00, $01, $00, $ff, $05, $00, $00, $01, $02, $03, $04, $00, $01, $00, $00, $01
    db $00, $00, $01, $00, $00, $01, $00, $00, $01, $00, $00, $c0, $00, $00, $40, $00
    db $00, $01, $00, $00, $01, $00, $00, $01, $00, $00, $03, $00, $00, $03, $00, $00
    db $40, $02, $00, $c0, $00

GS01_StatePhase_02_DataSelectScreenFinish::
    ld bc, $003c                                  ; $4940: $01 $3c $00
    call DelayFramesByBC                          ; $4943: $cd $fa $05
    ld a, $05                                     ; $4946: $3e $05
    call CallSoundCommandDispatcher               ; $4948: $cd $b6 $03
    ld c, $00                                     ; $494b: $0e $00
    ld a, $01                                     ; $494d: $3e $01
    call CallSoundCommandDispatcher               ; $494f: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $4952: $cd $99 $03
    ld c, $00                                     ; $4955: $0e $00
    ld a, $01                                     ; $4957: $3e $01
    call CallSoundCommandDispatcher               ; $4959: $cd $b6 $03
    ld b, $03                                     ; $495c: $06 $03
    ld hl, $46cf                                  ; $495e: $21 $cf $46
    ld c, $05                                     ; $4961: $0e $05
    ld de, $0053                                  ; $4963: $11 $53 $00
    call PlayScreenTransitionFadeOut              ; $4966: $cd $4e $04
    call DisableLCDAtVBlank                       ; $4969: $cd $83 $04
    ld a, [rPuzzleAndMenuCursorRow]               ; $496c: $fa $37 $d6
    ld [rSelectedSaveSlotIndex], a                ; $496f: $ea $65 $a0
    ld c, a                                       ; $4972: $4f
    ld b, $00                                     ; $4973: $06 $00
    ld hl, rSaveSlot1UnlockProgressState          ; $4975: $21 $87 $a3
    add hl, bc                                    ; $4978: $09
    ld a, [hl]                                    ; $4979: $7e
    and a                                         ; $497a: $a7
    jr nz, .AdvanceFromDataSelectAndCommitSaveChecksums; $497b: $20 $06

    inc [hl]                                      ; $497d: $34
    ld hl, rSaveSlot1PicrossKinokoStarClearedPuzzleCount; $497e: $21 $8a $a3
    add hl, bc                                    ; $4981: $09
    ld [hl], a                                    ; $4982: $77

.AdvanceFromDataSelectAndCommitSaveChecksums:
    xor a                                         ; $4983: $af
    ld [rStatePhase_Current], a                   ; $4984: $ea $35 $d6
    ld hl, rGameState_Current                     ; $4987: $21 $34 $d6
    inc [hl]                                      ; $498a: $34
    jp RefreshSaveValidationChecksumsAndMirrors   ; $498b: $c3 $1f $1b


GS01_BuildSelectedSaveSlotTemplateCommandStream::
    push af                                       ; $498e: $f5
    ld c, a                                       ; $498f: $4f
    ld b, $00                                     ; $4990: $06 $00
    ld hl, SelectedSaveSlotTemplateCommandOffsetTable; $4992: $21 $57 $4a
    add hl, bc                                    ; $4995: $09
    ld c, [hl]                                    ; $4996: $4e
    add hl, bc                                    ; $4997: $09
    ld a, $02                                     ; $4998: $3e $02
    ld de, rSharedSingleTileCommandStreamDestHigh ; $499a: $11 $00 $c1
    ld bc, $0023                                  ; $499d: $01 $23 $00
    call BankedTileCopy                           ; $49a0: $cd $e4 $04
    pop af                                        ; $49a3: $f1
    ld c, a                                       ; $49a4: $4f
    ld b, $00                                     ; $49a5: $06 $00
    ld hl, rSaveSlot1UnlockProgressState          ; $49a7: $21 $87 $a3
    add hl, bc                                    ; $49aa: $09
    ld a, [hl]                                    ; $49ab: $7e
    and a                                         ; $49ac: $a7
    jp z, GS01_CommitSelectedSaveSlotTemplateCommandStream; $49ad: $ca $4f $4a

    push bc                                       ; $49b0: $c5
    cp $03                                        ; $49b1: $fe $03
    jr nz, .NormalizeSelectedSaveSlotStateToIconVariantIndex; $49b3: $20 $01

    dec a                                         ; $49b5: $3d

.NormalizeSelectedSaveSlotStateToIconVariantIndex:
    dec a                                         ; $49b6: $3d
    ld c, a                                       ; $49b7: $4f
    ld b, $00                                     ; $49b8: $06 $00
    ld hl, SelectedSaveSlotIconVariantCommandOffsetTable; $49ba: $21 $c3 $4a
    add hl, bc                                    ; $49bd: $09
    ld c, [hl]                                    ; $49be: $4e
    add hl, bc                                    ; $49bf: $09
    ld de, rGS01_SaveSlotTemplateRow1KinokoStarIconChunkStart; $49c0: $11 $09 $c1
    ld c, $04                                     ; $49c3: $0e $04

.CopySelectedSaveSlotIconScriptRow1Loop:
    ld a, [hl+]                                   ; $49c5: $2a
    ld [de], a                                    ; $49c6: $12
    inc de                                        ; $49c7: $13
    dec c                                         ; $49c8: $0d
    jr nz, .CopySelectedSaveSlotIconScriptRow1Loop; $49c9: $20 $fa

    ld de, rGS01_SaveSlotTemplateRow2KinokoStarIconChunkStart; $49cb: $11 $1a $c1
    ld c, $04                                     ; $49ce: $0e $04

.CopySelectedSaveSlotIconScriptRow2Loop:
    ld a, [hl+]                                   ; $49d0: $2a
    ld [de], a                                    ; $49d1: $12
    inc de                                        ; $49d2: $13
    dec c                                         ; $49d3: $0d
    jr nz, .CopySelectedSaveSlotIconScriptRow2Loop; $49d4: $20 $fa

    pop bc                                        ; $49d6: $c1
    push bc                                       ; $49d7: $c5
    ld hl, rSaveSlot1PicrossKinokoStarClearedPuzzleCount; $49d8: $21 $8a $a3
    add hl, bc                                    ; $49db: $09
    ld a, [hl]                                    ; $49dc: $7e
    call SplitAToDecimalDigitsAndPushHundredsTens ; $49dd: $cd $72 $19
    add $60                                       ; $49e0: $c6 $60
    ld hl, rGS01_SaveSlotTemplateRow1KinokoStarCountDigitOnes; $49e2: $21 $0e $c1
    ld [hl], a                                    ; $49e5: $77
    add $10                                       ; $49e6: $c6 $10
    ld hl, rGS01_SaveSlotTemplateRow2KinokoStarCountDigitOnes; $49e8: $21 $1f $c1
    ld [hl], a                                    ; $49eb: $77
    pop af                                        ; $49ec: $f1
    add $60                                       ; $49ed: $c6 $60
    ld hl, rGS01_SaveSlotTemplateRow1KinokoStarCountDigitTens; $49ef: $21 $0d $c1
    ld [hl], a                                    ; $49f2: $77
    add $10                                       ; $49f3: $c6 $10
    ld hl, rGS01_SaveSlotTemplateRow2KinokoStarCountDigitTens; $49f5: $21 $1e $c1
    ld [hl], a                                    ; $49f8: $77
    pop af                                        ; $49f9: $f1
    ld a, $6b                                     ; $49fa: $3e $6b
    ld hl, rSharedSingleTileCommandStreamTileId   ; $49fc: $21 $03 $c1
    ld [hl+], a                                   ; $49ff: $22
    inc a                                         ; $4a00: $3c
    ld [hl], a                                    ; $4a01: $77
    ld a, $7b                                     ; $4a02: $3e $7b
    ld hl, rGS01_SaveSlotTemplateRow2EasyPicrossIconPairLeft; $4a04: $21 $14 $c1
    ld [hl+], a                                   ; $4a07: $22
    inc a                                         ; $4a08: $3c
    ld [hl], a                                    ; $4a09: $77
    pop bc                                        ; $4a0a: $c1
    ld hl, rSaveSlot1EasyPicrossClearedPuzzleCount; $4a0b: $21 $7e $a0
    add hl, bc                                    ; $4a0e: $09
    ld a, [hl]                                    ; $4a0f: $7e
    call SplitAToDecimalDigitsAndPushHundredsTens ; $4a10: $cd $72 $19
    add $60                                       ; $4a13: $c6 $60
    ld hl, rGS01_SaveSlotTemplateRow1EasyPicrossCountDigitOnes; $4a15: $21 $06 $c1
    ld [hl], a                                    ; $4a18: $77
    add $10                                       ; $4a19: $c6 $10
    ld hl, rGS01_SaveSlotTemplateRow2EasyPicrossCountDigitOnes; $4a1b: $21 $17 $c1
    ld [hl], a                                    ; $4a1e: $77
    pop af                                        ; $4a1f: $f1
    add $60                                       ; $4a20: $c6 $60
    ld hl, rGS01_SaveSlotTemplateRow1EasyPicrossCountDigitTens; $4a22: $21 $05 $c1
    ld [hl], a                                    ; $4a25: $77
    add $10                                       ; $4a26: $c6 $10
    ld hl, rGS01_SaveSlotTemplateRow2EasyPicrossCountDigitTens; $4a28: $21 $16 $c1
    ld [hl], a                                    ; $4a2b: $77
    pop af                                        ; $4a2c: $f1
    ld a, $ac                                     ; $4a2d: $3e $ac
    ld hl, rGS01_SaveSlotTemplateRow1EasyPicrossCountSuffixPairLeft; $4a2f: $21 $07 $c1
    ld [hl+], a                                   ; $4a32: $22
    ld a, $ae                                     ; $4a33: $3e $ae
    ld [hl], a                                    ; $4a35: $77
    ld a, $bc                                     ; $4a36: $3e $bc
    ld hl, rGS01_SaveSlotTemplateRow2EasyPicrossCountSuffixPairLeft; $4a38: $21 $18 $c1
    ld [hl+], a                                   ; $4a3b: $22
    ld a, $be                                     ; $4a3c: $3e $be
    ld [hl], a                                    ; $4a3e: $77
    ld a, $ac                                     ; $4a3f: $3e $ac
    ld hl, rGS01_SaveSlotTemplateRow1KinokoStarCountSuffixPairLeft; $4a41: $21 $0f $c1
    ld [hl+], a                                   ; $4a44: $22
    inc a                                         ; $4a45: $3c
    ld [hl], a                                    ; $4a46: $77
    ld a, $bc                                     ; $4a47: $3e $bc
    ld hl, rGS01_SaveSlotTemplateRow2KinokoStarCountSuffixPairLeft; $4a49: $21 $20 $c1
    ld [hl+], a                                   ; $4a4c: $22
    inc a                                         ; $4a4d: $3c
    ld [hl], a                                    ; $4a4e: $77

GS01_CommitSelectedSaveSlotTemplateCommandStream::
    ld a, $00                                     ; $4a4f: $3e $00
    ld bc, rSharedSingleTileCommandStreamDestHigh ; $4a51: $01 $00 $c1
    jp QueueCommandStreamAndProcessIfLCDOff       ; $4a54: $c3 $38 $07


SelectedSaveSlotTemplateCommandOffsetTable::
    db $03, $25, $47

SelectedSaveSlot1TemplateCommandScript::
    db $98, $83, $0e, $28, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $2f
    db $98, $a3, $0e, $38, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $3f
    db $00

SelectedSaveSlot2TemplateCommandScript::
    db $99, $03, $0e, $28, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $2f
    db $99, $23, $0e, $38, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $3f
    db $00

SelectedSaveSlot3TemplateCommandScript::
    db $99, $83, $0e, $28, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $2f
    db $99, $a3, $0e, $38, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $3f
    db $00

SelectedSaveSlotIconVariantCommandOffsetTable::
    db $02, $09

SelectedSaveSlotIconKinokoOnlyCommandScript::
    db $29, $2a, $6a, $6a, $39, $3a, $7a, $7a

SelectedSaveSlotIconKinokoStarCommandScript::
    db $29, $2a, $2d, $2e, $39, $3a, $3d, $3e

GS01_BuildSaveSlotTemplateCommandStream::
    push af                                       ; $4ad5: $f5
    ld c, a                                       ; $4ad6: $4f
    ld b, $00                                     ; $4ad7: $06 $00
    ld hl, SaveSlotTemplateCommandOffsetTable     ; $4ad9: $21 $9e $4b
    add hl, bc                                    ; $4adc: $09
    ld c, [hl]                                    ; $4add: $4e
    add hl, bc                                    ; $4ade: $09
    ld a, $02                                     ; $4adf: $3e $02
    ld de, rSharedSingleTileCommandStreamDestHigh ; $4ae1: $11 $00 $c1
    ld bc, $0023                                  ; $4ae4: $01 $23 $00
    call BankedTileCopy                           ; $4ae7: $cd $e4 $04
    pop af                                        ; $4aea: $f1
    ld c, a                                       ; $4aeb: $4f
    ld b, $00                                     ; $4aec: $06 $00
    ld hl, rSaveSlot1UnlockProgressState          ; $4aee: $21 $87 $a3
    add hl, bc                                    ; $4af1: $09
    ld a, [hl]                                    ; $4af2: $7e
    and a                                         ; $4af3: $a7
    jp z, GS01_CommitSaveSlotTemplateCommandStream; $4af4: $ca $96 $4b

    push bc                                       ; $4af7: $c5
    cp $03                                        ; $4af8: $fe $03
    jr nz, .NormalizeSaveSlotStateToIconVariantIndex; $4afa: $20 $01

    dec a                                         ; $4afc: $3d

.NormalizeSaveSlotStateToIconVariantIndex:
    dec a                                         ; $4afd: $3d
    ld c, a                                       ; $4afe: $4f
    ld b, $00                                     ; $4aff: $06 $00
    ld hl, SaveSlotIconVariantCommandOffsetTable  ; $4b01: $21 $0a $4c
    add hl, bc                                    ; $4b04: $09
    ld c, [hl]                                    ; $4b05: $4e
    add hl, bc                                    ; $4b06: $09
    ld de, rGS01_SaveSlotTemplateRow1KinokoStarIconChunkStart; $4b07: $11 $09 $c1
    ld c, $04                                     ; $4b0a: $0e $04

.CopySaveSlotIconScriptRow1Loop:
    ld a, [hl+]                                   ; $4b0c: $2a
    ld [de], a                                    ; $4b0d: $12
    inc de                                        ; $4b0e: $13
    dec c                                         ; $4b0f: $0d
    jr nz, .CopySaveSlotIconScriptRow1Loop        ; $4b10: $20 $fa

    ld de, rGS01_SaveSlotTemplateRow2KinokoStarIconChunkStart; $4b12: $11 $1a $c1
    ld c, $04                                     ; $4b15: $0e $04

.CopySaveSlotIconScriptRow2Loop:
    ld a, [hl+]                                   ; $4b17: $2a
    ld [de], a                                    ; $4b18: $12
    inc de                                        ; $4b19: $13
    dec c                                         ; $4b1a: $0d
    jr nz, .CopySaveSlotIconScriptRow2Loop        ; $4b1b: $20 $fa

    pop bc                                        ; $4b1d: $c1
    push bc                                       ; $4b1e: $c5
    ld hl, rSaveSlot1PicrossKinokoStarClearedPuzzleCount; $4b1f: $21 $8a $a3
    add hl, bc                                    ; $4b22: $09
    ld a, [hl]                                    ; $4b23: $7e
    call SplitAToDecimalDigitsAndPushHundredsTens ; $4b24: $cd $72 $19
    add $40                                       ; $4b27: $c6 $40
    ld hl, rGS01_SaveSlotTemplateRow1KinokoStarCountDigitOnes; $4b29: $21 $0e $c1
    ld [hl], a                                    ; $4b2c: $77
    add $10                                       ; $4b2d: $c6 $10
    ld hl, rGS01_SaveSlotTemplateRow2KinokoStarCountDigitOnes; $4b2f: $21 $1f $c1
    ld [hl], a                                    ; $4b32: $77
    pop af                                        ; $4b33: $f1
    add $40                                       ; $4b34: $c6 $40
    ld hl, rGS01_SaveSlotTemplateRow1KinokoStarCountDigitTens; $4b36: $21 $0d $c1
    ld [hl], a                                    ; $4b39: $77
    add $10                                       ; $4b3a: $c6 $10
    ld hl, rGS01_SaveSlotTemplateRow2KinokoStarCountDigitTens; $4b3c: $21 $1e $c1
    ld [hl], a                                    ; $4b3f: $77
    pop af                                        ; $4b40: $f1
    ld a, $4b                                     ; $4b41: $3e $4b
    ld hl, rSharedSingleTileCommandStreamTileId   ; $4b43: $21 $03 $c1
    ld [hl+], a                                   ; $4b46: $22
    inc a                                         ; $4b47: $3c
    ld [hl], a                                    ; $4b48: $77
    ld a, $5b                                     ; $4b49: $3e $5b
    ld hl, rGS01_SaveSlotTemplateRow2EasyPicrossIconPairLeft; $4b4b: $21 $14 $c1
    ld [hl+], a                                   ; $4b4e: $22
    inc a                                         ; $4b4f: $3c
    ld [hl], a                                    ; $4b50: $77
    pop bc                                        ; $4b51: $c1
    ld hl, rSaveSlot1EasyPicrossClearedPuzzleCount; $4b52: $21 $7e $a0
    add hl, bc                                    ; $4b55: $09
    ld a, [hl]                                    ; $4b56: $7e
    call SplitAToDecimalDigitsAndPushHundredsTens ; $4b57: $cd $72 $19
    add $40                                       ; $4b5a: $c6 $40
    ld hl, rGS01_SaveSlotTemplateRow1EasyPicrossCountDigitOnes; $4b5c: $21 $06 $c1
    ld [hl], a                                    ; $4b5f: $77
    add $10                                       ; $4b60: $c6 $10
    ld hl, rGS01_SaveSlotTemplateRow2EasyPicrossCountDigitOnes; $4b62: $21 $17 $c1
    ld [hl], a                                    ; $4b65: $77
    pop af                                        ; $4b66: $f1
    add $40                                       ; $4b67: $c6 $40
    ld hl, rGS01_SaveSlotTemplateRow1EasyPicrossCountDigitTens; $4b69: $21 $05 $c1
    ld [hl], a                                    ; $4b6c: $77
    add $10                                       ; $4b6d: $c6 $10
    ld hl, rGS01_SaveSlotTemplateRow2EasyPicrossCountDigitTens; $4b6f: $21 $16 $c1
    ld [hl], a                                    ; $4b72: $77
    pop af                                        ; $4b73: $f1
    ld a, $8c                                     ; $4b74: $3e $8c
    ld hl, rGS01_SaveSlotTemplateRow1EasyPicrossCountSuffixPairLeft; $4b76: $21 $07 $c1
    ld [hl+], a                                   ; $4b79: $22
    ld a, $8e                                     ; $4b7a: $3e $8e
    ld [hl], a                                    ; $4b7c: $77
    ld a, $9c                                     ; $4b7d: $3e $9c
    ld hl, rGS01_SaveSlotTemplateRow2EasyPicrossCountSuffixPairLeft; $4b7f: $21 $18 $c1
    ld [hl+], a                                   ; $4b82: $22
    ld a, $9e                                     ; $4b83: $3e $9e
    ld [hl], a                                    ; $4b85: $77
    ld a, $8c                                     ; $4b86: $3e $8c
    ld hl, rGS01_SaveSlotTemplateRow1KinokoStarCountSuffixPairLeft; $4b88: $21 $0f $c1
    ld [hl+], a                                   ; $4b8b: $22
    inc a                                         ; $4b8c: $3c
    ld [hl], a                                    ; $4b8d: $77
    ld a, $9c                                     ; $4b8e: $3e $9c
    ld hl, rGS01_SaveSlotTemplateRow2KinokoStarCountSuffixPairLeft; $4b90: $21 $20 $c1
    ld [hl+], a                                   ; $4b93: $22
    inc a                                         ; $4b94: $3c
    ld [hl], a                                    ; $4b95: $77

GS01_CommitSaveSlotTemplateCommandStream::
    ld a, $00                                     ; $4b96: $3e $00
    ld bc, rSharedSingleTileCommandStreamDestHigh ; $4b98: $01 $00 $c1
    jp QueueCommandStreamAndProcessIfLCDOff       ; $4b9b: $c3 $38 $07


SaveSlotTemplateCommandOffsetTable::
    db $03, $25, $47

SaveSlot1TemplateCommandScript::
    db $98, $83, $0e, $20, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $27
    db $98, $a3, $0e, $30, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $37
    db $00

SaveSlot2TemplateCommandScript::
    db $99, $03, $0e, $20, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $27
    db $99, $23, $0e, $30, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $37
    db $00

SaveSlot3TemplateCommandScript::
    db $99, $83, $0e, $20, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $27
    db $99, $a3, $0e, $30, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $37
    db $00

SaveSlotIconVariantCommandOffsetTable::
    db $02, $09

SaveSlotIconKinokoOnlyCommandScript::
    db $21, $22, $4a, $4a, $31, $32, $5a, $5a

SaveSlotIconKinokoStarCommandScript::
    db $21, $22, $25, $26, $31, $32, $35, $36

GS01_HandleDataSelectVerticalInput::
    ld a, [rInputButtonsPressedOrRepeated]        ; $4c1c: $fa $22 $c3
    and $c0                                       ; $4c1f: $e6 $c0
    ret z                                         ; $4c21: $c8

    push af                                       ; $4c22: $f5
    ld a, [rPuzzleAndMenuCursorRow]               ; $4c23: $fa $37 $d6
    call GS01_BuildSaveSlotTemplateCommandStream  ; $4c26: $cd $d5 $4a
    rst RST_08                                    ; $4c29: $cf
    ld c, $0a                                     ; $4c2a: $0e $0a
    ld a, $02                                     ; $4c2c: $3e $02
    call CallSoundCommandDispatcher               ; $4c2e: $cd $b6 $03
    pop af                                        ; $4c31: $f1
    and $40                                       ; $4c32: $e6 $40
    jr z, .HandleDataSelectMoveDown               ; $4c34: $28 $10

    ld a, [rPuzzleAndMenuCursorRow]               ; $4c36: $fa $37 $d6
    dec a                                         ; $4c39: $3d
    cp $ff                                        ; $4c3a: $fe $ff
    jr nz, .StoreCursorRowAndBuildSelectedTemplate_UpPath; $4c3c: $20 $02

    ld a, $02                                     ; $4c3e: $3e $02

.StoreCursorRowAndBuildSelectedTemplate_UpPath:
    ld [rPuzzleAndMenuCursorRow], a               ; $4c40: $ea $37 $d6
    jp GS01_BuildSelectedSaveSlotTemplateCommandStream; $4c43: $c3 $8e $49


.HandleDataSelectMoveDown:
    ld a, [rPuzzleAndMenuCursorRow]               ; $4c46: $fa $37 $d6
    inc a                                         ; $4c49: $3c
    cp $03                                        ; $4c4a: $fe $03
    jr nz, .StoreCursorRowAndBuildSelectedTemplate_DownPath; $4c4c: $20 $01

    xor a                                         ; $4c4e: $af

.StoreCursorRowAndBuildSelectedTemplate_DownPath:
    ld [rPuzzleAndMenuCursorRow], a               ; $4c4f: $ea $37 $d6
    jp GS01_BuildSelectedSaveSlotTemplateCommandStream; $4c52: $c3 $8e $49


GameState_07_TimeTrialRankingScreen_PhaseDispatcher::
    ld a, [rStatePhase_Current]                   ; $4c55: $fa $35 $d6
    rst RST_18                                    ; $4c58: $df

GS07_PhasePointer_00::
    db $65, $4c

GS07_PhasePointer_01::
    db $8e, $4d

GS07_PhasePointer_02::
    db $69, $4f

GS07_PhasePointer_03::
    db $74, $50

GS07_PhasePointer_04::
    db $c4, $4c

GS07_PhasePointer_05::
    db $ff, $4d

GS07_StatePhase_00_TimeTrialRankingScreenInit::
    ld a, $43                                     ; $4c65: $3e $43
    ld [rLCDCShadow], a                           ; $4c67: $ea $2e $c3
    xor a                                         ; $4c6a: $af
    ld [rBGPShadow], a                            ; $4c6b: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $4c6e: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $4c71: $ea $31 $c3
    ld [rSCXShadow], a                            ; $4c74: $ea $32 $c3
    ld [rSCYShadow], a                            ; $4c77: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $4c7a: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $4c7d: $cd $ab $05
    call GS07_LoadTimeTrialRankingScreenGfxAndTilemap; $4c80: $cd $63 $4d
    call GS07_DrawTimeTrialRankingEntriesFromSaveData; $4c83: $cd $32 $51
    call GS07_DrawCurrentClearTimePlaceholderDashes; $4c86: $cd $a0 $51
    xor a                                         ; $4c89: $af
    ld [rGS07_NewRecordRankingPositionOrZero], a  ; $4c8a: $ea $38 $d8
    ld [rGS07_BottomPromptVariantFlag], a         ; $4c8d: $ea $39 $d8
    call ClearShadowOAMBuffer                     ; $4c90: $cd $b6 $05
    ld b, $03                                     ; $4c93: $06 $03
    ld hl, $4e80                                  ; $4c95: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $4c98: $cd $de $05
    call GS07_DispatchBottomPromptBlinkVariant    ; $4c9b: $cd $98 $52
    ld c, $00                                     ; $4c9e: $0e $00
    ld a, $01                                     ; $4ca0: $3e $01
    call CallSoundCommandDispatcher               ; $4ca2: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $4ca5: $cd $99 $03
    ld c, $0f                                     ; $4ca8: $0e $0f
    ld a, $01                                     ; $4caa: $3e $01
    call CallSoundCommandDispatcher               ; $4cac: $cd $b6 $03
    call EnableLCDFromShadow                      ; $4caf: $cd $a2 $04
    ld b, $03                                     ; $4cb2: $06 $03
    ld hl, $470c                                  ; $4cb4: $21 $0c $47
    ld c, $0e                                     ; $4cb7: $0e $0e
    ld de, $00a4                                  ; $4cb9: $11 $a4 $00
    call PlayScreenTransitionFadeIn               ; $4cbc: $cd $0d $04
    ld hl, rStatePhase_Current                    ; $4cbf: $21 $35 $d6
    inc [hl]                                      ; $4cc2: $34
    ret                                           ; $4cc3: $c9


GS07_StatePhase_04_PostClearRankingTransition::
    ld a, $43                                     ; $4cc4: $3e $43
    ld [rLCDCShadow], a                           ; $4cc6: $ea $2e $c3
    xor a                                         ; $4cc9: $af
    ld [rBGPShadow], a                            ; $4cca: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $4ccd: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $4cd0: $ea $31 $c3
    ld [rSCXShadow], a                            ; $4cd3: $ea $32 $c3
    ld [rSCYShadow], a                            ; $4cd6: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $4cd9: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $4cdc: $cd $ab $05
    call GS07_LoadTimeTrialRankingScreenGfxAndTilemap; $4cdf: $cd $63 $4d
    xor a                                         ; $4ce2: $af
    ld [rGS07_NewRecordRankingPositionOrZero], a  ; $4ce3: $ea $38 $d8
    ld a, $01                                     ; $4ce6: $3e $01
    ld [rGS07_BottomPromptVariantFlag], a         ; $4ce8: $ea $39 $d8
    ld a, [rPuzzlePostClearFlowFlag]              ; $4ceb: $fa $05 $d8
    and a                                         ; $4cee: $a7
    jr z, .DrawRankingAndCurrentTimeRow           ; $4cef: $28 $03

    call GS07_TryInsertCurrentClearTimeIntoRanking; $4cf1: $cd $b3 $50

.DrawRankingAndCurrentTimeRow:
    call GS07_DrawTimeTrialRankingEntriesFromSaveData; $4cf4: $cd $32 $51
    ld a, [rPuzzlePostClearFlowFlag]              ; $4cf7: $fa $05 $d8
    and a                                         ; $4cfa: $a7
    jr z, .DrawCurrentTimePlaceholderDashes       ; $4cfb: $28 $05

    call GS07_DrawCurrentClearTimeFromTimer       ; $4cfd: $cd $74 $51
    jr .PrepareOAMAndBottomPromptLayout           ; $4d00: $18 $03

.DrawCurrentTimePlaceholderDashes:
    call GS07_DrawCurrentClearTimePlaceholderDashes; $4d02: $cd $a0 $51

.PrepareOAMAndBottomPromptLayout:
    call ClearShadowOAMBuffer                     ; $4d05: $cd $b6 $05
    ld b, $03                                     ; $4d08: $06 $03
    ld hl, $4e80                                  ; $4d0a: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $4d0d: $cd $de $05
    ld a, [rGS07_NewRecordRankingPositionOrZero]  ; $4d10: $fa $38 $d8
    and a                                         ; $4d13: $a7
    jr nz, .LoadNewRecordNameEntryPromptLayout    ; $4d14: $20 $05

    call GS07_DispatchBottomPromptBlinkVariant    ; $4d16: $cd $98 $52
    jr .PlayTransitionAndRouteToNextPhase         ; $4d19: $18 $08

.LoadNewRecordNameEntryPromptLayout:
    ld b, $03                                     ; $4d1b: $06 $03
    ld hl, $4ec2                                  ; $4d1d: $21 $c2 $4e
    call SwitchBankToBAndJumpToHL                 ; $4d20: $cd $de $05

.PlayTransitionAndRouteToNextPhase:
    ld c, $00                                     ; $4d23: $0e $00
    ld a, $01                                     ; $4d25: $3e $01
    call CallSoundCommandDispatcher               ; $4d27: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $4d2a: $cd $99 $03
    ld c, $0f                                     ; $4d2d: $0e $0f
    ld a, $01                                     ; $4d2f: $3e $01
    call CallSoundCommandDispatcher               ; $4d31: $cd $b6 $03
    call EnableLCDFromShadow                      ; $4d34: $cd $a2 $04
    ld b, $03                                     ; $4d37: $06 $03
    ld hl, $470c                                  ; $4d39: $21 $0c $47
    ld c, $0e                                     ; $4d3c: $0e $0e
    ld de, $00a4                                  ; $4d3e: $11 $a4 $00
    call PlayScreenTransitionFadeIn               ; $4d41: $cd $0d $04
    ld a, [rGS07_NewRecordRankingPositionOrZero]  ; $4d44: $fa $38 $d8
    and a                                         ; $4d47: $a7
    jr z, .RouteToRankingScreenIdlePhase          ; $4d48: $28 $13

    xor a                                         ; $4d4a: $af
    ld [rGS07_NameEntryCursorColumnOrConfirmIndex], a; $4d4b: $ea $3e $d8
    ld [rGS07_NameEntryCharacterIndexSlot0], a    ; $4d4e: $ea $3f $d8
    ld [rGS07_NameEntryCharacterIndexSlot1], a    ; $4d51: $ea $40 $d8
    ld [rGS07_NameEntryCharacterIndexSlot2], a    ; $4d54: $ea $41 $d8
    ld a, $05                                     ; $4d57: $3e $05
    ld [rStatePhase_Current], a                   ; $4d59: $ea $35 $d6
    ret                                           ; $4d5c: $c9


.RouteToRankingScreenIdlePhase:
    ld a, $01                                     ; $4d5d: $3e $01
    ld [rStatePhase_Current], a                   ; $4d5f: $ea $35 $d6
    ret                                           ; $4d62: $c9


GS07_LoadTimeTrialRankingScreenGfxAndTilemap::
    ld a, $0b                                     ; $4d63: $3e $0b
    ld hl, $5000                                  ; $4d65: $21 $00 $50
    ld de, $8000                                  ; $4d68: $11 $00 $80
    ld bc, $0300                                  ; $4d6b: $01 $00 $03
    call BankedTileCopy                           ; $4d6e: $cd $e4 $04
    ld a, $09                                     ; $4d71: $3e $09
    ld hl, $6800                                  ; $4d73: $21 $00 $68
    ld de, $8800                                  ; $4d76: $11 $00 $88
    ld bc, $1000                                  ; $4d79: $01 $00 $10
    call BankedTileCopy                           ; $4d7c: $cd $e4 $04
    ld a, $0c                                     ; $4d7f: $3e $0c
    ld hl, $7c00                                  ; $4d81: $21 $00 $7c
    ld de, $9800                                  ; $4d84: $11 $00 $98
    ld bc, $0400                                  ; $4d87: $01 $00 $04
    call BankedTileCopy                           ; $4d8a: $cd $e4 $04
    ret                                           ; $4d8d: $c9


GS07_StatePhase_01_TimeTrialRankingScreenIdle::
    call GS07_DispatchBottomPromptBlinkVariant    ; $4d8e: $cd $98 $52
    call GS07_TickNewRecordIndicatorBlinkSprites  ; $4d91: $cd $dc $4d
    ld a, [rInputButtonsPressed]                  ; $4d94: $fa $1e $c3
    and $09                                       ; $4d97: $e6 $09
    jr z, .HandleTimeTrialRankingScreenCancelInput; $4d99: $28 $1d

    ld c, $03                                     ; $4d9b: $0e $03
    ld a, $02                                     ; $4d9d: $3e $02
    call CallSoundCommandDispatcher               ; $4d9f: $cd $b6 $03
    call ClearShadowOAMBufferFromCursor           ; $4da2: $cd $c5 $05
    rst RST_08                                    ; $4da5: $cf
    xor a                                         ; $4da6: $af
    ld [rSharedUIAnimationColumnAccumulator], a   ; $4da7: $ea $3e $d6
    call GS07_TickNewRecordIndicatorBlinkSprites  ; $4daa: $cd $dc $4d
    call ClearShadowOAMBufferFromCursor           ; $4dad: $cd $c5 $05
    call GS07_TickNewRecordIndicatorBlinkSprites  ; $4db0: $cd $dc $4d
    ld hl, rStatePhase_Current                    ; $4db3: $21 $35 $d6
    inc [hl]                                      ; $4db6: $34
    ret                                           ; $4db7: $c9


.HandleTimeTrialRankingScreenCancelInput:
    ld a, [rInputButtonsPressed]                  ; $4db8: $fa $1e $c3
    and $02                                       ; $4dbb: $e6 $02
    ret z                                         ; $4dbd: $c8

    ld c, $04                                     ; $4dbe: $0e $04
    ld a, $02                                     ; $4dc0: $3e $02
    call CallSoundCommandDispatcher               ; $4dc2: $cd $b6 $03
    call ClearShadowOAMBufferFromCursor           ; $4dc5: $cd $c5 $05
    rst RST_08                                    ; $4dc8: $cf
    xor a                                         ; $4dc9: $af
    ld [rSharedUIAnimationColumnAccumulator], a   ; $4dca: $ea $3e $d6
    call GS07_TickNewRecordIndicatorBlinkSprites  ; $4dcd: $cd $dc $4d
    call ClearShadowOAMBufferFromCursor           ; $4dd0: $cd $c5 $05
    call GS07_TickNewRecordIndicatorBlinkSprites  ; $4dd3: $cd $dc $4d
    ld a, $03                                     ; $4dd6: $3e $03
    ld [rStatePhase_Current], a                   ; $4dd8: $ea $35 $d6
    ret                                           ; $4ddb: $c9


GS07_TickNewRecordIndicatorBlinkSprites::
    ld a, [rGS07_NewRecordRankingPositionOrZero]  ; $4ddc: $fa $38 $d8
    and a                                         ; $4ddf: $a7
    ret z                                         ; $4de0: $c8

    ld a, [rSharedUIAnimationColumnAccumulator]   ; $4de1: $fa $3e $d6
    inc a                                         ; $4de4: $3c
    cp $28                                        ; $4de5: $fe $28
    jr c, .StoreNewRecordIndicatorBlinkTimer      ; $4de7: $38 $01

    xor a                                         ; $4de9: $af

.StoreNewRecordIndicatorBlinkTimer:
    ld [rSharedUIAnimationColumnAccumulator], a   ; $4dea: $ea $3e $d6
    cp $16                                        ; $4ded: $fe $16
    ret nc                                        ; $4def: $d0

    xor a                                         ; $4df0: $af
    call GS07_DrawNameEntryCharacterSlotSprite    ; $4df1: $cd $40 $4f
    ld a, $01                                     ; $4df4: $3e $01
    call GS07_DrawNameEntryCharacterSlotSprite    ; $4df6: $cd $40 $4f
    ld a, $02                                     ; $4df9: $3e $02
    call GS07_DrawNameEntryCharacterSlotSprite    ; $4dfb: $cd $40 $4f
    ret                                           ; $4dfe: $c9


GS07_StatePhase_05_TimeTrialRankingScreenNewRecordNameEntry::
    ld b, $03                                     ; $4dff: $06 $03
    ld hl, $4ec2                                  ; $4e01: $21 $c2 $4e
    call SwitchBankToBAndJumpToHL                 ; $4e04: $cd $de $05
    call GS07_HandleNameEntryInput                ; $4e07: $cd $e1 $4e
    ld hl, rVBlankFrameCounter                    ; $4e0a: $21 $3a $c3
    ld a, [rGS07_NameEntryCursorColumnOrConfirmIndex]; $4e0d: $fa $3e $d8
    and a                                         ; $4e10: $a7
    jr nz, .DrawSlot0SpriteIfVisible              ; $4e11: $20 $04

    bit 3, [hl]                                   ; $4e13: $cb $5e
    jr z, .MaybeDrawSlot1Sprite                   ; $4e15: $28 $06

.DrawSlot0SpriteIfVisible:
    push af                                       ; $4e17: $f5
    xor a                                         ; $4e18: $af
    call GS07_DrawNameEntryCharacterSlotSprite    ; $4e19: $cd $40 $4f
    pop af                                        ; $4e1c: $f1

.MaybeDrawSlot1Sprite:
    cp $01                                        ; $4e1d: $fe $01
    jr nz, .DrawSlot1SpriteIfVisible              ; $4e1f: $20 $04

    bit 3, [hl]                                   ; $4e21: $cb $5e
    jr z, .MaybeDrawSlot2Sprite                   ; $4e23: $28 $07

.DrawSlot1SpriteIfVisible:
    push af                                       ; $4e25: $f5
    ld a, $01                                     ; $4e26: $3e $01
    call GS07_DrawNameEntryCharacterSlotSprite    ; $4e28: $cd $40 $4f
    pop af                                        ; $4e2b: $f1

.MaybeDrawSlot2Sprite:
    cp $02                                        ; $4e2c: $fe $02
    jr nz, .DrawSlot2SpriteIfVisible              ; $4e2e: $20 $04

    bit 3, [hl]                                   ; $4e30: $cb $5e
    jr z, .HandleNameEntryConfirmOrReturn         ; $4e32: $28 $07

.DrawSlot2SpriteIfVisible:
    push af                                       ; $4e34: $f5
    ld a, $02                                     ; $4e35: $3e $02
    call GS07_DrawNameEntryCharacterSlotSprite    ; $4e37: $cd $40 $4f
    pop af                                        ; $4e3a: $f1

.HandleNameEntryConfirmOrReturn:
    ld a, [rInputButtonsPressed]                  ; $4e3b: $fa $1e $c3
    bit 3, a                                      ; $4e3e: $cb $5f
    jr nz, .CommitEnteredNameToSaveData           ; $4e40: $20 $09

    bit 0, a                                      ; $4e42: $cb $47
    ret z                                         ; $4e44: $c8

    ld a, [rGS07_NameEntryCursorColumnOrConfirmIndex]; $4e45: $fa $3e $d8
    cp $03                                        ; $4e48: $fe $03
    ret nz                                        ; $4e4a: $c0

.CommitEnteredNameToSaveData:
    ld a, [rGS07_NewRecordRankingPositionOrZero]  ; $4e4b: $fa $38 $d8
    ld c, a                                       ; $4e4e: $4f
    sla a                                         ; $4e4f: $cb $27
    sla a                                         ; $4e51: $cb $27
    sla a                                         ; $4e53: $cb $27
    sub c                                         ; $4e55: $91
    ld c, a                                       ; $4e56: $4f
    ld b, $00                                     ; $4e57: $06 $00
    ld hl, rSaveDataTimeTrialRankingEntriesInsertAddressBias; $4e59: $21 $3f $a0
    add hl, bc                                    ; $4e5c: $09
    ld e, l                                       ; $4e5d: $5d
    ld d, h                                       ; $4e5e: $54
    ld a, [rGS07_NameEntryCharacterIndexSlot0]    ; $4e5f: $fa $3f $d8
    sla a                                         ; $4e62: $cb $27
    ld c, a                                       ; $4e64: $4f
    ld hl, GS07_NameEntryCharacterCodeTilePairTable; $4e65: $21 $8d $4e
    add hl, bc                                    ; $4e68: $09
    ld a, [hl]                                    ; $4e69: $7e
    ld [de], a                                    ; $4e6a: $12
    inc de                                        ; $4e6b: $13
    ld a, [rGS07_NameEntryCharacterIndexSlot1]    ; $4e6c: $fa $40 $d8
    sla a                                         ; $4e6f: $cb $27
    ld c, a                                       ; $4e71: $4f
    ld hl, GS07_NameEntryCharacterCodeTilePairTable; $4e72: $21 $8d $4e
    add hl, bc                                    ; $4e75: $09
    ld a, [hl]                                    ; $4e76: $7e
    ld [de], a                                    ; $4e77: $12
    inc de                                        ; $4e78: $13
    ld a, [rGS07_NameEntryCharacterIndexSlot2]    ; $4e79: $fa $41 $d8
    sla a                                         ; $4e7c: $cb $27
    ld c, a                                       ; $4e7e: $4f
    ld hl, GS07_NameEntryCharacterCodeTilePairTable; $4e7f: $21 $8d $4e
    add hl, bc                                    ; $4e82: $09
    ld a, [hl]                                    ; $4e83: $7e
    ld [de], a                                    ; $4e84: $12
    ld a, $01                                     ; $4e85: $3e $01
    ld [rStatePhase_Current], a                   ; $4e87: $ea $35 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $4e8a: $c3 $1f $1b


GS07_NameEntryCharacterCodeTilePairTable::
    db $41, $64
    db $42, $65
    db $43, $66
    db $44, $67
    db $45, $68
    db $46, $69
    db $47, $6a
    db $48, $6b
    db $49, $6c
    db $4a, $6d
    db $4b, $6e
    db $4c, $6f
    db $4d, $70
    db $4e, $71
    db $4f, $72
    db $50, $73
    db $51, $74
    db $52, $75
    db $53, $76
    db $54, $77
    db $55, $78
    db $56, $79
    db $57, $7a
    db $58, $7b
    db $59, $7c
    db $5a, $7d
    db $30, $51
    db $31, $52
    db $32, $53
    db $33, $54
    db $34, $55
    db $35, $56
    db $36, $57
    db $37, $58
    db $38, $59
    db $39, $5a
    db $20, $63
    db $27, $7e
    db $22, $7f
    db $2d, $80
    db $2e, $81
    db $2c, $82

GS07_HandleNameEntryInput::
    ld a, [rInputButtonsPressedOrRepeated]        ; $4ee1: $fa $22 $c3
    and $c0                                       ; $4ee4: $e6 $c0
    jr z, .HandleNameEntryAdvanceWithA            ; $4ee6: $28 $2b

    ld c, $0a                                     ; $4ee8: $0e $0a
    ld a, $02                                     ; $4eea: $3e $02
    call CallSoundCommandDispatcher               ; $4eec: $cd $b6 $03
    ld a, [rGS07_NameEntryCursorColumnOrConfirmIndex]; $4eef: $fa $3e $d8
    ld c, a                                       ; $4ef2: $4f
    ld b, $00                                     ; $4ef3: $06 $00
    ld hl, rGS07_NameEntryCharacterIndexSlot0     ; $4ef5: $21 $3f $d8
    add hl, bc                                    ; $4ef8: $09
    ld a, [rInputButtonsPressedOrRepeated]        ; $4ef9: $fa $22 $c3
    bit 6, a                                      ; $4efc: $cb $77
    jr z, .HandleNameEntryCharacterIncrement      ; $4efe: $28 $0a

    ld a, [hl]                                    ; $4f00: $7e
    dec a                                         ; $4f01: $3d
    cp $ff                                        ; $4f02: $fe $ff
    jr nz, .StoreDecrementedNameEntryCharacterIndex; $4f04: $20 $02

    ld a, $29                                     ; $4f06: $3e $29

.StoreDecrementedNameEntryCharacterIndex:
    ld [hl], a                                    ; $4f08: $77
    ret                                           ; $4f09: $c9


.HandleNameEntryCharacterIncrement:
    ld a, [hl]                                    ; $4f0a: $7e
    inc a                                         ; $4f0b: $3c
    cp $2a                                        ; $4f0c: $fe $2a
    jr nz, .StoreIncrementedNameEntryCharacterIndex; $4f0e: $20 $01

    xor a                                         ; $4f10: $af

.StoreIncrementedNameEntryCharacterIndex:
    ld [hl], a                                    ; $4f11: $77
    ret                                           ; $4f12: $c9


.HandleNameEntryAdvanceWithA:
    ld a, [rInputButtonsPressed]                  ; $4f13: $fa $1e $c3
    bit 0, a                                      ; $4f16: $cb $47
    jr z, .HandleNameEntryBackWithB               ; $4f18: $28 $12

    ld c, $03                                     ; $4f1a: $0e $03
    ld a, $02                                     ; $4f1c: $3e $02
    call CallSoundCommandDispatcher               ; $4f1e: $cd $b6 $03
    ld a, [rGS07_NameEntryCursorColumnOrConfirmIndex]; $4f21: $fa $3e $d8
    cp $03                                        ; $4f24: $fe $03
    ret z                                         ; $4f26: $c8

    inc a                                         ; $4f27: $3c
    ld [rGS07_NameEntryCursorColumnOrConfirmIndex], a; $4f28: $ea $3e $d8
    ret                                           ; $4f2b: $c9


.HandleNameEntryBackWithB:
    bit 1, a                                      ; $4f2c: $cb $4f
    ret z                                         ; $4f2e: $c8

    ld c, $04                                     ; $4f2f: $0e $04
    ld a, $02                                     ; $4f31: $3e $02
    call CallSoundCommandDispatcher               ; $4f33: $cd $b6 $03
    ld a, [rGS07_NameEntryCursorColumnOrConfirmIndex]; $4f36: $fa $3e $d8
    and a                                         ; $4f39: $a7
    ret z                                         ; $4f3a: $c8

    dec a                                         ; $4f3b: $3d
    ld [rGS07_NameEntryCursorColumnOrConfirmIndex], a; $4f3c: $ea $3e $d8
    ret                                           ; $4f3f: $c9


GS07_DrawNameEntryCharacterSlotSprite::
    push hl                                       ; $4f40: $e5
    ld c, a                                       ; $4f41: $4f
    ld b, $00                                     ; $4f42: $06 $00
    push bc                                       ; $4f44: $c5
    ld hl, rGS07_NameEntryCharacterIndexSlot0     ; $4f45: $21 $3f $d8
    add hl, bc                                    ; $4f48: $09
    ld c, [hl]                                    ; $4f49: $4e
    sla c                                         ; $4f4a: $cb $21
    ld hl, $4e8e                                  ; $4f4c: $21 $8e $4e
    add hl, bc                                    ; $4f4f: $09
    pop bc                                        ; $4f50: $c1
    sla c                                         ; $4f51: $cb $21
    sla c                                         ; $4f53: $cb $21
    sla c                                         ; $4f55: $cb $21
    ld a, $68                                     ; $4f57: $3e $68
    add c                                         ; $4f59: $81
    ld b, a                                       ; $4f5a: $47
    ld a, [rGS07_NewRecordRankingPositionOrZero]  ; $4f5b: $fa $38 $d8
    swap a                                        ; $4f5e: $cb $37
    add $10                                       ; $4f60: $c6 $10
    ld c, a                                       ; $4f62: $4f
    ld a, [hl]                                    ; $4f63: $7e
    call CopyOAMSpriteById                        ; $4f64: $cd $ce $20
    pop hl                                        ; $4f67: $e1
    ret                                           ; $4f68: $c9


GS07_StatePhase_02_TransitionToPuzzleStart::
    ld bc, $003c                                  ; $4f69: $01 $3c $00
    call DelayFramesByBC                          ; $4f6c: $cd $fa $05
    ld a, $05                                     ; $4f6f: $3e $05
    call CallSoundCommandDispatcher               ; $4f71: $cd $b6 $03
    ld c, $00                                     ; $4f74: $0e $00
    ld a, $01                                     ; $4f76: $3e $01
    call CallSoundCommandDispatcher               ; $4f78: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $4f7b: $cd $99 $03
    ld c, $00                                     ; $4f7e: $0e $00
    ld a, $01                                     ; $4f80: $3e $01
    call CallSoundCommandDispatcher               ; $4f82: $cd $b6 $03
    ld b, $03                                     ; $4f85: $06 $03
    ld hl, $4717                                  ; $4f87: $21 $17 $47
    ld c, $0e                                     ; $4f8a: $0e $0e
    ld de, $00b3                                  ; $4f8c: $11 $b3 $00
    call PlayScreenTransitionFadeOut              ; $4f8f: $cd $4e $04
    call DisableLCDAtVBlank                       ; $4f92: $cd $83 $04

.SelectNextPuzzleOrderEntryLoop:
    ld a, [rPuzzleOrderTableCursor]               ; $4f95: $fa $01 $a0
    ld c, a                                       ; $4f98: $4f
    ld b, $00                                     ; $4f99: $06 $00
    ld hl, rPuzzleOrderTableStart                 ; $4f9b: $21 $02 $a0
    add hl, bc                                    ; $4f9e: $09
    ld a, [hl]                                    ; $4f9f: $7e
    cp $40                                        ; $4fa0: $fe $40
    jr c, .LoadPuzzleDataIndexFromOrderEntry      ; $4fa2: $38 $22

    ld b, $02                                     ; $4fa4: $06 $02
    ld hl, InitializePuzzleOrderTable             ; $4fa6: $21 $67 $52
    call SwitchBankToBAndJumpToHL                 ; $4fa9: $cd $de $05
    ld b, $02                                     ; $4fac: $06 $02
    ld hl, ShufflePuzzleOrderTable                ; $4fae: $21 $74 $52
    call SwitchBankToBAndJumpToHL                 ; $4fb1: $cd $de $05
    ld b, $02                                     ; $4fb4: $06 $02
    ld hl, ShufflePuzzleOrderTable                ; $4fb6: $21 $74 $52
    call SwitchBankToBAndJumpToHL                 ; $4fb9: $cd $de $05
    ld b, $02                                     ; $4fbc: $06 $02
    ld hl, ShufflePuzzleOrderTable                ; $4fbe: $21 $74 $52
    call SwitchBankToBAndJumpToHL                 ; $4fc1: $cd $de $05
    jr .SelectNextPuzzleOrderEntryLoop            ; $4fc4: $18 $cf

.LoadPuzzleDataIndexFromOrderEntry:
    sla a                                         ; $4fc6: $cb $27
    ld c, a                                       ; $4fc8: $4f
    ld hl, GS07_PuzzleDataIndexTableByOrderEntry  ; $4fc9: $21 $f4 $4f
    add hl, bc                                    ; $4fcc: $09
    ld a, [hl+]                                   ; $4fcd: $2a
    ld [rPuzzleDataIndexLow], a                   ; $4fce: $ea $07 $d8
    ld a, [hl]                                    ; $4fd1: $7e
    ld [rPuzzleDataIndexHigh], a                  ; $4fd2: $ea $08 $d8
    ld a, [rPuzzleOrderTableCursor]               ; $4fd5: $fa $01 $a0
    inc a                                         ; $4fd8: $3c
    ld [rPuzzleOrderTableCursor], a               ; $4fd9: $ea $01 $a0
    cp $40                                        ; $4fdc: $fe $40
    jr nz, .CommitTransitionToPuzzleGameplay      ; $4fde: $20 $08

    ld b, $02                                     ; $4fe0: $06 $02
    ld hl, ShufflePuzzleOrderTable                ; $4fe2: $21 $74 $52
    call SwitchBankToBAndJumpToHL                 ; $4fe5: $cd $de $05

.CommitTransitionToPuzzleGameplay:
    xor a                                         ; $4fe8: $af
    ld [rStatePhase_Current], a                   ; $4fe9: $ea $35 $d6
    ld a, $09                                     ; $4fec: $3e $09
    ld [rGameState_Current], a                    ; $4fee: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $4ff1: $c3 $1f $1b


GS07_PuzzleDataIndexTableByOrderEntry::
    db $c1, $00, $c2, $00, $c3, $00, $c4, $00, $c5, $00, $c6, $00, $c7, $00, $c8, $00
    db $c9, $00, $ca, $00, $cb, $00, $cc, $00, $cd, $00, $ce, $00, $cf, $00, $d0, $00
    db $d1, $00, $d2, $00, $d3, $00, $d4, $00, $d5, $00, $d6, $00, $d7, $00, $d8, $00
    db $d9, $00, $da, $00, $db, $00, $dc, $00, $dd, $00, $de, $00, $df, $00, $e0, $00
    db $e1, $00, $e2, $00, $e3, $00, $e4, $00, $e5, $00, $e6, $00, $e7, $00, $e8, $00
    db $e9, $00, $ea, $00, $eb, $00, $ec, $00, $ed, $00, $ee, $00, $ef, $00, $f0, $00
    db $f1, $00, $f2, $00, $f3, $00, $f4, $00, $f5, $00, $f6, $00, $f7, $00, $f8, $00
    db $f9, $00, $fa, $00, $fb, $00, $fc, $00, $fd, $00, $fe, $00, $ff, $00, $00, $01

GS07_StatePhase_03_TransitionBackToMenu::
    xor a                                         ; $5074: $af
    ld [rSharedUIAnimationColumnAccumulator], a   ; $5075: $ea $3e $d6
    call GS07_TickNewRecordIndicatorBlinkSprites  ; $5078: $cd $dc $4d
    ld bc, $003c                                  ; $507b: $01 $3c $00
    call DelayFramesByBC                          ; $507e: $cd $fa $05
    ld a, $05                                     ; $5081: $3e $05
    call CallSoundCommandDispatcher               ; $5083: $cd $b6 $03
    ld c, $00                                     ; $5086: $0e $00
    ld a, $01                                     ; $5088: $3e $01
    call CallSoundCommandDispatcher               ; $508a: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $508d: $cd $99 $03
    ld c, $00                                     ; $5090: $0e $00
    ld a, $01                                     ; $5092: $3e $01
    call CallSoundCommandDispatcher               ; $5094: $cd $b6 $03
    ld b, $03                                     ; $5097: $06 $03
    ld hl, $4717                                  ; $5099: $21 $17 $47
    ld c, $0e                                     ; $509c: $0e $0e
    ld de, $00b3                                  ; $509e: $11 $b3 $00
    call PlayScreenTransitionFadeOut              ; $50a1: $cd $4e $04
    call DisableLCDAtVBlank                       ; $50a4: $cd $83 $04
    xor a                                         ; $50a7: $af
    ld [rStatePhase_Current], a                   ; $50a8: $ea $35 $d6
    ld a, $03                                     ; $50ab: $3e $03
    ld [rGameState_Current], a                    ; $50ad: $ea $34 $d6
    jp RefreshSaveValidationChecksumsAndMirrors   ; $50b0: $c3 $1f $1b


GS07_TryInsertCurrentClearTimeIntoRanking::
    ld a, [rPuzzleTimerMinuteTens]                ; $50b3: $fa $0a $d8
    ld b, a                                       ; $50b6: $47
    ld a, [rPuzzleTimerMinuteOnes]                ; $50b7: $fa $09 $d8
    ld c, a                                       ; $50ba: $4f
    ld a, [rPuzzleTimerSecondTens]                ; $50bb: $fa $0c $d8
    ld d, a                                       ; $50be: $57
    ld a, [rPuzzleTimerSecondOnes]                ; $50bf: $fa $0b $d8
    ld e, a                                       ; $50c2: $5f
    ld hl, rSaveDataTimeTrialRankingEntries       ; $50c3: $21 $42 $a0
    xor a                                         ; $50c6: $af

.FindRankingInsertionIndexLoop:
    push af                                       ; $50c7: $f5
    push hl                                       ; $50c8: $e5
    ld a, [hl+]                                   ; $50c9: $2a
    cp b                                          ; $50ca: $b8
    jr c, .AdvanceToNextRankingEntry              ; $50cb: $38 $14

    jr nz, .InsertAtFoundRankingPosition          ; $50cd: $20 $26

    ld a, [hl+]                                   ; $50cf: $2a
    cp c                                          ; $50d0: $b9
    jr c, .AdvanceToNextRankingEntry              ; $50d1: $38 $0e

    jr nz, .InsertAtFoundRankingPosition          ; $50d3: $20 $20

    ld a, [hl+]                                   ; $50d5: $2a
    cp d                                          ; $50d6: $ba
    jr c, .AdvanceToNextRankingEntry              ; $50d7: $38 $08

    jr nz, .InsertAtFoundRankingPosition          ; $50d9: $20 $1a

    ld a, [hl+]                                   ; $50db: $2a
    cp e                                          ; $50dc: $bb
    jr c, .AdvanceToNextRankingEntry              ; $50dd: $38 $02

    jr nz, .InsertAtFoundRankingPosition          ; $50df: $20 $14

.AdvanceToNextRankingEntry:
    pop hl                                        ; $50e1: $e1
    ld a, $07                                     ; $50e2: $3e $07
    add l                                         ; $50e4: $85
    ld l, a                                       ; $50e5: $6f
    ld a, $00                                     ; $50e6: $3e $00
    adc h                                         ; $50e8: $8c
    ld h, a                                       ; $50e9: $67
    pop af                                        ; $50ea: $f1
    inc a                                         ; $50eb: $3c
    cp $05                                        ; $50ec: $fe $05
    jr nz, .FindRankingInsertionIndexLoop         ; $50ee: $20 $d7

    xor a                                         ; $50f0: $af
    ld [rGS07_NewRecordRankingPositionOrZero], a  ; $50f1: $ea $38 $d8
    ret                                           ; $50f4: $c9


.InsertAtFoundRankingPosition:
    pop hl                                        ; $50f5: $e1
    pop af                                        ; $50f6: $f1
    inc a                                         ; $50f7: $3c
    ld [rGS07_NewRecordRankingPositionOrZero], a  ; $50f8: $ea $38 $d8
    ld c, a                                       ; $50fb: $4f
    ld a, $05                                     ; $50fc: $3e $05
    sub c                                         ; $50fe: $91
    ld c, a                                       ; $50ff: $4f
    sla a                                         ; $5100: $cb $27
    sla a                                         ; $5102: $cb $27
    sla a                                         ; $5104: $cb $27
    sub c                                         ; $5106: $91
    jr z, .WriteCurrentClearTimeAndInitializeNameFields; $5107: $28 $13

    ld c, a                                       ; $5109: $4f
    ld b, $00                                     ; $510a: $06 $00
    push hl                                       ; $510c: $e5
    ld hl, rSaveDataTimeTrialRankingEntriesShiftSourceEnd; $510d: $21 $5d $a0
    ld de, rSaveDataTimeTrialRankingEntriesShiftDestEnd; $5110: $11 $64 $a0

.ShiftLowerRankingEntriesDownLoop:
    ld a, [hl-]                                   ; $5113: $3a
    ld [de], a                                    ; $5114: $12
    dec de                                        ; $5115: $1b
    dec bc                                        ; $5116: $0b
    ld a, c                                       ; $5117: $79
    or b                                          ; $5118: $b0
    jr nz, .ShiftLowerRankingEntriesDownLoop      ; $5119: $20 $f8

    pop hl                                        ; $511b: $e1

.WriteCurrentClearTimeAndInitializeNameFields:
    ld a, [rPuzzleTimerMinuteTens]                ; $511c: $fa $0a $d8
    ld [hl+], a                                   ; $511f: $22
    ld a, [rPuzzleTimerMinuteOnes]                ; $5120: $fa $09 $d8
    ld [hl+], a                                   ; $5123: $22
    ld a, [rPuzzleTimerSecondTens]                ; $5124: $fa $0c $d8
    ld [hl+], a                                   ; $5127: $22
    ld a, [rPuzzleTimerSecondOnes]                ; $5128: $fa $0b $d8
    ld [hl+], a                                   ; $512b: $22
    ld a, $6f                                     ; $512c: $3e $6f
    ld [hl+], a                                   ; $512e: $22
    ld [hl+], a                                   ; $512f: $22
    ld [hl], a                                    ; $5130: $77
    ret                                           ; $5131: $c9


GS07_DrawTimeTrialRankingEntriesFromSaveData::
    ld hl, rSaveDataTimeTrialRankingEntries       ; $5132: $21 $42 $a0
    ld de, $9300                                  ; $5135: $11 $00 $93
    ld a, $05                                     ; $5138: $3e $05

.DrawTimeTrialRankingEntryRowLoop:
    push af                                       ; $513a: $f5
    ld a, [hl+]                                   ; $513b: $2a
    or $30                                        ; $513c: $f6 $30
    call DrawUIFontGlyph                          ; $513e: $cd $c0 $51
    ld a, [hl+]                                   ; $5141: $2a
    or $30                                        ; $5142: $f6 $30
    call DrawUIFontGlyph                          ; $5144: $cd $c0 $51
    ld a, $10                                     ; $5147: $3e $10
    add e                                         ; $5149: $83
    ld e, a                                       ; $514a: $5f
    ld a, $00                                     ; $514b: $3e $00
    adc d                                         ; $514d: $8a
    ld d, a                                       ; $514e: $57
    ld a, [hl+]                                   ; $514f: $2a
    or $30                                        ; $5150: $f6 $30
    call DrawUIFontGlyph                          ; $5152: $cd $c0 $51
    ld a, [hl+]                                   ; $5155: $2a
    or $30                                        ; $5156: $f6 $30
    call DrawUIFontGlyph                          ; $5158: $cd $c0 $51
    ld a, [hl+]                                   ; $515b: $2a
    call DrawUIFontGlyph                          ; $515c: $cd $c0 $51
    ld a, [hl+]                                   ; $515f: $2a
    call DrawUIFontGlyph                          ; $5160: $cd $c0 $51
    ld a, [hl+]                                   ; $5163: $2a
    call DrawUIFontGlyph                          ; $5164: $cd $c0 $51
    ld a, $80                                     ; $5167: $3e $80
    add e                                         ; $5169: $83
    ld e, a                                       ; $516a: $5f
    ld a, $00                                     ; $516b: $3e $00
    adc d                                         ; $516d: $8a
    ld d, a                                       ; $516e: $57
    pop af                                        ; $516f: $f1
    dec a                                         ; $5170: $3d
    jr nz, .DrawTimeTrialRankingEntryRowLoop      ; $5171: $20 $c7

    ret                                           ; $5173: $c9


GS07_DrawCurrentClearTimeFromTimer::
    ld de, $8800                                  ; $5174: $11 $00 $88
    ld a, [rPuzzleTimerMinuteTens]                ; $5177: $fa $0a $d8
    or $30                                        ; $517a: $f6 $30
    call DrawUIFontGlyph                          ; $517c: $cd $c0 $51
    ld a, [rPuzzleTimerMinuteOnes]                ; $517f: $fa $09 $d8
    or $30                                        ; $5182: $f6 $30
    call DrawUIFontGlyph                          ; $5184: $cd $c0 $51
    ld a, $10                                     ; $5187: $3e $10
    add e                                         ; $5189: $83
    ld e, a                                       ; $518a: $5f
    ld a, $00                                     ; $518b: $3e $00
    adc d                                         ; $518d: $8a
    ld d, a                                       ; $518e: $57
    ld a, [rPuzzleTimerSecondTens]                ; $518f: $fa $0c $d8
    or $30                                        ; $5192: $f6 $30
    call DrawUIFontGlyph                          ; $5194: $cd $c0 $51
    ld a, [rPuzzleTimerSecondOnes]                ; $5197: $fa $0b $d8
    or $30                                        ; $519a: $f6 $30
    call DrawUIFontGlyph                          ; $519c: $cd $c0 $51
    ret                                           ; $519f: $c9


GS07_DrawCurrentClearTimePlaceholderDashes::
    ld de, $8800                                  ; $51a0: $11 $00 $88
    ld a, $2d                                     ; $51a3: $3e $2d
    call DrawUIFontGlyph                          ; $51a5: $cd $c0 $51
    ld a, $2d                                     ; $51a8: $3e $2d
    call DrawUIFontGlyph                          ; $51aa: $cd $c0 $51
    ld a, $10                                     ; $51ad: $3e $10
    add e                                         ; $51af: $83
    ld e, a                                       ; $51b0: $5f
    ld a, $00                                     ; $51b1: $3e $00
    adc d                                         ; $51b3: $8a
    ld d, a                                       ; $51b4: $57
    ld a, $2d                                     ; $51b5: $3e $2d
    call DrawUIFontGlyph                          ; $51b7: $cd $c0 $51
    ld a, $2d                                     ; $51ba: $3e $2d
    call DrawUIFontGlyph                          ; $51bc: $cd $c0 $51
    ret                                           ; $51bf: $c9


DrawUIFontGlyph::
    push hl                                       ; $51c0: $e5
    ld c, a                                       ; $51c1: $4f
    ld b, $00                                     ; $51c2: $06 $00
    ld hl, PromptFontLookup                       ; $51c4: $21 $e7 $51
    add hl, bc                                    ; $51c7: $09
    ld c, [hl]                                    ; $51c8: $4e
    sla c                                         ; $51c9: $cb $21
    rl b                                          ; $51cb: $cb $10
    sla c                                         ; $51cd: $cb $21
    rl b                                          ; $51cf: $cb $10
    sla c                                         ; $51d1: $cb $21
    rl b                                          ; $51d3: $cb $10
    sla c                                         ; $51d5: $cb $21
    rl b                                          ; $51d7: $cb $10
    ld hl, $5000                                  ; $51d9: $21 $00 $50
    add hl, bc                                    ; $51dc: $09
    ld a, $0b                                     ; $51dd: $3e $0b
    ld bc, $0010                                  ; $51df: $01 $10 $00
    call BankedTransparentTileCopy                ; $51e2: $cd $04 $05
    pop hl                                        ; $51e5: $e1
    ret                                           ; $51e6: $c9


SETCHARMAP prompt

PromptFontLookup::
    db "                "

    db "            ➔   "

    db "  ”    '    ,-. "

    db "0123456789      "

    db " ABCDEFGHIJKLMNO"

    db "PQRSTUVWXYZ     "

    db "                "

    db "                "

InitializePuzzleOrderTable::
    ld hl, rPuzzleOrderTableStart                 ; $5267: $21 $02 $a0
    xor a                                         ; $526a: $af

.InitializePuzzleOrderTableLoop:
    ld [hl+], a                                   ; $526b: $22
    inc a                                         ; $526c: $3c
    cp $40                                        ; $526d: $fe $40
    jr nz, .InitializePuzzleOrderTableLoop        ; $526f: $20 $fa

    jp ReturnFromBankedJumpRestoreBank            ; $5271: $c3 $ea $05


ShufflePuzzleOrderTable::
    ld a, $40                                     ; $5274: $3e $40
    ld de, rPuzzleOrderTableStart                 ; $5276: $11 $02 $a0

.ShufflePuzzleOrderTableLoop:
    push af                                       ; $5279: $f5
    push de                                       ; $527a: $d5
    call GetSubtractiveRNGStateByte               ; $527b: $cd $14 $06
    and $3f                                       ; $527e: $e6 $3f
    pop de                                        ; $5280: $d1
    ld c, a                                       ; $5281: $4f
    ld b, $00                                     ; $5282: $06 $00
    ld hl, rPuzzleOrderTableStart                 ; $5284: $21 $02 $a0
    add hl, bc                                    ; $5287: $09
    ld c, [hl]                                    ; $5288: $4e
    ld a, [de]                                    ; $5289: $1a
    ld [hl], a                                    ; $528a: $77
    ld a, c                                       ; $528b: $79
    ld [de], a                                    ; $528c: $12
    pop af                                        ; $528d: $f1
    inc de                                        ; $528e: $13
    dec a                                         ; $528f: $3d
    jr nz, .ShufflePuzzleOrderTableLoop           ; $5290: $20 $e7

    ld [rPuzzleOrderTableCursor], a               ; $5292: $ea $01 $a0
    jp ReturnFromBankedJumpRestoreBank            ; $5295: $c3 $ea $05


GS07_DispatchBottomPromptBlinkVariant::
    ld a, [rGS07_BottomPromptVariantFlag]         ; $5298: $fa $39 $d8
    and a                                         ; $529b: $a7
    jr nz, .DispatchBottomPromptBlink_TryAgain    ; $529c: $20 $09

    ld b, $03                                     ; $529e: $06 $03
    ld hl, $4ee9                                  ; $52a0: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $52a3: $cd $de $05
    ret                                           ; $52a6: $c9


.DispatchBottomPromptBlink_TryAgain:
    ld b, $03                                     ; $52a7: $06 $03
    ld hl, $4f10                                  ; $52a9: $21 $10 $4f
    call SwitchBankToBAndJumpToHL                 ; $52ac: $cd $de $05
    ret                                           ; $52af: $c9


Puzzle_HT00_LetterN_Data::
    db $c8, $00, $e8, $00, $f8, $00, $d8, $00, $c8, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05

Puzzle_EP00_LetterL_Data::
    db $c0, $00, $c0, $00, $c0, $00, $c0, $00, $f8, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05

Puzzle_EP01_LetterE_Data::
    db $f8, $00, $c0, $00, $f0, $00, $c0, $00, $f8, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05

Puzzle_EP02_LetterT_Data::
    db $f8, $00, $20, $00, $20, $00, $20, $00, $20, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05

Puzzle_EP03_LetterS_Data::
    db $78, $00, $c0, $00, $f8, $00, $18, $00, $f0, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05

Puzzle_EP04_LetterW_Data::
    db $88, $00, $a8, $00, $a8, $00, $f8, $00, $50, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05

Puzzle_EP05_LetterO_Data::
    db $70, $00, $c8, $00, $c8, $00, $c8, $00, $70, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05

Puzzle_EP06_LetterR_Data::
    db $f0, $00, $c8, $00, $c8, $00, $f0, $00, $c8, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05

Puzzle_EP07_LetterK_Data::
    db $d8, $00, $f0, $00, $e0, $00, $f0, $00, $d8, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05

Puzzle_EP08_note_Data::
    db $0f, $00, $0f, $80, $0f, $c0, $09, $c0, $08, $c0
    db $08, $c0, $08, $80, $f9, $00, $f8, $00, $f8, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP09_diamond_Data::
    db $0c, $00, $1e, $00, $3f, $00, $7f, $80, $ff, $c0
    db $ff, $c0, $7f, $80, $3f, $00, $1e, $00, $0c, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP0A_spade_Data::
    db $0c, $00, $1e, $00, $3f, $00, $7f, $80, $ff, $c0
    db $ff, $c0, $ff, $c0, $6d, $80, $1e, $00, $3f, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP0B_heart_Data::
    db $73, $80, $ff, $c0, $ff, $c0, $df, $c0, $df, $c0
    db $6f, $80, $7f, $80, $3f, $00, $1e, $00, $0c, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP0C_clover_Data::
    db $0c, $00, $1e, $00, $1e, $00, $6d, $80, $ff, $c0
    db $ff, $c0, $ff, $c0, $6d, $80, $0c, $00, $3f, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP0D_question_mark_Data::
    db $7f, $80, $ff, $c0, $c0, $c0, $c0, $c0, $07, $c0
    db $0f, $80, $0c, $00, $00, $00, $0c, $00, $0c, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP0E_dollar_sign_Data::
    db $12, $00, $7f, $c0, $ff, $c0, $d2, $00, $ff, $80
    db $7f, $c0, $12, $c0, $ff, $c0, $ff, $80, $12, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP0F_arrow_Data::
    db $ff, $00, $81, $00, $9f, $00, $ac, $00, $b6, $00
    db $bb, $00, $ad, $80, $e6, $c0, $03, $40, $01, $c0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP10_crescent_Data::
    db $1e, $00, $7f, $00, $78, $80, $f0, $00, $f0, $00
    db $f0, $00, $f0, $00, $78, $80, $7f, $00, $1e, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP11_star_Data::
    db $0c, $00, $1e, $00, $1e, $00, $ff, $c0, $df, $c0
    db $6f, $80, $2f, $00, $7f, $80, $73, $80, $e1, $c0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP12_sailboat_Data::
    db $0c, $00, $0e, $00, $0b, $00, $09, $80, $08, $c0
    db $0f, $c0, $08, $00, $ff, $c0, $6a, $c0, $3f, $80
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP13_car_Data::
    db $0f, $00, $1f, $80, $15, $80, $14, $80, $7f, $c0
    db $bf, $c0, $ff, $c0, $ff, $c0, $de, $c0, $73, $80
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP14_cactus_Data::
    db $0c, $00, $1e, $c0, $1e, $c0, $de, $c0, $df, $c0
    db $df, $80, $fe, $00, $7e, $00, $1e, $00, $1e, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP15_apple_Data::
    db $0c, $00, $08, $00, $77, $80, $df, $c0, $ff, $c0
    db $bf, $c0, $bf, $c0, $df, $c0, $7f, $80, $3f, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP16_chestnut_Data::
    db $00, $00, $04, $00, $0e, $00, $17, $00, $2f, $80
    db $6f, $c0, $7f, $c0, $71, $c0, $20, $80, $1f, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP17_doughnut_Data::
    db $1f, $00, $71, $80, $40, $c0, $de, $40, $92, $40
    db $92, $40, $9e, $c0, $c0, $80, $63, $80, $3e, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP18_knife_and_fork_Data::
    db $ff, $c0, $ab, $40, $aa, $40, $aa, $40, $82, $40
    db $ee, $40, $ef, $40, $ef, $40, $ef, $40, $ff, $c0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP19_flag_Data::
    db $e0, $00, $b8, $00, $be, $00, $bf, $c0, $bf, $c0
    db $bf, $80, $bf, $00, $b8, $00, $a0, $00, $a0, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP1A_cup_Data::
    db $00, $00, $00, $00, $fe, $00, $bf, $c0, $bf, $c0
    db $fe, $c0, $be, $c0, $ff, $80, $fe, $00, $7c, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP1B_flask_Data::
    db $33, $00, $12, $00, $12, $00, $12, $00, $12, $00
    db $21, $00, $5e, $80, $bf, $40, $80, $40, $ff, $c0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP1C_house_Data::
    db $0e, $00, $1f, $00, $37, $80, $63, $c0, $c1, $c0
    db $dd, $40, $55, $40, $55, $40, $55, $40, $7f, $c0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP1D_glove_Data::
    db $15, $00, $15, $40, $15, $40, $15, $40, $1f, $c0
    db $df, $c0, $ff, $c0, $7f, $c0, $3f, $c0, $1f, $80
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP1E_balloon_Data::
    db $3e, $00, $6f, $00, $5f, $00, $5f, $00, $7f, $00
    db $7f, $00, $3e, $00, $08, $00, $08, $00, $06, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP1F_pencil_Data::
    db $f8, $00, $c4, $00, $9e, $00, $bf, $00, $bf, $80
    db $6f, $c0, $37, $c0, $1b, $c0, $0d, $80, $07, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP20_pot_Data::
    db $04, $00, $1f, $00, $1f, $00, $d7, $c0, $5f, $40
    db $57, $40, $77, $40, $7f, $c0, $1f, $00, $1f, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP21_umbrella_Data::
    db $0c, $00, $3f, $00, $7f, $80, $ff, $c0, $ff, $c0
    db $a9, $40, $08, $00, $08, $00, $0a, $00, $06, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP22_bell_Data::
    db $0c, $00, $0c, $00, $1e, $00, $33, $00, $27, $00
    db $27, $00, $7f, $80, $83, $c0, $7f, $80, $0c, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP23_boot_Data::
    db $07, $c0, $04, $40, $04, $40, $04, $40, $1c, $40
    db $76, $40, $d3, $c0, $8a, $40, $8e, $40, $fb, $c0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP24_candle_Data::
    db $18, $00, $3c, $00, $2c, $00, $19, $c0, $25, $40
    db $25, $40, $e7, $40, $e7, $c0, $ff, $00, $7e, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP25_faucet_Data::
    db $0f, $80, $12, $40, $1d, $c0, $0f, $80, $78, $80
    db $88, $80, $b8, $80, $ef, $80, $05, $00, $05, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP26_bulb_Data::
    db $7e, $00, $c3, $00, $81, $00, $89, $00, $95, $00
    db $8b, $80, $c6, $c0, $7d, $40, $06, $c0, $03, $80
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP27_anchor_Data::
    db $03, $80, $46, $c0, $c4, $40, $82, $c0, $8d, $80
    db $dc, $00, $78, $00, $70, $00, $79, $80, $0f, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP28_choplifter_Data::
    db $10, $00, $ff, $00, $10, $00, $38, $00, $58, $40
    db $fe, $40, $ff, $c0, $21, $00, $ff, $c0, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP29_ball_Data::
    db $3f, $00, $61, $80, $b3, $40, $92, $40, $92, $40
    db $92, $40, $92, $40, $b3, $40, $61, $80, $3f, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP2A_BOO_DIDDLY_Data::
    db $c1, $c0, $80, $c0, $00, $40, $50, $40, $53, $40
    db $01, $00, $73, $00, $20, $00, $80, $40, $e1, $c0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP2B_panda_Data::
    db $e1, $c0, $ff, $c0, $40, $80, $80, $40, $b3, $40
    db $91, $40, $b3, $40, $cc, $c0, $61, $80, $3f, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP2C_wild_duck_Data::
    db $38, $00, $58, $00, $f8, $00, $30, $00, $70, $40
    db $67, $c0, $fc, $c0, $e1, $c0, $f3, $80, $7f, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP2D_chicken_Data::
    db $38, $00, $3c, $00, $e4, $00, $b4, $00, $e7, $c0
    db $68, $40, $68, $40, $27, $c0, $30, $80, $1f, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP2E_snail_Data::
    db $a7, $80, $af, $c0, $ec, $c0, $9b, $40, $99, $40
    db $5f, $40, $48, $c0, $47, $c0, $20, $00, $1f, $c0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP2F_MARIO_Data::
    db $3f, $80, $3f, $c0, $ff, $c0, $29, $c0, $e9, $c0
    db $80, $40, $f0, $40, $78, $c0, $21, $80, $1f, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $0a, $0a

Puzzle_EP30_lipstick_Data::
    db $01, $80, $02, $80, $05, $80, $07, $80, $07, $80
    db $0f, $c0, $08, $40, $08, $c0, $08, $c0, $08, $c0
    db $08, $c0, $08, $c0, $0f, $c0, $08, $40, $0f, $c0
    db $0f, $0f

Puzzle_EP31_silk_hat_Data::
    db $00, $00, $0f, $c0, $10, $20, $1f, $e0, $1b, $e0
    db $1b, $e0, $1f, $e0, $1f, $e0, $1f, $f8, $70, $3c
    db $f0, $3c, $ff, $fc, $ff, $f8, $7f, $00, $00, $00
    db $0f, $0f

Puzzle_EP32_ax_Data::
    db $39, $c0, $2f, $40, $2f, $f0, $2f, $f0, $2f, $f0
    db $2f, $f0, $2f, $40, $39, $40, $01, $40, $01, $40
    db $01, $40, $01, $40, $01, $40, $01, $40, $01, $c0
    db $0f, $0f

Puzzle_EP33_wood_stove_Data::
    db $06, $00, $06, $00, $06, $00, $1f, $f0, $03, $80
    db $07, $c0, $0f, $e0, $1f, $f0, $10, $f0, $16, $f0
    db $10, $f0, $1f, $f0, $0f, $e0, $07, $c0, $1f, $f0
    db $0f, $0f

Puzzle_EP34_locomotive_Data::
    db $00, $00, $00, $00, $ff, $80, $7f, $00, $63, $38
    db $63, $38, $63, $38, $ff, $fe, $ff, $fe, $ff, $fe
    db $ff, $fe, $e3, $c6, $eb, $d6, $22, $44, $3e, $7c
    db $0f, $0f

Puzzle_EP35_frozen_pop_Data::
    db $07, $c0, $0f, $e0, $1b, $70, $1f, $f0, $16, $d0
    db $1f, $f0, $1f, $f0, $1b, $d0, $11, $10, $10, $10
    db $1f, $f0, $02, $80, $02, $80, $02, $80, $03, $80
    db $0f, $0f

Puzzle_EP36_carrot_Data::
    db $1b, $60, $1f, $e0, $0f, $c0, $07, $00, $1d, $e0
    db $30, $70, $20, $30, $2f, $f0, $20, $70, $37, $f0
    db $10, $60, $17, $e0, $19, $c0, $0d, $80, $07, $00
    db $0f, $0f

Puzzle_EP37_whale_Data::
    db $00, $00, $1b, $00, $2e, $80, $04, $00, $04, $00
    db $04, $00, $3f, $00, $7f, $80, $7f, $ca, $df, $ee
    db $ff, $ee, $ff, $fc, $7f, $f8, $00, $00, $00, $00
    db $0f, $0f

Puzzle_EP38_chair_Data::
    db $07, $80, $0f, $c0, $1c, $e0, $14, $a0, $14, $a0
    db $14, $a0, $14, $a0, $1f, $e0, $1f, $f0, $1c, $18
    db $17, $f8, $12, $48, $12, $48, $12, $48, $02, $08
    db $0f, $0f

Puzzle_EP39_hourglass_Data::
    db $7f, $fc, $67, $fc, $7f, $fc, $28, $28, $2f, $e8
    db $2d, $e8, $25, $c8, $23, $88, $24, $48, $28, $28
    db $2f, $e8, $2d, $e8, $7f, $fc, $67, $fc, $7f, $fc
    db $0f, $0f

Puzzle_EP3A_bottles_Data::
    db $00, $38, $00, $38, $00, $38, $30, $38, $30, $38
    db $30, $7c, $30, $fe, $30, $fe, $78, $86, $fc, $b6
    db $fc, $86, $c4, $b6, $c4, $86, $c4, $fe, $fc, $fe
    db $0f, $0f

Puzzle_EP3B_skillet_Data::
    db $00, $00, $00, $00, $00, $00, $00, $00, $08, $06
    db $3e, $1e, $7f, $78, $80, $e0, $ff, $c0, $bf, $80
    db $bf, $80, $ff, $80, $00, $00, $00, $00, $00, $00
    db $0f, $0f

Puzzle_EP3C_coffee_maker_Data::
    db $ff, $fe, $ff, $fe, $fa, $08, $fa, $0e, $da, $0a
    db $fb, $18, $d9, $f0, $fb, $f8, $da, $0e, $fa, $0a
    db $fb, $fa, $db, $fe, $d9, $f0, $ff, $fe, $ff, $fe
    db $0f, $0f

Puzzle_EP3D_mail_box_Data::
    db $00, $00, $00, $00, $3f, $f8, $4f, $fc, $87, $fe
    db $b6, $4e, $86, $ae, $86, $ae, $86, $ee, $87, $fe
    db $ff, $fe, $01, $40, $01, $40, $01, $40, $01, $40
    db $0f, $0f

Puzzle_EP3E_camera_Data::
    db $00, $f8, $01, $54, $01, $74, $79, $8c, $48, $f8
    db $ff, $fe, $9f, $ca, $9c, $7a, $9b, $ba, $b6, $da
    db $b5, $da, $b7, $da, $bb, $ba, $bc, $7a, $ff, $fe
    db $0f, $0f

Puzzle_EP3F_scissors_Data::
    db $03, $00, $02, $80, $02, $80, $02, $9c, $02, $be
    db $02, $a2, $fe, $e2, $82, $be, $7e, $fc, $02, $80
    db $0f, $80, $19, $80, $19, $80, $19, $80, $0f, $80
    db $0f, $0f

Puzzle_KC00_GAME_BOY_Data::
    db $ff, $fe, $c0, $06, $df, $f6, $d8, $36, $d8, $36
    db $d8, $36, $d8, $36, $df, $f6, $c0, $06, $c8, $06
    db $dc, $06, $c8, $76, $c0, $06, $c0, $0e, $ff, $fe
    db $0f, $0f

Puzzle_KC01_STAR_Data::
    db $fe, $fe, $fc, $7e, $fc, $7e, $f8, $3e, $f8, $3e
    db $02, $80, $82, $82, $c2, $86, $e0, $0e, $f0, $1e
    db $e0, $0e, $e0, $0e, $c1, $06, $c3, $86, $8f, $e2
    db $0f, $0f

Puzzle_KC02_high_heel_Data::
    db $00, $00, $00, $0c, $00, $36, $00, $ce, $1b, $3e
    db $24, $fe, $1f, $fe, $0f, $fc, $1f, $cc, $3f, $8c
    db $ff, $0c, $fe, $0c, $00, $00, $00, $00, $00, $00
    db $0f, $0f

Puzzle_KC03_bread_Data::
    db $00, $00, $0f, $e0, $3f, $30, $61, $d8, $40, $f8
    db $c0, $fc, $80, $7c, $d5, $7c, $80, $7c, $d5, $7c
    db $80, $7c, $d5, $7c, $80, $7c, $ff, $f0, $00, $00
    db $0f, $0f

Puzzle_KC04_cake_Data::
    db $00, $00, $1c, $00, $3f, $00, $2f, $80, $3e, $c0
    db $5c, $60, $40, $30, $78, $18, $7f, $8c, $47, $fc
    db $78, $7c, $7f, $84, $7f, $fc, $07, $fc, $00, $7c
    db $0f, $0f

Puzzle_KC05_hanger_Data::
    db $07, $c0, $08, $20, $0b, $a0, $0b, $a0, $0f, $a0
    db $07, $20, $0c, $60, $18, $30, $33, $98, $66, $cc
    db $cc, $66, $98, $32, $bf, $fa, $80, $02, $ff, $fe
    db $0f, $0f

Puzzle_KC06_bus_Data::
    db $00, $00, $00, $00, $1f, $fc, $3f, $fe, $26, $aa
    db $26, $aa, $2f, $fe, $ff, $fe, $ff, $fe, $ff, $fe
    db $ff, $fe, $e7, $e6, $24, $24, $3c, $3c, $00, $00
    db $0f, $0f

Puzzle_KC07_tinkle_Data::
    db $03, $80, $02, $80, $1f, $f0, $30, $18, $60, $0c
    db $40, $04, $40, $04, $ff, $fe, $80, $02, $ff, $fe
    db $40, $04, $43, $84, $63, $8c, $31, $18, $1f, $f0
    db $0f, $0f

Puzzle_KC08_skate_Data::
    db $03, $c6, $07, $fe, $0c, $fe, $79, $fe, $e3, $fe
    db $ff, $5e, $ff, $fe, $ff, $82, $80, $42, $ff, $fe
    db $28, $28, $ff, $fe, $80, $02, $40, $02, $7f, $fc
    db $0f, $0f

Puzzle_KC09_shoe_Data::
    db $00, $00, $00, $00, $00, $00, $00, $fc, $79, $82
    db $e7, $fe, $95, $06, $95, $0a, $90, $12, $d0, $12
    db $7f, $fc, $3e, $7c, $00, $00, $00, $00, $00, $00
    db $0f, $0f

Puzzle_KC0A_cap_Data::
    db $00, $00, $00, $00, $1f, $00, $71, $c0, $40, $40
    db $c0, $60, $82, $a0, $83, $b8, $82, $bc, $80, $7e
    db $e1, $fe, $3f, $fc, $07, $f0, $00, $00, $00, $00
    db $0f, $0f

Puzzle_KC0B_telephone_Data::
    db $1f, $f0, $7f, $fc, $ff, $fe, $f8, $3e, $f4, $5e
    db $f4, $5e, $0f, $e0, $1f, $f0, $1c, $70, $3b, $b8
    db $3b, $b8, $7b, $bc, $7c, $7c, $7f, $fc, $7f, $fc
    db $0f, $0f

Puzzle_KC0C_can_Data::
    db $00, $38, $00, $6c, $00, $44, $00, $c4, $00, $8c
    db $00, $d8, $1f, $f0, $10, $40, $1f, $40, $11, $40
    db $1d, $40, $11, $40, $1f, $40, $10, $40, $1f, $c0
    db $0f, $0f

Puzzle_KC0D_garlic_Data::
    db $00, $00, $07, $80, $05, $80, $05, $80, $05, $80
    db $05, $80, $1c, $e0, $30, $f0, $25, $70, $6d, $b8
    db $48, $b8, $48, $b8, $6d, $b8, $35, $70, $1f, $e0
    db $0f, $0f

Puzzle_KC0E_hand_Data::
    db $00, $30, $00, $70, $00, $70, $00, $78, $7e, $3c
    db $7e, $be, $00, $9e, $fe, $9e, $fe, $8e, $00, $c2
    db $7e, $fe, $7e, $fe, $01, $fe, $1f, $fc, $1f, $80
    db $0f, $0f

Puzzle_KC0F_hamburger_Data::
    db $00, $00, $0f, $e0, $38, $78, $60, $7c, $40, $fc
    db $ff, $fe, $80, $02, $48, $cc, $3f, $fc, $3f, $f8
    db $40, $7c, $40, $fc, $61, $fc, $3f, $f8, $00, $00
    db $0f, $0f

Puzzle_KC10_shovel_Data::
    db $00, $38, $00, $7c, $00, $5e, $00, $4e, $00, $e6
    db $11, $bc, $3b, $60, $7e, $c0, $ff, $80, $fd, $00
    db $f9, $80, $f3, $c0, $ff, $80, $ff, $00, $fe, $00
    db $0f, $0f

Puzzle_KC11_necklace_Data::
    db $0f, $e0, $38, $38, $60, $0c, $40, $04, $c0, $06
    db $80, $02, $80, $02, $80, $02, $c0, $06, $a3, $8a
    db $b7, $da, $57, $54, $77, $dc, $37, $d8, $03, $80
    db $0f, $0f

Puzzle_KC12_UFO_Data::
    db $03, $80, $07, $c0, $07, $c0, $0f, $e0, $08, $20
    db $0d, $60, $08, $20, $1f, $f0, $33, $f8, $67, $fc
    db $cf, $fe, $ff, $fe, $ff, $fe, $44, $44, $3b, $b8
    db $0f, $0f

Puzzle_KC13_BULLET_BILL_Data::
    db $00, $00, $0f, $f6, $3a, $18, $73, $fe, $53, $fe
    db $c3, $9a, $e7, $9a, $fc, $9a, $f8, $1a, $f8, $3a
    db $7c, $fe, $7f, $fe, $3f, $fe, $0f, $f6, $00, $00
    db $0f, $0f

Puzzle_KC14_tomato_Data::
    db $00, $00, $0d, $20, $05, $c0, $3b, $38, $7c, $fc
    db $7f, $fc, $ff, $fe, $ff, $fe, $cf, $fe, $cf, $fe
    db $ff, $fe, $67, $fc, $3f, $f8, $0f, $e0, $00, $00
    db $0f, $0f

Puzzle_KC15_flower_Data::
    db $0f, $80, $1a, $c0, $1d, $c0, $1a, $c0, $0f, $80
    db $02, $00, $02, $00, $02, $00, $02, $00, $02, $00
    db $e2, $1e, $7a, $fc, $3a, $f8, $3f, $e0, $0f, $00
    db $0f, $0f

Puzzle_KC16_GRAND_GOOMBAS_Data::
    db $07, $c0, $0f, $e0, $7f, $fc, $4f, $e4, $43, $84
    db $c7, $c6, $c5, $46, $e3, $8e, $ff, $fe, $c0, $06
    db $7f, $fc, $10, $10, $78, $3c, $ff, $fe, $fc, $7e
    db $0f, $0f

Puzzle_KC17_coffee_cup_Data::
    db $00, $00, $00, $00, $1f, $e0, $30, $30, $3f, $fe
    db $3f, $fe, $37, $f2, $37, $fe, $3f, $fc, $37, $f8
    db $7f, $fc, $5f, $e4, $4f, $c4, $60, $0c, $3f, $f8
    db $0f, $0f

Puzzle_KC18_mutt_Data::
    db $00, $00, $73, $80, $ff, $dc, $e1, $d6, $e1, $d2
    db $d2, $da, $d2, $ca, $40, $fa, $4c, $8e, $60, $86
    db $3f, $02, $20, $02, $20, $02, $24, $f2, $3f, $9e
    db $0f, $0f

Puzzle_KC19_overalls_Data::
    db $1c, $e0, $14, $a0, $17, $a0, $14, $a0, $1c, $e0
    db $10, $20, $17, $b0, $34, $90, $27, $98, $20, $08
    db $60, $08, $43, $88, $7e, $f8, $44, $88, $7c, $f8
    db $0f, $0f

Puzzle_KC1A_leaf_Data::
    db $00, $00, $00, $00, $f8, $c0, $be, $e0, $de, $b0
    db $ef, $b0, $f7, $b8, $7b, $b8, $7d, $b8, $1e, $b8
    db $ff, $78, $c0, $b0, $7f, $d0, $3f, $e8, $0f, $98
    db $0f, $0f

Puzzle_KC1B_unicorn_Data::
    db $f0, $00, $9f, $00, $c5, $80, $7d, $80, $41, $80
    db $45, $8c, $41, $9e, $79, $fe, $10, $ea, $10, $ea
    db $10, $08, $10, $08, $15, $e8, $15, $28, $1f, $38
    db $0f, $0f

Puzzle_KC1C_bull_Data::
    db $0d, $80, $18, $c0, $18, $c0, $7f, $dc, $78, $7c
    db $38, $f0, $13, $78, $33, $fe, $27, $fe, $47, $fe
    db $57, $fe, $4f, $fe, $38, $fe, $00, $7e, $00, $7e
    db $0f, $0f

Puzzle_KC1D_controller_Data::
    db $01, $00, $01, $00, $01, $00, $01, $00, $71, $1c
    db $d1, $16, $bf, $fa, $c0, $06, $80, $32, $98, $02
    db $bc, $da, $bc, $02, $98, $32, $c3, $86, $7c, $7c
    db $0f, $0f

Puzzle_KC1E_onion_Data::
    db $03, $00, $03, $80, $02, $80, $0e, $e0, $1a, $b0
    db $35, $58, $2d, $6c, $69, $24, $49, $24, $49, $24
    db $49, $24, $6d, $6c, $35, $58, $1f, $f0, $05, $40
    db $0f, $0f

Puzzle_KC1F_skull_and_crossbones_Data::
    db $fc, $7e, $f8, $3e, $f2, $9e, $f2, $9e, $f0, $1e
    db $b1, $1e, $98, $3a, $1a, $b8, $cf, $e0, $e3, $8e
    db $f8, $fe, $fe, $3e, $73, $80, $07, $e2, $9f, $fa
    db $0f, $0f

Puzzle_KC20_snowman_Data::
    db $0f, $e0, $18, $30, $10, $10, $12, $90, $10, $10
    db $33, $98, $78, $3c, $cf, $e6, $80, $02, $80, $02
    db $80, $02, $80, $02, $c0, $06, $60, $0c, $3f, $f8
    db $0f, $0f

Puzzle_KC21_chameleon_Data::
    db $00, $00, $00, $00, $1d, $c0, $27, $f0, $77, $f8
    db $ff, $f8, $8f, $fc, $7f, $fe, $07, $fe, $0f, $36
    db $19, $12, $33, $32, $00, $02, $00, $0a, $00, $0e
    db $0f, $0f

Puzzle_KC22_cucumber_Data::
    db $00, $0e, $00, $78, $00, $f8, $01, $d8, $01, $f8
    db $01, $78, $03, $f0, $07, $e0, $3f, $40, $6f, $c0
    db $7d, $80, $ff, $80, $b7, $00, $fe, $00, $78, $00
    db $0f, $0f

Puzzle_KC23_buildings_Data::
    db $01, $00, $01, $00, $03, $80, $02, $80, $06, $c0
    db $fc, $40, $8d, $7c, $fc, $46, $8d, $56, $ac, $46
    db $8d, $56, $ac, $46, $8d, $56, $af, $e6, $88, $26
    db $0f, $0f

Puzzle_KC24_pear_Data::
    db $0c, $78, $06, $cc, $03, $86, $07, $8c, $0d, $f8
    db $09, $c0, $08, $e0, $18, $e0, $30, $70, $60, $78
    db $40, $78, $40, $78, $60, $f8, $33, $f0, $1f, $e0
    db $0f, $0f

Puzzle_KC25_owl_Data::
    db $20, $10, $30, $70, $3f, $f0, $22, $30, $2a, $b8
    db $62, $38, $7d, $fc, $65, $3c, $62, $3c, $68, $bc
    db $6a, $bc, $62, $38, $30, $78, $1f, $f0, $17, $40
    db $0f, $0f

Puzzle_KC26_rice_ball_Data::
    db $00, $00, $01, $f0, $0f, $b8, $1f, $d8, $31, $dc
    db $20, $ec, $64, $ee, $4e, $76, $ce, $76, $84, $3a
    db $80, $3a, $c0, $7c, $7f, $e0, $00, $00, $00, $00
    db $0f, $0f

Puzzle_KC27_soap_bubbles_Data::
    db $ff, $40, $e3, $40, $d9, $b2, $d1, $c6, $c1, $fe
    db $e3, $e0, $ff, $de, $cf, $be, $a7, $be, $87, $ea
    db $cf, $ca, $fb, $e0, $f1, $12, $fb, $e0, $ff, $f8
    db $0f, $0f

Puzzle_KC28_baby_buggy_Data::
    db $1e, $02, $7f, $c6, $07, $ec, $00, $f8, $00, $10
    db $00, $30, $ff, $d8, $ff, $b8, $ff, $b8, $ff, $70
    db $7f, $70, $0f, $80, $77, $70, $50, $50, $70, $70
    db $0f, $0f

Puzzle_KC29_bomb_Data::
    db $07, $84, $0c, $c2, $0c, $66, $00, $2e, $0c, $0e
    db $3f, $1a, $7f, $9a, $ff, $cc, $ff, $c0, $ff, $c0
    db $ff, $c0, $ff, $c0, $ff, $c0, $7f, $80, $3f, $00
    db $0f, $0f

Puzzle_KC2A_kettle_Data::
    db $00, $00, $01, $e0, $03, $f0, $06, $18, $06, $0c
    db $66, $04, $f7, $f4, $d8, $0c, $63, $02, $26, $1a
    db $26, $1a, $26, $1a, $26, $1a, $1f, $fc, $00, $00
    db $0f, $0f

Puzzle_KC2B_weight_lifting_Data::
    db $c0, $06, $a0, $0a, $bf, $fa, $a8, $4a, $c8, $46
    db $0b, $40, $0b, $40, $07, $c0, $07, $00, $07, $00
    db $07, $00, $1f, $00, $11, $00, $11, $00, $31, $e0
    db $0f, $0f

Puzzle_KC2C_coffee_mill_Data::
    db $00, $1c, $00, $1c, $03, $08, $03, $f8, $07, $80
    db $0f, $c0, $10, $60, $10, $60, $7f, $f8, $7f, $f8
    db $20, $30, $27, $30, $20, $30, $7f, $f8, $7f, $f8
    db $0f, $0f

Puzzle_KC2D_plug_Data::
    db $1f, $00, $f1, $c0, $90, $70, $f2, $5c, $12, $5e
    db $f2, $5e, $90, $76, $f1, $c6, $1f, $06, $00, $06
    db $00, $0e, $00, $7e, $07, $fc, $7f, $e0, $fe, $00
    db $0f, $0f

Puzzle_KC2E_sun_glasses_Data::
    db $00, $00, $00, $00, $00, $00, $18, $0c, $34, $1a
    db $24, $12, $60, $30, $40, $20, $ff, $e0, $ba, $e0
    db $ba, $e0, $71, $c0, $00, $00, $00, $00, $00, $00
    db $0f, $0f

Puzzle_KC2F_crow_Data::
    db $1c, $00, $12, $00, $fa, $00, $92, $00, $fe, $00
    db $1f, $00, $1e, $fe, $1d, $e2, $1d, $fe, $1d, $f8
    db $0e, $fc, $0f, $08, $07, $f0, $01, $40, $07, $c0
    db $0f, $0f

Puzzle_KC30_vacuum_Data::
    db $01, $e0, $03, $30, $06, $10, $04, $70, $0c, $c0
    db $08, $80, $19, $80, $11, $00, $13, $00, $12, $1e
    db $32, $7e, $22, $fe, $23, $fe, $f8, $f6, $f8, $1c
    db $0f, $0f

Puzzle_KC31_NESSY_Data::
    db $60, $00, $b0, $00, $f0, $00, $30, $00, $30, $00
    db $30, $00, $3f, $80, $3f, $e0, $1f, $f0, $7f, $f0
    db $ef, $f8, $e1, $f8, $73, $9c, $3b, $ce, $00, $f0
    db $0f, $0f

Puzzle_KC32_camel_Data::
    db $50, $00, $70, $00, $50, $c0, $f1, $e0, $b7, $f8
    db $37, $fc, $3f, $fe, $3f, $fe, $1f, $fe, $07, $f6
    db $06, $e6, $06, $06, $02, $02, $02, $02, $06, $06
    db $0f, $0f

Puzzle_KC33_oranges_Data::
    db $00, $00, $03, $f0, $0e, $1c, $08, $cc, $18, $0e
    db $1f, $9e, $70, $fe, $46, $7e, $c0, $3c, $80, $30
    db $80, $70, $c0, $f0, $7f, $e0, $3f, $c0, $00, $00
    db $0f, $0f

Puzzle_KC34_bucket_Data::
    db $0f, $e0, $18, $30, $30, $08, $2f, $e8, $3f, $f8
    db $7f, $fc, $3f, $f8, $2f, $e8, $20, $08, $26, $08
    db $36, $18, $10, $10, $16, $10, $10, $10, $0f, $e0
    db $0f, $0f

Puzzle_KC35_angel_Data::
    db $3f, $00, $ff, $c0, $ed, $fe, $c0, $e2, $92, $46
    db $c0, $cc, $6d, $98, $ff, $d0, $94, $70, $d4, $e0
    db $77, $b8, $10, $6c, $1f, $fc, $03, $40, $01, $c0
    db $0f, $0f

Puzzle_KC36_racing_car_Data::
    db $1f, $f0, $10, $10, $f0, $1e, $bf, $f6, $f3, $9e
    db $f6, $de, $f4, $5e, $f5, $5e, $05, $40, $74, $5c
    db $52, $94, $72, $9c, $77, $dc, $08, $20, $0f, $e0
    db $0f, $0f

Puzzle_KC37_purse_Data::
    db $0e, $00, $11, $c0, $2e, $20, $29, $d0, $28, $50
    db $2e, $50, $3f, $d0, $21, $f0, $20, $30, $56, $70
    db $4f, $b8, $46, $18, $40, $18, $7c, $18, $03, $f0
    db $0f, $0f

Puzzle_KC38_rocking_horse_Data::
    db $0c, $00, $08, $00, $38, $00, $68, $06, $f8, $0e
    db $fc, $08, $df, $f8, $0d, $b0, $0c, $30, $0f, $f0
    db $06, $60, $06, $60, $6c, $36, $3f, $fc, $1f, $f8
    db $0f, $0f

Puzzle_KC39_ice_cream_cone_Data::
    db $03, $c0, $0e, $40, $18, $c0, $13, $e0, $30, $30
    db $3f, $10, $30, $30, $1f, $e0, $15, $60, $1f, $e0
    db $0a, $c0, $0f, $c0, $07, $80, $07, $80, $00, $00
    db $0f, $0f

Puzzle_KC3A_deer_Data::
    db $25, $00, $37, $00, $1c, $00, $10, $00, $38, $00
    db $50, $00, $f8, $00, $3f, $f8, $1f, $fc, $1f, $fc
    db $0f, $fc, $06, $18, $02, $08, $02, $08, $06, $18
    db $0f, $0f

Puzzle_KC3B_strawberry_Data::
    db $00, $08, $01, $d8, $00, $f0, $0f, $f8, $19, $7c
    db $34, $3e, $21, $1a, $34, $58, $61, $18, $54, $58
    db $41, $78, $57, $f0, $7f, $c0, $3f, $00, $00, $00
    db $0f, $0f

Puzzle_KC3C_bicycle_Data::
    db $07, $00, $fc, $00, $a8, $00, $a8, $18, $a8, $f8
    db $fc, $38, $1c, $20, $74, $4c, $f4, $5e, $b7, $fa
    db $96, $1a, $97, $fa, $92, $12, $f3, $9e, $60, $0c
    db $0f, $0f

Puzzle_KC3D_atlantic_penguin_Data::
    db $0f, $e0, $1f, $f0, $3f, $78, $3f, $7e, $3f, $f0
    db $1f, $e0, $0f, $a0, $1d, $90, $3d, $88, $3d, $88
    db $7d, $88, $7b, $98, $77, $90, $3f, $20, $fe, $fc
    db $0f, $0f

Puzzle_KC3E_ambulance_Data::
    db $03, $18, $05, $ac, $07, $bc, $0f, $fe, $12, $12
    db $12, $1e, $12, $12, $7e, $1e, $81, $12, $83, $92
    db $b9, $3a, $c6, $c6, $ba, $ba, $ef, $ee, $38, $38
    db $0f, $0f

Puzzle_KC3F_back_hoe_Data::
    db $fc, $00, $97, $00, $91, $c0, $ac, $70, $a3, $1e
    db $a0, $e4, $ac, $48, $f4, $f6, $84, $96, $c4, $90
    db $7f, $fe, $13, $20, $1f, $fe, $1d, $aa, $0e, $fe
    db $0f, $0f

Puzzle_SC00_bubble_pipe_Data::
    db $7c, $00, $fe, $00, $7c, $00, $00, $00, $38, $00
    db $7c, $00, $38, $0e, $00, $1e, $fe, $38, $9e, $70
    db $9f, $e0, $ff, $c0, $9f, $80, $7f, $00, $3c, $00
    db $0f, $0f

Puzzle_SC01_shirt_Data::
    db $0f, $e0, $f9, $3e, $89, $22, $8b, $a2, $8e, $62
    db $82, $02, $e2, $0e, $2a, $a8, $22, $a8, $2a, $e8
    db $22, $08, $2a, $08, $22, $08, $3a, $38, $0f, $e0
    db $0f, $0f

Puzzle_SC02_hermit_crab_Data::
    db $00, $30, $00, $70, $00, $d8, $01, $98, $03, $08
    db $06, $cc, $8c, $7c, $98, $04, $d1, $9e, $78, $fe
    db $6e, $06, $3f, $0e, $6f, $fe, $4a, $fc, $4a, $00
    db $0f, $0f

Puzzle_SC03_shooting_star_Data::
    db $fe, $62, $fc, $c6, $fd, $8e, $fb, $bc, $fb, $f8
    db $f1, $f2, $f1, $f6, $00, $1c, $8a, $38, $ca, $70
    db $e0, $e6, $c0, $6e, $c4, $7e, $8e, $3e, $bf, $be
    db $0f, $0f

Puzzle_SC04_acorn_Data::
    db $60, $00, $77, $c0, $3f, $e0, $1f, $30, $3e, $18
    db $3c, $08, $38, $0c, $36, $04, $3f, $04, $1f, $84
    db $0f, $f4, $07, $fc, $01, $fc, $00, $00, $00, $00
    db $0f, $0f

Puzzle_SC05_lamp_Data::
    db $3f, $e0, $7f, $f0, $e8, $b8, $98, $c8, $92, $48
    db $32, $60, $63, $30, $47, $10, $4f, $90, $4d, $90
    db $4d, $90, $67, $32, $35, $6e, $1f, $c2, $7f, $f0
    db $0f, $0f

Puzzle_SC06_sun_fish_Data::
    db $00, $f0, $01, $90, $1f, $1c, $70, $06, $c0, $12
    db $80, $1a, $90, $12, $83, $1a, $c1, $12, $83, $1a
    db $c0, $12, $70, $06, $1f, $1c, $01, $90, $00, $f0
    db $0f, $0f

Puzzle_SC07_green_peas_Data::
    db $00, $0c, $00, $04, $00, $7c, $00, $1c, $00, $6c
    db $00, $f4, $01, $f0, $03, $f0, $07, $e0, $0d, $a0
    db $1e, $60, $37, $c0, $79, $80, $ff, $00, $00, $00
    db $0f, $0f

Puzzle_SC08_ladybug_Data::
    db $0b, $a0, $07, $c0, $1f, $f0, $1f, $f0, $a1, $0a
    db $7e, $fc, $32, $98, $32, $98, $fe, $fe, $3e, $f8
    db $32, $98, $72, $9c, $9e, $f2, $0e, $e0, $03, $80
    db $0f, $0f

Puzzle_SC09_balance_Data::
    db $1f, $f0, $21, $08, $21, $08, $21, $08, $53, $94
    db $52, $94, $8a, $a2, $8a, $a2, $fa, $be, $72, $9c
    db $02, $80, $3f, $f8, $40, $04, $47, $c4, $78, $3c
    db $0f, $0f

Puzzle_SC0A_samurai_Data::
    db $1f, $00, $64, $c0, $80, $20, $ff, $e0, $13, $00
    db $12, $00, $3b, $c0, $73, $c0, $77, $e0, $ff, $e0
    db $fd, $f0, $fe, $f0, $60, $e0, $1f, $f8, $1f, $ce
    db $0f, $0f

Puzzle_SC0B_wild_duck_Data::
    db $1e, $00, $12, $00, $3a, $00, $d3, $00, $8d, $00
    db $f9, $00, $13, $00, $26, $0e, $64, $7e, $4f, $fa
    db $4f, $fa, $47, $f2, $43, $e6, $60, $0c, $3f, $f8
    db $0f, $0f

Puzzle_SC0C_MINI_YOSHI_Data::
    db $03, $c0, $07, $e0, $77, $f0, $fa, $f0, $da, $f8
    db $f8, $f8, $ff, $f8, $ff, $b0, $7e, $70, $31, $fe
    db $11, $fe, $21, $fe, $23, $0e, $12, $0e, $0f, $fc
    db $0f, $0f

Puzzle_SC0D_weathercock_Data::
    db $0c, $00, $14, $30, $0c, $70, $0f, $e0, $0f, $e0
    db $07, $c0, $01, $00, $21, $0c, $df, $f2, $21, $0c
    db $01, $00, $02, $80, $ff, $fe, $bb, $ba, $77, $76
    db $0f, $0f

Puzzle_SC0E_crown_Data::
    db $03, $80, $02, $80, $02, $80, $66, $cc, $54, $54
    db $54, $54, $5c, $74, $48, $34, $48, $24, $40, $04
    db $e3, $8e, $a2, $8a, $e3, $8e, $40, $04, $7f, $fc
    db $0f, $0f

Puzzle_SC0F_poodle_Data::
    db $00, $04, $3c, $0e, $7e, $0e, $ce, $04, $8e, $04
    db $ec, $04, $14, $74, $3f, $fc, $7e, $7c, $7e, $78
    db $3f, $f8, $14, $48, $14, $28, $1c, $38, $3c, $78
    db $0f, $0f

Puzzle_SC10_scarecrow_Data::
    db $03, $80, $07, $c0, $1f, $f0, $04, $40, $c4, $46
    db $7e, $fc, $23, $88, $20, $88, $3a, $b8, $08, $a0
    db $0b, $a0, $0b, $e0, $07, $a0, $05, $80, $01, $80
    db $0f, $0f

Puzzle_SC11_grape_Data::
    db $00, $80, $01, $80, $01, $00, $07, $c0, $36, $f0
    db $30, $30, $06, $d8, $36, $d8, $31, $b0, $0d, $b0
    db $0c, $c0, $03, $c0, $03, $00, $06, $00, $06, $00
    db $0f, $0f

Puzzle_SC12_cannon_Data::
    db $38, $04, $6c, $0c, $5c, $1c, $de, $14, $bf, $88
    db $ff, $f0, $3f, $fc, $0f, $fe, $07, $fe, $03, $8e
    db $03, $06, $01, $26, $01, $06, $01, $8c, $00, $f8
    db $0f, $0f

Puzzle_SC13_ship_Data::
    db $00, $0e, $00, $1c, $04, $38, $04, $28, $04, $28
    db $04, $28, $05, $fc, $05, $04, $fd, $54, $8f, $fe
    db $40, $02, $7f, $fe, $40, $02, $20, $04, $3f, $fc
    db $0f, $0f

Puzzle_SC14_duckbill_Data::
    db $01, $8e, $01, $9e, $01, $3e, $00, $fc, $03, $f8
    db $77, $f0, $ef, $f6, $1f, $ee, $17, $e0, $3f, $c0
    db $65, $80, $c7, $40, $8c, $c0, $d8, $c0, $70, $80
    db $0f, $0f

Puzzle_SC15_crab_beetle_Data::
    db $0e, $e0, $18, $30, $1c, $70, $10, $10, $18, $30
    db $0f, $e2, $90, $12, $df, $f6, $6f, $e4, $10, $10
    db $de, $f0, $1e, $f6, $5e, $f2, $5e, $f0, $4e, $e6
    db $0f, $0f

Puzzle_SC16_christmas_tree_Data::
    db $02, $00, $07, $00, $17, $40, $1f, $c0, $0d, $c0
    db $1f, $60, $3b, $e0, $3e, $10, $6e, $f8, $e1, $dc
    db $3f, $f0, $03, $00, $0f, $c0, $0f, $c0, $07, $80
    db $0f, $0f

Puzzle_SC17_tiger_Data::
    db $30, $18, $78, $34, $6f, $f4, $61, $c4, $43, $c6
    db $40, $82, $59, $da, $dc, $ba, $e0, $06, $f1, $ce
    db $65, $c6, $74, $96, $3f, $fc, $1e, $38, $03, $e0
    db $0f, $0f

Puzzle_SC18_bowling_pins_Data::
    db $25, $48, $5a, $b4, $57, $d4, $56, $d4, $76, $dc
    db $5e, $f4, $97, $d2, $a2, $8a, $a4, $4a, $a4, $4a
    db $a4, $4a, $e4, $4e, $34, $58, $1e, $f0, $03, $80
    db $0f, $0f

Puzzle_SC19_sea_lion_Data::
    db $20, $3c, $30, $66, $38, $42, $3f, $42, $7e, $66
    db $70, $3c, $60, $18, $e0, $18, $f0, $2c, $f0, $3c
    db $7c, $fc, $7f, $ec, $3f, $f4, $1f, $b8, $0f, $de
    db $0f, $0f

Puzzle_SC1A_SUN_FLOWER_Data::
    db $1f, $f0, $30, $18, $22, $88, $22, $88, $22, $88
    db $20, $08, $38, $38, $0f, $e0, $81, $02, $f1, $7e
    db $9d, $c2, $c7, $82, $43, $86, $63, $3c, $3f, $e0
    db $0f, $0f

Puzzle_SC1B_ice_cream_sundae_Data::
    db $07, $c2, $0a, $a6, $15, $6e, $3a, $9c, $30, $38
    db $60, $74, $40, $e4, $ff, $fe, $80, $02, $c0, $06
    db $60, $0c, $3f, $f8, $02, $80, $0c, $60, $3f, $f8
    db $0f, $0f

Puzzle_SC1C_cowboy_hat_Data::
    db $07, $00, $0d, $c0, $09, $20, $08, $a0, $10, $20
    db $70, $26, $d0, $3a, $90, $3a, $98, $6a, $bf, $ea
    db $af, $d2, $87, $96, $c0, $2c, $60, $78, $3f, $e0
    db $0f, $0f

Puzzle_SC1D_ray_Data::
    db $7f, $f8, $40, $30, $40, $1a, $40, $4e, $70, $06
    db $1c, $12, $04, $02, $04, $02, $66, $02, $4f, $c2
    db $cc, $42, $8c, $62, $88, $22, $d8, $3e, $70, $00
    db $0f, $0f

Puzzle_SC1E_SPINY_Data::
    db $00, $00, $00, $80, $01, $40, $21, $42, $32, $26
    db $2a, $2a, $27, $f2, $2f, $f2, $7e, $3a, $9e, $3c
    db $6e, $3e, $b7, $f0, $f9, $ce, $1e, $3c, $0f, $f8
    db $0f, $0f

Puzzle_SC1F_cherry_Data::
    db $00, $38, $00, $1c, $00, $0e, $78, $0a, $cc, $18
    db $bc, $70, $ff, $d0, $fc, $30, $78, $20, $03, $e0
    db $06, $60, $05, $e0, $07, $e0, $07, $e0, $03, $c0
    db $0f, $0f

Puzzle_SC20_palm_tree_Data::
    db $18, $e0, $7d, $f0, $7d, $f8, $cf, $98, $9b, $cc
    db $b1, $64, $3b, $b0, $2e, $90, $23, $c0, $01, $40
    db $01, $c0, $01, $40, $01, $e0, $01, $20, $03, $f0
    db $0f, $0f

Puzzle_SC21_tank_Data::
    db $01, $f8, $7f, $08, $41, $08, $43, $08, $42, $08
    db $7e, $08, $04, $08, $7f, $fe, $80, $02, $bf, $fa
    db $c4, $46, $82, $82, $82, $82, $c7, $c6, $78, $3c
    db $0f, $0f

Puzzle_SC22_hawk_Data::
    db $3f, $80, $68, $40, $a0, $80, $f1, $00, $95, $00
    db $1f, $80, $3f, $e0, $2f, $fe, $27, $fe, $33, $fe
    db $30, $0c, $1a, $38, $05, $e0, $02, $00, $0d, $00
    db $0f, $0f

Puzzle_SC23_fly_Data::
    db $02, $80, $87, $c2, $cb, $a6, $4f, $e4, $78, $3c
    db $1f, $f0, $77, $dc, $93, $92, $a3, $8a, $21, $08
    db $21, $08, $43, $84, $47, $c4, $6c, $6c, $38, $38
    db $0f, $0f

Puzzle_SC24_spinning_top_Data::
    db $00, $38, $01, $0c, $01, $04, $0f, $ec, $39, $38
    db $61, $0c, $40, $04, $70, $1c, $5f, $f4, $60, $0c
    db $30, $18, $7f, $f0, $cf, $e0, $c3, $80, $79, $00
    db $0f, $0f

Puzzle_SC25_MUSHROOM_Data::
    db $07, $c0, $19, $f0, $33, $e8, $67, $e4, $7f, $f4
    db $fe, $3e, $fe, $3a, $ce, $32, $cf, $f2, $ff, $fe
    db $74, $5c, $24, $48, $20, $08, $30, $18, $1f, $f0
    db $0f, $0f

Puzzle_SC26_squirrel_Data::
    db $1c, $f0, $16, $9c, $73, $86, $c0, $c2, $92, $62
    db $93, $32, $81, $92, $78, $9a, $d3, $ca, $a6, $4a
    db $ac, $2a, $b4, $0a, $cf, $0a, $78, $26, $0f, $fc
    db $0f, $0f

Puzzle_SC27_bath_Data::
    db $78, $00, $7c, $00, $e4, $00, $ca, $00, $c6, $00
    db $5c, $70, $44, $48, $e7, $fe, $b7, $02, $d1, $06
    db $5f, $04, $40, $04, $40, $04, $4f, $e4, $38, $38
    db $0f, $0f

Puzzle_SC28_skiing_Data::
    db $06, $00, $06, $00, $0f, $80, $0f, $c0, $5f, $60
    db $f7, $20, $47, $7e, $4e, $20, $4f, $02, $47, $8c
    db $41, $f6, $40, $f8, $43, $e0, $0d, $80, $76, $00
    db $0f, $0f

Puzzle_SC29_coat_Data::
    db $07, $c0, $08, $20, $17, $d0, $37, $d8, $53, $94
    db $4b, $a4, $89, $22, $84, $42, $83, $c2, $90, $52
    db $90, $52, $f1, $5e, $91, $52, $f0, $5e, $3f, $f8
    db $0f, $0f

Puzzle_SC2A_crab_Data::
    db $38, $00, $44, $00, $88, $00, $9a, $98, $ad, $64
    db $af, $f2, $f8, $2a, $50, $1e, $5f, $f4, $30, $18
    db $cf, $e4, $b8, $3a, $af, $ea, $a8, $2a, $f8, $3e
    db $0f, $0f

Puzzle_SC2B_goldfish_Data::
    db $07, $80, $0f, $c0, $0e, $00, $3f, $18, $7f, $bc
    db $f7, $e6, $b7, $fe, $f4, $ee, $e5, $b6, $6f, $be
    db $3e, $36, $03, $16, $03, $86, $00, $06, $00, $04
    db $0f, $0f

Puzzle_SC2C_reindeer_Data::
    db $7c, $46, $43, $ba, $78, $a6, $8a, $0c, $97, $f0
    db $82, $00, $f3, $f8, $10, $06, $10, $0a, $10, $0a
    db $10, $4e, $17, $c8, $14, $28, $14, $28, $2c, $58
    db $0f, $0f

Puzzle_SC2D_jack_o_lantern_Data::
    db $fe, $3e, $fe, $7e, $c7, $c6, $80, $02, $00, $00
    db $1e, $f0, $3e, $f8, $26, $c8, $00, $00, $00, $00
    db $33, $28, $3f, $f8, $95, $32, $80, $02, $c1, $06
    db $0f, $0f

Puzzle_SC2E_mud_Data::
    db $00, $3e, $00, $62, $03, $b2, $05, $1e, $09, $02
    db $19, $82, $78, $c6, $cc, $7e, $86, $02, $aa, $02
    db $ab, $06, $a9, $8c, $c0, $f8, $63, $80, $3e, $00
    db $0f, $0f

Puzzle_SC2F_chili_peppers_Data::
    db $00, $20, $07, $c0, $04, $40, $06, $40, $0f, $40
    db $1f, $c0, $3e, $00, $7c, $00, $78, $00, $f0, $38
    db $ef, $e4, $df, $e6, $0f, $e4, $00, $38, $00, $00
    db $0f, $0f

Puzzle_SC30_radar_Data::
    db $60, $3c, $90, $66, $89, $c2, $cb, $02, $b6, $06
    db $8d, $84, $98, $ec, $90, $18, $b0, $3c, $a0, $74
    db $e0, $fc, $e1, $fc, $67, $14, $3c, $14, $00, $14
    db $0f, $0f

Puzzle_SC31_mermaid_Data::
    db $3e, $00, $c1, $00, $9c, $80, $aa, $90, $aa, $90
    db $a2, $92, $9a, $9a, $8a, $5e, $91, $4e, $a5, $4c
    db $a5, $dc, $b9, $fc, $93, $fc, $5f, $f8, $7f, $f0
    db $0f, $0f

Puzzle_SC32_fox_Data::
    db $07, $0e, $05, $9a, $04, $f2, $06, $06, $3c, $92
    db $64, $92, $c6, $06, $81, $9c, $90, $64, $91, $04
    db $9b, $24, $8f, $24, $87, $26, $e1, $92, $3f, $fe
    db $0f, $0f

Puzzle_SC33_sumo_wrestler_Data::
    db $03, $80, $0f, $e0, $08, $78, $3d, $2c, $68, $64
    db $4c, $de, $47, $92, $f0, $3e, $9f, $e4, $ff, $c4
    db $4f, $94, $43, $f6, $cf, $92, $88, $1e, $f8, $00
    db $0f, $0f

Puzzle_SC34_frog_Data::
    db $1e, $00, $1a, $00, $1b, $00, $72, $c0, $de, $30
    db $80, $18, $80, $0c, $fc, $04, $40, $f6, $39, $82
    db $09, $02, $09, $1a, $1b, $ca, $12, $0e, $1f, $fc
    db $0f, $0f

Puzzle_SC35_cat_fish_Data::
    db $0f, $00, $09, $00, $0d, $c0, $39, $26, $6f, $ba
    db $f0, $72, $94, $1a, $d6, $12, $92, $9a, $93, $12
    db $f0, $1a, $40, $72, $31, $da, $0e, $46, $03, $80
    db $0f, $0f

Puzzle_SC36_racket_Data::
    db $3e, $18, $6b, $3c, $d5, $3c, $ea, $98, $d5, $80
    db $ea, $80, $f5, $80, $7f, $80, $1f, $c0, $01, $a0
    db $00, $d0, $00, $68, $00, $3c, $00, $1e, $00, $0c
    db $0f, $0f

Puzzle_SC37_guitar_Data::
    db $00, $1e, $00, $36, $00, $6c, $00, $3c, $00, $70
    db $00, $e0, $0f, $40, $3d, $80, $fa, $c0, $f5, $f8
    db $cb, $f8, $e7, $e0, $f7, $00, $7e, $00, $3e, $00
    db $0f, $0f

Puzzle_SC38_spider_Data::
    db $0c, $80, $12, $4e, $2a, $58, $5a, $a0, $b7, $40
    db $9e, $dc, $7e, $f6, $09, $f2, $9f, $9a, $67, $3a
    db $1f, $78, $2b, $f0, $68, $e0, $44, $00, $43, $c0
    db $0f, $0f

Puzzle_SC39_pelican_Data::
    db $07, $00, $09, $80, $f8, $80, $8a, $80, $f8, $80
    db $88, $80, $89, $fe, $89, $02, $c9, $0e, $78, $82
    db $04, $7e, $06, $06, $03, $fc, $00, $20, $01, $e0
    db $0f, $0f

Puzzle_SC3A_dragonfly_Data::
    db $18, $3c, $64, $64, $64, $c8, $f9, $96, $9f, $2a
    db $9f, $d2, $6f, $a6, $1b, $cc, $35, $f8, $65, $e0
    db $ca, $b0, $94, $b8, $a9, $9c, $d3, $0e, $1e, $06
    db $0f, $0f

Puzzle_SC3B_wild_boar_Data::
    db $38, $70, $2f, $d0, $28, $50, $31, $70, $79, $30
    db $80, $2c, $aa, $06, $83, $8a, $fe, $8a, $98, $8a
    db $f7, $0e, $10, $08, $17, $68, $15, $68, $1d, $f8
    db $0f, $0f

Puzzle_SC3C_beetle_Data::
    db $30, $80, $60, $40, $f0, $40, $bb, $58, $17, $90
    db $0f, $60, $1e, $f6, $1c, $fa, $8b, $7a, $77, $bc
    db $07, $dc, $3b, $ec, $01, $f8, $04, $70, $06, $00
    db $0f, $0f

Puzzle_SC3D_seal_Data::
    db $0f, $c0, $10, $60, $29, $30, $60, $10, $49, $18
    db $49, $08, $4f, $0c, $54, $84, $5b, $84, $40, $06
    db $20, $22, $20, $22, $68, $b2, $88, $8a, $ff, $fe
    db $0f, $0f

Puzzle_SC3E_kite_Data::
    db $03, $80, $0f, $e0, $0c, $60, $0a, $a0, $f8, $3e
    db $cc, $66, $47, $c4, $63, $0c, $36, $38, $1f, $e0
    db $08, $20, $0f, $e0, $04, $40, $06, $60, $03, $30
    db $0f, $0f

Puzzle_SC3F_armadillo_Data::
    db $00, $0e, $03, $8a, $0e, $ca, $18, $76, $1c, $22
    db $77, $16, $55, $8c, $59, $5c, $41, $14, $4b, $34
    db $42, $bc, $42, $60, $8f, $a0, $99, $20, $f1, $e0
    db $0f, $0f

Puzzle_TT00_witch_Data::
    db $3c, $00, $70, $00, $fe, $00, $44, $00, $63, $80
    db $30, $40, $3c, $c0, $2f, $80, $27, $f2, $27, $e6
    db $ff, $fe, $0f, $e6, $1f, $80, $b0, $00, $60, $00
    db $0f, $0f

Puzzle_TT01_bow_Data::
    db $fc, $0e, $8f, $3e, $83, $9e, $c1, $bc, $60, $74
    db $30, $e0, $19, $d8, $0b, $9c, $07, $0c, $3e, $06
    db $7d, $86, $f4, $c2, $e4, $62, $e8, $32, $70, $1e
    db $0f, $0f

Puzzle_TT02_Man_in_the_moon_Data::
    db $0f, $c0, $07, $70, $01, $18, $01, $8c, $00, $84
    db $00, $fe, $07, $ea, $06, $6a, $03, $3a, $c1, $82
    db $e7, $22, $bd, $e6, $c0, $0c, $70, $38, $1f, $e0
    db $0f, $0f

Puzzle_TT03_alarm_clock_Data::
    db $3c, $78, $44, $44, $88, $22, $97, $d2, $ac, $6a
    db $d1, $16, $31, $18, $21, $08, $21, $08, $20, $e8
    db $20, $08, $30, $18, $10, $10, $6c, $6c, $67, $cc
    db $0f, $0f

Puzzle_TT04_water_melon_Data::
    db $00, $c0, $01, $80, $0f, $e0, $35, $58, $6d, $6c
    db $5b, $34, $d2, $16, $9a, $32, $8a, $22, $9b, $32
    db $d1, $16, $59, $34, $6d, $6c, $35, $58, $0f, $e0
    db $0f, $0f

Puzzle_TT05_straw_hat_Data::
    db $00, $3c, $00, $40, $00, $40, $07, $5e, $08, $f0
    db $10, $60, $70, $70, $df, $d8, $9f, $c8, $80, $08
    db $c0, $18, $7f, $f0, $00, $00, $00, $00, $00, $00
    db $0f, $0f

Puzzle_TT06_rocket_Data::
    db $e0, $00, $ff, $00, $f8, $80, $7d, $80, $7f, $00
    db $5f, $00, $4f, $f8, $5f, $c4, $33, $e2, $03, $f6
    db $02, $f8, $02, $76, $02, $2e, $01, $5c, $00, $d8
    db $0f, $0f

Puzzle_TT07_rabbit_Data::
    db $0f, $e0, $18, $20, $70, $e0, $c7, $80, $80, $c0
    db $90, $70, $90, $18, $80, $0c, $c4, $e4, $79, $86
    db $11, $06, $13, $0a, $0b, $8a, $0a, $0a, $0f, $fe
    db $0f, $0f

Puzzle_TT08_bird_Data::
    db $0f, $00, $11, $80, $2a, $c0, $2a, $c0, $2a, $e0
    db $7f, $e0, $87, $d0, $79, $90, $20, $88, $20, $88
    db $30, $48, $18, $68, $0f, $fc, $02, $8e, $0e, $e6
    db $0f, $0f

Puzzle_TT09_banana_Data::
    db $00, $fe, $00, $82, $00, $ee, $00, $28, $e0, $fc
    db $9f, $56, $80, $52, $43, $92, $fc, $32, $80, $22
    db $c0, $c2, $7f, $02, $20, $04, $30, $0c, $1f, $f8
    db $0f, $0f

Puzzle_TT0A_corn_Data::
    db $20, $00, $e0, $00, $3e, $70, $2b, $d0, $35, $b0
    db $2a, $a0, $f5, $60, $da, $e0, $6f, $f0, $30, $78
    db $60, $1c, $5f, $8c, $70, $c4, $00, $7e, $00, $06
    db $0f, $0f

Puzzle_TT0B_ostrich_Data::
    db $1c, $00, $e6, $00, $aa, $00, $ea, $1e, $32, $fe
    db $11, $e6, $08, $ce, $0d, $fc, $07, $9c, $07, $f8
    db $03, $f8, $00, $ac, $03, $34, $02, $54, $03, $dc
    db $0f, $0f

Puzzle_TT0C_TERUTERU_BOUZU_Data::
    db $3f, $0a, $61, $94, $c0, $d4, $80, $68, $94, $48
    db $94, $7c, $94, $44, $c0, $de, $61, $c2, $3f, $62
    db $0a, $3a, $0a, $0e, $05, $06, $07, $8c, $00, $f8
    db $0f, $0f

Puzzle_TT0D_pineapple_Data::
    db $e0, $c0, $79, $9c, $1d, $b0, $0d, $60, $07, $dc
    db $3f, $a6, $7b, $c2, $c6, $e2, $8b, $f0, $0d, $70
    db $0b, $f0, $0d, $f0, $0b, $f0, $0f, $f0, $07, $e0
    db $0f, $0f

Puzzle_TT0E_feather_Data::
    db $f8, $00, $fe, $00, $ff, $80, $fc, $c0, $fc, $e0
    db $7e, $f0, $67, $d0, $23, $d8, $3f, $c8, $1f, $e8
    db $0c, $78, $07, $38, $01, $fc, $00, $0e, $00, $06
    db $0f, $0f

Puzzle_TT0F_mouse_Data::
    db $70, $72, $88, $8a, $88, $8a, $88, $8a, $cd, $9a
    db $67, $32, $20, $22, $2a, $22, $6a, $62, $40, $82
    db $c3, $f2, $fe, $0a, $e8, $0e, $0c, $18, $03, $e0
    db $0f, $0f

Puzzle_TT10_BLOOPER_Data::
    db $03, $80, $1c, $70, $30, $18, $c0, $06, $80, $02
    db $ff, $fe, $23, $88, $2b, $a8, $23, $88, $3f, $f8
    db $4d, $24, $89, $32, $99, $32, $5d, $74, $76, $dc
    db $0f, $0f

Puzzle_TT11_fish_Data::
    db $01, $e0, $03, $30, $1f, $8c, $60, $64, $c8, $1c
    db $89, $86, $f0, $b2, $43, $92, $38, $12, $07, $a2
    db $00, $e2, $0f, $46, $07, $cc, $01, $f0, $03, $e0
    db $0f, $0f

Puzzle_TT12_monkey_Data::
    db $7f, $3c, $c1, $a6, $80, $b2, $be, $82, $aa, $e2
    db $be, $92, $9c, $8e, $55, $06, $3e, $72, $20, $4a
    db $22, $42, $2a, $4a, $2e, $e6, $2a, $84, $3f, $fc
    db $0f, $0f

Puzzle_TT13_dirk_Data::
    db $c0, $06, $f0, $1e, $5c, $74, $6e, $cc, $2d, $78
    db $3f, $f8, $17, $d0, $0e, $e0, $17, $d0, $3f, $f8
    db $2d, $78, $6e, $cc, $5c, $74, $f0, $1e, $c0, $06
    db $0f, $0f

Puzzle_TT14_BUZZY_BEETLE_Data::
    db $03, $c0, $0f, $f0, $19, $f8, $39, $fc, $3f, $fc
    db $7f, $fc, $7f, $fe, $7f, $fe, $83, $fe, $78, $3e
    db $af, $82, $80, $fc, $70, $04, $13, $c8, $1e, $78
    db $0f, $0f

Puzzle_TT15_bee_Data::
    db $70, $3c, $08, $62, $3e, $42, $d2, $82, $93, $82
    db $83, $02, $ff, $06, $0f, $9c, $0f, $f8, $07, $48
    db $1d, $38, $25, $88, $e4, $d8, $32, $70, $1f, $e0
    db $0f, $0f

Puzzle_TT16_cat_Data::
    db $30, $70, $28, $f0, $37, $50, $20, $50, $4a, $08
    db $ea, $cc, $80, $04, $c6, $cc, $62, $18, $3f, $f6
    db $10, $6a, $20, $3a, $20, $12, $7b, $d4, $4e, $78
    db $0f, $0f

Puzzle_TT17_KOOPA_TROOPAS_Data::
    db $18, $00, $24, $00, $74, $00, $a4, $00, $9d, $f0
    db $8f, $98, $ab, $cc, $4b, $ec, $53, $fc, $37, $fe
    db $13, $fa, $18, $02, $1f, $fc, $24, $12, $38, $0e
    db $0f, $0f

Puzzle_TT18_candy_Data::
    db $00, $38, $00, $2c, $00, $26, $03, $f2, $06, $3e
    db $0f, $f0, $1f, $f0, $10, $30, $1f, $f0, $1f, $e0
    db $f9, $c0, $9f, $00, $c8, $00, $68, $00, $38, $00
    db $0f, $0f

Puzzle_TT19_crane_Data::
    db $60, $00, $50, $00, $68, $00, $34, $00, $3a, $1c
    db $2d, $34, $26, $b4, $73, $54, $51, $f4, $70, $84
    db $c1, $fe, $89, $02, $db, $fe, $72, $52, $03, $fe
    db $0f, $0f

Puzzle_TT1A_ram_Data::
    db $07, $e0, $3e, $20, $62, $a0, $8b, $a0, $8a, $30
    db $81, $dc, $c3, $0a, $7e, $0a, $20, $0c, $20, $08
    db $22, $08, $2e, $e8, $3b, $b8, $2a, $a8, $3b, $b8
    db $0f, $0f

Puzzle_TT1B_giraffe_Data::
    db $0e, $00, $fa, $00, $93, $00, $91, $00, $87, $00
    db $f6, $00, $12, $00, $1b, $f8, $19, $86, $10, $5a
    db $1a, $5a, $1b, $0e, $17, $68, $15, $68, $1d, $f8
    db $0f, $0f

Puzzle_TT1C_scorpion_Data::
    db $60, $38, $c0, $7a, $80, $76, $a0, $42, $e7, $02
    db $8f, $82, $cf, $c6, $4f, $c6, $67, $e4, $03, $ec
    db $30, $dc, $26, $38, $04, $80, $04, $80, $00, $80
    db $0f, $0f

Puzzle_TT1D_kangaroo_Data::
    db $03, $00, $1d, $00, $e1, $00, $89, $8e, $88, $ca
    db $80, $6a, $f8, $3a, $09, $5a, $3d, $4a, $25, $4a
    db $25, $ca, $32, $0a, $1f, $22, $10, $24, $1f, $fc
    db $0f, $0f

Puzzle_TT1E_pig_Data::
    db $78, $f0, $4f, $90, $70, $70, $65, $30, $4f, $90
    db $d0, $5c, $95, $44, $ef, $8c, $a0, $08, $e0, $18
    db $40, $10, $60, $30, $32, $60, $1a, $c0, $0f, $80
    db $0f, $0f

Puzzle_TT1F_white_lion_Data::
    db $1f, $e0, $7f, $f0, $9f, $f0, $bf, $98, $e0, $d8
    db $ea, $78, $ca, $78, $c0, $78, $ce, $78, $64, $f4
    db $7f, $e2, $3f, $8a, $11, $0e, $17, $68, $1d, $f8
    db $0f, $0f

Puzzle_TT20_sake_bottle_Data::
    db $0f, $80, $08, $8c, $08, $bc, $3f, $e6, $60, $32
    db $40, $12, $9b, $ca, $81, $8a, $9b, $ca, $83, $ca
    db $42, $52, $5b, $d2, $60, $36, $30, $64, $1f, $cc
    db $0f, $0f

Puzzle_TT21_flower_Data::
    db $1c, $3c, $3e, $24, $77, $4c, $63, $42, $77, $be
    db $3e, $f8, $9c, $7c, $c0, $ee, $78, $c6, $08, $ee
    db $7b, $fc, $44, $38, $66, $10, $34, $90, $17, $e0
    db $0f, $0f

Puzzle_TT22_friendly_dog_Data::
    db $38, $38, $6c, $6c, $46, $c6, $cf, $e2, $88, $32
    db $90, $12, $b4, $92, $f4, $9e, $10, $10, $30, $38
    db $2c, $2c, $2c, $6e, $20, $4a, $30, $d8, $1f, $f0
    db $0f, $0f

Puzzle_TT23_shrimp_Data::
    db $07, $f0, $39, $1c, $e0, $14, $78, $32, $8f, $e2
    db $04, $c2, $03, $e2, $04, $7e, $0b, $42, $67, $c2
    db $93, $3c, $8f, $18, $e5, $98, $3c, $b0, $07, $c0
    db $0f, $0f

Puzzle_TT24_hippopotamus_Data::
    db $7e, $00, $c3, $00, $f1, $e0, $a8, $a0, $fd, $20
    db $3c, $78, $fc, $0c, $a8, $06, $f0, $0a, $84, $0a
    db $7c, $0a, $10, $0a, $17, $6e, $15, $68, $1d, $f8
    db $0f, $0f

Puzzle_TT25_tulip_Data::
    db $61, $80, $3b, $00, $37, $14, $37, $3e, $37, $2e
    db $3f, $2e, $1e, $36, $04, $1c, $c4, $08, $64, $e8
    db $35, $88, $37, $6a, $3f, $3e, $1e, $1c, $0c, $08
    db $0f, $0f

Puzzle_TT26_clay_image_Data::
    db $07, $c0, $0c, $60, $08, $2c, $08, $2a, $0a, $aa
    db $fa, $ba, $80, $02, $b9, $3e, $a9, $20, $69, $20
    db $08, $20, $08, $20, $18, $30, $10, $10, $1f, $f0
    db $0f, $0f

Puzzle_TT27_wooden_horse_Data::
    db $1c, $00, $76, $00, $86, $00, $96, $06, $86, $0e
    db $e7, $f6, $22, $5a, $22, $4a, $c3, $ca, $80, $08
    db $9f, $c8, $c5, $4e, $7d, $22, $01, $1e, $01, $00
    db $0f, $0f

Puzzle_TT28_socks_Data::
    db $00, $00, $1f, $80, $10, $80, $fc, $80, $87, $80
    db $84, $80, $fc, $80, $84, $f0, $84, $18, $87, $8c
    db $80, $ec, $e0, $78, $b0, $70, $90, $c0, $7f, $80
    db $0f, $0f

Puzzle_TT29_butterfly_Data::
    db $02, $80, $72, $9c, $ca, $a6, $85, $42, $86, $c2
    db $82, $82, $c2, $86, $42, $84, $62, $8c, $3a, $b8
    db $47, $cc, $86, $c2, $8a, $a2, $cb, $a6, $78, $3c
    db $0f, $0f

Puzzle_TT2A_tortoise_Data::
    db $78, $00, $8f, $e0, $94, $38, $42, $0c, $23, $84
    db $3e, $46, $72, $62, $4c, $52, $4c, $aa, $7f, $f6
    db $06, $1a, $05, $e6, $04, $a6, $04, $e4, $07, $bc
    db $0f, $0f

Puzzle_TT2B_football_Data::
    db $00, $fc, $03, $3a, $0f, $96, $1f, $ce, $3f, $e6
    db $3f, $32, $7e, $ba, $7d, $7c, $ba, $fc, $99, $f8
    db $cf, $f8, $e7, $f0, $d3, $e0, $b9, $80, $7e, $00
    db $0f, $0f

Puzzle_TT2C_scooter_Data::
    db $3f, $00, $48, $80, $e7, $80, $94, $1c, $94, $fc
    db $e4, $fc, $44, $fc, $46, $42, $42, $82, $73, $1e
    db $89, $22, $84, $42, $84, $42, $ff, $fc, $78, $3c
    db $0f, $0f

Puzzle_TT2D_koala_Data::
    db $3c, $78, $47, $c4, $80, $02, $80, $02, $8b, $a2
    db $8b, $a2, $63, $8c, $23, $88, $34, $58, $5f, $f4
    db $63, $0c, $91, $12, $8e, $e2, $c8, $46, $7f, $fc
    db $0f, $0f

Puzzle_TT2E_lock_Data::
    db $3c, $3c, $e7, $e6, $a4, $26, $e7, $e6, $24, $24
    db $74, $24, $5f, $e4, $40, $04, $43, $84, $43, $84
    db $61, $0c, $20, $08, $30, $18, $18, $30, $0f, $e0
    db $0f, $0f

Puzzle_TT2F_chick_Data::
    db $00, $00, $0f, $80, $1f, $c0, $3f, $e0, $20, $20
    db $74, $20, $d4, $3c, $90, $04, $f0, $e4, $20, $24
    db $31, $ec, $18, $18, $0f, $f0, $02, $40, $00, $00
    db $0f, $0f

Puzzle_TT30_CHEEP_CHEEPS_Data::
    db $6c, $78, $92, $c8, $92, $84, $bb, $e4, $93, $f2
    db $7f, $9a, $9f, $1a, $8f, $1e, $a5, $3c, $f4, $fc
    db $74, $7c, $4c, $1e, $38, $3a, $0c, $72, $07, $de
    db $0f, $0f

Puzzle_TT31_snake_Data::
    db $1f, $80, $24, $c0, $20, $40, $3c, $40, $02, $40
    db $02, $40, $02, $40, $04, $40, $78, $fc, $d1, $06
    db $93, $e2, $b0, $02, $8f, $f6, $c0, $1c, $7f, $f0
    db $0f, $0f

Puzzle_TT32_white_eye_Data::
    db $01, $f0, $03, $78, $06, $b8, $0f, $7c, $1f, $e2
    db $3f, $fe, $ff, $04, $fc, $04, $f8, $0c, $60, $18
    db $38, $30, $0f, $e0, $02, $80, $03, $c0, $02, $a0
    db $0f, $0f

Puzzle_TT33_elephant_Data::
    db $3f, $80, $40, $f0, $81, $0c, $90, $82, $90, $82
    db $90, $82, $80, $82, $90, $82, $a9, $02, $ae, $02
    db $a8, $02, $c9, $12, $b9, $f2, $a9, $12, $6f, $1e
    db $0f, $0f

Puzzle_TT34_horse_Data::
    db $07, $00, $fd, $00, $89, $00, $89, $00, $81, $00
    db $f9, $f8, $08, $e6, $08, $ea, $08, $0a, $08, $0a
    db $0b, $ee, $0a, $28, $0e, $38, $16, $58, $1a, $68
    db $0f, $0f

Puzzle_TT35_tea_cup_Data::
    db $3f, $c0, $40, $20, $bf, $d0, $bf, $d0, $40, $3c
    db $70, $e2, $40, $3a, $40, $2a, $40, $3a, $40, $24
    db $40, $38, $40, $20, $60, $60, $30, $c0, $1f, $80
    db $0f, $0f

Puzzle_TT36_pegasus_Data::
    db $0e, $7e, $1a, $c2, $e2, $9e, $93, $84, $83, $08
    db $83, $10, $f2, $30, $12, $2c, $11, $ea, $10, $0a
    db $10, $0a, $11, $0e, $17, $68, $15, $68, $1d, $f8
    db $0f, $0f

Puzzle_TT37_rhinoceros_Data::
    db $e0, $00, $a0, $00, $bb, $80, $ae, $f0, $aa, $98
    db $f3, $86, $89, $0a, $89, $0a, $81, $0a, $c3, $0a
    db $7e, $0e, $1d, $d8, $17, $68, $15, $68, $1d, $f8
    db $0f, $0f

Puzzle_TT38_angler_Data::
    db $38, $00, $e8, $00, $a8, $00, $e8, $f0, $09, $10
    db $3f, $90, $60, $50, $40, $36, $e4, $1a, $94, $1e
    db $d1, $92, $90, $9e, $e1, $9a, $40, $36, $3f, $c0
    db $0f, $0f

Puzzle_TT39_ring_Data::
    db $1e, $00, $2b, $80, $52, $80, $a2, $f8, $c2, $8c
    db $83, $f6, $fe, $1a, $44, $0a, $7c, $0a, $14, $0a
    db $14, $0a, $16, $1a, $1b, $f6, $0c, $0c, $07, $f8
    db $0f, $0f

Puzzle_TT3A_woodpecker_Data::
    db $e1, $fe, $c3, $02, $9e, $44, $a2, $48, $be, $08
    db $c1, $18, $e3, $78, $e2, $4c, $e2, $c4, $e2, $a4
    db $e2, $a4, $d2, $a4, $ee, $b6, $d9, $d2, $e0, $7c
    db $0f, $0f

Puzzle_TT3B_Grim_Reaper_Data::
    db $73, $c0, $96, $e0, $74, $60, $96, $e0, $15, $40
    db $1f, $f0, $2b, $f8, $3d, $f8, $16, $78, $1f, $9c
    db $0b, $ec, $0b, $74, $09, $bc, $08, $de, $00, $2e
    db $0f, $0f

Puzzle_TT3C_hedgehog_Data::
    db $21, $00, $b2, $1c, $b6, $30, $bc, $e0, $ab, $4e
    db $e6, $f4, $6d, $9e, $6b, $70, $52, $ee, $af, $30
    db $8b, $fe, $f0, $18, $17, $ac, $18, $66, $00, $00
    db $0f, $0f

Puzzle_TT3D_dump_truck_Data::
    db $1f, $00, $21, $00, $79, $00, $55, $00, $95, $fe
    db $94, $02, $e5, $fe, $85, $52, $b5, $42, $84, $06
    db $ba, $38, $ed, $ec, $46, $44, $6c, $6c, $38, $38
    db $0f, $0f

Puzzle_TT3E_bi_plane_Data::
    db $00, $38, $38, $38, $3c, $34, $5e, $2e, $6f, $7e
    db $37, $fe, $1b, $f0, $0d, $e0, $0a, $f0, $19, $78
    db $3f, $bc, $be, $de, $dc, $62, $68, $3c, $30, $00
    db $0f, $0f

Puzzle_TT3F_sheriff_Data::
    db $2b, $c0, $26, $50, $23, $f0, $22, $40, $62, $40
    db $e7, $f0, $aa, $58, $f1, $a8, $45, $6c, $6c, $24
    db $34, $34, $07, $f4, $1f, $ea, $3e, $ee, $38, $e0
    db $0f, $0f

    ; padding
    ds $d30, $00
