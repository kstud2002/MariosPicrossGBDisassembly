; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

Jumpvector_SoundCommandDispatcher::
    jp SoundCommandDispatcher


Jumpvector_SoundEngineUpdateRoutine::
    jp SoundEngine_FrameTickRoutine


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
    ld hl, SoundCommandDispatcher_Cmd00To07PointerTable
    push af
    add a
    add l
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    jp hl


SoundCommandDispatcher_Cmd00_ResetAPUDriverState::
    ld hl, SoundCommandDispatcher_Cmd00_APURegisterInitPairs

.ApplyAPURegisterInitPairsLoop:
    ld a, [hl+]
    or a
    jr z, .ClearRuntimeStateBlock

    ld c, a
    ld a, [hl+]
    ldh [c], a
    jr .ApplyAPURegisterInitPairsLoop

.ClearRuntimeStateBlock:
    ld b, $0c
    ld hl, rSoundCurrentVoiceIndex
    xor a

.ClearRuntimeStateBlockLoop:
    ld [hl+], a
    dec b
    jr nz, .ClearRuntimeStateBlockLoop

    call SoundEngine_LoadWaveRAMPresetByIndex
    ld a, $ff
    ld [rSoundUpperVoiceGroupCommandIndex], a
    ld [rSoundLowerVoiceGroupCommandIndex], a
    ret


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
    ld a, c
    ld [rSoundUpperVoiceGroupCommandIndex], a
    ld de, SCD_Cmd01_VoiceCommandStreamPointerRow_Param00_DeactivateBGM
    cp $ff
    jr nz, .LoadUpperVoiceScriptPointerRow

    ld de, SCD_Cmd01_02_VoiceCommandStreamPointerRow_ParamFF
    xor a
    ld [rSoundEvent01FFOverrideState_Unsure], a

.LoadUpperVoiceScriptPointerRow:
    ld hl, rSoundVoiceScriptPointerRowBuffer
    call CopyIndexed8ByteRowToHLFromDE
    ld hl, rSoundActiveVoiceMask
    ld a, $f0
    or [hl]
    ld [hl], a
    ld hl, SoundCommandDispatcher_Cmd02_RuntimeStateInitTable

.ClearPerVoiceSecondaryStateBlocksLoop:
    ld c, [hl]
    inc hl
    ld a, [hl]
    inc hl
    or a
    ret z

    ld b, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    ld hl, $0008
    add hl, bc
    call SoundEngine_FillFourWordEntriesWithDEAtHL
    pop hl
    jr .ClearPerVoiceSecondaryStateBlocksLoop

SoundCommandDispatcher_Cmd02_ResetVoicesAndStartLowerVoiceGroup::
    push bc
    ld hl, rSoundCurrentVoiceIndex
    xor a
    ld [hl], a
    ld a, [rSoundActiveVoiceMask]
    ld c, $10
    ld d, $01
    ld b, $04

.InitPerVoiceMaskLoop:
    push af
    ld a, d
    ld [rSoundCurrentVoiceMaskBit], a
    ld a, [rSoundActiveVoiceMask]
    and c
    and $0f
    ld [rSoundCurrentVoiceMuteMask], a
    rlc c

.RotateVoiceMaskAndProcessActiveVoice:
    rlc d
    pop af
    rrca
    jr nc, .AdvanceVoiceSlotIndexAndLoop

    push af
    push bc
    push hl
    call SoundEngine_DeactivateCurrentVoiceAndUpdateActiveMasks
    pop hl
    pop bc
    pop af

.AdvanceVoiceSlotIndexAndLoop:
    inc [hl]
    dec b
    jr nz, .InitPerVoiceMaskLoop

    pop bc
    ld a, c
    ld [rSoundLowerVoiceGroupCommandIndex], a
    ld de, SCD_Cmd02_VoiceCommandStreamPointerRow_Param00_Unused
    cp $ff
    jr nz, .LoadLowerVoiceScriptPointerRow

    ld de, SCD_Cmd01_02_VoiceCommandStreamPointerRow_ParamFF
    xor a
    ld [rSoundVoiceGroupAttenuationTable], a

.LoadLowerVoiceScriptPointerRow:
    ld hl, rSoundVoiceScriptPointerTable
    call CopyIndexed8ByteRowToHLFromDE
    ld a, c
    cp $ff
    jr z, .InitRuntimeClearTableCursor

    ld a, [rSoundActiveVoiceMask]
    or $0f
    ld d, a
    ld e, $fe
    ld b, $04
    ld hl, rSoundVoiceScriptPointerTable

.ClearActiveMaskBitIfScriptStartsWithEF:
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $ef
    jr nz, .AdvanceMaskBitAndRowPointer

    ld a, d
    and e
    ld d, a

