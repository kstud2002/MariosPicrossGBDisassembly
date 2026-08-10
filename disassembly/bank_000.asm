; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    di
    jp Boot


    ; padding
    ds $4, $00

RST_08::
    ldh a, [rLCDC]
    bit 7, a
    ret z

    ld hl, rVBlankSyncFlag
    xor a
    ld [hl], a

.WaitForVBlankSyncFlagLoop:
    halt
    ld a, [hl]
    and a
    jr z, .WaitForVBlankSyncFlagLoop

    ret


RST_18::
    add a
    pop hl
    ld e, a
    ld d, $00
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, e
    ld h, d
    jp hl


    ; padding
    ds $1c, $00

VBlankInterrupt::
    jp VBlankInterruptHandler


    ; padding
    ds $5, $00

LCDCInterrupt::
    jp LCDCInterruptHandler


    ; padding
    ds $5, $00

TimerOverflowInterrupt::
    jp TimerOverflowInterruptHandlerStub


    ; padding
    ds $5, $00

SerialTransferCompleteInterrupt::
    jp SerialTransferCompleteInterruptHandlerStub


    ; padding
    ds $5, $00

JoypadTransitionInterrupt::
    jp JoypadTransitionInterruptHandlerStub


    ; padding
    ds $9d, $00

Boot::
    nop
    jp GameInitEntryPoint


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "MARIO'S PICROSS", $00

HeaderNewLicenseeCode::
    db $30, $31

HeaderSGBFlag::
    db $03

HeaderCartridgeType::
    db $03

HeaderROMSize::
    db $03

HeaderRAMSize::
    db $02

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $12

HeaderGlobalChecksum::
    db $2a, $49

GameInitEntryPoint::
    ld sp, $fffe
    di
    xor a
    ldh [rIF], a
    ldh a, [rLCDC]
    bit 7, a
    jr nz, .EnsureLCDCEnabledAndInitialDelay

    set 7, a
    ldh [rLCDC], a

.EnsureLCDCEnabledAndInitialDelay:
    ld bc, $0002
    call BusyWaitDelayByBC

.WaitForScanline91:
    ldh a, [rLY]
    cp $91
    jr c, .WaitForScanline91

    ld a, $80
    ldh [rLCDC], a
    xor a
    ldh [rBGP], a
    ldh [rOBP0], a
    ldh [rOBP1], a
    ld bc, $0002
    call BusyWaitDelayByBC
    call DisableLCDAtVBlank
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [rROMB], a
    ld a, $00
    ld [$4000], a
    ld a, $01
    ld [rActiveROMBank], a
    ld hl, $c000
    ld bc, $1fff
    call ZeroMemoryBlock
    ld sp, rSubtractiveRNGSeedSourceByte
    call InstallHRAMOAMDMAStub
    call ClearShadowOAMBuffer
    call FillBGMap0WithTile01
    call FillBGMap1WithTile01
    xor a
    ld [rCommandQueueWriteCursor], a
    ld [rCommandQueueReadCursor], a
    ld [rCommandQueueReservedOrUnused], a
    ld [rLCDCInterruptDispatchIndex], a
    ld [rVBlankLCDCBit4ForceFlag], a
    ld hl, rLCDCShadow
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $a6
    ld [hl+], a
    ld a, $8f
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    ld a, $01
    ldh [rIE], a
    ldh [rIE], a
    ei
    call DetectSuperGameBoyViaMltReqHandshake
    rl a
    and $01
    ld [rIsSuperGameBoyMode], a
    jr z, .AfterSGBStartupTransferCheck

    call RunSGBStartupTransferPacketSequence

.AfterSGBStartupTransferCheck:
    xor a
    ld [rSGBPacketTransferBusyFlag], a
    ld a, $00
    call CallSoundCommandDispatcher
    ld a, $40
    ld [rSubtractiveRNGModulus], a
    call InitializeSubtractiveRNGState
    call HandleStartupSaveDataIntegrityCheck
    ld hl, SaveDataDefaultPerSaveSlotModeBGMSelectionIndices
    ld de, rSaveSlot1EasyPicrossBGMSelectionIndex
    ld bc, $000f
    call CopyMemoryBlock
    call RefreshSaveValidationChecksumsAndMirrors
    ld a, $02
    ld hl, $45ee
    call SwitchBankToAAndJumpToHL
    ld sp, $fffe
    ld bc, $003c
    call BusyWaitDelayByBC
    ld a, $05
    call CallSoundCommandDispatcher
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    xor a
    ld [rBGPShadow], a
    ld [rOBP0Shadow], a
    ld [rOBP1Shadow], a
    ld bc, $0002
    call BusyWaitDelayByBC
    di
    xor a
    ldh [rIF], a
    ld sp, $fffe
    call DisableLCDAtVBlank
    ld a, $0a
    ld [$0000], a
    ld a, $01
    ld [rROMB], a
    ld a, $00
    ld [$4000], a
    ld a, $01
    ld [rActiveROMBank], a
    ld sp, rSubtractiveRNGSeedSourceByte
    call InstallHRAMOAMDMAStub
    call ClearShadowOAMBuffer
    call FillBGMap0WithTile01
    call FillBGMap1WithTile01
    xor a
    ld [rCommandQueueWriteCursor], a
    ld [rCommandQueueReadCursor], a
    ld [rCommandQueueReservedOrUnused], a
    ld [rLCDCInterruptDispatchIndex], a
    ld [rVBlankLCDCBit4ForceFlag], a
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a
    ld hl, rLCDCShadow
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $a6
    ld [hl+], a
    ld a, $8f
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld a, $01
    ldh [rIE], a
    ldh [rIE], a
    ei
    xor a
    ld [rSGBPacketTransferBusyFlag], a
    ld a, $00
    call CallSoundCommandDispatcher
    ld a, $40
    ld [rSubtractiveRNGModulus], a
    call InitializeSubtractiveRNGState
    call HandleStartupSaveDataIntegrityCheck
    ld a, $02
    ld hl, $45ee
    call SwitchBankToAAndJumpToHL

VBlankInterruptHandler::
    push af
    push bc
    push de
    push hl
    call rOAMDMAHRAMStubEntry
    call ProcessPendingCommandQueueEntries
    ldh a, [rLY]
    ld a, [rVBlankLCDCBit4ForceFlag]
    and a
    jr nz, .ApplyLCDCShadowWithBit4Forced

    ld a, [rLCDCShadow]
    ldh [rLCDC], a
    jr .AfterLCDCUpdate

.ApplyLCDCShadowWithBit4Forced:
    ld a, [rLCDCShadow]
    set 4, a
    ldh [rLCDC], a

.AfterLCDCUpdate:
    ld a, [rSGBPacketTransferBusyFlag]
    and a
    jr nz, .CheckAllFaceButtonsHeldCombo

    ld hl, rBGPShadow
    ld a, [hl+]
    ldh [rBGP], a
    ld a, [hl+]
    ldh [rOBP0], a
    ld a, [hl+]
    ldh [rOBP1], a
    ld a, [hl+]
    ldh [rSCX], a
    ld a, [hl+]
    ldh [rSCY], a
    ld a, [hl+]
    ldh [rWX], a
    ld a, [hl+]
    ldh [rWY], a
    ld a, [hl+]
    ldh [rLYC], a
    ld a, [hl+]
    ldh [rSTAT], a
    call PollJoypadAndUpdateInputState

.CheckAllFaceButtonsHeldCombo:
    ld a, [rInputButtonsHeld]
    cp $0f
    jr nz, .MaybeRunSoundEngineUpdate

    ld a, [rInputButtonsPressed]
    and $0f
    jr z, .MaybeRunSoundEngineUpdate

    ld hl, $0214
    push hl
    reti


.MaybeRunSoundEngineUpdate:
    ld a, [rUseLCDCInterruptForSoundEngineUpdateFlag]
    and a
    jr nz, .FinalizeAndExit

    ld a, [rSGBPacketTransferBusyFlag]
    and a
    jr nz, .FinalizeAndExit

    call CallSoundEngineUpdateRoutine

.FinalizeAndExit:
    ld a, [rVBlankFrameCounter]
    inc a
    ld [rVBlankFrameCounter], a
    ld a, $01
    ld [rVBlankSyncFlag], a
    pop hl
    pop de
    pop bc
    pop af
    reti


LCDCInterruptHandler::
    push af
    push bc
    push de
    push hl
    ld hl, LCDCInterruptHandlerReturnAndReti
    push hl
    ld a, [rLCDCInterruptDispatchIndex]
    sla a
    ld c, a
    ld b, $00
    ld hl, LCDCInterruptDispatchTable
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    pop hl
    jp hl


LCDCInterruptHandlerReturnAndReti::
    pop hl
    pop de
    pop bc
    pop af
    reti


LCDCInterruptDispatchTable::
    db $5a, $03
    db $6f, $08
    db $9e, $08
    db $5a, $03

LCDCInterruptDispatchNoOpReturn::
    ret


TimerOverflowInterruptHandlerStub::
    reti


SerialTransferCompleteInterruptHandlerStub::
    reti


JoypadTransitionInterruptHandlerStub::
    reti


SETCHARMAP ascii

HiddenProgrammerCredits::
    db "NoriakiTeramotoE"

SaveValidationMagicBytes::
    db $5f, $02, $03, $0f, $00

GameStateDispatcher::
    ld e, a
    add a
    add e
    pop hl
    ld e, a
    ld d, $00
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [rActiveROMBank]
    push af
    ld a, [hl]
    ld [rActiveROMBank], a
    ld [rROMB], a
    ld l, e
    ld h, d
    ld de, $0391
    push de
    jp hl


    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    ret


WaitForScanline40OrDelay::
    push hl
    ldh a, [rLCDC]
    bit 7, a
    jr nz, .SyncAndWaitForScanline40

    ld de, $06d6

.DelayLoop_LCDOff:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, .DelayLoop_LCDOff

    pop hl
    ret


.SyncAndWaitForScanline40:
    rst RST_08

.WaitForScanline40Loop:
    ldh a, [rLY]
    cp $40
    jr c, .WaitForScanline40Loop

    pop hl
    ret


CallSoundCommandDispatcher::
    push af
    push bc
    push de
    push hl
    ld l, a
    ldh a, [rIE]
    push af
    res 0, a
    ldh [rIE], a
    ld a, [rActiveROMBank]
    push af
    ld a, $0f
    ld [rActiveROMBank], a
    ld [rROMB], a

.DispatchSoundCommandLoop:
    push bc
    push hl
    ld a, l
    call $4000
    pop hl
    pop bc
    jr nc, .RestoreBankAndInterruptEnableAndReturn

    nop
    nop
    nop
    nop
    nop
    jr .DispatchSoundCommandLoop

.RestoreBankAndInterruptEnableAndReturn:
    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    pop af
    ldh [rIE], a
    pop hl
    pop de
    pop bc
    pop af
    ret


CallSoundEngineUpdateRoutine::
    push af
    push bc
    push de
    push hl
    ld a, [rActiveROMBank]
    push af
    ld a, $0f
    ld [rActiveROMBank], a
    ld [rROMB], a
    call $4003
    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    pop hl
    pop de
    pop bc
    pop af
    ret


PlayScreenTransitionFadeIn::
    ld a, [rIsSuperGameBoyMode]
    and a
    jp nz, PlayScreenTransitionFadeIn_SGB

    ld a, [rActiveROMBank]
    push af
    ld a, b
    ld [rActiveROMBank], a
    ld [rROMB], a
    ld b, $04

.ApplyFadeStepLoop:
    ld a, [hl+]
    ld [rBGPShadow], a
    ld a, [hl+]
    ld [rOBP0Shadow], a
    ld a, [hl+]
    ld [rOBP1Shadow], a
    push bc
    push hl
    ld bc, $0004
    call BusyWaitDelayByBC
    pop hl
    pop bc
    dec b
    jr nz, .ApplyFadeStepLoop

    ld [rStatePhaseTimer], a
    ld [rSharedAnimationFrameState], a
    ld [rSharedUIAnimationColumnAccumulator], a
    ld [rHintCursorAnimationRowAccumulator], a
    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    ret


PlayScreenTransitionFadeOut::
    ld a, [rIsSuperGameBoyMode]
    and a
    jp nz, PlayScreenTransitionFadeOut_SGB

    ld a, [rActiveROMBank]
    push af
    ld a, b
    ld [rActiveROMBank], a
    ld [rROMB], a
    ld b, $04

.ApplyFadeStepLoop:
    ld a, [hl-]
    ld [rOBP1Shadow], a
    ld a, [hl-]
    ld [rOBP0Shadow], a
    ld a, [hl-]
    ld [rBGPShadow], a
    push bc
    push hl
    ld bc, $0004
    call BusyWaitDelayByBC
    pop hl
    pop bc
    dec b
    jr nz, .ApplyFadeStepLoop

    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    ret


DisableLCDAtVBlank::
    ldh a, [rLCDC]
    bit 7, a
    ret z

    ldh a, [rIE]
    push af
    xor a
    ldh [rIE], a

.WaitForVBlankLine91:
    ldh a, [rLY]
    cp $91
    jr nz, .WaitForVBlankLine91

    ld a, [rLCDCShadow]
    res 7, a
    ldh [rLCDC], a
    ld [rLCDCShadow], a
    pop af
    ldh [rIE], a
    ret


EnableLCDFromShadow::
    ld a, [rLCDCShadow]
    set 7, a
    ldh [rLCDC], a
    ld [rLCDCShadow], a
    ret


    ldh a, [rIE]
    res 0, a
    ldh [rIE], a
    ret


    ldh a, [rIE]
    set 0, a
    ldh [rIE], a
    ret


InstallHRAMOAMDMAStub::
    ld c, $80
    ld b, $0a
    ld hl, OAMDMAHRAMStubTemplate

.CopyHRAMOAMDMAStubByteLoop:
    ld a, [hl+]
    ldh [c], a
    inc c
    dec b
    jr nz, .CopyHRAMOAMDMAStubByteLoop

    ret


OAMDMAHRAMStubTemplate::
    ld a, $c0
    ldh [rDMA], a
    ld a, $28

.WaitForDMATransferLoop:
    dec a
    jr nz, .WaitForDMATransferLoop

    ret


ZeroMemoryBlock::
    xor a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, ZeroMemoryBlock

    ret


CopyMemoryBlock::
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, CopyMemoryBlock

    ret


BankedTileCopy::
    ld [rRequestedROMBank], a
    ld a, [rActiveROMBank]
    push af
    ld a, [rRequestedROMBank]
    ld [rActiveROMBank], a
    ld [rROMB], a

.CopyLoop:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, .CopyLoop

    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    ret


BankedTransparentTileCopy::
    ld [rRequestedROMBank], a
    ld a, [rActiveROMBank]
    push af
    ld a, [rRequestedROMBank]
    ld [rActiveROMBank], a
    ld [rROMB], a
    srl b
    rr c

.MaskAndCopyLoop:
    push bc
    ld a, [hl+]
    ld b, a
    or [hl]
    xor $ff
    ld c, a
    ld a, [de]
    and c
    or b
    ld [de], a
    inc de
    ld a, [de]
    and c
    or [hl]
    ld [de], a
    inc de
    inc hl
    pop bc
    dec bc
    ld a, c
    or b
    jr nz, .MaskAndCopyLoop

    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    ret


BankedTileCopyVRAMSafe::
    ld [rRequestedROMBank], a
    ld a, [rActiveROMBank]
    push af
    ld a, [rRequestedROMBank]
    ld [rActiveROMBank], a
    ld [rROMB], a
    ldh a, [rIE]
    push af

.WaitForLYBelow80_PreTransfer:
    ldh a, [rLY]
    cp $80
    jr nc, .WaitForLYBelow80_PreTransfer

    ldh a, [rIE]
    res 0, a
    ldh [rIE], a

.WaitForLYAtOrAbove90:
    ldh a, [rLY]
    cp $90
    jr c, .WaitForLYAtOrAbove90

    ld a, [rLCDCShadow]
    set 4, a
    ldh [rLCDC], a
    ld a, $20

.CopyChunkOf20BytesOrUntilDone:
    push af
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr z, .PostCopySyncAndFinalizeTransfer

    pop af
    dec a
    jr nz, .CopyChunkOf20BytesOrUntilDone

.WaitForLYBelow90BeforeNextChunk:
    ldh a, [rLY]
    cp $90
    jr c, .WaitForLYAtOrAbove90

    jr .WaitForLYBelow90BeforeNextChunk

.PostCopySyncAndFinalizeTransfer:
    pop af
    ldh a, [rLY]
    cp $80
    jr c, .RestoreIEAndBankAndReturn

.WaitForLYAtOrAbove90_PostCopy:
    ldh a, [rLY]
    cp $90
    jr c, .WaitForLYAtOrAbove90_PostCopy

    ld a, [rLCDCShadow]
    set 4, a
    ldh [rLCDC], a

.WaitForLYBelow80_PostCopy:
    ldh a, [rLY]
    cp $80
    jr nc, .WaitForLYBelow80_PostCopy

.RestoreIEAndBankAndReturn:
    pop af
    ldh [rIE], a
    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    ret


FillBGMap0WithTile01::
    ld a, $01
    ld hl, $9800

.FillBGMap0WithTile01Loop:
    ld [hl+], a
    bit 2, h
    jr z, .FillBGMap0WithTile01Loop

    ret


FillBGMap1WithTile01::
    ld a, $01
    ld hl, $9c00

.FillBGMap1WithTile01Loop:
    ld [hl+], a
    bit 5, h
    jr z, .FillBGMap1WithTile01Loop

    ret


ClearShadowOAMBuffer::
    ld a, $f0
    ld hl, $c000

.FillWithF0Loop:
    ld [hl+], a
    bit 0, h
    jr z, .FillWithF0Loop

    xor a
    ld [rShadowOAMWriteCursor], a
    ret


ClearShadowOAMBufferFromCursor::
    ld a, [rShadowOAMWriteCursor]
    ld l, a
    ld h, $c0
    ld a, $f0

.FillWithF0Loop:
    ld [hl+], a
    bit 0, h
    jr z, .FillWithF0Loop

    xor a
    ld [rShadowOAMWriteCursor], a
    ret


SwitchBankToAAndJumpToHL::
    ld [rActiveROMBank], a
    ld [rROMB], a
    jp hl


SwitchBankToBAndJumpToHL::
    ld a, [rActiveROMBank]
    push af
    ld a, b
    ld [rActiveROMBank], a
    ld [rROMB], a
    jp hl


ReturnFromBankedJumpRestoreBank::
    push af
    push hl
    ld hl, sp+$05
    ld a, [hl]
    ld [rActiveROMBank], a
    ld [rROMB], a
    pop hl
    pop af
    inc sp
    inc sp
    ret


DelayFramesByBC::
    push bc
    rst RST_08
    pop bc
    dec bc
    ld a, c
    or b
    jr nz, DelayFramesByBC

    ret


BusyWaitDelayByBC::
    ld de, $06d6

.InnerDelayLoop:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, .InnerDelayLoop

    dec bc
    ld a, b
    or c
    jr nz, BusyWaitDelayByBC

    ret


GetSubtractiveRNGStateByte::
    push hl
    ld a, [rSubtractiveRNGStateCursor]
    ld c, a
    ld b, $00
    inc a
    cp $37
    jr nz, .StoreRNGCursorAndReadStateByte

    call AdvanceSubtractiveRNGState
    xor a
    ld bc, $0000

.StoreRNGCursorAndReadStateByte:
    ld [rSubtractiveRNGStateCursor], a
    ld hl, rSubtractiveRNGStateTableStart
    add hl, bc
    ld a, [hl]
    pop hl
    ret


InitializeSubtractiveRNGState::
    ld a, [rSubtractiveRNGModulus]
    ld d, a
    ld a, [rSubtractiveRNGSeedSourceByte]

.ReduceSeedModuloRangeLoop:
    cp d
    jr c, .InitializeRNGStateFromReducedSeed

    sub d
    jr .ReduceSeedModuloRangeLoop

.InitializeRNGStateFromReducedSeed:
    ld [rSubtractiveRNGStateSeed], a
    ld [rSubtractiveRNGStateTableEnd], a
    ld e, $01
    ld hl, SubtractiveRNGStateInitOffsetTable
    ld a, $36

.InitializeRNGStateEntryLoop:
    push af
    ld c, [hl]
    inc hl
    ld b, $00
    push hl
    ld hl, rSubtractiveRNGStateTableStart
    add hl, bc
    ld [hl], e
    ld a, [rSubtractiveRNGStateSeed]
    sub e
    jr nc, .WrapAndStoreRNGStateByte

    add d

.WrapAndStoreRNGStateByte:
    ld e, a
    ld a, [hl]
    ld [rSubtractiveRNGStateSeed], a
    pop hl
    pop af
    dec a
    jr nz, .InitializeRNGStateEntryLoop

    call AdvanceSubtractiveRNGState
    call AdvanceSubtractiveRNGState
    call AdvanceSubtractiveRNGState
    ret


SubtractiveRNGStateInitOffsetTable::
    db $14, $29
    db $07, $1c
    db $31, $0f
    db $24, $02
    db $17, $2c
    db $0a, $1f
    db $34, $12
    db $27, $05
    db $1a, $2f
    db $0d, $22
    db $00, $15
    db $2a, $08
    db $1d, $32
    db $10, $25
    db $03, $18
    db $2d, $0b
    db $20, $35
    db $13, $28
    db $06, $1b
    db $30, $0e
    db $23, $01
    db $16, $2b
    db $09, $1e
    db $33, $11
    db $26, $04
    db $19, $2e
    db $0c, $21

