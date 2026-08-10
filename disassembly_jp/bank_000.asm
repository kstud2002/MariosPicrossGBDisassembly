; Disassembly of "Mario no Picross (Japan) (SGB Enhanced).gb"
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
    jp VBlankInterruptHandler                     ; $0040: $c3 $b6 $02


    ; padding
    ds $5, $00

LCDCInterrupt::
    jp LCDCInterruptHandler                       ; $0048: $c3 $30 $03


    ; padding
    ds $5, $00

TimerOverflowInterrupt::
    jp TimerOverflowInterruptHandlerStub          ; $0050: $c3 $58 $03


    ; padding
    ds $5, $00

SerialTransferCompleteInterrupt::
    jp SerialTransferCompleteInterruptHandlerStub ; $0058: $c3 $59 $03


    ; padding
    ds $5, $00

JoypadTransitionInterrupt::
    jp JoypadTransitionInterruptHandlerStub       ; $0060: $c3 $5a $03


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
    db $00

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $13

HeaderGlobalChecksum::
    db $a6, $ea

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
    call BusyWaitDelayByBC                        ; $0164: $cd $00 $06

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
    call BusyWaitDelayByBC                        ; $017b: $cd $00 $06
    call DisableLCDAtVBlank                       ; $017e: $cd $80 $04
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
    call ZeroMemoryBlock                          ; $019b: $cd $d0 $04
    ld sp, rSubtractiveRNGSeedSourceByte          ; $019e: $31 $ff $df
    call InstallHRAMOAMDMAStub                    ; $01a1: $cd $b8 $04
    call ClearShadowOAMBuffer                     ; $01a4: $cd $b3 $05
    call FillBGMap0WithTile01                     ; $01a7: $cd $9d $05
    call FillBGMap1WithTile01                     ; $01aa: $cd $a8 $05
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
    call DetectSuperGameBoyViaMltReqHandshake     ; $01da: $cd $40 $1e
    rl a                                          ; $01dd: $cb $17
    and $01                                       ; $01df: $e6 $01
    ld [rIsSuperGameBoyMode], a                   ; $01e1: $ea $3d $c3
    jr z, .AfterSGBStartupTransferCheck           ; $01e4: $28 $03

    call RunSGBStartupTransferPacketSequence      ; $01e6: $cd $fa $1e

.AfterSGBStartupTransferCheck:
    xor a                                         ; $01e9: $af
    ld [rSGBPacketTransferBusyFlag], a            ; $01ea: $ea $3e $c3
    ld a, $00                                     ; $01ed: $3e $00
    call CallSoundCommandDispatcher               ; $01ef: $cd $b3 $03
    ld a, $40                                     ; $01f2: $3e $40
    ld [rSubtractiveRNGModulus], a                ; $01f4: $ea $69 $cd
    call InitializeSubtractiveRNGState            ; $01f7: $cd $2e $06
    call HandleStartupSaveDataIntegrityCheck      ; $01fa: $cd $d7 $1a
    ld hl, SaveDataDefaultPerSaveSlotModeBGMSelectionIndices; $01fd: $21 $02 $1c
    ld de, rSaveSlot1EasyPicrossBGMSelectionIndex ; $0200: $11 $69 $a0
    ld bc, $000f                                  ; $0203: $01 $0f $00
    call CopyMemoryBlock                          ; $0206: $cd $d8 $04
    call RefreshSaveValidationChecksumsAndMirrors ; $0209: $cd $1c $1b
    ld a, $02                                     ; $020c: $3e $02
    ld hl, $45ee                                  ; $020e: $21 $ee $45
    call SwitchBankToAAndJumpToHL                 ; $0211: $cd $d4 $05
    ld sp, $fffe                                  ; $0214: $31 $fe $ff
    ld bc, $003c                                  ; $0217: $01 $3c $00
    call BusyWaitDelayByBC                        ; $021a: $cd $00 $06
    ld a, $05                                     ; $021d: $3e $05
    call CallSoundCommandDispatcher               ; $021f: $cd $b3 $03
    ld c, $00                                     ; $0222: $0e $00
    ld a, $01                                     ; $0224: $3e $01
    call CallSoundCommandDispatcher               ; $0226: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $0229: $cd $96 $03
    ld c, $00                                     ; $022c: $0e $00
    ld a, $01                                     ; $022e: $3e $01
    call CallSoundCommandDispatcher               ; $0230: $cd $b3 $03
    xor a                                         ; $0233: $af
    ld [rBGPShadow], a                            ; $0234: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $0237: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $023a: $ea $31 $c3
    ld bc, $0002                                  ; $023d: $01 $02 $00
    call BusyWaitDelayByBC                        ; $0240: $cd $00 $06
    di                                            ; $0243: $f3
    xor a                                         ; $0244: $af
    ldh [rIF], a                                  ; $0245: $e0 $0f
    ld sp, $fffe                                  ; $0247: $31 $fe $ff
    call DisableLCDAtVBlank                       ; $024a: $cd $80 $04
    ld a, $0a                                     ; $024d: $3e $0a
    ld [$0000], a                                 ; $024f: $ea $00 $00
    ld a, $01                                     ; $0252: $3e $01
    ld [rROMB], a                                 ; $0254: $ea $00 $20
    ld a, $00                                     ; $0257: $3e $00
    ld [$4000], a                                 ; $0259: $ea $00 $40
    ld a, $01                                     ; $025c: $3e $01
    ld [rActiveROMBank], a                        ; $025e: $ea $12 $c3
    ld sp, rSubtractiveRNGSeedSourceByte          ; $0261: $31 $ff $df
    call InstallHRAMOAMDMAStub                    ; $0264: $cd $b8 $04
    call ClearShadowOAMBuffer                     ; $0267: $cd $b3 $05
    call FillBGMap0WithTile01                     ; $026a: $cd $9d $05
    call FillBGMap1WithTile01                     ; $026d: $cd $a8 $05
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
    call CallSoundCommandDispatcher               ; $02a3: $cd $b3 $03
    ld a, $40                                     ; $02a6: $3e $40
    ld [rSubtractiveRNGModulus], a                ; $02a8: $ea $69 $cd
    call InitializeSubtractiveRNGState            ; $02ab: $cd $2e $06
    ld a, $02                                     ; $02ae: $3e $02
    ld hl, $45ee                                  ; $02b0: $21 $ee $45
    call SwitchBankToAAndJumpToHL                 ; $02b3: $cd $d4 $05

VBlankInterruptHandler::
    push af                                       ; $02b6: $f5
    push bc                                       ; $02b7: $c5
    push de                                       ; $02b8: $d5
    push hl                                       ; $02b9: $e5
    call rOAMDMAHRAMStubEntry                     ; $02ba: $cd $80 $ff
    call ProcessPendingCommandQueueEntries        ; $02bd: $cd $64 $07
    ldh a, [rLY]                                  ; $02c0: $f0 $44
    ld a, [rVBlankLCDCBit4ForceFlag]              ; $02c2: $fa $3c $c3
    and a                                         ; $02c5: $a7
    jr nz, .ApplyLCDCShadowWithBit4Forced         ; $02c6: $20 $07

    ld a, [rLCDCShadow]                           ; $02c8: $fa $2e $c3
    ldh [rLCDC], a                                ; $02cb: $e0 $40
    jr .AfterLCDCUpdate                           ; $02cd: $18 $07

.ApplyLCDCShadowWithBit4Forced:
    ld a, [rLCDCShadow]                           ; $02cf: $fa $2e $c3
    set 4, a                                      ; $02d2: $cb $e7
    ldh [rLCDC], a                                ; $02d4: $e0 $40

.AfterLCDCUpdate:
    ld a, [rSGBPacketTransferBusyFlag]            ; $02d6: $fa $3e $c3
    and a                                         ; $02d9: $a7
    jr nz, .CheckAllFaceButtonsHeldCombo          ; $02da: $20 $21

    ld hl, rBGPShadow                             ; $02dc: $21 $2f $c3
    ld a, [hl+]                                   ; $02df: $2a
    ldh [rBGP], a                                 ; $02e0: $e0 $47
    ld a, [hl+]                                   ; $02e2: $2a
    ldh [rOBP0], a                                ; $02e3: $e0 $48
    ld a, [hl+]                                   ; $02e5: $2a
    ldh [rOBP1], a                                ; $02e6: $e0 $49
    ld a, [hl+]                                   ; $02e8: $2a
    ldh [rSCX], a                                 ; $02e9: $e0 $43
    ld a, [hl+]                                   ; $02eb: $2a
    ldh [rSCY], a                                 ; $02ec: $e0 $42
    ld a, [hl+]                                   ; $02ee: $2a
    ldh [rWX], a                                  ; $02ef: $e0 $4b
    ld a, [hl+]                                   ; $02f1: $2a
    ldh [rWY], a                                  ; $02f2: $e0 $4a
    ld a, [hl+]                                   ; $02f4: $2a
    ldh [rLYC], a                                 ; $02f5: $e0 $45
    ld a, [hl+]                                   ; $02f7: $2a
    ldh [rSTAT], a                                ; $02f8: $e0 $41
    call PollJoypadAndUpdateInputState            ; $02fa: $cd $cb $06

.CheckAllFaceButtonsHeldCombo:
    ld a, [rInputButtonsHeld]                     ; $02fd: $fa $1a $c3
    cp $0f                                        ; $0300: $fe $0f
    jr nz, .MaybeRunSoundEngineUpdate             ; $0302: $20 $0c

    ld a, [rInputButtonsPressed]                  ; $0304: $fa $1e $c3
    and $0f                                       ; $0307: $e6 $0f
    jr z, .MaybeRunSoundEngineUpdate              ; $0309: $28 $05

    ld hl, $0214                                  ; $030b: $21 $14 $02
    push hl                                       ; $030e: $e5
    reti                                          ; $030f: $d9


.MaybeRunSoundEngineUpdate:
    ld a, [rUseLCDCInterruptForSoundEngineUpdateFlag]; $0310: $fa $50 $c3
    and a                                         ; $0313: $a7
    jr nz, .FinalizeAndExit                       ; $0314: $20 $09

    ld a, [rSGBPacketTransferBusyFlag]            ; $0316: $fa $3e $c3
    and a                                         ; $0319: $a7
    jr nz, .FinalizeAndExit                       ; $031a: $20 $03

    call CallSoundEngineUpdateRoutine             ; $031c: $cd $eb $03

.FinalizeAndExit:
    ld a, [rVBlankFrameCounter]                   ; $031f: $fa $3a $c3
    inc a                                         ; $0322: $3c
    ld [rVBlankFrameCounter], a                   ; $0323: $ea $3a $c3
    ld a, $01                                     ; $0326: $3e $01
    ld [rVBlankSyncFlag], a                       ; $0328: $ea $39 $c3
    pop hl                                        ; $032b: $e1
    pop de                                        ; $032c: $d1
    pop bc                                        ; $032d: $c1
    pop af                                        ; $032e: $f1
    reti                                          ; $032f: $d9


LCDCInterruptHandler::
    push af                                       ; $0330: $f5
    push bc                                       ; $0331: $c5
    push de                                       ; $0332: $d5
    push hl                                       ; $0333: $e5
    ld hl, LCDCInterruptHandlerReturnAndReti      ; $0334: $21 $4a $03
    push hl                                       ; $0337: $e5
    ld a, [rLCDCInterruptDispatchIndex]           ; $0338: $fa $38 $c3
    sla a                                         ; $033b: $cb $27
    ld c, a                                       ; $033d: $4f
    ld b, $00                                     ; $033e: $06 $00
    ld hl, LCDCInterruptDispatchTable             ; $0340: $21 $4f $03
    add hl, bc                                    ; $0343: $09
    ld c, [hl]                                    ; $0344: $4e
    inc hl                                        ; $0345: $23
    ld b, [hl]                                    ; $0346: $46
    push bc                                       ; $0347: $c5
    pop hl                                        ; $0348: $e1
    jp hl                                         ; $0349: $e9


LCDCInterruptHandlerReturnAndReti::
    pop hl                                        ; $034a: $e1
    pop de                                        ; $034b: $d1
    pop bc                                        ; $034c: $c1
    pop af                                        ; $034d: $f1
    reti                                          ; $034e: $d9


LCDCInterruptDispatchTable::
    db $57, $03
    db $6c, $08
    db $9b, $08
    db $57, $03

LCDCInterruptDispatchNoOpReturn::
    ret                                           ; $0357: $c9


TimerOverflowInterruptHandlerStub::
    reti                                          ; $0358: $d9


SerialTransferCompleteInterruptHandlerStub::
    reti                                          ; $0359: $d9


JoypadTransitionInterruptHandlerStub::
    reti                                          ; $035a: $d9


SETCHARMAP ascii

HiddenProgrammerCredits::
    db "Noriaki Teramoto"

SaveValidationMagicBytes::
    db $5f, $02, $01, $16, $00

GameStateDispatcher::
    ld e, a                                       ; $0370: $5f
    add a                                         ; $0371: $87
    add e                                         ; $0372: $83
    pop hl                                        ; $0373: $e1
    ld e, a                                       ; $0374: $5f
    ld d, $00                                     ; $0375: $16 $00
    add hl, de                                    ; $0377: $19
    ld e, [hl]                                    ; $0378: $5e
    inc hl                                        ; $0379: $23
    ld d, [hl]                                    ; $037a: $56
    inc hl                                        ; $037b: $23
    ld a, [rActiveROMBank]                        ; $037c: $fa $12 $c3
    push af                                       ; $037f: $f5
    ld a, [hl]                                    ; $0380: $7e
    ld [rActiveROMBank], a                        ; $0381: $ea $12 $c3
    ld [rROMB], a                                 ; $0384: $ea $00 $20
    ld l, e                                       ; $0387: $6b
    ld h, d                                       ; $0388: $62
    ld de, $038e                                  ; $0389: $11 $8e $03
    push de                                       ; $038c: $d5
    jp hl                                         ; $038d: $e9


    pop af                                        ; $038e: $f1
    ld [rActiveROMBank], a                        ; $038f: $ea $12 $c3
    ld [rROMB], a                                 ; $0392: $ea $00 $20
    ret                                           ; $0395: $c9


WaitForScanline40OrDelay::
    push hl                                       ; $0396: $e5
    ldh a, [rLCDC]                                ; $0397: $f0 $40
    bit 7, a                                      ; $0399: $cb $7f
    jr nz, .SyncAndWaitForScanline40              ; $039b: $20 $0d

    ld de, $06d6                                  ; $039d: $11 $d6 $06

.DelayLoop_LCDOff:
    nop                                           ; $03a0: $00
    nop                                           ; $03a1: $00
    nop                                           ; $03a2: $00
    dec de                                        ; $03a3: $1b
    ld a, d                                       ; $03a4: $7a
    or e                                          ; $03a5: $b3
    jr nz, .DelayLoop_LCDOff                      ; $03a6: $20 $f8

    pop hl                                        ; $03a8: $e1
    ret                                           ; $03a9: $c9


.SyncAndWaitForScanline40:
    rst RST_08                                    ; $03aa: $cf

.WaitForScanline40Loop:
    ldh a, [rLY]                                  ; $03ab: $f0 $44
    cp $40                                        ; $03ad: $fe $40
    jr c, .WaitForScanline40Loop                  ; $03af: $38 $fa

    pop hl                                        ; $03b1: $e1
    ret                                           ; $03b2: $c9


CallSoundCommandDispatcher::
    push af                                       ; $03b3: $f5
    push bc                                       ; $03b4: $c5
    push de                                       ; $03b5: $d5
    push hl                                       ; $03b6: $e5
    ld l, a                                       ; $03b7: $6f
    ldh a, [rIE]                                  ; $03b8: $f0 $ff
    push af                                       ; $03ba: $f5
    res 0, a                                      ; $03bb: $cb $87
    ldh [rIE], a                                  ; $03bd: $e0 $ff
    ld a, [rActiveROMBank]                        ; $03bf: $fa $12 $c3
    push af                                       ; $03c2: $f5
    ld a, $0f                                     ; $03c3: $3e $0f
    ld [rActiveROMBank], a                        ; $03c5: $ea $12 $c3
    ld [rROMB], a                                 ; $03c8: $ea $00 $20

.DispatchSoundCommandLoop:
    push bc                                       ; $03cb: $c5
    push hl                                       ; $03cc: $e5
    ld a, l                                       ; $03cd: $7d
    call $4000                                    ; $03ce: $cd $00 $40
    pop hl                                        ; $03d1: $e1
    pop bc                                        ; $03d2: $c1
    jr nc, .RestoreBankAndInterruptEnableAndReturn; $03d3: $30 $07

    nop                                           ; $03d5: $00
    nop                                           ; $03d6: $00
    nop                                           ; $03d7: $00
    nop                                           ; $03d8: $00
    nop                                           ; $03d9: $00
    jr .DispatchSoundCommandLoop                  ; $03da: $18 $ef

.RestoreBankAndInterruptEnableAndReturn:
    pop af                                        ; $03dc: $f1
    ld [rActiveROMBank], a                        ; $03dd: $ea $12 $c3
    ld [rROMB], a                                 ; $03e0: $ea $00 $20
    pop af                                        ; $03e3: $f1
    ldh [rIE], a                                  ; $03e4: $e0 $ff
    pop hl                                        ; $03e6: $e1
    pop de                                        ; $03e7: $d1
    pop bc                                        ; $03e8: $c1
    pop af                                        ; $03e9: $f1
    ret                                           ; $03ea: $c9


CallSoundEngineUpdateRoutine::
    push af                                       ; $03eb: $f5
    push bc                                       ; $03ec: $c5
    push de                                       ; $03ed: $d5
    push hl                                       ; $03ee: $e5
    ld a, [rActiveROMBank]                        ; $03ef: $fa $12 $c3
    push af                                       ; $03f2: $f5
    ld a, $0f                                     ; $03f3: $3e $0f
    ld [rActiveROMBank], a                        ; $03f5: $ea $12 $c3
    ld [rROMB], a                                 ; $03f8: $ea $00 $20
    call $4003                                    ; $03fb: $cd $03 $40
    pop af                                        ; $03fe: $f1
    ld [rActiveROMBank], a                        ; $03ff: $ea $12 $c3
    ld [rROMB], a                                 ; $0402: $ea $00 $20
    pop hl                                        ; $0405: $e1
    pop de                                        ; $0406: $d1
    pop bc                                        ; $0407: $c1
    pop af                                        ; $0408: $f1
    ret                                           ; $0409: $c9


PlayScreenTransitionFadeIn::
    ld a, [rIsSuperGameBoyMode]                   ; $040a: $fa $3d $c3
    and a                                         ; $040d: $a7
    jp nz, PlayScreenTransitionFadeIn_SGB         ; $040e: $c2 $c5 $1f

    ld a, [rActiveROMBank]                        ; $0411: $fa $12 $c3
    push af                                       ; $0414: $f5
    ld a, b                                       ; $0415: $78
    ld [rActiveROMBank], a                        ; $0416: $ea $12 $c3
    ld [rROMB], a                                 ; $0419: $ea $00 $20
    ld b, $04                                     ; $041c: $06 $04

.ApplyFadeStepLoop:
    ld a, [hl+]                                   ; $041e: $2a
    ld [rBGPShadow], a                            ; $041f: $ea $2f $c3
    ld a, [hl+]                                   ; $0422: $2a
    ld [rOBP0Shadow], a                           ; $0423: $ea $30 $c3
    ld a, [hl+]                                   ; $0426: $2a
    ld [rOBP1Shadow], a                           ; $0427: $ea $31 $c3
    push bc                                       ; $042a: $c5
    push hl                                       ; $042b: $e5
    ld bc, $0004                                  ; $042c: $01 $04 $00
    call BusyWaitDelayByBC                        ; $042f: $cd $00 $06
    pop hl                                        ; $0432: $e1
    pop bc                                        ; $0433: $c1
    dec b                                         ; $0434: $05
    jr nz, .ApplyFadeStepLoop                     ; $0435: $20 $e7

    ld [rStatePhaseTimer], a                      ; $0437: $ea $3c $d6
    ld [rSharedAnimationFrameState], a            ; $043a: $ea $3d $d6
    ld [rSharedUIAnimationColumnAccumulator], a   ; $043d: $ea $3e $d6
    ld [rHintCursorAnimationRowAccumulator], a    ; $0440: $ea $3f $d6
    pop af                                        ; $0443: $f1
    ld [rActiveROMBank], a                        ; $0444: $ea $12 $c3
    ld [rROMB], a                                 ; $0447: $ea $00 $20
    ret                                           ; $044a: $c9


PlayScreenTransitionFadeOut::
    ld a, [rIsSuperGameBoyMode]                   ; $044b: $fa $3d $c3
    and a                                         ; $044e: $a7
    jp nz, PlayScreenTransitionFadeOut_SGB        ; $044f: $c2 $47 $20

    ld a, [rActiveROMBank]                        ; $0452: $fa $12 $c3
    push af                                       ; $0455: $f5
    ld a, b                                       ; $0456: $78
    ld [rActiveROMBank], a                        ; $0457: $ea $12 $c3
    ld [rROMB], a                                 ; $045a: $ea $00 $20
    ld b, $04                                     ; $045d: $06 $04

.ApplyFadeStepLoop:
    ld a, [hl-]                                   ; $045f: $3a
    ld [rOBP1Shadow], a                           ; $0460: $ea $31 $c3
    ld a, [hl-]                                   ; $0463: $3a
    ld [rOBP0Shadow], a                           ; $0464: $ea $30 $c3
    ld a, [hl-]                                   ; $0467: $3a
    ld [rBGPShadow], a                            ; $0468: $ea $2f $c3
    push bc                                       ; $046b: $c5
    push hl                                       ; $046c: $e5
    ld bc, $0004                                  ; $046d: $01 $04 $00
    call BusyWaitDelayByBC                        ; $0470: $cd $00 $06
    pop hl                                        ; $0473: $e1
    pop bc                                        ; $0474: $c1
    dec b                                         ; $0475: $05
    jr nz, .ApplyFadeStepLoop                     ; $0476: $20 $e7

    pop af                                        ; $0478: $f1
    ld [rActiveROMBank], a                        ; $0479: $ea $12 $c3
    ld [rROMB], a                                 ; $047c: $ea $00 $20
    ret                                           ; $047f: $c9


DisableLCDAtVBlank::
    ldh a, [rLCDC]                                ; $0480: $f0 $40
    bit 7, a                                      ; $0482: $cb $7f
    ret z                                         ; $0484: $c8

    ldh a, [rIE]                                  ; $0485: $f0 $ff
    push af                                       ; $0487: $f5
    xor a                                         ; $0488: $af
    ldh [rIE], a                                  ; $0489: $e0 $ff

.WaitForVBlankLine91:
    ldh a, [rLY]                                  ; $048b: $f0 $44
    cp $91                                        ; $048d: $fe $91
    jr nz, .WaitForVBlankLine91                   ; $048f: $20 $fa

    ld a, [rLCDCShadow]                           ; $0491: $fa $2e $c3
    res 7, a                                      ; $0494: $cb $bf
    ldh [rLCDC], a                                ; $0496: $e0 $40
    ld [rLCDCShadow], a                           ; $0498: $ea $2e $c3
    pop af                                        ; $049b: $f1
    ldh [rIE], a                                  ; $049c: $e0 $ff
    ret                                           ; $049e: $c9


EnableLCDFromShadow::
    ld a, [rLCDCShadow]                           ; $049f: $fa $2e $c3
    set 7, a                                      ; $04a2: $cb $ff
    ldh [rLCDC], a                                ; $04a4: $e0 $40
    ld [rLCDCShadow], a                           ; $04a6: $ea $2e $c3
    ret                                           ; $04a9: $c9


    ldh a, [rIE]                                  ; $04aa: $f0 $ff
    res 0, a                                      ; $04ac: $cb $87
    ldh [rIE], a                                  ; $04ae: $e0 $ff
    ret                                           ; $04b0: $c9


    ldh a, [rIE]                                  ; $04b1: $f0 $ff
    set 0, a                                      ; $04b3: $cb $c7
    ldh [rIE], a                                  ; $04b5: $e0 $ff
    ret                                           ; $04b7: $c9


InstallHRAMOAMDMAStub::
    ld c, $80                                     ; $04b8: $0e $80
    ld b, $0a                                     ; $04ba: $06 $0a
    ld hl, OAMDMAHRAMStubTemplate                 ; $04bc: $21 $c6 $04

.CopyHRAMOAMDMAStubByteLoop:
    ld a, [hl+]                                   ; $04bf: $2a
    ldh [c], a                                    ; $04c0: $e2
    inc c                                         ; $04c1: $0c
    dec b                                         ; $04c2: $05
    jr nz, .CopyHRAMOAMDMAStubByteLoop            ; $04c3: $20 $fa

    ret                                           ; $04c5: $c9


OAMDMAHRAMStubTemplate::
    ld a, $c0                                     ; $04c6: $3e $c0
    ldh [rDMA], a                                 ; $04c8: $e0 $46
    ld a, $28                                     ; $04ca: $3e $28

.WaitForDMATransferLoop:
    dec a                                         ; $04cc: $3d
    jr nz, .WaitForDMATransferLoop                ; $04cd: $20 $fd

    ret                                           ; $04cf: $c9


ZeroMemoryBlock::
    xor a                                         ; $04d0: $af
    ld [hl+], a                                   ; $04d1: $22
    dec bc                                        ; $04d2: $0b
    ld a, c                                       ; $04d3: $79
    or b                                          ; $04d4: $b0
    jr nz, ZeroMemoryBlock                        ; $04d5: $20 $f9

    ret                                           ; $04d7: $c9


CopyMemoryBlock::
    ld a, [hl+]                                   ; $04d8: $2a
    ld [de], a                                    ; $04d9: $12
    inc de                                        ; $04da: $13
    dec bc                                        ; $04db: $0b
    ld a, c                                       ; $04dc: $79
    or b                                          ; $04dd: $b0
    jr nz, CopyMemoryBlock                        ; $04de: $20 $f8

    ret                                           ; $04e0: $c9


BankedTileCopy::
    ld [rRequestedROMBank], a                     ; $04e1: $ea $14 $c3
    ld a, [rActiveROMBank]                        ; $04e4: $fa $12 $c3
    push af                                       ; $04e7: $f5
    ld a, [rRequestedROMBank]                     ; $04e8: $fa $14 $c3
    ld [rActiveROMBank], a                        ; $04eb: $ea $12 $c3
    ld [rROMB], a                                 ; $04ee: $ea $00 $20

.CopyLoop:
    ld a, [hl+]                                   ; $04f1: $2a
    ld [de], a                                    ; $04f2: $12
    inc de                                        ; $04f3: $13
    dec bc                                        ; $04f4: $0b
    ld a, c                                       ; $04f5: $79
    or b                                          ; $04f6: $b0
    jr nz, .CopyLoop                              ; $04f7: $20 $f8

    pop af                                        ; $04f9: $f1
    ld [rActiveROMBank], a                        ; $04fa: $ea $12 $c3
    ld [rROMB], a                                 ; $04fd: $ea $00 $20
    ret                                           ; $0500: $c9


BankedTransparentTileCopy::
    ld [rRequestedROMBank], a                     ; $0501: $ea $14 $c3
    ld a, [rActiveROMBank]                        ; $0504: $fa $12 $c3
    push af                                       ; $0507: $f5
    ld a, [rRequestedROMBank]                     ; $0508: $fa $14 $c3
    ld [rActiveROMBank], a                        ; $050b: $ea $12 $c3
    ld [rROMB], a                                 ; $050e: $ea $00 $20
    srl b                                         ; $0511: $cb $38
    rr c                                          ; $0513: $cb $19

.MaskAndCopyLoop:
    push bc                                       ; $0515: $c5
    ld a, [hl+]                                   ; $0516: $2a
    ld b, a                                       ; $0517: $47
    or [hl]                                       ; $0518: $b6
    xor $ff                                       ; $0519: $ee $ff
    ld c, a                                       ; $051b: $4f
    ld a, [de]                                    ; $051c: $1a
    and c                                         ; $051d: $a1
    or b                                          ; $051e: $b0
    ld [de], a                                    ; $051f: $12
    inc de                                        ; $0520: $13
    ld a, [de]                                    ; $0521: $1a
    and c                                         ; $0522: $a1
    or [hl]                                       ; $0523: $b6
    ld [de], a                                    ; $0524: $12
    inc de                                        ; $0525: $13
    inc hl                                        ; $0526: $23
    pop bc                                        ; $0527: $c1
    dec bc                                        ; $0528: $0b
    ld a, c                                       ; $0529: $79
    or b                                          ; $052a: $b0
    jr nz, .MaskAndCopyLoop                       ; $052b: $20 $e8

    pop af                                        ; $052d: $f1
    ld [rActiveROMBank], a                        ; $052e: $ea $12 $c3
    ld [rROMB], a                                 ; $0531: $ea $00 $20
    ret                                           ; $0534: $c9


BankedTileCopyVRAMSafe::
    ld [rRequestedROMBank], a                     ; $0535: $ea $14 $c3
    ld a, [rActiveROMBank]                        ; $0538: $fa $12 $c3
    push af                                       ; $053b: $f5
    ld a, [rRequestedROMBank]                     ; $053c: $fa $14 $c3
    ld [rActiveROMBank], a                        ; $053f: $ea $12 $c3
    ld [rROMB], a                                 ; $0542: $ea $00 $20
    ldh a, [rIE]                                  ; $0545: $f0 $ff
    push af                                       ; $0547: $f5

.WaitForLYBelow80_PreTransfer:
    ldh a, [rLY]                                  ; $0548: $f0 $44
    cp $80                                        ; $054a: $fe $80
    jr nc, .WaitForLYBelow80_PreTransfer          ; $054c: $30 $fa

    ldh a, [rIE]                                  ; $054e: $f0 $ff
    res 0, a                                      ; $0550: $cb $87
    ldh [rIE], a                                  ; $0552: $e0 $ff

.WaitForLYAtOrAbove90:
    ldh a, [rLY]                                  ; $0554: $f0 $44
    cp $90                                        ; $0556: $fe $90
    jr c, .WaitForLYAtOrAbove90                   ; $0558: $38 $fa

    ld a, [rLCDCShadow]                           ; $055a: $fa $2e $c3
    set 4, a                                      ; $055d: $cb $e7
    ldh [rLCDC], a                                ; $055f: $e0 $40
    ld a, $20                                     ; $0561: $3e $20

.CopyChunkOf20BytesOrUntilDone:
    push af                                       ; $0563: $f5
    ld a, [hl+]                                   ; $0564: $2a
    ld [de], a                                    ; $0565: $12
    inc de                                        ; $0566: $13
    dec bc                                        ; $0567: $0b
    ld a, b                                       ; $0568: $78
    or c                                          ; $0569: $b1
    jr z, .PostCopySyncAndFinalizeTransfer        ; $056a: $28 $0c

    pop af                                        ; $056c: $f1
    dec a                                         ; $056d: $3d
    jr nz, .CopyChunkOf20BytesOrUntilDone         ; $056e: $20 $f3

.WaitForLYBelow90BeforeNextChunk:
    ldh a, [rLY]                                  ; $0570: $f0 $44
    cp $90                                        ; $0572: $fe $90
    jr c, .WaitForLYAtOrAbove90                   ; $0574: $38 $de

    jr .WaitForLYBelow90BeforeNextChunk           ; $0576: $18 $f8

.PostCopySyncAndFinalizeTransfer:
    pop af                                        ; $0578: $f1
    ldh a, [rLY]                                  ; $0579: $f0 $44
    cp $80                                        ; $057b: $fe $80
    jr c, .RestoreIEAndBankAndReturn              ; $057d: $38 $13

.WaitForLYAtOrAbove90_PostCopy:
    ldh a, [rLY]                                  ; $057f: $f0 $44
    cp $90                                        ; $0581: $fe $90
    jr c, .WaitForLYAtOrAbove90_PostCopy          ; $0583: $38 $fa

    ld a, [rLCDCShadow]                           ; $0585: $fa $2e $c3
    set 4, a                                      ; $0588: $cb $e7
    ldh [rLCDC], a                                ; $058a: $e0 $40

.WaitForLYBelow80_PostCopy:
    ldh a, [rLY]                                  ; $058c: $f0 $44
    cp $80                                        ; $058e: $fe $80
    jr nc, .WaitForLYBelow80_PostCopy             ; $0590: $30 $fa

.RestoreIEAndBankAndReturn:
    pop af                                        ; $0592: $f1
    ldh [rIE], a                                  ; $0593: $e0 $ff
    pop af                                        ; $0595: $f1
    ld [rActiveROMBank], a                        ; $0596: $ea $12 $c3
    ld [rROMB], a                                 ; $0599: $ea $00 $20
    ret                                           ; $059c: $c9


FillBGMap0WithTile01::
    ld a, $01                                     ; $059d: $3e $01
    ld hl, $9800                                  ; $059f: $21 $00 $98

.FillBGMap0WithTile01Loop:
    ld [hl+], a                                   ; $05a2: $22
    bit 2, h                                      ; $05a3: $cb $54
    jr z, .FillBGMap0WithTile01Loop               ; $05a5: $28 $fb

    ret                                           ; $05a7: $c9


FillBGMap1WithTile01::
    ld a, $01                                     ; $05a8: $3e $01
    ld hl, $9c00                                  ; $05aa: $21 $00 $9c

.FillBGMap1WithTile01Loop:
    ld [hl+], a                                   ; $05ad: $22
    bit 5, h                                      ; $05ae: $cb $6c
    jr z, .FillBGMap1WithTile01Loop               ; $05b0: $28 $fb

    ret                                           ; $05b2: $c9


ClearShadowOAMBuffer::
    ld a, $f0                                     ; $05b3: $3e $f0
    ld hl, $c000                                  ; $05b5: $21 $00 $c0

.FillWithF0Loop:
    ld [hl+], a                                   ; $05b8: $22
    bit 0, h                                      ; $05b9: $cb $44
    jr z, .FillWithF0Loop                         ; $05bb: $28 $fb

    xor a                                         ; $05bd: $af
    ld [rShadowOAMWriteCursor], a                 ; $05be: $ea $11 $c3
    ret                                           ; $05c1: $c9


