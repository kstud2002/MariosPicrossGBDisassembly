; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

Jumpvector_SoundCommandDispatcher::
    jp SoundCommandDispatcher                     ; $4000: $c3 $58 $42


Jumpvector_SoundEngineUpdateRoutine::
    jp SoundEngine_FrameTickRoutine               ; $4003: $c3 $ca $43


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
    db $64, $42
    db $a5, $42
    db $dd, $42
    db $a9, $43
    db $b7, $43
    db $bc, $43
    db $c1, $43
    db $c5, $43

SoundEngine_EOpcodeDispatchPointerTable::
    db $23, $46
    db $23, $46
    db $23, $46
    db $23, $46
    db $23, $46
    db $23, $46
    db $23, $46
    db $23, $46
    db $23, $46
    db $30, $46
    db $3f, $46
    db $4d, $46
    db $4d, $46
    db $c5, $44
    db $db, $44
    db $e4, $44

SoundEngine_FOpcodeDispatchPointerTable::
    db $5c, $45
    db $93, $45
    db $ab, $45
    db $4d, $46
    db $ff, $45
    db $74, $45
    db $e6, $45
    db $d7, $45
    db $4d, $46
    db $f3, $45
    db $c3, $45
    db $17, $46
    db $0b, $46
    db $4d, $46
    db $45, $45
    db $4d, $46

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
    ld hl, SoundCommandDispatcher_Cmd00To07PointerTable; $4258: $21 $80 $40
    push af                                       ; $425b: $f5
    add a                                         ; $425c: $87
    add l                                         ; $425d: $85
    ld l, a                                       ; $425e: $6f
    ld a, [hl+]                                   ; $425f: $2a
    ld h, [hl]                                    ; $4260: $66
    ld l, a                                       ; $4261: $6f
    pop af                                        ; $4262: $f1
    jp hl                                         ; $4263: $e9


SoundCommandDispatcher_Cmd00_ResetAPUDriverState::
    ld hl, SoundCommandDispatcher_Cmd00_APURegisterInitPairs; $4264: $21 $86 $42

.ApplyAPURegisterInitPairsLoop:
    ld a, [hl+]                                   ; $4267: $2a
    or a                                          ; $4268: $b7
    jr z, .ClearRuntimeStateBlock                 ; $4269: $28 $05

    ld c, a                                       ; $426b: $4f
    ld a, [hl+]                                   ; $426c: $2a
    ldh [c], a                                    ; $426d: $e2
    jr .ApplyAPURegisterInitPairsLoop             ; $426e: $18 $f7

.ClearRuntimeStateBlock:
    ld b, $0c                                     ; $4270: $06 $0c
    ld hl, rSoundCurrentVoiceIndex                ; $4272: $21 $02 $dd
    xor a                                         ; $4275: $af

.ClearRuntimeStateBlockLoop:
    ld [hl+], a                                   ; $4276: $22
    dec b                                         ; $4277: $05
    jr nz, .ClearRuntimeStateBlockLoop            ; $4278: $20 $fc

    call SoundEngine_LoadWaveRAMPresetByIndex     ; $427a: $cd $76 $49
    ld a, $ff                                     ; $427d: $3e $ff
    ld [rSoundUpperVoiceGroupCommandIndex], a     ; $427f: $ea $00 $dd
    ld [rSoundLowerVoiceGroupCommandIndex], a     ; $4282: $ea $01 $dd
    ret                                           ; $4285: $c9


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
    ld a, c                                       ; $42a5: $79
    ld [rSoundUpperVoiceGroupCommandIndex], a     ; $42a6: $ea $00 $dd
    ld de, SCD_Cmd01_VoiceCommandStreamPointerRow_Param00_DeactivateBGM; $42a9: $11 $7d $4a
    cp $ff                                        ; $42ac: $fe $ff
    jr nz, .LoadUpperVoiceScriptPointerRow        ; $42ae: $20 $07

    ld de, SCD_Cmd01_02_VoiceCommandStreamPointerRow_ParamFF; $42b0: $11 $74 $4a
    xor a                                         ; $42b3: $af
    ld [rSoundEvent01FFOverrideState_Unsure], a   ; $42b4: $ea $0d $dd

.LoadUpperVoiceScriptPointerRow:
    ld hl, rSoundVoiceScriptPointerRowBuffer      ; $42b7: $21 $28 $dd
    call CopyIndexed8ByteRowToHLFromDE            ; $42ba: $cd $99 $48
    ld hl, rSoundActiveVoiceMask                  ; $42bd: $21 $04 $dd
    ld a, $f0                                     ; $42c0: $3e $f0
    or [hl]                                       ; $42c2: $b6
    ld [hl], a                                    ; $42c3: $77
    ld hl, SoundCommandDispatcher_Cmd02_RuntimeStateInitTable; $42c4: $21 $6b $43

.ClearPerVoiceSecondaryStateBlocksLoop:
    ld c, [hl]                                    ; $42c7: $4e
    inc hl                                        ; $42c8: $23
    ld a, [hl]                                    ; $42c9: $7e
    inc hl                                        ; $42ca: $23
    or a                                          ; $42cb: $b7
    ret z                                         ; $42cc: $c8

    ld b, a                                       ; $42cd: $47
    ld e, [hl]                                    ; $42ce: $5e
    inc hl                                        ; $42cf: $23
    ld d, [hl]                                    ; $42d0: $56
    inc hl                                        ; $42d1: $23
    push hl                                       ; $42d2: $e5
    ld hl, $0008                                  ; $42d3: $21 $08 $00
    add hl, bc                                    ; $42d6: $09
    call SoundEngine_FillFourWordEntriesWithDEAtHL; $42d7: $cd $8d $48
    pop hl                                        ; $42da: $e1
    jr .ClearPerVoiceSecondaryStateBlocksLoop     ; $42db: $18 $ea

SoundCommandDispatcher_Cmd02_ResetVoicesAndStartLowerVoiceGroup::
    push bc                                       ; $42dd: $c5
    ld hl, rSoundCurrentVoiceIndex                ; $42de: $21 $02 $dd
    xor a                                         ; $42e1: $af
    ld [hl], a                                    ; $42e2: $77
    ld a, [rSoundActiveVoiceMask]                 ; $42e3: $fa $04 $dd
    ld c, $10                                     ; $42e6: $0e $10
    ld d, $01                                     ; $42e8: $16 $01
    ld b, $04                                     ; $42ea: $06 $04

.InitPerVoiceMaskLoop:
    push af                                       ; $42ec: $f5
    ld a, d                                       ; $42ed: $7a
    ld [rSoundCurrentVoiceMaskBit], a             ; $42ee: $ea $06 $dd
    ld a, [rSoundActiveVoiceMask]                 ; $42f1: $fa $04 $dd
    and c                                         ; $42f4: $a1
    and $0f                                       ; $42f5: $e6 $0f
    ld [rSoundCurrentVoiceMuteMask], a            ; $42f7: $ea $05 $dd
    rlc c                                         ; $42fa: $cb $01

.RotateVoiceMaskAndProcessActiveVoice:
    rlc d                                         ; $42fc: $cb $02
    pop af                                        ; $42fe: $f1
    rrca                                          ; $42ff: $0f
    jr nc, .AdvanceVoiceSlotIndexAndLoop          ; $4300: $30 $09

    push af                                       ; $4302: $f5
    push bc                                       ; $4303: $c5
    push hl                                       ; $4304: $e5
    call SoundEngine_DeactivateCurrentVoiceAndUpdateActiveMasks; $4305: $cd $fc $44
    pop hl                                        ; $4308: $e1
    pop bc                                        ; $4309: $c1
    pop af                                        ; $430a: $f1

.AdvanceVoiceSlotIndexAndLoop:
    inc [hl]                                      ; $430b: $34
    dec b                                         ; $430c: $05
    jr nz, .InitPerVoiceMaskLoop                  ; $430d: $20 $dd

    pop bc                                        ; $430f: $c1
    ld a, c                                       ; $4310: $79
    ld [rSoundLowerVoiceGroupCommandIndex], a     ; $4311: $ea $01 $dd
    ld de, SCD_Cmd02_VoiceCommandStreamPointerRow_Param00_Unused; $4314: $11 $fa $6e
    cp $ff                                        ; $4317: $fe $ff
    jr nz, .LoadLowerVoiceScriptPointerRow        ; $4319: $20 $07

    ld de, SCD_Cmd01_02_VoiceCommandStreamPointerRow_ParamFF; $431b: $11 $74 $4a
    xor a                                         ; $431e: $af
    ld [rSoundVoiceGroupAttenuationTable], a      ; $431f: $ea $0c $dd

.LoadLowerVoiceScriptPointerRow:
    ld hl, rSoundVoiceScriptPointerTable          ; $4322: $21 $20 $dd
    call CopyIndexed8ByteRowToHLFromDE            ; $4325: $cd $99 $48
    ld a, c                                       ; $4328: $79
    cp $ff                                        ; $4329: $fe $ff
    jr z, .InitRuntimeClearTableCursor            ; $432b: $28 $25

    ld a, [rSoundActiveVoiceMask]                 ; $432d: $fa $04 $dd
    or $0f                                        ; $4330: $f6 $0f
    ld d, a                                       ; $4332: $57
    ld e, $fe                                     ; $4333: $1e $fe
    ld b, $04                                     ; $4335: $06 $04
    ld hl, rSoundVoiceScriptPointerTable          ; $4337: $21 $20 $dd

.ClearActiveMaskBitIfScriptStartsWithEF:
    push hl                                       ; $433a: $e5
    ld a, [hl+]                                   ; $433b: $2a
    ld h, [hl]                                    ; $433c: $66
    ld l, a                                       ; $433d: $6f
    ld a, [hl]                                    ; $433e: $7e
    cp $ef                                        ; $433f: $fe $ef
    jr nz, .AdvanceMaskBitAndRowPointer           ; $4341: $20 $03

    ld a, d                                       ; $4343: $7a
    and e                                         ; $4344: $a3
    ld d, a                                       ; $4345: $57

.AdvanceMaskBitAndRowPointer:
    rlc e                                         ; $4346: $cb $03
    pop hl                                        ; $4348: $e1
    inc hl                                        ; $4349: $23
    inc hl                                        ; $434a: $23
    dec b                                         ; $434b: $05
    jr nz, .ClearActiveMaskBitIfScriptStartsWithEF; $434c: $20 $ec

    ld a, d                                       ; $434e: $7a
    ld [rSoundActiveVoiceMask], a                 ; $434f: $ea $04 $dd

.InitRuntimeClearTableCursor:
    ld hl, SoundCommandDispatcher_Cmd02_RuntimeStateInitTable; $4352: $21 $6b $43

.ClearRuntimeTablesFromInitTable:
    ld c, [hl]                                    ; $4355: $4e
    inc hl                                        ; $4356: $23
    ld a, [hl]                                    ; $4357: $7e
    inc hl                                        ; $4358: $23
    or a                                          ; $4359: $b7
    ret z                                         ; $435a: $c8

    ld b, a                                       ; $435b: $47
    ld e, [hl]                                    ; $435c: $5e
    inc hl                                        ; $435d: $23
    ld d, [hl]                                    ; $435e: $56
    inc hl                                        ; $435f: $23
    push hl                                       ; $4360: $e5
    ld hl, $0000                                  ; $4361: $21 $00 $00
    add hl, bc                                    ; $4364: $09
    call SoundEngine_FillFourWordEntriesWithDEAtHL; $4365: $cd $8d $48
    pop hl                                        ; $4368: $e1
    jr .ClearRuntimeTablesFromInitTable           ; $4369: $18 $ea

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
    ld hl, rSoundDeferredSGBPacketHeader          ; $43a9: $21 $0e $dd
    ld [hl], $41                                  ; $43ac: $36 $41
    inc hl                                        ; $43ae: $23
    ld [hl], b                                    ; $43af: $70
    inc hl                                        ; $43b0: $23
    ld [hl], c                                    ; $43b1: $71
    inc hl                                        ; $43b2: $23
    ld [hl], d                                    ; $43b3: $72
    inc hl                                        ; $43b4: $23
    ld [hl], e                                    ; $43b5: $73
    ret                                           ; $43b6: $c9


SoundCommandDispatcher_Cmd04_InvokeCmd01WithFF::
    ld c, $ff                                     ; $43b7: $0e $ff
    jp SoundCommandDispatcher_Cmd01_StartUpperVoiceGroup; $43b9: $c3 $a5 $42


SoundCommandDispatcher_Cmd05_InvokeCmd02WithFF::
    ld c, $ff                                     ; $43bc: $0e $ff
    jp SoundCommandDispatcher_Cmd02_ResetVoicesAndStartLowerVoiceGroup; $43be: $c3 $dd $42


SoundCommandDispatcher_Cmd06_ReadUpperVoiceGroupCommandIndex::
    ld a, [rSoundUpperVoiceGroupCommandIndex]     ; $43c1: $fa $00 $dd
    ret                                           ; $43c4: $c9


SoundCommandDispatcher_Cmd07_ReadLowerVoiceGroupCommandIndex::
    ld a, [rSoundLowerVoiceGroupCommandIndex]     ; $43c5: $fa $01 $dd
    ret                                           ; $43c8: $c9


    ret                                           ; $43c9: $c9


SoundEngine_FrameTickRoutine::
    ld a, [rSoundDeferredSGBPacketHeader]         ; $43ca: $fa $0e $dd
    inc a                                         ; $43cd: $3c
    jr z, .InitPerFrameVoiceIterationState        ; $43ce: $28 $08

    call SoundEngine_SendDeferredSGBPacketWithClearedPayloadTail; $43d0: $cd $1a $4a
    ld a, $ff                                     ; $43d3: $3e $ff
    ld [rSoundDeferredSGBPacketHeader], a         ; $43d5: $ea $0e $dd

.InitPerFrameVoiceIterationState:
    ld hl, rSoundCurrentVoiceIndex                ; $43d8: $21 $02 $dd
    xor a                                         ; $43db: $af
    ld [hl], a                                    ; $43dc: $77
    ld a, [rSoundActiveVoiceMask]                 ; $43dd: $fa $04 $dd
    ld c, $10                                     ; $43e0: $0e $10
    ld d, $01                                     ; $43e2: $16 $01
    ld b, $08                                     ; $43e4: $06 $08

.PerVoiceTickLoop:
    push af                                       ; $43e6: $f5
    xor a                                         ; $43e7: $af
    ld [rSoundCurrentVoiceUpdateFlags], a         ; $43e8: $ea $07 $dd
    ld a, d                                       ; $43eb: $7a
    ld [rSoundCurrentVoiceMaskBit], a             ; $43ec: $ea $06 $dd
    ld a, [rSoundActiveVoiceMask]                 ; $43ef: $fa $04 $dd
    and c                                         ; $43f2: $a1
    and $0f                                       ; $43f3: $e6 $0f
    ld [rSoundCurrentVoiceMuteMask], a            ; $43f5: $ea $05 $dd
    rlc c                                         ; $43f8: $cb $01
    rlc d                                         ; $43fa: $cb $02