AdvanceSubtractiveRNGState::
    ld a, [rSubtractiveRNGModulus]
    ld d, a
    ld bc, rSubtractiveRNGStateTableStart
    ld hl, rSubtractiveRNGStateTableOffset1f
    ld e, $18

.FirstSubtractivePassLoop:
    ld a, [bc]
    sub [hl]
    jr nc, .StoreFirstSubtractivePassByte

    add d

.StoreFirstSubtractivePassByte:
    ld [bc], a
    dec e
    jr nz, .FirstSubtractivePassLoop

    ld bc, rSubtractiveRNGStateTableOffset18
    ld hl, rSubtractiveRNGStateTableStart
    ld e, $1f

.SecondSubtractivePassLoop:
    ld a, [bc]
    sub [hl]
    jr nc, .StoreSecondSubtractivePassByte

    add d

.StoreSecondSubtractivePassByte:
    ld [bc], a
    dec e
    jr nz, .SecondSubtractivePassLoop

    ret


PollJoypadAndUpdateInputState::
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    and $0f
    swap a
    ld b, a
    ld a, $30
    ldh [rP1], a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    and $0f
    or b
    cpl
    ld [rInputButtonsHeld], a
    ld a, $30
    ldh [rP1], a
    ld a, [rInputButtonsHeld]
    ld hl, rInputButtonsHeldPrevious
    xor [hl]
    ld hl, rInputButtonsHeld
    and [hl]
    ld [rInputButtonsPressed], a
    ld [rInputButtonsPressedOrRepeated], a
    ld a, [rInputButtonsHeld]
    and a
    jr z, .ResetInputRepeatCountdownToInitialDelay

    ld hl, rInputButtonsHeldPrevious
    cp [hl]
    jr nz, .ResetInputRepeatCountdownToInitialDelay

    ld hl, rInputRepeatCountdown
    dec [hl]
    jr nz, .StoreCurrentHeldButtonsAsPreviousAndReturn

    ld a, [rInputButtonsHeld]
    ld [rInputButtonsPressedOrRepeated], a
    ld a, [rInputRepeatSubsequentInterval]
    ld [rInputRepeatCountdown], a
    jr .StoreCurrentHeldButtonsAsPreviousAndReturn

.ResetInputRepeatCountdownToInitialDelay:
    ld a, [rInputRepeatInitialDelay]
    ld [rInputRepeatCountdown], a

.StoreCurrentHeldButtonsAsPreviousAndReturn:
    ld a, [rInputButtonsHeld]
    ld [rInputButtonsHeldPrevious], a
    ret


QueueCommandStreamAndProcessIfLCDOff::
    push af
    ld hl, rCommandQueueWriteCursor
    ld l, [hl]
    ld h, $c2
    ld a, $ff
    ld [hl], a
    inc l
    pop af
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld [hl], a
    inc l
    xor a
    ld [hl], a
    ld a, [rCommandQueueWriteCursor]
    add $04
    ld [rCommandQueueWriteCursor], a
    ldh a, [rLCDC]
    bit 7, a
    ret nz

    ldh a, [rIE]
    push af
    res 0, a
    ldh [rIE], a
    call ProcessPendingCommandQueueEntries
    pop af
    ldh [rIE], a
    ret


ProcessPendingCommandQueueEntries::
    ld a, [rCommandQueueWriteCursor]
    ld hl, rCommandQueueReadCursor
    cp [hl]
    ret z

    ld l, [hl]
    ld h, $c2

.ProcessQueuedEntryLoop:
    ld a, [hl]
    and a
    jr z, .CommitCommandQueueReadCursor

    inc l
    ld e, [hl]
    inc l
    ld d, [hl]
    inc l
    ld a, [rActiveROMBank]
    push af
    ld a, [hl]
    ld [rActiveROMBank], a
    ld [rROMB], a
    inc l
    call ExecuteQueuedCommandStream
    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    jr .ProcessQueuedEntryLoop

.CommitCommandQueueReadCursor:
    ld a, l
    ld [rCommandQueueReadCursor], a
    ret


ExecuteQueuedCommandStream::
    ldh a, [rIE]
    push af
    res 0, a
    ldh [rIE], a
    push hl

.ReadNextCommandHeader:
    ld a, [de]
    ld h, a
    inc de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    inc de
    bit 7, a
    jr nz, .DispatchVerticalCopyMode

    bit 6, a
    jr nz, .SetupLinearRepeatFill

    and $3f
    ld b, a

.CopyLinearLiteralBytesLoop:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, .CopyLinearLiteralBytesLoop

    jr .CheckCommandStreamTerminator

.SetupLinearRepeatFill:
    and $3f
    ld b, a
    ld a, [de]

.FillLinearRepeatedByteLoop:
    ld [hl+], a
    dec b
    jr nz, .FillLinearRepeatedByteLoop

    inc de
    jr .CheckCommandStreamTerminator

.DispatchVerticalCopyMode:
    bit 6, a
    jr nz, .SetupVerticalRepeatFill

    and $3f
    ld bc, $0020

.CopyVerticalLiteralBytesLoop:
    push af
    ld a, [de]
    ld [hl], a
    inc de
    add hl, bc
    pop af
    dec a
    jr nz, .CopyVerticalLiteralBytesLoop

    jr .CheckCommandStreamTerminator

.SetupVerticalRepeatFill:
    and $3f
    ld bc, $0020

.FillVerticalRepeatedByteLoop:
    push af
    ld a, [de]
    ld [hl], a
    add hl, bc
    pop af
    dec a
    jr nz, .FillVerticalRepeatedByteLoop

    inc de

.CheckCommandStreamTerminator:
    ld a, [de]
    and a
    jr nz, .ReadNextCommandHeader

    pop hl
    pop af
    ldh [rIE], a
    ret


LoadPuzzleDataBuffer::
    ld hl, rPuzzleCellStateBufferStart
    ld bc, $0100
    call ZeroMemoryBlock
    ld a, [rPuzzleDataIndexLow]
    ld c, a
    ld a, [rPuzzleDataIndexHigh]
    ld b, a
    sla c
    rl b
    ld hl, $552e
    ld a, [rActiveROMBank]
    push af
    ld a, $03
    ld [rActiveROMBank], a
    ld [rROMB], a
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    ld a, [rActiveROMBank]
    push af
    ld a, $02
    ld [rActiveROMBank], a
    ld [rROMB], a
    ld b, $1e
    ld hl, rPuzzleCellStateBufferStart

.DecodePuzzleDataBitsLoop:
    ld a, [de]
    sla a
    rl [hl]
    inc hl
    sla a
    rl [hl]
    inc hl
    sla a
    rl [hl]
    inc hl
    sla a
    rl [hl]
    inc hl
    sla a
    rl [hl]
    inc hl
    sla a
    rl [hl]
    inc hl
    sla a
    rl [hl]
    inc hl
    sla a
    rl [hl]
    inc hl
    inc de
    dec b
    jr nz, .DecodePuzzleDataBitsLoop

    ld a, [de]
    ld [rPuzzleGridWidth], a
    inc de
    ld a, [de]
    ld [rPuzzleGridHeight], a
    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    ret


LCDCInterruptDispatchRoutineAtLY2F_TickAndMaybeRunSoundEngineUpdate::
    ldh a, [rLY]
    cp $2f
    jr nz, .Return

    ld a, $03
    ld hl, rSTAT

.WaitForSTATMode0Loop:
    and [hl]
    jr nz, .WaitForSTATMode0Loop

    ld a, [rLCDCShadow]
    res 4, a
    ldh [rLCDC], a
    ld hl, rPuzzleTimerActive
    inc [hl]
    ld a, [rLCDCFrameTickCounter]
    inc a
    ld [rLCDCFrameTickCounter], a
    ld a, [rUseLCDCInterruptForSoundEngineUpdateFlag]
    and a
    ret z

    ld a, [rSGBPacketTransferBusyFlag]
    and a
    jr nz, .Return

    call CallSoundEngineUpdateRoutine

.Return:
    ret


LCDCInterruptDispatchRoutineAtLY2F_MaybeRunSoundEngineUpdate::
    ldh a, [rLY]
    cp $2f
    jr nz, .Return

    ld a, [rUseLCDCInterruptForSoundEngineUpdateFlag]
    and a
    ret z

    ld a, [rSGBPacketTransferBusyFlag]
    and a
    jr nz, .Return

    call CallSoundEngineUpdateRoutine

.Return:
    ret


PrepareBGTileCopy::
    ld a, [rBGTileCopySourceX]
    and $07
    ld c, a
    ld b, $00
    ld hl, BGTileCopyMaskLookupTable
    add hl, bc
    ld a, [hl]
    ld [rBGTileCopyMaskHigh], a
    ld a, [rBGTileCopyDestX]
    and $07
    ld c, a
    ld b, $00
    ld hl, $0d62
    add hl, bc
    ld a, [hl]
    ld [rBGTileCopyValueA], a
    ld a, [rBGTileCopySourceX]
    and $f8
    ld c, a
    ld a, [rBGTileCopyDestX]
    and $f8
    sub c
    srl a
    srl a
    srl a
    ld [rBGTileCopyValueB], a
    ld a, [rBGTileCopySourceX]
    ld c, a
    ld a, [rBGTileCopyDestX]
    sub c
    srl a
    srl a
    srl a
    inc a
    ld [rBGTileCopyValueC], a
    ld a, [rBGTileCopySourceX]
    and $07
    ld c, a
    add $38
    ld [rBGTileCopyValueE], a
    ld b, $00
    ld hl, BGTileCopyMaskLookupTable
    add hl, bc
    ld a, [hl]
    ld [rBGTileCopyValueF], a
    ld hl, $0d61
    add hl, bc
    ld a, [hl]
    ld [rBGTileCopyValueG], a
    ld a, [rBGTileCopyBankAddressLow]
    ld c, a
    ld a, [rBGTileCopyBankAddressHigh]
    ld b, a
    ld a, [rActiveROMBank]
    push af
    ld a, [rBGTileCopyBank]
    ld [rActiveROMBank], a
    ld [rROMB], a
    ld de, $c363
    ld a, [rBGTileCopySourceY]
    ld l, a
    ld a, [rBGTileCopySourceX]
    and $f8
    ld h, a

.PrepareBGTileCopyLoop:
    xor a
    ld [rBGTileCopyValueH], a
    ld [rBGTileCopyValueI], a
    ld a, [rBGTileCopyValueC]
    ld [rBGTileCopyValueD], a
    ld a, [rBGTileCopyMaskHigh]
    ld [rBGTileCopyMaskLow], a
    push bc
    push hl
    ld a, [rBGTileCopyValueB]
    and a
    jr nz, .PrepareBGTileCopyRow

    push hl
    ld a, [rBGTileCopyValueA]
    ld hl, rBGTileCopyMaskHigh
    and [hl]
    ld [rBGTileCopyMaskLow], a
    pop hl
    jp .PrepareBGTileCopyNextRow


.PrepareBGTileCopyRow:
    push hl
    call ResolveTilemapTileDataAddressAndStoreToDE
    ld a, [rBGTileCopyMaskLow]
    ld [de], a
    inc de
    ld a, [bc]
    ld l, a
    ld a, [rBGTileCopyValueE]
    ld h, a
    ld a, [hl]
    ld [de], a
    ld hl, rBGTileCopyValueG
    and [hl]
    ld [rBGTileCopyValueH], a
    inc bc
    inc de
    ld a, [bc]
    ld l, a
    ld a, [rBGTileCopyValueE]
    ld h, a
    ld a, [hl]
    ld [de], a
    ld hl, rBGTileCopyValueG
    and [hl]
    ld [rBGTileCopyValueI], a
    ld a, c
    add $0f
    ld c, a
    ld a, b
    adc $00
    ld b, a
    inc de
    pop hl
    ld a, h
    add $08
    ld h, a
    ld a, [rBGTileCopyValueD]
    dec a
    ld [rBGTileCopyValueD], a
    ld a, [rBGTileCopyValueB]
    dec a
    jr z, .PrepareBGTileCopyTail

.PrepareBGTileCopyRowSpanLoop:
    push af
    push hl
    call ResolveTilemapTileDataAddressAndStoreToDE
    ld a, $ff
    ld [de], a
    inc de
    ld a, [rBGTileCopyValueD]
    and a
    jr z, .PrepareBGTileCopyRowSpanFirstByte

    ld a, [bc]
    inc bc

.PrepareBGTileCopyRowSpanFirstByte:
    ld l, a
    ld a, [rBGTileCopyValueE]
    ld h, a
    ld a, [hl]
    push af
    ld hl, rBGTileCopyValueF
    and [hl]
    ld hl, rBGTileCopyValueH
    or [hl]
    ld [de], a
    pop af
    ld hl, rBGTileCopyValueG
    and [hl]
    ld [rBGTileCopyValueH], a
    inc de
    ld a, [rBGTileCopyValueD]
    and a
    jr z, .PrepareBGTileCopyRowSpanSecondByte

    ld a, [bc]
    push af
    ld a, c
    add $0f
    ld c, a
    ld a, b
    adc $00
    ld b, a
    pop af

.PrepareBGTileCopyRowSpanSecondByte:
    ld l, a
    ld a, [rBGTileCopyValueE]
    ld h, a
    ld a, [hl]
    push af
    ld hl, rBGTileCopyValueF
    and [hl]
    ld hl, rBGTileCopyValueI
    or [hl]
    ld [de], a
    pop af
    ld hl, rBGTileCopyValueG
    and [hl]
    ld [rBGTileCopyValueI], a
    inc de
    pop hl
    ld a, h
    add $08
    ld h, a
    ld a, [rBGTileCopyValueD]
    dec a
    ld [rBGTileCopyValueD], a
    pop af
    dec a
    jr nz, .PrepareBGTileCopyRowSpanLoop

.PrepareBGTileCopyTail:
    ld a, [rBGTileCopyValueA]
    ld [rBGTileCopyMaskLow], a

.PrepareBGTileCopyNextRow:
    call ResolveTilemapTileDataAddressAndStoreToDE
    ld a, [rBGTileCopyMaskLow]
    ld [de], a
    inc de
    ld a, [rBGTileCopyValueD]
    and a
    jr z, .PrepareBGTileCopyNextRowPart1

    ld a, [bc]
    inc bc

.PrepareBGTileCopyNextRowPart1:
    ld l, a
    ld a, [rBGTileCopyValueE]
    ld h, a
    ld a, [hl]
    push af
    ld hl, rBGTileCopyValueF
    and [hl]
    ld hl, rBGTileCopyValueH
    or [hl]
    ld [de], a
    pop af
    ld hl, rBGTileCopyValueG
    and [hl]
    ld [rBGTileCopyValueH], a
    inc de
    ld a, [rBGTileCopyValueD]
    and a
    jr z, .PrepareBGTileCopyNextRowPart2

    ld a, [bc]
    push af
    ld a, c
    add $0f
    ld c, a
    ld a, b
    adc $00
    ld b, a
    pop af

.PrepareBGTileCopyNextRowPart2:
    ld l, a
    ld a, [rBGTileCopyValueE]
    ld h, a
    ld a, [hl]
    push af
    ld hl, rBGTileCopyValueF
    and [hl]
    ld hl, rBGTileCopyValueI
    or [hl]
    ld [de], a
    pop af
    ld hl, rBGTileCopyValueG
    and [hl]
    ld [rBGTileCopyValueI], a
    inc de
    pop hl
    pop bc
    inc bc
    inc bc
    ld a, c
    and $0f
    jr nz, .PrepareBGTileCopyRowAdvance

    ld a, c
    add $f0
    ld c, a
    ld a, b
    adc $00
    ld b, a

.PrepareBGTileCopyRowAdvance:
    inc l
    ld a, [rBGTileCopyDestY]
    cp l
    jp nc, .PrepareBGTileCopyLoop

    xor a
    ld [de], a
    inc de
    ld [de], a
    ldh a, [rIE]
    push af

.WaitForVBlank:
    ldh a, [rLY]
    cp $80
    jr nc, .WaitForVBlank

    ldh a, [rIE]
    res 0, a
    ldh [rIE], a
    ld bc, $c363
    ld a, [rLCDCShadow]
    bit 7, a
    jr z, .CopyTileDataLoopAlt

.WaitForDisplayLine:
    ldh a, [rLY]
    cp $90
    jr c, .WaitForDisplayLine

    ld a, [rLCDCShadow]
    set 4, a
    ldh [rLCDC], a
    ld a, $14

.CopyTileDataLoop:
    push af
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    or l
    jr z, .RestoreInterruptsAndReturn

    inc bc
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    inc bc
    xor [hl]
    and e
    xor [hl]
    ld [hl+], a
    ld a, [bc]
    inc bc
    xor [hl]
    and e
    xor [hl]
    ld [hl], a
    pop af
    dec a
    jr nz, .CopyTileDataLoop

.WaitForDisplayLineLoop:
    ldh a, [rLY]
    cp $90
    jr c, .WaitForDisplayLine

    jr .WaitForDisplayLineLoop

.RestoreInterruptsAndReturn:
    pop af

.RestoreInterruptsAndWaitForVBlank:
    ldh a, [rLY]
    cp $80
    jr c, .RestoreInterrupts

.WaitForDisplayLineAndRestore:
    ldh a, [rLY]
    cp $90
    jr c, .WaitForDisplayLineAndRestore

    ld a, [rLCDCShadow]
    set 4, a
    ldh [rLCDC], a

.WaitForVBlankLoop:
    ldh a, [rLY]
    cp $80
    jr nc, .WaitForVBlankLoop

.RestoreInterrupts:
    pop af
    ldh [rIE], a
    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    ret


.CopyTileDataLoopAlt:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    or l
    jr z, .RestoreInterruptsAndWaitForVBlank

    inc bc
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    inc bc
    xor [hl]
    and e
    xor [hl]
    ld [hl+], a
    ld a, [bc]
    inc bc
    xor [hl]
    and e
    xor [hl]
    ld [hl], a
    jr .CopyTileDataLoopAlt

PrepareBGTileCopyNoLCDCBit4Force::
    ld a, [rBGTileCopySourceX]
    and $07
    ld c, a
    ld b, $00
    ld hl, BGTileCopyMaskLookupTable
    add hl, bc
    ld a, [hl]
    ld [rBGTileCopyMaskHigh], a
    ld a, [rBGTileCopyDestX]
    and $07
    ld c, a
    ld b, $00
    ld hl, $0d62
    add hl, bc
    ld a, [hl]
    ld [rBGTileCopyValueA], a
    ld a, [rBGTileCopySourceX]
    and $f8
    ld c, a
    ld a, [rBGTileCopyDestX]
    and $f8
    sub c
    srl a
    srl a
    srl a
    ld [rBGTileCopyValueB], a
    ld a, [rBGTileCopySourceX]
    ld c, a
    ld a, [rBGTileCopyDestX]
    sub c
    srl a
    srl a
    srl a
    inc a
    ld [rBGTileCopyValueC], a
    ld a, [rBGTileCopySourceX]
    and $07
    ld c, a
    add $38
    ld [rBGTileCopyValueE], a
    ld b, $00
    ld hl, BGTileCopyMaskLookupTable
    add hl, bc
    ld a, [hl]
    ld [rBGTileCopyValueF], a
    ld hl, $0d61
    add hl, bc
    ld a, [hl]
    ld [rBGTileCopyValueG], a
    ld a, [rBGTileCopyBankAddressLow]
    ld c, a
    ld a, [rBGTileCopyBankAddressHigh]
    ld b, a
    ld a, [rActiveROMBank]
    push af
    ld a, [rBGTileCopyBank]
    ld [rActiveROMBank], a
    ld [rROMB], a
    ld de, $c363
    ld a, [rBGTileCopySourceY]
    ld l, a
    ld a, [rBGTileCopySourceX]
    and $f8
    ld h, a

PrepareBGTileCopyLoop::
    xor a
    ld [rBGTileCopyValueH], a
    ld [rBGTileCopyValueI], a
    ld a, [rBGTileCopyValueC]
    ld [rBGTileCopyValueD], a
    ld a, [rBGTileCopyMaskHigh]
    ld [rBGTileCopyMaskLow], a
    push bc
    push hl
    ld a, [rBGTileCopyValueB]
    and a
    jr nz, .PrepareBGTileCopyRow

    push hl
    ld a, [rBGTileCopyValueA]
    ld hl, rBGTileCopyMaskHigh
    and [hl]
    ld [rBGTileCopyMaskLow], a
    pop hl
    jp PrepareBGTileCopyNextRow


.PrepareBGTileCopyRow:
    push hl
    call ResolveTilemapTileDataAddressAndStoreToDE
    ld a, [rBGTileCopyMaskLow]
    ld [de], a
    inc de
    ld a, [bc]
    ld l, a
    ld a, [rBGTileCopyValueE]
    ld h, a
    ld a, [hl]
    ld [de], a
    ld hl, rBGTileCopyValueG
    and [hl]
    ld [rBGTileCopyValueH], a
    inc bc
    inc de
    ld a, [bc]
    ld l, a
    ld a, [rBGTileCopyValueE]
    ld h, a
    ld a, [hl]
    ld [de], a
    ld hl, rBGTileCopyValueG
    and [hl]
    ld [rBGTileCopyValueI], a
    ld a, c
    add $0f
    ld c, a
    ld a, b
    adc $00
    ld b, a
    inc de
    pop hl
    ld a, h
    add $08
    ld h, a
    ld a, [rBGTileCopyValueD]
    dec a
    ld [rBGTileCopyValueD], a
    ld a, [rBGTileCopyValueB]
    dec a
    jr z, .PrepareBGTileCopyTail

