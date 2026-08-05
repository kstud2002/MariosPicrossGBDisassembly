; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    di                                            ; $0000: $f3
    jp Boot                                       ; $0001: $c3 $00 $01


    ; padding
    ds $4, $00

RST_08::
    ldh a, [rLCDC]                                ; $0008: $f0 $40
    bit 7, a                                      ; $000a: $cb $7f
    ret z                                         ; $000c: $c8

    ld hl, rVBlankSyncFlag                        ; $000d: $21 $39 $c3
    xor a                                         ; $0010: $af
    ld [hl], a                                    ; $0011: $77

.WaitForVBlankSyncFlagLoop:
    halt                                          ; $0012: $76
    ld a, [hl]                                    ; $0013: $7e
    and a                                         ; $0014: $a7
    jr z, .WaitForVBlankSyncFlagLoop              ; $0015: $28 $fb

    ret                                           ; $0017: $c9


RST_18::
    add a                                         ; $0018: $87
    pop hl                                        ; $0019: $e1
    ld e, a                                       ; $001a: $5f
    ld d, $00                                     ; $001b: $16 $00
    add hl, de                                    ; $001d: $19
    ld e, [hl]                                    ; $001e: $5e
    inc hl                                        ; $001f: $23
    ld d, [hl]                                    ; $0020: $56
    ld l, e                                       ; $0021: $6b
    ld h, d                                       ; $0022: $62
    jp hl                                         ; $0023: $e9


    ; padding
    ds $1c, $00

VBlankInterrupt::
    jp VBlankInterruptHandler                     ; $0040: $c3 $b9 $02


    ; padding
    ds $5, $00

LCDCInterrupt::
    jp LCDCInterruptHandler                       ; $0048: $c3 $33 $03


    ; padding
    ds $5, $00

TimerOverflowInterrupt::
    jp TimerOverflowInterruptHandlerStub          ; $0050: $c3 $5b $03


    ; padding
    ds $5, $00

SerialTransferCompleteInterrupt::
    jp SerialTransferCompleteInterruptHandlerStub ; $0058: $c3 $5c $03


    ; padding
    ds $5, $00

JoypadTransitionInterrupt::
    jp JoypadTransitionInterruptHandlerStub       ; $0060: $c3 $5d $03


    ; padding
    ds $9d, $00

Boot::
    nop                                           ; $0100: $00
    jp GameInitEntryPoint                         ; $0101: $c3 $50 $01


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
    ld sp, $fffe                                  ; $0150: $31 $fe $ff
    di                                            ; $0153: $f3
    xor a                                         ; $0154: $af
    ldh [rIF], a                                  ; $0155: $e0 $0f
    ldh a, [rLCDC]                                ; $0157: $f0 $40
    bit 7, a                                      ; $0159: $cb $7f
    jr nz, .EnsureLCDCEnabledAndInitialDelay      ; $015b: $20 $04

    set 7, a                                      ; $015d: $cb $ff
    ldh [rLCDC], a                                ; $015f: $e0 $40

.EnsureLCDCEnabledAndInitialDelay:
    ld bc, $0002                                  ; $0161: $01 $02 $00
    call BusyWaitDelayByBC                        ; $0164: $cd $03 $06

.WaitForScanline91:
    ldh a, [rLY]                                  ; $0167: $f0 $44
    cp $91                                        ; $0169: $fe $91
    jr c, .WaitForScanline91                      ; $016b: $38 $fa

    ld a, $80                                     ; $016d: $3e $80
    ldh [rLCDC], a                                ; $016f: $e0 $40
    xor a                                         ; $0171: $af
    ldh [rBGP], a                                 ; $0172: $e0 $47
    ldh [rOBP0], a                                ; $0174: $e0 $48
    ldh [rOBP1], a                                ; $0176: $e0 $49
    ld bc, $0002                                  ; $0178: $01 $02 $00
    call BusyWaitDelayByBC                        ; $017b: $cd $03 $06
    call DisableLCDAtVBlank                       ; $017e: $cd $83 $04
    ld a, $0a                                     ; $0181: $3e $0a
    ld [$0000], a                                 ; $0183: $ea $00 $00
    ld a, $01                                     ; $0186: $3e $01
    ld [rROMB], a                                 ; $0188: $ea $00 $20
    ld a, $00                                     ; $018b: $3e $00
    ld [$4000], a                                 ; $018d: $ea $00 $40
    ld a, $01                                     ; $0190: $3e $01
    ld [rActiveROMBank], a                        ; $0192: $ea $12 $c3
    ld hl, $c000                                  ; $0195: $21 $00 $c0
    ld bc, $1fff                                  ; $0198: $01 $ff $1f
    call ZeroMemoryBlock                          ; $019b: $cd $d3 $04
    ld sp, rSubtractiveRNGSeedSourceByte          ; $019e: $31 $ff $df
    call InstallHRAMOAMDMAStub                    ; $01a1: $cd $bb $04
    call ClearShadowOAMBuffer                     ; $01a4: $cd $b6 $05
    call FillBGMap0WithTile01                     ; $01a7: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $01aa: $cd $ab $05
    xor a                                         ; $01ad: $af
    ld [rCommandQueueWriteCursor], a              ; $01ae: $ea $15 $c3
    ld [rCommandQueueReadCursor], a               ; $01b1: $ea $16 $c3
    ld [rCommandQueueReservedOrUnused], a         ; $01b4: $ea $17 $c3
    ld [rLCDCInterruptDispatchIndex], a           ; $01b7: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $01ba: $ea $3c $c3
    ld hl, rLCDCShadow                            ; $01bd: $21 $2e $c3
    xor a                                         ; $01c0: $af
    ld [hl+], a                                   ; $01c1: $22
    ld [hl+], a                                   ; $01c2: $22
    ld [hl+], a                                   ; $01c3: $22
    ld [hl+], a                                   ; $01c4: $22
    ld [hl+], a                                   ; $01c5: $22
    ld [hl+], a                                   ; $01c6: $22
    ld a, $a6                                     ; $01c7: $3e $a6
    ld [hl+], a                                   ; $01c9: $22
    ld a, $8f                                     ; $01ca: $3e $8f
    ld [hl+], a                                   ; $01cc: $22
    xor a                                         ; $01cd: $af
    ld [hl+], a                                   ; $01ce: $22
    ld [hl+], a                                   ; $01cf: $22
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $01d0: $ea $50 $c3
    ld a, $01                                     ; $01d3: $3e $01
    ldh [rIE], a                                  ; $01d5: $e0 $ff
    ldh [rIE], a                                  ; $01d7: $e0 $ff
    ei                                            ; $01d9: $fb
    call DetectSuperGameBoyViaMltReqHandshake     ; $01da: $cd $43 $1e
    rl a                                          ; $01dd: $cb $17
    and $01                                       ; $01df: $e6 $01
    ld [rIsSuperGameBoyMode], a                   ; $01e1: $ea $3d $c3
    jr z, .AfterSGBStartupTransferCheck           ; $01e4: $28 $03

    call RunSGBStartupTransferPacketSequence      ; $01e6: $cd $fd $1e

.AfterSGBStartupTransferCheck:
    xor a                                         ; $01e9: $af
    ld [rSGBPacketTransferBusyFlag], a            ; $01ea: $ea $3e $c3
    ld a, $00                                     ; $01ed: $3e $00
    call CallSoundCommandDispatcher               ; $01ef: $cd $b6 $03
    ld a, $40                                     ; $01f2: $3e $40
    ld [rSubtractiveRNGModulus], a                ; $01f4: $ea $69 $cd
    call InitializeSubtractiveRNGState            ; $01f7: $cd $31 $06
    call HandleStartupSaveDataIntegrityCheck      ; $01fa: $cd $da $1a
    ld hl, SaveDataDefaultPerSaveSlotModeBGMSelectionIndices; $01fd: $21 $05 $1c
    ld de, rSaveSlot1EasyPicrossBGMSelectionIndex ; $0200: $11 $69 $a0
    ld bc, $000f                                  ; $0203: $01 $0f $00
    call CopyMemoryBlock                          ; $0206: $cd $db $04
    call RefreshSaveValidationChecksumsAndMirrors ; $0209: $cd $1f $1b
    ld a, $02                                     ; $020c: $3e $02
    ld hl, $45ee                                  ; $020e: $21 $ee $45
    call SwitchBankToAAndJumpToHL                 ; $0211: $cd $d7 $05
    ld sp, $fffe                                  ; $0214: $31 $fe $ff
    ld bc, $003c                                  ; $0217: $01 $3c $00
    call BusyWaitDelayByBC                        ; $021a: $cd $03 $06
    ld a, $05                                     ; $021d: $3e $05
    call CallSoundCommandDispatcher               ; $021f: $cd $b6 $03
    ld c, $00                                     ; $0222: $0e $00
    ld a, $01                                     ; $0224: $3e $01
    call CallSoundCommandDispatcher               ; $0226: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $0229: $cd $99 $03
    ld c, $00                                     ; $022c: $0e $00
    ld a, $01                                     ; $022e: $3e $01
    call CallSoundCommandDispatcher               ; $0230: $cd $b6 $03
    xor a                                         ; $0233: $af
    ld [rBGPShadow], a                            ; $0234: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $0237: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $023a: $ea $31 $c3
    ld bc, $0002                                  ; $023d: $01 $02 $00
    call BusyWaitDelayByBC                        ; $0240: $cd $03 $06
    di                                            ; $0243: $f3
    xor a                                         ; $0244: $af
    ldh [rIF], a                                  ; $0245: $e0 $0f
    ld sp, $fffe                                  ; $0247: $31 $fe $ff
    call DisableLCDAtVBlank                       ; $024a: $cd $83 $04
    ld a, $0a                                     ; $024d: $3e $0a
    ld [$0000], a                                 ; $024f: $ea $00 $00
    ld a, $01                                     ; $0252: $3e $01
    ld [rROMB], a                                 ; $0254: $ea $00 $20
    ld a, $00                                     ; $0257: $3e $00
    ld [$4000], a                                 ; $0259: $ea $00 $40
    ld a, $01                                     ; $025c: $3e $01
    ld [rActiveROMBank], a                        ; $025e: $ea $12 $c3
    ld sp, rSubtractiveRNGSeedSourceByte          ; $0261: $31 $ff $df
    call InstallHRAMOAMDMAStub                    ; $0264: $cd $bb $04
    call ClearShadowOAMBuffer                     ; $0267: $cd $b6 $05
    call FillBGMap0WithTile01                     ; $026a: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $026d: $cd $ab $05
    xor a                                         ; $0270: $af
    ld [rCommandQueueWriteCursor], a              ; $0271: $ea $15 $c3
    ld [rCommandQueueReadCursor], a               ; $0274: $ea $16 $c3
    ld [rCommandQueueReservedOrUnused], a         ; $0277: $ea $17 $c3
    ld [rLCDCInterruptDispatchIndex], a           ; $027a: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $027d: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $0280: $ea $50 $c3
    ld hl, rLCDCShadow                            ; $0283: $21 $2e $c3
    xor a                                         ; $0286: $af
    ld [hl+], a                                   ; $0287: $22
    ld [hl+], a                                   ; $0288: $22
    ld [hl+], a                                   ; $0289: $22
    ld [hl+], a                                   ; $028a: $22
    ld [hl+], a                                   ; $028b: $22
    ld [hl+], a                                   ; $028c: $22
    ld a, $a6                                     ; $028d: $3e $a6
    ld [hl+], a                                   ; $028f: $22
    ld a, $8f                                     ; $0290: $3e $8f
    ld [hl+], a                                   ; $0292: $22
    xor a                                         ; $0293: $af
    ld [hl+], a                                   ; $0294: $22
    ld [hl+], a                                   ; $0295: $22
    ld a, $01                                     ; $0296: $3e $01
    ldh [rIE], a                                  ; $0298: $e0 $ff
    ldh [rIE], a                                  ; $029a: $e0 $ff
    ei                                            ; $029c: $fb
    xor a                                         ; $029d: $af
    ld [rSGBPacketTransferBusyFlag], a            ; $029e: $ea $3e $c3
    ld a, $00                                     ; $02a1: $3e $00
    call CallSoundCommandDispatcher               ; $02a3: $cd $b6 $03
    ld a, $40                                     ; $02a6: $3e $40
    ld [rSubtractiveRNGModulus], a                ; $02a8: $ea $69 $cd
    call InitializeSubtractiveRNGState            ; $02ab: $cd $31 $06
    call HandleStartupSaveDataIntegrityCheck      ; $02ae: $cd $da $1a
    ld a, $02                                     ; $02b1: $3e $02
    ld hl, $45ee                                  ; $02b3: $21 $ee $45
    call SwitchBankToAAndJumpToHL                 ; $02b6: $cd $d7 $05

VBlankInterruptHandler::
    push af                                       ; $02b9: $f5
    push bc                                       ; $02ba: $c5
    push de                                       ; $02bb: $d5
    push hl                                       ; $02bc: $e5
    call rOAMDMAHRAMStubEntry                     ; $02bd: $cd $80 $ff
    call ProcessPendingCommandQueueEntries        ; $02c0: $cd $67 $07
    ldh a, [rLY]                                  ; $02c3: $f0 $44
    ld a, [rVBlankLCDCBit4ForceFlag]              ; $02c5: $fa $3c $c3
    and a                                         ; $02c8: $a7
    jr nz, .ApplyLCDCShadowWithBit4Forced         ; $02c9: $20 $07

    ld a, [rLCDCShadow]                           ; $02cb: $fa $2e $c3
    ldh [rLCDC], a                                ; $02ce: $e0 $40
    jr .AfterLCDCUpdate                           ; $02d0: $18 $07

.ApplyLCDCShadowWithBit4Forced:
    ld a, [rLCDCShadow]                           ; $02d2: $fa $2e $c3
    set 4, a                                      ; $02d5: $cb $e7
    ldh [rLCDC], a                                ; $02d7: $e0 $40

.AfterLCDCUpdate:
    ld a, [rSGBPacketTransferBusyFlag]            ; $02d9: $fa $3e $c3
    and a                                         ; $02dc: $a7
    jr nz, .CheckAllFaceButtonsHeldCombo          ; $02dd: $20 $21

    ld hl, rBGPShadow                             ; $02df: $21 $2f $c3
    ld a, [hl+]                                   ; $02e2: $2a
    ldh [rBGP], a                                 ; $02e3: $e0 $47
    ld a, [hl+]                                   ; $02e5: $2a
    ldh [rOBP0], a                                ; $02e6: $e0 $48
    ld a, [hl+]                                   ; $02e8: $2a
    ldh [rOBP1], a                                ; $02e9: $e0 $49
    ld a, [hl+]                                   ; $02eb: $2a
    ldh [rSCX], a                                 ; $02ec: $e0 $43
    ld a, [hl+]                                   ; $02ee: $2a
    ldh [rSCY], a                                 ; $02ef: $e0 $42
    ld a, [hl+]                                   ; $02f1: $2a
    ldh [rWX], a                                  ; $02f2: $e0 $4b
    ld a, [hl+]                                   ; $02f4: $2a
    ldh [rWY], a                                  ; $02f5: $e0 $4a
    ld a, [hl+]                                   ; $02f7: $2a
    ldh [rLYC], a                                 ; $02f8: $e0 $45
    ld a, [hl+]                                   ; $02fa: $2a
    ldh [rSTAT], a                                ; $02fb: $e0 $41
    call PollJoypadAndUpdateInputState            ; $02fd: $cd $ce $06

.CheckAllFaceButtonsHeldCombo:
    ld a, [rInputButtonsHeld]                     ; $0300: $fa $1a $c3
    cp $0f                                        ; $0303: $fe $0f
    jr nz, .MaybeRunSoundEngineUpdate             ; $0305: $20 $0c

    ld a, [rInputButtonsPressed]                  ; $0307: $fa $1e $c3
    and $0f                                       ; $030a: $e6 $0f
    jr z, .MaybeRunSoundEngineUpdate              ; $030c: $28 $05

    ld hl, $0214                                  ; $030e: $21 $14 $02
    push hl                                       ; $0311: $e5
    reti                                          ; $0312: $d9


.MaybeRunSoundEngineUpdate:
    ld a, [rUseLCDCInterruptForSoundEngineUpdateFlag]; $0313: $fa $50 $c3
    and a                                         ; $0316: $a7
    jr nz, .FinalizeAndExit                       ; $0317: $20 $09

    ld a, [rSGBPacketTransferBusyFlag]            ; $0319: $fa $3e $c3
    and a                                         ; $031c: $a7
    jr nz, .FinalizeAndExit                       ; $031d: $20 $03

    call CallSoundEngineUpdateRoutine             ; $031f: $cd $ee $03

.FinalizeAndExit:
    ld a, [rVBlankFrameCounter]                   ; $0322: $fa $3a $c3
    inc a                                         ; $0325: $3c
    ld [rVBlankFrameCounter], a                   ; $0326: $ea $3a $c3
    ld a, $01                                     ; $0329: $3e $01
    ld [rVBlankSyncFlag], a                       ; $032b: $ea $39 $c3
    pop hl                                        ; $032e: $e1
    pop de                                        ; $032f: $d1
    pop bc                                        ; $0330: $c1
    pop af                                        ; $0331: $f1
    reti                                          ; $0332: $d9


LCDCInterruptHandler::
    push af                                       ; $0333: $f5
    push bc                                       ; $0334: $c5
    push de                                       ; $0335: $d5
    push hl                                       ; $0336: $e5
    ld hl, LCDCInterruptHandlerReturnAndReti      ; $0337: $21 $4d $03
    push hl                                       ; $033a: $e5
    ld a, [rLCDCInterruptDispatchIndex]           ; $033b: $fa $38 $c3
    sla a                                         ; $033e: $cb $27
    ld c, a                                       ; $0340: $4f
    ld b, $00                                     ; $0341: $06 $00
    ld hl, LCDCInterruptDispatchTable             ; $0343: $21 $52 $03
    add hl, bc                                    ; $0346: $09
    ld c, [hl]                                    ; $0347: $4e
    inc hl                                        ; $0348: $23
    ld b, [hl]                                    ; $0349: $46
    push bc                                       ; $034a: $c5
    pop hl                                        ; $034b: $e1
    jp hl                                         ; $034c: $e9


LCDCInterruptHandlerReturnAndReti::
    pop hl                                        ; $034d: $e1
    pop de                                        ; $034e: $d1
    pop bc                                        ; $034f: $c1
    pop af                                        ; $0350: $f1
    reti                                          ; $0351: $d9


LCDCInterruptDispatchTable::
    db $5a, $03
    db $6f, $08
    db $9e, $08
    db $5a, $03

LCDCInterruptDispatchNoOpReturn::
    ret                                           ; $035a: $c9


TimerOverflowInterruptHandlerStub::
    reti                                          ; $035b: $d9


SerialTransferCompleteInterruptHandlerStub::
    reti                                          ; $035c: $d9


JoypadTransitionInterruptHandlerStub::
    reti                                          ; $035d: $d9


SETCHARMAP ascii

HiddenProgrammerCredits::
    db "NoriakiTeramotoE"

SaveValidationMagicBytes::
    db $5f, $02, $03, $0f, $00

GameStateDispatcher::
    ld e, a                                       ; $0373: $5f
    add a                                         ; $0374: $87
    add e                                         ; $0375: $83
    pop hl                                        ; $0376: $e1
    ld e, a                                       ; $0377: $5f
    ld d, $00                                     ; $0378: $16 $00
    add hl, de                                    ; $037a: $19
    ld e, [hl]                                    ; $037b: $5e
    inc hl                                        ; $037c: $23
    ld d, [hl]                                    ; $037d: $56
    inc hl                                        ; $037e: $23
    ld a, [rActiveROMBank]                        ; $037f: $fa $12 $c3
    push af                                       ; $0382: $f5
    ld a, [hl]                                    ; $0383: $7e
    ld [rActiveROMBank], a                        ; $0384: $ea $12 $c3
    ld [rROMB], a                                 ; $0387: $ea $00 $20
    ld l, e                                       ; $038a: $6b
    ld h, d                                       ; $038b: $62
    ld de, $0391                                  ; $038c: $11 $91 $03
    push de                                       ; $038f: $d5
    jp hl                                         ; $0390: $e9


    pop af                                        ; $0391: $f1
    ld [rActiveROMBank], a                        ; $0392: $ea $12 $c3
    ld [rROMB], a                                 ; $0395: $ea $00 $20
    ret                                           ; $0398: $c9


WaitForScanline40OrDelay::
    push hl                                       ; $0399: $e5
    ldh a, [rLCDC]                                ; $039a: $f0 $40
    bit 7, a                                      ; $039c: $cb $7f
    jr nz, .SyncAndWaitForScanline40              ; $039e: $20 $0d

    ld de, $06d6                                  ; $03a0: $11 $d6 $06

.DelayLoop_LCDOff:
    nop                                           ; $03a3: $00
    nop                                           ; $03a4: $00
    nop                                           ; $03a5: $00
    dec de                                        ; $03a6: $1b
    ld a, d                                       ; $03a7: $7a
    or e                                          ; $03a8: $b3
    jr nz, .DelayLoop_LCDOff                      ; $03a9: $20 $f8

    pop hl                                        ; $03ab: $e1
    ret                                           ; $03ac: $c9


.SyncAndWaitForScanline40:
    rst RST_08                                    ; $03ad: $cf

.WaitForScanline40Loop:
    ldh a, [rLY]                                  ; $03ae: $f0 $44
    cp $40                                        ; $03b0: $fe $40
    jr c, .WaitForScanline40Loop                  ; $03b2: $38 $fa

    pop hl                                        ; $03b4: $e1
    ret                                           ; $03b5: $c9


CallSoundCommandDispatcher::
    push af                                       ; $03b6: $f5
    push bc                                       ; $03b7: $c5
    push de                                       ; $03b8: $d5
    push hl                                       ; $03b9: $e5
    ld l, a                                       ; $03ba: $6f
    ldh a, [rIE]                                  ; $03bb: $f0 $ff
    push af                                       ; $03bd: $f5
    res 0, a                                      ; $03be: $cb $87
    ldh [rIE], a                                  ; $03c0: $e0 $ff
    ld a, [rActiveROMBank]                        ; $03c2: $fa $12 $c3
    push af                                       ; $03c5: $f5
    ld a, $0f                                     ; $03c6: $3e $0f
    ld [rActiveROMBank], a                        ; $03c8: $ea $12 $c3
    ld [rROMB], a                                 ; $03cb: $ea $00 $20

.DispatchSoundCommandLoop:
    push bc                                       ; $03ce: $c5
    push hl                                       ; $03cf: $e5
    ld a, l                                       ; $03d0: $7d
    call $4000                                    ; $03d1: $cd $00 $40
    pop hl                                        ; $03d4: $e1
    pop bc                                        ; $03d5: $c1
    jr nc, .RestoreBankAndInterruptEnableAndReturn; $03d6: $30 $07

    nop                                           ; $03d8: $00
    nop                                           ; $03d9: $00
    nop                                           ; $03da: $00
    nop                                           ; $03db: $00
    nop                                           ; $03dc: $00
    jr .DispatchSoundCommandLoop                  ; $03dd: $18 $ef

.RestoreBankAndInterruptEnableAndReturn:
    pop af                                        ; $03df: $f1
    ld [rActiveROMBank], a                        ; $03e0: $ea $12 $c3
    ld [rROMB], a                                 ; $03e3: $ea $00 $20
    pop af                                        ; $03e6: $f1
    ldh [rIE], a                                  ; $03e7: $e0 $ff
    pop hl                                        ; $03e9: $e1
    pop de                                        ; $03ea: $d1
    pop bc                                        ; $03eb: $c1
    pop af                                        ; $03ec: $f1
    ret                                           ; $03ed: $c9


CallSoundEngineUpdateRoutine::
    push af                                       ; $03ee: $f5
    push bc                                       ; $03ef: $c5
    push de                                       ; $03f0: $d5
    push hl                                       ; $03f1: $e5
    ld a, [rActiveROMBank]                        ; $03f2: $fa $12 $c3
    push af                                       ; $03f5: $f5
    ld a, $0f                                     ; $03f6: $3e $0f
    ld [rActiveROMBank], a                        ; $03f8: $ea $12 $c3
    ld [rROMB], a                                 ; $03fb: $ea $00 $20
    call $4003                                    ; $03fe: $cd $03 $40
    pop af                                        ; $0401: $f1
    ld [rActiveROMBank], a                        ; $0402: $ea $12 $c3
    ld [rROMB], a                                 ; $0405: $ea $00 $20
    pop hl                                        ; $0408: $e1
    pop de                                        ; $0409: $d1
    pop bc                                        ; $040a: $c1
    pop af                                        ; $040b: $f1
    ret                                           ; $040c: $c9


PlayScreenTransitionFadeIn::
    ld a, [rIsSuperGameBoyMode]                   ; $040d: $fa $3d $c3
    and a                                         ; $0410: $a7
    jp nz, PlayScreenTransitionFadeIn_SGB         ; $0411: $c2 $c8 $1f

    ld a, [rActiveROMBank]                        ; $0414: $fa $12 $c3
    push af                                       ; $0417: $f5
    ld a, b                                       ; $0418: $78
    ld [rActiveROMBank], a                        ; $0419: $ea $12 $c3
    ld [rROMB], a                                 ; $041c: $ea $00 $20
    ld b, $04                                     ; $041f: $06 $04

.ApplyFadeStepLoop:
    ld a, [hl+]                                   ; $0421: $2a
    ld [rBGPShadow], a                            ; $0422: $ea $2f $c3
    ld a, [hl+]                                   ; $0425: $2a
    ld [rOBP0Shadow], a                           ; $0426: $ea $30 $c3
    ld a, [hl+]                                   ; $0429: $2a
    ld [rOBP1Shadow], a                           ; $042a: $ea $31 $c3
    push bc                                       ; $042d: $c5
    push hl                                       ; $042e: $e5
    ld bc, $0004                                  ; $042f: $01 $04 $00
    call BusyWaitDelayByBC                        ; $0432: $cd $03 $06
    pop hl                                        ; $0435: $e1
    pop bc                                        ; $0436: $c1
    dec b                                         ; $0437: $05
    jr nz, .ApplyFadeStepLoop                     ; $0438: $20 $e7

    ld [rStatePhaseTimer], a                      ; $043a: $ea $3c $d6
    ld [rSharedAnimationFrameState], a            ; $043d: $ea $3d $d6
    ld [rSharedUIAnimationColumnAccumulator], a   ; $0440: $ea $3e $d6
    ld [rHintCursorAnimationRowAccumulator], a    ; $0443: $ea $3f $d6
    pop af                                        ; $0446: $f1
    ld [rActiveROMBank], a                        ; $0447: $ea $12 $c3
    ld [rROMB], a                                 ; $044a: $ea $00 $20
    ret                                           ; $044d: $c9


PlayScreenTransitionFadeOut::
    ld a, [rIsSuperGameBoyMode]                   ; $044e: $fa $3d $c3
    and a                                         ; $0451: $a7
    jp nz, PlayScreenTransitionFadeOut_SGB        ; $0452: $c2 $4a $20

    ld a, [rActiveROMBank]                        ; $0455: $fa $12 $c3
    push af                                       ; $0458: $f5
    ld a, b                                       ; $0459: $78
    ld [rActiveROMBank], a                        ; $045a: $ea $12 $c3
    ld [rROMB], a                                 ; $045d: $ea $00 $20
    ld b, $04                                     ; $0460: $06 $04

.ApplyFadeStepLoop:
    ld a, [hl-]                                   ; $0462: $3a
    ld [rOBP1Shadow], a                           ; $0463: $ea $31 $c3
    ld a, [hl-]                                   ; $0466: $3a
    ld [rOBP0Shadow], a                           ; $0467: $ea $30 $c3
    ld a, [hl-]                                   ; $046a: $3a
    ld [rBGPShadow], a                            ; $046b: $ea $2f $c3
    push bc                                       ; $046e: $c5
    push hl                                       ; $046f: $e5
    ld bc, $0004                                  ; $0470: $01 $04 $00
    call BusyWaitDelayByBC                        ; $0473: $cd $03 $06
    pop hl                                        ; $0476: $e1
    pop bc                                        ; $0477: $c1
    dec b                                         ; $0478: $05
    jr nz, .ApplyFadeStepLoop                     ; $0479: $20 $e7

    pop af                                        ; $047b: $f1
    ld [rActiveROMBank], a                        ; $047c: $ea $12 $c3
    ld [rROMB], a                                 ; $047f: $ea $00 $20
    ret                                           ; $0482: $c9


DisableLCDAtVBlank::
    ldh a, [rLCDC]                                ; $0483: $f0 $40
    bit 7, a                                      ; $0485: $cb $7f
    ret z                                         ; $0487: $c8

    ldh a, [rIE]                                  ; $0488: $f0 $ff
    push af                                       ; $048a: $f5
    xor a                                         ; $048b: $af
    ldh [rIE], a                                  ; $048c: $e0 $ff

.WaitForVBlankLine91:
    ldh a, [rLY]                                  ; $048e: $f0 $44
    cp $91                                        ; $0490: $fe $91
    jr nz, .WaitForVBlankLine91                   ; $0492: $20 $fa

    ld a, [rLCDCShadow]                           ; $0494: $fa $2e $c3
    res 7, a                                      ; $0497: $cb $bf
    ldh [rLCDC], a                                ; $0499: $e0 $40
    ld [rLCDCShadow], a                           ; $049b: $ea $2e $c3
    pop af                                        ; $049e: $f1
    ldh [rIE], a                                  ; $049f: $e0 $ff
    ret                                           ; $04a1: $c9


EnableLCDFromShadow::
    ld a, [rLCDCShadow]                           ; $04a2: $fa $2e $c3
    set 7, a                                      ; $04a5: $cb $ff
    ldh [rLCDC], a                                ; $04a7: $e0 $40
    ld [rLCDCShadow], a                           ; $04a9: $ea $2e $c3
    ret                                           ; $04ac: $c9


    ldh a, [rIE]                                  ; $04ad: $f0 $ff
    res 0, a                                      ; $04af: $cb $87
    ldh [rIE], a                                  ; $04b1: $e0 $ff
    ret                                           ; $04b3: $c9


    ldh a, [rIE]                                  ; $04b4: $f0 $ff
    set 0, a                                      ; $04b6: $cb $c7
    ldh [rIE], a                                  ; $04b8: $e0 $ff
    ret                                           ; $04ba: $c9


InstallHRAMOAMDMAStub::
    ld c, $80                                     ; $04bb: $0e $80
    ld b, $0a                                     ; $04bd: $06 $0a
    ld hl, OAMDMAHRAMStubTemplate                 ; $04bf: $21 $c9 $04

.CopyHRAMOAMDMAStubByteLoop:
    ld a, [hl+]                                   ; $04c2: $2a
    ldh [c], a                                    ; $04c3: $e2
    inc c                                         ; $04c4: $0c
    dec b                                         ; $04c5: $05
    jr nz, .CopyHRAMOAMDMAStubByteLoop            ; $04c6: $20 $fa

    ret                                           ; $04c8: $c9


OAMDMAHRAMStubTemplate::
    ld a, $c0                                     ; $04c9: $3e $c0
    ldh [rDMA], a                                 ; $04cb: $e0 $46
    ld a, $28                                     ; $04cd: $3e $28

.WaitForDMATransferLoop:
    dec a                                         ; $04cf: $3d
    jr nz, .WaitForDMATransferLoop                ; $04d0: $20 $fd

    ret                                           ; $04d2: $c9


ZeroMemoryBlock::
    xor a                                         ; $04d3: $af
    ld [hl+], a                                   ; $04d4: $22
    dec bc                                        ; $04d5: $0b
    ld a, c                                       ; $04d6: $79
    or b                                          ; $04d7: $b0
    jr nz, ZeroMemoryBlock                        ; $04d8: $20 $f9

    ret                                           ; $04da: $c9


CopyMemoryBlock::
    ld a, [hl+]                                   ; $04db: $2a
    ld [de], a                                    ; $04dc: $12
    inc de                                        ; $04dd: $13
    dec bc                                        ; $04de: $0b
    ld a, c                                       ; $04df: $79
    or b                                          ; $04e0: $b0
    jr nz, CopyMemoryBlock                        ; $04e1: $20 $f8

    ret                                           ; $04e3: $c9


BankedTileCopy::
    ld [rRequestedROMBank], a                     ; $04e4: $ea $14 $c3
    ld a, [rActiveROMBank]                        ; $04e7: $fa $12 $c3
    push af                                       ; $04ea: $f5
    ld a, [rRequestedROMBank]                     ; $04eb: $fa $14 $c3
    ld [rActiveROMBank], a                        ; $04ee: $ea $12 $c3
    ld [rROMB], a                                 ; $04f1: $ea $00 $20

.CopyLoop:
    ld a, [hl+]                                   ; $04f4: $2a
    ld [de], a                                    ; $04f5: $12
    inc de                                        ; $04f6: $13
    dec bc                                        ; $04f7: $0b
    ld a, c                                       ; $04f8: $79
    or b                                          ; $04f9: $b0
    jr nz, .CopyLoop                              ; $04fa: $20 $f8

    pop af                                        ; $04fc: $f1
    ld [rActiveROMBank], a                        ; $04fd: $ea $12 $c3
    ld [rROMB], a                                 ; $0500: $ea $00 $20
    ret                                           ; $0503: $c9


BankedTransparentTileCopy::
    ld [rRequestedROMBank], a                     ; $0504: $ea $14 $c3
    ld a, [rActiveROMBank]                        ; $0507: $fa $12 $c3
    push af                                       ; $050a: $f5
    ld a, [rRequestedROMBank]                     ; $050b: $fa $14 $c3
    ld [rActiveROMBank], a                        ; $050e: $ea $12 $c3
    ld [rROMB], a                                 ; $0511: $ea $00 $20
    srl b                                         ; $0514: $cb $38
    rr c                                          ; $0516: $cb $19