SoundEngine_ProcessActiveVoiceIfSet::
    pop af                                        ; $43fc: $f1
    rrca                                          ; $43fd: $0f
    jr nc, .AdvanceVoiceIndexAndLoop              ; $43fe: $30 $09

    push af                                       ; $4400: $f5
    push bc                                       ; $4401: $c5
    push hl                                       ; $4402: $e5
    call SoundEngine_ProcessVoiceTick             ; $4403: $cd $0e $44
    pop hl                                        ; $4406: $e1
    pop bc                                        ; $4407: $c1
    pop af                                        ; $4408: $f1

.AdvanceVoiceIndexAndLoop:
    inc [hl]                                      ; $4409: $34
    dec b                                         ; $440a: $05
    jr nz, .PerVoiceTickLoop                      ; $440b: $20 $d9

    ret                                           ; $440d: $c9


SoundEngine_ProcessVoiceTick::
    ld a, [rSoundCurrentVoiceIndex]               ; $440e: $fa $02 $dd
    ld c, a                                       ; $4411: $4f
    ld hl, rSoundVoiceNoteTickCountdownTable      ; $4412: $21 $40 $dd
    add a                                         ; $4415: $87
    add l                                         ; $4416: $85
    ld l, a                                       ; $4417: $6f
    ld a, [hl]                                    ; $4418: $7e
    or a                                          ; $4419: $b7
    jp nz, SoundEngine_UpdateVoiceStateAndCommitAPURegisters; $441a: $c2 $5c $46

    ld hl, rSoundVoiceScriptPointerTable          ; $441d: $21 $20 $dd
    ld a, c                                       ; $4420: $79
    add a                                         ; $4421: $87
    add l                                         ; $4422: $85
    ld l, a                                       ; $4423: $6f
    ld e, [hl]                                    ; $4424: $5e
    inc hl                                        ; $4425: $23
    ld d, [hl]                                    ; $4426: $56

SoundEngine_DispatchVoiceOpcode::
    ld a, [de]                                    ; $4427: $1a
    and $f0                                       ; $4428: $e6 $f0
    cp $f0                                        ; $442a: $fe $f0
    jr nz, .HandleE0OpcodeGroup                   ; $442c: $20 $0d

    ld a, [de]                                    ; $442e: $1a
    and $0f                                       ; $442f: $e6 $0f
    ld hl, SoundEngine_FOpcodeDispatchPointerTable; $4431: $21 $b0 $40
    add a                                         ; $4434: $87
    add l                                         ; $4435: $85
    ld l, a                                       ; $4436: $6f
    ld a, [hl+]                                   ; $4437: $2a
    ld h, [hl]                                    ; $4438: $66
    ld l, a                                       ; $4439: $6f
    jp hl                                         ; $443a: $e9


.HandleE0OpcodeGroup:
    cp $e0                                        ; $443b: $fe $e0
    jr nz, .HandleVoiceDataOpcode                 ; $443d: $20 $0d

    ld a, [de]                                    ; $443f: $1a
    and $0f                                       ; $4440: $e6 $0f
    ld hl, SoundEngine_EOpcodeDispatchPointerTable; $4442: $21 $90 $40
    add a                                         ; $4445: $87
    add l                                         ; $4446: $85
    ld l, a                                       ; $4447: $6f
    ld a, [hl+]                                   ; $4448: $2a
    ld h, [hl]                                    ; $4449: $66
    ld l, a                                       ; $444a: $6f
    jp hl                                         ; $444b: $e9


.HandleVoiceDataOpcode:
    ld hl, rSoundVoiceControlTable                ; $444c: $21 $30 $dd
    ld a, c                                       ; $444f: $79
    add a                                         ; $4450: $87
    add l                                         ; $4451: $85
    ld l, a                                       ; $4452: $6f
    ld a, [de]                                    ; $4453: $1a
    and $f0                                       ; $4454: $e6 $f0
    cp $d0                                        ; $4456: $fe $d0
    jr nz, .ComputeVoicePitchControlByteFromOpcodeHighNibble; $4458: $20 $04

    ld a, $ff                                     ; $445a: $3e $ff
    jr .StoreVoicePitchControlByteForCurrentVoice ; $445c: $18 $0f

.ComputeVoicePitchControlByteFromOpcodeHighNibble:
    push hl                                       ; $445e: $e5
    ld a, [hl]                                    ; $445f: $7e
    ld l, $0c                                     ; $4460: $2e $0c
    call SoundEngine_MultiplyLByALowNibble        ; $4462: $cd $71 $48
    ld l, a                                       ; $4465: $6f
    ld a, [de]                                    ; $4466: $1a
    and $f0                                       ; $4467: $e6 $f0
    swap a                                        ; $4469: $cb $37
    add l                                         ; $446b: $85
    pop hl                                        ; $446c: $e1

.StoreVoicePitchControlByteForCurrentVoice:
    inc hl                                        ; $446d: $23
    ld [hl], a                                    ; $446e: $77
    ld b, $00                                     ; $446f: $06 $00

.AccumulateTickUnitsFromC0Chain:
    ld a, [de]                                    ; $4471: $1a
    and $0f                                       ; $4472: $e6 $0f
    ld hl, SoundEngine_NoteLengthTickTable        ; $4474: $21 $4c $41
    add l                                         ; $4477: $85
    ld l, a                                       ; $4478: $6f
    ld a, [hl]                                    ; $4479: $7e
    add b                                         ; $447a: $80
    ld b, a                                       ; $447b: $47
    inc de                                        ; $447c: $13
    ld a, [de]                                    ; $447d: $1a
    and $f0                                       ; $447e: $e6 $f0
    cp $c0                                        ; $4480: $fe $c0
    jr z, .AccumulateTickUnitsFromC0Chain         ; $4482: $28 $ed

    ld hl, rSoundVoiceNoteTickCountdownTable      ; $4484: $21 $40 $dd
    ld a, c                                       ; $4487: $79
    add a                                         ; $4488: $87
    add l                                         ; $4489: $85
    ld l, a                                       ; $448a: $6f
    ld [hl], b                                    ; $448b: $70
    ld hl, rSoundVoiceTickRateTable               ; $448c: $21 $50 $dd
    ld a, c                                       ; $448f: $79
    add a                                         ; $4490: $87
    add l                                         ; $4491: $85
    ld l, a                                       ; $4492: $6f
    ld a, [hl]                                    ; $4493: $7e
    or a                                          ; $4494: $b7
    jr nz, .ApplyVoiceRateScalingToTickUnits      ; $4495: $20 $04

    ld b, $00                                     ; $4497: $06 $00
    jr .StoreScaledTickTargetAndRequestRegisterUpdates; $4499: $18 $18

.ApplyVoiceRateScalingToTickUnits:
    ld l, b                                       ; $449b: $68
    ld h, $00                                     ; $449c: $26 $00
    call SoundEngine_MultiplyHLByA_8Bit           ; $449e: $cd $5a $48
    srl h                                         ; $44a1: $cb $3c
    rr l                                          ; $44a3: $cb $1d
    srl h                                         ; $44a5: $cb $3c
    rr l                                          ; $44a7: $cb $1d
    srl h                                         ; $44a9: $cb $3c
    rr l                                          ; $44ab: $cb $1d
    ld b, l                                       ; $44ad: $45
    ld a, b                                       ; $44ae: $78
    or a                                          ; $44af: $b7
    jr nz, .StoreScaledTickTargetAndRequestRegisterUpdates; $44b0: $20 $01

    inc b                                         ; $44b2: $04

.StoreScaledTickTargetAndRequestRegisterUpdates:
    ld hl, rSoundVoiceScaledTickTargetTable       ; $44b3: $21 $60 $dd
    ld a, c                                       ; $44b6: $79
    add a                                         ; $44b7: $87
    add l                                         ; $44b8: $85
    ld l, a                                       ; $44b9: $6f
    ld [hl], b                                    ; $44ba: $70
    ld hl, rSoundCurrentVoiceUpdateFlags          ; $44bb: $21 $07 $dd
    ld a, $f9                                     ; $44be: $3e $f9
    or [hl]                                       ; $44c0: $b6
    ld [hl], a                                    ; $44c1: $77
    jp SoundEngine_SaveVoiceScriptPointer         ; $44c2: $c3 $52 $46


SoundEngine_OpED_SetGroupAttenuationFromNibble::
    ld a, c                                       ; $44c5: $79
    ld hl, rSoundVoiceGroupAttenuationTable       ; $44c6: $21 $0c $dd
    srl a                                         ; $44c9: $cb $3f
    srl a                                         ; $44cb: $cb $3f
    add l                                         ; $44cd: $85
    ld l, a                                       ; $44ce: $6f
    inc de                                        ; $44cf: $13
    ld a, [de]                                    ; $44d0: $1a
    and $0f                                       ; $44d1: $e6 $0f
    ld b, a                                       ; $44d3: $47
    ld a, $0f                                     ; $44d4: $3e $0f
    sub b                                         ; $44d6: $90
    ld [hl], a                                    ; $44d7: $77
    jp SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $44d8: $c3 $4d $46


SoundEngine_OpEE_JumpToInlinePointer::
    ld h, d                                       ; $44db: $62
    ld l, e                                       ; $44dc: $6b
    inc hl                                        ; $44dd: $23
    ld e, [hl]                                    ; $44de: $5e
    inc hl                                        ; $44df: $23
    ld d, [hl]                                    ; $44e0: $56
    jp SoundCommandDispatcher_ContinueVoiceStreamDispatch; $44e1: $c3 $4e $46


SoundEngine_OpEF_ReturnOrStopVoice::
    ld hl, rSoundVoiceCallReturnPointerTable      ; $44e4: $21 $40 $de
    ld a, c                                       ; $44e7: $79
    add a                                         ; $44e8: $87
    add l                                         ; $44e9: $85
    ld l, a                                       ; $44ea: $6f
    xor a                                         ; $44eb: $af
    ld e, [hl]                                    ; $44ec: $5e
    ld [hl], a                                    ; $44ed: $77
    inc hl                                        ; $44ee: $23
    ld d, [hl]                                    ; $44ef: $56
    ld [hl], a                                    ; $44f0: $77
    ld a, d                                       ; $44f1: $7a
    or a                                          ; $44f2: $b7
    jp nz, SoundCommandDispatcher_ContinueVoiceStreamDispatch; $44f3: $c2 $4e $46

    call SoundEngine_DeactivateCurrentVoiceAndUpdateActiveMasks; $44f6: $cd $fc $44
    jp SoundEngine_SaveVoiceScriptPointer         ; $44f9: $c3 $52 $46


SoundEngine_DeactivateCurrentVoiceAndUpdateActiveMasks::
    ld a, [rSoundCurrentVoiceIndex]               ; $44fc: $fa $02 $dd
    ld c, a                                       ; $44ff: $4f
    call SoundEngine_CheckVoiceMuteGate           ; $4500: $cd $ab $48
    jr c, .FinalizeVoiceDeactivationMasks         ; $4503: $38 $1e

    xor a                                         ; $4505: $af
    call SoundEngine_WriteVoiceVolumeNibble       ; $4506: $cd $0b $49
    ld a, c                                       ; $4509: $79
    cp $04                                        ; $450a: $fe $04
    jr nc, .FinalizeVoiceDeactivationMasks        ; $450c: $30 $15

    ld a, [rSoundCurrentVoiceMaskBit]             ; $450e: $fa $06 $dd
    swap a                                        ; $4511: $cb $37
    ld hl, rSoundActiveVoiceMask                  ; $4513: $21 $04 $dd
    and [hl]                                      ; $4516: $a6
    jr z, .FinalizeVoiceDeactivationMasks         ; $4517: $28 $0a

    ld hl, rSoundHighVoiceUpdateFlagsTable        ; $4519: $21 $08 $dd
    ld a, c                                       ; $451c: $79
    add l                                         ; $451d: $85
    ld l, a                                       ; $451e: $6f
    ld a, $f0                                     ; $451f: $3e $f0
    or [hl]                                       ; $4521: $b6
    ld [hl], a                                    ; $4522: $77

.FinalizeVoiceDeactivationMasks:
    ld b, c                                       ; $4523: $41
    inc b                                         ; $4524: $04
    xor a                                         ; $4525: $af
    dec a                                         ; $4526: $3d

.BuildVoiceClearMaskLoop:
    rla                                           ; $4527: $17
    dec b                                         ; $4528: $05
    jr nz, .BuildVoiceClearMaskLoop               ; $4529: $20 $fc

    ld hl, rSoundActiveVoiceMask                  ; $452b: $21 $04 $dd
    and [hl]                                      ; $452e: $a6
    ld [hl], a                                    ; $452f: $77
    push af                                       ; $4530: $f5
    and $f0                                       ; $4531: $e6 $f0
    jr nz, .MaybeResetLowerVoiceGroupCommandIndex ; $4533: $20 $05

    ld a, $ff                                     ; $4535: $3e $ff
    ld [rSoundUpperVoiceGroupCommandIndex], a     ; $4537: $ea $00 $dd

.MaybeResetLowerVoiceGroupCommandIndex:
    pop af                                        ; $453a: $f1
    and $0f                                       ; $453b: $e6 $0f
    jr nz, .Return                                ; $453d: $20 $05

    ld a, $ff                                     ; $453f: $3e $ff
    ld [rSoundLowerVoiceGroupCommandIndex], a     ; $4541: $ea $01 $dd

.Return:
    ret                                           ; $4544: $c9


SoundEngine_OpFE_CallInlinePointer::
    ld hl, rSoundVoiceCallReturnPointerTable      ; $4545: $21 $40 $de
    ld a, c                                       ; $4548: $79
    add a                                         ; $4549: $87
    add l                                         ; $454a: $85
    ld l, a                                       ; $454b: $6f
    inc de                                        ; $454c: $13
    inc de                                        ; $454d: $13
    inc de                                        ; $454e: $13
    ld [hl], e                                    ; $454f: $73
    inc hl                                        ; $4550: $23
    ld [hl], d                                    ; $4551: $72
    dec de                                        ; $4552: $1b
    dec de                                        ; $4553: $1b
    ld h, d                                       ; $4554: $62
    ld l, e                                       ; $4555: $6b
    ld e, [hl]                                    ; $4556: $5e
    inc hl                                        ; $4557: $23
    ld d, [hl]                                    ; $4558: $56
    jp SoundCommandDispatcher_ContinueVoiceStreamDispatch; $4559: $c3 $4e $46


SoundEngine_OpF0_SetTimbreAndTrigger::
    ld hl, rSoundVoiceTimbreTable                 ; $455c: $21 $b0 $dd
    ld a, c                                       ; $455f: $79
    add a                                         ; $4560: $87
    add l                                         ; $4561: $85
    ld l, a                                       ; $4562: $6f
    inc de                                        ; $4563: $13
    ld a, [de]                                    ; $4564: $1a
    inc de                                        ; $4565: $13
    ld [hl], a                                    ; $4566: $77
    ld hl, rSoundVoiceTriggerTable                ; $4567: $21 $c0 $dd
    ld a, c                                       ; $456a: $79
    add a                                         ; $456b: $87
    add l                                         ; $456c: $85
    ld l, a                                       ; $456d: $6f
    ld a, [de]                                    ; $456e: $1a
    inc de                                        ; $456f: $13
    ld [hl], a                                    ; $4570: $77
    jp SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $4571: $c3 $4d $46