ClearShadowOAMBufferFromCursor::
    ld a, [rShadowOAMWriteCursor]                 ; $05c2: $fa $11 $c3
    ld l, a                                       ; $05c5: $6f
    ld h, $c0                                     ; $05c6: $26 $c0
    ld a, $f0                                     ; $05c8: $3e $f0

.FillWithF0Loop:
    ld [hl+], a                                   ; $05ca: $22
    bit 0, h                                      ; $05cb: $cb $44
    jr z, .FillWithF0Loop                         ; $05cd: $28 $fb

    xor a                                         ; $05cf: $af
    ld [rShadowOAMWriteCursor], a                 ; $05d0: $ea $11 $c3
    ret                                           ; $05d3: $c9


SwitchBankToAAndJumpToHL::
    ld [rActiveROMBank], a                        ; $05d4: $ea $12 $c3
    ld [rROMB], a                                 ; $05d7: $ea $00 $20
    jp hl                                         ; $05da: $e9


SwitchBankToBAndJumpToHL::
    ld a, [rActiveROMBank]                        ; $05db: $fa $12 $c3
    push af                                       ; $05de: $f5
    ld a, b                                       ; $05df: $78
    ld [rActiveROMBank], a                        ; $05e0: $ea $12 $c3
    ld [rROMB], a                                 ; $05e3: $ea $00 $20
    jp hl                                         ; $05e6: $e9


ReturnFromBankedJumpRestoreBank::
    push af                                       ; $05e7: $f5
    push hl                                       ; $05e8: $e5
    ld hl, sp+$05                                 ; $05e9: $f8 $05
    ld a, [hl]                                    ; $05eb: $7e
    ld [rActiveROMBank], a                        ; $05ec: $ea $12 $c3
    ld [rROMB], a                                 ; $05ef: $ea $00 $20
    pop hl                                        ; $05f2: $e1
    pop af                                        ; $05f3: $f1
    inc sp                                        ; $05f4: $33
    inc sp                                        ; $05f5: $33
    ret                                           ; $05f6: $c9


DelayFramesByBC::
    push bc                                       ; $05f7: $c5
    rst RST_08                                    ; $05f8: $cf
    pop bc                                        ; $05f9: $c1
    dec bc                                        ; $05fa: $0b
    ld a, c                                       ; $05fb: $79
    or b                                          ; $05fc: $b0
    jr nz, DelayFramesByBC                        ; $05fd: $20 $f8

    ret                                           ; $05ff: $c9


BusyWaitDelayByBC::
    ld de, $06d6                                  ; $0600: $11 $d6 $06

.InnerDelayLoop:
    nop                                           ; $0603: $00
    nop                                           ; $0604: $00
    nop                                           ; $0605: $00
    dec de                                        ; $0606: $1b
    ld a, d                                       ; $0607: $7a
    or e                                          ; $0608: $b3
    jr nz, .InnerDelayLoop                        ; $0609: $20 $f8

    dec bc                                        ; $060b: $0b
    ld a, b                                       ; $060c: $78
    or c                                          ; $060d: $b1
    jr nz, BusyWaitDelayByBC                      ; $060e: $20 $f0

    ret                                           ; $0610: $c9


GetSubtractiveRNGStateByte::
    push hl                                       ; $0611: $e5
    ld a, [rSubtractiveRNGStateCursor]            ; $0612: $fa $6a $cd
    ld c, a                                       ; $0615: $4f
    ld b, $00                                     ; $0616: $06 $00
    inc a                                         ; $0618: $3c
    cp $37                                        ; $0619: $fe $37
    jr nz, .StoreRNGCursorAndReadStateByte        ; $061b: $20 $07

    call AdvanceSubtractiveRNGState               ; $061d: $cd $a4 $06
    xor a                                         ; $0620: $af
    ld bc, $0000                                  ; $0621: $01 $00 $00

.StoreRNGCursorAndReadStateByte:
    ld [rSubtractiveRNGStateCursor], a            ; $0624: $ea $6a $cd
    ld hl, rSubtractiveRNGStateTableStart         ; $0627: $21 $6b $cd
    add hl, bc                                    ; $062a: $09
    ld a, [hl]                                    ; $062b: $7e
    pop hl                                        ; $062c: $e1
    ret                                           ; $062d: $c9


InitializeSubtractiveRNGState::
    ld a, [rSubtractiveRNGModulus]                ; $062e: $fa $69 $cd
    ld d, a                                       ; $0631: $57
    ld a, [rSubtractiveRNGSeedSourceByte]         ; $0632: $fa $ff $df

.ReduceSeedModuloRangeLoop:
    cp d                                          ; $0635: $ba
    jr c, .InitializeRNGStateFromReducedSeed      ; $0636: $38 $03

    sub d                                         ; $0638: $92
    jr .ReduceSeedModuloRangeLoop                 ; $0639: $18 $fa

.InitializeRNGStateFromReducedSeed:
    ld [rSubtractiveRNGStateSeed], a              ; $063b: $ea $68 $cd
    ld [rSubtractiveRNGStateTableEnd], a          ; $063e: $ea $a1 $cd
    ld e, $01                                     ; $0641: $1e $01
    ld hl, SubtractiveRNGStateInitOffsetTable     ; $0643: $21 $6e $06
    ld a, $36                                     ; $0646: $3e $36

.InitializeRNGStateEntryLoop:
    push af                                       ; $0648: $f5
    ld c, [hl]                                    ; $0649: $4e
    inc hl                                        ; $064a: $23
    ld b, $00                                     ; $064b: $06 $00
    push hl                                       ; $064d: $e5
    ld hl, rSubtractiveRNGStateTableStart         ; $064e: $21 $6b $cd
    add hl, bc                                    ; $0651: $09
    ld [hl], e                                    ; $0652: $73
    ld a, [rSubtractiveRNGStateSeed]              ; $0653: $fa $68 $cd
    sub e                                         ; $0656: $93
    jr nc, .WrapAndStoreRNGStateByte              ; $0657: $30 $01

    add d                                         ; $0659: $82

.WrapAndStoreRNGStateByte:
    ld e, a                                       ; $065a: $5f
    ld a, [hl]                                    ; $065b: $7e
    ld [rSubtractiveRNGStateSeed], a              ; $065c: $ea $68 $cd
    pop hl                                        ; $065f: $e1
    pop af                                        ; $0660: $f1
    dec a                                         ; $0661: $3d
    jr nz, .InitializeRNGStateEntryLoop           ; $0662: $20 $e4

    call AdvanceSubtractiveRNGState               ; $0664: $cd $a4 $06
    call AdvanceSubtractiveRNGState               ; $0667: $cd $a4 $06
    call AdvanceSubtractiveRNGState               ; $066a: $cd $a4 $06
    ret                                           ; $066d: $c9


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
    ld a, [rSubtractiveRNGModulus]                ; $06a4: $fa $69 $cd
    ld d, a                                       ; $06a7: $57
    ld bc, rSubtractiveRNGStateTableStart         ; $06a8: $01 $6b $cd
    ld hl, rSubtractiveRNGStateTableOffset1f      ; $06ab: $21 $8a $cd
    ld e, $18                                     ; $06ae: $1e $18

.FirstSubtractivePassLoop:
    ld a, [bc]                                    ; $06b0: $0a
    sub [hl]                                      ; $06b1: $96
    jr nc, .StoreFirstSubtractivePassByte         ; $06b2: $30 $01

    add d                                         ; $06b4: $82

.StoreFirstSubtractivePassByte:
    ld [bc], a                                    ; $06b5: $02
    dec e                                         ; $06b6: $1d
    jr nz, .FirstSubtractivePassLoop              ; $06b7: $20 $f7

    ld bc, rSubtractiveRNGStateTableOffset18      ; $06b9: $01 $83 $cd
    ld hl, rSubtractiveRNGStateTableStart         ; $06bc: $21 $6b $cd
    ld e, $1f                                     ; $06bf: $1e $1f

.SecondSubtractivePassLoop:
    ld a, [bc]                                    ; $06c1: $0a
    sub [hl]                                      ; $06c2: $96
    jr nc, .StoreSecondSubtractivePassByte        ; $06c3: $30 $01

    add d                                         ; $06c5: $82

.StoreSecondSubtractivePassByte:
    ld [bc], a                                    ; $06c6: $02
    dec e                                         ; $06c7: $1d
    jr nz, .SecondSubtractivePassLoop             ; $06c8: $20 $f7

    ret                                           ; $06ca: $c9


PollJoypadAndUpdateInputState::
    ld a, $20                                     ; $06cb: $3e $20
    ldh [rP1], a                                  ; $06cd: $e0 $00
    ldh a, [rP1]                                  ; $06cf: $f0 $00
    ldh a, [rP1]                                  ; $06d1: $f0 $00
    and $0f                                       ; $06d3: $e6 $0f
    swap a                                        ; $06d5: $cb $37
    ld b, a                                       ; $06d7: $47
    ld a, $30                                     ; $06d8: $3e $30
    ldh [rP1], a                                  ; $06da: $e0 $00
    ld a, $10                                     ; $06dc: $3e $10
    ldh [rP1], a                                  ; $06de: $e0 $00
    ldh a, [rP1]                                  ; $06e0: $f0 $00
    ldh a, [rP1]                                  ; $06e2: $f0 $00
    ldh a, [rP1]                                  ; $06e4: $f0 $00
    ldh a, [rP1]                                  ; $06e6: $f0 $00
    ldh a, [rP1]                                  ; $06e8: $f0 $00
    ldh a, [rP1]                                  ; $06ea: $f0 $00
    and $0f                                       ; $06ec: $e6 $0f
    or b                                          ; $06ee: $b0
    cpl                                           ; $06ef: $2f
    ld [rInputButtonsHeld], a                     ; $06f0: $ea $1a $c3
    ld a, $30                                     ; $06f3: $3e $30
    ldh [rP1], a                                  ; $06f5: $e0 $00
    ld a, [rInputButtonsHeld]                     ; $06f7: $fa $1a $c3
    ld hl, rInputButtonsHeldPrevious              ; $06fa: $21 $26 $c3
    xor [hl]                                      ; $06fd: $ae
    ld hl, rInputButtonsHeld                      ; $06fe: $21 $1a $c3
    and [hl]                                      ; $0701: $a6
    ld [rInputButtonsPressed], a                  ; $0702: $ea $1e $c3
    ld [rInputButtonsPressedOrRepeated], a        ; $0705: $ea $22 $c3
    ld a, [rInputButtonsHeld]                     ; $0708: $fa $1a $c3
    and a                                         ; $070b: $a7
    jr z, .ResetInputRepeatCountdownToInitialDelay; $070c: $28 $1a

    ld hl, rInputButtonsHeldPrevious              ; $070e: $21 $26 $c3
    cp [hl]                                       ; $0711: $be
    jr nz, .ResetInputRepeatCountdownToInitialDelay; $0712: $20 $14

    ld hl, rInputRepeatCountdown                  ; $0714: $21 $2a $c3
    dec [hl]                                      ; $0717: $35
    jr nz, .StoreCurrentHeldButtonsAsPreviousAndReturn; $0718: $20 $14

    ld a, [rInputButtonsHeld]                     ; $071a: $fa $1a $c3
    ld [rInputButtonsPressedOrRepeated], a        ; $071d: $ea $22 $c3
    ld a, [rInputRepeatSubsequentInterval]        ; $0720: $fa $19 $c3
    ld [rInputRepeatCountdown], a                 ; $0723: $ea $2a $c3
    jr .StoreCurrentHeldButtonsAsPreviousAndReturn; $0726: $18 $06

.ResetInputRepeatCountdownToInitialDelay:
    ld a, [rInputRepeatInitialDelay]              ; $0728: $fa $18 $c3
    ld [rInputRepeatCountdown], a                 ; $072b: $ea $2a $c3

.StoreCurrentHeldButtonsAsPreviousAndReturn:
    ld a, [rInputButtonsHeld]                     ; $072e: $fa $1a $c3
    ld [rInputButtonsHeldPrevious], a             ; $0731: $ea $26 $c3
    ret                                           ; $0734: $c9


QueueCommandStreamAndProcessIfLCDOff::
    push af                                       ; $0735: $f5
    ld hl, rCommandQueueWriteCursor               ; $0736: $21 $15 $c3
    ld l, [hl]                                    ; $0739: $6e
    ld h, $c2                                     ; $073a: $26 $c2
    ld a, $ff                                     ; $073c: $3e $ff
    ld [hl], a                                    ; $073e: $77
    inc l                                         ; $073f: $2c
    pop af                                        ; $0740: $f1
    ld [hl], c                                    ; $0741: $71
    inc l                                         ; $0742: $2c
    ld [hl], b                                    ; $0743: $70
    inc l                                         ; $0744: $2c
    ld [hl], a                                    ; $0745: $77
    inc l                                         ; $0746: $2c
    xor a                                         ; $0747: $af
    ld [hl], a                                    ; $0748: $77
    ld a, [rCommandQueueWriteCursor]              ; $0749: $fa $15 $c3
    add $04                                       ; $074c: $c6 $04
    ld [rCommandQueueWriteCursor], a              ; $074e: $ea $15 $c3
    ldh a, [rLCDC]                                ; $0751: $f0 $40
    bit 7, a                                      ; $0753: $cb $7f
    ret nz                                        ; $0755: $c0

    ldh a, [rIE]                                  ; $0756: $f0 $ff
    push af                                       ; $0758: $f5
    res 0, a                                      ; $0759: $cb $87
    ldh [rIE], a                                  ; $075b: $e0 $ff
    call ProcessPendingCommandQueueEntries        ; $075d: $cd $64 $07
    pop af                                        ; $0760: $f1
    ldh [rIE], a                                  ; $0761: $e0 $ff
    ret                                           ; $0763: $c9


ProcessPendingCommandQueueEntries::
    ld a, [rCommandQueueWriteCursor]              ; $0764: $fa $15 $c3
    ld hl, rCommandQueueReadCursor                ; $0767: $21 $16 $c3
    cp [hl]                                       ; $076a: $be
    ret z                                         ; $076b: $c8

    ld l, [hl]                                    ; $076c: $6e
    ld h, $c2                                     ; $076d: $26 $c2

.ProcessQueuedEntryLoop:
    ld a, [hl]                                    ; $076f: $7e
    and a                                         ; $0770: $a7
    jr z, .CommitCommandQueueReadCursor           ; $0771: $28 $1d

    inc l                                         ; $0773: $2c
    ld e, [hl]                                    ; $0774: $5e
    inc l                                         ; $0775: $2c
    ld d, [hl]                                    ; $0776: $56
    inc l                                         ; $0777: $2c
    ld a, [rActiveROMBank]                        ; $0778: $fa $12 $c3
    push af                                       ; $077b: $f5
    ld a, [hl]                                    ; $077c: $7e
    ld [rActiveROMBank], a                        ; $077d: $ea $12 $c3
    ld [rROMB], a                                 ; $0780: $ea $00 $20
    inc l                                         ; $0783: $2c
    call ExecuteQueuedCommandStream               ; $0784: $cd $95 $07
    pop af                                        ; $0787: $f1
    ld [rActiveROMBank], a                        ; $0788: $ea $12 $c3
    ld [rROMB], a                                 ; $078b: $ea $00 $20
    jr .ProcessQueuedEntryLoop                    ; $078e: $18 $df

.CommitCommandQueueReadCursor:
    ld a, l                                       ; $0790: $7d
    ld [rCommandQueueReadCursor], a               ; $0791: $ea $16 $c3
    ret                                           ; $0794: $c9


ExecuteQueuedCommandStream::
    ldh a, [rIE]                                  ; $0795: $f0 $ff
    push af                                       ; $0797: $f5
    res 0, a                                      ; $0798: $cb $87
    ldh [rIE], a                                  ; $079a: $e0 $ff
    push hl                                       ; $079c: $e5

.ReadNextCommandHeader:
    ld a, [de]                                    ; $079d: $1a
    ld h, a                                       ; $079e: $67
    inc de                                        ; $079f: $13
    ld a, [de]                                    ; $07a0: $1a
    ld l, a                                       ; $07a1: $6f
    inc de                                        ; $07a2: $13
    ld a, [de]                                    ; $07a3: $1a
    inc de                                        ; $07a4: $13
    bit 7, a                                      ; $07a5: $cb $7f
    jr nz, .DispatchVerticalCopyMode              ; $07a7: $20 $1a

    bit 6, a                                      ; $07a9: $cb $77
    jr nz, .SetupLinearRepeatFill                 ; $07ab: $20 $0b

    and $3f                                       ; $07ad: $e6 $3f
    ld b, a                                       ; $07af: $47

.CopyLinearLiteralBytesLoop:
    ld a, [de]                                    ; $07b0: $1a
    ld [hl+], a                                   ; $07b1: $22
    inc de                                        ; $07b2: $13
    dec b                                         ; $07b3: $05
    jr nz, .CopyLinearLiteralBytesLoop            ; $07b4: $20 $fa

    jr .CheckCommandStreamTerminator              ; $07b6: $18 $2d

.SetupLinearRepeatFill:
    and $3f                                       ; $07b8: $e6 $3f
    ld b, a                                       ; $07ba: $47
    ld a, [de]                                    ; $07bb: $1a

.FillLinearRepeatedByteLoop:
    ld [hl+], a                                   ; $07bc: $22
    dec b                                         ; $07bd: $05
    jr nz, .FillLinearRepeatedByteLoop            ; $07be: $20 $fc

    inc de                                        ; $07c0: $13
    jr .CheckCommandStreamTerminator              ; $07c1: $18 $22

.DispatchVerticalCopyMode:
    bit 6, a                                      ; $07c3: $cb $77
    jr nz, .SetupVerticalRepeatFill               ; $07c5: $20 $10

    and $3f                                       ; $07c7: $e6 $3f
    ld bc, $0020                                  ; $07c9: $01 $20 $00

.CopyVerticalLiteralBytesLoop:
    push af                                       ; $07cc: $f5
    ld a, [de]                                    ; $07cd: $1a
    ld [hl], a                                    ; $07ce: $77
    inc de                                        ; $07cf: $13
    add hl, bc                                    ; $07d0: $09
    pop af                                        ; $07d1: $f1
    dec a                                         ; $07d2: $3d
    jr nz, .CopyVerticalLiteralBytesLoop          ; $07d3: $20 $f7

    jr .CheckCommandStreamTerminator              ; $07d5: $18 $0e

.SetupVerticalRepeatFill:
    and $3f                                       ; $07d7: $e6 $3f
    ld bc, $0020                                  ; $07d9: $01 $20 $00

.FillVerticalRepeatedByteLoop:
    push af                                       ; $07dc: $f5
    ld a, [de]                                    ; $07dd: $1a
    ld [hl], a                                    ; $07de: $77
    add hl, bc                                    ; $07df: $09
    pop af                                        ; $07e0: $f1
    dec a                                         ; $07e1: $3d
    jr nz, .FillVerticalRepeatedByteLoop          ; $07e2: $20 $f8

    inc de                                        ; $07e4: $13

.CheckCommandStreamTerminator:
    ld a, [de]                                    ; $07e5: $1a
    and a                                         ; $07e6: $a7
    jr nz, .ReadNextCommandHeader                 ; $07e7: $20 $b4

    pop hl                                        ; $07e9: $e1
    pop af                                        ; $07ea: $f1
    ldh [rIE], a                                  ; $07eb: $e0 $ff
    ret                                           ; $07ed: $c9


LoadPuzzleDataBuffer::
    ld hl, rPuzzleCellStateBufferStart            ; $07ee: $21 $40 $d6
    ld bc, $0100                                  ; $07f1: $01 $00 $01
    call ZeroMemoryBlock                          ; $07f4: $cd $d0 $04
    ld a, [rPuzzleDataIndexLow]                   ; $07f7: $fa $07 $d8
    ld c, a                                       ; $07fa: $4f
    ld a, [rPuzzleDataIndexHigh]                  ; $07fb: $fa $08 $d8
    ld b, a                                       ; $07fe: $47
    sla c                                         ; $07ff: $cb $21
    rl b                                          ; $0801: $cb $10
    ld hl, $5534                                  ; $0803: $21 $34 $55
    ld a, [rActiveROMBank]                        ; $0806: $fa $12 $c3
    push af                                       ; $0809: $f5
    ld a, $03                                     ; $080a: $3e $03
    ld [rActiveROMBank], a                        ; $080c: $ea $12 $c3
    ld [rROMB], a                                 ; $080f: $ea $00 $20
    add hl, bc                                    ; $0812: $09
    ld e, [hl]                                    ; $0813: $5e
    inc hl                                        ; $0814: $23
    ld d, [hl]                                    ; $0815: $56
    pop af                                        ; $0816: $f1
    ld [rActiveROMBank], a                        ; $0817: $ea $12 $c3
    ld [rROMB], a                                 ; $081a: $ea $00 $20
    ld a, [rActiveROMBank]                        ; $081d: $fa $12 $c3
    push af                                       ; $0820: $f5
    ld a, $02                                     ; $0821: $3e $02
    ld [rActiveROMBank], a                        ; $0823: $ea $12 $c3
    ld [rROMB], a                                 ; $0826: $ea $00 $20
    ld b, $1e                                     ; $0829: $06 $1e
    ld hl, rPuzzleCellStateBufferStart            ; $082b: $21 $40 $d6

.DecodePuzzleDataBitsLoop:
    ld a, [de]                                    ; $082e: $1a
    sla a                                         ; $082f: $cb $27
    rl [hl]                                       ; $0831: $cb $16
    inc hl                                        ; $0833: $23
    sla a                                         ; $0834: $cb $27
    rl [hl]                                       ; $0836: $cb $16
    inc hl                                        ; $0838: $23
    sla a                                         ; $0839: $cb $27
    rl [hl]                                       ; $083b: $cb $16
    inc hl                                        ; $083d: $23
    sla a                                         ; $083e: $cb $27
    rl [hl]                                       ; $0840: $cb $16
    inc hl                                        ; $0842: $23
    sla a                                         ; $0843: $cb $27
    rl [hl]                                       ; $0845: $cb $16
    inc hl                                        ; $0847: $23
    sla a                                         ; $0848: $cb $27
    rl [hl]                                       ; $084a: $cb $16
    inc hl                                        ; $084c: $23
    sla a                                         ; $084d: $cb $27
    rl [hl]                                       ; $084f: $cb $16
    inc hl                                        ; $0851: $23
    sla a                                         ; $0852: $cb $27
    rl [hl]                                       ; $0854: $cb $16
    inc hl                                        ; $0856: $23
    inc de                                        ; $0857: $13
    dec b                                         ; $0858: $05
    jr nz, .DecodePuzzleDataBitsLoop              ; $0859: $20 $d3

    ld a, [de]                                    ; $085b: $1a
    ld [rPuzzleGridWidth], a                      ; $085c: $ea $00 $d8
    inc de                                        ; $085f: $13
    ld a, [de]                                    ; $0860: $1a
    ld [rPuzzleGridHeight], a                     ; $0861: $ea $01 $d8
    pop af                                        ; $0864: $f1
    ld [rActiveROMBank], a                        ; $0865: $ea $12 $c3
    ld [rROMB], a                                 ; $0868: $ea $00 $20
    ret                                           ; $086b: $c9


LCDCInterruptDispatchRoutineAtLY2F_TickAndMaybeRunSoundEngineUpdate::
    ldh a, [rLY]                                  ; $086c: $f0 $44
    cp $2f                                        ; $086e: $fe $2f
    jr nz, .Return                                ; $0870: $20 $28

    ld a, $03                                     ; $0872: $3e $03
    ld hl, rSTAT                                  ; $0874: $21 $41 $ff

.WaitForSTATMode0Loop:
    and [hl]                                      ; $0877: $a6
    jr nz, .WaitForSTATMode0Loop                  ; $0878: $20 $fd

    ld a, [rLCDCShadow]                           ; $087a: $fa $2e $c3
    res 4, a                                      ; $087d: $cb $a7
    ldh [rLCDC], a                                ; $087f: $e0 $40
    ld hl, rPuzzleTimerActive                     ; $0881: $21 $0d $d8
    inc [hl]                                      ; $0884: $34
    ld a, [rLCDCFrameTickCounter]                 ; $0885: $fa $3b $c3
    inc a                                         ; $0888: $3c
    ld [rLCDCFrameTickCounter], a                 ; $0889: $ea $3b $c3
    ld a, [rUseLCDCInterruptForSoundEngineUpdateFlag]; $088c: $fa $50 $c3
    and a                                         ; $088f: $a7
    ret z                                         ; $0890: $c8

    ld a, [rSGBPacketTransferBusyFlag]            ; $0891: $fa $3e $c3
    and a                                         ; $0894: $a7
    jr nz, .Return                                ; $0895: $20 $03

    call CallSoundEngineUpdateRoutine             ; $0897: $cd $eb $03

.Return:
    ret                                           ; $089a: $c9


LCDCInterruptDispatchRoutineAtLY2F_MaybeRunSoundEngineUpdate::
    ldh a, [rLY]                                  ; $089b: $f0 $44
    cp $2f                                        ; $089d: $fe $2f
    jr nz, .Return                                ; $089f: $20 $0e

    ld a, [rUseLCDCInterruptForSoundEngineUpdateFlag]; $08a1: $fa $50 $c3
    and a                                         ; $08a4: $a7
    ret z                                         ; $08a5: $c8

    ld a, [rSGBPacketTransferBusyFlag]            ; $08a6: $fa $3e $c3
    and a                                         ; $08a9: $a7
    jr nz, .Return                                ; $08aa: $20 $03

    call CallSoundEngineUpdateRoutine             ; $08ac: $cd $eb $03

.Return:
    ret                                           ; $08af: $c9


PrepareBGTileCopy::
    ld a, [rBGTileCopySourceX]                    ; $08b0: $fa $51 $c3
    and $07                                       ; $08b3: $e6 $07
    ld c, a                                       ; $08b5: $4f
    ld b, $00                                     ; $08b6: $06 $00
    ld hl, BGTileCopyMaskLookupTable              ; $08b8: $21 $56 $0d
    add hl, bc                                    ; $08bb: $09
    ld a, [hl]                                    ; $08bc: $7e
    ld [rBGTileCopyMaskHigh], a                   ; $08bd: $ea $59 $c3
    ld a, [rBGTileCopyDestX]                      ; $08c0: $fa $53 $c3
    and $07                                       ; $08c3: $e6 $07
    ld c, a                                       ; $08c5: $4f
    ld b, $00                                     ; $08c6: $06 $00
    ld hl, $0d5f                                  ; $08c8: $21 $5f $0d
    add hl, bc                                    ; $08cb: $09
    ld a, [hl]                                    ; $08cc: $7e
    ld [rBGTileCopyValueA], a                     ; $08cd: $ea $5a $c3
    ld a, [rBGTileCopySourceX]                    ; $08d0: $fa $51 $c3
    and $f8                                       ; $08d3: $e6 $f8
    ld c, a                                       ; $08d5: $4f
    ld a, [rBGTileCopyDestX]                      ; $08d6: $fa $53 $c3
    and $f8                                       ; $08d9: $e6 $f8
    sub c                                         ; $08db: $91
    srl a                                         ; $08dc: $cb $3f
    srl a                                         ; $08de: $cb $3f
    srl a                                         ; $08e0: $cb $3f
    ld [rBGTileCopyValueB], a                     ; $08e2: $ea $5b $c3
    ld a, [rBGTileCopySourceX]                    ; $08e5: $fa $51 $c3
    ld c, a                                       ; $08e8: $4f
    ld a, [rBGTileCopyDestX]                      ; $08e9: $fa $53 $c3
    sub c                                         ; $08ec: $91
    srl a                                         ; $08ed: $cb $3f
    srl a                                         ; $08ef: $cb $3f
    srl a                                         ; $08f1: $cb $3f
    inc a                                         ; $08f3: $3c
    ld [rBGTileCopyValueC], a                     ; $08f4: $ea $5c $c3
    ld a, [rBGTileCopySourceX]                    ; $08f7: $fa $51 $c3
    and $07                                       ; $08fa: $e6 $07
    ld c, a                                       ; $08fc: $4f
    add $38                                       ; $08fd: $c6 $38
    ld [rBGTileCopyValueE], a                     ; $08ff: $ea $5e $c3
    ld b, $00                                     ; $0902: $06 $00
    ld hl, BGTileCopyMaskLookupTable              ; $0904: $21 $56 $0d
    add hl, bc                                    ; $0907: $09
    ld a, [hl]                                    ; $0908: $7e
    ld [rBGTileCopyValueF], a                     ; $0909: $ea $5f $c3
    ld hl, $0d5e                                  ; $090c: $21 $5e $0d
    add hl, bc                                    ; $090f: $09
    ld a, [hl]                                    ; $0910: $7e
    ld [rBGTileCopyValueG], a                     ; $0911: $ea $60 $c3
    ld a, [rBGTileCopyBankAddressLow]             ; $0914: $fa $55 $c3
    ld c, a                                       ; $0917: $4f
    ld a, [rBGTileCopyBankAddressHigh]            ; $0918: $fa $56 $c3
    ld b, a                                       ; $091b: $47
    ld a, [rActiveROMBank]                        ; $091c: $fa $12 $c3
    push af                                       ; $091f: $f5
    ld a, [rBGTileCopyBank]                       ; $0920: $fa $57 $c3
    ld [rActiveROMBank], a                        ; $0923: $ea $12 $c3
    ld [rROMB], a                                 ; $0926: $ea $00 $20
    ld de, $c363                                  ; $0929: $11 $63 $c3
    ld a, [rBGTileCopySourceY]                    ; $092c: $fa $52 $c3
    ld l, a                                       ; $092f: $6f
    ld a, [rBGTileCopySourceX]                    ; $0930: $fa $51 $c3
    and $f8                                       ; $0933: $e6 $f8
    ld h, a                                       ; $0935: $67

.PrepareBGTileCopyLoop:
    xor a                                         ; $0936: $af
    ld [rBGTileCopyValueH], a                     ; $0937: $ea $61 $c3
    ld [rBGTileCopyValueI], a                     ; $093a: $ea $62 $c3
    ld a, [rBGTileCopyValueC]                     ; $093d: $fa $5c $c3
    ld [rBGTileCopyValueD], a                     ; $0940: $ea $5d $c3
    ld a, [rBGTileCopyMaskHigh]                   ; $0943: $fa $59 $c3
    ld [rBGTileCopyMaskLow], a                    ; $0946: $ea $58 $c3
    push bc                                       ; $0949: $c5
    push hl                                       ; $094a: $e5
    ld a, [rBGTileCopyValueB]                     ; $094b: $fa $5b $c3
    and a                                         ; $094e: $a7
    jr nz, .PrepareBGTileCopyRow                  ; $094f: $20 $0f

    push hl                                       ; $0951: $e5
    ld a, [rBGTileCopyValueA]                     ; $0952: $fa $5a $c3
    ld hl, rBGTileCopyMaskHigh                    ; $0955: $21 $59 $c3
    and [hl]                                      ; $0958: $a6
    ld [rBGTileCopyMaskLow], a                    ; $0959: $ea $58 $c3
    pop hl                                        ; $095c: $e1
    jp .PrepareBGTileCopyNextRow                  ; $095d: $c3 $0e $0a


.PrepareBGTileCopyRow:
    push hl                                       ; $0960: $e5
    call ResolveTilemapTileDataAddressAndStoreToDE; $0961: $cd $67 $0d
    ld a, [rBGTileCopyMaskLow]                    ; $0964: $fa $58 $c3
    ld [de], a                                    ; $0967: $12
    inc de                                        ; $0968: $13
    ld a, [bc]                                    ; $0969: $0a
    ld l, a                                       ; $096a: $6f
    ld a, [rBGTileCopyValueE]                     ; $096b: $fa $5e $c3
    ld h, a                                       ; $096e: $67
    ld a, [hl]                                    ; $096f: $7e
    ld [de], a                                    ; $0970: $12
    ld hl, rBGTileCopyValueG                      ; $0971: $21 $60 $c3
    and [hl]                                      ; $0974: $a6
    ld [rBGTileCopyValueH], a                     ; $0975: $ea $61 $c3
    inc bc                                        ; $0978: $03
    inc de                                        ; $0979: $13
    ld a, [bc]                                    ; $097a: $0a
    ld l, a                                       ; $097b: $6f
    ld a, [rBGTileCopyValueE]                     ; $097c: $fa $5e $c3
    ld h, a                                       ; $097f: $67
    ld a, [hl]                                    ; $0980: $7e
    ld [de], a                                    ; $0981: $12
    ld hl, rBGTileCopyValueG                      ; $0982: $21 $60 $c3
    and [hl]                                      ; $0985: $a6
    ld [rBGTileCopyValueI], a                     ; $0986: $ea $62 $c3
    ld a, c                                       ; $0989: $79
    add $0f                                       ; $098a: $c6 $0f
    ld c, a                                       ; $098c: $4f
    ld a, b                                       ; $098d: $78
    adc $00                                       ; $098e: $ce $00
    ld b, a                                       ; $0990: $47
    inc de                                        ; $0991: $13
    pop hl                                        ; $0992: $e1
    ld a, h                                       ; $0993: $7c
    add $08                                       ; $0994: $c6 $08
    ld h, a                                       ; $0996: $67
    ld a, [rBGTileCopyValueD]                     ; $0997: $fa $5d $c3
    dec a                                         ; $099a: $3d
    ld [rBGTileCopyValueD], a                     ; $099b: $ea $5d $c3
    ld a, [rBGTileCopyValueB]                     ; $099e: $fa $5b $c3
    dec a                                         ; $09a1: $3d
    jr z, .PrepareBGTileCopyTail                  ; $09a2: $28 $64

.PrepareBGTileCopyRowSpanLoop:
    push af                                       ; $09a4: $f5
    push hl                                       ; $09a5: $e5
    call ResolveTilemapTileDataAddressAndStoreToDE; $09a6: $cd $67 $0d
    ld a, $ff                                     ; $09a9: $3e $ff
    ld [de], a                                    ; $09ab: $12
    inc de                                        ; $09ac: $13
    ld a, [rBGTileCopyValueD]                     ; $09ad: $fa $5d $c3
    and a                                         ; $09b0: $a7
    jr z, .PrepareBGTileCopyRowSpanFirstByte      ; $09b1: $28 $02

    ld a, [bc]                                    ; $09b3: $0a
    inc bc                                        ; $09b4: $03