.MaskAndCopyLoop:
    push bc                                       ; $0518: $c5
    ld a, [hl+]                                   ; $0519: $2a
    ld b, a                                       ; $051a: $47
    or [hl]                                       ; $051b: $b6
    xor $ff                                       ; $051c: $ee $ff
    ld c, a                                       ; $051e: $4f
    ld a, [de]                                    ; $051f: $1a
    and c                                         ; $0520: $a1
    or b                                          ; $0521: $b0
    ld [de], a                                    ; $0522: $12
    inc de                                        ; $0523: $13
    ld a, [de]                                    ; $0524: $1a
    and c                                         ; $0525: $a1
    or [hl]                                       ; $0526: $b6
    ld [de], a                                    ; $0527: $12
    inc de                                        ; $0528: $13
    inc hl                                        ; $0529: $23
    pop bc                                        ; $052a: $c1
    dec bc                                        ; $052b: $0b
    ld a, c                                       ; $052c: $79
    or b                                          ; $052d: $b0
    jr nz, .MaskAndCopyLoop                       ; $052e: $20 $e8

    pop af                                        ; $0530: $f1
    ld [rActiveROMBank], a                        ; $0531: $ea $12 $c3
    ld [rROMB], a                                 ; $0534: $ea $00 $20
    ret                                           ; $0537: $c9


BankedTileCopyVRAMSafe::
    ld [rRequestedROMBank], a                     ; $0538: $ea $14 $c3
    ld a, [rActiveROMBank]                        ; $053b: $fa $12 $c3
    push af                                       ; $053e: $f5
    ld a, [rRequestedROMBank]                     ; $053f: $fa $14 $c3
    ld [rActiveROMBank], a                        ; $0542: $ea $12 $c3
    ld [rROMB], a                                 ; $0545: $ea $00 $20
    ldh a, [rIE]                                  ; $0548: $f0 $ff
    push af                                       ; $054a: $f5

.WaitForLYBelow80_PreTransfer:
    ldh a, [rLY]                                  ; $054b: $f0 $44
    cp $80                                        ; $054d: $fe $80
    jr nc, .WaitForLYBelow80_PreTransfer          ; $054f: $30 $fa

    ldh a, [rIE]                                  ; $0551: $f0 $ff
    res 0, a                                      ; $0553: $cb $87
    ldh [rIE], a                                  ; $0555: $e0 $ff

.WaitForLYAtOrAbove90:
    ldh a, [rLY]                                  ; $0557: $f0 $44
    cp $90                                        ; $0559: $fe $90
    jr c, .WaitForLYAtOrAbove90                   ; $055b: $38 $fa

    ld a, [rLCDCShadow]                           ; $055d: $fa $2e $c3
    set 4, a                                      ; $0560: $cb $e7
    ldh [rLCDC], a                                ; $0562: $e0 $40
    ld a, $20                                     ; $0564: $3e $20

.CopyChunkOf20BytesOrUntilDone:
    push af                                       ; $0566: $f5
    ld a, [hl+]                                   ; $0567: $2a
    ld [de], a                                    ; $0568: $12
    inc de                                        ; $0569: $13
    dec bc                                        ; $056a: $0b
    ld a, b                                       ; $056b: $78
    or c                                          ; $056c: $b1
    jr z, .PostCopySyncAndFinalizeTransfer        ; $056d: $28 $0c

    pop af                                        ; $056f: $f1
    dec a                                         ; $0570: $3d
    jr nz, .CopyChunkOf20BytesOrUntilDone         ; $0571: $20 $f3

.WaitForLYBelow90BeforeNextChunk:
    ldh a, [rLY]                                  ; $0573: $f0 $44
    cp $90                                        ; $0575: $fe $90
    jr c, .WaitForLYAtOrAbove90                   ; $0577: $38 $de

    jr .WaitForLYBelow90BeforeNextChunk           ; $0579: $18 $f8

.PostCopySyncAndFinalizeTransfer:
    pop af                                        ; $057b: $f1
    ldh a, [rLY]                                  ; $057c: $f0 $44
    cp $80                                        ; $057e: $fe $80
    jr c, .RestoreIEAndBankAndReturn              ; $0580: $38 $13

.WaitForLYAtOrAbove90_PostCopy:
    ldh a, [rLY]                                  ; $0582: $f0 $44
    cp $90                                        ; $0584: $fe $90
    jr c, .WaitForLYAtOrAbove90_PostCopy          ; $0586: $38 $fa

    ld a, [rLCDCShadow]                           ; $0588: $fa $2e $c3
    set 4, a                                      ; $058b: $cb $e7
    ldh [rLCDC], a                                ; $058d: $e0 $40

.WaitForLYBelow80_PostCopy:
    ldh a, [rLY]                                  ; $058f: $f0 $44
    cp $80                                        ; $0591: $fe $80
    jr nc, .WaitForLYBelow80_PostCopy             ; $0593: $30 $fa

.RestoreIEAndBankAndReturn:
    pop af                                        ; $0595: $f1
    ldh [rIE], a                                  ; $0596: $e0 $ff
    pop af                                        ; $0598: $f1
    ld [rActiveROMBank], a                        ; $0599: $ea $12 $c3
    ld [rROMB], a                                 ; $059c: $ea $00 $20
    ret                                           ; $059f: $c9


FillBGMap0WithTile01::
    ld a, $01                                     ; $05a0: $3e $01
    ld hl, $9800                                  ; $05a2: $21 $00 $98

.FillBGMap0WithTile01Loop:
    ld [hl+], a                                   ; $05a5: $22
    bit 2, h                                      ; $05a6: $cb $54
    jr z, .FillBGMap0WithTile01Loop               ; $05a8: $28 $fb

    ret                                           ; $05aa: $c9


FillBGMap1WithTile01::
    ld a, $01                                     ; $05ab: $3e $01
    ld hl, $9c00                                  ; $05ad: $21 $00 $9c

.FillBGMap1WithTile01Loop:
    ld [hl+], a                                   ; $05b0: $22
    bit 5, h                                      ; $05b1: $cb $6c
    jr z, .FillBGMap1WithTile01Loop               ; $05b3: $28 $fb

    ret                                           ; $05b5: $c9


ClearShadowOAMBuffer::
    ld a, $f0                                     ; $05b6: $3e $f0
    ld hl, $c000                                  ; $05b8: $21 $00 $c0

.FillWithF0Loop:
    ld [hl+], a                                   ; $05bb: $22
    bit 0, h                                      ; $05bc: $cb $44
    jr z, .FillWithF0Loop                         ; $05be: $28 $fb

    xor a                                         ; $05c0: $af
    ld [rShadowOAMWriteCursor], a                 ; $05c1: $ea $11 $c3
    ret                                           ; $05c4: $c9


ClearShadowOAMBufferFromCursor::
    ld a, [rShadowOAMWriteCursor]                 ; $05c5: $fa $11 $c3
    ld l, a                                       ; $05c8: $6f
    ld h, $c0                                     ; $05c9: $26 $c0
    ld a, $f0                                     ; $05cb: $3e $f0

.FillWithF0Loop:
    ld [hl+], a                                   ; $05cd: $22
    bit 0, h                                      ; $05ce: $cb $44
    jr z, .FillWithF0Loop                         ; $05d0: $28 $fb

    xor a                                         ; $05d2: $af
    ld [rShadowOAMWriteCursor], a                 ; $05d3: $ea $11 $c3
    ret                                           ; $05d6: $c9


SwitchBankToAAndJumpToHL::
    ld [rActiveROMBank], a                        ; $05d7: $ea $12 $c3
    ld [rROMB], a                                 ; $05da: $ea $00 $20
    jp hl                                         ; $05dd: $e9


SwitchBankToBAndJumpToHL::
    ld a, [rActiveROMBank]                        ; $05de: $fa $12 $c3
    push af                                       ; $05e1: $f5
    ld a, b                                       ; $05e2: $78
    ld [rActiveROMBank], a                        ; $05e3: $ea $12 $c3
    ld [rROMB], a                                 ; $05e6: $ea $00 $20
    jp hl                                         ; $05e9: $e9


ReturnFromBankedJumpRestoreBank::
    push af                                       ; $05ea: $f5
    push hl                                       ; $05eb: $e5
    ld hl, sp+$05                                 ; $05ec: $f8 $05
    ld a, [hl]                                    ; $05ee: $7e
    ld [rActiveROMBank], a                        ; $05ef: $ea $12 $c3
    ld [rROMB], a                                 ; $05f2: $ea $00 $20
    pop hl                                        ; $05f5: $e1
    pop af                                        ; $05f6: $f1
    inc sp                                        ; $05f7: $33
    inc sp                                        ; $05f8: $33
    ret                                           ; $05f9: $c9


DelayFramesByBC::
    push bc                                       ; $05fa: $c5
    rst RST_08                                    ; $05fb: $cf
    pop bc                                        ; $05fc: $c1
    dec bc                                        ; $05fd: $0b
    ld a, c                                       ; $05fe: $79
    or b                                          ; $05ff: $b0
    jr nz, DelayFramesByBC                        ; $0600: $20 $f8

    ret                                           ; $0602: $c9


BusyWaitDelayByBC::
    ld de, $06d6                                  ; $0603: $11 $d6 $06

.InnerDelayLoop:
    nop                                           ; $0606: $00
    nop                                           ; $0607: $00
    nop                                           ; $0608: $00
    dec de                                        ; $0609: $1b
    ld a, d                                       ; $060a: $7a
    or e                                          ; $060b: $b3
    jr nz, .InnerDelayLoop                        ; $060c: $20 $f8

    dec bc                                        ; $060e: $0b
    ld a, b                                       ; $060f: $78
    or c                                          ; $0610: $b1
    jr nz, BusyWaitDelayByBC                      ; $0611: $20 $f0

    ret                                           ; $0613: $c9


GetSubtractiveRNGStateByte::
    push hl                                       ; $0614: $e5
    ld a, [rSubtractiveRNGStateCursor]            ; $0615: $fa $6a $cd
    ld c, a                                       ; $0618: $4f
    ld b, $00                                     ; $0619: $06 $00
    inc a                                         ; $061b: $3c
    cp $37                                        ; $061c: $fe $37
    jr nz, .StoreRNGCursorAndReadStateByte        ; $061e: $20 $07

    call AdvanceSubtractiveRNGState               ; $0620: $cd $a7 $06
    xor a                                         ; $0623: $af
    ld bc, $0000                                  ; $0624: $01 $00 $00

.StoreRNGCursorAndReadStateByte:
    ld [rSubtractiveRNGStateCursor], a            ; $0627: $ea $6a $cd
    ld hl, rSubtractiveRNGStateTableStart         ; $062a: $21 $6b $cd
    add hl, bc                                    ; $062d: $09
    ld a, [hl]                                    ; $062e: $7e
    pop hl                                        ; $062f: $e1
    ret                                           ; $0630: $c9


InitializeSubtractiveRNGState::
    ld a, [rSubtractiveRNGModulus]                ; $0631: $fa $69 $cd
    ld d, a                                       ; $0634: $57
    ld a, [rSubtractiveRNGSeedSourceByte]         ; $0635: $fa $ff $df

.ReduceSeedModuloRangeLoop:
    cp d                                          ; $0638: $ba
    jr c, .InitializeRNGStateFromReducedSeed      ; $0639: $38 $03

    sub d                                         ; $063b: $92
    jr .ReduceSeedModuloRangeLoop                 ; $063c: $18 $fa

.InitializeRNGStateFromReducedSeed:
    ld [rSubtractiveRNGStateSeed], a              ; $063e: $ea $68 $cd
    ld [rSubtractiveRNGStateTableEnd], a          ; $0641: $ea $a1 $cd
    ld e, $01                                     ; $0644: $1e $01
    ld hl, SubtractiveRNGStateInitOffsetTable     ; $0646: $21 $71 $06
    ld a, $36                                     ; $0649: $3e $36

.InitializeRNGStateEntryLoop:
    push af                                       ; $064b: $f5
    ld c, [hl]                                    ; $064c: $4e
    inc hl                                        ; $064d: $23
    ld b, $00                                     ; $064e: $06 $00
    push hl                                       ; $0650: $e5
    ld hl, rSubtractiveRNGStateTableStart         ; $0651: $21 $6b $cd
    add hl, bc                                    ; $0654: $09
    ld [hl], e                                    ; $0655: $73
    ld a, [rSubtractiveRNGStateSeed]              ; $0656: $fa $68 $cd
    sub e                                         ; $0659: $93
    jr nc, .WrapAndStoreRNGStateByte              ; $065a: $30 $01

    add d                                         ; $065c: $82

.WrapAndStoreRNGStateByte:
    ld e, a                                       ; $065d: $5f
    ld a, [hl]                                    ; $065e: $7e
    ld [rSubtractiveRNGStateSeed], a              ; $065f: $ea $68 $cd
    pop hl                                        ; $0662: $e1
    pop af                                        ; $0663: $f1
    dec a                                         ; $0664: $3d
    jr nz, .InitializeRNGStateEntryLoop           ; $0665: $20 $e4

    call AdvanceSubtractiveRNGState               ; $0667: $cd $a7 $06
    call AdvanceSubtractiveRNGState               ; $066a: $cd $a7 $06
    call AdvanceSubtractiveRNGState               ; $066d: $cd $a7 $06
    ret                                           ; $0670: $c9


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
    ld a, [rSubtractiveRNGModulus]                ; $06a7: $fa $69 $cd
    ld d, a                                       ; $06aa: $57
    ld bc, rSubtractiveRNGStateTableStart         ; $06ab: $01 $6b $cd
    ld hl, rSubtractiveRNGStateTableOffset1f      ; $06ae: $21 $8a $cd
    ld e, $18                                     ; $06b1: $1e $18

.FirstSubtractivePassLoop:
    ld a, [bc]                                    ; $06b3: $0a
    sub [hl]                                      ; $06b4: $96
    jr nc, .StoreFirstSubtractivePassByte         ; $06b5: $30 $01

    add d                                         ; $06b7: $82

.StoreFirstSubtractivePassByte:
    ld [bc], a                                    ; $06b8: $02
    dec e                                         ; $06b9: $1d
    jr nz, .FirstSubtractivePassLoop              ; $06ba: $20 $f7

    ld bc, rSubtractiveRNGStateTableOffset18      ; $06bc: $01 $83 $cd
    ld hl, rSubtractiveRNGStateTableStart         ; $06bf: $21 $6b $cd
    ld e, $1f                                     ; $06c2: $1e $1f

.SecondSubtractivePassLoop:
    ld a, [bc]                                    ; $06c4: $0a
    sub [hl]                                      ; $06c5: $96
    jr nc, .StoreSecondSubtractivePassByte        ; $06c6: $30 $01

    add d                                         ; $06c8: $82

.StoreSecondSubtractivePassByte:
    ld [bc], a                                    ; $06c9: $02
    dec e                                         ; $06ca: $1d
    jr nz, .SecondSubtractivePassLoop             ; $06cb: $20 $f7

    ret                                           ; $06cd: $c9


PollJoypadAndUpdateInputState::
    ld a, $20                                     ; $06ce: $3e $20
    ldh [rP1], a                                  ; $06d0: $e0 $00
    ldh a, [rP1]                                  ; $06d2: $f0 $00
    ldh a, [rP1]                                  ; $06d4: $f0 $00
    and $0f                                       ; $06d6: $e6 $0f
    swap a                                        ; $06d8: $cb $37
    ld b, a                                       ; $06da: $47
    ld a, $30                                     ; $06db: $3e $30
    ldh [rP1], a                                  ; $06dd: $e0 $00
    ld a, $10                                     ; $06df: $3e $10
    ldh [rP1], a                                  ; $06e1: $e0 $00
    ldh a, [rP1]                                  ; $06e3: $f0 $00
    ldh a, [rP1]                                  ; $06e5: $f0 $00
    ldh a, [rP1]                                  ; $06e7: $f0 $00
    ldh a, [rP1]                                  ; $06e9: $f0 $00
    ldh a, [rP1]                                  ; $06eb: $f0 $00
    ldh a, [rP1]                                  ; $06ed: $f0 $00
    and $0f                                       ; $06ef: $e6 $0f
    or b                                          ; $06f1: $b0
    cpl                                           ; $06f2: $2f
    ld [rInputButtonsHeld], a                     ; $06f3: $ea $1a $c3
    ld a, $30                                     ; $06f6: $3e $30
    ldh [rP1], a                                  ; $06f8: $e0 $00
    ld a, [rInputButtonsHeld]                     ; $06fa: $fa $1a $c3
    ld hl, rInputButtonsHeldPrevious              ; $06fd: $21 $26 $c3
    xor [hl]                                      ; $0700: $ae
    ld hl, rInputButtonsHeld                      ; $0701: $21 $1a $c3
    and [hl]                                      ; $0704: $a6
    ld [rInputButtonsPressed], a                  ; $0705: $ea $1e $c3
    ld [rInputButtonsPressedOrRepeated], a        ; $0708: $ea $22 $c3
    ld a, [rInputButtonsHeld]                     ; $070b: $fa $1a $c3
    and a                                         ; $070e: $a7
    jr z, .ResetInputRepeatCountdownToInitialDelay; $070f: $28 $1a

    ld hl, rInputButtonsHeldPrevious              ; $0711: $21 $26 $c3
    cp [hl]                                       ; $0714: $be
    jr nz, .ResetInputRepeatCountdownToInitialDelay; $0715: $20 $14

    ld hl, rInputRepeatCountdown                  ; $0717: $21 $2a $c3
    dec [hl]                                      ; $071a: $35
    jr nz, .StoreCurrentHeldButtonsAsPreviousAndReturn; $071b: $20 $14

    ld a, [rInputButtonsHeld]                     ; $071d: $fa $1a $c3
    ld [rInputButtonsPressedOrRepeated], a        ; $0720: $ea $22 $c3
    ld a, [rInputRepeatSubsequentInterval]        ; $0723: $fa $19 $c3
    ld [rInputRepeatCountdown], a                 ; $0726: $ea $2a $c3
    jr .StoreCurrentHeldButtonsAsPreviousAndReturn; $0729: $18 $06

.ResetInputRepeatCountdownToInitialDelay:
    ld a, [rInputRepeatInitialDelay]              ; $072b: $fa $18 $c3
    ld [rInputRepeatCountdown], a                 ; $072e: $ea $2a $c3

.StoreCurrentHeldButtonsAsPreviousAndReturn:
    ld a, [rInputButtonsHeld]                     ; $0731: $fa $1a $c3
    ld [rInputButtonsHeldPrevious], a             ; $0734: $ea $26 $c3
    ret                                           ; $0737: $c9


QueueCommandStreamAndProcessIfLCDOff::
    push af                                       ; $0738: $f5
    ld hl, rCommandQueueWriteCursor               ; $0739: $21 $15 $c3
    ld l, [hl]                                    ; $073c: $6e
    ld h, $c2                                     ; $073d: $26 $c2
    ld a, $ff                                     ; $073f: $3e $ff
    ld [hl], a                                    ; $0741: $77
    inc l                                         ; $0742: $2c
    pop af                                        ; $0743: $f1
    ld [hl], c                                    ; $0744: $71
    inc l                                         ; $0745: $2c
    ld [hl], b                                    ; $0746: $70
    inc l                                         ; $0747: $2c
    ld [hl], a                                    ; $0748: $77
    inc l                                         ; $0749: $2c
    xor a                                         ; $074a: $af
    ld [hl], a                                    ; $074b: $77
    ld a, [rCommandQueueWriteCursor]              ; $074c: $fa $15 $c3
    add $04                                       ; $074f: $c6 $04
    ld [rCommandQueueWriteCursor], a              ; $0751: $ea $15 $c3
    ldh a, [rLCDC]                                ; $0754: $f0 $40
    bit 7, a                                      ; $0756: $cb $7f
    ret nz                                        ; $0758: $c0

    ldh a, [rIE]                                  ; $0759: $f0 $ff
    push af                                       ; $075b: $f5
    res 0, a                                      ; $075c: $cb $87
    ldh [rIE], a                                  ; $075e: $e0 $ff
    call ProcessPendingCommandQueueEntries        ; $0760: $cd $67 $07
    pop af                                        ; $0763: $f1
    ldh [rIE], a                                  ; $0764: $e0 $ff
    ret                                           ; $0766: $c9


ProcessPendingCommandQueueEntries::
    ld a, [rCommandQueueWriteCursor]              ; $0767: $fa $15 $c3
    ld hl, rCommandQueueReadCursor                ; $076a: $21 $16 $c3
    cp [hl]                                       ; $076d: $be
    ret z                                         ; $076e: $c8

    ld l, [hl]                                    ; $076f: $6e
    ld h, $c2                                     ; $0770: $26 $c2

.ProcessQueuedEntryLoop:
    ld a, [hl]                                    ; $0772: $7e
    and a                                         ; $0773: $a7
    jr z, .CommitCommandQueueReadCursor           ; $0774: $28 $1d

    inc l                                         ; $0776: $2c
    ld e, [hl]                                    ; $0777: $5e
    inc l                                         ; $0778: $2c
    ld d, [hl]                                    ; $0779: $56
    inc l                                         ; $077a: $2c
    ld a, [rActiveROMBank]                        ; $077b: $fa $12 $c3
    push af                                       ; $077e: $f5
    ld a, [hl]                                    ; $077f: $7e
    ld [rActiveROMBank], a                        ; $0780: $ea $12 $c3
    ld [rROMB], a                                 ; $0783: $ea $00 $20
    inc l                                         ; $0786: $2c
    call ExecuteQueuedCommandStream               ; $0787: $cd $98 $07
    pop af                                        ; $078a: $f1
    ld [rActiveROMBank], a                        ; $078b: $ea $12 $c3
    ld [rROMB], a                                 ; $078e: $ea $00 $20
    jr .ProcessQueuedEntryLoop                    ; $0791: $18 $df

.CommitCommandQueueReadCursor:
    ld a, l                                       ; $0793: $7d
    ld [rCommandQueueReadCursor], a               ; $0794: $ea $16 $c3
    ret                                           ; $0797: $c9


ExecuteQueuedCommandStream::
    ldh a, [rIE]                                  ; $0798: $f0 $ff
    push af                                       ; $079a: $f5
    res 0, a                                      ; $079b: $cb $87
    ldh [rIE], a                                  ; $079d: $e0 $ff
    push hl                                       ; $079f: $e5

.ReadNextCommandHeader:
    ld a, [de]                                    ; $07a0: $1a
    ld h, a                                       ; $07a1: $67
    inc de                                        ; $07a2: $13
    ld a, [de]                                    ; $07a3: $1a
    ld l, a                                       ; $07a4: $6f
    inc de                                        ; $07a5: $13
    ld a, [de]                                    ; $07a6: $1a
    inc de                                        ; $07a7: $13
    bit 7, a                                      ; $07a8: $cb $7f
    jr nz, .DispatchVerticalCopyMode              ; $07aa: $20 $1a

    bit 6, a                                      ; $07ac: $cb $77
    jr nz, .SetupLinearRepeatFill                 ; $07ae: $20 $0b

    and $3f                                       ; $07b0: $e6 $3f
    ld b, a                                       ; $07b2: $47

.CopyLinearLiteralBytesLoop:
    ld a, [de]                                    ; $07b3: $1a
    ld [hl+], a                                   ; $07b4: $22
    inc de                                        ; $07b5: $13
    dec b                                         ; $07b6: $05
    jr nz, .CopyLinearLiteralBytesLoop            ; $07b7: $20 $fa

    jr .CheckCommandStreamTerminator              ; $07b9: $18 $2d

.SetupLinearRepeatFill:
    and $3f                                       ; $07bb: $e6 $3f
    ld b, a                                       ; $07bd: $47
    ld a, [de]                                    ; $07be: $1a

.FillLinearRepeatedByteLoop:
    ld [hl+], a                                   ; $07bf: $22
    dec b                                         ; $07c0: $05
    jr nz, .FillLinearRepeatedByteLoop            ; $07c1: $20 $fc

    inc de                                        ; $07c3: $13
    jr .CheckCommandStreamTerminator              ; $07c4: $18 $22

.DispatchVerticalCopyMode:
    bit 6, a                                      ; $07c6: $cb $77
    jr nz, .SetupVerticalRepeatFill               ; $07c8: $20 $10

    and $3f                                       ; $07ca: $e6 $3f
    ld bc, $0020                                  ; $07cc: $01 $20 $00

.CopyVerticalLiteralBytesLoop:
    push af                                       ; $07cf: $f5
    ld a, [de]                                    ; $07d0: $1a
    ld [hl], a                                    ; $07d1: $77
    inc de                                        ; $07d2: $13
    add hl, bc                                    ; $07d3: $09
    pop af                                        ; $07d4: $f1
    dec a                                         ; $07d5: $3d
    jr nz, .CopyVerticalLiteralBytesLoop          ; $07d6: $20 $f7

    jr .CheckCommandStreamTerminator              ; $07d8: $18 $0e

.SetupVerticalRepeatFill:
    and $3f                                       ; $07da: $e6 $3f
    ld bc, $0020                                  ; $07dc: $01 $20 $00

.FillVerticalRepeatedByteLoop:
    push af                                       ; $07df: $f5
    ld a, [de]                                    ; $07e0: $1a
    ld [hl], a                                    ; $07e1: $77
    add hl, bc                                    ; $07e2: $09
    pop af                                        ; $07e3: $f1
    dec a                                         ; $07e4: $3d
    jr nz, .FillVerticalRepeatedByteLoop          ; $07e5: $20 $f8

    inc de                                        ; $07e7: $13

.CheckCommandStreamTerminator:
    ld a, [de]                                    ; $07e8: $1a
    and a                                         ; $07e9: $a7
    jr nz, .ReadNextCommandHeader                 ; $07ea: $20 $b4

    pop hl                                        ; $07ec: $e1
    pop af                                        ; $07ed: $f1
    ldh [rIE], a                                  ; $07ee: $e0 $ff
    ret                                           ; $07f0: $c9


LoadPuzzleDataBuffer::
    ld hl, rPuzzleCellStateBufferStart            ; $07f1: $21 $40 $d6
    ld bc, $0100                                  ; $07f4: $01 $00 $01
    call ZeroMemoryBlock                          ; $07f7: $cd $d3 $04
    ld a, [rPuzzleDataIndexLow]                   ; $07fa: $fa $07 $d8
    ld c, a                                       ; $07fd: $4f
    ld a, [rPuzzleDataIndexHigh]                  ; $07fe: $fa $08 $d8
    ld b, a                                       ; $0801: $47
    sla c                                         ; $0802: $cb $21
    rl b                                          ; $0804: $cb $10
    ld hl, $552e                                  ; $0806: $21 $2e $55
    ld a, [rActiveROMBank]                        ; $0809: $fa $12 $c3
    push af                                       ; $080c: $f5
    ld a, $03                                     ; $080d: $3e $03
    ld [rActiveROMBank], a                        ; $080f: $ea $12 $c3
    ld [rROMB], a                                 ; $0812: $ea $00 $20
    add hl, bc                                    ; $0815: $09
    ld e, [hl]                                    ; $0816: $5e
    inc hl                                        ; $0817: $23
    ld d, [hl]                                    ; $0818: $56
    pop af                                        ; $0819: $f1
    ld [rActiveROMBank], a                        ; $081a: $ea $12 $c3
    ld [rROMB], a                                 ; $081d: $ea $00 $20
    ld a, [rActiveROMBank]                        ; $0820: $fa $12 $c3
    push af                                       ; $0823: $f5
    ld a, $02                                     ; $0824: $3e $02
    ld [rActiveROMBank], a                        ; $0826: $ea $12 $c3
    ld [rROMB], a                                 ; $0829: $ea $00 $20
    ld b, $1e                                     ; $082c: $06 $1e
    ld hl, rPuzzleCellStateBufferStart            ; $082e: $21 $40 $d6

.DecodePuzzleDataBitsLoop:
    ld a, [de]                                    ; $0831: $1a
    sla a                                         ; $0832: $cb $27
    rl [hl]                                       ; $0834: $cb $16
    inc hl                                        ; $0836: $23
    sla a                                         ; $0837: $cb $27
    rl [hl]                                       ; $0839: $cb $16
    inc hl                                        ; $083b: $23
    sla a                                         ; $083c: $cb $27
    rl [hl]                                       ; $083e: $cb $16
    inc hl                                        ; $0840: $23
    sla a                                         ; $0841: $cb $27
    rl [hl]                                       ; $0843: $cb $16
    inc hl                                        ; $0845: $23
    sla a                                         ; $0846: $cb $27
    rl [hl]                                       ; $0848: $cb $16
    inc hl                                        ; $084a: $23
    sla a                                         ; $084b: $cb $27
    rl [hl]                                       ; $084d: $cb $16
    inc hl                                        ; $084f: $23
    sla a                                         ; $0850: $cb $27
    rl [hl]                                       ; $0852: $cb $16
    inc hl                                        ; $0854: $23
    sla a                                         ; $0855: $cb $27
    rl [hl]                                       ; $0857: $cb $16
    inc hl                                        ; $0859: $23
    inc de                                        ; $085a: $13
    dec b                                         ; $085b: $05
    jr nz, .DecodePuzzleDataBitsLoop              ; $085c: $20 $d3

    ld a, [de]                                    ; $085e: $1a
    ld [rPuzzleGridWidth], a                      ; $085f: $ea $00 $d8
    inc de                                        ; $0862: $13
    ld a, [de]                                    ; $0863: $1a
    ld [rPuzzleGridHeight], a                     ; $0864: $ea $01 $d8
    pop af                                        ; $0867: $f1
    ld [rActiveROMBank], a                        ; $0868: $ea $12 $c3
    ld [rROMB], a                                 ; $086b: $ea $00 $20
    ret                                           ; $086e: $c9


LCDCInterruptDispatchRoutineAtLY2F_TickAndMaybeRunSoundEngineUpdate::
    ldh a, [rLY]                                  ; $086f: $f0 $44
    cp $2f                                        ; $0871: $fe $2f
    jr nz, .Return                                ; $0873: $20 $28

    ld a, $03                                     ; $0875: $3e $03
    ld hl, rSTAT                                  ; $0877: $21 $41 $ff

.WaitForSTATMode0Loop:
    and [hl]                                      ; $087a: $a6
    jr nz, .WaitForSTATMode0Loop                  ; $087b: $20 $fd

    ld a, [rLCDCShadow]                           ; $087d: $fa $2e $c3
    res 4, a                                      ; $0880: $cb $a7
    ldh [rLCDC], a                                ; $0882: $e0 $40
    ld hl, rPuzzleTimerActive                     ; $0884: $21 $0d $d8
    inc [hl]                                      ; $0887: $34
    ld a, [rLCDCFrameTickCounter]                 ; $0888: $fa $3b $c3
    inc a                                         ; $088b: $3c
    ld [rLCDCFrameTickCounter], a                 ; $088c: $ea $3b $c3
    ld a, [rUseLCDCInterruptForSoundEngineUpdateFlag]; $088f: $fa $50 $c3
    and a                                         ; $0892: $a7
    ret z                                         ; $0893: $c8

    ld a, [rSGBPacketTransferBusyFlag]            ; $0894: $fa $3e $c3
    and a                                         ; $0897: $a7
    jr nz, .Return                                ; $0898: $20 $03

    call CallSoundEngineUpdateRoutine             ; $089a: $cd $ee $03

.Return:
    ret                                           ; $089d: $c9


LCDCInterruptDispatchRoutineAtLY2F_MaybeRunSoundEngineUpdate::
    ldh a, [rLY]                                  ; $089e: $f0 $44
    cp $2f                                        ; $08a0: $fe $2f
    jr nz, .Return                                ; $08a2: $20 $0e

    ld a, [rUseLCDCInterruptForSoundEngineUpdateFlag]; $08a4: $fa $50 $c3
    and a                                         ; $08a7: $a7
    ret z                                         ; $08a8: $c8

    ld a, [rSGBPacketTransferBusyFlag]            ; $08a9: $fa $3e $c3
    and a                                         ; $08ac: $a7
    jr nz, .Return                                ; $08ad: $20 $03

    call CallSoundEngineUpdateRoutine             ; $08af: $cd $ee $03

.Return:
    ret                                           ; $08b2: $c9


PrepareBGTileCopy::
    ld a, [rBGTileCopySourceX]                    ; $08b3: $fa $51 $c3
    and $07                                       ; $08b6: $e6 $07
    ld c, a                                       ; $08b8: $4f
    ld b, $00                                     ; $08b9: $06 $00
    ld hl, BGTileCopyMaskLookupTable              ; $08bb: $21 $59 $0d
    add hl, bc                                    ; $08be: $09
    ld a, [hl]                                    ; $08bf: $7e
    ld [rBGTileCopyMaskHigh], a                   ; $08c0: $ea $59 $c3
    ld a, [rBGTileCopyDestX]                      ; $08c3: $fa $53 $c3
    and $07                                       ; $08c6: $e6 $07
    ld c, a                                       ; $08c8: $4f
    ld b, $00                                     ; $08c9: $06 $00
    ld hl, $0d62                                  ; $08cb: $21 $62 $0d
    add hl, bc                                    ; $08ce: $09
    ld a, [hl]                                    ; $08cf: $7e
    ld [rBGTileCopyValueA], a                     ; $08d0: $ea $5a $c3
    ld a, [rBGTileCopySourceX]                    ; $08d3: $fa $51 $c3
    and $f8                                       ; $08d6: $e6 $f8
    ld c, a                                       ; $08d8: $4f
    ld a, [rBGTileCopyDestX]                      ; $08d9: $fa $53 $c3
    and $f8                                       ; $08dc: $e6 $f8
    sub c                                         ; $08de: $91
    srl a                                         ; $08df: $cb $3f
    srl a                                         ; $08e1: $cb $3f
    srl a                                         ; $08e3: $cb $3f
    ld [rBGTileCopyValueB], a                     ; $08e5: $ea $5b $c3
    ld a, [rBGTileCopySourceX]                    ; $08e8: $fa $51 $c3
    ld c, a                                       ; $08eb: $4f
    ld a, [rBGTileCopyDestX]                      ; $08ec: $fa $53 $c3
    sub c                                         ; $08ef: $91
    srl a                                         ; $08f0: $cb $3f
    srl a                                         ; $08f2: $cb $3f
    srl a                                         ; $08f4: $cb $3f
    inc a                                         ; $08f6: $3c
    ld [rBGTileCopyValueC], a                     ; $08f7: $ea $5c $c3
    ld a, [rBGTileCopySourceX]                    ; $08fa: $fa $51 $c3
    and $07                                       ; $08fd: $e6 $07
    ld c, a                                       ; $08ff: $4f
    add $38                                       ; $0900: $c6 $38
    ld [rBGTileCopyValueE], a                     ; $0902: $ea $5e $c3
    ld b, $00                                     ; $0905: $06 $00
    ld hl, BGTileCopyMaskLookupTable              ; $0907: $21 $59 $0d
    add hl, bc                                    ; $090a: $09
    ld a, [hl]                                    ; $090b: $7e
    ld [rBGTileCopyValueF], a                     ; $090c: $ea $5f $c3
    ld hl, $0d61                                  ; $090f: $21 $61 $0d
    add hl, bc                                    ; $0912: $09
    ld a, [hl]                                    ; $0913: $7e
    ld [rBGTileCopyValueG], a                     ; $0914: $ea $60 $c3
    ld a, [rBGTileCopyBankAddressLow]             ; $0917: $fa $55 $c3
    ld c, a                                       ; $091a: $4f
    ld a, [rBGTileCopyBankAddressHigh]            ; $091b: $fa $56 $c3
    ld b, a                                       ; $091e: $47
    ld a, [rActiveROMBank]                        ; $091f: $fa $12 $c3
    push af                                       ; $0922: $f5
    ld a, [rBGTileCopyBank]                       ; $0923: $fa $57 $c3
    ld [rActiveROMBank], a                        ; $0926: $ea $12 $c3
    ld [rROMB], a                                 ; $0929: $ea $00 $20
    ld de, $c363                                  ; $092c: $11 $63 $c3
    ld a, [rBGTileCopySourceY]                    ; $092f: $fa $52 $c3
    ld l, a                                       ; $0932: $6f
    ld a, [rBGTileCopySourceX]                    ; $0933: $fa $51 $c3
    and $f8                                       ; $0936: $e6 $f8
    ld h, a                                       ; $0938: $67