SoundEngine_OpF5_SetPitchOffsetGateAndStep::
    ld hl, rSoundVoicePitchOffsetGateTable        ; $4574: $21 $00 $de
    ld a, c                                       ; $4577: $79
    add a                                         ; $4578: $87
    add l                                         ; $4579: $85
    ld l, a                                       ; $457a: $6f
    push hl                                       ; $457b: $e5
    inc hl                                        ; $457c: $23
    inc de                                        ; $457d: $13
    ld a, [de]                                    ; $457e: $1a
    ld [hl], a                                    ; $457f: $77
    ld hl, rSoundVoicePitchStepPhaseTable         ; $4580: $21 $f0 $dd
    ld a, c                                       ; $4583: $79
    add a                                         ; $4584: $87
    add l                                         ; $4585: $85
    ld l, a                                       ; $4586: $6f
    inc de                                        ; $4587: $13
    ld a, [de]                                    ; $4588: $1a
    ld [hl+], a                                   ; $4589: $22
    ld [hl], $00                                  ; $458a: $36 $00
    inc de                                        ; $458c: $13
    ld a, [de]                                    ; $458d: $1a
    pop hl                                        ; $458e: $e1
    ld [hl], a                                    ; $458f: $77
    jp SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $4590: $c3 $4d $46


SoundEngine_OpF1_SetLoopCounterAndBranchPointer::
    ld hl, rSoundVoiceLoopCounterTable            ; $4593: $21 $20 $de
    ld a, c                                       ; $4596: $79
    add a                                         ; $4597: $87
    add l                                         ; $4598: $85
    ld l, a                                       ; $4599: $6f
    inc de                                        ; $459a: $13
    ld a, [de]                                    ; $459b: $1a
    ld [hl], a                                    ; $459c: $77
    ld hl, rSoundVoiceLoopTargetPointerTable      ; $459d: $21 $30 $de
    ld a, c                                       ; $45a0: $79
    add a                                         ; $45a1: $87
    add l                                         ; $45a2: $85
    ld l, a                                       ; $45a3: $6f
    inc de                                        ; $45a4: $13
    ld [hl], e                                    ; $45a5: $73
    inc hl                                        ; $45a6: $23
    ld [hl], d                                    ; $45a7: $72
    jp SoundCommandDispatcher_ContinueVoiceStreamDispatch; $45a8: $c3 $4e $46


SoundEngine_OpF2_DecrementLoopCounterAndBranch::
    ld hl, rSoundVoiceLoopCounterTable            ; $45ab: $21 $20 $de
    ld a, c                                       ; $45ae: $79
    add a                                         ; $45af: $87
    add l                                         ; $45b0: $85
    ld l, a                                       ; $45b1: $6f
    dec [hl]                                      ; $45b2: $35
    jp z, SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $45b3: $ca $4d $46

    ld hl, rSoundVoiceLoopTargetPointerTable      ; $45b6: $21 $30 $de
    ld a, c                                       ; $45b9: $79
    add a                                         ; $45ba: $87
    add l                                         ; $45bb: $85
    ld l, a                                       ; $45bc: $6f
    ld e, [hl]                                    ; $45bd: $5e
    inc hl                                        ; $45be: $23
    ld d, [hl]                                    ; $45bf: $56
    jp SoundCommandDispatcher_ContinueVoiceStreamDispatch; $45c0: $c3 $4e $46


SoundEngine_OpFA_SetVoiceRateFromPackedNibbles::
    ld hl, rSoundVoiceTickRateTable               ; $45c3: $21 $50 $dd
    ld a, c                                       ; $45c6: $79
    add a                                         ; $45c7: $87
    add l                                         ; $45c8: $85
    ld l, a                                       ; $45c9: $6f
    inc de                                        ; $45ca: $13
    ld a, [de]                                    ; $45cb: $1a
    and $f0                                       ; $45cc: $e6 $f0
    swap a                                        ; $45ce: $cb $37
    ld [hl+], a                                   ; $45d0: $22
    ld a, [de]                                    ; $45d1: $1a
    and $0f                                       ; $45d2: $e6 $0f
    ld [hl], a                                    ; $45d4: $77
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $45d5: $18 $76

SoundEngine_OpF7_SetVoiceVolumeFromNibble::
    ld hl, rSoundVoiceVolumeTable                 ; $45d7: $21 $a0 $dd
    ld a, c                                       ; $45da: $79
    add a                                         ; $45db: $87
    add l                                         ; $45dc: $85
    ld l, a                                       ; $45dd: $6f
    inc de                                        ; $45de: $13
    ld a, [de]                                    ; $45df: $1a
    and $0f                                       ; $45e0: $e6 $0f
    ld [hl+], a                                   ; $45e2: $22
    ld [hl], a                                    ; $45e3: $77
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $45e4: $18 $67

SoundEngine_OpF6_SetPitchBaseHighByte::
    ld hl, rSoundVoicePitchBaseTable              ; $45e6: $21 $10 $de
    ld a, c                                       ; $45e9: $79
    add a                                         ; $45ea: $87
    add l                                         ; $45eb: $85
    ld l, a                                       ; $45ec: $6f
    inc hl                                        ; $45ed: $23
    inc de                                        ; $45ee: $13
    ld a, [de]                                    ; $45ef: $1a
    ld [hl], a                                    ; $45f0: $77
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $45f1: $18 $5a

SoundEngine_OpF9_SetPhaseAccumulatorByte::
    ld hl, rSoundVoicePhaseAccumulatorTable       ; $45f3: $21 $e0 $dd
    ld a, c                                       ; $45f6: $79
    add a                                         ; $45f7: $87
    add l                                         ; $45f8: $85
    ld l, a                                       ; $45f9: $6f
    inc de                                        ; $45fa: $13
    ld a, [de]                                    ; $45fb: $1a

SoundEngine_StoreAAndConsume1ByteAndContinue::
    ld [hl], a                                    ; $45fc: $77
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $45fd: $18 $4e

SoundEngine_OpF4_SetPitchBaseLowByte::
    ld hl, rSoundVoicePitchBaseTable              ; $45ff: $21 $10 $de
    ld a, c                                       ; $4602: $79
    add a                                         ; $4603: $87
    add l                                         ; $4604: $85
    ld l, a                                       ; $4605: $6f
    inc de                                        ; $4606: $13
    ld a, [de]                                    ; $4607: $1a
    ld [hl], a                                    ; $4608: $77
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $4609: $18 $42

SoundEngine_OpFC_SetFrequencyLowByte::
    ld hl, rSoundVoiceFrequencyTable              ; $460b: $21 $d0 $dd
    ld a, c                                       ; $460e: $79
    add a                                         ; $460f: $87
    add l                                         ; $4610: $85
    ld l, a                                       ; $4611: $6f
    inc de                                        ; $4612: $13
    ld a, [de]                                    ; $4613: $1a
    ld [hl], a                                    ; $4614: $77
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $4615: $18 $36

SoundEngine_OpFB_SetVoicePanningByte::
    ld hl, rSoundVoiceStereoPanningTable          ; $4617: $21 $90 $dd
    ld a, c                                       ; $461a: $79
    add a                                         ; $461b: $87
    add l                                         ; $461c: $85
    ld l, a                                       ; $461d: $6f
    inc de                                        ; $461e: $13
    ld a, [de]                                    ; $461f: $1a
    ld [hl], a                                    ; $4620: $77
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $4621: $18 $2a

SoundEngine_OpE0ToE8_SetVoiceControlLowNibble::
    ld hl, rSoundVoiceControlTable                ; $4623: $21 $30 $dd
    ld a, c                                       ; $4626: $79
    add a                                         ; $4627: $87
    add l                                         ; $4628: $85
    ld l, a                                       ; $4629: $6f
    ld a, [de]                                    ; $462a: $1a
    and $0f                                       ; $462b: $e6 $0f
    ld [hl], a                                    ; $462d: $77
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $462e: $18 $1d

SoundEngine_OpE9_IncrementVoiceControlLowNibbleTo08::
    ld hl, rSoundVoiceControlTable                ; $4630: $21 $30 $dd
    ld a, c                                       ; $4633: $79
    add a                                         ; $4634: $87
    add l                                         ; $4635: $85
    ld l, a                                       ; $4636: $6f
    ld a, [hl]                                    ; $4637: $7e
    cp $08                                        ; $4638: $fe $08
    jr z, SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $463a: $28 $11

    inc [hl]                                      ; $463c: $34
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $463d: $18 $0e

SoundEngine_OpEA_DecrementVoiceControlLowNibbleTo00::
    ld hl, rSoundVoiceControlTable                ; $463f: $21 $30 $dd
    ld a, c                                       ; $4642: $79
    add a                                         ; $4643: $87
    add l                                         ; $4644: $85
    ld l, a                                       ; $4645: $6f
    ld a, [hl]                                    ; $4646: $7e
    or a                                          ; $4647: $b7
    jr z, SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $4648: $28 $03

    dec [hl]                                      ; $464a: $35
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue; $464b: $18 $00

SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue::
    inc de                                        ; $464d: $13

SoundCommandDispatcher_ContinueVoiceStreamDispatch::
    jp SoundEngine_DispatchVoiceOpcode            ; $464e: $c3 $27 $44


    inc de                                        ; $4651: $13

SoundEngine_SaveVoiceScriptPointer::
    ld hl, rSoundVoiceScriptPointerTable          ; $4652: $21 $20 $dd
    ld a, c                                       ; $4655: $79
    add a                                         ; $4656: $87
    add l                                         ; $4657: $85
    ld l, a                                       ; $4658: $6f
    ld [hl], e                                    ; $4659: $73
    inc hl                                        ; $465a: $23
    ld [hl], d                                    ; $465b: $72

SoundEngine_UpdateVoiceStateAndCommitAPURegisters::
    ld a, [rSoundCurrentVoiceUpdateFlags]         ; $465c: $fa $07 $dd
    and $01                                       ; $465f: $e6 $01
    ld a, [rSoundCurrentVoiceIndex]               ; $4661: $fa $02 $dd
    ld c, a                                       ; $4664: $4f
    jr z, .AdvanceVoiceFrameCounterPath           ; $4665: $28 $22

    ld hl, rSoundVoiceTickAccumulatorTable        ; $4667: $21 $70 $dd
    add a                                         ; $466a: $87
    add l                                         ; $466b: $85
    ld l, a                                       ; $466c: $6f
    xor a                                         ; $466d: $af
    ld [hl], a                                    ; $466e: $77
    ld de, $0010                                  ; $466f: $11 $10 $00
    add hl, de                                    ; $4672: $19
    ld [hl], a                                    ; $4673: $77
    add hl, de                                    ; $4674: $19
    dec de                                        ; $4675: $1b
    ld a, [hl+]                                   ; $4676: $2a
    ld [hl], a                                    ; $4677: $77
    add hl, de                                    ; $4678: $19
    ld a, [hl+]                                   ; $4679: $2a
    ld [hl], a                                    ; $467a: $77
    add hl, de                                    ; $467b: $19
    ld a, [hl+]                                   ; $467c: $2a
    ld [hl], a                                    ; $467d: $77
    ld a, c                                       ; $467e: $79
    and $03                                       ; $467f: $e6 $03
    cp $03                                        ; $4681: $fe $03
    ld b, $00                                     ; $4683: $06 $00
    jr z, .AccumulatePhaseAndHandleOverflow       ; $4685: $28 $1c

    jr .UpdateFrequencyFromPitchBasePath          ; $4687: $18 $17

.AdvanceVoiceFrameCounterPath:
    ld hl, rSoundVoiceFrameCounterTable           ; $4689: $21 $80 $dd
    ld a, [rSoundCurrentVoiceIndex]               ; $468c: $fa $02 $dd
    add a                                         ; $468f: $87
    add l                                         ; $4690: $85
    ld l, a                                       ; $4691: $6f
    inc [hl]                                      ; $4692: $34
    ld b, [hl]                                    ; $4693: $46
    ld a, c                                       ; $4694: $79
    and $03                                       ; $4695: $e6 $03
    cp $03                                        ; $4697: $fe $03
    jr z, .AccumulatePhaseAndHandleOverflow       ; $4699: $28 $08

    push bc                                       ; $469b: $c5
    call SoundEngine_HandleVoiceTrigger           ; $469c: $cd $9f $47
    pop bc                                        ; $469f: $c1

.UpdateFrequencyFromPitchBasePath:
    call SoundEngine_UpdateFrequencyFromPitchBase ; $46a0: $cd $c1 $47

.AccumulatePhaseAndHandleOverflow:
    ld hl, rSoundVoicePhaseAccumulatorTable       ; $46a3: $21 $e0 $dd
    ld a, c                                       ; $46a6: $79
    add a                                         ; $46a7: $87
    add l                                         ; $46a8: $85
    ld l, a                                       ; $46a9: $6f
    ld a, [hl+]                                   ; $46aa: $2a
    add [hl]                                      ; $46ab: $86
    push hl                                       ; $46ac: $e5
    jr c, .HandleAccumulationOverflowLoop         ; $46ad: $38 $05

    cp $90                                        ; $46af: $fe $90
    jp c, SoundEngine_ApplyPendingHardwareUpdates ; $46b1: $da $16 $47

.HandleAccumulationOverflowLoop:
    sub $90                                       ; $46b4: $d6 $90
    ld hl, rSoundVoiceNoteTickCountdownTable      ; $46b6: $21 $40 $dd
    push af                                       ; $46b9: $f5
    ld a, c                                       ; $46ba: $79
    add a                                         ; $46bb: $87
    add l                                         ; $46bc: $85
    ld l, a                                       ; $46bd: $6f
    pop af                                        ; $46be: $f1
    dec [hl]                                      ; $46bf: $35
    ld b, [hl]                                    ; $46c0: $46
    push bc                                       ; $46c1: $c5
    push af                                       ; $46c2: $f5
    ld hl, rSoundVoiceTickAccumulatorTable        ; $46c3: $21 $70 $dd
    ld a, c                                       ; $46c6: $79
    add a                                         ; $46c7: $87
    add l                                         ; $46c8: $85
    ld l, a                                       ; $46c9: $6f
    inc [hl]                                      ; $46ca: $34
    ld b, [hl]                                    ; $46cb: $46
    ld hl, rSoundVoiceScaledTickTargetTable       ; $46cc: $21 $60 $dd
    ld a, c                                       ; $46cf: $79
    add a                                         ; $46d0: $87
    add l                                         ; $46d1: $85
    ld l, a                                       ; $46d2: $6f
    ld a, b                                       ; $46d3: $78
    cp [hl]                                       ; $46d4: $be
    jr nz, .ContinueOverflowWhileTickCountdownNonZero; $46d5: $20 $2f

    ld hl, rSoundVoiceTickRateTable               ; $46d7: $21 $50 $dd
    ld a, c                                       ; $46da: $79
    add a                                         ; $46db: $87
    add l                                         ; $46dc: $85
    ld l, a                                       ; $46dd: $6f
    inc hl                                        ; $46de: $23
    ld a, [hl]                                    ; $46df: $7e
    ld hl, rSoundVoiceVolumeTable                 ; $46e0: $21 $a0 $dd
    push af                                       ; $46e3: $f5
    ld a, c                                       ; $46e4: $79
    add a                                         ; $46e5: $87
    add l                                         ; $46e6: $85
    ld l, a                                       ; $46e7: $6f
    pop af                                        ; $46e8: $f1
    inc hl                                        ; $46e9: $23
    ld [hl], a                                    ; $46ea: $77
    ld hl, rSoundCurrentVoiceUpdateFlags          ; $46eb: $21 $07 $dd
    ld a, $c0                                     ; $46ee: $3e $c0
    or [hl]                                       ; $46f0: $b6
    ld [hl], a                                    ; $46f1: $77
    ld hl, rSoundVoiceStereoPanningTable          ; $46f2: $21 $90 $dd
    ld a, c                                       ; $46f5: $79
    add a                                         ; $46f6: $87
    add l                                         ; $46f7: $85
    ld l, a                                       ; $46f8: $6f
    ld a, [hl+]                                   ; $46f9: $2a
    swap a                                        ; $46fa: $cb $37