.PrepareBGTileCopyRowSpanLoop:
    push af
    push hl
    call ResolveTilemapTileDataAddressAndStoreToDE
    ld a, $ff
    ld [de], a
    inc de
    ld a, [rBGTileCopyValueD]
    and a
    jr z, .PrepareBGTileCopyRowSpanFirstByte

    ld a, [bc]
    inc bc

.PrepareBGTileCopyRowSpanFirstByte:
    ld l, a
    ld a, [rBGTileCopyValueE]
    ld h, a
    ld a, [hl]
    push af
    ld hl, rBGTileCopyValueF
    and [hl]
    ld hl, rBGTileCopyValueH
    or [hl]
    ld [de], a
    pop af
    ld hl, rBGTileCopyValueG
    and [hl]
    ld [rBGTileCopyValueH], a
    inc de
    ld a, [rBGTileCopyValueD]
    and a
    jr z, .PrepareBGTileCopyRowSpanSecondByte

    ld a, [bc]
    push af
    ld a, c
    add $0f
    ld c, a
    ld a, b
    adc $00
    ld b, a
    pop af

.PrepareBGTileCopyRowSpanSecondByte:
    ld l, a
    ld a, [rBGTileCopyValueE]
    ld h, a
    ld a, [hl]
    push af
    ld hl, rBGTileCopyValueF
    and [hl]
    ld hl, rBGTileCopyValueI
    or [hl]
    ld [de], a
    pop af
    ld hl, rBGTileCopyValueG
    and [hl]
    ld [rBGTileCopyValueI], a
    inc de
    pop hl
    ld a, h
    add $08
    ld h, a
    ld a, [rBGTileCopyValueD]
    dec a
    ld [rBGTileCopyValueD], a
    pop af
    dec a
    jr nz, .PrepareBGTileCopyRowSpanLoop

.PrepareBGTileCopyTail:
    ld a, [rBGTileCopyValueA]
    ld [rBGTileCopyMaskLow], a

PrepareBGTileCopyNextRow::
    call ResolveTilemapTileDataAddressAndStoreToDE
    ld a, [rBGTileCopyMaskLow]
    ld [de], a
    inc de
    ld a, [rBGTileCopyValueD]
    and a
    jr z, .PrepareBGTileCopyNextRowPart1

    ld a, [bc]
    inc bc

.PrepareBGTileCopyNextRowPart1:
    ld l, a
    ld a, [rBGTileCopyValueE]
    ld h, a
    ld a, [hl]
    push af
    ld hl, rBGTileCopyValueF
    and [hl]
    ld hl, rBGTileCopyValueH
    or [hl]
    ld [de], a
    pop af
    ld hl, rBGTileCopyValueG
    and [hl]
    ld [rBGTileCopyValueH], a
    inc de
    ld a, [rBGTileCopyValueD]
    and a
    jr z, .PrepareBGTileCopyNextRowPart2

    ld a, [bc]
    push af
    ld a, c
    add $0f
    ld c, a
    ld a, b
    adc $00
    ld b, a
    pop af

.PrepareBGTileCopyNextRowPart2:
    ld l, a
    ld a, [rBGTileCopyValueE]
    ld h, a
    ld a, [hl]
    push af
    ld hl, rBGTileCopyValueF
    and [hl]
    ld hl, rBGTileCopyValueI
    or [hl]
    ld [de], a
    pop af
    ld hl, rBGTileCopyValueG
    and [hl]
    ld [rBGTileCopyValueI], a
    inc de
    pop hl
    pop bc
    inc bc
    inc bc
    ld a, c
    and $0f
    jr nz, .PrepareBGTileCopyRowAdvance

    ld a, c
    add $f0
    ld c, a
    ld a, b
    adc $00
    ld b, a

.PrepareBGTileCopyRowAdvance:
    inc l
    ld a, [rBGTileCopyDestY]
    cp l
    jp nc, PrepareBGTileCopyLoop

    xor a
    ld [de], a
    inc de
    ld [de], a
    ldh a, [rIE]
    push af

.WaitForVBlank:
    ldh a, [rLY]
    cp $80
    jr nc, .WaitForVBlank

    ldh a, [rIE]
    res 0, a
    ldh [rIE], a
    ld bc, $c363
    ld a, [rLCDCShadow]
    bit 7, a
    jr z, .CopyTileDataLoopAlt

.WaitForDisplayLine:
    ldh a, [rLY]
    cp $90
    jr c, .WaitForDisplayLine

    ld a, $14

.CopyTileDataLoop:
    push af
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    or l
    jr z, .RestoreInterruptsAndReturn

    inc bc
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    inc bc
    xor [hl]
    and e
    xor [hl]
    ld [hl+], a
    ld a, [bc]
    inc bc
    xor [hl]
    and e
    xor [hl]
    ld [hl], a
    pop af
    dec a
    jr nz, .CopyTileDataLoop

.WaitForDisplayLineLoop:
    ldh a, [rLY]
    cp $90
    jr c, .WaitForDisplayLine

    jr .WaitForDisplayLineLoop

.RestoreInterruptsAndReturn:
    pop af

.RestoreInterruptsAndWaitForVBlank:
    ldh a, [rLY]
    cp $80
    jr c, .RestoreInterrupts

.WaitForDisplayLineAndRestore:
    ldh a, [rLY]
    cp $90
    jr c, .WaitForDisplayLineAndRestore

.WaitForVBlankLoop:
    ldh a, [rLY]
    cp $80
    jr nc, .WaitForVBlankLoop

.RestoreInterrupts:
    pop af
    ldh [rIE], a
    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    ret


.CopyTileDataLoopAlt:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    or l
    jr z, .RestoreInterruptsAndWaitForVBlank

    inc bc
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    inc bc
    xor [hl]
    and e
    xor [hl]
    ld [hl+], a
    ld a, [bc]
    inc bc
    xor [hl]
    and e
    xor [hl]
    ld [hl], a
    jr .CopyTileDataLoopAlt

BGTileCopyMaskLookupTable::
    db $ff, $7f, $3f, $1f, $0f, $07, $03, $01
    db $00, $80, $c0, $e0, $f0, $f8, $fc, $fe
    db $ff

ResolveTilemapTileDataAddressAndStoreToDE::
    push bc
    push de
    ld b, h
    ld c, l
    ld a, l
    and $f8
    srl a
    srl a
    ld e, a
    ld d, $00
    ld a, [rTilemapToTileDataAddressLookupTableLow]
    ld l, a
    ld a, [rTilemapToTileDataAddressLookupTableHigh]
    ld h, a
    add hl, de
    ld a, [hl+]

.LoadRowLookupSubtablePointer:
    ld h, [hl]
    ld l, a

.ResolveTileDataAddressFromRowLookupSubtable:
    ld a, b
    and $f8
    srl a
    srl a
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    and $07
    sla a
    add l
    ld l, a
    pop de
    pop bc
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    inc de
    ret


PuzzleBoard15x15ScreenTilemapTileDataAddressLookupTable::
    db $c6, $0d
    db $ee, $0d
    db $16, $0e
    db $3e, $0e
    db $66, $0e
    db $8e, $0e
    db $b6, $0e
    db $de, $0e
    db $06, $0f
    db $2e, $0f
    db $56, $0f
    db $7e, $0f
    db $a6, $0f
    db $ce, $0f
    db $f6, $0f
    db $1e, $10
    db $46, $10
    db $6e, $10

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow00Table::
    db $70, $8a, $50, $88, $60, $88, $70, $88, $80, $88, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow01Table::
    db $70, $8a, $90, $88, $a0, $88, $b0, $88, $c0, $88, $d0, $88, $e0, $87, $00, $80, $10, $80, $20, $80, $30, $80, $40, $80, $50, $80, $60, $80, $70, $80, $80, $80, $90, $80, $a0, $80, $b0, $80, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow02Table::
    db $70, $8a, $e0, $88, $f0, $88, $00, $89, $10, $89, $20, $89, $30, $89, $00, $81, $10, $81, $20, $81, $30, $81, $40, $81, $50, $81, $60, $81, $70, $81, $80, $81, $90, $81, $a0, $81, $b0, $81, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow03Table::
    db $70, $8a, $40, $89, $50, $89, $60, $89, $70, $89, $80, $89, $90, $89, $00, $82, $10, $82, $20, $82, $30, $82, $40, $82, $50, $82, $60, $82, $70, $82, $80, $82, $90, $82, $a0, $82, $b0, $82, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow04Table::
    db $70, $8a, $a0, $89, $b0, $89, $c0, $89, $d0, $89, $e0, $89, $f0, $89, $00, $83, $10, $83, $20, $83, $30, $83, $40, $83, $50, $83, $60, $83, $70, $83, $80, $83, $90, $83, $a0, $83, $b0, $83, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow05Table::
    db $70, $8a, $00, $8a, $10, $8a, $20, $8a, $30, $8a, $40, $8a, $50, $8a, $00, $84, $10, $84, $20, $84, $30, $84, $40, $84, $50, $84, $60, $84, $70, $84, $80, $84, $90, $84, $a0, $84, $b0, $84, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow06Table::
    db $70, $8a, $80, $8a, $90, $8a, $00, $8c, $10, $8c, $20, $8c, $30, $8c, $40, $8c, $50, $8c, $60, $8c, $70, $8c, $80, $8c, $90, $8c, $a0, $8c, $b0, $8c, $c0, $8c, $d0, $8c, $e0, $8c, $f0, $8c, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow07Table::
    db $70, $8a, $a0, $8a, $b0, $8a, $00, $8d, $10, $8d, $20, $8d, $30, $8d, $40, $8d, $50, $8d, $60, $8d, $70, $8d, $80, $8d, $90, $8d, $a0, $8d, $b0, $8d, $c0, $8d, $d0, $8d, $e0, $8d, $f0, $8d, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow08Table::
    db $70, $8a, $c0, $8a, $d0, $8a, $00, $8e, $10, $8e, $20, $8e, $30, $8e, $40, $8e, $50, $8e, $60, $8e, $70, $8e, $80, $8e, $90, $8e, $a0, $8e, $b0, $8e, $c0, $8e, $d0, $8e, $e0, $8e, $f0, $8e, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow09Table::
    db $70, $8a, $e0, $8a, $f0, $8a, $00, $8f, $10, $8f, $20, $8f, $30, $8f, $40, $8f, $50, $8f, $60, $8f, $70, $8f, $80, $8f, $90, $8f, $a0, $8f, $b0, $8f, $c0, $8f, $d0, $8f, $e0, $8f, $f0, $8f, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow0aTable::
    db $70, $8a, $00, $8b, $10, $8b, $00, $90, $10, $90, $20, $90, $30, $90, $40, $90, $50, $90, $60, $90, $70, $90, $80, $90, $90, $90, $a0, $90, $b0, $90, $c0, $90, $d0, $90, $e0, $90, $f0, $90, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow0bTable::
    db $70, $8a, $20, $8b, $30, $8b, $00, $91, $10, $91, $20, $91, $30, $91, $40, $91, $50, $91, $60, $91, $70, $91, $80, $91, $90, $91, $a0, $91, $b0, $91, $c0, $91, $d0, $91, $e0, $91, $f0, $91, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow0cTable::
    db $70, $8a, $40, $8b, $50, $8b, $00, $92, $10, $92, $20, $92, $30, $92, $40, $92, $50, $92, $60, $92, $70, $92, $80, $92, $90, $92, $a0, $92, $b0, $92, $c0, $92, $d0, $92, $e0, $92, $f0, $92, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow0dTable::
    db $70, $8a, $60, $8b, $70, $8b, $00, $93, $10, $93, $20, $93, $30, $93, $40, $93, $50, $93, $60, $93, $70, $93, $80, $93, $90, $93, $a0, $93, $b0, $93, $c0, $93, $d0, $93, $e0, $93, $f0, $93, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow0eTable::
    db $70, $8a, $80, $8b, $90, $8b, $00, $94, $10, $94, $20, $94, $30, $94, $40, $94, $50, $94, $60, $94, $70, $94, $80, $94, $90, $94, $a0, $94, $b0, $94, $c0, $94, $d0, $94, $e0, $94, $f0, $94, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow0fTable::
    db $70, $8a, $a0, $8b, $b0, $8b, $00, $95, $10, $95, $20, $95, $30, $95, $40, $95, $50, $95, $60, $95, $70, $95, $80, $95, $90, $95, $a0, $95, $b0, $95, $c0, $95, $d0, $95, $e0, $95, $f0, $95, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow10Table::
    db $70, $8a, $c0, $8b, $d0, $8b, $00, $96, $10, $96, $20, $96, $30, $96, $40, $96, $50, $96, $60, $96, $70, $96, $80, $96, $90, $96, $a0, $96, $b0, $96, $c0, $96, $d0, $96, $e0, $96, $f0, $96, $70, $8a

PuzzleBoard15x15ScreenTilemapTileDataAddressLookupRow11Table::
    db $70, $8a, $e0, $8b, $f0, $8b, $00, $97, $10, $97, $20, $97, $30, $97, $40, $97, $50, $97, $60, $97, $70, $97, $80, $97, $90, $97, $a0, $97, $b0, $97, $c0, $97, $d0, $97, $e0, $97, $f0, $97, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupTable::
    db $ba, $10
    db $e2, $10
    db $0a, $11
    db $32, $11
    db $5a, $11
    db $82, $11
    db $aa, $11
    db $d2, $11
    db $fa, $11
    db $22, $12
    db $4a, $12
    db $72, $12
    db $9a, $12
    db $c2, $12
    db $ea, $12
    db $12, $13
    db $3a, $13
    db $62, $13

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow00Table::
    db $70, $8a, $50, $88, $60, $88, $70, $88, $80, $88, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow01Table::
    db $70, $8a, $90, $88, $a0, $88, $b0, $88, $c0, $88, $d0, $88, $e0, $87, $00, $80, $10, $80, $20, $80, $30, $80, $e0, $87, $90, $84, $a0, $84, $b0, $84, $b0, $8e, $c0, $8e, $d0, $8f, $e0, $87, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow02Table::
    db $70, $8a, $e0, $88, $f0, $88, $00, $89, $10, $89, $20, $89, $30, $89, $00, $81, $10, $81, $20, $81, $30, $81, $d0, $8d, $80, $8f, $90, $8f, $a0, $8f, $b0, $8f, $c0, $8f, $e0, $8f, $f0, $8d, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow03Table::
    db $70, $8a, $40, $89, $50, $89, $60, $89, $70, $89, $80, $89, $90, $89, $00, $82, $10, $82, $20, $82, $30, $82, $d0, $8e, $e0, $8e, $e0, $8e, $e0, $8e, $e0, $8e, $e0, $8e, $e0, $8e, $f0, $8e, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow04Table::
    db $70, $8a, $a0, $89, $b0, $89, $c0, $89, $d0, $89, $e0, $89, $f0, $89, $00, $83, $10, $83, $20, $83, $30, $83, $d0, $8e, $c0, $8c, $d0, $8c, $90, $8d, $90, $8c, $b0, $8d, $80, $8d, $f0, $8e, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow05Table::
    db $70, $8a, $00, $8a, $10, $8a, $20, $8a, $30, $8a, $40, $8a, $50, $8a, $00, $84, $10, $84, $20, $84, $30, $84, $d0, $8e, $e0, $8e, $e0, $8e, $e0, $8e, $e0, $8e, $e0, $8e, $e0, $8e, $f0, $8e, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow06Table::
    db $70, $8a, $80, $8a, $90, $8a, $00, $8c, $10, $8c, $20, $8c, $30, $8c, $40, $8c, $50, $8c, $60, $8c, $70, $8c, $e0, $8b, $a0, $8c, $b0, $8c, $90, $8d, $90, $8c, $b0, $8d, $a0, $8d, $f0, $8e, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow07Table::
    db $70, $8a, $a0, $8a, $b0, $8a, $00, $8d, $10, $8d, $20, $8d, $30, $8d, $40, $8d, $50, $8d, $60, $8d, $70, $8d, $f0, $8b, $e0, $8e, $e0, $8e, $e0, $8e, $e0, $8e, $e0, $8e, $e0, $8e, $f0, $8e, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow08Table::
    db $70, $8a, $c0, $8a, $d0, $8a, $00, $8e, $10, $8e, $20, $8e, $30, $8e, $40, $8e, $50, $8e, $60, $8e, $70, $8e, $f0, $8b, $c0, $8d, $f0, $8f, $80, $8c, $80, $8e, $90, $8e, $a0, $8e, $f0, $8e, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow09Table::
    db $70, $8a, $e0, $8a, $f0, $8a, $00, $8f, $10, $8f, $20, $8f, $30, $8f, $40, $8f, $50, $8f, $60, $8f, $70, $8f, $f0, $8b, $e0, $8e, $e0, $8e, $e0, $8e, $e0, $8e, $e0, $8e, $e0, $8e, $f0, $8e, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow0aTable::
    db $70, $8a, $00, $8b, $10, $8b, $00, $90, $10, $90, $20, $90, $30, $90, $40, $90, $50, $90, $60, $90, $70, $90, $80, $90, $90, $90, $a0, $90, $b0, $90, $c0, $90, $d0, $90, $e0, $90, $f0, $90, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow0bTable::
    db $70, $8a, $20, $8b, $30, $8b, $00, $91, $10, $91, $20, $91, $30, $91, $40, $91, $50, $91, $60, $91, $70, $91, $80, $91, $90, $91, $a0, $91, $b0, $91, $c0, $91, $d0, $91, $e0, $91, $f0, $91, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow0cTable::
    db $70, $8a, $40, $8b, $50, $8b, $00, $92, $10, $92, $20, $92, $30, $92, $40, $92, $50, $92, $60, $92, $70, $92, $80, $92, $90, $92, $a0, $92, $b0, $92, $c0, $92, $d0, $92, $e0, $92, $f0, $92, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow0dTable::
    db $70, $8a, $60, $8b, $70, $8b, $00, $93, $10, $93, $20, $93, $30, $93, $40, $93, $50, $93, $60, $93, $70, $93, $80, $93, $90, $93, $a0, $93, $b0, $93, $c0, $93, $d0, $93, $e0, $93, $f0, $93, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow0eTable::
    db $70, $8a, $80, $8b, $90, $8b, $00, $94, $10, $94, $20, $94, $30, $94, $40, $94, $50, $94, $60, $94, $70, $94, $80, $94, $90, $94, $a0, $94, $b0, $94, $c0, $94, $d0, $94, $e0, $94, $f0, $94, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow0fTable::
    db $70, $8a, $a0, $8b, $b0, $8b, $00, $95, $10, $95, $20, $95, $30, $95, $40, $95, $50, $95, $60, $95, $70, $95, $80, $95, $90, $95, $a0, $95, $b0, $95, $c0, $95, $d0, $95, $e0, $95, $f0, $95, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow10Table::
    db $70, $8a, $e0, $8c, $f0, $8c, $00, $96, $10, $96, $20, $96, $30, $96, $40, $96, $50, $96, $60, $96, $70, $96, $80, $96, $90, $96, $a0, $96, $b0, $96, $c0, $96, $d0, $96, $e0, $96, $f0, $96, $70, $8a

