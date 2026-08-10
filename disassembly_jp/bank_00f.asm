; Disassembly of "Mario no Picross (Japan) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

Jumpvector_SoundCommandDispatcher::
    jp SoundCommandDispatcher                     ; $4000: $c3 $58 $42


Jumpvector_SoundEngineUpdateRoutine::
    jp SoundEngine_FrameTickRoutine               ; $4003: $c3 $e9 $43


    ; padding
    ds $a, $ff

SETCHARMAP ascii

HiddenMusicComposerCredits::
    db "DSEQ", $00, $01

    db "APE (C) mcmxciv by Toshiyuki Ueno", $00

    db "pcs26448@asciinet.or.jp", $00

    ; padding
    ds $30, $ff

SoundCommandDispatcher_Cmd00To07PointerTable::
    db $80, $42
    db $c4, $42
    db $fc, $42
    db $c8, $43
    db $d6, $43
    db $db, $43
    db $e0, $43
    db $e4, $43

SoundEngine_EOpcodeDispatchPointerTable::
    db $56, $46
    db $56, $46
    db $56, $46
    db $56, $46
    db $56, $46
    db $56, $46
    db $56, $46
    db $56, $46
    db $56, $46
    db $63, $46
    db $72, $46
    db $80, $46
    db $80, $46
    db $f8, $44
    db $0e, $45
    db $17, $45

SoundEngine_FOpcodeDispatchPointerTable::
    db $8f, $45
    db $c6, $45
    db $de, $45
    db $80, $46
    db $32, $46
    db $a7, $45
    db $19, $46
    db $0a, $46
    db $80, $46
    db $26, $46
    db $f6, $45
    db $4a, $46
    db $3e, $46
    db $80, $46
    db $78, $45
    db $80, $46

    ; padding
    ds $30, $ff

Unused_SoundEngine_SemitoneFrequencyWordTableEntry::
    db $86, $03

SoundEngine_SemitoneFrequencyWordTable::
    db $00, $00
    db $72, $00
    db $df, $00
    db $45, $01
    db $a6, $01
    db $01, $02
    db $57, $02
    db $a9, $02
    db $f5, $02
    db $3e, $03
    db $82, $03
    db $c3, $03
    db $7b, $00

SoundEngine_PitchBendSlopeWordTable::
    db $73, $00
    db $6e, $00
    db $67, $00
    db $62, $00
    db $5c, $00
    db $57, $00
    db $53, $00
    db $4d, $00
    db $4a, $00
    db $45, $00
    db $42, $00
    db $3e, $00

SoundEngine_NRFrequencyRegisterAddressTable::
    db $13, $18, $1d, $22

SoundEngine_NRTimbreRegisterAddressTable::
    db $11, $16, $ff, $ff

SoundEngine_NRVolumeRegisterAddressTable::
    db $12, $17, $1c, $21

SoundEngine_CH3OutputLevelMapTable::
    db $00, $06, $04, $02

SoundEngine_NR51ClearMaskByChannelTable::
    db $ee, $dd, $bb, $77

SoundEngine_NR51RoutingPatternTable::
    db $00, $01, $10, $11

SoundEngine_NoteLengthTickTable::
    db $01, $02, $03, $04, $06, $08, $09, $0c
    db $10, $12, $18, $20, $24, $30, $40, $48

SoundEngine_WaveRAMPresetPointerTable::
    db $78, $41
    db $88, $41
    db $98, $41
    db $a8, $41
    db $b8, $41
    db $c8, $41
    db $d8, $41
    db $e8, $41
    db $f8, $41
    db $08, $42
    db $18, $42
    db $28, $42
    db $38, $42
    db $48, $42

SoundWavePatternPreset00::
    db $87, $89, $ab, $cd, $ee, $ed, $55, $55, $55, $ff, $ff, $ff, $ff, $ff, $ff, $ff

SoundWavePatternPreset01::
    db $00, $00, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

SoundWavePatternPreset02::
    db $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

SoundWavePatternPreset03::
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00

SoundWavePatternPreset04::
    db $00, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

SoundWavePatternPreset05::
    db $ff, $ee, $dd, $cc, $bb, $aa, $99, $88, $77, $66, $55, $44, $33, $22, $11, $00

SoundWavePatternPreset06::
    db $fd, $98, $00, $03, $ff, $04, $11, $17, $23, $34, $55, $68, $ac, $de, $fe, $dc

SoundWavePatternPreset07::
    db $03, $25, $47, $69, $8b, $ad, $cf, $ec, $ef, $cd, $ab, $89, $67, $45, $23, $01

SoundWavePatternPreset08::
    db $04, $26, $48, $6a, $8c, $ae, $ca, $ec, $ea, $ce, $ac, $8a, $68, $46, $24, $02

SoundWavePatternPreset09::
    db $05, $27, $49, $6b, $8d, $af, $c9, $eb, $e9, $cf, $ad, $8b, $69, $47, $25, $03

SoundWavePatternPreset0a::
    db $06, $28, $4a, $6c, $8e, $a6, $c8, $ea, $e8, $c6, $ae, $8c, $6a, $48, $26, $04

SoundWavePatternPreset0b::
    db $0f, $0e, $0d, $0c, $0b, $0a, $09, $08, $f7, $f6, $f5, $f4, $f3, $f2, $f1, $f0

SoundWavePatternPreset0c::
    db $00, $01, $02, $03, $04, $05, $06, $07, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff

SoundWavePatternPreset0d::
    db $11, $67, $77, $77, $77, $77, $77, $43, $34, $56, $78, $9a, $aa, $aa, $aa, $af

SoundCommandDispatcher::
    ld hl, $dd0e                                  ; $4258: $21 $0e $dd
    push af                                       ; $425b: $f5
    ld a, [hl]                                    ; $425c: $7e
    bit 0, a                                      ; $425d: $cb $47
    jr nz, jr_00f_427d                            ; $425f: $20 $1c

    or $01                                        ; $4261: $f6 $01
    ld [hl], a                                    ; $4263: $77
    pop af                                        ; $4264: $f1
    push hl                                       ; $4265: $e5
    ld hl, $4276                                  ; $4266: $21 $76 $42
    push hl                                       ; $4269: $e5
    ld hl, SoundCommandDispatcher_Cmd00To07PointerTable; $426a: $21 $80 $40
    push af                                       ; $426d: $f5
    add a                                         ; $426e: $87
    add l                                         ; $426f: $85
    ld l, a                                       ; $4270: $6f
    ld a, [hl+]                                   ; $4271: $2a
    ld h, [hl]                                    ; $4272: $66
    ld l, a                                       ; $4273: $6f
    pop af                                        ; $4274: $f1
    jp hl                                         ; $4275: $e9


    pop hl                                        ; $4276: $e1
    ld a, [hl]                                    ; $4277: $7e
    and $fe                                       ; $4278: $e6 $fe
    ld [hl], a                                    ; $427a: $77
    or a                                          ; $427b: $b7
    ret                                           ; $427c: $c9


jr_00f_427d:
    pop af                                        ; $427d: $f1
    scf                                           ; $427e: $37
    ret                                           ; $427f: $c9


SoundCommandDispatcher_Cmd00_ResetAPUDriverState::
    ld hl, SoundCommandDispatcher_Cmd00_APURegisterInitPairs; $4280: $21 $a5 $42

.ApplyAPURegisterInitPairsLoop:
    ld a, [hl+]                                   ; $4283: $2a
    or a                                          ; $4284: $b7
    jr z, .ClearRuntimeStateBlock                 ; $4285: $28 $05

    ld c, a                                       ; $4287: $4f
    ld a, [hl+]                                   ; $4288: $2a
    ldh [c], a                                    ; $4289: $e2
    jr .ApplyAPURegisterInitPairsLoop             ; $428a: $18 $f7

.ClearRuntimeStateBlock:
    ld b, $0c                                     ; $428c: $06 $0c
    ld hl, rSoundCurrentVoiceIndex                ; $428e: $21 $02 $dd
    xor a                                         ; $4291: $af
    ld [$dd0e], a                                 ; $4292: $ea $0e $dd

.ClearRuntimeStateBlockLoop:
    ld [hl+], a                                   ; $4295: $22
    dec b                                         ; $4296: $05
    jr nz, .ClearRuntimeStateBlockLoop            ; $4297: $20 $fc

    call SoundEngine_LoadWaveRAMPresetByIndex     ; $4299: $cd $a9 $49
    ld a, $ff                                     ; $429c: $3e $ff
    ld [rSoundUpperVoiceGroupCommandIndex], a     ; $429e: $ea $00 $dd
    ld [rSoundLowerVoiceGroupCommandIndex], a     ; $42a1: $ea $01 $dd
    ret                                           ; $42a4: $c9


SoundCommandDispatcher_Cmd00_APURegisterInitPairs::
    db $26, $80
    db $24, $77
    db $25, $ff
    db $10, $08
    db $12, $00
    db $17, $00
    db $21, $00
    db $14, $80
    db $19, $80
    db $23, $80
    db $1c, $00
    db $11, $00
    db $16, $00
    db $1b, $00
    db $20, $00
    db $00

SoundCommandDispatcher_Cmd01_StartUpperVoiceGroup::
    ld a, c                                       ; $42c4: $79
    ld [rSoundUpperVoiceGroupCommandIndex], a     ; $42c5: $ea $00 $dd
    ld de, SCD_Cmd01_VoiceCommandStreamPointerRow_Param00_DeactivateBGM; $42c8: $11 $b0 $4a
    cp $ff                                        ; $42cb: $fe $ff
    jr nz, .LoadUpperVoiceScriptPointerRow        ; $42cd: $20 $07

    ld de, SCD_Cmd01_02_VoiceCommandStreamPointerRow_ParamFF; $42cf: $11 $a7 $4a
    xor a                                         ; $42d2: $af
    ld [rSoundEvent01FFOverrideState_Unsure], a   ; $42d3: $ea $0d $dd

.LoadUpperVoiceScriptPointerRow:
    ld hl, rSoundVoiceScriptPointerRowBuffer      ; $42d6: $21 $28 $dd
    call CopyIndexed8ByteRowToHLFromDE            ; $42d9: $cd $cc $48
    ld hl, rSoundActiveVoiceMask                  ; $42dc: $21 $04 $dd
    ld a, $f0                                     ; $42df: $3e $f0
    or [hl]                                       ; $42e1: $b6
    ld [hl], a                                    ; $42e2: $77
    ld hl, SoundCommandDispatcher_Cmd02_RuntimeStateInitTable; $42e3: $21 $8a $43

.ClearPerVoiceSecondaryStateBlocksLoop:
    ld c, [hl]                                    ; $42e6: $4e
    inc hl                                        ; $42e7: $23
    ld a, [hl]                                    ; $42e8: $7e
    inc hl                                        ; $42e9: $23
    or a                                          ; $42ea: $b7
    ret z                                         ; $42eb: $c8

    ld b, a                                       ; $42ec: $47
    ld e, [hl]                                    ; $42ed: $5e
    inc hl                                        ; $42ee: $23
    ld d, [hl]                                    ; $42ef: $56
    inc hl                                        ; $42f0: $23
    push hl                                       ; $42f1: $e5
    ld hl, $0008                                  ; $42f2: $21 $08 $00
    add hl, bc                                    ; $42f5: $09
    call SoundEngine_FillFourWordEntriesWithDEAtHL; $42f6: $cd $c0 $48
    pop hl                                        ; $42f9: $e1
    jr .ClearPerVoiceSecondaryStateBlocksLoop     ; $42fa: $18 $ea

SoundCommandDispatcher_Cmd02_ResetVoicesAndStartLowerVoiceGroup::
    push bc                                       ; $42fc: $c5
    ld hl, rSoundCurrentVoiceIndex                ; $42fd: $21 $02 $dd
    xor a                                         ; $4300: $af
    ld [hl], a                                    ; $4301: $77
    ld a, [rSoundActiveVoiceMask]                 ; $4302: $fa $04 $dd
    ld c, $10                                     ; $4305: $0e $10
    ld d, $01                                     ; $4307: $16 $01
    ld b, $04                                     ; $4309: $06 $04

.InitPerVoiceMaskLoop:
    push af                                       ; $430b: $f5
    ld a, d                                       ; $430c: $7a
    ld [rSoundCurrentVoiceMaskBit], a             ; $430d: $ea $06 $dd
    ld a, [rSoundActiveVoiceMask]                 ; $4310: $fa $04 $dd
    and c                                         ; $4313: $a1
    and $0f                                       ; $4314: $e6 $0f
    ld [rSoundCurrentVoiceMuteMask], a            ; $4316: $ea $05 $dd
    rlc c                                         ; $4319: $cb $01

.RotateVoiceMaskAndProcessActiveVoice:
    rlc d                                         ; $431b: $cb $02
    pop af                                        ; $431d: $f1
    rrca                                          ; $431e: $0f
    jr nc, .AdvanceVoiceSlotIndexAndLoop          ; $431f: $30 $09

    push af                                       ; $4321: $f5
    push bc                                       ; $4322: $c5
    push hl                                       ; $4323: $e5
    call SoundEngine_DeactivateCurrentVoiceAndUpdateActiveMasks; $4324: $cd $2f $45
    pop hl                                        ; $4327: $e1
    pop bc                                        ; $4328: $c1
    pop af                                        ; $4329: $f1

.AdvanceVoiceSlotIndexAndLoop:
    inc [hl]                                      ; $432a: $34
    dec b                                         ; $432b: $05
    jr nz, .InitPerVoiceMaskLoop                  ; $432c: $20 $dd

    pop bc                                        ; $432e: $c1
    ld a, c                                       ; $432f: $79
    ld [rSoundLowerVoiceGroupCommandIndex], a     ; $4330: $ea $01 $dd
    ld de, SCD_Cmd02_VoiceCommandStreamPointerRow_Param00_Unused; $4333: $11 $2d $6f
    cp $ff                                        ; $4336: $fe $ff
    jr nz, .LoadLowerVoiceScriptPointerRow        ; $4338: $20 $07

    ld de, SCD_Cmd01_02_VoiceCommandStreamPointerRow_ParamFF; $433a: $11 $a7 $4a
    xor a                                         ; $433d: $af
    ld [rSoundVoiceGroupAttenuationTable], a      ; $433e: $ea $0c $dd

.LoadLowerVoiceScriptPointerRow:
    ld hl, rSoundVoiceScriptPointerTable          ; $4341: $21 $20 $dd
    call CopyIndexed8ByteRowToHLFromDE            ; $4344: $cd $cc $48
    ld a, c                                       ; $4347: $79
    cp $ff                                        ; $4348: $fe $ff
    jr z, .InitRuntimeClearTableCursor            ; $434a: $28 $25

    ld a, [rSoundActiveVoiceMask]                 ; $434c: $fa $04 $dd
    or $0f                                        ; $434f: $f6 $0f
    ld d, a                                       ; $4351: $57
    ld e, $fe                                     ; $4352: $1e $fe
    ld b, $04                                     ; $4354: $06 $04
    ld hl, rSoundVoiceScriptPointerTable          ; $4356: $21 $20 $dd

.ClearActiveMaskBitIfScriptStartsWithEF:
    push hl                                       ; $4359: $e5
    ld a, [hl+]                                   ; $435a: $2a
    ld h, [hl]                                    ; $435b: $66
    ld l, a                                       ; $435c: $6f
    ld a, [hl]                                    ; $435d: $7e
    cp $ef                                        ; $435e: $fe $ef
    jr nz, .AdvanceMaskBitAndRowPointer           ; $4360: $20 $03

    ld a, d                                       ; $4362: $7a
    and e                                         ; $4363: $a3
    ld d, a                                       ; $4364: $57

.AdvanceMaskBitAndRowPointer:
    rlc e                                         ; $4365: $cb $03
    pop hl                                        ; $4367: $e1
    inc hl                                        ; $4368: $23
    inc hl                                        ; $4369: $23
    dec b                                         ; $436a: $05
    jr nz, .ClearActiveMaskBitIfScriptStartsWithEF; $436b: $20 $ec

    ld a, d                                       ; $436d: $7a
    ld [rSoundActiveVoiceMask], a                 ; $436e: $ea $04 $dd

.InitRuntimeClearTableCursor:
    ld hl, SoundCommandDispatcher_Cmd02_RuntimeStateInitTable; $4371: $21 $8a $43

.ClearRuntimeTablesFromInitTable:
    ld c, [hl]                                    ; $4374: $4e
    inc hl                                        ; $4375: $23
    ld a, [hl]                                    ; $4376: $7e
    inc hl                                        ; $4377: $23
    or a                                          ; $4378: $b7
    ret z                                         ; $4379: $c8

    ld b, a                                       ; $437a: $47
    ld e, [hl]                                    ; $437b: $5e
    inc hl                                        ; $437c: $23
    ld d, [hl]                                    ; $437d: $56
    inc hl                                        ; $437e: $23
    push hl                                       ; $437f: $e5
    ld hl, $0000                                  ; $4380: $21 $00 $00
    add hl, bc                                    ; $4383: $09
    call SoundEngine_FillFourWordEntriesWithDEAtHL; $4384: $cd $c0 $48
    pop hl                                        ; $4387: $e1
    jr .ClearRuntimeTablesFromInitTable           ; $4388: $18 $ea

SoundCommandDispatcher_Cmd02_RuntimeStateInitTable::
    db $40, $dd, $00, $00
    db $70, $dd, $00, $00
    db $80, $dd, $00, $00
    db $30, $dd, $00, $00
    db $c0, $dd, $00, $00
    db $b0, $dd, $00, $00
    db $f0, $dd, $00, $00
    db $00, $de, $00, $00
    db $10, $de, $00, $00
    db $20, $de, $00, $00
    db $30, $de, $00, $00
    db $40, $de, $00, $00
    db $e0, $dd, $00, $90
    db $50, $dd, $00, $00
    db $a0, $dd, $0f, $ff
    db $00, $00

SoundCommandDispatcher_Cmd03_StoreDeferredSGBPacketPrefix::
    ld hl, rSoundDeferredSGBPacketHeader          ; $43c8: $21 $0f $dd
    ld [hl], $41                                  ; $43cb: $36 $41
    inc hl                                        ; $43cd: $23
    ld [hl], b                                    ; $43ce: $70
    inc hl                                        ; $43cf: $23
    ld [hl], c                                    ; $43d0: $71
    inc hl                                        ; $43d1: $23
    ld [hl], d                                    ; $43d2: $72
    inc hl                                        ; $43d3: $23
    ld [hl], e                                    ; $43d4: $73
    ret                                           ; $43d5: $c9


SoundCommandDispatcher_Cmd04_InvokeCmd01WithFF::
    ld c, $ff                                     ; $43d6: $0e $ff
    jp SoundCommandDispatcher_Cmd01_StartUpperVoiceGroup; $43d8: $c3 $c4 $42


SoundCommandDispatcher_Cmd05_InvokeCmd02WithFF::
    ld c, $ff                                     ; $43db: $0e $ff
    jp SoundCommandDispatcher_Cmd02_ResetVoicesAndStartLowerVoiceGroup; $43dd: $c3 $fc $42


SoundCommandDispatcher_Cmd06_ReadUpperVoiceGroupCommandIndex::
    ld a, [rSoundUpperVoiceGroupCommandIndex]     ; $43e0: $fa $00 $dd
    ret                                           ; $43e3: $c9


SoundCommandDispatcher_Cmd07_ReadLowerVoiceGroupCommandIndex::
    ld a, [rSoundLowerVoiceGroupCommandIndex]     ; $43e4: $fa $01 $dd
    ret                                           ; $43e7: $c9


    ret                                           ; $43e8: $c9


SoundEngine_FrameTickRoutine::
    ld hl, $dd0e                                  ; $43e9: $21 $0e $dd
    ld a, [hl]                                    ; $43ec: $7e
    bit 1, a                                      ; $43ed: $cb $4f
    jr nz, jr_00f_443f                            ; $43ef: $20 $4e

    or $02                                        ; $43f1: $f6 $02
    ld [hl], a                                    ; $43f3: $77
    push hl                                       ; $43f4: $e5
    ld a, [rSoundDeferredSGBPacketHeader]         ; $43f5: $fa $0f $dd
    inc a                                         ; $43f8: $3c
    jr z, .InitPerFrameVoiceIterationState        ; $43f9: $28 $08

    call SoundEngine_SendDeferredSGBPacketWithClearedPayloadTail; $43fb: $cd $4d $4a
    ld a, $ff                                     ; $43fe: $3e $ff
    ld [rSoundDeferredSGBPacketHeader], a         ; $4400: $ea $0f $dd

.InitPerFrameVoiceIterationState:
    ld hl, rSoundCurrentVoiceIndex                ; $4403: $21 $02 $dd
    xor a                                         ; $4406: $af
    ld [hl], a                                    ; $4407: $77
    ld a, [rSoundActiveVoiceMask]                 ; $4408: $fa $04 $dd
    ld c, $10                                     ; $440b: $0e $10
    ld d, $01                                     ; $440d: $16 $01
    ld b, $08                                     ; $440f: $06 $08

PerVoiceTickLoop::
    push af                                       ; $4411: $f5
    xor a                                         ; $4412: $af
    ld [rSoundCurrentVoiceUpdateFlags], a         ; $4413: $ea $07 $dd
    ld a, d                                       ; $4416: $7a
    ld [rSoundCurrentVoiceMaskBit], a             ; $4417: $ea $06 $dd
    ld a, [rSoundActiveVoiceMask]                 ; $441a: $fa $04 $dd
    and c                                         ; $441d: $a1
    and $0f                                       ; $441e: $e6 $0f
    ld [rSoundCurrentVoiceMuteMask], a            ; $4420: $ea $05 $dd
    rlc c                                         ; $4423: $cb $01
    rlc d                                         ; $4425: $cb $02

SoundEngine_ProcessActiveVoiceIfSet::
    pop af                                        ; $4427: $f1
    rrca                                          ; $4428: $0f
    jr nc, .AdvanceVoiceIndexAndLoop              ; $4429: $30 $09

    push af                                       ; $442b: $f5
    push bc                                       ; $442c: $c5
    push hl                                       ; $442d: $e5
    call SoundEngine_ProcessVoiceTick             ; $442e: $cd $41 $44
    pop hl                                        ; $4431: $e1
    pop bc                                        ; $4432: $c1
    pop af                                        ; $4433: $f1

.AdvanceVoiceIndexAndLoop:
    inc [hl]                                      ; $4434: $34
    dec b                                         ; $4435: $05
    jr nz, PerVoiceTickLoop                       ; $4436: $20 $d9

    pop hl                                        ; $4438: $e1
    ld a, [hl]                                    ; $4439: $7e
    and $fd                                       ; $443a: $e6 $fd
    ld [hl], a                                    ; $443c: $77
    or a                                          ; $443d: $b7
    ret                                           ; $443e: $c9


jr_00f_443f:
    scf                                           ; $443f: $37
    ret                                           ; $4440: $c9


SoundEngine_ProcessVoiceTick::
    ld a, [rSoundCurrentVoiceIndex]               ; $4441: $fa $02 $dd
    ld c, a                                       ; $4444: $4f
    ld hl, rSoundVoiceNoteTickCountdownTable      ; $4445: $21 $40 $dd
    add a                                         ; $4448: $87
    add l                                         ; $4449: $85
    ld l, a                                       ; $444a: $6f
    ld a, [hl]                                    ; $444b: $7e
    or a                                          ; $444c: $b7
    jp nz, SoundEngine_UpdateVoiceStateAndCommitAPURegisters; $444d: $c2 $8f $46

    ld hl, rSoundVoiceScriptPointerTable          ; $4450: $21 $20 $dd
    ld a, c                                       ; $4453: $79
    add a                                         ; $4454: $87
    add l                                         ; $4455: $85
    ld l, a                                       ; $4456: $6f
    ld e, [hl]                                    ; $4457: $5e
    inc hl                                        ; $4458: $23
    ld d, [hl]                                    ; $4459: $56

SoundEngine_DispatchVoiceOpcode::
    ld a, [de]                                    ; $445a: $1a
    and $f0                                       ; $445b: $e6 $f0
    cp $f0                                        ; $445d: $fe $f0
    jr nz, .HandleE0OpcodeGroup                   ; $445f: $20 $0d

    ld a, [de]                                    ; $4461: $1a
    and $0f                                       ; $4462: $e6 $0f
    ld hl, SoundEngine_FOpcodeDispatchPointerTable; $4464: $21 $b0 $40
    add a                                         ; $4467: $87
    add l                                         ; $4468: $85
    ld l, a                                       ; $4469: $6f
    ld a, [hl+]                                   ; $446a: $2a
    ld h, [hl]                                    ; $446b: $66
    ld l, a                                       ; $446c: $6f
    jp hl                                         ; $446d: $e9


