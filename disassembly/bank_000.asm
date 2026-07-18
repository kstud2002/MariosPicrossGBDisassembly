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

    ld hl, $c339                                  ; $000d: $21 $39 $c3
    xor a                                         ; $0010: $af
    ld [hl], a                                    ; $0011: $77

jr_000_0012:
    halt                                          ; $0012: $76
    ld a, [hl]                                    ; $0013: $7e
    and a                                         ; $0014: $a7
    jr z, jr_000_0012                             ; $0015: $28 $fb

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

Call_000_0157:
    ldh a, [rLCDC]                                ; $0157: $f0 $40
    bit 7, a                                      ; $0159: $cb $7f
    jr nz, jr_000_0161                            ; $015b: $20 $04

    set 7, a                                      ; $015d: $cb $ff
    ldh [rLCDC], a                                ; $015f: $e0 $40

jr_000_0161:
    ld bc, $0002                                  ; $0161: $01 $02 $00
    call Call_000_0603                            ; $0164: $cd $03 $06

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
    call Call_000_0603                            ; $017b: $cd $03 $06
    call Call_000_0483                            ; $017e: $cd $83 $04
    ld a, $0a                                     ; $0181: $3e $0a
    ld [$0000], a                                 ; $0183: $ea $00 $00
    ld a, $01                                     ; $0186: $3e $01
    ld [BankSwitchTrigger], a                     ; $0188: $ea $00 $20
    ld a, $00                                     ; $018b: $3e $00
    ld [$4000], a                                 ; $018d: $ea $00 $40
    ld a, $01                                     ; $0190: $3e $01
    ld [ActiveROMBank], a                         ; $0192: $ea $12 $c3
    ld hl, $c000                                  ; $0195: $21 $00 $c0
    ld bc, $1fff                                  ; $0198: $01 $ff $1f
    call Call_000_04d3                            ; $019b: $cd $d3 $04
    ld sp, $dfff                                  ; $019e: $31 $ff $df
    call Call_000_04bb                            ; $01a1: $cd $bb $04
    call Call_000_05b6                            ; $01a4: $cd $b6 $05
    call Call_000_05a0                            ; $01a7: $cd $a0 $05
    call Call_000_05ab                            ; $01aa: $cd $ab $05
    xor a                                         ; $01ad: $af
    ld [$c315], a                                 ; $01ae: $ea $15 $c3
    ld [$c316], a                                 ; $01b1: $ea $16 $c3
    ld [$c317], a                                 ; $01b4: $ea $17 $c3
    ld [$c338], a                                 ; $01b7: $ea $38 $c3
    ld [$c33c], a                                 ; $01ba: $ea $3c $c3
    ld hl, $c32e                                  ; $01bd: $21 $2e $c3
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
    ld [$c350], a                                 ; $01d0: $ea $50 $c3
    ld a, $01                                     ; $01d3: $3e $01
    ldh [rIE], a                                  ; $01d5: $e0 $ff
    ldh [rIE], a                                  ; $01d7: $e0 $ff
    ei                                            ; $01d9: $fb
    call Call_000_1e43                            ; $01da: $cd $43 $1e
    rl a                                          ; $01dd: $cb $17
    and $01                                       ; $01df: $e6 $01
    ld [$c33d], a                                 ; $01e1: $ea $3d $c3
    jr z, jr_000_01e9                             ; $01e4: $28 $03

    call Call_000_1efd                            ; $01e6: $cd $fd $1e

jr_000_01e9:
    xor a                                         ; $01e9: $af
    ld [$c33e], a                                 ; $01ea: $ea $3e $c3
    ld a, $00                                     ; $01ed: $3e $00
    call Call_000_03b6                            ; $01ef: $cd $b6 $03
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
    call Call_000_0603                            ; $021a: $cd $03 $06
    ld a, $05                                     ; $021d: $3e $05
    call Call_000_03b6                            ; $021f: $cd $b6 $03
    ld c, $00                                     ; $0222: $0e $00
    ld a, $01                                     ; $0224: $3e $01
    call Call_000_03b6                            ; $0226: $cd $b6 $03
    call Call_000_0399                            ; $0229: $cd $99 $03
    ld c, $00                                     ; $022c: $0e $00
    ld a, $01                                     ; $022e: $3e $01
    call Call_000_03b6                            ; $0230: $cd $b6 $03
    xor a                                         ; $0233: $af
    ld [$c32f], a                                 ; $0234: $ea $2f $c3
    ld [$c330], a                                 ; $0237: $ea $30 $c3
    ld [$c331], a                                 ; $023a: $ea $31 $c3
    ld bc, $0002                                  ; $023d: $01 $02 $00
    call Call_000_0603                            ; $0240: $cd $03 $06
    di                                            ; $0243: $f3
    xor a                                         ; $0244: $af
    ldh [rIF], a                                  ; $0245: $e0 $0f
    ld sp, $fffe                                  ; $0247: $31 $fe $ff
    call Call_000_0483                            ; $024a: $cd $83 $04
    ld a, $0a                                     ; $024d: $3e $0a
    ld [$0000], a                                 ; $024f: $ea $00 $00
    ld a, $01                                     ; $0252: $3e $01
    ld [BankSwitchTrigger], a                     ; $0254: $ea $00 $20
    ld a, $00                                     ; $0257: $3e $00
    ld [$4000], a                                 ; $0259: $ea $00 $40
    ld a, $01                                     ; $025c: $3e $01
    ld [ActiveROMBank], a                         ; $025e: $ea $12 $c3
    ld sp, $dfff                                  ; $0261: $31 $ff $df
    call Call_000_04bb                            ; $0264: $cd $bb $04
    call Call_000_05b6                            ; $0267: $cd $b6 $05
    call Call_000_05a0                            ; $026a: $cd $a0 $05
    call Call_000_05ab                            ; $026d: $cd $ab $05
    xor a                                         ; $0270: $af
    ld [$c315], a                                 ; $0271: $ea $15 $c3
    ld [$c316], a                                 ; $0274: $ea $16 $c3
    ld [$c317], a                                 ; $0277: $ea $17 $c3
    ld [$c338], a                                 ; $027a: $ea $38 $c3
    ld [$c33c], a                                 ; $027d: $ea $3c $c3

Call_000_0280:
    ld [$c350], a                                 ; $0280: $ea $50 $c3
    ld hl, $c32e                                  ; $0283: $21 $2e $c3
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
    call Call_000_03b6                            ; $02a3: $cd $b6 $03
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

Jump_000_02bc:
    push hl                                       ; $02bc: $e5
    call $ff80                                    ; $02bd: $cd $80 $ff
    call Call_000_0767                            ; $02c0: $cd $67 $07
    ldh a, [rLY]                                  ; $02c3: $f0 $44
    ld a, [$c33c]                                 ; $02c5: $fa $3c $c3
    and a                                         ; $02c8: $a7
    jr nz, jr_000_02d2                            ; $02c9: $20 $07

Jump_000_02cb:
    ld a, [$c32e]                                 ; $02cb: $fa $2e $c3
    ldh [rLCDC], a                                ; $02ce: $e0 $40
    jr jr_000_02d9                                ; $02d0: $18 $07

jr_000_02d2:
    ld a, [$c32e]                                 ; $02d2: $fa $2e $c3
    set 4, a                                      ; $02d5: $cb $e7
    ldh [rLCDC], a                                ; $02d7: $e0 $40

jr_000_02d9:
    ld a, [$c33e]                                 ; $02d9: $fa $3e $c3
    and a                                         ; $02dc: $a7
    jr nz, jr_000_0300                            ; $02dd: $20 $21

    ld hl, $c32f                                  ; $02df: $21 $2f $c3
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
    ld a, [$c31a]                                 ; $0300: $fa $1a $c3
    cp $0f                                        ; $0303: $fe $0f
    jr nz, jr_000_0313                            ; $0305: $20 $0c

    ld a, [$c31e]                                 ; $0307: $fa $1e $c3
    and $0f                                       ; $030a: $e6 $0f
    jr z, jr_000_0313                             ; $030c: $28 $05

    ld hl, $0214                                  ; $030e: $21 $14 $02
    push hl                                       ; $0311: $e5
    reti                                          ; $0312: $d9


jr_000_0313:
    ld a, [$c350]                                 ; $0313: $fa $50 $c3
    and a                                         ; $0316: $a7
    jr nz, jr_000_0322                            ; $0317: $20 $09

    ld a, [$c33e]                                 ; $0319: $fa $3e $c3
    and a                                         ; $031c: $a7
    jr nz, jr_000_0322                            ; $031d: $20 $03

    call Call_000_03ee                            ; $031f: $cd $ee $03

jr_000_0322:
    ld a, [$c33a]                                 ; $0322: $fa $3a $c3
    inc a                                         ; $0325: $3c
    ld [$c33a], a                                 ; $0326: $ea $3a $c3
    ld a, $01                                     ; $0329: $3e $01
    ld [$c339], a                                 ; $032b: $ea $39 $c3
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
    ld hl, $034d                                  ; $0337: $21 $4d $03
    push hl                                       ; $033a: $e5
    ld a, [$c338]                                 ; $033b: $fa $38 $c3
    sla a                                         ; $033e: $cb $27
    ld c, a                                       ; $0340: $4f
    ld b, $00                                     ; $0341: $06 $00
    ld hl, $0352                                  ; $0343: $21 $52 $03
    add hl, bc                                    ; $0346: $09
    ld c, [hl]                                    ; $0347: $4e
    inc hl                                        ; $0348: $23
    ld b, [hl]                                    ; $0349: $46
    push bc                                       ; $034a: $c5
    pop hl                                        ; $034b: $e1
    jp hl                                         ; $034c: $e9


    pop hl                                        ; $034d: $e1
    pop de                                        ; $034e: $d1
    pop bc                                        ; $034f: $c1
    pop af                                        ; $0350: $f1
    reti                                          ; $0351: $d9


    ld e, d                                       ; $0352: $5a
    inc bc                                        ; $0353: $03
    ld l, a                                       ; $0354: $6f
    ld [$089e], sp                                ; $0355: $08 $9e $08
    ld e, d                                       ; $0358: $5a
    inc bc                                        ; $0359: $03
    ret                                           ; $035a: $c9


TimerOverflowInterruptHandlerStub::
    reti                                          ; $035b: $d9


SerialTransferCompleteInterruptHandlerStub::
    reti                                          ; $035c: $d9


JoypadTransitionInterruptHandlerStub::
    reti                                          ; $035d: $d9


    ld c, [hl]                                    ; $035e: $4e
    ld l, a                                       ; $035f: $6f
    ld [hl], d                                    ; $0360: $72
    ld l, c                                       ; $0361: $69
    ld h, c                                       ; $0362: $61
    ld l, e                                       ; $0363: $6b
    ld l, c                                       ; $0364: $69
    ld d, h                                       ; $0365: $54
    ld h, l                                       ; $0366: $65
    ld [hl], d                                    ; $0367: $72
    ld h, c                                       ; $0368: $61
    ld l, l                                       ; $0369: $6d
    ld l, a                                       ; $036a: $6f
    ld [hl], h                                    ; $036b: $74
    ld l, a                                       ; $036c: $6f
    ld b, l                                       ; $036d: $45
    ld e, a                                       ; $036e: $5f
    ld [bc], a                                    ; $036f: $02
    inc bc                                        ; $0370: $03
    rrca                                          ; $0371: $0f
    nop                                           ; $0372: $00

Call_000_0373:
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
    ld a, [ActiveROMBank]                         ; $037f: $fa $12 $c3
    push af                                       ; $0382: $f5
    ld a, [hl]                                    ; $0383: $7e
    ld [ActiveROMBank], a                         ; $0384: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $0387: $ea $00 $20
    ld l, e                                       ; $038a: $6b
    ld h, d                                       ; $038b: $62
    ld de, $0391                                  ; $038c: $11 $91 $03
    push de                                       ; $038f: $d5
    jp hl                                         ; $0390: $e9


    pop af                                        ; $0391: $f1
    ld [ActiveROMBank], a                         ; $0392: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $0395: $ea $00 $20
    ret                                           ; $0398: $c9


Call_000_0399:
    push hl                                       ; $0399: $e5
    ldh a, [rLCDC]                                ; $039a: $f0 $40
    bit 7, a                                      ; $039c: $cb $7f
    jr nz, jr_000_03ad                            ; $039e: $20 $0d

    ld de, $06d6                                  ; $03a0: $11 $d6 $06

jr_000_03a3:
    nop                                           ; $03a3: $00
    nop                                           ; $03a4: $00
    nop                                           ; $03a5: $00
    dec de                                        ; $03a6: $1b
    ld a, d                                       ; $03a7: $7a
    or e                                          ; $03a8: $b3
    jr nz, jr_000_03a3                            ; $03a9: $20 $f8

    pop hl                                        ; $03ab: $e1
    ret                                           ; $03ac: $c9


jr_000_03ad:
    rst RST_08                                    ; $03ad: $cf

jr_000_03ae:
    ldh a, [rLY]                                  ; $03ae: $f0 $44
    cp $40                                        ; $03b0: $fe $40
    jr c, jr_000_03ae                             ; $03b2: $38 $fa

    pop hl                                        ; $03b4: $e1
    ret                                           ; $03b5: $c9


Call_000_03b6:
    push af                                       ; $03b6: $f5
    push bc                                       ; $03b7: $c5
    push de                                       ; $03b8: $d5
    push hl                                       ; $03b9: $e5
    ld l, a                                       ; $03ba: $6f
    ldh a, [rIE]                                  ; $03bb: $f0 $ff
    push af                                       ; $03bd: $f5
    res 0, a                                      ; $03be: $cb $87
    ldh [rIE], a                                  ; $03c0: $e0 $ff
    ld a, [ActiveROMBank]                         ; $03c2: $fa $12 $c3
    push af                                       ; $03c5: $f5
    ld a, $0f                                     ; $03c6: $3e $0f
    ld [ActiveROMBank], a                         ; $03c8: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $03cb: $ea $00 $20

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
    ld [ActiveROMBank], a                         ; $03e0: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $03e3: $ea $00 $20
    pop af                                        ; $03e6: $f1
    ldh [rIE], a                                  ; $03e7: $e0 $ff
    pop hl                                        ; $03e9: $e1
    pop de                                        ; $03ea: $d1
    pop bc                                        ; $03eb: $c1
    pop af                                        ; $03ec: $f1
    ret                                           ; $03ed: $c9


Call_000_03ee:
    push af                                       ; $03ee: $f5
    push bc                                       ; $03ef: $c5
    push de                                       ; $03f0: $d5

Call_000_03f1:
Jump_000_03f1:
    push hl                                       ; $03f1: $e5

Jump_000_03f2:
    ld a, [ActiveROMBank]                         ; $03f2: $fa $12 $c3
    push af                                       ; $03f5: $f5
    ld a, $0f                                     ; $03f6: $3e $0f
    ld [ActiveROMBank], a                         ; $03f8: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $03fb: $ea $00 $20
    call $4003                                    ; $03fe: $cd $03 $40
    pop af                                        ; $0401: $f1
    ld [ActiveROMBank], a                         ; $0402: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $0405: $ea $00 $20
    pop hl                                        ; $0408: $e1
    pop de                                        ; $0409: $d1
    pop bc                                        ; $040a: $c1
    pop af                                        ; $040b: $f1
    ret                                           ; $040c: $c9


Call_000_040d:
    ld a, [$c33d]                                 ; $040d: $fa $3d $c3
    and a                                         ; $0410: $a7
    jp nz, Jump_000_1fc8                          ; $0411: $c2 $c8 $1f

    ld a, [ActiveROMBank]                         ; $0414: $fa $12 $c3
    push af                                       ; $0417: $f5
    ld a, b                                       ; $0418: $78
    ld [ActiveROMBank], a                         ; $0419: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $041c: $ea $00 $20
    ld b, $04                                     ; $041f: $06 $04

jr_000_0421:
    ld a, [hl+]                                   ; $0421: $2a
    ld [$c32f], a                                 ; $0422: $ea $2f $c3
    ld a, [hl+]                                   ; $0425: $2a
    ld [$c330], a                                 ; $0426: $ea $30 $c3
    ld a, [hl+]                                   ; $0429: $2a
    ld [$c331], a                                 ; $042a: $ea $31 $c3
    push bc                                       ; $042d: $c5
    push hl                                       ; $042e: $e5
    ld bc, $0004                                  ; $042f: $01 $04 $00
    call Call_000_0603                            ; $0432: $cd $03 $06
    pop hl                                        ; $0435: $e1
    pop bc                                        ; $0436: $c1
    dec b                                         ; $0437: $05
    jr nz, jr_000_0421                            ; $0438: $20 $e7

    ld [$d63c], a                                 ; $043a: $ea $3c $d6
    ld [$d63d], a                                 ; $043d: $ea $3d $d6
    ld [$d63e], a                                 ; $0440: $ea $3e $d6
    ld [$d63f], a                                 ; $0443: $ea $3f $d6
    pop af                                        ; $0446: $f1
    ld [ActiveROMBank], a                         ; $0447: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $044a: $ea $00 $20
    ret                                           ; $044d: $c9


Call_000_044e:
    ld a, [$c33d]                                 ; $044e: $fa $3d $c3
    and a                                         ; $0451: $a7
    jp nz, Jump_000_204a                          ; $0452: $c2 $4a $20

    ld a, [ActiveROMBank]                         ; $0455: $fa $12 $c3
    push af                                       ; $0458: $f5
    ld a, b                                       ; $0459: $78
    ld [ActiveROMBank], a                         ; $045a: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $045d: $ea $00 $20
    ld b, $04                                     ; $0460: $06 $04

jr_000_0462:
    ld a, [hl-]                                   ; $0462: $3a
    ld [$c331], a                                 ; $0463: $ea $31 $c3
    ld a, [hl-]                                   ; $0466: $3a
    ld [$c330], a                                 ; $0467: $ea $30 $c3
    ld a, [hl-]                                   ; $046a: $3a
    ld [$c32f], a                                 ; $046b: $ea $2f $c3
    push bc                                       ; $046e: $c5
    push hl                                       ; $046f: $e5
    ld bc, $0004                                  ; $0470: $01 $04 $00
    call Call_000_0603                            ; $0473: $cd $03 $06
    pop hl                                        ; $0476: $e1
    pop bc                                        ; $0477: $c1
    dec b                                         ; $0478: $05
    jr nz, jr_000_0462                            ; $0479: $20 $e7

    pop af                                        ; $047b: $f1
    ld [ActiveROMBank], a                         ; $047c: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $047f: $ea $00 $20
    ret                                           ; $0482: $c9


Call_000_0483:
    ldh a, [rLCDC]                                ; $0483: $f0 $40
    bit 7, a                                      ; $0485: $cb $7f
    ret z                                         ; $0487: $c8

    ldh a, [rIE]                                  ; $0488: $f0 $ff
    push af                                       ; $048a: $f5
    xor a                                         ; $048b: $af
    ldh [rIE], a                                  ; $048c: $e0 $ff

jr_000_048e:
    ldh a, [rLY]                                  ; $048e: $f0 $44
    cp $91                                        ; $0490: $fe $91
    jr nz, jr_000_048e                            ; $0492: $20 $fa

    ld a, [$c32e]                                 ; $0494: $fa $2e $c3
    res 7, a                                      ; $0497: $cb $bf
    ldh [rLCDC], a                                ; $0499: $e0 $40
    ld [$c32e], a                                 ; $049b: $ea $2e $c3
    pop af                                        ; $049e: $f1
    ldh [rIE], a                                  ; $049f: $e0 $ff
    ret                                           ; $04a1: $c9


Call_000_04a2:
    ld a, [$c32e]                                 ; $04a2: $fa $2e $c3
    set 7, a                                      ; $04a5: $cb $ff
    ldh [rLCDC], a                                ; $04a7: $e0 $40
    ld [$c32e], a                                 ; $04a9: $ea $2e $c3
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


Call_000_04d3:
jr_000_04d3:
    xor a                                         ; $04d3: $af
    ld [hl+], a                                   ; $04d4: $22
    dec bc                                        ; $04d5: $0b
    ld a, c                                       ; $04d6: $79

Call_000_04d7:
    or b                                          ; $04d7: $b0
    jr nz, jr_000_04d3                            ; $04d8: $20 $f9

Call_000_04da:
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

Jump_000_04e3:
    ret                                           ; $04e3: $c9


BankedTileCopy::
    ld [RequestedROMBank], a                      ; $04e4: $ea $14 $c3
    ld a, [ActiveROMBank]                         ; $04e7: $fa $12 $c3
    push af                                       ; $04ea: $f5
    ld a, [RequestedROMBank]                      ; $04eb: $fa $14 $c3
    ld [ActiveROMBank], a                         ; $04ee: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $04f1: $ea $00 $20

jr_000_04f4:
    ld a, [hl+]                                   ; $04f4: $2a
    ld [de], a                                    ; $04f5: $12
    inc de                                        ; $04f6: $13
    dec bc                                        ; $04f7: $0b
    ld a, c                                       ; $04f8: $79
    or b                                          ; $04f9: $b0
    jr nz, jr_000_04f4                            ; $04fa: $20 $f8

    pop af                                        ; $04fc: $f1
    ld [ActiveROMBank], a                         ; $04fd: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $0500: $ea $00 $20
    ret                                           ; $0503: $c9


Call_000_0504:
    ld [RequestedROMBank], a                      ; $0504: $ea $14 $c3
    ld a, [ActiveROMBank]                         ; $0507: $fa $12 $c3
    push af                                       ; $050a: $f5
    ld a, [RequestedROMBank]                      ; $050b: $fa $14 $c3
    ld [ActiveROMBank], a                         ; $050e: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $0511: $ea $00 $20
    srl b                                         ; $0514: $cb $38
    rr c                                          ; $0516: $cb $19

jr_000_0518:
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
    jr nz, jr_000_0518                            ; $052e: $20 $e8

    pop af                                        ; $0530: $f1
    ld [ActiveROMBank], a                         ; $0531: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $0534: $ea $00 $20
    ret                                           ; $0537: $c9


BankedTileCopyVRAMSafe::
    ld [RequestedROMBank], a                      ; $0538: $ea $14 $c3
    ld a, [ActiveROMBank]                         ; $053b: $fa $12 $c3
    push af                                       ; $053e: $f5
    ld a, [RequestedROMBank]                      ; $053f: $fa $14 $c3
    ld [ActiveROMBank], a                         ; $0542: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $0545: $ea $00 $20
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

    ld a, [$c32e]                                 ; $055d: $fa $2e $c3
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

    ld a, [$c32e]                                 ; $0588: $fa $2e $c3
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
    ld [ActiveROMBank], a                         ; $0599: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $059c: $ea $00 $20
    ret                                           ; $059f: $c9


Call_000_05a0:
    ld a, $01                                     ; $05a0: $3e $01
    ld hl, $9800                                  ; $05a2: $21 $00 $98

jr_000_05a5:
    ld [hl+], a                                   ; $05a5: $22
    bit 2, h                                      ; $05a6: $cb $54
    jr z, jr_000_05a5                             ; $05a8: $28 $fb

    ret                                           ; $05aa: $c9


Call_000_05ab:
    ld a, $01                                     ; $05ab: $3e $01
    ld hl, $9c00                                  ; $05ad: $21 $00 $9c

jr_000_05b0:
    ld [hl+], a                                   ; $05b0: $22
    bit 5, h                                      ; $05b1: $cb $6c
    jr z, jr_000_05b0                             ; $05b3: $28 $fb

    ret                                           ; $05b5: $c9


Call_000_05b6:
    ld a, $f0                                     ; $05b6: $3e $f0
    ld hl, $c000                                  ; $05b8: $21 $00 $c0

jr_000_05bb:
    ld [hl+], a                                   ; $05bb: $22
    bit 0, h                                      ; $05bc: $cb $44
    jr z, jr_000_05bb                             ; $05be: $28 $fb

    xor a                                         ; $05c0: $af
    ld [$c311], a                                 ; $05c1: $ea $11 $c3
    ret                                           ; $05c4: $c9


Call_000_05c5:
    ld a, [$c311]                                 ; $05c5: $fa $11 $c3
    ld l, a                                       ; $05c8: $6f
    ld h, $c0                                     ; $05c9: $26 $c0
    ld a, $f0                                     ; $05cb: $3e $f0

jr_000_05cd:
    ld [hl+], a                                   ; $05cd: $22
    bit 0, h                                      ; $05ce: $cb $44
    jr z, jr_000_05cd                             ; $05d0: $28 $fb

    xor a                                         ; $05d2: $af
    ld [$c311], a                                 ; $05d3: $ea $11 $c3
    ret                                           ; $05d6: $c9


Call_000_05d7:
    ld [ActiveROMBank], a                         ; $05d7: $ea $12 $c3

Jump_000_05da:
    ld [BankSwitchTrigger], a                     ; $05da: $ea $00 $20
    jp hl                                         ; $05dd: $e9


Call_000_05de:
    ld a, [ActiveROMBank]                         ; $05de: $fa $12 $c3
    push af                                       ; $05e1: $f5
    ld a, b                                       ; $05e2: $78
    ld [ActiveROMBank], a                         ; $05e3: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $05e6: $ea $00 $20
    jp hl                                         ; $05e9: $e9


Jump_000_05ea:
    push af                                       ; $05ea: $f5
    push hl                                       ; $05eb: $e5
    ld hl, sp+$05                                 ; $05ec: $f8 $05
    ld a, [hl]                                    ; $05ee: $7e
    ld [ActiveROMBank], a                         ; $05ef: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $05f2: $ea $00 $20
    pop hl                                        ; $05f5: $e1
    pop af                                        ; $05f6: $f1

Jump_000_05f7:
    inc sp                                        ; $05f7: $33
    inc sp                                        ; $05f8: $33
    ret                                           ; $05f9: $c9


Call_000_05fa:
jr_000_05fa:
    push bc                                       ; $05fa: $c5
    rst RST_08                                    ; $05fb: $cf
    pop bc                                        ; $05fc: $c1
    dec bc                                        ; $05fd: $0b
    ld a, c                                       ; $05fe: $79
    or b                                          ; $05ff: $b0
    jr nz, jr_000_05fa                            ; $0600: $20 $f8

    ret                                           ; $0602: $c9


Call_000_0603:
jr_000_0603:
    ld de, $06d6                                  ; $0603: $11 $d6 $06

jr_000_0606:
    nop                                           ; $0606: $00
    nop                                           ; $0607: $00
    nop                                           ; $0608: $00
    dec de                                        ; $0609: $1b
    ld a, d                                       ; $060a: $7a
    or e                                          ; $060b: $b3
    jr nz, jr_000_0606                            ; $060c: $20 $f8

    dec bc                                        ; $060e: $0b
    ld a, b                                       ; $060f: $78
    or c                                          ; $0610: $b1
    jr nz, jr_000_0603                            ; $0611: $20 $f0

    ret                                           ; $0613: $c9


Call_000_0614:
    push hl                                       ; $0614: $e5
    ld a, [$cd6a]                                 ; $0615: $fa $6a $cd
    ld c, a                                       ; $0618: $4f
    ld b, $00                                     ; $0619: $06 $00
    inc a                                         ; $061b: $3c
    cp $37                                        ; $061c: $fe $37
    jr nz, jr_000_0627                            ; $061e: $20 $07

    call $06a7                                    ; $0620: $cd $a7 $06
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
    ld hl, $0671                                  ; $0646: $21 $71 $06
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

    call $06a7                                    ; $0667: $cd $a7 $06
    call $06a7                                    ; $066a: $cd $a7 $06
    call $06a7                                    ; $066d: $cd $a7 $06
    ret                                           ; $0670: $c9


    inc d                                         ; $0671: $14
    add hl, hl                                    ; $0672: $29
    rlca                                          ; $0673: $07
    inc e                                         ; $0674: $1c
    ld sp, $240f                                  ; $0675: $31 $0f $24
    ld [bc], a                                    ; $0678: $02
    rla                                           ; $0679: $17
    inc l                                         ; $067a: $2c
    ld a, [bc]                                    ; $067b: $0a
    rra                                           ; $067c: $1f
    inc [hl]                                      ; $067d: $34
    ld [de], a                                    ; $067e: $12
    daa                                           ; $067f: $27
    dec b                                         ; $0680: $05
    ld a, [de]                                    ; $0681: $1a
    cpl                                           ; $0682: $2f
    dec c                                         ; $0683: $0d
    ld [hl+], a                                   ; $0684: $22
    nop                                           ; $0685: $00
    dec d                                         ; $0686: $15
    ld a, [hl+]                                   ; $0687: $2a
    ld [$321d], sp                                ; $0688: $08 $1d $32
    db $10                                        ; $068b: $10
    dec h                                         ; $068c: $25
    inc bc                                        ; $068d: $03
    jr @+$2f                                      ; $068e: $18 $2d

    dec bc                                        ; $0690: $0b
    jr nz, jr_000_06c8                            ; $0691: $20 $35

    inc de                                        ; $0693: $13
    jr z, @+$08                                   ; $0694: $28 $06

    dec de                                        ; $0696: $1b
    jr nc, @+$10                                  ; $0697: $30 $0e

    inc hl                                        ; $0699: $23
    ld bc, $2b16                                  ; $069a: $01 $16 $2b
    add hl, bc                                    ; $069d: $09
    ld e, $33                                     ; $069e: $1e $33
    ld de, $0426                                  ; $06a0: $11 $26 $04
    add hl, de                                    ; $06a3: $19
    ld l, $0c                                     ; $06a4: $2e $0c
    ld hl, $69fa                                  ; $06a6: $21 $fa $69
    call Call_000_0157                            ; $06a9: $cd $57 $01
    ld l, e                                       ; $06ac: $6b
    call $8a21                                    ; $06ad: $cd $21 $8a
    call Call_000_181e                            ; $06b0: $cd $1e $18

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

jr_000_06c8:
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
    ld [$c31a], a                                 ; $06f3: $ea $1a $c3
    ld a, $30                                     ; $06f6: $3e $30
    ldh [rP1], a                                  ; $06f8: $e0 $00
    ld a, [$c31a]                                 ; $06fa: $fa $1a $c3
    ld hl, $c326                                  ; $06fd: $21 $26 $c3
    xor [hl]                                      ; $0700: $ae
    ld hl, $c31a                                  ; $0701: $21 $1a $c3
    and [hl]                                      ; $0704: $a6
    ld [$c31e], a                                 ; $0705: $ea $1e $c3
    ld [$c322], a                                 ; $0708: $ea $22 $c3
    ld a, [$c31a]                                 ; $070b: $fa $1a $c3
    and a                                         ; $070e: $a7
    jr z, jr_000_072b                             ; $070f: $28 $1a

    ld hl, $c326                                  ; $0711: $21 $26 $c3
    cp [hl]                                       ; $0714: $be
    jr nz, jr_000_072b                            ; $0715: $20 $14

    ld hl, $c32a                                  ; $0717: $21 $2a $c3
    dec [hl]                                      ; $071a: $35
    jr nz, jr_000_0731                            ; $071b: $20 $14

    ld a, [$c31a]                                 ; $071d: $fa $1a $c3
    ld [$c322], a                                 ; $0720: $ea $22 $c3
    ld a, [$c319]                                 ; $0723: $fa $19 $c3
    ld [$c32a], a                                 ; $0726: $ea $2a $c3
    jr jr_000_0731                                ; $0729: $18 $06

jr_000_072b:
    ld a, [$c318]                                 ; $072b: $fa $18 $c3
    ld [$c32a], a                                 ; $072e: $ea $2a $c3

jr_000_0731:
    ld a, [$c31a]                                 ; $0731: $fa $1a $c3
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
    ld a, [ActiveROMBank]                         ; $077b: $fa $12 $c3
    push af                                       ; $077e: $f5
    ld a, [hl]                                    ; $077f: $7e
    ld [ActiveROMBank], a                         ; $0780: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $0783: $ea $00 $20
    inc l                                         ; $0786: $2c
    call Call_000_0798                            ; $0787: $cd $98 $07
    pop af                                        ; $078a: $f1
    ld [ActiveROMBank], a                         ; $078b: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $078e: $ea $00 $20
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


Call_000_07f1:
    ld hl, $d640                                  ; $07f1: $21 $40 $d6
    ld bc, $0100                                  ; $07f4: $01 $00 $01
    call Call_000_04d3                            ; $07f7: $cd $d3 $04
    ld a, [$d807]                                 ; $07fa: $fa $07 $d8
    ld c, a                                       ; $07fd: $4f
    ld a, [$d808]                                 ; $07fe: $fa $08 $d8
    ld b, a                                       ; $0801: $47
    sla c                                         ; $0802: $cb $21
    rl b                                          ; $0804: $cb $10
    ld hl, $552e                                  ; $0806: $21 $2e $55
    ld a, [ActiveROMBank]                         ; $0809: $fa $12 $c3
    push af                                       ; $080c: $f5
    ld a, $03                                     ; $080d: $3e $03
    ld [ActiveROMBank], a                         ; $080f: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $0812: $ea $00 $20
    add hl, bc                                    ; $0815: $09
    ld e, [hl]                                    ; $0816: $5e
    inc hl                                        ; $0817: $23
    ld d, [hl]                                    ; $0818: $56
    pop af                                        ; $0819: $f1
    ld [ActiveROMBank], a                         ; $081a: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $081d: $ea $00 $20
    ld a, [ActiveROMBank]                         ; $0820: $fa $12 $c3
    push af                                       ; $0823: $f5
    ld a, $02                                     ; $0824: $3e $02
    ld [ActiveROMBank], a                         ; $0826: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $0829: $ea $00 $20
    ld b, $1e                                     ; $082c: $06 $1e
    ld hl, $d640                                  ; $082e: $21 $40 $d6

jr_000_0831:
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
    jr nz, jr_000_0831                            ; $085c: $20 $d3

    ld a, [de]                                    ; $085e: $1a
    ld [CurrentGridSize], a                       ; $085f: $ea $00 $d8
    inc de                                        ; $0862: $13
    ld a, [de]                                    ; $0863: $1a
    ld [$d801], a                                 ; $0864: $ea $01 $d8
    pop af                                        ; $0867: $f1
    ld [ActiveROMBank], a                         ; $0868: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $086b: $ea $00 $20
    ret                                           ; $086e: $c9


    ldh a, [rLY]                                  ; $086f: $f0 $44
    cp $2f                                        ; $0871: $fe $2f
    jr nz, jr_000_089d                            ; $0873: $20 $28

    ld a, $03                                     ; $0875: $3e $03
    ld hl, rSTAT                                  ; $0877: $21 $41 $ff

jr_000_087a:
    and [hl]                                      ; $087a: $a6
    jr nz, jr_000_087a                            ; $087b: $20 $fd

    ld a, [$c32e]                                 ; $087d: $fa $2e $c3
    res 4, a                                      ; $0880: $cb $a7
    ldh [rLCDC], a                                ; $0882: $e0 $40
    ld hl, $d80d                                  ; $0884: $21 $0d $d8
    inc [hl]                                      ; $0887: $34
    ld a, [$c33b]                                 ; $0888: $fa $3b $c3
    inc a                                         ; $088b: $3c
    ld [$c33b], a                                 ; $088c: $ea $3b $c3
    ld a, [$c350]                                 ; $088f: $fa $50 $c3
    and a                                         ; $0892: $a7
    ret z                                         ; $0893: $c8

    ld a, [$c33e]                                 ; $0894: $fa $3e $c3
    and a                                         ; $0897: $a7
    jr nz, jr_000_089d                            ; $0898: $20 $03

    call Call_000_03ee                            ; $089a: $cd $ee $03

jr_000_089d:
    ret                                           ; $089d: $c9


    ldh a, [rLY]                                  ; $089e: $f0 $44
    cp $2f                                        ; $08a0: $fe $2f
    jr nz, jr_000_08b2                            ; $08a2: $20 $0e

    ld a, [$c350]                                 ; $08a4: $fa $50 $c3
    and a                                         ; $08a7: $a7
    ret z                                         ; $08a8: $c8

    ld a, [$c33e]                                 ; $08a9: $fa $3e $c3
    and a                                         ; $08ac: $a7
    jr nz, jr_000_08b2                            ; $08ad: $20 $03

    call Call_000_03ee                            ; $08af: $cd $ee $03

jr_000_08b2:
    ret                                           ; $08b2: $c9


Call_000_08b3:
Jump_000_08b3:
    ld a, [$c351]                                 ; $08b3: $fa $51 $c3
    and $07                                       ; $08b6: $e6 $07
    ld c, a                                       ; $08b8: $4f
    ld b, $00                                     ; $08b9: $06 $00
    ld hl, $0d59                                  ; $08bb: $21 $59 $0d
    add hl, bc                                    ; $08be: $09
    ld a, [hl]                                    ; $08bf: $7e
    ld [$c359], a                                 ; $08c0: $ea $59 $c3
    ld a, [$c353]                                 ; $08c3: $fa $53 $c3
    and $07                                       ; $08c6: $e6 $07
    ld c, a                                       ; $08c8: $4f
    ld b, $00                                     ; $08c9: $06 $00
    ld hl, $0d62                                  ; $08cb: $21 $62 $0d
    add hl, bc                                    ; $08ce: $09
    ld a, [hl]                                    ; $08cf: $7e
    ld [$c35a], a                                 ; $08d0: $ea $5a $c3
    ld a, [$c351]                                 ; $08d3: $fa $51 $c3
    and $f8                                       ; $08d6: $e6 $f8
    ld c, a                                       ; $08d8: $4f
    ld a, [$c353]                                 ; $08d9: $fa $53 $c3
    and $f8                                       ; $08dc: $e6 $f8
    sub c                                         ; $08de: $91
    srl a                                         ; $08df: $cb $3f
    srl a                                         ; $08e1: $cb $3f
    srl a                                         ; $08e3: $cb $3f
    ld [$c35b], a                                 ; $08e5: $ea $5b $c3
    ld a, [$c351]                                 ; $08e8: $fa $51 $c3
    ld c, a                                       ; $08eb: $4f
    ld a, [$c353]                                 ; $08ec: $fa $53 $c3
    sub c                                         ; $08ef: $91
    srl a                                         ; $08f0: $cb $3f
    srl a                                         ; $08f2: $cb $3f
    srl a                                         ; $08f4: $cb $3f
    inc a                                         ; $08f6: $3c
    ld [$c35c], a                                 ; $08f7: $ea $5c $c3
    ld a, [$c351]                                 ; $08fa: $fa $51 $c3
    and $07                                       ; $08fd: $e6 $07
    ld c, a                                       ; $08ff: $4f
    add $38                                       ; $0900: $c6 $38
    ld [$c35e], a                                 ; $0902: $ea $5e $c3
    ld b, $00                                     ; $0905: $06 $00
    ld hl, $0d59                                  ; $0907: $21 $59 $0d
    add hl, bc                                    ; $090a: $09
    ld a, [hl]                                    ; $090b: $7e
    ld [$c35f], a                                 ; $090c: $ea $5f $c3
    ld hl, $0d61                                  ; $090f: $21 $61 $0d
    add hl, bc                                    ; $0912: $09
    ld a, [hl]                                    ; $0913: $7e
    ld [$c360], a                                 ; $0914: $ea $60 $c3
    ld a, [$c355]                                 ; $0917: $fa $55 $c3
    ld c, a                                       ; $091a: $4f
    ld a, [$c356]                                 ; $091b: $fa $56 $c3
    ld b, a                                       ; $091e: $47
    ld a, [ActiveROMBank]                         ; $091f: $fa $12 $c3
    push af                                       ; $0922: $f5
    ld a, [$c357]                                 ; $0923: $fa $57 $c3
    ld [ActiveROMBank], a                         ; $0926: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $0929: $ea $00 $20
    ld de, $c363                                  ; $092c: $11 $63 $c3
    ld a, [$c352]                                 ; $092f: $fa $52 $c3
    ld l, a                                       ; $0932: $6f
    ld a, [$c351]                                 ; $0933: $fa $51 $c3
    and $f8                                       ; $0936: $e6 $f8
    ld h, a                                       ; $0938: $67

Jump_000_0939:
    xor a                                         ; $0939: $af
    ld [$c361], a                                 ; $093a: $ea $61 $c3
    ld [$c362], a                                 ; $093d: $ea $62 $c3
    ld a, [$c35c]                                 ; $0940: $fa $5c $c3
    ld [$c35d], a                                 ; $0943: $ea $5d $c3
    ld a, [$c359]                                 ; $0946: $fa $59 $c3
    ld [$c358], a                                 ; $0949: $ea $58 $c3
    push bc                                       ; $094c: $c5
    push hl                                       ; $094d: $e5
    ld a, [$c35b]                                 ; $094e: $fa $5b $c3
    and a                                         ; $0951: $a7
    jr nz, jr_000_0963                            ; $0952: $20 $0f

    push hl                                       ; $0954: $e5
    ld a, [$c35a]                                 ; $0955: $fa $5a $c3
    ld hl, $c359                                  ; $0958: $21 $59 $c3
    and [hl]                                      ; $095b: $a6
    ld [$c358], a                                 ; $095c: $ea $58 $c3
    pop hl                                        ; $095f: $e1
    jp Jump_000_0a11                              ; $0960: $c3 $11 $0a


jr_000_0963:
    push hl                                       ; $0963: $e5
    call Call_000_0d6a                            ; $0964: $cd $6a $0d
    ld a, [$c358]                                 ; $0967: $fa $58 $c3
    ld [de], a                                    ; $096a: $12
    inc de                                        ; $096b: $13
    ld a, [bc]                                    ; $096c: $0a
    ld l, a                                       ; $096d: $6f
    ld a, [$c35e]                                 ; $096e: $fa $5e $c3
    ld h, a                                       ; $0971: $67
    ld a, [hl]                                    ; $0972: $7e
    ld [de], a                                    ; $0973: $12
    ld hl, $c360                                  ; $0974: $21 $60 $c3
    and [hl]                                      ; $0977: $a6
    ld [$c361], a                                 ; $0978: $ea $61 $c3
    inc bc                                        ; $097b: $03
    inc de                                        ; $097c: $13
    ld a, [bc]                                    ; $097d: $0a
    ld l, a                                       ; $097e: $6f
    ld a, [$c35e]                                 ; $097f: $fa $5e $c3
    ld h, a                                       ; $0982: $67
    ld a, [hl]                                    ; $0983: $7e
    ld [de], a                                    ; $0984: $12
    ld hl, $c360                                  ; $0985: $21 $60 $c3
    and [hl]                                      ; $0988: $a6
    ld [$c362], a                                 ; $0989: $ea $62 $c3
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
    ld a, [$c35d]                                 ; $099a: $fa $5d $c3
    dec a                                         ; $099d: $3d
    ld [$c35d], a                                 ; $099e: $ea $5d $c3
    ld a, [$c35b]                                 ; $09a1: $fa $5b $c3
    dec a                                         ; $09a4: $3d
    jr z, jr_000_0a0b                             ; $09a5: $28 $64

jr_000_09a7:
    push af                                       ; $09a7: $f5
    push hl                                       ; $09a8: $e5
    call Call_000_0d6a                            ; $09a9: $cd $6a $0d
    ld a, $ff                                     ; $09ac: $3e $ff
    ld [de], a                                    ; $09ae: $12
    inc de                                        ; $09af: $13
    ld a, [$c35d]                                 ; $09b0: $fa $5d $c3
    and a                                         ; $09b3: $a7
    jr z, jr_000_09b8                             ; $09b4: $28 $02

    ld a, [bc]                                    ; $09b6: $0a
    inc bc                                        ; $09b7: $03

jr_000_09b8:
    ld l, a                                       ; $09b8: $6f
    ld a, [$c35e]                                 ; $09b9: $fa $5e $c3
    ld h, a                                       ; $09bc: $67
    ld a, [hl]                                    ; $09bd: $7e
    push af                                       ; $09be: $f5
    ld hl, $c35f                                  ; $09bf: $21 $5f $c3
    and [hl]                                      ; $09c2: $a6
    ld hl, $c361                                  ; $09c3: $21 $61 $c3
    or [hl]                                       ; $09c6: $b6
    ld [de], a                                    ; $09c7: $12
    pop af                                        ; $09c8: $f1
    ld hl, $c360                                  ; $09c9: $21 $60 $c3
    and [hl]                                      ; $09cc: $a6
    ld [$c361], a                                 ; $09cd: $ea $61 $c3
    inc de                                        ; $09d0: $13
    ld a, [$c35d]                                 ; $09d1: $fa $5d $c3
    and a                                         ; $09d4: $a7
    jr z, jr_000_09e2                             ; $09d5: $28 $0b

    ld a, [bc]                                    ; $09d7: $0a
    push af                                       ; $09d8: $f5
    ld a, c                                       ; $09d9: $79
    add $0f                                       ; $09da: $c6 $0f
    ld c, a                                       ; $09dc: $4f
    ld a, b                                       ; $09dd: $78
    adc $00                                       ; $09de: $ce $00
    ld b, a                                       ; $09e0: $47
    pop af                                        ; $09e1: $f1

jr_000_09e2:
    ld l, a                                       ; $09e2: $6f
    ld a, [$c35e]                                 ; $09e3: $fa $5e $c3
    ld h, a                                       ; $09e6: $67
    ld a, [hl]                                    ; $09e7: $7e
    push af                                       ; $09e8: $f5
    ld hl, $c35f                                  ; $09e9: $21 $5f $c3
    and [hl]                                      ; $09ec: $a6
    ld hl, $c362                                  ; $09ed: $21 $62 $c3
    or [hl]                                       ; $09f0: $b6
    ld [de], a                                    ; $09f1: $12
    pop af                                        ; $09f2: $f1
    ld hl, $c360                                  ; $09f3: $21 $60 $c3
    and [hl]                                      ; $09f6: $a6
    ld [$c362], a                                 ; $09f7: $ea $62 $c3
    inc de                                        ; $09fa: $13
    pop hl                                        ; $09fb: $e1
    ld a, h                                       ; $09fc: $7c
    add $08                                       ; $09fd: $c6 $08
    ld h, a                                       ; $09ff: $67
    ld a, [$c35d]                                 ; $0a00: $fa $5d $c3
    dec a                                         ; $0a03: $3d
    ld [$c35d], a                                 ; $0a04: $ea $5d $c3
    pop af                                        ; $0a07: $f1
    dec a                                         ; $0a08: $3d
    jr nz, jr_000_09a7                            ; $0a09: $20 $9c

jr_000_0a0b:
    ld a, [$c35a]                                 ; $0a0b: $fa $5a $c3
    ld [$c358], a                                 ; $0a0e: $ea $58 $c3

Jump_000_0a11:
    call Call_000_0d6a                            ; $0a11: $cd $6a $0d
    ld a, [$c358]                                 ; $0a14: $fa $58 $c3
    ld [de], a                                    ; $0a17: $12
    inc de                                        ; $0a18: $13
    ld a, [$c35d]                                 ; $0a19: $fa $5d $c3
    and a                                         ; $0a1c: $a7
    jr z, jr_000_0a21                             ; $0a1d: $28 $02

    ld a, [bc]                                    ; $0a1f: $0a
    inc bc                                        ; $0a20: $03

jr_000_0a21:
    ld l, a                                       ; $0a21: $6f
    ld a, [$c35e]                                 ; $0a22: $fa $5e $c3
    ld h, a                                       ; $0a25: $67
    ld a, [hl]                                    ; $0a26: $7e
    push af                                       ; $0a27: $f5
    ld hl, $c35f                                  ; $0a28: $21 $5f $c3
    and [hl]                                      ; $0a2b: $a6
    ld hl, $c361                                  ; $0a2c: $21 $61 $c3
    or [hl]                                       ; $0a2f: $b6
    ld [de], a                                    ; $0a30: $12
    pop af                                        ; $0a31: $f1

Jump_000_0a32:
    ld hl, $c360                                  ; $0a32: $21 $60 $c3
    and [hl]                                      ; $0a35: $a6
    ld [$c361], a                                 ; $0a36: $ea $61 $c3
    inc de                                        ; $0a39: $13
    ld a, [$c35d]                                 ; $0a3a: $fa $5d $c3
    and a                                         ; $0a3d: $a7
    jr z, jr_000_0a4b                             ; $0a3e: $28 $0b

    ld a, [bc]                                    ; $0a40: $0a
    push af                                       ; $0a41: $f5
    ld a, c                                       ; $0a42: $79
    add $0f                                       ; $0a43: $c6 $0f
    ld c, a                                       ; $0a45: $4f
    ld a, b                                       ; $0a46: $78
    adc $00                                       ; $0a47: $ce $00
    ld b, a                                       ; $0a49: $47
    pop af                                        ; $0a4a: $f1

jr_000_0a4b:
    ld l, a                                       ; $0a4b: $6f
    ld a, [$c35e]                                 ; $0a4c: $fa $5e $c3
    ld h, a                                       ; $0a4f: $67
    ld a, [hl]                                    ; $0a50: $7e
    push af                                       ; $0a51: $f5
    ld hl, $c35f                                  ; $0a52: $21 $5f $c3
    and [hl]                                      ; $0a55: $a6
    ld hl, $c362                                  ; $0a56: $21 $62 $c3
    or [hl]                                       ; $0a59: $b6
    ld [de], a                                    ; $0a5a: $12
    pop af                                        ; $0a5b: $f1
    ld hl, $c360                                  ; $0a5c: $21 $60 $c3
    and [hl]                                      ; $0a5f: $a6
    ld [$c362], a                                 ; $0a60: $ea $62 $c3
    inc de                                        ; $0a63: $13
    pop hl                                        ; $0a64: $e1
    pop bc                                        ; $0a65: $c1
    inc bc                                        ; $0a66: $03
    inc bc                                        ; $0a67: $03
    ld a, c                                       ; $0a68: $79
    and $0f                                       ; $0a69: $e6 $0f
    jr nz, jr_000_0a75                            ; $0a6b: $20 $08

    ld a, c                                       ; $0a6d: $79
    add $f0                                       ; $0a6e: $c6 $f0
    ld c, a                                       ; $0a70: $4f
    ld a, b                                       ; $0a71: $78
    adc $00                                       ; $0a72: $ce $00
    ld b, a                                       ; $0a74: $47

jr_000_0a75:
    inc l                                         ; $0a75: $2c
    ld a, [$c354]                                 ; $0a76: $fa $54 $c3
    cp l                                          ; $0a79: $bd
    jp nc, Jump_000_0939                          ; $0a7a: $d2 $39 $09

    xor a                                         ; $0a7d: $af
    ld [de], a                                    ; $0a7e: $12
    inc de                                        ; $0a7f: $13
    ld [de], a                                    ; $0a80: $12
    ldh a, [rIE]                                  ; $0a81: $f0 $ff
    push af                                       ; $0a83: $f5

jr_000_0a84:
    ldh a, [rLY]                                  ; $0a84: $f0 $44
    cp $80                                        ; $0a86: $fe $80
    jr nc, jr_000_0a84                            ; $0a88: $30 $fa

    ldh a, [rIE]                                  ; $0a8a: $f0 $ff
    res 0, a                                      ; $0a8c: $cb $87
    ldh [rIE], a                                  ; $0a8e: $e0 $ff
    ld bc, $c363                                  ; $0a90: $01 $63 $c3
    ld a, [$c32e]                                 ; $0a93: $fa $2e $c3
    bit 7, a                                      ; $0a96: $cb $7f
    jr z, jr_000_0af3                             ; $0a98: $28 $59

jr_000_0a9a:
    ldh a, [rLY]                                  ; $0a9a: $f0 $44
    cp $90                                        ; $0a9c: $fe $90
    jr c, jr_000_0a9a                             ; $0a9e: $38 $fa

    ld a, [$c32e]                                 ; $0aa0: $fa $2e $c3
    set 4, a                                      ; $0aa3: $cb $e7
    ldh [rLCDC], a                                ; $0aa5: $e0 $40
    ld a, $14                                     ; $0aa7: $3e $14

jr_000_0aa9:
    push af                                       ; $0aa9: $f5
    ld a, [bc]                                    ; $0aaa: $0a
    ld l, a                                       ; $0aab: $6f
    inc bc                                        ; $0aac: $03
    ld a, [bc]                                    ; $0aad: $0a
    ld h, a                                       ; $0aae: $67
    or l                                          ; $0aaf: $b5
    jr z, jr_000_0ace                             ; $0ab0: $28 $1c

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

Call_000_0ac3:
    dec a                                         ; $0ac3: $3d
    jr nz, jr_000_0aa9                            ; $0ac4: $20 $e3

jr_000_0ac6:
    ldh a, [rLY]                                  ; $0ac6: $f0 $44
    cp $90                                        ; $0ac8: $fe $90
    jr c, jr_000_0a9a                             ; $0aca: $38 $ce

    jr jr_000_0ac6                                ; $0acc: $18 $f8

jr_000_0ace:
    pop af                                        ; $0ace: $f1

Call_000_0acf:
jr_000_0acf:
    ldh a, [rLY]                                  ; $0acf: $f0 $44
    cp $80                                        ; $0ad1: $fe $80
    jr c, jr_000_0ae8                             ; $0ad3: $38 $13

jr_000_0ad5:
    ldh a, [rLY]                                  ; $0ad5: $f0 $44
    cp $90                                        ; $0ad7: $fe $90
    jr c, jr_000_0ad5                             ; $0ad9: $38 $fa

    ld a, [$c32e]                                 ; $0adb: $fa $2e $c3
    set 4, a                                      ; $0ade: $cb $e7
    ldh [rLCDC], a                                ; $0ae0: $e0 $40

jr_000_0ae2:
    ldh a, [rLY]                                  ; $0ae2: $f0 $44
    cp $80                                        ; $0ae4: $fe $80
    jr nc, jr_000_0ae2                            ; $0ae6: $30 $fa

jr_000_0ae8:
    pop af                                        ; $0ae8: $f1

Call_000_0ae9:
Jump_000_0ae9:
    ldh [rIE], a                                  ; $0ae9: $e0 $ff
    pop af                                        ; $0aeb: $f1
    ld [ActiveROMBank], a                         ; $0aec: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $0aef: $ea $00 $20
    ret                                           ; $0af2: $c9


jr_000_0af3:
    ld a, [bc]                                    ; $0af3: $0a
    ld l, a                                       ; $0af4: $6f
    inc bc                                        ; $0af5: $03
    ld a, [bc]                                    ; $0af6: $0a
    ld h, a                                       ; $0af7: $67
    or l                                          ; $0af8: $b5
    jr z, jr_000_0acf                             ; $0af9: $28 $d4

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
    jr jr_000_0af3                                ; $0b0b: $18 $e6

Call_000_0b0d:
Jump_000_0b0d:
    ld a, [$c351]                                 ; $0b0d: $fa $51 $c3
    and $07                                       ; $0b10: $e6 $07
    ld c, a                                       ; $0b12: $4f
    ld b, $00                                     ; $0b13: $06 $00
    ld hl, $0d59                                  ; $0b15: $21 $59 $0d
    add hl, bc                                    ; $0b18: $09
    ld a, [hl]                                    ; $0b19: $7e
    ld [$c359], a                                 ; $0b1a: $ea $59 $c3
    ld a, [$c353]                                 ; $0b1d: $fa $53 $c3
    and $07                                       ; $0b20: $e6 $07
    ld c, a                                       ; $0b22: $4f
    ld b, $00                                     ; $0b23: $06 $00
    ld hl, $0d62                                  ; $0b25: $21 $62 $0d
    add hl, bc                                    ; $0b28: $09
    ld a, [hl]                                    ; $0b29: $7e
    ld [$c35a], a                                 ; $0b2a: $ea $5a $c3
    ld a, [$c351]                                 ; $0b2d: $fa $51 $c3
    and $f8                                       ; $0b30: $e6 $f8
    ld c, a                                       ; $0b32: $4f
    ld a, [$c353]                                 ; $0b33: $fa $53 $c3
    and $f8                                       ; $0b36: $e6 $f8
    sub c                                         ; $0b38: $91
    srl a                                         ; $0b39: $cb $3f
    srl a                                         ; $0b3b: $cb $3f
    srl a                                         ; $0b3d: $cb $3f
    ld [$c35b], a                                 ; $0b3f: $ea $5b $c3
    ld a, [$c351]                                 ; $0b42: $fa $51 $c3
    ld c, a                                       ; $0b45: $4f
    ld a, [$c353]                                 ; $0b46: $fa $53 $c3
    sub c                                         ; $0b49: $91
    srl a                                         ; $0b4a: $cb $3f
    srl a                                         ; $0b4c: $cb $3f
    srl a                                         ; $0b4e: $cb $3f
    inc a                                         ; $0b50: $3c
    ld [$c35c], a                                 ; $0b51: $ea $5c $c3
    ld a, [$c351]                                 ; $0b54: $fa $51 $c3
    and $07                                       ; $0b57: $e6 $07
    ld c, a                                       ; $0b59: $4f
    add $38                                       ; $0b5a: $c6 $38
    ld [$c35e], a                                 ; $0b5c: $ea $5e $c3
    ld b, $00                                     ; $0b5f: $06 $00
    ld hl, $0d59                                  ; $0b61: $21 $59 $0d
    add hl, bc                                    ; $0b64: $09
    ld a, [hl]                                    ; $0b65: $7e
    ld [$c35f], a                                 ; $0b66: $ea $5f $c3
    ld hl, $0d61                                  ; $0b69: $21 $61 $0d
    add hl, bc                                    ; $0b6c: $09
    ld a, [hl]                                    ; $0b6d: $7e
    ld [$c360], a                                 ; $0b6e: $ea $60 $c3
    ld a, [$c355]                                 ; $0b71: $fa $55 $c3
    ld c, a                                       ; $0b74: $4f
    ld a, [$c356]                                 ; $0b75: $fa $56 $c3
    ld b, a                                       ; $0b78: $47
    ld a, [ActiveROMBank]                         ; $0b79: $fa $12 $c3
    push af                                       ; $0b7c: $f5
    ld a, [$c357]                                 ; $0b7d: $fa $57 $c3
    ld [ActiveROMBank], a                         ; $0b80: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $0b83: $ea $00 $20
    ld de, $c363                                  ; $0b86: $11 $63 $c3
    ld a, [$c352]                                 ; $0b89: $fa $52 $c3
    ld l, a                                       ; $0b8c: $6f
    ld a, [$c351]                                 ; $0b8d: $fa $51 $c3
    and $f8                                       ; $0b90: $e6 $f8
    ld h, a                                       ; $0b92: $67

Jump_000_0b93:
    xor a                                         ; $0b93: $af
    ld [$c361], a                                 ; $0b94: $ea $61 $c3
    ld [$c362], a                                 ; $0b97: $ea $62 $c3
    ld a, [$c35c]                                 ; $0b9a: $fa $5c $c3
    ld [$c35d], a                                 ; $0b9d: $ea $5d $c3
    ld a, [$c359]                                 ; $0ba0: $fa $59 $c3
    ld [$c358], a                                 ; $0ba3: $ea $58 $c3
    push bc                                       ; $0ba6: $c5
    push hl                                       ; $0ba7: $e5
    ld a, [$c35b]                                 ; $0ba8: $fa $5b $c3
    and a                                         ; $0bab: $a7
    jr nz, jr_000_0bbd                            ; $0bac: $20 $0f

    push hl                                       ; $0bae: $e5
    ld a, [$c35a]                                 ; $0baf: $fa $5a $c3
    ld hl, $c359                                  ; $0bb2: $21 $59 $c3
    and [hl]                                      ; $0bb5: $a6
    ld [$c358], a                                 ; $0bb6: $ea $58 $c3
    pop hl                                        ; $0bb9: $e1
    jp Jump_000_0c6b                              ; $0bba: $c3 $6b $0c


jr_000_0bbd:
    push hl                                       ; $0bbd: $e5
    call Call_000_0d6a                            ; $0bbe: $cd $6a $0d
    ld a, [$c358]                                 ; $0bc1: $fa $58 $c3
    ld [de], a                                    ; $0bc4: $12
    inc de                                        ; $0bc5: $13
    ld a, [bc]                                    ; $0bc6: $0a
    ld l, a                                       ; $0bc7: $6f
    ld a, [$c35e]                                 ; $0bc8: $fa $5e $c3
    ld h, a                                       ; $0bcb: $67
    ld a, [hl]                                    ; $0bcc: $7e
    ld [de], a                                    ; $0bcd: $12
    ld hl, $c360                                  ; $0bce: $21 $60 $c3
    and [hl]                                      ; $0bd1: $a6
    ld [$c361], a                                 ; $0bd2: $ea $61 $c3
    inc bc                                        ; $0bd5: $03
    inc de                                        ; $0bd6: $13
    ld a, [bc]                                    ; $0bd7: $0a
    ld l, a                                       ; $0bd8: $6f
    ld a, [$c35e]                                 ; $0bd9: $fa $5e $c3
    ld h, a                                       ; $0bdc: $67
    ld a, [hl]                                    ; $0bdd: $7e
    ld [de], a                                    ; $0bde: $12
    ld hl, $c360                                  ; $0bdf: $21 $60 $c3
    and [hl]                                      ; $0be2: $a6
    ld [$c362], a                                 ; $0be3: $ea $62 $c3
    ld a, c                                       ; $0be6: $79
    add $0f                                       ; $0be7: $c6 $0f
    ld c, a                                       ; $0be9: $4f

Jump_000_0bea:
    ld a, b                                       ; $0bea: $78
    adc $00                                       ; $0beb: $ce $00
    ld b, a                                       ; $0bed: $47

Call_000_0bee:
    inc de                                        ; $0bee: $13
    pop hl                                        ; $0bef: $e1
    ld a, h                                       ; $0bf0: $7c
    add $08                                       ; $0bf1: $c6 $08
    ld h, a                                       ; $0bf3: $67
    ld a, [$c35d]                                 ; $0bf4: $fa $5d $c3
    dec a                                         ; $0bf7: $3d
    ld [$c35d], a                                 ; $0bf8: $ea $5d $c3
    ld a, [$c35b]                                 ; $0bfb: $fa $5b $c3
    dec a                                         ; $0bfe: $3d
    jr z, jr_000_0c65                             ; $0bff: $28 $64

jr_000_0c01:
    push af                                       ; $0c01: $f5
    push hl                                       ; $0c02: $e5
    call Call_000_0d6a                            ; $0c03: $cd $6a $0d
    ld a, $ff                                     ; $0c06: $3e $ff
    ld [de], a                                    ; $0c08: $12
    inc de                                        ; $0c09: $13
    ld a, [$c35d]                                 ; $0c0a: $fa $5d $c3
    and a                                         ; $0c0d: $a7
    jr z, jr_000_0c12                             ; $0c0e: $28 $02

    ld a, [bc]                                    ; $0c10: $0a
    inc bc                                        ; $0c11: $03

jr_000_0c12:
    ld l, a                                       ; $0c12: $6f
    ld a, [$c35e]                                 ; $0c13: $fa $5e $c3
    ld h, a                                       ; $0c16: $67
    ld a, [hl]                                    ; $0c17: $7e
    push af                                       ; $0c18: $f5
    ld hl, $c35f                                  ; $0c19: $21 $5f $c3
    and [hl]                                      ; $0c1c: $a6
    ld hl, $c361                                  ; $0c1d: $21 $61 $c3
    or [hl]                                       ; $0c20: $b6
    ld [de], a                                    ; $0c21: $12
    pop af                                        ; $0c22: $f1
    ld hl, $c360                                  ; $0c23: $21 $60 $c3
    and [hl]                                      ; $0c26: $a6
    ld [$c361], a                                 ; $0c27: $ea $61 $c3
    inc de                                        ; $0c2a: $13
    ld a, [$c35d]                                 ; $0c2b: $fa $5d $c3
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
    ld a, [$c35e]                                 ; $0c3d: $fa $5e $c3
    ld h, a                                       ; $0c40: $67
    ld a, [hl]                                    ; $0c41: $7e
    push af                                       ; $0c42: $f5
    ld hl, $c35f                                  ; $0c43: $21 $5f $c3
    and [hl]                                      ; $0c46: $a6
    ld hl, $c362                                  ; $0c47: $21 $62 $c3
    or [hl]                                       ; $0c4a: $b6
    ld [de], a                                    ; $0c4b: $12
    pop af                                        ; $0c4c: $f1
    ld hl, $c360                                  ; $0c4d: $21 $60 $c3
    and [hl]                                      ; $0c50: $a6
    ld [$c362], a                                 ; $0c51: $ea $62 $c3
    inc de                                        ; $0c54: $13
    pop hl                                        ; $0c55: $e1
    ld a, h                                       ; $0c56: $7c
    add $08                                       ; $0c57: $c6 $08
    ld h, a                                       ; $0c59: $67
    ld a, [$c35d]                                 ; $0c5a: $fa $5d $c3
    dec a                                         ; $0c5d: $3d
    ld [$c35d], a                                 ; $0c5e: $ea $5d $c3
    pop af                                        ; $0c61: $f1
    dec a                                         ; $0c62: $3d

Call_000_0c63:
    jr nz, jr_000_0c01                            ; $0c63: $20 $9c

jr_000_0c65:
    ld a, [$c35a]                                 ; $0c65: $fa $5a $c3
    ld [$c358], a                                 ; $0c68: $ea $58 $c3

Jump_000_0c6b:
    call Call_000_0d6a                            ; $0c6b: $cd $6a $0d
    ld a, [$c358]                                 ; $0c6e: $fa $58 $c3
    ld [de], a                                    ; $0c71: $12
    inc de                                        ; $0c72: $13
    ld a, [$c35d]                                 ; $0c73: $fa $5d $c3
    and a                                         ; $0c76: $a7
    jr z, jr_000_0c7b                             ; $0c77: $28 $02

    ld a, [bc]                                    ; $0c79: $0a
    inc bc                                        ; $0c7a: $03

jr_000_0c7b:
    ld l, a                                       ; $0c7b: $6f
    ld a, [$c35e]                                 ; $0c7c: $fa $5e $c3
    ld h, a                                       ; $0c7f: $67
    ld a, [hl]                                    ; $0c80: $7e
    push af                                       ; $0c81: $f5
    ld hl, $c35f                                  ; $0c82: $21 $5f $c3
    and [hl]                                      ; $0c85: $a6
    ld hl, $c361                                  ; $0c86: $21 $61 $c3
    or [hl]                                       ; $0c89: $b6
    ld [de], a                                    ; $0c8a: $12
    pop af                                        ; $0c8b: $f1
    ld hl, $c360                                  ; $0c8c: $21 $60 $c3
    and [hl]                                      ; $0c8f: $a6
    ld [$c361], a                                 ; $0c90: $ea $61 $c3
    inc de                                        ; $0c93: $13
    ld a, [$c35d]                                 ; $0c94: $fa $5d $c3
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
    ld a, [$c35e]                                 ; $0ca6: $fa $5e $c3
    ld h, a                                       ; $0ca9: $67
    ld a, [hl]                                    ; $0caa: $7e
    push af                                       ; $0cab: $f5
    ld hl, $c35f                                  ; $0cac: $21 $5f $c3
    and [hl]                                      ; $0caf: $a6
    ld hl, $c362                                  ; $0cb0: $21 $62 $c3
    or [hl]                                       ; $0cb3: $b6
    ld [de], a                                    ; $0cb4: $12
    pop af                                        ; $0cb5: $f1
    ld hl, $c360                                  ; $0cb6: $21 $60 $c3
    and [hl]                                      ; $0cb9: $a6
    ld [$c362], a                                 ; $0cba: $ea $62 $c3
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
    ld a, [$c354]                                 ; $0cd0: $fa $54 $c3
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
    ld a, [$c32e]                                 ; $0ced: $fa $2e $c3
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

Call_000_0cff:
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
    ld [ActiveROMBank], a                         ; $0d38: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $0d3b: $ea $00 $20
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

Call_000_0d6a:
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
    ld a, [$cd63]                                 ; $0d78: $fa $63 $cd
    ld l, a                                       ; $0d7b: $6f
    ld a, [$cd64]                                 ; $0d7c: $fa $64 $cd
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

Call_000_0dec:
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

Jump_000_0e12:
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

Call_000_0eed:
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

Call_000_0f0f:
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

jr_000_1076:
    db $10                                        ; $1076: $10
    sub a                                         ; $1077: $97

jr_000_1078:
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
    cp d                                          ; $1096: $ba
    db $10                                        ; $1097: $10
    ldh [c], a                                    ; $1098: $e2
    db $10                                        ; $1099: $10
    ld a, [bc]                                    ; $109a: $0a
    ld de, $1132                                  ; $109b: $11 $32 $11
    ld e, d                                       ; $109e: $5a

jr_000_109f:
    ld de, $1182                                  ; $109f: $11 $82 $11
    xor d                                         ; $10a2: $aa
    ld de, $11d2                                  ; $10a3: $11 $d2 $11
    ld a, [$2211]                                 ; $10a6: $fa $11 $22
    ld [de], a                                    ; $10a9: $12
    ld c, d                                       ; $10aa: $4a
    ld [de], a                                    ; $10ab: $12
    ld [hl], d                                    ; $10ac: $72
    ld [de], a                                    ; $10ad: $12
    sbc d                                         ; $10ae: $9a
    ld [de], a                                    ; $10af: $12
    jp nz, $ea12                                  ; $10b0: $c2 $12 $ea

    ld [de], a                                    ; $10b3: $12
    ld [de], a                                    ; $10b4: $12
    inc de                                        ; $10b5: $13
    ld a, [hl-]                                   ; $10b6: $3a
    inc de                                        ; $10b7: $13
    ld h, d                                       ; $10b8: $62
    inc de                                        ; $10b9: $13
    ld [hl], b                                    ; $10ba: $70
    adc d                                         ; $10bb: $8a
    ld d, b                                       ; $10bc: $50
    adc b                                         ; $10bd: $88
    ld h, b                                       ; $10be: $60
    adc b                                         ; $10bf: $88
    ld [hl], b                                    ; $10c0: $70
    adc b                                         ; $10c1: $88
    add b                                         ; $10c2: $80
    adc b                                         ; $10c3: $88
    ld h, b                                       ; $10c4: $60
    adc d                                         ; $10c5: $8a
    ld h, b                                       ; $10c6: $60
    adc d                                         ; $10c7: $8a

jr_000_10c8:
    ld h, b                                       ; $10c8: $60
    adc d                                         ; $10c9: $8a

jr_000_10ca:
    ld h, b                                       ; $10ca: $60
    adc d                                         ; $10cb: $8a
    ld h, b                                       ; $10cc: $60
    adc d                                         ; $10cd: $8a
    ld h, b                                       ; $10ce: $60
    adc d                                         ; $10cf: $8a
    ld h, b                                       ; $10d0: $60
    adc d                                         ; $10d1: $8a
    ld h, b                                       ; $10d2: $60
    adc d                                         ; $10d3: $8a
    ld h, b                                       ; $10d4: $60
    adc d                                         ; $10d5: $8a
    ld h, b                                       ; $10d6: $60
    adc d                                         ; $10d7: $8a
    ld h, b                                       ; $10d8: $60
    adc d                                         ; $10d9: $8a
    ld h, b                                       ; $10da: $60
    adc d                                         ; $10db: $8a
    ld h, b                                       ; $10dc: $60
    adc d                                         ; $10dd: $8a
    ld h, b                                       ; $10de: $60
    adc d                                         ; $10df: $8a
    ld [hl], b                                    ; $10e0: $70
    adc d                                         ; $10e1: $8a
    ld [hl], b                                    ; $10e2: $70

Jump_000_10e3:
    adc d                                         ; $10e3: $8a
    sub b                                         ; $10e4: $90
    adc b                                         ; $10e5: $88
    and b                                         ; $10e6: $a0
    adc b                                         ; $10e7: $88
    or b                                          ; $10e8: $b0
    adc b                                         ; $10e9: $88
    ret nz                                        ; $10ea: $c0

    adc b                                         ; $10eb: $88
    ret nc                                        ; $10ec: $d0

    adc b                                         ; $10ed: $88
    ldh [$ff87], a                                ; $10ee: $e0 $87
    nop                                           ; $10f0: $00

jr_000_10f1:
    add b                                         ; $10f1: $80
    db $10                                        ; $10f2: $10

jr_000_10f3:
    add b                                         ; $10f3: $80
    jr nz, jr_000_1076                            ; $10f4: $20 $80

    jr nc, jr_000_1078                            ; $10f6: $30 $80

    ldh [$ff87], a                                ; $10f8: $e0 $87
    sub b                                         ; $10fa: $90
    add h                                         ; $10fb: $84

Call_000_10fc:
    and b                                         ; $10fc: $a0
    add h                                         ; $10fd: $84
    or b                                          ; $10fe: $b0
    add h                                         ; $10ff: $84
    or b                                          ; $1100: $b0
    adc [hl]                                      ; $1101: $8e
    ret nz                                        ; $1102: $c0

    adc [hl]                                      ; $1103: $8e
    ret nc                                        ; $1104: $d0

    adc a                                         ; $1105: $8f
    ldh [$ff87], a                                ; $1106: $e0 $87
    ld [hl], b                                    ; $1108: $70
    adc d                                         ; $1109: $8a
    ld [hl], b                                    ; $110a: $70
    adc d                                         ; $110b: $8a
    ldh [$ff88], a                                ; $110c: $e0 $88
    ldh a, [$ff88]                                ; $110e: $f0 $88
    nop                                           ; $1110: $00
    adc c                                         ; $1111: $89
    db $10                                        ; $1112: $10
    adc c                                         ; $1113: $89

jr_000_1114:
    jr nz, jr_000_109f                            ; $1114: $20 $89

jr_000_1116:
    jr nc, @-$75                                  ; $1116: $30 $89

    nop                                           ; $1118: $00
    add c                                         ; $1119: $81

jr_000_111a:
    db $10                                        ; $111a: $10
    add c                                         ; $111b: $81

jr_000_111c:
    jr nz, jr_000_109f                            ; $111c: $20 $81

    jr nc, @-$7d                                  ; $111e: $30 $81

    ret nc                                        ; $1120: $d0

    adc l                                         ; $1121: $8d
    add b                                         ; $1122: $80
    adc a                                         ; $1123: $8f
    sub b                                         ; $1124: $90
    adc a                                         ; $1125: $8f
    and b                                         ; $1126: $a0
    adc a                                         ; $1127: $8f
    or b                                          ; $1128: $b0
    adc a                                         ; $1129: $8f
    ret nz                                        ; $112a: $c0

    adc a                                         ; $112b: $8f
    ldh [$ff8f], a                                ; $112c: $e0 $8f
    ldh a, [$ff8d]                                ; $112e: $f0 $8d
    ld [hl], b                                    ; $1130: $70
    adc d                                         ; $1131: $8a
    ld [hl], b                                    ; $1132: $70
    adc d                                         ; $1133: $8a
    ld b, b                                       ; $1134: $40
    adc c                                         ; $1135: $89
    ld d, b                                       ; $1136: $50
    adc c                                         ; $1137: $89
    ld h, b                                       ; $1138: $60
    adc c                                         ; $1139: $89
    ld [hl], b                                    ; $113a: $70
    adc c                                         ; $113b: $89
    add b                                         ; $113c: $80
    adc c                                         ; $113d: $89
    sub b                                         ; $113e: $90
    adc c                                         ; $113f: $89
    nop                                           ; $1140: $00
    add d                                         ; $1141: $82

jr_000_1142:
    db $10                                        ; $1142: $10
    add d                                         ; $1143: $82

jr_000_1144:
    jr nz, jr_000_10c8                            ; $1144: $20 $82

    jr nc, jr_000_10ca                            ; $1146: $30 $82

    ret nc                                        ; $1148: $d0

    adc [hl]                                      ; $1149: $8e
    ldh [$ff8e], a                                ; $114a: $e0 $8e
    ldh [$ff8e], a                                ; $114c: $e0 $8e
    ldh [$ff8e], a                                ; $114e: $e0 $8e
    ldh [$ff8e], a                                ; $1150: $e0 $8e
    ldh [$ff8e], a                                ; $1152: $e0 $8e
    ldh [$ff8e], a                                ; $1154: $e0 $8e
    ldh a, [$ff8e]                                ; $1156: $f0 $8e
    ld [hl], b                                    ; $1158: $70
    adc d                                         ; $1159: $8a
    ld [hl], b                                    ; $115a: $70
    adc d                                         ; $115b: $8a
    and b                                         ; $115c: $a0
    adc c                                         ; $115d: $89
    or b                                          ; $115e: $b0
    adc c                                         ; $115f: $89
    ret nz                                        ; $1160: $c0

    adc c                                         ; $1161: $89
    ret nc                                        ; $1162: $d0

    adc c                                         ; $1163: $89
    ldh [$ff89], a                                ; $1164: $e0 $89
    ldh a, [$ff89]                                ; $1166: $f0 $89
    nop                                           ; $1168: $00
    add e                                         ; $1169: $83
    db $10                                        ; $116a: $10

jr_000_116b:
    add e                                         ; $116b: $83
    jr nz, jr_000_10f1                            ; $116c: $20 $83

    jr nc, jr_000_10f3                            ; $116e: $30 $83

    ret nc                                        ; $1170: $d0

    adc [hl]                                      ; $1171: $8e
    ret nz                                        ; $1172: $c0

    adc h                                         ; $1173: $8c
    ret nc                                        ; $1174: $d0

    adc h                                         ; $1175: $8c
    sub b                                         ; $1176: $90
    adc l                                         ; $1177: $8d
    sub b                                         ; $1178: $90
    adc h                                         ; $1179: $8c
    or b                                          ; $117a: $b0
    adc l                                         ; $117b: $8d
    add b                                         ; $117c: $80
    adc l                                         ; $117d: $8d
    ldh a, [$ff8e]                                ; $117e: $f0 $8e
    ld [hl], b                                    ; $1180: $70
    adc d                                         ; $1181: $8a
    ld [hl], b                                    ; $1182: $70
    adc d                                         ; $1183: $8a
    nop                                           ; $1184: $00
    adc d                                         ; $1185: $8a
    db $10                                        ; $1186: $10
    adc d                                         ; $1187: $8a
    jr nz, jr_000_1114                            ; $1188: $20 $8a

    jr nc, jr_000_1116                            ; $118a: $30 $8a

    ld b, b                                       ; $118c: $40
    adc d                                         ; $118d: $8a
    ld d, b                                       ; $118e: $50
    adc d                                         ; $118f: $8a
    nop                                           ; $1190: $00
    add h                                         ; $1191: $84
    db $10                                        ; $1192: $10
    add h                                         ; $1193: $84

jr_000_1194:
    jr nz, jr_000_111a                            ; $1194: $20 $84

jr_000_1196:
    jr nc, jr_000_111c                            ; $1196: $30 $84

    ret nc                                        ; $1198: $d0

    adc [hl]                                      ; $1199: $8e
    ldh [$ff8e], a                                ; $119a: $e0 $8e
    ldh [$ff8e], a                                ; $119c: $e0 $8e
    ldh [$ff8e], a                                ; $119e: $e0 $8e
    ldh [$ff8e], a                                ; $11a0: $e0 $8e
    ldh [$ff8e], a                                ; $11a2: $e0 $8e
    ldh [$ff8e], a                                ; $11a4: $e0 $8e
    ldh a, [$ff8e]                                ; $11a6: $f0 $8e
    ld [hl], b                                    ; $11a8: $70
    adc d                                         ; $11a9: $8a
    ld [hl], b                                    ; $11aa: $70
    adc d                                         ; $11ab: $8a
    add b                                         ; $11ac: $80
    adc d                                         ; $11ad: $8a
    sub b                                         ; $11ae: $90
    adc d                                         ; $11af: $8a
    nop                                           ; $11b0: $00
    adc h                                         ; $11b1: $8c
    db $10                                        ; $11b2: $10
    adc h                                         ; $11b3: $8c
    jr nz, jr_000_1142                            ; $11b4: $20 $8c

    jr nc, jr_000_1144                            ; $11b6: $30 $8c

    ld b, b                                       ; $11b8: $40
    adc h                                         ; $11b9: $8c
    ld d, b                                       ; $11ba: $50
    adc h                                         ; $11bb: $8c
    ld h, b                                       ; $11bc: $60

jr_000_11bd:
    adc h                                         ; $11bd: $8c
    ld [hl], b                                    ; $11be: $70

jr_000_11bf:
    adc h                                         ; $11bf: $8c
    ldh [$ff8b], a                                ; $11c0: $e0 $8b
    and b                                         ; $11c2: $a0
    adc h                                         ; $11c3: $8c
    or b                                          ; $11c4: $b0
    adc h                                         ; $11c5: $8c
    sub b                                         ; $11c6: $90
    adc l                                         ; $11c7: $8d
    sub b                                         ; $11c8: $90
    adc h                                         ; $11c9: $8c
    or b                                          ; $11ca: $b0
    adc l                                         ; $11cb: $8d
    and b                                         ; $11cc: $a0
    adc l                                         ; $11cd: $8d
    ldh a, [$ff8e]                                ; $11ce: $f0 $8e
    ld [hl], b                                    ; $11d0: $70
    adc d                                         ; $11d1: $8a
    ld [hl], b                                    ; $11d2: $70
    adc d                                         ; $11d3: $8a
    and b                                         ; $11d4: $a0
    adc d                                         ; $11d5: $8a
    or b                                          ; $11d6: $b0
    adc d                                         ; $11d7: $8a
    nop                                           ; $11d8: $00
    adc l                                         ; $11d9: $8d
    db $10                                        ; $11da: $10
    adc l                                         ; $11db: $8d
    jr nz, jr_000_116b                            ; $11dc: $20 $8d

    jr nc, @-$71                                  ; $11de: $30 $8d

    ld b, b                                       ; $11e0: $40
    adc l                                         ; $11e1: $8d
    ld d, b                                       ; $11e2: $50
    adc l                                         ; $11e3: $8d
    ld h, b                                       ; $11e4: $60
    adc l                                         ; $11e5: $8d

jr_000_11e6:
    ld [hl], b                                    ; $11e6: $70
    adc l                                         ; $11e7: $8d

jr_000_11e8:
    ldh a, [$ff8b]                                ; $11e8: $f0 $8b
    ldh [$ff8e], a                                ; $11ea: $e0 $8e
    ldh [$ff8e], a                                ; $11ec: $e0 $8e
    ldh [$ff8e], a                                ; $11ee: $e0 $8e
    ldh [$ff8e], a                                ; $11f0: $e0 $8e
    ldh [$ff8e], a                                ; $11f2: $e0 $8e
    ldh [$ff8e], a                                ; $11f4: $e0 $8e
    ldh a, [$ff8e]                                ; $11f6: $f0 $8e
    ld [hl], b                                    ; $11f8: $70
    adc d                                         ; $11f9: $8a
    ld [hl], b                                    ; $11fa: $70
    adc d                                         ; $11fb: $8a
    ret nz                                        ; $11fc: $c0

    adc d                                         ; $11fd: $8a
    ret nc                                        ; $11fe: $d0

    adc d                                         ; $11ff: $8a
    nop                                           ; $1200: $00

jr_000_1201:
    adc [hl]                                      ; $1201: $8e
    db $10                                        ; $1202: $10

jr_000_1203:
    adc [hl]                                      ; $1203: $8e
    jr nz, jr_000_1194                            ; $1204: $20 $8e

    jr nc, jr_000_1196                            ; $1206: $30 $8e

    ld b, b                                       ; $1208: $40
    adc [hl]                                      ; $1209: $8e
    ld d, b                                       ; $120a: $50
    adc [hl]                                      ; $120b: $8e
    ld h, b                                       ; $120c: $60
    adc [hl]                                      ; $120d: $8e
    ld [hl], b                                    ; $120e: $70

jr_000_120f:
    adc [hl]                                      ; $120f: $8e
    ldh a, [$ff8b]                                ; $1210: $f0 $8b
    ret nz                                        ; $1212: $c0

    adc l                                         ; $1213: $8d
    ldh a, [$ff8f]                                ; $1214: $f0 $8f
    add b                                         ; $1216: $80
    adc h                                         ; $1217: $8c
    add b                                         ; $1218: $80
    adc [hl]                                      ; $1219: $8e
    sub b                                         ; $121a: $90
    adc [hl]                                      ; $121b: $8e
    and b                                         ; $121c: $a0
    adc [hl]                                      ; $121d: $8e
    ldh a, [$ff8e]                                ; $121e: $f0 $8e
    ld [hl], b                                    ; $1220: $70
    adc d                                         ; $1221: $8a
    ld [hl], b                                    ; $1222: $70
    adc d                                         ; $1223: $8a
    ldh [$ff8a], a                                ; $1224: $e0 $8a
    ldh a, [$ff8a]                                ; $1226: $f0 $8a
    nop                                           ; $1228: $00
    adc a                                         ; $1229: $8f
    db $10                                        ; $122a: $10
    adc a                                         ; $122b: $8f
    jr nz, jr_000_11bd                            ; $122c: $20 $8f

    jr nc, jr_000_11bf                            ; $122e: $30 $8f

    ld b, b                                       ; $1230: $40
    adc a                                         ; $1231: $8f
    ld d, b                                       ; $1232: $50
    adc a                                         ; $1233: $8f
    ld h, b                                       ; $1234: $60
    adc a                                         ; $1235: $8f
    ld [hl], b                                    ; $1236: $70
    adc a                                         ; $1237: $8f

jr_000_1238:
    ldh a, [$ff8b]                                ; $1238: $f0 $8b

jr_000_123a:
    ldh [$ff8e], a                                ; $123a: $e0 $8e
    ldh [$ff8e], a                                ; $123c: $e0 $8e
    ldh [$ff8e], a                                ; $123e: $e0 $8e
    ldh [$ff8e], a                                ; $1240: $e0 $8e
    ldh [$ff8e], a                                ; $1242: $e0 $8e
    ldh [$ff8e], a                                ; $1244: $e0 $8e
    ldh a, [$ff8e]                                ; $1246: $f0 $8e
    ld [hl], b                                    ; $1248: $70
    adc d                                         ; $1249: $8a
    ld [hl], b                                    ; $124a: $70
    adc d                                         ; $124b: $8a
    nop                                           ; $124c: $00
    adc e                                         ; $124d: $8b
    db $10                                        ; $124e: $10
    adc e                                         ; $124f: $8b
    nop                                           ; $1250: $00
    sub b                                         ; $1251: $90
    db $10                                        ; $1252: $10
    sub b                                         ; $1253: $90
    jr nz, jr_000_11e6                            ; $1254: $20 $90

    jr nc, jr_000_11e8                            ; $1256: $30 $90

    ld b, b                                       ; $1258: $40
    sub b                                         ; $1259: $90
    ld d, b                                       ; $125a: $50
    sub b                                         ; $125b: $90
    ld h, b                                       ; $125c: $60
    sub b                                         ; $125d: $90
    ld [hl], b                                    ; $125e: $70
    sub b                                         ; $125f: $90
    add b                                         ; $1260: $80

jr_000_1261:
    sub b                                         ; $1261: $90
    sub b                                         ; $1262: $90

jr_000_1263:
    sub b                                         ; $1263: $90
    and b                                         ; $1264: $a0
    sub b                                         ; $1265: $90
    or b                                          ; $1266: $b0
    sub b                                         ; $1267: $90
    ret nz                                        ; $1268: $c0

    sub b                                         ; $1269: $90
    ret nc                                        ; $126a: $d0

    sub b                                         ; $126b: $90
    ldh [$ff90], a                                ; $126c: $e0 $90
    ldh a, [$ff90]                                ; $126e: $f0 $90
    ld [hl], b                                    ; $1270: $70
    adc d                                         ; $1271: $8a
    ld [hl], b                                    ; $1272: $70
    adc d                                         ; $1273: $8a
    jr nz, jr_000_1201                            ; $1274: $20 $8b

    jr nc, jr_000_1203                            ; $1276: $30 $8b

    nop                                           ; $1278: $00
    sub c                                         ; $1279: $91
    db $10                                        ; $127a: $10
    sub c                                         ; $127b: $91
    jr nz, jr_000_120f                            ; $127c: $20 $91

    jr nc, @-$6d                                  ; $127e: $30 $91

    ld b, b                                       ; $1280: $40
    sub c                                         ; $1281: $91
    ld d, b                                       ; $1282: $50
    sub c                                         ; $1283: $91
    ld h, b                                       ; $1284: $60
    sub c                                         ; $1285: $91
    ld [hl], b                                    ; $1286: $70
    sub c                                         ; $1287: $91
    add b                                         ; $1288: $80
    sub c                                         ; $1289: $91

jr_000_128a:
    sub b                                         ; $128a: $90
    sub c                                         ; $128b: $91

jr_000_128c:
    and b                                         ; $128c: $a0
    sub c                                         ; $128d: $91
    or b                                          ; $128e: $b0
    sub c                                         ; $128f: $91
    ret nz                                        ; $1290: $c0

    sub c                                         ; $1291: $91
    ret nc                                        ; $1292: $d0

    sub c                                         ; $1293: $91
    ldh [$ff91], a                                ; $1294: $e0 $91
    ldh a, [$ff91]                                ; $1296: $f0 $91
    ld [hl], b                                    ; $1298: $70
    adc d                                         ; $1299: $8a
    ld [hl], b                                    ; $129a: $70
    adc d                                         ; $129b: $8a
    ld b, b                                       ; $129c: $40
    adc e                                         ; $129d: $8b
    ld d, b                                       ; $129e: $50
    adc e                                         ; $129f: $8b
    nop                                           ; $12a0: $00
    sub d                                         ; $12a1: $92
    db $10                                        ; $12a2: $10
    sub d                                         ; $12a3: $92
    jr nz, jr_000_1238                            ; $12a4: $20 $92

    jr nc, jr_000_123a                            ; $12a6: $30 $92

    ld b, b                                       ; $12a8: $40
    sub d                                         ; $12a9: $92
    ld d, b                                       ; $12aa: $50
    sub d                                         ; $12ab: $92
    ld h, b                                       ; $12ac: $60
    sub d                                         ; $12ad: $92
    ld [hl], b                                    ; $12ae: $70
    sub d                                         ; $12af: $92
    add b                                         ; $12b0: $80
    sub d                                         ; $12b1: $92
    sub b                                         ; $12b2: $90

jr_000_12b3:
    sub d                                         ; $12b3: $92
    and b                                         ; $12b4: $a0

jr_000_12b5:
    sub d                                         ; $12b5: $92
    or b                                          ; $12b6: $b0
    sub d                                         ; $12b7: $92
    ret nz                                        ; $12b8: $c0

    sub d                                         ; $12b9: $92
    ret nc                                        ; $12ba: $d0

    sub d                                         ; $12bb: $92
    ldh [$ff92], a                                ; $12bc: $e0 $92
    ldh a, [$ff92]                                ; $12be: $f0 $92
    ld [hl], b                                    ; $12c0: $70
    adc d                                         ; $12c1: $8a
    ld [hl], b                                    ; $12c2: $70
    adc d                                         ; $12c3: $8a
    ld h, b                                       ; $12c4: $60
    adc e                                         ; $12c5: $8b
    ld [hl], b                                    ; $12c6: $70
    adc e                                         ; $12c7: $8b
    nop                                           ; $12c8: $00
    sub e                                         ; $12c9: $93
    db $10                                        ; $12ca: $10
    sub e                                         ; $12cb: $93
    jr nz, jr_000_1261                            ; $12cc: $20 $93

    jr nc, jr_000_1263                            ; $12ce: $30 $93

    ld b, b                                       ; $12d0: $40
    sub e                                         ; $12d1: $93
    ld d, b                                       ; $12d2: $50
    sub e                                         ; $12d3: $93
    ld h, b                                       ; $12d4: $60
    sub e                                         ; $12d5: $93
    ld [hl], b                                    ; $12d6: $70
    sub e                                         ; $12d7: $93
    add b                                         ; $12d8: $80
    sub e                                         ; $12d9: $93
    sub b                                         ; $12da: $90
    sub e                                         ; $12db: $93

jr_000_12dc:
    and b                                         ; $12dc: $a0
    sub e                                         ; $12dd: $93

Call_000_12de:
jr_000_12de:
    or b                                          ; $12de: $b0
    sub e                                         ; $12df: $93
    ret nz                                        ; $12e0: $c0

    sub e                                         ; $12e1: $93
    ret nc                                        ; $12e2: $d0

    sub e                                         ; $12e3: $93
    ldh [$ff93], a                                ; $12e4: $e0 $93
    ldh a, [$ff93]                                ; $12e6: $f0 $93
    ld [hl], b                                    ; $12e8: $70
    adc d                                         ; $12e9: $8a
    ld [hl], b                                    ; $12ea: $70
    adc d                                         ; $12eb: $8a
    add b                                         ; $12ec: $80
    adc e                                         ; $12ed: $8b
    sub b                                         ; $12ee: $90
    adc e                                         ; $12ef: $8b
    nop                                           ; $12f0: $00
    sub h                                         ; $12f1: $94
    db $10                                        ; $12f2: $10
    sub h                                         ; $12f3: $94
    jr nz, jr_000_128a                            ; $12f4: $20 $94

    jr nc, jr_000_128c                            ; $12f6: $30 $94

    ld b, b                                       ; $12f8: $40
    sub h                                         ; $12f9: $94
    ld d, b                                       ; $12fa: $50
    sub h                                         ; $12fb: $94
    ld h, b                                       ; $12fc: $60
    sub h                                         ; $12fd: $94
    ld [hl], b                                    ; $12fe: $70
    sub h                                         ; $12ff: $94
    add b                                         ; $1300: $80
    sub h                                         ; $1301: $94
    sub b                                         ; $1302: $90
    sub h                                         ; $1303: $94
    and b                                         ; $1304: $a0

jr_000_1305:
    sub h                                         ; $1305: $94
    or b                                          ; $1306: $b0

jr_000_1307:
    sub h                                         ; $1307: $94
    ret nz                                        ; $1308: $c0

    sub h                                         ; $1309: $94
    ret nc                                        ; $130a: $d0

    sub h                                         ; $130b: $94
    ldh [$ff94], a                                ; $130c: $e0 $94
    ldh a, [$ff94]                                ; $130e: $f0 $94
    ld [hl], b                                    ; $1310: $70
    adc d                                         ; $1311: $8a
    ld [hl], b                                    ; $1312: $70
    adc d                                         ; $1313: $8a
    and b                                         ; $1314: $a0
    adc e                                         ; $1315: $8b
    or b                                          ; $1316: $b0
    adc e                                         ; $1317: $8b
    nop                                           ; $1318: $00
    sub l                                         ; $1319: $95
    db $10                                        ; $131a: $10
    sub l                                         ; $131b: $95
    jr nz, jr_000_12b3                            ; $131c: $20 $95

    jr nc, jr_000_12b5                            ; $131e: $30 $95

    ld b, b                                       ; $1320: $40
    sub l                                         ; $1321: $95
    ld d, b                                       ; $1322: $50
    sub l                                         ; $1323: $95
    ld h, b                                       ; $1324: $60
    sub l                                         ; $1325: $95
    ld [hl], b                                    ; $1326: $70
    sub l                                         ; $1327: $95
    add b                                         ; $1328: $80
    sub l                                         ; $1329: $95
    sub b                                         ; $132a: $90
    sub l                                         ; $132b: $95
    and b                                         ; $132c: $a0
    sub l                                         ; $132d: $95
    or b                                          ; $132e: $b0
    sub l                                         ; $132f: $95
    ret nz                                        ; $1330: $c0

    sub l                                         ; $1331: $95
    ret nc                                        ; $1332: $d0

    sub l                                         ; $1333: $95
    ldh [$ff95], a                                ; $1334: $e0 $95
    ldh a, [$ff95]                                ; $1336: $f0 $95
    ld [hl], b                                    ; $1338: $70
    adc d                                         ; $1339: $8a
    ld [hl], b                                    ; $133a: $70
    adc d                                         ; $133b: $8a
    ldh [$ff8c], a                                ; $133c: $e0 $8c
    ldh a, [$ff8c]                                ; $133e: $f0 $8c
    nop                                           ; $1340: $00
    sub [hl]                                      ; $1341: $96
    db $10                                        ; $1342: $10
    sub [hl]                                      ; $1343: $96
    jr nz, jr_000_12dc                            ; $1344: $20 $96

    jr nc, jr_000_12de                            ; $1346: $30 $96

    ld b, b                                       ; $1348: $40
    sub [hl]                                      ; $1349: $96
    ld d, b                                       ; $134a: $50
    sub [hl]                                      ; $134b: $96
    ld h, b                                       ; $134c: $60
    sub [hl]                                      ; $134d: $96
    ld [hl], b                                    ; $134e: $70
    sub [hl]                                      ; $134f: $96
    add b                                         ; $1350: $80
    sub [hl]                                      ; $1351: $96
    sub b                                         ; $1352: $90
    sub [hl]                                      ; $1353: $96
    and b                                         ; $1354: $a0
    sub [hl]                                      ; $1355: $96
    or b                                          ; $1356: $b0
    sub [hl]                                      ; $1357: $96
    ret nz                                        ; $1358: $c0

    sub [hl]                                      ; $1359: $96
    ret nc                                        ; $135a: $d0

    sub [hl]                                      ; $135b: $96
    ldh [$ff96], a                                ; $135c: $e0 $96
    ldh a, [$ff96]                                ; $135e: $f0 $96
    ld [hl], b                                    ; $1360: $70
    adc d                                         ; $1361: $8a
    ld [hl], b                                    ; $1362: $70
    adc d                                         ; $1363: $8a
    ret nz                                        ; $1364: $c0

    adc e                                         ; $1365: $8b
    ret nc                                        ; $1366: $d0

    adc e                                         ; $1367: $8b
    nop                                           ; $1368: $00
    sub a                                         ; $1369: $97

jr_000_136a:
    db $10                                        ; $136a: $10
    sub a                                         ; $136b: $97

jr_000_136c:
    jr nz, jr_000_1305                            ; $136c: $20 $97

    jr nc, jr_000_1307                            ; $136e: $30 $97

    ld b, b                                       ; $1370: $40
    sub a                                         ; $1371: $97
    ld d, b                                       ; $1372: $50
    sub a                                         ; $1373: $97
    ld h, b                                       ; $1374: $60
    sub a                                         ; $1375: $97
    ld [hl], b                                    ; $1376: $70
    sub a                                         ; $1377: $97
    add b                                         ; $1378: $80
    sub a                                         ; $1379: $97
    sub b                                         ; $137a: $90
    sub a                                         ; $137b: $97
    and b                                         ; $137c: $a0
    sub a                                         ; $137d: $97
    or b                                          ; $137e: $b0
    sub a                                         ; $137f: $97
    ret nz                                        ; $1380: $c0

    sub a                                         ; $1381: $97
    ret nc                                        ; $1382: $d0

    sub a                                         ; $1383: $97
    ldh [$ff97], a                                ; $1384: $e0 $97
    ldh a, [$ff97]                                ; $1386: $f0 $97
    ld [hl], b                                    ; $1388: $70
    adc d                                         ; $1389: $8a
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
    jr nz, jr_000_136a                            ; $13e8: $20 $80

    jr nc, jr_000_136c                            ; $13ea: $30 $80

    ld b, b                                       ; $13ec: $40
    add b                                         ; $13ed: $80
    ld d, b                                       ; $13ee: $50
    add b                                         ; $13ef: $80
    ld h, b                                       ; $13f0: $60
    add b                                         ; $13f1: $80

Jump_000_13f2:
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

Call_000_15f4:
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

Call_000_181e:
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

Call_000_18ff:
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


Call_000_19bd:
    ld e, a                                       ; $19bd: $5f
    ld d, $00                                     ; $19be: $16 $00
    sla e                                         ; $19c0: $cb $23
    rl d                                          ; $19c2: $cb $12
    sla e                                         ; $19c4: $cb $23
    rl d                                          ; $19c6: $cb $12
    sla e                                         ; $19c8: $cb $23
    rl d                                          ; $19ca: $cb $12
    ld hl, $cda9                                  ; $19cc: $21 $a9 $cd
    add hl, de                                    ; $19cf: $19
    ld a, [ActiveROMBank]                         ; $19d0: $fa $12 $c3
    push af                                       ; $19d3: $f5
    ld a, [hl]                                    ; $19d4: $7e
    ld [ActiveROMBank], a                         ; $19d5: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $19d8: $ea $00 $20
    ld hl, $cda5                                  ; $19db: $21 $a5 $cd
    add hl, de                                    ; $19de: $19
    ld a, [hl]                                    ; $19df: $7e
    and a                                         ; $19e0: $a7
    jr nz, jr_000_1a23                            ; $19e1: $20 $40

    ld hl, $cda6                                  ; $19e3: $21 $a6 $cd
    add hl, de                                    ; $19e6: $19
    ld a, [hl]                                    ; $19e7: $7e
    ld c, a                                       ; $19e8: $4f
    ld b, $00                                     ; $19e9: $06 $00

jr_000_19eb:
    ld hl, $cda7                                  ; $19eb: $21 $a7 $cd
    add hl, de                                    ; $19ee: $19
    ld a, [hl+]                                   ; $19ef: $2a
    ld h, [hl]                                    ; $19f0: $66
    ld l, a                                       ; $19f1: $6f
    add hl, bc                                    ; $19f2: $09
    ld a, [hl+]                                   ; $19f3: $2a
    and a                                         ; $19f4: $a7
    jr nz, jr_000_19fc                            ; $19f5: $20 $05

    ld bc, $0000                                  ; $19f7: $01 $00 $00
    jr jr_000_19eb                                ; $19fa: $18 $ef

jr_000_19fc:
    push hl                                       ; $19fc: $e5
    ld hl, $cda5                                  ; $19fd: $21 $a5 $cd
    add hl, de                                    ; $1a00: $19
    ld [hl], a                                    ; $1a01: $77
    pop hl                                        ; $1a02: $e1
    ld a, [hl+]                                   ; $1a03: $2a
    push hl                                       ; $1a04: $e5
    ld hl, $cda2                                  ; $1a05: $21 $a2 $cd
    add hl, de                                    ; $1a08: $19
    add [hl]                                      ; $1a09: $86

Call_000_1a0a:
    ld [hl], a                                    ; $1a0a: $77
    pop hl                                        ; $1a0b: $e1
    ld a, [hl+]                                   ; $1a0c: $2a
    push hl                                       ; $1a0d: $e5
    ld hl, $cda3                                  ; $1a0e: $21 $a3 $cd
    add hl, de                                    ; $1a11: $19
    add [hl]                                      ; $1a12: $86
    ld [hl], a                                    ; $1a13: $77
    pop hl                                        ; $1a14: $e1
    ld a, [hl+]                                   ; $1a15: $2a
    ld hl, $cda4                                  ; $1a16: $21 $a4 $cd
    add hl, de                                    ; $1a19: $19
    ld [hl], a                                    ; $1a1a: $77
    ld a, c                                       ; $1a1b: $79
    add $04                                       ; $1a1c: $c6 $04
    ld hl, $cda6                                  ; $1a1e: $21 $a6 $cd
    add hl, de                                    ; $1a21: $19
    ld [hl], a                                    ; $1a22: $77

jr_000_1a23:
    ld hl, $cda5                                  ; $1a23: $21 $a5 $cd
    add hl, de                                    ; $1a26: $19
    dec [hl]                                      ; $1a27: $35
    ld hl, $cda4                                  ; $1a28: $21 $a4 $cd
    add hl, de                                    ; $1a2b: $19
    ld a, [hl]                                    ; $1a2c: $7e
    cp $ff                                        ; $1a2d: $fe $ff
    ret z                                         ; $1a2f: $c8

    ld hl, $cda2                                  ; $1a30: $21 $a2 $cd
    add hl, de                                    ; $1a33: $19
    ld b, [hl]                                    ; $1a34: $46
    ld hl, $cda3                                  ; $1a35: $21 $a3 $cd
    add hl, de                                    ; $1a38: $19
    ld c, [hl]                                    ; $1a39: $4e
    call Call_000_20ce                            ; $1a3a: $cd $ce $20
    pop af                                        ; $1a3d: $f1
    ld [ActiveROMBank], a                         ; $1a3e: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $1a41: $ea $00 $20
    ret                                           ; $1a44: $c9


Call_000_1a45:
    ld a, [ActiveROMBank]                         ; $1a45: $fa $12 $c3
    push af                                       ; $1a48: $f5
    ld a, $03                                     ; $1a49: $3e $03
    ld [ActiveROMBank], a                         ; $1a4b: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $1a4e: $ea $00 $20
    ld a, [$d807]                                 ; $1a51: $fa $07 $d8
    ld c, a                                       ; $1a54: $4f
    ld a, [$d808]                                 ; $1a55: $fa $08 $d8
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
    ld [ActiveROMBank], a                         ; $1a81: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $1a84: $ea $00 $20
    ret                                           ; $1a87: $c9


Call_000_1a88:
    ld a, [ActiveROMBank]                         ; $1a88: $fa $12 $c3
    push af                                       ; $1a8b: $f5
    ld a, $00                                     ; $1a8c: $3e $00
    ld [ActiveROMBank], a                         ; $1a8e: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $1a91: $ea $00 $20
    push de                                       ; $1a94: $d5
    sla e                                         ; $1a95: $cb $23
    rl d                                          ; $1a97: $cb $12
    ld hl, $2db6                                  ; $1a99: $21 $b6 $2d
    add hl, de                                    ; $1a9c: $19
    ld e, [hl]                                    ; $1a9d: $5e
    inc hl                                        ; $1a9e: $23
    ld d, [hl]                                    ; $1a9f: $56
    ld hl, $4000                                  ; $1aa0: $21 $00 $40
    add hl, de                                    ; $1aa3: $19
    ld a, l                                       ; $1aa4: $7d
    ld [$c355], a                                 ; $1aa5: $ea $55 $c3
    ld a, h                                       ; $1aa8: $7c
    ld [$c356], a                                 ; $1aa9: $ea $56 $c3
    ld a, $0e                                     ; $1aac: $3e $0e
    ld [$c357], a                                 ; $1aae: $ea $57 $c3
    ld a, b                                       ; $1ab1: $78
    ld [$c351], a                                 ; $1ab2: $ea $51 $c3
    pop de                                        ; $1ab5: $d1
    ld hl, $2cb6                                  ; $1ab6: $21 $b6 $2c
    add hl, de                                    ; $1ab9: $19
    ld a, [hl]                                    ; $1aba: $7e
    and a                                         ; $1abb: $a7
    jr z, jr_000_1ad0                             ; $1abc: $28 $12

    push af                                       ; $1abe: $f5
    add b                                         ; $1abf: $80
    ld [$c353], a                                 ; $1ac0: $ea $53 $c3
    ld a, c                                       ; $1ac3: $79
    ld [$c352], a                                 ; $1ac4: $ea $52 $c3
    add $09                                       ; $1ac7: $c6 $09
    ld [$c354], a                                 ; $1ac9: $ea $54 $c3
    call Call_000_08b3                            ; $1acc: $cd $b3 $08
    pop af                                        ; $1acf: $f1

jr_000_1ad0:
    ld e, a                                       ; $1ad0: $5f
    pop af                                        ; $1ad1: $f1
    ld [ActiveROMBank], a                         ; $1ad2: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $1ad5: $ea $00 $20
    ld a, e                                       ; $1ad8: $7b
    ret                                           ; $1ad9: $c9


Call_000_1ada:
    ld a, [$c31a]                                 ; $1ada: $fa $1a $c3
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
    ld hl, $035e                                  ; $1b1f: $21 $5e $03
    ld de, $aced                                  ; $1b22: $11 $ed $ac
    ld bc, $0010                                  ; $1b25: $01 $10 $00
    call Call_000_04db                            ; $1b28: $cd $db $04
    ld hl, $036e                                  ; $1b2b: $21 $6e $03
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
    ld de, $035e                                  ; $1b63: $11 $5e $03
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
    ld de, $036e                                  ; $1b74: $11 $6e $03
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
    call Call_000_05de                            ; $1ba8: $cd $de $05
    ld b, $02                                     ; $1bab: $06 $02
    ld hl, $5274                                  ; $1bad: $21 $74 $52
    call Call_000_05de                            ; $1bb0: $cd $de $05
    ld b, $02                                     ; $1bb3: $06 $02
    ld hl, $5274                                  ; $1bb5: $21 $74 $52
    call Call_000_05de                            ; $1bb8: $cd $de $05
    ld b, $02                                     ; $1bbb: $06 $02
    ld hl, $5274                                  ; $1bbd: $21 $74 $52
    call Call_000_05de                            ; $1bc0: $cd $de $05
    ld hl, $1be2                                  ; $1bc3: $21 $e2 $1b
    ld de, $a042                                  ; $1bc6: $11 $42 $a0
    ld bc, $0023                                  ; $1bc9: $01 $23 $00
    call Call_000_04db                            ; $1bcc: $cd $db $04
    ld hl, $1c05                                  ; $1bcf: $21 $05 $1c
    ld de, $a069                                  ; $1bd2: $11 $69 $a0
    ld bc, $000f                                  ; $1bd5: $01 $0f $00
    call Call_000_04db                            ; $1bd8: $cd $db $04
    ld bc, $003c                                  ; $1bdb: $01 $3c $00
    call Call_000_0603                            ; $1bde: $cd $03 $06
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

Jump_000_1bfa:
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

    ld a, [CurrentGridSize]                       ; $1c4e: $fa $00 $d8
    ld [de], a                                    ; $1c51: $12
    inc de                                        ; $1c52: $13
    ld a, [$d801]                                 ; $1c53: $fa $01 $d8
    ld [de], a                                    ; $1c56: $12
    ld a, [$d833]                                 ; $1c57: $fa $33 $d8
    ld [$aca3], a                                 ; $1c5a: $ea $a3 $ac
    ld a, [$d811]                                 ; $1c5d: $fa $11 $d8
    ld [$aca4], a                                 ; $1c60: $ea $a4 $ac
    ld a, [$d809]                                 ; $1c63: $fa $09 $d8
    ld [$aca5], a                                 ; $1c66: $ea $a5 $ac
    ld a, [$d80a]                                 ; $1c69: $fa $0a $d8
    ld [$aca6], a                                 ; $1c6c: $ea $a6 $ac
    ld a, [$d80b]                                 ; $1c6f: $fa $0b $d8
    ld [$aca7], a                                 ; $1c72: $ea $a7 $ac
    ld a, [$d80c]                                 ; $1c75: $fa $0c $d8
    ld [$aca8], a                                 ; $1c78: $ea $a8 $ac
    ld a, [$d807]                                 ; $1c7b: $fa $07 $d8
    ld [$aca9], a                                 ; $1c7e: $ea $a9 $ac
    ld a, [$d808]                                 ; $1c81: $fa $08 $d8
    ld [$acaa], a                                 ; $1c84: $ea $aa $ac
    ld a, [$d636]                                 ; $1c87: $fa $36 $d6
    ld [$acab], a                                 ; $1c8a: $ea $ab $ac
    ld a, [$d637]                                 ; $1c8d: $fa $37 $d6
    ld [$acac], a                                 ; $1c90: $ea $ac $ac
    jp Jump_000_1b1f                              ; $1c93: $c3 $1f $1b


Call_000_1c96:
    ld a, [$aca3]                                 ; $1c96: $fa $a3 $ac
    ld [$d833], a                                 ; $1c99: $ea $33 $d8
    ld a, [$aca4]                                 ; $1c9c: $fa $a4 $ac
    ld [$d811], a                                 ; $1c9f: $ea $11 $d8
    ld a, [$aca5]                                 ; $1ca2: $fa $a5 $ac
    ld [$d809], a                                 ; $1ca5: $ea $09 $d8
    ld a, [$aca6]                                 ; $1ca8: $fa $a6 $ac
    ld [$d80a], a                                 ; $1cab: $ea $0a $d8
    ld a, [$aca7]                                 ; $1cae: $fa $a7 $ac
    ld [$d80b], a                                 ; $1cb1: $ea $0b $d8
    ld a, [$aca8]                                 ; $1cb4: $fa $a8 $ac
    ld [$d80c], a                                 ; $1cb7: $ea $0c $d8
    ld a, [$aca9]                                 ; $1cba: $fa $a9 $ac
    ld [$d807], a                                 ; $1cbd: $ea $07 $d8
    ld a, [$acaa]                                 ; $1cc0: $fa $aa $ac
    ld [$d808], a                                 ; $1cc3: $ea $08 $d8
    ld a, [$acab]                                 ; $1cc6: $fa $ab $ac
    ld [$d636], a                                 ; $1cc9: $ea $36 $d6
    ld a, [$acac]                                 ; $1ccc: $fa $ac $ac
    ld [$d637], a                                 ; $1ccf: $ea $37 $d6
    call Call_000_07f1                            ; $1cd2: $cd $f1 $07
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

    ld a, [CurrentGridSize]                       ; $1d16: $fa $00 $d8
    ld [de], a                                    ; $1d19: $12
    inc de                                        ; $1d1a: $13
    ld a, [$d801]                                 ; $1d1b: $fa $01 $d8
    ld [de], a                                    ; $1d1e: $12
    jp Jump_000_1b1f                              ; $1d1f: $c3 $1f $1b


Call_000_1d22:
    ld a, $42                                     ; $1d22: $3e $42
    ld [$c32e], a                                 ; $1d24: $ea $2e $c3
    xor a                                         ; $1d27: $af
    ld [$c330], a                                 ; $1d28: $ea $30 $c3
    ld [$c331], a                                 ; $1d2b: $ea $31 $c3
    ld a, $0b                                     ; $1d2e: $3e $0b
    ld hl, $5000                                  ; $1d30: $21 $00 $50
    ld de, $8000                                  ; $1d33: $11 $00 $80
    ld bc, $0300                                  ; $1d36: $01 $00 $03
    call BankedTileCopy                           ; $1d39: $cd $e4 $04
    xor a                                         ; $1d3c: $af
    ld [$d63c], a                                 ; $1d3d: $ea $3c $d6
    ld [$d63d], a                                 ; $1d40: $ea $3d $d6
    call Call_000_05b6                            ; $1d43: $cd $b6 $05
    call Call_000_04a2                            ; $1d46: $cd $a2 $04
    call Call_000_1fa5                            ; $1d49: $cd $a5 $1f
    ld b, $03                                     ; $1d4c: $06 $03
    ld hl, $4694                                  ; $1d4e: $21 $94 $46
    ld c, $00                                     ; $1d51: $0e $00
    ld de, $0004                                  ; $1d53: $11 $04 $00
    call Call_000_040d                            ; $1d56: $cd $0d $04

jr_000_1d59:
    ld a, [$c31e]                                 ; $1d59: $fa $1e $c3
    bit 0, a                                      ; $1d5c: $cb $47
    jr nz, jr_000_1db9                            ; $1d5e: $20 $59

    bit 1, a                                      ; $1d60: $cb $4f
    jr nz, jr_000_1d95                            ; $1d62: $20 $31

    ld bc, $3040                                  ; $1d64: $01 $40 $30
    ld a, $4b                                     ; $1d67: $3e $4b
    call Call_000_20ce                            ; $1d69: $cd $ce $20
    ld a, [$d63c]                                 ; $1d6c: $fa $3c $d6
    inc a                                         ; $1d6f: $3c
    cp $46                                        ; $1d70: $fe $46
    jr c, jr_000_1d7d                             ; $1d72: $38 $09

    ld a, [$d63d]                                 ; $1d74: $fa $3d $d6
    xor $01                                       ; $1d77: $ee $01
    ld [$d63d], a                                 ; $1d79: $ea $3d $d6
    xor a                                         ; $1d7c: $af

jr_000_1d7d:
    ld [$d63c], a                                 ; $1d7d: $ea $3c $d6
    cp $30                                        ; $1d80: $fe $30
    jr nc, jr_000_1d8f                            ; $1d82: $30 $0b

    ld a, [$d63d]                                 ; $1d84: $fa $3d $d6
    add $4c                                       ; $1d87: $c6 $4c
    ld bc, $3050                                  ; $1d89: $01 $50 $30
    call Call_000_20ce                            ; $1d8c: $cd $ce $20

jr_000_1d8f:
    call Call_000_05c5                            ; $1d8f: $cd $c5 $05
    rst RST_08                                    ; $1d92: $cf
    jr jr_000_1d59                                ; $1d93: $18 $c4

jr_000_1d95:
    ld c, $04                                     ; $1d95: $0e $04
    ld a, $02                                     ; $1d97: $3e $02
    call Call_000_03b6                            ; $1d99: $cd $b6 $03
    ld bc, $003c                                  ; $1d9c: $01 $3c $00
    call Call_000_0603                            ; $1d9f: $cd $03 $06
    call Call_000_05b6                            ; $1da2: $cd $b6 $05
    ld b, $03                                     ; $1da5: $06 $03
    ld hl, $469f                                  ; $1da7: $21 $9f $46
    ld c, $00                                     ; $1daa: $0e $00
    ld de, $0013                                  ; $1dac: $11 $13 $00
    call Call_000_044e                            ; $1daf: $cd $4e $04
    call Call_000_0483                            ; $1db2: $cd $83 $04
    ld a, $ff                                     ; $1db5: $3e $ff
    and a                                         ; $1db7: $a7
    ret                                           ; $1db8: $c9


jr_000_1db9:
    ld c, $03                                     ; $1db9: $0e $03
    ld a, $02                                     ; $1dbb: $3e $02
    call Call_000_03b6                            ; $1dbd: $cd $b6 $03
    ld bc, $003c                                  ; $1dc0: $01 $3c $00
    call Call_000_0603                            ; $1dc3: $cd $03 $06
    call Call_000_05b6                            ; $1dc6: $cd $b6 $05
    ld b, $03                                     ; $1dc9: $06 $03
    ld hl, $469f                                  ; $1dcb: $21 $9f $46
    ld c, $00                                     ; $1dce: $0e $00
    ld de, $0013                                  ; $1dd0: $11 $13 $00
    call Call_000_044e                            ; $1dd3: $cd $4e $04
    call Call_000_0483                            ; $1dd6: $cd $83 $04
    xor a                                         ; $1dd9: $af
    ret                                           ; $1dda: $c9


Call_000_1ddb:
    ld [RequestedROMBank], a                      ; $1ddb: $ea $14 $c3
    ld a, [ActiveROMBank]                         ; $1dde: $fa $12 $c3
    push af                                       ; $1de1: $f5
    ld a, [RequestedROMBank]                      ; $1de2: $fa $14 $c3
    ld [ActiveROMBank], a                         ; $1de5: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $1de8: $ea $00 $20
    call Call_000_1df6                            ; $1deb: $cd $f6 $1d
    pop af                                        ; $1dee: $f1
    ld [ActiveROMBank], a                         ; $1def: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $1df2: $ea $00 $20
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
    ld [RequestedROMBank], a                      ; $1e9e: $ea $14 $c3
    ld a, [ActiveROMBank]                         ; $1ea1: $fa $12 $c3
    push af                                       ; $1ea4: $f5
    ld a, [RequestedROMBank]                      ; $1ea5: $fa $14 $c3
    ld [ActiveROMBank], a                         ; $1ea8: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $1eab: $ea $00 $20
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
    call Call_000_0603                            ; $1edd: $cd $03 $06
    pop hl                                        ; $1ee0: $e1
    call Call_000_1df6                            ; $1ee1: $cd $f6 $1d
    ld bc, $0006                                  ; $1ee4: $01 $06 $00
    call Call_000_0603                            ; $1ee7: $cd $03 $06
    ld a, [$c32f]                                 ; $1eea: $fa $2f $c3
    ldh [rBGP], a                                 ; $1eed: $e0 $47
    ld a, [$c32e]                                 ; $1eef: $fa $2e $c3
    ldh [rLCDC], a                                ; $1ef2: $e0 $40
    ei                                            ; $1ef4: $fb
    pop af                                        ; $1ef5: $f1
    ld [ActiveROMBank], a                         ; $1ef6: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $1ef9: $ea $00 $20
    ret                                           ; $1efc: $c9


Call_000_1efd:
    ld bc, $0078                                  ; $1efd: $01 $78 $00
    call Call_000_0603                            ; $1f00: $cd $03 $06
    call Call_000_1f87                            ; $1f03: $cd $87 $1f
    ld a, $03                                     ; $1f06: $3e $03
    ld hl, $4de0                                  ; $1f08: $21 $e0 $4d
    call Call_000_1ddb                            ; $1f0b: $cd $db $1d
    ld bc, $0004                                  ; $1f0e: $01 $04 $00
    call Call_000_0603                            ; $1f11: $cd $03 $06
    ld a, $03                                     ; $1f14: $3e $03
    ld hl, $4df0                                  ; $1f16: $21 $f0 $4d
    call Call_000_1ddb                            ; $1f19: $cd $db $1d
    ld bc, $0004                                  ; $1f1c: $01 $04 $00
    call Call_000_0603                            ; $1f1f: $cd $03 $06
    ld a, $03                                     ; $1f22: $3e $03
    ld hl, $4e00                                  ; $1f24: $21 $00 $4e
    call Call_000_1ddb                            ; $1f27: $cd $db $1d
    ld bc, $0004                                  ; $1f2a: $01 $04 $00
    call Call_000_0603                            ; $1f2d: $cd $03 $06
    ld a, $03                                     ; $1f30: $3e $03
    ld hl, $4e10                                  ; $1f32: $21 $10 $4e
    call Call_000_1ddb                            ; $1f35: $cd $db $1d
    ld bc, $0004                                  ; $1f38: $01 $04 $00
    call Call_000_0603                            ; $1f3b: $cd $03 $06
    ld a, $03                                     ; $1f3e: $3e $03
    ld hl, $4e20                                  ; $1f40: $21 $20 $4e
    call Call_000_1ddb                            ; $1f43: $cd $db $1d
    ld bc, $0004                                  ; $1f46: $01 $04 $00
    call Call_000_0603                            ; $1f49: $cd $03 $06
    ld a, $03                                     ; $1f4c: $3e $03
    ld hl, $4e30                                  ; $1f4e: $21 $30 $4e
    call Call_000_1ddb                            ; $1f51: $cd $db $1d
    ld bc, $0004                                  ; $1f54: $01 $04 $00
    call Call_000_0603                            ; $1f57: $cd $03 $06
    ld a, $03                                     ; $1f5a: $3e $03
    ld hl, $4e40                                  ; $1f5c: $21 $40 $4e
    call Call_000_1ddb                            ; $1f5f: $cd $db $1d
    ld bc, $0004                                  ; $1f62: $01 $04 $00
    call Call_000_0603                            ; $1f65: $cd $03 $06
    ld a, $03                                     ; $1f68: $3e $03
    ld hl, $4e50                                  ; $1f6a: $21 $50 $4e
    call Call_000_1ddb                            ; $1f6d: $cd $db $1d
    ld bc, $0004                                  ; $1f70: $01 $04 $00
    call Call_000_0603                            ; $1f73: $cd $03 $06
    ld a, $03                                     ; $1f76: $3e $03
    ld hl, $4730                                  ; $1f78: $21 $30 $47
    call Call_000_1e9e                            ; $1f7b: $cd $9e $1e
    ld a, $03                                     ; $1f7e: $3e $03
    ld hl, $4030                                  ; $1f80: $21 $30 $40
    call Call_000_1e9e                            ; $1f83: $cd $9e $1e
    ret                                           ; $1f86: $c9


Call_000_1f87:
    ld a, [$c33d]                                 ; $1f87: $fa $3d $c3
    and a                                         ; $1f8a: $a7
    ret z                                         ; $1f8b: $c8

    ld a, [$c33f]                                 ; $1f8c: $fa $3f $c3
    and a                                         ; $1f8f: $a7
    ret nz                                        ; $1f90: $c0

    ld a, $03                                     ; $1f91: $3e $03
    ld hl, $4e60                                  ; $1f93: $21 $60 $4e
    call Call_000_1ddb                            ; $1f96: $cd $db $1d
    ld bc, $0004                                  ; $1f99: $01 $04 $00
    call Call_000_0603                            ; $1f9c: $cd $03 $06
    ld a, $ff                                     ; $1f9f: $3e $ff
    ld [$c33f], a                                 ; $1fa1: $ea $3f $c3
    ret                                           ; $1fa4: $c9


Call_000_1fa5:
    ld a, [$c33d]                                 ; $1fa5: $fa $3d $c3
    and a                                         ; $1fa8: $a7
    ret z                                         ; $1fa9: $c8

    ld bc, $0002                                  ; $1faa: $01 $02 $00
    call Call_000_0603                            ; $1fad: $cd $03 $06
    ld a, [$c33f]                                 ; $1fb0: $fa $3f $c3
    and a                                         ; $1fb3: $a7
    ret z                                         ; $1fb4: $c8

    ld a, $03                                     ; $1fb5: $3e $03
    ld hl, $4e70                                  ; $1fb7: $21 $70 $4e
    call Call_000_1ddb                            ; $1fba: $cd $db $1d
    ld bc, $0004                                  ; $1fbd: $01 $04 $00
    call Call_000_0603                            ; $1fc0: $cd $03 $06
    xor a                                         ; $1fc3: $af
    ld [$c33f], a                                 ; $1fc4: $ea $3f $c3
    ret                                           ; $1fc7: $c9


Jump_000_1fc8:
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
    ld a, [ActiveROMBank]                         ; $1fe4: $fa $12 $c3
    push af                                       ; $1fe7: $f5
    ld a, b                                       ; $1fe8: $78
    ld [ActiveROMBank], a                         ; $1fe9: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $1fec: $ea $00 $20
    ld b, $04                                     ; $1fef: $06 $04

jr_000_1ff1:
    ld a, [hl+]                                   ; $1ff1: $2a
    ld [$c32f], a                                 ; $1ff2: $ea $2f $c3
    ld a, [hl+]                                   ; $1ff5: $2a
    ld [$c330], a                                 ; $1ff6: $ea $30 $c3
    ld a, [hl+]                                   ; $1ff9: $2a
    ld [$c331], a                                 ; $1ffa: $ea $31 $c3
    push bc                                       ; $1ffd: $c5
    push hl                                       ; $1ffe: $e5
    ld bc, $0002                                  ; $1fff: $01 $02 $00
    call Call_000_0603                            ; $2002: $cd $03 $06
    pop hl                                        ; $2005: $e1
    pop bc                                        ; $2006: $c1
    dec b                                         ; $2007: $05

Call_000_2008:
    jr nz, jr_000_1ff1                            ; $2008: $20 $e7

    ld [$d63c], a                                 ; $200a: $ea $3c $d6
    ld [$d63d], a                                 ; $200d: $ea $3d $d6
    ld [$d63e], a                                 ; $2010: $ea $3e $d6
    ld [$d63f], a                                 ; $2013: $ea $3f $d6
    pop af                                        ; $2016: $f1
    ld [ActiveROMBank], a                         ; $2017: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $201a: $ea $00 $20
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
    call Call_000_0603                            ; $2041: $cd $03 $06
    pop de                                        ; $2044: $d1
    pop bc                                        ; $2045: $c1
    dec b                                         ; $2046: $05
    jr nz, jr_000_2027                            ; $2047: $20 $de

    ret                                           ; $2049: $c9


Jump_000_204a:
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
    call Call_000_0603                            ; $2080: $cd $03 $06
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
    ld a, [ActiveROMBank]                         ; $20a0: $fa $12 $c3
    push af                                       ; $20a3: $f5
    ld a, b                                       ; $20a4: $78
    ld [ActiveROMBank], a                         ; $20a5: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $20a8: $ea $00 $20
    ld b, $04                                     ; $20ab: $06 $04

jr_000_20ad:
    ld a, [hl-]                                   ; $20ad: $3a
    ld [$c331], a                                 ; $20ae: $ea $31 $c3
    ld a, [hl-]                                   ; $20b1: $3a
    ld [$c330], a                                 ; $20b2: $ea $30 $c3
    ld a, [hl-]                                   ; $20b5: $3a
    ld [$c32f], a                                 ; $20b6: $ea $2f $c3
    push bc                                       ; $20b9: $c5
    push hl                                       ; $20ba: $e5
    ld bc, $0002                                  ; $20bb: $01 $02 $00
    call Call_000_0603                            ; $20be: $cd $03 $06
    pop hl                                        ; $20c1: $e1
    pop bc                                        ; $20c2: $c1
    dec b                                         ; $20c3: $05
    jr nz, jr_000_20ad                            ; $20c4: $20 $e7

    pop af                                        ; $20c6: $f1
    ld [ActiveROMBank], a                         ; $20c7: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $20ca: $ea $00 $20
    ret                                           ; $20cd: $c9


Call_000_20ce:
Jump_000_20ce:
    push hl                                       ; $20ce: $e5
    ld e, a                                       ; $20cf: $5f
    ld d, $00                                     ; $20d0: $16 $00
    sla e                                         ; $20d2: $cb $23
    rl d                                          ; $20d4: $cb $12
    ld a, [ActiveROMBank]                         ; $20d6: $fa $12 $c3
    push af                                       ; $20d9: $f5
    ld a, $03                                     ; $20da: $3e $03
    ld [ActiveROMBank], a                         ; $20dc: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $20df: $ea $00 $20
    ld hl, $6c63                                  ; $20e2: $21 $63 $6c
    add hl, de                                    ; $20e5: $19
    ld a, [hl+]                                   ; $20e6: $2a
    ld e, a                                       ; $20e7: $5f
    ld a, [hl]                                    ; $20e8: $7e
    ld d, a                                       ; $20e9: $57
    ld a, [$c311]                                 ; $20ea: $fa $11 $c3
    ld l, a                                       ; $20ed: $6f
    ld h, $c0                                     ; $20ee: $26 $c0

jr_000_20f0:
    ld a, [de]                                    ; $20f0: $1a
    cp $ff                                        ; $20f1: $fe $ff
    jr z, jr_000_2104                             ; $20f3: $28 $0f

    add c                                         ; $20f5: $81
    ld [hl+], a                                   ; $20f6: $22
    inc de                                        ; $20f7: $13
    ld a, [de]                                    ; $20f8: $1a
    add b                                         ; $20f9: $80
    ld [hl+], a                                   ; $20fa: $22
    inc de                                        ; $20fb: $13

Call_000_20fc:
    ld a, [de]                                    ; $20fc: $1a
    ld [hl+], a                                   ; $20fd: $22
    inc de                                        ; $20fe: $13
    ld a, [de]                                    ; $20ff: $1a
    ld [hl+], a                                   ; $2100: $22
    inc de                                        ; $2101: $13
    jr jr_000_20f0                                ; $2102: $18 $ec

jr_000_2104:
    ld a, l                                       ; $2104: $7d
    ld [$c311], a                                 ; $2105: $ea $11 $c3
    pop af                                        ; $2108: $f1
    ld [ActiveROMBank], a                         ; $2109: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $210c: $ea $00 $20
    pop hl                                        ; $210f: $e1
    ret                                           ; $2110: $c9


    ld a, [$c31e]                                 ; $2111: $fa $1e $c3
    ld [$d834], a                                 ; $2114: $ea $34 $d8
    ld a, [$d837]                                 ; $2117: $fa $37 $d8
    and a                                         ; $211a: $a7
    jr nz, jr_000_212b                            ; $211b: $20 $0e

    ld a, [$c31e]                                 ; $211d: $fa $1e $c3
    bit 3, a                                      ; $2120: $cb $5f
    jr z, jr_000_2130                             ; $2122: $28 $0c

    ld c, $04                                     ; $2124: $0e $04
    ld a, $02                                     ; $2126: $3e $02
    call Call_000_03b6                            ; $2128: $cd $b6 $03

jr_000_212b:
    ld a, $2a                                     ; $212b: $3e $2a
    ld [Unknown_State], a                         ; $212d: $ea $35 $d6

jr_000_2130:
    ld a, [Unknown_State]                         ; $2130: $fa $35 $d6
    rst RST_18                                    ; $2133: $df

b00_Unknown_StatePointer_00::
    db $8a, $21

b00_Unknown_StatePointer_01::
    db $82, $22

b00_Unknown_StatePointer_02::
    db $aa, $22

b00_Unknown_StatePointer_03::
    db $f2, $22

b00_Unknown_StatePointer_04::
    db $10, $23

b00_Unknown_StatePointer_05::
    db $58, $23

b00_Unknown_StatePointer_06::
    db $76, $23

b00_Unknown_StatePointer_07::
    db $9e, $23

b00_Unknown_StatePointer_08::
    db $c6, $23

b00_Unknown_StatePointer_09::
    db $6d, $24

b00_Unknown_StatePointer_0a::
    db $92, $24

b00_Unknown_StatePointer_0b::
    db $ab, $24

b00_Unknown_StatePointer_0c::
    db $d3, $24

b00_Unknown_StatePointer_0d::
    db $01, $25

b00_Unknown_StatePointer_0e::
    db $49, $25

b00_Unknown_StatePointer_0f::
    db $67, $25

b00_Unknown_StatePointer_10::
    db $8f, $25

b00_Unknown_StatePointer_11::
    db $d7, $25

b00_Unknown_StatePointer_12::
    db $f5, $25

b00_Unknown_StatePointer_13::
    db $2f, $26

b00_Unknown_StatePointer_14::
    db $6b, $26

b00_Unknown_StatePointer_15::
    db $b3, $26

b00_Unknown_StatePointer_16::
    db $d1, $26

b00_Unknown_StatePointer_17::
    db $f9, $26

b00_Unknown_StatePointer_18::
    db $41, $27

b00_Unknown_StatePointer_19::
    db $5f, $27

b00_Unknown_StatePointer_1a::
    db $9e, $27

b00_Unknown_StatePointer_1b::
    db $d4, $27

b00_Unknown_StatePointer_1c::
    db $e6, $27

b00_Unknown_StatePointer_1d::
    db $0a, $28

b00_Unknown_StatePointer_1e::
    db $3b, $28

b00_Unknown_StatePointer_1f::
    db $70, $28

b00_Unknown_StatePointer_20::
    db $9a, $28

b00_Unknown_StatePointer_21::
    db $c2, $28

b00_Unknown_StatePointer_22::
    db $f7, $28

b00_Unknown_StatePointer_23::
    db $36, $29

b00_Unknown_StatePointer_24::
    db $72, $29

b00_Unknown_StatePointer_25::
    db $cc, $29

b00_Unknown_StatePointer_26::
    db $f4, $29

b00_Unknown_StatePointer_27::
    db $33, $2a

b00_Unknown_StatePointer_28::
    db $7b, $2a

b00_Unknown_StatePointer_29::
    db $ac, $2a

b00_Unknown_StatePointer_2a::
    db $24, $2b

b00_Unknown_State_00::
    ld a, $43                                     ; $218a: $3e $43
    ld [$c32e], a                                 ; $218c: $ea $2e $c3
    xor a                                         ; $218f: $af
    ld [$c32f], a                                 ; $2190: $ea $2f $c3
    ld [$c330], a                                 ; $2193: $ea $30 $c3
    ld [$c331], a                                 ; $2196: $ea $31 $c3
    ld [$c332], a                                 ; $2199: $ea $32 $c3
    ld [$c333], a                                 ; $219c: $ea $33 $c3
    call Call_000_05a0                            ; $219f: $cd $a0 $05
    call Call_000_05ab                            ; $21a2: $cd $ab $05
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
    ld [$c336], a                                 ; $21c3: $ea $36 $c3
    ld hl, $c337                                  ; $21c6: $21 $37 $c3
    set 6, [hl]                                   ; $21c9: $cb $f6
    ld hl, rIE                                    ; $21cb: $21 $ff $ff
    set 1, [hl]                                   ; $21ce: $cb $ce
    ld a, $01                                     ; $21d0: $3e $01
    ld [$c338], a                                 ; $21d2: $ea $38 $c3
    ld [$c33c], a                                 ; $21d5: $ea $3c $c3
    ld [$c350], a                                 ; $21d8: $ea $50 $c3
    xor a                                         ; $21db: $af
    ld [$d805], a                                 ; $21dc: $ea $05 $d8
    ld [$d806], a                                 ; $21df: $ea $06 $d8
    ld [$d818], a                                 ; $21e2: $ea $18 $d8
    ld [$d817], a                                 ; $21e5: $ea $17 $d8
    ld [$d80f], a                                 ; $21e8: $ea $0f $d8
    ld [$d824], a                                 ; $21eb: $ea $24 $d8
    ld [$d825], a                                 ; $21ee: $ea $25 $d8
    ld [$d823], a                                 ; $21f1: $ea $23 $d8
    ld [$d822], a                                 ; $21f4: $ea $22 $d8
    ld [$d63e], a                                 ; $21f7: $ea $3e $d6
    ld [$d63f], a                                 ; $21fa: $ea $3f $d6
    ld a, [$c33b]                                 ; $21fd: $fa $3b $c3
    ld [$d63d], a                                 ; $2200: $ea $3d $d6
    call Call_000_323e                            ; $2203: $cd $3e $32
    xor a                                         ; $2206: $af
    ld [$d807], a                                 ; $2207: $ea $07 $d8
    ld [$d808], a                                 ; $220a: $ea $08 $d8
    ld a, $02                                     ; $220d: $3e $02
    ld [$d811], a                                 ; $220f: $ea $11 $d8
    ld a, $02                                     ; $2212: $3e $02
    ld [$d812], a                                 ; $2214: $ea $12 $d8
    ld [$d813], a                                 ; $2217: $ea $13 $d8
    ld a, $05                                     ; $221a: $3e $05
    ld [$d82a], a                                 ; $221c: $ea $2a $d8
    ld a, $96                                     ; $221f: $3e $96
    ld [$cd63], a                                 ; $2221: $ea $63 $cd
    ld a, $10                                     ; $2224: $3e $10
    ld [$cd64], a                                 ; $2226: $ea $64 $cd
    ld a, $0d                                     ; $2229: $3e $0d
    ld [$d843], a                                 ; $222b: $ea $43 $d8
    ld [$d82b], a                                 ; $222e: $ea $2b $d8
    ld a, $58                                     ; $2231: $3e $58
    ld [$d844], a                                 ; $2233: $ea $44 $d8
    ld [$d82c], a                                 ; $2236: $ea $2c $d8
    ld a, $93                                     ; $2239: $3e $93
    ld [$d845], a                                 ; $223b: $ea $45 $d8
    ld a, $89                                     ; $223e: $3e $89
    ld [$d846], a                                 ; $2240: $ea $46 $d8
    ld a, $30                                     ; $2243: $3e $30
    ld [$d82d], a                                 ; $2245: $ea $2d $d8
    ld a, $6a                                     ; $2248: $3e $6a
    ld [$d82e], a                                 ; $224a: $ea $2e $d8
    call Call_000_07f1                            ; $224d: $cd $f1 $07
    call $6f30                                    ; $2250: $cd $30 $6f
    call Call_000_05b6                            ; $2253: $cd $b6 $05
    call $7beb                                    ; $2256: $cd $eb $7b
    ld c, $00                                     ; $2259: $0e $00
    ld a, $01                                     ; $225b: $3e $01
    call Call_000_03b6                            ; $225d: $cd $b6 $03
    call Call_000_0399                            ; $2260: $cd $99 $03
    ld c, $02                                     ; $2263: $0e $02
    ld a, $01                                     ; $2265: $3e $01
    call Call_000_03b6                            ; $2267: $cd $b6 $03
    call Call_000_04a2                            ; $226a: $cd $a2 $04
    ld b, $03                                     ; $226d: $06 $03
    ld hl, $46a0                                  ; $226f: $21 $a0 $46
    ld c, $01                                     ; $2272: $0e $01
    ld de, $0014                                  ; $2274: $11 $14 $00
    call Call_000_040d                            ; $2277: $cd $0d $04
    ld hl, Unknown_State                          ; $227a: $21 $35 $d6
    inc [hl]                                      ; $227d: $34
    call $6fb9                                    ; $227e: $cd $b9 $6f
    ret                                           ; $2281: $c9


b00_Unknown_State_01::
    call $7918                                    ; $2282: $cd $18 $79
    call Call_000_3093                            ; $2285: $cd $93 $30
    call Call_000_2b6e                            ; $2288: $cd $6e $2b
    ret nz                                        ; $228b: $c0

    ld hl, $03ed                                  ; $228c: $21 $ed $03
    call $2fb6                                    ; $228f: $cd $b6 $2f
    call Call_000_05b6                            ; $2292: $cd $b6 $05
    call Call_000_302e                            ; $2295: $cd $2e $30
    ld a, $ae                                     ; $2298: $3e $ae
    ld [$d82d], a                                 ; $229a: $ea $2d $d8
    ld a, $6a                                     ; $229d: $3e $6a
    ld [$d82e], a                                 ; $229f: $ea $2e $d8
    call Call_000_323e                            ; $22a2: $cd $3e $32
    ld hl, Unknown_State                          ; $22a5: $21 $35 $d6
    inc [hl]                                      ; $22a8: $34
    ret                                           ; $22a9: $c9


b00_Unknown_State_02::
    call $7918                                    ; $22aa: $cd $18 $79
    call Call_000_3093                            ; $22ad: $cd $93 $30
    call Call_000_2b6e                            ; $22b0: $cd $6e $2b
    ret nz                                        ; $22b3: $c0

    xor a                                         ; $22b4: $af
    ld [$cda6], a                                 ; $22b5: $ea $a6 $cd
    ld [$cda5], a                                 ; $22b8: $ea $a5 $cd
    ld a, $39                                     ; $22bb: $3e $39
    ld [$cda2], a                                 ; $22bd: $ea $a2 $cd
    ld a, $0e                                     ; $22c0: $3e $0e
    ld [$cda3], a                                 ; $22c2: $ea $a3 $cd
    ld a, $e1                                     ; $22c5: $3e $e1
    ld [$cda7], a                                 ; $22c7: $ea $a7 $cd

Jump_000_22ca:
    ld a, $22                                     ; $22ca: $3e $22
    ld [$cda8], a                                 ; $22cc: $ea $a8 $cd
    ld a, $00                                     ; $22cf: $3e $00
    ld [$cda9], a                                 ; $22d1: $ea $a9 $cd
    ld a, $78                                     ; $22d4: $3e $78
    ld [$d63c], a                                 ; $22d6: $ea $3c $d6
    call Call_000_323e                            ; $22d9: $cd $3e $32
    ld hl, Unknown_State                          ; $22dc: $21 $35 $d6
    inc [hl]                                      ; $22df: $34
    ret                                           ; $22e0: $c9


    ld [$0000], sp                                ; $22e1: $08 $00 $00
    inc [hl]                                      ; $22e4: $34
    ld [$0000], sp                                ; $22e5: $08 $00 $00
    dec [hl]                                      ; $22e8: $35
    ld [$0000], sp                                ; $22e9: $08 $00 $00
    ld [hl], $08                                  ; $22ec: $36 $08
    nop                                           ; $22ee: $00
    nop                                           ; $22ef: $00
    dec [hl]                                      ; $22f0: $35
    nop                                           ; $22f1: $00

b00_Unknown_State_03::
    call $7918                                    ; $22f2: $cd $18 $79
    ld a, $00                                     ; $22f5: $3e $00
    call Call_000_19bd                            ; $22f7: $cd $bd $19
    call Call_000_3012                            ; $22fa: $cd $12 $30
    ret nz                                        ; $22fd: $c0

    ld a, $04                                     ; $22fe: $3e $04
    ld [$d82d], a                                 ; $2300: $ea $2d $d8
    ld a, $6b                                     ; $2303: $3e $6b
    ld [$d82e], a                                 ; $2305: $ea $2e $d8
    call Call_000_323e                            ; $2308: $cd $3e $32
    ld hl, Unknown_State                          ; $230b: $21 $35 $d6
    inc [hl]                                      ; $230e: $34
    ret                                           ; $230f: $c9


b00_Unknown_State_04::
    call $7918                                    ; $2310: $cd $18 $79
    call Call_000_3093                            ; $2313: $cd $93 $30
    call Call_000_2b6e                            ; $2316: $cd $6e $2b
    ret nz                                        ; $2319: $c0

    xor a                                         ; $231a: $af
    ld [$cda6], a                                 ; $231b: $ea $a6 $cd
    ld [$cda5], a                                 ; $231e: $ea $a5 $cd
    ld a, $16                                     ; $2321: $3e $16
    ld [$cda2], a                                 ; $2323: $ea $a2 $cd
    ld a, $31                                     ; $2326: $3e $31
    ld [$cda3], a                                 ; $2328: $ea $a3 $cd
    ld a, $47                                     ; $232b: $3e $47
    ld [$cda7], a                                 ; $232d: $ea $a7 $cd
    ld a, $23                                     ; $2330: $3e $23
    ld [$cda8], a                                 ; $2332: $ea $a8 $cd
    ld a, $00                                     ; $2335: $3e $00
    ld [$cda9], a                                 ; $2337: $ea $a9 $cd
    ld a, $78                                     ; $233a: $3e $78
    ld [$d63c], a                                 ; $233c: $ea $3c $d6
    call Call_000_323e                            ; $233f: $cd $3e $32
    ld hl, Unknown_State                          ; $2342: $21 $35 $d6
    inc [hl]                                      ; $2345: $34
    ret                                           ; $2346: $c9


    ld [$0000], sp                                ; $2347: $08 $00 $00
    inc [hl]                                      ; $234a: $34
    ld [$0000], sp                                ; $234b: $08 $00 $00
    dec [hl]                                      ; $234e: $35
    ld [$0000], sp                                ; $234f: $08 $00 $00
    ld [hl], $08                                  ; $2352: $36 $08
    nop                                           ; $2354: $00
    nop                                           ; $2355: $00
    dec [hl]                                      ; $2356: $35
    nop                                           ; $2357: $00

b00_Unknown_State_05::
    call $7918                                    ; $2358: $cd $18 $79
    ld a, $00                                     ; $235b: $3e $00
    call Call_000_19bd                            ; $235d: $cd $bd $19
    call Call_000_3012                            ; $2360: $cd $12 $30
    ret nz                                        ; $2363: $c0

    ld a, $2a                                     ; $2364: $3e $2a
    ld [$d82d], a                                 ; $2366: $ea $2d $d8
    ld a, $6b                                     ; $2369: $3e $6b
    ld [$d82e], a                                 ; $236b: $ea $2e $d8
    call Call_000_323e                            ; $236e: $cd $3e $32
    ld hl, Unknown_State                          ; $2371: $21 $35 $d6
    inc [hl]                                      ; $2374: $34
    ret                                           ; $2375: $c9


b00_Unknown_State_06::
    call $7918                                    ; $2376: $cd $18 $79
    call Call_000_3093                            ; $2379: $cd $93 $30
    call Call_000_2b6e                            ; $237c: $cd $6e $2b
    ret nz                                        ; $237f: $c0

    ld hl, $03ed                                  ; $2380: $21 $ed $03
    call $2fb6                                    ; $2383: $cd $b6 $2f
    call Call_000_05b6                            ; $2386: $cd $b6 $05
    call Call_000_302e                            ; $2389: $cd $2e $30
    ld a, $4a                                     ; $238c: $3e $4a
    ld [$d82d], a                                 ; $238e: $ea $2d $d8
    ld a, $6b                                     ; $2391: $3e $6b
    ld [$d82e], a                                 ; $2393: $ea $2e $d8
    call Call_000_323e                            ; $2396: $cd $3e $32
    ld hl, Unknown_State                          ; $2399: $21 $35 $d6
    inc [hl]                                      ; $239c: $34
    ret                                           ; $239d: $c9


b00_Unknown_State_07::
    call $7918                                    ; $239e: $cd $18 $79
    call Call_000_3093                            ; $23a1: $cd $93 $30
    call Call_000_2b6e                            ; $23a4: $cd $6e $2b
    ret nz                                        ; $23a7: $c0

    ld hl, $03ed                                  ; $23a8: $21 $ed $03
    call $2fb6                                    ; $23ab: $cd $b6 $2f
    call Call_000_05b6                            ; $23ae: $cd $b6 $05
    call Call_000_302e                            ; $23b1: $cd $2e $30
    ld a, $bc                                     ; $23b4: $3e $bc
    ld [$d82d], a                                 ; $23b6: $ea $2d $d8
    ld a, $6b                                     ; $23b9: $3e $6b
    ld [$d82e], a                                 ; $23bb: $ea $2e $d8
    call Call_000_323e                            ; $23be: $cd $3e $32
    ld hl, Unknown_State                          ; $23c1: $21 $35 $d6
    inc [hl]                                      ; $23c4: $34
    ret                                           ; $23c5: $c9


b00_Unknown_State_08::
    call $7918                                    ; $23c6: $cd $18 $79
    call Call_000_3093                            ; $23c9: $cd $93 $30
    call Call_000_2b6e                            ; $23cc: $cd $6e $2b
    ret nz                                        ; $23cf: $c0

    xor a                                         ; $23d0: $af
    ld [$d636], a                                 ; $23d1: $ea $36 $d6
    ld [$d637], a                                 ; $23d4: $ea $37 $d6
    xor a                                         ; $23d7: $af
    ld [$d82f], a                                 ; $23d8: $ea $2f $d8
    ld [$d830], a                                 ; $23db: $ea $30 $d8
    ld a, $f0                                     ; $23de: $3e $f0
    ld [$d831], a                                 ; $23e0: $ea $31 $d8
    ld a, $23                                     ; $23e3: $3e $23
    ld [$d832], a                                 ; $23e5: $ea $32 $d8
    call Call_000_323e                            ; $23e8: $cd $3e $32
    ld hl, Unknown_State                          ; $23eb: $21 $35 $d6
    inc [hl]                                      ; $23ee: $34
    ret                                           ; $23ef: $c9


    nop                                           ; $23f0: $00
    nop                                           ; $23f1: $00
    ld bc, $0180                                  ; $23f2: $01 $80 $01
    add b                                         ; $23f5: $80
    ld bc, $0180                                  ; $23f6: $01 $80 $01
    add b                                         ; $23f9: $80
    ld bc, $0000                                  ; $23fa: $01 $00 $00
    ld b, b                                       ; $23fd: $40
    ld b, b                                       ; $23fe: $40
    ld b, b                                       ; $23ff: $40
    ld b, b                                       ; $2400: $40
    stop                                          ; $2401: $10 $00
    nop                                           ; $2403: $00
    ld bc, $0180                                  ; $2404: $01 $80 $01
    add b                                         ; $2407: $80
    ld bc, $0180                                  ; $2408: $01 $80 $01
    add b                                         ; $240b: $80
    ld bc, $0000                                  ; $240c: $01 $00 $00
    ld b, b                                       ; $240f: $40
    ld b, b                                       ; $2410: $40
    ld b, b                                       ; $2411: $40
    ld b, b                                       ; $2412: $40
    db $10                                        ; $2413: $10

Call_000_2414:
    db $10                                        ; $2414: $10
    stop                                          ; $2415: $10 $00
    nop                                           ; $2417: $00
    ld bc, $0180                                  ; $2418: $01 $80 $01
    add b                                         ; $241b: $80
    ld bc, $0180                                  ; $241c: $01 $80 $01
    add b                                         ; $241f: $80
    ld bc, $0000                                  ; $2420: $01 $00 $00
    ld b, b                                       ; $2423: $40
    ld b, b                                       ; $2424: $40
    ld b, b                                       ; $2425: $40
    ld b, b                                       ; $2426: $40
    jr nz, @+$22                                  ; $2427: $20 $20

    nop                                           ; $2429: $00
    nop                                           ; $242a: $00
    ld [bc], a                                    ; $242b: $02
    db $10                                        ; $242c: $10
    ld [bc], a                                    ; $242d: $02
    nop                                           ; $242e: $00
    nop                                           ; $242f: $00
    jr nz, @-$7e                                  ; $2430: $20 $80

    add b                                         ; $2432: $80
    add b                                         ; $2433: $80
    add b                                         ; $2434: $80
    nop                                           ; $2435: $00
    nop                                           ; $2436: $00
    ld [bc], a                                    ; $2437: $02
    db $10                                        ; $2438: $10
    ld [bc], a                                    ; $2439: $02
    nop                                           ; $243a: $00
    nop                                           ; $243b: $00
    jr nz, jr_000_245e                            ; $243c: $20 $20

    jr nz, @+$42                                  ; $243e: $20 $40

    ld b, b                                       ; $2440: $40
    nop                                           ; $2441: $00
    nop                                           ; $2442: $00
    db $10                                        ; $2443: $10
    db $10                                        ; $2444: $10
    ld bc, $0110                                  ; $2445: $01 $10 $01
    stop                                          ; $2448: $10 $00
    nop                                           ; $244a: $00
    jr nz, b00_Unknown_State_09                   ; $244b: $20 $20

    jr nz, @+$22                                  ; $244d: $20 $20

    ld b, b                                       ; $244f: $40
    nop                                           ; $2450: $00
    nop                                           ; $2451: $00
    db $10                                        ; $2452: $10
    db $10                                        ; $2453: $10

Call_000_2454:
    ld bc, $0210                                  ; $2454: $01 $10 $02
    stop                                          ; $2457: $10 $00
    nop                                           ; $2459: $00
    jr nz, @+$22                                  ; $245a: $20 $20

    jr nz, jr_000_247e                            ; $245c: $20 $20

jr_000_245e:
    add b                                         ; $245e: $80
    add b                                         ; $245f: $80
    nop                                           ; $2460: $00
    nop                                           ; $2461: $00
    db $10                                        ; $2462: $10
    db $10                                        ; $2463: $10
    ld [bc], a                                    ; $2464: $02
    db $10                                        ; $2465: $10
    ld bc, $0010                                  ; $2466: $01 $10 $00
    nop                                           ; $2469: $00
    nop                                           ; $246a: $00
    nop                                           ; $246b: $00
    rst $38                                       ; $246c: $ff

b00_Unknown_State_09::
    call Call_000_30d6                            ; $246d: $cd $d6 $30
    jr nz, jr_000_247f                            ; $2470: $20 $0d

    ld a, $0a                                     ; $2472: $3e $0a
    ld [$d63c], a                                 ; $2474: $ea $3c $d6
    call Call_000_323e                            ; $2477: $cd $3e $32
    ld hl, Unknown_State                          ; $247a: $21 $35 $d6
    inc [hl]                                      ; $247d: $34

jr_000_247e:
    ret                                           ; $247e: $c9


jr_000_247f:
    call $71ca                                    ; $247f: $cd $ca $71
    call $713e                                    ; $2482: $cd $3e $71
    call $7918                                    ; $2485: $cd $18 $79
    call Call_000_3012                            ; $2488: $cd $12 $30
    call $7222                                    ; $248b: $cd $22 $72
    call $7516                                    ; $248e: $cd $16 $75
    ret                                           ; $2491: $c9


b00_Unknown_State_0a::
    call Call_000_3012                            ; $2492: $cd $12 $30
    ret nz                                        ; $2495: $c0

    call $7635                                    ; $2496: $cd $35 $76
    ld a, $02                                     ; $2499: $3e $02
    ld [$d82d], a                                 ; $249b: $ea $2d $d8
    ld a, $6c                                     ; $249e: $3e $6c
    ld [$d82e], a                                 ; $24a0: $ea $2e $d8
    call Call_000_323e                            ; $24a3: $cd $3e $32
    ld hl, Unknown_State                          ; $24a6: $21 $35 $d6
    inc [hl]                                      ; $24a9: $34
    ret                                           ; $24aa: $c9


b00_Unknown_State_0b::
    call $7918                                    ; $24ab: $cd $18 $79
    call Call_000_3093                            ; $24ae: $cd $93 $30
    call Call_000_2b6e                            ; $24b1: $cd $6e $2b
    ret nz                                        ; $24b4: $c0

    ld hl, $03ed                                  ; $24b5: $21 $ed $03
    call $2fb6                                    ; $24b8: $cd $b6 $2f
    call Call_000_05b6                            ; $24bb: $cd $b6 $05
    call Call_000_302e                            ; $24be: $cd $2e $30
    ld a, $76                                     ; $24c1: $3e $76
    ld [$d82d], a                                 ; $24c3: $ea $2d $d8
    ld a, $6c                                     ; $24c6: $3e $6c
    ld [$d82e], a                                 ; $24c8: $ea $2e $d8
    call Call_000_323e                            ; $24cb: $cd $3e $32
    ld hl, Unknown_State                          ; $24ce: $21 $35 $d6
    inc [hl]                                      ; $24d1: $34
    ret                                           ; $24d2: $c9


b00_Unknown_State_0c::
    call $7918                                    ; $24d3: $cd $18 $79
    call Call_000_3093                            ; $24d6: $cd $93 $30
    call Call_000_2b6e                            ; $24d9: $cd $6e $2b
    ret nz                                        ; $24dc: $c0

    ld hl, $03ed                                  ; $24dd: $21 $ed $03
    call $2fb6                                    ; $24e0: $cd $b6 $2f
    call Call_000_05b6                            ; $24e3: $cd $b6 $05
    call Call_000_302e                            ; $24e6: $cd $2e $30
    call Call_000_3114                            ; $24e9: $cd $14 $31
    call Call_000_07f1                            ; $24ec: $cd $f1 $07
    ld a, $d0                                     ; $24ef: $3e $d0
    ld [$d82d], a                                 ; $24f1: $ea $2d $d8
    ld a, $6c                                     ; $24f4: $3e $6c
    ld [$d82e], a                                 ; $24f6: $ea $2e $d8
    call Call_000_323e                            ; $24f9: $cd $3e $32
    ld hl, Unknown_State                          ; $24fc: $21 $35 $d6
    inc [hl]                                      ; $24ff: $34
    ret                                           ; $2500: $c9


b00_Unknown_State_0d::
    call $7918                                    ; $2501: $cd $18 $79
    call Call_000_3093                            ; $2504: $cd $93 $30
    call Call_000_2b6e                            ; $2507: $cd $6e $2b
    ret nz                                        ; $250a: $c0

    xor a                                         ; $250b: $af
    ld [$cda6], a                                 ; $250c: $ea $a6 $cd
    ld [$cda5], a                                 ; $250f: $ea $a5 $cd
    ld a, $39                                     ; $2512: $3e $39
    ld [$cda2], a                                 ; $2514: $ea $a2 $cd
    ld a, $0e                                     ; $2517: $3e $0e
    ld [$cda3], a                                 ; $2519: $ea $a3 $cd
    ld a, $38                                     ; $251c: $3e $38
    ld [$cda7], a                                 ; $251e: $ea $a7 $cd
    ld a, $25                                     ; $2521: $3e $25
    ld [$cda8], a                                 ; $2523: $ea $a8 $cd
    ld a, $00                                     ; $2526: $3e $00
    ld [$cda9], a                                 ; $2528: $ea $a9 $cd
    ld a, $78                                     ; $252b: $3e $78
    ld [$d63c], a                                 ; $252d: $ea $3c $d6
    call Call_000_323e                            ; $2530: $cd $3e $32
    ld hl, Unknown_State                          ; $2533: $21 $35 $d6
    inc [hl]                                      ; $2536: $34
    ret                                           ; $2537: $c9


    ld [$0000], sp                                ; $2538: $08 $00 $00
    inc [hl]                                      ; $253b: $34
    ld [$0000], sp                                ; $253c: $08 $00 $00
    dec [hl]                                      ; $253f: $35
    ld [$0000], sp                                ; $2540: $08 $00 $00
    ld [hl], $08                                  ; $2543: $36 $08
    nop                                           ; $2545: $00
    nop                                           ; $2546: $00
    dec [hl]                                      ; $2547: $35
    nop                                           ; $2548: $00

b00_Unknown_State_0e::
    call $7918                                    ; $2549: $cd $18 $79
    ld a, $00                                     ; $254c: $3e $00
    call Call_000_19bd                            ; $254e: $cd $bd $19
    call Call_000_3012                            ; $2551: $cd $12 $30
    ret nz                                        ; $2554: $c0

    ld a, $0c                                     ; $2555: $3e $0c
    ld [$d82d], a                                 ; $2557: $ea $2d $d8
    ld a, $6d                                     ; $255a: $3e $6d
    ld [$d82e], a                                 ; $255c: $ea $2e $d8
    call Call_000_323e                            ; $255f: $cd $3e $32
    ld hl, Unknown_State                          ; $2562: $21 $35 $d6
    inc [hl]                                      ; $2565: $34
    ret                                           ; $2566: $c9


b00_Unknown_State_0f::
    call $7918                                    ; $2567: $cd $18 $79
    call Call_000_3093                            ; $256a: $cd $93 $30
    call Call_000_2b6e                            ; $256d: $cd $6e $2b
    ret nz                                        ; $2570: $c0

    ld hl, $03ed                                  ; $2571: $21 $ed $03
    call $2fb6                                    ; $2574: $cd $b6 $2f
    call Call_000_05b6                            ; $2577: $cd $b6 $05
    call Call_000_302e                            ; $257a: $cd $2e $30
    ld a, $9a                                     ; $257d: $3e $9a
    ld [$d82d], a                                 ; $257f: $ea $2d $d8
    ld a, $6d                                     ; $2582: $3e $6d
    ld [$d82e], a                                 ; $2584: $ea $2e $d8
    call Call_000_323e                            ; $2587: $cd $3e $32
    ld hl, Unknown_State                          ; $258a: $21 $35 $d6
    inc [hl]                                      ; $258d: $34
    ret                                           ; $258e: $c9


b00_Unknown_State_10::
    call $7918                                    ; $258f: $cd $18 $79
    call Call_000_3093                            ; $2592: $cd $93 $30
    call Call_000_2b6e                            ; $2595: $cd $6e $2b
    ret nz                                        ; $2598: $c0

    xor a                                         ; $2599: $af
    ld [$cda6], a                                 ; $259a: $ea $a6 $cd
    ld [$cda5], a                                 ; $259d: $ea $a5 $cd
    ld a, $39                                     ; $25a0: $3e $39
    ld [$cda2], a                                 ; $25a2: $ea $a2 $cd
    ld a, $0e                                     ; $25a5: $3e $0e
    ld [$cda3], a                                 ; $25a7: $ea $a3 $cd
    ld a, $c6                                     ; $25aa: $3e $c6
    ld [$cda7], a                                 ; $25ac: $ea $a7 $cd
    ld a, $25                                     ; $25af: $3e $25
    ld [$cda8], a                                 ; $25b1: $ea $a8 $cd
    ld a, $00                                     ; $25b4: $3e $00
    ld [$cda9], a                                 ; $25b6: $ea $a9 $cd
    ld a, $78                                     ; $25b9: $3e $78
    ld [$d63c], a                                 ; $25bb: $ea $3c $d6
    call Call_000_323e                            ; $25be: $cd $3e $32
    ld hl, Unknown_State                          ; $25c1: $21 $35 $d6
    inc [hl]                                      ; $25c4: $34
    ret                                           ; $25c5: $c9


    ld [$0000], sp                                ; $25c6: $08 $00 $00
    ld l, $08                                     ; $25c9: $2e $08
    nop                                           ; $25cb: $00
    nop                                           ; $25cc: $00
    cpl                                           ; $25cd: $2f
    ld [$0000], sp                                ; $25ce: $08 $00 $00
    jr nc, @+$0a                                  ; $25d1: $30 $08

    nop                                           ; $25d3: $00
    nop                                           ; $25d4: $00
    cpl                                           ; $25d5: $2f
    nop                                           ; $25d6: $00

b00_Unknown_State_11::
    call $7918                                    ; $25d7: $cd $18 $79
    ld a, $00                                     ; $25da: $3e $00
    call Call_000_19bd                            ; $25dc: $cd $bd $19
    call Call_000_3012                            ; $25df: $cd $12 $30
    ret nz                                        ; $25e2: $c0

    ld a, $bc                                     ; $25e3: $3e $bc
    ld [$d82d], a                                 ; $25e5: $ea $2d $d8
    ld a, $6d                                     ; $25e8: $3e $6d
    ld [$d82e], a                                 ; $25ea: $ea $2e $d8
    call Call_000_323e                            ; $25ed: $cd $3e $32
    ld hl, Unknown_State                          ; $25f0: $21 $35 $d6
    inc [hl]                                      ; $25f3: $34
    ret                                           ; $25f4: $c9


b00_Unknown_State_12::
    call $7918                                    ; $25f5: $cd $18 $79
    call Call_000_3093                            ; $25f8: $cd $93 $30
    call Call_000_2b6e                            ; $25fb: $cd $6e $2b
    ret nz                                        ; $25fe: $c0

    xor a                                         ; $25ff: $af
    ld [$d636], a                                 ; $2600: $ea $36 $d6
    ld [$d637], a                                 ; $2603: $ea $37 $d6
    xor a                                         ; $2606: $af
    ld [$d82f], a                                 ; $2607: $ea $2f $d8
    ld [$d830], a                                 ; $260a: $ea $30 $d8
    ld a, $1f                                     ; $260d: $3e $1f
    ld [$d831], a                                 ; $260f: $ea $31 $d8
    ld a, $26                                     ; $2612: $3e $26
    ld [$d832], a                                 ; $2614: $ea $32 $d8
    call Call_000_323e                            ; $2617: $cd $3e $32
    ld hl, Unknown_State                          ; $261a: $21 $35 $d6
    inc [hl]                                      ; $261d: $34
    ret                                           ; $261e: $c9


    nop                                           ; $261f: $00
    nop                                           ; $2620: $00
    ld bc, $0180                                  ; $2621: $01 $80 $01
    add b                                         ; $2624: $80
    ld bc, $0180                                  ; $2625: $01 $80 $01
    add b                                         ; $2628: $80
    ld bc, $0000                                  ; $2629: $01 $00 $00
    nop                                           ; $262c: $00
    nop                                           ; $262d: $00
    rst $38                                       ; $262e: $ff

b00_Unknown_State_13::
    call Call_000_30d6                            ; $262f: $cd $d6 $30
    jr nz, jr_000_2658                            ; $2632: $20 $24

    ld hl, $03ed                                  ; $2634: $21 $ed $03
    call $2fb6                                    ; $2637: $cd $b6 $2f
    call Call_000_05b6                            ; $263a: $cd $b6 $05
    call Call_000_302e                            ; $263d: $cd $2e $30
    call Call_000_3114                            ; $2640: $cd $14 $31
    call Call_000_07f1                            ; $2643: $cd $f1 $07
    ld a, $24                                     ; $2646: $3e $24
    ld [$d82d], a                                 ; $2648: $ea $2d $d8
    ld a, $6e                                     ; $264b: $3e $6e
    ld [$d82e], a                                 ; $264d: $ea $2e $d8
    call Call_000_323e                            ; $2650: $cd $3e $32
    ld hl, Unknown_State                          ; $2653: $21 $35 $d6
    inc [hl]                                      ; $2656: $34
    ret                                           ; $2657: $c9


jr_000_2658:
    call $71ca                                    ; $2658: $cd $ca $71
    call $713e                                    ; $265b: $cd $3e $71
    call $7918                                    ; $265e: $cd $18 $79
    call Call_000_3012                            ; $2661: $cd $12 $30
    call $7222                                    ; $2664: $cd $22 $72
    call $7516                                    ; $2667: $cd $16 $75
    ret                                           ; $266a: $c9


b00_Unknown_State_14::
    call $7918                                    ; $266b: $cd $18 $79
    call Call_000_3093                            ; $266e: $cd $93 $30
    call Call_000_2b6e                            ; $2671: $cd $6e $2b
    ret nz                                        ; $2674: $c0

    xor a                                         ; $2675: $af
    ld [$cda6], a                                 ; $2676: $ea $a6 $cd
    ld [$cda5], a                                 ; $2679: $ea $a5 $cd
    ld a, $16                                     ; $267c: $3e $16
    ld [$cda2], a                                 ; $267e: $ea $a2 $cd
    ld a, $31                                     ; $2681: $3e $31
    ld [$cda3], a                                 ; $2683: $ea $a3 $cd
    ld a, $a2                                     ; $2686: $3e $a2
    ld [$cda7], a                                 ; $2688: $ea $a7 $cd
    ld a, $26                                     ; $268b: $3e $26
    ld [$cda8], a                                 ; $268d: $ea $a8 $cd
    ld a, $00                                     ; $2690: $3e $00
    ld [$cda9], a                                 ; $2692: $ea $a9 $cd
    ld a, $78                                     ; $2695: $3e $78
    ld [$d63c], a                                 ; $2697: $ea $3c $d6
    call Call_000_323e                            ; $269a: $cd $3e $32
    ld hl, Unknown_State                          ; $269d: $21 $35 $d6
    inc [hl]                                      ; $26a0: $34
    ret                                           ; $26a1: $c9


    ld [$0000], sp                                ; $26a2: $08 $00 $00
    inc [hl]                                      ; $26a5: $34
    ld [$0000], sp                                ; $26a6: $08 $00 $00
    dec [hl]                                      ; $26a9: $35
    ld [$0000], sp                                ; $26aa: $08 $00 $00
    ld [hl], $08                                  ; $26ad: $36 $08
    nop                                           ; $26af: $00
    nop                                           ; $26b0: $00
    dec [hl]                                      ; $26b1: $35
    nop                                           ; $26b2: $00

b00_Unknown_State_15::
    call $7918                                    ; $26b3: $cd $18 $79
    ld a, $00                                     ; $26b6: $3e $00
    call Call_000_19bd                            ; $26b8: $cd $bd $19
    call Call_000_3012                            ; $26bb: $cd $12 $30
    ret nz                                        ; $26be: $c0

    ld a, $6c                                     ; $26bf: $3e $6c
    ld [$d82d], a                                 ; $26c1: $ea $2d $d8
    ld a, $6e                                     ; $26c4: $3e $6e
    ld [$d82e], a                                 ; $26c6: $ea $2e $d8
    call Call_000_323e                            ; $26c9: $cd $3e $32
    ld hl, Unknown_State                          ; $26cc: $21 $35 $d6
    inc [hl]                                      ; $26cf: $34
    ret                                           ; $26d0: $c9


b00_Unknown_State_16::
    call $7918                                    ; $26d1: $cd $18 $79
    call Call_000_3093                            ; $26d4: $cd $93 $30
    call Call_000_2b6e                            ; $26d7: $cd $6e $2b
    ret nz                                        ; $26da: $c0

    ld hl, $03ed                                  ; $26db: $21 $ed $03
    call $2fb6                                    ; $26de: $cd $b6 $2f
    call Call_000_05b6                            ; $26e1: $cd $b6 $05
    call Call_000_302e                            ; $26e4: $cd $2e $30
    ld a, $04                                     ; $26e7: $3e $04
    ld [$d82d], a                                 ; $26e9: $ea $2d $d8
    ld a, $6f                                     ; $26ec: $3e $6f
    ld [$d82e], a                                 ; $26ee: $ea $2e $d8
    call Call_000_323e                            ; $26f1: $cd $3e $32
    ld hl, Unknown_State                          ; $26f4: $21 $35 $d6
    inc [hl]                                      ; $26f7: $34
    ret                                           ; $26f8: $c9


b00_Unknown_State_17::
    call $7918                                    ; $26f9: $cd $18 $79
    call Call_000_3093                            ; $26fc: $cd $93 $30
    call Call_000_2b6e                            ; $26ff: $cd $6e $2b
    ret nz                                        ; $2702: $c0

    xor a                                         ; $2703: $af
    ld [$cda6], a                                 ; $2704: $ea $a6 $cd
    ld [$cda5], a                                 ; $2707: $ea $a5 $cd
    ld a, $16                                     ; $270a: $3e $16
    ld [$cda2], a                                 ; $270c: $ea $a2 $cd
    ld a, $37                                     ; $270f: $3e $37
    ld [$cda3], a                                 ; $2711: $ea $a3 $cd
    ld a, $30                                     ; $2714: $3e $30
    ld [$cda7], a                                 ; $2716: $ea $a7 $cd
    ld a, $27                                     ; $2719: $3e $27
    ld [$cda8], a                                 ; $271b: $ea $a8 $cd
    ld a, $00                                     ; $271e: $3e $00
    ld [$cda9], a                                 ; $2720: $ea $a9 $cd
    ld a, $78                                     ; $2723: $3e $78
    ld [$d63c], a                                 ; $2725: $ea $3c $d6
    call Call_000_323e                            ; $2728: $cd $3e $32
    ld hl, Unknown_State                          ; $272b: $21 $35 $d6
    inc [hl]                                      ; $272e: $34
    ret                                           ; $272f: $c9


    ld [$0000], sp                                ; $2730: $08 $00 $00
    ld sp, $0008                                  ; $2733: $31 $08 $00
    nop                                           ; $2736: $00
    ld [hl-], a                                   ; $2737: $32
    ld [$0000], sp                                ; $2738: $08 $00 $00
    inc sp                                        ; $273b: $33
    ld [$0000], sp                                ; $273c: $08 $00 $00
    ld [hl-], a                                   ; $273f: $32
    nop                                           ; $2740: $00

b00_Unknown_State_18::
    call $7918                                    ; $2741: $cd $18 $79
    ld a, $00                                     ; $2744: $3e $00
    call Call_000_19bd                            ; $2746: $cd $bd $19
    call Call_000_3012                            ; $2749: $cd $12 $30
    ret nz                                        ; $274c: $c0

    ld a, $36                                     ; $274d: $3e $36
    ld [$d82d], a                                 ; $274f: $ea $2d $d8
    ld a, $6f                                     ; $2752: $3e $6f
    ld [$d82e], a                                 ; $2754: $ea $2e $d8
    call Call_000_323e                            ; $2757: $cd $3e $32
    ld hl, Unknown_State                          ; $275a: $21 $35 $d6
    inc [hl]                                      ; $275d: $34
    ret                                           ; $275e: $c9


b00_Unknown_State_19::
    call $7918                                    ; $275f: $cd $18 $79
    call Call_000_3093                            ; $2762: $cd $93 $30
    call Call_000_2b6e                            ; $2765: $cd $6e $2b
    ret nz                                        ; $2768: $c0

    xor a                                         ; $2769: $af
    ld [$d636], a                                 ; $276a: $ea $36 $d6
    ld a, $01                                     ; $276d: $3e $01
    ld [$d637], a                                 ; $276f: $ea $37 $d6
    xor a                                         ; $2772: $af
    ld [$d82f], a                                 ; $2773: $ea $2f $d8
    ld [$d830], a                                 ; $2776: $ea $30 $d8
    ld a, $8b                                     ; $2779: $3e $8b
    ld [$d831], a                                 ; $277b: $ea $31 $d8
    ld a, $27                                     ; $277e: $3e $27
    ld [$d832], a                                 ; $2780: $ea $32 $d8
    call Call_000_323e                            ; $2783: $cd $3e $32
    ld hl, Unknown_State                          ; $2786: $21 $35 $d6
    inc [hl]                                      ; $2789: $34
    ret                                           ; $278a: $c9


    nop                                           ; $278b: $00
    nop                                           ; $278c: $00
    ld bc, $0110                                  ; $278d: $01 $10 $01
    db $10                                        ; $2790: $10
    ld bc, $0000                                  ; $2791: $01 $00 $00
    db $10                                        ; $2794: $10
    stop                                          ; $2795: $10 $00
    nop                                           ; $2797: $00
    ld bc, $0000                                  ; $2798: $01 $00 $00
    nop                                           ; $279b: $00
    nop                                           ; $279c: $00
    rst $38                                       ; $279d: $ff

b00_Unknown_State_1a::
    call Call_000_30d6                            ; $279e: $cd $d6 $30
    jr nz, jr_000_27c1                            ; $27a1: $20 $1e

    ld hl, $03ed                                  ; $27a3: $21 $ed $03
    call $2fb6                                    ; $27a6: $cd $b6 $2f
    call Call_000_05b6                            ; $27a9: $cd $b6 $05
    call Call_000_302e                            ; $27ac: $cd $2e $30
    ld a, $fe                                     ; $27af: $3e $fe
    ld [$d82d], a                                 ; $27b1: $ea $2d $d8
    ld a, $6f                                     ; $27b4: $3e $6f
    ld [$d82e], a                                 ; $27b6: $ea $2e $d8
    call Call_000_323e                            ; $27b9: $cd $3e $32
    ld hl, Unknown_State                          ; $27bc: $21 $35 $d6
    inc [hl]                                      ; $27bf: $34
    ret                                           ; $27c0: $c9


jr_000_27c1:
    call $71ca                                    ; $27c1: $cd $ca $71
    call $713e                                    ; $27c4: $cd $3e $71
    call $7918                                    ; $27c7: $cd $18 $79
    call Call_000_3012                            ; $27ca: $cd $12 $30
    call $7222                                    ; $27cd: $cd $22 $72
    call $7516                                    ; $27d0: $cd $16 $75
    ret                                           ; $27d3: $c9


b00_Unknown_State_1b::
    call $7918                                    ; $27d4: $cd $18 $79
    call Call_000_3093                            ; $27d7: $cd $93 $30
    call Call_000_2b6e                            ; $27da: $cd $6e $2b
    ret nz                                        ; $27dd: $c0

    call Call_000_323e                            ; $27de: $cd $3e $32
    ld hl, Unknown_State                          ; $27e1: $21 $35 $d6
    inc [hl]                                      ; $27e4: $34
    ret                                           ; $27e5: $c9


b00_Unknown_State_1c::
    call $7918                                    ; $27e6: $cd $18 $79
    call Call_000_3012                            ; $27e9: $cd $12 $30
    call Call_000_3160                            ; $27ec: $cd $60 $31
    call $7cc8                                    ; $27ef: $cd $c8 $7c
    ld a, [$d806]                                 ; $27f2: $fa $06 $d8
    cp $01                                        ; $27f5: $fe $01
    ret nz                                        ; $27f7: $c0

    ld a, $6a                                     ; $27f8: $3e $6a
    ld [$d82d], a                                 ; $27fa: $ea $2d $d8
    ld a, $70                                     ; $27fd: $3e $70
    ld [$d82e], a                                 ; $27ff: $ea $2e $d8
    call Call_000_323e                            ; $2802: $cd $3e $32
    ld hl, Unknown_State                          ; $2805: $21 $35 $d6
    inc [hl]                                      ; $2808: $34
    ret                                           ; $2809: $c9


b00_Unknown_State_1d::
    call $7918                                    ; $280a: $cd $18 $79
    call Call_000_3093                            ; $280d: $cd $93 $30
    call Call_000_2b6e                            ; $2810: $cd $6e $2b
    ret nz                                        ; $2813: $c0

    call $7ce3                                    ; $2814: $cd $e3 $7c
    ld hl, $03ed                                  ; $2817: $21 $ed $03
    call $2fb6                                    ; $281a: $cd $b6 $2f
    call Call_000_05b6                            ; $281d: $cd $b6 $05
    call Call_000_302e                            ; $2820: $cd $2e $30
    call Call_000_313a                            ; $2823: $cd $3a $31
    call $7beb                                    ; $2826: $cd $eb $7b
    ld a, $9c                                     ; $2829: $3e $9c
    ld [$d82d], a                                 ; $282b: $ea $2d $d8
    ld a, $70                                     ; $282e: $3e $70
    ld [$d82e], a                                 ; $2830: $ea $2e $d8
    call Call_000_323e                            ; $2833: $cd $3e $32
    ld hl, Unknown_State                          ; $2836: $21 $35 $d6
    inc [hl]                                      ; $2839: $34
    ret                                           ; $283a: $c9


b00_Unknown_State_1e::
    call $7918                                    ; $283b: $cd $18 $79
    call Call_000_3093                            ; $283e: $cd $93 $30
    call Call_000_2b6e                            ; $2841: $cd $6e $2b
    ret nz                                        ; $2844: $c0

    ld a, $03                                     ; $2845: $3e $03
    ld [$d636], a                                 ; $2847: $ea $36 $d6
    ld a, $01                                     ; $284a: $3e $01
    ld [$d637], a                                 ; $284c: $ea $37 $d6
    xor a                                         ; $284f: $af
    ld [$d82f], a                                 ; $2850: $ea $2f $d8
    ld [$d830], a                                 ; $2853: $ea $30 $d8
    ld a, $68                                     ; $2856: $3e $68
    ld [$d831], a                                 ; $2858: $ea $31 $d8
    ld a, $28                                     ; $285b: $3e $28
    ld [$d832], a                                 ; $285d: $ea $32 $d8
    call Call_000_323e                            ; $2860: $cd $3e $32
    ld hl, Unknown_State                          ; $2863: $21 $35 $d6
    inc [hl]                                      ; $2866: $34
    ret                                           ; $2867: $c9


    nop                                           ; $2868: $00
    nop                                           ; $2869: $00
    ld bc, $0000                                  ; $286a: $01 $00 $00
    nop                                           ; $286d: $00
    nop                                           ; $286e: $00
    rst $38                                       ; $286f: $ff

b00_Unknown_State_1f::
    call Call_000_30d6                            ; $2870: $cd $d6 $30
    jr nz, jr_000_2887                            ; $2873: $20 $12

    ld a, $1a                                     ; $2875: $3e $1a
    ld [$d82d], a                                 ; $2877: $ea $2d $d8
    ld a, $71                                     ; $287a: $3e $71
    ld [$d82e], a                                 ; $287c: $ea $2e $d8
    call Call_000_323e                            ; $287f: $cd $3e $32
    ld hl, Unknown_State                          ; $2882: $21 $35 $d6
    inc [hl]                                      ; $2885: $34
    ret                                           ; $2886: $c9


jr_000_2887:
    call $71ca                                    ; $2887: $cd $ca $71
    call $713e                                    ; $288a: $cd $3e $71
    call $7918                                    ; $288d: $cd $18 $79
    call Call_000_3012                            ; $2890: $cd $12 $30
    call $7222                                    ; $2893: $cd $22 $72
    call $7516                                    ; $2896: $cd $16 $75
    ret                                           ; $2899: $c9


b00_Unknown_State_20::
    call $7918                                    ; $289a: $cd $18 $79
    call Call_000_3093                            ; $289d: $cd $93 $30
    call Call_000_2b6e                            ; $28a0: $cd $6e $2b
    ret nz                                        ; $28a3: $c0

    ld hl, $03ed                                  ; $28a4: $21 $ed $03
    call $2fb6                                    ; $28a7: $cd $b6 $2f
    call Call_000_05b6                            ; $28aa: $cd $b6 $05
    call Call_000_302e                            ; $28ad: $cd $2e $30
    ld a, $48                                     ; $28b0: $3e $48
    ld [$d82d], a                                 ; $28b2: $ea $2d $d8
    ld a, $71                                     ; $28b5: $3e $71
    ld [$d82e], a                                 ; $28b7: $ea $2e $d8
    call Call_000_323e                            ; $28ba: $cd $3e $32
    ld hl, Unknown_State                          ; $28bd: $21 $35 $d6
    inc [hl]                                      ; $28c0: $34
    ret                                           ; $28c1: $c9


b00_Unknown_State_21::
    call $7918                                    ; $28c2: $cd $18 $79
    call Call_000_3093                            ; $28c5: $cd $93 $30
    call Call_000_2b6e                            ; $28c8: $cd $6e $2b
    ret nz                                        ; $28cb: $c0

    ld a, $03                                     ; $28cc: $3e $03
    ld [$d636], a                                 ; $28ce: $ea $36 $d6
    ld a, $01                                     ; $28d1: $3e $01
    ld [$d637], a                                 ; $28d3: $ea $37 $d6
    xor a                                         ; $28d6: $af
    ld [$d82f], a                                 ; $28d7: $ea $2f $d8
    ld [$d830], a                                 ; $28da: $ea $30 $d8
    ld a, $ef                                     ; $28dd: $3e $ef
    ld [$d831], a                                 ; $28df: $ea $31 $d8
    ld a, $28                                     ; $28e2: $3e $28
    ld [$d832], a                                 ; $28e4: $ea $32 $d8
    call Call_000_323e                            ; $28e7: $cd $3e $32
    ld hl, Unknown_State                          ; $28ea: $21 $35 $d6
    inc [hl]                                      ; $28ed: $34
    ret                                           ; $28ee: $c9


    nop                                           ; $28ef: $00
    nop                                           ; $28f0: $00
    ld [bc], a                                    ; $28f1: $02
    nop                                           ; $28f2: $00
    nop                                           ; $28f3: $00
    nop                                           ; $28f4: $00
    nop                                           ; $28f5: $00
    rst $38                                       ; $28f6: $ff

b00_Unknown_State_22::
    call Call_000_30d6                            ; $28f7: $cd $d6 $30
    jr nz, jr_000_2923                            ; $28fa: $20 $27

    ld hl, $03ed                                  ; $28fc: $21 $ed $03
    call $2fb6                                    ; $28ff: $cd $b6 $2f
    call Call_000_05b6                            ; $2902: $cd $b6 $05
    call Call_000_302e                            ; $2905: $cd $2e $30
    call Call_000_3114                            ; $2908: $cd $14 $31
    call Call_000_07f1                            ; $290b: $cd $f1 $07
    call $7beb                                    ; $290e: $cd $eb $7b
    ld a, $ca                                     ; $2911: $3e $ca
    ld [$d82d], a                                 ; $2913: $ea $2d $d8
    ld a, $71                                     ; $2916: $3e $71
    ld [$d82e], a                                 ; $2918: $ea $2e $d8
    call Call_000_323e                            ; $291b: $cd $3e $32
    ld hl, Unknown_State                          ; $291e: $21 $35 $d6
    inc [hl]                                      ; $2921: $34
    ret                                           ; $2922: $c9


jr_000_2923:
    call $71ca                                    ; $2923: $cd $ca $71
    call $713e                                    ; $2926: $cd $3e $71
    call $7918                                    ; $2929: $cd $18 $79
    call Call_000_3012                            ; $292c: $cd $12 $30
    call $7222                                    ; $292f: $cd $22 $72
    call $7516                                    ; $2932: $cd $16 $75
    ret                                           ; $2935: $c9


b00_Unknown_State_23::
    call $7918                                    ; $2936: $cd $18 $79
    call Call_000_3093                            ; $2939: $cd $93 $30
    call Call_000_2b6e                            ; $293c: $cd $6e $2b
    ret nz                                        ; $293f: $c0

    ld a, $01                                     ; $2940: $3e $01
    ld [$d833], a                                 ; $2942: $ea $33 $d8
    ld a, $06                                     ; $2945: $3e $06
    ld hl, $7800                                  ; $2947: $21 $00 $78
    ld de, $8500                                  ; $294a: $11 $00 $85
    ld bc, $0200                                  ; $294d: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $2950: $cd $38 $05
    xor a                                         ; $2953: $af
    ld [$d82f], a                                 ; $2954: $ea $2f $d8
    ld [$d830], a                                 ; $2957: $ea $30 $d8
    ld a, $6c                                     ; $295a: $3e $6c
    ld [$d831], a                                 ; $295c: $ea $31 $d8
    ld a, $29                                     ; $295f: $3e $29
    ld [$d832], a                                 ; $2961: $ea $32 $d8
    call Call_000_323e                            ; $2964: $cd $3e $32
    ld hl, Unknown_State                          ; $2967: $21 $35 $d6
    inc [hl]                                      ; $296a: $34
    ret                                           ; $296b: $c9


    nop                                           ; $296c: $00
    nop                                           ; $296d: $00
    jr nz, jr_000_2970                            ; $296e: $20 $00

jr_000_2970:
    nop                                           ; $2970: $00
    rst $38                                       ; $2971: $ff

b00_Unknown_State_24::
    call Call_000_29c0                            ; $2972: $cd $c0 $29
    call Call_000_30d6                            ; $2975: $cd $d6 $30
    jr nz, jr_000_29a7                            ; $2978: $20 $2d

    ld hl, $29c0                                  ; $297a: $21 $c0 $29
    call $2fb6                                    ; $297d: $cd $b6 $2f
    call Call_000_05b6                            ; $2980: $cd $b6 $05
    call Call_000_302e                            ; $2983: $cd $2e $30
    ld a, $88                                     ; $2986: $3e $88
    ld [$d82d], a                                 ; $2988: $ea $2d $d8
    ld a, $72                                     ; $298b: $3e $72
    ld [$d82e], a                                 ; $298d: $ea $2e $d8
    call Call_000_323e                            ; $2990: $cd $3e $32
    ld hl, Unknown_State                          ; $2993: $21 $35 $d6
    inc [hl]                                      ; $2996: $34
    rst RST_08                                    ; $2997: $cf
    ld a, $07                                     ; $2998: $3e $07
    ld hl, $4500                                  ; $299a: $21 $00 $45
    ld de, $8500                                  ; $299d: $11 $00 $85
    ld bc, $0200                                  ; $29a0: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $29a3: $cd $38 $05
    ret                                           ; $29a6: $c9


jr_000_29a7:
    call $7918                                    ; $29a7: $cd $18 $79
    ld a, [$c31e]                                 ; $29aa: $fa $1e $c3
    and $f0                                       ; $29ad: $e6 $f0
    ret z                                         ; $29af: $c8

    ld c, $0a                                     ; $29b0: $0e $0a
    ld a, $02                                     ; $29b2: $3e $02
    call Call_000_03b6                            ; $29b4: $cd $b6 $03
    ld a, [$d833]                                 ; $29b7: $fa $33 $d8
    xor $01                                       ; $29ba: $ee $01
    ld [$d833], a                                 ; $29bc: $ea $33 $d8
    ret                                           ; $29bf: $c9


Call_000_29c0:
    ld a, [$d833]                                 ; $29c0: $fa $33 $d8
    add $3a                                       ; $29c3: $c6 $3a
    ld bc, $2a36                                  ; $29c5: $01 $36 $2a
    call Call_000_20ce                            ; $29c8: $cd $ce $20
    ret                                           ; $29cb: $c9


b00_Unknown_State_25::
    call $7918                                    ; $29cc: $cd $18 $79
    call Call_000_3093                            ; $29cf: $cd $93 $30
    call Call_000_2b6e                            ; $29d2: $cd $6e $2b
    ret nz                                        ; $29d5: $c0

    ld hl, $03ed                                  ; $29d6: $21 $ed $03
    call $2fb6                                    ; $29d9: $cd $b6 $2f
    call Call_000_05b6                            ; $29dc: $cd $b6 $05
    call Call_000_302e                            ; $29df: $cd $2e $30
    ld a, $24                                     ; $29e2: $3e $24
    ld [$d82d], a                                 ; $29e4: $ea $2d $d8
    ld a, $73                                     ; $29e7: $3e $73
    ld [$d82e], a                                 ; $29e9: $ea $2e $d8
    call Call_000_323e                            ; $29ec: $cd $3e $32
    ld hl, Unknown_State                          ; $29ef: $21 $35 $d6
    inc [hl]                                      ; $29f2: $34
    ret                                           ; $29f3: $c9


b00_Unknown_State_26::
    call Call_000_31ca                            ; $29f4: $cd $ca $31
    call $7918                                    ; $29f7: $cd $18 $79
    call Call_000_3093                            ; $29fa: $cd $93 $30
    call Call_000_2b6e                            ; $29fd: $cd $6e $2b
    ret nz                                        ; $2a00: $c0

    ld hl, $31ca                                  ; $2a01: $21 $ca $31
    call $2fb6                                    ; $2a04: $cd $b6 $2f
    ld a, [$d812]                                 ; $2a07: $fa $12 $d8
    scf                                           ; $2a0a: $37
    rl a                                          ; $2a0b: $cb $17
    ld [$d812], a                                 ; $2a0d: $ea $12 $d8

jr_000_2a10:
    call Call_000_3012                            ; $2a10: $cd $12 $30
    call Call_000_05c5                            ; $2a13: $cd $c5 $05
    rst RST_08                                    ; $2a16: $cf
    call Call_000_31ca                            ; $2a17: $cd $ca $31
    ld a, [$d812]                                 ; $2a1a: $fa $12 $d8
    cp $3f                                        ; $2a1d: $fe $3f
    jr c, jr_000_2a10                             ; $2a1f: $38 $ef

    ld a, $78                                     ; $2a21: $3e $78
    ld [$d82d], a                                 ; $2a23: $ea $2d $d8
    ld a, $73                                     ; $2a26: $3e $73
    ld [$d82e], a                                 ; $2a28: $ea $2e $d8
    call Call_000_323e                            ; $2a2b: $cd $3e $32
    ld hl, Unknown_State                          ; $2a2e: $21 $35 $d6
    inc [hl]                                      ; $2a31: $34
    ret                                           ; $2a32: $c9


b00_Unknown_State_27::
    call Call_000_31ca                            ; $2a33: $cd $ca $31
    call $7918                                    ; $2a36: $cd $18 $79
    call Call_000_3093                            ; $2a39: $cd $93 $30
    call Call_000_2b6e                            ; $2a3c: $cd $6e $2b
    ret nz                                        ; $2a3f: $c0

    ld hl, $31ca                                  ; $2a40: $21 $ca $31
    call $2fb6                                    ; $2a43: $cd $b6 $2f
    ld a, [$d813]                                 ; $2a46: $fa $13 $d8
    scf                                           ; $2a49: $37
    rl a                                          ; $2a4a: $cb $17
    ld [$d813], a                                 ; $2a4c: $ea $13 $d8

jr_000_2a4f:
    call Call_000_3012                            ; $2a4f: $cd $12 $30
    call Call_000_05c5                            ; $2a52: $cd $c5 $05
    rst RST_08                                    ; $2a55: $cf
    call Call_000_31ca                            ; $2a56: $cd $ca $31
    ld a, [$d813]                                 ; $2a59: $fa $13 $d8
    cp $3f                                        ; $2a5c: $fe $3f
    jr c, jr_000_2a4f                             ; $2a5e: $38 $ef

    call Call_000_05b6                            ; $2a60: $cd $b6 $05
    call Call_000_31ca                            ; $2a63: $cd $ca $31
    call Call_000_302e                            ; $2a66: $cd $2e $30
    ld a, $ca                                     ; $2a69: $3e $ca
    ld [$d82d], a                                 ; $2a6b: $ea $2d $d8
    ld a, $73                                     ; $2a6e: $3e $73
    ld [$d82e], a                                 ; $2a70: $ea $2e $d8
    call Call_000_323e                            ; $2a73: $cd $3e $32
    ld hl, Unknown_State                          ; $2a76: $21 $35 $d6
    inc [hl]                                      ; $2a79: $34
    ret                                           ; $2a7a: $c9


b00_Unknown_State_28::
    call Call_000_31ca                            ; $2a7b: $cd $ca $31
    call $7918                                    ; $2a7e: $cd $18 $79
    call Call_000_3093                            ; $2a81: $cd $93 $30
    call Call_000_2b6e                            ; $2a84: $cd $6e $2b
    ret nz                                        ; $2a87: $c0

    call $78a2                                    ; $2a88: $cd $a2 $78
    ld hl, $7185                                  ; $2a8b: $21 $85 $71
    call $2fb6                                    ; $2a8e: $cd $b6 $2f
    call Call_000_05b6                            ; $2a91: $cd $b6 $05
    call $7185                                    ; $2a94: $cd $85 $71
    call Call_000_302e                            ; $2a97: $cd $2e $30
    ld a, $34                                     ; $2a9a: $3e $34
    ld [$d82d], a                                 ; $2a9c: $ea $2d $d8
    ld a, $74                                     ; $2a9f: $3e $74
    ld [$d82e], a                                 ; $2aa1: $ea $2e $d8
    call Call_000_323e                            ; $2aa4: $cd $3e $32
    ld hl, Unknown_State                          ; $2aa7: $21 $35 $d6
    inc [hl]                                      ; $2aaa: $34
    ret                                           ; $2aab: $c9


b00_Unknown_State_29::
    call $7918                                    ; $2aac: $cd $18 $79
    call Call_000_3093                            ; $2aaf: $cd $93 $30
    call Call_000_2b6e                            ; $2ab2: $cd $6e $2b
    ret nz                                        ; $2ab5: $c0

    ld a, $01                                     ; $2ab6: $3e $01
    ld [$d835], a                                 ; $2ab8: $ea $35 $d8
    ld a, $ff                                     ; $2abb: $3e $ff
    ld [$d836], a                                 ; $2abd: $ea $36 $d8
    ld hl, $03ed                                  ; $2ac0: $21 $ed $03
    call Call_000_2fbb                            ; $2ac3: $cd $bb $2f
    ld a, [$c31a]                                 ; $2ac6: $fa $1a $c3
    push af                                       ; $2ac9: $f5
    call Call_000_05b6                            ; $2aca: $cd $b6 $05
    call Call_000_302e                            ; $2acd: $cd $2e $30
    call Call_000_3114                            ; $2ad0: $cd $14 $31
    call Call_000_07f1                            ; $2ad3: $cd $f1 $07
    pop af                                        ; $2ad6: $f1
    bit 0, a                                      ; $2ad7: $cb $47
    jr z, jr_000_2ae0                             ; $2ad9: $28 $05

    ld hl, Unknown_State                          ; $2adb: $21 $35 $d6
    inc [hl]                                      ; $2ade: $34
    ret                                           ; $2adf: $c9


jr_000_2ae0:
    xor a                                         ; $2ae0: $af
    ld [$d636], a                                 ; $2ae1: $ea $36 $d6
    ld [$d637], a                                 ; $2ae4: $ea $37 $d6
    ld [$d805], a                                 ; $2ae7: $ea $05 $d8
    ld [$d806], a                                 ; $2aea: $ea $06 $d8
    ld [$d80f], a                                 ; $2aed: $ea $0f $d8
    call Call_000_323e                            ; $2af0: $cd $3e $32
    ld a, $02                                     ; $2af3: $3e $02
    ld [$d811], a                                 ; $2af5: $ea $11 $d8
    ld a, $02                                     ; $2af8: $3e $02
    ld [$d812], a                                 ; $2afa: $ea $12 $d8
    ld [$d813], a                                 ; $2afd: $ea $13 $d8
    ld a, $05                                     ; $2b00: $3e $05
    ld [$d82a], a                                 ; $2b02: $ea $2a $d8
    ld a, [$d843]                                 ; $2b05: $fa $43 $d8
    ld [$d82b], a                                 ; $2b08: $ea $2b $d8
    ld a, [$d844]                                 ; $2b0b: $fa $44 $d8
    ld [$d82c], a                                 ; $2b0e: $ea $2c $d8
    ld a, $30                                     ; $2b11: $3e $30
    ld [$d82d], a                                 ; $2b13: $ea $2d $d8
    ld a, $6a                                     ; $2b16: $3e $6a
    ld [$d82e], a                                 ; $2b18: $ea $2e $d8
    call $7beb                                    ; $2b1b: $cd $eb $7b
    ld a, $01                                     ; $2b1e: $3e $01
    ld [Unknown_State], a                         ; $2b20: $ea $35 $d6
    ret                                           ; $2b23: $c9


b00_Unknown_State_2a::
    ld bc, $003c                                  ; $2b24: $01 $3c $00
    call Call_000_05fa                            ; $2b27: $cd $fa $05
    ld a, $05                                     ; $2b2a: $3e $05
    call Call_000_03b6                            ; $2b2c: $cd $b6 $03
    ld c, $00                                     ; $2b2f: $0e $00
    ld a, $01                                     ; $2b31: $3e $01
    call Call_000_03b6                            ; $2b33: $cd $b6 $03
    call Call_000_0399                            ; $2b36: $cd $99 $03
    ld c, $00                                     ; $2b39: $0e $00
    ld a, $01                                     ; $2b3b: $3e $01
    call Call_000_03b6                            ; $2b3d: $cd $b6 $03
    ld b, $03                                     ; $2b40: $06 $03
    ld hl, $46ab                                  ; $2b42: $21 $ab $46
    ld c, $01                                     ; $2b45: $0e $01
    ld de, $0023                                  ; $2b47: $11 $23 $00
    call Call_000_044e                            ; $2b4a: $cd $4e $04
    call Call_000_0483                            ; $2b4d: $cd $83 $04
    ld hl, $c337                                  ; $2b50: $21 $37 $c3
    res 6, [hl]                                   ; $2b53: $cb $b6
    ld hl, rIE                                    ; $2b55: $21 $ff $ff
    res 1, [hl]                                   ; $2b58: $cb $8e
    xor a                                         ; $2b5a: $af
    ld [$c338], a                                 ; $2b5b: $ea $38 $c3
    ld [$c33c], a                                 ; $2b5e: $ea $3c $c3
    ld [$c350], a                                 ; $2b61: $ea $50 $c3
    xor a                                         ; $2b64: $af
    ld [Unknown_State], a                         ; $2b65: $ea $35 $d6
    ld a, $02                                     ; $2b68: $3e $02
    ld [$d634], a                                 ; $2b6a: $ea $34 $d6
    ret                                           ; $2b6d: $c9


Call_000_2b6e:
    ld a, [ActiveROMBank]                         ; $2b6e: $fa $12 $c3
    push af                                       ; $2b71: $f5
    ld a, $05                                     ; $2b72: $3e $05
    ld [ActiveROMBank], a                         ; $2b74: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $2b77: $ea $00 $20
    call Call_000_2b88                            ; $2b7a: $cd $88 $2b
    pop bc                                        ; $2b7d: $c1
    push af                                       ; $2b7e: $f5
    ld a, b                                       ; $2b7f: $78
    ld [ActiveROMBank], a                         ; $2b80: $ea $12 $c3
    ld [BankSwitchTrigger], a                     ; $2b83: $ea $00 $20
    pop af                                        ; $2b86: $f1
    ret                                           ; $2b87: $c9


Call_000_2b88:
    ld a, [$d82d]                                 ; $2b88: $fa $2d $d8
    ld l, a                                       ; $2b8b: $6f
    ld a, [$d82e]                                 ; $2b8c: $fa $2e $d8
    ld h, a                                       ; $2b8f: $67
    ld a, [$d82b]                                 ; $2b90: $fa $2b $d8
    ld b, a                                       ; $2b93: $47
    ld a, [$d82c]                                 ; $2b94: $fa $2c $d8
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
    jr nz, jr_000_2bab                            ; $2ba4: $20 $05

    ld a, d                                       ; $2ba6: $7a
    cp $ff                                        ; $2ba7: $fe $ff
    jr z, jr_000_2bb7                             ; $2ba9: $28 $0c

jr_000_2bab:
    call Call_000_2bd3                            ; $2bab: $cd $d3 $2b
    ld hl, $d82b                                  ; $2bae: $21 $2b $d8
    add $01                                       ; $2bb1: $c6 $01
    add [hl]                                      ; $2bb3: $86
    ld [hl], a                                    ; $2bb4: $77
    jr jr_000_2bc5                                ; $2bb5: $18 $0e

jr_000_2bb7:
    ld a, [$d843]                                 ; $2bb7: $fa $43 $d8
    ld [$d82b], a                                 ; $2bba: $ea $2b $d8
    ld a, [$d82c]                                 ; $2bbd: $fa $2c $d8
    add $0a                                       ; $2bc0: $c6 $0a
    ld [$d82c], a                                 ; $2bc2: $ea $2c $d8

jr_000_2bc5:
    pop hl                                        ; $2bc5: $e1
    ld a, l                                       ; $2bc6: $7d
    ld [$d82d], a                                 ; $2bc7: $ea $2d $d8
    ld a, h                                       ; $2bca: $7c
    ld [$d82e], a                                 ; $2bcb: $ea $2e $d8
    ld a, [hl+]                                   ; $2bce: $2a
    and [hl]                                      ; $2bcf: $a6
    cp $ff                                        ; $2bd0: $fe $ff
    ret                                           ; $2bd2: $c9


Call_000_2bd3:
    push de                                       ; $2bd3: $d5
    sla e                                         ; $2bd4: $cb $23
    rl d                                          ; $2bd6: $cb $12
    ld hl, $2db6                                  ; $2bd8: $21 $b6 $2d
    add hl, de                                    ; $2bdb: $19
    ld e, [hl]                                    ; $2bdc: $5e
    inc hl                                        ; $2bdd: $23
    ld d, [hl]                                    ; $2bde: $56
    ld hl, $4000                                  ; $2bdf: $21 $00 $40
    add hl, de                                    ; $2be2: $19
    ld a, l                                       ; $2be3: $7d
    ld [$c355], a                                 ; $2be4: $ea $55 $c3
    ld a, h                                       ; $2be7: $7c
    ld [$c356], a                                 ; $2be8: $ea $56 $c3
    ld a, $0d                                     ; $2beb: $3e $0d
    ld [$c357], a                                 ; $2bed: $ea $57 $c3
    ld a, b                                       ; $2bf0: $78
    ld [$c351], a                                 ; $2bf1: $ea $51 $c3
    pop de                                        ; $2bf4: $d1
    ld hl, $2cb6                                  ; $2bf5: $21 $b6 $2c
    add hl, de                                    ; $2bf8: $19
    ld a, [hl]                                    ; $2bf9: $7e
    and a                                         ; $2bfa: $a7
    ret z                                         ; $2bfb: $c8

    push af                                       ; $2bfc: $f5
    add b                                         ; $2bfd: $80
    ld hl, $d845                                  ; $2bfe: $21 $45 $d8
    cp [hl]                                       ; $2c01: $be
    jr c, jr_000_2c06                             ; $2c02: $38 $02

    pop af                                        ; $2c04: $f1
    ret                                           ; $2c05: $c9


jr_000_2c06:
    ld [$c353], a                                 ; $2c06: $ea $53 $c3
    ld a, c                                       ; $2c09: $79
    ld [$c352], a                                 ; $2c0a: $ea $52 $c3
    add $08                                       ; $2c0d: $c6 $08
    ld hl, $d846                                  ; $2c0f: $21 $46 $d8
    cp [hl]                                       ; $2c12: $be
    jr c, jr_000_2c17                             ; $2c13: $38 $02

    pop af                                        ; $2c15: $f1
    ret                                           ; $2c16: $c9


jr_000_2c17:
    ld [$c354], a                                 ; $2c17: $ea $54 $c3
    call Call_000_08b3                            ; $2c1a: $cd $b3 $08
    pop af                                        ; $2c1d: $f1
    ret                                           ; $2c1e: $c9


Call_000_2c1f:
    ld a, [$d82d]                                 ; $2c1f: $fa $2d $d8
    ld l, a                                       ; $2c22: $6f
    ld a, [$d82e]                                 ; $2c23: $fa $2e $d8
    ld h, a                                       ; $2c26: $67
    ld a, [$d82b]                                 ; $2c27: $fa $2b $d8
    ld b, a                                       ; $2c2a: $47
    ld a, [$d82c]                                 ; $2c2b: $fa $2c $d8
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
    ld hl, $d82b                                  ; $2c45: $21 $2b $d8
    add $01                                       ; $2c48: $c6 $01
    add [hl]                                      ; $2c4a: $86
    ld [hl], a                                    ; $2c4b: $77
    jr jr_000_2c5c                                ; $2c4c: $18 $0e

jr_000_2c4e:
    ld a, [$d843]                                 ; $2c4e: $fa $43 $d8
    ld [$d82b], a                                 ; $2c51: $ea $2b $d8
    ld a, [$d82c]                                 ; $2c54: $fa $2c $d8
    add $0a                                       ; $2c57: $c6 $0a
    ld [$d82c], a                                 ; $2c59: $ea $2c $d8

jr_000_2c5c:
    pop hl                                        ; $2c5c: $e1
    ld a, l                                       ; $2c5d: $7d
    ld [$d82d], a                                 ; $2c5e: $ea $2d $d8
    ld a, h                                       ; $2c61: $7c
    ld [$d82e], a                                 ; $2c62: $ea $2e $d8
    ld a, [hl+]                                   ; $2c65: $2a
    and [hl]                                      ; $2c66: $a6
    cp $ff                                        ; $2c67: $fe $ff
    ret                                           ; $2c69: $c9


Call_000_2c6a:
    push de                                       ; $2c6a: $d5
    sla e                                         ; $2c6b: $cb $23
    rl d                                          ; $2c6d: $cb $12
    ld hl, $2db6                                  ; $2c6f: $21 $b6 $2d
    add hl, de                                    ; $2c72: $19
    ld e, [hl]                                    ; $2c73: $5e
    inc hl                                        ; $2c74: $23
    ld d, [hl]                                    ; $2c75: $56
    ld hl, $4000                                  ; $2c76: $21 $00 $40
    add hl, de                                    ; $2c79: $19
    ld a, l                                       ; $2c7a: $7d
    ld [$c355], a                                 ; $2c7b: $ea $55 $c3
    ld a, h                                       ; $2c7e: $7c
    ld [$c356], a                                 ; $2c7f: $ea $56 $c3
    ld a, $0d                                     ; $2c82: $3e $0d
    ld [$c357], a                                 ; $2c84: $ea $57 $c3
    ld a, b                                       ; $2c87: $78
    ld [$c351], a                                 ; $2c88: $ea $51 $c3
    pop de                                        ; $2c8b: $d1
    ld hl, $2cb6                                  ; $2c8c: $21 $b6 $2c
    add hl, de                                    ; $2c8f: $19
    ld a, [hl]                                    ; $2c90: $7e
    and a                                         ; $2c91: $a7
    ret z                                         ; $2c92: $c8

    push af                                       ; $2c93: $f5
    add b                                         ; $2c94: $80
    ld hl, $d845                                  ; $2c95: $21 $45 $d8
    cp [hl]                                       ; $2c98: $be
    jr c, jr_000_2c9d                             ; $2c99: $38 $02

    pop af                                        ; $2c9b: $f1
    ret                                           ; $2c9c: $c9


jr_000_2c9d:
    ld [$c353], a                                 ; $2c9d: $ea $53 $c3
    ld a, c                                       ; $2ca0: $79
    ld [$c352], a                                 ; $2ca1: $ea $52 $c3
    add $08                                       ; $2ca4: $c6 $08
    ld hl, $d846                                  ; $2ca6: $21 $46 $d8
    cp [hl]                                       ; $2ca9: $be
    jr c, jr_000_2cae                             ; $2caa: $38 $02

    pop af                                        ; $2cac: $f1
    ret                                           ; $2cad: $c9


jr_000_2cae:
    ld [$c354], a                                 ; $2cae: $ea $54 $c3
    call Call_000_0b0d                            ; $2cb1: $cd $0d $0b
    pop af                                        ; $2cb4: $f1
    ret                                           ; $2cb5: $c9


    rlca                                          ; $2cb6: $07
    rlca                                          ; $2cb7: $07
    ld b, $07                                     ; $2cb8: $06 $07
    rlca                                          ; $2cba: $07
    ld [$0407], sp                                ; $2cbb: $08 $07 $04
    rlca                                          ; $2cbe: $07
    rlca                                          ; $2cbf: $07
    rlca                                          ; $2cc0: $07
    ld b, $07                                     ; $2cc1: $06 $07
    rlca                                          ; $2cc3: $07
    rlca                                          ; $2cc4: $07
    rlca                                          ; $2cc5: $07
    rlca                                          ; $2cc6: $07
    rlca                                          ; $2cc7: $07
    rlca                                          ; $2cc8: $07
    rlca                                          ; $2cc9: $07
    rlca                                          ; $2cca: $07
    rlca                                          ; $2ccb: $07
    rlca                                          ; $2ccc: $07
    rlca                                          ; $2ccd: $07
    rlca                                          ; $2cce: $07
    rlca                                          ; $2ccf: $07
    rlca                                          ; $2cd0: $07
    rlca                                          ; $2cd1: $07
    rlca                                          ; $2cd2: $07
    rlca                                          ; $2cd3: $07
    ld b, $07                                     ; $2cd4: $06 $07
    rlca                                          ; $2cd6: $07
    rlca                                          ; $2cd7: $07
    rlca                                          ; $2cd8: $07
    rlca                                          ; $2cd9: $07
    rlca                                          ; $2cda: $07
    ld b, $06                                     ; $2cdb: $06 $06
    ld b, $07                                     ; $2cdd: $06 $07
    rlca                                          ; $2cdf: $07
    rlca                                          ; $2ce0: $07
    rlca                                          ; $2ce1: $07
    ld b, $07                                     ; $2ce2: $06 $07
    inc b                                         ; $2ce4: $04
    dec b                                         ; $2ce5: $05
    dec b                                         ; $2ce6: $05
    inc b                                         ; $2ce7: $04
    ld a, [bc]                                    ; $2ce8: $0a
    ld [$0a07], sp                                ; $2ce9: $08 $07 $0a
    add hl, bc                                    ; $2cec: $09
    add hl, bc                                    ; $2ced: $09
    rlca                                          ; $2cee: $07
    add hl, bc                                    ; $2cef: $09
    ld a, [bc]                                    ; $2cf0: $0a
    add hl, bc                                    ; $2cf1: $09
    add hl, bc                                    ; $2cf2: $09
    ld [$0909], sp                                ; $2cf3: $08 $09 $09
    add hl, bc                                    ; $2cf6: $09
    ld a, [bc]                                    ; $2cf7: $0a
    add hl, bc                                    ; $2cf8: $09
    add hl, bc                                    ; $2cf9: $09
    rlca                                          ; $2cfa: $07
    ld a, [bc]                                    ; $2cfb: $0a
    add hl, bc                                    ; $2cfc: $09
    add hl, bc                                    ; $2cfd: $09
    add hl, bc                                    ; $2cfe: $09
    rlca                                          ; $2cff: $07
    ld a, [bc]                                    ; $2d00: $0a
    dec b                                         ; $2d01: $05
    dec b                                         ; $2d02: $05
    dec b                                         ; $2d03: $05
    dec b                                         ; $2d04: $05
    rlca                                          ; $2d05: $07
    rlca                                          ; $2d06: $07
    rlca                                          ; $2d07: $07
    rlca                                          ; $2d08: $07
    rlca                                          ; $2d09: $07
    rlca                                          ; $2d0a: $07
    rlca                                          ; $2d0b: $07
    ld b, $06                                     ; $2d0c: $06 $06
    rlca                                          ; $2d0e: $07
    rlca                                          ; $2d0f: $07
    rlca                                          ; $2d10: $07
    ld b, $07                                     ; $2d11: $06 $07
    rlca                                          ; $2d13: $07
    rlca                                          ; $2d14: $07
    ld b, $07                                     ; $2d15: $06 $07
    ld b, $07                                     ; $2d17: $06 $07
    dec b                                         ; $2d19: $05
    rlca                                          ; $2d1a: $07
    rlca                                          ; $2d1b: $07
    ld b, $07                                     ; $2d1c: $06 $07
    ld b, $07                                     ; $2d1e: $06 $07
    rlca                                          ; $2d20: $07
    rlca                                          ; $2d21: $07
    rlca                                          ; $2d22: $07
    rlca                                          ; $2d23: $07
    rlca                                          ; $2d24: $07
    ld b, $07                                     ; $2d25: $06 $07
    ld b, $07                                     ; $2d27: $06 $07
    rlca                                          ; $2d29: $07
    rlca                                          ; $2d2a: $07
    ld b, $07                                     ; $2d2b: $06 $07
    dec b                                         ; $2d2d: $05
    rlca                                          ; $2d2e: $07
    ld b, $07                                     ; $2d2f: $06 $07
    rlca                                          ; $2d31: $07
    ld b, $06                                     ; $2d32: $06 $06
    dec b                                         ; $2d34: $05
    dec b                                         ; $2d35: $05
    dec b                                         ; $2d36: $05
    inc b                                         ; $2d37: $04
    ld a, [bc]                                    ; $2d38: $0a
    ld [$0909], sp                                ; $2d39: $08 $09 $09
    add hl, bc                                    ; $2d3c: $09
    ld a, [bc]                                    ; $2d3d: $0a
    ld [$0a09], sp                                ; $2d3e: $08 $09 $0a
    dec bc                                        ; $2d41: $0b
    dec bc                                        ; $2d42: $0b
    ld a, [bc]                                    ; $2d43: $0a
    dec bc                                        ; $2d44: $0b
    ld a, [bc]                                    ; $2d45: $0a
    rlca                                          ; $2d46: $07
    add hl, bc                                    ; $2d47: $09
    add hl, bc                                    ; $2d48: $09
    add hl, bc                                    ; $2d49: $09
    ld [$0909], sp                                ; $2d4a: $08 $09 $09
    ld [$0709], sp                                ; $2d4d: $08 $09 $07
    add hl, bc                                    ; $2d50: $09
    dec b                                         ; $2d51: $05
    inc b                                         ; $2d52: $04
    dec b                                         ; $2d53: $05
    dec b                                         ; $2d54: $05
    dec b                                         ; $2d55: $05
    ld b, $04                                     ; $2d56: $06 $04
    ld b, $06                                     ; $2d58: $06 $06
    ld b, $06                                     ; $2d5a: $06 $06
    ld b, $06                                     ; $2d5c: $06 $06
    ld b, $06                                     ; $2d5e: $06 $06
    ld b, $06                                     ; $2d60: $06 $06
    ld b, $06                                     ; $2d62: $06 $06
    ld b, $06                                     ; $2d64: $06 $06
    ld b, $06                                     ; $2d66: $06 $06
    ld b, $02                                     ; $2d68: $06 $02
    ld b, $06                                     ; $2d6a: $06 $06
    ld b, $06                                     ; $2d6c: $06 $06
    ld b, $06                                     ; $2d6e: $06 $06
    ld b, $07                                     ; $2d70: $06 $07
    ld b, $06                                     ; $2d72: $06 $06
    ld b, $06                                     ; $2d74: $06 $06
    ld b, $06                                     ; $2d76: $06 $06
    ld b, $06                                     ; $2d78: $06 $06
    ld b, $06                                     ; $2d7a: $06 $06
    dec b                                         ; $2d7c: $05
    dec b                                         ; $2d7d: $05
    dec b                                         ; $2d7e: $05
    dec b                                         ; $2d7f: $05
    dec b                                         ; $2d80: $05
    dec b                                         ; $2d81: $05
    dec b                                         ; $2d82: $05
    ld [bc], a                                    ; $2d83: $02
    dec b                                         ; $2d84: $05
    dec b                                         ; $2d85: $05
    inc bc                                        ; $2d86: $03
    ld b, $05                                     ; $2d87: $06 $05
    dec b                                         ; $2d89: $05
    dec b                                         ; $2d8a: $05
    dec b                                         ; $2d8b: $05
    dec b                                         ; $2d8c: $05
    dec b                                         ; $2d8d: $05
    dec b                                         ; $2d8e: $05
    dec b                                         ; $2d8f: $05
    dec b                                         ; $2d90: $05
    ld b, $05                                     ; $2d91: $06 $05
    dec b                                         ; $2d93: $05
    dec b                                         ; $2d94: $05
    ld [bc], a                                    ; $2d95: $02
    ld [bc], a                                    ; $2d96: $02
    inc bc                                        ; $2d97: $03
    dec b                                         ; $2d98: $05
    dec b                                         ; $2d99: $05
    ld b, $05                                     ; $2d9a: $06 $05
    dec b                                         ; $2d9c: $05
    ld [bc], a                                    ; $2d9d: $02
    ld b, $02                                     ; $2d9e: $06 $02
    ld [bc], a                                    ; $2da0: $02
    ld [bc], a                                    ; $2da1: $02
    ld [bc], a                                    ; $2da2: $02
    ld b, $03                                     ; $2da3: $06 $03
    inc bc                                        ; $2da5: $03
    inc b                                         ; $2da6: $04
    ld [bc], a                                    ; $2da7: $02
    nop                                           ; $2da8: $00
    nop                                           ; $2da9: $00
    nop                                           ; $2daa: $00
    nop                                           ; $2dab: $00
    nop                                           ; $2dac: $00
    nop                                           ; $2dad: $00
    nop                                           ; $2dae: $00
    nop                                           ; $2daf: $00
    nop                                           ; $2db0: $00
    nop                                           ; $2db1: $00
    nop                                           ; $2db2: $00
    nop                                           ; $2db3: $00
    nop                                           ; $2db4: $00
    nop                                           ; $2db5: $00
    nop                                           ; $2db6: $00
    nop                                           ; $2db7: $00
    jr nz, jr_000_2dba                            ; $2db8: $20 $00

jr_000_2dba:
    ld b, b                                       ; $2dba: $40
    nop                                           ; $2dbb: $00
    ld h, b                                       ; $2dbc: $60
    nop                                           ; $2dbd: $00
    add b                                         ; $2dbe: $80
    nop                                           ; $2dbf: $00
    and b                                         ; $2dc0: $a0
    nop                                           ; $2dc1: $00
    ret nz                                        ; $2dc2: $c0

    nop                                           ; $2dc3: $00
    ldh [rP1], a                                  ; $2dc4: $e0 $00
    inc b                                         ; $2dc6: $04
    ld bc, $0124                                  ; $2dc7: $01 $24 $01
    ld b, h                                       ; $2dca: $44
    ld bc, $0164                                  ; $2dcb: $01 $64 $01
    add h                                         ; $2dce: $84
    ld bc, $01a4                                  ; $2dcf: $01 $a4 $01
    call nz, $e401                                ; $2dd2: $c4 $01 $e4
    ld bc, $0208                                  ; $2dd5: $01 $08 $02
    jr z, jr_000_2ddc                             ; $2dd8: $28 $02

    ld c, b                                       ; $2dda: $48
    ld [bc], a                                    ; $2ddb: $02

jr_000_2ddc:
    ld l, b                                       ; $2ddc: $68
    ld [bc], a                                    ; $2ddd: $02
    adc b                                         ; $2dde: $88
    ld [bc], a                                    ; $2ddf: $02
    xor b                                         ; $2de0: $a8
    ld [bc], a                                    ; $2de1: $02
    ret z                                         ; $2de2: $c8

    ld [bc], a                                    ; $2de3: $02
    add sp, $02                                   ; $2de4: $e8 $02
    inc c                                         ; $2de6: $0c
    inc bc                                        ; $2de7: $03
    inc l                                         ; $2de8: $2c
    inc bc                                        ; $2de9: $03
    ld c, h                                       ; $2dea: $4c
    inc bc                                        ; $2deb: $03
    ld l, h                                       ; $2dec: $6c
    inc bc                                        ; $2ded: $03
    adc h                                         ; $2dee: $8c
    inc bc                                        ; $2def: $03
    xor h                                         ; $2df0: $ac
    inc bc                                        ; $2df1: $03
    call z, $ec03                                 ; $2df2: $cc $03 $ec
    inc bc                                        ; $2df5: $03
    nop                                           ; $2df6: $00
    dec b                                         ; $2df7: $05
    jr nz, jr_000_2dff                            ; $2df8: $20 $05

    ld b, b                                       ; $2dfa: $40
    dec b                                         ; $2dfb: $05
    ld h, b                                       ; $2dfc: $60
    dec b                                         ; $2dfd: $05
    add b                                         ; $2dfe: $80

jr_000_2dff:
    dec b                                         ; $2dff: $05
    and b                                         ; $2e00: $a0
    dec b                                         ; $2e01: $05
    ret nz                                        ; $2e02: $c0

    dec b                                         ; $2e03: $05
    ldh [rTIMA], a                                ; $2e04: $e0 $05
    inc b                                         ; $2e06: $04
    ld b, $24                                     ; $2e07: $06 $24
    ld b, $44                                     ; $2e09: $06 $44
    ld b, $64                                     ; $2e0b: $06 $64
    ld b, $84                                     ; $2e0d: $06 $84
    ld b, $a4                                     ; $2e0f: $06 $a4
    ld b, $c4                                     ; $2e11: $06 $c4
    ld b, $e4                                     ; $2e13: $06 $e4
    ld b, $08                                     ; $2e15: $06 $08
    rlca                                          ; $2e17: $07
    jr z, jr_000_2e21                             ; $2e18: $28 $07

    ld c, b                                       ; $2e1a: $48
    rlca                                          ; $2e1b: $07
    ld l, b                                       ; $2e1c: $68
    rlca                                          ; $2e1d: $07
    adc b                                         ; $2e1e: $88
    rlca                                          ; $2e1f: $07
    xor b                                         ; $2e20: $a8

jr_000_2e21:
    rlca                                          ; $2e21: $07
    ret z                                         ; $2e22: $c8

    rlca                                          ; $2e23: $07
    add sp, $07                                   ; $2e24: $e8 $07
    inc c                                         ; $2e26: $0c
    ld [$082c], sp                                ; $2e27: $08 $2c $08
    ld c, h                                       ; $2e2a: $4c
    ld [$086c], sp                                ; $2e2b: $08 $6c $08
    adc h                                         ; $2e2e: $8c
    ld [$08ac], sp                                ; $2e2f: $08 $ac $08
    call z, $ec08                                 ; $2e32: $cc $08 $ec
    ld [$0a00], sp                                ; $2e35: $08 $00 $0a
    jr nz, jr_000_2e44                            ; $2e38: $20 $0a

    ld b, b                                       ; $2e3a: $40
    ld a, [bc]                                    ; $2e3b: $0a
    ld h, b                                       ; $2e3c: $60
    ld a, [bc]                                    ; $2e3d: $0a
    add b                                         ; $2e3e: $80
    ld a, [bc]                                    ; $2e3f: $0a
    and b                                         ; $2e40: $a0
    ld a, [bc]                                    ; $2e41: $0a
    ret nz                                        ; $2e42: $c0

    ld a, [bc]                                    ; $2e43: $0a

jr_000_2e44:
    ldh [$ff0a], a                                ; $2e44: $e0 $0a
    inc b                                         ; $2e46: $04
    dec bc                                        ; $2e47: $0b
    inc h                                         ; $2e48: $24
    dec bc                                        ; $2e49: $0b
    ld b, h                                       ; $2e4a: $44
    dec bc                                        ; $2e4b: $0b
    ld h, h                                       ; $2e4c: $64
    dec bc                                        ; $2e4d: $0b
    add h                                         ; $2e4e: $84
    dec bc                                        ; $2e4f: $0b
    and h                                         ; $2e50: $a4
    dec bc                                        ; $2e51: $0b
    call nz, $e40b                                ; $2e52: $c4 $0b $e4
    dec bc                                        ; $2e55: $0b
    ld [$280c], sp                                ; $2e56: $08 $0c $28
    inc c                                         ; $2e59: $0c
    ld c, b                                       ; $2e5a: $48
    inc c                                         ; $2e5b: $0c
    ld l, b                                       ; $2e5c: $68
    inc c                                         ; $2e5d: $0c
    adc b                                         ; $2e5e: $88
    inc c                                         ; $2e5f: $0c
    xor b                                         ; $2e60: $a8
    inc c                                         ; $2e61: $0c
    ret z                                         ; $2e62: $c8

    inc c                                         ; $2e63: $0c
    add sp, $0c                                   ; $2e64: $e8 $0c
    inc c                                         ; $2e66: $0c
    dec c                                         ; $2e67: $0d
    inc l                                         ; $2e68: $2c
    dec c                                         ; $2e69: $0d
    ld c, h                                       ; $2e6a: $4c
    dec c                                         ; $2e6b: $0d
    ld l, h                                       ; $2e6c: $6c
    dec c                                         ; $2e6d: $0d
    adc h                                         ; $2e6e: $8c
    dec c                                         ; $2e6f: $0d
    xor h                                         ; $2e70: $ac
    dec c                                         ; $2e71: $0d
    call z, $ec0d                                 ; $2e72: $cc $0d $ec
    dec c                                         ; $2e75: $0d
    nop                                           ; $2e76: $00
    rrca                                          ; $2e77: $0f
    jr nz, jr_000_2e89                            ; $2e78: $20 $0f

    ld b, b                                       ; $2e7a: $40
    rrca                                          ; $2e7b: $0f
    ld h, b                                       ; $2e7c: $60
    rrca                                          ; $2e7d: $0f
    add b                                         ; $2e7e: $80
    rrca                                          ; $2e7f: $0f
    and b                                         ; $2e80: $a0
    rrca                                          ; $2e81: $0f
    ret nz                                        ; $2e82: $c0

    rrca                                          ; $2e83: $0f
    ldh [rIF], a                                  ; $2e84: $e0 $0f
    inc b                                         ; $2e86: $04
    db $10                                        ; $2e87: $10
    inc h                                         ; $2e88: $24

jr_000_2e89:
    db $10                                        ; $2e89: $10
    ld b, h                                       ; $2e8a: $44
    db $10                                        ; $2e8b: $10
    ld h, h                                       ; $2e8c: $64
    db $10                                        ; $2e8d: $10
    add h                                         ; $2e8e: $84
    db $10                                        ; $2e8f: $10
    and h                                         ; $2e90: $a4
    db $10                                        ; $2e91: $10
    call nz, $e410                                ; $2e92: $c4 $10 $e4
    db $10                                        ; $2e95: $10
    ld [$2811], sp                                ; $2e96: $08 $11 $28
    ld de, $1148                                  ; $2e99: $11 $48 $11
    ld l, b                                       ; $2e9c: $68
    ld de, $1188                                  ; $2e9d: $11 $88 $11
    xor b                                         ; $2ea0: $a8
    ld de, $11c8                                  ; $2ea1: $11 $c8 $11
    add sp, $11                                   ; $2ea4: $e8 $11
    inc c                                         ; $2ea6: $0c
    ld [de], a                                    ; $2ea7: $12
    inc l                                         ; $2ea8: $2c
    ld [de], a                                    ; $2ea9: $12
    ld c, h                                       ; $2eaa: $4c
    ld [de], a                                    ; $2eab: $12
    ld l, h                                       ; $2eac: $6c
    ld [de], a                                    ; $2ead: $12
    adc h                                         ; $2eae: $8c
    ld [de], a                                    ; $2eaf: $12
    xor h                                         ; $2eb0: $ac
    ld [de], a                                    ; $2eb1: $12
    call z, $ec12                                 ; $2eb2: $cc $12 $ec
    ld [de], a                                    ; $2eb5: $12
    nop                                           ; $2eb6: $00
    inc d                                         ; $2eb7: $14
    jr nz, jr_000_2ece                            ; $2eb8: $20 $14

    ld b, b                                       ; $2eba: $40
    inc d                                         ; $2ebb: $14
    ld h, b                                       ; $2ebc: $60
    inc d                                         ; $2ebd: $14
    add b                                         ; $2ebe: $80
    inc d                                         ; $2ebf: $14
    and b                                         ; $2ec0: $a0
    inc d                                         ; $2ec1: $14
    ret nz                                        ; $2ec2: $c0

    inc d                                         ; $2ec3: $14
    ldh [rNR14], a                                ; $2ec4: $e0 $14
    inc b                                         ; $2ec6: $04
    dec d                                         ; $2ec7: $15
    inc h                                         ; $2ec8: $24
    dec d                                         ; $2ec9: $15
    ld b, h                                       ; $2eca: $44
    dec d                                         ; $2ecb: $15
    ld h, h                                       ; $2ecc: $64
    dec d                                         ; $2ecd: $15

jr_000_2ece:
    add h                                         ; $2ece: $84
    dec d                                         ; $2ecf: $15
    and h                                         ; $2ed0: $a4
    dec d                                         ; $2ed1: $15
    call nz, $e415                                ; $2ed2: $c4 $15 $e4
    dec d                                         ; $2ed5: $15

Jump_000_2ed6:
    ld [$2816], sp                                ; $2ed6: $08 $16 $28
    ld d, $48                                     ; $2ed9: $16 $48
    ld d, $68                                     ; $2edb: $16 $68
    ld d, $88                                     ; $2edd: $16 $88
    ld d, $a8                                     ; $2edf: $16 $a8
    ld d, $c8                                     ; $2ee1: $16 $c8
    ld d, $e8                                     ; $2ee3: $16 $e8
    ld d, $0c                                     ; $2ee5: $16 $0c

jr_000_2ee7:
    rla                                           ; $2ee7: $17
    inc l                                         ; $2ee8: $2c
    rla                                           ; $2ee9: $17
    ld c, h                                       ; $2eea: $4c
    rla                                           ; $2eeb: $17
    ld l, h                                       ; $2eec: $6c
    rla                                           ; $2eed: $17
    adc h                                         ; $2eee: $8c
    rla                                           ; $2eef: $17
    xor h                                         ; $2ef0: $ac
    rla                                           ; $2ef1: $17
    call z, $ec17                                 ; $2ef2: $cc $17 $ec
    rla                                           ; $2ef5: $17
    nop                                           ; $2ef6: $00
    add hl, de                                    ; $2ef7: $19
    jr nz, @+$1b                                  ; $2ef8: $20 $19

    ld b, b                                       ; $2efa: $40
    add hl, de                                    ; $2efb: $19
    ld h, b                                       ; $2efc: $60
    add hl, de                                    ; $2efd: $19
    add b                                         ; $2efe: $80
    add hl, de                                    ; $2eff: $19
    and b                                         ; $2f00: $a0
    add hl, de                                    ; $2f01: $19
    ret nz                                        ; $2f02: $c0

    add hl, de                                    ; $2f03: $19
    ldh [rNR24], a                                ; $2f04: $e0 $19
    inc b                                         ; $2f06: $04
    ld a, [de]                                    ; $2f07: $1a
    inc h                                         ; $2f08: $24

jr_000_2f09:
    ld a, [de]                                    ; $2f09: $1a
    ld b, h                                       ; $2f0a: $44
    ld a, [de]                                    ; $2f0b: $1a
    ld h, h                                       ; $2f0c: $64
    ld a, [de]                                    ; $2f0d: $1a
    add h                                         ; $2f0e: $84
    ld a, [de]                                    ; $2f0f: $1a
    and h                                         ; $2f10: $a4
    ld a, [de]                                    ; $2f11: $1a
    call nz, $e41a                                ; $2f12: $c4 $1a $e4
    ld a, [de]                                    ; $2f15: $1a
    ld [$281b], sp                                ; $2f16: $08 $1b $28
    dec de                                        ; $2f19: $1b
    ld c, b                                       ; $2f1a: $48
    dec de                                        ; $2f1b: $1b
    ld l, b                                       ; $2f1c: $68
    dec de                                        ; $2f1d: $1b
    adc b                                         ; $2f1e: $88
    dec de                                        ; $2f1f: $1b
    xor b                                         ; $2f20: $a8
    dec de                                        ; $2f21: $1b
    ret z                                         ; $2f22: $c8

    dec de                                        ; $2f23: $1b
    add sp, $1b                                   ; $2f24: $e8 $1b
    inc c                                         ; $2f26: $0c
    inc e                                         ; $2f27: $1c
    inc l                                         ; $2f28: $2c
    inc e                                         ; $2f29: $1c
    ld c, h                                       ; $2f2a: $4c

jr_000_2f2b:
    inc e                                         ; $2f2b: $1c
    ld l, h                                       ; $2f2c: $6c
    inc e                                         ; $2f2d: $1c
    adc h                                         ; $2f2e: $8c
    inc e                                         ; $2f2f: $1c
    xor h                                         ; $2f30: $ac
    inc e                                         ; $2f31: $1c
    call z, $ec1c                                 ; $2f32: $cc $1c $ec
    inc e                                         ; $2f35: $1c
    nop                                           ; $2f36: $00
    ld e, $20                                     ; $2f37: $1e $20
    ld e, $40                                     ; $2f39: $1e $40
    ld e, $60                                     ; $2f3b: $1e $60
    ld e, $80                                     ; $2f3d: $1e $80
    ld e, $a0                                     ; $2f3f: $1e $a0
    ld e, $c0                                     ; $2f41: $1e $c0
    ld e, $e0                                     ; $2f43: $1e $e0
    ld e, $04                                     ; $2f45: $1e $04
    rra                                           ; $2f47: $1f
    inc h                                         ; $2f48: $24
    rra                                           ; $2f49: $1f
    ld b, h                                       ; $2f4a: $44
    rra                                           ; $2f4b: $1f
    ld h, h                                       ; $2f4c: $64

jr_000_2f4d:
    rra                                           ; $2f4d: $1f
    add h                                         ; $2f4e: $84
    rra                                           ; $2f4f: $1f
    and h                                         ; $2f50: $a4
    rra                                           ; $2f51: $1f
    call nz, $e41f                                ; $2f52: $c4 $1f $e4
    rra                                           ; $2f55: $1f
    ld [$2820], sp                                ; $2f56: $08 $20 $28
    jr nz, jr_000_2fa3                            ; $2f59: $20 $48

    jr nz, jr_000_2fc5                            ; $2f5b: $20 $68

    jr nz, jr_000_2ee7                            ; $2f5d: $20 $88

    jr nz, jr_000_2f09                            ; $2f5f: $20 $a8

    jr nz, jr_000_2f2b                            ; $2f61: $20 $c8

    jr nz, jr_000_2f4d                            ; $2f63: $20 $e8

    jr nz, @+$0e                                  ; $2f65: $20 $0c

    ld hl, $212c                                  ; $2f67: $21 $2c $21
    ld c, h                                       ; $2f6a: $4c
    ld hl, b00_Unknown_StatePointer_1c            ; $2f6b: $21 $6c $21
    adc h                                         ; $2f6e: $8c
    ld hl, $21ac                                  ; $2f6f: $21 $ac $21
    call z, $ec21                                 ; $2f72: $cc $21 $ec
    ld hl, $2300                                  ; $2f75: $21 $00 $23
    jr nz, jr_000_2f9d                            ; $2f78: $20 $23

    ld b, b                                       ; $2f7a: $40
    inc hl                                        ; $2f7b: $23
    ld h, b                                       ; $2f7c: $60
    inc hl                                        ; $2f7d: $23
    add b                                         ; $2f7e: $80
    inc hl                                        ; $2f7f: $23
    and b                                         ; $2f80: $a0
    inc hl                                        ; $2f81: $23
    ret nz                                        ; $2f82: $c0

    inc hl                                        ; $2f83: $23
    ldh [rNR44], a                                ; $2f84: $e0 $23
    inc b                                         ; $2f86: $04
    inc h                                         ; $2f87: $24
    inc h                                         ; $2f88: $24
    inc h                                         ; $2f89: $24
    ld b, h                                       ; $2f8a: $44
    inc h                                         ; $2f8b: $24
    ld h, h                                       ; $2f8c: $64
    inc h                                         ; $2f8d: $24
    add h                                         ; $2f8e: $84
    inc h                                         ; $2f8f: $24
    and h                                         ; $2f90: $a4
    inc h                                         ; $2f91: $24
    call nz, $e424                                ; $2f92: $c4 $24 $e4
    inc h                                         ; $2f95: $24
    ld [$2825], sp                                ; $2f96: $08 $25 $28
    dec h                                         ; $2f99: $25
    ld c, b                                       ; $2f9a: $48
    dec h                                         ; $2f9b: $25
    ld l, b                                       ; $2f9c: $68

jr_000_2f9d:
    dec h                                         ; $2f9d: $25
    adc b                                         ; $2f9e: $88
    dec h                                         ; $2f9f: $25
    xor b                                         ; $2fa0: $a8
    dec h                                         ; $2fa1: $25
    ret z                                         ; $2fa2: $c8

jr_000_2fa3:
    dec h                                         ; $2fa3: $25
    add sp, $25                                   ; $2fa4: $e8 $25
    inc c                                         ; $2fa6: $0c
    ld h, $2c                                     ; $2fa7: $26 $2c
    ld h, $4c                                     ; $2fa9: $26 $4c
    ld h, $6c                                     ; $2fab: $26 $6c
    ld h, $8c                                     ; $2fad: $26 $8c
    ld h, $ac                                     ; $2faf: $26 $ac
    ld h, $cc                                     ; $2fb1: $26 $cc
    ld h, $ec                                     ; $2fb3: $26 $ec
    ld h, $3e                                     ; $2fb5: $26 $3e
    ld a, b                                       ; $2fb7: $78
    ld [$d836], a                                 ; $2fb8: $ea $36 $d8

Call_000_2fbb:
jr_000_2fbb:
    ld a, [$d835]                                 ; $2fbb: $fa $35 $d8
    and a                                         ; $2fbe: $a7
    jr z, jr_000_2fc9                             ; $2fbf: $28 $08

    ld a, [$d836]                                 ; $2fc1: $fa $36 $d8
    dec a                                         ; $2fc4: $3d

jr_000_2fc5:
    ld [$d836], a                                 ; $2fc5: $ea $36 $d8
    ret z                                         ; $2fc8: $c8

jr_000_2fc9:
    ld a, [$c31e]                                 ; $2fc9: $fa $1e $c3
    bit 0, a                                      ; $2fcc: $cb $47
    jr z, jr_000_2fd8                             ; $2fce: $28 $08

    ld c, $03                                     ; $2fd0: $0e $03
    ld a, $02                                     ; $2fd2: $3e $02
    call Call_000_03b6                            ; $2fd4: $cd $b6 $03
    ret                                           ; $2fd7: $c9


jr_000_2fd8:
    ld a, [$c31e]                                 ; $2fd8: $fa $1e $c3
    bit 3, a                                      ; $2fdb: $cb $5f
    jr z, jr_000_2fea                             ; $2fdd: $28 $0b

    ld [$d837], a                                 ; $2fdf: $ea $37 $d8
    ld c, $04                                     ; $2fe2: $0e $04
    ld a, $02                                     ; $2fe4: $3e $02
    call Call_000_03b6                            ; $2fe6: $cd $b6 $03
    ret                                           ; $2fe9: $c9


jr_000_2fea:
    push hl                                       ; $2fea: $e5
    call Call_000_05c5                            ; $2feb: $cd $c5 $05
    rst RST_08                                    ; $2fee: $cf
    call $7918                                    ; $2fef: $cd $18 $79
    ld a, [$c33b]                                 ; $2ff2: $fa $3b $c3
    bit 4, a                                      ; $2ff5: $cb $67
    jr nz, jr_000_3008                            ; $2ff7: $20 $0f

    ld a, [$d82b]                                 ; $2ff9: $fa $2b $d8
    inc a                                         ; $2ffc: $3c
    ld b, a                                       ; $2ffd: $47
    ld a, [$d82c]                                 ; $2ffe: $fa $2c $d8
    inc a                                         ; $3001: $3c
    ld c, a                                       ; $3002: $4f
    ld a, $37                                     ; $3003: $3e $37
    call Call_000_20ce                            ; $3005: $cd $ce $20

jr_000_3008:
    pop hl                                        ; $3008: $e1
    push hl                                       ; $3009: $e5
    ld bc, $300f                                  ; $300a: $01 $0f $30
    push bc                                       ; $300d: $c5
    jp hl                                         ; $300e: $e9


    pop hl                                        ; $300f: $e1
    jr jr_000_2fbb                                ; $3010: $18 $a9

Call_000_3012:
    ld a, [$c33b]                                 ; $3012: $fa $3b $c3
    bit 4, a                                      ; $3015: $cb $67
    jr nz, jr_000_3029                            ; $3017: $20 $10

    ld a, [$d82b]                                 ; $3019: $fa $2b $d8
    sub $03                                       ; $301c: $d6 $03
    ld b, a                                       ; $301e: $47
    ld a, [$d82c]                                 ; $301f: $fa $2c $d8
    inc a                                         ; $3022: $3c
    ld c, a                                       ; $3023: $4f
    ld a, $38                                     ; $3024: $3e $38
    call Call_000_20ce                            ; $3026: $cd $ce $20

jr_000_3029:
    ld hl, $d63c                                  ; $3029: $21 $3c $d6
    dec [hl]                                      ; $302c: $35
    ret                                           ; $302d: $c9


Call_000_302e:
    ld bc, $0d58                                  ; $302e: $01 $58 $0d
    ld de, $8507                                  ; $3031: $11 $07 $85
    call Call_000_3071                            ; $3034: $cd $71 $30
    ld bc, $0d60                                  ; $3037: $01 $60 $0d
    ld de, $8507                                  ; $303a: $11 $07 $85
    call Call_000_3071                            ; $303d: $cd $71 $30
    ld bc, $0d68                                  ; $3040: $01 $68 $0d
    ld de, $8507                                  ; $3043: $11 $07 $85
    call Call_000_3071                            ; $3046: $cd $71 $30
    ld bc, $0d70                                  ; $3049: $01 $70 $0d
    ld de, $8507                                  ; $304c: $11 $07 $85
    call Call_000_3071                            ; $304f: $cd $71 $30
    ld bc, $0d78                                  ; $3052: $01 $78 $0d
    ld de, $8507                                  ; $3055: $11 $07 $85
    call Call_000_3071                            ; $3058: $cd $71 $30
    ld bc, $0d80                                  ; $305b: $01 $80 $0d
    ld de, $8507                                  ; $305e: $11 $07 $85
    call Call_000_3071                            ; $3061: $cd $71 $30
    ld a, [$d843]                                 ; $3064: $fa $43 $d8
    ld [$d82b], a                                 ; $3067: $ea $2b $d8
    ld a, [$d844]                                 ; $306a: $fa $44 $d8
    ld [$d82c], a                                 ; $306d: $ea $2c $d8
    ret                                           ; $3070: $c9


Call_000_3071:
    ld a, $00                                     ; $3071: $3e $00
    ld [$c355], a                                 ; $3073: $ea $55 $c3
    ld a, $6c                                     ; $3076: $3e $6c
    ld [$c356], a                                 ; $3078: $ea $56 $c3
    ld a, $07                                     ; $307b: $3e $07
    ld [$c357], a                                 ; $307d: $ea $57 $c3
    ld a, b                                       ; $3080: $78
    ld [$c351], a                                 ; $3081: $ea $51 $c3
    add d                                         ; $3084: $82
    ld [$c353], a                                 ; $3085: $ea $53 $c3
    ld a, c                                       ; $3088: $79
    ld [$c352], a                                 ; $3089: $ea $52 $c3
    add e                                         ; $308c: $83
    ld [$c354], a                                 ; $308d: $ea $54 $c3
    jp Jump_000_08b3                              ; $3090: $c3 $b3 $08


Call_000_3093:
    ld a, [$d81a]                                 ; $3093: $fa $1a $d8
    and a                                         ; $3096: $a7
    jr nz, jr_000_30b9                            ; $3097: $20 $20

    ld a, [$d81b]                                 ; $3099: $fa $1b $d8
    ld c, a                                       ; $309c: $4f
    ld b, $00                                     ; $309d: $06 $00

jr_000_309f:
    ld hl, $30c9                                  ; $309f: $21 $c9 $30
    add hl, bc                                    ; $30a2: $09
    ld a, [hl+]                                   ; $30a3: $2a
    and a                                         ; $30a4: $a7
    jr nz, jr_000_30ac                            ; $30a5: $20 $05

    ld bc, $0000                                  ; $30a7: $01 $00 $00
    jr jr_000_309f                                ; $30aa: $18 $f3

jr_000_30ac:
    ld [$d81a], a                                 ; $30ac: $ea $1a $d8
    ld a, [hl]                                    ; $30af: $7e
    ld [$d819], a                                 ; $30b0: $ea $19 $d8
    inc c                                         ; $30b3: $0c
    inc c                                         ; $30b4: $0c
    ld a, c                                       ; $30b5: $79
    ld [$d81b], a                                 ; $30b6: $ea $1b $d8

jr_000_30b9:
    ld hl, $d81a                                  ; $30b9: $21 $1a $d8
    dec [hl]                                      ; $30bc: $35
    ld a, [$d819]                                 ; $30bd: $fa $19 $d8
    cp $ff                                        ; $30c0: $fe $ff
    ret z                                         ; $30c2: $c8

    ld bc, $1d20                                  ; $30c3: $01 $20 $1d
    jp Jump_000_20ce                              ; $30c6: $c3 $ce $20


    ld [bc], a                                    ; $30c9: $02
    add hl, sp                                    ; $30ca: $39
    inc b                                         ; $30cb: $04
    rst $38                                       ; $30cc: $ff
    inc bc                                        ; $30cd: $03
    add hl, sp                                    ; $30ce: $39
    inc bc                                        ; $30cf: $03
    rst $38                                       ; $30d0: $ff
    ld [bc], a                                    ; $30d1: $02
    add hl, sp                                    ; $30d2: $39
    dec b                                         ; $30d3: $05
    rst $38                                       ; $30d4: $ff
    nop                                           ; $30d5: $00

Call_000_30d6:
    xor a                                         ; $30d6: $af
    ld [$c31a], a                                 ; $30d7: $ea $1a $c3
    ld [$c31e], a                                 ; $30da: $ea $1e $c3
    ld [$c322], a                                 ; $30dd: $ea $22 $c3
    ld a, [$d830]                                 ; $30e0: $fa $30 $d8
    and a                                         ; $30e3: $a7
    jr nz, jr_000_310c                            ; $30e4: $20 $26

    ld a, [$d82f]                                 ; $30e6: $fa $2f $d8
    ld c, a                                       ; $30e9: $4f
    ld b, $00                                     ; $30ea: $06 $00
    ld a, [$d831]                                 ; $30ec: $fa $31 $d8
    ld l, a                                       ; $30ef: $6f
    ld a, [$d832]                                 ; $30f0: $fa $32 $d8
    ld h, a                                       ; $30f3: $67
    add hl, bc                                    ; $30f4: $09
    ld a, [hl]                                    ; $30f5: $7e
    cp $ff                                        ; $30f6: $fe $ff
    ret z                                         ; $30f8: $c8

    ld [$c31a], a                                 ; $30f9: $ea $1a $c3

Call_000_30fc:
    ld [$c31e], a                                 ; $30fc: $ea $1e $c3
    ld [$c322], a                                 ; $30ff: $ea $22 $c3
    ld a, $07                                     ; $3102: $3e $07
    ld [$d830], a                                 ; $3104: $ea $30 $d8
    ld a, c                                       ; $3107: $79
    inc a                                         ; $3108: $3c
    ld [$d82f], a                                 ; $3109: $ea $2f $d8

jr_000_310c:
    ld hl, $d830                                  ; $310c: $21 $30 $d8
    dec [hl]                                      ; $310f: $35
    ld a, $ff                                     ; $3110: $3e $ff
    and a                                         ; $3112: $a7
    ret                                           ; $3113: $c9


Call_000_3114:
    ld a, $40                                     ; $3114: $3e $40
    ld [$c355], a                                 ; $3116: $ea $55 $c3
    ld a, $4c                                     ; $3119: $3e $4c
    ld [$c356], a                                 ; $311b: $ea $56 $c3
    ld a, $07                                     ; $311e: $3e $07
    ld [$c357], a                                 ; $3120: $ea $57 $c3
    ld a, $38                                     ; $3123: $3e $38
    ld [$c351], a                                 ; $3125: $ea $51 $c3
    add $1f                                       ; $3128: $c6 $1f
    ld [$c353], a                                 ; $312a: $ea $53 $c3
    ld a, $30                                     ; $312d: $3e $30
    ld [$c352], a                                 ; $312f: $ea $52 $c3
    add $1f                                       ; $3132: $c6 $1f
    ld [$c354], a                                 ; $3134: $ea $54 $c3
    jp Jump_000_08b3                              ; $3137: $c3 $b3 $08


Call_000_313a:
    ld a, $00                                     ; $313a: $3e $00
    ld [$c355], a                                 ; $313c: $ea $55 $c3
    ld a, $68                                     ; $313f: $3e $68
    ld [$c356], a                                 ; $3141: $ea $56 $c3
    ld a, $07                                     ; $3144: $3e $07
    ld [$c357], a                                 ; $3146: $ea $57 $c3
    ld a, $38                                     ; $3149: $3e $38
    ld [$c351], a                                 ; $314b: $ea $51 $c3
    add $1f                                       ; $314e: $c6 $1f
    ld [$c353], a                                 ; $3150: $ea $53 $c3
    ld a, $30                                     ; $3153: $3e $30
    ld [$c352], a                                 ; $3155: $ea $52 $c3
    add $1f                                       ; $3158: $c6 $1f
    ld [$c354], a                                 ; $315a: $ea $54 $c3
    jp Jump_000_08b3                              ; $315d: $c3 $b3 $08


Call_000_3160:
    ld a, [$d80b]                                 ; $3160: $fa $0b $d8
    ld hl, $d80c                                  ; $3163: $21 $0c $d8
    or [hl]                                       ; $3166: $b6
    ld hl, $d809                                  ; $3167: $21 $09 $d8
    or [hl]                                       ; $316a: $b6
    ld hl, $d80a                                  ; $316b: $21 $0a $d8
    or [hl]                                       ; $316e: $b6
    ret z                                         ; $316f: $c8

    ld a, $ff                                     ; $3170: $3e $ff
    ld [$d80d], a                                 ; $3172: $ea $0d $d8
    ld a, [$d80b]                                 ; $3175: $fa $0b $d8
    sub $05                                       ; $3178: $d6 $05
    jr nc, jr_000_317e                            ; $317a: $30 $02

    add $0a                                       ; $317c: $c6 $0a

jr_000_317e:
    ld [$d80b], a                                 ; $317e: $ea $0b $d8
    push af                                       ; $3181: $f5
    ld bc, $2b27                                  ; $3182: $01 $27 $2b
    call $7c29                                    ; $3185: $cd $29 $7c
    pop af                                        ; $3188: $f1
    ld a, [$d80c]                                 ; $3189: $fa $0c $d8
    sbc $01                                       ; $318c: $de $01
    jr nc, jr_000_3192                            ; $318e: $30 $02

    add $06                                       ; $3190: $c6 $06

jr_000_3192:
    ld [$d80c], a                                 ; $3192: $ea $0c $d8
    push af                                       ; $3195: $f5
    ld bc, $2327                                  ; $3196: $01 $27 $23
    call $7c29                                    ; $3199: $cd $29 $7c
    pop af                                        ; $319c: $f1
    ret nc                                        ; $319d: $d0

    ld a, [$d809]                                 ; $319e: $fa $09 $d8
    dec a                                         ; $31a1: $3d
    cp $ff                                        ; $31a2: $fe $ff
    jr nz, jr_000_31a8                            ; $31a4: $20 $02

    ld a, $09                                     ; $31a6: $3e $09

jr_000_31a8:
    ld [$d809], a                                 ; $31a8: $ea $09 $d8
    push af                                       ; $31ab: $f5
    ld bc, $1527                                  ; $31ac: $01 $27 $15
    call $7c29                                    ; $31af: $cd $29 $7c
    pop af                                        ; $31b2: $f1
    ret nz                                        ; $31b3: $c0

    ld a, [$d80a]                                 ; $31b4: $fa $0a $d8
    dec a                                         ; $31b7: $3d
    cp $ff                                        ; $31b8: $fe $ff
    jr nz, jr_000_31be                            ; $31ba: $20 $02

    ld a, $09                                     ; $31bc: $3e $09

jr_000_31be:
    ld [$d80a], a                                 ; $31be: $ea $0a $d8
    push af                                       ; $31c1: $f5
    ld bc, $0d27                                  ; $31c2: $01 $27 $0d
    call $7c29                                    ; $31c5: $cd $29 $7c
    pop af                                        ; $31c8: $f1
    ret                                           ; $31c9: $c9


Call_000_31ca:
    ld a, [$c33b]                                 ; $31ca: $fa $3b $c3
    push af                                       ; $31cd: $f5
    ld hl, $d63d                                  ; $31ce: $21 $3d $d6
    sub [hl]                                      ; $31d1: $96
    push af                                       ; $31d2: $f5
    ld hl, $d63e                                  ; $31d3: $21 $3e $d6
    add [hl]                                      ; $31d6: $86
    ld [hl], a                                    ; $31d7: $77
    pop af                                        ; $31d8: $f1
    ld hl, $d63f                                  ; $31d9: $21 $3f $d6
    add [hl]                                      ; $31dc: $86
    ld [hl], a                                    ; $31dd: $77
    pop af                                        ; $31de: $f1
    ld [$d63d], a                                 ; $31df: $ea $3d $d6
    ld a, [$d812]                                 ; $31e2: $fa $12 $d8
    cp $3f                                        ; $31e5: $fe $3f
    jr nc, jr_000_320e                            ; $31e7: $30 $25

    ld c, a                                       ; $31e9: $4f
    ld a, [$d63e]                                 ; $31ea: $fa $3e $d6
    cp c                                          ; $31ed: $b9
    jr c, jr_000_320e                             ; $31ee: $38 $1e

    xor a                                         ; $31f0: $af
    ld [$d63e], a                                 ; $31f1: $ea $3e $d6
    ld a, c                                       ; $31f4: $79
    cp $02                                        ; $31f5: $fe $02
    jr z, jr_000_31ff                             ; $31f7: $28 $06

    scf                                           ; $31f9: $37
    ld hl, $d812                                  ; $31fa: $21 $12 $d8
    rl [hl]                                       ; $31fd: $cb $16

jr_000_31ff:
    ld a, [$d636]                                 ; $31ff: $fa $36 $d6
    inc a                                         ; $3202: $3c
    cp $05                                        ; $3203: $fe $05
    jr nz, jr_000_3208                            ; $3205: $20 $01

    xor a                                         ; $3207: $af

jr_000_3208:
    ld [$d636], a                                 ; $3208: $ea $36 $d6
    call $6c2c                                    ; $320b: $cd $2c $6c

jr_000_320e:
    ld a, [$d813]                                 ; $320e: $fa $13 $d8
    cp $3f                                        ; $3211: $fe $3f
    jr nc, jr_000_323a                            ; $3213: $30 $25

    ld c, a                                       ; $3215: $4f
    ld a, [$d63f]                                 ; $3216: $fa $3f $d6
    cp c                                          ; $3219: $b9
    jr c, jr_000_323a                             ; $321a: $38 $1e

    xor a                                         ; $321c: $af
    ld [$d63f], a                                 ; $321d: $ea $3f $d6
    ld a, c                                       ; $3220: $79
    cp $02                                        ; $3221: $fe $02
    jr z, jr_000_322b                             ; $3223: $28 $06

    scf                                           ; $3225: $37
    ld hl, $d813                                  ; $3226: $21 $13 $d8
    rl [hl]                                       ; $3229: $cb $16

jr_000_322b:
    ld a, [$d637]                                 ; $322b: $fa $37 $d6
    inc a                                         ; $322e: $3c
    cp $05                                        ; $322f: $fe $05
    jr nz, jr_000_3234                            ; $3231: $20 $01

    xor a                                         ; $3233: $af

jr_000_3234:
    ld [$d637], a                                 ; $3234: $ea $37 $d6
    call $6c2c                                    ; $3237: $cd $2c $6c

jr_000_323a:
    call $7185                                    ; $323a: $cd $85 $71
    ret                                           ; $323d: $c9


Call_000_323e:
    xor a                                         ; $323e: $af
    ld [$d81b], a                                 ; $323f: $ea $1b $d8
    ld [$d81a], a                                 ; $3242: $ea $1a $d8
    ld [$d81f], a                                 ; $3245: $ea $1f $d8
    ld [$d820], a                                 ; $3248: $ea $20 $d8
    ld [$d821], a                                 ; $324b: $ea $21 $d8
    ret                                           ; $324e: $c9


    nop                                           ; $324f: $00
    nop                                           ; $3250: $00
    nop                                           ; $3251: $00
    nop                                           ; $3252: $00
    nop                                           ; $3253: $00
    nop                                           ; $3254: $00
    nop                                           ; $3255: $00
    nop                                           ; $3256: $00
    nop                                           ; $3257: $00
    nop                                           ; $3258: $00
    nop                                           ; $3259: $00
    nop                                           ; $325a: $00
    nop                                           ; $325b: $00
    nop                                           ; $325c: $00
    nop                                           ; $325d: $00
    nop                                           ; $325e: $00
    nop                                           ; $325f: $00
    nop                                           ; $3260: $00
    nop                                           ; $3261: $00
    nop                                           ; $3262: $00
    nop                                           ; $3263: $00
    nop                                           ; $3264: $00
    nop                                           ; $3265: $00
    nop                                           ; $3266: $00
    nop                                           ; $3267: $00
    nop                                           ; $3268: $00
    nop                                           ; $3269: $00
    nop                                           ; $326a: $00
    nop                                           ; $326b: $00
    nop                                           ; $326c: $00
    nop                                           ; $326d: $00
    nop                                           ; $326e: $00
    nop                                           ; $326f: $00
    nop                                           ; $3270: $00
    nop                                           ; $3271: $00
    nop                                           ; $3272: $00
    nop                                           ; $3273: $00
    nop                                           ; $3274: $00
    nop                                           ; $3275: $00
    nop                                           ; $3276: $00
    nop                                           ; $3277: $00
    nop                                           ; $3278: $00
    nop                                           ; $3279: $00
    nop                                           ; $327a: $00
    nop                                           ; $327b: $00
    nop                                           ; $327c: $00
    nop                                           ; $327d: $00
    nop                                           ; $327e: $00
    nop                                           ; $327f: $00
    nop                                           ; $3280: $00
    nop                                           ; $3281: $00
    nop                                           ; $3282: $00
    nop                                           ; $3283: $00
    nop                                           ; $3284: $00
    nop                                           ; $3285: $00
    nop                                           ; $3286: $00
    nop                                           ; $3287: $00
    nop                                           ; $3288: $00
    nop                                           ; $3289: $00
    nop                                           ; $328a: $00
    nop                                           ; $328b: $00
    nop                                           ; $328c: $00
    nop                                           ; $328d: $00
    nop                                           ; $328e: $00
    nop                                           ; $328f: $00
    nop                                           ; $3290: $00
    nop                                           ; $3291: $00
    nop                                           ; $3292: $00
    nop                                           ; $3293: $00
    nop                                           ; $3294: $00
    nop                                           ; $3295: $00
    nop                                           ; $3296: $00
    nop                                           ; $3297: $00
    nop                                           ; $3298: $00
    nop                                           ; $3299: $00
    nop                                           ; $329a: $00
    nop                                           ; $329b: $00
    nop                                           ; $329c: $00
    nop                                           ; $329d: $00
    nop                                           ; $329e: $00
    nop                                           ; $329f: $00
    nop                                           ; $32a0: $00
    nop                                           ; $32a1: $00
    nop                                           ; $32a2: $00
    nop                                           ; $32a3: $00
    nop                                           ; $32a4: $00
    nop                                           ; $32a5: $00
    nop                                           ; $32a6: $00
    nop                                           ; $32a7: $00
    nop                                           ; $32a8: $00
    nop                                           ; $32a9: $00
    nop                                           ; $32aa: $00
    nop                                           ; $32ab: $00
    nop                                           ; $32ac: $00
    nop                                           ; $32ad: $00
    nop                                           ; $32ae: $00
    nop                                           ; $32af: $00
    nop                                           ; $32b0: $00
    nop                                           ; $32b1: $00
    nop                                           ; $32b2: $00
    nop                                           ; $32b3: $00
    nop                                           ; $32b4: $00
    nop                                           ; $32b5: $00
    nop                                           ; $32b6: $00
    nop                                           ; $32b7: $00
    nop                                           ; $32b8: $00
    nop                                           ; $32b9: $00
    nop                                           ; $32ba: $00
    nop                                           ; $32bb: $00
    nop                                           ; $32bc: $00
    nop                                           ; $32bd: $00
    nop                                           ; $32be: $00
    nop                                           ; $32bf: $00
    nop                                           ; $32c0: $00
    nop                                           ; $32c1: $00
    nop                                           ; $32c2: $00
    nop                                           ; $32c3: $00
    nop                                           ; $32c4: $00
    nop                                           ; $32c5: $00
    nop                                           ; $32c6: $00
    nop                                           ; $32c7: $00
    nop                                           ; $32c8: $00
    nop                                           ; $32c9: $00
    nop                                           ; $32ca: $00
    nop                                           ; $32cb: $00
    nop                                           ; $32cc: $00
    nop                                           ; $32cd: $00
    nop                                           ; $32ce: $00
    nop                                           ; $32cf: $00
    nop                                           ; $32d0: $00
    nop                                           ; $32d1: $00
    nop                                           ; $32d2: $00
    nop                                           ; $32d3: $00
    nop                                           ; $32d4: $00
    nop                                           ; $32d5: $00
    nop                                           ; $32d6: $00
    nop                                           ; $32d7: $00
    nop                                           ; $32d8: $00
    nop                                           ; $32d9: $00
    nop                                           ; $32da: $00
    nop                                           ; $32db: $00
    nop                                           ; $32dc: $00
    nop                                           ; $32dd: $00
    nop                                           ; $32de: $00
    nop                                           ; $32df: $00
    nop                                           ; $32e0: $00
    nop                                           ; $32e1: $00
    nop                                           ; $32e2: $00
    nop                                           ; $32e3: $00
    nop                                           ; $32e4: $00
    nop                                           ; $32e5: $00
    nop                                           ; $32e6: $00
    nop                                           ; $32e7: $00
    nop                                           ; $32e8: $00
    nop                                           ; $32e9: $00
    nop                                           ; $32ea: $00
    nop                                           ; $32eb: $00
    nop                                           ; $32ec: $00
    nop                                           ; $32ed: $00
    nop                                           ; $32ee: $00
    nop                                           ; $32ef: $00
    nop                                           ; $32f0: $00
    nop                                           ; $32f1: $00
    nop                                           ; $32f2: $00
    nop                                           ; $32f3: $00
    nop                                           ; $32f4: $00
    nop                                           ; $32f5: $00
    nop                                           ; $32f6: $00
    nop                                           ; $32f7: $00
    nop                                           ; $32f8: $00
    nop                                           ; $32f9: $00
    nop                                           ; $32fa: $00
    nop                                           ; $32fb: $00
    nop                                           ; $32fc: $00
    nop                                           ; $32fd: $00
    nop                                           ; $32fe: $00

Jump_000_32ff:
    nop                                           ; $32ff: $00
    nop                                           ; $3300: $00
    nop                                           ; $3301: $00
    nop                                           ; $3302: $00
    nop                                           ; $3303: $00
    nop                                           ; $3304: $00
    nop                                           ; $3305: $00
    nop                                           ; $3306: $00
    nop                                           ; $3307: $00
    nop                                           ; $3308: $00
    nop                                           ; $3309: $00
    nop                                           ; $330a: $00
    nop                                           ; $330b: $00
    nop                                           ; $330c: $00
    nop                                           ; $330d: $00
    nop                                           ; $330e: $00
    nop                                           ; $330f: $00
    nop                                           ; $3310: $00
    nop                                           ; $3311: $00
    nop                                           ; $3312: $00
    nop                                           ; $3313: $00
    nop                                           ; $3314: $00
    nop                                           ; $3315: $00
    nop                                           ; $3316: $00
    nop                                           ; $3317: $00
    nop                                           ; $3318: $00
    nop                                           ; $3319: $00
    nop                                           ; $331a: $00
    nop                                           ; $331b: $00
    nop                                           ; $331c: $00
    nop                                           ; $331d: $00
    nop                                           ; $331e: $00
    nop                                           ; $331f: $00
    nop                                           ; $3320: $00
    nop                                           ; $3321: $00
    nop                                           ; $3322: $00
    nop                                           ; $3323: $00
    nop                                           ; $3324: $00
    nop                                           ; $3325: $00
    nop                                           ; $3326: $00
    nop                                           ; $3327: $00
    nop                                           ; $3328: $00
    nop                                           ; $3329: $00
    nop                                           ; $332a: $00
    nop                                           ; $332b: $00
    nop                                           ; $332c: $00
    nop                                           ; $332d: $00
    nop                                           ; $332e: $00
    nop                                           ; $332f: $00
    nop                                           ; $3330: $00
    nop                                           ; $3331: $00
    nop                                           ; $3332: $00
    nop                                           ; $3333: $00
    nop                                           ; $3334: $00
    nop                                           ; $3335: $00
    nop                                           ; $3336: $00
    nop                                           ; $3337: $00
    nop                                           ; $3338: $00
    nop                                           ; $3339: $00
    nop                                           ; $333a: $00
    nop                                           ; $333b: $00
    nop                                           ; $333c: $00
    nop                                           ; $333d: $00
    nop                                           ; $333e: $00
    nop                                           ; $333f: $00
    nop                                           ; $3340: $00
    nop                                           ; $3341: $00
    nop                                           ; $3342: $00
    nop                                           ; $3343: $00
    nop                                           ; $3344: $00
    nop                                           ; $3345: $00
    nop                                           ; $3346: $00
    nop                                           ; $3347: $00
    nop                                           ; $3348: $00
    nop                                           ; $3349: $00
    nop                                           ; $334a: $00
    nop                                           ; $334b: $00
    nop                                           ; $334c: $00
    nop                                           ; $334d: $00
    nop                                           ; $334e: $00
    nop                                           ; $334f: $00
    nop                                           ; $3350: $00
    nop                                           ; $3351: $00
    nop                                           ; $3352: $00
    nop                                           ; $3353: $00
    nop                                           ; $3354: $00
    nop                                           ; $3355: $00
    nop                                           ; $3356: $00
    nop                                           ; $3357: $00
    nop                                           ; $3358: $00
    nop                                           ; $3359: $00
    nop                                           ; $335a: $00
    nop                                           ; $335b: $00
    nop                                           ; $335c: $00
    nop                                           ; $335d: $00
    nop                                           ; $335e: $00
    nop                                           ; $335f: $00
    nop                                           ; $3360: $00
    nop                                           ; $3361: $00
    nop                                           ; $3362: $00
    nop                                           ; $3363: $00
    nop                                           ; $3364: $00
    nop                                           ; $3365: $00
    nop                                           ; $3366: $00
    nop                                           ; $3367: $00
    nop                                           ; $3368: $00
    nop                                           ; $3369: $00
    nop                                           ; $336a: $00
    nop                                           ; $336b: $00
    nop                                           ; $336c: $00
    nop                                           ; $336d: $00
    nop                                           ; $336e: $00
    nop                                           ; $336f: $00
    nop                                           ; $3370: $00
    nop                                           ; $3371: $00
    nop                                           ; $3372: $00
    nop                                           ; $3373: $00

Jump_000_3374:
    nop                                           ; $3374: $00
    nop                                           ; $3375: $00
    nop                                           ; $3376: $00
    nop                                           ; $3377: $00
    nop                                           ; $3378: $00
    nop                                           ; $3379: $00
    nop                                           ; $337a: $00
    nop                                           ; $337b: $00
    nop                                           ; $337c: $00
    nop                                           ; $337d: $00
    nop                                           ; $337e: $00
    nop                                           ; $337f: $00
    nop                                           ; $3380: $00
    nop                                           ; $3381: $00
    nop                                           ; $3382: $00
    nop                                           ; $3383: $00
    nop                                           ; $3384: $00
    nop                                           ; $3385: $00
    nop                                           ; $3386: $00
    nop                                           ; $3387: $00
    nop                                           ; $3388: $00
    nop                                           ; $3389: $00
    nop                                           ; $338a: $00
    nop                                           ; $338b: $00
    nop                                           ; $338c: $00
    nop                                           ; $338d: $00
    nop                                           ; $338e: $00
    nop                                           ; $338f: $00
    nop                                           ; $3390: $00
    nop                                           ; $3391: $00
    nop                                           ; $3392: $00
    nop                                           ; $3393: $00
    nop                                           ; $3394: $00
    nop                                           ; $3395: $00
    nop                                           ; $3396: $00
    nop                                           ; $3397: $00
    nop                                           ; $3398: $00
    nop                                           ; $3399: $00
    nop                                           ; $339a: $00
    nop                                           ; $339b: $00
    nop                                           ; $339c: $00
    nop                                           ; $339d: $00
    nop                                           ; $339e: $00
    nop                                           ; $339f: $00
    nop                                           ; $33a0: $00
    nop                                           ; $33a1: $00
    nop                                           ; $33a2: $00
    nop                                           ; $33a3: $00
    nop                                           ; $33a4: $00
    nop                                           ; $33a5: $00
    nop                                           ; $33a6: $00
    nop                                           ; $33a7: $00
    nop                                           ; $33a8: $00
    nop                                           ; $33a9: $00
    nop                                           ; $33aa: $00
    nop                                           ; $33ab: $00
    nop                                           ; $33ac: $00
    nop                                           ; $33ad: $00
    nop                                           ; $33ae: $00
    nop                                           ; $33af: $00
    nop                                           ; $33b0: $00
    nop                                           ; $33b1: $00
    nop                                           ; $33b2: $00
    nop                                           ; $33b3: $00
    nop                                           ; $33b4: $00
    nop                                           ; $33b5: $00
    nop                                           ; $33b6: $00
    nop                                           ; $33b7: $00
    nop                                           ; $33b8: $00
    nop                                           ; $33b9: $00
    nop                                           ; $33ba: $00
    nop                                           ; $33bb: $00
    nop                                           ; $33bc: $00
    nop                                           ; $33bd: $00
    nop                                           ; $33be: $00
    nop                                           ; $33bf: $00
    nop                                           ; $33c0: $00
    nop                                           ; $33c1: $00
    nop                                           ; $33c2: $00
    nop                                           ; $33c3: $00
    nop                                           ; $33c4: $00
    nop                                           ; $33c5: $00
    nop                                           ; $33c6: $00
    nop                                           ; $33c7: $00
    nop                                           ; $33c8: $00
    nop                                           ; $33c9: $00
    nop                                           ; $33ca: $00
    nop                                           ; $33cb: $00
    nop                                           ; $33cc: $00
    nop                                           ; $33cd: $00
    nop                                           ; $33ce: $00
    nop                                           ; $33cf: $00
    nop                                           ; $33d0: $00
    nop                                           ; $33d1: $00
    nop                                           ; $33d2: $00
    nop                                           ; $33d3: $00
    nop                                           ; $33d4: $00
    nop                                           ; $33d5: $00
    nop                                           ; $33d6: $00
    nop                                           ; $33d7: $00
    nop                                           ; $33d8: $00
    nop                                           ; $33d9: $00
    nop                                           ; $33da: $00
    nop                                           ; $33db: $00
    nop                                           ; $33dc: $00
    nop                                           ; $33dd: $00
    nop                                           ; $33de: $00
    nop                                           ; $33df: $00
    nop                                           ; $33e0: $00
    nop                                           ; $33e1: $00
    nop                                           ; $33e2: $00
    nop                                           ; $33e3: $00
    nop                                           ; $33e4: $00
    nop                                           ; $33e5: $00
    nop                                           ; $33e6: $00
    nop                                           ; $33e7: $00
    nop                                           ; $33e8: $00
    nop                                           ; $33e9: $00
    nop                                           ; $33ea: $00
    nop                                           ; $33eb: $00
    nop                                           ; $33ec: $00
    nop                                           ; $33ed: $00
    nop                                           ; $33ee: $00
    nop                                           ; $33ef: $00
    nop                                           ; $33f0: $00
    nop                                           ; $33f1: $00
    nop                                           ; $33f2: $00
    nop                                           ; $33f3: $00
    nop                                           ; $33f4: $00
    nop                                           ; $33f5: $00
    nop                                           ; $33f6: $00
    nop                                           ; $33f7: $00
    nop                                           ; $33f8: $00
    nop                                           ; $33f9: $00
    nop                                           ; $33fa: $00
    nop                                           ; $33fb: $00
    nop                                           ; $33fc: $00
    nop                                           ; $33fd: $00
    nop                                           ; $33fe: $00
    nop                                           ; $33ff: $00
    nop                                           ; $3400: $00
    nop                                           ; $3401: $00
    nop                                           ; $3402: $00
    nop                                           ; $3403: $00
    nop                                           ; $3404: $00
    nop                                           ; $3405: $00
    nop                                           ; $3406: $00
    nop                                           ; $3407: $00
    nop                                           ; $3408: $00
    nop                                           ; $3409: $00
    nop                                           ; $340a: $00
    nop                                           ; $340b: $00
    nop                                           ; $340c: $00
    nop                                           ; $340d: $00
    nop                                           ; $340e: $00
    nop                                           ; $340f: $00
    nop                                           ; $3410: $00
    nop                                           ; $3411: $00
    nop                                           ; $3412: $00
    nop                                           ; $3413: $00
    nop                                           ; $3414: $00
    nop                                           ; $3415: $00
    nop                                           ; $3416: $00
    nop                                           ; $3417: $00
    nop                                           ; $3418: $00
    nop                                           ; $3419: $00
    nop                                           ; $341a: $00
    nop                                           ; $341b: $00
    nop                                           ; $341c: $00
    nop                                           ; $341d: $00
    nop                                           ; $341e: $00
    nop                                           ; $341f: $00
    nop                                           ; $3420: $00
    nop                                           ; $3421: $00
    nop                                           ; $3422: $00
    nop                                           ; $3423: $00

Call_000_3424:
    nop                                           ; $3424: $00
    nop                                           ; $3425: $00
    nop                                           ; $3426: $00
    nop                                           ; $3427: $00
    nop                                           ; $3428: $00
    nop                                           ; $3429: $00
    nop                                           ; $342a: $00
    nop                                           ; $342b: $00
    nop                                           ; $342c: $00
    nop                                           ; $342d: $00
    nop                                           ; $342e: $00
    nop                                           ; $342f: $00
    nop                                           ; $3430: $00
    nop                                           ; $3431: $00
    nop                                           ; $3432: $00
    nop                                           ; $3433: $00
    nop                                           ; $3434: $00
    nop                                           ; $3435: $00
    nop                                           ; $3436: $00

Jump_000_3437:
    nop                                           ; $3437: $00
    nop                                           ; $3438: $00
    nop                                           ; $3439: $00
    nop                                           ; $343a: $00
    nop                                           ; $343b: $00
    nop                                           ; $343c: $00
    nop                                           ; $343d: $00
    nop                                           ; $343e: $00
    nop                                           ; $343f: $00
    nop                                           ; $3440: $00
    nop                                           ; $3441: $00
    nop                                           ; $3442: $00
    nop                                           ; $3443: $00

Jump_000_3444:
    nop                                           ; $3444: $00
    nop                                           ; $3445: $00
    nop                                           ; $3446: $00
    nop                                           ; $3447: $00
    nop                                           ; $3448: $00
    nop                                           ; $3449: $00
    nop                                           ; $344a: $00
    nop                                           ; $344b: $00
    nop                                           ; $344c: $00
    nop                                           ; $344d: $00
    nop                                           ; $344e: $00
    nop                                           ; $344f: $00
    nop                                           ; $3450: $00
    nop                                           ; $3451: $00
    nop                                           ; $3452: $00
    nop                                           ; $3453: $00
    nop                                           ; $3454: $00
    nop                                           ; $3455: $00
    nop                                           ; $3456: $00
    nop                                           ; $3457: $00
    nop                                           ; $3458: $00
    nop                                           ; $3459: $00
    nop                                           ; $345a: $00
    nop                                           ; $345b: $00
    nop                                           ; $345c: $00
    nop                                           ; $345d: $00
    nop                                           ; $345e: $00
    nop                                           ; $345f: $00
    nop                                           ; $3460: $00
    nop                                           ; $3461: $00
    nop                                           ; $3462: $00
    nop                                           ; $3463: $00
    nop                                           ; $3464: $00
    nop                                           ; $3465: $00
    nop                                           ; $3466: $00
    nop                                           ; $3467: $00
    nop                                           ; $3468: $00
    nop                                           ; $3469: $00
    nop                                           ; $346a: $00
    nop                                           ; $346b: $00
    nop                                           ; $346c: $00
    nop                                           ; $346d: $00
    nop                                           ; $346e: $00
    nop                                           ; $346f: $00
    nop                                           ; $3470: $00
    nop                                           ; $3471: $00
    nop                                           ; $3472: $00
    nop                                           ; $3473: $00
    nop                                           ; $3474: $00
    nop                                           ; $3475: $00
    nop                                           ; $3476: $00
    nop                                           ; $3477: $00
    nop                                           ; $3478: $00
    nop                                           ; $3479: $00
    nop                                           ; $347a: $00
    nop                                           ; $347b: $00
    nop                                           ; $347c: $00
    nop                                           ; $347d: $00
    nop                                           ; $347e: $00
    nop                                           ; $347f: $00
    nop                                           ; $3480: $00
    nop                                           ; $3481: $00
    nop                                           ; $3482: $00
    nop                                           ; $3483: $00
    nop                                           ; $3484: $00
    nop                                           ; $3485: $00
    nop                                           ; $3486: $00
    nop                                           ; $3487: $00
    nop                                           ; $3488: $00
    nop                                           ; $3489: $00
    nop                                           ; $348a: $00
    nop                                           ; $348b: $00
    nop                                           ; $348c: $00
    nop                                           ; $348d: $00
    nop                                           ; $348e: $00
    nop                                           ; $348f: $00
    nop                                           ; $3490: $00
    nop                                           ; $3491: $00
    nop                                           ; $3492: $00
    nop                                           ; $3493: $00
    nop                                           ; $3494: $00
    nop                                           ; $3495: $00
    nop                                           ; $3496: $00
    nop                                           ; $3497: $00
    nop                                           ; $3498: $00
    nop                                           ; $3499: $00
    nop                                           ; $349a: $00
    nop                                           ; $349b: $00
    nop                                           ; $349c: $00
    nop                                           ; $349d: $00
    nop                                           ; $349e: $00
    nop                                           ; $349f: $00
    nop                                           ; $34a0: $00
    nop                                           ; $34a1: $00
    nop                                           ; $34a2: $00
    nop                                           ; $34a3: $00
    nop                                           ; $34a4: $00
    nop                                           ; $34a5: $00
    nop                                           ; $34a6: $00
    nop                                           ; $34a7: $00
    nop                                           ; $34a8: $00
    nop                                           ; $34a9: $00
    nop                                           ; $34aa: $00
    nop                                           ; $34ab: $00
    nop                                           ; $34ac: $00
    nop                                           ; $34ad: $00
    nop                                           ; $34ae: $00
    nop                                           ; $34af: $00
    nop                                           ; $34b0: $00
    nop                                           ; $34b1: $00
    nop                                           ; $34b2: $00
    nop                                           ; $34b3: $00
    nop                                           ; $34b4: $00
    nop                                           ; $34b5: $00
    nop                                           ; $34b6: $00
    nop                                           ; $34b7: $00
    nop                                           ; $34b8: $00
    nop                                           ; $34b9: $00
    nop                                           ; $34ba: $00
    nop                                           ; $34bb: $00
    nop                                           ; $34bc: $00
    nop                                           ; $34bd: $00
    nop                                           ; $34be: $00
    nop                                           ; $34bf: $00
    nop                                           ; $34c0: $00
    nop                                           ; $34c1: $00
    nop                                           ; $34c2: $00
    nop                                           ; $34c3: $00
    nop                                           ; $34c4: $00
    nop                                           ; $34c5: $00
    nop                                           ; $34c6: $00
    nop                                           ; $34c7: $00
    nop                                           ; $34c8: $00
    nop                                           ; $34c9: $00
    nop                                           ; $34ca: $00
    nop                                           ; $34cb: $00
    nop                                           ; $34cc: $00
    nop                                           ; $34cd: $00
    nop                                           ; $34ce: $00
    nop                                           ; $34cf: $00
    nop                                           ; $34d0: $00
    nop                                           ; $34d1: $00
    nop                                           ; $34d2: $00
    nop                                           ; $34d3: $00
    nop                                           ; $34d4: $00
    nop                                           ; $34d5: $00
    nop                                           ; $34d6: $00
    nop                                           ; $34d7: $00
    nop                                           ; $34d8: $00
    nop                                           ; $34d9: $00
    nop                                           ; $34da: $00
    nop                                           ; $34db: $00
    nop                                           ; $34dc: $00
    nop                                           ; $34dd: $00
    nop                                           ; $34de: $00
    nop                                           ; $34df: $00
    nop                                           ; $34e0: $00
    nop                                           ; $34e1: $00
    nop                                           ; $34e2: $00
    nop                                           ; $34e3: $00
    nop                                           ; $34e4: $00
    nop                                           ; $34e5: $00
    nop                                           ; $34e6: $00
    nop                                           ; $34e7: $00
    nop                                           ; $34e8: $00
    nop                                           ; $34e9: $00
    nop                                           ; $34ea: $00
    nop                                           ; $34eb: $00
    nop                                           ; $34ec: $00
    nop                                           ; $34ed: $00

Call_000_34ee:
    nop                                           ; $34ee: $00
    nop                                           ; $34ef: $00
    nop                                           ; $34f0: $00
    nop                                           ; $34f1: $00
    nop                                           ; $34f2: $00
    nop                                           ; $34f3: $00
    nop                                           ; $34f4: $00
    nop                                           ; $34f5: $00
    nop                                           ; $34f6: $00
    nop                                           ; $34f7: $00
    nop                                           ; $34f8: $00
    nop                                           ; $34f9: $00
    nop                                           ; $34fa: $00
    nop                                           ; $34fb: $00
    nop                                           ; $34fc: $00
    nop                                           ; $34fd: $00
    nop                                           ; $34fe: $00
    nop                                           ; $34ff: $00
    nop                                           ; $3500: $00
    nop                                           ; $3501: $00
    nop                                           ; $3502: $00
    nop                                           ; $3503: $00
    nop                                           ; $3504: $00
    nop                                           ; $3505: $00
    nop                                           ; $3506: $00
    nop                                           ; $3507: $00
    nop                                           ; $3508: $00
    nop                                           ; $3509: $00
    nop                                           ; $350a: $00
    nop                                           ; $350b: $00
    nop                                           ; $350c: $00
    nop                                           ; $350d: $00
    nop                                           ; $350e: $00
    nop                                           ; $350f: $00
    nop                                           ; $3510: $00
    nop                                           ; $3511: $00
    nop                                           ; $3512: $00
    nop                                           ; $3513: $00
    nop                                           ; $3514: $00
    nop                                           ; $3515: $00
    nop                                           ; $3516: $00
    nop                                           ; $3517: $00
    nop                                           ; $3518: $00
    nop                                           ; $3519: $00
    nop                                           ; $351a: $00
    nop                                           ; $351b: $00
    nop                                           ; $351c: $00
    nop                                           ; $351d: $00
    nop                                           ; $351e: $00
    nop                                           ; $351f: $00
    nop                                           ; $3520: $00
    nop                                           ; $3521: $00
    nop                                           ; $3522: $00
    nop                                           ; $3523: $00
    nop                                           ; $3524: $00
    nop                                           ; $3525: $00
    nop                                           ; $3526: $00
    nop                                           ; $3527: $00
    nop                                           ; $3528: $00
    nop                                           ; $3529: $00
    nop                                           ; $352a: $00
    nop                                           ; $352b: $00
    nop                                           ; $352c: $00
    nop                                           ; $352d: $00
    nop                                           ; $352e: $00
    nop                                           ; $352f: $00
    nop                                           ; $3530: $00
    nop                                           ; $3531: $00
    nop                                           ; $3532: $00
    nop                                           ; $3533: $00
    nop                                           ; $3534: $00
    nop                                           ; $3535: $00
    nop                                           ; $3536: $00
    nop                                           ; $3537: $00
    nop                                           ; $3538: $00
    nop                                           ; $3539: $00
    nop                                           ; $353a: $00
    nop                                           ; $353b: $00
    nop                                           ; $353c: $00
    nop                                           ; $353d: $00
    nop                                           ; $353e: $00
    nop                                           ; $353f: $00
    nop                                           ; $3540: $00
    nop                                           ; $3541: $00
    nop                                           ; $3542: $00
    nop                                           ; $3543: $00
    nop                                           ; $3544: $00
    nop                                           ; $3545: $00
    nop                                           ; $3546: $00
    nop                                           ; $3547: $00
    nop                                           ; $3548: $00
    nop                                           ; $3549: $00
    nop                                           ; $354a: $00
    nop                                           ; $354b: $00
    nop                                           ; $354c: $00
    nop                                           ; $354d: $00
    nop                                           ; $354e: $00
    nop                                           ; $354f: $00
    nop                                           ; $3550: $00
    nop                                           ; $3551: $00
    nop                                           ; $3552: $00
    nop                                           ; $3553: $00
    nop                                           ; $3554: $00
    nop                                           ; $3555: $00
    nop                                           ; $3556: $00
    nop                                           ; $3557: $00
    nop                                           ; $3558: $00
    nop                                           ; $3559: $00
    nop                                           ; $355a: $00
    nop                                           ; $355b: $00
    nop                                           ; $355c: $00
    nop                                           ; $355d: $00
    nop                                           ; $355e: $00
    nop                                           ; $355f: $00
    nop                                           ; $3560: $00
    nop                                           ; $3561: $00
    nop                                           ; $3562: $00
    nop                                           ; $3563: $00
    nop                                           ; $3564: $00
    nop                                           ; $3565: $00
    nop                                           ; $3566: $00
    nop                                           ; $3567: $00
    nop                                           ; $3568: $00
    nop                                           ; $3569: $00
    nop                                           ; $356a: $00
    nop                                           ; $356b: $00
    nop                                           ; $356c: $00
    nop                                           ; $356d: $00
    nop                                           ; $356e: $00
    nop                                           ; $356f: $00
    nop                                           ; $3570: $00
    nop                                           ; $3571: $00
    nop                                           ; $3572: $00
    nop                                           ; $3573: $00
    nop                                           ; $3574: $00
    nop                                           ; $3575: $00
    nop                                           ; $3576: $00
    nop                                           ; $3577: $00
    nop                                           ; $3578: $00
    nop                                           ; $3579: $00
    nop                                           ; $357a: $00
    nop                                           ; $357b: $00
    nop                                           ; $357c: $00
    nop                                           ; $357d: $00
    nop                                           ; $357e: $00
    nop                                           ; $357f: $00
    nop                                           ; $3580: $00
    nop                                           ; $3581: $00
    nop                                           ; $3582: $00
    nop                                           ; $3583: $00
    nop                                           ; $3584: $00
    nop                                           ; $3585: $00
    nop                                           ; $3586: $00
    nop                                           ; $3587: $00
    nop                                           ; $3588: $00
    nop                                           ; $3589: $00
    nop                                           ; $358a: $00
    nop                                           ; $358b: $00
    nop                                           ; $358c: $00
    nop                                           ; $358d: $00
    nop                                           ; $358e: $00
    nop                                           ; $358f: $00
    nop                                           ; $3590: $00
    nop                                           ; $3591: $00
    nop                                           ; $3592: $00
    nop                                           ; $3593: $00
    nop                                           ; $3594: $00
    nop                                           ; $3595: $00
    nop                                           ; $3596: $00
    nop                                           ; $3597: $00
    nop                                           ; $3598: $00
    nop                                           ; $3599: $00
    nop                                           ; $359a: $00
    nop                                           ; $359b: $00
    nop                                           ; $359c: $00
    nop                                           ; $359d: $00
    nop                                           ; $359e: $00
    nop                                           ; $359f: $00
    nop                                           ; $35a0: $00
    nop                                           ; $35a1: $00
    nop                                           ; $35a2: $00
    nop                                           ; $35a3: $00
    nop                                           ; $35a4: $00
    nop                                           ; $35a5: $00
    nop                                           ; $35a6: $00
    nop                                           ; $35a7: $00
    nop                                           ; $35a8: $00
    nop                                           ; $35a9: $00
    nop                                           ; $35aa: $00
    nop                                           ; $35ab: $00
    nop                                           ; $35ac: $00
    nop                                           ; $35ad: $00
    nop                                           ; $35ae: $00
    nop                                           ; $35af: $00
    nop                                           ; $35b0: $00
    nop                                           ; $35b1: $00
    nop                                           ; $35b2: $00
    nop                                           ; $35b3: $00
    nop                                           ; $35b4: $00
    nop                                           ; $35b5: $00
    nop                                           ; $35b6: $00
    nop                                           ; $35b7: $00
    nop                                           ; $35b8: $00
    nop                                           ; $35b9: $00
    nop                                           ; $35ba: $00
    nop                                           ; $35bb: $00
    nop                                           ; $35bc: $00
    nop                                           ; $35bd: $00
    nop                                           ; $35be: $00
    nop                                           ; $35bf: $00
    nop                                           ; $35c0: $00
    nop                                           ; $35c1: $00
    nop                                           ; $35c2: $00
    nop                                           ; $35c3: $00
    nop                                           ; $35c4: $00
    nop                                           ; $35c5: $00
    nop                                           ; $35c6: $00
    nop                                           ; $35c7: $00
    nop                                           ; $35c8: $00
    nop                                           ; $35c9: $00
    nop                                           ; $35ca: $00
    nop                                           ; $35cb: $00
    nop                                           ; $35cc: $00
    nop                                           ; $35cd: $00
    nop                                           ; $35ce: $00
    nop                                           ; $35cf: $00
    nop                                           ; $35d0: $00
    nop                                           ; $35d1: $00
    nop                                           ; $35d2: $00
    nop                                           ; $35d3: $00
    nop                                           ; $35d4: $00
    nop                                           ; $35d5: $00
    nop                                           ; $35d6: $00
    nop                                           ; $35d7: $00
    nop                                           ; $35d8: $00
    nop                                           ; $35d9: $00
    nop                                           ; $35da: $00
    nop                                           ; $35db: $00
    nop                                           ; $35dc: $00
    nop                                           ; $35dd: $00
    nop                                           ; $35de: $00
    nop                                           ; $35df: $00
    nop                                           ; $35e0: $00
    nop                                           ; $35e1: $00
    nop                                           ; $35e2: $00
    nop                                           ; $35e3: $00
    nop                                           ; $35e4: $00
    nop                                           ; $35e5: $00
    nop                                           ; $35e6: $00
    nop                                           ; $35e7: $00
    nop                                           ; $35e8: $00
    nop                                           ; $35e9: $00
    nop                                           ; $35ea: $00
    nop                                           ; $35eb: $00
    nop                                           ; $35ec: $00
    nop                                           ; $35ed: $00
    nop                                           ; $35ee: $00
    nop                                           ; $35ef: $00
    nop                                           ; $35f0: $00
    nop                                           ; $35f1: $00
    nop                                           ; $35f2: $00
    nop                                           ; $35f3: $00
    nop                                           ; $35f4: $00
    nop                                           ; $35f5: $00
    nop                                           ; $35f6: $00
    nop                                           ; $35f7: $00
    nop                                           ; $35f8: $00
    nop                                           ; $35f9: $00
    nop                                           ; $35fa: $00
    nop                                           ; $35fb: $00
    nop                                           ; $35fc: $00
    nop                                           ; $35fd: $00
    nop                                           ; $35fe: $00
    nop                                           ; $35ff: $00
    nop                                           ; $3600: $00
    nop                                           ; $3601: $00
    nop                                           ; $3602: $00
    nop                                           ; $3603: $00
    nop                                           ; $3604: $00
    nop                                           ; $3605: $00
    nop                                           ; $3606: $00
    nop                                           ; $3607: $00
    nop                                           ; $3608: $00
    nop                                           ; $3609: $00
    nop                                           ; $360a: $00
    nop                                           ; $360b: $00
    nop                                           ; $360c: $00
    nop                                           ; $360d: $00
    nop                                           ; $360e: $00
    nop                                           ; $360f: $00
    nop                                           ; $3610: $00
    nop                                           ; $3611: $00
    nop                                           ; $3612: $00
    nop                                           ; $3613: $00
    nop                                           ; $3614: $00
    nop                                           ; $3615: $00
    nop                                           ; $3616: $00
    nop                                           ; $3617: $00
    nop                                           ; $3618: $00
    nop                                           ; $3619: $00
    nop                                           ; $361a: $00
    nop                                           ; $361b: $00
    nop                                           ; $361c: $00
    nop                                           ; $361d: $00
    nop                                           ; $361e: $00
    nop                                           ; $361f: $00
    nop                                           ; $3620: $00
    nop                                           ; $3621: $00
    nop                                           ; $3622: $00
    nop                                           ; $3623: $00
    nop                                           ; $3624: $00
    nop                                           ; $3625: $00
    nop                                           ; $3626: $00
    nop                                           ; $3627: $00
    nop                                           ; $3628: $00
    nop                                           ; $3629: $00
    nop                                           ; $362a: $00
    nop                                           ; $362b: $00
    nop                                           ; $362c: $00
    nop                                           ; $362d: $00
    nop                                           ; $362e: $00
    nop                                           ; $362f: $00
    nop                                           ; $3630: $00
    nop                                           ; $3631: $00
    nop                                           ; $3632: $00
    nop                                           ; $3633: $00
    nop                                           ; $3634: $00
    nop                                           ; $3635: $00
    nop                                           ; $3636: $00
    nop                                           ; $3637: $00
    nop                                           ; $3638: $00
    nop                                           ; $3639: $00
    nop                                           ; $363a: $00
    nop                                           ; $363b: $00
    nop                                           ; $363c: $00
    nop                                           ; $363d: $00
    nop                                           ; $363e: $00
    nop                                           ; $363f: $00
    nop                                           ; $3640: $00
    nop                                           ; $3641: $00
    nop                                           ; $3642: $00
    nop                                           ; $3643: $00
    nop                                           ; $3644: $00
    nop                                           ; $3645: $00
    nop                                           ; $3646: $00
    nop                                           ; $3647: $00
    nop                                           ; $3648: $00
    nop                                           ; $3649: $00
    nop                                           ; $364a: $00
    nop                                           ; $364b: $00
    nop                                           ; $364c: $00
    nop                                           ; $364d: $00
    nop                                           ; $364e: $00
    nop                                           ; $364f: $00
    nop                                           ; $3650: $00
    nop                                           ; $3651: $00
    nop                                           ; $3652: $00
    nop                                           ; $3653: $00
    nop                                           ; $3654: $00
    nop                                           ; $3655: $00
    nop                                           ; $3656: $00
    nop                                           ; $3657: $00
    nop                                           ; $3658: $00
    nop                                           ; $3659: $00
    nop                                           ; $365a: $00
    nop                                           ; $365b: $00
    nop                                           ; $365c: $00
    nop                                           ; $365d: $00
    nop                                           ; $365e: $00
    nop                                           ; $365f: $00

Jump_000_3660:
    nop                                           ; $3660: $00
    nop                                           ; $3661: $00
    nop                                           ; $3662: $00
    nop                                           ; $3663: $00
    nop                                           ; $3664: $00
    nop                                           ; $3665: $00
    nop                                           ; $3666: $00
    nop                                           ; $3667: $00
    nop                                           ; $3668: $00
    nop                                           ; $3669: $00
    nop                                           ; $366a: $00
    nop                                           ; $366b: $00
    nop                                           ; $366c: $00
    nop                                           ; $366d: $00
    nop                                           ; $366e: $00
    nop                                           ; $366f: $00
    nop                                           ; $3670: $00
    nop                                           ; $3671: $00
    nop                                           ; $3672: $00
    nop                                           ; $3673: $00
    nop                                           ; $3674: $00
    nop                                           ; $3675: $00
    nop                                           ; $3676: $00
    nop                                           ; $3677: $00
    nop                                           ; $3678: $00
    nop                                           ; $3679: $00
    nop                                           ; $367a: $00
    nop                                           ; $367b: $00
    nop                                           ; $367c: $00
    nop                                           ; $367d: $00
    nop                                           ; $367e: $00
    nop                                           ; $367f: $00
    nop                                           ; $3680: $00
    nop                                           ; $3681: $00
    nop                                           ; $3682: $00
    nop                                           ; $3683: $00
    nop                                           ; $3684: $00
    nop                                           ; $3685: $00
    nop                                           ; $3686: $00
    nop                                           ; $3687: $00
    nop                                           ; $3688: $00
    nop                                           ; $3689: $00
    nop                                           ; $368a: $00
    nop                                           ; $368b: $00
    nop                                           ; $368c: $00
    nop                                           ; $368d: $00
    nop                                           ; $368e: $00
    nop                                           ; $368f: $00
    nop                                           ; $3690: $00
    nop                                           ; $3691: $00
    nop                                           ; $3692: $00
    nop                                           ; $3693: $00
    nop                                           ; $3694: $00
    nop                                           ; $3695: $00
    nop                                           ; $3696: $00
    nop                                           ; $3697: $00
    nop                                           ; $3698: $00
    nop                                           ; $3699: $00
    nop                                           ; $369a: $00
    nop                                           ; $369b: $00
    nop                                           ; $369c: $00
    nop                                           ; $369d: $00
    nop                                           ; $369e: $00
    nop                                           ; $369f: $00
    nop                                           ; $36a0: $00
    nop                                           ; $36a1: $00
    nop                                           ; $36a2: $00
    nop                                           ; $36a3: $00
    nop                                           ; $36a4: $00
    nop                                           ; $36a5: $00
    nop                                           ; $36a6: $00
    nop                                           ; $36a7: $00
    nop                                           ; $36a8: $00
    nop                                           ; $36a9: $00
    nop                                           ; $36aa: $00
    nop                                           ; $36ab: $00
    nop                                           ; $36ac: $00
    nop                                           ; $36ad: $00
    nop                                           ; $36ae: $00
    nop                                           ; $36af: $00
    nop                                           ; $36b0: $00
    nop                                           ; $36b1: $00
    nop                                           ; $36b2: $00
    nop                                           ; $36b3: $00
    nop                                           ; $36b4: $00
    nop                                           ; $36b5: $00
    nop                                           ; $36b6: $00
    nop                                           ; $36b7: $00
    nop                                           ; $36b8: $00
    nop                                           ; $36b9: $00
    nop                                           ; $36ba: $00
    nop                                           ; $36bb: $00
    nop                                           ; $36bc: $00
    nop                                           ; $36bd: $00
    nop                                           ; $36be: $00
    nop                                           ; $36bf: $00
    nop                                           ; $36c0: $00
    nop                                           ; $36c1: $00
    nop                                           ; $36c2: $00
    nop                                           ; $36c3: $00
    nop                                           ; $36c4: $00
    nop                                           ; $36c5: $00
    nop                                           ; $36c6: $00
    nop                                           ; $36c7: $00
    nop                                           ; $36c8: $00
    nop                                           ; $36c9: $00
    nop                                           ; $36ca: $00
    nop                                           ; $36cb: $00
    nop                                           ; $36cc: $00
    nop                                           ; $36cd: $00
    nop                                           ; $36ce: $00
    nop                                           ; $36cf: $00
    nop                                           ; $36d0: $00
    nop                                           ; $36d1: $00
    nop                                           ; $36d2: $00
    nop                                           ; $36d3: $00
    nop                                           ; $36d4: $00
    nop                                           ; $36d5: $00
    nop                                           ; $36d6: $00
    nop                                           ; $36d7: $00
    nop                                           ; $36d8: $00
    nop                                           ; $36d9: $00
    nop                                           ; $36da: $00
    nop                                           ; $36db: $00
    nop                                           ; $36dc: $00
    nop                                           ; $36dd: $00
    nop                                           ; $36de: $00
    nop                                           ; $36df: $00
    nop                                           ; $36e0: $00
    nop                                           ; $36e1: $00
    nop                                           ; $36e2: $00
    nop                                           ; $36e3: $00
    nop                                           ; $36e4: $00
    nop                                           ; $36e5: $00
    nop                                           ; $36e6: $00
    nop                                           ; $36e7: $00
    nop                                           ; $36e8: $00
    nop                                           ; $36e9: $00
    nop                                           ; $36ea: $00
    nop                                           ; $36eb: $00
    nop                                           ; $36ec: $00
    nop                                           ; $36ed: $00
    nop                                           ; $36ee: $00
    nop                                           ; $36ef: $00
    nop                                           ; $36f0: $00
    nop                                           ; $36f1: $00
    nop                                           ; $36f2: $00
    nop                                           ; $36f3: $00
    nop                                           ; $36f4: $00
    nop                                           ; $36f5: $00
    nop                                           ; $36f6: $00
    nop                                           ; $36f7: $00
    nop                                           ; $36f8: $00
    nop                                           ; $36f9: $00
    nop                                           ; $36fa: $00
    nop                                           ; $36fb: $00
    nop                                           ; $36fc: $00
    nop                                           ; $36fd: $00
    nop                                           ; $36fe: $00
    nop                                           ; $36ff: $00
    nop                                           ; $3700: $00
    nop                                           ; $3701: $00
    nop                                           ; $3702: $00
    nop                                           ; $3703: $00
    nop                                           ; $3704: $00
    nop                                           ; $3705: $00
    nop                                           ; $3706: $00
    nop                                           ; $3707: $00
    nop                                           ; $3708: $00
    nop                                           ; $3709: $00
    nop                                           ; $370a: $00
    nop                                           ; $370b: $00
    nop                                           ; $370c: $00
    nop                                           ; $370d: $00
    nop                                           ; $370e: $00
    nop                                           ; $370f: $00
    nop                                           ; $3710: $00
    nop                                           ; $3711: $00
    nop                                           ; $3712: $00
    nop                                           ; $3713: $00
    nop                                           ; $3714: $00
    nop                                           ; $3715: $00
    nop                                           ; $3716: $00
    nop                                           ; $3717: $00
    nop                                           ; $3718: $00
    nop                                           ; $3719: $00
    nop                                           ; $371a: $00
    nop                                           ; $371b: $00
    nop                                           ; $371c: $00
    nop                                           ; $371d: $00
    nop                                           ; $371e: $00
    nop                                           ; $371f: $00
    nop                                           ; $3720: $00
    nop                                           ; $3721: $00
    nop                                           ; $3722: $00
    nop                                           ; $3723: $00
    nop                                           ; $3724: $00
    nop                                           ; $3725: $00
    nop                                           ; $3726: $00
    nop                                           ; $3727: $00
    nop                                           ; $3728: $00
    nop                                           ; $3729: $00
    nop                                           ; $372a: $00
    nop                                           ; $372b: $00
    nop                                           ; $372c: $00
    nop                                           ; $372d: $00
    nop                                           ; $372e: $00
    nop                                           ; $372f: $00
    nop                                           ; $3730: $00
    nop                                           ; $3731: $00
    nop                                           ; $3732: $00
    nop                                           ; $3733: $00
    nop                                           ; $3734: $00
    nop                                           ; $3735: $00
    nop                                           ; $3736: $00
    nop                                           ; $3737: $00
    nop                                           ; $3738: $00
    nop                                           ; $3739: $00
    nop                                           ; $373a: $00
    nop                                           ; $373b: $00
    nop                                           ; $373c: $00
    nop                                           ; $373d: $00
    nop                                           ; $373e: $00
    nop                                           ; $373f: $00
    nop                                           ; $3740: $00
    nop                                           ; $3741: $00
    nop                                           ; $3742: $00
    nop                                           ; $3743: $00
    nop                                           ; $3744: $00
    nop                                           ; $3745: $00
    nop                                           ; $3746: $00
    nop                                           ; $3747: $00
    nop                                           ; $3748: $00
    nop                                           ; $3749: $00
    nop                                           ; $374a: $00
    nop                                           ; $374b: $00
    nop                                           ; $374c: $00
    nop                                           ; $374d: $00
    nop                                           ; $374e: $00
    nop                                           ; $374f: $00
    nop                                           ; $3750: $00
    nop                                           ; $3751: $00
    nop                                           ; $3752: $00
    nop                                           ; $3753: $00
    nop                                           ; $3754: $00
    nop                                           ; $3755: $00
    nop                                           ; $3756: $00
    nop                                           ; $3757: $00
    nop                                           ; $3758: $00
    nop                                           ; $3759: $00
    nop                                           ; $375a: $00
    nop                                           ; $375b: $00
    nop                                           ; $375c: $00
    nop                                           ; $375d: $00
    nop                                           ; $375e: $00
    nop                                           ; $375f: $00
    nop                                           ; $3760: $00
    nop                                           ; $3761: $00
    nop                                           ; $3762: $00
    nop                                           ; $3763: $00
    nop                                           ; $3764: $00
    nop                                           ; $3765: $00
    nop                                           ; $3766: $00
    nop                                           ; $3767: $00
    nop                                           ; $3768: $00
    nop                                           ; $3769: $00
    nop                                           ; $376a: $00
    nop                                           ; $376b: $00
    nop                                           ; $376c: $00
    nop                                           ; $376d: $00
    nop                                           ; $376e: $00
    nop                                           ; $376f: $00
    nop                                           ; $3770: $00
    nop                                           ; $3771: $00
    nop                                           ; $3772: $00
    nop                                           ; $3773: $00
    nop                                           ; $3774: $00
    nop                                           ; $3775: $00
    nop                                           ; $3776: $00
    nop                                           ; $3777: $00
    nop                                           ; $3778: $00
    nop                                           ; $3779: $00
    nop                                           ; $377a: $00
    nop                                           ; $377b: $00
    nop                                           ; $377c: $00
    nop                                           ; $377d: $00
    nop                                           ; $377e: $00
    nop                                           ; $377f: $00
    nop                                           ; $3780: $00
    nop                                           ; $3781: $00
    nop                                           ; $3782: $00
    nop                                           ; $3783: $00
    nop                                           ; $3784: $00
    nop                                           ; $3785: $00
    nop                                           ; $3786: $00
    nop                                           ; $3787: $00
    nop                                           ; $3788: $00
    nop                                           ; $3789: $00
    nop                                           ; $378a: $00
    nop                                           ; $378b: $00
    nop                                           ; $378c: $00
    nop                                           ; $378d: $00
    nop                                           ; $378e: $00
    nop                                           ; $378f: $00
    nop                                           ; $3790: $00
    nop                                           ; $3791: $00
    nop                                           ; $3792: $00
    nop                                           ; $3793: $00
    nop                                           ; $3794: $00
    nop                                           ; $3795: $00
    nop                                           ; $3796: $00
    nop                                           ; $3797: $00
    nop                                           ; $3798: $00
    nop                                           ; $3799: $00
    nop                                           ; $379a: $00
    nop                                           ; $379b: $00
    nop                                           ; $379c: $00
    nop                                           ; $379d: $00
    nop                                           ; $379e: $00
    nop                                           ; $379f: $00
    nop                                           ; $37a0: $00
    nop                                           ; $37a1: $00
    nop                                           ; $37a2: $00
    nop                                           ; $37a3: $00
    nop                                           ; $37a4: $00
    nop                                           ; $37a5: $00
    nop                                           ; $37a6: $00
    nop                                           ; $37a7: $00
    nop                                           ; $37a8: $00
    nop                                           ; $37a9: $00
    nop                                           ; $37aa: $00
    nop                                           ; $37ab: $00
    nop                                           ; $37ac: $00
    nop                                           ; $37ad: $00
    nop                                           ; $37ae: $00
    nop                                           ; $37af: $00
    nop                                           ; $37b0: $00
    nop                                           ; $37b1: $00
    nop                                           ; $37b2: $00
    nop                                           ; $37b3: $00
    nop                                           ; $37b4: $00
    nop                                           ; $37b5: $00
    nop                                           ; $37b6: $00
    nop                                           ; $37b7: $00
    nop                                           ; $37b8: $00
    nop                                           ; $37b9: $00
    nop                                           ; $37ba: $00
    nop                                           ; $37bb: $00
    nop                                           ; $37bc: $00
    nop                                           ; $37bd: $00
    nop                                           ; $37be: $00
    nop                                           ; $37bf: $00
    nop                                           ; $37c0: $00
    nop                                           ; $37c1: $00
    nop                                           ; $37c2: $00
    nop                                           ; $37c3: $00
    nop                                           ; $37c4: $00
    nop                                           ; $37c5: $00
    nop                                           ; $37c6: $00
    nop                                           ; $37c7: $00
    nop                                           ; $37c8: $00
    nop                                           ; $37c9: $00
    nop                                           ; $37ca: $00
    nop                                           ; $37cb: $00
    nop                                           ; $37cc: $00
    nop                                           ; $37cd: $00
    nop                                           ; $37ce: $00
    nop                                           ; $37cf: $00
    nop                                           ; $37d0: $00
    nop                                           ; $37d1: $00
    nop                                           ; $37d2: $00
    nop                                           ; $37d3: $00
    nop                                           ; $37d4: $00
    nop                                           ; $37d5: $00
    nop                                           ; $37d6: $00
    nop                                           ; $37d7: $00
    nop                                           ; $37d8: $00
    nop                                           ; $37d9: $00
    nop                                           ; $37da: $00
    nop                                           ; $37db: $00
    nop                                           ; $37dc: $00
    nop                                           ; $37dd: $00
    nop                                           ; $37de: $00
    nop                                           ; $37df: $00
    nop                                           ; $37e0: $00
    nop                                           ; $37e1: $00
    nop                                           ; $37e2: $00
    nop                                           ; $37e3: $00
    nop                                           ; $37e4: $00
    nop                                           ; $37e5: $00
    nop                                           ; $37e6: $00
    nop                                           ; $37e7: $00
    nop                                           ; $37e8: $00

Jump_000_37e9:
    nop                                           ; $37e9: $00
    nop                                           ; $37ea: $00
    nop                                           ; $37eb: $00
    nop                                           ; $37ec: $00
    nop                                           ; $37ed: $00
    nop                                           ; $37ee: $00
    nop                                           ; $37ef: $00
    nop                                           ; $37f0: $00
    nop                                           ; $37f1: $00
    nop                                           ; $37f2: $00
    nop                                           ; $37f3: $00
    nop                                           ; $37f4: $00
    nop                                           ; $37f5: $00
    nop                                           ; $37f6: $00
    nop                                           ; $37f7: $00
    nop                                           ; $37f8: $00
    nop                                           ; $37f9: $00
    nop                                           ; $37fa: $00
    nop                                           ; $37fb: $00
    nop                                           ; $37fc: $00
    nop                                           ; $37fd: $00
    nop                                           ; $37fe: $00
    nop                                           ; $37ff: $00
    nop                                           ; $3800: $00
    ld bc, $0302                                  ; $3801: $01 $02 $03
    inc b                                         ; $3804: $04
    dec b                                         ; $3805: $05
    ld b, $07                                     ; $3806: $06 $07
    ld [$0a09], sp                                ; $3808: $08 $09 $0a
    dec bc                                        ; $380b: $0b
    inc c                                         ; $380c: $0c
    dec c                                         ; $380d: $0d
    ld c, $0f                                     ; $380e: $0e $0f
    db $10                                        ; $3810: $10
    ld de, $1312                                  ; $3811: $11 $12 $13
    inc d                                         ; $3814: $14
    dec d                                         ; $3815: $15
    ld d, $17                                     ; $3816: $16 $17
    jr jr_000_3833                                ; $3818: $18 $19

    ld a, [de]                                    ; $381a: $1a
    dec de                                        ; $381b: $1b
    inc e                                         ; $381c: $1c
    dec e                                         ; $381d: $1d
    ld e, $1f                                     ; $381e: $1e $1f
    jr nz, jr_000_3843                            ; $3820: $20 $21

    ld [hl+], a                                   ; $3822: $22
    inc hl                                        ; $3823: $23
    inc h                                         ; $3824: $24
    dec h                                         ; $3825: $25
    ld h, $27                                     ; $3826: $26 $27
    jr z, jr_000_3853                             ; $3828: $28 $29

    ld a, [hl+]                                   ; $382a: $2a
    dec hl                                        ; $382b: $2b
    inc l                                         ; $382c: $2c
    dec l                                         ; $382d: $2d
    ld l, $2f                                     ; $382e: $2e $2f
    jr nc, jr_000_3863                            ; $3830: $30 $31

    ld [hl-], a                                   ; $3832: $32

jr_000_3833:
    inc sp                                        ; $3833: $33
    inc [hl]                                      ; $3834: $34
    dec [hl]                                      ; $3835: $35
    ld [hl], $37                                  ; $3836: $36 $37
    jr c, jr_000_3873                             ; $3838: $38 $39

    ld a, [hl-]                                   ; $383a: $3a
    dec sp                                        ; $383b: $3b
    inc a                                         ; $383c: $3c
    dec a                                         ; $383d: $3d
    ld a, $3f                                     ; $383e: $3e $3f
    ld b, b                                       ; $3840: $40
    ld b, c                                       ; $3841: $41
    ld b, d                                       ; $3842: $42

jr_000_3843:
    ld b, e                                       ; $3843: $43
    ld b, h                                       ; $3844: $44
    ld b, l                                       ; $3845: $45
    ld b, [hl]                                    ; $3846: $46
    ld b, a                                       ; $3847: $47
    ld c, b                                       ; $3848: $48
    ld c, c                                       ; $3849: $49
    ld c, d                                       ; $384a: $4a
    ld c, e                                       ; $384b: $4b
    ld c, h                                       ; $384c: $4c
    ld c, l                                       ; $384d: $4d
    ld c, [hl]                                    ; $384e: $4e
    ld c, a                                       ; $384f: $4f
    ld d, b                                       ; $3850: $50
    ld d, c                                       ; $3851: $51
    ld d, d                                       ; $3852: $52

jr_000_3853:
    ld d, e                                       ; $3853: $53
    ld d, h                                       ; $3854: $54
    ld d, l                                       ; $3855: $55
    ld d, [hl]                                    ; $3856: $56
    ld d, a                                       ; $3857: $57
    ld e, b                                       ; $3858: $58
    ld e, c                                       ; $3859: $59
    ld e, d                                       ; $385a: $5a
    ld e, e                                       ; $385b: $5b
    ld e, h                                       ; $385c: $5c
    ld e, l                                       ; $385d: $5d
    ld e, [hl]                                    ; $385e: $5e
    ld e, a                                       ; $385f: $5f
    ld h, b                                       ; $3860: $60
    ld h, c                                       ; $3861: $61
    ld h, d                                       ; $3862: $62

jr_000_3863:
    ld h, e                                       ; $3863: $63
    ld h, h                                       ; $3864: $64
    ld h, l                                       ; $3865: $65
    ld h, [hl]                                    ; $3866: $66
    ld h, a                                       ; $3867: $67
    ld l, b                                       ; $3868: $68
    ld l, c                                       ; $3869: $69
    ld l, d                                       ; $386a: $6a
    ld l, e                                       ; $386b: $6b
    ld l, h                                       ; $386c: $6c
    ld l, l                                       ; $386d: $6d
    ld l, [hl]                                    ; $386e: $6e
    ld l, a                                       ; $386f: $6f
    ld [hl], b                                    ; $3870: $70
    ld [hl], c                                    ; $3871: $71
    ld [hl], d                                    ; $3872: $72

jr_000_3873:
    ld [hl], e                                    ; $3873: $73
    ld [hl], h                                    ; $3874: $74
    ld [hl], l                                    ; $3875: $75
    halt                                          ; $3876: $76
    ld [hl], a                                    ; $3877: $77
    ld a, b                                       ; $3878: $78
    ld a, c                                       ; $3879: $79
    ld a, d                                       ; $387a: $7a
    ld a, e                                       ; $387b: $7b
    ld a, h                                       ; $387c: $7c
    ld a, l                                       ; $387d: $7d
    ld a, [hl]                                    ; $387e: $7e
    ld a, a                                       ; $387f: $7f
    add b                                         ; $3880: $80
    add c                                         ; $3881: $81
    add d                                         ; $3882: $82
    add e                                         ; $3883: $83
    add h                                         ; $3884: $84
    add l                                         ; $3885: $85
    add [hl]                                      ; $3886: $86
    add a                                         ; $3887: $87
    adc b                                         ; $3888: $88
    adc c                                         ; $3889: $89
    adc d                                         ; $388a: $8a
    adc e                                         ; $388b: $8b
    adc h                                         ; $388c: $8c
    adc l                                         ; $388d: $8d
    adc [hl]                                      ; $388e: $8e
    adc a                                         ; $388f: $8f
    sub b                                         ; $3890: $90
    sub c                                         ; $3891: $91
    sub d                                         ; $3892: $92
    sub e                                         ; $3893: $93
    sub h                                         ; $3894: $94
    sub l                                         ; $3895: $95
    sub [hl]                                      ; $3896: $96
    sub a                                         ; $3897: $97
    sbc b                                         ; $3898: $98
    sbc c                                         ; $3899: $99
    sbc d                                         ; $389a: $9a
    sbc e                                         ; $389b: $9b
    sbc h                                         ; $389c: $9c
    sbc l                                         ; $389d: $9d
    sbc [hl]                                      ; $389e: $9e
    sbc a                                         ; $389f: $9f
    and b                                         ; $38a0: $a0
    and c                                         ; $38a1: $a1
    and d                                         ; $38a2: $a2
    and e                                         ; $38a3: $a3
    and h                                         ; $38a4: $a4
    and l                                         ; $38a5: $a5
    and [hl]                                      ; $38a6: $a6
    and a                                         ; $38a7: $a7
    xor b                                         ; $38a8: $a8
    xor c                                         ; $38a9: $a9
    xor d                                         ; $38aa: $aa
    xor e                                         ; $38ab: $ab
    xor h                                         ; $38ac: $ac
    xor l                                         ; $38ad: $ad
    xor [hl]                                      ; $38ae: $ae
    xor a                                         ; $38af: $af
    or b                                          ; $38b0: $b0
    or c                                          ; $38b1: $b1
    or d                                          ; $38b2: $b2
    or e                                          ; $38b3: $b3
    or h                                          ; $38b4: $b4
    or l                                          ; $38b5: $b5
    or [hl]                                       ; $38b6: $b6
    or a                                          ; $38b7: $b7
    cp b                                          ; $38b8: $b8
    cp c                                          ; $38b9: $b9
    cp d                                          ; $38ba: $ba
    cp e                                          ; $38bb: $bb
    cp h                                          ; $38bc: $bc
    cp l                                          ; $38bd: $bd
    cp [hl]                                       ; $38be: $be
    cp a                                          ; $38bf: $bf
    ret nz                                        ; $38c0: $c0

    pop bc                                        ; $38c1: $c1
    jp nz, $c4c3                                  ; $38c2: $c2 $c3 $c4

    push bc                                       ; $38c5: $c5
    add $c7                                       ; $38c6: $c6 $c7
    ret z                                         ; $38c8: $c8

    ret                                           ; $38c9: $c9


jr_000_38ca:
    jp z, $cccb                                   ; $38ca: $ca $cb $cc

    call $cfce                                    ; $38cd: $cd $ce $cf
    ret nc                                        ; $38d0: $d0

    pop de                                        ; $38d1: $d1
    jp nc, $d4d3                                  ; $38d2: $d2 $d3 $d4

    push de                                       ; $38d5: $d5
    sub $d7                                       ; $38d6: $d6 $d7
    ret c                                         ; $38d8: $d8

    reti                                          ; $38d9: $d9


    jp c, $dcdb                                   ; $38da: $da $db $dc

    db $dd                                        ; $38dd: $dd
    sbc $df                                       ; $38de: $de $df
    ldh [$ffe1], a                                ; $38e0: $e0 $e1

jr_000_38e2:
    ldh [c], a                                    ; $38e2: $e2
    db $e3                                        ; $38e3: $e3
    db $e4                                        ; $38e4: $e4
    push hl                                       ; $38e5: $e5
    and $e7                                       ; $38e6: $e6 $e7
    add sp, -$17                                  ; $38e8: $e8 $e9
    ld [$eceb], a                                 ; $38ea: $ea $eb $ec
    db $ed                                        ; $38ed: $ed
    xor $ef                                       ; $38ee: $ee $ef
    ldh a, [$fff1]                                ; $38f0: $f0 $f1
    ldh a, [c]                                    ; $38f2: $f2
    di                                            ; $38f3: $f3
    db $f4                                        ; $38f4: $f4
    push af                                       ; $38f5: $f5
    or $f7                                        ; $38f6: $f6 $f7
    ld hl, sp-$07                                 ; $38f8: $f8 $f9

jr_000_38fa:
    ld a, [$fcfb]                                 ; $38fa: $fa $fb $fc
    db $fd                                        ; $38fd: $fd
    cp $ff                                        ; $38fe: $fe $ff
    nop                                           ; $3900: $00
    add b                                         ; $3901: $80
    ld bc, $0281                                  ; $3902: $01 $81 $02
    add d                                         ; $3905: $82
    inc bc                                        ; $3906: $03
    add e                                         ; $3907: $83
    inc b                                         ; $3908: $04
    add h                                         ; $3909: $84
    dec b                                         ; $390a: $05
    add l                                         ; $390b: $85
    ld b, $86                                     ; $390c: $06 $86
    rlca                                          ; $390e: $07
    add a                                         ; $390f: $87
    ld [$0988], sp                                ; $3910: $08 $88 $09
    adc c                                         ; $3913: $89
    ld a, [bc]                                    ; $3914: $0a
    adc d                                         ; $3915: $8a
    dec bc                                        ; $3916: $0b
    adc e                                         ; $3917: $8b
    inc c                                         ; $3918: $0c
    adc h                                         ; $3919: $8c
    dec c                                         ; $391a: $0d
    adc l                                         ; $391b: $8d
    ld c, $8e                                     ; $391c: $0e $8e
    rrca                                          ; $391e: $0f
    adc a                                         ; $391f: $8f
    db $10                                        ; $3920: $10
    sub b                                         ; $3921: $90
    ld de, $1291                                  ; $3922: $11 $91 $12
    sub d                                         ; $3925: $92
    inc de                                        ; $3926: $13
    sub e                                         ; $3927: $93
    inc d                                         ; $3928: $14
    sub h                                         ; $3929: $94

jr_000_392a:
    dec d                                         ; $392a: $15
    sub l                                         ; $392b: $95
    ld d, $96                                     ; $392c: $16 $96
    rla                                           ; $392e: $17
    sub a                                         ; $392f: $97
    jr jr_000_38ca                                ; $3930: $18 $98

    add hl, de                                    ; $3932: $19
    sbc c                                         ; $3933: $99
    ld a, [de]                                    ; $3934: $1a
    sbc d                                         ; $3935: $9a
    dec de                                        ; $3936: $1b
    sbc e                                         ; $3937: $9b
    inc e                                         ; $3938: $1c
    sbc h                                         ; $3939: $9c
    dec e                                         ; $393a: $1d
    sbc l                                         ; $393b: $9d
    ld e, $9e                                     ; $393c: $1e $9e
    rra                                           ; $393e: $1f
    sbc a                                         ; $393f: $9f
    jr nz, jr_000_38e2                            ; $3940: $20 $a0

    ld hl, $22a1                                  ; $3942: $21 $a1 $22
    and d                                         ; $3945: $a2
    inc hl                                        ; $3946: $23
    and e                                         ; $3947: $a3
    inc h                                         ; $3948: $24
    and h                                         ; $3949: $a4
    dec h                                         ; $394a: $25
    and l                                         ; $394b: $a5
    ld h, $a6                                     ; $394c: $26 $a6
    daa                                           ; $394e: $27
    and a                                         ; $394f: $a7
    jr z, jr_000_38fa                             ; $3950: $28 $a8

    add hl, hl                                    ; $3952: $29
    xor c                                         ; $3953: $a9
    ld a, [hl+]                                   ; $3954: $2a
    xor d                                         ; $3955: $aa
    dec hl                                        ; $3956: $2b
    xor e                                         ; $3957: $ab
    inc l                                         ; $3958: $2c
    xor h                                         ; $3959: $ac
    dec l                                         ; $395a: $2d
    xor l                                         ; $395b: $ad
    ld l, $ae                                     ; $395c: $2e $ae
    cpl                                           ; $395e: $2f
    xor a                                         ; $395f: $af
    jr nc, @-$4e                                  ; $3960: $30 $b0

    ld sp, $32b1                                  ; $3962: $31 $b1 $32
    or d                                          ; $3965: $b2
    inc sp                                        ; $3966: $33
    or e                                          ; $3967: $b3
    inc [hl]                                      ; $3968: $34
    or h                                          ; $3969: $b4
    dec [hl]                                      ; $396a: $35
    or l                                          ; $396b: $b5
    ld [hl], $b6                                  ; $396c: $36 $b6
    scf                                           ; $396e: $37
    or a                                          ; $396f: $b7
    jr c, jr_000_392a                             ; $3970: $38 $b8

    add hl, sp                                    ; $3972: $39
    cp c                                          ; $3973: $b9
    ld a, [hl-]                                   ; $3974: $3a
    cp d                                          ; $3975: $ba
    dec sp                                        ; $3976: $3b
    cp e                                          ; $3977: $bb
    inc a                                         ; $3978: $3c
    cp h                                          ; $3979: $bc
    dec a                                         ; $397a: $3d
    cp l                                          ; $397b: $bd
    ld a, $be                                     ; $397c: $3e $be
    ccf                                           ; $397e: $3f
    cp a                                          ; $397f: $bf
    ld b, b                                       ; $3980: $40
    ret nz                                        ; $3981: $c0

    ld b, c                                       ; $3982: $41
    pop bc                                        ; $3983: $c1
    ld b, d                                       ; $3984: $42
    jp nz, $c343                                  ; $3985: $c2 $43 $c3

    ld b, h                                       ; $3988: $44
    call nz, $c545                                ; $3989: $c4 $45 $c5
    ld b, [hl]                                    ; $398c: $46
    add $47                                       ; $398d: $c6 $47
    rst RST_00                                    ; $398f: $c7
    ld c, b                                       ; $3990: $48
    ret z                                         ; $3991: $c8

    ld c, c                                       ; $3992: $49
    ret                                           ; $3993: $c9


    ld c, d                                       ; $3994: $4a
    jp z, $cb4b                                   ; $3995: $ca $4b $cb

    ld c, h                                       ; $3998: $4c
    call z, $cd4d                                 ; $3999: $cc $4d $cd
    ld c, [hl]                                    ; $399c: $4e
    adc $4f                                       ; $399d: $ce $4f
    rst RST_08                                    ; $399f: $cf
    ld d, b                                       ; $39a0: $50
    ret nc                                        ; $39a1: $d0

    ld d, c                                       ; $39a2: $51
    pop de                                        ; $39a3: $d1
    ld d, d                                       ; $39a4: $52
    jp nc, $d353                                  ; $39a5: $d2 $53 $d3

    ld d, h                                       ; $39a8: $54
    call nc, $d555                                ; $39a9: $d4 $55 $d5
    ld d, [hl]                                    ; $39ac: $56
    sub $57                                       ; $39ad: $d6 $57
    rst $10                                       ; $39af: $d7
    ld e, b                                       ; $39b0: $58
    ret c                                         ; $39b1: $d8

    ld e, c                                       ; $39b2: $59
    reti                                          ; $39b3: $d9


    ld e, d                                       ; $39b4: $5a
    jp c, $db5b                                   ; $39b5: $da $5b $db

    ld e, h                                       ; $39b8: $5c
    call c, $dd5d                                 ; $39b9: $dc $5d $dd
    ld e, [hl]                                    ; $39bc: $5e
    sbc $5f                                       ; $39bd: $de $5f
    rst RST_18                                    ; $39bf: $df
    ld h, b                                       ; $39c0: $60
    ldh [$ff61], a                                ; $39c1: $e0 $61
    pop hl                                        ; $39c3: $e1
    ld h, d                                       ; $39c4: $62
    ldh [c], a                                    ; $39c5: $e2
    ld h, e                                       ; $39c6: $63
    db $e3                                        ; $39c7: $e3
    ld h, h                                       ; $39c8: $64
    db $e4                                        ; $39c9: $e4
    ld h, l                                       ; $39ca: $65
    push hl                                       ; $39cb: $e5
    ld h, [hl]                                    ; $39cc: $66
    and $67                                       ; $39cd: $e6 $67
    rst $20                                       ; $39cf: $e7
    ld l, b                                       ; $39d0: $68
    add sp, $69                                   ; $39d1: $e8 $69
    jp hl                                         ; $39d3: $e9


    ld l, d                                       ; $39d4: $6a
    ld [$eb6b], a                                 ; $39d5: $ea $6b $eb
    ld l, h                                       ; $39d8: $6c
    db $ec                                        ; $39d9: $ec
    ld l, l                                       ; $39da: $6d
    db $ed                                        ; $39db: $ed
    ld l, [hl]                                    ; $39dc: $6e
    xor $6f                                       ; $39dd: $ee $6f
    rst $28                                       ; $39df: $ef
    ld [hl], b                                    ; $39e0: $70
    ldh a, [$ff71]                                ; $39e1: $f0 $71
    pop af                                        ; $39e3: $f1
    ld [hl], d                                    ; $39e4: $72
    ldh a, [c]                                    ; $39e5: $f2
    ld [hl], e                                    ; $39e6: $73
    di                                            ; $39e7: $f3
    ld [hl], h                                    ; $39e8: $74
    db $f4                                        ; $39e9: $f4
    ld [hl], l                                    ; $39ea: $75
    push af                                       ; $39eb: $f5
    halt                                          ; $39ec: $76
    or $77                                        ; $39ed: $f6 $77
    rst $30                                       ; $39ef: $f7
    ld a, b                                       ; $39f0: $78
    ld hl, sp+$79                                 ; $39f1: $f8 $79
    ld sp, hl                                     ; $39f3: $f9
    ld a, d                                       ; $39f4: $7a
    ld a, [$fb7b]                                 ; $39f5: $fa $7b $fb
    ld a, h                                       ; $39f8: $7c
    db $fc                                        ; $39f9: $fc
    ld a, l                                       ; $39fa: $7d
    db $fd                                        ; $39fb: $fd
    ld a, [hl]                                    ; $39fc: $7e
    cp $7f                                        ; $39fd: $fe $7f
    rst $38                                       ; $39ff: $ff
    nop                                           ; $3a00: $00
    ld b, b                                       ; $3a01: $40
    add b                                         ; $3a02: $80
    ret nz                                        ; $3a03: $c0

    ld bc, $8141                                  ; $3a04: $01 $41 $81
    pop bc                                        ; $3a07: $c1
    ld [bc], a                                    ; $3a08: $02
    ld b, d                                       ; $3a09: $42

Jump_000_3a0a:
    add d                                         ; $3a0a: $82
    jp nz, $4303                                  ; $3a0b: $c2 $03 $43

    add e                                         ; $3a0e: $83
    jp $4404                                      ; $3a0f: $c3 $04 $44


    add h                                         ; $3a12: $84
    call nz, $4505                                ; $3a13: $c4 $05 $45
    add l                                         ; $3a16: $85
    push bc                                       ; $3a17: $c5
    ld b, $46                                     ; $3a18: $06 $46
    add [hl]                                      ; $3a1a: $86
    add $07                                       ; $3a1b: $c6 $07
    ld b, a                                       ; $3a1d: $47
    add a                                         ; $3a1e: $87
    rst RST_00                                    ; $3a1f: $c7
    ld [$8848], sp                                ; $3a20: $08 $48 $88
    ret z                                         ; $3a23: $c8

    add hl, bc                                    ; $3a24: $09
    ld c, c                                       ; $3a25: $49
    adc c                                         ; $3a26: $89
    ret                                           ; $3a27: $c9


    ld a, [bc]                                    ; $3a28: $0a
    ld c, d                                       ; $3a29: $4a
    adc d                                         ; $3a2a: $8a
    jp z, $4b0b                                   ; $3a2b: $ca $0b $4b

    adc e                                         ; $3a2e: $8b
    rrc h                                         ; $3a2f: $cb $0c
    ld c, h                                       ; $3a31: $4c
    adc h                                         ; $3a32: $8c
    call z, $4d0d                                 ; $3a33: $cc $0d $4d
    adc l                                         ; $3a36: $8d
    call $4e0e                                    ; $3a37: $cd $0e $4e
    adc [hl]                                      ; $3a3a: $8e
    adc $0f                                       ; $3a3b: $ce $0f
    ld c, a                                       ; $3a3d: $4f
    adc a                                         ; $3a3e: $8f
    rst RST_08                                    ; $3a3f: $cf
    db $10                                        ; $3a40: $10
    ld d, b                                       ; $3a41: $50
    sub b                                         ; $3a42: $90
    ret nc                                        ; $3a43: $d0

    ld de, $9151                                  ; $3a44: $11 $51 $91
    pop de                                        ; $3a47: $d1
    ld [de], a                                    ; $3a48: $12
    ld d, d                                       ; $3a49: $52
    sub d                                         ; $3a4a: $92
    jp nc, $5313                                  ; $3a4b: $d2 $13 $53

    sub e                                         ; $3a4e: $93
    db $d3                                        ; $3a4f: $d3
    inc d                                         ; $3a50: $14
    ld d, h                                       ; $3a51: $54
    sub h                                         ; $3a52: $94
    call nc, $5515                                ; $3a53: $d4 $15 $55
    sub l                                         ; $3a56: $95
    push de                                       ; $3a57: $d5
    ld d, $56                                     ; $3a58: $16 $56
    sub [hl]                                      ; $3a5a: $96
    sub $17                                       ; $3a5b: $d6 $17
    ld d, a                                       ; $3a5d: $57
    sub a                                         ; $3a5e: $97
    rst $10                                       ; $3a5f: $d7
    jr jr_000_3aba                                ; $3a60: $18 $58

    sbc b                                         ; $3a62: $98
    ret c                                         ; $3a63: $d8

    add hl, de                                    ; $3a64: $19
    ld e, c                                       ; $3a65: $59
    sbc c                                         ; $3a66: $99
    reti                                          ; $3a67: $d9


    ld a, [de]                                    ; $3a68: $1a
    ld e, d                                       ; $3a69: $5a
    sbc d                                         ; $3a6a: $9a
    jp c, $5b1b                                   ; $3a6b: $da $1b $5b

    sbc e                                         ; $3a6e: $9b
    db $db                                        ; $3a6f: $db
    inc e                                         ; $3a70: $1c
    ld e, h                                       ; $3a71: $5c
    sbc h                                         ; $3a72: $9c
    call c, $5d1d                                 ; $3a73: $dc $1d $5d
    sbc l                                         ; $3a76: $9d
    db $dd                                        ; $3a77: $dd
    ld e, $5e                                     ; $3a78: $1e $5e
    sbc [hl]                                      ; $3a7a: $9e
    sbc $1f                                       ; $3a7b: $de $1f
    ld e, a                                       ; $3a7d: $5f
    sbc a                                         ; $3a7e: $9f
    rst RST_18                                    ; $3a7f: $df
    jr nz, jr_000_3ae2                            ; $3a80: $20 $60

    and b                                         ; $3a82: $a0
    ldh [rNR42], a                                ; $3a83: $e0 $21
    ld h, c                                       ; $3a85: $61
    and c                                         ; $3a86: $a1
    pop hl                                        ; $3a87: $e1
    ld [hl+], a                                   ; $3a88: $22
    ld h, d                                       ; $3a89: $62
    and d                                         ; $3a8a: $a2
    ldh [c], a                                    ; $3a8b: $e2
    inc hl                                        ; $3a8c: $23
    ld h, e                                       ; $3a8d: $63
    and e                                         ; $3a8e: $a3
    db $e3                                        ; $3a8f: $e3
    inc h                                         ; $3a90: $24
    ld h, h                                       ; $3a91: $64
    and h                                         ; $3a92: $a4
    db $e4                                        ; $3a93: $e4
    dec h                                         ; $3a94: $25
    ld h, l                                       ; $3a95: $65
    and l                                         ; $3a96: $a5
    push hl                                       ; $3a97: $e5
    ld h, $66                                     ; $3a98: $26 $66
    and [hl]                                      ; $3a9a: $a6
    and $27                                       ; $3a9b: $e6 $27
    ld h, a                                       ; $3a9d: $67
    and a                                         ; $3a9e: $a7
    rst $20                                       ; $3a9f: $e7
    jr z, @+$6a                                   ; $3aa0: $28 $68

    xor b                                         ; $3aa2: $a8
    add sp, $29                                   ; $3aa3: $e8 $29
    ld l, c                                       ; $3aa5: $69
    xor c                                         ; $3aa6: $a9
    jp hl                                         ; $3aa7: $e9


    ld a, [hl+]                                   ; $3aa8: $2a
    ld l, d                                       ; $3aa9: $6a
    xor d                                         ; $3aaa: $aa
    ld [$6b2b], a                                 ; $3aab: $ea $2b $6b
    xor e                                         ; $3aae: $ab
    db $eb                                        ; $3aaf: $eb
    inc l                                         ; $3ab0: $2c
    ld l, h                                       ; $3ab1: $6c
    xor h                                         ; $3ab2: $ac
    db $ec                                        ; $3ab3: $ec
    dec l                                         ; $3ab4: $2d
    ld l, l                                       ; $3ab5: $6d
    xor l                                         ; $3ab6: $ad
    db $ed                                        ; $3ab7: $ed
    ld l, $6e                                     ; $3ab8: $2e $6e

jr_000_3aba:
    xor [hl]                                      ; $3aba: $ae
    xor $2f                                       ; $3abb: $ee $2f
    ld l, a                                       ; $3abd: $6f
    xor a                                         ; $3abe: $af
    rst $28                                       ; $3abf: $ef
    jr nc, jr_000_3b32                            ; $3ac0: $30 $70

    or b                                          ; $3ac2: $b0
    ldh a, [$ff31]                                ; $3ac3: $f0 $31
    ld [hl], c                                    ; $3ac5: $71
    or c                                          ; $3ac6: $b1
    pop af                                        ; $3ac7: $f1
    ld [hl-], a                                   ; $3ac8: $32
    ld [hl], d                                    ; $3ac9: $72
    or d                                          ; $3aca: $b2
    ldh a, [c]                                    ; $3acb: $f2
    inc sp                                        ; $3acc: $33
    ld [hl], e                                    ; $3acd: $73
    or e                                          ; $3ace: $b3
    di                                            ; $3acf: $f3
    inc [hl]                                      ; $3ad0: $34
    ld [hl], h                                    ; $3ad1: $74
    or h                                          ; $3ad2: $b4
    db $f4                                        ; $3ad3: $f4
    dec [hl]                                      ; $3ad4: $35
    ld [hl], l                                    ; $3ad5: $75
    or l                                          ; $3ad6: $b5
    push af                                       ; $3ad7: $f5
    ld [hl], $76                                  ; $3ad8: $36 $76
    or [hl]                                       ; $3ada: $b6
    or $37                                        ; $3adb: $f6 $37
    ld [hl], a                                    ; $3add: $77
    or a                                          ; $3ade: $b7
    rst $30                                       ; $3adf: $f7
    jr c, jr_000_3b5a                             ; $3ae0: $38 $78

jr_000_3ae2:
    cp b                                          ; $3ae2: $b8
    ld hl, sp+$39                                 ; $3ae3: $f8 $39
    ld a, c                                       ; $3ae5: $79
    cp c                                          ; $3ae6: $b9
    ld sp, hl                                     ; $3ae7: $f9
    ld a, [hl-]                                   ; $3ae8: $3a
    ld a, d                                       ; $3ae9: $7a
    cp d                                          ; $3aea: $ba
    ld a, [$7b3b]                                 ; $3aeb: $fa $3b $7b
    cp e                                          ; $3aee: $bb
    ei                                            ; $3aef: $fb
    inc a                                         ; $3af0: $3c
    ld a, h                                       ; $3af1: $7c
    cp h                                          ; $3af2: $bc
    db $fc                                        ; $3af3: $fc
    dec a                                         ; $3af4: $3d
    ld a, l                                       ; $3af5: $7d
    cp l                                          ; $3af6: $bd
    db $fd                                        ; $3af7: $fd
    ld a, $7e                                     ; $3af8: $3e $7e
    cp [hl]                                       ; $3afa: $be
    cp $3f                                        ; $3afb: $fe $3f
    ld a, a                                       ; $3afd: $7f
    cp a                                          ; $3afe: $bf
    rst $38                                       ; $3aff: $ff
    nop                                           ; $3b00: $00
    jr nz, jr_000_3b43                            ; $3b01: $20 $40

    ld h, b                                       ; $3b03: $60
    add b                                         ; $3b04: $80
    and b                                         ; $3b05: $a0
    ret nz                                        ; $3b06: $c0

    ldh [rSB], a                                  ; $3b07: $e0 $01
    ld hl, $6141                                  ; $3b09: $21 $41 $61
    add c                                         ; $3b0c: $81
    and c                                         ; $3b0d: $a1
    pop bc                                        ; $3b0e: $c1
    pop hl                                        ; $3b0f: $e1
    ld [bc], a                                    ; $3b10: $02
    ld [hl+], a                                   ; $3b11: $22
    ld b, d                                       ; $3b12: $42
    ld h, d                                       ; $3b13: $62
    add d                                         ; $3b14: $82
    and d                                         ; $3b15: $a2
    jp nz, $03e2                                  ; $3b16: $c2 $e2 $03

    inc hl                                        ; $3b19: $23
    ld b, e                                       ; $3b1a: $43
    ld h, e                                       ; $3b1b: $63
    add e                                         ; $3b1c: $83
    and e                                         ; $3b1d: $a3
    jp Jump_000_04e3                              ; $3b1e: $c3 $e3 $04


    inc h                                         ; $3b21: $24
    ld b, h                                       ; $3b22: $44
    ld h, h                                       ; $3b23: $64
    add h                                         ; $3b24: $84
    and h                                         ; $3b25: $a4
    call nz, $05e4                                ; $3b26: $c4 $e4 $05
    dec h                                         ; $3b29: $25
    ld b, l                                       ; $3b2a: $45
    ld h, l                                       ; $3b2b: $65
    add l                                         ; $3b2c: $85
    and l                                         ; $3b2d: $a5
    push bc                                       ; $3b2e: $c5
    push hl                                       ; $3b2f: $e5
    ld b, $26                                     ; $3b30: $06 $26

jr_000_3b32:
    ld b, [hl]                                    ; $3b32: $46
    ld h, [hl]                                    ; $3b33: $66
    add [hl]                                      ; $3b34: $86
    and [hl]                                      ; $3b35: $a6
    add $e6                                       ; $3b36: $c6 $e6
    rlca                                          ; $3b38: $07
    daa                                           ; $3b39: $27
    ld b, a                                       ; $3b3a: $47
    ld h, a                                       ; $3b3b: $67
    add a                                         ; $3b3c: $87
    and a                                         ; $3b3d: $a7
    rst RST_00                                    ; $3b3e: $c7
    rst $20                                       ; $3b3f: $e7
    ld [$4828], sp                                ; $3b40: $08 $28 $48

jr_000_3b43:
    ld l, b                                       ; $3b43: $68
    adc b                                         ; $3b44: $88
    xor b                                         ; $3b45: $a8
    ret z                                         ; $3b46: $c8

    add sp, $09                                   ; $3b47: $e8 $09
    add hl, hl                                    ; $3b49: $29
    ld c, c                                       ; $3b4a: $49
    ld l, c                                       ; $3b4b: $69
    adc c                                         ; $3b4c: $89
    xor c                                         ; $3b4d: $a9
    ret                                           ; $3b4e: $c9


    jp hl                                         ; $3b4f: $e9


    ld a, [bc]                                    ; $3b50: $0a
    ld a, [hl+]                                   ; $3b51: $2a
    ld c, d                                       ; $3b52: $4a
    ld l, d                                       ; $3b53: $6a
    adc d                                         ; $3b54: $8a
    xor d                                         ; $3b55: $aa
    jp z, Jump_000_0bea                           ; $3b56: $ca $ea $0b

    dec hl                                        ; $3b59: $2b

jr_000_3b5a:
    ld c, e                                       ; $3b5a: $4b
    ld l, e                                       ; $3b5b: $6b
    adc e                                         ; $3b5c: $8b
    xor e                                         ; $3b5d: $ab
    set 5, e                                      ; $3b5e: $cb $eb
    inc c                                         ; $3b60: $0c
    inc l                                         ; $3b61: $2c
    ld c, h                                       ; $3b62: $4c
    ld l, h                                       ; $3b63: $6c
    adc h                                         ; $3b64: $8c
    xor h                                         ; $3b65: $ac
    call z, Call_000_0dec                         ; $3b66: $cc $ec $0d
    dec l                                         ; $3b69: $2d
    ld c, l                                       ; $3b6a: $4d
    ld l, l                                       ; $3b6b: $6d
    adc l                                         ; $3b6c: $8d
    xor l                                         ; $3b6d: $ad
    call Call_000_0eed                            ; $3b6e: $cd $ed $0e
    ld l, $4e                                     ; $3b71: $2e $4e
    ld l, [hl]                                    ; $3b73: $6e
    adc [hl]                                      ; $3b74: $8e
    xor [hl]                                      ; $3b75: $ae
    adc $ee                                       ; $3b76: $ce $ee
    rrca                                          ; $3b78: $0f
    cpl                                           ; $3b79: $2f
    ld c, a                                       ; $3b7a: $4f
    ld l, a                                       ; $3b7b: $6f
    adc a                                         ; $3b7c: $8f
    xor a                                         ; $3b7d: $af
    rst RST_08                                    ; $3b7e: $cf
    rst $28                                       ; $3b7f: $ef
    db $10                                        ; $3b80: $10
    jr nc, jr_000_3bd3                            ; $3b81: $30 $50

    ld [hl], b                                    ; $3b83: $70
    sub b                                         ; $3b84: $90
    or b                                          ; $3b85: $b0
    ret nc                                        ; $3b86: $d0

    ldh a, [rNR11]                                ; $3b87: $f0 $11
    ld sp, $7151                                  ; $3b89: $31 $51 $71
    sub c                                         ; $3b8c: $91
    or c                                          ; $3b8d: $b1
    pop de                                        ; $3b8e: $d1
    pop af                                        ; $3b8f: $f1
    ld [de], a                                    ; $3b90: $12
    ld [hl-], a                                   ; $3b91: $32
    ld d, d                                       ; $3b92: $52
    ld [hl], d                                    ; $3b93: $72
    sub d                                         ; $3b94: $92
    or d                                          ; $3b95: $b2
    jp nc, Jump_000_13f2                          ; $3b96: $d2 $f2 $13

    inc sp                                        ; $3b99: $33
    ld d, e                                       ; $3b9a: $53
    ld [hl], e                                    ; $3b9b: $73
    sub e                                         ; $3b9c: $93
    or e                                          ; $3b9d: $b3
    db $d3                                        ; $3b9e: $d3
    di                                            ; $3b9f: $f3
    inc d                                         ; $3ba0: $14
    inc [hl]                                      ; $3ba1: $34
    ld d, h                                       ; $3ba2: $54
    ld [hl], h                                    ; $3ba3: $74
    sub h                                         ; $3ba4: $94
    or h                                          ; $3ba5: $b4
    call nc, Call_000_15f4                        ; $3ba6: $d4 $f4 $15
    dec [hl]                                      ; $3ba9: $35
    ld d, l                                       ; $3baa: $55
    ld [hl], l                                    ; $3bab: $75
    sub l                                         ; $3bac: $95
    or l                                          ; $3bad: $b5
    push de                                       ; $3bae: $d5
    push af                                       ; $3baf: $f5
    ld d, $36                                     ; $3bb0: $16 $36
    ld d, [hl]                                    ; $3bb2: $56
    halt                                          ; $3bb3: $76
    sub [hl]                                      ; $3bb4: $96
    or [hl]                                       ; $3bb5: $b6
    sub $f6                                       ; $3bb6: $d6 $f6
    rla                                           ; $3bb8: $17
    scf                                           ; $3bb9: $37
    ld d, a                                       ; $3bba: $57
    ld [hl], a                                    ; $3bbb: $77
    sub a                                         ; $3bbc: $97
    or a                                          ; $3bbd: $b7
    rst $10                                       ; $3bbe: $d7
    rst $30                                       ; $3bbf: $f7
    jr jr_000_3bfa                                ; $3bc0: $18 $38

    ld e, b                                       ; $3bc2: $58
    ld a, b                                       ; $3bc3: $78
    sbc b                                         ; $3bc4: $98
    cp b                                          ; $3bc5: $b8
    ret c                                         ; $3bc6: $d8

    ld hl, sp+$19                                 ; $3bc7: $f8 $19
    add hl, sp                                    ; $3bc9: $39
    ld e, c                                       ; $3bca: $59
    ld a, c                                       ; $3bcb: $79
    sbc c                                         ; $3bcc: $99
    cp c                                          ; $3bcd: $b9
    reti                                          ; $3bce: $d9


    ld sp, hl                                     ; $3bcf: $f9
    ld a, [de]                                    ; $3bd0: $1a
    ld a, [hl-]                                   ; $3bd1: $3a
    ld e, d                                       ; $3bd2: $5a

jr_000_3bd3:
    ld a, d                                       ; $3bd3: $7a
    sbc d                                         ; $3bd4: $9a
    cp d                                          ; $3bd5: $ba
    jp c, Jump_000_1bfa                           ; $3bd6: $da $fa $1b

    dec sp                                        ; $3bd9: $3b
    ld e, e                                       ; $3bda: $5b
    ld a, e                                       ; $3bdb: $7b
    sbc e                                         ; $3bdc: $9b
    cp e                                          ; $3bdd: $bb
    db $db                                        ; $3bde: $db
    ei                                            ; $3bdf: $fb
    inc e                                         ; $3be0: $1c
    inc a                                         ; $3be1: $3c
    ld e, h                                       ; $3be2: $5c
    ld a, h                                       ; $3be3: $7c
    sbc h                                         ; $3be4: $9c
    cp h                                          ; $3be5: $bc
    call c, $1dfc                                 ; $3be6: $dc $fc $1d
    dec a                                         ; $3be9: $3d
    ld e, l                                       ; $3bea: $5d
    ld a, l                                       ; $3beb: $7d
    sbc l                                         ; $3bec: $9d
    cp l                                          ; $3bed: $bd
    db $dd                                        ; $3bee: $dd
    db $fd                                        ; $3bef: $fd
    ld e, $3e                                     ; $3bf0: $1e $3e
    ld e, [hl]                                    ; $3bf2: $5e
    ld a, [hl]                                    ; $3bf3: $7e
    sbc [hl]                                      ; $3bf4: $9e
    cp [hl]                                       ; $3bf5: $be
    sbc $fe                                       ; $3bf6: $de $fe
    rra                                           ; $3bf8: $1f
    ccf                                           ; $3bf9: $3f

jr_000_3bfa:
    ld e, a                                       ; $3bfa: $5f
    ld a, a                                       ; $3bfb: $7f
    sbc a                                         ; $3bfc: $9f
    cp a                                          ; $3bfd: $bf
    rst RST_18                                    ; $3bfe: $df
    rst $38                                       ; $3bff: $ff
    nop                                           ; $3c00: $00
    db $10                                        ; $3c01: $10
    jr nz, jr_000_3c34                            ; $3c02: $20 $30

    ld b, b                                       ; $3c04: $40
    ld d, b                                       ; $3c05: $50
    ld h, b                                       ; $3c06: $60
    ld [hl], b                                    ; $3c07: $70
    add b                                         ; $3c08: $80
    sub b                                         ; $3c09: $90
    and b                                         ; $3c0a: $a0
    or b                                          ; $3c0b: $b0
    ret nz                                        ; $3c0c: $c0

    ret nc                                        ; $3c0d: $d0

    ldh [$fff0], a                                ; $3c0e: $e0 $f0
    ld bc, $2111                                  ; $3c10: $01 $11 $21
    ld sp, $5141                                  ; $3c13: $31 $41 $51
    ld h, c                                       ; $3c16: $61
    ld [hl], c                                    ; $3c17: $71
    add c                                         ; $3c18: $81
    sub c                                         ; $3c19: $91
    and c                                         ; $3c1a: $a1
    or c                                          ; $3c1b: $b1
    pop bc                                        ; $3c1c: $c1
    pop de                                        ; $3c1d: $d1
    pop hl                                        ; $3c1e: $e1
    pop af                                        ; $3c1f: $f1
    ld [bc], a                                    ; $3c20: $02
    ld [de], a                                    ; $3c21: $12
    ld [hl+], a                                   ; $3c22: $22
    ld [hl-], a                                   ; $3c23: $32
    ld b, d                                       ; $3c24: $42
    ld d, d                                       ; $3c25: $52
    ld h, d                                       ; $3c26: $62
    ld [hl], d                                    ; $3c27: $72
    add d                                         ; $3c28: $82
    sub d                                         ; $3c29: $92
    and d                                         ; $3c2a: $a2
    or d                                          ; $3c2b: $b2
    jp nz, $e2d2                                  ; $3c2c: $c2 $d2 $e2

    ldh a, [c]                                    ; $3c2f: $f2
    inc bc                                        ; $3c30: $03
    inc de                                        ; $3c31: $13
    inc hl                                        ; $3c32: $23
    inc sp                                        ; $3c33: $33

jr_000_3c34:
    ld b, e                                       ; $3c34: $43
    ld d, e                                       ; $3c35: $53
    ld h, e                                       ; $3c36: $63
    ld [hl], e                                    ; $3c37: $73
    add e                                         ; $3c38: $83
    sub e                                         ; $3c39: $93
    and e                                         ; $3c3a: $a3
    or e                                          ; $3c3b: $b3
    jp $e3d3                                      ; $3c3c: $c3 $d3 $e3


    di                                            ; $3c3f: $f3
    inc b                                         ; $3c40: $04
    inc d                                         ; $3c41: $14
    inc h                                         ; $3c42: $24
    inc [hl]                                      ; $3c43: $34
    ld b, h                                       ; $3c44: $44
    ld d, h                                       ; $3c45: $54
    ld h, h                                       ; $3c46: $64
    ld [hl], h                                    ; $3c47: $74
    add h                                         ; $3c48: $84
    sub h                                         ; $3c49: $94
    and h                                         ; $3c4a: $a4
    or h                                          ; $3c4b: $b4
    call nz, $e4d4                                ; $3c4c: $c4 $d4 $e4
    db $f4                                        ; $3c4f: $f4
    dec b                                         ; $3c50: $05
    dec d                                         ; $3c51: $15
    dec h                                         ; $3c52: $25
    dec [hl]                                      ; $3c53: $35
    ld b, l                                       ; $3c54: $45
    ld d, l                                       ; $3c55: $55
    ld h, l                                       ; $3c56: $65
    ld [hl], l                                    ; $3c57: $75
    add l                                         ; $3c58: $85
    sub l                                         ; $3c59: $95
    and l                                         ; $3c5a: $a5
    or l                                          ; $3c5b: $b5
    push bc                                       ; $3c5c: $c5
    push de                                       ; $3c5d: $d5
    push hl                                       ; $3c5e: $e5
    push af                                       ; $3c5f: $f5
    ld b, $16                                     ; $3c60: $06 $16
    ld h, $36                                     ; $3c62: $26 $36
    ld b, [hl]                                    ; $3c64: $46
    ld d, [hl]                                    ; $3c65: $56
    ld h, [hl]                                    ; $3c66: $66
    halt                                          ; $3c67: $76
    add [hl]                                      ; $3c68: $86
    sub [hl]                                      ; $3c69: $96
    and [hl]                                      ; $3c6a: $a6
    or [hl]                                       ; $3c6b: $b6
    add $d6                                       ; $3c6c: $c6 $d6
    and $f6                                       ; $3c6e: $e6 $f6
    rlca                                          ; $3c70: $07
    rla                                           ; $3c71: $17
    daa                                           ; $3c72: $27
    scf                                           ; $3c73: $37
    ld b, a                                       ; $3c74: $47
    ld d, a                                       ; $3c75: $57
    ld h, a                                       ; $3c76: $67
    ld [hl], a                                    ; $3c77: $77

Call_000_3c78:
    add a                                         ; $3c78: $87
    sub a                                         ; $3c79: $97
    and a                                         ; $3c7a: $a7
    or a                                          ; $3c7b: $b7
    rst RST_00                                    ; $3c7c: $c7
    rst $10                                       ; $3c7d: $d7
    rst $20                                       ; $3c7e: $e7
    rst $30                                       ; $3c7f: $f7
    ld [$2818], sp                                ; $3c80: $08 $18 $28
    jr c, @+$4a                                   ; $3c83: $38 $48

    ld e, b                                       ; $3c85: $58
    ld l, b                                       ; $3c86: $68
    ld a, b                                       ; $3c87: $78
    adc b                                         ; $3c88: $88
    sbc b                                         ; $3c89: $98
    xor b                                         ; $3c8a: $a8
    cp b                                          ; $3c8b: $b8
    ret z                                         ; $3c8c: $c8

    ret c                                         ; $3c8d: $d8

    add sp, -$08                                  ; $3c8e: $e8 $f8
    add hl, bc                                    ; $3c90: $09
    add hl, de                                    ; $3c91: $19
    add hl, hl                                    ; $3c92: $29

Jump_000_3c93:
    add hl, sp                                    ; $3c93: $39
    ld c, c                                       ; $3c94: $49
    ld e, c                                       ; $3c95: $59
    ld l, c                                       ; $3c96: $69
    ld a, c                                       ; $3c97: $79
    adc c                                         ; $3c98: $89
    sbc c                                         ; $3c99: $99
    xor c                                         ; $3c9a: $a9
    cp c                                          ; $3c9b: $b9
    ret                                           ; $3c9c: $c9


    reti                                          ; $3c9d: $d9


    jp hl                                         ; $3c9e: $e9


    ld sp, hl                                     ; $3c9f: $f9
    ld a, [bc]                                    ; $3ca0: $0a
    ld a, [de]                                    ; $3ca1: $1a
    ld a, [hl+]                                   ; $3ca2: $2a
    ld a, [hl-]                                   ; $3ca3: $3a
    ld c, d                                       ; $3ca4: $4a
    ld e, d                                       ; $3ca5: $5a
    ld l, d                                       ; $3ca6: $6a
    ld a, d                                       ; $3ca7: $7a
    adc d                                         ; $3ca8: $8a
    sbc d                                         ; $3ca9: $9a
    xor d                                         ; $3caa: $aa
    cp d                                          ; $3cab: $ba
    jp z, $eada                                   ; $3cac: $ca $da $ea

    ld a, [$1b0b]                                 ; $3caf: $fa $0b $1b
    dec hl                                        ; $3cb2: $2b
    dec sp                                        ; $3cb3: $3b
    ld c, e                                       ; $3cb4: $4b
    ld e, e                                       ; $3cb5: $5b
    ld l, e                                       ; $3cb6: $6b
    ld a, e                                       ; $3cb7: $7b
    adc e                                         ; $3cb8: $8b
    sbc e                                         ; $3cb9: $9b
    xor e                                         ; $3cba: $ab
    cp e                                          ; $3cbb: $bb
    set 3, e                                      ; $3cbc: $cb $db
    db $eb                                        ; $3cbe: $eb
    ei                                            ; $3cbf: $fb
    inc c                                         ; $3cc0: $0c
    inc e                                         ; $3cc1: $1c
    inc l                                         ; $3cc2: $2c
    inc a                                         ; $3cc3: $3c
    ld c, h                                       ; $3cc4: $4c
    ld e, h                                       ; $3cc5: $5c
    ld l, h                                       ; $3cc6: $6c
    ld a, h                                       ; $3cc7: $7c
    adc h                                         ; $3cc8: $8c
    sbc h                                         ; $3cc9: $9c
    xor h                                         ; $3cca: $ac
    cp h                                          ; $3ccb: $bc
    call z, $ecdc                                 ; $3ccc: $cc $dc $ec
    db $fc                                        ; $3ccf: $fc
    dec c                                         ; $3cd0: $0d
    dec e                                         ; $3cd1: $1d
    dec l                                         ; $3cd2: $2d
    dec a                                         ; $3cd3: $3d
    ld c, l                                       ; $3cd4: $4d
    ld e, l                                       ; $3cd5: $5d
    ld l, l                                       ; $3cd6: $6d
    ld a, l                                       ; $3cd7: $7d
    adc l                                         ; $3cd8: $8d
    sbc l                                         ; $3cd9: $9d
    xor l                                         ; $3cda: $ad
    cp l                                          ; $3cdb: $bd
    call $eddd                                    ; $3cdc: $cd $dd $ed
    db $fd                                        ; $3cdf: $fd
    ld c, $1e                                     ; $3ce0: $0e $1e
    ld l, $3e                                     ; $3ce2: $2e $3e
    ld c, [hl]                                    ; $3ce4: $4e
    ld e, [hl]                                    ; $3ce5: $5e
    ld l, [hl]                                    ; $3ce6: $6e
    ld a, [hl]                                    ; $3ce7: $7e
    adc [hl]                                      ; $3ce8: $8e
    sbc [hl]                                      ; $3ce9: $9e
    xor [hl]                                      ; $3cea: $ae
    cp [hl]                                       ; $3ceb: $be
    adc $de                                       ; $3cec: $ce $de
    xor $fe                                       ; $3cee: $ee $fe
    rrca                                          ; $3cf0: $0f
    rra                                           ; $3cf1: $1f
    cpl                                           ; $3cf2: $2f
    ccf                                           ; $3cf3: $3f
    ld c, a                                       ; $3cf4: $4f
    ld e, a                                       ; $3cf5: $5f
    ld l, a                                       ; $3cf6: $6f
    ld a, a                                       ; $3cf7: $7f
    adc a                                         ; $3cf8: $8f
    sbc a                                         ; $3cf9: $9f
    xor a                                         ; $3cfa: $af
    cp a                                          ; $3cfb: $bf
    rst RST_08                                    ; $3cfc: $cf
    rst RST_18                                    ; $3cfd: $df
    rst $28                                       ; $3cfe: $ef
    rst $38                                       ; $3cff: $ff
    nop                                           ; $3d00: $00
    ld [$1810], sp                                ; $3d01: $08 $10 $18
    jr nz, jr_000_3d2e                            ; $3d04: $20 $28

    jr nc, jr_000_3d40                            ; $3d06: $30 $38

    ld b, b                                       ; $3d08: $40
    ld c, b                                       ; $3d09: $48
    ld d, b                                       ; $3d0a: $50
    ld e, b                                       ; $3d0b: $58
    ld h, b                                       ; $3d0c: $60
    ld l, b                                       ; $3d0d: $68
    ld [hl], b                                    ; $3d0e: $70
    ld a, b                                       ; $3d0f: $78
    add b                                         ; $3d10: $80
    adc b                                         ; $3d11: $88
    sub b                                         ; $3d12: $90
    sbc b                                         ; $3d13: $98
    and b                                         ; $3d14: $a0
    xor b                                         ; $3d15: $a8
    or b                                          ; $3d16: $b0
    cp b                                          ; $3d17: $b8
    ret nz                                        ; $3d18: $c0

    ret z                                         ; $3d19: $c8

    ret nc                                        ; $3d1a: $d0

    ret c                                         ; $3d1b: $d8

    ldh [$ffe8], a                                ; $3d1c: $e0 $e8
    ldh a, [$fff8]                                ; $3d1e: $f0 $f8
    ld bc, $1109                                  ; $3d20: $01 $09 $11
    add hl, de                                    ; $3d23: $19
    ld hl, $3129                                  ; $3d24: $21 $29 $31
    add hl, sp                                    ; $3d27: $39
    ld b, c                                       ; $3d28: $41
    ld c, c                                       ; $3d29: $49
    ld d, c                                       ; $3d2a: $51
    ld e, c                                       ; $3d2b: $59
    ld h, c                                       ; $3d2c: $61
    ld l, c                                       ; $3d2d: $69

jr_000_3d2e:
    ld [hl], c                                    ; $3d2e: $71
    ld a, c                                       ; $3d2f: $79
    add c                                         ; $3d30: $81
    adc c                                         ; $3d31: $89
    sub c                                         ; $3d32: $91
    sbc c                                         ; $3d33: $99
    and c                                         ; $3d34: $a1
    xor c                                         ; $3d35: $a9
    or c                                          ; $3d36: $b1
    cp c                                          ; $3d37: $b9
    pop bc                                        ; $3d38: $c1
    ret                                           ; $3d39: $c9


    pop de                                        ; $3d3a: $d1
    reti                                          ; $3d3b: $d9


    pop hl                                        ; $3d3c: $e1
    jp hl                                         ; $3d3d: $e9


    pop af                                        ; $3d3e: $f1
    ld sp, hl                                     ; $3d3f: $f9

jr_000_3d40:
    ld [bc], a                                    ; $3d40: $02
    ld a, [bc]                                    ; $3d41: $0a
    ld [de], a                                    ; $3d42: $12
    ld a, [de]                                    ; $3d43: $1a
    ld [hl+], a                                   ; $3d44: $22
    ld a, [hl+]                                   ; $3d45: $2a
    ld [hl-], a                                   ; $3d46: $32
    ld a, [hl-]                                   ; $3d47: $3a
    ld b, d                                       ; $3d48: $42
    ld c, d                                       ; $3d49: $4a
    ld d, d                                       ; $3d4a: $52
    ld e, d                                       ; $3d4b: $5a
    ld h, d                                       ; $3d4c: $62
    ld l, d                                       ; $3d4d: $6a
    ld [hl], d                                    ; $3d4e: $72
    ld a, d                                       ; $3d4f: $7a
    add d                                         ; $3d50: $82
    adc d                                         ; $3d51: $8a
    sub d                                         ; $3d52: $92
    sbc d                                         ; $3d53: $9a
    and d                                         ; $3d54: $a2
    xor d                                         ; $3d55: $aa
    or d                                          ; $3d56: $b2
    cp d                                          ; $3d57: $ba
    jp nz, $d2ca                                  ; $3d58: $c2 $ca $d2

    jp c, $eae2                                   ; $3d5b: $da $e2 $ea

    ldh a, [c]                                    ; $3d5e: $f2
    ld a, [$0b03]                                 ; $3d5f: $fa $03 $0b
    inc de                                        ; $3d62: $13
    dec de                                        ; $3d63: $1b
    inc hl                                        ; $3d64: $23
    dec hl                                        ; $3d65: $2b
    inc sp                                        ; $3d66: $33
    dec sp                                        ; $3d67: $3b
    ld b, e                                       ; $3d68: $43
    ld c, e                                       ; $3d69: $4b
    ld d, e                                       ; $3d6a: $53
    ld e, e                                       ; $3d6b: $5b
    ld h, e                                       ; $3d6c: $63
    ld l, e                                       ; $3d6d: $6b
    ld [hl], e                                    ; $3d6e: $73
    ld a, e                                       ; $3d6f: $7b
    add e                                         ; $3d70: $83
    adc e                                         ; $3d71: $8b
    sub e                                         ; $3d72: $93
    sbc e                                         ; $3d73: $9b
    and e                                         ; $3d74: $a3
    xor e                                         ; $3d75: $ab
    or e                                          ; $3d76: $b3
    cp e                                          ; $3d77: $bb
    jp $d3cb                                      ; $3d78: $c3 $cb $d3


    db $db                                        ; $3d7b: $db
    db $e3                                        ; $3d7c: $e3
    db $eb                                        ; $3d7d: $eb
    di                                            ; $3d7e: $f3
    ei                                            ; $3d7f: $fb
    inc b                                         ; $3d80: $04
    inc c                                         ; $3d81: $0c
    inc d                                         ; $3d82: $14
    inc e                                         ; $3d83: $1c
    inc h                                         ; $3d84: $24
    inc l                                         ; $3d85: $2c
    inc [hl]                                      ; $3d86: $34
    inc a                                         ; $3d87: $3c
    ld b, h                                       ; $3d88: $44
    ld c, h                                       ; $3d89: $4c
    ld d, h                                       ; $3d8a: $54
    ld e, h                                       ; $3d8b: $5c
    ld h, h                                       ; $3d8c: $64
    ld l, h                                       ; $3d8d: $6c
    ld [hl], h                                    ; $3d8e: $74
    ld a, h                                       ; $3d8f: $7c
    add h                                         ; $3d90: $84
    adc h                                         ; $3d91: $8c
    sub h                                         ; $3d92: $94
    sbc h                                         ; $3d93: $9c
    and h                                         ; $3d94: $a4
    xor h                                         ; $3d95: $ac
    or h                                          ; $3d96: $b4
    cp h                                          ; $3d97: $bc
    call nz, $d4cc                                ; $3d98: $c4 $cc $d4
    call c, $ece4                                 ; $3d9b: $dc $e4 $ec
    db $f4                                        ; $3d9e: $f4
    db $fc                                        ; $3d9f: $fc
    dec b                                         ; $3da0: $05
    dec c                                         ; $3da1: $0d
    dec d                                         ; $3da2: $15
    dec e                                         ; $3da3: $1d
    dec h                                         ; $3da4: $25
    dec l                                         ; $3da5: $2d
    dec [hl]                                      ; $3da6: $35
    dec a                                         ; $3da7: $3d
    ld b, l                                       ; $3da8: $45
    ld c, l                                       ; $3da9: $4d
    ld d, l                                       ; $3daa: $55
    ld e, l                                       ; $3dab: $5d
    ld h, l                                       ; $3dac: $65
    ld l, l                                       ; $3dad: $6d
    ld [hl], l                                    ; $3dae: $75
    ld a, l                                       ; $3daf: $7d
    add l                                         ; $3db0: $85
    adc l                                         ; $3db1: $8d
    sub l                                         ; $3db2: $95
    sbc l                                         ; $3db3: $9d
    and l                                         ; $3db4: $a5
    xor l                                         ; $3db5: $ad
    or l                                          ; $3db6: $b5
    cp l                                          ; $3db7: $bd
    push bc                                       ; $3db8: $c5
    call $ddd5                                    ; $3db9: $cd $d5 $dd
    push hl                                       ; $3dbc: $e5
    db $ed                                        ; $3dbd: $ed
    push af                                       ; $3dbe: $f5
    db $fd                                        ; $3dbf: $fd
    ld b, $0e                                     ; $3dc0: $06 $0e
    ld d, $1e                                     ; $3dc2: $16 $1e
    ld h, $2e                                     ; $3dc4: $26 $2e
    ld [hl], $3e                                  ; $3dc6: $36 $3e
    ld b, [hl]                                    ; $3dc8: $46
    ld c, [hl]                                    ; $3dc9: $4e
    ld d, [hl]                                    ; $3dca: $56
    ld e, [hl]                                    ; $3dcb: $5e
    ld h, [hl]                                    ; $3dcc: $66
    ld l, [hl]                                    ; $3dcd: $6e
    halt                                          ; $3dce: $76
    ld a, [hl]                                    ; $3dcf: $7e
    add [hl]                                      ; $3dd0: $86
    adc [hl]                                      ; $3dd1: $8e
    sub [hl]                                      ; $3dd2: $96
    sbc [hl]                                      ; $3dd3: $9e
    and [hl]                                      ; $3dd4: $a6
    xor [hl]                                      ; $3dd5: $ae
    or [hl]                                       ; $3dd6: $b6
    cp [hl]                                       ; $3dd7: $be
    add $ce                                       ; $3dd8: $c6 $ce
    sub $de                                       ; $3dda: $d6 $de
    and $ee                                       ; $3ddc: $e6 $ee
    or $fe                                        ; $3dde: $f6 $fe
    rlca                                          ; $3de0: $07
    rrca                                          ; $3de1: $0f
    rla                                           ; $3de2: $17
    rra                                           ; $3de3: $1f
    daa                                           ; $3de4: $27
    cpl                                           ; $3de5: $2f
    scf                                           ; $3de6: $37
    ccf                                           ; $3de7: $3f
    ld b, a                                       ; $3de8: $47
    ld c, a                                       ; $3de9: $4f
    ld d, a                                       ; $3dea: $57
    ld e, a                                       ; $3deb: $5f
    ld h, a                                       ; $3dec: $67
    ld l, a                                       ; $3ded: $6f
    ld [hl], a                                    ; $3dee: $77
    ld a, a                                       ; $3def: $7f
    add a                                         ; $3df0: $87
    adc a                                         ; $3df1: $8f
    sub a                                         ; $3df2: $97
    sbc a                                         ; $3df3: $9f
    and a                                         ; $3df4: $a7
    xor a                                         ; $3df5: $af
    or a                                          ; $3df6: $b7
    cp a                                          ; $3df7: $bf
    rst RST_00                                    ; $3df8: $c7
    rst RST_08                                    ; $3df9: $cf
    rst $10                                       ; $3dfa: $d7
    rst RST_18                                    ; $3dfb: $df
    rst $20                                       ; $3dfc: $e7
    rst $28                                       ; $3dfd: $ef
    rst $30                                       ; $3dfe: $f7
    rst $38                                       ; $3dff: $ff
    nop                                           ; $3e00: $00
    inc b                                         ; $3e01: $04
    ld [$100c], sp                                ; $3e02: $08 $0c $10
    inc d                                         ; $3e05: $14
    jr jr_000_3e24                                ; $3e06: $18 $1c

    jr nz, jr_000_3e2e                            ; $3e08: $20 $24

    jr z, jr_000_3e38                             ; $3e0a: $28 $2c

    jr nc, @+$36                                  ; $3e0c: $30 $34

    jr c, jr_000_3e4c                             ; $3e0e: $38 $3c

    ld b, b                                       ; $3e10: $40
    ld b, h                                       ; $3e11: $44
    ld c, b                                       ; $3e12: $48
    ld c, h                                       ; $3e13: $4c
    ld d, b                                       ; $3e14: $50
    ld d, h                                       ; $3e15: $54
    ld e, b                                       ; $3e16: $58
    ld e, h                                       ; $3e17: $5c
    ld h, b                                       ; $3e18: $60
    ld h, h                                       ; $3e19: $64
    ld l, b                                       ; $3e1a: $68
    ld l, h                                       ; $3e1b: $6c
    ld [hl], b                                    ; $3e1c: $70
    ld [hl], h                                    ; $3e1d: $74
    ld a, b                                       ; $3e1e: $78
    ld a, h                                       ; $3e1f: $7c
    add b                                         ; $3e20: $80
    add h                                         ; $3e21: $84
    adc b                                         ; $3e22: $88
    adc h                                         ; $3e23: $8c

jr_000_3e24:
    sub b                                         ; $3e24: $90
    sub h                                         ; $3e25: $94
    sbc b                                         ; $3e26: $98
    sbc h                                         ; $3e27: $9c
    and b                                         ; $3e28: $a0
    and h                                         ; $3e29: $a4
    xor b                                         ; $3e2a: $a8
    xor h                                         ; $3e2b: $ac
    or b                                          ; $3e2c: $b0
    or h                                          ; $3e2d: $b4

jr_000_3e2e:
    cp b                                          ; $3e2e: $b8
    cp h                                          ; $3e2f: $bc
    ret nz                                        ; $3e30: $c0

    call nz, $ccc8                                ; $3e31: $c4 $c8 $cc
    ret nc                                        ; $3e34: $d0

    call nc, $dcd8                                ; $3e35: $d4 $d8 $dc

jr_000_3e38:
    ldh [$ffe4], a                                ; $3e38: $e0 $e4
    add sp, -$14                                  ; $3e3a: $e8 $ec
    ldh a, [$fff4]                                ; $3e3c: $f0 $f4
    ld hl, sp-$04                                 ; $3e3e: $f8 $fc
    ld bc, $0905                                  ; $3e40: $01 $05 $09
    dec c                                         ; $3e43: $0d
    ld de, $1915                                  ; $3e44: $11 $15 $19
    dec e                                         ; $3e47: $1d
    ld hl, $2925                                  ; $3e48: $21 $25 $29
    dec l                                         ; $3e4b: $2d

jr_000_3e4c:
    ld sp, $3935                                  ; $3e4c: $31 $35 $39
    dec a                                         ; $3e4f: $3d
    ld b, c                                       ; $3e50: $41
    ld b, l                                       ; $3e51: $45
    ld c, c                                       ; $3e52: $49
    ld c, l                                       ; $3e53: $4d
    ld d, c                                       ; $3e54: $51
    ld d, l                                       ; $3e55: $55
    ld e, c                                       ; $3e56: $59
    ld e, l                                       ; $3e57: $5d
    ld h, c                                       ; $3e58: $61
    ld h, l                                       ; $3e59: $65
    ld l, c                                       ; $3e5a: $69
    ld l, l                                       ; $3e5b: $6d
    ld [hl], c                                    ; $3e5c: $71
    ld [hl], l                                    ; $3e5d: $75
    ld a, c                                       ; $3e5e: $79
    ld a, l                                       ; $3e5f: $7d
    add c                                         ; $3e60: $81
    add l                                         ; $3e61: $85
    adc c                                         ; $3e62: $89
    adc l                                         ; $3e63: $8d
    sub c                                         ; $3e64: $91
    sub l                                         ; $3e65: $95
    sbc c                                         ; $3e66: $99
    sbc l                                         ; $3e67: $9d
    and c                                         ; $3e68: $a1
    and l                                         ; $3e69: $a5
    xor c                                         ; $3e6a: $a9
    xor l                                         ; $3e6b: $ad
    or c                                          ; $3e6c: $b1
    or l                                          ; $3e6d: $b5
    cp c                                          ; $3e6e: $b9
    cp l                                          ; $3e6f: $bd
    pop bc                                        ; $3e70: $c1
    push bc                                       ; $3e71: $c5
    ret                                           ; $3e72: $c9


    call $d5d1                                    ; $3e73: $cd $d1 $d5
    reti                                          ; $3e76: $d9


    db $dd                                        ; $3e77: $dd
    pop hl                                        ; $3e78: $e1
    push hl                                       ; $3e79: $e5
    jp hl                                         ; $3e7a: $e9


    db $ed                                        ; $3e7b: $ed
    pop af                                        ; $3e7c: $f1
    push af                                       ; $3e7d: $f5
    ld sp, hl                                     ; $3e7e: $f9
    db $fd                                        ; $3e7f: $fd
    ld [bc], a                                    ; $3e80: $02
    ld b, $0a                                     ; $3e81: $06 $0a
    ld c, $12                                     ; $3e83: $0e $12
    ld d, $1a                                     ; $3e85: $16 $1a
    ld e, $22                                     ; $3e87: $1e $22
    ld h, $2a                                     ; $3e89: $26 $2a
    ld l, $32                                     ; $3e8b: $2e $32
    ld [hl], $3a                                  ; $3e8d: $36 $3a
    ld a, $42                                     ; $3e8f: $3e $42
    ld b, [hl]                                    ; $3e91: $46
    ld c, d                                       ; $3e92: $4a
    ld c, [hl]                                    ; $3e93: $4e
    ld d, d                                       ; $3e94: $52
    ld d, [hl]                                    ; $3e95: $56
    ld e, d                                       ; $3e96: $5a
    ld e, [hl]                                    ; $3e97: $5e
    ld h, d                                       ; $3e98: $62
    ld h, [hl]                                    ; $3e99: $66
    ld l, d                                       ; $3e9a: $6a
    ld l, [hl]                                    ; $3e9b: $6e
    ld [hl], d                                    ; $3e9c: $72
    halt                                          ; $3e9d: $76
    ld a, d                                       ; $3e9e: $7a
    ld a, [hl]                                    ; $3e9f: $7e
    add d                                         ; $3ea0: $82
    add [hl]                                      ; $3ea1: $86
    adc d                                         ; $3ea2: $8a
    adc [hl]                                      ; $3ea3: $8e
    sub d                                         ; $3ea4: $92
    sub [hl]                                      ; $3ea5: $96
    sbc d                                         ; $3ea6: $9a
    sbc [hl]                                      ; $3ea7: $9e
    and d                                         ; $3ea8: $a2
    and [hl]                                      ; $3ea9: $a6
    xor d                                         ; $3eaa: $aa
    xor [hl]                                      ; $3eab: $ae
    or d                                          ; $3eac: $b2
    or [hl]                                       ; $3ead: $b6
    cp d                                          ; $3eae: $ba
    cp [hl]                                       ; $3eaf: $be
    jp nz, $cac6                                  ; $3eb0: $c2 $c6 $ca

    adc $d2                                       ; $3eb3: $ce $d2
    sub $da                                       ; $3eb5: $d6 $da
    sbc $e2                                       ; $3eb7: $de $e2
    and $ea                                       ; $3eb9: $e6 $ea
    xor $f2                                       ; $3ebb: $ee $f2
    or $fa                                        ; $3ebd: $f6 $fa
    cp $03                                        ; $3ebf: $fe $03
    rlca                                          ; $3ec1: $07
    dec bc                                        ; $3ec2: $0b
    rrca                                          ; $3ec3: $0f
    inc de                                        ; $3ec4: $13
    rla                                           ; $3ec5: $17
    dec de                                        ; $3ec6: $1b
    rra                                           ; $3ec7: $1f
    inc hl                                        ; $3ec8: $23
    daa                                           ; $3ec9: $27
    dec hl                                        ; $3eca: $2b
    cpl                                           ; $3ecb: $2f
    inc sp                                        ; $3ecc: $33
    scf                                           ; $3ecd: $37
    dec sp                                        ; $3ece: $3b
    ccf                                           ; $3ecf: $3f
    ld b, e                                       ; $3ed0: $43
    ld b, a                                       ; $3ed1: $47
    ld c, e                                       ; $3ed2: $4b
    ld c, a                                       ; $3ed3: $4f
    ld d, e                                       ; $3ed4: $53
    ld d, a                                       ; $3ed5: $57
    ld e, e                                       ; $3ed6: $5b
    ld e, a                                       ; $3ed7: $5f
    ld h, e                                       ; $3ed8: $63
    ld h, a                                       ; $3ed9: $67
    ld l, e                                       ; $3eda: $6b
    ld l, a                                       ; $3edb: $6f
    ld [hl], e                                    ; $3edc: $73
    ld [hl], a                                    ; $3edd: $77
    ld a, e                                       ; $3ede: $7b
    ld a, a                                       ; $3edf: $7f
    add e                                         ; $3ee0: $83
    add a                                         ; $3ee1: $87
    adc e                                         ; $3ee2: $8b
    adc a                                         ; $3ee3: $8f
    sub e                                         ; $3ee4: $93
    sub a                                         ; $3ee5: $97
    sbc e                                         ; $3ee6: $9b
    sbc a                                         ; $3ee7: $9f
    and e                                         ; $3ee8: $a3
    and a                                         ; $3ee9: $a7
    xor e                                         ; $3eea: $ab
    xor a                                         ; $3eeb: $af
    or e                                          ; $3eec: $b3
    or a                                          ; $3eed: $b7
    cp e                                          ; $3eee: $bb
    cp a                                          ; $3eef: $bf
    jp $cbc7                                      ; $3ef0: $c3 $c7 $cb


    rst RST_08                                    ; $3ef3: $cf
    db $d3                                        ; $3ef4: $d3
    rst $10                                       ; $3ef5: $d7
    db $db                                        ; $3ef6: $db
    rst RST_18                                    ; $3ef7: $df
    db $e3                                        ; $3ef8: $e3
    rst $20                                       ; $3ef9: $e7
    db $eb                                        ; $3efa: $eb
    rst $28                                       ; $3efb: $ef
    di                                            ; $3efc: $f3
    rst $30                                       ; $3efd: $f7
    ei                                            ; $3efe: $fb
    rst $38                                       ; $3eff: $ff
    nop                                           ; $3f00: $00
    ld [bc], a                                    ; $3f01: $02
    inc b                                         ; $3f02: $04
    ld b, $08                                     ; $3f03: $06 $08
    ld a, [bc]                                    ; $3f05: $0a
    inc c                                         ; $3f06: $0c
    ld c, $10                                     ; $3f07: $0e $10
    ld [de], a                                    ; $3f09: $12
    inc d                                         ; $3f0a: $14
    ld d, $18                                     ; $3f0b: $16 $18
    ld a, [de]                                    ; $3f0d: $1a
    inc e                                         ; $3f0e: $1c
    ld e, $20                                     ; $3f0f: $1e $20
    ld [hl+], a                                   ; $3f11: $22
    inc h                                         ; $3f12: $24
    ld h, $28                                     ; $3f13: $26 $28
    ld a, [hl+]                                   ; $3f15: $2a
    inc l                                         ; $3f16: $2c
    ld l, $30                                     ; $3f17: $2e $30
    ld [hl-], a                                   ; $3f19: $32
    inc [hl]                                      ; $3f1a: $34
    ld [hl], $38                                  ; $3f1b: $36 $38
    ld a, [hl-]                                   ; $3f1d: $3a
    inc a                                         ; $3f1e: $3c
    ld a, $40                                     ; $3f1f: $3e $40
    ld b, d                                       ; $3f21: $42
    ld b, h                                       ; $3f22: $44
    ld b, [hl]                                    ; $3f23: $46
    ld c, b                                       ; $3f24: $48
    ld c, d                                       ; $3f25: $4a
    ld c, h                                       ; $3f26: $4c
    ld c, [hl]                                    ; $3f27: $4e
    ld d, b                                       ; $3f28: $50
    ld d, d                                       ; $3f29: $52
    ld d, h                                       ; $3f2a: $54
    ld d, [hl]                                    ; $3f2b: $56
    ld e, b                                       ; $3f2c: $58
    ld e, d                                       ; $3f2d: $5a
    ld e, h                                       ; $3f2e: $5c
    ld e, [hl]                                    ; $3f2f: $5e
    ld h, b                                       ; $3f30: $60
    ld h, d                                       ; $3f31: $62
    ld h, h                                       ; $3f32: $64
    ld h, [hl]                                    ; $3f33: $66
    ld l, b                                       ; $3f34: $68
    ld l, d                                       ; $3f35: $6a
    ld l, h                                       ; $3f36: $6c
    ld l, [hl]                                    ; $3f37: $6e
    ld [hl], b                                    ; $3f38: $70
    ld [hl], d                                    ; $3f39: $72
    ld [hl], h                                    ; $3f3a: $74
    halt                                          ; $3f3b: $76
    ld a, b                                       ; $3f3c: $78
    ld a, d                                       ; $3f3d: $7a
    ld a, h                                       ; $3f3e: $7c
    ld a, [hl]                                    ; $3f3f: $7e
    add b                                         ; $3f40: $80
    add d                                         ; $3f41: $82
    add h                                         ; $3f42: $84
    add [hl]                                      ; $3f43: $86
    adc b                                         ; $3f44: $88
    adc d                                         ; $3f45: $8a
    adc h                                         ; $3f46: $8c
    adc [hl]                                      ; $3f47: $8e
    sub b                                         ; $3f48: $90
    sub d                                         ; $3f49: $92
    sub h                                         ; $3f4a: $94
    sub [hl]                                      ; $3f4b: $96
    sbc b                                         ; $3f4c: $98
    sbc d                                         ; $3f4d: $9a
    sbc h                                         ; $3f4e: $9c
    sbc [hl]                                      ; $3f4f: $9e
    and b                                         ; $3f50: $a0
    and d                                         ; $3f51: $a2
    and h                                         ; $3f52: $a4
    and [hl]                                      ; $3f53: $a6
    xor b                                         ; $3f54: $a8
    xor d                                         ; $3f55: $aa
    xor h                                         ; $3f56: $ac
    xor [hl]                                      ; $3f57: $ae
    or b                                          ; $3f58: $b0
    or d                                          ; $3f59: $b2
    or h                                          ; $3f5a: $b4
    or [hl]                                       ; $3f5b: $b6
    cp b                                          ; $3f5c: $b8
    cp d                                          ; $3f5d: $ba
    cp h                                          ; $3f5e: $bc
    cp [hl]                                       ; $3f5f: $be
    ret nz                                        ; $3f60: $c0

    jp nz, $c6c4                                  ; $3f61: $c2 $c4 $c6

    ret z                                         ; $3f64: $c8

    jp z, $cecc                                   ; $3f65: $ca $cc $ce

    ret nc                                        ; $3f68: $d0

    jp nc, $d6d4                                  ; $3f69: $d2 $d4 $d6

    ret c                                         ; $3f6c: $d8

    jp c, $dedc                                   ; $3f6d: $da $dc $de

    ldh [$ffe2], a                                ; $3f70: $e0 $e2
    db $e4                                        ; $3f72: $e4
    and $e8                                       ; $3f73: $e6 $e8
    ld [$eeec], a                                 ; $3f75: $ea $ec $ee
    ldh a, [$fff2]                                ; $3f78: $f0 $f2
    db $f4                                        ; $3f7a: $f4
    or $f8                                        ; $3f7b: $f6 $f8
    ld a, [$fefc]                                 ; $3f7d: $fa $fc $fe
    ld bc, $0503                                  ; $3f80: $01 $03 $05
    rlca                                          ; $3f83: $07
    add hl, bc                                    ; $3f84: $09
    dec bc                                        ; $3f85: $0b
    dec c                                         ; $3f86: $0d
    rrca                                          ; $3f87: $0f
    ld de, $1513                                  ; $3f88: $11 $13 $15
    rla                                           ; $3f8b: $17
    add hl, de                                    ; $3f8c: $19
    dec de                                        ; $3f8d: $1b
    dec e                                         ; $3f8e: $1d
    rra                                           ; $3f8f: $1f
    ld hl, $2523                                  ; $3f90: $21 $23 $25
    daa                                           ; $3f93: $27
    add hl, hl                                    ; $3f94: $29
    dec hl                                        ; $3f95: $2b
    dec l                                         ; $3f96: $2d
    cpl                                           ; $3f97: $2f
    ld sp, $3533                                  ; $3f98: $31 $33 $35
    scf                                           ; $3f9b: $37
    add hl, sp                                    ; $3f9c: $39
    dec sp                                        ; $3f9d: $3b
    dec a                                         ; $3f9e: $3d
    ccf                                           ; $3f9f: $3f
    ld b, c                                       ; $3fa0: $41
    ld b, e                                       ; $3fa1: $43
    ld b, l                                       ; $3fa2: $45
    ld b, a                                       ; $3fa3: $47
    ld c, c                                       ; $3fa4: $49
    ld c, e                                       ; $3fa5: $4b
    ld c, l                                       ; $3fa6: $4d
    ld c, a                                       ; $3fa7: $4f
    ld d, c                                       ; $3fa8: $51
    ld d, e                                       ; $3fa9: $53
    ld d, l                                       ; $3faa: $55
    ld d, a                                       ; $3fab: $57
    ld e, c                                       ; $3fac: $59
    ld e, e                                       ; $3fad: $5b
    ld e, l                                       ; $3fae: $5d
    ld e, a                                       ; $3faf: $5f
    ld h, c                                       ; $3fb0: $61
    ld h, e                                       ; $3fb1: $63
    ld h, l                                       ; $3fb2: $65
    ld h, a                                       ; $3fb3: $67
    ld l, c                                       ; $3fb4: $69
    ld l, e                                       ; $3fb5: $6b
    ld l, l                                       ; $3fb6: $6d
    ld l, a                                       ; $3fb7: $6f
    ld [hl], c                                    ; $3fb8: $71
    ld [hl], e                                    ; $3fb9: $73
    ld [hl], l                                    ; $3fba: $75
    ld [hl], a                                    ; $3fbb: $77
    ld a, c                                       ; $3fbc: $79
    ld a, e                                       ; $3fbd: $7b
    ld a, l                                       ; $3fbe: $7d
    ld a, a                                       ; $3fbf: $7f
    add c                                         ; $3fc0: $81
    add e                                         ; $3fc1: $83
    add l                                         ; $3fc2: $85
    add a                                         ; $3fc3: $87
    adc c                                         ; $3fc4: $89
    adc e                                         ; $3fc5: $8b
    adc l                                         ; $3fc6: $8d
    adc a                                         ; $3fc7: $8f
    sub c                                         ; $3fc8: $91
    sub e                                         ; $3fc9: $93
    sub l                                         ; $3fca: $95
    sub a                                         ; $3fcb: $97
    sbc c                                         ; $3fcc: $99
    sbc e                                         ; $3fcd: $9b
    sbc l                                         ; $3fce: $9d
    sbc a                                         ; $3fcf: $9f
    and c                                         ; $3fd0: $a1
    and e                                         ; $3fd1: $a3
    and l                                         ; $3fd2: $a5
    and a                                         ; $3fd3: $a7
    xor c                                         ; $3fd4: $a9
    xor e                                         ; $3fd5: $ab
    xor l                                         ; $3fd6: $ad
    xor a                                         ; $3fd7: $af
    or c                                          ; $3fd8: $b1
    or e                                          ; $3fd9: $b3
    or l                                          ; $3fda: $b5
    or a                                          ; $3fdb: $b7
    cp c                                          ; $3fdc: $b9
    cp e                                          ; $3fdd: $bb
    cp l                                          ; $3fde: $bd
    cp a                                          ; $3fdf: $bf
    pop bc                                        ; $3fe0: $c1
    jp $c7c5                                      ; $3fe1: $c3 $c5 $c7


    ret                                           ; $3fe4: $c9


    set 1, l                                      ; $3fe5: $cb $cd
    rst RST_08                                    ; $3fe7: $cf
    pop de                                        ; $3fe8: $d1
    db $d3                                        ; $3fe9: $d3
    push de                                       ; $3fea: $d5
    rst $10                                       ; $3feb: $d7
    reti                                          ; $3fec: $d9


    db $db                                        ; $3fed: $db
    db $dd                                        ; $3fee: $dd
    rst RST_18                                    ; $3fef: $df
    pop hl                                        ; $3ff0: $e1
    db $e3                                        ; $3ff1: $e3
    push hl                                       ; $3ff2: $e5
    rst $20                                       ; $3ff3: $e7
    jp hl                                         ; $3ff4: $e9


    db $eb                                        ; $3ff5: $eb
    db $ed                                        ; $3ff6: $ed
    rst $28                                       ; $3ff7: $ef
    pop af                                        ; $3ff8: $f1
    di                                            ; $3ff9: $f3
    push af                                       ; $3ffa: $f5
    rst $30                                       ; $3ffb: $f7
    ld sp, hl                                     ; $3ffc: $f9
    ei                                            ; $3ffd: $fb
    db $fd                                        ; $3ffe: $fd
    rst $38                                       ; $3fff: $ff