PuzzleBoard5x5ScreenTilemapTileDataAddressLookupRow11Table::
    db $70, $8a, $c0, $8b, $d0, $8b, $00, $97, $10, $97, $20, $97, $30, $97, $40, $97, $50, $97, $60, $97, $70, $97, $80, $97, $90, $97, $a0, $97, $b0, $97, $c0, $97, $d0, $97, $e0, $97, $f0, $97, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupTable::
    db $ae, $13
    db $d6, $13
    db $fe, $13
    db $26, $14
    db $4e, $14
    db $76, $14
    db $9e, $14
    db $c6, $14
    db $ee, $14
    db $16, $15
    db $3e, $15
    db $66, $15
    db $8e, $15
    db $b6, $15
    db $de, $15
    db $06, $16
    db $2e, $16
    db $56, $16

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow00Table::
    db $70, $8a, $50, $88, $60, $88, $70, $88, $80, $88, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow01Table::
    db $70, $8a, $90, $88, $a0, $88, $b0, $88, $c0, $88, $d0, $88, $e0, $87, $00, $80, $10, $80, $20, $80, $30, $80, $40, $80, $50, $80, $60, $80, $70, $80, $80, $8b, $90, $8b, $a0, $8b, $b0, $8b, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow02Table::
    db $70, $8a, $e0, $88, $f0, $88, $00, $89, $10, $89, $20, $89, $30, $89, $00, $81, $10, $81, $20, $81, $30, $81, $40, $81, $50, $81, $60, $81, $70, $81, $80, $8b, $a0, $8b, $b0, $8b, $c0, $8b, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow03Table::
    db $70, $8a, $40, $89, $50, $89, $60, $89, $70, $89, $80, $89, $90, $89, $00, $82, $10, $82, $20, $82, $30, $82, $40, $82, $50, $82, $60, $82, $70, $82, $80, $8b, $90, $8b, $a0, $8b, $b0, $8b, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow04Table::
    db $70, $8a, $a0, $89, $b0, $89, $c0, $89, $d0, $89, $e0, $89, $f0, $89, $00, $83, $10, $83, $20, $83, $30, $83, $40, $83, $50, $83, $60, $83, $70, $83, $80, $8b, $a0, $8b, $b0, $8b, $c0, $8b, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow05Table::
    db $70, $8a, $00, $8a, $10, $8a, $20, $8a, $30, $8a, $40, $8a, $50, $8a, $00, $84, $10, $84, $20, $84, $30, $84, $40, $84, $50, $84, $60, $84, $70, $84, $80, $8b, $90, $8b, $a0, $8b, $b0, $8b, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow06Table::
    db $70, $8a, $80, $8a, $90, $8a, $00, $8c, $10, $8c, $20, $8c, $30, $8c, $40, $8c, $50, $8c, $60, $8c, $70, $8c, $80, $8c, $90, $8c, $a0, $8c, $b0, $8c, $80, $8b, $a0, $8b, $b0, $8b, $c0, $8b, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow07Table::
    db $70, $8a, $a0, $8a, $b0, $8a, $00, $8d, $10, $8d, $20, $8d, $30, $8d, $40, $8d, $50, $8d, $60, $8d, $70, $8d, $80, $8d, $90, $8d, $a0, $8d, $b0, $8d, $80, $8b, $90, $8b, $a0, $8b, $b0, $8b, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow08Table::
    db $70, $8a, $c0, $8a, $d0, $8a, $00, $8e, $10, $8e, $20, $8e, $30, $8e, $40, $8e, $50, $8e, $60, $8e, $70, $8e, $80, $8e, $90, $8e, $a0, $8e, $b0, $8e, $80, $8b, $a0, $8b, $b0, $8b, $c0, $8b, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow09Table::
    db $70, $8a, $e0, $8a, $f0, $8a, $00, $8f, $10, $8f, $20, $8f, $30, $8f, $40, $8f, $50, $8f, $60, $8f, $70, $8f, $80, $8f, $90, $8f, $a0, $8f, $b0, $8f, $80, $8b, $90, $8b, $a0, $8b, $b0, $8b, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow0aTable::
    db $70, $8a, $00, $8b, $10, $8b, $00, $90, $10, $90, $20, $90, $30, $90, $40, $90, $50, $90, $60, $90, $70, $90, $80, $90, $90, $90, $a0, $90, $b0, $90, $80, $8b, $a0, $8b, $b0, $8b, $c0, $8b, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow0bTable::
    db $70, $8a, $20, $8b, $30, $8b, $00, $91, $10, $91, $20, $91, $30, $91, $40, $91, $50, $91, $60, $91, $70, $91, $80, $91, $90, $91, $a0, $91, $b0, $91, $80, $8b, $90, $8b, $a0, $8b, $b0, $8b, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow0cTable::
    db $70, $8a, $40, $8b, $50, $8b, $00, $92, $10, $92, $20, $92, $30, $92, $40, $92, $50, $92, $60, $92, $70, $92, $80, $92, $90, $92, $a0, $92, $b0, $92, $80, $8b, $a0, $8b, $b0, $8b, $c0, $8b, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow0dTable::
    db $70, $8a, $60, $8b, $70, $8b, $00, $93, $10, $93, $20, $93, $30, $93, $40, $93, $50, $93, $60, $93, $70, $93, $80, $93, $90, $93, $a0, $93, $b0, $93, $80, $8b, $90, $8b, $a0, $8b, $b0, $8b, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow0eTable::
    db $70, $8a, $00, $94, $10, $94, $20, $94, $30, $94, $40, $94, $50, $94, $60, $94, $70, $94, $80, $94, $90, $94, $a0, $94, $b0, $94, $c0, $94, $d0, $94, $e0, $94, $f0, $94, $c0, $91, $d0, $91, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow0fTable::
    db $70, $8a, $00, $95, $10, $95, $20, $95, $30, $95, $40, $95, $50, $95, $60, $95, $70, $95, $80, $95, $90, $95, $a0, $95, $b0, $95, $c0, $95, $d0, $95, $e0, $95, $f0, $95, $c0, $92, $d0, $92, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow10Table::
    db $70, $8a, $00, $96, $10, $96, $20, $96, $30, $96, $40, $96, $50, $96, $60, $96, $70, $96, $80, $96, $90, $96, $a0, $96, $b0, $96, $c0, $96, $d0, $96, $e0, $96, $f0, $96, $c0, $93, $d0, $93, $70, $8a

PuzzleBoard10x10ScreenTilemapTileDataAddressLookupRow11Table::
    db $70, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $60, $8a, $70, $8a

ContinueSavedGameScreenTilemapTileDataAddressLookupTable::
    db $a2, $16
    db $ca, $16
    db $f2, $16
    db $1a, $17
    db $42, $17
    db $6a, $17
    db $92, $17
    db $ba, $17
    db $e2, $17
    db $0a, $18
    db $32, $18
    db $5a, $18
    db $82, $18
    db $aa, $18
    db $d2, $18
    db $fa, $18
    db $22, $19
    db $4a, $19

ContinueSavedGameScreenTilemapTileDataAddressLookupRow00Table::
    db $b0, $82, $00, $80, $10, $80, $20, $80, $30, $80, $40, $80, $50, $80, $60, $80, $70, $80, $80, $80, $90, $80, $a0, $80, $b0, $80, $c0, $80, $d0, $80, $30, $80, $e0, $80, $00, $80, $10, $80, $b0, $82

ContinueSavedGameScreenTilemapTileDataAddressLookupRow01Table::
    db $f0, $81, $00, $81, $10, $81, $20, $81, $30, $81, $40, $81, $50, $81, $60, $81, $70, $81, $80, $81, $90, $81, $a0, $81, $b0, $81, $c0, $81, $d0, $81, $30, $81, $e0, $81, $00, $81, $10, $81, $f0, $81

ContinueSavedGameScreenTilemapTileDataAddressLookupRow02Table::
    db $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82

ContinueSavedGameScreenTilemapTileDataAddressLookupRow03Table::
    db $b0, $82, $b0, $87, $c0, $87, $c0, $87, $c0, $87, $c0, $87, $c0, $87, $c0, $87, $c0, $87, $c0, $87, $c0, $87, $c0, $87, $c0, $87, $c0, $87, $c0, $87, $c0, $87, $c0, $87, $c0, $87, $d0, $87, $b0, $82

ContinueSavedGameScreenTilemapTileDataAddressLookupRow04Table::
    db $b0, $82, $e0, $87, $00, $89, $10, $89, $20, $89, $30, $89, $40, $89, $50, $89, $60, $89, $70, $89, $80, $89, $90, $89, $a0, $89, $b0, $89, $c0, $89, $d0, $89, $e0, $89, $f0, $89, $f0, $87, $b0, $82

ContinueSavedGameScreenTilemapTileDataAddressLookupRow05Table::
    db $b0, $82, $e0, $87, $00, $8a, $10, $8a, $20, $8a, $30, $8a, $40, $8a, $50, $8a, $60, $8a, $70, $8a, $80, $8a, $90, $8a, $a0, $8a, $b0, $8a, $c0, $8a, $d0, $8a, $e0, $8a, $f0, $8a, $f0, $87, $b0, $82

ContinueSavedGameScreenTilemapTileDataAddressLookupRow06Table::
    db $b0, $82, $e0, $87, $00, $8b, $10, $8b, $20, $8b, $30, $8b, $40, $8b, $50, $8b, $60, $8b, $70, $8b, $80, $8b, $90, $8b, $a0, $8b, $b0, $8b, $c0, $8b, $d0, $8b, $e0, $8b, $f0, $8b, $f0, $87, $b0, $82

ContinueSavedGameScreenTilemapTileDataAddressLookupRow07Table::
    db $b0, $82, $e0, $87, $00, $8c, $10, $8c, $20, $8c, $30, $8c, $40, $8c, $50, $8c, $60, $8c, $70, $8c, $80, $8c, $90, $8c, $a0, $8c, $b0, $8c, $c0, $8c, $d0, $8c, $e0, $8c, $f0, $8c, $f0, $87, $b0, $82

ContinueSavedGameScreenTilemapTileDataAddressLookupRow08Table::
    db $b0, $82, $e0, $87, $00, $8d, $10, $8d, $20, $8d, $30, $8d, $40, $8d, $50, $8d, $60, $8d, $70, $8d, $80, $8d, $90, $8d, $a0, $8d, $b0, $8d, $c0, $8d, $d0, $8d, $e0, $8d, $f0, $8d, $f0, $87, $b0, $82

ContinueSavedGameScreenTilemapTileDataAddressLookupRow09Table::
    db $b0, $82, $e0, $87, $00, $8e, $10, $8e, $20, $8e, $30, $8e, $40, $8e, $50, $8e, $60, $8e, $70, $8e, $80, $8e, $90, $8e, $a0, $8e, $b0, $8e, $c0, $8e, $d0, $8e, $e0, $8e, $f0, $8e, $f0, $87, $b0, $82

ContinueSavedGameScreenTilemapTileDataAddressLookupRow0aTable::
    db $b0, $82, $e0, $87, $00, $8f, $10, $8f, $20, $8f, $30, $8f, $40, $8f, $50, $8f, $60, $8f, $70, $8f, $80, $8f, $90, $8f, $a0, $8f, $b0, $8f, $c0, $8f, $d0, $8f, $e0, $8f, $f0, $8f, $f0, $87, $b0, $82

ContinueSavedGameScreenTilemapTileDataAddressLookupRow0bTable::
    db $b0, $82, $00, $88, $10, $88, $10, $88, $10, $88, $10, $88, $10, $88, $10, $88, $10, $88, $10, $88, $10, $88, $10, $88, $10, $88, $10, $88, $10, $88, $10, $88, $10, $88, $10, $88, $20, $88, $b0, $82

ContinueSavedGameScreenTilemapTileDataAddressLookupRow0cTable::
    db $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82

ContinueSavedGameScreenTilemapTileDataAddressLookupRow0dTable::
    db $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $b0, $82, $90, $84, $20, $84, $b0, $82, $b0, $82, $b0, $82

ContinueSavedGameScreenTilemapTileDataAddressLookupRow0eTable::
    db $b0, $82, $c0, $82, $d0, $82, $b0, $82, $b0, $82, $e0, $82, $f0, $82, $00, $84, $b0, $82, $b0, $82, $b0, $82, $80, $84, $00, $86, $10, $86, $20, $86, $30, $86, $40, $86, $50, $86, $60, $86, $70, $86

ContinueSavedGameScreenTilemapTileDataAddressLookupRow0fTable::
    db $b0, $83, $c0, $83, $d0, $83, $d0, $82, $b0, $82, $e0, $83, $f0, $83, $10, $84, $b0, $82, $b0, $82, $80, $84, $80, $87, $80, $86, $90, $86, $a0, $86, $b0, $86, $c0, $86, $d0, $86, $e0, $86, $f0, $86

ContinueSavedGameScreenTilemapTileDataAddressLookupRow10Table::
    db $c0, $83, $c0, $83, $d0, $83, $90, $83, $a0, $83, $50, $84, $60, $84, $70, $84, $b0, $82, $80, $84, $d0, $83, $90, $87, $00, $87, $10, $87, $20, $87, $30, $87, $40, $87, $50, $87, $60, $87, $70, $87

ContinueSavedGameScreenTilemapTileDataAddressLookupRow11Table::
    db $40, $84, $40, $84, $40, $84, $40, $84, $40, $84, $40, $84, $40, $84, $40, $84, $40, $84, $40, $84, $40, $84, $40, $84, $40, $84, $40, $84, $40, $84, $40, $84, $40, $84, $40, $84, $40, $84, $40, $84

SplitAToDecimalDigitsAndPushHundredsTens::
    pop de
    ld bc, $0000

.SubtractHundredsLoop:
    cp $64
    jr c, .SubtractTensLoop

    sub $64
    inc c
    jr .SubtractHundredsLoop

.SubtractTensLoop:
    cp $0a
    jr c, .ApplyLeadingBlankDigits

    sub $0a
    inc b
    jr .SubtractTensLoop

.ApplyLeadingBlankDigits:
    ld l, a
    ld a, c
    and a
    jr nz, .PushDigitsAndReturnViaDE

    ld c, $0a
    ld a, b
    and a
    jr nz, .PushDigitsAndReturnViaDE

    ld b, $0a

.PushDigitsAndReturnViaDE:
    ld a, c
    push af
    ld a, b
    push af
    ld a, l
    ld l, e
    ld h, d
    jp hl


SplitHLToDecimalDigitsAndPushHundredsTens_Unused::
    pop de
    ld bc, $ff9c
    xor a

.SubtractHundredsFromHLLoop:
    add hl, bc
    bit 7, h
    jr nz, .PrepareSubtractTensFromHLLoop

    inc a
    jr .SubtractHundredsFromHLLoop

.PrepareSubtractTensFromHLLoop:
    push af
    ld bc, $000a
    ld a, $09

.SubtractTensFromHLLoop:
    add hl, bc
    bit 7, h
    jr z, .PushTensAndReturnViaDE

    dec a
    jr .SubtractTensFromHLLoop

.PushTensAndReturnViaDE:
    push af
    ld a, l
    ld l, e
    ld h, d
    jp hl


GS06_UpdateOAMSequenceEventAndCopySprite::
    ld e, a
    ld d, $00
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d
    ld hl, rGS06_OAMSequenceEventTableBank
    add hl, de
    ld a, [rActiveROMBank]
    push af
    ld a, [hl]
    ld [rActiveROMBank], a
    ld [rROMB], a
    ld hl, rGS06_OAMSequenceEventDelay
    add hl, de
    ld a, [hl]
    and a
    jr nz, .TickSequenceEventDelayAndEmit

    ld hl, rGS06_OAMSequenceEventCursor
    add hl, de
    ld a, [hl]
    ld c, a
    ld b, $00

.LoadNextSequenceEvent:
    ld hl, rGS06_OAMSequenceEventTableLow
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, [hl+]
    and a
    jr nz, .ApplySequenceEvent

    ld bc, $0000
    jr .LoadNextSequenceEvent

.ApplySequenceEvent:
    push hl
    ld hl, rGS06_OAMSequenceEventDelay
    add hl, de
    ld [hl], a
    pop hl
    ld a, [hl+]
    push hl
    ld hl, rGS06_OAMSequenceBaseLow
    add hl, de
    add [hl]
    ld [hl], a
    pop hl
    ld a, [hl+]
    push hl
    ld hl, rGS06_OAMSequenceBaseHigh
    add hl, de
    add [hl]
    ld [hl], a
    pop hl
    ld a, [hl+]
    ld hl, rGS06_OAMSequenceEventSpriteId
    add hl, de
    ld [hl], a
    ld a, c
    add $04
    ld hl, rGS06_OAMSequenceEventCursor
    add hl, de
    ld [hl], a

.TickSequenceEventDelayAndEmit:
    ld hl, rGS06_OAMSequenceEventDelay
    add hl, de
    dec [hl]
    ld hl, rGS06_OAMSequenceEventSpriteId
    add hl, de
    ld a, [hl]
    cp $ff
    ret z

    ld hl, rGS06_OAMSequenceBaseLow
    add hl, de
    ld b, [hl]
    ld hl, rGS06_OAMSequenceBaseHigh
    add hl, de
    ld c, [hl]
    call CopyOAMSpriteById
    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    ret


DrawPuzzleNameFromPointerTable::
    ld a, [rActiveROMBank]
    push af
    ld a, $03
    ld [rActiveROMBank], a
    ld [rROMB], a
    ld a, [rPuzzleDataIndexLow]
    ld c, a
    ld a, [rPuzzleDataIndexHigh]
    ld b, a
    sla c
    rl b
    ld hl, $5730
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

.LoadNextPuzzleNameLine:
    ld a, [hl+]
    and a
    jr z, .RestoreBankAndReturn

    ld b, a
    ld a, [hl+]
    ld c, a

.DrawPuzzleNameGlyphRun:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    and e
    cp $ff
    jr z, .LoadNextPuzzleNameLine

    push bc
    push hl
    call QueueMessageGlyphBGTileCopyById
    pop hl
    pop bc
    add b
    inc a
    ld b, a
    jr .DrawPuzzleNameGlyphRun

.RestoreBankAndReturn:
    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    ret


QueueMessageGlyphBGTileCopyById::
    ld a, [rActiveROMBank]
    push af
    ld a, $00
    ld [rActiveROMBank], a
    ld [rROMB], a
    push de
    sla e
    rl d
    ld hl, MessageGlyphSourceOffsetTable
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $4000
    add hl, de
    ld a, l
    ld [rBGTileCopyBankAddressLow], a
    ld a, h
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $0e
    ld [rBGTileCopyBank], a
    ld a, b
    ld [rBGTileCopySourceX], a
    pop de
    ld hl, MessageGlyphWidthTable
    add hl, de
    ld a, [hl]
    and a
    jr z, .RestoreBankAndReturnGlyphWidth

    push af
    add b
    ld [rBGTileCopyDestX], a
    ld a, c
    ld [rBGTileCopySourceY], a
    add $09
    ld [rBGTileCopyDestY], a
    call PrepareBGTileCopy
    pop af

.RestoreBankAndReturnGlyphWidth:
    ld e, a
    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    ld a, e
    ret


HandleStartupSaveDataIntegrityCheck::
    ld a, [rInputButtonsHeld]
    cp $64
    jr nz, .ValidateAndRecoverSaveData

    call RunEraseDataConfirmationPrompt
    jr z, .ReinitializeSaveData

.ValidateAndRecoverSaveData:
    ld hl, rSaveDataMirrorBlockStart
    call ComputeSumXorChecksumDE
    ld a, [rSaveDataMirrorChecksumSum]
    cp d
    jr nz, .ValidatePrimarySaveDataBlock

    ld a, [rSaveDataMirrorChecksumXor]
    cp e
    jr nz, .ValidatePrimarySaveDataBlock

    ld hl, rSaveDataMirrorBlockStart
    ld de, rSaveDataPrimaryBlockStart
    ld bc, $0d02
    call CopyMemoryBlock
    jr .FinalizeSaveDataValidation

.ValidatePrimarySaveDataBlock:
    ld hl, rSaveDataPrimaryBlockStart
    call ComputeSumXorChecksumDE
    ld a, [rSaveDataPrimaryChecksumSum]
    cp d
    jr nz, .ReinitializeSaveData

    ld a, [rSaveDataPrimaryChecksumXor]
    cp e
    jr nz, .ReinitializeSaveData

.FinalizeSaveDataValidation:
    call ValidateSaveMagicSignatures
    ret z

.ReinitializeSaveData:
    jp ResetSaveDataAndLoadDefaults


RefreshSaveValidationChecksumsAndMirrors::
    ld hl, HiddenProgrammerCredits
    ld de, rHiddenProgrammerCreditsMirror
    ld bc, $0010
    call CopyMemoryBlock
    ld hl, SaveValidationMagicBytes
    ld de, rSaveValidationMagicBytesMirror
    ld bc, $0005
    call CopyMemoryBlock
    ld hl, rSaveDataPrimaryBlockStart
    call ComputeSumXorChecksumDE
    ld a, d
    ld [rSaveDataPrimaryChecksumSum], a
    ld a, e
    ld [rSaveDataPrimaryChecksumXor], a
    ld hl, rSaveDataPrimaryBlockStart
    ld de, rSaveDataMirrorBlockStart
    ld bc, $0d02
    call CopyMemoryBlock
    ld hl, rSaveDataMirrorBlockStart
    call ComputeSumXorChecksumDE
    ld a, d
    ld [rSaveDataMirrorChecksumSum], a
    ld a, e
    ld [rSaveDataMirrorChecksumXor], a
    ret


ValidateSaveMagicSignatures::
    ld hl, rHiddenProgrammerCreditsMirror
    ld de, HiddenProgrammerCredits
    ld c, $10

.CompareHiddenProgrammerCreditsLoop:
    ld a, [de]
    cp [hl]
    jr nz, .ReturnWithSignatureCompareFlags

    inc de
    inc hl
    dec c
    jr nz, .CompareHiddenProgrammerCreditsLoop

    ld hl, rSaveValidationMagicBytesMirror
    ld de, SaveValidationMagicBytes
    ld c, $05

.CompareSaveValidationMagicBytesLoop:
    ld a, [de]
    cp [hl]
    jr nz, .ReturnWithSignatureCompareFlags

    inc de
    inc hl
    dec c
    jr nz, .CompareSaveValidationMagicBytesLoop

.ReturnWithSignatureCompareFlags:
    ret


ComputeSumXorChecksumDE::
    ld bc, $0d02
    ld de, $0000

.ChecksumByteLoop:
    ld a, d
    add [hl]
    ld d, a
    ld a, e
    xor [hl]
    ld e, a
    inc hl
    dec bc
    ld a, c
    or b
    jr nz, .ChecksumByteLoop

    ret


ResetSaveDataAndLoadDefaults::
    ld bc, $0d02
    ld hl, rSaveDataPrimaryBlockStart

.ClearSaveDataLoop:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, .ClearSaveDataLoop

    ld b, $02
    ld hl, $5267
    call SwitchBankToBAndJumpToHL
    ld b, $02
    ld hl, $5274
    call SwitchBankToBAndJumpToHL
    ld b, $02
    ld hl, $5274
    call SwitchBankToBAndJumpToHL
    ld b, $02
    ld hl, $5274
    call SwitchBankToBAndJumpToHL
    ld hl, SaveDataDefaultTimeTrialRankingEntries
    ld de, rSaveDataTimeTrialRankingEntries
    ld bc, $0023
    call CopyMemoryBlock
    ld hl, SaveDataDefaultPerSaveSlotModeBGMSelectionIndices
    ld de, rSaveSlot1EasyPicrossBGMSelectionIndex
    ld bc, $000f
    call CopyMemoryBlock
    ld bc, $003c
    call BusyWaitDelayByBC
    ret