.HandleE0OpcodeGroup:
    cp $e0                                        ; $446e: $fe $e0
    jr nz, .HandleVoiceDataOpcode                 ; $4470: $20 $0d

    ld a, [de]                                    ; $4472: $1a
    and $0f                                       ; $4473: $e6 $0f
    ld hl, SoundEngine_EOpcodeDispatchPointerTable; $4475: $21 $90 $40
    add a                                         ; $4478: $87
    add l                                         ; $4479: $85
    ld l, a                                       ; $447a: $6f
    ld a, [hl+]                                   ; $447b: $2a
    ld h, [hl]                                    ; $447c: $66
    ld l, a                                       ; $447d: $6f
    jp hl                                         ; $447e: $e9


.HandleVoiceDataOpcode:
    ld hl, rSoundVoiceControlTable                ; $447f: $21 $30 $dd
    ld a, c                                       ; $4482: $79
    add a                                         ; $4483: $87
    add l                                         ; $4484: $85
    ld l, a                                       ; $4485: $6f
    ld a, [de]                                    ; $4486: $1a
    and $f0                                       ; $4487: $e6 $f0
    cp $d0                                        ; $4489: $fe $d0
    jr nz, .ComputeVoicePitchControlByteFromOpcodeHighNibble; $448b: $20 $04

    ld a, $ff                                     ; $448d: $3e $ff
    jr .StoreVoicePitchControlByteForCurrentVoice ; $448f: $18 $0f

.ComputeVoicePitchControlByteFromOpcodeHighNibble:
    push hl                                       ; $4491: $e5
    ld a, [hl]                                    ; $4492: $7e
    ld l, $0c                                     ; $4493: $2e $0c
    call SoundEngine_MultiplyLByALowNibble        ; $4495: $cd $a4 $48
    ld l, a                                       ; $4498: $6f
    ld a, [de]                                    ; $4499: $1a
    and $f0                                       ; $449a: $e6 $f0
    swap a                                        ; $449c: $cb $37
    add l                                         ; $449e: $85
    pop hl                                        ; $449f: $e1

.StoreVoicePitchControlByteForCurrentVoice:
    inc hl                                        ; $44a0: $23
    ld [hl], a                                    ; $44a1: $77
    ld b, $00                                     ; $44a2: $06 $00

.AccumulateTickUnitsFromC0Chain:
    ld a, [de]                                    ; $44a4: $1a
    and $0f                                       ; $44a5: $e6 $0f
    ld hl, SoundEngine_NoteLengthTickTable        ; $44a7: $21 $4c $41
    add l                                         ; $44aa: $85
    ld l, a                                       ; $44ab: $6f
    ld a, [hl]                                    ; $44ac: $7e
    add b                                         ; $44ad: $80
    ld b, a                                       ; $44ae: $47
    inc de                                        ; $44af: $13
    ld a, [de]                                    ; $44b0: $1a
    and $f0                                       ; $44b1: $e6 $f0
    cp $c0                                        ; $44b3: $fe $c0
    jr z, .AccumulateTickUnitsFromC0Chain         ; $44b5: $28 $ed

    ld hl, rSoundVoiceNoteTickCountdownTable      ; $44b7: $21 $40 $dd
    ld a, c                                       ; $44ba: $79
    add a                                         ; $44bb: $87
    add l                                         ; $44bc: $85
    ld l, a                                       ; $44bd: $6f
    ld [hl], b                                    ; $44be: $70
    ld hl, rSoundVoiceTickRateTable               ; $44bf: $21 $50 $dd
    ld a, c                                       ; $44c2: $79
    add a                                         ; $44c3: $87
    add l                                         ; $44c4: $85
    ld l, a                                       ; $44c5: $6f
    ld a, [hl]                                    ; $44c6: $7e
    or a                                          ; $44c7: $b7
    jr nz, .ApplyVoiceRateScalingToTickUnits      ; $44c8: $20 $04

    ld b, $00                                     ; $44ca: $06 $00
    jr .StoreScaledTickTargetAndRequestRegisterUpdates; $44cc: $18 $18

.ApplyVoiceRateScalingToTickUnits:
    ld l, b                                       ; $44ce: $68
    ld h, $00                                     ; $44cf: $26 $00
    call SoundEngine_MultiplyHLByA_8Bit           ; $44d1: $cd $8d $48
    srl h                                         ; $44d4: $cb $3c
    rr l                                          ; $44d6: $cb $1d
    srl h                                         ; $44d8: $cb $3c
    rr l                                          ; $44da: $cb $1d
    srl h                                         ; $44dc: $cb $3c
    rr l                                          ; $44de: $cb $1d
    ld b, l                                       ; $44e0: $45
    ld a, b                                       ; $44e1: $78
    or a                                          ; $44e2: $b7
    jr nz, .StoreScaledTickTargetAndRequestRegisterUpdates; $44e3: $20 $01

    inc b                                         ; $44e5: $04

.StoreScaledTickTargetAndRequestRegisterUpdates:
    ld hl, rSoundVoiceScaledTickTargetTable       ; $44e6: $21 $60 $dd
    ld a, c                                       ; $44e9: $79
    add a                                         ; $44ea: $87
    add l                                         ; $44eb: $85
    ld l, a                                       ; $44ec: $6f
    ld [hl], b                                    ; $44ed: $70
    ld hl, rSoundCurrentVoiceUpdateFlags          ; $44ee: $21 $07 $dd
    ld a, $f9                                     ; $44f1: $3e $f9
    or [hl]                                       ; $44f3: $b6
    ld [hl], a                                    ; $44f4: $77
    jp SoundEngine_SaveVoiceScriptPointer         ; $44f5: $c3 $85 $46


SoundEngine_OpED_SetGroupAttenuationFromNibble::
    ld a, c                                       ; $44f8: $79
    ld hl, rSoundVoiceGroupAttenuationTable       ; $44f9: $21 $0c $dd
    srl a                                         ; $44fc: $cb $3f
    srl a                                         ; $44fe: $cb $3f
    add l                                         ; $4500: $85
    ld l, a                                       ; $4501: $6f
    inc de                                        ; $4502: $13
    ld a, [de]                                    ; $4503: $1a
    and $0f                                       ; $4504: $e6 $0f
    ld b, a                                       ; $4506: $47
    ld a, $0f                                     ; $4507: $3e $0f
    sub b                                         ; $4509: $90
    ld [hl], a                                    ; $450a: $77
    jp SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $450b: $c3 $80 $46


SoundEngine_OpEE_JumpToInlinePointer::
    ld h, d                                       ; $450e: $62
    ld l, e                                       ; $450f: $6b
    inc hl                                        ; $4510: $23
    ld e, [hl]                                    ; $4511: $5e
    inc hl                                        ; $4512: $23
    ld d, [hl]                                    ; $4513: $56
    jp SoundCommandDispatcher_ContinueVoiceStreamDispatch; $4514: $c3 $81 $46


SoundEngine_OpEF_ReturnOrStopVoice::
    ld hl, rSoundVoiceCallReturnPointerTable      ; $4517: $21 $40 $de
    ld a, c                                       ; $451a: $79
    add a                                         ; $451b: $87
    add l                                         ; $451c: $85
    ld l, a                                       ; $451d: $6f
    xor a                                         ; $451e: $af
    ld e, [hl]                                    ; $451f: $5e
    ld [hl], a                                    ; $4520: $77
    inc hl                                        ; $4521: $23
    ld d, [hl]                                    ; $4522: $56
    ld [hl], a                                    ; $4523: $77
    ld a, d                                       ; $4524: $7a
    or a                                          ; $4525: $b7
    jp nz, SoundCommandDispatcher_ContinueVoiceStreamDispatch; $4526: $c2 $81 $46

    call SoundEngine_DeactivateCurrentVoiceAndUpdateActiveMasks; $4529: $cd $2f $45
    jp SoundEngine_SaveVoiceScriptPointer         ; $452c: $c3 $85 $46


SoundEngine_DeactivateCurrentVoiceAndUpdateActiveMasks::
    ld a, [rSoundCurrentVoiceIndex]               ; $452f: $fa $02 $dd
    ld c, a                                       ; $4532: $4f
    call SoundEngine_CheckVoiceMuteGate           ; $4533: $cd $de $48
    jr c, .FinalizeVoiceDeactivationMasks         ; $4536: $38 $1e

    xor a                                         ; $4538: $af
    call SoundEngine_WriteVoiceVolumeNibble       ; $4539: $cd $3e $49
    ld a, c                                       ; $453c: $79
    cp $04                                        ; $453d: $fe $04
    jr nc, .FinalizeVoiceDeactivationMasks        ; $453f: $30 $15

    ld a, [rSoundCurrentVoiceMaskBit]             ; $4541: $fa $06 $dd
    swap a                                        ; $4544: $cb $37
    ld hl, rSoundActiveVoiceMask                  ; $4546: $21 $04 $dd
    and [hl]                                      ; $4549: $a6
    jr z, .FinalizeVoiceDeactivationMasks         ; $454a: $28 $0a

    ld hl, rSoundHighVoiceUpdateFlagsTable        ; $454c: $21 $08 $dd
    ld a, c                                       ; $454f: $79
    add l                                         ; $4550: $85
    ld l, a                                       ; $4551: $6f
    ld a, $f0                                     ; $4552: $3e $f0
    or [hl]                                       ; $4554: $b6
    ld [hl], a                                    ; $4555: $77

.FinalizeVoiceDeactivationMasks:
    ld b, c                                       ; $4556: $41
    inc b                                         ; $4557: $04
    xor a                                         ; $4558: $af
    dec a                                         ; $4559: $3d

.BuildVoiceClearMaskLoop:
    rla                                           ; $455a: $17
    dec b                                         ; $455b: $05
    jr nz, .BuildVoiceClearMaskLoop               ; $455c: $20 $fc

    ld hl, rSoundActiveVoiceMask                  ; $455e: $21 $04 $dd
    and [hl]                                      ; $4561: $a6
    ld [hl], a                                    ; $4562: $77
    push af                                       ; $4563: $f5
    and $f0                                       ; $4564: $e6 $f0
    jr nz, .MaybeResetLowerVoiceGroupCommandIndex ; $4566: $20 $05

    ld a, $ff                                     ; $4568: $3e $ff
    ld [rSoundUpperVoiceGroupCommandIndex], a     ; $456a: $ea $00 $dd

.MaybeResetLowerVoiceGroupCommandIndex:
    pop af                                        ; $456d: $f1
    and $0f                                       ; $456e: $e6 $0f
    jr nz, .Return                                ; $4570: $20 $05

    ld a, $ff                                     ; $4572: $3e $ff
    ld [rSoundLowerVoiceGroupCommandIndex], a     ; $4574: $ea $01 $dd

.Return:
    ret                                           ; $4577: $c9


SoundEngine_OpFE_CallInlinePointer::
    ld hl, rSoundVoiceCallReturnPointerTable      ; $4578: $21 $40 $de
    ld a, c                                       ; $457b: $79
    add a                                         ; $457c: $87
    add l                                         ; $457d: $85
    ld l, a                                       ; $457e: $6f
    inc de                                        ; $457f: $13
    inc de                                        ; $4580: $13
    inc de                                        ; $4581: $13
    ld [hl], e                                    ; $4582: $73
    inc hl                                        ; $4583: $23
    ld [hl], d                                    ; $4584: $72
    dec de                                        ; $4585: $1b
    dec de                                        ; $4586: $1b
    ld h, d                                       ; $4587: $62
    ld l, e                                       ; $4588: $6b
    ld e, [hl]                                    ; $4589: $5e
    inc hl                                        ; $458a: $23
    ld d, [hl]                                    ; $458b: $56
    jp SoundCommandDispatcher_ContinueVoiceStreamDispatch; $458c: $c3 $81 $46


SoundEngine_OpF0_SetTimbreAndTrigger::
    ld hl, rSoundVoiceTimbreTable                 ; $458f: $21 $b0 $dd
    ld a, c                                       ; $4592: $79
    add a                                         ; $4593: $87
    add l                                         ; $4594: $85
    ld l, a                                       ; $4595: $6f
    inc de                                        ; $4596: $13
    ld a, [de]                                    ; $4597: $1a
    inc de                                        ; $4598: $13
    ld [hl], a                                    ; $4599: $77
    ld hl, rSoundVoiceTriggerTable                ; $459a: $21 $c0 $dd
    ld a, c                                       ; $459d: $79
    add a                                         ; $459e: $87
    add l                                         ; $459f: $85
    ld l, a                                       ; $45a0: $6f
    ld a, [de]                                    ; $45a1: $1a
    inc de                                        ; $45a2: $13
    ld [hl], a                                    ; $45a3: $77
    jp SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $45a4: $c3 $80 $46


SoundEngine_OpF5_SetPitchOffsetGateAndStep::
    ld hl, rSoundVoicePitchOffsetGateTable        ; $45a7: $21 $00 $de
    ld a, c                                       ; $45aa: $79
    add a                                         ; $45ab: $87
    add l                                         ; $45ac: $85
    ld l, a                                       ; $45ad: $6f
    push hl                                       ; $45ae: $e5
    inc hl                                        ; $45af: $23
    inc de                                        ; $45b0: $13
    ld a, [de]                                    ; $45b1: $1a
    ld [hl], a                                    ; $45b2: $77
    ld hl, rSoundVoicePitchStepPhaseTable         ; $45b3: $21 $f0 $dd
    ld a, c                                       ; $45b6: $79
    add a                                         ; $45b7: $87
    add l                                         ; $45b8: $85
    ld l, a                                       ; $45b9: $6f
    inc de                                        ; $45ba: $13
    ld a, [de]                                    ; $45bb: $1a
    ld [hl+], a                                   ; $45bc: $22
    ld [hl], $00                                  ; $45bd: $36 $00
    inc de                                        ; $45bf: $13
    ld a, [de]                                    ; $45c0: $1a
    pop hl                                        ; $45c1: $e1
    ld [hl], a                                    ; $45c2: $77
    jp SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $45c3: $c3 $80 $46


SoundEngine_OpF1_SetLoopCounterAndBranchPointer::
    ld hl, rSoundVoiceLoopCounterTable            ; $45c6: $21 $20 $de
    ld a, c                                       ; $45c9: $79
    add a                                         ; $45ca: $87
    add l                                         ; $45cb: $85
    ld l, a                                       ; $45cc: $6f
    inc de                                        ; $45cd: $13
    ld a, [de]                                    ; $45ce: $1a
    ld [hl], a                                    ; $45cf: $77
    ld hl, rSoundVoiceLoopTargetPointerTable      ; $45d0: $21 $30 $de
    ld a, c                                       ; $45d3: $79
    add a                                         ; $45d4: $87
    add l                                         ; $45d5: $85
    ld l, a                                       ; $45d6: $6f
    inc de                                        ; $45d7: $13
    ld [hl], e                                    ; $45d8: $73
    inc hl                                        ; $45d9: $23
    ld [hl], d                                    ; $45da: $72
    jp SoundCommandDispatcher_ContinueVoiceStreamDispatch; $45db: $c3 $81 $46


SoundEngine_OpF2_DecrementLoopCounterAndBranch::
    ld hl, rSoundVoiceLoopCounterTable            ; $45de: $21 $20 $de
    ld a, c                                       ; $45e1: $79
    add a                                         ; $45e2: $87
    add l                                         ; $45e3: $85
    ld l, a                                       ; $45e4: $6f
    dec [hl]                                      ; $45e5: $35
    jp z, SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $45e6: $ca $80 $46

    ld hl, rSoundVoiceLoopTargetPointerTable      ; $45e9: $21 $30 $de
    ld a, c                                       ; $45ec: $79
    add a                                         ; $45ed: $87
    add l                                         ; $45ee: $85
    ld l, a                                       ; $45ef: $6f
    ld e, [hl]                                    ; $45f0: $5e
    inc hl                                        ; $45f1: $23
    ld d, [hl]                                    ; $45f2: $56
    jp SoundCommandDispatcher_ContinueVoiceStreamDispatch; $45f3: $c3 $81 $46


SoundEngine_OpFA_SetVoiceRateFromPackedNibbles::
    ld hl, rSoundVoiceTickRateTable               ; $45f6: $21 $50 $dd
    ld a, c                                       ; $45f9: $79
    add a                                         ; $45fa: $87
    add l                                         ; $45fb: $85
    ld l, a                                       ; $45fc: $6f
    inc de                                        ; $45fd: $13
    ld a, [de]                                    ; $45fe: $1a
    and $f0                                       ; $45ff: $e6 $f0
    swap a                                        ; $4601: $cb $37
    ld [hl+], a                                   ; $4603: $22
    ld a, [de]                                    ; $4604: $1a
    and $0f                                       ; $4605: $e6 $0f
    ld [hl], a                                    ; $4607: $77
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $4608: $18 $76

SoundEngine_OpF7_SetVoiceVolumeFromNibble::
    ld hl, rSoundVoiceVolumeTable                 ; $460a: $21 $a0 $dd
    ld a, c                                       ; $460d: $79
    add a                                         ; $460e: $87
    add l                                         ; $460f: $85
    ld l, a                                       ; $4610: $6f
    inc de                                        ; $4611: $13
    ld a, [de]                                    ; $4612: $1a
    and $0f                                       ; $4613: $e6 $0f
    ld [hl+], a                                   ; $4615: $22
    ld [hl], a                                    ; $4616: $77
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $4617: $18 $67

SoundEngine_OpF6_SetPitchBaseHighByte::
    ld hl, rSoundVoicePitchBaseTable              ; $4619: $21 $10 $de
    ld a, c                                       ; $461c: $79
    add a                                         ; $461d: $87
    add l                                         ; $461e: $85
    ld l, a                                       ; $461f: $6f
    inc hl                                        ; $4620: $23
    inc de                                        ; $4621: $13
    ld a, [de]                                    ; $4622: $1a
    ld [hl], a                                    ; $4623: $77
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $4624: $18 $5a

SoundEngine_OpF9_SetPhaseAccumulatorByte::
    ld hl, rSoundVoicePhaseAccumulatorTable       ; $4626: $21 $e0 $dd
    ld a, c                                       ; $4629: $79
    add a                                         ; $462a: $87
    add l                                         ; $462b: $85
    ld l, a                                       ; $462c: $6f
    inc de                                        ; $462d: $13
    ld a, [de]                                    ; $462e: $1a

SoundEngine_StoreAAndConsume1ByteAndContinue::
    ld [hl], a                                    ; $462f: $77
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $4630: $18 $4e

SoundEngine_OpF4_SetPitchBaseLowByte::
    ld hl, rSoundVoicePitchBaseTable              ; $4632: $21 $10 $de
    ld a, c                                       ; $4635: $79
    add a                                         ; $4636: $87
    add l                                         ; $4637: $85
    ld l, a                                       ; $4638: $6f
    inc de                                        ; $4639: $13
    ld a, [de]                                    ; $463a: $1a
    ld [hl], a                                    ; $463b: $77
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $463c: $18 $42

SoundEngine_OpFC_SetFrequencyLowByte::
    ld hl, rSoundVoiceFrequencyTable              ; $463e: $21 $d0 $dd
    ld a, c                                       ; $4641: $79
    add a                                         ; $4642: $87
    add l                                         ; $4643: $85
    ld l, a                                       ; $4644: $6f
    inc de                                        ; $4645: $13
    ld a, [de]                                    ; $4646: $1a
    ld [hl], a                                    ; $4647: $77
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $4648: $18 $36

SoundEngine_OpFB_SetVoicePanningByte::
    ld hl, rSoundVoiceStereoPanningTable          ; $464a: $21 $90 $dd
    ld a, c                                       ; $464d: $79
    add a                                         ; $464e: $87
    add l                                         ; $464f: $85
    ld l, a                                       ; $4650: $6f
    inc de                                        ; $4651: $13
    ld a, [de]                                    ; $4652: $1a
    ld [hl], a                                    ; $4653: $77
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $4654: $18 $2a

SoundEngine_OpE0ToE8_SetVoiceControlLowNibble::
    ld hl, rSoundVoiceControlTable                ; $4656: $21 $30 $dd
    ld a, c                                       ; $4659: $79
    add a                                         ; $465a: $87
    add l                                         ; $465b: $85
    ld l, a                                       ; $465c: $6f
    ld a, [de]                                    ; $465d: $1a
    and $0f                                       ; $465e: $e6 $0f
    ld [hl], a                                    ; $4660: $77
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $4661: $18 $1d

SoundEngine_OpE9_IncrementVoiceControlLowNibbleTo08::
    ld hl, rSoundVoiceControlTable                ; $4663: $21 $30 $dd
    ld a, c                                       ; $4666: $79
    add a                                         ; $4667: $87
    add l                                         ; $4668: $85
    ld l, a                                       ; $4669: $6f
    ld a, [hl]                                    ; $466a: $7e
    cp $08                                        ; $466b: $fe $08
    jr z, SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $466d: $28 $11

    inc [hl]                                      ; $466f: $34
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $4670: $18 $0e

SoundEngine_OpEA_DecrementVoiceControlLowNibbleTo00::
    ld hl, rSoundVoiceControlTable                ; $4672: $21 $30 $dd
    ld a, c                                       ; $4675: $79
    add a                                         ; $4676: $87
    add l                                         ; $4677: $85
    ld l, a                                       ; $4678: $6f
    ld a, [hl]                                    ; $4679: $7e
    or a                                          ; $467a: $b7
    jr z, SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $467b: $28 $03

    dec [hl]                                      ; $467d: $35
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $467e: $18 $00

SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue::
    inc de                                        ; $4680: $13

SoundCommandDispatcher_ContinueVoiceStreamDispatch::
    jp SoundEngine_DispatchVoiceOpcode            ; $4681: $c3 $5a $44


    inc de                                        ; $4684: $13

SoundEngine_SaveVoiceScriptPointer::
    ld hl, rSoundVoiceScriptPointerTable          ; $4685: $21 $20 $dd
    ld a, c                                       ; $4688: $79
    add a                                         ; $4689: $87
    add l                                         ; $468a: $85
    ld l, a                                       ; $468b: $6f
    ld [hl], e                                    ; $468c: $73
    inc hl                                        ; $468d: $23
    ld [hl], d                                    ; $468e: $72

SoundEngine_UpdateVoiceStateAndCommitAPURegisters::
    ld a, [rSoundCurrentVoiceUpdateFlags]         ; $468f: $fa $07 $dd
    and $01                                       ; $4692: $e6 $01
    ld a, [rSoundCurrentVoiceIndex]               ; $4694: $fa $02 $dd
    ld c, a                                       ; $4697: $4f
    jr z, .AdvanceVoiceFrameCounterPath           ; $4698: $28 $22

    ld hl, rSoundVoiceTickAccumulatorTable        ; $469a: $21 $70 $dd
    add a                                         ; $469d: $87
    add l                                         ; $469e: $85
    ld l, a                                       ; $469f: $6f
    xor a                                         ; $46a0: $af
    ld [hl], a                                    ; $46a1: $77
    ld de, $0010                                  ; $46a2: $11 $10 $00
    add hl, de                                    ; $46a5: $19
    ld [hl], a                                    ; $46a6: $77
    add hl, de                                    ; $46a7: $19
    dec de                                        ; $46a8: $1b
    ld a, [hl+]                                   ; $46a9: $2a
    ld [hl], a                                    ; $46aa: $77
    add hl, de                                    ; $46ab: $19
    ld a, [hl+]                                   ; $46ac: $2a
    ld [hl], a                                    ; $46ad: $77
    add hl, de                                    ; $46ae: $19
    ld a, [hl+]                                   ; $46af: $2a
    ld [hl], a                                    ; $46b0: $77
    ld a, c                                       ; $46b1: $79
    and $03                                       ; $46b2: $e6 $03
    cp $03                                        ; $46b4: $fe $03
    ld b, $00                                     ; $46b6: $06 $00
    jr z, .AccumulatePhaseAndHandleOverflow       ; $46b8: $28 $1c

    jr .UpdateFrequencyFromPitchBasePath          ; $46ba: $18 $17

.AdvanceVoiceFrameCounterPath:
    ld hl, rSoundVoiceFrameCounterTable           ; $46bc: $21 $80 $dd
    ld a, [rSoundCurrentVoiceIndex]               ; $46bf: $fa $02 $dd
    add a                                         ; $46c2: $87
    add l                                         ; $46c3: $85
    ld l, a                                       ; $46c4: $6f
    inc [hl]                                      ; $46c5: $34
    ld b, [hl]                                    ; $46c6: $46
    ld a, c                                       ; $46c7: $79
    and $03                                       ; $46c8: $e6 $03
    cp $03                                        ; $46ca: $fe $03
    jr z, .AccumulatePhaseAndHandleOverflow       ; $46cc: $28 $08

    push bc                                       ; $46ce: $c5
    call SoundEngine_HandleVoiceTrigger           ; $46cf: $cd $d2 $47
    pop bc                                        ; $46d2: $c1