.PrepareBGTileCopyRowSpanFirstByte:
    ld l, a                                       ; $09b5: $6f
    ld a, [rBGTileCopyValueE]                     ; $09b6: $fa $5e $c3
    ld h, a                                       ; $09b9: $67
    ld a, [hl]                                    ; $09ba: $7e
    push af                                       ; $09bb: $f5
    ld hl, rBGTileCopyValueF                      ; $09bc: $21 $5f $c3
    and [hl]                                      ; $09bf: $a6
    ld hl, rBGTileCopyValueH                      ; $09c0: $21 $61 $c3
    or [hl]                                       ; $09c3: $b6
    ld [de], a                                    ; $09c4: $12
    pop af                                        ; $09c5: $f1
    ld hl, rBGTileCopyValueG                      ; $09c6: $21 $60 $c3
    and [hl]                                      ; $09c9: $a6
    ld [rBGTileCopyValueH], a                     ; $09ca: $ea $61 $c3
    inc de                                        ; $09cd: $13
    ld a, [rBGTileCopyValueD]                     ; $09ce: $fa $5d $c3
    and a                                         ; $09d1: $a7
    jr z, .PrepareBGTileCopyRowSpanSecondByte     ; $09d2: $28 $0b

    ld a, [bc]                                    ; $09d4: $0a
    push af                                       ; $09d5: $f5
    ld a, c                                       ; $09d6: $79
    add $0f                                       ; $09d7: $c6 $0f
    ld c, a                                       ; $09d9: $4f
    ld a, b                                       ; $09da: $78
    adc $00                                       ; $09db: $ce $00
    ld b, a                                       ; $09dd: $47
    pop af                                        ; $09de: $f1

.PrepareBGTileCopyRowSpanSecondByte:
    ld l, a                                       ; $09df: $6f
    ld a, [rBGTileCopyValueE]                     ; $09e0: $fa $5e $c3
    ld h, a                                       ; $09e3: $67
    ld a, [hl]                                    ; $09e4: $7e
    push af                                       ; $09e5: $f5
    ld hl, rBGTileCopyValueF                      ; $09e6: $21 $5f $c3
    and [hl]                                      ; $09e9: $a6
    ld hl, rBGTileCopyValueI                      ; $09ea: $21 $62 $c3
    or [hl]                                       ; $09ed: $b6
    ld [de], a                                    ; $09ee: $12
    pop af                                        ; $09ef: $f1
    ld hl, rBGTileCopyValueG                      ; $09f0: $21 $60 $c3
    and [hl]                                      ; $09f3: $a6
    ld [rBGTileCopyValueI], a                     ; $09f4: $ea $62 $c3
    inc de                                        ; $09f7: $13
    pop hl                                        ; $09f8: $e1
    ld a, h                                       ; $09f9: $7c
    add $08                                       ; $09fa: $c6 $08
    ld h, a                                       ; $09fc: $67
    ld a, [rBGTileCopyValueD]                     ; $09fd: $fa $5d $c3
    dec a                                         ; $0a00: $3d
    ld [rBGTileCopyValueD], a                     ; $0a01: $ea $5d $c3
    pop af                                        ; $0a04: $f1
    dec a                                         ; $0a05: $3d
    jr nz, .PrepareBGTileCopyRowSpanLoop          ; $0a06: $20 $9c

.PrepareBGTileCopyTail:
    ld a, [rBGTileCopyValueA]                     ; $0a08: $fa $5a $c3
    ld [rBGTileCopyMaskLow], a                    ; $0a0b: $ea $58 $c3

.PrepareBGTileCopyNextRow:
    call ResolveTilemapTileDataAddressAndStoreToDE; $0a0e: $cd $67 $0d
    ld a, [rBGTileCopyMaskLow]                    ; $0a11: $fa $58 $c3
    ld [de], a                                    ; $0a14: $12
    inc de                                        ; $0a15: $13
    ld a, [rBGTileCopyValueD]                     ; $0a16: $fa $5d $c3
    and a                                         ; $0a19: $a7
    jr z, .PrepareBGTileCopyNextRowPart1          ; $0a1a: $28 $02

    ld a, [bc]                                    ; $0a1c: $0a
    inc bc                                        ; $0a1d: $03

.PrepareBGTileCopyNextRowPart1:
    ld l, a                                       ; $0a1e: $6f
    ld a, [rBGTileCopyValueE]                     ; $0a1f: $fa $5e $c3
    ld h, a                                       ; $0a22: $67
    ld a, [hl]                                    ; $0a23: $7e
    push af                                       ; $0a24: $f5
    ld hl, rBGTileCopyValueF                      ; $0a25: $21 $5f $c3
    and [hl]                                      ; $0a28: $a6
    ld hl, rBGTileCopyValueH                      ; $0a29: $21 $61 $c3
    or [hl]                                       ; $0a2c: $b6
    ld [de], a                                    ; $0a2d: $12
    pop af                                        ; $0a2e: $f1
    ld hl, rBGTileCopyValueG                      ; $0a2f: $21 $60 $c3
    and [hl]                                      ; $0a32: $a6
    ld [rBGTileCopyValueH], a                     ; $0a33: $ea $61 $c3
    inc de                                        ; $0a36: $13
    ld a, [rBGTileCopyValueD]                     ; $0a37: $fa $5d $c3
    and a                                         ; $0a3a: $a7
    jr z, .PrepareBGTileCopyNextRowPart2          ; $0a3b: $28 $0b

    ld a, [bc]                                    ; $0a3d: $0a
    push af                                       ; $0a3e: $f5
    ld a, c                                       ; $0a3f: $79
    add $0f                                       ; $0a40: $c6 $0f
    ld c, a                                       ; $0a42: $4f
    ld a, b                                       ; $0a43: $78
    adc $00                                       ; $0a44: $ce $00
    ld b, a                                       ; $0a46: $47
    pop af                                        ; $0a47: $f1

.PrepareBGTileCopyNextRowPart2:
    ld l, a                                       ; $0a48: $6f
    ld a, [rBGTileCopyValueE]                     ; $0a49: $fa $5e $c3
    ld h, a                                       ; $0a4c: $67
    ld a, [hl]                                    ; $0a4d: $7e
    push af                                       ; $0a4e: $f5
    ld hl, rBGTileCopyValueF                      ; $0a4f: $21 $5f $c3
    and [hl]                                      ; $0a52: $a6
    ld hl, rBGTileCopyValueI                      ; $0a53: $21 $62 $c3
    or [hl]                                       ; $0a56: $b6
    ld [de], a                                    ; $0a57: $12
    pop af                                        ; $0a58: $f1
    ld hl, rBGTileCopyValueG                      ; $0a59: $21 $60 $c3
    and [hl]                                      ; $0a5c: $a6
    ld [rBGTileCopyValueI], a                     ; $0a5d: $ea $62 $c3
    inc de                                        ; $0a60: $13
    pop hl                                        ; $0a61: $e1
    pop bc                                        ; $0a62: $c1
    inc bc                                        ; $0a63: $03
    inc bc                                        ; $0a64: $03
    ld a, c                                       ; $0a65: $79
    and $0f                                       ; $0a66: $e6 $0f
    jr nz, .PrepareBGTileCopyRowAdvance           ; $0a68: $20 $08

    ld a, c                                       ; $0a6a: $79
    add $f0                                       ; $0a6b: $c6 $f0
    ld c, a                                       ; $0a6d: $4f
    ld a, b                                       ; $0a6e: $78
    adc $00                                       ; $0a6f: $ce $00
    ld b, a                                       ; $0a71: $47

.PrepareBGTileCopyRowAdvance:
    inc l                                         ; $0a72: $2c
    ld a, [rBGTileCopyDestY]                      ; $0a73: $fa $54 $c3
    cp l                                          ; $0a76: $bd
    jp nc, .PrepareBGTileCopyLoop                 ; $0a77: $d2 $36 $09

    xor a                                         ; $0a7a: $af
    ld [de], a                                    ; $0a7b: $12
    inc de                                        ; $0a7c: $13
    ld [de], a                                    ; $0a7d: $12
    ldh a, [rIE]                                  ; $0a7e: $f0 $ff
    push af                                       ; $0a80: $f5

.WaitForVBlank:
    ldh a, [rLY]                                  ; $0a81: $f0 $44
    cp $80                                        ; $0a83: $fe $80
    jr nc, .WaitForVBlank                         ; $0a85: $30 $fa

    ldh a, [rIE]                                  ; $0a87: $f0 $ff
    res 0, a                                      ; $0a89: $cb $87
    ldh [rIE], a                                  ; $0a8b: $e0 $ff
    ld bc, $c363                                  ; $0a8d: $01 $63 $c3
    ld a, [rLCDCShadow]                           ; $0a90: $fa $2e $c3
    bit 7, a                                      ; $0a93: $cb $7f
    jr z, .CopyTileDataLoopAlt                    ; $0a95: $28 $59

.WaitForDisplayLine:
    ldh a, [rLY]                                  ; $0a97: $f0 $44
    cp $90                                        ; $0a99: $fe $90
    jr c, .WaitForDisplayLine                     ; $0a9b: $38 $fa

    ld a, [rLCDCShadow]                           ; $0a9d: $fa $2e $c3
    set 4, a                                      ; $0aa0: $cb $e7
    ldh [rLCDC], a                                ; $0aa2: $e0 $40
    ld a, $14                                     ; $0aa4: $3e $14

.CopyTileDataLoop:
    push af                                       ; $0aa6: $f5
    ld a, [bc]                                    ; $0aa7: $0a
    ld l, a                                       ; $0aa8: $6f
    inc bc                                        ; $0aa9: $03
    ld a, [bc]                                    ; $0aaa: $0a
    ld h, a                                       ; $0aab: $67
    or l                                          ; $0aac: $b5
    jr z, .RestoreInterruptsAndReturn             ; $0aad: $28 $1c

    inc bc                                        ; $0aaf: $03
    ld a, [bc]                                    ; $0ab0: $0a
    ld e, a                                       ; $0ab1: $5f
    inc bc                                        ; $0ab2: $03
    ld a, [bc]                                    ; $0ab3: $0a
    inc bc                                        ; $0ab4: $03
    xor [hl]                                      ; $0ab5: $ae
    and e                                         ; $0ab6: $a3
    xor [hl]                                      ; $0ab7: $ae
    ld [hl+], a                                   ; $0ab8: $22
    ld a, [bc]                                    ; $0ab9: $0a
    inc bc                                        ; $0aba: $03
    xor [hl]                                      ; $0abb: $ae
    and e                                         ; $0abc: $a3
    xor [hl]                                      ; $0abd: $ae
    ld [hl], a                                    ; $0abe: $77
    pop af                                        ; $0abf: $f1
    dec a                                         ; $0ac0: $3d
    jr nz, .CopyTileDataLoop                      ; $0ac1: $20 $e3

.WaitForDisplayLineLoop:
    ldh a, [rLY]                                  ; $0ac3: $f0 $44
    cp $90                                        ; $0ac5: $fe $90
    jr c, .WaitForDisplayLine                     ; $0ac7: $38 $ce

    jr .WaitForDisplayLineLoop                    ; $0ac9: $18 $f8

.RestoreInterruptsAndReturn:
    pop af                                        ; $0acb: $f1

.RestoreInterruptsAndWaitForVBlank:
    ldh a, [rLY]                                  ; $0acc: $f0 $44
    cp $80                                        ; $0ace: $fe $80
    jr c, .RestoreInterrupts                      ; $0ad0: $38 $13

.WaitForDisplayLineAndRestore:
    ldh a, [rLY]                                  ; $0ad2: $f0 $44
    cp $90                                        ; $0ad4: $fe $90
    jr c, .WaitForDisplayLineAndRestore           ; $0ad6: $38 $fa

    ld a, [rLCDCShadow]                           ; $0ad8: $fa $2e $c3
    set 4, a                                      ; $0adb: $cb $e7
    ldh [rLCDC], a                                ; $0add: $e0 $40

.WaitForVBlankLoop:
    ldh a, [rLY]                                  ; $0adf: $f0 $44
    cp $80                                        ; $0ae1: $fe $80
    jr nc, .WaitForVBlankLoop                     ; $0ae3: $30 $fa

.RestoreInterrupts:
    pop af                                        ; $0ae5: $f1
    ldh [rIE], a                                  ; $0ae6: $e0 $ff
    pop af                                        ; $0ae8: $f1
    ld [rActiveROMBank], a                        ; $0ae9: $ea $12 $c3
    ld [rROMB], a                                 ; $0aec: $ea $00 $20
    ret                                           ; $0aef: $c9


.CopyTileDataLoopAlt:
    ld a, [bc]                                    ; $0af0: $0a
    ld l, a                                       ; $0af1: $6f
    inc bc                                        ; $0af2: $03
    ld a, [bc]                                    ; $0af3: $0a
    ld h, a                                       ; $0af4: $67
    or l                                          ; $0af5: $b5
    jr z, .RestoreInterruptsAndWaitForVBlank      ; $0af6: $28 $d4

    inc bc                                        ; $0af8: $03
    ld a, [bc]                                    ; $0af9: $0a
    ld e, a                                       ; $0afa: $5f
    inc bc                                        ; $0afb: $03
    ld a, [bc]                                    ; $0afc: $0a
    inc bc                                        ; $0afd: $03
    xor [hl]                                      ; $0afe: $ae
    and e                                         ; $0aff: $a3
    xor [hl]                                      ; $0b00: $ae
    ld [hl+], a                                   ; $0b01: $22
    ld a, [bc]                                    ; $0b02: $0a
    inc bc                                        ; $0b03: $03
    xor [hl]                                      ; $0b04: $ae
    and e                                         ; $0b05: $a3
    xor [hl]                                      ; $0b06: $ae
    ld [hl], a                                    ; $0b07: $77
    jr .CopyTileDataLoopAlt                       ; $0b08: $18 $e6

PrepareBGTileCopyNoLCDCBit4Force::
    ld a, [rBGTileCopySourceX]                    ; $0b0a: $fa $51 $c3
    and $07                                       ; $0b0d: $e6 $07
    ld c, a                                       ; $0b0f: $4f
    ld b, $00                                     ; $0b10: $06 $00
    ld hl, BGTileCopyMaskLookupTable              ; $0b12: $21 $56 $0d
    add hl, bc                                    ; $0b15: $09
    ld a, [hl]                                    ; $0b16: $7e
    ld [rBGTileCopyMaskHigh], a                   ; $0b17: $ea $59 $c3
    ld a, [rBGTileCopyDestX]                      ; $0b1a: $fa $53 $c3
    and $07                                       ; $0b1d: $e6 $07
    ld c, a                                       ; $0b1f: $4f
    ld b, $00                                     ; $0b20: $06 $00
    ld hl, $0d5f                                  ; $0b22: $21 $5f $0d
    add hl, bc                                    ; $0b25: $09
    ld a, [hl]                                    ; $0b26: $7e
    ld [rBGTileCopyValueA], a                     ; $0b27: $ea $5a $c3
    ld a, [rBGTileCopySourceX]                    ; $0b2a: $fa $51 $c3
    and $f8                                       ; $0b2d: $e6 $f8
    ld c, a                                       ; $0b2f: $4f
    ld a, [rBGTileCopyDestX]                      ; $0b30: $fa $53 $c3
    and $f8                                       ; $0b33: $e6 $f8
    sub c                                         ; $0b35: $91
    srl a                                         ; $0b36: $cb $3f
    srl a                                         ; $0b38: $cb $3f
    srl a                                         ; $0b3a: $cb $3f
    ld [rBGTileCopyValueB], a                     ; $0b3c: $ea $5b $c3
    ld a, [rBGTileCopySourceX]                    ; $0b3f: $fa $51 $c3
    ld c, a                                       ; $0b42: $4f
    ld a, [rBGTileCopyDestX]                      ; $0b43: $fa $53 $c3
    sub c                                         ; $0b46: $91
    srl a                                         ; $0b47: $cb $3f
    srl a                                         ; $0b49: $cb $3f
    srl a                                         ; $0b4b: $cb $3f
    inc a                                         ; $0b4d: $3c
    ld [rBGTileCopyValueC], a                     ; $0b4e: $ea $5c $c3
    ld a, [rBGTileCopySourceX]                    ; $0b51: $fa $51 $c3
    and $07                                       ; $0b54: $e6 $07
    ld c, a                                       ; $0b56: $4f
    add $38                                       ; $0b57: $c6 $38
    ld [rBGTileCopyValueE], a                     ; $0b59: $ea $5e $c3
    ld b, $00                                     ; $0b5c: $06 $00
    ld hl, BGTileCopyMaskLookupTable              ; $0b5e: $21 $56 $0d
    add hl, bc                                    ; $0b61: $09
    ld a, [hl]                                    ; $0b62: $7e
    ld [rBGTileCopyValueF], a                     ; $0b63: $ea $5f $c3
    ld hl, $0d5e                                  ; $0b66: $21 $5e $0d
    add hl, bc                                    ; $0b69: $09
    ld a, [hl]                                    ; $0b6a: $7e
    ld [rBGTileCopyValueG], a                     ; $0b6b: $ea $60 $c3
    ld a, [rBGTileCopyBankAddressLow]             ; $0b6e: $fa $55 $c3
    ld c, a                                       ; $0b71: $4f
    ld a, [rBGTileCopyBankAddressHigh]            ; $0b72: $fa $56 $c3
    ld b, a                                       ; $0b75: $47
    ld a, [rActiveROMBank]                        ; $0b76: $fa $12 $c3
    push af                                       ; $0b79: $f5
    ld a, [rBGTileCopyBank]                       ; $0b7a: $fa $57 $c3
    ld [rActiveROMBank], a                        ; $0b7d: $ea $12 $c3
    ld [rROMB], a                                 ; $0b80: $ea $00 $20
    ld de, $c363                                  ; $0b83: $11 $63 $c3
    ld a, [rBGTileCopySourceY]                    ; $0b86: $fa $52 $c3
    ld l, a                                       ; $0b89: $6f
    ld a, [rBGTileCopySourceX]                    ; $0b8a: $fa $51 $c3
    and $f8                                       ; $0b8d: $e6 $f8
    ld h, a                                       ; $0b8f: $67

PrepareBGTileCopyLoop::
    xor a                                         ; $0b90: $af
    ld [rBGTileCopyValueH], a                     ; $0b91: $ea $61 $c3
    ld [rBGTileCopyValueI], a                     ; $0b94: $ea $62 $c3
    ld a, [rBGTileCopyValueC]                     ; $0b97: $fa $5c $c3
    ld [rBGTileCopyValueD], a                     ; $0b9a: $ea $5d $c3
    ld a, [rBGTileCopyMaskHigh]                   ; $0b9d: $fa $59 $c3
    ld [rBGTileCopyMaskLow], a                    ; $0ba0: $ea $58 $c3
    push bc                                       ; $0ba3: $c5
    push hl                                       ; $0ba4: $e5
    ld a, [rBGTileCopyValueB]                     ; $0ba5: $fa $5b $c3
    and a                                         ; $0ba8: $a7
    jr nz, .PrepareBGTileCopyRow                  ; $0ba9: $20 $0f

    push hl                                       ; $0bab: $e5
    ld a, [rBGTileCopyValueA]                     ; $0bac: $fa $5a $c3
    ld hl, rBGTileCopyMaskHigh                    ; $0baf: $21 $59 $c3
    and [hl]                                      ; $0bb2: $a6
    ld [rBGTileCopyMaskLow], a                    ; $0bb3: $ea $58 $c3
    pop hl                                        ; $0bb6: $e1
    jp PrepareBGTileCopyNextRow                   ; $0bb7: $c3 $68 $0c


.PrepareBGTileCopyRow:
    push hl                                       ; $0bba: $e5
    call ResolveTilemapTileDataAddressAndStoreToDE; $0bbb: $cd $67 $0d
    ld a, [rBGTileCopyMaskLow]                    ; $0bbe: $fa $58 $c3
    ld [de], a                                    ; $0bc1: $12
    inc de                                        ; $0bc2: $13
    ld a, [bc]                                    ; $0bc3: $0a
    ld l, a                                       ; $0bc4: $6f
    ld a, [rBGTileCopyValueE]                     ; $0bc5: $fa $5e $c3
    ld h, a                                       ; $0bc8: $67
    ld a, [hl]                                    ; $0bc9: $7e
    ld [de], a                                    ; $0bca: $12
    ld hl, rBGTileCopyValueG                      ; $0bcb: $21 $60 $c3
    and [hl]                                      ; $0bce: $a6
    ld [rBGTileCopyValueH], a                     ; $0bcf: $ea $61 $c3
    inc bc                                        ; $0bd2: $03
    inc de                                        ; $0bd3: $13
    ld a, [bc]                                    ; $0bd4: $0a
    ld l, a                                       ; $0bd5: $6f
    ld a, [rBGTileCopyValueE]                     ; $0bd6: $fa $5e $c3
    ld h, a                                       ; $0bd9: $67
    ld a, [hl]                                    ; $0bda: $7e
    ld [de], a                                    ; $0bdb: $12
    ld hl, rBGTileCopyValueG                      ; $0bdc: $21 $60 $c3
    and [hl]                                      ; $0bdf: $a6
    ld [rBGTileCopyValueI], a                     ; $0be0: $ea $62 $c3
    ld a, c                                       ; $0be3: $79
    add $0f                                       ; $0be4: $c6 $0f
    ld c, a                                       ; $0be6: $4f
    ld a, b                                       ; $0be7: $78
    adc $00                                       ; $0be8: $ce $00
    ld b, a                                       ; $0bea: $47
    inc de                                        ; $0beb: $13
    pop hl                                        ; $0bec: $e1
    ld a, h                                       ; $0bed: $7c
    add $08                                       ; $0bee: $c6 $08
    ld h, a                                       ; $0bf0: $67
    ld a, [rBGTileCopyValueD]                     ; $0bf1: $fa $5d $c3
    dec a                                         ; $0bf4: $3d
    ld [rBGTileCopyValueD], a                     ; $0bf5: $ea $5d $c3
    ld a, [rBGTileCopyValueB]                     ; $0bf8: $fa $5b $c3
    dec a                                         ; $0bfb: $3d
    jr z, .PrepareBGTileCopyTail                  ; $0bfc: $28 $64

.PrepareBGTileCopyRowSpanLoop:
    push af                                       ; $0bfe: $f5
    push hl                                       ; $0bff: $e5
    call ResolveTilemapTileDataAddressAndStoreToDE; $0c00: $cd $67 $0d
    ld a, $ff                                     ; $0c03: $3e $ff
    ld [de], a                                    ; $0c05: $12
    inc de                                        ; $0c06: $13
    ld a, [rBGTileCopyValueD]                     ; $0c07: $fa $5d $c3
    and a                                         ; $0c0a: $a7
    jr z, .PrepareBGTileCopyRowSpanFirstByte      ; $0c0b: $28 $02

    ld a, [bc]                                    ; $0c0d: $0a
    inc bc                                        ; $0c0e: $03

.PrepareBGTileCopyRowSpanFirstByte:
    ld l, a                                       ; $0c0f: $6f
    ld a, [rBGTileCopyValueE]                     ; $0c10: $fa $5e $c3
    ld h, a                                       ; $0c13: $67
    ld a, [hl]                                    ; $0c14: $7e
    push af                                       ; $0c15: $f5
    ld hl, rBGTileCopyValueF                      ; $0c16: $21 $5f $c3
    and [hl]                                      ; $0c19: $a6
    ld hl, rBGTileCopyValueH                      ; $0c1a: $21 $61 $c3
    or [hl]                                       ; $0c1d: $b6
    ld [de], a                                    ; $0c1e: $12
    pop af                                        ; $0c1f: $f1
    ld hl, rBGTileCopyValueG                      ; $0c20: $21 $60 $c3
    and [hl]                                      ; $0c23: $a6
    ld [rBGTileCopyValueH], a                     ; $0c24: $ea $61 $c3
    inc de                                        ; $0c27: $13
    ld a, [rBGTileCopyValueD]                     ; $0c28: $fa $5d $c3
    and a                                         ; $0c2b: $a7
    jr z, .PrepareBGTileCopyRowSpanSecondByte     ; $0c2c: $28 $0b

    ld a, [bc]                                    ; $0c2e: $0a
    push af                                       ; $0c2f: $f5
    ld a, c                                       ; $0c30: $79
    add $0f                                       ; $0c31: $c6 $0f
    ld c, a                                       ; $0c33: $4f
    ld a, b                                       ; $0c34: $78
    adc $00                                       ; $0c35: $ce $00
    ld b, a                                       ; $0c37: $47
    pop af                                        ; $0c38: $f1

.PrepareBGTileCopyRowSpanSecondByte:
    ld l, a                                       ; $0c39: $6f
    ld a, [rBGTileCopyValueE]                     ; $0c3a: $fa $5e $c3
    ld h, a                                       ; $0c3d: $67
    ld a, [hl]                                    ; $0c3e: $7e
    push af                                       ; $0c3f: $f5
    ld hl, rBGTileCopyValueF                      ; $0c40: $21 $5f $c3
    and [hl]                                      ; $0c43: $a6
    ld hl, rBGTileCopyValueI                      ; $0c44: $21 $62 $c3
    or [hl]                                       ; $0c47: $b6
    ld [de], a                                    ; $0c48: $12
    pop af                                        ; $0c49: $f1
    ld hl, rBGTileCopyValueG                      ; $0c4a: $21 $60 $c3
    and [hl]                                      ; $0c4d: $a6
    ld [rBGTileCopyValueI], a                     ; $0c4e: $ea $62 $c3
    inc de                                        ; $0c51: $13
    pop hl                                        ; $0c52: $e1
    ld a, h                                       ; $0c53: $7c
    add $08                                       ; $0c54: $c6 $08
    ld h, a                                       ; $0c56: $67
    ld a, [rBGTileCopyValueD]                     ; $0c57: $fa $5d $c3
    dec a                                         ; $0c5a: $3d
    ld [rBGTileCopyValueD], a                     ; $0c5b: $ea $5d $c3
    pop af                                        ; $0c5e: $f1
    dec a                                         ; $0c5f: $3d
    jr nz, .PrepareBGTileCopyRowSpanLoop          ; $0c60: $20 $9c

.PrepareBGTileCopyTail:
    ld a, [rBGTileCopyValueA]                     ; $0c62: $fa $5a $c3
    ld [rBGTileCopyMaskLow], a                    ; $0c65: $ea $58 $c3

PrepareBGTileCopyNextRow::
    call ResolveTilemapTileDataAddressAndStoreToDE; $0c68: $cd $67 $0d
    ld a, [rBGTileCopyMaskLow]                    ; $0c6b: $fa $58 $c3
    ld [de], a                                    ; $0c6e: $12
    inc de                                        ; $0c6f: $13
    ld a, [rBGTileCopyValueD]                     ; $0c70: $fa $5d $c3
    and a                                         ; $0c73: $a7
    jr z, .PrepareBGTileCopyNextRowPart1          ; $0c74: $28 $02

    ld a, [bc]                                    ; $0c76: $0a
    inc bc                                        ; $0c77: $03

.PrepareBGTileCopyNextRowPart1:
    ld l, a                                       ; $0c78: $6f
    ld a, [rBGTileCopyValueE]                     ; $0c79: $fa $5e $c3
    ld h, a                                       ; $0c7c: $67
    ld a, [hl]                                    ; $0c7d: $7e
    push af                                       ; $0c7e: $f5
    ld hl, rBGTileCopyValueF                      ; $0c7f: $21 $5f $c3
    and [hl]                                      ; $0c82: $a6
    ld hl, rBGTileCopyValueH                      ; $0c83: $21 $61 $c3
    or [hl]                                       ; $0c86: $b6
    ld [de], a                                    ; $0c87: $12
    pop af                                        ; $0c88: $f1
    ld hl, rBGTileCopyValueG                      ; $0c89: $21 $60 $c3
    and [hl]                                      ; $0c8c: $a6
    ld [rBGTileCopyValueH], a                     ; $0c8d: $ea $61 $c3
    inc de                                        ; $0c90: $13
    ld a, [rBGTileCopyValueD]                     ; $0c91: $fa $5d $c3
    and a                                         ; $0c94: $a7
    jr z, .PrepareBGTileCopyNextRowPart2          ; $0c95: $28 $0b

    ld a, [bc]                                    ; $0c97: $0a
    push af                                       ; $0c98: $f5
    ld a, c                                       ; $0c99: $79
    add $0f                                       ; $0c9a: $c6 $0f
    ld c, a                                       ; $0c9c: $4f
    ld a, b                                       ; $0c9d: $78
    adc $00                                       ; $0c9e: $ce $00
    ld b, a                                       ; $0ca0: $47
    pop af                                        ; $0ca1: $f1

.PrepareBGTileCopyNextRowPart2:
    ld l, a                                       ; $0ca2: $6f
    ld a, [rBGTileCopyValueE]                     ; $0ca3: $fa $5e $c3
    ld h, a                                       ; $0ca6: $67
    ld a, [hl]                                    ; $0ca7: $7e
    push af                                       ; $0ca8: $f5
    ld hl, rBGTileCopyValueF                      ; $0ca9: $21 $5f $c3
    and [hl]                                      ; $0cac: $a6
    ld hl, rBGTileCopyValueI                      ; $0cad: $21 $62 $c3
    or [hl]                                       ; $0cb0: $b6
    ld [de], a                                    ; $0cb1: $12
    pop af                                        ; $0cb2: $f1
    ld hl, rBGTileCopyValueG                      ; $0cb3: $21 $60 $c3
    and [hl]                                      ; $0cb6: $a6
    ld [rBGTileCopyValueI], a                     ; $0cb7: $ea $62 $c3
    inc de                                        ; $0cba: $13
    pop hl                                        ; $0cbb: $e1
    pop bc                                        ; $0cbc: $c1
    inc bc                                        ; $0cbd: $03
    inc bc                                        ; $0cbe: $03
    ld a, c                                       ; $0cbf: $79
    and $0f                                       ; $0cc0: $e6 $0f
    jr nz, .PrepareBGTileCopyRowAdvance           ; $0cc2: $20 $08

    ld a, c                                       ; $0cc4: $79
    add $f0                                       ; $0cc5: $c6 $f0
    ld c, a                                       ; $0cc7: $4f
    ld a, b                                       ; $0cc8: $78
    adc $00                                       ; $0cc9: $ce $00
    ld b, a                                       ; $0ccb: $47

.PrepareBGTileCopyRowAdvance:
    inc l                                         ; $0ccc: $2c
    ld a, [rBGTileCopyDestY]                      ; $0ccd: $fa $54 $c3
    cp l                                          ; $0cd0: $bd
    jp nc, PrepareBGTileCopyLoop                  ; $0cd1: $d2 $90 $0b

    xor a                                         ; $0cd4: $af
    ld [de], a                                    ; $0cd5: $12
    inc de                                        ; $0cd6: $13
    ld [de], a                                    ; $0cd7: $12
    ldh a, [rIE]                                  ; $0cd8: $f0 $ff
    push af                                       ; $0cda: $f5

.WaitForVBlank:
    ldh a, [rLY]                                  ; $0cdb: $f0 $44
    cp $80                                        ; $0cdd: $fe $80
    jr nc, .WaitForVBlank                         ; $0cdf: $30 $fa

    ldh a, [rIE]                                  ; $0ce1: $f0 $ff
    res 0, a                                      ; $0ce3: $cb $87
    ldh [rIE], a                                  ; $0ce5: $e0 $ff
    ld bc, $c363                                  ; $0ce7: $01 $63 $c3
    ld a, [rLCDCShadow]                           ; $0cea: $fa $2e $c3
    bit 7, a                                      ; $0ced: $cb $7f
    jr z, .CopyTileDataLoopAlt                    ; $0cef: $28 $4b

.WaitForDisplayLine:
    ldh a, [rLY]                                  ; $0cf1: $f0 $44
    cp $90                                        ; $0cf3: $fe $90
    jr c, .WaitForDisplayLine                     ; $0cf5: $38 $fa

    ld a, $14                                     ; $0cf7: $3e $14

.CopyTileDataLoop:
    push af                                       ; $0cf9: $f5
    ld a, [bc]                                    ; $0cfa: $0a
    ld l, a                                       ; $0cfb: $6f
    inc bc                                        ; $0cfc: $03
    ld a, [bc]                                    ; $0cfd: $0a
    ld h, a                                       ; $0cfe: $67
    or l                                          ; $0cff: $b5
    jr z, .RestoreInterruptsAndReturn             ; $0d00: $28 $1c

    inc bc                                        ; $0d02: $03
    ld a, [bc]                                    ; $0d03: $0a
    ld e, a                                       ; $0d04: $5f
    inc bc                                        ; $0d05: $03
    ld a, [bc]                                    ; $0d06: $0a
    inc bc                                        ; $0d07: $03
    xor [hl]                                      ; $0d08: $ae
    and e                                         ; $0d09: $a3
    xor [hl]                                      ; $0d0a: $ae
    ld [hl+], a                                   ; $0d0b: $22
    ld a, [bc]                                    ; $0d0c: $0a
    inc bc                                        ; $0d0d: $03
    xor [hl]                                      ; $0d0e: $ae
    and e                                         ; $0d0f: $a3
    xor [hl]                                      ; $0d10: $ae
    ld [hl], a                                    ; $0d11: $77
    pop af                                        ; $0d12: $f1
    dec a                                         ; $0d13: $3d
    jr nz, .CopyTileDataLoop                      ; $0d14: $20 $e3

.WaitForDisplayLineLoop:
    ldh a, [rLY]                                  ; $0d16: $f0 $44
    cp $90                                        ; $0d18: $fe $90
    jr c, .WaitForDisplayLine                     ; $0d1a: $38 $d5

    jr .WaitForDisplayLineLoop                    ; $0d1c: $18 $f8

.RestoreInterruptsAndReturn:
    pop af                                        ; $0d1e: $f1