.AdvanceMaskBitAndRowPointer:
    rlc e
    pop hl
    inc hl
    inc hl
    dec b
    jr nz, .ClearActiveMaskBitIfScriptStartsWithEF

    ld a, d
    ld [rSoundActiveVoiceMask], a

.InitRuntimeClearTableCursor:
    ld hl, SoundCommandDispatcher_Cmd02_RuntimeStateInitTable

.ClearRuntimeTablesFromInitTable:
    ld c, [hl]
    inc hl
    ld a, [hl]
    inc hl
    or a
    ret z

    ld b, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    push hl
    ld hl, $0000
    add hl, bc
    call SoundEngine_FillFourWordEntriesWithDEAtHL
    pop hl
    jr .ClearRuntimeTablesFromInitTable

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
    ld hl, rSoundDeferredSGBPacketHeader
    ld [hl], $41
    inc hl
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld [hl], d
    inc hl
    ld [hl], e
    ret


SoundCommandDispatcher_Cmd04_InvokeCmd01WithFF::
    ld c, $ff
    jp SoundCommandDispatcher_Cmd01_StartUpperVoiceGroup


SoundCommandDispatcher_Cmd05_InvokeCmd02WithFF::
    ld c, $ff
    jp SoundCommandDispatcher_Cmd02_ResetVoicesAndStartLowerVoiceGroup


SoundCommandDispatcher_Cmd06_ReadUpperVoiceGroupCommandIndex::
    ld a, [rSoundUpperVoiceGroupCommandIndex]
    ret


SoundCommandDispatcher_Cmd07_ReadLowerVoiceGroupCommandIndex::
    ld a, [rSoundLowerVoiceGroupCommandIndex]
    ret


    ret


SoundEngine_FrameTickRoutine::
    ld a, [rSoundDeferredSGBPacketHeader]
    inc a
    jr z, .InitPerFrameVoiceIterationState

    call SoundEngine_SendDeferredSGBPacketWithClearedPayloadTail
    ld a, $ff
    ld [rSoundDeferredSGBPacketHeader], a

.InitPerFrameVoiceIterationState:
    ld hl, rSoundCurrentVoiceIndex
    xor a
    ld [hl], a
    ld a, [rSoundActiveVoiceMask]
    ld c, $10
    ld d, $01
    ld b, $08

PerVoiceTickLoop::
    push af
    xor a
    ld [rSoundCurrentVoiceUpdateFlags], a
    ld a, d
    ld [rSoundCurrentVoiceMaskBit], a
    ld a, [rSoundActiveVoiceMask]
    and c
    and $0f
    ld [rSoundCurrentVoiceMuteMask], a
    rlc c
    rlc d

SoundEngine_ProcessActiveVoiceIfSet::
    pop af
    rrca
    jr nc, .AdvanceVoiceIndexAndLoop

    push af
    push bc
    push hl
    call SoundEngine_ProcessVoiceTick
    pop hl
    pop bc
    pop af

.AdvanceVoiceIndexAndLoop:
    inc [hl]
    dec b
    jr nz, PerVoiceTickLoop

    ret


SoundEngine_ProcessVoiceTick::
    ld a, [rSoundCurrentVoiceIndex]
    ld c, a
    ld hl, rSoundVoiceNoteTickCountdownTable
    add a
    add l
    ld l, a
    ld a, [hl]
    or a
    jp nz, SoundEngine_UpdateVoiceStateAndCommitAPURegisters

    ld hl, rSoundVoiceScriptPointerTable
    ld a, c
    add a
    add l
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]

SoundEngine_DispatchVoiceOpcode::
    ld a, [de]
    and $f0
    cp $f0
    jr nz, .HandleE0OpcodeGroup

    ld a, [de]
    and $0f
    ld hl, SoundEngine_FOpcodeDispatchPointerTable
    add a
    add l
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


.HandleE0OpcodeGroup:
    cp $e0
    jr nz, .HandleVoiceDataOpcode

    ld a, [de]
    and $0f
    ld hl, SoundEngine_EOpcodeDispatchPointerTable
    add a
    add l
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


.HandleVoiceDataOpcode:
    ld hl, rSoundVoiceControlTable
    ld a, c
    add a
    add l
    ld l, a
    ld a, [de]
    and $f0
    cp $d0
    jr nz, .ComputeVoicePitchControlByteFromOpcodeHighNibble

    ld a, $ff
    jr .StoreVoicePitchControlByteForCurrentVoice

.ComputeVoicePitchControlByteFromOpcodeHighNibble:
    push hl
    ld a, [hl]
    ld l, $0c
    call SoundEngine_MultiplyLByALowNibble
    ld l, a
    ld a, [de]
    and $f0
    swap a
    add l
    pop hl

.StoreVoicePitchControlByteForCurrentVoice:
    inc hl
    ld [hl], a
    ld b, $00