.UpdateFrequencyFromPitchBasePath:
    call SoundEngine_UpdateFrequencyFromPitchBase ; $46d3: $cd $f4 $47

.AccumulatePhaseAndHandleOverflow:
    ld hl, rSoundVoicePhaseAccumulatorTable       ; $46d6: $21 $e0 $dd
    ld a, c                                       ; $46d9: $79
    add a                                         ; $46da: $87
    add l                                         ; $46db: $85
    ld l, a                                       ; $46dc: $6f
    ld a, [hl+]                                   ; $46dd: $2a
    add [hl]                                      ; $46de: $86
    push hl                                       ; $46df: $e5
    jr c, HandleAccumulationOverflowLoop          ; $46e0: $38 $05

    cp $90                                        ; $46e2: $fe $90
    jp c, SoundEngine_ApplyPendingHardwareUpdates ; $46e4: $da $49 $47

HandleAccumulationOverflowLoop::
    sub $90                                       ; $46e7: $d6 $90
    ld hl, rSoundVoiceNoteTickCountdownTable      ; $46e9: $21 $40 $dd
    push af                                       ; $46ec: $f5
    ld a, c                                       ; $46ed: $79
    add a                                         ; $46ee: $87
    add l                                         ; $46ef: $85
    ld l, a                                       ; $46f0: $6f
    pop af                                        ; $46f1: $f1
    dec [hl]                                      ; $46f2: $35
    ld b, [hl]                                    ; $46f3: $46
    push bc                                       ; $46f4: $c5
    push af                                       ; $46f5: $f5
    ld hl, rSoundVoiceTickAccumulatorTable        ; $46f6: $21 $70 $dd
    ld a, c                                       ; $46f9: $79
    add a                                         ; $46fa: $87
    add l                                         ; $46fb: $85
    ld l, a                                       ; $46fc: $6f
    inc [hl]                                      ; $46fd: $34
    ld b, [hl]                                    ; $46fe: $46
    ld hl, rSoundVoiceScaledTickTargetTable       ; $46ff: $21 $60 $dd
    ld a, c                                       ; $4702: $79
    add a                                         ; $4703: $87
    add l                                         ; $4704: $85
    ld l, a                                       ; $4705: $6f
    ld a, b                                       ; $4706: $78
    cp [hl]                                       ; $4707: $be
    jr nz, ContinueOverflowWhileTickCountdownNonZero; $4708: $20 $2f

    ld hl, rSoundVoiceTickRateTable               ; $470a: $21 $50 $dd
    ld a, c                                       ; $470d: $79
    add a                                         ; $470e: $87
    add l                                         ; $470f: $85
    ld l, a                                       ; $4710: $6f
    inc hl                                        ; $4711: $23
    ld a, [hl]                                    ; $4712: $7e
    ld hl, rSoundVoiceVolumeTable                 ; $4713: $21 $a0 $dd
    push af                                       ; $4716: $f5
    ld a, c                                       ; $4717: $79
    add a                                         ; $4718: $87
    add l                                         ; $4719: $85
    ld l, a                                       ; $471a: $6f
    pop af                                        ; $471b: $f1
    inc hl                                        ; $471c: $23
    ld [hl], a                                    ; $471d: $77
    ld hl, rSoundCurrentVoiceUpdateFlags          ; $471e: $21 $07 $dd
    ld a, $c0                                     ; $4721: $3e $c0
    or [hl]                                       ; $4723: $b6
    ld [hl], a                                    ; $4724: $77
    ld hl, rSoundVoiceStereoPanningTable          ; $4725: $21 $90 $dd
    ld a, c                                       ; $4728: $79
    add a                                         ; $4729: $87
    add l                                         ; $472a: $85
    ld l, a                                       ; $472b: $6f
    ld a, [hl+]                                   ; $472c: $2a
    swap a                                        ; $472d: $cb $37

SoundEngine_StoreRoutingLowBitsAndSetNR51UpdateFlag::
    and $03                                       ; $472f: $e6 $03
    ld [hl], a                                    ; $4731: $77
    ld hl, rSoundCurrentVoiceUpdateFlags          ; $4732: $21 $07 $dd
    ld a, $10                                     ; $4735: $3e $10
    or [hl]                                       ; $4737: $b6
    ld [hl], a                                    ; $4738: $77

ContinueOverflowWhileTickCountdownNonZero::
    pop af                                        ; $4739: $f1
    pop bc                                        ; $473a: $c1
    push af                                       ; $473b: $f5
    ld a, b                                       ; $473c: $78
    or a                                          ; $473d: $b7
    jr z, .FinishOverflowLoop                     ; $473e: $28 $08

    pop af                                        ; $4740: $f1
    cp $90                                        ; $4741: $fe $90
    jr c, SoundEngine_ApplyPendingHardwareUpdates ; $4743: $38 $04

    jp HandleAccumulationOverflowLoop             ; $4745: $c3 $e7 $46


.FinishOverflowLoop:
    pop af                                        ; $4748: $f1

SoundEngine_ApplyPendingHardwareUpdates::
    push af                                       ; $4749: $f5
    call SoundEngine_CheckVoiceMuteGate           ; $474a: $cd $de $48
    jp c, SoundEngine_RestoreAccumulatorAndReturn ; $474d: $da $ce $47

    ld a, c                                       ; $4750: $79
    ld de, rSoundCurrentVoiceUpdateFlags          ; $4751: $11 $07 $dd
    cp $04                                        ; $4754: $fe $04
    jr c, .ApplyNR51UpdateIfRequested             ; $4756: $38 $0e

    ld hl, rSoundHighVoiceUpdateFlagsTable        ; $4758: $21 $08 $dd
    and $03                                       ; $475b: $e6 $03
    add l                                         ; $475d: $85
    ld l, a                                       ; $475e: $6f
    ld a, [hl]                                    ; $475f: $7e
    ld [hl], $00                                  ; $4760: $36 $00
    ld h, d                                       ; $4762: $62
    ld l, e                                       ; $4763: $6b
    or [hl]                                       ; $4764: $b6
    ld [hl], a                                    ; $4765: $77

.ApplyNR51UpdateIfRequested:
    ld a, [de]                                    ; $4766: $1a
    and $10                                       ; $4767: $e6 $10
    jr z, .ApplyTimbreUpdateIfRequested           ; $4769: $28 $0c

    ld hl, rSoundVoiceStereoPanningTable          ; $476b: $21 $90 $dd
    ld a, c                                       ; $476e: $79
    add a                                         ; $476f: $87
    add l                                         ; $4770: $85
    ld l, a                                       ; $4771: $6f
    inc hl                                        ; $4772: $23
    ld a, [hl]                                    ; $4773: $7e
    call SoundEngine_UpdateVoicePanningNR51       ; $4774: $cd $eb $48

.ApplyTimbreUpdateIfRequested:
    ld a, [de]                                    ; $4777: $1a
    and $20                                       ; $4778: $e6 $20
    jr z, .ApplyVolumeUpdateIfRequested           ; $477a: $28 $0c

    ld hl, rSoundVoiceTimbreTable                 ; $477c: $21 $b0 $dd
    ld a, c                                       ; $477f: $79
    add a                                         ; $4780: $87
    add l                                         ; $4781: $85
    ld l, a                                       ; $4782: $6f
    inc hl                                        ; $4783: $23
    ld a, [hl]                                    ; $4784: $7e
    call SoundEngine_WriteVoiceTimbreOrWave       ; $4785: $cd $64 $49

.ApplyVolumeUpdateIfRequested:
    ld a, [de]                                    ; $4788: $1a
    and $40                                       ; $4789: $e6 $40
    jr z, .ApplyFrequencyUpdateIfRequested        ; $478b: $28 $2a

    ld hl, rSoundVoiceControlTable                ; $478d: $21 $30 $dd
    ld a, c                                       ; $4790: $79
    add a                                         ; $4791: $87
    add l                                         ; $4792: $85
    ld l, a                                       ; $4793: $6f
    inc hl                                        ; $4794: $23
    ld a, [hl]                                    ; $4795: $7e
    rlca                                          ; $4796: $07
    jr nc, .ComputeAttenuatedVolumeFromGroupAttenuation; $4797: $30 $03

    xor a                                         ; $4799: $af
    jr .WriteComputedVolume                       ; $479a: $18 $18

.ComputeAttenuatedVolumeFromGroupAttenuation:
    ld a, c                                       ; $479c: $79
    ld hl, rSoundVoiceGroupAttenuationTable       ; $479d: $21 $0c $dd
    srl a                                         ; $47a0: $cb $3f
    srl a                                         ; $47a2: $cb $3f
    add l                                         ; $47a4: $85
    ld l, a                                       ; $47a5: $6f
    ld b, [hl]                                    ; $47a6: $46
    ld a, c                                       ; $47a7: $79
    ld hl, rSoundVoiceVolumeTable                 ; $47a8: $21 $a0 $dd
    add a                                         ; $47ab: $87
    add l                                         ; $47ac: $85
    ld l, a                                       ; $47ad: $6f
    inc hl                                        ; $47ae: $23
    ld a, [hl]                                    ; $47af: $7e
    sub b                                         ; $47b0: $90
    jr nc, .WriteComputedVolume                   ; $47b1: $30 $01

    xor a                                         ; $47b3: $af

.WriteComputedVolume:
    call SoundEngine_WriteVoiceVolumeNibble       ; $47b4: $cd $3e $49

.ApplyFrequencyUpdateIfRequested:
    ld hl, rSoundVoiceFrequencyTable              ; $47b7: $21 $d0 $dd
    ld a, c                                       ; $47ba: $79
    add a                                         ; $47bb: $87
    add l                                         ; $47bc: $85
    ld l, a                                       ; $47bd: $6f
    ld a, [hl+]                                   ; $47be: $2a
    ld h, [hl]                                    ; $47bf: $66
    ld l, a                                       ; $47c0: $6f
    ld a, [de]                                    ; $47c1: $1a
    and $80                                       ; $47c2: $e6 $80
    jr z, .WriteFrequencyRegisters                ; $47c4: $28 $05

    sla h                                         ; $47c6: $cb $24
    scf                                           ; $47c8: $37
    rr h                                          ; $47c9: $cb $1c

.WriteFrequencyRegisters:
    call SoundEngine_WriteVoiceFrequencyPair      ; $47cb: $cd $85 $49

SoundEngine_RestoreAccumulatorAndReturn::
    pop af                                        ; $47ce: $f1
    pop hl                                        ; $47cf: $e1
    ld [hl], a                                    ; $47d0: $77
    ret                                           ; $47d1: $c9


SoundEngine_HandleVoiceTrigger::
    ld hl, rSoundVoiceTriggerTable                ; $47d2: $21 $c0 $dd
    ld a, c                                       ; $47d5: $79
    add a                                         ; $47d6: $87
    add l                                         ; $47d7: $85
    ld l, a                                       ; $47d8: $6f
    ld a, [hl]                                    ; $47d9: $7e
    or a                                          ; $47da: $b7
    ret z                                         ; $47db: $c8

    cp b                                          ; $47dc: $b8
    ret nz                                        ; $47dd: $c0

    ld a, c                                       ; $47de: $79
    ld hl, rSoundVoiceTimbreTable                 ; $47df: $21 $b0 $dd
    add a                                         ; $47e2: $87
    add l                                         ; $47e3: $85
    ld l, a                                       ; $47e4: $6f
    ld a, [hl]                                    ; $47e5: $7e
    swap a                                        ; $47e6: $cb $37
    and $0f                                       ; $47e8: $e6 $0f
    inc hl                                        ; $47ea: $23
    ld [hl], a                                    ; $47eb: $77
    ld hl, rSoundCurrentVoiceUpdateFlags          ; $47ec: $21 $07 $dd
    ld a, $a0                                     ; $47ef: $3e $a0
    or [hl]                                       ; $47f1: $b6
    ld [hl], a                                    ; $47f2: $77
    ret                                           ; $47f3: $c9


SoundEngine_UpdateFrequencyFromPitchBase::
    call SoundEngine_CheckPitchOffsetGateAndComputeOffset; $47f4: $cd $27 $48
    jr c, .RecomputeFrequencyFromPitchBaseAndVoiceControl; $47f7: $38 $06

    ld a, [rSoundCurrentVoiceUpdateFlags]         ; $47f9: $fa $07 $dd
    and $08                                       ; $47fc: $e6 $08
    ret z                                         ; $47fe: $c8

.RecomputeFrequencyFromPitchBaseAndVoiceControl:
    ld e, l                                       ; $47ff: $5d
    ld d, h                                       ; $4800: $54
    ld hl, rSoundVoicePitchBaseTable              ; $4801: $21 $10 $de
    ld a, c                                       ; $4804: $79
    add a                                         ; $4805: $87
    add l                                         ; $4806: $85
    ld l, a                                       ; $4807: $6f
    ld a, [hl+]                                   ; $4808: $2a
    ld h, [hl]                                    ; $4809: $66
    ld l, a                                       ; $480a: $6f
    add hl, de                                    ; $480b: $19
    push hl                                       ; $480c: $e5
    ld hl, rSoundVoiceControlTable                ; $480d: $21 $30 $dd
    ld a, c                                       ; $4810: $79
    add a                                         ; $4811: $87
    add l                                         ; $4812: $85
    ld l, a                                       ; $4813: $6f
    inc hl                                        ; $4814: $23
    ld a, [hl]                                    ; $4815: $7e
    pop hl                                        ; $4816: $e1
    call SoundEngine_ComputeFrequencyPairFromPitchControl; $4817: $cd $f0 $49
    ld d, h                                       ; $481a: $54
    ld e, l                                       ; $481b: $5d
    ld hl, rSoundVoiceFrequencyTable              ; $481c: $21 $d0 $dd
    ld a, c                                       ; $481f: $79
    add a                                         ; $4820: $87
    add l                                         ; $4821: $85
    ld l, a                                       ; $4822: $6f
    ld [hl], e                                    ; $4823: $73
    inc hl                                        ; $4824: $23
    ld [hl], d                                    ; $4825: $72
    ret                                           ; $4826: $c9


SoundEngine_CheckPitchOffsetGateAndComputeOffset::
    push bc                                       ; $4827: $c5
    ld hl, rSoundVoicePitchOffsetGateTable        ; $4828: $21 $00 $de
    ld a, c                                       ; $482b: $79
    add a                                         ; $482c: $87
    add l                                         ; $482d: $85
    ld l, a                                       ; $482e: $6f
    ld a, [hl]                                    ; $482f: $7e
    or a                                          ; $4830: $b7
    jr z, .ReturnNoOffsetForPitchGate             ; $4831: $28 $07

    push hl                                       ; $4833: $e5
    inc hl                                        ; $4834: $23
    ld a, [hl]                                    ; $4835: $7e
    cp b                                          ; $4836: $b8
    jr c, .ComputePitchOffsetUsingStepPhase       ; $4837: $38 $07

    pop hl                                        ; $4839: $e1

.ReturnNoOffsetForPitchGate:
    ld hl, $0000                                  ; $483a: $21 $00 $00
    pop bc                                        ; $483d: $c1
    or a                                          ; $483e: $b7
    ret                                           ; $483f: $c9


.ComputePitchOffsetUsingStepPhase:
    ld hl, rSoundVoicePitchStepPhaseTable         ; $4840: $21 $f0 $dd
    ld a, c                                       ; $4843: $79
    add a                                         ; $4844: $87
    add l                                         ; $4845: $85
    ld l, a                                       ; $4846: $6f
    ld a, [hl+]                                   ; $4847: $2a
    add [hl]                                      ; $4848: $86
    ld [hl], a                                    ; $4849: $77
    ld c, a                                       ; $484a: $4f
    sla a                                         ; $484b: $cb $27
    sla a                                         ; $484d: $cb $27
    jr nc, .ScaleOffsetByLookupEntry              ; $484f: $30 $01

    cpl                                           ; $4851: $2f

.ScaleOffsetByLookupEntry:
    pop hl                                        ; $4852: $e1
    ld l, [hl]                                    ; $4853: $6e
    ld h, $00                                     ; $4854: $26 $00
    call SoundEngine_MultiplyHLByA_8Bit           ; $4856: $cd $8d $48
    ld a, l                                       ; $4859: $7d
    srl h                                         ; $485a: $cb $3c
    rra                                           ; $485c: $1f
    srl h                                         ; $485d: $cb $3c
    rra                                           ; $485f: $1f
    srl h                                         ; $4860: $cb $3c
    rra                                           ; $4862: $1f
    srl h                                         ; $4863: $cb $3c
    rra                                           ; $4865: $1f
    ld l, a                                       ; $4866: $6f
    sla c                                         ; $4867: $cb $21
    jr nc, .ReturnOffsetWithCarrySet              ; $4869: $30 $07

    ld a, h                                       ; $486b: $7c
    scf                                           ; $486c: $37
    ld h, a                                       ; $486d: $67
    ld a, l                                       ; $486e: $7d
    scf                                           ; $486f: $37
    ld l, a                                       ; $4870: $6f
    inc hl                                        ; $4871: $23

.ReturnOffsetWithCarrySet:
    pop bc                                        ; $4872: $c1
    scf                                           ; $4873: $37
    ret                                           ; $4874: $c9


SoundEngine_DivideHLByA_8Step::
    push bc                                       ; $4875: $c5
    push de                                       ; $4876: $d5
    ld e, a                                       ; $4877: $5f
    ld b, $08                                     ; $4878: $06 $08

.DivisionBitLoop:
    add hl, hl                                    ; $487a: $29
    ld a, h                                       ; $487b: $7c
    jr c, .SubtractDivisorAndSetQuotientBit       ; $487c: $38 $03

    cp e                                          ; $487e: $bb
    jr c, .AdvanceDivisionLoop                    ; $487f: $38 $03

.SubtractDivisorAndSetQuotientBit:
    sub e                                         ; $4881: $93
    ld h, a                                       ; $4882: $67
    inc hl                                        ; $4883: $23

.AdvanceDivisionLoop:
    dec b                                         ; $4884: $05
    jr nz, .DivisionBitLoop                       ; $4885: $20 $f3

    ld a, l                                       ; $4887: $7d
    ld l, h                                       ; $4888: $6c
    ld h, a                                       ; $4889: $67
    pop de                                        ; $488a: $d1
    pop bc                                        ; $488b: $c1
    ret                                           ; $488c: $c9


SoundEngine_MultiplyHLByA_8Bit::
    push bc                                       ; $488d: $c5
    push de                                       ; $488e: $d5
    ld d, h                                       ; $488f: $54
    ld e, l                                       ; $4890: $5d
    ld hl, $0000                                  ; $4891: $21 $00 $00
    ld b, $08                                     ; $4894: $06 $08

.MultiplyBitLoop:
    rrca                                          ; $4896: $0f
    jr nc, .ShiftMultiplicandLeft                 ; $4897: $30 $01

    add hl, de                                    ; $4899: $19

.ShiftMultiplicandLeft:
    sla e                                         ; $489a: $cb $23
    rl d                                          ; $489c: $cb $12
    dec b                                         ; $489e: $05
    jr nz, .MultiplyBitLoop                       ; $489f: $20 $f5

    pop de                                        ; $48a1: $d1
    pop bc                                        ; $48a2: $c1
    ret                                           ; $48a3: $c9


SoundEngine_MultiplyLByALowNibble::
    ld h, a                                       ; $48a4: $67
    xor a                                         ; $48a5: $af
    srl h                                         ; $48a6: $cb $3c
    jr nc, .ProcessBit1Contribution               ; $48a8: $30 $01

    add l                                         ; $48aa: $85

.ProcessBit1Contribution:
    sla l                                         ; $48ab: $cb $25
    srl h                                         ; $48ad: $cb $3c
    jr nc, .ProcessBit2Contribution               ; $48af: $30 $01

    add l                                         ; $48b1: $85

.ProcessBit2Contribution:
    sla l                                         ; $48b2: $cb $25
    srl h                                         ; $48b4: $cb $3c
    jr nc, .ProcessBit3ContributionAndReturn      ; $48b6: $30 $01

    add l                                         ; $48b8: $85

.ProcessBit3ContributionAndReturn:
    sla l                                         ; $48b9: $cb $25
    srl h                                         ; $48bb: $cb $3c
    ret nc                                        ; $48bd: $d0

    add l                                         ; $48be: $85
    ret                                           ; $48bf: $c9


SoundEngine_FillFourWordEntriesWithDEAtHL::
    push bc                                       ; $48c0: $c5
    ld b, $04                                     ; $48c1: $06 $04

.WriteDEWordEntryLoop:
    ld [hl], d                                    ; $48c3: $72
    inc hl                                        ; $48c4: $23
    ld [hl], e                                    ; $48c5: $73
    inc hl                                        ; $48c6: $23
    dec b                                         ; $48c7: $05
    jr nz, .WriteDEWordEntryLoop                  ; $48c8: $20 $f9

    pop bc                                        ; $48ca: $c1
    ret                                           ; $48cb: $c9


CopyIndexed8ByteRowToHLFromDE::
    add a                                         ; $48cc: $87
    add a                                         ; $48cd: $87
    add a                                         ; $48ce: $87
    add e                                         ; $48cf: $83
    ld e, a                                       ; $48d0: $5f
    ld a, d                                       ; $48d1: $7a
    adc $00                                       ; $48d2: $ce $00
    ld d, a                                       ; $48d4: $57
    ld b, $08                                     ; $48d5: $06 $08

.Copy8BytesLoop:
    ld a, [de]                                    ; $48d7: $1a
    inc de                                        ; $48d8: $13
    ld [hl+], a                                   ; $48d9: $22
    dec b                                         ; $48da: $05
    jr nz, .Copy8BytesLoop                        ; $48db: $20 $fa

    ret                                           ; $48dd: $c9


SoundEngine_CheckVoiceMuteGate::
    push af                                       ; $48de: $f5
    ld a, [rSoundCurrentVoiceMuteMask]            ; $48df: $fa $05 $dd
    or a                                          ; $48e2: $b7
    jr nz, .ReturnCarryIfVoiceMuteGateSet         ; $48e3: $20 $03

    pop af                                        ; $48e5: $f1
    or a                                          ; $48e6: $b7
    ret                                           ; $48e7: $c9


.ReturnCarryIfVoiceMuteGateSet:
    pop af                                        ; $48e8: $f1
    scf                                           ; $48e9: $37
    ret                                           ; $48ea: $c9


SoundEngine_UpdateVoicePanningNR51::
    push bc                                       ; $48eb: $c5
    push hl                                       ; $48ec: $e5
    push af                                       ; $48ed: $f5
    ld a, c                                       ; $48ee: $79
    and $03                                       ; $48ef: $e6 $03
    ld c, a                                       ; $48f1: $4f
    ld hl, SoundEngine_NR51ClearMaskByChannelTable; $48f2: $21 $44 $41
    add l                                         ; $48f5: $85
    ld l, a                                       ; $48f6: $6f
    ld b, [hl]                                    ; $48f7: $46
    ldh a, [rNR51]                                ; $48f8: $f0 $25
    and b                                         ; $48fa: $a0
    ld b, a                                       ; $48fb: $47
    pop af                                        ; $48fc: $f1
    and $03                                       ; $48fd: $e6 $03
    ld hl, SoundEngine_NR51RoutingPatternTable    ; $48ff: $21 $48 $41
    add l                                         ; $4902: $85
    ld l, a                                       ; $4903: $6f
    ld a, [hl]                                    ; $4904: $7e
    inc c                                         ; $4905: $0c

.RotateNR51MaskLoop:
    dec c                                         ; $4906: $0d
    jr z, .WriteNR51AndReturn                     ; $4907: $28 $03

    rlca                                          ; $4909: $07
    jr .RotateNR51MaskLoop                        ; $490a: $18 $fa

.WriteNR51AndReturn:
    or b                                          ; $490c: $b0
    ldh [rNR51], a                                ; $490d: $e0 $25
    pop hl                                        ; $490f: $e1
    pop bc                                        ; $4910: $c1
    ret                                           ; $4911: $c9


SoundEngine_TriggerVoiceChannel::
    push bc                                       ; $4912: $c5
    push hl                                       ; $4913: $e5
    ld a, c                                       ; $4914: $79
    and $03                                       ; $4915: $e6 $03
    ld b, a                                       ; $4917: $47
    ld hl, SoundEngine_NRVolumeRegisterAddressTable; $4918: $21 $3c $41
    add l                                         ; $491b: $85
    ld l, a                                       ; $491c: $6f
    ld c, [hl]                                    ; $491d: $4e
    ld a, b                                       ; $491e: $78
    cp $02                                        ; $491f: $fe $02
    jr nz, .TriggerPulseOrNoisePath               ; $4921: $20 $0a

    xor a                                         ; $4923: $af
    ldh [c], a                                    ; $4924: $e2
    ldh [rNR30], a                                ; $4925: $e0 $1a
    ld a, $80                                     ; $4927: $3e $80
    ldh [rNR30], a                                ; $4929: $e0 $1a
    jr .ReturnFromVoiceTrigger                    ; $492b: $18 $0e

