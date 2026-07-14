; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    ld a, [$d635]                                 ; $4000: $fa $35 $d6
    rst RST_18                                    ; $4003: $df
    inc c                                         ; $4004: $0c
    ld b, b                                       ; $4005: $40
    rst RST_38                                    ; $4006: $ff
    ld b, b                                       ; $4007: $40
    jr nc, jr_002_404b                            ; $4008: $30 $41

    sbc e                                         ; $400a: $9b
    ld b, c                                       ; $400b: $41
    ld a, $43                                     ; $400c: $3e $43
    ld [$c32e], a                                 ; $400e: $ea $2e $c3
    xor a                                         ; $4011: $af
    ld [$c32f], a                                 ; $4012: $ea $2f $c3
    ld [$c330], a                                 ; $4015: $ea $30 $c3
    ld [$c331], a                                 ; $4018: $ea $31 $c3
    ld [$c332], a                                 ; $401b: $ea $32 $c3
    ld [$c333], a                                 ; $401e: $ea $33 $c3
    call Call_000_05a0                            ; $4021: $cd $a0 $05
    call Call_000_05ab                            ; $4024: $cd $ab $05
    ld a, $0b                                     ; $4027: $3e $0b
    ld hl, $5000                                  ; $4029: $21 $00 $50
    ld de, $8000                                  ; $402c: $11 $00 $80
    ld bc, $0300                                  ; $402f: $01 $00 $03
    call Call_000_04e4                            ; $4032: $cd $e4 $04
    ld a, $09                                     ; $4035: $3e $09
    ld hl, $4000                                  ; $4037: $21 $00 $40
    ld de, $8800                                  ; $403a: $11 $00 $88
    ld bc, $1000                                  ; $403d: $01 $00 $10
    call Call_000_04e4                            ; $4040: $cd $e4 $04
    ld a, $0b                                     ; $4043: $3e $0b
    ld hl, $7c00                                  ; $4045: $21 $00 $7c
    ld de, $9800                                  ; $4048: $11 $00 $98

jr_002_404b:
    ld bc, $0400                                  ; $404b: $01 $00 $04
    call Call_000_04e4                            ; $404e: $cd $e4 $04
    ld a, [$a065]                                 ; $4051: $fa $65 $a0
    ld c, a                                       ; $4054: $4f
    ld b, $00                                     ; $4055: $06 $00
    ld hl, $a387                                  ; $4057: $21 $87 $a3
    add hl, bc                                    ; $405a: $09
    ld a, [hl]                                    ; $405b: $7e
    dec a                                         ; $405c: $3d
    ld [$d63b], a                                 ; $405d: $ea $3b $d6
    jr z, jr_002_409f                             ; $4060: $28 $3d

    push af                                       ; $4062: $f5
    ld a, $09                                     ; $4063: $3e $09
    ld hl, $5000                                  ; $4065: $21 $00 $50
    ld de, $9200                                  ; $4068: $11 $00 $92
    ld bc, $00a0                                  ; $406b: $01 $a0 $00
    call Call_000_04e4                            ; $406e: $cd $e4 $04
    ld a, $09                                     ; $4071: $3e $09
    ld hl, $5100                                  ; $4073: $21 $00 $51
    ld de, $9300                                  ; $4076: $11 $00 $93
    ld bc, $00a0                                  ; $4079: $01 $a0 $00
    call Call_000_04e4                            ; $407c: $cd $e4 $04
    pop af                                        ; $407f: $f1
    dec a                                         ; $4080: $3d
    jr z, jr_002_409f                             ; $4081: $28 $1c

    ld a, $09                                     ; $4083: $3e $09
    ld hl, $5200                                  ; $4085: $21 $00 $52
    ld de, $9400                                  ; $4088: $11 $00 $94
    ld bc, $00a0                                  ; $408b: $01 $a0 $00
    call Call_000_04e4                            ; $408e: $cd $e4 $04
    ld a, $09                                     ; $4091: $3e $09
    ld hl, $5300                                  ; $4093: $21 $00 $53
    ld de, $9500                                  ; $4096: $11 $00 $95
    ld bc, $00a0                                  ; $4099: $01 $a0 $00
    call Call_000_04e4                            ; $409c: $cd $e4 $04

jr_002_409f:
    ld a, [$a065]                                 ; $409f: $fa $65 $a0
    ld c, a                                       ; $40a2: $4f
    ld b, $00                                     ; $40a3: $06 $00
    ld hl, $a38d                                  ; $40a5: $21 $8d $a3
    add hl, bc                                    ; $40a8: $09
    ld a, [hl]                                    ; $40a9: $7e
    ld [$d637], a                                 ; $40aa: $ea $37 $d6
    call Call_002_41f6                            ; $40ad: $cd $f6 $41
    call Call_000_05b6                            ; $40b0: $cd $b6 $05
    ld b, $03                                     ; $40b3: $06 $03
    ld hl, $4e80                                  ; $40b5: $21 $80 $4e
    call Call_000_05de                            ; $40b8: $cd $de $05
    ld b, $03                                     ; $40bb: $06 $03
    ld hl, $4ec2                                  ; $40bd: $21 $c2 $4e
    call Call_000_05de                            ; $40c0: $cd $de $05
    ld c, $00                                     ; $40c3: $0e $00
    ld a, $01                                     ; $40c5: $3e $01
    call Call_000_03b6                            ; $40c7: $cd $b6 $03

Jump_002_40ca:
    call Call_000_0399                            ; $40ca: $cd $99 $03
    ld c, $0e                                     ; $40cd: $0e $0e
    ld a, $01                                     ; $40cf: $3e $01
    call Call_000_03b6                            ; $40d1: $cd $b6 $03
    call Call_000_04a2                            ; $40d4: $cd $a2 $04
    ld a, [$d63b]                                 ; $40d7: $fa $3b $d6
    cp $02                                        ; $40da: $fe $02
    jr z, jr_002_40ed                             ; $40dc: $28 $0f

    ld b, $03                                     ; $40de: $06 $03
    ld hl, $46b8                                  ; $40e0: $21 $b8 $46
    ld c, $03                                     ; $40e3: $0e $03
    ld de, $0034                                  ; $40e5: $11 $34 $00
    call Call_000_040d                            ; $40e8: $cd $0d $04
    jr jr_002_40fa                                ; $40eb: $18 $0d

jr_002_40ed:
    ld b, $03                                     ; $40ed: $06 $03
    ld hl, $46b8                                  ; $40ef: $21 $b8 $46
    ld c, $04                                     ; $40f2: $0e $04
    ld de, $0034                                  ; $40f4: $11 $34 $00
    call Call_000_040d                            ; $40f7: $cd $0d $04

jr_002_40fa:
    ld hl, $d635                                  ; $40fa: $21 $35 $d6
    inc [hl]                                      ; $40fd: $34
    ret                                           ; $40fe: $c9


    ld b, $03                                     ; $40ff: $06 $03
    ld hl, $4ec2                                  ; $4101: $21 $c2 $4e
    call Call_000_05de                            ; $4104: $cd $de $05
    call Call_002_42be                            ; $4107: $cd $be $42
    ld a, [$c31e]                                 ; $410a: $fa $1e $c3
    and $09                                       ; $410d: $e6 $09
    jr z, jr_002_411d                             ; $410f: $28 $0c

    ld c, $03                                     ; $4111: $0e $03
    ld a, $02                                     ; $4113: $3e $02
    call Call_000_03b6                            ; $4115: $cd $b6 $03
    ld hl, $d635                                  ; $4118: $21 $35 $d6
    inc [hl]                                      ; $411b: $34
    ret                                           ; $411c: $c9


jr_002_411d:
    ld a, [$c31e]                                 ; $411d: $fa $1e $c3
    and $02                                       ; $4120: $e6 $02
    ret z                                         ; $4122: $c8

    ld c, $04                                     ; $4123: $0e $04
    ld a, $02                                     ; $4125: $3e $02
    call Call_000_03b6                            ; $4127: $cd $b6 $03
    ld a, $03                                     ; $412a: $3e $03
    ld [$d635], a                                 ; $412c: $ea $35 $d6
    ret                                           ; $412f: $c9


    ld bc, $003c                                  ; $4130: $01 $3c $00
    call Call_000_05fa                            ; $4133: $cd $fa $05
    ld a, $05                                     ; $4136: $3e $05
    call Call_000_03b6                            ; $4138: $cd $b6 $03
    ld c, $00                                     ; $413b: $0e $00
    ld a, $01                                     ; $413d: $3e $01
    call Call_000_03b6                            ; $413f: $cd $b6 $03
    call Call_000_0399                            ; $4142: $cd $99 $03
    ld c, $00                                     ; $4145: $0e $00
    ld a, $01                                     ; $4147: $3e $01
    call Call_000_03b6                            ; $4149: $cd $b6 $03
    ld a, [$d63b]                                 ; $414c: $fa $3b $d6
    cp $02                                        ; $414f: $fe $02
    jr z, jr_002_4162                             ; $4151: $28 $0f

    ld b, $03                                     ; $4153: $06 $03
    ld hl, $46c3                                  ; $4155: $21 $c3 $46
    ld c, $03                                     ; $4158: $0e $03
    ld de, $0043                                  ; $415a: $11 $43 $00
    call Call_000_044e                            ; $415d: $cd $4e $04
    jr jr_002_416f                                ; $4160: $18 $0d

jr_002_4162:
    ld b, $03                                     ; $4162: $06 $03
    ld hl, $46c3                                  ; $4164: $21 $c3 $46
    ld c, $04                                     ; $4167: $0e $04
    ld de, $0043                                  ; $4169: $11 $43 $00
    call Call_000_044e                            ; $416c: $cd $4e $04

jr_002_416f:
    call Call_000_0483                            ; $416f: $cd $83 $04
    ld a, [$a065]                                 ; $4172: $fa $65 $a0
    ld c, a                                       ; $4175: $4f
    ld b, $00                                     ; $4176: $06 $00
    ld hl, $a38d                                  ; $4178: $21 $8d $a3
    add hl, bc                                    ; $417b: $09
    ld a, [$d637]                                 ; $417c: $fa $37 $d6
    ld [hl], a                                    ; $417f: $77
    cp $02                                        ; $4180: $fe $02
    jr z, jr_002_418f                             ; $4182: $28 $0b

    xor a                                         ; $4184: $af
    ld [$d635], a                                 ; $4185: $ea $35 $d6
    ld hl, $d634                                  ; $4188: $21 $34 $d6
    inc [hl]                                      ; $418b: $34
    jp Jump_000_1b1f                              ; $418c: $c3 $1f $1b


jr_002_418f:
    xor a                                         ; $418f: $af
    ld [$d635], a                                 ; $4190: $ea $35 $d6
    ld a, $07                                     ; $4193: $3e $07
    ld [$d634], a                                 ; $4195: $ea $34 $d6
    jp Jump_000_1b1f                              ; $4198: $c3 $1f $1b


    ld bc, $003c                                  ; $419b: $01 $3c $00
    call Call_000_05fa                            ; $419e: $cd $fa $05
    ld a, $05                                     ; $41a1: $3e $05
    call Call_000_03b6                            ; $41a3: $cd $b6 $03
    ld c, $00                                     ; $41a6: $0e $00
    ld a, $01                                     ; $41a8: $3e $01
    call Call_000_03b6                            ; $41aa: $cd $b6 $03
    call Call_000_0399                            ; $41ad: $cd $99 $03
    ld c, $00                                     ; $41b0: $0e $00
    ld a, $01                                     ; $41b2: $3e $01
    call Call_000_03b6                            ; $41b4: $cd $b6 $03
    ld a, [$d63b]                                 ; $41b7: $fa $3b $d6
    cp $02                                        ; $41ba: $fe $02
    jr z, jr_002_41cd                             ; $41bc: $28 $0f

    ld b, $03                                     ; $41be: $06 $03
    ld hl, $46c3                                  ; $41c0: $21 $c3 $46
    ld c, $03                                     ; $41c3: $0e $03
    ld de, $0043                                  ; $41c5: $11 $43 $00
    call Call_000_044e                            ; $41c8: $cd $4e $04
    jr jr_002_41da                                ; $41cb: $18 $0d

jr_002_41cd:
    ld b, $03                                     ; $41cd: $06 $03
    ld hl, $46c3                                  ; $41cf: $21 $c3 $46
    ld c, $04                                     ; $41d2: $0e $04
    ld de, $0043                                  ; $41d4: $11 $43 $00
    call Call_000_044e                            ; $41d7: $cd $4e $04

jr_002_41da:
    call Call_000_0483                            ; $41da: $cd $83 $04
    ld a, [$a065]                                 ; $41dd: $fa $65 $a0
    ld c, a                                       ; $41e0: $4f
    ld b, $00                                     ; $41e1: $06 $00
    ld hl, $a38d                                  ; $41e3: $21 $8d $a3
    add hl, bc                                    ; $41e6: $09
    ld a, [$d637]                                 ; $41e7: $fa $37 $d6
    ld [hl], a                                    ; $41ea: $77
    xor a                                         ; $41eb: $af
    ld [$d635], a                                 ; $41ec: $ea $35 $d6
    ld hl, $d634                                  ; $41ef: $21 $34 $d6
    dec [hl]                                      ; $41f2: $35
    jp Jump_000_1b1f                              ; $41f3: $c3 $1f $1b


Call_002_41f6:
Jump_002_41f6:
    ld c, a                                       ; $41f6: $4f
    ld b, $00                                     ; $41f7: $06 $00
    ld hl, $4206                                  ; $41f9: $21 $06 $42
    add hl, bc                                    ; $41fc: $09
    ld c, [hl]                                    ; $41fd: $4e
    add hl, bc                                    ; $41fe: $09
    ld a, $02                                     ; $41ff: $3e $02
    ld c, l                                       ; $4201: $4d
    ld b, h                                       ; $4202: $44
    jp Jump_000_0738                              ; $4203: $c3 $38 $07


    inc bc                                        ; $4206: $03
    dec e                                         ; $4207: $1d
    scf                                           ; $4208: $37
    sbc b                                         ; $4209: $98
    and l                                         ; $420a: $a5
    ld a, [bc]                                    ; $420b: $0a
    ld h, b                                       ; $420c: $60
    ld h, c                                       ; $420d: $61
    ld h, d                                       ; $420e: $62
    ld h, e                                       ; $420f: $63
    ld h, h                                       ; $4210: $64
    ld h, l                                       ; $4211: $65
    ld h, [hl]                                    ; $4212: $66
    ld h, a                                       ; $4213: $67
    ld l, b                                       ; $4214: $68
    ld l, c                                       ; $4215: $69
    sbc b                                         ; $4216: $98
    push bc                                       ; $4217: $c5
    ld a, [bc]                                    ; $4218: $0a
    ld [hl], b                                    ; $4219: $70
    ld [hl], c                                    ; $421a: $71
    ld [hl], d                                    ; $421b: $72
    ld [hl], e                                    ; $421c: $73
    ld [hl], h                                    ; $421d: $74
    ld [hl], l                                    ; $421e: $75
    halt                                          ; $421f: $76
    ld [hl], a                                    ; $4220: $77
    ld a, b                                       ; $4221: $78
    ld a, c                                       ; $4222: $79
    nop                                           ; $4223: $00
    sbc c                                         ; $4224: $99
    dec h                                         ; $4225: $25
    ld a, [bc]                                    ; $4226: $0a
    add b                                         ; $4227: $80
    add c                                         ; $4228: $81
    add d                                         ; $4229: $82
    add e                                         ; $422a: $83
    add h                                         ; $422b: $84
    add l                                         ; $422c: $85
    add [hl]                                      ; $422d: $86
    add a                                         ; $422e: $87
    adc b                                         ; $422f: $88
    adc c                                         ; $4230: $89
    sbc c                                         ; $4231: $99
    ld b, l                                       ; $4232: $45
    ld a, [bc]                                    ; $4233: $0a
    sub b                                         ; $4234: $90
    sub c                                         ; $4235: $91
    sub d                                         ; $4236: $92
    sub e                                         ; $4237: $93
    sub h                                         ; $4238: $94
    sub l                                         ; $4239: $95
    sub [hl]                                      ; $423a: $96
    sub a                                         ; $423b: $97
    sbc b                                         ; $423c: $98
    sbc c                                         ; $423d: $99
    nop                                           ; $423e: $00
    sbc c                                         ; $423f: $99
    and l                                         ; $4240: $a5
    ld a, [bc]                                    ; $4241: $0a
    and b                                         ; $4242: $a0
    and c                                         ; $4243: $a1
    and d                                         ; $4244: $a2
    and e                                         ; $4245: $a3
    and h                                         ; $4246: $a4
    and l                                         ; $4247: $a5
    and [hl]                                      ; $4248: $a6
    and a                                         ; $4249: $a7
    xor b                                         ; $424a: $a8
    xor c                                         ; $424b: $a9
    sbc c                                         ; $424c: $99
    push bc                                       ; $424d: $c5
    ld a, [bc]                                    ; $424e: $0a
    or b                                          ; $424f: $b0
    or c                                          ; $4250: $b1
    or d                                          ; $4251: $b2
    or e                                          ; $4252: $b3
    or h                                          ; $4253: $b4
    or l                                          ; $4254: $b5
    or [hl]                                       ; $4255: $b6
    or a                                          ; $4256: $b7
    cp b                                          ; $4257: $b8
    cp c                                          ; $4258: $b9
    nop                                           ; $4259: $00

Call_002_425a:
    ld c, a                                       ; $425a: $4f
    ld b, $00                                     ; $425b: $06 $00
    ld hl, $426a                                  ; $425d: $21 $6a $42
    add hl, bc                                    ; $4260: $09
    ld c, [hl]                                    ; $4261: $4e
    add hl, bc                                    ; $4262: $09
    ld a, $02                                     ; $4263: $3e $02
    ld c, l                                       ; $4265: $4d
    ld b, h                                       ; $4266: $44
    jp Jump_000_0738                              ; $4267: $c3 $38 $07


    inc bc                                        ; $426a: $03
    dec e                                         ; $426b: $1d
    scf                                           ; $426c: $37
    sbc b                                         ; $426d: $98
    and l                                         ; $426e: $a5
    ld a, [bc]                                    ; $426f: $0a
    nop                                           ; $4270: $00
    ld bc, $0302                                  ; $4271: $01 $02 $03
    inc b                                         ; $4274: $04
    dec b                                         ; $4275: $05
    ld b, $07                                     ; $4276: $06 $07
    ld [$9809], sp                                ; $4278: $08 $09 $98
    push bc                                       ; $427b: $c5
    ld a, [bc]                                    ; $427c: $0a
    db $10                                        ; $427d: $10
    ld de, $1312                                  ; $427e: $11 $12 $13
    inc d                                         ; $4281: $14
    dec d                                         ; $4282: $15
    ld d, $17                                     ; $4283: $16 $17
    jr jr_002_42a0                                ; $4285: $18 $19

    nop                                           ; $4287: $00
    sbc c                                         ; $4288: $99
    dec h                                         ; $4289: $25
    ld a, [bc]                                    ; $428a: $0a
    jr nz, jr_002_42ae                            ; $428b: $20 $21

    ld [hl+], a                                   ; $428d: $22
    inc hl                                        ; $428e: $23
    inc h                                         ; $428f: $24
    dec h                                         ; $4290: $25
    ld h, $27                                     ; $4291: $26 $27
    jr z, jr_002_42be                             ; $4293: $28 $29

    sbc c                                         ; $4295: $99
    ld b, l                                       ; $4296: $45
    ld a, [bc]                                    ; $4297: $0a
    jr nc, @+$33                                  ; $4298: $30 $31

    ld [hl-], a                                   ; $429a: $32
    inc sp                                        ; $429b: $33
    inc [hl]                                      ; $429c: $34
    dec [hl]                                      ; $429d: $35
    ld [hl], $37                                  ; $429e: $36 $37

jr_002_42a0:
    jr c, jr_002_42db                             ; $42a0: $38 $39

    nop                                           ; $42a2: $00
    sbc c                                         ; $42a3: $99
    and l                                         ; $42a4: $a5
    ld a, [bc]                                    ; $42a5: $0a
    ld b, b                                       ; $42a6: $40
    ld b, c                                       ; $42a7: $41
    ld b, d                                       ; $42a8: $42
    ld b, e                                       ; $42a9: $43
    ld b, h                                       ; $42aa: $44
    ld b, l                                       ; $42ab: $45
    ld b, [hl]                                    ; $42ac: $46
    ld b, a                                       ; $42ad: $47

jr_002_42ae:
    ld c, b                                       ; $42ae: $48
    ld c, c                                       ; $42af: $49
    sbc c                                         ; $42b0: $99
    push bc                                       ; $42b1: $c5
    ld a, [bc]                                    ; $42b2: $0a
    ld d, b                                       ; $42b3: $50
    ld d, c                                       ; $42b4: $51
    ld d, d                                       ; $42b5: $52
    ld d, e                                       ; $42b6: $53
    ld d, h                                       ; $42b7: $54
    ld d, l                                       ; $42b8: $55
    ld d, [hl]                                    ; $42b9: $56
    ld d, a                                       ; $42ba: $57
    ld e, b                                       ; $42bb: $58
    ld e, c                                       ; $42bc: $59
    nop                                           ; $42bd: $00

Call_002_42be:
jr_002_42be:
    ld a, [$d63b]                                 ; $42be: $fa $3b $d6
    and a                                         ; $42c1: $a7
    ret z                                         ; $42c2: $c8

    ld a, [$c322]                                 ; $42c3: $fa $22 $c3
    and $c0                                       ; $42c6: $e6 $c0
    ret z                                         ; $42c8: $c8

    push af                                       ; $42c9: $f5
    ld a, [$d637]                                 ; $42ca: $fa $37 $d6
    call Call_002_425a                            ; $42cd: $cd $5a $42
    rst RST_08                                    ; $42d0: $cf
    ld c, $0a                                     ; $42d1: $0e $0a
    ld a, $02                                     ; $42d3: $3e $02
    call Call_000_03b6                            ; $42d5: $cd $b6 $03
    pop af                                        ; $42d8: $f1
    and $40                                       ; $42d9: $e6 $40

jr_002_42db:
    jr z, jr_002_42ee                             ; $42db: $28 $11

    ld a, [$d637]                                 ; $42dd: $fa $37 $d6
    dec a                                         ; $42e0: $3d
    cp $ff                                        ; $42e1: $fe $ff
    jr nz, jr_002_42e8                            ; $42e3: $20 $03

    ld a, [$d63b]                                 ; $42e5: $fa $3b $d6

jr_002_42e8:
    ld [$d637], a                                 ; $42e8: $ea $37 $d6
    jp Jump_002_41f6                              ; $42eb: $c3 $f6 $41


jr_002_42ee:
    ld a, [$d637]                                 ; $42ee: $fa $37 $d6
    ld hl, $d63b                                  ; $42f1: $21 $3b $d6
    cp [hl]                                       ; $42f4: $be
    jr nz, jr_002_42f9                            ; $42f5: $20 $02

    ld a, $ff                                     ; $42f7: $3e $ff

jr_002_42f9:
    inc a                                         ; $42f9: $3c
    ld [$d637], a                                 ; $42fa: $ea $37 $d6
    jp Jump_002_41f6                              ; $42fd: $c3 $f6 $41


    ld a, [$d635]                                 ; $4300: $fa $35 $d6
    rst RST_18                                    ; $4303: $df
    inc c                                         ; $4304: $0c
    ld b, e                                       ; $4305: $43
    cp l                                          ; $4306: $bd
    ld b, e                                       ; $4307: $43
    xor $43                                       ; $4308: $ee $43
    ld e, b                                       ; $430a: $58
    ld b, h                                       ; $430b: $44
    ld a, $43                                     ; $430c: $3e $43
    ld [$c32e], a                                 ; $430e: $ea $2e $c3
    xor a                                         ; $4311: $af
    ld [$c32f], a                                 ; $4312: $ea $2f $c3
    ld [$c330], a                                 ; $4315: $ea $30 $c3
    ld [$c331], a                                 ; $4318: $ea $31 $c3
    ld [$c332], a                                 ; $431b: $ea $32 $c3
    ld [$c333], a                                 ; $431e: $ea $33 $c3
    call Call_000_05a0                            ; $4321: $cd $a0 $05
    call Call_000_05ab                            ; $4324: $cd $ab $05
    ld a, $0b                                     ; $4327: $3e $0b
    ld hl, $5000                                  ; $4329: $21 $00 $50
    ld de, $8000                                  ; $432c: $11 $00 $80
    ld bc, $0300                                  ; $432f: $01 $00 $03
    call Call_000_04e4                            ; $4332: $cd $e4 $04
    ld a, $0a                                     ; $4335: $3e $0a
    ld hl, $4300                                  ; $4337: $21 $00 $43
    ld de, $8300                                  ; $433a: $11 $00 $83
    ld bc, $1500                                  ; $433d: $01 $00 $15
    call Call_000_04e4                            ; $4340: $cd $e4 $04
    ld a, $0b                                     ; $4343: $3e $0b
    ld hl, $7400                                  ; $4345: $21 $00 $74
    ld de, $9800                                  ; $4348: $11 $00 $98
    ld bc, $0400                                  ; $434b: $01 $00 $04
    call Call_000_04e4                            ; $434e: $cd $e4 $04
    ld a, $2f                                     ; $4351: $3e $2f
    ld [$c336], a                                 ; $4353: $ea $36 $c3
    ld hl, $c337                                  ; $4356: $21 $37 $c3
    set 6, [hl]                                   ; $4359: $cb $f6
    ld hl, rIE                                    ; $435b: $21 $ff $ff
    set 1, [hl]                                   ; $435e: $cb $ce
    ld a, $01                                     ; $4360: $3e $01
    ld [$c338], a                                 ; $4362: $ea $38 $c3
    ld [$c33c], a                                 ; $4365: $ea $3c $c3
    ld [$c350], a                                 ; $4368: $ea $50 $c3
    ld a, $02                                     ; $436b: $3e $02
    ld [$d63b], a                                 ; $436d: $ea $3b $d6
    ld a, [$a065]                                 ; $4370: $fa $65 $a0
    ld c, a                                       ; $4373: $4f
    ld b, $00                                     ; $4374: $06 $00
    ld hl, $a078                                  ; $4376: $21 $78 $a0
    add hl, bc                                    ; $4379: $09
    ld a, [hl]                                    ; $437a: $7e
    ld [$d637], a                                 ; $437b: $ea $37 $d6
    call Call_002_44b1                            ; $437e: $cd $b1 $44
    call Call_000_05b6                            ; $4381: $cd $b6 $05
    ld b, $03                                     ; $4384: $06 $03
    ld hl, $4e80                                  ; $4386: $21 $80 $4e
    call Call_000_05de                            ; $4389: $cd $de $05
    ld b, $03                                     ; $438c: $06 $03
    ld hl, $4ec2                                  ; $438e: $21 $c2 $4e
    call Call_000_05de                            ; $4391: $cd $de $05
    ld c, $00                                     ; $4394: $0e $00
    ld a, $01                                     ; $4396: $3e $01
    call Call_000_03b6                            ; $4398: $cd $b6 $03
    call Call_000_0399                            ; $439b: $cd $99 $03
    ld c, $0d                                     ; $439e: $0e $0d
    ld a, $01                                     ; $43a0: $3e $01
    call Call_000_03b6                            ; $43a2: $cd $b6 $03
    call Call_000_04a2                            ; $43a5: $cd $a2 $04
    call Call_000_1fa5                            ; $43a8: $cd $a5 $1f
    ld b, $03                                     ; $43ab: $06 $03
    ld hl, $46d0                                  ; $43ad: $21 $d0 $46
    ld c, $06                                     ; $43b0: $0e $06
    ld de, $0054                                  ; $43b2: $11 $54 $00
    call Call_000_040d                            ; $43b5: $cd $0d $04
    ld hl, $d635                                  ; $43b8: $21 $35 $d6
    inc [hl]                                      ; $43bb: $34
    ret                                           ; $43bc: $c9


    ld b, $03                                     ; $43bd: $06 $03
    ld hl, $4ec2                                  ; $43bf: $21 $c2 $4e
    call Call_000_05de                            ; $43c2: $cd $de $05
    call Call_002_45b1                            ; $43c5: $cd $b1 $45
    ld a, [$c31e]                                 ; $43c8: $fa $1e $c3
    and $09                                       ; $43cb: $e6 $09
    jr z, jr_002_43db                             ; $43cd: $28 $0c

    ld c, $03                                     ; $43cf: $0e $03
    ld a, $02                                     ; $43d1: $3e $02
    call Call_000_03b6                            ; $43d3: $cd $b6 $03
    ld hl, $d635                                  ; $43d6: $21 $35 $d6
    inc [hl]                                      ; $43d9: $34
    ret                                           ; $43da: $c9


jr_002_43db:
    ld a, [$c31e]                                 ; $43db: $fa $1e $c3
    cp $02                                        ; $43de: $fe $02
    ret nz                                        ; $43e0: $c0

    ld c, $04                                     ; $43e1: $0e $04
    ld a, $02                                     ; $43e3: $3e $02
    call Call_000_03b6                            ; $43e5: $cd $b6 $03
    ld a, $03                                     ; $43e8: $3e $03
    ld [$d635], a                                 ; $43ea: $ea $35 $d6
    ret                                           ; $43ed: $c9


    ld bc, $003c                                  ; $43ee: $01 $3c $00
    call Call_000_05fa                            ; $43f1: $cd $fa $05
    ld a, $05                                     ; $43f4: $3e $05
    call Call_000_03b6                            ; $43f6: $cd $b6 $03
    ld c, $00                                     ; $43f9: $0e $00
    ld a, $01                                     ; $43fb: $3e $01
    call Call_000_03b6                            ; $43fd: $cd $b6 $03
    call Call_000_0399                            ; $4400: $cd $99 $03
    ld c, $00                                     ; $4403: $0e $00
    ld a, $01                                     ; $4405: $3e $01
    call Call_000_03b6                            ; $4407: $cd $b6 $03
    ld b, $03                                     ; $440a: $06 $03
    ld hl, $46db                                  ; $440c: $21 $db $46
    ld c, $06                                     ; $440f: $0e $06
    ld de, $0063                                  ; $4411: $11 $63 $00
    call Call_000_044e                            ; $4414: $cd $4e $04
    call Call_000_0483                            ; $4417: $cd $83 $04
    ld hl, $c337                                  ; $441a: $21 $37 $c3
    res 6, [hl]                                   ; $441d: $cb $b6
    ld hl, rIE                                    ; $441f: $21 $ff $ff
    res 1, [hl]                                   ; $4422: $cb $8e
    xor a                                         ; $4424: $af
    ld [$c338], a                                 ; $4425: $ea $38 $c3
    ld [$c33c], a                                 ; $4428: $ea $3c $c3
    ld [$c350], a                                 ; $442b: $ea $50 $c3
    ld a, [$a065]                                 ; $442e: $fa $65 $a0
    ld c, a                                       ; $4431: $4f
    ld b, $00                                     ; $4432: $06 $00
    ld hl, $a078                                  ; $4434: $21 $78 $a0
    add hl, bc                                    ; $4437: $09
    ld a, [$d637]                                 ; $4438: $fa $37 $d6
    ld [hl], a                                    ; $443b: $77
    ld c, a                                       ; $443c: $4f
    ld b, $00                                     ; $443d: $06 $00
    ld hl, $4455                                  ; $443f: $21 $55 $44
    add hl, bc                                    ; $4442: $09
    xor a                                         ; $4443: $af
    ld [$d835], a                                 ; $4444: $ea $35 $d8
    ld [$d837], a                                 ; $4447: $ea $37 $d8
    xor a                                         ; $444a: $af
    ld [$d635], a                                 ; $444b: $ea $35 $d6
    ld a, [hl]                                    ; $444e: $7e
    ld [$d634], a                                 ; $444f: $ea $34 $d6
    jp Jump_000_1b1f                              ; $4452: $c3 $1f $1b


    ld b, $05                                     ; $4455: $06 $05
    inc bc                                        ; $4457: $03
    ld bc, $003c                                  ; $4458: $01 $3c $00
    call Call_000_05fa                            ; $445b: $cd $fa $05
    ld a, $05                                     ; $445e: $3e $05
    call Call_000_03b6                            ; $4460: $cd $b6 $03
    ld c, $00                                     ; $4463: $0e $00
    ld a, $01                                     ; $4465: $3e $01
    call Call_000_03b6                            ; $4467: $cd $b6 $03
    call Call_000_0399                            ; $446a: $cd $99 $03
    ld c, $00                                     ; $446d: $0e $00
    ld a, $01                                     ; $446f: $3e $01
    call Call_000_03b6                            ; $4471: $cd $b6 $03
    ld b, $03                                     ; $4474: $06 $03
    ld hl, $46db                                  ; $4476: $21 $db $46
    ld c, $06                                     ; $4479: $0e $06
    ld de, $0063                                  ; $447b: $11 $63 $00
    call Call_000_044e                            ; $447e: $cd $4e $04
    call Call_000_0483                            ; $4481: $cd $83 $04
    ld hl, $c337                                  ; $4484: $21 $37 $c3
    res 6, [hl]                                   ; $4487: $cb $b6
    ld hl, rIE                                    ; $4489: $21 $ff $ff
    res 1, [hl]                                   ; $448c: $cb $8e
    xor a                                         ; $448e: $af
    ld [$c338], a                                 ; $448f: $ea $38 $c3
    ld [$c33c], a                                 ; $4492: $ea $3c $c3
    ld [$c350], a                                 ; $4495: $ea $50 $c3
    ld a, [$a065]                                 ; $4498: $fa $65 $a0
    ld c, a                                       ; $449b: $4f
    ld b, $00                                     ; $449c: $06 $00
    ld hl, $a078                                  ; $449e: $21 $78 $a0
    add hl, bc                                    ; $44a1: $09
    ld a, [$d637]                                 ; $44a2: $fa $37 $d6
    ld [hl], a                                    ; $44a5: $77
    xor a                                         ; $44a6: $af
    ld [$d635], a                                 ; $44a7: $ea $35 $d6
    ld hl, $d634                                  ; $44aa: $21 $34 $d6
    dec [hl]                                      ; $44ad: $35
    jp Jump_000_1b1f                              ; $44ae: $c3 $1f $1b


Call_002_44b1:
Jump_002_44b1:
    ld c, a                                       ; $44b1: $4f
    ld b, $00                                     ; $44b2: $06 $00
    ld hl, $44c1                                  ; $44b4: $21 $c1 $44
    add hl, bc                                    ; $44b7: $09
    ld c, [hl]                                    ; $44b8: $4e
    add hl, bc                                    ; $44b9: $09
    ld a, $02                                     ; $44ba: $3e $02
    ld c, l                                       ; $44bc: $4d
    ld b, h                                       ; $44bd: $44
    jp Jump_000_0738                              ; $44be: $c3 $38 $07


    inc b                                         ; $44c1: $04
    ld e, $38                                     ; $44c2: $1e $38
    ld d, d                                       ; $44c4: $52
    sbc b                                         ; $44c5: $98
    add l                                         ; $44c6: $85
    ld a, [bc]                                    ; $44c7: $0a
    or c                                          ; $44c8: $b1
    or d                                          ; $44c9: $b2
    or e                                          ; $44ca: $b3
    or h                                          ; $44cb: $b4
    or l                                          ; $44cc: $b5
    or [hl]                                       ; $44cd: $b6
    or a                                          ; $44ce: $b7
    cp b                                          ; $44cf: $b8
    cp c                                          ; $44d0: $b9
    cp d                                          ; $44d1: $ba
    sbc b                                         ; $44d2: $98
    and l                                         ; $44d3: $a5
    ld a, [bc]                                    ; $44d4: $0a
    cp e                                          ; $44d5: $bb
    cp h                                          ; $44d6: $bc
    cp l                                          ; $44d7: $bd
    cp [hl]                                       ; $44d8: $be
    cp a                                          ; $44d9: $bf
    ret nz                                        ; $44da: $c0

    pop bc                                        ; $44db: $c1
    jp nz, $c4c3                                  ; $44dc: $c2 $c3 $c4

    nop                                           ; $44df: $00
    sbc c                                         ; $44e0: $99
    dec b                                         ; $44e1: $05
    ld a, [bc]                                    ; $44e2: $0a
    push bc                                       ; $44e3: $c5
    add $c7                                       ; $44e4: $c6 $c7
    ret z                                         ; $44e6: $c8

    ret                                           ; $44e7: $c9


    jp z, $cccb                                   ; $44e8: $ca $cb $cc

    call $99ce                                    ; $44eb: $cd $ce $99
    dec h                                         ; $44ee: $25
    ld a, [bc]                                    ; $44ef: $0a
    rst RST_08                                    ; $44f0: $cf
    ret nc                                        ; $44f1: $d0

    pop de                                        ; $44f2: $d1
    jp nc, $d4d3                                  ; $44f3: $d2 $d3 $d4

    push de                                       ; $44f6: $d5
    sub $d7                                       ; $44f7: $d6 $d7
    ret c                                         ; $44f9: $d8

    nop                                           ; $44fa: $00
    sbc c                                         ; $44fb: $99
    add l                                         ; $44fc: $85
    ld a, [bc]                                    ; $44fd: $0a
    cp $d9                                        ; $44fe: $fe $d9
    jp c, $dcdb                                   ; $4500: $da $db $dc

    db $dd                                        ; $4503: $dd
    sbc $df                                       ; $4504: $de $df
    ldh [rIE], a                                  ; $4506: $e0 $ff
    sbc c                                         ; $4508: $99
    and l                                         ; $4509: $a5
    ld a, [bc]                                    ; $450a: $0a
    ld c, $e1                                     ; $450b: $0e $e1
    ldh [c], a                                    ; $450d: $e2
    db $e3                                        ; $450e: $e3
    db $e4                                        ; $450f: $e4
    push hl                                       ; $4510: $e5
    and $e7                                       ; $4511: $e6 $e7
    add sp, $0f                                   ; $4513: $e8 $0f
    nop                                           ; $4515: $00
    sbc c                                         ; $4516: $99
    and l                                         ; $4517: $a5
    ld a, [bc]                                    ; $4518: $0a
    db $fd                                        ; $4519: $fd
    cp $ff                                        ; $451a: $fe $ff
    nop                                           ; $451c: $00
    ld bc, $0302                                  ; $451d: $01 $02 $03
    inc b                                         ; $4520: $04
    dec b                                         ; $4521: $05
    ld b, $99                                     ; $4522: $06 $99
    push bc                                       ; $4524: $c5
    ld a, [bc]                                    ; $4525: $0a
    rlca                                          ; $4526: $07
    ld [$0a09], sp                                ; $4527: $08 $09 $0a
    dec bc                                        ; $452a: $0b
    inc c                                         ; $452b: $0c
    dec c                                         ; $452c: $0d
    ld c, $0f                                     ; $452d: $0e $0f
    stop                                          ; $452f: $10 $00

Call_002_4531:
    ld c, a                                       ; $4531: $4f
    ld b, $00                                     ; $4532: $06 $00
    ld hl, $4541                                  ; $4534: $21 $41 $45
    add hl, bc                                    ; $4537: $09
    ld c, [hl]                                    ; $4538: $4e
    add hl, bc                                    ; $4539: $09
    ld a, $02                                     ; $453a: $3e $02
    ld c, l                                       ; $453c: $4d
    ld b, h                                       ; $453d: $44
    jp Jump_000_0738                              ; $453e: $c3 $38 $07


    inc b                                         ; $4541: $04
    ld e, $38                                     ; $4542: $1e $38
    ld d, d                                       ; $4544: $52
    sbc b                                         ; $4545: $98
    add l                                         ; $4546: $85
    ld a, [bc]                                    ; $4547: $0a
    sub a                                         ; $4548: $97
    ld [hl], e                                    ; $4549: $73
    ld [hl], h                                    ; $454a: $74
    ld [hl], l                                    ; $454b: $75
    halt                                          ; $454c: $76
    ld [hl], a                                    ; $454d: $77
    ld a, b                                       ; $454e: $78
    ld a, c                                       ; $454f: $79
    ld a, d                                       ; $4550: $7a
    and b                                         ; $4551: $a0
    sbc b                                         ; $4552: $98
    and l                                         ; $4553: $a5
    ld a, [bc]                                    ; $4554: $0a
    and c                                         ; $4555: $a1
    ld a, e                                       ; $4556: $7b
    ld a, h                                       ; $4557: $7c
    ld a, l                                       ; $4558: $7d
    ld a, [hl]                                    ; $4559: $7e
    ld a, a                                       ; $455a: $7f
    add b                                         ; $455b: $80
    add c                                         ; $455c: $81
    add d                                         ; $455d: $82
    xor d                                         ; $455e: $aa
    nop                                           ; $455f: $00
    sbc c                                         ; $4560: $99
    dec b                                         ; $4561: $05
    ld a, [bc]                                    ; $4562: $0a
    add e                                         ; $4563: $83
    add h                                         ; $4564: $84
    add l                                         ; $4565: $85
    add [hl]                                      ; $4566: $86
    add a                                         ; $4567: $87
    adc b                                         ; $4568: $88
    adc c                                         ; $4569: $89
    adc d                                         ; $456a: $8a
    adc e                                         ; $456b: $8b
    adc h                                         ; $456c: $8c
    sbc c                                         ; $456d: $99
    dec h                                         ; $456e: $25
    ld a, [bc]                                    ; $456f: $0a
    adc l                                         ; $4570: $8d
    adc [hl]                                      ; $4571: $8e
    adc a                                         ; $4572: $8f
    sub b                                         ; $4573: $90
    sub c                                         ; $4574: $91
    sub d                                         ; $4575: $92
    sub e                                         ; $4576: $93
    sub h                                         ; $4577: $94
    sub l                                         ; $4578: $95
    sub [hl]                                      ; $4579: $96
    nop                                           ; $457a: $00
    sbc c                                         ; $457b: $99
    add l                                         ; $457c: $85
    ld a, [bc]                                    ; $457d: $0a
    ld a, h                                       ; $457e: $7c
    sbc b                                         ; $457f: $98
    sbc c                                         ; $4580: $99
    sbc d                                         ; $4581: $9a
    sbc e                                         ; $4582: $9b
    sbc h                                         ; $4583: $9c
    sbc l                                         ; $4584: $9d
    sbc [hl]                                      ; $4585: $9e
    sbc a                                         ; $4586: $9f
    ld a, l                                       ; $4587: $7d
    sbc c                                         ; $4588: $99
    and l                                         ; $4589: $a5
    ld a, [bc]                                    ; $458a: $0a
    ld a, [hl]                                    ; $458b: $7e
    and d                                         ; $458c: $a2
    and e                                         ; $458d: $a3
    and h                                         ; $458e: $a4
    and l                                         ; $458f: $a5
    and [hl]                                      ; $4590: $a6
    and a                                         ; $4591: $a7
    xor b                                         ; $4592: $a8
    xor c                                         ; $4593: $a9
    ld a, a                                       ; $4594: $7f
    nop                                           ; $4595: $00
    sbc c                                         ; $4596: $99
    and l                                         ; $4597: $a5
    ld a, [bc]                                    ; $4598: $0a
    jp hl                                         ; $4599: $e9


    ld [$eceb], a                                 ; $459a: $ea $eb $ec
    db $ed                                        ; $459d: $ed
    xor $ef                                       ; $459e: $ee $ef
    ldh a, [$fff1]                                ; $45a0: $f0 $f1
    ldh a, [c]                                    ; $45a2: $f2
    sbc c                                         ; $45a3: $99
    push bc                                       ; $45a4: $c5
    ld a, [bc]                                    ; $45a5: $0a
    di                                            ; $45a6: $f3
    db $f4                                        ; $45a7: $f4
    push af                                       ; $45a8: $f5
    or $f7                                        ; $45a9: $f6 $f7
    ld hl, sp-$07                                 ; $45ab: $f8 $f9
    ld a, [$fcfb]                                 ; $45ad: $fa $fb $fc
    nop                                           ; $45b0: $00

Call_002_45b1:
    ld a, [$c322]                                 ; $45b1: $fa $22 $c3
    and $c0                                       ; $45b4: $e6 $c0
    ret z                                         ; $45b6: $c8

    push af                                       ; $45b7: $f5
    ld a, [$d637]                                 ; $45b8: $fa $37 $d6
    call Call_002_4531                            ; $45bb: $cd $31 $45
    rst RST_08                                    ; $45be: $cf
    ld c, $0a                                     ; $45bf: $0e $0a
    ld a, $02                                     ; $45c1: $3e $02
    call Call_000_03b6                            ; $45c3: $cd $b6 $03
    pop af                                        ; $45c6: $f1
    and $40                                       ; $45c7: $e6 $40
    jr z, jr_002_45dc                             ; $45c9: $28 $11

    ld a, [$d637]                                 ; $45cb: $fa $37 $d6
    dec a                                         ; $45ce: $3d
    cp $ff                                        ; $45cf: $fe $ff
    jr nz, jr_002_45d6                            ; $45d1: $20 $03

    ld a, [$d63b]                                 ; $45d3: $fa $3b $d6

jr_002_45d6:
    ld [$d637], a                                 ; $45d6: $ea $37 $d6
    jp Jump_002_44b1                              ; $45d9: $c3 $b1 $44


jr_002_45dc:
    ld a, [$d637]                                 ; $45dc: $fa $37 $d6
    ld hl, $d63b                                  ; $45df: $21 $3b $d6
    cp [hl]                                       ; $45e2: $be
    jr nz, jr_002_45e7                            ; $45e3: $20 $02

    ld a, $ff                                     ; $45e5: $3e $ff

jr_002_45e7:
    inc a                                         ; $45e7: $3c
    ld [$d637], a                                 ; $45e8: $ea $37 $d6
    jp Jump_002_44b1                              ; $45eb: $c3 $b1 $44


    ld a, $0c                                     ; $45ee: $3e $0c
    ld [$c318], a                                 ; $45f0: $ea $18 $c3
    ld a, $04                                     ; $45f3: $3e $04
    ld [$c319], a                                 ; $45f5: $ea $19 $c3
    xor a                                         ; $45f8: $af
    ld [$d634], a                                 ; $45f9: $ea $34 $d6
    ld [$d635], a                                 ; $45fc: $ea $35 $d6
    ld [$c310], a                                 ; $45ff: $ea $10 $c3

jr_002_4602:
    call Call_002_460b                            ; $4602: $cd $0b $46
    call Call_000_05c5                            ; $4605: $cd $c5 $05
    rst RST_08                                    ; $4608: $cf
    jr jr_002_4602                                ; $4609: $18 $f7

Call_002_460b:
    ld a, [$d634]                                 ; $460b: $fa $34 $d6
    call Call_000_0373                            ; $460e: $cd $73 $03
    add a                                         ; $4611: $87
    ld c, a                                       ; $4612: $4f
    inc bc                                        ; $4613: $03
    ld c, a                                       ; $4614: $4f
    ld b, a                                       ; $4615: $47
    ld [bc], a                                    ; $4616: $02
    nop                                           ; $4617: $00
    ld b, e                                       ; $4618: $43
    ld [bc], a                                    ; $4619: $02
    nop                                           ; $461a: $00
    ld b, b                                       ; $461b: $40
    ld [bc], a                                    ; $461c: $02
    adc d                                         ; $461d: $8a
    ld b, e                                       ; $461e: $43
    ld bc, $526d                                  ; $461f: $01 $6d $52
    ld bc, $2111                                  ; $4622: $01 $11 $21
    nop                                           ; $4625: $00
    ld d, l                                       ; $4626: $55
    ld c, h                                       ; $4627: $4c
    ld [bc], a                                    ; $4628: $02
    ld a, [hl]                                    ; $4629: $7e
    ld e, l                                       ; $462a: $5d
    ld bc, $63fc                                  ; $462b: $01 $fc $63
    ld bc, $686d                                  ; $462e: $01 $6d $68
    ld bc, $3afa                                  ; $4631: $01 $fa $3a
    ret c                                         ; $4634: $d8

    add $40                                       ; $4635: $c6 $40
    ld bc, $4038                                  ; $4637: $01 $38 $40
    call Call_000_20ce                            ; $463a: $cd $ce $20
    ld a, $3c                                     ; $463d: $3e $3c
    ld bc, $4038                                  ; $463f: $01 $38 $40
    call Call_000_20ce                            ; $4642: $cd $ce $20
    ld a, [$c322]                                 ; $4645: $fa $22 $c3
    and $c0                                       ; $4648: $e6 $c0
    jr z, jr_002_466f                             ; $464a: $28 $23

    push af                                       ; $464c: $f5
    ld c, $0a                                     ; $464d: $0e $0a
    ld a, $02                                     ; $464f: $3e $02
    call Call_000_03b6                            ; $4651: $cd $b6 $03
    pop af                                        ; $4654: $f1
    and $40                                       ; $4655: $e6 $40
    ld a, [$d83a]                                 ; $4657: $fa $3a $d8
    jr z, jr_002_4665                             ; $465a: $28 $09

    dec a                                         ; $465c: $3d
    cp $ff                                        ; $465d: $fe $ff
    jr nz, jr_002_466b                            ; $465f: $20 $0a

    ld a, $02                                     ; $4661: $3e $02
    jr jr_002_466b                                ; $4663: $18 $06

jr_002_4665:
    inc a                                         ; $4665: $3c
    cp $03                                        ; $4666: $fe $03
    jr nz, jr_002_466b                            ; $4668: $20 $01

    xor a                                         ; $466a: $af

jr_002_466b:
    ld [$d83a], a                                 ; $466b: $ea $3a $d8
    pop af                                        ; $466e: $f1

jr_002_466f:
    jp Jump_000_05ea                              ; $466f: $c3 $ea $05


    ld a, [$d83b]                                 ; $4672: $fa $3b $d8
    add $43                                       ; $4675: $c6 $43
    ld bc, $4038                                  ; $4677: $01 $38 $40
    call Call_000_20ce                            ; $467a: $cd $ce $20
    ld a, $3f                                     ; $467d: $3e $3f
    ld bc, $4038                                  ; $467f: $01 $38 $40
    call Call_000_20ce                            ; $4682: $cd $ce $20
    ld a, [$c322]                                 ; $4685: $fa $22 $c3
    and $c0                                       ; $4688: $e6 $c0
    jr z, jr_002_46af                             ; $468a: $28 $23

    push af                                       ; $468c: $f5
    ld c, $0a                                     ; $468d: $0e $0a
    ld a, $02                                     ; $468f: $3e $02
    call Call_000_03b6                            ; $4691: $cd $b6 $03
    pop af                                        ; $4694: $f1
    and $40                                       ; $4695: $e6 $40
    ld a, [$d83b]                                 ; $4697: $fa $3b $d8
    jr z, jr_002_46a5                             ; $469a: $28 $09

    dec a                                         ; $469c: $3d
    cp $ff                                        ; $469d: $fe $ff
    jr nz, jr_002_46ab                            ; $469f: $20 $0a

    ld a, $01                                     ; $46a1: $3e $01
    jr jr_002_46ab                                ; $46a3: $18 $06

jr_002_46a5:
    inc a                                         ; $46a5: $3c
    cp $02                                        ; $46a6: $fe $02
    jr nz, jr_002_46ab                            ; $46a8: $20 $01

    xor a                                         ; $46aa: $af

jr_002_46ab:
    ld [$d83b], a                                 ; $46ab: $ea $3b $d8
    pop af                                        ; $46ae: $f1

jr_002_46af:
    jp Jump_000_05ea                              ; $46af: $c3 $ea $05


    ld a, [$d83c]                                 ; $46b2: $fa $3c $d8
    add $45                                       ; $46b5: $c6 $45
    ld bc, $4038                                  ; $46b7: $01 $38 $40
    call Call_000_20ce                            ; $46ba: $cd $ce $20
    ld a, $3e                                     ; $46bd: $3e $3e
    ld bc, $4038                                  ; $46bf: $01 $38 $40
    call Call_000_20ce                            ; $46c2: $cd $ce $20
    ld a, [$c322]                                 ; $46c5: $fa $22 $c3
    and $c0                                       ; $46c8: $e6 $c0
    jr z, jr_002_4706                             ; $46ca: $28 $3a

    push af                                       ; $46cc: $f5
    ld c, $0a                                     ; $46cd: $0e $0a
    ld a, $02                                     ; $46cf: $3e $02
    call Call_000_03b6                            ; $46d1: $cd $b6 $03
    pop af                                        ; $46d4: $f1
    and $40                                       ; $46d5: $e6 $40
    ld a, [$d83c]                                 ; $46d7: $fa $3c $d8
    jr z, jr_002_46e5                             ; $46da: $28 $09

    dec a                                         ; $46dc: $3d
    cp $ff                                        ; $46dd: $fe $ff
    jr nz, jr_002_46eb                            ; $46df: $20 $0a

    ld a, $05                                     ; $46e1: $3e $05
    jr jr_002_46eb                                ; $46e3: $18 $06

jr_002_46e5:
    inc a                                         ; $46e5: $3c
    cp $06                                        ; $46e6: $fe $06
    jr nz, jr_002_46eb                            ; $46e8: $20 $01

    xor a                                         ; $46ea: $af

jr_002_46eb:
    ld [$d83c], a                                 ; $46eb: $ea $3c $d8
    ld c, a                                       ; $46ee: $4f
    ld b, $00                                     ; $46ef: $06 $00
    ld hl, $4709                                  ; $46f1: $21 $09 $47
    add hl, bc                                    ; $46f4: $09
    ld c, $00                                     ; $46f5: $0e $00
    ld a, $01                                     ; $46f7: $3e $01
    call Call_000_03b6                            ; $46f9: $cd $b6 $03
    call Call_000_0399                            ; $46fc: $cd $99 $03
    ld c, [hl]                                    ; $46ff: $4e
    ld a, $01                                     ; $4700: $3e $01
    call Call_000_03b6                            ; $4702: $cd $b6 $03
    pop af                                        ; $4705: $f1

jr_002_4706:
    jp Jump_000_05ea                              ; $4706: $c3 $ea $05


    dec b                                         ; $4709: $05
    ld bc, $030b                                  ; $470a: $01 $0b $03
    ld [bc], a                                    ; $470d: $02
    nop                                           ; $470e: $00
    ld a, [$d83d]                                 ; $470f: $fa $3d $d8
    add $43                                       ; $4712: $c6 $43
    ld bc, $4038                                  ; $4714: $01 $38 $40
    call Call_000_20ce                            ; $4717: $cd $ce $20
    ld a, $3f                                     ; $471a: $3e $3f
    ld bc, $4038                                  ; $471c: $01 $38 $40
    call Call_000_20ce                            ; $471f: $cd $ce $20
    ld a, [$c322]                                 ; $4722: $fa $22 $c3
    and $c0                                       ; $4725: $e6 $c0
    jr z, jr_002_474c                             ; $4727: $28 $23

    push af                                       ; $4729: $f5
    ld c, $0a                                     ; $472a: $0e $0a
    ld a, $02                                     ; $472c: $3e $02
    call Call_000_03b6                            ; $472e: $cd $b6 $03
    pop af                                        ; $4731: $f1
    and $40                                       ; $4732: $e6 $40
    ld a, [$d83d]                                 ; $4734: $fa $3d $d8
    jr z, jr_002_4742                             ; $4737: $28 $09

    dec a                                         ; $4739: $3d
    cp $ff                                        ; $473a: $fe $ff
    jr nz, jr_002_4748                            ; $473c: $20 $0a

    ld a, $01                                     ; $473e: $3e $01
    jr jr_002_4748                                ; $4740: $18 $06

jr_002_4742:
    inc a                                         ; $4742: $3c
    cp $02                                        ; $4743: $fe $02
    jr nz, jr_002_4748                            ; $4745: $20 $01

    xor a                                         ; $4747: $af

jr_002_4748:
    ld [$d83d], a                                 ; $4748: $ea $3d $d8
    pop af                                        ; $474b: $f1

jr_002_474c:
    jp Jump_000_05ea                              ; $474c: $c3 $ea $05


    ld a, [$d635]                                 ; $474f: $fa $35 $d6
    rst RST_18                                    ; $4752: $df
    ld e, c                                       ; $4753: $59
    ld b, a                                       ; $4754: $47
    pop af                                        ; $4755: $f1
    ld b, a                                       ; $4756: $47
    ld b, b                                       ; $4757: $40
    ld c, c                                       ; $4758: $49
    ld a, $43                                     ; $4759: $3e $43
    ld [$c32e], a                                 ; $475b: $ea $2e $c3
    xor a                                         ; $475e: $af
    ld [$c32f], a                                 ; $475f: $ea $2f $c3
    ld [$c330], a                                 ; $4762: $ea $30 $c3
    ld [$c331], a                                 ; $4765: $ea $31 $c3
    ld [$c332], a                                 ; $4768: $ea $32 $c3
    ld [$c333], a                                 ; $476b: $ea $33 $c3
    call Call_000_05a0                            ; $476e: $cd $a0 $05
    call Call_000_05ab                            ; $4771: $cd $ab $05
    ld a, $0b                                     ; $4774: $3e $0b
    ld hl, $5000                                  ; $4776: $21 $00 $50
    ld de, $8000                                  ; $4779: $11 $00 $80
    ld bc, $0300                                  ; $477c: $01 $00 $03
    call Call_000_04e4                            ; $477f: $cd $e4 $04
    ld a, $09                                     ; $4782: $3e $09
    ld hl, $5800                                  ; $4784: $21 $00 $58
    ld de, $8800                                  ; $4787: $11 $00 $88
    ld bc, $1000                                  ; $478a: $01 $00 $10
    call Call_000_04e4                            ; $478d: $cd $e4 $04
    ld a, $0b                                     ; $4790: $3e $0b
    ld hl, $7800                                  ; $4792: $21 $00 $78
    ld de, $9800                                  ; $4795: $11 $00 $98
    ld bc, $0400                                  ; $4798: $01 $00 $04
    call Call_000_04e4                            ; $479b: $cd $e4 $04
    xor a                                         ; $479e: $af
    call $4ad5                                    ; $479f: $cd $d5 $4a
    ld a, $01                                     ; $47a2: $3e $01
    call $4ad5                                    ; $47a4: $cd $d5 $4a
    ld a, $02                                     ; $47a7: $3e $02
    call $4ad5                                    ; $47a9: $cd $d5 $4a
    ld a, [$a065]                                 ; $47ac: $fa $65 $a0
    ld [$d637], a                                 ; $47af: $ea $37 $d6
    call Call_002_498e                            ; $47b2: $cd $8e $49
    call Call_000_05b6                            ; $47b5: $cd $b6 $05
    ld b, $03                                     ; $47b8: $06 $03
    ld hl, $4e80                                  ; $47ba: $21 $80 $4e
    call Call_000_05de                            ; $47bd: $cd $de $05
    ld b, $03                                     ; $47c0: $06 $03
    ld hl, $4ea6                                  ; $47c2: $21 $a6 $4e
    call Call_000_05de                            ; $47c5: $cd $de $05
    ld c, $00                                     ; $47c8: $0e $00
    ld a, $01                                     ; $47ca: $3e $01
    call Call_000_03b6                            ; $47cc: $cd $b6 $03
    call Call_000_0399                            ; $47cf: $cd $99 $03
    ld c, $0d                                     ; $47d2: $0e $0d
    ld a, $01                                     ; $47d4: $3e $01
    call Call_000_03b6                            ; $47d6: $cd $b6 $03
    call Call_000_04a2                            ; $47d9: $cd $a2 $04
    call Call_000_1fa5                            ; $47dc: $cd $a5 $1f
    ld b, $03                                     ; $47df: $06 $03
    ld hl, $46c4                                  ; $47e1: $21 $c4 $46
    ld c, $05                                     ; $47e4: $0e $05
    ld de, $0044                                  ; $47e6: $11 $44 $00
    call Call_000_040d                            ; $47e9: $cd $0d $04
    ld hl, $d635                                  ; $47ec: $21 $35 $d6
    inc [hl]                                      ; $47ef: $34
    ret                                           ; $47f0: $c9


    ld b, $03                                     ; $47f1: $06 $03
    ld hl, $4ea6                                  ; $47f3: $21 $a6 $4e
    call Call_000_05de                            ; $47f6: $cd $de $05
    call $4c1c                                    ; $47f9: $cd $1c $4c
    ld a, [$c31a]                                 ; $47fc: $fa $1a $c3
    bit 2, a                                      ; $47ff: $cb $57
    jr z, jr_002_4809                             ; $4801: $28 $06

    cp $07                                        ; $4803: $fe $07
    ret nz                                        ; $4805: $c0

    jp Jump_002_481d                              ; $4806: $c3 $1d $48


jr_002_4809:
    ld a, [$c31e]                                 ; $4809: $fa $1e $c3
    and $09                                       ; $480c: $e6 $09
    jr z, jr_002_481c                             ; $480e: $28 $0c

    ld c, $03                                     ; $4810: $0e $03
    ld a, $02                                     ; $4812: $3e $02
    call Call_000_03b6                            ; $4814: $cd $b6 $03
    ld hl, $d635                                  ; $4817: $21 $35 $d6
    inc [hl]                                      ; $481a: $34
    ret                                           ; $481b: $c9


jr_002_481c:
    ret                                           ; $481c: $c9


Jump_002_481d:
    call Call_000_05c5                            ; $481d: $cd $c5 $05
    ld bc, $0014                                  ; $4820: $01 $14 $00
    call Call_000_05fa                            ; $4823: $cd $fa $05

jr_002_4826:
    ld b, $03                                     ; $4826: $06 $03
    ld hl, $4ec2                                  ; $4828: $21 $c2 $4e
    call Call_000_05de                            ; $482b: $cd $de $05
    ld a, [$c33a]                                 ; $482e: $fa $3a $c3
    bit 4, a                                      ; $4831: $cb $67
    jr nz, jr_002_4846                            ; $4833: $20 $11

    ld a, [$d637]                                 ; $4835: $fa $37 $d6
    swap a                                        ; $4838: $cb $37
    sla a                                         ; $483a: $cb $27
    add $10                                       ; $483c: $c6 $10
    ld c, a                                       ; $483e: $4f
    ld b, $30                                     ; $483f: $06 $30
    ld a, $4b                                     ; $4841: $3e $4b
    call Call_000_20ce                            ; $4843: $cd $ce $20

jr_002_4846:
    ld a, [$c31e]                                 ; $4846: $fa $1e $c3
    bit 0, a                                      ; $4849: $cb $47
    jr z, jr_002_4898                             ; $484b: $28 $4b

    ld a, [$d637]                                 ; $484d: $fa $37 $d6
    ld c, a                                       ; $4850: $4f
    ld b, $00                                     ; $4851: $06 $00
    ld hl, $48a2                                  ; $4853: $21 $a2 $48
    add hl, bc                                    ; $4856: $09
    ld c, [hl]                                    ; $4857: $4e
    add hl, bc                                    ; $4858: $09
    ld bc, $490b                                  ; $4859: $01 $0b $49

jr_002_485c:
    ld a, [hl+]                                   ; $485c: $2a
    ld e, a                                       ; $485d: $5f
    ld d, [hl]                                    ; $485e: $56
    or d                                          ; $485f: $b2
    jr z, jr_002_488d                             ; $4860: $28 $2b

    inc hl                                        ; $4862: $23
    ld a, [bc]                                    ; $4863: $0a
    inc bc                                        ; $4864: $03
    and a                                         ; $4865: $a7
    jr nz, jr_002_487a                            ; $4866: $20 $12

    push hl                                       ; $4868: $e5
    ld a, [bc]                                    ; $4869: $0a
    ld l, a                                       ; $486a: $6f
    inc bc                                        ; $486b: $03
    ld a, [bc]                                    ; $486c: $0a
    ld h, a                                       ; $486d: $67
    inc bc                                        ; $486e: $03

jr_002_486f:
    xor a                                         ; $486f: $af
    ld [de], a                                    ; $4870: $12
    inc de                                        ; $4871: $13
    dec hl                                        ; $4872: $2b
    ld a, l                                       ; $4873: $7d
    or h                                          ; $4874: $b4
    jr nz, jr_002_486f                            ; $4875: $20 $f8

    pop hl                                        ; $4877: $e1
    jr jr_002_485c                                ; $4878: $18 $e2

jr_002_487a:
    push hl                                       ; $487a: $e5
    ld a, [bc]                                    ; $487b: $0a
    ld l, a                                       ; $487c: $6f
    inc bc                                        ; $487d: $03
    ld a, [bc]                                    ; $487e: $0a
    ld h, a                                       ; $487f: $67
    inc bc                                        ; $4880: $03

jr_002_4881:
    ld a, [bc]                                    ; $4881: $0a
    ld [de], a                                    ; $4882: $12
    inc bc                                        ; $4883: $03
    inc de                                        ; $4884: $13
    dec hl                                        ; $4885: $2b
    ld a, l                                       ; $4886: $7d
    or h                                          ; $4887: $b4
    jr nz, jr_002_4881                            ; $4888: $20 $f7

    pop hl                                        ; $488a: $e1
    jr jr_002_485c                                ; $488b: $18 $cf

jr_002_488d:
    call Call_000_1b1f                            ; $488d: $cd $1f $1b
    ld a, [$d637]                                 ; $4890: $fa $37 $d6
    call Call_002_498e                            ; $4893: $cd $8e $49

jr_002_4896:
    rst RST_08                                    ; $4896: $cf
    ret                                           ; $4897: $c9


jr_002_4898:
    bit 1, a                                      ; $4898: $cb $4f
    jr nz, jr_002_4896                            ; $489a: $20 $fa

    call Call_000_05c5                            ; $489c: $cd $c5 $05
    rst RST_08                                    ; $489f: $cf
    jr jr_002_4826                                ; $48a0: $18 $84

    inc bc                                        ; $48a2: $03
    inc h                                         ; $48a3: $24
    ld b, l                                       ; $48a4: $45
    ld h, [hl]                                    ; $48a5: $66
    and b                                         ; $48a6: $a0
    ld l, c                                       ; $48a7: $69
    and b                                         ; $48a8: $a0
    ld a, b                                       ; $48a9: $78
    and b                                         ; $48aa: $a0
    ld a, e                                       ; $48ab: $7b
    and b                                         ; $48ac: $a0
    ld a, [hl]                                    ; $48ad: $7e
    and b                                         ; $48ae: $a0
    add c                                         ; $48af: $81
    and b                                         ; $48b0: $a0
    add h                                         ; $48b1: $84
    and b                                         ; $48b2: $a0
    add a                                         ; $48b3: $87
    and b                                         ; $48b4: $a0
    rst RST_00                                    ; $48b5: $c7
    and d                                         ; $48b6: $a2
    add a                                         ; $48b7: $87
    and e                                         ; $48b8: $a3
    adc d                                         ; $48b9: $8a
    and e                                         ; $48ba: $a3
    adc l                                         ; $48bb: $8d
    and e                                         ; $48bc: $a3
    sub b                                         ; $48bd: $90
    and e                                         ; $48be: $a3
    sbc c                                         ; $48bf: $99
    and e                                         ; $48c0: $a3
    and d                                         ; $48c1: $a2
    and e                                         ; $48c2: $a3
    ld h, d                                       ; $48c3: $62
    xor d                                         ; $48c4: $aa
    nop                                           ; $48c5: $00
    nop                                           ; $48c6: $00
    ld h, a                                       ; $48c7: $67
    and b                                         ; $48c8: $a0
    ld l, [hl]                                    ; $48c9: $6e
    and b                                         ; $48ca: $a0
    ld a, c                                       ; $48cb: $79
    and b                                         ; $48cc: $a0
    ld a, h                                       ; $48cd: $7c
    and b                                         ; $48ce: $a0
    ld a, a                                       ; $48cf: $7f
    and b                                         ; $48d0: $a0
    add d                                         ; $48d1: $82
    and b                                         ; $48d2: $a0
    add l                                         ; $48d3: $85
    and b                                         ; $48d4: $a0
    ld b, a                                       ; $48d5: $47
    and c                                         ; $48d6: $a1
    rlca                                          ; $48d7: $07
    and e                                         ; $48d8: $a3
    adc b                                         ; $48d9: $88
    and e                                         ; $48da: $a3
    adc e                                         ; $48db: $8b
    and e                                         ; $48dc: $a3
    adc [hl]                                      ; $48dd: $8e
    and e                                         ; $48de: $a3
    sub e                                         ; $48df: $93
    and e                                         ; $48e0: $a3
    sbc h                                         ; $48e1: $9c
    and e                                         ; $48e2: $a3
    ldh [c], a                                    ; $48e3: $e2
    and l                                         ; $48e4: $a5
    ld [hl+], a                                   ; $48e5: $22
    xor e                                         ; $48e6: $ab
    nop                                           ; $48e7: $00
    nop                                           ; $48e8: $00
    ld l, b                                       ; $48e9: $68
    and b                                         ; $48ea: $a0
    ld [hl], e                                    ; $48eb: $73
    and b                                         ; $48ec: $a0
    ld a, d                                       ; $48ed: $7a
    and b                                         ; $48ee: $a0
    ld a, l                                       ; $48ef: $7d
    and b                                         ; $48f0: $a0
    add b                                         ; $48f1: $80
    and b                                         ; $48f2: $a0
    add e                                         ; $48f3: $83
    and b                                         ; $48f4: $a0
    add [hl]                                      ; $48f5: $86
    and b                                         ; $48f6: $a0
    rlca                                          ; $48f7: $07
    and d                                         ; $48f8: $a2
    ld b, a                                       ; $48f9: $47
    and e                                         ; $48fa: $a3
    adc c                                         ; $48fb: $89
    and e                                         ; $48fc: $a3
    adc h                                         ; $48fd: $8c
    and e                                         ; $48fe: $a3
    adc a                                         ; $48ff: $8f
    and e                                         ; $4900: $a3
    sub [hl]                                      ; $4901: $96
    and e                                         ; $4902: $a3
    sbc a                                         ; $4903: $9f
    and e                                         ; $4904: $a3
    ld [hl+], a                                   ; $4905: $22
    xor b                                         ; $4906: $a8
    ldh [c], a                                    ; $4907: $e2
    xor e                                         ; $4908: $ab
    nop                                           ; $4909: $00
    nop                                           ; $490a: $00
    nop                                           ; $490b: $00
    ld bc, rP1                                    ; $490c: $01 $00 $ff
    dec b                                         ; $490f: $05
    nop                                           ; $4910: $00
    nop                                           ; $4911: $00
    ld bc, $0302                                  ; $4912: $01 $02 $03
    inc b                                         ; $4915: $04
    nop                                           ; $4916: $00
    ld bc, $0000                                  ; $4917: $01 $00 $00
    ld bc, $0000                                  ; $491a: $01 $00 $00
    ld bc, $0000                                  ; $491d: $01 $00 $00
    ld bc, $0000                                  ; $4920: $01 $00 $00
    ld bc, $0000                                  ; $4923: $01 $00 $00
    ret nz                                        ; $4926: $c0

    nop                                           ; $4927: $00
    nop                                           ; $4928: $00
    ld b, b                                       ; $4929: $40
    nop                                           ; $492a: $00
    nop                                           ; $492b: $00
    ld bc, $0000                                  ; $492c: $01 $00 $00
    ld bc, $0000                                  ; $492f: $01 $00 $00
    ld bc, $0000                                  ; $4932: $01 $00 $00
    inc bc                                        ; $4935: $03
    nop                                           ; $4936: $00
    nop                                           ; $4937: $00
    inc bc                                        ; $4938: $03
    nop                                           ; $4939: $00
    nop                                           ; $493a: $00
    ld b, b                                       ; $493b: $40
    ld [bc], a                                    ; $493c: $02
    nop                                           ; $493d: $00
    ret nz                                        ; $493e: $c0

    nop                                           ; $493f: $00
    ld bc, $003c                                  ; $4940: $01 $3c $00
    call Call_000_05fa                            ; $4943: $cd $fa $05
    ld a, $05                                     ; $4946: $3e $05
    call Call_000_03b6                            ; $4948: $cd $b6 $03
    ld c, $00                                     ; $494b: $0e $00
    ld a, $01                                     ; $494d: $3e $01
    call Call_000_03b6                            ; $494f: $cd $b6 $03
    call Call_000_0399                            ; $4952: $cd $99 $03
    ld c, $00                                     ; $4955: $0e $00
    ld a, $01                                     ; $4957: $3e $01
    call Call_000_03b6                            ; $4959: $cd $b6 $03
    ld b, $03                                     ; $495c: $06 $03
    ld hl, $46cf                                  ; $495e: $21 $cf $46
    ld c, $05                                     ; $4961: $0e $05
    ld de, $0053                                  ; $4963: $11 $53 $00
    call Call_000_044e                            ; $4966: $cd $4e $04
    call Call_000_0483                            ; $4969: $cd $83 $04
    ld a, [$d637]                                 ; $496c: $fa $37 $d6
    ld [$a065], a                                 ; $496f: $ea $65 $a0
    ld c, a                                       ; $4972: $4f
    ld b, $00                                     ; $4973: $06 $00
    ld hl, $a387                                  ; $4975: $21 $87 $a3
    add hl, bc                                    ; $4978: $09
    ld a, [hl]                                    ; $4979: $7e
    and a                                         ; $497a: $a7
    jr nz, jr_002_4983                            ; $497b: $20 $06

    inc [hl]                                      ; $497d: $34
    ld hl, $a38a                                  ; $497e: $21 $8a $a3
    add hl, bc                                    ; $4981: $09
    ld [hl], a                                    ; $4982: $77

jr_002_4983:
    xor a                                         ; $4983: $af
    ld [$d635], a                                 ; $4984: $ea $35 $d6
    ld hl, $d634                                  ; $4987: $21 $34 $d6
    inc [hl]                                      ; $498a: $34
    jp Jump_000_1b1f                              ; $498b: $c3 $1f $1b


Call_002_498e:
Jump_002_498e:
    push af                                       ; $498e: $f5
    ld c, a                                       ; $498f: $4f
    ld b, $00                                     ; $4990: $06 $00
    ld hl, $4a57                                  ; $4992: $21 $57 $4a
    add hl, bc                                    ; $4995: $09
    ld c, [hl]                                    ; $4996: $4e
    add hl, bc                                    ; $4997: $09
    ld a, $02                                     ; $4998: $3e $02
    ld de, $c100                                  ; $499a: $11 $00 $c1
    ld bc, $0023                                  ; $499d: $01 $23 $00
    call Call_000_04e4                            ; $49a0: $cd $e4 $04
    pop af                                        ; $49a3: $f1
    ld c, a                                       ; $49a4: $4f
    ld b, $00                                     ; $49a5: $06 $00
    ld hl, $a387                                  ; $49a7: $21 $87 $a3
    add hl, bc                                    ; $49aa: $09
    ld a, [hl]                                    ; $49ab: $7e
    and a                                         ; $49ac: $a7
    jp z, Jump_002_4a4f                           ; $49ad: $ca $4f $4a

    push bc                                       ; $49b0: $c5
    cp $03                                        ; $49b1: $fe $03
    jr nz, jr_002_49b6                            ; $49b3: $20 $01

    dec a                                         ; $49b5: $3d

jr_002_49b6:
    dec a                                         ; $49b6: $3d
    ld c, a                                       ; $49b7: $4f
    ld b, $00                                     ; $49b8: $06 $00
    ld hl, $4ac3                                  ; $49ba: $21 $c3 $4a
    add hl, bc                                    ; $49bd: $09
    ld c, [hl]                                    ; $49be: $4e
    add hl, bc                                    ; $49bf: $09
    ld de, $c109                                  ; $49c0: $11 $09 $c1
    ld c, $04                                     ; $49c3: $0e $04

jr_002_49c5:
    ld a, [hl+]                                   ; $49c5: $2a
    ld [de], a                                    ; $49c6: $12
    inc de                                        ; $49c7: $13
    dec c                                         ; $49c8: $0d
    jr nz, jr_002_49c5                            ; $49c9: $20 $fa

    ld de, $c11a                                  ; $49cb: $11 $1a $c1
    ld c, $04                                     ; $49ce: $0e $04

jr_002_49d0:
    ld a, [hl+]                                   ; $49d0: $2a
    ld [de], a                                    ; $49d1: $12
    inc de                                        ; $49d2: $13
    dec c                                         ; $49d3: $0d
    jr nz, jr_002_49d0                            ; $49d4: $20 $fa

    pop bc                                        ; $49d6: $c1
    push bc                                       ; $49d7: $c5
    ld hl, $a38a                                  ; $49d8: $21 $8a $a3
    add hl, bc                                    ; $49db: $09
    ld a, [hl]                                    ; $49dc: $7e
    call Call_000_1972                            ; $49dd: $cd $72 $19
    add $60                                       ; $49e0: $c6 $60
    ld hl, $c10e                                  ; $49e2: $21 $0e $c1
    ld [hl], a                                    ; $49e5: $77
    add $10                                       ; $49e6: $c6 $10
    ld hl, $c11f                                  ; $49e8: $21 $1f $c1
    ld [hl], a                                    ; $49eb: $77
    pop af                                        ; $49ec: $f1
    add $60                                       ; $49ed: $c6 $60
    ld hl, $c10d                                  ; $49ef: $21 $0d $c1
    ld [hl], a                                    ; $49f2: $77
    add $10                                       ; $49f3: $c6 $10
    ld hl, $c11e                                  ; $49f5: $21 $1e $c1
    ld [hl], a                                    ; $49f8: $77
    pop af                                        ; $49f9: $f1
    ld a, $6b                                     ; $49fa: $3e $6b
    ld hl, $c103                                  ; $49fc: $21 $03 $c1
    ld [hl+], a                                   ; $49ff: $22
    inc a                                         ; $4a00: $3c
    ld [hl], a                                    ; $4a01: $77
    ld a, $7b                                     ; $4a02: $3e $7b
    ld hl, $c114                                  ; $4a04: $21 $14 $c1
    ld [hl+], a                                   ; $4a07: $22
    inc a                                         ; $4a08: $3c
    ld [hl], a                                    ; $4a09: $77
    pop bc                                        ; $4a0a: $c1
    ld hl, $a07e                                  ; $4a0b: $21 $7e $a0
    add hl, bc                                    ; $4a0e: $09
    ld a, [hl]                                    ; $4a0f: $7e
    call Call_000_1972                            ; $4a10: $cd $72 $19
    add $60                                       ; $4a13: $c6 $60
    ld hl, $c106                                  ; $4a15: $21 $06 $c1
    ld [hl], a                                    ; $4a18: $77
    add $10                                       ; $4a19: $c6 $10
    ld hl, $c117                                  ; $4a1b: $21 $17 $c1
    ld [hl], a                                    ; $4a1e: $77
    pop af                                        ; $4a1f: $f1
    add $60                                       ; $4a20: $c6 $60
    ld hl, $c105                                  ; $4a22: $21 $05 $c1
    ld [hl], a                                    ; $4a25: $77
    add $10                                       ; $4a26: $c6 $10
    ld hl, $c116                                  ; $4a28: $21 $16 $c1
    ld [hl], a                                    ; $4a2b: $77
    pop af                                        ; $4a2c: $f1
    ld a, $ac                                     ; $4a2d: $3e $ac
    ld hl, $c107                                  ; $4a2f: $21 $07 $c1
    ld [hl+], a                                   ; $4a32: $22
    ld a, $ae                                     ; $4a33: $3e $ae
    ld [hl], a                                    ; $4a35: $77
    ld a, $bc                                     ; $4a36: $3e $bc
    ld hl, $c118                                  ; $4a38: $21 $18 $c1
    ld [hl+], a                                   ; $4a3b: $22
    ld a, $be                                     ; $4a3c: $3e $be
    ld [hl], a                                    ; $4a3e: $77
    ld a, $ac                                     ; $4a3f: $3e $ac
    ld hl, $c10f                                  ; $4a41: $21 $0f $c1
    ld [hl+], a                                   ; $4a44: $22
    inc a                                         ; $4a45: $3c
    ld [hl], a                                    ; $4a46: $77
    ld a, $bc                                     ; $4a47: $3e $bc
    ld hl, $c120                                  ; $4a49: $21 $20 $c1
    ld [hl+], a                                   ; $4a4c: $22
    inc a                                         ; $4a4d: $3c
    ld [hl], a                                    ; $4a4e: $77

Jump_002_4a4f:
    ld a, $00                                     ; $4a4f: $3e $00
    ld bc, $c100                                  ; $4a51: $01 $00 $c1
    jp Jump_000_0738                              ; $4a54: $c3 $38 $07


    inc bc                                        ; $4a57: $03
    dec h                                         ; $4a58: $25
    ld b, a                                       ; $4a59: $47
    sbc b                                         ; $4a5a: $98
    add e                                         ; $4a5b: $83
    ld c, $28                                     ; $4a5c: $0e $28
    and b                                         ; $4a5e: $a0
    and c                                         ; $4a5f: $a1
    and d                                         ; $4a60: $a2
    and e                                         ; $4a61: $a3
    and h                                         ; $4a62: $a4
    and l                                         ; $4a63: $a5
    and [hl]                                      ; $4a64: $a6
    and a                                         ; $4a65: $a7
    xor b                                         ; $4a66: $a8
    xor c                                         ; $4a67: $a9
    xor d                                         ; $4a68: $aa
    xor e                                         ; $4a69: $ab
    cpl                                           ; $4a6a: $2f
    sbc b                                         ; $4a6b: $98
    and e                                         ; $4a6c: $a3
    ld c, $38                                     ; $4a6d: $0e $38
    or b                                          ; $4a6f: $b0
    or c                                          ; $4a70: $b1
    or d                                          ; $4a71: $b2
    or e                                          ; $4a72: $b3
    or h                                          ; $4a73: $b4
    or l                                          ; $4a74: $b5
    or [hl]                                       ; $4a75: $b6
    or a                                          ; $4a76: $b7
    cp b                                          ; $4a77: $b8
    cp c                                          ; $4a78: $b9
    cp d                                          ; $4a79: $ba
    cp e                                          ; $4a7a: $bb
    ccf                                           ; $4a7b: $3f
    nop                                           ; $4a7c: $00
    sbc c                                         ; $4a7d: $99
    inc bc                                        ; $4a7e: $03
    ld c, $28                                     ; $4a7f: $0e $28
    and b                                         ; $4a81: $a0
    and c                                         ; $4a82: $a1
    and d                                         ; $4a83: $a2
    and e                                         ; $4a84: $a3
    and h                                         ; $4a85: $a4
    and l                                         ; $4a86: $a5
    and [hl]                                      ; $4a87: $a6
    and a                                         ; $4a88: $a7
    xor b                                         ; $4a89: $a8
    xor c                                         ; $4a8a: $a9
    xor d                                         ; $4a8b: $aa
    xor e                                         ; $4a8c: $ab
    cpl                                           ; $4a8d: $2f
    sbc c                                         ; $4a8e: $99
    inc hl                                        ; $4a8f: $23
    ld c, $38                                     ; $4a90: $0e $38
    or b                                          ; $4a92: $b0
    or c                                          ; $4a93: $b1
    or d                                          ; $4a94: $b2
    or e                                          ; $4a95: $b3
    or h                                          ; $4a96: $b4
    or l                                          ; $4a97: $b5
    or [hl]                                       ; $4a98: $b6
    or a                                          ; $4a99: $b7
    cp b                                          ; $4a9a: $b8
    cp c                                          ; $4a9b: $b9
    cp d                                          ; $4a9c: $ba
    cp e                                          ; $4a9d: $bb
    ccf                                           ; $4a9e: $3f
    nop                                           ; $4a9f: $00
    sbc c                                         ; $4aa0: $99
    add e                                         ; $4aa1: $83
    ld c, $28                                     ; $4aa2: $0e $28
    and b                                         ; $4aa4: $a0
    and c                                         ; $4aa5: $a1

Jump_002_4aa6:
    and d                                         ; $4aa6: $a2
    and e                                         ; $4aa7: $a3
    and h                                         ; $4aa8: $a4
    and l                                         ; $4aa9: $a5
    and [hl]                                      ; $4aaa: $a6
    and a                                         ; $4aab: $a7
    xor b                                         ; $4aac: $a8
    xor c                                         ; $4aad: $a9
    xor d                                         ; $4aae: $aa
    xor e                                         ; $4aaf: $ab
    cpl                                           ; $4ab0: $2f
    sbc c                                         ; $4ab1: $99
    and e                                         ; $4ab2: $a3
    ld c, $38                                     ; $4ab3: $0e $38
    or b                                          ; $4ab5: $b0
    or c                                          ; $4ab6: $b1
    or d                                          ; $4ab7: $b2
    or e                                          ; $4ab8: $b3
    or h                                          ; $4ab9: $b4
    or l                                          ; $4aba: $b5
    or [hl]                                       ; $4abb: $b6
    or a                                          ; $4abc: $b7
    cp b                                          ; $4abd: $b8
    cp c                                          ; $4abe: $b9
    cp d                                          ; $4abf: $ba
    cp e                                          ; $4ac0: $bb
    ccf                                           ; $4ac1: $3f
    nop                                           ; $4ac2: $00
    ld [bc], a                                    ; $4ac3: $02
    add hl, bc                                    ; $4ac4: $09
    add hl, hl                                    ; $4ac5: $29
    ld a, [hl+]                                   ; $4ac6: $2a
    ld l, d                                       ; $4ac7: $6a
    ld l, d                                       ; $4ac8: $6a
    add hl, sp                                    ; $4ac9: $39
    ld a, [hl-]                                   ; $4aca: $3a
    ld a, d                                       ; $4acb: $7a
    ld a, d                                       ; $4acc: $7a
    add hl, hl                                    ; $4acd: $29
    ld a, [hl+]                                   ; $4ace: $2a
    dec l                                         ; $4acf: $2d
    ld l, $39                                     ; $4ad0: $2e $39
    ld a, [hl-]                                   ; $4ad2: $3a
    dec a                                         ; $4ad3: $3d
    ld a, $f5                                     ; $4ad4: $3e $f5
    ld c, a                                       ; $4ad6: $4f
    ld b, $00                                     ; $4ad7: $06 $00
    ld hl, $4b9e                                  ; $4ad9: $21 $9e $4b
    add hl, bc                                    ; $4adc: $09
    ld c, [hl]                                    ; $4add: $4e
    add hl, bc                                    ; $4ade: $09
    ld a, $02                                     ; $4adf: $3e $02
    ld de, $c100                                  ; $4ae1: $11 $00 $c1
    ld bc, $0023                                  ; $4ae4: $01 $23 $00
    call Call_000_04e4                            ; $4ae7: $cd $e4 $04
    pop af                                        ; $4aea: $f1
    ld c, a                                       ; $4aeb: $4f
    ld b, $00                                     ; $4aec: $06 $00
    ld hl, $a387                                  ; $4aee: $21 $87 $a3
    add hl, bc                                    ; $4af1: $09
    ld a, [hl]                                    ; $4af2: $7e
    and a                                         ; $4af3: $a7
    jp z, Jump_002_4b96                           ; $4af4: $ca $96 $4b

    push bc                                       ; $4af7: $c5
    cp $03                                        ; $4af8: $fe $03
    jr nz, jr_002_4afd                            ; $4afa: $20 $01

    dec a                                         ; $4afc: $3d

jr_002_4afd:
    dec a                                         ; $4afd: $3d
    ld c, a                                       ; $4afe: $4f
    ld b, $00                                     ; $4aff: $06 $00
    ld hl, $4c0a                                  ; $4b01: $21 $0a $4c
    add hl, bc                                    ; $4b04: $09
    ld c, [hl]                                    ; $4b05: $4e
    add hl, bc                                    ; $4b06: $09
    ld de, $c109                                  ; $4b07: $11 $09 $c1
    ld c, $04                                     ; $4b0a: $0e $04

jr_002_4b0c:
    ld a, [hl+]                                   ; $4b0c: $2a
    ld [de], a                                    ; $4b0d: $12
    inc de                                        ; $4b0e: $13
    dec c                                         ; $4b0f: $0d
    jr nz, jr_002_4b0c                            ; $4b10: $20 $fa

    ld de, $c11a                                  ; $4b12: $11 $1a $c1
    ld c, $04                                     ; $4b15: $0e $04

jr_002_4b17:
    ld a, [hl+]                                   ; $4b17: $2a
    ld [de], a                                    ; $4b18: $12
    inc de                                        ; $4b19: $13
    dec c                                         ; $4b1a: $0d
    jr nz, jr_002_4b17                            ; $4b1b: $20 $fa

    pop bc                                        ; $4b1d: $c1
    push bc                                       ; $4b1e: $c5
    ld hl, $a38a                                  ; $4b1f: $21 $8a $a3
    add hl, bc                                    ; $4b22: $09
    ld a, [hl]                                    ; $4b23: $7e
    call Call_000_1972                            ; $4b24: $cd $72 $19
    add $40                                       ; $4b27: $c6 $40
    ld hl, $c10e                                  ; $4b29: $21 $0e $c1
    ld [hl], a                                    ; $4b2c: $77
    add $10                                       ; $4b2d: $c6 $10
    ld hl, $c11f                                  ; $4b2f: $21 $1f $c1
    ld [hl], a                                    ; $4b32: $77
    pop af                                        ; $4b33: $f1
    add $40                                       ; $4b34: $c6 $40
    ld hl, $c10d                                  ; $4b36: $21 $0d $c1
    ld [hl], a                                    ; $4b39: $77
    add $10                                       ; $4b3a: $c6 $10
    ld hl, $c11e                                  ; $4b3c: $21 $1e $c1
    ld [hl], a                                    ; $4b3f: $77
    pop af                                        ; $4b40: $f1
    ld a, $4b                                     ; $4b41: $3e $4b
    ld hl, $c103                                  ; $4b43: $21 $03 $c1
    ld [hl+], a                                   ; $4b46: $22
    inc a                                         ; $4b47: $3c
    ld [hl], a                                    ; $4b48: $77
    ld a, $5b                                     ; $4b49: $3e $5b
    ld hl, $c114                                  ; $4b4b: $21 $14 $c1
    ld [hl+], a                                   ; $4b4e: $22
    inc a                                         ; $4b4f: $3c
    ld [hl], a                                    ; $4b50: $77
    pop bc                                        ; $4b51: $c1
    ld hl, $a07e                                  ; $4b52: $21 $7e $a0
    add hl, bc                                    ; $4b55: $09
    ld a, [hl]                                    ; $4b56: $7e
    call Call_000_1972                            ; $4b57: $cd $72 $19
    add $40                                       ; $4b5a: $c6 $40
    ld hl, $c106                                  ; $4b5c: $21 $06 $c1
    ld [hl], a                                    ; $4b5f: $77
    add $10                                       ; $4b60: $c6 $10
    ld hl, $c117                                  ; $4b62: $21 $17 $c1
    ld [hl], a                                    ; $4b65: $77
    pop af                                        ; $4b66: $f1
    add $40                                       ; $4b67: $c6 $40
    ld hl, $c105                                  ; $4b69: $21 $05 $c1
    ld [hl], a                                    ; $4b6c: $77
    add $10                                       ; $4b6d: $c6 $10
    ld hl, $c116                                  ; $4b6f: $21 $16 $c1
    ld [hl], a                                    ; $4b72: $77
    pop af                                        ; $4b73: $f1
    ld a, $8c                                     ; $4b74: $3e $8c
    ld hl, $c107                                  ; $4b76: $21 $07 $c1
    ld [hl+], a                                   ; $4b79: $22
    ld a, $8e                                     ; $4b7a: $3e $8e
    ld [hl], a                                    ; $4b7c: $77
    ld a, $9c                                     ; $4b7d: $3e $9c
    ld hl, $c118                                  ; $4b7f: $21 $18 $c1
    ld [hl+], a                                   ; $4b82: $22
    ld a, $9e                                     ; $4b83: $3e $9e
    ld [hl], a                                    ; $4b85: $77
    ld a, $8c                                     ; $4b86: $3e $8c
    ld hl, $c10f                                  ; $4b88: $21 $0f $c1
    ld [hl+], a                                   ; $4b8b: $22
    inc a                                         ; $4b8c: $3c
    ld [hl], a                                    ; $4b8d: $77
    ld a, $9c                                     ; $4b8e: $3e $9c
    ld hl, $c120                                  ; $4b90: $21 $20 $c1
    ld [hl+], a                                   ; $4b93: $22
    inc a                                         ; $4b94: $3c
    ld [hl], a                                    ; $4b95: $77

Jump_002_4b96:
    ld a, $00                                     ; $4b96: $3e $00
    ld bc, $c100                                  ; $4b98: $01 $00 $c1
    jp Jump_000_0738                              ; $4b9b: $c3 $38 $07


    inc bc                                        ; $4b9e: $03
    dec h                                         ; $4b9f: $25
    ld b, a                                       ; $4ba0: $47
    sbc b                                         ; $4ba1: $98
    add e                                         ; $4ba2: $83
    ld c, $20                                     ; $4ba3: $0e $20
    add b                                         ; $4ba5: $80
    add c                                         ; $4ba6: $81
    add d                                         ; $4ba7: $82
    add e                                         ; $4ba8: $83
    add h                                         ; $4ba9: $84
    add l                                         ; $4baa: $85
    add [hl]                                      ; $4bab: $86
    add a                                         ; $4bac: $87
    adc b                                         ; $4bad: $88
    adc c                                         ; $4bae: $89
    adc d                                         ; $4baf: $8a
    adc e                                         ; $4bb0: $8b
    daa                                           ; $4bb1: $27
    sbc b                                         ; $4bb2: $98
    and e                                         ; $4bb3: $a3
    ld c, $30                                     ; $4bb4: $0e $30
    sub b                                         ; $4bb6: $90
    sub c                                         ; $4bb7: $91
    sub d                                         ; $4bb8: $92
    sub e                                         ; $4bb9: $93
    sub h                                         ; $4bba: $94
    sub l                                         ; $4bbb: $95
    sub [hl]                                      ; $4bbc: $96
    sub a                                         ; $4bbd: $97
    sbc b                                         ; $4bbe: $98
    sbc c                                         ; $4bbf: $99
    sbc d                                         ; $4bc0: $9a
    sbc e                                         ; $4bc1: $9b
    scf                                           ; $4bc2: $37
    nop                                           ; $4bc3: $00
    sbc c                                         ; $4bc4: $99
    inc bc                                        ; $4bc5: $03
    ld c, $20                                     ; $4bc6: $0e $20
    add b                                         ; $4bc8: $80
    add c                                         ; $4bc9: $81
    add d                                         ; $4bca: $82
    add e                                         ; $4bcb: $83
    add h                                         ; $4bcc: $84
    add l                                         ; $4bcd: $85
    add [hl]                                      ; $4bce: $86
    add a                                         ; $4bcf: $87
    adc b                                         ; $4bd0: $88
    adc c                                         ; $4bd1: $89
    adc d                                         ; $4bd2: $8a
    adc e                                         ; $4bd3: $8b
    daa                                           ; $4bd4: $27
    sbc c                                         ; $4bd5: $99
    inc hl                                        ; $4bd6: $23
    ld c, $30                                     ; $4bd7: $0e $30
    sub b                                         ; $4bd9: $90
    sub c                                         ; $4bda: $91
    sub d                                         ; $4bdb: $92
    sub e                                         ; $4bdc: $93
    sub h                                         ; $4bdd: $94
    sub l                                         ; $4bde: $95
    sub [hl]                                      ; $4bdf: $96
    sub a                                         ; $4be0: $97
    sbc b                                         ; $4be1: $98
    sbc c                                         ; $4be2: $99
    sbc d                                         ; $4be3: $9a
    sbc e                                         ; $4be4: $9b
    scf                                           ; $4be5: $37
    nop                                           ; $4be6: $00
    sbc c                                         ; $4be7: $99
    add e                                         ; $4be8: $83
    ld c, $20                                     ; $4be9: $0e $20
    add b                                         ; $4beb: $80
    add c                                         ; $4bec: $81
    add d                                         ; $4bed: $82
    add e                                         ; $4bee: $83
    add h                                         ; $4bef: $84
    add l                                         ; $4bf0: $85
    add [hl]                                      ; $4bf1: $86
    add a                                         ; $4bf2: $87
    adc b                                         ; $4bf3: $88
    adc c                                         ; $4bf4: $89
    adc d                                         ; $4bf5: $8a
    adc e                                         ; $4bf6: $8b
    daa                                           ; $4bf7: $27
    sbc c                                         ; $4bf8: $99
    and e                                         ; $4bf9: $a3
    ld c, $30                                     ; $4bfa: $0e $30
    sub b                                         ; $4bfc: $90
    sub c                                         ; $4bfd: $91
    sub d                                         ; $4bfe: $92
    sub e                                         ; $4bff: $93
    sub h                                         ; $4c00: $94
    sub l                                         ; $4c01: $95
    sub [hl]                                      ; $4c02: $96
    sub a                                         ; $4c03: $97
    sbc b                                         ; $4c04: $98
    sbc c                                         ; $4c05: $99
    sbc d                                         ; $4c06: $9a
    sbc e                                         ; $4c07: $9b
    scf                                           ; $4c08: $37
    nop                                           ; $4c09: $00
    ld [bc], a                                    ; $4c0a: $02
    add hl, bc                                    ; $4c0b: $09
    ld hl, $4a22                                  ; $4c0c: $21 $22 $4a
    ld c, d                                       ; $4c0f: $4a
    ld sp, $5a32                                  ; $4c10: $31 $32 $5a
    ld e, d                                       ; $4c13: $5a
    ld hl, $2522                                  ; $4c14: $21 $22 $25
    ld h, $31                                     ; $4c17: $26 $31
    ld [hl-], a                                   ; $4c19: $32
    dec [hl]                                      ; $4c1a: $35
    ld [hl], $fa                                  ; $4c1b: $36 $fa
    ld [hl+], a                                   ; $4c1d: $22
    jp $c0e6                                      ; $4c1e: $c3 $e6 $c0


    ret z                                         ; $4c21: $c8

    push af                                       ; $4c22: $f5
    ld a, [$d637]                                 ; $4c23: $fa $37 $d6
    call $4ad5                                    ; $4c26: $cd $d5 $4a
    rst RST_08                                    ; $4c29: $cf
    ld c, $0a                                     ; $4c2a: $0e $0a
    ld a, $02                                     ; $4c2c: $3e $02
    call Call_000_03b6                            ; $4c2e: $cd $b6 $03
    pop af                                        ; $4c31: $f1
    and $40                                       ; $4c32: $e6 $40
    jr z, jr_002_4c46                             ; $4c34: $28 $10

    ld a, [$d637]                                 ; $4c36: $fa $37 $d6
    dec a                                         ; $4c39: $3d
    cp $ff                                        ; $4c3a: $fe $ff
    jr nz, jr_002_4c40                            ; $4c3c: $20 $02

    ld a, $02                                     ; $4c3e: $3e $02

jr_002_4c40:
    ld [$d637], a                                 ; $4c40: $ea $37 $d6
    jp Jump_002_498e                              ; $4c43: $c3 $8e $49


jr_002_4c46:
    ld a, [$d637]                                 ; $4c46: $fa $37 $d6
    inc a                                         ; $4c49: $3c
    cp $03                                        ; $4c4a: $fe $03
    jr nz, jr_002_4c4f                            ; $4c4c: $20 $01

    xor a                                         ; $4c4e: $af

jr_002_4c4f:
    ld [$d637], a                                 ; $4c4f: $ea $37 $d6
    jp Jump_002_498e                              ; $4c52: $c3 $8e $49


    ld a, [$d635]                                 ; $4c55: $fa $35 $d6
    rst RST_18                                    ; $4c58: $df
    ld h, l                                       ; $4c59: $65
    ld c, h                                       ; $4c5a: $4c
    adc [hl]                                      ; $4c5b: $8e
    ld c, l                                       ; $4c5c: $4d
    ld l, c                                       ; $4c5d: $69
    ld c, a                                       ; $4c5e: $4f
    ld [hl], h                                    ; $4c5f: $74
    ld d, b                                       ; $4c60: $50
    call nz, $ff4c                                ; $4c61: $c4 $4c $ff
    ld c, l                                       ; $4c64: $4d
    ld a, $43                                     ; $4c65: $3e $43
    ld [$c32e], a                                 ; $4c67: $ea $2e $c3
    xor a                                         ; $4c6a: $af
    ld [$c32f], a                                 ; $4c6b: $ea $2f $c3
    ld [$c330], a                                 ; $4c6e: $ea $30 $c3
    ld [$c331], a                                 ; $4c71: $ea $31 $c3
    ld [$c332], a                                 ; $4c74: $ea $32 $c3
    ld [$c333], a                                 ; $4c77: $ea $33 $c3
    call Call_000_05a0                            ; $4c7a: $cd $a0 $05
    call Call_000_05ab                            ; $4c7d: $cd $ab $05
    call Call_002_4d63                            ; $4c80: $cd $63 $4d
    call Call_002_5132                            ; $4c83: $cd $32 $51
    call Call_002_51a0                            ; $4c86: $cd $a0 $51
    xor a                                         ; $4c89: $af
    ld [$d838], a                                 ; $4c8a: $ea $38 $d8
    ld [$d839], a                                 ; $4c8d: $ea $39 $d8
    call Call_000_05b6                            ; $4c90: $cd $b6 $05
    ld b, $03                                     ; $4c93: $06 $03
    ld hl, $4e80                                  ; $4c95: $21 $80 $4e
    call Call_000_05de                            ; $4c98: $cd $de $05
    call Call_002_5298                            ; $4c9b: $cd $98 $52
    ld c, $00                                     ; $4c9e: $0e $00
    ld a, $01                                     ; $4ca0: $3e $01
    call Call_000_03b6                            ; $4ca2: $cd $b6 $03
    call Call_000_0399                            ; $4ca5: $cd $99 $03
    ld c, $0f                                     ; $4ca8: $0e $0f
    ld a, $01                                     ; $4caa: $3e $01
    call Call_000_03b6                            ; $4cac: $cd $b6 $03
    call Call_000_04a2                            ; $4caf: $cd $a2 $04
    ld b, $03                                     ; $4cb2: $06 $03
    ld hl, $470c                                  ; $4cb4: $21 $0c $47
    ld c, $0e                                     ; $4cb7: $0e $0e
    ld de, $00a4                                  ; $4cb9: $11 $a4 $00
    call Call_000_040d                            ; $4cbc: $cd $0d $04
    ld hl, $d635                                  ; $4cbf: $21 $35 $d6
    inc [hl]                                      ; $4cc2: $34
    ret                                           ; $4cc3: $c9


    ld a, $43                                     ; $4cc4: $3e $43
    ld [$c32e], a                                 ; $4cc6: $ea $2e $c3
    xor a                                         ; $4cc9: $af
    ld [$c32f], a                                 ; $4cca: $ea $2f $c3
    ld [$c330], a                                 ; $4ccd: $ea $30 $c3
    ld [$c331], a                                 ; $4cd0: $ea $31 $c3
    ld [$c332], a                                 ; $4cd3: $ea $32 $c3
    ld [$c333], a                                 ; $4cd6: $ea $33 $c3
    call Call_000_05a0                            ; $4cd9: $cd $a0 $05
    call Call_000_05ab                            ; $4cdc: $cd $ab $05
    call Call_002_4d63                            ; $4cdf: $cd $63 $4d
    xor a                                         ; $4ce2: $af
    ld [$d838], a                                 ; $4ce3: $ea $38 $d8
    ld a, $01                                     ; $4ce6: $3e $01
    ld [$d839], a                                 ; $4ce8: $ea $39 $d8
    ld a, [$d805]                                 ; $4ceb: $fa $05 $d8
    and a                                         ; $4cee: $a7
    jr z, jr_002_4cf4                             ; $4cef: $28 $03

    call Call_002_50b3                            ; $4cf1: $cd $b3 $50

jr_002_4cf4:
    call Call_002_5132                            ; $4cf4: $cd $32 $51
    ld a, [$d805]                                 ; $4cf7: $fa $05 $d8
    and a                                         ; $4cfa: $a7
    jr z, jr_002_4d02                             ; $4cfb: $28 $05

    call Call_002_5174                            ; $4cfd: $cd $74 $51
    jr jr_002_4d05                                ; $4d00: $18 $03

jr_002_4d02:
    call Call_002_51a0                            ; $4d02: $cd $a0 $51

jr_002_4d05:
    call Call_000_05b6                            ; $4d05: $cd $b6 $05
    ld b, $03                                     ; $4d08: $06 $03
    ld hl, $4e80                                  ; $4d0a: $21 $80 $4e
    call Call_000_05de                            ; $4d0d: $cd $de $05
    ld a, [$d838]                                 ; $4d10: $fa $38 $d8
    and a                                         ; $4d13: $a7
    jr nz, jr_002_4d1b                            ; $4d14: $20 $05

    call Call_002_5298                            ; $4d16: $cd $98 $52
    jr jr_002_4d23                                ; $4d19: $18 $08

jr_002_4d1b:
    ld b, $03                                     ; $4d1b: $06 $03
    ld hl, $4ec2                                  ; $4d1d: $21 $c2 $4e
    call Call_000_05de                            ; $4d20: $cd $de $05

jr_002_4d23:
    ld c, $00                                     ; $4d23: $0e $00
    ld a, $01                                     ; $4d25: $3e $01
    call Call_000_03b6                            ; $4d27: $cd $b6 $03
    call Call_000_0399                            ; $4d2a: $cd $99 $03
    ld c, $0f                                     ; $4d2d: $0e $0f
    ld a, $01                                     ; $4d2f: $3e $01
    call Call_000_03b6                            ; $4d31: $cd $b6 $03
    call Call_000_04a2                            ; $4d34: $cd $a2 $04
    ld b, $03                                     ; $4d37: $06 $03
    ld hl, $470c                                  ; $4d39: $21 $0c $47
    ld c, $0e                                     ; $4d3c: $0e $0e
    ld de, $00a4                                  ; $4d3e: $11 $a4 $00
    call Call_000_040d                            ; $4d41: $cd $0d $04
    ld a, [$d838]                                 ; $4d44: $fa $38 $d8
    and a                                         ; $4d47: $a7
    jr z, jr_002_4d5d                             ; $4d48: $28 $13

    xor a                                         ; $4d4a: $af
    ld [$d83e], a                                 ; $4d4b: $ea $3e $d8
    ld [$d83f], a                                 ; $4d4e: $ea $3f $d8
    ld [$d840], a                                 ; $4d51: $ea $40 $d8
    ld [$d841], a                                 ; $4d54: $ea $41 $d8
    ld a, $05                                     ; $4d57: $3e $05
    ld [$d635], a                                 ; $4d59: $ea $35 $d6
    ret                                           ; $4d5c: $c9


jr_002_4d5d:
    ld a, $01                                     ; $4d5d: $3e $01
    ld [$d635], a                                 ; $4d5f: $ea $35 $d6
    ret                                           ; $4d62: $c9


Call_002_4d63:
    ld a, $0b                                     ; $4d63: $3e $0b
    ld hl, $5000                                  ; $4d65: $21 $00 $50
    ld de, $8000                                  ; $4d68: $11 $00 $80
    ld bc, $0300                                  ; $4d6b: $01 $00 $03
    call Call_000_04e4                            ; $4d6e: $cd $e4 $04
    ld a, $09                                     ; $4d71: $3e $09
    ld hl, $6800                                  ; $4d73: $21 $00 $68
    ld de, $8800                                  ; $4d76: $11 $00 $88
    ld bc, $1000                                  ; $4d79: $01 $00 $10
    call Call_000_04e4                            ; $4d7c: $cd $e4 $04
    ld a, $0c                                     ; $4d7f: $3e $0c
    ld hl, $7c00                                  ; $4d81: $21 $00 $7c
    ld de, $9800                                  ; $4d84: $11 $00 $98
    ld bc, $0400                                  ; $4d87: $01 $00 $04
    call Call_000_04e4                            ; $4d8a: $cd $e4 $04
    ret                                           ; $4d8d: $c9


    call Call_002_5298                            ; $4d8e: $cd $98 $52
    call Call_002_4ddc                            ; $4d91: $cd $dc $4d
    ld a, [$c31e]                                 ; $4d94: $fa $1e $c3
    and $09                                       ; $4d97: $e6 $09
    jr z, jr_002_4db8                             ; $4d99: $28 $1d

    ld c, $03                                     ; $4d9b: $0e $03
    ld a, $02                                     ; $4d9d: $3e $02
    call Call_000_03b6                            ; $4d9f: $cd $b6 $03
    call Call_000_05c5                            ; $4da2: $cd $c5 $05
    rst RST_08                                    ; $4da5: $cf
    xor a                                         ; $4da6: $af
    ld [$d63e], a                                 ; $4da7: $ea $3e $d6
    call Call_002_4ddc                            ; $4daa: $cd $dc $4d
    call Call_000_05c5                            ; $4dad: $cd $c5 $05
    call Call_002_4ddc                            ; $4db0: $cd $dc $4d
    ld hl, $d635                                  ; $4db3: $21 $35 $d6
    inc [hl]                                      ; $4db6: $34
    ret                                           ; $4db7: $c9


jr_002_4db8:
    ld a, [$c31e]                                 ; $4db8: $fa $1e $c3
    and $02                                       ; $4dbb: $e6 $02
    ret z                                         ; $4dbd: $c8

    ld c, $04                                     ; $4dbe: $0e $04
    ld a, $02                                     ; $4dc0: $3e $02
    call Call_000_03b6                            ; $4dc2: $cd $b6 $03
    call Call_000_05c5                            ; $4dc5: $cd $c5 $05
    rst RST_08                                    ; $4dc8: $cf
    xor a                                         ; $4dc9: $af
    ld [$d63e], a                                 ; $4dca: $ea $3e $d6
    call Call_002_4ddc                            ; $4dcd: $cd $dc $4d
    call Call_000_05c5                            ; $4dd0: $cd $c5 $05
    call Call_002_4ddc                            ; $4dd3: $cd $dc $4d
    ld a, $03                                     ; $4dd6: $3e $03
    ld [$d635], a                                 ; $4dd8: $ea $35 $d6
    ret                                           ; $4ddb: $c9


Call_002_4ddc:
    ld a, [$d838]                                 ; $4ddc: $fa $38 $d8
    and a                                         ; $4ddf: $a7
    ret z                                         ; $4de0: $c8

    ld a, [$d63e]                                 ; $4de1: $fa $3e $d6
    inc a                                         ; $4de4: $3c
    cp $28                                        ; $4de5: $fe $28
    jr c, jr_002_4dea                             ; $4de7: $38 $01

    xor a                                         ; $4de9: $af

jr_002_4dea:
    ld [$d63e], a                                 ; $4dea: $ea $3e $d6
    cp $16                                        ; $4ded: $fe $16
    ret nc                                        ; $4def: $d0

    xor a                                         ; $4df0: $af
    call Call_002_4f40                            ; $4df1: $cd $40 $4f
    ld a, $01                                     ; $4df4: $3e $01
    call Call_002_4f40                            ; $4df6: $cd $40 $4f
    ld a, $02                                     ; $4df9: $3e $02
    call Call_002_4f40                            ; $4dfb: $cd $40 $4f
    ret                                           ; $4dfe: $c9


    ld b, $03                                     ; $4dff: $06 $03
    ld hl, $4ec2                                  ; $4e01: $21 $c2 $4e
    call Call_000_05de                            ; $4e04: $cd $de $05
    call Call_002_4ee1                            ; $4e07: $cd $e1 $4e
    ld hl, $c33a                                  ; $4e0a: $21 $3a $c3
    ld a, [$d83e]                                 ; $4e0d: $fa $3e $d8
    and a                                         ; $4e10: $a7
    jr nz, jr_002_4e17                            ; $4e11: $20 $04

    bit 3, [hl]                                   ; $4e13: $cb $5e
    jr z, jr_002_4e1d                             ; $4e15: $28 $06

jr_002_4e17:
    push af                                       ; $4e17: $f5
    xor a                                         ; $4e18: $af
    call Call_002_4f40                            ; $4e19: $cd $40 $4f
    pop af                                        ; $4e1c: $f1

jr_002_4e1d:
    cp $01                                        ; $4e1d: $fe $01
    jr nz, jr_002_4e25                            ; $4e1f: $20 $04

    bit 3, [hl]                                   ; $4e21: $cb $5e
    jr z, jr_002_4e2c                             ; $4e23: $28 $07

jr_002_4e25:
    push af                                       ; $4e25: $f5
    ld a, $01                                     ; $4e26: $3e $01
    call Call_002_4f40                            ; $4e28: $cd $40 $4f
    pop af                                        ; $4e2b: $f1

jr_002_4e2c:
    cp $02                                        ; $4e2c: $fe $02
    jr nz, jr_002_4e34                            ; $4e2e: $20 $04

    bit 3, [hl]                                   ; $4e30: $cb $5e
    jr z, jr_002_4e3b                             ; $4e32: $28 $07

jr_002_4e34:
    push af                                       ; $4e34: $f5
    ld a, $02                                     ; $4e35: $3e $02
    call Call_002_4f40                            ; $4e37: $cd $40 $4f
    pop af                                        ; $4e3a: $f1

jr_002_4e3b:
    ld a, [$c31e]                                 ; $4e3b: $fa $1e $c3
    bit 3, a                                      ; $4e3e: $cb $5f
    jr nz, jr_002_4e4b                            ; $4e40: $20 $09

    bit 0, a                                      ; $4e42: $cb $47
    ret z                                         ; $4e44: $c8

    ld a, [$d83e]                                 ; $4e45: $fa $3e $d8
    cp $03                                        ; $4e48: $fe $03
    ret nz                                        ; $4e4a: $c0

jr_002_4e4b:
    ld a, [$d838]                                 ; $4e4b: $fa $38 $d8
    ld c, a                                       ; $4e4e: $4f
    sla a                                         ; $4e4f: $cb $27
    sla a                                         ; $4e51: $cb $27
    sla a                                         ; $4e53: $cb $27
    sub c                                         ; $4e55: $91
    ld c, a                                       ; $4e56: $4f
    ld b, $00                                     ; $4e57: $06 $00
    ld hl, $a03f                                  ; $4e59: $21 $3f $a0
    add hl, bc                                    ; $4e5c: $09
    ld e, l                                       ; $4e5d: $5d
    ld d, h                                       ; $4e5e: $54
    ld a, [$d83f]                                 ; $4e5f: $fa $3f $d8
    sla a                                         ; $4e62: $cb $27
    ld c, a                                       ; $4e64: $4f
    ld hl, $4e8d                                  ; $4e65: $21 $8d $4e
    add hl, bc                                    ; $4e68: $09
    ld a, [hl]                                    ; $4e69: $7e
    ld [de], a                                    ; $4e6a: $12
    inc de                                        ; $4e6b: $13
    ld a, [$d840]                                 ; $4e6c: $fa $40 $d8
    sla a                                         ; $4e6f: $cb $27
    ld c, a                                       ; $4e71: $4f
    ld hl, $4e8d                                  ; $4e72: $21 $8d $4e
    add hl, bc                                    ; $4e75: $09
    ld a, [hl]                                    ; $4e76: $7e
    ld [de], a                                    ; $4e77: $12
    inc de                                        ; $4e78: $13
    ld a, [$d841]                                 ; $4e79: $fa $41 $d8
    sla a                                         ; $4e7c: $cb $27
    ld c, a                                       ; $4e7e: $4f
    ld hl, $4e8d                                  ; $4e7f: $21 $8d $4e
    add hl, bc                                    ; $4e82: $09
    ld a, [hl]                                    ; $4e83: $7e
    ld [de], a                                    ; $4e84: $12
    ld a, $01                                     ; $4e85: $3e $01
    ld [$d635], a                                 ; $4e87: $ea $35 $d6
    jp Jump_000_1b1f                              ; $4e8a: $c3 $1f $1b


    ld b, c                                       ; $4e8d: $41
    ld h, h                                       ; $4e8e: $64
    ld b, d                                       ; $4e8f: $42
    ld h, l                                       ; $4e90: $65
    ld b, e                                       ; $4e91: $43
    ld h, [hl]                                    ; $4e92: $66
    ld b, h                                       ; $4e93: $44
    ld h, a                                       ; $4e94: $67
    ld b, l                                       ; $4e95: $45
    ld l, b                                       ; $4e96: $68
    ld b, [hl]                                    ; $4e97: $46
    ld l, c                                       ; $4e98: $69
    ld b, a                                       ; $4e99: $47
    ld l, d                                       ; $4e9a: $6a
    ld c, b                                       ; $4e9b: $48
    ld l, e                                       ; $4e9c: $6b
    ld c, c                                       ; $4e9d: $49
    ld l, h                                       ; $4e9e: $6c
    ld c, d                                       ; $4e9f: $4a
    ld l, l                                       ; $4ea0: $6d
    ld c, e                                       ; $4ea1: $4b
    ld l, [hl]                                    ; $4ea2: $6e
    ld c, h                                       ; $4ea3: $4c
    ld l, a                                       ; $4ea4: $6f
    ld c, l                                       ; $4ea5: $4d
    ld [hl], b                                    ; $4ea6: $70
    ld c, [hl]                                    ; $4ea7: $4e
    ld [hl], c                                    ; $4ea8: $71
    ld c, a                                       ; $4ea9: $4f
    ld [hl], d                                    ; $4eaa: $72
    ld d, b                                       ; $4eab: $50
    ld [hl], e                                    ; $4eac: $73
    ld d, c                                       ; $4ead: $51
    ld [hl], h                                    ; $4eae: $74
    ld d, d                                       ; $4eaf: $52
    ld [hl], l                                    ; $4eb0: $75
    ld d, e                                       ; $4eb1: $53
    halt                                          ; $4eb2: $76
    ld d, h                                       ; $4eb3: $54
    ld [hl], a                                    ; $4eb4: $77
    ld d, l                                       ; $4eb5: $55
    ld a, b                                       ; $4eb6: $78
    ld d, [hl]                                    ; $4eb7: $56
    ld a, c                                       ; $4eb8: $79
    ld d, a                                       ; $4eb9: $57
    ld a, d                                       ; $4eba: $7a
    ld e, b                                       ; $4ebb: $58
    ld a, e                                       ; $4ebc: $7b
    ld e, c                                       ; $4ebd: $59
    ld a, h                                       ; $4ebe: $7c
    ld e, d                                       ; $4ebf: $5a
    ld a, l                                       ; $4ec0: $7d
    jr nc, @+$53                                  ; $4ec1: $30 $51

    ld sp, $3252                                  ; $4ec3: $31 $52 $32
    ld d, e                                       ; $4ec6: $53
    inc sp                                        ; $4ec7: $33
    ld d, h                                       ; $4ec8: $54
    inc [hl]                                      ; $4ec9: $34
    ld d, l                                       ; $4eca: $55
    dec [hl]                                      ; $4ecb: $35
    ld d, [hl]                                    ; $4ecc: $56
    ld [hl], $57                                  ; $4ecd: $36 $57
    scf                                           ; $4ecf: $37
    ld e, b                                       ; $4ed0: $58
    jr c, jr_002_4f2c                             ; $4ed1: $38 $59

    add hl, sp                                    ; $4ed3: $39
    ld e, d                                       ; $4ed4: $5a
    jr nz, jr_002_4f3a                            ; $4ed5: $20 $63

    daa                                           ; $4ed7: $27
    ld a, [hl]                                    ; $4ed8: $7e
    ld [hl+], a                                   ; $4ed9: $22
    ld a, a                                       ; $4eda: $7f
    dec l                                         ; $4edb: $2d
    add b                                         ; $4edc: $80
    ld l, $81                                     ; $4edd: $2e $81
    inc l                                         ; $4edf: $2c
    add d                                         ; $4ee0: $82

Call_002_4ee1:
    ld a, [$c322]                                 ; $4ee1: $fa $22 $c3
    and $c0                                       ; $4ee4: $e6 $c0
    jr z, jr_002_4f13                             ; $4ee6: $28 $2b

    ld c, $0a                                     ; $4ee8: $0e $0a
    ld a, $02                                     ; $4eea: $3e $02
    call Call_000_03b6                            ; $4eec: $cd $b6 $03
    ld a, [$d83e]                                 ; $4eef: $fa $3e $d8
    ld c, a                                       ; $4ef2: $4f
    ld b, $00                                     ; $4ef3: $06 $00
    ld hl, $d83f                                  ; $4ef5: $21 $3f $d8
    add hl, bc                                    ; $4ef8: $09
    ld a, [$c322]                                 ; $4ef9: $fa $22 $c3
    bit 6, a                                      ; $4efc: $cb $77
    jr z, jr_002_4f0a                             ; $4efe: $28 $0a

    ld a, [hl]                                    ; $4f00: $7e
    dec a                                         ; $4f01: $3d
    cp $ff                                        ; $4f02: $fe $ff
    jr nz, jr_002_4f08                            ; $4f04: $20 $02

    ld a, $29                                     ; $4f06: $3e $29

jr_002_4f08:
    ld [hl], a                                    ; $4f08: $77
    ret                                           ; $4f09: $c9


jr_002_4f0a:
    ld a, [hl]                                    ; $4f0a: $7e
    inc a                                         ; $4f0b: $3c
    cp $2a                                        ; $4f0c: $fe $2a
    jr nz, jr_002_4f11                            ; $4f0e: $20 $01

    xor a                                         ; $4f10: $af

jr_002_4f11:
    ld [hl], a                                    ; $4f11: $77
    ret                                           ; $4f12: $c9


jr_002_4f13:
    ld a, [$c31e]                                 ; $4f13: $fa $1e $c3
    bit 0, a                                      ; $4f16: $cb $47
    jr z, jr_002_4f2c                             ; $4f18: $28 $12

    ld c, $03                                     ; $4f1a: $0e $03
    ld a, $02                                     ; $4f1c: $3e $02
    call Call_000_03b6                            ; $4f1e: $cd $b6 $03
    ld a, [$d83e]                                 ; $4f21: $fa $3e $d8
    cp $03                                        ; $4f24: $fe $03
    ret z                                         ; $4f26: $c8

    inc a                                         ; $4f27: $3c
    ld [$d83e], a                                 ; $4f28: $ea $3e $d8
    ret                                           ; $4f2b: $c9


jr_002_4f2c:
    bit 1, a                                      ; $4f2c: $cb $4f
    ret z                                         ; $4f2e: $c8

    ld c, $04                                     ; $4f2f: $0e $04
    ld a, $02                                     ; $4f31: $3e $02
    call Call_000_03b6                            ; $4f33: $cd $b6 $03
    ld a, [$d83e]                                 ; $4f36: $fa $3e $d8
    and a                                         ; $4f39: $a7

jr_002_4f3a:
    ret z                                         ; $4f3a: $c8

    dec a                                         ; $4f3b: $3d
    ld [$d83e], a                                 ; $4f3c: $ea $3e $d8
    ret                                           ; $4f3f: $c9


Call_002_4f40:
    push hl                                       ; $4f40: $e5
    ld c, a                                       ; $4f41: $4f
    ld b, $00                                     ; $4f42: $06 $00
    push bc                                       ; $4f44: $c5
    ld hl, $d83f                                  ; $4f45: $21 $3f $d8
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
    ld a, [$d838]                                 ; $4f5b: $fa $38 $d8
    swap a                                        ; $4f5e: $cb $37
    add $10                                       ; $4f60: $c6 $10
    ld c, a                                       ; $4f62: $4f
    ld a, [hl]                                    ; $4f63: $7e
    call Call_000_20ce                            ; $4f64: $cd $ce $20
    pop hl                                        ; $4f67: $e1
    ret                                           ; $4f68: $c9


    ld bc, $003c                                  ; $4f69: $01 $3c $00
    call Call_000_05fa                            ; $4f6c: $cd $fa $05
    ld a, $05                                     ; $4f6f: $3e $05
    call Call_000_03b6                            ; $4f71: $cd $b6 $03
    ld c, $00                                     ; $4f74: $0e $00
    ld a, $01                                     ; $4f76: $3e $01
    call Call_000_03b6                            ; $4f78: $cd $b6 $03
    call Call_000_0399                            ; $4f7b: $cd $99 $03
    ld c, $00                                     ; $4f7e: $0e $00
    ld a, $01                                     ; $4f80: $3e $01
    call Call_000_03b6                            ; $4f82: $cd $b6 $03
    ld b, $03                                     ; $4f85: $06 $03
    ld hl, $4717                                  ; $4f87: $21 $17 $47
    ld c, $0e                                     ; $4f8a: $0e $0e
    ld de, $00b3                                  ; $4f8c: $11 $b3 $00
    call Call_000_044e                            ; $4f8f: $cd $4e $04
    call Call_000_0483                            ; $4f92: $cd $83 $04

jr_002_4f95:
    ld a, [$a001]                                 ; $4f95: $fa $01 $a0
    ld c, a                                       ; $4f98: $4f
    ld b, $00                                     ; $4f99: $06 $00
    ld hl, $a002                                  ; $4f9b: $21 $02 $a0
    add hl, bc                                    ; $4f9e: $09
    ld a, [hl]                                    ; $4f9f: $7e
    cp $40                                        ; $4fa0: $fe $40
    jr c, jr_002_4fc6                             ; $4fa2: $38 $22

    ld b, $02                                     ; $4fa4: $06 $02
    ld hl, $5267                                  ; $4fa6: $21 $67 $52
    call Call_000_05de                            ; $4fa9: $cd $de $05
    ld b, $02                                     ; $4fac: $06 $02
    ld hl, $5274                                  ; $4fae: $21 $74 $52
    call Call_000_05de                            ; $4fb1: $cd $de $05
    ld b, $02                                     ; $4fb4: $06 $02
    ld hl, $5274                                  ; $4fb6: $21 $74 $52
    call Call_000_05de                            ; $4fb9: $cd $de $05
    ld b, $02                                     ; $4fbc: $06 $02
    ld hl, $5274                                  ; $4fbe: $21 $74 $52
    call Call_000_05de                            ; $4fc1: $cd $de $05
    jr jr_002_4f95                                ; $4fc4: $18 $cf

jr_002_4fc6:
    sla a                                         ; $4fc6: $cb $27
    ld c, a                                       ; $4fc8: $4f
    ld hl, $4ff4                                  ; $4fc9: $21 $f4 $4f
    add hl, bc                                    ; $4fcc: $09
    ld a, [hl+]                                   ; $4fcd: $2a
    ld [$d807], a                                 ; $4fce: $ea $07 $d8
    ld a, [hl]                                    ; $4fd1: $7e
    ld [$d808], a                                 ; $4fd2: $ea $08 $d8
    ld a, [$a001]                                 ; $4fd5: $fa $01 $a0
    inc a                                         ; $4fd8: $3c
    ld [$a001], a                                 ; $4fd9: $ea $01 $a0
    cp $40                                        ; $4fdc: $fe $40
    jr nz, jr_002_4fe8                            ; $4fde: $20 $08

    ld b, $02                                     ; $4fe0: $06 $02
    ld hl, $5274                                  ; $4fe2: $21 $74 $52
    call Call_000_05de                            ; $4fe5: $cd $de $05

jr_002_4fe8:
    xor a                                         ; $4fe8: $af
    ld [$d635], a                                 ; $4fe9: $ea $35 $d6
    ld a, $09                                     ; $4fec: $3e $09
    ld [$d634], a                                 ; $4fee: $ea $34 $d6
    jp Jump_000_1b1f                              ; $4ff1: $c3 $1f $1b


    pop bc                                        ; $4ff4: $c1
    nop                                           ; $4ff5: $00
    jp nz, $c300                                  ; $4ff6: $c2 $00 $c3

    nop                                           ; $4ff9: $00
    call nz, $c500                                ; $4ffa: $c4 $00 $c5
    nop                                           ; $4ffd: $00
    add $00                                       ; $4ffe: $c6 $00
    rst RST_00                                    ; $5000: $c7
    nop                                           ; $5001: $00
    ret z                                         ; $5002: $c8

    nop                                           ; $5003: $00
    ret                                           ; $5004: $c9


    nop                                           ; $5005: $00
    jp z, $cb00                                   ; $5006: $ca $00 $cb

    nop                                           ; $5009: $00
    call z, $cd00                                 ; $500a: $cc $00 $cd
    nop                                           ; $500d: $00
    adc $00                                       ; $500e: $ce $00
    rst RST_08                                    ; $5010: $cf
    nop                                           ; $5011: $00
    ret nc                                        ; $5012: $d0

    nop                                           ; $5013: $00
    pop de                                        ; $5014: $d1
    nop                                           ; $5015: $00
    jp nc, $d300                                  ; $5016: $d2 $00 $d3

    nop                                           ; $5019: $00
    call nc, $d500                                ; $501a: $d4 $00 $d5
    nop                                           ; $501d: $00
    sub $00                                       ; $501e: $d6 $00
    rst RST_10                                    ; $5020: $d7
    nop                                           ; $5021: $00
    ret c                                         ; $5022: $d8

    nop                                           ; $5023: $00
    reti                                          ; $5024: $d9


    nop                                           ; $5025: $00
    jp c, $db00                                   ; $5026: $da $00 $db

    nop                                           ; $5029: $00
    call c, $dd00                                 ; $502a: $dc $00 $dd
    nop                                           ; $502d: $00
    sbc $00                                       ; $502e: $de $00
    rst RST_18                                    ; $5030: $df
    nop                                           ; $5031: $00
    ldh [rP1], a                                  ; $5032: $e0 $00
    pop hl                                        ; $5034: $e1
    nop                                           ; $5035: $00
    ldh [c], a                                    ; $5036: $e2
    nop                                           ; $5037: $00
    db $e3                                        ; $5038: $e3
    nop                                           ; $5039: $00
    db $e4                                        ; $503a: $e4
    nop                                           ; $503b: $00
    push hl                                       ; $503c: $e5
    nop                                           ; $503d: $00
    and $00                                       ; $503e: $e6 $00
    rst RST_20                                    ; $5040: $e7
    nop                                           ; $5041: $00
    add sp, $00                                   ; $5042: $e8 $00
    jp hl                                         ; $5044: $e9


    nop                                           ; $5045: $00
    ld [$eb00], a                                 ; $5046: $ea $00 $eb
    nop                                           ; $5049: $00
    db $ec                                        ; $504a: $ec
    nop                                           ; $504b: $00
    db $ed                                        ; $504c: $ed
    nop                                           ; $504d: $00
    xor $00                                       ; $504e: $ee $00
    rst RST_28                                    ; $5050: $ef
    nop                                           ; $5051: $00
    ldh a, [rP1]                                  ; $5052: $f0 $00
    pop af                                        ; $5054: $f1
    nop                                           ; $5055: $00
    ldh a, [c]                                    ; $5056: $f2
    nop                                           ; $5057: $00
    di                                            ; $5058: $f3
    nop                                           ; $5059: $00
    db $f4                                        ; $505a: $f4
    nop                                           ; $505b: $00
    push af                                       ; $505c: $f5
    nop                                           ; $505d: $00
    or $00                                        ; $505e: $f6 $00
    rst RST_30                                    ; $5060: $f7
    nop                                           ; $5061: $00
    ld hl, sp+$00                                 ; $5062: $f8 $00
    ld sp, hl                                     ; $5064: $f9
    nop                                           ; $5065: $00
    ld a, [$fb00]                                 ; $5066: $fa $00 $fb
    nop                                           ; $5069: $00
    db $fc                                        ; $506a: $fc
    nop                                           ; $506b: $00
    db $fd                                        ; $506c: $fd
    nop                                           ; $506d: $00
    cp $00                                        ; $506e: $fe $00
    rst RST_38                                    ; $5070: $ff
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    ld bc, $eaaf                                  ; $5073: $01 $af $ea
    ld a, $d6                                     ; $5076: $3e $d6
    call Call_002_4ddc                            ; $5078: $cd $dc $4d
    ld bc, $003c                                  ; $507b: $01 $3c $00
    call Call_000_05fa                            ; $507e: $cd $fa $05
    ld a, $05                                     ; $5081: $3e $05
    call Call_000_03b6                            ; $5083: $cd $b6 $03
    ld c, $00                                     ; $5086: $0e $00
    ld a, $01                                     ; $5088: $3e $01
    call Call_000_03b6                            ; $508a: $cd $b6 $03
    call Call_000_0399                            ; $508d: $cd $99 $03
    ld c, $00                                     ; $5090: $0e $00
    ld a, $01                                     ; $5092: $3e $01
    call Call_000_03b6                            ; $5094: $cd $b6 $03
    ld b, $03                                     ; $5097: $06 $03
    ld hl, $4717                                  ; $5099: $21 $17 $47
    ld c, $0e                                     ; $509c: $0e $0e
    ld de, $00b3                                  ; $509e: $11 $b3 $00
    call Call_000_044e                            ; $50a1: $cd $4e $04
    call Call_000_0483                            ; $50a4: $cd $83 $04
    xor a                                         ; $50a7: $af
    ld [$d635], a                                 ; $50a8: $ea $35 $d6
    ld a, $03                                     ; $50ab: $3e $03
    ld [$d634], a                                 ; $50ad: $ea $34 $d6
    jp Jump_000_1b1f                              ; $50b0: $c3 $1f $1b


Call_002_50b3:
    ld a, [$d80a]                                 ; $50b3: $fa $0a $d8
    ld b, a                                       ; $50b6: $47
    ld a, [$d809]                                 ; $50b7: $fa $09 $d8
    ld c, a                                       ; $50ba: $4f
    ld a, [$d80c]                                 ; $50bb: $fa $0c $d8
    ld d, a                                       ; $50be: $57
    ld a, [$d80b]                                 ; $50bf: $fa $0b $d8
    ld e, a                                       ; $50c2: $5f
    ld hl, $a042                                  ; $50c3: $21 $42 $a0
    xor a                                         ; $50c6: $af

jr_002_50c7:
    push af                                       ; $50c7: $f5
    push hl                                       ; $50c8: $e5
    ld a, [hl+]                                   ; $50c9: $2a
    cp b                                          ; $50ca: $b8
    jr c, jr_002_50e1                             ; $50cb: $38 $14

    jr nz, jr_002_50f5                            ; $50cd: $20 $26

    ld a, [hl+]                                   ; $50cf: $2a
    cp c                                          ; $50d0: $b9
    jr c, jr_002_50e1                             ; $50d1: $38 $0e

    jr nz, jr_002_50f5                            ; $50d3: $20 $20

    ld a, [hl+]                                   ; $50d5: $2a
    cp d                                          ; $50d6: $ba
    jr c, jr_002_50e1                             ; $50d7: $38 $08

    jr nz, jr_002_50f5                            ; $50d9: $20 $1a

    ld a, [hl+]                                   ; $50db: $2a
    cp e                                          ; $50dc: $bb
    jr c, jr_002_50e1                             ; $50dd: $38 $02

    jr nz, jr_002_50f5                            ; $50df: $20 $14

jr_002_50e1:
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
    jr nz, jr_002_50c7                            ; $50ee: $20 $d7

    xor a                                         ; $50f0: $af
    ld [$d838], a                                 ; $50f1: $ea $38 $d8
    ret                                           ; $50f4: $c9


jr_002_50f5:
    pop hl                                        ; $50f5: $e1
    pop af                                        ; $50f6: $f1
    inc a                                         ; $50f7: $3c
    ld [$d838], a                                 ; $50f8: $ea $38 $d8
    ld c, a                                       ; $50fb: $4f
    ld a, $05                                     ; $50fc: $3e $05
    sub c                                         ; $50fe: $91
    ld c, a                                       ; $50ff: $4f
    sla a                                         ; $5100: $cb $27
    sla a                                         ; $5102: $cb $27
    sla a                                         ; $5104: $cb $27
    sub c                                         ; $5106: $91
    jr z, jr_002_511c                             ; $5107: $28 $13

    ld c, a                                       ; $5109: $4f
    ld b, $00                                     ; $510a: $06 $00
    push hl                                       ; $510c: $e5
    ld hl, $a05d                                  ; $510d: $21 $5d $a0
    ld de, $a064                                  ; $5110: $11 $64 $a0

jr_002_5113:
    ld a, [hl-]                                   ; $5113: $3a
    ld [de], a                                    ; $5114: $12
    dec de                                        ; $5115: $1b
    dec bc                                        ; $5116: $0b
    ld a, c                                       ; $5117: $79
    or b                                          ; $5118: $b0
    jr nz, jr_002_5113                            ; $5119: $20 $f8

    pop hl                                        ; $511b: $e1

jr_002_511c:
    ld a, [$d80a]                                 ; $511c: $fa $0a $d8
    ld [hl+], a                                   ; $511f: $22
    ld a, [$d809]                                 ; $5120: $fa $09 $d8
    ld [hl+], a                                   ; $5123: $22
    ld a, [$d80c]                                 ; $5124: $fa $0c $d8
    ld [hl+], a                                   ; $5127: $22
    ld a, [$d80b]                                 ; $5128: $fa $0b $d8
    ld [hl+], a                                   ; $512b: $22
    ld a, $6f                                     ; $512c: $3e $6f
    ld [hl+], a                                   ; $512e: $22
    ld [hl+], a                                   ; $512f: $22
    ld [hl], a                                    ; $5130: $77
    ret                                           ; $5131: $c9


Call_002_5132:
    ld hl, $a042                                  ; $5132: $21 $42 $a0
    ld de, $9300                                  ; $5135: $11 $00 $93
    ld a, $05                                     ; $5138: $3e $05

jr_002_513a:
    push af                                       ; $513a: $f5
    ld a, [hl+]                                   ; $513b: $2a
    or $30                                        ; $513c: $f6 $30
    call Call_002_51c0                            ; $513e: $cd $c0 $51
    ld a, [hl+]                                   ; $5141: $2a
    or $30                                        ; $5142: $f6 $30
    call Call_002_51c0                            ; $5144: $cd $c0 $51
    ld a, $10                                     ; $5147: $3e $10
    add e                                         ; $5149: $83
    ld e, a                                       ; $514a: $5f
    ld a, $00                                     ; $514b: $3e $00
    adc d                                         ; $514d: $8a
    ld d, a                                       ; $514e: $57
    ld a, [hl+]                                   ; $514f: $2a
    or $30                                        ; $5150: $f6 $30
    call Call_002_51c0                            ; $5152: $cd $c0 $51
    ld a, [hl+]                                   ; $5155: $2a
    or $30                                        ; $5156: $f6 $30
    call Call_002_51c0                            ; $5158: $cd $c0 $51
    ld a, [hl+]                                   ; $515b: $2a
    call Call_002_51c0                            ; $515c: $cd $c0 $51
    ld a, [hl+]                                   ; $515f: $2a
    call Call_002_51c0                            ; $5160: $cd $c0 $51
    ld a, [hl+]                                   ; $5163: $2a
    call Call_002_51c0                            ; $5164: $cd $c0 $51
    ld a, $80                                     ; $5167: $3e $80
    add e                                         ; $5169: $83
    ld e, a                                       ; $516a: $5f
    ld a, $00                                     ; $516b: $3e $00
    adc d                                         ; $516d: $8a
    ld d, a                                       ; $516e: $57
    pop af                                        ; $516f: $f1
    dec a                                         ; $5170: $3d
    jr nz, jr_002_513a                            ; $5171: $20 $c7

    ret                                           ; $5173: $c9


Call_002_5174:
    ld de, $8800                                  ; $5174: $11 $00 $88
    ld a, [$d80a]                                 ; $5177: $fa $0a $d8
    or $30                                        ; $517a: $f6 $30
    call Call_002_51c0                            ; $517c: $cd $c0 $51
    ld a, [$d809]                                 ; $517f: $fa $09 $d8
    or $30                                        ; $5182: $f6 $30
    call Call_002_51c0                            ; $5184: $cd $c0 $51
    ld a, $10                                     ; $5187: $3e $10
    add e                                         ; $5189: $83
    ld e, a                                       ; $518a: $5f
    ld a, $00                                     ; $518b: $3e $00
    adc d                                         ; $518d: $8a
    ld d, a                                       ; $518e: $57
    ld a, [$d80c]                                 ; $518f: $fa $0c $d8
    or $30                                        ; $5192: $f6 $30
    call Call_002_51c0                            ; $5194: $cd $c0 $51
    ld a, [$d80b]                                 ; $5197: $fa $0b $d8
    or $30                                        ; $519a: $f6 $30
    call Call_002_51c0                            ; $519c: $cd $c0 $51
    ret                                           ; $519f: $c9


Call_002_51a0:
    ld de, $8800                                  ; $51a0: $11 $00 $88
    ld a, $2d                                     ; $51a3: $3e $2d
    call Call_002_51c0                            ; $51a5: $cd $c0 $51
    ld a, $2d                                     ; $51a8: $3e $2d
    call Call_002_51c0                            ; $51aa: $cd $c0 $51
    ld a, $10                                     ; $51ad: $3e $10
    add e                                         ; $51af: $83
    ld e, a                                       ; $51b0: $5f
    ld a, $00                                     ; $51b1: $3e $00
    adc d                                         ; $51b3: $8a
    ld d, a                                       ; $51b4: $57
    ld a, $2d                                     ; $51b5: $3e $2d
    call Call_002_51c0                            ; $51b7: $cd $c0 $51
    ld a, $2d                                     ; $51ba: $3e $2d
    call Call_002_51c0                            ; $51bc: $cd $c0 $51
    ret                                           ; $51bf: $c9


Call_002_51c0:
    push hl                                       ; $51c0: $e5
    ld c, a                                       ; $51c1: $4f
    ld b, $00                                     ; $51c2: $06 $00
    ld hl, $51e7                                  ; $51c4: $21 $e7 $51
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
    call Call_000_0504                            ; $51e2: $cd $04 $05
    pop hl                                        ; $51e5: $e1
    ret                                           ; $51e6: $c9


    rra                                           ; $51e7: $1f
    rra                                           ; $51e8: $1f
    rra                                           ; $51e9: $1f
    rra                                           ; $51ea: $1f
    rra                                           ; $51eb: $1f
    rra                                           ; $51ec: $1f
    rra                                           ; $51ed: $1f
    rra                                           ; $51ee: $1f
    rra                                           ; $51ef: $1f
    rra                                           ; $51f0: $1f
    rra                                           ; $51f1: $1f
    rra                                           ; $51f2: $1f
    rra                                           ; $51f3: $1f
    rra                                           ; $51f4: $1f
    rra                                           ; $51f5: $1f
    rra                                           ; $51f6: $1f
    rra                                           ; $51f7: $1f
    rra                                           ; $51f8: $1f
    rra                                           ; $51f9: $1f
    rra                                           ; $51fa: $1f
    rra                                           ; $51fb: $1f
    rra                                           ; $51fc: $1f
    rra                                           ; $51fd: $1f
    rra                                           ; $51fe: $1f
    rra                                           ; $51ff: $1f
    rra                                           ; $5200: $1f
    rra                                           ; $5201: $1f
    rra                                           ; $5202: $1f
    ld a, [hl+]                                   ; $5203: $2a
    rra                                           ; $5204: $1f
    rra                                           ; $5205: $1f
    rra                                           ; $5206: $1f
    rra                                           ; $5207: $1f
    rra                                           ; $5208: $1f
    dec de                                        ; $5209: $1b
    rra                                           ; $520a: $1f
    rra                                           ; $520b: $1f
    rra                                           ; $520c: $1f
    rra                                           ; $520d: $1f
    ld a, [de]                                    ; $520e: $1a
    rra                                           ; $520f: $1f
    rra                                           ; $5210: $1f
    rra                                           ; $5211: $1f
    rra                                           ; $5212: $1f
    ld e, $1c                                     ; $5213: $1e $1c
    dec e                                         ; $5215: $1d
    rra                                           ; $5216: $1f
    jr nz, @+$23                                  ; $5217: $20 $21

    ld [hl+], a                                   ; $5219: $22
    inc hl                                        ; $521a: $23
    inc h                                         ; $521b: $24
    dec h                                         ; $521c: $25
    ld h, $27                                     ; $521d: $26 $27
    jr z, jr_002_524a                             ; $521f: $28 $29

    rra                                           ; $5221: $1f
    rra                                           ; $5222: $1f
    rra                                           ; $5223: $1f
    rra                                           ; $5224: $1f
    rra                                           ; $5225: $1f
    rra                                           ; $5226: $1f
    rra                                           ; $5227: $1f
    nop                                           ; $5228: $00
    ld bc, $0302                                  ; $5229: $01 $02 $03
    inc b                                         ; $522c: $04
    dec b                                         ; $522d: $05
    ld b, $07                                     ; $522e: $06 $07
    ld [$0a09], sp                                ; $5230: $08 $09 $0a
    dec bc                                        ; $5233: $0b
    inc c                                         ; $5234: $0c
    dec c                                         ; $5235: $0d
    ld c, $0f                                     ; $5236: $0e $0f
    db $10                                        ; $5238: $10
    ld de, $1312                                  ; $5239: $11 $12 $13
    inc d                                         ; $523c: $14
    dec d                                         ; $523d: $15
    ld d, $17                                     ; $523e: $16 $17
    jr jr_002_525b                                ; $5240: $18 $19

    rra                                           ; $5242: $1f
    rra                                           ; $5243: $1f
    rra                                           ; $5244: $1f
    rra                                           ; $5245: $1f
    rra                                           ; $5246: $1f
    rra                                           ; $5247: $1f
    rra                                           ; $5248: $1f
    rra                                           ; $5249: $1f

jr_002_524a:
    rra                                           ; $524a: $1f
    rra                                           ; $524b: $1f
    rra                                           ; $524c: $1f
    rra                                           ; $524d: $1f
    rra                                           ; $524e: $1f
    rra                                           ; $524f: $1f
    rra                                           ; $5250: $1f
    rra                                           ; $5251: $1f
    rra                                           ; $5252: $1f
    rra                                           ; $5253: $1f
    rra                                           ; $5254: $1f
    rra                                           ; $5255: $1f
    rra                                           ; $5256: $1f
    rra                                           ; $5257: $1f
    rra                                           ; $5258: $1f
    rra                                           ; $5259: $1f
    rra                                           ; $525a: $1f

jr_002_525b:
    rra                                           ; $525b: $1f
    rra                                           ; $525c: $1f
    rra                                           ; $525d: $1f
    rra                                           ; $525e: $1f
    rra                                           ; $525f: $1f
    rra                                           ; $5260: $1f
    rra                                           ; $5261: $1f
    rra                                           ; $5262: $1f
    rra                                           ; $5263: $1f
    rra                                           ; $5264: $1f
    rra                                           ; $5265: $1f
    rra                                           ; $5266: $1f
    ld hl, $a002                                  ; $5267: $21 $02 $a0
    xor a                                         ; $526a: $af

jr_002_526b:
    ld [hl+], a                                   ; $526b: $22
    inc a                                         ; $526c: $3c
    cp $40                                        ; $526d: $fe $40
    jr nz, jr_002_526b                            ; $526f: $20 $fa

    jp Jump_000_05ea                              ; $5271: $c3 $ea $05


    ld a, $40                                     ; $5274: $3e $40
    ld de, $a002                                  ; $5276: $11 $02 $a0

jr_002_5279:
    push af                                       ; $5279: $f5
    push de                                       ; $527a: $d5
    call Call_000_0614                            ; $527b: $cd $14 $06
    and $3f                                       ; $527e: $e6 $3f
    pop de                                        ; $5280: $d1
    ld c, a                                       ; $5281: $4f
    ld b, $00                                     ; $5282: $06 $00
    ld hl, $a002                                  ; $5284: $21 $02 $a0
    add hl, bc                                    ; $5287: $09
    ld c, [hl]                                    ; $5288: $4e
    ld a, [de]                                    ; $5289: $1a
    ld [hl], a                                    ; $528a: $77
    ld a, c                                       ; $528b: $79
    ld [de], a                                    ; $528c: $12
    pop af                                        ; $528d: $f1
    inc de                                        ; $528e: $13
    dec a                                         ; $528f: $3d

Jump_002_5290:
    jr nz, jr_002_5279                            ; $5290: $20 $e7

    ld [$a001], a                                 ; $5292: $ea $01 $a0
    jp Jump_000_05ea                              ; $5295: $c3 $ea $05


Call_002_5298:
    ld a, [$d839]                                 ; $5298: $fa $39 $d8
    and a                                         ; $529b: $a7
    jr nz, jr_002_52a7                            ; $529c: $20 $09

    ld b, $03                                     ; $529e: $06 $03
    ld hl, $4ee9                                  ; $52a0: $21 $e9 $4e
    call Call_000_05de                            ; $52a3: $cd $de $05
    ret                                           ; $52a6: $c9


jr_002_52a7:
    ld b, $03                                     ; $52a7: $06 $03
    ld hl, $4f10                                  ; $52a9: $21 $10 $4f
    call Call_000_05de                            ; $52ac: $cd $de $05
    ret                                           ; $52af: $c9


    ret z                                         ; $52b0: $c8

    nop                                           ; $52b1: $00
    add sp, $00                                   ; $52b2: $e8 $00
    ld hl, sp+$00                                 ; $52b4: $f8 $00
    ret c                                         ; $52b6: $d8

    nop                                           ; $52b7: $00
    ret z                                         ; $52b8: $c8

    nop                                           ; $52b9: $00
    nop                                           ; $52ba: $00
    nop                                           ; $52bb: $00
    nop                                           ; $52bc: $00
    nop                                           ; $52bd: $00
    nop                                           ; $52be: $00
    nop                                           ; $52bf: $00
    nop                                           ; $52c0: $00
    nop                                           ; $52c1: $00
    nop                                           ; $52c2: $00
    nop                                           ; $52c3: $00
    nop                                           ; $52c4: $00
    nop                                           ; $52c5: $00
    nop                                           ; $52c6: $00
    nop                                           ; $52c7: $00
    nop                                           ; $52c8: $00
    nop                                           ; $52c9: $00
    nop                                           ; $52ca: $00
    nop                                           ; $52cb: $00
    nop                                           ; $52cc: $00
    nop                                           ; $52cd: $00
    dec b                                         ; $52ce: $05
    dec b                                         ; $52cf: $05
    ret nz                                        ; $52d0: $c0

    nop                                           ; $52d1: $00
    ret nz                                        ; $52d2: $c0

    nop                                           ; $52d3: $00
    ret nz                                        ; $52d4: $c0

    nop                                           ; $52d5: $00
    ret nz                                        ; $52d6: $c0

    nop                                           ; $52d7: $00
    ld hl, sp+$00                                 ; $52d8: $f8 $00
    nop                                           ; $52da: $00
    nop                                           ; $52db: $00
    nop                                           ; $52dc: $00
    nop                                           ; $52dd: $00
    nop                                           ; $52de: $00
    nop                                           ; $52df: $00
    nop                                           ; $52e0: $00
    nop                                           ; $52e1: $00
    nop                                           ; $52e2: $00
    nop                                           ; $52e3: $00
    nop                                           ; $52e4: $00
    nop                                           ; $52e5: $00
    nop                                           ; $52e6: $00
    nop                                           ; $52e7: $00
    nop                                           ; $52e8: $00
    nop                                           ; $52e9: $00
    nop                                           ; $52ea: $00
    nop                                           ; $52eb: $00
    nop                                           ; $52ec: $00
    nop                                           ; $52ed: $00
    dec b                                         ; $52ee: $05
    dec b                                         ; $52ef: $05
    ld hl, sp+$00                                 ; $52f0: $f8 $00
    ret nz                                        ; $52f2: $c0

    nop                                           ; $52f3: $00
    ldh a, [rP1]                                  ; $52f4: $f0 $00
    ret nz                                        ; $52f6: $c0

    nop                                           ; $52f7: $00
    ld hl, sp+$00                                 ; $52f8: $f8 $00
    nop                                           ; $52fa: $00
    nop                                           ; $52fb: $00
    nop                                           ; $52fc: $00
    nop                                           ; $52fd: $00
    nop                                           ; $52fe: $00
    nop                                           ; $52ff: $00
    nop                                           ; $5300: $00
    nop                                           ; $5301: $00
    nop                                           ; $5302: $00
    nop                                           ; $5303: $00
    nop                                           ; $5304: $00
    nop                                           ; $5305: $00
    nop                                           ; $5306: $00
    nop                                           ; $5307: $00
    nop                                           ; $5308: $00
    nop                                           ; $5309: $00
    nop                                           ; $530a: $00
    nop                                           ; $530b: $00
    nop                                           ; $530c: $00
    nop                                           ; $530d: $00
    dec b                                         ; $530e: $05
    dec b                                         ; $530f: $05
    ld hl, sp+$00                                 ; $5310: $f8 $00
    jr nz, jr_002_5314                            ; $5312: $20 $00

jr_002_5314:
    jr nz, jr_002_5316                            ; $5314: $20 $00

jr_002_5316:
    jr nz, jr_002_5318                            ; $5316: $20 $00

jr_002_5318:
    jr nz, jr_002_531a                            ; $5318: $20 $00

jr_002_531a:
    nop                                           ; $531a: $00
    nop                                           ; $531b: $00
    nop                                           ; $531c: $00
    nop                                           ; $531d: $00
    nop                                           ; $531e: $00
    nop                                           ; $531f: $00
    nop                                           ; $5320: $00
    nop                                           ; $5321: $00
    nop                                           ; $5322: $00
    nop                                           ; $5323: $00
    nop                                           ; $5324: $00
    nop                                           ; $5325: $00
    nop                                           ; $5326: $00
    nop                                           ; $5327: $00
    nop                                           ; $5328: $00
    nop                                           ; $5329: $00
    nop                                           ; $532a: $00
    nop                                           ; $532b: $00
    nop                                           ; $532c: $00
    nop                                           ; $532d: $00
    dec b                                         ; $532e: $05
    dec b                                         ; $532f: $05
    ld a, b                                       ; $5330: $78
    nop                                           ; $5331: $00
    ret nz                                        ; $5332: $c0

    nop                                           ; $5333: $00
    ld hl, sp+$00                                 ; $5334: $f8 $00
    jr jr_002_5338                                ; $5336: $18 $00

jr_002_5338:
    ldh a, [rP1]                                  ; $5338: $f0 $00
    nop                                           ; $533a: $00
    nop                                           ; $533b: $00
    nop                                           ; $533c: $00
    nop                                           ; $533d: $00
    nop                                           ; $533e: $00
    nop                                           ; $533f: $00
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    nop                                           ; $5342: $00
    nop                                           ; $5343: $00
    nop                                           ; $5344: $00
    nop                                           ; $5345: $00
    nop                                           ; $5346: $00
    nop                                           ; $5347: $00
    nop                                           ; $5348: $00
    nop                                           ; $5349: $00
    nop                                           ; $534a: $00
    nop                                           ; $534b: $00
    nop                                           ; $534c: $00
    nop                                           ; $534d: $00
    dec b                                         ; $534e: $05
    dec b                                         ; $534f: $05
    adc b                                         ; $5350: $88
    nop                                           ; $5351: $00
    xor b                                         ; $5352: $a8
    nop                                           ; $5353: $00
    xor b                                         ; $5354: $a8
    nop                                           ; $5355: $00
    ld hl, sp+$00                                 ; $5356: $f8 $00
    ld d, b                                       ; $5358: $50
    nop                                           ; $5359: $00
    nop                                           ; $535a: $00
    nop                                           ; $535b: $00
    nop                                           ; $535c: $00
    nop                                           ; $535d: $00
    nop                                           ; $535e: $00
    nop                                           ; $535f: $00
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    nop                                           ; $5362: $00
    nop                                           ; $5363: $00
    nop                                           ; $5364: $00
    nop                                           ; $5365: $00
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    nop                                           ; $536a: $00
    nop                                           ; $536b: $00
    nop                                           ; $536c: $00
    nop                                           ; $536d: $00
    dec b                                         ; $536e: $05
    dec b                                         ; $536f: $05
    ld [hl], b                                    ; $5370: $70
    nop                                           ; $5371: $00
    ret z                                         ; $5372: $c8

    nop                                           ; $5373: $00
    ret z                                         ; $5374: $c8

    nop                                           ; $5375: $00
    ret z                                         ; $5376: $c8

    nop                                           ; $5377: $00
    ld [hl], b                                    ; $5378: $70
    nop                                           ; $5379: $00
    nop                                           ; $537a: $00
    nop                                           ; $537b: $00
    nop                                           ; $537c: $00
    nop                                           ; $537d: $00
    nop                                           ; $537e: $00
    nop                                           ; $537f: $00
    nop                                           ; $5380: $00
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    nop                                           ; $5383: $00
    nop                                           ; $5384: $00
    nop                                           ; $5385: $00
    nop                                           ; $5386: $00
    nop                                           ; $5387: $00
    nop                                           ; $5388: $00
    nop                                           ; $5389: $00
    nop                                           ; $538a: $00
    nop                                           ; $538b: $00
    nop                                           ; $538c: $00
    nop                                           ; $538d: $00
    dec b                                         ; $538e: $05
    dec b                                         ; $538f: $05
    ldh a, [rP1]                                  ; $5390: $f0 $00
    ret z                                         ; $5392: $c8

    nop                                           ; $5393: $00
    ret z                                         ; $5394: $c8

    nop                                           ; $5395: $00
    ldh a, [rP1]                                  ; $5396: $f0 $00
    ret z                                         ; $5398: $c8

    nop                                           ; $5399: $00
    nop                                           ; $539a: $00
    nop                                           ; $539b: $00
    nop                                           ; $539c: $00
    nop                                           ; $539d: $00
    nop                                           ; $539e: $00
    nop                                           ; $539f: $00
    nop                                           ; $53a0: $00
    nop                                           ; $53a1: $00
    nop                                           ; $53a2: $00
    nop                                           ; $53a3: $00
    nop                                           ; $53a4: $00
    nop                                           ; $53a5: $00
    nop                                           ; $53a6: $00
    nop                                           ; $53a7: $00
    nop                                           ; $53a8: $00
    nop                                           ; $53a9: $00
    nop                                           ; $53aa: $00
    nop                                           ; $53ab: $00
    nop                                           ; $53ac: $00
    nop                                           ; $53ad: $00
    dec b                                         ; $53ae: $05
    dec b                                         ; $53af: $05
    ret c                                         ; $53b0: $d8

    nop                                           ; $53b1: $00
    ldh a, [rP1]                                  ; $53b2: $f0 $00
    ldh [rP1], a                                  ; $53b4: $e0 $00
    ldh a, [rP1]                                  ; $53b6: $f0 $00
    ret c                                         ; $53b8: $d8

    nop                                           ; $53b9: $00
    nop                                           ; $53ba: $00
    nop                                           ; $53bb: $00
    nop                                           ; $53bc: $00
    nop                                           ; $53bd: $00
    nop                                           ; $53be: $00
    nop                                           ; $53bf: $00
    nop                                           ; $53c0: $00
    nop                                           ; $53c1: $00
    nop                                           ; $53c2: $00
    nop                                           ; $53c3: $00
    nop                                           ; $53c4: $00
    nop                                           ; $53c5: $00
    nop                                           ; $53c6: $00
    nop                                           ; $53c7: $00
    nop                                           ; $53c8: $00
    nop                                           ; $53c9: $00
    nop                                           ; $53ca: $00
    nop                                           ; $53cb: $00
    nop                                           ; $53cc: $00
    nop                                           ; $53cd: $00
    dec b                                         ; $53ce: $05
    dec b                                         ; $53cf: $05
    rrca                                          ; $53d0: $0f
    nop                                           ; $53d1: $00
    rrca                                          ; $53d2: $0f
    add b                                         ; $53d3: $80
    rrca                                          ; $53d4: $0f
    ret nz                                        ; $53d5: $c0

    add hl, bc                                    ; $53d6: $09
    ret nz                                        ; $53d7: $c0

    ld [$08c0], sp                                ; $53d8: $08 $c0 $08
    ret nz                                        ; $53db: $c0

    ld [$f980], sp                                ; $53dc: $08 $80 $f9
    nop                                           ; $53df: $00
    ld hl, sp+$00                                 ; $53e0: $f8 $00
    ld hl, sp+$00                                 ; $53e2: $f8 $00
    nop                                           ; $53e4: $00
    nop                                           ; $53e5: $00
    nop                                           ; $53e6: $00
    nop                                           ; $53e7: $00
    nop                                           ; $53e8: $00
    nop                                           ; $53e9: $00
    nop                                           ; $53ea: $00
    nop                                           ; $53eb: $00
    nop                                           ; $53ec: $00
    nop                                           ; $53ed: $00
    ld a, [bc]                                    ; $53ee: $0a
    ld a, [bc]                                    ; $53ef: $0a
    inc c                                         ; $53f0: $0c
    nop                                           ; $53f1: $00
    ld e, $00                                     ; $53f2: $1e $00
    ccf                                           ; $53f4: $3f
    nop                                           ; $53f5: $00
    ld a, a                                       ; $53f6: $7f
    add b                                         ; $53f7: $80
    rst RST_38                                    ; $53f8: $ff
    ret nz                                        ; $53f9: $c0

    rst RST_38                                    ; $53fa: $ff
    ret nz                                        ; $53fb: $c0

    ld a, a                                       ; $53fc: $7f
    add b                                         ; $53fd: $80
    ccf                                           ; $53fe: $3f
    nop                                           ; $53ff: $00
    ld e, $00                                     ; $5400: $1e $00
    inc c                                         ; $5402: $0c
    nop                                           ; $5403: $00
    nop                                           ; $5404: $00
    nop                                           ; $5405: $00
    nop                                           ; $5406: $00
    nop                                           ; $5407: $00
    nop                                           ; $5408: $00
    nop                                           ; $5409: $00
    nop                                           ; $540a: $00
    nop                                           ; $540b: $00
    nop                                           ; $540c: $00
    nop                                           ; $540d: $00
    ld a, [bc]                                    ; $540e: $0a
    ld a, [bc]                                    ; $540f: $0a
    inc c                                         ; $5410: $0c
    nop                                           ; $5411: $00
    ld e, $00                                     ; $5412: $1e $00
    ccf                                           ; $5414: $3f
    nop                                           ; $5415: $00
    ld a, a                                       ; $5416: $7f
    add b                                         ; $5417: $80
    rst RST_38                                    ; $5418: $ff
    ret nz                                        ; $5419: $c0

    rst RST_38                                    ; $541a: $ff
    ret nz                                        ; $541b: $c0

    rst RST_38                                    ; $541c: $ff
    ret nz                                        ; $541d: $c0

    ld l, l                                       ; $541e: $6d
    add b                                         ; $541f: $80
    ld e, $00                                     ; $5420: $1e $00
    ccf                                           ; $5422: $3f
    nop                                           ; $5423: $00
    nop                                           ; $5424: $00
    nop                                           ; $5425: $00
    nop                                           ; $5426: $00
    nop                                           ; $5427: $00
    nop                                           ; $5428: $00
    nop                                           ; $5429: $00
    nop                                           ; $542a: $00
    nop                                           ; $542b: $00
    nop                                           ; $542c: $00
    nop                                           ; $542d: $00
    ld a, [bc]                                    ; $542e: $0a
    ld a, [bc]                                    ; $542f: $0a
    ld [hl], e                                    ; $5430: $73
    add b                                         ; $5431: $80
    rst RST_38                                    ; $5432: $ff
    ret nz                                        ; $5433: $c0

    rst RST_38                                    ; $5434: $ff
    ret nz                                        ; $5435: $c0

    rst RST_18                                    ; $5436: $df
    ret nz                                        ; $5437: $c0

    rst RST_18                                    ; $5438: $df
    ret nz                                        ; $5439: $c0

    ld l, a                                       ; $543a: $6f
    add b                                         ; $543b: $80
    ld a, a                                       ; $543c: $7f
    add b                                         ; $543d: $80
    ccf                                           ; $543e: $3f
    nop                                           ; $543f: $00
    ld e, $00                                     ; $5440: $1e $00
    inc c                                         ; $5442: $0c
    nop                                           ; $5443: $00
    nop                                           ; $5444: $00
    nop                                           ; $5445: $00
    nop                                           ; $5446: $00
    nop                                           ; $5447: $00
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    nop                                           ; $544a: $00
    nop                                           ; $544b: $00
    nop                                           ; $544c: $00
    nop                                           ; $544d: $00
    ld a, [bc]                                    ; $544e: $0a
    ld a, [bc]                                    ; $544f: $0a
    inc c                                         ; $5450: $0c
    nop                                           ; $5451: $00
    ld e, $00                                     ; $5452: $1e $00

Call_002_5454:
    ld e, $00                                     ; $5454: $1e $00
    ld l, l                                       ; $5456: $6d

Jump_002_5457:
    add b                                         ; $5457: $80
    rst RST_38                                    ; $5458: $ff
    ret nz                                        ; $5459: $c0

    rst RST_38                                    ; $545a: $ff
    ret nz                                        ; $545b: $c0

    rst RST_38                                    ; $545c: $ff
    ret nz                                        ; $545d: $c0

    ld l, l                                       ; $545e: $6d
    add b                                         ; $545f: $80
    inc c                                         ; $5460: $0c
    nop                                           ; $5461: $00
    ccf                                           ; $5462: $3f
    nop                                           ; $5463: $00
    nop                                           ; $5464: $00
    nop                                           ; $5465: $00
    nop                                           ; $5466: $00
    nop                                           ; $5467: $00
    nop                                           ; $5468: $00
    nop                                           ; $5469: $00
    nop                                           ; $546a: $00
    nop                                           ; $546b: $00
    nop                                           ; $546c: $00
    nop                                           ; $546d: $00
    ld a, [bc]                                    ; $546e: $0a
    ld a, [bc]                                    ; $546f: $0a
    ld a, a                                       ; $5470: $7f
    add b                                         ; $5471: $80
    rst RST_38                                    ; $5472: $ff
    ret nz                                        ; $5473: $c0

    ret nz                                        ; $5474: $c0

    ret nz                                        ; $5475: $c0

    ret nz                                        ; $5476: $c0

    ret nz                                        ; $5477: $c0

    rlca                                          ; $5478: $07
    ret nz                                        ; $5479: $c0

    rrca                                          ; $547a: $0f
    add b                                         ; $547b: $80
    inc c                                         ; $547c: $0c
    nop                                           ; $547d: $00
    nop                                           ; $547e: $00
    nop                                           ; $547f: $00
    inc c                                         ; $5480: $0c
    nop                                           ; $5481: $00
    inc c                                         ; $5482: $0c
    nop                                           ; $5483: $00
    nop                                           ; $5484: $00
    nop                                           ; $5485: $00
    nop                                           ; $5486: $00
    nop                                           ; $5487: $00
    nop                                           ; $5488: $00
    nop                                           ; $5489: $00
    nop                                           ; $548a: $00
    nop                                           ; $548b: $00
    nop                                           ; $548c: $00
    nop                                           ; $548d: $00
    ld a, [bc]                                    ; $548e: $0a
    ld a, [bc]                                    ; $548f: $0a
    ld [de], a                                    ; $5490: $12
    nop                                           ; $5491: $00
    ld a, a                                       ; $5492: $7f
    ret nz                                        ; $5493: $c0

    rst RST_38                                    ; $5494: $ff
    ret nz                                        ; $5495: $c0

    jp nc, rP1                                    ; $5496: $d2 $00 $ff

    add b                                         ; $5499: $80
    ld a, a                                       ; $549a: $7f
    ret nz                                        ; $549b: $c0

    ld [de], a                                    ; $549c: $12
    ret nz                                        ; $549d: $c0

    rst RST_38                                    ; $549e: $ff
    ret nz                                        ; $549f: $c0

    rst RST_38                                    ; $54a0: $ff
    add b                                         ; $54a1: $80
    ld [de], a                                    ; $54a2: $12
    nop                                           ; $54a3: $00
    nop                                           ; $54a4: $00
    nop                                           ; $54a5: $00
    nop                                           ; $54a6: $00
    nop                                           ; $54a7: $00
    nop                                           ; $54a8: $00
    nop                                           ; $54a9: $00
    nop                                           ; $54aa: $00
    nop                                           ; $54ab: $00
    nop                                           ; $54ac: $00
    nop                                           ; $54ad: $00
    ld a, [bc]                                    ; $54ae: $0a
    ld a, [bc]                                    ; $54af: $0a
    rst RST_38                                    ; $54b0: $ff
    nop                                           ; $54b1: $00
    add c                                         ; $54b2: $81
    nop                                           ; $54b3: $00
    sbc a                                         ; $54b4: $9f
    nop                                           ; $54b5: $00
    xor h                                         ; $54b6: $ac
    nop                                           ; $54b7: $00
    or [hl]                                       ; $54b8: $b6
    nop                                           ; $54b9: $00
    cp e                                          ; $54ba: $bb
    nop                                           ; $54bb: $00
    xor l                                         ; $54bc: $ad
    add b                                         ; $54bd: $80
    and $c0                                       ; $54be: $e6 $c0
    inc bc                                        ; $54c0: $03
    ld b, b                                       ; $54c1: $40
    ld bc, $00c0                                  ; $54c2: $01 $c0 $00
    nop                                           ; $54c5: $00
    nop                                           ; $54c6: $00
    nop                                           ; $54c7: $00
    nop                                           ; $54c8: $00
    nop                                           ; $54c9: $00
    nop                                           ; $54ca: $00
    nop                                           ; $54cb: $00
    nop                                           ; $54cc: $00
    nop                                           ; $54cd: $00
    ld a, [bc]                                    ; $54ce: $0a
    ld a, [bc]                                    ; $54cf: $0a
    ld e, $00                                     ; $54d0: $1e $00
    ld a, a                                       ; $54d2: $7f
    nop                                           ; $54d3: $00
    ld a, b                                       ; $54d4: $78
    add b                                         ; $54d5: $80
    ldh a, [rP1]                                  ; $54d6: $f0 $00
    ldh a, [rP1]                                  ; $54d8: $f0 $00
    ldh a, [rP1]                                  ; $54da: $f0 $00
    ldh a, [rP1]                                  ; $54dc: $f0 $00
    ld a, b                                       ; $54de: $78
    add b                                         ; $54df: $80
    ld a, a                                       ; $54e0: $7f
    nop                                           ; $54e1: $00
    ld e, $00                                     ; $54e2: $1e $00
    nop                                           ; $54e4: $00
    nop                                           ; $54e5: $00
    nop                                           ; $54e6: $00
    nop                                           ; $54e7: $00
    nop                                           ; $54e8: $00
    nop                                           ; $54e9: $00
    nop                                           ; $54ea: $00
    nop                                           ; $54eb: $00
    nop                                           ; $54ec: $00
    nop                                           ; $54ed: $00
    ld a, [bc]                                    ; $54ee: $0a
    ld a, [bc]                                    ; $54ef: $0a
    inc c                                         ; $54f0: $0c
    nop                                           ; $54f1: $00
    ld e, $00                                     ; $54f2: $1e $00
    ld e, $00                                     ; $54f4: $1e $00
    rst RST_38                                    ; $54f6: $ff
    ret nz                                        ; $54f7: $c0

    rst RST_18                                    ; $54f8: $df
    ret nz                                        ; $54f9: $c0

    ld l, a                                       ; $54fa: $6f
    add b                                         ; $54fb: $80
    cpl                                           ; $54fc: $2f
    nop                                           ; $54fd: $00
    ld a, a                                       ; $54fe: $7f
    add b                                         ; $54ff: $80
    ld [hl], e                                    ; $5500: $73
    add b                                         ; $5501: $80
    pop hl                                        ; $5502: $e1
    ret nz                                        ; $5503: $c0

    nop                                           ; $5504: $00
    nop                                           ; $5505: $00
    nop                                           ; $5506: $00
    nop                                           ; $5507: $00
    nop                                           ; $5508: $00
    nop                                           ; $5509: $00
    nop                                           ; $550a: $00
    nop                                           ; $550b: $00
    nop                                           ; $550c: $00
    nop                                           ; $550d: $00
    ld a, [bc]                                    ; $550e: $0a
    ld a, [bc]                                    ; $550f: $0a
    inc c                                         ; $5510: $0c
    nop                                           ; $5511: $00
    ld c, $00                                     ; $5512: $0e $00
    dec bc                                        ; $5514: $0b
    nop                                           ; $5515: $00
    add hl, bc                                    ; $5516: $09
    add b                                         ; $5517: $80
    ld [$0fc0], sp                                ; $5518: $08 $c0 $0f
    ret nz                                        ; $551b: $c0

    ld [rP1], sp                                  ; $551c: $08 $00 $ff
    ret nz                                        ; $551f: $c0

    ld l, d                                       ; $5520: $6a
    ret nz                                        ; $5521: $c0

jr_002_5522:
    ccf                                           ; $5522: $3f
    add b                                         ; $5523: $80
    nop                                           ; $5524: $00
    nop                                           ; $5525: $00
    nop                                           ; $5526: $00
    nop                                           ; $5527: $00
    nop                                           ; $5528: $00
    nop                                           ; $5529: $00
    nop                                           ; $552a: $00
    nop                                           ; $552b: $00
    nop                                           ; $552c: $00
    nop                                           ; $552d: $00
    ld a, [bc]                                    ; $552e: $0a
    ld a, [bc]                                    ; $552f: $0a
    rrca                                          ; $5530: $0f
    nop                                           ; $5531: $00
    rra                                           ; $5532: $1f
    add b                                         ; $5533: $80
    dec d                                         ; $5534: $15
    add b                                         ; $5535: $80
    inc d                                         ; $5536: $14
    add b                                         ; $5537: $80
    ld a, a                                       ; $5538: $7f
    ret nz                                        ; $5539: $c0

    cp a                                          ; $553a: $bf
    ret nz                                        ; $553b: $c0

    rst RST_38                                    ; $553c: $ff
    ret nz                                        ; $553d: $c0

    rst RST_38                                    ; $553e: $ff
    ret nz                                        ; $553f: $c0

    sbc $c0                                       ; $5540: $de $c0
    ld [hl], e                                    ; $5542: $73
    add b                                         ; $5543: $80
    nop                                           ; $5544: $00
    nop                                           ; $5545: $00
    nop                                           ; $5546: $00
    nop                                           ; $5547: $00
    nop                                           ; $5548: $00
    nop                                           ; $5549: $00
    nop                                           ; $554a: $00
    nop                                           ; $554b: $00
    nop                                           ; $554c: $00
    nop                                           ; $554d: $00
    ld a, [bc]                                    ; $554e: $0a
    ld a, [bc]                                    ; $554f: $0a
    inc c                                         ; $5550: $0c
    nop                                           ; $5551: $00
    ld e, $c0                                     ; $5552: $1e $c0
    ld e, $c0                                     ; $5554: $1e $c0
    sbc $c0                                       ; $5556: $de $c0
    rst RST_18                                    ; $5558: $df
    ret nz                                        ; $5559: $c0

    rst RST_18                                    ; $555a: $df
    add b                                         ; $555b: $80
    cp $00                                        ; $555c: $fe $00
    ld a, [hl]                                    ; $555e: $7e
    nop                                           ; $555f: $00
    ld e, $00                                     ; $5560: $1e $00
    ld e, $00                                     ; $5562: $1e $00
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    nop                                           ; $5568: $00
    nop                                           ; $5569: $00
    nop                                           ; $556a: $00
    nop                                           ; $556b: $00
    nop                                           ; $556c: $00
    nop                                           ; $556d: $00
    ld a, [bc]                                    ; $556e: $0a
    ld a, [bc]                                    ; $556f: $0a
    inc c                                         ; $5570: $0c
    nop                                           ; $5571: $00
    ld [$7700], sp                                ; $5572: $08 $00 $77
    add b                                         ; $5575: $80
    rst RST_18                                    ; $5576: $df
    ret nz                                        ; $5577: $c0

    rst RST_38                                    ; $5578: $ff
    ret nz                                        ; $5579: $c0

    cp a                                          ; $557a: $bf
    ret nz                                        ; $557b: $c0

    cp a                                          ; $557c: $bf
    ret nz                                        ; $557d: $c0

    rst RST_18                                    ; $557e: $df
    ret nz                                        ; $557f: $c0

    ld a, a                                       ; $5580: $7f
    add b                                         ; $5581: $80
    ccf                                           ; $5582: $3f
    nop                                           ; $5583: $00
    nop                                           ; $5584: $00
    nop                                           ; $5585: $00
    nop                                           ; $5586: $00
    nop                                           ; $5587: $00
    nop                                           ; $5588: $00
    nop                                           ; $5589: $00
    nop                                           ; $558a: $00
    nop                                           ; $558b: $00
    nop                                           ; $558c: $00
    nop                                           ; $558d: $00
    ld a, [bc]                                    ; $558e: $0a
    ld a, [bc]                                    ; $558f: $0a
    nop                                           ; $5590: $00
    nop                                           ; $5591: $00
    inc b                                         ; $5592: $04
    nop                                           ; $5593: $00
    ld c, $00                                     ; $5594: $0e $00
    rla                                           ; $5596: $17
    nop                                           ; $5597: $00
    cpl                                           ; $5598: $2f
    add b                                         ; $5599: $80
    ld l, a                                       ; $559a: $6f
    ret nz                                        ; $559b: $c0

    ld a, a                                       ; $559c: $7f
    ret nz                                        ; $559d: $c0

    ld [hl], c                                    ; $559e: $71
    ret nz                                        ; $559f: $c0

    jr nz, jr_002_5522                            ; $55a0: $20 $80

    rra                                           ; $55a2: $1f
    nop                                           ; $55a3: $00
    nop                                           ; $55a4: $00
    nop                                           ; $55a5: $00
    nop                                           ; $55a6: $00
    nop                                           ; $55a7: $00
    nop                                           ; $55a8: $00
    nop                                           ; $55a9: $00
    nop                                           ; $55aa: $00
    nop                                           ; $55ab: $00
    nop                                           ; $55ac: $00
    nop                                           ; $55ad: $00
    ld a, [bc]                                    ; $55ae: $0a
    ld a, [bc]                                    ; $55af: $0a
    rra                                           ; $55b0: $1f
    nop                                           ; $55b1: $00
    ld [hl], c                                    ; $55b2: $71
    add b                                         ; $55b3: $80
    ld b, b                                       ; $55b4: $40
    ret nz                                        ; $55b5: $c0

    sbc $40                                       ; $55b6: $de $40
    sub d                                         ; $55b8: $92
    ld b, b                                       ; $55b9: $40
    sub d                                         ; $55ba: $92
    ld b, b                                       ; $55bb: $40
    sbc [hl]                                      ; $55bc: $9e
    ret nz                                        ; $55bd: $c0

    ret nz                                        ; $55be: $c0

    add b                                         ; $55bf: $80
    ld h, e                                       ; $55c0: $63
    add b                                         ; $55c1: $80
    ld a, $00                                     ; $55c2: $3e $00
    nop                                           ; $55c4: $00
    nop                                           ; $55c5: $00
    nop                                           ; $55c6: $00
    nop                                           ; $55c7: $00
    nop                                           ; $55c8: $00
    nop                                           ; $55c9: $00
    nop                                           ; $55ca: $00
    nop                                           ; $55cb: $00
    nop                                           ; $55cc: $00
    nop                                           ; $55cd: $00
    ld a, [bc]                                    ; $55ce: $0a
    ld a, [bc]                                    ; $55cf: $0a
    rst RST_38                                    ; $55d0: $ff
    ret nz                                        ; $55d1: $c0

    xor e                                         ; $55d2: $ab
    ld b, b                                       ; $55d3: $40
    xor d                                         ; $55d4: $aa
    ld b, b                                       ; $55d5: $40
    xor d                                         ; $55d6: $aa
    ld b, b                                       ; $55d7: $40
    add d                                         ; $55d8: $82
    ld b, b                                       ; $55d9: $40
    xor $40                                       ; $55da: $ee $40
    rst RST_28                                    ; $55dc: $ef
    ld b, b                                       ; $55dd: $40
    rst RST_28                                    ; $55de: $ef
    ld b, b                                       ; $55df: $40
    rst RST_28                                    ; $55e0: $ef
    ld b, b                                       ; $55e1: $40
    rst RST_38                                    ; $55e2: $ff
    ret nz                                        ; $55e3: $c0

    nop                                           ; $55e4: $00
    nop                                           ; $55e5: $00
    nop                                           ; $55e6: $00
    nop                                           ; $55e7: $00
    nop                                           ; $55e8: $00
    nop                                           ; $55e9: $00
    nop                                           ; $55ea: $00
    nop                                           ; $55eb: $00
    nop                                           ; $55ec: $00
    nop                                           ; $55ed: $00
    ld a, [bc]                                    ; $55ee: $0a
    ld a, [bc]                                    ; $55ef: $0a
    ldh [rP1], a                                  ; $55f0: $e0 $00
    cp b                                          ; $55f2: $b8
    nop                                           ; $55f3: $00
    cp [hl]                                       ; $55f4: $be
    nop                                           ; $55f5: $00
    cp a                                          ; $55f6: $bf
    ret nz                                        ; $55f7: $c0

    cp a                                          ; $55f8: $bf
    ret nz                                        ; $55f9: $c0

    cp a                                          ; $55fa: $bf
    add b                                         ; $55fb: $80
    cp a                                          ; $55fc: $bf
    nop                                           ; $55fd: $00
    cp b                                          ; $55fe: $b8
    nop                                           ; $55ff: $00
    and b                                         ; $5600: $a0
    nop                                           ; $5601: $00
    and b                                         ; $5602: $a0
    nop                                           ; $5603: $00
    nop                                           ; $5604: $00
    nop                                           ; $5605: $00
    nop                                           ; $5606: $00
    nop                                           ; $5607: $00
    nop                                           ; $5608: $00
    nop                                           ; $5609: $00
    nop                                           ; $560a: $00
    nop                                           ; $560b: $00
    nop                                           ; $560c: $00
    nop                                           ; $560d: $00
    ld a, [bc]                                    ; $560e: $0a
    ld a, [bc]                                    ; $560f: $0a
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    cp $00                                        ; $5614: $fe $00
    cp a                                          ; $5616: $bf
    ret nz                                        ; $5617: $c0

    cp a                                          ; $5618: $bf
    ret nz                                        ; $5619: $c0

    cp $c0                                        ; $561a: $fe $c0
    cp [hl]                                       ; $561c: $be
    ret nz                                        ; $561d: $c0

    rst RST_38                                    ; $561e: $ff
    add b                                         ; $561f: $80
    cp $00                                        ; $5620: $fe $00
    ld a, h                                       ; $5622: $7c
    nop                                           ; $5623: $00
    nop                                           ; $5624: $00
    nop                                           ; $5625: $00
    nop                                           ; $5626: $00
    nop                                           ; $5627: $00
    nop                                           ; $5628: $00
    nop                                           ; $5629: $00
    nop                                           ; $562a: $00
    nop                                           ; $562b: $00
    nop                                           ; $562c: $00
    nop                                           ; $562d: $00
    ld a, [bc]                                    ; $562e: $0a
    ld a, [bc]                                    ; $562f: $0a
    inc sp                                        ; $5630: $33
    nop                                           ; $5631: $00
    ld [de], a                                    ; $5632: $12
    nop                                           ; $5633: $00
    ld [de], a                                    ; $5634: $12
    nop                                           ; $5635: $00
    ld [de], a                                    ; $5636: $12
    nop                                           ; $5637: $00
    ld [de], a                                    ; $5638: $12
    nop                                           ; $5639: $00
    ld hl, $5e00                                  ; $563a: $21 $00 $5e
    add b                                         ; $563d: $80
    cp a                                          ; $563e: $bf
    ld b, b                                       ; $563f: $40
    add b                                         ; $5640: $80
    ld b, b                                       ; $5641: $40
    rst RST_38                                    ; $5642: $ff
    ret nz                                        ; $5643: $c0

    nop                                           ; $5644: $00
    nop                                           ; $5645: $00
    nop                                           ; $5646: $00
    nop                                           ; $5647: $00
    nop                                           ; $5648: $00
    nop                                           ; $5649: $00
    nop                                           ; $564a: $00
    nop                                           ; $564b: $00
    nop                                           ; $564c: $00
    nop                                           ; $564d: $00
    ld a, [bc]                                    ; $564e: $0a
    ld a, [bc]                                    ; $564f: $0a
    ld c, $00                                     ; $5650: $0e $00
    rra                                           ; $5652: $1f
    nop                                           ; $5653: $00
    scf                                           ; $5654: $37
    add b                                         ; $5655: $80
    ld h, e                                       ; $5656: $63
    ret nz                                        ; $5657: $c0

    pop bc                                        ; $5658: $c1
    ret nz                                        ; $5659: $c0

    db $dd                                        ; $565a: $dd
    ld b, b                                       ; $565b: $40
    ld d, l                                       ; $565c: $55
    ld b, b                                       ; $565d: $40
    ld d, l                                       ; $565e: $55
    ld b, b                                       ; $565f: $40
    ld d, l                                       ; $5660: $55
    ld b, b                                       ; $5661: $40
    ld a, a                                       ; $5662: $7f
    ret nz                                        ; $5663: $c0

    nop                                           ; $5664: $00
    nop                                           ; $5665: $00
    nop                                           ; $5666: $00
    nop                                           ; $5667: $00
    nop                                           ; $5668: $00
    nop                                           ; $5669: $00
    nop                                           ; $566a: $00
    nop                                           ; $566b: $00
    nop                                           ; $566c: $00
    nop                                           ; $566d: $00
    ld a, [bc]                                    ; $566e: $0a
    ld a, [bc]                                    ; $566f: $0a
    dec d                                         ; $5670: $15
    nop                                           ; $5671: $00
    dec d                                         ; $5672: $15
    ld b, b                                       ; $5673: $40
    dec d                                         ; $5674: $15
    ld b, b                                       ; $5675: $40
    dec d                                         ; $5676: $15
    ld b, b                                       ; $5677: $40
    rra                                           ; $5678: $1f
    ret nz                                        ; $5679: $c0

    rst RST_18                                    ; $567a: $df
    ret nz                                        ; $567b: $c0

    rst RST_38                                    ; $567c: $ff
    ret nz                                        ; $567d: $c0

    ld a, a                                       ; $567e: $7f
    ret nz                                        ; $567f: $c0

    ccf                                           ; $5680: $3f
    ret nz                                        ; $5681: $c0

    rra                                           ; $5682: $1f
    add b                                         ; $5683: $80
    nop                                           ; $5684: $00
    nop                                           ; $5685: $00
    nop                                           ; $5686: $00
    nop                                           ; $5687: $00
    nop                                           ; $5688: $00
    nop                                           ; $5689: $00
    nop                                           ; $568a: $00
    nop                                           ; $568b: $00
    nop                                           ; $568c: $00
    nop                                           ; $568d: $00
    ld a, [bc]                                    ; $568e: $0a
    ld a, [bc]                                    ; $568f: $0a
    ld a, $00                                     ; $5690: $3e $00
    ld l, a                                       ; $5692: $6f
    nop                                           ; $5693: $00
    ld e, a                                       ; $5694: $5f
    nop                                           ; $5695: $00
    ld e, a                                       ; $5696: $5f
    nop                                           ; $5697: $00
    ld a, a                                       ; $5698: $7f
    nop                                           ; $5699: $00
    ld a, a                                       ; $569a: $7f
    nop                                           ; $569b: $00
    ld a, $00                                     ; $569c: $3e $00
    ld [$0800], sp                                ; $569e: $08 $00 $08
    nop                                           ; $56a1: $00
    ld b, $00                                     ; $56a2: $06 $00
    nop                                           ; $56a4: $00
    nop                                           ; $56a5: $00
    nop                                           ; $56a6: $00
    nop                                           ; $56a7: $00
    nop                                           ; $56a8: $00
    nop                                           ; $56a9: $00
    nop                                           ; $56aa: $00
    nop                                           ; $56ab: $00
    nop                                           ; $56ac: $00
    nop                                           ; $56ad: $00
    ld a, [bc]                                    ; $56ae: $0a
    ld a, [bc]                                    ; $56af: $0a
    ld hl, sp+$00                                 ; $56b0: $f8 $00
    call nz, $9e00                                ; $56b2: $c4 $00 $9e
    nop                                           ; $56b5: $00
    cp a                                          ; $56b6: $bf
    nop                                           ; $56b7: $00
    cp a                                          ; $56b8: $bf
    add b                                         ; $56b9: $80
    ld l, a                                       ; $56ba: $6f
    ret nz                                        ; $56bb: $c0

    scf                                           ; $56bc: $37
    ret nz                                        ; $56bd: $c0

    dec de                                        ; $56be: $1b
    ret nz                                        ; $56bf: $c0

    dec c                                         ; $56c0: $0d
    add b                                         ; $56c1: $80
    rlca                                          ; $56c2: $07
    nop                                           ; $56c3: $00
    nop                                           ; $56c4: $00
    nop                                           ; $56c5: $00
    nop                                           ; $56c6: $00
    nop                                           ; $56c7: $00
    nop                                           ; $56c8: $00
    nop                                           ; $56c9: $00
    nop                                           ; $56ca: $00
    nop                                           ; $56cb: $00
    nop                                           ; $56cc: $00
    nop                                           ; $56cd: $00
    ld a, [bc]                                    ; $56ce: $0a
    ld a, [bc]                                    ; $56cf: $0a
    inc b                                         ; $56d0: $04
    nop                                           ; $56d1: $00
    rra                                           ; $56d2: $1f
    nop                                           ; $56d3: $00
    rra                                           ; $56d4: $1f
    nop                                           ; $56d5: $00
    rst RST_10                                    ; $56d6: $d7
    ret nz                                        ; $56d7: $c0

    ld e, a                                       ; $56d8: $5f
    ld b, b                                       ; $56d9: $40
    ld d, a                                       ; $56da: $57
    ld b, b                                       ; $56db: $40
    ld [hl], a                                    ; $56dc: $77
    ld b, b                                       ; $56dd: $40
    ld a, a                                       ; $56de: $7f
    ret nz                                        ; $56df: $c0

    rra                                           ; $56e0: $1f
    nop                                           ; $56e1: $00
    rra                                           ; $56e2: $1f
    nop                                           ; $56e3: $00
    nop                                           ; $56e4: $00
    nop                                           ; $56e5: $00
    nop                                           ; $56e6: $00
    nop                                           ; $56e7: $00
    nop                                           ; $56e8: $00
    nop                                           ; $56e9: $00
    nop                                           ; $56ea: $00
    nop                                           ; $56eb: $00
    nop                                           ; $56ec: $00
    nop                                           ; $56ed: $00
    ld a, [bc]                                    ; $56ee: $0a
    ld a, [bc]                                    ; $56ef: $0a
    inc c                                         ; $56f0: $0c
    nop                                           ; $56f1: $00
    ccf                                           ; $56f2: $3f
    nop                                           ; $56f3: $00
    ld a, a                                       ; $56f4: $7f
    add b                                         ; $56f5: $80
    rst RST_38                                    ; $56f6: $ff
    ret nz                                        ; $56f7: $c0

    rst RST_38                                    ; $56f8: $ff
    ret nz                                        ; $56f9: $c0

    xor c                                         ; $56fa: $a9
    ld b, b                                       ; $56fb: $40
    ld [$0800], sp                                ; $56fc: $08 $00 $08
    nop                                           ; $56ff: $00
    ld a, [bc]                                    ; $5700: $0a
    nop                                           ; $5701: $00
    ld b, $00                                     ; $5702: $06 $00
    nop                                           ; $5704: $00
    nop                                           ; $5705: $00
    nop                                           ; $5706: $00
    nop                                           ; $5707: $00
    nop                                           ; $5708: $00
    nop                                           ; $5709: $00
    nop                                           ; $570a: $00
    nop                                           ; $570b: $00
    nop                                           ; $570c: $00
    nop                                           ; $570d: $00
    ld a, [bc]                                    ; $570e: $0a
    ld a, [bc]                                    ; $570f: $0a
    inc c                                         ; $5710: $0c
    nop                                           ; $5711: $00
    inc c                                         ; $5712: $0c
    nop                                           ; $5713: $00
    ld e, $00                                     ; $5714: $1e $00
    inc sp                                        ; $5716: $33
    nop                                           ; $5717: $00
    daa                                           ; $5718: $27
    nop                                           ; $5719: $00
    daa                                           ; $571a: $27
    nop                                           ; $571b: $00
    ld a, a                                       ; $571c: $7f
    add b                                         ; $571d: $80
    add e                                         ; $571e: $83
    ret nz                                        ; $571f: $c0

    ld a, a                                       ; $5720: $7f
    add b                                         ; $5721: $80
    inc c                                         ; $5722: $0c
    nop                                           ; $5723: $00
    nop                                           ; $5724: $00
    nop                                           ; $5725: $00
    nop                                           ; $5726: $00
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    nop                                           ; $572a: $00
    nop                                           ; $572b: $00
    nop                                           ; $572c: $00
    nop                                           ; $572d: $00
    ld a, [bc]                                    ; $572e: $0a
    ld a, [bc]                                    ; $572f: $0a
    rlca                                          ; $5730: $07
    ret nz                                        ; $5731: $c0

    inc b                                         ; $5732: $04
    ld b, b                                       ; $5733: $40
    inc b                                         ; $5734: $04
    ld b, b                                       ; $5735: $40
    inc b                                         ; $5736: $04
    ld b, b                                       ; $5737: $40
    inc e                                         ; $5738: $1c
    ld b, b                                       ; $5739: $40
    halt                                          ; $573a: $76
    ld b, b                                       ; $573b: $40
    db $d3                                        ; $573c: $d3
    ret nz                                        ; $573d: $c0

    adc d                                         ; $573e: $8a
    ld b, b                                       ; $573f: $40
    adc [hl]                                      ; $5740: $8e
    ld b, b                                       ; $5741: $40
    ei                                            ; $5742: $fb
    ret nz                                        ; $5743: $c0

    nop                                           ; $5744: $00
    nop                                           ; $5745: $00
    nop                                           ; $5746: $00
    nop                                           ; $5747: $00
    nop                                           ; $5748: $00
    nop                                           ; $5749: $00
    nop                                           ; $574a: $00
    nop                                           ; $574b: $00
    nop                                           ; $574c: $00
    nop                                           ; $574d: $00
    ld a, [bc]                                    ; $574e: $0a
    ld a, [bc]                                    ; $574f: $0a
    jr jr_002_5752                                ; $5750: $18 $00

jr_002_5752:
    inc a                                         ; $5752: $3c
    nop                                           ; $5753: $00
    inc l                                         ; $5754: $2c
    nop                                           ; $5755: $00
    add hl, de                                    ; $5756: $19
    ret nz                                        ; $5757: $c0

    dec h                                         ; $5758: $25
    ld b, b                                       ; $5759: $40
    dec h                                         ; $575a: $25
    ld b, b                                       ; $575b: $40
    rst RST_20                                    ; $575c: $e7
    ld b, b                                       ; $575d: $40
    rst RST_20                                    ; $575e: $e7
    ret nz                                        ; $575f: $c0

    rst RST_38                                    ; $5760: $ff
    nop                                           ; $5761: $00
    ld a, [hl]                                    ; $5762: $7e
    nop                                           ; $5763: $00
    nop                                           ; $5764: $00
    nop                                           ; $5765: $00
    nop                                           ; $5766: $00
    nop                                           ; $5767: $00
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    nop                                           ; $576a: $00
    nop                                           ; $576b: $00
    nop                                           ; $576c: $00
    nop                                           ; $576d: $00
    ld a, [bc]                                    ; $576e: $0a
    ld a, [bc]                                    ; $576f: $0a
    rrca                                          ; $5770: $0f
    add b                                         ; $5771: $80
    ld [de], a                                    ; $5772: $12
    ld b, b                                       ; $5773: $40
    dec e                                         ; $5774: $1d
    ret nz                                        ; $5775: $c0

    rrca                                          ; $5776: $0f
    add b                                         ; $5777: $80
    ld a, b                                       ; $5778: $78
    add b                                         ; $5779: $80
    adc b                                         ; $577a: $88
    add b                                         ; $577b: $80
    cp b                                          ; $577c: $b8
    add b                                         ; $577d: $80
    rst RST_28                                    ; $577e: $ef
    add b                                         ; $577f: $80
    dec b                                         ; $5780: $05
    nop                                           ; $5781: $00
    dec b                                         ; $5782: $05
    nop                                           ; $5783: $00
    nop                                           ; $5784: $00
    nop                                           ; $5785: $00
    nop                                           ; $5786: $00
    nop                                           ; $5787: $00
    nop                                           ; $5788: $00
    nop                                           ; $5789: $00
    nop                                           ; $578a: $00
    nop                                           ; $578b: $00
    nop                                           ; $578c: $00
    nop                                           ; $578d: $00
    ld a, [bc]                                    ; $578e: $0a
    ld a, [bc]                                    ; $578f: $0a
    ld a, [hl]                                    ; $5790: $7e
    nop                                           ; $5791: $00
    jp $8100                                      ; $5792: $c3 $00 $81


    nop                                           ; $5795: $00
    adc c                                         ; $5796: $89
    nop                                           ; $5797: $00
    sub l                                         ; $5798: $95
    nop                                           ; $5799: $00
    adc e                                         ; $579a: $8b
    add b                                         ; $579b: $80
    add $c0                                       ; $579c: $c6 $c0
    ld a, l                                       ; $579e: $7d
    ld b, b                                       ; $579f: $40
    ld b, $c0                                     ; $57a0: $06 $c0
    inc bc                                        ; $57a2: $03
    add b                                         ; $57a3: $80
    nop                                           ; $57a4: $00
    nop                                           ; $57a5: $00
    nop                                           ; $57a6: $00
    nop                                           ; $57a7: $00
    nop                                           ; $57a8: $00
    nop                                           ; $57a9: $00
    nop                                           ; $57aa: $00
    nop                                           ; $57ab: $00
    nop                                           ; $57ac: $00
    nop                                           ; $57ad: $00
    ld a, [bc]                                    ; $57ae: $0a
    ld a, [bc]                                    ; $57af: $0a
    inc bc                                        ; $57b0: $03
    add b                                         ; $57b1: $80
    ld b, [hl]                                    ; $57b2: $46
    ret nz                                        ; $57b3: $c0

    call nz, $8240                                ; $57b4: $c4 $40 $82
    ret nz                                        ; $57b7: $c0

    adc l                                         ; $57b8: $8d
    add b                                         ; $57b9: $80
    call c, Call_002_7800                         ; $57ba: $dc $00 $78
    nop                                           ; $57bd: $00
    ld [hl], b                                    ; $57be: $70
    nop                                           ; $57bf: $00
    ld a, c                                       ; $57c0: $79
    add b                                         ; $57c1: $80
    rrca                                          ; $57c2: $0f
    nop                                           ; $57c3: $00
    nop                                           ; $57c4: $00
    nop                                           ; $57c5: $00
    nop                                           ; $57c6: $00
    nop                                           ; $57c7: $00
    nop                                           ; $57c8: $00
    nop                                           ; $57c9: $00
    nop                                           ; $57ca: $00
    nop                                           ; $57cb: $00
    nop                                           ; $57cc: $00
    nop                                           ; $57cd: $00
    ld a, [bc]                                    ; $57ce: $0a
    ld a, [bc]                                    ; $57cf: $0a
    stop                                          ; $57d0: $10 $00
    rst RST_38                                    ; $57d2: $ff
    nop                                           ; $57d3: $00
    stop                                          ; $57d4: $10 $00
    jr c, jr_002_57d8                             ; $57d6: $38 $00

jr_002_57d8:
    ld e, b                                       ; $57d8: $58
    ld b, b                                       ; $57d9: $40
    cp $40                                        ; $57da: $fe $40
    rst RST_38                                    ; $57dc: $ff
    ret nz                                        ; $57dd: $c0

    ld hl, rP1                                    ; $57de: $21 $00 $ff
    ret nz                                        ; $57e1: $c0

    nop                                           ; $57e2: $00
    nop                                           ; $57e3: $00
    nop                                           ; $57e4: $00
    nop                                           ; $57e5: $00
    nop                                           ; $57e6: $00
    nop                                           ; $57e7: $00
    nop                                           ; $57e8: $00
    nop                                           ; $57e9: $00
    nop                                           ; $57ea: $00
    nop                                           ; $57eb: $00
    nop                                           ; $57ec: $00
    nop                                           ; $57ed: $00
    ld a, [bc]                                    ; $57ee: $0a
    ld a, [bc]                                    ; $57ef: $0a
    ccf                                           ; $57f0: $3f
    nop                                           ; $57f1: $00
    ld h, c                                       ; $57f2: $61
    add b                                         ; $57f3: $80
    or e                                          ; $57f4: $b3
    ld b, b                                       ; $57f5: $40
    sub d                                         ; $57f6: $92
    ld b, b                                       ; $57f7: $40
    sub d                                         ; $57f8: $92
    ld b, b                                       ; $57f9: $40
    sub d                                         ; $57fa: $92
    ld b, b                                       ; $57fb: $40
    sub d                                         ; $57fc: $92
    ld b, b                                       ; $57fd: $40
    or e                                          ; $57fe: $b3
    ld b, b                                       ; $57ff: $40
    ld h, c                                       ; $5800: $61
    add b                                         ; $5801: $80

jr_002_5802:
    ccf                                           ; $5802: $3f
    nop                                           ; $5803: $00
    nop                                           ; $5804: $00
    nop                                           ; $5805: $00
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    nop                                           ; $580a: $00
    nop                                           ; $580b: $00
    nop                                           ; $580c: $00
    nop                                           ; $580d: $00
    ld a, [bc]                                    ; $580e: $0a
    ld a, [bc]                                    ; $580f: $0a
    pop bc                                        ; $5810: $c1
    ret nz                                        ; $5811: $c0

    add b                                         ; $5812: $80
    ret nz                                        ; $5813: $c0

    nop                                           ; $5814: $00
    ld b, b                                       ; $5815: $40
    ld d, b                                       ; $5816: $50
    ld b, b                                       ; $5817: $40
    ld d, e                                       ; $5818: $53
    ld b, b                                       ; $5819: $40
    ld bc, $7300                                  ; $581a: $01 $00 $73
    nop                                           ; $581d: $00
    jr nz, jr_002_5820                            ; $581e: $20 $00

jr_002_5820:
    add b                                         ; $5820: $80
    ld b, b                                       ; $5821: $40
    pop hl                                        ; $5822: $e1
    ret nz                                        ; $5823: $c0

    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    nop                                           ; $5826: $00
    nop                                           ; $5827: $00
    nop                                           ; $5828: $00
    nop                                           ; $5829: $00
    nop                                           ; $582a: $00
    nop                                           ; $582b: $00
    nop                                           ; $582c: $00
    nop                                           ; $582d: $00
    ld a, [bc]                                    ; $582e: $0a
    ld a, [bc]                                    ; $582f: $0a
    pop hl                                        ; $5830: $e1
    ret nz                                        ; $5831: $c0

    rst RST_38                                    ; $5832: $ff
    ret nz                                        ; $5833: $c0

    ld b, b                                       ; $5834: $40
    add b                                         ; $5835: $80
    add b                                         ; $5836: $80
    ld b, b                                       ; $5837: $40
    or e                                          ; $5838: $b3
    ld b, b                                       ; $5839: $40
    sub c                                         ; $583a: $91
    ld b, b                                       ; $583b: $40
    or e                                          ; $583c: $b3
    ld b, b                                       ; $583d: $40
    call z, $61c0                                 ; $583e: $cc $c0 $61
    add b                                         ; $5841: $80
    ccf                                           ; $5842: $3f
    nop                                           ; $5843: $00
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00
    nop                                           ; $5846: $00
    nop                                           ; $5847: $00
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    nop                                           ; $584a: $00
    nop                                           ; $584b: $00
    nop                                           ; $584c: $00
    nop                                           ; $584d: $00
    ld a, [bc]                                    ; $584e: $0a
    ld a, [bc]                                    ; $584f: $0a
    jr c, jr_002_5852                             ; $5850: $38 $00

jr_002_5852:
    ld e, b                                       ; $5852: $58
    nop                                           ; $5853: $00
    ld hl, sp+$00                                 ; $5854: $f8 $00
    jr nc, jr_002_5858                            ; $5856: $30 $00

jr_002_5858:
    ld [hl], b                                    ; $5858: $70
    ld b, b                                       ; $5859: $40
    ld h, a                                       ; $585a: $67
    ret nz                                        ; $585b: $c0

    db $fc                                        ; $585c: $fc
    ret nz                                        ; $585d: $c0

    pop hl                                        ; $585e: $e1
    ret nz                                        ; $585f: $c0

    di                                            ; $5860: $f3
    add b                                         ; $5861: $80
    ld a, a                                       ; $5862: $7f
    nop                                           ; $5863: $00
    nop                                           ; $5864: $00
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    nop                                           ; $586a: $00
    nop                                           ; $586b: $00
    nop                                           ; $586c: $00
    nop                                           ; $586d: $00
    ld a, [bc]                                    ; $586e: $0a
    ld a, [bc]                                    ; $586f: $0a
    jr c, jr_002_5872                             ; $5870: $38 $00

jr_002_5872:
    inc a                                         ; $5872: $3c
    nop                                           ; $5873: $00
    db $e4                                        ; $5874: $e4
    nop                                           ; $5875: $00
    or h                                          ; $5876: $b4
    nop                                           ; $5877: $00
    rst RST_20                                    ; $5878: $e7
    ret nz                                        ; $5879: $c0

    ld l, b                                       ; $587a: $68
    ld b, b                                       ; $587b: $40
    ld l, b                                       ; $587c: $68
    ld b, b                                       ; $587d: $40
    daa                                           ; $587e: $27
    ret nz                                        ; $587f: $c0

    jr nc, jr_002_5802                            ; $5880: $30 $80

    rra                                           ; $5882: $1f
    nop                                           ; $5883: $00
    nop                                           ; $5884: $00
    nop                                           ; $5885: $00
    nop                                           ; $5886: $00
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    nop                                           ; $588a: $00
    nop                                           ; $588b: $00
    nop                                           ; $588c: $00
    nop                                           ; $588d: $00
    ld a, [bc]                                    ; $588e: $0a
    ld a, [bc]                                    ; $588f: $0a
    and a                                         ; $5890: $a7
    add b                                         ; $5891: $80
    xor a                                         ; $5892: $af
    ret nz                                        ; $5893: $c0

    db $ec                                        ; $5894: $ec
    ret nz                                        ; $5895: $c0

    sbc e                                         ; $5896: $9b
    ld b, b                                       ; $5897: $40
    sbc c                                         ; $5898: $99
    ld b, b                                       ; $5899: $40
    ld e, a                                       ; $589a: $5f
    ld b, b                                       ; $589b: $40
    ld c, b                                       ; $589c: $48
    ret nz                                        ; $589d: $c0

    ld b, a                                       ; $589e: $47
    ret nz                                        ; $589f: $c0

    jr nz, jr_002_58a2                            ; $58a0: $20 $00

jr_002_58a2:
    rra                                           ; $58a2: $1f
    ret nz                                        ; $58a3: $c0

    nop                                           ; $58a4: $00
    nop                                           ; $58a5: $00
    nop                                           ; $58a6: $00
    nop                                           ; $58a7: $00
    nop                                           ; $58a8: $00
    nop                                           ; $58a9: $00
    nop                                           ; $58aa: $00
    nop                                           ; $58ab: $00
    nop                                           ; $58ac: $00
    nop                                           ; $58ad: $00
    ld a, [bc]                                    ; $58ae: $0a
    ld a, [bc]                                    ; $58af: $0a
    ccf                                           ; $58b0: $3f
    add b                                         ; $58b1: $80
    ccf                                           ; $58b2: $3f
    ret nz                                        ; $58b3: $c0

    rst RST_38                                    ; $58b4: $ff
    ret nz                                        ; $58b5: $c0

    add hl, hl                                    ; $58b6: $29
    ret nz                                        ; $58b7: $c0

    jp hl                                         ; $58b8: $e9


    ret nz                                        ; $58b9: $c0

    add b                                         ; $58ba: $80
    ld b, b                                       ; $58bb: $40
    ldh a, [rLCDC]                                ; $58bc: $f0 $40
    ld a, b                                       ; $58be: $78
    ret nz                                        ; $58bf: $c0

    ld hl, $1f80                                  ; $58c0: $21 $80 $1f
    nop                                           ; $58c3: $00
    nop                                           ; $58c4: $00
    nop                                           ; $58c5: $00
    nop                                           ; $58c6: $00
    nop                                           ; $58c7: $00
    nop                                           ; $58c8: $00
    nop                                           ; $58c9: $00
    nop                                           ; $58ca: $00
    nop                                           ; $58cb: $00
    nop                                           ; $58cc: $00
    nop                                           ; $58cd: $00
    ld a, [bc]                                    ; $58ce: $0a
    ld a, [bc]                                    ; $58cf: $0a
    ld bc, $0280                                  ; $58d0: $01 $80 $02
    add b                                         ; $58d3: $80
    dec b                                         ; $58d4: $05
    add b                                         ; $58d5: $80
    rlca                                          ; $58d6: $07
    add b                                         ; $58d7: $80
    rlca                                          ; $58d8: $07
    add b                                         ; $58d9: $80
    rrca                                          ; $58da: $0f
    ret nz                                        ; $58db: $c0

    ld [$0840], sp                                ; $58dc: $08 $40 $08
    ret nz                                        ; $58df: $c0

    ld [$08c0], sp                                ; $58e0: $08 $c0 $08
    ret nz                                        ; $58e3: $c0

    ld [$08c0], sp                                ; $58e4: $08 $c0 $08
    ret nz                                        ; $58e7: $c0

    rrca                                          ; $58e8: $0f
    ret nz                                        ; $58e9: $c0

    ld [$0f40], sp                                ; $58ea: $08 $40 $0f
    ret nz                                        ; $58ed: $c0

    rrca                                          ; $58ee: $0f
    rrca                                          ; $58ef: $0f
    nop                                           ; $58f0: $00
    nop                                           ; $58f1: $00
    rrca                                          ; $58f2: $0f
    ret nz                                        ; $58f3: $c0

    db $10                                        ; $58f4: $10
    jr nz, @+$21                                  ; $58f5: $20 $1f

    ldh [rNR31], a                                ; $58f7: $e0 $1b
    ldh [rNR31], a                                ; $58f9: $e0 $1b
    ldh [$ff1f], a                                ; $58fb: $e0 $1f
    ldh [$ff1f], a                                ; $58fd: $e0 $1f
    ldh [$ff1f], a                                ; $58ff: $e0 $1f
    ld hl, sp+$70                                 ; $5901: $f8 $70
    inc a                                         ; $5903: $3c
    ldh a, [$ff3c]                                ; $5904: $f0 $3c
    rst RST_38                                    ; $5906: $ff
    db $fc                                        ; $5907: $fc
    rst RST_38                                    ; $5908: $ff
    ld hl, sp+$7f                                 ; $5909: $f8 $7f
    nop                                           ; $590b: $00
    nop                                           ; $590c: $00
    nop                                           ; $590d: $00
    rrca                                          ; $590e: $0f
    rrca                                          ; $590f: $0f
    add hl, sp                                    ; $5910: $39
    ret nz                                        ; $5911: $c0

    cpl                                           ; $5912: $2f
    ld b, b                                       ; $5913: $40
    cpl                                           ; $5914: $2f
    ldh a, [$ff2f]                                ; $5915: $f0 $2f
    ldh a, [$ff2f]                                ; $5917: $f0 $2f
    ldh a, [$ff2f]                                ; $5919: $f0 $2f
    ldh a, [$ff2f]                                ; $591b: $f0 $2f
    ld b, b                                       ; $591d: $40
    add hl, sp                                    ; $591e: $39
    ld b, b                                       ; $591f: $40
    ld bc, $0140                                  ; $5920: $01 $40 $01
    ld b, b                                       ; $5923: $40
    ld bc, $0140                                  ; $5924: $01 $40 $01
    ld b, b                                       ; $5927: $40
    ld bc, $0140                                  ; $5928: $01 $40 $01
    ld b, b                                       ; $592b: $40
    ld bc, $0fc0                                  ; $592c: $01 $c0 $0f
    rrca                                          ; $592f: $0f
    ld b, $00                                     ; $5930: $06 $00
    ld b, $00                                     ; $5932: $06 $00
    ld b, $00                                     ; $5934: $06 $00
    rra                                           ; $5936: $1f
    ldh a, [$ff03]                                ; $5937: $f0 $03
    add b                                         ; $5939: $80
    rlca                                          ; $593a: $07
    ret nz                                        ; $593b: $c0

    rrca                                          ; $593c: $0f
    ldh [$ff1f], a                                ; $593d: $e0 $1f
    ldh a, [rNR10]                                ; $593f: $f0 $10
    ldh a, [rNR21]                                ; $5941: $f0 $16
    ldh a, [rNR10]                                ; $5943: $f0 $10
    ldh a, [$ff1f]                                ; $5945: $f0 $1f
    ldh a, [rIF]                                  ; $5947: $f0 $0f
    ldh [rTAC], a                                 ; $5949: $e0 $07
    ret nz                                        ; $594b: $c0

    rra                                           ; $594c: $1f
    ldh a, [rIF]                                  ; $594d: $f0 $0f
    rrca                                          ; $594f: $0f
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    nop                                           ; $5953: $00
    rst RST_38                                    ; $5954: $ff
    add b                                         ; $5955: $80
    ld a, a                                       ; $5956: $7f
    nop                                           ; $5957: $00
    ld h, e                                       ; $5958: $63
    jr c, jr_002_59be                             ; $5959: $38 $63

    jr c, jr_002_59c0                             ; $595b: $38 $63

    jr c, @+$01                                   ; $595d: $38 $ff

    cp $ff                                        ; $595f: $fe $ff
    cp $ff                                        ; $5961: $fe $ff
    cp $ff                                        ; $5963: $fe $ff
    cp $e3                                        ; $5965: $fe $e3
    add $eb                                       ; $5967: $c6 $eb
    sub $22                                       ; $5969: $d6 $22
    ld b, h                                       ; $596b: $44
    ld a, $7c                                     ; $596c: $3e $7c
    rrca                                          ; $596e: $0f
    rrca                                          ; $596f: $0f
    rlca                                          ; $5970: $07
    ret nz                                        ; $5971: $c0

    rrca                                          ; $5972: $0f
    ldh [rNR31], a                                ; $5973: $e0 $1b
    ld [hl], b                                    ; $5975: $70
    rra                                           ; $5976: $1f
    ldh a, [rNR21]                                ; $5977: $f0 $16
    ret nc                                        ; $5979: $d0

    rra                                           ; $597a: $1f
    ldh a, [$ff1f]                                ; $597b: $f0 $1f
    ldh a, [rNR31]                                ; $597d: $f0 $1b
    ret nc                                        ; $597f: $d0

    ld de, $1010                                  ; $5980: $11 $10 $10
    db $10                                        ; $5983: $10
    rra                                           ; $5984: $1f
    ldh a, [rSC]                                  ; $5985: $f0 $02
    add b                                         ; $5987: $80
    ld [bc], a                                    ; $5988: $02
    add b                                         ; $5989: $80
    ld [bc], a                                    ; $598a: $02
    add b                                         ; $598b: $80
    inc bc                                        ; $598c: $03
    add b                                         ; $598d: $80
    rrca                                          ; $598e: $0f
    rrca                                          ; $598f: $0f
    dec de                                        ; $5990: $1b
    ld h, b                                       ; $5991: $60
    rra                                           ; $5992: $1f
    ldh [rIF], a                                  ; $5993: $e0 $0f
    ret nz                                        ; $5995: $c0

    rlca                                          ; $5996: $07
    nop                                           ; $5997: $00
    dec e                                         ; $5998: $1d
    ldh [$ff30], a                                ; $5999: $e0 $30
    ld [hl], b                                    ; $599b: $70
    jr nz, jr_002_59ce                            ; $599c: $20 $30

    cpl                                           ; $599e: $2f
    ldh a, [rNR41]                                ; $599f: $f0 $20
    ld [hl], b                                    ; $59a1: $70
    scf                                           ; $59a2: $37
    ldh a, [rNR10]                                ; $59a3: $f0 $10
    ld h, b                                       ; $59a5: $60
    rla                                           ; $59a6: $17
    ldh [rNR24], a                                ; $59a7: $e0 $19
    ret nz                                        ; $59a9: $c0

    dec c                                         ; $59aa: $0d
    add b                                         ; $59ab: $80
    rlca                                          ; $59ac: $07
    nop                                           ; $59ad: $00
    rrca                                          ; $59ae: $0f
    rrca                                          ; $59af: $0f
    nop                                           ; $59b0: $00
    nop                                           ; $59b1: $00
    dec de                                        ; $59b2: $1b
    nop                                           ; $59b3: $00
    ld l, $80                                     ; $59b4: $2e $80
    inc b                                         ; $59b6: $04
    nop                                           ; $59b7: $00
    inc b                                         ; $59b8: $04
    nop                                           ; $59b9: $00
    inc b                                         ; $59ba: $04
    nop                                           ; $59bb: $00
    ccf                                           ; $59bc: $3f
    nop                                           ; $59bd: $00

jr_002_59be:
    ld a, a                                       ; $59be: $7f
    add b                                         ; $59bf: $80

jr_002_59c0:
    ld a, a                                       ; $59c0: $7f
    jp z, $eedf                                   ; $59c1: $ca $df $ee

    rst RST_38                                    ; $59c4: $ff
    xor $ff                                       ; $59c5: $ee $ff
    db $fc                                        ; $59c7: $fc
    ld a, a                                       ; $59c8: $7f
    ld hl, sp+$00                                 ; $59c9: $f8 $00
    nop                                           ; $59cb: $00
    nop                                           ; $59cc: $00
    nop                                           ; $59cd: $00

jr_002_59ce:
    rrca                                          ; $59ce: $0f
    rrca                                          ; $59cf: $0f
    rlca                                          ; $59d0: $07
    add b                                         ; $59d1: $80
    rrca                                          ; $59d2: $0f
    ret nz                                        ; $59d3: $c0

    inc e                                         ; $59d4: $1c
    ldh [rNR14], a                                ; $59d5: $e0 $14
    and b                                         ; $59d7: $a0
    inc d                                         ; $59d8: $14
    and b                                         ; $59d9: $a0
    inc d                                         ; $59da: $14
    and b                                         ; $59db: $a0
    inc d                                         ; $59dc: $14
    and b                                         ; $59dd: $a0
    rra                                           ; $59de: $1f
    ldh [$ff1f], a                                ; $59df: $e0 $1f
    ldh a, [rNR32]                                ; $59e1: $f0 $1c
    jr @+$19                                      ; $59e3: $18 $17

    ld hl, sp+$12                                 ; $59e5: $f8 $12
    ld c, b                                       ; $59e7: $48
    ld [de], a                                    ; $59e8: $12
    ld c, b                                       ; $59e9: $48
    ld [de], a                                    ; $59ea: $12
    ld c, b                                       ; $59eb: $48
    ld [bc], a                                    ; $59ec: $02
    ld [$0f0f], sp                                ; $59ed: $08 $0f $0f
    ld a, a                                       ; $59f0: $7f
    db $fc                                        ; $59f1: $fc
    ld h, a                                       ; $59f2: $67
    db $fc                                        ; $59f3: $fc
    ld a, a                                       ; $59f4: $7f
    db $fc                                        ; $59f5: $fc
    jr z, jr_002_5a20                             ; $59f6: $28 $28

    cpl                                           ; $59f8: $2f
    add sp, $2d                                   ; $59f9: $e8 $2d
    add sp, $25                                   ; $59fb: $e8 $25
    ret z                                         ; $59fd: $c8

    inc hl                                        ; $59fe: $23
    adc b                                         ; $59ff: $88
    inc h                                         ; $5a00: $24
    ld c, b                                       ; $5a01: $48
    jr z, @+$2a                                   ; $5a02: $28 $28

    cpl                                           ; $5a04: $2f
    add sp, $2d                                   ; $5a05: $e8 $2d
    add sp, $7f                                   ; $5a07: $e8 $7f
    db $fc                                        ; $5a09: $fc
    ld h, a                                       ; $5a0a: $67
    db $fc                                        ; $5a0b: $fc
    ld a, a                                       ; $5a0c: $7f
    db $fc                                        ; $5a0d: $fc
    rrca                                          ; $5a0e: $0f
    rrca                                          ; $5a0f: $0f
    nop                                           ; $5a10: $00
    jr c, jr_002_5a13                             ; $5a11: $38 $00

jr_002_5a13:
    jr c, jr_002_5a15                             ; $5a13: $38 $00

jr_002_5a15:
    jr c, jr_002_5a47                             ; $5a15: $38 $30

    jr c, jr_002_5a49                             ; $5a17: $38 $30

    jr c, jr_002_5a4b                             ; $5a19: $38 $30

    ld a, h                                       ; $5a1b: $7c

jr_002_5a1c:
    jr nc, jr_002_5a1c                            ; $5a1c: $30 $fe

jr_002_5a1e:
    jr nc, jr_002_5a1e                            ; $5a1e: $30 $fe

jr_002_5a20:
    ld a, b                                       ; $5a20: $78
    add [hl]                                      ; $5a21: $86
    db $fc                                        ; $5a22: $fc
    or [hl]                                       ; $5a23: $b6
    db $fc                                        ; $5a24: $fc
    add [hl]                                      ; $5a25: $86
    call nz, $c4b6                                ; $5a26: $c4 $b6 $c4
    add [hl]                                      ; $5a29: $86
    call nz, $fcfe                                ; $5a2a: $c4 $fe $fc
    cp $0f                                        ; $5a2d: $fe $0f
    rrca                                          ; $5a2f: $0f
    nop                                           ; $5a30: $00
    nop                                           ; $5a31: $00
    nop                                           ; $5a32: $00
    nop                                           ; $5a33: $00
    nop                                           ; $5a34: $00
    nop                                           ; $5a35: $00

jr_002_5a36:
    nop                                           ; $5a36: $00
    nop                                           ; $5a37: $00
    ld [$3e06], sp                                ; $5a38: $08 $06 $3e
    ld e, $7f                                     ; $5a3b: $1e $7f
    ld a, b                                       ; $5a3d: $78
    add b                                         ; $5a3e: $80
    ldh [rIE], a                                  ; $5a3f: $e0 $ff
    ret nz                                        ; $5a41: $c0

    cp a                                          ; $5a42: $bf
    add b                                         ; $5a43: $80
    cp a                                          ; $5a44: $bf
    add b                                         ; $5a45: $80
    rst RST_38                                    ; $5a46: $ff

jr_002_5a47:
    add b                                         ; $5a47: $80
    nop                                           ; $5a48: $00

jr_002_5a49:
    nop                                           ; $5a49: $00
    nop                                           ; $5a4a: $00

jr_002_5a4b:
    nop                                           ; $5a4b: $00
    nop                                           ; $5a4c: $00
    nop                                           ; $5a4d: $00
    rrca                                          ; $5a4e: $0f
    rrca                                          ; $5a4f: $0f
    rst RST_38                                    ; $5a50: $ff
    cp $ff                                        ; $5a51: $fe $ff
    cp $fa                                        ; $5a53: $fe $fa
    ld [$0efa], sp                                ; $5a55: $08 $fa $0e
    jp c, $fb0a                                   ; $5a58: $da $0a $fb

    jr jr_002_5a36                                ; $5a5b: $18 $d9

    ldh a, [$fffb]                                ; $5a5d: $f0 $fb
    ld hl, sp-$26                                 ; $5a5f: $f8 $da
    ld c, $fa                                     ; $5a61: $0e $fa
    ld a, [bc]                                    ; $5a63: $0a
    ei                                            ; $5a64: $fb
    ld a, [$fedb]                                 ; $5a65: $fa $db $fe
    reti                                          ; $5a68: $d9


    ldh a, [rIE]                                  ; $5a69: $f0 $ff
    cp $ff                                        ; $5a6b: $fe $ff
    cp $0f                                        ; $5a6d: $fe $0f
    rrca                                          ; $5a6f: $0f
    nop                                           ; $5a70: $00
    nop                                           ; $5a71: $00
    nop                                           ; $5a72: $00
    nop                                           ; $5a73: $00
    ccf                                           ; $5a74: $3f
    ld hl, sp+$4f                                 ; $5a75: $f8 $4f
    db $fc                                        ; $5a77: $fc
    add a                                         ; $5a78: $87
    cp $b6                                        ; $5a79: $fe $b6
    ld c, [hl]                                    ; $5a7b: $4e
    add [hl]                                      ; $5a7c: $86
    xor [hl]                                      ; $5a7d: $ae
    add [hl]                                      ; $5a7e: $86
    xor [hl]                                      ; $5a7f: $ae
    add [hl]                                      ; $5a80: $86
    xor $87                                       ; $5a81: $ee $87
    cp $ff                                        ; $5a83: $fe $ff
    cp $01                                        ; $5a85: $fe $01
    ld b, b                                       ; $5a87: $40
    ld bc, $0140                                  ; $5a88: $01 $40 $01
    ld b, b                                       ; $5a8b: $40
    ld bc, $0f40                                  ; $5a8c: $01 $40 $0f
    rrca                                          ; $5a8f: $0f
    nop                                           ; $5a90: $00
    ld hl, sp+$01                                 ; $5a91: $f8 $01
    ld d, h                                       ; $5a93: $54
    ld bc, $7974                                  ; $5a94: $01 $74 $79
    adc h                                         ; $5a97: $8c
    ld c, b                                       ; $5a98: $48
    ld hl, sp-$01                                 ; $5a99: $f8 $ff
    cp $9f                                        ; $5a9b: $fe $9f
    jp z, Jump_002_7a9c                           ; $5a9d: $ca $9c $7a

    sbc e                                         ; $5aa0: $9b
    cp d                                          ; $5aa1: $ba
    or [hl]                                       ; $5aa2: $b6
    jp c, $dab5                                   ; $5aa3: $da $b5 $da

    or a                                          ; $5aa6: $b7
    jp c, $babb                                   ; $5aa7: $da $bb $ba

    cp h                                          ; $5aaa: $bc
    ld a, d                                       ; $5aab: $7a
    rst RST_38                                    ; $5aac: $ff
    cp $0f                                        ; $5aad: $fe $0f
    rrca                                          ; $5aaf: $0f
    inc bc                                        ; $5ab0: $03
    nop                                           ; $5ab1: $00
    ld [bc], a                                    ; $5ab2: $02
    add b                                         ; $5ab3: $80
    ld [bc], a                                    ; $5ab4: $02
    add b                                         ; $5ab5: $80
    ld [bc], a                                    ; $5ab6: $02
    sbc h                                         ; $5ab7: $9c
    ld [bc], a                                    ; $5ab8: $02
    cp [hl]                                       ; $5ab9: $be
    ld [bc], a                                    ; $5aba: $02
    and d                                         ; $5abb: $a2
    cp $e2                                        ; $5abc: $fe $e2
    add d                                         ; $5abe: $82
    cp [hl]                                       ; $5abf: $be
    ld a, [hl]                                    ; $5ac0: $7e
    db $fc                                        ; $5ac1: $fc
    ld [bc], a                                    ; $5ac2: $02
    add b                                         ; $5ac3: $80
    rrca                                          ; $5ac4: $0f
    add b                                         ; $5ac5: $80
    add hl, de                                    ; $5ac6: $19
    add b                                         ; $5ac7: $80
    add hl, de                                    ; $5ac8: $19
    add b                                         ; $5ac9: $80
    add hl, de                                    ; $5aca: $19
    add b                                         ; $5acb: $80
    rrca                                          ; $5acc: $0f
    add b                                         ; $5acd: $80
    rrca                                          ; $5ace: $0f
    rrca                                          ; $5acf: $0f
    rst RST_38                                    ; $5ad0: $ff
    cp $c0                                        ; $5ad1: $fe $c0
    ld b, $df                                     ; $5ad3: $06 $df
    or $d8                                        ; $5ad5: $f6 $d8
    ld [hl], $d8                                  ; $5ad7: $36 $d8
    ld [hl], $d8                                  ; $5ad9: $36 $d8
    ld [hl], $d8                                  ; $5adb: $36 $d8
    ld [hl], $df                                  ; $5add: $36 $df
    or $c0                                        ; $5adf: $f6 $c0
    ld b, $c8                                     ; $5ae1: $06 $c8
    ld b, $dc                                     ; $5ae3: $06 $dc
    ld b, $c8                                     ; $5ae5: $06 $c8
    halt                                          ; $5ae7: $76
    ret nz                                        ; $5ae8: $c0

    ld b, $c0                                     ; $5ae9: $06 $c0
    ld c, $ff                                     ; $5aeb: $0e $ff
    cp $0f                                        ; $5aed: $fe $0f
    rrca                                          ; $5aef: $0f
    cp $fe                                        ; $5af0: $fe $fe
    db $fc                                        ; $5af2: $fc
    ld a, [hl]                                    ; $5af3: $7e
    db $fc                                        ; $5af4: $fc
    ld a, [hl]                                    ; $5af5: $7e
    ld hl, sp+$3e                                 ; $5af6: $f8 $3e
    ld hl, sp+$3e                                 ; $5af8: $f8 $3e
    ld [bc], a                                    ; $5afa: $02
    add b                                         ; $5afb: $80
    add d                                         ; $5afc: $82
    add d                                         ; $5afd: $82
    jp nz, $e086                                  ; $5afe: $c2 $86 $e0

    ld c, $f0                                     ; $5b01: $0e $f0
    ld e, $e0                                     ; $5b03: $1e $e0
    ld c, $e0                                     ; $5b05: $0e $e0
    ld c, $c1                                     ; $5b07: $0e $c1
    ld b, $c3                                     ; $5b09: $06 $c3
    add [hl]                                      ; $5b0b: $86
    adc a                                         ; $5b0c: $8f
    ldh [c], a                                    ; $5b0d: $e2
    rrca                                          ; $5b0e: $0f
    rrca                                          ; $5b0f: $0f
    nop                                           ; $5b10: $00
    nop                                           ; $5b11: $00
    nop                                           ; $5b12: $00
    inc c                                         ; $5b13: $0c
    nop                                           ; $5b14: $00
    ld [hl], $00                                  ; $5b15: $36 $00
    adc $1b                                       ; $5b17: $ce $1b
    ld a, $24                                     ; $5b19: $3e $24
    cp $1f                                        ; $5b1b: $fe $1f
    cp $0f                                        ; $5b1d: $fe $0f
    db $fc                                        ; $5b1f: $fc
    rra                                           ; $5b20: $1f
    call z, $8c3f                                 ; $5b21: $cc $3f $8c
    rst RST_38                                    ; $5b24: $ff
    inc c                                         ; $5b25: $0c
    cp $0c                                        ; $5b26: $fe $0c
    nop                                           ; $5b28: $00
    nop                                           ; $5b29: $00
    nop                                           ; $5b2a: $00
    nop                                           ; $5b2b: $00
    nop                                           ; $5b2c: $00
    nop                                           ; $5b2d: $00
    rrca                                          ; $5b2e: $0f
    rrca                                          ; $5b2f: $0f
    nop                                           ; $5b30: $00
    nop                                           ; $5b31: $00
    rrca                                          ; $5b32: $0f
    ldh [$ff3f], a                                ; $5b33: $e0 $3f
    jr nc, @+$63                                  ; $5b35: $30 $61

    ret c                                         ; $5b37: $d8

    ld b, b                                       ; $5b38: $40
    ld hl, sp-$40                                 ; $5b39: $f8 $c0
    db $fc                                        ; $5b3b: $fc
    add b                                         ; $5b3c: $80
    ld a, h                                       ; $5b3d: $7c
    push de                                       ; $5b3e: $d5
    ld a, h                                       ; $5b3f: $7c
    add b                                         ; $5b40: $80
    ld a, h                                       ; $5b41: $7c
    push de                                       ; $5b42: $d5
    ld a, h                                       ; $5b43: $7c
    add b                                         ; $5b44: $80
    ld a, h                                       ; $5b45: $7c
    push de                                       ; $5b46: $d5
    ld a, h                                       ; $5b47: $7c
    add b                                         ; $5b48: $80
    ld a, h                                       ; $5b49: $7c
    rst RST_38                                    ; $5b4a: $ff
    ldh a, [rP1]                                  ; $5b4b: $f0 $00
    nop                                           ; $5b4d: $00
    rrca                                          ; $5b4e: $0f
    rrca                                          ; $5b4f: $0f
    nop                                           ; $5b50: $00
    nop                                           ; $5b51: $00
    inc e                                         ; $5b52: $1c
    nop                                           ; $5b53: $00
    ccf                                           ; $5b54: $3f
    nop                                           ; $5b55: $00
    cpl                                           ; $5b56: $2f
    add b                                         ; $5b57: $80
    ld a, $c0                                     ; $5b58: $3e $c0
    ld e, h                                       ; $5b5a: $5c
    ld h, b                                       ; $5b5b: $60
    ld b, b                                       ; $5b5c: $40
    jr nc, jr_002_5bd7                            ; $5b5d: $30 $78

    jr jr_002_5be0                                ; $5b5f: $18 $7f

    adc h                                         ; $5b61: $8c
    ld b, a                                       ; $5b62: $47
    db $fc                                        ; $5b63: $fc
    ld a, b                                       ; $5b64: $78
    ld a, h                                       ; $5b65: $7c
    ld a, a                                       ; $5b66: $7f
    add h                                         ; $5b67: $84
    ld a, a                                       ; $5b68: $7f
    db $fc                                        ; $5b69: $fc
    rlca                                          ; $5b6a: $07
    db $fc                                        ; $5b6b: $fc
    nop                                           ; $5b6c: $00
    ld a, h                                       ; $5b6d: $7c
    rrca                                          ; $5b6e: $0f
    rrca                                          ; $5b6f: $0f
    rlca                                          ; $5b70: $07
    ret nz                                        ; $5b71: $c0

    ld [$0b20], sp                                ; $5b72: $08 $20 $0b
    and b                                         ; $5b75: $a0
    dec bc                                        ; $5b76: $0b
    and b                                         ; $5b77: $a0
    rrca                                          ; $5b78: $0f
    and b                                         ; $5b79: $a0
    rlca                                          ; $5b7a: $07
    jr nz, jr_002_5b89                            ; $5b7b: $20 $0c

    ld h, b                                       ; $5b7d: $60
    jr jr_002_5bb0                                ; $5b7e: $18 $30

    inc sp                                        ; $5b80: $33
    sbc b                                         ; $5b81: $98
    ld h, [hl]                                    ; $5b82: $66
    call z, $66cc                                 ; $5b83: $cc $cc $66
    sbc b                                         ; $5b86: $98
    ld [hl-], a                                   ; $5b87: $32
    cp a                                          ; $5b88: $bf

jr_002_5b89:
    ld a, [$0280]                                 ; $5b89: $fa $80 $02
    rst RST_38                                    ; $5b8c: $ff
    cp $0f                                        ; $5b8d: $fe $0f
    rrca                                          ; $5b8f: $0f
    nop                                           ; $5b90: $00
    nop                                           ; $5b91: $00
    nop                                           ; $5b92: $00
    nop                                           ; $5b93: $00
    rra                                           ; $5b94: $1f
    db $fc                                        ; $5b95: $fc
    ccf                                           ; $5b96: $3f
    cp $26                                        ; $5b97: $fe $26
    xor d                                         ; $5b99: $aa
    ld h, $aa                                     ; $5b9a: $26 $aa
    cpl                                           ; $5b9c: $2f
    cp $ff                                        ; $5b9d: $fe $ff
    cp $ff                                        ; $5b9f: $fe $ff
    cp $ff                                        ; $5ba1: $fe $ff
    cp $ff                                        ; $5ba3: $fe $ff
    cp $e7                                        ; $5ba5: $fe $e7
    and $24                                       ; $5ba7: $e6 $24
    inc h                                         ; $5ba9: $24
    inc a                                         ; $5baa: $3c
    inc a                                         ; $5bab: $3c
    nop                                           ; $5bac: $00
    nop                                           ; $5bad: $00
    rrca                                          ; $5bae: $0f
    rrca                                          ; $5baf: $0f

jr_002_5bb0:
    inc bc                                        ; $5bb0: $03
    add b                                         ; $5bb1: $80
    ld [bc], a                                    ; $5bb2: $02
    add b                                         ; $5bb3: $80
    rra                                           ; $5bb4: $1f
    ldh a, [$ff30]                                ; $5bb5: $f0 $30
    jr jr_002_5c19                                ; $5bb7: $18 $60

    inc c                                         ; $5bb9: $0c
    ld b, b                                       ; $5bba: $40
    inc b                                         ; $5bbb: $04
    ld b, b                                       ; $5bbc: $40
    inc b                                         ; $5bbd: $04
    rst RST_38                                    ; $5bbe: $ff
    cp $80                                        ; $5bbf: $fe $80
    ld [bc], a                                    ; $5bc1: $02
    rst RST_38                                    ; $5bc2: $ff
    cp $40                                        ; $5bc3: $fe $40
    inc b                                         ; $5bc5: $04
    ld b, e                                       ; $5bc6: $43
    add h                                         ; $5bc7: $84
    ld h, e                                       ; $5bc8: $63
    adc h                                         ; $5bc9: $8c
    ld sp, $1f18                                  ; $5bca: $31 $18 $1f
    ldh a, [rIF]                                  ; $5bcd: $f0 $0f
    rrca                                          ; $5bcf: $0f
    inc bc                                        ; $5bd0: $03
    add $07                                       ; $5bd1: $c6 $07
    cp $0c                                        ; $5bd3: $fe $0c
    cp $79                                        ; $5bd5: $fe $79

jr_002_5bd7:
    cp $e3                                        ; $5bd7: $fe $e3
    cp $ff                                        ; $5bd9: $fe $ff
    ld e, [hl]                                    ; $5bdb: $5e
    rst RST_38                                    ; $5bdc: $ff
    cp $ff                                        ; $5bdd: $fe $ff
    add d                                         ; $5bdf: $82

jr_002_5be0:
    add b                                         ; $5be0: $80
    ld b, d                                       ; $5be1: $42
    rst RST_38                                    ; $5be2: $ff
    cp $28                                        ; $5be3: $fe $28
    jr z, @+$01                                   ; $5be5: $28 $ff

    cp $80                                        ; $5be7: $fe $80
    ld [bc], a                                    ; $5be9: $02
    ld b, b                                       ; $5bea: $40
    ld [bc], a                                    ; $5beb: $02
    ld a, a                                       ; $5bec: $7f
    db $fc                                        ; $5bed: $fc
    rrca                                          ; $5bee: $0f
    rrca                                          ; $5bef: $0f
    nop                                           ; $5bf0: $00
    nop                                           ; $5bf1: $00
    nop                                           ; $5bf2: $00
    nop                                           ; $5bf3: $00
    nop                                           ; $5bf4: $00
    nop                                           ; $5bf5: $00
    nop                                           ; $5bf6: $00
    db $fc                                        ; $5bf7: $fc
    ld a, c                                       ; $5bf8: $79
    add d                                         ; $5bf9: $82
    rst RST_20                                    ; $5bfa: $e7
    cp $95                                        ; $5bfb: $fe $95
    ld b, $95                                     ; $5bfd: $06 $95
    ld a, [bc]                                    ; $5bff: $0a
    sub b                                         ; $5c00: $90
    ld [de], a                                    ; $5c01: $12
    ret nc                                        ; $5c02: $d0

    ld [de], a                                    ; $5c03: $12
    ld a, a                                       ; $5c04: $7f
    db $fc                                        ; $5c05: $fc
    ld a, $7c                                     ; $5c06: $3e $7c
    nop                                           ; $5c08: $00
    nop                                           ; $5c09: $00
    nop                                           ; $5c0a: $00
    nop                                           ; $5c0b: $00
    nop                                           ; $5c0c: $00
    nop                                           ; $5c0d: $00
    rrca                                          ; $5c0e: $0f
    rrca                                          ; $5c0f: $0f
    nop                                           ; $5c10: $00
    nop                                           ; $5c11: $00
    nop                                           ; $5c12: $00
    nop                                           ; $5c13: $00
    rra                                           ; $5c14: $1f
    nop                                           ; $5c15: $00
    ld [hl], c                                    ; $5c16: $71
    ret nz                                        ; $5c17: $c0

    ld b, b                                       ; $5c18: $40

jr_002_5c19:
    ld b, b                                       ; $5c19: $40
    ret nz                                        ; $5c1a: $c0

    ld h, b                                       ; $5c1b: $60
    add d                                         ; $5c1c: $82
    and b                                         ; $5c1d: $a0
    add e                                         ; $5c1e: $83
    cp b                                          ; $5c1f: $b8
    add d                                         ; $5c20: $82
    cp h                                          ; $5c21: $bc
    add b                                         ; $5c22: $80
    ld a, [hl]                                    ; $5c23: $7e
    pop hl                                        ; $5c24: $e1
    cp $3f                                        ; $5c25: $fe $3f
    db $fc                                        ; $5c27: $fc
    rlca                                          ; $5c28: $07
    ldh a, [rP1]                                  ; $5c29: $f0 $00
    nop                                           ; $5c2b: $00
    nop                                           ; $5c2c: $00
    nop                                           ; $5c2d: $00
    rrca                                          ; $5c2e: $0f
    rrca                                          ; $5c2f: $0f
    rra                                           ; $5c30: $1f
    ldh a, [$ff7f]                                ; $5c31: $f0 $7f
    db $fc                                        ; $5c33: $fc
    rst RST_38                                    ; $5c34: $ff
    cp $f8                                        ; $5c35: $fe $f8
    ld a, $f4                                     ; $5c37: $3e $f4
    ld e, [hl]                                    ; $5c39: $5e
    db $f4                                        ; $5c3a: $f4
    ld e, [hl]                                    ; $5c3b: $5e
    rrca                                          ; $5c3c: $0f
    ldh [$ff1f], a                                ; $5c3d: $e0 $1f
    ldh a, [rNR32]                                ; $5c3f: $f0 $1c
    ld [hl], b                                    ; $5c41: $70
    dec sp                                        ; $5c42: $3b
    cp b                                          ; $5c43: $b8
    dec sp                                        ; $5c44: $3b
    cp b                                          ; $5c45: $b8
    ld a, e                                       ; $5c46: $7b
    cp h                                          ; $5c47: $bc
    ld a, h                                       ; $5c48: $7c
    ld a, h                                       ; $5c49: $7c
    ld a, a                                       ; $5c4a: $7f
    db $fc                                        ; $5c4b: $fc
    ld a, a                                       ; $5c4c: $7f
    db $fc                                        ; $5c4d: $fc
    rrca                                          ; $5c4e: $0f
    rrca                                          ; $5c4f: $0f
    nop                                           ; $5c50: $00
    jr c, jr_002_5c53                             ; $5c51: $38 $00

jr_002_5c53:
    ld l, h                                       ; $5c53: $6c
    nop                                           ; $5c54: $00
    ld b, h                                       ; $5c55: $44
    nop                                           ; $5c56: $00
    call nz, $8c00                                ; $5c57: $c4 $00 $8c
    nop                                           ; $5c5a: $00
    ret c                                         ; $5c5b: $d8

    rra                                           ; $5c5c: $1f
    ldh a, [rNR10]                                ; $5c5d: $f0 $10
    ld b, b                                       ; $5c5f: $40
    rra                                           ; $5c60: $1f
    ld b, b                                       ; $5c61: $40
    ld de, $1d40                                  ; $5c62: $11 $40 $1d
    ld b, b                                       ; $5c65: $40
    ld de, $1f40                                  ; $5c66: $11 $40 $1f
    ld b, b                                       ; $5c69: $40
    db $10                                        ; $5c6a: $10
    ld b, b                                       ; $5c6b: $40
    rra                                           ; $5c6c: $1f
    ret nz                                        ; $5c6d: $c0

    rrca                                          ; $5c6e: $0f
    rrca                                          ; $5c6f: $0f
    nop                                           ; $5c70: $00
    nop                                           ; $5c71: $00
    rlca                                          ; $5c72: $07
    add b                                         ; $5c73: $80
    dec b                                         ; $5c74: $05
    add b                                         ; $5c75: $80
    dec b                                         ; $5c76: $05
    add b                                         ; $5c77: $80
    dec b                                         ; $5c78: $05
    add b                                         ; $5c79: $80
    dec b                                         ; $5c7a: $05
    add b                                         ; $5c7b: $80
    inc e                                         ; $5c7c: $1c
    ldh [$ff30], a                                ; $5c7d: $e0 $30
    ldh a, [rNR51]                                ; $5c7f: $f0 $25
    ld [hl], b                                    ; $5c81: $70
    ld l, l                                       ; $5c82: $6d
    cp b                                          ; $5c83: $b8
    ld c, b                                       ; $5c84: $48
    cp b                                          ; $5c85: $b8
    ld c, b                                       ; $5c86: $48
    cp b                                          ; $5c87: $b8
    ld l, l                                       ; $5c88: $6d
    cp b                                          ; $5c89: $b8
    dec [hl]                                      ; $5c8a: $35
    ld [hl], b                                    ; $5c8b: $70
    rra                                           ; $5c8c: $1f
    ldh [rIF], a                                  ; $5c8d: $e0 $0f
    rrca                                          ; $5c8f: $0f
    nop                                           ; $5c90: $00
    jr nc, jr_002_5c93                            ; $5c91: $30 $00

jr_002_5c93:
    ld [hl], b                                    ; $5c93: $70
    nop                                           ; $5c94: $00
    ld [hl], b                                    ; $5c95: $70
    nop                                           ; $5c96: $00
    ld a, b                                       ; $5c97: $78
    ld a, [hl]                                    ; $5c98: $7e
    inc a                                         ; $5c99: $3c
    ld a, [hl]                                    ; $5c9a: $7e
    cp [hl]                                       ; $5c9b: $be
    nop                                           ; $5c9c: $00
    sbc [hl]                                      ; $5c9d: $9e
    cp $9e                                        ; $5c9e: $fe $9e
    cp $8e                                        ; $5ca0: $fe $8e
    nop                                           ; $5ca2: $00
    jp nz, $fe7e                                  ; $5ca3: $c2 $7e $fe

    ld a, [hl]                                    ; $5ca6: $7e
    cp $01                                        ; $5ca7: $fe $01
    cp $1f                                        ; $5ca9: $fe $1f
    db $fc                                        ; $5cab: $fc
    rra                                           ; $5cac: $1f
    add b                                         ; $5cad: $80
    rrca                                          ; $5cae: $0f
    rrca                                          ; $5caf: $0f
    nop                                           ; $5cb0: $00
    nop                                           ; $5cb1: $00
    rrca                                          ; $5cb2: $0f
    ldh [$ff38], a                                ; $5cb3: $e0 $38
    ld a, b                                       ; $5cb5: $78
    ld h, b                                       ; $5cb6: $60
    ld a, h                                       ; $5cb7: $7c
    ld b, b                                       ; $5cb8: $40
    db $fc                                        ; $5cb9: $fc
    rst RST_38                                    ; $5cba: $ff
    cp $80                                        ; $5cbb: $fe $80
    ld [bc], a                                    ; $5cbd: $02
    ld c, b                                       ; $5cbe: $48
    call z, $fc3f                                 ; $5cbf: $cc $3f $fc
    ccf                                           ; $5cc2: $3f
    ld hl, sp+$40                                 ; $5cc3: $f8 $40
    ld a, h                                       ; $5cc5: $7c
    ld b, b                                       ; $5cc6: $40
    db $fc                                        ; $5cc7: $fc
    ld h, c                                       ; $5cc8: $61
    db $fc                                        ; $5cc9: $fc
    ccf                                           ; $5cca: $3f
    ld hl, sp+$00                                 ; $5ccb: $f8 $00
    nop                                           ; $5ccd: $00
    rrca                                          ; $5cce: $0f
    rrca                                          ; $5ccf: $0f
    nop                                           ; $5cd0: $00
    jr c, jr_002_5cd3                             ; $5cd1: $38 $00

jr_002_5cd3:
    ld a, h                                       ; $5cd3: $7c
    nop                                           ; $5cd4: $00
    ld e, [hl]                                    ; $5cd5: $5e
    nop                                           ; $5cd6: $00
    ld c, [hl]                                    ; $5cd7: $4e
    nop                                           ; $5cd8: $00
    and $11                                       ; $5cd9: $e6 $11
    cp h                                          ; $5cdb: $bc
    dec sp                                        ; $5cdc: $3b
    ld h, b                                       ; $5cdd: $60
    ld a, [hl]                                    ; $5cde: $7e
    ret nz                                        ; $5cdf: $c0

    rst RST_38                                    ; $5ce0: $ff
    add b                                         ; $5ce1: $80
    db $fd                                        ; $5ce2: $fd
    nop                                           ; $5ce3: $00
    ld sp, hl                                     ; $5ce4: $f9
    add b                                         ; $5ce5: $80
    di                                            ; $5ce6: $f3
    ret nz                                        ; $5ce7: $c0

    rst RST_38                                    ; $5ce8: $ff
    add b                                         ; $5ce9: $80
    rst RST_38                                    ; $5cea: $ff
    nop                                           ; $5ceb: $00
    cp $00                                        ; $5cec: $fe $00
    rrca                                          ; $5cee: $0f
    rrca                                          ; $5cef: $0f
    rrca                                          ; $5cf0: $0f
    ldh [$ff38], a                                ; $5cf1: $e0 $38
    jr c, jr_002_5d55                             ; $5cf3: $38 $60

    inc c                                         ; $5cf5: $0c
    ld b, b                                       ; $5cf6: $40
    inc b                                         ; $5cf7: $04
    ret nz                                        ; $5cf8: $c0

    ld b, $80                                     ; $5cf9: $06 $80
    ld [bc], a                                    ; $5cfb: $02
    add b                                         ; $5cfc: $80
    ld [bc], a                                    ; $5cfd: $02
    add b                                         ; $5cfe: $80
    ld [bc], a                                    ; $5cff: $02
    ret nz                                        ; $5d00: $c0

    ld b, $a3                                     ; $5d01: $06 $a3
    adc d                                         ; $5d03: $8a
    or a                                          ; $5d04: $b7
    jp c, Jump_002_5457                           ; $5d05: $da $57 $54

    ld [hl], a                                    ; $5d08: $77
    call c, $d837                                 ; $5d09: $dc $37 $d8
    inc bc                                        ; $5d0c: $03
    add b                                         ; $5d0d: $80
    rrca                                          ; $5d0e: $0f
    rrca                                          ; $5d0f: $0f
    inc bc                                        ; $5d10: $03
    add b                                         ; $5d11: $80
    rlca                                          ; $5d12: $07
    ret nz                                        ; $5d13: $c0

    rlca                                          ; $5d14: $07
    ret nz                                        ; $5d15: $c0

    rrca                                          ; $5d16: $0f
    ldh [$ff08], a                                ; $5d17: $e0 $08
    jr nz, @+$0f                                  ; $5d19: $20 $0d

    ld h, b                                       ; $5d1b: $60
    ld [$1f20], sp                                ; $5d1c: $08 $20 $1f
    ldh a, [$ff33]                                ; $5d1f: $f0 $33
    ld hl, sp+$67                                 ; $5d21: $f8 $67
    db $fc                                        ; $5d23: $fc
    rst RST_08                                    ; $5d24: $cf
    cp $ff                                        ; $5d25: $fe $ff
    cp $ff                                        ; $5d27: $fe $ff
    cp $44                                        ; $5d29: $fe $44
    ld b, h                                       ; $5d2b: $44
    dec sp                                        ; $5d2c: $3b
    cp b                                          ; $5d2d: $b8
    rrca                                          ; $5d2e: $0f
    rrca                                          ; $5d2f: $0f
    nop                                           ; $5d30: $00
    nop                                           ; $5d31: $00
    rrca                                          ; $5d32: $0f
    or $3a                                        ; $5d33: $f6 $3a
    jr jr_002_5daa                                ; $5d35: $18 $73

    cp $53                                        ; $5d37: $fe $53
    cp $c3                                        ; $5d39: $fe $c3
    sbc d                                         ; $5d3b: $9a
    rst RST_20                                    ; $5d3c: $e7
    sbc d                                         ; $5d3d: $9a
    db $fc                                        ; $5d3e: $fc
    sbc d                                         ; $5d3f: $9a
    ld hl, sp+$1a                                 ; $5d40: $f8 $1a
    ld hl, sp+$3a                                 ; $5d42: $f8 $3a
    ld a, h                                       ; $5d44: $7c
    cp $7f                                        ; $5d45: $fe $7f
    cp $3f                                        ; $5d47: $fe $3f
    cp $0f                                        ; $5d49: $fe $0f
    or $00                                        ; $5d4b: $f6 $00
    nop                                           ; $5d4d: $00
    rrca                                          ; $5d4e: $0f
    rrca                                          ; $5d4f: $0f
    nop                                           ; $5d50: $00
    nop                                           ; $5d51: $00
    dec c                                         ; $5d52: $0d
    jr nz, jr_002_5d5a                            ; $5d53: $20 $05

jr_002_5d55:
    ret nz                                        ; $5d55: $c0

    dec sp                                        ; $5d56: $3b
    jr c, jr_002_5dd5                             ; $5d57: $38 $7c

    db $fc                                        ; $5d59: $fc

jr_002_5d5a:
    ld a, a                                       ; $5d5a: $7f
    db $fc                                        ; $5d5b: $fc
    rst RST_38                                    ; $5d5c: $ff
    cp $ff                                        ; $5d5d: $fe $ff
    cp $cf                                        ; $5d5f: $fe $cf
    cp $cf                                        ; $5d61: $fe $cf
    cp $ff                                        ; $5d63: $fe $ff
    cp $67                                        ; $5d65: $fe $67
    db $fc                                        ; $5d67: $fc
    ccf                                           ; $5d68: $3f
    ld hl, sp+$0f                                 ; $5d69: $f8 $0f
    ldh [rP1], a                                  ; $5d6b: $e0 $00
    nop                                           ; $5d6d: $00
    rrca                                          ; $5d6e: $0f
    rrca                                          ; $5d6f: $0f
    rrca                                          ; $5d70: $0f
    add b                                         ; $5d71: $80
    ld a, [de]                                    ; $5d72: $1a
    ret nz                                        ; $5d73: $c0

    dec e                                         ; $5d74: $1d
    ret nz                                        ; $5d75: $c0

    ld a, [de]                                    ; $5d76: $1a
    ret nz                                        ; $5d77: $c0

    rrca                                          ; $5d78: $0f
    add b                                         ; $5d79: $80
    ld [bc], a                                    ; $5d7a: $02
    nop                                           ; $5d7b: $00
    ld [bc], a                                    ; $5d7c: $02
    nop                                           ; $5d7d: $00
    ld [bc], a                                    ; $5d7e: $02
    nop                                           ; $5d7f: $00
    ld [bc], a                                    ; $5d80: $02
    nop                                           ; $5d81: $00
    ld [bc], a                                    ; $5d82: $02
    nop                                           ; $5d83: $00
    ldh [c], a                                    ; $5d84: $e2
    ld e, $7a                                     ; $5d85: $1e $7a
    db $fc                                        ; $5d87: $fc
    ld a, [hl-]                                   ; $5d88: $3a
    ld hl, sp+$3f                                 ; $5d89: $f8 $3f
    ldh [rIF], a                                  ; $5d8b: $e0 $0f
    nop                                           ; $5d8d: $00
    rrca                                          ; $5d8e: $0f
    rrca                                          ; $5d8f: $0f
    rlca                                          ; $5d90: $07
    ret nz                                        ; $5d91: $c0

    rrca                                          ; $5d92: $0f
    ldh [$ff7f], a                                ; $5d93: $e0 $7f
    db $fc                                        ; $5d95: $fc
    ld c, a                                       ; $5d96: $4f
    db $e4                                        ; $5d97: $e4
    ld b, e                                       ; $5d98: $43
    add h                                         ; $5d99: $84
    rst RST_00                                    ; $5d9a: $c7
    add $c5                                       ; $5d9b: $c6 $c5
    ld b, [hl]                                    ; $5d9d: $46
    db $e3                                        ; $5d9e: $e3
    adc [hl]                                      ; $5d9f: $8e
    rst RST_38                                    ; $5da0: $ff
    cp $c0                                        ; $5da1: $fe $c0
    ld b, $7f                                     ; $5da3: $06 $7f
    db $fc                                        ; $5da5: $fc
    db $10                                        ; $5da6: $10
    db $10                                        ; $5da7: $10
    ld a, b                                       ; $5da8: $78
    inc a                                         ; $5da9: $3c

jr_002_5daa:
    rst RST_38                                    ; $5daa: $ff
    cp $fc                                        ; $5dab: $fe $fc
    ld a, [hl]                                    ; $5dad: $7e
    rrca                                          ; $5dae: $0f
    rrca                                          ; $5daf: $0f
    nop                                           ; $5db0: $00
    nop                                           ; $5db1: $00
    nop                                           ; $5db2: $00
    nop                                           ; $5db3: $00
    rra                                           ; $5db4: $1f
    ldh [$ff30], a                                ; $5db5: $e0 $30
    jr nc, jr_002_5df8                            ; $5db7: $30 $3f

    cp $3f                                        ; $5db9: $fe $3f
    cp $37                                        ; $5dbb: $fe $37
    ldh a, [c]                                    ; $5dbd: $f2
    scf                                           ; $5dbe: $37
    cp $3f                                        ; $5dbf: $fe $3f
    db $fc                                        ; $5dc1: $fc
    scf                                           ; $5dc2: $37
    ld hl, sp+$7f                                 ; $5dc3: $f8 $7f
    db $fc                                        ; $5dc5: $fc
    ld e, a                                       ; $5dc6: $5f
    db $e4                                        ; $5dc7: $e4
    ld c, a                                       ; $5dc8: $4f
    call nz, $0c60                                ; $5dc9: $c4 $60 $0c
    ccf                                           ; $5dcc: $3f
    ld hl, sp+$0f                                 ; $5dcd: $f8 $0f
    rrca                                          ; $5dcf: $0f
    nop                                           ; $5dd0: $00
    nop                                           ; $5dd1: $00
    ld [hl], e                                    ; $5dd2: $73
    add b                                         ; $5dd3: $80
    rst RST_38                                    ; $5dd4: $ff

jr_002_5dd5:
    call c, $d6e1                                 ; $5dd5: $dc $e1 $d6
    pop hl                                        ; $5dd8: $e1
    jp nc, $dad2                                  ; $5dd9: $d2 $d2 $da

    jp nc, Jump_002_40ca                          ; $5ddc: $d2 $ca $40

    ld a, [$8e4c]                                 ; $5ddf: $fa $4c $8e
    ld h, b                                       ; $5de2: $60
    add [hl]                                      ; $5de3: $86
    ccf                                           ; $5de4: $3f
    ld [bc], a                                    ; $5de5: $02
    jr nz, jr_002_5dea                            ; $5de6: $20 $02

    jr nz, jr_002_5dec                            ; $5de8: $20 $02

jr_002_5dea:
    inc h                                         ; $5dea: $24
    ldh a, [c]                                    ; $5deb: $f2

jr_002_5dec:
    ccf                                           ; $5dec: $3f
    sbc [hl]                                      ; $5ded: $9e
    rrca                                          ; $5dee: $0f
    rrca                                          ; $5def: $0f
    inc e                                         ; $5df0: $1c
    ldh [rNR14], a                                ; $5df1: $e0 $14
    and b                                         ; $5df3: $a0
    rla                                           ; $5df4: $17
    and b                                         ; $5df5: $a0
    inc d                                         ; $5df6: $14
    and b                                         ; $5df7: $a0

jr_002_5df8:
    inc e                                         ; $5df8: $1c
    ldh [rNR10], a                                ; $5df9: $e0 $10
    jr nz, jr_002_5e14                            ; $5dfb: $20 $17

    or b                                          ; $5dfd: $b0
    inc [hl]                                      ; $5dfe: $34
    sub b                                         ; $5dff: $90
    daa                                           ; $5e00: $27
    sbc b                                         ; $5e01: $98
    jr nz, jr_002_5e0c                            ; $5e02: $20 $08

    ld h, b                                       ; $5e04: $60
    ld [$8843], sp                                ; $5e05: $08 $43 $88
    ld a, [hl]                                    ; $5e08: $7e
    ld hl, sp+$44                                 ; $5e09: $f8 $44
    adc b                                         ; $5e0b: $88

jr_002_5e0c:
    ld a, h                                       ; $5e0c: $7c
    ld hl, sp+$0f                                 ; $5e0d: $f8 $0f
    rrca                                          ; $5e0f: $0f
    nop                                           ; $5e10: $00
    nop                                           ; $5e11: $00
    nop                                           ; $5e12: $00
    nop                                           ; $5e13: $00

jr_002_5e14:
    ld hl, sp-$40                                 ; $5e14: $f8 $c0

jr_002_5e16:
    cp [hl]                                       ; $5e16: $be
    ldh [$ffde], a                                ; $5e17: $e0 $de
    or b                                          ; $5e19: $b0
    rst RST_28                                    ; $5e1a: $ef
    or b                                          ; $5e1b: $b0
    rst RST_30                                    ; $5e1c: $f7
    cp b                                          ; $5e1d: $b8
    ld a, e                                       ; $5e1e: $7b
    cp b                                          ; $5e1f: $b8
    ld a, l                                       ; $5e20: $7d
    cp b                                          ; $5e21: $b8
    ld e, $b8                                     ; $5e22: $1e $b8
    rst RST_38                                    ; $5e24: $ff
    ld a, b                                       ; $5e25: $78
    ret nz                                        ; $5e26: $c0

    or b                                          ; $5e27: $b0
    ld a, a                                       ; $5e28: $7f
    ret nc                                        ; $5e29: $d0

    ccf                                           ; $5e2a: $3f
    add sp, $0f                                   ; $5e2b: $e8 $0f
    sbc b                                         ; $5e2d: $98
    rrca                                          ; $5e2e: $0f
    rrca                                          ; $5e2f: $0f
    ldh a, [rP1]                                  ; $5e30: $f0 $00
    sbc a                                         ; $5e32: $9f
    nop                                           ; $5e33: $00
    push bc                                       ; $5e34: $c5
    add b                                         ; $5e35: $80
    ld a, l                                       ; $5e36: $7d
    add b                                         ; $5e37: $80
    ld b, c                                       ; $5e38: $41
    add b                                         ; $5e39: $80
    ld b, l                                       ; $5e3a: $45
    adc h                                         ; $5e3b: $8c
    ld b, c                                       ; $5e3c: $41
    sbc [hl]                                      ; $5e3d: $9e
    ld a, c                                       ; $5e3e: $79
    cp $10                                        ; $5e3f: $fe $10
    ld [$ea10], a                                 ; $5e41: $ea $10 $ea
    db $10                                        ; $5e44: $10
    ld [$0810], sp                                ; $5e45: $08 $10 $08
    dec d                                         ; $5e48: $15
    add sp, $15                                   ; $5e49: $e8 $15
    jr z, jr_002_5e6c                             ; $5e4b: $28 $1f

    jr c, jr_002_5e5e                             ; $5e4d: $38 $0f

    rrca                                          ; $5e4f: $0f
    dec c                                         ; $5e50: $0d
    add b                                         ; $5e51: $80
    jr jr_002_5e14                                ; $5e52: $18 $c0

    jr jr_002_5e16                                ; $5e54: $18 $c0

    ld a, a                                       ; $5e56: $7f
    call c, Call_002_7c78                         ; $5e57: $dc $78 $7c
    jr c, @-$0e                                   ; $5e5a: $38 $f0

    inc de                                        ; $5e5c: $13
    ld a, b                                       ; $5e5d: $78

jr_002_5e5e:
    inc sp                                        ; $5e5e: $33
    cp $27                                        ; $5e5f: $fe $27
    cp $47                                        ; $5e61: $fe $47
    cp $57                                        ; $5e63: $fe $57
    cp $4f                                        ; $5e65: $fe $4f
    cp $38                                        ; $5e67: $fe $38
    cp $00                                        ; $5e69: $fe $00
    ld a, [hl]                                    ; $5e6b: $7e

jr_002_5e6c:
    nop                                           ; $5e6c: $00
    ld a, [hl]                                    ; $5e6d: $7e
    rrca                                          ; $5e6e: $0f
    rrca                                          ; $5e6f: $0f
    ld bc, $0100                                  ; $5e70: $01 $00 $01
    nop                                           ; $5e73: $00
    ld bc, $0100                                  ; $5e74: $01 $00 $01
    nop                                           ; $5e77: $00
    ld [hl], c                                    ; $5e78: $71
    inc e                                         ; $5e79: $1c
    pop de                                        ; $5e7a: $d1
    ld d, $bf                                     ; $5e7b: $16 $bf
    ld a, [$06c0]                                 ; $5e7d: $fa $c0 $06
    add b                                         ; $5e80: $80
    ld [hl-], a                                   ; $5e81: $32
    sbc b                                         ; $5e82: $98
    ld [bc], a                                    ; $5e83: $02
    cp h                                          ; $5e84: $bc
    jp c, Jump_000_02bc                           ; $5e85: $da $bc $02

    sbc b                                         ; $5e88: $98
    ld [hl-], a                                   ; $5e89: $32
    jp Jump_002_7c86                              ; $5e8a: $c3 $86 $7c


    ld a, h                                       ; $5e8d: $7c
    rrca                                          ; $5e8e: $0f
    rrca                                          ; $5e8f: $0f
    inc bc                                        ; $5e90: $03
    nop                                           ; $5e91: $00
    inc bc                                        ; $5e92: $03
    add b                                         ; $5e93: $80
    ld [bc], a                                    ; $5e94: $02
    add b                                         ; $5e95: $80
    ld c, $e0                                     ; $5e96: $0e $e0
    ld a, [de]                                    ; $5e98: $1a
    or b                                          ; $5e99: $b0
    dec [hl]                                      ; $5e9a: $35
    ld e, b                                       ; $5e9b: $58
    dec l                                         ; $5e9c: $2d
    ld l, h                                       ; $5e9d: $6c
    ld l, c                                       ; $5e9e: $69
    inc h                                         ; $5e9f: $24
    ld c, c                                       ; $5ea0: $49
    inc h                                         ; $5ea1: $24
    ld c, c                                       ; $5ea2: $49
    inc h                                         ; $5ea3: $24
    ld c, c                                       ; $5ea4: $49
    inc h                                         ; $5ea5: $24
    ld l, l                                       ; $5ea6: $6d
    ld l, h                                       ; $5ea7: $6c
    dec [hl]                                      ; $5ea8: $35
    ld e, b                                       ; $5ea9: $58
    rra                                           ; $5eaa: $1f
    ldh a, [rTIMA]                                ; $5eab: $f0 $05
    ld b, b                                       ; $5ead: $40
    rrca                                          ; $5eae: $0f
    rrca                                          ; $5eaf: $0f
    db $fc                                        ; $5eb0: $fc
    ld a, [hl]                                    ; $5eb1: $7e
    ld hl, sp+$3e                                 ; $5eb2: $f8 $3e
    ldh a, [c]                                    ; $5eb4: $f2
    sbc [hl]                                      ; $5eb5: $9e
    ldh a, [c]                                    ; $5eb6: $f2
    sbc [hl]                                      ; $5eb7: $9e
    ldh a, [rNR34]                                ; $5eb8: $f0 $1e
    or c                                          ; $5eba: $b1
    ld e, $98                                     ; $5ebb: $1e $98
    ld a, [hl-]                                   ; $5ebd: $3a
    ld a, [de]                                    ; $5ebe: $1a
    cp b                                          ; $5ebf: $b8
    rst RST_08                                    ; $5ec0: $cf
    ldh [$ffe3], a                                ; $5ec1: $e0 $e3
    adc [hl]                                      ; $5ec3: $8e
    ld hl, sp-$02                                 ; $5ec4: $f8 $fe
    cp $3e                                        ; $5ec6: $fe $3e
    ld [hl], e                                    ; $5ec8: $73
    add b                                         ; $5ec9: $80
    rlca                                          ; $5eca: $07
    ldh [c], a                                    ; $5ecb: $e2
    sbc a                                         ; $5ecc: $9f
    ld a, [$0f0f]                                 ; $5ecd: $fa $0f $0f
    rrca                                          ; $5ed0: $0f
    ldh [rNR23], a                                ; $5ed1: $e0 $18
    jr nc, jr_002_5ee5                            ; $5ed3: $30 $10

    db $10                                        ; $5ed5: $10
    ld [de], a                                    ; $5ed6: $12
    sub b                                         ; $5ed7: $90
    db $10                                        ; $5ed8: $10
    db $10                                        ; $5ed9: $10
    inc sp                                        ; $5eda: $33
    sbc b                                         ; $5edb: $98
    ld a, b                                       ; $5edc: $78
    inc a                                         ; $5edd: $3c
    rst RST_08                                    ; $5ede: $cf
    and $80                                       ; $5edf: $e6 $80
    ld [bc], a                                    ; $5ee1: $02
    add b                                         ; $5ee2: $80
    ld [bc], a                                    ; $5ee3: $02
    add b                                         ; $5ee4: $80

jr_002_5ee5:
    ld [bc], a                                    ; $5ee5: $02
    add b                                         ; $5ee6: $80
    ld [bc], a                                    ; $5ee7: $02
    ret nz                                        ; $5ee8: $c0

    ld b, $60                                     ; $5ee9: $06 $60
    inc c                                         ; $5eeb: $0c
    ccf                                           ; $5eec: $3f
    ld hl, sp+$0f                                 ; $5eed: $f8 $0f
    rrca                                          ; $5eef: $0f
    nop                                           ; $5ef0: $00
    nop                                           ; $5ef1: $00
    nop                                           ; $5ef2: $00
    nop                                           ; $5ef3: $00
    dec e                                         ; $5ef4: $1d
    ret nz                                        ; $5ef5: $c0

    daa                                           ; $5ef6: $27
    ldh a, [rPCM34]                               ; $5ef7: $f0 $77
    ld hl, sp-$01                                 ; $5ef9: $f8 $ff
    ld hl, sp-$71                                 ; $5efb: $f8 $8f
    db $fc                                        ; $5efd: $fc
    ld a, a                                       ; $5efe: $7f
    cp $07                                        ; $5eff: $fe $07
    cp $0f                                        ; $5f01: $fe $0f
    ld [hl], $19                                  ; $5f03: $36 $19
    ld [de], a                                    ; $5f05: $12
    inc sp                                        ; $5f06: $33
    ld [hl-], a                                   ; $5f07: $32
    nop                                           ; $5f08: $00
    ld [bc], a                                    ; $5f09: $02
    nop                                           ; $5f0a: $00
    ld a, [bc]                                    ; $5f0b: $0a
    nop                                           ; $5f0c: $00
    ld c, $0f                                     ; $5f0d: $0e $0f
    rrca                                          ; $5f0f: $0f
    nop                                           ; $5f10: $00
    ld c, $00                                     ; $5f11: $0e $00
    ld a, b                                       ; $5f13: $78
    nop                                           ; $5f14: $00
    ld hl, sp+$01                                 ; $5f15: $f8 $01
    ret c                                         ; $5f17: $d8

    ld bc, $01f8                                  ; $5f18: $01 $f8 $01
    ld a, b                                       ; $5f1b: $78
    inc bc                                        ; $5f1c: $03
    ldh a, [rTAC]                                 ; $5f1d: $f0 $07
    ldh [$ff3f], a                                ; $5f1f: $e0 $3f
    ld b, b                                       ; $5f21: $40
    ld l, a                                       ; $5f22: $6f
    ret nz                                        ; $5f23: $c0

    ld a, l                                       ; $5f24: $7d
    add b                                         ; $5f25: $80
    rst RST_38                                    ; $5f26: $ff
    add b                                         ; $5f27: $80
    or a                                          ; $5f28: $b7
    nop                                           ; $5f29: $00
    cp $00                                        ; $5f2a: $fe $00
    ld a, b                                       ; $5f2c: $78
    nop                                           ; $5f2d: $00
    rrca                                          ; $5f2e: $0f
    rrca                                          ; $5f2f: $0f
    ld bc, $0100                                  ; $5f30: $01 $00 $01
    nop                                           ; $5f33: $00
    inc bc                                        ; $5f34: $03
    add b                                         ; $5f35: $80
    ld [bc], a                                    ; $5f36: $02
    add b                                         ; $5f37: $80
    ld b, $c0                                     ; $5f38: $06 $c0
    db $fc                                        ; $5f3a: $fc
    ld b, b                                       ; $5f3b: $40
    adc l                                         ; $5f3c: $8d
    ld a, h                                       ; $5f3d: $7c
    db $fc                                        ; $5f3e: $fc
    ld b, [hl]                                    ; $5f3f: $46
    adc l                                         ; $5f40: $8d
    ld d, [hl]                                    ; $5f41: $56
    xor h                                         ; $5f42: $ac
    ld b, [hl]                                    ; $5f43: $46
    adc l                                         ; $5f44: $8d
    ld d, [hl]                                    ; $5f45: $56
    xor h                                         ; $5f46: $ac
    ld b, [hl]                                    ; $5f47: $46
    adc l                                         ; $5f48: $8d
    ld d, [hl]                                    ; $5f49: $56
    xor a                                         ; $5f4a: $af
    and $88                                       ; $5f4b: $e6 $88
    ld h, $0f                                     ; $5f4d: $26 $0f
    rrca                                          ; $5f4f: $0f
    inc c                                         ; $5f50: $0c
    ld a, b                                       ; $5f51: $78
    ld b, $cc                                     ; $5f52: $06 $cc
    inc bc                                        ; $5f54: $03
    add [hl]                                      ; $5f55: $86
    rlca                                          ; $5f56: $07
    adc h                                         ; $5f57: $8c
    dec c                                         ; $5f58: $0d
    ld hl, sp+$09                                 ; $5f59: $f8 $09
    ret nz                                        ; $5f5b: $c0

    ld [$18e0], sp                                ; $5f5c: $08 $e0 $18
    ldh [$ff30], a                                ; $5f5f: $e0 $30
    ld [hl], b                                    ; $5f61: $70
    ld h, b                                       ; $5f62: $60
    ld a, b                                       ; $5f63: $78
    ld b, b                                       ; $5f64: $40
    ld a, b                                       ; $5f65: $78
    ld b, b                                       ; $5f66: $40
    ld a, b                                       ; $5f67: $78
    ld h, b                                       ; $5f68: $60
    ld hl, sp+$33                                 ; $5f69: $f8 $33
    ldh a, [$ff1f]                                ; $5f6b: $f0 $1f
    ldh [rIF], a                                  ; $5f6d: $e0 $0f
    rrca                                          ; $5f6f: $0f
    jr nz, jr_002_5f82                            ; $5f70: $20 $10

    jr nc, jr_002_5fe4                            ; $5f72: $30 $70

    ccf                                           ; $5f74: $3f
    ldh a, [rNR43]                                ; $5f75: $f0 $22
    jr nc, jr_002_5fa3                            ; $5f77: $30 $2a

    cp b                                          ; $5f79: $b8
    ld h, d                                       ; $5f7a: $62
    jr c, @+$7f                                   ; $5f7b: $38 $7d

    db $fc                                        ; $5f7d: $fc
    ld h, l                                       ; $5f7e: $65
    inc a                                         ; $5f7f: $3c
    ld h, d                                       ; $5f80: $62
    inc a                                         ; $5f81: $3c

jr_002_5f82:
    ld l, b                                       ; $5f82: $68
    cp h                                          ; $5f83: $bc
    ld l, d                                       ; $5f84: $6a
    cp h                                          ; $5f85: $bc
    ld h, d                                       ; $5f86: $62
    jr c, jr_002_5fb9                             ; $5f87: $38 $30

    ld a, b                                       ; $5f89: $78
    rra                                           ; $5f8a: $1f
    ldh a, [rNR22]                                ; $5f8b: $f0 $17
    ld b, b                                       ; $5f8d: $40
    rrca                                          ; $5f8e: $0f
    rrca                                          ; $5f8f: $0f
    nop                                           ; $5f90: $00
    nop                                           ; $5f91: $00
    ld bc, $0ff0                                  ; $5f92: $01 $f0 $0f
    cp b                                          ; $5f95: $b8
    rra                                           ; $5f96: $1f
    ret c                                         ; $5f97: $d8

    ld sp, $20dc                                  ; $5f98: $31 $dc $20
    db $ec                                        ; $5f9b: $ec
    ld h, h                                       ; $5f9c: $64
    xor $4e                                       ; $5f9d: $ee $4e
    halt                                          ; $5f9f: $76
    adc $76                                       ; $5fa0: $ce $76
    add h                                         ; $5fa2: $84

jr_002_5fa3:
    ld a, [hl-]                                   ; $5fa3: $3a
    add b                                         ; $5fa4: $80
    ld a, [hl-]                                   ; $5fa5: $3a
    ret nz                                        ; $5fa6: $c0

    ld a, h                                       ; $5fa7: $7c
    ld a, a                                       ; $5fa8: $7f
    ldh [rP1], a                                  ; $5fa9: $e0 $00
    nop                                           ; $5fab: $00
    nop                                           ; $5fac: $00
    nop                                           ; $5fad: $00
    rrca                                          ; $5fae: $0f
    rrca                                          ; $5faf: $0f
    rst RST_38                                    ; $5fb0: $ff
    ld b, b                                       ; $5fb1: $40
    db $e3                                        ; $5fb2: $e3
    ld b, b                                       ; $5fb3: $40
    reti                                          ; $5fb4: $d9


    or d                                          ; $5fb5: $b2
    pop de                                        ; $5fb6: $d1
    add $c1                                       ; $5fb7: $c6 $c1

jr_002_5fb9:
    cp $e3                                        ; $5fb9: $fe $e3
    ldh [rIE], a                                  ; $5fbb: $e0 $ff
    sbc $cf                                       ; $5fbd: $de $cf
    cp [hl]                                       ; $5fbf: $be
    and a                                         ; $5fc0: $a7
    cp [hl]                                       ; $5fc1: $be
    add a                                         ; $5fc2: $87
    ld [$cacf], a                                 ; $5fc3: $ea $cf $ca
    ei                                            ; $5fc6: $fb
    ldh [$fff1], a                                ; $5fc7: $e0 $f1
    ld [de], a                                    ; $5fc9: $12
    ei                                            ; $5fca: $fb
    ldh [rIE], a                                  ; $5fcb: $e0 $ff
    ld hl, sp+$0f                                 ; $5fcd: $f8 $0f
    rrca                                          ; $5fcf: $0f
    ld e, $02                                     ; $5fd0: $1e $02
    ld a, a                                       ; $5fd2: $7f
    add $07                                       ; $5fd3: $c6 $07
    db $ec                                        ; $5fd5: $ec
    nop                                           ; $5fd6: $00
    ld hl, sp+$00                                 ; $5fd7: $f8 $00
    stop                                          ; $5fd9: $10 $00
    jr nc, @+$01                                  ; $5fdb: $30 $ff

    ret c                                         ; $5fdd: $d8

    rst RST_38                                    ; $5fde: $ff
    cp b                                          ; $5fdf: $b8
    rst RST_38                                    ; $5fe0: $ff
    cp b                                          ; $5fe1: $b8
    rst RST_38                                    ; $5fe2: $ff
    ld [hl], b                                    ; $5fe3: $70

jr_002_5fe4:
    ld a, a                                       ; $5fe4: $7f
    ld [hl], b                                    ; $5fe5: $70
    rrca                                          ; $5fe6: $0f
    add b                                         ; $5fe7: $80
    ld [hl], a                                    ; $5fe8: $77
    ld [hl], b                                    ; $5fe9: $70
    ld d, b                                       ; $5fea: $50
    ld d, b                                       ; $5feb: $50
    ld [hl], b                                    ; $5fec: $70
    ld [hl], b                                    ; $5fed: $70
    rrca                                          ; $5fee: $0f
    rrca                                          ; $5fef: $0f
    rlca                                          ; $5ff0: $07
    add h                                         ; $5ff1: $84
    inc c                                         ; $5ff2: $0c
    jp nz, Jump_002_660c                          ; $5ff3: $c2 $0c $66

    nop                                           ; $5ff6: $00
    ld l, $0c                                     ; $5ff7: $2e $0c
    ld c, $3f                                     ; $5ff9: $0e $3f
    ld a, [de]                                    ; $5ffb: $1a
    ld a, a                                       ; $5ffc: $7f
    sbc d                                         ; $5ffd: $9a
    rst RST_38                                    ; $5ffe: $ff
    call z, $c0ff                                 ; $5fff: $cc $ff $c0
    rst RST_38                                    ; $6002: $ff
    ret nz                                        ; $6003: $c0

    rst RST_38                                    ; $6004: $ff
    ret nz                                        ; $6005: $c0

    rst RST_38                                    ; $6006: $ff
    ret nz                                        ; $6007: $c0

    rst RST_38                                    ; $6008: $ff
    ret nz                                        ; $6009: $c0

    ld a, a                                       ; $600a: $7f
    add b                                         ; $600b: $80
    ccf                                           ; $600c: $3f
    nop                                           ; $600d: $00
    rrca                                          ; $600e: $0f
    rrca                                          ; $600f: $0f
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    ld bc, $03e0                                  ; $6012: $01 $e0 $03
    ldh a, [rTMA]                                 ; $6015: $f0 $06
    jr jr_002_601f                                ; $6017: $18 $06

    inc c                                         ; $6019: $0c
    ld h, [hl]                                    ; $601a: $66
    inc b                                         ; $601b: $04
    rst RST_30                                    ; $601c: $f7
    db $f4                                        ; $601d: $f4
    ret c                                         ; $601e: $d8

jr_002_601f:
    inc c                                         ; $601f: $0c
    ld h, e                                       ; $6020: $63
    ld [bc], a                                    ; $6021: $02
    ld h, $1a                                     ; $6022: $26 $1a
    ld h, $1a                                     ; $6024: $26 $1a
    ld h, $1a                                     ; $6026: $26 $1a
    ld h, $1a                                     ; $6028: $26 $1a
    rra                                           ; $602a: $1f
    db $fc                                        ; $602b: $fc
    nop                                           ; $602c: $00
    nop                                           ; $602d: $00
    rrca                                          ; $602e: $0f
    rrca                                          ; $602f: $0f
    ret nz                                        ; $6030: $c0

    ld b, $a0                                     ; $6031: $06 $a0
    ld a, [bc]                                    ; $6033: $0a
    cp a                                          ; $6034: $bf
    ld a, [$4aa8]                                 ; $6035: $fa $a8 $4a
    ret z                                         ; $6038: $c8

    ld b, [hl]                                    ; $6039: $46
    dec bc                                        ; $603a: $0b
    ld b, b                                       ; $603b: $40
    dec bc                                        ; $603c: $0b
    ld b, b                                       ; $603d: $40
    rlca                                          ; $603e: $07
    ret nz                                        ; $603f: $c0

    rlca                                          ; $6040: $07
    nop                                           ; $6041: $00
    rlca                                          ; $6042: $07
    nop                                           ; $6043: $00
    rlca                                          ; $6044: $07
    nop                                           ; $6045: $00
    rra                                           ; $6046: $1f
    nop                                           ; $6047: $00
    ld de, $1100                                  ; $6048: $11 $00 $11
    nop                                           ; $604b: $00
    ld sp, $0fe0                                  ; $604c: $31 $e0 $0f
    rrca                                          ; $604f: $0f
    nop                                           ; $6050: $00
    inc e                                         ; $6051: $1c
    nop                                           ; $6052: $00
    inc e                                         ; $6053: $1c
    inc bc                                        ; $6054: $03
    ld [$f803], sp                                ; $6055: $08 $03 $f8
    rlca                                          ; $6058: $07
    add b                                         ; $6059: $80
    rrca                                          ; $605a: $0f
    ret nz                                        ; $605b: $c0

    db $10                                        ; $605c: $10
    ld h, b                                       ; $605d: $60
    db $10                                        ; $605e: $10
    ld h, b                                       ; $605f: $60
    ld a, a                                       ; $6060: $7f
    ld hl, sp+$7f                                 ; $6061: $f8 $7f
    ld hl, sp+$20                                 ; $6063: $f8 $20
    jr nc, jr_002_608e                            ; $6065: $30 $27

    jr nc, jr_002_6089                            ; $6067: $30 $20

    jr nc, @+$81                                  ; $6069: $30 $7f

    ld hl, sp+$7f                                 ; $606b: $f8 $7f
    ld hl, sp+$0f                                 ; $606d: $f8 $0f
    rrca                                          ; $606f: $0f
    rra                                           ; $6070: $1f
    nop                                           ; $6071: $00
    pop af                                        ; $6072: $f1
    ret nz                                        ; $6073: $c0

    sub b                                         ; $6074: $90
    ld [hl], b                                    ; $6075: $70
    ldh a, [c]                                    ; $6076: $f2
    ld e, h                                       ; $6077: $5c
    ld [de], a                                    ; $6078: $12
    ld e, [hl]                                    ; $6079: $5e
    ldh a, [c]                                    ; $607a: $f2
    ld e, [hl]                                    ; $607b: $5e
    sub b                                         ; $607c: $90
    halt                                          ; $607d: $76
    pop af                                        ; $607e: $f1
    add $1f                                       ; $607f: $c6 $1f
    ld b, $00                                     ; $6081: $06 $00
    ld b, $00                                     ; $6083: $06 $00
    ld c, $00                                     ; $6085: $0e $00
    ld a, [hl]                                    ; $6087: $7e
    rlca                                          ; $6088: $07

jr_002_6089:
    db $fc                                        ; $6089: $fc
    ld a, a                                       ; $608a: $7f
    ldh [$fffe], a                                ; $608b: $e0 $fe
    nop                                           ; $608d: $00

jr_002_608e:
    rrca                                          ; $608e: $0f
    rrca                                          ; $608f: $0f
    nop                                           ; $6090: $00
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00
    jr @+$0e                                      ; $6096: $18 $0c

    inc [hl]                                      ; $6098: $34
    ld a, [de]                                    ; $6099: $1a
    inc h                                         ; $609a: $24
    ld [de], a                                    ; $609b: $12
    ld h, b                                       ; $609c: $60
    jr nc, @+$42                                  ; $609d: $30 $40

    jr nz, @+$01                                  ; $609f: $20 $ff

    ldh [$ffba], a                                ; $60a1: $e0 $ba
    ldh [$ffba], a                                ; $60a3: $e0 $ba
    ldh [$ff71], a                                ; $60a5: $e0 $71
    ret nz                                        ; $60a7: $c0

    nop                                           ; $60a8: $00
    nop                                           ; $60a9: $00
    nop                                           ; $60aa: $00
    nop                                           ; $60ab: $00
    nop                                           ; $60ac: $00
    nop                                           ; $60ad: $00
    rrca                                          ; $60ae: $0f
    rrca                                          ; $60af: $0f
    inc e                                         ; $60b0: $1c
    nop                                           ; $60b1: $00
    ld [de], a                                    ; $60b2: $12
    nop                                           ; $60b3: $00
    ld a, [$9200]                                 ; $60b4: $fa $00 $92
    nop                                           ; $60b7: $00
    cp $00                                        ; $60b8: $fe $00
    rra                                           ; $60ba: $1f
    nop                                           ; $60bb: $00
    ld e, $fe                                     ; $60bc: $1e $fe
    dec e                                         ; $60be: $1d
    ldh [c], a                                    ; $60bf: $e2
    dec e                                         ; $60c0: $1d
    cp $1d                                        ; $60c1: $fe $1d
    ld hl, sp+$0e                                 ; $60c3: $f8 $0e

jr_002_60c5:
    db $fc                                        ; $60c5: $fc
    rrca                                          ; $60c6: $0f
    ld [$f007], sp                                ; $60c7: $08 $07 $f0
    ld bc, $0740                                  ; $60ca: $01 $40 $07
    ret nz                                        ; $60cd: $c0

    rrca                                          ; $60ce: $0f
    rrca                                          ; $60cf: $0f
    ld bc, $03e0                                  ; $60d0: $01 $e0 $03
    jr nc, @+$08                                  ; $60d3: $30 $06

    db $10                                        ; $60d5: $10
    inc b                                         ; $60d6: $04
    ld [hl], b                                    ; $60d7: $70
    inc c                                         ; $60d8: $0c
    ret nz                                        ; $60d9: $c0

    ld [$1980], sp                                ; $60da: $08 $80 $19
    add b                                         ; $60dd: $80
    ld de, $1300                                  ; $60de: $11 $00 $13
    nop                                           ; $60e1: $00
    ld [de], a                                    ; $60e2: $12
    ld e, $32                                     ; $60e3: $1e $32
    ld a, [hl]                                    ; $60e5: $7e
    ld [hl+], a                                   ; $60e6: $22
    cp $23                                        ; $60e7: $fe $23
    cp $f8                                        ; $60e9: $fe $f8
    or $f8                                        ; $60eb: $f6 $f8
    inc e                                         ; $60ed: $1c
    rrca                                          ; $60ee: $0f
    rrca                                          ; $60ef: $0f
    ld h, b                                       ; $60f0: $60
    nop                                           ; $60f1: $00
    or b                                          ; $60f2: $b0
    nop                                           ; $60f3: $00
    ldh a, [rP1]                                  ; $60f4: $f0 $00
    jr nc, jr_002_60f8                            ; $60f6: $30 $00

jr_002_60f8:
    jr nc, jr_002_60fa                            ; $60f8: $30 $00

jr_002_60fa:
    jr nc, jr_002_60fc                            ; $60fa: $30 $00

jr_002_60fc:
    ccf                                           ; $60fc: $3f
    add b                                         ; $60fd: $80
    ccf                                           ; $60fe: $3f
    ldh [$ff1f], a                                ; $60ff: $e0 $1f
    ldh a, [$ff7f]                                ; $6101: $f0 $7f
    ldh a, [$ffef]                                ; $6103: $f0 $ef
    ld hl, sp-$1f                                 ; $6105: $f8 $e1
    ld hl, sp+$73                                 ; $6107: $f8 $73
    sbc h                                         ; $6109: $9c
    dec sp                                        ; $610a: $3b
    adc $00                                       ; $610b: $ce $00
    ldh a, [rIF]                                  ; $610d: $f0 $0f
    rrca                                          ; $610f: $0f
    ld d, b                                       ; $6110: $50
    nop                                           ; $6111: $00
    ld [hl], b                                    ; $6112: $70
    nop                                           ; $6113: $00
    ld d, b                                       ; $6114: $50
    ret nz                                        ; $6115: $c0

    pop af                                        ; $6116: $f1
    ldh [$ffb7], a                                ; $6117: $e0 $b7
    ld hl, sp+$37                                 ; $6119: $f8 $37
    db $fc                                        ; $611b: $fc
    ccf                                           ; $611c: $3f
    cp $3f                                        ; $611d: $fe $3f
    cp $1f                                        ; $611f: $fe $1f
    cp $07                                        ; $6121: $fe $07
    or $06                                        ; $6123: $f6 $06
    and $06                                       ; $6125: $e6 $06
    ld b, $02                                     ; $6127: $06 $02
    ld [bc], a                                    ; $6129: $02
    ld [bc], a                                    ; $612a: $02
    ld [bc], a                                    ; $612b: $02
    ld b, $06                                     ; $612c: $06 $06
    rrca                                          ; $612e: $0f
    rrca                                          ; $612f: $0f
    nop                                           ; $6130: $00
    nop                                           ; $6131: $00
    inc bc                                        ; $6132: $03
    ldh a, [$ff0e]                                ; $6133: $f0 $0e
    inc e                                         ; $6135: $1c
    ld [$18cc], sp                                ; $6136: $08 $cc $18
    ld c, $1f                                     ; $6139: $0e $1f
    sbc [hl]                                      ; $613b: $9e
    ld [hl], b                                    ; $613c: $70
    cp $46                                        ; $613d: $fe $46
    ld a, [hl]                                    ; $613f: $7e
    ret nz                                        ; $6140: $c0

    inc a                                         ; $6141: $3c
    add b                                         ; $6142: $80
    jr nc, jr_002_60c5                            ; $6143: $30 $80

    ld [hl], b                                    ; $6145: $70
    ret nz                                        ; $6146: $c0

    ldh a, [$ff7f]                                ; $6147: $f0 $7f
    ldh [$ff3f], a                                ; $6149: $e0 $3f
    ret nz                                        ; $614b: $c0

    nop                                           ; $614c: $00
    nop                                           ; $614d: $00
    rrca                                          ; $614e: $0f
    rrca                                          ; $614f: $0f
    rrca                                          ; $6150: $0f
    ldh [rNR23], a                                ; $6151: $e0 $18
    jr nc, jr_002_6185                            ; $6153: $30 $30

    ld [$e82f], sp                                ; $6155: $08 $2f $e8
    ccf                                           ; $6158: $3f
    ld hl, sp+$7f                                 ; $6159: $f8 $7f
    db $fc                                        ; $615b: $fc
    ccf                                           ; $615c: $3f
    ld hl, sp+$2f                                 ; $615d: $f8 $2f
    add sp, $20                                   ; $615f: $e8 $20
    ld [$0826], sp                                ; $6161: $08 $26 $08
    ld [hl], $18                                  ; $6164: $36 $18
    db $10                                        ; $6166: $10
    db $10                                        ; $6167: $10
    ld d, $10                                     ; $6168: $16 $10
    db $10                                        ; $616a: $10
    db $10                                        ; $616b: $10
    rrca                                          ; $616c: $0f
    ldh [rIF], a                                  ; $616d: $e0 $0f
    rrca                                          ; $616f: $0f
    ccf                                           ; $6170: $3f
    nop                                           ; $6171: $00
    rst RST_38                                    ; $6172: $ff
    ret nz                                        ; $6173: $c0

    db $ed                                        ; $6174: $ed
    cp $c0                                        ; $6175: $fe $c0
    ldh [c], a                                    ; $6177: $e2
    sub d                                         ; $6178: $92
    ld b, [hl]                                    ; $6179: $46
    ret nz                                        ; $617a: $c0

    call z, $986d                                 ; $617b: $cc $6d $98
    rst RST_38                                    ; $617e: $ff
    ret nc                                        ; $617f: $d0

    sub h                                         ; $6180: $94
    ld [hl], b                                    ; $6181: $70
    call nc, Call_002_77e0                        ; $6182: $d4 $e0 $77

jr_002_6185:
    cp b                                          ; $6185: $b8
    db $10                                        ; $6186: $10
    ld l, h                                       ; $6187: $6c
    rra                                           ; $6188: $1f
    db $fc                                        ; $6189: $fc
    inc bc                                        ; $618a: $03
    ld b, b                                       ; $618b: $40
    ld bc, $0fc0                                  ; $618c: $01 $c0 $0f
    rrca                                          ; $618f: $0f
    rra                                           ; $6190: $1f
    ldh a, [rNR10]                                ; $6191: $f0 $10
    db $10                                        ; $6193: $10
    ldh a, [rNR34]                                ; $6194: $f0 $1e
    cp a                                          ; $6196: $bf
    or $f3                                        ; $6197: $f6 $f3
    sbc [hl]                                      ; $6199: $9e
    or $de                                        ; $619a: $f6 $de
    db $f4                                        ; $619c: $f4
    ld e, [hl]                                    ; $619d: $5e
    push af                                       ; $619e: $f5
    ld e, [hl]                                    ; $619f: $5e
    dec b                                         ; $61a0: $05
    ld b, b                                       ; $61a1: $40
    ld [hl], h                                    ; $61a2: $74
    ld e, h                                       ; $61a3: $5c
    ld d, d                                       ; $61a4: $52
    sub h                                         ; $61a5: $94
    ld [hl], d                                    ; $61a6: $72
    sbc h                                         ; $61a7: $9c
    ld [hl], a                                    ; $61a8: $77
    call c, Call_000_2008                         ; $61a9: $dc $08 $20
    rrca                                          ; $61ac: $0f
    ldh [rIF], a                                  ; $61ad: $e0 $0f
    rrca                                          ; $61af: $0f
    ld c, $00                                     ; $61b0: $0e $00
    ld de, $2ec0                                  ; $61b2: $11 $c0 $2e
    jr nz, jr_002_61e0                            ; $61b5: $20 $29

    ret nc                                        ; $61b7: $d0

    jr z, jr_002_620a                             ; $61b8: $28 $50

    ld l, $50                                     ; $61ba: $2e $50
    ccf                                           ; $61bc: $3f
    ret nc                                        ; $61bd: $d0

    ld hl, $20f0                                  ; $61be: $21 $f0 $20
    jr nc, @+$58                                  ; $61c1: $30 $56

    ld [hl], b                                    ; $61c3: $70
    ld c, a                                       ; $61c4: $4f
    cp b                                          ; $61c5: $b8
    ld b, [hl]                                    ; $61c6: $46
    jr jr_002_6209                                ; $61c7: $18 $40

    jr jr_002_6247                                ; $61c9: $18 $7c

    jr jr_002_61d0                                ; $61cb: $18 $03

    ldh a, [rIF]                                  ; $61cd: $f0 $0f
    rrca                                          ; $61cf: $0f

jr_002_61d0:
    inc c                                         ; $61d0: $0c
    nop                                           ; $61d1: $00
    ld [$3800], sp                                ; $61d2: $08 $00 $38
    nop                                           ; $61d5: $00
    ld l, b                                       ; $61d6: $68
    ld b, $f8                                     ; $61d7: $06 $f8
    ld c, $fc                                     ; $61d9: $0e $fc
    ld [$f8df], sp                                ; $61db: $08 $df $f8
    dec c                                         ; $61de: $0d
    or b                                          ; $61df: $b0

jr_002_61e0:
    inc c                                         ; $61e0: $0c
    jr nc, jr_002_61f2                            ; $61e1: $30 $0f

    ldh a, [rTMA]                                 ; $61e3: $f0 $06
    ld h, b                                       ; $61e5: $60
    ld b, $60                                     ; $61e6: $06 $60
    ld l, h                                       ; $61e8: $6c
    ld [hl], $3f                                  ; $61e9: $36 $3f
    db $fc                                        ; $61eb: $fc
    rra                                           ; $61ec: $1f
    ld hl, sp+$0f                                 ; $61ed: $f8 $0f
    rrca                                          ; $61ef: $0f
    inc bc                                        ; $61f0: $03
    ret nz                                        ; $61f1: $c0

jr_002_61f2:
    ld c, $40                                     ; $61f2: $0e $40
    jr @-$3e                                      ; $61f4: $18 $c0

    inc de                                        ; $61f6: $13
    ldh [$ff30], a                                ; $61f7: $e0 $30
    jr nc, jr_002_623a                            ; $61f9: $30 $3f

    db $10                                        ; $61fb: $10
    jr nc, jr_002_622e                            ; $61fc: $30 $30

    rra                                           ; $61fe: $1f
    ldh [$ff15], a                                ; $61ff: $e0 $15

jr_002_6201:
    ld h, b                                       ; $6201: $60
    rra                                           ; $6202: $1f
    ldh [$ff0a], a                                ; $6203: $e0 $0a
    ret nz                                        ; $6205: $c0

    rrca                                          ; $6206: $0f
    ret nz                                        ; $6207: $c0

    rlca                                          ; $6208: $07

jr_002_6209:
    add b                                         ; $6209: $80

jr_002_620a:
    rlca                                          ; $620a: $07
    add b                                         ; $620b: $80
    nop                                           ; $620c: $00
    nop                                           ; $620d: $00
    rrca                                          ; $620e: $0f
    rrca                                          ; $620f: $0f
    dec h                                         ; $6210: $25
    nop                                           ; $6211: $00
    scf                                           ; $6212: $37
    nop                                           ; $6213: $00
    inc e                                         ; $6214: $1c
    nop                                           ; $6215: $00
    stop                                          ; $6216: $10 $00
    jr c, jr_002_621a                             ; $6218: $38 $00

jr_002_621a:
    ld d, b                                       ; $621a: $50
    nop                                           ; $621b: $00
    ld hl, sp+$00                                 ; $621c: $f8 $00
    ccf                                           ; $621e: $3f
    ld hl, sp+$1f                                 ; $621f: $f8 $1f
    db $fc                                        ; $6221: $fc
    rra                                           ; $6222: $1f
    db $fc                                        ; $6223: $fc
    rrca                                          ; $6224: $0f
    db $fc                                        ; $6225: $fc
    ld b, $18                                     ; $6226: $06 $18
    ld [bc], a                                    ; $6228: $02
    ld [$0802], sp                                ; $6229: $08 $02 $08
    ld b, $18                                     ; $622c: $06 $18

jr_002_622e:
    rrca                                          ; $622e: $0f
    rrca                                          ; $622f: $0f
    nop                                           ; $6230: $00
    ld [$d801], sp                                ; $6231: $08 $01 $d8
    nop                                           ; $6234: $00
    ldh a, [rIF]                                  ; $6235: $f0 $0f
    ld hl, sp+$19                                 ; $6237: $f8 $19
    ld a, h                                       ; $6239: $7c

jr_002_623a:
    inc [hl]                                      ; $623a: $34
    ld a, $21                                     ; $623b: $3e $21
    ld a, [de]                                    ; $623d: $1a
    inc [hl]                                      ; $623e: $34

Jump_002_623f:
    ld e, b                                       ; $623f: $58
    ld h, c                                       ; $6240: $61
    jr jr_002_6297                                ; $6241: $18 $54

    ld e, b                                       ; $6243: $58
    ld b, c                                       ; $6244: $41
    ld a, b                                       ; $6245: $78
    ld d, a                                       ; $6246: $57

jr_002_6247:
    ldh a, [$ff7f]                                ; $6247: $f0 $7f
    ret nz                                        ; $6249: $c0

    ccf                                           ; $624a: $3f
    nop                                           ; $624b: $00
    nop                                           ; $624c: $00
    nop                                           ; $624d: $00
    rrca                                          ; $624e: $0f
    rrca                                          ; $624f: $0f
    rlca                                          ; $6250: $07
    nop                                           ; $6251: $00
    db $fc                                        ; $6252: $fc
    nop                                           ; $6253: $00
    xor b                                         ; $6254: $a8
    nop                                           ; $6255: $00
    xor b                                         ; $6256: $a8
    jr jr_002_6201                                ; $6257: $18 $a8

    ld hl, sp-$04                                 ; $6259: $f8 $fc
    jr c, jr_002_6279                             ; $625b: $38 $1c

    jr nz, @+$76                                  ; $625d: $20 $74

    ld c, h                                       ; $625f: $4c
    db $f4                                        ; $6260: $f4
    ld e, [hl]                                    ; $6261: $5e
    or a                                          ; $6262: $b7
    ld a, [$1a96]                                 ; $6263: $fa $96 $1a
    sub a                                         ; $6266: $97
    ld a, [$1292]                                 ; $6267: $fa $92 $12
    di                                            ; $626a: $f3
    sbc [hl]                                      ; $626b: $9e
    ld h, b                                       ; $626c: $60
    inc c                                         ; $626d: $0c
    rrca                                          ; $626e: $0f
    rrca                                          ; $626f: $0f
    rrca                                          ; $6270: $0f
    ldh [$ff1f], a                                ; $6271: $e0 $1f
    ldh a, [$ff3f]                                ; $6273: $f0 $3f
    ld a, b                                       ; $6275: $78
    ccf                                           ; $6276: $3f
    ld a, [hl]                                    ; $6277: $7e
    ccf                                           ; $6278: $3f

jr_002_6279:
    ldh a, [$ff1f]                                ; $6279: $f0 $1f
    ldh [rIF], a                                  ; $627b: $e0 $0f
    and b                                         ; $627d: $a0
    dec e                                         ; $627e: $1d
    sub b                                         ; $627f: $90
    dec a                                         ; $6280: $3d

jr_002_6281:
    adc b                                         ; $6281: $88
    dec a                                         ; $6282: $3d
    adc b                                         ; $6283: $88
    ld a, l                                       ; $6284: $7d
    adc b                                         ; $6285: $88
    ld a, e                                       ; $6286: $7b
    sbc b                                         ; $6287: $98
    ld [hl], a                                    ; $6288: $77
    sub b                                         ; $6289: $90
    ccf                                           ; $628a: $3f

jr_002_628b:
    jr nz, jr_002_628b                            ; $628b: $20 $fe

    db $fc                                        ; $628d: $fc
    rrca                                          ; $628e: $0f
    rrca                                          ; $628f: $0f
    inc bc                                        ; $6290: $03
    jr @+$07                                      ; $6291: $18 $05

    xor h                                         ; $6293: $ac
    rlca                                          ; $6294: $07
    cp h                                          ; $6295: $bc
    rrca                                          ; $6296: $0f

jr_002_6297:
    cp $12                                        ; $6297: $fe $12
    ld [de], a                                    ; $6299: $12
    ld [de], a                                    ; $629a: $12
    ld e, $12                                     ; $629b: $1e $12
    ld [de], a                                    ; $629d: $12
    ld a, [hl]                                    ; $629e: $7e
    ld e, $81                                     ; $629f: $1e $81
    ld [de], a                                    ; $62a1: $12
    add e                                         ; $62a2: $83
    sub d                                         ; $62a3: $92
    cp c                                          ; $62a4: $b9
    ld a, [hl-]                                   ; $62a5: $3a
    add $c6                                       ; $62a6: $c6 $c6
    cp d                                          ; $62a8: $ba
    cp d                                          ; $62a9: $ba
    rst RST_28                                    ; $62aa: $ef
    xor $38                                       ; $62ab: $ee $38
    jr c, jr_002_62be                             ; $62ad: $38 $0f

    rrca                                          ; $62af: $0f
    db $fc                                        ; $62b0: $fc
    nop                                           ; $62b1: $00
    sub a                                         ; $62b2: $97
    nop                                           ; $62b3: $00
    sub c                                         ; $62b4: $91
    ret nz                                        ; $62b5: $c0

    xor h                                         ; $62b6: $ac
    ld [hl], b                                    ; $62b7: $70
    and e                                         ; $62b8: $a3
    ld e, $a0                                     ; $62b9: $1e $a0
    db $e4                                        ; $62bb: $e4
    xor h                                         ; $62bc: $ac
    ld c, b                                       ; $62bd: $48

jr_002_62be:
    db $f4                                        ; $62be: $f4
    or $84                                        ; $62bf: $f6 $84
    sub [hl]                                      ; $62c1: $96
    call nz, Call_002_7f90                        ; $62c2: $c4 $90 $7f
    cp $13                                        ; $62c5: $fe $13
    jr nz, jr_002_62e8                            ; $62c7: $20 $1f

    cp $1d                                        ; $62c9: $fe $1d
    xor d                                         ; $62cb: $aa
    ld c, $fe                                     ; $62cc: $0e $fe
    rrca                                          ; $62ce: $0f
    rrca                                          ; $62cf: $0f
    ld a, h                                       ; $62d0: $7c
    nop                                           ; $62d1: $00
    cp $00                                        ; $62d2: $fe $00
    ld a, h                                       ; $62d4: $7c
    nop                                           ; $62d5: $00
    nop                                           ; $62d6: $00
    nop                                           ; $62d7: $00
    jr c, jr_002_62da                             ; $62d8: $38 $00

jr_002_62da:
    ld a, h                                       ; $62da: $7c
    nop                                           ; $62db: $00
    jr c, jr_002_62ec                             ; $62dc: $38 $0e

    nop                                           ; $62de: $00
    ld e, $fe                                     ; $62df: $1e $fe
    jr c, jr_002_6281                             ; $62e1: $38 $9e

    ld [hl], b                                    ; $62e3: $70

Jump_002_62e4:
    sbc a                                         ; $62e4: $9f
    ldh [rIE], a                                  ; $62e5: $e0 $ff
    ret nz                                        ; $62e7: $c0

jr_002_62e8:
    sbc a                                         ; $62e8: $9f
    add b                                         ; $62e9: $80
    ld a, a                                       ; $62ea: $7f
    nop                                           ; $62eb: $00

jr_002_62ec:
    inc a                                         ; $62ec: $3c
    nop                                           ; $62ed: $00
    rrca                                          ; $62ee: $0f
    rrca                                          ; $62ef: $0f
    rrca                                          ; $62f0: $0f
    ldh [$fff9], a                                ; $62f1: $e0 $f9
    ld a, $89                                     ; $62f3: $3e $89
    ld [hl+], a                                   ; $62f5: $22
    adc e                                         ; $62f6: $8b
    and d                                         ; $62f7: $a2
    adc [hl]                                      ; $62f8: $8e
    ld h, d                                       ; $62f9: $62
    add d                                         ; $62fa: $82
    ld [bc], a                                    ; $62fb: $02
    ldh [c], a                                    ; $62fc: $e2
    ld c, $2a                                     ; $62fd: $0e $2a
    xor b                                         ; $62ff: $a8
    ld [hl+], a                                   ; $6300: $22
    xor b                                         ; $6301: $a8
    ld a, [hl+]                                   ; $6302: $2a
    add sp, $22                                   ; $6303: $e8 $22
    ld [$082a], sp                                ; $6305: $08 $2a $08
    ld [hl+], a                                   ; $6308: $22
    ld [$383a], sp                                ; $6309: $08 $3a $38
    rrca                                          ; $630c: $0f

jr_002_630d:
    ldh [rIF], a                                  ; $630d: $e0 $0f
    rrca                                          ; $630f: $0f
    nop                                           ; $6310: $00
    jr nc, jr_002_6313                            ; $6311: $30 $00

jr_002_6313:
    ld [hl], b                                    ; $6313: $70
    nop                                           ; $6314: $00
    ret c                                         ; $6315: $d8

    ld bc, $0398                                  ; $6316: $01 $98 $03
    ld [$cc06], sp                                ; $6319: $08 $06 $cc
    adc h                                         ; $631c: $8c
    ld a, h                                       ; $631d: $7c
    sbc b                                         ; $631e: $98
    inc b                                         ; $631f: $04
    pop de                                        ; $6320: $d1
    sbc [hl]                                      ; $6321: $9e
    ld a, b                                       ; $6322: $78
    cp $6e                                        ; $6323: $fe $6e
    ld b, $3f                                     ; $6325: $06 $3f
    ld c, $6f                                     ; $6327: $0e $6f
    cp $4a                                        ; $6329: $fe $4a
    db $fc                                        ; $632b: $fc
    ld c, d                                       ; $632c: $4a
    nop                                           ; $632d: $00
    rrca                                          ; $632e: $0f
    rrca                                          ; $632f: $0f
    cp $62                                        ; $6330: $fe $62
    db $fc                                        ; $6332: $fc
    add $fd                                       ; $6333: $c6 $fd
    adc [hl]                                      ; $6335: $8e
    ei                                            ; $6336: $fb
    cp h                                          ; $6337: $bc
    ei                                            ; $6338: $fb
    ld hl, sp-$0f                                 ; $6339: $f8 $f1
    ldh a, [c]                                    ; $633b: $f2
    pop af                                        ; $633c: $f1
    or $00                                        ; $633d: $f6 $00
    inc e                                         ; $633f: $1c
    adc d                                         ; $6340: $8a
    jr c, jr_002_630d                             ; $6341: $38 $ca

    ld [hl], b                                    ; $6343: $70
    ldh [$ffe6], a                                ; $6344: $e0 $e6
    ret nz                                        ; $6346: $c0

    ld l, [hl]                                    ; $6347: $6e
    call nz, $8e7e                                ; $6348: $c4 $7e $8e
    ld a, $bf                                     ; $634b: $3e $bf
    cp [hl]                                       ; $634d: $be
    rrca                                          ; $634e: $0f
    rrca                                          ; $634f: $0f
    ld h, b                                       ; $6350: $60
    nop                                           ; $6351: $00
    ld [hl], a                                    ; $6352: $77
    ret nz                                        ; $6353: $c0

    ccf                                           ; $6354: $3f
    ldh [$ff1f], a                                ; $6355: $e0 $1f
    jr nc, jr_002_6397                            ; $6357: $30 $3e

    jr jr_002_6397                                ; $6359: $18 $3c

    ld [$0c38], sp                                ; $635b: $08 $38 $0c
    ld [hl], $04                                  ; $635e: $36 $04
    ccf                                           ; $6360: $3f
    inc b                                         ; $6361: $04
    rra                                           ; $6362: $1f
    add h                                         ; $6363: $84
    rrca                                          ; $6364: $0f
    db $f4                                        ; $6365: $f4
    rlca                                          ; $6366: $07
    db $fc                                        ; $6367: $fc
    ld bc, $00fc                                  ; $6368: $01 $fc $00
    nop                                           ; $636b: $00
    nop                                           ; $636c: $00
    nop                                           ; $636d: $00
    rrca                                          ; $636e: $0f
    rrca                                          ; $636f: $0f
    ccf                                           ; $6370: $3f
    ldh [$ff7f], a                                ; $6371: $e0 $7f
    ldh a, [$ffe8]                                ; $6373: $f0 $e8
    cp b                                          ; $6375: $b8
    sbc b                                         ; $6376: $98
    ret z                                         ; $6377: $c8

    sub d                                         ; $6378: $92
    ld c, b                                       ; $6379: $48
    ld [hl-], a                                   ; $637a: $32
    ld h, b                                       ; $637b: $60
    ld h, e                                       ; $637c: $63
    jr nc, jr_002_63c6                            ; $637d: $30 $47

    db $10                                        ; $637f: $10
    ld c, a                                       ; $6380: $4f
    sub b                                         ; $6381: $90
    ld c, l                                       ; $6382: $4d
    sub b                                         ; $6383: $90
    ld c, l                                       ; $6384: $4d
    sub b                                         ; $6385: $90
    ld h, a                                       ; $6386: $67
    ld [hl-], a                                   ; $6387: $32
    dec [hl]                                      ; $6388: $35
    ld l, [hl]                                    ; $6389: $6e
    rra                                           ; $638a: $1f
    jp nz, $f07f                                  ; $638b: $c2 $7f $f0

    rrca                                          ; $638e: $0f
    rrca                                          ; $638f: $0f
    nop                                           ; $6390: $00
    ldh a, [rSB]                                  ; $6391: $f0 $01
    sub b                                         ; $6393: $90
    rra                                           ; $6394: $1f
    inc e                                         ; $6395: $1c
    ld [hl], b                                    ; $6396: $70

jr_002_6397:
    ld b, $c0                                     ; $6397: $06 $c0
    ld [de], a                                    ; $6399: $12
    add b                                         ; $639a: $80
    ld a, [de]                                    ; $639b: $1a
    sub b                                         ; $639c: $90
    ld [de], a                                    ; $639d: $12
    add e                                         ; $639e: $83
    ld a, [de]                                    ; $639f: $1a
    pop bc                                        ; $63a0: $c1
    ld [de], a                                    ; $63a1: $12
    add e                                         ; $63a2: $83
    ld a, [de]                                    ; $63a3: $1a
    ret nz                                        ; $63a4: $c0

    ld [de], a                                    ; $63a5: $12
    ld [hl], b                                    ; $63a6: $70
    ld b, $1f                                     ; $63a7: $06 $1f
    inc e                                         ; $63a9: $1c
    ld bc, $0090                                  ; $63aa: $01 $90 $00
    ldh a, [rIF]                                  ; $63ad: $f0 $0f
    rrca                                          ; $63af: $0f
    nop                                           ; $63b0: $00
    inc c                                         ; $63b1: $0c
    nop                                           ; $63b2: $00
    inc b                                         ; $63b3: $04
    nop                                           ; $63b4: $00
    ld a, h                                       ; $63b5: $7c
    nop                                           ; $63b6: $00
    inc e                                         ; $63b7: $1c
    nop                                           ; $63b8: $00
    ld l, h                                       ; $63b9: $6c
    nop                                           ; $63ba: $00
    db $f4                                        ; $63bb: $f4
    ld bc, $03f0                                  ; $63bc: $01 $f0 $03
    ldh a, [rTAC]                                 ; $63bf: $f0 $07
    ldh [$ff0d], a                                ; $63c1: $e0 $0d
    and b                                         ; $63c3: $a0
    ld e, $60                                     ; $63c4: $1e $60

jr_002_63c6:
    scf                                           ; $63c6: $37
    ret nz                                        ; $63c7: $c0

    ld a, c                                       ; $63c8: $79
    add b                                         ; $63c9: $80
    rst RST_38                                    ; $63ca: $ff
    nop                                           ; $63cb: $00
    nop                                           ; $63cc: $00
    nop                                           ; $63cd: $00
    rrca                                          ; $63ce: $0f
    rrca                                          ; $63cf: $0f
    dec bc                                        ; $63d0: $0b
    and b                                         ; $63d1: $a0
    rlca                                          ; $63d2: $07
    ret nz                                        ; $63d3: $c0

    rra                                           ; $63d4: $1f
    ldh a, [$ff1f]                                ; $63d5: $f0 $1f
    ldh a, [$ffa1]                                ; $63d7: $f0 $a1
    ld a, [bc]                                    ; $63d9: $0a
    ld a, [hl]                                    ; $63da: $7e
    db $fc                                        ; $63db: $fc
    ld [hl-], a                                   ; $63dc: $32
    sbc b                                         ; $63dd: $98
    ld [hl-], a                                   ; $63de: $32
    sbc b                                         ; $63df: $98
    cp $fe                                        ; $63e0: $fe $fe
    ld a, $f8                                     ; $63e2: $3e $f8
    ld [hl-], a                                   ; $63e4: $32
    sbc b                                         ; $63e5: $98
    ld [hl], d                                    ; $63e6: $72
    sbc h                                         ; $63e7: $9c
    sbc [hl]                                      ; $63e8: $9e
    ldh a, [c]                                    ; $63e9: $f2
    ld c, $e0                                     ; $63ea: $0e $e0
    inc bc                                        ; $63ec: $03
    add b                                         ; $63ed: $80
    rrca                                          ; $63ee: $0f
    rrca                                          ; $63ef: $0f
    rra                                           ; $63f0: $1f
    ldh a, [rNR42]                                ; $63f1: $f0 $21
    ld [$0821], sp                                ; $63f3: $08 $21 $08
    ld hl, $5308                                  ; $63f6: $21 $08 $53
    sub h                                         ; $63f9: $94
    ld d, d                                       ; $63fa: $52
    sub h                                         ; $63fb: $94
    adc d                                         ; $63fc: $8a
    and d                                         ; $63fd: $a2
    adc d                                         ; $63fe: $8a
    and d                                         ; $63ff: $a2
    ld a, [$72be]                                 ; $6400: $fa $be $72
    sbc h                                         ; $6403: $9c
    ld [bc], a                                    ; $6404: $02
    add b                                         ; $6405: $80
    ccf                                           ; $6406: $3f
    ld hl, sp+$40                                 ; $6407: $f8 $40
    inc b                                         ; $6409: $04
    ld b, a                                       ; $640a: $47
    call nz, Call_000_3c78                        ; $640b: $c4 $78 $3c
    rrca                                          ; $640e: $0f
    rrca                                          ; $640f: $0f
    rra                                           ; $6410: $1f
    nop                                           ; $6411: $00
    ld h, h                                       ; $6412: $64
    ret nz                                        ; $6413: $c0

    add b                                         ; $6414: $80
    jr nz, @+$01                                  ; $6415: $20 $ff

    ldh [rNR13], a                                ; $6417: $e0 $13
    nop                                           ; $6419: $00
    ld [de], a                                    ; $641a: $12
    nop                                           ; $641b: $00
    dec sp                                        ; $641c: $3b
    ret nz                                        ; $641d: $c0

    ld [hl], e                                    ; $641e: $73
    ret nz                                        ; $641f: $c0

    ld [hl], a                                    ; $6420: $77
    ldh [rIE], a                                  ; $6421: $e0 $ff
    ldh [$fffd], a                                ; $6423: $e0 $fd
    ldh a, [$fffe]                                ; $6425: $f0 $fe
    ldh a, [$ff60]                                ; $6427: $f0 $60
    ldh [$ff1f], a                                ; $6429: $e0 $1f
    ld hl, sp+$1f                                 ; $642b: $f8 $1f
    adc $0f                                       ; $642d: $ce $0f
    rrca                                          ; $642f: $0f
    ld e, $00                                     ; $6430: $1e $00
    ld [de], a                                    ; $6432: $12
    nop                                           ; $6433: $00
    ld a, [hl-]                                   ; $6434: $3a
    nop                                           ; $6435: $00
    db $d3                                        ; $6436: $d3
    nop                                           ; $6437: $00
    adc l                                         ; $6438: $8d
    nop                                           ; $6439: $00
    ld sp, hl                                     ; $643a: $f9
    nop                                           ; $643b: $00
    inc de                                        ; $643c: $13
    nop                                           ; $643d: $00
    ld h, $0e                                     ; $643e: $26 $0e
    ld h, h                                       ; $6440: $64
    ld a, [hl]                                    ; $6441: $7e
    ld c, a                                       ; $6442: $4f
    ld a, [$fa4f]                                 ; $6443: $fa $4f $fa
    ld b, a                                       ; $6446: $47
    ldh a, [c]                                    ; $6447: $f2
    ld b, e                                       ; $6448: $43
    and $60                                       ; $6449: $e6 $60
    inc c                                         ; $644b: $0c
    ccf                                           ; $644c: $3f
    ld hl, sp+$0f                                 ; $644d: $f8 $0f
    rrca                                          ; $644f: $0f
    inc bc                                        ; $6450: $03
    ret nz                                        ; $6451: $c0

    rlca                                          ; $6452: $07
    ldh [rPCM34], a                               ; $6453: $e0 $77
    ldh a, [$fffa]                                ; $6455: $f0 $fa
    ldh a, [$ffda]                                ; $6457: $f0 $da
    ld hl, sp-$08                                 ; $6459: $f8 $f8
    ld hl, sp-$01                                 ; $645b: $f8 $ff
    ld hl, sp-$01                                 ; $645d: $f8 $ff
    or b                                          ; $645f: $b0
    ld a, [hl]                                    ; $6460: $7e
    ld [hl], b                                    ; $6461: $70
    ld sp, $11fe                                  ; $6462: $31 $fe $11
    cp $21                                        ; $6465: $fe $21
    cp $23                                        ; $6467: $fe $23
    ld c, $12                                     ; $6469: $0e $12
    ld c, $0f                                     ; $646b: $0e $0f
    db $fc                                        ; $646d: $fc
    rrca                                          ; $646e: $0f
    rrca                                          ; $646f: $0f
    inc c                                         ; $6470: $0c
    nop                                           ; $6471: $00
    inc d                                         ; $6472: $14
    jr nc, jr_002_6481                            ; $6473: $30 $0c

    ld [hl], b                                    ; $6475: $70
    rrca                                          ; $6476: $0f
    ldh [rIF], a                                  ; $6477: $e0 $0f
    ldh [rTAC], a                                 ; $6479: $e0 $07
    ret nz                                        ; $647b: $c0

    ld bc, $2100                                  ; $647c: $01 $00 $21
    inc c                                         ; $647f: $0c
    rst RST_18                                    ; $6480: $df

jr_002_6481:
    ldh a, [c]                                    ; $6481: $f2
    ld hl, $010c                                  ; $6482: $21 $0c $01
    nop                                           ; $6485: $00
    ld [bc], a                                    ; $6486: $02
    add b                                         ; $6487: $80
    rst RST_38                                    ; $6488: $ff
    cp $bb                                        ; $6489: $fe $bb
    cp d                                          ; $648b: $ba
    ld [hl], a                                    ; $648c: $77
    halt                                          ; $648d: $76
    rrca                                          ; $648e: $0f
    rrca                                          ; $648f: $0f
    inc bc                                        ; $6490: $03
    add b                                         ; $6491: $80
    ld [bc], a                                    ; $6492: $02
    add b                                         ; $6493: $80
    ld [bc], a                                    ; $6494: $02
    add b                                         ; $6495: $80
    ld h, [hl]                                    ; $6496: $66
    call z, Call_002_5454                         ; $6497: $cc $54 $54
    ld d, h                                       ; $649a: $54
    ld d, h                                       ; $649b: $54
    ld e, h                                       ; $649c: $5c
    ld [hl], h                                    ; $649d: $74
    ld c, b                                       ; $649e: $48
    inc [hl]                                      ; $649f: $34
    ld c, b                                       ; $64a0: $48
    inc h                                         ; $64a1: $24
    ld b, b                                       ; $64a2: $40
    inc b                                         ; $64a3: $04
    db $e3                                        ; $64a4: $e3
    adc [hl]                                      ; $64a5: $8e
    and d                                         ; $64a6: $a2
    adc d                                         ; $64a7: $8a
    db $e3                                        ; $64a8: $e3
    adc [hl]                                      ; $64a9: $8e
    ld b, b                                       ; $64aa: $40
    inc b                                         ; $64ab: $04
    ld a, a                                       ; $64ac: $7f
    db $fc                                        ; $64ad: $fc
    rrca                                          ; $64ae: $0f
    rrca                                          ; $64af: $0f
    nop                                           ; $64b0: $00

Call_002_64b1:
    inc b                                         ; $64b1: $04
    inc a                                         ; $64b2: $3c
    ld c, $7e                                     ; $64b3: $0e $7e
    ld c, $ce                                     ; $64b5: $0e $ce
    inc b                                         ; $64b7: $04
    adc [hl]                                      ; $64b8: $8e
    inc b                                         ; $64b9: $04
    db $ec                                        ; $64ba: $ec
    inc b                                         ; $64bb: $04
    inc d                                         ; $64bc: $14
    ld [hl], h                                    ; $64bd: $74
    ccf                                           ; $64be: $3f
    db $fc                                        ; $64bf: $fc
    ld a, [hl]                                    ; $64c0: $7e
    ld a, h                                       ; $64c1: $7c
    ld a, [hl]                                    ; $64c2: $7e
    ld a, b                                       ; $64c3: $78
    ccf                                           ; $64c4: $3f
    ld hl, sp+$14                                 ; $64c5: $f8 $14
    ld c, b                                       ; $64c7: $48
    inc d                                         ; $64c8: $14
    jr z, jr_002_64e7                             ; $64c9: $28 $1c

    jr c, jr_002_6509                             ; $64cb: $38 $3c

    ld a, b                                       ; $64cd: $78
    rrca                                          ; $64ce: $0f
    rrca                                          ; $64cf: $0f
    inc bc                                        ; $64d0: $03
    add b                                         ; $64d1: $80
    rlca                                          ; $64d2: $07
    ret nz                                        ; $64d3: $c0

    rra                                           ; $64d4: $1f
    ldh a, [rDIV]                                 ; $64d5: $f0 $04
    ld b, b                                       ; $64d7: $40
    call nz, Call_002_7e46                        ; $64d8: $c4 $46 $7e
    db $fc                                        ; $64db: $fc
    inc hl                                        ; $64dc: $23
    adc b                                         ; $64dd: $88
    jr nz, @-$76                                  ; $64de: $20 $88

    ld a, [hl-]                                   ; $64e0: $3a
    cp b                                          ; $64e1: $b8
    ld [$0ba0], sp                                ; $64e2: $08 $a0 $0b
    and b                                         ; $64e5: $a0
    dec bc                                        ; $64e6: $0b

jr_002_64e7:
    ldh [rTAC], a                                 ; $64e7: $e0 $07
    and b                                         ; $64e9: $a0
    dec b                                         ; $64ea: $05
    add b                                         ; $64eb: $80
    ld bc, $0f80                                  ; $64ec: $01 $80 $0f
    rrca                                          ; $64ef: $0f
    nop                                           ; $64f0: $00
    add b                                         ; $64f1: $80
    ld bc, $0180                                  ; $64f2: $01 $80 $01
    nop                                           ; $64f5: $00
    rlca                                          ; $64f6: $07
    ret nz                                        ; $64f7: $c0

    ld [hl], $f0                                  ; $64f8: $36 $f0
    jr nc, jr_002_652c                            ; $64fa: $30 $30

    ld b, $d8                                     ; $64fc: $06 $d8
    ld [hl], $d8                                  ; $64fe: $36 $d8
    ld sp, $0db0                                  ; $6500: $31 $b0 $0d
    or b                                          ; $6503: $b0
    inc c                                         ; $6504: $0c
    ret nz                                        ; $6505: $c0

    inc bc                                        ; $6506: $03
    ret nz                                        ; $6507: $c0

    inc bc                                        ; $6508: $03

jr_002_6509:
    nop                                           ; $6509: $00
    ld b, $00                                     ; $650a: $06 $00
    ld b, $00                                     ; $650c: $06 $00
    rrca                                          ; $650e: $0f
    rrca                                          ; $650f: $0f
    jr c, jr_002_6516                             ; $6510: $38 $04

    ld l, h                                       ; $6512: $6c
    inc c                                         ; $6513: $0c
    ld e, h                                       ; $6514: $5c
    inc e                                         ; $6515: $1c

jr_002_6516:
    sbc $14                                       ; $6516: $de $14
    cp a                                          ; $6518: $bf
    adc b                                         ; $6519: $88
    rst RST_38                                    ; $651a: $ff
    ldh a, [$ff3f]                                ; $651b: $f0 $3f
    db $fc                                        ; $651d: $fc
    rrca                                          ; $651e: $0f
    cp $07                                        ; $651f: $fe $07
    cp $03                                        ; $6521: $fe $03
    adc [hl]                                      ; $6523: $8e
    inc bc                                        ; $6524: $03
    ld b, $01                                     ; $6525: $06 $01
    ld h, $01                                     ; $6527: $26 $01
    ld b, $01                                     ; $6529: $06 $01
    adc h                                         ; $652b: $8c

jr_002_652c:
    nop                                           ; $652c: $00
    ld hl, sp+$0f                                 ; $652d: $f8 $0f
    rrca                                          ; $652f: $0f
    nop                                           ; $6530: $00
    ld c, $00                                     ; $6531: $0e $00
    inc e                                         ; $6533: $1c
    inc b                                         ; $6534: $04
    jr c, jr_002_653b                             ; $6535: $38 $04

    jr z, jr_002_653d                             ; $6537: $28 $04

    jr z, jr_002_653f                             ; $6539: $28 $04

jr_002_653b:
    jr z, jr_002_6542                             ; $653b: $28 $05

jr_002_653d:
    db $fc                                        ; $653d: $fc
    dec b                                         ; $653e: $05

jr_002_653f:
    inc b                                         ; $653f: $04
    db $fd                                        ; $6540: $fd
    ld d, h                                       ; $6541: $54

jr_002_6542:
    adc a                                         ; $6542: $8f
    cp $40                                        ; $6543: $fe $40
    ld [bc], a                                    ; $6545: $02
    ld a, a                                       ; $6546: $7f
    cp $40                                        ; $6547: $fe $40
    ld [bc], a                                    ; $6549: $02
    jr nz, jr_002_6550                            ; $654a: $20 $04

    ccf                                           ; $654c: $3f
    db $fc                                        ; $654d: $fc
    rrca                                          ; $654e: $0f
    rrca                                          ; $654f: $0f

jr_002_6550:
    ld bc, $018e                                  ; $6550: $01 $8e $01
    sbc [hl]                                      ; $6553: $9e
    ld bc, $003e                                  ; $6554: $01 $3e $00
    db $fc                                        ; $6557: $fc
    inc bc                                        ; $6558: $03
    ld hl, sp+$77                                 ; $6559: $f8 $77
    ldh a, [$ffef]                                ; $655b: $f0 $ef
    or $1f                                        ; $655d: $f6 $1f
    xor $17                                       ; $655f: $ee $17
    ldh [$ff3f], a                                ; $6561: $e0 $3f
    ret nz                                        ; $6563: $c0

    ld h, l                                       ; $6564: $65
    add b                                         ; $6565: $80
    rst RST_00                                    ; $6566: $c7
    ld b, b                                       ; $6567: $40
    adc h                                         ; $6568: $8c
    ret nz                                        ; $6569: $c0

    ret c                                         ; $656a: $d8

    ret nz                                        ; $656b: $c0

    ld [hl], b                                    ; $656c: $70
    add b                                         ; $656d: $80
    rrca                                          ; $656e: $0f
    rrca                                          ; $656f: $0f
    ld c, $e0                                     ; $6570: $0e $e0
    jr @+$32                                      ; $6572: $18 $30

    inc e                                         ; $6574: $1c
    ld [hl], b                                    ; $6575: $70
    db $10                                        ; $6576: $10
    db $10                                        ; $6577: $10
    jr jr_002_65aa                                ; $6578: $18 $30

    rrca                                          ; $657a: $0f
    ldh [c], a                                    ; $657b: $e2
    sub b                                         ; $657c: $90
    ld [de], a                                    ; $657d: $12
    rst RST_18                                    ; $657e: $df
    or $6f                                        ; $657f: $f6 $6f
    db $e4                                        ; $6581: $e4
    db $10                                        ; $6582: $10
    db $10                                        ; $6583: $10
    sbc $f0                                       ; $6584: $de $f0
    ld e, $f6                                     ; $6586: $1e $f6
    ld e, [hl]                                    ; $6588: $5e
    ldh a, [c]                                    ; $6589: $f2
    ld e, [hl]                                    ; $658a: $5e
    ldh a, [$ff4e]                                ; $658b: $f0 $4e
    and $0f                                       ; $658d: $e6 $0f
    rrca                                          ; $658f: $0f
    ld [bc], a                                    ; $6590: $02
    nop                                           ; $6591: $00
    rlca                                          ; $6592: $07
    nop                                           ; $6593: $00
    rla                                           ; $6594: $17
    ld b, b                                       ; $6595: $40
    rra                                           ; $6596: $1f
    ret nz                                        ; $6597: $c0

    dec c                                         ; $6598: $0d
    ret nz                                        ; $6599: $c0

    rra                                           ; $659a: $1f
    ld h, b                                       ; $659b: $60
    dec sp                                        ; $659c: $3b
    ldh [$ff3e], a                                ; $659d: $e0 $3e
    db $10                                        ; $659f: $10
    ld l, [hl]                                    ; $65a0: $6e
    ld hl, sp-$1f                                 ; $65a1: $f8 $e1
    call c, $f03f                                 ; $65a3: $dc $3f $f0
    inc bc                                        ; $65a6: $03
    nop                                           ; $65a7: $00
    rrca                                          ; $65a8: $0f
    ret nz                                        ; $65a9: $c0

jr_002_65aa:
    rrca                                          ; $65aa: $0f
    ret nz                                        ; $65ab: $c0

    rlca                                          ; $65ac: $07
    add b                                         ; $65ad: $80
    rrca                                          ; $65ae: $0f
    rrca                                          ; $65af: $0f
    jr nc, jr_002_65ca                            ; $65b0: $30 $18

    ld a, b                                       ; $65b2: $78
    inc [hl]                                      ; $65b3: $34
    ld l, a                                       ; $65b4: $6f
    db $f4                                        ; $65b5: $f4
    ld h, c                                       ; $65b6: $61
    call nz, $c643                                ; $65b7: $c4 $43 $c6
    ld b, b                                       ; $65ba: $40
    add d                                         ; $65bb: $82
    ld e, c                                       ; $65bc: $59
    jp c, $badc                                   ; $65bd: $da $dc $ba

    ldh [rTMA], a                                 ; $65c0: $e0 $06
    pop af                                        ; $65c2: $f1
    adc $65                                       ; $65c3: $ce $65
    add $74                                       ; $65c5: $c6 $74
    sub [hl]                                      ; $65c7: $96
    ccf                                           ; $65c8: $3f
    db $fc                                        ; $65c9: $fc

jr_002_65ca:
    ld e, $38                                     ; $65ca: $1e $38
    inc bc                                        ; $65cc: $03
    ldh [rIF], a                                  ; $65cd: $e0 $0f
    rrca                                          ; $65cf: $0f
    dec h                                         ; $65d0: $25
    ld c, b                                       ; $65d1: $48
    ld e, d                                       ; $65d2: $5a
    or h                                          ; $65d3: $b4
    ld d, a                                       ; $65d4: $57
    call nc, $d456                                ; $65d5: $d4 $56 $d4
    halt                                          ; $65d8: $76
    call c, $f45e                                 ; $65d9: $dc $5e $f4
    sub a                                         ; $65dc: $97
    jp nc, $8aa2                                  ; $65dd: $d2 $a2 $8a

    and h                                         ; $65e0: $a4
    ld c, d                                       ; $65e1: $4a
    and h                                         ; $65e2: $a4
    ld c, d                                       ; $65e3: $4a
    and h                                         ; $65e4: $a4
    ld c, d                                       ; $65e5: $4a
    db $e4                                        ; $65e6: $e4
    ld c, [hl]                                    ; $65e7: $4e
    inc [hl]                                      ; $65e8: $34
    ld e, b                                       ; $65e9: $58
    ld e, $f0                                     ; $65ea: $1e $f0
    inc bc                                        ; $65ec: $03
    add b                                         ; $65ed: $80
    rrca                                          ; $65ee: $0f
    rrca                                          ; $65ef: $0f
    jr nz, @+$3e                                  ; $65f0: $20 $3c

    jr nc, @+$68                                  ; $65f2: $30 $66

    jr c, jr_002_6638                             ; $65f4: $38 $42

    ccf                                           ; $65f6: $3f
    ld b, d                                       ; $65f7: $42
    ld a, [hl]                                    ; $65f8: $7e
    ld h, [hl]                                    ; $65f9: $66
    ld [hl], b                                    ; $65fa: $70
    inc a                                         ; $65fb: $3c
    ld h, b                                       ; $65fc: $60
    jr @-$1e                                      ; $65fd: $18 $e0

    jr @-$0e                                      ; $65ff: $18 $f0

    inc l                                         ; $6601: $2c
    ldh a, [$ff3c]                                ; $6602: $f0 $3c
    ld a, h                                       ; $6604: $7c
    db $fc                                        ; $6605: $fc
    ld a, a                                       ; $6606: $7f
    db $ec                                        ; $6607: $ec
    ccf                                           ; $6608: $3f
    db $f4                                        ; $6609: $f4
    rra                                           ; $660a: $1f
    cp b                                          ; $660b: $b8

Jump_002_660c:
    rrca                                          ; $660c: $0f
    sbc $0f                                       ; $660d: $de $0f
    rrca                                          ; $660f: $0f
    rra                                           ; $6610: $1f
    ldh a, [$ff30]                                ; $6611: $f0 $30
    jr jr_002_6637                                ; $6613: $18 $22

    adc b                                         ; $6615: $88
    ld [hl+], a                                   ; $6616: $22
    adc b                                         ; $6617: $88
    ld [hl+], a                                   ; $6618: $22
    adc b                                         ; $6619: $88
    jr nz, jr_002_6624                            ; $661a: $20 $08

    jr c, @+$3a                                   ; $661c: $38 $38

    rrca                                          ; $661e: $0f
    ldh [$ff81], a                                ; $661f: $e0 $81
    ld [bc], a                                    ; $6621: $02
    pop af                                        ; $6622: $f1
    ld a, [hl]                                    ; $6623: $7e

jr_002_6624:
    sbc l                                         ; $6624: $9d
    jp nz, $82c7                                  ; $6625: $c2 $c7 $82

    ld b, e                                       ; $6628: $43
    add [hl]                                      ; $6629: $86
    ld h, e                                       ; $662a: $63
    inc a                                         ; $662b: $3c
    ccf                                           ; $662c: $3f
    ldh [rIF], a                                  ; $662d: $e0 $0f
    rrca                                          ; $662f: $0f
    rlca                                          ; $6630: $07
    jp nz, $a60a                                  ; $6631: $c2 $0a $a6

    dec d                                         ; $6634: $15
    ld l, [hl]                                    ; $6635: $6e
    ld a, [hl-]                                   ; $6636: $3a

jr_002_6637:
    sbc h                                         ; $6637: $9c

jr_002_6638:
    jr nc, @+$3a                                  ; $6638: $30 $38

    ld h, b                                       ; $663a: $60
    ld [hl], h                                    ; $663b: $74
    ld b, b                                       ; $663c: $40
    db $e4                                        ; $663d: $e4
    rst RST_38                                    ; $663e: $ff
    cp $80                                        ; $663f: $fe $80
    ld [bc], a                                    ; $6641: $02
    ret nz                                        ; $6642: $c0

    ld b, $60                                     ; $6643: $06 $60
    inc c                                         ; $6645: $0c
    ccf                                           ; $6646: $3f
    ld hl, sp+$02                                 ; $6647: $f8 $02
    add b                                         ; $6649: $80
    inc c                                         ; $664a: $0c
    ld h, b                                       ; $664b: $60
    ccf                                           ; $664c: $3f
    ld hl, sp+$0f                                 ; $664d: $f8 $0f
    rrca                                          ; $664f: $0f
    rlca                                          ; $6650: $07
    nop                                           ; $6651: $00
    dec c                                         ; $6652: $0d
    ret nz                                        ; $6653: $c0

    add hl, bc                                    ; $6654: $09
    jr nz, jr_002_665f                            ; $6655: $20 $08

    and b                                         ; $6657: $a0
    db $10                                        ; $6658: $10
    jr nz, jr_002_66cb                            ; $6659: $20 $70

    ld h, $d0                                     ; $665b: $26 $d0
    ld a, [hl-]                                   ; $665d: $3a
    sub b                                         ; $665e: $90

jr_002_665f:
    ld a, [hl-]                                   ; $665f: $3a
    sbc b                                         ; $6660: $98
    ld l, d                                       ; $6661: $6a
    cp a                                          ; $6662: $bf
    ld [$d2af], a                                 ; $6663: $ea $af $d2
    add a                                         ; $6666: $87
    sub [hl]                                      ; $6667: $96
    ret nz                                        ; $6668: $c0

    inc l                                         ; $6669: $2c
    ld h, b                                       ; $666a: $60
    ld a, b                                       ; $666b: $78
    ccf                                           ; $666c: $3f
    ldh [rIF], a                                  ; $666d: $e0 $0f
    rrca                                          ; $666f: $0f
    ld a, a                                       ; $6670: $7f
    ld hl, sp+$40                                 ; $6671: $f8 $40
    jr nc, jr_002_66b5                            ; $6673: $30 $40

    ld a, [de]                                    ; $6675: $1a
    ld b, b                                       ; $6676: $40
    ld c, [hl]                                    ; $6677: $4e
    ld [hl], b                                    ; $6678: $70
    ld b, $1c                                     ; $6679: $06 $1c
    ld [de], a                                    ; $667b: $12
    inc b                                         ; $667c: $04
    ld [bc], a                                    ; $667d: $02
    inc b                                         ; $667e: $04
    ld [bc], a                                    ; $667f: $02
    ld h, [hl]                                    ; $6680: $66
    ld [bc], a                                    ; $6681: $02
    ld c, a                                       ; $6682: $4f
    jp nz, $42cc                                  ; $6683: $c2 $cc $42

    adc h                                         ; $6686: $8c
    ld h, d                                       ; $6687: $62
    adc b                                         ; $6688: $88
    ld [hl+], a                                   ; $6689: $22
    ret c                                         ; $668a: $d8

    ld a, $70                                     ; $668b: $3e $70
    nop                                           ; $668d: $00
    rrca                                          ; $668e: $0f
    rrca                                          ; $668f: $0f
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    add b                                         ; $6693: $80
    ld bc, $2140                                  ; $6694: $01 $40 $21
    ld b, d                                       ; $6697: $42
    ld [hl-], a                                   ; $6698: $32
    ld h, $2a                                     ; $6699: $26 $2a
    ld a, [hl+]                                   ; $669b: $2a
    daa                                           ; $669c: $27
    ldh a, [c]                                    ; $669d: $f2
    cpl                                           ; $669e: $2f
    ldh a, [c]                                    ; $669f: $f2
    ld a, [hl]                                    ; $66a0: $7e
    ld a, [hl-]                                   ; $66a1: $3a
    sbc [hl]                                      ; $66a2: $9e
    inc a                                         ; $66a3: $3c
    ld l, [hl]                                    ; $66a4: $6e
    ld a, $b7                                     ; $66a5: $3e $b7
    ldh a, [$fff9]                                ; $66a7: $f0 $f9
    adc $1e                                       ; $66a9: $ce $1e
    inc a                                         ; $66ab: $3c
    rrca                                          ; $66ac: $0f
    ld hl, sp+$0f                                 ; $66ad: $f8 $0f
    rrca                                          ; $66af: $0f
    nop                                           ; $66b0: $00
    jr c, jr_002_66b3                             ; $66b1: $38 $00

jr_002_66b3:
    inc e                                         ; $66b3: $1c
    nop                                           ; $66b4: $00

jr_002_66b5:
    ld c, $78                                     ; $66b5: $0e $78
    ld a, [bc]                                    ; $66b7: $0a
    call z, $bc18                                 ; $66b8: $cc $18 $bc
    ld [hl], b                                    ; $66bb: $70
    rst RST_38                                    ; $66bc: $ff
    ret nc                                        ; $66bd: $d0

    db $fc                                        ; $66be: $fc
    jr nc, jr_002_6739                            ; $66bf: $30 $78

    jr nz, jr_002_66c6                            ; $66c1: $20 $03

    ldh [rTMA], a                                 ; $66c3: $e0 $06
    ld h, b                                       ; $66c5: $60

jr_002_66c6:
    dec b                                         ; $66c6: $05
    ldh [rTAC], a                                 ; $66c7: $e0 $07
    ldh [rTAC], a                                 ; $66c9: $e0 $07

jr_002_66cb:
    ldh [$ff03], a                                ; $66cb: $e0 $03
    ret nz                                        ; $66cd: $c0

    rrca                                          ; $66ce: $0f
    rrca                                          ; $66cf: $0f
    jr @-$1e                                      ; $66d0: $18 $e0

    ld a, l                                       ; $66d2: $7d
    ldh a, [$ff7d]                                ; $66d3: $f0 $7d
    ld hl, sp-$31                                 ; $66d5: $f8 $cf
    sbc b                                         ; $66d7: $98
    sbc e                                         ; $66d8: $9b
    call z, Call_002_64b1                         ; $66d9: $cc $b1 $64
    dec sp                                        ; $66dc: $3b
    or b                                          ; $66dd: $b0
    ld l, $90                                     ; $66de: $2e $90
    inc hl                                        ; $66e0: $23
    ret nz                                        ; $66e1: $c0

    ld bc, $0140                                  ; $66e2: $01 $40 $01
    ret nz                                        ; $66e5: $c0

    ld bc, $0140                                  ; $66e6: $01 $40 $01
    ldh [rSB], a                                  ; $66e9: $e0 $01
    jr nz, jr_002_66f0                            ; $66eb: $20 $03

    ldh a, [rIF]                                  ; $66ed: $f0 $0f
    rrca                                          ; $66ef: $0f

jr_002_66f0:
    ld bc, $7ff8                                  ; $66f0: $01 $f8 $7f
    ld [$0841], sp                                ; $66f3: $08 $41 $08
    ld b, e                                       ; $66f6: $43
    ld [$0842], sp                                ; $66f7: $08 $42 $08
    ld a, [hl]                                    ; $66fa: $7e
    ld [$0804], sp                                ; $66fb: $08 $04 $08
    ld a, a                                       ; $66fe: $7f
    cp $80                                        ; $66ff: $fe $80
    ld [bc], a                                    ; $6701: $02
    cp a                                          ; $6702: $bf
    ld a, [$46c4]                                 ; $6703: $fa $c4 $46
    add d                                         ; $6706: $82
    add d                                         ; $6707: $82
    add d                                         ; $6708: $82
    add d                                         ; $6709: $82
    rst RST_00                                    ; $670a: $c7
    add $78                                       ; $670b: $c6 $78
    inc a                                         ; $670d: $3c
    rrca                                          ; $670e: $0f
    rrca                                          ; $670f: $0f
    ccf                                           ; $6710: $3f
    add b                                         ; $6711: $80
    ld l, b                                       ; $6712: $68
    ld b, b                                       ; $6713: $40
    and b                                         ; $6714: $a0
    add b                                         ; $6715: $80
    pop af                                        ; $6716: $f1
    nop                                           ; $6717: $00
    sub l                                         ; $6718: $95
    nop                                           ; $6719: $00
    rra                                           ; $671a: $1f
    add b                                         ; $671b: $80
    ccf                                           ; $671c: $3f
    ldh [$ff2f], a                                ; $671d: $e0 $2f
    cp $27                                        ; $671f: $fe $27
    cp $33                                        ; $6721: $fe $33
    cp $30                                        ; $6723: $fe $30
    inc c                                         ; $6725: $0c
    ld a, [de]                                    ; $6726: $1a
    jr c, jr_002_672e                             ; $6727: $38 $05

    ldh [rSC], a                                  ; $6729: $e0 $02
    nop                                           ; $672b: $00
    dec c                                         ; $672c: $0d
    nop                                           ; $672d: $00

jr_002_672e:
    rrca                                          ; $672e: $0f
    rrca                                          ; $672f: $0f
    ld [bc], a                                    ; $6730: $02
    add b                                         ; $6731: $80
    add a                                         ; $6732: $87
    jp nz, $a6cb                                  ; $6733: $c2 $cb $a6

    ld c, a                                       ; $6736: $4f
    db $e4                                        ; $6737: $e4
    ld a, b                                       ; $6738: $78

jr_002_6739:
    inc a                                         ; $6739: $3c
    rra                                           ; $673a: $1f
    ldh a, [rPCM34]                               ; $673b: $f0 $77
    call c, $9293                                 ; $673d: $dc $93 $92
    and e                                         ; $6740: $a3
    adc d                                         ; $6741: $8a
    ld hl, $2108                                  ; $6742: $21 $08 $21
    ld [$8443], sp                                ; $6745: $08 $43 $84
    ld b, a                                       ; $6748: $47
    call nz, Call_002_6c6c                        ; $6749: $c4 $6c $6c
    jr c, jr_002_6786                             ; $674c: $38 $38

    rrca                                          ; $674e: $0f
    rrca                                          ; $674f: $0f
    nop                                           ; $6750: $00
    jr c, jr_002_6754                             ; $6751: $38 $01

    inc c                                         ; $6753: $0c

jr_002_6754:
    ld bc, $0f04                                  ; $6754: $01 $04 $0f
    db $ec                                        ; $6757: $ec
    add hl, sp                                    ; $6758: $39
    jr c, jr_002_67bc                             ; $6759: $38 $61

    inc c                                         ; $675b: $0c
    ld b, b                                       ; $675c: $40
    inc b                                         ; $675d: $04
    ld [hl], b                                    ; $675e: $70
    inc e                                         ; $675f: $1c
    ld e, a                                       ; $6760: $5f
    db $f4                                        ; $6761: $f4
    ld h, b                                       ; $6762: $60
    inc c                                         ; $6763: $0c
    jr nc, jr_002_677e                            ; $6764: $30 $18

    ld a, a                                       ; $6766: $7f
    ldh a, [$ffcf]                                ; $6767: $f0 $cf
    ldh [$ffc3], a                                ; $6769: $e0 $c3
    add b                                         ; $676b: $80
    ld a, c                                       ; $676c: $79
    nop                                           ; $676d: $00
    rrca                                          ; $676e: $0f
    rrca                                          ; $676f: $0f
    rlca                                          ; $6770: $07
    ret nz                                        ; $6771: $c0

    add hl, de                                    ; $6772: $19
    ldh a, [$ff33]                                ; $6773: $f0 $33
    add sp, $67                                   ; $6775: $e8 $67
    db $e4                                        ; $6777: $e4
    ld a, a                                       ; $6778: $7f
    db $f4                                        ; $6779: $f4
    cp $3e                                        ; $677a: $fe $3e
    cp $3a                                        ; $677c: $fe $3a

jr_002_677e:
    adc $32                                       ; $677e: $ce $32
    rst RST_08                                    ; $6780: $cf
    ldh a, [c]                                    ; $6781: $f2
    rst RST_38                                    ; $6782: $ff
    cp $74                                        ; $6783: $fe $74
    ld e, h                                       ; $6785: $5c

jr_002_6786:
    inc h                                         ; $6786: $24
    ld c, b                                       ; $6787: $48
    jr nz, @+$0a                                  ; $6788: $20 $08

    jr nc, jr_002_67a4                            ; $678a: $30 $18

    rra                                           ; $678c: $1f
    ldh a, [rIF]                                  ; $678d: $f0 $0f
    rrca                                          ; $678f: $0f
    inc e                                         ; $6790: $1c
    ldh a, [rNR21]                                ; $6791: $f0 $16
    sbc h                                         ; $6793: $9c
    ld [hl], e                                    ; $6794: $73
    add [hl]                                      ; $6795: $86
    ret nz                                        ; $6796: $c0

    jp nz, $6292                                  ; $6797: $c2 $92 $62

Call_002_679a:
    sub e                                         ; $679a: $93
    ld [hl-], a                                   ; $679b: $32
    add c                                         ; $679c: $81
    sub d                                         ; $679d: $92
    ld a, b                                       ; $679e: $78
    sbc d                                         ; $679f: $9a
    db $d3                                        ; $67a0: $d3
    jp z, Jump_002_4aa6                           ; $67a1: $ca $a6 $4a

jr_002_67a4:
    xor h                                         ; $67a4: $ac
    ld a, [hl+]                                   ; $67a5: $2a
    or h                                          ; $67a6: $b4
    ld a, [bc]                                    ; $67a7: $0a
    rst RST_08                                    ; $67a8: $cf
    ld a, [bc]                                    ; $67a9: $0a
    ld a, b                                       ; $67aa: $78
    ld h, $0f                                     ; $67ab: $26 $0f
    db $fc                                        ; $67ad: $fc
    rrca                                          ; $67ae: $0f
    rrca                                          ; $67af: $0f
    ld a, b                                       ; $67b0: $78
    nop                                           ; $67b1: $00
    ld a, h                                       ; $67b2: $7c
    nop                                           ; $67b3: $00
    db $e4                                        ; $67b4: $e4
    nop                                           ; $67b5: $00
    jp z, $c600                                   ; $67b6: $ca $00 $c6

    nop                                           ; $67b9: $00
    ld e, h                                       ; $67ba: $5c
    ld [hl], b                                    ; $67bb: $70

jr_002_67bc:
    ld b, h                                       ; $67bc: $44
    ld c, b                                       ; $67bd: $48
    rst RST_20                                    ; $67be: $e7
    cp $b7                                        ; $67bf: $fe $b7
    ld [bc], a                                    ; $67c1: $02
    pop de                                        ; $67c2: $d1
    ld b, $5f                                     ; $67c3: $06 $5f
    inc b                                         ; $67c5: $04
    ld b, b                                       ; $67c6: $40
    inc b                                         ; $67c7: $04
    ld b, b                                       ; $67c8: $40
    inc b                                         ; $67c9: $04
    ld c, a                                       ; $67ca: $4f
    db $e4                                        ; $67cb: $e4
    jr c, jr_002_6806                             ; $67cc: $38 $38

    rrca                                          ; $67ce: $0f
    rrca                                          ; $67cf: $0f
    ld b, $00                                     ; $67d0: $06 $00
    ld b, $00                                     ; $67d2: $06 $00
    rrca                                          ; $67d4: $0f
    add b                                         ; $67d5: $80
    rrca                                          ; $67d6: $0f
    ret nz                                        ; $67d7: $c0

    ld e, a                                       ; $67d8: $5f
    ld h, b                                       ; $67d9: $60
    rst RST_30                                    ; $67da: $f7
    jr nz, jr_002_6824                            ; $67db: $20 $47

    ld a, [hl]                                    ; $67dd: $7e
    ld c, [hl]                                    ; $67de: $4e
    jr nz, jr_002_6830                            ; $67df: $20 $4f

    ld [bc], a                                    ; $67e1: $02
    ld b, a                                       ; $67e2: $47
    adc h                                         ; $67e3: $8c
    ld b, c                                       ; $67e4: $41
    or $40                                        ; $67e5: $f6 $40
    ld hl, sp+$43                                 ; $67e7: $f8 $43
    ldh [$ff0d], a                                ; $67e9: $e0 $0d
    add b                                         ; $67eb: $80
    halt                                          ; $67ec: $76
    nop                                           ; $67ed: $00
    rrca                                          ; $67ee: $0f
    rrca                                          ; $67ef: $0f
    rlca                                          ; $67f0: $07
    ret nz                                        ; $67f1: $c0

    ld [$1720], sp                                ; $67f2: $08 $20 $17
    ret nc                                        ; $67f5: $d0

    scf                                           ; $67f6: $37
    ret c                                         ; $67f7: $d8

    ld d, e                                       ; $67f8: $53
    sub h                                         ; $67f9: $94
    ld c, e                                       ; $67fa: $4b
    and h                                         ; $67fb: $a4
    adc c                                         ; $67fc: $89
    ld [hl+], a                                   ; $67fd: $22
    add h                                         ; $67fe: $84
    ld b, d                                       ; $67ff: $42
    add e                                         ; $6800: $83
    jp nz, Jump_002_5290                          ; $6801: $c2 $90 $52

    sub b                                         ; $6804: $90
    ld d, d                                       ; $6805: $52

jr_002_6806:
    pop af                                        ; $6806: $f1
    ld e, [hl]                                    ; $6807: $5e
    sub c                                         ; $6808: $91
    ld d, d                                       ; $6809: $52
    ldh a, [$ff5e]                                ; $680a: $f0 $5e
    ccf                                           ; $680c: $3f
    ld hl, sp+$0f                                 ; $680d: $f8 $0f
    rrca                                          ; $680f: $0f
    jr c, jr_002_6812                             ; $6810: $38 $00

jr_002_6812:
    ld b, h                                       ; $6812: $44
    nop                                           ; $6813: $00
    adc b                                         ; $6814: $88
    nop                                           ; $6815: $00
    sbc d                                         ; $6816: $9a
    sbc b                                         ; $6817: $98
    xor l                                         ; $6818: $ad
    ld h, h                                       ; $6819: $64
    xor a                                         ; $681a: $af
    ldh a, [c]                                    ; $681b: $f2
    ld hl, sp+$2a                                 ; $681c: $f8 $2a
    ld d, b                                       ; $681e: $50
    ld e, $5f                                     ; $681f: $1e $5f
    db $f4                                        ; $6821: $f4
    jr nc, @+$1a                                  ; $6822: $30 $18

jr_002_6824:
    rst RST_08                                    ; $6824: $cf
    db $e4                                        ; $6825: $e4
    cp b                                          ; $6826: $b8
    ld a, [hl-]                                   ; $6827: $3a
    xor a                                         ; $6828: $af
    ld [$2aa8], a                                 ; $6829: $ea $a8 $2a
    ld hl, sp+$3e                                 ; $682c: $f8 $3e
    rrca                                          ; $682e: $0f
    rrca                                          ; $682f: $0f

jr_002_6830:
    rlca                                          ; $6830: $07
    add b                                         ; $6831: $80
    rrca                                          ; $6832: $0f
    ret nz                                        ; $6833: $c0

    ld c, $00                                     ; $6834: $0e $00
    ccf                                           ; $6836: $3f
    jr jr_002_68b8                                ; $6837: $18 $7f

    cp h                                          ; $6839: $bc
    rst RST_30                                    ; $683a: $f7
    and $b7                                       ; $683b: $e6 $b7
    cp $f4                                        ; $683d: $fe $f4
    xor $e5                                       ; $683f: $ee $e5
    or [hl]                                       ; $6841: $b6
    ld l, a                                       ; $6842: $6f
    cp [hl]                                       ; $6843: $be
    ld a, $36                                     ; $6844: $3e $36
    inc bc                                        ; $6846: $03
    ld d, $03                                     ; $6847: $16 $03
    add [hl]                                      ; $6849: $86
    nop                                           ; $684a: $00
    ld b, $00                                     ; $684b: $06 $00
    inc b                                         ; $684d: $04
    rrca                                          ; $684e: $0f
    rrca                                          ; $684f: $0f
    ld a, h                                       ; $6850: $7c
    ld b, [hl]                                    ; $6851: $46
    ld b, e                                       ; $6852: $43
    cp d                                          ; $6853: $ba
    ld a, b                                       ; $6854: $78
    and [hl]                                      ; $6855: $a6
    adc d                                         ; $6856: $8a
    inc c                                         ; $6857: $0c
    sub a                                         ; $6858: $97
    ldh a, [$ff82]                                ; $6859: $f0 $82
    nop                                           ; $685b: $00
    di                                            ; $685c: $f3
    ld hl, sp+$10                                 ; $685d: $f8 $10
    ld b, $10                                     ; $685f: $06 $10
    ld a, [bc]                                    ; $6861: $0a
    db $10                                        ; $6862: $10
    ld a, [bc]                                    ; $6863: $0a
    db $10                                        ; $6864: $10
    ld c, [hl]                                    ; $6865: $4e
    rla                                           ; $6866: $17
    ret z                                         ; $6867: $c8

    inc d                                         ; $6868: $14
    jr z, @+$16                                   ; $6869: $28 $14

    jr z, jr_002_6899                             ; $686b: $28 $2c

    ld e, b                                       ; $686d: $58
    rrca                                          ; $686e: $0f
    rrca                                          ; $686f: $0f
    cp $3e                                        ; $6870: $fe $3e
    cp $7e                                        ; $6872: $fe $7e
    rst RST_00                                    ; $6874: $c7
    add $80                                       ; $6875: $c6 $80
    ld [bc], a                                    ; $6877: $02
    nop                                           ; $6878: $00
    nop                                           ; $6879: $00
    ld e, $f0                                     ; $687a: $1e $f0
    ld a, $f8                                     ; $687c: $3e $f8
    ld h, $c8                                     ; $687e: $26 $c8

Call_002_6880:
    nop                                           ; $6880: $00
    nop                                           ; $6881: $00
    nop                                           ; $6882: $00
    nop                                           ; $6883: $00
    inc sp                                        ; $6884: $33
    jr z, jr_002_68c6                             ; $6885: $28 $3f

    ld hl, sp-$6b                                 ; $6887: $f8 $95
    ld [hl-], a                                   ; $6889: $32
    add b                                         ; $688a: $80
    ld [bc], a                                    ; $688b: $02
    pop bc                                        ; $688c: $c1
    ld b, $0f                                     ; $688d: $06 $0f
    rrca                                          ; $688f: $0f
    nop                                           ; $6890: $00

jr_002_6891:
    ld a, $00                                     ; $6891: $3e $00
    ld h, d                                       ; $6893: $62
    inc bc                                        ; $6894: $03
    or d                                          ; $6895: $b2
    dec b                                         ; $6896: $05
    ld e, $09                                     ; $6897: $1e $09

jr_002_6899:
    ld [bc], a                                    ; $6899: $02
    add hl, de                                    ; $689a: $19
    add d                                         ; $689b: $82
    ld a, b                                       ; $689c: $78
    add $cc                                       ; $689d: $c6 $cc
    ld a, [hl]                                    ; $689f: $7e
    add [hl]                                      ; $68a0: $86
    ld [bc], a                                    ; $68a1: $02
    xor d                                         ; $68a2: $aa
    ld [bc], a                                    ; $68a3: $02
    xor e                                         ; $68a4: $ab
    ld b, $a9                                     ; $68a5: $06 $a9
    adc h                                         ; $68a7: $8c
    ret nz                                        ; $68a8: $c0

    ld hl, sp+$63                                 ; $68a9: $f8 $63
    add b                                         ; $68ab: $80
    ld a, $00                                     ; $68ac: $3e $00
    rrca                                          ; $68ae: $0f
    rrca                                          ; $68af: $0f
    nop                                           ; $68b0: $00
    jr nz, jr_002_68ba                            ; $68b1: $20 $07

    ret nz                                        ; $68b3: $c0

    inc b                                         ; $68b4: $04
    ld b, b                                       ; $68b5: $40
    ld b, $40                                     ; $68b6: $06 $40

jr_002_68b8:
    rrca                                          ; $68b8: $0f
    ld b, b                                       ; $68b9: $40

jr_002_68ba:
    rra                                           ; $68ba: $1f
    ret nz                                        ; $68bb: $c0

    ld a, $00                                     ; $68bc: $3e $00
    ld a, h                                       ; $68be: $7c
    nop                                           ; $68bf: $00
    ld a, b                                       ; $68c0: $78
    nop                                           ; $68c1: $00
    ldh a, [$ff38]                                ; $68c2: $f0 $38
    rst RST_28                                    ; $68c4: $ef
    db $e4                                        ; $68c5: $e4

jr_002_68c6:
    rst RST_18                                    ; $68c6: $df
    and $0f                                       ; $68c7: $e6 $0f
    db $e4                                        ; $68c9: $e4
    nop                                           ; $68ca: $00
    jr c, jr_002_68cd                             ; $68cb: $38 $00

jr_002_68cd:
    nop                                           ; $68cd: $00
    rrca                                          ; $68ce: $0f
    rrca                                          ; $68cf: $0f
    ld h, b                                       ; $68d0: $60
    inc a                                         ; $68d1: $3c
    sub b                                         ; $68d2: $90
    ld h, [hl]                                    ; $68d3: $66
    adc c                                         ; $68d4: $89
    jp nz, Jump_000_02cb                          ; $68d5: $c2 $cb $02

    or [hl]                                       ; $68d8: $b6
    ld b, $8d                                     ; $68d9: $06 $8d
    add h                                         ; $68db: $84
    sbc b                                         ; $68dc: $98

jr_002_68dd:
    db $ec                                        ; $68dd: $ec
    sub b                                         ; $68de: $90
    jr jr_002_6891                                ; $68df: $18 $b0

    inc a                                         ; $68e1: $3c
    and b                                         ; $68e2: $a0
    ld [hl], h                                    ; $68e3: $74
    ldh [$fffc], a                                ; $68e4: $e0 $fc
    pop hl                                        ; $68e6: $e1
    db $fc                                        ; $68e7: $fc
    ld h, a                                       ; $68e8: $67
    inc d                                         ; $68e9: $14
    inc a                                         ; $68ea: $3c
    inc d                                         ; $68eb: $14
    nop                                           ; $68ec: $00
    inc d                                         ; $68ed: $14
    rrca                                          ; $68ee: $0f
    rrca                                          ; $68ef: $0f
    ld a, $00                                     ; $68f0: $3e $00
    pop bc                                        ; $68f2: $c1
    nop                                           ; $68f3: $00
    sbc h                                         ; $68f4: $9c
    add b                                         ; $68f5: $80
    xor d                                         ; $68f6: $aa
    sub b                                         ; $68f7: $90
    xor d                                         ; $68f8: $aa
    sub b                                         ; $68f9: $90
    and d                                         ; $68fa: $a2
    sub d                                         ; $68fb: $92
    sbc d                                         ; $68fc: $9a
    sbc d                                         ; $68fd: $9a
    adc d                                         ; $68fe: $8a
    ld e, [hl]                                    ; $68ff: $5e
    sub c                                         ; $6900: $91
    ld c, [hl]                                    ; $6901: $4e
    and l                                         ; $6902: $a5
    ld c, h                                       ; $6903: $4c
    and l                                         ; $6904: $a5
    call c, $fcb9                                 ; $6905: $dc $b9 $fc
    sub e                                         ; $6908: $93
    db $fc                                        ; $6909: $fc
    ld e, a                                       ; $690a: $5f
    ld hl, sp+$7f                                 ; $690b: $f8 $7f
    ldh a, [rIF]                                  ; $690d: $f0 $0f
    rrca                                          ; $690f: $0f
    rlca                                          ; $6910: $07
    ld c, $05                                     ; $6911: $0e $05
    sbc d                                         ; $6913: $9a
    inc b                                         ; $6914: $04
    ldh a, [c]                                    ; $6915: $f2
    ld b, $06                                     ; $6916: $06 $06
    inc a                                         ; $6918: $3c
    sub d                                         ; $6919: $92
    ld h, h                                       ; $691a: $64
    sub d                                         ; $691b: $92
    add $06                                       ; $691c: $c6 $06
    add c                                         ; $691e: $81
    sbc h                                         ; $691f: $9c
    sub b                                         ; $6920: $90
    ld h, h                                       ; $6921: $64
    sub c                                         ; $6922: $91
    inc b                                         ; $6923: $04
    sbc e                                         ; $6924: $9b
    inc h                                         ; $6925: $24
    adc a                                         ; $6926: $8f
    inc h                                         ; $6927: $24
    add a                                         ; $6928: $87
    ld h, $e1                                     ; $6929: $26 $e1
    sub d                                         ; $692b: $92
    ccf                                           ; $692c: $3f
    cp $0f                                        ; $692d: $fe $0f
    rrca                                          ; $692f: $0f
    inc bc                                        ; $6930: $03
    add b                                         ; $6931: $80
    rrca                                          ; $6932: $0f
    ldh [$ff08], a                                ; $6933: $e0 $08
    ld a, b                                       ; $6935: $78
    dec a                                         ; $6936: $3d
    inc l                                         ; $6937: $2c
    ld l, b                                       ; $6938: $68
    ld h, h                                       ; $6939: $64
    ld c, h                                       ; $693a: $4c
    sbc $47                                       ; $693b: $de $47
    sub d                                         ; $693d: $92
    ldh a, [$ff3e]                                ; $693e: $f0 $3e
    sbc a                                         ; $6940: $9f
    db $e4                                        ; $6941: $e4
    rst RST_38                                    ; $6942: $ff
    call nz, $944f                                ; $6943: $c4 $4f $94
    ld b, e                                       ; $6946: $43
    or $cf                                        ; $6947: $f6 $cf
    sub d                                         ; $6949: $92
    adc b                                         ; $694a: $88
    ld e, $f8                                     ; $694b: $1e $f8
    nop                                           ; $694d: $00
    rrca                                          ; $694e: $0f
    rrca                                          ; $694f: $0f
    ld e, $00                                     ; $6950: $1e $00
    ld a, [de]                                    ; $6952: $1a
    nop                                           ; $6953: $00
    dec de                                        ; $6954: $1b
    nop                                           ; $6955: $00
    ld [hl], d                                    ; $6956: $72
    ret nz                                        ; $6957: $c0

    sbc $30                                       ; $6958: $de $30
    add b                                         ; $695a: $80
    jr jr_002_68dd                                ; $695b: $18 $80

    inc c                                         ; $695d: $0c
    db $fc                                        ; $695e: $fc
    inc b                                         ; $695f: $04
    ld b, b                                       ; $6960: $40
    or $39                                        ; $6961: $f6 $39
    add d                                         ; $6963: $82
    add hl, bc                                    ; $6964: $09
    ld [bc], a                                    ; $6965: $02
    add hl, bc                                    ; $6966: $09
    ld a, [de]                                    ; $6967: $1a
    dec de                                        ; $6968: $1b
    jp z, Jump_000_0e12                           ; $6969: $ca $12 $0e

    rra                                           ; $696c: $1f
    db $fc                                        ; $696d: $fc
    rrca                                          ; $696e: $0f
    rrca                                          ; $696f: $0f
    rrca                                          ; $6970: $0f
    nop                                           ; $6971: $00
    add hl, bc                                    ; $6972: $09
    nop                                           ; $6973: $00
    dec c                                         ; $6974: $0d
    ret nz                                        ; $6975: $c0

    add hl, sp                                    ; $6976: $39
    ld h, $6f                                     ; $6977: $26 $6f
    cp d                                          ; $6979: $ba
    ldh a, [$ff72]                                ; $697a: $f0 $72
    sub h                                         ; $697c: $94
    ld a, [de]                                    ; $697d: $1a
    sub $12                                       ; $697e: $d6 $12
    sub d                                         ; $6980: $92
    sbc d                                         ; $6981: $9a
    sub e                                         ; $6982: $93
    ld [de], a                                    ; $6983: $12
    ldh a, [rNR30]                                ; $6984: $f0 $1a
    ld b, b                                       ; $6986: $40
    ld [hl], d                                    ; $6987: $72
    ld sp, $0eda                                  ; $6988: $31 $da $0e
    ld b, [hl]                                    ; $698b: $46
    inc bc                                        ; $698c: $03
    add b                                         ; $698d: $80
    rrca                                          ; $698e: $0f
    rrca                                          ; $698f: $0f
    ld a, $18                                     ; $6990: $3e $18
    ld l, e                                       ; $6992: $6b
    inc a                                         ; $6993: $3c
    push de                                       ; $6994: $d5
    inc a                                         ; $6995: $3c
    ld [$d598], a                                 ; $6996: $ea $98 $d5
    add b                                         ; $6999: $80
    ld [$f580], a                                 ; $699a: $ea $80 $f5
    add b                                         ; $699d: $80
    ld a, a                                       ; $699e: $7f
    add b                                         ; $699f: $80
    rra                                           ; $69a0: $1f
    ret nz                                        ; $69a1: $c0

    ld bc, $00a0                                  ; $69a2: $01 $a0 $00
    ret nc                                        ; $69a5: $d0

    nop                                           ; $69a6: $00
    ld l, b                                       ; $69a7: $68
    nop                                           ; $69a8: $00
    inc a                                         ; $69a9: $3c
    nop                                           ; $69aa: $00
    ld e, $00                                     ; $69ab: $1e $00
    inc c                                         ; $69ad: $0c
    rrca                                          ; $69ae: $0f
    rrca                                          ; $69af: $0f
    nop                                           ; $69b0: $00
    ld e, $00                                     ; $69b1: $1e $00
    ld [hl], $00                                  ; $69b3: $36 $00
    ld l, h                                       ; $69b5: $6c
    nop                                           ; $69b6: $00
    inc a                                         ; $69b7: $3c
    nop                                           ; $69b8: $00
    ld [hl], b                                    ; $69b9: $70
    nop                                           ; $69ba: $00

jr_002_69bb:
    ldh [rIF], a                                  ; $69bb: $e0 $0f
    ld b, b                                       ; $69bd: $40
    dec a                                         ; $69be: $3d
    add b                                         ; $69bf: $80
    ld a, [$f5c0]                                 ; $69c0: $fa $c0 $f5
    ld hl, sp-$35                                 ; $69c3: $f8 $cb
    ld hl, sp-$19                                 ; $69c5: $f8 $e7
    ldh [$fff7], a                                ; $69c7: $e0 $f7
    nop                                           ; $69c9: $00
    ld a, [hl]                                    ; $69ca: $7e
    nop                                           ; $69cb: $00
    ld a, $00                                     ; $69cc: $3e $00
    rrca                                          ; $69ce: $0f
    rrca                                          ; $69cf: $0f
    inc c                                         ; $69d0: $0c
    add b                                         ; $69d1: $80

jr_002_69d2:
    ld [de], a                                    ; $69d2: $12
    ld c, [hl]                                    ; $69d3: $4e
    ld a, [hl+]                                   ; $69d4: $2a
    ld e, b                                       ; $69d5: $58
    ld e, d                                       ; $69d6: $5a
    and b                                         ; $69d7: $a0
    or a                                          ; $69d8: $b7
    ld b, b                                       ; $69d9: $40
    sbc [hl]                                      ; $69da: $9e
    call c, $f67e                                 ; $69db: $dc $7e $f6
    add hl, bc                                    ; $69de: $09
    ldh a, [c]                                    ; $69df: $f2
    sbc a                                         ; $69e0: $9f
    sbc d                                         ; $69e1: $9a
    ld h, a                                       ; $69e2: $67
    ld a, [hl-]                                   ; $69e3: $3a
    rra                                           ; $69e4: $1f
    ld a, b                                       ; $69e5: $78
    dec hl                                        ; $69e6: $2b
    ldh a, [rBCPS]                                ; $69e7: $f0 $68
    ldh [rLY], a                                  ; $69e9: $e0 $44
    nop                                           ; $69eb: $00
    ld b, e                                       ; $69ec: $43
    ret nz                                        ; $69ed: $c0

    rrca                                          ; $69ee: $0f
    rrca                                          ; $69ef: $0f
    rlca                                          ; $69f0: $07
    nop                                           ; $69f1: $00
    add hl, bc                                    ; $69f2: $09
    add b                                         ; $69f3: $80
    ld hl, sp-$80                                 ; $69f4: $f8 $80
    adc d                                         ; $69f6: $8a
    add b                                         ; $69f7: $80
    ld hl, sp-$80                                 ; $69f8: $f8 $80
    adc b                                         ; $69fa: $88
    add b                                         ; $69fb: $80
    adc c                                         ; $69fc: $89
    cp $89                                        ; $69fd: $fe $89
    ld [bc], a                                    ; $69ff: $02
    ret                                           ; $6a00: $c9


    ld c, $78                                     ; $6a01: $0e $78
    add d                                         ; $6a03: $82
    inc b                                         ; $6a04: $04
    ld a, [hl]                                    ; $6a05: $7e
    ld b, $06                                     ; $6a06: $06 $06
    inc bc                                        ; $6a08: $03
    db $fc                                        ; $6a09: $fc
    nop                                           ; $6a0a: $00
    jr nz, @+$03                                  ; $6a0b: $20 $01

    ldh [rIF], a                                  ; $6a0d: $e0 $0f
    rrca                                          ; $6a0f: $0f
    jr @+$3e                                      ; $6a10: $18 $3c

    ld h, h                                       ; $6a12: $64
    ld h, h                                       ; $6a13: $64
    ld h, h                                       ; $6a14: $64
    ret z                                         ; $6a15: $c8

    ld sp, hl                                     ; $6a16: $f9
    sub [hl]                                      ; $6a17: $96
    sbc a                                         ; $6a18: $9f
    ld a, [hl+]                                   ; $6a19: $2a
    sbc a                                         ; $6a1a: $9f
    jp nc, $a66f                                  ; $6a1b: $d2 $6f $a6

    dec de                                        ; $6a1e: $1b
    call z, $f835                                 ; $6a1f: $cc $35 $f8
    ld h, l                                       ; $6a22: $65
    ldh [$ffca], a                                ; $6a23: $e0 $ca
    or b                                          ; $6a25: $b0
    sub h                                         ; $6a26: $94
    cp b                                          ; $6a27: $b8
    xor c                                         ; $6a28: $a9
    sbc h                                         ; $6a29: $9c
    db $d3                                        ; $6a2a: $d3
    ld c, $1e                                     ; $6a2b: $0e $1e
    ld b, $0f                                     ; $6a2d: $06 $0f
    rrca                                          ; $6a2f: $0f
    jr c, jr_002_6aa2                             ; $6a30: $38 $70

    cpl                                           ; $6a32: $2f
    ret nc                                        ; $6a33: $d0

    jr z, jr_002_6a86                             ; $6a34: $28 $50

    ld sp, $7970                                  ; $6a36: $31 $70 $79
    jr nc, jr_002_69bb                            ; $6a39: $30 $80

    inc l                                         ; $6a3b: $2c
    xor d                                         ; $6a3c: $aa
    ld b, $83                                     ; $6a3d: $06 $83
    adc d                                         ; $6a3f: $8a
    cp $8a                                        ; $6a40: $fe $8a
    sbc b                                         ; $6a42: $98
    adc d                                         ; $6a43: $8a
    rst RST_30                                    ; $6a44: $f7
    ld c, $10                                     ; $6a45: $0e $10
    ld [$6817], sp                                ; $6a47: $08 $17 $68
    dec d                                         ; $6a4a: $15
    ld l, b                                       ; $6a4b: $68
    dec e                                         ; $6a4c: $1d
    ld hl, sp+$0f                                 ; $6a4d: $f8 $0f
    rrca                                          ; $6a4f: $0f
    jr nc, jr_002_69d2                            ; $6a50: $30 $80

    ld h, b                                       ; $6a52: $60
    ld b, b                                       ; $6a53: $40
    ldh a, [rLCDC]                                ; $6a54: $f0 $40
    cp e                                          ; $6a56: $bb
    ld e, b                                       ; $6a57: $58
    rla                                           ; $6a58: $17
    sub b                                         ; $6a59: $90
    rrca                                          ; $6a5a: $0f
    ld h, b                                       ; $6a5b: $60
    ld e, $f6                                     ; $6a5c: $1e $f6
    inc e                                         ; $6a5e: $1c
    ld a, [$7a8b]                                 ; $6a5f: $fa $8b $7a
    ld [hl], a                                    ; $6a62: $77
    cp h                                          ; $6a63: $bc
    rlca                                          ; $6a64: $07
    call c, $ec3b                                 ; $6a65: $dc $3b $ec
    ld bc, $04f8                                  ; $6a68: $01 $f8 $04
    ld [hl], b                                    ; $6a6b: $70
    ld b, $00                                     ; $6a6c: $06 $00
    rrca                                          ; $6a6e: $0f
    rrca                                          ; $6a6f: $0f
    rrca                                          ; $6a70: $0f
    ret nz                                        ; $6a71: $c0

    db $10                                        ; $6a72: $10
    ld h, b                                       ; $6a73: $60
    add hl, hl                                    ; $6a74: $29
    jr nc, jr_002_6ad7                            ; $6a75: $30 $60

    db $10                                        ; $6a77: $10
    ld c, c                                       ; $6a78: $49
    jr jr_002_6ac4                                ; $6a79: $18 $49

    ld [$0c4f], sp                                ; $6a7b: $08 $4f $0c
    ld d, h                                       ; $6a7e: $54
    add h                                         ; $6a7f: $84

Jump_002_6a80:
    ld e, e                                       ; $6a80: $5b
    add h                                         ; $6a81: $84
    ld b, b                                       ; $6a82: $40
    ld b, $20                                     ; $6a83: $06 $20
    ld [hl+], a                                   ; $6a85: $22

jr_002_6a86:
    jr nz, jr_002_6aaa                            ; $6a86: $20 $22

    ld l, b                                       ; $6a88: $68
    or d                                          ; $6a89: $b2
    adc b                                         ; $6a8a: $88
    adc d                                         ; $6a8b: $8a
    rst RST_38                                    ; $6a8c: $ff
    cp $0f                                        ; $6a8d: $fe $0f
    rrca                                          ; $6a8f: $0f
    inc bc                                        ; $6a90: $03
    add b                                         ; $6a91: $80
    rrca                                          ; $6a92: $0f
    ldh [$ff0c], a                                ; $6a93: $e0 $0c
    ld h, b                                       ; $6a95: $60
    ld a, [bc]                                    ; $6a96: $0a
    and b                                         ; $6a97: $a0
    ld hl, sp+$3e                                 ; $6a98: $f8 $3e
    call z, $4766                                 ; $6a9a: $cc $66 $47
    call nz, Call_000_0c63                        ; $6a9d: $c4 $63 $0c
    ld [hl], $38                                  ; $6aa0: $36 $38

jr_002_6aa2:
    rra                                           ; $6aa2: $1f
    ldh [$ff08], a                                ; $6aa3: $e0 $08
    jr nz, jr_002_6ab6                            ; $6aa5: $20 $0f

    ldh [rDIV], a                                 ; $6aa7: $e0 $04
    ld b, b                                       ; $6aa9: $40

jr_002_6aaa:
    ld b, $60                                     ; $6aaa: $06 $60

Jump_002_6aac:
    inc bc                                        ; $6aac: $03
    jr nc, jr_002_6abe                            ; $6aad: $30 $0f

    rrca                                          ; $6aaf: $0f
    nop                                           ; $6ab0: $00
    ld c, $03                                     ; $6ab1: $0e $03
    adc d                                         ; $6ab3: $8a
    ld c, $ca                                     ; $6ab4: $0e $ca

jr_002_6ab6:
    jr @+$78                                      ; $6ab6: $18 $76

    inc e                                         ; $6ab8: $1c
    ld [hl+], a                                   ; $6ab9: $22
    ld [hl], a                                    ; $6aba: $77
    ld d, $55                                     ; $6abb: $16 $55
    adc h                                         ; $6abd: $8c

jr_002_6abe:
    ld e, c                                       ; $6abe: $59
    ld e, h                                       ; $6abf: $5c
    ld b, c                                       ; $6ac0: $41
    inc d                                         ; $6ac1: $14
    ld c, e                                       ; $6ac2: $4b
    inc [hl]                                      ; $6ac3: $34

jr_002_6ac4:
    ld b, d                                       ; $6ac4: $42
    cp h                                          ; $6ac5: $bc
    ld b, d                                       ; $6ac6: $42
    ld h, b                                       ; $6ac7: $60
    adc a                                         ; $6ac8: $8f
    and b                                         ; $6ac9: $a0
    sbc c                                         ; $6aca: $99
    jr nz, jr_002_6abe                            ; $6acb: $20 $f1

    ldh [rIF], a                                  ; $6acd: $e0 $0f
    rrca                                          ; $6acf: $0f
    inc a                                         ; $6ad0: $3c
    nop                                           ; $6ad1: $00
    ld [hl], b                                    ; $6ad2: $70
    nop                                           ; $6ad3: $00
    cp $00                                        ; $6ad4: $fe $00
    ld b, h                                       ; $6ad6: $44

jr_002_6ad7:
    nop                                           ; $6ad7: $00
    ld h, e                                       ; $6ad8: $63
    add b                                         ; $6ad9: $80
    jr nc, @+$42                                  ; $6ada: $30 $40

jr_002_6adc:
    inc a                                         ; $6adc: $3c
    ret nz                                        ; $6add: $c0

    cpl                                           ; $6ade: $2f
    add b                                         ; $6adf: $80
    daa                                           ; $6ae0: $27
    ldh a, [c]                                    ; $6ae1: $f2
    daa                                           ; $6ae2: $27
    and $ff                                       ; $6ae3: $e6 $ff
    cp $0f                                        ; $6ae5: $fe $0f
    and $1f                                       ; $6ae7: $e6 $1f
    add b                                         ; $6ae9: $80
    or b                                          ; $6aea: $b0
    nop                                           ; $6aeb: $00
    ld h, b                                       ; $6aec: $60
    nop                                           ; $6aed: $00
    rrca                                          ; $6aee: $0f
    rrca                                          ; $6aef: $0f
    db $fc                                        ; $6af0: $fc
    ld c, $8f                                     ; $6af1: $0e $8f
    ld a, $83                                     ; $6af3: $3e $83
    sbc [hl]                                      ; $6af5: $9e
    pop bc                                        ; $6af6: $c1
    cp h                                          ; $6af7: $bc
    ld h, b                                       ; $6af8: $60
    ld [hl], h                                    ; $6af9: $74
    jr nc, jr_002_6adc                            ; $6afa: $30 $e0

    add hl, de                                    ; $6afc: $19
    ret c                                         ; $6afd: $d8

    dec bc                                        ; $6afe: $0b
    sbc h                                         ; $6aff: $9c
    rlca                                          ; $6b00: $07
    inc c                                         ; $6b01: $0c
    ld a, $06                                     ; $6b02: $3e $06
    ld a, l                                       ; $6b04: $7d
    add [hl]                                      ; $6b05: $86
    db $f4                                        ; $6b06: $f4
    jp nz, Jump_002_62e4                          ; $6b07: $c2 $e4 $62

    add sp, $32                                   ; $6b0a: $e8 $32
    ld [hl], b                                    ; $6b0c: $70
    ld e, $0f                                     ; $6b0d: $1e $0f
    rrca                                          ; $6b0f: $0f
    rrca                                          ; $6b10: $0f
    ret nz                                        ; $6b11: $c0

    rlca                                          ; $6b12: $07
    ld [hl], b                                    ; $6b13: $70
    ld bc, $0118                                  ; $6b14: $01 $18 $01
    adc h                                         ; $6b17: $8c
    nop                                           ; $6b18: $00
    add h                                         ; $6b19: $84
    nop                                           ; $6b1a: $00
    cp $07                                        ; $6b1b: $fe $07
    ld [$6a06], a                                 ; $6b1d: $ea $06 $6a
    inc bc                                        ; $6b20: $03
    ld a, [hl-]                                   ; $6b21: $3a
    pop bc                                        ; $6b22: $c1
    add d                                         ; $6b23: $82
    rst RST_20                                    ; $6b24: $e7
    ld [hl+], a                                   ; $6b25: $22
    cp l                                          ; $6b26: $bd
    and $c0                                       ; $6b27: $e6 $c0
    inc c                                         ; $6b29: $0c
    ld [hl], b                                    ; $6b2a: $70
    jr c, jr_002_6b4c                             ; $6b2b: $38 $1f

    ldh [rIF], a                                  ; $6b2d: $e0 $0f
    rrca                                          ; $6b2f: $0f
    inc a                                         ; $6b30: $3c
    ld a, b                                       ; $6b31: $78
    ld b, h                                       ; $6b32: $44
    ld b, h                                       ; $6b33: $44
    adc b                                         ; $6b34: $88
    ld [hl+], a                                   ; $6b35: $22
    sub a                                         ; $6b36: $97
    jp nc, Jump_002_6aac                          ; $6b37: $d2 $ac $6a

    pop de                                        ; $6b3a: $d1
    ld d, $31                                     ; $6b3b: $16 $31
    jr jr_002_6b60                                ; $6b3d: $18 $21

jr_002_6b3f:
    ld [$0821], sp                                ; $6b3f: $08 $21 $08
    jr nz, @-$16                                  ; $6b42: $20 $e8

    jr nz, @+$0a                                  ; $6b44: $20 $08

    jr nc, jr_002_6b60                            ; $6b46: $30 $18

    db $10                                        ; $6b48: $10
    db $10                                        ; $6b49: $10
    ld l, h                                       ; $6b4a: $6c
    ld l, h                                       ; $6b4b: $6c

jr_002_6b4c:
    ld h, a                                       ; $6b4c: $67
    call z, Call_000_0f0f                         ; $6b4d: $cc $0f $0f
    nop                                           ; $6b50: $00
    ret nz                                        ; $6b51: $c0

    ld bc, $0f80                                  ; $6b52: $01 $80 $0f
    ldh [$ff35], a                                ; $6b55: $e0 $35
    ld e, b                                       ; $6b57: $58
    ld l, l                                       ; $6b58: $6d
    ld l, h                                       ; $6b59: $6c
    ld e, e                                       ; $6b5a: $5b
    inc [hl]                                      ; $6b5b: $34
    jp nc, $9a16                                  ; $6b5c: $d2 $16 $9a

    ld [hl-], a                                   ; $6b5f: $32

jr_002_6b60:
    adc d                                         ; $6b60: $8a
    ld [hl+], a                                   ; $6b61: $22
    sbc e                                         ; $6b62: $9b
    ld [hl-], a                                   ; $6b63: $32
    pop de                                        ; $6b64: $d1
    ld d, $59                                     ; $6b65: $16 $59
    inc [hl]                                      ; $6b67: $34
    ld l, l                                       ; $6b68: $6d
    ld l, h                                       ; $6b69: $6c

jr_002_6b6a:
    dec [hl]                                      ; $6b6a: $35
    ld e, b                                       ; $6b6b: $58

jr_002_6b6c:
    rrca                                          ; $6b6c: $0f
    ldh [rIF], a                                  ; $6b6d: $e0 $0f
    rrca                                          ; $6b6f: $0f
    nop                                           ; $6b70: $00
    inc a                                         ; $6b71: $3c
    nop                                           ; $6b72: $00
    ld b, b                                       ; $6b73: $40
    nop                                           ; $6b74: $00
    ld b, b                                       ; $6b75: $40
    rlca                                          ; $6b76: $07
    ld e, [hl]                                    ; $6b77: $5e
    ld [$10f0], sp                                ; $6b78: $08 $f0 $10
    ld h, b                                       ; $6b7b: $60
    ld [hl], b                                    ; $6b7c: $70
    ld [hl], b                                    ; $6b7d: $70
    rst RST_18                                    ; $6b7e: $df
    ret c                                         ; $6b7f: $d8

    sbc a                                         ; $6b80: $9f
    ret z                                         ; $6b81: $c8

    add b                                         ; $6b82: $80
    ld [$18c0], sp                                ; $6b83: $08 $c0 $18
    ld a, a                                       ; $6b86: $7f
    ldh a, [rP1]                                  ; $6b87: $f0 $00
    nop                                           ; $6b89: $00
    nop                                           ; $6b8a: $00
    nop                                           ; $6b8b: $00
    nop                                           ; $6b8c: $00
    nop                                           ; $6b8d: $00
    rrca                                          ; $6b8e: $0f
    rrca                                          ; $6b8f: $0f
    ldh [rP1], a                                  ; $6b90: $e0 $00
    rst RST_38                                    ; $6b92: $ff
    nop                                           ; $6b93: $00
    ld hl, sp-$80                                 ; $6b94: $f8 $80
    ld a, l                                       ; $6b96: $7d
    add b                                         ; $6b97: $80
    ld a, a                                       ; $6b98: $7f
    nop                                           ; $6b99: $00
    ld e, a                                       ; $6b9a: $5f
    nop                                           ; $6b9b: $00
    ld c, a                                       ; $6b9c: $4f
    ld hl, sp+$5f                                 ; $6b9d: $f8 $5f
    call nz, $e233                                ; $6b9f: $c4 $33 $e2
    inc bc                                        ; $6ba2: $03
    or $02                                        ; $6ba3: $f6 $02
    ld hl, sp+$02                                 ; $6ba5: $f8 $02
    halt                                          ; $6ba7: $76
    ld [bc], a                                    ; $6ba8: $02
    ld l, $01                                     ; $6ba9: $2e $01
    ld e, h                                       ; $6bab: $5c
    nop                                           ; $6bac: $00
    ret c                                         ; $6bad: $d8

    rrca                                          ; $6bae: $0f
    rrca                                          ; $6baf: $0f
    rrca                                          ; $6bb0: $0f
    ldh [rNR23], a                                ; $6bb1: $e0 $18
    jr nz, jr_002_6c25                            ; $6bb3: $20 $70

    ldh [$ffc7], a                                ; $6bb5: $e0 $c7
    add b                                         ; $6bb7: $80
    add b                                         ; $6bb8: $80
    ret nz                                        ; $6bb9: $c0

    sub b                                         ; $6bba: $90
    ld [hl], b                                    ; $6bbb: $70
    sub b                                         ; $6bbc: $90
    jr jr_002_6b3f                                ; $6bbd: $18 $80

    inc c                                         ; $6bbf: $0c
    call nz, Call_002_79e4                        ; $6bc0: $c4 $e4 $79
    add [hl]                                      ; $6bc3: $86
    ld de, $1306                                  ; $6bc4: $11 $06 $13
    ld a, [bc]                                    ; $6bc7: $0a
    dec bc                                        ; $6bc8: $0b
    adc d                                         ; $6bc9: $8a
    ld a, [bc]                                    ; $6bca: $0a
    ld a, [bc]                                    ; $6bcb: $0a
    rrca                                          ; $6bcc: $0f
    cp $0f                                        ; $6bcd: $fe $0f
    rrca                                          ; $6bcf: $0f
    rrca                                          ; $6bd0: $0f
    nop                                           ; $6bd1: $00
    ld de, $2a80                                  ; $6bd2: $11 $80 $2a
    ret nz                                        ; $6bd5: $c0

    ld a, [hl+]                                   ; $6bd6: $2a
    ret nz                                        ; $6bd7: $c0

    ld a, [hl+]                                   ; $6bd8: $2a

jr_002_6bd9:
    ldh [$ff7f], a                                ; $6bd9: $e0 $7f
    ldh [$ff87], a                                ; $6bdb: $e0 $87
    ret nc                                        ; $6bdd: $d0

    ld a, c                                       ; $6bde: $79
    sub b                                         ; $6bdf: $90
    jr nz, jr_002_6b6a                            ; $6be0: $20 $88

    jr nz, jr_002_6b6c                            ; $6be2: $20 $88

    jr nc, @+$4a                                  ; $6be4: $30 $48

    jr jr_002_6c50                                ; $6be6: $18 $68

    rrca                                          ; $6be8: $0f
    db $fc                                        ; $6be9: $fc
    ld [bc], a                                    ; $6bea: $02
    adc [hl]                                      ; $6beb: $8e
    ld c, $e6                                     ; $6bec: $0e $e6
    rrca                                          ; $6bee: $0f
    rrca                                          ; $6bef: $0f
    nop                                           ; $6bf0: $00
    cp $00                                        ; $6bf1: $fe $00
    add d                                         ; $6bf3: $82
    nop                                           ; $6bf4: $00
    xor $00                                       ; $6bf5: $ee $00
    jr z, jr_002_6bd9                             ; $6bf7: $28 $e0

    db $fc                                        ; $6bf9: $fc
    sbc a                                         ; $6bfa: $9f
    ld d, [hl]                                    ; $6bfb: $56
    add b                                         ; $6bfc: $80
    ld d, d                                       ; $6bfd: $52
    ld b, e                                       ; $6bfe: $43
    sub d                                         ; $6bff: $92
    db $fc                                        ; $6c00: $fc
    ld [hl-], a                                   ; $6c01: $32
    add b                                         ; $6c02: $80
    ld [hl+], a                                   ; $6c03: $22
    ret nz                                        ; $6c04: $c0

    jp nz, $027f                                  ; $6c05: $c2 $7f $02

    jr nz, @+$06                                  ; $6c08: $20 $04

    jr nc, jr_002_6c18                            ; $6c0a: $30 $0c

    rra                                           ; $6c0c: $1f
    ld hl, sp+$0f                                 ; $6c0d: $f8 $0f
    rrca                                          ; $6c0f: $0f
    jr nz, jr_002_6c12                            ; $6c10: $20 $00

jr_002_6c12:
    ldh [rP1], a                                  ; $6c12: $e0 $00
    ld a, $70                                     ; $6c14: $3e $70
    dec hl                                        ; $6c16: $2b
    ret nc                                        ; $6c17: $d0

jr_002_6c18:
    dec [hl]                                      ; $6c18: $35
    or b                                          ; $6c19: $b0
    ld a, [hl+]                                   ; $6c1a: $2a
    and b                                         ; $6c1b: $a0
    push af                                       ; $6c1c: $f5
    ld h, b                                       ; $6c1d: $60
    jp c, $6fe0                                   ; $6c1e: $da $e0 $6f

    ldh a, [$ff30]                                ; $6c21: $f0 $30
    ld a, b                                       ; $6c23: $78
    ld h, b                                       ; $6c24: $60

jr_002_6c25:
    inc e                                         ; $6c25: $1c
    ld e, a                                       ; $6c26: $5f
    adc h                                         ; $6c27: $8c
    ld [hl], b                                    ; $6c28: $70
    call nz, Call_002_7e00                        ; $6c29: $c4 $00 $7e
    nop                                           ; $6c2c: $00
    ld b, $0f                                     ; $6c2d: $06 $0f
    rrca                                          ; $6c2f: $0f
    inc e                                         ; $6c30: $1c
    nop                                           ; $6c31: $00
    and $00                                       ; $6c32: $e6 $00
    xor d                                         ; $6c34: $aa
    nop                                           ; $6c35: $00
    ld [$321e], a                                 ; $6c36: $ea $1e $32
    cp $11                                        ; $6c39: $fe $11
    and $08                                       ; $6c3b: $e6 $08
    adc $0d                                       ; $6c3d: $ce $0d
    db $fc                                        ; $6c3f: $fc
    rlca                                          ; $6c40: $07
    sbc h                                         ; $6c41: $9c
    rlca                                          ; $6c42: $07
    ld hl, sp+$03                                 ; $6c43: $f8 $03
    ld hl, sp+$00                                 ; $6c45: $f8 $00
    xor h                                         ; $6c47: $ac
    inc bc                                        ; $6c48: $03
    inc [hl]                                      ; $6c49: $34
    ld [bc], a                                    ; $6c4a: $02
    ld d, h                                       ; $6c4b: $54
    inc bc                                        ; $6c4c: $03
    call c, Call_000_0f0f                         ; $6c4d: $dc $0f $0f

jr_002_6c50:
    ccf                                           ; $6c50: $3f
    ld a, [bc]                                    ; $6c51: $0a
    ld h, c                                       ; $6c52: $61
    sub h                                         ; $6c53: $94
    ret nz                                        ; $6c54: $c0

    call nc, Call_002_6880                        ; $6c55: $d4 $80 $68
    sub h                                         ; $6c58: $94
    ld c, b                                       ; $6c59: $48
    sub h                                         ; $6c5a: $94
    ld a, h                                       ; $6c5b: $7c
    sub h                                         ; $6c5c: $94
    ld b, h                                       ; $6c5d: $44
    ret nz                                        ; $6c5e: $c0

    sbc $61                                       ; $6c5f: $de $61
    jp nz, Jump_002_623f                          ; $6c61: $c2 $3f $62

    ld a, [bc]                                    ; $6c64: $0a
    ld a, [hl-]                                   ; $6c65: $3a
    ld a, [bc]                                    ; $6c66: $0a
    ld c, $05                                     ; $6c67: $0e $05
    ld b, $07                                     ; $6c69: $06 $07
    adc h                                         ; $6c6b: $8c

Call_002_6c6c:
    nop                                           ; $6c6c: $00
    ld hl, sp+$0f                                 ; $6c6d: $f8 $0f
    rrca                                          ; $6c6f: $0f
    ldh [$ffc0], a                                ; $6c70: $e0 $c0
    ld a, c                                       ; $6c72: $79
    sbc h                                         ; $6c73: $9c
    dec e                                         ; $6c74: $1d
    or b                                          ; $6c75: $b0
    dec c                                         ; $6c76: $0d
    ld h, b                                       ; $6c77: $60
    rlca                                          ; $6c78: $07
    call c, $a63f                                 ; $6c79: $dc $3f $a6
    ld a, e                                       ; $6c7c: $7b
    jp nz, $e2c6                                  ; $6c7d: $c2 $c6 $e2

    adc e                                         ; $6c80: $8b
    ldh a, [$ff0d]                                ; $6c81: $f0 $0d
    ld [hl], b                                    ; $6c83: $70
    dec bc                                        ; $6c84: $0b
    ldh a, [$ff0d]                                ; $6c85: $f0 $0d
    ldh a, [$ff0b]                                ; $6c87: $f0 $0b
    ldh a, [rIF]                                  ; $6c89: $f0 $0f
    ldh a, [rTAC]                                 ; $6c8b: $f0 $07
    ldh [rIF], a                                  ; $6c8d: $e0 $0f
    rrca                                          ; $6c8f: $0f
    ld hl, sp+$00                                 ; $6c90: $f8 $00
    cp $00                                        ; $6c92: $fe $00
    rst RST_38                                    ; $6c94: $ff
    add b                                         ; $6c95: $80
    db $fc                                        ; $6c96: $fc
    ret nz                                        ; $6c97: $c0

    db $fc                                        ; $6c98: $fc
    ldh [$ff7e], a                                ; $6c99: $e0 $7e
    ldh a, [$ff67]                                ; $6c9b: $f0 $67
    ret nc                                        ; $6c9d: $d0

    inc hl                                        ; $6c9e: $23
    ret c                                         ; $6c9f: $d8

    ccf                                           ; $6ca0: $3f
    ret z                                         ; $6ca1: $c8

    rra                                           ; $6ca2: $1f
    add sp, $0c                                   ; $6ca3: $e8 $0c
    ld a, b                                       ; $6ca5: $78
    rlca                                          ; $6ca6: $07
    jr c, jr_002_6caa                             ; $6ca7: $38 $01

    db $fc                                        ; $6ca9: $fc

jr_002_6caa:
    nop                                           ; $6caa: $00
    ld c, $00                                     ; $6cab: $0e $00
    ld b, $0f                                     ; $6cad: $06 $0f
    rrca                                          ; $6caf: $0f
    ld [hl], b                                    ; $6cb0: $70
    ld [hl], d                                    ; $6cb1: $72
    adc b                                         ; $6cb2: $88
    adc d                                         ; $6cb3: $8a
    adc b                                         ; $6cb4: $88
    adc d                                         ; $6cb5: $8a
    adc b                                         ; $6cb6: $88
    adc d                                         ; $6cb7: $8a
    call Call_002_679a                            ; $6cb8: $cd $9a $67
    ld [hl-], a                                   ; $6cbb: $32
    jr nz, jr_002_6ce0                            ; $6cbc: $20 $22

    ld a, [hl+]                                   ; $6cbe: $2a
    ld [hl+], a                                   ; $6cbf: $22
    ld l, d                                       ; $6cc0: $6a
    ld h, d                                       ; $6cc1: $62
    ld b, b                                       ; $6cc2: $40
    add d                                         ; $6cc3: $82
    jp $fef2                                      ; $6cc4: $c3 $f2 $fe


    ld a, [bc]                                    ; $6cc7: $0a
    add sp, $0e                                   ; $6cc8: $e8 $0e
    inc c                                         ; $6cca: $0c
    jr jr_002_6cd0                                ; $6ccb: $18 $03

    ldh [rIF], a                                  ; $6ccd: $e0 $0f
    rrca                                          ; $6ccf: $0f

jr_002_6cd0:
    inc bc                                        ; $6cd0: $03
    add b                                         ; $6cd1: $80
    inc e                                         ; $6cd2: $1c
    ld [hl], b                                    ; $6cd3: $70
    jr nc, @+$1a                                  ; $6cd4: $30 $18

    ret nz                                        ; $6cd6: $c0

    ld b, $80                                     ; $6cd7: $06 $80
    ld [bc], a                                    ; $6cd9: $02
    rst RST_38                                    ; $6cda: $ff
    cp $23                                        ; $6cdb: $fe $23
    adc b                                         ; $6cdd: $88
    dec hl                                        ; $6cde: $2b
    xor b                                         ; $6cdf: $a8

jr_002_6ce0:
    inc hl                                        ; $6ce0: $23
    adc b                                         ; $6ce1: $88
    ccf                                           ; $6ce2: $3f
    ld hl, sp+$4d                                 ; $6ce3: $f8 $4d
    inc h                                         ; $6ce5: $24
    adc c                                         ; $6ce6: $89
    ld [hl-], a                                   ; $6ce7: $32
    sbc c                                         ; $6ce8: $99
    ld [hl-], a                                   ; $6ce9: $32
    ld e, l                                       ; $6cea: $5d
    ld [hl], h                                    ; $6ceb: $74
    halt                                          ; $6cec: $76
    call c, Call_000_0f0f                         ; $6ced: $dc $0f $0f
    ld bc, $03e0                                  ; $6cf0: $01 $e0 $03
    jr nc, jr_002_6d14                            ; $6cf3: $30 $1f

    adc h                                         ; $6cf5: $8c
    ld h, b                                       ; $6cf6: $60
    ld h, h                                       ; $6cf7: $64
    ret z                                         ; $6cf8: $c8

    inc e                                         ; $6cf9: $1c
    adc c                                         ; $6cfa: $89
    add [hl]                                      ; $6cfb: $86
    ldh a, [$ffb2]                                ; $6cfc: $f0 $b2
    ld b, e                                       ; $6cfe: $43
    sub d                                         ; $6cff: $92
    jr c, jr_002_6d14                             ; $6d00: $38 $12

    rlca                                          ; $6d02: $07
    and d                                         ; $6d03: $a2
    nop                                           ; $6d04: $00
    ldh [c], a                                    ; $6d05: $e2
    rrca                                          ; $6d06: $0f
    ld b, [hl]                                    ; $6d07: $46
    rlca                                          ; $6d08: $07
    call z, $f001                                 ; $6d09: $cc $01 $f0
    inc bc                                        ; $6d0c: $03
    ldh [rIF], a                                  ; $6d0d: $e0 $0f
    rrca                                          ; $6d0f: $0f
    ld a, a                                       ; $6d10: $7f
    inc a                                         ; $6d11: $3c
    pop bc                                        ; $6d12: $c1
    and [hl]                                      ; $6d13: $a6

jr_002_6d14:
    add b                                         ; $6d14: $80
    or d                                          ; $6d15: $b2
    cp [hl]                                       ; $6d16: $be
    add d                                         ; $6d17: $82
    xor d                                         ; $6d18: $aa
    ldh [c], a                                    ; $6d19: $e2
    cp [hl]                                       ; $6d1a: $be
    sub d                                         ; $6d1b: $92
    sbc h                                         ; $6d1c: $9c
    adc [hl]                                      ; $6d1d: $8e
    ld d, l                                       ; $6d1e: $55
    ld b, $3e                                     ; $6d1f: $06 $3e
    ld [hl], d                                    ; $6d21: $72
    jr nz, jr_002_6d6e                            ; $6d22: $20 $4a

    ld [hl+], a                                   ; $6d24: $22
    ld b, d                                       ; $6d25: $42
    ld a, [hl+]                                   ; $6d26: $2a
    ld c, d                                       ; $6d27: $4a
    ld l, $e6                                     ; $6d28: $2e $e6
    ld a, [hl+]                                   ; $6d2a: $2a
    add h                                         ; $6d2b: $84
    ccf                                           ; $6d2c: $3f
    db $fc                                        ; $6d2d: $fc
    rrca                                          ; $6d2e: $0f
    rrca                                          ; $6d2f: $0f
    ret nz                                        ; $6d30: $c0

    ld b, $f0                                     ; $6d31: $06 $f0
    ld e, $5c                                     ; $6d33: $1e $5c
    ld [hl], h                                    ; $6d35: $74
    ld l, [hl]                                    ; $6d36: $6e
    call z, Call_002_782d                         ; $6d37: $cc $2d $78
    ccf                                           ; $6d3a: $3f
    ld hl, sp+$17                                 ; $6d3b: $f8 $17
    ret nc                                        ; $6d3d: $d0

    ld c, $e0                                     ; $6d3e: $0e $e0
    rla                                           ; $6d40: $17
    ret nc                                        ; $6d41: $d0

    ccf                                           ; $6d42: $3f
    ld hl, sp+$2d                                 ; $6d43: $f8 $2d
    ld a, b                                       ; $6d45: $78
    ld l, [hl]                                    ; $6d46: $6e
    call z, Call_002_745c                         ; $6d47: $cc $5c $74
    ldh a, [rNR34]                                ; $6d4a: $f0 $1e
    ret nz                                        ; $6d4c: $c0

    ld b, $0f                                     ; $6d4d: $06 $0f
    rrca                                          ; $6d4f: $0f
    inc bc                                        ; $6d50: $03
    ret nz                                        ; $6d51: $c0

    rrca                                          ; $6d52: $0f
    ldh a, [rNR24]                                ; $6d53: $f0 $19
    ld hl, sp+$39                                 ; $6d55: $f8 $39
    db $fc                                        ; $6d57: $fc
    ccf                                           ; $6d58: $3f
    db $fc                                        ; $6d59: $fc
    ld a, a                                       ; $6d5a: $7f
    db $fc                                        ; $6d5b: $fc
    ld a, a                                       ; $6d5c: $7f
    cp $7f                                        ; $6d5d: $fe $7f
    cp $83                                        ; $6d5f: $fe $83
    cp $78                                        ; $6d61: $fe $78
    ld a, $af                                     ; $6d63: $3e $af
    add d                                         ; $6d65: $82
    add b                                         ; $6d66: $80
    db $fc                                        ; $6d67: $fc
    ld [hl], b                                    ; $6d68: $70
    inc b                                         ; $6d69: $04
    inc de                                        ; $6d6a: $13
    ret z                                         ; $6d6b: $c8

    ld e, $78                                     ; $6d6c: $1e $78

jr_002_6d6e:
    rrca                                          ; $6d6e: $0f
    rrca                                          ; $6d6f: $0f
    ld [hl], b                                    ; $6d70: $70
    inc a                                         ; $6d71: $3c
    ld [$3e62], sp                                ; $6d72: $08 $62 $3e
    ld b, d                                       ; $6d75: $42
    jp nc, $9382                                  ; $6d76: $d2 $82 $93

    add d                                         ; $6d79: $82
    add e                                         ; $6d7a: $83
    ld [bc], a                                    ; $6d7b: $02
    rst RST_38                                    ; $6d7c: $ff
    ld b, $0f                                     ; $6d7d: $06 $0f
    sbc h                                         ; $6d7f: $9c
    rrca                                          ; $6d80: $0f
    ld hl, sp+$07                                 ; $6d81: $f8 $07
    ld c, b                                       ; $6d83: $48

jr_002_6d84:
    dec e                                         ; $6d84: $1d
    jr c, @+$27                                   ; $6d85: $38 $25

    adc b                                         ; $6d87: $88
    db $e4                                        ; $6d88: $e4
    ret c                                         ; $6d89: $d8

    ld [hl-], a                                   ; $6d8a: $32
    ld [hl], b                                    ; $6d8b: $70
    rra                                           ; $6d8c: $1f
    ldh [rIF], a                                  ; $6d8d: $e0 $0f
    rrca                                          ; $6d8f: $0f
    jr nc, jr_002_6e02                            ; $6d90: $30 $70

    jr z, jr_002_6d84                             ; $6d92: $28 $f0

    scf                                           ; $6d94: $37
    ld d, b                                       ; $6d95: $50
    jr nz, jr_002_6de8                            ; $6d96: $20 $50

    ld c, d                                       ; $6d98: $4a
    ld [$ccea], sp                                ; $6d99: $08 $ea $cc

jr_002_6d9c:
    add b                                         ; $6d9c: $80
    inc b                                         ; $6d9d: $04
    add $cc                                       ; $6d9e: $c6 $cc
    ld h, d                                       ; $6da0: $62
    jr @+$41                                      ; $6da1: $18 $3f

    or $10                                        ; $6da3: $f6 $10
    ld l, d                                       ; $6da5: $6a
    jr nz, @+$3c                                  ; $6da6: $20 $3a

    jr nz, jr_002_6dbc                            ; $6da8: $20 $12

    ld a, e                                       ; $6daa: $7b
    call nc, Call_002_784e                        ; $6dab: $d4 $4e $78
    rrca                                          ; $6dae: $0f
    rrca                                          ; $6daf: $0f
    jr jr_002_6db2                                ; $6db0: $18 $00

jr_002_6db2:
    inc h                                         ; $6db2: $24
    nop                                           ; $6db3: $00
    ld [hl], h                                    ; $6db4: $74
    nop                                           ; $6db5: $00
    and h                                         ; $6db6: $a4
    nop                                           ; $6db7: $00
    sbc l                                         ; $6db8: $9d
    ldh a, [$ff8f]                                ; $6db9: $f0 $8f
    sbc b                                         ; $6dbb: $98

jr_002_6dbc:
    xor e                                         ; $6dbc: $ab
    call z, $ec4b                                 ; $6dbd: $cc $4b $ec
    ld d, e                                       ; $6dc0: $53
    db $fc                                        ; $6dc1: $fc
    scf                                           ; $6dc2: $37
    cp $13                                        ; $6dc3: $fe $13
    ld a, [$0218]                                 ; $6dc5: $fa $18 $02
    rra                                           ; $6dc8: $1f
    db $fc                                        ; $6dc9: $fc
    inc h                                         ; $6dca: $24
    ld [de], a                                    ; $6dcb: $12
    jr c, @+$10                                   ; $6dcc: $38 $0e

    rrca                                          ; $6dce: $0f
    rrca                                          ; $6dcf: $0f
    nop                                           ; $6dd0: $00
    jr c, jr_002_6dd3                             ; $6dd1: $38 $00

jr_002_6dd3:
    inc l                                         ; $6dd3: $2c
    nop                                           ; $6dd4: $00
    ld h, $03                                     ; $6dd5: $26 $03
    ldh a, [c]                                    ; $6dd7: $f2
    ld b, $3e                                     ; $6dd8: $06 $3e
    rrca                                          ; $6dda: $0f
    ldh a, [$ff1f]                                ; $6ddb: $f0 $1f
    ldh a, [rNR10]                                ; $6ddd: $f0 $10
    jr nc, jr_002_6e00                            ; $6ddf: $30 $1f

    ldh a, [$ff1f]                                ; $6de1: $f0 $1f
    ldh [$fff9], a                                ; $6de3: $e0 $f9
    ret nz                                        ; $6de5: $c0

    sbc a                                         ; $6de6: $9f
    nop                                           ; $6de7: $00

jr_002_6de8:
    ret z                                         ; $6de8: $c8

    nop                                           ; $6de9: $00
    ld l, b                                       ; $6dea: $68
    nop                                           ; $6deb: $00
    jr c, jr_002_6dee                             ; $6dec: $38 $00

jr_002_6dee:
    rrca                                          ; $6dee: $0f
    rrca                                          ; $6def: $0f
    ld h, b                                       ; $6df0: $60
    nop                                           ; $6df1: $00
    ld d, b                                       ; $6df2: $50
    nop                                           ; $6df3: $00
    ld l, b                                       ; $6df4: $68
    nop                                           ; $6df5: $00
    inc [hl]                                      ; $6df6: $34
    nop                                           ; $6df7: $00
    ld a, [hl-]                                   ; $6df8: $3a
    inc e                                         ; $6df9: $1c
    dec l                                         ; $6dfa: $2d
    inc [hl]                                      ; $6dfb: $34
    ld h, $b4                                     ; $6dfc: $26 $b4
    ld [hl], e                                    ; $6dfe: $73
    ld d, h                                       ; $6dff: $54

jr_002_6e00:
    ld d, c                                       ; $6e00: $51
    db $f4                                        ; $6e01: $f4

jr_002_6e02:
    ld [hl], b                                    ; $6e02: $70
    add h                                         ; $6e03: $84
    pop bc                                        ; $6e04: $c1
    cp $89                                        ; $6e05: $fe $89
    ld [bc], a                                    ; $6e07: $02
    db $db                                        ; $6e08: $db
    cp $72                                        ; $6e09: $fe $72
    ld d, d                                       ; $6e0b: $52
    inc bc                                        ; $6e0c: $03
    cp $0f                                        ; $6e0d: $fe $0f
    rrca                                          ; $6e0f: $0f
    rlca                                          ; $6e10: $07
    ldh [$ff3e], a                                ; $6e11: $e0 $3e

jr_002_6e13:
    jr nz, jr_002_6e77                            ; $6e13: $20 $62

    and b                                         ; $6e15: $a0
    adc e                                         ; $6e16: $8b
    and b                                         ; $6e17: $a0
    adc d                                         ; $6e18: $8a
    jr nc, jr_002_6d9c                            ; $6e19: $30 $81

    call c, Call_000_0ac3                         ; $6e1b: $dc $c3 $0a
    ld a, [hl]                                    ; $6e1e: $7e
    ld a, [bc]                                    ; $6e1f: $0a
    jr nz, jr_002_6e2e                            ; $6e20: $20 $0c

    jr nz, jr_002_6e2c                            ; $6e22: $20 $08

    ld [hl+], a                                   ; $6e24: $22
    ld [$e82e], sp                                ; $6e25: $08 $2e $e8
    dec sp                                        ; $6e28: $3b
    cp b                                          ; $6e29: $b8
    ld a, [hl+]                                   ; $6e2a: $2a
    xor b                                         ; $6e2b: $a8

jr_002_6e2c:
    dec sp                                        ; $6e2c: $3b
    cp b                                          ; $6e2d: $b8

jr_002_6e2e:
    rrca                                          ; $6e2e: $0f
    rrca                                          ; $6e2f: $0f
    ld c, $00                                     ; $6e30: $0e $00
    ld a, [$9300]                                 ; $6e32: $fa $00 $93
    nop                                           ; $6e35: $00
    sub c                                         ; $6e36: $91
    nop                                           ; $6e37: $00
    add a                                         ; $6e38: $87
    nop                                           ; $6e39: $00
    or $00                                        ; $6e3a: $f6 $00
    ld [de], a                                    ; $6e3c: $12
    nop                                           ; $6e3d: $00
    dec de                                        ; $6e3e: $1b
    ld hl, sp+$19                                 ; $6e3f: $f8 $19
    add [hl]                                      ; $6e41: $86

jr_002_6e42:
    db $10                                        ; $6e42: $10
    ld e, d                                       ; $6e43: $5a
    ld a, [de]                                    ; $6e44: $1a
    ld e, d                                       ; $6e45: $5a
    dec de                                        ; $6e46: $1b
    ld c, $17                                     ; $6e47: $0e $17
    ld l, b                                       ; $6e49: $68
    dec d                                         ; $6e4a: $15
    ld l, b                                       ; $6e4b: $68
    dec e                                         ; $6e4c: $1d
    ld hl, sp+$0f                                 ; $6e4d: $f8 $0f
    rrca                                          ; $6e4f: $0f
    ld h, b                                       ; $6e50: $60
    jr c, jr_002_6e13                             ; $6e51: $38 $c0

    ld a, d                                       ; $6e53: $7a
    add b                                         ; $6e54: $80
    halt                                          ; $6e55: $76
    and b                                         ; $6e56: $a0
    ld b, d                                       ; $6e57: $42
    rst RST_20                                    ; $6e58: $e7
    ld [bc], a                                    ; $6e59: $02
    adc a                                         ; $6e5a: $8f
    add d                                         ; $6e5b: $82
    rst RST_08                                    ; $6e5c: $cf
    add $4f                                       ; $6e5d: $c6 $4f
    add $67                                       ; $6e5f: $c6 $67
    db $e4                                        ; $6e61: $e4
    inc bc                                        ; $6e62: $03
    db $ec                                        ; $6e63: $ec
    jr nc, jr_002_6e42                            ; $6e64: $30 $dc

    ld h, $38                                     ; $6e66: $26 $38
    inc b                                         ; $6e68: $04
    add b                                         ; $6e69: $80
    inc b                                         ; $6e6a: $04
    add b                                         ; $6e6b: $80
    nop                                           ; $6e6c: $00
    add b                                         ; $6e6d: $80
    rrca                                          ; $6e6e: $0f
    rrca                                          ; $6e6f: $0f
    inc bc                                        ; $6e70: $03
    nop                                           ; $6e71: $00
    dec e                                         ; $6e72: $1d
    nop                                           ; $6e73: $00
    pop hl                                        ; $6e74: $e1
    nop                                           ; $6e75: $00
    adc c                                         ; $6e76: $89

jr_002_6e77:
    adc [hl]                                      ; $6e77: $8e
    adc b                                         ; $6e78: $88
    jp z, Jump_002_6a80                           ; $6e79: $ca $80 $6a

    ld hl, sp+$3a                                 ; $6e7c: $f8 $3a
    add hl, bc                                    ; $6e7e: $09
    ld e, d                                       ; $6e7f: $5a
    dec a                                         ; $6e80: $3d
    ld c, d                                       ; $6e81: $4a
    dec h                                         ; $6e82: $25
    ld c, d                                       ; $6e83: $4a
    dec h                                         ; $6e84: $25
    jp z, Jump_000_0a32                           ; $6e85: $ca $32 $0a

    rra                                           ; $6e88: $1f
    ld [hl+], a                                   ; $6e89: $22
    db $10                                        ; $6e8a: $10
    inc h                                         ; $6e8b: $24
    rra                                           ; $6e8c: $1f
    db $fc                                        ; $6e8d: $fc
    rrca                                          ; $6e8e: $0f
    rrca                                          ; $6e8f: $0f
    ld a, b                                       ; $6e90: $78
    ldh a, [rVBK]                                 ; $6e91: $f0 $4f
    sub b                                         ; $6e93: $90
    ld [hl], b                                    ; $6e94: $70
    ld [hl], b                                    ; $6e95: $70
    ld h, l                                       ; $6e96: $65
    jr nc, @+$51                                  ; $6e97: $30 $4f

    sub b                                         ; $6e99: $90
    ret nc                                        ; $6e9a: $d0

    ld e, h                                       ; $6e9b: $5c
    sub l                                         ; $6e9c: $95
    ld b, h                                       ; $6e9d: $44
    rst RST_28                                    ; $6e9e: $ef
    adc h                                         ; $6e9f: $8c
    and b                                         ; $6ea0: $a0
    ld [$18e0], sp                                ; $6ea1: $08 $e0 $18
    ld b, b                                       ; $6ea4: $40
    db $10                                        ; $6ea5: $10
    ld h, b                                       ; $6ea6: $60
    jr nc, jr_002_6edb                            ; $6ea7: $30 $32

    ld h, b                                       ; $6ea9: $60
    ld a, [de]                                    ; $6eaa: $1a
    ret nz                                        ; $6eab: $c0

    rrca                                          ; $6eac: $0f
    add b                                         ; $6ead: $80
    rrca                                          ; $6eae: $0f
    rrca                                          ; $6eaf: $0f
    rra                                           ; $6eb0: $1f
    ldh [$ff7f], a                                ; $6eb1: $e0 $7f
    ldh a, [$ff9f]                                ; $6eb3: $f0 $9f
    ldh a, [$ffbf]                                ; $6eb5: $f0 $bf
    sbc b                                         ; $6eb7: $98
    ldh [$ffd8], a                                ; $6eb8: $e0 $d8
    ld [$ca78], a                                 ; $6eba: $ea $78 $ca
    ld a, b                                       ; $6ebd: $78
    ret nz                                        ; $6ebe: $c0

    ld a, b                                       ; $6ebf: $78
    adc $78                                       ; $6ec0: $ce $78
    ld h, h                                       ; $6ec2: $64
    db $f4                                        ; $6ec3: $f4
    ld a, a                                       ; $6ec4: $7f
    ldh [c], a                                    ; $6ec5: $e2
    ccf                                           ; $6ec6: $3f
    adc d                                         ; $6ec7: $8a
    ld de, $170e                                  ; $6ec8: $11 $0e $17
    ld l, b                                       ; $6ecb: $68
    dec e                                         ; $6ecc: $1d
    ld hl, sp+$0f                                 ; $6ecd: $f8 $0f
    rrca                                          ; $6ecf: $0f
    rrca                                          ; $6ed0: $0f
    add b                                         ; $6ed1: $80
    ld [$088c], sp                                ; $6ed2: $08 $8c $08
    cp h                                          ; $6ed5: $bc
    ccf                                           ; $6ed6: $3f
    and $60                                       ; $6ed7: $e6 $60
    ld [hl-], a                                   ; $6ed9: $32
    ld b, b                                       ; $6eda: $40

jr_002_6edb:
    ld [de], a                                    ; $6edb: $12
    sbc e                                         ; $6edc: $9b
    jp z, $8a81                                   ; $6edd: $ca $81 $8a

    sbc e                                         ; $6ee0: $9b
    jp z, $ca83                                   ; $6ee1: $ca $83 $ca

    ld b, d                                       ; $6ee4: $42
    ld d, d                                       ; $6ee5: $52
    ld e, e                                       ; $6ee6: $5b
    jp nc, Jump_000_3660                          ; $6ee7: $d2 $60 $36

    jr nc, jr_002_6f50                            ; $6eea: $30 $64

    rra                                           ; $6eec: $1f
    call z, Call_000_0f0f                         ; $6eed: $cc $0f $0f
    inc e                                         ; $6ef0: $1c
    inc a                                         ; $6ef1: $3c
    ld a, $24                                     ; $6ef2: $3e $24
    ld [hl], a                                    ; $6ef4: $77
    ld c, h                                       ; $6ef5: $4c
    ld h, e                                       ; $6ef6: $63
    ld b, d                                       ; $6ef7: $42
    ld [hl], a                                    ; $6ef8: $77
    cp [hl]                                       ; $6ef9: $be
    ld a, $f8                                     ; $6efa: $3e $f8
    sbc h                                         ; $6efc: $9c
    ld a, h                                       ; $6efd: $7c
    ret nz                                        ; $6efe: $c0

    xor $78                                       ; $6eff: $ee $78
    add $08                                       ; $6f01: $c6 $08
    xor $7b                                       ; $6f03: $ee $7b
    db $fc                                        ; $6f05: $fc
    ld b, h                                       ; $6f06: $44
    jr c, jr_002_6f6f                             ; $6f07: $38 $66

    db $10                                        ; $6f09: $10
    inc [hl]                                      ; $6f0a: $34
    sub b                                         ; $6f0b: $90
    rla                                           ; $6f0c: $17
    ldh [rIF], a                                  ; $6f0d: $e0 $0f
    rrca                                          ; $6f0f: $0f
    jr c, jr_002_6f4a                             ; $6f10: $38 $38

    ld l, h                                       ; $6f12: $6c
    ld l, h                                       ; $6f13: $6c
    ld b, [hl]                                    ; $6f14: $46
    add $cf                                       ; $6f15: $c6 $cf
    ldh [c], a                                    ; $6f17: $e2
    adc b                                         ; $6f18: $88
    ld [hl-], a                                   ; $6f19: $32
    sub b                                         ; $6f1a: $90
    ld [de], a                                    ; $6f1b: $12
    or h                                          ; $6f1c: $b4
    sub d                                         ; $6f1d: $92
    db $f4                                        ; $6f1e: $f4
    sbc [hl]                                      ; $6f1f: $9e
    db $10                                        ; $6f20: $10
    db $10                                        ; $6f21: $10
    jr nc, jr_002_6f5c                            ; $6f22: $30 $38

    inc l                                         ; $6f24: $2c
    inc l                                         ; $6f25: $2c
    inc l                                         ; $6f26: $2c
    ld l, [hl]                                    ; $6f27: $6e
    jr nz, jr_002_6f74                            ; $6f28: $20 $4a

    jr nc, @-$26                                  ; $6f2a: $30 $d8

    rra                                           ; $6f2c: $1f
    ldh a, [rIF]                                  ; $6f2d: $f0 $0f
    rrca                                          ; $6f2f: $0f
    rlca                                          ; $6f30: $07
    ldh a, [$ff39]                                ; $6f31: $f0 $39
    inc e                                         ; $6f33: $1c
    ldh [rNR14], a                                ; $6f34: $e0 $14
    ld a, b                                       ; $6f36: $78
    ld [hl-], a                                   ; $6f37: $32
    adc a                                         ; $6f38: $8f
    ldh [c], a                                    ; $6f39: $e2
    inc b                                         ; $6f3a: $04
    jp nz, $e203                                  ; $6f3b: $c2 $03 $e2

    inc b                                         ; $6f3e: $04
    ld a, [hl]                                    ; $6f3f: $7e
    dec bc                                        ; $6f40: $0b
    ld b, d                                       ; $6f41: $42
    ld h, a                                       ; $6f42: $67
    jp nz, Jump_000_3c93                          ; $6f43: $c2 $93 $3c

    adc a                                         ; $6f46: $8f
    jr @-$19                                      ; $6f47: $18 $e5

    sbc b                                         ; $6f49: $98

jr_002_6f4a:
    inc a                                         ; $6f4a: $3c
    or b                                          ; $6f4b: $b0
    rlca                                          ; $6f4c: $07
    ret nz                                        ; $6f4d: $c0

    rrca                                          ; $6f4e: $0f
    rrca                                          ; $6f4f: $0f

jr_002_6f50:
    ld a, [hl]                                    ; $6f50: $7e
    nop                                           ; $6f51: $00
    jp $f100                                      ; $6f52: $c3 $00 $f1


    ldh [$ffa8], a                                ; $6f55: $e0 $a8
    and b                                         ; $6f57: $a0
    db $fd                                        ; $6f58: $fd
    jr nz, jr_002_6f97                            ; $6f59: $20 $3c

    ld a, b                                       ; $6f5b: $78

jr_002_6f5c:
    db $fc                                        ; $6f5c: $fc
    inc c                                         ; $6f5d: $0c
    xor b                                         ; $6f5e: $a8
    ld b, $f0                                     ; $6f5f: $06 $f0
    ld a, [bc]                                    ; $6f61: $0a
    add h                                         ; $6f62: $84
    ld a, [bc]                                    ; $6f63: $0a
    ld a, h                                       ; $6f64: $7c
    ld a, [bc]                                    ; $6f65: $0a
    db $10                                        ; $6f66: $10
    ld a, [bc]                                    ; $6f67: $0a
    rla                                           ; $6f68: $17
    ld l, [hl]                                    ; $6f69: $6e

jr_002_6f6a:
    dec d                                         ; $6f6a: $15
    ld l, b                                       ; $6f6b: $68
    dec e                                         ; $6f6c: $1d
    ld hl, sp+$0f                                 ; $6f6d: $f8 $0f

jr_002_6f6f:
    rrca                                          ; $6f6f: $0f
    ld h, c                                       ; $6f70: $61
    add b                                         ; $6f71: $80
    dec sp                                        ; $6f72: $3b
    nop                                           ; $6f73: $00

jr_002_6f74:
    scf                                           ; $6f74: $37
    inc d                                         ; $6f75: $14
    scf                                           ; $6f76: $37
    ld a, $37                                     ; $6f77: $3e $37
    ld l, $3f                                     ; $6f79: $2e $3f
    ld l, $1e                                     ; $6f7b: $2e $1e
    ld [hl], $04                                  ; $6f7d: $36 $04
    inc e                                         ; $6f7f: $1c
    call nz, $6408                                ; $6f80: $c4 $08 $64
    add sp, $35                                   ; $6f83: $e8 $35
    adc b                                         ; $6f85: $88
    scf                                           ; $6f86: $37
    ld l, d                                       ; $6f87: $6a
    ccf                                           ; $6f88: $3f
    ld a, $1e                                     ; $6f89: $3e $1e
    inc e                                         ; $6f8b: $1c
    inc c                                         ; $6f8c: $0c
    ld [$0f0f], sp                                ; $6f8d: $08 $0f $0f
    rlca                                          ; $6f90: $07
    ret nz                                        ; $6f91: $c0

    inc c                                         ; $6f92: $0c
    ld h, b                                       ; $6f93: $60
    ld [$082c], sp                                ; $6f94: $08 $2c $08

jr_002_6f97:
    ld a, [hl+]                                   ; $6f97: $2a
    ld a, [bc]                                    ; $6f98: $0a
    xor d                                         ; $6f99: $aa
    ld a, [$80ba]                                 ; $6f9a: $fa $ba $80
    ld [bc], a                                    ; $6f9d: $02
    cp c                                          ; $6f9e: $b9
    ld a, $a9                                     ; $6f9f: $3e $a9
    jr nz, jr_002_700c                            ; $6fa1: $20 $69

    jr nz, jr_002_6fad                            ; $6fa3: $20 $08

    jr nz, jr_002_6faf                            ; $6fa5: $20 $08

    jr nz, @+$1a                                  ; $6fa7: $20 $18

    jr nc, jr_002_6fbb                            ; $6fa9: $30 $10

    db $10                                        ; $6fab: $10
    rra                                           ; $6fac: $1f

jr_002_6fad:
    ldh a, [rIF]                                  ; $6fad: $f0 $0f

jr_002_6faf:
    rrca                                          ; $6faf: $0f
    inc e                                         ; $6fb0: $1c
    nop                                           ; $6fb1: $00
    halt                                          ; $6fb2: $76
    nop                                           ; $6fb3: $00
    add [hl]                                      ; $6fb4: $86
    nop                                           ; $6fb5: $00
    sub [hl]                                      ; $6fb6: $96
    ld b, $86                                     ; $6fb7: $06 $86
    ld c, $e7                                     ; $6fb9: $0e $e7

jr_002_6fbb:
    or $22                                        ; $6fbb: $f6 $22
    ld e, d                                       ; $6fbd: $5a
    ld [hl+], a                                   ; $6fbe: $22
    ld c, d                                       ; $6fbf: $4a
    jp $80ca                                      ; $6fc0: $c3 $ca $80


    ld [$c89f], sp                                ; $6fc3: $08 $9f $c8
    push bc                                       ; $6fc6: $c5
    ld c, [hl]                                    ; $6fc7: $4e
    ld a, l                                       ; $6fc8: $7d
    ld [hl+], a                                   ; $6fc9: $22
    ld bc, $011e                                  ; $6fca: $01 $1e $01
    nop                                           ; $6fcd: $00
    rrca                                          ; $6fce: $0f
    rrca                                          ; $6fcf: $0f
    nop                                           ; $6fd0: $00
    nop                                           ; $6fd1: $00
    rra                                           ; $6fd2: $1f
    add b                                         ; $6fd3: $80
    db $10                                        ; $6fd4: $10
    add b                                         ; $6fd5: $80
    db $fc                                        ; $6fd6: $fc
    add b                                         ; $6fd7: $80
    add a                                         ; $6fd8: $87
    add b                                         ; $6fd9: $80
    add h                                         ; $6fda: $84
    add b                                         ; $6fdb: $80
    db $fc                                        ; $6fdc: $fc
    add b                                         ; $6fdd: $80
    add h                                         ; $6fde: $84
    ldh a, [$ff84]                                ; $6fdf: $f0 $84
    jr jr_002_6f6a                                ; $6fe1: $18 $87

    adc h                                         ; $6fe3: $8c
    add b                                         ; $6fe4: $80
    db $ec                                        ; $6fe5: $ec
    ldh [$ff78], a                                ; $6fe6: $e0 $78
    or b                                          ; $6fe8: $b0
    ld [hl], b                                    ; $6fe9: $70
    sub b                                         ; $6fea: $90
    ret nz                                        ; $6feb: $c0

    ld a, a                                       ; $6fec: $7f
    add b                                         ; $6fed: $80
    rrca                                          ; $6fee: $0f
    rrca                                          ; $6fef: $0f
    ld [bc], a                                    ; $6ff0: $02
    add b                                         ; $6ff1: $80
    ld [hl], d                                    ; $6ff2: $72
    sbc h                                         ; $6ff3: $9c
    jp z, $85a6                                   ; $6ff4: $ca $a6 $85

    ld b, d                                       ; $6ff7: $42
    add [hl]                                      ; $6ff8: $86
    jp nz, $8282                                  ; $6ff9: $c2 $82 $82

    jp nz, $4286                                  ; $6ffc: $c2 $86 $42

    add h                                         ; $6fff: $84
    ld h, d                                       ; $7000: $62
    adc h                                         ; $7001: $8c
    ld a, [hl-]                                   ; $7002: $3a
    cp b                                          ; $7003: $b8
    ld b, a                                       ; $7004: $47
    call z, $c286                                 ; $7005: $cc $86 $c2
    adc d                                         ; $7008: $8a
    and d                                         ; $7009: $a2
    res 4, [hl]                                   ; $700a: $cb $a6

jr_002_700c:
    ld a, b                                       ; $700c: $78
    inc a                                         ; $700d: $3c
    rrca                                          ; $700e: $0f
    rrca                                          ; $700f: $0f
    ld a, b                                       ; $7010: $78
    nop                                           ; $7011: $00
    adc a                                         ; $7012: $8f
    ldh [$ff94], a                                ; $7013: $e0 $94
    jr c, jr_002_7059                             ; $7015: $38 $42

    inc c                                         ; $7017: $0c
    inc hl                                        ; $7018: $23
    add h                                         ; $7019: $84
    ld a, $46                                     ; $701a: $3e $46
    ld [hl], d                                    ; $701c: $72
    ld h, d                                       ; $701d: $62
    ld c, h                                       ; $701e: $4c
    ld d, d                                       ; $701f: $52
    ld c, h                                       ; $7020: $4c
    xor d                                         ; $7021: $aa
    ld a, a                                       ; $7022: $7f
    or $06                                        ; $7023: $f6 $06
    ld a, [de]                                    ; $7025: $1a
    dec b                                         ; $7026: $05
    and $04                                       ; $7027: $e6 $04
    and [hl]                                      ; $7029: $a6
    inc b                                         ; $702a: $04
    db $e4                                        ; $702b: $e4
    rlca                                          ; $702c: $07
    cp h                                          ; $702d: $bc
    rrca                                          ; $702e: $0f
    rrca                                          ; $702f: $0f
    nop                                           ; $7030: $00
    db $fc                                        ; $7031: $fc
    inc bc                                        ; $7032: $03
    ld a, [hl-]                                   ; $7033: $3a
    rrca                                          ; $7034: $0f
    sub [hl]                                      ; $7035: $96
    rra                                           ; $7036: $1f
    adc $3f                                       ; $7037: $ce $3f
    and $3f                                       ; $7039: $e6 $3f
    ld [hl-], a                                   ; $703b: $32
    ld a, [hl]                                    ; $703c: $7e
    cp d                                          ; $703d: $ba
    ld a, l                                       ; $703e: $7d
    ld a, h                                       ; $703f: $7c
    cp d                                          ; $7040: $ba
    db $fc                                        ; $7041: $fc
    sbc c                                         ; $7042: $99
    ld hl, sp-$31                                 ; $7043: $f8 $cf
    ld hl, sp-$19                                 ; $7045: $f8 $e7
    ldh a, [$ffd3]                                ; $7047: $f0 $d3
    ldh [$ffb9], a                                ; $7049: $e0 $b9
    add b                                         ; $704b: $80
    ld a, [hl]                                    ; $704c: $7e
    nop                                           ; $704d: $00
    rrca                                          ; $704e: $0f
    rrca                                          ; $704f: $0f
    ccf                                           ; $7050: $3f
    nop                                           ; $7051: $00
    ld c, b                                       ; $7052: $48
    add b                                         ; $7053: $80
    rst RST_20                                    ; $7054: $e7
    add b                                         ; $7055: $80
    sub h                                         ; $7056: $94
    inc e                                         ; $7057: $1c
    sub h                                         ; $7058: $94

jr_002_7059:
    db $fc                                        ; $7059: $fc
    db $e4                                        ; $705a: $e4
    db $fc                                        ; $705b: $fc
    ld b, h                                       ; $705c: $44
    db $fc                                        ; $705d: $fc
    ld b, [hl]                                    ; $705e: $46
    ld b, d                                       ; $705f: $42
    ld b, d                                       ; $7060: $42
    add d                                         ; $7061: $82
    ld [hl], e                                    ; $7062: $73
    ld e, $89                                     ; $7063: $1e $89
    ld [hl+], a                                   ; $7065: $22
    add h                                         ; $7066: $84
    ld b, d                                       ; $7067: $42
    add h                                         ; $7068: $84
    ld b, d                                       ; $7069: $42
    rst RST_38                                    ; $706a: $ff
    db $fc                                        ; $706b: $fc
    ld a, b                                       ; $706c: $78
    inc a                                         ; $706d: $3c
    rrca                                          ; $706e: $0f
    rrca                                          ; $706f: $0f
    inc a                                         ; $7070: $3c
    ld a, b                                       ; $7071: $78
    ld b, a                                       ; $7072: $47
    call nz, Call_000_0280                        ; $7073: $c4 $80 $02
    add b                                         ; $7076: $80
    ld [bc], a                                    ; $7077: $02
    adc e                                         ; $7078: $8b
    and d                                         ; $7079: $a2
    adc e                                         ; $707a: $8b
    and d                                         ; $707b: $a2
    ld h, e                                       ; $707c: $63
    adc h                                         ; $707d: $8c
    inc hl                                        ; $707e: $23
    adc b                                         ; $707f: $88
    inc [hl]                                      ; $7080: $34
    ld e, b                                       ; $7081: $58
    ld e, a                                       ; $7082: $5f
    db $f4                                        ; $7083: $f4
    ld h, e                                       ; $7084: $63
    inc c                                         ; $7085: $0c
    sub c                                         ; $7086: $91
    ld [de], a                                    ; $7087: $12
    adc [hl]                                      ; $7088: $8e
    ldh [c], a                                    ; $7089: $e2
    ret z                                         ; $708a: $c8

    ld b, [hl]                                    ; $708b: $46
    ld a, a                                       ; $708c: $7f
    db $fc                                        ; $708d: $fc
    rrca                                          ; $708e: $0f
    rrca                                          ; $708f: $0f
    inc a                                         ; $7090: $3c

jr_002_7091:
    inc a                                         ; $7091: $3c
    rst RST_20                                    ; $7092: $e7
    and $a4                                       ; $7093: $e6 $a4
    ld h, $e7                                     ; $7095: $26 $e7
    and $24                                       ; $7097: $e6 $24
    inc h                                         ; $7099: $24
    ld [hl], h                                    ; $709a: $74
    inc h                                         ; $709b: $24
    ld e, a                                       ; $709c: $5f
    db $e4                                        ; $709d: $e4
    ld b, b                                       ; $709e: $40
    inc b                                         ; $709f: $04
    ld b, e                                       ; $70a0: $43
    add h                                         ; $70a1: $84
    ld b, e                                       ; $70a2: $43
    add h                                         ; $70a3: $84
    ld h, c                                       ; $70a4: $61
    inc c                                         ; $70a5: $0c
    jr nz, jr_002_70b0                            ; $70a6: $20 $08

    jr nc, jr_002_70c2                            ; $70a8: $30 $18

    jr jr_002_70dc                                ; $70aa: $18 $30

    rrca                                          ; $70ac: $0f
    ldh [rIF], a                                  ; $70ad: $e0 $0f
    rrca                                          ; $70af: $0f

jr_002_70b0:
    nop                                           ; $70b0: $00
    nop                                           ; $70b1: $00
    rrca                                          ; $70b2: $0f
    add b                                         ; $70b3: $80
    rra                                           ; $70b4: $1f
    ret nz                                        ; $70b5: $c0

    ccf                                           ; $70b6: $3f
    ldh [rNR41], a                                ; $70b7: $e0 $20
    jr nz, jr_002_712f                            ; $70b9: $20 $74

    jr nz, jr_002_7091                            ; $70bb: $20 $d4

    inc a                                         ; $70bd: $3c
    sub b                                         ; $70be: $90
    inc b                                         ; $70bf: $04
    ldh a, [$ffe4]                                ; $70c0: $f0 $e4

jr_002_70c2:
    jr nz, @+$26                                  ; $70c2: $20 $24

    ld sp, $18ec                                  ; $70c4: $31 $ec $18
    jr jr_002_70d8                                ; $70c7: $18 $0f

    ldh a, [rSC]                                  ; $70c9: $f0 $02
    ld b, b                                       ; $70cb: $40
    nop                                           ; $70cc: $00
    nop                                           ; $70cd: $00
    rrca                                          ; $70ce: $0f
    rrca                                          ; $70cf: $0f
    ld l, h                                       ; $70d0: $6c
    ld a, b                                       ; $70d1: $78
    sub d                                         ; $70d2: $92
    ret z                                         ; $70d3: $c8

    sub d                                         ; $70d4: $92
    add h                                         ; $70d5: $84
    cp e                                          ; $70d6: $bb
    db $e4                                        ; $70d7: $e4

jr_002_70d8:
    sub e                                         ; $70d8: $93
    ldh a, [c]                                    ; $70d9: $f2
    ld a, a                                       ; $70da: $7f
    sbc d                                         ; $70db: $9a

jr_002_70dc:
    sbc a                                         ; $70dc: $9f
    ld a, [de]                                    ; $70dd: $1a
    adc a                                         ; $70de: $8f
    ld e, $a5                                     ; $70df: $1e $a5
    inc a                                         ; $70e1: $3c
    db $f4                                        ; $70e2: $f4
    db $fc                                        ; $70e3: $fc
    ld [hl], h                                    ; $70e4: $74
    ld a, h                                       ; $70e5: $7c
    ld c, h                                       ; $70e6: $4c
    ld e, $38                                     ; $70e7: $1e $38
    ld a, [hl-]                                   ; $70e9: $3a
    inc c                                         ; $70ea: $0c
    ld [hl], d                                    ; $70eb: $72
    rlca                                          ; $70ec: $07
    sbc $0f                                       ; $70ed: $de $0f
    rrca                                          ; $70ef: $0f
    rra                                           ; $70f0: $1f
    add b                                         ; $70f1: $80
    inc h                                         ; $70f2: $24
    ret nz                                        ; $70f3: $c0

    jr nz, jr_002_7136                            ; $70f4: $20 $40

    inc a                                         ; $70f6: $3c
    ld b, b                                       ; $70f7: $40
    ld [bc], a                                    ; $70f8: $02
    ld b, b                                       ; $70f9: $40
    ld [bc], a                                    ; $70fa: $02
    ld b, b                                       ; $70fb: $40
    ld [bc], a                                    ; $70fc: $02
    ld b, b                                       ; $70fd: $40
    inc b                                         ; $70fe: $04
    ld b, b                                       ; $70ff: $40
    ld a, b                                       ; $7100: $78
    db $fc                                        ; $7101: $fc
    pop de                                        ; $7102: $d1
    ld b, $93                                     ; $7103: $06 $93
    ldh [c], a                                    ; $7105: $e2
    or b                                          ; $7106: $b0
    ld [bc], a                                    ; $7107: $02
    adc a                                         ; $7108: $8f
    or $c0                                        ; $7109: $f6 $c0
    inc e                                         ; $710b: $1c
    ld a, a                                       ; $710c: $7f
    ldh a, [rIF]                                  ; $710d: $f0 $0f
    rrca                                          ; $710f: $0f
    ld bc, $03f0                                  ; $7110: $01 $f0 $03
    ld a, b                                       ; $7113: $78
    ld b, $b8                                     ; $7114: $06 $b8
    rrca                                          ; $7116: $0f
    ld a, h                                       ; $7117: $7c
    rra                                           ; $7118: $1f
    ldh [c], a                                    ; $7119: $e2
    ccf                                           ; $711a: $3f
    cp $ff                                        ; $711b: $fe $ff
    inc b                                         ; $711d: $04
    db $fc                                        ; $711e: $fc
    inc b                                         ; $711f: $04
    ld hl, sp+$0c                                 ; $7120: $f8 $0c
    ld h, b                                       ; $7122: $60
    jr jr_002_715d                                ; $7123: $18 $38

    jr nc, jr_002_7136                            ; $7125: $30 $0f

    ldh [rSC], a                                  ; $7127: $e0 $02
    add b                                         ; $7129: $80
    inc bc                                        ; $712a: $03
    ret nz                                        ; $712b: $c0

    ld [bc], a                                    ; $712c: $02
    and b                                         ; $712d: $a0
    rrca                                          ; $712e: $0f

jr_002_712f:
    rrca                                          ; $712f: $0f
    ccf                                           ; $7130: $3f
    add b                                         ; $7131: $80
    ld b, b                                       ; $7132: $40
    ldh a, [$ff81]                                ; $7133: $f0 $81
    inc c                                         ; $7135: $0c

jr_002_7136:
    sub b                                         ; $7136: $90
    add d                                         ; $7137: $82
    sub b                                         ; $7138: $90
    add d                                         ; $7139: $82
    sub b                                         ; $713a: $90
    add d                                         ; $713b: $82
    add b                                         ; $713c: $80
    add d                                         ; $713d: $82
    sub b                                         ; $713e: $90
    add d                                         ; $713f: $82
    xor c                                         ; $7140: $a9
    ld [bc], a                                    ; $7141: $02
    xor [hl]                                      ; $7142: $ae
    ld [bc], a                                    ; $7143: $02
    xor b                                         ; $7144: $a8
    ld [bc], a                                    ; $7145: $02
    ret                                           ; $7146: $c9


    ld [de], a                                    ; $7147: $12
    cp c                                          ; $7148: $b9
    ldh a, [c]                                    ; $7149: $f2
    xor c                                         ; $714a: $a9
    ld [de], a                                    ; $714b: $12

jr_002_714c:
    ld l, a                                       ; $714c: $6f
    ld e, $0f                                     ; $714d: $1e $0f
    rrca                                          ; $714f: $0f
    rlca                                          ; $7150: $07
    nop                                           ; $7151: $00
    db $fd                                        ; $7152: $fd
    nop                                           ; $7153: $00
    adc c                                         ; $7154: $89
    nop                                           ; $7155: $00
    adc c                                         ; $7156: $89
    nop                                           ; $7157: $00
    add c                                         ; $7158: $81
    nop                                           ; $7159: $00
    ld sp, hl                                     ; $715a: $f9
    ld hl, sp+$08                                 ; $715b: $f8 $08

jr_002_715d:
    and $08                                       ; $715d: $e6 $08
    ld [$0a08], a                                 ; $715f: $ea $08 $0a
    ld [$0b0a], sp                                ; $7162: $08 $0a $0b
    xor $0a                                       ; $7165: $ee $0a
    jr z, jr_002_7177                             ; $7167: $28 $0e

    jr c, jr_002_7181                             ; $7169: $38 $16

    ld e, b                                       ; $716b: $58
    ld a, [de]                                    ; $716c: $1a
    ld l, b                                       ; $716d: $68
    rrca                                          ; $716e: $0f
    rrca                                          ; $716f: $0f
    ccf                                           ; $7170: $3f
    ret nz                                        ; $7171: $c0

    ld b, b                                       ; $7172: $40
    jr nz, @-$3f                                  ; $7173: $20 $bf

    ret nc                                        ; $7175: $d0

    cp a                                          ; $7176: $bf

jr_002_7177:
    ret nc                                        ; $7177: $d0

    ld b, b                                       ; $7178: $40
    inc a                                         ; $7179: $3c
    ld [hl], b                                    ; $717a: $70
    ldh [c], a                                    ; $717b: $e2
    ld b, b                                       ; $717c: $40
    ld a, [hl-]                                   ; $717d: $3a
    ld b, b                                       ; $717e: $40
    ld a, [hl+]                                   ; $717f: $2a
    ld b, b                                       ; $7180: $40

jr_002_7181:
    ld a, [hl-]                                   ; $7181: $3a
    ld b, b                                       ; $7182: $40
    inc h                                         ; $7183: $24
    ld b, b                                       ; $7184: $40
    jr c, jr_002_71c7                             ; $7185: $38 $40

    jr nz, jr_002_71e9                            ; $7187: $20 $60

    ld h, b                                       ; $7189: $60
    jr nc, jr_002_714c                            ; $718a: $30 $c0

    rra                                           ; $718c: $1f
    add b                                         ; $718d: $80
    rrca                                          ; $718e: $0f
    rrca                                          ; $718f: $0f
    ld c, $7e                                     ; $7190: $0e $7e
    ld a, [de]                                    ; $7192: $1a
    jp nz, $9ee2                                  ; $7193: $c2 $e2 $9e

    sub e                                         ; $7196: $93
    add h                                         ; $7197: $84
    add e                                         ; $7198: $83
    ld [$1083], sp                                ; $7199: $08 $83 $10
    ldh a, [c]                                    ; $719c: $f2
    jr nc, @+$14                                  ; $719d: $30 $12

    inc l                                         ; $719f: $2c
    ld de, $10ea                                  ; $71a0: $11 $ea $10
    ld a, [bc]                                    ; $71a3: $0a
    db $10                                        ; $71a4: $10
    ld a, [bc]                                    ; $71a5: $0a
    ld de, $170e                                  ; $71a6: $11 $0e $17
    ld l, b                                       ; $71a9: $68
    dec d                                         ; $71aa: $15
    ld l, b                                       ; $71ab: $68
    dec e                                         ; $71ac: $1d
    ld hl, sp+$0f                                 ; $71ad: $f8 $0f
    rrca                                          ; $71af: $0f
    ldh [rP1], a                                  ; $71b0: $e0 $00
    and b                                         ; $71b2: $a0
    nop                                           ; $71b3: $00
    cp e                                          ; $71b4: $bb
    add b                                         ; $71b5: $80
    xor [hl]                                      ; $71b6: $ae
    ldh a, [$ffaa]                                ; $71b7: $f0 $aa
    sbc b                                         ; $71b9: $98
    di                                            ; $71ba: $f3
    add [hl]                                      ; $71bb: $86
    adc c                                         ; $71bc: $89
    ld a, [bc]                                    ; $71bd: $0a
    adc c                                         ; $71be: $89
    ld a, [bc]                                    ; $71bf: $0a
    add c                                         ; $71c0: $81
    ld a, [bc]                                    ; $71c1: $0a
    jp Jump_002_7e0a                              ; $71c2: $c3 $0a $7e


    ld c, $1d                                     ; $71c5: $0e $1d

jr_002_71c7:
    ret c                                         ; $71c7: $d8

    rla                                           ; $71c8: $17
    ld l, b                                       ; $71c9: $68
    dec d                                         ; $71ca: $15
    ld l, b                                       ; $71cb: $68
    dec e                                         ; $71cc: $1d
    ld hl, sp+$0f                                 ; $71cd: $f8 $0f
    rrca                                          ; $71cf: $0f
    jr c, jr_002_71d2                             ; $71d0: $38 $00

jr_002_71d2:
    add sp, $00                                   ; $71d2: $e8 $00
    xor b                                         ; $71d4: $a8
    nop                                           ; $71d5: $00
    add sp, -$10                                  ; $71d6: $e8 $f0
    add hl, bc                                    ; $71d8: $09
    db $10                                        ; $71d9: $10
    ccf                                           ; $71da: $3f
    sub b                                         ; $71db: $90
    ld h, b                                       ; $71dc: $60
    ld d, b                                       ; $71dd: $50
    ld b, b                                       ; $71de: $40
    ld [hl], $e4                                  ; $71df: $36 $e4
    ld a, [de]                                    ; $71e1: $1a
    sub h                                         ; $71e2: $94
    ld e, $d1                                     ; $71e3: $1e $d1
    sub d                                         ; $71e5: $92
    sub b                                         ; $71e6: $90
    sbc [hl]                                      ; $71e7: $9e
    pop hl                                        ; $71e8: $e1

jr_002_71e9:
    sbc d                                         ; $71e9: $9a
    ld b, b                                       ; $71ea: $40
    ld [hl], $3f                                  ; $71eb: $36 $3f
    ret nz                                        ; $71ed: $c0

    rrca                                          ; $71ee: $0f
    rrca                                          ; $71ef: $0f

jr_002_71f0:
    ld e, $00                                     ; $71f0: $1e $00
    dec hl                                        ; $71f2: $2b
    add b                                         ; $71f3: $80
    ld d, d                                       ; $71f4: $52
    add b                                         ; $71f5: $80
    and d                                         ; $71f6: $a2
    ld hl, sp-$3e                                 ; $71f7: $f8 $c2
    adc h                                         ; $71f9: $8c
    add e                                         ; $71fa: $83
    or $fe                                        ; $71fb: $f6 $fe
    ld a, [de]                                    ; $71fd: $1a
    ld b, h                                       ; $71fe: $44
    ld a, [bc]                                    ; $71ff: $0a
    ld a, h                                       ; $7200: $7c
    ld a, [bc]                                    ; $7201: $0a
    inc d                                         ; $7202: $14
    ld a, [bc]                                    ; $7203: $0a
    inc d                                         ; $7204: $14
    ld a, [bc]                                    ; $7205: $0a
    ld d, $1a                                     ; $7206: $16 $1a
    dec de                                        ; $7208: $1b
    or $0c                                        ; $7209: $f6 $0c
    inc c                                         ; $720b: $0c
    rlca                                          ; $720c: $07
    ld hl, sp+$0f                                 ; $720d: $f8 $0f
    rrca                                          ; $720f: $0f
    pop hl                                        ; $7210: $e1
    cp $c3                                        ; $7211: $fe $c3

jr_002_7213:
    ld [bc], a                                    ; $7213: $02
    sbc [hl]                                      ; $7214: $9e
    ld b, h                                       ; $7215: $44
    and d                                         ; $7216: $a2
    ld c, b                                       ; $7217: $48
    cp [hl]                                       ; $7218: $be
    ld [$18c1], sp                                ; $7219: $08 $c1 $18
    db $e3                                        ; $721c: $e3
    ld a, b                                       ; $721d: $78
    ldh [c], a                                    ; $721e: $e2
    ld c, h                                       ; $721f: $4c
    ldh [c], a                                    ; $7220: $e2
    call nz, $a4e2                                ; $7221: $c4 $e2 $a4
    ldh [c], a                                    ; $7224: $e2
    and h                                         ; $7225: $a4
    jp nc, $eea4                                  ; $7226: $d2 $a4 $ee

    or [hl]                                       ; $7229: $b6
    reti                                          ; $722a: $d9


    jp nc, Jump_002_7ce0                          ; $722b: $d2 $e0 $7c

    rrca                                          ; $722e: $0f
    rrca                                          ; $722f: $0f
    ld [hl], e                                    ; $7230: $73
    ret nz                                        ; $7231: $c0

    sub [hl]                                      ; $7232: $96
    ldh [$ff74], a                                ; $7233: $e0 $74
    ld h, b                                       ; $7235: $60
    sub [hl]                                      ; $7236: $96
    ldh [$ff15], a                                ; $7237: $e0 $15
    ld b, b                                       ; $7239: $40
    rra                                           ; $723a: $1f
    ldh a, [$ff2b]                                ; $723b: $f0 $2b
    ld hl, sp+$3d                                 ; $723d: $f8 $3d
    ld hl, sp+$16                                 ; $723f: $f8 $16
    ld a, b                                       ; $7241: $78
    rra                                           ; $7242: $1f
    sbc h                                         ; $7243: $9c
    dec bc                                        ; $7244: $0b
    db $ec                                        ; $7245: $ec
    dec bc                                        ; $7246: $0b
    ld [hl], h                                    ; $7247: $74
    add hl, bc                                    ; $7248: $09
    cp h                                          ; $7249: $bc
    ld [$00de], sp                                ; $724a: $08 $de $00
    ld l, $0f                                     ; $724d: $2e $0f
    rrca                                          ; $724f: $0f
    ld hl, $b200                                  ; $7250: $21 $00 $b2
    inc e                                         ; $7253: $1c
    or [hl]                                       ; $7254: $b6
    jr nc, jr_002_7213                            ; $7255: $30 $bc

    ldh [$ffab], a                                ; $7257: $e0 $ab
    ld c, [hl]                                    ; $7259: $4e
    and $f4                                       ; $725a: $e6 $f4
    ld l, l                                       ; $725c: $6d
    sbc [hl]                                      ; $725d: $9e
    ld l, e                                       ; $725e: $6b
    ld [hl], b                                    ; $725f: $70
    ld d, d                                       ; $7260: $52
    xor $af                                       ; $7261: $ee $af
    jr nc, jr_002_71f0                            ; $7263: $30 $8b

    cp $f0                                        ; $7265: $fe $f0
    jr jr_002_7280                                ; $7267: $18 $17

    xor h                                         ; $7269: $ac
    jr jr_002_72d2                                ; $726a: $18 $66

    nop                                           ; $726c: $00
    nop                                           ; $726d: $00
    rrca                                          ; $726e: $0f
    rrca                                          ; $726f: $0f
    rra                                           ; $7270: $1f
    nop                                           ; $7271: $00
    ld hl, $7900                                  ; $7272: $21 $00 $79
    nop                                           ; $7275: $00
    ld d, l                                       ; $7276: $55
    nop                                           ; $7277: $00
    sub l                                         ; $7278: $95
    cp $94                                        ; $7279: $fe $94
    ld [bc], a                                    ; $727b: $02
    push hl                                       ; $727c: $e5
    cp $85                                        ; $727d: $fe $85
    ld d, d                                       ; $727f: $52

jr_002_7280:
    or l                                          ; $7280: $b5
    ld b, d                                       ; $7281: $42
    add h                                         ; $7282: $84
    ld b, $ba                                     ; $7283: $06 $ba
    jr c, @-$11                                   ; $7285: $38 $ed

    db $ec                                        ; $7287: $ec
    ld b, [hl]                                    ; $7288: $46
    ld b, h                                       ; $7289: $44
    ld l, h                                       ; $728a: $6c
    ld l, h                                       ; $728b: $6c
    jr c, jr_002_72c6                             ; $728c: $38 $38

    rrca                                          ; $728e: $0f
    rrca                                          ; $728f: $0f
    nop                                           ; $7290: $00
    jr c, @+$3a                                   ; $7291: $38 $38

    jr c, jr_002_72d1                             ; $7293: $38 $3c

    inc [hl]                                      ; $7295: $34
    ld e, [hl]                                    ; $7296: $5e
    ld l, $6f                                     ; $7297: $2e $6f
    ld a, [hl]                                    ; $7299: $7e
    scf                                           ; $729a: $37
    cp $1b                                        ; $729b: $fe $1b
    ldh a, [$ff0d]                                ; $729d: $f0 $0d
    ldh [$ff0a], a                                ; $729f: $e0 $0a
    ldh a, [rNR24]                                ; $72a1: $f0 $19
    ld a, b                                       ; $72a3: $78
    ccf                                           ; $72a4: $3f
    cp h                                          ; $72a5: $bc
    cp [hl]                                       ; $72a6: $be
    sbc $dc                                       ; $72a7: $de $dc
    ld h, d                                       ; $72a9: $62
    ld l, b                                       ; $72aa: $68
    inc a                                         ; $72ab: $3c
    jr nc, jr_002_72ae                            ; $72ac: $30 $00

jr_002_72ae:
    rrca                                          ; $72ae: $0f
    rrca                                          ; $72af: $0f
    dec hl                                        ; $72b0: $2b
    ret nz                                        ; $72b1: $c0

    ld h, $50                                     ; $72b2: $26 $50
    inc hl                                        ; $72b4: $23
    ldh a, [rNR43]                                ; $72b5: $f0 $22
    ld b, b                                       ; $72b7: $40
    ld h, d                                       ; $72b8: $62
    ld b, b                                       ; $72b9: $40
    rst RST_20                                    ; $72ba: $e7
    ldh a, [$ffaa]                                ; $72bb: $f0 $aa
    ld e, b                                       ; $72bd: $58
    pop af                                        ; $72be: $f1
    xor b                                         ; $72bf: $a8
    ld b, l                                       ; $72c0: $45
    ld l, h                                       ; $72c1: $6c
    ld l, h                                       ; $72c2: $6c
    inc h                                         ; $72c3: $24
    inc [hl]                                      ; $72c4: $34
    inc [hl]                                      ; $72c5: $34

jr_002_72c6:
    rlca                                          ; $72c6: $07
    db $f4                                        ; $72c7: $f4
    rra                                           ; $72c8: $1f
    ld [$ee3e], a                                 ; $72c9: $ea $3e $ee
    jr c, jr_002_72ae                             ; $72cc: $38 $e0

    rrca                                          ; $72ce: $0f
    rrca                                          ; $72cf: $0f
    nop                                           ; $72d0: $00

jr_002_72d1:
    nop                                           ; $72d1: $00

jr_002_72d2:
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

Call_002_745c:
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
    nop                                           ; $77d7: $00
    nop                                           ; $77d8: $00
    nop                                           ; $77d9: $00
    nop                                           ; $77da: $00
    nop                                           ; $77db: $00
    nop                                           ; $77dc: $00
    nop                                           ; $77dd: $00
    nop                                           ; $77de: $00
    nop                                           ; $77df: $00

Call_002_77e0:
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

Call_002_7800:
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

Call_002_782d:
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

Call_002_784e:
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

Call_002_79e4:
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

Jump_002_7a9c:
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
    nop                                           ; $7c6f: $00
    nop                                           ; $7c70: $00
    nop                                           ; $7c71: $00
    nop                                           ; $7c72: $00
    nop                                           ; $7c73: $00
    nop                                           ; $7c74: $00
    nop                                           ; $7c75: $00
    nop                                           ; $7c76: $00
    nop                                           ; $7c77: $00

Call_002_7c78:
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

Jump_002_7c86:
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

Jump_002_7ce0:
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

Call_002_7e00:
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

Jump_002_7e0a:
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

Call_002_7e46:
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

Call_002_7f90:
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