.AccumulateTickUnitsFromC0Chain:
    ld a, [de]
    and $0f
    ld hl, SoundEngine_NoteLengthTickTable
    add l
    ld l, a
    ld a, [hl]
    add b
    ld b, a
    inc de
    ld a, [de]
    and $f0
    cp $c0
    jr z, .AccumulateTickUnitsFromC0Chain

    ld hl, rSoundVoiceNoteTickCountdownTable
    ld a, c
    add a
    add l
    ld l, a
    ld [hl], b
    ld hl, rSoundVoiceTickRateTable
    ld a, c
    add a
    add l
    ld l, a
    ld a, [hl]
    or a
    jr nz, .ApplyVoiceRateScalingToTickUnits

    ld b, $00
    jr .StoreScaledTickTargetAndRequestRegisterUpdates

.ApplyVoiceRateScalingToTickUnits:
    ld l, b
    ld h, $00
    call SoundEngine_MultiplyHLByA_8Bit
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld b, l
    ld a, b
    or a
    jr nz, .StoreScaledTickTargetAndRequestRegisterUpdates

    inc b

.StoreScaledTickTargetAndRequestRegisterUpdates:
    ld hl, rSoundVoiceScaledTickTargetTable
    ld a, c
    add a
    add l
    ld l, a
    ld [hl], b
    ld hl, rSoundCurrentVoiceUpdateFlags
    ld a, $f9
    or [hl]
    ld [hl], a
    jp SoundEngine_SaveVoiceScriptPointer


SoundEngine_OpED_SetGroupAttenuationFromNibble::
    ld a, c
    ld hl, rSoundVoiceGroupAttenuationTable
    srl a
    srl a
    add l
    ld l, a
    inc de
    ld a, [de]
    and $0f
    ld b, a
    ld a, $0f
    sub b
    ld [hl], a
    jp SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue


SoundEngine_OpEE_JumpToInlinePointer::
    ld h, d
    ld l, e
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    jp SoundCommandDispatcher_ContinueVoiceStreamDispatch


SoundEngine_OpEF_ReturnOrStopVoice::
    ld hl, rSoundVoiceCallReturnPointerTable
    ld a, c
    add a
    add l
    ld l, a
    xor a
    ld e, [hl]
    ld [hl], a
    inc hl
    ld d, [hl]
    ld [hl], a
    ld a, d
    or a
    jp nz, SoundCommandDispatcher_ContinueVoiceStreamDispatch

    call SoundEngine_DeactivateCurrentVoiceAndUpdateActiveMasks
    jp SoundEngine_SaveVoiceScriptPointer


SoundEngine_DeactivateCurrentVoiceAndUpdateActiveMasks::
    ld a, [rSoundCurrentVoiceIndex]
    ld c, a
    call SoundEngine_CheckVoiceMuteGate
    jr c, .FinalizeVoiceDeactivationMasks

    xor a
    call SoundEngine_WriteVoiceVolumeNibble
    ld a, c
    cp $04
    jr nc, .FinalizeVoiceDeactivationMasks

    ld a, [rSoundCurrentVoiceMaskBit]
    swap a
    ld hl, rSoundActiveVoiceMask
    and [hl]
    jr z, .FinalizeVoiceDeactivationMasks

    ld hl, rSoundHighVoiceUpdateFlagsTable
    ld a, c
    add l
    ld l, a
    ld a, $f0
    or [hl]
    ld [hl], a

.FinalizeVoiceDeactivationMasks:
    ld b, c
    inc b
    xor a
    dec a

.BuildVoiceClearMaskLoop:
    rla
    dec b
    jr nz, .BuildVoiceClearMaskLoop

    ld hl, rSoundActiveVoiceMask
    and [hl]
    ld [hl], a
    push af
    and $f0
    jr nz, .MaybeResetLowerVoiceGroupCommandIndex

    ld a, $ff
    ld [rSoundUpperVoiceGroupCommandIndex], a

.MaybeResetLowerVoiceGroupCommandIndex:
    pop af
    and $0f
    jr nz, .Return

    ld a, $ff
    ld [rSoundLowerVoiceGroupCommandIndex], a

.Return:
    ret


SoundEngine_OpFE_CallInlinePointer::
    ld hl, rSoundVoiceCallReturnPointerTable
    ld a, c
    add a
    add l
    ld l, a
    inc de
    inc de
    inc de
    ld [hl], e
    inc hl
    ld [hl], d
    dec de
    dec de
    ld h, d
    ld l, e
    ld e, [hl]
    inc hl
    ld d, [hl]
    jp SoundCommandDispatcher_ContinueVoiceStreamDispatch


SoundEngine_OpF0_SetTimbreAndTrigger::
    ld hl, rSoundVoiceTimbreTable
    ld a, c
    add a
    add l
    ld l, a
    inc de
    ld a, [de]
    inc de
    ld [hl], a
    ld hl, rSoundVoiceTriggerTable
    ld a, c
    add a
    add l
    ld l, a
    ld a, [de]
    inc de
    ld [hl], a
    jp SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue


SoundEngine_OpF5_SetPitchOffsetGateAndStep::
    ld hl, rSoundVoicePitchOffsetGateTable
    ld a, c
    add a
    add l
    ld l, a
    push hl
    inc hl
    inc de
    ld a, [de]
    ld [hl], a
    ld hl, rSoundVoicePitchStepPhaseTable
    ld a, c
    add a
    add l
    ld l, a
    inc de
    ld a, [de]
    ld [hl+], a
    ld [hl], $00
    inc de
    ld a, [de]
    pop hl
    ld [hl], a
    jp SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue


SoundEngine_OpF1_SetLoopCounterAndBranchPointer::
    ld hl, rSoundVoiceLoopCounterTable
    ld a, c
    add a
    add l
    ld l, a
    inc de
    ld a, [de]
    ld [hl], a
    ld hl, rSoundVoiceLoopTargetPointerTable
    ld a, c
    add a
    add l
    ld l, a
    inc de
    ld [hl], e
    inc hl
    ld [hl], d
    jp SoundCommandDispatcher_ContinueVoiceStreamDispatch


SoundEngine_OpF2_DecrementLoopCounterAndBranch::
    ld hl, rSoundVoiceLoopCounterTable
    ld a, c
    add a
    add l
    ld l, a
    dec [hl]
    jp z, SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue

    ld hl, rSoundVoiceLoopTargetPointerTable
    ld a, c
    add a
    add l
    ld l, a
    ld e, [hl]
    inc hl
    ld d, [hl]
    jp SoundCommandDispatcher_ContinueVoiceStreamDispatch


SoundEngine_OpFA_SetVoiceRateFromPackedNibbles::
    ld hl, rSoundVoiceTickRateTable
    ld a, c
    add a
    add l
    ld l, a
    inc de
    ld a, [de]
    and $f0
    swap a
    ld [hl+], a
    ld a, [de]
    and $0f
    ld [hl], a
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue

SoundEngine_OpF7_SetVoiceVolumeFromNibble::
    ld hl, rSoundVoiceVolumeTable
    ld a, c
    add a
    add l
    ld l, a
    inc de
    ld a, [de]
    and $0f
    ld [hl+], a
    ld [hl], a
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue

SoundEngine_OpF6_SetPitchBaseHighByte::
    ld hl, rSoundVoicePitchBaseTable
    ld a, c
    add a
    add l
    ld l, a
    inc hl
    inc de
    ld a, [de]
    ld [hl], a
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue

SoundEngine_OpF9_SetPhaseAccumulatorByte::
    ld hl, rSoundVoicePhaseAccumulatorTable
    ld a, c
    add a
    add l
    ld l, a
    inc de
    ld a, [de]

SoundEngine_StoreAAndConsume1ByteAndContinue::
    ld [hl], a
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue

SoundEngine_OpF4_SetPitchBaseLowByte::
    ld hl, rSoundVoicePitchBaseTable
    ld a, c
    add a
    add l
    ld l, a
    inc de
    ld a, [de]
    ld [hl], a
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue

SoundEngine_OpFC_SetFrequencyLowByte::
    ld hl, rSoundVoiceFrequencyTable
    ld a, c
    add a
    add l
    ld l, a
    inc de
    ld a, [de]
    ld [hl], a
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue

SoundEngine_OpFB_SetVoicePanningByte::
    ld hl, rSoundVoiceStereoPanningTable
    ld a, c
    add a
    add l
    ld l, a
    inc de
    ld a, [de]
    ld [hl], a
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue

SoundEngine_OpE0ToE8_SetVoiceControlLowNibble::
    ld hl, rSoundVoiceControlTable
    ld a, c
    add a
    add l
    ld l, a
    ld a, [de]
    and $0f
    ld [hl], a
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue

SoundEngine_OpE9_IncrementVoiceControlLowNibbleTo08::
    ld hl, rSoundVoiceControlTable
    ld a, c
    add a
    add l
    ld l, a
    ld a, [hl]
    cp $08
    jr z, SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue

    inc [hl]
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue

SoundEngine_OpEA_DecrementVoiceControlLowNibbleTo00::
    ld hl, rSoundVoiceControlTable
    ld a, c
    add a
    add l
    ld l, a
    ld a, [hl]
    or a
    jr z, SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue

    dec [hl]
    jr SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue

SoundEngine_OpEB_EC_F3_F8_FD_FF_Consume1ByteAndContinue::
    inc de

SoundCommandDispatcher_ContinueVoiceStreamDispatch::
    jp SoundEngine_DispatchVoiceOpcode


    inc de