.PrepareBGTileCopyLoop:
    xor a                                         ; $0939: $af
    ld [rBGTileCopyValueH], a                     ; $093a: $ea $61 $c3
    ld [rBGTileCopyValueI], a                     ; $093d: $ea $62 $c3
    ld a, [rBGTileCopyValueC]                     ; $0940: $fa $5c $c3
    ld [rBGTileCopyValueD], a                     ; $0943: $ea $5d $c3
    ld a, [rBGTileCopyMaskHigh]                   ; $0946: $fa $59 $c3
    ld [rBGTileCopyMaskLow], a                    ; $0949: $ea $58 $c3
    push bc                                       ; $094c: $c5
    push hl                                       ; $094d: $e5
    ld a, [rBGTileCopyValueB]                     ; $094e: $fa $5b $c3
    and a                                         ; $0951: $a7
    jr nz, .PrepareBGTileCopyRow                  ; $0952: $20 $0f

    push hl                                       ; $0954: $e5
    ld a, [rBGTileCopyValueA]                     ; $0955: $fa $5a $c3
    ld hl, rBGTileCopyMaskHigh                    ; $0958: $21 $59 $c3
    and [hl]                                      ; $095b: $a6
    ld [rBGTileCopyMaskLow], a                    ; $095c: $ea $58 $c3
    pop hl                                        ; $095f: $e1
    jp .PrepareBGTileCopyNextRow                  ; $0960: $c3 $11 $0a


.PrepareBGTileCopyRow:
    push hl                                       ; $0963: $e5
    call ResolveTilemapTileDataAddressAndStoreToDE; $0964: $cd $6a $0d
    ld a, [rBGTileCopyMaskLow]                    ; $0967: $fa $58 $c3
    ld [de], a                                    ; $096a: $12
    inc de                                        ; $096b: $13
    ld a, [bc]                                    ; $096c: $0a
    ld l, a                                       ; $096d: $6f
    ld a, [rBGTileCopyValueE]                     ; $096e: $fa $5e $c3
    ld h, a                                       ; $0971: $67
    ld a, [hl]                                    ; $0972: $7e
    ld [de], a                                    ; $0973: $12
    ld hl, rBGTileCopyValueG                      ; $0974: $21 $60 $c3
    and [hl]                                      ; $0977: $a6
    ld [rBGTileCopyValueH], a                     ; $0978: $ea $61 $c3
    inc bc                                        ; $097b: $03
    inc de                                        ; $097c: $13
    ld a, [bc]                                    ; $097d: $0a
    ld l, a                                       ; $097e: $6f
    ld a, [rBGTileCopyValueE]                     ; $097f: $fa $5e $c3
    ld h, a                                       ; $0982: $67
    ld a, [hl]                                    ; $0983: $7e
    ld [de], a                                    ; $0984: $12
    ld hl, rBGTileCopyValueG                      ; $0985: $21 $60 $c3
    and [hl]                                      ; $0988: $a6
    ld [rBGTileCopyValueI], a                     ; $0989: $ea $62 $c3
    ld a, c                                       ; $098c: $79
    add $0f                                       ; $098d: $c6 $0f
    ld c, a                                       ; $098f: $4f
    ld a, b                                       ; $0990: $78
    adc $00                                       ; $0991: $ce $00
    ld b, a                                       ; $0993: $47
    inc de                                        ; $0994: $13
    pop hl                                        ; $0995: $e1
    ld a, h                                       ; $0996: $7c
    add $08                                       ; $0997: $c6 $08
    ld h, a                                       ; $0999: $67
    ld a, [rBGTileCopyValueD]                     ; $099a: $fa $5d $c3
    dec a                                         ; $099d: $3d
    ld [rBGTileCopyValueD], a                     ; $099e: $ea $5d $c3
    ld a, [rBGTileCopyValueB]                     ; $09a1: $fa $5b $c3
    dec a                                         ; $09a4: $3d
    jr z, .PrepareBGTileCopyTail                  ; $09a5: $28 $64

.PrepareBGTileCopyRowSpanLoop:
    push af                                       ; $09a7: $f5
    push hl                                       ; $09a8: $e5
    call ResolveTilemapTileDataAddressAndStoreToDE; $09a9: $cd $6a $0d
    ld a, $ff                                     ; $09ac: $3e $ff
    ld [de], a                                    ; $09ae: $12
    inc de                                        ; $09af: $13
    ld a, [rBGTileCopyValueD]                     ; $09b0: $fa $5d $c3
    and a                                         ; $09b3: $a7
    jr z, .PrepareBGTileCopyRowSpanFirstByte      ; $09b4: $28 $02

    ld a, [bc]                                    ; $09b6: $0a
    inc bc                                        ; $09b7: $03

.PrepareBGTileCopyRowSpanFirstByte:
    ld l, a                                       ; $09b8: $6f
    ld a, [rBGTileCopyValueE]                     ; $09b9: $fa $5e $c3
    ld h, a                                       ; $09bc: $67
    ld a, [hl]                                    ; $09bd: $7e
    push af                                       ; $09be: $f5
    ld hl, rBGTileCopyValueF                      ; $09bf: $21 $5f $c3
    and [hl]                                      ; $09c2: $a6
    ld hl, rBGTileCopyValueH                      ; $09c3: $21 $61 $c3
    or [hl]                                       ; $09c6: $b6
    ld [de], a                                    ; $09c7: $12
    pop af                                        ; $09c8: $f1
    ld hl, rBGTileCopyValueG                      ; $09c9: $21 $60 $c3
    and [hl]                                      ; $09cc: $a6
    ld [rBGTileCopyValueH], a                     ; $09cd: $ea $61 $c3
    inc de                                        ; $09d0: $13
    ld a, [rBGTileCopyValueD]                     ; $09d1: $fa $5d $c3
    and a                                         ; $09d4: $a7
    jr z, .PrepareBGTileCopyRowSpanSecondByte     ; $09d5: $28 $0b

    ld a, [bc]                                    ; $09d7: $0a
    push af                                       ; $09d8: $f5
    ld a, c                                       ; $09d9: $79
    add $0f                                       ; $09da: $c6 $0f
    ld c, a                                       ; $09dc: $4f
    ld a, b                                       ; $09dd: $78
    adc $00                                       ; $09de: $ce $00
    ld b, a                                       ; $09e0: $47
    pop af                                        ; $09e1: $f1

.PrepareBGTileCopyRowSpanSecondByte:
    ld l, a                                       ; $09e2: $6f
    ld a, [rBGTileCopyValueE]                     ; $09e3: $fa $5e $c3
    ld h, a                                       ; $09e6: $67
    ld a, [hl]                                    ; $09e7: $7e
    push af                                       ; $09e8: $f5
    ld hl, rBGTileCopyValueF                      ; $09e9: $21 $5f $c3
    and [hl]                                      ; $09ec: $a6
    ld hl, rBGTileCopyValueI                      ; $09ed: $21 $62 $c3
    or [hl]                                       ; $09f0: $b6
    ld [de], a                                    ; $09f1: $12
    pop af                                        ; $09f2: $f1
    ld hl, rBGTileCopyValueG                      ; $09f3: $21 $60 $c3
    and [hl]                                      ; $09f6: $a6
    ld [rBGTileCopyValueI], a                     ; $09f7: $ea $62 $c3
    inc de                                        ; $09fa: $13
    pop hl                                        ; $09fb: $e1
    ld a, h                                       ; $09fc: $7c
    add $08                                       ; $09fd: $c6 $08
    ld h, a                                       ; $09ff: $67
    ld a, [rBGTileCopyValueD]                     ; $0a00: $fa $5d $c3
    dec a                                         ; $0a03: $3d
    ld [rBGTileCopyValueD], a                     ; $0a04: $ea $5d $c3
    pop af                                        ; $0a07: $f1
    dec a                                         ; $0a08: $3d
    jr nz, .PrepareBGTileCopyRowSpanLoop          ; $0a09: $20 $9c

.PrepareBGTileCopyTail:
    ld a, [rBGTileCopyValueA]                     ; $0a0b: $fa $5a $c3
    ld [rBGTileCopyMaskLow], a                    ; $0a0e: $ea $58 $c3

.PrepareBGTileCopyNextRow:
    call ResolveTilemapTileDataAddressAndStoreToDE; $0a11: $cd $6a $0d
    ld a, [rBGTileCopyMaskLow]                    ; $0a14: $fa $58 $c3
    ld [de], a                                    ; $0a17: $12
    inc de                                        ; $0a18: $13
    ld a, [rBGTileCopyValueD]                     ; $0a19: $fa $5d $c3
    and a                                         ; $0a1c: $a7
    jr z, .PrepareBGTileCopyNextRowPart1          ; $0a1d: $28 $02

    ld a, [bc]                                    ; $0a1f: $0a
    inc bc                                        ; $0a20: $03

.PrepareBGTileCopyNextRowPart1:
    ld l, a                                       ; $0a21: $6f
    ld a, [rBGTileCopyValueE]                     ; $0a22: $fa $5e $c3
    ld h, a                                       ; $0a25: $67
    ld a, [hl]                                    ; $0a26: $7e
    push af                                       ; $0a27: $f5
    ld hl, rBGTileCopyValueF                      ; $0a28: $21 $5f $c3
    and [hl]                                      ; $0a2b: $a6
    ld hl, rBGTileCopyValueH                      ; $0a2c: $21 $61 $c3
    or [hl]                                       ; $0a2f: $b6
    ld [de], a                                    ; $0a30: $12
    pop af                                        ; $0a31: $f1
    ld hl, rBGTileCopyValueG                      ; $0a32: $21 $60 $c3
    and [hl]                                      ; $0a35: $a6
    ld [rBGTileCopyValueH], a                     ; $0a36: $ea $61 $c3
    inc de                                        ; $0a39: $13
    ld a, [rBGTileCopyValueD]                     ; $0a3a: $fa $5d $c3
    and a                                         ; $0a3d: $a7
    jr z, .PrepareBGTileCopyNextRowPart2          ; $0a3e: $28 $0b

    ld a, [bc]                                    ; $0a40: $0a
    push af                                       ; $0a41: $f5
    ld a, c                                       ; $0a42: $79
    add $0f                                       ; $0a43: $c6 $0f
    ld c, a                                       ; $0a45: $4f
    ld a, b                                       ; $0a46: $78
    adc $00                                       ; $0a47: $ce $00
    ld b, a                                       ; $0a49: $47
    pop af                                        ; $0a4a: $f1

.PrepareBGTileCopyNextRowPart2:
    ld l, a                                       ; $0a4b: $6f
    ld a, [rBGTileCopyValueE]                     ; $0a4c: $fa $5e $c3
    ld h, a                                       ; $0a4f: $67
    ld a, [hl]                                    ; $0a50: $7e
    push af                                       ; $0a51: $f5
    ld hl, rBGTileCopyValueF                      ; $0a52: $21 $5f $c3
    and [hl]                                      ; $0a55: $a6
    ld hl, rBGTileCopyValueI                      ; $0a56: $21 $62 $c3
    or [hl]                                       ; $0a59: $b6
    ld [de], a                                    ; $0a5a: $12
    pop af                                        ; $0a5b: $f1
    ld hl, rBGTileCopyValueG                      ; $0a5c: $21 $60 $c3
    and [hl]                                      ; $0a5f: $a6
    ld [rBGTileCopyValueI], a                     ; $0a60: $ea $62 $c3
    inc de                                        ; $0a63: $13
    pop hl                                        ; $0a64: $e1
    pop bc                                        ; $0a65: $c1
    inc bc                                        ; $0a66: $03
    inc bc                                        ; $0a67: $03
    ld a, c                                       ; $0a68: $79
    and $0f                                       ; $0a69: $e6 $0f
    jr nz, .PrepareBGTileCopyRowAdvance           ; $0a6b: $20 $08

    ld a, c                                       ; $0a6d: $79
    add $f0                                       ; $0a6e: $c6 $f0
    ld c, a                                       ; $0a70: $4f
    ld a, b                                       ; $0a71: $78
    adc $00                                       ; $0a72: $ce $00
    ld b, a                                       ; $0a74: $47

.PrepareBGTileCopyRowAdvance:
    inc l                                         ; $0a75: $2c
    ld a, [rBGTileCopyDestY]                      ; $0a76: $fa $54 $c3
    cp l                                          ; $0a79: $bd
    jp nc, .PrepareBGTileCopyLoop                 ; $0a7a: $d2 $39 $09

    xor a                                         ; $0a7d: $af
    ld [de], a                                    ; $0a7e: $12
    inc de                                        ; $0a7f: $13
    ld [de], a                                    ; $0a80: $12
    ldh a, [rIE]                                  ; $0a81: $f0 $ff
    push af                                       ; $0a83: $f5

.WaitForVBlank:
    ldh a, [rLY]                                  ; $0a84: $f0 $44
    cp $80                                        ; $0a86: $fe $80
    jr nc, .WaitForVBlank                         ; $0a88: $30 $fa

    ldh a, [rIE]                                  ; $0a8a: $f0 $ff
    res 0, a                                      ; $0a8c: $cb $87
    ldh [rIE], a                                  ; $0a8e: $e0 $ff
    ld bc, $c363                                  ; $0a90: $01 $63 $c3
    ld a, [rLCDCShadow]                           ; $0a93: $fa $2e $c3
    bit 7, a                                      ; $0a96: $cb $7f
    jr z, .CopyTileDataLoopAlt                    ; $0a98: $28 $59

.WaitForDisplayLine:
    ldh a, [rLY]                                  ; $0a9a: $f0 $44
    cp $90                                        ; $0a9c: $fe $90
    jr c, .WaitForDisplayLine                     ; $0a9e: $38 $fa

    ld a, [rLCDCShadow]                           ; $0aa0: $fa $2e $c3
    set 4, a                                      ; $0aa3: $cb $e7
    ldh [rLCDC], a                                ; $0aa5: $e0 $40
    ld a, $14                                     ; $0aa7: $3e $14

.CopyTileDataLoop:
    push af                                       ; $0aa9: $f5
    ld a, [bc]                                    ; $0aaa: $0a
    ld l, a                                       ; $0aab: $6f
    inc bc                                        ; $0aac: $03
    ld a, [bc]                                    ; $0aad: $0a
    ld h, a                                       ; $0aae: $67
    or l                                          ; $0aaf: $b5
    jr z, .RestoreInterruptsAndReturn             ; $0ab0: $28 $1c

    inc bc                                        ; $0ab2: $03
    ld a, [bc]                                    ; $0ab3: $0a
    ld e, a                                       ; $0ab4: $5f
    inc bc                                        ; $0ab5: $03
    ld a, [bc]                                    ; $0ab6: $0a
    inc bc                                        ; $0ab7: $03
    xor [hl]                                      ; $0ab8: $ae
    and e                                         ; $0ab9: $a3
    xor [hl]                                      ; $0aba: $ae
    ld [hl+], a                                   ; $0abb: $22
    ld a, [bc]                                    ; $0abc: $0a
    inc bc                                        ; $0abd: $03
    xor [hl]                                      ; $0abe: $ae
    and e                                         ; $0abf: $a3
    xor [hl]                                      ; $0ac0: $ae
    ld [hl], a                                    ; $0ac1: $77
    pop af                                        ; $0ac2: $f1
    dec a                                         ; $0ac3: $3d
    jr nz, .CopyTileDataLoop                      ; $0ac4: $20 $e3

.WaitForDisplayLineLoop:
    ldh a, [rLY]                                  ; $0ac6: $f0 $44
    cp $90                                        ; $0ac8: $fe $90
    jr c, .WaitForDisplayLine                     ; $0aca: $38 $ce

    jr .WaitForDisplayLineLoop                    ; $0acc: $18 $f8

.RestoreInterruptsAndReturn:
    pop af                                        ; $0ace: $f1

.RestoreInterruptsAndWaitForVBlank:
    ldh a, [rLY]                                  ; $0acf: $f0 $44
    cp $80                                        ; $0ad1: $fe $80
    jr c, .RestoreInterrupts                      ; $0ad3: $38 $13

.WaitForDisplayLineAndRestore:
    ldh a, [rLY]                                  ; $0ad5: $f0 $44
    cp $90                                        ; $0ad7: $fe $90
    jr c, .WaitForDisplayLineAndRestore           ; $0ad9: $38 $fa

    ld a, [rLCDCShadow]                           ; $0adb: $fa $2e $c3
    set 4, a                                      ; $0ade: $cb $e7
    ldh [rLCDC], a                                ; $0ae0: $e0 $40

.WaitForVBlankLoop:
    ldh a, [rLY]                                  ; $0ae2: $f0 $44
    cp $80                                        ; $0ae4: $fe $80
    jr nc, .WaitForVBlankLoop                     ; $0ae6: $30 $fa

.RestoreInterrupts:
    pop af                                        ; $0ae8: $f1
    ldh [rIE], a                                  ; $0ae9: $e0 $ff
    pop af                                        ; $0aeb: $f1
    ld [rActiveROMBank], a                        ; $0aec: $ea $12 $c3
    ld [rROMB], a                                 ; $0aef: $ea $00 $20
    ret                                           ; $0af2: $c9


.CopyTileDataLoopAlt:
    ld a, [bc]                                    ; $0af3: $0a
    ld l, a                                       ; $0af4: $6f
    inc bc                                        ; $0af5: $03
    ld a, [bc]                                    ; $0af6: $0a
    ld h, a                                       ; $0af7: $67
    or l                                          ; $0af8: $b5
    jr z, .RestoreInterruptsAndWaitForVBlank      ; $0af9: $28 $d4

    inc bc                                        ; $0afb: $03
    ld a, [bc]                                    ; $0afc: $0a
    ld e, a                                       ; $0afd: $5f
    inc bc                                        ; $0afe: $03
    ld a, [bc]                                    ; $0aff: $0a
    inc bc                                        ; $0b00: $03
    xor [hl]                                      ; $0b01: $ae
    and e                                         ; $0b02: $a3
    xor [hl]                                      ; $0b03: $ae
    ld [hl+], a                                   ; $0b04: $22
    ld a, [bc]                                    ; $0b05: $0a
    inc bc                                        ; $0b06: $03
    xor [hl]                                      ; $0b07: $ae
    and e                                         ; $0b08: $a3
    xor [hl]                                      ; $0b09: $ae
    ld [hl], a                                    ; $0b0a: $77
    jr .CopyTileDataLoopAlt                       ; $0b0b: $18 $e6

PrepareBGTileCopyNoLCDCBit4Force::
    ld a, [rBGTileCopySourceX]                    ; $0b0d: $fa $51 $c3
    and $07                                       ; $0b10: $e6 $07
    ld c, a                                       ; $0b12: $4f
    ld b, $00                                     ; $0b13: $06 $00
    ld hl, BGTileCopyMaskLookupTable              ; $0b15: $21 $59 $0d
    add hl, bc                                    ; $0b18: $09
    ld a, [hl]                                    ; $0b19: $7e
    ld [rBGTileCopyMaskHigh], a                   ; $0b1a: $ea $59 $c3
    ld a, [rBGTileCopyDestX]                      ; $0b1d: $fa $53 $c3
    and $07                                       ; $0b20: $e6 $07
    ld c, a                                       ; $0b22: $4f
    ld b, $00                                     ; $0b23: $06 $00
    ld hl, $0d62                                  ; $0b25: $21 $62 $0d
    add hl, bc                                    ; $0b28: $09
    ld a, [hl]                                    ; $0b29: $7e
    ld [rBGTileCopyValueA], a                     ; $0b2a: $ea $5a $c3
    ld a, [rBGTileCopySourceX]                    ; $0b2d: $fa $51 $c3
    and $f8                                       ; $0b30: $e6 $f8
    ld c, a                                       ; $0b32: $4f
    ld a, [rBGTileCopyDestX]                      ; $0b33: $fa $53 $c3
    and $f8                                       ; $0b36: $e6 $f8
    sub c                                         ; $0b38: $91
    srl a                                         ; $0b39: $cb $3f
    srl a                                         ; $0b3b: $cb $3f
    srl a                                         ; $0b3d: $cb $3f
    ld [rBGTileCopyValueB], a                     ; $0b3f: $ea $5b $c3
    ld a, [rBGTileCopySourceX]                    ; $0b42: $fa $51 $c3
    ld c, a                                       ; $0b45: $4f
    ld a, [rBGTileCopyDestX]                      ; $0b46: $fa $53 $c3
    sub c                                         ; $0b49: $91
    srl a                                         ; $0b4a: $cb $3f
    srl a                                         ; $0b4c: $cb $3f
    srl a                                         ; $0b4e: $cb $3f
    inc a                                         ; $0b50: $3c
    ld [rBGTileCopyValueC], a                     ; $0b51: $ea $5c $c3
    ld a, [rBGTileCopySourceX]                    ; $0b54: $fa $51 $c3
    and $07                                       ; $0b57: $e6 $07
    ld c, a                                       ; $0b59: $4f
    add $38                                       ; $0b5a: $c6 $38
    ld [rBGTileCopyValueE], a                     ; $0b5c: $ea $5e $c3
    ld b, $00                                     ; $0b5f: $06 $00
    ld hl, BGTileCopyMaskLookupTable              ; $0b61: $21 $59 $0d
    add hl, bc                                    ; $0b64: $09
    ld a, [hl]                                    ; $0b65: $7e
    ld [rBGTileCopyValueF], a                     ; $0b66: $ea $5f $c3
    ld hl, $0d61                                  ; $0b69: $21 $61 $0d
    add hl, bc                                    ; $0b6c: $09
    ld a, [hl]                                    ; $0b6d: $7e
    ld [rBGTileCopyValueG], a                     ; $0b6e: $ea $60 $c3
    ld a, [rBGTileCopyBankAddressLow]             ; $0b71: $fa $55 $c3
    ld c, a                                       ; $0b74: $4f
    ld a, [rBGTileCopyBankAddressHigh]            ; $0b75: $fa $56 $c3
    ld b, a                                       ; $0b78: $47
    ld a, [rActiveROMBank]                        ; $0b79: $fa $12 $c3
    push af                                       ; $0b7c: $f5
    ld a, [rBGTileCopyBank]                       ; $0b7d: $fa $57 $c3
    ld [rActiveROMBank], a                        ; $0b80: $ea $12 $c3
    ld [rROMB], a                                 ; $0b83: $ea $00 $20
    ld de, $c363                                  ; $0b86: $11 $63 $c3
    ld a, [rBGTileCopySourceY]                    ; $0b89: $fa $52 $c3
    ld l, a                                       ; $0b8c: $6f
    ld a, [rBGTileCopySourceX]                    ; $0b8d: $fa $51 $c3
    and $f8                                       ; $0b90: $e6 $f8
    ld h, a                                       ; $0b92: $67

PrepareBGTileCopyLoop::
    xor a                                         ; $0b93: $af
    ld [rBGTileCopyValueH], a                     ; $0b94: $ea $61 $c3
    ld [rBGTileCopyValueI], a                     ; $0b97: $ea $62 $c3
    ld a, [rBGTileCopyValueC]                     ; $0b9a: $fa $5c $c3
    ld [rBGTileCopyValueD], a                     ; $0b9d: $ea $5d $c3
    ld a, [rBGTileCopyMaskHigh]                   ; $0ba0: $fa $59 $c3
    ld [rBGTileCopyMaskLow], a                    ; $0ba3: $ea $58 $c3
    push bc                                       ; $0ba6: $c5
    push hl                                       ; $0ba7: $e5
    ld a, [rBGTileCopyValueB]                     ; $0ba8: $fa $5b $c3
    and a                                         ; $0bab: $a7
    jr nz, .PrepareBGTileCopyRow                  ; $0bac: $20 $0f

    push hl                                       ; $0bae: $e5
    ld a, [rBGTileCopyValueA]                     ; $0baf: $fa $5a $c3
    ld hl, rBGTileCopyMaskHigh                    ; $0bb2: $21 $59 $c3
    and [hl]                                      ; $0bb5: $a6
    ld [rBGTileCopyMaskLow], a                    ; $0bb6: $ea $58 $c3
    pop hl                                        ; $0bb9: $e1
    jp PrepareBGTileCopyNextRow                   ; $0bba: $c3 $6b $0c


.PrepareBGTileCopyRow:
    push hl                                       ; $0bbd: $e5
    call ResolveTilemapTileDataAddressAndStoreToDE; $0bbe: $cd $6a $0d
    ld a, [rBGTileCopyMaskLow]                    ; $0bc1: $fa $58 $c3
    ld [de], a                                    ; $0bc4: $12
    inc de                                        ; $0bc5: $13
    ld a, [bc]                                    ; $0bc6: $0a
    ld l, a                                       ; $0bc7: $6f
    ld a, [rBGTileCopyValueE]                     ; $0bc8: $fa $5e $c3
    ld h, a                                       ; $0bcb: $67
    ld a, [hl]                                    ; $0bcc: $7e
    ld [de], a                                    ; $0bcd: $12
    ld hl, rBGTileCopyValueG                      ; $0bce: $21 $60 $c3
    and [hl]                                      ; $0bd1: $a6
    ld [rBGTileCopyValueH], a                     ; $0bd2: $ea $61 $c3
    inc bc                                        ; $0bd5: $03
    inc de                                        ; $0bd6: $13
    ld a, [bc]                                    ; $0bd7: $0a
    ld l, a                                       ; $0bd8: $6f
    ld a, [rBGTileCopyValueE]                     ; $0bd9: $fa $5e $c3
    ld h, a                                       ; $0bdc: $67
    ld a, [hl]                                    ; $0bdd: $7e
    ld [de], a                                    ; $0bde: $12
    ld hl, rBGTileCopyValueG                      ; $0bdf: $21 $60 $c3
    and [hl]                                      ; $0be2: $a6
    ld [rBGTileCopyValueI], a                     ; $0be3: $ea $62 $c3
    ld a, c                                       ; $0be6: $79
    add $0f                                       ; $0be7: $c6 $0f
    ld c, a                                       ; $0be9: $4f
    ld a, b                                       ; $0bea: $78
    adc $00                                       ; $0beb: $ce $00
    ld b, a                                       ; $0bed: $47
    inc de                                        ; $0bee: $13
    pop hl                                        ; $0bef: $e1
    ld a, h                                       ; $0bf0: $7c
    add $08                                       ; $0bf1: $c6 $08
    ld h, a                                       ; $0bf3: $67
    ld a, [rBGTileCopyValueD]                     ; $0bf4: $fa $5d $c3
    dec a                                         ; $0bf7: $3d
    ld [rBGTileCopyValueD], a                     ; $0bf8: $ea $5d $c3
    ld a, [rBGTileCopyValueB]                     ; $0bfb: $fa $5b $c3
    dec a                                         ; $0bfe: $3d
    jr z, .PrepareBGTileCopyTail                  ; $0bff: $28 $64

.PrepareBGTileCopyRowSpanLoop:
    push af                                       ; $0c01: $f5
    push hl                                       ; $0c02: $e5
    call ResolveTilemapTileDataAddressAndStoreToDE; $0c03: $cd $6a $0d
    ld a, $ff                                     ; $0c06: $3e $ff
    ld [de], a                                    ; $0c08: $12
    inc de                                        ; $0c09: $13
    ld a, [rBGTileCopyValueD]                     ; $0c0a: $fa $5d $c3
    and a                                         ; $0c0d: $a7
    jr z, .PrepareBGTileCopyRowSpanFirstByte      ; $0c0e: $28 $02

    ld a, [bc]                                    ; $0c10: $0a
    inc bc                                        ; $0c11: $03

.PrepareBGTileCopyRowSpanFirstByte:
    ld l, a                                       ; $0c12: $6f
    ld a, [rBGTileCopyValueE]                     ; $0c13: $fa $5e $c3
    ld h, a                                       ; $0c16: $67
    ld a, [hl]                                    ; $0c17: $7e
    push af                                       ; $0c18: $f5
    ld hl, rBGTileCopyValueF                      ; $0c19: $21 $5f $c3
    and [hl]                                      ; $0c1c: $a6
    ld hl, rBGTileCopyValueH                      ; $0c1d: $21 $61 $c3
    or [hl]                                       ; $0c20: $b6
    ld [de], a                                    ; $0c21: $12
    pop af                                        ; $0c22: $f1
    ld hl, rBGTileCopyValueG                      ; $0c23: $21 $60 $c3
    and [hl]                                      ; $0c26: $a6
    ld [rBGTileCopyValueH], a                     ; $0c27: $ea $61 $c3
    inc de                                        ; $0c2a: $13
    ld a, [rBGTileCopyValueD]                     ; $0c2b: $fa $5d $c3
    and a                                         ; $0c2e: $a7
    jr z, .PrepareBGTileCopyRowSpanSecondByte     ; $0c2f: $28 $0b

    ld a, [bc]                                    ; $0c31: $0a
    push af                                       ; $0c32: $f5
    ld a, c                                       ; $0c33: $79
    add $0f                                       ; $0c34: $c6 $0f
    ld c, a                                       ; $0c36: $4f
    ld a, b                                       ; $0c37: $78
    adc $00                                       ; $0c38: $ce $00
    ld b, a                                       ; $0c3a: $47
    pop af                                        ; $0c3b: $f1

.PrepareBGTileCopyRowSpanSecondByte:
    ld l, a                                       ; $0c3c: $6f
    ld a, [rBGTileCopyValueE]                     ; $0c3d: $fa $5e $c3
    ld h, a                                       ; $0c40: $67
    ld a, [hl]                                    ; $0c41: $7e
    push af                                       ; $0c42: $f5
    ld hl, rBGTileCopyValueF                      ; $0c43: $21 $5f $c3
    and [hl]                                      ; $0c46: $a6
    ld hl, rBGTileCopyValueI                      ; $0c47: $21 $62 $c3
    or [hl]                                       ; $0c4a: $b6
    ld [de], a                                    ; $0c4b: $12
    pop af                                        ; $0c4c: $f1
    ld hl, rBGTileCopyValueG                      ; $0c4d: $21 $60 $c3
    and [hl]                                      ; $0c50: $a6
    ld [rBGTileCopyValueI], a                     ; $0c51: $ea $62 $c3
    inc de                                        ; $0c54: $13
    pop hl                                        ; $0c55: $e1
    ld a, h                                       ; $0c56: $7c
    add $08                                       ; $0c57: $c6 $08
    ld h, a                                       ; $0c59: $67
    ld a, [rBGTileCopyValueD]                     ; $0c5a: $fa $5d $c3
    dec a                                         ; $0c5d: $3d
    ld [rBGTileCopyValueD], a                     ; $0c5e: $ea $5d $c3
    pop af                                        ; $0c61: $f1
    dec a                                         ; $0c62: $3d
    jr nz, .PrepareBGTileCopyRowSpanLoop          ; $0c63: $20 $9c

.PrepareBGTileCopyTail:
    ld a, [rBGTileCopyValueA]                     ; $0c65: $fa $5a $c3
    ld [rBGTileCopyMaskLow], a                    ; $0c68: $ea $58 $c3

PrepareBGTileCopyNextRow::
    call ResolveTilemapTileDataAddressAndStoreToDE; $0c6b: $cd $6a $0d
    ld a, [rBGTileCopyMaskLow]                    ; $0c6e: $fa $58 $c3
    ld [de], a                                    ; $0c71: $12
    inc de                                        ; $0c72: $13
    ld a, [rBGTileCopyValueD]                     ; $0c73: $fa $5d $c3
    and a                                         ; $0c76: $a7
    jr z, .PrepareBGTileCopyNextRowPart1          ; $0c77: $28 $02

    ld a, [bc]                                    ; $0c79: $0a
    inc bc                                        ; $0c7a: $03