.TriggerPulseOrNoisePath:
    ld a, $08                                     ; $492d: $3e $08
    ldh [c], a                                    ; $492f: $e2
    ld hl, SoundEngine_NRFrequencyRegisterAddressTable; $4930: $21 $34 $41
    ld a, b                                       ; $4933: $78
    add l                                         ; $4934: $85
    ld l, a                                       ; $4935: $6f
    ld c, [hl]                                    ; $4936: $4e
    inc c                                         ; $4937: $0c
    ld a, $80                                     ; $4938: $3e $80
    ldh [c], a                                    ; $493a: $e2

.ReturnFromVoiceTrigger:
    pop hl                                        ; $493b: $e1
    pop bc                                        ; $493c: $c1
    ret                                           ; $493d: $c9


SoundEngine_WriteVoiceVolumeNibble::
    push bc                                       ; $493e: $c5
    push hl                                       ; $493f: $e5
    and $0f                                       ; $4940: $e6 $0f
    ld b, a                                       ; $4942: $47
    ld a, c                                       ; $4943: $79
    and $03                                       ; $4944: $e6 $03
    ld c, a                                       ; $4946: $4f
    cp $02                                        ; $4947: $fe $02
    jr nz, .SelectVolumeTargetRegister            ; $4949: $20 $0b

    ld a, b                                       ; $494b: $78
    srl a                                         ; $494c: $cb $3f
    srl a                                         ; $494e: $cb $3f
    ld hl, SoundEngine_CH3OutputLevelMapTable     ; $4950: $21 $40 $41
    add l                                         ; $4953: $85
    ld l, a                                       ; $4954: $6f
    ld b, [hl]                                    ; $4955: $46

.SelectVolumeTargetRegister:
    ld hl, SoundEngine_NRVolumeRegisterAddressTable; $4956: $21 $3c $41
    ld a, c                                       ; $4959: $79
    add l                                         ; $495a: $85
    ld l, a                                       ; $495b: $6f
    ld c, [hl]                                    ; $495c: $4e
    ld a, b                                       ; $495d: $78
    swap a                                        ; $495e: $cb $37
    ldh [c], a                                    ; $4960: $e2
    pop hl                                        ; $4961: $e1
    pop bc                                        ; $4962: $c1
    ret                                           ; $4963: $c9


SoundEngine_WriteVoiceTimbreOrWave::
    push bc                                       ; $4964: $c5
    push hl                                       ; $4965: $e5
    ld b, a                                       ; $4966: $47
    ld a, c                                       ; $4967: $79
    and $03                                       ; $4968: $e6 $03
    cp $03                                        ; $496a: $fe $03
    jr z, .ReturnFromWriteTimbre                  ; $496c: $28 $14

    cp $02                                        ; $496e: $fe $02
    jr nz, .WritePulseDutyFromNibble              ; $4970: $20 $06

    ld a, b                                       ; $4972: $78
    call SoundEngine_LoadWaveRAMPresetByIndex     ; $4973: $cd $a9 $49
    jr .ReturnFromWriteTimbre                     ; $4976: $18 $0a

.WritePulseDutyFromNibble:
    ld hl, SoundEngine_NRTimbreRegisterAddressTable; $4978: $21 $38 $41
    add l                                         ; $497b: $85
    ld l, a                                       ; $497c: $6f
    ld c, [hl]                                    ; $497d: $4e
    ld a, b                                       ; $497e: $78
    rrca                                          ; $497f: $0f
    rrca                                          ; $4980: $0f
    ldh [c], a                                    ; $4981: $e2

.ReturnFromWriteTimbre:
    pop hl                                        ; $4982: $e1
    pop bc                                        ; $4983: $c1
    ret                                           ; $4984: $c9


SoundEngine_WriteVoiceFrequencyPair::
    push bc                                       ; $4985: $c5
    ld a, c                                       ; $4986: $79
    and $03                                       ; $4987: $e6 $03
    push hl                                       ; $4989: $e5
    cp $02                                        ; $498a: $fe $02
    jr nz, .SelectFrequencyTargetRegisters        ; $498c: $20 $0d

    rlc h                                         ; $498e: $cb $04
    jr nc, .SelectFrequencyTargetRegisters        ; $4990: $30 $09

    push af                                       ; $4992: $f5
    xor a                                         ; $4993: $af
    ldh [rNR30], a                                ; $4994: $e0 $1a
    ld a, $80                                     ; $4996: $3e $80
    ldh [rNR30], a                                ; $4998: $e0 $1a
    pop af                                        ; $499a: $f1

.SelectFrequencyTargetRegisters:
    ld hl, SoundEngine_NRFrequencyRegisterAddressTable; $499b: $21 $34 $41
    add l                                         ; $499e: $85
    ld l, a                                       ; $499f: $6f
    ld c, [hl]                                    ; $49a0: $4e
    pop hl                                        ; $49a1: $e1
    ld a, l                                       ; $49a2: $7d
    ldh [c], a                                    ; $49a3: $e2
    inc c                                         ; $49a4: $0c
    ld a, h                                       ; $49a5: $7c
    ldh [c], a                                    ; $49a6: $e2
    pop bc                                        ; $49a7: $c1
    ret                                           ; $49a8: $c9


SoundEngine_LoadWaveRAMPresetByIndex::
    push bc                                       ; $49a9: $c5
    push hl                                       ; $49aa: $e5
    add a                                         ; $49ab: $87
    ld hl, SoundEngine_WaveRAMPresetPointerTable  ; $49ac: $21 $5c $41
    add l                                         ; $49af: $85
    ld l, a                                       ; $49b0: $6f
    ld a, [hl+]                                   ; $49b1: $2a
    ld h, [hl]                                    ; $49b2: $66
    ld l, a                                       ; $49b3: $6f
    ld c, $30                                     ; $49b4: $0e $30
    xor a                                         ; $49b6: $af
    ldh [rNR30], a                                ; $49b7: $e0 $1a
    ld a, [hl+]                                   ; $49b9: $2a
    ldh [c], a                                    ; $49ba: $e2
    inc c                                         ; $49bb: $0c
    ld a, [hl+]                                   ; $49bc: $2a
    ldh [c], a                                    ; $49bd: $e2
    inc c                                         ; $49be: $0c
    ld a, [hl+]                                   ; $49bf: $2a
    ldh [c], a                                    ; $49c0: $e2
    inc c                                         ; $49c1: $0c
    ld a, [hl+]                                   ; $49c2: $2a
    ldh [c], a                                    ; $49c3: $e2
    inc c                                         ; $49c4: $0c
    ld a, [hl+]                                   ; $49c5: $2a
    ldh [c], a                                    ; $49c6: $e2
    inc c                                         ; $49c7: $0c
    ld a, [hl+]                                   ; $49c8: $2a
    ldh [c], a                                    ; $49c9: $e2
    inc c                                         ; $49ca: $0c
    ld a, [hl+]                                   ; $49cb: $2a
    ldh [c], a                                    ; $49cc: $e2
    inc c                                         ; $49cd: $0c
    ld a, [hl+]                                   ; $49ce: $2a
    ldh [c], a                                    ; $49cf: $e2
    inc c                                         ; $49d0: $0c
    ld a, [hl+]                                   ; $49d1: $2a
    ldh [c], a                                    ; $49d2: $e2
    inc c                                         ; $49d3: $0c
    ld a, [hl+]                                   ; $49d4: $2a
    ldh [c], a                                    ; $49d5: $e2
    inc c                                         ; $49d6: $0c
    ld a, [hl+]                                   ; $49d7: $2a
    ldh [c], a                                    ; $49d8: $e2
    inc c                                         ; $49d9: $0c
    ld a, [hl+]                                   ; $49da: $2a
    ldh [c], a                                    ; $49db: $e2
    inc c                                         ; $49dc: $0c
    ld a, [hl+]                                   ; $49dd: $2a
    ldh [c], a                                    ; $49de: $e2
    inc c                                         ; $49df: $0c
    ld a, [hl+]                                   ; $49e0: $2a
    ldh [c], a                                    ; $49e1: $e2
    inc c                                         ; $49e2: $0c
    ld a, [hl+]                                   ; $49e3: $2a
    ldh [c], a                                    ; $49e4: $e2
    inc c                                         ; $49e5: $0c
    ld a, [hl+]                                   ; $49e6: $2a
    ldh [c], a                                    ; $49e7: $e2
    inc c                                         ; $49e8: $0c
    ld a, $80                                     ; $49e9: $3e $80
    ldh [rNR30], a                                ; $49eb: $e0 $1a
    pop hl                                        ; $49ed: $e1
    pop bc                                        ; $49ee: $c1
    ret                                           ; $49ef: $c9


SoundEngine_ComputeFrequencyPairFromPitchControl::
    push bc                                       ; $49f0: $c5
    ld c, l                                       ; $49f1: $4d
    add h                                         ; $49f2: $84
    ld b, $00                                     ; $49f3: $06 $00

.ComputeOctaveAndSemitoneLoop:
    sub $0c                                       ; $49f5: $d6 $0c
    inc b                                         ; $49f7: $04
    jr nc, .ComputeOctaveAndSemitoneLoop          ; $49f8: $30 $fb

    dec b                                         ; $49fa: $05
    add $0c                                       ; $49fb: $c6 $0c
    jr .LookupSemitoneAndApplyOctaveShift         ; $49fd: $18 $1d

    push bc                                       ; $49ff: $c5
    ld b, h                                       ; $4a00: $44
    ld c, l                                       ; $4a01: $4d
    push af                                       ; $4a02: $f5
    swap a                                        ; $4a03: $cb $37
    and $0f                                       ; $4a05: $e6 $0f
    ld l, $0c                                     ; $4a07: $2e $0c
    call SoundEngine_MultiplyLByALowNibble        ; $4a09: $cd $a4 $48
    ld l, a                                       ; $4a0c: $6f
    pop af                                        ; $4a0d: $f1
    and $0f                                       ; $4a0e: $e6 $0f
    add l                                         ; $4a10: $85
    add b                                         ; $4a11: $80
    ld h, $00                                     ; $4a12: $26 $00
    ld l, a                                       ; $4a14: $6f
    ld a, $0c                                     ; $4a15: $3e $0c
    call SoundEngine_DivideHLByA_8Step            ; $4a17: $cd $75 $48
    ld b, h                                       ; $4a1a: $44
    ld a, l                                       ; $4a1b: $7d

.LookupSemitoneAndApplyOctaveShift:
    add a                                         ; $4a1c: $87
    push af                                       ; $4a1d: $f5
    ld hl, SoundEngine_PitchBendSlopeWordTable    ; $4a1e: $21 $1c $41
    add l                                         ; $4a21: $85
    ld l, a                                       ; $4a22: $6f
    ld a, [hl+]                                   ; $4a23: $2a
    ld h, [hl]                                    ; $4a24: $66
    ld l, a                                       ; $4a25: $6f
    ld a, c                                       ; $4a26: $79
    call SoundEngine_MultiplyHLByA_8Bit           ; $4a27: $cd $8d $48
    ld c, h                                       ; $4a2a: $4c
    pop af                                        ; $4a2b: $f1
    ld hl, SoundEngine_SemitoneFrequencyWordTable ; $4a2c: $21 $02 $41
    add l                                         ; $4a2f: $85
    ld l, a                                       ; $4a30: $6f
    ld a, [hl+]                                   ; $4a31: $2a
    ld h, [hl]                                    ; $4a32: $66
    ld l, a                                       ; $4a33: $6f
    ld a, c                                       ; $4a34: $79
    add l                                         ; $4a35: $85
    ld l, a                                       ; $4a36: $6f
    ld a, h                                       ; $4a37: $7c
    adc $00                                       ; $4a38: $ce $00
    ld h, a                                       ; $4a3a: $67
    ld a, b                                       ; $4a3b: $78
    or a                                          ; $4a3c: $b7
    jr z, .ReturnFromFrequencyPairCompute         ; $4a3d: $28 $0c

    ld a, h                                       ; $4a3f: $7c
    ld h, $04                                     ; $4a40: $26 $04

.ApplyOctaveShiftLoop:
    srl a                                         ; $4a42: $cb $3f
    rr l                                          ; $4a44: $cb $1d
    or h                                          ; $4a46: $b4
    dec b                                         ; $4a47: $05
    jr nz, .ApplyOctaveShiftLoop                  ; $4a48: $20 $f8

    ld h, a                                       ; $4a4a: $67

.ReturnFromFrequencyPairCompute:
    pop bc                                        ; $4a4b: $c1
    ret                                           ; $4a4c: $c9


SoundEngine_SendDeferredSGBPacketWithClearedPayloadTail::
    ld a, $41                                     ; $4a4d: $3e $41
    ld [rSoundDeferredSGBPacketHeader], a         ; $4a4f: $ea $0f $dd
    ld b, $0b                                     ; $4a52: $06 $0b
    ld hl, $dd14                                  ; $4a54: $21 $14 $dd
    xor a                                         ; $4a57: $af

.ClearDeferredPacketPayloadLoop:
    ld [hl+], a                                   ; $4a58: $22
    dec b                                         ; $4a59: $05
    jr nz, .ClearDeferredPacketPayloadLoop        ; $4a5a: $20 $fc

    ld hl, rSoundDeferredSGBPacketHeader          ; $4a5c: $21 $0f $dd
    call SoundEngine_SendSGBPacketStreamFromHL    ; $4a5f: $cd $63 $4a
    ret                                           ; $4a62: $c9


SoundEngine_SendSGBPacketStreamFromHL::
    ld a, [hl]                                    ; $4a63: $7e
    and $07                                       ; $4a64: $e6 $07
    ret z                                         ; $4a66: $c8

    ld c, $00                                     ; $4a67: $0e $00

.SendNextSGBPacket:
    push af                                       ; $4a69: $f5
    ld a, $30                                     ; $4a6a: $3e $30
    ldh [c], a                                    ; $4a6c: $e2
    ld a, $00                                     ; $4a6d: $3e $00
    ldh [c], a                                    ; $4a6f: $e2
    ld a, $30                                     ; $4a70: $3e $30
    ldh [c], a                                    ; $4a72: $e2
    ld d, $10                                     ; $4a73: $16 $10

.SendPacketByteLoop:
    ld b, [hl]                                    ; $4a75: $46
    inc hl                                        ; $4a76: $23
    ld e, $08                                     ; $4a77: $1e $08

.SendPacketBitLoop:
    ld a, $10                                     ; $4a79: $3e $10
    rrc b                                         ; $4a7b: $cb $08
    jr c, .ClockOutCurrentSGBBit                  ; $4a7d: $38 $02

    ld a, $20                                     ; $4a7f: $3e $20

.ClockOutCurrentSGBBit:
    ldh [c], a                                    ; $4a81: $e2
    ld a, $30                                     ; $4a82: $3e $30
    ldh [c], a                                    ; $4a84: $e2
    dec e                                         ; $4a85: $1d
    jr nz, .SendPacketBitLoop                     ; $4a86: $20 $f1

    dec d                                         ; $4a88: $15
    jr nz, .SendPacketByteLoop                    ; $4a89: $20 $ea

    ld a, $20                                     ; $4a8b: $3e $20
    ldh [c], a                                    ; $4a8d: $e2
    ld a, $30                                     ; $4a8e: $3e $30
    ldh [c], a                                    ; $4a90: $e2
    pop af                                        ; $4a91: $f1
    dec a                                         ; $4a92: $3d
    ret z                                         ; $4a93: $c8

    call SoundEngine_BusyWaitDelayForSGBPacketTiming; $4a94: $cd $99 $4a
    jr .SendNextSGBPacket                         ; $4a97: $18 $d0

SoundEngine_BusyWaitDelayForSGBPacketTiming::
    push hl                                       ; $4a99: $e5
    ld hl, $1b58                                  ; $4a9a: $21 $58 $1b

.DelayLoop:
    nop                                           ; $4a9d: $00
    nop                                           ; $4a9e: $00
    nop                                           ; $4a9f: $00
    dec hl                                        ; $4aa0: $2b
    ld a, h                                       ; $4aa1: $7c
    or l                                          ; $4aa2: $b5
    jr nz, .DelayLoop                             ; $4aa3: $20 $f8

    pop hl                                        ; $4aa5: $e1
    ret                                           ; $4aa6: $c9


SCD_Cmd01_02_VoiceCommandStreamPointerRow_ParamFF::
    db $af, $4a
    db $af, $4a
    db $af, $4a
    db $af, $4a

SCD_Cmd01_02_ParamFF_CommandStream_Shared::
    db $ef

SCD_Cmd01_VoiceCommandStreamPointerRow_Param00_DeactivateBGM::
    db $6f, $6d
    db $6f, $6d
    db $6f, $6d
    db $6f, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param01_PuzzleBGM_2::
    db $58, $4b
    db $9c, $4c
    db $20, $4e
    db $cf, $4e

SCD_Cmd01_VoiceCommandStreamPointerRow_Param02_HowToPlay_PuzzleBGM_5::
    db $c0, $50
    db $a3, $51
    db $a3, $52
    db $36, $53

SCD_Cmd01_VoiceCommandStreamPointerRow_Param03_PuzzleBGM_4::
    db $46, $54
    db $fc, $54
    db $a2, $55
    db $6f, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param04_EasyPicross_KinokoCoursePuzzleSelectScreenBGM::
    db $46, $56
    db $84, $56
    db $ce, $56
    db $f5, $56

SCD_Cmd01_VoiceCommandStreamPointerRow_Param05_PuzzleBGM_1::
    db $b2, $59
    db $9d, $58
    db $3e, $57
    db $d7, $5a

SCD_Cmd01_VoiceCommandStreamPointerRow_Param06_TimeTrialUnlockedBGM::
    db $bf, $5b
    db $1a, $5c
    db $79, $5c
    db $d7, $5c

SCD_Cmd01_VoiceCommandStreamPointerRow_Param07_EasyPicross_KinokoCourseAllPuzzlesSolvedJingle::
    db $49, $5d
    db $81, $5d
    db $db, $5d
    db $06, $5e

SCD_Cmd01_VoiceCommandStreamPointerRow_Param08_GameOverJingle::
    db $24, $5e
    db $4a, $5e
    db $6c, $5e
    db $6f, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param09_PuzzleCompletedBGM::
    db $8f, $5e
    db $f9, $5e
    db $10, $5f
    db $6f, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param0A_TitleScreenBGM::
    db $23, $5f
    db $00, $60
    db $35, $61
    db $d2, $61

SCD_Cmd01_VoiceCommandStreamPointerRow_Param0B_PuzzleBGM_3::
    db $76, $62
    db $b1, $63
    db $18, $66
    db $6f, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param0C_TimeTrialRankingScreenBGM_Unused::
    db $b3, $67
    db $d4, $67
    db $6f, $6d
    db $6f, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param0D_DataSelect_GameSelectScreenBGM::
    db $f2, $67
    db $57, $68
    db $a5, $68
    db $6f, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param0E_CourseSelectScreenBGM::
    db $00, $69
    db $26, $69
    db $4a, $69
    db $6f, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param0F_TimeTrialRankingScreenBGM::
    db $63, $69
    db $c0, $69
    db $2a, $6a
    db $6f, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param10_StarCoursePuzzleSelectScreenBGM::
    db $40, $6a
    db $0f, $6b
    db $d1, $6b
    db $6f, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param11_Unused::
    db $8c, $6c
    db $aa, $6c
    db $cd, $6c
    db $6f, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param12_PuzzleClearJingle::
    db $e6, $6c
    db $01, $6d
    db $1d, $6d
    db $6f, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param13_Unused::
    db $31, $6d
    db $47, $6d
    db $5e, $6d
    db $6f, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param14_Unused::
    db $6f, $6d
    db $6f, $6d
    db $6f, $6d
    db $df, $6d

SCD_Cmd01_Param01_CommandStream_Voice1_Entry::
    db $f9, $90, $f5, $10, $10, $08, $e3, $fb, $33, $f0, $23, $04, $00, $fa, $43

SCD_Cmd01_Param01_CommandStream_Voice1_LoopBody01::
    db $f7, $07, $fe, $62, $4c, $f5, $10, $10, $08, $f7, $07, $fb, $33, $fa, $43, $fe
    db $62, $4c, $f5, $10, $10, $08, $f7, $07, $fb, $33, $fa, $43, $ea, $9a, $9a, $e9
    db $0a, $0a, $ea, $78, $7a, $e9, $0a, $ea, $b5, $e9, $0a, $ea, $9a, $9a, $e9, $0a
    db $2a, $fa, $73, $48, $55, $48, $2a, $45, $2a, $fa, $53, $0a, $da, $ea, $9a, $e9
    db $0a, $fa, $73, $ea, $b8, $e9, $05, $28, $0a, $ea, $95, $e9, $0a, $fa, $53, $4a
    db $4a, $0a, $ea, $9a, $e9, $48, $4a, $25, $cd, $cd, $dd, $fe, $62, $4c, $f5, $10
    db $10, $08, $fb, $33, $fa, $43, $f7, $07, $78, $f7, $06, $ea, $75, $e9, $78, $ea
    db $75, $e9, $78, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $ea
    db $75, $e9, $78, $f7, $07, $95, $78, $55, $48, $f7, $06, $ea, $75, $e9, $78, $f7
    db $07, $0a, $f7, $06, $ea, $75, $f7, $07, $98, $f7, $06, $75, $e9, $f7, $07, $08
    db $08, $ea, $f7, $06, $75, $e9, $f7, $07, $2a, $05, $28, $ea, $f7, $06, $75, $e9
    db $f7, $07, $48, $f7, $06, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $ea, $75, $e9
    db $78, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $f7, $07, $55
    db $48, $25, $48, $f7, $06, $ea, $75, $e9, $f7, $07, $58, $f7, $06, $ea, $75, $e9
    db $f7, $07, $78, $f7, $06, $ea, $75, $e9, $f7, $07, $98, $f7, $06, $ea, $75, $e9
    db $e9, $f7, $07, $08, $0a, $ea, $b5, $cd, $ee, $67, $4b

SCD_Cmd01_Param01_CommandStream_Voice1_CallTarget01::
    db $0a, $da, $4a, $da, $28, $2a, $5a, $45, $5a, $7a, $7a, $4a, $0a, $28, $2a, $ea
    db $7b, $7a, $e9, $0a, $da, $4a, $da, $28, $2a, $5a, $45, $5a, $7a, $7a, $fa, $73
    db $48, $05, $28, $fa, $53, $05, $ca, $f7, $05, $f5, $01, $28, $64, $e9, $fb, $22
    db $75, $d8, $ea, $ea, $fb, $11, $7a, $da, $e9, $ef

SCD_Cmd01_Param01_CommandStream_Voice2_Entry::
    db $f9, $90, $e3, $f7, $07, $fa, $43

SCD_Cmd01_Param01_CommandStream_Voice2_LoopBody01::
    db $f7, $07, $f0, $20, $08, $00, $fb, $22, $f4, $00, $f5, $0a, $14, $03, $fb, $22
    db $fe, $d8, $4d, $f7, $07, $f5, $0a, $14, $03, $fb, $22, $fe, $d8, $4d, $f7, $07
    db $f5, $0a, $14, $03, $fb, $22, $08, $ea, $05, $e9, $08, $ea, $05, $e9, $08, $ea
    db $05, $e9, $08, $ea, $05, $e9, $08, $ea, $05, $e9, $08, $ea, $05, $e9, $08, $ea
    db $85, $98, $b5, $e9, $08, $ea, $05, $98, $05, $b8, $05, $e9, $08, $ea, $05, $e9
    db $48, $ea, $45, $e9, $48, $2a, $ea, $45, $e9, $4a, $08, $ea, $05, $e9, $08, $ea
    db $05, $e9, $08, $ea, $05, $e9, $08, $ea, $05, $e9, $08, $ea, $05, $e9, $08, $ea
    db $05, $05, $45, $95, $e9, $05, $45, $75, $98, $ea, $95, $e9, $98, $ea, $95, $e9
    db $98, $ea, $95, $e9, $98, $ea, $95, $e9, $9a, $d8, $b5, $cd, $dd, $dd, $fb, $22
    db $fe, $d8, $4d, $f5, $0a, $14, $03, $fb, $22, $f4, $28, $f0, $20, $04, $00, $f7
    db $07, $d8, $78, $f7, $05, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $ea, $75, $e9
    db $78, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $f7, $07, $95
    db $78, $55, $48, $f7, $05, $ea, $75, $e9, $78, $f7, $07, $0a, $f7, $05, $ea, $75
    db $f7, $07, $98, $f7, $05, $75, $e9, $f7, $07, $08, $08, $ea, $f7, $05, $75, $e9
    db $f7, $07, $2a, $05, $28, $ea, $f7, $05, $75, $e9, $f7, $07, $48, $f7, $05, $ea
    db $75, $e9, $78, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $ea
    db $75, $e9, $78, $ea, $75, $e9, $78, $f7, $07, $55, $48, $25, $48, $f7, $05, $ea
    db $75, $e9, $f7, $07, $58, $f7, $05, $ea, $75, $e9, $f7, $07, $78, $f7, $05, $ea
    db $75, $e9, $f7, $07, $98, $f7, $05, $ea, $75, $e9, $e9, $f7, $07, $08, $0a, $ea
    db $b5, $cb, $ee, $a3, $4c