.RestoreInterruptsAndWaitForVBlank:
    ldh a, [rLY]                                  ; $0d1f: $f0 $44
    cp $80                                        ; $0d21: $fe $80
    jr c, .RestoreInterrupts                      ; $0d23: $38 $0c

.WaitForDisplayLineAndRestore:
    ldh a, [rLY]                                  ; $0d25: $f0 $44
    cp $90                                        ; $0d27: $fe $90
    jr c, .WaitForDisplayLineAndRestore           ; $0d29: $38 $fa

.WaitForVBlankLoop:
    ldh a, [rLY]                                  ; $0d2b: $f0 $44
    cp $80                                        ; $0d2d: $fe $80
    jr nc, .WaitForVBlankLoop                     ; $0d2f: $30 $fa

.RestoreInterrupts:
    pop af                                        ; $0d31: $f1
    ldh [rIE], a                                  ; $0d32: $e0 $ff
    pop af                                        ; $0d34: $f1
    ld [rActiveROMBank], a                        ; $0d35: $ea $12 $c3
    ld [rROMB], a                                 ; $0d38: $ea $00 $20
    ret                                           ; $0d3b: $c9


.CopyTileDataLoopAlt:
    ld a, [bc]                                    ; $0d3c: $0a
    ld l, a                                       ; $0d3d: $6f
    inc bc                                        ; $0d3e: $03
    ld a, [bc]                                    ; $0d3f: $0a
    ld h, a                                       ; $0d40: $67
    or l                                          ; $0d41: $b5
    jr z, .RestoreInterruptsAndWaitForVBlank      ; $0d42: $28 $db

    inc bc                                        ; $0d44: $03
    ld a, [bc]                                    ; $0d45: $0a
    ld e, a                                       ; $0d46: $5f
    inc bc                                        ; $0d47: $03
    ld a, [bc]                                    ; $0d48: $0a
    inc bc                                        ; $0d49: $03
    xor [hl]                                      ; $0d4a: $ae
    and e                                         ; $0d4b: $a3
    xor [hl]                                      ; $0d4c: $ae
    ld [hl+], a                                   ; $0d4d: $22
    ld a, [bc]                                    ; $0d4e: $0a
    inc bc                                        ; $0d4f: $03
    xor [hl]                                      ; $0d50: $ae
    and e                                         ; $0d51: $a3
    xor [hl]                                      ; $0d52: $ae
    ld [hl], a                                    ; $0d53: $77
    jr .CopyTileDataLoopAlt                       ; $0d54: $18 $e6

BGTileCopyMaskLookupTable::
    db $ff, $7f, $3f, $1f, $0f, $07, $03, $01
    db $00, $80, $c0, $e0, $f0, $f8, $fc, $fe
    db $ff

ResolveTilemapTileDataAddressAndStoreToDE::
    push bc                                       ; $0d67: $c5
    push de                                       ; $0d68: $d5
    ld b, h                                       ; $0d69: $44
    ld c, l                                       ; $0d6a: $4d
    ld a, l                                       ; $0d6b: $7d
    and $f8                                       ; $0d6c: $e6 $f8
    srl a                                         ; $0d6e: $cb $3f
    srl a                                         ; $0d70: $cb $3f
    ld e, a                                       ; $0d72: $5f
    ld d, $00                                     ; $0d73: $16 $00
    ld a, [rTilemapToTileDataAddressLookupTableLow]; $0d75: $fa $63 $cd
    ld l, a                                       ; $0d78: $6f
    ld a, [rTilemapToTileDataAddressLookupTableHigh]; $0d79: $fa $64 $cd
    ld h, a                                       ; $0d7c: $67
    add hl, de                                    ; $0d7d: $19
    ld a, [hl+]                                   ; $0d7e: $2a

.LoadRowLookupSubtablePointer:
    ld h, [hl]                                    ; $0d7f: $66
    ld l, a                                       ; $0d80: $6f

.ResolveTileDataAddressFromRowLookupSubtable:
    ld a, b                                       ; $0d81: $78
    and $f8                                       ; $0d82: $e6 $f8
    srl a                                         ; $0d84: $cb $3f
    srl a                                         ; $0d86: $cb $3f
    ld e, a                                       ; $0d88: $5f
    ld d, $00                                     ; $0d89: $16 $00
    add hl, de                                    ; $0d8b: $19
    ld a, [hl+]                                   ; $0d8c: $2a
    ld h, [hl]                                    ; $0d8d: $66
    ld l, a                                       ; $0d8e: $6f
    ld a, c                                       ; $0d8f: $79
    and $07                                       ; $0d90: $e6 $07
    sla a                                         ; $0d92: $cb $27
    add l                                         ; $0d94: $85
    ld l, a                                       ; $0d95: $6f
    pop de                                        ; $0d96: $d1
    pop bc                                        ; $0d97: $c1
    ld a, l                                       ; $0d98: $7d
    ld [de], a                                    ; $0d99: $12
    inc de                                        ; $0d9a: $13
    ld a, h                                       ; $0d9b: $7c
    ld [de], a                                    ; $0d9c: $12
    inc de                                        ; $0d9d: $13
    ret                                           ; $0d9e: $c9


PuzzleBoard15x15ScreenTilemapTileDataAddressLookupTable::
    db $c3, $0d
    db $eb, $0d
    db $13, $0e
    db $3b, $0e
    db $63, $0e
    db $8b, $0e
    db $b3, $0e
    db $db, $0e
    db $03, $0f
    db $2b, $0f
    db $53, $0f
    db $7b, $0f
    db $a3, $0f
    db $cb, $0f
    db $f3, $0f
    db $1b, $10
    db $43, $10
    db $6b, $10

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
    db $b7, $10
    db $df, $10
    db $07, $11
    db $2f, $11
    db $57, $11
    db $7f, $11
    db $a7, $11
    db $cf, $11
    db $f7, $11
    db $1f, $12
    db $47, $12
    db $6f, $12
    db $97, $12
    db $bf, $12
    db $e7, $12
    db $0f, $13
    db $37, $13
    db $5f, $13

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
    db $ab, $13
    db $d3, $13
    db $fb, $13
    db $23, $14
    db $4b, $14
    db $73, $14
    db $9b, $14
    db $c3, $14
    db $eb, $14
    db $13, $15
    db $3b, $15
    db $63, $15
    db $8b, $15
    db $b3, $15
    db $db, $15
    db $03, $16
    db $2b, $16
    db $53, $16

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
    db $9f, $16
    db $c7, $16
    db $ef, $16
    db $17, $17
    db $3f, $17
    db $67, $17
    db $8f, $17
    db $b7, $17
    db $df, $17
    db $07, $18
    db $2f, $18
    db $57, $18
    db $7f, $18
    db $a7, $18
    db $cf, $18
    db $f7, $18
    db $1f, $19
    db $47, $19

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
    pop de                                        ; $196f: $d1
    ld bc, $0000                                  ; $1970: $01 $00 $00

.SubtractHundredsLoop:
    cp $64                                        ; $1973: $fe $64
    jr c, .SubtractTensLoop                       ; $1975: $38 $05

    sub $64                                       ; $1977: $d6 $64
    inc c                                         ; $1979: $0c
    jr .SubtractHundredsLoop                      ; $197a: $18 $f7

.SubtractTensLoop:
    cp $0a                                        ; $197c: $fe $0a
    jr c, .ApplyLeadingBlankDigits                ; $197e: $38 $05

    sub $0a                                       ; $1980: $d6 $0a
    inc b                                         ; $1982: $04
    jr .SubtractTensLoop                          ; $1983: $18 $f7

.ApplyLeadingBlankDigits:
    ld l, a                                       ; $1985: $6f
    ld a, c                                       ; $1986: $79
    and a                                         ; $1987: $a7
    jr nz, .PushDigitsAndReturnViaDE              ; $1988: $20 $08

    ld c, $0a                                     ; $198a: $0e $0a
    ld a, b                                       ; $198c: $78
    and a                                         ; $198d: $a7
    jr nz, .PushDigitsAndReturnViaDE              ; $198e: $20 $02

    ld b, $0a                                     ; $1990: $06 $0a

.PushDigitsAndReturnViaDE:
    ld a, c                                       ; $1992: $79
    push af                                       ; $1993: $f5
    ld a, b                                       ; $1994: $78
    push af                                       ; $1995: $f5
    ld a, l                                       ; $1996: $7d
    ld l, e                                       ; $1997: $6b
    ld h, d                                       ; $1998: $62
    jp hl                                         ; $1999: $e9


SplitHLToDecimalDigitsAndPushHundredsTens_Unused::
    pop de                                        ; $199a: $d1
    ld bc, $ff9c                                  ; $199b: $01 $9c $ff
    xor a                                         ; $199e: $af

.SubtractHundredsFromHLLoop:
    add hl, bc                                    ; $199f: $09
    bit 7, h                                      ; $19a0: $cb $7c
    jr nz, .PrepareSubtractTensFromHLLoop         ; $19a2: $20 $03

    inc a                                         ; $19a4: $3c
    jr .SubtractHundredsFromHLLoop                ; $19a5: $18 $f8

.PrepareSubtractTensFromHLLoop:
    push af                                       ; $19a7: $f5
    ld bc, $000a                                  ; $19a8: $01 $0a $00
    ld a, $09                                     ; $19ab: $3e $09

.SubtractTensFromHLLoop:
    add hl, bc                                    ; $19ad: $09
    bit 7, h                                      ; $19ae: $cb $7c
    jr z, .PushTensAndReturnViaDE                 ; $19b0: $28 $03

    dec a                                         ; $19b2: $3d
    jr .SubtractTensFromHLLoop                    ; $19b3: $18 $f8

.PushTensAndReturnViaDE:
    push af                                       ; $19b5: $f5
    ld a, l                                       ; $19b6: $7d
    ld l, e                                       ; $19b7: $6b
    ld h, d                                       ; $19b8: $62
    jp hl                                         ; $19b9: $e9


GS06_UpdateOAMSequenceEventAndCopySprite::
    ld e, a                                       ; $19ba: $5f
    ld d, $00                                     ; $19bb: $16 $00
    sla e                                         ; $19bd: $cb $23
    rl d                                          ; $19bf: $cb $12
    sla e                                         ; $19c1: $cb $23
    rl d                                          ; $19c3: $cb $12
    sla e                                         ; $19c5: $cb $23
    rl d                                          ; $19c7: $cb $12
    ld hl, rGS06_OAMSequenceEventTableBank        ; $19c9: $21 $a9 $cd
    add hl, de                                    ; $19cc: $19
    ld a, [rActiveROMBank]                        ; $19cd: $fa $12 $c3
    push af                                       ; $19d0: $f5
    ld a, [hl]                                    ; $19d1: $7e
    ld [rActiveROMBank], a                        ; $19d2: $ea $12 $c3
    ld [rROMB], a                                 ; $19d5: $ea $00 $20
    ld hl, rGS06_OAMSequenceEventDelay            ; $19d8: $21 $a5 $cd
    add hl, de                                    ; $19db: $19
    ld a, [hl]                                    ; $19dc: $7e
    and a                                         ; $19dd: $a7
    jr nz, .TickSequenceEventDelayAndEmit         ; $19de: $20 $40

    ld hl, rGS06_OAMSequenceEventCursor           ; $19e0: $21 $a6 $cd
    add hl, de                                    ; $19e3: $19
    ld a, [hl]                                    ; $19e4: $7e
    ld c, a                                       ; $19e5: $4f
    ld b, $00                                     ; $19e6: $06 $00

.LoadNextSequenceEvent:
    ld hl, rGS06_OAMSequenceEventTableLow         ; $19e8: $21 $a7 $cd
    add hl, de                                    ; $19eb: $19
    ld a, [hl+]                                   ; $19ec: $2a
    ld h, [hl]                                    ; $19ed: $66
    ld l, a                                       ; $19ee: $6f
    add hl, bc                                    ; $19ef: $09
    ld a, [hl+]                                   ; $19f0: $2a
    and a                                         ; $19f1: $a7
    jr nz, .ApplySequenceEvent                    ; $19f2: $20 $05

    ld bc, $0000                                  ; $19f4: $01 $00 $00
    jr .LoadNextSequenceEvent                     ; $19f7: $18 $ef

.ApplySequenceEvent:
    push hl                                       ; $19f9: $e5
    ld hl, rGS06_OAMSequenceEventDelay            ; $19fa: $21 $a5 $cd
    add hl, de                                    ; $19fd: $19
    ld [hl], a                                    ; $19fe: $77
    pop hl                                        ; $19ff: $e1
    ld a, [hl+]                                   ; $1a00: $2a
    push hl                                       ; $1a01: $e5
    ld hl, rGS06_OAMSequenceBaseLow               ; $1a02: $21 $a2 $cd
    add hl, de                                    ; $1a05: $19
    add [hl]                                      ; $1a06: $86
    ld [hl], a                                    ; $1a07: $77
    pop hl                                        ; $1a08: $e1
    ld a, [hl+]                                   ; $1a09: $2a
    push hl                                       ; $1a0a: $e5
    ld hl, rGS06_OAMSequenceBaseHigh              ; $1a0b: $21 $a3 $cd
    add hl, de                                    ; $1a0e: $19
    add [hl]                                      ; $1a0f: $86
    ld [hl], a                                    ; $1a10: $77
    pop hl                                        ; $1a11: $e1
    ld a, [hl+]                                   ; $1a12: $2a
    ld hl, rGS06_OAMSequenceEventSpriteId         ; $1a13: $21 $a4 $cd
    add hl, de                                    ; $1a16: $19
    ld [hl], a                                    ; $1a17: $77
    ld a, c                                       ; $1a18: $79
    add $04                                       ; $1a19: $c6 $04
    ld hl, rGS06_OAMSequenceEventCursor           ; $1a1b: $21 $a6 $cd
    add hl, de                                    ; $1a1e: $19
    ld [hl], a                                    ; $1a1f: $77

.TickSequenceEventDelayAndEmit:
    ld hl, rGS06_OAMSequenceEventDelay            ; $1a20: $21 $a5 $cd
    add hl, de                                    ; $1a23: $19
    dec [hl]                                      ; $1a24: $35
    ld hl, rGS06_OAMSequenceEventSpriteId         ; $1a25: $21 $a4 $cd
    add hl, de                                    ; $1a28: $19
    ld a, [hl]                                    ; $1a29: $7e
    cp $ff                                        ; $1a2a: $fe $ff
    ret z                                         ; $1a2c: $c8

    ld hl, rGS06_OAMSequenceBaseLow               ; $1a2d: $21 $a2 $cd
    add hl, de                                    ; $1a30: $19
    ld b, [hl]                                    ; $1a31: $46
    ld hl, rGS06_OAMSequenceBaseHigh              ; $1a32: $21 $a3 $cd
    add hl, de                                    ; $1a35: $19
    ld c, [hl]                                    ; $1a36: $4e
    call CopyOAMSpriteById                        ; $1a37: $cd $cb $20
    pop af                                        ; $1a3a: $f1
    ld [rActiveROMBank], a                        ; $1a3b: $ea $12 $c3
    ld [rROMB], a                                 ; $1a3e: $ea $00 $20
    ret                                           ; $1a41: $c9


DrawPuzzleNameFromPointerTable::
    ld a, [rActiveROMBank]                        ; $1a42: $fa $12 $c3
    push af                                       ; $1a45: $f5
    ld a, $03                                     ; $1a46: $3e $03
    ld [rActiveROMBank], a                        ; $1a48: $ea $12 $c3
    ld [rROMB], a                                 ; $1a4b: $ea $00 $20
    ld a, [rPuzzleDataIndexLow]                   ; $1a4e: $fa $07 $d8
    ld c, a                                       ; $1a51: $4f
    ld a, [rPuzzleDataIndexHigh]                  ; $1a52: $fa $08 $d8
    ld b, a                                       ; $1a55: $47
    sla c                                         ; $1a56: $cb $21
    rl b                                          ; $1a58: $cb $10
    ld hl, $5736                                  ; $1a5a: $21 $36 $57
    add hl, bc                                    ; $1a5d: $09
    ld a, [hl+]                                   ; $1a5e: $2a
    ld h, [hl]                                    ; $1a5f: $66
    ld l, a                                       ; $1a60: $6f

.LoadNextPuzzleNameLine:
    ld a, [hl+]                                   ; $1a61: $2a
    and a                                         ; $1a62: $a7
    jr z, .RestoreBankAndReturn                   ; $1a63: $28 $18

    ld b, a                                       ; $1a65: $47
    ld a, [hl+]                                   ; $1a66: $2a
    ld c, a                                       ; $1a67: $4f

.DrawPuzzleNameGlyphRun:
    ld a, [hl+]                                   ; $1a68: $2a
    ld e, a                                       ; $1a69: $5f
    ld a, [hl+]                                   ; $1a6a: $2a
    ld d, a                                       ; $1a6b: $57
    and e                                         ; $1a6c: $a3
    cp $ff                                        ; $1a6d: $fe $ff
    jr z, .LoadNextPuzzleNameLine                 ; $1a6f: $28 $f0

    push bc                                       ; $1a71: $c5
    push hl                                       ; $1a72: $e5
    call QueueMessageGlyphBGTileCopyById          ; $1a73: $cd $85 $1a
    pop hl                                        ; $1a76: $e1
    pop bc                                        ; $1a77: $c1
    add b                                         ; $1a78: $80
    inc a                                         ; $1a79: $3c
    ld b, a                                       ; $1a7a: $47
    jr .DrawPuzzleNameGlyphRun                    ; $1a7b: $18 $eb

.RestoreBankAndReturn:
    pop af                                        ; $1a7d: $f1
    ld [rActiveROMBank], a                        ; $1a7e: $ea $12 $c3
    ld [rROMB], a                                 ; $1a81: $ea $00 $20
    ret                                           ; $1a84: $c9


QueueMessageGlyphBGTileCopyById::
    ld a, [rActiveROMBank]                        ; $1a85: $fa $12 $c3
    push af                                       ; $1a88: $f5
    ld a, $00                                     ; $1a89: $3e $00
    ld [rActiveROMBank], a                        ; $1a8b: $ea $12 $c3
    ld [rROMB], a                                 ; $1a8e: $ea $00 $20
    push de                                       ; $1a91: $d5
    sla e                                         ; $1a92: $cb $23
    rl d                                          ; $1a94: $cb $12
    ld hl, MessageGlyphSourceOffsetTable          ; $1a96: $21 $bb $2d
    add hl, de                                    ; $1a99: $19
    ld e, [hl]                                    ; $1a9a: $5e
    inc hl                                        ; $1a9b: $23
    ld d, [hl]                                    ; $1a9c: $56
    ld hl, $4000                                  ; $1a9d: $21 $00 $40
    add hl, de                                    ; $1aa0: $19
    ld a, l                                       ; $1aa1: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $1aa2: $ea $55 $c3
    ld a, h                                       ; $1aa5: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $1aa6: $ea $56 $c3
    ld a, $0e                                     ; $1aa9: $3e $0e
    ld [rBGTileCopyBank], a                       ; $1aab: $ea $57 $c3
    ld a, b                                       ; $1aae: $78
    ld [rBGTileCopySourceX], a                    ; $1aaf: $ea $51 $c3
    pop de                                        ; $1ab2: $d1
    ld hl, MessageGlyphWidthTable                 ; $1ab3: $21 $bb $2c
    add hl, de                                    ; $1ab6: $19
    ld a, [hl]                                    ; $1ab7: $7e
    and a                                         ; $1ab8: $a7
    jr z, .RestoreBankAndReturnGlyphWidth         ; $1ab9: $28 $12

    push af                                       ; $1abb: $f5
    add b                                         ; $1abc: $80
    ld [rBGTileCopyDestX], a                      ; $1abd: $ea $53 $c3
    ld a, c                                       ; $1ac0: $79
    ld [rBGTileCopySourceY], a                    ; $1ac1: $ea $52 $c3
    add $09                                       ; $1ac4: $c6 $09
    ld [rBGTileCopyDestY], a                      ; $1ac6: $ea $54 $c3
    call PrepareBGTileCopy                        ; $1ac9: $cd $b0 $08
    pop af                                        ; $1acc: $f1

.RestoreBankAndReturnGlyphWidth:
    ld e, a                                       ; $1acd: $5f
    pop af                                        ; $1ace: $f1
    ld [rActiveROMBank], a                        ; $1acf: $ea $12 $c3
    ld [rROMB], a                                 ; $1ad2: $ea $00 $20
    ld a, e                                       ; $1ad5: $7b
    ret                                           ; $1ad6: $c9


HandleStartupSaveDataIntegrityCheck::
    ld a, [rInputButtonsHeld]                     ; $1ad7: $fa $1a $c3
    cp $64                                        ; $1ada: $fe $64
    jr nz, .ValidateAndRecoverSaveData            ; $1adc: $20 $05

    call RunEraseDataConfirmationPrompt           ; $1ade: $cd $1f $1d
    jr z, .ReinitializeSaveData                   ; $1ae1: $28 $36

.ValidateAndRecoverSaveData:
    ld hl, rSaveDataMirrorBlockStart              ; $1ae3: $21 $04 $ad
    call ComputeSumXorChecksumDE                  ; $1ae6: $cd $80 $1b
    ld a, [rSaveDataMirrorChecksumSum]            ; $1ae9: $fa $06 $ba
    cp d                                          ; $1aec: $ba
    jr nz, .ValidatePrimarySaveDataBlock          ; $1aed: $20 $14

    ld a, [rSaveDataMirrorChecksumXor]            ; $1aef: $fa $07 $ba
    cp e                                          ; $1af2: $bb
    jr nz, .ValidatePrimarySaveDataBlock          ; $1af3: $20 $0e

    ld hl, rSaveDataMirrorBlockStart              ; $1af5: $21 $04 $ad
    ld de, rSaveDataPrimaryBlockStart             ; $1af8: $11 $00 $a0
    ld bc, $0d02                                  ; $1afb: $01 $02 $0d
    call CopyMemoryBlock                          ; $1afe: $cd $d8 $04
    jr .FinalizeSaveDataValidation                ; $1b01: $18 $12

.ValidatePrimarySaveDataBlock:
    ld hl, rSaveDataPrimaryBlockStart             ; $1b03: $21 $00 $a0
    call ComputeSumXorChecksumDE                  ; $1b06: $cd $80 $1b
    ld a, [rSaveDataPrimaryChecksumSum]           ; $1b09: $fa $02 $ad
    cp d                                          ; $1b0c: $ba
    jr nz, .ReinitializeSaveData                  ; $1b0d: $20 $0a

    ld a, [rSaveDataPrimaryChecksumXor]           ; $1b0f: $fa $03 $ad
    cp e                                          ; $1b12: $bb
    jr nz, .ReinitializeSaveData                  ; $1b13: $20 $04

.FinalizeSaveDataValidation:
    call ValidateSaveMagicSignatures              ; $1b15: $cd $5d $1b
    ret z                                         ; $1b18: $c8

.ReinitializeSaveData:
    jp ResetSaveDataAndLoadDefaults               ; $1b19: $c3 $93 $1b


RefreshSaveValidationChecksumsAndMirrors::
    ld hl, HiddenProgrammerCredits                ; $1b1c: $21 $5b $03
    ld de, rHiddenProgrammerCreditsMirror         ; $1b1f: $11 $ed $ac
    ld bc, $0010                                  ; $1b22: $01 $10 $00
    call CopyMemoryBlock                          ; $1b25: $cd $d8 $04
    ld hl, SaveValidationMagicBytes               ; $1b28: $21 $6b $03
    ld de, rSaveValidationMagicBytesMirror        ; $1b2b: $11 $fd $ac
    ld bc, $0005                                  ; $1b2e: $01 $05 $00
    call CopyMemoryBlock                          ; $1b31: $cd $d8 $04
    ld hl, rSaveDataPrimaryBlockStart             ; $1b34: $21 $00 $a0
    call ComputeSumXorChecksumDE                  ; $1b37: $cd $80 $1b
    ld a, d                                       ; $1b3a: $7a
    ld [rSaveDataPrimaryChecksumSum], a           ; $1b3b: $ea $02 $ad
    ld a, e                                       ; $1b3e: $7b
    ld [rSaveDataPrimaryChecksumXor], a           ; $1b3f: $ea $03 $ad
    ld hl, rSaveDataPrimaryBlockStart             ; $1b42: $21 $00 $a0
    ld de, rSaveDataMirrorBlockStart              ; $1b45: $11 $04 $ad
    ld bc, $0d02                                  ; $1b48: $01 $02 $0d
    call CopyMemoryBlock                          ; $1b4b: $cd $d8 $04
    ld hl, rSaveDataMirrorBlockStart              ; $1b4e: $21 $04 $ad
    call ComputeSumXorChecksumDE                  ; $1b51: $cd $80 $1b
    ld a, d                                       ; $1b54: $7a
    ld [rSaveDataMirrorChecksumSum], a            ; $1b55: $ea $06 $ba
    ld a, e                                       ; $1b58: $7b
    ld [rSaveDataMirrorChecksumXor], a            ; $1b59: $ea $07 $ba
    ret                                           ; $1b5c: $c9


ValidateSaveMagicSignatures::
    ld hl, rHiddenProgrammerCreditsMirror         ; $1b5d: $21 $ed $ac
    ld de, HiddenProgrammerCredits                ; $1b60: $11 $5b $03
    ld c, $10                                     ; $1b63: $0e $10

.CompareHiddenProgrammerCreditsLoop:
    ld a, [de]                                    ; $1b65: $1a
    cp [hl]                                       ; $1b66: $be
    jr nz, .ReturnWithSignatureCompareFlags       ; $1b67: $20 $16

    inc de                                        ; $1b69: $13
    inc hl                                        ; $1b6a: $23
    dec c                                         ; $1b6b: $0d
    jr nz, .CompareHiddenProgrammerCreditsLoop    ; $1b6c: $20 $f7

    ld hl, rSaveValidationMagicBytesMirror        ; $1b6e: $21 $fd $ac
    ld de, SaveValidationMagicBytes               ; $1b71: $11 $6b $03
    ld c, $05                                     ; $1b74: $0e $05

.CompareSaveValidationMagicBytesLoop:
    ld a, [de]                                    ; $1b76: $1a
    cp [hl]                                       ; $1b77: $be
    jr nz, .ReturnWithSignatureCompareFlags       ; $1b78: $20 $05

    inc de                                        ; $1b7a: $13
    inc hl                                        ; $1b7b: $23
    dec c                                         ; $1b7c: $0d
    jr nz, .CompareSaveValidationMagicBytesLoop   ; $1b7d: $20 $f7

.ReturnWithSignatureCompareFlags:
    ret                                           ; $1b7f: $c9


ComputeSumXorChecksumDE::
    ld bc, $0d02                                  ; $1b80: $01 $02 $0d
    ld de, $0000                                  ; $1b83: $11 $00 $00

.ChecksumByteLoop:
    ld a, d                                       ; $1b86: $7a
    add [hl]                                      ; $1b87: $86
    ld d, a                                       ; $1b88: $57
    ld a, e                                       ; $1b89: $7b
    xor [hl]                                      ; $1b8a: $ae
    ld e, a                                       ; $1b8b: $5f
    inc hl                                        ; $1b8c: $23
    dec bc                                        ; $1b8d: $0b
    ld a, c                                       ; $1b8e: $79
    or b                                          ; $1b8f: $b0
    jr nz, .ChecksumByteLoop                      ; $1b90: $20 $f4

    ret                                           ; $1b92: $c9


ResetSaveDataAndLoadDefaults::
    ld bc, $0d02                                  ; $1b93: $01 $02 $0d
    ld hl, rSaveDataPrimaryBlockStart             ; $1b96: $21 $00 $a0

.ClearSaveDataLoop:
    xor a                                         ; $1b99: $af
    ld [hl+], a                                   ; $1b9a: $22
    dec bc                                        ; $1b9b: $0b
    ld a, b                                       ; $1b9c: $78
    or c                                          ; $1b9d: $b1
    jr nz, .ClearSaveDataLoop                     ; $1b9e: $20 $f9

    ld b, $02                                     ; $1ba0: $06 $02
    ld hl, $5267                                  ; $1ba2: $21 $67 $52
    call SwitchBankToBAndJumpToHL                 ; $1ba5: $cd $db $05
    ld b, $02                                     ; $1ba8: $06 $02
    ld hl, $5274                                  ; $1baa: $21 $74 $52
    call SwitchBankToBAndJumpToHL                 ; $1bad: $cd $db $05
    ld b, $02                                     ; $1bb0: $06 $02
    ld hl, $5274                                  ; $1bb2: $21 $74 $52
    call SwitchBankToBAndJumpToHL                 ; $1bb5: $cd $db $05
    ld b, $02                                     ; $1bb8: $06 $02
    ld hl, $5274                                  ; $1bba: $21 $74 $52
    call SwitchBankToBAndJumpToHL                 ; $1bbd: $cd $db $05
    ld hl, SaveDataDefaultTimeTrialRankingEntries ; $1bc0: $21 $df $1b
    ld de, rSaveDataTimeTrialRankingEntries       ; $1bc3: $11 $42 $a0
    ld bc, $0023                                  ; $1bc6: $01 $23 $00
    call CopyMemoryBlock                          ; $1bc9: $cd $d8 $04
    ld hl, SaveDataDefaultPerSaveSlotModeBGMSelectionIndices; $1bcc: $21 $02 $1c
    ld de, rSaveSlot1EasyPicrossBGMSelectionIndex ; $1bcf: $11 $69 $a0
    ld bc, $000f                                  ; $1bd2: $01 $0f $00
    call CopyMemoryBlock                          ; $1bd5: $cd $d8 $04
    ld bc, $003c                                  ; $1bd8: $01 $3c $00
    call BusyWaitDelayByBC                        ; $1bdb: $cd $00 $06
    ret                                           ; $1bde: $c9


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
    ld b, $3c                                     ; $1c11: $06 $3c
    ld de, rSavedPuzzleCellStatePackedBuffer      ; $1c13: $11 $ad $ac
    ld hl, rPuzzleCellStateBufferStart            ; $1c16: $21 $40 $d6

.PackAndStorePuzzleCellStateByteLoop:
    xor a                                         ; $1c19: $af
    srl [hl]                                      ; $1c1a: $cb $3e
    srl [hl]                                      ; $1c1c: $cb $3e
    rl a                                          ; $1c1e: $cb $17
    srl [hl]                                      ; $1c20: $cb $3e
    rl a                                          ; $1c22: $cb $17
    inc hl                                        ; $1c24: $23
    srl [hl]                                      ; $1c25: $cb $3e
    srl [hl]                                      ; $1c27: $cb $3e
    rl a                                          ; $1c29: $cb $17
    srl [hl]                                      ; $1c2b: $cb $3e
    rl a                                          ; $1c2d: $cb $17
    inc hl                                        ; $1c2f: $23
    srl [hl]                                      ; $1c30: $cb $3e
    srl [hl]                                      ; $1c32: $cb $3e
    rl a                                          ; $1c34: $cb $17
    srl [hl]                                      ; $1c36: $cb $3e
    rl a                                          ; $1c38: $cb $17
    inc hl                                        ; $1c3a: $23
    srl [hl]                                      ; $1c3b: $cb $3e
    srl [hl]                                      ; $1c3d: $cb $3e
    rl a                                          ; $1c3f: $cb $17
    srl [hl]                                      ; $1c41: $cb $3e
    rl a                                          ; $1c43: $cb $17
    inc hl                                        ; $1c45: $23
    ld [de], a                                    ; $1c46: $12
    inc de                                        ; $1c47: $13
    dec b                                         ; $1c48: $05
    jr nz, .PackAndStorePuzzleCellStateByteLoop   ; $1c49: $20 $ce

    ld a, [rPuzzleGridWidth]                      ; $1c4b: $fa $00 $d8
    ld [de], a                                    ; $1c4e: $12
    inc de                                        ; $1c4f: $13
    ld a, [rPuzzleGridHeight]                     ; $1c50: $fa $01 $d8
    ld [de], a                                    ; $1c53: $12
    ld a, [rHintPopupSelection]                   ; $1c54: $fa $33 $d8
    ld [rSavedPuzzleHintPopupSelection], a        ; $1c57: $ea $a3 $ac
    ld a, [rPuzzleTimerPenaltyStep]               ; $1c5a: $fa $11 $d8
    ld [rSavedPuzzleTimerPenaltyStep], a          ; $1c5d: $ea $a4 $ac
    ld a, [rPuzzleTimerMinuteOnes]                ; $1c60: $fa $09 $d8
    ld [rSavedPuzzleTimerMinuteOnes], a           ; $1c63: $ea $a5 $ac
    ld a, [rPuzzleTimerMinuteTens]                ; $1c66: $fa $0a $d8
    ld [rSavedPuzzleTimerMinuteTens], a           ; $1c69: $ea $a6 $ac
    ld a, [rPuzzleTimerSecondOnes]                ; $1c6c: $fa $0b $d8
    ld [rSavedPuzzleTimerSecondOnes], a           ; $1c6f: $ea $a7 $ac
    ld a, [rPuzzleTimerSecondTens]                ; $1c72: $fa $0c $d8
    ld [rSavedPuzzleTimerSecondTens], a           ; $1c75: $ea $a8 $ac
    ld a, [rPuzzleDataIndexLow]                   ; $1c78: $fa $07 $d8
    ld [rSavedPuzzleDataIndexLow], a              ; $1c7b: $ea $a9 $ac
    ld a, [rPuzzleDataIndexHigh]                  ; $1c7e: $fa $08 $d8
    ld [rSavedPuzzleDataIndexHigh], a             ; $1c81: $ea $aa $ac
    ld a, [rPuzzleCursorColumn]                   ; $1c84: $fa $36 $d6
    ld [rSavedPuzzleCursorColumn], a              ; $1c87: $ea $ab $ac
    ld a, [rPuzzleAndMenuCursorRow]               ; $1c8a: $fa $37 $d6
    ld [rSavedPuzzleCursorRow], a                 ; $1c8d: $ea $ac $ac
    jp RefreshSaveValidationChecksumsAndMirrors   ; $1c90: $c3 $1c $1b


