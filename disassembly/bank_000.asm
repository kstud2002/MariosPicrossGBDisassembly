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
    jr nz, jr_000_0161                            ; $015b: $20 $04

    set 7, a                                      ; $015d: $cb $ff
    ldh [rLCDC], a                                ; $015f: $e0 $40

jr_000_0161:
    ld bc, $0002                                  ; $0161: $01 $02 $00
    call BusyWaitDelayByBC                        ; $0164: $cd $03 $06

jr_000_0167:
    ldh a, [rLY]                                  ; $0167: $f0 $44
    cp $91                                        ; $0169: $fe $91
    jr c, jr_000_0167                             ; $016b: $38 $fa

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
    ld [ROMBankSwitchTrigger], a                  ; $0188: $ea $00 $20
    ld a, $00                                     ; $018b: $3e $00
    ld [$4000], a                                 ; $018d: $ea $00 $40
    ld a, $01                                     ; $0190: $3e $01
    ld [rActiveROMBank], a                        ; $0192: $ea $12 $c3
    ld hl, $c000                                  ; $0195: $21 $00 $c0
    ld bc, $1fff                                  ; $0198: $01 $ff $1f
    call ZeroMemoryBlock                          ; $019b: $cd $d3 $04
    ld sp, $dfff                                  ; $019e: $31 $ff $df
    call Call_000_04bb                            ; $01a1: $cd $bb $04
    call ClearShadowOAMBuffer                     ; $01a4: $cd $b6 $05
    call FillBGMap0WithTile01                     ; $01a7: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $01aa: $cd $ab $05
    xor a                                         ; $01ad: $af
    ld [$c315], a                                 ; $01ae: $ea $15 $c3
    ld [$c316], a                                 ; $01b1: $ea $16 $c3
    ld [$c317], a                                 ; $01b4: $ea $17 $c3
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
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $01d0: $ea $50 $c3
    ld a, $01                                     ; $01d3: $3e $01
    ldh [rIE], a                                  ; $01d5: $e0 $ff
    ldh [rIE], a                                  ; $01d7: $e0 $ff
    ei                                            ; $01d9: $fb
    call Call_000_1e43                            ; $01da: $cd $43 $1e
    rl a                                          ; $01dd: $cb $17
    and $01                                       ; $01df: $e6 $01
    ld [rBootVariantFlag_Unsure], a               ; $01e1: $ea $3d $c3
    jr z, jr_000_01e9                             ; $01e4: $28 $03

    call Call_000_1efd                            ; $01e6: $cd $fd $1e

jr_000_01e9:
    xor a                                         ; $01e9: $af
    ld [$c33e], a                                 ; $01ea: $ea $3e $c3
    ld a, $00                                     ; $01ed: $3e $00
    call CallSoundEffectDispatcher                ; $01ef: $cd $b6 $03
    ld a, $40                                     ; $01f2: $3e $40
    ld [$cd69], a                                 ; $01f4: $ea $69 $cd
    call Call_000_0631                            ; $01f7: $cd $31 $06
    call Call_000_1ada                            ; $01fa: $cd $da $1a
    ld hl, $1c05                                  ; $01fd: $21 $05 $1c
    ld de, $a069                                  ; $0200: $11 $69 $a0
    ld bc, $000f                                  ; $0203: $01 $0f $00
    call Call_000_04db                            ; $0206: $cd $db $04
    call Call_000_1b1f                            ; $0209: $cd $1f $1b
    ld a, $02                                     ; $020c: $3e $02
    ld hl, $45ee                                  ; $020e: $21 $ee $45
    call Call_000_05d7                            ; $0211: $cd $d7 $05
    ld sp, $fffe                                  ; $0214: $31 $fe $ff
    ld bc, $003c                                  ; $0217: $01 $3c $00
    call BusyWaitDelayByBC                        ; $021a: $cd $03 $06
    ld a, $05                                     ; $021d: $3e $05
    call CallSoundEffectDispatcher                ; $021f: $cd $b6 $03
    ld c, $00                                     ; $0222: $0e $00
    ld a, $01                                     ; $0224: $3e $01
    call CallSoundEffectDispatcher                ; $0226: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $0229: $cd $99 $03
    ld c, $00                                     ; $022c: $0e $00
    ld a, $01                                     ; $022e: $3e $01
    call CallSoundEffectDispatcher                ; $0230: $cd $b6 $03
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
    ld [ROMBankSwitchTrigger], a                  ; $0254: $ea $00 $20
    ld a, $00                                     ; $0257: $3e $00
    ld [$4000], a                                 ; $0259: $ea $00 $40
    ld a, $01                                     ; $025c: $3e $01
    ld [rActiveROMBank], a                        ; $025e: $ea $12 $c3
    ld sp, $dfff                                  ; $0261: $31 $ff $df
    call Call_000_04bb                            ; $0264: $cd $bb $04
    call ClearShadowOAMBuffer                     ; $0267: $cd $b6 $05
    call FillBGMap0WithTile01                     ; $026a: $cd $a0 $05
    call FillBGMap1WithTile01                     ; $026d: $cd $ab $05
    xor a                                         ; $0270: $af
    ld [$c315], a                                 ; $0271: $ea $15 $c3
    ld [$c316], a                                 ; $0274: $ea $16 $c3
    ld [$c317], a                                 ; $0277: $ea $17 $c3
    ld [rLCDCInterruptDispatchIndex], a           ; $027a: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $027d: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $0280: $ea $50 $c3
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
    ld [$c33e], a                                 ; $029e: $ea $3e $c3
    ld a, $00                                     ; $02a1: $3e $00
    call CallSoundEffectDispatcher                ; $02a3: $cd $b6 $03
    ld a, $40                                     ; $02a6: $3e $40
    ld [$cd69], a                                 ; $02a8: $ea $69 $cd
    call Call_000_0631                            ; $02ab: $cd $31 $06
    call Call_000_1ada                            ; $02ae: $cd $da $1a
    ld a, $02                                     ; $02b1: $3e $02
    ld hl, $45ee                                  ; $02b3: $21 $ee $45
    call Call_000_05d7                            ; $02b6: $cd $d7 $05

VBlankInterruptHandler::
    push af                                       ; $02b9: $f5
    push bc                                       ; $02ba: $c5
    push de                                       ; $02bb: $d5
    push hl                                       ; $02bc: $e5
    call $ff80                                    ; $02bd: $cd $80 $ff
    call Call_000_0767                            ; $02c0: $cd $67 $07
    ldh a, [rLY]                                  ; $02c3: $f0 $44
    ld a, [rVBlankLCDCBit4ForceFlag]              ; $02c5: $fa $3c $c3
    and a                                         ; $02c8: $a7
    jr nz, jr_000_02d2                            ; $02c9: $20 $07

    ld a, [rLCDCShadow]                           ; $02cb: $fa $2e $c3
    ldh [rLCDC], a                                ; $02ce: $e0 $40
    jr jr_000_02d9                                ; $02d0: $18 $07

jr_000_02d2:
    ld a, [rLCDCShadow]                           ; $02d2: $fa $2e $c3
    set 4, a                                      ; $02d5: $cb $e7
    ldh [rLCDC], a                                ; $02d7: $e0 $40

jr_000_02d9:
    ld a, [$c33e]                                 ; $02d9: $fa $3e $c3
    and a                                         ; $02dc: $a7
    jr nz, jr_000_0300                            ; $02dd: $20 $21

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
    call Call_000_06ce                            ; $02fd: $cd $ce $06

jr_000_0300:
    ld a, [rInputButtonsHeld]                     ; $0300: $fa $1a $c3
    cp $0f                                        ; $0303: $fe $0f
    jr nz, jr_000_0313                            ; $0305: $20 $0c

    ld a, [rInputButtonsPressed]                  ; $0307: $fa $1e $c3
    and $0f                                       ; $030a: $e6 $0f
    jr z, jr_000_0313                             ; $030c: $28 $05

    ld hl, $0214                                  ; $030e: $21 $14 $02
    push hl                                       ; $0311: $e5
    reti                                          ; $0312: $d9


jr_000_0313:
    ld a, [rVBlankSoundEngineUpdateEnabled_Unsure]; $0313: $fa $50 $c3
    and a                                         ; $0316: $a7
    jr nz, jr_000_0322                            ; $0317: $20 $09

    ld a, [$c33e]                                 ; $0319: $fa $3e $c3
    and a                                         ; $031c: $a7
    jr nz, jr_000_0322                            ; $031d: $20 $03

    call CallSoundEngineUpdateRoutine_Unsure_PreserveRegisters; $031f: $cd $ee $03

jr_000_0322:
    ld a, [$c33a]                                 ; $0322: $fa $3a $c3
    inc a                                         ; $0325: $3c
    ld [$c33a], a                                 ; $0326: $ea $3a $c3
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


HiddenProgrammerCredits::
    db "NoriakiTeramotoE"

TODO::
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
    ld [ROMBankSwitchTrigger], a                  ; $0387: $ea $00 $20
    ld l, e                                       ; $038a: $6b
    ld h, d                                       ; $038b: $62
    ld de, $0391                                  ; $038c: $11 $91 $03
    push de                                       ; $038f: $d5
    jp hl                                         ; $0390: $e9


    pop af                                        ; $0391: $f1
    ld [rActiveROMBank], a                        ; $0392: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $0395: $ea $00 $20
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


CallSoundEffectDispatcher::
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
    ld [ROMBankSwitchTrigger], a                  ; $03cb: $ea $00 $20

jr_000_03ce:
    push bc                                       ; $03ce: $c5
    push hl                                       ; $03cf: $e5
    ld a, l                                       ; $03d0: $7d
    call $4000                                    ; $03d1: $cd $00 $40
    pop hl                                        ; $03d4: $e1
    pop bc                                        ; $03d5: $c1
    jr nc, jr_000_03df                            ; $03d6: $30 $07

    nop                                           ; $03d8: $00
    nop                                           ; $03d9: $00
    nop                                           ; $03da: $00
    nop                                           ; $03db: $00
    nop                                           ; $03dc: $00
    jr jr_000_03ce                                ; $03dd: $18 $ef

jr_000_03df:
    pop af                                        ; $03df: $f1
    ld [rActiveROMBank], a                        ; $03e0: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $03e3: $ea $00 $20
    pop af                                        ; $03e6: $f1
    ldh [rIE], a                                  ; $03e7: $e0 $ff
    pop hl                                        ; $03e9: $e1
    pop de                                        ; $03ea: $d1
    pop bc                                        ; $03eb: $c1
    pop af                                        ; $03ec: $f1
    ret                                           ; $03ed: $c9


CallSoundEngineUpdateRoutine_Unsure_PreserveRegisters::
    push af                                       ; $03ee: $f5
    push bc                                       ; $03ef: $c5
    push de                                       ; $03f0: $d5
    push hl                                       ; $03f1: $e5

CallSoundEngineUpdateRoutine_Unsure::
    ld a, [rActiveROMBank]                        ; $03f2: $fa $12 $c3
    push af                                       ; $03f5: $f5
    ld a, $0f                                     ; $03f6: $3e $0f
    ld [rActiveROMBank], a                        ; $03f8: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $03fb: $ea $00 $20
    call $4003                                    ; $03fe: $cd $03 $40
    pop af                                        ; $0401: $f1
    ld [rActiveROMBank], a                        ; $0402: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $0405: $ea $00 $20
    pop hl                                        ; $0408: $e1
    pop de                                        ; $0409: $d1
    pop bc                                        ; $040a: $c1
    pop af                                        ; $040b: $f1
    ret                                           ; $040c: $c9


PlayScreenTransitionFadeIn::
    ld a, [rBootVariantFlag_Unsure]               ; $040d: $fa $3d $c3
    and a                                         ; $0410: $a7
    jp nz, PlayScreenTransitionFadeIn_AlternatePath; $0411: $c2 $c8 $1f

    ld a, [rActiveROMBank]                        ; $0414: $fa $12 $c3
    push af                                       ; $0417: $f5
    ld a, b                                       ; $0418: $78
    ld [rActiveROMBank], a                        ; $0419: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $041c: $ea $00 $20
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
    ld [rHintCursorAnimationLastFrameTick], a     ; $043d: $ea $3d $d6
    ld [rHintCursorAnimationColumnAccumulator], a ; $0440: $ea $3e $d6
    ld [rHintCursorAnimationRowAccumulator], a    ; $0443: $ea $3f $d6
    pop af                                        ; $0446: $f1
    ld [rActiveROMBank], a                        ; $0447: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $044a: $ea $00 $20
    ret                                           ; $044d: $c9


PlayScreenTransitionFadeOut::
    ld a, [rBootVariantFlag_Unsure]               ; $044e: $fa $3d $c3
    and a                                         ; $0451: $a7
    jp nz, PlayScreenTransitionFadeOut_AlternatePath; $0452: $c2 $4a $20

    ld a, [rActiveROMBank]                        ; $0455: $fa $12 $c3
    push af                                       ; $0458: $f5
    ld a, b                                       ; $0459: $78
    ld [rActiveROMBank], a                        ; $045a: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $045d: $ea $00 $20
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
    ld [ROMBankSwitchTrigger], a                  ; $047f: $ea $00 $20
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


Call_000_04bb:
    ld c, $80                                     ; $04bb: $0e $80
    ld b, $0a                                     ; $04bd: $06 $0a
    ld hl, $04c9                                  ; $04bf: $21 $c9 $04

jr_000_04c2:
    ld a, [hl+]                                   ; $04c2: $2a
    ldh [c], a                                    ; $04c3: $e2

Call_000_04c4:
    inc c                                         ; $04c4: $0c
    dec b                                         ; $04c5: $05
    jr nz, jr_000_04c2                            ; $04c6: $20 $fa

    ret                                           ; $04c8: $c9


    ld a, $c0                                     ; $04c9: $3e $c0
    ldh [rDMA], a                                 ; $04cb: $e0 $46
    ld a, $28                                     ; $04cd: $3e $28

jr_000_04cf:
    dec a                                         ; $04cf: $3d
    jr nz, jr_000_04cf                            ; $04d0: $20 $fd

    ret                                           ; $04d2: $c9


ZeroMemoryBlock::
    xor a                                         ; $04d3: $af
    ld [hl+], a                                   ; $04d4: $22
    dec bc                                        ; $04d5: $0b
    ld a, c                                       ; $04d6: $79
    or b                                          ; $04d7: $b0
    jr nz, ZeroMemoryBlock                        ; $04d8: $20 $f9

    ret                                           ; $04da: $c9


Call_000_04db:
jr_000_04db:
    ld a, [hl+]                                   ; $04db: $2a
    ld [de], a                                    ; $04dc: $12
    inc de                                        ; $04dd: $13
    dec bc                                        ; $04de: $0b
    ld a, c                                       ; $04df: $79
    or b                                          ; $04e0: $b0
    jr nz, jr_000_04db                            ; $04e1: $20 $f8

    ret                                           ; $04e3: $c9


BankedTileCopy::
    ld [rRequestedROMBank], a                     ; $04e4: $ea $14 $c3
    ld a, [rActiveROMBank]                        ; $04e7: $fa $12 $c3
    push af                                       ; $04ea: $f5
    ld a, [rRequestedROMBank]                     ; $04eb: $fa $14 $c3
    ld [rActiveROMBank], a                        ; $04ee: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $04f1: $ea $00 $20

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
    ld [ROMBankSwitchTrigger], a                  ; $0500: $ea $00 $20
    ret                                           ; $0503: $c9


BankedTransparentTileCopy::
    ld [rRequestedROMBank], a                     ; $0504: $ea $14 $c3
    ld a, [rActiveROMBank]                        ; $0507: $fa $12 $c3
    push af                                       ; $050a: $f5
    ld a, [rRequestedROMBank]                     ; $050b: $fa $14 $c3
    ld [rActiveROMBank], a                        ; $050e: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $0511: $ea $00 $20
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
    ld [ROMBankSwitchTrigger], a                  ; $0534: $ea $00 $20
    ret                                           ; $0537: $c9


BankedTileCopyVRAMSafe::
    ld [rRequestedROMBank], a                     ; $0538: $ea $14 $c3
    ld a, [rActiveROMBank]                        ; $053b: $fa $12 $c3
    push af                                       ; $053e: $f5
    ld a, [rRequestedROMBank]                     ; $053f: $fa $14 $c3
    ld [rActiveROMBank], a                        ; $0542: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $0545: $ea $00 $20
    ldh a, [rIE]                                  ; $0548: $f0 $ff
    push af                                       ; $054a: $f5

jr_000_054b:
    ldh a, [rLY]                                  ; $054b: $f0 $44
    cp $80                                        ; $054d: $fe $80
    jr nc, jr_000_054b                            ; $054f: $30 $fa

    ldh a, [rIE]                                  ; $0551: $f0 $ff
    res 0, a                                      ; $0553: $cb $87
    ldh [rIE], a                                  ; $0555: $e0 $ff

jr_000_0557:
    ldh a, [rLY]                                  ; $0557: $f0 $44
    cp $90                                        ; $0559: $fe $90
    jr c, jr_000_0557                             ; $055b: $38 $fa

    ld a, [rLCDCShadow]                           ; $055d: $fa $2e $c3
    set 4, a                                      ; $0560: $cb $e7
    ldh [rLCDC], a                                ; $0562: $e0 $40
    ld a, $20                                     ; $0564: $3e $20

jr_000_0566:
    push af                                       ; $0566: $f5
    ld a, [hl+]                                   ; $0567: $2a
    ld [de], a                                    ; $0568: $12
    inc de                                        ; $0569: $13
    dec bc                                        ; $056a: $0b
    ld a, b                                       ; $056b: $78
    or c                                          ; $056c: $b1
    jr z, jr_000_057b                             ; $056d: $28 $0c

    pop af                                        ; $056f: $f1
    dec a                                         ; $0570: $3d
    jr nz, jr_000_0566                            ; $0571: $20 $f3

jr_000_0573:
    ldh a, [rLY]                                  ; $0573: $f0 $44
    cp $90                                        ; $0575: $fe $90
    jr c, jr_000_0557                             ; $0577: $38 $de

    jr jr_000_0573                                ; $0579: $18 $f8

jr_000_057b:
    pop af                                        ; $057b: $f1
    ldh a, [rLY]                                  ; $057c: $f0 $44
    cp $80                                        ; $057e: $fe $80
    jr c, jr_000_0595                             ; $0580: $38 $13

jr_000_0582:
    ldh a, [rLY]                                  ; $0582: $f0 $44
    cp $90                                        ; $0584: $fe $90
    jr c, jr_000_0582                             ; $0586: $38 $fa

    ld a, [rLCDCShadow]                           ; $0588: $fa $2e $c3
    set 4, a                                      ; $058b: $cb $e7
    ldh [rLCDC], a                                ; $058d: $e0 $40

jr_000_058f:
    ldh a, [rLY]                                  ; $058f: $f0 $44
    cp $80                                        ; $0591: $fe $80
    jr nc, jr_000_058f                            ; $0593: $30 $fa

jr_000_0595:
    pop af                                        ; $0595: $f1
    ldh [rIE], a                                  ; $0596: $e0 $ff
    pop af                                        ; $0598: $f1
    ld [rActiveROMBank], a                        ; $0599: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $059c: $ea $00 $20
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


Call_000_05d7:
    ld [rActiveROMBank], a                        ; $05d7: $ea $12 $c3

Jump_000_05da:
    ld [ROMBankSwitchTrigger], a                  ; $05da: $ea $00 $20
    jp hl                                         ; $05dd: $e9


SwitchBankToBAndJumpToHL::
    ld a, [rActiveROMBank]                        ; $05de: $fa $12 $c3
    push af                                       ; $05e1: $f5
    ld a, b                                       ; $05e2: $78
    ld [rActiveROMBank], a                        ; $05e3: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $05e6: $ea $00 $20
    jp hl                                         ; $05e9: $e9


Jump_000_05ea:
    push af                                       ; $05ea: $f5
    push hl                                       ; $05eb: $e5
    ld hl, sp+$05                                 ; $05ec: $f8 $05
    ld a, [hl]                                    ; $05ee: $7e
    ld [rActiveROMBank], a                        ; $05ef: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $05f2: $ea $00 $20
    pop hl                                        ; $05f5: $e1
    pop af                                        ; $05f6: $f1

Jump_000_05f7:
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


Call_000_0614:
    push hl                                       ; $0614: $e5
    ld a, [$cd6a]                                 ; $0615: $fa $6a $cd
    ld c, a                                       ; $0618: $4f
    ld b, $00                                     ; $0619: $06 $00
    inc a                                         ; $061b: $3c
    cp $37                                        ; $061c: $fe $37
    jr nz, jr_000_0627                            ; $061e: $20 $07

    call Call_000_06a7                            ; $0620: $cd $a7 $06
    xor a                                         ; $0623: $af
    ld bc, $0000                                  ; $0624: $01 $00 $00

jr_000_0627:
    ld [$cd6a], a                                 ; $0627: $ea $6a $cd
    ld hl, $cd6b                                  ; $062a: $21 $6b $cd
    add hl, bc                                    ; $062d: $09
    ld a, [hl]                                    ; $062e: $7e
    pop hl                                        ; $062f: $e1
    ret                                           ; $0630: $c9


Call_000_0631:
    ld a, [$cd69]                                 ; $0631: $fa $69 $cd
    ld d, a                                       ; $0634: $57
    ld a, [$dfff]                                 ; $0635: $fa $ff $df

jr_000_0638:
    cp d                                          ; $0638: $ba
    jr c, jr_000_063e                             ; $0639: $38 $03

    sub d                                         ; $063b: $92
    jr jr_000_0638                                ; $063c: $18 $fa

jr_000_063e:
    ld [$cd68], a                                 ; $063e: $ea $68 $cd
    ld [$cda1], a                                 ; $0641: $ea $a1 $cd
    ld e, $01                                     ; $0644: $1e $01
    ld hl, TODO_PointerOrOffsetTable              ; $0646: $21 $71 $06
    ld a, $36                                     ; $0649: $3e $36

jr_000_064b:
    push af                                       ; $064b: $f5
    ld c, [hl]                                    ; $064c: $4e
    inc hl                                        ; $064d: $23
    ld b, $00                                     ; $064e: $06 $00
    push hl                                       ; $0650: $e5
    ld hl, $cd6b                                  ; $0651: $21 $6b $cd
    add hl, bc                                    ; $0654: $09
    ld [hl], e                                    ; $0655: $73
    ld a, [$cd68]                                 ; $0656: $fa $68 $cd
    sub e                                         ; $0659: $93
    jr nc, jr_000_065d                            ; $065a: $30 $01

    add d                                         ; $065c: $82

jr_000_065d:
    ld e, a                                       ; $065d: $5f
    ld a, [hl]                                    ; $065e: $7e
    ld [$cd68], a                                 ; $065f: $ea $68 $cd
    pop hl                                        ; $0662: $e1
    pop af                                        ; $0663: $f1
    dec a                                         ; $0664: $3d
    jr nz, jr_000_064b                            ; $0665: $20 $e4

    call Call_000_06a7                            ; $0667: $cd $a7 $06
    call Call_000_06a7                            ; $066a: $cd $a7 $06
    call Call_000_06a7                            ; $066d: $cd $a7 $06
    ret                                           ; $0670: $c9


TODO_PointerOrOffsetTable::
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

Call_000_06a7:
    ld a, [$cd69]                                 ; $06a7: $fa $69 $cd
    ld d, a                                       ; $06aa: $57
    ld bc, $cd6b                                  ; $06ab: $01 $6b $cd
    ld hl, $cd8a                                  ; $06ae: $21 $8a $cd
    ld e, $18                                     ; $06b1: $1e $18

jr_000_06b3:
    ld a, [bc]                                    ; $06b3: $0a
    sub [hl]                                      ; $06b4: $96
    jr nc, jr_000_06b8                            ; $06b5: $30 $01

    add d                                         ; $06b7: $82

jr_000_06b8:
    ld [bc], a                                    ; $06b8: $02
    dec e                                         ; $06b9: $1d
    jr nz, jr_000_06b3                            ; $06ba: $20 $f7

    ld bc, $cd83                                  ; $06bc: $01 $83 $cd
    ld hl, $cd6b                                  ; $06bf: $21 $6b $cd
    ld e, $1f                                     ; $06c2: $1e $1f

jr_000_06c4:
    ld a, [bc]                                    ; $06c4: $0a
    sub [hl]                                      ; $06c5: $96
    jr nc, jr_000_06c9                            ; $06c6: $30 $01

    add d                                         ; $06c8: $82

jr_000_06c9:
    ld [bc], a                                    ; $06c9: $02
    dec e                                         ; $06ca: $1d
    jr nz, jr_000_06c4                            ; $06cb: $20 $f7

    ret                                           ; $06cd: $c9


Call_000_06ce:
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
    ld hl, $c326                                  ; $06fd: $21 $26 $c3
    xor [hl]                                      ; $0700: $ae
    ld hl, rInputButtonsHeld                      ; $0701: $21 $1a $c3
    and [hl]                                      ; $0704: $a6
    ld [rInputButtonsPressed], a                  ; $0705: $ea $1e $c3
    ld [rInputButtonsPressedOrRepeated], a        ; $0708: $ea $22 $c3
    ld a, [rInputButtonsHeld]                     ; $070b: $fa $1a $c3
    and a                                         ; $070e: $a7
    jr z, jr_000_072b                             ; $070f: $28 $1a

    ld hl, $c326                                  ; $0711: $21 $26 $c3
    cp [hl]                                       ; $0714: $be
    jr nz, jr_000_072b                            ; $0715: $20 $14

    ld hl, $c32a                                  ; $0717: $21 $2a $c3
    dec [hl]                                      ; $071a: $35
    jr nz, jr_000_0731                            ; $071b: $20 $14

    ld a, [rInputButtonsHeld]                     ; $071d: $fa $1a $c3
    ld [rInputButtonsPressedOrRepeated], a        ; $0720: $ea $22 $c3
    ld a, [$c319]                                 ; $0723: $fa $19 $c3
    ld [$c32a], a                                 ; $0726: $ea $2a $c3
    jr jr_000_0731                                ; $0729: $18 $06

jr_000_072b:
    ld a, [$c318]                                 ; $072b: $fa $18 $c3
    ld [$c32a], a                                 ; $072e: $ea $2a $c3