SCD_Cmd01_Param01_CommandStream_Voice2_CallTarget01::
    db $d8, $05, $ea, $78, $e9, $05, $48, $45, $78, $75, $5a, $48, $2a, $0a, $45, $c8
    db $05, $ea, $78, $e9, $05, $48, $45, $78, $75, $9a, $78, $5a, $4a, $75, $c8, $05
    db $ea, $7a, $e9, $08, $05, $78, $75, $58, $4a, $5a, $6a, $75, $c8, $75, $48, $45
    db $58, $55, $78, $75, $e9, $0a, $f5, $01, $28, $64, $f7, $05, $fb, $22, $e9, $05
    db $d8, $ea, $fb, $11, $0a, $da, $ea, $ef

SCD_Cmd01_Param01_CommandStream_Voice3_Entry::
    db $f9, $90, $fa, $48, $f7, $0c, $fb, $33, $f0, $0d, $00, $00, $e2

SCD_Cmd01_Param01_CommandStream_Voice3_LoopBody01::
    db $fe, $9e, $4e, $fe, $9e, $4e, $ea, $5a, $da, $9a, $da, $7a, $d8, $e9, $0a, $ea
    db $75, $e9, $08, $ea, $75, $58, $55, $7a, $9a, $ba, $e9, $08, $ea, $75, $e9, $08
    db $ea, $aa, $75, $aa, $9a, $da, $5a, $da, $48, $4a, $9b, $7a, $28, $25, $4a, $5a
    db $6a, $7a, $d8, $7d, $c5, $c8, $75, $5a, $4a, $2a, $e9, $fe, $9e, $4e, $0a, $da
    db $ea, $9a, $da, $e9, $2a, $d8, $ea, $7a, $75, $ba, $e9, $0a, $0a, $ea, $9a, $9a
    db $e9, $28, $2a, $ea, $7b, $ba, $e9, $0a, $da, $ea, $9a, $da, $e9, $2a, $d8, $ea
    db $7a, $75, $ba, $e9, $0a, $0a, $ea, $9a, $9a, $58, $5a, $75, $cd, $e9, $ee, $2d
    db $4e

SCD_Cmd01_Param01_CommandStream_Voice3_CallTarget01::
    db $0a, $da, $ea, $9a, $da, $e9, $2a, $d8, $ea, $7a, $75, $ba, $e9, $0a, $2a, $3a
    db $4a, $75, $25, $ea, $95, $25, $cb, $75, $ba, $e9, $0a, $da, $ea, $9a, $da, $e9
    db $2a, $d8, $ea, $7a, $75, $ba, $e9, $08, $05, $ea, $9a, $aa, $ba, $e9, $0a, $df
    db $ef

SCD_Cmd01_Param01_CommandStream_Voice4_Entry::
    db $f7, $07, $fa, $40, $f9, $90, $fb, $11

SCD_Cmd01_Param01_CommandStream_Voice4_LoopBody01::
    db $fe, $1c, $50, $fe, $1c, $50, $fb, $11, $fa, $40, $fc, $10, $05, $d8, $05, $d5
    db $05, $fc, $40, $fb, $22, $05, $fb, $11, $d8, $fc, $10, $05, $d5, $05, $05, $d8
    db $05, $d5, $05, $fb, $22, $fc, $40, $05, $fb, $11, $d5, $fc, $10, $fa, $50, $05
    db $fa, $40, $05, $d5, $05, $05, $d8, $05, $d5, $05, $fb, $22, $fc, $40, $05, $fb
    db $11, $d8, $fc, $10, $05, $d5, $05, $d8, $05, $05, $d5, $fa, $80, $05, $fa, $40
    db $fc, $40, $fb, $22, $05, $fb, $11, $d5, $fc, $10, $05, $fa, $80, $0a, $fa, $40
    db $f1, $02, $05, $d8, $05, $d5, $05, $fc, $40, $fb, $22, $05, $fb, $11, $d8, $fc
    db $10, $05, $d5, $05, $f2, $05, $d5, $05, $05, $d8, $fc, $40, $fb, $22, $05, $fb
    db $11, $d8, $fc, $10, $05, $d5, $05, $05, $db, $05, $cd, $dd, $dd, $fe, $1c, $50
    db $fa, $40, $fc, $10, $05, $d8, $05, $d5, $05, $fc, $40, $fb, $22, $05, $fb, $11
    db $d8, $fc, $10, $05, $d5, $05, $fc, $10, $05, $d8, $05, $d5, $05, $fc, $40, $fb
    db $22, $05, $fb, $11, $d5, $fc, $10, $05, $05, $d5, $05, $fc, $10, $05, $d8, $05
    db $d5, $05, $fc, $40, $fb, $22, $05, $fb, $11, $d8, $fc, $10, $05, $d5, $05, $fc
    db $10, $05, $d8, $05, $d5, $05, $fc, $40, $fb, $22, $05, $fb, $11, $d5, $fc, $10
    db $fa, $50, $05, $fa, $40, $05, $d5, $05, $fa, $40, $fc, $10, $05, $d8, $05, $d5
    db $05, $fc, $40, $fb, $22, $05, $fb, $11, $d8, $fc, $10, $05, $d5, $05, $fc, $10
    db $05, $d8, $05, $d5, $05, $fc, $40, $fb, $22, $05, $fb, $11, $d5, $fc, $10, $05
    db $05, $d5, $05, $fc, $10, $05, $d8, $05, $d5, $05, $fc, $40, $fb, $22, $05, $fb
    db $11, $d5, $fc, $10, $fa, $50, $05, $fa, $40, $05, $d5, $05, $05, $d5, $05, $fc
    db $40, $fb, $22, $05, $fb, $11, $d5, $fc, $10, $fa, $80, $0a, $d5, $fa, $40, $05
    db $05, $05, $ee, $d7, $4e

SCD_Cmd01_Param01_CommandStream_Voice4_CallTarget01::
    db $fa, $40, $fc, $10, $05, $d8, $05, $d5, $05, $fc, $40, $fb, $22, $05, $fb, $11
    db $d8, $fc, $10, $05, $d5, $05, $fc, $10, $05, $d8, $05, $d5, $05, $fc, $40, $fb
    db $22, $05, $fb, $11, $d5, $fc, $10, $05, $05, $d5, $05, $fc, $10, $05, $d8, $05
    db $d5, $05, $fc, $40, $fb, $22, $05, $fb, $11, $d8, $fc, $10, $05, $d5, $05, $fc
    db $10, $05, $d8, $05, $d5, $05, $fc, $40, $fb, $22, $05, $fb, $11, $d5, $fc, $10
    db $fa, $50, $05, $fa, $40, $05, $d5, $05, $fa, $40, $fc, $10, $05, $d8, $05, $d5
    db $05, $fc, $40, $fb, $22, $05, $fb, $11, $d8, $fc, $10, $05, $d5, $05, $fc, $10
    db $05, $d8, $05, $d5, $05, $fc, $40, $fb, $22, $05, $fb, $11, $d5, $fc, $10, $05
    db $05, $d5, $05, $fc, $10, $05, $d8, $05, $d5, $05, $fc, $40, $fb, $22, $05, $fb
    db $11, $d5, $fc, $10, $fa, $50, $05, $fa, $40, $05, $d5, $05, $05, $de, $05, $05
    db $fa, $50, $05, $ef

SCD_Cmd01_Param02_CommandStream_Voice1_Entry::
    db $f9, $6c, $f5, $10, $10, $08, $e3, $fb, $33, $f0, $10, $04, $00, $fa, $43

SCD_Cmd01_Param02_CommandStream_Voice1_LoopBody01::
    db $f7, $07, $fe, $37, $51, $fe, $5d, $51, $d7, $57, $57, $27, $57, $d7, $77, $d7
    db $fe, $37, $51, $fe, $5d, $51, $e9, $d7, $07, $07, $07, $07, $dc, $f7, $06, $da
    db $2a, $ea, $aa, $7a, $e9, $2a, $ea, $aa, $7a, $e9, $2a, $0d, $5d, $ea, $ad, $d7
    db $97, $a7, $e9, $07, $d7, $fa, $73, $27, $fa, $43, $07, $ea, $a7, $e9, $fa, $73
    db $27, $fa, $43, $07, $ea, $a7, $e9, $07, $fa, $73, $07, $fa, $43, $57, $57, $57
    db $fa, $73, $57, $ea, $fa, $43, $a7, $a7, $a7, $e9, $0a, $ea, $9a, $5a, $e9, $0a
    db $ea, $bd, $cd, $cf, $da, $ee, $cf, $50

SCD_Cmd01_Param02_CommandStream_Voice1_CallTarget01::
    db $47, $57, $47, $57, $47, $57, $47, $57, $fa, $73, $97, $fa, $43, $77, $d7, $57
    db $57, $dc, $47, $57, $47, $57, $47, $57, $47, $57, $fa, $73, $97, $fa, $43, $77
    db $d7, $57, $77, $d7, $5a, $ef

SCD_Cmd01_Param02_CommandStream_Voice1_CallTarget02::
    db $4c, $47, $fa, $73, $47, $fa, $43, $57, $fa, $73, $47, $fa, $43, $07, $fa, $73
    db $2a, $4a, $5a, $7a, $fa, $43, $4c, $47, $fa, $73, $47, $fa, $43, $57, $fa, $73
    db $47, $fa, $43, $07, $2f, $fa, $73, $77, $57, $fa, $43, $4c, $47, $fa, $73, $47
    db $fa, $43, $57, $fa, $73, $47, $fa, $43, $07, $fa, $73, $2a, $4a, $5a, $e9, $0a
    db $fa, $43, $ea, $7d, $cd, $ef

SCD_Cmd01_Param02_CommandStream_Voice2_Entry::
    db $f9, $6c, $f5, $10, $10, $08, $e3, $fb, $21, $fa, $43, $f7, $07

SCD_Cmd01_Param02_CommandStream_Voice2_LoopBody01::
    db $f0, $20, $04, $00, $fe, $2a, $52, $fe, $50, $52, $d7, $27, $27, $ea, $a7, $e9
    db $27, $d7, $47, $d7, $fe, $2a, $52, $fe, $50, $52, $d7, $47, $47, $57, $77, $d7
    db $07, $d7, $f1, $08, $24, $ea, $a4, $74, $34, $e9, $f2, $f1, $04, $04, $ea, $94
    db $54, $24, $e9, $f2, $f1, $02, $24, $ea, $a4, $74, $24, $e9, $f2, $f1, $02, $04
    db $ea, $94, $54, $24, $e9, $f2, $f0, $10, $04, $00, $d7, $fa, $73, $a7, $fa, $43
    db $97, $77, $fa, $73, $a7, $fa, $43, $97, $77, $97, $fa, $73, $97, $e9, $fa, $43
    db $07, $07, $07, $fa, $73, $07, $ea, $fa, $43, $57, $57, $57, $9a, $5a, $0a, $9a
    db $7d, $cc, $e9, $27, $7f, $da, $ea, $ee, $b0, $51

SCD_Cmd01_Param02_CommandStream_Voice2_CallTarget01::
    db $07, $27, $07, $27, $07, $27, $07, $27, $fa, $73, $57, $fa, $43, $27, $d7, $07
    db $07, $dc, $07, $27, $07, $27, $07, $27, $07, $27, $fa, $73, $57, $fa, $43, $27
    db $d7, $07, $27, $d7, $2a, $ef

SCD_Cmd01_Param02_CommandStream_Voice2_CallTarget02::
    db $0c, $07, $fa, $73, $07, $fa, $43, $27, $fa, $73, $07, $ea, $fa, $43, $97, $fa
    db $73, $aa, $e9, $0a, $2a, $4a, $fa, $43, $0c, $07, $fa, $73, $07, $fa, $43, $27
    db $fa, $73, $07, $ea, $fa, $43, $97, $a7, $e9, $97, $e9, $27, $ea, $97, $e9, $27
    db $ea, $97, $f4, $28, $77, $f4, $00, $97, $0c, $07, $fa, $73, $07, $fa, $43, $27
    db $fa, $73, $07, $ea, $fa, $43, $97, $fa, $73, $aa, $e9, $0a, $2a, $7a, $fa, $43
    db $2d, $cd, $ef

SCD_Cmd01_Param02_CommandStream_Voice3_Entry::
    db $f9, $6c, $fa, $48, $f7, $0d, $fb, $33, $f0, $0d, $00, $00, $e1

SCD_Cmd01_Param02_CommandStream_Voice3_LoopBody01::
    db $fe, $09, $53, $fe, $e3, $52, $fe, $09, $53, $fe, $e3, $52, $3d, $cd, $cc, $5c
    db $3a, $2c, $ea, $9c, $e9, $2a, $7d, $5d, $37, $a7, $37, $7a, $37, $a7, $37, $7a
    db $37, $aa, $77, $e9, $7a, $5c, $0c, $5a, $ea, $7f, $c7, $e9, $27, $ea, $7d, $cd
    db $ee, $b0, $52

SCD_Cmd01_Param02_CommandStream_Voice3_CallTarget01::
    db $5c, $7c, $5a, $ac, $9c, $7a, $5c, $7c, $9a, $ac, $e9, $2a, $ea, $a7, $57, $a7
    db $5c, $7c, $5a, $ac, $9c, $7a, $2c, $e9, $2c, $ea, $ba, $77, $a4, $77, $07, $79
    db $a7, $e9, $07, $d7, $ea, $ef

SCD_Cmd01_Param02_CommandStream_Voice3_CallTarget02::
    db $57, $e9, $57, $07, $2a, $ea, $a7, $e9, $07, $ea, $57, $c7, $e9, $57, $ea, $57
    db $a7, $e9, $07, $da, $07, $ea, $57, $e9, $57, $07, $2a, $ea, $a7, $e9, $07, $ea
    db $57, $c7, $e9, $57, $ea, $57, $e9, $07, $57, $da, $57, $ea, $ef

SCD_Cmd01_Param02_CommandStream_Voice4_Entry::
    db $f9, $6c, $f7, $09, $fb, $22, $fa, $31

SCD_Cmd01_Param02_CommandStream_Voice4_LoopBody01::
    db $fe, $a9, $53, $fe, $db, $53, $fe, $a9, $53, $fe, $db, $53, $fc, $20, $fb, $22
    db $f1, $04, $da, $04, $d9, $da, $04, $d9, $f2, $f1, $08, $fc, $20, $fb, $22, $04
    db $d4, $fc, $10, $fb, $11, $04, $04, $f2, $fc, $20, $fb, $22, $04, $d4, $fc, $10
    db $fb, $11, $04, $d9, $04, $d9, $04, $d9, $04, $d4, $d7, $04, $d9, $04, $d9, $04
    db $d9, $04, $d4, $05, $fc, $20, $fb, $22, $05, $05, $fc, $10, $fb, $11, $05, $fc
    db $20, $fb, $22, $05, $05, $fc, $10, $fb, $11, $05, $fc, $20, $fb, $22, $05, $05
    db $fc, $10, $fb, $11, $04, $d4, $04, $d4, $ee, $3e, $53

SCD_Cmd01_Param02_CommandStream_Voice4_CallTarget01::
    db $f1, $02, $fb, $22, $fc, $20, $d9, $04, $d4, $04, $04, $d4, $fc, $10, $fb, $11
    db $04, $04, $04, $d4, $04, $d9, $fc, $20, $fb, $22, $d9, $04, $d4, $04, $04, $d9
    db $fc, $10, $fb, $11, $04, $d4, $fc, $20, $fb, $22, $04, $d4, $fc, $10, $04, $d4
    db $f2, $ef

SCD_Cmd01_Param02_CommandStream_Voice4_CallTarget02::
    db $f1, $03, $fc, $01, $d7, $fb, $11, $04, $d9, $fc, $20, $fb, $22, $04, $04, $d7
    db $fc, $01, $fb, $11, $04, $d9, $fc, $20, $fb, $22, $04, $d4, $f2, $d7, $fc, $10
    db $fb, $11, $04, $d9, $fc, $20, $fb, $22, $04, $04, $d7, $fc, $10, $fb, $11, $04
    db $d4, $04, $04, $04, $d4, $f1, $03, $fc, $10, $fb, $11, $d7, $04, $d9, $fc, $20
    db $fb, $22, $04, $04, $d7, $fc, $10, $fb, $11, $04, $d9, $fc, $20, $fb, $22, $04
    db $d4, $f2, $d7, $fc, $10, $fb, $11, $04, $d9, $fc, $20, $fb, $22, $04, $04, $d7
    db $fc, $10, $fb, $11, $04, $d4, $04, $04, $04, $d4, $ef

SCD_Cmd01_Param03_CommandStream_Voice1_Entry::
    db $f5, $18, $10, $06, $f9, $64, $fb, $23, $f0, $20, $04, $00, $f7, $06, $fa, $63
    db $e3

SCD_Cmd01_Param03_CommandStream_Voice1_LoopBody01::
    db $77, $d7, $77, $d7, $77, $d7, $7d, $5a, $54, $44, $d7, $47, $d7, $47, $d7, $4d
    db $2a, $0a, $ea, $5a, $e9, $0a, $0a, $ea, $4a, $e9, $0a, $0a, $ea, $5a, $e9, $0a
    db $1a, $27, $d7, $da, $77, $d7, $77, $d7, $77, $d7, $7d, $8a, $97, $d7, $97, $d7
    db $97, $d7, $9d, $7a, $9a, $7a, $5a, $4a, $9a, $ea, $9a, $e9, $5a, $4a, $2a, $0a
    db $ea, $b7, $d7, $da, $e9, $37, $d7, $37, $d7, $37, $d7, $3d, $2a, $24, $04, $d7
    db $07, $d7, $07, $d7, $0d, $ea, $7a, $87, $57, $e9, $07, $ea, $57, $87, $57, $77
    db $37, $e9, $07, $ea, $37, $77, $37, $97, $e9, $07, $ea, $b7, $e9, $07, $ea, $97
    db $e9, $07, $1a, $27, $d7, $da, $37, $d7, $37, $d7, $37, $d7, $3d, $2a, $24, $04
    db $d7, $07, $d7, $07, $d7, $0d, $ea, $7a, $87, $37, $e9, $37, $ea, $37, $87, $37
    db $a7, $37, $77, $37, $e9, $37, $ea, $37, $57, $d7, $87, $d7, $e9, $27, $d7, $37
    db $d7, $dd, $ee, $57, $54

SCD_Cmd01_Param03_CommandStream_Voice2_Entry::
    db $f5, $18, $10, $06, $f9, $64, $fb, $13, $f0, $20, $04, $00, $f7, $05, $fa, $63
    db $e3

SCD_Cmd01_Param03_CommandStream_Voice2_LoopBody01::
    db $47, $d7, $47, $d7, $47, $d7, $4d, $2a, $24, $04, $d7, $07, $d7, $07, $d7, $0d
    db $ea, $aa, $9a, $0a, $9a, $7a, $0a, $7a, $9a, $0a, $9a, $aa, $b7, $d7, $da, $e9
    db $47, $d7, $47, $d7, $47, $d7, $4d, $5a, $47, $d7, $47, $d7, $47, $d7, $4d, $2a
    db $5a, $4a, $2a, $0a, $4a, $ea, $4a, $e9, $2a, $0a, $ea, $ba, $9a, $77, $d7, $da
    db $e9, $07, $d7, $07, $d7, $07, $d7, $0d, $0a, $04, $ea, $74, $d7, $77, $d7, $77
    db $d7, $7d, $3a, $57, $07, $87, $07, $57, $07, $37, $07, $77, $07, $37, $07, $07
    db $67, $37, $67, $07, $67, $6a, $77, $d7, $da, $e9, $07, $d7, $07, $d7, $07, $d7
    db $0d, $0a, $04, $ea, $74, $d7, $77, $d7, $77, $d7, $7d, $3a, $57, $07, $87, $07
    db $57, $07, $77, $07, $37, $07, $77, $07, $07, $d7, $57, $d7, $87, $d7, $a7, $d7
    db $dd, $e9, $ee, $0d, $55

SCD_Cmd01_Param03_CommandStream_Voice3_Entry::
    db $f9, $64, $fb, $33, $f0, $0d, $00, $00, $f7, $0d, $fa, $68, $e2

SCD_Cmd01_Param03_CommandStream_Voice3_LoopBody01::
    db $0a, $4a, $7a, $ea, $7a, $ba, $e9, $2a, $ea, $9a, $e9, $0a, $4a, $ea, $4a, $7a
    db $aa, $5a, $9a, $e9, $0a, $ea, $4a, $7a, $e9, $0a, $ea, $5a, $9a, $e9, $2a, $ea
    db $2a, $7a, $e9, $2a, $0a, $4a, $7a, $ea, $7a, $ba, $e9, $2a, $ea, $9a, $e9, $0a
    db $4a, $ea, $4a, $7a, $e9, $2a, $ea, $5a, $9a, $e9, $0a, $ea, $4a, $7a, $e9, $0a
    db $ea, $5a, $9a, $e9, $0a, $1a, $2a, $da, $0a, $3a, $7a, $ea, $9a, $e9, $0a, $5a
    db $ea, $ba, $e9, $2a, $5a, $ea, $7a, $e9, $3a, $7a, $ea, $ba, $e9, $0a, $5a, $ea
    db $7a, $e9, $0a, $3a, $ea, $9a, $e9, $0a, $3a, $2a, $ea, $7a, $e9, $7a, $0a, $3a
    db $7a, $ea, $9a, $e9, $0a, $5a, $ea, $7a, $aa, $e9, $3a, $ea, $3a, $aa, $e9, $3a
    db $ea, $8a, $e9, $0a, $3a, $ea, $7a, $aa, $e9, $3a, $ea, $8a, $5a, $aa, $e9, $3a
    db $ea, $3a, $e9, $da, $ee, $af, $55

SCD_Cmd01_Param04_CommandStream_Voice1_Entry::
    db $f9, $78, $f0, $20, $04, $00, $fb, $13, $f7, $09, $e2, $f5, $18, $10, $06

SCD_Cmd01_Param04_CommandStream_Voice1_LoopBody01::
    db $fa, $84, $59, $fa, $54, $a7, $da, $57, $54, $a7, $57, $fa, $84, $49, $fa, $54
    db $a7, $da, $47, $44, $a7, $47, $fa, $84, $39, $fa, $54, $a7, $da, $37, $34, $a7
    db $37, $27, $fa, $84, $27, $34, $24, $34, $fa, $54, $54, $cd, $ee, $55, $56

SCD_Cmd01_Param04_CommandStream_Voice2_Entry::
    db $f9, $78, $f0, $20, $04, $00, $fb, $23, $f7, $07, $e2, $f5, $18, $10, $06

SCD_Cmd01_Param04_CommandStream_Voice2_LoopBody01::
    db $fa, $84, $09, $fa, $54, $57, $da, $07, $04, $57, $07, $ea, $fa, $84, $a9, $fa
    db $54, $e9, $47, $da, $ea, $a7, $a4, $e9, $47, $ea, $a7, $fa, $84, $a9, $fa, $54
    db $e9, $37, $da, $ea, $a7, $a4, $e9, $37, $ea, $a7, $a7, $fa, $84, $a7, $e9, $04
    db $ea, $a4, $e9, $04, $fa, $54, $24, $cd, $ee, $93, $56

SCD_Cmd01_Param04_CommandStream_Voice3_Entry::
    db $f9, $78, $f0, $06, $00, $00, $fa, $58, $fb, $33, $f7, $0e, $e2

SCD_Cmd01_Param04_CommandStream_Voice3_LoopBody01::
    db $f1, $03, $29, $09, $ea, $97, $a9, $e9, $59, $ea, $57, $e9, $f2, $29, $09, $ea
    db $57, $e9, $59, $39, $ea, $57, $e9, $ee, $db, $56

SCD_Cmd01_Param04_CommandStream_Voice4_Entry::
    db $f7, $09, $f9, $78, $fa, $53

SCD_Cmd01_Param04_CommandStream_Voice4_LoopBody01::
    db $f1, $03, $fc, $20, $fb, $11, $d7, $04, $d4, $fc, $30, $fb, $22, $04, $04, $d4
    db $fc, $20, $fb, $11, $04, $d4, $04, $d4, $04, $fc, $30, $fb, $22, $04, $d4, $04
    db $d4, $f2, $d7, $fc, $20, $fb, $11, $04, $d4, $fc, $30, $fb, $22, $04, $04, $d4
    db $fc, $20, $fb, $11, $02, $02, $04, $d1, $04, $d1, $04, $d1, $04, $d4, $04, $d4
    db $ee, $fb, $56