SoundEngine_StoreRoutingLowBitsAndSetNR51UpdateFlag::
    and $03                                       ; $46fc: $e6 $03
    ld [hl], a                                    ; $46fe: $77
    ld hl, rSoundCurrentVoiceUpdateFlags          ; $46ff: $21 $07 $dd
    ld a, $10                                     ; $4702: $3e $10
    or [hl]                                       ; $4704: $b6
    ld [hl], a                                    ; $4705: $77

.ContinueOverflowWhileTickCountdownNonZero:
    pop af                                        ; $4706: $f1
    pop bc                                        ; $4707: $c1
    push af                                       ; $4708: $f5
    ld a, b                                       ; $4709: $78
    or a                                          ; $470a: $b7
    jr z, .FinishOverflowLoop                     ; $470b: $28 $08

    pop af                                        ; $470d: $f1
    cp $90                                        ; $470e: $fe $90
    jr c, SoundEngine_ApplyPendingHardwareUpdates ; $4710: $38 $04

    jp .HandleAccumulationOverflowLoop            ; $4712: $c3 $b4 $46


.FinishOverflowLoop:
    pop af                                        ; $4715: $f1

SoundEngine_ApplyPendingHardwareUpdates::
    push af                                       ; $4716: $f5
    call SoundEngine_CheckVoiceMuteGate           ; $4717: $cd $ab $48
    jp c, SoundEngine_RestoreAccumulatorAndReturn ; $471a: $da $9b $47

    ld a, c                                       ; $471d: $79
    ld de, rSoundCurrentVoiceUpdateFlags          ; $471e: $11 $07 $dd
    cp $04                                        ; $4721: $fe $04
    jr c, .ApplyNR51UpdateIfRequested             ; $4723: $38 $0e

    ld hl, rSoundHighVoiceUpdateFlagsTable        ; $4725: $21 $08 $dd
    and $03                                       ; $4728: $e6 $03
    add l                                         ; $472a: $85
    ld l, a                                       ; $472b: $6f
    ld a, [hl]                                    ; $472c: $7e
    ld [hl], $00                                  ; $472d: $36 $00
    ld h, d                                       ; $472f: $62
    ld l, e                                       ; $4730: $6b
    or [hl]                                       ; $4731: $b6
    ld [hl], a                                    ; $4732: $77

.ApplyNR51UpdateIfRequested:
    ld a, [de]                                    ; $4733: $1a
    and $10                                       ; $4734: $e6 $10
    jr z, .ApplyTimbreUpdateIfRequested           ; $4736: $28 $0c

    ld hl, rSoundVoiceStereoPanningTable          ; $4738: $21 $90 $dd
    ld a, c                                       ; $473b: $79
    add a                                         ; $473c: $87
    add l                                         ; $473d: $85
    ld l, a                                       ; $473e: $6f
    inc hl                                        ; $473f: $23
    ld a, [hl]                                    ; $4740: $7e
    call SoundEngine_UpdateVoicePanningNR51       ; $4741: $cd $b8 $48

.ApplyTimbreUpdateIfRequested:
    ld a, [de]                                    ; $4744: $1a
    and $20                                       ; $4745: $e6 $20
    jr z, .ApplyVolumeUpdateIfRequested           ; $4747: $28 $0c

    ld hl, rSoundVoiceTimbreTable                 ; $4749: $21 $b0 $dd
    ld a, c                                       ; $474c: $79
    add a                                         ; $474d: $87
    add l                                         ; $474e: $85
    ld l, a                                       ; $474f: $6f
    inc hl                                        ; $4750: $23
    ld a, [hl]                                    ; $4751: $7e
    call SoundEngine_WriteVoiceTimbreOrWave       ; $4752: $cd $31 $49

.ApplyVolumeUpdateIfRequested:
    ld a, [de]                                    ; $4755: $1a
    and $40                                       ; $4756: $e6 $40
    jr z, .ApplyFrequencyUpdateIfRequested        ; $4758: $28 $2a

    ld hl, rSoundVoiceControlTable                ; $475a: $21 $30 $dd
    ld a, c                                       ; $475d: $79
    add a                                         ; $475e: $87
    add l                                         ; $475f: $85
    ld l, a                                       ; $4760: $6f
    inc hl                                        ; $4761: $23
    ld a, [hl]                                    ; $4762: $7e
    rlca                                          ; $4763: $07
    jr nc, .ComputeAttenuatedVolumeFromGroupAttenuation; $4764: $30 $03

    xor a                                         ; $4766: $af
    jr .WriteComputedVolume                       ; $4767: $18 $18

.ComputeAttenuatedVolumeFromGroupAttenuation:
    ld a, c                                       ; $4769: $79
    ld hl, rSoundVoiceGroupAttenuationTable       ; $476a: $21 $0c $dd
    srl a                                         ; $476d: $cb $3f
    srl a                                         ; $476f: $cb $3f
    add l                                         ; $4771: $85
    ld l, a                                       ; $4772: $6f
    ld b, [hl]                                    ; $4773: $46
    ld a, c                                       ; $4774: $79
    ld hl, rSoundVoiceVolumeTable                 ; $4775: $21 $a0 $dd
    add a                                         ; $4778: $87
    add l                                         ; $4779: $85
    ld l, a                                       ; $477a: $6f
    inc hl                                        ; $477b: $23
    ld a, [hl]                                    ; $477c: $7e
    sub b                                         ; $477d: $90
    jr nc, .WriteComputedVolume                   ; $477e: $30 $01

    xor a                                         ; $4780: $af

.WriteComputedVolume:
    call SoundEngine_WriteVoiceVolumeNibble       ; $4781: $cd $0b $49

.ApplyFrequencyUpdateIfRequested:
    ld hl, rSoundVoiceFrequencyTable              ; $4784: $21 $d0 $dd
    ld a, c                                       ; $4787: $79
    add a                                         ; $4788: $87
    add l                                         ; $4789: $85
    ld l, a                                       ; $478a: $6f
    ld a, [hl+]                                   ; $478b: $2a
    ld h, [hl]                                    ; $478c: $66
    ld l, a                                       ; $478d: $6f
    ld a, [de]                                    ; $478e: $1a
    and $80                                       ; $478f: $e6 $80
    jr z, .WriteFrequencyRegisters                ; $4791: $28 $05

    sla h                                         ; $4793: $cb $24
    scf                                           ; $4795: $37
    rr h                                          ; $4796: $cb $1c

.WriteFrequencyRegisters:
    call SoundEngine_WriteVoiceFrequencyPair      ; $4798: $cd $52 $49

SoundEngine_RestoreAccumulatorAndReturn::
    pop af                                        ; $479b: $f1
    pop hl                                        ; $479c: $e1
    ld [hl], a                                    ; $479d: $77
    ret                                           ; $479e: $c9


SoundEngine_HandleVoiceTrigger::
    ld hl, rSoundVoiceTriggerTable                ; $479f: $21 $c0 $dd
    ld a, c                                       ; $47a2: $79
    add a                                         ; $47a3: $87
    add l                                         ; $47a4: $85
    ld l, a                                       ; $47a5: $6f
    ld a, [hl]                                    ; $47a6: $7e
    or a                                          ; $47a7: $b7
    ret z                                         ; $47a8: $c8

    cp b                                          ; $47a9: $b8
    ret nz                                        ; $47aa: $c0

    ld a, c                                       ; $47ab: $79
    ld hl, rSoundVoiceTimbreTable                 ; $47ac: $21 $b0 $dd
    add a                                         ; $47af: $87
    add l                                         ; $47b0: $85
    ld l, a                                       ; $47b1: $6f
    ld a, [hl]                                    ; $47b2: $7e
    swap a                                        ; $47b3: $cb $37
    and $0f                                       ; $47b5: $e6 $0f
    inc hl                                        ; $47b7: $23
    ld [hl], a                                    ; $47b8: $77
    ld hl, rSoundCurrentVoiceUpdateFlags          ; $47b9: $21 $07 $dd
    ld a, $a0                                     ; $47bc: $3e $a0
    or [hl]                                       ; $47be: $b6
    ld [hl], a                                    ; $47bf: $77
    ret                                           ; $47c0: $c9


SoundEngine_UpdateFrequencyFromPitchBase::
    call SoundEngine_CheckPitchOffsetGateAndComputeOffset; $47c1: $cd $f4 $47
    jr c, .RecomputeFrequencyFromPitchBaseAndVoiceControl; $47c4: $38 $06

    ld a, [rSoundCurrentVoiceUpdateFlags]         ; $47c6: $fa $07 $dd
    and $08                                       ; $47c9: $e6 $08
    ret z                                         ; $47cb: $c8

.RecomputeFrequencyFromPitchBaseAndVoiceControl:
    ld e, l                                       ; $47cc: $5d
    ld d, h                                       ; $47cd: $54
    ld hl, rSoundVoicePitchBaseTable              ; $47ce: $21 $10 $de
    ld a, c                                       ; $47d1: $79
    add a                                         ; $47d2: $87
    add l                                         ; $47d3: $85
    ld l, a                                       ; $47d4: $6f
    ld a, [hl+]                                   ; $47d5: $2a
    ld h, [hl]                                    ; $47d6: $66
    ld l, a                                       ; $47d7: $6f
    add hl, de                                    ; $47d8: $19
    push hl                                       ; $47d9: $e5
    ld hl, rSoundVoiceControlTable                ; $47da: $21 $30 $dd
    ld a, c                                       ; $47dd: $79
    add a                                         ; $47de: $87
    add l                                         ; $47df: $85
    ld l, a                                       ; $47e0: $6f
    inc hl                                        ; $47e1: $23
    ld a, [hl]                                    ; $47e2: $7e
    pop hl                                        ; $47e3: $e1
    call SoundEngine_ComputeFrequencyPairFromPitchControl; $47e4: $cd $bd $49
    ld d, h                                       ; $47e7: $54
    ld e, l                                       ; $47e8: $5d
    ld hl, rSoundVoiceFrequencyTable              ; $47e9: $21 $d0 $dd
    ld a, c                                       ; $47ec: $79
    add a                                         ; $47ed: $87
    add l                                         ; $47ee: $85
    ld l, a                                       ; $47ef: $6f
    ld [hl], e                                    ; $47f0: $73
    inc hl                                        ; $47f1: $23
    ld [hl], d                                    ; $47f2: $72
    ret                                           ; $47f3: $c9


SoundEngine_CheckPitchOffsetGateAndComputeOffset::
    push bc                                       ; $47f4: $c5
    ld hl, rSoundVoicePitchOffsetGateTable        ; $47f5: $21 $00 $de
    ld a, c                                       ; $47f8: $79
    add a                                         ; $47f9: $87
    add l                                         ; $47fa: $85
    ld l, a                                       ; $47fb: $6f

.CheckPitchOffsetGateThresholdAndReturnOffset:
    ld a, [hl]                                    ; $47fc: $7e
    or a                                          ; $47fd: $b7
    jr z, .ReturnNoOffsetForPitchGate             ; $47fe: $28 $07

    push hl                                       ; $4800: $e5
    inc hl                                        ; $4801: $23
    ld a, [hl]                                    ; $4802: $7e
    cp b                                          ; $4803: $b8
    jr c, .ComputePitchOffsetUsingStepPhase       ; $4804: $38 $07

    pop hl                                        ; $4806: $e1

.ReturnNoOffsetForPitchGate:
    ld hl, $0000                                  ; $4807: $21 $00 $00
    pop bc                                        ; $480a: $c1
    or a                                          ; $480b: $b7
    ret                                           ; $480c: $c9


.ComputePitchOffsetUsingStepPhase:
    ld hl, rSoundVoicePitchStepPhaseTable         ; $480d: $21 $f0 $dd
    ld a, c                                       ; $4810: $79
    add a                                         ; $4811: $87
    add l                                         ; $4812: $85
    ld l, a                                       ; $4813: $6f
    ld a, [hl+]                                   ; $4814: $2a
    add [hl]                                      ; $4815: $86
    ld [hl], a                                    ; $4816: $77
    ld c, a                                       ; $4817: $4f
    sla a                                         ; $4818: $cb $27
    sla a                                         ; $481a: $cb $27
    jr nc, .ScaleOffsetByLookupEntry              ; $481c: $30 $01

    cpl                                           ; $481e: $2f

.ScaleOffsetByLookupEntry:
    pop hl                                        ; $481f: $e1
    ld l, [hl]                                    ; $4820: $6e
    ld h, $00                                     ; $4821: $26 $00
    call SoundEngine_MultiplyHLByA_8Bit           ; $4823: $cd $5a $48
    ld a, l                                       ; $4826: $7d
    srl h                                         ; $4827: $cb $3c
    rra                                           ; $4829: $1f
    srl h                                         ; $482a: $cb $3c
    rra                                           ; $482c: $1f
    srl h                                         ; $482d: $cb $3c
    rra                                           ; $482f: $1f
    srl h                                         ; $4830: $cb $3c
    rra                                           ; $4832: $1f
    ld l, a                                       ; $4833: $6f
    sla c                                         ; $4834: $cb $21
    jr nc, .ReturnOffsetWithCarrySet              ; $4836: $30 $07

    ld a, h                                       ; $4838: $7c
    scf                                           ; $4839: $37
    ld h, a                                       ; $483a: $67
    ld a, l                                       ; $483b: $7d
    scf                                           ; $483c: $37
    ld l, a                                       ; $483d: $6f
    inc hl                                        ; $483e: $23

.ReturnOffsetWithCarrySet:
    pop bc                                        ; $483f: $c1
    scf                                           ; $4840: $37
    ret                                           ; $4841: $c9


SoundEngine_DivideHLByA_8Step::
    push bc                                       ; $4842: $c5
    push de                                       ; $4843: $d5
    ld e, a                                       ; $4844: $5f
    ld b, $08                                     ; $4845: $06 $08

.DivisionBitLoop:
    add hl, hl                                    ; $4847: $29
    ld a, h                                       ; $4848: $7c
    jr c, .SubtractDivisorAndSetQuotientBit       ; $4849: $38 $03

    cp e                                          ; $484b: $bb
    jr c, .AdvanceDivisionLoop                    ; $484c: $38 $03

.SubtractDivisorAndSetQuotientBit:
    sub e                                         ; $484e: $93
    ld h, a                                       ; $484f: $67
    inc hl                                        ; $4850: $23

.AdvanceDivisionLoop:
    dec b                                         ; $4851: $05
    jr nz, .DivisionBitLoop                       ; $4852: $20 $f3

    ld a, l                                       ; $4854: $7d
    ld l, h                                       ; $4855: $6c
    ld h, a                                       ; $4856: $67
    pop de                                        ; $4857: $d1
    pop bc                                        ; $4858: $c1
    ret                                           ; $4859: $c9