jr_000_0731:
    ld a, [rInputButtonsHeld]                     ; $0731: $fa $1a $c3
    ld [$c326], a                                 ; $0734: $ea $26 $c3
    ret                                           ; $0737: $c9


Call_000_0738:
Jump_000_0738:
    push af                                       ; $0738: $f5
    ld hl, $c315                                  ; $0739: $21 $15 $c3
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
    ld a, [$c315]                                 ; $074c: $fa $15 $c3
    add $04                                       ; $074f: $c6 $04
    ld [$c315], a                                 ; $0751: $ea $15 $c3
    ldh a, [rLCDC]                                ; $0754: $f0 $40
    bit 7, a                                      ; $0756: $cb $7f
    ret nz                                        ; $0758: $c0

    ldh a, [rIE]                                  ; $0759: $f0 $ff
    push af                                       ; $075b: $f5
    res 0, a                                      ; $075c: $cb $87
    ldh [rIE], a                                  ; $075e: $e0 $ff
    call Call_000_0767                            ; $0760: $cd $67 $07
    pop af                                        ; $0763: $f1
    ldh [rIE], a                                  ; $0764: $e0 $ff
    ret                                           ; $0766: $c9


Call_000_0767:
    ld a, [$c315]                                 ; $0767: $fa $15 $c3
    ld hl, $c316                                  ; $076a: $21 $16 $c3
    cp [hl]                                       ; $076d: $be
    ret z                                         ; $076e: $c8

    ld l, [hl]                                    ; $076f: $6e
    ld h, $c2                                     ; $0770: $26 $c2

jr_000_0772:
    ld a, [hl]                                    ; $0772: $7e
    and a                                         ; $0773: $a7
    jr z, jr_000_0793                             ; $0774: $28 $1d

    inc l                                         ; $0776: $2c
    ld e, [hl]                                    ; $0777: $5e
    inc l                                         ; $0778: $2c
    ld d, [hl]                                    ; $0779: $56
    inc l                                         ; $077a: $2c
    ld a, [rActiveROMBank]                        ; $077b: $fa $12 $c3
    push af                                       ; $077e: $f5
    ld a, [hl]                                    ; $077f: $7e
    ld [rActiveROMBank], a                        ; $0780: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $0783: $ea $00 $20
    inc l                                         ; $0786: $2c
    call Call_000_0798                            ; $0787: $cd $98 $07
    pop af                                        ; $078a: $f1
    ld [rActiveROMBank], a                        ; $078b: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $078e: $ea $00 $20
    jr jr_000_0772                                ; $0791: $18 $df

jr_000_0793:
    ld a, l                                       ; $0793: $7d
    ld [$c316], a                                 ; $0794: $ea $16 $c3
    ret                                           ; $0797: $c9


Call_000_0798:
    ldh a, [rIE]                                  ; $0798: $f0 $ff
    push af                                       ; $079a: $f5
    res 0, a                                      ; $079b: $cb $87
    ldh [rIE], a                                  ; $079d: $e0 $ff
    push hl                                       ; $079f: $e5

jr_000_07a0:
    ld a, [de]                                    ; $07a0: $1a
    ld h, a                                       ; $07a1: $67
    inc de                                        ; $07a2: $13
    ld a, [de]                                    ; $07a3: $1a
    ld l, a                                       ; $07a4: $6f
    inc de                                        ; $07a5: $13
    ld a, [de]                                    ; $07a6: $1a
    inc de                                        ; $07a7: $13
    bit 7, a                                      ; $07a8: $cb $7f
    jr nz, jr_000_07c6                            ; $07aa: $20 $1a

    bit 6, a                                      ; $07ac: $cb $77
    jr nz, jr_000_07bb                            ; $07ae: $20 $0b

    and $3f                                       ; $07b0: $e6 $3f
    ld b, a                                       ; $07b2: $47

jr_000_07b3:
    ld a, [de]                                    ; $07b3: $1a
    ld [hl+], a                                   ; $07b4: $22
    inc de                                        ; $07b5: $13
    dec b                                         ; $07b6: $05
    jr nz, jr_000_07b3                            ; $07b7: $20 $fa

    jr jr_000_07e8                                ; $07b9: $18 $2d

jr_000_07bb:
    and $3f                                       ; $07bb: $e6 $3f
    ld b, a                                       ; $07bd: $47
    ld a, [de]                                    ; $07be: $1a

jr_000_07bf:
    ld [hl+], a                                   ; $07bf: $22
    dec b                                         ; $07c0: $05
    jr nz, jr_000_07bf                            ; $07c1: $20 $fc

    inc de                                        ; $07c3: $13
    jr jr_000_07e8                                ; $07c4: $18 $22

jr_000_07c6:
    bit 6, a                                      ; $07c6: $cb $77
    jr nz, jr_000_07da                            ; $07c8: $20 $10

    and $3f                                       ; $07ca: $e6 $3f
    ld bc, $0020                                  ; $07cc: $01 $20 $00

jr_000_07cf:
    push af                                       ; $07cf: $f5
    ld a, [de]                                    ; $07d0: $1a
    ld [hl], a                                    ; $07d1: $77
    inc de                                        ; $07d2: $13
    add hl, bc                                    ; $07d3: $09
    pop af                                        ; $07d4: $f1
    dec a                                         ; $07d5: $3d
    jr nz, jr_000_07cf                            ; $07d6: $20 $f7

    jr jr_000_07e8                                ; $07d8: $18 $0e

jr_000_07da:
    and $3f                                       ; $07da: $e6 $3f
    ld bc, $0020                                  ; $07dc: $01 $20 $00

jr_000_07df:
    push af                                       ; $07df: $f5
    ld a, [de]                                    ; $07e0: $1a
    ld [hl], a                                    ; $07e1: $77
    add hl, bc                                    ; $07e2: $09
    pop af                                        ; $07e3: $f1
    dec a                                         ; $07e4: $3d
    jr nz, jr_000_07df                            ; $07e5: $20 $f8

    inc de                                        ; $07e7: $13

jr_000_07e8:
    ld a, [de]                                    ; $07e8: $1a

Call_000_07e9:
Jump_000_07e9:
    and a                                         ; $07e9: $a7
    jr nz, jr_000_07a0                            ; $07ea: $20 $b4

    pop hl                                        ; $07ec: $e1
    pop af                                        ; $07ed: $f1
    ldh [rIE], a                                  ; $07ee: $e0 $ff
    ret                                           ; $07f0: $c9


LoadPuzzleDataBuffer::
    ld hl, $d640                                  ; $07f1: $21 $40 $d6
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
    ld [ROMBankSwitchTrigger], a                  ; $0812: $ea $00 $20
    add hl, bc                                    ; $0815: $09
    ld e, [hl]                                    ; $0816: $5e
    inc hl                                        ; $0817: $23
    ld d, [hl]                                    ; $0818: $56
    pop af                                        ; $0819: $f1
    ld [rActiveROMBank], a                        ; $081a: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $081d: $ea $00 $20
    ld a, [rActiveROMBank]                        ; $0820: $fa $12 $c3
    push af                                       ; $0823: $f5
    ld a, $02                                     ; $0824: $3e $02
    ld [rActiveROMBank], a                        ; $0826: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $0829: $ea $00 $20
    ld b, $1e                                     ; $082c: $06 $1e
    ld hl, $d640                                  ; $082e: $21 $40 $d6

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
    ld [ROMBankSwitchTrigger], a                  ; $086b: $ea $00 $20
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
    ld a, [rVBlankSoundEngineUpdateEnabled_Unsure]; $088f: $fa $50 $c3
    and a                                         ; $0892: $a7
    ret z                                         ; $0893: $c8

    ld a, [$c33e]                                 ; $0894: $fa $3e $c3
    and a                                         ; $0897: $a7
    jr nz, .Return                                ; $0898: $20 $03

    call CallSoundEngineUpdateRoutine_Unsure_PreserveRegisters; $089a: $cd $ee $03

.Return:
    ret                                           ; $089d: $c9


LCDCInterruptDispatchRoutineAtLY2F_MaybeRunSoundEngineUpdate::
    ldh a, [rLY]                                  ; $089e: $f0 $44
    cp $2f                                        ; $08a0: $fe $2f
    jr nz, .Return                                ; $08a2: $20 $0e

    ld a, [rVBlankSoundEngineUpdateEnabled_Unsure]; $08a4: $fa $50 $c3
    and a                                         ; $08a7: $a7
    ret z                                         ; $08a8: $c8

    ld a, [$c33e]                                 ; $08a9: $fa $3e $c3
    and a                                         ; $08ac: $a7
    jr nz, .Return                                ; $08ad: $20 $03

    call CallSoundEngineUpdateRoutine_Unsure_PreserveRegisters; $08af: $cd $ee $03

.Return:
    ret                                           ; $08b2: $c9


PrepareBGTileCopy::
    ld a, [rBGTileCopySourceX]                    ; $08b3: $fa $51 $c3
    and $07                                       ; $08b6: $e6 $07
    ld c, a                                       ; $08b8: $4f
    ld b, $00                                     ; $08b9: $06 $00
    ld hl, $0d59                                  ; $08bb: $21 $59 $0d
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
    ld hl, $0d59                                  ; $0907: $21 $59 $0d
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
    ld [ROMBankSwitchTrigger], a                  ; $0929: $ea $00 $20
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

Call_000_0ae9:
Jump_000_0ae9:
    ldh [rIE], a                                  ; $0ae9: $e0 $ff
    pop af                                        ; $0aeb: $f1
    ld [rActiveROMBank], a                        ; $0aec: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $0aef: $ea $00 $20
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

Call_000_0b0d:
Jump_000_0b0d:
    ld a, [rBGTileCopySourceX]                    ; $0b0d: $fa $51 $c3
    and $07                                       ; $0b10: $e6 $07
    ld c, a                                       ; $0b12: $4f
    ld b, $00                                     ; $0b13: $06 $00
    ld hl, $0d59                                  ; $0b15: $21 $59 $0d
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
    ld hl, $0d59                                  ; $0b61: $21 $59 $0d
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
    ld [ROMBankSwitchTrigger], a                  ; $0b83: $ea $00 $20
    ld de, $c363                                  ; $0b86: $11 $63 $c3
    ld a, [rBGTileCopySourceY]                    ; $0b89: $fa $52 $c3
    ld l, a                                       ; $0b8c: $6f
    ld a, [rBGTileCopySourceX]                    ; $0b8d: $fa $51 $c3
    and $f8                                       ; $0b90: $e6 $f8
    ld h, a                                       ; $0b92: $67

Jump_000_0b93:
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
    jr nz, jr_000_0bbd                            ; $0bac: $20 $0f

    push hl                                       ; $0bae: $e5
    ld a, [rBGTileCopyValueA]                     ; $0baf: $fa $5a $c3
    ld hl, rBGTileCopyMaskHigh                    ; $0bb2: $21 $59 $c3
    and [hl]                                      ; $0bb5: $a6
    ld [rBGTileCopyMaskLow], a                    ; $0bb6: $ea $58 $c3
    pop hl                                        ; $0bb9: $e1
    jp Jump_000_0c6b                              ; $0bba: $c3 $6b $0c


jr_000_0bbd:
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

Call_000_0bee:
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
    jr z, jr_000_0c65                             ; $0bff: $28 $64

jr_000_0c01:
    push af                                       ; $0c01: $f5
    push hl                                       ; $0c02: $e5
    call ResolveTilemapTileDataAddressAndStoreToDE; $0c03: $cd $6a $0d
    ld a, $ff                                     ; $0c06: $3e $ff
    ld [de], a                                    ; $0c08: $12
    inc de                                        ; $0c09: $13
    ld a, [rBGTileCopyValueD]                     ; $0c0a: $fa $5d $c3
    and a                                         ; $0c0d: $a7
    jr z, jr_000_0c12                             ; $0c0e: $28 $02

    ld a, [bc]                                    ; $0c10: $0a
    inc bc                                        ; $0c11: $03

jr_000_0c12:
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
    jr z, jr_000_0c3c                             ; $0c2f: $28 $0b

    ld a, [bc]                                    ; $0c31: $0a
    push af                                       ; $0c32: $f5
    ld a, c                                       ; $0c33: $79
    add $0f                                       ; $0c34: $c6 $0f
    ld c, a                                       ; $0c36: $4f
    ld a, b                                       ; $0c37: $78
    adc $00                                       ; $0c38: $ce $00
    ld b, a                                       ; $0c3a: $47
    pop af                                        ; $0c3b: $f1

jr_000_0c3c:
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
    jr nz, jr_000_0c01                            ; $0c63: $20 $9c

jr_000_0c65:
    ld a, [rBGTileCopyValueA]                     ; $0c65: $fa $5a $c3
    ld [rBGTileCopyMaskLow], a                    ; $0c68: $ea $58 $c3

Jump_000_0c6b:
    call ResolveTilemapTileDataAddressAndStoreToDE; $0c6b: $cd $6a $0d
    ld a, [rBGTileCopyMaskLow]                    ; $0c6e: $fa $58 $c3
    ld [de], a                                    ; $0c71: $12
    inc de                                        ; $0c72: $13
    ld a, [rBGTileCopyValueD]                     ; $0c73: $fa $5d $c3
    and a                                         ; $0c76: $a7
    jr z, jr_000_0c7b                             ; $0c77: $28 $02

    ld a, [bc]                                    ; $0c79: $0a
    inc bc                                        ; $0c7a: $03

jr_000_0c7b:
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
    jr z, jr_000_0ca5                             ; $0c98: $28 $0b

    ld a, [bc]                                    ; $0c9a: $0a
    push af                                       ; $0c9b: $f5
    ld a, c                                       ; $0c9c: $79
    add $0f                                       ; $0c9d: $c6 $0f
    ld c, a                                       ; $0c9f: $4f
    ld a, b                                       ; $0ca0: $78
    adc $00                                       ; $0ca1: $ce $00
    ld b, a                                       ; $0ca3: $47
    pop af                                        ; $0ca4: $f1

jr_000_0ca5:
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
    jr nz, jr_000_0ccf                            ; $0cc5: $20 $08

    ld a, c                                       ; $0cc7: $79
    add $f0                                       ; $0cc8: $c6 $f0
    ld c, a                                       ; $0cca: $4f
    ld a, b                                       ; $0ccb: $78

Call_000_0ccc:
    adc $00                                       ; $0ccc: $ce $00
    ld b, a                                       ; $0cce: $47

jr_000_0ccf:
    inc l                                         ; $0ccf: $2c
    ld a, [rBGTileCopyDestY]                      ; $0cd0: $fa $54 $c3
    cp l                                          ; $0cd3: $bd
    jp nc, Jump_000_0b93                          ; $0cd4: $d2 $93 $0b

    xor a                                         ; $0cd7: $af
    ld [de], a                                    ; $0cd8: $12
    inc de                                        ; $0cd9: $13
    ld [de], a                                    ; $0cda: $12
    ldh a, [rIE]                                  ; $0cdb: $f0 $ff
    push af                                       ; $0cdd: $f5

jr_000_0cde:
    ldh a, [rLY]                                  ; $0cde: $f0 $44
    cp $80                                        ; $0ce0: $fe $80
    jr nc, jr_000_0cde                            ; $0ce2: $30 $fa

    ldh a, [rIE]                                  ; $0ce4: $f0 $ff
    res 0, a                                      ; $0ce6: $cb $87
    ldh [rIE], a                                  ; $0ce8: $e0 $ff
    ld bc, $c363                                  ; $0cea: $01 $63 $c3
    ld a, [rLCDCShadow]                           ; $0ced: $fa $2e $c3
    bit 7, a                                      ; $0cf0: $cb $7f
    jr z, jr_000_0d3f                             ; $0cf2: $28 $4b

jr_000_0cf4:
    ldh a, [rLY]                                  ; $0cf4: $f0 $44
    cp $90                                        ; $0cf6: $fe $90
    jr c, jr_000_0cf4                             ; $0cf8: $38 $fa

    ld a, $14                                     ; $0cfa: $3e $14

jr_000_0cfc:
    push af                                       ; $0cfc: $f5
    ld a, [bc]                                    ; $0cfd: $0a
    ld l, a                                       ; $0cfe: $6f
    inc bc                                        ; $0cff: $03
    ld a, [bc]                                    ; $0d00: $0a
    ld h, a                                       ; $0d01: $67
    or l                                          ; $0d02: $b5
    jr z, jr_000_0d21                             ; $0d03: $28 $1c

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
    jr nz, jr_000_0cfc                            ; $0d17: $20 $e3

jr_000_0d19:
    ldh a, [rLY]                                  ; $0d19: $f0 $44
    cp $90                                        ; $0d1b: $fe $90
    jr c, jr_000_0cf4                             ; $0d1d: $38 $d5

    jr jr_000_0d19                                ; $0d1f: $18 $f8

jr_000_0d21:
    pop af                                        ; $0d21: $f1

jr_000_0d22:
    ldh a, [rLY]                                  ; $0d22: $f0 $44
    cp $80                                        ; $0d24: $fe $80
    jr c, jr_000_0d34                             ; $0d26: $38 $0c

jr_000_0d28:
    ldh a, [rLY]                                  ; $0d28: $f0 $44
    cp $90                                        ; $0d2a: $fe $90
    jr c, jr_000_0d28                             ; $0d2c: $38 $fa

jr_000_0d2e:
    ldh a, [rLY]                                  ; $0d2e: $f0 $44
    cp $80                                        ; $0d30: $fe $80
    jr nc, jr_000_0d2e                            ; $0d32: $30 $fa

jr_000_0d34:
    pop af                                        ; $0d34: $f1
    ldh [rIE], a                                  ; $0d35: $e0 $ff
    pop af                                        ; $0d37: $f1
    ld [rActiveROMBank], a                        ; $0d38: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $0d3b: $ea $00 $20
    ret                                           ; $0d3e: $c9


jr_000_0d3f:
    ld a, [bc]                                    ; $0d3f: $0a
    ld l, a                                       ; $0d40: $6f
    inc bc                                        ; $0d41: $03
    ld a, [bc]                                    ; $0d42: $0a
    ld h, a                                       ; $0d43: $67
    or l                                          ; $0d44: $b5
    jr z, jr_000_0d22                             ; $0d45: $28 $db

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
    jr jr_000_0d3f                                ; $0d57: $18 $e6

    rst $38                                       ; $0d59: $ff
    ld a, a                                       ; $0d5a: $7f
    ccf                                           ; $0d5b: $3f
    rra                                           ; $0d5c: $1f
    rrca                                          ; $0d5d: $0f
    rlca                                          ; $0d5e: $07
    inc bc                                        ; $0d5f: $03
    ld bc, $8000                                  ; $0d60: $01 $00 $80
    ret nz                                        ; $0d63: $c0

    ldh [$fff0], a                                ; $0d64: $e0 $f0
    ld hl, sp-$04                                 ; $0d66: $f8 $fc
    cp $ff                                        ; $0d68: $fe $ff

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

jr_000_0d82:
    ld h, [hl]                                    ; $0d82: $66
    ld l, a                                       ; $0d83: $6f

jr_000_0d84:
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


    add $0d                                       ; $0da2: $c6 $0d
    xor $0d                                       ; $0da4: $ee $0d
    ld d, $0e                                     ; $0da6: $16 $0e
    ld a, $0e                                     ; $0da8: $3e $0e
    ld h, [hl]                                    ; $0daa: $66

jr_000_0dab:
    ld c, $8e                                     ; $0dab: $0e $8e

jr_000_0dad:
    ld c, $b6                                     ; $0dad: $0e $b6
    ld c, $de                                     ; $0daf: $0e $de
    ld c, $06                                     ; $0db1: $0e $06
    rrca                                          ; $0db3: $0f
    ld l, $0f                                     ; $0db4: $2e $0f
    ld d, [hl]                                    ; $0db6: $56
    rrca                                          ; $0db7: $0f
    ld a, [hl]                                    ; $0db8: $7e
    rrca                                          ; $0db9: $0f
    and [hl]                                      ; $0dba: $a6
    rrca                                          ; $0dbb: $0f
    adc $0f                                       ; $0dbc: $ce $0f
    or $0f                                        ; $0dbe: $f6 $0f
    ld e, $10                                     ; $0dc0: $1e $10
    ld b, [hl]                                    ; $0dc2: $46
    db $10                                        ; $0dc3: $10
    ld l, [hl]                                    ; $0dc4: $6e
    db $10                                        ; $0dc5: $10
    ld [hl], b                                    ; $0dc6: $70
    adc d                                         ; $0dc7: $8a
    ld d, b                                       ; $0dc8: $50
    adc b                                         ; $0dc9: $88
    ld h, b                                       ; $0dca: $60
    adc b                                         ; $0dcb: $88
    ld [hl], b                                    ; $0dcc: $70
    adc b                                         ; $0dcd: $88
    add b                                         ; $0dce: $80
    adc b                                         ; $0dcf: $88
    ld h, b                                       ; $0dd0: $60
    adc d                                         ; $0dd1: $8a
    ld h, b                                       ; $0dd2: $60
    adc d                                         ; $0dd3: $8a

jr_000_0dd4:
    ld h, b                                       ; $0dd4: $60
    adc d                                         ; $0dd5: $8a

jr_000_0dd6:
    ld h, b                                       ; $0dd6: $60
    adc d                                         ; $0dd7: $8a
    ld h, b                                       ; $0dd8: $60
    adc d                                         ; $0dd9: $8a
    ld h, b                                       ; $0dda: $60
    adc d                                         ; $0ddb: $8a
    ld h, b                                       ; $0ddc: $60
    adc d                                         ; $0ddd: $8a
    ld h, b                                       ; $0dde: $60
    adc d                                         ; $0ddf: $8a
    ld h, b                                       ; $0de0: $60
    adc d                                         ; $0de1: $8a
    ld h, b                                       ; $0de2: $60
    adc d                                         ; $0de3: $8a
    ld h, b                                       ; $0de4: $60
    adc d                                         ; $0de5: $8a
    ld h, b                                       ; $0de6: $60
    adc d                                         ; $0de7: $8a
    ld h, b                                       ; $0de8: $60
    adc d                                         ; $0de9: $8a
    ld h, b                                       ; $0dea: $60
    adc d                                         ; $0deb: $8a
    ld [hl], b                                    ; $0dec: $70
    adc d                                         ; $0ded: $8a
    ld [hl], b                                    ; $0dee: $70
    adc d                                         ; $0def: $8a
    sub b                                         ; $0df0: $90
    adc b                                         ; $0df1: $88
    and b                                         ; $0df2: $a0
    adc b                                         ; $0df3: $88
    or b                                          ; $0df4: $b0
    adc b                                         ; $0df5: $88
    ret nz                                        ; $0df6: $c0

    adc b                                         ; $0df7: $88
    ret nc                                        ; $0df8: $d0

    adc b                                         ; $0df9: $88
    ldh [$ff87], a                                ; $0dfa: $e0 $87
    nop                                           ; $0dfc: $00

jr_000_0dfd:
    add b                                         ; $0dfd: $80
    db $10                                        ; $0dfe: $10

jr_000_0dff:
    add b                                         ; $0dff: $80
    jr nz, jr_000_0d82                            ; $0e00: $20 $80

    jr nc, jr_000_0d84                            ; $0e02: $30 $80

    ld b, b                                       ; $0e04: $40
    add b                                         ; $0e05: $80
    ld d, b                                       ; $0e06: $50
    add b                                         ; $0e07: $80
    ld h, b                                       ; $0e08: $60
    add b                                         ; $0e09: $80
    ld [hl], b                                    ; $0e0a: $70
    add b                                         ; $0e0b: $80
    add b                                         ; $0e0c: $80
    add b                                         ; $0e0d: $80
    sub b                                         ; $0e0e: $90
    add b                                         ; $0e0f: $80
    and b                                         ; $0e10: $a0
    add b                                         ; $0e11: $80
    or b                                          ; $0e12: $b0
    add b                                         ; $0e13: $80
    ld [hl], b                                    ; $0e14: $70
    adc d                                         ; $0e15: $8a
    ld [hl], b                                    ; $0e16: $70
    adc d                                         ; $0e17: $8a
    ldh [$ff88], a                                ; $0e18: $e0 $88
    ldh a, [$ff88]                                ; $0e1a: $f0 $88
    nop                                           ; $0e1c: $00
    adc c                                         ; $0e1d: $89
    db $10                                        ; $0e1e: $10
    adc c                                         ; $0e1f: $89

jr_000_0e20:
    jr nz, jr_000_0dab                            ; $0e20: $20 $89

jr_000_0e22:
    jr nc, jr_000_0dad                            ; $0e22: $30 $89

    nop                                           ; $0e24: $00
    add c                                         ; $0e25: $81

jr_000_0e26:
    db $10                                        ; $0e26: $10
    add c                                         ; $0e27: $81

jr_000_0e28:
    jr nz, jr_000_0dab                            ; $0e28: $20 $81

    jr nc, jr_000_0dad                            ; $0e2a: $30 $81

    ld b, b                                       ; $0e2c: $40
    add c                                         ; $0e2d: $81
    ld d, b                                       ; $0e2e: $50
    add c                                         ; $0e2f: $81
    ld h, b                                       ; $0e30: $60
    add c                                         ; $0e31: $81
    ld [hl], b                                    ; $0e32: $70
    add c                                         ; $0e33: $81
    add b                                         ; $0e34: $80
    add c                                         ; $0e35: $81
    sub b                                         ; $0e36: $90
    add c                                         ; $0e37: $81
    and b                                         ; $0e38: $a0
    add c                                         ; $0e39: $81
    or b                                          ; $0e3a: $b0
    add c                                         ; $0e3b: $81
    ld [hl], b                                    ; $0e3c: $70
    adc d                                         ; $0e3d: $8a
    ld [hl], b                                    ; $0e3e: $70
    adc d                                         ; $0e3f: $8a
    ld b, b                                       ; $0e40: $40
    adc c                                         ; $0e41: $89