SoundEngine_SaveVoiceScriptPointer::
    ld hl, rSoundVoiceScriptPointerTable
    ld a, c
    add a
    add l
    ld l, a
    ld [hl], e
    inc hl
    ld [hl], d

SoundEngine_UpdateVoiceStateAndCommitAPURegisters::
    ld a, [rSoundCurrentVoiceUpdateFlags]
    and $01
    ld a, [rSoundCurrentVoiceIndex]
    ld c, a
    jr z, .AdvanceVoiceFrameCounterPath

    ld hl, rSoundVoiceTickAccumulatorTable
    add a
    add l
    ld l, a
    xor a
    ld [hl], a
    ld de, $0010
    add hl, de
    ld [hl], a
    add hl, de
    dec de
    ld a, [hl+]
    ld [hl], a
    add hl, de
    ld a, [hl+]
    ld [hl], a
    add hl, de
    ld a, [hl+]
    ld [hl], a
    ld a, c
    and $03
    cp $03
    ld b, $00
    jr z, .AccumulatePhaseAndHandleOverflow

    jr .UpdateFrequencyFromPitchBasePath

.AdvanceVoiceFrameCounterPath:
    ld hl, rSoundVoiceFrameCounterTable
    ld a, [rSoundCurrentVoiceIndex]
    add a
    add l
    ld l, a
    inc [hl]
    ld b, [hl]
    ld a, c
    and $03
    cp $03
    jr z, .AccumulatePhaseAndHandleOverflow

    push bc
    call SoundEngine_HandleVoiceTrigger
    pop bc

.UpdateFrequencyFromPitchBasePath:
    call SoundEngine_UpdateFrequencyFromPitchBase

.AccumulatePhaseAndHandleOverflow:
    ld hl, rSoundVoicePhaseAccumulatorTable
    ld a, c
    add a
    add l
    ld l, a
    ld a, [hl+]
    add [hl]
    push hl
    jr c, HandleAccumulationOverflowLoop

    cp $90
    jp c, SoundEngine_ApplyPendingHardwareUpdates

HandleAccumulationOverflowLoop::
    sub $90
    ld hl, rSoundVoiceNoteTickCountdownTable
    push af
    ld a, c
    add a
    add l
    ld l, a
    pop af
    dec [hl]
    ld b, [hl]
    push bc
    push af
    ld hl, rSoundVoiceTickAccumulatorTable
    ld a, c
    add a
    add l
    ld l, a
    inc [hl]
    ld b, [hl]
    ld hl, rSoundVoiceScaledTickTargetTable
    ld a, c
    add a
    add l
    ld l, a
    ld a, b
    cp [hl]
    jr nz, ContinueOverflowWhileTickCountdownNonZero

    ld hl, rSoundVoiceTickRateTable
    ld a, c
    add a
    add l
    ld l, a
    inc hl
    ld a, [hl]
    ld hl, rSoundVoiceVolumeTable
    push af
    ld a, c
    add a
    add l
    ld l, a
    pop af
    inc hl
    ld [hl], a
    ld hl, rSoundCurrentVoiceUpdateFlags
    ld a, $c0
    or [hl]
    ld [hl], a
    ld hl, rSoundVoiceStereoPanningTable
    ld a, c
    add a
    add l
    ld l, a
    ld a, [hl+]
    swap a

SoundEngine_StoreRoutingLowBitsAndSetNR51UpdateFlag::
    and $03
    ld [hl], a
    ld hl, rSoundCurrentVoiceUpdateFlags
    ld a, $10
    or [hl]
    ld [hl], a

ContinueOverflowWhileTickCountdownNonZero::
    pop af
    pop bc
    push af
    ld a, b
    or a
    jr z, .FinishOverflowLoop

    pop af
    cp $90
    jr c, SoundEngine_ApplyPendingHardwareUpdates

    jp HandleAccumulationOverflowLoop


.FinishOverflowLoop:
    pop af

SoundEngine_ApplyPendingHardwareUpdates::
    push af
    call SoundEngine_CheckVoiceMuteGate
    jp c, SoundEngine_RestoreAccumulatorAndReturn

    ld a, c
    ld de, rSoundCurrentVoiceUpdateFlags
    cp $04
    jr c, .ApplyNR51UpdateIfRequested

    ld hl, rSoundHighVoiceUpdateFlagsTable
    and $03
    add l
    ld l, a
    ld a, [hl]
    ld [hl], $00
    ld h, d
    ld l, e
    or [hl]
    ld [hl], a

.ApplyNR51UpdateIfRequested:
    ld a, [de]
    and $10
    jr z, .ApplyTimbreUpdateIfRequested

    ld hl, rSoundVoiceStereoPanningTable
    ld a, c
    add a
    add l
    ld l, a
    inc hl
    ld a, [hl]
    call SoundEngine_UpdateVoicePanningNR51