SoundEngine_MultiplyHLByA_8Bit::
    push bc                                       ; $485a: $c5
    push de                                       ; $485b: $d5
    ld d, h                                       ; $485c: $54
    ld e, l                                       ; $485d: $5d
    ld hl, $0000                                  ; $485e: $21 $00 $00
    ld b, $08                                     ; $4861: $06 $08

.MultiplyBitLoop:
    rrca                                          ; $4863: $0f
    jr nc, .ShiftMultiplicandLeft                 ; $4864: $30 $01

    add hl, de                                    ; $4866: $19

.ShiftMultiplicandLeft:
    sla e                                         ; $4867: $cb $23
    rl d                                          ; $4869: $cb $12
    dec b                                         ; $486b: $05
    jr nz, .MultiplyBitLoop                       ; $486c: $20 $f5

    pop de                                        ; $486e: $d1
    pop bc                                        ; $486f: $c1
    ret                                           ; $4870: $c9


SoundEngine_MultiplyLByALowNibble::
    ld h, a                                       ; $4871: $67
    xor a                                         ; $4872: $af
    srl h                                         ; $4873: $cb $3c
    jr nc, .ProcessBit1Contribution               ; $4875: $30 $01

    add l                                         ; $4877: $85

.ProcessBit1Contribution:
    sla l                                         ; $4878: $cb $25
    srl h                                         ; $487a: $cb $3c
    jr nc, .ProcessBit2Contribution               ; $487c: $30 $01

    add l                                         ; $487e: $85

.ProcessBit2Contribution:
    sla l                                         ; $487f: $cb $25
    srl h                                         ; $4881: $cb $3c
    jr nc, .ProcessBit3ContributionAndReturn      ; $4883: $30 $01

    add l                                         ; $4885: $85

.ProcessBit3ContributionAndReturn:
    sla l                                         ; $4886: $cb $25
    srl h                                         ; $4888: $cb $3c
    ret nc                                        ; $488a: $d0

    add l                                         ; $488b: $85
    ret                                           ; $488c: $c9


SoundEngine_FillFourWordEntriesWithDEAtHL::
    push bc                                       ; $488d: $c5
    ld b, $04                                     ; $488e: $06 $04

.WriteDEWordEntryLoop:
    ld [hl], d                                    ; $4890: $72
    inc hl                                        ; $4891: $23
    ld [hl], e                                    ; $4892: $73
    inc hl                                        ; $4893: $23
    dec b                                         ; $4894: $05
    jr nz, .WriteDEWordEntryLoop                  ; $4895: $20 $f9

    pop bc                                        ; $4897: $c1
    ret                                           ; $4898: $c9


CopyIndexed8ByteRowToHLFromDE::
    add a                                         ; $4899: $87
    add a                                         ; $489a: $87
    add a                                         ; $489b: $87
    add e                                         ; $489c: $83
    ld e, a                                       ; $489d: $5f
    ld a, d                                       ; $489e: $7a
    adc $00                                       ; $489f: $ce $00
    ld d, a                                       ; $48a1: $57
    ld b, $08                                     ; $48a2: $06 $08

.Copy8BytesLoop:
    ld a, [de]                                    ; $48a4: $1a
    inc de                                        ; $48a5: $13
    ld [hl+], a                                   ; $48a6: $22
    dec b                                         ; $48a7: $05
    jr nz, .Copy8BytesLoop                        ; $48a8: $20 $fa

    ret                                           ; $48aa: $c9


SoundEngine_CheckVoiceMuteGate::
    push af                                       ; $48ab: $f5
    ld a, [rSoundCurrentVoiceMuteMask]            ; $48ac: $fa $05 $dd
    or a                                          ; $48af: $b7
    jr nz, .ReturnCarryIfVoiceMuteGateSet         ; $48b0: $20 $03

    pop af                                        ; $48b2: $f1
    or a                                          ; $48b3: $b7
    ret                                           ; $48b4: $c9


.ReturnCarryIfVoiceMuteGateSet:
    pop af                                        ; $48b5: $f1
    scf                                           ; $48b6: $37
    ret                                           ; $48b7: $c9


SoundEngine_UpdateVoicePanningNR51::
    push bc                                       ; $48b8: $c5
    push hl                                       ; $48b9: $e5
    push af                                       ; $48ba: $f5
    ld a, c                                       ; $48bb: $79
    and $03                                       ; $48bc: $e6 $03
    ld c, a                                       ; $48be: $4f
    ld hl, SoundEngine_NR51ClearMaskByChannelTable; $48bf: $21 $44 $41
    add l                                         ; $48c2: $85
    ld l, a                                       ; $48c3: $6f
    ld b, [hl]                                    ; $48c4: $46
    ldh a, [rNR51]                                ; $48c5: $f0 $25
    and b                                         ; $48c7: $a0
    ld b, a                                       ; $48c8: $47
    pop af                                        ; $48c9: $f1
    and $03                                       ; $48ca: $e6 $03
    ld hl, SoundEngine_NR51RoutingPatternTable    ; $48cc: $21 $48 $41
    add l                                         ; $48cf: $85
    ld l, a                                       ; $48d0: $6f
    ld a, [hl]                                    ; $48d1: $7e
    inc c                                         ; $48d2: $0c

.RotateNR51MaskLoop:
    dec c                                         ; $48d3: $0d
    jr z, .WriteNR51AndReturn                     ; $48d4: $28 $03

    rlca                                          ; $48d6: $07
    jr .RotateNR51MaskLoop                        ; $48d7: $18 $fa

.WriteNR51AndReturn:
    or b                                          ; $48d9: $b0
    ldh [rNR51], a                                ; $48da: $e0 $25
    pop hl                                        ; $48dc: $e1
    pop bc                                        ; $48dd: $c1
    ret                                           ; $48de: $c9


SoundEngine_TriggerVoiceChannel::
    push bc                                       ; $48df: $c5
    push hl                                       ; $48e0: $e5
    ld a, c                                       ; $48e1: $79
    and $03                                       ; $48e2: $e6 $03
    ld b, a                                       ; $48e4: $47
    ld hl, SoundEngine_NRVolumeRegisterAddressTable; $48e5: $21 $3c $41
    add l                                         ; $48e8: $85
    ld l, a                                       ; $48e9: $6f
    ld c, [hl]                                    ; $48ea: $4e
    ld a, b                                       ; $48eb: $78
    cp $02                                        ; $48ec: $fe $02
    jr nz, .TriggerPulseOrNoisePath               ; $48ee: $20 $0a

    xor a                                         ; $48f0: $af
    ldh [c], a                                    ; $48f1: $e2
    ldh [rNR30], a                                ; $48f2: $e0 $1a
    ld a, $80                                     ; $48f4: $3e $80
    ldh [rNR30], a                                ; $48f6: $e0 $1a
    jr .ReturnFromVoiceTrigger                    ; $48f8: $18 $0e

.TriggerPulseOrNoisePath:
    ld a, $08                                     ; $48fa: $3e $08
    ldh [c], a                                    ; $48fc: $e2
    ld hl, SoundEngine_NRFrequencyRegisterAddressTable; $48fd: $21 $34 $41
    ld a, b                                       ; $4900: $78
    add l                                         ; $4901: $85
    ld l, a                                       ; $4902: $6f
    ld c, [hl]                                    ; $4903: $4e
    inc c                                         ; $4904: $0c
    ld a, $80                                     ; $4905: $3e $80
    ldh [c], a                                    ; $4907: $e2

.ReturnFromVoiceTrigger:
    pop hl                                        ; $4908: $e1
    pop bc                                        ; $4909: $c1
    ret                                           ; $490a: $c9


SoundEngine_WriteVoiceVolumeNibble::
    push bc                                       ; $490b: $c5
    push hl                                       ; $490c: $e5
    and $0f                                       ; $490d: $e6 $0f
    ld b, a                                       ; $490f: $47
    ld a, c                                       ; $4910: $79
    and $03                                       ; $4911: $e6 $03
    ld c, a                                       ; $4913: $4f
    cp $02                                        ; $4914: $fe $02
    jr nz, .SelectVolumeTargetRegister            ; $4916: $20 $0b

    ld a, b                                       ; $4918: $78
    srl a                                         ; $4919: $cb $3f
    srl a                                         ; $491b: $cb $3f
    ld hl, SoundEngine_CH3OutputLevelMapTable     ; $491d: $21 $40 $41
    add l                                         ; $4920: $85
    ld l, a                                       ; $4921: $6f
    ld b, [hl]                                    ; $4922: $46

.SelectVolumeTargetRegister:
    ld hl, SoundEngine_NRVolumeRegisterAddressTable; $4923: $21 $3c $41
    ld a, c                                       ; $4926: $79
    add l                                         ; $4927: $85
    ld l, a                                       ; $4928: $6f
    ld c, [hl]                                    ; $4929: $4e
    ld a, b                                       ; $492a: $78
    swap a                                        ; $492b: $cb $37
    ldh [c], a                                    ; $492d: $e2
    pop hl                                        ; $492e: $e1
    pop bc                                        ; $492f: $c1
    ret                                           ; $4930: $c9


SoundEngine_WriteVoiceTimbreOrWave::
    push bc                                       ; $4931: $c5
    push hl                                       ; $4932: $e5
    ld b, a                                       ; $4933: $47
    ld a, c                                       ; $4934: $79
    and $03                                       ; $4935: $e6 $03
    cp $03                                        ; $4937: $fe $03
    jr z, .ReturnFromWriteTimbre                  ; $4939: $28 $14

    cp $02                                        ; $493b: $fe $02
    jr nz, .WritePulseDutyFromNibble              ; $493d: $20 $06

    ld a, b                                       ; $493f: $78
    call SoundEngine_LoadWaveRAMPresetByIndex     ; $4940: $cd $76 $49
    jr .ReturnFromWriteTimbre                     ; $4943: $18 $0a

.WritePulseDutyFromNibble:
    ld hl, SoundEngine_NRTimbreRegisterAddressTable; $4945: $21 $38 $41
    add l                                         ; $4948: $85
    ld l, a                                       ; $4949: $6f
    ld c, [hl]                                    ; $494a: $4e
    ld a, b                                       ; $494b: $78
    rrca                                          ; $494c: $0f
    rrca                                          ; $494d: $0f
    ldh [c], a                                    ; $494e: $e2

.ReturnFromWriteTimbre:
    pop hl                                        ; $494f: $e1
    pop bc                                        ; $4950: $c1
    ret                                           ; $4951: $c9


SoundEngine_WriteVoiceFrequencyPair::
    push bc                                       ; $4952: $c5
    ld a, c                                       ; $4953: $79
    and $03                                       ; $4954: $e6 $03
    push hl                                       ; $4956: $e5
    cp $02                                        ; $4957: $fe $02
    jr nz, .SelectFrequencyTargetRegisters        ; $4959: $20 $0d

    rlc h                                         ; $495b: $cb $04
    jr nc, .SelectFrequencyTargetRegisters        ; $495d: $30 $09

    push af                                       ; $495f: $f5
    xor a                                         ; $4960: $af
    ldh [rNR30], a                                ; $4961: $e0 $1a
    ld a, $80                                     ; $4963: $3e $80
    ldh [rNR30], a                                ; $4965: $e0 $1a
    pop af                                        ; $4967: $f1

.SelectFrequencyTargetRegisters:
    ld hl, SoundEngine_NRFrequencyRegisterAddressTable; $4968: $21 $34 $41
    add l                                         ; $496b: $85
    ld l, a                                       ; $496c: $6f
    ld c, [hl]                                    ; $496d: $4e
    pop hl                                        ; $496e: $e1
    ld a, l                                       ; $496f: $7d
    ldh [c], a                                    ; $4970: $e2
    inc c                                         ; $4971: $0c
    ld a, h                                       ; $4972: $7c
    ldh [c], a                                    ; $4973: $e2
    pop bc                                        ; $4974: $c1
    ret                                           ; $4975: $c9


SoundEngine_LoadWaveRAMPresetByIndex::
    push bc                                       ; $4976: $c5
    push hl                                       ; $4977: $e5
    add a                                         ; $4978: $87
    ld hl, SoundEngine_WaveRAMPresetPointerTable  ; $4979: $21 $5c $41
    add l                                         ; $497c: $85
    ld l, a                                       ; $497d: $6f
    ld a, [hl+]                                   ; $497e: $2a
    ld h, [hl]                                    ; $497f: $66
    ld l, a                                       ; $4980: $6f
    ld c, $30                                     ; $4981: $0e $30
    xor a                                         ; $4983: $af
    ldh [rNR30], a                                ; $4984: $e0 $1a
    ld a, [hl+]                                   ; $4986: $2a
    ldh [c], a                                    ; $4987: $e2
    inc c                                         ; $4988: $0c
    ld a, [hl+]                                   ; $4989: $2a
    ldh [c], a                                    ; $498a: $e2
    inc c                                         ; $498b: $0c
    ld a, [hl+]                                   ; $498c: $2a
    ldh [c], a                                    ; $498d: $e2
    inc c                                         ; $498e: $0c
    ld a, [hl+]                                   ; $498f: $2a
    ldh [c], a                                    ; $4990: $e2
    inc c                                         ; $4991: $0c
    ld a, [hl+]                                   ; $4992: $2a
    ldh [c], a                                    ; $4993: $e2
    inc c                                         ; $4994: $0c
    ld a, [hl+]                                   ; $4995: $2a
    ldh [c], a                                    ; $4996: $e2
    inc c                                         ; $4997: $0c
    ld a, [hl+]                                   ; $4998: $2a
    ldh [c], a                                    ; $4999: $e2
    inc c                                         ; $499a: $0c
    ld a, [hl+]                                   ; $499b: $2a
    ldh [c], a                                    ; $499c: $e2
    inc c                                         ; $499d: $0c
    ld a, [hl+]                                   ; $499e: $2a
    ldh [c], a                                    ; $499f: $e2
    inc c                                         ; $49a0: $0c
    ld a, [hl+]                                   ; $49a1: $2a
    ldh [c], a                                    ; $49a2: $e2
    inc c                                         ; $49a3: $0c
    ld a, [hl+]                                   ; $49a4: $2a
    ldh [c], a                                    ; $49a5: $e2
    inc c                                         ; $49a6: $0c
    ld a, [hl+]                                   ; $49a7: $2a
    ldh [c], a                                    ; $49a8: $e2
    inc c                                         ; $49a9: $0c
    ld a, [hl+]                                   ; $49aa: $2a
    ldh [c], a                                    ; $49ab: $e2
    inc c                                         ; $49ac: $0c
    ld a, [hl+]                                   ; $49ad: $2a
    ldh [c], a                                    ; $49ae: $e2
    inc c                                         ; $49af: $0c
    ld a, [hl+]                                   ; $49b0: $2a
    ldh [c], a                                    ; $49b1: $e2
    inc c                                         ; $49b2: $0c
    ld a, [hl+]                                   ; $49b3: $2a
    ldh [c], a                                    ; $49b4: $e2
    inc c                                         ; $49b5: $0c
    ld a, $80                                     ; $49b6: $3e $80
    ldh [rNR30], a                                ; $49b8: $e0 $1a
    pop hl                                        ; $49ba: $e1
    pop bc                                        ; $49bb: $c1
    ret                                           ; $49bc: $c9


SoundEngine_ComputeFrequencyPairFromPitchControl::
    push bc                                       ; $49bd: $c5
    ld c, l                                       ; $49be: $4d
    add h                                         ; $49bf: $84
    ld b, $00                                     ; $49c0: $06 $00