RestoreCurrentPuzzleProgressFromSaveData::
    ld a, [rSavedPuzzleHintPopupSelection]        ; $1c93: $fa $a3 $ac
    ld [rHintPopupSelection], a                   ; $1c96: $ea $33 $d8
    ld a, [rSavedPuzzleTimerPenaltyStep]          ; $1c99: $fa $a4 $ac
    ld [rPuzzleTimerPenaltyStep], a               ; $1c9c: $ea $11 $d8
    ld a, [rSavedPuzzleTimerMinuteOnes]           ; $1c9f: $fa $a5 $ac
    ld [rPuzzleTimerMinuteOnes], a                ; $1ca2: $ea $09 $d8
    ld a, [rSavedPuzzleTimerMinuteTens]           ; $1ca5: $fa $a6 $ac
    ld [rPuzzleTimerMinuteTens], a                ; $1ca8: $ea $0a $d8
    ld a, [rSavedPuzzleTimerSecondOnes]           ; $1cab: $fa $a7 $ac
    ld [rPuzzleTimerSecondOnes], a                ; $1cae: $ea $0b $d8
    ld a, [rSavedPuzzleTimerSecondTens]           ; $1cb1: $fa $a8 $ac
    ld [rPuzzleTimerSecondTens], a                ; $1cb4: $ea $0c $d8
    ld a, [rSavedPuzzleDataIndexLow]              ; $1cb7: $fa $a9 $ac
    ld [rPuzzleDataIndexLow], a                   ; $1cba: $ea $07 $d8
    ld a, [rSavedPuzzleDataIndexHigh]             ; $1cbd: $fa $aa $ac
    ld [rPuzzleDataIndexHigh], a                  ; $1cc0: $ea $08 $d8
    ld a, [rSavedPuzzleCursorColumn]              ; $1cc3: $fa $ab $ac
    ld [rPuzzleCursorColumn], a                   ; $1cc6: $ea $36 $d6
    ld a, [rSavedPuzzleCursorRow]                 ; $1cc9: $fa $ac $ac
    ld [rPuzzleAndMenuCursorRow], a               ; $1ccc: $ea $37 $d6
    call LoadPuzzleDataBuffer                     ; $1ccf: $cd $ee $07
    ld b, $3c                                     ; $1cd2: $06 $3c
    ld de, rSavedPuzzleCellStatePackedBuffer      ; $1cd4: $11 $ad $ac
    ld hl, rPuzzleCellStateBufferStart            ; $1cd7: $21 $40 $d6

.ApplyPackedCell0StateBit1IfSet:
    ld a, [de]                                    ; $1cda: $1a
    sla a                                         ; $1cdb: $cb $27
    jr nc, .ApplyPackedCell0StateBit2IfSet        ; $1cdd: $30 $02

    set 1, [hl]                                   ; $1cdf: $cb $ce

.ApplyPackedCell0StateBit2IfSet:
    sla a                                         ; $1ce1: $cb $27
    jr nc, .AdvanceToPackedCell1AndApplyStateBit1IfSet; $1ce3: $30 $02

    set 2, [hl]                                   ; $1ce5: $cb $d6

.AdvanceToPackedCell1AndApplyStateBit1IfSet:
    inc hl                                        ; $1ce7: $23
    sla a                                         ; $1ce8: $cb $27
    jr nc, .ApplyPackedCell1StateBit2IfSet        ; $1cea: $30 $02

    set 1, [hl]                                   ; $1cec: $cb $ce

.ApplyPackedCell1StateBit2IfSet:
    sla a                                         ; $1cee: $cb $27
    jr nc, .AdvanceToPackedCell2AndApplyStateBit1IfSet; $1cf0: $30 $02

    set 2, [hl]                                   ; $1cf2: $cb $d6

.AdvanceToPackedCell2AndApplyStateBit1IfSet:
    inc hl                                        ; $1cf4: $23
    sla a                                         ; $1cf5: $cb $27
    jr nc, .ApplyPackedCell2StateBit2IfSet        ; $1cf7: $30 $02

    set 1, [hl]                                   ; $1cf9: $cb $ce

.ApplyPackedCell2StateBit2IfSet:
    sla a                                         ; $1cfb: $cb $27
    jr nc, .AdvanceToPackedCell3AndApplyStateBit1IfSet; $1cfd: $30 $02

    set 2, [hl]                                   ; $1cff: $cb $d6

.AdvanceToPackedCell3AndApplyStateBit1IfSet:
    inc hl                                        ; $1d01: $23
    sla a                                         ; $1d02: $cb $27
    jr nc, .ApplyPackedCell3StateBit2IfSet        ; $1d04: $30 $02

    set 1, [hl]                                   ; $1d06: $cb $ce

.ApplyPackedCell3StateBit2IfSet:
    sla a                                         ; $1d08: $cb $27
    jr nc, .AdvancePackedSourceAndContinueUnpackLoop; $1d0a: $30 $02

    set 2, [hl]                                   ; $1d0c: $cb $d6

.AdvancePackedSourceAndContinueUnpackLoop:
    inc hl                                        ; $1d0e: $23
    inc de                                        ; $1d0f: $13
    dec b                                         ; $1d10: $05
    jr nz, .ApplyPackedCell0StateBit1IfSet        ; $1d11: $20 $c7

    ld a, [rPuzzleGridWidth]                      ; $1d13: $fa $00 $d8
    ld [de], a                                    ; $1d16: $12
    inc de                                        ; $1d17: $13
    ld a, [rPuzzleGridHeight]                     ; $1d18: $fa $01 $d8
    ld [de], a                                    ; $1d1b: $12
    jp RefreshSaveValidationChecksumsAndMirrors   ; $1d1c: $c3 $1c $1b


RunEraseDataConfirmationPrompt::
    ld a, $42                                     ; $1d1f: $3e $42
    ld [rLCDCShadow], a                           ; $1d21: $ea $2e $c3
    xor a                                         ; $1d24: $af
    ld [rOBP0Shadow], a                           ; $1d25: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $1d28: $ea $31 $c3
    ld a, $0b                                     ; $1d2b: $3e $0b
    ld hl, $5000                                  ; $1d2d: $21 $00 $50
    ld de, $8000                                  ; $1d30: $11 $00 $80
    ld bc, $0300                                  ; $1d33: $01 $00 $03
    call BankedTileCopy                           ; $1d36: $cd $e1 $04
    xor a                                         ; $1d39: $af
    ld [rStatePhaseTimer], a                      ; $1d3a: $ea $3c $d6
    ld [rSharedAnimationFrameState], a            ; $1d3d: $ea $3d $d6
    call ClearShadowOAMBuffer                     ; $1d40: $cd $b3 $05
    call EnableLCDFromShadow                      ; $1d43: $cd $9f $04
    call EnsureSGBMaskFreezeDisabled              ; $1d46: $cd $a2 $1f
    ld b, $03                                     ; $1d49: $06 $03
    ld hl, $4694                                  ; $1d4b: $21 $94 $46
    ld c, $00                                     ; $1d4e: $0e $00
    ld de, $0004                                  ; $1d50: $11 $04 $00
    call PlayScreenTransitionFadeIn               ; $1d53: $cd $0a $04

.WaitForConfirmOrCancelInput:
    ld a, [rInputButtonsPressed]                  ; $1d56: $fa $1e $c3
    bit 0, a                                      ; $1d59: $cb $47
    jr nz, .HandleConfirmSelection                ; $1d5b: $20 $59

    bit 1, a                                      ; $1d5d: $cb $4f
    jr nz, .HandleCancelSelection                 ; $1d5f: $20 $31

    ld bc, $3040                                  ; $1d61: $01 $40 $30
    ld a, $4b                                     ; $1d64: $3e $4b
    call CopyOAMSpriteById                        ; $1d66: $cd $cb $20
    ld a, [rStatePhaseTimer]                      ; $1d69: $fa $3c $d6
    inc a                                         ; $1d6c: $3c
    cp $46                                        ; $1d6d: $fe $46
    jr c, .UpdateCursorBlinkAndTimer              ; $1d6f: $38 $09

    ld a, [rSharedAnimationFrameState]            ; $1d71: $fa $3d $d6
    xor $01                                       ; $1d74: $ee $01
    ld [rSharedAnimationFrameState], a            ; $1d76: $ea $3d $d6
    xor a                                         ; $1d79: $af

.UpdateCursorBlinkAndTimer:
    ld [rStatePhaseTimer], a                      ; $1d7a: $ea $3c $d6
    cp $30                                        ; $1d7d: $fe $30
    jr nc, .PresentFrameAndContinueInputLoop      ; $1d7f: $30 $0b

    ld a, [rSharedAnimationFrameState]            ; $1d81: $fa $3d $d6
    add $4c                                       ; $1d84: $c6 $4c
    ld bc, $3050                                  ; $1d86: $01 $50 $30
    call CopyOAMSpriteById                        ; $1d89: $cd $cb $20

.PresentFrameAndContinueInputLoop:
    call ClearShadowOAMBufferFromCursor           ; $1d8c: $cd $c2 $05
    rst RST_08                                    ; $1d8f: $cf
    jr .WaitForConfirmOrCancelInput               ; $1d90: $18 $c4

.HandleCancelSelection:
    ld c, $04                                     ; $1d92: $0e $04
    ld a, $02                                     ; $1d94: $3e $02
    call CallSoundCommandDispatcher               ; $1d96: $cd $b3 $03
    ld bc, $003c                                  ; $1d99: $01 $3c $00
    call BusyWaitDelayByBC                        ; $1d9c: $cd $00 $06
    call ClearShadowOAMBuffer                     ; $1d9f: $cd $b3 $05
    ld b, $03                                     ; $1da2: $06 $03
    ld hl, $469f                                  ; $1da4: $21 $9f $46
    ld c, $00                                     ; $1da7: $0e $00
    ld de, $0013                                  ; $1da9: $11 $13 $00
    call PlayScreenTransitionFadeOut              ; $1dac: $cd $4b $04
    call DisableLCDAtVBlank                       ; $1daf: $cd $80 $04
    ld a, $ff                                     ; $1db2: $3e $ff
    and a                                         ; $1db4: $a7
    ret                                           ; $1db5: $c9


.HandleConfirmSelection:
    ld c, $03                                     ; $1db6: $0e $03
    ld a, $02                                     ; $1db8: $3e $02
    call CallSoundCommandDispatcher               ; $1dba: $cd $b3 $03
    ld bc, $003c                                  ; $1dbd: $01 $3c $00
    call BusyWaitDelayByBC                        ; $1dc0: $cd $00 $06
    call ClearShadowOAMBuffer                     ; $1dc3: $cd $b3 $05
    ld b, $03                                     ; $1dc6: $06 $03
    ld hl, $469f                                  ; $1dc8: $21 $9f $46
    ld c, $00                                     ; $1dcb: $0e $00
    ld de, $0013                                  ; $1dcd: $11 $13 $00
    call PlayScreenTransitionFadeOut              ; $1dd0: $cd $4b $04
    call DisableLCDAtVBlank                       ; $1dd3: $cd $80 $04
    xor a                                         ; $1dd6: $af
    ret                                           ; $1dd7: $c9


SendSGBPacketStreamFromBankedAddress::
    ld [rRequestedROMBank], a                     ; $1dd8: $ea $14 $c3
    ld a, [rActiveROMBank]                        ; $1ddb: $fa $12 $c3
    push af                                       ; $1dde: $f5
    ld a, [rRequestedROMBank]                     ; $1ddf: $fa $14 $c3
    ld [rActiveROMBank], a                        ; $1de2: $ea $12 $c3
    ld [rROMB], a                                 ; $1de5: $ea $00 $20
    call SendSGBPacketStreamFromHL                ; $1de8: $cd $f3 $1d
    pop af                                        ; $1deb: $f1
    ld [rActiveROMBank], a                        ; $1dec: $ea $12 $c3
    ld [rROMB], a                                 ; $1def: $ea $00 $20
    ret                                           ; $1df2: $c9


SendSGBPacketStreamFromHL::
    ld a, [hl]                                    ; $1df3: $7e
    and $07                                       ; $1df4: $e6 $07
    ret z                                         ; $1df6: $c8

    ld b, a                                       ; $1df7: $47
    ld c, $00                                     ; $1df8: $0e $00
    ld a, $ff                                     ; $1dfa: $3e $ff
    ld [rSGBPacketTransferBusyFlag], a            ; $1dfc: $ea $3e $c3

.SendNextSGBPacket:
    push bc                                       ; $1dff: $c5
    ld a, $00                                     ; $1e00: $3e $00
    ldh [c], a                                    ; $1e02: $e2
    ld a, $30                                     ; $1e03: $3e $30
    ldh [c], a                                    ; $1e05: $e2
    ld b, $10                                     ; $1e06: $06 $10

.SendPacketByteLoop:
    ld e, $08                                     ; $1e08: $1e $08
    ld a, [hl+]                                   ; $1e0a: $2a
    ld d, a                                       ; $1e0b: $57

.SendPacketBitLoop:
    bit 0, d                                      ; $1e0c: $cb $42
    ld a, $10                                     ; $1e0e: $3e $10
    jr nz, .ClockOutCurrentSGBBit                 ; $1e10: $20 $02

    ld a, $20                                     ; $1e12: $3e $20

.ClockOutCurrentSGBBit:
    ldh [c], a                                    ; $1e14: $e2
    ld a, $30                                     ; $1e15: $3e $30
    ldh [c], a                                    ; $1e17: $e2
    rr d                                          ; $1e18: $cb $1a
    dec e                                         ; $1e1a: $1d
    jr nz, .SendPacketBitLoop                     ; $1e1b: $20 $ef

    dec b                                         ; $1e1d: $05
    jr nz, .SendPacketByteLoop                    ; $1e1e: $20 $e8

    ld a, $20                                     ; $1e20: $3e $20
    ldh [c], a                                    ; $1e22: $e2
    ld a, $30                                     ; $1e23: $3e $30
    ldh [c], a                                    ; $1e25: $e2
    pop bc                                        ; $1e26: $c1
    dec b                                         ; $1e27: $05
    jr z, .ClearSGBTransferBusyFlagAndReturn      ; $1e28: $28 $05

    call BusyWaitDelayForSGBPacketTiming          ; $1e2a: $cd $34 $1e
    jr .SendNextSGBPacket                         ; $1e2d: $18 $d0

.ClearSGBTransferBusyFlagAndReturn:
    xor a                                         ; $1e2f: $af
    ld [rSGBPacketTransferBusyFlag], a            ; $1e30: $ea $3e $c3
    ret                                           ; $1e33: $c9


BusyWaitDelayForSGBPacketTiming::
    ld de, $1b58                                  ; $1e34: $11 $58 $1b

.DelayLoop:
    nop                                           ; $1e37: $00
    nop                                           ; $1e38: $00
    nop                                           ; $1e39: $00
    dec de                                        ; $1e3a: $1b
    ld a, d                                       ; $1e3b: $7a
    or e                                          ; $1e3c: $b3
    jr nz, .DelayLoop                             ; $1e3d: $20 $f8

    ret                                           ; $1e3f: $c9


DetectSuperGameBoyViaMltReqHandshake::
    ld a, $03                                     ; $1e40: $3e $03
    ld hl, $4010                                  ; $1e42: $21 $10 $40
    call SendSGBPacketStreamFromBankedAddress     ; $1e45: $cd $d8 $1d
    call BusyWaitDelayForSGBPacketTiming          ; $1e48: $cd $34 $1e
    ldh a, [rP1]                                  ; $1e4b: $f0 $00
    and $03                                       ; $1e4d: $e6 $03
    cp $03                                        ; $1e4f: $fe $03
    jr nz, .MltReqDetectionFailedPath             ; $1e51: $20 $3b

    ld a, $20                                     ; $1e53: $3e $20
    ldh [rP1], a                                  ; $1e55: $e0 $00
    ldh a, [rP1]                                  ; $1e57: $f0 $00
    ldh a, [rP1]                                  ; $1e59: $f0 $00
    ld a, $30                                     ; $1e5b: $3e $30
    ldh [rP1], a                                  ; $1e5d: $e0 $00
    ld a, $10                                     ; $1e5f: $3e $10
    ldh [rP1], a                                  ; $1e61: $e0 $00
    ldh a, [rP1]                                  ; $1e63: $f0 $00
    ldh a, [rP1]                                  ; $1e65: $f0 $00
    ldh a, [rP1]                                  ; $1e67: $f0 $00
    ldh a, [rP1]                                  ; $1e69: $f0 $00
    ldh a, [rP1]                                  ; $1e6b: $f0 $00
    ldh a, [rP1]                                  ; $1e6d: $f0 $00
    ld a, $30                                     ; $1e6f: $3e $30
    ldh [rP1], a                                  ; $1e71: $e0 $00
    ldh a, [rP1]                                  ; $1e73: $f0 $00
    ldh a, [rP1]                                  ; $1e75: $f0 $00
    ldh a, [rP1]                                  ; $1e77: $f0 $00
    ldh a, [rP1]                                  ; $1e79: $f0 $00
    and $03                                       ; $1e7b: $e6 $03
    cp $03                                        ; $1e7d: $fe $03
    jr nz, .MltReqDetectionFailedPath             ; $1e7f: $20 $0d

    ld a, $03                                     ; $1e81: $3e $03
    ld hl, $4000                                  ; $1e83: $21 $00 $40
    call SendSGBPacketStreamFromBankedAddress     ; $1e86: $cd $d8 $1d
    call BusyWaitDelayForSGBPacketTiming          ; $1e89: $cd $34 $1e
    sub a                                         ; $1e8c: $97
    ret                                           ; $1e8d: $c9


.MltReqDetectionFailedPath:
    ld a, $03                                     ; $1e8e: $3e $03
    ld hl, $4000                                  ; $1e90: $21 $00 $40
    call SendSGBPacketStreamFromBankedAddress     ; $1e93: $cd $d8 $1d
    call BusyWaitDelayForSGBPacketTiming          ; $1e96: $cd $34 $1e
    scf                                           ; $1e99: $37
    ret                                           ; $1e9a: $c9


SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress::
    ld [rRequestedROMBank], a                     ; $1e9b: $ea $14 $c3
    ld a, [rActiveROMBank]                        ; $1e9e: $fa $12 $c3
    push af                                       ; $1ea1: $f5
    ld a, [rRequestedROMBank]                     ; $1ea2: $fa $14 $c3
    ld [rActiveROMBank], a                        ; $1ea5: $ea $12 $c3
    ld [rROMB], a                                 ; $1ea8: $ea $00 $20
    di                                            ; $1eab: $f3
    push hl                                       ; $1eac: $e5
    ld a, $e4                                     ; $1ead: $3e $e4
    ldh [rBGP], a                                 ; $1eaf: $e0 $47
    ld bc, $0010                                  ; $1eb1: $01 $10 $00
    add hl, bc                                    ; $1eb4: $09
    ld de, $8800                                  ; $1eb5: $11 $00 $88
    ld bc, $1000                                  ; $1eb8: $01 $00 $10
    call CopyMemoryBlock                          ; $1ebb: $cd $d8 $04
    ld hl, $9800                                  ; $1ebe: $21 $00 $98
    ld de, $000c                                  ; $1ec1: $11 $0c $00
    ld a, $80                                     ; $1ec4: $3e $80
    ld c, $0d                                     ; $1ec6: $0e $0d

.FillTransferTilemapRowsLoop:
    ld b, $14                                     ; $1ec8: $06 $14

.FillTransferTilemapRowLoop:
    ld [hl+], a                                   ; $1eca: $22
    inc a                                         ; $1ecb: $3c
    dec b                                         ; $1ecc: $05
    jr nz, .FillTransferTilemapRowLoop            ; $1ecd: $20 $fb

    add hl, de                                    ; $1ecf: $19
    dec c                                         ; $1ed0: $0d
    jr nz, .FillTransferTilemapRowsLoop           ; $1ed1: $20 $f5

    ld a, $81                                     ; $1ed3: $3e $81
    ldh [rLCDC], a                                ; $1ed5: $e0 $40
    ld bc, $0005                                  ; $1ed7: $01 $05 $00
    call BusyWaitDelayByBC                        ; $1eda: $cd $00 $06
    pop hl                                        ; $1edd: $e1
    call SendSGBPacketStreamFromHL                ; $1ede: $cd $f3 $1d
    ld bc, $0006                                  ; $1ee1: $01 $06 $00
    call BusyWaitDelayByBC                        ; $1ee4: $cd $00 $06
    ld a, [rBGPShadow]                            ; $1ee7: $fa $2f $c3
    ldh [rBGP], a                                 ; $1eea: $e0 $47
    ld a, [rLCDCShadow]                           ; $1eec: $fa $2e $c3
    ldh [rLCDC], a                                ; $1eef: $e0 $40
    ei                                            ; $1ef1: $fb
    pop af                                        ; $1ef2: $f1
    ld [rActiveROMBank], a                        ; $1ef3: $ea $12 $c3
    ld [rROMB], a                                 ; $1ef6: $ea $00 $20
    ret                                           ; $1ef9: $c9


RunSGBStartupTransferPacketSequence::
    ld bc, $0078                                  ; $1efa: $01 $78 $00
    call BusyWaitDelayByBC                        ; $1efd: $cd $00 $06
    call EnsureSGBMaskFreezeEnabled               ; $1f00: $cd $84 $1f
    ld a, $03                                     ; $1f03: $3e $03
    ld hl, $4de0                                  ; $1f05: $21 $e0 $4d
    call SendSGBPacketStreamFromBankedAddress     ; $1f08: $cd $d8 $1d
    ld bc, $0004                                  ; $1f0b: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f0e: $cd $00 $06
    ld a, $03                                     ; $1f11: $3e $03
    ld hl, $4df0                                  ; $1f13: $21 $f0 $4d
    call SendSGBPacketStreamFromBankedAddress     ; $1f16: $cd $d8 $1d
    ld bc, $0004                                  ; $1f19: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f1c: $cd $00 $06
    ld a, $03                                     ; $1f1f: $3e $03
    ld hl, $4e00                                  ; $1f21: $21 $00 $4e
    call SendSGBPacketStreamFromBankedAddress     ; $1f24: $cd $d8 $1d
    ld bc, $0004                                  ; $1f27: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f2a: $cd $00 $06
    ld a, $03                                     ; $1f2d: $3e $03
    ld hl, $4e10                                  ; $1f2f: $21 $10 $4e
    call SendSGBPacketStreamFromBankedAddress     ; $1f32: $cd $d8 $1d
    ld bc, $0004                                  ; $1f35: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f38: $cd $00 $06
    ld a, $03                                     ; $1f3b: $3e $03
    ld hl, $4e20                                  ; $1f3d: $21 $20 $4e
    call SendSGBPacketStreamFromBankedAddress     ; $1f40: $cd $d8 $1d
    ld bc, $0004                                  ; $1f43: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f46: $cd $00 $06
    ld a, $03                                     ; $1f49: $3e $03
    ld hl, $4e30                                  ; $1f4b: $21 $30 $4e
    call SendSGBPacketStreamFromBankedAddress     ; $1f4e: $cd $d8 $1d
    ld bc, $0004                                  ; $1f51: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f54: $cd $00 $06
    ld a, $03                                     ; $1f57: $3e $03
    ld hl, $4e40                                  ; $1f59: $21 $40 $4e
    call SendSGBPacketStreamFromBankedAddress     ; $1f5c: $cd $d8 $1d
    ld bc, $0004                                  ; $1f5f: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f62: $cd $00 $06
    ld a, $03                                     ; $1f65: $3e $03
    ld hl, $4e50                                  ; $1f67: $21 $50 $4e
    call SendSGBPacketStreamFromBankedAddress     ; $1f6a: $cd $d8 $1d
    ld bc, $0004                                  ; $1f6d: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f70: $cd $00 $06
    ld a, $03                                     ; $1f73: $3e $03
    ld hl, $4730                                  ; $1f75: $21 $30 $47
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $1f78: $cd $9b $1e
    ld a, $03                                     ; $1f7b: $3e $03
    ld hl, $4030                                  ; $1f7d: $21 $30 $40
    call SendSGBTransferPacketStreamWithVRAMBufferFromBankedAddress; $1f80: $cd $9b $1e
    ret                                           ; $1f83: $c9


EnsureSGBMaskFreezeEnabled::
    ld a, [rIsSuperGameBoyMode]                   ; $1f84: $fa $3d $c3
    and a                                         ; $1f87: $a7
    ret z                                         ; $1f88: $c8

    ld a, [$c33f]                                 ; $1f89: $fa $3f $c3
    and a                                         ; $1f8c: $a7
    ret nz                                        ; $1f8d: $c0

    ld a, $03                                     ; $1f8e: $3e $03
    ld hl, $4e60                                  ; $1f90: $21 $60 $4e
    call SendSGBPacketStreamFromBankedAddress     ; $1f93: $cd $d8 $1d
    ld bc, $0004                                  ; $1f96: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f99: $cd $00 $06
    ld a, $ff                                     ; $1f9c: $3e $ff
    ld [$c33f], a                                 ; $1f9e: $ea $3f $c3
    ret                                           ; $1fa1: $c9


EnsureSGBMaskFreezeDisabled::
    ld a, [rIsSuperGameBoyMode]                   ; $1fa2: $fa $3d $c3
    and a                                         ; $1fa5: $a7
    ret z                                         ; $1fa6: $c8

    ld bc, $0002                                  ; $1fa7: $01 $02 $00
    call BusyWaitDelayByBC                        ; $1faa: $cd $00 $06
    ld a, [$c33f]                                 ; $1fad: $fa $3f $c3
    and a                                         ; $1fb0: $a7
    ret z                                         ; $1fb1: $c8

    ld a, $03                                     ; $1fb2: $3e $03
    ld hl, $4e70                                  ; $1fb4: $21 $70 $4e
    call SendSGBPacketStreamFromBankedAddress     ; $1fb7: $cd $d8 $1d
    ld bc, $0004                                  ; $1fba: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1fbd: $cd $00 $06
    xor a                                         ; $1fc0: $af
    ld [$c33f], a                                 ; $1fc1: $ea $3f $c3
    ret                                           ; $1fc4: $c9


PlayScreenTransitionFadeIn_SGB::
    push de                                       ; $1fc5: $d5
    push bc                                       ; $1fc6: $c5
    push hl                                       ; $1fc7: $e5
    ld a, $03                                     ; $1fc8: $3e $03
    ld hl, $4020                                  ; $1fca: $21 $20 $40
    ld de, rSGBScreenTransitionPAL_SETPacketBuffer; $1fcd: $11 $40 $c3
    ld bc, $0010                                  ; $1fd0: $01 $10 $00
    call BankedTileCopy                           ; $1fd3: $cd $e1 $04
    ld a, $00                                     ; $1fd6: $3e $00
    ld hl, rSGBScreenTransitionPAL_SETPacketBuffer; $1fd8: $21 $40 $c3
    call SendSGBPacketStreamFromBankedAddress     ; $1fdb: $cd $d8 $1d
    pop hl                                        ; $1fde: $e1
    pop bc                                        ; $1fdf: $c1
    push bc                                       ; $1fe0: $c5
    ld a, [rActiveROMBank]                        ; $1fe1: $fa $12 $c3
    push af                                       ; $1fe4: $f5
    ld a, b                                       ; $1fe5: $78
    ld [rActiveROMBank], a                        ; $1fe6: $ea $12 $c3
    ld [rROMB], a                                 ; $1fe9: $ea $00 $20
    ld b, $04                                     ; $1fec: $06 $04

.ApplyFadeStepLoop:
    ld a, [hl+]                                   ; $1fee: $2a
    ld [rBGPShadow], a                            ; $1fef: $ea $2f $c3
    ld a, [hl+]                                   ; $1ff2: $2a
    ld [rOBP0Shadow], a                           ; $1ff3: $ea $30 $c3
    ld a, [hl+]                                   ; $1ff6: $2a
    ld [rOBP1Shadow], a                           ; $1ff7: $ea $31 $c3
    push bc                                       ; $1ffa: $c5
    push hl                                       ; $1ffb: $e5
    ld bc, $0002                                  ; $1ffc: $01 $02 $00
    call BusyWaitDelayByBC                        ; $1fff: $cd $00 $06
    pop hl                                        ; $2002: $e1
    pop bc                                        ; $2003: $c1
    dec b                                         ; $2004: $05
    jr nz, .ApplyFadeStepLoop                     ; $2005: $20 $e7

    ld [rStatePhaseTimer], a                      ; $2007: $ea $3c $d6
    ld [rSharedAnimationFrameState], a            ; $200a: $ea $3d $d6
    ld [rSharedUIAnimationColumnAccumulator], a   ; $200d: $ea $3e $d6
    ld [rHintCursorAnimationRowAccumulator], a    ; $2010: $ea $3f $d6
    pop af                                        ; $2013: $f1
    ld [rActiveROMBank], a                        ; $2014: $ea $12 $c3
    ld [rROMB], a                                 ; $2017: $ea $00 $20
    pop bc                                        ; $201a: $c1
    pop de                                        ; $201b: $d1
    ld a, c                                       ; $201c: $79
    or $80                                        ; $201d: $f6 $80
    ld [rSGBScreenTransitionPAL_SETPacketControl], a; $201f: $ea $49 $c3
    ld b, $04                                     ; $2022: $06 $04

.ApplySGBPalSetFadeStepLoop:
    push bc                                       ; $2024: $c5
    ld hl, rSGBScreenTransitionPAL_SETPacketColorData; $2025: $21 $41 $c3
    ld c, $04                                     ; $2028: $0e $04

.WriteSGBPalSetPacketColorsLoop:
    ld a, e                                       ; $202a: $7b
    ld [hl+], a                                   ; $202b: $22
    ld a, d                                       ; $202c: $7a
    ld [hl+], a                                   ; $202d: $22
    inc de                                        ; $202e: $13
    dec c                                         ; $202f: $0d
    jr nz, .WriteSGBPalSetPacketColorsLoop        ; $2030: $20 $f8

    push de                                       ; $2032: $d5
    ld a, $00                                     ; $2033: $3e $00
    ld hl, rSGBScreenTransitionPAL_SETPacketBuffer; $2035: $21 $40 $c3
    call SendSGBPacketStreamFromBankedAddress     ; $2038: $cd $d8 $1d
    ld bc, $0006                                  ; $203b: $01 $06 $00
    call BusyWaitDelayByBC                        ; $203e: $cd $00 $06
    pop de                                        ; $2041: $d1
    pop bc                                        ; $2042: $c1
    dec b                                         ; $2043: $05
    jr nz, .ApplySGBPalSetFadeStepLoop            ; $2044: $20 $de

    ret                                           ; $2046: $c9


PlayScreenTransitionFadeOut_SGB::
    push hl                                       ; $2047: $e5
    push bc                                       ; $2048: $c5
    push de                                       ; $2049: $d5
    ld a, $03                                     ; $204a: $3e $03
    ld hl, $4020                                  ; $204c: $21 $20 $40
    ld de, rSGBScreenTransitionPAL_SETPacketBuffer; $204f: $11 $40 $c3
    ld bc, $0010                                  ; $2052: $01 $10 $00
    call BankedTileCopy                           ; $2055: $cd $e1 $04
    pop de                                        ; $2058: $d1
    pop bc                                        ; $2059: $c1
    push bc                                       ; $205a: $c5
    ld a, c                                       ; $205b: $79
    or $80                                        ; $205c: $f6 $80
    ld [rSGBScreenTransitionPAL_SETPacketControl], a; $205e: $ea $49 $c3
    ld b, $04                                     ; $2061: $06 $04

.ApplySGBPalSetFadeStepLoop:
    push bc                                       ; $2063: $c5
    ld hl, $c348                                  ; $2064: $21 $48 $c3
    ld c, $04                                     ; $2067: $0e $04

.WriteSGBPalSetPacketColorsLoop:
    ld a, d                                       ; $2069: $7a
    ld [hl-], a                                   ; $206a: $32
    ld a, e                                       ; $206b: $7b
    ld [hl-], a                                   ; $206c: $32
    dec de                                        ; $206d: $1b
    dec c                                         ; $206e: $0d
    jr nz, .WriteSGBPalSetPacketColorsLoop        ; $206f: $20 $f8

    push de                                       ; $2071: $d5
    ld a, $00                                     ; $2072: $3e $00
    ld hl, rSGBScreenTransitionPAL_SETPacketBuffer; $2074: $21 $40 $c3
    call SendSGBPacketStreamFromBankedAddress     ; $2077: $cd $d8 $1d
    ld bc, $0006                                  ; $207a: $01 $06 $00
    call BusyWaitDelayByBC                        ; $207d: $cd $00 $06
    pop de                                        ; $2080: $d1
    pop bc                                        ; $2081: $c1
    dec b                                         ; $2082: $05
    jr nz, .ApplySGBPalSetFadeStepLoop            ; $2083: $20 $de

    ld a, $03                                     ; $2085: $3e $03
    ld hl, $4020                                  ; $2087: $21 $20 $40
    ld de, rSGBScreenTransitionPAL_SETPacketBuffer; $208a: $11 $40 $c3
    ld bc, $0010                                  ; $208d: $01 $10 $00
    call BankedTileCopy                           ; $2090: $cd $e1 $04
    ld a, $00                                     ; $2093: $3e $00
    ld hl, rSGBScreenTransitionPAL_SETPacketBuffer; $2095: $21 $40 $c3
    call SendSGBPacketStreamFromBankedAddress     ; $2098: $cd $d8 $1d
    pop bc                                        ; $209b: $c1
    pop hl                                        ; $209c: $e1
    ld a, [rActiveROMBank]                        ; $209d: $fa $12 $c3
    push af                                       ; $20a0: $f5
    ld a, b                                       ; $20a1: $78
    ld [rActiveROMBank], a                        ; $20a2: $ea $12 $c3
    ld [rROMB], a                                 ; $20a5: $ea $00 $20
    ld b, $04                                     ; $20a8: $06 $04