.ApplyTimbreUpdateIfRequested:
    ld a, [de]
    and $20
    jr z, .ApplyVolumeUpdateIfRequested

    ld hl, rSoundVoiceTimbreTable
    ld a, c
    add a
    add l
    ld l, a
    inc hl
    ld a, [hl]
    call SoundEngine_WriteVoiceTimbreOrWave

.ApplyVolumeUpdateIfRequested:
    ld a, [de]
    and $40
    jr z, .ApplyFrequencyUpdateIfRequested

    ld hl, rSoundVoiceControlTable
    ld a, c
    add a
    add l
    ld l, a
    inc hl
    ld a, [hl]
    rlca
    jr nc, .ComputeAttenuatedVolumeFromGroupAttenuation

    xor a
    jr .WriteComputedVolume

.ComputeAttenuatedVolumeFromGroupAttenuation:
    ld a, c
    ld hl, rSoundVoiceGroupAttenuationTable
    srl a
    srl a
    add l
    ld l, a
    ld b, [hl]
    ld a, c
    ld hl, rSoundVoiceVolumeTable
    add a
    add l
    ld l, a
    inc hl
    ld a, [hl]
    sub b
    jr nc, .WriteComputedVolume

    xor a

.WriteComputedVolume:
    call SoundEngine_WriteVoiceVolumeNibble

.ApplyFrequencyUpdateIfRequested:
    ld hl, rSoundVoiceFrequencyTable
    ld a, c
    add a
    add l
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [de]
    and $80
    jr z, .WriteFrequencyRegisters

    sla h
    scf
    rr h

.WriteFrequencyRegisters:
    call SoundEngine_WriteVoiceFrequencyPair

SoundEngine_RestoreAccumulatorAndReturn::
    pop af
    pop hl
    ld [hl], a
    ret


SoundEngine_HandleVoiceTrigger::
    ld hl, rSoundVoiceTriggerTable
    ld a, c
    add a
    add l
    ld l, a
    ld a, [hl]
    or a
    ret z

    cp b
    ret nz

    ld a, c
    ld hl, rSoundVoiceTimbreTable
    add a
    add l
    ld l, a
    ld a, [hl]
    swap a
    and $0f
    inc hl
    ld [hl], a
    ld hl, rSoundCurrentVoiceUpdateFlags
    ld a, $a0
    or [hl]
    ld [hl], a
    ret


SoundEngine_UpdateFrequencyFromPitchBase::
    call SoundEngine_CheckPitchOffsetGateAndComputeOffset
    jr c, .RecomputeFrequencyFromPitchBaseAndVoiceControl

    ld a, [rSoundCurrentVoiceUpdateFlags]
    and $08
    ret z

.RecomputeFrequencyFromPitchBaseAndVoiceControl:
    ld e, l
    ld d, h
    ld hl, rSoundVoicePitchBaseTable
    ld a, c
    add a
    add l
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    push hl
    ld hl, rSoundVoiceControlTable
    ld a, c
    add a
    add l
    ld l, a
    inc hl
    ld a, [hl]
    pop hl
    call SoundEngine_ComputeFrequencyPairFromPitchControl
    ld d, h
    ld e, l
    ld hl, rSoundVoiceFrequencyTable
    ld a, c
    add a
    add l
    ld l, a
    ld [hl], e
    inc hl
    ld [hl], d
    ret


SoundEngine_CheckPitchOffsetGateAndComputeOffset::
    push bc
    ld hl, rSoundVoicePitchOffsetGateTable
    ld a, c
    add a
    add l
    ld l, a

.CheckPitchOffsetGateThresholdAndReturnOffset:
    ld a, [hl]
    or a
    jr z, .ReturnNoOffsetForPitchGate

    push hl
    inc hl
    ld a, [hl]
    cp b
    jr c, .ComputePitchOffsetUsingStepPhase

    pop hl

.ReturnNoOffsetForPitchGate:
    ld hl, $0000
    pop bc
    or a
    ret


.ComputePitchOffsetUsingStepPhase:
    ld hl, rSoundVoicePitchStepPhaseTable
    ld a, c
    add a
    add l
    ld l, a
    ld a, [hl+]
    add [hl]
    ld [hl], a
    ld c, a
    sla a
    sla a
    jr nc, .ScaleOffsetByLookupEntry

    cpl

.ScaleOffsetByLookupEntry:
    pop hl
    ld l, [hl]
    ld h, $00
    call SoundEngine_MultiplyHLByA_8Bit
    ld a, l
    srl h
    rra
    srl h
    rra
    srl h
    rra
    srl h
    rra
    ld l, a
    sla c
    jr nc, .ReturnOffsetWithCarrySet

    ld a, h
    scf
    ld h, a
    ld a, l
    scf
    ld l, a
    inc hl