.ComputeOctaveAndSemitoneLoop:
    sub $0c                                       ; $49c2: $d6 $0c
    inc b                                         ; $49c4: $04
    jr nc, .ComputeOctaveAndSemitoneLoop          ; $49c5: $30 $fb

    dec b                                         ; $49c7: $05
    add $0c                                       ; $49c8: $c6 $0c
    jr .LookupSemitoneAndApplyOctaveShift         ; $49ca: $18 $1d

    push bc                                       ; $49cc: $c5
    ld b, h                                       ; $49cd: $44
    ld c, l                                       ; $49ce: $4d
    push af                                       ; $49cf: $f5
    swap a                                        ; $49d0: $cb $37
    and $0f                                       ; $49d2: $e6 $0f
    ld l, $0c                                     ; $49d4: $2e $0c
    call SoundEngine_MultiplyLByALowNibble        ; $49d6: $cd $71 $48
    ld l, a                                       ; $49d9: $6f
    pop af                                        ; $49da: $f1
    and $0f                                       ; $49db: $e6 $0f
    add l                                         ; $49dd: $85
    add b                                         ; $49de: $80
    ld h, $00                                     ; $49df: $26 $00
    ld l, a                                       ; $49e1: $6f
    ld a, $0c                                     ; $49e2: $3e $0c
    call SoundEngine_DivideHLByA_8Step            ; $49e4: $cd $42 $48
    ld b, h                                       ; $49e7: $44
    ld a, l                                       ; $49e8: $7d

.LookupSemitoneAndApplyOctaveShift:
    add a                                         ; $49e9: $87
    push af                                       ; $49ea: $f5
    ld hl, SoundEngine_PitchBendSlopeWordTable    ; $49eb: $21 $1c $41
    add l                                         ; $49ee: $85
    ld l, a                                       ; $49ef: $6f
    ld a, [hl+]                                   ; $49f0: $2a
    ld h, [hl]                                    ; $49f1: $66
    ld l, a                                       ; $49f2: $6f
    ld a, c                                       ; $49f3: $79
    call SoundEngine_MultiplyHLByA_8Bit           ; $49f4: $cd $5a $48
    ld c, h                                       ; $49f7: $4c
    pop af                                        ; $49f8: $f1
    ld hl, SoundEngine_SemitoneFrequencyWordTable ; $49f9: $21 $02 $41
    add l                                         ; $49fc: $85
    ld l, a                                       ; $49fd: $6f
    ld a, [hl+]                                   ; $49fe: $2a
    ld h, [hl]                                    ; $49ff: $66
    ld l, a                                       ; $4a00: $6f
    ld a, c                                       ; $4a01: $79
    add l                                         ; $4a02: $85
    ld l, a                                       ; $4a03: $6f
    ld a, h                                       ; $4a04: $7c
    adc $00                                       ; $4a05: $ce $00
    ld h, a                                       ; $4a07: $67
    ld a, b                                       ; $4a08: $78
    or a                                          ; $4a09: $b7
    jr z, .ReturnFromFrequencyPairCompute         ; $4a0a: $28 $0c

    ld a, h                                       ; $4a0c: $7c
    ld h, $04                                     ; $4a0d: $26 $04

.ApplyOctaveShiftLoop:
    srl a                                         ; $4a0f: $cb $3f
    rr l                                          ; $4a11: $cb $1d
    or h                                          ; $4a13: $b4
    dec b                                         ; $4a14: $05
    jr nz, .ApplyOctaveShiftLoop                  ; $4a15: $20 $f8

    ld h, a                                       ; $4a17: $67

.ReturnFromFrequencyPairCompute:
    pop bc                                        ; $4a18: $c1
    ret                                           ; $4a19: $c9


SoundEngine_SendDeferredSGBPacketWithClearedPayloadTail::
    ld a, $41                                     ; $4a1a: $3e $41
    ld [rSoundDeferredSGBPacketHeader], a         ; $4a1c: $ea $0e $dd
    ld b, $0b                                     ; $4a1f: $06 $0b
    ld hl, rSoundDeferredSGBPacketPayloadClearStart; $4a21: $21 $13 $dd
    xor a                                         ; $4a24: $af

.ClearDeferredPacketPayloadLoop:
    ld [hl+], a                                   ; $4a25: $22
    dec b                                         ; $4a26: $05
    jr nz, .ClearDeferredPacketPayloadLoop        ; $4a27: $20 $fc

    ld hl, rSoundDeferredSGBPacketHeader          ; $4a29: $21 $0e $dd
    call SoundEngine_SendSGBPacketStreamFromHL    ; $4a2c: $cd $30 $4a
    ret                                           ; $4a2f: $c9


SoundEngine_SendSGBPacketStreamFromHL::
    ld a, [hl]                                    ; $4a30: $7e
    and $07                                       ; $4a31: $e6 $07
    ret z                                         ; $4a33: $c8

    ld c, $00                                     ; $4a34: $0e $00

.SendNextSGBPacket:
    push af                                       ; $4a36: $f5
    ld a, $30                                     ; $4a37: $3e $30
    ldh [c], a                                    ; $4a39: $e2
    ld a, $00                                     ; $4a3a: $3e $00
    ldh [c], a                                    ; $4a3c: $e2
    ld a, $30                                     ; $4a3d: $3e $30
    ldh [c], a                                    ; $4a3f: $e2
    ld d, $10                                     ; $4a40: $16 $10

.SendPacketByteLoop:
    ld b, [hl]                                    ; $4a42: $46
    inc hl                                        ; $4a43: $23
    ld e, $08                                     ; $4a44: $1e $08

.SendPacketBitLoop:
    ld a, $10                                     ; $4a46: $3e $10
    rrc b                                         ; $4a48: $cb $08
    jr c, .ClockOutCurrentSGBBit                  ; $4a4a: $38 $02

    ld a, $20                                     ; $4a4c: $3e $20

.ClockOutCurrentSGBBit:
    ldh [c], a                                    ; $4a4e: $e2
    ld a, $30                                     ; $4a4f: $3e $30
    ldh [c], a                                    ; $4a51: $e2
    dec e                                         ; $4a52: $1d
    jr nz, .SendPacketBitLoop                     ; $4a53: $20 $f1

    dec d                                         ; $4a55: $15
    jr nz, .SendPacketByteLoop                    ; $4a56: $20 $ea

    ld a, $20                                     ; $4a58: $3e $20
    ldh [c], a                                    ; $4a5a: $e2
    ld a, $30                                     ; $4a5b: $3e $30
    ldh [c], a                                    ; $4a5d: $e2
    pop af                                        ; $4a5e: $f1
    dec a                                         ; $4a5f: $3d
    ret z                                         ; $4a60: $c8

    call SoundEngine_BusyWaitDelayForSGBPacketTiming; $4a61: $cd $66 $4a
    jr .SendNextSGBPacket                         ; $4a64: $18 $d0

SoundEngine_BusyWaitDelayForSGBPacketTiming::
    push hl                                       ; $4a66: $e5
    ld hl, $1b58                                  ; $4a67: $21 $58 $1b

.DelayLoop:
    nop                                           ; $4a6a: $00
    nop                                           ; $4a6b: $00
    nop                                           ; $4a6c: $00
    dec hl                                        ; $4a6d: $2b
    ld a, h                                       ; $4a6e: $7c
    or l                                          ; $4a6f: $b5
    jr nz, .DelayLoop                             ; $4a70: $20 $f8

    pop hl                                        ; $4a72: $e1
    ret                                           ; $4a73: $c9


SCD_Cmd01_02_VoiceCommandStreamPointerRow_ParamFF::
    db $7c, $4a
    db $7c, $4a
    db $7c, $4a
    db $7c, $4a

SCD_Cmd01_02_ParamFF_CommandStream_Shared::
    db $ef

SCD_Cmd01_VoiceCommandStreamPointerRow_Param00_DeactivateBGM::
    db $3c, $6d
    db $3c, $6d
    db $3c, $6d
    db $3c, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param01_PuzzleBGM_2::
    db $25, $4b
    db $69, $4c
    db $ed, $4d
    db $9c, $4e

SCD_Cmd01_VoiceCommandStreamPointerRow_Param02_HowToPlay_PuzzleBGM_5::
    db $8d, $50
    db $70, $51
    db $70, $52
    db $03, $53

SCD_Cmd01_VoiceCommandStreamPointerRow_Param03_PuzzleBGM_4::
    db $13, $54
    db $c9, $54
    db $6f, $55
    db $3c, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param04_EasyPicross_KinokoCoursePuzzleSelectScreenBGM::
    db $13, $56
    db $51, $56
    db $9b, $56
    db $c2, $56

SCD_Cmd01_VoiceCommandStreamPointerRow_Param05_PuzzleBGM_1::
    db $7f, $59
    db $6a, $58
    db $0b, $57
    db $a4, $5a

SCD_Cmd01_VoiceCommandStreamPointerRow_Param06_TimeTrialUnlockedBGM::
    db $8c, $5b
    db $e7, $5b
    db $46, $5c
    db $a4, $5c

SCD_Cmd01_VoiceCommandStreamPointerRow_Param07_EasyPicross_KinokoCourseAllPuzzlesSolvedJingle::
    db $16, $5d
    db $4e, $5d
    db $a8, $5d
    db $d3, $5d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param08_GameOverJingle::
    db $f1, $5d
    db $17, $5e
    db $39, $5e
    db $3c, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param09_PuzzleCompletedBGM::
    db $5c, $5e
    db $c6, $5e
    db $dd, $5e
    db $3c, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param0A_TitleScreenBGM::
    db $f0, $5e
    db $cd, $5f
    db $02, $61
    db $9f, $61

SCD_Cmd01_VoiceCommandStreamPointerRow_Param0B_PuzzleBGM_3::
    db $43, $62
    db $7e, $63
    db $e5, $65
    db $3c, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param0C_TimeTrialRankingScreenBGM_Unused::
    db $80, $67
    db $a1, $67
    db $3c, $6d
    db $3c, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param0D_DataSelect_GameSelectScreenBGM::
    db $bf, $67
    db $24, $68
    db $72, $68
    db $3c, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param0E_CourseSelectScreenBGM::
    db $cd, $68
    db $f3, $68
    db $17, $69
    db $3c, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param0F_TimeTrialRankingScreenBGM::
    db $30, $69
    db $8d, $69
    db $f7, $69
    db $3c, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param10_StarCoursePuzzleSelectScreenBGM::
    db $0d, $6a
    db $dc, $6a
    db $9e, $6b
    db $3c, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param11_Unused::
    db $59, $6c
    db $77, $6c
    db $9a, $6c
    db $3c, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param12_PuzzleClearJingle::
    db $b3, $6c
    db $ce, $6c
    db $ea, $6c
    db $3c, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param13_Unused::
    db $fe, $6c
    db $14, $6d
    db $2b, $6d
    db $3c, $6d

SCD_Cmd01_VoiceCommandStreamPointerRow_Param14_Unused::
    db $3c, $6d
    db $3c, $6d
    db $3c, $6d
    db $ac, $6d

SCD_Cmd01_Param01_CommandStream_Voice1_Entry::
    db $f9, $90, $f5, $10, $10, $08, $e3, $fb, $33, $f0, $23, $04, $00, $fa, $43

SCD_Cmd01_Param01_CommandStream_Voice1_LoopBody01::
    db $f7, $07, $fe, $2f, $4c, $f5, $10, $10, $08, $f7, $07, $fb, $33, $fa, $43, $fe
    db $2f, $4c, $f5, $10, $10, $08, $f7, $07, $fb, $33, $fa, $43, $ea, $9a, $9a, $e9
    db $0a, $0a, $ea, $78, $7a, $e9, $0a, $ea, $b5, $e9, $0a, $ea, $9a, $9a, $e9, $0a
    db $2a, $fa, $73, $48, $55, $48, $2a, $45, $2a, $fa, $53, $0a, $da, $ea, $9a, $e9
    db $0a, $fa, $73, $ea, $b8, $e9, $05, $28, $0a, $ea, $95, $e9, $0a, $fa, $53, $4a
    db $4a, $0a, $ea, $9a, $e9, $48, $4a, $25, $cd, $cd, $dd, $fe, $2f, $4c, $f5, $10
    db $10, $08, $fb, $33, $fa, $43, $f7, $07, $78, $f7, $06, $ea, $75, $e9, $78, $ea
    db $75, $e9, $78, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $ea
    db $75, $e9, $78, $f7, $07, $95, $78, $55, $48, $f7, $06, $ea, $75, $e9, $78, $f7
    db $07, $0a, $f7, $06, $ea, $75, $f7, $07, $98, $f7, $06, $75, $e9, $f7, $07, $08
    db $08, $ea, $f7, $06, $75, $e9, $f7, $07, $2a, $05, $28, $ea, $f7, $06, $75, $e9
    db $f7, $07, $48, $f7, $06, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $ea, $75, $e9
    db $78, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $f7, $07, $55
    db $48, $25, $48, $f7, $06, $ea, $75, $e9, $f7, $07, $58, $f7, $06, $ea, $75, $e9
    db $f7, $07, $78, $f7, $06, $ea, $75, $e9, $f7, $07, $98, $f7, $06, $ea, $75, $e9
    db $e9, $f7, $07, $08, $0a, $ea, $b5, $cd, $ee, $34, $4b

SCD_Cmd01_Param01_CommandStream_Voice1_CallTarget01::
    db $0a, $da, $4a, $da, $28, $2a, $5a, $45, $5a, $7a, $7a, $4a, $0a, $28, $2a, $ea
    db $7b, $7a, $e9, $0a, $da, $4a, $da, $28, $2a, $5a, $45, $5a, $7a, $7a, $fa, $73
    db $48, $05, $28, $fa, $53, $05, $ca, $f7, $05, $f5, $01, $28, $64, $e9, $fb, $22
    db $75, $d8, $ea, $ea, $fb, $11, $7a, $da, $e9, $ef

SCD_Cmd01_Param01_CommandStream_Voice2_Entry::
    db $f9, $90, $e3, $f7, $07, $fa, $43