.ApplyFadeStepLoop:
    ld a, [hl-]                                   ; $20aa: $3a
    ld [rOBP1Shadow], a                           ; $20ab: $ea $31 $c3
    ld a, [hl-]                                   ; $20ae: $3a
    ld [rOBP0Shadow], a                           ; $20af: $ea $30 $c3
    ld a, [hl-]                                   ; $20b2: $3a
    ld [rBGPShadow], a                            ; $20b3: $ea $2f $c3
    push bc                                       ; $20b6: $c5
    push hl                                       ; $20b7: $e5
    ld bc, $0002                                  ; $20b8: $01 $02 $00
    call BusyWaitDelayByBC                        ; $20bb: $cd $00 $06
    pop hl                                        ; $20be: $e1
    pop bc                                        ; $20bf: $c1
    dec b                                         ; $20c0: $05
    jr nz, .ApplyFadeStepLoop                     ; $20c1: $20 $e7

    pop af                                        ; $20c3: $f1
    ld [rActiveROMBank], a                        ; $20c4: $ea $12 $c3
    ld [rROMB], a                                 ; $20c7: $ea $00 $20
    ret                                           ; $20ca: $c9


CopyOAMSpriteById::
    push hl                                       ; $20cb: $e5
    ld e, a                                       ; $20cc: $5f
    ld d, $00                                     ; $20cd: $16 $00
    sla e                                         ; $20cf: $cb $23
    rl d                                          ; $20d1: $cb $12
    ld a, [rActiveROMBank]                        ; $20d3: $fa $12 $c3
    push af                                       ; $20d6: $f5
    ld a, $03                                     ; $20d7: $3e $03
    ld [rActiveROMBank], a                        ; $20d9: $ea $12 $c3
    ld [rROMB], a                                 ; $20dc: $ea $00 $20
    ld hl, $65cf                                  ; $20df: $21 $cf $65
    add hl, de                                    ; $20e2: $19
    ld a, [hl+]                                   ; $20e3: $2a
    ld e, a                                       ; $20e4: $5f
    ld a, [hl]                                    ; $20e5: $7e
    ld d, a                                       ; $20e6: $57
    ld a, [rShadowOAMWriteCursor]                 ; $20e7: $fa $11 $c3
    ld l, a                                       ; $20ea: $6f
    ld h, $c0                                     ; $20eb: $26 $c0

.CopyOAMSpriteLoop:
    ld a, [de]                                    ; $20ed: $1a
    cp $ff                                        ; $20ee: $fe $ff
    jr z, .DoneRestoreBank                        ; $20f0: $28 $0f

    add c                                         ; $20f2: $81
    ld [hl+], a                                   ; $20f3: $22
    inc de                                        ; $20f4: $13
    ld a, [de]                                    ; $20f5: $1a
    add b                                         ; $20f6: $80
    ld [hl+], a                                   ; $20f7: $22
    inc de                                        ; $20f8: $13
    ld a, [de]                                    ; $20f9: $1a
    ld [hl+], a                                   ; $20fa: $22
    inc de                                        ; $20fb: $13
    ld a, [de]                                    ; $20fc: $1a
    ld [hl+], a                                   ; $20fd: $22
    inc de                                        ; $20fe: $13
    jr .CopyOAMSpriteLoop                         ; $20ff: $18 $ec

.DoneRestoreBank:
    ld a, l                                       ; $2101: $7d
    ld [rShadowOAMWriteCursor], a                 ; $2102: $ea $11 $c3
    pop af                                        ; $2105: $f1
    ld [rActiveROMBank], a                        ; $2106: $ea $12 $c3
    ld [rROMB], a                                 ; $2109: $ea $00 $20
    pop hl                                        ; $210c: $e1
    ret                                           ; $210d: $c9


GameState_06_HowToPlay_PhaseDispatcher::
    ld a, [rInputButtonsPressed]                  ; $210e: $fa $1e $c3
    ld [rGS06_HowToPlayInputButtonsPressedMirror], a; $2111: $ea $34 $d8
    ld a, [rGS06_HowToPlaySkipRequestedFlag]      ; $2114: $fa $37 $d8
    and a                                         ; $2117: $a7
    jr nz, .SetCancelAndReturnToMenuPhase         ; $2118: $20 $0e

    ld a, [rInputButtonsPressed]                  ; $211a: $fa $1e $c3
    bit 3, a                                      ; $211d: $cb $5f
    jr z, .DispatchCurrentPhase                   ; $211f: $28 $0c

    ld c, $04                                     ; $2121: $0e $04
    ld a, $02                                     ; $2123: $3e $02
    call CallSoundCommandDispatcher               ; $2125: $cd $b3 $03

.SetCancelAndReturnToMenuPhase:
    ld a, $2a                                     ; $2128: $3e $2a
    ld [rStatePhase_Current], a                   ; $212a: $ea $35 $d6

.DispatchCurrentPhase:
    ld a, [rStatePhase_Current]                   ; $212d: $fa $35 $d6
    rst RST_18                                    ; $2130: $df

GS06_PhasePointer_00::
    db $87, $21

GS06_PhasePointer_01::
    db $7f, $22

GS06_PhasePointer_02::
    db $a7, $22

GS06_PhasePointer_03::
    db $ef, $22

GS06_PhasePointer_04::
    db $0d, $23

GS06_PhasePointer_05::
    db $55, $23

GS06_PhasePointer_06::
    db $73, $23

GS06_PhasePointer_07::
    db $9f, $23

GS06_PhasePointer_08::
    db $c7, $23

GS06_PhasePointer_09::
    db $6e, $24

GS06_PhasePointer_0a::
    db $93, $24

GS06_PhasePointer_0b::
    db $ac, $24

GS06_PhasePointer_0c::
    db $d4, $24

GS06_PhasePointer_0d::
    db $02, $25

GS06_PhasePointer_0e::
    db $4a, $25

GS06_PhasePointer_0f::
    db $68, $25

GS06_PhasePointer_10::
    db $90, $25

GS06_PhasePointer_11::
    db $d8, $25

GS06_PhasePointer_12::
    db $f6, $25

GS06_PhasePointer_13::
    db $30, $26

GS06_PhasePointer_14::
    db $6c, $26

GS06_PhasePointer_15::
    db $b4, $26

GS06_PhasePointer_16::
    db $d2, $26

GS06_PhasePointer_17::
    db $fa, $26

GS06_PhasePointer_18::
    db $42, $27

GS06_PhasePointer_19::
    db $60, $27

GS06_PhasePointer_1a::
    db $9f, $27

GS06_PhasePointer_1b::
    db $d5, $27

GS06_PhasePointer_1c::
    db $e7, $27

GS06_PhasePointer_1d::
    db $0b, $28

GS06_PhasePointer_1e::
    db $3c, $28

GS06_PhasePointer_1f::
    db $71, $28

GS06_PhasePointer_20::
    db $9b, $28

GS06_PhasePointer_21::
    db $c3, $28

GS06_PhasePointer_22::
    db $f8, $28

GS06_PhasePointer_23::
    db $37, $29

GS06_PhasePointer_24::
    db $73, $29

GS06_PhasePointer_25::
    db $cd, $29

GS06_PhasePointer_26::
    db $f9, $29

GS06_PhasePointer_27::
    db $38, $2a

GS06_PhasePointer_28::
    db $80, $2a

GS06_PhasePointer_29::
    db $b1, $2a

GS06_PhasePointer_2a::
    db $29, $2b

GS06_StatePhase_00_Init::
    ld a, $43                                     ; $2187: $3e $43
    ld [rLCDCShadow], a                           ; $2189: $ea $2e $c3
    xor a                                         ; $218c: $af
    ld [rBGPShadow], a                            ; $218d: $ea $2f $c3
    ld [rOBP0Shadow], a                           ; $2190: $ea $30 $c3
    ld [rOBP1Shadow], a                           ; $2193: $ea $31 $c3
    ld [rSCXShadow], a                            ; $2196: $ea $32 $c3
    ld [rSCYShadow], a                            ; $2199: $ea $33 $c3
    call FillBGMap0WithTile01                     ; $219c: $cd $9d $05
    call FillBGMap1WithTile01                     ; $219f: $cd $a8 $05
    ld a, $07                                     ; $21a2: $3e $07
    ld hl, $4000                                  ; $21a4: $21 $00 $40
    ld de, $8000                                  ; $21a7: $11 $00 $80
    ld bc, $1800                                  ; $21aa: $01 $00 $18
    call BankedTileCopy                           ; $21ad: $cd $e1 $04
    ld a, $0b                                     ; $21b0: $3e $0b
    ld hl, $6000                                  ; $21b2: $21 $00 $60
    ld de, $9800                                  ; $21b5: $11 $00 $98
    ld bc, $0400                                  ; $21b8: $01 $00 $04
    call BankedTileCopy                           ; $21bb: $cd $e1 $04
    ld a, $2f                                     ; $21be: $3e $2f
    ld [rLYCShadow], a                            ; $21c0: $ea $36 $c3
    ld hl, rLCDCInterruptControlFlags             ; $21c3: $21 $37 $c3
    set 6, [hl]                                   ; $21c6: $cb $f6
    ld hl, rIE                                    ; $21c8: $21 $ff $ff
    set 1, [hl]                                   ; $21cb: $cb $ce
    ld a, $01                                     ; $21cd: $3e $01
    ld [rLCDCInterruptDispatchIndex], a           ; $21cf: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $21d2: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $21d5: $ea $50 $c3
    xor a                                         ; $21d8: $af
    ld [rPuzzlePostClearFlowFlag], a              ; $21d9: $ea $05 $d8
    ld [rPuzzleTimerCompletionState], a           ; $21dc: $ea $06 $d8
    ld [rMarioBlinkAnimationSequenceCursor], a    ; $21df: $ea $18 $d8
    ld [rMarioBlinkAnimationDelay], a             ; $21e2: $ea $17 $d8
    ld [rPuzzleActionRepeatGuard], a              ; $21e5: $ea $0f $d8
    ld [rCellEffectTargetColumn], a               ; $21e8: $ea $24 $d8
    ld [rCellEffectTargetRow], a                  ; $21eb: $ea $25 $d8
    ld [rPendingCellEffectCode], a                ; $21ee: $ea $23 $d8
    ld [rPendingCellEffectDelay], a               ; $21f1: $ea $22 $d8
    ld [rSharedUIAnimationColumnAccumulator], a   ; $21f4: $ea $3e $d6
    ld [rHintCursorAnimationRowAccumulator], a    ; $21f7: $ea $3f $d6
    ld a, [rLCDCFrameTickCounter]                 ; $21fa: $fa $3b $c3
    ld [rSharedAnimationFrameState], a            ; $21fd: $ea $3d $d6
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2200: $cd $43 $32
    xor a                                         ; $2203: $af
    ld [rPuzzleDataIndexLow], a                   ; $2204: $ea $07 $d8
    ld [rPuzzleDataIndexHigh], a                  ; $2207: $ea $08 $d8
    ld a, $02                                     ; $220a: $3e $02
    ld [rPuzzleTimerPenaltyStep], a               ; $220c: $ea $11 $d8
    ld a, $02                                     ; $220f: $3e $02
    ld [rHintCursorAnimationColumnThreshold], a   ; $2211: $ea $12 $d8
    ld [rHintCursorAnimationRowThreshold], a      ; $2214: $ea $13 $d8
    ld a, $05                                     ; $2217: $3e $05
    ld [rCountdownSfxTimer], a                    ; $2219: $ea $2a $d8
    ld a, $93                                     ; $221c: $3e $93
    ld [rTilemapToTileDataAddressLookupTableLow], a; $221e: $ea $63 $cd
    ld a, $10                                     ; $2221: $3e $10
    ld [rTilemapToTileDataAddressLookupTableHigh], a; $2223: $ea $64 $cd
    ld a, $0d                                     ; $2226: $3e $0d
    ld [rMessageScriptStreamResetEntryLow], a     ; $2228: $ea $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $222b: $ea $2b $d8
    ld a, $58                                     ; $222e: $3e $58
    ld [rMessageScriptStreamResetEntryHigh], a    ; $2230: $ea $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $2233: $ea $2c $d8
    ld a, $93                                     ; $2236: $3e $93
    ld [rMessageScriptStreamLimitLow], a          ; $2238: $ea $45 $d8
    ld a, $86                                     ; $223b: $3e $86
    ld [rMessageScriptStreamLimitHigh], a         ; $223d: $ea $46 $d8
    ld a, $30                                     ; $2240: $3e $30
    ld [rMessageScriptStreamPointerLow], a        ; $2242: $ea $2d $d8
    ld a, $6a                                     ; $2245: $3e $6a
    ld [rMessageScriptStreamPointerHigh], a       ; $2247: $ea $2e $d8
    call LoadPuzzleDataBuffer                     ; $224a: $cd $ee $07
    call $6ea2                                    ; $224d: $cd $a2 $6e
    call ClearShadowOAMBuffer                     ; $2250: $cd $b3 $05
    call $7b5d                                    ; $2253: $cd $5d $7b
    ld c, $00                                     ; $2256: $0e $00
    ld a, $01                                     ; $2258: $3e $01
    call CallSoundCommandDispatcher               ; $225a: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $225d: $cd $96 $03
    ld c, $02                                     ; $2260: $0e $02
    ld a, $01                                     ; $2262: $3e $01
    call CallSoundCommandDispatcher               ; $2264: $cd $b3 $03
    call EnableLCDFromShadow                      ; $2267: $cd $9f $04
    ld b, $03                                     ; $226a: $06 $03
    ld hl, $46a0                                  ; $226c: $21 $a0 $46
    ld c, $01                                     ; $226f: $0e $01
    ld de, $0014                                  ; $2271: $11 $14 $00
    call PlayScreenTransitionFadeIn               ; $2274: $cd $0a $04
    ld hl, rStatePhase_Current                    ; $2277: $21 $35 $d6
    inc [hl]                                      ; $227a: $34
    call $6f2b                                    ; $227b: $cd $2b $6f
    ret                                           ; $227e: $c9


GS06_StatePhase_01_Message::
    call $788a                                    ; $227f: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $2282: $cd $98 $30
    call AdvanceMessageScriptStream               ; $2285: $cd $73 $2b
    ret nz                                        ; $2288: $c0

    ld hl, $03ea                                  ; $2289: $21 $ea $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $228c: $cd $bb $2f
    call ClearShadowOAMBuffer                     ; $228f: $cd $b3 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $2292: $cd $33 $30
    ld a, $68                                     ; $2295: $3e $68
    ld [rMessageScriptStreamPointerLow], a        ; $2297: $ea $2d $d8
    ld a, $6a                                     ; $229a: $3e $6a
    ld [rMessageScriptStreamPointerHigh], a       ; $229c: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $229f: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $22a2: $21 $35 $d6
    inc [hl]                                      ; $22a5: $34
    ret                                           ; $22a6: $c9


GS06_StatePhase_02_HighlightNumbersTop_Prepare::
    call $788a                                    ; $22a7: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $22aa: $cd $98 $30
    call AdvanceMessageScriptStream               ; $22ad: $cd $73 $2b
    ret nz                                        ; $22b0: $c0

    xor a                                         ; $22b1: $af
    ld [rGS06_OAMSequenceEventCursor], a          ; $22b2: $ea $a6 $cd
    ld [rGS06_OAMSequenceEventDelay], a           ; $22b5: $ea $a5 $cd
    ld a, $39                                     ; $22b8: $3e $39
    ld [rGS06_OAMSequenceBaseLow], a              ; $22ba: $ea $a2 $cd
    ld a, $0e                                     ; $22bd: $3e $0e
    ld [rGS06_OAMSequenceBaseHigh], a             ; $22bf: $ea $a3 $cd
    ld a, $de                                     ; $22c2: $3e $de
    ld [rGS06_OAMSequenceEventTableLow], a        ; $22c4: $ea $a7 $cd
    ld a, $22                                     ; $22c7: $3e $22
    ld [rGS06_OAMSequenceEventTableHigh], a       ; $22c9: $ea $a8 $cd
    ld a, $00                                     ; $22cc: $3e $00
    ld [rGS06_OAMSequenceEventTableBank], a       ; $22ce: $ea $a9 $cd
    ld a, $78                                     ; $22d1: $3e $78
    ld [rStatePhaseTimer], a                      ; $22d3: $ea $3c $d6
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $22d6: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $22d9: $21 $35 $d6
    inc [hl]                                      ; $22dc: $34
    ret                                           ; $22dd: $c9


GS06_StatePhase_02_HighlightNumbersTop_OAMSequenceEventTable::
    db $08, $00, $00, $34
    db $08, $00, $00, $35
    db $08, $00, $00, $36
    db $08, $00, $00, $35
    db $00

GS06_StatePhase_03_HighlightNumbersTop_Animation::
    call $788a                                    ; $22ef: $cd $8a $78
    ld a, $00                                     ; $22f2: $3e $00
    call GS06_UpdateOAMSequenceEventAndCopySprite ; $22f4: $cd $ba $19
    call GS06_ShowMessageArrowAndTickTransitionTimer; $22f7: $cd $17 $30
    ret nz                                        ; $22fa: $c0

    ld a, $80                                     ; $22fb: $3e $80
    ld [rMessageScriptStreamPointerLow], a        ; $22fd: $ea $2d $d8
    ld a, $6a                                     ; $2300: $3e $6a
    ld [rMessageScriptStreamPointerHigh], a       ; $2302: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2305: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $2308: $21 $35 $d6
    inc [hl]                                      ; $230b: $34
    ret                                           ; $230c: $c9


GS06_StatePhase_04_HighlightNumbersLeft_Prepare::
    call $788a                                    ; $230d: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $2310: $cd $98 $30
    call AdvanceMessageScriptStream               ; $2313: $cd $73 $2b
    ret nz                                        ; $2316: $c0

    xor a                                         ; $2317: $af
    ld [rGS06_OAMSequenceEventCursor], a          ; $2318: $ea $a6 $cd
    ld [rGS06_OAMSequenceEventDelay], a           ; $231b: $ea $a5 $cd
    ld a, $16                                     ; $231e: $3e $16
    ld [rGS06_OAMSequenceBaseLow], a              ; $2320: $ea $a2 $cd
    ld a, $31                                     ; $2323: $3e $31
    ld [rGS06_OAMSequenceBaseHigh], a             ; $2325: $ea $a3 $cd
    ld a, $44                                     ; $2328: $3e $44
    ld [rGS06_OAMSequenceEventTableLow], a        ; $232a: $ea $a7 $cd
    ld a, $23                                     ; $232d: $3e $23
    ld [rGS06_OAMSequenceEventTableHigh], a       ; $232f: $ea $a8 $cd
    ld a, $00                                     ; $2332: $3e $00
    ld [rGS06_OAMSequenceEventTableBank], a       ; $2334: $ea $a9 $cd
    ld a, $78                                     ; $2337: $3e $78
    ld [rStatePhaseTimer], a                      ; $2339: $ea $3c $d6
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $233c: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $233f: $21 $35 $d6
    inc [hl]                                      ; $2342: $34
    ret                                           ; $2343: $c9


GS06_StatePhase_04_HighlightNumbersLeft_OAMSequenceEventTable::
    db $08, $00, $00, $34
    db $08, $00, $00, $35
    db $08, $00, $00, $36
    db $08, $00, $00, $35
    db $00

GS06_StatePhase_05_HighlightNumbersLeft_Animation::
    call $788a                                    ; $2355: $cd $8a $78
    ld a, $00                                     ; $2358: $3e $00
    call GS06_UpdateOAMSequenceEventAndCopySprite ; $235a: $cd $ba $19
    call GS06_ShowMessageArrowAndTickTransitionTimer; $235d: $cd $17 $30
    ret nz                                        ; $2360: $c0

    ld a, $9c                                     ; $2361: $3e $9c
    ld [rMessageScriptStreamPointerLow], a        ; $2363: $ea $2d $d8
    ld a, $6a                                     ; $2366: $3e $6a
    ld [rMessageScriptStreamPointerHigh], a       ; $2368: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $236b: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $236e: $21 $35 $d6
    inc [hl]                                      ; $2371: $34
    ret                                           ; $2372: $c9


GS06_StatePhase_06_Message::
    call $788a                                    ; $2373: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $2376: $cd $98 $30
    call AdvanceMessageScriptStream               ; $2379: $cd $73 $2b
    ret nz                                        ; $237c: $c0

    ld hl, $03ea                                  ; $237d: $21 $ea $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $2380: $cd $bb $2f
    call ClearShadowOAMBuffer                     ; $2383: $cd $b3 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $2386: $cd $33 $30
    ld a, $dc                                     ; $2389: $3e $dc
    ld [rMessageScriptStreamPointerLow], a        ; $238b: $ea $2d $d8
    ld a, $6a                                     ; $238e: $3e $6a
    ld [rMessageScriptStreamPointerHigh], a       ; $2390: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2393: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $2396: $21 $35 $d6
    inc [hl]                                      ; $2399: $34
    ld hl, rStatePhase_Current                    ; $239a: $21 $35 $d6
    inc [hl]                                      ; $239d: $34
    ret                                           ; $239e: $c9


GS06_StatePhase_07_Message::
    call $788a                                    ; $239f: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $23a2: $cd $98 $30
    call AdvanceMessageScriptStream               ; $23a5: $cd $73 $2b
    ret nz                                        ; $23a8: $c0

    ld hl, $03ea                                  ; $23a9: $21 $ea $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $23ac: $cd $bb $2f
    call ClearShadowOAMBuffer                     ; $23af: $cd $b3 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $23b2: $cd $33 $30
    ld a, $dc                                     ; $23b5: $3e $dc
    ld [rMessageScriptStreamPointerLow], a        ; $23b7: $ea $2d $d8
    ld a, $6a                                     ; $23ba: $3e $6a
    ld [rMessageScriptStreamPointerHigh], a       ; $23bc: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $23bf: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $23c2: $21 $35 $d6
    inc [hl]                                      ; $23c5: $34
    ret                                           ; $23c6: $c9


GS06_StatePhase_08_SolvePuzzle_Prepare::
    call $788a                                    ; $23c7: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $23ca: $cd $98 $30
    call AdvanceMessageScriptStream               ; $23cd: $cd $73 $2b
    ret nz                                        ; $23d0: $c0

    xor a                                         ; $23d1: $af
    ld [rPuzzleCursorColumn], a                   ; $23d2: $ea $36 $d6
    ld [rPuzzleAndMenuCursorRow], a               ; $23d5: $ea $37 $d6
    xor a                                         ; $23d8: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $23d9: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $23dc: $ea $30 $d8
    ld a, $f1                                     ; $23df: $3e $f1
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $23e1: $ea $31 $d8
    ld a, $23                                     ; $23e4: $3e $23
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $23e6: $ea $32 $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $23e9: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $23ec: $21 $35 $d6
    inc [hl]                                      ; $23ef: $34
    ret                                           ; $23f0: $c9


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
    call GS06_TickScriptedInputSequence           ; $246e: $cd $db $30
    jr nz, .FrameLoop                             ; $2471: $20 $0d

    ld a, $0a                                     ; $2473: $3e $0a
    ld [rStatePhaseTimer], a                      ; $2475: $ea $3c $d6
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2478: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $247b: $21 $35 $d6
    inc [hl]                                      ; $247e: $34
    ret                                           ; $247f: $c9


.FrameLoop:
    call $713c                                    ; $2480: $cd $3c $71
    call $70b0                                    ; $2483: $cd $b0 $70
    call $788a                                    ; $2486: $cd $8a $78
    call GS06_ShowMessageArrowAndTickTransitionTimer; $2489: $cd $17 $30
    call $7194                                    ; $248c: $cd $94 $71
    call $7488                                    ; $248f: $cd $88 $74
    ret                                           ; $2492: $c9


GS06_StatePhase_0a_SolvePuzzle_Finish::
    call GS06_ShowMessageArrowAndTickTransitionTimer; $2493: $cd $17 $30
    ret nz                                        ; $2496: $c0

    call $75a7                                    ; $2497: $cd $a7 $75
    ld a, $fe                                     ; $249a: $3e $fe
    ld [rMessageScriptStreamPointerLow], a        ; $249c: $ea $2d $d8
    ld a, $6a                                     ; $249f: $3e $6a
    ld [rMessageScriptStreamPointerHigh], a       ; $24a1: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $24a4: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $24a7: $21 $35 $d6
    inc [hl]                                      ; $24aa: $34
    ret                                           ; $24ab: $c9


GS06_StatePhase_0b_Message::
    call $788a                                    ; $24ac: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $24af: $cd $98 $30
    call AdvanceMessageScriptStream               ; $24b2: $cd $73 $2b
    ret nz                                        ; $24b5: $c0

    ld hl, $03ea                                  ; $24b6: $21 $ea $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $24b9: $cd $bb $2f
    call ClearShadowOAMBuffer                     ; $24bc: $cd $b3 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $24bf: $cd $33 $30
    ld a, $52                                     ; $24c2: $3e $52
    ld [rMessageScriptStreamPointerLow], a        ; $24c4: $ea $2d $d8
    ld a, $6b                                     ; $24c7: $3e $6b
    ld [rMessageScriptStreamPointerHigh], a       ; $24c9: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $24cc: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $24cf: $21 $35 $d6
    inc [hl]                                      ; $24d2: $34
    ret                                           ; $24d3: $c9


GS06_StatePhase_0c_ResetBoard::
    call $788a                                    ; $24d4: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $24d7: $cd $98 $30
    call AdvanceMessageScriptStream               ; $24da: $cd $73 $2b
    ret nz                                        ; $24dd: $c0

    ld hl, $03ea                                  ; $24de: $21 $ea $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $24e1: $cd $bb $2f
    call ClearShadowOAMBuffer                     ; $24e4: $cd $b3 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $24e7: $cd $33 $30
    call GS06_RedrawGameBoard                     ; $24ea: $cd $19 $31
    call LoadPuzzleDataBuffer                     ; $24ed: $cd $ee $07
    ld a, $82                                     ; $24f0: $3e $82
    ld [rMessageScriptStreamPointerLow], a        ; $24f2: $ea $2d $d8
    ld a, $6b                                     ; $24f5: $3e $6b
    ld [rMessageScriptStreamPointerHigh], a       ; $24f7: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $24fa: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $24fd: $21 $35 $d6
    inc [hl]                                      ; $2500: $34
    ret                                           ; $2501: $c9


GS06_StatePhase_0d_HighlightNumbersTop_Prepare::
    call $788a                                    ; $2502: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $2505: $cd $98 $30
    call AdvanceMessageScriptStream               ; $2508: $cd $73 $2b
    ret nz                                        ; $250b: $c0

    xor a                                         ; $250c: $af
    ld [rGS06_OAMSequenceEventCursor], a          ; $250d: $ea $a6 $cd
    ld [rGS06_OAMSequenceEventDelay], a           ; $2510: $ea $a5 $cd
    ld a, $39                                     ; $2513: $3e $39
    ld [rGS06_OAMSequenceBaseLow], a              ; $2515: $ea $a2 $cd
    ld a, $0e                                     ; $2518: $3e $0e
    ld [rGS06_OAMSequenceBaseHigh], a             ; $251a: $ea $a3 $cd
    ld a, $39                                     ; $251d: $3e $39
    ld [rGS06_OAMSequenceEventTableLow], a        ; $251f: $ea $a7 $cd
    ld a, $25                                     ; $2522: $3e $25
    ld [rGS06_OAMSequenceEventTableHigh], a       ; $2524: $ea $a8 $cd
    ld a, $00                                     ; $2527: $3e $00
    ld [rGS06_OAMSequenceEventTableBank], a       ; $2529: $ea $a9 $cd
    ld a, $78                                     ; $252c: $3e $78
    ld [rStatePhaseTimer], a                      ; $252e: $ea $3c $d6
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2531: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $2534: $21 $35 $d6
    inc [hl]                                      ; $2537: $34
    ret                                           ; $2538: $c9


GS06_StatePhase_0d_HighlightNumbersTop_OAMSequenceEventTable::
    db $08, $00, $00, $34
    db $08, $00, $00, $35
    db $08, $00, $00, $36
    db $08, $00, $00, $35
    db $00

GS06_StatePhase_0e_HighlightNumbersTop_Animation::
    call $788a                                    ; $254a: $cd $8a $78
    ld a, $00                                     ; $254d: $3e $00
    call GS06_UpdateOAMSequenceEventAndCopySprite ; $254f: $cd $ba $19
    call GS06_ShowMessageArrowAndTickTransitionTimer; $2552: $cd $17 $30
    ret nz                                        ; $2555: $c0

    ld a, $a2                                     ; $2556: $3e $a2
    ld [rMessageScriptStreamPointerLow], a        ; $2558: $ea $2d $d8
    ld a, $6b                                     ; $255b: $3e $6b
    ld [rMessageScriptStreamPointerHigh], a       ; $255d: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2560: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $2563: $21 $35 $d6
    inc [hl]                                      ; $2566: $34
    ret                                           ; $2567: $c9


GS06_StatePhase_0f_Message::
    call $788a                                    ; $2568: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $256b: $cd $98 $30
    call AdvanceMessageScriptStream               ; $256e: $cd $73 $2b
    ret nz                                        ; $2571: $c0

    ld hl, $03ea                                  ; $2572: $21 $ea $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $2575: $cd $bb $2f
    call ClearShadowOAMBuffer                     ; $2578: $cd $b3 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $257b: $cd $33 $30
    ld a, $e0                                     ; $257e: $3e $e0
    ld [rMessageScriptStreamPointerLow], a        ; $2580: $ea $2d $d8
    ld a, $6b                                     ; $2583: $3e $6b
    ld [rMessageScriptStreamPointerHigh], a       ; $2585: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2588: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $258b: $21 $35 $d6
    inc [hl]                                      ; $258e: $34
    ret                                           ; $258f: $c9


GS06_StatePhase_10_HighlightNumbersFirstColumn_Prepare::
    call $788a                                    ; $2590: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $2593: $cd $98 $30
    call AdvanceMessageScriptStream               ; $2596: $cd $73 $2b
    ret nz                                        ; $2599: $c0

    xor a                                         ; $259a: $af
    ld [rGS06_OAMSequenceEventCursor], a          ; $259b: $ea $a6 $cd
    ld [rGS06_OAMSequenceEventDelay], a           ; $259e: $ea $a5 $cd
    ld a, $39                                     ; $25a1: $3e $39
    ld [rGS06_OAMSequenceBaseLow], a              ; $25a3: $ea $a2 $cd
    ld a, $0e                                     ; $25a6: $3e $0e
    ld [rGS06_OAMSequenceBaseHigh], a             ; $25a8: $ea $a3 $cd
    ld a, $c7                                     ; $25ab: $3e $c7
    ld [rGS06_OAMSequenceEventTableLow], a        ; $25ad: $ea $a7 $cd
    ld a, $25                                     ; $25b0: $3e $25
    ld [rGS06_OAMSequenceEventTableHigh], a       ; $25b2: $ea $a8 $cd
    ld a, $00                                     ; $25b5: $3e $00
    ld [rGS06_OAMSequenceEventTableBank], a       ; $25b7: $ea $a9 $cd
    ld a, $78                                     ; $25ba: $3e $78
    ld [rStatePhaseTimer], a                      ; $25bc: $ea $3c $d6
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $25bf: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $25c2: $21 $35 $d6
    inc [hl]                                      ; $25c5: $34
    ret                                           ; $25c6: $c9


GS06_StatePhase_10_HighlightNumbersFirstColumn_OAMSequenceEventTable::
    db $08, $00, $00, $2e
    db $08, $00, $00, $2f
    db $08, $00, $00, $30
    db $08, $00, $00, $2f
    db $00

GS06_StatePhase_11_HighlightNumbersFirstColumn_Animation::
    call $788a                                    ; $25d8: $cd $8a $78
    ld a, $00                                     ; $25db: $3e $00
    call GS06_UpdateOAMSequenceEventAndCopySprite ; $25dd: $cd $ba $19
    call GS06_ShowMessageArrowAndTickTransitionTimer; $25e0: $cd $17 $30
    ret nz                                        ; $25e3: $c0

    ld a, $fa                                     ; $25e4: $3e $fa
    ld [rMessageScriptStreamPointerLow], a        ; $25e6: $ea $2d $d8
    ld a, $6b                                     ; $25e9: $3e $6b
    ld [rMessageScriptStreamPointerHigh], a       ; $25eb: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $25ee: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $25f1: $21 $35 $d6
    inc [hl]                                      ; $25f4: $34
    ret                                           ; $25f5: $c9


GS06_StatePhase_12_SolveFirstColumn_Prepare::
    call $788a                                    ; $25f6: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $25f9: $cd $98 $30
    call AdvanceMessageScriptStream               ; $25fc: $cd $73 $2b
    ret nz                                        ; $25ff: $c0

    xor a                                         ; $2600: $af
    ld [rPuzzleCursorColumn], a                   ; $2601: $ea $36 $d6
    ld [rPuzzleAndMenuCursorRow], a               ; $2604: $ea $37 $d6
    xor a                                         ; $2607: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $2608: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $260b: $ea $30 $d8
    ld a, $20                                     ; $260e: $3e $20
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $2610: $ea $31 $d8
    ld a, $26                                     ; $2613: $3e $26
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $2615: $ea $32 $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2618: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $261b: $21 $35 $d6
    inc [hl]                                      ; $261e: $34
    ret                                           ; $261f: $c9


GS06_SolveFirstColumnInputSequenceData::
    db $00, $00, $01, $80, $01, $80, $01, $80
    db $01, $80, $01, $00, $00, $00, $00, $ff

GS06_StatePhase_13_SolveFirstColumn_Animation::
    call GS06_TickScriptedInputSequence           ; $2630: $cd $db $30
    jr nz, .FrameLoop                             ; $2633: $20 $24

    ld hl, $03ea                                  ; $2635: $21 $ea $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $2638: $cd $bb $2f
    call ClearShadowOAMBuffer                     ; $263b: $cd $b3 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $263e: $cd $33 $30
    call GS06_RedrawGameBoard                     ; $2641: $cd $19 $31
    call LoadPuzzleDataBuffer                     ; $2644: $cd $ee $07
    ld a, $3a                                     ; $2647: $3e $3a
    ld [rMessageScriptStreamPointerLow], a        ; $2649: $ea $2d $d8
    ld a, $6c                                     ; $264c: $3e $6c
    ld [rMessageScriptStreamPointerHigh], a       ; $264e: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2651: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $2654: $21 $35 $d6
    inc [hl]                                      ; $2657: $34
    ret                                           ; $2658: $c9