Jump_000_0e42:
    ld d, b                                       ; $0e42: $50
    adc c                                         ; $0e43: $89
    ld h, b                                       ; $0e44: $60
    adc c                                         ; $0e45: $89
    ld [hl], b                                    ; $0e46: $70
    adc c                                         ; $0e47: $89
    add b                                         ; $0e48: $80
    adc c                                         ; $0e49: $89
    sub b                                         ; $0e4a: $90
    adc c                                         ; $0e4b: $89
    nop                                           ; $0e4c: $00
    add d                                         ; $0e4d: $82

jr_000_0e4e:
    db $10                                        ; $0e4e: $10
    add d                                         ; $0e4f: $82

jr_000_0e50:
    jr nz, jr_000_0dd4                            ; $0e50: $20 $82

    jr nc, jr_000_0dd6                            ; $0e52: $30 $82

    ld b, b                                       ; $0e54: $40
    add d                                         ; $0e55: $82
    ld d, b                                       ; $0e56: $50
    add d                                         ; $0e57: $82
    ld h, b                                       ; $0e58: $60
    add d                                         ; $0e59: $82
    ld [hl], b                                    ; $0e5a: $70
    add d                                         ; $0e5b: $82
    add b                                         ; $0e5c: $80
    add d                                         ; $0e5d: $82
    sub b                                         ; $0e5e: $90
    add d                                         ; $0e5f: $82
    and b                                         ; $0e60: $a0
    add d                                         ; $0e61: $82
    or b                                          ; $0e62: $b0
    add d                                         ; $0e63: $82
    ld [hl], b                                    ; $0e64: $70
    adc d                                         ; $0e65: $8a
    ld [hl], b                                    ; $0e66: $70
    adc d                                         ; $0e67: $8a
    and b                                         ; $0e68: $a0
    adc c                                         ; $0e69: $89
    or b                                          ; $0e6a: $b0
    adc c                                         ; $0e6b: $89
    ret nz                                        ; $0e6c: $c0

    adc c                                         ; $0e6d: $89
    ret nc                                        ; $0e6e: $d0

    adc c                                         ; $0e6f: $89
    ldh [$ff89], a                                ; $0e70: $e0 $89
    ldh a, [$ff89]                                ; $0e72: $f0 $89
    nop                                           ; $0e74: $00
    add e                                         ; $0e75: $83
    db $10                                        ; $0e76: $10

jr_000_0e77:
    add e                                         ; $0e77: $83
    jr nz, jr_000_0dfd                            ; $0e78: $20 $83

    jr nc, jr_000_0dff                            ; $0e7a: $30 $83

    ld b, b                                       ; $0e7c: $40
    add e                                         ; $0e7d: $83
    ld d, b                                       ; $0e7e: $50
    add e                                         ; $0e7f: $83
    ld h, b                                       ; $0e80: $60
    add e                                         ; $0e81: $83
    ld [hl], b                                    ; $0e82: $70
    add e                                         ; $0e83: $83
    add b                                         ; $0e84: $80
    add e                                         ; $0e85: $83
    sub b                                         ; $0e86: $90
    add e                                         ; $0e87: $83
    and b                                         ; $0e88: $a0
    add e                                         ; $0e89: $83
    or b                                          ; $0e8a: $b0
    add e                                         ; $0e8b: $83
    ld [hl], b                                    ; $0e8c: $70
    adc d                                         ; $0e8d: $8a
    ld [hl], b                                    ; $0e8e: $70
    adc d                                         ; $0e8f: $8a
    nop                                           ; $0e90: $00
    adc d                                         ; $0e91: $8a
    db $10                                        ; $0e92: $10
    adc d                                         ; $0e93: $8a
    jr nz, jr_000_0e20                            ; $0e94: $20 $8a

    jr nc, jr_000_0e22                            ; $0e96: $30 $8a

    ld b, b                                       ; $0e98: $40
    adc d                                         ; $0e99: $8a
    ld d, b                                       ; $0e9a: $50
    adc d                                         ; $0e9b: $8a
    nop                                           ; $0e9c: $00
    add h                                         ; $0e9d: $84
    db $10                                        ; $0e9e: $10
    add h                                         ; $0e9f: $84

jr_000_0ea0:
    jr nz, jr_000_0e26                            ; $0ea0: $20 $84

jr_000_0ea2:
    jr nc, jr_000_0e28                            ; $0ea2: $30 $84

    ld b, b                                       ; $0ea4: $40
    add h                                         ; $0ea5: $84
    ld d, b                                       ; $0ea6: $50
    add h                                         ; $0ea7: $84
    ld h, b                                       ; $0ea8: $60
    add h                                         ; $0ea9: $84
    ld [hl], b                                    ; $0eaa: $70
    add h                                         ; $0eab: $84
    add b                                         ; $0eac: $80
    add h                                         ; $0ead: $84
    sub b                                         ; $0eae: $90
    add h                                         ; $0eaf: $84
    and b                                         ; $0eb0: $a0
    add h                                         ; $0eb1: $84
    or b                                          ; $0eb2: $b0
    add h                                         ; $0eb3: $84
    ld [hl], b                                    ; $0eb4: $70
    adc d                                         ; $0eb5: $8a
    ld [hl], b                                    ; $0eb6: $70
    adc d                                         ; $0eb7: $8a
    add b                                         ; $0eb8: $80
    adc d                                         ; $0eb9: $8a
    sub b                                         ; $0eba: $90
    adc d                                         ; $0ebb: $8a
    nop                                           ; $0ebc: $00
    adc h                                         ; $0ebd: $8c
    db $10                                        ; $0ebe: $10
    adc h                                         ; $0ebf: $8c
    jr nz, jr_000_0e4e                            ; $0ec0: $20 $8c

    jr nc, jr_000_0e50                            ; $0ec2: $30 $8c

    ld b, b                                       ; $0ec4: $40
    adc h                                         ; $0ec5: $8c
    ld d, b                                       ; $0ec6: $50
    adc h                                         ; $0ec7: $8c
    ld h, b                                       ; $0ec8: $60

jr_000_0ec9:
    adc h                                         ; $0ec9: $8c
    ld [hl], b                                    ; $0eca: $70

jr_000_0ecb:
    adc h                                         ; $0ecb: $8c
    add b                                         ; $0ecc: $80
    adc h                                         ; $0ecd: $8c
    sub b                                         ; $0ece: $90
    adc h                                         ; $0ecf: $8c
    and b                                         ; $0ed0: $a0
    adc h                                         ; $0ed1: $8c
    or b                                          ; $0ed2: $b0
    adc h                                         ; $0ed3: $8c
    ret nz                                        ; $0ed4: $c0

    adc h                                         ; $0ed5: $8c
    ret nc                                        ; $0ed6: $d0

    adc h                                         ; $0ed7: $8c
    ldh [$ff8c], a                                ; $0ed8: $e0 $8c
    ldh a, [$ff8c]                                ; $0eda: $f0 $8c
    ld [hl], b                                    ; $0edc: $70
    adc d                                         ; $0edd: $8a
    ld [hl], b                                    ; $0ede: $70
    adc d                                         ; $0edf: $8a
    and b                                         ; $0ee0: $a0
    adc d                                         ; $0ee1: $8a
    or b                                          ; $0ee2: $b0
    adc d                                         ; $0ee3: $8a
    nop                                           ; $0ee4: $00
    adc l                                         ; $0ee5: $8d
    db $10                                        ; $0ee6: $10
    adc l                                         ; $0ee7: $8d
    jr nz, jr_000_0e77                            ; $0ee8: $20 $8d

    jr nc, @-$71                                  ; $0eea: $30 $8d

    ld b, b                                       ; $0eec: $40
    adc l                                         ; $0eed: $8d
    ld d, b                                       ; $0eee: $50
    adc l                                         ; $0eef: $8d
    ld h, b                                       ; $0ef0: $60
    adc l                                         ; $0ef1: $8d

jr_000_0ef2:
    ld [hl], b                                    ; $0ef2: $70
    adc l                                         ; $0ef3: $8d

jr_000_0ef4:
    add b                                         ; $0ef4: $80
    adc l                                         ; $0ef5: $8d
    sub b                                         ; $0ef6: $90
    adc l                                         ; $0ef7: $8d
    and b                                         ; $0ef8: $a0
    adc l                                         ; $0ef9: $8d
    or b                                          ; $0efa: $b0
    adc l                                         ; $0efb: $8d
    ret nz                                        ; $0efc: $c0

    adc l                                         ; $0efd: $8d
    ret nc                                        ; $0efe: $d0

    adc l                                         ; $0eff: $8d
    ldh [$ff8d], a                                ; $0f00: $e0 $8d
    ldh a, [$ff8d]                                ; $0f02: $f0 $8d
    ld [hl], b                                    ; $0f04: $70
    adc d                                         ; $0f05: $8a
    ld [hl], b                                    ; $0f06: $70
    adc d                                         ; $0f07: $8a
    ret nz                                        ; $0f08: $c0

    adc d                                         ; $0f09: $8a
    ret nc                                        ; $0f0a: $d0

    adc d                                         ; $0f0b: $8a
    nop                                           ; $0f0c: $00

jr_000_0f0d:
    adc [hl]                                      ; $0f0d: $8e
    db $10                                        ; $0f0e: $10

jr_000_0f0f:
    adc [hl]                                      ; $0f0f: $8e
    jr nz, jr_000_0ea0                            ; $0f10: $20 $8e

    jr nc, jr_000_0ea2                            ; $0f12: $30 $8e

    ld b, b                                       ; $0f14: $40
    adc [hl]                                      ; $0f15: $8e
    ld d, b                                       ; $0f16: $50
    adc [hl]                                      ; $0f17: $8e
    ld h, b                                       ; $0f18: $60
    adc [hl]                                      ; $0f19: $8e
    ld [hl], b                                    ; $0f1a: $70

jr_000_0f1b:
    adc [hl]                                      ; $0f1b: $8e
    add b                                         ; $0f1c: $80

jr_000_0f1d:
    adc [hl]                                      ; $0f1d: $8e
    sub b                                         ; $0f1e: $90
    adc [hl]                                      ; $0f1f: $8e
    and b                                         ; $0f20: $a0
    adc [hl]                                      ; $0f21: $8e
    or b                                          ; $0f22: $b0
    adc [hl]                                      ; $0f23: $8e
    ret nz                                        ; $0f24: $c0

    adc [hl]                                      ; $0f25: $8e
    ret nc                                        ; $0f26: $d0

    adc [hl]                                      ; $0f27: $8e
    ldh [$ff8e], a                                ; $0f28: $e0 $8e
    ldh a, [$ff8e]                                ; $0f2a: $f0 $8e
    ld [hl], b                                    ; $0f2c: $70
    adc d                                         ; $0f2d: $8a
    ld [hl], b                                    ; $0f2e: $70
    adc d                                         ; $0f2f: $8a
    ldh [$ff8a], a                                ; $0f30: $e0 $8a
    ldh a, [$ff8a]                                ; $0f32: $f0 $8a
    nop                                           ; $0f34: $00
    adc a                                         ; $0f35: $8f
    db $10                                        ; $0f36: $10
    adc a                                         ; $0f37: $8f
    jr nz, jr_000_0ec9                            ; $0f38: $20 $8f

    jr nc, jr_000_0ecb                            ; $0f3a: $30 $8f

    ld b, b                                       ; $0f3c: $40
    adc a                                         ; $0f3d: $8f
    ld d, b                                       ; $0f3e: $50
    adc a                                         ; $0f3f: $8f
    ld h, b                                       ; $0f40: $60
    adc a                                         ; $0f41: $8f
    ld [hl], b                                    ; $0f42: $70
    adc a                                         ; $0f43: $8f

jr_000_0f44:
    add b                                         ; $0f44: $80
    adc a                                         ; $0f45: $8f

jr_000_0f46:
    sub b                                         ; $0f46: $90
    adc a                                         ; $0f47: $8f
    and b                                         ; $0f48: $a0
    adc a                                         ; $0f49: $8f
    or b                                          ; $0f4a: $b0
    adc a                                         ; $0f4b: $8f
    ret nz                                        ; $0f4c: $c0

    adc a                                         ; $0f4d: $8f
    ret nc                                        ; $0f4e: $d0

    adc a                                         ; $0f4f: $8f
    ldh [$ff8f], a                                ; $0f50: $e0 $8f
    ldh a, [$ff8f]                                ; $0f52: $f0 $8f
    ld [hl], b                                    ; $0f54: $70
    adc d                                         ; $0f55: $8a
    ld [hl], b                                    ; $0f56: $70
    adc d                                         ; $0f57: $8a
    nop                                           ; $0f58: $00
    adc e                                         ; $0f59: $8b
    db $10                                        ; $0f5a: $10
    adc e                                         ; $0f5b: $8b
    nop                                           ; $0f5c: $00
    sub b                                         ; $0f5d: $90
    db $10                                        ; $0f5e: $10
    sub b                                         ; $0f5f: $90
    jr nz, jr_000_0ef2                            ; $0f60: $20 $90

    jr nc, jr_000_0ef4                            ; $0f62: $30 $90

    ld b, b                                       ; $0f64: $40
    sub b                                         ; $0f65: $90
    ld d, b                                       ; $0f66: $50
    sub b                                         ; $0f67: $90
    ld h, b                                       ; $0f68: $60
    sub b                                         ; $0f69: $90
    ld [hl], b                                    ; $0f6a: $70
    sub b                                         ; $0f6b: $90
    add b                                         ; $0f6c: $80

jr_000_0f6d:
    sub b                                         ; $0f6d: $90
    sub b                                         ; $0f6e: $90

jr_000_0f6f:
    sub b                                         ; $0f6f: $90
    and b                                         ; $0f70: $a0
    sub b                                         ; $0f71: $90
    or b                                          ; $0f72: $b0
    sub b                                         ; $0f73: $90
    ret nz                                        ; $0f74: $c0

    sub b                                         ; $0f75: $90
    ret nc                                        ; $0f76: $d0

    sub b                                         ; $0f77: $90
    ldh [$ff90], a                                ; $0f78: $e0 $90
    ldh a, [$ff90]                                ; $0f7a: $f0 $90
    ld [hl], b                                    ; $0f7c: $70
    adc d                                         ; $0f7d: $8a
    ld [hl], b                                    ; $0f7e: $70
    adc d                                         ; $0f7f: $8a
    jr nz, jr_000_0f0d                            ; $0f80: $20 $8b

    jr nc, jr_000_0f0f                            ; $0f82: $30 $8b

    nop                                           ; $0f84: $00
    sub c                                         ; $0f85: $91
    db $10                                        ; $0f86: $10
    sub c                                         ; $0f87: $91
    jr nz, jr_000_0f1b                            ; $0f88: $20 $91

    jr nc, jr_000_0f1d                            ; $0f8a: $30 $91

    ld b, b                                       ; $0f8c: $40
    sub c                                         ; $0f8d: $91
    ld d, b                                       ; $0f8e: $50
    sub c                                         ; $0f8f: $91
    ld h, b                                       ; $0f90: $60
    sub c                                         ; $0f91: $91
    ld [hl], b                                    ; $0f92: $70
    sub c                                         ; $0f93: $91
    add b                                         ; $0f94: $80
    sub c                                         ; $0f95: $91

jr_000_0f96:
    sub b                                         ; $0f96: $90
    sub c                                         ; $0f97: $91

jr_000_0f98:
    and b                                         ; $0f98: $a0
    sub c                                         ; $0f99: $91
    or b                                          ; $0f9a: $b0
    sub c                                         ; $0f9b: $91
    ret nz                                        ; $0f9c: $c0

    sub c                                         ; $0f9d: $91
    ret nc                                        ; $0f9e: $d0

    sub c                                         ; $0f9f: $91
    ldh [$ff91], a                                ; $0fa0: $e0 $91
    ldh a, [$ff91]                                ; $0fa2: $f0 $91
    ld [hl], b                                    ; $0fa4: $70
    adc d                                         ; $0fa5: $8a
    ld [hl], b                                    ; $0fa6: $70
    adc d                                         ; $0fa7: $8a
    ld b, b                                       ; $0fa8: $40
    adc e                                         ; $0fa9: $8b
    ld d, b                                       ; $0faa: $50
    adc e                                         ; $0fab: $8b
    nop                                           ; $0fac: $00
    sub d                                         ; $0fad: $92
    db $10                                        ; $0fae: $10
    sub d                                         ; $0faf: $92
    jr nz, jr_000_0f44                            ; $0fb0: $20 $92

    jr nc, jr_000_0f46                            ; $0fb2: $30 $92

    ld b, b                                       ; $0fb4: $40
    sub d                                         ; $0fb5: $92
    ld d, b                                       ; $0fb6: $50
    sub d                                         ; $0fb7: $92
    ld h, b                                       ; $0fb8: $60
    sub d                                         ; $0fb9: $92
    ld [hl], b                                    ; $0fba: $70
    sub d                                         ; $0fbb: $92
    add b                                         ; $0fbc: $80
    sub d                                         ; $0fbd: $92
    sub b                                         ; $0fbe: $90

jr_000_0fbf:
    sub d                                         ; $0fbf: $92
    and b                                         ; $0fc0: $a0

jr_000_0fc1:
    sub d                                         ; $0fc1: $92
    or b                                          ; $0fc2: $b0
    sub d                                         ; $0fc3: $92
    ret nz                                        ; $0fc4: $c0

    sub d                                         ; $0fc5: $92
    ret nc                                        ; $0fc6: $d0

    sub d                                         ; $0fc7: $92
    ldh [$ff92], a                                ; $0fc8: $e0 $92
    ldh a, [$ff92]                                ; $0fca: $f0 $92
    ld [hl], b                                    ; $0fcc: $70
    adc d                                         ; $0fcd: $8a
    ld [hl], b                                    ; $0fce: $70
    adc d                                         ; $0fcf: $8a
    ld h, b                                       ; $0fd0: $60
    adc e                                         ; $0fd1: $8b
    ld [hl], b                                    ; $0fd2: $70
    adc e                                         ; $0fd3: $8b
    nop                                           ; $0fd4: $00
    sub e                                         ; $0fd5: $93
    db $10                                        ; $0fd6: $10
    sub e                                         ; $0fd7: $93
    jr nz, jr_000_0f6d                            ; $0fd8: $20 $93

    jr nc, jr_000_0f6f                            ; $0fda: $30 $93

    ld b, b                                       ; $0fdc: $40
    sub e                                         ; $0fdd: $93
    ld d, b                                       ; $0fde: $50
    sub e                                         ; $0fdf: $93
    ld h, b                                       ; $0fe0: $60
    sub e                                         ; $0fe1: $93
    ld [hl], b                                    ; $0fe2: $70
    sub e                                         ; $0fe3: $93
    add b                                         ; $0fe4: $80
    sub e                                         ; $0fe5: $93
    sub b                                         ; $0fe6: $90
    sub e                                         ; $0fe7: $93

jr_000_0fe8:
    and b                                         ; $0fe8: $a0
    sub e                                         ; $0fe9: $93

jr_000_0fea:
    or b                                          ; $0fea: $b0
    sub e                                         ; $0feb: $93
    ret nz                                        ; $0fec: $c0

    sub e                                         ; $0fed: $93
    ret nc                                        ; $0fee: $d0

    sub e                                         ; $0fef: $93

Jump_000_0ff0:
    ldh [$ff93], a                                ; $0ff0: $e0 $93
    ldh a, [$ff93]                                ; $0ff2: $f0 $93
    ld [hl], b                                    ; $0ff4: $70
    adc d                                         ; $0ff5: $8a
    ld [hl], b                                    ; $0ff6: $70
    adc d                                         ; $0ff7: $8a
    add b                                         ; $0ff8: $80
    adc e                                         ; $0ff9: $8b
    sub b                                         ; $0ffa: $90
    adc e                                         ; $0ffb: $8b
    nop                                           ; $0ffc: $00
    sub h                                         ; $0ffd: $94
    db $10                                        ; $0ffe: $10
    sub h                                         ; $0fff: $94
    jr nz, jr_000_0f96                            ; $1000: $20 $94

    jr nc, jr_000_0f98                            ; $1002: $30 $94

    ld b, b                                       ; $1004: $40
    sub h                                         ; $1005: $94
    ld d, b                                       ; $1006: $50
    sub h                                         ; $1007: $94
    ld h, b                                       ; $1008: $60
    sub h                                         ; $1009: $94
    ld [hl], b                                    ; $100a: $70
    sub h                                         ; $100b: $94
    add b                                         ; $100c: $80
    sub h                                         ; $100d: $94
    sub b                                         ; $100e: $90
    sub h                                         ; $100f: $94
    and b                                         ; $1010: $a0

jr_000_1011:
    sub h                                         ; $1011: $94
    or b                                          ; $1012: $b0

jr_000_1013:
    sub h                                         ; $1013: $94
    ret nz                                        ; $1014: $c0

    sub h                                         ; $1015: $94
    ret nc                                        ; $1016: $d0

    sub h                                         ; $1017: $94
    ldh [$ff94], a                                ; $1018: $e0 $94
    ldh a, [$ff94]                                ; $101a: $f0 $94
    ld [hl], b                                    ; $101c: $70
    adc d                                         ; $101d: $8a
    ld [hl], b                                    ; $101e: $70
    adc d                                         ; $101f: $8a
    and b                                         ; $1020: $a0
    adc e                                         ; $1021: $8b
    or b                                          ; $1022: $b0
    adc e                                         ; $1023: $8b
    nop                                           ; $1024: $00
    sub l                                         ; $1025: $95
    db $10                                        ; $1026: $10
    sub l                                         ; $1027: $95
    jr nz, jr_000_0fbf                            ; $1028: $20 $95

    jr nc, jr_000_0fc1                            ; $102a: $30 $95

    ld b, b                                       ; $102c: $40
    sub l                                         ; $102d: $95
    ld d, b                                       ; $102e: $50
    sub l                                         ; $102f: $95
    ld h, b                                       ; $1030: $60
    sub l                                         ; $1031: $95
    ld [hl], b                                    ; $1032: $70
    sub l                                         ; $1033: $95
    add b                                         ; $1034: $80
    sub l                                         ; $1035: $95
    sub b                                         ; $1036: $90
    sub l                                         ; $1037: $95
    and b                                         ; $1038: $a0
    sub l                                         ; $1039: $95
    or b                                          ; $103a: $b0
    sub l                                         ; $103b: $95
    ret nz                                        ; $103c: $c0

    sub l                                         ; $103d: $95
    ret nc                                        ; $103e: $d0

    sub l                                         ; $103f: $95
    ldh [$ff95], a                                ; $1040: $e0 $95
    ldh a, [$ff95]                                ; $1042: $f0 $95
    ld [hl], b                                    ; $1044: $70
    adc d                                         ; $1045: $8a
    ld [hl], b                                    ; $1046: $70
    adc d                                         ; $1047: $8a
    ret nz                                        ; $1048: $c0

    adc e                                         ; $1049: $8b
    ret nc                                        ; $104a: $d0

    adc e                                         ; $104b: $8b
    nop                                           ; $104c: $00
    sub [hl]                                      ; $104d: $96
    db $10                                        ; $104e: $10
    sub [hl]                                      ; $104f: $96
    jr nz, jr_000_0fe8                            ; $1050: $20 $96

    jr nc, jr_000_0fea                            ; $1052: $30 $96

    ld b, b                                       ; $1054: $40
    sub [hl]                                      ; $1055: $96
    ld d, b                                       ; $1056: $50
    sub [hl]                                      ; $1057: $96
    ld h, b                                       ; $1058: $60
    sub [hl]                                      ; $1059: $96
    ld [hl], b                                    ; $105a: $70
    sub [hl]                                      ; $105b: $96
    add b                                         ; $105c: $80
    sub [hl]                                      ; $105d: $96
    sub b                                         ; $105e: $90
    sub [hl]                                      ; $105f: $96
    and b                                         ; $1060: $a0
    sub [hl]                                      ; $1061: $96
    or b                                          ; $1062: $b0
    sub [hl]                                      ; $1063: $96
    ret nz                                        ; $1064: $c0

    sub [hl]                                      ; $1065: $96
    ret nc                                        ; $1066: $d0

    sub [hl]                                      ; $1067: $96
    ldh [$ff96], a                                ; $1068: $e0 $96
    ldh a, [$ff96]                                ; $106a: $f0 $96
    ld [hl], b                                    ; $106c: $70
    adc d                                         ; $106d: $8a
    ld [hl], b                                    ; $106e: $70
    adc d                                         ; $106f: $8a
    ldh [$ff8b], a                                ; $1070: $e0 $8b
    ldh a, [$ff8b]                                ; $1072: $f0 $8b
    nop                                           ; $1074: $00
    sub a                                         ; $1075: $97
    db $10                                        ; $1076: $10
    sub a                                         ; $1077: $97
    jr nz, jr_000_1011                            ; $1078: $20 $97

    jr nc, jr_000_1013                            ; $107a: $30 $97

    ld b, b                                       ; $107c: $40
    sub a                                         ; $107d: $97
    ld d, b                                       ; $107e: $50
    sub a                                         ; $107f: $97
    ld h, b                                       ; $1080: $60
    sub a                                         ; $1081: $97
    ld [hl], b                                    ; $1082: $70
    sub a                                         ; $1083: $97
    add b                                         ; $1084: $80
    sub a                                         ; $1085: $97
    sub b                                         ; $1086: $90
    sub a                                         ; $1087: $97
    and b                                         ; $1088: $a0
    sub a                                         ; $1089: $97
    or b                                          ; $108a: $b0
    sub a                                         ; $108b: $97
    ret nz                                        ; $108c: $c0

    sub a                                         ; $108d: $97
    ret nc                                        ; $108e: $d0

    sub a                                         ; $108f: $97
    ldh [$ff97], a                                ; $1090: $e0 $97
    ldh a, [$ff97]                                ; $1092: $f0 $97
    ld [hl], b                                    ; $1094: $70
    adc d                                         ; $1095: $8a

GS06_ScreenTilemapTileDataAddressLookupTable::
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