.PrepareBGTileCopyNextRowPart1:
    ld l, a                                       ; $0c7b: $6f
    ld a, [rBGTileCopyValueE]                     ; $0c7c: $fa $5e $c3
    ld h, a                                       ; $0c7f: $67
    ld a, [hl]                                    ; $0c80: $7e
    push af                                       ; $0c81: $f5
    ld hl, rBGTileCopyValueF                      ; $0c82: $21 $5f $c3
    and [hl]                                      ; $0c85: $a6
    ld hl, rBGTileCopyValueH                      ; $0c86: $21 $61 $c3
    or [hl]                                       ; $0c89: $b6
    ld [de], a                                    ; $0c8a: $12
    pop af                                        ; $0c8b: $f1
    ld hl, rBGTileCopyValueG                      ; $0c8c: $21 $60 $c3
    and [hl]                                      ; $0c8f: $a6
    ld [rBGTileCopyValueH], a                     ; $0c90: $ea $61 $c3
    inc de                                        ; $0c93: $13
    ld a, [rBGTileCopyValueD]                     ; $0c94: $fa $5d $c3
    and a                                         ; $0c97: $a7
    jr z, .PrepareBGTileCopyNextRowPart2          ; $0c98: $28 $0b

    ld a, [bc]                                    ; $0c9a: $0a
    push af                                       ; $0c9b: $f5
    ld a, c                                       ; $0c9c: $79
    add $0f                                       ; $0c9d: $c6 $0f
    ld c, a                                       ; $0c9f: $4f
    ld a, b                                       ; $0ca0: $78
    adc $00                                       ; $0ca1: $ce $00
    ld b, a                                       ; $0ca3: $47
    pop af                                        ; $0ca4: $f1

.PrepareBGTileCopyNextRowPart2:
    ld l, a                                       ; $0ca5: $6f
    ld a, [rBGTileCopyValueE]                     ; $0ca6: $fa $5e $c3
    ld h, a                                       ; $0ca9: $67
    ld a, [hl]                                    ; $0caa: $7e
    push af                                       ; $0cab: $f5
    ld hl, rBGTileCopyValueF                      ; $0cac: $21 $5f $c3
    and [hl]                                      ; $0caf: $a6
    ld hl, rBGTileCopyValueI                      ; $0cb0: $21 $62 $c3
    or [hl]                                       ; $0cb3: $b6
    ld [de], a                                    ; $0cb4: $12
    pop af                                        ; $0cb5: $f1
    ld hl, rBGTileCopyValueG                      ; $0cb6: $21 $60 $c3
    and [hl]                                      ; $0cb9: $a6
    ld [rBGTileCopyValueI], a                     ; $0cba: $ea $62 $c3
    inc de                                        ; $0cbd: $13
    pop hl                                        ; $0cbe: $e1
    pop bc                                        ; $0cbf: $c1
    inc bc                                        ; $0cc0: $03
    inc bc                                        ; $0cc1: $03
    ld a, c                                       ; $0cc2: $79
    and $0f                                       ; $0cc3: $e6 $0f
    jr nz, .PrepareBGTileCopyRowAdvance           ; $0cc5: $20 $08

    ld a, c                                       ; $0cc7: $79
    add $f0                                       ; $0cc8: $c6 $f0
    ld c, a                                       ; $0cca: $4f
    ld a, b                                       ; $0ccb: $78
    adc $00                                       ; $0ccc: $ce $00
    ld b, a                                       ; $0cce: $47

.PrepareBGTileCopyRowAdvance:
    inc l                                         ; $0ccf: $2c
    ld a, [rBGTileCopyDestY]                      ; $0cd0: $fa $54 $c3
    cp l                                          ; $0cd3: $bd
    jp nc, PrepareBGTileCopyLoop                  ; $0cd4: $d2 $93 $0b

    xor a                                         ; $0cd7: $af
    ld [de], a                                    ; $0cd8: $12
    inc de                                        ; $0cd9: $13
    ld [de], a                                    ; $0cda: $12
    ldh a, [rIE]                                  ; $0cdb: $f0 $ff
    push af                                       ; $0cdd: $f5

.WaitForVBlank:
    ldh a, [rLY]                                  ; $0cde: $f0 $44
    cp $80                                        ; $0ce0: $fe $80
    jr nc, .WaitForVBlank                         ; $0ce2: $30 $fa

    ldh a, [rIE]                                  ; $0ce4: $f0 $ff
    res 0, a                                      ; $0ce6: $cb $87
    ldh [rIE], a                                  ; $0ce8: $e0 $ff
    ld bc, $c363                                  ; $0cea: $01 $63 $c3
    ld a, [rLCDCShadow]                           ; $0ced: $fa $2e $c3
    bit 7, a                                      ; $0cf0: $cb $7f
    jr z, .CopyTileDataLoopAlt                    ; $0cf2: $28 $4b

.WaitForDisplayLine:
    ldh a, [rLY]                                  ; $0cf4: $f0 $44
    cp $90                                        ; $0cf6: $fe $90
    jr c, .WaitForDisplayLine                     ; $0cf8: $38 $fa

    ld a, $14                                     ; $0cfa: $3e $14

.CopyTileDataLoop:
    push af                                       ; $0cfc: $f5
    ld a, [bc]                                    ; $0cfd: $0a
    ld l, a                                       ; $0cfe: $6f
    inc bc                                        ; $0cff: $03
    ld a, [bc]                                    ; $0d00: $0a
    ld h, a                                       ; $0d01: $67
    or l                                          ; $0d02: $b5
    jr z, .RestoreInterruptsAndReturn             ; $0d03: $28 $1c

    inc bc                                        ; $0d05: $03
    ld a, [bc]                                    ; $0d06: $0a
    ld e, a                                       ; $0d07: $5f
    inc bc                                        ; $0d08: $03
    ld a, [bc]                                    ; $0d09: $0a
    inc bc                                        ; $0d0a: $03
    xor [hl]                                      ; $0d0b: $ae
    and e                                         ; $0d0c: $a3
    xor [hl]                                      ; $0d0d: $ae
    ld [hl+], a                                   ; $0d0e: $22
    ld a, [bc]                                    ; $0d0f: $0a
    inc bc                                        ; $0d10: $03
    xor [hl]                                      ; $0d11: $ae
    and e                                         ; $0d12: $a3
    xor [hl]                                      ; $0d13: $ae
    ld [hl], a                                    ; $0d14: $77
    pop af                                        ; $0d15: $f1
    dec a                                         ; $0d16: $3d
    jr nz, .CopyTileDataLoop                      ; $0d17: $20 $e3

.WaitForDisplayLineLoop:
    ldh a, [rLY]                                  ; $0d19: $f0 $44
    cp $90                                        ; $0d1b: $fe $90
    jr c, .WaitForDisplayLine                     ; $0d1d: $38 $d5

    jr .WaitForDisplayLineLoop                    ; $0d1f: $18 $f8

.RestoreInterruptsAndReturn:
    pop af                                        ; $0d21: $f1

.RestoreInterruptsAndWaitForVBlank:
    ldh a, [rLY]                                  ; $0d22: $f0 $44
    cp $80                                        ; $0d24: $fe $80
    jr c, .RestoreInterrupts                      ; $0d26: $38 $0c

.WaitForDisplayLineAndRestore:
    ldh a, [rLY]                                  ; $0d28: $f0 $44
    cp $90                                        ; $0d2a: $fe $90
    jr c, .WaitForDisplayLineAndRestore           ; $0d2c: $38 $fa

.WaitForVBlankLoop:
    ldh a, [rLY]                                  ; $0d2e: $f0 $44
    cp $80                                        ; $0d30: $fe $80
    jr nc, .WaitForVBlankLoop                     ; $0d32: $30 $fa

.RestoreInterrupts:
    pop af                                        ; $0d34: $f1
    ldh [rIE], a                                  ; $0d35: $e0 $ff
    pop af                                        ; $0d37: $f1
    ld [rActiveROMBank], a                        ; $0d38: $ea $12 $c3
    ld [rROMB], a                                 ; $0d3b: $ea $00 $20
    ret                                           ; $0d3e: $c9


.CopyTileDataLoopAlt:
    ld a, [bc]                                    ; $0d3f: $0a
    ld l, a                                       ; $0d40: $6f
    inc bc                                        ; $0d41: $03
    ld a, [bc]                                    ; $0d42: $0a
    ld h, a                                       ; $0d43: $67
    or l                                          ; $0d44: $b5
    jr z, .RestoreInterruptsAndWaitForVBlank      ; $0d45: $28 $db

    inc bc                                        ; $0d47: $03
    ld a, [bc]                                    ; $0d48: $0a
    ld e, a                                       ; $0d49: $5f
    inc bc                                        ; $0d4a: $03
    ld a, [bc]                                    ; $0d4b: $0a
    inc bc                                        ; $0d4c: $03
    xor [hl]                                      ; $0d4d: $ae
    and e                                         ; $0d4e: $a3
    xor [hl]                                      ; $0d4f: $ae
    ld [hl+], a                                   ; $0d50: $22
    ld a, [bc]                                    ; $0d51: $0a
    inc bc                                        ; $0d52: $03
    xor [hl]                                      ; $0d53: $ae
    and e                                         ; $0d54: $a3
    xor [hl]                                      ; $0d55: $ae
    ld [hl], a                                    ; $0d56: $77
    jr .CopyTileDataLoopAlt                       ; $0d57: $18 $e6

BGTileCopyMaskLookupTable::
    db $ff, $7f, $3f, $1f, $0f, $07, $03, $01
    db $00, $80, $c0, $e0, $f0, $f8, $fc, $fe
    db $ff

ResolveTilemapTileDataAddressAndStoreToDE::
    push bc                                       ; $0d6a: $c5
    push de                                       ; $0d6b: $d5
    ld b, h                                       ; $0d6c: $44
    ld c, l                                       ; $0d6d: $4d
    ld a, l                                       ; $0d6e: $7d
    and $f8                                       ; $0d6f: $e6 $f8
    srl a                                         ; $0d71: $cb $3f
    srl a                                         ; $0d73: $cb $3f
    ld e, a                                       ; $0d75: $5f
    ld d, $00                                     ; $0d76: $16 $00
    ld a, [rTilemapToTileDataAddressLookupTableLow]; $0d78: $fa $63 $cd
    ld l, a                                       ; $0d7b: $6f
    ld a, [rTilemapToTileDataAddressLookupTableHigh]; $0d7c: $fa $64 $cd
    ld h, a                                       ; $0d7f: $67
    add hl, de                                    ; $0d80: $19
    ld a, [hl+]                                   ; $0d81: $2a

.LoadRowLookupSubtablePointer:
    ld h, [hl]                                    ; $0d82: $66
    ld l, a                                       ; $0d83: $6f

.ResolveTileDataAddressFromRowLookupSubtable:
    ld a, b                                       ; $0d84: $78
    and $f8                                       ; $0d85: $e6 $f8
    srl a                                         ; $0d87: $cb $3f
    srl a                                         ; $0d89: $cb $3f
    ld e, a                                       ; $0d8b: $5f
    ld d, $00                                     ; $0d8c: $16 $00
    add hl, de                                    ; $0d8e: $19
    ld a, [hl+]                                   ; $0d8f: $2a
    ld h, [hl]                                    ; $0d90: $66
    ld l, a                                       ; $0d91: $6f
    ld a, c                                       ; $0d92: $79
    and $07                                       ; $0d93: $e6 $07
    sla a                                         ; $0d95: $cb $27
    add l                                         ; $0d97: $85
    ld l, a                                       ; $0d98: $6f
    pop de                                        ; $0d99: $d1
    pop bc                                        ; $0d9a: $c1
    ld a, l                                       ; $0d9b: $7d
    ld [de], a                                    ; $0d9c: $12
    inc de                                        ; $0d9d: $13
    ld a, h                                       ; $0d9e: $7c
    ld [de], a                                    ; $0d9f: $12
    inc de                                        ; $0da0: $13
    ret                                           ; $0da1: $c9


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
    pop de                                        ; $1972: $d1
    ld bc, $0000                                  ; $1973: $01 $00 $00

.SubtractHundredsLoop:
    cp $64                                        ; $1976: $fe $64
    jr c, .SubtractTensLoop                       ; $1978: $38 $05

    sub $64                                       ; $197a: $d6 $64
    inc c                                         ; $197c: $0c
    jr .SubtractHundredsLoop                      ; $197d: $18 $f7

.SubtractTensLoop:
    cp $0a                                        ; $197f: $fe $0a
    jr c, .ApplyLeadingBlankDigits                ; $1981: $38 $05

    sub $0a                                       ; $1983: $d6 $0a
    inc b                                         ; $1985: $04
    jr .SubtractTensLoop                          ; $1986: $18 $f7

.ApplyLeadingBlankDigits:
    ld l, a                                       ; $1988: $6f
    ld a, c                                       ; $1989: $79
    and a                                         ; $198a: $a7
    jr nz, .PushDigitsAndReturnViaDE              ; $198b: $20 $08

    ld c, $0a                                     ; $198d: $0e $0a
    ld a, b                                       ; $198f: $78
    and a                                         ; $1990: $a7
    jr nz, .PushDigitsAndReturnViaDE              ; $1991: $20 $02

    ld b, $0a                                     ; $1993: $06 $0a

.PushDigitsAndReturnViaDE:
    ld a, c                                       ; $1995: $79
    push af                                       ; $1996: $f5
    ld a, b                                       ; $1997: $78
    push af                                       ; $1998: $f5
    ld a, l                                       ; $1999: $7d
    ld l, e                                       ; $199a: $6b
    ld h, d                                       ; $199b: $62
    jp hl                                         ; $199c: $e9


SplitHLToDecimalDigitsAndPushHundredsTens_Unused::
    pop de                                        ; $199d: $d1
    ld bc, $ff9c                                  ; $199e: $01 $9c $ff
    xor a                                         ; $19a1: $af

.SubtractHundredsFromHLLoop:
    add hl, bc                                    ; $19a2: $09
    bit 7, h                                      ; $19a3: $cb $7c
    jr nz, .PrepareSubtractTensFromHLLoop         ; $19a5: $20 $03

    inc a                                         ; $19a7: $3c
    jr .SubtractHundredsFromHLLoop                ; $19a8: $18 $f8

.PrepareSubtractTensFromHLLoop:
    push af                                       ; $19aa: $f5
    ld bc, $000a                                  ; $19ab: $01 $0a $00
    ld a, $09                                     ; $19ae: $3e $09

.SubtractTensFromHLLoop:
    add hl, bc                                    ; $19b0: $09
    bit 7, h                                      ; $19b1: $cb $7c
    jr z, .PushTensAndReturnViaDE                 ; $19b3: $28 $03

    dec a                                         ; $19b5: $3d
    jr .SubtractTensFromHLLoop                    ; $19b6: $18 $f8

.PushTensAndReturnViaDE:
    push af                                       ; $19b8: $f5
    ld a, l                                       ; $19b9: $7d
    ld l, e                                       ; $19ba: $6b
    ld h, d                                       ; $19bb: $62
    jp hl                                         ; $19bc: $e9


GS06_UpdateOAMSequenceEventAndCopySprite::
    ld e, a                                       ; $19bd: $5f
    ld d, $00                                     ; $19be: $16 $00
    sla e                                         ; $19c0: $cb $23
    rl d                                          ; $19c2: $cb $12
    sla e                                         ; $19c4: $cb $23
    rl d                                          ; $19c6: $cb $12
    sla e                                         ; $19c8: $cb $23
    rl d                                          ; $19ca: $cb $12
    ld hl, rGS06_OAMSequenceEventTableBank        ; $19cc: $21 $a9 $cd
    add hl, de                                    ; $19cf: $19
    ld a, [rActiveROMBank]                        ; $19d0: $fa $12 $c3
    push af                                       ; $19d3: $f5
    ld a, [hl]                                    ; $19d4: $7e
    ld [rActiveROMBank], a                        ; $19d5: $ea $12 $c3
    ld [rROMB], a                                 ; $19d8: $ea $00 $20
    ld hl, rGS06_OAMSequenceEventDelay            ; $19db: $21 $a5 $cd
    add hl, de                                    ; $19de: $19
    ld a, [hl]                                    ; $19df: $7e
    and a                                         ; $19e0: $a7
    jr nz, .TickSequenceEventDelayAndEmit         ; $19e1: $20 $40

    ld hl, rGS06_OAMSequenceEventCursor           ; $19e3: $21 $a6 $cd
    add hl, de                                    ; $19e6: $19
    ld a, [hl]                                    ; $19e7: $7e
    ld c, a                                       ; $19e8: $4f
    ld b, $00                                     ; $19e9: $06 $00

.LoadNextSequenceEvent:
    ld hl, rGS06_OAMSequenceEventTableLow         ; $19eb: $21 $a7 $cd
    add hl, de                                    ; $19ee: $19
    ld a, [hl+]                                   ; $19ef: $2a
    ld h, [hl]                                    ; $19f0: $66
    ld l, a                                       ; $19f1: $6f
    add hl, bc                                    ; $19f2: $09
    ld a, [hl+]                                   ; $19f3: $2a
    and a                                         ; $19f4: $a7
    jr nz, .ApplySequenceEvent                    ; $19f5: $20 $05

    ld bc, $0000                                  ; $19f7: $01 $00 $00
    jr .LoadNextSequenceEvent                     ; $19fa: $18 $ef

.ApplySequenceEvent:
    push hl                                       ; $19fc: $e5
    ld hl, rGS06_OAMSequenceEventDelay            ; $19fd: $21 $a5 $cd
    add hl, de                                    ; $1a00: $19
    ld [hl], a                                    ; $1a01: $77
    pop hl                                        ; $1a02: $e1
    ld a, [hl+]                                   ; $1a03: $2a
    push hl                                       ; $1a04: $e5
    ld hl, rGS06_OAMSequenceBaseLow               ; $1a05: $21 $a2 $cd
    add hl, de                                    ; $1a08: $19
    add [hl]                                      ; $1a09: $86
    ld [hl], a                                    ; $1a0a: $77
    pop hl                                        ; $1a0b: $e1
    ld a, [hl+]                                   ; $1a0c: $2a
    push hl                                       ; $1a0d: $e5
    ld hl, rGS06_OAMSequenceBaseHigh              ; $1a0e: $21 $a3 $cd
    add hl, de                                    ; $1a11: $19
    add [hl]                                      ; $1a12: $86
    ld [hl], a                                    ; $1a13: $77
    pop hl                                        ; $1a14: $e1
    ld a, [hl+]                                   ; $1a15: $2a
    ld hl, rGS06_OAMSequenceEventSpriteId         ; $1a16: $21 $a4 $cd
    add hl, de                                    ; $1a19: $19
    ld [hl], a                                    ; $1a1a: $77
    ld a, c                                       ; $1a1b: $79
    add $04                                       ; $1a1c: $c6 $04
    ld hl, rGS06_OAMSequenceEventCursor           ; $1a1e: $21 $a6 $cd
    add hl, de                                    ; $1a21: $19
    ld [hl], a                                    ; $1a22: $77

.TickSequenceEventDelayAndEmit:
    ld hl, rGS06_OAMSequenceEventDelay            ; $1a23: $21 $a5 $cd
    add hl, de                                    ; $1a26: $19
    dec [hl]                                      ; $1a27: $35
    ld hl, rGS06_OAMSequenceEventSpriteId         ; $1a28: $21 $a4 $cd
    add hl, de                                    ; $1a2b: $19
    ld a, [hl]                                    ; $1a2c: $7e
    cp $ff                                        ; $1a2d: $fe $ff
    ret z                                         ; $1a2f: $c8

    ld hl, rGS06_OAMSequenceBaseLow               ; $1a30: $21 $a2 $cd
    add hl, de                                    ; $1a33: $19
    ld b, [hl]                                    ; $1a34: $46
    ld hl, rGS06_OAMSequenceBaseHigh              ; $1a35: $21 $a3 $cd
    add hl, de                                    ; $1a38: $19
    ld c, [hl]                                    ; $1a39: $4e
    call CopyOAMSpriteById                        ; $1a3a: $cd $ce $20
    pop af                                        ; $1a3d: $f1
    ld [rActiveROMBank], a                        ; $1a3e: $ea $12 $c3
    ld [rROMB], a                                 ; $1a41: $ea $00 $20
    ret                                           ; $1a44: $c9


DrawPuzzleNameFromPointerTable::
    ld a, [rActiveROMBank]                        ; $1a45: $fa $12 $c3
    push af                                       ; $1a48: $f5
    ld a, $03                                     ; $1a49: $3e $03
    ld [rActiveROMBank], a                        ; $1a4b: $ea $12 $c3
    ld [rROMB], a                                 ; $1a4e: $ea $00 $20
    ld a, [rPuzzleDataIndexLow]                   ; $1a51: $fa $07 $d8
    ld c, a                                       ; $1a54: $4f
    ld a, [rPuzzleDataIndexHigh]                  ; $1a55: $fa $08 $d8
    ld b, a                                       ; $1a58: $47
    sla c                                         ; $1a59: $cb $21
    rl b                                          ; $1a5b: $cb $10
    ld hl, $5730                                  ; $1a5d: $21 $30 $57
    add hl, bc                                    ; $1a60: $09
    ld a, [hl+]                                   ; $1a61: $2a
    ld h, [hl]                                    ; $1a62: $66
    ld l, a                                       ; $1a63: $6f

.LoadNextPuzzleNameLine:
    ld a, [hl+]                                   ; $1a64: $2a
    and a                                         ; $1a65: $a7
    jr z, .RestoreBankAndReturn                   ; $1a66: $28 $18

    ld b, a                                       ; $1a68: $47
    ld a, [hl+]                                   ; $1a69: $2a
    ld c, a                                       ; $1a6a: $4f

.DrawPuzzleNameGlyphRun:
    ld a, [hl+]                                   ; $1a6b: $2a
    ld e, a                                       ; $1a6c: $5f
    ld a, [hl+]                                   ; $1a6d: $2a
    ld d, a                                       ; $1a6e: $57
    and e                                         ; $1a6f: $a3
    cp $ff                                        ; $1a70: $fe $ff
    jr z, .LoadNextPuzzleNameLine                 ; $1a72: $28 $f0

    push bc                                       ; $1a74: $c5
    push hl                                       ; $1a75: $e5
    call QueueMessageGlyphBGTileCopyById          ; $1a76: $cd $88 $1a
    pop hl                                        ; $1a79: $e1
    pop bc                                        ; $1a7a: $c1
    add b                                         ; $1a7b: $80
    inc a                                         ; $1a7c: $3c
    ld b, a                                       ; $1a7d: $47
    jr .DrawPuzzleNameGlyphRun                    ; $1a7e: $18 $eb

.RestoreBankAndReturn:
    pop af                                        ; $1a80: $f1
    ld [rActiveROMBank], a                        ; $1a81: $ea $12 $c3
    ld [rROMB], a                                 ; $1a84: $ea $00 $20
    ret                                           ; $1a87: $c9


QueueMessageGlyphBGTileCopyById::
    ld a, [rActiveROMBank]                        ; $1a88: $fa $12 $c3
    push af                                       ; $1a8b: $f5
    ld a, $00                                     ; $1a8c: $3e $00
    ld [rActiveROMBank], a                        ; $1a8e: $ea $12 $c3
    ld [rROMB], a                                 ; $1a91: $ea $00 $20
    push de                                       ; $1a94: $d5
    sla e                                         ; $1a95: $cb $23
    rl d                                          ; $1a97: $cb $12
    ld hl, MessageGlyphSourceOffsetTable          ; $1a99: $21 $b6 $2d
    add hl, de                                    ; $1a9c: $19
    ld e, [hl]                                    ; $1a9d: $5e
    inc hl                                        ; $1a9e: $23
    ld d, [hl]                                    ; $1a9f: $56
    ld hl, $4000                                  ; $1aa0: $21 $00 $40
    add hl, de                                    ; $1aa3: $19
    ld a, l                                       ; $1aa4: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $1aa5: $ea $55 $c3
    ld a, h                                       ; $1aa8: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $1aa9: $ea $56 $c3
    ld a, $0e                                     ; $1aac: $3e $0e
    ld [rBGTileCopyBank], a                       ; $1aae: $ea $57 $c3
    ld a, b                                       ; $1ab1: $78
    ld [rBGTileCopySourceX], a                    ; $1ab2: $ea $51 $c3
    pop de                                        ; $1ab5: $d1
    ld hl, MessageGlyphWidthTable                 ; $1ab6: $21 $b6 $2c
    add hl, de                                    ; $1ab9: $19
    ld a, [hl]                                    ; $1aba: $7e
    and a                                         ; $1abb: $a7
    jr z, .RestoreBankAndReturnGlyphWidth         ; $1abc: $28 $12

    push af                                       ; $1abe: $f5
    add b                                         ; $1abf: $80
    ld [rBGTileCopyDestX], a                      ; $1ac0: $ea $53 $c3
    ld a, c                                       ; $1ac3: $79
    ld [rBGTileCopySourceY], a                    ; $1ac4: $ea $52 $c3
    add $09                                       ; $1ac7: $c6 $09
    ld [rBGTileCopyDestY], a                      ; $1ac9: $ea $54 $c3
    call PrepareBGTileCopy                        ; $1acc: $cd $b3 $08
    pop af                                        ; $1acf: $f1

.RestoreBankAndReturnGlyphWidth:
    ld e, a                                       ; $1ad0: $5f
    pop af                                        ; $1ad1: $f1
    ld [rActiveROMBank], a                        ; $1ad2: $ea $12 $c3
    ld [rROMB], a                                 ; $1ad5: $ea $00 $20
    ld a, e                                       ; $1ad8: $7b
    ret                                           ; $1ad9: $c9


HandleStartupSaveDataIntegrityCheck::
    ld a, [rInputButtonsHeld]                     ; $1ada: $fa $1a $c3
    cp $64                                        ; $1add: $fe $64
    jr nz, .ValidateAndRecoverSaveData            ; $1adf: $20 $05

    call RunEraseDataConfirmationPrompt           ; $1ae1: $cd $22 $1d
    jr z, .ReinitializeSaveData                   ; $1ae4: $28 $36

.ValidateAndRecoverSaveData:
    ld hl, rSaveDataMirrorBlockStart              ; $1ae6: $21 $04 $ad
    call ComputeSumXorChecksumDE                  ; $1ae9: $cd $83 $1b
    ld a, [rSaveDataMirrorChecksumSum]            ; $1aec: $fa $06 $ba
    cp d                                          ; $1aef: $ba
    jr nz, .ValidatePrimarySaveDataBlock          ; $1af0: $20 $14

    ld a, [rSaveDataMirrorChecksumXor]            ; $1af2: $fa $07 $ba
    cp e                                          ; $1af5: $bb
    jr nz, .ValidatePrimarySaveDataBlock          ; $1af6: $20 $0e

    ld hl, rSaveDataMirrorBlockStart              ; $1af8: $21 $04 $ad
    ld de, rSaveDataPrimaryBlockStart             ; $1afb: $11 $00 $a0
    ld bc, $0d02                                  ; $1afe: $01 $02 $0d
    call CopyMemoryBlock                          ; $1b01: $cd $db $04
    jr .FinalizeSaveDataValidation                ; $1b04: $18 $12

.ValidatePrimarySaveDataBlock:
    ld hl, rSaveDataPrimaryBlockStart             ; $1b06: $21 $00 $a0
    call ComputeSumXorChecksumDE                  ; $1b09: $cd $83 $1b
    ld a, [rSaveDataPrimaryChecksumSum]           ; $1b0c: $fa $02 $ad
    cp d                                          ; $1b0f: $ba
    jr nz, .ReinitializeSaveData                  ; $1b10: $20 $0a

    ld a, [rSaveDataPrimaryChecksumXor]           ; $1b12: $fa $03 $ad
    cp e                                          ; $1b15: $bb
    jr nz, .ReinitializeSaveData                  ; $1b16: $20 $04

.FinalizeSaveDataValidation:
    call ValidateSaveMagicSignatures              ; $1b18: $cd $60 $1b
    ret z                                         ; $1b1b: $c8

.ReinitializeSaveData:
    jp ResetSaveDataAndLoadDefaults               ; $1b1c: $c3 $96 $1b


RefreshSaveValidationChecksumsAndMirrors::
    ld hl, HiddenProgrammerCredits                ; $1b1f: $21 $5e $03
    ld de, rHiddenProgrammerCreditsMirror         ; $1b22: $11 $ed $ac
    ld bc, $0010                                  ; $1b25: $01 $10 $00
    call CopyMemoryBlock                          ; $1b28: $cd $db $04
    ld hl, SaveValidationMagicBytes               ; $1b2b: $21 $6e $03
    ld de, rSaveValidationMagicBytesMirror        ; $1b2e: $11 $fd $ac
    ld bc, $0005                                  ; $1b31: $01 $05 $00
    call CopyMemoryBlock                          ; $1b34: $cd $db $04
    ld hl, rSaveDataPrimaryBlockStart             ; $1b37: $21 $00 $a0
    call ComputeSumXorChecksumDE                  ; $1b3a: $cd $83 $1b
    ld a, d                                       ; $1b3d: $7a
    ld [rSaveDataPrimaryChecksumSum], a           ; $1b3e: $ea $02 $ad
    ld a, e                                       ; $1b41: $7b
    ld [rSaveDataPrimaryChecksumXor], a           ; $1b42: $ea $03 $ad
    ld hl, rSaveDataPrimaryBlockStart             ; $1b45: $21 $00 $a0
    ld de, rSaveDataMirrorBlockStart              ; $1b48: $11 $04 $ad
    ld bc, $0d02                                  ; $1b4b: $01 $02 $0d
    call CopyMemoryBlock                          ; $1b4e: $cd $db $04
    ld hl, rSaveDataMirrorBlockStart              ; $1b51: $21 $04 $ad
    call ComputeSumXorChecksumDE                  ; $1b54: $cd $83 $1b
    ld a, d                                       ; $1b57: $7a
    ld [rSaveDataMirrorChecksumSum], a            ; $1b58: $ea $06 $ba
    ld a, e                                       ; $1b5b: $7b
    ld [rSaveDataMirrorChecksumXor], a            ; $1b5c: $ea $07 $ba
    ret                                           ; $1b5f: $c9


ValidateSaveMagicSignatures::
    ld hl, rHiddenProgrammerCreditsMirror         ; $1b60: $21 $ed $ac
    ld de, HiddenProgrammerCredits                ; $1b63: $11 $5e $03
    ld c, $10                                     ; $1b66: $0e $10

.CompareHiddenProgrammerCreditsLoop:
    ld a, [de]                                    ; $1b68: $1a
    cp [hl]                                       ; $1b69: $be
    jr nz, .ReturnWithSignatureCompareFlags       ; $1b6a: $20 $16

    inc de                                        ; $1b6c: $13
    inc hl                                        ; $1b6d: $23
    dec c                                         ; $1b6e: $0d
    jr nz, .CompareHiddenProgrammerCreditsLoop    ; $1b6f: $20 $f7

    ld hl, rSaveValidationMagicBytesMirror        ; $1b71: $21 $fd $ac
    ld de, SaveValidationMagicBytes               ; $1b74: $11 $6e $03
    ld c, $05                                     ; $1b77: $0e $05

.CompareSaveValidationMagicBytesLoop:
    ld a, [de]                                    ; $1b79: $1a
    cp [hl]                                       ; $1b7a: $be
    jr nz, .ReturnWithSignatureCompareFlags       ; $1b7b: $20 $05

    inc de                                        ; $1b7d: $13
    inc hl                                        ; $1b7e: $23
    dec c                                         ; $1b7f: $0d
    jr nz, .CompareSaveValidationMagicBytesLoop   ; $1b80: $20 $f7

.ReturnWithSignatureCompareFlags:
    ret                                           ; $1b82: $c9


ComputeSumXorChecksumDE::
    ld bc, $0d02                                  ; $1b83: $01 $02 $0d
    ld de, $0000                                  ; $1b86: $11 $00 $00

.ChecksumByteLoop:
    ld a, d                                       ; $1b89: $7a
    add [hl]                                      ; $1b8a: $86
    ld d, a                                       ; $1b8b: $57
    ld a, e                                       ; $1b8c: $7b
    xor [hl]                                      ; $1b8d: $ae
    ld e, a                                       ; $1b8e: $5f
    inc hl                                        ; $1b8f: $23
    dec bc                                        ; $1b90: $0b
    ld a, c                                       ; $1b91: $79
    or b                                          ; $1b92: $b0
    jr nz, .ChecksumByteLoop                      ; $1b93: $20 $f4

    ret                                           ; $1b95: $c9


ResetSaveDataAndLoadDefaults::
    ld bc, $0d02                                  ; $1b96: $01 $02 $0d
    ld hl, rSaveDataPrimaryBlockStart             ; $1b99: $21 $00 $a0

.ClearSaveDataLoop:
    xor a                                         ; $1b9c: $af
    ld [hl+], a                                   ; $1b9d: $22
    dec bc                                        ; $1b9e: $0b
    ld a, b                                       ; $1b9f: $78
    or c                                          ; $1ba0: $b1
    jr nz, .ClearSaveDataLoop                     ; $1ba1: $20 $f9

    ld b, $02                                     ; $1ba3: $06 $02
    ld hl, $5267                                  ; $1ba5: $21 $67 $52
    call SwitchBankToBAndJumpToHL                 ; $1ba8: $cd $de $05
    ld b, $02                                     ; $1bab: $06 $02
    ld hl, $5274                                  ; $1bad: $21 $74 $52
    call SwitchBankToBAndJumpToHL                 ; $1bb0: $cd $de $05
    ld b, $02                                     ; $1bb3: $06 $02
    ld hl, $5274                                  ; $1bb5: $21 $74 $52
    call SwitchBankToBAndJumpToHL                 ; $1bb8: $cd $de $05
    ld b, $02                                     ; $1bbb: $06 $02
    ld hl, $5274                                  ; $1bbd: $21 $74 $52
    call SwitchBankToBAndJumpToHL                 ; $1bc0: $cd $de $05
    ld hl, SaveDataDefaultTimeTrialRankingEntries ; $1bc3: $21 $e2 $1b
    ld de, rSaveDataTimeTrialRankingEntries       ; $1bc6: $11 $42 $a0
    ld bc, $0023                                  ; $1bc9: $01 $23 $00
    call CopyMemoryBlock                          ; $1bcc: $cd $db $04
    ld hl, SaveDataDefaultPerSaveSlotModeBGMSelectionIndices; $1bcf: $21 $05 $1c
    ld de, rSaveSlot1EasyPicrossBGMSelectionIndex ; $1bd2: $11 $69 $a0
    ld bc, $000f                                  ; $1bd5: $01 $0f $00
    call CopyMemoryBlock                          ; $1bd8: $cd $db $04
    ld bc, $003c                                  ; $1bdb: $01 $3c $00
    call BusyWaitDelayByBC                        ; $1bde: $cd $03 $06
    ret                                           ; $1be1: $c9


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
    ld b, $3c                                     ; $1c14: $06 $3c
    ld de, rSavedPuzzleCellStatePackedBuffer      ; $1c16: $11 $ad $ac
    ld hl, rPuzzleCellStateBufferStart            ; $1c19: $21 $40 $d6