.FrameLoop:
    call $713c                                    ; $2659: $cd $3c $71
    call $70b0                                    ; $265c: $cd $b0 $70
    call $788a                                    ; $265f: $cd $8a $78
    call GS06_ShowMessageArrowAndTickTransitionTimer; $2662: $cd $17 $30
    call $7194                                    ; $2665: $cd $94 $71
    call $7488                                    ; $2668: $cd $88 $74
    ret                                           ; $266b: $c9


GS06_StatePhase_14_HighlightNumbersLeft_Prepare::
    call $788a                                    ; $266c: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $266f: $cd $98 $30
    call AdvanceMessageScriptStream               ; $2672: $cd $73 $2b
    ret nz                                        ; $2675: $c0

    xor a                                         ; $2676: $af
    ld [rGS06_OAMSequenceEventCursor], a          ; $2677: $ea $a6 $cd
    ld [rGS06_OAMSequenceEventDelay], a           ; $267a: $ea $a5 $cd
    ld a, $16                                     ; $267d: $3e $16
    ld [rGS06_OAMSequenceBaseLow], a              ; $267f: $ea $a2 $cd
    ld a, $31                                     ; $2682: $3e $31
    ld [rGS06_OAMSequenceBaseHigh], a             ; $2684: $ea $a3 $cd
    ld a, $a3                                     ; $2687: $3e $a3
    ld [rGS06_OAMSequenceEventTableLow], a        ; $2689: $ea $a7 $cd
    ld a, $26                                     ; $268c: $3e $26
    ld [rGS06_OAMSequenceEventTableHigh], a       ; $268e: $ea $a8 $cd
    ld a, $00                                     ; $2691: $3e $00
    ld [rGS06_OAMSequenceEventTableBank], a       ; $2693: $ea $a9 $cd
    ld a, $78                                     ; $2696: $3e $78
    ld [rStatePhaseTimer], a                      ; $2698: $ea $3c $d6
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $269b: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $269e: $21 $35 $d6
    inc [hl]                                      ; $26a1: $34
    ret                                           ; $26a2: $c9


GS06_StatePhase_14_HighlightNumbersLeft_OAMSequenceEventTable::
    db $08, $00, $00, $34
    db $08, $00, $00, $35
    db $08, $00, $00, $36
    db $08, $00, $00, $35
    db $00

GS06_StatePhase_15_HighlightNumbersLeft_Animation::
    call $788a                                    ; $26b4: $cd $8a $78
    ld a, $00                                     ; $26b7: $3e $00
    call GS06_UpdateOAMSequenceEventAndCopySprite ; $26b9: $cd $ba $19
    call GS06_ShowMessageArrowAndTickTransitionTimer; $26bc: $cd $17 $30
    ret nz                                        ; $26bf: $c0

    ld a, $5a                                     ; $26c0: $3e $5a
    ld [rMessageScriptStreamPointerLow], a        ; $26c2: $ea $2d $d8
    ld a, $6c                                     ; $26c5: $3e $6c
    ld [rMessageScriptStreamPointerHigh], a       ; $26c7: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $26ca: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $26cd: $21 $35 $d6
    inc [hl]                                      ; $26d0: $34
    ret                                           ; $26d1: $c9


GS06_StatePhase_16_Message::
    call $788a                                    ; $26d2: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $26d5: $cd $98 $30
    call AdvanceMessageScriptStream               ; $26d8: $cd $73 $2b
    ret nz                                        ; $26db: $c0

    ld hl, $03ea                                  ; $26dc: $21 $ea $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $26df: $cd $bb $2f
    call ClearShadowOAMBuffer                     ; $26e2: $cd $b3 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $26e5: $cd $33 $30
    ld a, $98                                     ; $26e8: $3e $98
    ld [rMessageScriptStreamPointerLow], a        ; $26ea: $ea $2d $d8
    ld a, $6c                                     ; $26ed: $3e $6c
    ld [rMessageScriptStreamPointerHigh], a       ; $26ef: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $26f2: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $26f5: $21 $35 $d6
    inc [hl]                                      ; $26f8: $34
    ret                                           ; $26f9: $c9


GS06_StatePhase_17_HighlightNumbersSecondRow_Prepare::
    call $788a                                    ; $26fa: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $26fd: $cd $98 $30
    call AdvanceMessageScriptStream               ; $2700: $cd $73 $2b
    ret nz                                        ; $2703: $c0

    xor a                                         ; $2704: $af
    ld [rGS06_OAMSequenceEventCursor], a          ; $2705: $ea $a6 $cd
    ld [rGS06_OAMSequenceEventDelay], a           ; $2708: $ea $a5 $cd
    ld a, $16                                     ; $270b: $3e $16
    ld [rGS06_OAMSequenceBaseLow], a              ; $270d: $ea $a2 $cd
    ld a, $37                                     ; $2710: $3e $37
    ld [rGS06_OAMSequenceBaseHigh], a             ; $2712: $ea $a3 $cd
    ld a, $31                                     ; $2715: $3e $31
    ld [rGS06_OAMSequenceEventTableLow], a        ; $2717: $ea $a7 $cd
    ld a, $27                                     ; $271a: $3e $27
    ld [rGS06_OAMSequenceEventTableHigh], a       ; $271c: $ea $a8 $cd
    ld a, $00                                     ; $271f: $3e $00
    ld [rGS06_OAMSequenceEventTableBank], a       ; $2721: $ea $a9 $cd
    ld a, $78                                     ; $2724: $3e $78
    ld [rStatePhaseTimer], a                      ; $2726: $ea $3c $d6
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2729: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $272c: $21 $35 $d6
    inc [hl]                                      ; $272f: $34
    ret                                           ; $2730: $c9


GS06_StatePhase_17_HighlightNumbersSecondRow_OAMSequenceEventTable::
    db $08, $00, $00, $31
    db $08, $00, $00, $32
    db $08, $00, $00, $33
    db $08, $00, $00, $32
    db $00

GS06_StatePhase_18_HighlightNumbersSecondRow_Animation::
    call $788a                                    ; $2742: $cd $8a $78
    ld a, $00                                     ; $2745: $3e $00
    call GS06_UpdateOAMSequenceEventAndCopySprite ; $2747: $cd $ba $19
    call GS06_ShowMessageArrowAndTickTransitionTimer; $274a: $cd $17 $30
    ret nz                                        ; $274d: $c0

    ld a, $b8                                     ; $274e: $3e $b8
    ld [rMessageScriptStreamPointerLow], a        ; $2750: $ea $2d $d8
    ld a, $6c                                     ; $2753: $3e $6c
    ld [rMessageScriptStreamPointerHigh], a       ; $2755: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2758: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $275b: $21 $35 $d6
    inc [hl]                                      ; $275e: $34
    ret                                           ; $275f: $c9


GS06_StatePhase_19_SolveSecondRow_Prepare::
    call $788a                                    ; $2760: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $2763: $cd $98 $30
    call AdvanceMessageScriptStream               ; $2766: $cd $73 $2b
    ret nz                                        ; $2769: $c0

    xor a                                         ; $276a: $af
    ld [rPuzzleCursorColumn], a                   ; $276b: $ea $36 $d6
    ld a, $01                                     ; $276e: $3e $01
    ld [rPuzzleAndMenuCursorRow], a               ; $2770: $ea $37 $d6
    xor a                                         ; $2773: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $2774: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $2777: $ea $30 $d8
    ld a, $8c                                     ; $277a: $3e $8c
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $277c: $ea $31 $d8
    ld a, $27                                     ; $277f: $3e $27
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $2781: $ea $32 $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2784: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $2787: $21 $35 $d6
    inc [hl]                                      ; $278a: $34
    ret                                           ; $278b: $c9


GS06_SolveSecondRowInputSequenceData::
    db $00, $00, $01, $10, $01, $10, $01, $00
    db $00, $10, $10, $00, $00, $01, $00, $00
    db $00, $00, $ff

GS06_StatePhase_1a_SolveSecondRow_Animation::
    call GS06_TickScriptedInputSequence           ; $279f: $cd $db $30
    jr nz, .FrameLoop                             ; $27a2: $20 $1e

    ld hl, $03ea                                  ; $27a4: $21 $ea $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $27a7: $cd $bb $2f
    call ClearShadowOAMBuffer                     ; $27aa: $cd $b3 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $27ad: $cd $33 $30
    ld a, $16                                     ; $27b0: $3e $16
    ld [rMessageScriptStreamPointerLow], a        ; $27b2: $ea $2d $d8
    ld a, $6d                                     ; $27b5: $3e $6d
    ld [rMessageScriptStreamPointerHigh], a       ; $27b7: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $27ba: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $27bd: $21 $35 $d6
    inc [hl]                                      ; $27c0: $34
    ret                                           ; $27c1: $c9


.FrameLoop:
    call $713c                                    ; $27c2: $cd $3c $71
    call $70b0                                    ; $27c5: $cd $b0 $70
    call $788a                                    ; $27c8: $cd $8a $78
    call GS06_ShowMessageArrowAndTickTransitionTimer; $27cb: $cd $17 $30
    call $7194                                    ; $27ce: $cd $94 $71
    call $7488                                    ; $27d1: $cd $88 $74
    ret                                           ; $27d4: $c9


GS06_StatePhase_1b_Message::
    call $788a                                    ; $27d5: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $27d8: $cd $98 $30
    call AdvanceMessageScriptStream               ; $27db: $cd $73 $2b
    ret nz                                        ; $27de: $c0

    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $27df: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $27e2: $21 $35 $d6
    inc [hl]                                      ; $27e5: $34
    ret                                           ; $27e6: $c9


GS06_StatePhase_1c_DecrementPuzzleTimer::
    call $788a                                    ; $27e7: $cd $8a $78
    call GS06_ShowMessageArrowAndTickTransitionTimer; $27ea: $cd $17 $30
    call GS06_DecrementPuzzleTimer                ; $27ed: $cd $65 $31
    call $7c3a                                    ; $27f0: $cd $3a $7c
    ld a, [rPuzzleTimerCompletionState]           ; $27f3: $fa $06 $d8
    cp $01                                        ; $27f6: $fe $01
    ret nz                                        ; $27f8: $c0

    ld a, $6a                                     ; $27f9: $3e $6a
    ld [rMessageScriptStreamPointerLow], a        ; $27fb: $ea $2d $d8
    ld a, $6d                                     ; $27fe: $3e $6d
    ld [rMessageScriptStreamPointerHigh], a       ; $2800: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2803: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $2806: $21 $35 $d6
    inc [hl]                                      ; $2809: $34
    ret                                           ; $280a: $c9


GS06_StatePhase_1d_GameOverMessage::
    call $788a                                    ; $280b: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $280e: $cd $98 $30
    call AdvanceMessageScriptStream               ; $2811: $cd $73 $2b
    ret nz                                        ; $2814: $c0

    call $7c55                                    ; $2815: $cd $55 $7c
    ld hl, $03ea                                  ; $2818: $21 $ea $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $281b: $cd $bb $2f
    call ClearShadowOAMBuffer                     ; $281e: $cd $b3 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $2821: $cd $33 $30
    call GS06_RedrawGameBoard_RestoreStateAfterGameOver; $2824: $cd $3f $31
    call $7b5d                                    ; $2827: $cd $5d $7b
    ld a, $88                                     ; $282a: $3e $88
    ld [rMessageScriptStreamPointerLow], a        ; $282c: $ea $2d $d8
    ld a, $6d                                     ; $282f: $3e $6d
    ld [rMessageScriptStreamPointerHigh], a       ; $2831: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2834: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $2837: $21 $35 $d6
    inc [hl]                                      ; $283a: $34
    ret                                           ; $283b: $c9


GS06_StatePhase_1e_MakeMistake_Prepare::
    call $788a                                    ; $283c: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $283f: $cd $98 $30
    call AdvanceMessageScriptStream               ; $2842: $cd $73 $2b
    ret nz                                        ; $2845: $c0

    ld a, $03                                     ; $2846: $3e $03
    ld [rPuzzleCursorColumn], a                   ; $2848: $ea $36 $d6
    ld a, $01                                     ; $284b: $3e $01
    ld [rPuzzleAndMenuCursorRow], a               ; $284d: $ea $37 $d6
    xor a                                         ; $2850: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $2851: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $2854: $ea $30 $d8
    ld a, $69                                     ; $2857: $3e $69
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $2859: $ea $31 $d8
    ld a, $28                                     ; $285c: $3e $28
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $285e: $ea $32 $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2861: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $2864: $21 $35 $d6
    inc [hl]                                      ; $2867: $34
    ret                                           ; $2868: $c9


GS06_MakeMistakeInputSequenceData::
    db $00, $00, $01, $00, $00, $00, $00, $ff

GS06_StatePhase_1f_MakeMistake_Animation::
    call GS06_TickScriptedInputSequence           ; $2871: $cd $db $30
    jr nz, .FrameLoop                             ; $2874: $20 $12

    ld a, $c2                                     ; $2876: $3e $c2
    ld [rMessageScriptStreamPointerLow], a        ; $2878: $ea $2d $d8
    ld a, $6d                                     ; $287b: $3e $6d
    ld [rMessageScriptStreamPointerHigh], a       ; $287d: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2880: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $2883: $21 $35 $d6
    inc [hl]                                      ; $2886: $34
    ret                                           ; $2887: $c9


.FrameLoop:
    call $713c                                    ; $2888: $cd $3c $71
    call $70b0                                    ; $288b: $cd $b0 $70
    call $788a                                    ; $288e: $cd $8a $78
    call GS06_ShowMessageArrowAndTickTransitionTimer; $2891: $cd $17 $30
    call $7194                                    ; $2894: $cd $94 $71
    call $7488                                    ; $2897: $cd $88 $74
    ret                                           ; $289a: $c9


GS06_StatePhase_20_Message::
    call $788a                                    ; $289b: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $289e: $cd $98 $30
    call AdvanceMessageScriptStream               ; $28a1: $cd $73 $2b
    ret nz                                        ; $28a4: $c0

    ld hl, $03ea                                  ; $28a5: $21 $ea $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $28a8: $cd $bb $2f
    call ClearShadowOAMBuffer                     ; $28ab: $cd $b3 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $28ae: $cd $33 $30
    ld a, $f2                                     ; $28b1: $3e $f2
    ld [rMessageScriptStreamPointerLow], a        ; $28b3: $ea $2d $d8
    ld a, $6d                                     ; $28b6: $3e $6d
    ld [rMessageScriptStreamPointerHigh], a       ; $28b8: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $28bb: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $28be: $21 $35 $d6
    inc [hl]                                      ; $28c1: $34
    ret                                           ; $28c2: $c9


GS06_StatePhase_21_MarkWithX_Prepare::
    call $788a                                    ; $28c3: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $28c6: $cd $98 $30
    call AdvanceMessageScriptStream               ; $28c9: $cd $73 $2b
    ret nz                                        ; $28cc: $c0

    ld a, $03                                     ; $28cd: $3e $03
    ld [rPuzzleCursorColumn], a                   ; $28cf: $ea $36 $d6
    ld a, $01                                     ; $28d2: $3e $01
    ld [rPuzzleAndMenuCursorRow], a               ; $28d4: $ea $37 $d6
    xor a                                         ; $28d7: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $28d8: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $28db: $ea $30 $d8
    ld a, $f0                                     ; $28de: $3e $f0
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $28e0: $ea $31 $d8
    ld a, $28                                     ; $28e3: $3e $28
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $28e5: $ea $32 $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $28e8: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $28eb: $21 $35 $d6
    inc [hl]                                      ; $28ee: $34
    ret                                           ; $28ef: $c9


GS06_MarkWithXInputSequenceData::
    db $00, $00, $02, $00, $00, $00, $00, $ff

GS06_StatePhase_22_MarkWithX_Animation::
    call GS06_TickScriptedInputSequence           ; $28f8: $cd $db $30
    jr nz, .FrameLoop                             ; $28fb: $20 $27

    ld hl, $03ea                                  ; $28fd: $21 $ea $03
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $2900: $cd $bb $2f
    call ClearShadowOAMBuffer                     ; $2903: $cd $b3 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $2906: $cd $33 $30
    call GS06_RedrawGameBoard                     ; $2909: $cd $19 $31
    call LoadPuzzleDataBuffer                     ; $290c: $cd $ee $07
    call $7b5d                                    ; $290f: $cd $5d $7b
    ld a, $5a                                     ; $2912: $3e $5a
    ld [rMessageScriptStreamPointerLow], a        ; $2914: $ea $2d $d8
    ld a, $6e                                     ; $2917: $3e $6e
    ld [rMessageScriptStreamPointerHigh], a       ; $2919: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $291c: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $291f: $21 $35 $d6
    inc [hl]                                      ; $2922: $34
    ret                                           ; $2923: $c9


.FrameLoop:
    call $713c                                    ; $2924: $cd $3c $71
    call $70b0                                    ; $2927: $cd $b0 $70
    call $788a                                    ; $292a: $cd $8a $78
    call GS06_ShowMessageArrowAndTickTransitionTimer; $292d: $cd $17 $30
    call $7194                                    ; $2930: $cd $94 $71
    call $7488                                    ; $2933: $cd $88 $74
    ret                                           ; $2936: $c9


GS06_StatePhase_23_WithHintPopUp_Prepare::
    call $788a                                    ; $2937: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $293a: $cd $98 $30
    call AdvanceMessageScriptStream               ; $293d: $cd $73 $2b
    ret nz                                        ; $2940: $c0

    ld a, $01                                     ; $2941: $3e $01
    ld [rHintPopupSelection], a                   ; $2943: $ea $33 $d8
    ld a, $06                                     ; $2946: $3e $06
    ld hl, $7800                                  ; $2948: $21 $00 $78
    ld de, $8500                                  ; $294b: $11 $00 $85
    ld bc, $0200                                  ; $294e: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $2951: $cd $35 $05
    xor a                                         ; $2954: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $2955: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $2958: $ea $30 $d8
    ld a, $6d                                     ; $295b: $3e $6d
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $295d: $ea $31 $d8
    ld a, $29                                     ; $2960: $3e $29
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $2962: $ea $32 $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2965: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $2968: $21 $35 $d6
    inc [hl]                                      ; $296b: $34
    ret                                           ; $296c: $c9


GS06_WithHintPopUpInputSequenceData::
    db $00, $00, $20, $00, $00, $ff

GS06_StatePhase_24_WithHintPopUp_Demonstration::
    call GS06_DrawWithHintPopUp                   ; $2973: $cd $c1 $29
    call GS06_TickScriptedInputSequence           ; $2976: $cd $db $30
    jr nz, .ToggleHintPopupVariant                ; $2979: $20 $2d

    ld hl, GS06_DrawWithHintPopUp                 ; $297b: $21 $c1 $29
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $297e: $cd $bb $2f
    call ClearShadowOAMBuffer                     ; $2981: $cd $b3 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $2984: $cd $33 $30
    ld a, $b2                                     ; $2987: $3e $b2
    ld [rMessageScriptStreamPointerLow], a        ; $2989: $ea $2d $d8
    ld a, $6e                                     ; $298c: $3e $6e
    ld [rMessageScriptStreamPointerHigh], a       ; $298e: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2991: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $2994: $21 $35 $d6
    inc [hl]                                      ; $2997: $34
    rst RST_08                                    ; $2998: $cf
    ld a, $07                                     ; $2999: $3e $07
    ld hl, $4500                                  ; $299b: $21 $00 $45
    ld de, $8500                                  ; $299e: $11 $00 $85
    ld bc, $0200                                  ; $29a1: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $29a4: $cd $35 $05
    ret                                           ; $29a7: $c9


.ToggleHintPopupVariant:
    call $788a                                    ; $29a8: $cd $8a $78
    ld a, [rInputButtonsPressed]                  ; $29ab: $fa $1e $c3
    and $f0                                       ; $29ae: $e6 $f0
    ret z                                         ; $29b0: $c8

    ld c, $0a                                     ; $29b1: $0e $0a
    ld a, $02                                     ; $29b3: $3e $02
    call CallSoundCommandDispatcher               ; $29b5: $cd $b3 $03
    ld a, [rHintPopupSelection]                   ; $29b8: $fa $33 $d8
    xor $01                                       ; $29bb: $ee $01
    ld [rHintPopupSelection], a                   ; $29bd: $ea $33 $d8
    ret                                           ; $29c0: $c9


GS06_DrawWithHintPopUp::
    ld a, [rHintPopupSelection]                   ; $29c1: $fa $33 $d8
    add $3a                                       ; $29c4: $c6 $3a
    ld bc, $2a36                                  ; $29c6: $01 $36 $2a
    call CopyOAMSpriteById                        ; $29c9: $cd $cb $20
    ret                                           ; $29cc: $c9


GS06_StatePhase_25_Message::
    call AdvanceHintCursorAnimation               ; $29cd: $cd $cf $31
    call $788a                                    ; $29d0: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $29d3: $cd $98 $30
    call AdvanceMessageScriptStream               ; $29d6: $cd $73 $2b
    ret nz                                        ; $29d9: $c0

    call ClearShadowOAMBufferFromCursor           ; $29da: $cd $c2 $05
    rst RST_08                                    ; $29dd: $cf
    call AdvanceHintCursorAnimation               ; $29de: $cd $cf $31
    call $788a                                    ; $29e1: $cd $8a $78
    call ClearShadowOAMBuffer                     ; $29e4: $cd $b3 $05
    ld a, $ea                                     ; $29e7: $3e $ea
    ld [rMessageScriptStreamPointerLow], a        ; $29e9: $ea $2d $d8
    ld a, $6e                                     ; $29ec: $3e $6e
    ld [rMessageScriptStreamPointerHigh], a       ; $29ee: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $29f1: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $29f4: $21 $35 $d6
    inc [hl]                                      ; $29f7: $34
    ret                                           ; $29f8: $c9


GS06_StatePhase_26_StopTopHintCursor::
    call AdvanceHintCursorAnimation               ; $29f9: $cd $cf $31
    call $788a                                    ; $29fc: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $29ff: $cd $98 $30
    call AdvanceMessageScriptStream               ; $2a02: $cd $73 $2b
    ret nz                                        ; $2a05: $c0

    ld hl, AdvanceHintCursorAnimation             ; $2a06: $21 $cf $31
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $2a09: $cd $bb $2f
    ld a, [rHintCursorAnimationColumnThreshold]   ; $2a0c: $fa $12 $d8
    scf                                           ; $2a0f: $37
    rl a                                          ; $2a10: $cb $17
    ld [rHintCursorAnimationColumnThreshold], a   ; $2a12: $ea $12 $d8

.DecelerateTopHintCursorLoop:
    call GS06_ShowMessageArrowAndTickTransitionTimer; $2a15: $cd $17 $30
    call ClearShadowOAMBufferFromCursor           ; $2a18: $cd $c2 $05
    rst RST_08                                    ; $2a1b: $cf
    call AdvanceHintCursorAnimation               ; $2a1c: $cd $cf $31
    ld a, [rHintCursorAnimationColumnThreshold]   ; $2a1f: $fa $12 $d8
    cp $3f                                        ; $2a22: $fe $3f
    jr c, .DecelerateTopHintCursorLoop            ; $2a24: $38 $ef

    ld a, $08                                     ; $2a26: $3e $08
    ld [rMessageScriptStreamPointerLow], a        ; $2a28: $ea $2d $d8
    ld a, $6f                                     ; $2a2b: $3e $6f
    ld [rMessageScriptStreamPointerHigh], a       ; $2a2d: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2a30: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $2a33: $21 $35 $d6
    inc [hl]                                      ; $2a36: $34
    ret                                           ; $2a37: $c9


GS06_StatePhase_27_StopLeftHintCursor::
    call AdvanceHintCursorAnimation               ; $2a38: $cd $cf $31
    call $788a                                    ; $2a3b: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $2a3e: $cd $98 $30
    call AdvanceMessageScriptStream               ; $2a41: $cd $73 $2b
    ret nz                                        ; $2a44: $c0

    ld hl, AdvanceHintCursorAnimation             ; $2a45: $21 $cf $31
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $2a48: $cd $bb $2f
    ld a, [rHintCursorAnimationRowThreshold]      ; $2a4b: $fa $13 $d8
    scf                                           ; $2a4e: $37
    rl a                                          ; $2a4f: $cb $17
    ld [rHintCursorAnimationRowThreshold], a      ; $2a51: $ea $13 $d8

.DecelerateLeftHintCursorLoop:
    call GS06_ShowMessageArrowAndTickTransitionTimer; $2a54: $cd $17 $30
    call ClearShadowOAMBufferFromCursor           ; $2a57: $cd $c2 $05
    rst RST_08                                    ; $2a5a: $cf
    call AdvanceHintCursorAnimation               ; $2a5b: $cd $cf $31
    ld a, [rHintCursorAnimationRowThreshold]      ; $2a5e: $fa $13 $d8
    cp $3f                                        ; $2a61: $fe $3f
    jr c, .DecelerateLeftHintCursorLoop           ; $2a63: $38 $ef

    call ClearShadowOAMBuffer                     ; $2a65: $cd $b3 $05
    call AdvanceHintCursorAnimation               ; $2a68: $cd $cf $31
    call GS06_CopyRedrawSourceToProgressionBuffer ; $2a6b: $cd $33 $30
    ld a, $26                                     ; $2a6e: $3e $26
    ld [rMessageScriptStreamPointerLow], a        ; $2a70: $ea $2d $d8
    ld a, $6f                                     ; $2a73: $3e $6f
    ld [rMessageScriptStreamPointerHigh], a       ; $2a75: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2a78: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $2a7b: $21 $35 $d6
    inc [hl]                                      ; $2a7e: $34
    ret                                           ; $2a7f: $c9


GS06_StatePhase_28_ApplyHintSolve::
    call AdvanceHintCursorAnimation               ; $2a80: $cd $cf $31
    call $788a                                    ; $2a83: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $2a86: $cd $98 $30
    call AdvanceMessageScriptStream               ; $2a89: $cd $73 $2b
    ret nz                                        ; $2a8c: $c0

    call $7814                                    ; $2a8d: $cd $14 $78
    ld hl, $70f7                                  ; $2a90: $21 $f7 $70
    call GS06_ShowAButtonPromptAndWaitForAdvanceOrSkip; $2a93: $cd $bb $2f
    call ClearShadowOAMBuffer                     ; $2a96: $cd $b3 $05
    call $70f7                                    ; $2a99: $cd $f7 $70
    call GS06_CopyRedrawSourceToProgressionBuffer ; $2a9c: $cd $33 $30
    ld a, $78                                     ; $2a9f: $3e $78
    ld [rMessageScriptStreamPointerLow], a        ; $2aa1: $ea $2d $d8
    ld a, $6f                                     ; $2aa4: $3e $6f
    ld [rMessageScriptStreamPointerHigh], a       ; $2aa6: $ea $2e $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2aa9: $cd $43 $32
    ld hl, rStatePhase_Current                    ; $2aac: $21 $35 $d6
    inc [hl]                                      ; $2aaf: $34
    ret                                           ; $2ab0: $c9


GS06_StatePhase_29_AdvanceOrRestart::
    call $788a                                    ; $2ab1: $cd $8a $78
    call AnimateMarioMouthDuringText              ; $2ab4: $cd $98 $30
    call AdvanceMessageScriptStream               ; $2ab7: $cd $73 $2b
    ret nz                                        ; $2aba: $c0

    ld a, $01                                     ; $2abb: $3e $01
    ld [rAdvanceOrSkipTimeoutEnabled], a          ; $2abd: $ea $35 $d8
    ld a, $ff                                     ; $2ac0: $3e $ff
    ld [rAdvanceOrSkipTimeoutCounter], a          ; $2ac2: $ea $36 $d8
    ld hl, $03ea                                  ; $2ac5: $21 $ea $03
    call GS06_WaitForAdvanceOrSkip_PollLoop       ; $2ac8: $cd $c0 $2f
    ld a, [rInputButtonsHeld]                     ; $2acb: $fa $1a $c3
    push af                                       ; $2ace: $f5
    call ClearShadowOAMBuffer                     ; $2acf: $cd $b3 $05
    call GS06_CopyRedrawSourceToProgressionBuffer ; $2ad2: $cd $33 $30
    call GS06_RedrawGameBoard                     ; $2ad5: $cd $19 $31
    call LoadPuzzleDataBuffer                     ; $2ad8: $cd $ee $07
    pop af                                        ; $2adb: $f1
    bit 0, a                                      ; $2adc: $cb $47
    jr z, .ResetTutorialStateAndRestart           ; $2ade: $28 $05

    ld hl, rStatePhase_Current                    ; $2ae0: $21 $35 $d6
    inc [hl]                                      ; $2ae3: $34
    ret                                           ; $2ae4: $c9


.ResetTutorialStateAndRestart:
    xor a                                         ; $2ae5: $af
    ld [rPuzzleCursorColumn], a                   ; $2ae6: $ea $36 $d6
    ld [rPuzzleAndMenuCursorRow], a               ; $2ae9: $ea $37 $d6
    ld [rPuzzlePostClearFlowFlag], a              ; $2aec: $ea $05 $d8
    ld [rPuzzleTimerCompletionState], a           ; $2aef: $ea $06 $d8
    ld [rPuzzleActionRepeatGuard], a              ; $2af2: $ea $0f $d8
    call GS06_ResetCellActionStepAndMarioMouthAnimationState; $2af5: $cd $43 $32
    ld a, $02                                     ; $2af8: $3e $02
    ld [rPuzzleTimerPenaltyStep], a               ; $2afa: $ea $11 $d8
    ld a, $02                                     ; $2afd: $3e $02
    ld [rHintCursorAnimationColumnThreshold], a   ; $2aff: $ea $12 $d8
    ld [rHintCursorAnimationRowThreshold], a      ; $2b02: $ea $13 $d8
    ld a, $05                                     ; $2b05: $3e $05
    ld [rCountdownSfxTimer], a                    ; $2b07: $ea $2a $d8
    ld a, [rMessageScriptStreamResetEntryLow]     ; $2b0a: $fa $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $2b0d: $ea $2b $d8
    ld a, [rMessageScriptStreamResetEntryHigh]    ; $2b10: $fa $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $2b13: $ea $2c $d8
    ld a, $30                                     ; $2b16: $3e $30
    ld [rMessageScriptStreamPointerLow], a        ; $2b18: $ea $2d $d8
    ld a, $6a                                     ; $2b1b: $3e $6a
    ld [rMessageScriptStreamPointerHigh], a       ; $2b1d: $ea $2e $d8
    call $7b5d                                    ; $2b20: $cd $5d $7b
    ld a, $01                                     ; $2b23: $3e $01
    ld [rStatePhase_Current], a                   ; $2b25: $ea $35 $d6
    ret                                           ; $2b28: $c9


GS06_StatePhase_2a_CancelAndReturnToMenu::
    ld bc, $003c                                  ; $2b29: $01 $3c $00
    call DelayFramesByBC                          ; $2b2c: $cd $f7 $05
    ld a, $05                                     ; $2b2f: $3e $05
    call CallSoundCommandDispatcher               ; $2b31: $cd $b3 $03
    ld c, $00                                     ; $2b34: $0e $00
    ld a, $01                                     ; $2b36: $3e $01
    call CallSoundCommandDispatcher               ; $2b38: $cd $b3 $03
    call WaitForScanline40OrDelay                 ; $2b3b: $cd $96 $03
    ld c, $00                                     ; $2b3e: $0e $00
    ld a, $01                                     ; $2b40: $3e $01
    call CallSoundCommandDispatcher               ; $2b42: $cd $b3 $03
    ld b, $03                                     ; $2b45: $06 $03
    ld hl, $46ab                                  ; $2b47: $21 $ab $46
    ld c, $01                                     ; $2b4a: $0e $01
    ld de, $0023                                  ; $2b4c: $11 $23 $00
    call PlayScreenTransitionFadeOut              ; $2b4f: $cd $4b $04
    call DisableLCDAtVBlank                       ; $2b52: $cd $80 $04
    ld hl, rLCDCInterruptControlFlags             ; $2b55: $21 $37 $c3
    res 6, [hl]                                   ; $2b58: $cb $b6
    ld hl, rIE                                    ; $2b5a: $21 $ff $ff
    res 1, [hl]                                   ; $2b5d: $cb $8e
    xor a                                         ; $2b5f: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $2b60: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $2b63: $ea $3c $c3
    ld [rUseLCDCInterruptForSoundEngineUpdateFlag], a; $2b66: $ea $50 $c3
    xor a                                         ; $2b69: $af
    ld [rStatePhase_Current], a                   ; $2b6a: $ea $35 $d6
    ld a, $02                                     ; $2b6d: $3e $02
    ld [rGameState_Current], a                    ; $2b6f: $ea $34 $d6
    ret                                           ; $2b72: $c9


AdvanceMessageScriptStream::
    ld a, [rActiveROMBank]                        ; $2b73: $fa $12 $c3
    push af                                       ; $2b76: $f5
    ld a, $05                                     ; $2b77: $3e $05
    ld [rActiveROMBank], a                        ; $2b79: $ea $12 $c3
    ld [rROMB], a                                 ; $2b7c: $ea $00 $20
    call AdvanceMessageScriptStreamHelper         ; $2b7f: $cd $8d $2b
    pop bc                                        ; $2b82: $c1
    push af                                       ; $2b83: $f5
    ld a, b                                       ; $2b84: $78
    ld [rActiveROMBank], a                        ; $2b85: $ea $12 $c3
    ld [rROMB], a                                 ; $2b88: $ea $00 $20
    pop af                                        ; $2b8b: $f1
    ret                                           ; $2b8c: $c9