GS06_ScreenTilemapTileDataAddressLookupRow00Table::
    db $70, $8a
    db $50, $88
    db $60, $88
    db $70, $88
    db $80, $88
    db $60, $8a
    db $60, $8a
    db $60, $8a
    db $60, $8a
    db $60, $8a
    db $60, $8a
    db $60, $8a
    db $60, $8a
    db $60, $8a
    db $60, $8a
    db $60, $8a
    db $60, $8a
    db $60, $8a
    db $60, $8a
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow01Table::
    db $70, $8a
    db $90, $88
    db $a0, $88
    db $b0, $88
    db $c0, $88
    db $d0, $88
    db $e0, $87
    db $00, $80
    db $10, $80
    db $20, $80
    db $30, $80
    db $e0, $87
    db $90, $84
    db $a0, $84
    db $b0, $84
    db $b0, $8e
    db $c0, $8e
    db $d0, $8f
    db $e0, $87
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow02Table::
    db $70, $8a
    db $e0, $88
    db $f0, $88
    db $00, $89
    db $10, $89
    db $20, $89
    db $30, $89
    db $00, $81
    db $10, $81
    db $20, $81
    db $30, $81
    db $d0, $8d
    db $80, $8f
    db $90, $8f
    db $a0, $8f
    db $b0, $8f
    db $c0, $8f
    db $e0, $8f
    db $f0, $8d
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow03Table::
    db $70, $8a
    db $40, $89
    db $50, $89
    db $60, $89
    db $70, $89
    db $80, $89
    db $90, $89
    db $00, $82
    db $10, $82
    db $20, $82
    db $30, $82
    db $d0, $8e
    db $e0, $8e
    db $e0, $8e
    db $e0, $8e
    db $e0, $8e
    db $e0, $8e
    db $e0, $8e
    db $f0, $8e
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow04Table::
    db $70, $8a
    db $a0, $89
    db $b0, $89
    db $c0, $89
    db $d0, $89
    db $e0, $89
    db $f0, $89
    db $00, $83
    db $10, $83
    db $20, $83
    db $30, $83
    db $d0, $8e
    db $c0, $8c
    db $d0, $8c
    db $90, $8d
    db $90, $8c
    db $b0, $8d
    db $80, $8d
    db $f0, $8e
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow05Table::
    db $70, $8a
    db $00, $8a
    db $10, $8a
    db $20, $8a
    db $30, $8a
    db $40, $8a
    db $50, $8a
    db $00, $84
    db $10, $84
    db $20, $84
    db $30, $84
    db $d0, $8e
    db $e0, $8e
    db $e0, $8e
    db $e0, $8e
    db $e0, $8e
    db $e0, $8e
    db $e0, $8e
    db $f0, $8e
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow06Table::
    db $70, $8a
    db $80, $8a
    db $90, $8a
    db $00, $8c
    db $10, $8c
    db $20, $8c
    db $30, $8c
    db $40, $8c
    db $50, $8c
    db $60, $8c
    db $70, $8c
    db $e0, $8b
    db $a0, $8c
    db $b0, $8c
    db $90, $8d
    db $90, $8c
    db $b0, $8d
    db $a0, $8d
    db $f0, $8e
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow07Table::
    db $70, $8a
    db $a0, $8a
    db $b0, $8a
    db $00, $8d
    db $10, $8d
    db $20, $8d
    db $30, $8d
    db $40, $8d
    db $50, $8d
    db $60, $8d
    db $70, $8d
    db $f0, $8b
    db $e0, $8e
    db $e0, $8e
    db $e0, $8e
    db $e0, $8e
    db $e0, $8e
    db $e0, $8e
    db $f0, $8e
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow08Table::
    db $70, $8a
    db $c0, $8a
    db $d0, $8a
    db $00, $8e
    db $10, $8e
    db $20, $8e
    db $30, $8e
    db $40, $8e
    db $50, $8e
    db $60, $8e
    db $70, $8e
    db $f0, $8b
    db $c0, $8d
    db $f0, $8f
    db $80, $8c
    db $80, $8e
    db $90, $8e
    db $a0, $8e
    db $f0, $8e
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow09Table::
    db $70, $8a
    db $e0, $8a
    db $f0, $8a
    db $00, $8f
    db $10, $8f
    db $20, $8f
    db $30, $8f
    db $40, $8f
    db $50, $8f
    db $60, $8f
    db $70, $8f
    db $f0, $8b
    db $e0, $8e
    db $e0, $8e
    db $e0, $8e
    db $e0, $8e
    db $e0, $8e
    db $e0, $8e
    db $f0, $8e
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow0aTable::
    db $70, $8a
    db $00, $8b
    db $10, $8b
    db $00, $90
    db $10, $90
    db $20, $90
    db $30, $90
    db $40, $90
    db $50, $90
    db $60, $90
    db $70, $90
    db $80, $90
    db $90, $90
    db $a0, $90
    db $b0, $90
    db $c0, $90
    db $d0, $90
    db $e0, $90
    db $f0, $90
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow0bTable::
    db $70, $8a
    db $20, $8b
    db $30, $8b
    db $00, $91
    db $10, $91
    db $20, $91
    db $30, $91
    db $40, $91
    db $50, $91
    db $60, $91
    db $70, $91
    db $80, $91
    db $90, $91
    db $a0, $91
    db $b0, $91
    db $c0, $91
    db $d0, $91
    db $e0, $91
    db $f0, $91
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow0cTable::
    db $70, $8a
    db $40, $8b
    db $50, $8b
    db $00, $92
    db $10, $92
    db $20, $92
    db $30, $92
    db $40, $92
    db $50, $92
    db $60, $92
    db $70, $92
    db $80, $92
    db $90, $92
    db $a0, $92
    db $b0, $92
    db $c0, $92
    db $d0, $92
    db $e0, $92
    db $f0, $92
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow0dTable::
    db $70, $8a
    db $60, $8b
    db $70, $8b
    db $00, $93
    db $10, $93
    db $20, $93
    db $30, $93
    db $40, $93
    db $50, $93
    db $60, $93
    db $70, $93
    db $80, $93
    db $90, $93
    db $a0, $93
    db $b0, $93
    db $c0, $93
    db $d0, $93
    db $e0, $93
    db $f0, $93
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow0eTable::
    db $70, $8a
    db $80, $8b
    db $90, $8b
    db $00, $94
    db $10, $94
    db $20, $94
    db $30, $94
    db $40, $94
    db $50, $94
    db $60, $94
    db $70, $94
    db $80, $94
    db $90, $94
    db $a0, $94
    db $b0, $94
    db $c0, $94
    db $d0, $94
    db $e0, $94
    db $f0, $94
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow0fTable::
    db $70, $8a
    db $a0, $8b
    db $b0, $8b
    db $00, $95
    db $10, $95
    db $20, $95
    db $30, $95
    db $40, $95
    db $50, $95
    db $60, $95
    db $70, $95
    db $80, $95
    db $90, $95
    db $a0, $95
    db $b0, $95
    db $c0, $95
    db $d0, $95
    db $e0, $95
    db $f0, $95
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow10Table::
    db $70, $8a
    db $e0, $8c
    db $f0, $8c
    db $00, $96
    db $10, $96
    db $20, $96
    db $30, $96
    db $40, $96
    db $50, $96
    db $60, $96
    db $70, $96
    db $80, $96
    db $90, $96
    db $a0, $96
    db $b0, $96
    db $c0, $96
    db $d0, $96
    db $e0, $96
    db $f0, $96
    db $70, $8a

GS06_ScreenTilemapTileDataAddressLookupRow11Table::
    db $70, $8a
    db $c0, $8b
    db $d0, $8b
    db $00, $97
    db $10, $97
    db $20, $97
    db $30, $97
    db $40, $97
    db $50, $97
    db $60, $97
    db $70, $97
    db $80, $97
    db $90, $97
    db $a0, $97
    db $b0, $97
    db $c0, $97
    db $d0, $97
    db $e0, $97
    db $f0, $97
    db $70, $8a

    xor [hl]                                      ; $138a: $ae
    inc de                                        ; $138b: $13
    sub $13                                       ; $138c: $d6 $13
    cp $13                                        ; $138e: $fe $13
    ld h, $14                                     ; $1390: $26 $14
    ld c, [hl]                                    ; $1392: $4e

jr_000_1393:
    inc d                                         ; $1393: $14
    halt                                          ; $1394: $76

jr_000_1395:
    inc d                                         ; $1395: $14
    sbc [hl]                                      ; $1396: $9e
    inc d                                         ; $1397: $14
    add $14                                       ; $1398: $c6 $14
    xor $14                                       ; $139a: $ee $14
    ld d, $15                                     ; $139c: $16 $15
    ld a, $15                                     ; $139e: $3e $15
    ld h, [hl]                                    ; $13a0: $66
    dec d                                         ; $13a1: $15
    adc [hl]                                      ; $13a2: $8e
    dec d                                         ; $13a3: $15
    or [hl]                                       ; $13a4: $b6
    dec d                                         ; $13a5: $15
    sbc $15                                       ; $13a6: $de $15
    ld b, $16                                     ; $13a8: $06 $16
    ld l, $16                                     ; $13aa: $2e $16
    ld d, [hl]                                    ; $13ac: $56
    ld d, $70                                     ; $13ad: $16 $70
    adc d                                         ; $13af: $8a
    ld d, b                                       ; $13b0: $50
    adc b                                         ; $13b1: $88
    ld h, b                                       ; $13b2: $60
    adc b                                         ; $13b3: $88
    ld [hl], b                                    ; $13b4: $70
    adc b                                         ; $13b5: $88
    add b                                         ; $13b6: $80
    adc b                                         ; $13b7: $88
    ld h, b                                       ; $13b8: $60
    adc d                                         ; $13b9: $8a
    ld h, b                                       ; $13ba: $60
    adc d                                         ; $13bb: $8a

jr_000_13bc:
    ld h, b                                       ; $13bc: $60
    adc d                                         ; $13bd: $8a

jr_000_13be:
    ld h, b                                       ; $13be: $60
    adc d                                         ; $13bf: $8a
    ld h, b                                       ; $13c0: $60
    adc d                                         ; $13c1: $8a
    ld h, b                                       ; $13c2: $60
    adc d                                         ; $13c3: $8a
    ld h, b                                       ; $13c4: $60
    adc d                                         ; $13c5: $8a
    ld h, b                                       ; $13c6: $60
    adc d                                         ; $13c7: $8a
    ld h, b                                       ; $13c8: $60
    adc d                                         ; $13c9: $8a
    ld h, b                                       ; $13ca: $60
    adc d                                         ; $13cb: $8a
    ld h, b                                       ; $13cc: $60
    adc d                                         ; $13cd: $8a
    ld h, b                                       ; $13ce: $60
    adc d                                         ; $13cf: $8a
    ld h, b                                       ; $13d0: $60
    adc d                                         ; $13d1: $8a
    ld h, b                                       ; $13d2: $60
    adc d                                         ; $13d3: $8a
    ld [hl], b                                    ; $13d4: $70
    adc d                                         ; $13d5: $8a
    ld [hl], b                                    ; $13d6: $70
    adc d                                         ; $13d7: $8a
    sub b                                         ; $13d8: $90
    adc b                                         ; $13d9: $88
    and b                                         ; $13da: $a0
    adc b                                         ; $13db: $88
    or b                                          ; $13dc: $b0
    adc b                                         ; $13dd: $88
    ret nz                                        ; $13de: $c0

    adc b                                         ; $13df: $88
    ret nc                                        ; $13e0: $d0

    adc b                                         ; $13e1: $88
    ldh [$ff87], a                                ; $13e2: $e0 $87
    nop                                           ; $13e4: $00

jr_000_13e5:
    add b                                         ; $13e5: $80
    db $10                                        ; $13e6: $10

jr_000_13e7:
    add b                                         ; $13e7: $80
    jr nz, @-$7e                                  ; $13e8: $20 $80

    jr nc, @-$7e                                  ; $13ea: $30 $80

    ld b, b                                       ; $13ec: $40
    add b                                         ; $13ed: $80
    ld d, b                                       ; $13ee: $50
    add b                                         ; $13ef: $80
    ld h, b                                       ; $13f0: $60
    add b                                         ; $13f1: $80
    ld [hl], b                                    ; $13f2: $70
    add b                                         ; $13f3: $80
    add b                                         ; $13f4: $80
    adc e                                         ; $13f5: $8b
    sub b                                         ; $13f6: $90
    adc e                                         ; $13f7: $8b
    and b                                         ; $13f8: $a0
    adc e                                         ; $13f9: $8b
    or b                                          ; $13fa: $b0
    adc e                                         ; $13fb: $8b
    ld [hl], b                                    ; $13fc: $70
    adc d                                         ; $13fd: $8a
    ld [hl], b                                    ; $13fe: $70
    adc d                                         ; $13ff: $8a
    ldh [$ff88], a                                ; $1400: $e0 $88
    ldh a, [$ff88]                                ; $1402: $f0 $88

Call_000_1404:
    nop                                           ; $1404: $00
    adc c                                         ; $1405: $89
    db $10                                        ; $1406: $10
    adc c                                         ; $1407: $89

jr_000_1408:
    jr nz, jr_000_1393                            ; $1408: $20 $89

jr_000_140a:
    jr nc, jr_000_1395                            ; $140a: $30 $89

    nop                                           ; $140c: $00
    add c                                         ; $140d: $81

jr_000_140e:
    db $10                                        ; $140e: $10
    add c                                         ; $140f: $81

jr_000_1410:
    jr nz, jr_000_1393                            ; $1410: $20 $81

    jr nc, jr_000_1395                            ; $1412: $30 $81

    ld b, b                                       ; $1414: $40
    add c                                         ; $1415: $81
    ld d, b                                       ; $1416: $50
    add c                                         ; $1417: $81
    ld h, b                                       ; $1418: $60
    add c                                         ; $1419: $81
    ld [hl], b                                    ; $141a: $70
    add c                                         ; $141b: $81
    add b                                         ; $141c: $80
    adc e                                         ; $141d: $8b
    and b                                         ; $141e: $a0
    adc e                                         ; $141f: $8b
    or b                                          ; $1420: $b0
    adc e                                         ; $1421: $8b
    ret nz                                        ; $1422: $c0

    adc e                                         ; $1423: $8b
    ld [hl], b                                    ; $1424: $70
    adc d                                         ; $1425: $8a
    ld [hl], b                                    ; $1426: $70
    adc d                                         ; $1427: $8a
    ld b, b                                       ; $1428: $40
    adc c                                         ; $1429: $89
    ld d, b                                       ; $142a: $50
    adc c                                         ; $142b: $89
    ld h, b                                       ; $142c: $60
    adc c                                         ; $142d: $89
    ld [hl], b                                    ; $142e: $70
    adc c                                         ; $142f: $89
    add b                                         ; $1430: $80
    adc c                                         ; $1431: $89
    sub b                                         ; $1432: $90
    adc c                                         ; $1433: $89
    nop                                           ; $1434: $00
    add d                                         ; $1435: $82

jr_000_1436:
    db $10                                        ; $1436: $10
    add d                                         ; $1437: $82

jr_000_1438:
    jr nz, jr_000_13bc                            ; $1438: $20 $82

    jr nc, jr_000_13be                            ; $143a: $30 $82

    ld b, b                                       ; $143c: $40
    add d                                         ; $143d: $82
    ld d, b                                       ; $143e: $50
    add d                                         ; $143f: $82
    ld h, b                                       ; $1440: $60
    add d                                         ; $1441: $82
    ld [hl], b                                    ; $1442: $70
    add d                                         ; $1443: $82
    add b                                         ; $1444: $80
    adc e                                         ; $1445: $8b
    sub b                                         ; $1446: $90
    adc e                                         ; $1447: $8b
    and b                                         ; $1448: $a0
    adc e                                         ; $1449: $8b
    or b                                          ; $144a: $b0
    adc e                                         ; $144b: $8b
    ld [hl], b                                    ; $144c: $70
    adc d                                         ; $144d: $8a
    ld [hl], b                                    ; $144e: $70
    adc d                                         ; $144f: $8a
    and b                                         ; $1450: $a0
    adc c                                         ; $1451: $89
    or b                                          ; $1452: $b0
    adc c                                         ; $1453: $89
    ret nz                                        ; $1454: $c0

    adc c                                         ; $1455: $89
    ret nc                                        ; $1456: $d0

    adc c                                         ; $1457: $89
    ldh [$ff89], a                                ; $1458: $e0 $89
    ldh a, [$ff89]                                ; $145a: $f0 $89
    nop                                           ; $145c: $00
    add e                                         ; $145d: $83
    db $10                                        ; $145e: $10

jr_000_145f:
    add e                                         ; $145f: $83
    jr nz, jr_000_13e5                            ; $1460: $20 $83

    jr nc, jr_000_13e7                            ; $1462: $30 $83

    ld b, b                                       ; $1464: $40
    add e                                         ; $1465: $83
    ld d, b                                       ; $1466: $50
    add e                                         ; $1467: $83
    ld h, b                                       ; $1468: $60
    add e                                         ; $1469: $83
    ld [hl], b                                    ; $146a: $70
    add e                                         ; $146b: $83
    add b                                         ; $146c: $80
    adc e                                         ; $146d: $8b
    and b                                         ; $146e: $a0
    adc e                                         ; $146f: $8b
    or b                                          ; $1470: $b0
    adc e                                         ; $1471: $8b
    ret nz                                        ; $1472: $c0

    adc e                                         ; $1473: $8b
    ld [hl], b                                    ; $1474: $70
    adc d                                         ; $1475: $8a
    ld [hl], b                                    ; $1476: $70
    adc d                                         ; $1477: $8a
    nop                                           ; $1478: $00
    adc d                                         ; $1479: $8a
    db $10                                        ; $147a: $10
    adc d                                         ; $147b: $8a
    jr nz, jr_000_1408                            ; $147c: $20 $8a

    jr nc, jr_000_140a                            ; $147e: $30 $8a

    ld b, b                                       ; $1480: $40
    adc d                                         ; $1481: $8a
    ld d, b                                       ; $1482: $50
    adc d                                         ; $1483: $8a
    nop                                           ; $1484: $00
    add h                                         ; $1485: $84
    db $10                                        ; $1486: $10
    add h                                         ; $1487: $84

jr_000_1488:
    jr nz, jr_000_140e                            ; $1488: $20 $84

jr_000_148a:
    jr nc, jr_000_1410                            ; $148a: $30 $84

    ld b, b                                       ; $148c: $40
    add h                                         ; $148d: $84
    ld d, b                                       ; $148e: $50
    add h                                         ; $148f: $84
    ld h, b                                       ; $1490: $60
    add h                                         ; $1491: $84
    ld [hl], b                                    ; $1492: $70
    add h                                         ; $1493: $84
    add b                                         ; $1494: $80
    adc e                                         ; $1495: $8b
    sub b                                         ; $1496: $90
    adc e                                         ; $1497: $8b
    and b                                         ; $1498: $a0
    adc e                                         ; $1499: $8b
    or b                                          ; $149a: $b0
    adc e                                         ; $149b: $8b
    ld [hl], b                                    ; $149c: $70
    adc d                                         ; $149d: $8a
    ld [hl], b                                    ; $149e: $70
    adc d                                         ; $149f: $8a
    add b                                         ; $14a0: $80
    adc d                                         ; $14a1: $8a
    sub b                                         ; $14a2: $90
    adc d                                         ; $14a3: $8a
    nop                                           ; $14a4: $00
    adc h                                         ; $14a5: $8c
    db $10                                        ; $14a6: $10
    adc h                                         ; $14a7: $8c
    jr nz, jr_000_1436                            ; $14a8: $20 $8c

    jr nc, jr_000_1438                            ; $14aa: $30 $8c

    ld b, b                                       ; $14ac: $40
    adc h                                         ; $14ad: $8c
    ld d, b                                       ; $14ae: $50
    adc h                                         ; $14af: $8c
    ld h, b                                       ; $14b0: $60

jr_000_14b1:
    adc h                                         ; $14b1: $8c
    ld [hl], b                                    ; $14b2: $70

jr_000_14b3:
    adc h                                         ; $14b3: $8c
    add b                                         ; $14b4: $80
    adc h                                         ; $14b5: $8c
    sub b                                         ; $14b6: $90
    adc h                                         ; $14b7: $8c
    and b                                         ; $14b8: $a0
    adc h                                         ; $14b9: $8c
    or b                                          ; $14ba: $b0
    adc h                                         ; $14bb: $8c
    add b                                         ; $14bc: $80
    adc e                                         ; $14bd: $8b
    and b                                         ; $14be: $a0
    adc e                                         ; $14bf: $8b
    or b                                          ; $14c0: $b0
    adc e                                         ; $14c1: $8b
    ret nz                                        ; $14c2: $c0

    adc e                                         ; $14c3: $8b
    ld [hl], b                                    ; $14c4: $70
    adc d                                         ; $14c5: $8a
    ld [hl], b                                    ; $14c6: $70
    adc d                                         ; $14c7: $8a
    and b                                         ; $14c8: $a0
    adc d                                         ; $14c9: $8a
    or b                                          ; $14ca: $b0
    adc d                                         ; $14cb: $8a
    nop                                           ; $14cc: $00
    adc l                                         ; $14cd: $8d
    db $10                                        ; $14ce: $10
    adc l                                         ; $14cf: $8d
    jr nz, jr_000_145f                            ; $14d0: $20 $8d

    jr nc, @-$71                                  ; $14d2: $30 $8d

    ld b, b                                       ; $14d4: $40
    adc l                                         ; $14d5: $8d
    ld d, b                                       ; $14d6: $50
    adc l                                         ; $14d7: $8d
    ld h, b                                       ; $14d8: $60
    adc l                                         ; $14d9: $8d

jr_000_14da:
    ld [hl], b                                    ; $14da: $70
    adc l                                         ; $14db: $8d

jr_000_14dc:
    add b                                         ; $14dc: $80
    adc l                                         ; $14dd: $8d
    sub b                                         ; $14de: $90
    adc l                                         ; $14df: $8d
    and b                                         ; $14e0: $a0
    adc l                                         ; $14e1: $8d
    or b                                          ; $14e2: $b0
    adc l                                         ; $14e3: $8d
    add b                                         ; $14e4: $80
    adc e                                         ; $14e5: $8b
    sub b                                         ; $14e6: $90
    adc e                                         ; $14e7: $8b
    and b                                         ; $14e8: $a0
    adc e                                         ; $14e9: $8b
    or b                                          ; $14ea: $b0
    adc e                                         ; $14eb: $8b
    ld [hl], b                                    ; $14ec: $70
    adc d                                         ; $14ed: $8a
    ld [hl], b                                    ; $14ee: $70
    adc d                                         ; $14ef: $8a
    ret nz                                        ; $14f0: $c0

    adc d                                         ; $14f1: $8a
    ret nc                                        ; $14f2: $d0

    adc d                                         ; $14f3: $8a
    nop                                           ; $14f4: $00

jr_000_14f5:
    adc [hl]                                      ; $14f5: $8e
    db $10                                        ; $14f6: $10

jr_000_14f7:
    adc [hl]                                      ; $14f7: $8e
    jr nz, jr_000_1488                            ; $14f8: $20 $8e

    jr nc, jr_000_148a                            ; $14fa: $30 $8e

    ld b, b                                       ; $14fc: $40
    adc [hl]                                      ; $14fd: $8e
    ld d, b                                       ; $14fe: $50
    adc [hl]                                      ; $14ff: $8e
    ld h, b                                       ; $1500: $60
    adc [hl]                                      ; $1501: $8e
    ld [hl], b                                    ; $1502: $70

jr_000_1503:
    adc [hl]                                      ; $1503: $8e
    add b                                         ; $1504: $80

jr_000_1505:
    adc [hl]                                      ; $1505: $8e
    sub b                                         ; $1506: $90
    adc [hl]                                      ; $1507: $8e
    and b                                         ; $1508: $a0
    adc [hl]                                      ; $1509: $8e
    or b                                          ; $150a: $b0
    adc [hl]                                      ; $150b: $8e
    add b                                         ; $150c: $80
    adc e                                         ; $150d: $8b
    and b                                         ; $150e: $a0
    adc e                                         ; $150f: $8b
    or b                                          ; $1510: $b0
    adc e                                         ; $1511: $8b
    ret nz                                        ; $1512: $c0

    adc e                                         ; $1513: $8b
    ld [hl], b                                    ; $1514: $70
    adc d                                         ; $1515: $8a
    ld [hl], b                                    ; $1516: $70
    adc d                                         ; $1517: $8a
    ldh [$ff8a], a                                ; $1518: $e0 $8a
    ldh a, [$ff8a]                                ; $151a: $f0 $8a
    nop                                           ; $151c: $00
    adc a                                         ; $151d: $8f
    db $10                                        ; $151e: $10
    adc a                                         ; $151f: $8f
    jr nz, jr_000_14b1                            ; $1520: $20 $8f

    jr nc, jr_000_14b3                            ; $1522: $30 $8f

    ld b, b                                       ; $1524: $40
    adc a                                         ; $1525: $8f
    ld d, b                                       ; $1526: $50
    adc a                                         ; $1527: $8f
    ld h, b                                       ; $1528: $60
    adc a                                         ; $1529: $8f
    ld [hl], b                                    ; $152a: $70
    adc a                                         ; $152b: $8f

jr_000_152c:
    add b                                         ; $152c: $80
    adc a                                         ; $152d: $8f

jr_000_152e:
    sub b                                         ; $152e: $90
    adc a                                         ; $152f: $8f
    and b                                         ; $1530: $a0
    adc a                                         ; $1531: $8f
    or b                                          ; $1532: $b0
    adc a                                         ; $1533: $8f
    add b                                         ; $1534: $80
    adc e                                         ; $1535: $8b
    sub b                                         ; $1536: $90
    adc e                                         ; $1537: $8b
    and b                                         ; $1538: $a0
    adc e                                         ; $1539: $8b
    or b                                          ; $153a: $b0
    adc e                                         ; $153b: $8b
    ld [hl], b                                    ; $153c: $70
    adc d                                         ; $153d: $8a
    ld [hl], b                                    ; $153e: $70
    adc d                                         ; $153f: $8a
    nop                                           ; $1540: $00
    adc e                                         ; $1541: $8b
    db $10                                        ; $1542: $10
    adc e                                         ; $1543: $8b
    nop                                           ; $1544: $00
    sub b                                         ; $1545: $90
    db $10                                        ; $1546: $10
    sub b                                         ; $1547: $90
    jr nz, jr_000_14da                            ; $1548: $20 $90

    jr nc, jr_000_14dc                            ; $154a: $30 $90

    ld b, b                                       ; $154c: $40
    sub b                                         ; $154d: $90
    ld d, b                                       ; $154e: $50
    sub b                                         ; $154f: $90
    ld h, b                                       ; $1550: $60
    sub b                                         ; $1551: $90
    ld [hl], b                                    ; $1552: $70
    sub b                                         ; $1553: $90
    add b                                         ; $1554: $80