SCD_Cmd01_Param05_CommandStream_Voice3_Entry::
    db $f9, $70, $f0, $00, $00, $00, $f7, $08, $fb, $33, $e3, $f5, $10, $10, $08

SCD_Cmd01_Param05_CommandStream_Voice3_LoopBody01::
    db $fa, $44, $f1, $02, $7a, $ba, $fa, $84, $2a, $c8, $43, $63, $fa, $44, $f2, $7a
    db $ba, $2a, $ba, $fa, $84, $e9, $08, $ea, $fa, $44, $ba, $9a, $d5, $fa, $84, $7a
    db $fa, $44, $6a, $9a, $fa, $64, $2d, $fa, $44, $6a, $9a, $fa, $64, $2d, $fa, $44
    db $6a, $9a, $2a, $9a, $78, $fa, $84, $65, $fa, $44, $78, $fa, $84, $95, $fa, $44
    db $ba, $fa, $84, $2a, $fa, $44, $f1, $02, $7a, $ba, $fa, $84, $2a, $c8, $43, $63
    db $fa, $44, $f2, $7a, $ba, $2a, $ba, $e9, $fa, $84, $08, $ea, $fa, $44, $ba, $9a
    db $d5, $e9, $fa, $84, $4a, $fa, $44, $2a, $2a, $fa, $84, $08, $25, $fa, $44, $0a
    db $ea, $fa, $84, $b8, $e9, $05, $fa, $44, $ea, $ba, $fa, $84, $98, $b5, $fa, $44
    db $9a, $7a, $fa, $84, $28, $fa, $44, $4a, $fa, $84, $25, $ea, $fa, $44, $ba, $7a
    db $da, $e9, $7a, $da, $6a, $6a, $6a, $6a, $fa, $84, $68, $fa, $44, $7a, $9a, $d5
    db $fa, $84, $2a, $fa, $44, $7a, $7a, $7a, $7a, $fa, $84, $78, $fa, $44, $9a, $ba
    db $d5, $fa, $84, $4a, $fa, $44, $8a, $8a, $8a, $8a, $fa, $84, $88, $fa, $44, $9a
    db $ba, $d5, $e9, $fa, $84, $2a, $fa, $64, $0d, $cd, $cf, $ea, $fa, $84, $ba, $fa
    db $44, $9a, $9a, $fa, $84, $98, $85, $fa, $44, $9a, $fa, $64, $bf, $fa, $44, $6a
    db $fa, $84, $9a, $fa, $44, $7a, $6a, $7a, $e9, $fa, $74, $2f, $fa, $84, $7a, $2a
    db $fa, $44, $0a, $fa, $84, $0a, $ea, $fa, $44, $ba, $fa, $84, $ba, $fa, $64, $9d
    db $fa, $84, $b8, $e9, $05, $2a, $fa, $44, $0a, $fa, $84, $0a, $ea, $fa, $44, $ba
    db $fa, $84, $9d, $bd, $fa, $64, $7e, $fa, $84, $25, $fa, $44, $78, $e9, $fa, $84
    db $25, $0a, $ea, $ba, $9a, $7a, $fa, $64, $5e, $fa, $84, $25, $fa, $44, $58, $e9
    db $fa, $84, $25, $0a, $ea, $ba, $9a, $7a, $fa, $64, $4e, $fa, $84, $05, $fa, $44
    db $48, $fa, $84, $b5, $9a, $7a, $6a, $7a, $3d, $5a, $3a, $2d, $cd, $ee, $4d, $57

SCD_Cmd01_Param05_CommandStream_Voice2_Entry::
    db $f9, $70, $f7, $07, $fb, $23, $f0, $02, $04, $00, $f5, $18, $10, $06, $e2

SCD_Cmd01_Param05_CommandStream_Voice2_LoopBody01::
    db $fa, $53, $da, $7a, $da, $7a, $da, $7a, $da, $7a, $da, $7a, $da, $7a, $fb, $21
    db $e9, $08, $ea, $05, $e9, $28, $ea, $25, $e9, $48, $ea, $45, $e9, $08, $ea, $05
    db $fb, $23, $da, $9a, $da, $9a, $da, $9a, $da, $9a, $da, $9a, $da, $9a, $fb, $12
    db $b8, $ea, $b5, $e9, $e9, $08, $ea, $05, $e9, $28, $ea, $25, $e9, $08, $ea, $05
    db $fb, $23, $da, $7a, $da, $7a, $da, $7a, $da, $7a, $da, $7a, $da, $7a, $fb, $21
    db $e9, $08, $ea, $05, $e9, $28, $ea, $25, $e9, $48, $ea, $45, $e9, $08, $ea, $05
    db $fb, $23, $da, $9a, $da, $9a, $da, $9a, $da, $9a, $ba, $dd, $e9, $0a, $ea, $ba
    db $da, $ba, $da, $da, $6a, $da, $6a, $da, $6a, $da, $6a, $da, $7a, $da, $7a, $da
    db $7a, $da, $7a, $da, $8a, $da, $8a, $da, $8a, $da, $8a, $fb, $12, $f0, $12, $04
    db $00, $05, $45, $95, $e9, $45, $05, $ea, $95, $fb, $21, $05, $45, $85, $e9, $45
    db $05, $ea, $85, $fb, $12, $05, $45, $75, $e9, $45, $05, $ea, $85, $fb, $21, $05
    db $45, $75, $e9, $45, $05, $ea, $85, $fb, $23, $f0, $02, $04, $00, $da, $6a, $da
    db $6a, $da, $6a, $da, $6a, $e9, $2a, $2a, $2a, $2a, $0a, $0a, $0a, $0a, $ea, $da
    db $4a, $da, $4a, $da, $4a, $da, $4a, $fa, $83, $4a, $3a, $4a, $1a, $2d, $6d, $fa
    db $53, $da, $2a, $da, $2a, $da, $2a, $da, $2a, $da, $2a, $da, $2a, $da, $2a, $da
    db $2a, $da, $4a, $da, $4a, $da, $4a, $da, $4a, $da, $3a, $da, $3a, $fa, $83, $e9
    db $0d, $ea, $9d, $ee, $ac, $58

SCD_Cmd01_Param05_CommandStream_Voice1_Entry::
    db $f9, $70, $f7, $07, $fb, $13, $f0, $02, $04, $00, $f5, $18, $10, $06, $e0

SCD_Cmd01_Param05_CommandStream_Voice1_LoopBody01::
    db $fa, $53, $f1, $03, $7a, $e9, $e9, $2a, $ea, $2a, $e9, $2a, $ea, $ea, $f2, $9a
    db $ba, $e9, $0a, $ea, $9a, $e9, $f1, $03, $2a, $e9, $2a, $ea, $ea, $9a, $e9, $e9
    db $2a, $ea, $f2, $ea, $7a, $9a, $ba, $e9, $2a, $ea, $f1, $03, $7a, $e9, $e9, $2a
    db $ea, $2a, $e9, $2a, $ea, $ea, $f2, $9a, $ba, $e9, $0a, $1a, $2a, $e9, $2a, $ea
    db $ea, $9a, $e9, $e9, $2a, $ea, $2a, $e9, $2a, $ea, $ea, $2a, $e9, $e9, $0a, $ea
    db $ea, $7a, $dd, $e9, $2a, $ea, $7a, $da, $e9, $7a, $da, $ea, $f1, $02, $9a, $e9
    db $e9, $2a, $ea, $ea, $2a, $e9, $e9, $2a, $ea, $ea, $f2, $f1, $02, $7a, $e9, $e9
    db $2a, $ea, $ea, $2a, $e9, $e9, $2a, $ea, $ea, $f2, $ba, $e9, $e9, $2a, $ea, $ea
    db $8a, $e9, $e9, $2a, $ea, $ea, $4a, $e9, $e9, $2a, $ea, $ea, $8a, $e9, $e9, $2a
    db $ea, $ea, $fa, $73, $9d, $8d, $7d, $8d, $fa, $53, $2a, $e9, $e9, $2a, $ea, $ea
    db $9a, $e9, $e9, $2a, $ea, $ea, $ba, $e9, $e9, $3a, $ea, $ea, $3a, $e9, $e9, $3a
    db $ea, $4a, $4a, $4a, $4a, $2a, $2a, $2a, $2a, $0a, $e9, $2a, $ea, $ea, $7a, $e9
    db $e9, $0a, $ea, $0a, $e9, $2a, $ea, $ea, $7a, $e9, $e9, $0a, $ea, $ea, $fa, $83
    db $9a, $8a, $9a, $ba, $e9, $0d, $ea, $2d, $fa, $53, $f1, $02, $7a, $e9, $ba, $ea
    db $2a, $e9, $ba, $ea, $f2, $f1, $02, $5a, $e9, $e9, $0a, $ea, $ea, $2a, $e9, $e9
    db $0a, $ea, $ea, $f2, $f1, $02, $4a, $e9, $e9, $0a, $ea, $ea, $0a, $e9, $e9, $0a
    db $ea, $ea, $f2, $9a, $e9, $e9, $0a, $ea, $ea, $0a, $e9, $e9, $0a, $ea, $ea, $fa
    db $83, $6d, $2d, $ee, $c1, $59

SCD_Cmd01_Param05_CommandStream_Voice4_Entry::
    db $f9, $70, $f7, $09, $fa, $30, $fb, $11, $fc, $10

SCD_Cmd01_Param05_CommandStream_Voice4_LoopBody01::
    db $f1, $03, $05, $d8, $05, $d5, $05, $05, $d8, $05, $d5, $05, $f2, $05, $d8, $05
    db $d5, $05, $05, $d5, $05, $05, $d8, $f1, $03, $05, $d8, $05, $d5, $05, $05, $d8
    db $05, $d5, $05, $f2, $05, $d8, $05, $d5, $05, $05, $d5, $05, $05, $d5, $05, $f1
    db $03, $05, $d8, $05, $d5, $05, $05, $d8, $05, $d5, $05, $f2, $05, $d8, $05, $d5
    db $05, $05, $d5, $05, $05, $d8, $f1, $02, $05, $d8, $05, $d5, $05, $05, $d8, $05
    db $d5, $05, $f2, $05, $d8, $da, $da, $05, $d5, $05, $d8, $05, $05, $d8, $05, $d8
    db $da, $f1, $03, $05, $d8, $05, $d5, $05, $05, $d8, $05, $d5, $05, $f2, $05, $d8
    db $05, $d5, $05, $05, $d5, $05, $05, $d8, $f1, $03, $05, $d8, $05, $d5, $05, $05
    db $d8, $05, $d5, $05, $f2, $05, $d8, $05, $d5, $05, $05, $d5, $05, $05, $d5, $05
    db $f1, $02, $05, $d8, $05, $d5, $05, $05, $d8, $05, $d5, $05, $f2, $05, $d8, $05
    db $d8, $05, $d8, $05, $d5, $05, $d8, $05, $05, $d8, $05, $d5, $05, $05, $d8, $f1
    db $03, $05, $d8, $05, $d5, $05, $05, $d8, $05, $d5, $05, $f2, $05, $d8, $05, $d8
    db $05, $05, $05, $05, $d8, $f1, $07, $05, $d8, $05, $d5, $05, $05, $d8, $05, $d5
    db $05, $f2, $05, $d8, $05, $d8, $05, $d5, $05, $05, $d8, $ee, $e1, $5a

SCD_Cmd01_Param06_CommandStream_Voice1_Setup::
    db $f9, $78, $f7, $09, $fa, $54, $fb, $13, $f0, $10, $04, $00, $f5, $18, $10, $08
    db $e2

SCD_Cmd01_Param06_CommandStream_Voice1_Phrase01::
    db $ab, $d5, $25, $2a, $aa, $98, $85, $98, $5a, $55, $78, $95, $7b, $d5, $25, $2a
    db $78, $55, $4a, $5a, $7a, $e9, $0a, $ea, $ab, $d5, $25, $2b, $d5, $a5, $9a, $e9
    db $2a, $4a, $5a, $78, $25, $2d, $48, $55, $78, $15, $1d, $28, $45, $5d, $3d, $2d
    db $08, $28, $48, $5d, $3d, $2d, $08, $28, $48, $5a, $ea, $55, $05, $55, $95, $55
    db $95, $e9, $05, $ea, $95, $e9, $05, $5a, $df, $ef

SCD_Cmd01_Param06_CommandStream_Voice2_Setup::
    db $f9, $78, $f7, $09, $fa, $54, $fb, $23, $f0, $10, $04, $00, $f5, $18, $10, $08
    db $e2

SCD_Cmd01_Param06_CommandStream_Voice2_Phrase01::
    db $2b, $d5, $ea, $a5, $aa, $e9, $2a, $58, $55, $58, $0a, $05, $08, $15, $2b, $d5
    db $ea, $a5, $aa, $e9, $28, $25, $0a, $0a, $0a, $1a, $2b, $d5, $ea, $a5, $ab, $d5
    db $e9, $25, $0a, $5a, $7a, $9a, $a8, $55, $ad, $a8, $a5, $e9, $08, $ea, $75, $ad
    db $78, $85, $9d, $7d, $5d, $48, $78, $88, $9d, $7d, $5d, $48, $78, $88, $9a, $05
    db $ea, $95, $e9, $05, $55, $05, $55, $95, $55, $95, $e9, $0a, $df, $ef

SCD_Cmd01_Param06_CommandStream_Voice3_Setup::
    db $f9, $78, $f7, $0e, $fa, $58, $fb, $33, $f0, $06, $00, $00, $e1

SCD_Cmd01_Param06_CommandStream_Voice3_Phrase01::
    db $aa, $aa, $a8, $55, $a8, $e9, $25, $5a, $5a, $5a, $5a, $7a, $7a, $78, $75, $28
    db $75, $0a, $0a, $0a, $0a, $ea, $aa, $aa, $a8, $55, $a8, $e9, $25, $5a, $5a, $5a
    db $5a, $7a, $7a, $78, $75, $28, $75, $0a, $0a, $d5, $05, $05, $05, $75, $05, $5a
    db $5a, $5a, $5a, $5a, $5a, $5a, $55, $55, $05, $5a, $5a, $5a, $5a, $5a, $5a, $5a
    db $55, $55, $05, $5a, $55, $55, $55, $55, $55, $55, $55, $55, $55, $ea, $5d, $dd
    db $ef

SCD_Cmd01_Param06_CommandStream_Voice4_Setup::
    db $f9, $78, $f7, $09, $fc, $30, $fa, $44, $fb, $21

SCD_Cmd01_Param06_CommandStream_Voice4_Phrase01::
    db $05, $d8, $05, $d8, $05, $d8, $05, $d8, $05, $d8, $05, $d8, $05, $d8, $05, $d5
    db $05, $05, $d8, $05, $d8, $05, $d8, $05, $d8, $05, $d8, $05, $d8, $05, $d8, $05
    db $05, $05, $05, $d8, $05, $d8, $05, $d8, $05, $d8, $05, $d8, $05, $d8, $05, $d8
    db $05, $d5, $05, $05, $d8, $05, $d8, $05, $d8, $05, $d8, $d5, $05, $05, $d5, $05
    db $05, $d5, $05, $05, $05, $05, $05, $f1, $02, $05, $d8, $05, $d8, $05, $d8, $05
    db $d8, $05, $d8, $05, $d8, $05, $d8, $05, $05, $05, $f2, $05, $d8, $05, $05, $05
    db $05, $05, $05, $05, $05, $05, $05, $ef

SCD_Cmd01_Param07_CommandStream_Voice1_Setup::
    db $f9, $90, $f7, $08, $fa, $54, $fb, $33, $f0, $02, $04, $00, $f5, $18, $10, $08
    db $e3

SCD_Cmd01_Param07_CommandStream_Voice1_Phrase01::
    db $0a, $0a, $27, $4a, $ea, $77, $fa, $84, $97, $fa, $54, $87, $97, $e9, $4a, $47
    db $0a, $ea, $fa, $84, $57, $fa, $54, $97, $e9, $07, $47, $ea, $fa, $84, $97, $fa
    db $54, $e9, $07, $47, $7d, $cd, $ef

SCD_Cmd01_Param07_CommandStream_Voice2_Setup::
    db $f9, $90, $f7, $09, $fa, $54, $fb, $12, $f0, $22, $04, $00, $f5, $18, $10, $08
    db $e3

SCD_Cmd01_Param07_CommandStream_Voice2_Phrase01::
    db $04, $ea, $04, $e9, $47, $77, $04, $ea, $04, $e9, $47, $77, $04, $ea, $04, $e9
    db $47, $04, $ea, $04, $e9, $47, $97, $04, $ea, $04, $e9, $47, $97, $04, $ea, $04
    db $e9, $47, $94, $04, $27, $57, $94, $04, $27, $57, $94, $04, $73, $43, $73, $73
    db $43, $73, $73, $43, $73, $73, $43, $73, $73, $43, $73, $73, $43, $73, $73, $43
    db $73, $73, $43, $73, $73, $43, $73, $73, $ef

SCD_Cmd01_Param07_CommandStream_Voice3_Setup::
    db $f9, $90, $f7, $0e, $fa, $58, $fb, $33, $f0, $06, $00, $00, $e2

SCD_Cmd01_Param07_CommandStream_Voice3_Phrase01::
    db $0a, $ea, $7a, $e9, $04, $ea, $74, $07, $e9, $07, $ea, $b7, $9a, $4a, $94, $44
    db $ea, $97, $e9, $97, $47, $2a, $d7, $27, $7a, $d7, $07, $cd, $cd, $ef

SCD_Cmd01_Param07_CommandStream_Voice4_Setup::
    db $f9, $90, $f7, $0e, $fc, $10, $fa, $44, $fb, $21, $f1, $08

SCD_Cmd01_Param07_CommandStream_Voice4_Phrase01::
    db $04, $d4, $04, $04, $f2, $d7, $04, $d4, $04, $d4, $d7, $04, $d4, $04, $d4, $d7
    db $04, $ef

SCD_Cmd01_Param08_CommandStream_Voice1_Setup::
    db $f9, $90, $f7, $09, $fa, $44, $fb, $23, $f0, $01, $04, $00, $f5, $18, $10, $08
    db $e3

SCD_Cmd01_Param08_CommandStream_Voice1_Phrase01::
    db $0a, $0a, $28, $45, $2a, $0a, $0a, $28, $45, $2a, $08, $7b, $4a, $0a, $ea, $a8
    db $e9, $05, $28, $08, $ef

SCD_Cmd01_Param08_CommandStream_Voice2_Setup::
    db $f9, $90, $f7, $09, $fa, $44, $fb, $13, $f0, $01, $04, $00, $f5, $18, $10, $08
    db $e2

SCD_Cmd01_Param08_CommandStream_Voice2_Phrase01::
    db $7a, $7a, $78, $75, $7a, $7a, $7a, $78, $75, $7a, $78, $d5, $df, $5b, $c5, $78
    db $ef

SCD_Cmd01_Param08_CommandStream_Voice3_Setup::
    db $f9, $90, $f7, $0e, $fa, $58, $fb, $33, $f0, $06, $00, $00, $e2

SCD_Cmd01_Param08_CommandStream_Voice3_Phrase01::
    db $08, $ea, $75, $e9, $0a, $ea, $a8, $75, $aa, $98, $55, $9a, $88, $55, $8a, $78
    db $d5, $df, $2b, $c5, $48, $ef

SCD_Cmd01_Param09_CommandStream_Voice1_Entry::
    db $f9, $78, $f7, $09, $fa, $44, $fb, $23, $f0, $11, $04, $00, $f5, $18, $10, $08
    db $e3

SCD_Cmd01_Param09_CommandStream_Voice1_LoopBody01::
    db $f1, $02, $77, $ea, $77, $e9, $27, $ea, $77, $e9, $07, $ea, $77, $77, $ea, $77
    db $e9, $27, $ea, $77, $e9, $07, $ea, $77, $e9, $e9, $f2, $f1, $02, $57, $ea, $57
    db $e9, $07, $ea, $57, $a7, $57, $57, $ea, $57, $e9, $07, $ea, $57, $a7, $57, $e9
    db $e9, $f2, $37, $ea, $37, $a7, $37, $87, $37, $37, $ea, $37, $a7, $37, $87, $37
    db $e9, $e9, $57, $ea, $57, $e9, $07, $ea, $57, $a7, $57, $57, $ea, $57, $e9, $07
    db $ea, $57, $a7, $57, $e9, $e9, $ee, $a0, $5e

SCD_Cmd01_Param09_CommandStream_Voice2_Setup::
    db $f9, $78, $f7, $04, $fa, $44, $fb, $13, $f0, $11, $04, $00, $f5, $18, $10, $08
    db $e3, $f4, $14

SCD_Cmd01_Param09_CommandStream_Voice2_Phrase01::
    db $d8, $ee, $a0, $5e

SCD_Cmd01_Param09_CommandStream_Voice3_Setup::
    db $f9, $78, $f7, $08, $fa, $44, $fb, $23, $f0, $02, $00, $00, $e4, $f4, $28

SCD_Cmd01_Param09_CommandStream_Voice3_Phrase01::
    db $db, $ee, $a0, $5e

SCD_Cmd01_Param0A_CommandStream_Voice1_Entry::
    db $f9, $90, $f7, $09, $fb, $33, $f0, $02, $04, $00, $f5, $10, $10, $08, $fa, $54
    db $e2, $77, $67, $67, $77, $77, $67, $67, $77, $87, $77, $77, $87, $87, $77, $77
    db $87, $97, $87, $87, $97, $97, $87, $87, $97, $e9, $0d, $ea, $ba, $da, $e9, $fe
    db $c3, $5f, $f0, $32, $04, $00, $ea, $ac, $e9, $fa, $84, $07, $fa, $54, $2a, $5a
    db $fa, $84, $47, $37, $47, $0a, $fa, $54, $27, $47, $07, $ea, $ac, $e9, $fa, $84
    db $07, $fa, $54, $2a, $5a, $4d, $cd, $ea, $bc, $e9, $fa, $84, $17, $fa, $54, $3a
    db $6a, $fa, $84, $47, $37, $47, $7a, $fa, $54, $77, $67, $77, $99, $84, $77, $67
    db $57, $47, $37, $27, $17, $07, $ea, $b7, $a7, $97, $d7, $87, $d7, $7d, $4a, $da
    db $9d, $4a, $da, $bd, $cd, $95, $e9, $e9, $47, $ea, $a7, $57, $07, $ea, $77, $27
    db $ea, $97, $33, $f0, $02, $04, $00, $e9, $e9, $fe, $c3, $5f, $ea, $ee, $34, $5f

SCD_Cmd01_Param0A_CommandStream_Voice1_CallTarget01::
    db $0a, $0a, $27, $4a, $ea, $77, $fa, $84, $97, $fa, $54, $87, $97, $e9, $47, $cd
    db $2a, $2a, $47, $5a, $ea, $97, $e9, $0d, $ea, $ba, $da, $e9, $0a, $0a, $27, $4a
    db $ea, $77, $fa, $84, $97, $fa, $54, $87, $97, $e9, $4a, $47, $57, $67, $77, $ea
    db $77, $77, $e9, $77, $77, $ea, $77, $77, $e9, $77, $0f, $da, $ef

SCD_Cmd01_Param0A_CommandStream_Voice2_Entry::
    db $f9, $90, $f7, $0a, $fb, $12, $f0, $20, $03, $00, $f5, $10, $10, $08, $fa, $54
    db $e2, $37, $27, $27, $37, $37, $27, $27, $37, $47, $37, $37, $47, $47, $37, $37
    db $47, $57, $47, $47, $57, $57, $47, $47, $57, $8d, $7a, $da, $e9, $fe, $c1, $60
    db $f1, $02, $27, $ea, $a7, $e9, $27, $57, $27, $57, $a7, $e9, $27, $07, $27, $07
    db $ea, $77, $47, $27, $07, $ea, $77, $e9, $f2, $37, $ea, $b7, $e9, $37, $67, $37
    db $67, $b7, $e9, $37, $ea, $b7, $a7, $b7, $97, $77, $67, $77, $87, $94, $94, $e9
    db $24, $d4, $24, $d4, $ea, $94, $94, $e9, $24, $d4, $24, $d4, $ea, $94, $94, $e9
    db $24, $d4, $ea, $94, $94, $e9, $24, $d4, $24, $d4, $ea, $94, $94, $e9, $24, $d4
    db $dc, $ea, $ea, $44, $74, $94, $b4, $e9, $14, $44, $94, $e9, $14, $4a, $da, $ea
    db $ea, $94, $e9, $14, $44, $74, $94, $e9, $14, $44, $94, $e9, $1a, $da, $44, $34
    db $44, $34, $44, $34, $44, $34, $44, $34, $44, $34, $44, $34, $44, $34, $47, $ea
    db $a7, $57, $07, $ea, $77, $27, $ea, $97, $37, $e9, $e9, $fe, $c1, $60, $ee, $11
    db $60