SCD_Cmd01_Param01_CommandStream_Voice2_LoopBody01::
    db $f7, $07, $f0, $20, $08, $00, $fb, $22, $f4, $00, $f5, $0a, $14, $03, $fb, $22
    db $fe, $a5, $4d, $f7, $07, $f5, $0a, $14, $03, $fb, $22, $fe, $a5, $4d, $f7, $07
    db $f5, $0a, $14, $03, $fb, $22, $08, $ea, $05, $e9, $08, $ea, $05, $e9, $08, $ea
    db $05, $e9, $08, $ea, $05, $e9, $08, $ea, $05, $e9, $08, $ea, $05, $e9, $08, $ea
    db $85, $98, $b5, $e9, $08, $ea, $05, $98, $05, $b8, $05, $e9, $08, $ea, $05, $e9
    db $48, $ea, $45, $e9, $48, $2a, $ea, $45, $e9, $4a, $08, $ea, $05, $e9, $08, $ea
    db $05, $e9, $08, $ea, $05, $e9, $08, $ea, $05, $e9, $08, $ea, $05, $e9, $08, $ea
    db $05, $05, $45, $95, $e9, $05, $45, $75, $98, $ea, $95, $e9, $98, $ea, $95, $e9
    db $98, $ea, $95, $e9, $98, $ea, $95, $e9, $9a, $d8, $b5, $cd, $dd, $dd, $fb, $22
    db $fe, $a5, $4d, $f5, $0a, $14, $03, $fb, $22, $f4, $28, $f0, $20, $04, $00, $f7
    db $07, $d8, $78, $f7, $05, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $ea, $75, $e9
    db $78, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $f7, $07, $95
    db $78, $55, $48, $f7, $05, $ea, $75, $e9, $78, $f7, $07, $0a, $f7, $05, $ea, $75
    db $f7, $07, $98, $f7, $05, $75, $e9, $f7, $07, $08, $08, $ea, $f7, $05, $75, $e9
    db $f7, $07, $2a, $05, $28, $ea, $f7, $05, $75, $e9, $f7, $07, $48, $f7, $05, $ea
    db $75, $e9, $78, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $ea, $75, $e9, $78, $ea
    db $75, $e9, $78, $ea, $75, $e9, $78, $f7, $07, $55, $48, $25, $48, $f7, $05, $ea
    db $75, $e9, $f7, $07, $58, $f7, $05, $ea, $75, $e9, $f7, $07, $78, $f7, $05, $ea
    db $75, $e9, $f7, $07, $98, $f7, $05, $ea, $75, $e9, $e9, $f7, $07, $08, $0a, $ea
    db $b5, $cb, $ee, $70, $4c

SCD_Cmd01_Param01_CommandStream_Voice2_CallTarget01::
    db $d8, $05, $ea, $78, $e9, $05, $48, $45, $78, $75, $5a, $48, $2a, $0a, $45, $c8
    db $05, $ea, $78, $e9, $05, $48, $45, $78, $75, $9a, $78, $5a, $4a, $75, $c8, $05
    db $ea, $7a, $e9, $08, $05, $78, $75, $58, $4a, $5a, $6a, $75, $c8, $75, $48, $45
    db $58, $55, $78, $75, $e9, $0a, $f5, $01, $28, $64, $f7, $05, $fb, $22, $e9, $05
    db $d8, $ea, $fb, $11, $0a, $da, $ea, $ef

SCD_Cmd01_Param01_CommandStream_Voice3_Entry::
    db $f9, $90, $fa, $48, $f7, $0c, $fb, $33, $f0, $0d, $00, $00, $e2

SCD_Cmd01_Param01_CommandStream_Voice3_LoopBody01::
    db $fe, $6b, $4e, $fe, $6b, $4e, $ea, $5a, $da, $9a, $da, $7a, $d8, $e9, $0a, $ea
    db $75, $e9, $08, $ea, $75, $58, $55, $7a, $9a, $ba, $e9, $08, $ea, $75, $e9, $08
    db $ea, $aa, $75, $aa, $9a, $da, $5a, $da, $48, $4a, $9b, $7a, $28, $25, $4a, $5a
    db $6a, $7a, $d8, $7d, $c5, $c8, $75, $5a, $4a, $2a, $e9, $fe, $6b, $4e, $0a, $da
    db $ea, $9a, $da, $e9, $2a, $d8, $ea, $7a, $75, $ba, $e9, $0a, $0a, $ea, $9a, $9a
    db $e9, $28, $2a, $ea, $7b, $ba, $e9, $0a, $da, $ea, $9a, $da, $e9, $2a, $d8, $ea
    db $7a, $75, $ba, $e9, $0a, $0a, $ea, $9a, $9a, $58, $5a, $75, $cd, $e9, $ee, $fa
    db $4d

SCD_Cmd01_Param01_CommandStream_Voice3_CallTarget01::
    db $0a, $da, $ea, $9a, $da, $e9, $2a, $d8, $ea, $7a, $75, $ba, $e9, $0a, $2a, $3a
    db $4a, $75, $25, $ea, $95, $25, $cb, $75, $ba, $e9, $0a, $da, $ea, $9a, $da, $e9
    db $2a, $d8, $ea, $7a, $75, $ba, $e9, $08, $05, $ea, $9a, $aa, $ba, $e9, $0a, $df
    db $ef

SCD_Cmd01_Param01_CommandStream_Voice4_Entry::
    db $f7, $07, $fa, $40, $f9, $90, $fb, $11

SCD_Cmd01_Param01_CommandStream_Voice4_LoopBody01::
    db $fe, $e9, $4f, $fe, $e9, $4f, $fb, $11, $fa, $40, $fc, $10, $05, $d8, $05, $d5
    db $05, $fc, $40, $fb, $22, $05, $fb, $11, $d8, $fc, $10, $05, $d5, $05, $05, $d8
    db $05, $d5, $05, $fb, $22, $fc, $40, $05, $fb, $11, $d5, $fc, $10, $fa, $50, $05
    db $fa, $40, $05, $d5, $05, $05, $d8, $05, $d5, $05, $fb, $22, $fc, $40, $05, $fb
    db $11, $d8, $fc, $10, $05, $d5, $05, $d8, $05, $05, $d5, $fa, $80, $05, $fa, $40
    db $fc, $40, $fb, $22, $05, $fb, $11, $d5, $fc, $10, $05, $fa, $80, $0a, $fa, $40
    db $f1, $02, $05, $d8, $05, $d5, $05, $fc, $40, $fb, $22, $05, $fb, $11, $d8, $fc
    db $10, $05, $d5, $05, $f2, $05, $d5, $05, $05, $d8, $fc, $40, $fb, $22, $05, $fb
    db $11, $d8, $fc, $10, $05, $d5, $05, $05, $db, $05, $cd, $dd, $dd, $fe, $e9, $4f
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
    db $05, $05, $ee, $a4, $4e

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
    db $f7, $07, $fe, $04, $51, $fe, $2a, $51, $d7, $57, $57, $27, $57, $d7, $77, $d7
    db $fe, $04, $51, $fe, $2a, $51, $e9, $d7, $07, $07, $07, $07, $dc, $f7, $06, $da
    db $2a, $ea, $aa, $7a, $e9, $2a, $ea, $aa, $7a, $e9, $2a, $0d, $5d, $ea, $ad, $d7
    db $97, $a7, $e9, $07, $d7, $fa, $73, $27, $fa, $43, $07, $ea, $a7, $e9, $fa, $73
    db $27, $fa, $43, $07, $ea, $a7, $e9, $07, $fa, $73, $07, $fa, $43, $57, $57, $57
    db $fa, $73, $57, $ea, $fa, $43, $a7, $a7, $a7, $e9, $0a, $ea, $9a, $5a, $e9, $0a
    db $ea, $bd, $cd, $cf, $da, $ee, $9c, $50

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
    db $f0, $20, $04, $00, $fe, $f7, $51, $fe, $1d, $52, $d7, $27, $27, $ea, $a7, $e9
    db $27, $d7, $47, $d7, $fe, $f7, $51, $fe, $1d, $52, $d7, $47, $47, $57, $77, $d7
    db $07, $d7, $f1, $08, $24, $ea, $a4, $74, $34, $e9, $f2, $f1, $04, $04, $ea, $94
    db $54, $24, $e9, $f2, $f1, $02, $24, $ea, $a4, $74, $24, $e9, $f2, $f1, $02, $04
    db $ea, $94, $54, $24, $e9, $f2, $f0, $10, $04, $00, $d7, $fa, $73, $a7, $fa, $43
    db $97, $77, $fa, $73, $a7, $fa, $43, $97, $77, $97, $fa, $73, $97, $e9, $fa, $43
    db $07, $07, $07, $fa, $73, $07, $ea, $fa, $43, $57, $57, $57, $9a, $5a, $0a, $9a
    db $7d, $cc, $e9, $27, $7f, $da, $ea, $ee, $7d, $51

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
    db $fe, $d6, $52, $fe, $b0, $52, $fe, $d6, $52, $fe, $b0, $52, $3d, $cd, $cc, $5c
    db $3a, $2c, $ea, $9c, $e9, $2a, $7d, $5d, $37, $a7, $37, $7a, $37, $a7, $37, $7a
    db $37, $aa, $77, $e9, $7a, $5c, $0c, $5a, $ea, $7f, $c7, $e9, $27, $ea, $7d, $cd
    db $ee, $7d, $52

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
    db $fe, $76, $53, $fe, $a8, $53, $fe, $76, $53, $fe, $a8, $53, $fc, $20, $fb, $22
    db $f1, $04, $da, $04, $d9, $da, $04, $d9, $f2, $f1, $08, $fc, $20, $fb, $22, $04
    db $d4, $fc, $10, $fb, $11, $04, $04, $f2, $fc, $20, $fb, $22, $04, $d4, $fc, $10
    db $fb, $11, $04, $d9, $04, $d9, $04, $d9, $04, $d4, $d7, $04, $d9, $04, $d9, $04
    db $d9, $04, $d4, $05, $fc, $20, $fb, $22, $05, $05, $fc, $10, $fb, $11, $05, $fc
    db $20, $fb, $22, $05, $05, $fc, $10, $fb, $11, $05, $fc, $20, $fb, $22, $05, $05
    db $fc, $10, $fb, $11, $04, $d4, $04, $d4, $ee, $0b, $53

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
    db $d7, $dd, $ee, $24, $54

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
    db $dd, $e9, $ee, $da, $54

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
    db $ea, $3a, $e9, $da, $ee, $7c, $55

SCD_Cmd01_Param04_CommandStream_Voice1_Entry::
    db $f9, $78, $f0, $20, $04, $00, $fb, $13, $f7, $09, $e2, $f5, $18, $10, $06

SCD_Cmd01_Param04_CommandStream_Voice1_LoopBody01::
    db $fa, $84, $59, $fa, $54, $a7, $da, $57, $54, $a7, $57, $fa, $84, $49, $fa, $54
    db $a7, $da, $47, $44, $a7, $47, $fa, $84, $39, $fa, $54, $a7, $da, $37, $34, $a7
    db $37, $27, $fa, $84, $27, $34, $24, $34, $fa, $54, $54, $cd, $ee, $22, $56

SCD_Cmd01_Param04_CommandStream_Voice2_Entry::
    db $f9, $78, $f0, $20, $04, $00, $fb, $23, $f7, $07, $e2, $f5, $18, $10, $06

SCD_Cmd01_Param04_CommandStream_Voice2_LoopBody01::
    db $fa, $84, $09, $fa, $54, $57, $da, $07, $04, $57, $07, $ea, $fa, $84, $a9, $fa
    db $54, $e9, $47, $da, $ea, $a7, $a4, $e9, $47, $ea, $a7, $fa, $84, $a9, $fa, $54
    db $e9, $37, $da, $ea, $a7, $a4, $e9, $37, $ea, $a7, $a7, $fa, $84, $a7, $e9, $04
    db $ea, $a4, $e9, $04, $fa, $54, $24, $cd, $ee, $60, $56

SCD_Cmd01_Param04_CommandStream_Voice3_Entry::
    db $f9, $78, $f0, $06, $00, $00, $fa, $58, $fb, $33, $f7, $0e, $e2

SCD_Cmd01_Param04_CommandStream_Voice3_LoopBody01::
    db $f1, $03, $29, $09, $ea, $97, $a9, $e9, $59, $ea, $57, $e9, $f2, $29, $09, $ea
    db $57, $e9, $59, $39, $ea, $57, $e9, $ee, $a8, $56

SCD_Cmd01_Param04_CommandStream_Voice4_Entry::
    db $f7, $09, $f9, $78, $fa, $53

SCD_Cmd01_Param04_CommandStream_Voice4_LoopBody01::
    db $f1, $03, $fc, $20, $fb, $11, $d7, $04, $d4, $fc, $30, $fb, $22, $04, $04, $d4
    db $fc, $20, $fb, $11, $04, $d4, $04, $d4, $04, $fc, $30, $fb, $22, $04, $d4, $04
    db $d4, $f2, $d7, $fc, $20, $fb, $11, $04, $d4, $fc, $30, $fb, $22, $04, $04, $d4
    db $fc, $20, $fb, $11, $02, $02, $04, $d1, $04, $d1, $04, $d1, $04, $d4, $04, $d4
    db $ee, $c8, $56

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
    db $48, $fa, $84, $b5, $9a, $7a, $6a, $7a, $3d, $5a, $3a, $2d, $cd, $ee, $1a, $57

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
    db $0d, $ea, $9d, $ee, $79, $58

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
    db $83, $6d, $2d, $ee, $8e, $59

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
    db $05, $f2, $05, $d8, $05, $d8, $05, $d5, $05, $05, $d8, $ee, $ae, $5a

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
    db $ea, $57, $a7, $57, $e9, $e9, $ee, $6d, $5e

SCD_Cmd01_Param09_CommandStream_Voice2_Setup::
    db $f9, $78, $f7, $04, $fa, $44, $fb, $13, $f0, $11, $04, $00, $f5, $18, $10, $08
    db $e3, $f4, $14

SCD_Cmd01_Param09_CommandStream_Voice2_Phrase01::
    db $d8, $ee, $6d, $5e

SCD_Cmd01_Param09_CommandStream_Voice3_Setup::
    db $f9, $78, $f7, $08, $fa, $44, $fb, $23, $f0, $02, $00, $00, $e4, $f4, $28

SCD_Cmd01_Param09_CommandStream_Voice3_Phrase01::
    db $db, $ee, $6d, $5e

SCD_Cmd01_Param0A_CommandStream_Voice1_Entry::
    db $f9, $90, $f7, $09, $fb, $33, $f0, $02, $04, $00, $f5, $10, $10, $08, $fa, $54
    db $e2, $77, $67, $67, $77, $77, $67, $67, $77, $87, $77, $77, $87, $87, $77, $77
    db $87, $97, $87, $87, $97, $97, $87, $87, $97, $e9, $0d, $ea, $ba, $da, $e9, $fe
    db $90, $5f, $f0, $32, $04, $00, $ea, $ac, $e9, $fa, $84, $07, $fa, $54, $2a, $5a
    db $fa, $84, $47, $37, $47, $0a, $fa, $54, $27, $47, $07, $ea, $ac, $e9, $fa, $84
    db $07, $fa, $54, $2a, $5a, $4d, $cd, $ea, $bc, $e9, $fa, $84, $17, $fa, $54, $3a
    db $6a, $fa, $84, $47, $37, $47, $7a, $fa, $54, $77, $67, $77, $99, $84, $77, $67
    db $57, $47, $37, $27, $17, $07, $ea, $b7, $a7, $97, $d7, $87, $d7, $7d, $4a, $da
    db $9d, $4a, $da, $bd, $cd, $95, $e9, $e9, $47, $ea, $a7, $57, $07, $ea, $77, $27
    db $ea, $97, $33, $f0, $02, $04, $00, $e9, $e9, $fe, $90, $5f, $ea, $ee, $01, $5f

SCD_Cmd01_Param0A_CommandStream_Voice1_CallTarget01::
    db $0a, $0a, $27, $4a, $ea, $77, $fa, $84, $97, $fa, $54, $87, $97, $e9, $47, $cd
    db $2a, $2a, $47, $5a, $ea, $97, $e9, $0d, $ea, $ba, $da, $e9, $0a, $0a, $27, $4a
    db $ea, $77, $fa, $84, $97, $fa, $54, $87, $97, $e9, $4a, $47, $57, $67, $77, $ea
    db $77, $77, $e9, $77, $77, $ea, $77, $77, $e9, $77, $0f, $da, $ef