.PackAndStorePuzzleCellStateByteLoop:
    xor a                                         ; $1c1c: $af
    srl [hl]                                      ; $1c1d: $cb $3e
    srl [hl]                                      ; $1c1f: $cb $3e
    rl a                                          ; $1c21: $cb $17
    srl [hl]                                      ; $1c23: $cb $3e
    rl a                                          ; $1c25: $cb $17
    inc hl                                        ; $1c27: $23
    srl [hl]                                      ; $1c28: $cb $3e
    srl [hl]                                      ; $1c2a: $cb $3e
    rl a                                          ; $1c2c: $cb $17
    srl [hl]                                      ; $1c2e: $cb $3e
    rl a                                          ; $1c30: $cb $17
    inc hl                                        ; $1c32: $23
    srl [hl]                                      ; $1c33: $cb $3e
    srl [hl]                                      ; $1c35: $cb $3e
    rl a                                          ; $1c37: $cb $17
    srl [hl]                                      ; $1c39: $cb $3e
    rl a                                          ; $1c3b: $cb $17
    inc hl                                        ; $1c3d: $23
    srl [hl]                                      ; $1c3e: $cb $3e
    srl [hl]                                      ; $1c40: $cb $3e
    rl a                                          ; $1c42: $cb $17
    srl [hl]                                      ; $1c44: $cb $3e
    rl a                                          ; $1c46: $cb $17
    inc hl                                        ; $1c48: $23
    ld [de], a                                    ; $1c49: $12
    inc de                                        ; $1c4a: $13
    dec b                                         ; $1c4b: $05
    jr nz, .PackAndStorePuzzleCellStateByteLoop   ; $1c4c: $20 $ce

    ld a, [rPuzzleGridWidth]                      ; $1c4e: $fa $00 $d8
    ld [de], a                                    ; $1c51: $12
    inc de                                        ; $1c52: $13
    ld a, [rPuzzleGridHeight]                     ; $1c53: $fa $01 $d8
    ld [de], a                                    ; $1c56: $12
    ld a, [rHintPopupSelection]                   ; $1c57: $fa $33 $d8
    ld [rSavedPuzzleHintPopupSelection], a        ; $1c5a: $ea $a3 $ac
    ld a, [rPuzzleTimerPenaltyStep]               ; $1c5d: $fa $11 $d8
    ld [rSavedPuzzleTimerPenaltyStep], a          ; $1c60: $ea $a4 $ac
    ld a, [rPuzzleTimerMinuteOnes]                ; $1c63: $fa $09 $d8
    ld [rSavedPuzzleTimerMinuteOnes], a           ; $1c66: $ea $a5 $ac
    ld a, [rPuzzleTimerMinuteTens]                ; $1c69: $fa $0a $d8
    ld [rSavedPuzzleTimerMinuteTens], a           ; $1c6c: $ea $a6 $ac
    ld a, [rPuzzleTimerSecondOnes]                ; $1c6f: $fa $0b $d8
    ld [rSavedPuzzleTimerSecondOnes], a           ; $1c72: $ea $a7 $ac
    ld a, [rPuzzleTimerSecondTens]                ; $1c75: $fa $0c $d8
    ld [rSavedPuzzleTimerSecondTens], a           ; $1c78: $ea $a8 $ac
    ld a, [rPuzzleDataIndexLow]                   ; $1c7b: $fa $07 $d8
    ld [rSavedPuzzleDataIndexLow], a              ; $1c7e: $ea $a9 $ac
    ld a, [rPuzzleDataIndexHigh]                  ; $1c81: $fa $08 $d8
    ld [rSavedPuzzleDataIndexHigh], a             ; $1c84: $ea $aa $ac
    ld a, [rPuzzleCursorColumn]                   ; $1c87: $fa $36 $d6
    ld [rSavedPuzzleCursorColumn], a              ; $1c8a: $ea $ab $ac
    ld a, [rPuzzleAndMenuCursorRow]               ; $1c8d: $fa $37 $d6
    ld [rSavedPuzzleCursorRow], a                 ; $1c90: $ea $ac $ac
    jp RefreshSaveValidationChecksumsAndMirrors   ; $1c93: $c3 $1f $1b


RestoreCurrentPuzzleProgressFromSaveData::
    ld a, [rSavedPuzzleHintPopupSelection]        ; $1c96: $fa $a3 $ac
    ld [rHintPopupSelection], a                   ; $1c99: $ea $33 $d8
    ld a, [rSavedPuzzleTimerPenaltyStep]          ; $1c9c: $fa $a4 $ac
    ld [rPuzzleTimerPenaltyStep], a               ; $1c9f: $ea $11 $d8
    ld a, [rSavedPuzzleTimerMinuteOnes]           ; $1ca2: $fa $a5 $ac
    ld [rPuzzleTimerMinuteOnes], a                ; $1ca5: $ea $09 $d8
    ld a, [rSavedPuzzleTimerMinuteTens]           ; $1ca8: $fa $a6 $ac
    ld [rPuzzleTimerMinuteTens], a                ; $1cab: $ea $0a $d8
    ld a, [rSavedPuzzleTimerSecondOnes]           ; $1cae: $fa $a7 $ac
    ld [rPuzzleTimerSecondOnes], a                ; $1cb1: $ea $0b $d8
    ld a, [rSavedPuzzleTimerSecondTens]           ; $1cb4: $fa $a8 $ac
    ld [rPuzzleTimerSecondTens], a                ; $1cb7: $ea $0c $d8
    ld a, [rSavedPuzzleDataIndexLow]              ; $1cba: $fa $a9 $ac
    ld [rPuzzleDataIndexLow], a                   ; $1cbd: $ea $07 $d8
    ld a, [rSavedPuzzleDataIndexHigh]             ; $1cc0: $fa $aa $ac
    ld [rPuzzleDataIndexHigh], a                  ; $1cc3: $ea $08 $d8
    ld a, [rSavedPuzzleCursorColumn]              ; $1cc6: $fa $ab $ac
    ld [rPuzzleCursorColumn], a                   ; $1cc9: $ea $36 $d6
    ld a, [rSavedPuzzleCursorRow]                 ; $1ccc: $fa $ac $ac
    ld [rPuzzleAndMenuCursorRow], a               ; $1ccf: $ea $37 $d6
    call LoadPuzzleDataBuffer                     ; $1cd2: $cd $f1 $07
    ld b, $3c                                     ; $1cd5: $06 $3c
    ld de, rSavedPuzzleCellStatePackedBuffer      ; $1cd7: $11 $ad $ac
    ld hl, rPuzzleCellStateBufferStart            ; $1cda: $21 $40 $d6

.ApplyPackedCell0StateBit1IfSet:
    ld a, [de]                                    ; $1cdd: $1a
    sla a                                         ; $1cde: $cb $27
    jr nc, .ApplyPackedCell0StateBit2IfSet        ; $1ce0: $30 $02

    set 1, [hl]                                   ; $1ce2: $cb $ce

.ApplyPackedCell0StateBit2IfSet:
    sla a                                         ; $1ce4: $cb $27
    jr nc, .AdvanceToPackedCell1AndApplyStateBit1IfSet; $1ce6: $30 $02

    set 2, [hl]                                   ; $1ce8: $cb $d6

.AdvanceToPackedCell1AndApplyStateBit1IfSet:
    inc hl                                        ; $1cea: $23
    sla a                                         ; $1ceb: $cb $27
    jr nc, .ApplyPackedCell1StateBit2IfSet        ; $1ced: $30 $02

    set 1, [hl]                                   ; $1cef: $cb $ce

.ApplyPackedCell1StateBit2IfSet:
    sla a                                         ; $1cf1: $cb $27
    jr nc, .AdvanceToPackedCell2AndApplyStateBit1IfSet; $1cf3: $30 $02

    set 2, [hl]                                   ; $1cf5: $cb $d6

.AdvanceToPackedCell2AndApplyStateBit1IfSet:
    inc hl                                        ; $1cf7: $23
    sla a                                         ; $1cf8: $cb $27
    jr nc, .ApplyPackedCell2StateBit2IfSet        ; $1cfa: $30 $02

    set 1, [hl]                                   ; $1cfc: $cb $ce

.ApplyPackedCell2StateBit2IfSet:
    sla a                                         ; $1cfe: $cb $27
    jr nc, .AdvanceToPackedCell3AndApplyStateBit1IfSet; $1d00: $30 $02

    set 2, [hl]                                   ; $1d02: $cb $d6

.AdvanceToPackedCell3AndApplyStateBit1IfSet:
    inc hl                                        ; $1d04: $23
    sla a                                         ; $1d05: $cb $27
    jr nc, .ApplyPackedCell3StateBit2IfSet        ; $1d07: $30 $02

    set 1, [hl]                                   ; $1d09: $cb $ce

.ApplyPackedCell3StateBit2IfSet:
    sla a                                         ; $1d0b: $cb $27
    jr nc, .AdvancePackedSourceAndContinueUnpackLoop; $1d0d: $30 $02

    set 2, [hl]                                   ; $1d0f: $cb $d6

.AdvancePackedSourceAndContinueUnpackLoop:
    inc hl                                        ; $1d11: $23
    inc de                                        ; $1d12: $13
    dec b                                         ; $1d13: $05
    jr nz, .ApplyPackedCell0StateBit1IfSet        ; $1d14: $20 $c7

    ld a, [rPuzzleGridWidth]                      ; $1d16: $fa $00 $d8
    ld [de], a                                    ; $1d19: $12
    inc de                                        ; $1d1a: $13
    ld a, [rPuzzleGridHeight]                     ; $1d1b: $fa $01 $d8
    ld [de], a                                    ; $1d1e: $12
    jp RefreshSaveValidationChecksumsAndMirrors   ; $1d1f: $c3 $1f $1b


RunEraseDataConfirmationPrompt::
    ld a, $42                                     ; $1d22: $3e $42
    ld [rLCDCShadow], a                           ; $1d24: $ea $2e $c3
    xor a                                         ; $1d27: $af
    ld [rOBP0Shadow], a                           ; $1d28: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $1d2b: $ea $31 $c3
    ld a, $0b                                     ; $1d2e: $3e $0b
    ld hl, $5000                                  ; $1d30: $21 $00 $50
    ld de, $8000                                  ; $1d33: $11 $00 $80
    ld bc, $0300                                  ; $1d36: $01 $00 $03
    call BankedTileCopy                           ; $1d39: $cd $e4 $04
    xor a                                         ; $1d3c: $af
    ld [rStatePhaseTimer], a                      ; $1d3d: $ea $3c $d6
    ld [rSharedAnimationFrameState], a            ; $1d40: $ea $3d $d6
    call ClearShadowOAMBuffer                     ; $1d43: $cd $b6 $05
    call EnableLCDFromShadow                      ; $1d46: $cd $a2 $04
    call EnsureSGBMaskFreezeDisabled              ; $1d49: $cd $a5 $1f
    ld b, $03                                     ; $1d4c: $06 $03
    ld hl, $4694                                  ; $1d4e: $21 $94 $46
    ld c, $00                                     ; $1d51: $0e $00
    ld de, $0004                                  ; $1d53: $11 $04 $00
    call PlayScreenTransitionFadeIn               ; $1d56: $cd $0d $04

.WaitForConfirmOrCancelInput:
    ld a, [rInputButtonsPressed]                  ; $1d59: $fa $1e $c3
    bit 0, a                                      ; $1d5c: $cb $47
    jr nz, .HandleConfirmSelection                ; $1d5e: $20 $59

    bit 1, a                                      ; $1d60: $cb $4f
    jr nz, .HandleCancelSelection                 ; $1d62: $20 $31

    ld bc, $3040                                  ; $1d64: $01 $40 $30
    ld a, $4b                                     ; $1d67: $3e $4b
    call CopyOAMSpriteById                        ; $1d69: $cd $ce $20
    ld a, [rStatePhaseTimer]                      ; $1d6c: $fa $3c $d6
    inc a                                         ; $1d6f: $3c
    cp $46                                        ; $1d70: $fe $46
    jr c, .UpdateCursorBlinkAndTimer              ; $1d72: $38 $09

    ld a, [rSharedAnimationFrameState]            ; $1d74: $fa $3d $d6
    xor $01                                       ; $1d77: $ee $01
    ld [rSharedAnimationFrameState], a            ; $1d79: $ea $3d $d6
    xor a                                         ; $1d7c: $af

.UpdateCursorBlinkAndTimer:
    ld [rStatePhaseTimer], a                      ; $1d7d: $ea $3c $d6
    cp $30                                        ; $1d80: $fe $30
    jr nc, .PresentFrameAndContinueInputLoop      ; $1d82: $30 $0b

    ld a, [rSharedAnimationFrameState]            ; $1d84: $fa $3d $d6
    add $4c                                       ; $1d87: $c6 $4c
    ld bc, $3050                                  ; $1d89: $01 $50 $30
    call CopyOAMSpriteById                        ; $1d8c: $cd $ce $20

.PresentFrameAndContinueInputLoop:
    call ClearShadowOAMBufferFromCursor           ; $1d8f: $cd $c5 $05
    rst RST_08                                    ; $1d92: $cf
    jr .WaitForConfirmOrCancelInput               ; $1d93: $18 $c4

.HandleCancelSelection:
    ld c, $04                                     ; $1d95: $0e $04
    ld a, $02                                     ; $1d97: $3e $02
    call CallSoundCommandDispatcher               ; $1d99: $cd $b6 $03
    ld bc, $003c                                  ; $1d9c: $01 $3c $00
    call BusyWaitDelayByBC                        ; $1d9f: $cd $03 $06
    call ClearShadowOAMBuffer                     ; $1da2: $cd $b6 $05
    ld b, $03                                     ; $1da5: $06 $03
    ld hl, $469f                                  ; $1da7: $21 $9f $46
    ld c, $00                                     ; $1daa: $0e $00
    ld de, $0013                                  ; $1dac: $11 $13 $00
    call PlayScreenTransitionFadeOut              ; $1daf: $cd $4e $04
    call DisableLCDAtVBlank                       ; $1db2: $cd $83 $04
    ld a, $ff                                     ; $1db5: $3e $ff
    and a                                         ; $1db7: $a7
    ret                                           ; $1db8: $c9


.HandleConfirmSelection:
    ld c, $03                                     ; $1db9: $0e $03
    ld a, $02                                     ; $1dbb: $3e $02
    call CallSoundCommandDispatcher               ; $1dbd: $cd $b6 $03
    ld bc, $003c                                  ; $1dc0: $01 $3c $00
    call BusyWaitDelayByBC                        ; $1dc3: $cd $03 $06
    call ClearShadowOAMBuffer                     ; $1dc6: $cd $b6 $05
    ld b, $03                                     ; $1dc9: $06 $03
    ld hl, $469f                                  ; $1dcb: $21 $9f $46
    ld c, $00                                     ; $1dce: $0e $00
    ld de, $0013                                  ; $1dd0: $11 $13 $00
    call PlayScreenTransitionFadeOut              ; $1dd3: $cd $4e $04
    call DisableLCDAtVBlank                       ; $1dd6: $cd $83 $04
    xor a                                         ; $1dd9: $af
    ret                                           ; $1dda: $c9


SendSGBPacketStreamFromBankedAddress::
    ld [rRequestedROMBank], a                     ; $1ddb: $ea $14 $c3
    ld a, [rActiveROMBank]                        ; $1dde: $fa $12 $c3
    push af                                       ; $1de1: $f5
    ld a, [rRequestedROMBank]                     ; $1de2: $fa $14 $c3
    ld [rActiveROMBank], a                        ; $1de5: $ea $12 $c3
    ld [rROMB], a                                 ; $1de8: $ea $00 $20
    call SendSGBPacketStreamFromHL                ; $1deb: $cd $f6 $1d
    pop af                                        ; $1dee: $f1
    ld [rActiveROMBank], a                        ; $1def: $ea $12 $c3
    ld [rROMB], a                                 ; $1df2: $ea $00 $20
    ret                                           ; $1df5: $c9


SendSGBPacketStreamFromHL::
    ld a, [hl]                                    ; $1df6: $7e
    and $07                                       ; $1df7: $e6 $07
    ret z                                         ; $1df9: $c8

    ld b, a                                       ; $1dfa: $47
    ld c, $00                                     ; $1dfb: $0e $00
    ld a, $ff                                     ; $1dfd: $3e $ff
    ld [rSGBPacketTransferBusyFlag], a            ; $1dff: $ea $3e $c3

.SendNextSGBPacket:
    push bc                                       ; $1e02: $c5
    ld a, $00                                     ; $1e03: $3e $00
    ldh [c], a                                    ; $1e05: $e2
    ld a, $30                                     ; $1e06: $3e $30
    ldh [c], a                                    ; $1e08: $e2
    ld b, $10                                     ; $1e09: $06 $10

.SendPacketByteLoop:
    ld e, $08                                     ; $1e0b: $1e $08
    ld a, [hl+]                                   ; $1e0d: $2a
    ld d, a                                       ; $1e0e: $57

.SendPacketBitLoop:
    bit 0, d                                      ; $1e0f: $cb $42
    ld a, $10                                     ; $1e11: $3e $10
    jr nz, .ClockOutCurrentSGBBit                 ; $1e13: $20 $02

    ld a, $20                                     ; $1e15: $3e $20

.ClockOutCurrentSGBBit:
    ldh [c], a                                    ; $1e17: $e2
    ld a, $30                                     ; $1e18: $3e $30
    ldh [c], a                                    ; $1e1a: $e2
    rr d                                          ; $1e1b: $cb $1a
    dec e                                         ; $1e1d: $1d
    jr nz, .SendPacketBitLoop                     ; $1e1e: $20 $ef

    dec b                                         ; $1e20: $05
    jr nz, .SendPacketByteLoop                    ; $1e21: $20 $e8

    ld a, $20                                     ; $1e23: $3e $20
    ldh [c], a                                    ; $1e25: $e2
    ld a, $30                                     ; $1e26: $3e $30
    ldh [c], a                                    ; $1e28: $e2
    pop bc                                        ; $1e29: $c1
    dec b                                         ; $1e2a: $05
    jr z, .ClearSGBTransferBusyFlagAndReturn      ; $1e2b: $28 $05

    call BusyWaitDelayForSGBPacketTiming          ; $1e2d: $cd $37 $1e
    jr .SendNextSGBPacket                         ; $1e30: $18 $d0

.ClearSGBTransferBusyFlagAndReturn:
    xor a                                         ; $1e32: $af
    ld [rSGBPacketTransferBusyFlag], a            ; $1e33: $ea $3e $c3
    ret                                           ; $1e36: $c9


BusyWaitDelayForSGBPacketTiming::
    ld de, $1b58                                  ; $1e37: $11 $58 $1b

.DelayLoop:
    nop                                           ; $1e3a: $00
    nop                                           ; $1e3b: $00
    nop                                           ; $1e3c: $00
    dec de                                        ; $1e3d: $1b
    ld a, d                                       ; $1e3e: $7a
    or e                                          ; $1e3f: $b3
    jr nz, .DelayLoop                             ; $1e40: $20 $f8

    ret                                           ; $1e42: $c9


DetectSuperGameBoyViaMltReqHandshake::
    ld a, $03                                     ; $1e43: $3e $03
    ld hl, $4010                                  ; $1e45: $21 $10 $40
    call SendSGBPacketStreamFromBankedAddress     ; $1e48: $cd $db $1d
    call BusyWaitDelayForSGBPacketTiming          ; $1e4b: $cd $37 $1e
    ldh a, [rP1]                                  ; $1e4e: $f0 $00
    and $03                                       ; $1e50: $e6 $03
    cp $03                                        ; $1e52: $fe $03
    jr nz, .MltReqDetectionFailedPath             ; $1e54: $20 $3b

    ld a, $20                                     ; $1e56: $3e $20
    ldh [rP1], a                                  ; $1e58: $e0 $00
    ldh a, [rP1]                                  ; $1e5a: $f0 $00
    ldh a, [rP1]                                  ; $1e5c: $f0 $00
    ld a, $30                                     ; $1e5e: $3e $30
    ldh [rP1], a                                  ; $1e60: $e0 $00
    ld a, $10                                     ; $1e62: $3e $10
    ldh [rP1], a                                  ; $1e64: $e0 $00
    ldh a, [rP1]                                  ; $1e66: $f0 $00
    ldh a, [rP1]                                  ; $1e68: $f0 $00
    ldh a, [rP1]                                  ; $1e6a: $f0 $00
    ldh a, [rP1]                                  ; $1e6c: $f0 $00
    ldh a, [rP1]                                  ; $1e6e: $f0 $00
    ldh a, [rP1]                                  ; $1e70: $f0 $00
    ld a, $30                                     ; $1e72: $3e $30
    ldh [rP1], a                                  ; $1e74: $e0 $00
    ldh a, [rP1]                                  ; $1e76: $f0 $00
    ldh a, [rP1]                                  ; $1e78: $f0 $00
    ldh a, [rP1]                                  ; $1e7a: $f0 $00
    ldh a, [rP1]                                  ; $1e7c: $f0 $00
    and $03                                       ; $1e7e: $e6 $03
    cp $03                                        ; $1e80: $fe $03
    jr nz, .MltReqDetectionFailedPath             ; $1e82: $20 $0d

    ld a, $03                                     ; $1e84: $3e $03
    ld hl, $4000                                  ; $1e86: $21 $00 $40
    call SendSGBPacketStreamFromBankedAddress     ; $1e89: $cd $db $1d
    call BusyWaitDelayForSGBPacketTiming          ; $1e8c: $cd $37 $1e
    sub a                                         ; $1e8f: $97
    ret                                           ; $1e90: $c9


.MltReqDetectionFailedPath:
    ld a, $03                                     ; $1e91: $3e $03
    ld hl, $4000                                  ; $1e93: $21 $00 $40
    call SendSGBPacketStreamFromBankedAddress     ; $1e96: $cd $db $1d
    call BusyWaitDelayForSGBPacketTiming          ; $1e99: $cd $37 $1e
    scf                                           ; $1e9c: $37
    ret                                           ; $1e9d: $c9


SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress::
    ld [rRequestedROMBank], a                     ; $1e9e: $ea $14 $c3
    ld a, [rActiveROMBank]                        ; $1ea1: $fa $12 $c3
    push af                                       ; $1ea4: $f5
    ld a, [rRequestedROMBank]                     ; $1ea5: $fa $14 $c3
    ld [rActiveROMBank], a                        ; $1ea8: $ea $12 $c3
    ld [rROMB], a                                 ; $1eab: $ea $00 $20
    di                                            ; $1eae: $f3
    push hl                                       ; $1eaf: $e5
    ld a, $e4                                     ; $1eb0: $3e $e4
    ldh [rBGP], a                                 ; $1eb2: $e0 $47
    ld bc, $0010                                  ; $1eb4: $01 $10 $00
    add hl, bc                                    ; $1eb7: $09
    ld de, $8800                                  ; $1eb8: $11 $00 $88
    ld bc, $1000                                  ; $1ebb: $01 $00 $10
    call CopyMemoryBlock                          ; $1ebe: $cd $db $04
    ld hl, $9800                                  ; $1ec1: $21 $00 $98
    ld de, $000c                                  ; $1ec4: $11 $0c $00
    ld a, $80                                     ; $1ec7: $3e $80
    ld c, $0d                                     ; $1ec9: $0e $0d

.FillTransferTilemapRowsLoop:
    ld b, $14                                     ; $1ecb: $06 $14

.FillTransferTilemapRowLoop:
    ld [hl+], a                                   ; $1ecd: $22
    inc a                                         ; $1ece: $3c
    dec b                                         ; $1ecf: $05
    jr nz, .FillTransferTilemapRowLoop            ; $1ed0: $20 $fb

    add hl, de                                    ; $1ed2: $19
    dec c                                         ; $1ed3: $0d
    jr nz, .FillTransferTilemapRowsLoop           ; $1ed4: $20 $f5

    ld a, $81                                     ; $1ed6: $3e $81
    ldh [rLCDC], a                                ; $1ed8: $e0 $40
    ld bc, $0005                                  ; $1eda: $01 $05 $00
    call BusyWaitDelayByBC                        ; $1edd: $cd $03 $06
    pop hl                                        ; $1ee0: $e1
    call SendSGBPacketStreamFromHL                ; $1ee1: $cd $f6 $1d
    ld bc, $0006                                  ; $1ee4: $01 $06 $00
    call BusyWaitDelayByBC                        ; $1ee7: $cd $03 $06
    ld a, [rBGPShadow]                            ; $1eea: $fa $2f $c3
    ldh [rBGP], a                                 ; $1eed: $e0 $47
    ld a, [rLCDCShadow]                           ; $1eef: $fa $2e $c3
    ldh [rLCDC], a                                ; $1ef2: $e0 $40
    ei                                            ; $1ef4: $fb
    pop af                                        ; $1ef5: $f1
    ld [rActiveROMBank], a                        ; $1ef6: $ea $12 $c3
    ld [rROMB], a                                 ; $1ef9: $ea $00 $20
    ret                                           ; $1efc: $c9


RunSGBStartupTransferPacketSequence::
    ld bc, $0078                                  ; $1efd: $01 $78 $00
    call BusyWaitDelayByBC                        ; $1f00: $cd $03 $06
    call EnsureSGBMaskFreezeEnabled               ; $1f03: $cd $87 $1f
    ld a, $03                                     ; $1f06: $3e $03
    ld hl, $4de0                                  ; $1f08: $21 $e0 $4d
    call SendSGBPacketStreamFromBankedAddress     ; $1f0b: $cd $db $1d
    ld bc, $0004                                  ; $1f0e: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f11: $cd $03 $06
    ld a, $03                                     ; $1f14: $3e $03
    ld hl, $4df0                                  ; $1f16: $21 $f0 $4d
    call SendSGBPacketStreamFromBankedAddress     ; $1f19: $cd $db $1d
    ld bc, $0004                                  ; $1f1c: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f1f: $cd $03 $06
    ld a, $03                                     ; $1f22: $3e $03
    ld hl, $4e00                                  ; $1f24: $21 $00 $4e
    call SendSGBPacketStreamFromBankedAddress     ; $1f27: $cd $db $1d
    ld bc, $0004                                  ; $1f2a: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f2d: $cd $03 $06
    ld a, $03                                     ; $1f30: $3e $03
    ld hl, $4e10                                  ; $1f32: $21 $10 $4e
    call SendSGBPacketStreamFromBankedAddress     ; $1f35: $cd $db $1d
    ld bc, $0004                                  ; $1f38: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f3b: $cd $03 $06
    ld a, $03                                     ; $1f3e: $3e $03
    ld hl, $4e20                                  ; $1f40: $21 $20 $4e
    call SendSGBPacketStreamFromBankedAddress     ; $1f43: $cd $db $1d
    ld bc, $0004                                  ; $1f46: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f49: $cd $03 $06
    ld a, $03                                     ; $1f4c: $3e $03
    ld hl, $4e30                                  ; $1f4e: $21 $30 $4e
    call SendSGBPacketStreamFromBankedAddress     ; $1f51: $cd $db $1d
    ld bc, $0004                                  ; $1f54: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f57: $cd $03 $06
    ld a, $03                                     ; $1f5a: $3e $03
    ld hl, $4e40                                  ; $1f5c: $21 $40 $4e
    call SendSGBPacketStreamFromBankedAddress     ; $1f5f: $cd $db $1d
    ld bc, $0004                                  ; $1f62: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f65: $cd $03 $06
    ld a, $03                                     ; $1f68: $3e $03
    ld hl, $4e50                                  ; $1f6a: $21 $50 $4e
    call SendSGBPacketStreamFromBankedAddress     ; $1f6d: $cd $db $1d
    ld bc, $0004                                  ; $1f70: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f73: $cd $03 $06
    ld a, $03                                     ; $1f76: $3e $03
    ld hl, $4730                                  ; $1f78: $21 $30 $47
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $1f7b: $cd $9e $1e
    ld a, $03                                     ; $1f7e: $3e $03
    ld hl, $4030                                  ; $1f80: $21 $30 $40
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $1f83: $cd $9e $1e
    ret                                           ; $1f86: $c9


EnsureSGBMaskFreezeEnabled::
    ld a, [rIsSuperGameBoyMode]                   ; $1f87: $fa $3d $c3
    and a                                         ; $1f8a: $a7
    ret z                                         ; $1f8b: $c8

    ld a, [$c33f]                                 ; $1f8c: $fa $3f $c3
    and a                                         ; $1f8f: $a7
    ret nz                                        ; $1f90: $c0

    ld a, $03                                     ; $1f91: $3e $03
    ld hl, $4e60                                  ; $1f93: $21 $60 $4e
    call SendSGBPacketStreamFromBankedAddress     ; $1f96: $cd $db $1d
    ld bc, $0004                                  ; $1f99: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f9c: $cd $03 $06
    ld a, $ff                                     ; $1f9f: $3e $ff
    ld [$c33f], a                                 ; $1fa1: $ea $3f $c3
    ret                                           ; $1fa4: $c9


EnsureSGBMaskFreezeDisabled::
    ld a, [rIsSuperGameBoyMode]                   ; $1fa5: $fa $3d $c3
    and a                                         ; $1fa8: $a7
    ret z                                         ; $1fa9: $c8

    ld bc, $0002                                  ; $1faa: $01 $02 $00
    call BusyWaitDelayByBC                        ; $1fad: $cd $03 $06
    ld a, [$c33f]                                 ; $1fb0: $fa $3f $c3
    and a                                         ; $1fb3: $a7
    ret z                                         ; $1fb4: $c8

    ld a, $03                                     ; $1fb5: $3e $03
    ld hl, $4e70                                  ; $1fb7: $21 $70 $4e
    call SendSGBPacketStreamFromBankedAddress     ; $1fba: $cd $db $1d
    ld bc, $0004                                  ; $1fbd: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1fc0: $cd $03 $06
    xor a                                         ; $1fc3: $af
    ld [$c33f], a                                 ; $1fc4: $ea $3f $c3
    ret                                           ; $1fc7: $c9


PlayScreenTransitionFadeIn_SGB::
    push de                                       ; $1fc8: $d5
    push bc                                       ; $1fc9: $c5
    push hl                                       ; $1fca: $e5
    ld a, $03                                     ; $1fcb: $3e $03
    ld hl, $4020                                  ; $1fcd: $21 $20 $40
    ld de, rSGBScreenTransitionPAL_SETPacketBuffer; $1fd0: $11 $40 $c3
    ld bc, $0010                                  ; $1fd3: $01 $10 $00
    call BankedTileCopy                           ; $1fd6: $cd $e4 $04
    ld a, $00                                     ; $1fd9: $3e $00
    ld hl, rSGBScreenTransitionPAL_SETPacketBuffer; $1fdb: $21 $40 $c3
    call SendSGBPacketStreamFromBankedAddress     ; $1fde: $cd $db $1d
    pop hl                                        ; $1fe1: $e1
    pop bc                                        ; $1fe2: $c1
    push bc                                       ; $1fe3: $c5
    ld a, [rActiveROMBank]                        ; $1fe4: $fa $12 $c3
    push af                                       ; $1fe7: $f5
    ld a, b                                       ; $1fe8: $78
    ld [rActiveROMBank], a                        ; $1fe9: $ea $12 $c3
    ld [rROMB], a                                 ; $1fec: $ea $00 $20
    ld b, $04                                     ; $1fef: $06 $04

.ApplyFadeStepLoop:
    ld a, [hl+]                                   ; $1ff1: $2a
    ld [rBGPShadow], a                            ; $1ff2: $ea $2f $c3
    ld a, [hl+]                                   ; $1ff5: $2a
    ld [rOBP0Shadow], a                           ; $1ff6: $ea $30 $c3
    ld a, [hl+]                                   ; $1ff9: $2a
    ld [rOBP1Shadow], a                           ; $1ffa: $ea $31 $c3
    push bc                                       ; $1ffd: $c5
    push hl                                       ; $1ffe: $e5
    ld bc, $0002                                  ; $1fff: $01 $02 $00
    call BusyWaitDelayByBC                        ; $2002: $cd $03 $06
    pop hl                                        ; $2005: $e1
    pop bc                                        ; $2006: $c1
    dec b                                         ; $2007: $05
    jr nz, .ApplyFadeStepLoop                     ; $2008: $20 $e7

    ld [rStatePhaseTimer], a                      ; $200a: $ea $3c $d6
    ld [rSharedAnimationFrameState], a            ; $200d: $ea $3d $d6
    ld [rSharedUIAnimationColumnAccumulator], a   ; $2010: $ea $3e $d6
    ld [rHintCursorAnimationRowAccumulator], a    ; $2013: $ea $3f $d6
    pop af                                        ; $2016: $f1
    ld [rActiveROMBank], a                        ; $2017: $ea $12 $c3
    ld [rROMB], a                                 ; $201a: $ea $00 $20
    pop bc                                        ; $201d: $c1
    pop de                                        ; $201e: $d1
    ld a, c                                       ; $201f: $79
    or $80                                        ; $2020: $f6 $80
    ld [rSGBScreenTransitionPAL_SETPacketControl], a; $2022: $ea $49 $c3
    ld b, $04                                     ; $2025: $06 $04

.ApplySGBPalSetFadeStepLoop:
    push bc                                       ; $2027: $c5
    ld hl, rSGBScreenTransitionPAL_SETPacketColorData; $2028: $21 $41 $c3
    ld c, $04                                     ; $202b: $0e $04