jr_000_1555:
    sub b                                         ; $1555: $90
    sub b                                         ; $1556: $90

jr_000_1557:
    sub b                                         ; $1557: $90
    and b                                         ; $1558: $a0
    sub b                                         ; $1559: $90
    or b                                          ; $155a: $b0
    sub b                                         ; $155b: $90
    add b                                         ; $155c: $80
    adc e                                         ; $155d: $8b
    and b                                         ; $155e: $a0
    adc e                                         ; $155f: $8b
    or b                                          ; $1560: $b0
    adc e                                         ; $1561: $8b
    ret nz                                        ; $1562: $c0

    adc e                                         ; $1563: $8b
    ld [hl], b                                    ; $1564: $70
    adc d                                         ; $1565: $8a
    ld [hl], b                                    ; $1566: $70
    adc d                                         ; $1567: $8a
    jr nz, jr_000_14f5                            ; $1568: $20 $8b

    jr nc, jr_000_14f7                            ; $156a: $30 $8b

    nop                                           ; $156c: $00
    sub c                                         ; $156d: $91
    db $10                                        ; $156e: $10
    sub c                                         ; $156f: $91
    jr nz, jr_000_1503                            ; $1570: $20 $91

    jr nc, jr_000_1505                            ; $1572: $30 $91

    ld b, b                                       ; $1574: $40
    sub c                                         ; $1575: $91
    ld d, b                                       ; $1576: $50
    sub c                                         ; $1577: $91
    ld h, b                                       ; $1578: $60
    sub c                                         ; $1579: $91

jr_000_157a:
    ld [hl], b                                    ; $157a: $70
    sub c                                         ; $157b: $91

jr_000_157c:
    add b                                         ; $157c: $80
    sub c                                         ; $157d: $91
    sub b                                         ; $157e: $90
    sub c                                         ; $157f: $91
    and b                                         ; $1580: $a0
    sub c                                         ; $1581: $91
    or b                                          ; $1582: $b0
    sub c                                         ; $1583: $91
    add b                                         ; $1584: $80
    adc e                                         ; $1585: $8b
    sub b                                         ; $1586: $90
    adc e                                         ; $1587: $8b
    and b                                         ; $1588: $a0
    adc e                                         ; $1589: $8b
    or b                                          ; $158a: $b0
    adc e                                         ; $158b: $8b
    ld [hl], b                                    ; $158c: $70
    adc d                                         ; $158d: $8a
    ld [hl], b                                    ; $158e: $70
    adc d                                         ; $158f: $8a
    ld b, b                                       ; $1590: $40
    adc e                                         ; $1591: $8b
    ld d, b                                       ; $1592: $50
    adc e                                         ; $1593: $8b
    nop                                           ; $1594: $00
    sub d                                         ; $1595: $92
    db $10                                        ; $1596: $10
    sub d                                         ; $1597: $92
    jr nz, jr_000_152c                            ; $1598: $20 $92

    jr nc, jr_000_152e                            ; $159a: $30 $92

    ld b, b                                       ; $159c: $40
    sub d                                         ; $159d: $92
    ld d, b                                       ; $159e: $50
    sub d                                         ; $159f: $92
    ld h, b                                       ; $15a0: $60
    sub d                                         ; $15a1: $92
    ld [hl], b                                    ; $15a2: $70

jr_000_15a3:
    sub d                                         ; $15a3: $92
    add b                                         ; $15a4: $80

jr_000_15a5:
    sub d                                         ; $15a5: $92
    sub b                                         ; $15a6: $90
    sub d                                         ; $15a7: $92
    and b                                         ; $15a8: $a0
    sub d                                         ; $15a9: $92
    or b                                          ; $15aa: $b0
    sub d                                         ; $15ab: $92
    add b                                         ; $15ac: $80
    adc e                                         ; $15ad: $8b
    and b                                         ; $15ae: $a0
    adc e                                         ; $15af: $8b
    or b                                          ; $15b0: $b0
    adc e                                         ; $15b1: $8b
    ret nz                                        ; $15b2: $c0

    adc e                                         ; $15b3: $8b
    ld [hl], b                                    ; $15b4: $70
    adc d                                         ; $15b5: $8a
    ld [hl], b                                    ; $15b6: $70
    adc d                                         ; $15b7: $8a
    ld h, b                                       ; $15b8: $60
    adc e                                         ; $15b9: $8b
    ld [hl], b                                    ; $15ba: $70
    adc e                                         ; $15bb: $8b
    nop                                           ; $15bc: $00
    sub e                                         ; $15bd: $93
    db $10                                        ; $15be: $10
    sub e                                         ; $15bf: $93
    jr nz, jr_000_1555                            ; $15c0: $20 $93

    jr nc, jr_000_1557                            ; $15c2: $30 $93

    ld b, b                                       ; $15c4: $40
    sub e                                         ; $15c5: $93
    ld d, b                                       ; $15c6: $50
    sub e                                         ; $15c7: $93
    ld h, b                                       ; $15c8: $60
    sub e                                         ; $15c9: $93
    ld [hl], b                                    ; $15ca: $70
    sub e                                         ; $15cb: $93

jr_000_15cc:
    add b                                         ; $15cc: $80
    sub e                                         ; $15cd: $93

jr_000_15ce:
    sub b                                         ; $15ce: $90
    sub e                                         ; $15cf: $93
    and b                                         ; $15d0: $a0
    sub e                                         ; $15d1: $93
    or b                                          ; $15d2: $b0
    sub e                                         ; $15d3: $93
    add b                                         ; $15d4: $80
    adc e                                         ; $15d5: $8b
    sub b                                         ; $15d6: $90
    adc e                                         ; $15d7: $8b
    and b                                         ; $15d8: $a0
    adc e                                         ; $15d9: $8b
    or b                                          ; $15da: $b0
    adc e                                         ; $15db: $8b
    ld [hl], b                                    ; $15dc: $70
    adc d                                         ; $15dd: $8a
    ld [hl], b                                    ; $15de: $70
    adc d                                         ; $15df: $8a
    nop                                           ; $15e0: $00
    sub h                                         ; $15e1: $94
    db $10                                        ; $15e2: $10
    sub h                                         ; $15e3: $94
    jr nz, jr_000_157a                            ; $15e4: $20 $94

    jr nc, jr_000_157c                            ; $15e6: $30 $94

    ld b, b                                       ; $15e8: $40
    sub h                                         ; $15e9: $94
    ld d, b                                       ; $15ea: $50
    sub h                                         ; $15eb: $94
    ld h, b                                       ; $15ec: $60
    sub h                                         ; $15ed: $94
    ld [hl], b                                    ; $15ee: $70
    sub h                                         ; $15ef: $94
    add b                                         ; $15f0: $80
    sub h                                         ; $15f1: $94
    sub b                                         ; $15f2: $90
    sub h                                         ; $15f3: $94
    and b                                         ; $15f4: $a0
    sub h                                         ; $15f5: $94
    or b                                          ; $15f6: $b0
    sub h                                         ; $15f7: $94
    ret nz                                        ; $15f8: $c0

    sub h                                         ; $15f9: $94
    ret nc                                        ; $15fa: $d0

    sub h                                         ; $15fb: $94
    ldh [$ff94], a                                ; $15fc: $e0 $94
    ldh a, [$ff94]                                ; $15fe: $f0 $94
    ret nz                                        ; $1600: $c0

    sub c                                         ; $1601: $91
    ret nc                                        ; $1602: $d0

    sub c                                         ; $1603: $91
    ld [hl], b                                    ; $1604: $70
    adc d                                         ; $1605: $8a
    ld [hl], b                                    ; $1606: $70
    adc d                                         ; $1607: $8a
    nop                                           ; $1608: $00
    sub l                                         ; $1609: $95
    db $10                                        ; $160a: $10
    sub l                                         ; $160b: $95
    jr nz, jr_000_15a3                            ; $160c: $20 $95

    jr nc, jr_000_15a5                            ; $160e: $30 $95

    ld b, b                                       ; $1610: $40
    sub l                                         ; $1611: $95
    ld d, b                                       ; $1612: $50
    sub l                                         ; $1613: $95
    ld h, b                                       ; $1614: $60
    sub l                                         ; $1615: $95
    ld [hl], b                                    ; $1616: $70
    sub l                                         ; $1617: $95
    add b                                         ; $1618: $80

jr_000_1619:
    sub l                                         ; $1619: $95
    sub b                                         ; $161a: $90
    sub l                                         ; $161b: $95
    and b                                         ; $161c: $a0
    sub l                                         ; $161d: $95
    or b                                          ; $161e: $b0
    sub l                                         ; $161f: $95
    ret nz                                        ; $1620: $c0

    sub l                                         ; $1621: $95
    ret nc                                        ; $1622: $d0

    sub l                                         ; $1623: $95
    ldh [$ff95], a                                ; $1624: $e0 $95
    ldh a, [$ff95]                                ; $1626: $f0 $95
    ret nz                                        ; $1628: $c0

    sub d                                         ; $1629: $92

jr_000_162a:
    ret nc                                        ; $162a: $d0

    sub d                                         ; $162b: $92

jr_000_162c:
    ld [hl], b                                    ; $162c: $70
    adc d                                         ; $162d: $8a
    ld [hl], b                                    ; $162e: $70
    adc d                                         ; $162f: $8a
    nop                                           ; $1630: $00
    sub [hl]                                      ; $1631: $96
    db $10                                        ; $1632: $10
    sub [hl]                                      ; $1633: $96
    jr nz, jr_000_15cc                            ; $1634: $20 $96

    jr nc, jr_000_15ce                            ; $1636: $30 $96

    ld b, b                                       ; $1638: $40
    sub [hl]                                      ; $1639: $96
    ld d, b                                       ; $163a: $50
    sub [hl]                                      ; $163b: $96
    ld h, b                                       ; $163c: $60
    sub [hl]                                      ; $163d: $96
    ld [hl], b                                    ; $163e: $70
    sub [hl]                                      ; $163f: $96
    add b                                         ; $1640: $80
    sub [hl]                                      ; $1641: $96

jr_000_1642:
    sub b                                         ; $1642: $90

jr_000_1643:
    sub [hl]                                      ; $1643: $96
    and b                                         ; $1644: $a0
    sub [hl]                                      ; $1645: $96
    or b                                          ; $1646: $b0
    sub [hl]                                      ; $1647: $96
    ret nz                                        ; $1648: $c0

    sub [hl]                                      ; $1649: $96
    ret nc                                        ; $164a: $d0

    sub [hl]                                      ; $164b: $96
    ldh [$ff96], a                                ; $164c: $e0 $96
    ldh a, [$ff96]                                ; $164e: $f0 $96
    ret nz                                        ; $1650: $c0

    sub e                                         ; $1651: $93
    ret nc                                        ; $1652: $d0

jr_000_1653:
    sub e                                         ; $1653: $93
    ld [hl], b                                    ; $1654: $70

jr_000_1655:
    adc d                                         ; $1655: $8a
    ld [hl], b                                    ; $1656: $70
    adc d                                         ; $1657: $8a
    ld h, b                                       ; $1658: $60
    adc d                                         ; $1659: $8a
    ld h, b                                       ; $165a: $60
    adc d                                         ; $165b: $8a
    ld h, b                                       ; $165c: $60
    adc d                                         ; $165d: $8a
    ld h, b                                       ; $165e: $60
    adc d                                         ; $165f: $8a
    ld h, b                                       ; $1660: $60
    adc d                                         ; $1661: $8a
    ld h, b                                       ; $1662: $60
    adc d                                         ; $1663: $8a
    ld h, b                                       ; $1664: $60
    adc d                                         ; $1665: $8a
    ld h, b                                       ; $1666: $60
    adc d                                         ; $1667: $8a
    ld h, b                                       ; $1668: $60
    adc d                                         ; $1669: $8a
    ld h, b                                       ; $166a: $60

jr_000_166b:
    adc d                                         ; $166b: $8a
    ld h, b                                       ; $166c: $60

jr_000_166d:
    adc d                                         ; $166d: $8a
    ld h, b                                       ; $166e: $60
    adc d                                         ; $166f: $8a
    ld h, b                                       ; $1670: $60
    adc d                                         ; $1671: $8a
    ld h, b                                       ; $1672: $60
    adc d                                         ; $1673: $8a
    ld h, b                                       ; $1674: $60
    adc d                                         ; $1675: $8a
    ld h, b                                       ; $1676: $60
    adc d                                         ; $1677: $8a
    ld h, b                                       ; $1678: $60
    adc d                                         ; $1679: $8a
    ld h, b                                       ; $167a: $60
    adc d                                         ; $167b: $8a
    ld [hl], b                                    ; $167c: $70
    adc d                                         ; $167d: $8a
    and d                                         ; $167e: $a2
    ld d, $ca                                     ; $167f: $16 $ca
    ld d, $f2                                     ; $1681: $16 $f2
    ld d, $1a                                     ; $1683: $16 $1a
    rla                                           ; $1685: $17
    ld b, d                                       ; $1686: $42
    rla                                           ; $1687: $17
    ld l, d                                       ; $1688: $6a
    rla                                           ; $1689: $17
    sub d                                         ; $168a: $92
    rla                                           ; $168b: $17
    cp d                                          ; $168c: $ba
    rla                                           ; $168d: $17
    ldh [c], a                                    ; $168e: $e2
    rla                                           ; $168f: $17
    ld a, [bc]                                    ; $1690: $0a
    jr jr_000_16c5                                ; $1691: $18 $32

    jr jr_000_16ef                                ; $1693: $18 $5a

    jr jr_000_1619                                ; $1695: $18 $82

jr_000_1697:
    jr jr_000_1643                                ; $1697: $18 $aa

    jr jr_000_166d                                ; $1699: $18 $d2

    jr jr_000_1697                                ; $169b: $18 $fa

    jr @+$24                                      ; $169d: $18 $22

    add hl, de                                    ; $169f: $19
    ld c, d                                       ; $16a0: $4a
    add hl, de                                    ; $16a1: $19
    or b                                          ; $16a2: $b0
    add d                                         ; $16a3: $82
    nop                                           ; $16a4: $00
    add b                                         ; $16a5: $80
    db $10                                        ; $16a6: $10
    add b                                         ; $16a7: $80
    jr nz, jr_000_162a                            ; $16a8: $20 $80

    jr nc, jr_000_162c                            ; $16aa: $30 $80

    ld b, b                                       ; $16ac: $40
    add b                                         ; $16ad: $80
    ld d, b                                       ; $16ae: $50
    add b                                         ; $16af: $80
    ld h, b                                       ; $16b0: $60
    add b                                         ; $16b1: $80
    ld [hl], b                                    ; $16b2: $70
    add b                                         ; $16b3: $80
    add b                                         ; $16b4: $80
    add b                                         ; $16b5: $80
    sub b                                         ; $16b6: $90
    add b                                         ; $16b7: $80
    and b                                         ; $16b8: $a0
    add b                                         ; $16b9: $80
    or b                                          ; $16ba: $b0
    add b                                         ; $16bb: $80
    ret nz                                        ; $16bc: $c0

    add b                                         ; $16bd: $80
    ret nc                                        ; $16be: $d0

    add b                                         ; $16bf: $80
    jr nc, jr_000_1642                            ; $16c0: $30 $80

    ldh [$ff80], a                                ; $16c2: $e0 $80
    nop                                           ; $16c4: $00

jr_000_16c5:
    add b                                         ; $16c5: $80
    db $10                                        ; $16c6: $10
    add b                                         ; $16c7: $80
    or b                                          ; $16c8: $b0
    add d                                         ; $16c9: $82
    ldh a, [$ff81]                                ; $16ca: $f0 $81
    nop                                           ; $16cc: $00
    add c                                         ; $16cd: $81
    db $10                                        ; $16ce: $10
    add c                                         ; $16cf: $81

Call_000_16d0:
    jr nz, jr_000_1653                            ; $16d0: $20 $81

    jr nc, jr_000_1655                            ; $16d2: $30 $81

    ld b, b                                       ; $16d4: $40

jr_000_16d5:
    add c                                         ; $16d5: $81
    ld d, b                                       ; $16d6: $50

jr_000_16d7:
    add c                                         ; $16d7: $81
    ld h, b                                       ; $16d8: $60
    add c                                         ; $16d9: $81
    ld [hl], b                                    ; $16da: $70
    add c                                         ; $16db: $81
    add b                                         ; $16dc: $80
    add c                                         ; $16dd: $81
    sub b                                         ; $16de: $90
    add c                                         ; $16df: $81
    and b                                         ; $16e0: $a0
    add c                                         ; $16e1: $81
    or b                                          ; $16e2: $b0
    add c                                         ; $16e3: $81
    ret nz                                        ; $16e4: $c0

    add c                                         ; $16e5: $81
    ret nc                                        ; $16e6: $d0

    add c                                         ; $16e7: $81
    jr nc, jr_000_166b                            ; $16e8: $30 $81

    ldh [$ff81], a                                ; $16ea: $e0 $81
    nop                                           ; $16ec: $00
    add c                                         ; $16ed: $81
    db $10                                        ; $16ee: $10

jr_000_16ef:
    add c                                         ; $16ef: $81
    ldh a, [$ff81]                                ; $16f0: $f0 $81
    or b                                          ; $16f2: $b0
    add d                                         ; $16f3: $82
    or b                                          ; $16f4: $b0
    add d                                         ; $16f5: $82
    or b                                          ; $16f6: $b0
    add d                                         ; $16f7: $82
    or b                                          ; $16f8: $b0
    add d                                         ; $16f9: $82
    or b                                          ; $16fa: $b0
    add d                                         ; $16fb: $82
    or b                                          ; $16fc: $b0
    add d                                         ; $16fd: $82

jr_000_16fe:
    or b                                          ; $16fe: $b0
    add d                                         ; $16ff: $82

jr_000_1700:
    or b                                          ; $1700: $b0
    add d                                         ; $1701: $82
    or b                                          ; $1702: $b0
    add d                                         ; $1703: $82
    or b                                          ; $1704: $b0
    add d                                         ; $1705: $82
    or b                                          ; $1706: $b0
    add d                                         ; $1707: $82
    or b                                          ; $1708: $b0
    add d                                         ; $1709: $82
    or b                                          ; $170a: $b0
    add d                                         ; $170b: $82
    or b                                          ; $170c: $b0
    add d                                         ; $170d: $82
    or b                                          ; $170e: $b0
    add d                                         ; $170f: $82
    or b                                          ; $1710: $b0
    add d                                         ; $1711: $82
    or b                                          ; $1712: $b0
    add d                                         ; $1713: $82
    or b                                          ; $1714: $b0
    add d                                         ; $1715: $82
    or b                                          ; $1716: $b0
    add d                                         ; $1717: $82
    or b                                          ; $1718: $b0
    add d                                         ; $1719: $82
    or b                                          ; $171a: $b0
    add d                                         ; $171b: $82
    or b                                          ; $171c: $b0
    add a                                         ; $171d: $87
    ret nz                                        ; $171e: $c0

    add a                                         ; $171f: $87
    ret nz                                        ; $1720: $c0

    add a                                         ; $1721: $87
    ret nz                                        ; $1722: $c0

    add a                                         ; $1723: $87
    ret nz                                        ; $1724: $c0

    add a                                         ; $1725: $87
    ret nz                                        ; $1726: $c0

jr_000_1727:
    add a                                         ; $1727: $87
    ret nz                                        ; $1728: $c0

jr_000_1729:
    add a                                         ; $1729: $87
    ret nz                                        ; $172a: $c0

    add a                                         ; $172b: $87
    ret nz                                        ; $172c: $c0

    add a                                         ; $172d: $87
    ret nz                                        ; $172e: $c0

    add a                                         ; $172f: $87
    ret nz                                        ; $1730: $c0

    add a                                         ; $1731: $87
    ret nz                                        ; $1732: $c0

    add a                                         ; $1733: $87
    ret nz                                        ; $1734: $c0

    add a                                         ; $1735: $87
    ret nz                                        ; $1736: $c0

    add a                                         ; $1737: $87
    ret nz                                        ; $1738: $c0

    add a                                         ; $1739: $87
    ret nz                                        ; $173a: $c0

    add a                                         ; $173b: $87
    ret nz                                        ; $173c: $c0

    add a                                         ; $173d: $87
    ret nc                                        ; $173e: $d0

    add a                                         ; $173f: $87
    or b                                          ; $1740: $b0
    add d                                         ; $1741: $82
    or b                                          ; $1742: $b0
    add d                                         ; $1743: $82
    ldh [$ff87], a                                ; $1744: $e0 $87
    nop                                           ; $1746: $00
    adc c                                         ; $1747: $89
    db $10                                        ; $1748: $10
    adc c                                         ; $1749: $89
    jr nz, jr_000_16d5                            ; $174a: $20 $89

    jr nc, jr_000_16d7                            ; $174c: $30 $89

    ld b, b                                       ; $174e: $40
    adc c                                         ; $174f: $89

jr_000_1750:
    ld d, b                                       ; $1750: $50
    adc c                                         ; $1751: $89

jr_000_1752:
    ld h, b                                       ; $1752: $60
    adc c                                         ; $1753: $89
    ld [hl], b                                    ; $1754: $70
    adc c                                         ; $1755: $89
    add b                                         ; $1756: $80
    adc c                                         ; $1757: $89
    sub b                                         ; $1758: $90
    adc c                                         ; $1759: $89
    and b                                         ; $175a: $a0
    adc c                                         ; $175b: $89
    or b                                          ; $175c: $b0
    adc c                                         ; $175d: $89
    ret nz                                        ; $175e: $c0

    adc c                                         ; $175f: $89
    ret nc                                        ; $1760: $d0

    adc c                                         ; $1761: $89
    ldh [$ff89], a                                ; $1762: $e0 $89
    ldh a, [$ff89]                                ; $1764: $f0 $89
    ldh a, [$ff87]                                ; $1766: $f0 $87
    or b                                          ; $1768: $b0
    add d                                         ; $1769: $82
    or b                                          ; $176a: $b0
    add d                                         ; $176b: $82
    ldh [$ff87], a                                ; $176c: $e0 $87
    nop                                           ; $176e: $00
    adc d                                         ; $176f: $8a
    db $10                                        ; $1770: $10
    adc d                                         ; $1771: $8a
    jr nz, jr_000_16fe                            ; $1772: $20 $8a

    jr nc, jr_000_1700                            ; $1774: $30 $8a

    ld b, b                                       ; $1776: $40
    adc d                                         ; $1777: $8a
    ld d, b                                       ; $1778: $50

jr_000_1779:
    adc d                                         ; $1779: $8a
    ld h, b                                       ; $177a: $60

jr_000_177b:
    adc d                                         ; $177b: $8a
    ld [hl], b                                    ; $177c: $70
    adc d                                         ; $177d: $8a
    add b                                         ; $177e: $80
    adc d                                         ; $177f: $8a
    sub b                                         ; $1780: $90
    adc d                                         ; $1781: $8a
    and b                                         ; $1782: $a0
    adc d                                         ; $1783: $8a
    or b                                          ; $1784: $b0
    adc d                                         ; $1785: $8a
    ret nz                                        ; $1786: $c0

    adc d                                         ; $1787: $8a
    ret nc                                        ; $1788: $d0

    adc d                                         ; $1789: $8a
    ldh [$ff8a], a                                ; $178a: $e0 $8a
    ldh a, [$ff8a]                                ; $178c: $f0 $8a
    ldh a, [$ff87]                                ; $178e: $f0 $87
    or b                                          ; $1790: $b0
    add d                                         ; $1791: $82
    or b                                          ; $1792: $b0
    add d                                         ; $1793: $82
    ldh [$ff87], a                                ; $1794: $e0 $87
    nop                                           ; $1796: $00
    adc e                                         ; $1797: $8b
    db $10                                        ; $1798: $10
    adc e                                         ; $1799: $8b
    jr nz, jr_000_1727                            ; $179a: $20 $8b

    jr nc, jr_000_1729                            ; $179c: $30 $8b

    ld b, b                                       ; $179e: $40
    adc e                                         ; $179f: $8b
    ld d, b                                       ; $17a0: $50
    adc e                                         ; $17a1: $8b

jr_000_17a2:
    ld h, b                                       ; $17a2: $60
    adc e                                         ; $17a3: $8b

jr_000_17a4:
    ld [hl], b                                    ; $17a4: $70
    adc e                                         ; $17a5: $8b
    add b                                         ; $17a6: $80
    adc e                                         ; $17a7: $8b
    sub b                                         ; $17a8: $90
    adc e                                         ; $17a9: $8b
    and b                                         ; $17aa: $a0
    adc e                                         ; $17ab: $8b
    or b                                          ; $17ac: $b0
    adc e                                         ; $17ad: $8b
    ret nz                                        ; $17ae: $c0

    adc e                                         ; $17af: $8b
    ret nc                                        ; $17b0: $d0

    adc e                                         ; $17b1: $8b
    ldh [$ff8b], a                                ; $17b2: $e0 $8b
    ldh a, [$ff8b]                                ; $17b4: $f0 $8b
    ldh a, [$ff87]                                ; $17b6: $f0 $87
    or b                                          ; $17b8: $b0
    add d                                         ; $17b9: $82
    or b                                          ; $17ba: $b0
    add d                                         ; $17bb: $82
    ldh [$ff87], a                                ; $17bc: $e0 $87
    nop                                           ; $17be: $00
    adc h                                         ; $17bf: $8c
    db $10                                        ; $17c0: $10
    adc h                                         ; $17c1: $8c
    jr nz, jr_000_1750                            ; $17c2: $20 $8c

    jr nc, jr_000_1752                            ; $17c4: $30 $8c

    ld b, b                                       ; $17c6: $40
    adc h                                         ; $17c7: $8c
    ld d, b                                       ; $17c8: $50
    adc h                                         ; $17c9: $8c
    ld h, b                                       ; $17ca: $60