SCD_Cmd01_Param0A_CommandStream_Voice2_CallTarget01::
    db $04, $ea, $74, $e9, $47, $77, $04, $ea, $74, $e9, $47, $77, $04, $ea, $74, $e9
    db $47, $ea, $94, $44, $a7, $e9, $47, $ea, $94, $44, $a7, $e9, $47, $ea, $94, $44
    db $a7, $e9, $24, $ea, $94, $e9, $57, $97, $24, $ea, $94, $e9, $57, $97, $24, $ea
    db $94, $e9, $57, $24, $44, $24, $44, $24, $44, $54, $64, $7a, $da, $04, $ea, $74
    db $e9, $47, $77, $04, $ea, $74, $e9, $47, $77, $04, $ea, $74, $e9, $47, $ea, $94
    db $44, $a7, $e9, $47, $ea, $94, $44, $a7, $e9, $47, $ea, $94, $44, $e9, $57, $27
    db $ea, $27, $27, $e9, $27, $27, $ea, $27, $27, $e9, $27, $07, $ea, $97, $74, $34
    db $47, $07, $dc, $ef

SCD_Cmd01_Param0A_CommandStream_Voice3_Entry::
    db $f9, $90, $f7, $0e, $fb, $33, $f0, $06, $00, $00, $fa, $58, $e1

SCD_Cmd01_Param0A_CommandStream_Voice3_LoopBody01::
    db $f1, $03, $0a, $e9, $07, $ea, $0a, $07, $e9, $07, $ea, $07, $f2, $2d, $7a, $da
    db $e9, $fe, $9e, $61, $ea, $aa, $5a, $ea, $aa, $e9, $aa, $e9, $0a, $ea, $7a, $0a
    db $e9, $0a, $ea, $aa, $5a, $ea, $aa, $e9, $aa, $e9, $0a, $ea, $7a, $4a, $0a, $ea
    db $ba, $e9, $6a, $ea, $ba, $e9, $ba, $4a, $6a, $7a, $ea, $ba, $e9, $2a, $df, $da
    db $1a, $27, $dc, $ea, $9c, $9a, $9a, $97, $9c, $9a, $9a, $97, $9c, $9a, $9a, $97
    db $97, $d7, $df, $e9, $e9, $fe, $9e, $61, $ea, $ee, $42, $61

SCD_Cmd01_Param0A_CommandStream_Voice3_CallTarget01::
    db $0a, $ea, $7a, $0a, $e9, $0a, $ea, $9a, $4a, $9a, $e9, $1a, $2a, $ea, $9a, $2a
    db $e9, $2a, $ea, $5d, $7a, $da, $e9, $0a, $ea, $7a, $0a, $e9, $0a, $ea, $9a, $4a
    db $9a, $8a, $77, $da, $ea, $77, $e9, $77, $da, $ea, $77, $e9, $07, $47, $77, $b7
    db $e9, $0a, $da, $ef

SCD_Cmd01_Param0A_CommandStream_Voice4_Entry::
    db $f9, $90, $f7, $0e, $fc, $10, $fb, $21, $fa, $31

SCD_Cmd01_Param0A_CommandStream_Voice4_LoopBody01::
    db $f1, $03, $d7, $04, $d4, $04, $d9, $04, $d4, $04, $d9, $04, $d4, $f2, $d7, $04
    db $d4, $04, $d9, $04, $d4, $d4, $d9, $d4, $d4, $fe, $31, $62, $f1, $06, $d7, $04
    db $d9, $04, $d9, $04, $d9, $04, $d4, $f2, $04, $d9, $df, $d7, $04, $d9, $04, $d4
    db $04, $d4, $dc, $f1, $03, $04, $d4, $da, $04, $d9, $04, $d9, $04, $d4, $f2, $04
    db $d4, $04, $04, $d4, $04, $d4, $04, $d4, $04, $d4, $04, $04, $d4, $04, $d4, $fe
    db $31, $62, $ee, $dc, $61

SCD_Cmd01_Param0A_CommandStream_Voice4_CallTarget01::
    db $f1, $03, $04, $d4, $04, $04, $04, $d4, $04, $04, $04, $d4, $04, $04, $04, $d4
    db $04, $04, $f2, $d7, $04, $d4, $04, $d9, $04, $d4, $d4, $d9, $d4, $d4, $f1, $02
    db $04, $d4, $04, $04, $04, $d4, $04, $04, $04, $d4, $04, $04, $04, $d4, $04, $04
    db $f2, $d7, $04, $d4, $04, $d9, $04, $d4, $04, $d9, $04, $d4, $d7, $04, $d7, $04
    db $d7, $04, $d4, $dc, $ef

SCD_Cmd01_Param0B_CommandStream_Voice1_Entry::
    db $f9, $5c, $e2, $fb, $33, $f0, $02, $04, $00, $f5, $10, $10, $08, $fa, $43, $f7
    db $08, $54, $54, $04, $24, $d4, $04, $54, $d4, $74, $74, $04, $24, $d4, $04, $74
    db $d4, $94, $a4, $94, $54, $d4, $54, $24, $d4, $07, $d7, $07, $d7, $ea

SCD_Cmd01_Param0B_CommandStream_Voice1_LoopBody01::
    db $97, $e9, $0a, $27, $57, $ea, $94, $e9, $57, $54, $ea, $97, $b7, $d7, $e9, $27
    db $d7, $7c, $57, $47, $47, $77, $77, $fa, $83, $04, $ea, $b4, $e9, $04, $24, $04
    db $ea, $a4, $94, $74, $fa, $43, $9a, $aa, $ba, $e9, $0a, $ea, $97, $e9, $0a, $27
    db $57, $ea, $94, $e9, $57, $54, $ea, $97, $b7, $d7, $e9, $27, $d7, $9c, $77, $47
    db $fa, $83, $04, $14, $24, $14, $24, $34, $44, $34, $44, $54, $fa, $43, $75, $d3
    db $95, $d3, $55, $d3, $d7, $fa, $03, $07, $ea, $a3, $93, $73, $fa, $43, $57, $d7
    db $da, $77, $7a, $b7, $e9, $24, $ea, $b4, $e9, $24, $44, $ca, $ea, $97, $9a, $e9
    db $17, $44, $14, $44, $64, $ca, $ea, $b7, $ba, $e9, $37, $64, $34, $64, $99, $fa
    db $43, $97, $87, $d7, $df, $99, $69, $47, $99, $69, $47, $69, $b7, $d9, $da, $67
    db $47, $69, $29, $97, $89, $99, $b7, $69, $47, $da, $84, $d4, $94, $b4, $d4, $84
    db $d4, $99, $69, $47, $99, $69, $47, $69, $b7, $d9, $da, $67, $47, $69, $29, $97
    db $89, $99, $b7, $9d, $d4, $14, $d4, $14, $14, $d4, $d7, $e9, $0a, $ea, $ba, $99
    db $b9, $97, $79, $99, $ba, $77, $97, $77, $aa, $9a, $79, $99, $77, $4d, $cd, $8a
    db $7a, $59, $79, $57, $49, $59, $7c, $0a, $24, $d7, $24, $d4, $24, $54, $d4, $94
    db $d7, $94, $d4, $94, $e9, $04, $d4, $ea, $b4, $d9, $da, $94, $74, $24, $ea, $b4
    db $e9, $74, $24, $ea, $b4, $74, $5a, $47, $d7, $9a, $87, $d7, $e9, $07, $ea, $b7
    db $e9, $57, $47, $97, $87, $e9, $07, $ea, $b7, $ea, $ee, $a4, $62

SCD_Cmd01_Param0B_CommandStream_Voice2_Entry::
    db $f9, $5c, $e3, $f7, $08, $fb, $12, $f0, $30, $04, $00, $f5, $10, $10, $08, $fa
    db $53, $54, $24, $04, $54, $24, $04, $54, $d4, $74, $24, $04, $74, $24, $04, $74
    db $d4, $94, $24, $04, $94, $24, $04, $94, $24, $07, $d7, $47, $d7

SCD_Cmd01_Param0B_CommandStream_Voice2_LoopBody01::
    db $ea, $a4, $b4, $e9, $04, $ea, $a4, $b4, $e9, $04, $ea, $a4, $b4, $e9, $04, $ea
    db $a4, $b4, $e9, $04, $ea, $a4, $b4, $e9, $04, $d4, $04, $14, $24, $04, $14, $24
    db $04, $14, $24, $04, $14, $24, $04, $14, $24, $d4, $24, $34, $44, $24, $34, $44
    db $24, $34, $44, $24, $34, $44, $24, $34, $44, $d4, $0a, $1a, $2a, $7a, $ea, $a4
    db $b4, $e9, $04, $ea, $a4, $b4, $e9, $04, $ea, $a4, $b4, $e9, $04, $ea, $a4, $b4
    db $e9, $04, $ea, $a4, $b4, $e9, $07, $04, $14, $24, $04, $14, $24, $04, $14, $24
    db $04, $14, $24, $04, $14, $27, $77, $fa, $83, $44, $54, $64, $54, $64, $74, $84
    db $74, $84, $94, $fa, $53, $a5, $d3, $e9, $05, $d3, $ea, $95, $d3, $d7, $fa, $03
    db $97, $53, $23, $ea, $a3, $fa, $53, $97, $d7, $da, $b4, $a4, $94, $b4, $a4, $94
    db $b4, $a4, $94, $b4, $a4, $94, $b4, $94, $a4, $b4, $e9, $14, $04, $ea, $b4, $e9
    db $14, $04, $ea, $b4, $e9, $14, $04, $ea, $b4, $e9, $14, $04, $ea, $b4, $e9, $14
    db $ea, $b4, $e9, $04, $14, $34, $24, $14, $34, $24, $14, $34, $24, $14, $34, $24
    db $14, $34, $14, $24, $34, $47, $d7, $df, $f1, $03, $44, $ea, $44, $e9, $44, $ea
    db $44, $e9, $44, $44, $ea, $44, $e9, $44, $ea, $44, $e9, $44, $ea, $44, $e9, $44
    db $44, $ea, $44, $e9, $44, $ea, $44, $e9, $f2, $44, $ea, $44, $e9, $44, $ea, $44
    db $e9, $44, $44, $ea, $44, $e9, $44, $d4, $b4, $d4, $e9, $14, $24, $d4, $ea, $b4
    db $d4, $f1, $03, $44, $ea, $44, $e9, $44, $ea, $44, $e9, $44, $44, $ea, $44, $e9
    db $44, $ea, $44, $e9, $44, $ea, $44, $e9, $44, $44, $ea, $44, $e9, $44, $ea, $44
    db $e9, $f2, $44, $ea, $44, $e9, $44, $ea, $44, $e9, $44, $44, $ea, $44, $e9, $44
    db $d4, $44, $d4, $44, $44, $d4, $d7, $04, $ea, $04, $e9, $04, $ea, $04, $e9, $04
    db $04, $ea, $04, $e9, $24, $ea, $24, $e9, $24, $ea, $24, $e9, $24, $24, $ea, $24
    db $e9, $24, $ea, $24, $e9, $24, $ea, $24, $e9, $24, $ea, $24, $e9, $24, $24, $ea
    db $24, $e9, $74, $ea, $74, $e9, $74, $ea, $74, $e9, $74, $74, $ea, $74, $e9, $74
    db $ea, $74, $e9, $04, $ea, $04, $e9, $04, $ea, $04, $e9, $04, $04, $ea, $04, $e9
    db $24, $ea, $24, $e9, $24, $ea, $24, $e9, $24, $24, $ea, $24, $e9, $24, $ea, $24
    db $e9, $74, $ea, $74, $e9, $74, $ea, $74, $e9, $74, $74, $ea, $74, $e9, $74, $ea
    db $74, $e9, $74, $ea, $74, $e9, $74, $74, $ea, $74, $e9, $74, $ea, $74, $e9, $04
    db $ea, $04, $e9, $04, $ea, $04, $e9, $04, $04, $ea, $04, $e9, $24, $ea, $24, $e9
    db $24, $ea, $24, $e9, $24, $24, $ea, $24, $e9, $24, $ea, $24, $e9, $44, $ea, $44
    db $e9, $44, $ea, $44, $e9, $44, $44, $ea, $44, $e9, $94, $ea, $94, $e9, $94, $ea
    db $94, $e9, $94, $94, $ea, $94, $e9, $94, $ea, $94, $e9, $54, $ea, $54, $e9, $54
    db $ea, $54, $e9, $54, $54, $ea, $54, $e9, $54, $ea, $54, $e9, $54, $ea, $54, $e9
    db $54, $54, $ea, $54, $e9, $54, $ea, $54, $e9, $54, $ea, $54, $e9, $54, $ea, $54
    db $e9, $54, $54, $ea, $54, $e9, $54, $ea, $74, $94, $b4, $e9, $24, $ea, $94, $b4
    db $e9, $24, $74, $ea, $0a, $ea, $b7, $d7, $e9, $5a, $47, $d7, $97, $87, $e9, $07
    db $ea, $b7, $e9, $57, $47, $97, $87, $ee, $de, $63

SCD_Cmd01_Param0B_CommandStream_Voice3_Entry::
    db $f9, $5c, $f7, $0d, $fb, $33, $f0, $0d, $00, $00, $fa, $48, $e2, $07, $ea, $04
    db $e9, $07, $ea, $94, $a4, $b4, $e9, $07, $ea, $04, $e9, $07, $ea, $94, $a4, $b4
    db $e9, $07, $ea, $04, $e9, $07, $ea, $94, $a4, $b4, $e9, $07, $d7, $ea, $07, $d7

SCD_Cmd01_Param0B_CommandStream_Voice3_LoopBody01::
    db $57, $e9, $04, $ea, $57, $54, $e9, $07, $ea, $57, $e9, $04, $ea, $57, $54, $e9
    db $07, $ea, $77, $e9, $24, $ea, $77, $74, $e9, $27, $ea, $77, $e9, $24, $ea, $77
    db $74, $e9, $27, $ea, $77, $e9, $04, $ea, $77, $74, $e9, $07, $ea, $77, $e9, $04
    db $ea, $77, $74, $e9, $07, $ea, $5a, $6a, $7a, $0a, $57, $e9, $04, $ea, $57, $54
    db $e9, $07, $ea, $57, $e9, $04, $ea, $57, $54, $e9, $07, $ea, $77, $e9, $24, $ea
    db $77, $74, $e9, $27, $ea, $77, $e9, $24, $ea, $77, $74, $e9, $27, $07, $fa, $88
    db $ea, $94, $a4, $b4, $a4, $b4, $e9, $04, $14, $04, $14, $24, $fa, $48, $45, $d3
    db $05, $d3, $ea, $95, $d3, $d4, $e9, $07, $ea, $04, $e9, $07, $ea, $57, $d7, $da
    db $77, $e9, $74, $ea, $77, $e9, $77, $ea, $27, $e9, $27, $ea, $24, $e9, $24, $24
    db $ea, $27, $47, $e9, $44, $ea, $47, $e9, $47, $ea, $97, $e9, $97, $ea, $94, $e9
    db $94, $94, $ea, $97, $67, $e9, $64, $ea, $67, $e9, $67, $ea, $ea, $b7, $e9, $b7
    db $ea, $b4, $e9, $e9, $b4, $b4, $ea, $ea, $b7, $e9, $47, $d4, $e9, $47, $d4, $ea
    db $47, $d4, $e9, $47, $d4, $ea, $47, $d7, $99, $49, $99, $49, $97, $47, $b9, $49
    db $b9, $49, $b7, $47, $b9, $49, $b9, $49, $b7, $47, $99, $49, $99, $87, $94, $b7
    db $47, $99, $49, $99, $49, $97, $47, $b9, $49, $b9, $49, $b7, $47, $b9, $49, $b9
    db $49, $b7, $47, $99, $49, $99, $97, $94, $97, $d7, $59, $57, $e9, $04, $ea, $57
    db $79, $77, $e9, $24, $ea, $77, $49, $47, $b4, $47, $99, $97, $e9, $44, $ea, $97
    db $59, $57, $e9, $04, $ea, $57, $79, $77, $e9, $74, $ea, $77, $e9, $09, $07, $74
    db $07, $ea, $79, $77, $e9, $04, $ea, $77, $59, $57, $e9, $04, $ea, $57, $29, $27
    db $e9, $24, $ea, $27, $49, $47, $b4, $47, $99, $97, $e9, $44, $ea, $97, $27, $94
    db $27, $97, $27, $97, $24, $97, $27, $77, $e9, $24, $ea, $77, $e9, $27, $ea, $77
    db $e9, $27, $24, $ea, $77, $d7, $47, $57, $87, $97, $47, $57, $87, $97, $47, $57
    db $87, $97, $b7, $e9, $07, $27, $47, $ea, $ee, $48, $66

SCD_Cmd01_02_Param0C_0F_CommandStream_Voice1_Setup::
    db $f9, $a0, $f0, $02, $02, $00, $f7, $09, $fb, $13, $e4, $fa, $34

SCD_Cmd01_02_Param0C_0F_CommandStream_Voice1_Phrase01::
    db $07, $fa, $74, $ea, $b3, $e9, $03, $ea, $b3, $fa, $34, $77, $b7, $e9, $07, $27
    db $77, $97, $b7, $ef

SCD_Cmd01_02_Param0C_0F_CommandStream_Voice2_Setup::
    db $f9, $a0, $f0, $02, $02, $00, $f7, $08, $fb, $23, $e3, $fa, $34

SCD_Cmd01_02_Param0C_0F_CommandStream_Voice2_Phrase01::
    db $77, $fa, $74, $63, $73, $63, $fa, $34, $27, $67, $77, $b7, $e9, $07, $27, $67
    db $ef

SCD_Cmd01_Param0D_CommandStream_Voice1_Entry::
    db $f9, $96, $f5, $00, $10, $04, $e2, $fb, $33, $f0, $20, $04, $00, $fa, $43, $f7
    db $08

SCD_Cmd01_Param0D_CommandStream_Voice1_LoopBody01::
    db $f1, $08, $07, $d7, $57, $d7, $27, $d7, $07, $d7, $07, $27, $d7, $ea, $a7, $e9
    db $f2, $07, $d7, $57, $d7, $27, $d7, $07, $d7, $07, $27, $d7, $ea, $a7, $e9, $07
    db $d7, $dd, $df, $07, $d7, $57, $d7, $27, $d7, $77, $d7, $77, $57, $d7, $77, $07
    db $d7, $dd, $df, $f1, $04, $77, $d7, $a7, $d7, $a7, $d7, $97, $d7, $97, $77, $d7
    db $27, $f2, $f1, $08, $77, $57, $d7, $77, $d7, $47, $27, $d7, $47, $d7, $57, $d7
    db $f2, $ee, $03, $68

SCD_Cmd01_Param0D_CommandStream_Voice2_Entry::
    db $f9, $96, $f5, $00, $10, $08, $fb, $21, $f0, $10, $04, $00, $fa, $43, $e2, $f7
    db $08

SCD_Cmd01_Param0D_CommandStream_Voice2_LoopBody01::
    db $f1, $10, $a7, $77, $57, $a7, $77, $57, $f2, $f1, $04, $a7, $a7, $97, $a7, $a7
    db $97, $a7, $a7, $97, $a7, $a7, $77, $f2, $e9, $f1, $04, $27, $d7, $57, $d7, $57
    db $d7, $47, $d7, $47, $27, $d7, $07, $f2, $f1, $08, $47, $27, $d7, $47, $d7, $07
    db $ea, $a7, $d7, $e9, $07, $d7, $27, $d7, $f2, $ea, $ee, $68, $68

SCD_Cmd01_Param0D_CommandStream_Voice3_Entry::
    db $f9, $96, $fa, $48, $f7, $0d, $fb, $33, $f0, $0d, $00, $00, $e2

SCD_Cmd01_Param0D_CommandStream_Voice3_LoopBody01::
    db $f1, $04, $0a, $ea, $a7, $e9, $0a, $ea, $77, $e9, $0a, $07, $ea, $7a, $77, $e9
    db $f2, $ea, $f1, $04, $aa, $77, $aa, $57, $aa, $a7, $7a, $77, $f2, $e9, $f1, $08
    db $0a, $ea, $a7, $e9, $0a, $ea, $77, $e9, $0a, $07, $ea, $5a, $57, $e9, $f2, $f1
    db $04, $07, $ea, $aa, $e9, $0a, $ea, $77, $e9, $0a, $0a, $ea, $7a, $e9, $f2, $ea
    db $f1, $04, $a7, $7a, $aa, $77, $aa, $aa, $5a, $f2, $e9, $ee, $b2, $68

SCD_Cmd01_Param0E_CommandStream_Voice1_Setup::
    db $f9, $50, $f5, $08, $10, $08, $e3, $fb, $13, $f0, $20, $04, $00, $fa, $74, $f7
    db $05

SCD_Cmd01_Param0E_CommandStream_Voice1_Phrase01::
    db $25, $ea, $b5, $55, $cf, $0d, $ea, $bd, $e9, $25, $75, $e9, $05, $cf, $ea, $bd
    db $cd, $e9, $ee, $11, $69

SCD_Cmd01_Param0E_CommandStream_Voice2_Setup::
    db $f9, $50, $f5, $08, $10, $08, $e3, $fb, $23, $f0, $20, $04, $00, $fa, $74, $f7
    db $05

SCD_Cmd01_Param0E_CommandStream_Voice2_Phrase01::
    db $d3, $05, $ea, $75, $23, $cf, $cd, $cd, $d3, $55, $b5, $e9, $23, $cf, $cd, $cd
    db $ee, $37, $69

SCD_Cmd01_Param0E_CommandStream_Voice3_Entry::
    db $f9, $50, $fa, $44, $f7, $0c, $fb, $33, $f0, $06, $00, $00, $e1

SCD_Cmd01_Param0E_CommandStream_Voice3_LoopBody01::
    db $f1, $04, $7a, $77, $77, $7a, $77, $77, $f2, $ee, $57, $69

SCD_Cmd01_Param0F_CommandStream_Voice1_Entry::
    db $f9, $5a, $f5, $00, $08, $0a, $e2, $fb, $13, $f0, $02, $04, $00, $fa, $63, $f7
    db $06

SCD_Cmd01_Param0F_CommandStream_Voice1_LoopBody01::
    db $f1, $02, $5d, $cd, $4d, $cd, $5a, $47, $07, $cd, $cd, $cd, $f2, $5d, $cd, $cd
    db $57, $77, $9a, $7d, $cd, $cf, $0a, $5d, $cd, $cd, $57, $77, $9a, $7d, $cd, $cd
    db $cd, $5d, $cd, $4d, $cd, $5a, $47, $07, $cd, $cd, $cd, $f1, $02, $5a, $57, $57
    db $5a, $57, $57, $5a, $57, $57, $57, $57, $57, $57, $4a, $47, $47, $4a, $47, $47
    db $4a, $47, $47, $47, $47, $45, $45, $45, $f2, $ee, $74, $69

SCD_Cmd01_Param0F_CommandStream_Voice2_Entry::
    db $f9, $5a, $f5, $00, $08, $0a, $e2, $fb, $23, $f0, $02, $04, $00, $fa, $63, $f7
    db $04

SCD_Cmd01_Param0F_CommandStream_Voice2_LoopBody01::
    db $f1, $02, $0d, $cd, $ea, $bd, $cd, $e9, $0a, $ea, $b7, $77, $cd, $cd, $cd, $e9
    db $f2, $0d, $cd, $cd, $07, $27, $4a, $2d, $cd, $4d, $ca, $ea, $7a, $e9, $0d, $cd
    db $cd, $07, $27, $4a, $2d, $cd, $4d, $cd, $0d, $cd, $ea, $bd, $cd, $e9, $0a, $ea
    db $b7, $77, $cd, $cd, $cd, $e9, $f1, $02, $0a, $07, $07, $0a, $07, $07, $0a, $07
    db $07, $07, $07, $07, $07, $ea, $ba, $b7, $b7, $ba, $b7, $b7, $ba, $b7, $b7, $b7
    db $b7, $b5, $b5, $b5, $e9, $f2, $ee, $d1, $69

SCD_Cmd01_Param0F_CommandStream_Voice3_Setup::
    db $f9, $5a, $fa, $48, $f7, $0d, $fb, $33, $f0, $0d, $00, $00, $e2

SCD_Cmd01_Param0F_CommandStream_Voice3_Phrase01::
    db $0a, $07, $07, $0a, $07, $07, $ee, $37, $6a

SCD_Cmd01_Param10_CommandStream_Voice1_Setup::
    db $f9, $64, $f5, $00, $10, $04, $e1, $fb, $33, $f0, $01, $04, $00, $fa, $63, $f7
    db $08