SaveDataDefaultTimeTrialRankingEntries::
    db $01, $05, $00, $00, "NIN"

    db $02, $00, $00, $00, "APE"

    db $03, $00, $00, $00, "JUP"

    db $04, $00, $00, $00, "MAR"

    db $05, $00, $00, $00, "PIC"

SaveDataDefaultPerSaveSlotModeBGMSelectionIndices::
    db $00, $01, $02, $03, $04
    db $00, $01, $02, $03, $04
    db $00, $01, $02, $03, $04

SaveCurrentPuzzleProgressToSaveData::
    ld b, $3c
    ld de, rSavedPuzzleCellStatePackedBuffer
    ld hl, rPuzzleCellStateBufferStart

.PackAndStorePuzzleCellStateByteLoop:
    xor a
    srl [hl]
    srl [hl]
    rl a
    srl [hl]
    rl a
    inc hl
    srl [hl]
    srl [hl]
    rl a
    srl [hl]
    rl a
    inc hl
    srl [hl]
    srl [hl]
    rl a
    srl [hl]
    rl a
    inc hl
    srl [hl]
    srl [hl]
    rl a
    srl [hl]
    rl a
    inc hl
    ld [de], a
    inc de
    dec b
    jr nz, .PackAndStorePuzzleCellStateByteLoop

    ld a, [rPuzzleGridWidth]
    ld [de], a
    inc de
    ld a, [rPuzzleGridHeight]
    ld [de], a
    ld a, [rHintPopupSelection]
    ld [rSavedPuzzleHintPopupSelection], a
    ld a, [rPuzzleTimerPenaltyStep]
    ld [rSavedPuzzleTimerPenaltyStep], a
    ld a, [rPuzzleTimerMinuteOnes]
    ld [rSavedPuzzleTimerMinuteOnes], a
    ld a, [rPuzzleTimerMinuteTens]
    ld [rSavedPuzzleTimerMinuteTens], a
    ld a, [rPuzzleTimerSecondOnes]
    ld [rSavedPuzzleTimerSecondOnes], a
    ld a, [rPuzzleTimerSecondTens]
    ld [rSavedPuzzleTimerSecondTens], a
    ld a, [rPuzzleDataIndexLow]
    ld [rSavedPuzzleDataIndexLow], a
    ld a, [rPuzzleDataIndexHigh]
    ld [rSavedPuzzleDataIndexHigh], a
    ld a, [rPuzzleCursorColumn]
    ld [rSavedPuzzleCursorColumn], a
    ld a, [rPuzzleAndMenuCursorRow]
    ld [rSavedPuzzleCursorRow], a
    jp RefreshSaveValidationChecksumsAndMirrors


RestoreCurrentPuzzleProgressFromSaveData::
    ld a, [rSavedPuzzleHintPopupSelection]
    ld [rHintPopupSelection], a
    ld a, [rSavedPuzzleTimerPenaltyStep]
    ld [rPuzzleTimerPenaltyStep], a
    ld a, [rSavedPuzzleTimerMinuteOnes]
    ld [rPuzzleTimerMinuteOnes], a
    ld a, [rSavedPuzzleTimerMinuteTens]
    ld [rPuzzleTimerMinuteTens], a
    ld a, [rSavedPuzzleTimerSecondOnes]
    ld [rPuzzleTimerSecondOnes], a
    ld a, [rSavedPuzzleTimerSecondTens]
    ld [rPuzzleTimerSecondTens], a
    ld a, [rSavedPuzzleDataIndexLow]
    ld [rPuzzleDataIndexLow], a
    ld a, [rSavedPuzzleDataIndexHigh]
    ld [rPuzzleDataIndexHigh], a
    ld a, [rSavedPuzzleCursorColumn]
    ld [rPuzzleCursorColumn], a
    ld a, [rSavedPuzzleCursorRow]
    ld [rPuzzleAndMenuCursorRow], a
    call LoadPuzzleDataBuffer
    ld b, $3c
    ld de, rSavedPuzzleCellStatePackedBuffer
    ld hl, rPuzzleCellStateBufferStart

.ApplyPackedCell0StateBit1IfSet:
    ld a, [de]
    sla a
    jr nc, .ApplyPackedCell0StateBit2IfSet

    set 1, [hl]

.ApplyPackedCell0StateBit2IfSet:
    sla a
    jr nc, .AdvanceToPackedCell1AndApplyStateBit1IfSet

    set 2, [hl]

.AdvanceToPackedCell1AndApplyStateBit1IfSet:
    inc hl
    sla a
    jr nc, .ApplyPackedCell1StateBit2IfSet

    set 1, [hl]

.ApplyPackedCell1StateBit2IfSet:
    sla a
    jr nc, .AdvanceToPackedCell2AndApplyStateBit1IfSet

    set 2, [hl]

.AdvanceToPackedCell2AndApplyStateBit1IfSet:
    inc hl
    sla a
    jr nc, .ApplyPackedCell2StateBit2IfSet

    set 1, [hl]

.ApplyPackedCell2StateBit2IfSet:
    sla a
    jr nc, .AdvanceToPackedCell3AndApplyStateBit1IfSet

    set 2, [hl]

.AdvanceToPackedCell3AndApplyStateBit1IfSet:
    inc hl
    sla a
    jr nc, .ApplyPackedCell3StateBit2IfSet

    set 1, [hl]

.ApplyPackedCell3StateBit2IfSet:
    sla a
    jr nc, .AdvancePackedSourceAndContinueUnpackLoop

    set 2, [hl]

.AdvancePackedSourceAndContinueUnpackLoop:
    inc hl
    inc de
    dec b
    jr nz, .ApplyPackedCell0StateBit1IfSet

    ld a, [rPuzzleGridWidth]
    ld [de], a
    inc de
    ld a, [rPuzzleGridHeight]
    ld [de], a
    jp RefreshSaveValidationChecksumsAndMirrors


RunEraseDataConfirmationPrompt::
    ld a, $42
    ld [rLCDCShadow], a
    xor a
    ld [rOBP0Shadow], a
    ld [rOBP1Shadow], a
    ld a, $0b
    ld hl, $5000
    ld de, $8000
    ld bc, $0300
    call BankedTileCopy
    xor a
    ld [rStatePhaseTimer], a
    ld [rSharedAnimationFrameState], a
    call ClearShadowOAMBuffer
    call EnableLCDFromShadow
    call EnsureSGBMaskFreezeDisabled
    ld b, $03
    ld hl, $4694
    ld c, $00
    ld de, $0004
    call PlayScreenTransitionFadeIn

.WaitForConfirmOrCancelInput:
    ld a, [rInputButtonsPressed]
    bit 0, a
    jr nz, .HandleConfirmSelection

    bit 1, a
    jr nz, .HandleCancelSelection

    ld bc, $3040
    ld a, $4b
    call CopyOAMSpriteById
    ld a, [rStatePhaseTimer]
    inc a
    cp $46
    jr c, .UpdateCursorBlinkAndTimer

    ld a, [rSharedAnimationFrameState]
    xor $01
    ld [rSharedAnimationFrameState], a
    xor a

.UpdateCursorBlinkAndTimer:
    ld [rStatePhaseTimer], a
    cp $30
    jr nc, .PresentFrameAndContinueInputLoop

    ld a, [rSharedAnimationFrameState]
    add $4c
    ld bc, $3050
    call CopyOAMSpriteById

.PresentFrameAndContinueInputLoop:
    call ClearShadowOAMBufferFromCursor
    rst RST_08
    jr .WaitForConfirmOrCancelInput

.HandleCancelSelection:
    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    ld bc, $003c
    call BusyWaitDelayByBC
    call ClearShadowOAMBuffer
    ld b, $03
    ld hl, $469f
    ld c, $00
    ld de, $0013
    call PlayScreenTransitionFadeOut
    call DisableLCDAtVBlank
    ld a, $ff
    and a
    ret


.HandleConfirmSelection:
    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    ld bc, $003c
    call BusyWaitDelayByBC
    call ClearShadowOAMBuffer
    ld b, $03
    ld hl, $469f
    ld c, $00
    ld de, $0013
    call PlayScreenTransitionFadeOut
    call DisableLCDAtVBlank
    xor a
    ret


SendSGBPacketStreamFromBankedAddress::
    ld [rRequestedROMBank], a
    ld a, [rActiveROMBank]
    push af
    ld a, [rRequestedROMBank]
    ld [rActiveROMBank], a
    ld [rROMB], a
    call SendSGBPacketStreamFromHL
    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    ret


SendSGBPacketStreamFromHL::
    ld a, [hl]
    and $07
    ret z

    ld b, a
    ld c, $00
    ld a, $ff
    ld [rSGBPacketTransferBusyFlag], a

.SendNextSGBPacket:
    push bc
    ld a, $00
    ldh [c], a
    ld a, $30
    ldh [c], a
    ld b, $10

.SendPacketByteLoop:
    ld e, $08
    ld a, [hl+]
    ld d, a

.SendPacketBitLoop:
    bit 0, d
    ld a, $10
    jr nz, .ClockOutCurrentSGBBit

    ld a, $20

.ClockOutCurrentSGBBit:
    ldh [c], a
    ld a, $30
    ldh [c], a
    rr d
    dec e
    jr nz, .SendPacketBitLoop

    dec b
    jr nz, .SendPacketByteLoop

    ld a, $20
    ldh [c], a
    ld a, $30
    ldh [c], a
    pop bc
    dec b
    jr z, .ClearSGBTransferBusyFlagAndReturn

    call BusyWaitDelayForSGBPacketTiming
    jr .SendNextSGBPacket

.ClearSGBTransferBusyFlagAndReturn:
    xor a
    ld [rSGBPacketTransferBusyFlag], a
    ret


BusyWaitDelayForSGBPacketTiming::
    ld de, $1b58

.DelayLoop:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, .DelayLoop

    ret


DetectSuperGameBoyViaMltReqHandshake::
    ld a, $03
    ld hl, $4010
    call SendSGBPacketStreamFromBankedAddress
    call BusyWaitDelayForSGBPacketTiming
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, .MltReqDetectionFailedPath

    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, $30
    ldh [rP1], a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, $30
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, .MltReqDetectionFailedPath

    ld a, $03
    ld hl, $4000
    call SendSGBPacketStreamFromBankedAddress
    call BusyWaitDelayForSGBPacketTiming
    sub a
    ret


.MltReqDetectionFailedPath:
    ld a, $03
    ld hl, $4000
    call SendSGBPacketStreamFromBankedAddress
    call BusyWaitDelayForSGBPacketTiming
    scf
    ret


SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress::
    ld [rRequestedROMBank], a
    ld a, [rActiveROMBank]
    push af
    ld a, [rRequestedROMBank]
    ld [rActiveROMBank], a
    ld [rROMB], a
    di
    push hl
    ld a, $e4
    ldh [rBGP], a
    ld bc, $0010
    add hl, bc
    ld de, $8800
    ld bc, $1000
    call CopyMemoryBlock
    ld hl, $9800
    ld de, $000c
    ld a, $80
    ld c, $0d

.FillTransferTilemapRowsLoop:
    ld b, $14

.FillTransferTilemapRowLoop:
    ld [hl+], a
    inc a
    dec b
    jr nz, .FillTransferTilemapRowLoop

    add hl, de
    dec c
    jr nz, .FillTransferTilemapRowsLoop

    ld a, $81
    ldh [rLCDC], a
    ld bc, $0005
    call BusyWaitDelayByBC
    pop hl
    call SendSGBPacketStreamFromHL
    ld bc, $0006
    call BusyWaitDelayByBC
    ld a, [rBGPShadow]
    ldh [rBGP], a
    ld a, [rLCDCShadow]
    ldh [rLCDC], a
    ei
    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    ret


RunSGBStartupTransferPacketSequence::
    ld bc, $0078
    call BusyWaitDelayByBC
    call EnsureSGBMaskFreezeEnabled
    ld a, $03
    ld hl, $4de0
    call SendSGBPacketStreamFromBankedAddress
    ld bc, $0004
    call BusyWaitDelayByBC
    ld a, $03
    ld hl, $4df0
    call SendSGBPacketStreamFromBankedAddress
    ld bc, $0004
    call BusyWaitDelayByBC
    ld a, $03
    ld hl, $4e00
    call SendSGBPacketStreamFromBankedAddress
    ld bc, $0004
    call BusyWaitDelayByBC
    ld a, $03
    ld hl, $4e10
    call SendSGBPacketStreamFromBankedAddress
    ld bc, $0004
    call BusyWaitDelayByBC
    ld a, $03
    ld hl, $4e20
    call SendSGBPacketStreamFromBankedAddress
    ld bc, $0004
    call BusyWaitDelayByBC
    ld a, $03
    ld hl, $4e30
    call SendSGBPacketStreamFromBankedAddress
    ld bc, $0004
    call BusyWaitDelayByBC
    ld a, $03
    ld hl, $4e40
    call SendSGBPacketStreamFromBankedAddress
    ld bc, $0004
    call BusyWaitDelayByBC
    ld a, $03
    ld hl, $4e50
    call SendSGBPacketStreamFromBankedAddress
    ld bc, $0004
    call BusyWaitDelayByBC
    ld a, $03
    ld hl, $4730
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress
    ld a, $03
    ld hl, $4030
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress
    ret


EnsureSGBMaskFreezeEnabled::
    ld a, [rIsSuperGameBoyMode]
    and a
    ret z

    ld a, [$c33f]
    and a
    ret nz

    ld a, $03
    ld hl, $4e60
    call SendSGBPacketStreamFromBankedAddress
    ld bc, $0004
    call BusyWaitDelayByBC
    ld a, $ff
    ld [$c33f], a
    ret


EnsureSGBMaskFreezeDisabled::
    ld a, [rIsSuperGameBoyMode]
    and a
    ret z

    ld bc, $0002
    call BusyWaitDelayByBC
    ld a, [$c33f]
    and a
    ret z

    ld a, $03
    ld hl, $4e70
    call SendSGBPacketStreamFromBankedAddress
    ld bc, $0004
    call BusyWaitDelayByBC
    xor a
    ld [$c33f], a
    ret


PlayScreenTransitionFadeIn_SGB::
    push de
    push bc
    push hl
    ld a, $03
    ld hl, $4020
    ld de, rSGBScreenTransitionPAL_SETPacketBuffer
    ld bc, $0010
    call BankedTileCopy
    ld a, $00
    ld hl, rSGBScreenTransitionPAL_SETPacketBuffer
    call SendSGBPacketStreamFromBankedAddress
    pop hl
    pop bc
    push bc
    ld a, [rActiveROMBank]
    push af
    ld a, b
    ld [rActiveROMBank], a
    ld [rROMB], a
    ld b, $04

.ApplyFadeStepLoop:
    ld a, [hl+]
    ld [rBGPShadow], a
    ld a, [hl+]
    ld [rOBP0Shadow], a
    ld a, [hl+]
    ld [rOBP1Shadow], a
    push bc
    push hl
    ld bc, $0002
    call BusyWaitDelayByBC
    pop hl
    pop bc
    dec b
    jr nz, .ApplyFadeStepLoop

    ld [rStatePhaseTimer], a
    ld [rSharedAnimationFrameState], a
    ld [rSharedUIAnimationColumnAccumulator], a
    ld [rHintCursorAnimationRowAccumulator], a
    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    pop bc
    pop de
    ld a, c
    or $80
    ld [rSGBScreenTransitionPAL_SETPacketControl], a
    ld b, $04

.ApplySGBPalSetFadeStepLoop:
    push bc
    ld hl, rSGBScreenTransitionPAL_SETPacketColorData
    ld c, $04

.WriteSGBPalSetPacketColorsLoop:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    inc de
    dec c
    jr nz, .WriteSGBPalSetPacketColorsLoop

    push de
    ld a, $00
    ld hl, rSGBScreenTransitionPAL_SETPacketBuffer
    call SendSGBPacketStreamFromBankedAddress
    ld bc, $0006
    call BusyWaitDelayByBC
    pop de
    pop bc
    dec b
    jr nz, .ApplySGBPalSetFadeStepLoop

    ret


PlayScreenTransitionFadeOut_SGB::
    push hl
    push bc
    push de
    ld a, $03
    ld hl, $4020
    ld de, rSGBScreenTransitionPAL_SETPacketBuffer
    ld bc, $0010
    call BankedTileCopy
    pop de
    pop bc
    push bc
    ld a, c
    or $80
    ld [rSGBScreenTransitionPAL_SETPacketControl], a
    ld b, $04

.ApplySGBPalSetFadeStepLoop:
    push bc
    ld hl, $c348
    ld c, $04

.WriteSGBPalSetPacketColorsLoop:
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl-], a
    dec de
    dec c
    jr nz, .WriteSGBPalSetPacketColorsLoop

    push de
    ld a, $00
    ld hl, rSGBScreenTransitionPAL_SETPacketBuffer
    call SendSGBPacketStreamFromBankedAddress
    ld bc, $0006
    call BusyWaitDelayByBC
    pop de
    pop bc
    dec b
    jr nz, .ApplySGBPalSetFadeStepLoop

    ld a, $03
    ld hl, $4020
    ld de, rSGBScreenTransitionPAL_SETPacketBuffer
    ld bc, $0010
    call BankedTileCopy
    ld a, $00
    ld hl, rSGBScreenTransitionPAL_SETPacketBuffer
    call SendSGBPacketStreamFromBankedAddress
    pop bc
    pop hl
    ld a, [rActiveROMBank]
    push af
    ld a, b
    ld [rActiveROMBank], a
    ld [rROMB], a
    ld b, $04

.ApplyFadeStepLoop:
    ld a, [hl-]
    ld [rOBP1Shadow], a
    ld a, [hl-]
    ld [rOBP0Shadow], a
    ld a, [hl-]
    ld [rBGPShadow], a
    push bc
    push hl
    ld bc, $0002
    call BusyWaitDelayByBC
    pop hl
    pop bc
    dec b
    jr nz, .ApplyFadeStepLoop

    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    ret


CopyOAMSpriteById::
    push hl
    ld e, a
    ld d, $00
    sla e
    rl d
    ld a, [rActiveROMBank]
    push af
    ld a, $03
    ld [rActiveROMBank], a
    ld [rROMB], a
    ld hl, $6c63
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    ld a, [rShadowOAMWriteCursor]
    ld l, a
    ld h, $c0

.CopyOAMSpriteLoop:
    ld a, [de]
    cp $ff
    jr z, .DoneRestoreBank

    add c
    ld [hl+], a
    inc de
    ld a, [de]
    add b
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    jr .CopyOAMSpriteLoop

.DoneRestoreBank:
    ld a, l
    ld [rShadowOAMWriteCursor], a
    pop af
    ld [rActiveROMBank], a
    ld [rROMB], a
    pop hl
    ret


GameState_06_HowToPlay_PhaseDispatcher::
    ld a, [rInputButtonsPressed]
    ld [rGS06_HowToPlayInputButtonsPressedMirror], a
    ld a, [rGS06_HowToPlaySkipRequestedFlag]
    and a
    jr nz, .SetCancelAndReturnToMenuPhase

    ld a, [rInputButtonsPressed]
    bit 3, a
    jr z, .DispatchCurrentPhase

    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher

.SetCancelAndReturnToMenuPhase:
    ld a, $2a
    ld [rStatePhase_Current], a

.DispatchCurrentPhase:
    ld a, [rStatePhase_Current]
    rst RST_18

GS06_PhasePointer_00::
    db $8a, $21

GS06_PhasePointer_01::
    db $82, $22

GS06_PhasePointer_02::
    db $aa, $22

GS06_PhasePointer_03::
    db $f2, $22

GS06_PhasePointer_04::
    db $10, $23

GS06_PhasePointer_05::
    db $58, $23

GS06_PhasePointer_06::
    db $76, $23

GS06_PhasePointer_07::
    db $9e, $23

GS06_PhasePointer_08::
    db $c6, $23

GS06_PhasePointer_09::
    db $6d, $24

GS06_PhasePointer_0a::
    db $92, $24

GS06_PhasePointer_0b::
    db $ab, $24

GS06_PhasePointer_0c::
    db $d3, $24

GS06_PhasePointer_0d::
    db $01, $25

GS06_PhasePointer_0e::
    db $49, $25

GS06_PhasePointer_0f::
    db $67, $25

GS06_PhasePointer_10::
    db $8f, $25

GS06_PhasePointer_11::
    db $d7, $25

GS06_PhasePointer_12::
    db $f5, $25

GS06_PhasePointer_13::
    db $2f, $26

GS06_PhasePointer_14::
    db $6b, $26

GS06_PhasePointer_15::
    db $b3, $26

GS06_PhasePointer_16::
    db $d1, $26

GS06_PhasePointer_17::
    db $f9, $26

GS06_PhasePointer_18::
    db $41, $27

GS06_PhasePointer_19::
    db $5f, $27

GS06_PhasePointer_1a::
    db $9e, $27

GS06_PhasePointer_1b::
    db $d4, $27

GS06_PhasePointer_1c::
    db $e6, $27

GS06_PhasePointer_1d::
    db $0a, $28

GS06_PhasePointer_1e::
    db $3b, $28

GS06_PhasePointer_1f::
    db $70, $28

GS06_PhasePointer_20::
    db $9a, $28

GS06_PhasePointer_21::
    db $c2, $28

GS06_PhasePointer_22::
    db $f7, $28

GS06_PhasePointer_23::
    db $36, $29

GS06_PhasePointer_24::
    db $72, $29

GS06_PhasePointer_25::
    db $cc, $29

GS06_PhasePointer_26::
    db $f4, $29