.ReturnOffsetWithCarrySet:
    pop bc
    scf
    ret


SoundEngine_DivideHLByA_8Step::
    push bc
    push de
    ld e, a
    ld b, $08

.DivisionBitLoop:
    add hl, hl
    ld a, h
    jr c, .SubtractDivisorAndSetQuotientBit

    cp e
    jr c, .AdvanceDivisionLoop

.SubtractDivisorAndSetQuotientBit:
    sub e
    ld h, a
    inc hl

.AdvanceDivisionLoop:
    dec b
    jr nz, .DivisionBitLoop

    ld a, l
    ld l, h
    ld h, a
    pop de
    pop bc
    ret


SoundEngine_MultiplyHLByA_8Bit::
    push bc
    push de
    ld d, h
    ld e, l
    ld hl, $0000
    ld b, $08

.MultiplyBitLoop:
    rrca
    jr nc, .ShiftMultiplicandLeft

    add hl, de

.ShiftMultiplicandLeft:
    sla e
    rl d
    dec b
    jr nz, .MultiplyBitLoop

    pop de
    pop bc
    ret


SoundEngine_MultiplyLByALowNibble::
    ld h, a
    xor a
    srl h
    jr nc, .ProcessBit1Contribution

    add l

.ProcessBit1Contribution:
    sla l
    srl h
    jr nc, .ProcessBit2Contribution

    add l

.ProcessBit2Contribution:
    sla l
    srl h
    jr nc, .ProcessBit3ContributionAndReturn

    add l

.ProcessBit3ContributionAndReturn:
    sla l
    srl h
    ret nc

    add l
    ret


SoundEngine_FillFourWordEntriesWithDEAtHL::
    push bc
    ld b, $04

.WriteDEWordEntryLoop:
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    dec b
    jr nz, .WriteDEWordEntryLoop

    pop bc
    ret


CopyIndexed8ByteRowToHLFromDE::
    add a
    add a
    add a
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld b, $08

.Copy8BytesLoop:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, .Copy8BytesLoop

    ret


SoundEngine_CheckVoiceMuteGate::
    push af
    ld a, [rSoundCurrentVoiceMuteMask]
    or a
    jr nz, .ReturnCarryIfVoiceMuteGateSet

    pop af
    or a
    ret


.ReturnCarryIfVoiceMuteGateSet:
    pop af
    scf
    ret


SoundEngine_UpdateVoicePanningNR51::
    push bc
    push hl
    push af
    ld a, c
    and $03
    ld c, a
    ld hl, SoundEngine_NR51ClearMaskByChannelTable
    add l
    ld l, a
    ld b, [hl]
    ldh a, [rNR51]
    and b
    ld b, a
    pop af
    and $03
    ld hl, SoundEngine_NR51RoutingPatternTable
    add l
    ld l, a
    ld a, [hl]
    inc c

.RotateNR51MaskLoop:
    dec c
    jr z, .WriteNR51AndReturn

    rlca
    jr .RotateNR51MaskLoop

.WriteNR51AndReturn:
    or b
    ldh [rNR51], a
    pop hl
    pop bc
    ret


SoundEngine_TriggerVoiceChannel::
    push bc
    push hl
    ld a, c
    and $03
    ld b, a
    ld hl, SoundEngine_NRVolumeRegisterAddressTable
    add l
    ld l, a
    ld c, [hl]
    ld a, b
    cp $02
    jr nz, .TriggerPulseOrNoisePath

    xor a
    ldh [c], a
    ldh [rNR30], a
    ld a, $80
    ldh [rNR30], a
    jr .ReturnFromVoiceTrigger

.TriggerPulseOrNoisePath:
    ld a, $08
    ldh [c], a
    ld hl, SoundEngine_NRFrequencyRegisterAddressTable
    ld a, b
    add l
    ld l, a
    ld c, [hl]
    inc c
    ld a, $80
    ldh [c], a

.ReturnFromVoiceTrigger:
    pop hl
    pop bc
    ret


SoundEngine_WriteVoiceVolumeNibble::
    push bc
    push hl
    and $0f
    ld b, a
    ld a, c
    and $03
    ld c, a
    cp $02
    jr nz, .SelectVolumeTargetRegister

    ld a, b
    srl a
    srl a
    ld hl, SoundEngine_CH3OutputLevelMapTable
    add l
    ld l, a
    ld b, [hl]

.SelectVolumeTargetRegister:
    ld hl, SoundEngine_NRVolumeRegisterAddressTable
    ld a, c
    add l
    ld l, a
    ld c, [hl]
    ld a, b
    swap a
    ldh [c], a
    pop hl
    pop bc
    ret


SoundEngine_WriteVoiceTimbreOrWave::
    push bc
    push hl
    ld b, a
    ld a, c
    and $03
    cp $03
    jr z, .ReturnFromWriteTimbre

    cp $02
    jr nz, .WritePulseDutyFromNibble

    ld a, b
    call SoundEngine_LoadWaveRAMPresetByIndex
    jr .ReturnFromWriteTimbre