.WriteSGBPalSetPacketColorsLoop:
    ld a, e                                       ; $202d: $7b
    ld [hl+], a                                   ; $202e: $22
    ld a, d                                       ; $202f: $7a
    ld [hl+], a                                   ; $2030: $22
    inc de                                        ; $2031: $13
    dec c                                         ; $2032: $0d
    jr nz, .WriteSGBPalSetPacketColorsLoop        ; $2033: $20 $f8

    push de                                       ; $2035: $d5
    ld a, $00                                     ; $2036: $3e $00
    ld hl, rSGBScreenTransitionPAL_SETPacketBuffer; $2038: $21 $40 $c3
    call SendSGBPacketStreamFromBankedAddress     ; $203b: $cd $db $1d
    ld bc, $0006                                  ; $203e: $01 $06 $00
    call BusyWaitDelayByBC                        ; $2041: $cd $03 $06
    pop de                                        ; $2044: $d1
    pop bc                                        ; $2045: $c1
    dec b                                         ; $2046: $05
    jr nz, .ApplySGBPalSetFadeStepLoop            ; $2047: $20 $de

    ret                                           ; $2049: $c9


PlayScreenTransitionFadeOut_SGB::
    push hl                                       ; $204a: $e5
    push bc                                       ; $204b: $c5
    push de                                       ; $204c: $d5
    ld a, $03                                     ; $204d: $3e $03
    ld hl, $4020                                  ; $204f: $21 $20 $40
    ld de, rSGBScreenTransitionPAL_SETPacketBuffer; $2052: $11 $40 $c3
    ld bc, $0010                                  ; $2055: $01 $10 $00
    call BankedTileCopy                           ; $2058: $cd $e4 $04
    pop de                                        ; $205b: $d1
    pop bc                                        ; $205c: $c1
    push bc                                       ; $205d: $c5
    ld a, c                                       ; $205e: $79
    or $80                                        ; $205f: $f6 $80
    ld [rSGBScreenTransitionPAL_SETPacketControl], a; $2061: $ea $49 $c3
    ld b, $04                                     ; $2064: $06 $04

.ApplySGBPalSetFadeStepLoop:
    push bc                                       ; $2066: $c5
    ld hl, $c348                                  ; $2067: $21 $48 $c3
    ld c, $04                                     ; $206a: $0e $04

.WriteSGBPalSetPacketColorsLoop:
    ld a, d                                       ; $206c: $7a
    ld [hl-], a                                   ; $206d: $32
    ld a, e                                       ; $206e: $7b
    ld [hl-], a                                   ; $206f: $32
    dec de                                        ; $2070: $1b
    dec c                                         ; $2071: $0d
    jr nz, .WriteSGBPalSetPacketColorsLoop        ; $2072: $20 $f8

    push de                                       ; $2074: $d5
    ld a, $00                                     ; $2075: $3e $00
    ld hl, rSGBScreenTransitionPAL_SETPacketBuffer; $2077: $21 $40 $c3
    call SendSGBPacketStreamFromBankedAddress     ; $207a: $cd $db $1d
    ld bc, $0006                                  ; $207d: $01 $06 $00
    call BusyWaitDelayByBC                        ; $2080: $cd $03 $06
    pop de                                        ; $2083: $d1
    pop bc                                        ; $2084: $c1
    dec b                                         ; $2085: $05
    jr nz, .ApplySGBPalSetFadeStepLoop            ; $2086: $20 $de

    ld a, $03                                     ; $2088: $3e $03
    ld hl, $4020                                  ; $208a: $21 $20 $40
    ld de, rSGBScreenTransitionPAL_SETPacketBuffer; $208d: $11 $40 $c3
    ld bc, $0010                                  ; $2090: $01 $10 $00
    call BankedTileCopy                           ; $2093: $cd $e4 $04
    ld a, $00                                     ; $2096: $3e $00
    ld hl, rSGBScreenTransitionPAL_SETPacketBuffer; $2098: $21 $40 $c3
    call SendSGBPacketStreamFromBankedAddress     ; $209b: $cd $db $1d
    pop bc                                        ; $209e: $c1
    pop hl                                        ; $209f: $e1
    ld a, [rActiveROMBank]                        ; $20a0: $fa $12 $c3
    push af                                       ; $20a3: $f5
    ld a, b                                       ; $20a4: $78
    ld [rActiveROMBank], a                        ; $20a5: $ea $12 $c3
    ld [rROMB], a                                 ; $20a8: $ea $00 $20
    ld b, $04                                     ; $20ab: $06 $04

.ApplyFadeStepLoop:
    ld a, [hl-]                                   ; $20ad: $3a
    ld [rOBP1Shadow], a                           ; $20ae: $ea $31 $c3
    ld a, [hl-]                                   ; $20b1: $3a
    ld [rOBP0Shadow], a                           ; $20b2: $ea $30 $c3
    ld a, [hl-]                                   ; $20b5: $3a
    ld [rBGPShadow], a                            ; $20b6: $ea $2f $c3
    push bc                                       ; $20b9: $c5
    push hl                                       ; $20ba: $e5
    ld bc, $0002                                  ; $20bb: $01 $02 $00
    call BusyWaitDelayByBC                        ; $20be: $cd $03 $06
    pop hl                                        ; $20c1: $e1
    pop bc                                        ; $20c2: $c1
    dec b                                         ; $20c3: $05
    jr nz, .ApplyFadeStepLoop                     ; $20c4: $20 $e7

    pop af                                        ; $20c6: $f1
    ld [rActiveROMBank], a                        ; $20c7: $ea $12 $c3
    ld [rROMB], a                                 ; $20ca: $ea $00 $20
    ret                                           ; $20cd: $c9


CopyOAMSpriteById::
    push hl                                       ; $20ce: $e5
    ld e, a                                       ; $20cf: $5f
    ld d, $00                                     ; $20d0: $16 $00
    sla e                                         ; $20d2: $cb $23
    rl d                                          ; $20d4: $cb $12
    ld a, [rActiveROMBank]                        ; $20d6: $fa $12 $c3
    push af                                       ; $20d9: $f5
    ld a, $03                                     ; $20da: $3e $03
    ld [rActiveROMBank], a                        ; $20dc: $ea $12 $c3
    ld [rROMB], a                                 ; $20df: $ea $00 $20
    ld hl, $6c63                                  ; $20e2: $21 $63 $6c
    add hl, de                                    ; $20e5: $19
    ld a, [hl+]                                   ; $20e6: $2a
    ld e, a                                       ; $20e7: $5f
    ld a, [hl]                                    ; $20e8: $7e
    ld d, a                                       ; $20e9: $57
    ld a, [rShadowOAMWriteCursor]                 ; $20ea: $fa $11 $c3
    ld l, a                                       ; $20ed: $6f
    ld h, $c0                                     ; $20ee: $26 $c0

.CopyOAMSpriteLoop:
    ld a, [de]                                    ; $20f0: $1a
    cp $ff                                        ; $20f1: $fe $ff
    jr z, .DoneRestoreBank                        ; $20f3: $28 $0f

    add c                                         ; $20f5: $81
    ld [hl+], a                                   ; $20f6: $22
    inc de                                        ; $20f7: $13
    ld a, [de]                                    ; $20f8: $1a
    add b                                         ; $20f9: $80
    ld [hl+], a                                   ; $20fa: $22
    inc de                                        ; $20fb: $13
    ld a, [de]                                    ; $20fc: $1a
    ld [hl+], a                                   ; $20fd: $22
    inc de                                        ; $20fe: $13
    ld a, [de]                                    ; $20ff: $1a
    ld [hl+], a                                   ; $2100: $22
    inc de                                        ; $2101: $13
    jr .CopyOAMSpriteLoop                         ; $2102: $18 $ec

.DoneRestoreBank:
    ld a, l                                       ; $2104: $7d
    ld [rShadowOAMWriteCursor], a                 ; $2105: $ea $11 $c3
    pop af                                        ; $2108: $f1
    ld [rActiveROMBank], a                        ; $2109: $ea $12 $c3
    ld [rROMB], a                                 ; $210c: $ea $00 $20
    pop hl                                        ; $210f: $e1
    ret                                           ; $2110: $c9


GameState_06_HowToPlay_PhaseDispatcher::
    ld a, [rInputButtonsPressed]                  ; $2111: $fa $1e $c3
    ld [rGS06_HowToPlayInputButtonsPressedMirror], a; $2114: $ea $34 $d8
    ld a, [rGS06_HowToPlaySkipRequestedFlag]      ; $2117: $fa $37 $d8
    and a                                         ; $211a: $a7
    jr nz, .SetCancelAndReturnToMenuPhase         ; $211b: $20 $0e

    ld a, [rInputButtonsPressed]                  ; $211d: $fa $1e $c3
    bit 3, a                                      ; $2120: $cb $5f
    jr z, .DispatchCurrentPhase                   ; $2122: $28 $0c

    ld c, $04                                     ; $2124: $0e $04
    ld a, $02                                     ; $2126: $3e $02
    call CallSoundCommandDispatcher               ; $2128: $cd $b6 $03

.SetCancelAndReturnToMenuPhase:
    ld a, $2a                                     ; $212b: $3e $2a
    ld [rStatePhase_Current], a                   ; $212d: $ea $35 $d6

.DispatchCurrentPhase:
    ld a, [rStatePhase_Current]                   ; $2130: $fa $35 $d6
    rst RST_18                                    ; $2133: $df

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
    ld a, $43                                     ; $218a: $3e $43
    ld [rLCDCShadow], a                           ; $218c: $ea $2e $c3
    xor a                                         ; $218f: $af
    ld [rBGPShadow], a                            ; $2190: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $2193: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $2196: $ea $31 $c3
    ld [rSCXShadow], a                            ; $2199: $ea $32 $c3
    ld [rSCYShadow], a                            ; $219c: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $219f: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $21a2: $cd $ab $05
    ld a, $07                                     ; $21a5: $3e $07
    ld hl, $4000                                  ; $21a7: $21 $00 $40
    ld de, $8000                                  ; $21aa: $11 $00 $80
    ld bc, $1800                                  ; $21ad: $01 $00 $18
    call BankedTileCopy                           ; $21b0: $cd $e4 $04
    ld a, $0b                                     ; $21b3: $3e $0b
    ld hl, $6000                                  ; $21b5: $21 $00 $60
    ld de, $9800                                  ; $21b8: $11 $00 $98
    ld bc, $0400                                  ; $21bb: $01 $00 $04
    call BankedTileCopy                           ; $21be: $cd $e4 $04
    ld a, $2f                                     ; $21c1: $3e $2f
    ld [rLYCShadow], a                            ; $21c3: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags             ; $21c6: $21 $37 $c3
    set 6, [hl]                                   ; $21c9: $cb $f6
    ld hl, rIE                                    ; $21cb: $21 $ff $ff
    set 1, [hl]                                   ; $21ce: $cb $ce
    ld a, $01                                     ; $21d0: $3e $01
    ld [rLCDCInterruptDispatchIndex], a           ; $21d2: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $21d5: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $21d8: $ea $50 $c3
    xor a                                         ; $21db: $af
    ld [rPuzzlePostClearFlowFlag], a              ; $21dc: $ea $05 $d8
    ld [rPuzzleTimerCompletionState], a           ; $21df: $ea $06 $d8
    ld [rMarioBlinkAnimationSequenceCursor], a    ; $21e2: $ea $18 $d8
    ld [rMarioBlinkAnimationDelay], a             ; $21e5: $ea $17 $d8
    ld [rPuzzleActionRepeatGuard], a              ; $21e8: $ea $0f $d8
    ld [rCellEffectTargetColumn], a               ; $21eb: $ea $24 $d8
    ld [rCellEffectTargetRow], a                  ; $21ee: $ea $25 $d8
    ld [rPendingCellEffectCode], a                ; $21f1: $ea $23 $d8
    ld [rPendingCellEffectDelay], a               ; $21f4: $ea $22 $d8
    ld [rSharedUIAnimationColumnAccumulator], a   ; $21f7: $ea $3e $d6
    ld [rHintCursorAnimationRowAccumulator], a    ; $21fa: $ea $3f $d6
    ld a, [rLCDCFrameTickCounter]                 ; $21fd: $fa $3b $c3
    ld [rSharedAnimationFrameState], a            ; $2200: $ea $3d $d6
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2203: $cd $3e $32
    xor a                                         ; $2206: $af
    ld [rPuzzleDataIndexLow], a                   ; $2207: $ea $07 $d8
    ld [rPuzzleDataIndexHigh], a                  ; $220a: $ea $08 $d8
    ld a, $02                                     ; $220d: $3e $02
    ld [rPuzzleTimerPenaltyStep], a               ; $220f: $ea $11 $d8
    ld a, $02                                     ; $2212: $3e $02
    ld [rHintCursorAnimationColumnThreshold], a   ; $2214: $ea $12 $d8
    ld [rHintCursorAnimationRowThreshold], a      ; $2217: $ea $13 $d8
    ld a, $05                                     ; $221a: $3e $05
    ld [rCountdownSfxTimer], a                    ; $221c: $ea $2a $d8
    ld a, $96                                     ; $221f: $3e $96
    ld [rTilemapToTileDataAddressLookupTableLow], a; $2221: $ea $63 $cd
    ld a, $10                                     ; $2224: $3e $10
    ld [rTilemapToTileDataAddressLookupTableHigh], a; $2226: $ea $64 $cd
    ld a, $0d                                     ; $2229: $3e $0d
    ld [rMessageScriptStreamResetEntryLow], a     ; $222b: $ea $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $222e: $ea $2b $d8
    ld a, $58                                     ; $2231: $3e $58
    ld [rMessageScriptStreamResetEntryHigh], a    ; $2233: $ea $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $2236: $ea $2c $d8
    ld a, $93                                     ; $2239: $3e $93
    ld [rMessageScriptStreamLimitLow], a          ; $223b: $ea $45 $d8
    ld a, $89                                     ; $223e: $3e $89
    ld [rMessageScriptStreamLimitHigh], a         ; $2240: $ea $46 $d8
    ld a, $30                                     ; $2243: $3e $30
    ld [rMessageScriptStreamPointerLow], a        ; $2245: $ea $2d $d8
    ld a, $6a                                     ; $2248: $3e $6a
    ld [rMessageScriptStreamPointerHigh], a       ; $224a: $ea $2e $d8
    call LoadPuzzleDataBuffer                     ; $224d: $cd $f1 $07
    call $6f30                                    ; $2250: $cd $30 $6f
    call ClearShadowOAMBuffer                     ; $2253: $cd $b6 $05
    call $7beb                                    ; $2256: $cd $eb $7b
    ld c, $00                                     ; $2259: $0e $00
    ld a, $01                                     ; $225b: $3e $01
    call CallSoundCommandDispatcher               ; $225d: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $2260: $cd $99 $03
    ld c, $02                                     ; $2263: $0e $02
    ld a, $01                                     ; $2265: $3e $01
    call CallSoundCommandDispatcher               ; $2267: $cd $b6 $03
    call EnableLCDFromShadow                      ; $226a: $cd $a2 $04
    ld b, $03                                     ; $226d: $06 $03
    ld hl, $46a0                                  ; $226f: $21 $a0 $46
    ld c, $01                                     ; $2272: $0e $01
    ld de, $0014                                  ; $2274: $11 $14 $00
    call PlayScreenTransitionFadeIn               ; $2277: $cd $0d $04
    ld hl, rStatePhase_Current                    ; $227a: $21 $35 $d6
    inc [hl]                                      ; $227d: $34
    call $6fb9                                    ; $227e: $cd $b9 $6f
    ret                                           ; $2281: $c9


GS06_StatePhase_01_Message::
    call $7918                                    ; $2282: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $2285: $cd $93 $30
    call AdvanceMessageScriptStream               ; $2288: $cd $6e $2b
    ret nz                                        ; $228b: $c0

    ld hl, $03ed                                  ; $228c: $21 $ed $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $228f: $cd $b6 $2f
    call ClearShadowOAMBuffer                     ; $2292: $cd $b6 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $2295: $cd $2e $30
    ld a, $ae                                     ; $2298: $3e $ae
    ld [rMessageScriptStreamPointerLow], a        ; $229a: $ea $2d $d8
    ld a, $6a                                     ; $229d: $3e $6a
    ld [rMessageScriptStreamPointerHigh], a       ; $229f: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $22a2: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $22a5: $21 $35 $d6
    inc [hl]                                      ; $22a8: $34
    ret                                           ; $22a9: $c9


GS06_StatePhase_02_HighlightNumbersTop_Prepare::
    call $7918                                    ; $22aa: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $22ad: $cd $93 $30
    call AdvanceMessageScriptStream               ; $22b0: $cd $6e $2b
    ret nz                                        ; $22b3: $c0

    xor a                                         ; $22b4: $af
    ld [rGS06_OAMSequenceEventCursor], a          ; $22b5: $ea $a6 $cd
    ld [rGS06_OAMSequenceEventDelay], a           ; $22b8: $ea $a5 $cd
    ld a, $39                                     ; $22bb: $3e $39
    ld [rGS06_OAMSequenceBaseLow], a              ; $22bd: $ea $a2 $cd
    ld a, $0e                                     ; $22c0: $3e $0e
    ld [rGS06_OAMSequenceBaseHigh], a             ; $22c2: $ea $a3 $cd
    ld a, $e1                                     ; $22c5: $3e $e1
    ld [rGS06_OAMSequenceEventTableLow], a        ; $22c7: $ea $a7 $cd
    ld a, $22                                     ; $22ca: $3e $22
    ld [rGS06_OAMSequenceEventTableHigh], a       ; $22cc: $ea $a8 $cd
    ld a, $00                                     ; $22cf: $3e $00
    ld [rGS06_OAMSequenceEventTableBank], a       ; $22d1: $ea $a9 $cd
    ld a, $78                                     ; $22d4: $3e $78
    ld [rStatePhaseTimer], a                      ; $22d6: $ea $3c $d6
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $22d9: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $22dc: $21 $35 $d6
    inc [hl]                                      ; $22df: $34
    ret                                           ; $22e0: $c9


GS06_StatePhase_02_HighlightNumbersTop_OAMSequenceEventTable::
    db $08, $00, $00, $34
    db $08, $00, $00, $35
    db $08, $00, $00, $36
    db $08, $00, $00, $35
    db $00

GS06_StatePhase_03_HighlightNumbersTop_Animation::
    call $7918                                    ; $22f2: $cd $18 $79
    ld a, $00                                     ; $22f5: $3e $00
    call GS06_UpdateOAMSequenceEventAndCopySprite ; $22f7: $cd $bd $19
    call GS06_ShowMessageArrowAndTickTransitionTimer; $22fa: $cd $12 $30
    ret nz                                        ; $22fd: $c0

    ld a, $04                                     ; $22fe: $3e $04
    ld [rMessageScriptStreamPointerLow], a        ; $2300: $ea $2d $d8
    ld a, $6b                                     ; $2303: $3e $6b
    ld [rMessageScriptStreamPointerHigh], a       ; $2305: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2308: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $230b: $21 $35 $d6
    inc [hl]                                      ; $230e: $34
    ret                                           ; $230f: $c9


GS06_StatePhase_04_HighlightNumbersLeft_Prepare::
    call $7918                                    ; $2310: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $2313: $cd $93 $30
    call AdvanceMessageScriptStream               ; $2316: $cd $6e $2b
    ret nz                                        ; $2319: $c0

    xor a                                         ; $231a: $af
    ld [rGS06_OAMSequenceEventCursor], a          ; $231b: $ea $a6 $cd
    ld [rGS06_OAMSequenceEventDelay], a           ; $231e: $ea $a5 $cd
    ld a, $16                                     ; $2321: $3e $16
    ld [rGS06_OAMSequenceBaseLow], a              ; $2323: $ea $a2 $cd
    ld a, $31                                     ; $2326: $3e $31
    ld [rGS06_OAMSequenceBaseHigh], a             ; $2328: $ea $a3 $cd
    ld a, $47                                     ; $232b: $3e $47
    ld [rGS06_OAMSequenceEventTableLow], a        ; $232d: $ea $a7 $cd
    ld a, $23                                     ; $2330: $3e $23
    ld [rGS06_OAMSequenceEventTableHigh], a       ; $2332: $ea $a8 $cd
    ld a, $00                                     ; $2335: $3e $00
    ld [rGS06_OAMSequenceEventTableBank], a       ; $2337: $ea $a9 $cd
    ld a, $78                                     ; $233a: $3e $78
    ld [rStatePhaseTimer], a                      ; $233c: $ea $3c $d6
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $233f: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $2342: $21 $35 $d6
    inc [hl]                                      ; $2345: $34
    ret                                           ; $2346: $c9


GS06_StatePhase_04_HighlightNumbersLeft_OAMSequenceEventTable::
    db $08, $00, $00, $34
    db $08, $00, $00, $35
    db $08, $00, $00, $36
    db $08, $00, $00, $35
    db $00

GS06_StatePhase_05_HighlightNumbersLeft_Animation::
    call $7918                                    ; $2358: $cd $18 $79
    ld a, $00                                     ; $235b: $3e $00
    call GS06_UpdateOAMSequenceEventAndCopySprite ; $235d: $cd $bd $19
    call GS06_ShowMessageArrowAndTickTransitionTimer; $2360: $cd $12 $30
    ret nz                                        ; $2363: $c0

    ld a, $2a                                     ; $2364: $3e $2a
    ld [rMessageScriptStreamPointerLow], a        ; $2366: $ea $2d $d8
    ld a, $6b                                     ; $2369: $3e $6b
    ld [rMessageScriptStreamPointerHigh], a       ; $236b: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $236e: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $2371: $21 $35 $d6
    inc [hl]                                      ; $2374: $34
    ret                                           ; $2375: $c9


GS06_StatePhase_06_Message::
    call $7918                                    ; $2376: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $2379: $cd $93 $30
    call AdvanceMessageScriptStream               ; $237c: $cd $6e $2b
    ret nz                                        ; $237f: $c0

    ld hl, $03ed                                  ; $2380: $21 $ed $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $2383: $cd $b6 $2f
    call ClearShadowOAMBuffer                     ; $2386: $cd $b6 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $2389: $cd $2e $30
    ld a, $4a                                     ; $238c: $3e $4a
    ld [rMessageScriptStreamPointerLow], a        ; $238e: $ea $2d $d8
    ld a, $6b                                     ; $2391: $3e $6b
    ld [rMessageScriptStreamPointerHigh], a       ; $2393: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2396: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $2399: $21 $35 $d6
    inc [hl]                                      ; $239c: $34
    ret                                           ; $239d: $c9


GS06_StatePhase_07_Message::
    call $7918                                    ; $239e: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $23a1: $cd $93 $30
    call AdvanceMessageScriptStream               ; $23a4: $cd $6e $2b
    ret nz                                        ; $23a7: $c0

    ld hl, $03ed                                  ; $23a8: $21 $ed $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $23ab: $cd $b6 $2f
    call ClearShadowOAMBuffer                     ; $23ae: $cd $b6 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $23b1: $cd $2e $30
    ld a, $bc                                     ; $23b4: $3e $bc
    ld [rMessageScriptStreamPointerLow], a        ; $23b6: $ea $2d $d8
    ld a, $6b                                     ; $23b9: $3e $6b
    ld [rMessageScriptStreamPointerHigh], a       ; $23bb: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $23be: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $23c1: $21 $35 $d6
    inc [hl]                                      ; $23c4: $34
    ret                                           ; $23c5: $c9


GS06_StatePhase_08_SolvePuzzle_Prepare::
    call $7918                                    ; $23c6: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $23c9: $cd $93 $30
    call AdvanceMessageScriptStream               ; $23cc: $cd $6e $2b
    ret nz                                        ; $23cf: $c0

    xor a                                         ; $23d0: $af
    ld [rPuzzleCursorColumn], a                   ; $23d1: $ea $36 $d6
    ld [rPuzzleAndMenuCursorRow], a               ; $23d4: $ea $37 $d6
    xor a                                         ; $23d7: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $23d8: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $23db: $ea $30 $d8
    ld a, $f0                                     ; $23de: $3e $f0
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $23e0: $ea $31 $d8
    ld a, $23                                     ; $23e3: $3e $23
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $23e5: $ea $32 $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $23e8: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $23eb: $21 $35 $d6
    inc [hl]                                      ; $23ee: $34
    ret                                           ; $23ef: $c9


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
    call GS06_TickScriptedInputSequence           ; $246d: $cd $d6 $30
    jr nz, .FrameLoop                             ; $2470: $20 $0d

    ld a, $0a                                     ; $2472: $3e $0a
    ld [rStatePhaseTimer], a                      ; $2474: $ea $3c $d6
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2477: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $247a: $21 $35 $d6
    inc [hl]                                      ; $247d: $34
    ret                                           ; $247e: $c9


.FrameLoop:
    call $71ca                                    ; $247f: $cd $ca $71
    call $713e                                    ; $2482: $cd $3e $71
    call $7918                                    ; $2485: $cd $18 $79
    call GS06_ShowMessageArrowAndTickTransitionTimer; $2488: $cd $12 $30
    call $7222                                    ; $248b: $cd $22 $72
    call $7516                                    ; $248e: $cd $16 $75
    ret                                           ; $2491: $c9


GS06_StatePhase_0a_SolvePuzzle_Finish::
    call GS06_ShowMessageArrowAndTickTransitionTimer; $2492: $cd $12 $30
    ret nz                                        ; $2495: $c0

    call $7635                                    ; $2496: $cd $35 $76
    ld a, $02                                     ; $2499: $3e $02
    ld [rMessageScriptStreamPointerLow], a        ; $249b: $ea $2d $d8
    ld a, $6c                                     ; $249e: $3e $6c
    ld [rMessageScriptStreamPointerHigh], a       ; $24a0: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $24a3: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $24a6: $21 $35 $d6
    inc [hl]                                      ; $24a9: $34
    ret                                           ; $24aa: $c9


GS06_StatePhase_0b_Message::
    call $7918                                    ; $24ab: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $24ae: $cd $93 $30
    call AdvanceMessageScriptStream               ; $24b1: $cd $6e $2b
    ret nz                                        ; $24b4: $c0

    ld hl, $03ed                                  ; $24b5: $21 $ed $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $24b8: $cd $b6 $2f
    call ClearShadowOAMBuffer                     ; $24bb: $cd $b6 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $24be: $cd $2e $30
    ld a, $76                                     ; $24c1: $3e $76
    ld [rMessageScriptStreamPointerLow], a        ; $24c3: $ea $2d $d8
    ld a, $6c                                     ; $24c6: $3e $6c
    ld [rMessageScriptStreamPointerHigh], a       ; $24c8: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $24cb: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $24ce: $21 $35 $d6
    inc [hl]                                      ; $24d1: $34
    ret                                           ; $24d2: $c9


GS06_StatePhase_0c_ResetBoard::
    call $7918                                    ; $24d3: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $24d6: $cd $93 $30
    call AdvanceMessageScriptStream               ; $24d9: $cd $6e $2b
    ret nz                                        ; $24dc: $c0

    ld hl, $03ed                                  ; $24dd: $21 $ed $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $24e0: $cd $b6 $2f
    call ClearShadowOAMBuffer                     ; $24e3: $cd $b6 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $24e6: $cd $2e $30
    call GS06_RedrawGameBoard                     ; $24e9: $cd $14 $31
    call LoadPuzzleDataBuffer                     ; $24ec: $cd $f1 $07
    ld a, $d0                                     ; $24ef: $3e $d0
    ld [rMessageScriptStreamPointerLow], a        ; $24f1: $ea $2d $d8
    ld a, $6c                                     ; $24f4: $3e $6c
    ld [rMessageScriptStreamPointerHigh], a       ; $24f6: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $24f9: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $24fc: $21 $35 $d6
    inc [hl]                                      ; $24ff: $34
    ret                                           ; $2500: $c9


GS06_StatePhase_0d_HighlightNumbersTop_Prepare::
    call $7918                                    ; $2501: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $2504: $cd $93 $30
    call AdvanceMessageScriptStream               ; $2507: $cd $6e $2b
    ret nz                                        ; $250a: $c0

    xor a                                         ; $250b: $af
    ld [rGS06_OAMSequenceEventCursor], a          ; $250c: $ea $a6 $cd
    ld [rGS06_OAMSequenceEventDelay], a           ; $250f: $ea $a5 $cd
    ld a, $39                                     ; $2512: $3e $39
    ld [rGS06_OAMSequenceBaseLow], a              ; $2514: $ea $a2 $cd
    ld a, $0e                                     ; $2517: $3e $0e
    ld [rGS06_OAMSequenceBaseHigh], a             ; $2519: $ea $a3 $cd
    ld a, $38                                     ; $251c: $3e $38
    ld [rGS06_OAMSequenceEventTableLow], a        ; $251e: $ea $a7 $cd
    ld a, $25                                     ; $2521: $3e $25
    ld [rGS06_OAMSequenceEventTableHigh], a       ; $2523: $ea $a8 $cd
    ld a, $00                                     ; $2526: $3e $00
    ld [rGS06_OAMSequenceEventTableBank], a       ; $2528: $ea $a9 $cd
    ld a, $78                                     ; $252b: $3e $78
    ld [rStatePhaseTimer], a                      ; $252d: $ea $3c $d6
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2530: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $2533: $21 $35 $d6
    inc [hl]                                      ; $2536: $34
    ret                                           ; $2537: $c9


GS06_StatePhase_0d_HighlightNumbersTop_OAMSequenceEventTable::
    db $08, $00, $00, $34
    db $08, $00, $00, $35
    db $08, $00, $00, $36
    db $08, $00, $00, $35
    db $00

GS06_StatePhase_0e_HighlightNumbersTop_Animation::
    call $7918                                    ; $2549: $cd $18 $79
    ld a, $00                                     ; $254c: $3e $00
    call GS06_UpdateOAMSequenceEventAndCopySprite ; $254e: $cd $bd $19
    call GS06_ShowMessageArrowAndTickTransitionTimer; $2551: $cd $12 $30
    ret nz                                        ; $2554: $c0

    ld a, $0c                                     ; $2555: $3e $0c
    ld [rMessageScriptStreamPointerLow], a        ; $2557: $ea $2d $d8
    ld a, $6d                                     ; $255a: $3e $6d
    ld [rMessageScriptStreamPointerHigh], a       ; $255c: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $255f: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $2562: $21 $35 $d6
    inc [hl]                                      ; $2565: $34
    ret                                           ; $2566: $c9


GS06_StatePhase_0f_Message::
    call $7918                                    ; $2567: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $256a: $cd $93 $30
    call AdvanceMessageScriptStream               ; $256d: $cd $6e $2b
    ret nz                                        ; $2570: $c0

    ld hl, $03ed                                  ; $2571: $21 $ed $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $2574: $cd $b6 $2f
    call ClearShadowOAMBuffer                     ; $2577: $cd $b6 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $257a: $cd $2e $30
    ld a, $9a                                     ; $257d: $3e $9a
    ld [rMessageScriptStreamPointerLow], a        ; $257f: $ea $2d $d8
    ld a, $6d                                     ; $2582: $3e $6d
    ld [rMessageScriptStreamPointerHigh], a       ; $2584: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2587: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $258a: $21 $35 $d6
    inc [hl]                                      ; $258d: $34
    ret                                           ; $258e: $c9


GS06_StatePhase_10_HighlightNumbersFirstColumn_Prepare::
    call $7918                                    ; $258f: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $2592: $cd $93 $30
    call AdvanceMessageScriptStream               ; $2595: $cd $6e $2b
    ret nz                                        ; $2598: $c0

    xor a                                         ; $2599: $af
    ld [rGS06_OAMSequenceEventCursor], a          ; $259a: $ea $a6 $cd
    ld [rGS06_OAMSequenceEventDelay], a           ; $259d: $ea $a5 $cd
    ld a, $39                                     ; $25a0: $3e $39
    ld [rGS06_OAMSequenceBaseLow], a              ; $25a2: $ea $a2 $cd
    ld a, $0e                                     ; $25a5: $3e $0e
    ld [rGS06_OAMSequenceBaseHigh], a             ; $25a7: $ea $a3 $cd
    ld a, $c6                                     ; $25aa: $3e $c6
    ld [rGS06_OAMSequenceEventTableLow], a        ; $25ac: $ea $a7 $cd
    ld a, $25                                     ; $25af: $3e $25
    ld [rGS06_OAMSequenceEventTableHigh], a       ; $25b1: $ea $a8 $cd
    ld a, $00                                     ; $25b4: $3e $00
    ld [rGS06_OAMSequenceEventTableBank], a       ; $25b6: $ea $a9 $cd
    ld a, $78                                     ; $25b9: $3e $78
    ld [rStatePhaseTimer], a                      ; $25bb: $ea $3c $d6
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $25be: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $25c1: $21 $35 $d6
    inc [hl]                                      ; $25c4: $34
    ret                                           ; $25c5: $c9


GS06_StatePhase_10_HighlightNumbersFirstColumn_OAMSequenceEventTable::
    db $08, $00, $00, $2e
    db $08, $00, $00, $2f
    db $08, $00, $00, $30
    db $08, $00, $00, $2f
    db $00

GS06_StatePhase_11_HighlightNumbersFirstColumn_Animation::
    call $7918                                    ; $25d7: $cd $18 $79
    ld a, $00                                     ; $25da: $3e $00
    call GS06_UpdateOAMSequenceEventAndCopySprite ; $25dc: $cd $bd $19
    call GS06_ShowMessageArrowAndTickTransitionTimer; $25df: $cd $12 $30
    ret nz                                        ; $25e2: $c0

    ld a, $bc                                     ; $25e3: $3e $bc
    ld [rMessageScriptStreamPointerLow], a        ; $25e5: $ea $2d $d8
    ld a, $6d                                     ; $25e8: $3e $6d
    ld [rMessageScriptStreamPointerHigh], a       ; $25ea: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $25ed: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $25f0: $21 $35 $d6
    inc [hl]                                      ; $25f3: $34
    ret                                           ; $25f4: $c9