GS06_PhasePointer_27::
    db $33, $2a

GS06_PhasePointer_28::
    db $7b, $2a

GS06_PhasePointer_29::
    db $ac, $2a

GS06_PhasePointer_2a::
    db $24, $2b

GS06_StatePhase_00_Init::
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
    ld a, $07
    ld hl, $4000
    ld de, $8000
    ld bc, $1800
    call BankedTileCopy
    ld a, $0b
    ld hl, $6000
    ld de, $9800
    ld bc, $0400
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
    xor a
    ld [rPuzzlePostClearFlowFlag], a
    ld [rPuzzleTimerCompletionState], a
    ld [rMarioBlinkAnimationSequenceCursor], a
    ld [rMarioBlinkAnimationDelay], a
    ld [rPuzzleActionRepeatGuard], a
    ld [rCellEffectTargetColumn], a
    ld [rCellEffectTargetRow], a
    ld [rPendingCellEffectCode], a
    ld [rPendingCellEffectDelay], a
    ld [rSharedUIAnimationColumnAccumulator], a
    ld [rHintCursorAnimationRowAccumulator], a
    ld a, [rLCDCFrameTickCounter]
    ld [rSharedAnimationFrameState], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    xor a
    ld [rPuzzleDataIndexLow], a
    ld [rPuzzleDataIndexHigh], a
    ld a, $02
    ld [rPuzzleTimerPenaltyStep], a
    ld a, $02
    ld [rHintCursorAnimationColumnThreshold], a
    ld [rHintCursorAnimationRowThreshold], a
    ld a, $05
    ld [rCountdownSfxTimer], a
    ld a, $96
    ld [rTilemapToTileDataAddressLookupTableLow], a
    ld a, $10
    ld [rTilemapToTileDataAddressLookupTableHigh], a
    ld a, $0d
    ld [rMessageScriptStreamResetEntryLow], a
    ld [rMessageScriptStreamEntryLow], a
    ld a, $58
    ld [rMessageScriptStreamResetEntryHigh], a
    ld [rMessageScriptStreamEntryHigh], a
    ld a, $93
    ld [rMessageScriptStreamLimitLow], a
    ld a, $89
    ld [rMessageScriptStreamLimitHigh], a
    ld a, $30
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6a
    ld [rMessageScriptStreamPointerHigh], a
    call LoadPuzzleDataBuffer
    call $6f30
    call ClearShadowOAMBuffer
    call $7beb
    ld c, $00
    ld a, $01
    call CallSoundCommandDispatcher
    call WaitForScanline40OrDelay
    ld c, $02
    ld a, $01
    call CallSoundCommandDispatcher
    call EnableLCDFromShadow
    ld b, $03
    ld hl, $46a0
    ld c, $01
    ld de, $0014
    call PlayScreenTransitionFadeIn
    ld hl, rStatePhase_Current
    inc [hl]
    call $6fb9
    ret


GS06_StatePhase_01_Message::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    ld hl, $03ed
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    call ClearShadowOAMBuffer
    call GS06_CopyRedrawSourceToProgressionBuffer
    ld a, $ae
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6a
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_02_HighlightNumbersTop_Prepare::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    xor a
    ld [rGS06_OAMSequenceEventCursor], a
    ld [rGS06_OAMSequenceEventDelay], a
    ld a, $39
    ld [rGS06_OAMSequenceBaseLow], a
    ld a, $0e
    ld [rGS06_OAMSequenceBaseHigh], a
    ld a, $e1
    ld [rGS06_OAMSequenceEventTableLow], a
    ld a, $22
    ld [rGS06_OAMSequenceEventTableHigh], a
    ld a, $00
    ld [rGS06_OAMSequenceEventTableBank], a
    ld a, $78
    ld [rStatePhaseTimer], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_02_HighlightNumbersTop_OAMSequenceEventTable::
    db $08, $00, $00, $34
    db $08, $00, $00, $35
    db $08, $00, $00, $36
    db $08, $00, $00, $35
    db $00

GS06_StatePhase_03_HighlightNumbersTop_Animation::
    call $7918
    ld a, $00
    call GS06_UpdateOAMSequenceEventAndCopySprite
    call GS06_ShowMessageArrowAndTickTransitionTimer
    ret nz

    ld a, $04
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6b
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_04_HighlightNumbersLeft_Prepare::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    xor a
    ld [rGS06_OAMSequenceEventCursor], a
    ld [rGS06_OAMSequenceEventDelay], a
    ld a, $16
    ld [rGS06_OAMSequenceBaseLow], a
    ld a, $31
    ld [rGS06_OAMSequenceBaseHigh], a
    ld a, $47
    ld [rGS06_OAMSequenceEventTableLow], a
    ld a, $23
    ld [rGS06_OAMSequenceEventTableHigh], a
    ld a, $00
    ld [rGS06_OAMSequenceEventTableBank], a
    ld a, $78
    ld [rStatePhaseTimer], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_04_HighlightNumbersLeft_OAMSequenceEventTable::
    db $08, $00, $00, $34
    db $08, $00, $00, $35
    db $08, $00, $00, $36
    db $08, $00, $00, $35
    db $00