SCD_Cmd01_Param10_CommandStream_Voice1_PhraseCallLoop::
    db $fe, $6c, $6a
    db $fe, $7d, $6a
    db $fe, $c0, $6a
    db $fe, $7d, $6a
    db $fe, $dc, $6a
    db $fe, $f2, $6a
    db $fe, $7d, $6a
    db $fe, $c0, $6a
    db $ee, $51, $6a

SCD_Cmd01_Param10_CommandStream_Voice1_Phrase01::
    db $f1, $02, $59, $59, $37, $59, $59, $07, $59, $59, $37, $57, $57, $07, $37, $f2
    db $ef

SCD_Cmd01_Param10_CommandStream_Voice1_Phrase02::
    db $a7, $e9, $04, $24, $07, $ea, $a7, $e9, $04, $24, $04, $ea, $a4, $e9, $04, $24
    db $04, $d4, $ea, $a7, $e9, $04, $24, $07, $ea, $a7, $e9, $04, $24, $04, $ea, $a4
    db $e9, $04, $d9, $ea, $a7, $e9, $04, $24, $07, $ea, $a7, $e9, $04, $24, $04, $ea
    db $a4, $e9, $04, $24, $04, $d4, $ea, $a7, $e9, $04, $24, $07, $ea, $a7, $e9, $07
    db $dc, $ea, $ef

SCD_Cmd01_Param10_CommandStream_Voice1_Phrase03::
    db $e9, $7a, $2a, $29, $42, $22, $0a, $7a, $29, $42, $22, $0a, $da, $7a, $29, $44
    db $2a, $0a, $7a, $29, $42, $22, $07, $d7, $27, $d7, $ea, $ef

SCD_Cmd01_Param10_CommandStream_Voice1_Phrase04::
    db $e9, $54, $44, $04, $ea, $a4, $cf, $cd, $d7, $77, $a7, $e9, $07, $54, $44, $54
    db $74, $cf, $cd, $cd, $ea, $ef

SCD_Cmd01_Param10_CommandStream_Voice1_Phrase05::
    db $e9, $aa, $7a, $e9, $0d, $ea, $aa, $79, $a4, $7d, $aa, $7a, $e9, $09, $22, $02
    db $ea, $aa, $79, $a2, $72, $5a, $49, $52, $42, $07, $ea, $a7, $ef

SCD_Cmd01_Param10_CommandStream_Voice2_Setup::
    db $f9, $64, $f5, $00, $10, $04, $e3, $fb, $12, $f0, $12, $04, $00, $fa, $33, $f7
    db $07

SCD_Cmd01_Param10_CommandStream_Voice2_PhraseCallLoop::
    db $fe, $3b, $6b
    db $fe, $88, $6b
    db $fe, $3b, $6b
    db $fe, $88, $6b
    db $fe, $3b, $6b
    db $fe, $3b, $6b
    db $fe, $88, $6b
    db $fe, $3b, $6b
    db $ee, $20, $6b

SCD_Cmd01_Param10_CommandStream_Voice2_Phrase01::
    db $a4, $74, $54, $44, $04, $44, $54, $74, $a4, $e9, $04, $ea, $a4, $74, $54, $74
    db $54, $44, $04, $44, $04, $44, $54, $74, $54, $74, $a4, $e9, $04, $ea, $74, $a4
    db $74, $a4, $54, $74, $a4, $e9, $04, $ea, $a4, $74, $54, $74, $54, $44, $54, $74
    db $a4, $74, $a4, $e9, $04, $ea, $74, $a4, $44, $54, $44, $04, $44, $54, $44, $54
    db $74, $54, $74, $a4, $e9, $04, $ea, $a4, $e9, $04, $44, $ea, $ef

SCD_Cmd01_Param10_CommandStream_Voice2_Phrase02::
    db $a4, $74, $54, $44, $04, $44, $54, $74, $a4, $e9, $04, $ea, $a4, $74, $54, $74
    db $54, $44, $04, $44, $04, $44, $54, $74, $54, $74, $a4, $e9, $04, $ea, $74, $a4
    db $74, $a4, $54, $74, $a4, $e9, $04, $ea, $a4, $74, $54, $74, $54, $44, $54, $74
    db $a4, $74, $a4, $e9, $04, $ea, $74, $a4, $44, $54, $44, $04, $44, $54, $44, $54
    db $74, $54, $74, $a4, $e9, $04, $ea, $d9, $ef

SCD_Cmd01_Param10_CommandStream_Voice3_Setup::
    db $f9, $64, $fa, $48, $f7, $0d, $fb, $33, $f0, $0d, $00, $00, $e2

SCD_Cmd01_Param10_CommandStream_Voice3_PhraseCallLoop::
    db $fe, $0f, $6c
    db $fe, $f9, $6b
    db $fe, $3a, $6c
    db $fe, $f9, $6b
    db $fe, $65, $6c
    db $fe, $7e, $6c
    db $fe, $f9, $6b
    db $fe, $3a, $6c
    db $ee, $de, $6b

SCD_Cmd01_Param10_CommandStream_Voice3_Phrase01::
    db $f1, $03, $09, $09, $ea, $a7, $e9, $09, $09, $ea, $a7, $e9, $f2, $09, $09, $ea
    db $a7, $e9, $09, $d9, $d7, $ef

SCD_Cmd01_Param10_CommandStream_Voice3_Phrase02::
    db $09, $09, $ea, $a7, $e9, $09, $09, $ea, $77, $e9, $09, $09, $ea, $a7, $e9, $07
    db $07, $ea, $77, $a7, $e9, $09, $09, $ea, $a7, $e9, $09, $09, $ea, $77, $e9, $09
    db $09, $ea, $a7, $e9, $07, $07, $ea, $a7, $b7, $e9, $ef

SCD_Cmd01_Param10_CommandStream_Voice3_Phrase03::
    db $09, $09, $ea, $a7, $e9, $09, $09, $ea, $77, $e9, $09, $09, $ea, $a7, $e9, $07
    db $07, $ea, $a7, $b7, $e9, $09, $09, $ea, $a7, $e9, $09, $09, $ea, $77, $e9, $09
    db $09, $ea, $a7, $e9, $07, $d7, $ea, $77, $d7, $e9, $ef

SCD_Cmd01_Param10_CommandStream_Voice3_Phrase04::
    db $f1, $02, $09, $09, $ea, $a7, $e9, $09, $09, $ea, $77, $e9, $09, $09, $ea, $a7
    db $e9, $07, $07, $ea, $77, $a7, $e9, $f2, $ef

SCD_Cmd01_Param10_CommandStream_Voice3_Phrase05::
    db $f1, $04, $09, $09, $ea, $a7, $e9, $09, $09, $ea, $77, $e9, $f2, $ef

SCD_Cmd01_Param11_CommandStream_Voice1_Setup::
    db $f9, $84, $f5, $10, $10, $08, $e2, $fb, $33, $f0, $03, $04, $00, $fa, $42, $f7
    db $09

SCD_Cmd01_Param11_CommandStream_Voice1_Phrase01::
    db $49, $44, $47, $97, $97, $79, $74, $77, $27, $27, $4d, $c7, $ef

SCD_Cmd01_Param11_CommandStream_Voice2_Setup::
    db $f9, $84, $f5, $10, $10, $08, $e3, $fb, $21, $f0, $32, $04, $00, $fa, $42, $f7
    db $09

SCD_Cmd01_Param11_CommandStream_Voice2_Phrase01::
    db $f1, $02, $94, $74, $94, $e9, $04, $24, $44, $24, $44, $24, $04, $ea, $f2, $9d
    db $c7, $ef

SCD_Cmd01_Param11_CommandStream_Voice3_Setup::
    db $f9, $84, $fa, $48, $f7, $0d, $fb, $33, $f0, $06, $00, $00, $e1

SCD_Cmd01_Param11_CommandStream_Voice3_Phrase01::
    db $f1, $02, $97, $44, $44, $47, $47, $77, $f2, $9d, $c7, $ef

SCD_Cmd01_Param12_CommandStream_Voice1_Setup::
    db $f9, $78, $f5, $10, $10, $08, $e3, $fb, $33, $f0, $23, $04, $00, $fa, $42, $f7
    db $09

SCD_Cmd01_Param12_CommandStream_Voice1_Phrase01::
    db $54, $44, $54, $44, $54, $64, $74, $84, $9d, $ef

SCD_Cmd01_Param12_CommandStream_Voice2_Setup::
    db $f9, $78, $f5, $10, $10, $08, $e3, $fb, $12, $f0, $23, $04, $00, $fa, $42, $f7
    db $09

SCD_Cmd01_Param12_CommandStream_Voice2_Phrase01::
    db $94, $84, $94, $84, $94, $a4, $b4, $e9, $04, $1d, $ef

SCD_Cmd01_Param12_CommandStream_Voice3_Setup::
    db $f9, $78, $fa, $48, $f7, $0d, $fb, $33, $f0, $06, $00, $00, $e2

SCD_Cmd01_Param12_CommandStream_Voice3_Phrase01::
    db $0a, $c4, $14, $24, $34, $4d, $ef

SCD_Cmd01_Param13_CommandStream_Voice1_Setup::
    db $f9, $78, $f5, $10, $10, $08, $e3, $fb, $33, $f0, $23, $04, $00, $fa, $42, $f7
    db $09

SCD_Cmd01_Param13_CommandStream_Voice1_Phrase01::
    db $64, $74, $84, $9d, $ef

SCD_Cmd01_Param13_CommandStream_Voice2_Setup::
    db $f9, $78, $f5, $10, $10, $08, $e3, $fb, $12, $f0, $23, $04, $00, $fa, $42, $f7
    db $09

SCD_Cmd01_Param13_CommandStream_Voice2_Phrase01::
    db $a4, $b4, $e9, $04, $1d, $ef

SCD_Cmd01_Param13_CommandStream_Voice3_Setup::
    db $f9, $78, $fa, $48, $f7, $0d, $fb, $33, $f0, $06, $00, $00, $e2

SCD_Cmd01_Param13_CommandStream_Voice3_Phrase01::
    db $14, $24, $34, $4d

SCD_Cmd01_CommandStream_DeactivateVoice_Setup::
    db $f7, $00

SCD_Cmd01_CommandStream_DeactivateVoice_Phrase01::
    db $ef

Unused_VibratoTestTrack_CommandStream_Voice::
    db $fa, $80, $f9, $48, $e3, $f7, $0a, $fb, $33, $f5, $01, $08, $08, $0d, $cd, $f5
    db $01, $10, $08, $2d, $cd, $f5, $01, $18, $08, $4d, $cd, $f5, $01, $24, $08, $5d
    db $cd, $f5, $01, $30, $08, $7d, $cd, $f5, $01, $38, $08, $9d, $cd, $f5, $01, $40
    db $08, $bd, $cd, $f5, $01, $48, $08, $e9, $0d, $cd, $ea, $f5, $01, $08, $08, $0d
    db $cd, $f5, $01, $08, $10, $2d, $cd, $f5, $01, $08, $18, $4d, $cd, $f5, $01, $08
    db $24, $5d, $cd, $f5, $01, $08, $30, $7d, $cd, $f5, $01, $08, $38, $9d, $cd, $f5
    db $01, $08, $40, $bd, $cd, $f5, $01, $08, $48, $e9, $0d, $cd, $ea

SCD_Cmd01_Param14_CommandStream_Voice4::
    db $fc, $40, $0d, $cd, $fc, $41, $0d, $cd, $fc, $42, $0d, $cd, $fc, $43, $0d, $cd
    db $fc, $44, $0d, $cd, $fc, $45, $0d, $cd, $fc, $46, $0d, $cd, $fc, $47, $0d, $cd
    db $ef

Unused_UnknownTrack_CommandStream_Voice1_Setup::
    db $f5, $0a, $14, $03, $fa, $57, $f6, $01, $f9, $c8, $e2, $f7, $0a, $fb, $13, $f0
    db $20, $04

Unused_UnknownTrack_CommandStream_Voice1_Phrase01::
    db $00, $0a, $2a, $4d, $0a, $2a, $4d, $7a, $4a, $2a, $0a, $2a, $4a, $2d, $0a, $2a
    db $4d, $0a, $2a, $4d, $7a, $4a, $2a, $0a, $2a, $4a, $0d, $7a, $7a, $4a, $7a, $9a
    db $9a, $7d, $4a, $4a, $2a, $2a, $0d, $cd, $ee, $13, $6e

Unused_UnknownTrack_CommandStream_Voice2_Setup::
    db $f6, $01, $f9, $c8, $fa, $45, $f7, $09, $fb, $21, $f0, $12, $04

Unused_UnknownTrack_CommandStream_Voice2_Phrase01::
    db $00, $e3, $0a, $e9, $08, $ea, $0a, $05, $e9, $08, $ea, $05, $c8, $05, $e9, $08
    db $ea, $0a, $05, $e9, $08, $ea, $05, $0a, $e9, $08, $ea, $0a, $05, $e9, $08, $ea
    db $05, $c8, $ea, $b5, $e9, $b8, $ea, $ba, $b5, $e9, $b8, $ea, $b5, $e9, $0a, $e9
    db $08, $ea, $0a, $05, $e9, $08, $ea, $05, $c8, $05, $e9, $08, $ea, $0a, $05, $e9
    db $08, $ea, $05, $ea, $ba, $e9, $b8, $ea, $ba, $b5, $e9, $b8, $ea, $b5, $c8, $b5
    db $e9, $b8, $ea, $ba, $e9, $e9, $05, $ea, $08, $e9, $05, $ea, $0a, $e9, $08, $ea
    db $0a, $05, $e9, $08, $ea, $05, $c8, $05, $e9, $08, $ea, $0a, $05, $e9, $08, $ea
    db $05, $2a, $e9, $28, $ea, $ea, $ba, $b5, $e9, $b8, $ea, $b5, $c8, $e9, $e9, $05
    db $ea, $b8, $95, $78, $55, $48, $25, $ee, $4b, $6e

Unused_UnknownTrack_CommandStream_Voice3_Setup::
    db $f6, $01, $f9, $c8, $fa, $58, $f7, $0f, $fb, $33, $f0, $05, $00

Unused_UnknownTrack_CommandStream_Voice3_Phrase01::
    db $00, $e2, $0d, $ea, $7d, $e9, $0d, $ea, $7d, $e9, $0d, $ea, $7d, $e9, $2d, $ea
    db $7d, $e9, $0d, $ea, $7d, $e9, $0d, $ea, $7d, $e9, $2d, $2d, $ea, $7d, $e9, $0d
    db $0d, $ea, $ad, $9d, $8d, $7d, $bd, $e9, $0a, $ea, $7a, $e9, $0d, $ee, $e2, $6e

Unused_UnknownTrack_CommandStream_Voice4_Setup::
    db $f7, $0a, $fa, $40, $f9, $c8, $fb, $32, $fa, $45, $fc, $10

Unused_UnknownTrack_CommandStream_Voice4_Phrase01::
    db $f1, $0c, $08, $d5, $05, $d5, $05, $08, $d5, $05, $d5, $05, $f2, $ee, $1d, $6f

SCD_Cmd02_VoiceCommandStreamPointerRow_Param00_Unused::
    db $23, $71
    db $33, $71
    db $af, $4a
    db $af, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param01_Unused::
    db $43, $71
    db $54, $71
    db $af, $4a
    db $af, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param02_HintRouletteFinishSFX::
    db $af, $4a
    db $65, $71
    db $af, $4a
    db $af, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param03_ConfirmSFX::
    db $af, $4a
    db $7e, $71
    db $af, $4a
    db $af, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param04_CancelSFX::
    db $af, $4a
    db $9a, $71
    db $af, $4a
    db $af, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param05_FillCellSFX::
    db $af, $4a
    db $e6, $70
    db $af, $4a
    db $ff, $70

SCD_Cmd02_VoiceCommandStreamPointerRow_Param06_FillStepTickSFX::
    db $af, $4a
    db $af, $4a
    db $af, $4a
    db $d3, $70

SCD_Cmd02_VoiceCommandStreamPointerRow_Param07_ResetCellSFX::
    db $af, $4a
    db $af, $4a
    db $af, $4a
    db $ad, $70

SCD_Cmd02_VoiceCommandStreamPointerRow_Param08_LevelSelect_AdvanceLevelSFX::
    db $af, $4a
    db $92, $70
    db $af, $4a
    db $af, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param09_MistakeSFX::
    db $af, $4a
    db $70, $70
    db $af, $4a
    db $af, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param0A_MenuCursorMoveSFX::
    db $af, $4a
    db $4e, $70
    db $af, $4a
    db $af, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param0B_PuzzleCursorMoveSFX::
    db $af, $4a
    db $41, $70
    db $af, $4a
    db $af, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param0C_MarkXSFX::
    db $af, $4a
    db $22, $70
    db $af, $4a
    db $af, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param0D_LowTimeWarningSFX::
    db $af, $4a
    db $05, $70
    db $af, $4a
    db $af, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param0E_Unused::
    db $af, $4a
    db $e7, $6f
    db $af, $4a
    db $af, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param0F_Unused::
    db $b3, $67
    db $d4, $67
    db $af, $4a
    db $af, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param10_OpenPauseMenuSFX::
    db $af, $4a
    db $b5, $6f
    db $af, $4a
    db $af, $4a

SCD_Cmd02_Param10_CommandStream_Voice2_Setup::
    db $fa, $71, $f0, $00, $00, $00, $fb, $33, $e3, $f7, $0f

SCD_Cmd02_Param10_CommandStream_Voice2_Phrase01::
    db $52, $02, $52, $e9, $52, $02, $52, $ea, $f7, $08, $52, $02, $52, $e9, $52, $02
    db $52, $ea, $f7, $04, $52, $02, $52, $e9, $52, $02, $52, $ea, $f7, $01, $52, $02
    db $52, $e9, $52, $02, $52, $ea, $ef

SCD_Cmd02_Param0E_CommandStream_Voice2_Setup::
    db $fa, $00, $f7, $0f, $f0, $00, $00, $00, $fb, $33, $e7

SCD_Cmd02_Param0E_CommandStream_Voice2_Phrase01::
    db $03, $f7, $0c, $e6, $00, $d0, $10, $d0, $20, $e3, $00, $d0, $ea, $00, $d0, $ea
    db $00, $d0, $ef

SCD_Cmd02_Param0D_CommandStream_Voice2_Setup::
    db $fa, $00, $f7, $09, $f0, $01, $00, $00, $fb, $33, $e6

SCD_Cmd02_Param0D_CommandStream_Voice2_Phrase01::
    db $03, $d3, $ea, $ea, $03, $f7, $07, $03, $f7, $05, $03, $f7, $03, $03, $f7, $01
    db $03, $ef

SCD_Cmd02_Param0C_CommandStream_Voice2_Setup::
    db $fa, $00, $f7, $0f, $f0, $00, $00, $00, $fb, $33, $e3, $f7, $0c

SCD_Cmd02_Param0C_CommandStream_Voice2_Phrase01::
    db $00, $d0, $ea, $00, $d0, $ea, $00, $d0, $e9, $e9, $e9, $e9, $00, $d0, $10, $d0
    db $20, $ef

SCD_Cmd02_Param0B_CommandStream_Voice2_Setup::
    db $fa, $00, $f7, $0f, $f0, $00, $00, $00, $fb, $33, $e3

SCD_Cmd02_Param0B_CommandStream_Voice2_Phrase01::
    db $00, $ef

SCD_Cmd02_Param0A_CommandStream_Voice2_Setup::
    db $fa, $00, $f7, $0f, $f0, $00, $00, $00, $fb, $33, $e5

SCD_Cmd02_Param0A_CommandStream_Voice2_Phrase01::
    db $b1, $31, $f7, $0c, $b1, $31, $f7, $09, $b1, $31, $f7, $06, $b1, $31, $f7, $03
    db $b1, $31, $f7, $01, $b1, $31, $ef

SCD_Cmd02_Param09_CommandStream_Voice2_Setup::
    db $fa, $00, $f7, $0f, $f0, $01, $00, $00, $fb, $33, $e7

SCD_Cmd02_Param09_CommandStream_Voice2_Phrase01::
    db $03, $e4, $f7, $0f, $b0, $a0, $91, $f7, $0c, $a0, $90, $81, $f7, $09, $90, $80
    db $71, $f7, $06, $80, $70, $61, $ef

SCD_Cmd02_Param08_CommandStream_Voice2_Setup::
    db $fa, $00, $f7, $0f, $f0, $00, $00, $00, $fb, $33, $e2

SCD_Cmd02_Param08_CommandStream_Voice2_Phrase01::
    db $00, $d0, $70, $d0, $e9, $00, $d0, $e2, $00, $d0, $ea, $00, $d0, $ea, $00, $ef

SCD_Cmd02_Param07_CommandStream_Voice4_Setup::
    db $fa, $00, $f7, $0f, $fb, $33

SCD_Cmd02_Param07_CommandStream_Voice4_Phrase01::
    db $d3, $fc, $47, $00, $d2, $fc, $46, $00, $d2, $fc, $45, $00, $d1, $fc, $44, $00
    db $d1, $fc, $43, $00, $d0, $fc, $42, $00, $d0, $fc, $41, $00, $fc, $40, $00, $ef

SCD_Cmd02_Param06_CommandStream_Voice4_Setup::
    db $fa, $00, $f7, $07, $fb, $33, $fc, $00

SCD_Cmd02_Param06_CommandStream_Voice4_Phrase01::
    db $00, $fc, $02, $00, $fc, $04, $00, $fc, $06, $00, $ef

SCD_Cmd02_Param05_CommandStream_Voice2_Setup::
    db $fa, $00, $f7, $0f, $f0, $00, $00, $00, $fb, $33, $e7

SCD_Cmd02_Param05_CommandStream_Voice2_Phrase01::
    db $03, $f7, $0c, $03, $f7, $09, $03, $f7, $06, $03, $f7, $03, $03, $ef

SCD_Cmd02_Param05_CommandStream_Voice4_Setup::
    db $fa, $00, $f7, $0f, $fb, $33

SCD_Cmd02_Param05_CommandStream_Voice4_Phrase01::
    db $d3, $fc, $20, $00, $d1, $fc, $40, $00, $d1, $fc, $60, $00, $d1, $fc, $61, $00
    db $d1, $fc, $62, $00, $d1, $fc, $63, $00, $d1, $fc, $64, $00, $d1, $ef

SCD_Cmd02_Param00_CommandStream_Voice1_Setup::
    db $fa, $65, $e4, $f7, $08, $f0, $20, $02, $00, $fb, $13

SCD_Cmd02_Param00_CommandStream_Voice1_Phrase01::
    db $03, $f7, $06, $53, $ef

SCD_Cmd02_Param00_CommandStream_Voice2_Setup::
    db $fa, $65, $e4, $f7, $08, $f0, $20, $02, $00, $fb, $23

SCD_Cmd02_Param00_CommandStream_Voice2_Phrase01::
    db $53, $f7, $06, $93, $ef

SCD_Cmd02_Param01_CommandStream_Voice1_Setup::
    db $fa, $65, $e4, $f7, $08, $f0, $20, $02, $00, $fb, $13

SCD_Cmd02_Param01_CommandStream_Voice1_Phrase01::
    db $53, $f7, $06, $03, $d1, $ef

SCD_Cmd02_Param01_CommandStream_Voice2_Setup::
    db $fa, $65, $e4, $f7, $08, $f0, $20, $02, $00, $fb, $23

SCD_Cmd02_Param01_CommandStream_Voice2_Phrase01::
    db $93, $f7, $06, $53, $d1, $ef

SCD_Cmd02_Param02_CommandStream_Voice2_Setup::
    db $fa, $78, $e4, $f7, $0d, $f0, $12, $02, $00, $fb, $33

SCD_Cmd02_Param02_CommandStream_Voice2_Phrase01::
    db $02, $22, $42, $f7, $0b, $22, $42, $52, $f7, $09, $42, $52, $72, $ef

SCD_Cmd02_Param03_CommandStream_Voice2_Setup::
    db $fa, $72, $e4, $f7, $0f, $f0, $10, $01, $00, $fb, $33

SCD_Cmd02_Param03_CommandStream_Voice2_Phrase01::
    db $22, $42, $72, $b2, $f7, $07, $22, $42, $72, $b2, $f7, $03, $22, $42, $72, $b2
    db $ef

SCD_Cmd02_Param04_CommandStream_Voice2_Setup::
    db $fa, $72, $e4, $f7, $0f, $f0, $10, $01, $00, $fb, $33

SCD_Cmd02_Param04_CommandStream_Voice2_Phrase01::
    db $b2, $72, $42, $22, $f7, $07, $b2, $72, $42, $22, $f7, $03, $b2, $72, $42, $22
    db $ef

    ; padding
    ds $e4a, $00