GS06_StatePhase_12_SolveFirstColumn_Prepare::
    call $7918                                    ; $25f5: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $25f8: $cd $93 $30
    call AdvanceMessageScriptStream               ; $25fb: $cd $6e $2b
    ret nz                                        ; $25fe: $c0

    xor a                                         ; $25ff: $af
    ld [rPuzzleCursorColumn], a                   ; $2600: $ea $36 $d6
    ld [rPuzzleAndMenuCursorRow], a               ; $2603: $ea $37 $d6
    xor a                                         ; $2606: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $2607: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $260a: $ea $30 $d8
    ld a, $1f                                     ; $260d: $3e $1f
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $260f: $ea $31 $d8
    ld a, $26                                     ; $2612: $3e $26
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $2614: $ea $32 $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2617: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $261a: $21 $35 $d6
    inc [hl]                                      ; $261d: $34
    ret                                           ; $261e: $c9


GS06_SolveFirstColumnInputSequenceData::
    db $00, $00, $01, $80, $01, $80, $01, $80
    db $01, $80, $01, $00, $00, $00, $00, $ff

GS06_StatePhase_13_SolveFirstColumn_Animation::
    call GS06_TickScriptedInputSequence           ; $262f: $cd $d6 $30
    jr nz, .FrameLoop                             ; $2632: $20 $24

    ld hl, $03ed                                  ; $2634: $21 $ed $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $2637: $cd $b6 $2f
    call ClearShadowOAMBuffer                     ; $263a: $cd $b6 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $263d: $cd $2e $30
    call GS06_RedrawGameBoard                     ; $2640: $cd $14 $31
    call LoadPuzzleDataBuffer                     ; $2643: $cd $f1 $07
    ld a, $24                                     ; $2646: $3e $24
    ld [rMessageScriptStreamPointerLow], a        ; $2648: $ea $2d $d8
    ld a, $6e                                     ; $264b: $3e $6e
    ld [rMessageScriptStreamPointerHigh], a       ; $264d: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2650: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $2653: $21 $35 $d6
    inc [hl]                                      ; $2656: $34
    ret                                           ; $2657: $c9


.FrameLoop:
    call $71ca                                    ; $2658: $cd $ca $71
    call $713e                                    ; $265b: $cd $3e $71
    call $7918                                    ; $265e: $cd $18 $79
    call GS06_ShowMessageArrowAndTickTransitionTimer; $2661: $cd $12 $30
    call $7222                                    ; $2664: $cd $22 $72
    call $7516                                    ; $2667: $cd $16 $75
    ret                                           ; $266a: $c9


GS06_StatePhase_14_HighlightNumbersLeft_Prepare::
    call $7918                                    ; $266b: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $266e: $cd $93 $30
    call AdvanceMessageScriptStream               ; $2671: $cd $6e $2b
    ret nz                                        ; $2674: $c0

    xor a                                         ; $2675: $af
    ld [rGS06_OAMSequenceEventCursor], a          ; $2676: $ea $a6 $cd
    ld [rGS06_OAMSequenceEventDelay], a           ; $2679: $ea $a5 $cd
    ld a, $16                                     ; $267c: $3e $16
    ld [rGS06_OAMSequenceBaseLow], a              ; $267e: $ea $a2 $cd
    ld a, $31                                     ; $2681: $3e $31
    ld [rGS06_OAMSequenceBaseHigh], a             ; $2683: $ea $a3 $cd
    ld a, $a2                                     ; $2686: $3e $a2
    ld [rGS06_OAMSequenceEventTableLow], a        ; $2688: $ea $a7 $cd
    ld a, $26                                     ; $268b: $3e $26
    ld [rGS06_OAMSequenceEventTableHigh], a       ; $268d: $ea $a8 $cd
    ld a, $00                                     ; $2690: $3e $00
    ld [rGS06_OAMSequenceEventTableBank], a       ; $2692: $ea $a9 $cd
    ld a, $78                                     ; $2695: $3e $78
    ld [rStatePhaseTimer], a                      ; $2697: $ea $3c $d6
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $269a: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $269d: $21 $35 $d6
    inc [hl]                                      ; $26a0: $34
    ret                                           ; $26a1: $c9


GS06_StatePhase_14_HighlightNumbersLeft_OAMSequenceEventTable::
    db $08, $00, $00, $34
    db $08, $00, $00, $35
    db $08, $00, $00, $36
    db $08, $00, $00, $35
    db $00

GS06_StatePhase_15_HighlightNumbersLeft_Animation::
    call $7918                                    ; $26b3: $cd $18 $79
    ld a, $00                                     ; $26b6: $3e $00
    call GS06_UpdateOAMSequenceEventAndCopySprite ; $26b8: $cd $bd $19
    call GS06_ShowMessageArrowAndTickTransitionTimer; $26bb: $cd $12 $30
    ret nz                                        ; $26be: $c0

    ld a, $6c                                     ; $26bf: $3e $6c
    ld [rMessageScriptStreamPointerLow], a        ; $26c1: $ea $2d $d8
    ld a, $6e                                     ; $26c4: $3e $6e
    ld [rMessageScriptStreamPointerHigh], a       ; $26c6: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $26c9: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $26cc: $21 $35 $d6
    inc [hl]                                      ; $26cf: $34
    ret                                           ; $26d0: $c9


GS06_StatePhase_16_Message::
    call $7918                                    ; $26d1: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $26d4: $cd $93 $30
    call AdvanceMessageScriptStream               ; $26d7: $cd $6e $2b
    ret nz                                        ; $26da: $c0

    ld hl, $03ed                                  ; $26db: $21 $ed $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $26de: $cd $b6 $2f
    call ClearShadowOAMBuffer                     ; $26e1: $cd $b6 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $26e4: $cd $2e $30
    ld a, $04                                     ; $26e7: $3e $04
    ld [rMessageScriptStreamPointerLow], a        ; $26e9: $ea $2d $d8
    ld a, $6f                                     ; $26ec: $3e $6f
    ld [rMessageScriptStreamPointerHigh], a       ; $26ee: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $26f1: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $26f4: $21 $35 $d6
    inc [hl]                                      ; $26f7: $34
    ret                                           ; $26f8: $c9


GS06_StatePhase_17_HighlightNumbersSecondRow_Prepare::
    call $7918                                    ; $26f9: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $26fc: $cd $93 $30
    call AdvanceMessageScriptStream               ; $26ff: $cd $6e $2b
    ret nz                                        ; $2702: $c0

    xor a                                         ; $2703: $af
    ld [rGS06_OAMSequenceEventCursor], a          ; $2704: $ea $a6 $cd
    ld [rGS06_OAMSequenceEventDelay], a           ; $2707: $ea $a5 $cd
    ld a, $16                                     ; $270a: $3e $16
    ld [rGS06_OAMSequenceBaseLow], a              ; $270c: $ea $a2 $cd
    ld a, $37                                     ; $270f: $3e $37
    ld [rGS06_OAMSequenceBaseHigh], a             ; $2711: $ea $a3 $cd
    ld a, $30                                     ; $2714: $3e $30
    ld [rGS06_OAMSequenceEventTableLow], a        ; $2716: $ea $a7 $cd
    ld a, $27                                     ; $2719: $3e $27
    ld [rGS06_OAMSequenceEventTableHigh], a       ; $271b: $ea $a8 $cd
    ld a, $00                                     ; $271e: $3e $00
    ld [rGS06_OAMSequenceEventTableBank], a       ; $2720: $ea $a9 $cd
    ld a, $78                                     ; $2723: $3e $78
    ld [rStatePhaseTimer], a                      ; $2725: $ea $3c $d6
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2728: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $272b: $21 $35 $d6
    inc [hl]                                      ; $272e: $34
    ret                                           ; $272f: $c9


GS06_StatePhase_17_HighlightNumbersSecondRow_OAMSequenceEventTable::
    db $08, $00, $00, $31
    db $08, $00, $00, $32
    db $08, $00, $00, $33
    db $08, $00, $00, $32
    db $00

GS06_StatePhase_18_HighlightNumbersSecondRow_Animation::
    call $7918                                    ; $2741: $cd $18 $79
    ld a, $00                                     ; $2744: $3e $00
    call GS06_UpdateOAMSequenceEventAndCopySprite ; $2746: $cd $bd $19
    call GS06_ShowMessageArrowAndTickTransitionTimer; $2749: $cd $12 $30
    ret nz                                        ; $274c: $c0

    ld a, $36                                     ; $274d: $3e $36
    ld [rMessageScriptStreamPointerLow], a        ; $274f: $ea $2d $d8
    ld a, $6f                                     ; $2752: $3e $6f
    ld [rMessageScriptStreamPointerHigh], a       ; $2754: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2757: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $275a: $21 $35 $d6
    inc [hl]                                      ; $275d: $34
    ret                                           ; $275e: $c9


GS06_StatePhase_19_SolveSecondRow_Prepare::
    call $7918                                    ; $275f: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $2762: $cd $93 $30
    call AdvanceMessageScriptStream               ; $2765: $cd $6e $2b
    ret nz                                        ; $2768: $c0

    xor a                                         ; $2769: $af
    ld [rPuzzleCursorColumn], a                   ; $276a: $ea $36 $d6
    ld a, $01                                     ; $276d: $3e $01
    ld [rPuzzleAndMenuCursorRow], a               ; $276f: $ea $37 $d6
    xor a                                         ; $2772: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $2773: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $2776: $ea $30 $d8
    ld a, $8b                                     ; $2779: $3e $8b
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $277b: $ea $31 $d8
    ld a, $27                                     ; $277e: $3e $27
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $2780: $ea $32 $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2783: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $2786: $21 $35 $d6
    inc [hl]                                      ; $2789: $34
    ret                                           ; $278a: $c9


GS06_SolveSecondRowInputSequenceData::
    db $00, $00, $01, $10, $01, $10, $01, $00
    db $00, $10, $10, $00, $00, $01, $00, $00
    db $00, $00, $ff

GS06_StatePhase_1a_SolveSecondRow_Animation::
    call GS06_TickScriptedInputSequence           ; $279e: $cd $d6 $30
    jr nz, .FrameLoop                             ; $27a1: $20 $1e

    ld hl, $03ed                                  ; $27a3: $21 $ed $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $27a6: $cd $b6 $2f
    call ClearShadowOAMBuffer                     ; $27a9: $cd $b6 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $27ac: $cd $2e $30
    ld a, $fe                                     ; $27af: $3e $fe
    ld [rMessageScriptStreamPointerLow], a        ; $27b1: $ea $2d $d8
    ld a, $6f                                     ; $27b4: $3e $6f
    ld [rMessageScriptStreamPointerHigh], a       ; $27b6: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $27b9: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $27bc: $21 $35 $d6
    inc [hl]                                      ; $27bf: $34
    ret                                           ; $27c0: $c9


.FrameLoop:
    call $71ca                                    ; $27c1: $cd $ca $71
    call $713e                                    ; $27c4: $cd $3e $71
    call $7918                                    ; $27c7: $cd $18 $79
    call GS06_ShowMessageArrowAndTickTransitionTimer; $27ca: $cd $12 $30
    call $7222                                    ; $27cd: $cd $22 $72
    call $7516                                    ; $27d0: $cd $16 $75
    ret                                           ; $27d3: $c9


GS06_StatePhase_1b_Message::
    call $7918                                    ; $27d4: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $27d7: $cd $93 $30
    call AdvanceMessageScriptStream               ; $27da: $cd $6e $2b
    ret nz                                        ; $27dd: $c0

    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $27de: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $27e1: $21 $35 $d6
    inc [hl]                                      ; $27e4: $34
    ret                                           ; $27e5: $c9


GS06_StatePhase_1c_DecrementPuzzleTimer::
    call $7918                                    ; $27e6: $cd $18 $79
    call GS06_ShowMessageArrowAndTickTransitionTimer; $27e9: $cd $12 $30
    call GS06_DecrementPuzzleTimer                ; $27ec: $cd $60 $31
    call $7cc8                                    ; $27ef: $cd $c8 $7c
    ld a, [rPuzzleTimerCompletionState]           ; $27f2: $fa $06 $d8
    cp $01                                        ; $27f5: $fe $01
    ret nz                                        ; $27f7: $c0

    ld a, $6a                                     ; $27f8: $3e $6a
    ld [rMessageScriptStreamPointerLow], a        ; $27fa: $ea $2d $d8
    ld a, $70                                     ; $27fd: $3e $70
    ld [rMessageScriptStreamPointerHigh], a       ; $27ff: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2802: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $2805: $21 $35 $d6
    inc [hl]                                      ; $2808: $34
    ret                                           ; $2809: $c9


GS06_StatePhase_1d_GameOverMessage::
    call $7918                                    ; $280a: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $280d: $cd $93 $30
    call AdvanceMessageScriptStream               ; $2810: $cd $6e $2b
    ret nz                                        ; $2813: $c0

    call $7ce3                                    ; $2814: $cd $e3 $7c
    ld hl, $03ed                                  ; $2817: $21 $ed $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $281a: $cd $b6 $2f
    call ClearShadowOAMBuffer                     ; $281d: $cd $b6 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $2820: $cd $2e $30
    call GS06_RedrawGameBoard_RestoreStateAfterGameOver; $2823: $cd $3a $31
    call $7beb                                    ; $2826: $cd $eb $7b
    ld a, $9c                                     ; $2829: $3e $9c
    ld [rMessageScriptStreamPointerLow], a        ; $282b: $ea $2d $d8
    ld a, $70                                     ; $282e: $3e $70
    ld [rMessageScriptStreamPointerHigh], a       ; $2830: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2833: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $2836: $21 $35 $d6
    inc [hl]                                      ; $2839: $34
    ret                                           ; $283a: $c9


GS06_StatePhase_1e_MakeMistake_Prepare::
    call $7918                                    ; $283b: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $283e: $cd $93 $30
    call AdvanceMessageScriptStream               ; $2841: $cd $6e $2b
    ret nz                                        ; $2844: $c0

    ld a, $03                                     ; $2845: $3e $03
    ld [rPuzzleCursorColumn], a                   ; $2847: $ea $36 $d6
    ld a, $01                                     ; $284a: $3e $01
    ld [rPuzzleAndMenuCursorRow], a               ; $284c: $ea $37 $d6
    xor a                                         ; $284f: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $2850: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $2853: $ea $30 $d8
    ld a, $68                                     ; $2856: $3e $68
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $2858: $ea $31 $d8
    ld a, $28                                     ; $285b: $3e $28
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $285d: $ea $32 $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2860: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $2863: $21 $35 $d6
    inc [hl]                                      ; $2866: $34
    ret                                           ; $2867: $c9


GS06_MakeMistakeInputSequenceData::
    db $00, $00, $01, $00, $00, $00, $00, $ff

GS06_StatePhase_1f_MakeMistake_Animation::
    call GS06_TickScriptedInputSequence           ; $2870: $cd $d6 $30
    jr nz, .FrameLoop                             ; $2873: $20 $12

    ld a, $1a                                     ; $2875: $3e $1a
    ld [rMessageScriptStreamPointerLow], a        ; $2877: $ea $2d $d8
    ld a, $71                                     ; $287a: $3e $71
    ld [rMessageScriptStreamPointerHigh], a       ; $287c: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $287f: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $2882: $21 $35 $d6
    inc [hl]                                      ; $2885: $34
    ret                                           ; $2886: $c9


.FrameLoop:
    call $71ca                                    ; $2887: $cd $ca $71
    call $713e                                    ; $288a: $cd $3e $71
    call $7918                                    ; $288d: $cd $18 $79
    call GS06_ShowMessageArrowAndTickTransitionTimer; $2890: $cd $12 $30
    call $7222                                    ; $2893: $cd $22 $72
    call $7516                                    ; $2896: $cd $16 $75
    ret                                           ; $2899: $c9


GS06_StatePhase_20_Message::
    call $7918                                    ; $289a: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $289d: $cd $93 $30
    call AdvanceMessageScriptStream               ; $28a0: $cd $6e $2b
    ret nz                                        ; $28a3: $c0

    ld hl, $03ed                                  ; $28a4: $21 $ed $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $28a7: $cd $b6 $2f
    call ClearShadowOAMBuffer                     ; $28aa: $cd $b6 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $28ad: $cd $2e $30
    ld a, $48                                     ; $28b0: $3e $48
    ld [rMessageScriptStreamPointerLow], a        ; $28b2: $ea $2d $d8
    ld a, $71                                     ; $28b5: $3e $71
    ld [rMessageScriptStreamPointerHigh], a       ; $28b7: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $28ba: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $28bd: $21 $35 $d6
    inc [hl]                                      ; $28c0: $34
    ret                                           ; $28c1: $c9


GS06_StatePhase_21_MarkWithX_Prepare::
    call $7918                                    ; $28c2: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $28c5: $cd $93 $30
    call AdvanceMessageScriptStream               ; $28c8: $cd $6e $2b
    ret nz                                        ; $28cb: $c0

    ld a, $03                                     ; $28cc: $3e $03
    ld [rPuzzleCursorColumn], a                   ; $28ce: $ea $36 $d6
    ld a, $01                                     ; $28d1: $3e $01
    ld [rPuzzleAndMenuCursorRow], a               ; $28d3: $ea $37 $d6
    xor a                                         ; $28d6: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $28d7: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $28da: $ea $30 $d8
    ld a, $ef                                     ; $28dd: $3e $ef
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $28df: $ea $31 $d8
    ld a, $28                                     ; $28e2: $3e $28
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $28e4: $ea $32 $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $28e7: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $28ea: $21 $35 $d6
    inc [hl]                                      ; $28ed: $34
    ret                                           ; $28ee: $c9


GS06_MarkWithXInputSequenceData::
    db $00, $00, $02, $00, $00, $00, $00, $ff

GS06_StatePhase_22_MarkWithX_Animation::
    call GS06_TickScriptedInputSequence           ; $28f7: $cd $d6 $30
    jr nz, .FrameLoop                             ; $28fa: $20 $27

    ld hl, $03ed                                  ; $28fc: $21 $ed $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $28ff: $cd $b6 $2f
    call ClearShadowOAMBuffer                     ; $2902: $cd $b6 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $2905: $cd $2e $30
    call GS06_RedrawGameBoard                     ; $2908: $cd $14 $31
    call LoadPuzzleDataBuffer                     ; $290b: $cd $f1 $07
    call $7beb                                    ; $290e: $cd $eb $7b
    ld a, $ca                                     ; $2911: $3e $ca
    ld [rMessageScriptStreamPointerLow], a        ; $2913: $ea $2d $d8
    ld a, $71                                     ; $2916: $3e $71
    ld [rMessageScriptStreamPointerHigh], a       ; $2918: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $291b: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $291e: $21 $35 $d6
    inc [hl]                                      ; $2921: $34
    ret                                           ; $2922: $c9


.FrameLoop:
    call $71ca                                    ; $2923: $cd $ca $71
    call $713e                                    ; $2926: $cd $3e $71
    call $7918                                    ; $2929: $cd $18 $79
    call GS06_ShowMessageArrowAndTickTransitionTimer; $292c: $cd $12 $30
    call $7222                                    ; $292f: $cd $22 $72
    call $7516                                    ; $2932: $cd $16 $75
    ret                                           ; $2935: $c9


GS06_StatePhase_23_WithHintPopUp_Prepare::
    call $7918                                    ; $2936: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $2939: $cd $93 $30
    call AdvanceMessageScriptStream               ; $293c: $cd $6e $2b
    ret nz                                        ; $293f: $c0

    ld a, $01                                     ; $2940: $3e $01
    ld [rHintPopupSelection], a                   ; $2942: $ea $33 $d8
    ld a, $06                                     ; $2945: $3e $06
    ld hl, $7800                                  ; $2947: $21 $00 $78
    ld de, $8500                                  ; $294a: $11 $00 $85
    ld bc, $0200                                  ; $294d: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $2950: $cd $38 $05
    xor a                                         ; $2953: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $2954: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $2957: $ea $30 $d8
    ld a, $6c                                     ; $295a: $3e $6c
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $295c: $ea $31 $d8
    ld a, $29                                     ; $295f: $3e $29
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $2961: $ea $32 $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2964: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $2967: $21 $35 $d6
    inc [hl]                                      ; $296a: $34
    ret                                           ; $296b: $c9


GS06_WithHintPopUpInputSequenceData::
    db $00, $00, $20, $00, $00, $ff

GS06_StatePhase_24_WithHintPopUp_Demonstration::
    call GS06_DrawWithHintPopUp                   ; $2972: $cd $c0 $29
    call GS06_TickScriptedInputSequence           ; $2975: $cd $d6 $30
    jr nz, .ToggleHintPopupVariant                ; $2978: $20 $2d

    ld hl, GS06_DrawWithHintPopUp                 ; $297a: $21 $c0 $29
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $297d: $cd $b6 $2f
    call ClearShadowOAMBuffer                     ; $2980: $cd $b6 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $2983: $cd $2e $30
    ld a, $88                                     ; $2986: $3e $88
    ld [rMessageScriptStreamPointerLow], a        ; $2988: $ea $2d $d8
    ld a, $72                                     ; $298b: $3e $72
    ld [rMessageScriptStreamPointerHigh], a       ; $298d: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2990: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $2993: $21 $35 $d6
    inc [hl]                                      ; $2996: $34
    rst RST_08                                    ; $2997: $cf
    ld a, $07                                     ; $2998: $3e $07
    ld hl, $4500                                  ; $299a: $21 $00 $45
    ld de, $8500                                  ; $299d: $11 $00 $85
    ld bc, $0200                                  ; $29a0: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $29a3: $cd $38 $05
    ret                                           ; $29a6: $c9


.ToggleHintPopupVariant:
    call $7918                                    ; $29a7: $cd $18 $79
    ld a, [rInputButtonsPressed]                  ; $29aa: $fa $1e $c3
    and $f0                                       ; $29ad: $e6 $f0
    ret z                                         ; $29af: $c8

    ld c, $0a                                     ; $29b0: $0e $0a
    ld a, $02                                     ; $29b2: $3e $02
    call CallSoundCommandDispatcher               ; $29b4: $cd $b6 $03
    ld a, [rHintPopupSelection]                   ; $29b7: $fa $33 $d8
    xor $01                                       ; $29ba: $ee $01
    ld [rHintPopupSelection], a                   ; $29bc: $ea $33 $d8
    ret                                           ; $29bf: $c9


GS06_DrawWithHintPopUp::
    ld a, [rHintPopupSelection]                   ; $29c0: $fa $33 $d8
    add $3a                                       ; $29c3: $c6 $3a
    ld bc, $2a36                                  ; $29c5: $01 $36 $2a
    call CopyOAMSpriteById                        ; $29c8: $cd $ce $20
    ret                                           ; $29cb: $c9


GS06_StatePhase_25_Message::
    call $7918                                    ; $29cc: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $29cf: $cd $93 $30
    call AdvanceMessageScriptStream               ; $29d2: $cd $6e $2b
    ret nz                                        ; $29d5: $c0

    ld hl, $03ed                                  ; $29d6: $21 $ed $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $29d9: $cd $b6 $2f
    call ClearShadowOAMBuffer                     ; $29dc: $cd $b6 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $29df: $cd $2e $30
    ld a, $24                                     ; $29e2: $3e $24
    ld [rMessageScriptStreamPointerLow], a        ; $29e4: $ea $2d $d8
    ld a, $73                                     ; $29e7: $3e $73
    ld [rMessageScriptStreamPointerHigh], a       ; $29e9: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $29ec: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $29ef: $21 $35 $d6
    inc [hl]                                      ; $29f2: $34
    ret                                           ; $29f3: $c9


GS06_StatePhase_26_StopTopHintCursor::
    call AdvanceHintCursorAnimation               ; $29f4: $cd $ca $31
    call $7918                                    ; $29f7: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $29fa: $cd $93 $30
    call AdvanceMessageScriptStream               ; $29fd: $cd $6e $2b
    ret nz                                        ; $2a00: $c0

    ld hl, AdvanceHintCursorAnimation             ; $2a01: $21 $ca $31
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $2a04: $cd $b6 $2f
    ld a, [rHintCursorAnimationColumnThreshold]   ; $2a07: $fa $12 $d8
    scf                                           ; $2a0a: $37
    rl a                                          ; $2a0b: $cb $17
    ld [rHintCursorAnimationColumnThreshold], a   ; $2a0d: $ea $12 $d8

.DecelerateTopHintCursorLoop:
    call GS06_ShowMessageArrowAndTickTransitionTimer; $2a10: $cd $12 $30
    call ClearShadowOAMBufferFromCursor           ; $2a13: $cd $c5 $05
    rst RST_08                                    ; $2a16: $cf
    call AdvanceHintCursorAnimation               ; $2a17: $cd $ca $31
    ld a, [rHintCursorAnimationColumnThreshold]   ; $2a1a: $fa $12 $d8
    cp $3f                                        ; $2a1d: $fe $3f
    jr c, .DecelerateTopHintCursorLoop            ; $2a1f: $38 $ef

    ld a, $78                                     ; $2a21: $3e $78
    ld [rMessageScriptStreamPointerLow], a        ; $2a23: $ea $2d $d8
    ld a, $73                                     ; $2a26: $3e $73
    ld [rMessageScriptStreamPointerHigh], a       ; $2a28: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2a2b: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $2a2e: $21 $35 $d6
    inc [hl]                                      ; $2a31: $34
    ret                                           ; $2a32: $c9


GS06_StatePhase_27_StopLeftHintCursor::
    call AdvanceHintCursorAnimation               ; $2a33: $cd $ca $31
    call $7918                                    ; $2a36: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $2a39: $cd $93 $30
    call AdvanceMessageScriptStream               ; $2a3c: $cd $6e $2b
    ret nz                                        ; $2a3f: $c0

    ld hl, AdvanceHintCursorAnimation             ; $2a40: $21 $ca $31
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $2a43: $cd $b6 $2f
    ld a, [rHintCursorAnimationRowThreshold]      ; $2a46: $fa $13 $d8
    scf                                           ; $2a49: $37
    rl a                                          ; $2a4a: $cb $17
    ld [rHintCursorAnimationRowThreshold], a      ; $2a4c: $ea $13 $d8

.DecelerateLeftHintCursorLoop:
    call GS06_ShowMessageArrowAndTickTransitionTimer; $2a4f: $cd $12 $30
    call ClearShadowOAMBufferFromCursor           ; $2a52: $cd $c5 $05
    rst RST_08                                    ; $2a55: $cf
    call AdvanceHintCursorAnimation               ; $2a56: $cd $ca $31
    ld a, [rHintCursorAnimationRowThreshold]      ; $2a59: $fa $13 $d8
    cp $3f                                        ; $2a5c: $fe $3f
    jr c, .DecelerateLeftHintCursorLoop           ; $2a5e: $38 $ef

    call ClearShadowOAMBuffer                     ; $2a60: $cd $b6 $05
    call AdvanceHintCursorAnimation               ; $2a63: $cd $ca $31
    call GS06_CopyRedrawSourceToProgressionBuffer ; $2a66: $cd $2e $30
    ld a, $ca                                     ; $2a69: $3e $ca
    ld [rMessageScriptStreamPointerLow], a        ; $2a6b: $ea $2d $d8
    ld a, $73                                     ; $2a6e: $3e $73
    ld [rMessageScriptStreamPointerHigh], a       ; $2a70: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2a73: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $2a76: $21 $35 $d6
    inc [hl]                                      ; $2a79: $34
    ret                                           ; $2a7a: $c9


GS06_StatePhase_28_ApplyHintSolve::
    call AdvanceHintCursorAnimation               ; $2a7b: $cd $ca $31
    call $7918                                    ; $2a7e: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $2a81: $cd $93 $30
    call AdvanceMessageScriptStream               ; $2a84: $cd $6e $2b
    ret nz                                        ; $2a87: $c0

    call $78a2                                    ; $2a88: $cd $a2 $78
    ld hl, $7185                                  ; $2a8b: $21 $85 $71
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $2a8e: $cd $b6 $2f
    call ClearShadowOAMBuffer                     ; $2a91: $cd $b6 $05
    call $7185                                    ; $2a94: $cd $85 $71
    call GS06_CopyRedrawSourceToProgressionBuffer ; $2a97: $cd $2e $30
    ld a, $34                                     ; $2a9a: $3e $34
    ld [rMessageScriptStreamPointerLow], a        ; $2a9c: $ea $2d $d8
    ld a, $74                                     ; $2a9f: $3e $74
    ld [rMessageScriptStreamPointerHigh], a       ; $2aa1: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2aa4: $cd $3e $32
    ld hl, rStatePhase_Current                    ; $2aa7: $21 $35 $d6
    inc [hl]                                      ; $2aaa: $34
    ret                                           ; $2aab: $c9


GS06_StatePhase_29_AdvanceOrRestart::
    call $7918                                    ; $2aac: $cd $18 $79
    call AnimateMarioMouthDuringText              ; $2aaf: $cd $93 $30
    call AdvanceMessageScriptStream               ; $2ab2: $cd $6e $2b
    ret nz                                        ; $2ab5: $c0

    ld a, $01                                     ; $2ab6: $3e $01
    ld [rAdvanceOrSkipTimeoutEnabled], a          ; $2ab8: $ea $35 $d8
    ld a, $ff                                     ; $2abb: $3e $ff
    ld [rAdvanceOrSkipTimeoutCounter], a          ; $2abd: $ea $36 $d8
    ld hl, $03ed                                  ; $2ac0: $21 $ed $03
    call GS06_WaitForAdvanceOrSkip_PollLoop       ; $2ac3: $cd $bb $2f
    ld a, [rInputButtonsHeld]                     ; $2ac6: $fa $1a $c3
    push af                                       ; $2ac9: $f5
    call ClearShadowOAMBuffer                     ; $2aca: $cd $b6 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $2acd: $cd $2e $30
    call GS06_RedrawGameBoard                     ; $2ad0: $cd $14 $31
    call LoadPuzzleDataBuffer                     ; $2ad3: $cd $f1 $07
    pop af                                        ; $2ad6: $f1
    bit 0, a                                      ; $2ad7: $cb $47
    jr z, .ResetTutorialStateAndRestart           ; $2ad9: $28 $05

    ld hl, rStatePhase_Current                    ; $2adb: $21 $35 $d6
    inc [hl]                                      ; $2ade: $34
    ret                                           ; $2adf: $c9


.ResetTutorialStateAndRestart:
    xor a                                         ; $2ae0: $af
    ld [rPuzzleCursorColumn], a                   ; $2ae1: $ea $36 $d6
    ld [rPuzzleAndMenuCursorRow], a               ; $2ae4: $ea $37 $d6
    ld [rPuzzlePostClearFlowFlag], a              ; $2ae7: $ea $05 $d8
    ld [rPuzzleTimerCompletionState], a           ; $2aea: $ea $06 $d8
    ld [rPuzzleActionRepeatGuard], a              ; $2aed: $ea $0f $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2af0: $cd $3e $32
    ld a, $02                                     ; $2af3: $3e $02
    ld [rPuzzleTimerPenaltyStep], a               ; $2af5: $ea $11 $d8
    ld a, $02                                     ; $2af8: $3e $02
    ld [rHintCursorAnimationColumnThreshold], a   ; $2afa: $ea $12 $d8
    ld [rHintCursorAnimationRowThreshold], a      ; $2afd: $ea $13 $d8
    ld a, $05                                     ; $2b00: $3e $05
    ld [rCountdownSfxTimer], a                    ; $2b02: $ea $2a $d8
    ld a, [rMessageScriptStreamResetEntryLow]     ; $2b05: $fa $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $2b08: $ea $2b $d8
    ld a, [rMessageScriptStreamResetEntryHigh]    ; $2b0b: $fa $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $2b0e: $ea $2c $d8
    ld a, $30                                     ; $2b11: $3e $30
    ld [rMessageScriptStreamPointerLow], a        ; $2b13: $ea $2d $d8
    ld a, $6a                                     ; $2b16: $3e $6a
    ld [rMessageScriptStreamPointerHigh], a       ; $2b18: $ea $2e $d8
    call $7beb                                    ; $2b1b: $cd $eb $7b
    ld a, $01                                     ; $2b1e: $3e $01
    ld [rStatePhase_Current], a                   ; $2b20: $ea $35 $d6
    ret                                           ; $2b23: $c9


GS06_StatePhase_2a_CancelAndReturnToMenu::
    ld bc, $003c                                  ; $2b24: $01 $3c $00
    call DelayFramesByBC                          ; $2b27: $cd $fa $05
    ld a, $05                                     ; $2b2a: $3e $05
    call CallSoundCommandDispatcher               ; $2b2c: $cd $b6 $03
    ld c, $00                                     ; $2b2f: $0e $00
    ld a, $01                                     ; $2b31: $3e $01
    call CallSoundCommandDispatcher               ; $2b33: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $2b36: $cd $99 $03
    ld c, $00                                     ; $2b39: $0e $00
    ld a, $01                                     ; $2b3b: $3e $01
    call CallSoundCommandDispatcher               ; $2b3d: $cd $b6 $03
    ld b, $03                                     ; $2b40: $06 $03
    ld hl, $46ab                                  ; $2b42: $21 $ab $46
    ld c, $01                                     ; $2b45: $0e $01
    ld de, $0023                                  ; $2b47: $11 $23 $00
    call PlayScreenTransitionFadeOut              ; $2b4a: $cd $4e $04
    call DisableLCDAtVBlank                       ; $2b4d: $cd $83 $04
    ld hl, rLCDCInterruptControlFlags             ; $2b50: $21 $37 $c3
    res 6, [hl]                                   ; $2b53: $cb $b6
    ld hl, rIE                                    ; $2b55: $21 $ff $ff
    res 1, [hl]                                   ; $2b58: $cb $8e
    xor a                                         ; $2b5a: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $2b5b: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $2b5e: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $2b61: $ea $50 $c3
    xor a                                         ; $2b64: $af
    ld [rStatePhase_Current], a                   ; $2b65: $ea $35 $d6
    ld a, $02                                     ; $2b68: $3e $02
    ld [rGameState_Current], a                    ; $2b6a: $ea $34 $d6
    ret                                           ; $2b6d: $c9