GS06_StatePhase_05_HighlightNumbersLeft_Animation::
    call $7918
    ld a, $00
    call GS06_UpdateOAMSequenceEventAndCopySprite
    call GS06_ShowMessageArrowAndTickTransitionTimer
    ret nz

    ld a, $2a
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6b
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_06_Message::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    ld hl, $03ed
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    call ClearShadowOAMBuffer
    call GS06_CopyRedrawSourceToProgressionBuffer
    ld a, $4a
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6b
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_07_Message::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    ld hl, $03ed
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    call ClearShadowOAMBuffer
    call GS06_CopyRedrawSourceToProgressionBuffer
    ld a, $bc
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6b
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_08_SolvePuzzle_Prepare::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    xor a
    ld [rPuzzleCursorColumn], a
    ld [rPuzzleAndMenuCursorRow], a
    xor a
    ld [rGS06_ScriptedInputSequenceCursor], a
    ld [rGS06_ScriptedInputSequenceDelay], a
    ld a, $f0
    ld [rGS06_ScriptedInputSequenceTableLow], a
    ld a, $23
    ld [rGS06_ScriptedInputSequenceTableHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_SolvePuzzleInputSequenceData::
    db $00, $00, $01, $80, $01, $80, $01, $80
    db $01, $80, $01, $00, $00, $40, $40, $40
    db $40, $10, $00, $00, $01, $80, $01, $80
    db $01, $80, $01, $80, $01, $00, $00, $40
    db $40, $40, $40, $10, $10, $10, $00, $00
    db $01, $80, $01, $80, $01, $80, $01, $80
    db $01, $00, $00, $40, $40, $40, $40, $20
    db $20, $00, $00, $02, $10, $02, $00, $00
    db $20, $80, $80, $80, $80, $00, $00, $02
    db $10, $02, $00, $00, $20, $20, $20, $40
    db $40, $00, $00, $10, $10, $01, $10, $01
    db $10, $00, $00, $20, $20, $20, $20, $40
    db $00, $00, $10, $10, $01, $10, $02, $10
    db $00, $00, $20, $20, $20, $20, $80, $80
    db $00, $00, $10, $10, $02, $10, $01, $10
    db $00, $00, $00, $00, $ff

GS06_StatePhase_09_SolvePuzzle_Animation::
    call GS06_TickScriptedInputSequence
    jr nz, .FrameLoop

    ld a, $0a
    ld [rStatePhaseTimer], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


.FrameLoop:
    call $71ca
    call $713e
    call $7918
    call GS06_ShowMessageArrowAndTickTransitionTimer
    call $7222
    call $7516
    ret


GS06_StatePhase_0a_SolvePuzzle_Finish::
    call GS06_ShowMessageArrowAndTickTransitionTimer
    ret nz

    call $7635
    ld a, $02
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6c
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_0b_Message::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    ld hl, $03ed
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    call ClearShadowOAMBuffer
    call GS06_CopyRedrawSourceToProgressionBuffer
    ld a, $76
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6c
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_0c_ResetBoard::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    ld hl, $03ed
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    call ClearShadowOAMBuffer
    call GS06_CopyRedrawSourceToProgressionBuffer
    call GS06_RedrawGameBoard
    call LoadPuzzleDataBuffer
    ld a, $d0
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6c
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_0d_HighlightNumbersTop_Prepare::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    xor a
    ld [rGS06_OAMSequenceEventCursor], a
    ld [rGS06_OAMSequenceEventDelay], a
    ld a, $39
    ld [rGS06_OAMSequenceBaseLow], a
    ld a, $0e
    ld [rGS06_OAMSequenceBaseHigh], a
    ld a, $38
    ld [rGS06_OAMSequenceEventTableLow], a
    ld a, $25
    ld [rGS06_OAMSequenceEventTableHigh], a
    ld a, $00
    ld [rGS06_OAMSequenceEventTableBank], a
    ld a, $78
    ld [rStatePhaseTimer], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_0d_HighlightNumbersTop_OAMSequenceEventTable::
    db $08, $00, $00, $34
    db $08, $00, $00, $35
    db $08, $00, $00, $36
    db $08, $00, $00, $35
    db $00

GS06_StatePhase_0e_HighlightNumbersTop_Animation::
    call $7918
    ld a, $00
    call GS06_UpdateOAMSequenceEventAndCopySprite
    call GS06_ShowMessageArrowAndTickTransitionTimer
    ret nz

    ld a, $0c
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6d
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_0f_Message::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    ld hl, $03ed
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    call ClearShadowOAMBuffer
    call GS06_CopyRedrawSourceToProgressionBuffer
    ld a, $9a
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6d
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_10_HighlightNumbersFirstColumn_Prepare::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    xor a
    ld [rGS06_OAMSequenceEventCursor], a
    ld [rGS06_OAMSequenceEventDelay], a
    ld a, $39
    ld [rGS06_OAMSequenceBaseLow], a
    ld a, $0e
    ld [rGS06_OAMSequenceBaseHigh], a
    ld a, $c6
    ld [rGS06_OAMSequenceEventTableLow], a
    ld a, $25
    ld [rGS06_OAMSequenceEventTableHigh], a
    ld a, $00
    ld [rGS06_OAMSequenceEventTableBank], a
    ld a, $78
    ld [rStatePhaseTimer], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_10_HighlightNumbersFirstColumn_OAMSequenceEventTable::
    db $08, $00, $00, $2e
    db $08, $00, $00, $2f
    db $08, $00, $00, $30
    db $08, $00, $00, $2f
    db $00

GS06_StatePhase_11_HighlightNumbersFirstColumn_Animation::
    call $7918
    ld a, $00
    call GS06_UpdateOAMSequenceEventAndCopySprite
    call GS06_ShowMessageArrowAndTickTransitionTimer
    ret nz

    ld a, $bc
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6d
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_12_SolveFirstColumn_Prepare::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    xor a
    ld [rPuzzleCursorColumn], a
    ld [rPuzzleAndMenuCursorRow], a
    xor a
    ld [rGS06_ScriptedInputSequenceCursor], a
    ld [rGS06_ScriptedInputSequenceDelay], a
    ld a, $1f
    ld [rGS06_ScriptedInputSequenceTableLow], a
    ld a, $26
    ld [rGS06_ScriptedInputSequenceTableHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_SolveFirstColumnInputSequenceData::
    db $00, $00, $01, $80, $01, $80, $01, $80
    db $01, $80, $01, $00, $00, $00, $00, $ff

GS06_StatePhase_13_SolveFirstColumn_Animation::
    call GS06_TickScriptedInputSequence
    jr nz, .FrameLoop

    ld hl, $03ed
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    call ClearShadowOAMBuffer
    call GS06_CopyRedrawSourceToProgressionBuffer
    call GS06_RedrawGameBoard
    call LoadPuzzleDataBuffer
    ld a, $24
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6e
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


.FrameLoop:
    call $71ca
    call $713e
    call $7918
    call GS06_ShowMessageArrowAndTickTransitionTimer
    call $7222
    call $7516
    ret


GS06_StatePhase_14_HighlightNumbersLeft_Prepare::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    xor a
    ld [rGS06_OAMSequenceEventCursor], a
    ld [rGS06_OAMSequenceEventDelay], a
    ld a, $16
    ld [rGS06_OAMSequenceBaseLow], a
    ld a, $31
    ld [rGS06_OAMSequenceBaseHigh], a
    ld a, $a2
    ld [rGS06_OAMSequenceEventTableLow], a
    ld a, $26
    ld [rGS06_OAMSequenceEventTableHigh], a
    ld a, $00
    ld [rGS06_OAMSequenceEventTableBank], a
    ld a, $78
    ld [rStatePhaseTimer], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_14_HighlightNumbersLeft_OAMSequenceEventTable::
    db $08, $00, $00, $34
    db $08, $00, $00, $35
    db $08, $00, $00, $36
    db $08, $00, $00, $35
    db $00

GS06_StatePhase_15_HighlightNumbersLeft_Animation::
    call $7918
    ld a, $00
    call GS06_UpdateOAMSequenceEventAndCopySprite
    call GS06_ShowMessageArrowAndTickTransitionTimer
    ret nz

    ld a, $6c
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6e
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_16_Message::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    ld hl, $03ed
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    call ClearShadowOAMBuffer
    call GS06_CopyRedrawSourceToProgressionBuffer
    ld a, $04
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6f
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_17_HighlightNumbersSecondRow_Prepare::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    xor a
    ld [rGS06_OAMSequenceEventCursor], a
    ld [rGS06_OAMSequenceEventDelay], a
    ld a, $16
    ld [rGS06_OAMSequenceBaseLow], a
    ld a, $37
    ld [rGS06_OAMSequenceBaseHigh], a
    ld a, $30
    ld [rGS06_OAMSequenceEventTableLow], a
    ld a, $27
    ld [rGS06_OAMSequenceEventTableHigh], a
    ld a, $00
    ld [rGS06_OAMSequenceEventTableBank], a
    ld a, $78
    ld [rStatePhaseTimer], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_17_HighlightNumbersSecondRow_OAMSequenceEventTable::
    db $08, $00, $00, $31
    db $08, $00, $00, $32
    db $08, $00, $00, $33
    db $08, $00, $00, $32
    db $00

GS06_StatePhase_18_HighlightNumbersSecondRow_Animation::
    call $7918
    ld a, $00
    call GS06_UpdateOAMSequenceEventAndCopySprite
    call GS06_ShowMessageArrowAndTickTransitionTimer
    ret nz

    ld a, $36
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6f
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_19_SolveSecondRow_Prepare::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    xor a
    ld [rPuzzleCursorColumn], a
    ld a, $01
    ld [rPuzzleAndMenuCursorRow], a
    xor a
    ld [rGS06_ScriptedInputSequenceCursor], a
    ld [rGS06_ScriptedInputSequenceDelay], a
    ld a, $8b
    ld [rGS06_ScriptedInputSequenceTableLow], a
    ld a, $27
    ld [rGS06_ScriptedInputSequenceTableHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_SolveSecondRowInputSequenceData::
    db $00, $00, $01, $10, $01, $10, $01, $00
    db $00, $10, $10, $00, $00, $01, $00, $00
    db $00, $00, $ff

GS06_StatePhase_1a_SolveSecondRow_Animation::
    call GS06_TickScriptedInputSequence
    jr nz, .FrameLoop

    ld hl, $03ed
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    call ClearShadowOAMBuffer
    call GS06_CopyRedrawSourceToProgressionBuffer
    ld a, $fe
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6f
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


.FrameLoop:
    call $71ca
    call $713e
    call $7918
    call GS06_ShowMessageArrowAndTickTransitionTimer
    call $7222
    call $7516
    ret


GS06_StatePhase_1b_Message::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_1c_DecrementPuzzleTimer::
    call $7918
    call GS06_ShowMessageArrowAndTickTransitionTimer
    call GS06_DecrementPuzzleTimer
    call $7cc8
    ld a, [rPuzzleTimerCompletionState]
    cp $01
    ret nz

    ld a, $6a
    ld [rMessageScriptStreamPointerLow], a
    ld a, $70
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_1d_GameOverMessage::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    call $7ce3
    ld hl, $03ed
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    call ClearShadowOAMBuffer
    call GS06_CopyRedrawSourceToProgressionBuffer
    call GS06_RedrawGameBoard_RestoreStateAfterGameOver
    call $7beb
    ld a, $9c
    ld [rMessageScriptStreamPointerLow], a
    ld a, $70
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_1e_MakeMistake_Prepare::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    ld a, $03
    ld [rPuzzleCursorColumn], a
    ld a, $01
    ld [rPuzzleAndMenuCursorRow], a
    xor a
    ld [rGS06_ScriptedInputSequenceCursor], a
    ld [rGS06_ScriptedInputSequenceDelay], a
    ld a, $68
    ld [rGS06_ScriptedInputSequenceTableLow], a
    ld a, $28
    ld [rGS06_ScriptedInputSequenceTableHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_MakeMistakeInputSequenceData::
    db $00, $00, $01, $00, $00, $00, $00, $ff

GS06_StatePhase_1f_MakeMistake_Animation::
    call GS06_TickScriptedInputSequence
    jr nz, .FrameLoop

    ld a, $1a
    ld [rMessageScriptStreamPointerLow], a
    ld a, $71
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


.FrameLoop:
    call $71ca
    call $713e
    call $7918
    call GS06_ShowMessageArrowAndTickTransitionTimer
    call $7222
    call $7516
    ret


GS06_StatePhase_20_Message::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    ld hl, $03ed
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    call ClearShadowOAMBuffer
    call GS06_CopyRedrawSourceToProgressionBuffer
    ld a, $48
    ld [rMessageScriptStreamPointerLow], a
    ld a, $71
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_21_MarkWithX_Prepare::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    ld a, $03
    ld [rPuzzleCursorColumn], a
    ld a, $01
    ld [rPuzzleAndMenuCursorRow], a
    xor a
    ld [rGS06_ScriptedInputSequenceCursor], a
    ld [rGS06_ScriptedInputSequenceDelay], a
    ld a, $ef
    ld [rGS06_ScriptedInputSequenceTableLow], a
    ld a, $28
    ld [rGS06_ScriptedInputSequenceTableHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_MarkWithXInputSequenceData::
    db $00, $00, $02, $00, $00, $00, $00, $ff

GS06_StatePhase_22_MarkWithX_Animation::
    call GS06_TickScriptedInputSequence
    jr nz, .FrameLoop

    ld hl, $03ed
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    call ClearShadowOAMBuffer
    call GS06_CopyRedrawSourceToProgressionBuffer
    call GS06_RedrawGameBoard
    call LoadPuzzleDataBuffer
    call $7beb
    ld a, $ca
    ld [rMessageScriptStreamPointerLow], a
    ld a, $71
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


.FrameLoop:
    call $71ca
    call $713e
    call $7918
    call GS06_ShowMessageArrowAndTickTransitionTimer
    call $7222
    call $7516
    ret


GS06_StatePhase_23_WithHintPopUp_Prepare::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    ld a, $01
    ld [rHintPopupSelection], a
    ld a, $06
    ld hl, $7800
    ld de, $8500
    ld bc, $0200
    call BankedTileCopyVRAMSafe
    xor a
    ld [rGS06_ScriptedInputSequenceCursor], a
    ld [rGS06_ScriptedInputSequenceDelay], a
    ld a, $6c
    ld [rGS06_ScriptedInputSequenceTableLow], a
    ld a, $29
    ld [rGS06_ScriptedInputSequenceTableHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_WithHintPopUpInputSequenceData::
    db $00, $00, $20, $00, $00, $ff

GS06_StatePhase_24_WithHintPopUp_Demonstration::
    call GS06_DrawWithHintPopUp
    call GS06_TickScriptedInputSequence
    jr nz, .ToggleHintPopupVariant

    ld hl, GS06_DrawWithHintPopUp
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    call ClearShadowOAMBuffer
    call GS06_CopyRedrawSourceToProgressionBuffer
    ld a, $88
    ld [rMessageScriptStreamPointerLow], a
    ld a, $72
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    rst RST_08
    ld a, $07
    ld hl, $4500
    ld de, $8500
    ld bc, $0200
    call BankedTileCopyVRAMSafe
    ret


.ToggleHintPopupVariant:
    call $7918
    ld a, [rInputButtonsPressed]
    and $f0
    ret z

    ld c, $0a
    ld a, $02
    call CallSoundCommandDispatcher
    ld a, [rHintPopupSelection]
    xor $01
    ld [rHintPopupSelection], a
    ret


GS06_DrawWithHintPopUp::
    ld a, [rHintPopupSelection]
    add $3a
    ld bc, $2a36
    call CopyOAMSpriteById
    ret


GS06_StatePhase_25_Message::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    ld hl, $03ed
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    call ClearShadowOAMBuffer
    call GS06_CopyRedrawSourceToProgressionBuffer
    ld a, $24
    ld [rMessageScriptStreamPointerLow], a
    ld a, $73
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_26_StopTopHintCursor::
    call AdvanceHintCursorAnimation
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    ld hl, AdvanceHintCursorAnimation
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    ld a, [rHintCursorAnimationColumnThreshold]
    scf
    rl a
    ld [rHintCursorAnimationColumnThreshold], a

.DecelerateTopHintCursorLoop:
    call GS06_ShowMessageArrowAndTickTransitionTimer
    call ClearShadowOAMBufferFromCursor
    rst RST_08
    call AdvanceHintCursorAnimation
    ld a, [rHintCursorAnimationColumnThreshold]
    cp $3f
    jr c, .DecelerateTopHintCursorLoop

    ld a, $78
    ld [rMessageScriptStreamPointerLow], a
    ld a, $73
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_27_StopLeftHintCursor::
    call AdvanceHintCursorAnimation
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    ld hl, AdvanceHintCursorAnimation
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    ld a, [rHintCursorAnimationRowThreshold]
    scf
    rl a
    ld [rHintCursorAnimationRowThreshold], a

.DecelerateLeftHintCursorLoop:
    call GS06_ShowMessageArrowAndTickTransitionTimer
    call ClearShadowOAMBufferFromCursor
    rst RST_08
    call AdvanceHintCursorAnimation
    ld a, [rHintCursorAnimationRowThreshold]
    cp $3f
    jr c, .DecelerateLeftHintCursorLoop

    call ClearShadowOAMBuffer
    call AdvanceHintCursorAnimation
    call GS06_CopyRedrawSourceToProgressionBuffer
    ld a, $ca
    ld [rMessageScriptStreamPointerLow], a
    ld a, $73
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_28_ApplyHintSolve::
    call AdvanceHintCursorAnimation
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    call $78a2
    ld hl, $7185
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip
    call ClearShadowOAMBuffer
    call $7185
    call GS06_CopyRedrawSourceToProgressionBuffer
    ld a, $34
    ld [rMessageScriptStreamPointerLow], a
    ld a, $74
    ld [rMessageScriptStreamPointerHigh], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld hl, rStatePhase_Current
    inc [hl]
    ret


GS06_StatePhase_29_AdvanceOrRestart::
    call $7918
    call AnimateMarioMouthDuringText
    call AdvanceMessageScriptStream
    ret nz

    ld a, $01
    ld [rAdvanceOrSkipTimeoutEnabled], a
    ld a, $ff
    ld [rAdvanceOrSkipTimeoutCounter], a
    ld hl, $03ed
    call GS06_WaitForAdvanceOrSkip_PollLoop
    ld a, [rInputButtonsHeld]
    push af
    call ClearShadowOAMBuffer
    call GS06_CopyRedrawSourceToProgressionBuffer
    call GS06_RedrawGameBoard
    call LoadPuzzleDataBuffer
    pop af
    bit 0, a
    jr z, .ResetTutorialStateAndRestart

    ld hl, rStatePhase_Current
    inc [hl]
    ret


.ResetTutorialStateAndRestart:
    xor a
    ld [rPuzzleCursorColumn], a
    ld [rPuzzleAndMenuCursorRow], a
    ld [rPuzzlePostClearFlowFlag], a
    ld [rPuzzleTimerCompletionState], a
    ld [rPuzzleActionRepeatGuard], a
    call GS06_ResetCellActionStepAndMarioMouthAnimationState
    ld a, $02
    ld [rPuzzleTimerPenaltyStep], a
    ld a, $02
    ld [rHintCursorAnimationColumnThreshold], a
    ld [rHintCursorAnimationRowThreshold], a
    ld a, $05
    ld [rCountdownSfxTimer], a
    ld a, [rMessageScriptStreamResetEntryLow]
    ld [rMessageScriptStreamEntryLow], a
    ld a, [rMessageScriptStreamResetEntryHigh]
    ld [rMessageScriptStreamEntryHigh], a
    ld a, $30
    ld [rMessageScriptStreamPointerLow], a
    ld a, $6a
    ld [rMessageScriptStreamPointerHigh], a
    call $7beb
    ld a, $01
    ld [rStatePhase_Current], a
    ret


GS06_StatePhase_2a_CancelAndReturnToMenu::
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
    ld hl, $46ab
    ld c, $01
    ld de, $0023
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
    xor a
    ld [rStatePhase_Current], a
    ld a, $02
    ld [rGameState_Current], a
    ret


AdvanceMessageScriptStream::
    ld a, [rActiveROMBank]
    push af
    ld a, $05
    ld [rActiveROMBank], a
    ld [rROMB], a
    call AdvanceMessageScriptStreamHelper
    pop bc
    push af
    ld a, b
    ld [rActiveROMBank], a
    ld [rROMB], a
    pop af
    ret


AdvanceMessageScriptStreamHelper::
    ld a, [rMessageScriptStreamPointerLow]
    ld l, a
    ld a, [rMessageScriptStreamPointerHigh]
    ld h, a
    ld a, [rMessageScriptStreamEntryLow]
    ld b, a
    ld a, [rMessageScriptStreamEntryHigh]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    and e
    cp $ff
    ret z

    push hl
    ld a, e
    cp $fe
    jr nz, .AdvanceMessageScriptStreamEntry

    ld a, d
    cp $ff
    jr z, .ResetMessageScriptStreamEntry

.AdvanceMessageScriptStreamEntry:
    call PrepareMessageBGTileCopySetup
    ld hl, rMessageScriptStreamEntryLow
    add $01
    add [hl]
    ld [hl], a
    jr .StoreMessageScriptStreamPointer

.ResetMessageScriptStreamEntry:
    ld a, [rMessageScriptStreamResetEntryLow]
    ld [rMessageScriptStreamEntryLow], a
    ld a, [rMessageScriptStreamEntryHigh]
    add $0a
    ld [rMessageScriptStreamEntryHigh], a

.StoreMessageScriptStreamPointer:
    pop hl
    ld a, l
    ld [rMessageScriptStreamPointerLow], a
    ld a, h
    ld [rMessageScriptStreamPointerHigh], a
    ld a, [hl+]
    and [hl]
    cp $ff
    ret


PrepareMessageBGTileCopySetup::
    push de
    sla e
    rl d
    ld hl, MessageGlyphSourceOffsetTable
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $4000
    add hl, de
    ld a, l
    ld [rBGTileCopyBankAddressLow], a
    ld a, h
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $0d
    ld [rBGTileCopyBank], a
    ld a, b
    ld [rBGTileCopySourceX], a
    pop de
    ld hl, MessageGlyphWidthTable
    add hl, de
    ld a, [hl]
    and a
    ret z

    push af
    add b
    ld hl, rMessageScriptStreamLimitLow
    cp [hl]
    jr c, .PrepareMessageBGTileCopyParams

    pop af
    ret


.PrepareMessageBGTileCopyParams:
    ld [rBGTileCopyDestX], a
    ld a, c
    ld [rBGTileCopySourceY], a
    add $08
    ld hl, rMessageScriptStreamLimitHigh
    cp [hl]
    jr c, .ApplyMessageBGTileCopyParams

    pop af
    ret


.ApplyMessageBGTileCopyParams:
    ld [rBGTileCopyDestY], a
    call PrepareBGTileCopy
    pop af
    ret


AdvanceMessageScriptStreamHelper_NoBankSwitch::
    ld a, [rMessageScriptStreamPointerLow]
    ld l, a
    ld a, [rMessageScriptStreamPointerHigh]
    ld h, a
    ld a, [rMessageScriptStreamEntryLow]
    ld b, a
    ld a, [rMessageScriptStreamEntryHigh]
    ld c, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    and e
    cp $ff
    ret z

    push hl
    ld a, e
    cp $fe
    jr nz, .AdvanceMessageScriptStreamEntry

    ld a, d
    cp $ff
    jr z, .ResetMessageScriptStreamEntry

.AdvanceMessageScriptStreamEntry:
    call PrepareMessageBGTileCopySetup_NoBankSwitch
    ld hl, rMessageScriptStreamEntryLow
    add $01
    add [hl]
    ld [hl], a
    jr .StoreMessageScriptStreamPointer

.ResetMessageScriptStreamEntry:
    ld a, [rMessageScriptStreamResetEntryLow]
    ld [rMessageScriptStreamEntryLow], a
    ld a, [rMessageScriptStreamEntryHigh]
    add $0a
    ld [rMessageScriptStreamEntryHigh], a

.StoreMessageScriptStreamPointer:
    pop hl
    ld a, l
    ld [rMessageScriptStreamPointerLow], a
    ld a, h
    ld [rMessageScriptStreamPointerHigh], a
    ld a, [hl+]
    and [hl]
    cp $ff
    ret


PrepareMessageBGTileCopySetup_NoBankSwitch::
    push de
    sla e
    rl d
    ld hl, MessageGlyphSourceOffsetTable
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $4000
    add hl, de
    ld a, l
    ld [rBGTileCopyBankAddressLow], a
    ld a, h
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $0d
    ld [rBGTileCopyBank], a
    ld a, b
    ld [rBGTileCopySourceX], a
    pop de
    ld hl, MessageGlyphWidthTable
    add hl, de
    ld a, [hl]
    and a
    ret z

    push af
    add b
    ld hl, rMessageScriptStreamLimitLow
    cp [hl]
    jr c, .PrepareMessageBGTileCopyParams_NoBankSwitch

    pop af
    ret


.PrepareMessageBGTileCopyParams_NoBankSwitch:
    ld [rBGTileCopyDestX], a
    ld a, c
    ld [rBGTileCopySourceY], a
    add $08
    ld hl, rMessageScriptStreamLimitHigh
    cp [hl]
    jr c, .ApplyMessageBGTileCopyParams_NoBankSwitch

    pop af
    ret


.ApplyMessageBGTileCopyParams_NoBankSwitch:
    ld [rBGTileCopyDestY], a
    call PrepareBGTileCopyNoLCDCBit4Force
    pop af
    ret


MessageGlyphWidthTable::
    db $07, $07, $06, $07, $07, $08, $07, $04
    db $07, $07, $07, $06, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $06, $07
    db $07, $07, $07, $07, $07, $06, $06, $06
    db $07, $07, $07, $07, $06, $07, $04, $05
    db $05, $04, $0a, $08, $07, $0a, $09, $09
    db $07, $09, $0a, $09, $09, $08, $09, $09
    db $09, $0a, $09, $09, $07, $0a, $09, $09
    db $09, $07, $0a, $05, $05, $05, $05, $07
    db $07, $07, $07, $07, $07, $07, $06, $06
    db $07, $07, $07, $06, $07, $07, $07, $06
    db $07, $06, $07, $05, $07, $07, $06, $07
    db $06, $07, $07, $07, $07, $07, $07, $06
    db $07, $06, $07, $07, $07, $06, $07, $05
    db $07, $06, $07, $07, $06, $06, $05, $05
    db $05, $04, $0a, $08, $09, $09, $09, $0a
    db $08, $09, $0a, $0b, $0b, $0a, $0b, $0a
    db $07, $09, $09, $09, $08, $09, $09, $08
    db $09, $07, $09, $05, $04, $05, $05, $05
    db $06, $04, $06, $06, $06, $06, $06, $06
    db $06, $06, $06, $06, $06, $06, $06, $06
    db $06, $06, $06, $02, $06, $06, $06, $06
    db $06, $06, $06, $07, $06, $06, $06, $06
    db $06, $06, $06, $06, $06, $06, $05, $05
    db $05, $05, $05, $05, $05, $02, $05, $05
    db $03, $06, $05, $05, $05, $05, $05, $05
    db $05, $05, $05, $06, $05, $05, $05, $02
    db $02, $03, $05, $05, $06, $05, $05, $02
    db $06, $02, $02, $02, $02, $06, $03, $03
    db $04, $02, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

MessageGlyphSourceOffsetTable::
    db $00, $00, $20, $00, $40, $00, $60, $00, $80, $00, $a0, $00, $c0, $00, $e0, $00
    db $04, $01, $24, $01, $44, $01, $64, $01, $84, $01, $a4, $01, $c4, $01, $e4, $01
    db $08, $02, $28, $02, $48, $02, $68, $02, $88, $02, $a8, $02, $c8, $02, $e8, $02
    db $0c, $03, $2c, $03, $4c, $03, $6c, $03, $8c, $03, $ac, $03, $cc, $03, $ec, $03
    db $00, $05, $20, $05, $40, $05, $60, $05, $80, $05, $a0, $05, $c0, $05, $e0, $05
    db $04, $06, $24, $06, $44, $06, $64, $06, $84, $06, $a4, $06, $c4, $06, $e4, $06
    db $08, $07, $28, $07, $48, $07, $68, $07, $88, $07, $a8, $07, $c8, $07, $e8, $07
    db $0c, $08, $2c, $08, $4c, $08, $6c, $08, $8c, $08, $ac, $08, $cc, $08, $ec, $08
    db $00, $0a, $20, $0a, $40, $0a, $60, $0a, $80, $0a, $a0, $0a, $c0, $0a, $e0, $0a
    db $04, $0b, $24, $0b, $44, $0b, $64, $0b, $84, $0b, $a4, $0b, $c4, $0b, $e4, $0b
    db $08, $0c, $28, $0c, $48, $0c, $68, $0c, $88, $0c, $a8, $0c, $c8, $0c, $e8, $0c
    db $0c, $0d, $2c, $0d, $4c, $0d, $6c, $0d, $8c, $0d, $ac, $0d, $cc, $0d, $ec, $0d
    db $00, $0f, $20, $0f, $40, $0f, $60, $0f, $80, $0f, $a0, $0f, $c0, $0f, $e0, $0f
    db $04, $10, $24, $10, $44, $10, $64, $10, $84, $10, $a4, $10, $c4, $10, $e4, $10
    db $08, $11, $28, $11, $48, $11, $68, $11, $88, $11, $a8, $11, $c8, $11, $e8, $11
    db $0c, $12, $2c, $12, $4c, $12, $6c, $12, $8c, $12, $ac, $12, $cc, $12, $ec, $12
    db $00, $14, $20, $14, $40, $14, $60, $14, $80, $14, $a0, $14, $c0, $14, $e0, $14
    db $04, $15, $24, $15, $44, $15, $64, $15, $84, $15, $a4, $15, $c4, $15, $e4, $15
    db $08, $16, $28, $16, $48, $16, $68, $16, $88, $16, $a8, $16, $c8, $16, $e8, $16
    db $0c, $17, $2c, $17, $4c, $17, $6c, $17, $8c, $17, $ac, $17, $cc, $17, $ec, $17
    db $00, $19, $20, $19, $40, $19, $60, $19, $80, $19, $a0, $19, $c0, $19, $e0, $19
    db $04, $1a, $24, $1a, $44, $1a, $64, $1a, $84, $1a, $a4, $1a, $c4, $1a, $e4, $1a
    db $08, $1b, $28, $1b, $48, $1b, $68, $1b, $88, $1b, $a8, $1b, $c8, $1b, $e8, $1b
    db $0c, $1c, $2c, $1c, $4c, $1c, $6c, $1c, $8c, $1c, $ac, $1c, $cc, $1c, $ec, $1c
    db $00, $1e, $20, $1e, $40, $1e, $60, $1e, $80, $1e, $a0, $1e, $c0, $1e, $e0, $1e
    db $04, $1f, $24, $1f, $44, $1f, $64, $1f, $84, $1f, $a4, $1f, $c4, $1f, $e4, $1f
    db $08, $20, $28, $20, $48, $20, $68, $20, $88, $20, $a8, $20, $c8, $20, $e8, $20
    db $0c, $21, $2c, $21, $4c, $21, $6c, $21, $8c, $21, $ac, $21, $cc, $21, $ec, $21
    db $00, $23, $20, $23, $40, $23, $60, $23, $80, $23, $a0, $23, $c0, $23, $e0, $23
    db $04, $24, $24, $24, $44, $24, $64, $24, $84, $24, $a4, $24, $c4, $24, $e4, $24
    db $08, $25, $28, $25, $48, $25, $68, $25, $88, $25, $a8, $25, $c8, $25, $e8, $25
    db $0c, $26, $2c, $26, $4c, $26, $6c, $26, $8c, $26, $ac, $26, $cc, $26, $ec, $26

GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip::
    ld a, $78
    ld [rAdvanceOrSkipTimeoutCounter], a

GS06_WaitForAdvanceOrSkip_PollLoop::
    ld a, [rAdvanceOrSkipTimeoutEnabled]
    and a
    jr z, .CheckAdvanceInputA

    ld a, [rAdvanceOrSkipTimeoutCounter]
    dec a
    ld [rAdvanceOrSkipTimeoutCounter], a
    ret z

.CheckAdvanceInputA:
    ld a, [rInputButtonsPressed]
    bit 0, a
    jr z, .CheckCancelInputStart

    ld c, $03
    ld a, $02
    call CallSoundCommandDispatcher
    ret


.CheckCancelInputStart:
    ld a, [rInputButtonsPressed]
    bit 3, a
    jr z, .WaitLoopBody

    ld [rGS06_HowToPlaySkipRequestedFlag], a
    ld c, $04
    ld a, $02
    call CallSoundCommandDispatcher
    ret


.WaitLoopBody:
    push hl
    call ClearShadowOAMBufferFromCursor
    rst RST_08
    call $7918
    ld a, [rLCDCFrameTickCounter]
    bit 4, a
    jr nz, .LoopCallbackReturn

    ld a, [rMessageScriptStreamEntryLow]
    inc a
    ld b, a
    ld a, [rMessageScriptStreamEntryHigh]
    inc a
    ld c, a
    ld a, $37
    call CopyOAMSpriteById

.LoopCallbackReturn:
    pop hl
    push hl
    ld bc, $300f
    push bc
    jp hl


    pop hl
    jr GS06_WaitForAdvanceOrSkip_PollLoop

GS06_ShowMessageArrowAndTickTransitionTimer::
    ld a, [rLCDCFrameTickCounter]
    bit 4, a
    jr nz, .TickTransitionTimer

    ld a, [rMessageScriptStreamEntryLow]
    sub $03
    ld b, a
    ld a, [rMessageScriptStreamEntryHigh]
    inc a
    ld c, a
    ld a, $38
    call CopyOAMSpriteById

.TickTransitionTimer:
    ld hl, rStatePhaseTimer
    dec [hl]
    ret


GS06_CopyRedrawSourceToProgressionBuffer::
    ld bc, $0d58
    ld de, $8507
    call GS06_PrepareRedrawSourceCopy
    ld bc, $0d60
    ld de, $8507
    call GS06_PrepareRedrawSourceCopy
    ld bc, $0d68
    ld de, $8507
    call GS06_PrepareRedrawSourceCopy
    ld bc, $0d70
    ld de, $8507
    call GS06_PrepareRedrawSourceCopy
    ld bc, $0d78
    ld de, $8507
    call GS06_PrepareRedrawSourceCopy
    ld bc, $0d80
    ld de, $8507
    call GS06_PrepareRedrawSourceCopy
    ld a, [rMessageScriptStreamResetEntryLow]
    ld [rMessageScriptStreamEntryLow], a
    ld a, [rMessageScriptStreamResetEntryHigh]
    ld [rMessageScriptStreamEntryHigh], a
    ret


GS06_PrepareRedrawSourceCopy::
    ld a, $00
    ld [rBGTileCopyBankAddressLow], a
    ld a, $6c
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $07
    ld [rBGTileCopyBank], a
    ld a, b
    ld [rBGTileCopySourceX], a
    add d
    ld [rBGTileCopyDestX], a
    ld a, c
    ld [rBGTileCopySourceY], a
    add e
    ld [rBGTileCopyDestY], a
    jp PrepareBGTileCopy


AnimateMarioMouthDuringText::
    ld a, [rGS06_MarioMouthAnimationCountdown]
    and a
    jr nz, .TickAndEmitMouthFrame

    ld a, [rGS06_MarioMouthAnimationPatternCursor]
    ld c, a
    ld b, $00

.NextMouthPatternEntry:
    ld hl, MarioMouthAnimationPatternData
    add hl, bc
    ld a, [hl+]
    and a
    jr nz, .LoadMouthPatternEntry

    ld bc, $0000
    jr .NextMouthPatternEntry

.LoadMouthPatternEntry:
    ld [rGS06_MarioMouthAnimationCountdown], a
    ld a, [hl]
    ld [rGS06_MarioMouthAnimationSpriteId], a
    inc c
    inc c
    ld a, c
    ld [rGS06_MarioMouthAnimationPatternCursor], a

.TickAndEmitMouthFrame:
    ld hl, rGS06_MarioMouthAnimationCountdown
    dec [hl]
    ld a, [rGS06_MarioMouthAnimationSpriteId]
    cp $ff
    ret z

    ld bc, $1d20
    jp CopyOAMSpriteById


MarioMouthAnimationPatternData::
    db $02, $39
    db $04, $ff
    db $03, $39
    db $03, $ff
    db $02, $39
    db $05, $ff
    db $00

GS06_TickScriptedInputSequence::
    xor a
    ld [rInputButtonsHeld], a
    ld [rInputButtonsPressed], a
    ld [rInputButtonsPressedOrRepeated], a
    ld a, [rGS06_ScriptedInputSequenceDelay]
    and a
    jr nz, .TickDelayAndReturnBusy

    ld a, [rGS06_ScriptedInputSequenceCursor]
    ld c, a
    ld b, $00
    ld a, [rGS06_ScriptedInputSequenceTableLow]
    ld l, a
    ld a, [rGS06_ScriptedInputSequenceTableHigh]
    ld h, a
    add hl, bc
    ld a, [hl]
    cp $ff
    ret z

    ld [rInputButtonsHeld], a
    ld [rInputButtonsPressed], a
    ld [rInputButtonsPressedOrRepeated], a
    ld a, $07
    ld [rGS06_ScriptedInputSequenceDelay], a
    ld a, c
    inc a
    ld [rGS06_ScriptedInputSequenceCursor], a

.TickDelayAndReturnBusy:
    ld hl, rGS06_ScriptedInputSequenceDelay
    dec [hl]
    ld a, $ff
    and a
    ret


GS06_RedrawGameBoard::
    ld a, $40
    ld [rBGTileCopyBankAddressLow], a
    ld a, $4c
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $07
    ld [rBGTileCopyBank], a
    ld a, $38
    ld [rBGTileCopySourceX], a
    add $1f
    ld [rBGTileCopyDestX], a
    ld a, $30
    ld [rBGTileCopySourceY], a
    add $1f
    ld [rBGTileCopyDestY], a
    jp PrepareBGTileCopy


GS06_RedrawGameBoard_RestoreStateAfterGameOver::
    ld a, $00
    ld [rBGTileCopyBankAddressLow], a
    ld a, $68
    ld [rBGTileCopyBankAddressHigh], a
    ld a, $07
    ld [rBGTileCopyBank], a
    ld a, $38
    ld [rBGTileCopySourceX], a
    add $1f
    ld [rBGTileCopyDestX], a
    ld a, $30
    ld [rBGTileCopySourceY], a
    add $1f
    ld [rBGTileCopyDestY], a
    jp PrepareBGTileCopy


GS06_DecrementPuzzleTimer::
    ld a, [rPuzzleTimerSecondOnes]
    ld hl, rPuzzleTimerSecondTens
    or [hl]
    ld hl, rPuzzleTimerMinuteOnes
    or [hl]
    ld hl, rPuzzleTimerMinuteTens
    or [hl]
    ret z

    ld a, $ff
    ld [rPuzzleTimerActive], a
    ld a, [rPuzzleTimerSecondOnes]
    sub $05
    jr nc, .DecrementPuzzleTimerSecondOnes

    add $0a

.DecrementPuzzleTimerSecondOnes:
    ld [rPuzzleTimerSecondOnes], a
    push af
    ld bc, $2b27
    call $7c29
    pop af
    ld a, [rPuzzleTimerSecondTens]
    sbc $01
    jr nc, .DecrementPuzzleTimerSecondTens

    add $06

.DecrementPuzzleTimerSecondTens:
    ld [rPuzzleTimerSecondTens], a
    push af
    ld bc, $2327
    call $7c29
    pop af
    ret nc

    ld a, [rPuzzleTimerMinuteOnes]
    dec a
    cp $ff
    jr nz, .DecrementPuzzleTimerMinuteOnes

    ld a, $09

.DecrementPuzzleTimerMinuteOnes:
    ld [rPuzzleTimerMinuteOnes], a
    push af
    ld bc, $1527
    call $7c29
    pop af
    ret nz

    ld a, [rPuzzleTimerMinuteTens]
    dec a
    cp $ff
    jr nz, .DecrementPuzzleTimerMinuteTens

    ld a, $09

.DecrementPuzzleTimerMinuteTens:
    ld [rPuzzleTimerMinuteTens], a
    push af
    ld bc, $0d27
    call $7c29
    pop af
    ret


AdvanceHintCursorAnimation::
    ld a, [rLCDCFrameTickCounter]
    push af
    ld hl, rSharedAnimationFrameState
    sub [hl]
    push af
    ld hl, rSharedUIAnimationColumnAccumulator
    add [hl]
    ld [hl], a
    pop af
    ld hl, rHintCursorAnimationRowAccumulator
    add [hl]
    ld [hl], a
    pop af
    ld [rSharedAnimationFrameState], a
    ld a, [rHintCursorAnimationColumnThreshold]
    cp $3f
    jr nc, .AdvanceHintCursorRow

    ld c, a
    ld a, [rSharedUIAnimationColumnAccumulator]
    cp c
    jr c, .AdvanceHintCursorRow

    xor a
    ld [rSharedUIAnimationColumnAccumulator], a
    ld a, c
    cp $02
    jr z, .AdvanceHintCursorColumn

    scf
    ld hl, rHintCursorAnimationColumnThreshold
    rl [hl]

.AdvanceHintCursorColumn:
    ld a, [rPuzzleCursorColumn]
    inc a
    cp $05
    jr nz, .HintCursorColumnNoWrap

    xor a

.HintCursorColumnNoWrap:
    ld [rPuzzleCursorColumn], a
    call $6c2c

.AdvanceHintCursorRow:
    ld a, [rHintCursorAnimationRowThreshold]
    cp $3f
    jr nc, .FinalizeHintCursorAnimation

    ld c, a
    ld a, [rHintCursorAnimationRowAccumulator]
    cp c
    jr c, .FinalizeHintCursorAnimation

    xor a
    ld [rHintCursorAnimationRowAccumulator], a
    ld a, c
    cp $02
    jr z, .HintCursorRowNoWrap

    scf
    ld hl, rHintCursorAnimationRowThreshold
    rl [hl]

.HintCursorRowNoWrap:
    ld a, [rPuzzleAndMenuCursorRow]
    inc a
    cp $05
    jr nz, .AdvanceHintCursorAnimationComplete

    xor a

.AdvanceHintCursorAnimationComplete:
    ld [rPuzzleAndMenuCursorRow], a
    call $6c2c

.FinalizeHintCursorAnimation:
    call $7185
    ret


GS06_ResetCellActionStepAndMarioMouthAnimationState::
    xor a
    ld [rGS06_MarioMouthAnimationPatternCursor], a
    ld [rGS06_MarioMouthAnimationCountdown], a
    ld [rCellActionStepDelayTimer], a
    ld [rCellActionStepSequenceCursor], a
    ld [rCellActionStepSequenceState], a
    ret


    ; padding
    ds $5b1, $00

    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f
    db $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f
    db $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f
    db $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f
    db $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af
    db $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf
    db $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf
    db $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df
    db $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef
    db $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff

    db $00, $80, $01, $81, $02, $82, $03, $83, $04, $84, $05, $85, $06, $86, $07, $87
    db $08, $88, $09, $89, $0a, $8a, $0b, $8b, $0c, $8c, $0d, $8d, $0e, $8e, $0f, $8f
    db $10, $90, $11, $91, $12, $92, $13, $93, $14, $94, $15, $95, $16, $96, $17, $97
    db $18, $98, $19, $99, $1a, $9a, $1b, $9b, $1c, $9c, $1d, $9d, $1e, $9e, $1f, $9f
    db $20, $a0, $21, $a1, $22, $a2, $23, $a3, $24, $a4, $25, $a5, $26, $a6, $27, $a7
    db $28, $a8, $29, $a9, $2a, $aa, $2b, $ab, $2c, $ac, $2d, $ad, $2e, $ae, $2f, $af
    db $30, $b0, $31, $b1, $32, $b2, $33, $b3, $34, $b4, $35, $b5, $36, $b6, $37, $b7
    db $38, $b8, $39, $b9, $3a, $ba, $3b, $bb, $3c, $bc, $3d, $bd, $3e, $be, $3f, $bf
    db $40, $c0, $41, $c1, $42, $c2, $43, $c3, $44, $c4, $45, $c5, $46, $c6, $47, $c7
    db $48, $c8, $49, $c9, $4a, $ca, $4b, $cb, $4c, $cc, $4d, $cd, $4e, $ce, $4f, $cf
    db $50, $d0, $51, $d1, $52, $d2, $53, $d3, $54, $d4, $55, $d5, $56, $d6, $57, $d7
    db $58, $d8, $59, $d9, $5a, $da, $5b, $db, $5c, $dc, $5d, $dd, $5e, $de, $5f, $df
    db $60, $e0, $61, $e1, $62, $e2, $63, $e3, $64, $e4, $65, $e5, $66, $e6, $67, $e7
    db $68, $e8, $69, $e9, $6a, $ea, $6b, $eb, $6c, $ec, $6d, $ed, $6e, $ee, $6f, $ef
    db $70, $f0, $71, $f1, $72, $f2, $73, $f3, $74, $f4, $75, $f5, $76, $f6, $77, $f7
    db $78, $f8, $79, $f9, $7a, $fa, $7b, $fb, $7c, $fc, $7d, $fd, $7e, $fe, $7f, $ff

    db $00, $40, $80, $c0, $01, $41, $81, $c1, $02, $42, $82, $c2, $03, $43, $83, $c3
    db $04, $44, $84, $c4, $05, $45, $85, $c5, $06, $46, $86, $c6, $07, $47, $87, $c7
    db $08, $48, $88, $c8, $09, $49, $89, $c9, $0a, $4a, $8a, $ca, $0b, $4b, $8b, $cb
    db $0c, $4c, $8c, $cc, $0d, $4d, $8d, $cd, $0e, $4e, $8e, $ce, $0f, $4f, $8f, $cf
    db $10, $50, $90, $d0, $11, $51, $91, $d1, $12, $52, $92, $d2, $13, $53, $93, $d3
    db $14, $54, $94, $d4, $15, $55, $95, $d5, $16, $56, $96, $d6, $17, $57, $97, $d7
    db $18, $58, $98, $d8, $19, $59, $99, $d9, $1a, $5a, $9a, $da, $1b, $5b, $9b, $db
    db $1c, $5c, $9c, $dc, $1d, $5d, $9d, $dd, $1e, $5e, $9e, $de, $1f, $5f, $9f, $df
    db $20, $60, $a0, $e0, $21, $61, $a1, $e1, $22, $62, $a2, $e2, $23, $63, $a3, $e3
    db $24, $64, $a4, $e4, $25, $65, $a5, $e5, $26, $66, $a6, $e6, $27, $67, $a7, $e7
    db $28, $68, $a8, $e8, $29, $69, $a9, $e9, $2a, $6a, $aa, $ea, $2b, $6b, $ab, $eb
    db $2c, $6c, $ac, $ec, $2d, $6d, $ad, $ed, $2e, $6e, $ae, $ee, $2f, $6f, $af, $ef
    db $30, $70, $b0, $f0, $31, $71, $b1, $f1, $32, $72, $b2, $f2, $33, $73, $b3, $f3
    db $34, $74, $b4, $f4, $35, $75, $b5, $f5, $36, $76, $b6, $f6, $37, $77, $b7, $f7
    db $38, $78, $b8, $f8, $39, $79, $b9, $f9, $3a, $7a, $ba, $fa, $3b, $7b, $bb, $fb
    db $3c, $7c, $bc, $fc, $3d, $7d, $bd, $fd, $3e, $7e, $be, $fe, $3f, $7f, $bf, $ff

    db $00, $20, $40, $60, $80, $a0, $c0, $e0, $01, $21, $41, $61, $81, $a1, $c1, $e1
    db $02, $22, $42, $62, $82, $a2, $c2, $e2, $03, $23, $43, $63, $83, $a3, $c3, $e3
    db $04, $24, $44, $64, $84, $a4, $c4, $e4, $05, $25, $45, $65, $85, $a5, $c5, $e5
    db $06, $26, $46, $66, $86, $a6, $c6, $e6, $07, $27, $47, $67, $87, $a7, $c7, $e7
    db $08, $28, $48, $68, $88, $a8, $c8, $e8, $09, $29, $49, $69, $89, $a9, $c9, $e9
    db $0a, $2a, $4a, $6a, $8a, $aa, $ca, $ea, $0b, $2b, $4b, $6b, $8b, $ab, $cb, $eb
    db $0c, $2c, $4c, $6c, $8c, $ac, $cc, $ec, $0d, $2d, $4d, $6d, $8d, $ad, $cd, $ed
    db $0e, $2e, $4e, $6e, $8e, $ae, $ce, $ee, $0f, $2f, $4f, $6f, $8f, $af, $cf, $ef
    db $10, $30, $50, $70, $90, $b0, $d0, $f0, $11, $31, $51, $71, $91, $b1, $d1, $f1
    db $12, $32, $52, $72, $92, $b2, $d2, $f2, $13, $33, $53, $73, $93, $b3, $d3, $f3
    db $14, $34, $54, $74, $94, $b4, $d4, $f4, $15, $35, $55, $75, $95, $b5, $d5, $f5
    db $16, $36, $56, $76, $96, $b6, $d6, $f6, $17, $37, $57, $77, $97, $b7, $d7, $f7
    db $18, $38, $58, $78, $98, $b8, $d8, $f8, $19, $39, $59, $79, $99, $b9, $d9, $f9
    db $1a, $3a, $5a, $7a, $9a, $ba, $da, $fa, $1b, $3b, $5b, $7b, $9b, $bb, $db, $fb
    db $1c, $3c, $5c, $7c, $9c, $bc, $dc, $fc, $1d, $3d, $5d, $7d, $9d, $bd, $dd, $fd
    db $1e, $3e, $5e, $7e, $9e, $be, $de, $fe, $1f, $3f, $5f, $7f, $9f, $bf, $df, $ff

    db $00, $10, $20, $30, $40, $50, $60, $70, $80, $90, $a0, $b0, $c0, $d0, $e0, $f0
    db $01, $11, $21, $31, $41, $51, $61, $71, $81, $91, $a1, $b1, $c1, $d1, $e1, $f1
    db $02, $12, $22, $32, $42, $52, $62, $72, $82, $92, $a2, $b2, $c2, $d2, $e2, $f2
    db $03, $13, $23, $33, $43, $53, $63, $73, $83, $93, $a3, $b3, $c3, $d3, $e3, $f3
    db $04, $14, $24, $34, $44, $54, $64, $74, $84, $94, $a4, $b4, $c4, $d4, $e4, $f4
    db $05, $15, $25, $35, $45, $55, $65, $75, $85, $95, $a5, $b5, $c5, $d5, $e5, $f5
    db $06, $16, $26, $36, $46, $56, $66, $76, $86, $96, $a6, $b6, $c6, $d6, $e6, $f6
    db $07, $17, $27, $37, $47, $57, $67, $77, $87, $97, $a7, $b7, $c7, $d7, $e7, $f7
    db $08, $18, $28, $38, $48, $58, $68, $78, $88, $98, $a8, $b8, $c8, $d8, $e8, $f8
    db $09, $19, $29, $39, $49, $59, $69, $79, $89, $99, $a9, $b9, $c9, $d9, $e9, $f9
    db $0a, $1a, $2a, $3a, $4a, $5a, $6a, $7a, $8a, $9a, $aa, $ba, $ca, $da, $ea, $fa
    db $0b, $1b, $2b, $3b, $4b, $5b, $6b, $7b, $8b, $9b, $ab, $bb, $cb, $db, $eb, $fb
    db $0c, $1c, $2c, $3c, $4c, $5c, $6c, $7c, $8c, $9c, $ac, $bc, $cc, $dc, $ec, $fc
    db $0d, $1d, $2d, $3d, $4d, $5d, $6d, $7d, $8d, $9d, $ad, $bd, $cd, $dd, $ed, $fd
    db $0e, $1e, $2e, $3e, $4e, $5e, $6e, $7e, $8e, $9e, $ae, $be, $ce, $de, $ee, $fe
    db $0f, $1f, $2f, $3f, $4f, $5f, $6f, $7f, $8f, $9f, $af, $bf, $cf, $df, $ef, $ff

    db $00, $08, $10, $18, $20, $28, $30, $38, $40, $48, $50, $58, $60, $68, $70, $78
    db $80, $88, $90, $98, $a0, $a8, $b0, $b8, $c0, $c8, $d0, $d8, $e0, $e8, $f0, $f8
    db $01, $09, $11, $19, $21, $29, $31, $39, $41, $49, $51, $59, $61, $69, $71, $79
    db $81, $89, $91, $99, $a1, $a9, $b1, $b9, $c1, $c9, $d1, $d9, $e1, $e9, $f1, $f9
    db $02, $0a, $12, $1a, $22, $2a, $32, $3a, $42, $4a, $52, $5a, $62, $6a, $72, $7a
    db $82, $8a, $92, $9a, $a2, $aa, $b2, $ba, $c2, $ca, $d2, $da, $e2, $ea, $f2, $fa
    db $03, $0b, $13, $1b, $23, $2b, $33, $3b, $43, $4b, $53, $5b, $63, $6b, $73, $7b
    db $83, $8b, $93, $9b, $a3, $ab, $b3, $bb, $c3, $cb, $d3, $db, $e3, $eb, $f3, $fb
    db $04, $0c, $14, $1c, $24, $2c, $34, $3c, $44, $4c, $54, $5c, $64, $6c, $74, $7c
    db $84, $8c, $94, $9c, $a4, $ac, $b4, $bc, $c4, $cc, $d4, $dc, $e4, $ec, $f4, $fc
    db $05, $0d, $15, $1d, $25, $2d, $35, $3d, $45, $4d, $55, $5d, $65, $6d, $75, $7d
    db $85, $8d, $95, $9d, $a5, $ad, $b5, $bd, $c5, $cd, $d5, $dd, $e5, $ed, $f5, $fd
    db $06, $0e, $16, $1e, $26, $2e, $36, $3e, $46, $4e, $56, $5e, $66, $6e, $76, $7e
    db $86, $8e, $96, $9e, $a6, $ae, $b6, $be, $c6, $ce, $d6, $de, $e6, $ee, $f6, $fe
    db $07, $0f, $17, $1f, $27, $2f, $37, $3f, $47, $4f, $57, $5f, $67, $6f, $77, $7f
    db $87, $8f, $97, $9f, $a7, $af, $b7, $bf, $c7, $cf, $d7, $df, $e7, $ef, $f7, $ff

    db $00, $04, $08, $0c, $10, $14, $18, $1c, $20, $24, $28, $2c, $30, $34, $38, $3c
    db $40, $44, $48, $4c, $50, $54, $58, $5c, $60, $64, $68, $6c, $70, $74, $78, $7c
    db $80, $84, $88, $8c, $90, $94, $98, $9c, $a0, $a4, $a8, $ac, $b0, $b4, $b8, $bc
    db $c0, $c4, $c8, $cc, $d0, $d4, $d8, $dc, $e0, $e4, $e8, $ec, $f0, $f4, $f8, $fc
    db $01, $05, $09, $0d, $11, $15, $19, $1d, $21, $25, $29, $2d, $31, $35, $39, $3d
    db $41, $45, $49, $4d, $51, $55, $59, $5d, $61, $65, $69, $6d, $71, $75, $79, $7d
    db $81, $85, $89, $8d, $91, $95, $99, $9d, $a1, $a5, $a9, $ad, $b1, $b5, $b9, $bd
    db $c1, $c5, $c9, $cd, $d1, $d5, $d9, $dd, $e1, $e5, $e9, $ed, $f1, $f5, $f9, $fd
    db $02, $06, $0a, $0e, $12, $16, $1a, $1e, $22, $26, $2a, $2e, $32, $36, $3a, $3e
    db $42, $46, $4a, $4e, $52, $56, $5a, $5e, $62, $66, $6a, $6e, $72, $76, $7a, $7e
    db $82, $86, $8a, $8e, $92, $96, $9a, $9e, $a2, $a6, $aa, $ae, $b2, $b6, $ba, $be
    db $c2, $c6, $ca, $ce, $d2, $d6, $da, $de, $e2, $e6, $ea, $ee, $f2, $f6, $fa, $fe
    db $03, $07, $0b, $0f, $13, $17, $1b, $1f, $23, $27, $2b, $2f, $33, $37, $3b, $3f
    db $43, $47, $4b, $4f, $53, $57, $5b, $5f, $63, $67, $6b, $6f, $73, $77, $7b, $7f
    db $83, $87, $8b, $8f, $93, $97, $9b, $9f, $a3, $a7, $ab, $af, $b3, $b7, $bb, $bf
    db $c3, $c7, $cb, $cf, $d3, $d7, $db, $df, $e3, $e7, $eb, $ef, $f3, $f7, $fb, $ff

    db $00, $02, $04, $06, $08, $0a, $0c, $0e, $10, $12, $14, $16, $18, $1a, $1c, $1e
    db $20, $22, $24, $26, $28, $2a, $2c, $2e, $30, $32, $34, $36, $38, $3a, $3c, $3e
    db $40, $42, $44, $46, $48, $4a, $4c, $4e, $50, $52, $54, $56, $58, $5a, $5c, $5e
    db $60, $62, $64, $66, $68, $6a, $6c, $6e, $70, $72, $74, $76, $78, $7a, $7c, $7e
    db $80, $82, $84, $86, $88, $8a, $8c, $8e, $90, $92, $94, $96, $98, $9a, $9c, $9e
    db $a0, $a2, $a4, $a6, $a8, $aa, $ac, $ae, $b0, $b2, $b4, $b6, $b8, $ba, $bc, $be
    db $c0, $c2, $c4, $c6, $c8, $ca, $cc, $ce, $d0, $d2, $d4, $d6, $d8, $da, $dc, $de
    db $e0, $e2, $e4, $e6, $e8, $ea, $ec, $ee, $f0, $f2, $f4, $f6, $f8, $fa, $fc, $fe
    db $01, $03, $05, $07, $09, $0b, $0d, $0f, $11, $13, $15, $17, $19, $1b, $1d, $1f
    db $21, $23, $25, $27, $29, $2b, $2d, $2f, $31, $33, $35, $37, $39, $3b, $3d, $3f
    db $41, $43, $45, $47, $49, $4b, $4d, $4f, $51, $53, $55, $57, $59, $5b, $5d, $5f
    db $61, $63, $65, $67, $69, $6b, $6d, $6f, $71, $73, $75, $77, $79, $7b, $7d, $7f
    db $81, $83, $85, $87, $89, $8b, $8d, $8f, $91, $93, $95, $97, $99, $9b, $9d, $9f
    db $a1, $a3, $a5, $a7, $a9, $ab, $ad, $af, $b1, $b3, $b5, $b7, $b9, $bb, $bd, $bf
    db $c1, $c3, $c5, $c7, $c9, $cb, $cd, $cf, $d1, $d3, $d5, $d7, $d9, $db, $dd, $df
    db $e1, $e3, $e5, $e7, $e9, $eb, $ed, $ef, $f1, $f3, $f5, $f7, $f9, $fb, $fd, $ff
