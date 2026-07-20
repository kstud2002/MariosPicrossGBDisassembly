; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    jp Jump_00f_4258                              ; $4000: $c3 $58 $42


    jp Jump_00f_43ca                              ; $4003: $c3 $ca $43


    ; padding
    ds $a, $ff

HiddenMusicComposerCredits::
    db "DSEQ", $00, $01

    db "APE (C) mcmxciv by Toshiyuki Ueno", $00

    db "pcs26448@asciinet.or.jp", $00

    ; padding
    ds $30, $ff

TODO_PointerTable::
    db $64, $42
    db $a5, $42
    db $dd, $42
    db $a9, $43
    db $b7, $43
    db $bc, $43
    db $c1, $43
    db $c5, $43
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

    add [hl]                                      ; $4100: $86
    inc bc                                        ; $4101: $03
    nop                                           ; $4102: $00
    nop                                           ; $4103: $00
    ld [hl], d                                    ; $4104: $72
    nop                                           ; $4105: $00
    rst RST_18                                    ; $4106: $df
    nop                                           ; $4107: $00
    ld b, l                                       ; $4108: $45
    ld bc, $01a6                                  ; $4109: $01 $a6 $01
    ld bc, $5702                                  ; $410c: $01 $02 $57
    ld [bc], a                                    ; $410f: $02
    xor c                                         ; $4110: $a9
    ld [bc], a                                    ; $4111: $02
    push af                                       ; $4112: $f5
    ld [bc], a                                    ; $4113: $02
    ld a, $03                                     ; $4114: $3e $03
    add d                                         ; $4116: $82
    inc bc                                        ; $4117: $03
    jp Jump_00f_7b03                              ; $4118: $c3 $03 $7b


    nop                                           ; $411b: $00
    ld [hl], e                                    ; $411c: $73
    nop                                           ; $411d: $00
    ld l, [hl]                                    ; $411e: $6e
    nop                                           ; $411f: $00
    ld h, a                                       ; $4120: $67
    nop                                           ; $4121: $00
    ld h, d                                       ; $4122: $62
    nop                                           ; $4123: $00
    ld e, h                                       ; $4124: $5c
    nop                                           ; $4125: $00
    ld d, a                                       ; $4126: $57
    nop                                           ; $4127: $00
    ld d, e                                       ; $4128: $53
    nop                                           ; $4129: $00
    ld c, l                                       ; $412a: $4d
    nop                                           ; $412b: $00
    ld c, d                                       ; $412c: $4a
    nop                                           ; $412d: $00
    ld b, l                                       ; $412e: $45
    nop                                           ; $412f: $00
    ld b, d                                       ; $4130: $42
    nop                                           ; $4131: $00
    ld a, $00                                     ; $4132: $3e $00
    inc de                                        ; $4134: $13
    jr jr_00f_4154                                ; $4135: $18 $1d

    ld [hl+], a                                   ; $4137: $22
    ld de, rNR21                                  ; $4138: $11 $16 $ff
    rst $38                                       ; $413b: $ff
    ld [de], a                                    ; $413c: $12
    rla                                           ; $413d: $17
    inc e                                         ; $413e: $1c
    ld hl, $0600                                  ; $413f: $21 $00 $06
    inc b                                         ; $4142: $04
    ld [bc], a                                    ; $4143: $02
    xor $dd                                       ; $4144: $ee $dd
    cp e                                          ; $4146: $bb
    ld [hl], a                                    ; $4147: $77
    nop                                           ; $4148: $00
    ld bc, $1110                                  ; $4149: $01 $10 $11
    ld bc, $0302                                  ; $414c: $01 $02 $03
    inc b                                         ; $414f: $04
    ld b, $08                                     ; $4150: $06 $08
    add hl, bc                                    ; $4152: $09
    inc c                                         ; $4153: $0c

jr_00f_4154:
    db $10                                        ; $4154: $10
    ld [de], a                                    ; $4155: $12
    jr jr_00f_4178                                ; $4156: $18 $20

    inc h                                         ; $4158: $24
    jr nc, jr_00f_419b                            ; $4159: $30 $40

    ld c, b                                       ; $415b: $48
    ld a, b                                       ; $415c: $78
    ld b, c                                       ; $415d: $41
    adc b                                         ; $415e: $88
    ld b, c                                       ; $415f: $41
    sbc b                                         ; $4160: $98
    ld b, c                                       ; $4161: $41
    xor b                                         ; $4162: $a8
    ld b, c                                       ; $4163: $41
    cp b                                          ; $4164: $b8
    ld b, c                                       ; $4165: $41
    ret z                                         ; $4166: $c8

    ld b, c                                       ; $4167: $41
    ret c                                         ; $4168: $d8

    ld b, c                                       ; $4169: $41
    add sp, $41                                   ; $416a: $e8 $41
    ld hl, sp+$41                                 ; $416c: $f8 $41
    ld [$1842], sp                                ; $416e: $08 $42 $18
    ld b, d                                       ; $4171: $42
    jr z, jr_00f_41b6                             ; $4172: $28 $42

    jr c, jr_00f_41b8                             ; $4174: $38 $42

    ld c, b                                       ; $4176: $48
    ld b, d                                       ; $4177: $42

jr_00f_4178:
    add a                                         ; $4178: $87
    adc c                                         ; $4179: $89
    xor e                                         ; $417a: $ab
    call $edee                                    ; $417b: $cd $ee $ed
    ld d, l                                       ; $417e: $55
    ld d, l                                       ; $417f: $55
    ld d, l                                       ; $4180: $55
    rst $38                                       ; $4181: $ff
    rst $38                                       ; $4182: $ff
    rst $38                                       ; $4183: $ff
    rst $38                                       ; $4184: $ff
    rst $38                                       ; $4185: $ff
    rst $38                                       ; $4186: $ff
    rst $38                                       ; $4187: $ff
    nop                                           ; $4188: $00
    nop                                           ; $4189: $00
    rst $38                                       ; $418a: $ff
    rst $38                                       ; $418b: $ff
    nop                                           ; $418c: $00
    nop                                           ; $418d: $00
    nop                                           ; $418e: $00
    nop                                           ; $418f: $00
    nop                                           ; $4190: $00
    nop                                           ; $4191: $00
    nop                                           ; $4192: $00
    nop                                           ; $4193: $00
    nop                                           ; $4194: $00
    nop                                           ; $4195: $00
    nop                                           ; $4196: $00
    nop                                           ; $4197: $00
    rst $38                                       ; $4198: $ff
    rst $38                                       ; $4199: $ff
    rst $38                                       ; $419a: $ff

jr_00f_419b:
    rst $38                                       ; $419b: $ff
    nop                                           ; $419c: $00
    nop                                           ; $419d: $00
    nop                                           ; $419e: $00
    nop                                           ; $419f: $00
    nop                                           ; $41a0: $00
    nop                                           ; $41a1: $00
    nop                                           ; $41a2: $00
    nop                                           ; $41a3: $00
    nop                                           ; $41a4: $00
    nop                                           ; $41a5: $00
    nop                                           ; $41a6: $00
    nop                                           ; $41a7: $00
    rst $38                                       ; $41a8: $ff
    rst $38                                       ; $41a9: $ff
    rst $38                                       ; $41aa: $ff
    rst $38                                       ; $41ab: $ff
    rst $38                                       ; $41ac: $ff
    rst $38                                       ; $41ad: $ff
    rst $38                                       ; $41ae: $ff
    rst $38                                       ; $41af: $ff
    nop                                           ; $41b0: $00
    nop                                           ; $41b1: $00
    nop                                           ; $41b2: $00
    nop                                           ; $41b3: $00
    nop                                           ; $41b4: $00
    nop                                           ; $41b5: $00

jr_00f_41b6:
    nop                                           ; $41b6: $00
    nop                                           ; $41b7: $00

jr_00f_41b8:
    nop                                           ; $41b8: $00
    nop                                           ; $41b9: $00
    nop                                           ; $41ba: $00
    nop                                           ; $41bb: $00
    rst $38                                       ; $41bc: $ff
    rst $38                                       ; $41bd: $ff
    rst $38                                       ; $41be: $ff
    rst $38                                       ; $41bf: $ff
    rst $38                                       ; $41c0: $ff
    rst $38                                       ; $41c1: $ff
    rst $38                                       ; $41c2: $ff
    rst $38                                       ; $41c3: $ff
    rst $38                                       ; $41c4: $ff
    rst $38                                       ; $41c5: $ff
    rst $38                                       ; $41c6: $ff
    rst $38                                       ; $41c7: $ff
    rst $38                                       ; $41c8: $ff
    xor $dd                                       ; $41c9: $ee $dd
    call z, $aabb                                 ; $41cb: $cc $bb $aa
    sbc c                                         ; $41ce: $99
    adc b                                         ; $41cf: $88
    ld [hl], a                                    ; $41d0: $77
    ld h, [hl]                                    ; $41d1: $66
    ld d, l                                       ; $41d2: $55
    ld b, h                                       ; $41d3: $44
    inc sp                                        ; $41d4: $33
    ld [hl+], a                                   ; $41d5: $22
    ld de, $fd00                                  ; $41d6: $11 $00 $fd
    sbc b                                         ; $41d9: $98
    nop                                           ; $41da: $00
    inc bc                                        ; $41db: $03
    rst $38                                       ; $41dc: $ff
    inc b                                         ; $41dd: $04
    ld de, $2317                                  ; $41de: $11 $17 $23
    inc [hl]                                      ; $41e1: $34
    ld d, l                                       ; $41e2: $55
    ld l, b                                       ; $41e3: $68
    xor h                                         ; $41e4: $ac
    sbc $fe                                       ; $41e5: $de $fe
    call c, $2503                                 ; $41e7: $dc $03 $25
    ld b, a                                       ; $41ea: $47
    ld l, c                                       ; $41eb: $69
    adc e                                         ; $41ec: $8b
    xor l                                         ; $41ed: $ad
    rst RST_08                                    ; $41ee: $cf
    db $ec                                        ; $41ef: $ec
    rst $28                                       ; $41f0: $ef
    call $89ab                                    ; $41f1: $cd $ab $89
    ld h, a                                       ; $41f4: $67
    ld b, l                                       ; $41f5: $45
    inc hl                                        ; $41f6: $23
    ld bc, $2604                                  ; $41f7: $01 $04 $26
    ld c, b                                       ; $41fa: $48
    ld l, d                                       ; $41fb: $6a

Call_00f_41fc:
    adc h                                         ; $41fc: $8c
    xor [hl]                                      ; $41fd: $ae
    jp z, $eaec                                   ; $41fe: $ca $ec $ea

    adc $ac                                       ; $4201: $ce $ac
    adc d                                         ; $4203: $8a
    ld l, b                                       ; $4204: $68
    ld b, [hl]                                    ; $4205: $46
    inc h                                         ; $4206: $24
    ld [bc], a                                    ; $4207: $02
    dec b                                         ; $4208: $05
    daa                                           ; $4209: $27
    ld c, c                                       ; $420a: $49
    ld l, e                                       ; $420b: $6b
    adc l                                         ; $420c: $8d
    xor a                                         ; $420d: $af
    ret                                           ; $420e: $c9


    db $eb                                        ; $420f: $eb
    jp hl                                         ; $4210: $e9


    rst RST_08                                    ; $4211: $cf
    xor l                                         ; $4212: $ad
    adc e                                         ; $4213: $8b
    ld l, c                                       ; $4214: $69
    ld b, a                                       ; $4215: $47
    dec h                                         ; $4216: $25
    inc bc                                        ; $4217: $03
    ld b, $28                                     ; $4218: $06 $28
    ld c, d                                       ; $421a: $4a
    ld l, h                                       ; $421b: $6c
    adc [hl]                                      ; $421c: $8e
    and [hl]                                      ; $421d: $a6
    ret z                                         ; $421e: $c8

    ld [$c6e8], a                                 ; $421f: $ea $e8 $c6
    xor [hl]                                      ; $4222: $ae
    adc h                                         ; $4223: $8c
    ld l, d                                       ; $4224: $6a
    ld c, b                                       ; $4225: $48
    ld h, $04                                     ; $4226: $26 $04
    rrca                                          ; $4228: $0f
    ld c, $0d                                     ; $4229: $0e $0d
    inc c                                         ; $422b: $0c
    dec bc                                        ; $422c: $0b
    ld a, [bc]                                    ; $422d: $0a
    add hl, bc                                    ; $422e: $09
    ld [$f6f7], sp                                ; $422f: $08 $f7 $f6
    push af                                       ; $4232: $f5
    db $f4                                        ; $4233: $f4
    di                                            ; $4234: $f3
    ldh a, [c]                                    ; $4235: $f2
    pop af                                        ; $4236: $f1
    ldh a, [rP1]                                  ; $4237: $f0 $00
    ld bc, $0302                                  ; $4239: $01 $02 $03
    inc b                                         ; $423c: $04
    dec b                                         ; $423d: $05
    ld b, $07                                     ; $423e: $06 $07
    ld hl, sp-$07                                 ; $4240: $f8 $f9
    ld a, [$fcfb]                                 ; $4242: $fa $fb $fc
    db $fd                                        ; $4245: $fd
    cp $ff                                        ; $4246: $fe $ff
    ld de, $7767                                  ; $4248: $11 $67 $77
    ld [hl], a                                    ; $424b: $77
    ld [hl], a                                    ; $424c: $77
    ld [hl], a                                    ; $424d: $77
    ld [hl], a                                    ; $424e: $77
    ld b, e                                       ; $424f: $43
    inc [hl]                                      ; $4250: $34
    ld d, [hl]                                    ; $4251: $56
    ld a, b                                       ; $4252: $78
    sbc d                                         ; $4253: $9a
    xor d                                         ; $4254: $aa
    xor d                                         ; $4255: $aa
    xor d                                         ; $4256: $aa
    xor a                                         ; $4257: $af

Jump_00f_4258:
    ld hl, TODO_PointerTable                      ; $4258: $21 $80 $40
    push af                                       ; $425b: $f5
    add a                                         ; $425c: $87
    add l                                         ; $425d: $85
    ld l, a                                       ; $425e: $6f
    ld a, [hl+]                                   ; $425f: $2a
    ld h, [hl]                                    ; $4260: $66
    ld l, a                                       ; $4261: $6f
    pop af                                        ; $4262: $f1
    jp hl                                         ; $4263: $e9


    ld hl, $4286                                  ; $4264: $21 $86 $42

jr_00f_4267:
    ld a, [hl+]                                   ; $4267: $2a
    or a                                          ; $4268: $b7
    jr z, jr_00f_4270                             ; $4269: $28 $05

    ld c, a                                       ; $426b: $4f
    ld a, [hl+]                                   ; $426c: $2a
    ldh [c], a                                    ; $426d: $e2
    jr jr_00f_4267                                ; $426e: $18 $f7

jr_00f_4270:
    ld b, $0c                                     ; $4270: $06 $0c
    ld hl, $dd02                                  ; $4272: $21 $02 $dd
    xor a                                         ; $4275: $af

jr_00f_4276:
    ld [hl+], a                                   ; $4276: $22
    dec b                                         ; $4277: $05
    jr nz, jr_00f_4276                            ; $4278: $20 $fc

    call Call_00f_4976                            ; $427a: $cd $76 $49
    ld a, $ff                                     ; $427d: $3e $ff
    ld [$dd00], a                                 ; $427f: $ea $00 $dd
    ld [$dd01], a                                 ; $4282: $ea $01 $dd
    ret                                           ; $4285: $c9


    ld h, $80                                     ; $4286: $26 $80
    inc h                                         ; $4288: $24
    ld [hl], a                                    ; $4289: $77
    dec h                                         ; $428a: $25
    rst $38                                       ; $428b: $ff
    db $10                                        ; $428c: $10
    ld [$0012], sp                                ; $428d: $08 $12 $00
    rla                                           ; $4290: $17
    nop                                           ; $4291: $00
    ld hl, $1400                                  ; $4292: $21 $00 $14
    add b                                         ; $4295: $80
    add hl, de                                    ; $4296: $19
    add b                                         ; $4297: $80
    inc hl                                        ; $4298: $23
    add b                                         ; $4299: $80
    inc e                                         ; $429a: $1c
    nop                                           ; $429b: $00
    ld de, $1600                                  ; $429c: $11 $00 $16
    nop                                           ; $429f: $00
    dec de                                        ; $42a0: $1b
    nop                                           ; $42a1: $00
    jr nz, jr_00f_42a4                            ; $42a2: $20 $00

jr_00f_42a4:
    nop                                           ; $42a4: $00

Jump_00f_42a5:
    ld a, c                                       ; $42a5: $79
    ld [$dd00], a                                 ; $42a6: $ea $00 $dd
    ld de, $4a7d                                  ; $42a9: $11 $7d $4a
    cp $ff                                        ; $42ac: $fe $ff
    jr nz, jr_00f_42b7                            ; $42ae: $20 $07

    ld de, $4a74                                  ; $42b0: $11 $74 $4a
    xor a                                         ; $42b3: $af
    ld [$dd0d], a                                 ; $42b4: $ea $0d $dd

jr_00f_42b7:
    ld hl, $dd28                                  ; $42b7: $21 $28 $dd
    call Call_00f_4899                            ; $42ba: $cd $99 $48
    ld hl, $dd04                                  ; $42bd: $21 $04 $dd
    ld a, $f0                                     ; $42c0: $3e $f0
    or [hl]                                       ; $42c2: $b6
    ld [hl], a                                    ; $42c3: $77
    ld hl, $436b                                  ; $42c4: $21 $6b $43

jr_00f_42c7:
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
    call Call_00f_488d                            ; $42d7: $cd $8d $48
    pop hl                                        ; $42da: $e1
    jr jr_00f_42c7                                ; $42db: $18 $ea

Jump_00f_42dd:
    push bc                                       ; $42dd: $c5
    ld hl, $dd02                                  ; $42de: $21 $02 $dd
    xor a                                         ; $42e1: $af
    ld [hl], a                                    ; $42e2: $77
    ld a, [$dd04]                                 ; $42e3: $fa $04 $dd
    ld c, $10                                     ; $42e6: $0e $10
    ld d, $01                                     ; $42e8: $16 $01
    ld b, $04                                     ; $42ea: $06 $04

jr_00f_42ec:
    push af                                       ; $42ec: $f5
    ld a, d                                       ; $42ed: $7a
    ld [$dd06], a                                 ; $42ee: $ea $06 $dd
    ld a, [$dd04]                                 ; $42f1: $fa $04 $dd
    and c                                         ; $42f4: $a1
    and $0f                                       ; $42f5: $e6 $0f
    ld [$dd05], a                                 ; $42f7: $ea $05 $dd
    rlc c                                         ; $42fa: $cb $01

Call_00f_42fc:
    rlc d                                         ; $42fc: $cb $02
    pop af                                        ; $42fe: $f1
    rrca                                          ; $42ff: $0f
    jr nc, jr_00f_430b                            ; $4300: $30 $09

    push af                                       ; $4302: $f5
    push bc                                       ; $4303: $c5
    push hl                                       ; $4304: $e5
    call Call_00f_44fc                            ; $4305: $cd $fc $44
    pop hl                                        ; $4308: $e1
    pop bc                                        ; $4309: $c1
    pop af                                        ; $430a: $f1

jr_00f_430b:
    inc [hl]                                      ; $430b: $34
    dec b                                         ; $430c: $05
    jr nz, jr_00f_42ec                            ; $430d: $20 $dd

    pop bc                                        ; $430f: $c1
    ld a, c                                       ; $4310: $79
    ld [$dd01], a                                 ; $4311: $ea $01 $dd
    ld de, $6efa                                  ; $4314: $11 $fa $6e
    cp $ff                                        ; $4317: $fe $ff
    jr nz, jr_00f_4322                            ; $4319: $20 $07

    ld de, $4a74                                  ; $431b: $11 $74 $4a
    xor a                                         ; $431e: $af
    ld [$dd0c], a                                 ; $431f: $ea $0c $dd

jr_00f_4322:
    ld hl, $dd20                                  ; $4322: $21 $20 $dd
    call Call_00f_4899                            ; $4325: $cd $99 $48
    ld a, c                                       ; $4328: $79
    cp $ff                                        ; $4329: $fe $ff
    jr z, jr_00f_4352                             ; $432b: $28 $25

    ld a, [$dd04]                                 ; $432d: $fa $04 $dd
    or $0f                                        ; $4330: $f6 $0f
    ld d, a                                       ; $4332: $57
    ld e, $fe                                     ; $4333: $1e $fe
    ld b, $04                                     ; $4335: $06 $04
    ld hl, $dd20                                  ; $4337: $21 $20 $dd

jr_00f_433a:
    push hl                                       ; $433a: $e5
    ld a, [hl+]                                   ; $433b: $2a
    ld h, [hl]                                    ; $433c: $66
    ld l, a                                       ; $433d: $6f
    ld a, [hl]                                    ; $433e: $7e
    cp $ef                                        ; $433f: $fe $ef
    jr nz, jr_00f_4346                            ; $4341: $20 $03

    ld a, d                                       ; $4343: $7a
    and e                                         ; $4344: $a3
    ld d, a                                       ; $4345: $57

jr_00f_4346:
    rlc e                                         ; $4346: $cb $03
    pop hl                                        ; $4348: $e1
    inc hl                                        ; $4349: $23
    inc hl                                        ; $434a: $23
    dec b                                         ; $434b: $05
    jr nz, jr_00f_433a                            ; $434c: $20 $ec

    ld a, d                                       ; $434e: $7a
    ld [$dd04], a                                 ; $434f: $ea $04 $dd

jr_00f_4352:
    ld hl, $436b                                  ; $4352: $21 $6b $43

jr_00f_4355:
    ld c, [hl]                                    ; $4355: $4e

jr_00f_4356:
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
    call Call_00f_488d                            ; $4365: $cd $8d $48
    pop hl                                        ; $4368: $e1
    jr jr_00f_4355                                ; $4369: $18 $ea

    ld b, b                                       ; $436b: $40
    db $dd                                        ; $436c: $dd
    nop                                           ; $436d: $00
    nop                                           ; $436e: $00

jr_00f_436f:
    ld [hl], b                                    ; $436f: $70
    db $dd                                        ; $4370: $dd
    nop                                           ; $4371: $00
    nop                                           ; $4372: $00

jr_00f_4373:
    add b                                         ; $4373: $80
    db $dd                                        ; $4374: $dd
    nop                                           ; $4375: $00
    nop                                           ; $4376: $00
    jr nc, jr_00f_4356                            ; $4377: $30 $dd

    nop                                           ; $4379: $00
    nop                                           ; $437a: $00
    ret nz                                        ; $437b: $c0

    db $dd                                        ; $437c: $dd
    nop                                           ; $437d: $00
    nop                                           ; $437e: $00
    or b                                          ; $437f: $b0
    db $dd                                        ; $4380: $dd
    nop                                           ; $4381: $00
    nop                                           ; $4382: $00
    ldh a, [$ffdd]                                ; $4383: $f0 $dd
    nop                                           ; $4385: $00
    nop                                           ; $4386: $00
    nop                                           ; $4387: $00
    sbc $00                                       ; $4388: $de $00
    nop                                           ; $438a: $00
    db $10                                        ; $438b: $10
    sbc $00                                       ; $438c: $de $00
    nop                                           ; $438e: $00
    jr nz, jr_00f_436f                            ; $438f: $20 $de

    nop                                           ; $4391: $00
    nop                                           ; $4392: $00
    jr nc, jr_00f_4373                            ; $4393: $30 $de

    nop                                           ; $4395: $00
    nop                                           ; $4396: $00
    ld b, b                                       ; $4397: $40
    sbc $00                                       ; $4398: $de $00
    nop                                           ; $439a: $00
    ldh [$ffdd], a                                ; $439b: $e0 $dd
    nop                                           ; $439d: $00
    sub b                                         ; $439e: $90
    ld d, b                                       ; $439f: $50
    db $dd                                        ; $43a0: $dd
    nop                                           ; $43a1: $00
    nop                                           ; $43a2: $00
    and b                                         ; $43a3: $a0
    db $dd                                        ; $43a4: $dd
    rrca                                          ; $43a5: $0f
    rst $38                                       ; $43a6: $ff
    nop                                           ; $43a7: $00
    nop                                           ; $43a8: $00
    ld hl, $dd0e                                  ; $43a9: $21 $0e $dd
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


    ld c, $ff                                     ; $43b7: $0e $ff
    jp Jump_00f_42a5                              ; $43b9: $c3 $a5 $42


    ld c, $ff                                     ; $43bc: $0e $ff
    jp Jump_00f_42dd                              ; $43be: $c3 $dd $42


    ld a, [$dd00]                                 ; $43c1: $fa $00 $dd
    ret                                           ; $43c4: $c9


    ld a, [$dd01]                                 ; $43c5: $fa $01 $dd
    ret                                           ; $43c8: $c9


    ret                                           ; $43c9: $c9


Jump_00f_43ca:
    ld a, [$dd0e]                                 ; $43ca: $fa $0e $dd
    inc a                                         ; $43cd: $3c
    jr z, jr_00f_43d8                             ; $43ce: $28 $08

    call Call_00f_4a1a                            ; $43d0: $cd $1a $4a
    ld a, $ff                                     ; $43d3: $3e $ff
    ld [$dd0e], a                                 ; $43d5: $ea $0e $dd

jr_00f_43d8:
    ld hl, $dd02                                  ; $43d8: $21 $02 $dd
    xor a                                         ; $43db: $af
    ld [hl], a                                    ; $43dc: $77
    ld a, [$dd04]                                 ; $43dd: $fa $04 $dd
    ld c, $10                                     ; $43e0: $0e $10
    ld d, $01                                     ; $43e2: $16 $01
    ld b, $08                                     ; $43e4: $06 $08

jr_00f_43e6:
    push af                                       ; $43e6: $f5
    xor a                                         ; $43e7: $af
    ld [$dd07], a                                 ; $43e8: $ea $07 $dd
    ld a, d                                       ; $43eb: $7a
    ld [$dd06], a                                 ; $43ec: $ea $06 $dd
    ld a, [$dd04]                                 ; $43ef: $fa $04 $dd
    and c                                         ; $43f2: $a1
    and $0f                                       ; $43f3: $e6 $0f
    ld [$dd05], a                                 ; $43f5: $ea $05 $dd
    rlc c                                         ; $43f8: $cb $01
    rlc d                                         ; $43fa: $cb $02

Call_00f_43fc:
    pop af                                        ; $43fc: $f1
    rrca                                          ; $43fd: $0f
    jr nc, jr_00f_4409                            ; $43fe: $30 $09

    push af                                       ; $4400: $f5
    push bc                                       ; $4401: $c5
    push hl                                       ; $4402: $e5
    call Call_00f_440e                            ; $4403: $cd $0e $44
    pop hl                                        ; $4406: $e1
    pop bc                                        ; $4407: $c1
    pop af                                        ; $4408: $f1

jr_00f_4409:
    inc [hl]                                      ; $4409: $34
    dec b                                         ; $440a: $05
    jr nz, jr_00f_43e6                            ; $440b: $20 $d9

    ret                                           ; $440d: $c9


Call_00f_440e:
    ld a, [$dd02]                                 ; $440e: $fa $02 $dd
    ld c, a                                       ; $4411: $4f
    ld hl, $dd40                                  ; $4412: $21 $40 $dd
    add a                                         ; $4415: $87
    add l                                         ; $4416: $85
    ld l, a                                       ; $4417: $6f
    ld a, [hl]                                    ; $4418: $7e
    or a                                          ; $4419: $b7
    jp nz, Jump_00f_465c                          ; $441a: $c2 $5c $46

    ld hl, $dd20                                  ; $441d: $21 $20 $dd
    ld a, c                                       ; $4420: $79
    add a                                         ; $4421: $87
    add l                                         ; $4422: $85
    ld l, a                                       ; $4423: $6f
    ld e, [hl]                                    ; $4424: $5e
    inc hl                                        ; $4425: $23
    ld d, [hl]                                    ; $4426: $56

Jump_00f_4427:
    ld a, [de]                                    ; $4427: $1a
    and $f0                                       ; $4428: $e6 $f0
    cp $f0                                        ; $442a: $fe $f0
    jr nz, jr_00f_443b                            ; $442c: $20 $0d

    ld a, [de]                                    ; $442e: $1a
    and $0f                                       ; $442f: $e6 $0f
    ld hl, $40b0                                  ; $4431: $21 $b0 $40
    add a                                         ; $4434: $87
    add l                                         ; $4435: $85
    ld l, a                                       ; $4436: $6f
    ld a, [hl+]                                   ; $4437: $2a
    ld h, [hl]                                    ; $4438: $66
    ld l, a                                       ; $4439: $6f
    jp hl                                         ; $443a: $e9


jr_00f_443b:
    cp $e0                                        ; $443b: $fe $e0
    jr nz, jr_00f_444c                            ; $443d: $20 $0d

    ld a, [de]                                    ; $443f: $1a
    and $0f                                       ; $4440: $e6 $0f
    ld hl, $4090                                  ; $4442: $21 $90 $40
    add a                                         ; $4445: $87
    add l                                         ; $4446: $85

Jump_00f_4447:
    ld l, a                                       ; $4447: $6f
    ld a, [hl+]                                   ; $4448: $2a
    ld h, [hl]                                    ; $4449: $66
    ld l, a                                       ; $444a: $6f
    jp hl                                         ; $444b: $e9


jr_00f_444c:
    ld hl, $dd30                                  ; $444c: $21 $30 $dd
    ld a, c                                       ; $444f: $79
    add a                                         ; $4450: $87
    add l                                         ; $4451: $85
    ld l, a                                       ; $4452: $6f
    ld a, [de]                                    ; $4453: $1a
    and $f0                                       ; $4454: $e6 $f0
    cp $d0                                        ; $4456: $fe $d0
    jr nz, jr_00f_445e                            ; $4458: $20 $04

    ld a, $ff                                     ; $445a: $3e $ff
    jr jr_00f_446d                                ; $445c: $18 $0f

jr_00f_445e:
    push hl                                       ; $445e: $e5
    ld a, [hl]                                    ; $445f: $7e
    ld l, $0c                                     ; $4460: $2e $0c
    call Call_00f_4871                            ; $4462: $cd $71 $48
    ld l, a                                       ; $4465: $6f
    ld a, [de]                                    ; $4466: $1a
    and $f0                                       ; $4467: $e6 $f0
    swap a                                        ; $4469: $cb $37
    add l                                         ; $446b: $85
    pop hl                                        ; $446c: $e1

jr_00f_446d:
    inc hl                                        ; $446d: $23
    ld [hl], a                                    ; $446e: $77
    ld b, $00                                     ; $446f: $06 $00

jr_00f_4471:
    ld a, [de]                                    ; $4471: $1a
    and $0f                                       ; $4472: $e6 $0f
    ld hl, $414c                                  ; $4474: $21 $4c $41
    add l                                         ; $4477: $85
    ld l, a                                       ; $4478: $6f
    ld a, [hl]                                    ; $4479: $7e
    add b                                         ; $447a: $80
    ld b, a                                       ; $447b: $47
    inc de                                        ; $447c: $13
    ld a, [de]                                    ; $447d: $1a
    and $f0                                       ; $447e: $e6 $f0
    cp $c0                                        ; $4480: $fe $c0
    jr z, jr_00f_4471                             ; $4482: $28 $ed

    ld hl, $dd40                                  ; $4484: $21 $40 $dd
    ld a, c                                       ; $4487: $79
    add a                                         ; $4488: $87
    add l                                         ; $4489: $85
    ld l, a                                       ; $448a: $6f
    ld [hl], b                                    ; $448b: $70
    ld hl, $dd50                                  ; $448c: $21 $50 $dd
    ld a, c                                       ; $448f: $79
    add a                                         ; $4490: $87
    add l                                         ; $4491: $85
    ld l, a                                       ; $4492: $6f
    ld a, [hl]                                    ; $4493: $7e
    or a                                          ; $4494: $b7
    jr nz, jr_00f_449b                            ; $4495: $20 $04

    ld b, $00                                     ; $4497: $06 $00
    jr jr_00f_44b3                                ; $4499: $18 $18

jr_00f_449b:
    ld l, b                                       ; $449b: $68
    ld h, $00                                     ; $449c: $26 $00
    call Call_00f_485a                            ; $449e: $cd $5a $48
    srl h                                         ; $44a1: $cb $3c
    rr l                                          ; $44a3: $cb $1d
    srl h                                         ; $44a5: $cb $3c
    rr l                                          ; $44a7: $cb $1d
    srl h                                         ; $44a9: $cb $3c
    rr l                                          ; $44ab: $cb $1d
    ld b, l                                       ; $44ad: $45
    ld a, b                                       ; $44ae: $78
    or a                                          ; $44af: $b7
    jr nz, jr_00f_44b3                            ; $44b0: $20 $01

    inc b                                         ; $44b2: $04

jr_00f_44b3:
    ld hl, $dd60                                  ; $44b3: $21 $60 $dd
    ld a, c                                       ; $44b6: $79
    add a                                         ; $44b7: $87
    add l                                         ; $44b8: $85
    ld l, a                                       ; $44b9: $6f
    ld [hl], b                                    ; $44ba: $70
    ld hl, $dd07                                  ; $44bb: $21 $07 $dd
    ld a, $f9                                     ; $44be: $3e $f9
    or [hl]                                       ; $44c0: $b6
    ld [hl], a                                    ; $44c1: $77
    jp Jump_00f_4652                              ; $44c2: $c3 $52 $46


    ld a, c                                       ; $44c5: $79
    ld hl, $dd0c                                  ; $44c6: $21 $0c $dd
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
    jp Jump_00f_464d                              ; $44d8: $c3 $4d $46


    ld h, d                                       ; $44db: $62
    ld l, e                                       ; $44dc: $6b
    inc hl                                        ; $44dd: $23
    ld e, [hl]                                    ; $44de: $5e
    inc hl                                        ; $44df: $23
    ld d, [hl]                                    ; $44e0: $56
    jp Jump_00f_464e                              ; $44e1: $c3 $4e $46


    ld hl, $de40                                  ; $44e4: $21 $40 $de
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
    jp nz, Jump_00f_464e                          ; $44f3: $c2 $4e $46

    call Call_00f_44fc                            ; $44f6: $cd $fc $44
    jp Jump_00f_4652                              ; $44f9: $c3 $52 $46


Call_00f_44fc:
    ld a, [$dd02]                                 ; $44fc: $fa $02 $dd
    ld c, a                                       ; $44ff: $4f
    call Call_00f_48ab                            ; $4500: $cd $ab $48
    jr c, jr_00f_4523                             ; $4503: $38 $1e

    xor a                                         ; $4505: $af
    call Call_00f_490b                            ; $4506: $cd $0b $49
    ld a, c                                       ; $4509: $79
    cp $04                                        ; $450a: $fe $04
    jr nc, jr_00f_4523                            ; $450c: $30 $15

    ld a, [$dd06]                                 ; $450e: $fa $06 $dd
    swap a                                        ; $4511: $cb $37
    ld hl, $dd04                                  ; $4513: $21 $04 $dd
    and [hl]                                      ; $4516: $a6
    jr z, jr_00f_4523                             ; $4517: $28 $0a

    ld hl, $dd08                                  ; $4519: $21 $08 $dd
    ld a, c                                       ; $451c: $79
    add l                                         ; $451d: $85
    ld l, a                                       ; $451e: $6f
    ld a, $f0                                     ; $451f: $3e $f0
    or [hl]                                       ; $4521: $b6
    ld [hl], a                                    ; $4522: $77

jr_00f_4523:
    ld b, c                                       ; $4523: $41
    inc b                                         ; $4524: $04
    xor a                                         ; $4525: $af
    dec a                                         ; $4526: $3d

jr_00f_4527:
    rla                                           ; $4527: $17
    dec b                                         ; $4528: $05
    jr nz, jr_00f_4527                            ; $4529: $20 $fc

    ld hl, $dd04                                  ; $452b: $21 $04 $dd
    and [hl]                                      ; $452e: $a6
    ld [hl], a                                    ; $452f: $77
    push af                                       ; $4530: $f5
    and $f0                                       ; $4531: $e6 $f0
    jr nz, jr_00f_453a                            ; $4533: $20 $05

    ld a, $ff                                     ; $4535: $3e $ff
    ld [$dd00], a                                 ; $4537: $ea $00 $dd

jr_00f_453a:
    pop af                                        ; $453a: $f1
    and $0f                                       ; $453b: $e6 $0f
    jr nz, jr_00f_4544                            ; $453d: $20 $05

    ld a, $ff                                     ; $453f: $3e $ff
    ld [$dd01], a                                 ; $4541: $ea $01 $dd

jr_00f_4544:
    ret                                           ; $4544: $c9


    ld hl, $de40                                  ; $4545: $21 $40 $de
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
    jp Jump_00f_464e                              ; $4559: $c3 $4e $46


    ld hl, $ddb0                                  ; $455c: $21 $b0 $dd
    ld a, c                                       ; $455f: $79
    add a                                         ; $4560: $87
    add l                                         ; $4561: $85
    ld l, a                                       ; $4562: $6f
    inc de                                        ; $4563: $13
    ld a, [de]                                    ; $4564: $1a
    inc de                                        ; $4565: $13
    ld [hl], a                                    ; $4566: $77
    ld hl, $ddc0                                  ; $4567: $21 $c0 $dd
    ld a, c                                       ; $456a: $79
    add a                                         ; $456b: $87
    add l                                         ; $456c: $85
    ld l, a                                       ; $456d: $6f
    ld a, [de]                                    ; $456e: $1a
    inc de                                        ; $456f: $13
    ld [hl], a                                    ; $4570: $77
    jp Jump_00f_464d                              ; $4571: $c3 $4d $46


    ld hl, $de00                                  ; $4574: $21 $00 $de
    ld a, c                                       ; $4577: $79
    add a                                         ; $4578: $87
    add l                                         ; $4579: $85
    ld l, a                                       ; $457a: $6f
    push hl                                       ; $457b: $e5
    inc hl                                        ; $457c: $23
    inc de                                        ; $457d: $13
    ld a, [de]                                    ; $457e: $1a
    ld [hl], a                                    ; $457f: $77
    ld hl, $ddf0                                  ; $4580: $21 $f0 $dd
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
    jp Jump_00f_464d                              ; $4590: $c3 $4d $46


    ld hl, $de20                                  ; $4593: $21 $20 $de
    ld a, c                                       ; $4596: $79
    add a                                         ; $4597: $87
    add l                                         ; $4598: $85
    ld l, a                                       ; $4599: $6f
    inc de                                        ; $459a: $13
    ld a, [de]                                    ; $459b: $1a
    ld [hl], a                                    ; $459c: $77
    ld hl, $de30                                  ; $459d: $21 $30 $de
    ld a, c                                       ; $45a0: $79
    add a                                         ; $45a1: $87
    add l                                         ; $45a2: $85
    ld l, a                                       ; $45a3: $6f
    inc de                                        ; $45a4: $13
    ld [hl], e                                    ; $45a5: $73
    inc hl                                        ; $45a6: $23
    ld [hl], d                                    ; $45a7: $72
    jp Jump_00f_464e                              ; $45a8: $c3 $4e $46


    ld hl, $de20                                  ; $45ab: $21 $20 $de
    ld a, c                                       ; $45ae: $79
    add a                                         ; $45af: $87
    add l                                         ; $45b0: $85
    ld l, a                                       ; $45b1: $6f
    dec [hl]                                      ; $45b2: $35
    jp z, Jump_00f_464d                           ; $45b3: $ca $4d $46

    ld hl, $de30                                  ; $45b6: $21 $30 $de
    ld a, c                                       ; $45b9: $79
    add a                                         ; $45ba: $87
    add l                                         ; $45bb: $85
    ld l, a                                       ; $45bc: $6f
    ld e, [hl]                                    ; $45bd: $5e
    inc hl                                        ; $45be: $23
    ld d, [hl]                                    ; $45bf: $56
    jp Jump_00f_464e                              ; $45c0: $c3 $4e $46


    ld hl, $dd50                                  ; $45c3: $21 $50 $dd
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
    jr jr_00f_464d                                ; $45d5: $18 $76

    ld hl, $dda0                                  ; $45d7: $21 $a0 $dd
    ld a, c                                       ; $45da: $79
    add a                                         ; $45db: $87
    add l                                         ; $45dc: $85
    ld l, a                                       ; $45dd: $6f
    inc de                                        ; $45de: $13
    ld a, [de]                                    ; $45df: $1a
    and $0f                                       ; $45e0: $e6 $0f
    ld [hl+], a                                   ; $45e2: $22
    ld [hl], a                                    ; $45e3: $77
    jr jr_00f_464d                                ; $45e4: $18 $67

    ld hl, $de10                                  ; $45e6: $21 $10 $de
    ld a, c                                       ; $45e9: $79
    add a                                         ; $45ea: $87
    add l                                         ; $45eb: $85
    ld l, a                                       ; $45ec: $6f
    inc hl                                        ; $45ed: $23
    inc de                                        ; $45ee: $13
    ld a, [de]                                    ; $45ef: $1a
    ld [hl], a                                    ; $45f0: $77
    jr jr_00f_464d                                ; $45f1: $18 $5a

    ld hl, $dde0                                  ; $45f3: $21 $e0 $dd
    ld a, c                                       ; $45f6: $79
    add a                                         ; $45f7: $87
    add l                                         ; $45f8: $85
    ld l, a                                       ; $45f9: $6f
    inc de                                        ; $45fa: $13
    ld a, [de]                                    ; $45fb: $1a

Call_00f_45fc:
Jump_00f_45fc:
    ld [hl], a                                    ; $45fc: $77
    jr jr_00f_464d                                ; $45fd: $18 $4e

    ld hl, $de10                                  ; $45ff: $21 $10 $de
    ld a, c                                       ; $4602: $79
    add a                                         ; $4603: $87
    add l                                         ; $4604: $85
    ld l, a                                       ; $4605: $6f
    inc de                                        ; $4606: $13
    ld a, [de]                                    ; $4607: $1a
    ld [hl], a                                    ; $4608: $77
    jr jr_00f_464d                                ; $4609: $18 $42

    ld hl, $ddd0                                  ; $460b: $21 $d0 $dd
    ld a, c                                       ; $460e: $79
    add a                                         ; $460f: $87
    add l                                         ; $4610: $85
    ld l, a                                       ; $4611: $6f
    inc de                                        ; $4612: $13
    ld a, [de]                                    ; $4613: $1a
    ld [hl], a                                    ; $4614: $77
    jr jr_00f_464d                                ; $4615: $18 $36

    ld hl, $dd90                                  ; $4617: $21 $90 $dd
    ld a, c                                       ; $461a: $79
    add a                                         ; $461b: $87
    add l                                         ; $461c: $85
    ld l, a                                       ; $461d: $6f
    inc de                                        ; $461e: $13
    ld a, [de]                                    ; $461f: $1a
    ld [hl], a                                    ; $4620: $77
    jr jr_00f_464d                                ; $4621: $18 $2a

    ld hl, $dd30                                  ; $4623: $21 $30 $dd
    ld a, c                                       ; $4626: $79
    add a                                         ; $4627: $87
    add l                                         ; $4628: $85
    ld l, a                                       ; $4629: $6f
    ld a, [de]                                    ; $462a: $1a
    and $0f                                       ; $462b: $e6 $0f
    ld [hl], a                                    ; $462d: $77
    jr jr_00f_464d                                ; $462e: $18 $1d

    ld hl, $dd30                                  ; $4630: $21 $30 $dd
    ld a, c                                       ; $4633: $79
    add a                                         ; $4634: $87
    add l                                         ; $4635: $85
    ld l, a                                       ; $4636: $6f
    ld a, [hl]                                    ; $4637: $7e
    cp $08                                        ; $4638: $fe $08
    jr z, jr_00f_464d                             ; $463a: $28 $11

    inc [hl]                                      ; $463c: $34
    jr jr_00f_464d                                ; $463d: $18 $0e

    ld hl, $dd30                                  ; $463f: $21 $30 $dd
    ld a, c                                       ; $4642: $79
    add a                                         ; $4643: $87
    add l                                         ; $4644: $85
    ld l, a                                       ; $4645: $6f
    ld a, [hl]                                    ; $4646: $7e
    or a                                          ; $4647: $b7
    jr z, jr_00f_464d                             ; $4648: $28 $03

    dec [hl]                                      ; $464a: $35
    jr jr_00f_464d                                ; $464b: $18 $00

Jump_00f_464d:
jr_00f_464d:
    inc de                                        ; $464d: $13

Jump_00f_464e:
    jp Jump_00f_4427                              ; $464e: $c3 $27 $44


    inc de                                        ; $4651: $13

Jump_00f_4652:
    ld hl, $dd20                                  ; $4652: $21 $20 $dd
    ld a, c                                       ; $4655: $79
    add a                                         ; $4656: $87
    add l                                         ; $4657: $85
    ld l, a                                       ; $4658: $6f
    ld [hl], e                                    ; $4659: $73
    inc hl                                        ; $465a: $23
    ld [hl], d                                    ; $465b: $72

Jump_00f_465c:
    ld a, [$dd07]                                 ; $465c: $fa $07 $dd
    and $01                                       ; $465f: $e6 $01
    ld a, [$dd02]                                 ; $4661: $fa $02 $dd
    ld c, a                                       ; $4664: $4f
    jr z, jr_00f_4689                             ; $4665: $28 $22

    ld hl, $dd70                                  ; $4667: $21 $70 $dd
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
    jr z, jr_00f_46a3                             ; $4685: $28 $1c

    jr jr_00f_46a0                                ; $4687: $18 $17

jr_00f_4689:
    ld hl, $dd80                                  ; $4689: $21 $80 $dd
    ld a, [$dd02]                                 ; $468c: $fa $02 $dd
    add a                                         ; $468f: $87
    add l                                         ; $4690: $85
    ld l, a                                       ; $4691: $6f
    inc [hl]                                      ; $4692: $34
    ld b, [hl]                                    ; $4693: $46
    ld a, c                                       ; $4694: $79
    and $03                                       ; $4695: $e6 $03
    cp $03                                        ; $4697: $fe $03
    jr z, jr_00f_46a3                             ; $4699: $28 $08

    push bc                                       ; $469b: $c5
    call Call_00f_479f                            ; $469c: $cd $9f $47
    pop bc                                        ; $469f: $c1

jr_00f_46a0:
    call Call_00f_47c1                            ; $46a0: $cd $c1 $47

jr_00f_46a3:
    ld hl, $dde0                                  ; $46a3: $21 $e0 $dd
    ld a, c                                       ; $46a6: $79
    add a                                         ; $46a7: $87
    add l                                         ; $46a8: $85
    ld l, a                                       ; $46a9: $6f
    ld a, [hl+]                                   ; $46aa: $2a
    add [hl]                                      ; $46ab: $86
    push hl                                       ; $46ac: $e5
    jr c, jr_00f_46b4                             ; $46ad: $38 $05

    cp $90                                        ; $46af: $fe $90
    jp c, Jump_00f_4716                           ; $46b1: $da $16 $47

Jump_00f_46b4:
jr_00f_46b4:
    sub $90                                       ; $46b4: $d6 $90
    ld hl, $dd40                                  ; $46b6: $21 $40 $dd
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
    ld hl, $dd70                                  ; $46c3: $21 $70 $dd
    ld a, c                                       ; $46c6: $79
    add a                                         ; $46c7: $87
    add l                                         ; $46c8: $85
    ld l, a                                       ; $46c9: $6f
    inc [hl]                                      ; $46ca: $34
    ld b, [hl]                                    ; $46cb: $46
    ld hl, $dd60                                  ; $46cc: $21 $60 $dd
    ld a, c                                       ; $46cf: $79
    add a                                         ; $46d0: $87
    add l                                         ; $46d1: $85
    ld l, a                                       ; $46d2: $6f
    ld a, b                                       ; $46d3: $78
    cp [hl]                                       ; $46d4: $be
    jr nz, jr_00f_4706                            ; $46d5: $20 $2f

    ld hl, $dd50                                  ; $46d7: $21 $50 $dd
    ld a, c                                       ; $46da: $79
    add a                                         ; $46db: $87
    add l                                         ; $46dc: $85
    ld l, a                                       ; $46dd: $6f
    inc hl                                        ; $46de: $23
    ld a, [hl]                                    ; $46df: $7e
    ld hl, $dda0                                  ; $46e0: $21 $a0 $dd
    push af                                       ; $46e3: $f5
    ld a, c                                       ; $46e4: $79
    add a                                         ; $46e5: $87
    add l                                         ; $46e6: $85
    ld l, a                                       ; $46e7: $6f
    pop af                                        ; $46e8: $f1
    inc hl                                        ; $46e9: $23
    ld [hl], a                                    ; $46ea: $77
    ld hl, $dd07                                  ; $46eb: $21 $07 $dd
    ld a, $c0                                     ; $46ee: $3e $c0
    or [hl]                                       ; $46f0: $b6
    ld [hl], a                                    ; $46f1: $77
    ld hl, $dd90                                  ; $46f2: $21 $90 $dd
    ld a, c                                       ; $46f5: $79
    add a                                         ; $46f6: $87
    add l                                         ; $46f7: $85
    ld l, a                                       ; $46f8: $6f
    ld a, [hl+]                                   ; $46f9: $2a
    swap a                                        ; $46fa: $cb $37

Call_00f_46fc:
Jump_00f_46fc:
    and $03                                       ; $46fc: $e6 $03
    ld [hl], a                                    ; $46fe: $77
    ld hl, $dd07                                  ; $46ff: $21 $07 $dd
    ld a, $10                                     ; $4702: $3e $10
    or [hl]                                       ; $4704: $b6
    ld [hl], a                                    ; $4705: $77

jr_00f_4706:
    pop af                                        ; $4706: $f1
    pop bc                                        ; $4707: $c1
    push af                                       ; $4708: $f5
    ld a, b                                       ; $4709: $78
    or a                                          ; $470a: $b7
    jr z, jr_00f_4715                             ; $470b: $28 $08

    pop af                                        ; $470d: $f1
    cp $90                                        ; $470e: $fe $90
    jr c, jr_00f_4716                             ; $4710: $38 $04

    jp Jump_00f_46b4                              ; $4712: $c3 $b4 $46


jr_00f_4715:
    pop af                                        ; $4715: $f1

Jump_00f_4716:
jr_00f_4716:
    push af                                       ; $4716: $f5
    call Call_00f_48ab                            ; $4717: $cd $ab $48
    jp c, Jump_00f_479b                           ; $471a: $da $9b $47

    ld a, c                                       ; $471d: $79
    ld de, $dd07                                  ; $471e: $11 $07 $dd
    cp $04                                        ; $4721: $fe $04
    jr c, jr_00f_4733                             ; $4723: $38 $0e

    ld hl, $dd08                                  ; $4725: $21 $08 $dd
    and $03                                       ; $4728: $e6 $03
    add l                                         ; $472a: $85
    ld l, a                                       ; $472b: $6f
    ld a, [hl]                                    ; $472c: $7e
    ld [hl], $00                                  ; $472d: $36 $00
    ld h, d                                       ; $472f: $62
    ld l, e                                       ; $4730: $6b
    or [hl]                                       ; $4731: $b6
    ld [hl], a                                    ; $4732: $77

jr_00f_4733:
    ld a, [de]                                    ; $4733: $1a
    and $10                                       ; $4734: $e6 $10
    jr z, jr_00f_4744                             ; $4736: $28 $0c

    ld hl, $dd90                                  ; $4738: $21 $90 $dd
    ld a, c                                       ; $473b: $79
    add a                                         ; $473c: $87
    add l                                         ; $473d: $85
    ld l, a                                       ; $473e: $6f
    inc hl                                        ; $473f: $23
    ld a, [hl]                                    ; $4740: $7e
    call Call_00f_48b8                            ; $4741: $cd $b8 $48

jr_00f_4744:
    ld a, [de]                                    ; $4744: $1a
    and $20                                       ; $4745: $e6 $20
    jr z, jr_00f_4755                             ; $4747: $28 $0c

    ld hl, $ddb0                                  ; $4749: $21 $b0 $dd
    ld a, c                                       ; $474c: $79
    add a                                         ; $474d: $87
    add l                                         ; $474e: $85
    ld l, a                                       ; $474f: $6f
    inc hl                                        ; $4750: $23
    ld a, [hl]                                    ; $4751: $7e
    call Call_00f_4931                            ; $4752: $cd $31 $49

jr_00f_4755:
    ld a, [de]                                    ; $4755: $1a
    and $40                                       ; $4756: $e6 $40
    jr z, jr_00f_4784                             ; $4758: $28 $2a

    ld hl, $dd30                                  ; $475a: $21 $30 $dd
    ld a, c                                       ; $475d: $79
    add a                                         ; $475e: $87
    add l                                         ; $475f: $85
    ld l, a                                       ; $4760: $6f
    inc hl                                        ; $4761: $23
    ld a, [hl]                                    ; $4762: $7e
    rlca                                          ; $4763: $07
    jr nc, jr_00f_4769                            ; $4764: $30 $03

    xor a                                         ; $4766: $af

Jump_00f_4767:
    jr jr_00f_4781                                ; $4767: $18 $18

jr_00f_4769:
    ld a, c                                       ; $4769: $79
    ld hl, $dd0c                                  ; $476a: $21 $0c $dd
    srl a                                         ; $476d: $cb $3f
    srl a                                         ; $476f: $cb $3f
    add l                                         ; $4771: $85
    ld l, a                                       ; $4772: $6f
    ld b, [hl]                                    ; $4773: $46
    ld a, c                                       ; $4774: $79
    ld hl, $dda0                                  ; $4775: $21 $a0 $dd
    add a                                         ; $4778: $87
    add l                                         ; $4779: $85
    ld l, a                                       ; $477a: $6f
    inc hl                                        ; $477b: $23
    ld a, [hl]                                    ; $477c: $7e
    sub b                                         ; $477d: $90
    jr nc, jr_00f_4781                            ; $477e: $30 $01

    xor a                                         ; $4780: $af

jr_00f_4781:
    call Call_00f_490b                            ; $4781: $cd $0b $49

jr_00f_4784:
    ld hl, $ddd0                                  ; $4784: $21 $d0 $dd
    ld a, c                                       ; $4787: $79
    add a                                         ; $4788: $87
    add l                                         ; $4789: $85
    ld l, a                                       ; $478a: $6f
    ld a, [hl+]                                   ; $478b: $2a
    ld h, [hl]                                    ; $478c: $66
    ld l, a                                       ; $478d: $6f
    ld a, [de]                                    ; $478e: $1a
    and $80                                       ; $478f: $e6 $80
    jr z, jr_00f_4798                             ; $4791: $28 $05

    sla h                                         ; $4793: $cb $24
    scf                                           ; $4795: $37
    rr h                                          ; $4796: $cb $1c

jr_00f_4798:
    call Call_00f_4952                            ; $4798: $cd $52 $49

Jump_00f_479b:
    pop af                                        ; $479b: $f1
    pop hl                                        ; $479c: $e1
    ld [hl], a                                    ; $479d: $77
    ret                                           ; $479e: $c9


Call_00f_479f:
    ld hl, $ddc0                                  ; $479f: $21 $c0 $dd
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
    ld hl, $ddb0                                  ; $47ac: $21 $b0 $dd
    add a                                         ; $47af: $87
    add l                                         ; $47b0: $85
    ld l, a                                       ; $47b1: $6f
    ld a, [hl]                                    ; $47b2: $7e
    swap a                                        ; $47b3: $cb $37
    and $0f                                       ; $47b5: $e6 $0f
    inc hl                                        ; $47b7: $23
    ld [hl], a                                    ; $47b8: $77
    ld hl, $dd07                                  ; $47b9: $21 $07 $dd
    ld a, $a0                                     ; $47bc: $3e $a0
    or [hl]                                       ; $47be: $b6
    ld [hl], a                                    ; $47bf: $77
    ret                                           ; $47c0: $c9


Call_00f_47c1:
    call Call_00f_47f4                            ; $47c1: $cd $f4 $47
    jr c, jr_00f_47cc                             ; $47c4: $38 $06

    ld a, [$dd07]                                 ; $47c6: $fa $07 $dd
    and $08                                       ; $47c9: $e6 $08
    ret z                                         ; $47cb: $c8

jr_00f_47cc:
    ld e, l                                       ; $47cc: $5d
    ld d, h                                       ; $47cd: $54
    ld hl, $de10                                  ; $47ce: $21 $10 $de
    ld a, c                                       ; $47d1: $79
    add a                                         ; $47d2: $87
    add l                                         ; $47d3: $85
    ld l, a                                       ; $47d4: $6f
    ld a, [hl+]                                   ; $47d5: $2a
    ld h, [hl]                                    ; $47d6: $66
    ld l, a                                       ; $47d7: $6f
    add hl, de                                    ; $47d8: $19
    push hl                                       ; $47d9: $e5
    ld hl, $dd30                                  ; $47da: $21 $30 $dd
    ld a, c                                       ; $47dd: $79
    add a                                         ; $47de: $87
    add l                                         ; $47df: $85
    ld l, a                                       ; $47e0: $6f
    inc hl                                        ; $47e1: $23
    ld a, [hl]                                    ; $47e2: $7e
    pop hl                                        ; $47e3: $e1
    call Call_00f_49bd                            ; $47e4: $cd $bd $49
    ld d, h                                       ; $47e7: $54
    ld e, l                                       ; $47e8: $5d

Call_00f_47e9:
Jump_00f_47e9:
    ld hl, $ddd0                                  ; $47e9: $21 $d0 $dd
    ld a, c                                       ; $47ec: $79
    add a                                         ; $47ed: $87
    add l                                         ; $47ee: $85
    ld l, a                                       ; $47ef: $6f
    ld [hl], e                                    ; $47f0: $73
    inc hl                                        ; $47f1: $23
    ld [hl], d                                    ; $47f2: $72
    ret                                           ; $47f3: $c9


Call_00f_47f4:
    push bc                                       ; $47f4: $c5
    ld hl, $de00                                  ; $47f5: $21 $00 $de
    ld a, c                                       ; $47f8: $79
    add a                                         ; $47f9: $87
    add l                                         ; $47fa: $85
    ld l, a                                       ; $47fb: $6f

Call_00f_47fc:
    ld a, [hl]                                    ; $47fc: $7e
    or a                                          ; $47fd: $b7
    jr z, jr_00f_4807                             ; $47fe: $28 $07

    push hl                                       ; $4800: $e5
    inc hl                                        ; $4801: $23
    ld a, [hl]                                    ; $4802: $7e
    cp b                                          ; $4803: $b8
    jr c, jr_00f_480d                             ; $4804: $38 $07

    pop hl                                        ; $4806: $e1

jr_00f_4807:
    ld hl, $0000                                  ; $4807: $21 $00 $00
    pop bc                                        ; $480a: $c1
    or a                                          ; $480b: $b7
    ret                                           ; $480c: $c9


jr_00f_480d:
    ld hl, $ddf0                                  ; $480d: $21 $f0 $dd
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
    jr nc, jr_00f_481f                            ; $481c: $30 $01

    cpl                                           ; $481e: $2f

jr_00f_481f:
    pop hl                                        ; $481f: $e1
    ld l, [hl]                                    ; $4820: $6e
    ld h, $00                                     ; $4821: $26 $00
    call Call_00f_485a                            ; $4823: $cd $5a $48
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
    jr nc, jr_00f_483f                            ; $4836: $30 $07

    ld a, h                                       ; $4838: $7c
    scf                                           ; $4839: $37
    ld h, a                                       ; $483a: $67
    ld a, l                                       ; $483b: $7d
    scf                                           ; $483c: $37
    ld l, a                                       ; $483d: $6f
    inc hl                                        ; $483e: $23

jr_00f_483f:
    pop bc                                        ; $483f: $c1
    scf                                           ; $4840: $37
    ret                                           ; $4841: $c9


Call_00f_4842:
    push bc                                       ; $4842: $c5
    push de                                       ; $4843: $d5
    ld e, a                                       ; $4844: $5f
    ld b, $08                                     ; $4845: $06 $08

jr_00f_4847:
    add hl, hl                                    ; $4847: $29
    ld a, h                                       ; $4848: $7c
    jr c, jr_00f_484e                             ; $4849: $38 $03

    cp e                                          ; $484b: $bb
    jr c, jr_00f_4851                             ; $484c: $38 $03

jr_00f_484e:
    sub e                                         ; $484e: $93
    ld h, a                                       ; $484f: $67
    inc hl                                        ; $4850: $23

jr_00f_4851:
    dec b                                         ; $4851: $05
    jr nz, jr_00f_4847                            ; $4852: $20 $f3

    ld a, l                                       ; $4854: $7d
    ld l, h                                       ; $4855: $6c
    ld h, a                                       ; $4856: $67
    pop de                                        ; $4857: $d1
    pop bc                                        ; $4858: $c1
    ret                                           ; $4859: $c9


Call_00f_485a:
    push bc                                       ; $485a: $c5
    push de                                       ; $485b: $d5
    ld d, h                                       ; $485c: $54
    ld e, l                                       ; $485d: $5d
    ld hl, $0000                                  ; $485e: $21 $00 $00
    ld b, $08                                     ; $4861: $06 $08

jr_00f_4863:
    rrca                                          ; $4863: $0f
    jr nc, jr_00f_4867                            ; $4864: $30 $01

    add hl, de                                    ; $4866: $19

jr_00f_4867:
    sla e                                         ; $4867: $cb $23
    rl d                                          ; $4869: $cb $12
    dec b                                         ; $486b: $05
    jr nz, jr_00f_4863                            ; $486c: $20 $f5

    pop de                                        ; $486e: $d1
    pop bc                                        ; $486f: $c1
    ret                                           ; $4870: $c9


Call_00f_4871:
    ld h, a                                       ; $4871: $67
    xor a                                         ; $4872: $af
    srl h                                         ; $4873: $cb $3c
    jr nc, jr_00f_4878                            ; $4875: $30 $01

    add l                                         ; $4877: $85

jr_00f_4878:
    sla l                                         ; $4878: $cb $25
    srl h                                         ; $487a: $cb $3c
    jr nc, jr_00f_487f                            ; $487c: $30 $01

    add l                                         ; $487e: $85

jr_00f_487f:
    sla l                                         ; $487f: $cb $25
    srl h                                         ; $4881: $cb $3c
    jr nc, jr_00f_4886                            ; $4883: $30 $01

    add l                                         ; $4885: $85

jr_00f_4886:
    sla l                                         ; $4886: $cb $25
    srl h                                         ; $4888: $cb $3c
    ret nc                                        ; $488a: $d0

    add l                                         ; $488b: $85
    ret                                           ; $488c: $c9


Call_00f_488d:
    push bc                                       ; $488d: $c5
    ld b, $04                                     ; $488e: $06 $04

jr_00f_4890:
    ld [hl], d                                    ; $4890: $72
    inc hl                                        ; $4891: $23
    ld [hl], e                                    ; $4892: $73
    inc hl                                        ; $4893: $23
    dec b                                         ; $4894: $05
    jr nz, jr_00f_4890                            ; $4895: $20 $f9

    pop bc                                        ; $4897: $c1
    ret                                           ; $4898: $c9


Call_00f_4899:
    add a                                         ; $4899: $87
    add a                                         ; $489a: $87
    add a                                         ; $489b: $87
    add e                                         ; $489c: $83
    ld e, a                                       ; $489d: $5f
    ld a, d                                       ; $489e: $7a
    adc $00                                       ; $489f: $ce $00
    ld d, a                                       ; $48a1: $57
    ld b, $08                                     ; $48a2: $06 $08

jr_00f_48a4:
    ld a, [de]                                    ; $48a4: $1a
    inc de                                        ; $48a5: $13
    ld [hl+], a                                   ; $48a6: $22
    dec b                                         ; $48a7: $05
    jr nz, jr_00f_48a4                            ; $48a8: $20 $fa

    ret                                           ; $48aa: $c9


Call_00f_48ab:
    push af                                       ; $48ab: $f5
    ld a, [$dd05]                                 ; $48ac: $fa $05 $dd
    or a                                          ; $48af: $b7
    jr nz, jr_00f_48b5                            ; $48b0: $20 $03

    pop af                                        ; $48b2: $f1
    or a                                          ; $48b3: $b7
    ret                                           ; $48b4: $c9


jr_00f_48b5:
    pop af                                        ; $48b5: $f1
    scf                                           ; $48b6: $37
    ret                                           ; $48b7: $c9


Call_00f_48b8:
    push bc                                       ; $48b8: $c5
    push hl                                       ; $48b9: $e5
    push af                                       ; $48ba: $f5
    ld a, c                                       ; $48bb: $79
    and $03                                       ; $48bc: $e6 $03
    ld c, a                                       ; $48be: $4f
    ld hl, $4144                                  ; $48bf: $21 $44 $41
    add l                                         ; $48c2: $85
    ld l, a                                       ; $48c3: $6f
    ld b, [hl]                                    ; $48c4: $46
    ldh a, [rNR51]                                ; $48c5: $f0 $25
    and b                                         ; $48c7: $a0
    ld b, a                                       ; $48c8: $47
    pop af                                        ; $48c9: $f1
    and $03                                       ; $48ca: $e6 $03
    ld hl, $4148                                  ; $48cc: $21 $48 $41
    add l                                         ; $48cf: $85
    ld l, a                                       ; $48d0: $6f
    ld a, [hl]                                    ; $48d1: $7e
    inc c                                         ; $48d2: $0c

jr_00f_48d3:
    dec c                                         ; $48d3: $0d
    jr z, jr_00f_48d9                             ; $48d4: $28 $03

    rlca                                          ; $48d6: $07
    jr jr_00f_48d3                                ; $48d7: $18 $fa

jr_00f_48d9:
    or b                                          ; $48d9: $b0
    ldh [rNR51], a                                ; $48da: $e0 $25
    pop hl                                        ; $48dc: $e1
    pop bc                                        ; $48dd: $c1
    ret                                           ; $48de: $c9


    push bc                                       ; $48df: $c5
    push hl                                       ; $48e0: $e5
    ld a, c                                       ; $48e1: $79
    and $03                                       ; $48e2: $e6 $03
    ld b, a                                       ; $48e4: $47
    ld hl, $413c                                  ; $48e5: $21 $3c $41
    add l                                         ; $48e8: $85
    ld l, a                                       ; $48e9: $6f
    ld c, [hl]                                    ; $48ea: $4e
    ld a, b                                       ; $48eb: $78
    cp $02                                        ; $48ec: $fe $02
    jr nz, jr_00f_48fa                            ; $48ee: $20 $0a

    xor a                                         ; $48f0: $af
    ldh [c], a                                    ; $48f1: $e2
    ldh [rNR30], a                                ; $48f2: $e0 $1a
    ld a, $80                                     ; $48f4: $3e $80
    ldh [rNR30], a                                ; $48f6: $e0 $1a
    jr jr_00f_4908                                ; $48f8: $18 $0e

jr_00f_48fa:
    ld a, $08                                     ; $48fa: $3e $08
    ldh [c], a                                    ; $48fc: $e2
    ld hl, $4134                                  ; $48fd: $21 $34 $41
    ld a, b                                       ; $4900: $78
    add l                                         ; $4901: $85
    ld l, a                                       ; $4902: $6f
    ld c, [hl]                                    ; $4903: $4e
    inc c                                         ; $4904: $0c
    ld a, $80                                     ; $4905: $3e $80
    ldh [c], a                                    ; $4907: $e2

jr_00f_4908:
    pop hl                                        ; $4908: $e1
    pop bc                                        ; $4909: $c1
    ret                                           ; $490a: $c9


Call_00f_490b:
    push bc                                       ; $490b: $c5
    push hl                                       ; $490c: $e5
    and $0f                                       ; $490d: $e6 $0f
    ld b, a                                       ; $490f: $47
    ld a, c                                       ; $4910: $79
    and $03                                       ; $4911: $e6 $03
    ld c, a                                       ; $4913: $4f
    cp $02                                        ; $4914: $fe $02
    jr nz, jr_00f_4923                            ; $4916: $20 $0b

    ld a, b                                       ; $4918: $78
    srl a                                         ; $4919: $cb $3f
    srl a                                         ; $491b: $cb $3f
    ld hl, $4140                                  ; $491d: $21 $40 $41
    add l                                         ; $4920: $85
    ld l, a                                       ; $4921: $6f
    ld b, [hl]                                    ; $4922: $46

jr_00f_4923:
    ld hl, $413c                                  ; $4923: $21 $3c $41
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


Call_00f_4931:
    push bc                                       ; $4931: $c5
    push hl                                       ; $4932: $e5
    ld b, a                                       ; $4933: $47
    ld a, c                                       ; $4934: $79
    and $03                                       ; $4935: $e6 $03
    cp $03                                        ; $4937: $fe $03
    jr z, jr_00f_494f                             ; $4939: $28 $14

    cp $02                                        ; $493b: $fe $02
    jr nz, jr_00f_4945                            ; $493d: $20 $06

    ld a, b                                       ; $493f: $78
    call Call_00f_4976                            ; $4940: $cd $76 $49
    jr jr_00f_494f                                ; $4943: $18 $0a

jr_00f_4945:
    ld hl, $4138                                  ; $4945: $21 $38 $41
    add l                                         ; $4948: $85
    ld l, a                                       ; $4949: $6f
    ld c, [hl]                                    ; $494a: $4e
    ld a, b                                       ; $494b: $78
    rrca                                          ; $494c: $0f
    rrca                                          ; $494d: $0f
    ldh [c], a                                    ; $494e: $e2

jr_00f_494f:
    pop hl                                        ; $494f: $e1
    pop bc                                        ; $4950: $c1
    ret                                           ; $4951: $c9


Call_00f_4952:
    push bc                                       ; $4952: $c5
    ld a, c                                       ; $4953: $79
    and $03                                       ; $4954: $e6 $03
    push hl                                       ; $4956: $e5
    cp $02                                        ; $4957: $fe $02
    jr nz, jr_00f_4968                            ; $4959: $20 $0d

    rlc h                                         ; $495b: $cb $04
    jr nc, jr_00f_4968                            ; $495d: $30 $09

    push af                                       ; $495f: $f5
    xor a                                         ; $4960: $af
    ldh [rNR30], a                                ; $4961: $e0 $1a
    ld a, $80                                     ; $4963: $3e $80
    ldh [rNR30], a                                ; $4965: $e0 $1a
    pop af                                        ; $4967: $f1

jr_00f_4968:
    ld hl, $4134                                  ; $4968: $21 $34 $41
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


Call_00f_4976:
    push bc                                       ; $4976: $c5
    push hl                                       ; $4977: $e5
    add a                                         ; $4978: $87
    ld hl, $415c                                  ; $4979: $21 $5c $41
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


Call_00f_49bd:
    push bc                                       ; $49bd: $c5
    ld c, l                                       ; $49be: $4d
    add h                                         ; $49bf: $84
    ld b, $00                                     ; $49c0: $06 $00

jr_00f_49c2:
    sub $0c                                       ; $49c2: $d6 $0c
    inc b                                         ; $49c4: $04
    jr nc, jr_00f_49c2                            ; $49c5: $30 $fb

    dec b                                         ; $49c7: $05
    add $0c                                       ; $49c8: $c6 $0c
    jr jr_00f_49e9                                ; $49ca: $18 $1d

    push bc                                       ; $49cc: $c5
    ld b, h                                       ; $49cd: $44
    ld c, l                                       ; $49ce: $4d
    push af                                       ; $49cf: $f5
    swap a                                        ; $49d0: $cb $37
    and $0f                                       ; $49d2: $e6 $0f
    ld l, $0c                                     ; $49d4: $2e $0c
    call Call_00f_4871                            ; $49d6: $cd $71 $48
    ld l, a                                       ; $49d9: $6f
    pop af                                        ; $49da: $f1
    and $0f                                       ; $49db: $e6 $0f
    add l                                         ; $49dd: $85
    add b                                         ; $49de: $80
    ld h, $00                                     ; $49df: $26 $00
    ld l, a                                       ; $49e1: $6f
    ld a, $0c                                     ; $49e2: $3e $0c
    call Call_00f_4842                            ; $49e4: $cd $42 $48
    ld b, h                                       ; $49e7: $44
    ld a, l                                       ; $49e8: $7d

jr_00f_49e9:
    add a                                         ; $49e9: $87
    push af                                       ; $49ea: $f5
    ld hl, $411c                                  ; $49eb: $21 $1c $41
    add l                                         ; $49ee: $85
    ld l, a                                       ; $49ef: $6f
    ld a, [hl+]                                   ; $49f0: $2a
    ld h, [hl]                                    ; $49f1: $66
    ld l, a                                       ; $49f2: $6f
    ld a, c                                       ; $49f3: $79
    call Call_00f_485a                            ; $49f4: $cd $5a $48
    ld c, h                                       ; $49f7: $4c
    pop af                                        ; $49f8: $f1
    ld hl, $4102                                  ; $49f9: $21 $02 $41
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
    jr z, jr_00f_4a18                             ; $4a0a: $28 $0c

    ld a, h                                       ; $4a0c: $7c
    ld h, $04                                     ; $4a0d: $26 $04

jr_00f_4a0f:
    srl a                                         ; $4a0f: $cb $3f
    rr l                                          ; $4a11: $cb $1d
    or h                                          ; $4a13: $b4
    dec b                                         ; $4a14: $05
    jr nz, jr_00f_4a0f                            ; $4a15: $20 $f8

    ld h, a                                       ; $4a17: $67

jr_00f_4a18:
    pop bc                                        ; $4a18: $c1
    ret                                           ; $4a19: $c9


Call_00f_4a1a:
    ld a, $41                                     ; $4a1a: $3e $41
    ld [$dd0e], a                                 ; $4a1c: $ea $0e $dd
    ld b, $0b                                     ; $4a1f: $06 $0b
    ld hl, $dd13                                  ; $4a21: $21 $13 $dd
    xor a                                         ; $4a24: $af

jr_00f_4a25:
    ld [hl+], a                                   ; $4a25: $22
    dec b                                         ; $4a26: $05
    jr nz, jr_00f_4a25                            ; $4a27: $20 $fc

    ld hl, $dd0e                                  ; $4a29: $21 $0e $dd
    call Call_00f_4a30                            ; $4a2c: $cd $30 $4a
    ret                                           ; $4a2f: $c9


Call_00f_4a30:
    ld a, [hl]                                    ; $4a30: $7e
    and $07                                       ; $4a31: $e6 $07
    ret z                                         ; $4a33: $c8

    ld c, $00                                     ; $4a34: $0e $00

jr_00f_4a36:
    push af                                       ; $4a36: $f5
    ld a, $30                                     ; $4a37: $3e $30
    ldh [c], a                                    ; $4a39: $e2
    ld a, $00                                     ; $4a3a: $3e $00
    ldh [c], a                                    ; $4a3c: $e2
    ld a, $30                                     ; $4a3d: $3e $30
    ldh [c], a                                    ; $4a3f: $e2
    ld d, $10                                     ; $4a40: $16 $10

jr_00f_4a42:
    ld b, [hl]                                    ; $4a42: $46
    inc hl                                        ; $4a43: $23
    ld e, $08                                     ; $4a44: $1e $08

jr_00f_4a46:
    ld a, $10                                     ; $4a46: $3e $10
    rrc b                                         ; $4a48: $cb $08
    jr c, jr_00f_4a4e                             ; $4a4a: $38 $02

    ld a, $20                                     ; $4a4c: $3e $20

jr_00f_4a4e:
    ldh [c], a                                    ; $4a4e: $e2
    ld a, $30                                     ; $4a4f: $3e $30
    ldh [c], a                                    ; $4a51: $e2
    dec e                                         ; $4a52: $1d
    jr nz, jr_00f_4a46                            ; $4a53: $20 $f1

    dec d                                         ; $4a55: $15
    jr nz, jr_00f_4a42                            ; $4a56: $20 $ea

    ld a, $20                                     ; $4a58: $3e $20
    ldh [c], a                                    ; $4a5a: $e2
    ld a, $30                                     ; $4a5b: $3e $30
    ldh [c], a                                    ; $4a5d: $e2
    pop af                                        ; $4a5e: $f1
    dec a                                         ; $4a5f: $3d
    ret z                                         ; $4a60: $c8

    call Call_00f_4a66                            ; $4a61: $cd $66 $4a
    jr jr_00f_4a36                                ; $4a64: $18 $d0

Call_00f_4a66:
    push hl                                       ; $4a66: $e5
    ld hl, $1b58                                  ; $4a67: $21 $58 $1b

jr_00f_4a6a:
    nop                                           ; $4a6a: $00
    nop                                           ; $4a6b: $00
    nop                                           ; $4a6c: $00
    dec hl                                        ; $4a6d: $2b
    ld a, h                                       ; $4a6e: $7c
    or l                                          ; $4a6f: $b5
    jr nz, jr_00f_4a6a                            ; $4a70: $20 $f8

    pop hl                                        ; $4a72: $e1
    ret                                           ; $4a73: $c9


    ld a, h                                       ; $4a74: $7c
    ld c, d                                       ; $4a75: $4a
    ld a, h                                       ; $4a76: $7c
    ld c, d                                       ; $4a77: $4a
    ld a, h                                       ; $4a78: $7c
    ld c, d                                       ; $4a79: $4a
    ld a, h                                       ; $4a7a: $7c
    ld c, d                                       ; $4a7b: $4a
    rst $28                                       ; $4a7c: $ef
    inc a                                         ; $4a7d: $3c
    ld l, l                                       ; $4a7e: $6d
    inc a                                         ; $4a7f: $3c
    ld l, l                                       ; $4a80: $6d
    inc a                                         ; $4a81: $3c
    ld l, l                                       ; $4a82: $6d
    inc a                                         ; $4a83: $3c
    ld l, l                                       ; $4a84: $6d
    dec h                                         ; $4a85: $25
    ld c, e                                       ; $4a86: $4b
    ld l, c                                       ; $4a87: $69
    ld c, h                                       ; $4a88: $4c
    db $ed                                        ; $4a89: $ed
    ld c, l                                       ; $4a8a: $4d
    sbc h                                         ; $4a8b: $9c
    ld c, [hl]                                    ; $4a8c: $4e
    adc l                                         ; $4a8d: $8d
    ld d, b                                       ; $4a8e: $50
    ld [hl], b                                    ; $4a8f: $70
    ld d, c                                       ; $4a90: $51
    ld [hl], b                                    ; $4a91: $70
    ld d, d                                       ; $4a92: $52
    inc bc                                        ; $4a93: $03
    ld d, e                                       ; $4a94: $53
    inc de                                        ; $4a95: $13
    ld d, h                                       ; $4a96: $54
    ret                                           ; $4a97: $c9


    ld d, h                                       ; $4a98: $54
    ld l, a                                       ; $4a99: $6f
    ld d, l                                       ; $4a9a: $55
    inc a                                         ; $4a9b: $3c
    ld l, l                                       ; $4a9c: $6d

Jump_00f_4a9d:
    inc de                                        ; $4a9d: $13
    ld d, [hl]                                    ; $4a9e: $56
    ld d, c                                       ; $4a9f: $51
    ld d, [hl]                                    ; $4aa0: $56
    sbc e                                         ; $4aa1: $9b
    ld d, [hl]                                    ; $4aa2: $56
    jp nz, Jump_00f_7f56                          ; $4aa3: $c2 $56 $7f

    ld e, c                                       ; $4aa6: $59
    ld l, d                                       ; $4aa7: $6a
    ld e, b                                       ; $4aa8: $58
    dec bc                                        ; $4aa9: $0b
    ld d, a                                       ; $4aaa: $57
    and h                                         ; $4aab: $a4
    ld e, d                                       ; $4aac: $5a
    adc h                                         ; $4aad: $8c
    ld e, e                                       ; $4aae: $5b
    rst $20                                       ; $4aaf: $e7
    ld e, e                                       ; $4ab0: $5b
    ld b, [hl]                                    ; $4ab1: $46
    ld e, h                                       ; $4ab2: $5c
    and h                                         ; $4ab3: $a4
    ld e, h                                       ; $4ab4: $5c
    ld d, $5d                                     ; $4ab5: $16 $5d
    ld c, [hl]                                    ; $4ab7: $4e
    ld e, l                                       ; $4ab8: $5d
    xor b                                         ; $4ab9: $a8
    ld e, l                                       ; $4aba: $5d
    db $d3                                        ; $4abb: $d3
    ld e, l                                       ; $4abc: $5d
    pop af                                        ; $4abd: $f1
    ld e, l                                       ; $4abe: $5d
    rla                                           ; $4abf: $17
    ld e, [hl]                                    ; $4ac0: $5e
    add hl, sp                                    ; $4ac1: $39
    ld e, [hl]                                    ; $4ac2: $5e
    inc a                                         ; $4ac3: $3c
    ld l, l                                       ; $4ac4: $6d
    ld e, h                                       ; $4ac5: $5c
    ld e, [hl]                                    ; $4ac6: $5e
    add $5e                                       ; $4ac7: $c6 $5e
    db $dd                                        ; $4ac9: $dd
    ld e, [hl]                                    ; $4aca: $5e
    inc a                                         ; $4acb: $3c
    ld l, l                                       ; $4acc: $6d
    ldh a, [$ff5e]                                ; $4acd: $f0 $5e
    call $025f                                    ; $4acf: $cd $5f $02
    ld h, c                                       ; $4ad2: $61
    sbc a                                         ; $4ad3: $9f
    ld h, c                                       ; $4ad4: $61
    ld b, e                                       ; $4ad5: $43
    ld h, d                                       ; $4ad6: $62
    ld a, [hl]                                    ; $4ad7: $7e
    ld h, e                                       ; $4ad8: $63
    push hl                                       ; $4ad9: $e5
    ld h, l                                       ; $4ada: $65
    inc a                                         ; $4adb: $3c
    ld l, l                                       ; $4adc: $6d
    add b                                         ; $4add: $80
    ld h, a                                       ; $4ade: $67
    and c                                         ; $4adf: $a1
    ld h, a                                       ; $4ae0: $67
    inc a                                         ; $4ae1: $3c
    ld l, l                                       ; $4ae2: $6d
    inc a                                         ; $4ae3: $3c
    ld l, l                                       ; $4ae4: $6d
    cp a                                          ; $4ae5: $bf
    ld h, a                                       ; $4ae6: $67
    inc h                                         ; $4ae7: $24
    ld l, b                                       ; $4ae8: $68
    ld [hl], d                                    ; $4ae9: $72
    ld l, b                                       ; $4aea: $68
    inc a                                         ; $4aeb: $3c
    ld l, l                                       ; $4aec: $6d
    call $f368                                    ; $4aed: $cd $68 $f3
    ld l, b                                       ; $4af0: $68
    rla                                           ; $4af1: $17
    ld l, c                                       ; $4af2: $69
    inc a                                         ; $4af3: $3c
    ld l, l                                       ; $4af4: $6d
    jr nc, @+$6b                                  ; $4af5: $30 $69

    adc l                                         ; $4af7: $8d
    ld l, c                                       ; $4af8: $69
    rst $30                                       ; $4af9: $f7
    ld l, c                                       ; $4afa: $69
    inc a                                         ; $4afb: $3c
    ld l, l                                       ; $4afc: $6d
    dec c                                         ; $4afd: $0d
    ld l, d                                       ; $4afe: $6a
    call c, $9e6a                                 ; $4aff: $dc $6a $9e
    ld l, e                                       ; $4b02: $6b
    inc a                                         ; $4b03: $3c
    ld l, l                                       ; $4b04: $6d
    ld e, c                                       ; $4b05: $59
    ld l, h                                       ; $4b06: $6c
    ld [hl], a                                    ; $4b07: $77
    ld l, h                                       ; $4b08: $6c
    sbc d                                         ; $4b09: $9a
    ld l, h                                       ; $4b0a: $6c
    inc a                                         ; $4b0b: $3c
    ld l, l                                       ; $4b0c: $6d
    or e                                          ; $4b0d: $b3
    ld l, h                                       ; $4b0e: $6c
    adc $6c                                       ; $4b0f: $ce $6c
    ld [$3c6c], a                                 ; $4b11: $ea $6c $3c
    ld l, l                                       ; $4b14: $6d
    cp $6c                                        ; $4b15: $fe $6c
    inc d                                         ; $4b17: $14
    ld l, l                                       ; $4b18: $6d
    dec hl                                        ; $4b19: $2b
    ld l, l                                       ; $4b1a: $6d
    inc a                                         ; $4b1b: $3c
    ld l, l                                       ; $4b1c: $6d
    inc a                                         ; $4b1d: $3c
    ld l, l                                       ; $4b1e: $6d
    inc a                                         ; $4b1f: $3c
    ld l, l                                       ; $4b20: $6d
    inc a                                         ; $4b21: $3c
    ld l, l                                       ; $4b22: $6d
    xor h                                         ; $4b23: $ac
    ld l, l                                       ; $4b24: $6d
    ld sp, hl                                     ; $4b25: $f9
    sub b                                         ; $4b26: $90
    push af                                       ; $4b27: $f5
    db $10                                        ; $4b28: $10
    db $10                                        ; $4b29: $10
    ld [$fbe3], sp                                ; $4b2a: $08 $e3 $fb
    inc sp                                        ; $4b2d: $33
    ldh a, [rNR44]                                ; $4b2e: $f0 $23
    inc b                                         ; $4b30: $04
    nop                                           ; $4b31: $00
    ld a, [$f743]                                 ; $4b32: $fa $43 $f7
    rlca                                          ; $4b35: $07
    cp $2f                                        ; $4b36: $fe $2f
    ld c, h                                       ; $4b38: $4c
    push af                                       ; $4b39: $f5
    db $10                                        ; $4b3a: $10
    db $10                                        ; $4b3b: $10
    ld [$07f7], sp                                ; $4b3c: $08 $f7 $07
    ei                                            ; $4b3f: $fb
    inc sp                                        ; $4b40: $33
    ld a, [$fe43]                                 ; $4b41: $fa $43 $fe
    cpl                                           ; $4b44: $2f
    ld c, h                                       ; $4b45: $4c
    push af                                       ; $4b46: $f5
    db $10                                        ; $4b47: $10
    db $10                                        ; $4b48: $10
    ld [$07f7], sp                                ; $4b49: $08 $f7 $07
    ei                                            ; $4b4c: $fb
    inc sp                                        ; $4b4d: $33
    ld a, [$ea43]                                 ; $4b4e: $fa $43 $ea
    sbc d                                         ; $4b51: $9a
    sbc d                                         ; $4b52: $9a
    jp hl                                         ; $4b53: $e9


    ld a, [bc]                                    ; $4b54: $0a
    ld a, [bc]                                    ; $4b55: $0a
    ld [$7a78], a                                 ; $4b56: $ea $78 $7a
    jp hl                                         ; $4b59: $e9


    ld a, [bc]                                    ; $4b5a: $0a
    ld [$e9b5], a                                 ; $4b5b: $ea $b5 $e9
    ld a, [bc]                                    ; $4b5e: $0a
    ld [$9a9a], a                                 ; $4b5f: $ea $9a $9a
    jp hl                                         ; $4b62: $e9


    ld a, [bc]                                    ; $4b63: $0a
    ld a, [hl+]                                   ; $4b64: $2a
    ld a, [$4873]                                 ; $4b65: $fa $73 $48
    ld d, l                                       ; $4b68: $55
    ld c, b                                       ; $4b69: $48
    ld a, [hl+]                                   ; $4b6a: $2a
    ld b, l                                       ; $4b6b: $45
    ld a, [hl+]                                   ; $4b6c: $2a
    ld a, [$0a53]                                 ; $4b6d: $fa $53 $0a
    jp c, $9aea                                   ; $4b70: $da $ea $9a

    jp hl                                         ; $4b73: $e9


    ld a, [bc]                                    ; $4b74: $0a
    ld a, [$ea73]                                 ; $4b75: $fa $73 $ea
    cp b                                          ; $4b78: $b8
    jp hl                                         ; $4b79: $e9


    dec b                                         ; $4b7a: $05
    jr z, @+$0c                                   ; $4b7b: $28 $0a

    ld [$e995], a                                 ; $4b7d: $ea $95 $e9
    ld a, [bc]                                    ; $4b80: $0a
    ld a, [$4a53]                                 ; $4b81: $fa $53 $4a
    ld c, d                                       ; $4b84: $4a
    ld a, [bc]                                    ; $4b85: $0a
    ld [$e99a], a                                 ; $4b86: $ea $9a $e9
    ld c, b                                       ; $4b89: $48
    ld c, d                                       ; $4b8a: $4a
    dec h                                         ; $4b8b: $25
    call $ddcd                                    ; $4b8c: $cd $cd $dd
    cp $2f                                        ; $4b8f: $fe $2f
    ld c, h                                       ; $4b91: $4c
    push af                                       ; $4b92: $f5
    db $10                                        ; $4b93: $10
    db $10                                        ; $4b94: $10
    ld [$33fb], sp                                ; $4b95: $08 $fb $33
    ld a, [$f743]                                 ; $4b98: $fa $43 $f7
    rlca                                          ; $4b9b: $07
    ld a, b                                       ; $4b9c: $78
    rst $30                                       ; $4b9d: $f7
    ld b, $ea                                     ; $4b9e: $06 $ea
    ld [hl], l                                    ; $4ba0: $75
    jp hl                                         ; $4ba1: $e9


    ld a, b                                       ; $4ba2: $78
    ld [$e975], a                                 ; $4ba3: $ea $75 $e9
    ld a, b                                       ; $4ba6: $78
    ld [$e975], a                                 ; $4ba7: $ea $75 $e9
    ld a, b                                       ; $4baa: $78
    ld [$e975], a                                 ; $4bab: $ea $75 $e9
    ld a, b                                       ; $4bae: $78
    ld [$e975], a                                 ; $4baf: $ea $75 $e9
    ld a, b                                       ; $4bb2: $78
    ld [$e975], a                                 ; $4bb3: $ea $75 $e9
    ld a, b                                       ; $4bb6: $78
    rst $30                                       ; $4bb7: $f7
    rlca                                          ; $4bb8: $07
    sub l                                         ; $4bb9: $95
    ld a, b                                       ; $4bba: $78
    ld d, l                                       ; $4bbb: $55
    ld c, b                                       ; $4bbc: $48
    rst $30                                       ; $4bbd: $f7
    ld b, $ea                                     ; $4bbe: $06 $ea
    ld [hl], l                                    ; $4bc0: $75
    jp hl                                         ; $4bc1: $e9


    ld a, b                                       ; $4bc2: $78
    rst $30                                       ; $4bc3: $f7
    rlca                                          ; $4bc4: $07
    ld a, [bc]                                    ; $4bc5: $0a
    rst $30                                       ; $4bc6: $f7
    ld b, $ea                                     ; $4bc7: $06 $ea
    ld [hl], l                                    ; $4bc9: $75

jr_00f_4bca:
    rst $30                                       ; $4bca: $f7
    rlca                                          ; $4bcb: $07
    sbc b                                         ; $4bcc: $98
    rst $30                                       ; $4bcd: $f7
    ld b, $75                                     ; $4bce: $06 $75
    jp hl                                         ; $4bd0: $e9


    rst $30                                       ; $4bd1: $f7
    rlca                                          ; $4bd2: $07
    ld [$ea08], sp                                ; $4bd3: $08 $08 $ea
    rst $30                                       ; $4bd6: $f7
    ld b, $75                                     ; $4bd7: $06 $75
    jp hl                                         ; $4bd9: $e9


    rst $30                                       ; $4bda: $f7
    rlca                                          ; $4bdb: $07
    ld a, [hl+]                                   ; $4bdc: $2a
    dec b                                         ; $4bdd: $05
    jr z, jr_00f_4bca                             ; $4bde: $28 $ea

    rst $30                                       ; $4be0: $f7
    ld b, $75                                     ; $4be1: $06 $75
    jp hl                                         ; $4be3: $e9


    rst $30                                       ; $4be4: $f7
    rlca                                          ; $4be5: $07
    ld c, b                                       ; $4be6: $48
    rst $30                                       ; $4be7: $f7
    ld b, $ea                                     ; $4be8: $06 $ea
    ld [hl], l                                    ; $4bea: $75
    jp hl                                         ; $4beb: $e9


    ld a, b                                       ; $4bec: $78
    ld [$e975], a                                 ; $4bed: $ea $75 $e9
    ld a, b                                       ; $4bf0: $78
    ld [$e975], a                                 ; $4bf1: $ea $75 $e9
    ld a, b                                       ; $4bf4: $78
    ld [$e975], a                                 ; $4bf5: $ea $75 $e9
    ld a, b                                       ; $4bf8: $78
    ld [$e975], a                                 ; $4bf9: $ea $75 $e9
    ld a, b                                       ; $4bfc: $78
    ld [$e975], a                                 ; $4bfd: $ea $75 $e9
    ld a, b                                       ; $4c00: $78
    rst $30                                       ; $4c01: $f7
    rlca                                          ; $4c02: $07
    ld d, l                                       ; $4c03: $55
    ld c, b                                       ; $4c04: $48
    dec h                                         ; $4c05: $25
    ld c, b                                       ; $4c06: $48
    rst $30                                       ; $4c07: $f7
    ld b, $ea                                     ; $4c08: $06 $ea
    ld [hl], l                                    ; $4c0a: $75
    jp hl                                         ; $4c0b: $e9


    rst $30                                       ; $4c0c: $f7
    rlca                                          ; $4c0d: $07
    ld e, b                                       ; $4c0e: $58
    rst $30                                       ; $4c0f: $f7
    ld b, $ea                                     ; $4c10: $06 $ea
    ld [hl], l                                    ; $4c12: $75
    jp hl                                         ; $4c13: $e9


    rst $30                                       ; $4c14: $f7
    rlca                                          ; $4c15: $07
    ld a, b                                       ; $4c16: $78
    rst $30                                       ; $4c17: $f7
    ld b, $ea                                     ; $4c18: $06 $ea
    ld [hl], l                                    ; $4c1a: $75
    jp hl                                         ; $4c1b: $e9


    rst $30                                       ; $4c1c: $f7
    rlca                                          ; $4c1d: $07
    sbc b                                         ; $4c1e: $98
    rst $30                                       ; $4c1f: $f7
    ld b, $ea                                     ; $4c20: $06 $ea
    ld [hl], l                                    ; $4c22: $75
    jp hl                                         ; $4c23: $e9


    jp hl                                         ; $4c24: $e9


    rst $30                                       ; $4c25: $f7
    rlca                                          ; $4c26: $07
    ld [$ea0a], sp                                ; $4c27: $08 $0a $ea
    or l                                          ; $4c2a: $b5
    call $34ee                                    ; $4c2b: $cd $ee $34
    ld c, e                                       ; $4c2e: $4b
    ld a, [bc]                                    ; $4c2f: $0a
    jp c, $da4a                                   ; $4c30: $da $4a $da

    jr z, jr_00f_4c5f                             ; $4c33: $28 $2a

    ld e, d                                       ; $4c35: $5a
    ld b, l                                       ; $4c36: $45
    ld e, d                                       ; $4c37: $5a
    ld a, d                                       ; $4c38: $7a
    ld a, d                                       ; $4c39: $7a
    ld c, d                                       ; $4c3a: $4a
    ld a, [bc]                                    ; $4c3b: $0a
    jr z, jr_00f_4c68                             ; $4c3c: $28 $2a

    ld [$7a7b], a                                 ; $4c3e: $ea $7b $7a
    jp hl                                         ; $4c41: $e9


    ld a, [bc]                                    ; $4c42: $0a
    jp c, $da4a                                   ; $4c43: $da $4a $da

    jr z, jr_00f_4c72                             ; $4c46: $28 $2a

    ld e, d                                       ; $4c48: $5a
    ld b, l                                       ; $4c49: $45
    ld e, d                                       ; $4c4a: $5a
    ld a, d                                       ; $4c4b: $7a
    ld a, d                                       ; $4c4c: $7a

jr_00f_4c4d:
    ld a, [$4873]                                 ; $4c4d: $fa $73 $48
    dec b                                         ; $4c50: $05
    jr z, jr_00f_4c4d                             ; $4c51: $28 $fa

    ld d, e                                       ; $4c53: $53
    dec b                                         ; $4c54: $05
    jp z, Jump_000_05f7                           ; $4c55: $ca $f7 $05

    push af                                       ; $4c58: $f5
    ld bc, $6428                                  ; $4c59: $01 $28 $64
    jp hl                                         ; $4c5c: $e9


    ei                                            ; $4c5d: $fb
    ld [hl+], a                                   ; $4c5e: $22

jr_00f_4c5f:
    ld [hl], l                                    ; $4c5f: $75
    ret c                                         ; $4c60: $d8

    ld [$fbea], a                                 ; $4c61: $ea $ea $fb
    ld de, $da7a                                  ; $4c64: $11 $7a $da
    jp hl                                         ; $4c67: $e9


jr_00f_4c68:
    rst $28                                       ; $4c68: $ef
    ld sp, hl                                     ; $4c69: $f9
    sub b                                         ; $4c6a: $90
    db $e3                                        ; $4c6b: $e3
    rst $30                                       ; $4c6c: $f7
    rlca                                          ; $4c6d: $07
    ld a, [$f743]                                 ; $4c6e: $fa $43 $f7
    rlca                                          ; $4c71: $07

jr_00f_4c72:
    ldh a, [rNR41]                                ; $4c72: $f0 $20
    ld [$fb00], sp                                ; $4c74: $08 $00 $fb
    ld [hl+], a                                   ; $4c77: $22
    db $f4                                        ; $4c78: $f4
    nop                                           ; $4c79: $00
    push af                                       ; $4c7a: $f5
    ld a, [bc]                                    ; $4c7b: $0a
    inc d                                         ; $4c7c: $14
    inc bc                                        ; $4c7d: $03
    ei                                            ; $4c7e: $fb
    ld [hl+], a                                   ; $4c7f: $22
    cp $a5                                        ; $4c80: $fe $a5
    ld c, l                                       ; $4c82: $4d
    rst $30                                       ; $4c83: $f7
    rlca                                          ; $4c84: $07
    push af                                       ; $4c85: $f5
    ld a, [bc]                                    ; $4c86: $0a
    inc d                                         ; $4c87: $14
    inc bc                                        ; $4c88: $03
    ei                                            ; $4c89: $fb
    ld [hl+], a                                   ; $4c8a: $22
    cp $a5                                        ; $4c8b: $fe $a5
    ld c, l                                       ; $4c8d: $4d
    rst $30                                       ; $4c8e: $f7
    rlca                                          ; $4c8f: $07
    push af                                       ; $4c90: $f5
    ld a, [bc]                                    ; $4c91: $0a
    inc d                                         ; $4c92: $14
    inc bc                                        ; $4c93: $03
    ei                                            ; $4c94: $fb
    ld [hl+], a                                   ; $4c95: $22
    ld [$05ea], sp                                ; $4c96: $08 $ea $05
    jp hl                                         ; $4c99: $e9


    ld [$05ea], sp                                ; $4c9a: $08 $ea $05
    jp hl                                         ; $4c9d: $e9


    ld [$05ea], sp                                ; $4c9e: $08 $ea $05
    jp hl                                         ; $4ca1: $e9


    ld [$05ea], sp                                ; $4ca2: $08 $ea $05
    jp hl                                         ; $4ca5: $e9


    ld [$05ea], sp                                ; $4ca6: $08 $ea $05
    jp hl                                         ; $4ca9: $e9


    ld [$05ea], sp                                ; $4caa: $08 $ea $05
    jp hl                                         ; $4cad: $e9


    ld [$85ea], sp                                ; $4cae: $08 $ea $85
    sbc b                                         ; $4cb1: $98
    or l                                          ; $4cb2: $b5
    jp hl                                         ; $4cb3: $e9


    ld [$05ea], sp                                ; $4cb4: $08 $ea $05
    sbc b                                         ; $4cb7: $98
    dec b                                         ; $4cb8: $05
    cp b                                          ; $4cb9: $b8
    dec b                                         ; $4cba: $05
    jp hl                                         ; $4cbb: $e9


    ld [$05ea], sp                                ; $4cbc: $08 $ea $05
    jp hl                                         ; $4cbf: $e9


    ld c, b                                       ; $4cc0: $48
    ld [$e945], a                                 ; $4cc1: $ea $45 $e9
    ld c, b                                       ; $4cc4: $48
    ld a, [hl+]                                   ; $4cc5: $2a
    ld [$e945], a                                 ; $4cc6: $ea $45 $e9
    ld c, d                                       ; $4cc9: $4a
    ld [$05ea], sp                                ; $4cca: $08 $ea $05
    jp hl                                         ; $4ccd: $e9


    ld [$05ea], sp                                ; $4cce: $08 $ea $05
    jp hl                                         ; $4cd1: $e9


    ld [$05ea], sp                                ; $4cd2: $08 $ea $05
    jp hl                                         ; $4cd5: $e9


    ld [$05ea], sp                                ; $4cd6: $08 $ea $05
    jp hl                                         ; $4cd9: $e9


    ld [$05ea], sp                                ; $4cda: $08 $ea $05
    jp hl                                         ; $4cdd: $e9


    ld [$05ea], sp                                ; $4cde: $08 $ea $05
    dec b                                         ; $4ce1: $05
    ld b, l                                       ; $4ce2: $45
    sub l                                         ; $4ce3: $95
    jp hl                                         ; $4ce4: $e9


    dec b                                         ; $4ce5: $05
    ld b, l                                       ; $4ce6: $45
    ld [hl], l                                    ; $4ce7: $75
    sbc b                                         ; $4ce8: $98
    ld [$e995], a                                 ; $4ce9: $ea $95 $e9
    sbc b                                         ; $4cec: $98
    ld [$e995], a                                 ; $4ced: $ea $95 $e9
    sbc b                                         ; $4cf0: $98
    ld [$e995], a                                 ; $4cf1: $ea $95 $e9
    sbc b                                         ; $4cf4: $98
    ld [$e995], a                                 ; $4cf5: $ea $95 $e9
    sbc d                                         ; $4cf8: $9a
    ret c                                         ; $4cf9: $d8

    or l                                          ; $4cfa: $b5
    call $dddd                                    ; $4cfb: $cd $dd $dd
    ei                                            ; $4cfe: $fb
    ld [hl+], a                                   ; $4cff: $22
    cp $a5                                        ; $4d00: $fe $a5
    ld c, l                                       ; $4d02: $4d
    push af                                       ; $4d03: $f5
    ld a, [bc]                                    ; $4d04: $0a
    inc d                                         ; $4d05: $14
    inc bc                                        ; $4d06: $03
    ei                                            ; $4d07: $fb
    ld [hl+], a                                   ; $4d08: $22
    db $f4                                        ; $4d09: $f4
    jr z, @-$0e                                   ; $4d0a: $28 $f0

    jr nz, jr_00f_4d12                            ; $4d0c: $20 $04

    nop                                           ; $4d0e: $00
    rst $30                                       ; $4d0f: $f7
    rlca                                          ; $4d10: $07
    ret c                                         ; $4d11: $d8

jr_00f_4d12:
    ld a, b                                       ; $4d12: $78
    rst $30                                       ; $4d13: $f7
    dec b                                         ; $4d14: $05
    ld [$e975], a                                 ; $4d15: $ea $75 $e9
    ld a, b                                       ; $4d18: $78
    ld [$e975], a                                 ; $4d19: $ea $75 $e9
    ld a, b                                       ; $4d1c: $78
    ld [$e975], a                                 ; $4d1d: $ea $75 $e9
    ld a, b                                       ; $4d20: $78
    ld [$e975], a                                 ; $4d21: $ea $75 $e9
    ld a, b                                       ; $4d24: $78
    ld [$e975], a                                 ; $4d25: $ea $75 $e9
    ld a, b                                       ; $4d28: $78
    ld [$e975], a                                 ; $4d29: $ea $75 $e9
    ld a, b                                       ; $4d2c: $78
    rst $30                                       ; $4d2d: $f7
    rlca                                          ; $4d2e: $07
    sub l                                         ; $4d2f: $95
    ld a, b                                       ; $4d30: $78
    ld d, l                                       ; $4d31: $55
    ld c, b                                       ; $4d32: $48
    rst $30                                       ; $4d33: $f7
    dec b                                         ; $4d34: $05
    ld [$e975], a                                 ; $4d35: $ea $75 $e9
    ld a, b                                       ; $4d38: $78
    rst $30                                       ; $4d39: $f7
    rlca                                          ; $4d3a: $07
    ld a, [bc]                                    ; $4d3b: $0a
    rst $30                                       ; $4d3c: $f7
    dec b                                         ; $4d3d: $05
    ld [$f775], a                                 ; $4d3e: $ea $75 $f7
    rlca                                          ; $4d41: $07
    sbc b                                         ; $4d42: $98
    rst $30                                       ; $4d43: $f7
    dec b                                         ; $4d44: $05
    ld [hl], l                                    ; $4d45: $75
    jp hl                                         ; $4d46: $e9


    rst $30                                       ; $4d47: $f7
    rlca                                          ; $4d48: $07
    ld [$ea08], sp                                ; $4d49: $08 $08 $ea
    rst $30                                       ; $4d4c: $f7
    dec b                                         ; $4d4d: $05
    ld [hl], l                                    ; $4d4e: $75
    jp hl                                         ; $4d4f: $e9


    rst $30                                       ; $4d50: $f7
    rlca                                          ; $4d51: $07
    ld a, [hl+]                                   ; $4d52: $2a
    dec b                                         ; $4d53: $05
    jr z, @-$14                                   ; $4d54: $28 $ea

    rst $30                                       ; $4d56: $f7
    dec b                                         ; $4d57: $05
    ld [hl], l                                    ; $4d58: $75
    jp hl                                         ; $4d59: $e9


    rst $30                                       ; $4d5a: $f7
    rlca                                          ; $4d5b: $07
    ld c, b                                       ; $4d5c: $48
    rst $30                                       ; $4d5d: $f7
    dec b                                         ; $4d5e: $05
    ld [$e975], a                                 ; $4d5f: $ea $75 $e9
    ld a, b                                       ; $4d62: $78
    ld [$e975], a                                 ; $4d63: $ea $75 $e9
    ld a, b                                       ; $4d66: $78
    ld [$e975], a                                 ; $4d67: $ea $75 $e9
    ld a, b                                       ; $4d6a: $78
    ld [$e975], a                                 ; $4d6b: $ea $75 $e9
    ld a, b                                       ; $4d6e: $78
    ld [$e975], a                                 ; $4d6f: $ea $75 $e9
    ld a, b                                       ; $4d72: $78
    ld [$e975], a                                 ; $4d73: $ea $75 $e9
    ld a, b                                       ; $4d76: $78
    rst $30                                       ; $4d77: $f7
    rlca                                          ; $4d78: $07
    ld d, l                                       ; $4d79: $55
    ld c, b                                       ; $4d7a: $48
    dec h                                         ; $4d7b: $25
    ld c, b                                       ; $4d7c: $48
    rst $30                                       ; $4d7d: $f7
    dec b                                         ; $4d7e: $05
    ld [$e975], a                                 ; $4d7f: $ea $75 $e9
    rst $30                                       ; $4d82: $f7
    rlca                                          ; $4d83: $07
    ld e, b                                       ; $4d84: $58
    rst $30                                       ; $4d85: $f7
    dec b                                         ; $4d86: $05
    ld [$e975], a                                 ; $4d87: $ea $75 $e9
    rst $30                                       ; $4d8a: $f7
    rlca                                          ; $4d8b: $07
    ld a, b                                       ; $4d8c: $78
    rst $30                                       ; $4d8d: $f7
    dec b                                         ; $4d8e: $05
    ld [$e975], a                                 ; $4d8f: $ea $75 $e9
    rst $30                                       ; $4d92: $f7
    rlca                                          ; $4d93: $07
    sbc b                                         ; $4d94: $98
    rst $30                                       ; $4d95: $f7
    dec b                                         ; $4d96: $05
    ld [$e975], a                                 ; $4d97: $ea $75 $e9
    jp hl                                         ; $4d9a: $e9


    rst $30                                       ; $4d9b: $f7
    rlca                                          ; $4d9c: $07
    ld [$ea0a], sp                                ; $4d9d: $08 $0a $ea
    or l                                          ; $4da0: $b5
    set 5, [hl]                                   ; $4da1: $cb $ee
    ld [hl], b                                    ; $4da3: $70
    ld c, h                                       ; $4da4: $4c
    ret c                                         ; $4da5: $d8

    dec b                                         ; $4da6: $05
    ld [$e978], a                                 ; $4da7: $ea $78 $e9
    dec b                                         ; $4daa: $05
    ld c, b                                       ; $4dab: $48
    ld b, l                                       ; $4dac: $45
    ld a, b                                       ; $4dad: $78
    ld [hl], l                                    ; $4dae: $75
    ld e, d                                       ; $4daf: $5a
    ld c, b                                       ; $4db0: $48
    ld a, [hl+]                                   ; $4db1: $2a
    ld a, [bc]                                    ; $4db2: $0a
    ld b, l                                       ; $4db3: $45
    ret z                                         ; $4db4: $c8

    dec b                                         ; $4db5: $05
    ld [$e978], a                                 ; $4db6: $ea $78 $e9
    dec b                                         ; $4db9: $05
    ld c, b                                       ; $4dba: $48
    ld b, l                                       ; $4dbb: $45
    ld a, b                                       ; $4dbc: $78
    ld [hl], l                                    ; $4dbd: $75
    sbc d                                         ; $4dbe: $9a
    ld a, b                                       ; $4dbf: $78
    ld e, d                                       ; $4dc0: $5a
    ld c, d                                       ; $4dc1: $4a
    ld [hl], l                                    ; $4dc2: $75
    ret z                                         ; $4dc3: $c8

    dec b                                         ; $4dc4: $05
    ld [$e97a], a                                 ; $4dc5: $ea $7a $e9
    ld [$7805], sp                                ; $4dc8: $08 $05 $78
    ld [hl], l                                    ; $4dcb: $75
    ld e, b                                       ; $4dcc: $58
    ld c, d                                       ; $4dcd: $4a
    ld e, d                                       ; $4dce: $5a
    ld l, d                                       ; $4dcf: $6a
    ld [hl], l                                    ; $4dd0: $75
    ret z                                         ; $4dd1: $c8

    ld [hl], l                                    ; $4dd2: $75
    ld c, b                                       ; $4dd3: $48
    ld b, l                                       ; $4dd4: $45
    ld e, b                                       ; $4dd5: $58
    ld d, l                                       ; $4dd6: $55
    ld a, b                                       ; $4dd7: $78
    ld [hl], l                                    ; $4dd8: $75
    jp hl                                         ; $4dd9: $e9


    ld a, [bc]                                    ; $4dda: $0a
    push af                                       ; $4ddb: $f5
    ld bc, $6428                                  ; $4ddc: $01 $28 $64
    rst $30                                       ; $4ddf: $f7
    dec b                                         ; $4de0: $05
    ei                                            ; $4de1: $fb
    ld [hl+], a                                   ; $4de2: $22
    jp hl                                         ; $4de3: $e9


    dec b                                         ; $4de4: $05
    ret c                                         ; $4de5: $d8

    ld [$11fb], a                                 ; $4de6: $ea $fb $11
    ld a, [bc]                                    ; $4de9: $0a
    jp c, $efea                                   ; $4dea: $da $ea $ef

    ld sp, hl                                     ; $4ded: $f9
    sub b                                         ; $4dee: $90
    ld a, [$f748]                                 ; $4def: $fa $48 $f7
    inc c                                         ; $4df2: $0c
    ei                                            ; $4df3: $fb
    inc sp                                        ; $4df4: $33
    ldh a, [$ff0d]                                ; $4df5: $f0 $0d
    nop                                           ; $4df7: $00
    nop                                           ; $4df8: $00
    ldh [c], a                                    ; $4df9: $e2
    cp $6b                                        ; $4dfa: $fe $6b
    ld c, [hl]                                    ; $4dfc: $4e
    cp $6b                                        ; $4dfd: $fe $6b
    ld c, [hl]                                    ; $4dff: $4e
    ld [$da5a], a                                 ; $4e00: $ea $5a $da
    sbc d                                         ; $4e03: $9a
    jp c, $d87a                                   ; $4e04: $da $7a $d8

    jp hl                                         ; $4e07: $e9


    ld a, [bc]                                    ; $4e08: $0a
    ld [$e975], a                                 ; $4e09: $ea $75 $e9
    ld [$75ea], sp                                ; $4e0c: $08 $ea $75
    ld e, b                                       ; $4e0f: $58
    ld d, l                                       ; $4e10: $55
    ld a, d                                       ; $4e11: $7a
    sbc d                                         ; $4e12: $9a
    cp d                                          ; $4e13: $ba
    jp hl                                         ; $4e14: $e9


    ld [$75ea], sp                                ; $4e15: $08 $ea $75
    jp hl                                         ; $4e18: $e9


    ld [$aaea], sp                                ; $4e19: $08 $ea $aa
    ld [hl], l                                    ; $4e1c: $75
    xor d                                         ; $4e1d: $aa
    sbc d                                         ; $4e1e: $9a
    jp c, $da5a                                   ; $4e1f: $da $5a $da

    ld c, b                                       ; $4e22: $48
    ld c, d                                       ; $4e23: $4a
    sbc e                                         ; $4e24: $9b
    ld a, d                                       ; $4e25: $7a
    jr z, jr_00f_4e4d                             ; $4e26: $28 $25

    ld c, d                                       ; $4e28: $4a
    ld e, d                                       ; $4e29: $5a
    ld l, d                                       ; $4e2a: $6a
    ld a, d                                       ; $4e2b: $7a
    ret c                                         ; $4e2c: $d8

    ld a, l                                       ; $4e2d: $7d
    push bc                                       ; $4e2e: $c5
    ret z                                         ; $4e2f: $c8

    ld [hl], l                                    ; $4e30: $75
    ld e, d                                       ; $4e31: $5a
    ld c, d                                       ; $4e32: $4a
    ld a, [hl+]                                   ; $4e33: $2a
    jp hl                                         ; $4e34: $e9


    cp $6b                                        ; $4e35: $fe $6b
    ld c, [hl]                                    ; $4e37: $4e
    ld a, [bc]                                    ; $4e38: $0a
    jp c, $9aea                                   ; $4e39: $da $ea $9a

    jp c, $2ae9                                   ; $4e3c: $da $e9 $2a

    ret c                                         ; $4e3f: $d8

    ld [$757a], a                                 ; $4e40: $ea $7a $75
    cp d                                          ; $4e43: $ba
    jp hl                                         ; $4e44: $e9


    ld a, [bc]                                    ; $4e45: $0a
    ld a, [bc]                                    ; $4e46: $0a
    ld [$9a9a], a                                 ; $4e47: $ea $9a $9a
    jp hl                                         ; $4e4a: $e9


    jr z, jr_00f_4e77                             ; $4e4b: $28 $2a

jr_00f_4e4d:
    ld [$ba7b], a                                 ; $4e4d: $ea $7b $ba
    jp hl                                         ; $4e50: $e9


    ld a, [bc]                                    ; $4e51: $0a
    jp c, $9aea                                   ; $4e52: $da $ea $9a

    jp c, $2ae9                                   ; $4e55: $da $e9 $2a

    ret c                                         ; $4e58: $d8

    ld [$757a], a                                 ; $4e59: $ea $7a $75
    cp d                                          ; $4e5c: $ba
    jp hl                                         ; $4e5d: $e9


    ld a, [bc]                                    ; $4e5e: $0a
    ld a, [bc]                                    ; $4e5f: $0a
    ld [$9a9a], a                                 ; $4e60: $ea $9a $9a
    ld e, b                                       ; $4e63: $58
    ld e, d                                       ; $4e64: $5a
    ld [hl], l                                    ; $4e65: $75
    call $eee9                                    ; $4e66: $cd $e9 $ee
    ld a, [$0a4d]                                 ; $4e69: $fa $4d $0a
    jp c, $9aea                                   ; $4e6c: $da $ea $9a

    jp c, $2ae9                                   ; $4e6f: $da $e9 $2a

    ret c                                         ; $4e72: $d8

    ld [$757a], a                                 ; $4e73: $ea $7a $75
    cp d                                          ; $4e76: $ba

jr_00f_4e77:
    jp hl                                         ; $4e77: $e9


    ld a, [bc]                                    ; $4e78: $0a
    ld a, [hl+]                                   ; $4e79: $2a
    ld a, [hl-]                                   ; $4e7a: $3a
    ld c, d                                       ; $4e7b: $4a
    ld [hl], l                                    ; $4e7c: $75
    dec h                                         ; $4e7d: $25
    ld [$2595], a                                 ; $4e7e: $ea $95 $25
    bit 6, l                                      ; $4e81: $cb $75
    cp d                                          ; $4e83: $ba
    jp hl                                         ; $4e84: $e9


    ld a, [bc]                                    ; $4e85: $0a
    jp c, $9aea                                   ; $4e86: $da $ea $9a

    jp c, $2ae9                                   ; $4e89: $da $e9 $2a

    ret c                                         ; $4e8c: $d8

    ld [$757a], a                                 ; $4e8d: $ea $7a $75
    cp d                                          ; $4e90: $ba
    jp hl                                         ; $4e91: $e9


    ld [$ea05], sp                                ; $4e92: $08 $05 $ea
    sbc d                                         ; $4e95: $9a
    xor d                                         ; $4e96: $aa
    cp d                                          ; $4e97: $ba
    jp hl                                         ; $4e98: $e9


    ld a, [bc]                                    ; $4e99: $0a
    rst RST_18                                    ; $4e9a: $df
    rst $28                                       ; $4e9b: $ef
    rst $30                                       ; $4e9c: $f7
    rlca                                          ; $4e9d: $07
    ld a, [$f940]                                 ; $4e9e: $fa $40 $f9
    sub b                                         ; $4ea1: $90
    ei                                            ; $4ea2: $fb
    ld de, $e9fe                                  ; $4ea3: $11 $fe $e9
    ld c, a                                       ; $4ea6: $4f
    cp $e9                                        ; $4ea7: $fe $e9
    ld c, a                                       ; $4ea9: $4f
    ei                                            ; $4eaa: $fb
    ld de, $40fa                                  ; $4eab: $11 $fa $40
    db $fc                                        ; $4eae: $fc
    db $10                                        ; $4eaf: $10
    dec b                                         ; $4eb0: $05
    ret c                                         ; $4eb1: $d8

    dec b                                         ; $4eb2: $05
    push de                                       ; $4eb3: $d5
    dec b                                         ; $4eb4: $05
    db $fc                                        ; $4eb5: $fc
    ld b, b                                       ; $4eb6: $40
    ei                                            ; $4eb7: $fb
    ld [hl+], a                                   ; $4eb8: $22
    dec b                                         ; $4eb9: $05
    ei                                            ; $4eba: $fb
    ld de, $fcd8                                  ; $4ebb: $11 $d8 $fc
    db $10                                        ; $4ebe: $10
    dec b                                         ; $4ebf: $05
    push de                                       ; $4ec0: $d5
    dec b                                         ; $4ec1: $05
    dec b                                         ; $4ec2: $05
    ret c                                         ; $4ec3: $d8

    dec b                                         ; $4ec4: $05
    push de                                       ; $4ec5: $d5
    dec b                                         ; $4ec6: $05
    ei                                            ; $4ec7: $fb
    ld [hl+], a                                   ; $4ec8: $22
    db $fc                                        ; $4ec9: $fc
    ld b, b                                       ; $4eca: $40
    dec b                                         ; $4ecb: $05
    ei                                            ; $4ecc: $fb
    ld de, $fcd5                                  ; $4ecd: $11 $d5 $fc
    db $10                                        ; $4ed0: $10
    ld a, [$0550]                                 ; $4ed1: $fa $50 $05
    ld a, [$0540]                                 ; $4ed4: $fa $40 $05
    push de                                       ; $4ed7: $d5
    dec b                                         ; $4ed8: $05
    dec b                                         ; $4ed9: $05
    ret c                                         ; $4eda: $d8

    dec b                                         ; $4edb: $05
    push de                                       ; $4edc: $d5
    dec b                                         ; $4edd: $05
    ei                                            ; $4ede: $fb
    ld [hl+], a                                   ; $4edf: $22
    db $fc                                        ; $4ee0: $fc
    ld b, b                                       ; $4ee1: $40
    dec b                                         ; $4ee2: $05
    ei                                            ; $4ee3: $fb
    ld de, $fcd8                                  ; $4ee4: $11 $d8 $fc
    db $10                                        ; $4ee7: $10
    dec b                                         ; $4ee8: $05
    push de                                       ; $4ee9: $d5
    dec b                                         ; $4eea: $05
    ret c                                         ; $4eeb: $d8

    dec b                                         ; $4eec: $05
    dec b                                         ; $4eed: $05
    push de                                       ; $4eee: $d5
    ld a, [$0580]                                 ; $4eef: $fa $80 $05
    ld a, [$fc40]                                 ; $4ef2: $fa $40 $fc
    ld b, b                                       ; $4ef5: $40
    ei                                            ; $4ef6: $fb
    ld [hl+], a                                   ; $4ef7: $22
    dec b                                         ; $4ef8: $05
    ei                                            ; $4ef9: $fb
    ld de, $fcd5                                  ; $4efa: $11 $d5 $fc
    db $10                                        ; $4efd: $10
    dec b                                         ; $4efe: $05
    ld a, [$0a80]                                 ; $4eff: $fa $80 $0a
    ld a, [$f140]                                 ; $4f02: $fa $40 $f1
    ld [bc], a                                    ; $4f05: $02
    dec b                                         ; $4f06: $05
    ret c                                         ; $4f07: $d8

    dec b                                         ; $4f08: $05
    push de                                       ; $4f09: $d5
    dec b                                         ; $4f0a: $05
    db $fc                                        ; $4f0b: $fc
    ld b, b                                       ; $4f0c: $40
    ei                                            ; $4f0d: $fb
    ld [hl+], a                                   ; $4f0e: $22
    dec b                                         ; $4f0f: $05
    ei                                            ; $4f10: $fb
    ld de, $fcd8                                  ; $4f11: $11 $d8 $fc
    db $10                                        ; $4f14: $10
    dec b                                         ; $4f15: $05
    push de                                       ; $4f16: $d5
    dec b                                         ; $4f17: $05
    ldh a, [c]                                    ; $4f18: $f2
    dec b                                         ; $4f19: $05
    push de                                       ; $4f1a: $d5
    dec b                                         ; $4f1b: $05
    dec b                                         ; $4f1c: $05
    ret c                                         ; $4f1d: $d8

    db $fc                                        ; $4f1e: $fc
    ld b, b                                       ; $4f1f: $40
    ei                                            ; $4f20: $fb
    ld [hl+], a                                   ; $4f21: $22
    dec b                                         ; $4f22: $05
    ei                                            ; $4f23: $fb
    ld de, $fcd8                                  ; $4f24: $11 $d8 $fc
    db $10                                        ; $4f27: $10
    dec b                                         ; $4f28: $05
    push de                                       ; $4f29: $d5
    dec b                                         ; $4f2a: $05
    dec b                                         ; $4f2b: $05
    db $db                                        ; $4f2c: $db
    dec b                                         ; $4f2d: $05
    call $dddd                                    ; $4f2e: $cd $dd $dd
    cp $e9                                        ; $4f31: $fe $e9
    ld c, a                                       ; $4f33: $4f
    ld a, [$fc40]                                 ; $4f34: $fa $40 $fc
    db $10                                        ; $4f37: $10
    dec b                                         ; $4f38: $05
    ret c                                         ; $4f39: $d8

    dec b                                         ; $4f3a: $05
    push de                                       ; $4f3b: $d5
    dec b                                         ; $4f3c: $05
    db $fc                                        ; $4f3d: $fc
    ld b, b                                       ; $4f3e: $40
    ei                                            ; $4f3f: $fb
    ld [hl+], a                                   ; $4f40: $22
    dec b                                         ; $4f41: $05
    ei                                            ; $4f42: $fb
    ld de, $fcd8                                  ; $4f43: $11 $d8 $fc
    db $10                                        ; $4f46: $10
    dec b                                         ; $4f47: $05
    push de                                       ; $4f48: $d5
    dec b                                         ; $4f49: $05
    db $fc                                        ; $4f4a: $fc
    db $10                                        ; $4f4b: $10
    dec b                                         ; $4f4c: $05
    ret c                                         ; $4f4d: $d8

    dec b                                         ; $4f4e: $05
    push de                                       ; $4f4f: $d5
    dec b                                         ; $4f50: $05
    db $fc                                        ; $4f51: $fc
    ld b, b                                       ; $4f52: $40
    ei                                            ; $4f53: $fb
    ld [hl+], a                                   ; $4f54: $22
    dec b                                         ; $4f55: $05
    ei                                            ; $4f56: $fb
    ld de, $fcd5                                  ; $4f57: $11 $d5 $fc
    db $10                                        ; $4f5a: $10
    dec b                                         ; $4f5b: $05
    dec b                                         ; $4f5c: $05
    push de                                       ; $4f5d: $d5
    dec b                                         ; $4f5e: $05
    db $fc                                        ; $4f5f: $fc
    db $10                                        ; $4f60: $10
    dec b                                         ; $4f61: $05
    ret c                                         ; $4f62: $d8

    dec b                                         ; $4f63: $05
    push de                                       ; $4f64: $d5
    dec b                                         ; $4f65: $05
    db $fc                                        ; $4f66: $fc
    ld b, b                                       ; $4f67: $40
    ei                                            ; $4f68: $fb
    ld [hl+], a                                   ; $4f69: $22
    dec b                                         ; $4f6a: $05
    ei                                            ; $4f6b: $fb
    ld de, $fcd8                                  ; $4f6c: $11 $d8 $fc
    db $10                                        ; $4f6f: $10
    dec b                                         ; $4f70: $05
    push de                                       ; $4f71: $d5
    dec b                                         ; $4f72: $05
    db $fc                                        ; $4f73: $fc
    db $10                                        ; $4f74: $10
    dec b                                         ; $4f75: $05
    ret c                                         ; $4f76: $d8

    dec b                                         ; $4f77: $05
    push de                                       ; $4f78: $d5
    dec b                                         ; $4f79: $05
    db $fc                                        ; $4f7a: $fc
    ld b, b                                       ; $4f7b: $40
    ei                                            ; $4f7c: $fb
    ld [hl+], a                                   ; $4f7d: $22
    dec b                                         ; $4f7e: $05
    ei                                            ; $4f7f: $fb
    ld de, $fcd5                                  ; $4f80: $11 $d5 $fc
    db $10                                        ; $4f83: $10
    ld a, [$0550]                                 ; $4f84: $fa $50 $05
    ld a, [$0540]                                 ; $4f87: $fa $40 $05
    push de                                       ; $4f8a: $d5
    dec b                                         ; $4f8b: $05
    ld a, [$fc40]                                 ; $4f8c: $fa $40 $fc
    db $10                                        ; $4f8f: $10
    dec b                                         ; $4f90: $05
    ret c                                         ; $4f91: $d8

    dec b                                         ; $4f92: $05
    push de                                       ; $4f93: $d5
    dec b                                         ; $4f94: $05
    db $fc                                        ; $4f95: $fc
    ld b, b                                       ; $4f96: $40
    ei                                            ; $4f97: $fb
    ld [hl+], a                                   ; $4f98: $22
    dec b                                         ; $4f99: $05
    ei                                            ; $4f9a: $fb
    ld de, $fcd8                                  ; $4f9b: $11 $d8 $fc
    db $10                                        ; $4f9e: $10
    dec b                                         ; $4f9f: $05
    push de                                       ; $4fa0: $d5
    dec b                                         ; $4fa1: $05
    db $fc                                        ; $4fa2: $fc
    db $10                                        ; $4fa3: $10
    dec b                                         ; $4fa4: $05
    ret c                                         ; $4fa5: $d8

    dec b                                         ; $4fa6: $05
    push de                                       ; $4fa7: $d5
    dec b                                         ; $4fa8: $05
    db $fc                                        ; $4fa9: $fc
    ld b, b                                       ; $4faa: $40
    ei                                            ; $4fab: $fb
    ld [hl+], a                                   ; $4fac: $22
    dec b                                         ; $4fad: $05
    ei                                            ; $4fae: $fb
    ld de, $fcd5                                  ; $4faf: $11 $d5 $fc
    db $10                                        ; $4fb2: $10
    dec b                                         ; $4fb3: $05
    dec b                                         ; $4fb4: $05
    push de                                       ; $4fb5: $d5
    dec b                                         ; $4fb6: $05
    db $fc                                        ; $4fb7: $fc
    db $10                                        ; $4fb8: $10
    dec b                                         ; $4fb9: $05
    ret c                                         ; $4fba: $d8

    dec b                                         ; $4fbb: $05
    push de                                       ; $4fbc: $d5
    dec b                                         ; $4fbd: $05
    db $fc                                        ; $4fbe: $fc
    ld b, b                                       ; $4fbf: $40
    ei                                            ; $4fc0: $fb
    ld [hl+], a                                   ; $4fc1: $22
    dec b                                         ; $4fc2: $05
    ei                                            ; $4fc3: $fb
    ld de, $fcd5                                  ; $4fc4: $11 $d5 $fc
    db $10                                        ; $4fc7: $10
    ld a, [$0550]                                 ; $4fc8: $fa $50 $05
    ld a, [$0540]                                 ; $4fcb: $fa $40 $05
    push de                                       ; $4fce: $d5
    dec b                                         ; $4fcf: $05
    dec b                                         ; $4fd0: $05
    push de                                       ; $4fd1: $d5
    dec b                                         ; $4fd2: $05
    db $fc                                        ; $4fd3: $fc
    ld b, b                                       ; $4fd4: $40
    ei                                            ; $4fd5: $fb
    ld [hl+], a                                   ; $4fd6: $22
    dec b                                         ; $4fd7: $05
    ei                                            ; $4fd8: $fb
    ld de, $fcd5                                  ; $4fd9: $11 $d5 $fc
    db $10                                        ; $4fdc: $10
    ld a, [$0a80]                                 ; $4fdd: $fa $80 $0a
    push de                                       ; $4fe0: $d5
    ld a, [$0540]                                 ; $4fe1: $fa $40 $05
    dec b                                         ; $4fe4: $05
    dec b                                         ; $4fe5: $05
    xor $a4                                       ; $4fe6: $ee $a4
    ld c, [hl]                                    ; $4fe8: $4e
    ld a, [$fc40]                                 ; $4fe9: $fa $40 $fc
    db $10                                        ; $4fec: $10
    dec b                                         ; $4fed: $05
    ret c                                         ; $4fee: $d8

    dec b                                         ; $4fef: $05
    push de                                       ; $4ff0: $d5
    dec b                                         ; $4ff1: $05
    db $fc                                        ; $4ff2: $fc
    ld b, b                                       ; $4ff3: $40
    ei                                            ; $4ff4: $fb
    ld [hl+], a                                   ; $4ff5: $22
    dec b                                         ; $4ff6: $05
    ei                                            ; $4ff7: $fb
    ld de, $fcd8                                  ; $4ff8: $11 $d8 $fc
    db $10                                        ; $4ffb: $10
    dec b                                         ; $4ffc: $05
    push de                                       ; $4ffd: $d5
    dec b                                         ; $4ffe: $05
    db $fc                                        ; $4fff: $fc
    db $10                                        ; $5000: $10
    dec b                                         ; $5001: $05
    ret c                                         ; $5002: $d8

    dec b                                         ; $5003: $05
    push de                                       ; $5004: $d5
    dec b                                         ; $5005: $05
    db $fc                                        ; $5006: $fc
    ld b, b                                       ; $5007: $40
    ei                                            ; $5008: $fb
    ld [hl+], a                                   ; $5009: $22
    dec b                                         ; $500a: $05
    ei                                            ; $500b: $fb
    ld de, $fcd5                                  ; $500c: $11 $d5 $fc
    db $10                                        ; $500f: $10
    dec b                                         ; $5010: $05
    dec b                                         ; $5011: $05
    push de                                       ; $5012: $d5
    dec b                                         ; $5013: $05
    db $fc                                        ; $5014: $fc
    db $10                                        ; $5015: $10
    dec b                                         ; $5016: $05
    ret c                                         ; $5017: $d8

    dec b                                         ; $5018: $05
    push de                                       ; $5019: $d5
    dec b                                         ; $501a: $05
    db $fc                                        ; $501b: $fc
    ld b, b                                       ; $501c: $40
    ei                                            ; $501d: $fb
    ld [hl+], a                                   ; $501e: $22
    dec b                                         ; $501f: $05
    ei                                            ; $5020: $fb
    ld de, $fcd8                                  ; $5021: $11 $d8 $fc
    db $10                                        ; $5024: $10
    dec b                                         ; $5025: $05
    push de                                       ; $5026: $d5
    dec b                                         ; $5027: $05
    db $fc                                        ; $5028: $fc
    db $10                                        ; $5029: $10
    dec b                                         ; $502a: $05
    ret c                                         ; $502b: $d8

    dec b                                         ; $502c: $05
    push de                                       ; $502d: $d5
    dec b                                         ; $502e: $05
    db $fc                                        ; $502f: $fc
    ld b, b                                       ; $5030: $40
    ei                                            ; $5031: $fb
    ld [hl+], a                                   ; $5032: $22
    dec b                                         ; $5033: $05
    ei                                            ; $5034: $fb
    ld de, $fcd5                                  ; $5035: $11 $d5 $fc
    db $10                                        ; $5038: $10
    ld a, [$0550]                                 ; $5039: $fa $50 $05
    ld a, [$0540]                                 ; $503c: $fa $40 $05
    push de                                       ; $503f: $d5
    dec b                                         ; $5040: $05
    ld a, [$fc40]                                 ; $5041: $fa $40 $fc
    db $10                                        ; $5044: $10
    dec b                                         ; $5045: $05
    ret c                                         ; $5046: $d8

    dec b                                         ; $5047: $05
    push de                                       ; $5048: $d5
    dec b                                         ; $5049: $05
    db $fc                                        ; $504a: $fc
    ld b, b                                       ; $504b: $40
    ei                                            ; $504c: $fb
    ld [hl+], a                                   ; $504d: $22
    dec b                                         ; $504e: $05
    ei                                            ; $504f: $fb
    ld de, $fcd8                                  ; $5050: $11 $d8 $fc
    db $10                                        ; $5053: $10
    dec b                                         ; $5054: $05
    push de                                       ; $5055: $d5
    dec b                                         ; $5056: $05
    db $fc                                        ; $5057: $fc
    db $10                                        ; $5058: $10
    dec b                                         ; $5059: $05
    ret c                                         ; $505a: $d8

    dec b                                         ; $505b: $05
    push de                                       ; $505c: $d5
    dec b                                         ; $505d: $05
    db $fc                                        ; $505e: $fc
    ld b, b                                       ; $505f: $40
    ei                                            ; $5060: $fb
    ld [hl+], a                                   ; $5061: $22
    dec b                                         ; $5062: $05
    ei                                            ; $5063: $fb
    ld de, $fcd5                                  ; $5064: $11 $d5 $fc
    db $10                                        ; $5067: $10
    dec b                                         ; $5068: $05
    dec b                                         ; $5069: $05
    push de                                       ; $506a: $d5
    dec b                                         ; $506b: $05
    db $fc                                        ; $506c: $fc
    db $10                                        ; $506d: $10
    dec b                                         ; $506e: $05
    ret c                                         ; $506f: $d8

    dec b                                         ; $5070: $05
    push de                                       ; $5071: $d5
    dec b                                         ; $5072: $05
    db $fc                                        ; $5073: $fc
    ld b, b                                       ; $5074: $40
    ei                                            ; $5075: $fb
    ld [hl+], a                                   ; $5076: $22
    dec b                                         ; $5077: $05
    ei                                            ; $5078: $fb
    ld de, $fcd5                                  ; $5079: $11 $d5 $fc
    db $10                                        ; $507c: $10
    ld a, [$0550]                                 ; $507d: $fa $50 $05
    ld a, [$0540]                                 ; $5080: $fa $40 $05
    push de                                       ; $5083: $d5
    dec b                                         ; $5084: $05
    dec b                                         ; $5085: $05
    sbc $05                                       ; $5086: $de $05
    dec b                                         ; $5088: $05
    ld a, [$0550]                                 ; $5089: $fa $50 $05
    rst $28                                       ; $508c: $ef
    ld sp, hl                                     ; $508d: $f9
    ld l, h                                       ; $508e: $6c
    push af                                       ; $508f: $f5
    db $10                                        ; $5090: $10
    db $10                                        ; $5091: $10
    ld [$fbe3], sp                                ; $5092: $08 $e3 $fb
    inc sp                                        ; $5095: $33
    ldh a, [rNR10]                                ; $5096: $f0 $10
    inc b                                         ; $5098: $04
    nop                                           ; $5099: $00
    ld a, [$f743]                                 ; $509a: $fa $43 $f7
    rlca                                          ; $509d: $07
    cp $04                                        ; $509e: $fe $04
    ld d, c                                       ; $50a0: $51
    cp $2a                                        ; $50a1: $fe $2a
    ld d, c                                       ; $50a3: $51
    rst $10                                       ; $50a4: $d7
    ld d, a                                       ; $50a5: $57
    ld d, a                                       ; $50a6: $57
    daa                                           ; $50a7: $27
    ld d, a                                       ; $50a8: $57
    rst $10                                       ; $50a9: $d7
    ld [hl], a                                    ; $50aa: $77
    rst $10                                       ; $50ab: $d7
    cp $04                                        ; $50ac: $fe $04
    ld d, c                                       ; $50ae: $51
    cp $2a                                        ; $50af: $fe $2a
    ld d, c                                       ; $50b1: $51
    jp hl                                         ; $50b2: $e9


    rst $10                                       ; $50b3: $d7
    rlca                                          ; $50b4: $07
    rlca                                          ; $50b5: $07
    rlca                                          ; $50b6: $07
    rlca                                          ; $50b7: $07
    call c, $06f7                                 ; $50b8: $dc $f7 $06
    jp c, $ea2a                                   ; $50bb: $da $2a $ea

    xor d                                         ; $50be: $aa
    ld a, d                                       ; $50bf: $7a
    jp hl                                         ; $50c0: $e9


    ld a, [hl+]                                   ; $50c1: $2a
    ld [$7aaa], a                                 ; $50c2: $ea $aa $7a
    jp hl                                         ; $50c5: $e9


    ld a, [hl+]                                   ; $50c6: $2a
    dec c                                         ; $50c7: $0d
    ld e, l                                       ; $50c8: $5d
    ld [$d7ad], a                                 ; $50c9: $ea $ad $d7
    sub a                                         ; $50cc: $97
    and a                                         ; $50cd: $a7
    jp hl                                         ; $50ce: $e9


    rlca                                          ; $50cf: $07
    rst $10                                       ; $50d0: $d7
    ld a, [$2773]                                 ; $50d1: $fa $73 $27
    ld a, [$0743]                                 ; $50d4: $fa $43 $07
    ld [$e9a7], a                                 ; $50d7: $ea $a7 $e9
    ld a, [$2773]                                 ; $50da: $fa $73 $27
    ld a, [$0743]                                 ; $50dd: $fa $43 $07
    ld [$e9a7], a                                 ; $50e0: $ea $a7 $e9
    rlca                                          ; $50e3: $07
    ld a, [$0773]                                 ; $50e4: $fa $73 $07
    ld a, [$5743]                                 ; $50e7: $fa $43 $57
    ld d, a                                       ; $50ea: $57
    ld d, a                                       ; $50eb: $57
    ld a, [$5773]                                 ; $50ec: $fa $73 $57
    ld [$43fa], a                                 ; $50ef: $ea $fa $43
    and a                                         ; $50f2: $a7
    and a                                         ; $50f3: $a7
    and a                                         ; $50f4: $a7
    jp hl                                         ; $50f5: $e9


    ld a, [bc]                                    ; $50f6: $0a
    ld [$5a9a], a                                 ; $50f7: $ea $9a $5a
    jp hl                                         ; $50fa: $e9


    ld a, [bc]                                    ; $50fb: $0a
    ld [$cdbd], a                                 ; $50fc: $ea $bd $cd
    rst RST_08                                    ; $50ff: $cf
    jp c, $9cee                                   ; $5100: $da $ee $9c

    ld d, b                                       ; $5103: $50
    ld b, a                                       ; $5104: $47
    ld d, a                                       ; $5105: $57
    ld b, a                                       ; $5106: $47
    ld d, a                                       ; $5107: $57
    ld b, a                                       ; $5108: $47
    ld d, a                                       ; $5109: $57
    ld b, a                                       ; $510a: $47
    ld d, a                                       ; $510b: $57
    ld a, [$9773]                                 ; $510c: $fa $73 $97
    ld a, [$7743]                                 ; $510f: $fa $43 $77
    rst $10                                       ; $5112: $d7
    ld d, a                                       ; $5113: $57
    ld d, a                                       ; $5114: $57
    call c, $5747                                 ; $5115: $dc $47 $57
    ld b, a                                       ; $5118: $47
    ld d, a                                       ; $5119: $57
    ld b, a                                       ; $511a: $47
    ld d, a                                       ; $511b: $57
    ld b, a                                       ; $511c: $47
    ld d, a                                       ; $511d: $57
    ld a, [$9773]                                 ; $511e: $fa $73 $97
    ld a, [$7743]                                 ; $5121: $fa $43 $77
    rst $10                                       ; $5124: $d7
    ld d, a                                       ; $5125: $57
    ld [hl], a                                    ; $5126: $77
    rst $10                                       ; $5127: $d7
    ld e, d                                       ; $5128: $5a
    rst $28                                       ; $5129: $ef
    ld c, h                                       ; $512a: $4c
    ld b, a                                       ; $512b: $47
    ld a, [$4773]                                 ; $512c: $fa $73 $47
    ld a, [$5743]                                 ; $512f: $fa $43 $57
    ld a, [$4773]                                 ; $5132: $fa $73 $47
    ld a, [$0743]                                 ; $5135: $fa $43 $07
    ld a, [$2a73]                                 ; $5138: $fa $73 $2a
    ld c, d                                       ; $513b: $4a
    ld e, d                                       ; $513c: $5a
    ld a, d                                       ; $513d: $7a
    ld a, [$4c43]                                 ; $513e: $fa $43 $4c
    ld b, a                                       ; $5141: $47
    ld a, [$4773]                                 ; $5142: $fa $73 $47
    ld a, [$5743]                                 ; $5145: $fa $43 $57
    ld a, [$4773]                                 ; $5148: $fa $73 $47
    ld a, [$0743]                                 ; $514b: $fa $43 $07
    cpl                                           ; $514e: $2f
    ld a, [$7773]                                 ; $514f: $fa $73 $77
    ld d, a                                       ; $5152: $57
    ld a, [$4c43]                                 ; $5153: $fa $43 $4c
    ld b, a                                       ; $5156: $47
    ld a, [$4773]                                 ; $5157: $fa $73 $47
    ld a, [$5743]                                 ; $515a: $fa $43 $57
    ld a, [$4773]                                 ; $515d: $fa $73 $47
    ld a, [$0743]                                 ; $5160: $fa $43 $07
    ld a, [$2a73]                                 ; $5163: $fa $73 $2a
    ld c, d                                       ; $5166: $4a
    ld e, d                                       ; $5167: $5a
    jp hl                                         ; $5168: $e9


    ld a, [bc]                                    ; $5169: $0a
    ld a, [$ea43]                                 ; $516a: $fa $43 $ea
    ld a, l                                       ; $516d: $7d
    call $f9ef                                    ; $516e: $cd $ef $f9
    ld l, h                                       ; $5171: $6c
    push af                                       ; $5172: $f5
    db $10                                        ; $5173: $10
    db $10                                        ; $5174: $10
    ld [$fbe3], sp                                ; $5175: $08 $e3 $fb
    ld hl, $43fa                                  ; $5178: $21 $fa $43
    rst $30                                       ; $517b: $f7
    rlca                                          ; $517c: $07
    ldh a, [rNR41]                                ; $517d: $f0 $20
    inc b                                         ; $517f: $04
    nop                                           ; $5180: $00
    cp $f7                                        ; $5181: $fe $f7
    ld d, c                                       ; $5183: $51
    cp $1d                                        ; $5184: $fe $1d
    ld d, d                                       ; $5186: $52
    rst $10                                       ; $5187: $d7
    daa                                           ; $5188: $27
    daa                                           ; $5189: $27
    ld [$e9a7], a                                 ; $518a: $ea $a7 $e9
    daa                                           ; $518d: $27
    rst $10                                       ; $518e: $d7
    ld b, a                                       ; $518f: $47
    rst $10                                       ; $5190: $d7
    cp $f7                                        ; $5191: $fe $f7
    ld d, c                                       ; $5193: $51
    cp $1d                                        ; $5194: $fe $1d
    ld d, d                                       ; $5196: $52
    rst $10                                       ; $5197: $d7
    ld b, a                                       ; $5198: $47
    ld b, a                                       ; $5199: $47
    ld d, a                                       ; $519a: $57
    ld [hl], a                                    ; $519b: $77
    rst $10                                       ; $519c: $d7
    rlca                                          ; $519d: $07
    rst $10                                       ; $519e: $d7
    pop af                                        ; $519f: $f1
    ld [$ea24], sp                                ; $51a0: $08 $24 $ea
    and h                                         ; $51a3: $a4
    ld [hl], h                                    ; $51a4: $74
    inc [hl]                                      ; $51a5: $34
    jp hl                                         ; $51a6: $e9


    ldh a, [c]                                    ; $51a7: $f2
    pop af                                        ; $51a8: $f1
    inc b                                         ; $51a9: $04
    inc b                                         ; $51aa: $04
    ld [$5494], a                                 ; $51ab: $ea $94 $54
    inc h                                         ; $51ae: $24
    jp hl                                         ; $51af: $e9


    ldh a, [c]                                    ; $51b0: $f2
    pop af                                        ; $51b1: $f1
    ld [bc], a                                    ; $51b2: $02
    inc h                                         ; $51b3: $24
    ld [$74a4], a                                 ; $51b4: $ea $a4 $74
    inc h                                         ; $51b7: $24
    jp hl                                         ; $51b8: $e9


    ldh a, [c]                                    ; $51b9: $f2
    pop af                                        ; $51ba: $f1
    ld [bc], a                                    ; $51bb: $02
    inc b                                         ; $51bc: $04
    ld [$5494], a                                 ; $51bd: $ea $94 $54
    inc h                                         ; $51c0: $24
    jp hl                                         ; $51c1: $e9


    ldh a, [c]                                    ; $51c2: $f2
    ldh a, [rNR10]                                ; $51c3: $f0 $10
    inc b                                         ; $51c5: $04
    nop                                           ; $51c6: $00
    rst $10                                       ; $51c7: $d7
    ld a, [$a773]                                 ; $51c8: $fa $73 $a7
    ld a, [$9743]                                 ; $51cb: $fa $43 $97
    ld [hl], a                                    ; $51ce: $77
    ld a, [$a773]                                 ; $51cf: $fa $73 $a7
    ld a, [$9743]                                 ; $51d2: $fa $43 $97
    ld [hl], a                                    ; $51d5: $77
    sub a                                         ; $51d6: $97
    ld a, [$9773]                                 ; $51d7: $fa $73 $97
    jp hl                                         ; $51da: $e9


    ld a, [$0743]                                 ; $51db: $fa $43 $07
    rlca                                          ; $51de: $07
    rlca                                          ; $51df: $07
    ld a, [$0773]                                 ; $51e0: $fa $73 $07
    ld [$43fa], a                                 ; $51e3: $ea $fa $43
    ld d, a                                       ; $51e6: $57
    ld d, a                                       ; $51e7: $57
    ld d, a                                       ; $51e8: $57
    sbc d                                         ; $51e9: $9a
    ld e, d                                       ; $51ea: $5a
    ld a, [bc]                                    ; $51eb: $0a
    sbc d                                         ; $51ec: $9a
    ld a, l                                       ; $51ed: $7d

    db $cc, $e9, $27

    ld a, a                                       ; $51f1: $7f
    jp c, $eeea                                   ; $51f2: $da $ea $ee

    ld a, l                                       ; $51f5: $7d
    ld d, c                                       ; $51f6: $51
    rlca                                          ; $51f7: $07
    daa                                           ; $51f8: $27
    rlca                                          ; $51f9: $07
    daa                                           ; $51fa: $27
    rlca                                          ; $51fb: $07
    daa                                           ; $51fc: $27
    rlca                                          ; $51fd: $07
    daa                                           ; $51fe: $27
    ld a, [$5773]                                 ; $51ff: $fa $73 $57
    ld a, [$2743]                                 ; $5202: $fa $43 $27
    rst $10                                       ; $5205: $d7
    rlca                                          ; $5206: $07
    rlca                                          ; $5207: $07

    db $dc, $07, $27

    rlca                                          ; $520b: $07
    daa                                           ; $520c: $27
    rlca                                          ; $520d: $07
    daa                                           ; $520e: $27
    rlca                                          ; $520f: $07
    daa                                           ; $5210: $27
    ld a, [$5773]                                 ; $5211: $fa $73 $57
    ld a, [$2743]                                 ; $5214: $fa $43 $27
    rst $10                                       ; $5217: $d7
    rlca                                          ; $5218: $07
    daa                                           ; $5219: $27
    rst $10                                       ; $521a: $d7
    ld a, [hl+]                                   ; $521b: $2a
    rst $28                                       ; $521c: $ef
    inc c                                         ; $521d: $0c
    rlca                                          ; $521e: $07
    ld a, [$0773]                                 ; $521f: $fa $73 $07
    ld a, [$2743]                                 ; $5222: $fa $43 $27
    ld a, [$0773]                                 ; $5225: $fa $73 $07
    ld [$43fa], a                                 ; $5228: $ea $fa $43
    sub a                                         ; $522b: $97
    ld a, [$aa73]                                 ; $522c: $fa $73 $aa
    jp hl                                         ; $522f: $e9


    ld a, [bc]                                    ; $5230: $0a
    ld a, [hl+]                                   ; $5231: $2a
    ld c, d                                       ; $5232: $4a
    ld a, [$0c43]                                 ; $5233: $fa $43 $0c
    rlca                                          ; $5236: $07
    ld a, [$0773]                                 ; $5237: $fa $73 $07
    ld a, [$2743]                                 ; $523a: $fa $43 $27
    ld a, [$0773]                                 ; $523d: $fa $73 $07
    ld [$43fa], a                                 ; $5240: $ea $fa $43
    sub a                                         ; $5243: $97
    and a                                         ; $5244: $a7
    jp hl                                         ; $5245: $e9


    sub a                                         ; $5246: $97
    jp hl                                         ; $5247: $e9


    daa                                           ; $5248: $27
    ld [$e997], a                                 ; $5249: $ea $97 $e9
    daa                                           ; $524c: $27
    ld [$f497], a                                 ; $524d: $ea $97 $f4
    jr z, jr_00f_52c9                             ; $5250: $28 $77

    db $f4                                        ; $5252: $f4
    nop                                           ; $5253: $00
    sub a                                         ; $5254: $97
    inc c                                         ; $5255: $0c
    rlca                                          ; $5256: $07
    ld a, [$0773]                                 ; $5257: $fa $73 $07
    ld a, [$2743]                                 ; $525a: $fa $43 $27
    ld a, [$0773]                                 ; $525d: $fa $73 $07
    ld [$43fa], a                                 ; $5260: $ea $fa $43
    sub a                                         ; $5263: $97
    ld a, [$aa73]                                 ; $5264: $fa $73 $aa
    jp hl                                         ; $5267: $e9


    ld a, [bc]                                    ; $5268: $0a
    ld a, [hl+]                                   ; $5269: $2a
    ld a, d                                       ; $526a: $7a
    ld a, [$2d43]                                 ; $526b: $fa $43 $2d
    call $f9ef                                    ; $526e: $cd $ef $f9
    ld l, h                                       ; $5271: $6c
    ld a, [$f748]                                 ; $5272: $fa $48 $f7
    dec c                                         ; $5275: $0d
    ei                                            ; $5276: $fb
    inc sp                                        ; $5277: $33
    ldh a, [$ff0d]                                ; $5278: $f0 $0d
    nop                                           ; $527a: $00
    nop                                           ; $527b: $00
    pop hl                                        ; $527c: $e1
    cp $d6                                        ; $527d: $fe $d6
    ld d, d                                       ; $527f: $52
    cp $b0                                        ; $5280: $fe $b0
    ld d, d                                       ; $5282: $52
    cp $d6                                        ; $5283: $fe $d6
    ld d, d                                       ; $5285: $52
    cp $b0                                        ; $5286: $fe $b0
    ld d, d                                       ; $5288: $52
    dec a                                         ; $5289: $3d
    call Call_00f_5ccc                            ; $528a: $cd $cc $5c
    ld a, [hl-]                                   ; $528d: $3a
    inc l                                         ; $528e: $2c
    ld [$e99c], a                                 ; $528f: $ea $9c $e9
    ld a, [hl+]                                   ; $5292: $2a
    ld a, l                                       ; $5293: $7d
    ld e, l                                       ; $5294: $5d
    scf                                           ; $5295: $37
    and a                                         ; $5296: $a7
    scf                                           ; $5297: $37
    ld a, d                                       ; $5298: $7a
    scf                                           ; $5299: $37
    and a                                         ; $529a: $a7
    scf                                           ; $529b: $37
    ld a, d                                       ; $529c: $7a
    scf                                           ; $529d: $37
    xor d                                         ; $529e: $aa
    ld [hl], a                                    ; $529f: $77
    jp hl                                         ; $52a0: $e9


    ld a, d                                       ; $52a1: $7a
    ld e, h                                       ; $52a2: $5c
    inc c                                         ; $52a3: $0c
    ld e, d                                       ; $52a4: $5a
    ld [$c77f], a                                 ; $52a5: $ea $7f $c7
    jp hl                                         ; $52a8: $e9


    daa                                           ; $52a9: $27
    ld [$cd7d], a                                 ; $52aa: $ea $7d $cd
    xor $7d                                       ; $52ad: $ee $7d
    ld d, d                                       ; $52af: $52
    ld e, h                                       ; $52b0: $5c
    ld a, h                                       ; $52b1: $7c
    ld e, d                                       ; $52b2: $5a
    xor h                                         ; $52b3: $ac
    sbc h                                         ; $52b4: $9c
    ld a, d                                       ; $52b5: $7a
    ld e, h                                       ; $52b6: $5c
    ld a, h                                       ; $52b7: $7c
    sbc d                                         ; $52b8: $9a
    xor h                                         ; $52b9: $ac
    jp hl                                         ; $52ba: $e9


    ld a, [hl+]                                   ; $52bb: $2a
    ld [$57a7], a                                 ; $52bc: $ea $a7 $57
    and a                                         ; $52bf: $a7
    ld e, h                                       ; $52c0: $5c
    ld a, h                                       ; $52c1: $7c
    ld e, d                                       ; $52c2: $5a
    xor h                                         ; $52c3: $ac
    sbc h                                         ; $52c4: $9c
    ld a, d                                       ; $52c5: $7a
    inc l                                         ; $52c6: $2c
    jp hl                                         ; $52c7: $e9


    inc l                                         ; $52c8: $2c

jr_00f_52c9:
    ld [$77ba], a                                 ; $52c9: $ea $ba $77
    and h                                         ; $52cc: $a4
    ld [hl], a                                    ; $52cd: $77
    rlca                                          ; $52ce: $07
    ld a, c                                       ; $52cf: $79
    and a                                         ; $52d0: $a7
    jp hl                                         ; $52d1: $e9


    rlca                                          ; $52d2: $07
    rst $10                                       ; $52d3: $d7
    ld [$57ef], a                                 ; $52d4: $ea $ef $57
    jp hl                                         ; $52d7: $e9


    ld d, a                                       ; $52d8: $57
    rlca                                          ; $52d9: $07
    ld a, [hl+]                                   ; $52da: $2a
    ld [$e9a7], a                                 ; $52db: $ea $a7 $e9
    rlca                                          ; $52de: $07
    ld [$c757], a                                 ; $52df: $ea $57 $c7
    jp hl                                         ; $52e2: $e9


    ld d, a                                       ; $52e3: $57
    ld [$a757], a                                 ; $52e4: $ea $57 $a7
    jp hl                                         ; $52e7: $e9


    rlca                                          ; $52e8: $07
    jp c, $ea07                                   ; $52e9: $da $07 $ea

    ld d, a                                       ; $52ec: $57
    jp hl                                         ; $52ed: $e9


    ld d, a                                       ; $52ee: $57
    rlca                                          ; $52ef: $07
    ld a, [hl+]                                   ; $52f0: $2a
    ld [$e9a7], a                                 ; $52f1: $ea $a7 $e9
    rlca                                          ; $52f4: $07
    ld [$c757], a                                 ; $52f5: $ea $57 $c7
    jp hl                                         ; $52f8: $e9


    ld d, a                                       ; $52f9: $57
    ld [$e957], a                                 ; $52fa: $ea $57 $e9
    rlca                                          ; $52fd: $07
    ld d, a                                       ; $52fe: $57
    jp c, $ea57                                   ; $52ff: $da $57 $ea

    rst $28                                       ; $5302: $ef
    ld sp, hl                                     ; $5303: $f9
    ld l, h                                       ; $5304: $6c
    rst $30                                       ; $5305: $f7
    add hl, bc                                    ; $5306: $09
    ei                                            ; $5307: $fb
    ld [hl+], a                                   ; $5308: $22
    ld a, [$fe31]                                 ; $5309: $fa $31 $fe
    halt                                          ; $530c: $76
    ld d, e                                       ; $530d: $53
    cp $a8                                        ; $530e: $fe $a8
    ld d, e                                       ; $5310: $53
    cp $76                                        ; $5311: $fe $76
    ld d, e                                       ; $5313: $53
    cp $a8                                        ; $5314: $fe $a8
    ld d, e                                       ; $5316: $53
    db $fc                                        ; $5317: $fc
    jr nz, @-$03                                  ; $5318: $20 $fb

    ld [hl+], a                                   ; $531a: $22
    pop af                                        ; $531b: $f1
    inc b                                         ; $531c: $04
    jp c, $d904                                   ; $531d: $da $04 $d9

    jp c, $d904                                   ; $5320: $da $04 $d9

    ldh a, [c]                                    ; $5323: $f2
    pop af                                        ; $5324: $f1
    ld [$20fc], sp                                ; $5325: $08 $fc $20
    ei                                            ; $5328: $fb
    ld [hl+], a                                   ; $5329: $22
    inc b                                         ; $532a: $04
    call nc, Call_000_10fc                        ; $532b: $d4 $fc $10
    ei                                            ; $532e: $fb
    ld de, $0404                                  ; $532f: $11 $04 $04
    ldh a, [c]                                    ; $5332: $f2
    db $fc                                        ; $5333: $fc
    jr nz, @-$03                                  ; $5334: $20 $fb

    ld [hl+], a                                   ; $5336: $22
    inc b                                         ; $5337: $04
    call nc, Call_000_10fc                        ; $5338: $d4 $fc $10
    ei                                            ; $533b: $fb
    ld de, $d904                                  ; $533c: $11 $04 $d9
    inc b                                         ; $533f: $04
    reti                                          ; $5340: $d9


    inc b                                         ; $5341: $04
    reti                                          ; $5342: $d9


    inc b                                         ; $5343: $04
    call nc, Call_000_04d7                        ; $5344: $d4 $d7 $04
    reti                                          ; $5347: $d9


    inc b                                         ; $5348: $04
    reti                                          ; $5349: $d9


    inc b                                         ; $534a: $04
    reti                                          ; $534b: $d9


    inc b                                         ; $534c: $04

jr_00f_534d:
    call nc, $fc05                                ; $534d: $d4 $05 $fc
    jr nz, jr_00f_534d                            ; $5350: $20 $fb

    ld [hl+], a                                   ; $5352: $22
    dec b                                         ; $5353: $05
    dec b                                         ; $5354: $05
    db $fc                                        ; $5355: $fc

jr_00f_5356:
    db $10                                        ; $5356: $10
    ei                                            ; $5357: $fb

jr_00f_5358:
    ld de, $fc05                                  ; $5358: $11 $05 $fc
    jr nz, jr_00f_5358                            ; $535b: $20 $fb

    ld [hl+], a                                   ; $535d: $22
    dec b                                         ; $535e: $05
    dec b                                         ; $535f: $05
    db $fc                                        ; $5360: $fc
    db $10                                        ; $5361: $10
    ei                                            ; $5362: $fb

jr_00f_5363:
    ld de, $fc05                                  ; $5363: $11 $05 $fc
    jr nz, jr_00f_5363                            ; $5366: $20 $fb

    ld [hl+], a                                   ; $5368: $22
    dec b                                         ; $5369: $05
    dec b                                         ; $536a: $05
    db $fc                                        ; $536b: $fc
    db $10                                        ; $536c: $10
    ei                                            ; $536d: $fb
    ld de, $d404                                  ; $536e: $11 $04 $d4
    inc b                                         ; $5371: $04
    call nc, Call_000_0bee                        ; $5372: $d4 $ee $0b
    ld d, e                                       ; $5375: $53
    pop af                                        ; $5376: $f1
    ld [bc], a                                    ; $5377: $02
    ei                                            ; $5378: $fb
    ld [hl+], a                                   ; $5379: $22
    db $fc                                        ; $537a: $fc
    jr nz, jr_00f_5356                            ; $537b: $20 $d9

    inc b                                         ; $537d: $04
    call nc, $0404                                ; $537e: $d4 $04 $04
    call nc, Call_000_10fc                        ; $5381: $d4 $fc $10
    ei                                            ; $5384: $fb
    ld de, $0404                                  ; $5385: $11 $04 $04
    inc b                                         ; $5388: $04
    call nc, $d904                                ; $5389: $d4 $04 $d9
    db $fc                                        ; $538c: $fc
    jr nz, @-$03                                  ; $538d: $20 $fb

    ld [hl+], a                                   ; $538f: $22
    reti                                          ; $5390: $d9


    inc b                                         ; $5391: $04
    call nc, $0404                                ; $5392: $d4 $04 $04
    reti                                          ; $5395: $d9


    db $fc                                        ; $5396: $fc
    db $10                                        ; $5397: $10
    ei                                            ; $5398: $fb
    ld de, $d404                                  ; $5399: $11 $04 $d4
    db $fc                                        ; $539c: $fc
    jr nz, @-$03                                  ; $539d: $20 $fb

    ld [hl+], a                                   ; $539f: $22
    inc b                                         ; $53a0: $04
    call nc, Call_000_10fc                        ; $53a1: $d4 $fc $10
    inc b                                         ; $53a4: $04
    call nc, $eff2                                ; $53a5: $d4 $f2 $ef
    pop af                                        ; $53a8: $f1
    inc bc                                        ; $53a9: $03
    db $fc                                        ; $53aa: $fc
    ld bc, $fbd7                                  ; $53ab: $01 $d7 $fb
    ld de, $d904                                  ; $53ae: $11 $04 $d9
    db $fc                                        ; $53b1: $fc
    jr nz, @-$03                                  ; $53b2: $20 $fb

    ld [hl+], a                                   ; $53b4: $22
    inc b                                         ; $53b5: $04
    inc b                                         ; $53b6: $04
    rst $10                                       ; $53b7: $d7
    db $fc                                        ; $53b8: $fc
    ld bc, $11fb                                  ; $53b9: $01 $fb $11

jr_00f_53bc:
    inc b                                         ; $53bc: $04
    reti                                          ; $53bd: $d9


    db $fc                                        ; $53be: $fc
    jr nz, jr_00f_53bc                            ; $53bf: $20 $fb

    ld [hl+], a                                   ; $53c1: $22
    inc b                                         ; $53c2: $04
    call nc, $d7f2                                ; $53c3: $d4 $f2 $d7
    db $fc                                        ; $53c6: $fc
    db $10                                        ; $53c7: $10
    ei                                            ; $53c8: $fb
    ld de, $d904                                  ; $53c9: $11 $04 $d9
    db $fc                                        ; $53cc: $fc
    jr nz, @-$03                                  ; $53cd: $20 $fb

    ld [hl+], a                                   ; $53cf: $22
    inc b                                         ; $53d0: $04
    inc b                                         ; $53d1: $04
    rst $10                                       ; $53d2: $d7
    db $fc                                        ; $53d3: $fc
    db $10                                        ; $53d4: $10
    ei                                            ; $53d5: $fb
    ld de, $d404                                  ; $53d6: $11 $04 $d4
    inc b                                         ; $53d9: $04
    inc b                                         ; $53da: $04
    inc b                                         ; $53db: $04
    call nc, Call_000_03f1                        ; $53dc: $d4 $f1 $03
    db $fc                                        ; $53df: $fc
    db $10                                        ; $53e0: $10
    ei                                            ; $53e1: $fb
    ld de, $04d7                                  ; $53e2: $11 $d7 $04
    reti                                          ; $53e5: $d9


    db $fc                                        ; $53e6: $fc
    jr nz, @-$03                                  ; $53e7: $20 $fb

    ld [hl+], a                                   ; $53e9: $22
    inc b                                         ; $53ea: $04
    inc b                                         ; $53eb: $04
    rst $10                                       ; $53ec: $d7
    db $fc                                        ; $53ed: $fc
    db $10                                        ; $53ee: $10
    ei                                            ; $53ef: $fb
    ld de, $d904                                  ; $53f0: $11 $04 $d9
    db $fc                                        ; $53f3: $fc
    jr nz, @-$03                                  ; $53f4: $20 $fb

    ld [hl+], a                                   ; $53f6: $22
    inc b                                         ; $53f7: $04
    call nc, $d7f2                                ; $53f8: $d4 $f2 $d7
    db $fc                                        ; $53fb: $fc
    db $10                                        ; $53fc: $10
    ei                                            ; $53fd: $fb
    ld de, $d904                                  ; $53fe: $11 $04 $d9
    db $fc                                        ; $5401: $fc
    jr nz, @-$03                                  ; $5402: $20 $fb

Call_00f_5404:
    ld [hl+], a                                   ; $5404: $22
    inc b                                         ; $5405: $04
    inc b                                         ; $5406: $04
    rst $10                                       ; $5407: $d7
    db $fc                                        ; $5408: $fc
    db $10                                        ; $5409: $10
    ei                                            ; $540a: $fb
    ld de, $d404                                  ; $540b: $11 $04 $d4
    inc b                                         ; $540e: $04
    inc b                                         ; $540f: $04
    inc b                                         ; $5410: $04
    call nc, $f5ef                                ; $5411: $d4 $ef $f5
    jr jr_00f_5426                                ; $5414: $18 $10

    ld b, $f9                                     ; $5416: $06 $f9
    ld h, h                                       ; $5418: $64
    ei                                            ; $5419: $fb
    inc hl                                        ; $541a: $23
    ldh a, [rNR41]                                ; $541b: $f0 $20
    inc b                                         ; $541d: $04
    nop                                           ; $541e: $00
    rst $30                                       ; $541f: $f7
    ld b, $fa                                     ; $5420: $06 $fa
    ld h, e                                       ; $5422: $63
    db $e3                                        ; $5423: $e3

Call_00f_5424:
    ld [hl], a                                    ; $5424: $77
    rst $10                                       ; $5425: $d7

jr_00f_5426:
    ld [hl], a                                    ; $5426: $77
    rst $10                                       ; $5427: $d7
    ld [hl], a                                    ; $5428: $77
    rst $10                                       ; $5429: $d7
    ld a, l                                       ; $542a: $7d
    ld e, d                                       ; $542b: $5a
    ld d, h                                       ; $542c: $54
    ld b, h                                       ; $542d: $44
    rst $10                                       ; $542e: $d7
    ld b, a                                       ; $542f: $47
    rst $10                                       ; $5430: $d7
    ld b, a                                       ; $5431: $47
    rst $10                                       ; $5432: $d7
    ld c, l                                       ; $5433: $4d
    ld a, [hl+]                                   ; $5434: $2a
    ld a, [bc]                                    ; $5435: $0a
    ld [$e95a], a                                 ; $5436: $ea $5a $e9
    ld a, [bc]                                    ; $5439: $0a
    ld a, [bc]                                    ; $543a: $0a
    ld [$e94a], a                                 ; $543b: $ea $4a $e9
    ld a, [bc]                                    ; $543e: $0a
    ld a, [bc]                                    ; $543f: $0a
    ld [$e95a], a                                 ; $5440: $ea $5a $e9
    ld a, [bc]                                    ; $5443: $0a
    ld a, [de]                                    ; $5444: $1a
    daa                                           ; $5445: $27
    rst $10                                       ; $5446: $d7
    jp c, $d777                                   ; $5447: $da $77 $d7

    ld [hl], a                                    ; $544a: $77
    rst $10                                       ; $544b: $d7
    ld [hl], a                                    ; $544c: $77
    rst $10                                       ; $544d: $d7
    ld a, l                                       ; $544e: $7d
    adc d                                         ; $544f: $8a
    sub a                                         ; $5450: $97
    rst $10                                       ; $5451: $d7
    sub a                                         ; $5452: $97
    rst $10                                       ; $5453: $d7
    sub a                                         ; $5454: $97
    rst $10                                       ; $5455: $d7
    sbc l                                         ; $5456: $9d

Jump_00f_5457:
    ld a, d                                       ; $5457: $7a
    sbc d                                         ; $5458: $9a
    ld a, d                                       ; $5459: $7a
    ld e, d                                       ; $545a: $5a
    ld c, d                                       ; $545b: $4a
    sbc d                                         ; $545c: $9a
    ld [$e99a], a                                 ; $545d: $ea $9a $e9
    ld e, d                                       ; $5460: $5a
    ld c, d                                       ; $5461: $4a
    ld a, [hl+]                                   ; $5462: $2a
    ld a, [bc]                                    ; $5463: $0a
    ld [$d7b7], a                                 ; $5464: $ea $b7 $d7
    jp c, $37e9                                   ; $5467: $da $e9 $37

    rst $10                                       ; $546a: $d7
    scf                                           ; $546b: $37
    rst $10                                       ; $546c: $d7
    scf                                           ; $546d: $37
    rst $10                                       ; $546e: $d7
    dec a                                         ; $546f: $3d
    ld a, [hl+]                                   ; $5470: $2a
    inc h                                         ; $5471: $24
    inc b                                         ; $5472: $04
    rst $10                                       ; $5473: $d7
    rlca                                          ; $5474: $07
    rst $10                                       ; $5475: $d7
    rlca                                          ; $5476: $07
    rst $10                                       ; $5477: $d7
    dec c                                         ; $5478: $0d
    ld [$877a], a                                 ; $5479: $ea $7a $87
    ld d, a                                       ; $547c: $57
    jp hl                                         ; $547d: $e9


    rlca                                          ; $547e: $07
    ld [$8757], a                                 ; $547f: $ea $57 $87
    ld d, a                                       ; $5482: $57
    ld [hl], a                                    ; $5483: $77
    scf                                           ; $5484: $37
    jp hl                                         ; $5485: $e9


    rlca                                          ; $5486: $07
    ld [$7737], a                                 ; $5487: $ea $37 $77
    scf                                           ; $548a: $37
    sub a                                         ; $548b: $97
    jp hl                                         ; $548c: $e9


    rlca                                          ; $548d: $07
    ld [$e9b7], a                                 ; $548e: $ea $b7 $e9
    rlca                                          ; $5491: $07
    ld [$e997], a                                 ; $5492: $ea $97 $e9
    rlca                                          ; $5495: $07
    ld a, [de]                                    ; $5496: $1a
    daa                                           ; $5497: $27
    rst $10                                       ; $5498: $d7
    jp c, $d737                                   ; $5499: $da $37 $d7

    scf                                           ; $549c: $37
    rst $10                                       ; $549d: $d7
    scf                                           ; $549e: $37
    rst $10                                       ; $549f: $d7
    dec a                                         ; $54a0: $3d
    ld a, [hl+]                                   ; $54a1: $2a
    inc h                                         ; $54a2: $24
    inc b                                         ; $54a3: $04
    rst $10                                       ; $54a4: $d7
    rlca                                          ; $54a5: $07
    rst $10                                       ; $54a6: $d7
    rlca                                          ; $54a7: $07
    rst $10                                       ; $54a8: $d7
    dec c                                         ; $54a9: $0d
    ld [$877a], a                                 ; $54aa: $ea $7a $87
    scf                                           ; $54ad: $37
    jp hl                                         ; $54ae: $e9


    scf                                           ; $54af: $37
    ld [$8737], a                                 ; $54b0: $ea $37 $87
    scf                                           ; $54b3: $37
    and a                                         ; $54b4: $a7
    scf                                           ; $54b5: $37
    ld [hl], a                                    ; $54b6: $77
    scf                                           ; $54b7: $37
    jp hl                                         ; $54b8: $e9


    scf                                           ; $54b9: $37
    ld [$5737], a                                 ; $54ba: $ea $37 $57
    rst $10                                       ; $54bd: $d7
    add a                                         ; $54be: $87
    rst $10                                       ; $54bf: $d7
    jp hl                                         ; $54c0: $e9


    daa                                           ; $54c1: $27
    rst $10                                       ; $54c2: $d7
    scf                                           ; $54c3: $37
    rst $10                                       ; $54c4: $d7
    db $dd                                        ; $54c5: $dd
    xor $24                                       ; $54c6: $ee $24
    ld d, h                                       ; $54c8: $54
    push af                                       ; $54c9: $f5
    jr jr_00f_54dc                                ; $54ca: $18 $10

    ld b, $f9                                     ; $54cc: $06 $f9
    ld h, h                                       ; $54ce: $64
    ei                                            ; $54cf: $fb
    inc de                                        ; $54d0: $13
    ldh a, [rNR41]                                ; $54d1: $f0 $20
    inc b                                         ; $54d3: $04
    nop                                           ; $54d4: $00
    rst $30                                       ; $54d5: $f7
    dec b                                         ; $54d6: $05
    ld a, [$e363]                                 ; $54d7: $fa $63 $e3
    ld b, a                                       ; $54da: $47
    rst $10                                       ; $54db: $d7

jr_00f_54dc:
    ld b, a                                       ; $54dc: $47
    rst $10                                       ; $54dd: $d7
    ld b, a                                       ; $54de: $47
    rst $10                                       ; $54df: $d7
    ld c, l                                       ; $54e0: $4d
    ld a, [hl+]                                   ; $54e1: $2a
    inc h                                         ; $54e2: $24
    inc b                                         ; $54e3: $04
    rst $10                                       ; $54e4: $d7
    rlca                                          ; $54e5: $07
    rst $10                                       ; $54e6: $d7
    rlca                                          ; $54e7: $07
    rst $10                                       ; $54e8: $d7
    dec c                                         ; $54e9: $0d
    ld [$9aaa], a                                 ; $54ea: $ea $aa $9a
    ld a, [bc]                                    ; $54ed: $0a
    sbc d                                         ; $54ee: $9a
    ld a, d                                       ; $54ef: $7a
    ld a, [bc]                                    ; $54f0: $0a
    ld a, d                                       ; $54f1: $7a
    sbc d                                         ; $54f2: $9a
    ld a, [bc]                                    ; $54f3: $0a
    sbc d                                         ; $54f4: $9a
    xor d                                         ; $54f5: $aa
    or a                                          ; $54f6: $b7
    rst $10                                       ; $54f7: $d7
    jp c, Jump_00f_47e9                           ; $54f8: $da $e9 $47

    rst $10                                       ; $54fb: $d7
    ld b, a                                       ; $54fc: $47
    rst $10                                       ; $54fd: $d7
    ld b, a                                       ; $54fe: $47
    rst $10                                       ; $54ff: $d7
    ld c, l                                       ; $5500: $4d
    ld e, d                                       ; $5501: $5a
    ld b, a                                       ; $5502: $47
    rst $10                                       ; $5503: $d7
    ld b, a                                       ; $5504: $47
    rst $10                                       ; $5505: $d7
    ld b, a                                       ; $5506: $47
    rst $10                                       ; $5507: $d7
    ld c, l                                       ; $5508: $4d
    ld a, [hl+]                                   ; $5509: $2a
    ld e, d                                       ; $550a: $5a
    ld c, d                                       ; $550b: $4a
    ld a, [hl+]                                   ; $550c: $2a
    ld a, [bc]                                    ; $550d: $0a
    ld c, d                                       ; $550e: $4a
    ld [$e94a], a                                 ; $550f: $ea $4a $e9
    ld a, [hl+]                                   ; $5512: $2a
    ld a, [bc]                                    ; $5513: $0a
    ld [$9aba], a                                 ; $5514: $ea $ba $9a
    ld [hl], a                                    ; $5517: $77
    rst $10                                       ; $5518: $d7
    jp c, Jump_000_07e9                           ; $5519: $da $e9 $07

    rst $10                                       ; $551c: $d7
    rlca                                          ; $551d: $07
    rst $10                                       ; $551e: $d7
    rlca                                          ; $551f: $07
    rst $10                                       ; $5520: $d7
    dec c                                         ; $5521: $0d
    ld a, [bc]                                    ; $5522: $0a
    inc b                                         ; $5523: $04
    ld [$d774], a                                 ; $5524: $ea $74 $d7
    ld [hl], a                                    ; $5527: $77
    rst $10                                       ; $5528: $d7
    ld [hl], a                                    ; $5529: $77
    rst $10                                       ; $552a: $d7
    ld a, l                                       ; $552b: $7d
    ld a, [hl-]                                   ; $552c: $3a
    ld d, a                                       ; $552d: $57
    rlca                                          ; $552e: $07
    add a                                         ; $552f: $87
    rlca                                          ; $5530: $07
    ld d, a                                       ; $5531: $57
    rlca                                          ; $5532: $07
    scf                                           ; $5533: $37
    rlca                                          ; $5534: $07
    ld [hl], a                                    ; $5535: $77
    rlca                                          ; $5536: $07
    scf                                           ; $5537: $37
    rlca                                          ; $5538: $07
    rlca                                          ; $5539: $07
    ld h, a                                       ; $553a: $67
    scf                                           ; $553b: $37
    ld h, a                                       ; $553c: $67
    rlca                                          ; $553d: $07
    ld h, a                                       ; $553e: $67
    ld l, d                                       ; $553f: $6a
    ld [hl], a                                    ; $5540: $77
    rst $10                                       ; $5541: $d7
    jp c, Jump_000_07e9                           ; $5542: $da $e9 $07

    rst $10                                       ; $5545: $d7
    rlca                                          ; $5546: $07
    rst $10                                       ; $5547: $d7
    rlca                                          ; $5548: $07
    rst $10                                       ; $5549: $d7
    dec c                                         ; $554a: $0d
    ld a, [bc]                                    ; $554b: $0a
    inc b                                         ; $554c: $04
    ld [$d774], a                                 ; $554d: $ea $74 $d7
    ld [hl], a                                    ; $5550: $77
    rst $10                                       ; $5551: $d7
    ld [hl], a                                    ; $5552: $77
    rst $10                                       ; $5553: $d7
    ld a, l                                       ; $5554: $7d
    ld a, [hl-]                                   ; $5555: $3a
    ld d, a                                       ; $5556: $57
    rlca                                          ; $5557: $07
    add a                                         ; $5558: $87
    rlca                                          ; $5559: $07
    ld d, a                                       ; $555a: $57
    rlca                                          ; $555b: $07
    ld [hl], a                                    ; $555c: $77
    rlca                                          ; $555d: $07
    scf                                           ; $555e: $37
    rlca                                          ; $555f: $07
    ld [hl], a                                    ; $5560: $77
    rlca                                          ; $5561: $07
    rlca                                          ; $5562: $07
    rst $10                                       ; $5563: $d7
    ld d, a                                       ; $5564: $57
    rst $10                                       ; $5565: $d7
    add a                                         ; $5566: $87
    rst $10                                       ; $5567: $d7
    and a                                         ; $5568: $a7
    rst $10                                       ; $5569: $d7
    db $dd                                        ; $556a: $dd
    jp hl                                         ; $556b: $e9


    xor $da                                       ; $556c: $ee $da
    ld d, h                                       ; $556e: $54
    ld sp, hl                                     ; $556f: $f9
    ld h, h                                       ; $5570: $64
    ei                                            ; $5571: $fb
    inc sp                                        ; $5572: $33
    ldh a, [$ff0d]                                ; $5573: $f0 $0d
    nop                                           ; $5575: $00
    nop                                           ; $5576: $00
    rst $30                                       ; $5577: $f7
    dec c                                         ; $5578: $0d
    ld a, [$e268]                                 ; $5579: $fa $68 $e2
    ld a, [bc]                                    ; $557c: $0a
    ld c, d                                       ; $557d: $4a
    ld a, d                                       ; $557e: $7a
    ld [$ba7a], a                                 ; $557f: $ea $7a $ba
    jp hl                                         ; $5582: $e9


    ld a, [hl+]                                   ; $5583: $2a
    ld [$e99a], a                                 ; $5584: $ea $9a $e9
    ld a, [bc]                                    ; $5587: $0a
    ld c, d                                       ; $5588: $4a
    ld [$7a4a], a                                 ; $5589: $ea $4a $7a
    xor d                                         ; $558c: $aa
    ld e, d                                       ; $558d: $5a
    sbc d                                         ; $558e: $9a
    jp hl                                         ; $558f: $e9


    ld a, [bc]                                    ; $5590: $0a
    ld [$7a4a], a                                 ; $5591: $ea $4a $7a
    jp hl                                         ; $5594: $e9


    ld a, [bc]                                    ; $5595: $0a
    ld [$9a5a], a                                 ; $5596: $ea $5a $9a
    jp hl                                         ; $5599: $e9


    ld a, [hl+]                                   ; $559a: $2a
    ld [$7a2a], a                                 ; $559b: $ea $2a $7a
    jp hl                                         ; $559e: $e9


    ld a, [hl+]                                   ; $559f: $2a
    ld a, [bc]                                    ; $55a0: $0a
    ld c, d                                       ; $55a1: $4a
    ld a, d                                       ; $55a2: $7a
    ld [$ba7a], a                                 ; $55a3: $ea $7a $ba
    jp hl                                         ; $55a6: $e9


    ld a, [hl+]                                   ; $55a7: $2a
    ld [$e99a], a                                 ; $55a8: $ea $9a $e9
    ld a, [bc]                                    ; $55ab: $0a
    ld c, d                                       ; $55ac: $4a
    ld [$7a4a], a                                 ; $55ad: $ea $4a $7a
    jp hl                                         ; $55b0: $e9


    ld a, [hl+]                                   ; $55b1: $2a
    ld [$9a5a], a                                 ; $55b2: $ea $5a $9a
    jp hl                                         ; $55b5: $e9


    ld a, [bc]                                    ; $55b6: $0a
    ld [$7a4a], a                                 ; $55b7: $ea $4a $7a
    jp hl                                         ; $55ba: $e9


    ld a, [bc]                                    ; $55bb: $0a
    ld [$9a5a], a                                 ; $55bc: $ea $5a $9a
    jp hl                                         ; $55bf: $e9


    ld a, [bc]                                    ; $55c0: $0a
    ld a, [de]                                    ; $55c1: $1a
    ld a, [hl+]                                   ; $55c2: $2a
    jp c, $3a0a                                   ; $55c3: $da $0a $3a

    ld a, d                                       ; $55c6: $7a
    ld [$e99a], a                                 ; $55c7: $ea $9a $e9
    ld a, [bc]                                    ; $55ca: $0a
    ld e, d                                       ; $55cb: $5a
    ld [$e9ba], a                                 ; $55cc: $ea $ba $e9
    ld a, [hl+]                                   ; $55cf: $2a
    ld e, d                                       ; $55d0: $5a
    ld [$e97a], a                                 ; $55d1: $ea $7a $e9
    ld a, [hl-]                                   ; $55d4: $3a
    ld a, d                                       ; $55d5: $7a
    ld [$e9ba], a                                 ; $55d6: $ea $ba $e9
    ld a, [bc]                                    ; $55d9: $0a
    ld e, d                                       ; $55da: $5a
    ld [$e97a], a                                 ; $55db: $ea $7a $e9
    ld a, [bc]                                    ; $55de: $0a
    ld a, [hl-]                                   ; $55df: $3a
    ld [$e99a], a                                 ; $55e0: $ea $9a $e9
    ld a, [bc]                                    ; $55e3: $0a
    ld a, [hl-]                                   ; $55e4: $3a
    ld a, [hl+]                                   ; $55e5: $2a
    ld [$e97a], a                                 ; $55e6: $ea $7a $e9
    ld a, d                                       ; $55e9: $7a
    ld a, [bc]                                    ; $55ea: $0a
    ld a, [hl-]                                   ; $55eb: $3a
    ld a, d                                       ; $55ec: $7a
    ld [$e99a], a                                 ; $55ed: $ea $9a $e9
    ld a, [bc]                                    ; $55f0: $0a
    ld e, d                                       ; $55f1: $5a
    ld [$aa7a], a                                 ; $55f2: $ea $7a $aa
    jp hl                                         ; $55f5: $e9


    ld a, [hl-]                                   ; $55f6: $3a
    ld [$aa3a], a                                 ; $55f7: $ea $3a $aa
    jp hl                                         ; $55fa: $e9


    ld a, [hl-]                                   ; $55fb: $3a
    ld [$e98a], a                                 ; $55fc: $ea $8a $e9
    ld a, [bc]                                    ; $55ff: $0a
    ld a, [hl-]                                   ; $5600: $3a
    ld [$aa7a], a                                 ; $5601: $ea $7a $aa
    jp hl                                         ; $5604: $e9


    ld a, [hl-]                                   ; $5605: $3a
    ld [$5a8a], a                                 ; $5606: $ea $8a $5a
    xor d                                         ; $5609: $aa
    jp hl                                         ; $560a: $e9


    ld a, [hl-]                                   ; $560b: $3a
    ld [$e93a], a                                 ; $560c: $ea $3a $e9
    jp c, Jump_00f_7cee                           ; $560f: $da $ee $7c

    ld d, l                                       ; $5612: $55
    ld sp, hl                                     ; $5613: $f9
    ld a, b                                       ; $5614: $78
    ldh a, [rNR41]                                ; $5615: $f0 $20
    inc b                                         ; $5617: $04
    nop                                           ; $5618: $00
    ei                                            ; $5619: $fb
    inc de                                        ; $561a: $13
    rst $30                                       ; $561b: $f7
    add hl, bc                                    ; $561c: $09
    ldh [c], a                                    ; $561d: $e2
    push af                                       ; $561e: $f5
    jr @+$12                                      ; $561f: $18 $10

    ld b, $fa                                     ; $5621: $06 $fa
    add h                                         ; $5623: $84
    ld e, c                                       ; $5624: $59
    ld a, [$a754]                                 ; $5625: $fa $54 $a7
    jp c, Jump_00f_5457                           ; $5628: $da $57 $54

    and a                                         ; $562b: $a7
    ld d, a                                       ; $562c: $57
    ld a, [$4984]                                 ; $562d: $fa $84 $49
    ld a, [$a754]                                 ; $5630: $fa $54 $a7
    jp c, Jump_00f_4447                           ; $5633: $da $47 $44

    and a                                         ; $5636: $a7
    ld b, a                                       ; $5637: $47
    ld a, [$3984]                                 ; $5638: $fa $84 $39
    ld a, [$a754]                                 ; $563b: $fa $54 $a7
    jp c, $3437                                   ; $563e: $da $37 $34

    and a                                         ; $5641: $a7
    scf                                           ; $5642: $37
    daa                                           ; $5643: $27
    ld a, [$2784]                                 ; $5644: $fa $84 $27
    inc [hl]                                      ; $5647: $34
    inc h                                         ; $5648: $24
    inc [hl]                                      ; $5649: $34
    ld a, [$5454]                                 ; $564a: $fa $54 $54

    db $cd, $ee, $22

    ld d, [hl]                                    ; $5650: $56
    ld sp, hl                                     ; $5651: $f9
    ld a, b                                       ; $5652: $78
    ldh a, [rNR41]                                ; $5653: $f0 $20
    inc b                                         ; $5655: $04
    nop                                           ; $5656: $00
    ei                                            ; $5657: $fb
    inc hl                                        ; $5658: $23
    rst $30                                       ; $5659: $f7
    rlca                                          ; $565a: $07
    ldh [c], a                                    ; $565b: $e2
    push af                                       ; $565c: $f5
    jr jr_00f_566f                                ; $565d: $18 $10

    ld b, $fa                                     ; $565f: $06 $fa
    add h                                         ; $5661: $84
    add hl, bc                                    ; $5662: $09
    ld a, [$5754]                                 ; $5663: $fa $54 $57
    jp c, $0407                                   ; $5666: $da $07 $04

    ld d, a                                       ; $5669: $57
    rlca                                          ; $566a: $07
    ld [$84fa], a                                 ; $566b: $ea $fa $84
    xor c                                         ; $566e: $a9

jr_00f_566f:
    ld a, [$e954]                                 ; $566f: $fa $54 $e9
    ld b, a                                       ; $5672: $47
    jp c, $a7ea                                   ; $5673: $da $ea $a7

    and h                                         ; $5676: $a4
    jp hl                                         ; $5677: $e9


    ld b, a                                       ; $5678: $47
    ld [$faa7], a                                 ; $5679: $ea $a7 $fa
    add h                                         ; $567c: $84
    xor c                                         ; $567d: $a9
    ld a, [$e954]                                 ; $567e: $fa $54 $e9
    scf                                           ; $5681: $37
    jp c, $a7ea                                   ; $5682: $da $ea $a7

    and h                                         ; $5685: $a4
    jp hl                                         ; $5686: $e9


    scf                                           ; $5687: $37
    ld [$a7a7], a                                 ; $5688: $ea $a7 $a7
    ld a, [$a784]                                 ; $568b: $fa $84 $a7
    jp hl                                         ; $568e: $e9


    inc b                                         ; $568f: $04
    ld [$e9a4], a                                 ; $5690: $ea $a4 $e9
    inc b                                         ; $5693: $04
    ld a, [$2454]                                 ; $5694: $fa $54 $24
    call Call_00f_60ee                            ; $5697: $cd $ee $60
    ld d, [hl]                                    ; $569a: $56
    ld sp, hl                                     ; $569b: $f9
    ld a, b                                       ; $569c: $78
    ldh a, [rTMA]                                 ; $569d: $f0 $06
    nop                                           ; $569f: $00
    nop                                           ; $56a0: $00
    ld a, [$fb58]                                 ; $56a1: $fa $58 $fb
    inc sp                                        ; $56a4: $33
    rst $30                                       ; $56a5: $f7
    ld c, $e2                                     ; $56a6: $0e $e2
    pop af                                        ; $56a8: $f1
    inc bc                                        ; $56a9: $03
    add hl, hl                                    ; $56aa: $29
    add hl, bc                                    ; $56ab: $09
    ld [$a997], a                                 ; $56ac: $ea $97 $a9
    jp hl                                         ; $56af: $e9


    ld e, c                                       ; $56b0: $59
    ld [$e957], a                                 ; $56b1: $ea $57 $e9
    ldh a, [c]                                    ; $56b4: $f2
    add hl, hl                                    ; $56b5: $29
    add hl, bc                                    ; $56b6: $09
    ld [$e957], a                                 ; $56b7: $ea $57 $e9
    ld e, c                                       ; $56ba: $59
    add hl, sp                                    ; $56bb: $39
    ld [$e957], a                                 ; $56bc: $ea $57 $e9
    xor $a8                                       ; $56bf: $ee $a8
    ld d, [hl]                                    ; $56c1: $56
    rst $30                                       ; $56c2: $f7
    add hl, bc                                    ; $56c3: $09
    ld sp, hl                                     ; $56c4: $f9
    ld a, b                                       ; $56c5: $78
    ld a, [$f153]                                 ; $56c6: $fa $53 $f1
    inc bc                                        ; $56c9: $03
    db $fc                                        ; $56ca: $fc
    jr nz, @-$03                                  ; $56cb: $20 $fb

    ld de, $04d7                                  ; $56cd: $11 $d7 $04
    call nc, Call_000_30fc                        ; $56d0: $d4 $fc $30
    ei                                            ; $56d3: $fb
    ld [hl+], a                                   ; $56d4: $22
    inc b                                         ; $56d5: $04
    inc b                                         ; $56d6: $04
    call nc, Call_000_20fc                        ; $56d7: $d4 $fc $20
    ei                                            ; $56da: $fb
    ld de, $d404                                  ; $56db: $11 $04 $d4
    inc b                                         ; $56de: $04

jr_00f_56df:
    call nc, $fc04                                ; $56df: $d4 $04 $fc
    jr nc, jr_00f_56df                            ; $56e2: $30 $fb

    ld [hl+], a                                   ; $56e4: $22
    inc b                                         ; $56e5: $04
    call nc, $d404                                ; $56e6: $d4 $04 $d4

jr_00f_56e9:
    ldh a, [c]                                    ; $56e9: $f2
    rst $10                                       ; $56ea: $d7
    db $fc                                        ; $56eb: $fc
    jr nz, jr_00f_56e9                            ; $56ec: $20 $fb

    ld de, $d404                                  ; $56ee: $11 $04 $d4
    db $fc                                        ; $56f1: $fc
    jr nc, @-$03                                  ; $56f2: $30 $fb

    ld [hl+], a                                   ; $56f4: $22
    inc b                                         ; $56f5: $04
    inc b                                         ; $56f6: $04
    call nc, Call_000_20fc                        ; $56f7: $d4 $fc $20
    ei                                            ; $56fa: $fb
    ld de, $0202                                  ; $56fb: $11 $02 $02
    inc b                                         ; $56fe: $04
    pop de                                        ; $56ff: $d1
    inc b                                         ; $5700: $04
    pop de                                        ; $5701: $d1
    inc b                                         ; $5702: $04
    pop de                                        ; $5703: $d1
    inc b                                         ; $5704: $04
    call nc, $d404                                ; $5705: $d4 $04 $d4
    xor $c8                                       ; $5708: $ee $c8
    ld d, [hl]                                    ; $570a: $56
    ld sp, hl                                     ; $570b: $f9
    ld [hl], b                                    ; $570c: $70
    ldh a, [rP1]                                  ; $570d: $f0 $00
    nop                                           ; $570f: $00
    nop                                           ; $5710: $00
    rst $30                                       ; $5711: $f7
    ld [$33fb], sp                                ; $5712: $08 $fb $33
    db $e3                                        ; $5715: $e3
    push af                                       ; $5716: $f5
    db $10                                        ; $5717: $10
    db $10                                        ; $5718: $10
    ld [$44fa], sp                                ; $5719: $08 $fa $44
    pop af                                        ; $571c: $f1
    ld [bc], a                                    ; $571d: $02
    ld a, d                                       ; $571e: $7a
    cp d                                          ; $571f: $ba
    ld a, [$2a84]                                 ; $5720: $fa $84 $2a
    ret z                                         ; $5723: $c8

    ld b, e                                       ; $5724: $43
    ld h, e                                       ; $5725: $63
    ld a, [$f244]                                 ; $5726: $fa $44 $f2
    ld a, d                                       ; $5729: $7a
    cp d                                          ; $572a: $ba
    ld a, [hl+]                                   ; $572b: $2a
    cp d                                          ; $572c: $ba
    ld a, [$e984]                                 ; $572d: $fa $84 $e9
    ld [$faea], sp                                ; $5730: $08 $ea $fa
    ld b, h                                       ; $5733: $44
    cp d                                          ; $5734: $ba
    sbc d                                         ; $5735: $9a
    push de                                       ; $5736: $d5
    ld a, [$7a84]                                 ; $5737: $fa $84 $7a
    ld a, [$6a44]                                 ; $573a: $fa $44 $6a
    sbc d                                         ; $573d: $9a
    ld a, [$2d64]                                 ; $573e: $fa $64 $2d
    ld a, [$6a44]                                 ; $5741: $fa $44 $6a
    sbc d                                         ; $5744: $9a
    ld a, [$2d64]                                 ; $5745: $fa $64 $2d
    ld a, [$6a44]                                 ; $5748: $fa $44 $6a
    sbc d                                         ; $574b: $9a
    ld a, [hl+]                                   ; $574c: $2a
    sbc d                                         ; $574d: $9a
    ld a, b                                       ; $574e: $78
    ld a, [$6584]                                 ; $574f: $fa $84 $65
    ld a, [$7844]                                 ; $5752: $fa $44 $78
    ld a, [$9584]                                 ; $5755: $fa $84 $95
    ld a, [$ba44]                                 ; $5758: $fa $44 $ba
    ld a, [$2a84]                                 ; $575b: $fa $84 $2a
    ld a, [$f144]                                 ; $575e: $fa $44 $f1
    ld [bc], a                                    ; $5761: $02
    ld a, d                                       ; $5762: $7a
    cp d                                          ; $5763: $ba
    ld a, [$2a84]                                 ; $5764: $fa $84 $2a
    ret z                                         ; $5767: $c8

    ld b, e                                       ; $5768: $43
    ld h, e                                       ; $5769: $63
    ld a, [$f244]                                 ; $576a: $fa $44 $f2
    ld a, d                                       ; $576d: $7a
    cp d                                          ; $576e: $ba
    ld a, [hl+]                                   ; $576f: $2a
    cp d                                          ; $5770: $ba
    jp hl                                         ; $5771: $e9


    ld a, [$0884]                                 ; $5772: $fa $84 $08
    ld [$44fa], a                                 ; $5775: $ea $fa $44
    cp d                                          ; $5778: $ba
    sbc d                                         ; $5779: $9a
    push de                                       ; $577a: $d5
    jp hl                                         ; $577b: $e9


    ld a, [$4a84]                                 ; $577c: $fa $84 $4a
    ld a, [$2a44]                                 ; $577f: $fa $44 $2a
    ld a, [hl+]                                   ; $5782: $2a
    ld a, [$0884]                                 ; $5783: $fa $84 $08
    dec h                                         ; $5786: $25
    ld a, [$0a44]                                 ; $5787: $fa $44 $0a
    ld [$84fa], a                                 ; $578a: $ea $fa $84
    cp b                                          ; $578d: $b8
    jp hl                                         ; $578e: $e9


    dec b                                         ; $578f: $05
    ld a, [$ea44]                                 ; $5790: $fa $44 $ea
    cp d                                          ; $5793: $ba
    ld a, [$9884]                                 ; $5794: $fa $84 $98
    or l                                          ; $5797: $b5
    ld a, [$9a44]                                 ; $5798: $fa $44 $9a
    ld a, d                                       ; $579b: $7a
    ld a, [$2884]                                 ; $579c: $fa $84 $28
    ld a, [$4a44]                                 ; $579f: $fa $44 $4a
    ld a, [$2584]                                 ; $57a2: $fa $84 $25
    ld [$44fa], a                                 ; $57a5: $ea $fa $44
    cp d                                          ; $57a8: $ba
    ld a, d                                       ; $57a9: $7a
    jp c, Jump_00f_7ae9                           ; $57aa: $da $e9 $7a

    jp c, $6a6a                                   ; $57ad: $da $6a $6a

    ld l, d                                       ; $57b0: $6a
    ld l, d                                       ; $57b1: $6a
    ld a, [$6884]                                 ; $57b2: $fa $84 $68
    ld a, [$7a44]                                 ; $57b5: $fa $44 $7a
    sbc d                                         ; $57b8: $9a
    push de                                       ; $57b9: $d5
    ld a, [$2a84]                                 ; $57ba: $fa $84 $2a
    ld a, [$7a44]                                 ; $57bd: $fa $44 $7a
    ld a, d                                       ; $57c0: $7a
    ld a, d                                       ; $57c1: $7a
    ld a, d                                       ; $57c2: $7a
    ld a, [$7884]                                 ; $57c3: $fa $84 $78
    ld a, [$9a44]                                 ; $57c6: $fa $44 $9a
    cp d                                          ; $57c9: $ba
    push de                                       ; $57ca: $d5
    ld a, [$4a84]                                 ; $57cb: $fa $84 $4a
    ld a, [$8a44]                                 ; $57ce: $fa $44 $8a
    adc d                                         ; $57d1: $8a
    adc d                                         ; $57d2: $8a
    adc d                                         ; $57d3: $8a
    ld a, [$8884]                                 ; $57d4: $fa $84 $88
    ld a, [$9a44]                                 ; $57d7: $fa $44 $9a
    cp d                                          ; $57da: $ba
    push de                                       ; $57db: $d5
    jp hl                                         ; $57dc: $e9


    ld a, [$2a84]                                 ; $57dd: $fa $84 $2a
    ld a, [$0d64]                                 ; $57e0: $fa $64 $0d
    call $eacf                                    ; $57e3: $cd $cf $ea
    ld a, [$ba84]                                 ; $57e6: $fa $84 $ba
    ld a, [$9a44]                                 ; $57e9: $fa $44 $9a
    sbc d                                         ; $57ec: $9a
    ld a, [$9884]                                 ; $57ed: $fa $84 $98
    add l                                         ; $57f0: $85
    ld a, [$9a44]                                 ; $57f1: $fa $44 $9a
    ld a, [$bf64]                                 ; $57f4: $fa $64 $bf
    ld a, [$6a44]                                 ; $57f7: $fa $44 $6a
    ld a, [$9a84]                                 ; $57fa: $fa $84 $9a
    ld a, [$7a44]                                 ; $57fd: $fa $44 $7a
    ld l, d                                       ; $5800: $6a
    ld a, d                                       ; $5801: $7a
    jp hl                                         ; $5802: $e9


    ld a, [$2f74]                                 ; $5803: $fa $74 $2f
    ld a, [$7a84]                                 ; $5806: $fa $84 $7a
    ld a, [hl+]                                   ; $5809: $2a
    ld a, [$0a44]                                 ; $580a: $fa $44 $0a
    ld a, [$0a84]                                 ; $580d: $fa $84 $0a
    ld [$44fa], a                                 ; $5810: $ea $fa $44
    cp d                                          ; $5813: $ba
    ld a, [$ba84]                                 ; $5814: $fa $84 $ba
    ld a, [$9d64]                                 ; $5817: $fa $64 $9d
    ld a, [$b884]                                 ; $581a: $fa $84 $b8
    jp hl                                         ; $581d: $e9


    dec b                                         ; $581e: $05
    ld a, [hl+]                                   ; $581f: $2a
    ld a, [$0a44]                                 ; $5820: $fa $44 $0a
    ld a, [$0a84]                                 ; $5823: $fa $84 $0a
    ld [$44fa], a                                 ; $5826: $ea $fa $44
    cp d                                          ; $5829: $ba
    ld a, [$9d84]                                 ; $582a: $fa $84 $9d
    cp l                                          ; $582d: $bd
    ld a, [$7e64]                                 ; $582e: $fa $64 $7e
    ld a, [$2584]                                 ; $5831: $fa $84 $25
    ld a, [$7844]                                 ; $5834: $fa $44 $78
    jp hl                                         ; $5837: $e9


    ld a, [$2584]                                 ; $5838: $fa $84 $25
    ld a, [bc]                                    ; $583b: $0a
    ld [$9aba], a                                 ; $583c: $ea $ba $9a
    ld a, d                                       ; $583f: $7a
    ld a, [$5e64]                                 ; $5840: $fa $64 $5e
    ld a, [$2584]                                 ; $5843: $fa $84 $25
    ld a, [$5844]                                 ; $5846: $fa $44 $58
    jp hl                                         ; $5849: $e9


    ld a, [$2584]                                 ; $584a: $fa $84 $25
    ld a, [bc]                                    ; $584d: $0a
    ld [$9aba], a                                 ; $584e: $ea $ba $9a
    ld a, d                                       ; $5851: $7a
    ld a, [$4e64]                                 ; $5852: $fa $64 $4e
    ld a, [$0584]                                 ; $5855: $fa $84 $05
    ld a, [$4844]                                 ; $5858: $fa $44 $48
    ld a, [$b584]                                 ; $585b: $fa $84 $b5
    sbc d                                         ; $585e: $9a
    ld a, d                                       ; $585f: $7a
    ld l, d                                       ; $5860: $6a
    ld a, d                                       ; $5861: $7a
    dec a                                         ; $5862: $3d
    ld e, d                                       ; $5863: $5a
    ld a, [hl-]                                   ; $5864: $3a
    dec l                                         ; $5865: $2d
    call $1aee                                    ; $5866: $cd $ee $1a
    ld d, a                                       ; $5869: $57
    ld sp, hl                                     ; $586a: $f9
    ld [hl], b                                    ; $586b: $70
    rst $30                                       ; $586c: $f7
    rlca                                          ; $586d: $07
    ei                                            ; $586e: $fb
    inc hl                                        ; $586f: $23
    ldh a, [rSC]                                  ; $5870: $f0 $02
    inc b                                         ; $5872: $04
    nop                                           ; $5873: $00
    push af                                       ; $5874: $f5
    jr @+$12                                      ; $5875: $18 $10

    ld b, $e2                                     ; $5877: $06 $e2
    ld a, [$da53]                                 ; $5879: $fa $53 $da
    ld a, d                                       ; $587c: $7a
    jp c, $da7a                                   ; $587d: $da $7a $da

    ld a, d                                       ; $5880: $7a
    jp c, $da7a                                   ; $5881: $da $7a $da

    ld a, d                                       ; $5884: $7a
    jp c, $fb7a                                   ; $5885: $da $7a $fb

    ld hl, $08e9                                  ; $5888: $21 $e9 $08
    ld [$e905], a                                 ; $588b: $ea $05 $e9
    jr z, @-$14                                   ; $588e: $28 $ea

    dec h                                         ; $5890: $25
    jp hl                                         ; $5891: $e9


    ld c, b                                       ; $5892: $48
    ld [$e945], a                                 ; $5893: $ea $45 $e9
    ld [$05ea], sp                                ; $5896: $08 $ea $05
    ei                                            ; $5899: $fb
    inc hl                                        ; $589a: $23
    jp c, $da9a                                   ; $589b: $da $9a $da

jr_00f_589e:
    sbc d                                         ; $589e: $9a
    jp c, $da9a                                   ; $589f: $da $9a $da

    sbc d                                         ; $58a2: $9a
    jp c, $da9a                                   ; $58a3: $da $9a $da

    sbc d                                         ; $58a6: $9a
    ei                                            ; $58a7: $fb
    ld [de], a                                    ; $58a8: $12
    cp b                                          ; $58a9: $b8
    ld [$e9b5], a                                 ; $58aa: $ea $b5 $e9
    jp hl                                         ; $58ad: $e9


    ld [$05ea], sp                                ; $58ae: $08 $ea $05
    jp hl                                         ; $58b1: $e9


    jr z, jr_00f_589e                             ; $58b2: $28 $ea

    dec h                                         ; $58b4: $25
    jp hl                                         ; $58b5: $e9


    ld [$05ea], sp                                ; $58b6: $08 $ea $05
    ei                                            ; $58b9: $fb

jr_00f_58ba:
    inc hl                                        ; $58ba: $23
    jp c, $da7a                                   ; $58bb: $da $7a $da

    ld a, d                                       ; $58be: $7a
    jp c, $da7a                                   ; $58bf: $da $7a $da

    ld a, d                                       ; $58c2: $7a
    jp c, $da7a                                   ; $58c3: $da $7a $da

    ld a, d                                       ; $58c6: $7a
    ei                                            ; $58c7: $fb
    ld hl, $08e9                                  ; $58c8: $21 $e9 $08
    ld [$e905], a                                 ; $58cb: $ea $05 $e9
    jr z, jr_00f_58ba                             ; $58ce: $28 $ea

    dec h                                         ; $58d0: $25
    jp hl                                         ; $58d1: $e9


    ld c, b                                       ; $58d2: $48
    ld [$e945], a                                 ; $58d3: $ea $45 $e9
    ld [$05ea], sp                                ; $58d6: $08 $ea $05
    ei                                            ; $58d9: $fb
    inc hl                                        ; $58da: $23
    jp c, $da9a                                   ; $58db: $da $9a $da

    sbc d                                         ; $58de: $9a
    jp c, $da9a                                   ; $58df: $da $9a $da

    sbc d                                         ; $58e2: $9a
    cp d                                          ; $58e3: $ba
    db $dd                                        ; $58e4: $dd
    jp hl                                         ; $58e5: $e9


    ld a, [bc]                                    ; $58e6: $0a
    ld [$daba], a                                 ; $58e7: $ea $ba $da
    cp d                                          ; $58ea: $ba
    jp c, $6ada                                   ; $58eb: $da $da $6a

    jp c, $da6a                                   ; $58ee: $da $6a $da

    ld l, d                                       ; $58f1: $6a
    jp c, $da6a                                   ; $58f2: $da $6a $da

    ld a, d                                       ; $58f5: $7a
    jp c, $da7a                                   ; $58f6: $da $7a $da

    ld a, d                                       ; $58f9: $7a
    jp c, $da7a                                   ; $58fa: $da $7a $da

    adc d                                         ; $58fd: $8a
    jp c, $da8a                                   ; $58fe: $da $8a $da

    adc d                                         ; $5901: $8a
    jp c, $fb8a                                   ; $5902: $da $8a $fb

    ld [de], a                                    ; $5905: $12
    ldh a, [rNR12]                                ; $5906: $f0 $12
    inc b                                         ; $5908: $04
    nop                                           ; $5909: $00
    dec b                                         ; $590a: $05
    ld b, l                                       ; $590b: $45
    sub l                                         ; $590c: $95
    jp hl                                         ; $590d: $e9


    ld b, l                                       ; $590e: $45
    dec b                                         ; $590f: $05
    ld [$fb95], a                                 ; $5910: $ea $95 $fb
    ld hl, $4505                                  ; $5913: $21 $05 $45
    add l                                         ; $5916: $85
    jp hl                                         ; $5917: $e9


    ld b, l                                       ; $5918: $45
    dec b                                         ; $5919: $05
    ld [$fb85], a                                 ; $591a: $ea $85 $fb
    ld [de], a                                    ; $591d: $12
    dec b                                         ; $591e: $05
    ld b, l                                       ; $591f: $45
    ld [hl], l                                    ; $5920: $75
    jp hl                                         ; $5921: $e9


    ld b, l                                       ; $5922: $45
    dec b                                         ; $5923: $05
    ld [$fb85], a                                 ; $5924: $ea $85 $fb
    ld hl, $4505                                  ; $5927: $21 $05 $45
    ld [hl], l                                    ; $592a: $75
    jp hl                                         ; $592b: $e9


    ld b, l                                       ; $592c: $45
    dec b                                         ; $592d: $05
    ld [$fb85], a                                 ; $592e: $ea $85 $fb
    inc hl                                        ; $5931: $23
    ldh a, [rSC]                                  ; $5932: $f0 $02
    inc b                                         ; $5934: $04
    nop                                           ; $5935: $00
    jp c, $da6a                                   ; $5936: $da $6a $da

    ld l, d                                       ; $5939: $6a
    jp c, $da6a                                   ; $593a: $da $6a $da

    ld l, d                                       ; $593d: $6a
    jp hl                                         ; $593e: $e9


    ld a, [hl+]                                   ; $593f: $2a
    ld a, [hl+]                                   ; $5940: $2a
    ld a, [hl+]                                   ; $5941: $2a
    ld a, [hl+]                                   ; $5942: $2a
    ld a, [bc]                                    ; $5943: $0a
    ld a, [bc]                                    ; $5944: $0a
    ld a, [bc]                                    ; $5945: $0a
    ld a, [bc]                                    ; $5946: $0a
    ld [$4ada], a                                 ; $5947: $ea $da $4a
    jp c, $da4a                                   ; $594a: $da $4a $da

    ld c, d                                       ; $594d: $4a
    jp c, $fa4a                                   ; $594e: $da $4a $fa

    add e                                         ; $5951: $83
    ld c, d                                       ; $5952: $4a
    ld a, [hl-]                                   ; $5953: $3a
    ld c, d                                       ; $5954: $4a
    ld a, [de]                                    ; $5955: $1a
    dec l                                         ; $5956: $2d
    ld l, l                                       ; $5957: $6d
    ld a, [$da53]                                 ; $5958: $fa $53 $da
    ld a, [hl+]                                   ; $595b: $2a
    jp c, $da2a                                   ; $595c: $da $2a $da

    ld a, [hl+]                                   ; $595f: $2a
    jp c, $da2a                                   ; $5960: $da $2a $da

    ld a, [hl+]                                   ; $5963: $2a
    jp c, $da2a                                   ; $5964: $da $2a $da

    ld a, [hl+]                                   ; $5967: $2a
    jp c, $da2a                                   ; $5968: $da $2a $da

    ld c, d                                       ; $596b: $4a
    jp c, $da4a                                   ; $596c: $da $4a $da

    ld c, d                                       ; $596f: $4a
    jp c, $da4a                                   ; $5970: $da $4a $da

    ld a, [hl-]                                   ; $5973: $3a
    jp c, $fa3a                                   ; $5974: $da $3a $fa

    add e                                         ; $5977: $83
    jp hl                                         ; $5978: $e9


    dec c                                         ; $5979: $0d
    ld [$ee9d], a                                 ; $597a: $ea $9d $ee
    ld a, c                                       ; $597d: $79
    ld e, b                                       ; $597e: $58
    ld sp, hl                                     ; $597f: $f9
    ld [hl], b                                    ; $5980: $70
    rst $30                                       ; $5981: $f7
    rlca                                          ; $5982: $07
    ei                                            ; $5983: $fb
    inc de                                        ; $5984: $13
    ldh a, [rSC]                                  ; $5985: $f0 $02
    inc b                                         ; $5987: $04
    nop                                           ; $5988: $00
    push af                                       ; $5989: $f5
    jr @+$12                                      ; $598a: $18 $10

    ld b, $e0                                     ; $598c: $06 $e0
    ld a, [$f153]                                 ; $598e: $fa $53 $f1
    inc bc                                        ; $5991: $03
    ld a, d                                       ; $5992: $7a
    jp hl                                         ; $5993: $e9


    jp hl                                         ; $5994: $e9


    ld a, [hl+]                                   ; $5995: $2a
    ld [$e92a], a                                 ; $5996: $ea $2a $e9
    ld a, [hl+]                                   ; $5999: $2a
    ld [$f2ea], a                                 ; $599a: $ea $ea $f2
    sbc d                                         ; $599d: $9a
    cp d                                          ; $599e: $ba
    jp hl                                         ; $599f: $e9


    ld a, [bc]                                    ; $59a0: $0a
    ld [$e99a], a                                 ; $59a1: $ea $9a $e9
    pop af                                        ; $59a4: $f1
    inc bc                                        ; $59a5: $03
    ld a, [hl+]                                   ; $59a6: $2a
    jp hl                                         ; $59a7: $e9


    ld a, [hl+]                                   ; $59a8: $2a
    ld [$9aea], a                                 ; $59a9: $ea $ea $9a
    jp hl                                         ; $59ac: $e9


    jp hl                                         ; $59ad: $e9


    ld a, [hl+]                                   ; $59ae: $2a
    ld [$eaf2], a                                 ; $59af: $ea $f2 $ea
    ld a, d                                       ; $59b2: $7a
    sbc d                                         ; $59b3: $9a
    cp d                                          ; $59b4: $ba
    jp hl                                         ; $59b5: $e9


    ld a, [hl+]                                   ; $59b6: $2a
    ld [$03f1], a                                 ; $59b7: $ea $f1 $03
    ld a, d                                       ; $59ba: $7a
    jp hl                                         ; $59bb: $e9


    jp hl                                         ; $59bc: $e9


    ld a, [hl+]                                   ; $59bd: $2a
    ld [$e92a], a                                 ; $59be: $ea $2a $e9
    ld a, [hl+]                                   ; $59c1: $2a
    ld [$f2ea], a                                 ; $59c2: $ea $ea $f2
    sbc d                                         ; $59c5: $9a
    cp d                                          ; $59c6: $ba
    jp hl                                         ; $59c7: $e9


    ld a, [bc]                                    ; $59c8: $0a
    ld a, [de]                                    ; $59c9: $1a
    ld a, [hl+]                                   ; $59ca: $2a
    jp hl                                         ; $59cb: $e9


    ld a, [hl+]                                   ; $59cc: $2a
    ld [$9aea], a                                 ; $59cd: $ea $ea $9a
    jp hl                                         ; $59d0: $e9


    jp hl                                         ; $59d1: $e9


    ld a, [hl+]                                   ; $59d2: $2a
    ld [$e92a], a                                 ; $59d3: $ea $2a $e9
    ld a, [hl+]                                   ; $59d6: $2a
    ld [$2aea], a                                 ; $59d7: $ea $ea $2a
    jp hl                                         ; $59da: $e9


    jp hl                                         ; $59db: $e9


    ld a, [bc]                                    ; $59dc: $0a
    ld [$7aea], a                                 ; $59dd: $ea $ea $7a
    db $dd                                        ; $59e0: $dd
    jp hl                                         ; $59e1: $e9


    ld a, [hl+]                                   ; $59e2: $2a
    ld [$da7a], a                                 ; $59e3: $ea $7a $da
    jp hl                                         ; $59e6: $e9


    ld a, d                                       ; $59e7: $7a
    jp c, $f1ea                                   ; $59e8: $da $ea $f1

    ld [bc], a                                    ; $59eb: $02
    sbc d                                         ; $59ec: $9a
    jp hl                                         ; $59ed: $e9


    jp hl                                         ; $59ee: $e9


    ld a, [hl+]                                   ; $59ef: $2a
    ld [$2aea], a                                 ; $59f0: $ea $ea $2a
    jp hl                                         ; $59f3: $e9


    jp hl                                         ; $59f4: $e9


    ld a, [hl+]                                   ; $59f5: $2a
    ld [$f2ea], a                                 ; $59f6: $ea $ea $f2
    pop af                                        ; $59f9: $f1
    ld [bc], a                                    ; $59fa: $02
    ld a, d                                       ; $59fb: $7a
    jp hl                                         ; $59fc: $e9


    jp hl                                         ; $59fd: $e9


    ld a, [hl+]                                   ; $59fe: $2a
    ld [$2aea], a                                 ; $59ff: $ea $ea $2a
    jp hl                                         ; $5a02: $e9


    jp hl                                         ; $5a03: $e9


    ld a, [hl+]                                   ; $5a04: $2a
    ld [$f2ea], a                                 ; $5a05: $ea $ea $f2
    cp d                                          ; $5a08: $ba
    jp hl                                         ; $5a09: $e9


    jp hl                                         ; $5a0a: $e9


    ld a, [hl+]                                   ; $5a0b: $2a
    ld [$8aea], a                                 ; $5a0c: $ea $ea $8a
    jp hl                                         ; $5a0f: $e9


    jp hl                                         ; $5a10: $e9


    ld a, [hl+]                                   ; $5a11: $2a
    ld [$4aea], a                                 ; $5a12: $ea $ea $4a
    jp hl                                         ; $5a15: $e9


    jp hl                                         ; $5a16: $e9


    ld a, [hl+]                                   ; $5a17: $2a
    ld [$8aea], a                                 ; $5a18: $ea $ea $8a
    jp hl                                         ; $5a1b: $e9


    jp hl                                         ; $5a1c: $e9


    ld a, [hl+]                                   ; $5a1d: $2a
    ld [$faea], a                                 ; $5a1e: $ea $ea $fa
    ld [hl], e                                    ; $5a21: $73
    sbc l                                         ; $5a22: $9d
    adc l                                         ; $5a23: $8d
    ld a, l                                       ; $5a24: $7d
    adc l                                         ; $5a25: $8d
    ld a, [$2a53]                                 ; $5a26: $fa $53 $2a
    jp hl                                         ; $5a29: $e9


    jp hl                                         ; $5a2a: $e9


    ld a, [hl+]                                   ; $5a2b: $2a
    ld [$9aea], a                                 ; $5a2c: $ea $ea $9a
    jp hl                                         ; $5a2f: $e9


    jp hl                                         ; $5a30: $e9


    ld a, [hl+]                                   ; $5a31: $2a
    ld [$baea], a                                 ; $5a32: $ea $ea $ba
    jp hl                                         ; $5a35: $e9


    jp hl                                         ; $5a36: $e9


    ld a, [hl-]                                   ; $5a37: $3a
    ld [$3aea], a                                 ; $5a38: $ea $ea $3a
    jp hl                                         ; $5a3b: $e9


    jp hl                                         ; $5a3c: $e9


    ld a, [hl-]                                   ; $5a3d: $3a
    ld [$4a4a], a                                 ; $5a3e: $ea $4a $4a
    ld c, d                                       ; $5a41: $4a
    ld c, d                                       ; $5a42: $4a
    ld a, [hl+]                                   ; $5a43: $2a
    ld a, [hl+]                                   ; $5a44: $2a
    ld a, [hl+]                                   ; $5a45: $2a
    ld a, [hl+]                                   ; $5a46: $2a
    ld a, [bc]                                    ; $5a47: $0a
    jp hl                                         ; $5a48: $e9


    ld a, [hl+]                                   ; $5a49: $2a
    ld [$7aea], a                                 ; $5a4a: $ea $ea $7a
    jp hl                                         ; $5a4d: $e9


    jp hl                                         ; $5a4e: $e9


    ld a, [bc]                                    ; $5a4f: $0a
    ld [$e90a], a                                 ; $5a50: $ea $0a $e9
    ld a, [hl+]                                   ; $5a53: $2a
    ld [$7aea], a                                 ; $5a54: $ea $ea $7a
    jp hl                                         ; $5a57: $e9


    jp hl                                         ; $5a58: $e9


    ld a, [bc]                                    ; $5a59: $0a
    ld [$faea], a                                 ; $5a5a: $ea $ea $fa
    add e                                         ; $5a5d: $83
    sbc d                                         ; $5a5e: $9a
    adc d                                         ; $5a5f: $8a
    sbc d                                         ; $5a60: $9a
    cp d                                          ; $5a61: $ba
    jp hl                                         ; $5a62: $e9


    dec c                                         ; $5a63: $0d
    ld [$fa2d], a                                 ; $5a64: $ea $2d $fa
    ld d, e                                       ; $5a67: $53
    pop af                                        ; $5a68: $f1
    ld [bc], a                                    ; $5a69: $02
    ld a, d                                       ; $5a6a: $7a
    jp hl                                         ; $5a6b: $e9


    cp d                                          ; $5a6c: $ba
    ld [$e92a], a                                 ; $5a6d: $ea $2a $e9
    cp d                                          ; $5a70: $ba
    ld [$f1f2], a                                 ; $5a71: $ea $f2 $f1
    ld [bc], a                                    ; $5a74: $02
    ld e, d                                       ; $5a75: $5a
    jp hl                                         ; $5a76: $e9


    jp hl                                         ; $5a77: $e9


    ld a, [bc]                                    ; $5a78: $0a
    ld [$2aea], a                                 ; $5a79: $ea $ea $2a
    jp hl                                         ; $5a7c: $e9


    jp hl                                         ; $5a7d: $e9


    ld a, [bc]                                    ; $5a7e: $0a
    ld [$f2ea], a                                 ; $5a7f: $ea $ea $f2
    pop af                                        ; $5a82: $f1
    ld [bc], a                                    ; $5a83: $02
    ld c, d                                       ; $5a84: $4a
    jp hl                                         ; $5a85: $e9


    jp hl                                         ; $5a86: $e9


    ld a, [bc]                                    ; $5a87: $0a
    ld [$0aea], a                                 ; $5a88: $ea $ea $0a
    jp hl                                         ; $5a8b: $e9


    jp hl                                         ; $5a8c: $e9


    ld a, [bc]                                    ; $5a8d: $0a
    ld [$f2ea], a                                 ; $5a8e: $ea $ea $f2
    sbc d                                         ; $5a91: $9a
    jp hl                                         ; $5a92: $e9


    jp hl                                         ; $5a93: $e9


    ld a, [bc]                                    ; $5a94: $0a
    ld [$0aea], a                                 ; $5a95: $ea $ea $0a
    jp hl                                         ; $5a98: $e9


    jp hl                                         ; $5a99: $e9


    ld a, [bc]                                    ; $5a9a: $0a
    ld [$faea], a                                 ; $5a9b: $ea $ea $fa
    add e                                         ; $5a9e: $83
    ld l, l                                       ; $5a9f: $6d
    dec l                                         ; $5aa0: $2d
    xor $8e                                       ; $5aa1: $ee $8e
    ld e, c                                       ; $5aa3: $59
    ld sp, hl                                     ; $5aa4: $f9
    ld [hl], b                                    ; $5aa5: $70
    rst $30                                       ; $5aa6: $f7
    add hl, bc                                    ; $5aa7: $09
    ld a, [$fb30]                                 ; $5aa8: $fa $30 $fb
    ld de, $10fc                                  ; $5aab: $11 $fc $10
    pop af                                        ; $5aae: $f1
    inc bc                                        ; $5aaf: $03
    dec b                                         ; $5ab0: $05
    ret c                                         ; $5ab1: $d8

    dec b                                         ; $5ab2: $05
    push de                                       ; $5ab3: $d5
    dec b                                         ; $5ab4: $05
    dec b                                         ; $5ab5: $05
    ret c                                         ; $5ab6: $d8

    dec b                                         ; $5ab7: $05
    push de                                       ; $5ab8: $d5
    dec b                                         ; $5ab9: $05
    ldh a, [c]                                    ; $5aba: $f2
    dec b                                         ; $5abb: $05
    ret c                                         ; $5abc: $d8

    dec b                                         ; $5abd: $05
    push de                                       ; $5abe: $d5
    dec b                                         ; $5abf: $05
    dec b                                         ; $5ac0: $05
    push de                                       ; $5ac1: $d5
    dec b                                         ; $5ac2: $05
    dec b                                         ; $5ac3: $05
    ret c                                         ; $5ac4: $d8

    pop af                                        ; $5ac5: $f1
    inc bc                                        ; $5ac6: $03
    dec b                                         ; $5ac7: $05
    ret c                                         ; $5ac8: $d8

    dec b                                         ; $5ac9: $05
    push de                                       ; $5aca: $d5
    dec b                                         ; $5acb: $05
    dec b                                         ; $5acc: $05
    ret c                                         ; $5acd: $d8

    dec b                                         ; $5ace: $05
    push de                                       ; $5acf: $d5
    dec b                                         ; $5ad0: $05
    ldh a, [c]                                    ; $5ad1: $f2
    dec b                                         ; $5ad2: $05
    ret c                                         ; $5ad3: $d8

    dec b                                         ; $5ad4: $05
    push de                                       ; $5ad5: $d5
    dec b                                         ; $5ad6: $05
    dec b                                         ; $5ad7: $05
    push de                                       ; $5ad8: $d5
    dec b                                         ; $5ad9: $05
    dec b                                         ; $5ada: $05
    push de                                       ; $5adb: $d5
    dec b                                         ; $5adc: $05
    pop af                                        ; $5add: $f1
    inc bc                                        ; $5ade: $03
    dec b                                         ; $5adf: $05
    ret c                                         ; $5ae0: $d8

    dec b                                         ; $5ae1: $05
    push de                                       ; $5ae2: $d5
    dec b                                         ; $5ae3: $05
    dec b                                         ; $5ae4: $05
    ret c                                         ; $5ae5: $d8

    dec b                                         ; $5ae6: $05
    push de                                       ; $5ae7: $d5
    dec b                                         ; $5ae8: $05
    ldh a, [c]                                    ; $5ae9: $f2
    dec b                                         ; $5aea: $05
    ret c                                         ; $5aeb: $d8

    dec b                                         ; $5aec: $05
    push de                                       ; $5aed: $d5
    dec b                                         ; $5aee: $05
    dec b                                         ; $5aef: $05
    push de                                       ; $5af0: $d5
    dec b                                         ; $5af1: $05
    dec b                                         ; $5af2: $05
    ret c                                         ; $5af3: $d8

    pop af                                        ; $5af4: $f1
    ld [bc], a                                    ; $5af5: $02
    dec b                                         ; $5af6: $05
    ret c                                         ; $5af7: $d8

    dec b                                         ; $5af8: $05
    push de                                       ; $5af9: $d5
    dec b                                         ; $5afa: $05
    dec b                                         ; $5afb: $05
    ret c                                         ; $5afc: $d8

    dec b                                         ; $5afd: $05
    push de                                       ; $5afe: $d5
    dec b                                         ; $5aff: $05
    ldh a, [c]                                    ; $5b00: $f2
    dec b                                         ; $5b01: $05
    ret c                                         ; $5b02: $d8

    jp c, Jump_000_05da                           ; $5b03: $da $da $05

    push de                                       ; $5b06: $d5
    dec b                                         ; $5b07: $05
    ret c                                         ; $5b08: $d8

    dec b                                         ; $5b09: $05
    dec b                                         ; $5b0a: $05
    ret c                                         ; $5b0b: $d8

    dec b                                         ; $5b0c: $05
    ret c                                         ; $5b0d: $d8

    jp c, Jump_000_03f1                           ; $5b0e: $da $f1 $03

    dec b                                         ; $5b11: $05
    ret c                                         ; $5b12: $d8

    dec b                                         ; $5b13: $05
    push de                                       ; $5b14: $d5
    dec b                                         ; $5b15: $05
    dec b                                         ; $5b16: $05
    ret c                                         ; $5b17: $d8

    dec b                                         ; $5b18: $05
    push de                                       ; $5b19: $d5
    dec b                                         ; $5b1a: $05
    ldh a, [c]                                    ; $5b1b: $f2
    dec b                                         ; $5b1c: $05
    ret c                                         ; $5b1d: $d8

    dec b                                         ; $5b1e: $05
    push de                                       ; $5b1f: $d5
    dec b                                         ; $5b20: $05
    dec b                                         ; $5b21: $05
    push de                                       ; $5b22: $d5
    dec b                                         ; $5b23: $05
    dec b                                         ; $5b24: $05
    ret c                                         ; $5b25: $d8

    pop af                                        ; $5b26: $f1
    inc bc                                        ; $5b27: $03
    dec b                                         ; $5b28: $05
    ret c                                         ; $5b29: $d8

    dec b                                         ; $5b2a: $05
    push de                                       ; $5b2b: $d5
    dec b                                         ; $5b2c: $05
    dec b                                         ; $5b2d: $05
    ret c                                         ; $5b2e: $d8

    dec b                                         ; $5b2f: $05
    push de                                       ; $5b30: $d5
    dec b                                         ; $5b31: $05
    ldh a, [c]                                    ; $5b32: $f2
    dec b                                         ; $5b33: $05
    ret c                                         ; $5b34: $d8

    dec b                                         ; $5b35: $05
    push de                                       ; $5b36: $d5
    dec b                                         ; $5b37: $05
    dec b                                         ; $5b38: $05
    push de                                       ; $5b39: $d5
    dec b                                         ; $5b3a: $05
    dec b                                         ; $5b3b: $05
    push de                                       ; $5b3c: $d5
    dec b                                         ; $5b3d: $05
    pop af                                        ; $5b3e: $f1
    ld [bc], a                                    ; $5b3f: $02
    dec b                                         ; $5b40: $05
    ret c                                         ; $5b41: $d8

    dec b                                         ; $5b42: $05
    push de                                       ; $5b43: $d5
    dec b                                         ; $5b44: $05
    dec b                                         ; $5b45: $05
    ret c                                         ; $5b46: $d8

    dec b                                         ; $5b47: $05
    push de                                       ; $5b48: $d5
    dec b                                         ; $5b49: $05
    ldh a, [c]                                    ; $5b4a: $f2
    dec b                                         ; $5b4b: $05
    ret c                                         ; $5b4c: $d8

    dec b                                         ; $5b4d: $05
    ret c                                         ; $5b4e: $d8

    dec b                                         ; $5b4f: $05
    ret c                                         ; $5b50: $d8

    dec b                                         ; $5b51: $05
    push de                                       ; $5b52: $d5
    dec b                                         ; $5b53: $05
    ret c                                         ; $5b54: $d8

    dec b                                         ; $5b55: $05
    dec b                                         ; $5b56: $05
    ret c                                         ; $5b57: $d8

    dec b                                         ; $5b58: $05
    push de                                       ; $5b59: $d5
    dec b                                         ; $5b5a: $05
    dec b                                         ; $5b5b: $05
    ret c                                         ; $5b5c: $d8

    pop af                                        ; $5b5d: $f1
    inc bc                                        ; $5b5e: $03
    dec b                                         ; $5b5f: $05
    ret c                                         ; $5b60: $d8

    dec b                                         ; $5b61: $05
    push de                                       ; $5b62: $d5
    dec b                                         ; $5b63: $05
    dec b                                         ; $5b64: $05
    ret c                                         ; $5b65: $d8

    dec b                                         ; $5b66: $05
    push de                                       ; $5b67: $d5
    dec b                                         ; $5b68: $05
    ldh a, [c]                                    ; $5b69: $f2
    dec b                                         ; $5b6a: $05
    ret c                                         ; $5b6b: $d8

    dec b                                         ; $5b6c: $05
    ret c                                         ; $5b6d: $d8

    dec b                                         ; $5b6e: $05
    dec b                                         ; $5b6f: $05
    dec b                                         ; $5b70: $05
    dec b                                         ; $5b71: $05
    ret c                                         ; $5b72: $d8

    pop af                                        ; $5b73: $f1
    rlca                                          ; $5b74: $07
    dec b                                         ; $5b75: $05
    ret c                                         ; $5b76: $d8

    dec b                                         ; $5b77: $05
    push de                                       ; $5b78: $d5
    dec b                                         ; $5b79: $05
    dec b                                         ; $5b7a: $05
    ret c                                         ; $5b7b: $d8

    dec b                                         ; $5b7c: $05
    push de                                       ; $5b7d: $d5
    dec b                                         ; $5b7e: $05
    ldh a, [c]                                    ; $5b7f: $f2
    dec b                                         ; $5b80: $05
    ret c                                         ; $5b81: $d8

    dec b                                         ; $5b82: $05
    ret c                                         ; $5b83: $d8

    dec b                                         ; $5b84: $05
    push de                                       ; $5b85: $d5
    dec b                                         ; $5b86: $05
    dec b                                         ; $5b87: $05
    ret c                                         ; $5b88: $d8

    xor $ae                                       ; $5b89: $ee $ae
    ld e, d                                       ; $5b8b: $5a
    ld sp, hl                                     ; $5b8c: $f9
    ld a, b                                       ; $5b8d: $78
    rst $30                                       ; $5b8e: $f7
    add hl, bc                                    ; $5b8f: $09
    ld a, [$fb54]                                 ; $5b90: $fa $54 $fb
    inc de                                        ; $5b93: $13
    ldh a, [rNR10]                                ; $5b94: $f0 $10
    inc b                                         ; $5b96: $04
    nop                                           ; $5b97: $00
    push af                                       ; $5b98: $f5
    jr jr_00f_5bab                                ; $5b99: $18 $10

    ld [$abe2], sp                                ; $5b9b: $08 $e2 $ab
    push de                                       ; $5b9e: $d5
    dec h                                         ; $5b9f: $25
    ld a, [hl+]                                   ; $5ba0: $2a
    xor d                                         ; $5ba1: $aa
    sbc b                                         ; $5ba2: $98
    add l                                         ; $5ba3: $85
    sbc b                                         ; $5ba4: $98
    ld e, d                                       ; $5ba5: $5a
    ld d, l                                       ; $5ba6: $55
    ld a, b                                       ; $5ba7: $78
    sub l                                         ; $5ba8: $95
    ld a, e                                       ; $5ba9: $7b
    push de                                       ; $5baa: $d5

jr_00f_5bab:
    dec h                                         ; $5bab: $25
    ld a, [hl+]                                   ; $5bac: $2a
    ld a, b                                       ; $5bad: $78
    ld d, l                                       ; $5bae: $55
    ld c, d                                       ; $5baf: $4a
    ld e, d                                       ; $5bb0: $5a
    ld a, d                                       ; $5bb1: $7a
    jp hl                                         ; $5bb2: $e9


    ld a, [bc]                                    ; $5bb3: $0a
    ld [$d5ab], a                                 ; $5bb4: $ea $ab $d5
    dec h                                         ; $5bb7: $25
    dec hl                                        ; $5bb8: $2b
    push de                                       ; $5bb9: $d5
    and l                                         ; $5bba: $a5
    sbc d                                         ; $5bbb: $9a
    jp hl                                         ; $5bbc: $e9


    ld a, [hl+]                                   ; $5bbd: $2a
    ld c, d                                       ; $5bbe: $4a
    ld e, d                                       ; $5bbf: $5a
    ld a, b                                       ; $5bc0: $78
    dec h                                         ; $5bc1: $25
    dec l                                         ; $5bc2: $2d
    ld c, b                                       ; $5bc3: $48
    ld d, l                                       ; $5bc4: $55
    ld a, b                                       ; $5bc5: $78
    dec d                                         ; $5bc6: $15
    dec e                                         ; $5bc7: $1d
    jr z, jr_00f_5c0f                             ; $5bc8: $28 $45

    ld e, l                                       ; $5bca: $5d
    dec a                                         ; $5bcb: $3d
    dec l                                         ; $5bcc: $2d
    ld [$4828], sp                                ; $5bcd: $08 $28 $48
    ld e, l                                       ; $5bd0: $5d
    dec a                                         ; $5bd1: $3d
    dec l                                         ; $5bd2: $2d
    ld [$4828], sp                                ; $5bd3: $08 $28 $48
    ld e, d                                       ; $5bd6: $5a
    ld [$0555], a                                 ; $5bd7: $ea $55 $05
    ld d, l                                       ; $5bda: $55
    sub l                                         ; $5bdb: $95
    ld d, l                                       ; $5bdc: $55
    sub l                                         ; $5bdd: $95
    jp hl                                         ; $5bde: $e9


    dec b                                         ; $5bdf: $05
    ld [$e995], a                                 ; $5be0: $ea $95 $e9
    dec b                                         ; $5be3: $05
    ld e, d                                       ; $5be4: $5a
    rst RST_18                                    ; $5be5: $df
    rst $28                                       ; $5be6: $ef
    ld sp, hl                                     ; $5be7: $f9
    ld a, b                                       ; $5be8: $78
    rst $30                                       ; $5be9: $f7
    add hl, bc                                    ; $5bea: $09
    ld a, [$fb54]                                 ; $5beb: $fa $54 $fb
    inc hl                                        ; $5bee: $23
    ldh a, [rNR10]                                ; $5bef: $f0 $10
    inc b                                         ; $5bf1: $04
    nop                                           ; $5bf2: $00
    push af                                       ; $5bf3: $f5
    jr @+$12                                      ; $5bf4: $18 $10

    ld [$2be2], sp                                ; $5bf6: $08 $e2 $2b
    push de                                       ; $5bf9: $d5
    ld [$aaa5], a                                 ; $5bfa: $ea $a5 $aa
    jp hl                                         ; $5bfd: $e9


    ld a, [hl+]                                   ; $5bfe: $2a
    ld e, b                                       ; $5bff: $58
    ld d, l                                       ; $5c00: $55
    ld e, b                                       ; $5c01: $58
    ld a, [bc]                                    ; $5c02: $0a
    dec b                                         ; $5c03: $05
    ld [$2b15], sp                                ; $5c04: $08 $15 $2b
    push de                                       ; $5c07: $d5
    ld [$aaa5], a                                 ; $5c08: $ea $a5 $aa
    jp hl                                         ; $5c0b: $e9


    jr z, jr_00f_5c33                             ; $5c0c: $28 $25

    ld a, [bc]                                    ; $5c0e: $0a

jr_00f_5c0f:
    ld a, [bc]                                    ; $5c0f: $0a
    ld a, [bc]                                    ; $5c10: $0a
    ld a, [de]                                    ; $5c11: $1a
    dec hl                                        ; $5c12: $2b
    push de                                       ; $5c13: $d5
    ld [$aba5], a                                 ; $5c14: $ea $a5 $ab
    push de                                       ; $5c17: $d5
    jp hl                                         ; $5c18: $e9


    dec h                                         ; $5c19: $25
    ld a, [bc]                                    ; $5c1a: $0a
    ld e, d                                       ; $5c1b: $5a
    ld a, d                                       ; $5c1c: $7a
    sbc d                                         ; $5c1d: $9a
    xor b                                         ; $5c1e: $a8
    ld d, l                                       ; $5c1f: $55
    xor l                                         ; $5c20: $ad
    xor b                                         ; $5c21: $a8
    and l                                         ; $5c22: $a5
    jp hl                                         ; $5c23: $e9


    ld [$75ea], sp                                ; $5c24: $08 $ea $75
    xor l                                         ; $5c27: $ad
    ld a, b                                       ; $5c28: $78
    add l                                         ; $5c29: $85
    sbc l                                         ; $5c2a: $9d
    ld a, l                                       ; $5c2b: $7d
    ld e, l                                       ; $5c2c: $5d
    ld c, b                                       ; $5c2d: $48
    ld a, b                                       ; $5c2e: $78
    adc b                                         ; $5c2f: $88
    sbc l                                         ; $5c30: $9d
    ld a, l                                       ; $5c31: $7d
    ld e, l                                       ; $5c32: $5d

jr_00f_5c33:
    ld c, b                                       ; $5c33: $48
    ld a, b                                       ; $5c34: $78
    adc b                                         ; $5c35: $88
    sbc d                                         ; $5c36: $9a
    dec b                                         ; $5c37: $05
    ld [$e995], a                                 ; $5c38: $ea $95 $e9
    dec b                                         ; $5c3b: $05
    ld d, l                                       ; $5c3c: $55
    dec b                                         ; $5c3d: $05
    ld d, l                                       ; $5c3e: $55
    sub l                                         ; $5c3f: $95
    ld d, l                                       ; $5c40: $55
    sub l                                         ; $5c41: $95
    jp hl                                         ; $5c42: $e9


    ld a, [bc]                                    ; $5c43: $0a
    rst RST_18                                    ; $5c44: $df
    rst $28                                       ; $5c45: $ef
    ld sp, hl                                     ; $5c46: $f9
    ld a, b                                       ; $5c47: $78
    rst $30                                       ; $5c48: $f7
    ld c, $fa                                     ; $5c49: $0e $fa
    ld e, b                                       ; $5c4b: $58
    ei                                            ; $5c4c: $fb
    inc sp                                        ; $5c4d: $33
    ldh a, [rTMA]                                 ; $5c4e: $f0 $06
    nop                                           ; $5c50: $00
    nop                                           ; $5c51: $00
    pop hl                                        ; $5c52: $e1
    xor d                                         ; $5c53: $aa
    xor d                                         ; $5c54: $aa
    xor b                                         ; $5c55: $a8
    ld d, l                                       ; $5c56: $55
    xor b                                         ; $5c57: $a8
    jp hl                                         ; $5c58: $e9


    dec h                                         ; $5c59: $25
    ld e, d                                       ; $5c5a: $5a
    ld e, d                                       ; $5c5b: $5a
    ld e, d                                       ; $5c5c: $5a
    ld e, d                                       ; $5c5d: $5a
    ld a, d                                       ; $5c5e: $7a
    ld a, d                                       ; $5c5f: $7a
    ld a, b                                       ; $5c60: $78
    ld [hl], l                                    ; $5c61: $75
    jr z, jr_00f_5cd9                             ; $5c62: $28 $75

    ld a, [bc]                                    ; $5c64: $0a
    ld a, [bc]                                    ; $5c65: $0a
    ld a, [bc]                                    ; $5c66: $0a
    ld a, [bc]                                    ; $5c67: $0a
    ld [$aaaa], a                                 ; $5c68: $ea $aa $aa
    xor b                                         ; $5c6b: $a8
    ld d, l                                       ; $5c6c: $55
    xor b                                         ; $5c6d: $a8
    jp hl                                         ; $5c6e: $e9


    dec h                                         ; $5c6f: $25
    ld e, d                                       ; $5c70: $5a
    ld e, d                                       ; $5c71: $5a
    ld e, d                                       ; $5c72: $5a
    ld e, d                                       ; $5c73: $5a
    ld a, d                                       ; $5c74: $7a
    ld a, d                                       ; $5c75: $7a
    ld a, b                                       ; $5c76: $78
    ld [hl], l                                    ; $5c77: $75
    jr z, jr_00f_5cef                             ; $5c78: $28 $75

    ld a, [bc]                                    ; $5c7a: $0a
    ld a, [bc]                                    ; $5c7b: $0a
    push de                                       ; $5c7c: $d5
    dec b                                         ; $5c7d: $05
    dec b                                         ; $5c7e: $05
    dec b                                         ; $5c7f: $05
    ld [hl], l                                    ; $5c80: $75
    dec b                                         ; $5c81: $05
    ld e, d                                       ; $5c82: $5a
    ld e, d                                       ; $5c83: $5a
    ld e, d                                       ; $5c84: $5a
    ld e, d                                       ; $5c85: $5a
    ld e, d                                       ; $5c86: $5a
    ld e, d                                       ; $5c87: $5a
    ld e, d                                       ; $5c88: $5a
    ld d, l                                       ; $5c89: $55
    ld d, l                                       ; $5c8a: $55
    dec b                                         ; $5c8b: $05
    ld e, d                                       ; $5c8c: $5a
    ld e, d                                       ; $5c8d: $5a
    ld e, d                                       ; $5c8e: $5a
    ld e, d                                       ; $5c8f: $5a
    ld e, d                                       ; $5c90: $5a
    ld e, d                                       ; $5c91: $5a
    ld e, d                                       ; $5c92: $5a
    ld d, l                                       ; $5c93: $55
    ld d, l                                       ; $5c94: $55
    dec b                                         ; $5c95: $05
    ld e, d                                       ; $5c96: $5a
    ld d, l                                       ; $5c97: $55
    ld d, l                                       ; $5c98: $55
    ld d, l                                       ; $5c99: $55
    ld d, l                                       ; $5c9a: $55
    ld d, l                                       ; $5c9b: $55
    ld d, l                                       ; $5c9c: $55
    ld d, l                                       ; $5c9d: $55
    ld d, l                                       ; $5c9e: $55
    ld d, l                                       ; $5c9f: $55
    ld [$dd5d], a                                 ; $5ca0: $ea $5d $dd
    rst $28                                       ; $5ca3: $ef
    ld sp, hl                                     ; $5ca4: $f9

jr_00f_5ca5:
    ld a, b                                       ; $5ca5: $78
    rst $30                                       ; $5ca6: $f7
    add hl, bc                                    ; $5ca7: $09
    db $fc                                        ; $5ca8: $fc
    jr nc, jr_00f_5ca5                            ; $5ca9: $30 $fa

    ld b, h                                       ; $5cab: $44
    ei                                            ; $5cac: $fb
    ld hl, $d805                                  ; $5cad: $21 $05 $d8
    dec b                                         ; $5cb0: $05
    ret c                                         ; $5cb1: $d8

    dec b                                         ; $5cb2: $05
    ret c                                         ; $5cb3: $d8

    dec b                                         ; $5cb4: $05
    ret c                                         ; $5cb5: $d8

    dec b                                         ; $5cb6: $05
    ret c                                         ; $5cb7: $d8

    dec b                                         ; $5cb8: $05
    ret c                                         ; $5cb9: $d8

    dec b                                         ; $5cba: $05
    ret c                                         ; $5cbb: $d8

    dec b                                         ; $5cbc: $05
    push de                                       ; $5cbd: $d5
    dec b                                         ; $5cbe: $05
    dec b                                         ; $5cbf: $05
    ret c                                         ; $5cc0: $d8

    dec b                                         ; $5cc1: $05
    ret c                                         ; $5cc2: $d8

    dec b                                         ; $5cc3: $05
    ret c                                         ; $5cc4: $d8

    dec b                                         ; $5cc5: $05
    ret c                                         ; $5cc6: $d8

    dec b                                         ; $5cc7: $05
    ret c                                         ; $5cc8: $d8

    dec b                                         ; $5cc9: $05
    ret c                                         ; $5cca: $d8

    dec b                                         ; $5ccb: $05

Call_00f_5ccc:
    ret c                                         ; $5ccc: $d8

    dec b                                         ; $5ccd: $05
    dec b                                         ; $5cce: $05
    dec b                                         ; $5ccf: $05
    dec b                                         ; $5cd0: $05
    ret c                                         ; $5cd1: $d8

    dec b                                         ; $5cd2: $05
    ret c                                         ; $5cd3: $d8

    dec b                                         ; $5cd4: $05
    ret c                                         ; $5cd5: $d8

    dec b                                         ; $5cd6: $05
    ret c                                         ; $5cd7: $d8

    dec b                                         ; $5cd8: $05

jr_00f_5cd9:
    ret c                                         ; $5cd9: $d8

    dec b                                         ; $5cda: $05
    ret c                                         ; $5cdb: $d8

    dec b                                         ; $5cdc: $05
    ret c                                         ; $5cdd: $d8

    dec b                                         ; $5cde: $05
    push de                                       ; $5cdf: $d5
    dec b                                         ; $5ce0: $05
    dec b                                         ; $5ce1: $05
    ret c                                         ; $5ce2: $d8

    dec b                                         ; $5ce3: $05
    ret c                                         ; $5ce4: $d8

    dec b                                         ; $5ce5: $05
    ret c                                         ; $5ce6: $d8

    dec b                                         ; $5ce7: $05
    ret c                                         ; $5ce8: $d8

    push de                                       ; $5ce9: $d5
    dec b                                         ; $5cea: $05
    dec b                                         ; $5ceb: $05
    push de                                       ; $5cec: $d5
    dec b                                         ; $5ced: $05
    dec b                                         ; $5cee: $05

jr_00f_5cef:
    push de                                       ; $5cef: $d5
    dec b                                         ; $5cf0: $05
    dec b                                         ; $5cf1: $05
    dec b                                         ; $5cf2: $05
    dec b                                         ; $5cf3: $05
    dec b                                         ; $5cf4: $05
    pop af                                        ; $5cf5: $f1
    ld [bc], a                                    ; $5cf6: $02
    dec b                                         ; $5cf7: $05
    ret c                                         ; $5cf8: $d8

    dec b                                         ; $5cf9: $05
    ret c                                         ; $5cfa: $d8

    dec b                                         ; $5cfb: $05
    ret c                                         ; $5cfc: $d8

    dec b                                         ; $5cfd: $05
    ret c                                         ; $5cfe: $d8

    dec b                                         ; $5cff: $05
    ret c                                         ; $5d00: $d8

    dec b                                         ; $5d01: $05
    ret c                                         ; $5d02: $d8

    dec b                                         ; $5d03: $05
    ret c                                         ; $5d04: $d8

    dec b                                         ; $5d05: $05
    dec b                                         ; $5d06: $05
    dec b                                         ; $5d07: $05
    ldh a, [c]                                    ; $5d08: $f2
    dec b                                         ; $5d09: $05
    ret c                                         ; $5d0a: $d8

    dec b                                         ; $5d0b: $05
    dec b                                         ; $5d0c: $05
    dec b                                         ; $5d0d: $05
    dec b                                         ; $5d0e: $05
    dec b                                         ; $5d0f: $05
    dec b                                         ; $5d10: $05
    dec b                                         ; $5d11: $05
    dec b                                         ; $5d12: $05
    dec b                                         ; $5d13: $05
    dec b                                         ; $5d14: $05
    rst $28                                       ; $5d15: $ef
    ld sp, hl                                     ; $5d16: $f9
    sub b                                         ; $5d17: $90
    rst $30                                       ; $5d18: $f7
    ld [$54fa], sp                                ; $5d19: $08 $fa $54
    ei                                            ; $5d1c: $fb
    inc sp                                        ; $5d1d: $33
    ldh a, [rSC]                                  ; $5d1e: $f0 $02
    inc b                                         ; $5d20: $04
    nop                                           ; $5d21: $00
    push af                                       ; $5d22: $f5
    jr jr_00f_5d35                                ; $5d23: $18 $10

    ld [$0ae3], sp                                ; $5d25: $08 $e3 $0a
    ld a, [bc]                                    ; $5d28: $0a
    daa                                           ; $5d29: $27
    ld c, d                                       ; $5d2a: $4a
    ld [$fa77], a                                 ; $5d2b: $ea $77 $fa
    add h                                         ; $5d2e: $84
    sub a                                         ; $5d2f: $97
    ld a, [$8754]                                 ; $5d30: $fa $54 $87
    sub a                                         ; $5d33: $97
    jp hl                                         ; $5d34: $e9


jr_00f_5d35:
    ld c, d                                       ; $5d35: $4a
    ld b, a                                       ; $5d36: $47
    ld a, [bc]                                    ; $5d37: $0a
    ld [$84fa], a                                 ; $5d38: $ea $fa $84
    ld d, a                                       ; $5d3b: $57
    ld a, [$9754]                                 ; $5d3c: $fa $54 $97
    jp hl                                         ; $5d3f: $e9


    rlca                                          ; $5d40: $07
    ld b, a                                       ; $5d41: $47
    ld [$84fa], a                                 ; $5d42: $ea $fa $84
    sub a                                         ; $5d45: $97
    ld a, [$e954]                                 ; $5d46: $fa $54 $e9
    rlca                                          ; $5d49: $07
    ld b, a                                       ; $5d4a: $47
    ld a, l                                       ; $5d4b: $7d
    call $f9ef                                    ; $5d4c: $cd $ef $f9
    sub b                                         ; $5d4f: $90
    rst $30                                       ; $5d50: $f7
    add hl, bc                                    ; $5d51: $09
    ld a, [$fb54]                                 ; $5d52: $fa $54 $fb
    ld [de], a                                    ; $5d55: $12
    ldh a, [rNR43]                                ; $5d56: $f0 $22
    inc b                                         ; $5d58: $04
    nop                                           ; $5d59: $00
    push af                                       ; $5d5a: $f5
    jr @+$12                                      ; $5d5b: $18 $10

    ld [$04e3], sp                                ; $5d5d: $08 $e3 $04
    ld [$e904], a                                 ; $5d60: $ea $04 $e9
    ld b, a                                       ; $5d63: $47
    ld [hl], a                                    ; $5d64: $77
    inc b                                         ; $5d65: $04
    ld [$e904], a                                 ; $5d66: $ea $04 $e9
    ld b, a                                       ; $5d69: $47
    ld [hl], a                                    ; $5d6a: $77
    inc b                                         ; $5d6b: $04
    ld [$e904], a                                 ; $5d6c: $ea $04 $e9
    ld b, a                                       ; $5d6f: $47
    inc b                                         ; $5d70: $04
    ld [$e904], a                                 ; $5d71: $ea $04 $e9
    ld b, a                                       ; $5d74: $47
    sub a                                         ; $5d75: $97
    inc b                                         ; $5d76: $04
    ld [$e904], a                                 ; $5d77: $ea $04 $e9
    ld b, a                                       ; $5d7a: $47
    sub a                                         ; $5d7b: $97
    inc b                                         ; $5d7c: $04
    ld [$e904], a                                 ; $5d7d: $ea $04 $e9
    ld b, a                                       ; $5d80: $47
    sub h                                         ; $5d81: $94
    inc b                                         ; $5d82: $04
    daa                                           ; $5d83: $27
    ld d, a                                       ; $5d84: $57
    sub h                                         ; $5d85: $94
    inc b                                         ; $5d86: $04
    daa                                           ; $5d87: $27
    ld d, a                                       ; $5d88: $57
    sub h                                         ; $5d89: $94
    inc b                                         ; $5d8a: $04
    ld [hl], e                                    ; $5d8b: $73
    ld b, e                                       ; $5d8c: $43
    ld [hl], e                                    ; $5d8d: $73
    ld [hl], e                                    ; $5d8e: $73
    ld b, e                                       ; $5d8f: $43
    ld [hl], e                                    ; $5d90: $73
    ld [hl], e                                    ; $5d91: $73
    ld b, e                                       ; $5d92: $43
    ld [hl], e                                    ; $5d93: $73
    ld [hl], e                                    ; $5d94: $73
    ld b, e                                       ; $5d95: $43
    ld [hl], e                                    ; $5d96: $73
    ld [hl], e                                    ; $5d97: $73
    ld b, e                                       ; $5d98: $43
    ld [hl], e                                    ; $5d99: $73
    ld [hl], e                                    ; $5d9a: $73
    ld b, e                                       ; $5d9b: $43
    ld [hl], e                                    ; $5d9c: $73
    ld [hl], e                                    ; $5d9d: $73
    ld b, e                                       ; $5d9e: $43
    ld [hl], e                                    ; $5d9f: $73
    ld [hl], e                                    ; $5da0: $73
    ld b, e                                       ; $5da1: $43
    ld [hl], e                                    ; $5da2: $73
    ld [hl], e                                    ; $5da3: $73
    ld b, e                                       ; $5da4: $43
    ld [hl], e                                    ; $5da5: $73
    ld [hl], e                                    ; $5da6: $73
    rst $28                                       ; $5da7: $ef
    ld sp, hl                                     ; $5da8: $f9
    sub b                                         ; $5da9: $90
    rst $30                                       ; $5daa: $f7
    ld c, $fa                                     ; $5dab: $0e $fa
    ld e, b                                       ; $5dad: $58
    ei                                            ; $5dae: $fb
    inc sp                                        ; $5daf: $33
    ldh a, [rTMA]                                 ; $5db0: $f0 $06
    nop                                           ; $5db2: $00
    nop                                           ; $5db3: $00
    ldh [c], a                                    ; $5db4: $e2
    ld a, [bc]                                    ; $5db5: $0a
    ld [$e97a], a                                 ; $5db6: $ea $7a $e9
    inc b                                         ; $5db9: $04
    ld [$0774], a                                 ; $5dba: $ea $74 $07
    jp hl                                         ; $5dbd: $e9


    rlca                                          ; $5dbe: $07
    ld [$9ab7], a                                 ; $5dbf: $ea $b7 $9a
    ld c, d                                       ; $5dc2: $4a
    sub h                                         ; $5dc3: $94
    ld b, h                                       ; $5dc4: $44
    ld [$e997], a                                 ; $5dc5: $ea $97 $e9
    sub a                                         ; $5dc8: $97
    ld b, a                                       ; $5dc9: $47
    ld a, [hl+]                                   ; $5dca: $2a
    rst $10                                       ; $5dcb: $d7
    daa                                           ; $5dcc: $27
    ld a, d                                       ; $5dcd: $7a
    rst $10                                       ; $5dce: $d7
    rlca                                          ; $5dcf: $07
    call $efcd                                    ; $5dd0: $cd $cd $ef
    ld sp, hl                                     ; $5dd3: $f9
    sub b                                         ; $5dd4: $90
    rst $30                                       ; $5dd5: $f7
    ld c, $fc                                     ; $5dd6: $0e $fc
    db $10                                        ; $5dd8: $10
    ld a, [$fb44]                                 ; $5dd9: $fa $44 $fb
    ld hl, $08f1                                  ; $5ddc: $21 $f1 $08
    inc b                                         ; $5ddf: $04
    call nc, $0404                                ; $5de0: $d4 $04 $04
    ldh a, [c]                                    ; $5de3: $f2
    rst $10                                       ; $5de4: $d7
    inc b                                         ; $5de5: $04
    call nc, $d404                                ; $5de6: $d4 $04 $d4
    rst $10                                       ; $5de9: $d7
    inc b                                         ; $5dea: $04
    call nc, $d404                                ; $5deb: $d4 $04 $d4
    rst $10                                       ; $5dee: $d7
    inc b                                         ; $5def: $04
    rst $28                                       ; $5df0: $ef
    ld sp, hl                                     ; $5df1: $f9
    sub b                                         ; $5df2: $90
    rst $30                                       ; $5df3: $f7
    add hl, bc                                    ; $5df4: $09
    ld a, [$fb44]                                 ; $5df5: $fa $44 $fb
    inc hl                                        ; $5df8: $23
    ldh a, [rSB]                                  ; $5df9: $f0 $01
    inc b                                         ; $5dfb: $04
    nop                                           ; $5dfc: $00
    push af                                       ; $5dfd: $f5
    jr jr_00f_5e10                                ; $5dfe: $18 $10

    ld [$0ae3], sp                                ; $5e00: $08 $e3 $0a
    ld a, [bc]                                    ; $5e03: $0a
    jr z, jr_00f_5e4b                             ; $5e04: $28 $45

    ld a, [hl+]                                   ; $5e06: $2a
    ld a, [bc]                                    ; $5e07: $0a
    ld a, [bc]                                    ; $5e08: $0a
    jr z, jr_00f_5e50                             ; $5e09: $28 $45

    ld a, [hl+]                                   ; $5e0b: $2a
    ld [$4a7b], sp                                ; $5e0c: $08 $7b $4a
    ld a, [bc]                                    ; $5e0f: $0a

jr_00f_5e10:
    ld [$e9a8], a                                 ; $5e10: $ea $a8 $e9
    dec b                                         ; $5e13: $05
    jr z, jr_00f_5e1e                             ; $5e14: $28 $08

    rst $28                                       ; $5e16: $ef
    ld sp, hl                                     ; $5e17: $f9
    sub b                                         ; $5e18: $90
    rst $30                                       ; $5e19: $f7
    add hl, bc                                    ; $5e1a: $09
    ld a, [$fb44]                                 ; $5e1b: $fa $44 $fb

jr_00f_5e1e:
    inc de                                        ; $5e1e: $13
    ldh a, [rSB]                                  ; $5e1f: $f0 $01
    inc b                                         ; $5e21: $04
    nop                                           ; $5e22: $00
    push af                                       ; $5e23: $f5
    jr jr_00f_5e36                                ; $5e24: $18 $10

    ld [$7ae2], sp                                ; $5e26: $08 $e2 $7a
    ld a, d                                       ; $5e29: $7a
    ld a, b                                       ; $5e2a: $78
    ld [hl], l                                    ; $5e2b: $75
    ld a, d                                       ; $5e2c: $7a
    ld a, d                                       ; $5e2d: $7a
    ld a, d                                       ; $5e2e: $7a
    ld a, b                                       ; $5e2f: $78
    ld [hl], l                                    ; $5e30: $75
    ld a, d                                       ; $5e31: $7a
    ld a, b                                       ; $5e32: $78
    push de                                       ; $5e33: $d5
    rst RST_18                                    ; $5e34: $df
    ld e, e                                       ; $5e35: $5b

jr_00f_5e36:
    push bc                                       ; $5e36: $c5
    ld a, b                                       ; $5e37: $78
    rst $28                                       ; $5e38: $ef
    ld sp, hl                                     ; $5e39: $f9
    sub b                                         ; $5e3a: $90
    rst $30                                       ; $5e3b: $f7
    ld c, $fa                                     ; $5e3c: $0e $fa
    ld e, b                                       ; $5e3e: $58
    ei                                            ; $5e3f: $fb
    inc sp                                        ; $5e40: $33
    ldh a, [rTMA]                                 ; $5e41: $f0 $06
    nop                                           ; $5e43: $00
    nop                                           ; $5e44: $00
    ldh [c], a                                    ; $5e45: $e2
    ld [$75ea], sp                                ; $5e46: $08 $ea $75
    jp hl                                         ; $5e49: $e9


    ld a, [bc]                                    ; $5e4a: $0a

jr_00f_5e4b:
    ld [$75a8], a                                 ; $5e4b: $ea $a8 $75
    xor d                                         ; $5e4e: $aa
    sbc b                                         ; $5e4f: $98

jr_00f_5e50:
    ld d, l                                       ; $5e50: $55
    sbc d                                         ; $5e51: $9a
    adc b                                         ; $5e52: $88
    ld d, l                                       ; $5e53: $55
    adc d                                         ; $5e54: $8a
    ld a, b                                       ; $5e55: $78
    push de                                       ; $5e56: $d5
    rst RST_18                                    ; $5e57: $df
    dec hl                                        ; $5e58: $2b
    push bc                                       ; $5e59: $c5
    ld c, b                                       ; $5e5a: $48
    rst $28                                       ; $5e5b: $ef
    ld sp, hl                                     ; $5e5c: $f9
    ld a, b                                       ; $5e5d: $78
    rst $30                                       ; $5e5e: $f7
    add hl, bc                                    ; $5e5f: $09
    ld a, [$fb44]                                 ; $5e60: $fa $44 $fb
    inc hl                                        ; $5e63: $23
    ldh a, [rNR11]                                ; $5e64: $f0 $11
    inc b                                         ; $5e66: $04
    nop                                           ; $5e67: $00
    push af                                       ; $5e68: $f5
    jr jr_00f_5e7b                                ; $5e69: $18 $10

    ld [$f1e3], sp                                ; $5e6b: $08 $e3 $f1
    ld [bc], a                                    ; $5e6e: $02
    ld [hl], a                                    ; $5e6f: $77
    ld [$e977], a                                 ; $5e70: $ea $77 $e9
    daa                                           ; $5e73: $27
    ld [$e977], a                                 ; $5e74: $ea $77 $e9
    rlca                                          ; $5e77: $07
    ld [$7777], a                                 ; $5e78: $ea $77 $77

jr_00f_5e7b:
    ld [$e977], a                                 ; $5e7b: $ea $77 $e9
    daa                                           ; $5e7e: $27
    ld [$e977], a                                 ; $5e7f: $ea $77 $e9
    rlca                                          ; $5e82: $07
    ld [$e977], a                                 ; $5e83: $ea $77 $e9
    jp hl                                         ; $5e86: $e9


    ldh a, [c]                                    ; $5e87: $f2
    pop af                                        ; $5e88: $f1
    ld [bc], a                                    ; $5e89: $02
    ld d, a                                       ; $5e8a: $57
    ld [$e957], a                                 ; $5e8b: $ea $57 $e9
    rlca                                          ; $5e8e: $07
    ld [$a757], a                                 ; $5e8f: $ea $57 $a7
    ld d, a                                       ; $5e92: $57
    ld d, a                                       ; $5e93: $57
    ld [$e957], a                                 ; $5e94: $ea $57 $e9
    rlca                                          ; $5e97: $07
    ld [$a757], a                                 ; $5e98: $ea $57 $a7
    ld d, a                                       ; $5e9b: $57
    jp hl                                         ; $5e9c: $e9


    jp hl                                         ; $5e9d: $e9


    ldh a, [c]                                    ; $5e9e: $f2
    scf                                           ; $5e9f: $37
    ld [$a737], a                                 ; $5ea0: $ea $37 $a7
    scf                                           ; $5ea3: $37
    add a                                         ; $5ea4: $87
    scf                                           ; $5ea5: $37
    scf                                           ; $5ea6: $37
    ld [$a737], a                                 ; $5ea7: $ea $37 $a7
    scf                                           ; $5eaa: $37
    add a                                         ; $5eab: $87
    scf                                           ; $5eac: $37
    jp hl                                         ; $5ead: $e9


    jp hl                                         ; $5eae: $e9


    ld d, a                                       ; $5eaf: $57
    ld [$e957], a                                 ; $5eb0: $ea $57 $e9
    rlca                                          ; $5eb3: $07
    ld [$a757], a                                 ; $5eb4: $ea $57 $a7
    ld d, a                                       ; $5eb7: $57
    ld d, a                                       ; $5eb8: $57
    ld [$e957], a                                 ; $5eb9: $ea $57 $e9
    rlca                                          ; $5ebc: $07
    ld [$a757], a                                 ; $5ebd: $ea $57 $a7
    ld d, a                                       ; $5ec0: $57
    jp hl                                         ; $5ec1: $e9


    jp hl                                         ; $5ec2: $e9


    xor $6d                                       ; $5ec3: $ee $6d
    ld e, [hl]                                    ; $5ec5: $5e
    ld sp, hl                                     ; $5ec6: $f9
    ld a, b                                       ; $5ec7: $78

jr_00f_5ec8:
    rst $30                                       ; $5ec8: $f7
    inc b                                         ; $5ec9: $04
    ld a, [$fb44]                                 ; $5eca: $fa $44 $fb
    inc de                                        ; $5ecd: $13
    ldh a, [rNR11]                                ; $5ece: $f0 $11
    inc b                                         ; $5ed0: $04
    nop                                           ; $5ed1: $00
    push af                                       ; $5ed2: $f5
    jr jr_00f_5ee5                                ; $5ed3: $18 $10

    ld [$f4e3], sp                                ; $5ed5: $08 $e3 $f4
    inc d                                         ; $5ed8: $14
    ret c                                         ; $5ed9: $d8

    xor $6d                                       ; $5eda: $ee $6d
    ld e, [hl]                                    ; $5edc: $5e
    ld sp, hl                                     ; $5edd: $f9
    ld a, b                                       ; $5ede: $78
    rst $30                                       ; $5edf: $f7
    ld [$44fa], sp                                ; $5ee0: $08 $fa $44
    ei                                            ; $5ee3: $fb
    inc hl                                        ; $5ee4: $23

jr_00f_5ee5:
    ldh a, [rSC]                                  ; $5ee5: $f0 $02
    nop                                           ; $5ee7: $00
    nop                                           ; $5ee8: $00
    db $e4                                        ; $5ee9: $e4
    db $f4                                        ; $5eea: $f4
    jr z, jr_00f_5ec8                             ; $5eeb: $28 $db

    xor $6d                                       ; $5eed: $ee $6d
    ld e, [hl]                                    ; $5eef: $5e
    ld sp, hl                                     ; $5ef0: $f9
    sub b                                         ; $5ef1: $90
    rst $30                                       ; $5ef2: $f7
    add hl, bc                                    ; $5ef3: $09
    ei                                            ; $5ef4: $fb
    inc sp                                        ; $5ef5: $33
    ldh a, [rSC]                                  ; $5ef6: $f0 $02
    inc b                                         ; $5ef8: $04
    nop                                           ; $5ef9: $00
    push af                                       ; $5efa: $f5
    db $10                                        ; $5efb: $10
    db $10                                        ; $5efc: $10
    ld [$54fa], sp                                ; $5efd: $08 $fa $54
    ldh [c], a                                    ; $5f00: $e2
    ld [hl], a                                    ; $5f01: $77
    ld h, a                                       ; $5f02: $67
    ld h, a                                       ; $5f03: $67
    ld [hl], a                                    ; $5f04: $77
    ld [hl], a                                    ; $5f05: $77
    ld h, a                                       ; $5f06: $67
    ld h, a                                       ; $5f07: $67
    ld [hl], a                                    ; $5f08: $77
    add a                                         ; $5f09: $87
    ld [hl], a                                    ; $5f0a: $77
    ld [hl], a                                    ; $5f0b: $77
    add a                                         ; $5f0c: $87
    add a                                         ; $5f0d: $87
    ld [hl], a                                    ; $5f0e: $77
    ld [hl], a                                    ; $5f0f: $77
    add a                                         ; $5f10: $87
    sub a                                         ; $5f11: $97
    add a                                         ; $5f12: $87
    add a                                         ; $5f13: $87
    sub a                                         ; $5f14: $97
    sub a                                         ; $5f15: $97
    add a                                         ; $5f16: $87
    add a                                         ; $5f17: $87
    sub a                                         ; $5f18: $97
    jp hl                                         ; $5f19: $e9


    dec c                                         ; $5f1a: $0d
    ld [$daba], a                                 ; $5f1b: $ea $ba $da
    jp hl                                         ; $5f1e: $e9


    cp $90                                        ; $5f1f: $fe $90
    ld e, a                                       ; $5f21: $5f
    ldh a, [$ff32]                                ; $5f22: $f0 $32
    inc b                                         ; $5f24: $04
    nop                                           ; $5f25: $00
    ld [$e9ac], a                                 ; $5f26: $ea $ac $e9
    ld a, [$0784]                                 ; $5f29: $fa $84 $07
    ld a, [$2a54]                                 ; $5f2c: $fa $54 $2a
    ld e, d                                       ; $5f2f: $5a
    ld a, [$4784]                                 ; $5f30: $fa $84 $47
    scf                                           ; $5f33: $37
    ld b, a                                       ; $5f34: $47
    ld a, [bc]                                    ; $5f35: $0a
    ld a, [$2754]                                 ; $5f36: $fa $54 $27
    ld b, a                                       ; $5f39: $47
    rlca                                          ; $5f3a: $07
    ld [$e9ac], a                                 ; $5f3b: $ea $ac $e9
    ld a, [$0784]                                 ; $5f3e: $fa $84 $07
    ld a, [$2a54]                                 ; $5f41: $fa $54 $2a
    ld e, d                                       ; $5f44: $5a
    ld c, l                                       ; $5f45: $4d
    call $bcea                                    ; $5f46: $cd $ea $bc
    jp hl                                         ; $5f49: $e9


    ld a, [$1784]                                 ; $5f4a: $fa $84 $17
    ld a, [$3a54]                                 ; $5f4d: $fa $54 $3a
    ld l, d                                       ; $5f50: $6a
    ld a, [$4784]                                 ; $5f51: $fa $84 $47
    scf                                           ; $5f54: $37
    ld b, a                                       ; $5f55: $47
    ld a, d                                       ; $5f56: $7a
    ld a, [$7754]                                 ; $5f57: $fa $54 $77
    ld h, a                                       ; $5f5a: $67
    ld [hl], a                                    ; $5f5b: $77
    sbc c                                         ; $5f5c: $99
    add h                                         ; $5f5d: $84
    ld [hl], a                                    ; $5f5e: $77
    ld h, a                                       ; $5f5f: $67
    ld d, a                                       ; $5f60: $57
    ld b, a                                       ; $5f61: $47
    scf                                           ; $5f62: $37
    daa                                           ; $5f63: $27
    rla                                           ; $5f64: $17
    rlca                                          ; $5f65: $07
    ld [$a7b7], a                                 ; $5f66: $ea $b7 $a7
    sub a                                         ; $5f69: $97
    rst $10                                       ; $5f6a: $d7
    add a                                         ; $5f6b: $87
    rst $10                                       ; $5f6c: $d7
    ld a, l                                       ; $5f6d: $7d
    ld c, d                                       ; $5f6e: $4a
    jp c, Jump_00f_4a9d                           ; $5f6f: $da $9d $4a

    jp c, $cdbd                                   ; $5f72: $da $bd $cd

    sub l                                         ; $5f75: $95
    jp hl                                         ; $5f76: $e9


    jp hl                                         ; $5f77: $e9


    ld b, a                                       ; $5f78: $47
    ld [$57a7], a                                 ; $5f79: $ea $a7 $57
    rlca                                          ; $5f7c: $07
    ld [$2777], a                                 ; $5f7d: $ea $77 $27
    ld [$3397], a                                 ; $5f80: $ea $97 $33
    ldh a, [rSC]                                  ; $5f83: $f0 $02
    inc b                                         ; $5f85: $04
    nop                                           ; $5f86: $00
    jp hl                                         ; $5f87: $e9


    jp hl                                         ; $5f88: $e9


    cp $90                                        ; $5f89: $fe $90
    ld e, a                                       ; $5f8b: $5f
    ld [$01ee], a                                 ; $5f8c: $ea $ee $01
    ld e, a                                       ; $5f8f: $5f
    ld a, [bc]                                    ; $5f90: $0a
    ld a, [bc]                                    ; $5f91: $0a
    daa                                           ; $5f92: $27
    ld c, d                                       ; $5f93: $4a
    ld [$fa77], a                                 ; $5f94: $ea $77 $fa
    add h                                         ; $5f97: $84
    sub a                                         ; $5f98: $97
    ld a, [$8754]                                 ; $5f99: $fa $54 $87
    sub a                                         ; $5f9c: $97
    jp hl                                         ; $5f9d: $e9


    ld b, a                                       ; $5f9e: $47
    call $2a2a                                    ; $5f9f: $cd $2a $2a
    ld b, a                                       ; $5fa2: $47
    ld e, d                                       ; $5fa3: $5a
    ld [$e997], a                                 ; $5fa4: $ea $97 $e9
    dec c                                         ; $5fa7: $0d
    ld [$daba], a                                 ; $5fa8: $ea $ba $da
    jp hl                                         ; $5fab: $e9


    ld a, [bc]                                    ; $5fac: $0a
    ld a, [bc]                                    ; $5fad: $0a
    daa                                           ; $5fae: $27
    ld c, d                                       ; $5faf: $4a
    ld [$fa77], a                                 ; $5fb0: $ea $77 $fa
    add h                                         ; $5fb3: $84
    sub a                                         ; $5fb4: $97
    ld a, [$8754]                                 ; $5fb5: $fa $54 $87
    sub a                                         ; $5fb8: $97
    jp hl                                         ; $5fb9: $e9


    ld c, d                                       ; $5fba: $4a
    ld b, a                                       ; $5fbb: $47
    ld d, a                                       ; $5fbc: $57
    ld h, a                                       ; $5fbd: $67
    ld [hl], a                                    ; $5fbe: $77
    ld [$7777], a                                 ; $5fbf: $ea $77 $77
    jp hl                                         ; $5fc2: $e9


    ld [hl], a                                    ; $5fc3: $77
    ld [hl], a                                    ; $5fc4: $77
    ld [$7777], a                                 ; $5fc5: $ea $77 $77
    jp hl                                         ; $5fc8: $e9


    ld [hl], a                                    ; $5fc9: $77
    rrca                                          ; $5fca: $0f
    jp c, $f9ef                                   ; $5fcb: $da $ef $f9

    sub b                                         ; $5fce: $90
    rst $30                                       ; $5fcf: $f7
    ld a, [bc]                                    ; $5fd0: $0a
    ei                                            ; $5fd1: $fb
    ld [de], a                                    ; $5fd2: $12
    ldh a, [rNR41]                                ; $5fd3: $f0 $20
    inc bc                                        ; $5fd5: $03
    nop                                           ; $5fd6: $00
    push af                                       ; $5fd7: $f5
    db $10                                        ; $5fd8: $10
    db $10                                        ; $5fd9: $10
    ld [$54fa], sp                                ; $5fda: $08 $fa $54
    ldh [c], a                                    ; $5fdd: $e2
    scf                                           ; $5fde: $37
    daa                                           ; $5fdf: $27
    daa                                           ; $5fe0: $27
    scf                                           ; $5fe1: $37
    scf                                           ; $5fe2: $37
    daa                                           ; $5fe3: $27
    daa                                           ; $5fe4: $27
    scf                                           ; $5fe5: $37
    ld b, a                                       ; $5fe6: $47
    scf                                           ; $5fe7: $37
    scf                                           ; $5fe8: $37
    ld b, a                                       ; $5fe9: $47
    ld b, a                                       ; $5fea: $47
    scf                                           ; $5feb: $37
    scf                                           ; $5fec: $37
    ld b, a                                       ; $5fed: $47
    ld d, a                                       ; $5fee: $57
    ld b, a                                       ; $5fef: $47
    ld b, a                                       ; $5ff0: $47
    ld d, a                                       ; $5ff1: $57
    ld d, a                                       ; $5ff2: $57
    ld b, a                                       ; $5ff3: $47
    ld b, a                                       ; $5ff4: $47
    ld d, a                                       ; $5ff5: $57
    adc l                                         ; $5ff6: $8d
    ld a, d                                       ; $5ff7: $7a
    jp c, $fee9                                   ; $5ff8: $da $e9 $fe

    adc [hl]                                      ; $5ffb: $8e
    ld h, b                                       ; $5ffc: $60
    pop af                                        ; $5ffd: $f1
    ld [bc], a                                    ; $5ffe: $02
    daa                                           ; $5fff: $27
    ld [$e9a7], a                                 ; $6000: $ea $a7 $e9
    daa                                           ; $6003: $27
    ld d, a                                       ; $6004: $57
    daa                                           ; $6005: $27
    ld d, a                                       ; $6006: $57
    and a                                         ; $6007: $a7
    jp hl                                         ; $6008: $e9


    daa                                           ; $6009: $27
    rlca                                          ; $600a: $07
    daa                                           ; $600b: $27
    rlca                                          ; $600c: $07
    ld [$4777], a                                 ; $600d: $ea $77 $47
    daa                                           ; $6010: $27
    rlca                                          ; $6011: $07
    ld [$e977], a                                 ; $6012: $ea $77 $e9
    ldh a, [c]                                    ; $6015: $f2
    scf                                           ; $6016: $37
    ld [$e9b7], a                                 ; $6017: $ea $b7 $e9
    scf                                           ; $601a: $37
    ld h, a                                       ; $601b: $67
    scf                                           ; $601c: $37
    ld h, a                                       ; $601d: $67
    or a                                          ; $601e: $b7
    jp hl                                         ; $601f: $e9


    scf                                           ; $6020: $37
    ld [$a7b7], a                                 ; $6021: $ea $b7 $a7
    or a                                          ; $6024: $b7
    sub a                                         ; $6025: $97
    ld [hl], a                                    ; $6026: $77
    ld h, a                                       ; $6027: $67
    ld [hl], a                                    ; $6028: $77
    add a                                         ; $6029: $87
    sub h                                         ; $602a: $94
    sub h                                         ; $602b: $94
    jp hl                                         ; $602c: $e9


    inc h                                         ; $602d: $24
    call nc, $d424                                ; $602e: $d4 $24 $d4
    ld [$9494], a                                 ; $6031: $ea $94 $94
    jp hl                                         ; $6034: $e9


    inc h                                         ; $6035: $24
    call nc, $d424                                ; $6036: $d4 $24 $d4
    ld [$9494], a                                 ; $6039: $ea $94 $94
    jp hl                                         ; $603c: $e9


    inc h                                         ; $603d: $24
    call nc, $94ea                                ; $603e: $d4 $ea $94
    sub h                                         ; $6041: $94
    jp hl                                         ; $6042: $e9


    inc h                                         ; $6043: $24
    call nc, $d424                                ; $6044: $d4 $24 $d4
    ld [$9494], a                                 ; $6047: $ea $94 $94
    jp hl                                         ; $604a: $e9


    inc h                                         ; $604b: $24
    call nc, $eadc                                ; $604c: $d4 $dc $ea
    ld [$7444], a                                 ; $604f: $ea $44 $74
    sub h                                         ; $6052: $94
    or h                                          ; $6053: $b4
    jp hl                                         ; $6054: $e9


    inc d                                         ; $6055: $14
    ld b, h                                       ; $6056: $44
    sub h                                         ; $6057: $94
    jp hl                                         ; $6058: $e9


    inc d                                         ; $6059: $14
    ld c, d                                       ; $605a: $4a
    jp c, $eaea                                   ; $605b: $da $ea $ea

    sub h                                         ; $605e: $94
    jp hl                                         ; $605f: $e9


    inc d                                         ; $6060: $14
    ld b, h                                       ; $6061: $44
    ld [hl], h                                    ; $6062: $74
    sub h                                         ; $6063: $94
    jp hl                                         ; $6064: $e9


    inc d                                         ; $6065: $14
    ld b, h                                       ; $6066: $44
    sub h                                         ; $6067: $94
    jp hl                                         ; $6068: $e9


    ld a, [de]                                    ; $6069: $1a
    jp c, $3444                                   ; $606a: $da $44 $34

    ld b, h                                       ; $606d: $44
    inc [hl]                                      ; $606e: $34
    ld b, h                                       ; $606f: $44
    inc [hl]                                      ; $6070: $34
    ld b, h                                       ; $6071: $44
    inc [hl]                                      ; $6072: $34
    ld b, h                                       ; $6073: $44
    inc [hl]                                      ; $6074: $34
    ld b, h                                       ; $6075: $44
    inc [hl]                                      ; $6076: $34
    ld b, h                                       ; $6077: $44
    inc [hl]                                      ; $6078: $34
    ld b, h                                       ; $6079: $44
    inc [hl]                                      ; $607a: $34
    ld b, a                                       ; $607b: $47
    ld [$57a7], a                                 ; $607c: $ea $a7 $57
    rlca                                          ; $607f: $07
    ld [$2777], a                                 ; $6080: $ea $77 $27
    ld [$3797], a                                 ; $6083: $ea $97 $37
    jp hl                                         ; $6086: $e9


    jp hl                                         ; $6087: $e9


    cp $8e                                        ; $6088: $fe $8e
    ld h, b                                       ; $608a: $60
    xor $de                                       ; $608b: $ee $de
    ld e, a                                       ; $608d: $5f
    inc b                                         ; $608e: $04
    ld [$e974], a                                 ; $608f: $ea $74 $e9
    ld b, a                                       ; $6092: $47
    ld [hl], a                                    ; $6093: $77
    inc b                                         ; $6094: $04
    ld [$e974], a                                 ; $6095: $ea $74 $e9
    ld b, a                                       ; $6098: $47
    ld [hl], a                                    ; $6099: $77
    inc b                                         ; $609a: $04
    ld [$e974], a                                 ; $609b: $ea $74 $e9
    ld b, a                                       ; $609e: $47
    ld [$4494], a                                 ; $609f: $ea $94 $44
    and a                                         ; $60a2: $a7
    jp hl                                         ; $60a3: $e9


    ld b, a                                       ; $60a4: $47
    ld [$4494], a                                 ; $60a5: $ea $94 $44
    and a                                         ; $60a8: $a7
    jp hl                                         ; $60a9: $e9


    ld b, a                                       ; $60aa: $47
    ld [$4494], a                                 ; $60ab: $ea $94 $44
    and a                                         ; $60ae: $a7
    jp hl                                         ; $60af: $e9


    inc h                                         ; $60b0: $24
    ld [$e994], a                                 ; $60b1: $ea $94 $e9
    ld d, a                                       ; $60b4: $57
    sub a                                         ; $60b5: $97
    inc h                                         ; $60b6: $24
    ld [$e994], a                                 ; $60b7: $ea $94 $e9
    ld d, a                                       ; $60ba: $57
    sub a                                         ; $60bb: $97
    inc h                                         ; $60bc: $24
    ld [$e994], a                                 ; $60bd: $ea $94 $e9
    ld d, a                                       ; $60c0: $57
    inc h                                         ; $60c1: $24
    ld b, h                                       ; $60c2: $44
    inc h                                         ; $60c3: $24
    ld b, h                                       ; $60c4: $44
    inc h                                         ; $60c5: $24
    ld b, h                                       ; $60c6: $44
    ld d, h                                       ; $60c7: $54
    ld h, h                                       ; $60c8: $64
    ld a, d                                       ; $60c9: $7a
    jp c, $ea04                                   ; $60ca: $da $04 $ea

    ld [hl], h                                    ; $60cd: $74
    jp hl                                         ; $60ce: $e9


    ld b, a                                       ; $60cf: $47
    ld [hl], a                                    ; $60d0: $77
    inc b                                         ; $60d1: $04
    ld [$e974], a                                 ; $60d2: $ea $74 $e9
    ld b, a                                       ; $60d5: $47
    ld [hl], a                                    ; $60d6: $77
    inc b                                         ; $60d7: $04
    ld [$e974], a                                 ; $60d8: $ea $74 $e9
    ld b, a                                       ; $60db: $47
    ld [$4494], a                                 ; $60dc: $ea $94 $44
    and a                                         ; $60df: $a7
    jp hl                                         ; $60e0: $e9


    ld b, a                                       ; $60e1: $47
    ld [$4494], a                                 ; $60e2: $ea $94 $44
    and a                                         ; $60e5: $a7
    jp hl                                         ; $60e6: $e9


    ld b, a                                       ; $60e7: $47
    ld [$4494], a                                 ; $60e8: $ea $94 $44
    jp hl                                         ; $60eb: $e9


    ld d, a                                       ; $60ec: $57
    daa                                           ; $60ed: $27

Call_00f_60ee:
    ld [$2727], a                                 ; $60ee: $ea $27 $27
    jp hl                                         ; $60f1: $e9


    daa                                           ; $60f2: $27
    daa                                           ; $60f3: $27
    ld [$2727], a                                 ; $60f4: $ea $27 $27
    jp hl                                         ; $60f7: $e9


    daa                                           ; $60f8: $27
    rlca                                          ; $60f9: $07
    ld [$7497], a                                 ; $60fa: $ea $97 $74
    inc [hl]                                      ; $60fd: $34
    ld b, a                                       ; $60fe: $47
    rlca                                          ; $60ff: $07
    call c, $f9ef                                 ; $6100: $dc $ef $f9
    sub b                                         ; $6103: $90
    rst $30                                       ; $6104: $f7
    ld c, $fb                                     ; $6105: $0e $fb
    inc sp                                        ; $6107: $33
    ldh a, [rTMA]                                 ; $6108: $f0 $06
    nop                                           ; $610a: $00
    nop                                           ; $610b: $00
    ld a, [$e158]                                 ; $610c: $fa $58 $e1
    pop af                                        ; $610f: $f1
    inc bc                                        ; $6110: $03
    ld a, [bc]                                    ; $6111: $0a
    jp hl                                         ; $6112: $e9


    rlca                                          ; $6113: $07
    ld [$070a], a                                 ; $6114: $ea $0a $07
    jp hl                                         ; $6117: $e9


    rlca                                          ; $6118: $07
    ld [$f207], a                                 ; $6119: $ea $07 $f2
    dec l                                         ; $611c: $2d
    ld a, d                                       ; $611d: $7a
    jp c, $fee9                                   ; $611e: $da $e9 $fe

    ld l, e                                       ; $6121: $6b
    ld h, c                                       ; $6122: $61
    ld [$5aaa], a                                 ; $6123: $ea $aa $5a
    ld [$e9aa], a                                 ; $6126: $ea $aa $e9
    xor d                                         ; $6129: $aa
    jp hl                                         ; $612a: $e9


    ld a, [bc]                                    ; $612b: $0a
    ld [$0a7a], a                                 ; $612c: $ea $7a $0a
    jp hl                                         ; $612f: $e9


    ld a, [bc]                                    ; $6130: $0a
    ld [$5aaa], a                                 ; $6131: $ea $aa $5a
    ld [$e9aa], a                                 ; $6134: $ea $aa $e9
    xor d                                         ; $6137: $aa
    jp hl                                         ; $6138: $e9


    ld a, [bc]                                    ; $6139: $0a
    ld [$4a7a], a                                 ; $613a: $ea $7a $4a
    ld a, [bc]                                    ; $613d: $0a
    ld [$e9ba], a                                 ; $613e: $ea $ba $e9
    ld l, d                                       ; $6141: $6a
    ld [$e9ba], a                                 ; $6142: $ea $ba $e9
    cp d                                          ; $6145: $ba
    ld c, d                                       ; $6146: $4a
    ld l, d                                       ; $6147: $6a
    ld a, d                                       ; $6148: $7a
    ld [$e9ba], a                                 ; $6149: $ea $ba $e9
    ld a, [hl+]                                   ; $614c: $2a
    rst RST_18                                    ; $614d: $df
    jp c, $271a                                   ; $614e: $da $1a $27

    call c, $9cea                                 ; $6151: $dc $ea $9c
    sbc d                                         ; $6154: $9a
    sbc d                                         ; $6155: $9a
    sub a                                         ; $6156: $97
    sbc h                                         ; $6157: $9c
    sbc d                                         ; $6158: $9a
    sbc d                                         ; $6159: $9a
    sub a                                         ; $615a: $97
    sbc h                                         ; $615b: $9c
    sbc d                                         ; $615c: $9a
    sbc d                                         ; $615d: $9a
    sub a                                         ; $615e: $97
    sub a                                         ; $615f: $97
    rst $10                                       ; $6160: $d7
    rst RST_18                                    ; $6161: $df
    jp hl                                         ; $6162: $e9


    jp hl                                         ; $6163: $e9


    cp $6b                                        ; $6164: $fe $6b
    ld h, c                                       ; $6166: $61
    ld [$0fee], a                                 ; $6167: $ea $ee $0f
    ld h, c                                       ; $616a: $61
    ld a, [bc]                                    ; $616b: $0a
    ld [$0a7a], a                                 ; $616c: $ea $7a $0a
    jp hl                                         ; $616f: $e9


    ld a, [bc]                                    ; $6170: $0a
    ld [$4a9a], a                                 ; $6171: $ea $9a $4a
    sbc d                                         ; $6174: $9a
    jp hl                                         ; $6175: $e9


    ld a, [de]                                    ; $6176: $1a
    ld a, [hl+]                                   ; $6177: $2a
    ld [$2a9a], a                                 ; $6178: $ea $9a $2a
    jp hl                                         ; $617b: $e9


    ld a, [hl+]                                   ; $617c: $2a
    ld [$7a5d], a                                 ; $617d: $ea $5d $7a
    jp c, Jump_000_0ae9                           ; $6180: $da $e9 $0a

    ld [$0a7a], a                                 ; $6183: $ea $7a $0a
    jp hl                                         ; $6186: $e9


    ld a, [bc]                                    ; $6187: $0a
    ld [$4a9a], a                                 ; $6188: $ea $9a $4a
    sbc d                                         ; $618b: $9a
    adc d                                         ; $618c: $8a
    ld [hl], a                                    ; $618d: $77
    jp c, Jump_00f_77ea                           ; $618e: $da $ea $77

    jp hl                                         ; $6191: $e9


    ld [hl], a                                    ; $6192: $77
    jp c, Jump_00f_77ea                           ; $6193: $da $ea $77

    jp hl                                         ; $6196: $e9


    rlca                                          ; $6197: $07
    ld b, a                                       ; $6198: $47
    ld [hl], a                                    ; $6199: $77
    or a                                          ; $619a: $b7
    jp hl                                         ; $619b: $e9


    ld a, [bc]                                    ; $619c: $0a
    jp c, $f9ef                                   ; $619d: $da $ef $f9

    sub b                                         ; $61a0: $90
    rst $30                                       ; $61a1: $f7
    ld c, $fc                                     ; $61a2: $0e $fc
    db $10                                        ; $61a4: $10
    ei                                            ; $61a5: $fb
    ld hl, $31fa                                  ; $61a6: $21 $fa $31
    pop af                                        ; $61a9: $f1
    inc bc                                        ; $61aa: $03
    rst $10                                       ; $61ab: $d7
    inc b                                         ; $61ac: $04
    call nc, $d904                                ; $61ad: $d4 $04 $d9
    inc b                                         ; $61b0: $04
    call nc, $d904                                ; $61b1: $d4 $04 $d9
    inc b                                         ; $61b4: $04
    call nc, $d7f2                                ; $61b5: $d4 $f2 $d7
    inc b                                         ; $61b8: $04
    call nc, $d904                                ; $61b9: $d4 $04 $d9
    inc b                                         ; $61bc: $04
    call nc, $d9d4                                ; $61bd: $d4 $d4 $d9
    call nc, $fed4                                ; $61c0: $d4 $d4 $fe
    cp $61                                        ; $61c3: $fe $61
    pop af                                        ; $61c5: $f1
    ld b, $d7                                     ; $61c6: $06 $d7
    inc b                                         ; $61c8: $04
    reti                                          ; $61c9: $d9


    inc b                                         ; $61ca: $04
    reti                                          ; $61cb: $d9


    inc b                                         ; $61cc: $04
    reti                                          ; $61cd: $d9


    inc b                                         ; $61ce: $04
    call nc, $04f2                                ; $61cf: $d4 $f2 $04
    reti                                          ; $61d2: $d9


    rst RST_18                                    ; $61d3: $df
    rst $10                                       ; $61d4: $d7
    inc b                                         ; $61d5: $04
    reti                                          ; $61d6: $d9


    inc b                                         ; $61d7: $04
    call nc, $d404                                ; $61d8: $d4 $04 $d4
    call c, Call_000_03f1                         ; $61db: $dc $f1 $03
    inc b                                         ; $61de: $04
    call nc, Call_000_04da                        ; $61df: $d4 $da $04
    reti                                          ; $61e2: $d9


    inc b                                         ; $61e3: $04
    reti                                          ; $61e4: $d9


    inc b                                         ; $61e5: $04
    call nc, $04f2                                ; $61e6: $d4 $f2 $04
    call nc, $0404                                ; $61e9: $d4 $04 $04
    call nc, $d404                                ; $61ec: $d4 $04 $d4
    inc b                                         ; $61ef: $04
    call nc, $d404                                ; $61f0: $d4 $04 $d4
    inc b                                         ; $61f3: $04
    inc b                                         ; $61f4: $04
    call nc, $d404                                ; $61f5: $d4 $04 $d4
    cp $fe                                        ; $61f8: $fe $fe
    ld h, c                                       ; $61fa: $61
    xor $a9                                       ; $61fb: $ee $a9
    ld h, c                                       ; $61fd: $61
    pop af                                        ; $61fe: $f1
    inc bc                                        ; $61ff: $03
    inc b                                         ; $6200: $04
    call nc, $0404                                ; $6201: $d4 $04 $04
    inc b                                         ; $6204: $04
    call nc, $0404                                ; $6205: $d4 $04 $04
    inc b                                         ; $6208: $04
    call nc, $0404                                ; $6209: $d4 $04 $04
    inc b                                         ; $620c: $04
    call nc, $0404                                ; $620d: $d4 $04 $04
    ldh a, [c]                                    ; $6210: $f2
    rst $10                                       ; $6211: $d7
    inc b                                         ; $6212: $04
    call nc, $d904                                ; $6213: $d4 $04 $d9
    inc b                                         ; $6216: $04
    call nc, $d9d4                                ; $6217: $d4 $d4 $d9
    call nc, $f1d4                                ; $621a: $d4 $d4 $f1
    ld [bc], a                                    ; $621d: $02
    inc b                                         ; $621e: $04
    call nc, $0404                                ; $621f: $d4 $04 $04
    inc b                                         ; $6222: $04
    call nc, $0404                                ; $6223: $d4 $04 $04
    inc b                                         ; $6226: $04
    call nc, $0404                                ; $6227: $d4 $04 $04
    inc b                                         ; $622a: $04
    call nc, $0404                                ; $622b: $d4 $04 $04
    ldh a, [c]                                    ; $622e: $f2
    rst $10                                       ; $622f: $d7
    inc b                                         ; $6230: $04
    call nc, $d904                                ; $6231: $d4 $04 $d9
    inc b                                         ; $6234: $04
    call nc, $d904                                ; $6235: $d4 $04 $d9
    inc b                                         ; $6238: $04
    call nc, Call_000_04d7                        ; $6239: $d4 $d7 $04
    rst $10                                       ; $623c: $d7
    inc b                                         ; $623d: $04
    rst $10                                       ; $623e: $d7
    inc b                                         ; $623f: $04
    call nc, $efdc                                ; $6240: $d4 $dc $ef
    ld sp, hl                                     ; $6243: $f9
    ld e, h                                       ; $6244: $5c
    ldh [c], a                                    ; $6245: $e2
    ei                                            ; $6246: $fb
    inc sp                                        ; $6247: $33
    ldh a, [rSC]                                  ; $6248: $f0 $02
    inc b                                         ; $624a: $04
    nop                                           ; $624b: $00
    push af                                       ; $624c: $f5
    db $10                                        ; $624d: $10
    db $10                                        ; $624e: $10
    ld [$43fa], sp                                ; $624f: $08 $fa $43
    rst $30                                       ; $6252: $f7
    ld [$5454], sp                                ; $6253: $08 $54 $54
    inc b                                         ; $6256: $04
    inc h                                         ; $6257: $24
    call nc, Call_00f_5404                        ; $6258: $d4 $04 $54
    call nc, Call_00f_7474                        ; $625b: $d4 $74 $74
    inc b                                         ; $625e: $04
    inc h                                         ; $625f: $24
    call nc, Call_00f_7404                        ; $6260: $d4 $04 $74
    call nc, $a494                                ; $6263: $d4 $94 $a4
    sub h                                         ; $6266: $94
    ld d, h                                       ; $6267: $54
    call nc, Call_000_2454                        ; $6268: $d4 $54 $24
    call nc, $d707                                ; $626b: $d4 $07 $d7
    rlca                                          ; $626e: $07
    rst $10                                       ; $626f: $d7
    ld [$e997], a                                 ; $6270: $ea $97 $e9
    ld a, [bc]                                    ; $6273: $0a
    daa                                           ; $6274: $27
    ld d, a                                       ; $6275: $57
    ld [$e994], a                                 ; $6276: $ea $94 $e9
    ld d, a                                       ; $6279: $57
    ld d, h                                       ; $627a: $54
    ld [$b797], a                                 ; $627b: $ea $97 $b7
    rst $10                                       ; $627e: $d7
    jp hl                                         ; $627f: $e9


    daa                                           ; $6280: $27
    rst $10                                       ; $6281: $d7
    ld a, h                                       ; $6282: $7c
    ld d, a                                       ; $6283: $57
    ld b, a                                       ; $6284: $47
    ld b, a                                       ; $6285: $47
    ld [hl], a                                    ; $6286: $77
    ld [hl], a                                    ; $6287: $77
    ld a, [$0483]                                 ; $6288: $fa $83 $04
    ld [$e9b4], a                                 ; $628b: $ea $b4 $e9
    inc b                                         ; $628e: $04
    inc h                                         ; $628f: $24
    inc b                                         ; $6290: $04
    ld [$94a4], a                                 ; $6291: $ea $a4 $94
    ld [hl], h                                    ; $6294: $74
    ld a, [$9a43]                                 ; $6295: $fa $43 $9a
    xor d                                         ; $6298: $aa
    cp d                                          ; $6299: $ba
    jp hl                                         ; $629a: $e9


    ld a, [bc]                                    ; $629b: $0a
    ld [$e997], a                                 ; $629c: $ea $97 $e9
    ld a, [bc]                                    ; $629f: $0a
    daa                                           ; $62a0: $27
    ld d, a                                       ; $62a1: $57
    ld [$e994], a                                 ; $62a2: $ea $94 $e9
    ld d, a                                       ; $62a5: $57
    ld d, h                                       ; $62a6: $54
    ld [$b797], a                                 ; $62a7: $ea $97 $b7
    rst $10                                       ; $62aa: $d7
    jp hl                                         ; $62ab: $e9


    daa                                           ; $62ac: $27
    rst $10                                       ; $62ad: $d7
    sbc h                                         ; $62ae: $9c
    ld [hl], a                                    ; $62af: $77
    ld b, a                                       ; $62b0: $47
    ld a, [$0483]                                 ; $62b1: $fa $83 $04
    inc d                                         ; $62b4: $14
    inc h                                         ; $62b5: $24
    inc d                                         ; $62b6: $14
    inc h                                         ; $62b7: $24
    inc [hl]                                      ; $62b8: $34
    ld b, h                                       ; $62b9: $44
    inc [hl]                                      ; $62ba: $34
    ld b, h                                       ; $62bb: $44
    ld d, h                                       ; $62bc: $54
    ld a, [$7543]                                 ; $62bd: $fa $43 $75
    db $d3                                        ; $62c0: $d3
    sub l                                         ; $62c1: $95
    db $d3                                        ; $62c2: $d3
    ld d, l                                       ; $62c3: $55
    db $d3                                        ; $62c4: $d3
    rst $10                                       ; $62c5: $d7
    ld a, [$0703]                                 ; $62c6: $fa $03 $07
    ld [$93a3], a                                 ; $62c9: $ea $a3 $93
    ld [hl], e                                    ; $62cc: $73
    ld a, [$5743]                                 ; $62cd: $fa $43 $57
    rst $10                                       ; $62d0: $d7
    jp c, Jump_00f_7a77                           ; $62d1: $da $77 $7a

    or a                                          ; $62d4: $b7
    jp hl                                         ; $62d5: $e9


    inc h                                         ; $62d6: $24
    ld [$e9b4], a                                 ; $62d7: $ea $b4 $e9
    inc h                                         ; $62da: $24
    ld b, h                                       ; $62db: $44
    jp z, $97ea                                   ; $62dc: $ca $ea $97

    sbc d                                         ; $62df: $9a
    jp hl                                         ; $62e0: $e9


    rla                                           ; $62e1: $17
    ld b, h                                       ; $62e2: $44
    inc d                                         ; $62e3: $14
    ld b, h                                       ; $62e4: $44
    ld h, h                                       ; $62e5: $64
    jp z, $b7ea                                   ; $62e6: $ca $ea $b7

    cp d                                          ; $62e9: $ba
    jp hl                                         ; $62ea: $e9


    scf                                           ; $62eb: $37
    ld h, h                                       ; $62ec: $64
    inc [hl]                                      ; $62ed: $34
    ld h, h                                       ; $62ee: $64
    sbc c                                         ; $62ef: $99
    ld a, [$9743]                                 ; $62f0: $fa $43 $97
    add a                                         ; $62f3: $87
    rst $10                                       ; $62f4: $d7
    rst RST_18                                    ; $62f5: $df
    sbc c                                         ; $62f6: $99
    ld l, c                                       ; $62f7: $69
    ld b, a                                       ; $62f8: $47
    sbc c                                         ; $62f9: $99
    ld l, c                                       ; $62fa: $69
    ld b, a                                       ; $62fb: $47
    ld l, c                                       ; $62fc: $69
    or a                                          ; $62fd: $b7
    reti                                          ; $62fe: $d9


    jp c, Jump_00f_4767                           ; $62ff: $da $67 $47

    ld l, c                                       ; $6302: $69
    add hl, hl                                    ; $6303: $29
    sub a                                         ; $6304: $97
    adc c                                         ; $6305: $89
    sbc c                                         ; $6306: $99
    or a                                          ; $6307: $b7
    ld l, c                                       ; $6308: $69
    ld b, a                                       ; $6309: $47
    jp c, $d484                                   ; $630a: $da $84 $d4

    sub h                                         ; $630d: $94
    or h                                          ; $630e: $b4
    call nc, $d484                                ; $630f: $d4 $84 $d4
    sbc c                                         ; $6312: $99
    ld l, c                                       ; $6313: $69
    ld b, a                                       ; $6314: $47
    sbc c                                         ; $6315: $99
    ld l, c                                       ; $6316: $69
    ld b, a                                       ; $6317: $47
    ld l, c                                       ; $6318: $69
    or a                                          ; $6319: $b7
    reti                                          ; $631a: $d9


    jp c, Jump_00f_4767                           ; $631b: $da $67 $47

    ld l, c                                       ; $631e: $69
    add hl, hl                                    ; $631f: $29
    sub a                                         ; $6320: $97
    adc c                                         ; $6321: $89
    sbc c                                         ; $6322: $99
    or a                                          ; $6323: $b7
    sbc l                                         ; $6324: $9d
    call nc, $d414                                ; $6325: $d4 $14 $d4
    inc d                                         ; $6328: $14
    inc d                                         ; $6329: $14
    call nc, $e9d7                                ; $632a: $d4 $d7 $e9
    ld a, [bc]                                    ; $632d: $0a
    ld [$99ba], a                                 ; $632e: $ea $ba $99
    cp c                                          ; $6331: $b9
    sub a                                         ; $6332: $97
    ld a, c                                       ; $6333: $79
    sbc c                                         ; $6334: $99
    cp d                                          ; $6335: $ba
    ld [hl], a                                    ; $6336: $77
    sub a                                         ; $6337: $97
    ld [hl], a                                    ; $6338: $77
    xor d                                         ; $6339: $aa
    sbc d                                         ; $633a: $9a
    ld a, c                                       ; $633b: $79
    sbc c                                         ; $633c: $99
    ld [hl], a                                    ; $633d: $77
    ld c, l                                       ; $633e: $4d
    call Call_00f_7a8a                            ; $633f: $cd $8a $7a
    ld e, c                                       ; $6342: $59
    ld a, c                                       ; $6343: $79
    ld d, a                                       ; $6344: $57
    ld c, c                                       ; $6345: $49
    ld e, c                                       ; $6346: $59
    ld a, h                                       ; $6347: $7c
    ld a, [bc]                                    ; $6348: $0a
    inc h                                         ; $6349: $24
    rst $10                                       ; $634a: $d7
    inc h                                         ; $634b: $24
    call nc, Call_00f_5424                        ; $634c: $d4 $24 $54
    call nc, $d794                                ; $634f: $d4 $94 $d7
    sub h                                         ; $6352: $94
    call nc, $e994                                ; $6353: $d4 $94 $e9
    inc b                                         ; $6356: $04
    call nc, $b4ea                                ; $6357: $d4 $ea $b4
    reti                                          ; $635a: $d9


    jp c, Jump_00f_7494                           ; $635b: $da $94 $74

    inc h                                         ; $635e: $24
    ld [$e9b4], a                                 ; $635f: $ea $b4 $e9
    ld [hl], h                                    ; $6362: $74
    inc h                                         ; $6363: $24
    ld [$74b4], a                                 ; $6364: $ea $b4 $74
    ld e, d                                       ; $6367: $5a
    ld b, a                                       ; $6368: $47
    rst $10                                       ; $6369: $d7
    sbc d                                         ; $636a: $9a
    add a                                         ; $636b: $87
    rst $10                                       ; $636c: $d7
    jp hl                                         ; $636d: $e9


    rlca                                          ; $636e: $07
    ld [$e9b7], a                                 ; $636f: $ea $b7 $e9
    ld d, a                                       ; $6372: $57
    ld b, a                                       ; $6373: $47
    sub a                                         ; $6374: $97
    add a                                         ; $6375: $87
    jp hl                                         ; $6376: $e9


    rlca                                          ; $6377: $07
    ld [$eab7], a                                 ; $6378: $ea $b7 $ea
    xor $71                                       ; $637b: $ee $71
    ld h, d                                       ; $637d: $62
    ld sp, hl                                     ; $637e: $f9
    ld e, h                                       ; $637f: $5c
    db $e3                                        ; $6380: $e3
    rst $30                                       ; $6381: $f7
    ld [$12fb], sp                                ; $6382: $08 $fb $12
    ldh a, [$ff30]                                ; $6385: $f0 $30
    inc b                                         ; $6387: $04
    nop                                           ; $6388: $00
    push af                                       ; $6389: $f5
    db $10                                        ; $638a: $10
    db $10                                        ; $638b: $10
    ld [$53fa], sp                                ; $638c: $08 $fa $53
    ld d, h                                       ; $638f: $54
    inc h                                         ; $6390: $24
    inc b                                         ; $6391: $04
    ld d, h                                       ; $6392: $54
    inc h                                         ; $6393: $24
    inc b                                         ; $6394: $04
    ld d, h                                       ; $6395: $54

    db $d4, $74, $24

    inc b                                         ; $6399: $04
    ld [hl], h                                    ; $639a: $74
    inc h                                         ; $639b: $24
    inc b                                         ; $639c: $04
    ld [hl], h                                    ; $639d: $74
    call nc, $2494                                ; $639e: $d4 $94 $24
    inc b                                         ; $63a1: $04
    sub h                                         ; $63a2: $94
    inc h                                         ; $63a3: $24
    inc b                                         ; $63a4: $04
    sub h                                         ; $63a5: $94
    inc h                                         ; $63a6: $24
    rlca                                          ; $63a7: $07
    rst $10                                       ; $63a8: $d7
    ld b, a                                       ; $63a9: $47
    rst $10                                       ; $63aa: $d7
    ld [$b4a4], a                                 ; $63ab: $ea $a4 $b4
    jp hl                                         ; $63ae: $e9


    inc b                                         ; $63af: $04
    ld [$b4a4], a                                 ; $63b0: $ea $a4 $b4
    jp hl                                         ; $63b3: $e9


    inc b                                         ; $63b4: $04
    ld [$b4a4], a                                 ; $63b5: $ea $a4 $b4
    jp hl                                         ; $63b8: $e9


    inc b                                         ; $63b9: $04
    ld [$b4a4], a                                 ; $63ba: $ea $a4 $b4
    jp hl                                         ; $63bd: $e9


    inc b                                         ; $63be: $04
    ld [$b4a4], a                                 ; $63bf: $ea $a4 $b4
    jp hl                                         ; $63c2: $e9


    inc b                                         ; $63c3: $04
    call nc, Call_000_1404                        ; $63c4: $d4 $04 $14
    inc h                                         ; $63c7: $24
    inc b                                         ; $63c8: $04
    inc d                                         ; $63c9: $14
    inc h                                         ; $63ca: $24
    inc b                                         ; $63cb: $04
    inc d                                         ; $63cc: $14
    inc h                                         ; $63cd: $24
    inc b                                         ; $63ce: $04
    inc d                                         ; $63cf: $14
    inc h                                         ; $63d0: $24
    inc b                                         ; $63d1: $04
    inc d                                         ; $63d2: $14
    inc h                                         ; $63d3: $24
    call nc, $3424                                ; $63d4: $d4 $24 $34
    ld b, h                                       ; $63d7: $44
    inc h                                         ; $63d8: $24
    inc [hl]                                      ; $63d9: $34
    ld b, h                                       ; $63da: $44
    inc h                                         ; $63db: $24
    inc [hl]                                      ; $63dc: $34
    ld b, h                                       ; $63dd: $44
    inc h                                         ; $63de: $24
    inc [hl]                                      ; $63df: $34
    ld b, h                                       ; $63e0: $44
    inc h                                         ; $63e1: $24
    inc [hl]                                      ; $63e2: $34
    ld b, h                                       ; $63e3: $44
    call nc, Call_000_1a0a                        ; $63e4: $d4 $0a $1a
    ld a, [hl+]                                   ; $63e7: $2a
    ld a, d                                       ; $63e8: $7a
    ld [$b4a4], a                                 ; $63e9: $ea $a4 $b4
    jp hl                                         ; $63ec: $e9


    inc b                                         ; $63ed: $04
    ld [$b4a4], a                                 ; $63ee: $ea $a4 $b4
    jp hl                                         ; $63f1: $e9


    inc b                                         ; $63f2: $04
    ld [$b4a4], a                                 ; $63f3: $ea $a4 $b4
    jp hl                                         ; $63f6: $e9


    inc b                                         ; $63f7: $04
    ld [$b4a4], a                                 ; $63f8: $ea $a4 $b4
    jp hl                                         ; $63fb: $e9


    inc b                                         ; $63fc: $04
    ld [$b4a4], a                                 ; $63fd: $ea $a4 $b4
    jp hl                                         ; $6400: $e9


    rlca                                          ; $6401: $07
    inc b                                         ; $6402: $04
    inc d                                         ; $6403: $14
    inc h                                         ; $6404: $24
    inc b                                         ; $6405: $04
    inc d                                         ; $6406: $14
    inc h                                         ; $6407: $24
    inc b                                         ; $6408: $04
    inc d                                         ; $6409: $14
    inc h                                         ; $640a: $24
    inc b                                         ; $640b: $04
    inc d                                         ; $640c: $14
    inc h                                         ; $640d: $24
    inc b                                         ; $640e: $04
    inc d                                         ; $640f: $14
    daa                                           ; $6410: $27
    ld [hl], a                                    ; $6411: $77
    ld a, [$4483]                                 ; $6412: $fa $83 $44
    ld d, h                                       ; $6415: $54
    ld h, h                                       ; $6416: $64
    ld d, h                                       ; $6417: $54
    ld h, h                                       ; $6418: $64
    ld [hl], h                                    ; $6419: $74
    add h                                         ; $641a: $84
    ld [hl], h                                    ; $641b: $74
    add h                                         ; $641c: $84
    sub h                                         ; $641d: $94
    ld a, [$a553]                                 ; $641e: $fa $53 $a5
    db $d3                                        ; $6421: $d3
    jp hl                                         ; $6422: $e9


    dec b                                         ; $6423: $05
    db $d3                                        ; $6424: $d3
    ld [$d395], a                                 ; $6425: $ea $95 $d3
    rst $10                                       ; $6428: $d7
    ld a, [$9703]                                 ; $6429: $fa $03 $97
    ld d, e                                       ; $642c: $53
    inc hl                                        ; $642d: $23
    ld [$faa3], a                                 ; $642e: $ea $a3 $fa
    ld d, e                                       ; $6431: $53
    sub a                                         ; $6432: $97
    rst $10                                       ; $6433: $d7
    jp c, $a4b4                                   ; $6434: $da $b4 $a4

    sub h                                         ; $6437: $94
    or h                                          ; $6438: $b4
    and h                                         ; $6439: $a4
    sub h                                         ; $643a: $94
    or h                                          ; $643b: $b4
    and h                                         ; $643c: $a4
    sub h                                         ; $643d: $94
    or h                                          ; $643e: $b4
    and h                                         ; $643f: $a4
    sub h                                         ; $6440: $94
    or h                                          ; $6441: $b4
    sub h                                         ; $6442: $94
    and h                                         ; $6443: $a4
    or h                                          ; $6444: $b4
    jp hl                                         ; $6445: $e9


    inc d                                         ; $6446: $14
    inc b                                         ; $6447: $04
    ld [$e9b4], a                                 ; $6448: $ea $b4 $e9
    inc d                                         ; $644b: $14
    inc b                                         ; $644c: $04
    ld [$e9b4], a                                 ; $644d: $ea $b4 $e9
    inc d                                         ; $6450: $14
    inc b                                         ; $6451: $04
    ld [$e9b4], a                                 ; $6452: $ea $b4 $e9
    inc d                                         ; $6455: $14
    inc b                                         ; $6456: $04
    ld [$e9b4], a                                 ; $6457: $ea $b4 $e9
    inc d                                         ; $645a: $14
    ld [$e9b4], a                                 ; $645b: $ea $b4 $e9
    inc b                                         ; $645e: $04
    inc d                                         ; $645f: $14
    inc [hl]                                      ; $6460: $34
    inc h                                         ; $6461: $24
    inc d                                         ; $6462: $14
    inc [hl]                                      ; $6463: $34
    inc h                                         ; $6464: $24
    inc d                                         ; $6465: $14
    inc [hl]                                      ; $6466: $34
    inc h                                         ; $6467: $24
    inc d                                         ; $6468: $14
    inc [hl]                                      ; $6469: $34
    inc h                                         ; $646a: $24
    inc d                                         ; $646b: $14
    inc [hl]                                      ; $646c: $34
    inc d                                         ; $646d: $14
    inc h                                         ; $646e: $24
    inc [hl]                                      ; $646f: $34
    ld b, a                                       ; $6470: $47
    rst $10                                       ; $6471: $d7
    rst RST_18                                    ; $6472: $df
    pop af                                        ; $6473: $f1
    inc bc                                        ; $6474: $03
    ld b, h                                       ; $6475: $44
    ld [$e944], a                                 ; $6476: $ea $44 $e9
    ld b, h                                       ; $6479: $44
    ld [$e944], a                                 ; $647a: $ea $44 $e9
    ld b, h                                       ; $647d: $44
    ld b, h                                       ; $647e: $44
    ld [$e944], a                                 ; $647f: $ea $44 $e9
    ld b, h                                       ; $6482: $44
    ld [$e944], a                                 ; $6483: $ea $44 $e9
    ld b, h                                       ; $6486: $44
    ld [$e944], a                                 ; $6487: $ea $44 $e9
    ld b, h                                       ; $648a: $44
    ld b, h                                       ; $648b: $44
    ld [$e944], a                                 ; $648c: $ea $44 $e9
    ld b, h                                       ; $648f: $44
    ld [$e944], a                                 ; $6490: $ea $44 $e9
    ldh a, [c]                                    ; $6493: $f2
    ld b, h                                       ; $6494: $44
    ld [$e944], a                                 ; $6495: $ea $44 $e9
    ld b, h                                       ; $6498: $44
    ld [$e944], a                                 ; $6499: $ea $44 $e9
    ld b, h                                       ; $649c: $44
    ld b, h                                       ; $649d: $44
    ld [$e944], a                                 ; $649e: $ea $44 $e9
    ld b, h                                       ; $64a1: $44
    call nc, $d4b4                                ; $64a2: $d4 $b4 $d4
    jp hl                                         ; $64a5: $e9


    inc d                                         ; $64a6: $14
    inc h                                         ; $64a7: $24
    call nc, $b4ea                                ; $64a8: $d4 $ea $b4
    call nc, Call_000_03f1                        ; $64ab: $d4 $f1 $03
    ld b, h                                       ; $64ae: $44
    ld [$e944], a                                 ; $64af: $ea $44 $e9
    ld b, h                                       ; $64b2: $44
    ld [$e944], a                                 ; $64b3: $ea $44 $e9
    ld b, h                                       ; $64b6: $44
    ld b, h                                       ; $64b7: $44
    ld [$e944], a                                 ; $64b8: $ea $44 $e9
    ld b, h                                       ; $64bb: $44
    ld [$e944], a                                 ; $64bc: $ea $44 $e9
    ld b, h                                       ; $64bf: $44
    ld [$e944], a                                 ; $64c0: $ea $44 $e9
    ld b, h                                       ; $64c3: $44
    ld b, h                                       ; $64c4: $44
    ld [$e944], a                                 ; $64c5: $ea $44 $e9
    ld b, h                                       ; $64c8: $44
    ld [$e944], a                                 ; $64c9: $ea $44 $e9
    ldh a, [c]                                    ; $64cc: $f2
    ld b, h                                       ; $64cd: $44
    ld [$e944], a                                 ; $64ce: $ea $44 $e9
    ld b, h                                       ; $64d1: $44
    ld [$e944], a                                 ; $64d2: $ea $44 $e9
    ld b, h                                       ; $64d5: $44
    ld b, h                                       ; $64d6: $44
    ld [$e944], a                                 ; $64d7: $ea $44 $e9
    ld b, h                                       ; $64da: $44
    call nc, $d444                                ; $64db: $d4 $44 $d4
    ld b, h                                       ; $64de: $44
    ld b, h                                       ; $64df: $44
    call nc, Call_000_04d7                        ; $64e0: $d4 $d7 $04
    ld [$e904], a                                 ; $64e3: $ea $04 $e9
    inc b                                         ; $64e6: $04
    ld [$e904], a                                 ; $64e7: $ea $04 $e9
    inc b                                         ; $64ea: $04
    inc b                                         ; $64eb: $04
    ld [$e904], a                                 ; $64ec: $ea $04 $e9
    inc h                                         ; $64ef: $24
    ld [$e924], a                                 ; $64f0: $ea $24 $e9
    inc h                                         ; $64f3: $24
    ld [$e924], a                                 ; $64f4: $ea $24 $e9
    inc h                                         ; $64f7: $24
    inc h                                         ; $64f8: $24
    ld [$e924], a                                 ; $64f9: $ea $24 $e9
    inc h                                         ; $64fc: $24
    ld [$e924], a                                 ; $64fd: $ea $24 $e9
    inc h                                         ; $6500: $24
    ld [$e924], a                                 ; $6501: $ea $24 $e9
    inc h                                         ; $6504: $24
    ld [$e924], a                                 ; $6505: $ea $24 $e9
    inc h                                         ; $6508: $24
    inc h                                         ; $6509: $24
    ld [$e924], a                                 ; $650a: $ea $24 $e9
    ld [hl], h                                    ; $650d: $74
    ld [$e974], a                                 ; $650e: $ea $74 $e9
    ld [hl], h                                    ; $6511: $74
    ld [$e974], a                                 ; $6512: $ea $74 $e9
    ld [hl], h                                    ; $6515: $74
    ld [hl], h                                    ; $6516: $74
    ld [$e974], a                                 ; $6517: $ea $74 $e9
    ld [hl], h                                    ; $651a: $74
    ld [$e974], a                                 ; $651b: $ea $74 $e9
    inc b                                         ; $651e: $04
    ld [$e904], a                                 ; $651f: $ea $04 $e9
    inc b                                         ; $6522: $04
    ld [$e904], a                                 ; $6523: $ea $04 $e9
    inc b                                         ; $6526: $04
    inc b                                         ; $6527: $04
    ld [$e904], a                                 ; $6528: $ea $04 $e9
    inc h                                         ; $652b: $24
    ld [$e924], a                                 ; $652c: $ea $24 $e9
    inc h                                         ; $652f: $24
    ld [$e924], a                                 ; $6530: $ea $24 $e9
    inc h                                         ; $6533: $24
    inc h                                         ; $6534: $24
    ld [$e924], a                                 ; $6535: $ea $24 $e9
    inc h                                         ; $6538: $24
    ld [$e924], a                                 ; $6539: $ea $24 $e9
    ld [hl], h                                    ; $653c: $74
    ld [$e974], a                                 ; $653d: $ea $74 $e9
    ld [hl], h                                    ; $6540: $74
    ld [$e974], a                                 ; $6541: $ea $74 $e9
    ld [hl], h                                    ; $6544: $74
    ld [hl], h                                    ; $6545: $74
    ld [$e974], a                                 ; $6546: $ea $74 $e9
    ld [hl], h                                    ; $6549: $74
    ld [$e974], a                                 ; $654a: $ea $74 $e9
    ld [hl], h                                    ; $654d: $74
    ld [$e974], a                                 ; $654e: $ea $74 $e9
    ld [hl], h                                    ; $6551: $74
    ld [hl], h                                    ; $6552: $74
    ld [$e974], a                                 ; $6553: $ea $74 $e9
    ld [hl], h                                    ; $6556: $74
    ld [$e974], a                                 ; $6557: $ea $74 $e9
    inc b                                         ; $655a: $04
    ld [$e904], a                                 ; $655b: $ea $04 $e9
    inc b                                         ; $655e: $04
    ld [$e904], a                                 ; $655f: $ea $04 $e9
    inc b                                         ; $6562: $04
    inc b                                         ; $6563: $04
    ld [$e904], a                                 ; $6564: $ea $04 $e9
    inc h                                         ; $6567: $24
    ld [$e924], a                                 ; $6568: $ea $24 $e9
    inc h                                         ; $656b: $24
    ld [$e924], a                                 ; $656c: $ea $24 $e9
    inc h                                         ; $656f: $24
    inc h                                         ; $6570: $24
    ld [$e924], a                                 ; $6571: $ea $24 $e9
    inc h                                         ; $6574: $24
    ld [$e924], a                                 ; $6575: $ea $24 $e9
    ld b, h                                       ; $6578: $44
    ld [$e944], a                                 ; $6579: $ea $44 $e9
    ld b, h                                       ; $657c: $44
    ld [$e944], a                                 ; $657d: $ea $44 $e9
    ld b, h                                       ; $6580: $44
    ld b, h                                       ; $6581: $44
    ld [$e944], a                                 ; $6582: $ea $44 $e9
    sub h                                         ; $6585: $94
    ld [$e994], a                                 ; $6586: $ea $94 $e9
    sub h                                         ; $6589: $94
    ld [$e994], a                                 ; $658a: $ea $94 $e9
    sub h                                         ; $658d: $94
    sub h                                         ; $658e: $94
    ld [$e994], a                                 ; $658f: $ea $94 $e9
    sub h                                         ; $6592: $94
    ld [$e994], a                                 ; $6593: $ea $94 $e9
    ld d, h                                       ; $6596: $54
    ld [$e954], a                                 ; $6597: $ea $54 $e9
    ld d, h                                       ; $659a: $54
    ld [$e954], a                                 ; $659b: $ea $54 $e9
    ld d, h                                       ; $659e: $54
    ld d, h                                       ; $659f: $54
    ld [$e954], a                                 ; $65a0: $ea $54 $e9
    ld d, h                                       ; $65a3: $54
    ld [$e954], a                                 ; $65a4: $ea $54 $e9
    ld d, h                                       ; $65a7: $54
    ld [$e954], a                                 ; $65a8: $ea $54 $e9
    ld d, h                                       ; $65ab: $54
    ld d, h                                       ; $65ac: $54
    ld [$e954], a                                 ; $65ad: $ea $54 $e9
    ld d, h                                       ; $65b0: $54
    ld [$e954], a                                 ; $65b1: $ea $54 $e9
    ld d, h                                       ; $65b4: $54
    ld [$e954], a                                 ; $65b5: $ea $54 $e9
    ld d, h                                       ; $65b8: $54
    ld [$e954], a                                 ; $65b9: $ea $54 $e9
    ld d, h                                       ; $65bc: $54
    ld d, h                                       ; $65bd: $54
    ld [$e954], a                                 ; $65be: $ea $54 $e9
    ld d, h                                       ; $65c1: $54
    ld [$9474], a                                 ; $65c2: $ea $74 $94
    or h                                          ; $65c5: $b4
    jp hl                                         ; $65c6: $e9


    inc h                                         ; $65c7: $24
    ld [$b494], a                                 ; $65c8: $ea $94 $b4
    jp hl                                         ; $65cb: $e9


    inc h                                         ; $65cc: $24
    ld [hl], h                                    ; $65cd: $74
    ld [$ea0a], a                                 ; $65ce: $ea $0a $ea
    or a                                          ; $65d1: $b7
    rst $10                                       ; $65d2: $d7
    jp hl                                         ; $65d3: $e9


    ld e, d                                       ; $65d4: $5a
    ld b, a                                       ; $65d5: $47
    rst $10                                       ; $65d6: $d7
    sub a                                         ; $65d7: $97
    add a                                         ; $65d8: $87
    jp hl                                         ; $65d9: $e9


    rlca                                          ; $65da: $07
    ld [$e9b7], a                                 ; $65db: $ea $b7 $e9
    ld d, a                                       ; $65de: $57
    ld b, a                                       ; $65df: $47
    sub a                                         ; $65e0: $97
    add a                                         ; $65e1: $87
    xor $ab                                       ; $65e2: $ee $ab
    ld h, e                                       ; $65e4: $63
    ld sp, hl                                     ; $65e5: $f9
    ld e, h                                       ; $65e6: $5c
    rst $30                                       ; $65e7: $f7
    dec c                                         ; $65e8: $0d
    ei                                            ; $65e9: $fb
    inc sp                                        ; $65ea: $33
    ldh a, [$ff0d]                                ; $65eb: $f0 $0d
    nop                                           ; $65ed: $00
    nop                                           ; $65ee: $00
    ld a, [$e248]                                 ; $65ef: $fa $48 $e2
    rlca                                          ; $65f2: $07
    ld [$e904], a                                 ; $65f3: $ea $04 $e9
    rlca                                          ; $65f6: $07
    ld [$a494], a                                 ; $65f7: $ea $94 $a4
    or h                                          ; $65fa: $b4
    jp hl                                         ; $65fb: $e9


    rlca                                          ; $65fc: $07
    ld [$e904], a                                 ; $65fd: $ea $04 $e9
    rlca                                          ; $6600: $07
    ld [$a494], a                                 ; $6601: $ea $94 $a4
    or h                                          ; $6604: $b4
    jp hl                                         ; $6605: $e9


    rlca                                          ; $6606: $07
    ld [$e904], a                                 ; $6607: $ea $04 $e9
    rlca                                          ; $660a: $07
    ld [$a494], a                                 ; $660b: $ea $94 $a4
    or h                                          ; $660e: $b4
    jp hl                                         ; $660f: $e9


    rlca                                          ; $6610: $07
    rst $10                                       ; $6611: $d7
    ld [$d707], a                                 ; $6612: $ea $07 $d7
    ld d, a                                       ; $6615: $57
    jp hl                                         ; $6616: $e9


    inc b                                         ; $6617: $04
    ld [$5457], a                                 ; $6618: $ea $57 $54
    jp hl                                         ; $661b: $e9


    rlca                                          ; $661c: $07
    ld [$e957], a                                 ; $661d: $ea $57 $e9
    inc b                                         ; $6620: $04
    ld [$5457], a                                 ; $6621: $ea $57 $54
    jp hl                                         ; $6624: $e9


    rlca                                          ; $6625: $07
    ld [$e977], a                                 ; $6626: $ea $77 $e9
    inc h                                         ; $6629: $24
    ld [$7477], a                                 ; $662a: $ea $77 $74
    jp hl                                         ; $662d: $e9


    daa                                           ; $662e: $27
    ld [$e977], a                                 ; $662f: $ea $77 $e9
    inc h                                         ; $6632: $24
    ld [$7477], a                                 ; $6633: $ea $77 $74
    jp hl                                         ; $6636: $e9


    daa                                           ; $6637: $27
    ld [$e977], a                                 ; $6638: $ea $77 $e9
    inc b                                         ; $663b: $04
    ld [$7477], a                                 ; $663c: $ea $77 $74
    jp hl                                         ; $663f: $e9


    rlca                                          ; $6640: $07
    ld [$e977], a                                 ; $6641: $ea $77 $e9
    inc b                                         ; $6644: $04
    ld [$7477], a                                 ; $6645: $ea $77 $74
    jp hl                                         ; $6648: $e9


    rlca                                          ; $6649: $07
    ld [$6a5a], a                                 ; $664a: $ea $5a $6a
    ld a, d                                       ; $664d: $7a
    ld a, [bc]                                    ; $664e: $0a
    ld d, a                                       ; $664f: $57
    jp hl                                         ; $6650: $e9


    inc b                                         ; $6651: $04
    ld [$5457], a                                 ; $6652: $ea $57 $54
    jp hl                                         ; $6655: $e9


    rlca                                          ; $6656: $07
    ld [$e957], a                                 ; $6657: $ea $57 $e9
    inc b                                         ; $665a: $04
    ld [$5457], a                                 ; $665b: $ea $57 $54
    jp hl                                         ; $665e: $e9


    rlca                                          ; $665f: $07
    ld [$e977], a                                 ; $6660: $ea $77 $e9
    inc h                                         ; $6663: $24
    ld [$7477], a                                 ; $6664: $ea $77 $74
    jp hl                                         ; $6667: $e9


    daa                                           ; $6668: $27
    ld [$e977], a                                 ; $6669: $ea $77 $e9
    inc h                                         ; $666c: $24
    ld [$7477], a                                 ; $666d: $ea $77 $74
    jp hl                                         ; $6670: $e9


    daa                                           ; $6671: $27
    rlca                                          ; $6672: $07
    ld a, [$ea88]                                 ; $6673: $fa $88 $ea
    sub h                                         ; $6676: $94
    and h                                         ; $6677: $a4
    or h                                          ; $6678: $b4
    and h                                         ; $6679: $a4
    or h                                          ; $667a: $b4
    jp hl                                         ; $667b: $e9


    inc b                                         ; $667c: $04
    inc d                                         ; $667d: $14
    inc b                                         ; $667e: $04
    inc d                                         ; $667f: $14
    inc h                                         ; $6680: $24
    ld a, [$4548]                                 ; $6681: $fa $48 $45
    db $d3                                        ; $6684: $d3
    dec b                                         ; $6685: $05
    db $d3                                        ; $6686: $d3
    ld [$d395], a                                 ; $6687: $ea $95 $d3
    call nc, Call_000_07e9                        ; $668a: $d4 $e9 $07
    ld [$e904], a                                 ; $668d: $ea $04 $e9
    rlca                                          ; $6690: $07
    ld [$d757], a                                 ; $6691: $ea $57 $d7
    jp c, $e977                                   ; $6694: $da $77 $e9

    ld [hl], h                                    ; $6697: $74
    ld [$e977], a                                 ; $6698: $ea $77 $e9
    ld [hl], a                                    ; $669b: $77
    ld [$e927], a                                 ; $669c: $ea $27 $e9
    daa                                           ; $669f: $27
    ld [$e924], a                                 ; $66a0: $ea $24 $e9
    inc h                                         ; $66a3: $24
    inc h                                         ; $66a4: $24
    ld [$4727], a                                 ; $66a5: $ea $27 $47
    jp hl                                         ; $66a8: $e9


    ld b, h                                       ; $66a9: $44
    ld [$e947], a                                 ; $66aa: $ea $47 $e9
    ld b, a                                       ; $66ad: $47
    ld [$e997], a                                 ; $66ae: $ea $97 $e9
    sub a                                         ; $66b1: $97
    ld [$e994], a                                 ; $66b2: $ea $94 $e9
    sub h                                         ; $66b5: $94
    sub h                                         ; $66b6: $94
    ld [$6797], a                                 ; $66b7: $ea $97 $67
    jp hl                                         ; $66ba: $e9


    ld h, h                                       ; $66bb: $64
    ld [$e967], a                                 ; $66bc: $ea $67 $e9
    ld h, a                                       ; $66bf: $67
    ld [$b7ea], a                                 ; $66c0: $ea $ea $b7
    jp hl                                         ; $66c3: $e9


    or a                                          ; $66c4: $b7
    ld [$e9b4], a                                 ; $66c5: $ea $b4 $e9
    jp hl                                         ; $66c8: $e9


    or h                                          ; $66c9: $b4
    or h                                          ; $66ca: $b4
    ld [$b7ea], a                                 ; $66cb: $ea $ea $b7
    jp hl                                         ; $66ce: $e9


    ld b, a                                       ; $66cf: $47
    call nc, Call_00f_47e9                        ; $66d0: $d4 $e9 $47
    call nc, $47ea                                ; $66d3: $d4 $ea $47
    call nc, Call_00f_47e9                        ; $66d6: $d4 $e9 $47
    call nc, $47ea                                ; $66d9: $d4 $ea $47
    rst $10                                       ; $66dc: $d7
    sbc c                                         ; $66dd: $99
    ld c, c                                       ; $66de: $49
    sbc c                                         ; $66df: $99
    ld c, c                                       ; $66e0: $49
    sub a                                         ; $66e1: $97
    ld b, a                                       ; $66e2: $47
    cp c                                          ; $66e3: $b9
    ld c, c                                       ; $66e4: $49
    cp c                                          ; $66e5: $b9
    ld c, c                                       ; $66e6: $49
    or a                                          ; $66e7: $b7
    ld b, a                                       ; $66e8: $47
    cp c                                          ; $66e9: $b9
    ld c, c                                       ; $66ea: $49
    cp c                                          ; $66eb: $b9
    ld c, c                                       ; $66ec: $49
    or a                                          ; $66ed: $b7
    ld b, a                                       ; $66ee: $47
    sbc c                                         ; $66ef: $99
    ld c, c                                       ; $66f0: $49
    sbc c                                         ; $66f1: $99
    add a                                         ; $66f2: $87
    sub h                                         ; $66f3: $94
    or a                                          ; $66f4: $b7
    ld b, a                                       ; $66f5: $47
    sbc c                                         ; $66f6: $99
    ld c, c                                       ; $66f7: $49
    sbc c                                         ; $66f8: $99
    ld c, c                                       ; $66f9: $49
    sub a                                         ; $66fa: $97
    ld b, a                                       ; $66fb: $47
    cp c                                          ; $66fc: $b9
    ld c, c                                       ; $66fd: $49
    cp c                                          ; $66fe: $b9
    ld c, c                                       ; $66ff: $49
    or a                                          ; $6700: $b7
    ld b, a                                       ; $6701: $47
    cp c                                          ; $6702: $b9
    ld c, c                                       ; $6703: $49
    cp c                                          ; $6704: $b9
    ld c, c                                       ; $6705: $49
    or a                                          ; $6706: $b7
    ld b, a                                       ; $6707: $47
    sbc c                                         ; $6708: $99
    ld c, c                                       ; $6709: $49
    sbc c                                         ; $670a: $99
    sub a                                         ; $670b: $97
    sub h                                         ; $670c: $94
    sub a                                         ; $670d: $97
    rst $10                                       ; $670e: $d7
    ld e, c                                       ; $670f: $59
    ld d, a                                       ; $6710: $57
    jp hl                                         ; $6711: $e9


    inc b                                         ; $6712: $04
    ld [$7957], a                                 ; $6713: $ea $57 $79
    ld [hl], a                                    ; $6716: $77
    jp hl                                         ; $6717: $e9


    inc h                                         ; $6718: $24
    ld [$4977], a                                 ; $6719: $ea $77 $49
    ld b, a                                       ; $671c: $47
    or h                                          ; $671d: $b4
    ld b, a                                       ; $671e: $47
    sbc c                                         ; $671f: $99
    sub a                                         ; $6720: $97
    jp hl                                         ; $6721: $e9


    ld b, h                                       ; $6722: $44
    ld [$5997], a                                 ; $6723: $ea $97 $59
    ld d, a                                       ; $6726: $57
    jp hl                                         ; $6727: $e9


    inc b                                         ; $6728: $04
    ld [$7957], a                                 ; $6729: $ea $57 $79
    ld [hl], a                                    ; $672c: $77
    jp hl                                         ; $672d: $e9


    ld [hl], h                                    ; $672e: $74
    ld [$e977], a                                 ; $672f: $ea $77 $e9
    add hl, bc                                    ; $6732: $09
    rlca                                          ; $6733: $07
    ld [hl], h                                    ; $6734: $74
    rlca                                          ; $6735: $07
    ld [$7779], a                                 ; $6736: $ea $79 $77
    jp hl                                         ; $6739: $e9


    inc b                                         ; $673a: $04
    ld [$5977], a                                 ; $673b: $ea $77 $59
    ld d, a                                       ; $673e: $57
    jp hl                                         ; $673f: $e9


    inc b                                         ; $6740: $04
    ld [$2957], a                                 ; $6741: $ea $57 $29
    daa                                           ; $6744: $27
    jp hl                                         ; $6745: $e9


    inc h                                         ; $6746: $24
    ld [$4927], a                                 ; $6747: $ea $27 $49
    ld b, a                                       ; $674a: $47
    or h                                          ; $674b: $b4
    ld b, a                                       ; $674c: $47
    sbc c                                         ; $674d: $99
    sub a                                         ; $674e: $97
    jp hl                                         ; $674f: $e9


    ld b, h                                       ; $6750: $44
    ld [$2797], a                                 ; $6751: $ea $97 $27
    sub h                                         ; $6754: $94
    daa                                           ; $6755: $27
    sub a                                         ; $6756: $97
    daa                                           ; $6757: $27
    sub a                                         ; $6758: $97
    inc h                                         ; $6759: $24
    sub a                                         ; $675a: $97
    daa                                           ; $675b: $27
    ld [hl], a                                    ; $675c: $77
    jp hl                                         ; $675d: $e9


    inc h                                         ; $675e: $24
    ld [$e977], a                                 ; $675f: $ea $77 $e9
    daa                                           ; $6762: $27
    ld [$e977], a                                 ; $6763: $ea $77 $e9
    daa                                           ; $6766: $27
    inc h                                         ; $6767: $24
    ld [$d777], a                                 ; $6768: $ea $77 $d7
    ld b, a                                       ; $676b: $47
    ld d, a                                       ; $676c: $57
    add a                                         ; $676d: $87
    sub a                                         ; $676e: $97
    ld b, a                                       ; $676f: $47
    ld d, a                                       ; $6770: $57
    add a                                         ; $6771: $87
    sub a                                         ; $6772: $97
    ld b, a                                       ; $6773: $47
    ld d, a                                       ; $6774: $57
    add a                                         ; $6775: $87
    sub a                                         ; $6776: $97
    or a                                          ; $6777: $b7
    jp hl                                         ; $6778: $e9


    rlca                                          ; $6779: $07
    daa                                           ; $677a: $27
    ld b, a                                       ; $677b: $47
    ld [$15ee], a                                 ; $677c: $ea $ee $15
    ld h, [hl]                                    ; $677f: $66
    ld sp, hl                                     ; $6780: $f9
    and b                                         ; $6781: $a0
    ldh a, [rSC]                                  ; $6782: $f0 $02
    ld [bc], a                                    ; $6784: $02
    nop                                           ; $6785: $00
    rst $30                                       ; $6786: $f7
    add hl, bc                                    ; $6787: $09
    ei                                            ; $6788: $fb
    inc de                                        ; $6789: $13
    db $e4                                        ; $678a: $e4
    ld a, [$0734]                                 ; $678b: $fa $34 $07
    ld a, [$ea74]                                 ; $678e: $fa $74 $ea
    or e                                          ; $6791: $b3
    jp hl                                         ; $6792: $e9


    inc bc                                        ; $6793: $03
    ld [$fab3], a                                 ; $6794: $ea $b3 $fa
    inc [hl]                                      ; $6797: $34
    ld [hl], a                                    ; $6798: $77
    or a                                          ; $6799: $b7
    jp hl                                         ; $679a: $e9


    rlca                                          ; $679b: $07
    daa                                           ; $679c: $27
    ld [hl], a                                    ; $679d: $77
    sub a                                         ; $679e: $97
    or a                                          ; $679f: $b7
    rst $28                                       ; $67a0: $ef
    ld sp, hl                                     ; $67a1: $f9
    and b                                         ; $67a2: $a0
    ldh a, [rSC]                                  ; $67a3: $f0 $02
    ld [bc], a                                    ; $67a5: $02
    nop                                           ; $67a6: $00
    rst $30                                       ; $67a7: $f7
    ld [$23fb], sp                                ; $67a8: $08 $fb $23
    db $e3                                        ; $67ab: $e3
    ld a, [$7734]                                 ; $67ac: $fa $34 $77
    ld a, [$6374]                                 ; $67af: $fa $74 $63
    ld [hl], e                                    ; $67b2: $73
    ld h, e                                       ; $67b3: $63
    ld a, [$2734]                                 ; $67b4: $fa $34 $27
    ld h, a                                       ; $67b7: $67
    ld [hl], a                                    ; $67b8: $77
    or a                                          ; $67b9: $b7
    jp hl                                         ; $67ba: $e9


    rlca                                          ; $67bb: $07
    daa                                           ; $67bc: $27
    ld h, a                                       ; $67bd: $67
    rst $28                                       ; $67be: $ef
    ld sp, hl                                     ; $67bf: $f9
    sub [hl]                                      ; $67c0: $96
    push af                                       ; $67c1: $f5
    nop                                           ; $67c2: $00
    db $10                                        ; $67c3: $10
    inc b                                         ; $67c4: $04
    ldh [c], a                                    ; $67c5: $e2
    ei                                            ; $67c6: $fb
    inc sp                                        ; $67c7: $33
    ldh a, [rNR41]                                ; $67c8: $f0 $20
    inc b                                         ; $67ca: $04
    nop                                           ; $67cb: $00
    ld a, [$f743]                                 ; $67cc: $fa $43 $f7
    ld [$08f1], sp                                ; $67cf: $08 $f1 $08
    rlca                                          ; $67d2: $07
    rst $10                                       ; $67d3: $d7
    ld d, a                                       ; $67d4: $57
    rst $10                                       ; $67d5: $d7
    daa                                           ; $67d6: $27
    rst $10                                       ; $67d7: $d7
    rlca                                          ; $67d8: $07
    rst $10                                       ; $67d9: $d7
    rlca                                          ; $67da: $07
    daa                                           ; $67db: $27
    rst $10                                       ; $67dc: $d7
    ld [$e9a7], a                                 ; $67dd: $ea $a7 $e9
    ldh a, [c]                                    ; $67e0: $f2
    rlca                                          ; $67e1: $07
    rst $10                                       ; $67e2: $d7
    ld d, a                                       ; $67e3: $57
    rst $10                                       ; $67e4: $d7
    daa                                           ; $67e5: $27
    rst $10                                       ; $67e6: $d7
    rlca                                          ; $67e7: $07
    rst $10                                       ; $67e8: $d7
    rlca                                          ; $67e9: $07
    daa                                           ; $67ea: $27
    rst $10                                       ; $67eb: $d7
    ld [$e9a7], a                                 ; $67ec: $ea $a7 $e9
    rlca                                          ; $67ef: $07
    rst $10                                       ; $67f0: $d7
    db $dd                                        ; $67f1: $dd
    rst RST_18                                    ; $67f2: $df
    rlca                                          ; $67f3: $07
    rst $10                                       ; $67f4: $d7
    ld d, a                                       ; $67f5: $57
    rst $10                                       ; $67f6: $d7
    daa                                           ; $67f7: $27
    rst $10                                       ; $67f8: $d7
    ld [hl], a                                    ; $67f9: $77
    rst $10                                       ; $67fa: $d7
    ld [hl], a                                    ; $67fb: $77
    ld d, a                                       ; $67fc: $57
    rst $10                                       ; $67fd: $d7
    ld [hl], a                                    ; $67fe: $77
    rlca                                          ; $67ff: $07
    rst $10                                       ; $6800: $d7
    db $dd                                        ; $6801: $dd
    rst RST_18                                    ; $6802: $df
    pop af                                        ; $6803: $f1
    inc b                                         ; $6804: $04
    ld [hl], a                                    ; $6805: $77
    rst $10                                       ; $6806: $d7
    and a                                         ; $6807: $a7
    rst $10                                       ; $6808: $d7
    and a                                         ; $6809: $a7
    rst $10                                       ; $680a: $d7
    sub a                                         ; $680b: $97
    rst $10                                       ; $680c: $d7
    sub a                                         ; $680d: $97
    ld [hl], a                                    ; $680e: $77
    rst $10                                       ; $680f: $d7
    daa                                           ; $6810: $27
    ldh a, [c]                                    ; $6811: $f2
    pop af                                        ; $6812: $f1
    ld [$5777], sp                                ; $6813: $08 $77 $57
    rst $10                                       ; $6816: $d7
    ld [hl], a                                    ; $6817: $77
    rst $10                                       ; $6818: $d7
    ld b, a                                       ; $6819: $47
    daa                                           ; $681a: $27
    rst $10                                       ; $681b: $d7
    ld b, a                                       ; $681c: $47
    rst $10                                       ; $681d: $d7
    ld d, a                                       ; $681e: $57
    rst $10                                       ; $681f: $d7
    ldh a, [c]                                    ; $6820: $f2
    xor $d0                                       ; $6821: $ee $d0
    ld h, a                                       ; $6823: $67
    ld sp, hl                                     ; $6824: $f9
    sub [hl]                                      ; $6825: $96
    push af                                       ; $6826: $f5
    nop                                           ; $6827: $00
    db $10                                        ; $6828: $10
    ld [$21fb], sp                                ; $6829: $08 $fb $21
    ldh a, [rNR10]                                ; $682c: $f0 $10
    inc b                                         ; $682e: $04
    nop                                           ; $682f: $00
    ld a, [$e243]                                 ; $6830: $fa $43 $e2
    rst $30                                       ; $6833: $f7
    ld [$10f1], sp                                ; $6834: $08 $f1 $10
    and a                                         ; $6837: $a7
    ld [hl], a                                    ; $6838: $77
    ld d, a                                       ; $6839: $57
    and a                                         ; $683a: $a7
    ld [hl], a                                    ; $683b: $77
    ld d, a                                       ; $683c: $57
    ldh a, [c]                                    ; $683d: $f2
    pop af                                        ; $683e: $f1
    inc b                                         ; $683f: $04
    and a                                         ; $6840: $a7
    and a                                         ; $6841: $a7
    sub a                                         ; $6842: $97
    and a                                         ; $6843: $a7
    and a                                         ; $6844: $a7
    sub a                                         ; $6845: $97
    and a                                         ; $6846: $a7
    and a                                         ; $6847: $a7
    sub a                                         ; $6848: $97
    and a                                         ; $6849: $a7
    and a                                         ; $684a: $a7
    ld [hl], a                                    ; $684b: $77
    ldh a, [c]                                    ; $684c: $f2
    jp hl                                         ; $684d: $e9


    pop af                                        ; $684e: $f1
    inc b                                         ; $684f: $04
    daa                                           ; $6850: $27
    rst $10                                       ; $6851: $d7
    ld d, a                                       ; $6852: $57
    rst $10                                       ; $6853: $d7
    ld d, a                                       ; $6854: $57
    rst $10                                       ; $6855: $d7
    ld b, a                                       ; $6856: $47
    rst $10                                       ; $6857: $d7
    ld b, a                                       ; $6858: $47
    daa                                           ; $6859: $27
    rst $10                                       ; $685a: $d7
    rlca                                          ; $685b: $07
    ldh a, [c]                                    ; $685c: $f2
    pop af                                        ; $685d: $f1
    ld [$2747], sp                                ; $685e: $08 $47 $27
    rst $10                                       ; $6861: $d7
    ld b, a                                       ; $6862: $47
    rst $10                                       ; $6863: $d7
    rlca                                          ; $6864: $07
    ld [$d7a7], a                                 ; $6865: $ea $a7 $d7
    jp hl                                         ; $6868: $e9


    rlca                                          ; $6869: $07
    rst $10                                       ; $686a: $d7
    daa                                           ; $686b: $27
    rst $10                                       ; $686c: $d7
    ldh a, [c]                                    ; $686d: $f2
    ld [$35ee], a                                 ; $686e: $ea $ee $35
    ld l, b                                       ; $6871: $68
    ld sp, hl                                     ; $6872: $f9
    sub [hl]                                      ; $6873: $96
    ld a, [$f748]                                 ; $6874: $fa $48 $f7
    dec c                                         ; $6877: $0d
    ei                                            ; $6878: $fb
    inc sp                                        ; $6879: $33
    ldh a, [$ff0d]                                ; $687a: $f0 $0d
    nop                                           ; $687c: $00
    nop                                           ; $687d: $00
    ldh [c], a                                    ; $687e: $e2
    pop af                                        ; $687f: $f1
    inc b                                         ; $6880: $04
    ld a, [bc]                                    ; $6881: $0a
    ld [$e9a7], a                                 ; $6882: $ea $a7 $e9
    ld a, [bc]                                    ; $6885: $0a
    ld [$e977], a                                 ; $6886: $ea $77 $e9
    ld a, [bc]                                    ; $6889: $0a
    rlca                                          ; $688a: $07
    ld [$777a], a                                 ; $688b: $ea $7a $77
    jp hl                                         ; $688e: $e9


    ldh a, [c]                                    ; $688f: $f2
    ld [$04f1], a                                 ; $6890: $ea $f1 $04
    xor d                                         ; $6893: $aa
    ld [hl], a                                    ; $6894: $77
    xor d                                         ; $6895: $aa
    ld d, a                                       ; $6896: $57
    xor d                                         ; $6897: $aa
    and a                                         ; $6898: $a7
    ld a, d                                       ; $6899: $7a
    ld [hl], a                                    ; $689a: $77
    ldh a, [c]                                    ; $689b: $f2
    jp hl                                         ; $689c: $e9


    pop af                                        ; $689d: $f1
    ld [$ea0a], sp                                ; $689e: $08 $0a $ea
    and a                                         ; $68a1: $a7
    jp hl                                         ; $68a2: $e9


    ld a, [bc]                                    ; $68a3: $0a
    ld [$e977], a                                 ; $68a4: $ea $77 $e9
    ld a, [bc]                                    ; $68a7: $0a
    rlca                                          ; $68a8: $07
    ld [$575a], a                                 ; $68a9: $ea $5a $57
    jp hl                                         ; $68ac: $e9


    ldh a, [c]                                    ; $68ad: $f2
    pop af                                        ; $68ae: $f1
    inc b                                         ; $68af: $04
    rlca                                          ; $68b0: $07
    ld [$e9aa], a                                 ; $68b1: $ea $aa $e9
    ld a, [bc]                                    ; $68b4: $0a
    ld [$e977], a                                 ; $68b5: $ea $77 $e9
    ld a, [bc]                                    ; $68b8: $0a
    ld a, [bc]                                    ; $68b9: $0a
    ld [$e97a], a                                 ; $68ba: $ea $7a $e9
    ldh a, [c]                                    ; $68bd: $f2
    ld [$04f1], a                                 ; $68be: $ea $f1 $04
    and a                                         ; $68c1: $a7
    ld a, d                                       ; $68c2: $7a
    xor d                                         ; $68c3: $aa
    ld [hl], a                                    ; $68c4: $77
    xor d                                         ; $68c5: $aa
    xor d                                         ; $68c6: $aa
    ld e, d                                       ; $68c7: $5a
    ldh a, [c]                                    ; $68c8: $f2
    jp hl                                         ; $68c9: $e9


    xor $7f                                       ; $68ca: $ee $7f
    ld l, b                                       ; $68cc: $68
    ld sp, hl                                     ; $68cd: $f9
    ld d, b                                       ; $68ce: $50
    push af                                       ; $68cf: $f5
    ld [$0810], sp                                ; $68d0: $08 $10 $08
    db $e3                                        ; $68d3: $e3
    ei                                            ; $68d4: $fb
    inc de                                        ; $68d5: $13
    ldh a, [rNR41]                                ; $68d6: $f0 $20
    inc b                                         ; $68d8: $04
    nop                                           ; $68d9: $00
    ld a, [$f774]                                 ; $68da: $fa $74 $f7
    dec b                                         ; $68dd: $05
    dec h                                         ; $68de: $25
    ld [$55b5], a                                 ; $68df: $ea $b5 $55
    rst RST_08                                    ; $68e2: $cf
    dec c                                         ; $68e3: $0d
    ld [$e9bd], a                                 ; $68e4: $ea $bd $e9
    dec h                                         ; $68e7: $25
    ld [hl], l                                    ; $68e8: $75
    jp hl                                         ; $68e9: $e9


    dec b                                         ; $68ea: $05
    rst RST_08                                    ; $68eb: $cf
    ld [$cdbd], a                                 ; $68ec: $ea $bd $cd
    jp hl                                         ; $68ef: $e9


    xor $de                                       ; $68f0: $ee $de
    ld l, b                                       ; $68f2: $68
    ld sp, hl                                     ; $68f3: $f9
    ld d, b                                       ; $68f4: $50
    push af                                       ; $68f5: $f5
    ld [$0810], sp                                ; $68f6: $08 $10 $08
    db $e3                                        ; $68f9: $e3
    ei                                            ; $68fa: $fb
    inc hl                                        ; $68fb: $23
    ldh a, [rNR41]                                ; $68fc: $f0 $20
    inc b                                         ; $68fe: $04
    nop                                           ; $68ff: $00
    ld a, [$f774]                                 ; $6900: $fa $74 $f7
    dec b                                         ; $6903: $05
    db $d3                                        ; $6904: $d3
    dec b                                         ; $6905: $05
    ld [$2375], a                                 ; $6906: $ea $75 $23
    rst RST_08                                    ; $6909: $cf
    call $d3cd                                    ; $690a: $cd $cd $d3
    ld d, l                                       ; $690d: $55
    or l                                          ; $690e: $b5
    jp hl                                         ; $690f: $e9


    inc hl                                        ; $6910: $23
    rst RST_08                                    ; $6911: $cf
    call $eecd                                    ; $6912: $cd $cd $ee
    inc b                                         ; $6915: $04
    ld l, c                                       ; $6916: $69
    ld sp, hl                                     ; $6917: $f9
    ld d, b                                       ; $6918: $50
    ld a, [$f744]                                 ; $6919: $fa $44 $f7
    inc c                                         ; $691c: $0c
    ei                                            ; $691d: $fb
    inc sp                                        ; $691e: $33
    ldh a, [rTMA]                                 ; $691f: $f0 $06
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    pop hl                                        ; $6923: $e1
    pop af                                        ; $6924: $f1
    inc b                                         ; $6925: $04
    ld a, d                                       ; $6926: $7a
    ld [hl], a                                    ; $6927: $77
    ld [hl], a                                    ; $6928: $77
    ld a, d                                       ; $6929: $7a
    ld [hl], a                                    ; $692a: $77
    ld [hl], a                                    ; $692b: $77
    ldh a, [c]                                    ; $692c: $f2
    xor $24                                       ; $692d: $ee $24
    ld l, c                                       ; $692f: $69
    ld sp, hl                                     ; $6930: $f9
    ld e, d                                       ; $6931: $5a
    push af                                       ; $6932: $f5
    nop                                           ; $6933: $00
    ld [$e20a], sp                                ; $6934: $08 $0a $e2
    ei                                            ; $6937: $fb
    inc de                                        ; $6938: $13
    ldh a, [rSC]                                  ; $6939: $f0 $02
    inc b                                         ; $693b: $04
    nop                                           ; $693c: $00
    ld a, [$f763]                                 ; $693d: $fa $63 $f7
    ld b, $f1                                     ; $6940: $06 $f1
    ld [bc], a                                    ; $6942: $02
    ld e, l                                       ; $6943: $5d
    call $cd4d                                    ; $6944: $cd $4d $cd
    ld e, d                                       ; $6947: $5a
    ld b, a                                       ; $6948: $47
    rlca                                          ; $6949: $07
    call $cdcd                                    ; $694a: $cd $cd $cd
    ldh a, [c]                                    ; $694d: $f2
    ld e, l                                       ; $694e: $5d
    call $57cd                                    ; $694f: $cd $cd $57
    ld [hl], a                                    ; $6952: $77
    sbc d                                         ; $6953: $9a
    ld a, l                                       ; $6954: $7d
    call Call_000_0acf                            ; $6955: $cd $cf $0a
    ld e, l                                       ; $6958: $5d
    call $57cd                                    ; $6959: $cd $cd $57
    ld [hl], a                                    ; $695c: $77
    sbc d                                         ; $695d: $9a
    ld a, l                                       ; $695e: $7d
    call $cdcd                                    ; $695f: $cd $cd $cd
    ld e, l                                       ; $6962: $5d
    call $cd4d                                    ; $6963: $cd $4d $cd
    ld e, d                                       ; $6966: $5a
    ld b, a                                       ; $6967: $47
    rlca                                          ; $6968: $07
    call $cdcd                                    ; $6969: $cd $cd $cd
    pop af                                        ; $696c: $f1
    ld [bc], a                                    ; $696d: $02
    ld e, d                                       ; $696e: $5a
    ld d, a                                       ; $696f: $57
    ld d, a                                       ; $6970: $57
    ld e, d                                       ; $6971: $5a
    ld d, a                                       ; $6972: $57
    ld d, a                                       ; $6973: $57
    ld e, d                                       ; $6974: $5a
    ld d, a                                       ; $6975: $57
    ld d, a                                       ; $6976: $57
    ld d, a                                       ; $6977: $57
    ld d, a                                       ; $6978: $57
    ld d, a                                       ; $6979: $57
    ld d, a                                       ; $697a: $57
    ld c, d                                       ; $697b: $4a
    ld b, a                                       ; $697c: $47
    ld b, a                                       ; $697d: $47
    ld c, d                                       ; $697e: $4a
    ld b, a                                       ; $697f: $47
    ld b, a                                       ; $6980: $47
    ld c, d                                       ; $6981: $4a
    ld b, a                                       ; $6982: $47
    ld b, a                                       ; $6983: $47
    ld b, a                                       ; $6984: $47
    ld b, a                                       ; $6985: $47
    ld b, l                                       ; $6986: $45
    ld b, l                                       ; $6987: $45
    ld b, l                                       ; $6988: $45
    ldh a, [c]                                    ; $6989: $f2
    xor $41                                       ; $698a: $ee $41
    ld l, c                                       ; $698c: $69
    ld sp, hl                                     ; $698d: $f9
    ld e, d                                       ; $698e: $5a
    push af                                       ; $698f: $f5
    nop                                           ; $6990: $00
    ld [$e20a], sp                                ; $6991: $08 $0a $e2
    ei                                            ; $6994: $fb
    inc hl                                        ; $6995: $23
    ldh a, [rSC]                                  ; $6996: $f0 $02
    inc b                                         ; $6998: $04
    nop                                           ; $6999: $00
    ld a, [$f763]                                 ; $699a: $fa $63 $f7
    inc b                                         ; $699d: $04
    pop af                                        ; $699e: $f1
    ld [bc], a                                    ; $699f: $02
    dec c                                         ; $69a0: $0d
    call $bdea                                    ; $69a1: $cd $ea $bd
    call Call_000_0ae9                            ; $69a4: $cd $e9 $0a
    ld [$77b7], a                                 ; $69a7: $ea $b7 $77
    call $cdcd                                    ; $69aa: $cd $cd $cd
    jp hl                                         ; $69ad: $e9


    ldh a, [c]                                    ; $69ae: $f2
    dec c                                         ; $69af: $0d
    call $07cd                                    ; $69b0: $cd $cd $07
    daa                                           ; $69b3: $27
    ld c, d                                       ; $69b4: $4a
    dec l                                         ; $69b5: $2d
    call $ca4d                                    ; $69b6: $cd $4d $ca
    ld [$e97a], a                                 ; $69b9: $ea $7a $e9
    dec c                                         ; $69bc: $0d
    call $07cd                                    ; $69bd: $cd $cd $07
    daa                                           ; $69c0: $27
    ld c, d                                       ; $69c1: $4a
    dec l                                         ; $69c2: $2d
    call $cd4d                                    ; $69c3: $cd $4d $cd
    dec c                                         ; $69c6: $0d
    call $bdea                                    ; $69c7: $cd $ea $bd
    call Call_000_0ae9                            ; $69ca: $cd $e9 $0a
    ld [$77b7], a                                 ; $69cd: $ea $b7 $77
    call $cdcd                                    ; $69d0: $cd $cd $cd
    jp hl                                         ; $69d3: $e9


    pop af                                        ; $69d4: $f1
    ld [bc], a                                    ; $69d5: $02
    ld a, [bc]                                    ; $69d6: $0a
    rlca                                          ; $69d7: $07
    rlca                                          ; $69d8: $07
    ld a, [bc]                                    ; $69d9: $0a
    rlca                                          ; $69da: $07
    rlca                                          ; $69db: $07
    ld a, [bc]                                    ; $69dc: $0a
    rlca                                          ; $69dd: $07
    rlca                                          ; $69de: $07
    rlca                                          ; $69df: $07
    rlca                                          ; $69e0: $07
    rlca                                          ; $69e1: $07
    rlca                                          ; $69e2: $07
    ld [$b7ba], a                                 ; $69e3: $ea $ba $b7
    or a                                          ; $69e6: $b7
    cp d                                          ; $69e7: $ba
    or a                                          ; $69e8: $b7
    or a                                          ; $69e9: $b7
    cp d                                          ; $69ea: $ba
    or a                                          ; $69eb: $b7
    or a                                          ; $69ec: $b7
    or a                                          ; $69ed: $b7
    or a                                          ; $69ee: $b7
    or l                                          ; $69ef: $b5
    or l                                          ; $69f0: $b5
    or l                                          ; $69f1: $b5
    jp hl                                         ; $69f2: $e9


    ldh a, [c]                                    ; $69f3: $f2
    xor $9e                                       ; $69f4: $ee $9e
    ld l, c                                       ; $69f6: $69
    ld sp, hl                                     ; $69f7: $f9
    ld e, d                                       ; $69f8: $5a
    ld a, [$f748]                                 ; $69f9: $fa $48 $f7
    dec c                                         ; $69fc: $0d
    ei                                            ; $69fd: $fb
    inc sp                                        ; $69fe: $33
    ldh a, [$ff0d]                                ; $69ff: $f0 $0d
    nop                                           ; $6a01: $00
    nop                                           ; $6a02: $00
    ldh [c], a                                    ; $6a03: $e2
    ld a, [bc]                                    ; $6a04: $0a
    rlca                                          ; $6a05: $07
    rlca                                          ; $6a06: $07
    ld a, [bc]                                    ; $6a07: $0a
    rlca                                          ; $6a08: $07
    rlca                                          ; $6a09: $07
    xor $04                                       ; $6a0a: $ee $04
    ld l, d                                       ; $6a0c: $6a
    ld sp, hl                                     ; $6a0d: $f9
    ld h, h                                       ; $6a0e: $64
    push af                                       ; $6a0f: $f5
    nop                                           ; $6a10: $00
    db $10                                        ; $6a11: $10
    inc b                                         ; $6a12: $04
    pop hl                                        ; $6a13: $e1
    ei                                            ; $6a14: $fb
    inc sp                                        ; $6a15: $33
    ldh a, [rSB]                                  ; $6a16: $f0 $01
    inc b                                         ; $6a18: $04
    nop                                           ; $6a19: $00
    ld a, [$f763]                                 ; $6a1a: $fa $63 $f7
    ld [$39fe], sp                                ; $6a1d: $08 $fe $39
    ld l, d                                       ; $6a20: $6a
    cp $4a                                        ; $6a21: $fe $4a
    ld l, d                                       ; $6a23: $6a
    cp $8d                                        ; $6a24: $fe $8d
    ld l, d                                       ; $6a26: $6a
    cp $4a                                        ; $6a27: $fe $4a
    ld l, d                                       ; $6a29: $6a
    cp $a9                                        ; $6a2a: $fe $a9
    ld l, d                                       ; $6a2c: $6a
    cp $bf                                        ; $6a2d: $fe $bf
    ld l, d                                       ; $6a2f: $6a
    cp $4a                                        ; $6a30: $fe $4a
    ld l, d                                       ; $6a32: $6a
    cp $8d                                        ; $6a33: $fe $8d
    ld l, d                                       ; $6a35: $6a
    xor $1e                                       ; $6a36: $ee $1e
    ld l, d                                       ; $6a38: $6a
    pop af                                        ; $6a39: $f1
    ld [bc], a                                    ; $6a3a: $02
    ld e, c                                       ; $6a3b: $59
    ld e, c                                       ; $6a3c: $59
    scf                                           ; $6a3d: $37
    ld e, c                                       ; $6a3e: $59
    ld e, c                                       ; $6a3f: $59
    rlca                                          ; $6a40: $07
    ld e, c                                       ; $6a41: $59
    ld e, c                                       ; $6a42: $59
    scf                                           ; $6a43: $37
    ld d, a                                       ; $6a44: $57
    ld d, a                                       ; $6a45: $57
    rlca                                          ; $6a46: $07
    scf                                           ; $6a47: $37
    ldh a, [c]                                    ; $6a48: $f2
    rst $28                                       ; $6a49: $ef
    and a                                         ; $6a4a: $a7
    jp hl                                         ; $6a4b: $e9


    inc b                                         ; $6a4c: $04
    inc h                                         ; $6a4d: $24
    rlca                                          ; $6a4e: $07
    ld [$e9a7], a                                 ; $6a4f: $ea $a7 $e9
    inc b                                         ; $6a52: $04
    inc h                                         ; $6a53: $24
    inc b                                         ; $6a54: $04
    ld [$e9a4], a                                 ; $6a55: $ea $a4 $e9
    inc b                                         ; $6a58: $04
    inc h                                         ; $6a59: $24
    inc b                                         ; $6a5a: $04
    call nc, $a7ea                                ; $6a5b: $d4 $ea $a7
    jp hl                                         ; $6a5e: $e9


    inc b                                         ; $6a5f: $04
    inc h                                         ; $6a60: $24
    rlca                                          ; $6a61: $07
    ld [$e9a7], a                                 ; $6a62: $ea $a7 $e9
    inc b                                         ; $6a65: $04
    inc h                                         ; $6a66: $24
    inc b                                         ; $6a67: $04
    ld [$e9a4], a                                 ; $6a68: $ea $a4 $e9
    inc b                                         ; $6a6b: $04
    reti                                          ; $6a6c: $d9


    ld [$e9a7], a                                 ; $6a6d: $ea $a7 $e9
    inc b                                         ; $6a70: $04
    inc h                                         ; $6a71: $24
    rlca                                          ; $6a72: $07
    ld [$e9a7], a                                 ; $6a73: $ea $a7 $e9
    inc b                                         ; $6a76: $04
    inc h                                         ; $6a77: $24
    inc b                                         ; $6a78: $04
    ld [$e9a4], a                                 ; $6a79: $ea $a4 $e9
    inc b                                         ; $6a7c: $04
    inc h                                         ; $6a7d: $24
    inc b                                         ; $6a7e: $04
    call nc, $a7ea                                ; $6a7f: $d4 $ea $a7
    jp hl                                         ; $6a82: $e9


    inc b                                         ; $6a83: $04
    inc h                                         ; $6a84: $24
    rlca                                          ; $6a85: $07
    ld [$e9a7], a                                 ; $6a86: $ea $a7 $e9
    rlca                                          ; $6a89: $07
    call c, $efea                                 ; $6a8a: $dc $ea $ef
    jp hl                                         ; $6a8d: $e9


    ld a, d                                       ; $6a8e: $7a
    ld a, [hl+]                                   ; $6a8f: $2a
    add hl, hl                                    ; $6a90: $29
    ld b, d                                       ; $6a91: $42
    ld [hl+], a                                   ; $6a92: $22
    ld a, [bc]                                    ; $6a93: $0a
    ld a, d                                       ; $6a94: $7a
    add hl, hl                                    ; $6a95: $29
    ld b, d                                       ; $6a96: $42
    ld [hl+], a                                   ; $6a97: $22
    ld a, [bc]                                    ; $6a98: $0a

    db $da, $7a, $29

    ld b, h                                       ; $6a9c: $44
    ld a, [hl+]                                   ; $6a9d: $2a
    ld a, [bc]                                    ; $6a9e: $0a
    ld a, d                                       ; $6a9f: $7a
    add hl, hl                                    ; $6aa0: $29
    ld b, d                                       ; $6aa1: $42
    ld [hl+], a                                   ; $6aa2: $22
    rlca                                          ; $6aa3: $07
    rst $10                                       ; $6aa4: $d7
    daa                                           ; $6aa5: $27
    rst $10                                       ; $6aa6: $d7
    ld [$e9ef], a                                 ; $6aa7: $ea $ef $e9
    ld d, h                                       ; $6aaa: $54
    ld b, h                                       ; $6aab: $44
    inc b                                         ; $6aac: $04
    ld [$cfa4], a                                 ; $6aad: $ea $a4 $cf
    call Call_00f_77d7                            ; $6ab0: $cd $d7 $77
    and a                                         ; $6ab3: $a7
    jp hl                                         ; $6ab4: $e9


    rlca                                          ; $6ab5: $07
    ld d, h                                       ; $6ab6: $54
    ld b, h                                       ; $6ab7: $44
    ld d, h                                       ; $6ab8: $54
    ld [hl], h                                    ; $6ab9: $74
    rst RST_08                                    ; $6aba: $cf
    call $eacd                                    ; $6abb: $cd $cd $ea
    rst $28                                       ; $6abe: $ef
    jp hl                                         ; $6abf: $e9


    xor d                                         ; $6ac0: $aa
    ld a, d                                       ; $6ac1: $7a
    jp hl                                         ; $6ac2: $e9


    dec c                                         ; $6ac3: $0d
    ld [$79aa], a                                 ; $6ac4: $ea $aa $79
    and h                                         ; $6ac7: $a4
    ld a, l                                       ; $6ac8: $7d
    xor d                                         ; $6ac9: $aa
    ld a, d                                       ; $6aca: $7a
    jp hl                                         ; $6acb: $e9


    add hl, bc                                    ; $6acc: $09
    ld [hl+], a                                   ; $6acd: $22
    ld [bc], a                                    ; $6ace: $02
    ld [$79aa], a                                 ; $6acf: $ea $aa $79
    and d                                         ; $6ad2: $a2
    ld [hl], d                                    ; $6ad3: $72
    ld e, d                                       ; $6ad4: $5a
    ld c, c                                       ; $6ad5: $49
    ld d, d                                       ; $6ad6: $52
    ld b, d                                       ; $6ad7: $42
    rlca                                          ; $6ad8: $07
    ld [$efa7], a                                 ; $6ad9: $ea $a7 $ef
    ld sp, hl                                     ; $6adc: $f9
    ld h, h                                       ; $6add: $64
    push af                                       ; $6ade: $f5
    nop                                           ; $6adf: $00
    db $10                                        ; $6ae0: $10
    inc b                                         ; $6ae1: $04
    db $e3                                        ; $6ae2: $e3
    ei                                            ; $6ae3: $fb
    ld [de], a                                    ; $6ae4: $12
    ldh a, [rNR12]                                ; $6ae5: $f0 $12
    inc b                                         ; $6ae7: $04
    nop                                           ; $6ae8: $00
    ld a, [$f733]                                 ; $6ae9: $fa $33 $f7
    rlca                                          ; $6aec: $07
    cp $08                                        ; $6aed: $fe $08
    ld l, e                                       ; $6aef: $6b
    cp $55                                        ; $6af0: $fe $55
    ld l, e                                       ; $6af2: $6b
    cp $08                                        ; $6af3: $fe $08
    ld l, e                                       ; $6af5: $6b
    cp $55                                        ; $6af6: $fe $55
    ld l, e                                       ; $6af8: $6b
    cp $08                                        ; $6af9: $fe $08
    ld l, e                                       ; $6afb: $6b
    cp $08                                        ; $6afc: $fe $08
    ld l, e                                       ; $6afe: $6b
    cp $55                                        ; $6aff: $fe $55
    ld l, e                                       ; $6b01: $6b
    cp $08                                        ; $6b02: $fe $08
    ld l, e                                       ; $6b04: $6b
    xor $ed                                       ; $6b05: $ee $ed
    ld l, d                                       ; $6b07: $6a
    and h                                         ; $6b08: $a4
    ld [hl], h                                    ; $6b09: $74
    ld d, h                                       ; $6b0a: $54
    ld b, h                                       ; $6b0b: $44
    inc b                                         ; $6b0c: $04
    ld b, h                                       ; $6b0d: $44
    ld d, h                                       ; $6b0e: $54
    ld [hl], h                                    ; $6b0f: $74
    and h                                         ; $6b10: $a4
    jp hl                                         ; $6b11: $e9


    inc b                                         ; $6b12: $04
    ld [$74a4], a                                 ; $6b13: $ea $a4 $74
    ld d, h                                       ; $6b16: $54
    ld [hl], h                                    ; $6b17: $74
    ld d, h                                       ; $6b18: $54
    ld b, h                                       ; $6b19: $44
    inc b                                         ; $6b1a: $04
    ld b, h                                       ; $6b1b: $44
    inc b                                         ; $6b1c: $04
    ld b, h                                       ; $6b1d: $44
    ld d, h                                       ; $6b1e: $54
    ld [hl], h                                    ; $6b1f: $74
    ld d, h                                       ; $6b20: $54
    ld [hl], h                                    ; $6b21: $74
    and h                                         ; $6b22: $a4
    jp hl                                         ; $6b23: $e9


    inc b                                         ; $6b24: $04
    ld [$a474], a                                 ; $6b25: $ea $74 $a4
    ld [hl], h                                    ; $6b28: $74
    and h                                         ; $6b29: $a4
    ld d, h                                       ; $6b2a: $54
    ld [hl], h                                    ; $6b2b: $74
    and h                                         ; $6b2c: $a4
    jp hl                                         ; $6b2d: $e9


    inc b                                         ; $6b2e: $04
    ld [$74a4], a                                 ; $6b2f: $ea $a4 $74
    ld d, h                                       ; $6b32: $54
    ld [hl], h                                    ; $6b33: $74
    ld d, h                                       ; $6b34: $54
    ld b, h                                       ; $6b35: $44
    ld d, h                                       ; $6b36: $54
    ld [hl], h                                    ; $6b37: $74
    and h                                         ; $6b38: $a4
    ld [hl], h                                    ; $6b39: $74
    and h                                         ; $6b3a: $a4
    jp hl                                         ; $6b3b: $e9


    inc b                                         ; $6b3c: $04
    ld [$a474], a                                 ; $6b3d: $ea $74 $a4
    ld b, h                                       ; $6b40: $44
    ld d, h                                       ; $6b41: $54
    ld b, h                                       ; $6b42: $44
    inc b                                         ; $6b43: $04
    ld b, h                                       ; $6b44: $44
    ld d, h                                       ; $6b45: $54
    ld b, h                                       ; $6b46: $44
    ld d, h                                       ; $6b47: $54
    ld [hl], h                                    ; $6b48: $74
    ld d, h                                       ; $6b49: $54
    ld [hl], h                                    ; $6b4a: $74
    and h                                         ; $6b4b: $a4
    jp hl                                         ; $6b4c: $e9


    inc b                                         ; $6b4d: $04
    ld [$e9a4], a                                 ; $6b4e: $ea $a4 $e9
    inc b                                         ; $6b51: $04
    ld b, h                                       ; $6b52: $44
    ld [$a4ef], a                                 ; $6b53: $ea $ef $a4
    ld [hl], h                                    ; $6b56: $74
    ld d, h                                       ; $6b57: $54
    ld b, h                                       ; $6b58: $44
    inc b                                         ; $6b59: $04
    ld b, h                                       ; $6b5a: $44
    ld d, h                                       ; $6b5b: $54
    ld [hl], h                                    ; $6b5c: $74
    and h                                         ; $6b5d: $a4
    jp hl                                         ; $6b5e: $e9


    inc b                                         ; $6b5f: $04
    ld [$74a4], a                                 ; $6b60: $ea $a4 $74
    ld d, h                                       ; $6b63: $54
    ld [hl], h                                    ; $6b64: $74
    ld d, h                                       ; $6b65: $54
    ld b, h                                       ; $6b66: $44
    inc b                                         ; $6b67: $04
    ld b, h                                       ; $6b68: $44
    inc b                                         ; $6b69: $04
    ld b, h                                       ; $6b6a: $44
    ld d, h                                       ; $6b6b: $54
    ld [hl], h                                    ; $6b6c: $74
    ld d, h                                       ; $6b6d: $54
    ld [hl], h                                    ; $6b6e: $74
    and h                                         ; $6b6f: $a4
    jp hl                                         ; $6b70: $e9


    inc b                                         ; $6b71: $04
    ld [$a474], a                                 ; $6b72: $ea $74 $a4
    ld [hl], h                                    ; $6b75: $74
    and h                                         ; $6b76: $a4
    ld d, h                                       ; $6b77: $54
    ld [hl], h                                    ; $6b78: $74
    and h                                         ; $6b79: $a4
    jp hl                                         ; $6b7a: $e9


    inc b                                         ; $6b7b: $04
    ld [$74a4], a                                 ; $6b7c: $ea $a4 $74
    ld d, h                                       ; $6b7f: $54
    ld [hl], h                                    ; $6b80: $74
    ld d, h                                       ; $6b81: $54
    ld b, h                                       ; $6b82: $44
    ld d, h                                       ; $6b83: $54
    ld [hl], h                                    ; $6b84: $74
    and h                                         ; $6b85: $a4
    ld [hl], h                                    ; $6b86: $74
    and h                                         ; $6b87: $a4
    jp hl                                         ; $6b88: $e9


    inc b                                         ; $6b89: $04
    ld [$a474], a                                 ; $6b8a: $ea $74 $a4
    ld b, h                                       ; $6b8d: $44
    ld d, h                                       ; $6b8e: $54
    ld b, h                                       ; $6b8f: $44
    inc b                                         ; $6b90: $04
    ld b, h                                       ; $6b91: $44
    ld d, h                                       ; $6b92: $54
    ld b, h                                       ; $6b93: $44
    ld d, h                                       ; $6b94: $54
    ld [hl], h                                    ; $6b95: $74
    ld d, h                                       ; $6b96: $54
    ld [hl], h                                    ; $6b97: $74
    and h                                         ; $6b98: $a4
    jp hl                                         ; $6b99: $e9


    inc b                                         ; $6b9a: $04
    ld [$efd9], a                                 ; $6b9b: $ea $d9 $ef
    ld sp, hl                                     ; $6b9e: $f9
    ld h, h                                       ; $6b9f: $64
    ld a, [$f748]                                 ; $6ba0: $fa $48 $f7
    dec c                                         ; $6ba3: $0d
    ei                                            ; $6ba4: $fb
    inc sp                                        ; $6ba5: $33
    ldh a, [$ff0d]                                ; $6ba6: $f0 $0d
    nop                                           ; $6ba8: $00
    nop                                           ; $6ba9: $00
    ldh [c], a                                    ; $6baa: $e2
    cp $dc                                        ; $6bab: $fe $dc
    ld l, e                                       ; $6bad: $6b
    cp $c6                                        ; $6bae: $fe $c6
    ld l, e                                       ; $6bb0: $6b
    cp $07                                        ; $6bb1: $fe $07
    ld l, h                                       ; $6bb3: $6c
    cp $c6                                        ; $6bb4: $fe $c6
    ld l, e                                       ; $6bb6: $6b
    cp $32                                        ; $6bb7: $fe $32
    ld l, h                                       ; $6bb9: $6c
    cp $4b                                        ; $6bba: $fe $4b
    ld l, h                                       ; $6bbc: $6c
    cp $c6                                        ; $6bbd: $fe $c6
    ld l, e                                       ; $6bbf: $6b
    cp $07                                        ; $6bc0: $fe $07
    ld l, h                                       ; $6bc2: $6c
    xor $ab                                       ; $6bc3: $ee $ab
    ld l, e                                       ; $6bc5: $6b
    pop af                                        ; $6bc6: $f1
    inc bc                                        ; $6bc7: $03
    add hl, bc                                    ; $6bc8: $09
    add hl, bc                                    ; $6bc9: $09
    ld [$e9a7], a                                 ; $6bca: $ea $a7 $e9
    add hl, bc                                    ; $6bcd: $09
    add hl, bc                                    ; $6bce: $09
    ld [$e9a7], a                                 ; $6bcf: $ea $a7 $e9
    ldh a, [c]                                    ; $6bd2: $f2
    add hl, bc                                    ; $6bd3: $09
    add hl, bc                                    ; $6bd4: $09
    ld [$e9a7], a                                 ; $6bd5: $ea $a7 $e9
    add hl, bc                                    ; $6bd8: $09
    reti                                          ; $6bd9: $d9


    rst $10                                       ; $6bda: $d7
    rst $28                                       ; $6bdb: $ef
    add hl, bc                                    ; $6bdc: $09
    add hl, bc                                    ; $6bdd: $09
    ld [$e9a7], a                                 ; $6bde: $ea $a7 $e9
    add hl, bc                                    ; $6be1: $09
    add hl, bc                                    ; $6be2: $09
    ld [$e977], a                                 ; $6be3: $ea $77 $e9
    add hl, bc                                    ; $6be6: $09
    add hl, bc                                    ; $6be7: $09
    ld [$e9a7], a                                 ; $6be8: $ea $a7 $e9
    rlca                                          ; $6beb: $07
    rlca                                          ; $6bec: $07
    ld [$a777], a                                 ; $6bed: $ea $77 $a7
    jp hl                                         ; $6bf0: $e9


    add hl, bc                                    ; $6bf1: $09
    add hl, bc                                    ; $6bf2: $09
    ld [$e9a7], a                                 ; $6bf3: $ea $a7 $e9
    add hl, bc                                    ; $6bf6: $09
    add hl, bc                                    ; $6bf7: $09
    ld [$e977], a                                 ; $6bf8: $ea $77 $e9
    add hl, bc                                    ; $6bfb: $09
    add hl, bc                                    ; $6bfc: $09
    ld [$e9a7], a                                 ; $6bfd: $ea $a7 $e9
    rlca                                          ; $6c00: $07
    rlca                                          ; $6c01: $07
    ld [$b7a7], a                                 ; $6c02: $ea $a7 $b7
    jp hl                                         ; $6c05: $e9


    rst $28                                       ; $6c06: $ef
    add hl, bc                                    ; $6c07: $09
    add hl, bc                                    ; $6c08: $09
    ld [$e9a7], a                                 ; $6c09: $ea $a7 $e9
    add hl, bc                                    ; $6c0c: $09
    add hl, bc                                    ; $6c0d: $09
    ld [$e977], a                                 ; $6c0e: $ea $77 $e9
    add hl, bc                                    ; $6c11: $09
    add hl, bc                                    ; $6c12: $09
    ld [$e9a7], a                                 ; $6c13: $ea $a7 $e9
    rlca                                          ; $6c16: $07
    rlca                                          ; $6c17: $07
    ld [$b7a7], a                                 ; $6c18: $ea $a7 $b7
    jp hl                                         ; $6c1b: $e9


    add hl, bc                                    ; $6c1c: $09
    add hl, bc                                    ; $6c1d: $09
    ld [$e9a7], a                                 ; $6c1e: $ea $a7 $e9
    add hl, bc                                    ; $6c21: $09
    add hl, bc                                    ; $6c22: $09
    ld [$e977], a                                 ; $6c23: $ea $77 $e9
    add hl, bc                                    ; $6c26: $09
    add hl, bc                                    ; $6c27: $09
    ld [$e9a7], a                                 ; $6c28: $ea $a7 $e9
    rlca                                          ; $6c2b: $07
    rst $10                                       ; $6c2c: $d7
    ld [$d777], a                                 ; $6c2d: $ea $77 $d7
    jp hl                                         ; $6c30: $e9


    rst $28                                       ; $6c31: $ef
    pop af                                        ; $6c32: $f1
    ld [bc], a                                    ; $6c33: $02
    add hl, bc                                    ; $6c34: $09
    add hl, bc                                    ; $6c35: $09
    ld [$e9a7], a                                 ; $6c36: $ea $a7 $e9
    add hl, bc                                    ; $6c39: $09
    add hl, bc                                    ; $6c3a: $09
    ld [$e977], a                                 ; $6c3b: $ea $77 $e9
    add hl, bc                                    ; $6c3e: $09
    add hl, bc                                    ; $6c3f: $09
    ld [$e9a7], a                                 ; $6c40: $ea $a7 $e9
    rlca                                          ; $6c43: $07
    rlca                                          ; $6c44: $07
    ld [$a777], a                                 ; $6c45: $ea $77 $a7
    jp hl                                         ; $6c48: $e9


    ldh a, [c]                                    ; $6c49: $f2
    rst $28                                       ; $6c4a: $ef
    pop af                                        ; $6c4b: $f1
    inc b                                         ; $6c4c: $04
    add hl, bc                                    ; $6c4d: $09
    add hl, bc                                    ; $6c4e: $09
    ld [$e9a7], a                                 ; $6c4f: $ea $a7 $e9
    add hl, bc                                    ; $6c52: $09
    add hl, bc                                    ; $6c53: $09
    ld [$e977], a                                 ; $6c54: $ea $77 $e9
    ldh a, [c]                                    ; $6c57: $f2
    rst $28                                       ; $6c58: $ef
    ld sp, hl                                     ; $6c59: $f9
    add h                                         ; $6c5a: $84
    push af                                       ; $6c5b: $f5
    db $10                                        ; $6c5c: $10
    db $10                                        ; $6c5d: $10
    ld [$fbe2], sp                                ; $6c5e: $08 $e2 $fb
    inc sp                                        ; $6c61: $33
    ldh a, [$ff03]                                ; $6c62: $f0 $03
    inc b                                         ; $6c64: $04
    nop                                           ; $6c65: $00
    ld a, [$f742]                                 ; $6c66: $fa $42 $f7
    add hl, bc                                    ; $6c69: $09
    ld c, c                                       ; $6c6a: $49
    ld b, h                                       ; $6c6b: $44
    ld b, a                                       ; $6c6c: $47
    sub a                                         ; $6c6d: $97
    sub a                                         ; $6c6e: $97
    ld a, c                                       ; $6c6f: $79
    ld [hl], h                                    ; $6c70: $74
    ld [hl], a                                    ; $6c71: $77
    daa                                           ; $6c72: $27
    daa                                           ; $6c73: $27
    ld c, l                                       ; $6c74: $4d
    rst RST_00                                    ; $6c75: $c7
    rst $28                                       ; $6c76: $ef
    ld sp, hl                                     ; $6c77: $f9
    add h                                         ; $6c78: $84
    push af                                       ; $6c79: $f5
    db $10                                        ; $6c7a: $10
    db $10                                        ; $6c7b: $10
    ld [$fbe3], sp                                ; $6c7c: $08 $e3 $fb
    ld hl, $32f0                                  ; $6c7f: $21 $f0 $32
    inc b                                         ; $6c82: $04
    nop                                           ; $6c83: $00
    ld a, [$f742]                                 ; $6c84: $fa $42 $f7
    add hl, bc                                    ; $6c87: $09
    pop af                                        ; $6c88: $f1
    ld [bc], a                                    ; $6c89: $02
    sub h                                         ; $6c8a: $94
    ld [hl], h                                    ; $6c8b: $74
    sub h                                         ; $6c8c: $94
    jp hl                                         ; $6c8d: $e9


    inc b                                         ; $6c8e: $04
    inc h                                         ; $6c8f: $24
    ld b, h                                       ; $6c90: $44
    inc h                                         ; $6c91: $24
    ld b, h                                       ; $6c92: $44
    inc h                                         ; $6c93: $24
    inc b                                         ; $6c94: $04
    ld [$9df2], a                                 ; $6c95: $ea $f2 $9d
    rst RST_00                                    ; $6c98: $c7
    rst $28                                       ; $6c99: $ef
    ld sp, hl                                     ; $6c9a: $f9
    add h                                         ; $6c9b: $84
    ld a, [$f748]                                 ; $6c9c: $fa $48 $f7
    dec c                                         ; $6c9f: $0d
    ei                                            ; $6ca0: $fb
    inc sp                                        ; $6ca1: $33
    ldh a, [rTMA]                                 ; $6ca2: $f0 $06
    nop                                           ; $6ca4: $00
    nop                                           ; $6ca5: $00
    pop hl                                        ; $6ca6: $e1
    pop af                                        ; $6ca7: $f1
    ld [bc], a                                    ; $6ca8: $02
    sub a                                         ; $6ca9: $97
    ld b, h                                       ; $6caa: $44
    ld b, h                                       ; $6cab: $44
    ld b, a                                       ; $6cac: $47
    ld b, a                                       ; $6cad: $47
    ld [hl], a                                    ; $6cae: $77
    ldh a, [c]                                    ; $6caf: $f2
    sbc l                                         ; $6cb0: $9d
    rst RST_00                                    ; $6cb1: $c7
    rst $28                                       ; $6cb2: $ef
    ld sp, hl                                     ; $6cb3: $f9
    ld a, b                                       ; $6cb4: $78
    push af                                       ; $6cb5: $f5
    db $10                                        ; $6cb6: $10
    db $10                                        ; $6cb7: $10
    ld [$fbe3], sp                                ; $6cb8: $08 $e3 $fb
    inc sp                                        ; $6cbb: $33
    ldh a, [rNR44]                                ; $6cbc: $f0 $23
    inc b                                         ; $6cbe: $04
    nop                                           ; $6cbf: $00
    ld a, [$f742]                                 ; $6cc0: $fa $42 $f7
    add hl, bc                                    ; $6cc3: $09
    ld d, h                                       ; $6cc4: $54
    ld b, h                                       ; $6cc5: $44
    ld d, h                                       ; $6cc6: $54
    ld b, h                                       ; $6cc7: $44
    ld d, h                                       ; $6cc8: $54
    ld h, h                                       ; $6cc9: $64
    ld [hl], h                                    ; $6cca: $74
    add h                                         ; $6ccb: $84
    sbc l                                         ; $6ccc: $9d
    rst $28                                       ; $6ccd: $ef
    ld sp, hl                                     ; $6cce: $f9
    ld a, b                                       ; $6ccf: $78
    push af                                       ; $6cd0: $f5
    db $10                                        ; $6cd1: $10
    db $10                                        ; $6cd2: $10
    ld [$fbe3], sp                                ; $6cd3: $08 $e3 $fb
    ld [de], a                                    ; $6cd6: $12
    ldh a, [rNR44]                                ; $6cd7: $f0 $23
    inc b                                         ; $6cd9: $04
    nop                                           ; $6cda: $00
    ld a, [$f742]                                 ; $6cdb: $fa $42 $f7
    add hl, bc                                    ; $6cde: $09
    sub h                                         ; $6cdf: $94
    add h                                         ; $6ce0: $84
    sub h                                         ; $6ce1: $94
    add h                                         ; $6ce2: $84
    sub h                                         ; $6ce3: $94
    and h                                         ; $6ce4: $a4
    or h                                          ; $6ce5: $b4
    jp hl                                         ; $6ce6: $e9


    inc b                                         ; $6ce7: $04
    dec e                                         ; $6ce8: $1d
    rst $28                                       ; $6ce9: $ef
    ld sp, hl                                     ; $6cea: $f9
    ld a, b                                       ; $6ceb: $78
    ld a, [$f748]                                 ; $6cec: $fa $48 $f7
    dec c                                         ; $6cef: $0d
    ei                                            ; $6cf0: $fb
    inc sp                                        ; $6cf1: $33
    ldh a, [rTMA]                                 ; $6cf2: $f0 $06
    nop                                           ; $6cf4: $00
    nop                                           ; $6cf5: $00
    ldh [c], a                                    ; $6cf6: $e2
    ld a, [bc]                                    ; $6cf7: $0a
    call nz, Call_000_2414                        ; $6cf8: $c4 $14 $24
    inc [hl]                                      ; $6cfb: $34
    ld c, l                                       ; $6cfc: $4d
    rst $28                                       ; $6cfd: $ef
    ld sp, hl                                     ; $6cfe: $f9
    ld a, b                                       ; $6cff: $78
    push af                                       ; $6d00: $f5
    db $10                                        ; $6d01: $10
    db $10                                        ; $6d02: $10
    ld [$fbe3], sp                                ; $6d03: $08 $e3 $fb
    inc sp                                        ; $6d06: $33
    ldh a, [rNR44]                                ; $6d07: $f0 $23
    inc b                                         ; $6d09: $04
    nop                                           ; $6d0a: $00
    ld a, [$f742]                                 ; $6d0b: $fa $42 $f7
    add hl, bc                                    ; $6d0e: $09
    ld h, h                                       ; $6d0f: $64
    ld [hl], h                                    ; $6d10: $74
    add h                                         ; $6d11: $84
    sbc l                                         ; $6d12: $9d
    rst $28                                       ; $6d13: $ef
    ld sp, hl                                     ; $6d14: $f9
    ld a, b                                       ; $6d15: $78
    push af                                       ; $6d16: $f5
    db $10                                        ; $6d17: $10
    db $10                                        ; $6d18: $10
    ld [$fbe3], sp                                ; $6d19: $08 $e3 $fb
    ld [de], a                                    ; $6d1c: $12
    ldh a, [rNR44]                                ; $6d1d: $f0 $23
    inc b                                         ; $6d1f: $04
    nop                                           ; $6d20: $00
    ld a, [$f742]                                 ; $6d21: $fa $42 $f7
    add hl, bc                                    ; $6d24: $09
    and h                                         ; $6d25: $a4
    or h                                          ; $6d26: $b4
    jp hl                                         ; $6d27: $e9


    inc b                                         ; $6d28: $04
    dec e                                         ; $6d29: $1d
    rst $28                                       ; $6d2a: $ef
    ld sp, hl                                     ; $6d2b: $f9
    ld a, b                                       ; $6d2c: $78
    ld a, [$f748]                                 ; $6d2d: $fa $48 $f7
    dec c                                         ; $6d30: $0d
    ei                                            ; $6d31: $fb
    inc sp                                        ; $6d32: $33
    ldh a, [rTMA]                                 ; $6d33: $f0 $06
    nop                                           ; $6d35: $00
    nop                                           ; $6d36: $00
    ldh [c], a                                    ; $6d37: $e2
    inc d                                         ; $6d38: $14
    inc h                                         ; $6d39: $24
    inc [hl]                                      ; $6d3a: $34
    ld c, l                                       ; $6d3b: $4d
    rst $30                                       ; $6d3c: $f7
    nop                                           ; $6d3d: $00
    rst $28                                       ; $6d3e: $ef
    ld a, [$f980]                                 ; $6d3f: $fa $80 $f9
    ld c, b                                       ; $6d42: $48
    db $e3                                        ; $6d43: $e3
    rst $30                                       ; $6d44: $f7
    ld a, [bc]                                    ; $6d45: $0a
    ei                                            ; $6d46: $fb
    inc sp                                        ; $6d47: $33
    push af                                       ; $6d48: $f5
    ld bc, $0808                                  ; $6d49: $01 $08 $08
    dec c                                         ; $6d4c: $0d
    call $01f5                                    ; $6d4d: $cd $f5 $01
    db $10                                        ; $6d50: $10
    ld [$cd2d], sp                                ; $6d51: $08 $2d $cd
    push af                                       ; $6d54: $f5
    ld bc, $0818                                  ; $6d55: $01 $18 $08
    ld c, l                                       ; $6d58: $4d
    call $01f5                                    ; $6d59: $cd $f5 $01
    inc h                                         ; $6d5c: $24
    ld [$cd5d], sp                                ; $6d5d: $08 $5d $cd
    push af                                       ; $6d60: $f5
    ld bc, $0830                                  ; $6d61: $01 $30 $08
    ld a, l                                       ; $6d64: $7d
    call $01f5                                    ; $6d65: $cd $f5 $01
    jr c, jr_00f_6d72                             ; $6d68: $38 $08

    sbc l                                         ; $6d6a: $9d
    call $01f5                                    ; $6d6b: $cd $f5 $01
    ld b, b                                       ; $6d6e: $40
    ld [$cdbd], sp                                ; $6d6f: $08 $bd $cd

jr_00f_6d72:
    push af                                       ; $6d72: $f5
    ld bc, $0848                                  ; $6d73: $01 $48 $08
    jp hl                                         ; $6d76: $e9


    dec c                                         ; $6d77: $0d
    call $f5ea                                    ; $6d78: $cd $ea $f5
    ld bc, $0808                                  ; $6d7b: $01 $08 $08
    dec c                                         ; $6d7e: $0d
    call $01f5                                    ; $6d7f: $cd $f5 $01
    ld [$2d10], sp                                ; $6d82: $08 $10 $2d
    call $01f5                                    ; $6d85: $cd $f5 $01
    ld [$4d18], sp                                ; $6d88: $08 $18 $4d
    call $01f5                                    ; $6d8b: $cd $f5 $01
    ld [$5d24], sp                                ; $6d8e: $08 $24 $5d
    call $01f5                                    ; $6d91: $cd $f5 $01
    ld [$7d30], sp                                ; $6d94: $08 $30 $7d
    call $01f5                                    ; $6d97: $cd $f5 $01
    ld [$9d38], sp                                ; $6d9a: $08 $38 $9d
    call $01f5                                    ; $6d9d: $cd $f5 $01
    ld [$bd40], sp                                ; $6da0: $08 $40 $bd
    call $01f5                                    ; $6da3: $cd $f5 $01
    ld [$e948], sp                                ; $6da6: $08 $48 $e9
    dec c                                         ; $6da9: $0d
    call $fcea                                    ; $6daa: $cd $ea $fc
    ld b, b                                       ; $6dad: $40
    dec c                                         ; $6dae: $0d
    call Call_00f_41fc                            ; $6daf: $cd $fc $41
    dec c                                         ; $6db2: $0d
    call Call_00f_42fc                            ; $6db3: $cd $fc $42
    dec c                                         ; $6db6: $0d
    call Call_00f_43fc                            ; $6db7: $cd $fc $43
    dec c                                         ; $6dba: $0d
    call Call_00f_44fc                            ; $6dbb: $cd $fc $44
    dec c                                         ; $6dbe: $0d
    call Call_00f_45fc                            ; $6dbf: $cd $fc $45
    dec c                                         ; $6dc2: $0d
    call Call_00f_46fc                            ; $6dc3: $cd $fc $46
    dec c                                         ; $6dc6: $0d
    call Call_00f_47fc                            ; $6dc7: $cd $fc $47
    dec c                                         ; $6dca: $0d
    call $f5ef                                    ; $6dcb: $cd $ef $f5
    ld a, [bc]                                    ; $6dce: $0a
    inc d                                         ; $6dcf: $14
    inc bc                                        ; $6dd0: $03
    ld a, [$f657]                                 ; $6dd1: $fa $57 $f6
    ld bc, $c8f9                                  ; $6dd4: $01 $f9 $c8
    ldh [c], a                                    ; $6dd7: $e2
    rst $30                                       ; $6dd8: $f7
    ld a, [bc]                                    ; $6dd9: $0a
    ei                                            ; $6dda: $fb
    inc de                                        ; $6ddb: $13
    ldh a, [rNR41]                                ; $6ddc: $f0 $20
    inc b                                         ; $6dde: $04
    nop                                           ; $6ddf: $00
    ld a, [bc]                                    ; $6de0: $0a
    ld a, [hl+]                                   ; $6de1: $2a
    ld c, l                                       ; $6de2: $4d
    ld a, [bc]                                    ; $6de3: $0a
    ld a, [hl+]                                   ; $6de4: $2a
    ld c, l                                       ; $6de5: $4d
    ld a, d                                       ; $6de6: $7a
    ld c, d                                       ; $6de7: $4a
    ld a, [hl+]                                   ; $6de8: $2a
    ld a, [bc]                                    ; $6de9: $0a
    ld a, [hl+]                                   ; $6dea: $2a
    ld c, d                                       ; $6deb: $4a
    dec l                                         ; $6dec: $2d
    ld a, [bc]                                    ; $6ded: $0a
    ld a, [hl+]                                   ; $6dee: $2a
    ld c, l                                       ; $6def: $4d
    ld a, [bc]                                    ; $6df0: $0a
    ld a, [hl+]                                   ; $6df1: $2a
    ld c, l                                       ; $6df2: $4d
    ld a, d                                       ; $6df3: $7a
    ld c, d                                       ; $6df4: $4a
    ld a, [hl+]                                   ; $6df5: $2a
    ld a, [bc]                                    ; $6df6: $0a
    ld a, [hl+]                                   ; $6df7: $2a
    ld c, d                                       ; $6df8: $4a
    dec c                                         ; $6df9: $0d
    ld a, d                                       ; $6dfa: $7a
    ld a, d                                       ; $6dfb: $7a
    ld c, d                                       ; $6dfc: $4a
    ld a, d                                       ; $6dfd: $7a
    sbc d                                         ; $6dfe: $9a
    sbc d                                         ; $6dff: $9a
    ld a, l                                       ; $6e00: $7d
    ld c, d                                       ; $6e01: $4a
    ld c, d                                       ; $6e02: $4a
    ld a, [hl+]                                   ; $6e03: $2a
    ld a, [hl+]                                   ; $6e04: $2a
    dec c                                         ; $6e05: $0d
    call $e0ee                                    ; $6e06: $cd $ee $e0
    ld l, l                                       ; $6e09: $6d
    or $01                                        ; $6e0a: $f6 $01
    ld sp, hl                                     ; $6e0c: $f9
    ret z                                         ; $6e0d: $c8

    ld a, [$f745]                                 ; $6e0e: $fa $45 $f7
    add hl, bc                                    ; $6e11: $09
    ei                                            ; $6e12: $fb
    ld hl, $12f0                                  ; $6e13: $21 $f0 $12
    inc b                                         ; $6e16: $04
    nop                                           ; $6e17: $00
    db $e3                                        ; $6e18: $e3
    ld a, [bc]                                    ; $6e19: $0a
    jp hl                                         ; $6e1a: $e9


    ld [$0aea], sp                                ; $6e1b: $08 $ea $0a
    dec b                                         ; $6e1e: $05
    jp hl                                         ; $6e1f: $e9


    ld [$05ea], sp                                ; $6e20: $08 $ea $05
    ret z                                         ; $6e23: $c8

    dec b                                         ; $6e24: $05
    jp hl                                         ; $6e25: $e9


    ld [$0aea], sp                                ; $6e26: $08 $ea $0a
    dec b                                         ; $6e29: $05
    jp hl                                         ; $6e2a: $e9


    ld [$05ea], sp                                ; $6e2b: $08 $ea $05
    ld a, [bc]                                    ; $6e2e: $0a
    jp hl                                         ; $6e2f: $e9


    ld [$0aea], sp                                ; $6e30: $08 $ea $0a
    dec b                                         ; $6e33: $05
    jp hl                                         ; $6e34: $e9


    ld [$05ea], sp                                ; $6e35: $08 $ea $05
    ret z                                         ; $6e38: $c8

    ld [$e9b5], a                                 ; $6e39: $ea $b5 $e9
    cp b                                          ; $6e3c: $b8
    ld [$b5ba], a                                 ; $6e3d: $ea $ba $b5
    jp hl                                         ; $6e40: $e9


    cp b                                          ; $6e41: $b8
    ld [$e9b5], a                                 ; $6e42: $ea $b5 $e9
    ld a, [bc]                                    ; $6e45: $0a
    jp hl                                         ; $6e46: $e9


    ld [$0aea], sp                                ; $6e47: $08 $ea $0a
    dec b                                         ; $6e4a: $05
    jp hl                                         ; $6e4b: $e9


    ld [$05ea], sp                                ; $6e4c: $08 $ea $05
    ret z                                         ; $6e4f: $c8

    dec b                                         ; $6e50: $05
    jp hl                                         ; $6e51: $e9


    ld [$0aea], sp                                ; $6e52: $08 $ea $0a
    dec b                                         ; $6e55: $05
    jp hl                                         ; $6e56: $e9


    ld [$05ea], sp                                ; $6e57: $08 $ea $05
    ld [$e9ba], a                                 ; $6e5a: $ea $ba $e9
    cp b                                          ; $6e5d: $b8
    ld [$b5ba], a                                 ; $6e5e: $ea $ba $b5
    jp hl                                         ; $6e61: $e9


    cp b                                          ; $6e62: $b8
    ld [$c8b5], a                                 ; $6e63: $ea $b5 $c8
    or l                                          ; $6e66: $b5
    jp hl                                         ; $6e67: $e9


    cp b                                          ; $6e68: $b8
    ld [$e9ba], a                                 ; $6e69: $ea $ba $e9
    jp hl                                         ; $6e6c: $e9


    dec b                                         ; $6e6d: $05
    ld [$e908], a                                 ; $6e6e: $ea $08 $e9
    dec b                                         ; $6e71: $05
    ld [$e90a], a                                 ; $6e72: $ea $0a $e9
    ld [$0aea], sp                                ; $6e75: $08 $ea $0a
    dec b                                         ; $6e78: $05
    jp hl                                         ; $6e79: $e9


    ld [$05ea], sp                                ; $6e7a: $08 $ea $05
    ret z                                         ; $6e7d: $c8

    dec b                                         ; $6e7e: $05
    jp hl                                         ; $6e7f: $e9


    ld [$0aea], sp                                ; $6e80: $08 $ea $0a
    dec b                                         ; $6e83: $05
    jp hl                                         ; $6e84: $e9


    ld [$05ea], sp                                ; $6e85: $08 $ea $05
    ld a, [hl+]                                   ; $6e88: $2a
    jp hl                                         ; $6e89: $e9


    jr z, @-$14                                   ; $6e8a: $28 $ea

    ld [$b5ba], a                                 ; $6e8c: $ea $ba $b5
    jp hl                                         ; $6e8f: $e9


    cp b                                          ; $6e90: $b8
    ld [$c8b5], a                                 ; $6e91: $ea $b5 $c8
    jp hl                                         ; $6e94: $e9


    jp hl                                         ; $6e95: $e9


    dec b                                         ; $6e96: $05
    ld [$95b8], a                                 ; $6e97: $ea $b8 $95
    ld a, b                                       ; $6e9a: $78
    ld d, l                                       ; $6e9b: $55
    ld c, b                                       ; $6e9c: $48
    dec h                                         ; $6e9d: $25
    xor $18                                       ; $6e9e: $ee $18
    ld l, [hl]                                    ; $6ea0: $6e
    or $01                                        ; $6ea1: $f6 $01
    ld sp, hl                                     ; $6ea3: $f9
    ret z                                         ; $6ea4: $c8

    ld a, [$f758]                                 ; $6ea5: $fa $58 $f7
    rrca                                          ; $6ea8: $0f
    ei                                            ; $6ea9: $fb
    inc sp                                        ; $6eaa: $33
    ldh a, [rTIMA]                                ; $6eab: $f0 $05
    nop                                           ; $6ead: $00
    nop                                           ; $6eae: $00
    ldh [c], a                                    ; $6eaf: $e2
    dec c                                         ; $6eb0: $0d
    ld [$e97d], a                                 ; $6eb1: $ea $7d $e9
    dec c                                         ; $6eb4: $0d
    ld [$e97d], a                                 ; $6eb5: $ea $7d $e9
    dec c                                         ; $6eb8: $0d
    ld [$e97d], a                                 ; $6eb9: $ea $7d $e9
    dec l                                         ; $6ebc: $2d
    ld [$e97d], a                                 ; $6ebd: $ea $7d $e9
    dec c                                         ; $6ec0: $0d
    ld [$e97d], a                                 ; $6ec1: $ea $7d $e9
    dec c                                         ; $6ec4: $0d
    ld [$e97d], a                                 ; $6ec5: $ea $7d $e9
    dec l                                         ; $6ec8: $2d
    dec l                                         ; $6ec9: $2d
    ld [$e97d], a                                 ; $6eca: $ea $7d $e9
    dec c                                         ; $6ecd: $0d
    dec c                                         ; $6ece: $0d
    ld [$9dad], a                                 ; $6ecf: $ea $ad $9d
    adc l                                         ; $6ed2: $8d
    ld a, l                                       ; $6ed3: $7d
    cp l                                          ; $6ed4: $bd
    jp hl                                         ; $6ed5: $e9


    ld a, [bc]                                    ; $6ed6: $0a
    ld [$e97a], a                                 ; $6ed7: $ea $7a $e9
    dec c                                         ; $6eda: $0d
    xor $af                                       ; $6edb: $ee $af
    ld l, [hl]                                    ; $6edd: $6e
    rst $30                                       ; $6ede: $f7
    ld a, [bc]                                    ; $6edf: $0a
    ld a, [$f940]                                 ; $6ee0: $fa $40 $f9
    ret z                                         ; $6ee3: $c8

    ei                                            ; $6ee4: $fb
    ld [hl-], a                                   ; $6ee5: $32
    ld a, [$fc45]                                 ; $6ee6: $fa $45 $fc
    db $10                                        ; $6ee9: $10
    pop af                                        ; $6eea: $f1
    inc c                                         ; $6eeb: $0c
    ld [$05d5], sp                                ; $6eec: $08 $d5 $05
    push de                                       ; $6eef: $d5
    dec b                                         ; $6ef0: $05
    ld [$05d5], sp                                ; $6ef1: $08 $d5 $05
    push de                                       ; $6ef4: $d5
    dec b                                         ; $6ef5: $05
    ldh a, [c]                                    ; $6ef6: $f2
    xor $ea                                       ; $6ef7: $ee $ea
    ld l, [hl]                                    ; $6ef9: $6e
    ldh a, [rSVBK]                                ; $6efa: $f0 $70
    nop                                           ; $6efc: $00
    ld [hl], c                                    ; $6efd: $71
    ld a, h                                       ; $6efe: $7c
    ld c, d                                       ; $6eff: $4a
    ld a, h                                       ; $6f00: $7c
    ld c, d                                       ; $6f01: $4a
    db $10                                        ; $6f02: $10
    ld [hl], c                                    ; $6f03: $71
    ld hl, $7c71                                  ; $6f04: $21 $71 $7c
    ld c, d                                       ; $6f07: $4a
    ld a, h                                       ; $6f08: $7c
    ld c, d                                       ; $6f09: $4a
    ld a, h                                       ; $6f0a: $7c
    ld c, d                                       ; $6f0b: $4a
    ld [hl-], a                                   ; $6f0c: $32
    ld [hl], c                                    ; $6f0d: $71
    ld a, h                                       ; $6f0e: $7c
    ld c, d                                       ; $6f0f: $4a
    ld a, h                                       ; $6f10: $7c
    ld c, d                                       ; $6f11: $4a
    ld a, h                                       ; $6f12: $7c
    ld c, d                                       ; $6f13: $4a
    ld c, e                                       ; $6f14: $4b
    ld [hl], c                                    ; $6f15: $71
    ld a, h                                       ; $6f16: $7c
    ld c, d                                       ; $6f17: $4a
    ld a, h                                       ; $6f18: $7c
    ld c, d                                       ; $6f19: $4a
    ld a, h                                       ; $6f1a: $7c
    ld c, d                                       ; $6f1b: $4a
    ld h, a                                       ; $6f1c: $67
    ld [hl], c                                    ; $6f1d: $71
    ld a, h                                       ; $6f1e: $7c
    ld c, d                                       ; $6f1f: $4a
    ld a, h                                       ; $6f20: $7c
    ld c, d                                       ; $6f21: $4a
    ld a, h                                       ; $6f22: $7c
    ld c, d                                       ; $6f23: $4a
    or e                                          ; $6f24: $b3
    ld [hl], b                                    ; $6f25: $70
    ld a, h                                       ; $6f26: $7c
    ld c, d                                       ; $6f27: $4a
    call z, Call_00f_7c70                         ; $6f28: $cc $70 $7c
    ld c, d                                       ; $6f2b: $4a
    ld a, h                                       ; $6f2c: $7c
    ld c, d                                       ; $6f2d: $4a
    ld a, h                                       ; $6f2e: $7c
    ld c, d                                       ; $6f2f: $4a
    and b                                         ; $6f30: $a0
    ld [hl], b                                    ; $6f31: $70
    ld a, h                                       ; $6f32: $7c
    ld c, d                                       ; $6f33: $4a
    ld a, h                                       ; $6f34: $7c
    ld c, d                                       ; $6f35: $4a
    ld a, h                                       ; $6f36: $7c
    ld c, d                                       ; $6f37: $4a
    ld a, d                                       ; $6f38: $7a
    ld [hl], b                                    ; $6f39: $70
    ld a, h                                       ; $6f3a: $7c
    ld c, d                                       ; $6f3b: $4a
    ld e, a                                       ; $6f3c: $5f
    ld [hl], b                                    ; $6f3d: $70
    ld a, h                                       ; $6f3e: $7c
    ld c, d                                       ; $6f3f: $4a
    ld a, h                                       ; $6f40: $7c
    ld c, d                                       ; $6f41: $4a
    ld a, h                                       ; $6f42: $7c
    ld c, d                                       ; $6f43: $4a
    dec a                                         ; $6f44: $3d
    ld [hl], b                                    ; $6f45: $70
    ld a, h                                       ; $6f46: $7c
    ld c, d                                       ; $6f47: $4a
    ld a, h                                       ; $6f48: $7c
    ld c, d                                       ; $6f49: $4a
    ld a, h                                       ; $6f4a: $7c
    ld c, d                                       ; $6f4b: $4a
    dec de                                        ; $6f4c: $1b
    ld [hl], b                                    ; $6f4d: $70
    ld a, h                                       ; $6f4e: $7c
    ld c, d                                       ; $6f4f: $4a
    ld a, h                                       ; $6f50: $7c
    ld c, d                                       ; $6f51: $4a
    ld a, h                                       ; $6f52: $7c
    ld c, d                                       ; $6f53: $4a
    ld c, $70                                     ; $6f54: $0e $70
    ld a, h                                       ; $6f56: $7c
    ld c, d                                       ; $6f57: $4a
    ld a, h                                       ; $6f58: $7c
    ld c, d                                       ; $6f59: $4a
    ld a, h                                       ; $6f5a: $7c
    ld c, d                                       ; $6f5b: $4a
    rst $28                                       ; $6f5c: $ef
    ld l, a                                       ; $6f5d: $6f
    ld a, h                                       ; $6f5e: $7c
    ld c, d                                       ; $6f5f: $4a
    ld a, h                                       ; $6f60: $7c
    ld c, d                                       ; $6f61: $4a
    ld a, h                                       ; $6f62: $7c
    ld c, d                                       ; $6f63: $4a
    jp nc, Jump_00f_7c6f                          ; $6f64: $d2 $6f $7c

    ld c, d                                       ; $6f67: $4a
    ld a, h                                       ; $6f68: $7c
    ld c, d                                       ; $6f69: $4a
    ld a, h                                       ; $6f6a: $7c
    ld c, d                                       ; $6f6b: $4a
    or h                                          ; $6f6c: $b4
    ld l, a                                       ; $6f6d: $6f
    ld a, h                                       ; $6f6e: $7c
    ld c, d                                       ; $6f6f: $4a
    ld a, h                                       ; $6f70: $7c
    ld c, d                                       ; $6f71: $4a
    add b                                         ; $6f72: $80
    ld h, a                                       ; $6f73: $67
    and c                                         ; $6f74: $a1
    ld h, a                                       ; $6f75: $67
    ld a, h                                       ; $6f76: $7c
    ld c, d                                       ; $6f77: $4a
    ld a, h                                       ; $6f78: $7c
    ld c, d                                       ; $6f79: $4a
    ld a, h                                       ; $6f7a: $7c
    ld c, d                                       ; $6f7b: $4a
    add d                                         ; $6f7c: $82
    ld l, a                                       ; $6f7d: $6f
    ld a, h                                       ; $6f7e: $7c
    ld c, d                                       ; $6f7f: $4a
    ld a, h                                       ; $6f80: $7c
    ld c, d                                       ; $6f81: $4a
    ld a, [$f071]                                 ; $6f82: $fa $71 $f0
    nop                                           ; $6f85: $00
    nop                                           ; $6f86: $00
    nop                                           ; $6f87: $00
    ei                                            ; $6f88: $fb
    inc sp                                        ; $6f89: $33
    db $e3                                        ; $6f8a: $e3
    rst $30                                       ; $6f8b: $f7
    rrca                                          ; $6f8c: $0f
    ld d, d                                       ; $6f8d: $52
    ld [bc], a                                    ; $6f8e: $02
    ld d, d                                       ; $6f8f: $52
    jp hl                                         ; $6f90: $e9


    ld d, d                                       ; $6f91: $52
    ld [bc], a                                    ; $6f92: $02
    ld d, d                                       ; $6f93: $52
    ld [$08f7], a                                 ; $6f94: $ea $f7 $08
    ld d, d                                       ; $6f97: $52
    ld [bc], a                                    ; $6f98: $02
    ld d, d                                       ; $6f99: $52
    jp hl                                         ; $6f9a: $e9


    ld d, d                                       ; $6f9b: $52
    ld [bc], a                                    ; $6f9c: $02
    ld d, d                                       ; $6f9d: $52
    ld [$04f7], a                                 ; $6f9e: $ea $f7 $04
    ld d, d                                       ; $6fa1: $52
    ld [bc], a                                    ; $6fa2: $02
    ld d, d                                       ; $6fa3: $52
    jp hl                                         ; $6fa4: $e9


    ld d, d                                       ; $6fa5: $52
    ld [bc], a                                    ; $6fa6: $02
    ld d, d                                       ; $6fa7: $52
    ld [$01f7], a                                 ; $6fa8: $ea $f7 $01
    ld d, d                                       ; $6fab: $52

jr_00f_6fac:
    ld [bc], a                                    ; $6fac: $02
    ld d, d                                       ; $6fad: $52
    jp hl                                         ; $6fae: $e9


    ld d, d                                       ; $6faf: $52
    ld [bc], a                                    ; $6fb0: $02
    ld d, d                                       ; $6fb1: $52
    ld [$faef], a                                 ; $6fb2: $ea $ef $fa
    nop                                           ; $6fb5: $00
    rst $30                                       ; $6fb6: $f7
    rrca                                          ; $6fb7: $0f
    ldh a, [rP1]                                  ; $6fb8: $f0 $00
    nop                                           ; $6fba: $00
    nop                                           ; $6fbb: $00
    ei                                            ; $6fbc: $fb
    inc sp                                        ; $6fbd: $33
    rst $20                                       ; $6fbe: $e7
    inc bc                                        ; $6fbf: $03
    rst $30                                       ; $6fc0: $f7
    inc c                                         ; $6fc1: $0c
    and $00                                       ; $6fc2: $e6 $00
    ret nc                                        ; $6fc4: $d0

    db $10                                        ; $6fc5: $10
    ret nc                                        ; $6fc6: $d0

    jr nz, jr_00f_6fac                            ; $6fc7: $20 $e3

    nop                                           ; $6fc9: $00
    ret nc                                        ; $6fca: $d0

    ld [$d000], a                                 ; $6fcb: $ea $00 $d0
    ld [$d000], a                                 ; $6fce: $ea $00 $d0
    rst $28                                       ; $6fd1: $ef
    ld a, [$f700]                                 ; $6fd2: $fa $00 $f7
    add hl, bc                                    ; $6fd5: $09
    ldh a, [rSB]                                  ; $6fd6: $f0 $01
    nop                                           ; $6fd8: $00
    nop                                           ; $6fd9: $00
    ei                                            ; $6fda: $fb
    inc sp                                        ; $6fdb: $33
    and $03                                       ; $6fdc: $e6 $03
    db $d3                                        ; $6fde: $d3
    ld [$03ea], a                                 ; $6fdf: $ea $ea $03
    rst $30                                       ; $6fe2: $f7
    rlca                                          ; $6fe3: $07
    inc bc                                        ; $6fe4: $03
    rst $30                                       ; $6fe5: $f7
    dec b                                         ; $6fe6: $05
    inc bc                                        ; $6fe7: $03
    rst $30                                       ; $6fe8: $f7
    inc bc                                        ; $6fe9: $03
    inc bc                                        ; $6fea: $03
    rst $30                                       ; $6feb: $f7
    ld bc, $ef03                                  ; $6fec: $01 $03 $ef
    ld a, [$f700]                                 ; $6fef: $fa $00 $f7
    rrca                                          ; $6ff2: $0f
    ldh a, [rP1]                                  ; $6ff3: $f0 $00
    nop                                           ; $6ff5: $00
    nop                                           ; $6ff6: $00
    ei                                            ; $6ff7: $fb
    inc sp                                        ; $6ff8: $33
    db $e3                                        ; $6ff9: $e3
    rst $30                                       ; $6ffa: $f7
    inc c                                         ; $6ffb: $0c
    nop                                           ; $6ffc: $00

jr_00f_6ffd:
    ret nc                                        ; $6ffd: $d0

    ld [$d000], a                                 ; $6ffe: $ea $00 $d0
    ld [$d000], a                                 ; $7001: $ea $00 $d0
    jp hl                                         ; $7004: $e9


    jp hl                                         ; $7005: $e9


    jp hl                                         ; $7006: $e9


    jp hl                                         ; $7007: $e9


    nop                                           ; $7008: $00
    ret nc                                        ; $7009: $d0

    db $10                                        ; $700a: $10
    ret nc                                        ; $700b: $d0

    jr nz, jr_00f_6ffd                            ; $700c: $20 $ef

    ld a, [$f700]                                 ; $700e: $fa $00 $f7
    rrca                                          ; $7011: $0f
    ldh a, [rP1]                                  ; $7012: $f0 $00
    nop                                           ; $7014: $00
    nop                                           ; $7015: $00
    ei                                            ; $7016: $fb
    inc sp                                        ; $7017: $33
    db $e3                                        ; $7018: $e3
    nop                                           ; $7019: $00
    rst $28                                       ; $701a: $ef
    ld a, [$f700]                                 ; $701b: $fa $00 $f7
    rrca                                          ; $701e: $0f
    ldh a, [rP1]                                  ; $701f: $f0 $00
    nop                                           ; $7021: $00
    nop                                           ; $7022: $00
    ei                                            ; $7023: $fb
    inc sp                                        ; $7024: $33
    push hl                                       ; $7025: $e5
    or c                                          ; $7026: $b1
    ld sp, $0cf7                                  ; $7027: $31 $f7 $0c
    or c                                          ; $702a: $b1
    ld sp, $09f7                                  ; $702b: $31 $f7 $09
    or c                                          ; $702e: $b1
    ld sp, $06f7                                  ; $702f: $31 $f7 $06
    or c                                          ; $7032: $b1
    ld sp, $03f7                                  ; $7033: $31 $f7 $03
    or c                                          ; $7036: $b1
    ld sp, $01f7                                  ; $7037: $31 $f7 $01
    or c                                          ; $703a: $b1
    ld sp, $faef                                  ; $703b: $31 $ef $fa
    nop                                           ; $703e: $00
    rst $30                                       ; $703f: $f7
    rrca                                          ; $7040: $0f
    ldh a, [rSB]                                  ; $7041: $f0 $01
    nop                                           ; $7043: $00
    nop                                           ; $7044: $00
    ei                                            ; $7045: $fb
    inc sp                                        ; $7046: $33
    rst $20                                       ; $7047: $e7
    inc bc                                        ; $7048: $03
    db $e4                                        ; $7049: $e4
    rst $30                                       ; $704a: $f7
    rrca                                          ; $704b: $0f
    or b                                          ; $704c: $b0
    and b                                         ; $704d: $a0
    sub c                                         ; $704e: $91
    rst $30                                       ; $704f: $f7
    inc c                                         ; $7050: $0c
    and b                                         ; $7051: $a0
    sub b                                         ; $7052: $90
    add c                                         ; $7053: $81
    rst $30                                       ; $7054: $f7
    add hl, bc                                    ; $7055: $09
    sub b                                         ; $7056: $90
    add b                                         ; $7057: $80
    ld [hl], c                                    ; $7058: $71
    rst $30                                       ; $7059: $f7
    ld b, $80                                     ; $705a: $06 $80
    ld [hl], b                                    ; $705c: $70
    ld h, c                                       ; $705d: $61
    rst $28                                       ; $705e: $ef
    ld a, [$f700]                                 ; $705f: $fa $00 $f7
    rrca                                          ; $7062: $0f
    ldh a, [rP1]                                  ; $7063: $f0 $00
    nop                                           ; $7065: $00
    nop                                           ; $7066: $00
    ei                                            ; $7067: $fb
    inc sp                                        ; $7068: $33
    ldh [c], a                                    ; $7069: $e2
    nop                                           ; $706a: $00
    ret nc                                        ; $706b: $d0

    ld [hl], b                                    ; $706c: $70
    ret nc                                        ; $706d: $d0

    jp hl                                         ; $706e: $e9


    nop                                           ; $706f: $00
    ret nc                                        ; $7070: $d0

    ldh [c], a                                    ; $7071: $e2
    nop                                           ; $7072: $00
    ret nc                                        ; $7073: $d0

    ld [$d000], a                                 ; $7074: $ea $00 $d0
    ld [$ef00], a                                 ; $7077: $ea $00 $ef
    ld a, [$f700]                                 ; $707a: $fa $00 $f7
    rrca                                          ; $707d: $0f
    ei                                            ; $707e: $fb
    inc sp                                        ; $707f: $33
    db $d3                                        ; $7080: $d3
    db $fc                                        ; $7081: $fc
    ld b, a                                       ; $7082: $47
    nop                                           ; $7083: $00
    jp nc, Jump_00f_46fc                          ; $7084: $d2 $fc $46

    nop                                           ; $7087: $00
    jp nc, Jump_00f_45fc                          ; $7088: $d2 $fc $45

    nop                                           ; $708b: $00
    pop de                                        ; $708c: $d1
    db $fc                                        ; $708d: $fc
    ld b, h                                       ; $708e: $44
    nop                                           ; $708f: $00
    pop de                                        ; $7090: $d1
    db $fc                                        ; $7091: $fc
    ld b, e                                       ; $7092: $43
    nop                                           ; $7093: $00
    ret nc                                        ; $7094: $d0

    db $fc                                        ; $7095: $fc
    ld b, d                                       ; $7096: $42
    nop                                           ; $7097: $00
    ret nc                                        ; $7098: $d0

    db $fc                                        ; $7099: $fc
    ld b, c                                       ; $709a: $41
    nop                                           ; $709b: $00
    db $fc                                        ; $709c: $fc
    ld b, b                                       ; $709d: $40
    nop                                           ; $709e: $00
    rst $28                                       ; $709f: $ef
    ld a, [$f700]                                 ; $70a0: $fa $00 $f7
    rlca                                          ; $70a3: $07
    ei                                            ; $70a4: $fb
    inc sp                                        ; $70a5: $33
    db $fc                                        ; $70a6: $fc
    nop                                           ; $70a7: $00
    nop                                           ; $70a8: $00
    db $fc                                        ; $70a9: $fc
    ld [bc], a                                    ; $70aa: $02
    nop                                           ; $70ab: $00
    db $fc                                        ; $70ac: $fc
    inc b                                         ; $70ad: $04
    nop                                           ; $70ae: $00
    db $fc                                        ; $70af: $fc
    ld b, $00                                     ; $70b0: $06 $00
    rst $28                                       ; $70b2: $ef
    ld a, [$f700]                                 ; $70b3: $fa $00 $f7
    rrca                                          ; $70b6: $0f
    ldh a, [rP1]                                  ; $70b7: $f0 $00
    nop                                           ; $70b9: $00
    nop                                           ; $70ba: $00
    ei                                            ; $70bb: $fb
    inc sp                                        ; $70bc: $33
    rst $20                                       ; $70bd: $e7
    inc bc                                        ; $70be: $03
    rst $30                                       ; $70bf: $f7
    inc c                                         ; $70c0: $0c
    inc bc                                        ; $70c1: $03
    rst $30                                       ; $70c2: $f7
    add hl, bc                                    ; $70c3: $09
    inc bc                                        ; $70c4: $03
    rst $30                                       ; $70c5: $f7
    ld b, $03                                     ; $70c6: $06 $03
    rst $30                                       ; $70c8: $f7
    inc bc                                        ; $70c9: $03
    inc bc                                        ; $70ca: $03
    rst $28                                       ; $70cb: $ef
    ld a, [$f700]                                 ; $70cc: $fa $00 $f7
    rrca                                          ; $70cf: $0f
    ei                                            ; $70d0: $fb
    inc sp                                        ; $70d1: $33
    db $d3                                        ; $70d2: $d3
    db $fc                                        ; $70d3: $fc
    jr nz, jr_00f_70d6                            ; $70d4: $20 $00

jr_00f_70d6:
    pop de                                        ; $70d6: $d1
    db $fc                                        ; $70d7: $fc
    ld b, b                                       ; $70d8: $40
    nop                                           ; $70d9: $00
    pop de                                        ; $70da: $d1
    db $fc                                        ; $70db: $fc
    ld h, b                                       ; $70dc: $60
    nop                                           ; $70dd: $00
    pop de                                        ; $70de: $d1
    db $fc                                        ; $70df: $fc
    ld h, c                                       ; $70e0: $61
    nop                                           ; $70e1: $00
    pop de                                        ; $70e2: $d1
    db $fc                                        ; $70e3: $fc
    ld h, d                                       ; $70e4: $62
    nop                                           ; $70e5: $00
    pop de                                        ; $70e6: $d1
    db $fc                                        ; $70e7: $fc
    ld h, e                                       ; $70e8: $63
    nop                                           ; $70e9: $00
    pop de                                        ; $70ea: $d1
    db $fc                                        ; $70eb: $fc
    ld h, h                                       ; $70ec: $64
    nop                                           ; $70ed: $00
    pop de                                        ; $70ee: $d1
    rst $28                                       ; $70ef: $ef
    ld a, [$e465]                                 ; $70f0: $fa $65 $e4
    rst $30                                       ; $70f3: $f7
    ld [$20f0], sp                                ; $70f4: $08 $f0 $20
    ld [bc], a                                    ; $70f7: $02
    nop                                           ; $70f8: $00
    ei                                            ; $70f9: $fb
    inc de                                        ; $70fa: $13
    inc bc                                        ; $70fb: $03
    rst $30                                       ; $70fc: $f7
    ld b, $53                                     ; $70fd: $06 $53
    rst $28                                       ; $70ff: $ef
    ld a, [$e465]                                 ; $7100: $fa $65 $e4
    rst $30                                       ; $7103: $f7
    ld [$20f0], sp                                ; $7104: $08 $f0 $20
    ld [bc], a                                    ; $7107: $02
    nop                                           ; $7108: $00
    ei                                            ; $7109: $fb
    inc hl                                        ; $710a: $23
    ld d, e                                       ; $710b: $53
    rst $30                                       ; $710c: $f7
    ld b, $93                                     ; $710d: $06 $93
    rst $28                                       ; $710f: $ef
    ld a, [$e465]                                 ; $7110: $fa $65 $e4
    rst $30                                       ; $7113: $f7
    ld [$20f0], sp                                ; $7114: $08 $f0 $20
    ld [bc], a                                    ; $7117: $02
    nop                                           ; $7118: $00
    ei                                            ; $7119: $fb
    inc de                                        ; $711a: $13
    ld d, e                                       ; $711b: $53
    rst $30                                       ; $711c: $f7
    ld b, $03                                     ; $711d: $06 $03
    pop de                                        ; $711f: $d1
    rst $28                                       ; $7120: $ef
    ld a, [$e465]                                 ; $7121: $fa $65 $e4
    rst $30                                       ; $7124: $f7
    ld [$20f0], sp                                ; $7125: $08 $f0 $20
    ld [bc], a                                    ; $7128: $02
    nop                                           ; $7129: $00
    ei                                            ; $712a: $fb
    inc hl                                        ; $712b: $23
    sub e                                         ; $712c: $93
    rst $30                                       ; $712d: $f7
    ld b, $53                                     ; $712e: $06 $53
    pop de                                        ; $7130: $d1
    rst $28                                       ; $7131: $ef
    ld a, [$e478]                                 ; $7132: $fa $78 $e4
    rst $30                                       ; $7135: $f7
    dec c                                         ; $7136: $0d
    ldh a, [rNR12]                                ; $7137: $f0 $12
    ld [bc], a                                    ; $7139: $02
    nop                                           ; $713a: $00
    ei                                            ; $713b: $fb
    inc sp                                        ; $713c: $33
    ld [bc], a                                    ; $713d: $02
    ld [hl+], a                                   ; $713e: $22
    ld b, d                                       ; $713f: $42
    rst $30                                       ; $7140: $f7
    dec bc                                        ; $7141: $0b
    ld [hl+], a                                   ; $7142: $22
    ld b, d                                       ; $7143: $42
    ld d, d                                       ; $7144: $52
    rst $30                                       ; $7145: $f7
    add hl, bc                                    ; $7146: $09
    ld b, d                                       ; $7147: $42
    ld d, d                                       ; $7148: $52
    ld [hl], d                                    ; $7149: $72
    rst $28                                       ; $714a: $ef
    ld a, [$e472]                                 ; $714b: $fa $72 $e4
    rst $30                                       ; $714e: $f7
    rrca                                          ; $714f: $0f
    ldh a, [rNR10]                                ; $7150: $f0 $10
    ld bc, $fb00                                  ; $7152: $01 $00 $fb
    inc sp                                        ; $7155: $33
    ld [hl+], a                                   ; $7156: $22
    ld b, d                                       ; $7157: $42
    ld [hl], d                                    ; $7158: $72
    or d                                          ; $7159: $b2
    rst $30                                       ; $715a: $f7
    rlca                                          ; $715b: $07
    ld [hl+], a                                   ; $715c: $22
    ld b, d                                       ; $715d: $42
    ld [hl], d                                    ; $715e: $72
    or d                                          ; $715f: $b2
    rst $30                                       ; $7160: $f7
    inc bc                                        ; $7161: $03
    ld [hl+], a                                   ; $7162: $22
    ld b, d                                       ; $7163: $42
    ld [hl], d                                    ; $7164: $72
    or d                                          ; $7165: $b2
    rst $28                                       ; $7166: $ef
    ld a, [$e472]                                 ; $7167: $fa $72 $e4
    rst $30                                       ; $716a: $f7
    rrca                                          ; $716b: $0f
    ldh a, [rNR10]                                ; $716c: $f0 $10
    ld bc, $fb00                                  ; $716e: $01 $00 $fb
    inc sp                                        ; $7171: $33
    or d                                          ; $7172: $b2
    ld [hl], d                                    ; $7173: $72
    ld b, d                                       ; $7174: $42
    ld [hl+], a                                   ; $7175: $22
    rst $30                                       ; $7176: $f7
    rlca                                          ; $7177: $07
    or d                                          ; $7178: $b2
    ld [hl], d                                    ; $7179: $72
    ld b, d                                       ; $717a: $42
    ld [hl+], a                                   ; $717b: $22
    rst $30                                       ; $717c: $f7
    inc bc                                        ; $717d: $03
    or d                                          ; $717e: $b2
    ld [hl], d                                    ; $717f: $72
    ld b, d                                       ; $7180: $42
    ld [hl+], a                                   ; $7181: $22
    rst $28                                       ; $7182: $ef
    nop                                           ; $7183: $00
    nop                                           ; $7184: $00
    nop                                           ; $7185: $00
    nop                                           ; $7186: $00
    nop                                           ; $7187: $00
    nop                                           ; $7188: $00
    nop                                           ; $7189: $00
    nop                                           ; $718a: $00
    nop                                           ; $718b: $00
    nop                                           ; $718c: $00
    nop                                           ; $718d: $00
    nop                                           ; $718e: $00
    nop                                           ; $718f: $00
    nop                                           ; $7190: $00
    nop                                           ; $7191: $00
    nop                                           ; $7192: $00
    nop                                           ; $7193: $00
    nop                                           ; $7194: $00
    nop                                           ; $7195: $00
    nop                                           ; $7196: $00
    nop                                           ; $7197: $00
    nop                                           ; $7198: $00
    nop                                           ; $7199: $00
    nop                                           ; $719a: $00
    nop                                           ; $719b: $00
    nop                                           ; $719c: $00
    nop                                           ; $719d: $00
    nop                                           ; $719e: $00
    nop                                           ; $719f: $00
    nop                                           ; $71a0: $00
    nop                                           ; $71a1: $00
    nop                                           ; $71a2: $00
    nop                                           ; $71a3: $00
    nop                                           ; $71a4: $00
    nop                                           ; $71a5: $00
    nop                                           ; $71a6: $00
    nop                                           ; $71a7: $00
    nop                                           ; $71a8: $00
    nop                                           ; $71a9: $00
    nop                                           ; $71aa: $00
    nop                                           ; $71ab: $00
    nop                                           ; $71ac: $00
    nop                                           ; $71ad: $00
    nop                                           ; $71ae: $00
    nop                                           ; $71af: $00
    nop                                           ; $71b0: $00
    nop                                           ; $71b1: $00
    nop                                           ; $71b2: $00
    nop                                           ; $71b3: $00
    nop                                           ; $71b4: $00
    nop                                           ; $71b5: $00
    nop                                           ; $71b6: $00
    nop                                           ; $71b7: $00
    nop                                           ; $71b8: $00
    nop                                           ; $71b9: $00
    nop                                           ; $71ba: $00
    nop                                           ; $71bb: $00
    nop                                           ; $71bc: $00
    nop                                           ; $71bd: $00
    nop                                           ; $71be: $00
    nop                                           ; $71bf: $00
    nop                                           ; $71c0: $00
    nop                                           ; $71c1: $00
    nop                                           ; $71c2: $00
    nop                                           ; $71c3: $00
    nop                                           ; $71c4: $00
    nop                                           ; $71c5: $00
    nop                                           ; $71c6: $00
    nop                                           ; $71c7: $00
    nop                                           ; $71c8: $00
    nop                                           ; $71c9: $00
    nop                                           ; $71ca: $00
    nop                                           ; $71cb: $00
    nop                                           ; $71cc: $00
    nop                                           ; $71cd: $00
    nop                                           ; $71ce: $00
    nop                                           ; $71cf: $00
    nop                                           ; $71d0: $00
    nop                                           ; $71d1: $00
    nop                                           ; $71d2: $00
    nop                                           ; $71d3: $00
    nop                                           ; $71d4: $00
    nop                                           ; $71d5: $00
    nop                                           ; $71d6: $00
    nop                                           ; $71d7: $00
    nop                                           ; $71d8: $00
    nop                                           ; $71d9: $00
    nop                                           ; $71da: $00
    nop                                           ; $71db: $00
    nop                                           ; $71dc: $00
    nop                                           ; $71dd: $00
    nop                                           ; $71de: $00
    nop                                           ; $71df: $00
    nop                                           ; $71e0: $00
    nop                                           ; $71e1: $00
    nop                                           ; $71e2: $00
    nop                                           ; $71e3: $00
    nop                                           ; $71e4: $00
    nop                                           ; $71e5: $00
    nop                                           ; $71e6: $00
    nop                                           ; $71e7: $00
    nop                                           ; $71e8: $00
    nop                                           ; $71e9: $00
    nop                                           ; $71ea: $00
    nop                                           ; $71eb: $00
    nop                                           ; $71ec: $00
    nop                                           ; $71ed: $00
    nop                                           ; $71ee: $00
    nop                                           ; $71ef: $00
    nop                                           ; $71f0: $00
    nop                                           ; $71f1: $00
    nop                                           ; $71f2: $00
    nop                                           ; $71f3: $00
    nop                                           ; $71f4: $00
    nop                                           ; $71f5: $00
    nop                                           ; $71f6: $00
    nop                                           ; $71f7: $00
    nop                                           ; $71f8: $00
    nop                                           ; $71f9: $00
    nop                                           ; $71fa: $00
    nop                                           ; $71fb: $00
    nop                                           ; $71fc: $00
    nop                                           ; $71fd: $00
    nop                                           ; $71fe: $00
    nop                                           ; $71ff: $00
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    nop                                           ; $7202: $00
    nop                                           ; $7203: $00
    nop                                           ; $7204: $00
    nop                                           ; $7205: $00
    nop                                           ; $7206: $00
    nop                                           ; $7207: $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    nop                                           ; $720a: $00
    nop                                           ; $720b: $00
    nop                                           ; $720c: $00
    nop                                           ; $720d: $00
    nop                                           ; $720e: $00
    nop                                           ; $720f: $00
    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    nop                                           ; $7212: $00
    nop                                           ; $7213: $00
    nop                                           ; $7214: $00
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00
    nop                                           ; $7217: $00
    nop                                           ; $7218: $00
    nop                                           ; $7219: $00
    nop                                           ; $721a: $00
    nop                                           ; $721b: $00
    nop                                           ; $721c: $00
    nop                                           ; $721d: $00
    nop                                           ; $721e: $00
    nop                                           ; $721f: $00
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    nop                                           ; $7223: $00
    nop                                           ; $7224: $00
    nop                                           ; $7225: $00
    nop                                           ; $7226: $00
    nop                                           ; $7227: $00
    nop                                           ; $7228: $00
    nop                                           ; $7229: $00
    nop                                           ; $722a: $00
    nop                                           ; $722b: $00
    nop                                           ; $722c: $00
    nop                                           ; $722d: $00
    nop                                           ; $722e: $00
    nop                                           ; $722f: $00
    nop                                           ; $7230: $00
    nop                                           ; $7231: $00
    nop                                           ; $7232: $00
    nop                                           ; $7233: $00
    nop                                           ; $7234: $00
    nop                                           ; $7235: $00
    nop                                           ; $7236: $00
    nop                                           ; $7237: $00
    nop                                           ; $7238: $00
    nop                                           ; $7239: $00
    nop                                           ; $723a: $00
    nop                                           ; $723b: $00
    nop                                           ; $723c: $00
    nop                                           ; $723d: $00
    nop                                           ; $723e: $00
    nop                                           ; $723f: $00
    nop                                           ; $7240: $00
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    nop                                           ; $7243: $00
    nop                                           ; $7244: $00
    nop                                           ; $7245: $00
    nop                                           ; $7246: $00
    nop                                           ; $7247: $00
    nop                                           ; $7248: $00
    nop                                           ; $7249: $00
    nop                                           ; $724a: $00
    nop                                           ; $724b: $00
    nop                                           ; $724c: $00
    nop                                           ; $724d: $00
    nop                                           ; $724e: $00
    nop                                           ; $724f: $00
    nop                                           ; $7250: $00
    nop                                           ; $7251: $00
    nop                                           ; $7252: $00
    nop                                           ; $7253: $00
    nop                                           ; $7254: $00
    nop                                           ; $7255: $00
    nop                                           ; $7256: $00
    nop                                           ; $7257: $00
    nop                                           ; $7258: $00
    nop                                           ; $7259: $00
    nop                                           ; $725a: $00
    nop                                           ; $725b: $00
    nop                                           ; $725c: $00
    nop                                           ; $725d: $00
    nop                                           ; $725e: $00
    nop                                           ; $725f: $00
    nop                                           ; $7260: $00
    nop                                           ; $7261: $00
    nop                                           ; $7262: $00
    nop                                           ; $7263: $00
    nop                                           ; $7264: $00
    nop                                           ; $7265: $00
    nop                                           ; $7266: $00
    nop                                           ; $7267: $00
    nop                                           ; $7268: $00
    nop                                           ; $7269: $00
    nop                                           ; $726a: $00
    nop                                           ; $726b: $00
    nop                                           ; $726c: $00
    nop                                           ; $726d: $00
    nop                                           ; $726e: $00
    nop                                           ; $726f: $00
    nop                                           ; $7270: $00
    nop                                           ; $7271: $00
    nop                                           ; $7272: $00
    nop                                           ; $7273: $00
    nop                                           ; $7274: $00
    nop                                           ; $7275: $00
    nop                                           ; $7276: $00
    nop                                           ; $7277: $00
    nop                                           ; $7278: $00
    nop                                           ; $7279: $00
    nop                                           ; $727a: $00
    nop                                           ; $727b: $00
    nop                                           ; $727c: $00
    nop                                           ; $727d: $00
    nop                                           ; $727e: $00
    nop                                           ; $727f: $00
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00
    nop                                           ; $7283: $00
    nop                                           ; $7284: $00
    nop                                           ; $7285: $00
    nop                                           ; $7286: $00
    nop                                           ; $7287: $00
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    nop                                           ; $728a: $00
    nop                                           ; $728b: $00
    nop                                           ; $728c: $00
    nop                                           ; $728d: $00
    nop                                           ; $728e: $00
    nop                                           ; $728f: $00
    nop                                           ; $7290: $00
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    nop                                           ; $7293: $00
    nop                                           ; $7294: $00
    nop                                           ; $7295: $00
    nop                                           ; $7296: $00
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00
    nop                                           ; $7299: $00
    nop                                           ; $729a: $00
    nop                                           ; $729b: $00
    nop                                           ; $729c: $00
    nop                                           ; $729d: $00
    nop                                           ; $729e: $00
    nop                                           ; $729f: $00
    nop                                           ; $72a0: $00
    nop                                           ; $72a1: $00
    nop                                           ; $72a2: $00
    nop                                           ; $72a3: $00
    nop                                           ; $72a4: $00
    nop                                           ; $72a5: $00
    nop                                           ; $72a6: $00
    nop                                           ; $72a7: $00
    nop                                           ; $72a8: $00
    nop                                           ; $72a9: $00
    nop                                           ; $72aa: $00
    nop                                           ; $72ab: $00
    nop                                           ; $72ac: $00
    nop                                           ; $72ad: $00
    nop                                           ; $72ae: $00
    nop                                           ; $72af: $00
    nop                                           ; $72b0: $00
    nop                                           ; $72b1: $00
    nop                                           ; $72b2: $00
    nop                                           ; $72b3: $00
    nop                                           ; $72b4: $00
    nop                                           ; $72b5: $00
    nop                                           ; $72b6: $00
    nop                                           ; $72b7: $00
    nop                                           ; $72b8: $00
    nop                                           ; $72b9: $00
    nop                                           ; $72ba: $00
    nop                                           ; $72bb: $00
    nop                                           ; $72bc: $00
    nop                                           ; $72bd: $00
    nop                                           ; $72be: $00
    nop                                           ; $72bf: $00
    nop                                           ; $72c0: $00
    nop                                           ; $72c1: $00
    nop                                           ; $72c2: $00
    nop                                           ; $72c3: $00
    nop                                           ; $72c4: $00
    nop                                           ; $72c5: $00
    nop                                           ; $72c6: $00
    nop                                           ; $72c7: $00
    nop                                           ; $72c8: $00
    nop                                           ; $72c9: $00
    nop                                           ; $72ca: $00
    nop                                           ; $72cb: $00
    nop                                           ; $72cc: $00
    nop                                           ; $72cd: $00
    nop                                           ; $72ce: $00
    nop                                           ; $72cf: $00
    nop                                           ; $72d0: $00
    nop                                           ; $72d1: $00
    nop                                           ; $72d2: $00
    nop                                           ; $72d3: $00
    nop                                           ; $72d4: $00
    nop                                           ; $72d5: $00
    nop                                           ; $72d6: $00
    nop                                           ; $72d7: $00
    nop                                           ; $72d8: $00
    nop                                           ; $72d9: $00
    nop                                           ; $72da: $00
    nop                                           ; $72db: $00
    nop                                           ; $72dc: $00
    nop                                           ; $72dd: $00
    nop                                           ; $72de: $00
    nop                                           ; $72df: $00
    nop                                           ; $72e0: $00
    nop                                           ; $72e1: $00
    nop                                           ; $72e2: $00
    nop                                           ; $72e3: $00
    nop                                           ; $72e4: $00
    nop                                           ; $72e5: $00
    nop                                           ; $72e6: $00
    nop                                           ; $72e7: $00
    nop                                           ; $72e8: $00
    nop                                           ; $72e9: $00
    nop                                           ; $72ea: $00
    nop                                           ; $72eb: $00
    nop                                           ; $72ec: $00
    nop                                           ; $72ed: $00
    nop                                           ; $72ee: $00
    nop                                           ; $72ef: $00
    nop                                           ; $72f0: $00
    nop                                           ; $72f1: $00
    nop                                           ; $72f2: $00
    nop                                           ; $72f3: $00
    nop                                           ; $72f4: $00
    nop                                           ; $72f5: $00
    nop                                           ; $72f6: $00
    nop                                           ; $72f7: $00
    nop                                           ; $72f8: $00
    nop                                           ; $72f9: $00
    nop                                           ; $72fa: $00
    nop                                           ; $72fb: $00
    nop                                           ; $72fc: $00
    nop                                           ; $72fd: $00
    nop                                           ; $72fe: $00
    nop                                           ; $72ff: $00
    nop                                           ; $7300: $00
    nop                                           ; $7301: $00
    nop                                           ; $7302: $00
    nop                                           ; $7303: $00
    nop                                           ; $7304: $00
    nop                                           ; $7305: $00
    nop                                           ; $7306: $00
    nop                                           ; $7307: $00
    nop                                           ; $7308: $00
    nop                                           ; $7309: $00
    nop                                           ; $730a: $00
    nop                                           ; $730b: $00
    nop                                           ; $730c: $00
    nop                                           ; $730d: $00
    nop                                           ; $730e: $00
    nop                                           ; $730f: $00
    nop                                           ; $7310: $00
    nop                                           ; $7311: $00
    nop                                           ; $7312: $00
    nop                                           ; $7313: $00
    nop                                           ; $7314: $00
    nop                                           ; $7315: $00
    nop                                           ; $7316: $00
    nop                                           ; $7317: $00
    nop                                           ; $7318: $00
    nop                                           ; $7319: $00
    nop                                           ; $731a: $00
    nop                                           ; $731b: $00
    nop                                           ; $731c: $00
    nop                                           ; $731d: $00
    nop                                           ; $731e: $00
    nop                                           ; $731f: $00
    nop                                           ; $7320: $00
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    nop                                           ; $7323: $00
    nop                                           ; $7324: $00
    nop                                           ; $7325: $00
    nop                                           ; $7326: $00
    nop                                           ; $7327: $00
    nop                                           ; $7328: $00
    nop                                           ; $7329: $00
    nop                                           ; $732a: $00
    nop                                           ; $732b: $00
    nop                                           ; $732c: $00
    nop                                           ; $732d: $00
    nop                                           ; $732e: $00
    nop                                           ; $732f: $00
    nop                                           ; $7330: $00
    nop                                           ; $7331: $00
    nop                                           ; $7332: $00
    nop                                           ; $7333: $00
    nop                                           ; $7334: $00
    nop                                           ; $7335: $00
    nop                                           ; $7336: $00
    nop                                           ; $7337: $00
    nop                                           ; $7338: $00
    nop                                           ; $7339: $00
    nop                                           ; $733a: $00
    nop                                           ; $733b: $00
    nop                                           ; $733c: $00
    nop                                           ; $733d: $00
    nop                                           ; $733e: $00
    nop                                           ; $733f: $00
    nop                                           ; $7340: $00
    nop                                           ; $7341: $00
    nop                                           ; $7342: $00
    nop                                           ; $7343: $00
    nop                                           ; $7344: $00
    nop                                           ; $7345: $00
    nop                                           ; $7346: $00
    nop                                           ; $7347: $00
    nop                                           ; $7348: $00
    nop                                           ; $7349: $00
    nop                                           ; $734a: $00
    nop                                           ; $734b: $00
    nop                                           ; $734c: $00
    nop                                           ; $734d: $00
    nop                                           ; $734e: $00
    nop                                           ; $734f: $00
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    nop                                           ; $7353: $00
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    nop                                           ; $7358: $00
    nop                                           ; $7359: $00
    nop                                           ; $735a: $00
    nop                                           ; $735b: $00
    nop                                           ; $735c: $00
    nop                                           ; $735d: $00
    nop                                           ; $735e: $00
    nop                                           ; $735f: $00
    nop                                           ; $7360: $00
    nop                                           ; $7361: $00
    nop                                           ; $7362: $00
    nop                                           ; $7363: $00
    nop                                           ; $7364: $00
    nop                                           ; $7365: $00
    nop                                           ; $7366: $00
    nop                                           ; $7367: $00
    nop                                           ; $7368: $00
    nop                                           ; $7369: $00
    nop                                           ; $736a: $00
    nop                                           ; $736b: $00
    nop                                           ; $736c: $00
    nop                                           ; $736d: $00
    nop                                           ; $736e: $00
    nop                                           ; $736f: $00
    nop                                           ; $7370: $00
    nop                                           ; $7371: $00
    nop                                           ; $7372: $00
    nop                                           ; $7373: $00
    nop                                           ; $7374: $00
    nop                                           ; $7375: $00
    nop                                           ; $7376: $00
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    nop                                           ; $737a: $00
    nop                                           ; $737b: $00
    nop                                           ; $737c: $00
    nop                                           ; $737d: $00
    nop                                           ; $737e: $00
    nop                                           ; $737f: $00
    nop                                           ; $7380: $00
    nop                                           ; $7381: $00
    nop                                           ; $7382: $00
    nop                                           ; $7383: $00
    nop                                           ; $7384: $00
    nop                                           ; $7385: $00
    nop                                           ; $7386: $00
    nop                                           ; $7387: $00
    nop                                           ; $7388: $00
    nop                                           ; $7389: $00
    nop                                           ; $738a: $00
    nop                                           ; $738b: $00
    nop                                           ; $738c: $00
    nop                                           ; $738d: $00
    nop                                           ; $738e: $00
    nop                                           ; $738f: $00
    nop                                           ; $7390: $00
    nop                                           ; $7391: $00
    nop                                           ; $7392: $00
    nop                                           ; $7393: $00
    nop                                           ; $7394: $00
    nop                                           ; $7395: $00
    nop                                           ; $7396: $00
    nop                                           ; $7397: $00
    nop                                           ; $7398: $00
    nop                                           ; $7399: $00
    nop                                           ; $739a: $00
    nop                                           ; $739b: $00
    nop                                           ; $739c: $00
    nop                                           ; $739d: $00
    nop                                           ; $739e: $00
    nop                                           ; $739f: $00
    nop                                           ; $73a0: $00
    nop                                           ; $73a1: $00
    nop                                           ; $73a2: $00
    nop                                           ; $73a3: $00
    nop                                           ; $73a4: $00
    nop                                           ; $73a5: $00
    nop                                           ; $73a6: $00
    nop                                           ; $73a7: $00
    nop                                           ; $73a8: $00
    nop                                           ; $73a9: $00
    nop                                           ; $73aa: $00
    nop                                           ; $73ab: $00
    nop                                           ; $73ac: $00
    nop                                           ; $73ad: $00
    nop                                           ; $73ae: $00
    nop                                           ; $73af: $00
    nop                                           ; $73b0: $00
    nop                                           ; $73b1: $00
    nop                                           ; $73b2: $00
    nop                                           ; $73b3: $00
    nop                                           ; $73b4: $00
    nop                                           ; $73b5: $00
    nop                                           ; $73b6: $00
    nop                                           ; $73b7: $00
    nop                                           ; $73b8: $00
    nop                                           ; $73b9: $00
    nop                                           ; $73ba: $00
    nop                                           ; $73bb: $00
    nop                                           ; $73bc: $00
    nop                                           ; $73bd: $00
    nop                                           ; $73be: $00
    nop                                           ; $73bf: $00
    nop                                           ; $73c0: $00
    nop                                           ; $73c1: $00
    nop                                           ; $73c2: $00
    nop                                           ; $73c3: $00
    nop                                           ; $73c4: $00
    nop                                           ; $73c5: $00
    nop                                           ; $73c6: $00
    nop                                           ; $73c7: $00
    nop                                           ; $73c8: $00
    nop                                           ; $73c9: $00
    nop                                           ; $73ca: $00
    nop                                           ; $73cb: $00
    nop                                           ; $73cc: $00
    nop                                           ; $73cd: $00
    nop                                           ; $73ce: $00
    nop                                           ; $73cf: $00
    nop                                           ; $73d0: $00
    nop                                           ; $73d1: $00
    nop                                           ; $73d2: $00
    nop                                           ; $73d3: $00
    nop                                           ; $73d4: $00
    nop                                           ; $73d5: $00
    nop                                           ; $73d6: $00
    nop                                           ; $73d7: $00
    nop                                           ; $73d8: $00
    nop                                           ; $73d9: $00
    nop                                           ; $73da: $00
    nop                                           ; $73db: $00
    nop                                           ; $73dc: $00
    nop                                           ; $73dd: $00
    nop                                           ; $73de: $00
    nop                                           ; $73df: $00
    nop                                           ; $73e0: $00
    nop                                           ; $73e1: $00
    nop                                           ; $73e2: $00
    nop                                           ; $73e3: $00
    nop                                           ; $73e4: $00
    nop                                           ; $73e5: $00
    nop                                           ; $73e6: $00
    nop                                           ; $73e7: $00
    nop                                           ; $73e8: $00
    nop                                           ; $73e9: $00
    nop                                           ; $73ea: $00
    nop                                           ; $73eb: $00
    nop                                           ; $73ec: $00
    nop                                           ; $73ed: $00
    nop                                           ; $73ee: $00
    nop                                           ; $73ef: $00
    nop                                           ; $73f0: $00
    nop                                           ; $73f1: $00
    nop                                           ; $73f2: $00
    nop                                           ; $73f3: $00
    nop                                           ; $73f4: $00
    nop                                           ; $73f5: $00
    nop                                           ; $73f6: $00
    nop                                           ; $73f7: $00
    nop                                           ; $73f8: $00
    nop                                           ; $73f9: $00
    nop                                           ; $73fa: $00
    nop                                           ; $73fb: $00
    nop                                           ; $73fc: $00
    nop                                           ; $73fd: $00
    nop                                           ; $73fe: $00
    nop                                           ; $73ff: $00
    nop                                           ; $7400: $00
    nop                                           ; $7401: $00
    nop                                           ; $7402: $00
    nop                                           ; $7403: $00

Call_00f_7404:
    nop                                           ; $7404: $00
    nop                                           ; $7405: $00
    nop                                           ; $7406: $00
    nop                                           ; $7407: $00
    nop                                           ; $7408: $00
    nop                                           ; $7409: $00
    nop                                           ; $740a: $00
    nop                                           ; $740b: $00
    nop                                           ; $740c: $00
    nop                                           ; $740d: $00
    nop                                           ; $740e: $00
    nop                                           ; $740f: $00
    nop                                           ; $7410: $00
    nop                                           ; $7411: $00
    nop                                           ; $7412: $00
    nop                                           ; $7413: $00
    nop                                           ; $7414: $00
    nop                                           ; $7415: $00
    nop                                           ; $7416: $00
    nop                                           ; $7417: $00
    nop                                           ; $7418: $00
    nop                                           ; $7419: $00
    nop                                           ; $741a: $00
    nop                                           ; $741b: $00
    nop                                           ; $741c: $00
    nop                                           ; $741d: $00
    nop                                           ; $741e: $00
    nop                                           ; $741f: $00
    nop                                           ; $7420: $00
    nop                                           ; $7421: $00
    nop                                           ; $7422: $00
    nop                                           ; $7423: $00
    nop                                           ; $7424: $00
    nop                                           ; $7425: $00
    nop                                           ; $7426: $00
    nop                                           ; $7427: $00
    nop                                           ; $7428: $00
    nop                                           ; $7429: $00
    nop                                           ; $742a: $00
    nop                                           ; $742b: $00
    nop                                           ; $742c: $00
    nop                                           ; $742d: $00
    nop                                           ; $742e: $00
    nop                                           ; $742f: $00
    nop                                           ; $7430: $00
    nop                                           ; $7431: $00
    nop                                           ; $7432: $00
    nop                                           ; $7433: $00
    nop                                           ; $7434: $00
    nop                                           ; $7435: $00
    nop                                           ; $7436: $00
    nop                                           ; $7437: $00
    nop                                           ; $7438: $00
    nop                                           ; $7439: $00
    nop                                           ; $743a: $00
    nop                                           ; $743b: $00
    nop                                           ; $743c: $00
    nop                                           ; $743d: $00
    nop                                           ; $743e: $00
    nop                                           ; $743f: $00
    nop                                           ; $7440: $00
    nop                                           ; $7441: $00
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    nop                                           ; $7444: $00
    nop                                           ; $7445: $00
    nop                                           ; $7446: $00
    nop                                           ; $7447: $00
    nop                                           ; $7448: $00
    nop                                           ; $7449: $00
    nop                                           ; $744a: $00
    nop                                           ; $744b: $00
    nop                                           ; $744c: $00
    nop                                           ; $744d: $00
    nop                                           ; $744e: $00
    nop                                           ; $744f: $00
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    nop                                           ; $7454: $00
    nop                                           ; $7455: $00
    nop                                           ; $7456: $00
    nop                                           ; $7457: $00
    nop                                           ; $7458: $00
    nop                                           ; $7459: $00
    nop                                           ; $745a: $00
    nop                                           ; $745b: $00
    nop                                           ; $745c: $00
    nop                                           ; $745d: $00
    nop                                           ; $745e: $00
    nop                                           ; $745f: $00
    nop                                           ; $7460: $00
    nop                                           ; $7461: $00
    nop                                           ; $7462: $00
    nop                                           ; $7463: $00
    nop                                           ; $7464: $00
    nop                                           ; $7465: $00
    nop                                           ; $7466: $00
    nop                                           ; $7467: $00
    nop                                           ; $7468: $00
    nop                                           ; $7469: $00
    nop                                           ; $746a: $00
    nop                                           ; $746b: $00
    nop                                           ; $746c: $00
    nop                                           ; $746d: $00
    nop                                           ; $746e: $00
    nop                                           ; $746f: $00
    nop                                           ; $7470: $00
    nop                                           ; $7471: $00
    nop                                           ; $7472: $00
    nop                                           ; $7473: $00

Call_00f_7474:
    nop                                           ; $7474: $00
    nop                                           ; $7475: $00
    nop                                           ; $7476: $00
    nop                                           ; $7477: $00
    nop                                           ; $7478: $00
    nop                                           ; $7479: $00
    nop                                           ; $747a: $00
    nop                                           ; $747b: $00
    nop                                           ; $747c: $00
    nop                                           ; $747d: $00
    nop                                           ; $747e: $00
    nop                                           ; $747f: $00
    nop                                           ; $7480: $00
    nop                                           ; $7481: $00
    nop                                           ; $7482: $00
    nop                                           ; $7483: $00
    nop                                           ; $7484: $00
    nop                                           ; $7485: $00
    nop                                           ; $7486: $00
    nop                                           ; $7487: $00
    nop                                           ; $7488: $00
    nop                                           ; $7489: $00
    nop                                           ; $748a: $00
    nop                                           ; $748b: $00
    nop                                           ; $748c: $00
    nop                                           ; $748d: $00
    nop                                           ; $748e: $00
    nop                                           ; $748f: $00
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    nop                                           ; $7493: $00

Jump_00f_7494:
    nop                                           ; $7494: $00
    nop                                           ; $7495: $00
    nop                                           ; $7496: $00
    nop                                           ; $7497: $00
    nop                                           ; $7498: $00
    nop                                           ; $7499: $00
    nop                                           ; $749a: $00
    nop                                           ; $749b: $00
    nop                                           ; $749c: $00
    nop                                           ; $749d: $00
    nop                                           ; $749e: $00
    nop                                           ; $749f: $00
    nop                                           ; $74a0: $00
    nop                                           ; $74a1: $00
    nop                                           ; $74a2: $00
    nop                                           ; $74a3: $00
    nop                                           ; $74a4: $00
    nop                                           ; $74a5: $00
    nop                                           ; $74a6: $00
    nop                                           ; $74a7: $00
    nop                                           ; $74a8: $00
    nop                                           ; $74a9: $00
    nop                                           ; $74aa: $00
    nop                                           ; $74ab: $00
    nop                                           ; $74ac: $00
    nop                                           ; $74ad: $00
    nop                                           ; $74ae: $00
    nop                                           ; $74af: $00
    nop                                           ; $74b0: $00
    nop                                           ; $74b1: $00
    nop                                           ; $74b2: $00
    nop                                           ; $74b3: $00
    nop                                           ; $74b4: $00
    nop                                           ; $74b5: $00
    nop                                           ; $74b6: $00
    nop                                           ; $74b7: $00
    nop                                           ; $74b8: $00
    nop                                           ; $74b9: $00
    nop                                           ; $74ba: $00
    nop                                           ; $74bb: $00
    nop                                           ; $74bc: $00
    nop                                           ; $74bd: $00
    nop                                           ; $74be: $00
    nop                                           ; $74bf: $00
    nop                                           ; $74c0: $00
    nop                                           ; $74c1: $00
    nop                                           ; $74c2: $00
    nop                                           ; $74c3: $00
    nop                                           ; $74c4: $00
    nop                                           ; $74c5: $00
    nop                                           ; $74c6: $00
    nop                                           ; $74c7: $00
    nop                                           ; $74c8: $00
    nop                                           ; $74c9: $00
    nop                                           ; $74ca: $00
    nop                                           ; $74cb: $00
    nop                                           ; $74cc: $00
    nop                                           ; $74cd: $00
    nop                                           ; $74ce: $00
    nop                                           ; $74cf: $00
    nop                                           ; $74d0: $00
    nop                                           ; $74d1: $00
    nop                                           ; $74d2: $00
    nop                                           ; $74d3: $00
    nop                                           ; $74d4: $00
    nop                                           ; $74d5: $00
    nop                                           ; $74d6: $00
    nop                                           ; $74d7: $00
    nop                                           ; $74d8: $00
    nop                                           ; $74d9: $00
    nop                                           ; $74da: $00
    nop                                           ; $74db: $00
    nop                                           ; $74dc: $00
    nop                                           ; $74dd: $00
    nop                                           ; $74de: $00
    nop                                           ; $74df: $00
    nop                                           ; $74e0: $00
    nop                                           ; $74e1: $00
    nop                                           ; $74e2: $00
    nop                                           ; $74e3: $00
    nop                                           ; $74e4: $00
    nop                                           ; $74e5: $00
    nop                                           ; $74e6: $00
    nop                                           ; $74e7: $00
    nop                                           ; $74e8: $00
    nop                                           ; $74e9: $00
    nop                                           ; $74ea: $00
    nop                                           ; $74eb: $00
    nop                                           ; $74ec: $00
    nop                                           ; $74ed: $00
    nop                                           ; $74ee: $00
    nop                                           ; $74ef: $00
    nop                                           ; $74f0: $00
    nop                                           ; $74f1: $00
    nop                                           ; $74f2: $00
    nop                                           ; $74f3: $00
    nop                                           ; $74f4: $00
    nop                                           ; $74f5: $00
    nop                                           ; $74f6: $00
    nop                                           ; $74f7: $00
    nop                                           ; $74f8: $00
    nop                                           ; $74f9: $00
    nop                                           ; $74fa: $00
    nop                                           ; $74fb: $00
    nop                                           ; $74fc: $00
    nop                                           ; $74fd: $00
    nop                                           ; $74fe: $00
    nop                                           ; $74ff: $00
    nop                                           ; $7500: $00
    nop                                           ; $7501: $00
    nop                                           ; $7502: $00
    nop                                           ; $7503: $00
    nop                                           ; $7504: $00
    nop                                           ; $7505: $00
    nop                                           ; $7506: $00
    nop                                           ; $7507: $00
    nop                                           ; $7508: $00
    nop                                           ; $7509: $00
    nop                                           ; $750a: $00
    nop                                           ; $750b: $00
    nop                                           ; $750c: $00
    nop                                           ; $750d: $00
    nop                                           ; $750e: $00
    nop                                           ; $750f: $00
    nop                                           ; $7510: $00
    nop                                           ; $7511: $00
    nop                                           ; $7512: $00
    nop                                           ; $7513: $00
    nop                                           ; $7514: $00
    nop                                           ; $7515: $00
    nop                                           ; $7516: $00
    nop                                           ; $7517: $00
    nop                                           ; $7518: $00
    nop                                           ; $7519: $00
    nop                                           ; $751a: $00
    nop                                           ; $751b: $00
    nop                                           ; $751c: $00
    nop                                           ; $751d: $00
    nop                                           ; $751e: $00
    nop                                           ; $751f: $00
    nop                                           ; $7520: $00
    nop                                           ; $7521: $00
    nop                                           ; $7522: $00
    nop                                           ; $7523: $00
    nop                                           ; $7524: $00
    nop                                           ; $7525: $00
    nop                                           ; $7526: $00
    nop                                           ; $7527: $00
    nop                                           ; $7528: $00
    nop                                           ; $7529: $00
    nop                                           ; $752a: $00
    nop                                           ; $752b: $00
    nop                                           ; $752c: $00
    nop                                           ; $752d: $00
    nop                                           ; $752e: $00
    nop                                           ; $752f: $00
    nop                                           ; $7530: $00
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    nop                                           ; $7533: $00
    nop                                           ; $7534: $00
    nop                                           ; $7535: $00
    nop                                           ; $7536: $00
    nop                                           ; $7537: $00
    nop                                           ; $7538: $00
    nop                                           ; $7539: $00
    nop                                           ; $753a: $00
    nop                                           ; $753b: $00
    nop                                           ; $753c: $00
    nop                                           ; $753d: $00
    nop                                           ; $753e: $00
    nop                                           ; $753f: $00
    nop                                           ; $7540: $00
    nop                                           ; $7541: $00
    nop                                           ; $7542: $00
    nop                                           ; $7543: $00
    nop                                           ; $7544: $00
    nop                                           ; $7545: $00
    nop                                           ; $7546: $00
    nop                                           ; $7547: $00
    nop                                           ; $7548: $00
    nop                                           ; $7549: $00
    nop                                           ; $754a: $00
    nop                                           ; $754b: $00
    nop                                           ; $754c: $00
    nop                                           ; $754d: $00
    nop                                           ; $754e: $00
    nop                                           ; $754f: $00
    nop                                           ; $7550: $00
    nop                                           ; $7551: $00
    nop                                           ; $7552: $00
    nop                                           ; $7553: $00
    nop                                           ; $7554: $00
    nop                                           ; $7555: $00
    nop                                           ; $7556: $00
    nop                                           ; $7557: $00
    nop                                           ; $7558: $00
    nop                                           ; $7559: $00
    nop                                           ; $755a: $00
    nop                                           ; $755b: $00
    nop                                           ; $755c: $00
    nop                                           ; $755d: $00
    nop                                           ; $755e: $00
    nop                                           ; $755f: $00
    nop                                           ; $7560: $00
    nop                                           ; $7561: $00
    nop                                           ; $7562: $00
    nop                                           ; $7563: $00
    nop                                           ; $7564: $00
    nop                                           ; $7565: $00
    nop                                           ; $7566: $00
    nop                                           ; $7567: $00
    nop                                           ; $7568: $00
    nop                                           ; $7569: $00
    nop                                           ; $756a: $00
    nop                                           ; $756b: $00
    nop                                           ; $756c: $00
    nop                                           ; $756d: $00
    nop                                           ; $756e: $00
    nop                                           ; $756f: $00
    nop                                           ; $7570: $00
    nop                                           ; $7571: $00
    nop                                           ; $7572: $00
    nop                                           ; $7573: $00
    nop                                           ; $7574: $00
    nop                                           ; $7575: $00
    nop                                           ; $7576: $00
    nop                                           ; $7577: $00
    nop                                           ; $7578: $00
    nop                                           ; $7579: $00
    nop                                           ; $757a: $00
    nop                                           ; $757b: $00
    nop                                           ; $757c: $00
    nop                                           ; $757d: $00
    nop                                           ; $757e: $00
    nop                                           ; $757f: $00
    nop                                           ; $7580: $00
    nop                                           ; $7581: $00
    nop                                           ; $7582: $00
    nop                                           ; $7583: $00
    nop                                           ; $7584: $00
    nop                                           ; $7585: $00
    nop                                           ; $7586: $00
    nop                                           ; $7587: $00
    nop                                           ; $7588: $00
    nop                                           ; $7589: $00
    nop                                           ; $758a: $00
    nop                                           ; $758b: $00
    nop                                           ; $758c: $00
    nop                                           ; $758d: $00
    nop                                           ; $758e: $00
    nop                                           ; $758f: $00
    nop                                           ; $7590: $00
    nop                                           ; $7591: $00
    nop                                           ; $7592: $00
    nop                                           ; $7593: $00
    nop                                           ; $7594: $00
    nop                                           ; $7595: $00
    nop                                           ; $7596: $00
    nop                                           ; $7597: $00
    nop                                           ; $7598: $00
    nop                                           ; $7599: $00
    nop                                           ; $759a: $00
    nop                                           ; $759b: $00
    nop                                           ; $759c: $00
    nop                                           ; $759d: $00
    nop                                           ; $759e: $00
    nop                                           ; $759f: $00
    nop                                           ; $75a0: $00
    nop                                           ; $75a1: $00
    nop                                           ; $75a2: $00
    nop                                           ; $75a3: $00
    nop                                           ; $75a4: $00
    nop                                           ; $75a5: $00
    nop                                           ; $75a6: $00
    nop                                           ; $75a7: $00
    nop                                           ; $75a8: $00
    nop                                           ; $75a9: $00
    nop                                           ; $75aa: $00
    nop                                           ; $75ab: $00
    nop                                           ; $75ac: $00
    nop                                           ; $75ad: $00
    nop                                           ; $75ae: $00
    nop                                           ; $75af: $00
    nop                                           ; $75b0: $00
    nop                                           ; $75b1: $00
    nop                                           ; $75b2: $00
    nop                                           ; $75b3: $00
    nop                                           ; $75b4: $00
    nop                                           ; $75b5: $00
    nop                                           ; $75b6: $00
    nop                                           ; $75b7: $00
    nop                                           ; $75b8: $00
    nop                                           ; $75b9: $00
    nop                                           ; $75ba: $00
    nop                                           ; $75bb: $00
    nop                                           ; $75bc: $00
    nop                                           ; $75bd: $00
    nop                                           ; $75be: $00
    nop                                           ; $75bf: $00
    nop                                           ; $75c0: $00
    nop                                           ; $75c1: $00
    nop                                           ; $75c2: $00
    nop                                           ; $75c3: $00
    nop                                           ; $75c4: $00
    nop                                           ; $75c5: $00
    nop                                           ; $75c6: $00
    nop                                           ; $75c7: $00
    nop                                           ; $75c8: $00
    nop                                           ; $75c9: $00
    nop                                           ; $75ca: $00
    nop                                           ; $75cb: $00
    nop                                           ; $75cc: $00
    nop                                           ; $75cd: $00
    nop                                           ; $75ce: $00
    nop                                           ; $75cf: $00
    nop                                           ; $75d0: $00
    nop                                           ; $75d1: $00
    nop                                           ; $75d2: $00
    nop                                           ; $75d3: $00
    nop                                           ; $75d4: $00
    nop                                           ; $75d5: $00
    nop                                           ; $75d6: $00
    nop                                           ; $75d7: $00
    nop                                           ; $75d8: $00
    nop                                           ; $75d9: $00
    nop                                           ; $75da: $00
    nop                                           ; $75db: $00
    nop                                           ; $75dc: $00
    nop                                           ; $75dd: $00
    nop                                           ; $75de: $00
    nop                                           ; $75df: $00
    nop                                           ; $75e0: $00
    nop                                           ; $75e1: $00
    nop                                           ; $75e2: $00
    nop                                           ; $75e3: $00
    nop                                           ; $75e4: $00
    nop                                           ; $75e5: $00
    nop                                           ; $75e6: $00
    nop                                           ; $75e7: $00
    nop                                           ; $75e8: $00
    nop                                           ; $75e9: $00
    nop                                           ; $75ea: $00
    nop                                           ; $75eb: $00
    nop                                           ; $75ec: $00
    nop                                           ; $75ed: $00
    nop                                           ; $75ee: $00
    nop                                           ; $75ef: $00
    nop                                           ; $75f0: $00
    nop                                           ; $75f1: $00
    nop                                           ; $75f2: $00
    nop                                           ; $75f3: $00
    nop                                           ; $75f4: $00
    nop                                           ; $75f5: $00
    nop                                           ; $75f6: $00
    nop                                           ; $75f7: $00
    nop                                           ; $75f8: $00
    nop                                           ; $75f9: $00
    nop                                           ; $75fa: $00
    nop                                           ; $75fb: $00
    nop                                           ; $75fc: $00
    nop                                           ; $75fd: $00
    nop                                           ; $75fe: $00
    nop                                           ; $75ff: $00
    nop                                           ; $7600: $00
    nop                                           ; $7601: $00
    nop                                           ; $7602: $00
    nop                                           ; $7603: $00
    nop                                           ; $7604: $00
    nop                                           ; $7605: $00
    nop                                           ; $7606: $00
    nop                                           ; $7607: $00
    nop                                           ; $7608: $00
    nop                                           ; $7609: $00
    nop                                           ; $760a: $00
    nop                                           ; $760b: $00
    nop                                           ; $760c: $00
    nop                                           ; $760d: $00
    nop                                           ; $760e: $00
    nop                                           ; $760f: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    nop                                           ; $7614: $00
    nop                                           ; $7615: $00
    nop                                           ; $7616: $00
    nop                                           ; $7617: $00
    nop                                           ; $7618: $00
    nop                                           ; $7619: $00
    nop                                           ; $761a: $00
    nop                                           ; $761b: $00
    nop                                           ; $761c: $00
    nop                                           ; $761d: $00
    nop                                           ; $761e: $00
    nop                                           ; $761f: $00
    nop                                           ; $7620: $00
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    nop                                           ; $7623: $00
    nop                                           ; $7624: $00
    nop                                           ; $7625: $00
    nop                                           ; $7626: $00
    nop                                           ; $7627: $00
    nop                                           ; $7628: $00
    nop                                           ; $7629: $00
    nop                                           ; $762a: $00
    nop                                           ; $762b: $00
    nop                                           ; $762c: $00
    nop                                           ; $762d: $00
    nop                                           ; $762e: $00
    nop                                           ; $762f: $00
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    nop                                           ; $7633: $00
    nop                                           ; $7634: $00
    nop                                           ; $7635: $00
    nop                                           ; $7636: $00
    nop                                           ; $7637: $00
    nop                                           ; $7638: $00
    nop                                           ; $7639: $00
    nop                                           ; $763a: $00
    nop                                           ; $763b: $00
    nop                                           ; $763c: $00
    nop                                           ; $763d: $00
    nop                                           ; $763e: $00
    nop                                           ; $763f: $00
    nop                                           ; $7640: $00
    nop                                           ; $7641: $00
    nop                                           ; $7642: $00
    nop                                           ; $7643: $00
    nop                                           ; $7644: $00
    nop                                           ; $7645: $00
    nop                                           ; $7646: $00
    nop                                           ; $7647: $00
    nop                                           ; $7648: $00
    nop                                           ; $7649: $00
    nop                                           ; $764a: $00
    nop                                           ; $764b: $00
    nop                                           ; $764c: $00
    nop                                           ; $764d: $00
    nop                                           ; $764e: $00
    nop                                           ; $764f: $00
    nop                                           ; $7650: $00
    nop                                           ; $7651: $00
    nop                                           ; $7652: $00
    nop                                           ; $7653: $00
    nop                                           ; $7654: $00
    nop                                           ; $7655: $00
    nop                                           ; $7656: $00
    nop                                           ; $7657: $00
    nop                                           ; $7658: $00
    nop                                           ; $7659: $00
    nop                                           ; $765a: $00
    nop                                           ; $765b: $00
    nop                                           ; $765c: $00
    nop                                           ; $765d: $00
    nop                                           ; $765e: $00
    nop                                           ; $765f: $00
    nop                                           ; $7660: $00
    nop                                           ; $7661: $00
    nop                                           ; $7662: $00
    nop                                           ; $7663: $00
    nop                                           ; $7664: $00
    nop                                           ; $7665: $00
    nop                                           ; $7666: $00
    nop                                           ; $7667: $00
    nop                                           ; $7668: $00
    nop                                           ; $7669: $00
    nop                                           ; $766a: $00
    nop                                           ; $766b: $00
    nop                                           ; $766c: $00
    nop                                           ; $766d: $00
    nop                                           ; $766e: $00
    nop                                           ; $766f: $00
    nop                                           ; $7670: $00
    nop                                           ; $7671: $00
    nop                                           ; $7672: $00
    nop                                           ; $7673: $00
    nop                                           ; $7674: $00
    nop                                           ; $7675: $00
    nop                                           ; $7676: $00
    nop                                           ; $7677: $00
    nop                                           ; $7678: $00
    nop                                           ; $7679: $00
    nop                                           ; $767a: $00
    nop                                           ; $767b: $00
    nop                                           ; $767c: $00
    nop                                           ; $767d: $00
    nop                                           ; $767e: $00
    nop                                           ; $767f: $00
    nop                                           ; $7680: $00
    nop                                           ; $7681: $00
    nop                                           ; $7682: $00
    nop                                           ; $7683: $00
    nop                                           ; $7684: $00
    nop                                           ; $7685: $00
    nop                                           ; $7686: $00
    nop                                           ; $7687: $00
    nop                                           ; $7688: $00
    nop                                           ; $7689: $00
    nop                                           ; $768a: $00
    nop                                           ; $768b: $00
    nop                                           ; $768c: $00
    nop                                           ; $768d: $00
    nop                                           ; $768e: $00
    nop                                           ; $768f: $00
    nop                                           ; $7690: $00
    nop                                           ; $7691: $00
    nop                                           ; $7692: $00
    nop                                           ; $7693: $00
    nop                                           ; $7694: $00
    nop                                           ; $7695: $00
    nop                                           ; $7696: $00
    nop                                           ; $7697: $00
    nop                                           ; $7698: $00
    nop                                           ; $7699: $00
    nop                                           ; $769a: $00
    nop                                           ; $769b: $00
    nop                                           ; $769c: $00
    nop                                           ; $769d: $00
    nop                                           ; $769e: $00
    nop                                           ; $769f: $00
    nop                                           ; $76a0: $00
    nop                                           ; $76a1: $00
    nop                                           ; $76a2: $00
    nop                                           ; $76a3: $00
    nop                                           ; $76a4: $00
    nop                                           ; $76a5: $00
    nop                                           ; $76a6: $00
    nop                                           ; $76a7: $00
    nop                                           ; $76a8: $00
    nop                                           ; $76a9: $00
    nop                                           ; $76aa: $00
    nop                                           ; $76ab: $00
    nop                                           ; $76ac: $00
    nop                                           ; $76ad: $00
    nop                                           ; $76ae: $00
    nop                                           ; $76af: $00
    nop                                           ; $76b0: $00
    nop                                           ; $76b1: $00
    nop                                           ; $76b2: $00
    nop                                           ; $76b3: $00
    nop                                           ; $76b4: $00
    nop                                           ; $76b5: $00
    nop                                           ; $76b6: $00
    nop                                           ; $76b7: $00
    nop                                           ; $76b8: $00
    nop                                           ; $76b9: $00
    nop                                           ; $76ba: $00
    nop                                           ; $76bb: $00
    nop                                           ; $76bc: $00
    nop                                           ; $76bd: $00
    nop                                           ; $76be: $00
    nop                                           ; $76bf: $00
    nop                                           ; $76c0: $00
    nop                                           ; $76c1: $00
    nop                                           ; $76c2: $00
    nop                                           ; $76c3: $00
    nop                                           ; $76c4: $00
    nop                                           ; $76c5: $00
    nop                                           ; $76c6: $00
    nop                                           ; $76c7: $00
    nop                                           ; $76c8: $00
    nop                                           ; $76c9: $00
    nop                                           ; $76ca: $00
    nop                                           ; $76cb: $00
    nop                                           ; $76cc: $00
    nop                                           ; $76cd: $00
    nop                                           ; $76ce: $00
    nop                                           ; $76cf: $00
    nop                                           ; $76d0: $00
    nop                                           ; $76d1: $00
    nop                                           ; $76d2: $00
    nop                                           ; $76d3: $00
    nop                                           ; $76d4: $00
    nop                                           ; $76d5: $00
    nop                                           ; $76d6: $00
    nop                                           ; $76d7: $00
    nop                                           ; $76d8: $00
    nop                                           ; $76d9: $00
    nop                                           ; $76da: $00
    nop                                           ; $76db: $00
    nop                                           ; $76dc: $00
    nop                                           ; $76dd: $00
    nop                                           ; $76de: $00
    nop                                           ; $76df: $00
    nop                                           ; $76e0: $00
    nop                                           ; $76e1: $00
    nop                                           ; $76e2: $00
    nop                                           ; $76e3: $00
    nop                                           ; $76e4: $00
    nop                                           ; $76e5: $00
    nop                                           ; $76e6: $00
    nop                                           ; $76e7: $00
    nop                                           ; $76e8: $00
    nop                                           ; $76e9: $00
    nop                                           ; $76ea: $00
    nop                                           ; $76eb: $00
    nop                                           ; $76ec: $00
    nop                                           ; $76ed: $00
    nop                                           ; $76ee: $00
    nop                                           ; $76ef: $00
    nop                                           ; $76f0: $00
    nop                                           ; $76f1: $00
    nop                                           ; $76f2: $00
    nop                                           ; $76f3: $00
    nop                                           ; $76f4: $00
    nop                                           ; $76f5: $00
    nop                                           ; $76f6: $00
    nop                                           ; $76f7: $00
    nop                                           ; $76f8: $00
    nop                                           ; $76f9: $00
    nop                                           ; $76fa: $00
    nop                                           ; $76fb: $00
    nop                                           ; $76fc: $00
    nop                                           ; $76fd: $00
    nop                                           ; $76fe: $00
    nop                                           ; $76ff: $00
    nop                                           ; $7700: $00
    nop                                           ; $7701: $00
    nop                                           ; $7702: $00
    nop                                           ; $7703: $00
    nop                                           ; $7704: $00
    nop                                           ; $7705: $00
    nop                                           ; $7706: $00
    nop                                           ; $7707: $00
    nop                                           ; $7708: $00
    nop                                           ; $7709: $00
    nop                                           ; $770a: $00
    nop                                           ; $770b: $00
    nop                                           ; $770c: $00
    nop                                           ; $770d: $00
    nop                                           ; $770e: $00
    nop                                           ; $770f: $00
    nop                                           ; $7710: $00
    nop                                           ; $7711: $00
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    nop                                           ; $7714: $00
    nop                                           ; $7715: $00
    nop                                           ; $7716: $00
    nop                                           ; $7717: $00
    nop                                           ; $7718: $00
    nop                                           ; $7719: $00
    nop                                           ; $771a: $00
    nop                                           ; $771b: $00
    nop                                           ; $771c: $00
    nop                                           ; $771d: $00
    nop                                           ; $771e: $00
    nop                                           ; $771f: $00
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    nop                                           ; $7722: $00
    nop                                           ; $7723: $00
    nop                                           ; $7724: $00
    nop                                           ; $7725: $00
    nop                                           ; $7726: $00
    nop                                           ; $7727: $00
    nop                                           ; $7728: $00
    nop                                           ; $7729: $00
    nop                                           ; $772a: $00
    nop                                           ; $772b: $00
    nop                                           ; $772c: $00
    nop                                           ; $772d: $00
    nop                                           ; $772e: $00
    nop                                           ; $772f: $00
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    nop                                           ; $7733: $00
    nop                                           ; $7734: $00
    nop                                           ; $7735: $00
    nop                                           ; $7736: $00
    nop                                           ; $7737: $00
    nop                                           ; $7738: $00
    nop                                           ; $7739: $00
    nop                                           ; $773a: $00
    nop                                           ; $773b: $00
    nop                                           ; $773c: $00
    nop                                           ; $773d: $00
    nop                                           ; $773e: $00
    nop                                           ; $773f: $00
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    nop                                           ; $7742: $00
    nop                                           ; $7743: $00
    nop                                           ; $7744: $00
    nop                                           ; $7745: $00
    nop                                           ; $7746: $00
    nop                                           ; $7747: $00
    nop                                           ; $7748: $00
    nop                                           ; $7749: $00
    nop                                           ; $774a: $00
    nop                                           ; $774b: $00
    nop                                           ; $774c: $00
    nop                                           ; $774d: $00
    nop                                           ; $774e: $00
    nop                                           ; $774f: $00
    nop                                           ; $7750: $00
    nop                                           ; $7751: $00
    nop                                           ; $7752: $00
    nop                                           ; $7753: $00
    nop                                           ; $7754: $00
    nop                                           ; $7755: $00
    nop                                           ; $7756: $00
    nop                                           ; $7757: $00
    nop                                           ; $7758: $00
    nop                                           ; $7759: $00
    nop                                           ; $775a: $00
    nop                                           ; $775b: $00
    nop                                           ; $775c: $00
    nop                                           ; $775d: $00
    nop                                           ; $775e: $00
    nop                                           ; $775f: $00
    nop                                           ; $7760: $00
    nop                                           ; $7761: $00
    nop                                           ; $7762: $00
    nop                                           ; $7763: $00
    nop                                           ; $7764: $00
    nop                                           ; $7765: $00
    nop                                           ; $7766: $00
    nop                                           ; $7767: $00
    nop                                           ; $7768: $00
    nop                                           ; $7769: $00
    nop                                           ; $776a: $00
    nop                                           ; $776b: $00
    nop                                           ; $776c: $00
    nop                                           ; $776d: $00
    nop                                           ; $776e: $00
    nop                                           ; $776f: $00
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    nop                                           ; $7772: $00
    nop                                           ; $7773: $00
    nop                                           ; $7774: $00
    nop                                           ; $7775: $00
    nop                                           ; $7776: $00
    nop                                           ; $7777: $00
    nop                                           ; $7778: $00
    nop                                           ; $7779: $00
    nop                                           ; $777a: $00
    nop                                           ; $777b: $00
    nop                                           ; $777c: $00
    nop                                           ; $777d: $00
    nop                                           ; $777e: $00
    nop                                           ; $777f: $00
    nop                                           ; $7780: $00
    nop                                           ; $7781: $00
    nop                                           ; $7782: $00
    nop                                           ; $7783: $00
    nop                                           ; $7784: $00
    nop                                           ; $7785: $00
    nop                                           ; $7786: $00
    nop                                           ; $7787: $00
    nop                                           ; $7788: $00
    nop                                           ; $7789: $00
    nop                                           ; $778a: $00
    nop                                           ; $778b: $00
    nop                                           ; $778c: $00
    nop                                           ; $778d: $00
    nop                                           ; $778e: $00
    nop                                           ; $778f: $00
    nop                                           ; $7790: $00
    nop                                           ; $7791: $00
    nop                                           ; $7792: $00
    nop                                           ; $7793: $00
    nop                                           ; $7794: $00
    nop                                           ; $7795: $00
    nop                                           ; $7796: $00
    nop                                           ; $7797: $00
    nop                                           ; $7798: $00
    nop                                           ; $7799: $00
    nop                                           ; $779a: $00
    nop                                           ; $779b: $00
    nop                                           ; $779c: $00
    nop                                           ; $779d: $00
    nop                                           ; $779e: $00
    nop                                           ; $779f: $00
    nop                                           ; $77a0: $00
    nop                                           ; $77a1: $00
    nop                                           ; $77a2: $00
    nop                                           ; $77a3: $00
    nop                                           ; $77a4: $00
    nop                                           ; $77a5: $00
    nop                                           ; $77a6: $00
    nop                                           ; $77a7: $00
    nop                                           ; $77a8: $00
    nop                                           ; $77a9: $00
    nop                                           ; $77aa: $00
    nop                                           ; $77ab: $00
    nop                                           ; $77ac: $00
    nop                                           ; $77ad: $00
    nop                                           ; $77ae: $00
    nop                                           ; $77af: $00
    nop                                           ; $77b0: $00
    nop                                           ; $77b1: $00
    nop                                           ; $77b2: $00
    nop                                           ; $77b3: $00
    nop                                           ; $77b4: $00
    nop                                           ; $77b5: $00
    nop                                           ; $77b6: $00
    nop                                           ; $77b7: $00
    nop                                           ; $77b8: $00
    nop                                           ; $77b9: $00
    nop                                           ; $77ba: $00
    nop                                           ; $77bb: $00
    nop                                           ; $77bc: $00
    nop                                           ; $77bd: $00
    nop                                           ; $77be: $00
    nop                                           ; $77bf: $00
    nop                                           ; $77c0: $00
    nop                                           ; $77c1: $00
    nop                                           ; $77c2: $00
    nop                                           ; $77c3: $00
    nop                                           ; $77c4: $00
    nop                                           ; $77c5: $00
    nop                                           ; $77c6: $00
    nop                                           ; $77c7: $00
    nop                                           ; $77c8: $00
    nop                                           ; $77c9: $00
    nop                                           ; $77ca: $00
    nop                                           ; $77cb: $00
    nop                                           ; $77cc: $00
    nop                                           ; $77cd: $00
    nop                                           ; $77ce: $00
    nop                                           ; $77cf: $00
    nop                                           ; $77d0: $00
    nop                                           ; $77d1: $00
    nop                                           ; $77d2: $00
    nop                                           ; $77d3: $00
    nop                                           ; $77d4: $00
    nop                                           ; $77d5: $00
    nop                                           ; $77d6: $00

Call_00f_77d7:
    nop                                           ; $77d7: $00
    nop                                           ; $77d8: $00
    nop                                           ; $77d9: $00
    nop                                           ; $77da: $00
    nop                                           ; $77db: $00
    nop                                           ; $77dc: $00
    nop                                           ; $77dd: $00
    nop                                           ; $77de: $00
    nop                                           ; $77df: $00
    nop                                           ; $77e0: $00
    nop                                           ; $77e1: $00
    nop                                           ; $77e2: $00
    nop                                           ; $77e3: $00
    nop                                           ; $77e4: $00
    nop                                           ; $77e5: $00
    nop                                           ; $77e6: $00
    nop                                           ; $77e7: $00
    nop                                           ; $77e8: $00
    nop                                           ; $77e9: $00

Jump_00f_77ea:
    nop                                           ; $77ea: $00
    nop                                           ; $77eb: $00
    nop                                           ; $77ec: $00
    nop                                           ; $77ed: $00
    nop                                           ; $77ee: $00
    nop                                           ; $77ef: $00
    nop                                           ; $77f0: $00
    nop                                           ; $77f1: $00
    nop                                           ; $77f2: $00
    nop                                           ; $77f3: $00
    nop                                           ; $77f4: $00
    nop                                           ; $77f5: $00
    nop                                           ; $77f6: $00
    nop                                           ; $77f7: $00
    nop                                           ; $77f8: $00
    nop                                           ; $77f9: $00
    nop                                           ; $77fa: $00
    nop                                           ; $77fb: $00
    nop                                           ; $77fc: $00
    nop                                           ; $77fd: $00
    nop                                           ; $77fe: $00
    nop                                           ; $77ff: $00
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    nop                                           ; $7802: $00
    nop                                           ; $7803: $00
    nop                                           ; $7804: $00
    nop                                           ; $7805: $00
    nop                                           ; $7806: $00
    nop                                           ; $7807: $00
    nop                                           ; $7808: $00
    nop                                           ; $7809: $00
    nop                                           ; $780a: $00
    nop                                           ; $780b: $00
    nop                                           ; $780c: $00
    nop                                           ; $780d: $00
    nop                                           ; $780e: $00
    nop                                           ; $780f: $00
    nop                                           ; $7810: $00
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    nop                                           ; $7813: $00
    nop                                           ; $7814: $00
    nop                                           ; $7815: $00
    nop                                           ; $7816: $00
    nop                                           ; $7817: $00
    nop                                           ; $7818: $00
    nop                                           ; $7819: $00
    nop                                           ; $781a: $00
    nop                                           ; $781b: $00
    nop                                           ; $781c: $00
    nop                                           ; $781d: $00
    nop                                           ; $781e: $00
    nop                                           ; $781f: $00
    nop                                           ; $7820: $00
    nop                                           ; $7821: $00
    nop                                           ; $7822: $00
    nop                                           ; $7823: $00
    nop                                           ; $7824: $00
    nop                                           ; $7825: $00
    nop                                           ; $7826: $00
    nop                                           ; $7827: $00
    nop                                           ; $7828: $00
    nop                                           ; $7829: $00
    nop                                           ; $782a: $00
    nop                                           ; $782b: $00
    nop                                           ; $782c: $00
    nop                                           ; $782d: $00
    nop                                           ; $782e: $00
    nop                                           ; $782f: $00
    nop                                           ; $7830: $00
    nop                                           ; $7831: $00
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    nop                                           ; $7834: $00
    nop                                           ; $7835: $00
    nop                                           ; $7836: $00
    nop                                           ; $7837: $00
    nop                                           ; $7838: $00
    nop                                           ; $7839: $00
    nop                                           ; $783a: $00
    nop                                           ; $783b: $00
    nop                                           ; $783c: $00
    nop                                           ; $783d: $00
    nop                                           ; $783e: $00
    nop                                           ; $783f: $00
    nop                                           ; $7840: $00
    nop                                           ; $7841: $00
    nop                                           ; $7842: $00
    nop                                           ; $7843: $00
    nop                                           ; $7844: $00
    nop                                           ; $7845: $00
    nop                                           ; $7846: $00
    nop                                           ; $7847: $00
    nop                                           ; $7848: $00
    nop                                           ; $7849: $00
    nop                                           ; $784a: $00
    nop                                           ; $784b: $00
    nop                                           ; $784c: $00
    nop                                           ; $784d: $00
    nop                                           ; $784e: $00
    nop                                           ; $784f: $00
    nop                                           ; $7850: $00
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    nop                                           ; $7853: $00
    nop                                           ; $7854: $00
    nop                                           ; $7855: $00
    nop                                           ; $7856: $00
    nop                                           ; $7857: $00
    nop                                           ; $7858: $00
    nop                                           ; $7859: $00
    nop                                           ; $785a: $00
    nop                                           ; $785b: $00
    nop                                           ; $785c: $00
    nop                                           ; $785d: $00
    nop                                           ; $785e: $00
    nop                                           ; $785f: $00
    nop                                           ; $7860: $00
    nop                                           ; $7861: $00
    nop                                           ; $7862: $00
    nop                                           ; $7863: $00
    nop                                           ; $7864: $00
    nop                                           ; $7865: $00
    nop                                           ; $7866: $00
    nop                                           ; $7867: $00
    nop                                           ; $7868: $00
    nop                                           ; $7869: $00
    nop                                           ; $786a: $00
    nop                                           ; $786b: $00
    nop                                           ; $786c: $00
    nop                                           ; $786d: $00
    nop                                           ; $786e: $00
    nop                                           ; $786f: $00
    nop                                           ; $7870: $00
    nop                                           ; $7871: $00
    nop                                           ; $7872: $00
    nop                                           ; $7873: $00
    nop                                           ; $7874: $00
    nop                                           ; $7875: $00
    nop                                           ; $7876: $00
    nop                                           ; $7877: $00
    nop                                           ; $7878: $00
    nop                                           ; $7879: $00
    nop                                           ; $787a: $00
    nop                                           ; $787b: $00
    nop                                           ; $787c: $00
    nop                                           ; $787d: $00
    nop                                           ; $787e: $00
    nop                                           ; $787f: $00
    nop                                           ; $7880: $00
    nop                                           ; $7881: $00
    nop                                           ; $7882: $00
    nop                                           ; $7883: $00
    nop                                           ; $7884: $00
    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    nop                                           ; $7887: $00
    nop                                           ; $7888: $00
    nop                                           ; $7889: $00
    nop                                           ; $788a: $00
    nop                                           ; $788b: $00
    nop                                           ; $788c: $00
    nop                                           ; $788d: $00
    nop                                           ; $788e: $00
    nop                                           ; $788f: $00
    nop                                           ; $7890: $00
    nop                                           ; $7891: $00
    nop                                           ; $7892: $00
    nop                                           ; $7893: $00
    nop                                           ; $7894: $00
    nop                                           ; $7895: $00
    nop                                           ; $7896: $00
    nop                                           ; $7897: $00
    nop                                           ; $7898: $00
    nop                                           ; $7899: $00
    nop                                           ; $789a: $00
    nop                                           ; $789b: $00
    nop                                           ; $789c: $00
    nop                                           ; $789d: $00
    nop                                           ; $789e: $00
    nop                                           ; $789f: $00
    nop                                           ; $78a0: $00
    nop                                           ; $78a1: $00
    nop                                           ; $78a2: $00
    nop                                           ; $78a3: $00
    nop                                           ; $78a4: $00
    nop                                           ; $78a5: $00
    nop                                           ; $78a6: $00
    nop                                           ; $78a7: $00
    nop                                           ; $78a8: $00
    nop                                           ; $78a9: $00
    nop                                           ; $78aa: $00
    nop                                           ; $78ab: $00
    nop                                           ; $78ac: $00
    nop                                           ; $78ad: $00
    nop                                           ; $78ae: $00
    nop                                           ; $78af: $00
    nop                                           ; $78b0: $00
    nop                                           ; $78b1: $00
    nop                                           ; $78b2: $00
    nop                                           ; $78b3: $00
    nop                                           ; $78b4: $00
    nop                                           ; $78b5: $00
    nop                                           ; $78b6: $00
    nop                                           ; $78b7: $00
    nop                                           ; $78b8: $00
    nop                                           ; $78b9: $00
    nop                                           ; $78ba: $00
    nop                                           ; $78bb: $00
    nop                                           ; $78bc: $00
    nop                                           ; $78bd: $00
    nop                                           ; $78be: $00
    nop                                           ; $78bf: $00
    nop                                           ; $78c0: $00
    nop                                           ; $78c1: $00
    nop                                           ; $78c2: $00
    nop                                           ; $78c3: $00
    nop                                           ; $78c4: $00
    nop                                           ; $78c5: $00
    nop                                           ; $78c6: $00
    nop                                           ; $78c7: $00
    nop                                           ; $78c8: $00
    nop                                           ; $78c9: $00
    nop                                           ; $78ca: $00
    nop                                           ; $78cb: $00
    nop                                           ; $78cc: $00
    nop                                           ; $78cd: $00
    nop                                           ; $78ce: $00
    nop                                           ; $78cf: $00
    nop                                           ; $78d0: $00
    nop                                           ; $78d1: $00
    nop                                           ; $78d2: $00
    nop                                           ; $78d3: $00
    nop                                           ; $78d4: $00
    nop                                           ; $78d5: $00
    nop                                           ; $78d6: $00
    nop                                           ; $78d7: $00
    nop                                           ; $78d8: $00
    nop                                           ; $78d9: $00
    nop                                           ; $78da: $00
    nop                                           ; $78db: $00
    nop                                           ; $78dc: $00
    nop                                           ; $78dd: $00
    nop                                           ; $78de: $00
    nop                                           ; $78df: $00
    nop                                           ; $78e0: $00
    nop                                           ; $78e1: $00
    nop                                           ; $78e2: $00
    nop                                           ; $78e3: $00
    nop                                           ; $78e4: $00
    nop                                           ; $78e5: $00
    nop                                           ; $78e6: $00
    nop                                           ; $78e7: $00
    nop                                           ; $78e8: $00
    nop                                           ; $78e9: $00
    nop                                           ; $78ea: $00
    nop                                           ; $78eb: $00
    nop                                           ; $78ec: $00
    nop                                           ; $78ed: $00
    nop                                           ; $78ee: $00
    nop                                           ; $78ef: $00
    nop                                           ; $78f0: $00
    nop                                           ; $78f1: $00
    nop                                           ; $78f2: $00
    nop                                           ; $78f3: $00
    nop                                           ; $78f4: $00
    nop                                           ; $78f5: $00
    nop                                           ; $78f6: $00
    nop                                           ; $78f7: $00
    nop                                           ; $78f8: $00
    nop                                           ; $78f9: $00
    nop                                           ; $78fa: $00
    nop                                           ; $78fb: $00
    nop                                           ; $78fc: $00
    nop                                           ; $78fd: $00
    nop                                           ; $78fe: $00
    nop                                           ; $78ff: $00
    nop                                           ; $7900: $00
    nop                                           ; $7901: $00
    nop                                           ; $7902: $00
    nop                                           ; $7903: $00
    nop                                           ; $7904: $00
    nop                                           ; $7905: $00
    nop                                           ; $7906: $00
    nop                                           ; $7907: $00
    nop                                           ; $7908: $00
    nop                                           ; $7909: $00
    nop                                           ; $790a: $00
    nop                                           ; $790b: $00
    nop                                           ; $790c: $00
    nop                                           ; $790d: $00
    nop                                           ; $790e: $00
    nop                                           ; $790f: $00
    nop                                           ; $7910: $00
    nop                                           ; $7911: $00
    nop                                           ; $7912: $00
    nop                                           ; $7913: $00
    nop                                           ; $7914: $00
    nop                                           ; $7915: $00
    nop                                           ; $7916: $00
    nop                                           ; $7917: $00
    nop                                           ; $7918: $00
    nop                                           ; $7919: $00
    nop                                           ; $791a: $00
    nop                                           ; $791b: $00
    nop                                           ; $791c: $00
    nop                                           ; $791d: $00
    nop                                           ; $791e: $00
    nop                                           ; $791f: $00
    nop                                           ; $7920: $00
    nop                                           ; $7921: $00
    nop                                           ; $7922: $00
    nop                                           ; $7923: $00
    nop                                           ; $7924: $00
    nop                                           ; $7925: $00
    nop                                           ; $7926: $00
    nop                                           ; $7927: $00
    nop                                           ; $7928: $00
    nop                                           ; $7929: $00
    nop                                           ; $792a: $00
    nop                                           ; $792b: $00
    nop                                           ; $792c: $00
    nop                                           ; $792d: $00
    nop                                           ; $792e: $00
    nop                                           ; $792f: $00
    nop                                           ; $7930: $00
    nop                                           ; $7931: $00
    nop                                           ; $7932: $00
    nop                                           ; $7933: $00
    nop                                           ; $7934: $00
    nop                                           ; $7935: $00
    nop                                           ; $7936: $00
    nop                                           ; $7937: $00
    nop                                           ; $7938: $00
    nop                                           ; $7939: $00
    nop                                           ; $793a: $00
    nop                                           ; $793b: $00
    nop                                           ; $793c: $00
    nop                                           ; $793d: $00
    nop                                           ; $793e: $00
    nop                                           ; $793f: $00
    nop                                           ; $7940: $00
    nop                                           ; $7941: $00
    nop                                           ; $7942: $00
    nop                                           ; $7943: $00
    nop                                           ; $7944: $00
    nop                                           ; $7945: $00
    nop                                           ; $7946: $00
    nop                                           ; $7947: $00
    nop                                           ; $7948: $00
    nop                                           ; $7949: $00
    nop                                           ; $794a: $00
    nop                                           ; $794b: $00
    nop                                           ; $794c: $00
    nop                                           ; $794d: $00
    nop                                           ; $794e: $00
    nop                                           ; $794f: $00
    nop                                           ; $7950: $00
    nop                                           ; $7951: $00
    nop                                           ; $7952: $00
    nop                                           ; $7953: $00
    nop                                           ; $7954: $00
    nop                                           ; $7955: $00
    nop                                           ; $7956: $00
    nop                                           ; $7957: $00
    nop                                           ; $7958: $00
    nop                                           ; $7959: $00
    nop                                           ; $795a: $00
    nop                                           ; $795b: $00
    nop                                           ; $795c: $00
    nop                                           ; $795d: $00
    nop                                           ; $795e: $00
    nop                                           ; $795f: $00
    nop                                           ; $7960: $00
    nop                                           ; $7961: $00
    nop                                           ; $7962: $00
    nop                                           ; $7963: $00
    nop                                           ; $7964: $00
    nop                                           ; $7965: $00
    nop                                           ; $7966: $00
    nop                                           ; $7967: $00
    nop                                           ; $7968: $00
    nop                                           ; $7969: $00
    nop                                           ; $796a: $00
    nop                                           ; $796b: $00
    nop                                           ; $796c: $00
    nop                                           ; $796d: $00
    nop                                           ; $796e: $00
    nop                                           ; $796f: $00
    nop                                           ; $7970: $00
    nop                                           ; $7971: $00
    nop                                           ; $7972: $00
    nop                                           ; $7973: $00
    nop                                           ; $7974: $00
    nop                                           ; $7975: $00
    nop                                           ; $7976: $00
    nop                                           ; $7977: $00
    nop                                           ; $7978: $00
    nop                                           ; $7979: $00
    nop                                           ; $797a: $00
    nop                                           ; $797b: $00
    nop                                           ; $797c: $00
    nop                                           ; $797d: $00
    nop                                           ; $797e: $00
    nop                                           ; $797f: $00
    nop                                           ; $7980: $00
    nop                                           ; $7981: $00
    nop                                           ; $7982: $00
    nop                                           ; $7983: $00
    nop                                           ; $7984: $00
    nop                                           ; $7985: $00
    nop                                           ; $7986: $00
    nop                                           ; $7987: $00
    nop                                           ; $7988: $00
    nop                                           ; $7989: $00
    nop                                           ; $798a: $00
    nop                                           ; $798b: $00
    nop                                           ; $798c: $00
    nop                                           ; $798d: $00
    nop                                           ; $798e: $00
    nop                                           ; $798f: $00
    nop                                           ; $7990: $00
    nop                                           ; $7991: $00
    nop                                           ; $7992: $00
    nop                                           ; $7993: $00
    nop                                           ; $7994: $00
    nop                                           ; $7995: $00
    nop                                           ; $7996: $00
    nop                                           ; $7997: $00
    nop                                           ; $7998: $00
    nop                                           ; $7999: $00
    nop                                           ; $799a: $00
    nop                                           ; $799b: $00
    nop                                           ; $799c: $00
    nop                                           ; $799d: $00
    nop                                           ; $799e: $00
    nop                                           ; $799f: $00
    nop                                           ; $79a0: $00
    nop                                           ; $79a1: $00
    nop                                           ; $79a2: $00
    nop                                           ; $79a3: $00
    nop                                           ; $79a4: $00
    nop                                           ; $79a5: $00
    nop                                           ; $79a6: $00
    nop                                           ; $79a7: $00
    nop                                           ; $79a8: $00
    nop                                           ; $79a9: $00
    nop                                           ; $79aa: $00
    nop                                           ; $79ab: $00
    nop                                           ; $79ac: $00
    nop                                           ; $79ad: $00
    nop                                           ; $79ae: $00
    nop                                           ; $79af: $00
    nop                                           ; $79b0: $00
    nop                                           ; $79b1: $00
    nop                                           ; $79b2: $00
    nop                                           ; $79b3: $00
    nop                                           ; $79b4: $00
    nop                                           ; $79b5: $00
    nop                                           ; $79b6: $00
    nop                                           ; $79b7: $00
    nop                                           ; $79b8: $00
    nop                                           ; $79b9: $00
    nop                                           ; $79ba: $00
    nop                                           ; $79bb: $00
    nop                                           ; $79bc: $00
    nop                                           ; $79bd: $00
    nop                                           ; $79be: $00
    nop                                           ; $79bf: $00
    nop                                           ; $79c0: $00
    nop                                           ; $79c1: $00
    nop                                           ; $79c2: $00
    nop                                           ; $79c3: $00
    nop                                           ; $79c4: $00
    nop                                           ; $79c5: $00
    nop                                           ; $79c6: $00
    nop                                           ; $79c7: $00
    nop                                           ; $79c8: $00
    nop                                           ; $79c9: $00
    nop                                           ; $79ca: $00
    nop                                           ; $79cb: $00
    nop                                           ; $79cc: $00
    nop                                           ; $79cd: $00
    nop                                           ; $79ce: $00
    nop                                           ; $79cf: $00
    nop                                           ; $79d0: $00
    nop                                           ; $79d1: $00
    nop                                           ; $79d2: $00
    nop                                           ; $79d3: $00
    nop                                           ; $79d4: $00
    nop                                           ; $79d5: $00
    nop                                           ; $79d6: $00
    nop                                           ; $79d7: $00
    nop                                           ; $79d8: $00
    nop                                           ; $79d9: $00
    nop                                           ; $79da: $00
    nop                                           ; $79db: $00
    nop                                           ; $79dc: $00
    nop                                           ; $79dd: $00
    nop                                           ; $79de: $00
    nop                                           ; $79df: $00
    nop                                           ; $79e0: $00
    nop                                           ; $79e1: $00
    nop                                           ; $79e2: $00
    nop                                           ; $79e3: $00
    nop                                           ; $79e4: $00
    nop                                           ; $79e5: $00
    nop                                           ; $79e6: $00
    nop                                           ; $79e7: $00
    nop                                           ; $79e8: $00
    nop                                           ; $79e9: $00
    nop                                           ; $79ea: $00
    nop                                           ; $79eb: $00
    nop                                           ; $79ec: $00
    nop                                           ; $79ed: $00
    nop                                           ; $79ee: $00
    nop                                           ; $79ef: $00
    nop                                           ; $79f0: $00
    nop                                           ; $79f1: $00
    nop                                           ; $79f2: $00
    nop                                           ; $79f3: $00
    nop                                           ; $79f4: $00
    nop                                           ; $79f5: $00
    nop                                           ; $79f6: $00
    nop                                           ; $79f7: $00
    nop                                           ; $79f8: $00
    nop                                           ; $79f9: $00
    nop                                           ; $79fa: $00
    nop                                           ; $79fb: $00
    nop                                           ; $79fc: $00
    nop                                           ; $79fd: $00
    nop                                           ; $79fe: $00
    nop                                           ; $79ff: $00
    nop                                           ; $7a00: $00
    nop                                           ; $7a01: $00
    nop                                           ; $7a02: $00
    nop                                           ; $7a03: $00
    nop                                           ; $7a04: $00
    nop                                           ; $7a05: $00
    nop                                           ; $7a06: $00
    nop                                           ; $7a07: $00
    nop                                           ; $7a08: $00
    nop                                           ; $7a09: $00
    nop                                           ; $7a0a: $00
    nop                                           ; $7a0b: $00
    nop                                           ; $7a0c: $00
    nop                                           ; $7a0d: $00
    nop                                           ; $7a0e: $00
    nop                                           ; $7a0f: $00
    nop                                           ; $7a10: $00
    nop                                           ; $7a11: $00
    nop                                           ; $7a12: $00
    nop                                           ; $7a13: $00
    nop                                           ; $7a14: $00
    nop                                           ; $7a15: $00
    nop                                           ; $7a16: $00
    nop                                           ; $7a17: $00
    nop                                           ; $7a18: $00
    nop                                           ; $7a19: $00
    nop                                           ; $7a1a: $00
    nop                                           ; $7a1b: $00
    nop                                           ; $7a1c: $00
    nop                                           ; $7a1d: $00
    nop                                           ; $7a1e: $00
    nop                                           ; $7a1f: $00
    nop                                           ; $7a20: $00
    nop                                           ; $7a21: $00
    nop                                           ; $7a22: $00
    nop                                           ; $7a23: $00
    nop                                           ; $7a24: $00
    nop                                           ; $7a25: $00
    nop                                           ; $7a26: $00
    nop                                           ; $7a27: $00
    nop                                           ; $7a28: $00
    nop                                           ; $7a29: $00
    nop                                           ; $7a2a: $00
    nop                                           ; $7a2b: $00
    nop                                           ; $7a2c: $00
    nop                                           ; $7a2d: $00
    nop                                           ; $7a2e: $00
    nop                                           ; $7a2f: $00
    nop                                           ; $7a30: $00
    nop                                           ; $7a31: $00
    nop                                           ; $7a32: $00
    nop                                           ; $7a33: $00
    nop                                           ; $7a34: $00
    nop                                           ; $7a35: $00
    nop                                           ; $7a36: $00
    nop                                           ; $7a37: $00
    nop                                           ; $7a38: $00
    nop                                           ; $7a39: $00
    nop                                           ; $7a3a: $00
    nop                                           ; $7a3b: $00
    nop                                           ; $7a3c: $00
    nop                                           ; $7a3d: $00
    nop                                           ; $7a3e: $00
    nop                                           ; $7a3f: $00
    nop                                           ; $7a40: $00
    nop                                           ; $7a41: $00
    nop                                           ; $7a42: $00
    nop                                           ; $7a43: $00
    nop                                           ; $7a44: $00
    nop                                           ; $7a45: $00
    nop                                           ; $7a46: $00
    nop                                           ; $7a47: $00
    nop                                           ; $7a48: $00
    nop                                           ; $7a49: $00
    nop                                           ; $7a4a: $00
    nop                                           ; $7a4b: $00
    nop                                           ; $7a4c: $00
    nop                                           ; $7a4d: $00
    nop                                           ; $7a4e: $00
    nop                                           ; $7a4f: $00
    nop                                           ; $7a50: $00
    nop                                           ; $7a51: $00
    nop                                           ; $7a52: $00
    nop                                           ; $7a53: $00
    nop                                           ; $7a54: $00
    nop                                           ; $7a55: $00
    nop                                           ; $7a56: $00
    nop                                           ; $7a57: $00
    nop                                           ; $7a58: $00
    nop                                           ; $7a59: $00
    nop                                           ; $7a5a: $00
    nop                                           ; $7a5b: $00
    nop                                           ; $7a5c: $00
    nop                                           ; $7a5d: $00
    nop                                           ; $7a5e: $00
    nop                                           ; $7a5f: $00
    nop                                           ; $7a60: $00
    nop                                           ; $7a61: $00
    nop                                           ; $7a62: $00
    nop                                           ; $7a63: $00
    nop                                           ; $7a64: $00
    nop                                           ; $7a65: $00
    nop                                           ; $7a66: $00
    nop                                           ; $7a67: $00
    nop                                           ; $7a68: $00
    nop                                           ; $7a69: $00
    nop                                           ; $7a6a: $00
    nop                                           ; $7a6b: $00
    nop                                           ; $7a6c: $00
    nop                                           ; $7a6d: $00
    nop                                           ; $7a6e: $00
    nop                                           ; $7a6f: $00
    nop                                           ; $7a70: $00
    nop                                           ; $7a71: $00
    nop                                           ; $7a72: $00
    nop                                           ; $7a73: $00
    nop                                           ; $7a74: $00
    nop                                           ; $7a75: $00
    nop                                           ; $7a76: $00

Jump_00f_7a77:
    nop                                           ; $7a77: $00
    nop                                           ; $7a78: $00
    nop                                           ; $7a79: $00
    nop                                           ; $7a7a: $00
    nop                                           ; $7a7b: $00
    nop                                           ; $7a7c: $00
    nop                                           ; $7a7d: $00
    nop                                           ; $7a7e: $00
    nop                                           ; $7a7f: $00
    nop                                           ; $7a80: $00
    nop                                           ; $7a81: $00
    nop                                           ; $7a82: $00
    nop                                           ; $7a83: $00
    nop                                           ; $7a84: $00
    nop                                           ; $7a85: $00
    nop                                           ; $7a86: $00
    nop                                           ; $7a87: $00
    nop                                           ; $7a88: $00
    nop                                           ; $7a89: $00

Call_00f_7a8a:
    nop                                           ; $7a8a: $00
    nop                                           ; $7a8b: $00
    nop                                           ; $7a8c: $00
    nop                                           ; $7a8d: $00
    nop                                           ; $7a8e: $00
    nop                                           ; $7a8f: $00
    nop                                           ; $7a90: $00
    nop                                           ; $7a91: $00
    nop                                           ; $7a92: $00
    nop                                           ; $7a93: $00
    nop                                           ; $7a94: $00
    nop                                           ; $7a95: $00
    nop                                           ; $7a96: $00
    nop                                           ; $7a97: $00
    nop                                           ; $7a98: $00
    nop                                           ; $7a99: $00
    nop                                           ; $7a9a: $00
    nop                                           ; $7a9b: $00
    nop                                           ; $7a9c: $00
    nop                                           ; $7a9d: $00
    nop                                           ; $7a9e: $00
    nop                                           ; $7a9f: $00
    nop                                           ; $7aa0: $00
    nop                                           ; $7aa1: $00
    nop                                           ; $7aa2: $00
    nop                                           ; $7aa3: $00
    nop                                           ; $7aa4: $00
    nop                                           ; $7aa5: $00
    nop                                           ; $7aa6: $00
    nop                                           ; $7aa7: $00
    nop                                           ; $7aa8: $00
    nop                                           ; $7aa9: $00
    nop                                           ; $7aaa: $00
    nop                                           ; $7aab: $00
    nop                                           ; $7aac: $00
    nop                                           ; $7aad: $00
    nop                                           ; $7aae: $00
    nop                                           ; $7aaf: $00
    nop                                           ; $7ab0: $00
    nop                                           ; $7ab1: $00
    nop                                           ; $7ab2: $00
    nop                                           ; $7ab3: $00
    nop                                           ; $7ab4: $00
    nop                                           ; $7ab5: $00
    nop                                           ; $7ab6: $00
    nop                                           ; $7ab7: $00
    nop                                           ; $7ab8: $00
    nop                                           ; $7ab9: $00
    nop                                           ; $7aba: $00
    nop                                           ; $7abb: $00
    nop                                           ; $7abc: $00
    nop                                           ; $7abd: $00
    nop                                           ; $7abe: $00
    nop                                           ; $7abf: $00
    nop                                           ; $7ac0: $00
    nop                                           ; $7ac1: $00
    nop                                           ; $7ac2: $00
    nop                                           ; $7ac3: $00
    nop                                           ; $7ac4: $00
    nop                                           ; $7ac5: $00
    nop                                           ; $7ac6: $00
    nop                                           ; $7ac7: $00
    nop                                           ; $7ac8: $00
    nop                                           ; $7ac9: $00
    nop                                           ; $7aca: $00
    nop                                           ; $7acb: $00
    nop                                           ; $7acc: $00
    nop                                           ; $7acd: $00
    nop                                           ; $7ace: $00
    nop                                           ; $7acf: $00
    nop                                           ; $7ad0: $00
    nop                                           ; $7ad1: $00
    nop                                           ; $7ad2: $00
    nop                                           ; $7ad3: $00
    nop                                           ; $7ad4: $00
    nop                                           ; $7ad5: $00
    nop                                           ; $7ad6: $00
    nop                                           ; $7ad7: $00
    nop                                           ; $7ad8: $00
    nop                                           ; $7ad9: $00
    nop                                           ; $7ada: $00
    nop                                           ; $7adb: $00
    nop                                           ; $7adc: $00
    nop                                           ; $7add: $00
    nop                                           ; $7ade: $00
    nop                                           ; $7adf: $00
    nop                                           ; $7ae0: $00
    nop                                           ; $7ae1: $00
    nop                                           ; $7ae2: $00
    nop                                           ; $7ae3: $00
    nop                                           ; $7ae4: $00
    nop                                           ; $7ae5: $00
    nop                                           ; $7ae6: $00
    nop                                           ; $7ae7: $00
    nop                                           ; $7ae8: $00

Jump_00f_7ae9:
    nop                                           ; $7ae9: $00
    nop                                           ; $7aea: $00
    nop                                           ; $7aeb: $00
    nop                                           ; $7aec: $00
    nop                                           ; $7aed: $00
    nop                                           ; $7aee: $00
    nop                                           ; $7aef: $00
    nop                                           ; $7af0: $00
    nop                                           ; $7af1: $00
    nop                                           ; $7af2: $00
    nop                                           ; $7af3: $00
    nop                                           ; $7af4: $00
    nop                                           ; $7af5: $00
    nop                                           ; $7af6: $00
    nop                                           ; $7af7: $00
    nop                                           ; $7af8: $00
    nop                                           ; $7af9: $00
    nop                                           ; $7afa: $00
    nop                                           ; $7afb: $00
    nop                                           ; $7afc: $00
    nop                                           ; $7afd: $00
    nop                                           ; $7afe: $00
    nop                                           ; $7aff: $00
    nop                                           ; $7b00: $00
    nop                                           ; $7b01: $00
    nop                                           ; $7b02: $00

Jump_00f_7b03:
    nop                                           ; $7b03: $00
    nop                                           ; $7b04: $00
    nop                                           ; $7b05: $00
    nop                                           ; $7b06: $00
    nop                                           ; $7b07: $00
    nop                                           ; $7b08: $00
    nop                                           ; $7b09: $00
    nop                                           ; $7b0a: $00
    nop                                           ; $7b0b: $00
    nop                                           ; $7b0c: $00
    nop                                           ; $7b0d: $00
    nop                                           ; $7b0e: $00
    nop                                           ; $7b0f: $00
    nop                                           ; $7b10: $00
    nop                                           ; $7b11: $00
    nop                                           ; $7b12: $00
    nop                                           ; $7b13: $00
    nop                                           ; $7b14: $00
    nop                                           ; $7b15: $00
    nop                                           ; $7b16: $00
    nop                                           ; $7b17: $00
    nop                                           ; $7b18: $00
    nop                                           ; $7b19: $00
    nop                                           ; $7b1a: $00
    nop                                           ; $7b1b: $00
    nop                                           ; $7b1c: $00
    nop                                           ; $7b1d: $00
    nop                                           ; $7b1e: $00
    nop                                           ; $7b1f: $00
    nop                                           ; $7b20: $00
    nop                                           ; $7b21: $00
    nop                                           ; $7b22: $00
    nop                                           ; $7b23: $00
    nop                                           ; $7b24: $00
    nop                                           ; $7b25: $00
    nop                                           ; $7b26: $00
    nop                                           ; $7b27: $00
    nop                                           ; $7b28: $00
    nop                                           ; $7b29: $00
    nop                                           ; $7b2a: $00
    nop                                           ; $7b2b: $00
    nop                                           ; $7b2c: $00
    nop                                           ; $7b2d: $00
    nop                                           ; $7b2e: $00
    nop                                           ; $7b2f: $00
    nop                                           ; $7b30: $00
    nop                                           ; $7b31: $00
    nop                                           ; $7b32: $00
    nop                                           ; $7b33: $00
    nop                                           ; $7b34: $00
    nop                                           ; $7b35: $00
    nop                                           ; $7b36: $00
    nop                                           ; $7b37: $00
    nop                                           ; $7b38: $00
    nop                                           ; $7b39: $00
    nop                                           ; $7b3a: $00
    nop                                           ; $7b3b: $00
    nop                                           ; $7b3c: $00
    nop                                           ; $7b3d: $00
    nop                                           ; $7b3e: $00
    nop                                           ; $7b3f: $00
    nop                                           ; $7b40: $00
    nop                                           ; $7b41: $00
    nop                                           ; $7b42: $00
    nop                                           ; $7b43: $00
    nop                                           ; $7b44: $00
    nop                                           ; $7b45: $00
    nop                                           ; $7b46: $00
    nop                                           ; $7b47: $00
    nop                                           ; $7b48: $00
    nop                                           ; $7b49: $00
    nop                                           ; $7b4a: $00
    nop                                           ; $7b4b: $00
    nop                                           ; $7b4c: $00
    nop                                           ; $7b4d: $00
    nop                                           ; $7b4e: $00
    nop                                           ; $7b4f: $00
    nop                                           ; $7b50: $00
    nop                                           ; $7b51: $00
    nop                                           ; $7b52: $00
    nop                                           ; $7b53: $00
    nop                                           ; $7b54: $00
    nop                                           ; $7b55: $00
    nop                                           ; $7b56: $00
    nop                                           ; $7b57: $00
    nop                                           ; $7b58: $00
    nop                                           ; $7b59: $00
    nop                                           ; $7b5a: $00
    nop                                           ; $7b5b: $00
    nop                                           ; $7b5c: $00
    nop                                           ; $7b5d: $00
    nop                                           ; $7b5e: $00
    nop                                           ; $7b5f: $00
    nop                                           ; $7b60: $00
    nop                                           ; $7b61: $00
    nop                                           ; $7b62: $00
    nop                                           ; $7b63: $00
    nop                                           ; $7b64: $00
    nop                                           ; $7b65: $00
    nop                                           ; $7b66: $00
    nop                                           ; $7b67: $00
    nop                                           ; $7b68: $00
    nop                                           ; $7b69: $00
    nop                                           ; $7b6a: $00
    nop                                           ; $7b6b: $00
    nop                                           ; $7b6c: $00
    nop                                           ; $7b6d: $00
    nop                                           ; $7b6e: $00
    nop                                           ; $7b6f: $00
    nop                                           ; $7b70: $00
    nop                                           ; $7b71: $00
    nop                                           ; $7b72: $00
    nop                                           ; $7b73: $00
    nop                                           ; $7b74: $00
    nop                                           ; $7b75: $00
    nop                                           ; $7b76: $00
    nop                                           ; $7b77: $00
    nop                                           ; $7b78: $00
    nop                                           ; $7b79: $00
    nop                                           ; $7b7a: $00
    nop                                           ; $7b7b: $00
    nop                                           ; $7b7c: $00
    nop                                           ; $7b7d: $00
    nop                                           ; $7b7e: $00
    nop                                           ; $7b7f: $00
    nop                                           ; $7b80: $00
    nop                                           ; $7b81: $00
    nop                                           ; $7b82: $00
    nop                                           ; $7b83: $00
    nop                                           ; $7b84: $00
    nop                                           ; $7b85: $00
    nop                                           ; $7b86: $00
    nop                                           ; $7b87: $00
    nop                                           ; $7b88: $00
    nop                                           ; $7b89: $00
    nop                                           ; $7b8a: $00
    nop                                           ; $7b8b: $00
    nop                                           ; $7b8c: $00
    nop                                           ; $7b8d: $00
    nop                                           ; $7b8e: $00
    nop                                           ; $7b8f: $00
    nop                                           ; $7b90: $00
    nop                                           ; $7b91: $00
    nop                                           ; $7b92: $00
    nop                                           ; $7b93: $00
    nop                                           ; $7b94: $00
    nop                                           ; $7b95: $00
    nop                                           ; $7b96: $00
    nop                                           ; $7b97: $00
    nop                                           ; $7b98: $00
    nop                                           ; $7b99: $00
    nop                                           ; $7b9a: $00
    nop                                           ; $7b9b: $00
    nop                                           ; $7b9c: $00
    nop                                           ; $7b9d: $00
    nop                                           ; $7b9e: $00
    nop                                           ; $7b9f: $00
    nop                                           ; $7ba0: $00
    nop                                           ; $7ba1: $00
    nop                                           ; $7ba2: $00
    nop                                           ; $7ba3: $00
    nop                                           ; $7ba4: $00
    nop                                           ; $7ba5: $00
    nop                                           ; $7ba6: $00
    nop                                           ; $7ba7: $00
    nop                                           ; $7ba8: $00
    nop                                           ; $7ba9: $00
    nop                                           ; $7baa: $00
    nop                                           ; $7bab: $00
    nop                                           ; $7bac: $00
    nop                                           ; $7bad: $00
    nop                                           ; $7bae: $00
    nop                                           ; $7baf: $00
    nop                                           ; $7bb0: $00
    nop                                           ; $7bb1: $00
    nop                                           ; $7bb2: $00
    nop                                           ; $7bb3: $00
    nop                                           ; $7bb4: $00
    nop                                           ; $7bb5: $00
    nop                                           ; $7bb6: $00
    nop                                           ; $7bb7: $00
    nop                                           ; $7bb8: $00
    nop                                           ; $7bb9: $00
    nop                                           ; $7bba: $00
    nop                                           ; $7bbb: $00
    nop                                           ; $7bbc: $00
    nop                                           ; $7bbd: $00
    nop                                           ; $7bbe: $00
    nop                                           ; $7bbf: $00
    nop                                           ; $7bc0: $00
    nop                                           ; $7bc1: $00
    nop                                           ; $7bc2: $00
    nop                                           ; $7bc3: $00
    nop                                           ; $7bc4: $00
    nop                                           ; $7bc5: $00
    nop                                           ; $7bc6: $00
    nop                                           ; $7bc7: $00
    nop                                           ; $7bc8: $00
    nop                                           ; $7bc9: $00
    nop                                           ; $7bca: $00
    nop                                           ; $7bcb: $00
    nop                                           ; $7bcc: $00
    nop                                           ; $7bcd: $00
    nop                                           ; $7bce: $00
    nop                                           ; $7bcf: $00
    nop                                           ; $7bd0: $00
    nop                                           ; $7bd1: $00
    nop                                           ; $7bd2: $00
    nop                                           ; $7bd3: $00
    nop                                           ; $7bd4: $00
    nop                                           ; $7bd5: $00
    nop                                           ; $7bd6: $00
    nop                                           ; $7bd7: $00
    nop                                           ; $7bd8: $00
    nop                                           ; $7bd9: $00
    nop                                           ; $7bda: $00
    nop                                           ; $7bdb: $00
    nop                                           ; $7bdc: $00
    nop                                           ; $7bdd: $00
    nop                                           ; $7bde: $00
    nop                                           ; $7bdf: $00
    nop                                           ; $7be0: $00
    nop                                           ; $7be1: $00
    nop                                           ; $7be2: $00
    nop                                           ; $7be3: $00
    nop                                           ; $7be4: $00
    nop                                           ; $7be5: $00
    nop                                           ; $7be6: $00
    nop                                           ; $7be7: $00
    nop                                           ; $7be8: $00
    nop                                           ; $7be9: $00
    nop                                           ; $7bea: $00
    nop                                           ; $7beb: $00
    nop                                           ; $7bec: $00
    nop                                           ; $7bed: $00
    nop                                           ; $7bee: $00
    nop                                           ; $7bef: $00
    nop                                           ; $7bf0: $00
    nop                                           ; $7bf1: $00
    nop                                           ; $7bf2: $00
    nop                                           ; $7bf3: $00
    nop                                           ; $7bf4: $00
    nop                                           ; $7bf5: $00
    nop                                           ; $7bf6: $00
    nop                                           ; $7bf7: $00
    nop                                           ; $7bf8: $00
    nop                                           ; $7bf9: $00
    nop                                           ; $7bfa: $00
    nop                                           ; $7bfb: $00
    nop                                           ; $7bfc: $00
    nop                                           ; $7bfd: $00
    nop                                           ; $7bfe: $00
    nop                                           ; $7bff: $00
    nop                                           ; $7c00: $00
    nop                                           ; $7c01: $00
    nop                                           ; $7c02: $00
    nop                                           ; $7c03: $00
    nop                                           ; $7c04: $00
    nop                                           ; $7c05: $00
    nop                                           ; $7c06: $00
    nop                                           ; $7c07: $00
    nop                                           ; $7c08: $00
    nop                                           ; $7c09: $00
    nop                                           ; $7c0a: $00
    nop                                           ; $7c0b: $00
    nop                                           ; $7c0c: $00
    nop                                           ; $7c0d: $00
    nop                                           ; $7c0e: $00
    nop                                           ; $7c0f: $00
    nop                                           ; $7c10: $00
    nop                                           ; $7c11: $00
    nop                                           ; $7c12: $00
    nop                                           ; $7c13: $00
    nop                                           ; $7c14: $00
    nop                                           ; $7c15: $00
    nop                                           ; $7c16: $00
    nop                                           ; $7c17: $00
    nop                                           ; $7c18: $00
    nop                                           ; $7c19: $00
    nop                                           ; $7c1a: $00
    nop                                           ; $7c1b: $00
    nop                                           ; $7c1c: $00
    nop                                           ; $7c1d: $00
    nop                                           ; $7c1e: $00
    nop                                           ; $7c1f: $00
    nop                                           ; $7c20: $00
    nop                                           ; $7c21: $00
    nop                                           ; $7c22: $00
    nop                                           ; $7c23: $00
    nop                                           ; $7c24: $00
    nop                                           ; $7c25: $00
    nop                                           ; $7c26: $00
    nop                                           ; $7c27: $00
    nop                                           ; $7c28: $00
    nop                                           ; $7c29: $00
    nop                                           ; $7c2a: $00
    nop                                           ; $7c2b: $00
    nop                                           ; $7c2c: $00
    nop                                           ; $7c2d: $00
    nop                                           ; $7c2e: $00
    nop                                           ; $7c2f: $00
    nop                                           ; $7c30: $00
    nop                                           ; $7c31: $00
    nop                                           ; $7c32: $00
    nop                                           ; $7c33: $00
    nop                                           ; $7c34: $00
    nop                                           ; $7c35: $00
    nop                                           ; $7c36: $00
    nop                                           ; $7c37: $00
    nop                                           ; $7c38: $00
    nop                                           ; $7c39: $00
    nop                                           ; $7c3a: $00
    nop                                           ; $7c3b: $00
    nop                                           ; $7c3c: $00
    nop                                           ; $7c3d: $00
    nop                                           ; $7c3e: $00
    nop                                           ; $7c3f: $00
    nop                                           ; $7c40: $00
    nop                                           ; $7c41: $00
    nop                                           ; $7c42: $00
    nop                                           ; $7c43: $00
    nop                                           ; $7c44: $00
    nop                                           ; $7c45: $00
    nop                                           ; $7c46: $00
    nop                                           ; $7c47: $00
    nop                                           ; $7c48: $00
    nop                                           ; $7c49: $00
    nop                                           ; $7c4a: $00
    nop                                           ; $7c4b: $00
    nop                                           ; $7c4c: $00
    nop                                           ; $7c4d: $00
    nop                                           ; $7c4e: $00
    nop                                           ; $7c4f: $00
    nop                                           ; $7c50: $00
    nop                                           ; $7c51: $00
    nop                                           ; $7c52: $00
    nop                                           ; $7c53: $00
    nop                                           ; $7c54: $00
    nop                                           ; $7c55: $00
    nop                                           ; $7c56: $00
    nop                                           ; $7c57: $00
    nop                                           ; $7c58: $00
    nop                                           ; $7c59: $00
    nop                                           ; $7c5a: $00
    nop                                           ; $7c5b: $00
    nop                                           ; $7c5c: $00
    nop                                           ; $7c5d: $00
    nop                                           ; $7c5e: $00
    nop                                           ; $7c5f: $00
    nop                                           ; $7c60: $00
    nop                                           ; $7c61: $00
    nop                                           ; $7c62: $00
    nop                                           ; $7c63: $00
    nop                                           ; $7c64: $00
    nop                                           ; $7c65: $00
    nop                                           ; $7c66: $00
    nop                                           ; $7c67: $00
    nop                                           ; $7c68: $00
    nop                                           ; $7c69: $00
    nop                                           ; $7c6a: $00
    nop                                           ; $7c6b: $00
    nop                                           ; $7c6c: $00
    nop                                           ; $7c6d: $00
    nop                                           ; $7c6e: $00

Jump_00f_7c6f:
    nop                                           ; $7c6f: $00

Call_00f_7c70:
    nop                                           ; $7c70: $00
    nop                                           ; $7c71: $00
    nop                                           ; $7c72: $00
    nop                                           ; $7c73: $00
    nop                                           ; $7c74: $00
    nop                                           ; $7c75: $00
    nop                                           ; $7c76: $00
    nop                                           ; $7c77: $00
    nop                                           ; $7c78: $00
    nop                                           ; $7c79: $00
    nop                                           ; $7c7a: $00
    nop                                           ; $7c7b: $00
    nop                                           ; $7c7c: $00
    nop                                           ; $7c7d: $00
    nop                                           ; $7c7e: $00
    nop                                           ; $7c7f: $00
    nop                                           ; $7c80: $00
    nop                                           ; $7c81: $00
    nop                                           ; $7c82: $00
    nop                                           ; $7c83: $00
    nop                                           ; $7c84: $00
    nop                                           ; $7c85: $00
    nop                                           ; $7c86: $00
    nop                                           ; $7c87: $00
    nop                                           ; $7c88: $00
    nop                                           ; $7c89: $00
    nop                                           ; $7c8a: $00
    nop                                           ; $7c8b: $00
    nop                                           ; $7c8c: $00
    nop                                           ; $7c8d: $00
    nop                                           ; $7c8e: $00
    nop                                           ; $7c8f: $00
    nop                                           ; $7c90: $00
    nop                                           ; $7c91: $00
    nop                                           ; $7c92: $00
    nop                                           ; $7c93: $00
    nop                                           ; $7c94: $00
    nop                                           ; $7c95: $00
    nop                                           ; $7c96: $00
    nop                                           ; $7c97: $00
    nop                                           ; $7c98: $00
    nop                                           ; $7c99: $00
    nop                                           ; $7c9a: $00
    nop                                           ; $7c9b: $00
    nop                                           ; $7c9c: $00
    nop                                           ; $7c9d: $00
    nop                                           ; $7c9e: $00
    nop                                           ; $7c9f: $00
    nop                                           ; $7ca0: $00
    nop                                           ; $7ca1: $00
    nop                                           ; $7ca2: $00
    nop                                           ; $7ca3: $00
    nop                                           ; $7ca4: $00
    nop                                           ; $7ca5: $00
    nop                                           ; $7ca6: $00
    nop                                           ; $7ca7: $00
    nop                                           ; $7ca8: $00
    nop                                           ; $7ca9: $00
    nop                                           ; $7caa: $00
    nop                                           ; $7cab: $00
    nop                                           ; $7cac: $00
    nop                                           ; $7cad: $00
    nop                                           ; $7cae: $00
    nop                                           ; $7caf: $00
    nop                                           ; $7cb0: $00
    nop                                           ; $7cb1: $00
    nop                                           ; $7cb2: $00
    nop                                           ; $7cb3: $00
    nop                                           ; $7cb4: $00
    nop                                           ; $7cb5: $00
    nop                                           ; $7cb6: $00
    nop                                           ; $7cb7: $00
    nop                                           ; $7cb8: $00
    nop                                           ; $7cb9: $00
    nop                                           ; $7cba: $00
    nop                                           ; $7cbb: $00
    nop                                           ; $7cbc: $00
    nop                                           ; $7cbd: $00
    nop                                           ; $7cbe: $00
    nop                                           ; $7cbf: $00
    nop                                           ; $7cc0: $00
    nop                                           ; $7cc1: $00
    nop                                           ; $7cc2: $00
    nop                                           ; $7cc3: $00
    nop                                           ; $7cc4: $00
    nop                                           ; $7cc5: $00
    nop                                           ; $7cc6: $00
    nop                                           ; $7cc7: $00
    nop                                           ; $7cc8: $00
    nop                                           ; $7cc9: $00
    nop                                           ; $7cca: $00
    nop                                           ; $7ccb: $00
    nop                                           ; $7ccc: $00
    nop                                           ; $7ccd: $00
    nop                                           ; $7cce: $00
    nop                                           ; $7ccf: $00
    nop                                           ; $7cd0: $00
    nop                                           ; $7cd1: $00
    nop                                           ; $7cd2: $00
    nop                                           ; $7cd3: $00
    nop                                           ; $7cd4: $00
    nop                                           ; $7cd5: $00
    nop                                           ; $7cd6: $00
    nop                                           ; $7cd7: $00
    nop                                           ; $7cd8: $00
    nop                                           ; $7cd9: $00
    nop                                           ; $7cda: $00
    nop                                           ; $7cdb: $00
    nop                                           ; $7cdc: $00
    nop                                           ; $7cdd: $00
    nop                                           ; $7cde: $00
    nop                                           ; $7cdf: $00
    nop                                           ; $7ce0: $00
    nop                                           ; $7ce1: $00
    nop                                           ; $7ce2: $00
    nop                                           ; $7ce3: $00
    nop                                           ; $7ce4: $00
    nop                                           ; $7ce5: $00
    nop                                           ; $7ce6: $00
    nop                                           ; $7ce7: $00
    nop                                           ; $7ce8: $00
    nop                                           ; $7ce9: $00
    nop                                           ; $7cea: $00
    nop                                           ; $7ceb: $00
    nop                                           ; $7cec: $00
    nop                                           ; $7ced: $00

Jump_00f_7cee:
    nop                                           ; $7cee: $00
    nop                                           ; $7cef: $00
    nop                                           ; $7cf0: $00
    nop                                           ; $7cf1: $00
    nop                                           ; $7cf2: $00
    nop                                           ; $7cf3: $00
    nop                                           ; $7cf4: $00
    nop                                           ; $7cf5: $00
    nop                                           ; $7cf6: $00
    nop                                           ; $7cf7: $00
    nop                                           ; $7cf8: $00
    nop                                           ; $7cf9: $00
    nop                                           ; $7cfa: $00
    nop                                           ; $7cfb: $00
    nop                                           ; $7cfc: $00
    nop                                           ; $7cfd: $00
    nop                                           ; $7cfe: $00
    nop                                           ; $7cff: $00
    nop                                           ; $7d00: $00
    nop                                           ; $7d01: $00
    nop                                           ; $7d02: $00
    nop                                           ; $7d03: $00
    nop                                           ; $7d04: $00
    nop                                           ; $7d05: $00
    nop                                           ; $7d06: $00
    nop                                           ; $7d07: $00
    nop                                           ; $7d08: $00
    nop                                           ; $7d09: $00
    nop                                           ; $7d0a: $00
    nop                                           ; $7d0b: $00
    nop                                           ; $7d0c: $00
    nop                                           ; $7d0d: $00
    nop                                           ; $7d0e: $00
    nop                                           ; $7d0f: $00
    nop                                           ; $7d10: $00
    nop                                           ; $7d11: $00
    nop                                           ; $7d12: $00
    nop                                           ; $7d13: $00
    nop                                           ; $7d14: $00
    nop                                           ; $7d15: $00
    nop                                           ; $7d16: $00
    nop                                           ; $7d17: $00
    nop                                           ; $7d18: $00
    nop                                           ; $7d19: $00
    nop                                           ; $7d1a: $00
    nop                                           ; $7d1b: $00
    nop                                           ; $7d1c: $00
    nop                                           ; $7d1d: $00
    nop                                           ; $7d1e: $00
    nop                                           ; $7d1f: $00
    nop                                           ; $7d20: $00
    nop                                           ; $7d21: $00
    nop                                           ; $7d22: $00
    nop                                           ; $7d23: $00
    nop                                           ; $7d24: $00
    nop                                           ; $7d25: $00
    nop                                           ; $7d26: $00
    nop                                           ; $7d27: $00
    nop                                           ; $7d28: $00
    nop                                           ; $7d29: $00
    nop                                           ; $7d2a: $00
    nop                                           ; $7d2b: $00
    nop                                           ; $7d2c: $00
    nop                                           ; $7d2d: $00
    nop                                           ; $7d2e: $00
    nop                                           ; $7d2f: $00
    nop                                           ; $7d30: $00
    nop                                           ; $7d31: $00
    nop                                           ; $7d32: $00
    nop                                           ; $7d33: $00
    nop                                           ; $7d34: $00
    nop                                           ; $7d35: $00
    nop                                           ; $7d36: $00
    nop                                           ; $7d37: $00
    nop                                           ; $7d38: $00
    nop                                           ; $7d39: $00
    nop                                           ; $7d3a: $00
    nop                                           ; $7d3b: $00
    nop                                           ; $7d3c: $00
    nop                                           ; $7d3d: $00
    nop                                           ; $7d3e: $00
    nop                                           ; $7d3f: $00
    nop                                           ; $7d40: $00
    nop                                           ; $7d41: $00
    nop                                           ; $7d42: $00
    nop                                           ; $7d43: $00
    nop                                           ; $7d44: $00
    nop                                           ; $7d45: $00
    nop                                           ; $7d46: $00
    nop                                           ; $7d47: $00
    nop                                           ; $7d48: $00
    nop                                           ; $7d49: $00
    nop                                           ; $7d4a: $00
    nop                                           ; $7d4b: $00
    nop                                           ; $7d4c: $00
    nop                                           ; $7d4d: $00
    nop                                           ; $7d4e: $00
    nop                                           ; $7d4f: $00
    nop                                           ; $7d50: $00
    nop                                           ; $7d51: $00
    nop                                           ; $7d52: $00
    nop                                           ; $7d53: $00
    nop                                           ; $7d54: $00
    nop                                           ; $7d55: $00
    nop                                           ; $7d56: $00
    nop                                           ; $7d57: $00
    nop                                           ; $7d58: $00
    nop                                           ; $7d59: $00
    nop                                           ; $7d5a: $00
    nop                                           ; $7d5b: $00
    nop                                           ; $7d5c: $00
    nop                                           ; $7d5d: $00
    nop                                           ; $7d5e: $00
    nop                                           ; $7d5f: $00
    nop                                           ; $7d60: $00
    nop                                           ; $7d61: $00
    nop                                           ; $7d62: $00
    nop                                           ; $7d63: $00
    nop                                           ; $7d64: $00
    nop                                           ; $7d65: $00
    nop                                           ; $7d66: $00
    nop                                           ; $7d67: $00
    nop                                           ; $7d68: $00
    nop                                           ; $7d69: $00
    nop                                           ; $7d6a: $00
    nop                                           ; $7d6b: $00
    nop                                           ; $7d6c: $00
    nop                                           ; $7d6d: $00
    nop                                           ; $7d6e: $00
    nop                                           ; $7d6f: $00
    nop                                           ; $7d70: $00
    nop                                           ; $7d71: $00
    nop                                           ; $7d72: $00
    nop                                           ; $7d73: $00
    nop                                           ; $7d74: $00
    nop                                           ; $7d75: $00
    nop                                           ; $7d76: $00
    nop                                           ; $7d77: $00
    nop                                           ; $7d78: $00
    nop                                           ; $7d79: $00
    nop                                           ; $7d7a: $00
    nop                                           ; $7d7b: $00
    nop                                           ; $7d7c: $00
    nop                                           ; $7d7d: $00
    nop                                           ; $7d7e: $00
    nop                                           ; $7d7f: $00
    nop                                           ; $7d80: $00
    nop                                           ; $7d81: $00
    nop                                           ; $7d82: $00
    nop                                           ; $7d83: $00
    nop                                           ; $7d84: $00
    nop                                           ; $7d85: $00
    nop                                           ; $7d86: $00
    nop                                           ; $7d87: $00
    nop                                           ; $7d88: $00
    nop                                           ; $7d89: $00
    nop                                           ; $7d8a: $00
    nop                                           ; $7d8b: $00
    nop                                           ; $7d8c: $00
    nop                                           ; $7d8d: $00
    nop                                           ; $7d8e: $00
    nop                                           ; $7d8f: $00
    nop                                           ; $7d90: $00
    nop                                           ; $7d91: $00
    nop                                           ; $7d92: $00
    nop                                           ; $7d93: $00
    nop                                           ; $7d94: $00
    nop                                           ; $7d95: $00
    nop                                           ; $7d96: $00
    nop                                           ; $7d97: $00
    nop                                           ; $7d98: $00
    nop                                           ; $7d99: $00
    nop                                           ; $7d9a: $00
    nop                                           ; $7d9b: $00
    nop                                           ; $7d9c: $00
    nop                                           ; $7d9d: $00
    nop                                           ; $7d9e: $00
    nop                                           ; $7d9f: $00
    nop                                           ; $7da0: $00
    nop                                           ; $7da1: $00
    nop                                           ; $7da2: $00
    nop                                           ; $7da3: $00
    nop                                           ; $7da4: $00
    nop                                           ; $7da5: $00
    nop                                           ; $7da6: $00
    nop                                           ; $7da7: $00
    nop                                           ; $7da8: $00
    nop                                           ; $7da9: $00
    nop                                           ; $7daa: $00
    nop                                           ; $7dab: $00
    nop                                           ; $7dac: $00
    nop                                           ; $7dad: $00
    nop                                           ; $7dae: $00
    nop                                           ; $7daf: $00
    nop                                           ; $7db0: $00
    nop                                           ; $7db1: $00
    nop                                           ; $7db2: $00
    nop                                           ; $7db3: $00
    nop                                           ; $7db4: $00
    nop                                           ; $7db5: $00
    nop                                           ; $7db6: $00
    nop                                           ; $7db7: $00
    nop                                           ; $7db8: $00
    nop                                           ; $7db9: $00
    nop                                           ; $7dba: $00
    nop                                           ; $7dbb: $00
    nop                                           ; $7dbc: $00
    nop                                           ; $7dbd: $00
    nop                                           ; $7dbe: $00
    nop                                           ; $7dbf: $00
    nop                                           ; $7dc0: $00
    nop                                           ; $7dc1: $00
    nop                                           ; $7dc2: $00
    nop                                           ; $7dc3: $00
    nop                                           ; $7dc4: $00
    nop                                           ; $7dc5: $00
    nop                                           ; $7dc6: $00
    nop                                           ; $7dc7: $00
    nop                                           ; $7dc8: $00
    nop                                           ; $7dc9: $00
    nop                                           ; $7dca: $00
    nop                                           ; $7dcb: $00
    nop                                           ; $7dcc: $00
    nop                                           ; $7dcd: $00
    nop                                           ; $7dce: $00
    nop                                           ; $7dcf: $00
    nop                                           ; $7dd0: $00
    nop                                           ; $7dd1: $00
    nop                                           ; $7dd2: $00
    nop                                           ; $7dd3: $00
    nop                                           ; $7dd4: $00
    nop                                           ; $7dd5: $00
    nop                                           ; $7dd6: $00
    nop                                           ; $7dd7: $00
    nop                                           ; $7dd8: $00
    nop                                           ; $7dd9: $00
    nop                                           ; $7dda: $00
    nop                                           ; $7ddb: $00
    nop                                           ; $7ddc: $00
    nop                                           ; $7ddd: $00
    nop                                           ; $7dde: $00
    nop                                           ; $7ddf: $00
    nop                                           ; $7de0: $00
    nop                                           ; $7de1: $00
    nop                                           ; $7de2: $00
    nop                                           ; $7de3: $00
    nop                                           ; $7de4: $00
    nop                                           ; $7de5: $00
    nop                                           ; $7de6: $00
    nop                                           ; $7de7: $00
    nop                                           ; $7de8: $00
    nop                                           ; $7de9: $00
    nop                                           ; $7dea: $00
    nop                                           ; $7deb: $00
    nop                                           ; $7dec: $00
    nop                                           ; $7ded: $00
    nop                                           ; $7dee: $00
    nop                                           ; $7def: $00
    nop                                           ; $7df0: $00
    nop                                           ; $7df1: $00
    nop                                           ; $7df2: $00
    nop                                           ; $7df3: $00
    nop                                           ; $7df4: $00
    nop                                           ; $7df5: $00
    nop                                           ; $7df6: $00
    nop                                           ; $7df7: $00
    nop                                           ; $7df8: $00
    nop                                           ; $7df9: $00
    nop                                           ; $7dfa: $00
    nop                                           ; $7dfb: $00
    nop                                           ; $7dfc: $00
    nop                                           ; $7dfd: $00
    nop                                           ; $7dfe: $00
    nop                                           ; $7dff: $00
    nop                                           ; $7e00: $00
    nop                                           ; $7e01: $00
    nop                                           ; $7e02: $00
    nop                                           ; $7e03: $00
    nop                                           ; $7e04: $00
    nop                                           ; $7e05: $00
    nop                                           ; $7e06: $00
    nop                                           ; $7e07: $00
    nop                                           ; $7e08: $00
    nop                                           ; $7e09: $00
    nop                                           ; $7e0a: $00
    nop                                           ; $7e0b: $00
    nop                                           ; $7e0c: $00
    nop                                           ; $7e0d: $00
    nop                                           ; $7e0e: $00
    nop                                           ; $7e0f: $00
    nop                                           ; $7e10: $00
    nop                                           ; $7e11: $00
    nop                                           ; $7e12: $00
    nop                                           ; $7e13: $00
    nop                                           ; $7e14: $00
    nop                                           ; $7e15: $00
    nop                                           ; $7e16: $00
    nop                                           ; $7e17: $00
    nop                                           ; $7e18: $00
    nop                                           ; $7e19: $00
    nop                                           ; $7e1a: $00
    nop                                           ; $7e1b: $00
    nop                                           ; $7e1c: $00
    nop                                           ; $7e1d: $00
    nop                                           ; $7e1e: $00
    nop                                           ; $7e1f: $00
    nop                                           ; $7e20: $00
    nop                                           ; $7e21: $00
    nop                                           ; $7e22: $00
    nop                                           ; $7e23: $00
    nop                                           ; $7e24: $00
    nop                                           ; $7e25: $00
    nop                                           ; $7e26: $00
    nop                                           ; $7e27: $00
    nop                                           ; $7e28: $00
    nop                                           ; $7e29: $00
    nop                                           ; $7e2a: $00
    nop                                           ; $7e2b: $00
    nop                                           ; $7e2c: $00
    nop                                           ; $7e2d: $00
    nop                                           ; $7e2e: $00
    nop                                           ; $7e2f: $00
    nop                                           ; $7e30: $00
    nop                                           ; $7e31: $00
    nop                                           ; $7e32: $00
    nop                                           ; $7e33: $00
    nop                                           ; $7e34: $00
    nop                                           ; $7e35: $00
    nop                                           ; $7e36: $00
    nop                                           ; $7e37: $00
    nop                                           ; $7e38: $00
    nop                                           ; $7e39: $00
    nop                                           ; $7e3a: $00
    nop                                           ; $7e3b: $00
    nop                                           ; $7e3c: $00
    nop                                           ; $7e3d: $00
    nop                                           ; $7e3e: $00
    nop                                           ; $7e3f: $00
    nop                                           ; $7e40: $00
    nop                                           ; $7e41: $00
    nop                                           ; $7e42: $00
    nop                                           ; $7e43: $00
    nop                                           ; $7e44: $00
    nop                                           ; $7e45: $00
    nop                                           ; $7e46: $00
    nop                                           ; $7e47: $00
    nop                                           ; $7e48: $00
    nop                                           ; $7e49: $00
    nop                                           ; $7e4a: $00
    nop                                           ; $7e4b: $00
    nop                                           ; $7e4c: $00
    nop                                           ; $7e4d: $00
    nop                                           ; $7e4e: $00
    nop                                           ; $7e4f: $00
    nop                                           ; $7e50: $00
    nop                                           ; $7e51: $00
    nop                                           ; $7e52: $00
    nop                                           ; $7e53: $00
    nop                                           ; $7e54: $00
    nop                                           ; $7e55: $00
    nop                                           ; $7e56: $00
    nop                                           ; $7e57: $00
    nop                                           ; $7e58: $00
    nop                                           ; $7e59: $00
    nop                                           ; $7e5a: $00
    nop                                           ; $7e5b: $00
    nop                                           ; $7e5c: $00
    nop                                           ; $7e5d: $00
    nop                                           ; $7e5e: $00
    nop                                           ; $7e5f: $00
    nop                                           ; $7e60: $00
    nop                                           ; $7e61: $00
    nop                                           ; $7e62: $00
    nop                                           ; $7e63: $00
    nop                                           ; $7e64: $00
    nop                                           ; $7e65: $00
    nop                                           ; $7e66: $00
    nop                                           ; $7e67: $00
    nop                                           ; $7e68: $00
    nop                                           ; $7e69: $00
    nop                                           ; $7e6a: $00
    nop                                           ; $7e6b: $00
    nop                                           ; $7e6c: $00
    nop                                           ; $7e6d: $00
    nop                                           ; $7e6e: $00
    nop                                           ; $7e6f: $00
    nop                                           ; $7e70: $00
    nop                                           ; $7e71: $00
    nop                                           ; $7e72: $00
    nop                                           ; $7e73: $00
    nop                                           ; $7e74: $00
    nop                                           ; $7e75: $00
    nop                                           ; $7e76: $00
    nop                                           ; $7e77: $00
    nop                                           ; $7e78: $00
    nop                                           ; $7e79: $00
    nop                                           ; $7e7a: $00
    nop                                           ; $7e7b: $00
    nop                                           ; $7e7c: $00
    nop                                           ; $7e7d: $00
    nop                                           ; $7e7e: $00
    nop                                           ; $7e7f: $00
    nop                                           ; $7e80: $00
    nop                                           ; $7e81: $00
    nop                                           ; $7e82: $00
    nop                                           ; $7e83: $00
    nop                                           ; $7e84: $00
    nop                                           ; $7e85: $00
    nop                                           ; $7e86: $00
    nop                                           ; $7e87: $00
    nop                                           ; $7e88: $00
    nop                                           ; $7e89: $00
    nop                                           ; $7e8a: $00
    nop                                           ; $7e8b: $00
    nop                                           ; $7e8c: $00
    nop                                           ; $7e8d: $00
    nop                                           ; $7e8e: $00
    nop                                           ; $7e8f: $00
    nop                                           ; $7e90: $00
    nop                                           ; $7e91: $00
    nop                                           ; $7e92: $00
    nop                                           ; $7e93: $00
    nop                                           ; $7e94: $00
    nop                                           ; $7e95: $00
    nop                                           ; $7e96: $00
    nop                                           ; $7e97: $00
    nop                                           ; $7e98: $00
    nop                                           ; $7e99: $00
    nop                                           ; $7e9a: $00
    nop                                           ; $7e9b: $00
    nop                                           ; $7e9c: $00
    nop                                           ; $7e9d: $00
    nop                                           ; $7e9e: $00
    nop                                           ; $7e9f: $00
    nop                                           ; $7ea0: $00
    nop                                           ; $7ea1: $00
    nop                                           ; $7ea2: $00
    nop                                           ; $7ea3: $00
    nop                                           ; $7ea4: $00
    nop                                           ; $7ea5: $00
    nop                                           ; $7ea6: $00
    nop                                           ; $7ea7: $00
    nop                                           ; $7ea8: $00
    nop                                           ; $7ea9: $00
    nop                                           ; $7eaa: $00
    nop                                           ; $7eab: $00
    nop                                           ; $7eac: $00
    nop                                           ; $7ead: $00
    nop                                           ; $7eae: $00
    nop                                           ; $7eaf: $00
    nop                                           ; $7eb0: $00
    nop                                           ; $7eb1: $00
    nop                                           ; $7eb2: $00
    nop                                           ; $7eb3: $00
    nop                                           ; $7eb4: $00
    nop                                           ; $7eb5: $00
    nop                                           ; $7eb6: $00
    nop                                           ; $7eb7: $00
    nop                                           ; $7eb8: $00
    nop                                           ; $7eb9: $00
    nop                                           ; $7eba: $00
    nop                                           ; $7ebb: $00
    nop                                           ; $7ebc: $00
    nop                                           ; $7ebd: $00
    nop                                           ; $7ebe: $00
    nop                                           ; $7ebf: $00
    nop                                           ; $7ec0: $00
    nop                                           ; $7ec1: $00
    nop                                           ; $7ec2: $00
    nop                                           ; $7ec3: $00
    nop                                           ; $7ec4: $00
    nop                                           ; $7ec5: $00
    nop                                           ; $7ec6: $00
    nop                                           ; $7ec7: $00
    nop                                           ; $7ec8: $00
    nop                                           ; $7ec9: $00
    nop                                           ; $7eca: $00
    nop                                           ; $7ecb: $00
    nop                                           ; $7ecc: $00
    nop                                           ; $7ecd: $00
    nop                                           ; $7ece: $00
    nop                                           ; $7ecf: $00
    nop                                           ; $7ed0: $00
    nop                                           ; $7ed1: $00
    nop                                           ; $7ed2: $00
    nop                                           ; $7ed3: $00
    nop                                           ; $7ed4: $00
    nop                                           ; $7ed5: $00
    nop                                           ; $7ed6: $00
    nop                                           ; $7ed7: $00
    nop                                           ; $7ed8: $00
    nop                                           ; $7ed9: $00
    nop                                           ; $7eda: $00
    nop                                           ; $7edb: $00
    nop                                           ; $7edc: $00
    nop                                           ; $7edd: $00
    nop                                           ; $7ede: $00
    nop                                           ; $7edf: $00
    nop                                           ; $7ee0: $00
    nop                                           ; $7ee1: $00
    nop                                           ; $7ee2: $00
    nop                                           ; $7ee3: $00
    nop                                           ; $7ee4: $00
    nop                                           ; $7ee5: $00
    nop                                           ; $7ee6: $00
    nop                                           ; $7ee7: $00
    nop                                           ; $7ee8: $00
    nop                                           ; $7ee9: $00
    nop                                           ; $7eea: $00
    nop                                           ; $7eeb: $00
    nop                                           ; $7eec: $00
    nop                                           ; $7eed: $00
    nop                                           ; $7eee: $00
    nop                                           ; $7eef: $00
    nop                                           ; $7ef0: $00
    nop                                           ; $7ef1: $00
    nop                                           ; $7ef2: $00
    nop                                           ; $7ef3: $00
    nop                                           ; $7ef4: $00
    nop                                           ; $7ef5: $00
    nop                                           ; $7ef6: $00
    nop                                           ; $7ef7: $00
    nop                                           ; $7ef8: $00
    nop                                           ; $7ef9: $00
    nop                                           ; $7efa: $00
    nop                                           ; $7efb: $00
    nop                                           ; $7efc: $00
    nop                                           ; $7efd: $00
    nop                                           ; $7efe: $00
    nop                                           ; $7eff: $00
    nop                                           ; $7f00: $00
    nop                                           ; $7f01: $00
    nop                                           ; $7f02: $00
    nop                                           ; $7f03: $00
    nop                                           ; $7f04: $00
    nop                                           ; $7f05: $00
    nop                                           ; $7f06: $00
    nop                                           ; $7f07: $00
    nop                                           ; $7f08: $00
    nop                                           ; $7f09: $00
    nop                                           ; $7f0a: $00
    nop                                           ; $7f0b: $00
    nop                                           ; $7f0c: $00
    nop                                           ; $7f0d: $00
    nop                                           ; $7f0e: $00
    nop                                           ; $7f0f: $00
    nop                                           ; $7f10: $00
    nop                                           ; $7f11: $00
    nop                                           ; $7f12: $00
    nop                                           ; $7f13: $00
    nop                                           ; $7f14: $00
    nop                                           ; $7f15: $00
    nop                                           ; $7f16: $00
    nop                                           ; $7f17: $00
    nop                                           ; $7f18: $00
    nop                                           ; $7f19: $00
    nop                                           ; $7f1a: $00
    nop                                           ; $7f1b: $00
    nop                                           ; $7f1c: $00
    nop                                           ; $7f1d: $00
    nop                                           ; $7f1e: $00
    nop                                           ; $7f1f: $00
    nop                                           ; $7f20: $00
    nop                                           ; $7f21: $00
    nop                                           ; $7f22: $00
    nop                                           ; $7f23: $00
    nop                                           ; $7f24: $00
    nop                                           ; $7f25: $00
    nop                                           ; $7f26: $00
    nop                                           ; $7f27: $00
    nop                                           ; $7f28: $00
    nop                                           ; $7f29: $00
    nop                                           ; $7f2a: $00
    nop                                           ; $7f2b: $00
    nop                                           ; $7f2c: $00
    nop                                           ; $7f2d: $00
    nop                                           ; $7f2e: $00
    nop                                           ; $7f2f: $00
    nop                                           ; $7f30: $00
    nop                                           ; $7f31: $00
    nop                                           ; $7f32: $00
    nop                                           ; $7f33: $00
    nop                                           ; $7f34: $00
    nop                                           ; $7f35: $00
    nop                                           ; $7f36: $00
    nop                                           ; $7f37: $00
    nop                                           ; $7f38: $00
    nop                                           ; $7f39: $00
    nop                                           ; $7f3a: $00
    nop                                           ; $7f3b: $00
    nop                                           ; $7f3c: $00
    nop                                           ; $7f3d: $00
    nop                                           ; $7f3e: $00
    nop                                           ; $7f3f: $00
    nop                                           ; $7f40: $00
    nop                                           ; $7f41: $00
    nop                                           ; $7f42: $00
    nop                                           ; $7f43: $00
    nop                                           ; $7f44: $00
    nop                                           ; $7f45: $00
    nop                                           ; $7f46: $00
    nop                                           ; $7f47: $00
    nop                                           ; $7f48: $00
    nop                                           ; $7f49: $00
    nop                                           ; $7f4a: $00
    nop                                           ; $7f4b: $00
    nop                                           ; $7f4c: $00
    nop                                           ; $7f4d: $00
    nop                                           ; $7f4e: $00
    nop                                           ; $7f4f: $00
    nop                                           ; $7f50: $00
    nop                                           ; $7f51: $00
    nop                                           ; $7f52: $00
    nop                                           ; $7f53: $00
    nop                                           ; $7f54: $00
    nop                                           ; $7f55: $00

Jump_00f_7f56:
    nop                                           ; $7f56: $00
    nop                                           ; $7f57: $00
    nop                                           ; $7f58: $00
    nop                                           ; $7f59: $00
    nop                                           ; $7f5a: $00
    nop                                           ; $7f5b: $00
    nop                                           ; $7f5c: $00
    nop                                           ; $7f5d: $00
    nop                                           ; $7f5e: $00
    nop                                           ; $7f5f: $00
    nop                                           ; $7f60: $00
    nop                                           ; $7f61: $00
    nop                                           ; $7f62: $00
    nop                                           ; $7f63: $00
    nop                                           ; $7f64: $00
    nop                                           ; $7f65: $00
    nop                                           ; $7f66: $00
    nop                                           ; $7f67: $00
    nop                                           ; $7f68: $00
    nop                                           ; $7f69: $00
    nop                                           ; $7f6a: $00
    nop                                           ; $7f6b: $00
    nop                                           ; $7f6c: $00
    nop                                           ; $7f6d: $00
    nop                                           ; $7f6e: $00
    nop                                           ; $7f6f: $00
    nop                                           ; $7f70: $00
    nop                                           ; $7f71: $00
    nop                                           ; $7f72: $00
    nop                                           ; $7f73: $00
    nop                                           ; $7f74: $00
    nop                                           ; $7f75: $00
    nop                                           ; $7f76: $00
    nop                                           ; $7f77: $00
    nop                                           ; $7f78: $00
    nop                                           ; $7f79: $00
    nop                                           ; $7f7a: $00
    nop                                           ; $7f7b: $00
    nop                                           ; $7f7c: $00
    nop                                           ; $7f7d: $00
    nop                                           ; $7f7e: $00
    nop                                           ; $7f7f: $00
    nop                                           ; $7f80: $00
    nop                                           ; $7f81: $00
    nop                                           ; $7f82: $00
    nop                                           ; $7f83: $00
    nop                                           ; $7f84: $00
    nop                                           ; $7f85: $00
    nop                                           ; $7f86: $00
    nop                                           ; $7f87: $00
    nop                                           ; $7f88: $00
    nop                                           ; $7f89: $00
    nop                                           ; $7f8a: $00
    nop                                           ; $7f8b: $00
    nop                                           ; $7f8c: $00
    nop                                           ; $7f8d: $00
    nop                                           ; $7f8e: $00
    nop                                           ; $7f8f: $00
    nop                                           ; $7f90: $00
    nop                                           ; $7f91: $00
    nop                                           ; $7f92: $00
    nop                                           ; $7f93: $00
    nop                                           ; $7f94: $00
    nop                                           ; $7f95: $00
    nop                                           ; $7f96: $00
    nop                                           ; $7f97: $00
    nop                                           ; $7f98: $00
    nop                                           ; $7f99: $00
    nop                                           ; $7f9a: $00
    nop                                           ; $7f9b: $00
    nop                                           ; $7f9c: $00
    nop                                           ; $7f9d: $00
    nop                                           ; $7f9e: $00
    nop                                           ; $7f9f: $00
    nop                                           ; $7fa0: $00
    nop                                           ; $7fa1: $00
    nop                                           ; $7fa2: $00
    nop                                           ; $7fa3: $00
    nop                                           ; $7fa4: $00
    nop                                           ; $7fa5: $00
    nop                                           ; $7fa6: $00
    nop                                           ; $7fa7: $00
    nop                                           ; $7fa8: $00
    nop                                           ; $7fa9: $00
    nop                                           ; $7faa: $00
    nop                                           ; $7fab: $00
    nop                                           ; $7fac: $00
    nop                                           ; $7fad: $00
    nop                                           ; $7fae: $00
    nop                                           ; $7faf: $00
    nop                                           ; $7fb0: $00
    nop                                           ; $7fb1: $00
    nop                                           ; $7fb2: $00
    nop                                           ; $7fb3: $00
    nop                                           ; $7fb4: $00
    nop                                           ; $7fb5: $00
    nop                                           ; $7fb6: $00
    nop                                           ; $7fb7: $00
    nop                                           ; $7fb8: $00
    nop                                           ; $7fb9: $00
    nop                                           ; $7fba: $00
    nop                                           ; $7fbb: $00
    nop                                           ; $7fbc: $00
    nop                                           ; $7fbd: $00
    nop                                           ; $7fbe: $00
    nop                                           ; $7fbf: $00
    nop                                           ; $7fc0: $00
    nop                                           ; $7fc1: $00
    nop                                           ; $7fc2: $00
    nop                                           ; $7fc3: $00
    nop                                           ; $7fc4: $00
    nop                                           ; $7fc5: $00
    nop                                           ; $7fc6: $00
    nop                                           ; $7fc7: $00
    nop                                           ; $7fc8: $00
    nop                                           ; $7fc9: $00
    nop                                           ; $7fca: $00
    nop                                           ; $7fcb: $00
    nop                                           ; $7fcc: $00
    nop                                           ; $7fcd: $00
    nop                                           ; $7fce: $00
    nop                                           ; $7fcf: $00
    nop                                           ; $7fd0: $00
    nop                                           ; $7fd1: $00
    nop                                           ; $7fd2: $00
    nop                                           ; $7fd3: $00
    nop                                           ; $7fd4: $00
    nop                                           ; $7fd5: $00
    nop                                           ; $7fd6: $00
    nop                                           ; $7fd7: $00
    nop                                           ; $7fd8: $00
    nop                                           ; $7fd9: $00
    nop                                           ; $7fda: $00
    nop                                           ; $7fdb: $00
    nop                                           ; $7fdc: $00
    nop                                           ; $7fdd: $00
    nop                                           ; $7fde: $00
    nop                                           ; $7fdf: $00
    nop                                           ; $7fe0: $00
    nop                                           ; $7fe1: $00
    nop                                           ; $7fe2: $00
    nop                                           ; $7fe3: $00
    nop                                           ; $7fe4: $00
    nop                                           ; $7fe5: $00
    nop                                           ; $7fe6: $00
    nop                                           ; $7fe7: $00
    nop                                           ; $7fe8: $00
    nop                                           ; $7fe9: $00
    nop                                           ; $7fea: $00
    nop                                           ; $7feb: $00
    nop                                           ; $7fec: $00
    nop                                           ; $7fed: $00
    nop                                           ; $7fee: $00
    nop                                           ; $7fef: $00
    nop                                           ; $7ff0: $00
    nop                                           ; $7ff1: $00
    nop                                           ; $7ff2: $00
    nop                                           ; $7ff3: $00
    nop                                           ; $7ff4: $00
    nop                                           ; $7ff5: $00
    nop                                           ; $7ff6: $00
    nop                                           ; $7ff7: $00
    nop                                           ; $7ff8: $00
    nop                                           ; $7ff9: $00
    nop                                           ; $7ffa: $00
    nop                                           ; $7ffb: $00
    nop                                           ; $7ffc: $00
    nop                                           ; $7ffd: $00
    nop                                           ; $7ffe: $00
    nop                                           ; $7fff: $00