AdvanceMessageScriptStreamHelper::
    ld a, [rMessageScriptStreamPointerLow]        ; $2b8d: $fa $2d $d8
    ld l, a                                       ; $2b90: $6f
    ld a, [rMessageScriptStreamPointerHigh]       ; $2b91: $fa $2e $d8
    ld h, a                                       ; $2b94: $67
    ld a, [rMessageScriptStreamEntryLow]          ; $2b95: $fa $2b $d8
    ld b, a                                       ; $2b98: $47
    ld a, [rMessageScriptStreamEntryHigh]         ; $2b99: $fa $2c $d8
    ld c, a                                       ; $2b9c: $4f
    ld a, [hl+]                                   ; $2b9d: $2a
    ld e, a                                       ; $2b9e: $5f
    ld a, [hl+]                                   ; $2b9f: $2a
    ld d, a                                       ; $2ba0: $57
    and e                                         ; $2ba1: $a3
    cp $ff                                        ; $2ba2: $fe $ff
    ret z                                         ; $2ba4: $c8

    push hl                                       ; $2ba5: $e5
    ld a, e                                       ; $2ba6: $7b
    cp $fe                                        ; $2ba7: $fe $fe
    jr nz, .AdvanceMessageScriptStreamEntry       ; $2ba9: $20 $05

    ld a, d                                       ; $2bab: $7a
    cp $ff                                        ; $2bac: $fe $ff
    jr z, .ResetMessageScriptStreamEntry          ; $2bae: $28 $0c

.AdvanceMessageScriptStreamEntry:
    call PrepareMessageBGTileCopySetup            ; $2bb0: $cd $d8 $2b
    ld hl, rMessageScriptStreamEntryLow           ; $2bb3: $21 $2b $d8
    add $02                                       ; $2bb6: $c6 $02
    add [hl]                                      ; $2bb8: $86
    ld [hl], a                                    ; $2bb9: $77
    jr .StoreMessageScriptStreamPointer           ; $2bba: $18 $0e

.ResetMessageScriptStreamEntry:
    ld a, [rMessageScriptStreamResetEntryLow]     ; $2bbc: $fa $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $2bbf: $ea $2b $d8
    ld a, [rMessageScriptStreamEntryHigh]         ; $2bc2: $fa $2c $d8
    add $0b                                       ; $2bc5: $c6 $0b
    ld [rMessageScriptStreamEntryHigh], a         ; $2bc7: $ea $2c $d8

.StoreMessageScriptStreamPointer:
    pop hl                                        ; $2bca: $e1
    ld a, l                                       ; $2bcb: $7d
    ld [rMessageScriptStreamPointerLow], a        ; $2bcc: $ea $2d $d8
    ld a, h                                       ; $2bcf: $7c
    ld [rMessageScriptStreamPointerHigh], a       ; $2bd0: $ea $2e $d8
    ld a, [hl+]                                   ; $2bd3: $2a
    and [hl]                                      ; $2bd4: $a6
    cp $ff                                        ; $2bd5: $fe $ff
    ret                                           ; $2bd7: $c9


PrepareMessageBGTileCopySetup::
    push de                                       ; $2bd8: $d5
    sla e                                         ; $2bd9: $cb $23
    rl d                                          ; $2bdb: $cb $12
    ld hl, MessageGlyphSourceOffsetTable          ; $2bdd: $21 $bb $2d
    add hl, de                                    ; $2be0: $19
    ld e, [hl]                                    ; $2be1: $5e
    inc hl                                        ; $2be2: $23
    ld d, [hl]                                    ; $2be3: $56
    ld hl, $4000                                  ; $2be4: $21 $00 $40
    add hl, de                                    ; $2be7: $19
    ld a, l                                       ; $2be8: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $2be9: $ea $55 $c3
    ld a, h                                       ; $2bec: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $2bed: $ea $56 $c3
    ld a, $0d                                     ; $2bf0: $3e $0d
    ld [rBGTileCopyBank], a                       ; $2bf2: $ea $57 $c3
    ld a, b                                       ; $2bf5: $78
    ld [rBGTileCopySourceX], a                    ; $2bf6: $ea $51 $c3
    pop de                                        ; $2bf9: $d1
    ld hl, MessageGlyphWidthTable                 ; $2bfa: $21 $bb $2c
    add hl, de                                    ; $2bfd: $19
    ld a, [hl]                                    ; $2bfe: $7e
    and a                                         ; $2bff: $a7
    ret z                                         ; $2c00: $c8

    push af                                       ; $2c01: $f5
    add b                                         ; $2c02: $80
    ld hl, rMessageScriptStreamLimitLow           ; $2c03: $21 $45 $d8
    cp [hl]                                       ; $2c06: $be
    jr c, .PrepareMessageBGTileCopyParams         ; $2c07: $38 $02

    pop af                                        ; $2c09: $f1
    ret                                           ; $2c0a: $c9


.PrepareMessageBGTileCopyParams:
    ld [rBGTileCopyDestX], a                      ; $2c0b: $ea $53 $c3
    ld a, c                                       ; $2c0e: $79
    ld [rBGTileCopySourceY], a                    ; $2c0f: $ea $52 $c3
    add $09                                       ; $2c12: $c6 $09
    ld hl, rMessageScriptStreamLimitHigh          ; $2c14: $21 $46 $d8
    cp [hl]                                       ; $2c17: $be
    jr c, .ApplyMessageBGTileCopyParams           ; $2c18: $38 $02

    pop af                                        ; $2c1a: $f1
    ret                                           ; $2c1b: $c9


.ApplyMessageBGTileCopyParams:
    ld [rBGTileCopyDestY], a                      ; $2c1c: $ea $54 $c3
    call PrepareBGTileCopy                        ; $2c1f: $cd $b0 $08
    pop af                                        ; $2c22: $f1
    ret                                           ; $2c23: $c9


AdvanceMessageScriptStreamHelper_NoBankSwitch::
    ld a, [rMessageScriptStreamPointerLow]        ; $2c24: $fa $2d $d8
    ld l, a                                       ; $2c27: $6f
    ld a, [rMessageScriptStreamPointerHigh]       ; $2c28: $fa $2e $d8
    ld h, a                                       ; $2c2b: $67
    ld a, [rMessageScriptStreamEntryLow]          ; $2c2c: $fa $2b $d8
    ld b, a                                       ; $2c2f: $47
    ld a, [rMessageScriptStreamEntryHigh]         ; $2c30: $fa $2c $d8
    ld c, a                                       ; $2c33: $4f
    ld a, [hl+]                                   ; $2c34: $2a
    ld e, a                                       ; $2c35: $5f
    ld a, [hl+]                                   ; $2c36: $2a
    ld d, a                                       ; $2c37: $57
    and e                                         ; $2c38: $a3
    cp $ff                                        ; $2c39: $fe $ff
    ret z                                         ; $2c3b: $c8

    push hl                                       ; $2c3c: $e5
    ld a, e                                       ; $2c3d: $7b
    cp $fe                                        ; $2c3e: $fe $fe
    jr nz, .AdvanceMessageScriptStreamEntry       ; $2c40: $20 $05

    ld a, d                                       ; $2c42: $7a
    cp $ff                                        ; $2c43: $fe $ff
    jr z, .ResetMessageScriptStreamEntry          ; $2c45: $28 $0c

.AdvanceMessageScriptStreamEntry:
    call PrepareMessageBGTileCopySetup_NoBankSwitch; $2c47: $cd $6f $2c
    ld hl, rMessageScriptStreamEntryLow           ; $2c4a: $21 $2b $d8
    add $02                                       ; $2c4d: $c6 $02
    add [hl]                                      ; $2c4f: $86
    ld [hl], a                                    ; $2c50: $77
    jr .StoreMessageScriptStreamPointer           ; $2c51: $18 $0e

.ResetMessageScriptStreamEntry:
    ld a, [rMessageScriptStreamResetEntryLow]     ; $2c53: $fa $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $2c56: $ea $2b $d8
    ld a, [rMessageScriptStreamEntryHigh]         ; $2c59: $fa $2c $d8
    add $0b                                       ; $2c5c: $c6 $0b
    ld [rMessageScriptStreamEntryHigh], a         ; $2c5e: $ea $2c $d8

.StoreMessageScriptStreamPointer:
    pop hl                                        ; $2c61: $e1
    ld a, l                                       ; $2c62: $7d
    ld [rMessageScriptStreamPointerLow], a        ; $2c63: $ea $2d $d8
    ld a, h                                       ; $2c66: $7c
    ld [rMessageScriptStreamPointerHigh], a       ; $2c67: $ea $2e $d8
    ld a, [hl+]                                   ; $2c6a: $2a
    and [hl]                                      ; $2c6b: $a6
    cp $ff                                        ; $2c6c: $fe $ff
    ret                                           ; $2c6e: $c9


PrepareMessageBGTileCopySetup_NoBankSwitch::
    push de                                       ; $2c6f: $d5
    sla e                                         ; $2c70: $cb $23
    rl d                                          ; $2c72: $cb $12
    ld hl, MessageGlyphSourceOffsetTable          ; $2c74: $21 $bb $2d
    add hl, de                                    ; $2c77: $19
    ld e, [hl]                                    ; $2c78: $5e
    inc hl                                        ; $2c79: $23
    ld d, [hl]                                    ; $2c7a: $56
    ld hl, $4000                                  ; $2c7b: $21 $00 $40
    add hl, de                                    ; $2c7e: $19
    ld a, l                                       ; $2c7f: $7d
    ld [rBGTileCopyBankAddressLow], a             ; $2c80: $ea $55 $c3
    ld a, h                                       ; $2c83: $7c
    ld [rBGTileCopyBankAddressHigh], a            ; $2c84: $ea $56 $c3
    ld a, $0d                                     ; $2c87: $3e $0d
    ld [rBGTileCopyBank], a                       ; $2c89: $ea $57 $c3
    ld a, b                                       ; $2c8c: $78
    ld [rBGTileCopySourceX], a                    ; $2c8d: $ea $51 $c3
    pop de                                        ; $2c90: $d1
    ld hl, MessageGlyphWidthTable                 ; $2c91: $21 $bb $2c
    add hl, de                                    ; $2c94: $19
    ld a, [hl]                                    ; $2c95: $7e
    and a                                         ; $2c96: $a7
    ret z                                         ; $2c97: $c8

    push af                                       ; $2c98: $f5
    add b                                         ; $2c99: $80
    ld hl, rMessageScriptStreamLimitLow           ; $2c9a: $21 $45 $d8
    cp [hl]                                       ; $2c9d: $be
    jr c, .PrepareMessageBGTileCopyParams_NoBankSwitch; $2c9e: $38 $02

    pop af                                        ; $2ca0: $f1
    ret                                           ; $2ca1: $c9


.PrepareMessageBGTileCopyParams_NoBankSwitch:
    ld [rBGTileCopyDestX], a                      ; $2ca2: $ea $53 $c3
    ld a, c                                       ; $2ca5: $79
    ld [rBGTileCopySourceY], a                    ; $2ca6: $ea $52 $c3
    add $09                                       ; $2ca9: $c6 $09
    ld hl, rMessageScriptStreamLimitHigh          ; $2cab: $21 $46 $d8
    cp [hl]                                       ; $2cae: $be
    jr c, .ApplyMessageBGTileCopyParams_NoBankSwitch; $2caf: $38 $02

    pop af                                        ; $2cb1: $f1
    ret                                           ; $2cb2: $c9


.ApplyMessageBGTileCopyParams_NoBankSwitch:
    ld [rBGTileCopyDestY], a                      ; $2cb3: $ea $54 $c3
    call PrepareBGTileCopyNoLCDCBit4Force         ; $2cb6: $cd $0a $0b
    pop af                                        ; $2cb9: $f1
    ret                                           ; $2cba: $c9


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
    db $06, $06, $06, $06, $06, $06, $06, $06
    db $06, $06, $06, $06, $06, $06, $06, $06
    db $06, $06, $06, $04, $07, $06, $06, $07
    db $06, $06, $06, $07, $06, $06, $07, $06
    db $07, $07, $07, $07, $07, $06, $05, $05
    db $05, $05, $06, $06, $05, $01, $05, $05
    db $01, $07, $05, $05, $05, $05, $05, $05
    db $05, $05, $05, $07, $06, $06, $05, $02
    db $02, $03, $05, $05, $08, $05, $05, $01
    db $06, $02, $02, $02, $02, $06, $03, $03
    db $00, $00, $00, $00, $00, $00, $00, $00
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
    ld a, $78                                     ; $2fbb: $3e $78
    ld [rAdvanceOrSkipTimeoutCounter], a          ; $2fbd: $ea $36 $d8

GS06_WaitForAdvanceOrSkip_PollLoop::
    ld a, [rAdvanceOrSkipTimeoutEnabled]          ; $2fc0: $fa $35 $d8
    and a                                         ; $2fc3: $a7
    jr z, .CheckAdvanceInputA                     ; $2fc4: $28 $08

    ld a, [rAdvanceOrSkipTimeoutCounter]          ; $2fc6: $fa $36 $d8
    dec a                                         ; $2fc9: $3d
    ld [rAdvanceOrSkipTimeoutCounter], a          ; $2fca: $ea $36 $d8
    ret z                                         ; $2fcd: $c8

.CheckAdvanceInputA:
    ld a, [rInputButtonsPressed]                  ; $2fce: $fa $1e $c3
    bit 0, a                                      ; $2fd1: $cb $47
    jr z, .CheckCancelInputStart                  ; $2fd3: $28 $08

    ld c, $03                                     ; $2fd5: $0e $03
    ld a, $02                                     ; $2fd7: $3e $02
    call CallSoundCommandDispatcher               ; $2fd9: $cd $b3 $03
    ret                                           ; $2fdc: $c9


.CheckCancelInputStart:
    ld a, [rInputButtonsPressed]                  ; $2fdd: $fa $1e $c3
    bit 3, a                                      ; $2fe0: $cb $5f
    jr z, .WaitLoopBody                           ; $2fe2: $28 $0b

    ld [rGS06_HowToPlaySkipRequestedFlag], a      ; $2fe4: $ea $37 $d8
    ld c, $04                                     ; $2fe7: $0e $04
    ld a, $02                                     ; $2fe9: $3e $02
    call CallSoundCommandDispatcher               ; $2feb: $cd $b3 $03
    ret                                           ; $2fee: $c9


.WaitLoopBody:
    push hl                                       ; $2fef: $e5
    call ClearShadowOAMBufferFromCursor           ; $2ff0: $cd $c2 $05
    rst RST_08                                    ; $2ff3: $cf
    call $788a                                    ; $2ff4: $cd $8a $78
    ld a, [rLCDCFrameTickCounter]                 ; $2ff7: $fa $3b $c3
    bit 4, a                                      ; $2ffa: $cb $67
    jr nz, .LoopCallbackReturn                    ; $2ffc: $20 $0f

    ld a, [rMessageScriptStreamEntryLow]          ; $2ffe: $fa $2b $d8
    inc a                                         ; $3001: $3c
    ld b, a                                       ; $3002: $47
    ld a, [rMessageScriptStreamEntryHigh]         ; $3003: $fa $2c $d8
    inc a                                         ; $3006: $3c
    ld c, a                                       ; $3007: $4f
    ld a, $37                                     ; $3008: $3e $37
    call CopyOAMSpriteById                        ; $300a: $cd $cb $20

.LoopCallbackReturn:
    pop hl                                        ; $300d: $e1
    push hl                                       ; $300e: $e5
    ld bc, $3014                                  ; $300f: $01 $14 $30
    push bc                                       ; $3012: $c5
    jp hl                                         ; $3013: $e9


    pop hl                                        ; $3014: $e1
    jr GS06_WaitForAdvanceOrSkip_PollLoop         ; $3015: $18 $a9

GS06_ShowMessageArrowAndTickTransitionTimer::
    ld a, [rLCDCFrameTickCounter]                 ; $3017: $fa $3b $c3
    bit 4, a                                      ; $301a: $cb $67
    jr nz, .TickTransitionTimer                   ; $301c: $20 $10

    ld a, [rMessageScriptStreamEntryLow]          ; $301e: $fa $2b $d8
    sub $03                                       ; $3021: $d6 $03
    ld b, a                                       ; $3023: $47
    ld a, [rMessageScriptStreamEntryHigh]         ; $3024: $fa $2c $d8
    inc a                                         ; $3027: $3c
    ld c, a                                       ; $3028: $4f
    ld a, $38                                     ; $3029: $3e $38
    call CopyOAMSpriteById                        ; $302b: $cd $cb $20

.TickTransitionTimer:
    ld hl, rStatePhaseTimer                       ; $302e: $21 $3c $d6
    dec [hl]                                      ; $3031: $35
    ret                                           ; $3032: $c9


GS06_CopyRedrawSourceToProgressionBuffer::
    ld bc, $0d58                                  ; $3033: $01 $58 $0d
    ld de, $8507                                  ; $3036: $11 $07 $85
    call GS06_PrepareRedrawSourceCopy             ; $3039: $cd $76 $30
    ld bc, $0d60                                  ; $303c: $01 $60 $0d
    ld de, $8507                                  ; $303f: $11 $07 $85
    call GS06_PrepareRedrawSourceCopy             ; $3042: $cd $76 $30
    ld bc, $0d68                                  ; $3045: $01 $68 $0d
    ld de, $8507                                  ; $3048: $11 $07 $85
    call GS06_PrepareRedrawSourceCopy             ; $304b: $cd $76 $30
    ld bc, $0d70                                  ; $304e: $01 $70 $0d
    ld de, $8507                                  ; $3051: $11 $07 $85
    call GS06_PrepareRedrawSourceCopy             ; $3054: $cd $76 $30
    ld bc, $0d78                                  ; $3057: $01 $78 $0d
    ld de, $8507                                  ; $305a: $11 $07 $85
    call GS06_PrepareRedrawSourceCopy             ; $305d: $cd $76 $30
    ld bc, $0d80                                  ; $3060: $01 $80 $0d
    ld de, $8504                                  ; $3063: $11 $04 $85
    call GS06_PrepareRedrawSourceCopy             ; $3066: $cd $76 $30
    ld a, [rMessageScriptStreamResetEntryLow]     ; $3069: $fa $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $306c: $ea $2b $d8
    ld a, [rMessageScriptStreamResetEntryHigh]    ; $306f: $fa $44 $d8
    ld [rMessageScriptStreamEntryHigh], a         ; $3072: $ea $2c $d8
    ret                                           ; $3075: $c9


GS06_PrepareRedrawSourceCopy::
    ld a, $00                                     ; $3076: $3e $00
    ld [rBGTileCopyBankAddressLow], a             ; $3078: $ea $55 $c3
    ld a, $6c                                     ; $307b: $3e $6c
    ld [rBGTileCopyBankAddressHigh], a            ; $307d: $ea $56 $c3
    ld a, $07                                     ; $3080: $3e $07
    ld [rBGTileCopyBank], a                       ; $3082: $ea $57 $c3
    ld a, b                                       ; $3085: $78
    ld [rBGTileCopySourceX], a                    ; $3086: $ea $51 $c3
    add d                                         ; $3089: $82
    ld [rBGTileCopyDestX], a                      ; $308a: $ea $53 $c3
    ld a, c                                       ; $308d: $79
    ld [rBGTileCopySourceY], a                    ; $308e: $ea $52 $c3
    add e                                         ; $3091: $83
    ld [rBGTileCopyDestY], a                      ; $3092: $ea $54 $c3
    jp PrepareBGTileCopy                          ; $3095: $c3 $b0 $08


AnimateMarioMouthDuringText::
    ld a, [rGS06_MarioMouthAnimationCountdown]    ; $3098: $fa $1a $d8
    and a                                         ; $309b: $a7
    jr nz, .TickAndEmitMouthFrame                 ; $309c: $20 $20

    ld a, [rGS06_MarioMouthAnimationPatternCursor]; $309e: $fa $1b $d8
    ld c, a                                       ; $30a1: $4f
    ld b, $00                                     ; $30a2: $06 $00

.NextMouthPatternEntry:
    ld hl, MarioMouthAnimationPatternData         ; $30a4: $21 $ce $30
    add hl, bc                                    ; $30a7: $09
    ld a, [hl+]                                   ; $30a8: $2a
    and a                                         ; $30a9: $a7
    jr nz, .LoadMouthPatternEntry                 ; $30aa: $20 $05

    ld bc, $0000                                  ; $30ac: $01 $00 $00
    jr .NextMouthPatternEntry                     ; $30af: $18 $f3

.LoadMouthPatternEntry:
    ld [rGS06_MarioMouthAnimationCountdown], a    ; $30b1: $ea $1a $d8
    ld a, [hl]                                    ; $30b4: $7e
    ld [rGS06_MarioMouthAnimationSpriteId], a     ; $30b5: $ea $19 $d8
    inc c                                         ; $30b8: $0c
    inc c                                         ; $30b9: $0c
    ld a, c                                       ; $30ba: $79
    ld [rGS06_MarioMouthAnimationPatternCursor], a; $30bb: $ea $1b $d8

.TickAndEmitMouthFrame:
    ld hl, rGS06_MarioMouthAnimationCountdown     ; $30be: $21 $1a $d8
    dec [hl]                                      ; $30c1: $35
    ld a, [rGS06_MarioMouthAnimationSpriteId]     ; $30c2: $fa $19 $d8
    cp $ff                                        ; $30c5: $fe $ff
    ret z                                         ; $30c7: $c8

    ld bc, $1d20                                  ; $30c8: $01 $20 $1d
    jp CopyOAMSpriteById                          ; $30cb: $c3 $cb $20


MarioMouthAnimationPatternData::
    db $02, $39
    db $04, $ff
    db $03, $39
    db $03, $ff
    db $02, $39
    db $05, $ff
    db $00

GS06_TickScriptedInputSequence::
    xor a                                         ; $30db: $af
    ld [rInputButtonsHeld], a                     ; $30dc: $ea $1a $c3
    ld [rInputButtonsPressed], a                  ; $30df: $ea $1e $c3
    ld [rInputButtonsPressedOrRepeated], a        ; $30e2: $ea $22 $c3
    ld a, [rGS06_ScriptedInputSequenceDelay]      ; $30e5: $fa $30 $d8
    and a                                         ; $30e8: $a7
    jr nz, .TickDelayAndReturnBusy                ; $30e9: $20 $26

    ld a, [rGS06_ScriptedInputSequenceCursor]     ; $30eb: $fa $2f $d8
    ld c, a                                       ; $30ee: $4f
    ld b, $00                                     ; $30ef: $06 $00
    ld a, [rGS06_ScriptedInputSequenceTableLow]   ; $30f1: $fa $31 $d8
    ld l, a                                       ; $30f4: $6f
    ld a, [rGS06_ScriptedInputSequenceTableHigh]  ; $30f5: $fa $32 $d8
    ld h, a                                       ; $30f8: $67
    add hl, bc                                    ; $30f9: $09
    ld a, [hl]                                    ; $30fa: $7e
    cp $ff                                        ; $30fb: $fe $ff
    ret z                                         ; $30fd: $c8

    ld [rInputButtonsHeld], a                     ; $30fe: $ea $1a $c3
    ld [rInputButtonsPressed], a                  ; $3101: $ea $1e $c3
    ld [rInputButtonsPressedOrRepeated], a        ; $3104: $ea $22 $c3
    ld a, $07                                     ; $3107: $3e $07
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $3109: $ea $30 $d8
    ld a, c                                       ; $310c: $79
    inc a                                         ; $310d: $3c
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $310e: $ea $2f $d8

.TickDelayAndReturnBusy:
    ld hl, rGS06_ScriptedInputSequenceDelay       ; $3111: $21 $30 $d8
    dec [hl]                                      ; $3114: $35
    ld a, $ff                                     ; $3115: $3e $ff
    and a                                         ; $3117: $a7
    ret                                           ; $3118: $c9


GS06_RedrawGameBoard::
    ld a, $40                                     ; $3119: $3e $40
    ld [rBGTileCopyBankAddressLow], a             ; $311b: $ea $55 $c3
    ld a, $4c                                     ; $311e: $3e $4c
    ld [rBGTileCopyBankAddressHigh], a            ; $3120: $ea $56 $c3
    ld a, $07                                     ; $3123: $3e $07
    ld [rBGTileCopyBank], a                       ; $3125: $ea $57 $c3
    ld a, $38                                     ; $3128: $3e $38
    ld [rBGTileCopySourceX], a                    ; $312a: $ea $51 $c3
    add $1f                                       ; $312d: $c6 $1f
    ld [rBGTileCopyDestX], a                      ; $312f: $ea $53 $c3
    ld a, $30                                     ; $3132: $3e $30
    ld [rBGTileCopySourceY], a                    ; $3134: $ea $52 $c3
    add $1f                                       ; $3137: $c6 $1f
    ld [rBGTileCopyDestY], a                      ; $3139: $ea $54 $c3
    jp PrepareBGTileCopy                          ; $313c: $c3 $b0 $08


GS06_RedrawGameBoard_RestoreStateAfterGameOver::
    ld a, $00                                     ; $313f: $3e $00
    ld [rBGTileCopyBankAddressLow], a             ; $3141: $ea $55 $c3
    ld a, $68                                     ; $3144: $3e $68
    ld [rBGTileCopyBankAddressHigh], a            ; $3146: $ea $56 $c3
    ld a, $07                                     ; $3149: $3e $07
    ld [rBGTileCopyBank], a                       ; $314b: $ea $57 $c3
    ld a, $38                                     ; $314e: $3e $38
    ld [rBGTileCopySourceX], a                    ; $3150: $ea $51 $c3
    add $1f                                       ; $3153: $c6 $1f
    ld [rBGTileCopyDestX], a                      ; $3155: $ea $53 $c3
    ld a, $30                                     ; $3158: $3e $30
    ld [rBGTileCopySourceY], a                    ; $315a: $ea $52 $c3
    add $1f                                       ; $315d: $c6 $1f
    ld [rBGTileCopyDestY], a                      ; $315f: $ea $54 $c3
    jp PrepareBGTileCopy                          ; $3162: $c3 $b0 $08


GS06_DecrementPuzzleTimer::
    ld a, [rPuzzleTimerSecondOnes]                ; $3165: $fa $0b $d8
    ld hl, rPuzzleTimerSecondTens                 ; $3168: $21 $0c $d8
    or [hl]                                       ; $316b: $b6
    ld hl, rPuzzleTimerMinuteOnes                 ; $316c: $21 $09 $d8
    or [hl]                                       ; $316f: $b6
    ld hl, rPuzzleTimerMinuteTens                 ; $3170: $21 $0a $d8
    or [hl]                                       ; $3173: $b6
    ret z                                         ; $3174: $c8

    ld a, $ff                                     ; $3175: $3e $ff
    ld [rPuzzleTimerActive], a                    ; $3177: $ea $0d $d8
    ld a, [rPuzzleTimerSecondOnes]                ; $317a: $fa $0b $d8
    sub $05                                       ; $317d: $d6 $05
    jr nc, .DecrementPuzzleTimerSecondOnes        ; $317f: $30 $02

    add $0a                                       ; $3181: $c6 $0a

.DecrementPuzzleTimerSecondOnes:
    ld [rPuzzleTimerSecondOnes], a                ; $3183: $ea $0b $d8
    push af                                       ; $3186: $f5
    ld bc, $2b27                                  ; $3187: $01 $27 $2b
    call $7b9b                                    ; $318a: $cd $9b $7b
    pop af                                        ; $318d: $f1
    ld a, [rPuzzleTimerSecondTens]                ; $318e: $fa $0c $d8
    sbc $01                                       ; $3191: $de $01
    jr nc, .DecrementPuzzleTimerSecondTens        ; $3193: $30 $02

    add $06                                       ; $3195: $c6 $06

.DecrementPuzzleTimerSecondTens:
    ld [rPuzzleTimerSecondTens], a                ; $3197: $ea $0c $d8
    push af                                       ; $319a: $f5
    ld bc, $2327                                  ; $319b: $01 $27 $23
    call $7b9b                                    ; $319e: $cd $9b $7b
    pop af                                        ; $31a1: $f1
    ret nc                                        ; $31a2: $d0

    ld a, [rPuzzleTimerMinuteOnes]                ; $31a3: $fa $09 $d8
    dec a                                         ; $31a6: $3d
    cp $ff                                        ; $31a7: $fe $ff
    jr nz, .DecrementPuzzleTimerMinuteOnes        ; $31a9: $20 $02

    ld a, $09                                     ; $31ab: $3e $09

.DecrementPuzzleTimerMinuteOnes:
    ld [rPuzzleTimerMinuteOnes], a                ; $31ad: $ea $09 $d8
    push af                                       ; $31b0: $f5
    ld bc, $1527                                  ; $31b1: $01 $27 $15
    call $7b9b                                    ; $31b4: $cd $9b $7b
    pop af                                        ; $31b7: $f1
    ret nz                                        ; $31b8: $c0

    ld a, [rPuzzleTimerMinuteTens]                ; $31b9: $fa $0a $d8
    dec a                                         ; $31bc: $3d
    cp $ff                                        ; $31bd: $fe $ff
    jr nz, .DecrementPuzzleTimerMinuteTens        ; $31bf: $20 $02

    ld a, $09                                     ; $31c1: $3e $09

.DecrementPuzzleTimerMinuteTens:
    ld [rPuzzleTimerMinuteTens], a                ; $31c3: $ea $0a $d8
    push af                                       ; $31c6: $f5
    ld bc, $0d27                                  ; $31c7: $01 $27 $0d
    call $7b9b                                    ; $31ca: $cd $9b $7b
    pop af                                        ; $31cd: $f1
    ret                                           ; $31ce: $c9


AdvanceHintCursorAnimation::
    ld a, [rLCDCFrameTickCounter]                 ; $31cf: $fa $3b $c3
    push af                                       ; $31d2: $f5
    ld hl, rSharedAnimationFrameState             ; $31d3: $21 $3d $d6
    sub [hl]                                      ; $31d6: $96
    push af                                       ; $31d7: $f5
    ld hl, rSharedUIAnimationColumnAccumulator    ; $31d8: $21 $3e $d6
    add [hl]                                      ; $31db: $86
    ld [hl], a                                    ; $31dc: $77
    pop af                                        ; $31dd: $f1
    ld hl, rHintCursorAnimationRowAccumulator     ; $31de: $21 $3f $d6
    add [hl]                                      ; $31e1: $86
    ld [hl], a                                    ; $31e2: $77
    pop af                                        ; $31e3: $f1
    ld [rSharedAnimationFrameState], a            ; $31e4: $ea $3d $d6
    ld a, [rHintCursorAnimationColumnThreshold]   ; $31e7: $fa $12 $d8
    cp $3f                                        ; $31ea: $fe $3f
    jr nc, .AdvanceHintCursorRow                  ; $31ec: $30 $25

    ld c, a                                       ; $31ee: $4f
    ld a, [rSharedUIAnimationColumnAccumulator]   ; $31ef: $fa $3e $d6
    cp c                                          ; $31f2: $b9
    jr c, .AdvanceHintCursorRow                   ; $31f3: $38 $1e

    xor a                                         ; $31f5: $af
    ld [rSharedUIAnimationColumnAccumulator], a   ; $31f6: $ea $3e $d6
    ld a, c                                       ; $31f9: $79
    cp $02                                        ; $31fa: $fe $02
    jr z, .AdvanceHintCursorColumn                ; $31fc: $28 $06

    scf                                           ; $31fe: $37
    ld hl, rHintCursorAnimationColumnThreshold    ; $31ff: $21 $12 $d8
    rl [hl]                                       ; $3202: $cb $16

.AdvanceHintCursorColumn:
    ld a, [rPuzzleCursorColumn]                   ; $3204: $fa $36 $d6
    inc a                                         ; $3207: $3c
    cp $05                                        ; $3208: $fe $05
    jr nz, .HintCursorColumnNoWrap                ; $320a: $20 $01

    xor a                                         ; $320c: $af

.HintCursorColumnNoWrap:
    ld [rPuzzleCursorColumn], a                   ; $320d: $ea $36 $d6
    call $6b9e                                    ; $3210: $cd $9e $6b

.AdvanceHintCursorRow:
    ld a, [rHintCursorAnimationRowThreshold]      ; $3213: $fa $13 $d8
    cp $3f                                        ; $3216: $fe $3f
    jr nc, .FinalizeHintCursorAnimation           ; $3218: $30 $25

    ld c, a                                       ; $321a: $4f
    ld a, [rHintCursorAnimationRowAccumulator]    ; $321b: $fa $3f $d6
    cp c                                          ; $321e: $b9
    jr c, .FinalizeHintCursorAnimation            ; $321f: $38 $1e

    xor a                                         ; $3221: $af
    ld [rHintCursorAnimationRowAccumulator], a    ; $3222: $ea $3f $d6
    ld a, c                                       ; $3225: $79
    cp $02                                        ; $3226: $fe $02
    jr z, .HintCursorRowNoWrap                    ; $3228: $28 $06

    scf                                           ; $322a: $37
    ld hl, rHintCursorAnimationRowThreshold       ; $322b: $21 $13 $d8
    rl [hl]                                       ; $322e: $cb $16

.HintCursorRowNoWrap:
    ld a, [rPuzzleAndMenuCursorRow]               ; $3230: $fa $37 $d6
    inc a                                         ; $3233: $3c
    cp $05                                        ; $3234: $fe $05
    jr nz, .AdvanceHintCursorAnimationComplete    ; $3236: $20 $01

    xor a                                         ; $3238: $af

.AdvanceHintCursorAnimationComplete:
    ld [rPuzzleAndMenuCursorRow], a               ; $3239: $ea $37 $d6
    call $6b9e                                    ; $323c: $cd $9e $6b

.FinalizeHintCursorAnimation:
    call $70f7                                    ; $323f: $cd $f7 $70
    ret                                           ; $3242: $c9


GS06_ResetCellActionStepAndMarioMouthAnimationState::
    xor a                                         ; $3243: $af
    ld [rGS06_MarioMouthAnimationPatternCursor], a; $3244: $ea $1b $d8
    ld [rGS06_MarioMouthAnimationCountdown], a    ; $3247: $ea $1a $d8
    ld [rCellActionStepDelayTimer], a             ; $324a: $ea $1f $d8
    ld [rCellActionStepSequenceCursor], a         ; $324d: $ea $20 $d8
    ld [rCellActionStepSequenceState], a          ; $3250: $ea $21 $d8
    ret                                           ; $3253: $c9


    ; padding
    ds $5ac, $00

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