.WritePulseDutyFromNibble:
    ld hl, SoundEngine_NRTimbreRegisterAddressTable
    add l
    ld l, a
    ld c, [hl]
    ld a, b
    rrca
    rrca
    ldh [c], a

.ReturnFromWriteTimbre:
    pop hl
    pop bc
    ret


SoundEngine_WriteVoiceFrequencyPair::
    push bc
    ld a, c
    and $03
    push hl
    cp $02
    jr nz, .SelectFrequencyTargetRegisters

    rlc h
    jr nc, .SelectFrequencyTargetRegisters

    push af
    xor a
    ldh [rNR30], a
    ld a, $80
    ldh [rNR30], a
    pop af

.SelectFrequencyTargetRegisters:
    ld hl, SoundEngine_NRFrequencyRegisterAddressTable
    add l
    ld l, a
    ld c, [hl]
    pop hl
    ld a, l
    ldh [c], a
    inc c
    ld a, h
    ldh [c], a
    pop bc
    ret


SoundEngine_LoadWaveRAMPresetByIndex::
    push bc
    push hl
    add a
    ld hl, SoundEngine_WaveRAMPresetPointerTable
    add l
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $30
    xor a
    ldh [rNR30], a
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, [hl+]
    ldh [c], a
    inc c
    ld a, $80
    ldh [rNR30], a
    pop hl
    pop bc
    ret


SoundEngine_ComputeFrequencyPairFromPitchControl::
    push bc
    ld c, l
    add h
    ld b, $00

.ComputeOctaveAndSemitoneLoop:
    sub $0c
    inc b
    jr nc, .ComputeOctaveAndSemitoneLoop

    dec b
    add $0c
    jr .LookupSemitoneAndApplyOctaveShift

    push bc
    ld b, h
    ld c, l
    push af
    swap a
    and $0f
    ld l, $0c
    call SoundEngine_MultiplyLByALowNibble
    ld l, a
    pop af
    and $0f
    add l
    add b
    ld h, $00
    ld l, a
    ld a, $0c
    call SoundEngine_DivideHLByA_8Step
    ld b, h
    ld a, l

.LookupSemitoneAndApplyOctaveShift:
    add a
    push af
    ld hl, SoundEngine_PitchBendSlopeWordTable
    add l
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    call SoundEngine_MultiplyHLByA_8Bit
    ld c, h
    pop af
    ld hl, SoundEngine_SemitoneFrequencyWordTable
    add l
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, b
    or a
    jr z, .ReturnFromFrequencyPairCompute

    ld a, h
    ld h, $04

.ApplyOctaveShiftLoop:
    srl a
    rr l
    or h
    dec b
    jr nz, .ApplyOctaveShiftLoop

    ld h, a

.ReturnFromFrequencyPairCompute:
    pop bc
    ret


SoundEngine_SendDeferredSGBPacketWithClearedPayloadTail::
    ld a, $41
    ld [rSoundDeferredSGBPacketHeader], a
    ld b, $0b
    ld hl, rSoundDeferredSGBPacketPayloadClearStart
    xor a

.ClearDeferredPacketPayloadLoop:
    ld [hl+], a
    dec b
    jr nz, .ClearDeferredPacketPayloadLoop

    ld hl, rSoundDeferredSGBPacketHeader
    call SoundEngine_SendSGBPacketStreamFromHL
    ret


SoundEngine_SendSGBPacketStreamFromHL::
    ld a, [hl]
    and $07
    ret z

    ld c, $00

.SendNextSGBPacket:
    push af
    ld a, $30
    ldh [c], a
    ld a, $00
    ldh [c], a
    ld a, $30
    ldh [c], a
    ld d, $10

.SendPacketByteLoop:
    ld b, [hl]
    inc hl
    ld e, $08

.SendPacketBitLoop:
    ld a, $10
    rrc b
    jr c, .ClockOutCurrentSGBBit

    ld a, $20

.ClockOutCurrentSGBBit:
    ldh [c], a
    ld a, $30
    ldh [c], a
    dec e
    jr nz, .SendPacketBitLoop

    dec d
    jr nz, .SendPacketByteLoop

    ld a, $20
    ldh [c], a
    ld a, $30
    ldh [c], a
    pop af
    dec a
    ret z

    call SoundEngine_BusyWaitDelayForSGBPacketTiming
    jr .SendNextSGBPacket

SoundEngine_BusyWaitDelayForSGBPacketTiming::
    push hl
    ld hl, $1b58

.DelayLoop:
    nop
    nop
    nop
    dec hl
    ld a, h
    or l
    jr nz, .DelayLoop

    pop hl
    ret


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