jr_000_17cb:
    adc h                                         ; $17cb: $8c
    ld [hl], b                                    ; $17cc: $70

jr_000_17cd:
    adc h                                         ; $17cd: $8c
    add b                                         ; $17ce: $80
    adc h                                         ; $17cf: $8c
    sub b                                         ; $17d0: $90
    adc h                                         ; $17d1: $8c
    and b                                         ; $17d2: $a0
    adc h                                         ; $17d3: $8c
    or b                                          ; $17d4: $b0
    adc h                                         ; $17d5: $8c
    ret nz                                        ; $17d6: $c0

    adc h                                         ; $17d7: $8c
    ret nc                                        ; $17d8: $d0

    adc h                                         ; $17d9: $8c
    ldh [$ff8c], a                                ; $17da: $e0 $8c
    ldh a, [$ff8c]                                ; $17dc: $f0 $8c
    ldh a, [$ff87]                                ; $17de: $f0 $87
    or b                                          ; $17e0: $b0
    add d                                         ; $17e1: $82
    or b                                          ; $17e2: $b0
    add d                                         ; $17e3: $82
    ldh [$ff87], a                                ; $17e4: $e0 $87
    nop                                           ; $17e6: $00
    adc l                                         ; $17e7: $8d
    db $10                                        ; $17e8: $10
    adc l                                         ; $17e9: $8d
    jr nz, jr_000_1779                            ; $17ea: $20 $8d

    jr nc, jr_000_177b                            ; $17ec: $30 $8d

    ld b, b                                       ; $17ee: $40
    adc l                                         ; $17ef: $8d
    ld d, b                                       ; $17f0: $50
    adc l                                         ; $17f1: $8d
    ld h, b                                       ; $17f2: $60
    adc l                                         ; $17f3: $8d
    ld [hl], b                                    ; $17f4: $70
    adc l                                         ; $17f5: $8d
    add b                                         ; $17f6: $80
    adc l                                         ; $17f7: $8d
    sub b                                         ; $17f8: $90
    adc l                                         ; $17f9: $8d
    and b                                         ; $17fa: $a0
    adc l                                         ; $17fb: $8d
    or b                                          ; $17fc: $b0
    adc l                                         ; $17fd: $8d
    ret nz                                        ; $17fe: $c0

    adc l                                         ; $17ff: $8d
    ret nc                                        ; $1800: $d0

    adc l                                         ; $1801: $8d
    ldh [$ff8d], a                                ; $1802: $e0 $8d
    ldh a, [$ff8d]                                ; $1804: $f0 $8d
    ldh a, [$ff87]                                ; $1806: $f0 $87

jr_000_1808:
    or b                                          ; $1808: $b0
    add d                                         ; $1809: $82
    or b                                          ; $180a: $b0
    add d                                         ; $180b: $82
    ldh [$ff87], a                                ; $180c: $e0 $87
    nop                                           ; $180e: $00
    adc [hl]                                      ; $180f: $8e
    db $10                                        ; $1810: $10
    adc [hl]                                      ; $1811: $8e
    jr nz, jr_000_17a2                            ; $1812: $20 $8e

    jr nc, jr_000_17a4                            ; $1814: $30 $8e

    ld b, b                                       ; $1816: $40
    adc [hl]                                      ; $1817: $8e

Call_000_1818:
    ld d, b                                       ; $1818: $50
    adc [hl]                                      ; $1819: $8e
    ld h, b                                       ; $181a: $60
    adc [hl]                                      ; $181b: $8e
    ld [hl], b                                    ; $181c: $70
    adc [hl]                                      ; $181d: $8e
    add b                                         ; $181e: $80
    adc [hl]                                      ; $181f: $8e
    sub b                                         ; $1820: $90
    adc [hl]                                      ; $1821: $8e
    and b                                         ; $1822: $a0
    adc [hl]                                      ; $1823: $8e
    or b                                          ; $1824: $b0
    adc [hl]                                      ; $1825: $8e
    ret nz                                        ; $1826: $c0

    adc [hl]                                      ; $1827: $8e
    ret nc                                        ; $1828: $d0

    adc [hl]                                      ; $1829: $8e
    ldh [$ff8e], a                                ; $182a: $e0 $8e
    ldh a, [$ff8e]                                ; $182c: $f0 $8e
    ldh a, [$ff87]                                ; $182e: $f0 $87
    or b                                          ; $1830: $b0
    add d                                         ; $1831: $82
    or b                                          ; $1832: $b0
    add d                                         ; $1833: $82
    ldh [$ff87], a                                ; $1834: $e0 $87
    nop                                           ; $1836: $00
    adc a                                         ; $1837: $8f
    db $10                                        ; $1838: $10
    adc a                                         ; $1839: $8f
    jr nz, jr_000_17cb                            ; $183a: $20 $8f

    jr nc, jr_000_17cd                            ; $183c: $30 $8f

    ld b, b                                       ; $183e: $40
    adc a                                         ; $183f: $8f
    ld d, b                                       ; $1840: $50
    adc a                                         ; $1841: $8f
    ld h, b                                       ; $1842: $60
    adc a                                         ; $1843: $8f
    ld [hl], b                                    ; $1844: $70
    adc a                                         ; $1845: $8f
    add b                                         ; $1846: $80
    adc a                                         ; $1847: $8f
    sub b                                         ; $1848: $90
    adc a                                         ; $1849: $8f
    and b                                         ; $184a: $a0
    adc a                                         ; $184b: $8f
    or b                                          ; $184c: $b0
    adc a                                         ; $184d: $8f
    ret nz                                        ; $184e: $c0

    adc a                                         ; $184f: $8f

jr_000_1850:
    ret nc                                        ; $1850: $d0

    adc a                                         ; $1851: $8f
    ldh [$ff8f], a                                ; $1852: $e0 $8f
    ldh a, [$ff8f]                                ; $1854: $f0 $8f
    ldh a, [$ff87]                                ; $1856: $f0 $87
    or b                                          ; $1858: $b0
    add d                                         ; $1859: $82
    or b                                          ; $185a: $b0
    add d                                         ; $185b: $82
    nop                                           ; $185c: $00
    adc b                                         ; $185d: $88
    db $10                                        ; $185e: $10
    adc b                                         ; $185f: $88
    db $10                                        ; $1860: $10
    adc b                                         ; $1861: $88
    db $10                                        ; $1862: $10
    adc b                                         ; $1863: $88
    db $10                                        ; $1864: $10
    adc b                                         ; $1865: $88
    db $10                                        ; $1866: $10
    adc b                                         ; $1867: $88
    db $10                                        ; $1868: $10
    adc b                                         ; $1869: $88
    db $10                                        ; $186a: $10
    adc b                                         ; $186b: $88
    db $10                                        ; $186c: $10
    adc b                                         ; $186d: $88
    db $10                                        ; $186e: $10
    adc b                                         ; $186f: $88
    db $10                                        ; $1870: $10
    adc b                                         ; $1871: $88
    db $10                                        ; $1872: $10
    adc b                                         ; $1873: $88
    db $10                                        ; $1874: $10
    adc b                                         ; $1875: $88

jr_000_1876:
    db $10                                        ; $1876: $10
    adc b                                         ; $1877: $88

jr_000_1878:
    db $10                                        ; $1878: $10
    adc b                                         ; $1879: $88
    db $10                                        ; $187a: $10
    adc b                                         ; $187b: $88
    db $10                                        ; $187c: $10
    adc b                                         ; $187d: $88
    jr nz, jr_000_1808                            ; $187e: $20 $88

    or b                                          ; $1880: $b0
    add d                                         ; $1881: $82
    or b                                          ; $1882: $b0
    add d                                         ; $1883: $82
    or b                                          ; $1884: $b0
    add d                                         ; $1885: $82
    or b                                          ; $1886: $b0
    add d                                         ; $1887: $82
    or b                                          ; $1888: $b0
    add d                                         ; $1889: $82
    or b                                          ; $188a: $b0
    add d                                         ; $188b: $82
    or b                                          ; $188c: $b0
    add d                                         ; $188d: $82
    or b                                          ; $188e: $b0
    add d                                         ; $188f: $82
    or b                                          ; $1890: $b0
    add d                                         ; $1891: $82
    or b                                          ; $1892: $b0
    add d                                         ; $1893: $82
    or b                                          ; $1894: $b0
    add d                                         ; $1895: $82
    or b                                          ; $1896: $b0
    add d                                         ; $1897: $82
    or b                                          ; $1898: $b0
    add d                                         ; $1899: $82
    or b                                          ; $189a: $b0
    add d                                         ; $189b: $82
    or b                                          ; $189c: $b0
    add d                                         ; $189d: $82
    or b                                          ; $189e: $b0
    add d                                         ; $189f: $82
    or b                                          ; $18a0: $b0
    add d                                         ; $18a1: $82
    or b                                          ; $18a2: $b0
    add d                                         ; $18a3: $82
    or b                                          ; $18a4: $b0
    add d                                         ; $18a5: $82
    or b                                          ; $18a6: $b0
    add d                                         ; $18a7: $82
    or b                                          ; $18a8: $b0
    add d                                         ; $18a9: $82
    or b                                          ; $18aa: $b0
    add d                                         ; $18ab: $82
    or b                                          ; $18ac: $b0
    add d                                         ; $18ad: $82
    or b                                          ; $18ae: $b0
    add d                                         ; $18af: $82
    or b                                          ; $18b0: $b0
    add d                                         ; $18b1: $82
    or b                                          ; $18b2: $b0
    add d                                         ; $18b3: $82
    or b                                          ; $18b4: $b0
    add d                                         ; $18b5: $82
    or b                                          ; $18b6: $b0
    add d                                         ; $18b7: $82
    or b                                          ; $18b8: $b0
    add d                                         ; $18b9: $82
    or b                                          ; $18ba: $b0
    add d                                         ; $18bb: $82
    or b                                          ; $18bc: $b0
    add d                                         ; $18bd: $82
    or b                                          ; $18be: $b0
    add d                                         ; $18bf: $82
    or b                                          ; $18c0: $b0
    add d                                         ; $18c1: $82
    or b                                          ; $18c2: $b0
    add d                                         ; $18c3: $82
    or b                                          ; $18c4: $b0
    add d                                         ; $18c5: $82
    or b                                          ; $18c6: $b0

jr_000_18c7:
    add d                                         ; $18c7: $82
    sub b                                         ; $18c8: $90

jr_000_18c9:
    add h                                         ; $18c9: $84
    jr nz, jr_000_1850                            ; $18ca: $20 $84

Call_000_18cc:
    or b                                          ; $18cc: $b0
    add d                                         ; $18cd: $82
    or b                                          ; $18ce: $b0
    add d                                         ; $18cf: $82
    or b                                          ; $18d0: $b0
    add d                                         ; $18d1: $82
    or b                                          ; $18d2: $b0
    add d                                         ; $18d3: $82
    ret nz                                        ; $18d4: $c0

    add d                                         ; $18d5: $82
    ret nc                                        ; $18d6: $d0

    add d                                         ; $18d7: $82
    or b                                          ; $18d8: $b0
    add d                                         ; $18d9: $82
    or b                                          ; $18da: $b0
    add d                                         ; $18db: $82
    ldh [$ff82], a                                ; $18dc: $e0 $82
    ldh a, [$ff82]                                ; $18de: $f0 $82
    nop                                           ; $18e0: $00
    add h                                         ; $18e1: $84
    or b                                          ; $18e2: $b0
    add d                                         ; $18e3: $82
    or b                                          ; $18e4: $b0
    add d                                         ; $18e5: $82
    or b                                          ; $18e6: $b0
    add d                                         ; $18e7: $82
    add b                                         ; $18e8: $80
    add h                                         ; $18e9: $84
    nop                                           ; $18ea: $00
    add [hl]                                      ; $18eb: $86
    db $10                                        ; $18ec: $10
    add [hl]                                      ; $18ed: $86
    jr nz, jr_000_1876                            ; $18ee: $20 $86

    jr nc, jr_000_1878                            ; $18f0: $30 $86

    ld b, b                                       ; $18f2: $40
    add [hl]                                      ; $18f3: $86
    ld d, b                                       ; $18f4: $50
    add [hl]                                      ; $18f5: $86
    ld h, b                                       ; $18f6: $60
    add [hl]                                      ; $18f7: $86
    ld [hl], b                                    ; $18f8: $70
    add [hl]                                      ; $18f9: $86
    or b                                          ; $18fa: $b0
    add e                                         ; $18fb: $83
    ret nz                                        ; $18fc: $c0

    add e                                         ; $18fd: $83
    ret nc                                        ; $18fe: $d0

    add e                                         ; $18ff: $83
    ret nc                                        ; $1900: $d0

    add d                                         ; $1901: $82
    or b                                          ; $1902: $b0
    add d                                         ; $1903: $82
    ldh [$ff83], a                                ; $1904: $e0 $83
    ldh a, [$ff83]                                ; $1906: $f0 $83
    db $10                                        ; $1908: $10
    add h                                         ; $1909: $84
    or b                                          ; $190a: $b0
    add d                                         ; $190b: $82
    or b                                          ; $190c: $b0
    add d                                         ; $190d: $82
    add b                                         ; $190e: $80
    add h                                         ; $190f: $84
    add b                                         ; $1910: $80
    add a                                         ; $1911: $87
    add b                                         ; $1912: $80
    add [hl]                                      ; $1913: $86
    sub b                                         ; $1914: $90
    add [hl]                                      ; $1915: $86
    and b                                         ; $1916: $a0
    add [hl]                                      ; $1917: $86
    or b                                          ; $1918: $b0
    add [hl]                                      ; $1919: $86
    ret nz                                        ; $191a: $c0

    add [hl]                                      ; $191b: $86
    ret nc                                        ; $191c: $d0

    add [hl]                                      ; $191d: $86
    ldh [$ff86], a                                ; $191e: $e0 $86
    ldh a, [$ff86]                                ; $1920: $f0 $86
    ret nz                                        ; $1922: $c0

    add e                                         ; $1923: $83
    ret nz                                        ; $1924: $c0

    add e                                         ; $1925: $83
    ret nc                                        ; $1926: $d0

    add e                                         ; $1927: $83
    sub b                                         ; $1928: $90
    add e                                         ; $1929: $83
    and b                                         ; $192a: $a0
    add e                                         ; $192b: $83
    ld d, b                                       ; $192c: $50
    add h                                         ; $192d: $84
    ld h, b                                       ; $192e: $60
    add h                                         ; $192f: $84
    ld [hl], b                                    ; $1930: $70
    add h                                         ; $1931: $84
    or b                                          ; $1932: $b0
    add d                                         ; $1933: $82
    add b                                         ; $1934: $80
    add h                                         ; $1935: $84
    ret nc                                        ; $1936: $d0

    add e                                         ; $1937: $83
    sub b                                         ; $1938: $90
    add a                                         ; $1939: $87
    nop                                           ; $193a: $00
    add a                                         ; $193b: $87
    db $10                                        ; $193c: $10
    add a                                         ; $193d: $87
    jr nz, jr_000_18c7                            ; $193e: $20 $87

    jr nc, jr_000_18c9                            ; $1940: $30 $87

    ld b, b                                       ; $1942: $40
    add a                                         ; $1943: $87
    ld d, b                                       ; $1944: $50
    add a                                         ; $1945: $87
    ld h, b                                       ; $1946: $60
    add a                                         ; $1947: $87
    ld [hl], b                                    ; $1948: $70
    add a                                         ; $1949: $87
    ld b, b                                       ; $194a: $40
    add h                                         ; $194b: $84
    ld b, b                                       ; $194c: $40
    add h                                         ; $194d: $84
    ld b, b                                       ; $194e: $40
    add h                                         ; $194f: $84
    ld b, b                                       ; $1950: $40
    add h                                         ; $1951: $84
    ld b, b                                       ; $1952: $40
    add h                                         ; $1953: $84
    ld b, b                                       ; $1954: $40
    add h                                         ; $1955: $84
    ld b, b                                       ; $1956: $40
    add h                                         ; $1957: $84
    ld b, b                                       ; $1958: $40
    add h                                         ; $1959: $84
    ld b, b                                       ; $195a: $40
    add h                                         ; $195b: $84
    ld b, b                                       ; $195c: $40
    add h                                         ; $195d: $84
    ld b, b                                       ; $195e: $40
    add h                                         ; $195f: $84
    ld b, b                                       ; $1960: $40
    add h                                         ; $1961: $84
    ld b, b                                       ; $1962: $40
    add h                                         ; $1963: $84
    ld b, b                                       ; $1964: $40
    add h                                         ; $1965: $84
    ld b, b                                       ; $1966: $40
    add h                                         ; $1967: $84
    ld b, b                                       ; $1968: $40
    add h                                         ; $1969: $84
    ld b, b                                       ; $196a: $40
    add h                                         ; $196b: $84
    ld b, b                                       ; $196c: $40
    add h                                         ; $196d: $84
    ld b, b                                       ; $196e: $40
    add h                                         ; $196f: $84
    ld b, b                                       ; $1970: $40
    add h                                         ; $1971: $84

Call_000_1972:
    pop de                                        ; $1972: $d1
    ld bc, $0000                                  ; $1973: $01 $00 $00

jr_000_1976:
    cp $64                                        ; $1976: $fe $64
    jr c, jr_000_197f                             ; $1978: $38 $05

    sub $64                                       ; $197a: $d6 $64
    inc c                                         ; $197c: $0c
    jr jr_000_1976                                ; $197d: $18 $f7

jr_000_197f:
    cp $0a                                        ; $197f: $fe $0a
    jr c, jr_000_1988                             ; $1981: $38 $05

    sub $0a                                       ; $1983: $d6 $0a
    inc b                                         ; $1985: $04
    jr jr_000_197f                                ; $1986: $18 $f7

jr_000_1988:
    ld l, a                                       ; $1988: $6f
    ld a, c                                       ; $1989: $79
    and a                                         ; $198a: $a7
    jr nz, jr_000_1995                            ; $198b: $20 $08

    ld c, $0a                                     ; $198d: $0e $0a
    ld a, b                                       ; $198f: $78
    and a                                         ; $1990: $a7
    jr nz, jr_000_1995                            ; $1991: $20 $02

    ld b, $0a                                     ; $1993: $06 $0a

jr_000_1995:
    ld a, c                                       ; $1995: $79
    push af                                       ; $1996: $f5
    ld a, b                                       ; $1997: $78
    push af                                       ; $1998: $f5
    ld a, l                                       ; $1999: $7d
    ld l, e                                       ; $199a: $6b
    ld h, d                                       ; $199b: $62
    jp hl                                         ; $199c: $e9


    pop de                                        ; $199d: $d1
    ld bc, $ff9c                                  ; $199e: $01 $9c $ff
    xor a                                         ; $19a1: $af

jr_000_19a2:
    add hl, bc                                    ; $19a2: $09
    bit 7, h                                      ; $19a3: $cb $7c
    jr nz, jr_000_19aa                            ; $19a5: $20 $03

    inc a                                         ; $19a7: $3c
    jr jr_000_19a2                                ; $19a8: $18 $f8

jr_000_19aa:
    push af                                       ; $19aa: $f5
    ld bc, $000a                                  ; $19ab: $01 $0a $00
    ld a, $09                                     ; $19ae: $3e $09

jr_000_19b0:
    add hl, bc                                    ; $19b0: $09
    bit 7, h                                      ; $19b1: $cb $7c
    jr z, jr_000_19b8                             ; $19b3: $28 $03

    dec a                                         ; $19b5: $3d
    jr jr_000_19b0                                ; $19b6: $18 $f8

jr_000_19b8:
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
    ld [ROMBankSwitchTrigger], a                  ; $19d8: $ea $00 $20
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
    ld [ROMBankSwitchTrigger], a                  ; $1a41: $ea $00 $20
    ret                                           ; $1a44: $c9


Call_000_1a45:
    ld a, [rActiveROMBank]                        ; $1a45: $fa $12 $c3
    push af                                       ; $1a48: $f5
    ld a, $03                                     ; $1a49: $3e $03
    ld [rActiveROMBank], a                        ; $1a4b: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $1a4e: $ea $00 $20
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

jr_000_1a64:
    ld a, [hl+]                                   ; $1a64: $2a
    and a                                         ; $1a65: $a7
    jr z, jr_000_1a80                             ; $1a66: $28 $18

    ld b, a                                       ; $1a68: $47
    ld a, [hl+]                                   ; $1a69: $2a
    ld c, a                                       ; $1a6a: $4f

jr_000_1a6b:
    ld a, [hl+]                                   ; $1a6b: $2a
    ld e, a                                       ; $1a6c: $5f
    ld a, [hl+]                                   ; $1a6d: $2a
    ld d, a                                       ; $1a6e: $57
    and e                                         ; $1a6f: $a3
    cp $ff                                        ; $1a70: $fe $ff
    jr z, jr_000_1a64                             ; $1a72: $28 $f0

    push bc                                       ; $1a74: $c5
    push hl                                       ; $1a75: $e5
    call Call_000_1a88                            ; $1a76: $cd $88 $1a
    pop hl                                        ; $1a79: $e1
    pop bc                                        ; $1a7a: $c1
    add b                                         ; $1a7b: $80
    inc a                                         ; $1a7c: $3c
    ld b, a                                       ; $1a7d: $47
    jr jr_000_1a6b                                ; $1a7e: $18 $eb

jr_000_1a80:
    pop af                                        ; $1a80: $f1
    ld [rActiveROMBank], a                        ; $1a81: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $1a84: $ea $00 $20
    ret                                           ; $1a87: $c9


Call_000_1a88:
    ld a, [rActiveROMBank]                        ; $1a88: $fa $12 $c3
    push af                                       ; $1a8b: $f5
    ld a, $00                                     ; $1a8c: $3e $00
    ld [rActiveROMBank], a                        ; $1a8e: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $1a91: $ea $00 $20
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
    jr z, jr_000_1ad0                             ; $1abc: $28 $12

    push af                                       ; $1abe: $f5
    add b                                         ; $1abf: $80
    ld [rBGTileCopyDestX], a                      ; $1ac0: $ea $53 $c3
    ld a, c                                       ; $1ac3: $79
    ld [rBGTileCopySourceY], a                    ; $1ac4: $ea $52 $c3
    add $09                                       ; $1ac7: $c6 $09
    ld [rBGTileCopyDestY], a                      ; $1ac9: $ea $54 $c3
    call PrepareBGTileCopy                        ; $1acc: $cd $b3 $08
    pop af                                        ; $1acf: $f1

jr_000_1ad0:
    ld e, a                                       ; $1ad0: $5f
    pop af                                        ; $1ad1: $f1
    ld [rActiveROMBank], a                        ; $1ad2: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $1ad5: $ea $00 $20
    ld a, e                                       ; $1ad8: $7b
    ret                                           ; $1ad9: $c9


Call_000_1ada:
    ld a, [rInputButtonsHeld]                     ; $1ada: $fa $1a $c3
    cp $64                                        ; $1add: $fe $64
    jr nz, jr_000_1ae6                            ; $1adf: $20 $05

    call Call_000_1d22                            ; $1ae1: $cd $22 $1d
    jr z, jr_000_1b1c                             ; $1ae4: $28 $36

jr_000_1ae6:
    ld hl, $ad04                                  ; $1ae6: $21 $04 $ad
    call Call_000_1b83                            ; $1ae9: $cd $83 $1b
    ld a, [$ba06]                                 ; $1aec: $fa $06 $ba
    cp d                                          ; $1aef: $ba
    jr nz, jr_000_1b06                            ; $1af0: $20 $14

    ld a, [$ba07]                                 ; $1af2: $fa $07 $ba
    cp e                                          ; $1af5: $bb
    jr nz, jr_000_1b06                            ; $1af6: $20 $0e

    ld hl, $ad04                                  ; $1af8: $21 $04 $ad
    ld de, $a000                                  ; $1afb: $11 $00 $a0
    ld bc, $0d02                                  ; $1afe: $01 $02 $0d
    call Call_000_04db                            ; $1b01: $cd $db $04
    jr jr_000_1b18                                ; $1b04: $18 $12

jr_000_1b06:
    ld hl, $a000                                  ; $1b06: $21 $00 $a0
    call Call_000_1b83                            ; $1b09: $cd $83 $1b
    ld a, [$ad02]                                 ; $1b0c: $fa $02 $ad
    cp d                                          ; $1b0f: $ba
    jr nz, jr_000_1b1c                            ; $1b10: $20 $0a

    ld a, [$ad03]                                 ; $1b12: $fa $03 $ad
    cp e                                          ; $1b15: $bb
    jr nz, jr_000_1b1c                            ; $1b16: $20 $04

jr_000_1b18:
    call Call_000_1b60                            ; $1b18: $cd $60 $1b
    ret z                                         ; $1b1b: $c8

jr_000_1b1c:
    jp Jump_000_1b96                              ; $1b1c: $c3 $96 $1b


Call_000_1b1f:
Jump_000_1b1f:
    ld hl, HiddenProgrammerCredits                ; $1b1f: $21 $5e $03
    ld de, $aced                                  ; $1b22: $11 $ed $ac
    ld bc, $0010                                  ; $1b25: $01 $10 $00
    call Call_000_04db                            ; $1b28: $cd $db $04
    ld hl, TODO                                   ; $1b2b: $21 $6e $03
    ld de, $acfd                                  ; $1b2e: $11 $fd $ac
    ld bc, $0005                                  ; $1b31: $01 $05 $00
    call Call_000_04db                            ; $1b34: $cd $db $04
    ld hl, $a000                                  ; $1b37: $21 $00 $a0
    call Call_000_1b83                            ; $1b3a: $cd $83 $1b
    ld a, d                                       ; $1b3d: $7a
    ld [$ad02], a                                 ; $1b3e: $ea $02 $ad
    ld a, e                                       ; $1b41: $7b
    ld [$ad03], a                                 ; $1b42: $ea $03 $ad
    ld hl, $a000                                  ; $1b45: $21 $00 $a0
    ld de, $ad04                                  ; $1b48: $11 $04 $ad
    ld bc, $0d02                                  ; $1b4b: $01 $02 $0d
    call Call_000_04db                            ; $1b4e: $cd $db $04
    ld hl, $ad04                                  ; $1b51: $21 $04 $ad
    call Call_000_1b83                            ; $1b54: $cd $83 $1b
    ld a, d                                       ; $1b57: $7a
    ld [$ba06], a                                 ; $1b58: $ea $06 $ba
    ld a, e                                       ; $1b5b: $7b
    ld [$ba07], a                                 ; $1b5c: $ea $07 $ba
    ret                                           ; $1b5f: $c9