SCD_Cmd01_Param0A_CommandStream_Voice2_Entry::
    db $f9, $90, $f7, $0a, $fb, $12, $f0, $20, $03, $00, $f5, $10, $10, $08, $fa, $54
    db $e2, $37, $27, $27, $37, $37, $27, $27, $37, $47, $37, $37, $47, $47, $37, $37
    db $47, $57, $47, $47, $57, $57, $47, $47, $57, $8d, $7a, $da, $e9, $fe, $8e, $60
    db $f1, $02, $27, $ea, $a7, $e9, $27, $57, $27, $57, $a7, $e9, $27, $07, $27, $07
    db $ea, $77, $47, $27, $07, $ea, $77, $e9, $f2, $37, $ea, $b7, $e9, $37, $67, $37
    db $67, $b7, $e9, $37, $ea, $b7, $a7, $b7, $97, $77, $67, $77, $87, $94, $94, $e9
    db $24, $d4, $24, $d4, $ea, $94, $94, $e9, $24, $d4, $24, $d4, $ea, $94, $94, $e9
    db $24, $d4, $ea, $94, $94, $e9, $24, $d4, $24, $d4, $ea, $94, $94, $e9, $24, $d4
    db $dc, $ea, $ea, $44, $74, $94, $b4, $e9, $14, $44, $94, $e9, $14, $4a, $da, $ea
    db $ea, $94, $e9, $14, $44, $74, $94, $e9, $14, $44, $94, $e9, $1a, $da, $44, $34
    db $44, $34, $44, $34, $44, $34, $44, $34, $44, $34, $44, $34, $44, $34, $47, $ea
    db $a7, $57, $07, $ea, $77, $27, $ea, $97, $37, $e9, $e9, $fe, $8e, $60, $ee, $de
    db $5f

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
    db $e9, $fe, $6b, $61, $ea, $aa, $5a, $ea, $aa, $e9, $aa, $e9, $0a, $ea, $7a, $0a
    db $e9, $0a, $ea, $aa, $5a, $ea, $aa, $e9, $aa, $e9, $0a, $ea, $7a, $4a, $0a, $ea
    db $ba, $e9, $6a, $ea, $ba, $e9, $ba, $4a, $6a, $7a, $ea, $ba, $e9, $2a, $df, $da
    db $1a, $27, $dc, $ea, $9c, $9a, $9a, $97, $9c, $9a, $9a, $97, $9c, $9a, $9a, $97
    db $97, $d7, $df, $e9, $e9, $fe, $6b, $61, $ea, $ee, $0f, $61

SCD_Cmd01_Param0A_CommandStream_Voice3_CallTarget01::
    db $0a, $ea, $7a, $0a, $e9, $0a, $ea, $9a, $4a, $9a, $e9, $1a, $2a, $ea, $9a, $2a
    db $e9, $2a, $ea, $5d, $7a, $da, $e9, $0a, $ea, $7a, $0a, $e9, $0a, $ea, $9a, $4a
    db $9a, $8a, $77, $da, $ea, $77, $e9, $77, $da, $ea, $77, $e9, $07, $47, $77, $b7
    db $e9, $0a, $da, $ef

SCD_Cmd01_Param0A_CommandStream_Voice4_Entry::
    db $f9, $90, $f7, $0e, $fc, $10, $fb, $21, $fa, $31

SCD_Cmd01_Param0A_CommandStream_Voice4_LoopBody01::
    db $f1, $03, $d7, $04, $d4, $04, $d9, $04, $d4, $04, $d9, $04, $d4, $f2, $d7, $04
    db $d4, $04, $d9, $04, $d4, $d4, $d9, $d4, $d4, $fe, $fe, $61, $f1, $06, $d7, $04
    db $d9, $04, $d9, $04, $d9, $04, $d4, $f2, $04, $d9, $df, $d7, $04, $d9, $04, $d4
    db $04, $d4, $dc, $f1, $03, $04, $d4, $da, $04, $d9, $04, $d9, $04, $d4, $f2, $04
    db $d4, $04, $04, $d4, $04, $d4, $04, $d4, $04, $d4, $04, $04, $d4, $04, $d4, $fe
    db $fe, $61, $ee, $a9, $61

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
    db $e9, $57, $47, $97, $87, $e9, $07, $ea, $b7, $ea, $ee, $71, $62

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
    db $ea, $b7, $e9, $57, $47, $97, $87, $ee, $ab, $63

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
    db $87, $97, $b7, $e9, $07, $27, $47, $ea, $ee, $15, $66

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
    db $f2, $ee, $d0, $67

SCD_Cmd01_Param0D_CommandStream_Voice2_Entry::
    db $f9, $96, $f5, $00, $10, $08, $fb, $21, $f0, $10, $04, $00, $fa, $43, $e2, $f7
    db $08

SCD_Cmd01_Param0D_CommandStream_Voice2_LoopBody01::
    db $f1, $10, $a7, $77, $57, $a7, $77, $57, $f2, $f1, $04, $a7, $a7, $97, $a7, $a7
    db $97, $a7, $a7, $97, $a7, $a7, $77, $f2, $e9, $f1, $04, $27, $d7, $57, $d7, $57
    db $d7, $47, $d7, $47, $27, $d7, $07, $f2, $f1, $08, $47, $27, $d7, $47, $d7, $07
    db $ea, $a7, $d7, $e9, $07, $d7, $27, $d7, $f2, $ea, $ee, $35, $68

SCD_Cmd01_Param0D_CommandStream_Voice3_Entry::
    db $f9, $96, $fa, $48, $f7, $0d, $fb, $33, $f0, $0d, $00, $00, $e2

SCD_Cmd01_Param0D_CommandStream_Voice3_LoopBody01::
    db $f1, $04, $0a, $ea, $a7, $e9, $0a, $ea, $77, $e9, $0a, $07, $ea, $7a, $77, $e9
    db $f2, $ea, $f1, $04, $aa, $77, $aa, $57, $aa, $a7, $7a, $77, $f2, $e9, $f1, $08
    db $0a, $ea, $a7, $e9, $0a, $ea, $77, $e9, $0a, $07, $ea, $5a, $57, $e9, $f2, $f1
    db $04, $07, $ea, $aa, $e9, $0a, $ea, $77, $e9, $0a, $0a, $ea, $7a, $e9, $f2, $ea
    db $f1, $04, $a7, $7a, $aa, $77, $aa, $aa, $5a, $f2, $e9, $ee, $7f, $68

SCD_Cmd01_Param0E_CommandStream_Voice1_Setup::
    db $f9, $50, $f5, $08, $10, $08, $e3, $fb, $13, $f0, $20, $04, $00, $fa, $74, $f7
    db $05

SCD_Cmd01_Param0E_CommandStream_Voice1_Phrase01::
    db $25, $ea, $b5, $55, $cf, $0d, $ea, $bd, $e9, $25, $75, $e9, $05, $cf, $ea, $bd
    db $cd, $e9, $ee, $de, $68

SCD_Cmd01_Param0E_CommandStream_Voice2_Setup::
    db $f9, $50, $f5, $08, $10, $08, $e3, $fb, $23, $f0, $20, $04, $00, $fa, $74, $f7
    db $05

SCD_Cmd01_Param0E_CommandStream_Voice2_Phrase01::
    db $d3, $05, $ea, $75, $23, $cf, $cd, $cd, $d3, $55, $b5, $e9, $23, $cf, $cd, $cd
    db $ee, $04, $69

SCD_Cmd01_Param0E_CommandStream_Voice3_Entry::
    db $f9, $50, $fa, $44, $f7, $0c, $fb, $33, $f0, $06, $00, $00, $e1

SCD_Cmd01_Param0E_CommandStream_Voice3_LoopBody01::
    db $f1, $04, $7a, $77, $77, $7a, $77, $77, $f2, $ee, $24, $69

SCD_Cmd01_Param0F_CommandStream_Voice1_Entry::
    db $f9, $5a, $f5, $00, $08, $0a, $e2, $fb, $13, $f0, $02, $04, $00, $fa, $63, $f7
    db $06

SCD_Cmd01_Param0F_CommandStream_Voice1_LoopBody01::
    db $f1, $02, $5d, $cd, $4d, $cd, $5a, $47, $07, $cd, $cd, $cd, $f2, $5d, $cd, $cd
    db $57, $77, $9a, $7d, $cd, $cf, $0a, $5d, $cd, $cd, $57, $77, $9a, $7d, $cd, $cd
    db $cd, $5d, $cd, $4d, $cd, $5a, $47, $07, $cd, $cd, $cd, $f1, $02, $5a, $57, $57
    db $5a, $57, $57, $5a, $57, $57, $57, $57, $57, $57, $4a, $47, $47, $4a, $47, $47
    db $4a, $47, $47, $47, $47, $45, $45, $45, $f2, $ee, $41, $69

SCD_Cmd01_Param0F_CommandStream_Voice2_Entry::
    db $f9, $5a, $f5, $00, $08, $0a, $e2, $fb, $23, $f0, $02, $04, $00, $fa, $63, $f7
    db $04

SCD_Cmd01_Param0F_CommandStream_Voice2_LoopBody01::
    db $f1, $02, $0d, $cd, $ea, $bd, $cd, $e9, $0a, $ea, $b7, $77, $cd, $cd, $cd, $e9
    db $f2, $0d, $cd, $cd, $07, $27, $4a, $2d, $cd, $4d, $ca, $ea, $7a, $e9, $0d, $cd
    db $cd, $07, $27, $4a, $2d, $cd, $4d, $cd, $0d, $cd, $ea, $bd, $cd, $e9, $0a, $ea
    db $b7, $77, $cd, $cd, $cd, $e9, $f1, $02, $0a, $07, $07, $0a, $07, $07, $0a, $07
    db $07, $07, $07, $07, $07, $ea, $ba, $b7, $b7, $ba, $b7, $b7, $ba, $b7, $b7, $b7
    db $b7, $b5, $b5, $b5, $e9, $f2, $ee, $9e, $69

SCD_Cmd01_Param0F_CommandStream_Voice3_Setup::
    db $f9, $5a, $fa, $48, $f7, $0d, $fb, $33, $f0, $0d, $00, $00, $e2

SCD_Cmd01_Param0F_CommandStream_Voice3_Phrase01::
    db $0a, $07, $07, $0a, $07, $07, $ee, $04, $6a

SCD_Cmd01_Param10_CommandStream_Voice1_Setup::
    db $f9, $64, $f5, $00, $10, $04, $e1, $fb, $33, $f0, $01, $04, $00, $fa, $63, $f7
    db $08

SCD_Cmd01_Param10_CommandStream_Voice1_PhraseCallLoop::
    db $fe, $39, $6a
    db $fe, $4a, $6a
    db $fe, $8d, $6a
    db $fe, $4a, $6a
    db $fe, $a9, $6a
    db $fe, $bf, $6a
    db $fe, $4a, $6a
    db $fe, $8d, $6a
    db $ee, $1e, $6a

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
    db $fe, $08, $6b
    db $fe, $55, $6b
    db $fe, $08, $6b
    db $fe, $55, $6b
    db $fe, $08, $6b
    db $fe, $08, $6b
    db $fe, $55, $6b
    db $fe, $08, $6b
    db $ee, $ed, $6a

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
    db $fe, $dc, $6b
    db $fe, $c6, $6b
    db $fe, $07, $6c
    db $fe, $c6, $6b
    db $fe, $32, $6c
    db $fe, $4b, $6c
    db $fe, $c6, $6b
    db $fe, $07, $6c
    db $ee, $ab, $6b

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
    db $9a, $7d, $4a, $4a, $2a, $2a, $0d, $cd, $ee, $e0, $6d

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
    db $ea, $b8, $95, $78, $55, $48, $25, $ee, $18, $6e

Unused_UnknownTrack_CommandStream_Voice3_Setup::
    db $f6, $01, $f9, $c8, $fa, $58, $f7, $0f, $fb, $33, $f0, $05, $00

Unused_UnknownTrack_CommandStream_Voice3_Phrase01::
    db $00, $e2, $0d, $ea, $7d, $e9, $0d, $ea, $7d, $e9, $0d, $ea, $7d, $e9, $2d, $ea
    db $7d, $e9, $0d, $ea, $7d, $e9, $0d, $ea, $7d, $e9, $2d, $2d, $ea, $7d, $e9, $0d
    db $0d, $ea, $ad, $9d, $8d, $7d, $bd, $e9, $0a, $ea, $7a, $e9, $0d, $ee, $af, $6e

Unused_UnknownTrack_CommandStream_Voice4_Setup::
    db $f7, $0a, $fa, $40, $f9, $c8, $fb, $32, $fa, $45, $fc, $10

Unused_UnknownTrack_CommandStream_Voice4_Phrase01::
    db $f1, $0c, $08, $d5, $05, $d5, $05, $08, $d5, $05, $d5, $05, $f2, $ee, $ea, $6e

SCD_Cmd02_VoiceCommandStreamPointerRow_Param00_Unused::
    db $f0, $70
    db $00, $71
    db $7c, $4a
    db $7c, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param01_Unused::
    db $10, $71
    db $21, $71
    db $7c, $4a
    db $7c, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param02_HintRouletteFinishSFX::
    db $7c, $4a
    db $32, $71
    db $7c, $4a
    db $7c, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param03_ConfirmSFX::
    db $7c, $4a
    db $4b, $71
    db $7c, $4a
    db $7c, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param04_CancelSFX::
    db $7c, $4a
    db $67, $71
    db $7c, $4a
    db $7c, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param05_FillCellSFX::
    db $7c, $4a
    db $b3, $70
    db $7c, $4a
    db $cc, $70

SCD_Cmd02_VoiceCommandStreamPointerRow_Param06_FillStepTickSFX::
    db $7c, $4a
    db $7c, $4a
    db $7c, $4a
    db $a0, $70

SCD_Cmd02_VoiceCommandStreamPointerRow_Param07_ResetCellSFX::
    db $7c, $4a
    db $7c, $4a
    db $7c, $4a
    db $7a, $70

SCD_Cmd02_VoiceCommandStreamPointerRow_Param08_LevelSelect_AdvanceLevelSFX::
    db $7c, $4a
    db $5f, $70
    db $7c, $4a
    db $7c, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param09_MistakeSFX::
    db $7c, $4a
    db $3d, $70
    db $7c, $4a
    db $7c, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param0A_MenuCursorMoveSFX::
    db $7c, $4a
    db $1b, $70
    db $7c, $4a
    db $7c, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param0B_PuzzleCursorMoveSFX::
    db $7c, $4a
    db $0e, $70
    db $7c, $4a
    db $7c, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param0C_MarkXSFX::
    db $7c, $4a
    db $ef, $6f
    db $7c, $4a
    db $7c, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param0D_LowTimeWarningSFX::
    db $7c, $4a
    db $d2, $6f
    db $7c, $4a
    db $7c, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param0E_Unused::
    db $7c, $4a
    db $b4, $6f
    db $7c, $4a
    db $7c, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param0F_Unused::
    db $80, $67
    db $a1, $67
    db $7c, $4a
    db $7c, $4a

SCD_Cmd02_VoiceCommandStreamPointerRow_Param10_OpenPauseMenuSFX::
    db $7c, $4a
    db $82, $6f
    db $7c, $4a
    db $7c, $4a

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
    ds $e7d, $00