AdvanceMessageScriptStream::
    ld a, [rActiveROMBank]                        ; $2b6e: $fa $12 $c3
    push af                                       ; $2b71: $f5
    ld a, $05                                     ; $2b72: $3e $05
    ld [rActiveROMBank], a                        ; $2b74: $ea $12 $c3
    ld [rROMB], a                                 ; $2b77: $ea $00 $20
    call AdvanceMessageScriptStreamHelper         ; $2b7a: $cd $88 $2b
    pop bc                                        ; $2b7d: $c1
    push af                                       ; $2b7e: $f5
    ld a, b                                       ; $2b7f: $78
    ld [rActiveROMBank], a                        ; $2b80: $ea $12 $c3
    ld [rROMB], a                                 ; $2b83: $ea $00 $20
    pop af                                        ; $2b86: $f1
    ret                                           ; $2b87: $c9


AdvanceMessageScriptStreamHelper::
    ld a, [rMessageScriptStreamPointerLow]        ; $2b88: $fa $2d $d8
    ld l, a                                       ; $2b8b: $6f
    ld a, [rMessageScriptStreamPointerHigh]       ; $2b8c: $fa $2e $d8
    ld h, a                                       ; $2b8f: $67
    ld a, [rMessageScriptStreamEntryLow]          ; $2b90: $fa $2b $d8
    ld b, a                                       ; $2b93: $47
    ld a, [rMessageScriptStreamEntryHigh]         ; $2b94: $fa $2c $d8
    ld c, a                                       ; $2b97: $4f
    ld a, [hl+]                                   ; $2b98: $2a
    ld e, a                                       ; $2b99: $5f
    ld a, [hl+]                                   ; $2b9a: $2a
    ld d, a                                       ; $2b9b: $57
    and e                                         ; $2b9c: $a3
    cp $ff                                        ; $2b9d: $fe $ff
    ret z                                         ; $2b9f: $c8

    push hl                                       ; $2ba0: $e5
    ld a, e                                       ; $2ba1: $7b
    cp $fe                                        ; $2ba2: $fe $fe
    jr nz, .AdvanceMessageScriptStreamEntry       ; $2ba4: $20 $05

    ld a, d                                       ; $2ba6: $7a
    cp $ff                                        ; $2ba7: $fe $ff
    jr z, .ResetMessageScriptStreamEntry          ; $2ba9: $28 $0c

.AdvanceMessageScriptStreamEntry:
    call PrepareMessageBGTileCopySetup            ; $2bab: $cd $d3 $2b
    ld hl, rMessageScriptStreamEntryLow           ; $2bae: $21 $2b $d8
    add $01                                       ; $2bb1: $c6 $01
    add [hl]                                      ; $2bb3: $86
    ld [hl], a                                    ; $2bb4: $77
    jr .StoreMessageScriptStreamPointer           ; $2bb5: $18 $0e

.ResetMessageScriptStreamEntry:
    ld a, [rMessageScriptStreamResetEntryLow]     ; $2bb7: $fa $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $2bba: $ea $2b $d8
    ld a, [rMessageScriptStreamEntryHigh]         ; $2bbd: $fa $2c $d8
    add $0a                                       ; $2bc0: $c6 $0a
    ld [rMessageScriptStreamEntryHigh], a         ; $2bc2: $ea $2c $d8

.StoreMessageScriptStreamPointer:
    pop hl                                        ; $2bc5: $e1
    ld a, l                                       ; $2bc6: $7d
    ld [rMessageScriptStreamPointerLow], a        ; $2bc7: $ea $2d $d8
    ld a, h                                       ; $2bca: $7c
    ld [rMessageScriptStreamPointerHigh], a       ; $2bcb: $ea $2e $d8
    ld a, [hl+]                                   ; $2bce: $2a
    and [hl]                                      ; $2bcf: $a6
    cp $ff                                        ; $2bd0: $fe $ff
    ret                                           ; $2bd2: $c9


PrepareMessageBGTileCopySetup::
    push de                                       ; $2bd3: $d5
    sla e                                         ; $2bd4: $cb $23
    rl d                                          ; $2bd6: $cb $12
    ld hl, MessageGlyphSourceOffsetTable          ; $2bd8: $21 $b6 $2d
    add hl, de                                    ; $2bdb: $19
    ld e, [hl]                                    ; $2bdc: $5e
    inc hl                                        ; $2bdd: $23
    ld d, [hl]                                    ; $2bde: $56
    ld hl, $4000                                  ; $2bdf: $21 $00 $40
    add hl, de                                    ; $2be2: $19
    ld a, l                                       ; $2be3: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $2be4: $ea $55 $c3
    ld a, h                                       ; $2be7: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $2be8: $ea $56 $c3
    ld a, $0d                                     ; $2beb: $3e $0d
    ld [rBGTileCopyBank], a                       ; $2bed: $ea $57 $c3
    ld a, b                                       ; $2bf0: $78
    ld [rBGTileCopySourceX], a                    ; $2bf1: $ea $51 $c3
    pop de                                        ; $2bf4: $d1
    ld hl, MessageGlyphWidthTable                 ; $2bf5: $21 $b6 $2c
    add hl, de                                    ; $2bf8: $19
    ld a, [hl]                                    ; $2bf9: $7e
    and a                                         ; $2bfa: $a7
    ret z                                         ; $2bfb: $c8

    push af                                       ; $2bfc: $f5
    add b                                         ; $2bfd: $80
    ld hl, rMessageScriptStreamLimitLow           ; $2bfe: $21 $45 $d8
    cp [hl]                                       ; $2c01: $be
    jr c, .PrepareMessageBGTileCopyParams         ; $2c02: $38 $02

    pop af                                        ; $2c04: $f1
    ret                                           ; $2c05: $c9


.PrepareMessageBGTileCopyParams:
    ld [rBGTileCopyDestX], a                      ; $2c06: $ea $53 $c3
    ld a, c                                       ; $2c09: $79
    ld [rBGTileCopySourceY], a                    ; $2c0a: $ea $52 $c3
    add $08                                       ; $2c0d: $c6 $08
    ld hl, rMessageScriptStreamLimitHigh          ; $2c0f: $21 $46 $d8
    cp [hl]                                       ; $2c12: $be
    jr c, .ApplyMessageBGTileCopyParams           ; $2c13: $38 $02

    pop af                                        ; $2c15: $f1
    ret                                           ; $2c16: $c9


.ApplyMessageBGTileCopyParams:
    ld [rBGTileCopyDestY], a                      ; $2c17: $ea $54 $c3
    call PrepareBGTileCopy                        ; $2c1a: $cd $b3 $08
    pop af                                        ; $2c1d: $f1
    ret                                           ; $2c1e: $c9


AdvanceMessageScriptStreamHelper_NoBankSwitch::
    ld a, [rMessageScriptStreamPointerLow]        ; $2c1f: $fa $2d $d8
    ld l, a                                       ; $2c22: $6f
    ld a, [rMessageScriptStreamPointerHigh]       ; $2c23: $fa $2e $d8
    ld h, a                                       ; $2c26: $67
    ld a, [rMessageScriptStreamEntryLow]          ; $2c27: $fa $2b $d8
    ld b, a                                       ; $2c2a: $47
    ld a, [rMessageScriptStreamEntryHigh]         ; $2c2b: $fa $2c $d8
    ld c, a                                       ; $2c2e: $4f
    ld a, [hl+]                                   ; $2c2f: $2a
    ld e, a                                       ; $2c30: $5f
    ld a, [hl+]                                   ; $2c31: $2a
    ld d, a                                       ; $2c32: $57
    and e                                         ; $2c33: $a3
    cp $ff                                        ; $2c34: $fe $ff
    ret z                                         ; $2c36: $c8

    push hl                                       ; $2c37: $e5
    ld a, e                                       ; $2c38: $7b
    cp $fe                                        ; $2c39: $fe $fe
    jr nz, .AdvanceMessageScriptStreamEntry       ; $2c3b: $20 $05

    ld a, d                                       ; $2c3d: $7a
    cp $ff                                        ; $2c3e: $fe $ff
    jr z, .ResetMessageScriptStreamEntry          ; $2c40: $28 $0c

.AdvanceMessageScriptStreamEntry:
    call PrepareMessageBGTileCopySetup_NoBankSwitch; $2c42: $cd $6a $2c
    ld hl, rMessageScriptStreamEntryLow           ; $2c45: $21 $2b $d8
    add $01                                       ; $2c48: $c6 $01
    add [hl]                                      ; $2c4a: $86
    ld [hl], a                                    ; $2c4b: $77
    jr .StoreMessageScriptStreamPointer           ; $2c4c: $18 $0e

.ResetMessageScriptStreamEntry:
    ld a, [rMessageScriptStreamResetEntryLow]     ; $2c4e: $fa $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $2c51: $ea $2b $d8
    ld a, [rMessageScriptStreamEntryHigh]         ; $2c54: $fa $2c $d8
    add $0a                                       ; $2c57: $c6 $0a
    ld [rMessageScriptStreamEntryHigh], a         ; $2c59: $ea $2c $d8

.StoreMessageScriptStreamPointer:
    pop hl                                        ; $2c5c: $e1
    ld a, l                                       ; $2c5d: $7d
    ld [rMessageScriptStreamPointerLow], a        ; $2c5e: $ea $2d $d8
    ld a, h                                       ; $2c61: $7c
    ld [rMessageScriptStreamPointerHigh], a       ; $2c62: $ea $2e $d8
    ld a, [hl+]                                   ; $2c65: $2a
    and [hl]                                      ; $2c66: $a6
    cp $ff                                        ; $2c67: $fe $ff
    ret                                           ; $2c69: $c9


PrepareMessageBGTileCopySetup_NoBankSwitch::
    push de                                       ; $2c6a: $d5
    sla e                                         ; $2c6b: $cb $23
    rl d                                          ; $2c6d: $cb $12
    ld hl, MessageGlyphSourceOffsetTable          ; $2c6f: $21 $b6 $2d
    add hl, de                                    ; $2c72: $19
    ld e, [hl]                                    ; $2c73: $5e
    inc hl                                        ; $2c74: $23
    ld d, [hl]                                    ; $2c75: $56
    ld hl, $4000                                  ; $2c76: $21 $00 $40
    add hl, de                                    ; $2c79: $19
    ld a, l                                       ; $2c7a: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $2c7b: $ea $55 $c3
    ld a, h                                       ; $2c7e: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $2c7f: $ea $56 $c3
    ld a, $0d                                     ; $2c82: $3e $0d
    ld [rBGTileCopyBank], a                       ; $2c84: $ea $57 $c3
    ld a, b                                       ; $2c87: $78
    ld [rBGTileCopySourceX], a                    ; $2c88: $ea $51 $c3
    pop de                                        ; $2c8b: $d1
    ld hl, MessageGlyphWidthTable                 ; $2c8c: $21 $b6 $2c
    add hl, de                                    ; $2c8f: $19
    ld a, [hl]                                    ; $2c90: $7e
    and a                                         ; $2c91: $a7
    ret z                                         ; $2c92: $c8

    push af                                       ; $2c93: $f5
    add b                                         ; $2c94: $80
    ld hl, rMessageScriptStreamLimitLow           ; $2c95: $21 $45 $d8
    cp [hl]                                       ; $2c98: $be
    jr c, .PrepareMessageBGTileCopyParams_NoBankSwitch; $2c99: $38 $02

    pop af                                        ; $2c9b: $f1
    ret                                           ; $2c9c: $c9


.PrepareMessageBGTileCopyParams_NoBankSwitch:
    ld [rBGTileCopyDestX], a                      ; $2c9d: $ea $53 $c3
    ld a, c                                       ; $2ca0: $79
    ld [rBGTileCopySourceY], a                    ; $2ca1: $ea $52 $c3
    add $08                                       ; $2ca4: $c6 $08
    ld hl, rMessageScriptStreamLimitHigh          ; $2ca6: $21 $46 $d8
    cp [hl]                                       ; $2ca9: $be
    jr c, .ApplyMessageBGTileCopyParams_NoBankSwitch; $2caa: $38 $02

    pop af                                        ; $2cac: $f1
    ret                                           ; $2cad: $c9


.ApplyMessageBGTileCopyParams_NoBankSwitch:
    ld [rBGTileCopyDestY], a                      ; $2cae: $ea $54 $c3
    call PrepareBGTileCopyNoLCDCBit4Force         ; $2cb1: $cd $0d $0b
    pop af                                        ; $2cb4: $f1
    ret                                           ; $2cb5: $c9


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
    ld a, $78                                     ; $2fb6: $3e $78
    ld [rAdvanceOrSkipTimeoutCounter], a          ; $2fb8: $ea $36 $d8

GS06_WaitForAdvanceOrSkip_PollLoop::
    ld a, [rAdvanceOrSkipTimeoutEnabled]          ; $2fbb: $fa $35 $d8
    and a                                         ; $2fbe: $a7
    jr z, .CheckAdvanceInputA                     ; $2fbf: $28 $08

    ld a, [rAdvanceOrSkipTimeoutCounter]          ; $2fc1: $fa $36 $d8
    dec a                                         ; $2fc4: $3d
    ld [rAdvanceOrSkipTimeoutCounter], a          ; $2fc5: $ea $36 $d8
    ret z                                         ; $2fc8: $c8

.CheckAdvanceInputA:
    ld a, [rInputButtonsPressed]                  ; $2fc9: $fa $1e $c3
    bit 0, a                                      ; $2fcc: $cb $47
    jr z, .CheckCancelInputStart                  ; $2fce: $28 $08

    ld c, $03                                     ; $2fd0: $0e $03
    ld a, $02                                     ; $2fd2: $3e $02
    call CallSoundCommandDispatcher               ; $2fd4: $cd $b6 $03
    ret                                           ; $2fd7: $c9


.CheckCancelInputStart:
    ld a, [rInputButtonsPressed]                  ; $2fd8: $fa $1e $c3
    bit 3, a                                      ; $2fdb: $cb $5f
    jr z, .WaitLoopBody                           ; $2fdd: $28 $0b

    ld [rGS06_HowToPlaySkipRequestedFlag], a      ; $2fdf: $ea $37 $d8
    ld c, $04                                     ; $2fe2: $0e $04
    ld a, $02                                     ; $2fe4: $3e $02
    call CallSoundCommandDispatcher               ; $2fe6: $cd $b6 $03
    ret                                           ; $2fe9: $c9


.WaitLoopBody:
    push hl                                       ; $2fea: $e5
    call ClearShadowOAMBufferFromCursor           ; $2feb: $cd $c5 $05
    rst RST_08                                    ; $2fee: $cf
    call $7918                                    ; $2fef: $cd $18 $79
    ld a, [rLCDCFrameTickCounter]                 ; $2ff2: $fa $3b $c3
    bit 4, a                                      ; $2ff5: $cb $67
    jr nz, .LoopCallbackReturn                    ; $2ff7: $20 $0f

    ld a, [rMessageScriptStreamEntryLow]          ; $2ff9: $fa $2b $d8
    inc a                                         ; $2ffc: $3c
    ld b, a                                       ; $2ffd: $47
    ld a, [rMessageScriptStreamEntryHigh]         ; $2ffe: $fa $2c $d8
    inc a                                         ; $3001: $3c
    ld c, a                                       ; $3002: $4f
    ld a, $37                                     ; $3003: $3e $37
    call CopyOAMSpriteById                        ; $3005: $cd $ce $20

.LoopCallbackReturn:
    pop hl                                        ; $3008: $e1
    push hl                                       ; $3009: $e5
    ld bc, $300f                                  ; $300a: $01 $0f $30
    push bc                                       ; $300d: $c5
    jp hl                                         ; $300e: $e9


    pop hl                                        ; $300f: $e1
    jr GS06_WaitForAdvanceOrSkip_PollLoop         ; $3010: $18 $a9

GS06_ShowMessageArrowAndTickTransitionTimer::
    ld a, [rLCDCFrameTickCounter]                 ; $3012: $fa $3b $c3
    bit 4, a                                      ; $3015: $cb $67
    jr nz, .TickTransitionTimer                   ; $3017: $20 $10

    ld a, [rMessageScriptStreamEntryLow]          ; $3019: $fa $2b $d8
    sub $03                                       ; $301c: $d6 $03
    ld b, a                                       ; $301e: $47
    ld a, [rMessageScriptStreamEntryHigh]         ; $301f: $fa $2c $d8
    inc a                                         ; $3022: $3c
    ld c, a                                       ; $3023: $4f
    ld a, $38                                     ; $3024: $3e $38
    call CopyOAMSpriteById                        ; $3026: $cd $ce $20

.TickTransitionTimer:
    ld hl, rStatePhaseTimer                       ; $3029: $21 $3c $d6
    dec [hl]                                      ; $302c: $35
    ret                                           ; $302d: $c9


GS06_CopyRedrawSourceToProgressionBuffer::
    ld bc, $0d58                                  ; $302e: $01 $58 $0d
    ld de, $8507                                  ; $3031: $11 $07 $85
    call GS06_PrepareRedrawSourceCopy             ; $3034: $cd $71 $30
    ld bc, $0d60                                  ; $3037: $01 $60 $0d
    ld de, $8507                                  ; $303a: $11 $07 $85
    call GS06_PrepareRedrawSourceCopy             ; $303d: $cd $71 $30
    ld bc, $0d68                                  ; $3040: $01 $68 $0d
    ld de, $8507                                  ; $3043: $11 $07 $85
    call GS06_PrepareRedrawSourceCopy             ; $3046: $cd $71 $30
    ld bc, $0d70                                  ; $3049: $01 $70 $0d
    ld de, $8507                                  ; $304c: $11 $07 $85
    call GS06_PrepareRedrawSourceCopy             ; $304f: $cd $71 $30
    ld bc, $0d78                                  ; $3052: $01 $78 $0d
    ld de, $8507                                  ; $3055: $11 $07 $85
    call GS06_PrepareRedrawSourceCopy             ; $3058: $cd $71 $30
    ld bc, $0d80                                  ; $305b: $01 $80 $0d
    ld de, $8507                                  ; $305e: $11 $07 $85
    call GS06_PrepareRedrawSourceCopy             ; $3061: $cd $71 $30
    ld a, [rMessageScriptStreamResetEntryLow]     ; $3064: $fa $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $3067: $ea $2b $d8
    ld a, [rMessageScriptStreamResetEntryHigh]    ; $306a: $fa $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $306d: $ea $2c $d8
    ret                                           ; $3070: $c9


GS06_PrepareRedrawSourceCopy::
    ld a, $00                                     ; $3071: $3e $00
    ld [rBGTileCopyBankAddressLow], a             ; $3073: $ea $55 $c3
    ld a, $6c                                     ; $3076: $3e $6c
    ld [rBGTileCopyBankAddressHigh], a            ; $3078: $ea $56 $c3
    ld a, $07                                     ; $307b: $3e $07
    ld [rBGTileCopyBank], a                       ; $307d: $ea $57 $c3
    ld a, b                                       ; $3080: $78
    ld [rBGTileCopySourceX], a                    ; $3081: $ea $51 $c3
    add d                                         ; $3084: $82
    ld [rBGTileCopyDestX], a                      ; $3085: $ea $53 $c3
    ld a, c                                       ; $3088: $79
    ld [rBGTileCopySourceY], a                    ; $3089: $ea $52 $c3
    add e                                         ; $308c: $83
    ld [rBGTileCopyDestY], a                      ; $308d: $ea $54 $c3
    jp PrepareBGTileCopy                          ; $3090: $c3 $b3 $08


AnimateMarioMouthDuringText::
    ld a, [rGS06_MarioMouthAnimationCountdown]    ; $3093: $fa $1a $d8
    and a                                         ; $3096: $a7
    jr nz, .TickAndEmitMouthFrame                 ; $3097: $20 $20

    ld a, [rGS06_MarioMouthAnimationPatternCursor]; $3099: $fa $1b $d8
    ld c, a                                       ; $309c: $4f
    ld b, $00                                     ; $309d: $06 $00

.NextMouthPatternEntry:
    ld hl, MarioMouthAnimationPatternData         ; $309f: $21 $c9 $30
    add hl, bc                                    ; $30a2: $09
    ld a, [hl+]                                   ; $30a3: $2a
    and a                                         ; $30a4: $a7
    jr nz, .LoadMouthPatternEntry                 ; $30a5: $20 $05

    ld bc, $0000                                  ; $30a7: $01 $00 $00
    jr .NextMouthPatternEntry                     ; $30aa: $18 $f3

.LoadMouthPatternEntry:
    ld [rGS06_MarioMouthAnimationCountdown], a    ; $30ac: $ea $1a $d8
    ld a, [hl]                                    ; $30af: $7e
    ld [rGS06_MarioMouthAnimationSpriteId], a     ; $30b0: $ea $19 $d8
    inc c                                         ; $30b3: $0c
    inc c                                         ; $30b4: $0c
    ld a, c                                       ; $30b5: $79
    ld [rGS06_MarioMouthAnimationPatternCursor], a; $30b6: $ea $1b $d8

.TickAndEmitMouthFrame:
    ld hl, rGS06_MarioMouthAnimationCountdown     ; $30b9: $21 $1a $d8
    dec [hl]                                      ; $30bc: $35
    ld a, [rGS06_MarioMouthAnimationSpriteId]     ; $30bd: $fa $19 $d8
    cp $ff                                        ; $30c0: $fe $ff
    ret z                                         ; $30c2: $c8

    ld bc, $1d20                                  ; $30c3: $01 $20 $1d
    jp CopyOAMSpriteById                          ; $30c6: $c3 $ce $20


MarioMouthAnimationPatternData::
    db $02, $39
    db $04, $ff
    db $03, $39
    db $03, $ff
    db $02, $39
    db $05, $ff
    db $00

GS06_TickScriptedInputSequence::
    xor a                                         ; $30d6: $af
    ld [rInputButtonsHeld], a                     ; $30d7: $ea $1a $c3
    ld [rInputButtonsPressed], a                  ; $30da: $ea $1e $c3
    ld [rInputButtonsPressedOrRepeated], a        ; $30dd: $ea $22 $c3
    ld a, [rGS06_ScriptedInputSequenceDelay]      ; $30e0: $fa $30 $d8
    and a                                         ; $30e3: $a7
    jr nz, .TickDelayAndReturnBusy                ; $30e4: $20 $26

    ld a, [rGS06_ScriptedInputSequenceCursor]     ; $30e6: $fa $2f $d8
    ld c, a                                       ; $30e9: $4f
    ld b, $00                                     ; $30ea: $06 $00
    ld a, [rGS06_ScriptedInputSequenceTableLow]   ; $30ec: $fa $31 $d8
    ld l, a                                       ; $30ef: $6f
    ld a, [rGS06_ScriptedInputSequenceTableHigh]  ; $30f0: $fa $32 $d8
    ld h, a                                       ; $30f3: $67
    add hl, bc                                    ; $30f4: $09
    ld a, [hl]                                    ; $30f5: $7e
    cp $ff                                        ; $30f6: $fe $ff
    ret z                                         ; $30f8: $c8

    ld [rInputButtonsHeld], a                     ; $30f9: $ea $1a $c3
    ld [rInputButtonsPressed], a                  ; $30fc: $ea $1e $c3
    ld [rInputButtonsPressedOrRepeated], a        ; $30ff: $ea $22 $c3
    ld a, $07                                     ; $3102: $3e $07
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $3104: $ea $30 $d8
    ld a, c                                       ; $3107: $79
    inc a                                         ; $3108: $3c
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $3109: $ea $2f $d8

.TickDelayAndReturnBusy:
    ld hl, rGS06_ScriptedInputSequenceDelay       ; $310c: $21 $30 $d8
    dec [hl]                                      ; $310f: $35
    ld a, $ff                                     ; $3110: $3e $ff
    and a                                         ; $3112: $a7
    ret                                           ; $3113: $c9


GS06_RedrawGameBoard::
    ld a, $40                                     ; $3114: $3e $40
    ld [rBGTileCopyBankAddressLow], a             ; $3116: $ea $55 $c3
    ld a, $4c                                     ; $3119: $3e $4c
    ld [rBGTileCopyBankAddressHigh], a            ; $311b: $ea $56 $c3
    ld a, $07                                     ; $311e: $3e $07
    ld [rBGTileCopyBank], a                       ; $3120: $ea $57 $c3
    ld a, $38                                     ; $3123: $3e $38
    ld [rBGTileCopySourceX], a                    ; $3125: $ea $51 $c3
    add $1f                                       ; $3128: $c6 $1f
    ld [rBGTileCopyDestX], a                      ; $312a: $ea $53 $c3
    ld a, $30                                     ; $312d: $3e $30
    ld [rBGTileCopySourceY], a                    ; $312f: $ea $52 $c3
    add $1f                                       ; $3132: $c6 $1f
    ld [rBGTileCopyDestY], a                      ; $3134: $ea $54 $c3
    jp PrepareBGTileCopy                          ; $3137: $c3 $b3 $08


GS06_RedrawGameBoard_RestoreStateAfterGameOver::
    ld a, $00                                     ; $313a: $3e $00
    ld [rBGTileCopyBankAddressLow], a             ; $313c: $ea $55 $c3
    ld a, $68                                     ; $313f: $3e $68
    ld [rBGTileCopyBankAddressHigh], a            ; $3141: $ea $56 $c3
    ld a, $07                                     ; $3144: $3e $07
    ld [rBGTileCopyBank], a                       ; $3146: $ea $57 $c3
    ld a, $38                                     ; $3149: $3e $38
    ld [rBGTileCopySourceX], a                    ; $314b: $ea $51 $c3
    add $1f                                       ; $314e: $c6 $1f
    ld [rBGTileCopyDestX], a                      ; $3150: $ea $53 $c3
    ld a, $30                                     ; $3153: $3e $30
    ld [rBGTileCopySourceY], a                    ; $3155: $ea $52 $c3
    add $1f                                       ; $3158: $c6 $1f
    ld [rBGTileCopyDestY], a                      ; $315a: $ea $54 $c3
    jp PrepareBGTileCopy                          ; $315d: $c3 $b3 $08


GS06_DecrementPuzzleTimer::
    ld a, [rPuzzleTimerSecondOnes]                ; $3160: $fa $0b $d8
    ld hl, rPuzzleTimerSecondTens                 ; $3163: $21 $0c $d8
    or [hl]                                       ; $3166: $b6
    ld hl, rPuzzleTimerMinuteOnes                 ; $3167: $21 $09 $d8
    or [hl]                                       ; $316a: $b6
    ld hl, rPuzzleTimerMinuteTens                 ; $316b: $21 $0a $d8
    or [hl]                                       ; $316e: $b6
    ret z                                         ; $316f: $c8

    ld a, $ff                                     ; $3170: $3e $ff
    ld [rPuzzleTimerActive], a                    ; $3172: $ea $0d $d8
    ld a, [rPuzzleTimerSecondOnes]                ; $3175: $fa $0b $d8
    sub $05                                       ; $3178: $d6 $05
    jr nc, .DecrementPuzzleTimerSecondOnes        ; $317a: $30 $02

    add $0a                                       ; $317c: $c6 $0a

.DecrementPuzzleTimerSecondOnes:
    ld [rPuzzleTimerSecondOnes], a                ; $317e: $ea $0b $d8
    push af                                       ; $3181: $f5
    ld bc, $2b27                                  ; $3182: $01 $27 $2b
    call $7c29                                    ; $3185: $cd $29 $7c
    pop af                                        ; $3188: $f1
    ld a, [rPuzzleTimerSecondTens]                ; $3189: $fa $0c $d8
    sbc $01                                       ; $318c: $de $01
    jr nc, .DecrementPuzzleTimerSecondTens        ; $318e: $30 $02

    add $06                                       ; $3190: $c6 $06

.DecrementPuzzleTimerSecondTens:
    ld [rPuzzleTimerSecondTens], a                ; $3192: $ea $0c $d8
    push af                                       ; $3195: $f5
    ld bc, $2327                                  ; $3196: $01 $27 $23
    call $7c29                                    ; $3199: $cd $29 $7c
    pop af                                        ; $319c: $f1
    ret nc                                        ; $319d: $d0

    ld a, [rPuzzleTimerMinuteOnes]                ; $319e: $fa $09 $d8
    dec a                                         ; $31a1: $3d
    cp $ff                                        ; $31a2: $fe $ff
    jr nz, .DecrementPuzzleTimerMinuteOnes        ; $31a4: $20 $02

    ld a, $09                                     ; $31a6: $3e $09

.DecrementPuzzleTimerMinuteOnes:
    ld [rPuzzleTimerMinuteOnes], a                ; $31a8: $ea $09 $d8
    push af                                       ; $31ab: $f5
    ld bc, $1527                                  ; $31ac: $01 $27 $15
    call $7c29                                    ; $31af: $cd $29 $7c
    pop af                                        ; $31b2: $f1
    ret nz                                        ; $31b3: $c0

    ld a, [rPuzzleTimerMinuteTens]                ; $31b4: $fa $0a $d8
    dec a                                         ; $31b7: $3d
    cp $ff                                        ; $31b8: $fe $ff
    jr nz, .DecrementPuzzleTimerMinuteTens        ; $31ba: $20 $02

    ld a, $09                                     ; $31bc: $3e $09

.DecrementPuzzleTimerMinuteTens:
    ld [rPuzzleTimerMinuteTens], a                ; $31be: $ea $0a $d8
    push af                                       ; $31c1: $f5
    ld bc, $0d27                                  ; $31c2: $01 $27 $0d
    call $7c29                                    ; $31c5: $cd $29 $7c
    pop af                                        ; $31c8: $f1
    ret                                           ; $31c9: $c9


AdvanceHintCursorAnimation::
    ld a, [rLCDCFrameTickCounter]                 ; $31ca: $fa $3b $c3
    push af                                       ; $31cd: $f5
    ld hl, rSharedAnimationFrameState             ; $31ce: $21 $3d $d6
    sub [hl]                                      ; $31d1: $96
    push af                                       ; $31d2: $f5
    ld hl, rSharedUIAnimationColumnAccumulator    ; $31d3: $21 $3e $d6
    add [hl]                                      ; $31d6: $86
    ld [hl], a                                    ; $31d7: $77
    pop af                                        ; $31d8: $f1
    ld hl, rHintCursorAnimationRowAccumulator     ; $31d9: $21 $3f $d6
    add [hl]                                      ; $31dc: $86
    ld [hl], a                                    ; $31dd: $77
    pop af                                        ; $31de: $f1
    ld [rSharedAnimationFrameState], a            ; $31df: $ea $3d $d6
    ld a, [rHintCursorAnimationColumnThreshold]   ; $31e2: $fa $12 $d8
    cp $3f                                        ; $31e5: $fe $3f
    jr nc, .AdvanceHintCursorRow                  ; $31e7: $30 $25

    ld c, a                                       ; $31e9: $4f
    ld a, [rSharedUIAnimationColumnAccumulator]   ; $31ea: $fa $3e $d6
    cp c                                          ; $31ed: $b9
    jr c, .AdvanceHintCursorRow                   ; $31ee: $38 $1e

    xor a                                         ; $31f0: $af
    ld [rSharedUIAnimationColumnAccumulator], a   ; $31f1: $ea $3e $d6
    ld a, c                                       ; $31f4: $79
    cp $02                                        ; $31f5: $fe $02
    jr z, .AdvanceHintCursorColumn                ; $31f7: $28 $06

    scf                                           ; $31f9: $37
    ld hl, rHintCursorAnimationColumnThreshold    ; $31fa: $21 $12 $d8
    rl [hl]                                       ; $31fd: $cb $16

.AdvanceHintCursorColumn:
    ld a, [rPuzzleCursorColumn]                   ; $31ff: $fa $36 $d6
    inc a                                         ; $3202: $3c
    cp $05                                        ; $3203: $fe $05
    jr nz, .HintCursorColumnNoWrap                ; $3205: $20 $01

    xor a                                         ; $3207: $af

.HintCursorColumnNoWrap:
    ld [rPuzzleCursorColumn], a                   ; $3208: $ea $36 $d6
    call $6c2c                                    ; $320b: $cd $2c $6c

.AdvanceHintCursorRow:
    ld a, [rHintCursorAnimationRowThreshold]      ; $320e: $fa $13 $d8
    cp $3f                                        ; $3211: $fe $3f
    jr nc, .FinalizeHintCursorAnimation           ; $3213: $30 $25

    ld c, a                                       ; $3215: $4f
    ld a, [rHintCursorAnimationRowAccumulator]    ; $3216: $fa $3f $d6
    cp c                                          ; $3219: $b9
    jr c, .FinalizeHintCursorAnimation            ; $321a: $38 $1e

    xor a                                         ; $321c: $af
    ld [rHintCursorAnimationRowAccumulator], a    ; $321d: $ea $3f $d6
    ld a, c                                       ; $3220: $79
    cp $02                                        ; $3221: $fe $02
    jr z, .HintCursorRowNoWrap                    ; $3223: $28 $06

    scf                                           ; $3225: $37
    ld hl, rHintCursorAnimationRowThreshold       ; $3226: $21 $13 $d8
    rl [hl]                                       ; $3229: $cb $16

.HintCursorRowNoWrap:
    ld a, [rPuzzleAndMenuCursorRow]               ; $322b: $fa $37 $d6
    inc a                                         ; $322e: $3c
    cp $05                                        ; $322f: $fe $05
    jr nz, .AdvanceHintCursorAnimationComplete    ; $3231: $20 $01

    xor a                                         ; $3233: $af

.AdvanceHintCursorAnimationComplete:
    ld [rPuzzleAndMenuCursorRow], a               ; $3234: $ea $37 $d6
    call $6c2c                                    ; $3237: $cd $2c $6c

.FinalizeHintCursorAnimation:
    call $7185                                    ; $323a: $cd $85 $71
    ret                                           ; $323d: $c9


GS06_ResetCellActionStepAndMarioMouthAnimationState::
    xor a                                         ; $323e: $af
    ld [rGS06_MarioMouthAnimationPatternCursor], a; $323f: $ea $1b $d8
    ld [rGS06_MarioMouthAnimationCountdown], a    ; $3242: $ea $1a $d8
    ld [rCellActionStepDelayTimer], a             ; $3245: $ea $1f $d8
    ld [rCellActionStepSequenceCursor], a         ; $3248: $ea $20 $d8
    ld [rCellActionStepSequenceState], a          ; $324b: $ea $21 $d8
    ret                                           ; $324e: $c9


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