Call_000_1b60:
    ld hl, $aced                                  ; $1b60: $21 $ed $ac
    ld de, HiddenProgrammerCredits                ; $1b63: $11 $5e $03
    ld c, $10                                     ; $1b66: $0e $10

jr_000_1b68:
    ld a, [de]                                    ; $1b68: $1a
    cp [hl]                                       ; $1b69: $be
    jr nz, jr_000_1b82                            ; $1b6a: $20 $16

    inc de                                        ; $1b6c: $13
    inc hl                                        ; $1b6d: $23
    dec c                                         ; $1b6e: $0d
    jr nz, jr_000_1b68                            ; $1b6f: $20 $f7

    ld hl, $acfd                                  ; $1b71: $21 $fd $ac
    ld de, TODO                                   ; $1b74: $11 $6e $03
    ld c, $05                                     ; $1b77: $0e $05

jr_000_1b79:
    ld a, [de]                                    ; $1b79: $1a
    cp [hl]                                       ; $1b7a: $be
    jr nz, jr_000_1b82                            ; $1b7b: $20 $05

    inc de                                        ; $1b7d: $13
    inc hl                                        ; $1b7e: $23
    dec c                                         ; $1b7f: $0d
    jr nz, jr_000_1b79                            ; $1b80: $20 $f7

jr_000_1b82:
    ret                                           ; $1b82: $c9


Call_000_1b83:
    ld bc, $0d02                                  ; $1b83: $01 $02 $0d
    ld de, $0000                                  ; $1b86: $11 $00 $00

jr_000_1b89:
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
    jr nz, jr_000_1b89                            ; $1b93: $20 $f4

    ret                                           ; $1b95: $c9


Jump_000_1b96:
    ld bc, $0d02                                  ; $1b96: $01 $02 $0d
    ld hl, $a000                                  ; $1b99: $21 $00 $a0

jr_000_1b9c:
    xor a                                         ; $1b9c: $af
    ld [hl+], a                                   ; $1b9d: $22
    dec bc                                        ; $1b9e: $0b
    ld a, b                                       ; $1b9f: $78
    or c                                          ; $1ba0: $b1
    jr nz, jr_000_1b9c                            ; $1ba1: $20 $f9

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
    ld hl, $1be2                                  ; $1bc3: $21 $e2 $1b
    ld de, $a042                                  ; $1bc6: $11 $42 $a0
    ld bc, $0023                                  ; $1bc9: $01 $23 $00
    call Call_000_04db                            ; $1bcc: $cd $db $04
    ld hl, $1c05                                  ; $1bcf: $21 $05 $1c
    ld de, $a069                                  ; $1bd2: $11 $69 $a0
    ld bc, $000f                                  ; $1bd5: $01 $0f $00
    call Call_000_04db                            ; $1bd8: $cd $db $04
    ld bc, $003c                                  ; $1bdb: $01 $3c $00
    call BusyWaitDelayByBC                        ; $1bde: $cd $03 $06
    ret                                           ; $1be1: $c9


    ld bc, $0005                                  ; $1be2: $01 $05 $00
    nop                                           ; $1be5: $00
    ld c, [hl]                                    ; $1be6: $4e
    ld c, c                                       ; $1be7: $49
    ld c, [hl]                                    ; $1be8: $4e
    ld [bc], a                                    ; $1be9: $02
    nop                                           ; $1bea: $00
    nop                                           ; $1beb: $00
    nop                                           ; $1bec: $00
    ld b, c                                       ; $1bed: $41
    ld d, b                                       ; $1bee: $50
    ld b, l                                       ; $1bef: $45
    inc bc                                        ; $1bf0: $03
    nop                                           ; $1bf1: $00
    nop                                           ; $1bf2: $00
    nop                                           ; $1bf3: $00
    ld c, d                                       ; $1bf4: $4a
    ld d, l                                       ; $1bf5: $55
    ld d, b                                       ; $1bf6: $50
    inc b                                         ; $1bf7: $04
    nop                                           ; $1bf8: $00
    nop                                           ; $1bf9: $00
    nop                                           ; $1bfa: $00
    ld c, l                                       ; $1bfb: $4d
    ld b, c                                       ; $1bfc: $41
    ld d, d                                       ; $1bfd: $52
    dec b                                         ; $1bfe: $05
    nop                                           ; $1bff: $00

Call_000_1c00:
    nop                                           ; $1c00: $00
    nop                                           ; $1c01: $00
    ld d, b                                       ; $1c02: $50
    ld c, c                                       ; $1c03: $49
    ld b, e                                       ; $1c04: $43
    nop                                           ; $1c05: $00
    ld bc, $0302                                  ; $1c06: $01 $02 $03
    inc b                                         ; $1c09: $04
    nop                                           ; $1c0a: $00
    ld bc, $0302                                  ; $1c0b: $01 $02 $03
    inc b                                         ; $1c0e: $04
    nop                                           ; $1c0f: $00
    ld bc, $0302                                  ; $1c10: $01 $02 $03
    inc b                                         ; $1c13: $04

Call_000_1c14:
    ld b, $3c                                     ; $1c14: $06 $3c
    ld de, $acad                                  ; $1c16: $11 $ad $ac
    ld hl, $d640                                  ; $1c19: $21 $40 $d6

jr_000_1c1c:
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
    jr nz, jr_000_1c1c                            ; $1c4c: $20 $ce

    ld a, [rPuzzleGridWidth]                      ; $1c4e: $fa $00 $d8
    ld [de], a                                    ; $1c51: $12
    inc de                                        ; $1c52: $13
    ld a, [rPuzzleGridHeight]                     ; $1c53: $fa $01 $d8
    ld [de], a                                    ; $1c56: $12
    ld a, [rHintPopupSelection]                   ; $1c57: $fa $33 $d8
    ld [$aca3], a                                 ; $1c5a: $ea $a3 $ac
    ld a, [rPuzzleTimerAdjustmentStep]            ; $1c5d: $fa $11 $d8
    ld [$aca4], a                                 ; $1c60: $ea $a4 $ac
    ld a, [rPuzzleTimerMinuteOnes]                ; $1c63: $fa $09 $d8
    ld [$aca5], a                                 ; $1c66: $ea $a5 $ac
    ld a, [rPuzzleTimerMinuteTens]                ; $1c69: $fa $0a $d8
    ld [$aca6], a                                 ; $1c6c: $ea $a6 $ac
    ld a, [rPuzzleTimerSecondOnes]                ; $1c6f: $fa $0b $d8
    ld [$aca7], a                                 ; $1c72: $ea $a7 $ac
    ld a, [rPuzzleTimerSecondTens]                ; $1c75: $fa $0c $d8
    ld [$aca8], a                                 ; $1c78: $ea $a8 $ac
    ld a, [rPuzzleDataIndexLow]                   ; $1c7b: $fa $07 $d8
    ld [$aca9], a                                 ; $1c7e: $ea $a9 $ac
    ld a, [rPuzzleDataIndexHigh]                  ; $1c81: $fa $08 $d8
    ld [$acaa], a                                 ; $1c84: $ea $aa $ac
    ld a, [rPuzzleCursorColumn]                   ; $1c87: $fa $36 $d6
    ld [$acab], a                                 ; $1c8a: $ea $ab $ac
    ld a, [rPuzzleCursorRow]                      ; $1c8d: $fa $37 $d6
    ld [$acac], a                                 ; $1c90: $ea $ac $ac
    jp Jump_000_1b1f                              ; $1c93: $c3 $1f $1b


Call_000_1c96:
    ld a, [$aca3]                                 ; $1c96: $fa $a3 $ac
    ld [rHintPopupSelection], a                   ; $1c99: $ea $33 $d8
    ld a, [$aca4]                                 ; $1c9c: $fa $a4 $ac
    ld [rPuzzleTimerAdjustmentStep], a            ; $1c9f: $ea $11 $d8
    ld a, [$aca5]                                 ; $1ca2: $fa $a5 $ac
    ld [rPuzzleTimerMinuteOnes], a                ; $1ca5: $ea $09 $d8
    ld a, [$aca6]                                 ; $1ca8: $fa $a6 $ac
    ld [rPuzzleTimerMinuteTens], a                ; $1cab: $ea $0a $d8
    ld a, [$aca7]                                 ; $1cae: $fa $a7 $ac
    ld [rPuzzleTimerSecondOnes], a                ; $1cb1: $ea $0b $d8
    ld a, [$aca8]                                 ; $1cb4: $fa $a8 $ac
    ld [rPuzzleTimerSecondTens], a                ; $1cb7: $ea $0c $d8
    ld a, [$aca9]                                 ; $1cba: $fa $a9 $ac
    ld [rPuzzleDataIndexLow], a                   ; $1cbd: $ea $07 $d8
    ld a, [$acaa]                                 ; $1cc0: $fa $aa $ac
    ld [rPuzzleDataIndexHigh], a                  ; $1cc3: $ea $08 $d8
    ld a, [$acab]                                 ; $1cc6: $fa $ab $ac
    ld [rPuzzleCursorColumn], a                   ; $1cc9: $ea $36 $d6
    ld a, [$acac]                                 ; $1ccc: $fa $ac $ac
    ld [rPuzzleCursorRow], a                      ; $1ccf: $ea $37 $d6
    call LoadPuzzleDataBuffer                     ; $1cd2: $cd $f1 $07
    ld b, $3c                                     ; $1cd5: $06 $3c
    ld de, $acad                                  ; $1cd7: $11 $ad $ac
    ld hl, $d640                                  ; $1cda: $21 $40 $d6

jr_000_1cdd:
    ld a, [de]                                    ; $1cdd: $1a
    sla a                                         ; $1cde: $cb $27
    jr nc, jr_000_1ce4                            ; $1ce0: $30 $02

    set 1, [hl]                                   ; $1ce2: $cb $ce

jr_000_1ce4:
    sla a                                         ; $1ce4: $cb $27
    jr nc, jr_000_1cea                            ; $1ce6: $30 $02

    set 2, [hl]                                   ; $1ce8: $cb $d6

jr_000_1cea:
    inc hl                                        ; $1cea: $23
    sla a                                         ; $1ceb: $cb $27
    jr nc, jr_000_1cf1                            ; $1ced: $30 $02

    set 1, [hl]                                   ; $1cef: $cb $ce

jr_000_1cf1:
    sla a                                         ; $1cf1: $cb $27
    jr nc, jr_000_1cf7                            ; $1cf3: $30 $02

    set 2, [hl]                                   ; $1cf5: $cb $d6

jr_000_1cf7:
    inc hl                                        ; $1cf7: $23
    sla a                                         ; $1cf8: $cb $27
    jr nc, jr_000_1cfe                            ; $1cfa: $30 $02

    set 1, [hl]                                   ; $1cfc: $cb $ce

jr_000_1cfe:
    sla a                                         ; $1cfe: $cb $27
    jr nc, jr_000_1d04                            ; $1d00: $30 $02

    set 2, [hl]                                   ; $1d02: $cb $d6

jr_000_1d04:
    inc hl                                        ; $1d04: $23
    sla a                                         ; $1d05: $cb $27
    jr nc, jr_000_1d0b                            ; $1d07: $30 $02

    set 1, [hl]                                   ; $1d09: $cb $ce

jr_000_1d0b:
    sla a                                         ; $1d0b: $cb $27
    jr nc, jr_000_1d11                            ; $1d0d: $30 $02

    set 2, [hl]                                   ; $1d0f: $cb $d6

jr_000_1d11:
    inc hl                                        ; $1d11: $23
    inc de                                        ; $1d12: $13
    dec b                                         ; $1d13: $05
    jr nz, jr_000_1cdd                            ; $1d14: $20 $c7

    ld a, [rPuzzleGridWidth]                      ; $1d16: $fa $00 $d8
    ld [de], a                                    ; $1d19: $12
    inc de                                        ; $1d1a: $13
    ld a, [rPuzzleGridHeight]                     ; $1d1b: $fa $01 $d8
    ld [de], a                                    ; $1d1e: $12
    jp Jump_000_1b1f                              ; $1d1f: $c3 $1f $1b


Call_000_1d22:
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
    ld [rHintCursorAnimationLastFrameTick], a     ; $1d40: $ea $3d $d6
    call ClearShadowOAMBuffer                     ; $1d43: $cd $b6 $05
    call EnableLCDFromShadow                      ; $1d46: $cd $a2 $04
    call Call_000_1fa5                            ; $1d49: $cd $a5 $1f
    ld b, $03                                     ; $1d4c: $06 $03
    ld hl, $4694                                  ; $1d4e: $21 $94 $46
    ld c, $00                                     ; $1d51: $0e $00
    ld de, $0004                                  ; $1d53: $11 $04 $00
    call PlayScreenTransitionFadeIn               ; $1d56: $cd $0d $04

jr_000_1d59:
    ld a, [rInputButtonsPressed]                  ; $1d59: $fa $1e $c3
    bit 0, a                                      ; $1d5c: $cb $47
    jr nz, jr_000_1db9                            ; $1d5e: $20 $59

    bit 1, a                                      ; $1d60: $cb $4f
    jr nz, jr_000_1d95                            ; $1d62: $20 $31

    ld bc, $3040                                  ; $1d64: $01 $40 $30
    ld a, $4b                                     ; $1d67: $3e $4b
    call CopyOAMSpriteById                        ; $1d69: $cd $ce $20
    ld a, [rStatePhaseTimer]                      ; $1d6c: $fa $3c $d6
    inc a                                         ; $1d6f: $3c
    cp $46                                        ; $1d70: $fe $46
    jr c, jr_000_1d7d                             ; $1d72: $38 $09

    ld a, [rHintCursorAnimationLastFrameTick]     ; $1d74: $fa $3d $d6
    xor $01                                       ; $1d77: $ee $01
    ld [rHintCursorAnimationLastFrameTick], a     ; $1d79: $ea $3d $d6
    xor a                                         ; $1d7c: $af

jr_000_1d7d:
    ld [rStatePhaseTimer], a                      ; $1d7d: $ea $3c $d6
    cp $30                                        ; $1d80: $fe $30
    jr nc, jr_000_1d8f                            ; $1d82: $30 $0b

    ld a, [rHintCursorAnimationLastFrameTick]     ; $1d84: $fa $3d $d6
    add $4c                                       ; $1d87: $c6 $4c
    ld bc, $3050                                  ; $1d89: $01 $50 $30
    call CopyOAMSpriteById                        ; $1d8c: $cd $ce $20

jr_000_1d8f:
    call ClearShadowOAMBufferFromCursor           ; $1d8f: $cd $c5 $05
    rst RST_08                                    ; $1d92: $cf
    jr jr_000_1d59                                ; $1d93: $18 $c4

jr_000_1d95:
    ld c, $04                                     ; $1d95: $0e $04
    ld a, $02                                     ; $1d97: $3e $02
    call CallSoundEffectDispatcher                ; $1d99: $cd $b6 $03
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


jr_000_1db9:
    ld c, $03                                     ; $1db9: $0e $03
    ld a, $02                                     ; $1dbb: $3e $02
    call CallSoundEffectDispatcher                ; $1dbd: $cd $b6 $03
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


Call_000_1ddb:
    ld [rRequestedROMBank], a                     ; $1ddb: $ea $14 $c3
    ld a, [rActiveROMBank]                        ; $1dde: $fa $12 $c3
    push af                                       ; $1de1: $f5
    ld a, [rRequestedROMBank]                     ; $1de2: $fa $14 $c3
    ld [rActiveROMBank], a                        ; $1de5: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $1de8: $ea $00 $20
    call Call_000_1df6                            ; $1deb: $cd $f6 $1d
    pop af                                        ; $1dee: $f1
    ld [rActiveROMBank], a                        ; $1def: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $1df2: $ea $00 $20
    ret                                           ; $1df5: $c9


Call_000_1df6:
    ld a, [hl]                                    ; $1df6: $7e
    and $07                                       ; $1df7: $e6 $07
    ret z                                         ; $1df9: $c8

    ld b, a                                       ; $1dfa: $47
    ld c, $00                                     ; $1dfb: $0e $00
    ld a, $ff                                     ; $1dfd: $3e $ff
    ld [$c33e], a                                 ; $1dff: $ea $3e $c3

jr_000_1e02:
    push bc                                       ; $1e02: $c5
    ld a, $00                                     ; $1e03: $3e $00
    ldh [c], a                                    ; $1e05: $e2
    ld a, $30                                     ; $1e06: $3e $30
    ldh [c], a                                    ; $1e08: $e2
    ld b, $10                                     ; $1e09: $06 $10

jr_000_1e0b:
    ld e, $08                                     ; $1e0b: $1e $08
    ld a, [hl+]                                   ; $1e0d: $2a
    ld d, a                                       ; $1e0e: $57

jr_000_1e0f:
    bit 0, d                                      ; $1e0f: $cb $42
    ld a, $10                                     ; $1e11: $3e $10
    jr nz, jr_000_1e17                            ; $1e13: $20 $02

    ld a, $20                                     ; $1e15: $3e $20

jr_000_1e17:
    ldh [c], a                                    ; $1e17: $e2
    ld a, $30                                     ; $1e18: $3e $30
    ldh [c], a                                    ; $1e1a: $e2
    rr d                                          ; $1e1b: $cb $1a
    dec e                                         ; $1e1d: $1d
    jr nz, jr_000_1e0f                            ; $1e1e: $20 $ef

    dec b                                         ; $1e20: $05
    jr nz, jr_000_1e0b                            ; $1e21: $20 $e8

    ld a, $20                                     ; $1e23: $3e $20
    ldh [c], a                                    ; $1e25: $e2
    ld a, $30                                     ; $1e26: $3e $30
    ldh [c], a                                    ; $1e28: $e2
    pop bc                                        ; $1e29: $c1
    dec b                                         ; $1e2a: $05
    jr z, jr_000_1e32                             ; $1e2b: $28 $05

    call Call_000_1e37                            ; $1e2d: $cd $37 $1e
    jr jr_000_1e02                                ; $1e30: $18 $d0

jr_000_1e32:
    xor a                                         ; $1e32: $af
    ld [$c33e], a                                 ; $1e33: $ea $3e $c3
    ret                                           ; $1e36: $c9


Call_000_1e37:
    ld de, $1b58                                  ; $1e37: $11 $58 $1b

jr_000_1e3a:
    nop                                           ; $1e3a: $00
    nop                                           ; $1e3b: $00
    nop                                           ; $1e3c: $00
    dec de                                        ; $1e3d: $1b
    ld a, d                                       ; $1e3e: $7a
    or e                                          ; $1e3f: $b3
    jr nz, jr_000_1e3a                            ; $1e40: $20 $f8

    ret                                           ; $1e42: $c9


Call_000_1e43:
    ld a, $03                                     ; $1e43: $3e $03
    ld hl, $4010                                  ; $1e45: $21 $10 $40
    call Call_000_1ddb                            ; $1e48: $cd $db $1d
    call Call_000_1e37                            ; $1e4b: $cd $37 $1e
    ldh a, [rP1]                                  ; $1e4e: $f0 $00
    and $03                                       ; $1e50: $e6 $03
    cp $03                                        ; $1e52: $fe $03
    jr nz, jr_000_1e91                            ; $1e54: $20 $3b

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
    jr nz, jr_000_1e91                            ; $1e82: $20 $0d

    ld a, $03                                     ; $1e84: $3e $03
    ld hl, $4000                                  ; $1e86: $21 $00 $40
    call Call_000_1ddb                            ; $1e89: $cd $db $1d
    call Call_000_1e37                            ; $1e8c: $cd $37 $1e
    sub a                                         ; $1e8f: $97
    ret                                           ; $1e90: $c9


jr_000_1e91:
    ld a, $03                                     ; $1e91: $3e $03
    ld hl, $4000                                  ; $1e93: $21 $00 $40
    call Call_000_1ddb                            ; $1e96: $cd $db $1d
    call Call_000_1e37                            ; $1e99: $cd $37 $1e
    scf                                           ; $1e9c: $37
    ret                                           ; $1e9d: $c9


Call_000_1e9e:
    ld [rRequestedROMBank], a                     ; $1e9e: $ea $14 $c3
    ld a, [rActiveROMBank]                        ; $1ea1: $fa $12 $c3
    push af                                       ; $1ea4: $f5
    ld a, [rRequestedROMBank]                     ; $1ea5: $fa $14 $c3
    ld [rActiveROMBank], a                        ; $1ea8: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $1eab: $ea $00 $20
    di                                            ; $1eae: $f3
    push hl                                       ; $1eaf: $e5
    ld a, $e4                                     ; $1eb0: $3e $e4
    ldh [rBGP], a                                 ; $1eb2: $e0 $47
    ld bc, $0010                                  ; $1eb4: $01 $10 $00
    add hl, bc                                    ; $1eb7: $09
    ld de, $8800                                  ; $1eb8: $11 $00 $88
    ld bc, $1000                                  ; $1ebb: $01 $00 $10
    call Call_000_04db                            ; $1ebe: $cd $db $04
    ld hl, $9800                                  ; $1ec1: $21 $00 $98
    ld de, $000c                                  ; $1ec4: $11 $0c $00
    ld a, $80                                     ; $1ec7: $3e $80
    ld c, $0d                                     ; $1ec9: $0e $0d

jr_000_1ecb:
    ld b, $14                                     ; $1ecb: $06 $14

jr_000_1ecd:
    ld [hl+], a                                   ; $1ecd: $22
    inc a                                         ; $1ece: $3c
    dec b                                         ; $1ecf: $05
    jr nz, jr_000_1ecd                            ; $1ed0: $20 $fb

    add hl, de                                    ; $1ed2: $19
    dec c                                         ; $1ed3: $0d
    jr nz, jr_000_1ecb                            ; $1ed4: $20 $f5

    ld a, $81                                     ; $1ed6: $3e $81
    ldh [rLCDC], a                                ; $1ed8: $e0 $40
    ld bc, $0005                                  ; $1eda: $01 $05 $00
    call BusyWaitDelayByBC                        ; $1edd: $cd $03 $06
    pop hl                                        ; $1ee0: $e1
    call Call_000_1df6                            ; $1ee1: $cd $f6 $1d
    ld bc, $0006                                  ; $1ee4: $01 $06 $00
    call BusyWaitDelayByBC                        ; $1ee7: $cd $03 $06
    ld a, [rBGPShadow]                            ; $1eea: $fa $2f $c3
    ldh [rBGP], a                                 ; $1eed: $e0 $47
    ld a, [rLCDCShadow]                           ; $1eef: $fa $2e $c3
    ldh [rLCDC], a                                ; $1ef2: $e0 $40
    ei                                            ; $1ef4: $fb
    pop af                                        ; $1ef5: $f1
    ld [rActiveROMBank], a                        ; $1ef6: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $1ef9: $ea $00 $20
    ret                                           ; $1efc: $c9


Call_000_1efd:
    ld bc, $0078                                  ; $1efd: $01 $78 $00
    call BusyWaitDelayByBC                        ; $1f00: $cd $03 $06
    call Call_000_1f87                            ; $1f03: $cd $87 $1f
    ld a, $03                                     ; $1f06: $3e $03
    ld hl, $4de0                                  ; $1f08: $21 $e0 $4d
    call Call_000_1ddb                            ; $1f0b: $cd $db $1d
    ld bc, $0004                                  ; $1f0e: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f11: $cd $03 $06
    ld a, $03                                     ; $1f14: $3e $03
    ld hl, $4df0                                  ; $1f16: $21 $f0 $4d
    call Call_000_1ddb                            ; $1f19: $cd $db $1d
    ld bc, $0004                                  ; $1f1c: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f1f: $cd $03 $06
    ld a, $03                                     ; $1f22: $3e $03
    ld hl, $4e00                                  ; $1f24: $21 $00 $4e
    call Call_000_1ddb                            ; $1f27: $cd $db $1d
    ld bc, $0004                                  ; $1f2a: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f2d: $cd $03 $06
    ld a, $03                                     ; $1f30: $3e $03
    ld hl, $4e10                                  ; $1f32: $21 $10 $4e
    call Call_000_1ddb                            ; $1f35: $cd $db $1d
    ld bc, $0004                                  ; $1f38: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f3b: $cd $03 $06
    ld a, $03                                     ; $1f3e: $3e $03
    ld hl, $4e20                                  ; $1f40: $21 $20 $4e
    call Call_000_1ddb                            ; $1f43: $cd $db $1d
    ld bc, $0004                                  ; $1f46: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f49: $cd $03 $06
    ld a, $03                                     ; $1f4c: $3e $03
    ld hl, $4e30                                  ; $1f4e: $21 $30 $4e
    call Call_000_1ddb                            ; $1f51: $cd $db $1d
    ld bc, $0004                                  ; $1f54: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f57: $cd $03 $06
    ld a, $03                                     ; $1f5a: $3e $03
    ld hl, $4e40                                  ; $1f5c: $21 $40 $4e
    call Call_000_1ddb                            ; $1f5f: $cd $db $1d
    ld bc, $0004                                  ; $1f62: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f65: $cd $03 $06
    ld a, $03                                     ; $1f68: $3e $03
    ld hl, $4e50                                  ; $1f6a: $21 $50 $4e
    call Call_000_1ddb                            ; $1f6d: $cd $db $1d
    ld bc, $0004                                  ; $1f70: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f73: $cd $03 $06
    ld a, $03                                     ; $1f76: $3e $03
    ld hl, $4730                                  ; $1f78: $21 $30 $47
    call Call_000_1e9e                            ; $1f7b: $cd $9e $1e
    ld a, $03                                     ; $1f7e: $3e $03
    ld hl, $4030                                  ; $1f80: $21 $30 $40
    call Call_000_1e9e                            ; $1f83: $cd $9e $1e
    ret                                           ; $1f86: $c9


Call_000_1f87:
    ld a, [rBootVariantFlag_Unsure]               ; $1f87: $fa $3d $c3
    and a                                         ; $1f8a: $a7
    ret z                                         ; $1f8b: $c8

    ld a, [$c33f]                                 ; $1f8c: $fa $3f $c3
    and a                                         ; $1f8f: $a7
    ret nz                                        ; $1f90: $c0

    ld a, $03                                     ; $1f91: $3e $03
    ld hl, $4e60                                  ; $1f93: $21 $60 $4e
    call Call_000_1ddb                            ; $1f96: $cd $db $1d
    ld bc, $0004                                  ; $1f99: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1f9c: $cd $03 $06
    ld a, $ff                                     ; $1f9f: $3e $ff
    ld [$c33f], a                                 ; $1fa1: $ea $3f $c3
    ret                                           ; $1fa4: $c9


Call_000_1fa5:
    ld a, [rBootVariantFlag_Unsure]               ; $1fa5: $fa $3d $c3
    and a                                         ; $1fa8: $a7
    ret z                                         ; $1fa9: $c8

    ld bc, $0002                                  ; $1faa: $01 $02 $00
    call BusyWaitDelayByBC                        ; $1fad: $cd $03 $06
    ld a, [$c33f]                                 ; $1fb0: $fa $3f $c3
    and a                                         ; $1fb3: $a7
    ret z                                         ; $1fb4: $c8

    ld a, $03                                     ; $1fb5: $3e $03
    ld hl, $4e70                                  ; $1fb7: $21 $70 $4e
    call Call_000_1ddb                            ; $1fba: $cd $db $1d
    ld bc, $0004                                  ; $1fbd: $01 $04 $00
    call BusyWaitDelayByBC                        ; $1fc0: $cd $03 $06
    xor a                                         ; $1fc3: $af
    ld [$c33f], a                                 ; $1fc4: $ea $3f $c3
    ret                                           ; $1fc7: $c9


PlayScreenTransitionFadeIn_AlternatePath::
    push de                                       ; $1fc8: $d5
    push bc                                       ; $1fc9: $c5
    push hl                                       ; $1fca: $e5
    ld a, $03                                     ; $1fcb: $3e $03
    ld hl, $4020                                  ; $1fcd: $21 $20 $40
    ld de, $c340                                  ; $1fd0: $11 $40 $c3
    ld bc, $0010                                  ; $1fd3: $01 $10 $00
    call BankedTileCopy                           ; $1fd6: $cd $e4 $04
    ld a, $00                                     ; $1fd9: $3e $00
    ld hl, $c340                                  ; $1fdb: $21 $40 $c3
    call Call_000_1ddb                            ; $1fde: $cd $db $1d
    pop hl                                        ; $1fe1: $e1
    pop bc                                        ; $1fe2: $c1
    push bc                                       ; $1fe3: $c5
    ld a, [rActiveROMBank]                        ; $1fe4: $fa $12 $c3
    push af                                       ; $1fe7: $f5
    ld a, b                                       ; $1fe8: $78
    ld [rActiveROMBank], a                        ; $1fe9: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $1fec: $ea $00 $20
    ld b, $04                                     ; $1fef: $06 $04

jr_000_1ff1:
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
    jr nz, jr_000_1ff1                            ; $2008: $20 $e7

    ld [rStatePhaseTimer], a                      ; $200a: $ea $3c $d6
    ld [rHintCursorAnimationLastFrameTick], a     ; $200d: $ea $3d $d6
    ld [rHintCursorAnimationColumnAccumulator], a ; $2010: $ea $3e $d6
    ld [rHintCursorAnimationRowAccumulator], a    ; $2013: $ea $3f $d6
    pop af                                        ; $2016: $f1
    ld [rActiveROMBank], a                        ; $2017: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $201a: $ea $00 $20
    pop bc                                        ; $201d: $c1
    pop de                                        ; $201e: $d1
    ld a, c                                       ; $201f: $79
    or $80                                        ; $2020: $f6 $80
    ld [$c349], a                                 ; $2022: $ea $49 $c3
    ld b, $04                                     ; $2025: $06 $04

jr_000_2027:
    push bc                                       ; $2027: $c5
    ld hl, $c341                                  ; $2028: $21 $41 $c3
    ld c, $04                                     ; $202b: $0e $04

jr_000_202d:
    ld a, e                                       ; $202d: $7b
    ld [hl+], a                                   ; $202e: $22
    ld a, d                                       ; $202f: $7a
    ld [hl+], a                                   ; $2030: $22
    inc de                                        ; $2031: $13
    dec c                                         ; $2032: $0d
    jr nz, jr_000_202d                            ; $2033: $20 $f8

    push de                                       ; $2035: $d5
    ld a, $00                                     ; $2036: $3e $00
    ld hl, $c340                                  ; $2038: $21 $40 $c3
    call Call_000_1ddb                            ; $203b: $cd $db $1d
    ld bc, $0006                                  ; $203e: $01 $06 $00
    call BusyWaitDelayByBC                        ; $2041: $cd $03 $06
    pop de                                        ; $2044: $d1
    pop bc                                        ; $2045: $c1
    dec b                                         ; $2046: $05
    jr nz, jr_000_2027                            ; $2047: $20 $de

    ret                                           ; $2049: $c9


PlayScreenTransitionFadeOut_AlternatePath::
    push hl                                       ; $204a: $e5
    push bc                                       ; $204b: $c5
    push de                                       ; $204c: $d5
    ld a, $03                                     ; $204d: $3e $03
    ld hl, $4020                                  ; $204f: $21 $20 $40
    ld de, $c340                                  ; $2052: $11 $40 $c3
    ld bc, $0010                                  ; $2055: $01 $10 $00
    call BankedTileCopy                           ; $2058: $cd $e4 $04
    pop de                                        ; $205b: $d1
    pop bc                                        ; $205c: $c1
    push bc                                       ; $205d: $c5
    ld a, c                                       ; $205e: $79
    or $80                                        ; $205f: $f6 $80
    ld [$c349], a                                 ; $2061: $ea $49 $c3
    ld b, $04                                     ; $2064: $06 $04

jr_000_2066:
    push bc                                       ; $2066: $c5
    ld hl, $c348                                  ; $2067: $21 $48 $c3
    ld c, $04                                     ; $206a: $0e $04

jr_000_206c:
    ld a, d                                       ; $206c: $7a
    ld [hl-], a                                   ; $206d: $32
    ld a, e                                       ; $206e: $7b
    ld [hl-], a                                   ; $206f: $32
    dec de                                        ; $2070: $1b
    dec c                                         ; $2071: $0d
    jr nz, jr_000_206c                            ; $2072: $20 $f8

    push de                                       ; $2074: $d5
    ld a, $00                                     ; $2075: $3e $00
    ld hl, $c340                                  ; $2077: $21 $40 $c3
    call Call_000_1ddb                            ; $207a: $cd $db $1d
    ld bc, $0006                                  ; $207d: $01 $06 $00
    call BusyWaitDelayByBC                        ; $2080: $cd $03 $06
    pop de                                        ; $2083: $d1
    pop bc                                        ; $2084: $c1
    dec b                                         ; $2085: $05
    jr nz, jr_000_2066                            ; $2086: $20 $de

    ld a, $03                                     ; $2088: $3e $03
    ld hl, $4020                                  ; $208a: $21 $20 $40
    ld de, $c340                                  ; $208d: $11 $40 $c3
    ld bc, $0010                                  ; $2090: $01 $10 $00
    call BankedTileCopy                           ; $2093: $cd $e4 $04
    ld a, $00                                     ; $2096: $3e $00
    ld hl, $c340                                  ; $2098: $21 $40 $c3
    call Call_000_1ddb                            ; $209b: $cd $db $1d
    pop bc                                        ; $209e: $c1
    pop hl                                        ; $209f: $e1
    ld a, [rActiveROMBank]                        ; $20a0: $fa $12 $c3
    push af                                       ; $20a3: $f5
    ld a, b                                       ; $20a4: $78
    ld [rActiveROMBank], a                        ; $20a5: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $20a8: $ea $00 $20
    ld b, $04                                     ; $20ab: $06 $04

jr_000_20ad:
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
    jr nz, jr_000_20ad                            ; $20c4: $20 $e7

    pop af                                        ; $20c6: $f1
    ld [rActiveROMBank], a                        ; $20c7: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $20ca: $ea $00 $20
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
    ld [ROMBankSwitchTrigger], a                  ; $20df: $ea $00 $20
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
    ld [ROMBankSwitchTrigger], a                  ; $210c: $ea $00 $20
    pop hl                                        ; $210f: $e1
    ret                                           ; $2110: $c9


GameState_06_HowToPlay_PhaseDispatcher::
    ld a, [rInputButtonsPressed]                  ; $2111: $fa $1e $c3
    ld [$d834], a                                 ; $2114: $ea $34 $d8
    ld a, [$d837]                                 ; $2117: $fa $37 $d8
    and a                                         ; $211a: $a7
    jr nz, jr_000_212b                            ; $211b: $20 $0e

    ld a, [rInputButtonsPressed]                  ; $211d: $fa $1e $c3
    bit 3, a                                      ; $2120: $cb $5f
    jr z, jr_000_2130                             ; $2122: $28 $0c

    ld c, $04                                     ; $2124: $0e $04
    ld a, $02                                     ; $2126: $3e $02
    call CallSoundEffectDispatcher                ; $2128: $cd $b6 $03

jr_000_212b:
    ld a, $2a                                     ; $212b: $3e $2a
    ld [rStatePhase_Current], a                   ; $212d: $ea $35 $d6

jr_000_2130:
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
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $21c6: $21 $37 $c3
    set 6, [hl]                                   ; $21c9: $cb $f6
    ld hl, rIE                                    ; $21cb: $21 $ff $ff
    set 1, [hl]                                   ; $21ce: $cb $ce
    ld a, $01                                     ; $21d0: $3e $01
    ld [rLCDCInterruptDispatchIndex], a           ; $21d2: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $21d5: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $21d8: $ea $50 $c3
    xor a                                         ; $21db: $af
    ld [rPuzzleFlowVariant_Unsure], a             ; $21dc: $ea $05 $d8
    ld [rPuzzleTimerCompletionState], a           ; $21df: $ea $06 $d8
    ld [rMarioBlinkAnimationSequenceCursor], a    ; $21e2: $ea $18 $d8
    ld [rMarioBlinkAnimationDelay], a             ; $21e5: $ea $17 $d8
    ld [rPuzzleActionRepeatGuard], a              ; $21e8: $ea $0f $d8
    ld [rCellEffectTargetColumn], a               ; $21eb: $ea $24 $d8
    ld [rCellEffectTargetRow], a                  ; $21ee: $ea $25 $d8
    ld [rPendingCellEffectCode], a                ; $21f1: $ea $23 $d8
    ld [rPendingCellEffectDelay], a               ; $21f4: $ea $22 $d8
    ld [rHintCursorAnimationColumnAccumulator], a ; $21f7: $ea $3e $d6
    ld [rHintCursorAnimationRowAccumulator], a    ; $21fa: $ea $3f $d6
    ld a, [rLCDCFrameTickCounter]                 ; $21fd: $fa $3b $c3
    ld [rHintCursorAnimationLastFrameTick], a     ; $2200: $ea $3d $d6
    call GS06_ResetMessageSequenceState           ; $2203: $cd $3e $32
    xor a                                         ; $2206: $af
    ld [rPuzzleDataIndexLow], a                   ; $2207: $ea $07 $d8
    ld [rPuzzleDataIndexHigh], a                  ; $220a: $ea $08 $d8
    ld a, $02                                     ; $220d: $3e $02
    ld [rPuzzleTimerAdjustmentStep], a            ; $220f: $ea $11 $d8
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
    call CallSoundEffectDispatcher                ; $225d: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $2260: $cd $99 $03
    ld c, $02                                     ; $2263: $0e $02
    ld a, $01                                     ; $2265: $3e $01
    call CallSoundEffectDispatcher                ; $2267: $cd $b6 $03
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
    call GS06_ResetMessageSequenceState           ; $22a2: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $22d9: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $2308: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $233f: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $236e: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $2396: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $23be: $cd $3e $32
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
    ld [rPuzzleCursorRow], a                      ; $23d4: $ea $37 $d6
    xor a                                         ; $23d7: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $23d8: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $23db: $ea $30 $d8
    ld a, $f0                                     ; $23de: $3e $f0
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $23e0: $ea $31 $d8
    ld a, $23                                     ; $23e3: $3e $23
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $23e5: $ea $32 $d8
    call GS06_ResetMessageSequenceState           ; $23e8: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $2477: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $24a3: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $24cb: $cd $3e $32
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
    call ClearGameBoard                           ; $24e9: $cd $14 $31
    call LoadPuzzleDataBuffer                     ; $24ec: $cd $f1 $07
    ld a, $d0                                     ; $24ef: $3e $d0
    ld [rMessageScriptStreamPointerLow], a        ; $24f1: $ea $2d $d8
    ld a, $6c                                     ; $24f4: $3e $6c
    ld [rMessageScriptStreamPointerHigh], a       ; $24f6: $ea $2e $d8
    call GS06_ResetMessageSequenceState           ; $24f9: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $2530: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $255f: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $2587: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $25be: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $25ed: $cd $3e $32
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
    ld [rPuzzleCursorRow], a                      ; $2603: $ea $37 $d6
    xor a                                         ; $2606: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $2607: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $260a: $ea $30 $d8
    ld a, $1f                                     ; $260d: $3e $1f
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $260f: $ea $31 $d8
    ld a, $26                                     ; $2612: $3e $26
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $2614: $ea $32 $d8
    call GS06_ResetMessageSequenceState           ; $2617: $cd $3e $32
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
    call ClearGameBoard                           ; $2640: $cd $14 $31
    call LoadPuzzleDataBuffer                     ; $2643: $cd $f1 $07
    ld a, $24                                     ; $2646: $3e $24
    ld [rMessageScriptStreamPointerLow], a        ; $2648: $ea $2d $d8
    ld a, $6e                                     ; $264b: $3e $6e
    ld [rMessageScriptStreamPointerHigh], a       ; $264d: $ea $2e $d8
    call GS06_ResetMessageSequenceState           ; $2650: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $269a: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $26c9: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $26f1: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $2728: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $2757: $cd $3e $32
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
    ld [rPuzzleCursorRow], a                      ; $276f: $ea $37 $d6
    xor a                                         ; $2772: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $2773: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $2776: $ea $30 $d8
    ld a, $8b                                     ; $2779: $3e $8b
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $277b: $ea $31 $d8
    ld a, $27                                     ; $277e: $3e $27
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $2780: $ea $32 $d8
    call GS06_ResetMessageSequenceState           ; $2783: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $27b9: $cd $3e $32
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

    call GS06_ResetMessageSequenceState           ; $27de: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $2802: $cd $3e $32
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
    call Call_000_313a                            ; $2823: $cd $3a $31
    call $7beb                                    ; $2826: $cd $eb $7b
    ld a, $9c                                     ; $2829: $3e $9c
    ld [rMessageScriptStreamPointerLow], a        ; $282b: $ea $2d $d8
    ld a, $70                                     ; $282e: $3e $70
    ld [rMessageScriptStreamPointerHigh], a       ; $2830: $ea $2e $d8
    call GS06_ResetMessageSequenceState           ; $2833: $cd $3e $32
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
    ld [rPuzzleCursorRow], a                      ; $284c: $ea $37 $d6
    xor a                                         ; $284f: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $2850: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $2853: $ea $30 $d8
    ld a, $68                                     ; $2856: $3e $68
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $2858: $ea $31 $d8
    ld a, $28                                     ; $285b: $3e $28
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $285d: $ea $32 $d8
    call GS06_ResetMessageSequenceState           ; $2860: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $287f: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $28ba: $cd $3e $32
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
    ld [rPuzzleCursorRow], a                      ; $28d3: $ea $37 $d6
    xor a                                         ; $28d6: $af
    ld [rGS06_ScriptedInputSequenceCursor], a     ; $28d7: $ea $2f $d8
    ld [rGS06_ScriptedInputSequenceDelay], a      ; $28da: $ea $30 $d8
    ld a, $ef                                     ; $28dd: $3e $ef
    ld [rGS06_ScriptedInputSequenceTableLow], a   ; $28df: $ea $31 $d8
    ld a, $28                                     ; $28e2: $3e $28
    ld [rGS06_ScriptedInputSequenceTableHigh], a  ; $28e4: $ea $32 $d8
    call GS06_ResetMessageSequenceState           ; $28e7: $cd $3e $32
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
    call ClearGameBoard                           ; $2908: $cd $14 $31
    call LoadPuzzleDataBuffer                     ; $290b: $cd $f1 $07
    call $7beb                                    ; $290e: $cd $eb $7b
    ld a, $ca                                     ; $2911: $3e $ca
    ld [rMessageScriptStreamPointerLow], a        ; $2913: $ea $2d $d8
    ld a, $71                                     ; $2916: $3e $71
    ld [rMessageScriptStreamPointerHigh], a       ; $2918: $ea $2e $d8
    call GS06_ResetMessageSequenceState           ; $291b: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $2964: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $2990: $cd $3e $32
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
    call CallSoundEffectDispatcher                ; $29b4: $cd $b6 $03
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
    call GS06_ResetMessageSequenceState           ; $29ec: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $2a2b: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $2a73: $cd $3e $32
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
    call GS06_ResetMessageSequenceState           ; $2aa4: $cd $3e $32
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
    call ClearGameBoard                           ; $2ad0: $cd $14 $31
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
    ld [rPuzzleCursorRow], a                      ; $2ae4: $ea $37 $d6
    ld [rPuzzleFlowVariant_Unsure], a             ; $2ae7: $ea $05 $d8
    ld [rPuzzleTimerCompletionState], a           ; $2aea: $ea $06 $d8
    ld [rPuzzleActionRepeatGuard], a              ; $2aed: $ea $0f $d8
    call GS06_ResetMessageSequenceState           ; $2af0: $cd $3e $32
    ld a, $02                                     ; $2af3: $3e $02
    ld [rPuzzleTimerAdjustmentStep], a            ; $2af5: $ea $11 $d8
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
    call CallSoundEffectDispatcher                ; $2b2c: $cd $b6 $03
    ld c, $00                                     ; $2b2f: $0e $00
    ld a, $01                                     ; $2b31: $3e $01
    call CallSoundEffectDispatcher                ; $2b33: $cd $b6 $03
    call WaitForScanline40OrDelay                 ; $2b36: $cd $99 $03
    ld c, $00                                     ; $2b39: $0e $00
    ld a, $01                                     ; $2b3b: $3e $01
    call CallSoundEffectDispatcher                ; $2b3d: $cd $b6 $03
    ld b, $03                                     ; $2b40: $06 $03
    ld hl, $46ab                                  ; $2b42: $21 $ab $46
    ld c, $01                                     ; $2b45: $0e $01
    ld de, $0023                                  ; $2b47: $11 $23 $00
    call PlayScreenTransitionFadeOut              ; $2b4a: $cd $4e $04
    call DisableLCDAtVBlank                       ; $2b4d: $cd $83 $04
    ld hl, rLCDCInterruptControlFlags_Unsure      ; $2b50: $21 $37 $c3
    res 6, [hl]                                   ; $2b53: $cb $b6
    ld hl, rIE                                    ; $2b55: $21 $ff $ff
    res 1, [hl]                                   ; $2b58: $cb $8e
    xor a                                         ; $2b5a: $af
    ld [rLCDCInterruptDispatchIndex], a           ; $2b5b: $ea $38 $c3
    ld [rVBlankLCDCBit4ForceFlag], a              ; $2b5e: $ea $3c $c3
    ld [rVBlankSoundEngineUpdateEnabled_Unsure], a; $2b61: $ea $50 $c3
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
    ld [ROMBankSwitchTrigger], a                  ; $2b77: $ea $00 $20
    call AdvanceMessageScriptStreamHelper         ; $2b7a: $cd $88 $2b
    pop bc                                        ; $2b7d: $c1
    push af                                       ; $2b7e: $f5
    ld a, b                                       ; $2b7f: $78
    ld [rActiveROMBank], a                        ; $2b80: $ea $12 $c3
    ld [ROMBankSwitchTrigger], a                  ; $2b83: $ea $00 $20
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


Call_000_2c1f:
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
    jr nz, jr_000_2c42                            ; $2c3b: $20 $05

    ld a, d                                       ; $2c3d: $7a
    cp $ff                                        ; $2c3e: $fe $ff
    jr z, jr_000_2c4e                             ; $2c40: $28 $0c

jr_000_2c42:
    call Call_000_2c6a                            ; $2c42: $cd $6a $2c
    ld hl, rMessageScriptStreamEntryLow           ; $2c45: $21 $2b $d8
    add $01                                       ; $2c48: $c6 $01
    add [hl]                                      ; $2c4a: $86
    ld [hl], a                                    ; $2c4b: $77
    jr jr_000_2c5c                                ; $2c4c: $18 $0e

jr_000_2c4e:
    ld a, [rMessageScriptStreamResetEntryLow]     ; $2c4e: $fa $43 $d8
    ld [rMessageScriptStreamEntryLow], a          ; $2c51: $ea $2b $d8
    ld a, [rMessageScriptStreamEntryHigh]         ; $2c54: $fa $2c $d8
    add $0a                                       ; $2c57: $c6 $0a
    ld [rMessageScriptStreamEntryHigh], a         ; $2c59: $ea $2c $d8

jr_000_2c5c:
    pop hl                                        ; $2c5c: $e1
    ld a, l                                       ; $2c5d: $7d
    ld [rMessageScriptStreamPointerLow], a        ; $2c5e: $ea $2d $d8
    ld a, h                                       ; $2c61: $7c
    ld [rMessageScriptStreamPointerHigh], a       ; $2c62: $ea $2e $d8
    ld a, [hl+]                                   ; $2c65: $2a
    and [hl]                                      ; $2c66: $a6
    cp $ff                                        ; $2c67: $fe $ff
    ret                                           ; $2c69: $c9


Call_000_2c6a:
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
    jr c, jr_000_2c9d                             ; $2c99: $38 $02

    pop af                                        ; $2c9b: $f1
    ret                                           ; $2c9c: $c9


jr_000_2c9d:
    ld [rBGTileCopyDestX], a                      ; $2c9d: $ea $53 $c3
    ld a, c                                       ; $2ca0: $79
    ld [rBGTileCopySourceY], a                    ; $2ca1: $ea $52 $c3
    add $08                                       ; $2ca4: $c6 $08
    ld hl, rMessageScriptStreamLimitHigh          ; $2ca6: $21 $46 $d8
    cp [hl]                                       ; $2ca9: $be
    jr c, jr_000_2cae                             ; $2caa: $38 $02

    pop af                                        ; $2cac: $f1
    ret                                           ; $2cad: $c9


jr_000_2cae:
    ld [rBGTileCopyDestY], a                      ; $2cae: $ea $54 $c3
    call Call_000_0b0d                            ; $2cb1: $cd $0d $0b
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
    call CallSoundEffectDispatcher                ; $2fd4: $cd $b6 $03
    ret                                           ; $2fd7: $c9


.CheckCancelInputStart:
    ld a, [rInputButtonsPressed]                  ; $2fd8: $fa $1e $c3
    bit 3, a                                      ; $2fdb: $cb $5f
    jr z, .WaitLoopBody                           ; $2fdd: $28 $0b

    ld [$d837], a                                 ; $2fdf: $ea $37 $d8
    ld c, $04                                     ; $2fe2: $0e $04
    ld a, $02                                     ; $2fe4: $3e $02
    call CallSoundEffectDispatcher                ; $2fe6: $cd $b6 $03
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


ClearGameBoard::
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


Call_000_313a:
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
    ld hl, rHintCursorAnimationLastFrameTick      ; $31ce: $21 $3d $d6
    sub [hl]                                      ; $31d1: $96
    push af                                       ; $31d2: $f5
    ld hl, rHintCursorAnimationColumnAccumulator  ; $31d3: $21 $3e $d6
    add [hl]                                      ; $31d6: $86
    ld [hl], a                                    ; $31d7: $77
    pop af                                        ; $31d8: $f1
    ld hl, rHintCursorAnimationRowAccumulator     ; $31d9: $21 $3f $d6
    add [hl]                                      ; $31dc: $86
    ld [hl], a                                    ; $31dd: $77
    pop af                                        ; $31de: $f1
    ld [rHintCursorAnimationLastFrameTick], a     ; $31df: $ea $3d $d6
    ld a, [rHintCursorAnimationColumnThreshold]   ; $31e2: $fa $12 $d8
    cp $3f                                        ; $31e5: $fe $3f
    jr nc, .AdvanceHintCursorRow                  ; $31e7: $30 $25

    ld c, a                                       ; $31e9: $4f
    ld a, [rHintCursorAnimationColumnAccumulator] ; $31ea: $fa $3e $d6
    cp c                                          ; $31ed: $b9
    jr c, .AdvanceHintCursorRow                   ; $31ee: $38 $1e

    xor a                                         ; $31f0: $af
    ld [rHintCursorAnimationColumnAccumulator], a ; $31f1: $ea $3e $d6
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
    ld a, [rPuzzleCursorRow]                      ; $322b: $fa $37 $d6
    inc a                                         ; $322e: $3c
    cp $05                                        ; $322f: $fe $05
    jr nz, .AdvanceHintCursorAnimationComplete    ; $3231: $20 $01

    xor a                                         ; $3233: $af

.AdvanceHintCursorAnimationComplete:
    ld [rPuzzleCursorRow], a                      ; $3234: $ea $37 $d6
    call $6c2c                                    ; $3237: $cd $2c $6c

.FinalizeHintCursorAnimation:
    call $7185                                    ; $323a: $cd $85 $71
    ret                                           ; $323d: $c9


GS06_ResetMessageSequenceState::
    xor a                                         ; $323e: $af
    ld [rGS06_MarioMouthAnimationPatternCursor], a; $323f: $ea $1b $d8
    ld [rGS06_MarioMouthAnimationCountdown], a    ; $3242: $ea $1a $d8
    ld [rMessageStepDelayTimer], a                ; $3245: $ea $1f $d8
    ld [rMessageStepSequenceCursor], a            ; $3248: $ea $20 $d8
    ld [rMessageStepSequenceState], a             ; $324b: $ea $21 $d8
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
