; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    rst RST_38                                    ; $4000: $ff
    nop                                           ; $4001: $00
    rst RST_38                                    ; $4002: $ff
    ld a, a                                       ; $4003: $7f
    ret nz                                        ; $4004: $c0

    ld l, e                                       ; $4005: $6b
    ret nz                                        ; $4006: $c0

    ld a, e                                       ; $4007: $7b
    ret nz                                        ; $4008: $c0

    ld a, h                                       ; $4009: $7c
    rst RST_18                                    ; $400a: $df
    ld a, a                                       ; $400b: $7f
    db $d3                                        ; $400c: $d3
    ld a, b                                       ; $400d: $78
    ret                                           ; $400e: $c9


    ld a, h                                       ; $400f: $7c
    rst RST_38                                    ; $4010: $ff
    db $30, $cf                                   ; $4011: $30 $cf
    rst RST_38                                    ; $4013: $ff
    ld c, b                                       ; $4014: $48
    call $ceb4                                    ; $4015: $cd $b4 $ce
    or h                                          ; $4018: $b4
    add a                                         ; $4019: $87
    ld a, e                                       ; $401a: $7b
    add a                                         ; $401b: $87
    rst RST_38                                    ; $401c: $ff
    ld c, b                                       ; $401d: $48
    rst RST_38                                    ; $401e: $ff
    ld c, b                                       ; $401f: $48
    rst RST_38                                    ; $4020: $ff
    nop                                           ; $4021: $00
    rst RST_38                                    ; $4022: $ff
    rst RST_38                                    ; $4023: $ff
    nop                                           ; $4024: $00
    dec a                                         ; $4025: $3d
    nop                                           ; $4026: $00
    adc e                                         ; $4027: $8b
    nop                                           ; $4028: $00
    db $d3                                        ; $4029: $d3
    ldh [rIE], a                                  ; $402a: $e0 $ff
    and b                                         ; $402c: $a0
    ld l, e                                       ; $402d: $6b
    ld b, b                                       ; $402e: $40
    ld [$00ff], a                                 ; $402f: $ea $ff $00
    rst RST_38                                    ; $4032: $ff
    rst RST_38                                    ; $4033: $ff
    nop                                           ; $4034: $00
    sbc e                                         ; $4035: $9b
    nop                                           ; $4036: $00
    ld e, h                                       ; $4037: $5c
    nop                                           ; $4038: $00
    ld a, h                                       ; $4039: $7c
    nop                                           ; $403a: $00
    ld e, l                                       ; $403b: $5d
    ld bc, $005d                                  ; $403c: $01 $5d $00
    cp $ff                                        ; $403f: $fe $ff
    nop                                           ; $4041: $00
    rst RST_38                                    ; $4042: $ff
    rst RST_38                                    ; $4043: $ff
    nop                                           ; $4044: $00
    ld e, a                                       ; $4045: $5f
    nop                                           ; $4046: $00
    rst RST_08                                    ; $4047: $cf
    ld a, c                                       ; $4048: $79
    ld sp, hl                                     ; $4049: $f9
    rst RST_38                                    ; $404a: $ff
    add [hl]                                      ; $404b: $86
    ld sp, hl                                     ; $404c: $f9
    ccf                                           ; $404d: $3f
    db $fc                                        ; $404e: $fc
    add a                                         ; $404f: $87
    rst RST_38                                    ; $4050: $ff
    nop                                           ; $4051: $00
    rst RST_38                                    ; $4052: $ff
    rst RST_38                                    ; $4053: $ff
    nop                                           ; $4054: $00
    sbc e                                         ; $4055: $9b
    nop                                           ; $4056: $00
    ld e, h                                       ; $4057: $5c
    ld sp, hl                                     ; $4058: $f9
    db $fd                                        ; $4059: $fd
    rst RST_38                                    ; $405a: $ff
    ld b, $ff                                     ; $405b: $06 $ff
    sbc h                                         ; $405d: $9c
    rst RST_30                                    ; $405e: $f7
    sbc h                                         ; $405f: $9c
    rst RST_38                                    ; $4060: $ff
    nop                                           ; $4061: $00
    rst RST_38                                    ; $4062: $ff
    rst RST_38                                    ; $4063: $ff
    nop                                           ; $4064: $00
    db $db                                        ; $4065: $db
    nop                                           ; $4066: $00
    ld a, e                                       ; $4067: $7b
    rst RST_20                                    ; $4068: $e7
    rst RST_28                                    ; $4069: $ef
    rst RST_38                                    ; $406a: $ff
    jr @+$01                                      ; $406b: $18 $ff

    ret                                           ; $406d: $c9


    rst RST_38                                    ; $406e: $ff
    ret                                           ; $406f: $c9


    rst RST_38                                    ; $4070: $ff
    nop                                           ; $4071: $00
    rst RST_38                                    ; $4072: $ff
    rst RST_38                                    ; $4073: $ff
    nop                                           ; $4074: $00
    adc [hl]                                      ; $4075: $8e
    nop                                           ; $4076: $00
    rst RST_08                                    ; $4077: $cf
    ret nz                                        ; $4078: $c0

    rst RST_30                                    ; $4079: $f7
    ldh [$ff3e], a                                ; $407a: $e0 $3e
    ldh a, [$ff97]                                ; $407c: $f0 $97
    ldh a, [$ff97]                                ; $407e: $f0 $97
    rst RST_38                                    ; $4080: $ff
    nop                                           ; $4081: $00
    rst RST_38                                    ; $4082: $ff
    rst RST_38                                    ; $4083: $ff
    nop                                           ; $4084: $00
    sbc e                                         ; $4085: $9b
    nop                                           ; $4086: $00
    ld e, h                                       ; $4087: $5c
    nop                                           ; $4088: $00
    ld a, h                                       ; $4089: $7c
    nop                                           ; $408a: $00
    ld e, l                                       ; $408b: $5d
    nop                                           ; $408c: $00
    ld e, l                                       ; $408d: $5d
    nop                                           ; $408e: $00
    sbc [hl]                                      ; $408f: $9e
    rst RST_38                                    ; $4090: $ff
    ld bc, $fdff                                  ; $4091: $01 $ff $fd
    inc bc                                        ; $4094: $03
    reti                                          ; $4095: $d9


    inc bc                                        ; $4096: $03
    ld a, c                                       ; $4097: $79
    inc bc                                        ; $4098: $03
    db $ed                                        ; $4099: $ed
    inc bc                                        ; $409a: $03
    db $ed                                        ; $409b: $ed
    inc bc                                        ; $409c: $03
    xor l                                         ; $409d: $ad
    inc bc                                        ; $409e: $03
    ld e, l                                       ; $409f: $5d
    ld a, [hl]                                    ; $40a0: $7e
    ld a, [hl]                                    ; $40a1: $7e
    ld a, l                                       ; $40a2: $7d
    ld a, l                                       ; $40a3: $7d
    ei                                            ; $40a4: $fb
    ei                                            ; $40a5: $fb
    ei                                            ; $40a6: $fb
    ei                                            ; $40a7: $fb
    rst RST_30                                    ; $40a8: $f7
    rst RST_30                                    ; $40a9: $f7
    rst RST_30                                    ; $40aa: $f7
    rst RST_30                                    ; $40ab: $f7
    rst RST_30                                    ; $40ac: $f7
    rst RST_30                                    ; $40ad: $f7
    db $e3                                        ; $40ae: $e3
    db $e3                                        ; $40af: $e3
    db $fc                                        ; $40b0: $fc
    db $fc                                        ; $40b1: $fc
    db $fd                                        ; $40b2: $fd
    db $fd                                        ; $40b3: $fd
    ei                                            ; $40b4: $fb
    ei                                            ; $40b5: $fb
    rst RST_30                                    ; $40b6: $f7
    rst RST_30                                    ; $40b7: $f7
    rst RST_28                                    ; $40b8: $ef
    rst RST_28                                    ; $40b9: $ef
    call c, $b8dc                                 ; $40ba: $dc $dc $b8
    cp b                                          ; $40bd: $b8
    ld [hl], b                                    ; $40be: $70
    ld [hl], b                                    ; $40bf: $70
    ld a, a                                       ; $40c0: $7f
    ld a, a                                       ; $40c1: $7f
    rst RST_38                                    ; $40c2: $ff
    rst RST_38                                    ; $40c3: $ff
    rst RST_38                                    ; $40c4: $ff
    rst RST_38                                    ; $40c5: $ff
    db $fc                                        ; $40c6: $fc
    db $fc                                        ; $40c7: $fc
    ei                                            ; $40c8: $fb
    ei                                            ; $40c9: $fb
    halt                                          ; $40ca: $76
    halt                                          ; $40cb: $76
    ld l, $2e                                     ; $40cc: $2e $2e
    inc c                                         ; $40ce: $0c
    inc c                                         ; $40cf: $0c
    rst RST_38                                    ; $40d0: $ff
    rst RST_38                                    ; $40d1: $ff
    rst RST_38                                    ; $40d2: $ff
    rst RST_38                                    ; $40d3: $ff
    rrca                                          ; $40d4: $0f
    rrca                                          ; $40d5: $0f
    rst RST_30                                    ; $40d6: $f7
    rst RST_30                                    ; $40d7: $f7
    dec sp                                        ; $40d8: $3b
    dec sp                                        ; $40d9: $3b
    dec de                                        ; $40da: $1b
    dec de                                        ; $40db: $1b
    dec de                                        ; $40dc: $1b
    dec de                                        ; $40dd: $1b
    rla                                           ; $40de: $17
    rla                                           ; $40df: $17
    rst RST_38                                    ; $40e0: $ff
    rst RST_38                                    ; $40e1: $ff
    rst RST_38                                    ; $40e2: $ff
    rst RST_38                                    ; $40e3: $ff
    ldh a, [$fff0]                                ; $40e4: $f0 $f0
    rst RST_28                                    ; $40e6: $ef
    rst RST_28                                    ; $40e7: $ef
    call c, $d8dc                                 ; $40e8: $dc $dc $d8
    ret c                                         ; $40eb: $d8

    ret c                                         ; $40ec: $d8

    ret c                                         ; $40ed: $d8

    add sp, -$18                                  ; $40ee: $e8 $e8
    cp $fe                                        ; $40f0: $fe $fe
    rst RST_38                                    ; $40f2: $ff
    rst RST_38                                    ; $40f3: $ff
    rst RST_38                                    ; $40f4: $ff
    rst RST_38                                    ; $40f5: $ff
    ccf                                           ; $40f6: $3f
    ccf                                           ; $40f7: $3f
    rst RST_18                                    ; $40f8: $df
    rst RST_18                                    ; $40f9: $df
    ld l, [hl]                                    ; $40fa: $6e
    ld l, [hl]                                    ; $40fb: $6e
    ld [hl], h                                    ; $40fc: $74
    ld [hl], h                                    ; $40fd: $74
    jr nc, jr_009_4130                            ; $40fe: $30 $30

    push bc                                       ; $4100: $c5
    ld a, [hl]                                    ; $4101: $7e
    jp nz, $c56a                                  ; $4102: $c2 $6a $c5

    ld a, [hl]                                    ; $4105: $7e
    push bc                                       ; $4106: $c5
    ld a, h                                       ; $4107: $7c
    bit 7, h                                      ; $4108: $cb $7c
    jp z, $f379                                   ; $410a: $ca $79 $f3

    rra                                           ; $410d: $1f
    rst RST_38                                    ; $410e: $ff
    rst RST_38                                    ; $410f: $ff
    cp $49                                        ; $4110: $fe $49
    db $fd                                        ; $4112: $fd
    ld bc, $01fe                                  ; $4113: $01 $fe $01
    adc $00                                       ; $4116: $ce $00
    inc sp                                        ; $4118: $33
    ld a, b                                       ; $4119: $78
    call z, $fffe                                 ; $411a: $cc $fe $ff
    inc bc                                        ; $411d: $03
    rst RST_38                                    ; $411e: $ff
    rst RST_38                                    ; $411f: $ff
    add b                                         ; $4120: $80
    rst RST_30                                    ; $4121: $f7
    nop                                           ; $4122: $00
    sbc [hl]                                      ; $4123: $9e
    add b                                         ; $4124: $80
    rst RST_38                                    ; $4125: $ff
    add b                                         ; $4126: $80
    di                                            ; $4127: $f3
    ld b, b                                       ; $4128: $40
    push hl                                       ; $4129: $e5
    ld b, b                                       ; $412a: $40
    ld a, a                                       ; $412b: $7f
    ccf                                           ; $412c: $3f
    ldh [rIE], a                                  ; $412d: $e0 $ff
    rst RST_38                                    ; $412f: $ff

jr_009_4130:
    nop                                           ; $4130: $00
    jp c, Jump_000_3b01                           ; $4131: $da $01 $3b

    nop                                           ; $4134: $00
    ld a, l                                       ; $4135: $7d
    nop                                           ; $4136: $00
    xor $00                                       ; $4137: $ee $00
    db $ed                                        ; $4139: $ed
    nop                                           ; $413a: $00
    jp Jump_000_00ff                              ; $413b: $c3 $ff $00


    rst RST_38                                    ; $413e: $ff
    rst RST_38                                    ; $413f: $ff
    cp $f3                                        ; $4140: $fe $f3
    cp $33                                        ; $4142: $fe $33
    db $fc                                        ; $4144: $fc
    add a                                         ; $4145: $87
    ld a, b                                       ; $4146: $78
    ld a, d                                       ; $4147: $7a
    nop                                           ; $4148: $00
    db $ec                                        ; $4149: $ec
    nop                                           ; $414a: $00
    db $ec                                        ; $414b: $ec
    rst RST_38                                    ; $414c: $ff
    nop                                           ; $414d: $00
    rst RST_38                                    ; $414e: $ff
    rst RST_38                                    ; $414f: $ff
    rst RST_30                                    ; $4150: $f7
    sbc h                                         ; $4151: $9c
    rst RST_30                                    ; $4152: $f7
    sub h                                         ; $4153: $94
    rst RST_30                                    ; $4154: $f7
    sub h                                         ; $4155: $94
    ld h, e                                       ; $4156: $63
    rst RST_38                                    ; $4157: $ff
    nop                                           ; $4158: $00
    ld l, a                                       ; $4159: $6f
    nop                                           ; $415a: $00
    jp Jump_000_00ff                              ; $415b: $c3 $ff $00


    rst RST_38                                    ; $415e: $ff
    rst RST_38                                    ; $415f: $ff
    rst RST_38                                    ; $4160: $ff
    ld [$c9ff], sp                                ; $4161: $08 $ff $c9
    rst RST_38                                    ; $4164: $ff
    ret                                           ; $4165: $c9


    ld [hl], $f7                                  ; $4166: $36 $f7
    nop                                           ; $4168: $00
    ret                                           ; $4169: $c9


    nop                                           ; $416a: $00
    ld a, [hl]                                    ; $416b: $7e
    rst RST_38                                    ; $416c: $ff
    nop                                           ; $416d: $00
    rst RST_38                                    ; $416e: $ff
    rst RST_38                                    ; $416f: $ff
    ldh [$ff3a], a                                ; $4170: $e0 $3a
    ldh a, [$ff9d]                                ; $4172: $f0 $9d
    ldh a, [$ff9f]                                ; $4174: $f0 $9f
    ld h, b                                       ; $4176: $60
    rst RST_30                                    ; $4177: $f7
    nop                                           ; $4178: $00
    ld de, $d600                                  ; $4179: $11 $00 $d6
    rst RST_38                                    ; $417c: $ff
    nop                                           ; $417d: $00
    rst RST_38                                    ; $417e: $ff
    rst RST_38                                    ; $417f: $ff
    nop                                           ; $4180: $00
    jp c, Jump_009_6500                           ; $4181: $da $00 $65

    nop                                           ; $4184: $00
    ld [hl], a                                    ; $4185: $77
    nop                                           ; $4186: $00
    cp $00                                        ; $4187: $fe $00
    ld l, a                                       ; $4189: $6f
    nop                                           ; $418a: $00
    jp Jump_000_00ff                              ; $418b: $c3 $ff $00


    rst RST_38                                    ; $418e: $ff
    rst RST_38                                    ; $418f: $ff
    inc bc                                        ; $4190: $03
    call $ed03                                    ; $4191: $cd $03 $ed
    inc bc                                        ; $4194: $03
    ld sp, hl                                     ; $4195: $f9
    inc bc                                        ; $4196: $03
    pop de                                        ; $4197: $d1
    inc bc                                        ; $4198: $03
    ret                                           ; $4199: $c9


    inc bc                                        ; $419a: $03
    ld a, l                                       ; $419b: $7d
    rst RST_38                                    ; $419c: $ff
    ld bc, rIE                                    ; $419d: $01 $ff $ff
    call c, $bedc                                 ; $41a0: $dc $dc $be
    cp [hl]                                       ; $41a3: $be
    cp [hl]                                       ; $41a4: $be
    cp [hl]                                       ; $41a5: $be
    ld a, a                                       ; $41a6: $7f
    ld a, a                                       ; $41a7: $7f
    ld a, a                                       ; $41a8: $7f
    ld a, a                                       ; $41a9: $7f
    ld a, a                                       ; $41aa: $7f
    ld a, a                                       ; $41ab: $7f
    ld a, a                                       ; $41ac: $7f
    ld a, a                                       ; $41ad: $7f
    ld a, a                                       ; $41ae: $7f
    ld a, a                                       ; $41af: $7f
    ldh a, [$fff0]                                ; $41b0: $f0 $f0
    pop af                                        ; $41b2: $f1
    pop af                                        ; $41b3: $f1
    db $e3                                        ; $41b4: $e3
    db $e3                                        ; $41b5: $e3
    ld h, e                                       ; $41b6: $63
    ld h, e                                       ; $41b7: $63
    ld h, a                                       ; $41b8: $67
    ld h, a                                       ; $41b9: $67
    ld h, [hl]                                    ; $41ba: $66
    ld h, [hl]                                    ; $41bb: $66
    dec c                                         ; $41bc: $0d
    dec c                                         ; $41bd: $0d
    dec c                                         ; $41be: $0d
    dec c                                         ; $41bf: $0d
    dec e                                         ; $41c0: $1d
    dec e                                         ; $41c1: $1d
    sbc c                                         ; $41c2: $99
    sbc c                                         ; $41c3: $99
    db $db                                        ; $41c4: $db
    db $db                                        ; $41c5: $db
    db $eb                                        ; $41c6: $eb
    db $eb                                        ; $41c7: $eb
    db $eb                                        ; $41c8: $eb
    db $eb                                        ; $41c9: $eb
    inc l                                         ; $41ca: $2c
    inc l                                         ; $41cb: $2c
    db $db                                        ; $41cc: $db
    db $db                                        ; $41cd: $db
    db $db                                        ; $41ce: $db
    db $db                                        ; $41cf: $db
    sub $d6                                       ; $41d0: $d6 $d6
    adc $ce                                       ; $41d2: $ce $ce
    call $ddcd                                    ; $41d4: $cd $cd $dd
    db $dd                                        ; $41d7: $dd
    db $db                                        ; $41d8: $db
    db $db                                        ; $41d9: $db
    rst RST_10                                    ; $41da: $d7
    rst RST_10                                    ; $41db: $d7
    ld c, a                                       ; $41dc: $4f
    ld c, a                                       ; $41dd: $4f
    ld e, a                                       ; $41de: $5f
    ld e, a                                       ; $41df: $5f
    ld l, e                                       ; $41e0: $6b
    ld l, e                                       ; $41e1: $6b
    ld [hl], e                                    ; $41e2: $73
    ld [hl], e                                    ; $41e3: $73
    or e                                          ; $41e4: $b3
    or e                                          ; $41e5: $b3
    cp e                                          ; $41e6: $bb
    cp e                                          ; $41e7: $bb
    db $db                                        ; $41e8: $db
    db $db                                        ; $41e9: $db
    db $eb                                        ; $41ea: $eb
    db $eb                                        ; $41eb: $eb
    ldh a, [c]                                    ; $41ec: $f2
    ldh a, [c]                                    ; $41ed: $f2
    ld a, [$b8fa]                                 ; $41ee: $fa $fa $b8
    cp b                                          ; $41f1: $b8
    sbc c                                         ; $41f2: $99
    sbc c                                         ; $41f3: $99
    db $db                                        ; $41f4: $db
    db $db                                        ; $41f5: $db
    rst RST_10                                    ; $41f6: $d7
    rst RST_10                                    ; $41f7: $d7
    rst RST_10                                    ; $41f8: $d7
    rst RST_10                                    ; $41f9: $d7
    inc [hl]                                      ; $41fa: $34
    inc [hl]                                      ; $41fb: $34
    db $db                                        ; $41fc: $db
    db $db                                        ; $41fd: $db
    db $db                                        ; $41fe: $db
    db $db                                        ; $41ff: $db
    rst RST_38                                    ; $4200: $ff
    nop                                           ; $4201: $00
    rst RST_38                                    ; $4202: $ff
    ld a, a                                       ; $4203: $7f
    ret nz                                        ; $4204: $c0

    ld e, e                                       ; $4205: $5b
    ret nz                                        ; $4206: $c0

    ld e, h                                       ; $4207: $5c
    ret nz                                        ; $4208: $c0

    ld a, h                                       ; $4209: $7c
    ret nz                                        ; $420a: $c0

    ld e, l                                       ; $420b: $5d
    ret nz                                        ; $420c: $c0

    ld e, l                                       ; $420d: $5d
    ret nz                                        ; $420e: $c0

    ld e, [hl]                                    ; $420f: $5e
    rst RST_38                                    ; $4210: $ff
    nop                                           ; $4211: $00
    rst RST_38                                    ; $4212: $ff
    rst RST_38                                    ; $4213: $ff
    nop                                           ; $4214: $00
    db $db                                        ; $4215: $db
    nop                                           ; $4216: $00
    ld a, e                                       ; $4217: $7b
    rrca                                          ; $4218: $0f
    ld e, a                                       ; $4219: $5f
    rra                                           ; $421a: $1f
    db $10                                        ; $421b: $10
    rrca                                          ; $421c: $0f
    call c, $e407                                 ; $421d: $dc $07 $e4
    rst RST_38                                    ; $4220: $ff
    nop                                           ; $4221: $00
    rst RST_38                                    ; $4222: $ff
    rst RST_38                                    ; $4223: $ff
    nop                                           ; $4224: $00
    db $db                                        ; $4225: $db
    nop                                           ; $4226: $00
    ld a, e                                       ; $4227: $7b
    db $db                                        ; $4228: $db
    rst RST_38                                    ; $4229: $ff
    rst RST_38                                    ; $422a: $ff
    inc h                                         ; $422b: $24
    rst RST_38                                    ; $422c: $ff
    db $e4                                        ; $422d: $e4
    cp a                                          ; $422e: $bf
    db $e4                                        ; $422f: $e4
    rst RST_38                                    ; $4230: $ff
    nop                                           ; $4231: $00
    rst RST_38                                    ; $4232: $ff
    rst RST_38                                    ; $4233: $ff
    nop                                           ; $4234: $00
    sbc e                                         ; $4235: $9b
    nop                                           ; $4236: $00
    ld e, h                                       ; $4237: $5c
    rla                                           ; $4238: $17
    cp a                                          ; $4239: $bf
    cp a                                          ; $423a: $bf
    add sp, -$01                                  ; $423b: $e8 $ff
    ld c, c                                       ; $423d: $49
    rst RST_38                                    ; $423e: $ff
    ld [$00ff], sp                                ; $423f: $08 $ff $00
    rst RST_38                                    ; $4242: $ff
    rst RST_38                                    ; $4243: $ff
    nop                                           ; $4244: $00
    ld e, a                                       ; $4245: $5f
    nop                                           ; $4246: $00
    rst RST_08                                    ; $4247: $cf
    pop hl                                        ; $4248: $e1
    ld sp, hl                                     ; $4249: $f9
    di                                            ; $424a: $f3
    ld e, $e1                                     ; $424b: $1e $e1
    rst RST_30                                    ; $424d: $f7
    ldh [$ff37], a                                ; $424e: $e0 $37
    rst RST_38                                    ; $4250: $ff
    nop                                           ; $4251: $00
    rst RST_38                                    ; $4252: $ff
    rst RST_38                                    ; $4253: $ff
    nop                                           ; $4254: $00
    sbc e                                         ; $4255: $9b
    nop                                           ; $4256: $00
    ld e, h                                       ; $4257: $5c
    ei                                            ; $4258: $fb
    rst RST_38                                    ; $4259: $ff
    rst RST_38                                    ; $425a: $ff
    inc b                                         ; $425b: $04
    rst RST_38                                    ; $425c: $ff
    sbc h                                         ; $425d: $9c
    rst RST_30                                    ; $425e: $f7
    sbc h                                         ; $425f: $9c
    rst RST_38                                    ; $4260: $ff
    nop                                           ; $4261: $00
    rst RST_38                                    ; $4262: $ff
    rst RST_38                                    ; $4263: $ff
    nop                                           ; $4264: $00
    db $db                                        ; $4265: $db
    nop                                           ; $4266: $00
    ld a, e                                       ; $4267: $7b
    and $ef                                       ; $4268: $e6 $ef
    rst RST_38                                    ; $426a: $ff
    add hl, de                                    ; $426b: $19
    rst RST_38                                    ; $426c: $ff
    ret                                           ; $426d: $c9


    rst RST_38                                    ; $426e: $ff
    ret                                           ; $426f: $c9


    rst RST_38                                    ; $4270: $ff
    nop                                           ; $4271: $00
    rst RST_38                                    ; $4272: $ff
    rst RST_38                                    ; $4273: $ff
    nop                                           ; $4274: $00
    adc [hl]                                      ; $4275: $8e
    nop                                           ; $4276: $00
    rst RST_08                                    ; $4277: $cf
    ld a, c                                       ; $4278: $79
    rst RST_38                                    ; $4279: $ff
    rst RST_38                                    ; $427a: $ff
    add [hl]                                      ; $427b: $86
    rst RST_38                                    ; $427c: $ff
    ld [hl-], a                                   ; $427d: $32
    rst RST_38                                    ; $427e: $ff
    ld [hl-], a                                   ; $427f: $32
    rst RST_38                                    ; $4280: $ff
    nop                                           ; $4281: $00
    rst RST_38                                    ; $4282: $ff
    rst RST_38                                    ; $4283: $ff
    nop                                           ; $4284: $00
    sbc e                                         ; $4285: $9b
    nop                                           ; $4286: $00
    ld e, h                                       ; $4287: $5c
    add b                                         ; $4288: $80
    db $fc                                        ; $4289: $fc
    ret nz                                        ; $428a: $c0

    ld e, l                                       ; $428b: $5d
    ret nz                                        ; $428c: $c0

    ld e, l                                       ; $428d: $5d
    ret nz                                        ; $428e: $c0

    ld e, [hl]                                    ; $428f: $5e
    rst RST_38                                    ; $4290: $ff
    ld bc, $fdff                                  ; $4291: $01 $ff $fd
    inc bc                                        ; $4294: $03
    reti                                          ; $4295: $d9


    inc bc                                        ; $4296: $03
    ld a, c                                       ; $4297: $79
    inc bc                                        ; $4298: $03
    db $ed                                        ; $4299: $ed
    inc bc                                        ; $429a: $03
    db $ed                                        ; $429b: $ed
    inc bc                                        ; $429c: $03
    xor l                                         ; $429d: $ad
    inc bc                                        ; $429e: $03
    ld e, l                                       ; $429f: $5d
    ld a, a                                       ; $42a0: $7f
    ld a, a                                       ; $42a1: $7f
    ld a, a                                       ; $42a2: $7f
    ld a, a                                       ; $42a3: $7f
    ld a, a                                       ; $42a4: $7f
    ld a, a                                       ; $42a5: $7f
    ld a, $3e                                     ; $42a6: $3e $3e
    ld a, $3e                                     ; $42a8: $3e $3e
    inc e                                         ; $42aa: $1c
    inc e                                         ; $42ab: $1c
    nop                                           ; $42ac: $00
    nop                                           ; $42ad: $00
    nop                                           ; $42ae: $00
    nop                                           ; $42af: $00
    dec hl                                        ; $42b0: $2b
    dec hl                                        ; $42b1: $2b
    dec hl                                        ; $42b2: $2b
    dec hl                                        ; $42b3: $2b
    ld a, e                                       ; $42b4: $7b
    ld a, e                                       ; $42b5: $7b
    ld a, e                                       ; $42b6: $7b
    ld a, e                                       ; $42b7: $7b
    ld a, e                                       ; $42b8: $7b
    ld a, e                                       ; $42b9: $7b
    ei                                            ; $42ba: $fb
    ei                                            ; $42bb: $fb
    ei                                            ; $42bc: $fb
    ei                                            ; $42bd: $fb
    ei                                            ; $42be: $fb
    ei                                            ; $42bf: $fb
    db $eb                                        ; $42c0: $eb
    db $eb                                        ; $42c1: $eb
    jp hl                                         ; $42c2: $e9


    jp hl                                         ; $42c3: $e9


    adc b                                         ; $42c4: $88
    adc b                                         ; $42c5: $88
    ld [$0a08], sp                                ; $42c6: $08 $08 $0a
    ld a, [bc]                                    ; $42c9: $0a
    ld a, [bc]                                    ; $42ca: $0a
    ld a, [bc]                                    ; $42cb: $0a
    jr z, @+$2a                                   ; $42cc: $28 $28

    jr z, jr_009_42f8                             ; $42ce: $28 $28

    ld e, a                                       ; $42d0: $5f
    ld e, a                                       ; $42d1: $5f
    ld e, a                                       ; $42d2: $5f
    ld e, a                                       ; $42d3: $5f
    ld e, a                                       ; $42d4: $5f
    ld e, a                                       ; $42d5: $5f
    ld e, a                                       ; $42d6: $5f
    ld e, a                                       ; $42d7: $5f
    ld e, a                                       ; $42d8: $5f
    ld e, a                                       ; $42d9: $5f
    rlca                                          ; $42da: $07
    rlca                                          ; $42db: $07
    ld a, e                                       ; $42dc: $7b
    ld a, e                                       ; $42dd: $7b
    db $fd                                        ; $42de: $fd
    db $fd                                        ; $42df: $fd
    ld a, [$fafa]                                 ; $42e0: $fa $fa $fa
    ld a, [$fafa]                                 ; $42e3: $fa $fa $fa
    ld a, [$fafa]                                 ; $42e6: $fa $fa $fa
    ld a, [$e0e0]                                 ; $42e9: $fa $e0 $e0
    sbc $de                                       ; $42ec: $de $de
    cp a                                          ; $42ee: $bf
    cp a                                          ; $42ef: $bf
    rst RST_10                                    ; $42f0: $d7
    rst RST_10                                    ; $42f1: $d7
    sub a                                         ; $42f2: $97
    sub a                                         ; $42f3: $97
    ld de, $1011                                  ; $42f4: $11 $11 $10
    db $10                                        ; $42f7: $10

jr_009_42f8:
    ld d, b                                       ; $42f8: $50
    ld d, b                                       ; $42f9: $50
    ld d, b                                       ; $42fa: $50
    ld d, b                                       ; $42fb: $50
    inc d                                         ; $42fc: $14
    inc d                                         ; $42fd: $14
    inc d                                         ; $42fe: $14
    inc d                                         ; $42ff: $14
    ret nz                                        ; $4300: $c0

    ld e, d                                       ; $4301: $5a
    ret nz                                        ; $4302: $c0

    ld a, l                                       ; $4303: $7d
    ret nz                                        ; $4304: $c0

    ld a, a                                       ; $4305: $7f
    ret nz                                        ; $4306: $c0

    ld e, [hl]                                    ; $4307: $5e
    ret nz                                        ; $4308: $c0

    ld h, a                                       ; $4309: $67
    ret nz                                        ; $430a: $c0

    ld d, e                                       ; $430b: $53
    rst RST_38                                    ; $430c: $ff
    nop                                           ; $430d: $00
    rst RST_38                                    ; $430e: $ff
    rst RST_38                                    ; $430f: $ff
    rlca                                          ; $4310: $07
    db $f4                                        ; $4311: $f4
    rlca                                          ; $4312: $07
    call c, $fc07                                 ; $4313: $dc $07 $fc
    inc bc                                        ; $4316: $03
    db $d3                                        ; $4317: $d3
    nop                                           ; $4318: $00
    ret                                           ; $4319: $c9


    nop                                           ; $431a: $00
    ld a, [hl]                                    ; $431b: $7e
    rst RST_38                                    ; $431c: $ff
    nop                                           ; $431d: $00
    rst RST_38                                    ; $431e: $ff
    rst RST_38                                    ; $431f: $ff
    cp a                                          ; $4320: $bf
    db $e4                                        ; $4321: $e4
    cp a                                          ; $4322: $bf
    db $e4                                        ; $4323: $e4
    cp a                                          ; $4324: $bf
    db $e4                                        ; $4325: $e4
    dec de                                        ; $4326: $1b
    db $db                                        ; $4327: $db
    nop                                           ; $4328: $00
    ret                                           ; $4329: $c9


    nop                                           ; $432a: $00
    ld a, [hl]                                    ; $432b: $7e
    rst RST_38                                    ; $432c: $ff
    nop                                           ; $432d: $00
    rst RST_38                                    ; $432e: $ff
    rst RST_38                                    ; $432f: $ff
    rst RST_38                                    ; $4330: $ff
    xor c                                         ; $4331: $a9
    rst RST_38                                    ; $4332: $ff
    jp hl                                         ; $4333: $e9


    cp a                                          ; $4334: $bf
    add sp, $17                                   ; $4335: $e8 $17
    rst RST_38                                    ; $4337: $ff
    nop                                           ; $4338: $00
    db $ed                                        ; $4339: $ed
    nop                                           ; $433a: $00
    jp Jump_000_00ff                              ; $433b: $c3 $ff $00


    rst RST_38                                    ; $433e: $ff
    rst RST_38                                    ; $433f: $ff
    ret nz                                        ; $4340: $c0

    ei                                            ; $4341: $fb
    ldh [rIE], a                                  ; $4342: $e0 $ff
    ldh a, [rNR31]                                ; $4344: $f0 $1b
    ldh [$fffa], a                                ; $4346: $e0 $fa
    nop                                           ; $4348: $00
    db $ec                                        ; $4349: $ec
    nop                                           ; $434a: $00
    db $ec                                        ; $434b: $ec
    rst RST_38                                    ; $434c: $ff
    nop                                           ; $434d: $00
    rst RST_38                                    ; $434e: $ff
    rst RST_38                                    ; $434f: $ff
    rst RST_30                                    ; $4350: $f7
    sbc h                                         ; $4351: $9c
    rst RST_30                                    ; $4352: $f7
    sub h                                         ; $4353: $94
    rst RST_30                                    ; $4354: $f7
    sub h                                         ; $4355: $94
    ld h, e                                       ; $4356: $63
    rst RST_38                                    ; $4357: $ff
    nop                                           ; $4358: $00
    ld l, a                                       ; $4359: $6f
    nop                                           ; $435a: $00
    jp Jump_000_00ff                              ; $435b: $c3 $ff $00


    rst RST_38                                    ; $435e: $ff
    rst RST_38                                    ; $435f: $ff
    rst RST_38                                    ; $4360: $ff
    add hl, de                                    ; $4361: $19
    rst RST_38                                    ; $4362: $ff
    ret                                           ; $4363: $c9


    rst RST_38                                    ; $4364: $ff
    ret                                           ; $4365: $c9


    ld [hl], $f7                                  ; $4366: $36 $f7
    nop                                           ; $4368: $00
    ret                                           ; $4369: $c9


    nop                                           ; $436a: $00
    ld a, [hl]                                    ; $436b: $7e
    rst RST_38                                    ; $436c: $ff
    nop                                           ; $436d: $00
    rst RST_38                                    ; $436e: $ff
    rst RST_38                                    ; $436f: $ff
    rst RST_38                                    ; $4370: $ff
    ld [bc], a                                    ; $4371: $02
    rst RST_38                                    ; $4372: $ff
    ld [hl-], a                                   ; $4373: $32
    rst RST_38                                    ; $4374: $ff
    ld [hl-], a                                   ; $4375: $32
    call Call_000_00ff                            ; $4376: $cd $ff $00
    ld de, $d600                                  ; $4379: $11 $00 $d6
    rst RST_38                                    ; $437c: $ff
    nop                                           ; $437d: $00
    rst RST_38                                    ; $437e: $ff
    rst RST_38                                    ; $437f: $ff
    ret nz                                        ; $4380: $c0

    ld e, d                                       ; $4381: $5a
    ld hl, sp+$7d                                 ; $4382: $f8 $7d
    db $fc                                        ; $4384: $fc
    rlca                                          ; $4385: $07
    ld hl, sp-$02                                 ; $4386: $f8 $fe
    nop                                           ; $4388: $00
    ld l, a                                       ; $4389: $6f
    nop                                           ; $438a: $00
    jp Jump_000_00ff                              ; $438b: $c3 $ff $00


    rst RST_38                                    ; $438e: $ff
    rst RST_38                                    ; $438f: $ff
    inc bc                                        ; $4390: $03
    call $ed03                                    ; $4391: $cd $03 $ed
    inc bc                                        ; $4394: $03
    ld sp, hl                                     ; $4395: $f9
    inc bc                                        ; $4396: $03
    pop de                                        ; $4397: $d1
    inc bc                                        ; $4398: $03
    ret                                           ; $4399: $c9


    inc bc                                        ; $439a: $03
    ld a, l                                       ; $439b: $7d
    rst RST_38                                    ; $439c: $ff
    ld bc, rIE                                    ; $439d: $01 $ff $ff
    ld [bc], a                                    ; $43a0: $02
    ld [bc], a                                    ; $43a1: $02
    ld [bc], a                                    ; $43a2: $02
    ld [bc], a                                    ; $43a3: $02
    ld b, $06                                     ; $43a4: $06 $06
    rlca                                          ; $43a6: $07
    rlca                                          ; $43a7: $07
    rrca                                          ; $43a8: $0f
    rrca                                          ; $43a9: $0f
    ld l, a                                       ; $43aa: $6f
    ld l, a                                       ; $43ab: $6f
    rst RST_30                                    ; $43ac: $f7
    rst RST_30                                    ; $43ad: $f7
    rst RST_30                                    ; $43ae: $f7
    rst RST_30                                    ; $43af: $f7
    ei                                            ; $43b0: $fb
    ei                                            ; $43b1: $fb
    cp e                                          ; $43b2: $bb
    cp e                                          ; $43b3: $bb
    ld e, e                                       ; $43b4: $5b
    ld e, e                                       ; $43b5: $5b
    db $db                                        ; $43b6: $db
    db $db                                        ; $43b7: $db
    db $dd                                        ; $43b8: $dd
    db $dd                                        ; $43b9: $dd
    db $dd                                        ; $43ba: $dd
    db $dd                                        ; $43bb: $dd
    sbc $de                                       ; $43bc: $de $de
    cp a                                          ; $43be: $bf
    cp a                                          ; $43bf: $bf
    dec l                                         ; $43c0: $2d
    dec l                                         ; $43c1: $2d
    dec c                                         ; $43c2: $0d
    dec c                                         ; $43c3: $0d
    dec bc                                        ; $43c4: $0b
    dec bc                                        ; $43c5: $0b
    dec bc                                        ; $43c6: $0b
    dec bc                                        ; $43c7: $0b
    adc a                                         ; $43c8: $8f
    adc a                                         ; $43c9: $8f
    adc a                                         ; $43ca: $8f

jr_009_43cb:
    adc a                                         ; $43cb: $8f
    rst RST_18                                    ; $43cc: $df
    rst RST_18                                    ; $43cd: $df
    ccf                                           ; $43ce: $3f
    ccf                                           ; $43cf: $3f
    db $fd                                        ; $43d0: $fd
    db $fd                                        ; $43d1: $fd
    cp $fe                                        ; $43d2: $fe $fe
    cp $fe                                        ; $43d4: $fe $fe
    cp $fe                                        ; $43d6: $fe $fe
    cp $fe                                        ; $43d8: $fe $fe
    cp $fe                                        ; $43da: $fe $fe
    cp $fe                                        ; $43dc: $fe $fe
    cp $fe                                        ; $43de: $fe $fe
    cp a                                          ; $43e0: $bf
    cp a                                          ; $43e1: $bf
    ld a, a                                       ; $43e2: $7f
    ld a, a                                       ; $43e3: $7f
    ld a, a                                       ; $43e4: $7f
    ld a, a                                       ; $43e5: $7f
    ld a, a                                       ; $43e6: $7f
    ld a, a                                       ; $43e7: $7f
    ld a, a                                       ; $43e8: $7f
    ld a, a                                       ; $43e9: $7f
    ld a, a                                       ; $43ea: $7f
    ld a, a                                       ; $43eb: $7f
    ld a, a                                       ; $43ec: $7f
    ld a, a                                       ; $43ed: $7f
    ld a, a                                       ; $43ee: $7f

jr_009_43ef:
    ld a, a                                       ; $43ef: $7f
    or h                                          ; $43f0: $b4
    or h                                          ; $43f1: $b4
    or b                                          ; $43f2: $b0
    or b                                          ; $43f3: $b0
    ret nc                                        ; $43f4: $d0

    ret nc                                        ; $43f5: $d0

    ret nc                                        ; $43f6: $d0

    ret nc                                        ; $43f7: $d0

    pop af                                        ; $43f8: $f1
    pop af                                        ; $43f9: $f1
    pop af                                        ; $43fa: $f1
    pop af                                        ; $43fb: $f1
    ei                                            ; $43fc: $fb
    ei                                            ; $43fd: $fb
    db $fc                                        ; $43fe: $fc
    db $fc                                        ; $43ff: $fc
    rst RST_38                                    ; $4400: $ff
    rst RST_38                                    ; $4401: $ff
    ld [$c3c3], sp                                ; $4402: $08 $c3 $c3
    rst RST_30                                    ; $4405: $f7
    jp $c3f7                                      ; $4406: $c3 $f7 $c3


    rst RST_30                                    ; $4409: $f7
    jp $c3f7                                      ; $440a: $c3 $f7 $c3


    rst RST_30                                    ; $440d: $f7
    jp Jump_000_00f7                              ; $440e: $c3 $f7 $00


    rst RST_38                                    ; $4411: $ff
    rst RST_38                                    ; $4412: $ff
    nop                                           ; $4413: $00
    nop                                           ; $4414: $00
    nop                                           ; $4415: $00
    rst RST_38                                    ; $4416: $ff
    rst RST_38                                    ; $4417: $ff
    inc bc                                        ; $4418: $03
    inc a                                         ; $4419: $3c
    inc c                                         ; $441a: $0c
    pop af                                        ; $441b: $f1
    db $10                                        ; $441c: $10
    rst RST_20                                    ; $441d: $e7
    jr nz, jr_009_43ef                            ; $441e: $20 $cf

    sub d                                         ; $4420: $92
    nop                                           ; $4421: $00
    push bc                                       ; $4422: $c5
    nop                                           ; $4423: $00
    dec [hl]                                      ; $4424: $35
    nop                                           ; $4425: $00
    ld c, b                                       ; $4426: $48
    nop                                           ; $4427: $00
    sub $00                                       ; $4428: $d6 $00
    add hl, de                                    ; $442a: $19
    nop                                           ; $442b: $00
    ld [$5400], a                                 ; $442c: $ea $00 $54
    nop                                           ; $442f: $00
    nop                                           ; $4430: $00
    rst RST_38                                    ; $4431: $ff
    rst RST_38                                    ; $4432: $ff
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    nop                                           ; $4435: $00
    rst RST_38                                    ; $4436: $ff
    rst RST_38                                    ; $4437: $ff
    ret nz                                        ; $4438: $c0

    inc a                                         ; $4439: $3c
    jr nc, jr_009_43cb                            ; $443a: $30 $8f

    ld [$04e7], sp                                ; $443c: $08 $e7 $04
    di                                            ; $443f: $f3
    rst RST_38                                    ; $4440: $ff
    rst RST_38                                    ; $4441: $ff
    rrca                                          ; $4442: $0f
    rrca                                          ; $4443: $0f
    di                                            ; $4444: $f3
    di                                            ; $4445: $f3
    db $fd                                        ; $4446: $fd
    db $fd                                        ; $4447: $fd
    cp $fe                                        ; $4448: $fe $fe
    rst RST_38                                    ; $444a: $ff
    rst RST_38                                    ; $444b: $ff
    rst RST_38                                    ; $444c: $ff
    rst RST_38                                    ; $444d: $ff
    rst RST_38                                    ; $444e: $ff
    rst RST_38                                    ; $444f: $ff
    rst RST_38                                    ; $4450: $ff
    rst RST_38                                    ; $4451: $ff
    rst RST_38                                    ; $4452: $ff
    rst RST_38                                    ; $4453: $ff
    rst RST_38                                    ; $4454: $ff
    rst RST_38                                    ; $4455: $ff
    rst RST_38                                    ; $4456: $ff
    rst RST_38                                    ; $4457: $ff
    rst RST_38                                    ; $4458: $ff
    rst RST_38                                    ; $4459: $ff
    ld h, a                                       ; $445a: $67
    ld h, a                                       ; $445b: $67
    sbc e                                         ; $445c: $9b
    sbc e                                         ; $445d: $9b
    db $dd                                        ; $445e: $dd
    db $dd                                        ; $445f: $dd
    call nc, $d4d4                                ; $4460: $d4 $d4 $d4
    call nc, $dede                                ; $4463: $d4 $de $de
    sbc $de                                       ; $4466: $de $de
    sbc $de                                       ; $4468: $de $de
    rst RST_18                                    ; $446a: $df
    rst RST_18                                    ; $446b: $df
    rst RST_18                                    ; $446c: $df
    rst RST_18                                    ; $446d: $df
    rst RST_18                                    ; $446e: $df
    rst RST_18                                    ; $446f: $df
    cp $fe                                        ; $4470: $fe $fe
    cp $fe                                        ; $4472: $fe $fe
    cp $fe                                        ; $4474: $fe $fe
    ld a, h                                       ; $4476: $7c
    ld a, h                                       ; $4477: $7c
    ld a, h                                       ; $4478: $7c
    ld a, h                                       ; $4479: $7c
    jr c, jr_009_44b4                             ; $447a: $38 $38

    nop                                           ; $447c: $00
    nop                                           ; $447d: $00
    nop                                           ; $447e: $00
    nop                                           ; $447f: $00
    rst RST_28                                    ; $4480: $ef
    rst RST_28                                    ; $4481: $ef
    rst RST_28                                    ; $4482: $ef
    rst RST_28                                    ; $4483: $ef
    rst RST_28                                    ; $4484: $ef
    rst RST_28                                    ; $4485: $ef
    rst RST_28                                    ; $4486: $ef
    rst RST_28                                    ; $4487: $ef
    rst RST_20                                    ; $4488: $e7
    rst RST_20                                    ; $4489: $e7
    db $db                                        ; $448a: $db
    db $db                                        ; $448b: $db
    cp l                                          ; $448c: $bd
    cp l                                          ; $448d: $bd
    cp l                                          ; $448e: $bd
    cp l                                          ; $448f: $bd
    ld a, e                                       ; $4490: $7b
    ld a, e                                       ; $4491: $7b
    ld a, e                                       ; $4492: $7b
    ld a, e                                       ; $4493: $7b
    db $fd                                        ; $4494: $fd
    db $fd                                        ; $4495: $fd
    db $fd                                        ; $4496: $fd
    db $fd                                        ; $4497: $fd
    rst RST_38                                    ; $4498: $ff
    rst RST_38                                    ; $4499: $ff
    rst RST_38                                    ; $449a: $ff
    rst RST_38                                    ; $449b: $ff
    rst RST_38                                    ; $449c: $ff
    rst RST_38                                    ; $449d: $ff
    rst RST_38                                    ; $449e: $ff
    rst RST_38                                    ; $449f: $ff
    ld [hl], a                                    ; $44a0: $77
    ld [hl], a                                    ; $44a1: $77
    ld [hl], a                                    ; $44a2: $77
    ld [hl], a                                    ; $44a3: $77
    cp e                                          ; $44a4: $bb
    cp e                                          ; $44a5: $bb
    cp e                                          ; $44a6: $bb
    cp e                                          ; $44a7: $bb
    cp d                                          ; $44a8: $ba
    cp d                                          ; $44a9: $ba
    cp d                                          ; $44aa: $ba
    cp d                                          ; $44ab: $ba
    call c, $dcdc                                 ; $44ac: $dc $dc $dc
    call c, $b7b7                                 ; $44af: $dc $b7 $b7
    or a                                          ; $44b2: $b7
    or a                                          ; $44b3: $b7

jr_009_44b4:
    ld [hl], e                                    ; $44b4: $73
    ld [hl], e                                    ; $44b5: $73
    ld [hl], c                                    ; $44b6: $71
    ld [hl], c                                    ; $44b7: $71
    ldh a, [$fff0]                                ; $44b8: $f0 $f0
    ldh a, [$fff0]                                ; $44ba: $f0 $f0
    ldh a, [$fff0]                                ; $44bc: $f0 $f0
    ldh a, [$fff0]                                ; $44be: $f0 $f0
    rst RST_38                                    ; $44c0: $ff
    rst RST_38                                    ; $44c1: $ff
    rst RST_38                                    ; $44c2: $ff
    rst RST_38                                    ; $44c3: $ff
    rst RST_28                                    ; $44c4: $ef
    rst RST_28                                    ; $44c5: $ef
    rst RST_08                                    ; $44c6: $cf
    rst RST_08                                    ; $44c7: $cf
    rlca                                          ; $44c8: $07
    rlca                                          ; $44c9: $07
    rlca                                          ; $44ca: $07
    rlca                                          ; $44cb: $07
    inc bc                                        ; $44cc: $03
    inc bc                                        ; $44cd: $03
    inc bc                                        ; $44ce: $03
    inc bc                                        ; $44cf: $03
    cp $fe                                        ; $44d0: $fe $fe
    cp $fe                                        ; $44d2: $fe $fe
    cp $fe                                        ; $44d4: $fe $fe
    cp $fe                                        ; $44d6: $fe $fe
    cp $fe                                        ; $44d8: $fe $fe
    cp $fe                                        ; $44da: $fe $fe
    db $fc                                        ; $44dc: $fc
    db $fc                                        ; $44dd: $fc
    db $fc                                        ; $44de: $fc
    db $fc                                        ; $44df: $fc
    ld a, a                                       ; $44e0: $7f
    ld a, a                                       ; $44e1: $7f
    ld a, a                                       ; $44e2: $7f
    ld a, a                                       ; $44e3: $7f
    ld a, a                                       ; $44e4: $7f
    ld a, a                                       ; $44e5: $7f
    ld a, a                                       ; $44e6: $7f
    ld a, a                                       ; $44e7: $7f
    ld a, a                                       ; $44e8: $7f
    ld a, a                                       ; $44e9: $7f
    ld a, a                                       ; $44ea: $7f
    ld a, a                                       ; $44eb: $7f
    ccf                                           ; $44ec: $3f
    ccf                                           ; $44ed: $3f
    ccf                                           ; $44ee: $3f
    ccf                                           ; $44ef: $3f
    rst RST_38                                    ; $44f0: $ff
    rst RST_38                                    ; $44f1: $ff
    rst RST_38                                    ; $44f2: $ff
    rst RST_38                                    ; $44f3: $ff
    rst RST_30                                    ; $44f4: $f7
    rst RST_30                                    ; $44f5: $f7
    di                                            ; $44f6: $f3
    di                                            ; $44f7: $f3
    ldh [$ffe0], a                                ; $44f8: $e0 $e0
    ldh [$ffe0], a                                ; $44fa: $e0 $e0
    ret nz                                        ; $44fc: $c0

    ret nz                                        ; $44fd: $c0

    ret nz                                        ; $44fe: $c0

    ret nz                                        ; $44ff: $c0

    jp $c3f7                                      ; $4500: $c3 $f7 $c3


    rst RST_30                                    ; $4503: $f7
    jp $c3f7                                      ; $4504: $c3 $f7 $c3


    rst RST_30                                    ; $4507: $f7
    jp $c3f7                                      ; $4508: $c3 $f7 $c3


    rst RST_30                                    ; $450b: $f7
    jp $c3f7                                      ; $450c: $c3 $f7 $c3


    rst RST_30                                    ; $450f: $f7
    ld b, b                                       ; $4510: $40
    sbc a                                         ; $4511: $9f
    ld b, b                                       ; $4512: $40
    cp a                                          ; $4513: $bf
    add b                                         ; $4514: $80
    ccf                                           ; $4515: $3f
    add b                                         ; $4516: $80
    ld a, a                                       ; $4517: $7f
    rst RST_38                                    ; $4518: $ff
    rst RST_38                                    ; $4519: $ff
    rst RST_38                                    ; $451a: $ff
    nop                                           ; $451b: $00
    nop                                           ; $451c: $00
    nop                                           ; $451d: $00
    rst RST_38                                    ; $451e: $ff
    rst RST_38                                    ; $451f: $ff
    rst RST_38                                    ; $4520: $ff
    rst RST_38                                    ; $4521: $ff
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    nop                                           ; $4524: $00
    rst RST_38                                    ; $4525: $ff
    nop                                           ; $4526: $00
    rst RST_38                                    ; $4527: $ff
    nop                                           ; $4528: $00
    rst RST_38                                    ; $4529: $ff
    nop                                           ; $452a: $00
    rst RST_38                                    ; $452b: $ff
    nop                                           ; $452c: $00
    rst RST_38                                    ; $452d: $ff
    nop                                           ; $452e: $00
    rst RST_38                                    ; $452f: $ff
    ld [bc], a                                    ; $4530: $02
    ld sp, hl                                     ; $4531: $f9
    ld [bc], a                                    ; $4532: $02
    db $fd                                        ; $4533: $fd
    ld bc, $01fc                                  ; $4534: $01 $fc $01
    cp $ff                                        ; $4537: $fe $ff
    rst RST_38                                    ; $4539: $ff
    rst RST_38                                    ; $453a: $ff
    nop                                           ; $453b: $00
    nop                                           ; $453c: $00
    nop                                           ; $453d: $00
    rst RST_38                                    ; $453e: $ff
    rst RST_38                                    ; $453f: $ff
    rst RST_38                                    ; $4540: $ff
    rst RST_38                                    ; $4541: $ff
    rst RST_38                                    ; $4542: $ff
    rst RST_38                                    ; $4543: $ff
    rst RST_38                                    ; $4544: $ff
    rst RST_38                                    ; $4545: $ff
    rst RST_38                                    ; $4546: $ff
    rst RST_38                                    ; $4547: $ff
    rst RST_38                                    ; $4548: $ff
    rst RST_38                                    ; $4549: $ff
    rst RST_38                                    ; $454a: $ff
    rst RST_38                                    ; $454b: $ff
    pop hl                                        ; $454c: $e1
    pop hl                                        ; $454d: $e1
    sbc $de                                       ; $454e: $de $de
    db $ed                                        ; $4550: $ed
    db $ed                                        ; $4551: $ed
    xor $ee                                       ; $4552: $ee $ee
    or $f6                                        ; $4554: $f6 $f6
    or $f6                                        ; $4556: $f6 $f6
    ld a, [$fafa]                                 ; $4558: $fa $fa $fa
    ld a, [$fdfd]                                 ; $455b: $fa $fd $fd
    db $fd                                        ; $455e: $fd
    db $fd                                        ; $455f: $fd
    rst RST_18                                    ; $4560: $df
    rst RST_18                                    ; $4561: $df
    db $dd                                        ; $4562: $dd
    db $dd                                        ; $4563: $dd
    jp c, $dbda                                   ; $4564: $da $da $db

    db $db                                        ; $4567: $db
    cp e                                          ; $4568: $bb
    cp e                                          ; $4569: $bb
    cp e                                          ; $456a: $bb
    cp e                                          ; $456b: $bb
    ld a, e                                       ; $456c: $7b
    ld a, e                                       ; $456d: $7b
    db $fd                                        ; $456e: $fd
    db $fd                                        ; $456f: $fd
    ld b, b                                       ; $4570: $40
    ld b, b                                       ; $4571: $40
    ld b, b                                       ; $4572: $40
    ld b, b                                       ; $4573: $40
    ld h, b                                       ; $4574: $60
    ld h, b                                       ; $4575: $60
    ldh [$ffe0], a                                ; $4576: $e0 $e0
    ldh a, [$fff0]                                ; $4578: $f0 $f0
    or $f6                                        ; $457a: $f6 $f6
    rst RST_28                                    ; $457c: $ef
    rst RST_28                                    ; $457d: $ef
    rst RST_28                                    ; $457e: $ef
    rst RST_28                                    ; $457f: $ef
    ccf                                           ; $4580: $3f
    ccf                                           ; $4581: $3f
    cp a                                          ; $4582: $bf
    cp a                                          ; $4583: $bf
    adc a                                         ; $4584: $8f
    adc a                                         ; $4585: $8f
    or a                                          ; $4586: $b7
    or a                                          ; $4587: $b7
    ld a, e                                       ; $4588: $7b
    ld a, e                                       ; $4589: $7b
    ld a, e                                       ; $458a: $7b
    ld a, e                                       ; $458b: $7b
    cp a                                          ; $458c: $bf
    cp a                                          ; $458d: $bf
    cp a                                          ; $458e: $bf
    cp a                                          ; $458f: $bf
    rst RST_38                                    ; $4590: $ff
    rst RST_38                                    ; $4591: $ff
    rst RST_38                                    ; $4592: $ff
    rst RST_38                                    ; $4593: $ff
    rst RST_38                                    ; $4594: $ff
    rst RST_38                                    ; $4595: $ff
    rst RST_38                                    ; $4596: $ff
    rst RST_38                                    ; $4597: $ff
    cp $fe                                        ; $4598: $fe $fe
    cp $fe                                        ; $459a: $fe $fe
    cp $fe                                        ; $459c: $fe $fe
    cp $fe                                        ; $459e: $fe $fe
    call c, $dcdc                                 ; $45a0: $dc $dc $dc
    call c, Call_009_6b6b                         ; $45a3: $dc $6b $6b
    ld h, a                                       ; $45a6: $67
    ld h, a                                       ; $45a7: $67
    cpl                                           ; $45a8: $2f
    cpl                                           ; $45a9: $2f
    cpl                                           ; $45aa: $2f
    cpl                                           ; $45ab: $2f
    ld e, a                                       ; $45ac: $5f
    ld e, a                                       ; $45ad: $5f
    ld e, a                                       ; $45ae: $5f
    ld e, a                                       ; $45af: $5f
    ld a, b                                       ; $45b0: $78
    ld a, b                                       ; $45b1: $78
    ld a, [hl]                                    ; $45b2: $7e
    ld a, [hl]                                    ; $45b3: $7e
    cp [hl]                                       ; $45b4: $be
    cp [hl]                                       ; $45b5: $be
    cp [hl]                                       ; $45b6: $be
    cp [hl]                                       ; $45b7: $be
    rst RST_18                                    ; $45b8: $df
    rst RST_18                                    ; $45b9: $df
    rst RST_18                                    ; $45ba: $df
    rst RST_18                                    ; $45bb: $df
    sbc a                                         ; $45bc: $9f
    sbc a                                         ; $45bd: $9f
    ld l, a                                       ; $45be: $6f
    ld l, a                                       ; $45bf: $6f
    ld bc, $0001                                  ; $45c0: $01 $01 $00
    nop                                           ; $45c3: $00
    nop                                           ; $45c4: $00
    nop                                           ; $45c5: $00
    nop                                           ; $45c6: $00
    nop                                           ; $45c7: $00
    nop                                           ; $45c8: $00
    nop                                           ; $45c9: $00
    ret nz                                        ; $45ca: $c0

    ret nz                                        ; $45cb: $c0

    pop bc                                        ; $45cc: $c1
    pop bc                                        ; $45cd: $c1
    db $e3                                        ; $45ce: $e3
    db $e3                                        ; $45cf: $e3
    ld sp, hl                                     ; $45d0: $f9
    ld sp, hl                                     ; $45d1: $f9
    ld [hl], c                                    ; $45d2: $71
    ld [hl], c                                    ; $45d3: $71
    dec b                                         ; $45d4: $05
    dec b                                         ; $45d5: $05
    dec b                                         ; $45d6: $05
    dec b                                         ; $45d7: $05
    dec c                                         ; $45d8: $0d
    dec c                                         ; $45d9: $0d
    dec c                                         ; $45da: $0d
    dec c                                         ; $45db: $0d
    ld e, $1e                                     ; $45dc: $1e $1e
    sbc [hl]                                      ; $45de: $9e
    sbc [hl]                                      ; $45df: $9e
    sbc a                                         ; $45e0: $9f
    sbc a                                         ; $45e1: $9f
    adc [hl]                                      ; $45e2: $8e
    adc [hl]                                      ; $45e3: $8e
    and b                                         ; $45e4: $a0
    and b                                         ; $45e5: $a0
    and b                                         ; $45e6: $a0
    and b                                         ; $45e7: $a0
    or b                                          ; $45e8: $b0
    or b                                          ; $45e9: $b0
    or b                                          ; $45ea: $b0
    or b                                          ; $45eb: $b0
    ld a, b                                       ; $45ec: $78
    ld a, b                                       ; $45ed: $78
    ld a, c                                       ; $45ee: $79
    ld a, c                                       ; $45ef: $79
    add b                                         ; $45f0: $80
    add b                                         ; $45f1: $80
    nop                                           ; $45f2: $00
    nop                                           ; $45f3: $00
    nop                                           ; $45f4: $00
    nop                                           ; $45f5: $00
    nop                                           ; $45f6: $00
    nop                                           ; $45f7: $00
    nop                                           ; $45f8: $00
    nop                                           ; $45f9: $00
    inc bc                                        ; $45fa: $03
    inc bc                                        ; $45fb: $03
    add e                                         ; $45fc: $83
    add e                                         ; $45fd: $83
    rst RST_00                                    ; $45fe: $c7
    rst RST_00                                    ; $45ff: $c7
    nop                                           ; $4600: $00
    nop                                           ; $4601: $00
    ld a, [hl]                                    ; $4602: $7e
    ld a, a                                       ; $4603: $7f
    rrca                                          ; $4604: $0f
    rrca                                          ; $4605: $0f
    ld a, a                                       ; $4606: $7f
    ld [hl], e                                    ; $4607: $73
    ld a, a                                       ; $4608: $7f
    ld a, h                                       ; $4609: $7c
    ld a, a                                       ; $460a: $7f
    ld a, a                                       ; $460b: $7f
    ld a, $3f                                     ; $460c: $3e $3f
    inc e                                         ; $460e: $1c
    ld b, a                                       ; $460f: $47
    nop                                           ; $4610: $00
    nop                                           ; $4611: $00
    ld a, [hl]                                    ; $4612: $7e
    ld e, $de                                     ; $4613: $1e $de
    xor $f8                                       ; $4615: $ee $f8
    or $c4                                        ; $4617: $f6 $c4
    ld a, [$38c4]                                 ; $4619: $fa $c4 $38
    ld [hl+], a                                   ; $461c: $22
    call c, $ec10                                 ; $461d: $dc $10 $ec
    nop                                           ; $4620: $00
    nop                                           ; $4621: $00

jr_009_4622:
    ld a, [hl]                                    ; $4622: $7e
    ld a, b                                       ; $4623: $78
    ld a, e                                       ; $4624: $7b
    ld [hl], a                                    ; $4625: $77
    rra                                           ; $4626: $1f
    ld l, a                                       ; $4627: $6f
    inc hl                                        ; $4628: $23
    ld e, a                                       ; $4629: $5f
    inc hl                                        ; $462a: $23
    inc e                                         ; $462b: $1c
    ld b, h                                       ; $462c: $44
    dec sp                                        ; $462d: $3b
    ld [$0037], sp                                ; $462e: $08 $37 $00
    nop                                           ; $4631: $00
    ld a, [hl]                                    ; $4632: $7e
    cp $f0                                        ; $4633: $fe $f0
    ldh a, [$fffe]                                ; $4635: $f0 $fe
    adc $fe                                       ; $4637: $ce $fe
    ld a, $fe                                     ; $4639: $3e $fe
    cp $7c                                        ; $463b: $fe $7c
    db $fc                                        ; $463d: $fc
    jr c, jr_009_4622                             ; $463e: $38 $e2

    ccf                                           ; $4640: $3f
    ccf                                           ; $4641: $3f
    cp a                                          ; $4642: $bf
    cp a                                          ; $4643: $bf
    rst RST_18                                    ; $4644: $df
    rst RST_18                                    ; $4645: $df
    rst RST_28                                    ; $4646: $ef
    rst RST_28                                    ; $4647: $ef
    rst RST_30                                    ; $4648: $f7
    rst RST_30                                    ; $4649: $f7
    dec sp                                        ; $464a: $3b
    dec sp                                        ; $464b: $3b
    dec e                                         ; $464c: $1d
    dec e                                         ; $464d: $1d
    ld c, $0e                                     ; $464e: $0e $0e
    ld a, [hl]                                    ; $4650: $7e
    ld a, [hl]                                    ; $4651: $7e
    cp [hl]                                       ; $4652: $be
    cp [hl]                                       ; $4653: $be
    rst RST_18                                    ; $4654: $df
    rst RST_18                                    ; $4655: $df
    rst RST_18                                    ; $4656: $df
    rst RST_18                                    ; $4657: $df
    rst RST_28                                    ; $4658: $ef
    rst RST_28                                    ; $4659: $ef
    rst RST_28                                    ; $465a: $ef
    rst RST_28                                    ; $465b: $ef
    rst RST_28                                    ; $465c: $ef
    rst RST_28                                    ; $465d: $ef
    rst RST_00                                    ; $465e: $c7
    rst RST_00                                    ; $465f: $c7
    db $ed                                        ; $4660: $ed
    db $ed                                        ; $4661: $ed
    db $ed                                        ; $4662: $ed
    db $ed                                        ; $4663: $ed
    adc $ce                                       ; $4664: $ce $ce
    adc [hl]                                      ; $4666: $8e
    adc [hl]                                      ; $4667: $8e
    rrca                                          ; $4668: $0f
    rrca                                          ; $4669: $0f
    rrca                                          ; $466a: $0f
    rrca                                          ; $466b: $0f
    rrca                                          ; $466c: $0f
    rrca                                          ; $466d: $0f
    rrca                                          ; $466e: $0f
    rrca                                          ; $466f: $0f
    xor $ee                                       ; $4670: $ee $ee
    xor $ee                                       ; $4672: $ee $ee
    db $dd                                        ; $4674: $dd
    db $dd                                        ; $4675: $dd
    db $dd                                        ; $4676: $dd
    db $dd                                        ; $4677: $dd
    ld e, l                                       ; $4678: $5d
    ld e, l                                       ; $4679: $5d
    ld e, l                                       ; $467a: $5d
    ld e, l                                       ; $467b: $5d
    dec sp                                        ; $467c: $3b
    dec sp                                        ; $467d: $3b
    dec sp                                        ; $467e: $3b
    dec sp                                        ; $467f: $3b
    rst RST_18                                    ; $4680: $df
    rst RST_18                                    ; $4681: $df
    rst RST_18                                    ; $4682: $df
    rst RST_18                                    ; $4683: $df
    xor a                                         ; $4684: $af
    xor a                                         ; $4685: $af
    ld l, a                                       ; $4686: $6f
    ld l, a                                       ; $4687: $6f
    rst RST_30                                    ; $4688: $f7
    rst RST_30                                    ; $4689: $f7
    ei                                            ; $468a: $fb
    ei                                            ; $468b: $fb
    ld a, l                                       ; $468c: $7d
    ld a, l                                       ; $468d: $7d
    ld a, [hl]                                    ; $468e: $7e
    ld a, [hl]                                    ; $468f: $7e
    db $fd                                        ; $4690: $fd
    db $fd                                        ; $4691: $fd
    db $fd                                        ; $4692: $fd
    db $fd                                        ; $4693: $fd
    ei                                            ; $4694: $fb
    ei                                            ; $4695: $fb
    ei                                            ; $4696: $fb
    ei                                            ; $4697: $fb
    or $f6                                        ; $4698: $f6 $f6
    xor $ee                                       ; $469a: $ee $ee
    db $dd                                        ; $469c: $dd
    db $dd                                        ; $469d: $dd
    dec a                                         ; $469e: $3d
    dec a                                         ; $469f: $3d
    sbc $de                                       ; $46a0: $de $de
    sbc $de                                       ; $46a2: $de $de
    cp a                                          ; $46a4: $bf
    cp a                                          ; $46a5: $bf
    cp a                                          ; $46a6: $bf
    cp a                                          ; $46a7: $bf
    rst RST_38                                    ; $46a8: $ff
    rst RST_38                                    ; $46a9: $ff
    rst RST_38                                    ; $46aa: $ff
    rst RST_38                                    ; $46ab: $ff
    rst RST_38                                    ; $46ac: $ff
    rst RST_38                                    ; $46ad: $ff
    rst RST_38                                    ; $46ae: $ff
    rst RST_38                                    ; $46af: $ff
    rst RST_30                                    ; $46b0: $f7
    rst RST_30                                    ; $46b1: $f7
    rst RST_30                                    ; $46b2: $f7
    rst RST_30                                    ; $46b3: $f7
    rst RST_30                                    ; $46b4: $f7
    rst RST_30                                    ; $46b5: $f7
    rst RST_30                                    ; $46b6: $f7
    rst RST_30                                    ; $46b7: $f7
    rst RST_20                                    ; $46b8: $e7
    rst RST_20                                    ; $46b9: $e7
    db $db                                        ; $46ba: $db
    db $db                                        ; $46bb: $db
    cp l                                          ; $46bc: $bd
    cp l                                          ; $46bd: $bd
    cp l                                          ; $46be: $bd
    cp l                                          ; $46bf: $bd
    rst RST_38                                    ; $46c0: $ff
    rst RST_38                                    ; $46c1: $ff
    rst RST_38                                    ; $46c2: $ff
    rst RST_38                                    ; $46c3: $ff
    rst RST_38                                    ; $46c4: $ff
    rst RST_38                                    ; $46c5: $ff
    rst RST_30                                    ; $46c6: $f7
    rst RST_30                                    ; $46c7: $f7
    ei                                            ; $46c8: $fb
    ei                                            ; $46c9: $fb
    db $fc                                        ; $46ca: $fc
    db $fc                                        ; $46cb: $fc
    db $fd                                        ; $46cc: $fd
    db $fd                                        ; $46cd: $fd
    db $fd                                        ; $46ce: $fd
    db $fd                                        ; $46cf: $fd
    sbc $de                                       ; $46d0: $de $de
    adc $ce                                       ; $46d2: $ce $ce
    or [hl]                                       ; $46d4: $b6
    or [hl]                                       ; $46d5: $b6
    cp d                                          ; $46d6: $ba
    cp d                                          ; $46d7: $ba
    ld a, l                                       ; $46d8: $7d
    ld a, l                                       ; $46d9: $7d
    ld a, l                                       ; $46da: $7d
    ld a, l                                       ; $46db: $7d
    cp l                                          ; $46dc: $bd
    cp l                                          ; $46dd: $bd
    cp l                                          ; $46de: $bd
    cp l                                          ; $46df: $bd
    ld a, e                                       ; $46e0: $7b
    ld a, e                                       ; $46e1: $7b
    ld [hl], e                                    ; $46e2: $73
    ld [hl], e                                    ; $46e3: $73
    ld l, l                                       ; $46e4: $6d
    ld l, l                                       ; $46e5: $6d
    ld e, l                                       ; $46e6: $5d
    ld e, l                                       ; $46e7: $5d
    cp [hl]                                       ; $46e8: $be
    cp [hl]                                       ; $46e9: $be
    cp [hl]                                       ; $46ea: $be
    cp [hl]                                       ; $46eb: $be
    cp l                                          ; $46ec: $bd
    cp l                                          ; $46ed: $bd
    cp l                                          ; $46ee: $bd
    cp l                                          ; $46ef: $bd
    rst RST_38                                    ; $46f0: $ff
    rst RST_38                                    ; $46f1: $ff
    rst RST_38                                    ; $46f2: $ff
    rst RST_38                                    ; $46f3: $ff
    rst RST_38                                    ; $46f4: $ff
    rst RST_38                                    ; $46f5: $ff
    rst RST_28                                    ; $46f6: $ef
    rst RST_28                                    ; $46f7: $ef
    rst RST_18                                    ; $46f8: $df
    rst RST_18                                    ; $46f9: $df
    ccf                                           ; $46fa: $3f
    ccf                                           ; $46fb: $3f
    cp a                                          ; $46fc: $bf
    cp a                                          ; $46fd: $bf
    cp a                                          ; $46fe: $bf
    cp a                                          ; $46ff: $bf
    ld a, [hl]                                    ; $4700: $7e
    ld a, c                                       ; $4701: $79
    ld [hl], c                                    ; $4702: $71
    ld a, [hl]                                    ; $4703: $7e
    jr nc, jr_009_4715                            ; $4704: $30 $0f

    ld l, h                                       ; $4706: $6c
    ld [hl], e                                    ; $4707: $73
    ld h, e                                       ; $4708: $63
    ld a, h                                       ; $4709: $7c
    ld b, b                                       ; $470a: $40
    ld a, a                                       ; $470b: $7f
    ld b, b                                       ; $470c: $40
    ld a, a                                       ; $470d: $7f
    nop                                           ; $470e: $00
    nop                                           ; $470f: $00
    ld [$88f6], sp                                ; $4710: $08 $f6 $88
    halt                                          ; $4713: $76
    ld b, h                                       ; $4714: $44

jr_009_4715:
    cp d                                          ; $4715: $ba
    inc h                                         ; $4716: $24
    jp c, $ec12                                   ; $4717: $da $12 $ec

    jp z, Jump_000_3434                           ; $471a: $ca $34 $34

    jp z, RST_00                                  ; $471d: $ca $00 $00

    db $10                                        ; $4720: $10
    ld l, a                                       ; $4721: $6f
    ld de, $226e                                  ; $4722: $11 $6e $22
    ld e, l                                       ; $4725: $5d
    inc h                                         ; $4726: $24
    ld e, e                                       ; $4727: $5b
    ld c, b                                       ; $4728: $48
    scf                                           ; $4729: $37
    ld d, e                                       ; $472a: $53
    inc l                                         ; $472b: $2c
    inc l                                         ; $472c: $2c
    ld d, e                                       ; $472d: $53
    nop                                           ; $472e: $00
    nop                                           ; $472f: $00
    ld a, [hl]                                    ; $4730: $7e
    sbc [hl]                                      ; $4731: $9e
    adc [hl]                                      ; $4732: $8e
    ld a, [hl]                                    ; $4733: $7e
    inc c                                         ; $4734: $0c
    ldh a, [$ff36]                                ; $4735: $f0 $36
    adc $c6                                       ; $4737: $ce $c6
    ld a, $02                                     ; $4739: $3e $02
    cp $02                                        ; $473b: $fe $02
    cp $00                                        ; $473d: $fe $00
    nop                                           ; $473f: $00
    rrca                                          ; $4740: $0f
    rrca                                          ; $4741: $0f
    adc a                                         ; $4742: $8f
    adc a                                         ; $4743: $8f
    rst RST_00                                    ; $4744: $c7
    rst RST_00                                    ; $4745: $c7
    add $c6                                       ; $4746: $c6 $c6
    and $e6                                       ; $4748: $e6 $e6
    ld h, [hl]                                    ; $474a: $66
    ld h, [hl]                                    ; $474b: $66
    or b                                          ; $474c: $b0
    or b                                          ; $474d: $b0
    or b                                          ; $474e: $b0
    or b                                          ; $474f: $b0
    dec sp                                        ; $4750: $3b
    dec sp                                        ; $4751: $3b
    ld a, l                                       ; $4752: $7d
    ld a, l                                       ; $4753: $7d
    ld a, l                                       ; $4754: $7d
    ld a, l                                       ; $4755: $7d
    cp $fe                                        ; $4756: $fe $fe
    cp $fe                                        ; $4758: $fe $fe
    cp $fe                                        ; $475a: $fe $fe
    cp $fe                                        ; $475c: $fe $fe
    cp $fe                                        ; $475e: $fe $fe
    ld e, $1e                                     ; $4760: $1e $1e
    ld a, [hl]                                    ; $4762: $7e
    ld a, [hl]                                    ; $4763: $7e
    ld a, l                                       ; $4764: $7d
    ld a, l                                       ; $4765: $7d
    ld a, l                                       ; $4766: $7d
    ld a, l                                       ; $4767: $7d
    ei                                            ; $4768: $fb
    ei                                            ; $4769: $fb
    ei                                            ; $476a: $fb
    ei                                            ; $476b: $fb
    ld sp, hl                                     ; $476c: $f9
    ld sp, hl                                     ; $476d: $f9
    or $f6                                        ; $476e: $f6 $f6
    dec sp                                        ; $4770: $3b
    dec sp                                        ; $4771: $3b
    dec sp                                        ; $4772: $3b
    dec sp                                        ; $4773: $3b
    sub $d6                                       ; $4774: $d6 $d6
    and $e6                                       ; $4776: $e6 $e6
    db $f4                                        ; $4778: $f4
    db $f4                                        ; $4779: $f4
    db $f4                                        ; $477a: $f4
    db $f4                                        ; $477b: $f4
    ld a, [$fafa]                                 ; $477c: $fa $fa $fa
    ld a, [$bfbf]                                 ; $477f: $fa $bf $bf
    cp a                                          ; $4782: $bf
    cp a                                          ; $4783: $bf
    rst RST_18                                    ; $4784: $df
    rst RST_18                                    ; $4785: $df
    rst RST_18                                    ; $4786: $df
    rst RST_18                                    ; $4787: $df
    ld l, a                                       ; $4788: $6f
    ld l, a                                       ; $4789: $6f
    ld [hl], a                                    ; $478a: $77
    ld [hl], a                                    ; $478b: $77
    cp e                                          ; $478c: $bb
    cp e                                          ; $478d: $bb
    cp h                                          ; $478e: $bc
    cp h                                          ; $478f: $bc
    ei                                            ; $4790: $fb
    ei                                            ; $4791: $fb
    ei                                            ; $4792: $fb
    ei                                            ; $4793: $fb
    push af                                       ; $4794: $f5
    push af                                       ; $4795: $f5
    or $f6                                        ; $4796: $f6 $f6
    rst RST_28                                    ; $4798: $ef
    rst RST_28                                    ; $4799: $ef
    rst RST_18                                    ; $479a: $df
    rst RST_18                                    ; $479b: $df
    cp [hl]                                       ; $479c: $be
    cp [hl]                                       ; $479d: $be
    ld a, [hl]                                    ; $479e: $7e

jr_009_479f:
    ld a, [hl]                                    ; $479f: $7e
    rst RST_38                                    ; $47a0: $ff

jr_009_47a1:
    rst RST_38                                    ; $47a1: $ff
    rst RST_38                                    ; $47a2: $ff

jr_009_47a3:
    rst RST_38                                    ; $47a3: $ff
    rst RST_38                                    ; $47a4: $ff
    rst RST_38                                    ; $47a5: $ff
    rst RST_38                                    ; $47a6: $ff
    rst RST_38                                    ; $47a7: $ff
    ld a, a                                       ; $47a8: $7f
    ld a, a                                       ; $47a9: $7f
    ld a, a                                       ; $47aa: $7f
    ld a, a                                       ; $47ab: $7f
    ld a, a                                       ; $47ac: $7f
    ld a, a                                       ; $47ad: $7f
    ld a, a                                       ; $47ae: $7f
    ld a, a                                       ; $47af: $7f
    db $fc                                        ; $47b0: $fc
    db $fc                                        ; $47b1: $fc
    db $fd                                        ; $47b2: $fd
    db $fd                                        ; $47b3: $fd
    pop af                                        ; $47b4: $f1
    pop af                                        ; $47b5: $f1
    db $ed                                        ; $47b6: $ed
    db $ed                                        ; $47b7: $ed
    sbc $de                                       ; $47b8: $de $de
    sbc $de                                       ; $47ba: $de $de
    db $fd                                        ; $47bc: $fd
    db $fd                                        ; $47bd: $fd
    db $fd                                        ; $47be: $fd
    db $fd                                        ; $47bf: $fd
    ei                                            ; $47c0: $fb
    ei                                            ; $47c1: $fb
    ld [hl], e                                    ; $47c2: $73
    ld [hl], e                                    ; $47c3: $73
    adc e                                         ; $47c4: $8b
    adc e                                         ; $47c5: $8b
    ei                                            ; $47c6: $fb
    ei                                            ; $47c7: $fb
    ld a, l                                       ; $47c8: $7d
    ld a, l                                       ; $47c9: $7d
    ld a, l                                       ; $47ca: $7d
    ld a, l                                       ; $47cb: $7d
    cp l                                          ; $47cc: $bd
    cp l                                          ; $47cd: $bd
    cp l                                          ; $47ce: $bd
    cp l                                          ; $47cf: $bd
    db $dd                                        ; $47d0: $dd
    db $dd                                        ; $47d1: $dd
    db $dd                                        ; $47d2: $dd
    db $dd                                        ; $47d3: $dd
    ld [$eaea], a                                 ; $47d4: $ea $ea $ea
    ld [$ebeb], a                                 ; $47d7: $ea $eb $eb
    db $eb                                        ; $47da: $eb
    db $eb                                        ; $47db: $eb
    rst RST_10                                    ; $47dc: $d7
    rst RST_10                                    ; $47dd: $d7
    rst RST_10                                    ; $47de: $d7
    rst RST_10                                    ; $47df: $d7
    cp e                                          ; $47e0: $bb
    cp e                                          ; $47e1: $bb
    cp e                                          ; $47e2: $bb
    cp e                                          ; $47e3: $bb
    ld d, a                                       ; $47e4: $57
    ld d, a                                       ; $47e5: $57
    ld d, a                                       ; $47e6: $57
    ld d, a                                       ; $47e7: $57
    rst RST_10                                    ; $47e8: $d7
    rst RST_10                                    ; $47e9: $d7
    rst RST_10                                    ; $47ea: $d7
    rst RST_10                                    ; $47eb: $d7
    db $eb                                        ; $47ec: $eb
    db $eb                                        ; $47ed: $eb
    db $eb                                        ; $47ee: $eb
    db $eb                                        ; $47ef: $eb
    rst RST_18                                    ; $47f0: $df
    rst RST_18                                    ; $47f1: $df
    adc $ce                                       ; $47f2: $ce $ce
    pop de                                        ; $47f4: $d1
    pop de                                        ; $47f5: $d1
    rst RST_18                                    ; $47f6: $df
    rst RST_18                                    ; $47f7: $df
    cp [hl]                                       ; $47f8: $be
    cp [hl]                                       ; $47f9: $be
    cp [hl]                                       ; $47fa: $be
    cp [hl]                                       ; $47fb: $be
    cp l                                          ; $47fc: $bd
    cp l                                          ; $47fd: $bd
    cp l                                          ; $47fe: $bd
    cp l                                          ; $47ff: $bd
    rst RST_38                                    ; $4800: $ff
    nop                                           ; $4801: $00
    db $fc                                        ; $4802: $fc
    ld a, a                                       ; $4803: $7f
    pop bc                                        ; $4804: $c1
    ld b, [hl]                                    ; $4805: $46
    jp $c04c                                      ; $4806: $c3 $4c $c0


    ld c, b                                       ; $4809: $48
    ret nz                                        ; $480a: $c0

    ld e, a                                       ; $480b: $5f
    ret nz                                        ; $480c: $c0

    ld d, c                                       ; $480d: $51
    adc $50                                       ; $480e: $ce $50
    inc bc                                        ; $4810: $03
    db $fc                                        ; $4811: $fc
    ld b, b                                       ; $4812: $40
    cp a                                          ; $4813: $bf
    jp nz, $813d                                  ; $4814: $c2 $3d $81

    inc a                                         ; $4817: $3c
    nop                                           ; $4818: $00
    ld b, [hl]                                    ; $4819: $46
    jr c, jr_009_479f                             ; $481a: $38 $83

    jr c, jr_009_47a1                             ; $481c: $38 $83

    jr c, jr_009_47a3                             ; $481e: $38 $83

    rst RST_38                                    ; $4820: $ff
    nop                                           ; $4821: $00
    rst RST_38                                    ; $4822: $ff
    rst RST_38                                    ; $4823: $ff
    nop                                           ; $4824: $00
    add b                                         ; $4825: $80
    nop                                           ; $4826: $00
    ret nz                                        ; $4827: $c0

    add b                                         ; $4828: $80
    ld b, b                                       ; $4829: $40
    nop                                           ; $482a: $00
    ldh [rP1], a                                  ; $482b: $e0 $00
    and b                                         ; $482d: $a0
    ld b, b                                       ; $482e: $40
    jr nz, @+$01                                  ; $482f: $20 $ff

    nop                                           ; $4831: $00
    rst RST_38                                    ; $4832: $ff
    rst RST_38                                    ; $4833: $ff
    nop                                           ; $4834: $00
    nop                                           ; $4835: $00
    nop                                           ; $4836: $00
    nop                                           ; $4837: $00
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00
    ld b, $06                                     ; $483a: $06 $06
    ld b, $06                                     ; $483c: $06 $06
    rlca                                          ; $483e: $07
    rlca                                          ; $483f: $07
    rst RST_38                                    ; $4840: $ff
    nop                                           ; $4841: $00
    rst RST_38                                    ; $4842: $ff
    rst RST_38                                    ; $4843: $ff
    nop                                           ; $4844: $00
    nop                                           ; $4845: $00
    nop                                           ; $4846: $00
    nop                                           ; $4847: $00
    nop                                           ; $4848: $00
    nop                                           ; $4849: $00
    ld l, l                                       ; $484a: $6d
    ld l, l                                       ; $484b: $6d
    call $8dcd                                    ; $484c: $cd $cd $8d
    adc l                                         ; $484f: $8d
    rst RST_38                                    ; $4850: $ff
    nop                                           ; $4851: $00
    rst RST_38                                    ; $4852: $ff
    rst RST_38                                    ; $4853: $ff
    nop                                           ; $4854: $00
    nop                                           ; $4855: $00
    nop                                           ; $4856: $00
    nop                                           ; $4857: $00
    nop                                           ; $4858: $00
    nop                                           ; $4859: $00
    sbc c                                         ; $485a: $99
    sbc c                                         ; $485b: $99
    db $db                                        ; $485c: $db
    db $db                                        ; $485d: $db
    ei                                            ; $485e: $fb
    ei                                            ; $485f: $fb
    rst RST_38                                    ; $4860: $ff
    nop                                           ; $4861: $00
    rst RST_38                                    ; $4862: $ff
    rst RST_38                                    ; $4863: $ff
    nop                                           ; $4864: $00
    nop                                           ; $4865: $00
    nop                                           ; $4866: $00
    nop                                           ; $4867: $00
    nop                                           ; $4868: $00
    nop                                           ; $4869: $00
    and $e6                                       ; $486a: $e6 $e6
    ld [hl], $36                                  ; $486c: $36 $36
    scf                                           ; $486e: $37
    scf                                           ; $486f: $37
    rst RST_38                                    ; $4870: $ff
    nop                                           ; $4871: $00
    rst RST_38                                    ; $4872: $ff
    rst RST_38                                    ; $4873: $ff
    nop                                           ; $4874: $00
    nop                                           ; $4875: $00
    nop                                           ; $4876: $00
    nop                                           ; $4877: $00
    nop                                           ; $4878: $00
    nop                                           ; $4879: $00
    ld h, a                                       ; $487a: $67
    ld h, a                                       ; $487b: $67
    call z, $8ccc                                 ; $487c: $cc $cc $8c
    adc h                                         ; $487f: $8c
    rst RST_38                                    ; $4880: $ff
    nop                                           ; $4881: $00
    rst RST_38                                    ; $4882: $ff
    rst RST_38                                    ; $4883: $ff
    nop                                           ; $4884: $00
    nop                                           ; $4885: $00
    nop                                           ; $4886: $00
    nop                                           ; $4887: $00
    nop                                           ; $4888: $00
    nop                                           ; $4889: $00
    add b                                         ; $488a: $80
    add b                                         ; $488b: $80
    ret nz                                        ; $488c: $c0

    ret nz                                        ; $488d: $c0

    ret nz                                        ; $488e: $c0

    ret nz                                        ; $488f: $c0

    rst RST_38                                    ; $4890: $ff
    ld bc, $fdff                                  ; $4891: $01 $ff $fd
    inc bc                                        ; $4894: $03
    ld bc, $0103                                  ; $4895: $01 $03 $01
    inc bc                                        ; $4898: $03
    ld bc, $0103                                  ; $4899: $01 $03 $01
    inc bc                                        ; $489c: $03
    ld bc, $0103                                  ; $489d: $01 $03 $01
    rst RST_38                                    ; $48a0: $ff
    nop                                           ; $48a1: $00
    rst RST_38                                    ; $48a2: $ff
    nop                                           ; $48a3: $00
    rst RST_38                                    ; $48a4: $ff
    nop                                           ; $48a5: $00
    rst RST_38                                    ; $48a6: $ff
    nop                                           ; $48a7: $00
    rst RST_38                                    ; $48a8: $ff
    nop                                           ; $48a9: $00
    rst RST_38                                    ; $48aa: $ff
    rlca                                          ; $48ab: $07
    rst RST_38                                    ; $48ac: $ff
    inc c                                         ; $48ad: $0c
    rst RST_38                                    ; $48ae: $ff
    inc c                                         ; $48af: $0c
    rst RST_38                                    ; $48b0: $ff
    nop                                           ; $48b1: $00
    rst RST_38                                    ; $48b2: $ff
    nop                                           ; $48b3: $00
    rst RST_38                                    ; $48b4: $ff
    nop                                           ; $48b5: $00
    rst RST_38                                    ; $48b6: $ff
    nop                                           ; $48b7: $00
    rst RST_38                                    ; $48b8: $ff
    nop                                           ; $48b9: $00
    rst RST_38                                    ; $48ba: $ff
    adc a                                         ; $48bb: $8f
    rst RST_38                                    ; $48bc: $ff
    reti                                          ; $48bd: $d9


    rst RST_38                                    ; $48be: $ff
    add hl, de                                    ; $48bf: $19
    rst RST_38                                    ; $48c0: $ff
    nop                                           ; $48c1: $00
    rst RST_38                                    ; $48c2: $ff
    nop                                           ; $48c3: $00
    rst RST_38                                    ; $48c4: $ff
    nop                                           ; $48c5: $00
    rst RST_38                                    ; $48c6: $ff
    nop                                           ; $48c7: $00
    rst RST_38                                    ; $48c8: $ff
    nop                                           ; $48c9: $00
    rst RST_38                                    ; $48ca: $ff
    inc sp                                        ; $48cb: $33
    rst RST_38                                    ; $48cc: $ff
    or e                                          ; $48cd: $b3
    rst RST_38                                    ; $48ce: $ff
    or e                                          ; $48cf: $b3
    rst RST_38                                    ; $48d0: $ff
    nop                                           ; $48d1: $00
    rst RST_38                                    ; $48d2: $ff
    nop                                           ; $48d3: $00
    rst RST_38                                    ; $48d4: $ff
    nop                                           ; $48d5: $00
    rst RST_38                                    ; $48d6: $ff
    nop                                           ; $48d7: $00
    rst RST_38                                    ; $48d8: $ff
    nop                                           ; $48d9: $00
    rst RST_38                                    ; $48da: $ff
    ld a, h                                       ; $48db: $7c
    rst RST_38                                    ; $48dc: $ff
    ld h, [hl]                                    ; $48dd: $66
    rst RST_38                                    ; $48de: $ff
    ld h, [hl]                                    ; $48df: $66
    rst RST_38                                    ; $48e0: $ff
    nop                                           ; $48e1: $00
    rst RST_38                                    ; $48e2: $ff
    nop                                           ; $48e3: $00
    rst RST_38                                    ; $48e4: $ff
    nop                                           ; $48e5: $00
    rst RST_38                                    ; $48e6: $ff
    nop                                           ; $48e7: $00
    rst RST_38                                    ; $48e8: $ff
    nop                                           ; $48e9: $00
    rst RST_38                                    ; $48ea: $ff
    ld a, l                                       ; $48eb: $7d
    rst RST_38                                    ; $48ec: $ff
    pop bc                                        ; $48ed: $c1
    rst RST_38                                    ; $48ee: $ff
    ld a, c                                       ; $48ef: $79
    rst RST_38                                    ; $48f0: $ff
    nop                                           ; $48f1: $00
    rst RST_38                                    ; $48f2: $ff
    nop                                           ; $48f3: $00
    rst RST_38                                    ; $48f4: $ff
    nop                                           ; $48f5: $00
    rst RST_38                                    ; $48f6: $ff
    nop                                           ; $48f7: $00
    rst RST_38                                    ; $48f8: $ff
    nop                                           ; $48f9: $00
    rst RST_38                                    ; $48fa: $ff
    ld hl, sp-$01                                 ; $48fb: $f8 $ff
    add b                                         ; $48fd: $80
    rst RST_38                                    ; $48fe: $ff
    ldh [$ffcc], a                                ; $48ff: $e0 $cc
    ld d, c                                       ; $4901: $51
    ret nz                                        ; $4902: $c0

    ld e, e                                       ; $4903: $5b
    ret nz                                        ; $4904: $c0

    ld c, [hl]                                    ; $4905: $4e
    pop bc                                        ; $4906: $c1
    ld b, h                                       ; $4907: $44
    pop bc                                        ; $4908: $c1
    ld b, h                                       ; $4909: $44
    ret nz                                        ; $490a: $c0

    ld b, d                                       ; $490b: $42
    cp $01                                        ; $490c: $fe $01
    rst RST_38                                    ; $490e: $ff
    rst RST_38                                    ; $490f: $ff
    nop                                           ; $4910: $00
    rst RST_00                                    ; $4911: $c7
    nop                                           ; $4912: $00
    rst RST_38                                    ; $4913: $ff
    or h                                          ; $4914: $b4
    ld c, c                                       ; $4915: $49
    or [hl]                                       ; $4916: $b6
    ld c, b                                       ; $4917: $48
    cp $00                                        ; $4918: $fe $00
    db $fc                                        ; $491a: $fc
    ld bc, $fe01                                  ; $491b: $01 $01 $fe
    rst RST_38                                    ; $491e: $ff
    rst RST_38                                    ; $491f: $ff
    ld b, b                                       ; $4920: $40
    jr nz, jr_009_4923                            ; $4921: $20 $00

jr_009_4923:
    and b                                         ; $4923: $a0
    nop                                           ; $4924: $00
    ret nz                                        ; $4925: $c0

    nop                                           ; $4926: $00
    add b                                         ; $4927: $80
    nop                                           ; $4928: $00
    add b                                         ; $4929: $80
    nop                                           ; $492a: $00
    nop                                           ; $492b: $00
    rst RST_38                                    ; $492c: $ff
    nop                                           ; $492d: $00
    rst RST_38                                    ; $492e: $ff
    rst RST_38                                    ; $492f: $ff
    rlca                                          ; $4930: $07
    rlca                                          ; $4931: $07
    ld b, $06                                     ; $4932: $06 $06
    ld b, $06                                     ; $4934: $06 $06
    nop                                           ; $4936: $00
    nop                                           ; $4937: $00
    nop                                           ; $4938: $00
    nop                                           ; $4939: $00
    nop                                           ; $493a: $00
    nop                                           ; $493b: $00
    rst RST_38                                    ; $493c: $ff
    nop                                           ; $493d: $00
    rst RST_38                                    ; $493e: $ff
    rst RST_38                                    ; $493f: $ff
    adc l                                         ; $4940: $8d
    adc l                                         ; $4941: $8d
    call Call_009_6dcd                            ; $4942: $cd $cd $6d
    ld l, l                                       ; $4945: $6d
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    nop                                           ; $4948: $00
    nop                                           ; $4949: $00
    nop                                           ; $494a: $00
    nop                                           ; $494b: $00
    rst RST_38                                    ; $494c: $ff
    nop                                           ; $494d: $00
    rst RST_38                                    ; $494e: $ff
    rst RST_38                                    ; $494f: $ff
    cp e                                          ; $4950: $bb
    cp e                                          ; $4951: $bb
    sbc e                                         ; $4952: $9b
    sbc e                                         ; $4953: $9b
    sbc c                                         ; $4954: $99
    sbc c                                         ; $4955: $99
    nop                                           ; $4956: $00
    nop                                           ; $4957: $00
    nop                                           ; $4958: $00
    nop                                           ; $4959: $00
    nop                                           ; $495a: $00
    nop                                           ; $495b: $00
    rst RST_38                                    ; $495c: $ff
    nop                                           ; $495d: $00
    rst RST_38                                    ; $495e: $ff
    rst RST_38                                    ; $495f: $ff
    scf                                           ; $4960: $37
    scf                                           ; $4961: $37
    ld [hl], $36                                  ; $4962: $36 $36
    and $e6                                       ; $4964: $e6 $e6
    nop                                           ; $4966: $00
    nop                                           ; $4967: $00
    nop                                           ; $4968: $00
    nop                                           ; $4969: $00
    nop                                           ; $496a: $00
    nop                                           ; $496b: $00
    rst RST_38                                    ; $496c: $ff
    nop                                           ; $496d: $00
    rst RST_38                                    ; $496e: $ff
    rst RST_38                                    ; $496f: $ff
    adc h                                         ; $4970: $8c
    adc h                                         ; $4971: $8c
    call z, Call_009_67cc                         ; $4972: $cc $cc $67
    ld h, a                                       ; $4975: $67
    nop                                           ; $4976: $00
    nop                                           ; $4977: $00
    nop                                           ; $4978: $00
    nop                                           ; $4979: $00
    nop                                           ; $497a: $00
    nop                                           ; $497b: $00
    rst RST_38                                    ; $497c: $ff
    nop                                           ; $497d: $00
    rst RST_38                                    ; $497e: $ff
    rst RST_38                                    ; $497f: $ff
    ret nz                                        ; $4980: $c0

    ret nz                                        ; $4981: $c0

    ret nz                                        ; $4982: $c0

    ret nz                                        ; $4983: $c0

    add b                                         ; $4984: $80
    add b                                         ; $4985: $80
    nop                                           ; $4986: $00
    nop                                           ; $4987: $00
    nop                                           ; $4988: $00
    nop                                           ; $4989: $00
    nop                                           ; $498a: $00
    nop                                           ; $498b: $00
    rst RST_38                                    ; $498c: $ff
    nop                                           ; $498d: $00
    rst RST_38                                    ; $498e: $ff
    rst RST_38                                    ; $498f: $ff
    inc bc                                        ; $4990: $03
    ld bc, $0103                                  ; $4991: $01 $03 $01
    inc bc                                        ; $4994: $03
    ld bc, $0103                                  ; $4995: $01 $03 $01
    inc bc                                        ; $4998: $03
    ld bc, $0103                                  ; $4999: $01 $03 $01
    rst RST_38                                    ; $499c: $ff
    ld bc, rIE                                    ; $499d: $01 $ff $ff
    rst RST_38                                    ; $49a0: $ff
    inc c                                         ; $49a1: $0c
    rst RST_38                                    ; $49a2: $ff
    inc c                                         ; $49a3: $0c
    rst RST_38                                    ; $49a4: $ff
    rlca                                          ; $49a5: $07
    rst RST_38                                    ; $49a6: $ff
    nop                                           ; $49a7: $00
    rst RST_38                                    ; $49a8: $ff
    nop                                           ; $49a9: $00
    rst RST_38                                    ; $49aa: $ff
    nop                                           ; $49ab: $00
    rst RST_38                                    ; $49ac: $ff
    nop                                           ; $49ad: $00
    rst RST_38                                    ; $49ae: $ff
    rst RST_38                                    ; $49af: $ff
    rst RST_38                                    ; $49b0: $ff
    add hl, de                                    ; $49b1: $19
    rst RST_38                                    ; $49b2: $ff
    reti                                          ; $49b3: $d9


    rst RST_38                                    ; $49b4: $ff
    adc a                                         ; $49b5: $8f
    rst RST_38                                    ; $49b6: $ff
    nop                                           ; $49b7: $00
    rst RST_38                                    ; $49b8: $ff
    nop                                           ; $49b9: $00
    rst RST_38                                    ; $49ba: $ff
    nop                                           ; $49bb: $00
    rst RST_38                                    ; $49bc: $ff
    nop                                           ; $49bd: $00
    rst RST_38                                    ; $49be: $ff
    rst RST_38                                    ; $49bf: $ff
    rst RST_38                                    ; $49c0: $ff
    or e                                          ; $49c1: $b3
    rst RST_38                                    ; $49c2: $ff
    or e                                          ; $49c3: $b3
    rst RST_38                                    ; $49c4: $ff
    ld e, $ff                                     ; $49c5: $1e $ff
    nop                                           ; $49c7: $00
    rst RST_38                                    ; $49c8: $ff
    nop                                           ; $49c9: $00
    rst RST_38                                    ; $49ca: $ff
    nop                                           ; $49cb: $00
    rst RST_38                                    ; $49cc: $ff
    nop                                           ; $49cd: $00
    rst RST_38                                    ; $49ce: $ff
    rst RST_38                                    ; $49cf: $ff
    rst RST_38                                    ; $49d0: $ff
    ld a, h                                       ; $49d1: $7c
    rst RST_38                                    ; $49d2: $ff
    ld h, [hl]                                    ; $49d3: $66
    rst RST_38                                    ; $49d4: $ff
    ld h, [hl]                                    ; $49d5: $66
    rst RST_38                                    ; $49d6: $ff
    nop                                           ; $49d7: $00
    rst RST_38                                    ; $49d8: $ff
    nop                                           ; $49d9: $00
    rst RST_38                                    ; $49da: $ff
    nop                                           ; $49db: $00
    rst RST_38                                    ; $49dc: $ff
    nop                                           ; $49dd: $00
    rst RST_38                                    ; $49de: $ff
    rst RST_38                                    ; $49df: $ff
    rst RST_38                                    ; $49e0: $ff
    dec c                                         ; $49e1: $0d
    rst RST_38                                    ; $49e2: $ff
    call Call_009_79ff                            ; $49e3: $cd $ff $79
    rst RST_38                                    ; $49e6: $ff
    nop                                           ; $49e7: $00
    rst RST_38                                    ; $49e8: $ff
    nop                                           ; $49e9: $00
    rst RST_38                                    ; $49ea: $ff
    nop                                           ; $49eb: $00
    rst RST_38                                    ; $49ec: $ff
    nop                                           ; $49ed: $00
    rst RST_38                                    ; $49ee: $ff
    rst RST_38                                    ; $49ef: $ff
    rst RST_38                                    ; $49f0: $ff
    add b                                         ; $49f1: $80
    rst RST_38                                    ; $49f2: $ff
    add b                                         ; $49f3: $80
    rst RST_38                                    ; $49f4: $ff
    ld hl, sp-$01                                 ; $49f5: $f8 $ff
    nop                                           ; $49f7: $00
    rst RST_38                                    ; $49f8: $ff
    nop                                           ; $49f9: $00
    rst RST_38                                    ; $49fa: $ff
    nop                                           ; $49fb: $00
    rst RST_38                                    ; $49fc: $ff
    nop                                           ; $49fd: $00
    rst RST_38                                    ; $49fe: $ff
    rst RST_38                                    ; $49ff: $ff
    rst RST_38                                    ; $4a00: $ff
    rst RST_38                                    ; $4a01: $ff
    add b                                         ; $4a02: $80
    rst RST_38                                    ; $4a03: $ff
    add b                                         ; $4a04: $80
    ret nz                                        ; $4a05: $c0

    add b                                         ; $4a06: $80
    ret nz                                        ; $4a07: $c0

    add b                                         ; $4a08: $80
    ret nz                                        ; $4a09: $c0

    add b                                         ; $4a0a: $80
    rst RST_18                                    ; $4a0b: $df
    add b                                         ; $4a0c: $80
    ret nc                                        ; $4a0d: $d0

    add b                                         ; $4a0e: $80
    ret z                                         ; $4a0f: $c8

    rst RST_38                                    ; $4a10: $ff
    rst RST_38                                    ; $4a11: $ff
    nop                                           ; $4a12: $00
    rst RST_08                                    ; $4a13: $cf
    nop                                           ; $4a14: $00
    ld c, b                                       ; $4a15: $48
    nop                                           ; $4a16: $00
    add h                                         ; $4a17: $84
    nop                                           ; $4a18: $00
    add h                                         ; $4a19: $84
    nop                                           ; $4a1a: $00
    inc bc                                        ; $4a1b: $03
    nop                                           ; $4a1c: $00
    ld c, b                                       ; $4a1d: $48
    nop                                           ; $4a1e: $00
    ld c, b                                       ; $4a1f: $48
    rst RST_38                                    ; $4a20: $ff
    rst RST_38                                    ; $4a21: $ff
    nop                                           ; $4a22: $00
    rst RST_38                                    ; $4a23: $ff
    nop                                           ; $4a24: $00
    nop                                           ; $4a25: $00
    nop                                           ; $4a26: $00
    nop                                           ; $4a27: $00
    nop                                           ; $4a28: $00
    nop                                           ; $4a29: $00
    nop                                           ; $4a2a: $00
    ldh [rP1], a                                  ; $4a2b: $e0 $00
    jr nz, jr_009_4a2f                            ; $4a2d: $20 $00

jr_009_4a2f:
    ld b, b                                       ; $4a2f: $40
    rst RST_38                                    ; $4a30: $ff
    rst RST_38                                    ; $4a31: $ff
    nop                                           ; $4a32: $00
    rst RST_38                                    ; $4a33: $ff
    nop                                           ; $4a34: $00
    nop                                           ; $4a35: $00
    nop                                           ; $4a36: $00
    nop                                           ; $4a37: $00
    nop                                           ; $4a38: $00
    nop                                           ; $4a39: $00
    nop                                           ; $4a3a: $00
    nop                                           ; $4a3b: $00
    nop                                           ; $4a3c: $00
    nop                                           ; $4a3d: $00
    nop                                           ; $4a3e: $00
    nop                                           ; $4a3f: $00
    rst RST_38                                    ; $4a40: $ff
    rst RST_38                                    ; $4a41: $ff
    nop                                           ; $4a42: $00
    rst RST_38                                    ; $4a43: $ff
    nop                                           ; $4a44: $00
    nop                                           ; $4a45: $00
    nop                                           ; $4a46: $00
    nop                                           ; $4a47: $00
    nop                                           ; $4a48: $00
    nop                                           ; $4a49: $00
    nop                                           ; $4a4a: $00
    ld a, c                                       ; $4a4b: $79
    nop                                           ; $4a4c: $00
    ret nz                                        ; $4a4d: $c0

    nop                                           ; $4a4e: $00
    ld a, b                                       ; $4a4f: $78
    rst RST_38                                    ; $4a50: $ff
    rst RST_38                                    ; $4a51: $ff
    nop                                           ; $4a52: $00
    rst RST_38                                    ; $4a53: $ff
    nop                                           ; $4a54: $00
    nop                                           ; $4a55: $00
    nop                                           ; $4a56: $00
    nop                                           ; $4a57: $00
    nop                                           ; $4a58: $00
    nop                                           ; $4a59: $00
    nop                                           ; $4a5a: $00
    ld sp, hl                                     ; $4a5b: $f9
    nop                                           ; $4a5c: $00
    ld h, e                                       ; $4a5d: $63
    nop                                           ; $4a5e: $00
    ld h, e                                       ; $4a5f: $63
    rst RST_38                                    ; $4a60: $ff
    rst RST_38                                    ; $4a61: $ff
    nop                                           ; $4a62: $00
    rst RST_38                                    ; $4a63: $ff
    nop                                           ; $4a64: $00
    nop                                           ; $4a65: $00
    nop                                           ; $4a66: $00
    nop                                           ; $4a67: $00
    nop                                           ; $4a68: $00
    nop                                           ; $4a69: $00
    nop                                           ; $4a6a: $00
    rst RST_20                                    ; $4a6b: $e7
    nop                                           ; $4a6c: $00
    ld [hl], $00                                  ; $4a6d: $36 $00
    ld [hl], $ff                                  ; $4a6f: $36 $ff
    rst RST_38                                    ; $4a71: $ff
    nop                                           ; $4a72: $00
    rst RST_38                                    ; $4a73: $ff
    nop                                           ; $4a74: $00
    nop                                           ; $4a75: $00
    nop                                           ; $4a76: $00
    nop                                           ; $4a77: $00
    nop                                           ; $4a78: $00
    nop                                           ; $4a79: $00
    nop                                           ; $4a7a: $00
    ret nz                                        ; $4a7b: $c0

    nop                                           ; $4a7c: $00
    ld h, b                                       ; $4a7d: $60
    nop                                           ; $4a7e: $00
    ld h, b                                       ; $4a7f: $60
    rst RST_38                                    ; $4a80: $ff
    rst RST_38                                    ; $4a81: $ff
    nop                                           ; $4a82: $00
    rst RST_38                                    ; $4a83: $ff
    nop                                           ; $4a84: $00
    nop                                           ; $4a85: $00
    nop                                           ; $4a86: $00
    nop                                           ; $4a87: $00
    nop                                           ; $4a88: $00
    nop                                           ; $4a89: $00
    nop                                           ; $4a8a: $00
    nop                                           ; $4a8b: $00
    nop                                           ; $4a8c: $00
    nop                                           ; $4a8d: $00
    nop                                           ; $4a8e: $00
    nop                                           ; $4a8f: $00
    rst RST_38                                    ; $4a90: $ff
    rst RST_38                                    ; $4a91: $ff
    ld bc, $01ff                                  ; $4a92: $01 $ff $01
    inc bc                                        ; $4a95: $03
    ld bc, $0103                                  ; $4a96: $01 $03 $01
    inc bc                                        ; $4a99: $03
    ld bc, $0103                                  ; $4a9a: $01 $03 $01
    inc bc                                        ; $4a9d: $03
    ld bc, $ff03                                  ; $4a9e: $01 $03 $ff
    nop                                           ; $4aa1: $00
    rst RST_38                                    ; $4aa2: $ff
    nop                                           ; $4aa3: $00
    rst RST_38                                    ; $4aa4: $ff
    nop                                           ; $4aa5: $00
    rst RST_38                                    ; $4aa6: $ff
    nop                                           ; $4aa7: $00
    rst RST_38                                    ; $4aa8: $ff
    nop                                           ; $4aa9: $00
    rst RST_38                                    ; $4aaa: $ff
    rrca                                          ; $4aab: $0f
    rst RST_38                                    ; $4aac: $ff
    jr @+$01                                      ; $4aad: $18 $ff

    rrca                                          ; $4aaf: $0f
    rst RST_38                                    ; $4ab0: $ff
    nop                                           ; $4ab1: $00
    rst RST_38                                    ; $4ab2: $ff
    nop                                           ; $4ab3: $00
    rst RST_38                                    ; $4ab4: $ff
    nop                                           ; $4ab5: $00
    rst RST_38                                    ; $4ab6: $ff
    nop                                           ; $4ab7: $00
    rst RST_38                                    ; $4ab8: $ff
    nop                                           ; $4ab9: $00
    rst RST_38                                    ; $4aba: $ff
    cp a                                          ; $4abb: $bf
    rst RST_38                                    ; $4abc: $ff
    jr nc, @+$01                                  ; $4abd: $30 $ff

    inc a                                         ; $4abf: $3c
    rst RST_38                                    ; $4ac0: $ff
    nop                                           ; $4ac1: $00
    rst RST_38                                    ; $4ac2: $ff
    nop                                           ; $4ac3: $00
    rst RST_38                                    ; $4ac4: $ff
    nop                                           ; $4ac5: $00
    rst RST_38                                    ; $4ac6: $ff
    nop                                           ; $4ac7: $00
    rst RST_38                                    ; $4ac8: $ff
    nop                                           ; $4ac9: $00
    rst RST_38                                    ; $4aca: $ff
    ld h, b                                       ; $4acb: $60
    rst RST_38                                    ; $4acc: $ff
    ld h, b                                       ; $4acd: $60
    rst RST_38                                    ; $4ace: $ff
    ld h, b                                       ; $4acf: $60
    rst RST_38                                    ; $4ad0: $ff
    nop                                           ; $4ad1: $00
    rst RST_38                                    ; $4ad2: $ff
    nop                                           ; $4ad3: $00
    rst RST_38                                    ; $4ad4: $ff
    nop                                           ; $4ad5: $00
    rst RST_38                                    ; $4ad6: $ff
    nop                                           ; $4ad7: $00
    rst RST_38                                    ; $4ad8: $ff
    nop                                           ; $4ad9: $00
    rst RST_38                                    ; $4ada: $ff
    db $fc                                        ; $4adb: $fc
    rst RST_38                                    ; $4adc: $ff
    pop bc                                        ; $4add: $c1
    rst RST_38                                    ; $4ade: $ff
    pop af                                        ; $4adf: $f1
    rst RST_38                                    ; $4ae0: $ff
    nop                                           ; $4ae1: $00
    rst RST_38                                    ; $4ae2: $ff
    nop                                           ; $4ae3: $00
    rst RST_38                                    ; $4ae4: $ff
    nop                                           ; $4ae5: $00
    rst RST_38                                    ; $4ae6: $ff
    nop                                           ; $4ae7: $00
    rst RST_38                                    ; $4ae8: $ff
    nop                                           ; $4ae9: $00
    rst RST_38                                    ; $4aea: $ff
    di                                            ; $4aeb: $f3
    rst RST_38                                    ; $4aec: $ff
    sbc b                                         ; $4aed: $98
    rst RST_38                                    ; $4aee: $ff
    add b                                         ; $4aef: $80
    rst RST_38                                    ; $4af0: $ff
    nop                                           ; $4af1: $00
    rst RST_38                                    ; $4af2: $ff
    nop                                           ; $4af3: $00
    rst RST_38                                    ; $4af4: $ff
    nop                                           ; $4af5: $00
    rst RST_38                                    ; $4af6: $ff
    nop                                           ; $4af7: $00
    rst RST_38                                    ; $4af8: $ff
    nop                                           ; $4af9: $00
    rst RST_38                                    ; $4afa: $ff
    ldh a, [rIE]                                  ; $4afb: $f0 $ff
    ret nz                                        ; $4afd: $c0

    rst RST_38                                    ; $4afe: $ff
    ret nz                                        ; $4aff: $c0

    add b                                         ; $4b00: $80
    call nz, $c280                                ; $4b01: $c4 $80 $c2
    add b                                         ; $4b04: $80
    call nz, $c480                                ; $4b05: $c4 $80 $c4
    add b                                         ; $4b08: $80
    ret z                                         ; $4b09: $c8

    add b                                         ; $4b0a: $80
    ret z                                         ; $4b0b: $c8

    add b                                         ; $4b0c: $80
    di                                            ; $4b0d: $f3
    rst RST_38                                    ; $4b0e: $ff
    rst RST_38                                    ; $4b0f: $ff
    nop                                           ; $4b10: $00
    ld c, b                                       ; $4b11: $48
    nop                                           ; $4b12: $00
    ld bc, $0000                                  ; $4b13: $01 $00 $00
    nop                                           ; $4b16: $00
    nop                                           ; $4b17: $00
    nop                                           ; $4b18: $00
    jr nc, jr_009_4b1b                            ; $4b19: $30 $00

jr_009_4b1b:
    call z, rP1                                   ; $4b1b: $cc $00 $ff
    rst RST_38                                    ; $4b1e: $ff
    rst RST_38                                    ; $4b1f: $ff
    nop                                           ; $4b20: $00
    add b                                         ; $4b21: $80
    nop                                           ; $4b22: $00
    nop                                           ; $4b23: $00
    nop                                           ; $4b24: $00
    add b                                         ; $4b25: $80
    nop                                           ; $4b26: $00
    add b                                         ; $4b27: $80
    nop                                           ; $4b28: $00
    ld b, b                                       ; $4b29: $40
    nop                                           ; $4b2a: $00
    ld b, b                                       ; $4b2b: $40
    nop                                           ; $4b2c: $00
    ccf                                           ; $4b2d: $3f
    rst RST_38                                    ; $4b2e: $ff
    rst RST_38                                    ; $4b2f: $ff
    nop                                           ; $4b30: $00
    nop                                           ; $4b31: $00
    nop                                           ; $4b32: $00
    nop                                           ; $4b33: $00
    nop                                           ; $4b34: $00
    nop                                           ; $4b35: $00
    nop                                           ; $4b36: $00
    nop                                           ; $4b37: $00
    nop                                           ; $4b38: $00
    nop                                           ; $4b39: $00
    nop                                           ; $4b3a: $00
    nop                                           ; $4b3b: $00
    nop                                           ; $4b3c: $00
    rst RST_38                                    ; $4b3d: $ff
    rst RST_38                                    ; $4b3e: $ff
    rst RST_38                                    ; $4b3f: $ff
    nop                                           ; $4b40: $00
    inc c                                         ; $4b41: $0c
    nop                                           ; $4b42: $00
    call z, Call_009_7800                         ; $4b43: $cc $00 $78
    nop                                           ; $4b46: $00
    nop                                           ; $4b47: $00
    nop                                           ; $4b48: $00
    nop                                           ; $4b49: $00
    nop                                           ; $4b4a: $00
    nop                                           ; $4b4b: $00
    nop                                           ; $4b4c: $00
    rst RST_38                                    ; $4b4d: $ff
    rst RST_38                                    ; $4b4e: $ff
    rst RST_38                                    ; $4b4f: $ff
    nop                                           ; $4b50: $00
    ld h, e                                       ; $4b51: $63
    nop                                           ; $4b52: $00
    ld h, e                                       ; $4b53: $63
    nop                                           ; $4b54: $00
    ld h, e                                       ; $4b55: $63
    nop                                           ; $4b56: $00
    nop                                           ; $4b57: $00
    nop                                           ; $4b58: $00
    nop                                           ; $4b59: $00
    nop                                           ; $4b5a: $00
    nop                                           ; $4b5b: $00
    nop                                           ; $4b5c: $00
    rst RST_38                                    ; $4b5d: $ff
    rst RST_38                                    ; $4b5e: $ff
    rst RST_38                                    ; $4b5f: $ff
    nop                                           ; $4b60: $00
    rst RST_30                                    ; $4b61: $f7
    nop                                           ; $4b62: $00
    ld [hl], $00                                  ; $4b63: $36 $00
    ld [hl], $00                                  ; $4b65: $36 $00
    nop                                           ; $4b67: $00
    nop                                           ; $4b68: $00
    nop                                           ; $4b69: $00
    nop                                           ; $4b6a: $00
    nop                                           ; $4b6b: $00
    nop                                           ; $4b6c: $00
    rst RST_38                                    ; $4b6d: $ff
    rst RST_38                                    ; $4b6e: $ff
    rst RST_38                                    ; $4b6f: $ff
    nop                                           ; $4b70: $00
    ret nz                                        ; $4b71: $c0

    nop                                           ; $4b72: $00
    ld h, b                                       ; $4b73: $60
    nop                                           ; $4b74: $00
    ld h, b                                       ; $4b75: $60
    nop                                           ; $4b76: $00
    nop                                           ; $4b77: $00
    nop                                           ; $4b78: $00
    nop                                           ; $4b79: $00
    nop                                           ; $4b7a: $00
    nop                                           ; $4b7b: $00
    nop                                           ; $4b7c: $00
    rst RST_38                                    ; $4b7d: $ff
    rst RST_38                                    ; $4b7e: $ff
    rst RST_38                                    ; $4b7f: $ff
    nop                                           ; $4b80: $00
    nop                                           ; $4b81: $00
    nop                                           ; $4b82: $00
    nop                                           ; $4b83: $00
    nop                                           ; $4b84: $00
    nop                                           ; $4b85: $00
    nop                                           ; $4b86: $00
    nop                                           ; $4b87: $00
    nop                                           ; $4b88: $00
    nop                                           ; $4b89: $00
    nop                                           ; $4b8a: $00
    nop                                           ; $4b8b: $00
    nop                                           ; $4b8c: $00
    rst RST_38                                    ; $4b8d: $ff
    rst RST_38                                    ; $4b8e: $ff
    rst RST_38                                    ; $4b8f: $ff
    ld bc, $0103                                  ; $4b90: $01 $03 $01
    inc bc                                        ; $4b93: $03
    ld bc, $0103                                  ; $4b94: $01 $03 $01
    inc bc                                        ; $4b97: $03
    ld bc, $0103                                  ; $4b98: $01 $03 $01
    inc bc                                        ; $4b9b: $03
    ld bc, rIE                                    ; $4b9c: $01 $ff $ff
    rst RST_38                                    ; $4b9f: $ff
    rst RST_38                                    ; $4ba0: $ff
    ld bc, $19ff                                  ; $4ba1: $01 $ff $19
    rst RST_38                                    ; $4ba4: $ff
    rrca                                          ; $4ba5: $0f
    rst RST_38                                    ; $4ba6: $ff
    nop                                           ; $4ba7: $00
    rst RST_38                                    ; $4ba8: $ff
    nop                                           ; $4ba9: $00
    rst RST_38                                    ; $4baa: $ff
    nop                                           ; $4bab: $00
    rst RST_38                                    ; $4bac: $ff
    nop                                           ; $4bad: $00
    rst RST_38                                    ; $4bae: $ff
    rst RST_38                                    ; $4baf: $ff
    rst RST_38                                    ; $4bb0: $ff
    or b                                          ; $4bb1: $b0
    rst RST_38                                    ; $4bb2: $ff
    or b                                          ; $4bb3: $b0
    rst RST_38                                    ; $4bb4: $ff
    ccf                                           ; $4bb5: $3f
    rst RST_38                                    ; $4bb6: $ff
    nop                                           ; $4bb7: $00
    rst RST_38                                    ; $4bb8: $ff
    nop                                           ; $4bb9: $00
    rst RST_38                                    ; $4bba: $ff
    nop                                           ; $4bbb: $00
    rst RST_38                                    ; $4bbc: $ff
    nop                                           ; $4bbd: $00
    rst RST_38                                    ; $4bbe: $ff
    rst RST_38                                    ; $4bbf: $ff
    rst RST_38                                    ; $4bc0: $ff
    ld h, b                                       ; $4bc1: $60
    rst RST_38                                    ; $4bc2: $ff
    ld h, b                                       ; $4bc3: $60
    rst RST_38                                    ; $4bc4: $ff
    ld a, [hl]                                    ; $4bc5: $7e
    rst RST_38                                    ; $4bc6: $ff
    nop                                           ; $4bc7: $00
    rst RST_38                                    ; $4bc8: $ff
    nop                                           ; $4bc9: $00
    rst RST_38                                    ; $4bca: $ff
    nop                                           ; $4bcb: $00
    rst RST_38                                    ; $4bcc: $ff
    nop                                           ; $4bcd: $00
    rst RST_38                                    ; $4bce: $ff
    rst RST_38                                    ; $4bcf: $ff
    rst RST_38                                    ; $4bd0: $ff
    pop bc                                        ; $4bd1: $c1
    rst RST_38                                    ; $4bd2: $ff
    pop bc                                        ; $4bd3: $c1
    rst RST_38                                    ; $4bd4: $ff
    db $fc                                        ; $4bd5: $fc
    rst RST_38                                    ; $4bd6: $ff
    nop                                           ; $4bd7: $00
    rst RST_38                                    ; $4bd8: $ff
    nop                                           ; $4bd9: $00
    rst RST_38                                    ; $4bda: $ff
    nop                                           ; $4bdb: $00
    rst RST_38                                    ; $4bdc: $ff
    nop                                           ; $4bdd: $00
    rst RST_38                                    ; $4bde: $ff
    rst RST_38                                    ; $4bdf: $ff
    rst RST_38                                    ; $4be0: $ff
    add b                                         ; $4be1: $80
    rst RST_38                                    ; $4be2: $ff
    sbc b                                         ; $4be3: $98
    rst RST_38                                    ; $4be4: $ff
    ldh a, [rIE]                                  ; $4be5: $f0 $ff
    nop                                           ; $4be7: $00
    rst RST_38                                    ; $4be8: $ff
    nop                                           ; $4be9: $00
    rst RST_38                                    ; $4bea: $ff
    nop                                           ; $4beb: $00
    rst RST_38                                    ; $4bec: $ff
    nop                                           ; $4bed: $00
    rst RST_38                                    ; $4bee: $ff
    rst RST_38                                    ; $4bef: $ff
    rst RST_38                                    ; $4bf0: $ff
    ret nz                                        ; $4bf1: $c0

    rst RST_38                                    ; $4bf2: $ff
    ret nz                                        ; $4bf3: $c0

    rst RST_38                                    ; $4bf4: $ff
    ret nz                                        ; $4bf5: $c0

    rst RST_38                                    ; $4bf6: $ff
    nop                                           ; $4bf7: $00
    rst RST_38                                    ; $4bf8: $ff
    nop                                           ; $4bf9: $00
    rst RST_38                                    ; $4bfa: $ff
    nop                                           ; $4bfb: $00
    rst RST_38                                    ; $4bfc: $ff
    nop                                           ; $4bfd: $00
    rst RST_38                                    ; $4bfe: $ff
    rst RST_38                                    ; $4bff: $ff
    jp $c3f7                                      ; $4c00: $c3 $f7 $c3


    rst RST_30                                    ; $4c03: $f7
    jp $c3f7                                      ; $4c04: $c3 $f7 $c3


    rst RST_30                                    ; $4c07: $f7
    jp $c3f7                                      ; $4c08: $c3 $f7 $c3


    rst RST_30                                    ; $4c0b: $f7
    jp $c3f7                                      ; $4c0c: $c3 $f7 $c3


    rst RST_30                                    ; $4c0f: $f7
    sub d                                         ; $4c10: $92
    nop                                           ; $4c11: $00
    push bc                                       ; $4c12: $c5
    nop                                           ; $4c13: $00
    dec [hl]                                      ; $4c14: $35
    nop                                           ; $4c15: $00
    ld c, b                                       ; $4c16: $48
    nop                                           ; $4c17: $00
    sub $00                                       ; $4c18: $d6 $00
    add hl, de                                    ; $4c1a: $19
    nop                                           ; $4c1b: $00
    ld [$5400], a                                 ; $4c1c: $ea $00 $54
    nop                                           ; $4c1f: $00
    sub d                                         ; $4c20: $92
    nop                                           ; $4c21: $00
    push bc                                       ; $4c22: $c5
    nop                                           ; $4c23: $00
    dec [hl]                                      ; $4c24: $35
    nop                                           ; $4c25: $00
    ld c, b                                       ; $4c26: $48
    nop                                           ; $4c27: $00
    sub $00                                       ; $4c28: $d6 $00
    add hl, de                                    ; $4c2a: $19
    nop                                           ; $4c2b: $00
    ld [$5400], a                                 ; $4c2c: $ea $00 $54
    nop                                           ; $4c2f: $00
    sub d                                         ; $4c30: $92
    nop                                           ; $4c31: $00
    push bc                                       ; $4c32: $c5
    nop                                           ; $4c33: $00
    dec [hl]                                      ; $4c34: $35
    nop                                           ; $4c35: $00
    ld c, b                                       ; $4c36: $48
    nop                                           ; $4c37: $00
    sub $00                                       ; $4c38: $d6 $00
    add hl, de                                    ; $4c3a: $19
    nop                                           ; $4c3b: $00
    ld [$5400], a                                 ; $4c3c: $ea $00 $54
    nop                                           ; $4c3f: $00
    sub d                                         ; $4c40: $92
    nop                                           ; $4c41: $00
    push bc                                       ; $4c42: $c5
    nop                                           ; $4c43: $00
    dec [hl]                                      ; $4c44: $35
    nop                                           ; $4c45: $00
    ld c, b                                       ; $4c46: $48
    nop                                           ; $4c47: $00
    sub $00                                       ; $4c48: $d6 $00
    add hl, de                                    ; $4c4a: $19
    nop                                           ; $4c4b: $00
    ld [$5400], a                                 ; $4c4c: $ea $00 $54
    nop                                           ; $4c4f: $00
    sub d                                         ; $4c50: $92
    nop                                           ; $4c51: $00
    push bc                                       ; $4c52: $c5
    nop                                           ; $4c53: $00
    dec [hl]                                      ; $4c54: $35
    nop                                           ; $4c55: $00
    ld c, b                                       ; $4c56: $48
    nop                                           ; $4c57: $00
    sub $00                                       ; $4c58: $d6 $00
    add hl, de                                    ; $4c5a: $19
    nop                                           ; $4c5b: $00
    ld [$5400], a                                 ; $4c5c: $ea $00 $54
    nop                                           ; $4c5f: $00
    sub d                                         ; $4c60: $92
    nop                                           ; $4c61: $00
    push bc                                       ; $4c62: $c5
    nop                                           ; $4c63: $00
    dec [hl]                                      ; $4c64: $35
    nop                                           ; $4c65: $00
    ld c, b                                       ; $4c66: $48
    nop                                           ; $4c67: $00
    sub $00                                       ; $4c68: $d6 $00
    add hl, de                                    ; $4c6a: $19
    nop                                           ; $4c6b: $00
    ld [$5400], a                                 ; $4c6c: $ea $00 $54
    nop                                           ; $4c6f: $00
    sub d                                         ; $4c70: $92
    nop                                           ; $4c71: $00
    push bc                                       ; $4c72: $c5
    nop                                           ; $4c73: $00
    dec [hl]                                      ; $4c74: $35
    nop                                           ; $4c75: $00
    ld c, b                                       ; $4c76: $48
    nop                                           ; $4c77: $00
    sub $00                                       ; $4c78: $d6 $00
    add hl, de                                    ; $4c7a: $19
    nop                                           ; $4c7b: $00
    ld [$5400], a                                 ; $4c7c: $ea $00 $54
    nop                                           ; $4c7f: $00
    sub d                                         ; $4c80: $92
    nop                                           ; $4c81: $00
    push bc                                       ; $4c82: $c5
    nop                                           ; $4c83: $00
    dec [hl]                                      ; $4c84: $35
    nop                                           ; $4c85: $00
    ld c, b                                       ; $4c86: $48
    nop                                           ; $4c87: $00
    sub $00                                       ; $4c88: $d6 $00
    add hl, de                                    ; $4c8a: $19
    nop                                           ; $4c8b: $00
    ld [$5400], a                                 ; $4c8c: $ea $00 $54
    nop                                           ; $4c8f: $00
    jp $c3f7                                      ; $4c90: $c3 $f7 $c3


    rst RST_30                                    ; $4c93: $f7
    jp $c3f7                                      ; $4c94: $c3 $f7 $c3


    rst RST_30                                    ; $4c97: $f7
    jp $c3f7                                      ; $4c98: $c3 $f7 $c3


    rst RST_30                                    ; $4c9b: $f7
    jp $c3f7                                      ; $4c9c: $c3 $f7 $c3


    rst RST_30                                    ; $4c9f: $f7
    rst RST_38                                    ; $4ca0: $ff
    nop                                           ; $4ca1: $00
    rst RST_38                                    ; $4ca2: $ff
    nop                                           ; $4ca3: $00
    rst RST_38                                    ; $4ca4: $ff
    nop                                           ; $4ca5: $00
    rst RST_38                                    ; $4ca6: $ff
    nop                                           ; $4ca7: $00
    rst RST_38                                    ; $4ca8: $ff
    nop                                           ; $4ca9: $00
    db $fc                                        ; $4caa: $fc
    ld bc, $07f8                                  ; $4cab: $01 $f8 $07
    ldh a, [rTAC]                                 ; $4cae: $f0 $07
    rst RST_38                                    ; $4cb0: $ff
    nop                                           ; $4cb1: $00
    rst RST_38                                    ; $4cb2: $ff
    nop                                           ; $4cb3: $00
    rst RST_38                                    ; $4cb4: $ff
    nop                                           ; $4cb5: $00
    rst RST_38                                    ; $4cb6: $ff
    nop                                           ; $4cb7: $00
    rst RST_38                                    ; $4cb8: $ff
    nop                                           ; $4cb9: $00
    ccf                                           ; $4cba: $3f
    ret nz                                        ; $4cbb: $c0

    rra                                           ; $4cbc: $1f
    ldh [$ff1f], a                                ; $4cbd: $e0 $1f
    ldh [rIE], a                                  ; $4cbf: $e0 $ff
    nop                                           ; $4cc1: $00
    rst RST_38                                    ; $4cc2: $ff
    nop                                           ; $4cc3: $00
    rst RST_38                                    ; $4cc4: $ff
    nop                                           ; $4cc5: $00
    rst RST_38                                    ; $4cc6: $ff
    nop                                           ; $4cc7: $00
    rst RST_38                                    ; $4cc8: $ff
    nop                                           ; $4cc9: $00
    rst RST_38                                    ; $4cca: $ff
    nop                                           ; $4ccb: $00
    rst RST_38                                    ; $4ccc: $ff
    nop                                           ; $4ccd: $00
    rst RST_38                                    ; $4cce: $ff
    nop                                           ; $4ccf: $00
    sbc $de                                       ; $4cd0: $de $de
    sbc $de                                       ; $4cd2: $de $de
    xor $ee                                       ; $4cd4: $ee $ee
    xor $ee                                       ; $4cd6: $ee $ee
    halt                                          ; $4cd8: $76
    halt                                          ; $4cd9: $76
    halt                                          ; $4cda: $76
    halt                                          ; $4cdb: $76
    ld a, [$fafa]                                 ; $4cdc: $fa $fa $fa
    ld a, [$d7d7]                                 ; $4cdf: $fa $d7 $d7
    rst RST_10                                    ; $4ce2: $d7
    rst RST_10                                    ; $4ce3: $d7
    db $eb                                        ; $4ce4: $eb
    db $eb                                        ; $4ce5: $eb
    db $eb                                        ; $4ce6: $eb
    db $eb                                        ; $4ce7: $eb
    di                                            ; $4ce8: $f3
    di                                            ; $4ce9: $f3
    di                                            ; $4cea: $f3
    di                                            ; $4ceb: $f3
    db $eb                                        ; $4cec: $eb
    db $eb                                        ; $4ced: $eb
    db $eb                                        ; $4cee: $eb
    db $eb                                        ; $4cef: $eb
    nop                                           ; $4cf0: $00
    nop                                           ; $4cf1: $00
    nop                                           ; $4cf2: $00
    nop                                           ; $4cf3: $00
    nop                                           ; $4cf4: $00
    nop                                           ; $4cf5: $00
    nop                                           ; $4cf6: $00
    nop                                           ; $4cf7: $00
    nop                                           ; $4cf8: $00
    nop                                           ; $4cf9: $00
    nop                                           ; $4cfa: $00
    nop                                           ; $4cfb: $00
    nop                                           ; $4cfc: $00
    nop                                           ; $4cfd: $00
    nop                                           ; $4cfe: $00
    nop                                           ; $4cff: $00
    rst RST_38                                    ; $4d00: $ff
    rst RST_38                                    ; $4d01: $ff
    ld [$c3c3], sp                                ; $4d02: $08 $c3 $c3
    rst RST_30                                    ; $4d05: $f7
    jp $c3f7                                      ; $4d06: $c3 $f7 $c3


    rst RST_30                                    ; $4d09: $f7
    jp $c3f7                                      ; $4d0a: $c3 $f7 $c3


    rst RST_30                                    ; $4d0d: $f7
    jp $92f7                                      ; $4d0e: $c3 $f7 $92


    nop                                           ; $4d11: $00
    push bc                                       ; $4d12: $c5
    nop                                           ; $4d13: $00
    dec [hl]                                      ; $4d14: $35
    nop                                           ; $4d15: $00
    ld c, b                                       ; $4d16: $48
    nop                                           ; $4d17: $00
    sub $00                                       ; $4d18: $d6 $00
    add hl, de                                    ; $4d1a: $19
    nop                                           ; $4d1b: $00
    ld [$5400], a                                 ; $4d1c: $ea $00 $54
    nop                                           ; $4d1f: $00
    sub d                                         ; $4d20: $92
    nop                                           ; $4d21: $00
    push bc                                       ; $4d22: $c5
    nop                                           ; $4d23: $00
    dec [hl]                                      ; $4d24: $35
    nop                                           ; $4d25: $00
    ld c, b                                       ; $4d26: $48
    nop                                           ; $4d27: $00
    sub $00                                       ; $4d28: $d6 $00
    add hl, de                                    ; $4d2a: $19
    nop                                           ; $4d2b: $00
    ld [$5400], a                                 ; $4d2c: $ea $00 $54
    nop                                           ; $4d2f: $00
    sub d                                         ; $4d30: $92
    nop                                           ; $4d31: $00
    push bc                                       ; $4d32: $c5
    nop                                           ; $4d33: $00
    dec [hl]                                      ; $4d34: $35
    nop                                           ; $4d35: $00
    ld c, b                                       ; $4d36: $48
    nop                                           ; $4d37: $00
    sub $00                                       ; $4d38: $d6 $00
    add hl, de                                    ; $4d3a: $19
    nop                                           ; $4d3b: $00
    ld [$5400], a                                 ; $4d3c: $ea $00 $54
    nop                                           ; $4d3f: $00
    sub d                                         ; $4d40: $92
    nop                                           ; $4d41: $00
    push bc                                       ; $4d42: $c5
    nop                                           ; $4d43: $00
    dec [hl]                                      ; $4d44: $35
    nop                                           ; $4d45: $00
    ld c, b                                       ; $4d46: $48
    nop                                           ; $4d47: $00
    sub $00                                       ; $4d48: $d6 $00
    add hl, de                                    ; $4d4a: $19
    nop                                           ; $4d4b: $00
    ld [$5400], a                                 ; $4d4c: $ea $00 $54
    nop                                           ; $4d4f: $00
    sub d                                         ; $4d50: $92
    nop                                           ; $4d51: $00
    push bc                                       ; $4d52: $c5
    nop                                           ; $4d53: $00
    dec [hl]                                      ; $4d54: $35
    nop                                           ; $4d55: $00
    ld c, b                                       ; $4d56: $48
    nop                                           ; $4d57: $00
    sub $00                                       ; $4d58: $d6 $00
    add hl, de                                    ; $4d5a: $19
    nop                                           ; $4d5b: $00
    ld [$5400], a                                 ; $4d5c: $ea $00 $54
    nop                                           ; $4d5f: $00
    sub d                                         ; $4d60: $92
    nop                                           ; $4d61: $00
    push bc                                       ; $4d62: $c5
    nop                                           ; $4d63: $00
    dec [hl]                                      ; $4d64: $35
    nop                                           ; $4d65: $00
    ld c, b                                       ; $4d66: $48
    nop                                           ; $4d67: $00
    sub $00                                       ; $4d68: $d6 $00
    add hl, de                                    ; $4d6a: $19
    nop                                           ; $4d6b: $00
    ld [$5400], a                                 ; $4d6c: $ea $00 $54
    nop                                           ; $4d6f: $00
    sub d                                         ; $4d70: $92
    nop                                           ; $4d71: $00
    push bc                                       ; $4d72: $c5
    nop                                           ; $4d73: $00
    dec [hl]                                      ; $4d74: $35
    nop                                           ; $4d75: $00
    ld c, b                                       ; $4d76: $48
    nop                                           ; $4d77: $00
    sub $00                                       ; $4d78: $d6 $00
    add hl, de                                    ; $4d7a: $19
    nop                                           ; $4d7b: $00
    ld [$5400], a                                 ; $4d7c: $ea $00 $54
    nop                                           ; $4d7f: $00
    sub d                                         ; $4d80: $92
    nop                                           ; $4d81: $00
    push bc                                       ; $4d82: $c5
    nop                                           ; $4d83: $00
    dec [hl]                                      ; $4d84: $35
    nop                                           ; $4d85: $00
    ld c, b                                       ; $4d86: $48
    nop                                           ; $4d87: $00
    sub $00                                       ; $4d88: $d6 $00
    add hl, de                                    ; $4d8a: $19
    nop                                           ; $4d8b: $00
    ld [$5400], a                                 ; $4d8c: $ea $00 $54
    nop                                           ; $4d8f: $00
    rst RST_38                                    ; $4d90: $ff
    rst RST_38                                    ; $4d91: $ff
    ld [$c3c3], sp                                ; $4d92: $08 $c3 $c3
    rst RST_30                                    ; $4d95: $f7
    jp $c3f7                                      ; $4d96: $c3 $f7 $c3


    rst RST_30                                    ; $4d99: $f7
    jp $c3f7                                      ; $4d9a: $c3 $f7 $c3


    rst RST_30                                    ; $4d9d: $f7
    jp $f0f7                                      ; $4d9e: $c3 $f7 $f0


jr_009_4da1:
    rrca                                          ; $4da1: $0f
    ldh a, [rIF]                                  ; $4da2: $f0 $0f
    ld hl, sp+$07                                 ; $4da4: $f8 $07
    rst RST_38                                    ; $4da6: $ff
    nop                                           ; $4da7: $00
    rst RST_38                                    ; $4da8: $ff
    nop                                           ; $4da9: $00
    rst RST_38                                    ; $4daa: $ff
    nop                                           ; $4dab: $00
    rst RST_38                                    ; $4dac: $ff
    nop                                           ; $4dad: $00
    rst RST_38                                    ; $4dae: $ff
    rst RST_38                                    ; $4daf: $ff
    rra                                           ; $4db0: $1f
    ret nz                                        ; $4db1: $c0

    ccf                                           ; $4db2: $3f
    ret nz                                        ; $4db3: $c0

    ld a, a                                       ; $4db4: $7f
    nop                                           ; $4db5: $00
    rst RST_38                                    ; $4db6: $ff
    nop                                           ; $4db7: $00
    rst RST_38                                    ; $4db8: $ff
    nop                                           ; $4db9: $00
    rst RST_38                                    ; $4dba: $ff
    nop                                           ; $4dbb: $00
    rst RST_38                                    ; $4dbc: $ff
    nop                                           ; $4dbd: $00
    rst RST_38                                    ; $4dbe: $ff
    rst RST_38                                    ; $4dbf: $ff
    rst RST_38                                    ; $4dc0: $ff
    nop                                           ; $4dc1: $00
    rst RST_38                                    ; $4dc2: $ff
    nop                                           ; $4dc3: $00
    rst RST_38                                    ; $4dc4: $ff
    nop                                           ; $4dc5: $00
    rst RST_38                                    ; $4dc6: $ff
    nop                                           ; $4dc7: $00
    rst RST_38                                    ; $4dc8: $ff
    nop                                           ; $4dc9: $00
    rst RST_38                                    ; $4dca: $ff
    nop                                           ; $4dcb: $00
    rst RST_38                                    ; $4dcc: $ff
    nop                                           ; $4dcd: $00
    rst RST_38                                    ; $4dce: $ff
    rst RST_38                                    ; $4dcf: $ff
    db $eb                                        ; $4dd0: $eb
    db $eb                                        ; $4dd1: $eb
    db $eb                                        ; $4dd2: $eb
    db $eb                                        ; $4dd3: $eb
    rst RST_10                                    ; $4dd4: $d7
    rst RST_10                                    ; $4dd5: $d7
    rst RST_10                                    ; $4dd6: $d7
    rst RST_10                                    ; $4dd7: $d7
    rst RST_08                                    ; $4dd8: $cf
    rst RST_08                                    ; $4dd9: $cf
    rst RST_08                                    ; $4dda: $cf
    rst RST_08                                    ; $4ddb: $cf

jr_009_4ddc:
    rst RST_10                                    ; $4ddc: $d7
    rst RST_10                                    ; $4ddd: $d7
    rst RST_10                                    ; $4dde: $d7
    rst RST_10                                    ; $4ddf: $d7
    ld a, e                                       ; $4de0: $7b
    ld a, e                                       ; $4de1: $7b
    ld a, e                                       ; $4de2: $7b
    ld a, e                                       ; $4de3: $7b
    ld [hl], a                                    ; $4de4: $77
    ld [hl], a                                    ; $4de5: $77
    ld [hl], a                                    ; $4de6: $77
    ld [hl], a                                    ; $4de7: $77
    ld l, [hl]                                    ; $4de8: $6e
    ld l, [hl]                                    ; $4de9: $6e
    ld l, [hl]                                    ; $4dea: $6e
    ld l, [hl]                                    ; $4deb: $6e
    ld e, a                                       ; $4dec: $5f
    ld e, a                                       ; $4ded: $5f
    ld e, a                                       ; $4dee: $5f
    ld e, a                                       ; $4def: $5f
    nop                                           ; $4df0: $00
    nop                                           ; $4df1: $00
    nop                                           ; $4df2: $00
    nop                                           ; $4df3: $00
    nop                                           ; $4df4: $00
    nop                                           ; $4df5: $00
    nop                                           ; $4df6: $00
    nop                                           ; $4df7: $00
    nop                                           ; $4df8: $00
    nop                                           ; $4df9: $00
    nop                                           ; $4dfa: $00
    nop                                           ; $4dfb: $00
    nop                                           ; $4dfc: $00
    nop                                           ; $4dfd: $00
    nop                                           ; $4dfe: $00
    nop                                           ; $4dff: $00
    rst RST_38                                    ; $4e00: $ff
    nop                                           ; $4e01: $00
    rst RST_38                                    ; $4e02: $ff
    ld a, a                                       ; $4e03: $7f
    push bc                                       ; $4e04: $c5
    ld c, h                                       ; $4e05: $4c
    bit 3, h                                      ; $4e06: $cb $5c
    ret z                                         ; $4e08: $c8

    ld a, b                                       ; $4e09: $78
    ret nc                                        ; $4e0a: $d0

    ld e, a                                       ; $4e0b: $5f
    ret nc                                        ; $4e0c: $d0

    ld d, c                                       ; $4e0d: $51
    sbc $50                                       ; $4e0e: $de $50
    rst RST_38                                    ; $4e10: $ff
    db $fc                                        ; $4e11: $fc
    ld b, e                                       ; $4e12: $43
    cp a                                          ; $4e13: $bf
    jp nz, $813d                                  ; $4e14: $c2 $3d $81

    inc a                                         ; $4e17: $3c
    nop                                           ; $4e18: $00
    ld b, [hl]                                    ; $4e19: $46
    jr c, @-$7b                                   ; $4e1a: $38 $83

    jr c, jr_009_4da1                             ; $4e1c: $38 $83

    jr c, @-$7b                                   ; $4e1e: $38 $83

    rst RST_38                                    ; $4e20: $ff
    nop                                           ; $4e21: $00
    rst RST_38                                    ; $4e22: $ff
    rst RST_38                                    ; $4e23: $ff
    add b                                         ; $4e24: $80
    bit 0, b                                      ; $4e25: $cb $40
    db $eb                                        ; $4e27: $eb

jr_009_4e28:
    ret nz                                        ; $4e28: $c0

    ld e, l                                       ; $4e29: $5d
    jr nz, jr_009_4e28                            ; $4e2a: $20 $fc

    jr nz, jr_009_4ddc                            ; $4e2c: $20 $ae

    ld h, b                                       ; $4e2e: $60
    cpl                                           ; $4e2f: $2f
    rst RST_38                                    ; $4e30: $ff
    nop                                           ; $4e31: $00
    rst RST_38                                    ; $4e32: $ff
    rst RST_38                                    ; $4e33: $ff
    nop                                           ; $4e34: $00
    sbc e                                         ; $4e35: $9b
    nop                                           ; $4e36: $00
    ld e, h                                       ; $4e37: $5c
    ld b, $7e                                     ; $4e38: $06 $7e
    rrca                                          ; $4e3a: $0f
    ld e, c                                       ; $4e3b: $59
    rrca                                          ; $4e3c: $0f
    ld e, c                                       ; $4e3d: $59
    rrca                                          ; $4e3e: $0f
    ld hl, sp-$01                                 ; $4e3f: $f8 $ff
    nop                                           ; $4e41: $00
    rst RST_38                                    ; $4e42: $ff
    rst RST_38                                    ; $4e43: $ff
    nop                                           ; $4e44: $00
    ld e, a                                       ; $4e45: $5f
    nop                                           ; $4e46: $00
    rst RST_08                                    ; $4e47: $cf
    ld l, l                                       ; $4e48: $6d
    db $fd                                        ; $4e49: $fd
    rst RST_38                                    ; $4e4a: $ff
    sub d                                         ; $4e4b: $92
    rst RST_38                                    ; $4e4c: $ff
    ld [hl-], a                                   ; $4e4d: $32
    rst RST_18                                    ; $4e4e: $df
    ld [hl], d                                    ; $4e4f: $72
    rst RST_38                                    ; $4e50: $ff
    nop                                           ; $4e51: $00
    rst RST_38                                    ; $4e52: $ff
    rst RST_38                                    ; $4e53: $ff
    nop                                           ; $4e54: $00
    sbc e                                         ; $4e55: $9b
    nop                                           ; $4e56: $00
    ld e, h                                       ; $4e57: $5c
    sbc c                                         ; $4e58: $99
    db $fd                                        ; $4e59: $fd
    rst RST_38                                    ; $4e5a: $ff
    ld h, [hl]                                    ; $4e5b: $66
    rst RST_38                                    ; $4e5c: $ff
    inc h                                         ; $4e5d: $24
    rst RST_38                                    ; $4e5e: $ff
    inc b                                         ; $4e5f: $04
    rst RST_38                                    ; $4e60: $ff
    nop                                           ; $4e61: $00
    rst RST_38                                    ; $4e62: $ff
    rst RST_38                                    ; $4e63: $ff
    nop                                           ; $4e64: $00
    db $db                                        ; $4e65: $db
    nop                                           ; $4e66: $00
    ld a, e                                       ; $4e67: $7b
    and $ef                                       ; $4e68: $e6 $ef
    rst RST_38                                    ; $4e6a: $ff
    add hl, de                                    ; $4e6b: $19
    rst RST_38                                    ; $4e6c: $ff
    ret                                           ; $4e6d: $c9


    rst RST_38                                    ; $4e6e: $ff
    ret z                                         ; $4e6f: $c8

    rst RST_38                                    ; $4e70: $ff
    nop                                           ; $4e71: $00
    rst RST_38                                    ; $4e72: $ff
    rst RST_38                                    ; $4e73: $ff
    nop                                           ; $4e74: $00
    adc [hl]                                      ; $4e75: $8e
    nop                                           ; $4e76: $00
    rst RST_08                                    ; $4e77: $cf
    ld h, a                                       ; $4e78: $67
    rst RST_30                                    ; $4e79: $f7
    rst RST_38                                    ; $4e7a: $ff
    sbc b                                         ; $4e7b: $98
    rst RST_38                                    ; $4e7c: $ff
    inc sp                                        ; $4e7d: $33
    rst RST_18                                    ; $4e7e: $df
    ld [hl], e                                    ; $4e7f: $73
    rst RST_38                                    ; $4e80: $ff
    nop                                           ; $4e81: $00
    rst RST_38                                    ; $4e82: $ff
    rst RST_38                                    ; $4e83: $ff
    nop                                           ; $4e84: $00
    sbc e                                         ; $4e85: $9b
    nop                                           ; $4e86: $00
    ld e, h                                       ; $4e87: $5c
    add b                                         ; $4e88: $80
    db $fc                                        ; $4e89: $fc
    ret nz                                        ; $4e8a: $c0

    ld e, l                                       ; $4e8b: $5d
    ldh [$ff3d], a                                ; $4e8c: $e0 $3d
    ldh [$ff3e], a                                ; $4e8e: $e0 $3e
    rst RST_38                                    ; $4e90: $ff
    ld bc, $fdff                                  ; $4e91: $01 $ff $fd
    inc bc                                        ; $4e94: $03
    reti                                          ; $4e95: $d9


    inc bc                                        ; $4e96: $03
    ld a, c                                       ; $4e97: $79
    inc bc                                        ; $4e98: $03
    db $ed                                        ; $4e99: $ed
    inc bc                                        ; $4e9a: $03
    db $ed                                        ; $4e9b: $ed
    inc bc                                        ; $4e9c: $03
    xor l                                         ; $4e9d: $ad
    inc bc                                        ; $4e9e: $03
    ld e, l                                       ; $4e9f: $5d
    rst RST_38                                    ; $4ea0: $ff
    rst RST_38                                    ; $4ea1: $ff
    rst RST_38                                    ; $4ea2: $ff
    rst RST_38                                    ; $4ea3: $ff
    rst RST_38                                    ; $4ea4: $ff
    rst RST_38                                    ; $4ea5: $ff
    rst RST_38                                    ; $4ea6: $ff
    rst RST_38                                    ; $4ea7: $ff
    rst RST_38                                    ; $4ea8: $ff
    rst RST_38                                    ; $4ea9: $ff
    and $e6                                       ; $4eaa: $e6 $e6
    reti                                          ; $4eac: $d9


    reti                                          ; $4ead: $d9


    cp e                                          ; $4eae: $bb
    cp e                                          ; $4eaf: $bb
    rst RST_38                                    ; $4eb0: $ff
    rst RST_38                                    ; $4eb1: $ff
    ldh a, [$fff0]                                ; $4eb2: $f0 $f0
    rst RST_08                                    ; $4eb4: $cf
    rst RST_08                                    ; $4eb5: $cf
    cp a                                          ; $4eb6: $bf
    cp a                                          ; $4eb7: $bf
    ld a, a                                       ; $4eb8: $7f
    ld a, a                                       ; $4eb9: $7f
    rst RST_38                                    ; $4eba: $ff
    rst RST_38                                    ; $4ebb: $ff
    rst RST_38                                    ; $4ebc: $ff
    rst RST_38                                    ; $4ebd: $ff
    rst RST_38                                    ; $4ebe: $ff
    rst RST_38                                    ; $4ebf: $ff
    rst RST_38                                    ; $4ec0: $ff
    rst RST_38                                    ; $4ec1: $ff
    rra                                           ; $4ec2: $1f
    rra                                           ; $4ec3: $1f
    rst RST_20                                    ; $4ec4: $e7
    rst RST_20                                    ; $4ec5: $e7
    ei                                            ; $4ec6: $fb
    ei                                            ; $4ec7: $fb
    db $fd                                        ; $4ec8: $fd
    db $fd                                        ; $4ec9: $fd
    cp $fe                                        ; $4eca: $fe $fe
    rst RST_38                                    ; $4ecc: $ff
    rst RST_38                                    ; $4ecd: $ff
    cp $fe                                        ; $4ece: $fe $fe
    rst RST_38                                    ; $4ed0: $ff
    rst RST_38                                    ; $4ed1: $ff
    rst RST_38                                    ; $4ed2: $ff
    rst RST_38                                    ; $4ed3: $ff
    rst RST_38                                    ; $4ed4: $ff
    rst RST_38                                    ; $4ed5: $ff
    rst RST_38                                    ; $4ed6: $ff
    rst RST_38                                    ; $4ed7: $ff
    rst RST_38                                    ; $4ed8: $ff
    rst RST_38                                    ; $4ed9: $ff
    rst RST_38                                    ; $4eda: $ff
    rst RST_38                                    ; $4edb: $ff
    ld a, a                                       ; $4edc: $7f
    ld a, a                                       ; $4edd: $7f
    ld a, a                                       ; $4ede: $7f
    ld a, a                                       ; $4edf: $7f
    rst RST_38                                    ; $4ee0: $ff
    rst RST_38                                    ; $4ee1: $ff
    rst RST_38                                    ; $4ee2: $ff

jr_009_4ee3:
    rst RST_38                                    ; $4ee3: $ff
    rst RST_38                                    ; $4ee4: $ff
    rst RST_38                                    ; $4ee5: $ff
    rst RST_38                                    ; $4ee6: $ff
    rst RST_38                                    ; $4ee7: $ff
    rst RST_38                                    ; $4ee8: $ff
    rst RST_38                                    ; $4ee9: $ff
    rst RST_38                                    ; $4eea: $ff
    rst RST_38                                    ; $4eeb: $ff
    cp $fe                                        ; $4eec: $fe $fe
    cp $fe                                        ; $4eee: $fe $fe
    rst RST_38                                    ; $4ef0: $ff
    rst RST_38                                    ; $4ef1: $ff
    ld hl, sp-$08                                 ; $4ef2: $f8 $f8
    rst RST_20                                    ; $4ef4: $e7
    rst RST_20                                    ; $4ef5: $e7
    rst RST_18                                    ; $4ef6: $df
    rst RST_18                                    ; $4ef7: $df
    cp a                                          ; $4ef8: $bf
    cp a                                          ; $4ef9: $bf
    ld a, a                                       ; $4efa: $7f
    ld a, a                                       ; $4efb: $7f
    rst RST_38                                    ; $4efc: $ff
    rst RST_38                                    ; $4efd: $ff
    ld a, a                                       ; $4efe: $7f
    ld a, a                                       ; $4eff: $7f
    call c, $d151                                 ; $4f00: $dc $51 $d1
    ld a, e                                       ; $4f03: $7b
    adc $7f                                       ; $4f04: $ce $7f
    call nz, $c446                                ; $4f06: $c4 $46 $c4
    halt                                          ; $4f09: $76
    jp nz, $ff7f                                  ; $4f0a: $c2 $7f $ff

    ld bc, rIE                                    ; $4f0d: $01 $ff $ff
    nop                                           ; $4f10: $00
    rst RST_00                                    ; $4f11: $c7
    cp $ff                                        ; $4f12: $fe $ff
    ld c, c                                       ; $4f14: $49
    ld c, e                                       ; $4f15: $4b
    db $fc                                        ; $4f16: $fc
    ld c, c                                       ; $4f17: $49
    db $fc                                        ; $4f18: $fc
    ld bc, $0379                                  ; $4f19: $01 $79 $03
    rst RST_38                                    ; $4f1c: $ff
    cp $ff                                        ; $4f1d: $fe $ff
    rst RST_38                                    ; $4f1f: $ff
    ld h, b                                       ; $4f20: $60
    dec a                                         ; $4f21: $3d
    jr nz, jr_009_4ee3                            ; $4f22: $20 $bf

    ret nz                                        ; $4f24: $c0

    ei                                            ; $4f25: $fb
    add b                                         ; $4f26: $80
    sub e                                         ; $4f27: $93
    add b                                         ; $4f28: $80
    reti                                          ; $4f29: $d9


    nop                                           ; $4f2a: $00
    cp $ff                                        ; $4f2b: $fe $ff
    nop                                           ; $4f2d: $00
    rst RST_38                                    ; $4f2e: $ff
    rst RST_38                                    ; $4f2f: $ff
    rrca                                          ; $4f30: $0f
    ret c                                         ; $4f31: $d8

    rrca                                          ; $4f32: $0f
    add hl, sp                                    ; $4f33: $39
    rrca                                          ; $4f34: $0f
    ld a, c                                       ; $4f35: $79
    ld b, $ee                                     ; $4f36: $06 $ee
    nop                                           ; $4f38: $00
    db $ed                                        ; $4f39: $ed
    nop                                           ; $4f3a: $00
    jp Jump_000_00ff                              ; $4f3b: $c3 $ff $00


    rst RST_38                                    ; $4f3e: $ff
    rst RST_38                                    ; $4f3f: $ff
    rst RST_18                                    ; $4f40: $df
    ld [hl], d                                    ; $4f41: $72
    rst RST_38                                    ; $4f42: $ff
    ld [hl-], a                                   ; $4f43: $32
    rst RST_38                                    ; $4f44: $ff
    sub d                                         ; $4f45: $92
    ld l, l                                       ; $4f46: $6d
    ld a, a                                       ; $4f47: $7f
    nop                                           ; $4f48: $00
    db $ec                                        ; $4f49: $ec
    nop                                           ; $4f4a: $00
    db $ec                                        ; $4f4b: $ec
    rst RST_38                                    ; $4f4c: $ff
    nop                                           ; $4f4d: $00
    rst RST_38                                    ; $4f4e: $ff
    rst RST_38                                    ; $4f4f: $ff
    rst RST_38                                    ; $4f50: $ff
    ld b, h                                       ; $4f51: $44
    rst RST_38                                    ; $4f52: $ff
    ld h, h                                       ; $4f53: $64
    rst RST_38                                    ; $4f54: $ff
    ld h, [hl]                                    ; $4f55: $66
    sbc c                                         ; $4f56: $99
    rst RST_38                                    ; $4f57: $ff
    nop                                           ; $4f58: $00
    ld l, a                                       ; $4f59: $6f
    nop                                           ; $4f5a: $00
    jp Jump_000_00ff                              ; $4f5b: $c3 $ff $00


    rst RST_38                                    ; $4f5e: $ff
    rst RST_38                                    ; $4f5f: $ff
    rst RST_38                                    ; $4f60: $ff
    ret z                                         ; $4f61: $c8

    rst RST_38                                    ; $4f62: $ff
    ret                                           ; $4f63: $c9


    rst RST_38                                    ; $4f64: $ff
    add hl, de                                    ; $4f65: $19
    and $f7                                       ; $4f66: $e6 $f7
    nop                                           ; $4f68: $00
    ret                                           ; $4f69: $c9


    nop                                           ; $4f6a: $00
    ld a, [hl]                                    ; $4f6b: $7e
    rst RST_38                                    ; $4f6c: $ff
    nop                                           ; $4f6d: $00
    rst RST_38                                    ; $4f6e: $ff
    rst RST_38                                    ; $4f6f: $ff
    rst RST_18                                    ; $4f70: $df
    ld d, e                                       ; $4f71: $53
    rst RST_38                                    ; $4f72: $ff
    inc sp                                        ; $4f73: $33
    rst RST_38                                    ; $4f74: $ff
    sbc b                                         ; $4f75: $98
    ld h, a                                       ; $4f76: $67
    rst RST_30                                    ; $4f77: $f7
    nop                                           ; $4f78: $00
    ld de, $d600                                  ; $4f79: $11 $00 $d6
    rst RST_38                                    ; $4f7c: $ff
    nop                                           ; $4f7d: $00
    rst RST_38                                    ; $4f7e: $ff
    rst RST_38                                    ; $4f7f: $ff
    ldh [$ff3a], a                                ; $4f80: $e0 $3a
    ldh [rNR51], a                                ; $4f82: $e0 $25
    ret nz                                        ; $4f84: $c0

    ld [hl], a                                    ; $4f85: $77
    add b                                         ; $4f86: $80
    cp $00                                        ; $4f87: $fe $00
    ld l, a                                       ; $4f89: $6f
    nop                                           ; $4f8a: $00
    jp Jump_000_00ff                              ; $4f8b: $c3 $ff $00


    rst RST_38                                    ; $4f8e: $ff
    rst RST_38                                    ; $4f8f: $ff
    inc bc                                        ; $4f90: $03
    call $ed03                                    ; $4f91: $cd $03 $ed
    inc bc                                        ; $4f94: $03
    ld sp, hl                                     ; $4f95: $f9
    inc bc                                        ; $4f96: $03
    pop de                                        ; $4f97: $d1
    inc bc                                        ; $4f98: $03
    ret                                           ; $4f99: $c9


jr_009_4f9a:
    inc bc                                        ; $4f9a: $03
    ld a, l                                       ; $4f9b: $7d

jr_009_4f9c:
    rst RST_38                                    ; $4f9c: $ff
    ld bc, rIE                                    ; $4f9d: $01 $ff $ff
    or a                                          ; $4fa0: $b7
    or a                                          ; $4fa1: $b7
    ld [hl], a                                    ; $4fa2: $77
    ld [hl], a                                    ; $4fa3: $77
    ld l, a                                       ; $4fa4: $6f
    ld l, a                                       ; $4fa5: $6f
    ld l, a                                       ; $4fa6: $6f
    ld l, a                                       ; $4fa7: $6f
    ld e, a                                       ; $4fa8: $5f
    ld e, a                                       ; $4fa9: $5f
    ld e, a                                       ; $4faa: $5f
    ld e, a                                       ; $4fab: $5f
    cp a                                          ; $4fac: $bf
    cp a                                          ; $4fad: $bf
    cp a                                          ; $4fae: $bf
    cp a                                          ; $4faf: $bf
    rst RST_38                                    ; $4fb0: $ff
    rst RST_38                                    ; $4fb1: $ff
    rst RST_38                                    ; $4fb2: $ff
    rst RST_38                                    ; $4fb3: $ff
    rst RST_38                                    ; $4fb4: $ff
    rst RST_38                                    ; $4fb5: $ff
    rst RST_38                                    ; $4fb6: $ff
    rst RST_38                                    ; $4fb7: $ff
    rst RST_38                                    ; $4fb8: $ff
    rst RST_38                                    ; $4fb9: $ff
    rst RST_38                                    ; $4fba: $ff
    rst RST_38                                    ; $4fbb: $ff
    add a                                         ; $4fbc: $87
    add a                                         ; $4fbd: $87
    ld a, e                                       ; $4fbe: $7b
    ld a, e                                       ; $4fbf: $7b
    db $fd                                        ; $4fc0: $fd
    db $fd                                        ; $4fc1: $fd
    db $fd                                        ; $4fc2: $fd
    db $fd                                        ; $4fc3: $fd
    db $fd                                        ; $4fc4: $fd
    db $fd                                        ; $4fc5: $fd
    db $fc                                        ; $4fc6: $fc
    db $fc                                        ; $4fc7: $fc
    ld sp, hl                                     ; $4fc8: $f9
    ld sp, hl                                     ; $4fc9: $f9
    rst RST_20                                    ; $4fca: $e7
    rst RST_20                                    ; $4fcb: $e7
    rst RST_18                                    ; $4fcc: $df
    rst RST_18                                    ; $4fcd: $df
    ccf                                           ; $4fce: $3f
    ccf                                           ; $4fcf: $3f
    cp a                                          ; $4fd0: $bf
    cp a                                          ; $4fd1: $bf
    cp a                                          ; $4fd2: $bf
    cp a                                          ; $4fd3: $bf
    cp a                                          ; $4fd4: $bf
    cp a                                          ; $4fd5: $bf
    rrca                                          ; $4fd6: $0f
    rrca                                          ; $4fd7: $0f
    di                                            ; $4fd8: $f3
    di                                            ; $4fd9: $f3
    db $fd                                        ; $4fda: $fd
    db $fd                                        ; $4fdb: $fd
    cp $fe                                        ; $4fdc: $fe $fe
    cp $fe                                        ; $4fde: $fe $fe
    db $fd                                        ; $4fe0: $fd
    db $fd                                        ; $4fe1: $fd
    db $fd                                        ; $4fe2: $fd
    db $fd                                        ; $4fe3: $fd
    db $fd                                        ; $4fe4: $fd
    db $fd                                        ; $4fe5: $fd
    ldh a, [$fff0]                                ; $4fe6: $f0 $f0
    rst RST_08                                    ; $4fe8: $cf
    rst RST_08                                    ; $4fe9: $cf
    cp a                                          ; $4fea: $bf
    cp a                                          ; $4feb: $bf
    ld a, a                                       ; $4fec: $7f
    ld a, a                                       ; $4fed: $7f
    ld a, a                                       ; $4fee: $7f
    ld a, a                                       ; $4fef: $7f
    cp a                                          ; $4ff0: $bf
    cp a                                          ; $4ff1: $bf
    cp a                                          ; $4ff2: $bf
    cp a                                          ; $4ff3: $bf
    cp a                                          ; $4ff4: $bf
    cp a                                          ; $4ff5: $bf
    ccf                                           ; $4ff6: $3f
    ccf                                           ; $4ff7: $3f
    sbc a                                         ; $4ff8: $9f
    sbc a                                         ; $4ff9: $9f
    rst RST_20                                    ; $4ffa: $e7
    rst RST_20                                    ; $4ffb: $e7
    ei                                            ; $4ffc: $fb
    ei                                            ; $4ffd: $fb
    db $fc                                        ; $4ffe: $fc
    db $fc                                        ; $4fff: $fc
    rst RST_38                                    ; $5000: $ff
    nop                                           ; $5001: $00
    rst RST_38                                    ; $5002: $ff
    ld a, a                                       ; $5003: $7f
    ret nz                                        ; $5004: $c0

    ld b, b                                       ; $5005: $40
    ret nz                                        ; $5006: $c0

    ld b, b                                       ; $5007: $40
    ret nz                                        ; $5008: $c0

    ld b, b                                       ; $5009: $40
    ret nz                                        ; $500a: $c0

    ld e, a                                       ; $500b: $5f
    rst RST_00                                    ; $500c: $c7
    ld d, b                                       ; $500d: $50
    jp $cf48                                      ; $500e: $c3 $48 $cf


    jr nc, jr_009_4f9a                            ; $5011: $30 $87

    rst RST_08                                    ; $5013: $cf
    jr nc, jr_009_505e                            ; $5014: $30 $48

    jr nc, jr_009_4f9c                            ; $5016: $30 $84

    ld a, b                                       ; $5018: $78
    add h                                         ; $5019: $84
    ld a, b                                       ; $501a: $78
    inc bc                                        ; $501b: $03
    or a                                          ; $501c: $b7
    ld c, b                                       ; $501d: $48
    or a                                          ; $501e: $b7
    ld c, b                                       ; $501f: $48
    rst RST_38                                    ; $5020: $ff
    nop                                           ; $5021: $00
    rst RST_38                                    ; $5022: $ff
    rst RST_38                                    ; $5023: $ff
    nop                                           ; $5024: $00
    nop                                           ; $5025: $00
    nop                                           ; $5026: $00
    nop                                           ; $5027: $00
    nop                                           ; $5028: $00
    nop                                           ; $5029: $00
    nop                                           ; $502a: $00
    ldh [$ff80], a                                ; $502b: $e0 $80
    jr nz, jr_009_502f                            ; $502d: $20 $00

jr_009_502f:
    ld b, b                                       ; $502f: $40
    rst RST_38                                    ; $5030: $ff
    nop                                           ; $5031: $00
    rst RST_38                                    ; $5032: $ff
    rst RST_38                                    ; $5033: $ff
    nop                                           ; $5034: $00
    nop                                           ; $5035: $00
    nop                                           ; $5036: $00
    nop                                           ; $5037: $00
    nop                                           ; $5038: $00
    nop                                           ; $5039: $00
    nop                                           ; $503a: $00
    nop                                           ; $503b: $00
    nop                                           ; $503c: $00
    nop                                           ; $503d: $00
    nop                                           ; $503e: $00
    nop                                           ; $503f: $00
    rst RST_38                                    ; $5040: $ff
    nop                                           ; $5041: $00
    rst RST_38                                    ; $5042: $ff
    rst RST_38                                    ; $5043: $ff
    nop                                           ; $5044: $00
    nop                                           ; $5045: $00
    nop                                           ; $5046: $00
    nop                                           ; $5047: $00
    nop                                           ; $5048: $00
    nop                                           ; $5049: $00
    ld a, c                                       ; $504a: $79
    ld a, c                                       ; $504b: $79
    ret nz                                        ; $504c: $c0

    ret nz                                        ; $504d: $c0

    ld a, b                                       ; $504e: $78
    ld a, b                                       ; $504f: $78
    rst RST_38                                    ; $5050: $ff
    nop                                           ; $5051: $00
    rst RST_38                                    ; $5052: $ff
    rst RST_38                                    ; $5053: $ff
    nop                                           ; $5054: $00
    nop                                           ; $5055: $00
    nop                                           ; $5056: $00
    nop                                           ; $5057: $00
    nop                                           ; $5058: $00
    nop                                           ; $5059: $00
    ld sp, hl                                     ; $505a: $f9
    ld sp, hl                                     ; $505b: $f9
    ld h, e                                       ; $505c: $63
    ld h, e                                       ; $505d: $63

jr_009_505e:
    ld h, e                                       ; $505e: $63
    ld h, e                                       ; $505f: $63
    rst RST_38                                    ; $5060: $ff
    nop                                           ; $5061: $00
    rst RST_38                                    ; $5062: $ff
    rst RST_38                                    ; $5063: $ff
    nop                                           ; $5064: $00
    nop                                           ; $5065: $00
    nop                                           ; $5066: $00
    nop                                           ; $5067: $00
    nop                                           ; $5068: $00
    nop                                           ; $5069: $00
    rst RST_20                                    ; $506a: $e7
    rst RST_20                                    ; $506b: $e7
    ld [hl], $36                                  ; $506c: $36 $36
    ld [hl], $36                                  ; $506e: $36 $36
    rst RST_38                                    ; $5070: $ff
    nop                                           ; $5071: $00
    rst RST_38                                    ; $5072: $ff
    rst RST_38                                    ; $5073: $ff
    nop                                           ; $5074: $00
    nop                                           ; $5075: $00
    nop                                           ; $5076: $00
    nop                                           ; $5077: $00
    nop                                           ; $5078: $00
    nop                                           ; $5079: $00
    ret nz                                        ; $507a: $c0

    ret nz                                        ; $507b: $c0

    ld h, b                                       ; $507c: $60
    ld h, b                                       ; $507d: $60
    ld h, b                                       ; $507e: $60
    ld h, b                                       ; $507f: $60
    rst RST_38                                    ; $5080: $ff
    nop                                           ; $5081: $00
    rst RST_38                                    ; $5082: $ff
    rst RST_38                                    ; $5083: $ff
    nop                                           ; $5084: $00
    nop                                           ; $5085: $00
    nop                                           ; $5086: $00
    nop                                           ; $5087: $00
    nop                                           ; $5088: $00
    nop                                           ; $5089: $00
    nop                                           ; $508a: $00
    nop                                           ; $508b: $00
    nop                                           ; $508c: $00
    nop                                           ; $508d: $00
    nop                                           ; $508e: $00
    nop                                           ; $508f: $00
    rst RST_38                                    ; $5090: $ff
    ld bc, $fdff                                  ; $5091: $01 $ff $fd
    inc bc                                        ; $5094: $03
    ld bc, $0103                                  ; $5095: $01 $03 $01
    inc bc                                        ; $5098: $03
    ld bc, $0103                                  ; $5099: $01 $03 $01
    inc bc                                        ; $509c: $03
    ld bc, $0103                                  ; $509d: $01 $03 $01
    nop                                           ; $50a0: $00
    nop                                           ; $50a1: $00
    nop                                           ; $50a2: $00
    nop                                           ; $50a3: $00
    nop                                           ; $50a4: $00
    nop                                           ; $50a5: $00
    nop                                           ; $50a6: $00
    nop                                           ; $50a7: $00
    nop                                           ; $50a8: $00
    nop                                           ; $50a9: $00
    nop                                           ; $50aa: $00
    nop                                           ; $50ab: $00
    nop                                           ; $50ac: $00
    nop                                           ; $50ad: $00
    nop                                           ; $50ae: $00
    nop                                           ; $50af: $00
    nop                                           ; $50b0: $00
    nop                                           ; $50b1: $00
    nop                                           ; $50b2: $00
    nop                                           ; $50b3: $00
    nop                                           ; $50b4: $00
    nop                                           ; $50b5: $00
    nop                                           ; $50b6: $00
    nop                                           ; $50b7: $00
    nop                                           ; $50b8: $00
    nop                                           ; $50b9: $00
    nop                                           ; $50ba: $00
    nop                                           ; $50bb: $00
    nop                                           ; $50bc: $00
    nop                                           ; $50bd: $00
    nop                                           ; $50be: $00
    nop                                           ; $50bf: $00
    nop                                           ; $50c0: $00
    nop                                           ; $50c1: $00
    nop                                           ; $50c2: $00
    nop                                           ; $50c3: $00
    nop                                           ; $50c4: $00
    nop                                           ; $50c5: $00
    nop                                           ; $50c6: $00
    nop                                           ; $50c7: $00
    nop                                           ; $50c8: $00
    nop                                           ; $50c9: $00
    nop                                           ; $50ca: $00
    nop                                           ; $50cb: $00
    nop                                           ; $50cc: $00
    nop                                           ; $50cd: $00
    nop                                           ; $50ce: $00
    nop                                           ; $50cf: $00
    nop                                           ; $50d0: $00
    nop                                           ; $50d1: $00
    nop                                           ; $50d2: $00
    nop                                           ; $50d3: $00
    nop                                           ; $50d4: $00
    nop                                           ; $50d5: $00
    nop                                           ; $50d6: $00
    nop                                           ; $50d7: $00
    nop                                           ; $50d8: $00
    nop                                           ; $50d9: $00
    nop                                           ; $50da: $00
    nop                                           ; $50db: $00
    nop                                           ; $50dc: $00
    nop                                           ; $50dd: $00
    nop                                           ; $50de: $00
    nop                                           ; $50df: $00
    nop                                           ; $50e0: $00
    nop                                           ; $50e1: $00
    nop                                           ; $50e2: $00
    nop                                           ; $50e3: $00
    nop                                           ; $50e4: $00
    nop                                           ; $50e5: $00
    nop                                           ; $50e6: $00
    nop                                           ; $50e7: $00
    nop                                           ; $50e8: $00
    nop                                           ; $50e9: $00
    nop                                           ; $50ea: $00
    nop                                           ; $50eb: $00
    nop                                           ; $50ec: $00
    nop                                           ; $50ed: $00
    nop                                           ; $50ee: $00
    nop                                           ; $50ef: $00
    nop                                           ; $50f0: $00
    nop                                           ; $50f1: $00
    nop                                           ; $50f2: $00
    nop                                           ; $50f3: $00
    nop                                           ; $50f4: $00
    nop                                           ; $50f5: $00
    nop                                           ; $50f6: $00
    nop                                           ; $50f7: $00
    nop                                           ; $50f8: $00
    nop                                           ; $50f9: $00
    nop                                           ; $50fa: $00
    nop                                           ; $50fb: $00
    nop                                           ; $50fc: $00
    nop                                           ; $50fd: $00
    nop                                           ; $50fe: $00
    nop                                           ; $50ff: $00
    pop bc                                        ; $5100: $c1
    ld b, h                                       ; $5101: $44
    pop bc                                        ; $5102: $c1
    ld b, d                                       ; $5103: $42
    pop bc                                        ; $5104: $c1
    ld b, h                                       ; $5105: $44
    jp $c344                                      ; $5106: $c3 $44 $c3


    ld c, b                                       ; $5109: $48
    add $48                                       ; $510a: $c6 $48
    db $e4                                        ; $510c: $e4
    inc de                                        ; $510d: $13
    rst RST_38                                    ; $510e: $ff
    rst RST_38                                    ; $510f: $ff
    or [hl]                                       ; $5110: $b6
    ld c, b                                       ; $5111: $48
    cp $01                                        ; $5112: $fe $01
    cp $00                                        ; $5114: $fe $00
    rst RST_38                                    ; $5116: $ff
    nop                                           ; $5117: $00
    add a                                         ; $5118: $87
    jr nc, @+$03                                  ; $5119: $30 $01

    call z, $03fc                                 ; $511b: $cc $fc $03
    rst RST_38                                    ; $511e: $ff
    rst RST_38                                    ; $511f: $ff
    nop                                           ; $5120: $00
    add b                                         ; $5121: $80
    nop                                           ; $5122: $00
    nop                                           ; $5123: $00
    nop                                           ; $5124: $00
    add b                                         ; $5125: $80
    nop                                           ; $5126: $00
    add b                                         ; $5127: $80
    nop                                           ; $5128: $00
    ld b, b                                       ; $5129: $40
    add b                                         ; $512a: $80
    ld b, b                                       ; $512b: $40
    sbc a                                         ; $512c: $9f
    jr nz, @+$01                                  ; $512d: $20 $ff

    rst RST_38                                    ; $512f: $ff
    nop                                           ; $5130: $00
    nop                                           ; $5131: $00
    nop                                           ; $5132: $00
    nop                                           ; $5133: $00
    nop                                           ; $5134: $00
    nop                                           ; $5135: $00
    nop                                           ; $5136: $00
    nop                                           ; $5137: $00
    nop                                           ; $5138: $00
    nop                                           ; $5139: $00
    nop                                           ; $513a: $00
    nop                                           ; $513b: $00
    rst RST_38                                    ; $513c: $ff
    nop                                           ; $513d: $00
    rst RST_38                                    ; $513e: $ff
    rst RST_38                                    ; $513f: $ff
    inc c                                         ; $5140: $0c
    inc c                                         ; $5141: $0c
    call z, Call_009_78cc                         ; $5142: $cc $cc $78
    ld a, b                                       ; $5145: $78
    nop                                           ; $5146: $00
    nop                                           ; $5147: $00
    nop                                           ; $5148: $00
    nop                                           ; $5149: $00
    nop                                           ; $514a: $00
    nop                                           ; $514b: $00
    rst RST_38                                    ; $514c: $ff
    nop                                           ; $514d: $00
    rst RST_38                                    ; $514e: $ff
    rst RST_38                                    ; $514f: $ff
    ld h, e                                       ; $5150: $63
    ld h, e                                       ; $5151: $63
    ld h, e                                       ; $5152: $63
    ld h, e                                       ; $5153: $63
    ld h, e                                       ; $5154: $63
    ld h, e                                       ; $5155: $63
    nop                                           ; $5156: $00
    nop                                           ; $5157: $00
    nop                                           ; $5158: $00
    nop                                           ; $5159: $00
    nop                                           ; $515a: $00
    nop                                           ; $515b: $00
    rst RST_38                                    ; $515c: $ff
    nop                                           ; $515d: $00
    rst RST_38                                    ; $515e: $ff
    rst RST_38                                    ; $515f: $ff
    rst RST_30                                    ; $5160: $f7
    rst RST_30                                    ; $5161: $f7
    ld [hl], $36                                  ; $5162: $36 $36
    ld [hl], $36                                  ; $5164: $36 $36
    nop                                           ; $5166: $00
    nop                                           ; $5167: $00
    nop                                           ; $5168: $00
    nop                                           ; $5169: $00
    nop                                           ; $516a: $00
    nop                                           ; $516b: $00
    rst RST_38                                    ; $516c: $ff
    nop                                           ; $516d: $00
    rst RST_38                                    ; $516e: $ff
    rst RST_38                                    ; $516f: $ff
    ret nz                                        ; $5170: $c0

    ret nz                                        ; $5171: $c0

    ld h, b                                       ; $5172: $60
    ld h, b                                       ; $5173: $60
    ld h, b                                       ; $5174: $60
    ld h, b                                       ; $5175: $60
    nop                                           ; $5176: $00
    nop                                           ; $5177: $00
    nop                                           ; $5178: $00
    nop                                           ; $5179: $00
    nop                                           ; $517a: $00
    nop                                           ; $517b: $00
    rst RST_38                                    ; $517c: $ff
    nop                                           ; $517d: $00
    rst RST_38                                    ; $517e: $ff
    rst RST_38                                    ; $517f: $ff
    nop                                           ; $5180: $00
    nop                                           ; $5181: $00
    nop                                           ; $5182: $00
    nop                                           ; $5183: $00
    nop                                           ; $5184: $00
    nop                                           ; $5185: $00
    nop                                           ; $5186: $00
    nop                                           ; $5187: $00
    nop                                           ; $5188: $00
    nop                                           ; $5189: $00
    nop                                           ; $518a: $00
    nop                                           ; $518b: $00
    rst RST_38                                    ; $518c: $ff
    nop                                           ; $518d: $00
    rst RST_38                                    ; $518e: $ff
    rst RST_38                                    ; $518f: $ff
    inc bc                                        ; $5190: $03
    ld bc, $0103                                  ; $5191: $01 $03 $01
    inc bc                                        ; $5194: $03
    ld bc, $0103                                  ; $5195: $01 $03 $01
    inc bc                                        ; $5198: $03
    ld bc, $0103                                  ; $5199: $01 $03 $01
    rst RST_38                                    ; $519c: $ff
    ld bc, rIE                                    ; $519d: $01 $ff $ff
    nop                                           ; $51a0: $00
    nop                                           ; $51a1: $00
    nop                                           ; $51a2: $00
    nop                                           ; $51a3: $00
    nop                                           ; $51a4: $00
    nop                                           ; $51a5: $00
    nop                                           ; $51a6: $00
    nop                                           ; $51a7: $00
    nop                                           ; $51a8: $00
    nop                                           ; $51a9: $00
    nop                                           ; $51aa: $00
    nop                                           ; $51ab: $00
    nop                                           ; $51ac: $00
    nop                                           ; $51ad: $00
    nop                                           ; $51ae: $00
    nop                                           ; $51af: $00
    nop                                           ; $51b0: $00
    nop                                           ; $51b1: $00
    nop                                           ; $51b2: $00
    nop                                           ; $51b3: $00
    nop                                           ; $51b4: $00
    nop                                           ; $51b5: $00
    nop                                           ; $51b6: $00
    nop                                           ; $51b7: $00
    nop                                           ; $51b8: $00
    nop                                           ; $51b9: $00
    nop                                           ; $51ba: $00
    nop                                           ; $51bb: $00
    nop                                           ; $51bc: $00
    nop                                           ; $51bd: $00
    nop                                           ; $51be: $00
    nop                                           ; $51bf: $00
    nop                                           ; $51c0: $00
    nop                                           ; $51c1: $00
    nop                                           ; $51c2: $00
    nop                                           ; $51c3: $00
    nop                                           ; $51c4: $00
    nop                                           ; $51c5: $00
    nop                                           ; $51c6: $00
    nop                                           ; $51c7: $00
    nop                                           ; $51c8: $00
    nop                                           ; $51c9: $00
    nop                                           ; $51ca: $00
    nop                                           ; $51cb: $00
    nop                                           ; $51cc: $00
    nop                                           ; $51cd: $00
    nop                                           ; $51ce: $00
    nop                                           ; $51cf: $00
    nop                                           ; $51d0: $00
    nop                                           ; $51d1: $00
    nop                                           ; $51d2: $00
    nop                                           ; $51d3: $00
    nop                                           ; $51d4: $00
    nop                                           ; $51d5: $00
    nop                                           ; $51d6: $00
    nop                                           ; $51d7: $00
    nop                                           ; $51d8: $00
    nop                                           ; $51d9: $00
    nop                                           ; $51da: $00
    nop                                           ; $51db: $00
    nop                                           ; $51dc: $00
    nop                                           ; $51dd: $00
    nop                                           ; $51de: $00
    nop                                           ; $51df: $00
    nop                                           ; $51e0: $00
    nop                                           ; $51e1: $00
    nop                                           ; $51e2: $00
    nop                                           ; $51e3: $00
    nop                                           ; $51e4: $00
    nop                                           ; $51e5: $00
    nop                                           ; $51e6: $00
    nop                                           ; $51e7: $00
    nop                                           ; $51e8: $00
    nop                                           ; $51e9: $00
    nop                                           ; $51ea: $00
    nop                                           ; $51eb: $00
    nop                                           ; $51ec: $00
    nop                                           ; $51ed: $00
    nop                                           ; $51ee: $00
    nop                                           ; $51ef: $00
    nop                                           ; $51f0: $00
    nop                                           ; $51f1: $00
    nop                                           ; $51f2: $00
    nop                                           ; $51f3: $00
    nop                                           ; $51f4: $00
    nop                                           ; $51f5: $00
    nop                                           ; $51f6: $00
    nop                                           ; $51f7: $00
    nop                                           ; $51f8: $00
    nop                                           ; $51f9: $00
    nop                                           ; $51fa: $00
    nop                                           ; $51fb: $00
    nop                                           ; $51fc: $00
    nop                                           ; $51fd: $00
    nop                                           ; $51fe: $00
    nop                                           ; $51ff: $00
    rst RST_38                                    ; $5200: $ff
    nop                                           ; $5201: $00
    rst RST_38                                    ; $5202: $ff
    ld a, a                                       ; $5203: $7f
    ret nz                                        ; $5204: $c0

    ld b, b                                       ; $5205: $40
    ret nz                                        ; $5206: $c0

    ld b, b                                       ; $5207: $40
    ret nz                                        ; $5208: $c0

    ld b, b                                       ; $5209: $40
    ret nz                                        ; $520a: $c0

    ld b, b                                       ; $520b: $40
    ret nz                                        ; $520c: $c0

    ld b, b                                       ; $520d: $40
    ret nz                                        ; $520e: $c0

    ld b, b                                       ; $520f: $40
    rst RST_38                                    ; $5210: $ff
    nop                                           ; $5211: $00
    rst RST_38                                    ; $5212: $ff
    rst RST_38                                    ; $5213: $ff
    nop                                           ; $5214: $00
    nop                                           ; $5215: $00
    nop                                           ; $5216: $00
    nop                                           ; $5217: $00
    nop                                           ; $5218: $00
    nop                                           ; $5219: $00
    rrca                                          ; $521a: $0f
    rrca                                          ; $521b: $0f
    inc bc                                        ; $521c: $03
    inc bc                                        ; $521d: $03
    inc bc                                        ; $521e: $03
    inc bc                                        ; $521f: $03
    rst RST_38                                    ; $5220: $ff
    nop                                           ; $5221: $00
    rst RST_38                                    ; $5222: $ff
    rst RST_38                                    ; $5223: $ff
    nop                                           ; $5224: $00
    nop                                           ; $5225: $00
    nop                                           ; $5226: $00
    nop                                           ; $5227: $00
    nop                                           ; $5228: $00
    nop                                           ; $5229: $00
    db $db                                        ; $522a: $db
    db $db                                        ; $522b: $db
    dec de                                        ; $522c: $1b
    dec de                                        ; $522d: $1b
    dec de                                        ; $522e: $1b
    dec de                                        ; $522f: $1b
    rst RST_38                                    ; $5230: $ff
    nop                                           ; $5231: $00
    rst RST_38                                    ; $5232: $ff
    rst RST_38                                    ; $5233: $ff
    nop                                           ; $5234: $00
    nop                                           ; $5235: $00
    nop                                           ; $5236: $00
    nop                                           ; $5237: $00
    nop                                           ; $5238: $00
    nop                                           ; $5239: $00
    rla                                           ; $523a: $17
    rla                                           ; $523b: $17
    or [hl]                                       ; $523c: $b6
    or [hl]                                       ; $523d: $b6
    rst RST_30                                    ; $523e: $f7
    rst RST_30                                    ; $523f: $f7
    rst RST_38                                    ; $5240: $ff
    nop                                           ; $5241: $00
    rst RST_38                                    ; $5242: $ff
    rst RST_38                                    ; $5243: $ff
    nop                                           ; $5244: $00
    nop                                           ; $5245: $00
    nop                                           ; $5246: $00
    nop                                           ; $5247: $00
    nop                                           ; $5248: $00
    nop                                           ; $5249: $00
    pop hl                                        ; $524a: $e1
    pop hl                                        ; $524b: $e1
    nop                                           ; $524c: $00
    nop                                           ; $524d: $00
    ret nz                                        ; $524e: $c0

    ret nz                                        ; $524f: $c0

    rst RST_38                                    ; $5250: $ff
    nop                                           ; $5251: $00
    rst RST_38                                    ; $5252: $ff
    rst RST_38                                    ; $5253: $ff
    nop                                           ; $5254: $00
    nop                                           ; $5255: $00
    nop                                           ; $5256: $00
    nop                                           ; $5257: $00
    nop                                           ; $5258: $00
    nop                                           ; $5259: $00
    ei                                            ; $525a: $fb
    ei                                            ; $525b: $fb
    ld h, e                                       ; $525c: $63
    ld h, e                                       ; $525d: $63
    ld h, e                                       ; $525e: $63
    ld h, e                                       ; $525f: $63
    rst RST_38                                    ; $5260: $ff
    nop                                           ; $5261: $00
    rst RST_38                                    ; $5262: $ff
    rst RST_38                                    ; $5263: $ff
    nop                                           ; $5264: $00
    nop                                           ; $5265: $00
    nop                                           ; $5266: $00
    nop                                           ; $5267: $00
    nop                                           ; $5268: $00
    nop                                           ; $5269: $00
    and $e6                                       ; $526a: $e6 $e6
    ld [hl], $36                                  ; $526c: $36 $36
    ld [hl], $36                                  ; $526e: $36 $36
    rst RST_38                                    ; $5270: $ff
    nop                                           ; $5271: $00
    rst RST_38                                    ; $5272: $ff
    rst RST_38                                    ; $5273: $ff
    nop                                           ; $5274: $00
    nop                                           ; $5275: $00
    nop                                           ; $5276: $00
    nop                                           ; $5277: $00
    nop                                           ; $5278: $00
    nop                                           ; $5279: $00
    ld a, c                                       ; $527a: $79
    ld a, c                                       ; $527b: $79
    call $cdcd                                    ; $527c: $cd $cd $cd
    call Call_000_00ff                            ; $527f: $cd $ff $00
    rst RST_38                                    ; $5282: $ff
    rst RST_38                                    ; $5283: $ff
    nop                                           ; $5284: $00
    nop                                           ; $5285: $00
    nop                                           ; $5286: $00
    nop                                           ; $5287: $00
    nop                                           ; $5288: $00
    nop                                           ; $5289: $00
    add b                                         ; $528a: $80
    add b                                         ; $528b: $80
    add b                                         ; $528c: $80
    add b                                         ; $528d: $80
    add b                                         ; $528e: $80
    add b                                         ; $528f: $80
    rst RST_38                                    ; $5290: $ff
    ld bc, $fdff                                  ; $5291: $01 $ff $fd
    inc bc                                        ; $5294: $03
    ld bc, $0103                                  ; $5295: $01 $03 $01
    inc bc                                        ; $5298: $03
    ld bc, $0103                                  ; $5299: $01 $03 $01
    inc bc                                        ; $529c: $03
    ld bc, $0103                                  ; $529d: $01 $03 $01
    nop                                           ; $52a0: $00
    nop                                           ; $52a1: $00
    nop                                           ; $52a2: $00
    nop                                           ; $52a3: $00
    nop                                           ; $52a4: $00
    nop                                           ; $52a5: $00
    nop                                           ; $52a6: $00
    nop                                           ; $52a7: $00
    nop                                           ; $52a8: $00
    nop                                           ; $52a9: $00
    nop                                           ; $52aa: $00
    nop                                           ; $52ab: $00
    nop                                           ; $52ac: $00
    nop                                           ; $52ad: $00
    nop                                           ; $52ae: $00
    nop                                           ; $52af: $00
    nop                                           ; $52b0: $00
    nop                                           ; $52b1: $00
    nop                                           ; $52b2: $00
    nop                                           ; $52b3: $00
    nop                                           ; $52b4: $00
    nop                                           ; $52b5: $00
    nop                                           ; $52b6: $00
    nop                                           ; $52b7: $00
    nop                                           ; $52b8: $00
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
    nop                                           ; $52ce: $00
    nop                                           ; $52cf: $00
    nop                                           ; $52d0: $00
    nop                                           ; $52d1: $00
    nop                                           ; $52d2: $00
    nop                                           ; $52d3: $00
    nop                                           ; $52d4: $00
    nop                                           ; $52d5: $00
    nop                                           ; $52d6: $00
    nop                                           ; $52d7: $00
    nop                                           ; $52d8: $00
    nop                                           ; $52d9: $00
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
    nop                                           ; $52ee: $00
    nop                                           ; $52ef: $00
    nop                                           ; $52f0: $00
    nop                                           ; $52f1: $00
    nop                                           ; $52f2: $00
    nop                                           ; $52f3: $00
    nop                                           ; $52f4: $00
    nop                                           ; $52f5: $00
    nop                                           ; $52f6: $00
    nop                                           ; $52f7: $00
    nop                                           ; $52f8: $00
    nop                                           ; $52f9: $00
    nop                                           ; $52fa: $00
    nop                                           ; $52fb: $00
    nop                                           ; $52fc: $00
    nop                                           ; $52fd: $00
    nop                                           ; $52fe: $00
    nop                                           ; $52ff: $00
    ret nz                                        ; $5300: $c0

    ld b, b                                       ; $5301: $40
    ret nz                                        ; $5302: $c0

    ld b, b                                       ; $5303: $40
    ret nz                                        ; $5304: $c0

    ld b, b                                       ; $5305: $40
    ret nz                                        ; $5306: $c0

    ld b, b                                       ; $5307: $40
    ret nz                                        ; $5308: $c0

    ld b, b                                       ; $5309: $40
    ret nz                                        ; $530a: $c0

    ld b, b                                       ; $530b: $40
    rst RST_38                                    ; $530c: $ff
    nop                                           ; $530d: $00
    rst RST_38                                    ; $530e: $ff
    rst RST_38                                    ; $530f: $ff
    inc bc                                        ; $5310: $03
    inc bc                                        ; $5311: $03
    inc bc                                        ; $5312: $03
    inc bc                                        ; $5313: $03
    inc bc                                        ; $5314: $03
    inc bc                                        ; $5315: $03
    nop                                           ; $5316: $00
    nop                                           ; $5317: $00
    nop                                           ; $5318: $00
    nop                                           ; $5319: $00
    nop                                           ; $531a: $00
    nop                                           ; $531b: $00
    rst RST_38                                    ; $531c: $ff
    nop                                           ; $531d: $00
    rst RST_38                                    ; $531e: $ff
    rst RST_38                                    ; $531f: $ff
    dec de                                        ; $5320: $1b
    dec de                                        ; $5321: $1b
    dec de                                        ; $5322: $1b
    dec de                                        ; $5323: $1b
    dec de                                        ; $5324: $1b
    dec de                                        ; $5325: $1b
    nop                                           ; $5326: $00
    nop                                           ; $5327: $00
    nop                                           ; $5328: $00
    nop                                           ; $5329: $00
    nop                                           ; $532a: $00
    nop                                           ; $532b: $00
    rst RST_38                                    ; $532c: $ff
    nop                                           ; $532d: $00
    rst RST_38                                    ; $532e: $ff
    rst RST_38                                    ; $532f: $ff
    ld d, [hl]                                    ; $5330: $56
    ld d, [hl]                                    ; $5331: $56
    ld d, $16                                     ; $5332: $16 $16
    rla                                           ; $5334: $17
    rla                                           ; $5335: $17
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    nop                                           ; $5338: $00
    nop                                           ; $5339: $00
    nop                                           ; $533a: $00
    nop                                           ; $533b: $00
    rst RST_38                                    ; $533c: $ff
    nop                                           ; $533d: $00
    rst RST_38                                    ; $533e: $ff
    rst RST_38                                    ; $533f: $ff
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    nop                                           ; $5342: $00
    nop                                           ; $5343: $00
    ldh [$ffe0], a                                ; $5344: $e0 $e0
    nop                                           ; $5346: $00
    nop                                           ; $5347: $00
    nop                                           ; $5348: $00
    nop                                           ; $5349: $00
    nop                                           ; $534a: $00
    nop                                           ; $534b: $00
    rst RST_38                                    ; $534c: $ff
    nop                                           ; $534d: $00
    rst RST_38                                    ; $534e: $ff
    rst RST_38                                    ; $534f: $ff
    ld h, e                                       ; $5350: $63
    ld h, e                                       ; $5351: $63
    ld h, e                                       ; $5352: $63
    ld h, e                                       ; $5353: $63
    ld h, e                                       ; $5354: $63
    ld h, e                                       ; $5355: $63
    nop                                           ; $5356: $00
    nop                                           ; $5357: $00
    nop                                           ; $5358: $00
    nop                                           ; $5359: $00
    nop                                           ; $535a: $00
    nop                                           ; $535b: $00
    rst RST_38                                    ; $535c: $ff
    nop                                           ; $535d: $00
    rst RST_38                                    ; $535e: $ff
    rst RST_38                                    ; $535f: $ff
    and $e6                                       ; $5360: $e6 $e6
    ld [hl], $36                                  ; $5362: $36 $36
    ld [hl], $36                                  ; $5364: $36 $36
    nop                                           ; $5366: $00
    nop                                           ; $5367: $00
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    nop                                           ; $536a: $00
    nop                                           ; $536b: $00
    rst RST_38                                    ; $536c: $ff
    nop                                           ; $536d: $00
    rst RST_38                                    ; $536e: $ff
    rst RST_38                                    ; $536f: $ff
    db $fd                                        ; $5370: $fd
    db $fd                                        ; $5371: $fd
    call $cdcd                                    ; $5372: $cd $cd $cd
    call RST_00                                   ; $5375: $cd $00 $00
    nop                                           ; $5378: $00
    nop                                           ; $5379: $00
    nop                                           ; $537a: $00
    nop                                           ; $537b: $00
    rst RST_38                                    ; $537c: $ff
    nop                                           ; $537d: $00
    rst RST_38                                    ; $537e: $ff
    rst RST_38                                    ; $537f: $ff
    add b                                         ; $5380: $80
    add b                                         ; $5381: $80
    add b                                         ; $5382: $80
    add b                                         ; $5383: $80
    ld hl, sp-$08                                 ; $5384: $f8 $f8
    nop                                           ; $5386: $00
    nop                                           ; $5387: $00
    nop                                           ; $5388: $00
    nop                                           ; $5389: $00
    nop                                           ; $538a: $00
    nop                                           ; $538b: $00
    rst RST_38                                    ; $538c: $ff
    nop                                           ; $538d: $00
    rst RST_38                                    ; $538e: $ff
    rst RST_38                                    ; $538f: $ff
    inc bc                                        ; $5390: $03
    ld bc, $0103                                  ; $5391: $01 $03 $01
    inc bc                                        ; $5394: $03
    ld bc, $0103                                  ; $5395: $01 $03 $01
    inc bc                                        ; $5398: $03
    ld bc, $0103                                  ; $5399: $01 $03 $01
    rst RST_38                                    ; $539c: $ff
    ld bc, rIE                                    ; $539d: $01 $ff $ff
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
    nop                                           ; $53ae: $00
    nop                                           ; $53af: $00
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    nop                                           ; $53b2: $00
    nop                                           ; $53b3: $00
    nop                                           ; $53b4: $00
    nop                                           ; $53b5: $00
    nop                                           ; $53b6: $00
    nop                                           ; $53b7: $00
    nop                                           ; $53b8: $00
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
    nop                                           ; $53ce: $00
    nop                                           ; $53cf: $00
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    nop                                           ; $53d2: $00
    nop                                           ; $53d3: $00
    nop                                           ; $53d4: $00
    nop                                           ; $53d5: $00
    nop                                           ; $53d6: $00
    nop                                           ; $53d7: $00
    nop                                           ; $53d8: $00
    nop                                           ; $53d9: $00
    nop                                           ; $53da: $00
    nop                                           ; $53db: $00
    nop                                           ; $53dc: $00
    nop                                           ; $53dd: $00
    nop                                           ; $53de: $00
    nop                                           ; $53df: $00
    nop                                           ; $53e0: $00
    nop                                           ; $53e1: $00
    nop                                           ; $53e2: $00
    nop                                           ; $53e3: $00
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
    nop                                           ; $53ee: $00
    nop                                           ; $53ef: $00
    nop                                           ; $53f0: $00
    nop                                           ; $53f1: $00
    nop                                           ; $53f2: $00
    nop                                           ; $53f3: $00
    nop                                           ; $53f4: $00
    nop                                           ; $53f5: $00
    nop                                           ; $53f6: $00
    nop                                           ; $53f7: $00
    nop                                           ; $53f8: $00
    nop                                           ; $53f9: $00
    nop                                           ; $53fa: $00
    nop                                           ; $53fb: $00
    nop                                           ; $53fc: $00
    nop                                           ; $53fd: $00
    nop                                           ; $53fe: $00
    nop                                           ; $53ff: $00
    nop                                           ; $5400: $00
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
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
    nop                                           ; $540e: $00
    nop                                           ; $540f: $00
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    nop                                           ; $5412: $00
    nop                                           ; $5413: $00
    nop                                           ; $5414: $00
    nop                                           ; $5415: $00
    nop                                           ; $5416: $00
    nop                                           ; $5417: $00
    nop                                           ; $5418: $00
    nop                                           ; $5419: $00
    nop                                           ; $541a: $00
    nop                                           ; $541b: $00
    nop                                           ; $541c: $00
    nop                                           ; $541d: $00
    nop                                           ; $541e: $00
    nop                                           ; $541f: $00
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
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
    nop                                           ; $542e: $00
    nop                                           ; $542f: $00
    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    nop                                           ; $5432: $00
    nop                                           ; $5433: $00
    nop                                           ; $5434: $00
    nop                                           ; $5435: $00
    nop                                           ; $5436: $00
    nop                                           ; $5437: $00
    nop                                           ; $5438: $00
    nop                                           ; $5439: $00
    nop                                           ; $543a: $00
    nop                                           ; $543b: $00
    nop                                           ; $543c: $00
    nop                                           ; $543d: $00
    nop                                           ; $543e: $00
    nop                                           ; $543f: $00
    nop                                           ; $5440: $00
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
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
    nop                                           ; $544e: $00
    nop                                           ; $544f: $00
    nop                                           ; $5450: $00
    nop                                           ; $5451: $00
    nop                                           ; $5452: $00
    nop                                           ; $5453: $00
    nop                                           ; $5454: $00
    nop                                           ; $5455: $00
    nop                                           ; $5456: $00
    nop                                           ; $5457: $00
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545a: $00
    nop                                           ; $545b: $00
    nop                                           ; $545c: $00
    nop                                           ; $545d: $00
    nop                                           ; $545e: $00
    nop                                           ; $545f: $00
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
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
    nop                                           ; $546e: $00
    nop                                           ; $546f: $00
    nop                                           ; $5470: $00
    nop                                           ; $5471: $00
    nop                                           ; $5472: $00
    nop                                           ; $5473: $00
    nop                                           ; $5474: $00
    nop                                           ; $5475: $00
    nop                                           ; $5476: $00
    nop                                           ; $5477: $00
    nop                                           ; $5478: $00
    nop                                           ; $5479: $00
    nop                                           ; $547a: $00
    nop                                           ; $547b: $00
    nop                                           ; $547c: $00
    nop                                           ; $547d: $00
    nop                                           ; $547e: $00
    nop                                           ; $547f: $00
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
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
    nop                                           ; $548e: $00
    nop                                           ; $548f: $00
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
    nop                                           ; $5493: $00
    nop                                           ; $5494: $00
    nop                                           ; $5495: $00
    nop                                           ; $5496: $00
    nop                                           ; $5497: $00
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    nop                                           ; $549a: $00
    nop                                           ; $549b: $00
    nop                                           ; $549c: $00
    nop                                           ; $549d: $00
    nop                                           ; $549e: $00
    nop                                           ; $549f: $00
    nop                                           ; $54a0: $00
    nop                                           ; $54a1: $00
    nop                                           ; $54a2: $00
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
    nop                                           ; $54ae: $00
    nop                                           ; $54af: $00
    nop                                           ; $54b0: $00
    nop                                           ; $54b1: $00
    nop                                           ; $54b2: $00
    nop                                           ; $54b3: $00
    nop                                           ; $54b4: $00
    nop                                           ; $54b5: $00
    nop                                           ; $54b6: $00
    nop                                           ; $54b7: $00
    nop                                           ; $54b8: $00
    nop                                           ; $54b9: $00
    nop                                           ; $54ba: $00
    nop                                           ; $54bb: $00
    nop                                           ; $54bc: $00
    nop                                           ; $54bd: $00
    nop                                           ; $54be: $00
    nop                                           ; $54bf: $00
    nop                                           ; $54c0: $00
    nop                                           ; $54c1: $00
    nop                                           ; $54c2: $00
    nop                                           ; $54c3: $00
    nop                                           ; $54c4: $00
    nop                                           ; $54c5: $00
    nop                                           ; $54c6: $00
    nop                                           ; $54c7: $00
    nop                                           ; $54c8: $00
    nop                                           ; $54c9: $00
    nop                                           ; $54ca: $00
    nop                                           ; $54cb: $00
    nop                                           ; $54cc: $00
    nop                                           ; $54cd: $00
    nop                                           ; $54ce: $00
    nop                                           ; $54cf: $00
    nop                                           ; $54d0: $00
    nop                                           ; $54d1: $00
    nop                                           ; $54d2: $00
    nop                                           ; $54d3: $00
    nop                                           ; $54d4: $00
    nop                                           ; $54d5: $00
    nop                                           ; $54d6: $00
    nop                                           ; $54d7: $00
    nop                                           ; $54d8: $00
    nop                                           ; $54d9: $00
    nop                                           ; $54da: $00
    nop                                           ; $54db: $00
    nop                                           ; $54dc: $00
    nop                                           ; $54dd: $00
    nop                                           ; $54de: $00
    nop                                           ; $54df: $00
    nop                                           ; $54e0: $00
    nop                                           ; $54e1: $00
    nop                                           ; $54e2: $00
    nop                                           ; $54e3: $00
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
    nop                                           ; $54ee: $00
    nop                                           ; $54ef: $00
    nop                                           ; $54f0: $00
    nop                                           ; $54f1: $00
    nop                                           ; $54f2: $00
    nop                                           ; $54f3: $00
    nop                                           ; $54f4: $00
    nop                                           ; $54f5: $00
    nop                                           ; $54f6: $00
    nop                                           ; $54f7: $00
    nop                                           ; $54f8: $00
    nop                                           ; $54f9: $00
    nop                                           ; $54fa: $00
    nop                                           ; $54fb: $00
    nop                                           ; $54fc: $00
    nop                                           ; $54fd: $00
    nop                                           ; $54fe: $00
    nop                                           ; $54ff: $00
    nop                                           ; $5500: $00
    nop                                           ; $5501: $00
    nop                                           ; $5502: $00
    nop                                           ; $5503: $00
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
    nop                                           ; $550e: $00
    nop                                           ; $550f: $00
    nop                                           ; $5510: $00
    nop                                           ; $5511: $00
    nop                                           ; $5512: $00
    nop                                           ; $5513: $00
    nop                                           ; $5514: $00
    nop                                           ; $5515: $00
    nop                                           ; $5516: $00
    nop                                           ; $5517: $00
    nop                                           ; $5518: $00
    nop                                           ; $5519: $00
    nop                                           ; $551a: $00
    nop                                           ; $551b: $00
    nop                                           ; $551c: $00
    nop                                           ; $551d: $00
    nop                                           ; $551e: $00
    nop                                           ; $551f: $00
    nop                                           ; $5520: $00
    nop                                           ; $5521: $00
    nop                                           ; $5522: $00
    nop                                           ; $5523: $00
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
    nop                                           ; $552e: $00
    nop                                           ; $552f: $00
    nop                                           ; $5530: $00
    nop                                           ; $5531: $00
    nop                                           ; $5532: $00
    nop                                           ; $5533: $00
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    nop                                           ; $5536: $00
    nop                                           ; $5537: $00
    nop                                           ; $5538: $00
    nop                                           ; $5539: $00
    nop                                           ; $553a: $00
    nop                                           ; $553b: $00
    nop                                           ; $553c: $00
    nop                                           ; $553d: $00
    nop                                           ; $553e: $00
    nop                                           ; $553f: $00
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    nop                                           ; $5543: $00
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
    nop                                           ; $554e: $00
    nop                                           ; $554f: $00
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    nop                                           ; $5552: $00
    nop                                           ; $5553: $00
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    nop                                           ; $5556: $00
    nop                                           ; $5557: $00
    nop                                           ; $5558: $00
    nop                                           ; $5559: $00
    nop                                           ; $555a: $00
    nop                                           ; $555b: $00
    nop                                           ; $555c: $00
    nop                                           ; $555d: $00
    nop                                           ; $555e: $00
    nop                                           ; $555f: $00
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00
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
    nop                                           ; $556e: $00
    nop                                           ; $556f: $00
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    nop                                           ; $5575: $00
    nop                                           ; $5576: $00
    nop                                           ; $5577: $00
    nop                                           ; $5578: $00
    nop                                           ; $5579: $00
    nop                                           ; $557a: $00
    nop                                           ; $557b: $00
    nop                                           ; $557c: $00
    nop                                           ; $557d: $00
    nop                                           ; $557e: $00
    nop                                           ; $557f: $00
    nop                                           ; $5580: $00
    nop                                           ; $5581: $00
    nop                                           ; $5582: $00
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
    nop                                           ; $558e: $00
    nop                                           ; $558f: $00
    nop                                           ; $5590: $00
    nop                                           ; $5591: $00
    nop                                           ; $5592: $00
    nop                                           ; $5593: $00
    nop                                           ; $5594: $00
    nop                                           ; $5595: $00
    nop                                           ; $5596: $00
    nop                                           ; $5597: $00
    nop                                           ; $5598: $00
    nop                                           ; $5599: $00
    nop                                           ; $559a: $00
    nop                                           ; $559b: $00
    nop                                           ; $559c: $00
    nop                                           ; $559d: $00
    nop                                           ; $559e: $00
    nop                                           ; $559f: $00
    nop                                           ; $55a0: $00
    nop                                           ; $55a1: $00
    nop                                           ; $55a2: $00
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
    nop                                           ; $55ae: $00
    nop                                           ; $55af: $00
    nop                                           ; $55b0: $00
    nop                                           ; $55b1: $00
    nop                                           ; $55b2: $00
    nop                                           ; $55b3: $00
    nop                                           ; $55b4: $00
    nop                                           ; $55b5: $00
    nop                                           ; $55b6: $00
    nop                                           ; $55b7: $00
    nop                                           ; $55b8: $00
    nop                                           ; $55b9: $00
    nop                                           ; $55ba: $00
    nop                                           ; $55bb: $00
    nop                                           ; $55bc: $00
    nop                                           ; $55bd: $00
    nop                                           ; $55be: $00
    nop                                           ; $55bf: $00
    nop                                           ; $55c0: $00
    nop                                           ; $55c1: $00
    nop                                           ; $55c2: $00
    nop                                           ; $55c3: $00
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
    nop                                           ; $55ce: $00
    nop                                           ; $55cf: $00
    nop                                           ; $55d0: $00
    nop                                           ; $55d1: $00
    nop                                           ; $55d2: $00
    nop                                           ; $55d3: $00
    nop                                           ; $55d4: $00
    nop                                           ; $55d5: $00
    nop                                           ; $55d6: $00
    nop                                           ; $55d7: $00
    nop                                           ; $55d8: $00
    nop                                           ; $55d9: $00
    nop                                           ; $55da: $00
    nop                                           ; $55db: $00
    nop                                           ; $55dc: $00
    nop                                           ; $55dd: $00
    nop                                           ; $55de: $00
    nop                                           ; $55df: $00
    nop                                           ; $55e0: $00
    nop                                           ; $55e1: $00
    nop                                           ; $55e2: $00
    nop                                           ; $55e3: $00
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
    nop                                           ; $55ee: $00
    nop                                           ; $55ef: $00
    nop                                           ; $55f0: $00
    nop                                           ; $55f1: $00
    nop                                           ; $55f2: $00
    nop                                           ; $55f3: $00
    nop                                           ; $55f4: $00
    nop                                           ; $55f5: $00
    nop                                           ; $55f6: $00
    nop                                           ; $55f7: $00
    nop                                           ; $55f8: $00
    nop                                           ; $55f9: $00
    nop                                           ; $55fa: $00
    nop                                           ; $55fb: $00
    nop                                           ; $55fc: $00
    nop                                           ; $55fd: $00
    nop                                           ; $55fe: $00
    nop                                           ; $55ff: $00
    nop                                           ; $5600: $00
    nop                                           ; $5601: $00
    nop                                           ; $5602: $00
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
    nop                                           ; $560e: $00
    nop                                           ; $560f: $00
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    nop                                           ; $5614: $00
    nop                                           ; $5615: $00
    nop                                           ; $5616: $00
    nop                                           ; $5617: $00
    nop                                           ; $5618: $00
    nop                                           ; $5619: $00
    nop                                           ; $561a: $00
    nop                                           ; $561b: $00
    nop                                           ; $561c: $00
    nop                                           ; $561d: $00
    nop                                           ; $561e: $00
    nop                                           ; $561f: $00
    nop                                           ; $5620: $00
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
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
    nop                                           ; $562e: $00
    nop                                           ; $562f: $00
    nop                                           ; $5630: $00
    nop                                           ; $5631: $00
    nop                                           ; $5632: $00
    nop                                           ; $5633: $00
    nop                                           ; $5634: $00
    nop                                           ; $5635: $00
    nop                                           ; $5636: $00
    nop                                           ; $5637: $00
    nop                                           ; $5638: $00
    nop                                           ; $5639: $00
    nop                                           ; $563a: $00
    nop                                           ; $563b: $00
    nop                                           ; $563c: $00
    nop                                           ; $563d: $00
    nop                                           ; $563e: $00
    nop                                           ; $563f: $00
    nop                                           ; $5640: $00
    nop                                           ; $5641: $00
    nop                                           ; $5642: $00
    nop                                           ; $5643: $00
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
    nop                                           ; $564e: $00
    nop                                           ; $564f: $00
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    nop                                           ; $5653: $00
    nop                                           ; $5654: $00
    nop                                           ; $5655: $00
    nop                                           ; $5656: $00
    nop                                           ; $5657: $00
    nop                                           ; $5658: $00
    nop                                           ; $5659: $00
    nop                                           ; $565a: $00
    nop                                           ; $565b: $00
    nop                                           ; $565c: $00
    nop                                           ; $565d: $00
    nop                                           ; $565e: $00
    nop                                           ; $565f: $00
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
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
    nop                                           ; $566e: $00
    nop                                           ; $566f: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    nop                                           ; $5672: $00
    nop                                           ; $5673: $00
    nop                                           ; $5674: $00
    nop                                           ; $5675: $00
    nop                                           ; $5676: $00
    nop                                           ; $5677: $00
    nop                                           ; $5678: $00
    nop                                           ; $5679: $00
    nop                                           ; $567a: $00
    nop                                           ; $567b: $00
    nop                                           ; $567c: $00
    nop                                           ; $567d: $00
    nop                                           ; $567e: $00
    nop                                           ; $567f: $00
    nop                                           ; $5680: $00
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    nop                                           ; $5683: $00
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
    nop                                           ; $568e: $00
    nop                                           ; $568f: $00
    nop                                           ; $5690: $00
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    nop                                           ; $5693: $00
    nop                                           ; $5694: $00
    nop                                           ; $5695: $00
    nop                                           ; $5696: $00
    nop                                           ; $5697: $00
    nop                                           ; $5698: $00
    nop                                           ; $5699: $00
    nop                                           ; $569a: $00
    nop                                           ; $569b: $00
    nop                                           ; $569c: $00
    nop                                           ; $569d: $00
    nop                                           ; $569e: $00
    nop                                           ; $569f: $00
    nop                                           ; $56a0: $00
    nop                                           ; $56a1: $00
    nop                                           ; $56a2: $00
    nop                                           ; $56a3: $00
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
    nop                                           ; $56ae: $00
    nop                                           ; $56af: $00
    nop                                           ; $56b0: $00
    nop                                           ; $56b1: $00
    nop                                           ; $56b2: $00
    nop                                           ; $56b3: $00
    nop                                           ; $56b4: $00
    nop                                           ; $56b5: $00
    nop                                           ; $56b6: $00
    nop                                           ; $56b7: $00
    nop                                           ; $56b8: $00
    nop                                           ; $56b9: $00
    nop                                           ; $56ba: $00
    nop                                           ; $56bb: $00
    nop                                           ; $56bc: $00
    nop                                           ; $56bd: $00
    nop                                           ; $56be: $00
    nop                                           ; $56bf: $00
    nop                                           ; $56c0: $00
    nop                                           ; $56c1: $00
    nop                                           ; $56c2: $00
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
    nop                                           ; $56ce: $00
    nop                                           ; $56cf: $00
    nop                                           ; $56d0: $00
    nop                                           ; $56d1: $00
    nop                                           ; $56d2: $00
    nop                                           ; $56d3: $00
    nop                                           ; $56d4: $00
    nop                                           ; $56d5: $00
    nop                                           ; $56d6: $00
    nop                                           ; $56d7: $00
    nop                                           ; $56d8: $00
    nop                                           ; $56d9: $00
    nop                                           ; $56da: $00
    nop                                           ; $56db: $00
    nop                                           ; $56dc: $00
    nop                                           ; $56dd: $00
    nop                                           ; $56de: $00
    nop                                           ; $56df: $00
    nop                                           ; $56e0: $00
    nop                                           ; $56e1: $00
    nop                                           ; $56e2: $00
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
    nop                                           ; $56ee: $00
    nop                                           ; $56ef: $00
    nop                                           ; $56f0: $00
    nop                                           ; $56f1: $00
    nop                                           ; $56f2: $00
    nop                                           ; $56f3: $00
    nop                                           ; $56f4: $00
    nop                                           ; $56f5: $00
    nop                                           ; $56f6: $00
    nop                                           ; $56f7: $00
    nop                                           ; $56f8: $00
    nop                                           ; $56f9: $00
    nop                                           ; $56fa: $00
    nop                                           ; $56fb: $00
    nop                                           ; $56fc: $00
    nop                                           ; $56fd: $00
    nop                                           ; $56fe: $00
    nop                                           ; $56ff: $00
    nop                                           ; $5700: $00
    nop                                           ; $5701: $00
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
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
    nop                                           ; $570e: $00
    nop                                           ; $570f: $00
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    nop                                           ; $5712: $00
    nop                                           ; $5713: $00
    nop                                           ; $5714: $00
    nop                                           ; $5715: $00
    nop                                           ; $5716: $00
    nop                                           ; $5717: $00
    nop                                           ; $5718: $00
    nop                                           ; $5719: $00
    nop                                           ; $571a: $00
    nop                                           ; $571b: $00
    nop                                           ; $571c: $00
    nop                                           ; $571d: $00
    nop                                           ; $571e: $00
    nop                                           ; $571f: $00
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    nop                                           ; $5722: $00
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
    nop                                           ; $572e: $00
    nop                                           ; $572f: $00
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    nop                                           ; $5734: $00
    nop                                           ; $5735: $00
    nop                                           ; $5736: $00
    nop                                           ; $5737: $00
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    nop                                           ; $573a: $00
    nop                                           ; $573b: $00
    nop                                           ; $573c: $00
    nop                                           ; $573d: $00
    nop                                           ; $573e: $00
    nop                                           ; $573f: $00
    nop                                           ; $5740: $00
    nop                                           ; $5741: $00
    nop                                           ; $5742: $00
    nop                                           ; $5743: $00
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
    nop                                           ; $574e: $00
    nop                                           ; $574f: $00
    nop                                           ; $5750: $00
    nop                                           ; $5751: $00
    nop                                           ; $5752: $00
    nop                                           ; $5753: $00
    nop                                           ; $5754: $00
    nop                                           ; $5755: $00
    nop                                           ; $5756: $00
    nop                                           ; $5757: $00
    nop                                           ; $5758: $00
    nop                                           ; $5759: $00
    nop                                           ; $575a: $00
    nop                                           ; $575b: $00
    nop                                           ; $575c: $00
    nop                                           ; $575d: $00
    nop                                           ; $575e: $00
    nop                                           ; $575f: $00
    nop                                           ; $5760: $00
    nop                                           ; $5761: $00
    nop                                           ; $5762: $00
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
    nop                                           ; $576e: $00
    nop                                           ; $576f: $00
    nop                                           ; $5770: $00
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    nop                                           ; $5773: $00
    nop                                           ; $5774: $00
    nop                                           ; $5775: $00
    nop                                           ; $5776: $00
    nop                                           ; $5777: $00
    nop                                           ; $5778: $00
    nop                                           ; $5779: $00
    nop                                           ; $577a: $00
    nop                                           ; $577b: $00
    nop                                           ; $577c: $00
    nop                                           ; $577d: $00
    nop                                           ; $577e: $00
    nop                                           ; $577f: $00
    nop                                           ; $5780: $00
    nop                                           ; $5781: $00
    nop                                           ; $5782: $00
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
    nop                                           ; $578e: $00
    nop                                           ; $578f: $00
    nop                                           ; $5790: $00
    nop                                           ; $5791: $00
    nop                                           ; $5792: $00
    nop                                           ; $5793: $00
    nop                                           ; $5794: $00
    nop                                           ; $5795: $00
    nop                                           ; $5796: $00
    nop                                           ; $5797: $00
    nop                                           ; $5798: $00
    nop                                           ; $5799: $00
    nop                                           ; $579a: $00
    nop                                           ; $579b: $00
    nop                                           ; $579c: $00
    nop                                           ; $579d: $00
    nop                                           ; $579e: $00
    nop                                           ; $579f: $00
    nop                                           ; $57a0: $00
    nop                                           ; $57a1: $00
    nop                                           ; $57a2: $00
    nop                                           ; $57a3: $00
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
    nop                                           ; $57ae: $00
    nop                                           ; $57af: $00
    nop                                           ; $57b0: $00
    nop                                           ; $57b1: $00
    nop                                           ; $57b2: $00
    nop                                           ; $57b3: $00
    nop                                           ; $57b4: $00
    nop                                           ; $57b5: $00
    nop                                           ; $57b6: $00
    nop                                           ; $57b7: $00
    nop                                           ; $57b8: $00
    nop                                           ; $57b9: $00
    nop                                           ; $57ba: $00
    nop                                           ; $57bb: $00
    nop                                           ; $57bc: $00
    nop                                           ; $57bd: $00
    nop                                           ; $57be: $00
    nop                                           ; $57bf: $00
    nop                                           ; $57c0: $00
    nop                                           ; $57c1: $00
    nop                                           ; $57c2: $00
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
    nop                                           ; $57ce: $00
    nop                                           ; $57cf: $00
    nop                                           ; $57d0: $00
    nop                                           ; $57d1: $00
    nop                                           ; $57d2: $00
    nop                                           ; $57d3: $00
    nop                                           ; $57d4: $00
    nop                                           ; $57d5: $00
    nop                                           ; $57d6: $00
    nop                                           ; $57d7: $00
    nop                                           ; $57d8: $00
    nop                                           ; $57d9: $00
    nop                                           ; $57da: $00
    nop                                           ; $57db: $00
    nop                                           ; $57dc: $00
    nop                                           ; $57dd: $00
    nop                                           ; $57de: $00
    nop                                           ; $57df: $00
    nop                                           ; $57e0: $00
    nop                                           ; $57e1: $00
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
    nop                                           ; $57ee: $00
    nop                                           ; $57ef: $00
    nop                                           ; $57f0: $00
    nop                                           ; $57f1: $00
    nop                                           ; $57f2: $00
    nop                                           ; $57f3: $00
    nop                                           ; $57f4: $00
    nop                                           ; $57f5: $00
    nop                                           ; $57f6: $00
    nop                                           ; $57f7: $00
    nop                                           ; $57f8: $00
    nop                                           ; $57f9: $00
    nop                                           ; $57fa: $00
    nop                                           ; $57fb: $00
    nop                                           ; $57fc: $00
    nop                                           ; $57fd: $00
    nop                                           ; $57fe: $00
    nop                                           ; $57ff: $00
    rst RST_38                                    ; $5800: $ff
    nop                                           ; $5801: $00
    rst RST_38                                    ; $5802: $ff
    rst RST_38                                    ; $5803: $ff
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
    nop                                           ; $580e: $00
    nop                                           ; $580f: $00
    rst RST_38                                    ; $5810: $ff
    nop                                           ; $5811: $00
    rst RST_38                                    ; $5812: $ff
    rst RST_38                                    ; $5813: $ff
    nop                                           ; $5814: $00
    nop                                           ; $5815: $00
    nop                                           ; $5816: $00
    nop                                           ; $5817: $00
    nop                                           ; $5818: $00
    nop                                           ; $5819: $00
    nop                                           ; $581a: $00
    nop                                           ; $581b: $00
    nop                                           ; $581c: $00
    nop                                           ; $581d: $00
    nop                                           ; $581e: $00
    nop                                           ; $581f: $00
    rst RST_38                                    ; $5820: $ff
    nop                                           ; $5821: $00
    rst RST_38                                    ; $5822: $ff
    rst RST_38                                    ; $5823: $ff
    nop                                           ; $5824: $00
    nop                                           ; $5825: $00
    nop                                           ; $5826: $00
    nop                                           ; $5827: $00
    nop                                           ; $5828: $00
    nop                                           ; $5829: $00
    inc c                                         ; $582a: $0c
    inc c                                         ; $582b: $0c
    ld c, $0e                                     ; $582c: $0e $0e
    rrca                                          ; $582e: $0f
    rrca                                          ; $582f: $0f
    rst RST_38                                    ; $5830: $ff
    nop                                           ; $5831: $00
    rst RST_38                                    ; $5832: $ff
    rst RST_38                                    ; $5833: $ff
    nop                                           ; $5834: $00
    nop                                           ; $5835: $00
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    nop                                           ; $5838: $00
    nop                                           ; $5839: $00
    rst RST_18                                    ; $583a: $df
    rst RST_18                                    ; $583b: $df
    ret c                                         ; $583c: $d8

    ret c                                         ; $583d: $d8

    rst RST_18                                    ; $583e: $df
    rst RST_18                                    ; $583f: $df
    rst RST_38                                    ; $5840: $ff
    nop                                           ; $5841: $00
    rst RST_38                                    ; $5842: $ff
    rst RST_38                                    ; $5843: $ff
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00
    nop                                           ; $5846: $00
    nop                                           ; $5847: $00
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    or l                                          ; $584a: $b5
    or l                                          ; $584b: $b5
    dec [hl]                                      ; $584c: $35
    dec [hl]                                      ; $584d: $35
    dec [hl]                                      ; $584e: $35
    dec [hl]                                      ; $584f: $35
    rst RST_38                                    ; $5850: $ff
    nop                                           ; $5851: $00
    rst RST_38                                    ; $5852: $ff
    rst RST_38                                    ; $5853: $ff
    nop                                           ; $5854: $00
    nop                                           ; $5855: $00
    nop                                           ; $5856: $00
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    nop                                           ; $585b: $00
    nop                                           ; $585c: $00
    nop                                           ; $585d: $00
    nop                                           ; $585e: $00
    nop                                           ; $585f: $00
    rst RST_38                                    ; $5860: $ff
    nop                                           ; $5861: $00
    rst RST_38                                    ; $5862: $ff
    rst RST_38                                    ; $5863: $ff
    nop                                           ; $5864: $00
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    inc a                                         ; $586a: $3c
    inc a                                         ; $586b: $3c
    ld h, [hl]                                    ; $586c: $66
    ld h, [hl]                                    ; $586d: $66
    ld h, b                                       ; $586e: $60
    ld h, b                                       ; $586f: $60
    rst RST_38                                    ; $5870: $ff
    nop                                           ; $5871: $00
    rst RST_38                                    ; $5872: $ff
    rst RST_38                                    ; $5873: $ff
    nop                                           ; $5874: $00
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    nop                                           ; $5877: $00
    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    ld a, c                                       ; $587a: $79
    ld a, c                                       ; $587b: $79
    call $cdcd                                    ; $587c: $cd $cd $cd
    call Call_000_00ff                            ; $587f: $cd $ff $00
    rst RST_38                                    ; $5882: $ff
    rst RST_38                                    ; $5883: $ff
    nop                                           ; $5884: $00
    nop                                           ; $5885: $00
    nop                                           ; $5886: $00
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    adc e                                         ; $588a: $8b
    adc e                                         ; $588b: $8b
    db $db                                        ; $588c: $db
    db $db                                        ; $588d: $db
    ei                                            ; $588e: $fb
    ei                                            ; $588f: $fb
    rst RST_38                                    ; $5890: $ff
    nop                                           ; $5891: $00
    rst RST_38                                    ; $5892: $ff
    rst RST_38                                    ; $5893: $ff
    nop                                           ; $5894: $00
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    ldh a, [$fff0]                                ; $589a: $f0 $f0
    nop                                           ; $589c: $00
    nop                                           ; $589d: $00
    ldh [$ffe0], a                                ; $589e: $e0 $e0
    rst RST_38                                    ; $58a0: $ff
    nop                                           ; $58a1: $00
    rst RST_38                                    ; $58a2: $ff
    rst RST_38                                    ; $58a3: $ff
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
    nop                                           ; $58ae: $00
    nop                                           ; $58af: $00
    rst RST_38                                    ; $58b0: $ff
    nop                                           ; $58b1: $00
    rst RST_38                                    ; $58b2: $ff
    rst RST_38                                    ; $58b3: $ff
    nop                                           ; $58b4: $00
    nop                                           ; $58b5: $00
    nop                                           ; $58b6: $00
    nop                                           ; $58b7: $00
    nop                                           ; $58b8: $00
    nop                                           ; $58b9: $00
    nop                                           ; $58ba: $00
    nop                                           ; $58bb: $00
    nop                                           ; $58bc: $00
    nop                                           ; $58bd: $00
    nop                                           ; $58be: $00
    nop                                           ; $58bf: $00
    rst RST_38                                    ; $58c0: $ff
    nop                                           ; $58c1: $00
    rst RST_38                                    ; $58c2: $ff
    rst RST_38                                    ; $58c3: $ff
    nop                                           ; $58c4: $00
    nop                                           ; $58c5: $00
    nop                                           ; $58c6: $00
    nop                                           ; $58c7: $00
    nop                                           ; $58c8: $00
    nop                                           ; $58c9: $00
    ld bc, $0201                                  ; $58ca: $01 $01 $02
    ld [bc], a                                    ; $58cd: $02
    inc b                                         ; $58ce: $04
    inc b                                         ; $58cf: $04
    rst RST_38                                    ; $58d0: $ff
    ld bc, $fdff                                  ; $58d1: $01 $ff $fd
    inc bc                                        ; $58d4: $03
    ld bc, $4143                                  ; $58d5: $01 $43 $41
    add e                                         ; $58d8: $83
    add c                                         ; $58d9: $81
    inc bc                                        ; $58da: $03
    ld bc, $0103                                  ; $58db: $01 $03 $01
    inc bc                                        ; $58de: $03
    ld bc, $00ff                                  ; $58df: $01 $ff $00
    rst RST_38                                    ; $58e2: $ff
    rst RST_38                                    ; $58e3: $ff
    nop                                           ; $58e4: $00
    nop                                           ; $58e5: $00
    ld b, b                                       ; $58e6: $40
    ld b, b                                       ; $58e7: $40
    add b                                         ; $58e8: $80
    add b                                         ; $58e9: $80
    nop                                           ; $58ea: $00
    nop                                           ; $58eb: $00
    nop                                           ; $58ec: $00
    nop                                           ; $58ed: $00
    nop                                           ; $58ee: $00
    nop                                           ; $58ef: $00
    rst RST_38                                    ; $58f0: $ff
    rst RST_38                                    ; $58f1: $ff
    rst RST_38                                    ; $58f2: $ff
    rst RST_38                                    ; $58f3: $ff
    jr z, jr_009_592e                             ; $58f4: $28 $38

    ld e, $1e                                     ; $58f6: $1e $1e
    adc e                                         ; $58f8: $8b
    adc a                                         ; $58f9: $8f
    ret                                           ; $58fa: $c9


    rst RST_08                                    ; $58fb: $cf
    ret                                           ; $58fc: $c9


    rst RST_08                                    ; $58fd: $cf
    ld c, c                                       ; $58fe: $49
    ld c, a                                       ; $58ff: $4f
    nop                                           ; $5900: $00
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    nop                                           ; $5903: $00
    nop                                           ; $5904: $00
    nop                                           ; $5905: $00
    nop                                           ; $5906: $00
    nop                                           ; $5907: $00
    nop                                           ; $5908: $00
    nop                                           ; $5909: $00
    nop                                           ; $590a: $00
    nop                                           ; $590b: $00
    rst RST_38                                    ; $590c: $ff
    nop                                           ; $590d: $00
    rst RST_38                                    ; $590e: $ff
    rst RST_38                                    ; $590f: $ff
    nop                                           ; $5910: $00
    nop                                           ; $5911: $00
    nop                                           ; $5912: $00
    nop                                           ; $5913: $00
    nop                                           ; $5914: $00
    nop                                           ; $5915: $00
    nop                                           ; $5916: $00
    nop                                           ; $5917: $00
    nop                                           ; $5918: $00
    nop                                           ; $5919: $00
    nop                                           ; $591a: $00
    nop                                           ; $591b: $00
    rst RST_38                                    ; $591c: $ff
    nop                                           ; $591d: $00
    rst RST_38                                    ; $591e: $ff
    rst RST_38                                    ; $591f: $ff
    dec c                                         ; $5920: $0d
    dec c                                         ; $5921: $0d
    inc c                                         ; $5922: $0c
    inc c                                         ; $5923: $0c
    inc c                                         ; $5924: $0c
    inc c                                         ; $5925: $0c
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00
    nop                                           ; $592a: $00
    nop                                           ; $592b: $00
    rst RST_38                                    ; $592c: $ff
    nop                                           ; $592d: $00

jr_009_592e:
    rst RST_38                                    ; $592e: $ff
    rst RST_38                                    ; $592f: $ff
    ret c                                         ; $5930: $d8

    ret c                                         ; $5931: $d8

    ret c                                         ; $5932: $d8

    ret c                                         ; $5933: $d8

    rst RST_18                                    ; $5934: $df
    rst RST_18                                    ; $5935: $df
    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    nop                                           ; $593a: $00
    nop                                           ; $593b: $00
    rst RST_38                                    ; $593c: $ff
    nop                                           ; $593d: $00
    rst RST_38                                    ; $593e: $ff
    rst RST_38                                    ; $593f: $ff
    dec [hl]                                      ; $5940: $35
    dec [hl]                                      ; $5941: $35
    ccf                                           ; $5942: $3f
    ccf                                           ; $5943: $3f
    sbc d                                         ; $5944: $9a
    sbc d                                         ; $5945: $9a
    nop                                           ; $5946: $00
    nop                                           ; $5947: $00
    nop                                           ; $5948: $00
    nop                                           ; $5949: $00
    nop                                           ; $594a: $00
    nop                                           ; $594b: $00
    rst RST_38                                    ; $594c: $ff
    nop                                           ; $594d: $00
    rst RST_38                                    ; $594e: $ff
    rst RST_38                                    ; $594f: $ff
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    nop                                           ; $5952: $00
    nop                                           ; $5953: $00
    nop                                           ; $5954: $00
    nop                                           ; $5955: $00
    nop                                           ; $5956: $00
    nop                                           ; $5957: $00
    nop                                           ; $5958: $00
    nop                                           ; $5959: $00
    nop                                           ; $595a: $00
    nop                                           ; $595b: $00
    rst RST_38                                    ; $595c: $ff
    nop                                           ; $595d: $00
    rst RST_38                                    ; $595e: $ff
    rst RST_38                                    ; $595f: $ff
    ld l, [hl]                                    ; $5960: $6e
    ld l, [hl]                                    ; $5961: $6e
    ld h, [hl]                                    ; $5962: $66
    ld h, [hl]                                    ; $5963: $66
    inc a                                         ; $5964: $3c
    inc a                                         ; $5965: $3c
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    nop                                           ; $596a: $00
    nop                                           ; $596b: $00
    rst RST_38                                    ; $596c: $ff
    nop                                           ; $596d: $00
    rst RST_38                                    ; $596e: $ff
    rst RST_38                                    ; $596f: $ff
    db $fd                                        ; $5970: $fd
    db $fd                                        ; $5971: $fd
    call $cdcd                                    ; $5972: $cd $cd $cd
    call RST_00                                   ; $5975: $cd $00 $00
    nop                                           ; $5978: $00
    nop                                           ; $5979: $00
    nop                                           ; $597a: $00
    nop                                           ; $597b: $00
    rst RST_38                                    ; $597c: $ff
    nop                                           ; $597d: $00
    rst RST_38                                    ; $597e: $ff
    rst RST_38                                    ; $597f: $ff
    xor e                                         ; $5980: $ab
    xor e                                         ; $5981: $ab
    adc e                                         ; $5982: $8b
    adc e                                         ; $5983: $8b
    adc e                                         ; $5984: $8b
    adc e                                         ; $5985: $8b
    nop                                           ; $5986: $00
    nop                                           ; $5987: $00
    nop                                           ; $5988: $00
    nop                                           ; $5989: $00
    nop                                           ; $598a: $00
    nop                                           ; $598b: $00
    rst RST_38                                    ; $598c: $ff
    nop                                           ; $598d: $00
    rst RST_38                                    ; $598e: $ff
    rst RST_38                                    ; $598f: $ff
    nop                                           ; $5990: $00
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    nop                                           ; $5993: $00
    ldh a, [$fff0]                                ; $5994: $f0 $f0
    nop                                           ; $5996: $00
    nop                                           ; $5997: $00
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    nop                                           ; $599a: $00
    nop                                           ; $599b: $00
    rst RST_38                                    ; $599c: $ff
    nop                                           ; $599d: $00
    rst RST_38                                    ; $599e: $ff
    rst RST_38                                    ; $599f: $ff
    nop                                           ; $59a0: $00
    nop                                           ; $59a1: $00
    nop                                           ; $59a2: $00
    nop                                           ; $59a3: $00
    nop                                           ; $59a4: $00
    nop                                           ; $59a5: $00
    nop                                           ; $59a6: $00
    nop                                           ; $59a7: $00
    nop                                           ; $59a8: $00
    nop                                           ; $59a9: $00
    nop                                           ; $59aa: $00
    nop                                           ; $59ab: $00
    rst RST_38                                    ; $59ac: $ff
    nop                                           ; $59ad: $00
    rst RST_38                                    ; $59ae: $ff
    rst RST_38                                    ; $59af: $ff
    nop                                           ; $59b0: $00
    nop                                           ; $59b1: $00
    nop                                           ; $59b2: $00
    nop                                           ; $59b3: $00
    nop                                           ; $59b4: $00
    nop                                           ; $59b5: $00
    nop                                           ; $59b6: $00
    nop                                           ; $59b7: $00
    nop                                           ; $59b8: $00
    nop                                           ; $59b9: $00
    nop                                           ; $59ba: $00
    nop                                           ; $59bb: $00
    rst RST_38                                    ; $59bc: $ff
    nop                                           ; $59bd: $00
    rst RST_38                                    ; $59be: $ff
    rst RST_38                                    ; $59bf: $ff
    dec bc                                        ; $59c0: $0b
    dec bc                                        ; $59c1: $0b
    ld [de], a                                    ; $59c2: $12
    ld [de], a                                    ; $59c3: $12
    inc hl                                        ; $59c4: $23
    inc hl                                        ; $59c5: $23
    ld b, d                                       ; $59c6: $42
    ld b, d                                       ; $59c7: $42
    add e                                         ; $59c8: $83
    add e                                         ; $59c9: $83
    nop                                           ; $59ca: $00
    nop                                           ; $59cb: $00
    rst RST_38                                    ; $59cc: $ff
    nop                                           ; $59cd: $00
    rst RST_38                                    ; $59ce: $ff
    rst RST_38                                    ; $59cf: $ff
    sub e                                         ; $59d0: $93
    sub c                                         ; $59d1: $91
    inc sp                                        ; $59d2: $33
    ld sp, $d1d3                                  ; $59d3: $31 $d3 $d1
    ei                                            ; $59d6: $fb
    ld sp, hl                                     ; $59d7: $f9
    sub e                                         ; $59d8: $93
    sub c                                         ; $59d9: $91
    inc bc                                        ; $59da: $03
    ld bc, $01ff                                  ; $59db: $01 $ff $01
    rst RST_38                                    ; $59de: $ff
    rst RST_38                                    ; $59df: $ff
    sub b                                         ; $59e0: $90
    sub b                                         ; $59e1: $90
    jr nc, jr_009_5a14                            ; $59e2: $30 $30

    ret nc                                        ; $59e4: $d0

    ret nc                                        ; $59e5: $d0

    ld hl, sp-$08                                 ; $59e6: $f8 $f8
    sub b                                         ; $59e8: $90
    sub b                                         ; $59e9: $90
    nop                                           ; $59ea: $00
    nop                                           ; $59eb: $00
    rst RST_38                                    ; $59ec: $ff
    nop                                           ; $59ed: $00
    rst RST_38                                    ; $59ee: $ff
    rst RST_38                                    ; $59ef: $ff
    add hl, bc                                    ; $59f0: $09
    rrca                                          ; $59f1: $0f
    add hl, de                                    ; $59f2: $19
    rra                                           ; $59f3: $1f
    pop af                                        ; $59f4: $f1
    rst RST_38                                    ; $59f5: $ff
    di                                            ; $59f6: $f3
    rst RST_38                                    ; $59f7: $ff
    ld e, $1e                                     ; $59f8: $1e $1e
    nop                                           ; $59fa: $00
    nop                                           ; $59fb: $00
    rst RST_38                                    ; $59fc: $ff
    rst RST_38                                    ; $59fd: $ff
    nop                                           ; $59fe: $00
    rst RST_38                                    ; $59ff: $ff
    rst RST_38                                    ; $5a00: $ff
    nop                                           ; $5a01: $00
    rst RST_38                                    ; $5a02: $ff
    rst RST_38                                    ; $5a03: $ff
    nop                                           ; $5a04: $00
    sbc e                                         ; $5a05: $9b
    nop                                           ; $5a06: $00
    ld e, h                                       ; $5a07: $5c
    nop                                           ; $5a08: $00
    ld a, h                                       ; $5a09: $7c
    nop                                           ; $5a0a: $00
    ld e, l                                       ; $5a0b: $5d
    nop                                           ; $5a0c: $00
    ld e, l                                       ; $5a0d: $5d
    nop                                           ; $5a0e: $00
    sbc [hl]                                      ; $5a0f: $9e
    rst RST_38                                    ; $5a10: $ff
    nop                                           ; $5a11: $00
    rst RST_38                                    ; $5a12: $ff
    rst RST_38                                    ; $5a13: $ff

jr_009_5a14:
    nop                                           ; $5a14: $00
    db $db                                        ; $5a15: $db
    nop                                           ; $5a16: $00
    ld a, e                                       ; $5a17: $7b
    nop                                           ; $5a18: $00
    xor $00                                       ; $5a19: $ee $00
    rst RST_28                                    ; $5a1b: $ef
    nop                                           ; $5a1c: $00
    ld l, l                                       ; $5a1d: $6d
    nop                                           ; $5a1e: $00
    db $ed                                        ; $5a1f: $ed
    rst RST_38                                    ; $5a20: $ff
    nop                                           ; $5a21: $00
    rst RST_38                                    ; $5a22: $ff
    rst RST_38                                    ; $5a23: $ff
    nop                                           ; $5a24: $00
    db $db                                        ; $5a25: $db
    nop                                           ; $5a26: $00
    ld a, e                                       ; $5a27: $7b
    inc c                                         ; $5a28: $0c
    ld e, a                                       ; $5a29: $5f
    rra                                           ; $5a2a: $1f
    inc de                                        ; $5a2b: $13
    rra                                           ; $5a2c: $1f
    pop de                                        ; $5a2d: $d1
    rra                                           ; $5a2e: $1f
    ldh a, [rIE]                                  ; $5a2f: $f0 $ff
    nop                                           ; $5a31: $00
    rst RST_38                                    ; $5a32: $ff
    rst RST_38                                    ; $5a33: $ff
    nop                                           ; $5a34: $00
    db $db                                        ; $5a35: $db
    nop                                           ; $5a36: $00
    ld a, e                                       ; $5a37: $7b
    rst RST_18                                    ; $5a38: $df
    rst RST_38                                    ; $5a39: $ff
    rst RST_38                                    ; $5a3a: $ff
    jr nz, @+$01                                  ; $5a3b: $20 $ff

    daa                                           ; $5a3d: $27
    rst RST_38                                    ; $5a3e: $ff
    jr nz, @+$01                                  ; $5a3f: $20 $ff

    nop                                           ; $5a41: $00
    rst RST_38                                    ; $5a42: $ff
    rst RST_38                                    ; $5a43: $ff
    nop                                           ; $5a44: $00
    sbc e                                         ; $5a45: $9b
    nop                                           ; $5a46: $00
    ld e, h                                       ; $5a47: $5c
    or l                                          ; $5a48: $b5
    db $fd                                        ; $5a49: $fd
    rst RST_38                                    ; $5a4a: $ff
    ld c, d                                       ; $5a4b: $4a
    rst RST_38                                    ; $5a4c: $ff
    jp z, $caff                                   ; $5a4d: $ca $ff $ca

    rst RST_38                                    ; $5a50: $ff
    nop                                           ; $5a51: $00
    rst RST_38                                    ; $5a52: $ff
    rst RST_38                                    ; $5a53: $ff
    nop                                           ; $5a54: $00
    ld e, a                                       ; $5a55: $5f
    nop                                           ; $5a56: $00
    rst RST_08                                    ; $5a57: $cf
    nop                                           ; $5a58: $00
    ld sp, hl                                     ; $5a59: $f9
    add b                                         ; $5a5a: $80
    db $fc                                        ; $5a5b: $fc
    add b                                         ; $5a5c: $80
    or a                                          ; $5a5d: $b7
    add b                                         ; $5a5e: $80
    rst RST_30                                    ; $5a5f: $f7
    rst RST_38                                    ; $5a60: $ff
    nop                                           ; $5a61: $00
    rst RST_38                                    ; $5a62: $ff
    rst RST_38                                    ; $5a63: $ff
    nop                                           ; $5a64: $00
    sbc e                                         ; $5a65: $9b
    nop                                           ; $5a66: $00
    ld e, h                                       ; $5a67: $5c
    inc a                                         ; $5a68: $3c
    ld a, h                                       ; $5a69: $7c
    ld a, [hl]                                    ; $5a6a: $7e
    ld b, e                                       ; $5a6b: $43
    rst RST_38                                    ; $5a6c: $ff
    sbc c                                         ; $5a6d: $99
    rst RST_38                                    ; $5a6e: $ff
    sbc a                                         ; $5a6f: $9f
    rst RST_38                                    ; $5a70: $ff
    nop                                           ; $5a71: $00
    rst RST_38                                    ; $5a72: $ff
    rst RST_38                                    ; $5a73: $ff
    nop                                           ; $5a74: $00
    db $db                                        ; $5a75: $db
    nop                                           ; $5a76: $00
    ld a, e                                       ; $5a77: $7b
    ld a, c                                       ; $5a78: $79
    db $fd                                        ; $5a79: $fd
    rst RST_38                                    ; $5a7a: $ff
    add [hl]                                      ; $5a7b: $86
    rst RST_38                                    ; $5a7c: $ff
    ld [hl-], a                                   ; $5a7d: $32
    rst RST_38                                    ; $5a7e: $ff
    ld [hl-], a                                   ; $5a7f: $32
    rst RST_38                                    ; $5a80: $ff
    nop                                           ; $5a81: $00
    rst RST_38                                    ; $5a82: $ff
    rst RST_38                                    ; $5a83: $ff
    nop                                           ; $5a84: $00
    adc [hl]                                      ; $5a85: $8e
    nop                                           ; $5a86: $00
    rst RST_08                                    ; $5a87: $cf
    adc e                                         ; $5a88: $8b
    rst RST_38                                    ; $5a89: $ff
    rst RST_18                                    ; $5a8a: $df
    ld d, h                                       ; $5a8b: $54
    rst RST_38                                    ; $5a8c: $ff
    inc h                                         ; $5a8d: $24
    rst RST_38                                    ; $5a8e: $ff
    inc b                                         ; $5a8f: $04
    rst RST_38                                    ; $5a90: $ff
    nop                                           ; $5a91: $00
    rst RST_38                                    ; $5a92: $ff
    rst RST_38                                    ; $5a93: $ff
    nop                                           ; $5a94: $00
    ld e, a                                       ; $5a95: $5f
    nop                                           ; $5a96: $00
    rst RST_08                                    ; $5a97: $cf
    ldh a, [$fff9]                                ; $5a98: $f0 $f9
    ld hl, sp+$0b                                 ; $5a9a: $f8 $0b
    ldh a, [$fff2]                                ; $5a9c: $f0 $f2
    ldh a, [rNR30]                                ; $5a9e: $f0 $1a
    rst RST_38                                    ; $5aa0: $ff
    nop                                           ; $5aa1: $00
    rst RST_38                                    ; $5aa2: $ff
    rst RST_38                                    ; $5aa3: $ff
    nop                                           ; $5aa4: $00
    sbc e                                         ; $5aa5: $9b
    nop                                           ; $5aa6: $00
    ld e, h                                       ; $5aa7: $5c
    nop                                           ; $5aa8: $00
    ld a, h                                       ; $5aa9: $7c
    nop                                           ; $5aaa: $00
    db $dd                                        ; $5aab: $dd
    nop                                           ; $5aac: $00
    db $dd                                        ; $5aad: $dd
    nop                                           ; $5aae: $00
    sbc $ff                                       ; $5aaf: $de $ff
    nop                                           ; $5ab1: $00
    rst RST_38                                    ; $5ab2: $ff
    rst RST_38                                    ; $5ab3: $ff
    nop                                           ; $5ab4: $00
    sbc e                                         ; $5ab5: $9b
    nop                                           ; $5ab6: $00
    ld e, h                                       ; $5ab7: $5c
    nop                                           ; $5ab8: $00
    ld a, h                                       ; $5ab9: $7c
    nop                                           ; $5aba: $00
    ld e, l                                       ; $5abb: $5d
    nop                                           ; $5abc: $00
    ld e, l                                       ; $5abd: $5d
    nop                                           ; $5abe: $00
    sbc [hl]                                      ; $5abf: $9e
    rst RST_38                                    ; $5ac0: $ff
    nop                                           ; $5ac1: $00
    rst RST_38                                    ; $5ac2: $ff
    rst RST_38                                    ; $5ac3: $ff
    nop                                           ; $5ac4: $00
    sub d                                         ; $5ac5: $92
    nop                                           ; $5ac6: $00
    ld e, l                                       ; $5ac7: $5d
    ld bc, $03ff                                  ; $5ac8: $01 $ff $03
    halt                                          ; $5acb: $76
    rlca                                          ; $5acc: $07
    ld e, l                                       ; $5acd: $5d
    rrca                                          ; $5ace: $0f
    cp e                                          ; $5acf: $bb
    rst RST_38                                    ; $5ad0: $ff
    ld bc, $fdff                                  ; $5ad1: $01 $ff $fd
    inc bc                                        ; $5ad4: $03
    sub c                                         ; $5ad5: $91
    jp $c3dd                                      ; $5ad6: $c3 $dd $c3


    ld a, l                                       ; $5ad9: $7d
    add e                                         ; $5ada: $83
    push af                                       ; $5adb: $f5
    inc bc                                        ; $5adc: $03
    db $dd                                        ; $5add: $dd
    sbc e                                         ; $5ade: $9b
    db $fd                                        ; $5adf: $fd
    rst RST_38                                    ; $5ae0: $ff
    nop                                           ; $5ae1: $00
    rst RST_38                                    ; $5ae2: $ff
    rst RST_38                                    ; $5ae3: $ff
    nop                                           ; $5ae4: $00
    sub d                                         ; $5ae5: $92
    ret nz                                        ; $5ae6: $c0

    call c, Call_009_7dc0                         ; $5ae7: $dc $c0 $7d
    add b                                         ; $5aea: $80
    push af                                       ; $5aeb: $f5
    nop                                           ; $5aec: $00
    db $dd                                        ; $5aed: $dd
    sbc b                                         ; $5aee: $98
    rst RST_38                                    ; $5aef: $ff
    rst RST_38                                    ; $5af0: $ff
    rst RST_38                                    ; $5af1: $ff
    cp $ff                                        ; $5af2: $fe $ff
    add d                                         ; $5af4: $82
    rst RST_38                                    ; $5af5: $ff
    ld b, d                                       ; $5af6: $42
    ld a, a                                       ; $5af7: $7f
    ld b, d                                       ; $5af8: $42
    ld a, a                                       ; $5af9: $7f
    ld b, d                                       ; $5afa: $42
    ld a, a                                       ; $5afb: $7f
    ld b, d                                       ; $5afc: $42
    ld a, a                                       ; $5afd: $7f
    ld b, d                                       ; $5afe: $42
    ld a, a                                       ; $5aff: $7f
    nop                                           ; $5b00: $00
    db $db                                        ; $5b01: $db
    nop                                           ; $5b02: $00
    db $fd                                        ; $5b03: $fd
    nop                                           ; $5b04: $00
    ld a, a                                       ; $5b05: $7f
    nop                                           ; $5b06: $00
    ld e, $00                                     ; $5b07: $1e $00
    ld h, a                                       ; $5b09: $67
    nop                                           ; $5b0a: $00
    jp Jump_000_00ff                              ; $5b0b: $c3 $ff $00


    rst RST_38                                    ; $5b0e: $ff
    rst RST_38                                    ; $5b0f: $ff
    nop                                           ; $5b10: $00
    or $00                                        ; $5b11: $f6 $00
    cp a                                          ; $5b13: $bf
    nop                                           ; $5b14: $00
    ei                                            ; $5b15: $fb

jr_009_5b16:
    nop                                           ; $5b16: $00
    db $d3                                        ; $5b17: $d3
    nop                                           ; $5b18: $00
    ret                                           ; $5b19: $c9


    nop                                           ; $5b1a: $00
    ld a, [hl]                                    ; $5b1b: $7e
    rst RST_38                                    ; $5b1c: $ff
    nop                                           ; $5b1d: $00
    rst RST_38                                    ; $5b1e: $ff
    rst RST_38                                    ; $5b1f: $ff
    rra                                           ; $5b20: $1f
    ldh a, [c]                                    ; $5b21: $f2
    rra                                           ; $5b22: $1f
    db $d3                                        ; $5b23: $d3
    rra                                           ; $5b24: $1f
    di                                            ; $5b25: $f3
    inc c                                         ; $5b26: $0c
    rst RST_18                                    ; $5b27: $df
    nop                                           ; $5b28: $00
    ret                                           ; $5b29: $c9


    nop                                           ; $5b2a: $00
    ld a, [hl]                                    ; $5b2b: $7e
    rst RST_38                                    ; $5b2c: $ff
    nop                                           ; $5b2d: $00
    rst RST_38                                    ; $5b2e: $ff
    rst RST_38                                    ; $5b2f: $ff
    rst RST_38                                    ; $5b30: $ff
    daa                                           ; $5b31: $27
    rst RST_38                                    ; $5b32: $ff
    daa                                           ; $5b33: $27
    rst RST_38                                    ; $5b34: $ff
    jr nz, jr_009_5b16                            ; $5b35: $20 $df

    rst RST_18                                    ; $5b37: $df
    nop                                           ; $5b38: $00
    ret                                           ; $5b39: $c9


    nop                                           ; $5b3a: $00
    ld a, [hl]                                    ; $5b3b: $7e
    rst RST_38                                    ; $5b3c: $ff
    nop                                           ; $5b3d: $00
    rst RST_38                                    ; $5b3e: $ff
    rst RST_38                                    ; $5b3f: $ff
    ld a, a                                       ; $5b40: $7f
    jp z, $c0ff                                   ; $5b41: $ca $ff $c0

    rst RST_38                                    ; $5b44: $ff
    ld h, l                                       ; $5b45: $65
    sbc d                                         ; $5b46: $9a
    cp $00                                        ; $5b47: $fe $00
    db $ed                                        ; $5b49: $ed
    nop                                           ; $5b4a: $00
    jp Jump_000_00ff                              ; $5b4b: $c3 $ff $00


    rst RST_38                                    ; $5b4e: $ff
    rst RST_38                                    ; $5b4f: $ff
    add b                                         ; $5b50: $80
    ei                                            ; $5b51: $fb
    add b                                         ; $5b52: $80
    rst RST_18                                    ; $5b53: $df
    nop                                           ; $5b54: $00
    db $db                                        ; $5b55: $db
    nop                                           ; $5b56: $00
    ld a, d                                       ; $5b57: $7a
    nop                                           ; $5b58: $00
    db $ec                                        ; $5b59: $ec
    nop                                           ; $5b5a: $00
    db $ec                                        ; $5b5b: $ec
    rst RST_38                                    ; $5b5c: $ff
    nop                                           ; $5b5d: $00
    rst RST_38                                    ; $5b5e: $ff
    rst RST_38                                    ; $5b5f: $ff
    rst RST_38                                    ; $5b60: $ff
    sub c                                         ; $5b61: $91
    rst RST_38                                    ; $5b62: $ff
    sbc c                                         ; $5b63: $99
    ld a, a                                       ; $5b64: $7f
    ld b, e                                       ; $5b65: $43
    inc a                                         ; $5b66: $3c
    cp $00                                        ; $5b67: $fe $00
    ld l, a                                       ; $5b69: $6f
    nop                                           ; $5b6a: $00
    jp Jump_000_00ff                              ; $5b6b: $c3 $ff $00


    rst RST_38                                    ; $5b6e: $ff
    rst RST_38                                    ; $5b6f: $ff
    rst RST_38                                    ; $5b70: $ff
    ld [bc], a                                    ; $5b71: $02
    rst RST_38                                    ; $5b72: $ff
    ld [hl-], a                                   ; $5b73: $32
    rst RST_38                                    ; $5b74: $ff
    ld [hl-], a                                   ; $5b75: $32
    call Call_000_00df                            ; $5b76: $cd $df $00
    ret                                           ; $5b79: $c9


    nop                                           ; $5b7a: $00
    ld a, [hl]                                    ; $5b7b: $7e
    rst RST_38                                    ; $5b7c: $ff
    nop                                           ; $5b7d: $00
    rst RST_38                                    ; $5b7e: $ff
    rst RST_38                                    ; $5b7f: $ff
    rst RST_38                                    ; $5b80: $ff
    ld d, h                                       ; $5b81: $54
    rst RST_38                                    ; $5b82: $ff
    ld [hl], h                                    ; $5b83: $74
    rst RST_18                                    ; $5b84: $df
    ld [hl], h                                    ; $5b85: $74
    adc e                                         ; $5b86: $8b
    rst RST_38                                    ; $5b87: $ff
    nop                                           ; $5b88: $00
    ld de, $d600                                  ; $5b89: $11 $00 $d6
    rst RST_38                                    ; $5b8c: $ff
    nop                                           ; $5b8d: $00
    rst RST_38                                    ; $5b8e: $ff
    rst RST_38                                    ; $5b8f: $ff
    ldh [$fffc], a                                ; $5b90: $e0 $fc
    ldh a, [$fffe]                                ; $5b92: $f0 $fe
    ld hl, sp+$0b                                 ; $5b94: $f8 $0b
    ldh a, [$fffb]                                ; $5b96: $f0 $fb
    nop                                           ; $5b98: $00
    db $ed                                        ; $5b99: $ed
    nop                                           ; $5b9a: $00
    db $ec                                        ; $5b9b: $ec
    rst RST_38                                    ; $5b9c: $ff
    nop                                           ; $5b9d: $00
    rst RST_38                                    ; $5b9e: $ff
    rst RST_38                                    ; $5b9f: $ff
    nop                                           ; $5ba0: $00
    jp c, $fd00                                   ; $5ba1: $da $00 $fd

    nop                                           ; $5ba4: $00
    inc l                                         ; $5ba5: $2c
    nop                                           ; $5ba6: $00
    ld l, $00                                     ; $5ba7: $2e $00
    ld e, a                                       ; $5ba9: $5f
    nop                                           ; $5baa: $00
    call Call_000_00ff                            ; $5bab: $cd $ff $00
    rst RST_38                                    ; $5bae: $ff
    rst RST_38                                    ; $5baf: $ff
    nop                                           ; $5bb0: $00
    jp c, $ec00                                   ; $5bb1: $da $00 $ec

    nop                                           ; $5bb4: $00
    xor $00                                       ; $5bb5: $ee $00
    sbc a                                         ; $5bb7: $9f
    nop                                           ; $5bb8: $00
    call $c300                                    ; $5bb9: $cd $00 $c3
    rst RST_38                                    ; $5bbc: $ff
    nop                                           ; $5bbd: $00
    rst RST_38                                    ; $5bbe: $ff
    rst RST_38                                    ; $5bbf: $ff
    dec e                                         ; $5bc0: $1d
    db $f4                                        ; $5bc1: $f4
    ccf                                           ; $5bc2: $3f
    db $ed                                        ; $5bc3: $ed
    ld [hl], a                                    ; $5bc4: $77
    call c, $bd67                                 ; $5bc5: $dc $67 $bd
    ld b, l                                       ; $5bc8: $45
    db $e4                                        ; $5bc9: $e4
    inc bc                                        ; $5bca: $03
    db $db                                        ; $5bcb: $db
    rst RST_38                                    ; $5bcc: $ff
    nop                                           ; $5bcd: $00
    rst RST_38                                    ; $5bce: $ff
    rst RST_38                                    ; $5bcf: $ff
    ei                                            ; $5bd0: $fb
    ld l, l                                       ; $5bd1: $6d
    ei                                            ; $5bd2: $fb
    call $ad7b                                    ; $5bd3: $cd $7b $ad
    cp a                                          ; $5bd6: $bf
    dec b                                         ; $5bd7: $05
    ld a, e                                       ; $5bd8: $7b
    db $ed                                        ; $5bd9: $ed
    sub e                                         ; $5bda: $93
    push af                                       ; $5bdb: $f5
    rst RST_38                                    ; $5bdc: $ff
    ld bc, rIE                                    ; $5bdd: $01 $ff $ff
    ld hl, sp+$6e                                 ; $5be0: $f8 $6e
    ld hl, sp-$33                                 ; $5be2: $f8 $cd
    ld a, b                                       ; $5be4: $78
    xor l                                         ; $5be5: $ad
    cp h                                          ; $5be6: $bc
    dec b                                         ; $5be7: $05
    ld a, b                                       ; $5be8: $78
    rst RST_28                                    ; $5be9: $ef
    sub b                                         ; $5bea: $90
    di                                            ; $5beb: $f3
    rst RST_38                                    ; $5bec: $ff
    nop                                           ; $5bed: $00
    rst RST_38                                    ; $5bee: $ff
    rst RST_38                                    ; $5bef: $ff
    ld b, d                                       ; $5bf0: $42
    ld a, a                                       ; $5bf1: $7f
    ld b, d                                       ; $5bf2: $42
    ld a, a                                       ; $5bf3: $7f
    ld b, d                                       ; $5bf4: $42
    ld a, a                                       ; $5bf5: $7f
    ld b, d                                       ; $5bf6: $42
    ld a, a                                       ; $5bf7: $7f
    ld b, d                                       ; $5bf8: $42
    ld a, a                                       ; $5bf9: $7f
    add d                                         ; $5bfa: $82
    rst RST_38                                    ; $5bfb: $ff
    cp $ff                                        ; $5bfc: $fe $ff
    nop                                           ; $5bfe: $00
    rst RST_38                                    ; $5bff: $ff
    cp $ff                                        ; $5c00: $fe $ff
    cp $ff                                        ; $5c02: $fe $ff
    ld bc, $feff                                  ; $5c04: $01 $ff $fe
    rst RST_38                                    ; $5c07: $ff
    adc [hl]                                      ; $5c08: $8e
    adc [hl]                                      ; $5c09: $8e
    jp c, $8ada                                   ; $5c0a: $da $da $8a

    adc d                                         ; $5c0d: $8a
    ld b, d                                       ; $5c0e: $42
    ld b, d                                       ; $5c0f: $42
    cp $ff                                        ; $5c10: $fe $ff
    cp $ff                                        ; $5c12: $fe $ff
    ld bc, $feff                                  ; $5c14: $01 $ff $fe
    rst RST_38                                    ; $5c17: $ff
    add d                                         ; $5c18: $82
    add d                                         ; $5c19: $82
    cp $fe                                        ; $5c1a: $fe $fe
    sub $d6                                       ; $5c1c: $d6 $d6
    cp d                                          ; $5c1e: $ba
    cp d                                          ; $5c1f: $ba
    cp $ff                                        ; $5c20: $fe $ff
    cp $ff                                        ; $5c22: $fe $ff
    ld bc, $feff                                  ; $5c24: $01 $ff $fe
    rst RST_38                                    ; $5c27: $ff
    jp c, $aada                                   ; $5c28: $da $da $aa

    xor d                                         ; $5c2b: $aa
    xor d                                         ; $5c2c: $aa
    xor d                                         ; $5c2d: $aa
    jp c, $feda                                   ; $5c2e: $da $da $fe

    rst RST_38                                    ; $5c31: $ff
    cp $ff                                        ; $5c32: $fe $ff
    ld bc, $feff                                  ; $5c34: $01 $ff $fe
    rst RST_38                                    ; $5c37: $ff
    add $c6                                       ; $5c38: $c6 $c6
    cp d                                          ; $5c3a: $ba
    cp d                                          ; $5c3b: $ba
    add $c6                                       ; $5c3c: $c6 $c6
    cp $fe                                        ; $5c3e: $fe $fe
    cp $ff                                        ; $5c40: $fe $ff
    cp $ff                                        ; $5c42: $fe $ff
    ld bc, $feff                                  ; $5c44: $01 $ff $fe
    rst RST_38                                    ; $5c47: $ff
    add d                                         ; $5c48: $82
    add d                                         ; $5c49: $82
    add $c6                                       ; $5c4a: $c6 $c6
    cp $fe                                        ; $5c4c: $fe $fe
    ld [$feea], a                                 ; $5c4e: $ea $ea $fe
    rst RST_38                                    ; $5c51: $ff
    cp $ff                                        ; $5c52: $fe $ff
    ld bc, $feff                                  ; $5c54: $01 $ff $fe
    rst RST_38                                    ; $5c57: $ff
    and d                                         ; $5c58: $a2
    and d                                         ; $5c59: $a2
    adc d                                         ; $5c5a: $8a
    adc d                                         ; $5c5b: $8a
    and d                                         ; $5c5c: $a2
    and d                                         ; $5c5d: $a2
    cp [hl]                                       ; $5c5e: $be
    cp [hl]                                       ; $5c5f: $be
    cp $ff                                        ; $5c60: $fe $ff
    cp $ff                                        ; $5c62: $fe $ff
    ld bc, $feff                                  ; $5c64: $01 $ff $fe
    rst RST_38                                    ; $5c67: $ff
    adc [hl]                                      ; $5c68: $8e
    cp $da                                        ; $5c69: $fe $da
    cp $8a                                        ; $5c6b: $fe $8a
    cp $42                                        ; $5c6d: $fe $42
    cp $fe                                        ; $5c6f: $fe $fe
    rst RST_38                                    ; $5c71: $ff
    cp $ff                                        ; $5c72: $fe $ff
    ld bc, $feff                                  ; $5c74: $01 $ff $fe
    rst RST_38                                    ; $5c77: $ff
    add d                                         ; $5c78: $82
    cp $fe                                        ; $5c79: $fe $fe
    cp $d6                                        ; $5c7b: $fe $d6
    cp $ba                                        ; $5c7d: $fe $ba
    cp $fe                                        ; $5c7f: $fe $fe
    rst RST_38                                    ; $5c81: $ff
    cp $ff                                        ; $5c82: $fe $ff
    ld bc, $feff                                  ; $5c84: $01 $ff $fe
    rst RST_38                                    ; $5c87: $ff
    jp c, $aafe                                   ; $5c88: $da $fe $aa

    cp $aa                                        ; $5c8b: $fe $aa
    cp $da                                        ; $5c8d: $fe $da
    cp $fe                                        ; $5c8f: $fe $fe
    rst RST_38                                    ; $5c91: $ff
    cp $ff                                        ; $5c92: $fe $ff
    ld bc, $feff                                  ; $5c94: $01 $ff $fe
    rst RST_38                                    ; $5c97: $ff
    add $fe                                       ; $5c98: $c6 $fe
    cp d                                          ; $5c9a: $ba
    cp $c6                                        ; $5c9b: $fe $c6
    cp $fe                                        ; $5c9d: $fe $fe
    cp $fe                                        ; $5c9f: $fe $fe
    rst RST_38                                    ; $5ca1: $ff
    cp $ff                                        ; $5ca2: $fe $ff
    ld bc, $feff                                  ; $5ca4: $01 $ff $fe
    rst RST_38                                    ; $5ca7: $ff
    add d                                         ; $5ca8: $82
    cp $c6                                        ; $5ca9: $fe $c6
    cp $fe                                        ; $5cab: $fe $fe
    cp $ea                                        ; $5cad: $fe $ea
    cp $ff                                        ; $5caf: $fe $ff
    rst RST_38                                    ; $5cb1: $ff
    rst RST_38                                    ; $5cb2: $ff
    rst RST_38                                    ; $5cb3: $ff
    add c                                         ; $5cb4: $81
    rst RST_38                                    ; $5cb5: $ff
    add c                                         ; $5cb6: $81
    rst RST_38                                    ; $5cb7: $ff
    add c                                         ; $5cb8: $81
    rst RST_38                                    ; $5cb9: $ff
    add c                                         ; $5cba: $81
    rst RST_38                                    ; $5cbb: $ff
    add c                                         ; $5cbc: $81
    rst RST_38                                    ; $5cbd: $ff
    add c                                         ; $5cbe: $81
    rst RST_38                                    ; $5cbf: $ff
    rst RST_38                                    ; $5cc0: $ff
    rst RST_38                                    ; $5cc1: $ff
    rst RST_38                                    ; $5cc2: $ff
    rst RST_38                                    ; $5cc3: $ff
    inc bc                                        ; $5cc4: $03
    inc bc                                        ; $5cc5: $03
    add hl, sp                                    ; $5cc6: $39
    add hl, sp                                    ; $5cc7: $39
    inc h                                         ; $5cc8: $24
    inc a                                         ; $5cc9: $3c
    inc h                                         ; $5cca: $24
    inc a                                         ; $5ccb: $3c
    add hl, sp                                    ; $5ccc: $39
    add hl, sp                                    ; $5ccd: $39
    inc bc                                        ; $5cce: $03
    inc bc                                        ; $5ccf: $03
    rst RST_38                                    ; $5cd0: $ff
    rst RST_38                                    ; $5cd1: $ff
    rst RST_38                                    ; $5cd2: $ff
    rst RST_38                                    ; $5cd3: $ff
    nop                                           ; $5cd4: $00
    rst RST_38                                    ; $5cd5: $ff
    add c                                         ; $5cd6: $81
    rst RST_38                                    ; $5cd7: $ff
    ei                                            ; $5cd8: $fb
    rst RST_38                                    ; $5cd9: $ff
    adc a                                         ; $5cda: $8f
    adc a                                         ; $5cdb: $8f
    adc [hl]                                      ; $5cdc: $8e
    adc [hl]                                      ; $5cdd: $8e
    adc [hl]                                      ; $5cde: $8e
    adc [hl]                                      ; $5cdf: $8e
    rst RST_38                                    ; $5ce0: $ff
    rst RST_38                                    ; $5ce1: $ff
    rst RST_38                                    ; $5ce2: $ff
    rst RST_38                                    ; $5ce3: $ff
    ret c                                         ; $5ce4: $d8

    ret c                                         ; $5ce5: $d8

    cp a                                          ; $5ce6: $bf
    cp a                                          ; $5ce7: $bf
    ccf                                           ; $5ce8: $3f
    ccf                                           ; $5ce9: $3f
    ld [hl], c                                    ; $5cea: $71
    ld a, a                                       ; $5ceb: $7f
    ld h, b                                       ; $5cec: $60
    ld a, a                                       ; $5ced: $7f
    ld h, b                                       ; $5cee: $60
    ld a, a                                       ; $5cef: $7f
    rst RST_38                                    ; $5cf0: $ff
    rst RST_38                                    ; $5cf1: $ff
    rst RST_38                                    ; $5cf2: $ff
    rst RST_38                                    ; $5cf3: $ff
    nop                                           ; $5cf4: $00
    nop                                           ; $5cf5: $00
    rst RST_08                                    ; $5cf6: $cf
    rst RST_08                                    ; $5cf7: $cf
    inc b                                         ; $5cf8: $04
    inc b                                         ; $5cf9: $04
    db $e4                                        ; $5cfa: $e4
    db $e4                                        ; $5cfb: $e4
    add a                                         ; $5cfc: $87
    add a                                         ; $5cfd: $87
    ldh [$ffe0], a                                ; $5cfe: $e0 $e0
    ld c, d                                       ; $5d00: $4a
    ld c, d                                       ; $5d01: $4a
    xor d                                         ; $5d02: $aa
    xor d                                         ; $5d03: $aa
    xor d                                         ; $5d04: $aa
    xor d                                         ; $5d05: $aa
    xor d                                         ; $5d06: $aa
    xor d                                         ; $5d07: $aa
    cp $fe                                        ; $5d08: $fe $fe
    sbc d                                         ; $5d0a: $9a
    sbc d                                         ; $5d0b: $9a
    or $f6                                        ; $5d0c: $f6 $f6
    xor d                                         ; $5d0e: $aa
    xor d                                         ; $5d0f: $aa
    add $c6                                       ; $5d10: $c6 $c6
    ld a, [$86fa]                                 ; $5d12: $fa $fa $86
    add [hl]                                      ; $5d15: $86
    cp $fe                                        ; $5d16: $fe $fe
    add d                                         ; $5d18: $82
    add d                                         ; $5d19: $82
    cp $fe                                        ; $5d1a: $fe $fe
    cp d                                          ; $5d1c: $ba
    cp d                                          ; $5d1d: $ba
    add $c6                                       ; $5d1e: $c6 $c6
    adc d                                         ; $5d20: $8a
    adc d                                         ; $5d21: $8a
    jp c, $dada                                   ; $5d22: $da $da $da

    jp c, $fefe                                   ; $5d25: $da $fe $fe

    sbc d                                         ; $5d28: $9a
    sbc d                                         ; $5d29: $9a
    sbc d                                         ; $5d2a: $9a
    sbc d                                         ; $5d2b: $9a
    cp $fe                                        ; $5d2c: $fe $fe
    xor d                                         ; $5d2e: $aa
    xor d                                         ; $5d2f: $aa
    sbc d                                         ; $5d30: $9a
    sbc d                                         ; $5d31: $9a
    and $e6                                       ; $5d32: $e6 $e6
    adc $ce                                       ; $5d34: $ce $ce
    or d                                          ; $5d36: $b2
    or d                                          ; $5d37: $b2
    cp $fe                                        ; $5d38: $fe $fe
    cp d                                          ; $5d3a: $ba
    cp d                                          ; $5d3b: $ba
    xor d                                         ; $5d3c: $aa
    xor d                                         ; $5d3d: $aa
    sub $d6                                       ; $5d3e: $d6 $d6
    or [hl]                                       ; $5d40: $b6
    or [hl]                                       ; $5d41: $b6
    adc $ce                                       ; $5d42: $ce $ce
    cp $fe                                        ; $5d44: $fe $fe
    add [hl]                                      ; $5d46: $86
    add [hl]                                      ; $5d47: $86
    ld a, [$86fa]                                 ; $5d48: $fa $fa $86
    add [hl]                                      ; $5d4b: $86
    cp $fe                                        ; $5d4c: $fe $fe
    add $c6                                       ; $5d4e: $c6 $c6
    add d                                         ; $5d50: $82
    add d                                         ; $5d51: $82
    cp $fe                                        ; $5d52: $fe $fe
    jp nz, $bac2                                  ; $5d54: $c2 $c2 $ba

    cp d                                          ; $5d57: $ba
    xor d                                         ; $5d58: $aa
    xor d                                         ; $5d59: $aa
    ld a, [$86fa]                                 ; $5d5a: $fa $fa $86
    add [hl]                                      ; $5d5d: $86
    cp $fe                                        ; $5d5e: $fe $fe
    ld c, d                                       ; $5d60: $4a
    cp $aa                                        ; $5d61: $fe $aa
    cp $aa                                        ; $5d63: $fe $aa
    cp $aa                                        ; $5d65: $fe $aa
    cp $fe                                        ; $5d67: $fe $fe
    cp $9a                                        ; $5d69: $fe $9a
    cp $f6                                        ; $5d6b: $fe $f6
    cp $aa                                        ; $5d6d: $fe $aa
    cp $c6                                        ; $5d6f: $fe $c6
    cp $fa                                        ; $5d71: $fe $fa
    cp $86                                        ; $5d73: $fe $86
    cp $fe                                        ; $5d75: $fe $fe
    cp $82                                        ; $5d77: $fe $82
    cp $fe                                        ; $5d79: $fe $fe
    cp $ba                                        ; $5d7b: $fe $ba
    cp $c6                                        ; $5d7d: $fe $c6
    cp $8a                                        ; $5d7f: $fe $8a
    cp $da                                        ; $5d81: $fe $da
    cp $da                                        ; $5d83: $fe $da
    cp $fe                                        ; $5d85: $fe $fe
    cp $9a                                        ; $5d87: $fe $9a
    cp $9a                                        ; $5d89: $fe $9a
    cp $fe                                        ; $5d8b: $fe $fe
    cp $aa                                        ; $5d8d: $fe $aa
    cp $9a                                        ; $5d8f: $fe $9a
    cp $e6                                        ; $5d91: $fe $e6
    cp $ce                                        ; $5d93: $fe $ce
    cp $b2                                        ; $5d95: $fe $b2
    cp $fe                                        ; $5d97: $fe $fe
    cp $ba                                        ; $5d99: $fe $ba
    cp $aa                                        ; $5d9b: $fe $aa
    cp $d6                                        ; $5d9d: $fe $d6
    cp $b6                                        ; $5d9f: $fe $b6
    cp $ce                                        ; $5da1: $fe $ce
    cp $fe                                        ; $5da3: $fe $fe
    cp $86                                        ; $5da5: $fe $86
    cp $fa                                        ; $5da7: $fe $fa
    cp $86                                        ; $5da9: $fe $86
    cp $fe                                        ; $5dab: $fe $fe
    cp $c6                                        ; $5dad: $fe $c6
    cp $81                                        ; $5daf: $fe $81
    rst RST_38                                    ; $5db1: $ff
    add c                                         ; $5db2: $81
    rst RST_38                                    ; $5db3: $ff
    add c                                         ; $5db4: $81
    rst RST_38                                    ; $5db5: $ff
    add e                                         ; $5db6: $83
    rst RST_38                                    ; $5db7: $ff
    add h                                         ; $5db8: $84
    db $fc                                        ; $5db9: $fc
    add h                                         ; $5dba: $84
    db $fc                                        ; $5dbb: $fc
    rst RST_38                                    ; $5dbc: $ff
    rst RST_38                                    ; $5dbd: $ff
    nop                                           ; $5dbe: $00
    rst RST_38                                    ; $5dbf: $ff
    ccf                                           ; $5dc0: $3f
    ccf                                           ; $5dc1: $3f
    ccf                                           ; $5dc2: $3f
    ccf                                           ; $5dc3: $3f
    ccf                                           ; $5dc4: $3f
    ccf                                           ; $5dc5: $3f
    ccf                                           ; $5dc6: $3f
    ccf                                           ; $5dc7: $3f
    rrca                                          ; $5dc8: $0f
    rrca                                          ; $5dc9: $0f
    rst RST_08                                    ; $5dca: $cf
    rst RST_08                                    ; $5dcb: $cf
    rst RST_38                                    ; $5dcc: $ff
    rst RST_38                                    ; $5dcd: $ff
    nop                                           ; $5dce: $00
    rst RST_38                                    ; $5dcf: $ff
    cp $fe                                        ; $5dd0: $fe $fe
    sbc $de                                       ; $5dd2: $de $de
    rst RST_18                                    ; $5dd4: $df
    rst RST_18                                    ; $5dd5: $df
    rst RST_18                                    ; $5dd6: $df
    rst RST_18                                    ; $5dd7: $df
    adc a                                         ; $5dd8: $8f
    adc a                                         ; $5dd9: $8f
    daa                                           ; $5dda: $27
    daa                                           ; $5ddb: $27
    rst RST_38                                    ; $5ddc: $ff
    rst RST_38                                    ; $5ddd: $ff
    nop                                           ; $5dde: $00
    rst RST_38                                    ; $5ddf: $ff
    ld h, b                                       ; $5de0: $60
    ld a, a                                       ; $5de1: $7f
    ld [hl], c                                    ; $5de2: $71
    ld a, a                                       ; $5de3: $7f
    ccf                                           ; $5de4: $3f
    ccf                                           ; $5de5: $3f
    ld e, $1e                                     ; $5de6: $1e $1e
    add b                                         ; $5de8: $80
    add b                                         ; $5de9: $80
    db $e3                                        ; $5dea: $e3
    db $e3                                        ; $5deb: $e3
    rst RST_38                                    ; $5dec: $ff
    rst RST_38                                    ; $5ded: $ff
    nop                                           ; $5dee: $00
    rst RST_38                                    ; $5def: $ff
    db $e4                                        ; $5df0: $e4
    db $e4                                        ; $5df1: $e4
    db $e4                                        ; $5df2: $e4
    db $e4                                        ; $5df3: $e4
    ld h, [hl]                                    ; $5df4: $66
    ld h, [hl]                                    ; $5df5: $66
    ld h, a                                       ; $5df6: $67
    ld h, a                                       ; $5df7: $67
    rst RST_08                                    ; $5df8: $cf
    rst RST_08                                    ; $5df9: $cf
    sbc a                                         ; $5dfa: $9f
    sbc a                                         ; $5dfb: $9f
    rst RST_38                                    ; $5dfc: $ff
    rst RST_38                                    ; $5dfd: $ff
    nop                                           ; $5dfe: $00
    rst RST_38                                    ; $5dff: $ff
    jp c, $b6da                                   ; $5e00: $da $da $b6

    or [hl]                                       ; $5e03: $b6
    xor [hl]                                      ; $5e04: $ae
    xor [hl]                                      ; $5e05: $ae
    sub $d6                                       ; $5e06: $d6 $d6
    ld [$feea], a                                 ; $5e08: $ea $ea $fe
    cp $86                                        ; $5e0b: $fe $86
    add [hl]                                      ; $5e0d: $86
    jp c, $feda                                   ; $5e0e: $da $da $fe

    cp $da                                        ; $5e11: $fe $da
    jp c, $aaaa                                   ; $5e13: $da $aa $aa

    and [hl]                                      ; $5e16: $a6
    and [hl]                                      ; $5e17: $a6
    cp $fe                                        ; $5e18: $fe $fe
    add $c6                                       ; $5e1a: $c6 $c6
    cp d                                          ; $5e1c: $ba
    cp d                                          ; $5e1d: $ba
    cp d                                          ; $5e1e: $ba
    cp d                                          ; $5e1f: $ba
    xor d                                         ; $5e20: $aa
    xor d                                         ; $5e21: $aa
    xor d                                         ; $5e22: $aa
    xor d                                         ; $5e23: $aa
    cp $fe                                        ; $5e24: $fe $fe
    xor d                                         ; $5e26: $aa
    xor d                                         ; $5e27: $aa
    add d                                         ; $5e28: $82
    add d                                         ; $5e29: $82
    xor $ee                                       ; $5e2a: $ee $ee
    cp $fe                                        ; $5e2c: $fe $fe
    jp nc, $d6d2                                  ; $5e2e: $d2 $d2 $d6

    sub $aa                                       ; $5e31: $d6 $aa
    xor d                                         ; $5e33: $aa
    cp d                                          ; $5e34: $ba
    cp d                                          ; $5e35: $ba
    cp $fe                                        ; $5e36: $fe $fe
    add $c6                                       ; $5e38: $c6 $c6
    cp d                                          ; $5e3a: $ba
    cp d                                          ; $5e3b: $ba
    jp z, $faca                                   ; $5e3c: $ca $ca $fa

    ld a, [$baba]                                 ; $5e3f: $fa $ba $ba
    sub $d6                                       ; $5e42: $d6 $d6
    xor $ee                                       ; $5e44: $ee $ee
    add d                                         ; $5e46: $82
    add d                                         ; $5e47: $82
    cp $fe                                        ; $5e48: $fe $fe
    xor d                                         ; $5e4a: $aa
    xor d                                         ; $5e4b: $aa
    sub $d6                                       ; $5e4c: $d6 $d6
    cp $fe                                        ; $5e4e: $fe $fe
    add d                                         ; $5e50: $82
    add d                                         ; $5e51: $82
    cp d                                          ; $5e52: $ba
    cp d                                          ; $5e53: $ba
    xor d                                         ; $5e54: $aa
    xor d                                         ; $5e55: $aa
    cp d                                          ; $5e56: $ba
    cp d                                          ; $5e57: $ba
    add d                                         ; $5e58: $82
    add d                                         ; $5e59: $82
    cp $fe                                        ; $5e5a: $fe $fe
    add d                                         ; $5e5c: $82
    add d                                         ; $5e5d: $82
    ld a, [$dafa]                                 ; $5e5e: $fa $fa $da
    cp $b6                                        ; $5e61: $fe $b6
    cp $ae                                        ; $5e63: $fe $ae
    cp $d6                                        ; $5e65: $fe $d6
    cp $ea                                        ; $5e67: $fe $ea
    cp $fe                                        ; $5e69: $fe $fe
    cp $86                                        ; $5e6b: $fe $86
    cp $da                                        ; $5e6d: $fe $da
    cp $fe                                        ; $5e6f: $fe $fe
    cp $da                                        ; $5e71: $fe $da
    cp $aa                                        ; $5e73: $fe $aa
    cp $a6                                        ; $5e75: $fe $a6
    cp $fe                                        ; $5e77: $fe $fe
    cp $c6                                        ; $5e79: $fe $c6
    cp $ba                                        ; $5e7b: $fe $ba
    cp $ba                                        ; $5e7d: $fe $ba
    cp $aa                                        ; $5e7f: $fe $aa
    cp $aa                                        ; $5e81: $fe $aa
    cp $fe                                        ; $5e83: $fe $fe
    cp $aa                                        ; $5e85: $fe $aa
    cp $82                                        ; $5e87: $fe $82
    cp $ee                                        ; $5e89: $fe $ee
    cp $fe                                        ; $5e8b: $fe $fe
    cp $d2                                        ; $5e8d: $fe $d2
    cp $d6                                        ; $5e8f: $fe $d6
    cp $aa                                        ; $5e91: $fe $aa
    cp $ba                                        ; $5e93: $fe $ba
    cp $fe                                        ; $5e95: $fe $fe
    cp $c6                                        ; $5e97: $fe $c6
    cp $ba                                        ; $5e99: $fe $ba
    cp $ca                                        ; $5e9b: $fe $ca
    cp $fa                                        ; $5e9d: $fe $fa
    cp $ba                                        ; $5e9f: $fe $ba
    cp $d6                                        ; $5ea1: $fe $d6
    cp $ee                                        ; $5ea3: $fe $ee
    cp $82                                        ; $5ea5: $fe $82
    cp $fe                                        ; $5ea7: $fe $fe
    cp $aa                                        ; $5ea9: $fe $aa
    cp $d6                                        ; $5eab: $fe $d6
    cp $fe                                        ; $5ead: $fe $fe
    cp $ff                                        ; $5eaf: $fe $ff
    rst RST_38                                    ; $5eb1: $ff
    rst RST_38                                    ; $5eb2: $ff
    rst RST_38                                    ; $5eb3: $ff
    ldh [rIE], a                                  ; $5eb4: $e0 $ff
    jr c, jr_009_5ef7                             ; $5eb6: $38 $3f

    rst RST_08                                    ; $5eb8: $cf
    rst RST_08                                    ; $5eb9: $cf
    rst RST_30                                    ; $5eba: $f7
    rst RST_30                                    ; $5ebb: $f7
    adc [hl]                                      ; $5ebc: $8e
    adc [hl]                                      ; $5ebd: $8e

jr_009_5ebe:
    ld a, $3e                                     ; $5ebe: $3e $3e
    rst RST_38                                    ; $5ec0: $ff
    rst RST_38                                    ; $5ec1: $ff
    rst RST_38                                    ; $5ec2: $ff
    rst RST_38                                    ; $5ec3: $ff
    jr c, jr_009_5ebe                             ; $5ec4: $38 $f8

    db $e3                                        ; $5ec6: $e3
    db $e3                                        ; $5ec7: $e3
    adc h                                         ; $5ec8: $8c
    adc h                                         ; $5ec9: $8c
    add hl, sp                                    ; $5eca: $39
    add hl, sp                                    ; $5ecb: $39
    ld a, c                                       ; $5ecc: $79
    ld a, c                                       ; $5ecd: $79
    cp c                                          ; $5ece: $b9
    cp c                                          ; $5ecf: $b9
    rst RST_38                                    ; $5ed0: $ff
    rst RST_38                                    ; $5ed1: $ff
    rst RST_38                                    ; $5ed2: $ff
    rst RST_38                                    ; $5ed3: $ff
    jr c, jr_009_5f15                             ; $5ed4: $38 $3f

    adc [hl]                                      ; $5ed6: $8e
    adc a                                         ; $5ed7: $8f
    ld h, e                                       ; $5ed8: $63
    ld h, e                                       ; $5ed9: $63
    add hl, sp                                    ; $5eda: $39
    add hl, sp                                    ; $5edb: $39
    inc a                                         ; $5edc: $3c
    inc a                                         ; $5edd: $3c
    ld a, [hl-]                                   ; $5ede: $3a
    ld a, [hl-]                                   ; $5edf: $3a
    rst RST_38                                    ; $5ee0: $ff
    rst RST_38                                    ; $5ee1: $ff
    rst RST_38                                    ; $5ee2: $ff
    rst RST_38                                    ; $5ee3: $ff
    ld h, b                                       ; $5ee4: $60
    ldh [$ffc1], a                                ; $5ee5: $e0 $c1
    pop bc                                        ; $5ee7: $c1
    adc [hl]                                      ; $5ee8: $8e
    adc [hl]                                      ; $5ee9: $8e
    sbc a                                         ; $5eea: $9f
    sbc a                                         ; $5eeb: $9f
    adc a                                         ; $5eec: $8f
    adc a                                         ; $5eed: $8f
    pop bc                                        ; $5eee: $c1
    pop bc                                        ; $5eef: $c1
    rst RST_38                                    ; $5ef0: $ff
    rst RST_38                                    ; $5ef1: $ff
    rst RST_38                                    ; $5ef2: $ff
    rst RST_38                                    ; $5ef3: $ff
    ld d, b                                       ; $5ef4: $50
    ld [hl], b                                    ; $5ef5: $70

jr_009_5ef6:
    inc h                                         ; $5ef6: $24

jr_009_5ef7:
    inc h                                         ; $5ef7: $24
    inc hl                                        ; $5ef8: $23
    inc hl                                        ; $5ef9: $23
    rst RST_38                                    ; $5efa: $ff
    rst RST_38                                    ; $5efb: $ff
    jr jr_009_5ef6                                ; $5efc: $18 $f8

    or b                                          ; $5efe: $b0
    ldh a, [$ffde]                                ; $5eff: $f0 $de
    sbc $da                                       ; $5f01: $de $da
    jp c, $dada                                   ; $5f03: $da $da $da

    add [hl]                                      ; $5f06: $86
    add [hl]                                      ; $5f07: $86
    cp $fe                                        ; $5f08: $fe $fe
    cp $fe                                        ; $5f0a: $fe $fe
    cp $fe                                        ; $5f0c: $fe $fe
    cp $fe                                        ; $5f0e: $fe $fe
    add $c6                                       ; $5f10: $c6 $c6
    cp $fe                                        ; $5f12: $fe $fe
    add d                                         ; $5f14: $82

jr_009_5f15:
    add d                                         ; $5f15: $82
    add $c6                                       ; $5f16: $c6 $c6
    cp $fe                                        ; $5f18: $fe $fe
    cp $fe                                        ; $5f1a: $fe $fe
    cp $fe                                        ; $5f1c: $fe $fe
    cp $fe                                        ; $5f1e: $fe $fe
    and [hl]                                      ; $5f20: $a6
    and [hl]                                      ; $5f21: $a6
    adc $ce                                       ; $5f22: $ce $ce
    adc [hl]                                      ; $5f24: $8e
    adc [hl]                                      ; $5f25: $8e
    ldh [c], a                                    ; $5f26: $e2
    ldh [c], a                                    ; $5f27: $e2
    cp $fe                                        ; $5f28: $fe $fe
    cp $fe                                        ; $5f2a: $fe $fe
    cp $fe                                        ; $5f2c: $fe $fe
    cp $fe                                        ; $5f2e: $fe $fe
    add $c6                                       ; $5f30: $c6 $c6
    cp $fe                                        ; $5f32: $fe $fe
    xor d                                         ; $5f34: $aa
    xor d                                         ; $5f35: $aa
    xor d                                         ; $5f36: $aa
    xor d                                         ; $5f37: $aa
    cp $fe                                        ; $5f38: $fe $fe
    cp $fe                                        ; $5f3a: $fe $fe
    cp $fe                                        ; $5f3c: $fe $fe
    cp $fe                                        ; $5f3e: $fe $fe
    add [hl]                                      ; $5f40: $86
    add [hl]                                      ; $5f41: $86
    ld a, [$9afa]                                 ; $5f42: $fa $fa $9a
    sbc d                                         ; $5f45: $9a
    and $e6                                       ; $5f46: $e6 $e6
    cp $fe                                        ; $5f48: $fe $fe
    cp $fe                                        ; $5f4a: $fe $fe
    cp $fe                                        ; $5f4c: $fe $fe
    cp $fe                                        ; $5f4e: $fe $fe
    or [hl]                                       ; $5f50: $b6
    or [hl]                                       ; $5f51: $b6
    xor d                                         ; $5f52: $aa
    xor d                                         ; $5f53: $aa
    sub d                                         ; $5f54: $92
    sub d                                         ; $5f55: $92
    cp $fe                                        ; $5f56: $fe $fe
    cp $fe                                        ; $5f58: $fe $fe
    cp $fe                                        ; $5f5a: $fe $fe
    cp $fe                                        ; $5f5c: $fe $fe
    cp $fe                                        ; $5f5e: $fe $fe
    sbc $fe                                       ; $5f60: $de $fe
    jp c, $dafe                                   ; $5f62: $da $fe $da

    cp $86                                        ; $5f65: $fe $86
    cp $fe                                        ; $5f67: $fe $fe
    cp $fe                                        ; $5f69: $fe $fe
    cp $fe                                        ; $5f6b: $fe $fe
    cp $fe                                        ; $5f6d: $fe $fe
    cp $c6                                        ; $5f6f: $fe $c6
    cp $fe                                        ; $5f71: $fe $fe
    cp $82                                        ; $5f73: $fe $82
    cp $c6                                        ; $5f75: $fe $c6
    cp $fe                                        ; $5f77: $fe $fe
    cp $fe                                        ; $5f79: $fe $fe
    cp $fe                                        ; $5f7b: $fe $fe
    cp $fe                                        ; $5f7d: $fe $fe
    cp $a6                                        ; $5f7f: $fe $a6
    cp $ce                                        ; $5f81: $fe $ce
    cp $8e                                        ; $5f83: $fe $8e
    cp $e2                                        ; $5f85: $fe $e2
    cp $fe                                        ; $5f87: $fe $fe
    cp $fe                                        ; $5f89: $fe $fe
    cp $fe                                        ; $5f8b: $fe $fe
    cp $fe                                        ; $5f8d: $fe $fe
    cp $c6                                        ; $5f8f: $fe $c6
    cp $fe                                        ; $5f91: $fe $fe
    cp $aa                                        ; $5f93: $fe $aa
    cp $aa                                        ; $5f95: $fe $aa
    cp $fe                                        ; $5f97: $fe $fe
    cp $fe                                        ; $5f99: $fe $fe
    cp $fe                                        ; $5f9b: $fe $fe
    cp $fe                                        ; $5f9d: $fe $fe
    cp $86                                        ; $5f9f: $fe $86
    cp $fa                                        ; $5fa1: $fe $fa
    cp $9a                                        ; $5fa3: $fe $9a
    cp $e6                                        ; $5fa5: $fe $e6
    cp $fe                                        ; $5fa7: $fe $fe
    cp $fe                                        ; $5fa9: $fe $fe
    cp $fe                                        ; $5fab: $fe $fe
    cp $fe                                        ; $5fad: $fe $fe
    cp $8f                                        ; $5faf: $fe $8f
    adc a                                         ; $5fb1: $8f
    or a                                          ; $5fb2: $b7
    or a                                          ; $5fb3: $b7
    ld e, d                                       ; $5fb4: $5a
    ld e, d                                       ; $5fb5: $5a
    dec hl                                        ; $5fb6: $2b
    dec hl                                        ; $5fb7: $2b
    dec hl                                        ; $5fb8: $2b
    dec hl                                        ; $5fb9: $2b
    dec hl                                        ; $5fba: $2b
    dec hl                                        ; $5fbb: $2b
    rst RST_38                                    ; $5fbc: $ff
    rst RST_38                                    ; $5fbd: $ff
    nop                                           ; $5fbe: $00
    rst RST_38                                    ; $5fbf: $ff
    sbc c                                         ; $5fc0: $99
    sbc c                                         ; $5fc1: $99
    call z, $e3cc                                 ; $5fc2: $cc $cc $e3
    db $e3                                        ; $5fc5: $e3
    ld a, b                                       ; $5fc6: $78
    ld a, b                                       ; $5fc7: $78
    sbc a                                         ; $5fc8: $9f
    sbc a                                         ; $5fc9: $9f
    ldh [$ffe0], a                                ; $5fca: $e0 $e0
    rst RST_38                                    ; $5fcc: $ff
    rst RST_38                                    ; $5fcd: $ff
    nop                                           ; $5fce: $00
    rst RST_38                                    ; $5fcf: $ff
    inc sp                                        ; $5fd0: $33
    inc sp                                        ; $5fd1: $33
    ld h, a                                       ; $5fd2: $67
    ld h, a                                       ; $5fd3: $67
    adc a                                         ; $5fd4: $8f
    adc a                                         ; $5fd5: $8f
    ccf                                           ; $5fd6: $3f
    ccf                                           ; $5fd7: $3f
    rst RST_38                                    ; $5fd8: $ff
    rst RST_38                                    ; $5fd9: $ff
    nop                                           ; $5fda: $00
    nop                                           ; $5fdb: $00
    rst RST_38                                    ; $5fdc: $ff
    rst RST_38                                    ; $5fdd: $ff
    nop                                           ; $5fde: $00
    rst RST_38                                    ; $5fdf: $ff
    ldh [$ffe0], a                                ; $5fe0: $e0 $e0
    db $fc                                        ; $5fe2: $fc
    db $fc                                        ; $5fe3: $fc
    db $fc                                        ; $5fe4: $fc
    db $fc                                        ; $5fe5: $fc
    ldh a, [$fff0]                                ; $5fe6: $f0 $f0
    ld bc, $0701                                  ; $5fe8: $01 $01 $07
    rlca                                          ; $5feb: $07
    rst RST_38                                    ; $5fec: $ff
    rst RST_38                                    ; $5fed: $ff
    nop                                           ; $5fee: $00
    rst RST_38                                    ; $5fef: $ff
    ldh [c], a                                    ; $5ff0: $e2
    ldh [c], a                                    ; $5ff1: $e2
    ld h, a                                       ; $5ff2: $67
    ld h, a                                       ; $5ff3: $67
    ld h, a                                       ; $5ff4: $67
    ld h, a                                       ; $5ff5: $67
    db $e3                                        ; $5ff6: $e3
    db $e3                                        ; $5ff7: $e3
    or b                                          ; $5ff8: $b0
    ldh a, [rNR23]                                ; $5ff9: $f0 $18
    ld hl, sp-$01                                 ; $5ffb: $f8 $ff
    rst RST_38                                    ; $5ffd: $ff
    nop                                           ; $5ffe: $00
    rst RST_38                                    ; $5fff: $ff
    rst RST_38                                    ; $6000: $ff
    nop                                           ; $6001: $00
    rst RST_38                                    ; $6002: $ff
    nop                                           ; $6003: $00
    rst RST_38                                    ; $6004: $ff
    nop                                           ; $6005: $00
    rst RST_38                                    ; $6006: $ff
    nop                                           ; $6007: $00
    rst RST_38                                    ; $6008: $ff
    nop                                           ; $6009: $00
    db $fc                                        ; $600a: $fc
    ld bc, $07f8                                  ; $600b: $01 $f8 $07
    ldh a, [rTAC]                                 ; $600e: $f0 $07
    rst RST_38                                    ; $6010: $ff
    nop                                           ; $6011: $00
    rst RST_38                                    ; $6012: $ff
    nop                                           ; $6013: $00
    rst RST_38                                    ; $6014: $ff
    nop                                           ; $6015: $00
    rst RST_38                                    ; $6016: $ff
    nop                                           ; $6017: $00
    rst RST_38                                    ; $6018: $ff
    nop                                           ; $6019: $00
    ccf                                           ; $601a: $3f
    ret nz                                        ; $601b: $c0

    rra                                           ; $601c: $1f
    ldh [$ff1f], a                                ; $601d: $e0 $1f
    ldh [rIE], a                                  ; $601f: $e0 $ff
    nop                                           ; $6021: $00
    rst RST_38                                    ; $6022: $ff
    nop                                           ; $6023: $00
    rst RST_38                                    ; $6024: $ff
    nop                                           ; $6025: $00
    rst RST_38                                    ; $6026: $ff
    nop                                           ; $6027: $00
    rst RST_38                                    ; $6028: $ff
    nop                                           ; $6029: $00
    rst RST_38                                    ; $602a: $ff
    rra                                           ; $602b: $1f
    rst RST_38                                    ; $602c: $ff
    add hl, de                                    ; $602d: $19
    rst RST_38                                    ; $602e: $ff
    add hl, de                                    ; $602f: $19
    rst RST_38                                    ; $6030: $ff
    nop                                           ; $6031: $00
    rst RST_38                                    ; $6032: $ff
    nop                                           ; $6033: $00
    rst RST_38                                    ; $6034: $ff
    nop                                           ; $6035: $00
    rst RST_38                                    ; $6036: $ff
    nop                                           ; $6037: $00
    rst RST_38                                    ; $6038: $ff
    nop                                           ; $6039: $00
    rst RST_38                                    ; $603a: $ff
    ld e, $ff                                     ; $603b: $1e $ff
    or e                                          ; $603d: $b3
    rst RST_38                                    ; $603e: $ff
    or e                                          ; $603f: $b3
    rst RST_38                                    ; $6040: $ff
    nop                                           ; $6041: $00
    rst RST_38                                    ; $6042: $ff
    nop                                           ; $6043: $00
    rst RST_38                                    ; $6044: $ff
    nop                                           ; $6045: $00
    rst RST_38                                    ; $6046: $ff
    nop                                           ; $6047: $00
    rst RST_38                                    ; $6048: $ff
    nop                                           ; $6049: $00
    rst RST_38                                    ; $604a: $ff
    ld a, [hl]                                    ; $604b: $7e
    rst RST_38                                    ; $604c: $ff
    jr @+$01                                      ; $604d: $18 $ff

    jr @+$01                                      ; $604f: $18 $ff

    nop                                           ; $6051: $00
    rst RST_38                                    ; $6052: $ff
    nop                                           ; $6053: $00
    rst RST_38                                    ; $6054: $ff
    nop                                           ; $6055: $00
    rst RST_38                                    ; $6056: $ff
    nop                                           ; $6057: $00
    rst RST_38                                    ; $6058: $ff
    nop                                           ; $6059: $00
    rst RST_38                                    ; $605a: $ff
    ld a, b                                       ; $605b: $78
    rst RST_38                                    ; $605c: $ff
    call z, $ccff                                 ; $605d: $cc $ff $cc
    rst RST_38                                    ; $6060: $ff
    nop                                           ; $6061: $00
    rst RST_38                                    ; $6062: $ff
    nop                                           ; $6063: $00
    rst RST_38                                    ; $6064: $ff
    nop                                           ; $6065: $00
    rst RST_38                                    ; $6066: $ff
    nop                                           ; $6067: $00
    rst RST_38                                    ; $6068: $ff
    nop                                           ; $6069: $00
    rst RST_38                                    ; $606a: $ff
    rlca                                          ; $606b: $07
    rst RST_38                                    ; $606c: $ff
    inc c                                         ; $606d: $0c
    rst RST_38                                    ; $606e: $ff
    rlca                                          ; $606f: $07
    rst RST_38                                    ; $6070: $ff
    nop                                           ; $6071: $00
    rst RST_38                                    ; $6072: $ff
    nop                                           ; $6073: $00
    rst RST_38                                    ; $6074: $ff
    nop                                           ; $6075: $00
    rst RST_38                                    ; $6076: $ff
    nop                                           ; $6077: $00
    rst RST_38                                    ; $6078: $ff
    nop                                           ; $6079: $00
    rst RST_38                                    ; $607a: $ff
    rst RST_18                                    ; $607b: $df
    rst RST_38                                    ; $607c: $ff
    jr @+$01                                      ; $607d: $18 $ff

    sbc [hl]                                      ; $607f: $9e
    rst RST_38                                    ; $6080: $ff
    nop                                           ; $6081: $00
    rst RST_38                                    ; $6082: $ff
    nop                                           ; $6083: $00
    rst RST_38                                    ; $6084: $ff
    nop                                           ; $6085: $00
    rst RST_38                                    ; $6086: $ff
    nop                                           ; $6087: $00
    rst RST_38                                    ; $6088: $ff
    nop                                           ; $6089: $00
    rst RST_38                                    ; $608a: $ff
    or b                                          ; $608b: $b0
    rst RST_38                                    ; $608c: $ff
    jr nc, @+$01                                  ; $608d: $30 $ff

    jr nc, @+$01                                  ; $608f: $30 $ff

    nop                                           ; $6091: $00
    rst RST_38                                    ; $6092: $ff
    nop                                           ; $6093: $00
    rst RST_38                                    ; $6094: $ff
    nop                                           ; $6095: $00
    rst RST_38                                    ; $6096: $ff
    nop                                           ; $6097: $00
    rst RST_38                                    ; $6098: $ff
    nop                                           ; $6099: $00
    rst RST_38                                    ; $609a: $ff
    ld a, [hl]                                    ; $609b: $7e
    rst RST_38                                    ; $609c: $ff
    ld h, b                                       ; $609d: $60
    rst RST_38                                    ; $609e: $ff
    ld a, b                                       ; $609f: $78
    rst RST_38                                    ; $60a0: $ff
    nop                                           ; $60a1: $00
    rst RST_38                                    ; $60a2: $ff
    nop                                           ; $60a3: $00
    rst RST_38                                    ; $60a4: $ff
    nop                                           ; $60a5: $00
    rst RST_38                                    ; $60a6: $ff
    nop                                           ; $60a7: $00
    rst RST_38                                    ; $60a8: $ff
    nop                                           ; $60a9: $00
    rst RST_38                                    ; $60aa: $ff
    ld a, c                                       ; $60ab: $79
    rst RST_38                                    ; $60ac: $ff
    call z, $c0ff                                 ; $60ad: $cc $ff $c0
    rst RST_38                                    ; $60b0: $ff
    nop                                           ; $60b1: $00
    rst RST_38                                    ; $60b2: $ff
    nop                                           ; $60b3: $00
    rst RST_38                                    ; $60b4: $ff
    nop                                           ; $60b5: $00
    rst RST_38                                    ; $60b6: $ff
    nop                                           ; $60b7: $00
    rst RST_38                                    ; $60b8: $ff
    nop                                           ; $60b9: $00
    rst RST_38                                    ; $60ba: $ff
    ld hl, sp-$01                                 ; $60bb: $f8 $ff
    ld h, b                                       ; $60bd: $60
    rst RST_38                                    ; $60be: $ff
    ld h, b                                       ; $60bf: $60
    rst RST_38                                    ; $60c0: $ff
    nop                                           ; $60c1: $00
    rst RST_38                                    ; $60c2: $ff
    nop                                           ; $60c3: $00
    rst RST_38                                    ; $60c4: $ff
    nop                                           ; $60c5: $00
    rst RST_38                                    ; $60c6: $ff
    nop                                           ; $60c7: $00
    rst RST_38                                    ; $60c8: $ff
    nop                                           ; $60c9: $00
    rst RST_38                                    ; $60ca: $ff
    nop                                           ; $60cb: $00
    rst RST_38                                    ; $60cc: $ff
    nop                                           ; $60cd: $00
    rst RST_38                                    ; $60ce: $ff
    nop                                           ; $60cf: $00
    nop                                           ; $60d0: $00
    nop                                           ; $60d1: $00
    nop                                           ; $60d2: $00
    nop                                           ; $60d3: $00
    nop                                           ; $60d4: $00
    nop                                           ; $60d5: $00
    nop                                           ; $60d6: $00
    nop                                           ; $60d7: $00
    nop                                           ; $60d8: $00
    nop                                           ; $60d9: $00
    nop                                           ; $60da: $00
    nop                                           ; $60db: $00
    nop                                           ; $60dc: $00
    nop                                           ; $60dd: $00
    nop                                           ; $60de: $00
    nop                                           ; $60df: $00
    nop                                           ; $60e0: $00
    nop                                           ; $60e1: $00
    nop                                           ; $60e2: $00
    nop                                           ; $60e3: $00
    nop                                           ; $60e4: $00
    nop                                           ; $60e5: $00
    nop                                           ; $60e6: $00
    nop                                           ; $60e7: $00
    nop                                           ; $60e8: $00
    nop                                           ; $60e9: $00
    nop                                           ; $60ea: $00
    nop                                           ; $60eb: $00
    nop                                           ; $60ec: $00
    nop                                           ; $60ed: $00
    nop                                           ; $60ee: $00
    nop                                           ; $60ef: $00
    nop                                           ; $60f0: $00
    nop                                           ; $60f1: $00
    nop                                           ; $60f2: $00
    nop                                           ; $60f3: $00
    nop                                           ; $60f4: $00
    nop                                           ; $60f5: $00
    nop                                           ; $60f6: $00
    nop                                           ; $60f7: $00
    nop                                           ; $60f8: $00
    nop                                           ; $60f9: $00
    nop                                           ; $60fa: $00
    nop                                           ; $60fb: $00
    nop                                           ; $60fc: $00
    nop                                           ; $60fd: $00
    nop                                           ; $60fe: $00
    nop                                           ; $60ff: $00
    ldh a, [rIF]                                  ; $6100: $f0 $0f
    ldh a, [rIF]                                  ; $6102: $f0 $0f
    ld hl, sp+$07                                 ; $6104: $f8 $07
    rst RST_38                                    ; $6106: $ff
    nop                                           ; $6107: $00
    rst RST_38                                    ; $6108: $ff
    nop                                           ; $6109: $00
    rst RST_38                                    ; $610a: $ff
    nop                                           ; $610b: $00
    rst RST_38                                    ; $610c: $ff
    nop                                           ; $610d: $00
    rst RST_38                                    ; $610e: $ff
    rst RST_38                                    ; $610f: $ff
    rra                                           ; $6110: $1f
    ret nz                                        ; $6111: $c0

    ccf                                           ; $6112: $3f
    ret nz                                        ; $6113: $c0

    ld a, a                                       ; $6114: $7f
    nop                                           ; $6115: $00
    rst RST_38                                    ; $6116: $ff
    nop                                           ; $6117: $00
    rst RST_38                                    ; $6118: $ff
    nop                                           ; $6119: $00
    rst RST_38                                    ; $611a: $ff
    nop                                           ; $611b: $00
    rst RST_38                                    ; $611c: $ff
    nop                                           ; $611d: $00
    rst RST_38                                    ; $611e: $ff
    rst RST_38                                    ; $611f: $ff
    rst RST_38                                    ; $6120: $ff
    add hl, de                                    ; $6121: $19
    rst RST_38                                    ; $6122: $ff
    add hl, de                                    ; $6123: $19
    rst RST_38                                    ; $6124: $ff
    rra                                           ; $6125: $1f
    rst RST_38                                    ; $6126: $ff
    nop                                           ; $6127: $00
    rst RST_38                                    ; $6128: $ff
    nop                                           ; $6129: $00
    rst RST_38                                    ; $612a: $ff
    nop                                           ; $612b: $00
    rst RST_38                                    ; $612c: $ff
    nop                                           ; $612d: $00
    rst RST_38                                    ; $612e: $ff
    rst RST_38                                    ; $612f: $ff
    rst RST_38                                    ; $6130: $ff
    cp a                                          ; $6131: $bf
    rst RST_38                                    ; $6132: $ff
    or e                                          ; $6133: $b3
    rst RST_38                                    ; $6134: $ff
    inc sp                                        ; $6135: $33
    rst RST_38                                    ; $6136: $ff
    nop                                           ; $6137: $00
    rst RST_38                                    ; $6138: $ff
    nop                                           ; $6139: $00
    rst RST_38                                    ; $613a: $ff
    nop                                           ; $613b: $00
    rst RST_38                                    ; $613c: $ff
    nop                                           ; $613d: $00
    rst RST_38                                    ; $613e: $ff
    rst RST_38                                    ; $613f: $ff
    rst RST_38                                    ; $6140: $ff
    jr @+$01                                      ; $6141: $18 $ff

    jr @+$01                                      ; $6143: $18 $ff

    jr @+$01                                      ; $6145: $18 $ff

    nop                                           ; $6147: $00
    rst RST_38                                    ; $6148: $ff
    nop                                           ; $6149: $00
    rst RST_38                                    ; $614a: $ff
    nop                                           ; $614b: $00
    rst RST_38                                    ; $614c: $ff
    nop                                           ; $614d: $00
    rst RST_38                                    ; $614e: $ff
    rst RST_38                                    ; $614f: $ff
    rst RST_38                                    ; $6150: $ff
    db $fc                                        ; $6151: $fc
    rst RST_38                                    ; $6152: $ff
    call z, $ccff                                 ; $6153: $cc $ff $cc
    rst RST_38                                    ; $6156: $ff
    nop                                           ; $6157: $00
    rst RST_38                                    ; $6158: $ff
    nop                                           ; $6159: $00
    rst RST_38                                    ; $615a: $ff
    nop                                           ; $615b: $00
    rst RST_38                                    ; $615c: $ff
    nop                                           ; $615d: $00
    rst RST_38                                    ; $615e: $ff
    rst RST_38                                    ; $615f: $ff
    rst RST_38                                    ; $6160: $ff
    nop                                           ; $6161: $00
    rst RST_38                                    ; $6162: $ff
    inc c                                         ; $6163: $0c
    rst RST_38                                    ; $6164: $ff
    rlca                                          ; $6165: $07
    rst RST_38                                    ; $6166: $ff
    nop                                           ; $6167: $00
    rst RST_38                                    ; $6168: $ff
    nop                                           ; $6169: $00
    rst RST_38                                    ; $616a: $ff
    nop                                           ; $616b: $00
    rst RST_38                                    ; $616c: $ff
    nop                                           ; $616d: $00
    rst RST_38                                    ; $616e: $ff
    rst RST_38                                    ; $616f: $ff
    rst RST_38                                    ; $6170: $ff
    ret c                                         ; $6171: $d8

    rst RST_38                                    ; $6172: $ff
    ret c                                         ; $6173: $d8

    rst RST_38                                    ; $6174: $ff
    sbc a                                         ; $6175: $9f
    rst RST_38                                    ; $6176: $ff
    nop                                           ; $6177: $00
    rst RST_38                                    ; $6178: $ff
    nop                                           ; $6179: $00
    rst RST_38                                    ; $617a: $ff
    nop                                           ; $617b: $00
    rst RST_38                                    ; $617c: $ff
    nop                                           ; $617d: $00
    rst RST_38                                    ; $617e: $ff
    rst RST_38                                    ; $617f: $ff
    rst RST_38                                    ; $6180: $ff
    jr nc, @+$01                                  ; $6181: $30 $ff

    jr nc, @+$01                                  ; $6183: $30 $ff

    cp a                                          ; $6185: $bf
    rst RST_38                                    ; $6186: $ff
    nop                                           ; $6187: $00
    rst RST_38                                    ; $6188: $ff
    nop                                           ; $6189: $00
    rst RST_38                                    ; $618a: $ff
    nop                                           ; $618b: $00
    rst RST_38                                    ; $618c: $ff
    nop                                           ; $618d: $00
    rst RST_38                                    ; $618e: $ff
    rst RST_38                                    ; $618f: $ff
    rst RST_38                                    ; $6190: $ff
    ld h, b                                       ; $6191: $60
    rst RST_38                                    ; $6192: $ff
    ld h, b                                       ; $6193: $60
    rst RST_38                                    ; $6194: $ff
    ld a, [hl]                                    ; $6195: $7e
    rst RST_38                                    ; $6196: $ff
    nop                                           ; $6197: $00
    rst RST_38                                    ; $6198: $ff
    nop                                           ; $6199: $00
    rst RST_38                                    ; $619a: $ff
    nop                                           ; $619b: $00
    rst RST_38                                    ; $619c: $ff
    nop                                           ; $619d: $00
    rst RST_38                                    ; $619e: $ff
    rst RST_38                                    ; $619f: $ff
    rst RST_38                                    ; $61a0: $ff
    ret nz                                        ; $61a1: $c0

    rst RST_38                                    ; $61a2: $ff
    call z, Call_009_78ff                         ; $61a3: $cc $ff $78
    rst RST_38                                    ; $61a6: $ff
    nop                                           ; $61a7: $00
    rst RST_38                                    ; $61a8: $ff
    nop                                           ; $61a9: $00
    rst RST_38                                    ; $61aa: $ff
    nop                                           ; $61ab: $00
    rst RST_38                                    ; $61ac: $ff
    nop                                           ; $61ad: $00
    rst RST_38                                    ; $61ae: $ff
    rst RST_38                                    ; $61af: $ff
    rst RST_38                                    ; $61b0: $ff
    ld h, b                                       ; $61b1: $60
    rst RST_38                                    ; $61b2: $ff
    ld h, b                                       ; $61b3: $60
    rst RST_38                                    ; $61b4: $ff
    ld h, b                                       ; $61b5: $60
    rst RST_38                                    ; $61b6: $ff
    nop                                           ; $61b7: $00
    rst RST_38                                    ; $61b8: $ff
    nop                                           ; $61b9: $00
    rst RST_38                                    ; $61ba: $ff
    nop                                           ; $61bb: $00
    rst RST_38                                    ; $61bc: $ff
    nop                                           ; $61bd: $00
    rst RST_38                                    ; $61be: $ff
    rst RST_38                                    ; $61bf: $ff
    rst RST_38                                    ; $61c0: $ff
    nop                                           ; $61c1: $00
    rst RST_38                                    ; $61c2: $ff
    nop                                           ; $61c3: $00
    rst RST_38                                    ; $61c4: $ff
    nop                                           ; $61c5: $00
    rst RST_38                                    ; $61c6: $ff
    nop                                           ; $61c7: $00
    rst RST_38                                    ; $61c8: $ff
    nop                                           ; $61c9: $00
    rst RST_38                                    ; $61ca: $ff
    nop                                           ; $61cb: $00
    rst RST_38                                    ; $61cc: $ff
    nop                                           ; $61cd: $00
    rst RST_38                                    ; $61ce: $ff
    rst RST_38                                    ; $61cf: $ff
    nop                                           ; $61d0: $00
    nop                                           ; $61d1: $00
    nop                                           ; $61d2: $00
    nop                                           ; $61d3: $00
    nop                                           ; $61d4: $00
    nop                                           ; $61d5: $00
    nop                                           ; $61d6: $00
    nop                                           ; $61d7: $00
    nop                                           ; $61d8: $00
    nop                                           ; $61d9: $00
    nop                                           ; $61da: $00
    nop                                           ; $61db: $00
    nop                                           ; $61dc: $00
    nop                                           ; $61dd: $00
    nop                                           ; $61de: $00
    nop                                           ; $61df: $00
    nop                                           ; $61e0: $00
    nop                                           ; $61e1: $00
    nop                                           ; $61e2: $00
    nop                                           ; $61e3: $00
    nop                                           ; $61e4: $00
    nop                                           ; $61e5: $00
    nop                                           ; $61e6: $00
    nop                                           ; $61e7: $00
    nop                                           ; $61e8: $00

jr_009_61e9:
    nop                                           ; $61e9: $00
    nop                                           ; $61ea: $00
    nop                                           ; $61eb: $00
    nop                                           ; $61ec: $00
    nop                                           ; $61ed: $00
    nop                                           ; $61ee: $00
    nop                                           ; $61ef: $00
    nop                                           ; $61f0: $00
    nop                                           ; $61f1: $00
    nop                                           ; $61f2: $00
    nop                                           ; $61f3: $00
    nop                                           ; $61f4: $00
    nop                                           ; $61f5: $00
    nop                                           ; $61f6: $00
    nop                                           ; $61f7: $00
    nop                                           ; $61f8: $00
    nop                                           ; $61f9: $00
    nop                                           ; $61fa: $00
    nop                                           ; $61fb: $00
    nop                                           ; $61fc: $00
    nop                                           ; $61fd: $00
    nop                                           ; $61fe: $00
    nop                                           ; $61ff: $00
    rst RST_38                                    ; $6200: $ff
    nop                                           ; $6201: $00
    rst RST_38                                    ; $6202: $ff
    ld a, a                                       ; $6203: $7f
    ret nz                                        ; $6204: $c0

    ld b, b                                       ; $6205: $40
    ret nz                                        ; $6206: $c0

    ld b, b                                       ; $6207: $40
    ret nz                                        ; $6208: $c0

    ld b, b                                       ; $6209: $40
    ret nz                                        ; $620a: $c0

    ld b, b                                       ; $620b: $40
    ret nz                                        ; $620c: $c0

    ld b, b                                       ; $620d: $40
    ret nz                                        ; $620e: $c0

    ld b, b                                       ; $620f: $40
    ld hl, sp+$07                                 ; $6210: $f8 $07
    and $f8                                       ; $6212: $e6 $f8
    ld c, $20                                     ; $6214: $0e $20
    inc e                                         ; $6216: $1c
    ld b, b                                       ; $6217: $40
    nop                                           ; $6218: $00
    ld b, b                                       ; $6219: $40
    ld bc, $0180                                  ; $621a: $01 $80 $01
    add b                                         ; $621d: $80
    ld [hl], c                                    ; $621e: $71
    add b                                         ; $621f: $80
    rra                                           ; $6220: $1f
    ldh [rTAC], a                                 ; $6221: $e0 $07
    rra                                           ; $6223: $1f
    db $10                                        ; $6224: $10
    inc b                                         ; $6225: $04
    ld [$0402], sp                                ; $6226: $08 $02 $04
    ld [bc], a                                    ; $6229: $02
    ret nz                                        ; $622a: $c0

jr_009_622b:
    ld bc, $01c0                                  ; $622b: $01 $c0 $01
    jp nz, $e001                                  ; $622e: $c2 $01 $e0

    rra                                           ; $6231: $1f
    ret nz                                        ; $6232: $c0

    ldh [rP1], a                                  ; $6233: $e0 $00
    ld b, b                                       ; $6235: $40
    dec c                                         ; $6236: $0d
    ld b, d                                       ; $6237: $42
    dec c                                         ; $6238: $0d
    ld b, d                                       ; $6239: $42
    dec c                                         ; $623a: $0d
    ld b, d                                       ; $623b: $42
    rrca                                          ; $623c: $0f
    ld b, b                                       ; $623d: $40
    nop                                           ; $623e: $00
    ld b, b                                       ; $623f: $40
    rlca                                          ; $6240: $07
    ld hl, sp+$03                                 ; $6241: $f8 $03
    rlca                                          ; $6243: $07
    nop                                           ; $6244: $00
    ld [bc], a                                    ; $6245: $02
    or b                                          ; $6246: $b0
    ld b, d                                       ; $6247: $42
    or b                                          ; $6248: $b0
    ld b, d                                       ; $6249: $42
    or b                                          ; $624a: $b0
    ld b, d                                       ; $624b: $42
    ldh a, [rSC]                                  ; $624c: $f0 $02
    nop                                           ; $624e: $00
    ld [bc], a                                    ; $624f: $02
    cp $01                                        ; $6250: $fe $01
    db $fc                                        ; $6252: $fc
    cp $01                                        ; $6253: $fe $01
    ld [bc], a                                    ; $6255: $02
    ld bc, HeaderLogo                             ; $6256: $01 $04 $01
    inc b                                         ; $6259: $04
    inc bc                                        ; $625a: $03
    ld hl, sp+$3d                                 ; $625b: $f8 $3d
    add d                                         ; $625d: $82
    dec e                                         ; $625e: $1d
    ld b, d                                       ; $625f: $42
    ld a, a                                       ; $6260: $7f
    add b                                         ; $6261: $80
    ccf                                           ; $6262: $3f
    ld a, a                                       ; $6263: $7f
    add b                                         ; $6264: $80
    ld b, b                                       ; $6265: $40
    add b                                         ; $6266: $80
    jr nz, jr_009_61e9                            ; $6267: $20 $80

    jr nz, jr_009_622b                            ; $6269: $20 $c0

    rra                                           ; $626b: $1f
    cp h                                          ; $626c: $bc
    ld b, c                                       ; $626d: $41
    cp b                                          ; $626e: $b8
    ld b, d                                       ; $626f: $42
    rst RST_38                                    ; $6270: $ff
    ld bc, $fdff                                  ; $6271: $01 $ff $fd
    inc bc                                        ; $6274: $03
    ld bc, $0103                                  ; $6275: $01 $03 $01
    inc bc                                        ; $6278: $03
    ld bc, $0103                                  ; $6279: $01 $03 $01
    inc bc                                        ; $627c: $03
    ld bc, $0103                                  ; $627d: $01 $03 $01
    rst RST_38                                    ; $6280: $ff
    nop                                           ; $6281: $00
    rst RST_38                                    ; $6282: $ff
    ld a, a                                       ; $6283: $7f
    ret nz                                        ; $6284: $c0

    ld e, e                                       ; $6285: $5b
    ret nz                                        ; $6286: $c0

    ld e, h                                       ; $6287: $5c
    ret nz                                        ; $6288: $c0

    ld a, h                                       ; $6289: $7c
    ret nz                                        ; $628a: $c0

    ld e, l                                       ; $628b: $5d
    ret nz                                        ; $628c: $c0

    ld e, l                                       ; $628d: $5d
    ret nz                                        ; $628e: $c0

    ld e, [hl]                                    ; $628f: $5e
    rst RST_38                                    ; $6290: $ff
    rlca                                          ; $6291: $07
    ld a, [$2ef9]                                 ; $6292: $fa $f9 $2e
    pop af                                        ; $6295: $f1
    ld e, h                                       ; $6296: $5c
    ld h, c                                       ; $6297: $61
    ld b, b                                       ; $6298: $40
    jp nz, $fc81                                  ; $6299: $c2 $81 $fc

    add c                                         ; $629c: $81
    adc h                                         ; $629d: $8c
    pop af                                        ; $629e: $f1
    add h                                         ; $629f: $84
    rst RST_38                                    ; $62a0: $ff
    ldh [$ff1f], a                                ; $62a1: $e0 $1f
    rst RST_38                                    ; $62a3: $ff
    inc d                                         ; $62a4: $14
    xor $0a                                       ; $62a5: $ee $0a
    rst RST_20                                    ; $62a7: $e7
    ld b, $33                                     ; $62a8: $06 $33
    pop bc                                        ; $62aa: $c1
    rra                                           ; $62ab: $1f
    pop bc                                        ; $62ac: $c1
    dec e                                         ; $62ad: $1d
    jp rNR24                                      ; $62ae: $c3 $19 $ff


    rra                                           ; $62b1: $1f
    ldh [rIE], a                                  ; $62b2: $e0 $ff
    ld b, b                                       ; $62b4: $40
    ldh a, [rVBK]                                 ; $62b5: $f0 $4f
    ldh [c], a                                    ; $62b7: $e2
    ld c, a                                       ; $62b8: $4f
    ldh [c], a                                    ; $62b9: $e2
    ld c, a                                       ; $62ba: $4f
    ldh [c], a                                    ; $62bb: $e2
    ld c, a                                       ; $62bc: $4f
    ldh [rLCDC], a                                ; $62bd: $e0 $40

jr_009_62bf:
    ldh a, [rIE]                                  ; $62bf: $f0 $ff
    ld hl, sp+$07                                 ; $62c1: $f8 $07
    rst RST_38                                    ; $62c3: $ff
    ld [bc], a                                    ; $62c4: $02
    rrca                                          ; $62c5: $0f
    ldh a, [c]                                    ; $62c6: $f2
    ld b, a                                       ; $62c7: $47
    ldh a, [c]                                    ; $62c8: $f2
    ld b, a                                       ; $62c9: $47
    ldh a, [c]                                    ; $62ca: $f2
    ld b, [hl]                                    ; $62cb: $46
    ldh a, [c]                                    ; $62cc: $f2
    ld b, $02                                     ; $62cd: $06 $02
    rrca                                          ; $62cf: $0f
    rst RST_38                                    ; $62d0: $ff
    ld bc, $fffe                                  ; $62d1: $01 $fe $ff
    ld [bc], a                                    ; $62d4: $02
    adc [hl]                                      ; $62d5: $8e
    dec b                                         ; $62d6: $05
    adc $05                                       ; $62d7: $ce $05
    db $f4                                        ; $62d9: $f4
    ei                                            ; $62da: $fb
    db $fc                                        ; $62db: $fc
    cp a                                          ; $62dc: $bf
    jp nz, $e25f                                  ; $62dd: $c2 $5f $e2

    rst RST_38                                    ; $62e0: $ff
    add b                                         ; $62e1: $80
    ld a, a                                       ; $62e2: $7f
    rst RST_38                                    ; $62e3: $ff
    ld b, b                                       ; $62e4: $40
    ld e, e                                       ; $62e5: $5b
    and b                                         ; $62e6: $a0
    ld a, h                                       ; $62e7: $7c
    and b                                         ; $62e8: $a0
    inc a                                         ; $62e9: $3c
    rst RST_18                                    ; $62ea: $df
    ccf                                           ; $62eb: $3f

jr_009_62ec:
    db $fd                                        ; $62ec: $fd
    ld b, e                                       ; $62ed: $43
    ld a, [rDMA]                                  ; $62ee: $fa $46 $ff
    ld bc, $fdff                                  ; $62f1: $01 $ff $fd
    inc bc                                        ; $62f4: $03
    reti                                          ; $62f5: $d9


    inc bc                                        ; $62f6: $03
    ld a, c                                       ; $62f7: $79
    inc bc                                        ; $62f8: $03
    db $ed                                        ; $62f9: $ed
    inc bc                                        ; $62fa: $03
    db $ed                                        ; $62fb: $ed
    inc bc                                        ; $62fc: $03
    xor l                                         ; $62fd: $ad
    inc bc                                        ; $62fe: $03
    ld e, l                                       ; $62ff: $5d
    ret nz                                        ; $6300: $c0

    ld b, b                                       ; $6301: $40
    ret nz                                        ; $6302: $c0

    ld b, b                                       ; $6303: $40
    ret nz                                        ; $6304: $c0

    ld b, b                                       ; $6305: $40
    ret nz                                        ; $6306: $c0

    ld b, b                                       ; $6307: $40
    ret nz                                        ; $6308: $c0

    ld b, b                                       ; $6309: $40
    ret nz                                        ; $630a: $c0

    ld b, b                                       ; $630b: $40
    rst RST_38                                    ; $630c: $ff
    nop                                           ; $630d: $00
    rst RST_38                                    ; $630e: $ff
    rst RST_38                                    ; $630f: $ff
    ld h, b                                       ; $6310: $60
    add b                                         ; $6311: $80
    nop                                           ; $6312: $00
    adc a                                         ; $6313: $8f
    nop                                           ; $6314: $00
    ld [hl], d                                    ; $6315: $72
    dec b                                         ; $6316: $05
    ld [hl+], a                                   ; $6317: $22
    rlca                                          ; $6318: $07
    jr nz, jr_009_631e                            ; $6319: $20 $03

    db $10                                        ; $631b: $10
    ldh a, [rIF]                                  ; $631c: $f0 $0f

jr_009_631e:
    rst RST_38                                    ; $631e: $ff
    rst RST_38                                    ; $631f: $ff
    ld [bc], a                                    ; $6320: $02
    ld bc, $f100                                  ; $6321: $01 $00 $f1
    nop                                           ; $6324: $00
    ld c, [hl]                                    ; $6325: $4e
    and b                                         ; $6326: $a0
    ld b, h                                       ; $6327: $44
    ldh [rDIV], a                                 ; $6328: $e0 $04
    ret nz                                        ; $632a: $c0

    ld [$f00f], sp                                ; $632b: $08 $0f $f0
    rst RST_38                                    ; $632e: $ff
    rst RST_38                                    ; $632f: $ff
    nop                                           ; $6330: $00
    jr nz, jr_009_6333                            ; $6331: $20 $00

jr_009_6333:
    rra                                           ; $6333: $1f
    nop                                           ; $6334: $00
    pop hl                                        ; $6335: $e1
    nop                                           ; $6336: $00
    sbc c                                         ; $6337: $99
    jr nz, jr_009_62bf                            ; $6338: $20 $85

    nop                                           ; $633a: $00
    ld b, e                                       ; $633b: $43
    ret nz                                        ; $633c: $c0

    ccf                                           ; $633d: $3f
    rst RST_38                                    ; $633e: $ff
    rst RST_38                                    ; $633f: $ff
    nop                                           ; $6340: $00
    inc b                                         ; $6341: $04
    nop                                           ; $6342: $00
    rst RST_38                                    ; $6343: $ff
    nop                                           ; $6344: $00
    add hl, de                                    ; $6345: $19
    ld [$1062], sp                                ; $6346: $08 $62 $10
    add d                                         ; $6349: $82
    nop                                           ; $634a: $00
    adc h                                         ; $634b: $8c
    rrca                                          ; $634c: $0f
    ldh a, [rIE]                                  ; $634d: $f0 $ff
    rst RST_38                                    ; $634f: $ff
    dec c                                         ; $6350: $0d
    ld [hl+], a                                   ; $6351: $22
    rlca                                          ; $6352: $07
    db $10                                        ; $6353: $10
    rrca                                          ; $6354: $0f
    jr nz, @+$10                                  ; $6355: $20 $0e

    jr nz, jr_009_6371                            ; $6357: $20 $18

    ld b, c                                       ; $6359: $41
    jr nc, jr_009_63a2                            ; $635a: $30 $46

    rlca                                          ; $635c: $07
    sbc b                                         ; $635d: $98
    rst RST_38                                    ; $635e: $ff
    rst RST_38                                    ; $635f: $ff
    or b                                          ; $6360: $b0
    ld b, h                                       ; $6361: $44
    ldh [$ff08], a                                ; $6362: $e0 $08
    ldh a, [rDIV]                                 ; $6364: $f0 $04
    ld [hl], b                                    ; $6366: $70
    inc b                                         ; $6367: $04
    jr jr_009_62ec                                ; $6368: $18 $82

    inc c                                         ; $636a: $0c
    ld h, d                                       ; $636b: $62
    ldh [rNR24], a                                ; $636c: $e0 $19
    rst RST_38                                    ; $636e: $ff
    rst RST_38                                    ; $636f: $ff
    inc bc                                        ; $6370: $03

jr_009_6371:
    ld bc, $0103                                  ; $6371: $01 $03 $01
    inc bc                                        ; $6374: $03
    ld bc, $0103                                  ; $6375: $01 $03 $01
    inc bc                                        ; $6378: $03
    ld bc, $0103                                  ; $6379: $01 $03 $01
    rst RST_38                                    ; $637c: $ff
    ld bc, rIE                                    ; $637d: $01 $ff $ff
    ret nz                                        ; $6380: $c0

    ld e, d                                       ; $6381: $5a
    ret nz                                        ; $6382: $c0

    ld a, l                                       ; $6383: $7d
    ret nz                                        ; $6384: $c0

    ld a, a                                       ; $6385: $7f
    ret nz                                        ; $6386: $c0

    ld e, [hl]                                    ; $6387: $5e
    ret nz                                        ; $6388: $c0

    ld h, a                                       ; $6389: $67
    ret nz                                        ; $638a: $c0

    ld d, e                                       ; $638b: $53
    rst RST_38                                    ; $638c: $ff
    nop                                           ; $638d: $00
    rst RST_38                                    ; $638e: $ff
    rst RST_38                                    ; $638f: $ff
    ldh [$ff8e], a                                ; $6390: $e0 $8e
    adc a                                         ; $6392: $8f
    rst RST_18                                    ; $6393: $df
    ld [hl], d                                    ; $6394: $72
    ld a, [$f227]                                 ; $6395: $fa $27 $f2
    daa                                           ; $6398: $27
    ldh a, [rNR13]                                ; $6399: $f0 $13
    ld a, b                                       ; $639b: $78
    rst RST_38                                    ; $639c: $ff
    rrca                                          ; $639d: $0f
    rst RST_38                                    ; $639e: $ff
    rst RST_38                                    ; $639f: $ff
    inc bc                                        ; $63a0: $03
    add hl, sp                                    ; $63a1: $39

jr_009_63a2:
    pop af                                        ; $63a2: $f1
    db $fd                                        ; $63a3: $fd
    ld c, [hl]                                    ; $63a4: $4e
    ld e, a                                       ; $63a5: $5f
    db $e4                                        ; $63a6: $e4
    ld c, a                                       ; $63a7: $4f
    db $e4                                        ; $63a8: $e4
    dec c                                         ; $63a9: $0d
    ret z                                         ; $63aa: $c8

    ld e, $ff                                     ; $63ab: $1e $ff
    ldh a, [rIE]                                  ; $63ad: $f0 $ff
    rst RST_38                                    ; $63af: $ff
    jr nz, @+$01                                  ; $63b0: $20 $ff

    rra                                           ; $63b2: $1f
    rst RST_18                                    ; $63b3: $df
    pop hl                                        ; $63b4: $e1
    ei                                            ; $63b5: $fb
    sbc c                                         ; $63b6: $99
    cp e                                          ; $63b7: $bb
    and l                                         ; $63b8: $a5
    call $e743                                    ; $63b9: $cd $43 $e7
    rst RST_38                                    ; $63bc: $ff
    ccf                                           ; $63bd: $3f
    rst RST_38                                    ; $63be: $ff
    rst RST_38                                    ; $63bf: $ff
    inc b                                         ; $63c0: $04
    db $fd                                        ; $63c1: $fd
    rst RST_38                                    ; $63c2: $ff
    rst RST_38                                    ; $63c3: $ff
    add hl, de                                    ; $63c4: $19
    rst RST_38                                    ; $63c5: $ff
    ld l, d                                       ; $63c6: $6a
    di                                            ; $63c7: $f3
    sub d                                         ; $63c8: $92
    rst RST_00                                    ; $63c9: $c7
    adc h                                         ; $63ca: $8c
    cp $ff                                        ; $63cb: $fe $ff
    ldh a, [rIE]                                  ; $63cd: $f0 $ff
    rst RST_38                                    ; $63cf: $ff
    cpl                                           ; $63d0: $2f
    or d                                          ; $63d1: $b2
    rla                                           ; $63d2: $17
    ld [hl], b                                    ; $63d3: $70
    cpl                                           ; $63d4: $2f
    ldh a, [$ff2e]                                ; $63d5: $f0 $2e
    ldh [$ff59], a                                ; $63d7: $e0 $59
    ld h, e                                       ; $63d9: $63
    ld d, [hl]                                    ; $63da: $56
    adc $9f                                       ; $63db: $ce $9f
    ld hl, sp-$01                                 ; $63dd: $f8 $ff
    rst RST_38                                    ; $63df: $ff
    db $f4                                        ; $63e0: $f4
    ld c, l                                       ; $63e1: $4d
    add sp, $0f                                   ; $63e2: $e8 $0f
    db $f4                                        ; $63e4: $f4
    rrca                                          ; $63e5: $0f
    ld [hl], h                                    ; $63e6: $74
    rlca                                          ; $63e7: $07
    sbc d                                         ; $63e8: $9a
    rst RST_00                                    ; $63e9: $c7
    ld l, d                                       ; $63ea: $6a
    ld [hl], d                                    ; $63eb: $72
    ld sp, hl                                     ; $63ec: $f9
    rra                                           ; $63ed: $1f
    rst RST_38                                    ; $63ee: $ff
    rst RST_38                                    ; $63ef: $ff
    inc bc                                        ; $63f0: $03
    call $ed03                                    ; $63f1: $cd $03 $ed
    inc bc                                        ; $63f4: $03
    ld sp, hl                                     ; $63f5: $f9
    inc bc                                        ; $63f6: $03
    pop de                                        ; $63f7: $d1
    inc bc                                        ; $63f8: $03
    ret                                           ; $63f9: $c9


    inc bc                                        ; $63fa: $03
    ld a, l                                       ; $63fb: $7d
    rst RST_38                                    ; $63fc: $ff
    ld bc, rIE                                    ; $63fd: $01 $ff $ff
    rst RST_38                                    ; $6400: $ff
    nop                                           ; $6401: $00
    rst RST_38                                    ; $6402: $ff
    rst RST_38                                    ; $6403: $ff
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    inc a                                         ; $6408: $3c
    inc a                                         ; $6409: $3c
    ld l, [hl]                                    ; $640a: $6e
    ld l, [hl]                                    ; $640b: $6e
    ld l, [hl]                                    ; $640c: $6e
    ld l, [hl]                                    ; $640d: $6e
    ld l, [hl]                                    ; $640e: $6e
    ld l, [hl]                                    ; $640f: $6e
    rst RST_38                                    ; $6410: $ff
    nop                                           ; $6411: $00
    rst RST_38                                    ; $6412: $ff
    rst RST_38                                    ; $6413: $ff
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    jr jr_009_6432                                ; $6418: $18 $18

    jr c, jr_009_6454                             ; $641a: $38 $38

    jr jr_009_6436                                ; $641c: $18 $18

    jr jr_009_6438                                ; $641e: $18 $18

    rst RST_38                                    ; $6420: $ff
    nop                                           ; $6421: $00
    rst RST_38                                    ; $6422: $ff
    rst RST_38                                    ; $6423: $ff
    nop                                           ; $6424: $00
    nop                                           ; $6425: $00
    nop                                           ; $6426: $00
    nop                                           ; $6427: $00
    inc a                                         ; $6428: $3c
    inc a                                         ; $6429: $3c
    ld l, [hl]                                    ; $642a: $6e
    ld l, [hl]                                    ; $642b: $6e
    ld c, $0e                                     ; $642c: $0e $0e
    ld c, $0e                                     ; $642e: $0e $0e
    rst RST_38                                    ; $6430: $ff
    nop                                           ; $6431: $00

jr_009_6432:
    rst RST_38                                    ; $6432: $ff
    rst RST_38                                    ; $6433: $ff
    nop                                           ; $6434: $00
    nop                                           ; $6435: $00

jr_009_6436:
    nop                                           ; $6436: $00
    nop                                           ; $6437: $00

jr_009_6438:
    inc a                                         ; $6438: $3c
    inc a                                         ; $6439: $3c
    ld l, [hl]                                    ; $643a: $6e
    ld l, [hl]                                    ; $643b: $6e
    ld c, $0e                                     ; $643c: $0e $0e
    inc e                                         ; $643e: $1c
    inc e                                         ; $643f: $1c
    rst RST_38                                    ; $6440: $ff
    nop                                           ; $6441: $00
    rst RST_38                                    ; $6442: $ff
    rst RST_38                                    ; $6443: $ff
    nop                                           ; $6444: $00
    nop                                           ; $6445: $00
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    inc c                                         ; $6448: $0c
    inc c                                         ; $6449: $0c
    inc e                                         ; $644a: $1c
    inc e                                         ; $644b: $1c
    inc l                                         ; $644c: $2c
    inc l                                         ; $644d: $2c
    ld l, h                                       ; $644e: $6c
    ld l, h                                       ; $644f: $6c
    rst RST_38                                    ; $6450: $ff
    nop                                           ; $6451: $00
    rst RST_38                                    ; $6452: $ff
    rst RST_38                                    ; $6453: $ff

jr_009_6454:
    nop                                           ; $6454: $00
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    nop                                           ; $6457: $00
    ld a, [hl]                                    ; $6458: $7e
    ld a, [hl]                                    ; $6459: $7e
    ld h, b                                       ; $645a: $60
    ld h, b                                       ; $645b: $60
    ld h, b                                       ; $645c: $60
    ld h, b                                       ; $645d: $60
    ld a, h                                       ; $645e: $7c
    ld a, h                                       ; $645f: $7c
    rst RST_38                                    ; $6460: $ff
    nop                                           ; $6461: $00
    rst RST_38                                    ; $6462: $ff
    rst RST_38                                    ; $6463: $ff
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    inc a                                         ; $6468: $3c
    inc a                                         ; $6469: $3c
    ld h, b                                       ; $646a: $60
    ld h, b                                       ; $646b: $60
    ld h, b                                       ; $646c: $60
    ld h, b                                       ; $646d: $60
    ld a, h                                       ; $646e: $7c
    ld a, h                                       ; $646f: $7c
    rst RST_38                                    ; $6470: $ff
    nop                                           ; $6471: $00
    rst RST_38                                    ; $6472: $ff
    rst RST_38                                    ; $6473: $ff
    nop                                           ; $6474: $00
    nop                                           ; $6475: $00
    nop                                           ; $6476: $00
    nop                                           ; $6477: $00
    ld a, [hl]                                    ; $6478: $7e
    ld a, [hl]                                    ; $6479: $7e
    ld l, [hl]                                    ; $647a: $6e
    ld l, [hl]                                    ; $647b: $6e
    ld c, $0e                                     ; $647c: $0e $0e
    inc e                                         ; $647e: $1c
    inc e                                         ; $647f: $1c
    rst RST_38                                    ; $6480: $ff
    nop                                           ; $6481: $00
    rst RST_38                                    ; $6482: $ff
    rst RST_38                                    ; $6483: $ff
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    nop                                           ; $6486: $00
    nop                                           ; $6487: $00
    inc a                                         ; $6488: $3c
    inc a                                         ; $6489: $3c
    ld l, [hl]                                    ; $648a: $6e
    ld l, [hl]                                    ; $648b: $6e

jr_009_648c:
    ld l, [hl]                                    ; $648c: $6e
    ld l, [hl]                                    ; $648d: $6e
    inc a                                         ; $648e: $3c
    inc a                                         ; $648f: $3c
    rst RST_38                                    ; $6490: $ff
    nop                                           ; $6491: $00
    rst RST_38                                    ; $6492: $ff
    rst RST_38                                    ; $6493: $ff
    nop                                           ; $6494: $00
    nop                                           ; $6495: $00

jr_009_6496:
    nop                                           ; $6496: $00
    nop                                           ; $6497: $00
    inc a                                         ; $6498: $3c
    inc a                                         ; $6499: $3c
    ld l, [hl]                                    ; $649a: $6e
    ld l, [hl]                                    ; $649b: $6e
    ld l, [hl]                                    ; $649c: $6e
    ld l, [hl]                                    ; $649d: $6e
    ld l, [hl]                                    ; $649e: $6e
    ld l, [hl]                                    ; $649f: $6e
    rst RST_38                                    ; $64a0: $ff
    nop                                           ; $64a1: $00
    rst RST_38                                    ; $64a2: $ff
    rst RST_38                                    ; $64a3: $ff
    nop                                           ; $64a4: $00
    nop                                           ; $64a5: $00
    nop                                           ; $64a6: $00
    nop                                           ; $64a7: $00
    nop                                           ; $64a8: $00
    nop                                           ; $64a9: $00
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    nop                                           ; $64ac: $00
    nop                                           ; $64ad: $00
    nop                                           ; $64ae: $00
    nop                                           ; $64af: $00
    db $fc                                        ; $64b0: $fc
    inc bc                                        ; $64b1: $03
    ld hl, sp+$7c                                 ; $64b2: $f8 $7c
    jp $c144                                      ; $64b4: $c3 $44 $c1


    ld a, [hl]                                    ; $64b7: $7e
    add b                                         ; $64b8: $80
    ld b, c                                       ; $64b9: $41
    nop                                           ; $64ba: $00
    xor b                                         ; $64bb: $a8
    nop                                           ; $64bc: $00
    add b                                         ; $64bd: $80
    nop                                           ; $64be: $00
    add b                                         ; $64bf: $80
    adc a                                         ; $64c0: $8f
    ld [hl], b                                    ; $64c1: $70
    rlca                                          ; $64c2: $07
    adc a                                         ; $64c3: $8f
    ld h, b                                       ; $64c4: $60
    add h                                         ; $64c5: $84
    jr nc, jr_009_648c                            ; $64c6: $30 $c4

    jr nc, jr_009_6496                            ; $64c8: $30 $cc

    nop                                           ; $64ca: $00
    ld b, $00                                     ; $64cb: $06 $00
    ld bc, $2100                                  ; $64cd: $01 $00 $21
    cp [hl]                                       ; $64d0: $be
    cp [hl]                                       ; $64d1: $be
    rst RST_38                                    ; $64d2: $ff
    pop bc                                        ; $64d3: $c1
    cp $9e                                        ; $64d4: $fe $9e
    cp $c2                                        ; $64d6: $fe $c2
    rst RST_38                                    ; $64d8: $ff
    ld sp, hl                                     ; $64d9: $f9
    rst RST_38                                    ; $64da: $ff
    sbc c                                         ; $64db: $99
    cp $c2                                        ; $64dc: $fe $c2
    cp $fe                                        ; $64de: $fe $fe
    cp $fe                                        ; $64e0: $fe $fe
    cp $c2                                        ; $64e2: $fe $c2
    rst RST_38                                    ; $64e4: $ff
    sbc c                                         ; $64e5: $99
    rst RST_38                                    ; $64e6: $ff
    sbc c                                         ; $64e7: $99
    rst RST_38                                    ; $64e8: $ff
    add c                                         ; $64e9: $81
    rst RST_38                                    ; $64ea: $ff
    sbc c                                         ; $64eb: $99
    rst RST_38                                    ; $64ec: $ff
    sbc c                                         ; $64ed: $99
    and $fe                                       ; $64ee: $e6 $fe
    ld [$ffea], a                                 ; $64f0: $ea $ea $ff
    sbc l                                         ; $64f3: $9d
    rst RST_38                                    ; $64f4: $ff
    sbc l                                         ; $64f5: $9d
    rst RST_38                                    ; $64f6: $ff
    sbc l                                         ; $64f7: $9d
    rst RST_38                                    ; $64f8: $ff
    sbc l                                         ; $64f9: $9d
    cp $ca                                        ; $64fa: $fe $ca
    cp $e6                                        ; $64fc: $fe $e6
    cp d                                          ; $64fe: $ba
    cp d                                          ; $64ff: $ba

Jump_009_6500:
    ld l, [hl]                                    ; $6500: $6e
    ld l, [hl]                                    ; $6501: $6e
    ld l, [hl]                                    ; $6502: $6e
    ld l, [hl]                                    ; $6503: $6e
    ld l, [hl]                                    ; $6504: $6e
    ld l, [hl]                                    ; $6505: $6e
    inc a                                         ; $6506: $3c
    inc a                                         ; $6507: $3c
    nop                                           ; $6508: $00
    nop                                           ; $6509: $00
    nop                                           ; $650a: $00
    nop                                           ; $650b: $00
    rst RST_38                                    ; $650c: $ff
    nop                                           ; $650d: $00
    rst RST_38                                    ; $650e: $ff
    rst RST_38                                    ; $650f: $ff
    jr jr_009_652a                                ; $6510: $18 $18

    jr jr_009_652c                                ; $6512: $18 $18

    jr jr_009_652e                                ; $6514: $18 $18

    jr jr_009_6530                                ; $6516: $18 $18

    nop                                           ; $6518: $00
    nop                                           ; $6519: $00
    nop                                           ; $651a: $00
    nop                                           ; $651b: $00
    rst RST_38                                    ; $651c: $ff
    nop                                           ; $651d: $00
    rst RST_38                                    ; $651e: $ff
    rst RST_38                                    ; $651f: $ff
    inc a                                         ; $6520: $3c
    inc a                                         ; $6521: $3c
    ld h, b                                       ; $6522: $60
    ld h, b                                       ; $6523: $60
    ld h, b                                       ; $6524: $60
    ld h, b                                       ; $6525: $60
    ld a, [hl]                                    ; $6526: $7e
    ld a, [hl]                                    ; $6527: $7e
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00

jr_009_652a:
    nop                                           ; $652a: $00
    nop                                           ; $652b: $00

jr_009_652c:
    rst RST_38                                    ; $652c: $ff
    nop                                           ; $652d: $00

jr_009_652e:
    rst RST_38                                    ; $652e: $ff
    rst RST_38                                    ; $652f: $ff

jr_009_6530:
    ld c, $0e                                     ; $6530: $0e $0e
    ld c, $0e                                     ; $6532: $0e $0e
    ld l, [hl]                                    ; $6534: $6e
    ld l, [hl]                                    ; $6535: $6e
    inc a                                         ; $6536: $3c
    inc a                                         ; $6537: $3c
    nop                                           ; $6538: $00
    nop                                           ; $6539: $00
    nop                                           ; $653a: $00
    nop                                           ; $653b: $00
    rst RST_38                                    ; $653c: $ff
    nop                                           ; $653d: $00
    rst RST_38                                    ; $653e: $ff
    rst RST_38                                    ; $653f: $ff
    ld l, h                                       ; $6540: $6c
    ld l, h                                       ; $6541: $6c
    ld a, [hl]                                    ; $6542: $7e
    ld a, [hl]                                    ; $6543: $7e
    inc c                                         ; $6544: $0c
    inc c                                         ; $6545: $0c
    inc c                                         ; $6546: $0c
    inc c                                         ; $6547: $0c
    nop                                           ; $6548: $00
    nop                                           ; $6549: $00
    nop                                           ; $654a: $00
    nop                                           ; $654b: $00
    rst RST_38                                    ; $654c: $ff
    nop                                           ; $654d: $00
    rst RST_38                                    ; $654e: $ff
    rst RST_38                                    ; $654f: $ff
    ld c, $0e                                     ; $6550: $0e $0e
    ld c, $0e                                     ; $6552: $0e $0e
    ld l, [hl]                                    ; $6554: $6e
    ld l, [hl]                                    ; $6555: $6e
    inc a                                         ; $6556: $3c
    inc a                                         ; $6557: $3c
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    nop                                           ; $655a: $00
    nop                                           ; $655b: $00
    rst RST_38                                    ; $655c: $ff
    nop                                           ; $655d: $00
    rst RST_38                                    ; $655e: $ff
    rst RST_38                                    ; $655f: $ff
    ld l, [hl]                                    ; $6560: $6e
    ld l, [hl]                                    ; $6561: $6e
    ld l, [hl]                                    ; $6562: $6e
    ld l, [hl]                                    ; $6563: $6e
    ld l, [hl]                                    ; $6564: $6e
    ld l, [hl]                                    ; $6565: $6e
    inc a                                         ; $6566: $3c
    inc a                                         ; $6567: $3c
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    nop                                           ; $656a: $00
    nop                                           ; $656b: $00
    rst RST_38                                    ; $656c: $ff
    nop                                           ; $656d: $00
    rst RST_38                                    ; $656e: $ff
    rst RST_38                                    ; $656f: $ff
    inc e                                         ; $6570: $1c
    inc e                                         ; $6571: $1c
    jr c, jr_009_65ac                             ; $6572: $38 $38

    jr c, jr_009_65ae                             ; $6574: $38 $38

    jr c, jr_009_65b0                             ; $6576: $38 $38

    nop                                           ; $6578: $00
    nop                                           ; $6579: $00
    nop                                           ; $657a: $00
    nop                                           ; $657b: $00
    rst RST_38                                    ; $657c: $ff
    nop                                           ; $657d: $00
    rst RST_38                                    ; $657e: $ff
    rst RST_38                                    ; $657f: $ff
    ld l, [hl]                                    ; $6580: $6e
    ld l, [hl]                                    ; $6581: $6e
    ld l, [hl]                                    ; $6582: $6e
    ld l, [hl]                                    ; $6583: $6e
    ld l, [hl]                                    ; $6584: $6e

jr_009_6585:
    ld l, [hl]                                    ; $6585: $6e
    inc a                                         ; $6586: $3c
    inc a                                         ; $6587: $3c
    nop                                           ; $6588: $00
    nop                                           ; $6589: $00
    nop                                           ; $658a: $00
    nop                                           ; $658b: $00
    rst RST_38                                    ; $658c: $ff
    nop                                           ; $658d: $00
    rst RST_38                                    ; $658e: $ff
    rst RST_38                                    ; $658f: $ff
    ld a, $3e                                     ; $6590: $3e $3e
    ld c, $0e                                     ; $6592: $0e $0e
    ld c, $0e                                     ; $6594: $0e $0e
    inc a                                         ; $6596: $3c
    inc a                                         ; $6597: $3c
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    nop                                           ; $659a: $00
    nop                                           ; $659b: $00
    rst RST_38                                    ; $659c: $ff
    nop                                           ; $659d: $00
    rst RST_38                                    ; $659e: $ff
    rst RST_38                                    ; $659f: $ff
    nop                                           ; $65a0: $00
    nop                                           ; $65a1: $00
    nop                                           ; $65a2: $00
    nop                                           ; $65a3: $00
    nop                                           ; $65a4: $00
    nop                                           ; $65a5: $00
    nop                                           ; $65a6: $00
    nop                                           ; $65a7: $00
    nop                                           ; $65a8: $00
    nop                                           ; $65a9: $00
    nop                                           ; $65aa: $00
    nop                                           ; $65ab: $00

jr_009_65ac:
    rst RST_38                                    ; $65ac: $ff
    nop                                           ; $65ad: $00

jr_009_65ae:
    rst RST_38                                    ; $65ae: $ff
    rst RST_38                                    ; $65af: $ff

jr_009_65b0:
    nop                                           ; $65b0: $00
    add b                                         ; $65b1: $80
    add b                                         ; $65b2: $80
    ld b, b                                       ; $65b3: $40
    ret nz                                        ; $65b4: $c0

    ld a, a                                       ; $65b5: $7f
    pop bc                                        ; $65b6: $c1
    ld c, b                                       ; $65b7: $48
    ret nz                                        ; $65b8: $c0

    ld b, a                                       ; $65b9: $47
    ret nz                                        ; $65ba: $c0

    ld b, c                                       ; $65bb: $41
    rst RST_38                                    ; $65bc: $ff
    nop                                           ; $65bd: $00
    rst RST_38                                    ; $65be: $ff
    rst RST_38                                    ; $65bf: $ff
    jr c, jr_009_6603                             ; $65c0: $38 $41

    jr c, jr_009_6585                             ; $65c2: $38 $c1

    db $10                                        ; $65c4: $10
    ld [hl+], a                                   ; $65c5: $22
    ldh [rDIV], a                                 ; $65c6: $e0 $04
    ld b, b                                       ; $65c8: $40
    ld [$0860], sp                                ; $65c9: $08 $60 $08
    rst RST_38                                    ; $65cc: $ff
    nop                                           ; $65cd: $00
    rst RST_38                                    ; $65ce: $ff
    rst RST_38                                    ; $65cf: $ff
    ld a, [hl]                                    ; $65d0: $7e
    cp $ff                                        ; $65d1: $fe $ff
    add c                                         ; $65d3: $81
    cp $9e                                        ; $65d4: $fe $9e
    cp $86                                        ; $65d6: $fe $86
    cp $9e                                        ; $65d8: $fe $9e
    cp $9e                                        ; $65da: $fe $9e
    rst RST_38                                    ; $65dc: $ff
    add c                                         ; $65dd: $81
    cp $fe                                        ; $65de: $fe $fe
    cp $fe                                        ; $65e0: $fe $fe
    cp $82                                        ; $65e2: $fe $82
    rst RST_38                                    ; $65e4: $ff
    sbc c                                         ; $65e5: $99
    rst RST_38                                    ; $65e6: $ff
    sbc c                                         ; $65e7: $99
    rst RST_38                                    ; $65e8: $ff
    sbc c                                         ; $65e9: $99
    rst RST_38                                    ; $65ea: $ff
    sbc c                                         ; $65eb: $99
    cp $82                                        ; $65ec: $fe $82
    cp $fe                                        ; $65ee: $fe $fe
    cp [hl]                                       ; $65f0: $be
    cp [hl]                                       ; $65f1: $be
    cp $c2                                        ; $65f2: $fe $c2
    rst RST_38                                    ; $65f4: $ff
    sbc c                                         ; $65f5: $99
    rst RST_38                                    ; $65f6: $ff

jr_009_65f7:
    sbc c                                         ; $65f7: $99
    rst RST_38                                    ; $65f8: $ff
    add c                                         ; $65f9: $81
    rst RST_38                                    ; $65fa: $ff
    sbc c                                         ; $65fb: $99
    rst RST_38                                    ; $65fc: $ff
    sbc c                                         ; $65fd: $99
    or $f6                                        ; $65fe: $f6 $f6
    rst RST_38                                    ; $6600: $ff
    nop                                           ; $6601: $00
    rst RST_38                                    ; $6602: $ff

jr_009_6603:
    rst RST_38                                    ; $6603: $ff
    nop                                           ; $6604: $00
    db $db                                        ; $6605: $db
    inc a                                         ; $6606: $3c
    ld a, a                                       ; $6607: $7f
    ld a, [hl]                                    ; $6608: $7e
    jp $91ff                                      ; $6609: $c3 $ff $91


    rst RST_38                                    ; $660c: $ff
    sub c                                         ; $660d: $91
    rst RST_38                                    ; $660e: $ff
    sub c                                         ; $660f: $91
    rst RST_38                                    ; $6610: $ff
    nop                                           ; $6611: $00
    rst RST_38                                    ; $6612: $ff
    rst RST_38                                    ; $6613: $ff
    nop                                           ; $6614: $00
    adc [hl]                                      ; $6615: $8e
    jr jr_009_65f7                                ; $6616: $18 $df

    inc a                                         ; $6618: $3c
    rst RST_20                                    ; $6619: $e7
    ld a, h                                       ; $661a: $7c
    add $3c                                       ; $661b: $c6 $3c
    rst RST_20                                    ; $661d: $e7
    inc a                                         ; $661e: $3c
    rst RST_20                                    ; $661f: $e7
    rst RST_38                                    ; $6620: $ff
    nop                                           ; $6621: $00
    rst RST_38                                    ; $6622: $ff
    rst RST_38                                    ; $6623: $ff
    nop                                           ; $6624: $00
    adc [hl]                                      ; $6625: $8e
    inc a                                         ; $6626: $3c
    rst RST_38                                    ; $6627: $ff
    ld a, [hl]                                    ; $6628: $7e
    jp $91ff                                      ; $6629: $c3 $ff $91


    ld a, a                                       ; $662c: $7f
    pop af                                        ; $662d: $f1
    ccf                                           ; $662e: $3f
    pop af                                        ; $662f: $f1
    rst RST_38                                    ; $6630: $ff
    nop                                           ; $6631: $00
    rst RST_38                                    ; $6632: $ff
    rst RST_38                                    ; $6633: $ff
    nop                                           ; $6634: $00
    sbc e                                         ; $6635: $9b
    inc a                                         ; $6636: $3c
    ld a, h                                       ; $6637: $7c
    ld a, [hl]                                    ; $6638: $7e
    ld b, d                                       ; $6639: $42
    rst RST_38                                    ; $663a: $ff
    sub c                                         ; $663b: $91
    ld a, a                                       ; $663c: $7f
    ld [hl], c                                    ; $663d: $71
    ld a, $a2                                     ; $663e: $3e $a2
    rst RST_38                                    ; $6640: $ff
    nop                                           ; $6641: $00
    rst RST_38                                    ; $6642: $ff
    rst RST_38                                    ; $6643: $ff
    nop                                           ; $6644: $00
    db $db                                        ; $6645: $db
    inc c                                         ; $6646: $0c
    ld a, a                                       ; $6647: $7f
    ld e, $f3                                     ; $6648: $1e $f3
    ld a, $e2                                     ; $664a: $3e $e2
    ld a, [hl]                                    ; $664c: $7e
    jp nc, $93fe                                  ; $664d: $d2 $fe $93

    rst RST_38                                    ; $6650: $ff
    nop                                           ; $6651: $00
    rst RST_38                                    ; $6652: $ff
    rst RST_38                                    ; $6653: $ff
    nop                                           ; $6654: $00
    adc [hl]                                      ; $6655: $8e
    ld a, [hl]                                    ; $6656: $7e
    rst RST_38                                    ; $6657: $ff
    rst RST_38                                    ; $6658: $ff
    add c                                         ; $6659: $81
    cp $9e                                        ; $665a: $fe $9e
    cp $9f                                        ; $665c: $fe $9f
    rst RST_38                                    ; $665e: $ff
    add e                                         ; $665f: $83
    rst RST_38                                    ; $6660: $ff
    nop                                           ; $6661: $00
    rst RST_38                                    ; $6662: $ff
    rst RST_38                                    ; $6663: $ff
    nop                                           ; $6664: $00
    ld e, a                                       ; $6665: $5f
    inc a                                         ; $6666: $3c
    rst RST_38                                    ; $6667: $ff
    ld a, [hl]                                    ; $6668: $7e
    jp $9cfc                                      ; $6669: $c3 $fc $9c


    db $fc                                        ; $666c: $fc
    sbc a                                         ; $666d: $9f
    cp $83                                        ; $666e: $fe $83
    rst RST_38                                    ; $6670: $ff
    nop                                           ; $6671: $00
    rst RST_38                                    ; $6672: $ff
    rst RST_38                                    ; $6673: $ff
    nop                                           ; $6674: $00
    sbc e                                         ; $6675: $9b
    ld a, [hl]                                    ; $6676: $7e
    ld a, [hl]                                    ; $6677: $7e
    rst RST_38                                    ; $6678: $ff
    add c                                         ; $6679: $81
    rst RST_38                                    ; $667a: $ff
    sub c                                         ; $667b: $91
    rst RST_38                                    ; $667c: $ff
    pop af                                        ; $667d: $f1
    ld a, $a2                                     ; $667e: $3e $a2
    rst RST_38                                    ; $6680: $ff
    nop                                           ; $6681: $00
    rst RST_38                                    ; $6682: $ff
    rst RST_38                                    ; $6683: $ff
    nop                                           ; $6684: $00
    adc [hl]                                      ; $6685: $8e
    inc a                                         ; $6686: $3c
    rst RST_38                                    ; $6687: $ff
    ld a, [hl]                                    ; $6688: $7e
    jp $91ff                                      ; $6689: $c3 $ff $91


    rst RST_38                                    ; $668c: $ff
    sub c                                         ; $668d: $91
    ld a, [hl]                                    ; $668e: $7e
    jp Jump_000_00ff                              ; $668f: $c3 $ff $00


    rst RST_38                                    ; $6692: $ff
    rst RST_38                                    ; $6693: $ff
    nop                                           ; $6694: $00
    ld e, a                                       ; $6695: $5f
    inc a                                         ; $6696: $3c
    rst RST_38                                    ; $6697: $ff
    ld a, [hl]                                    ; $6698: $7e
    jp $91ff                                      ; $6699: $c3 $ff $91


    rst RST_38                                    ; $669c: $ff
    sub c                                         ; $669d: $91
    rst RST_38                                    ; $669e: $ff
    sub c                                         ; $669f: $91
    rst RST_38                                    ; $66a0: $ff
    nop                                           ; $66a1: $00
    rst RST_38                                    ; $66a2: $ff
    rst RST_38                                    ; $66a3: $ff
    nop                                           ; $66a4: $00
    sub d                                         ; $66a5: $92
    nop                                           ; $66a6: $00
    ld e, h                                       ; $66a7: $5c
    nop                                           ; $66a8: $00
    db $fd                                        ; $66a9: $fd
    nop                                           ; $66aa: $00
    ld [hl], l                                    ; $66ab: $75
    nop                                           ; $66ac: $00
    ld e, l                                       ; $66ad: $5d
    nop                                           ; $66ae: $00
    sbc a                                         ; $66af: $9f
    rst RST_38                                    ; $66b0: $ff
    inc bc                                        ; $66b1: $03
    db $fc                                        ; $66b2: $fc
    ld a, a                                       ; $66b3: $7f
    rst RST_00                                    ; $66b4: $c7
    ld e, h                                       ; $66b5: $5c
    rst RST_38                                    ; $66b6: $ff
    ld a, [hl]                                    ; $66b7: $7e
    pop bc                                        ; $66b8: $c1
    ld b, c                                       ; $66b9: $41
    xor b                                         ; $66ba: $a8
    xor b                                         ; $66bb: $a8
    add b                                         ; $66bc: $80
    add b                                         ; $66bd: $80
    add b                                         ; $66be: $80
    add b                                         ; $66bf: $80
    rst RST_38                                    ; $66c0: $ff
    ld [hl], b                                    ; $66c1: $70
    adc a                                         ; $66c2: $8f
    rst RST_38                                    ; $66c3: $ff
    db $e4                                        ; $66c4: $e4
    adc a                                         ; $66c5: $8f
    db $f4                                        ; $66c6: $f4
    call z, $ccfc                                 ; $66c7: $cc $fc $cc
    ld b, $ff                                     ; $66ca: $06 $ff
    ld bc, $21ff                                  ; $66cc: $01 $ff $21
    rst RST_20                                    ; $66cf: $e7
    cp $fe                                        ; $66d0: $fe $fe
    rst RST_38                                    ; $66d2: $ff
    add c                                         ; $66d3: $81
    cp $e6                                        ; $66d4: $fe $e6
    cp $e6                                        ; $66d6: $fe $e6
    cp [hl]                                       ; $66d8: $be
    and $fe                                       ; $66d9: $e6 $fe
    and $be                                       ; $66db: $e6 $be
    and $de                                       ; $66dd: $e6 $de
    cp $7e                                        ; $66df: $fe $7e
    ld a, [hl]                                    ; $66e1: $7e
    cp $c2                                        ; $66e2: $fe $c2
    rst RST_38                                    ; $66e4: $ff
    sbc c                                         ; $66e5: $99
    rst RST_38                                    ; $66e6: $ff
    sbc c                                         ; $66e7: $99
    rst RST_38                                    ; $66e8: $ff
    add c                                         ; $66e9: $81
    rst RST_38                                    ; $66ea: $ff
    sbc c                                         ; $66eb: $99
    rst RST_38                                    ; $66ec: $ff
    sbc c                                         ; $66ed: $99
    xor $ee                                       ; $66ee: $ee $ee
    nop                                           ; $66f0: $00
    nop                                           ; $66f1: $00
    nop                                           ; $66f2: $00
    nop                                           ; $66f3: $00
    nop                                           ; $66f4: $00
    nop                                           ; $66f5: $00
    nop                                           ; $66f6: $00
    nop                                           ; $66f7: $00
    nop                                           ; $66f8: $00
    nop                                           ; $66f9: $00
    nop                                           ; $66fa: $00
    nop                                           ; $66fb: $00
    nop                                           ; $66fc: $00
    nop                                           ; $66fd: $00
    nop                                           ; $66fe: $00

Jump_009_66ff:
    nop                                           ; $66ff: $00
    rst RST_38                                    ; $6700: $ff
    sub c                                         ; $6701: $91
    rst RST_38                                    ; $6702: $ff
    sub c                                         ; $6703: $91
    rst RST_38                                    ; $6704: $ff
    sub c                                         ; $6705: $91
    ld a, [hl]                                    ; $6706: $7e
    jp $fd3c                                      ; $6707: $c3 $3c $fd


    nop                                           ; $670a: $00
    rst RST_38                                    ; $670b: $ff
    rst RST_38                                    ; $670c: $ff
    nop                                           ; $670d: $00
    rst RST_38                                    ; $670e: $ff
    rst RST_38                                    ; $670f: $ff
    inc a                                         ; $6710: $3c
    and [hl]                                      ; $6711: $a6
    inc a                                         ; $6712: $3c
    ld h, l                                       ; $6713: $65
    inc a                                         ; $6714: $3c
    rst RST_20                                    ; $6715: $e7
    inc a                                         ; $6716: $3c
    rst RST_20                                    ; $6717: $e7
    jr jr_009_6733                                ; $6718: $18 $19

    nop                                           ; $671a: $00
    rst RST_38                                    ; $671b: $ff
    rst RST_38                                    ; $671c: $ff
    nop                                           ; $671d: $00
    rst RST_38                                    ; $671e: $ff
    rst RST_38                                    ; $671f: $ff
    ld a, [hl]                                    ; $6720: $7e
    jp nz, $9dfc                                  ; $6721: $c2 $fc $9d

    cp $9f                                        ; $6724: $fe $9f
    rst RST_38                                    ; $6726: $ff
    add c                                         ; $6727: $81
    ld a, [hl]                                    ; $6728: $7e
    ld a, a                                       ; $6729: $7f
    nop                                           ; $672a: $00
    rst RST_38                                    ; $672b: $ff
    rst RST_38                                    ; $672c: $ff
    nop                                           ; $672d: $00
    rst RST_38                                    ; $672e: $ff
    rst RST_38                                    ; $672f: $ff
    rra                                           ; $6730: $1f
    pop de                                        ; $6731: $d1
    ld a, a                                       ; $6732: $7f

jr_009_6733:
    pop af                                        ; $6733: $f1
    rst RST_38                                    ; $6734: $ff
    sub c                                         ; $6735: $91
    ld a, [hl]                                    ; $6736: $7e
    ld b, d                                       ; $6737: $42
    inc a                                         ; $6738: $3c
    ld a, a                                       ; $6739: $7f
    nop                                           ; $673a: $00
    rst RST_38                                    ; $673b: $ff
    rst RST_38                                    ; $673c: $ff
    nop                                           ; $673d: $00
    rst RST_38                                    ; $673e: $ff
    rst RST_38                                    ; $673f: $ff
    rst RST_38                                    ; $6740: $ff
    sub e                                         ; $6741: $93
    rst RST_38                                    ; $6742: $ff
    add c                                         ; $6743: $81
    ld a, a                                       ; $6744: $7f
    di                                            ; $6745: $f3
    ld e, $d3                                     ; $6746: $1e $d3
    inc c                                         ; $6748: $0c
    call rP1                                      ; $6749: $cd $00 $ff
    rst RST_38                                    ; $674c: $ff
    nop                                           ; $674d: $00
    rst RST_38                                    ; $674e: $ff
    rst RST_38                                    ; $674f: $ff
    ld a, a                                       ; $6750: $7f
    pop af                                        ; $6751: $f1
    ld a, a                                       ; $6752: $7f
    ld [hl], c                                    ; $6753: $71
    rst RST_38                                    ; $6754: $ff
    sub c                                         ; $6755: $91
    ld a, [hl]                                    ; $6756: $7e
    jp Jump_000_3d3c                              ; $6757: $c3 $3c $3d


    nop                                           ; $675a: $00
    rst RST_38                                    ; $675b: $ff
    rst RST_38                                    ; $675c: $ff
    nop                                           ; $675d: $00
    rst RST_38                                    ; $675e: $ff
    rst RST_38                                    ; $675f: $ff
    rst RST_38                                    ; $6760: $ff
    sub c                                         ; $6761: $91
    rst RST_38                                    ; $6762: $ff
    sub c                                         ; $6763: $91
    rst RST_38                                    ; $6764: $ff
    sub c                                         ; $6765: $91
    ld a, [hl]                                    ; $6766: $7e
    ld b, e                                       ; $6767: $43
    inc a                                         ; $6768: $3c
    db $fd                                        ; $6769: $fd
    nop                                           ; $676a: $00
    rst RST_38                                    ; $676b: $ff
    rst RST_38                                    ; $676c: $ff
    nop                                           ; $676d: $00
    rst RST_38                                    ; $676e: $ff
    rst RST_38                                    ; $676f: $ff
    ld a, $e2                                     ; $6770: $3e $e2
    ld a, h                                       ; $6772: $7c
    push bc                                       ; $6773: $c5
    ld a, h                                       ; $6774: $7c
    ld b, a                                       ; $6775: $47
    ld a, h                                       ; $6776: $7c
    ld b, [hl]                                    ; $6777: $46
    jr c, jr_009_67f9                             ; $6778: $38 $7f

    nop                                           ; $677a: $00
    rst RST_38                                    ; $677b: $ff
    rst RST_38                                    ; $677c: $ff
    nop                                           ; $677d: $00
    rst RST_38                                    ; $677e: $ff
    rst RST_38                                    ; $677f: $ff
    rst RST_38                                    ; $6780: $ff
    sub c                                         ; $6781: $91
    rst RST_38                                    ; $6782: $ff
    sub c                                         ; $6783: $91
    rst RST_38                                    ; $6784: $ff
    sub c                                         ; $6785: $91
    ld a, [hl]                                    ; $6786: $7e
    jp Jump_000_3d3c                              ; $6787: $c3 $3c $3d


    nop                                           ; $678a: $00
    rst RST_38                                    ; $678b: $ff
    rst RST_38                                    ; $678c: $ff
    nop                                           ; $678d: $00
    rst RST_38                                    ; $678e: $ff
    rst RST_38                                    ; $678f: $ff
    ld a, a                                       ; $6790: $7f
    pop bc                                        ; $6791: $c1
    ccf                                           ; $6792: $3f
    pop af                                        ; $6793: $f1
    ccf                                           ; $6794: $3f
    pop af                                        ; $6795: $f1
    ld a, [hl]                                    ; $6796: $7e
    ld b, e                                       ; $6797: $43
    inc a                                         ; $6798: $3c
    db $fd                                        ; $6799: $fd
    nop                                           ; $679a: $00
    rst RST_38                                    ; $679b: $ff
    rst RST_38                                    ; $679c: $ff
    nop                                           ; $679d: $00
    rst RST_38                                    ; $679e: $ff
    rst RST_38                                    ; $679f: $ff
    nop                                           ; $67a0: $00
    jp c, $ed00                                   ; $67a1: $da $00 $ed

    nop                                           ; $67a4: $00
    ld a, c                                       ; $67a5: $79
    nop                                           ; $67a6: $00
    dec e                                         ; $67a7: $1d
    nop                                           ; $67a8: $00
    ld h, a                                       ; $67a9: $67
    nop                                           ; $67aa: $00
    rst RST_38                                    ; $67ab: $ff
    rst RST_38                                    ; $67ac: $ff
    nop                                           ; $67ad: $00
    rst RST_38                                    ; $67ae: $ff
    rst RST_38                                    ; $67af: $ff
    add b                                         ; $67b0: $80
    pop bc                                        ; $67b1: $c1
    ret nz                                        ; $67b2: $c0

    ld a, a                                       ; $67b3: $7f
    rst RST_38                                    ; $67b4: $ff
    ld a, a                                       ; $67b5: $7f
    ret                                           ; $67b6: $c9


    ld e, b                                       ; $67b7: $58
    rst RST_00                                    ; $67b8: $c7
    ld h, a                                       ; $67b9: $67
    pop bc                                        ; $67ba: $c1
    ld a, a                                       ; $67bb: $7f
    rst RST_38                                    ; $67bc: $ff
    nop                                           ; $67bd: $00
    rst RST_38                                    ; $67be: $ff
    rst RST_38                                    ; $67bf: $ff
    ld a, c                                       ; $67c0: $79
    jp $c3b9                                      ; $67c1: $c3 $b9 $c3


    ld [de], a                                    ; $67c4: $12
    daa                                           ; $67c5: $27
    db $e4                                        ; $67c6: $e4
    dec c                                         ; $67c7: $0d
    ld c, b                                       ; $67c8: $48
    sbc c                                         ; $67c9: $99
    ld l, b                                       ; $67ca: $68
    rrca                                          ; $67cb: $0f

Call_009_67cc:
    rst RST_38                                    ; $67cc: $ff
    nop                                           ; $67cd: $00
    rst RST_38                                    ; $67ce: $ff
    rst RST_38                                    ; $67cf: $ff
    sbc d                                         ; $67d0: $9a
    sbc d                                         ; $67d1: $9a
    cp $e6                                        ; $67d2: $fe $e6
    cp $c6                                        ; $67d4: $fe $c6
    cp [hl]                                       ; $67d6: $be
    and [hl]                                      ; $67d7: $a6
    cp $e6                                        ; $67d8: $fe $e6
    cp [hl]                                       ; $67da: $be
    and [hl]                                      ; $67db: $a6
    cp [hl]                                       ; $67dc: $be
    and [hl]                                      ; $67dd: $a6
    sbc $de                                       ; $67de: $de $de
    cp [hl]                                       ; $67e0: $be
    cp [hl]                                       ; $67e1: $be
    cp $c2                                        ; $67e2: $fe $c2
    rst RST_38                                    ; $67e4: $ff
    sbc c                                         ; $67e5: $99
    rst RST_38                                    ; $67e6: $ff
    ld sp, hl                                     ; $67e7: $f9
    cp $c2                                        ; $67e8: $fe $c2
    cp $9e                                        ; $67ea: $fe $9e
    rst RST_38                                    ; $67ec: $ff
    add c                                         ; $67ed: $81
    cp $fe                                        ; $67ee: $fe $fe
    cp [hl]                                       ; $67f0: $be
    cp [hl]                                       ; $67f1: $be
    cp $c2                                        ; $67f2: $fe $c2
    rst RST_38                                    ; $67f4: $ff
    sbc c                                         ; $67f5: $99
    cp $f2                                        ; $67f6: $fe $f2
    rst RST_38                                    ; $67f8: $ff

jr_009_67f9:
    ld sp, hl                                     ; $67f9: $f9
    rst RST_38                                    ; $67fa: $ff
    sbc c                                         ; $67fb: $99
    cp $c2                                        ; $67fc: $fe $c2
    cp $fe                                        ; $67fe: $fe $fe
    cp $00                                        ; $6800: $fe $00
    db $fd                                        ; $6802: $fd
    nop                                           ; $6803: $00
    ld hl, sp+$00                                 ; $6804: $f8 $00
    rst RST_30                                    ; $6806: $f7
    nop                                           ; $6807: $00
    ldh [rP1], a                                  ; $6808: $e0 $00
    db $dd                                        ; $680a: $dd
    nop                                           ; $680b: $00
    add b                                         ; $680c: $80
    nop                                           ; $680d: $00
    ld [hl], a                                    ; $680e: $77
    nop                                           ; $680f: $00
    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    db $dd                                        ; $6812: $dd
    nop                                           ; $6813: $00
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    ld [hl], a                                    ; $6816: $77
    nop                                           ; $6817: $00
    nop                                           ; $6818: $00
    nop                                           ; $6819: $00
    db $dd                                        ; $681a: $dd
    nop                                           ; $681b: $00
    nop                                           ; $681c: $00
    nop                                           ; $681d: $00
    ld [hl], a                                    ; $681e: $77
    nop                                           ; $681f: $00
    jr @+$01                                      ; $6820: $18 $ff

    inc a                                         ; $6822: $3c
    ld h, h                                       ; $6823: $64
    inc a                                         ; $6824: $3c
    rst RST_20                                    ; $6825: $e7
    jr @+$1b                                      ; $6826: $18 $19

    jr @+$01                                      ; $6828: $18 $ff

    inc a                                         ; $682a: $3c
    ld h, h                                       ; $682b: $64
    inc a                                         ; $682c: $3c
    rst RST_20                                    ; $682d: $e7
    jr jr_009_6849                                ; $682e: $18 $19

    ld a, a                                       ; $6830: $7f
    add b                                         ; $6831: $80
    ccf                                           ; $6832: $3f
    ld b, b                                       ; $6833: $40
    rra                                           ; $6834: $1f
    ldh [rIF], a                                  ; $6835: $e0 $0f
    db $10                                        ; $6837: $10
    rlca                                          ; $6838: $07
    ld hl, sp+$03                                 ; $6839: $f8 $03
    ld b, h                                       ; $683b: $44
    ld bc, $00fe                                  ; $683c: $01 $fe $00
    ld de, $07ff                                  ; $683f: $11 $ff $07
    ld sp, hl                                     ; $6842: $f9
    ld [$08f8], sp                                ; $6843: $08 $f8 $08
    ld hl, sp+$0c                                 ; $6846: $f8 $0c
    db $fc                                        ; $6848: $fc

jr_009_6849:
    ld a, a                                       ; $6849: $7f
    cp e                                          ; $684a: $bb
    add b                                         ; $684b: $80
    add b                                         ; $684c: $80
    add b                                         ; $684d: $80
    add b                                         ; $684e: $80
    xor h                                         ; $684f: $ac
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    nop                                           ; $6852: $00
    nop                                           ; $6853: $00
    nop                                           ; $6854: $00
    nop                                           ; $6855: $00
    nop                                           ; $6856: $00
    nop                                           ; $6857: $00
    nop                                           ; $6858: $00
    nop                                           ; $6859: $00
    nop                                           ; $685a: $00
    nop                                           ; $685b: $00
    nop                                           ; $685c: $00
    nop                                           ; $685d: $00
    nop                                           ; $685e: $00
    nop                                           ; $685f: $00
    nop                                           ; $6860: $00
    nop                                           ; $6861: $00
    nop                                           ; $6862: $00
    nop                                           ; $6863: $00
    nop                                           ; $6864: $00
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    nop                                           ; $6867: $00
    nop                                           ; $6868: $00
    nop                                           ; $6869: $00
    nop                                           ; $686a: $00
    nop                                           ; $686b: $00
    nop                                           ; $686c: $00
    nop                                           ; $686d: $00
    nop                                           ; $686e: $00
    nop                                           ; $686f: $00
    nop                                           ; $6870: $00
    nop                                           ; $6871: $00
    nop                                           ; $6872: $00
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    nop                                           ; $6875: $00
    nop                                           ; $6876: $00
    nop                                           ; $6877: $00
    nop                                           ; $6878: $00
    nop                                           ; $6879: $00
    nop                                           ; $687a: $00
    nop                                           ; $687b: $00
    nop                                           ; $687c: $00
    nop                                           ; $687d: $00
    nop                                           ; $687e: $00
    nop                                           ; $687f: $00
    nop                                           ; $6880: $00
    rst RST_38                                    ; $6881: $ff
    nop                                           ; $6882: $00
    rst RST_38                                    ; $6883: $ff
    nop                                           ; $6884: $00
    rst RST_38                                    ; $6885: $ff
    nop                                           ; $6886: $00
    rst RST_38                                    ; $6887: $ff
    ld bc, $03ff                                  ; $6888: $01 $ff $03
    cp $03                                        ; $688b: $fe $03
    cp $03                                        ; $688d: $fe $03
    cp $00                                        ; $688f: $fe $00
    rst RST_38                                    ; $6891: $ff
    nop                                           ; $6892: $00
    rst RST_38                                    ; $6893: $ff
    nop                                           ; $6894: $00
    rst RST_38                                    ; $6895: $ff
    nop                                           ; $6896: $00
    rst RST_38                                    ; $6897: $ff
    ldh a, [rIE]                                  ; $6898: $f0 $ff
    ld sp, hl                                     ; $689a: $f9
    rrca                                          ; $689b: $0f
    rst RST_38                                    ; $689c: $ff
    ld h, [hl]                                    ; $689d: $66
    rst RST_38                                    ; $689e: $ff
    ld h, [hl]                                    ; $689f: $66
    nop                                           ; $68a0: $00
    rst RST_38                                    ; $68a1: $ff
    nop                                           ; $68a2: $00
    rst RST_38                                    ; $68a3: $ff
    nop                                           ; $68a4: $00
    rst RST_38                                    ; $68a5: $ff
    nop                                           ; $68a6: $00
    rst RST_38                                    ; $68a7: $ff
    pop af                                        ; $68a8: $f1
    rst RST_38                                    ; $68a9: $ff
    ei                                            ; $68aa: $fb
    ld c, $ff                                     ; $68ab: $0e $ff
    ld h, [hl]                                    ; $68ad: $66
    rst RST_38                                    ; $68ae: $ff
    ld h, [hl]                                    ; $68af: $66
    nop                                           ; $68b0: $00
    rst RST_38                                    ; $68b1: $ff
    nop                                           ; $68b2: $00
    rst RST_38                                    ; $68b3: $ff
    nop                                           ; $68b4: $00
    rst RST_38                                    ; $68b5: $ff
    nop                                           ; $68b6: $00
    rst RST_38                                    ; $68b7: $ff
    sbc c                                         ; $68b8: $99
    rst RST_38                                    ; $68b9: $ff
    rst RST_38                                    ; $68ba: $ff
    ld h, [hl]                                    ; $68bb: $66
    rst RST_38                                    ; $68bc: $ff
    ld h, $ff                                     ; $68bd: $26 $ff
    ld b, $00                                     ; $68bf: $06 $00
    rst RST_38                                    ; $68c1: $ff
    nop                                           ; $68c2: $00
    rst RST_38                                    ; $68c3: $ff
    nop                                           ; $68c4: $00
    rst RST_38                                    ; $68c5: $ff
    nop                                           ; $68c6: $00
    rst RST_38                                    ; $68c7: $ff
    sbc c                                         ; $68c8: $99
    rst RST_38                                    ; $68c9: $ff
    rst RST_38                                    ; $68ca: $ff
    ld h, [hl]                                    ; $68cb: $66
    ei                                            ; $68cc: $fb
    ld c, [hl]                                    ; $68cd: $4e
    di                                            ; $68ce: $f3
    ld e, $00                                     ; $68cf: $1e $00
    rst RST_38                                    ; $68d1: $ff
    nop                                           ; $68d2: $00
    rst RST_38                                    ; $68d3: $ff
    nop                                           ; $68d4: $00
    rst RST_38                                    ; $68d5: $ff
    nop                                           ; $68d6: $00
    rst RST_38                                    ; $68d7: $ff
    sbc c                                         ; $68d8: $99
    rst RST_38                                    ; $68d9: $ff
    rst RST_38                                    ; $68da: $ff
    ld h, [hl]                                    ; $68db: $66
    rst RST_38                                    ; $68dc: $ff
    ld h, d                                       ; $68dd: $62
    rst RST_38                                    ; $68de: $ff
    ld h, b                                       ; $68df: $60
    nop                                           ; $68e0: $00
    rst RST_38                                    ; $68e1: $ff
    nop                                           ; $68e2: $00
    rst RST_38                                    ; $68e3: $ff
    nop                                           ; $68e4: $00
    rst RST_38                                    ; $68e5: $ff
    nop                                           ; $68e6: $00
    rst RST_38                                    ; $68e7: $ff
    adc a                                         ; $68e8: $8f
    rst RST_38                                    ; $68e9: $ff
    rst RST_18                                    ; $68ea: $df
    ld [hl], b                                    ; $68eb: $70
    rst RST_38                                    ; $68ec: $ff
    ld h, [hl]                                    ; $68ed: $66
    rst RST_38                                    ; $68ee: $ff
    ld h, a                                       ; $68ef: $67
    nop                                           ; $68f0: $00
    rst RST_38                                    ; $68f1: $ff
    nop                                           ; $68f2: $00
    rst RST_38                                    ; $68f3: $ff
    nop                                           ; $68f4: $00
    rst RST_38                                    ; $68f5: $ff
    nop                                           ; $68f6: $00
    rst RST_38                                    ; $68f7: $ff
    nop                                           ; $68f8: $00
    rst RST_38                                    ; $68f9: $ff
    add b                                         ; $68fa: $80
    rst RST_38                                    ; $68fb: $ff
    ret nz                                        ; $68fc: $c0

    ld a, a                                       ; $68fd: $7f
    add b                                         ; $68fe: $80
    rst RST_38                                    ; $68ff: $ff
    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    nop                                           ; $6908: $00
    nop                                           ; $6909: $00
    nop                                           ; $690a: $00
    nop                                           ; $690b: $00
    nop                                           ; $690c: $00
    nop                                           ; $690d: $00
    nop                                           ; $690e: $00
    nop                                           ; $690f: $00
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    nop                                           ; $6917: $00
    nop                                           ; $6918: $00
    nop                                           ; $6919: $00
    nop                                           ; $691a: $00
    nop                                           ; $691b: $00
    nop                                           ; $691c: $00
    nop                                           ; $691d: $00
    nop                                           ; $691e: $00
    nop                                           ; $691f: $00
    nop                                           ; $6920: $00
    nop                                           ; $6921: $00
    nop                                           ; $6922: $00
    nop                                           ; $6923: $00
    nop                                           ; $6924: $00
    nop                                           ; $6925: $00
    nop                                           ; $6926: $00
    nop                                           ; $6927: $00
    nop                                           ; $6928: $00
    nop                                           ; $6929: $00
    nop                                           ; $692a: $00
    nop                                           ; $692b: $00
    nop                                           ; $692c: $00
    nop                                           ; $692d: $00
    nop                                           ; $692e: $00
    nop                                           ; $692f: $00
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    nop                                           ; $6933: $00
    nop                                           ; $6934: $00
    nop                                           ; $6935: $00
    nop                                           ; $6936: $00
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
    nop                                           ; $6939: $00
    nop                                           ; $693a: $00
    nop                                           ; $693b: $00
    nop                                           ; $693c: $00
    nop                                           ; $693d: $00
    nop                                           ; $693e: $00
    nop                                           ; $693f: $00
    nop                                           ; $6940: $00
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    nop                                           ; $6944: $00
    nop                                           ; $6945: $00
    nop                                           ; $6946: $00
    nop                                           ; $6947: $00
    nop                                           ; $6948: $00
    nop                                           ; $6949: $00
    nop                                           ; $694a: $00
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    nop                                           ; $694d: $00
    nop                                           ; $694e: $00
    nop                                           ; $694f: $00
    nop                                           ; $6950: $00
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    nop                                           ; $6953: $00
    nop                                           ; $6954: $00
    nop                                           ; $6955: $00
    nop                                           ; $6956: $00
    nop                                           ; $6957: $00
    nop                                           ; $6958: $00
    nop                                           ; $6959: $00
    nop                                           ; $695a: $00
    nop                                           ; $695b: $00
    nop                                           ; $695c: $00
    nop                                           ; $695d: $00
    nop                                           ; $695e: $00
    nop                                           ; $695f: $00
    nop                                           ; $6960: $00
    nop                                           ; $6961: $00
    nop                                           ; $6962: $00
    nop                                           ; $6963: $00
    nop                                           ; $6964: $00
    nop                                           ; $6965: $00
    nop                                           ; $6966: $00
    nop                                           ; $6967: $00
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    nop                                           ; $696a: $00
    nop                                           ; $696b: $00
    nop                                           ; $696c: $00
    nop                                           ; $696d: $00
    nop                                           ; $696e: $00
    nop                                           ; $696f: $00
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    nop                                           ; $6973: $00
    nop                                           ; $6974: $00
    nop                                           ; $6975: $00
    nop                                           ; $6976: $00
    nop                                           ; $6977: $00
    nop                                           ; $6978: $00
    nop                                           ; $6979: $00
    nop                                           ; $697a: $00
    nop                                           ; $697b: $00
    nop                                           ; $697c: $00
    nop                                           ; $697d: $00
    nop                                           ; $697e: $00
    nop                                           ; $697f: $00
    inc bc                                        ; $6980: $03
    ld d, [hl]                                    ; $6981: $56
    inc bc                                        ; $6982: $03
    cp $03                                        ; $6983: $fe $03
    xor d                                         ; $6985: $aa
    ld bc, $00ff                                  ; $6986: $01 $ff $00
    ld d, l                                       ; $6989: $55
    nop                                           ; $698a: $00
    rst RST_38                                    ; $698b: $ff
    nop                                           ; $698c: $00
    xor d                                         ; $698d: $aa
    nop                                           ; $698e: $00
    rst RST_38                                    ; $698f: $ff
    ei                                            ; $6990: $fb
    ld c, $ff                                     ; $6991: $0e $ff
    ld h, [hl]                                    ; $6993: $66
    rst RST_38                                    ; $6994: $ff
    ld h, [hl]                                    ; $6995: $66
    sbc c                                         ; $6996: $99
    rst RST_38                                    ; $6997: $ff
    nop                                           ; $6998: $00
    ld d, l                                       ; $6999: $55
    nop                                           ; $699a: $00
    rst RST_38                                    ; $699b: $ff
    nop                                           ; $699c: $00
    xor d                                         ; $699d: $aa
    nop                                           ; $699e: $00
    rst RST_38                                    ; $699f: $ff
    rst RST_38                                    ; $69a0: $ff
    ld b, $ff                                     ; $69a1: $06 $ff
    ld h, [hl]                                    ; $69a3: $66
    rst RST_38                                    ; $69a4: $ff
    ld h, [hl]                                    ; $69a5: $66
    sbc c                                         ; $69a6: $99
    rst RST_38                                    ; $69a7: $ff
    nop                                           ; $69a8: $00
    ld d, l                                       ; $69a9: $55
    nop                                           ; $69aa: $00
    rst RST_38                                    ; $69ab: $ff
    nop                                           ; $69ac: $00
    xor d                                         ; $69ad: $aa
    nop                                           ; $69ae: $00
    rst RST_38                                    ; $69af: $ff
    rst RST_38                                    ; $69b0: $ff
    ld b, [hl]                                    ; $69b1: $46
    rst RST_38                                    ; $69b2: $ff
    ld h, [hl]                                    ; $69b3: $66
    rst RST_38                                    ; $69b4: $ff
    ld h, [hl]                                    ; $69b5: $66
    sbc c                                         ; $69b6: $99
    rst RST_38                                    ; $69b7: $ff
    nop                                           ; $69b8: $00
    ld d, l                                       ; $69b9: $55
    nop                                           ; $69ba: $00
    rst RST_38                                    ; $69bb: $ff
    nop                                           ; $69bc: $00
    xor d                                         ; $69bd: $aa
    nop                                           ; $69be: $00
    rst RST_38                                    ; $69bf: $ff
    di                                            ; $69c0: $f3
    ld d, $fb                                     ; $69c1: $16 $fb
    ld c, [hl]                                    ; $69c3: $4e
    rst RST_38                                    ; $69c4: $ff
    ld h, [hl]                                    ; $69c5: $66
    sbc c                                         ; $69c6: $99
    rst RST_38                                    ; $69c7: $ff
    nop                                           ; $69c8: $00
    ld d, l                                       ; $69c9: $55
    nop                                           ; $69ca: $00
    rst RST_38                                    ; $69cb: $ff
    nop                                           ; $69cc: $00
    xor d                                         ; $69cd: $aa
    nop                                           ; $69ce: $00
    rst RST_38                                    ; $69cf: $ff
    rst RST_38                                    ; $69d0: $ff
    ld h, h                                       ; $69d1: $64
    rst RST_38                                    ; $69d2: $ff
    ld h, [hl]                                    ; $69d3: $66
    rst RST_38                                    ; $69d4: $ff
    ld h, [hl]                                    ; $69d5: $66
    sbc c                                         ; $69d6: $99
    rst RST_38                                    ; $69d7: $ff
    nop                                           ; $69d8: $00
    ld d, l                                       ; $69d9: $55
    nop                                           ; $69da: $00
    rst RST_38                                    ; $69db: $ff
    nop                                           ; $69dc: $00
    xor d                                         ; $69dd: $aa
    nop                                           ; $69de: $00
    rst RST_38                                    ; $69df: $ff
    rst RST_38                                    ; $69e0: $ff
    ld h, h                                       ; $69e1: $64
    rst RST_38                                    ; $69e2: $ff
    ld h, [hl]                                    ; $69e3: $66
    rst RST_18                                    ; $69e4: $df
    ld [hl], b                                    ; $69e5: $70
    adc a                                         ; $69e6: $8f
    rst RST_38                                    ; $69e7: $ff
    nop                                           ; $69e8: $00
    ld d, l                                       ; $69e9: $55
    nop                                           ; $69ea: $00
    rst RST_38                                    ; $69eb: $ff
    nop                                           ; $69ec: $00
    xor d                                         ; $69ed: $aa
    nop                                           ; $69ee: $00
    rst RST_38                                    ; $69ef: $ff
    ret nz                                        ; $69f0: $c0

    ld d, l                                       ; $69f1: $55
    ret nz                                        ; $69f2: $c0

    ld a, a                                       ; $69f3: $7f
    add b                                         ; $69f4: $80
    xor d                                         ; $69f5: $aa
    nop                                           ; $69f6: $00
    rst RST_38                                    ; $69f7: $ff
    nop                                           ; $69f8: $00
    ld d, l                                       ; $69f9: $55
    nop                                           ; $69fa: $00
    rst RST_38                                    ; $69fb: $ff
    nop                                           ; $69fc: $00
    xor d                                         ; $69fd: $aa
    nop                                           ; $69fe: $00
    rst RST_38                                    ; $69ff: $ff
    nop                                           ; $6a00: $00
    nop                                           ; $6a01: $00
    nop                                           ; $6a02: $00
    nop                                           ; $6a03: $00
    nop                                           ; $6a04: $00
    nop                                           ; $6a05: $00
    nop                                           ; $6a06: $00
    nop                                           ; $6a07: $00
    nop                                           ; $6a08: $00
    nop                                           ; $6a09: $00
    nop                                           ; $6a0a: $00
    nop                                           ; $6a0b: $00
    nop                                           ; $6a0c: $00
    nop                                           ; $6a0d: $00
    nop                                           ; $6a0e: $00
    nop                                           ; $6a0f: $00
    nop                                           ; $6a10: $00
    nop                                           ; $6a11: $00
    nop                                           ; $6a12: $00
    nop                                           ; $6a13: $00
    nop                                           ; $6a14: $00
    nop                                           ; $6a15: $00
    nop                                           ; $6a16: $00
    nop                                           ; $6a17: $00
    nop                                           ; $6a18: $00
    nop                                           ; $6a19: $00
    nop                                           ; $6a1a: $00
    nop                                           ; $6a1b: $00
    nop                                           ; $6a1c: $00
    nop                                           ; $6a1d: $00
    nop                                           ; $6a1e: $00
    nop                                           ; $6a1f: $00
    nop                                           ; $6a20: $00
    nop                                           ; $6a21: $00
    nop                                           ; $6a22: $00
    nop                                           ; $6a23: $00
    nop                                           ; $6a24: $00
    nop                                           ; $6a25: $00
    nop                                           ; $6a26: $00
    nop                                           ; $6a27: $00
    nop                                           ; $6a28: $00
    nop                                           ; $6a29: $00
    nop                                           ; $6a2a: $00
    nop                                           ; $6a2b: $00
    nop                                           ; $6a2c: $00
    nop                                           ; $6a2d: $00
    nop                                           ; $6a2e: $00
    nop                                           ; $6a2f: $00
    nop                                           ; $6a30: $00
    nop                                           ; $6a31: $00
    nop                                           ; $6a32: $00
    nop                                           ; $6a33: $00
    nop                                           ; $6a34: $00
    nop                                           ; $6a35: $00
    nop                                           ; $6a36: $00
    nop                                           ; $6a37: $00
    nop                                           ; $6a38: $00
    nop                                           ; $6a39: $00
    nop                                           ; $6a3a: $00
    nop                                           ; $6a3b: $00
    nop                                           ; $6a3c: $00
    nop                                           ; $6a3d: $00
    nop                                           ; $6a3e: $00
    nop                                           ; $6a3f: $00
    nop                                           ; $6a40: $00
    nop                                           ; $6a41: $00
    nop                                           ; $6a42: $00
    nop                                           ; $6a43: $00
    nop                                           ; $6a44: $00
    nop                                           ; $6a45: $00
    nop                                           ; $6a46: $00
    nop                                           ; $6a47: $00
    nop                                           ; $6a48: $00
    nop                                           ; $6a49: $00
    nop                                           ; $6a4a: $00
    nop                                           ; $6a4b: $00
    nop                                           ; $6a4c: $00
    nop                                           ; $6a4d: $00
    nop                                           ; $6a4e: $00
    nop                                           ; $6a4f: $00
    nop                                           ; $6a50: $00
    nop                                           ; $6a51: $00
    nop                                           ; $6a52: $00
    nop                                           ; $6a53: $00
    nop                                           ; $6a54: $00
    nop                                           ; $6a55: $00
    nop                                           ; $6a56: $00
    nop                                           ; $6a57: $00
    nop                                           ; $6a58: $00
    nop                                           ; $6a59: $00
    nop                                           ; $6a5a: $00
    nop                                           ; $6a5b: $00
    nop                                           ; $6a5c: $00
    nop                                           ; $6a5d: $00
    nop                                           ; $6a5e: $00
    nop                                           ; $6a5f: $00
    nop                                           ; $6a60: $00
    nop                                           ; $6a61: $00
    nop                                           ; $6a62: $00
    nop                                           ; $6a63: $00
    nop                                           ; $6a64: $00
    nop                                           ; $6a65: $00
    nop                                           ; $6a66: $00
    nop                                           ; $6a67: $00
    nop                                           ; $6a68: $00
    nop                                           ; $6a69: $00
    nop                                           ; $6a6a: $00
    nop                                           ; $6a6b: $00
    nop                                           ; $6a6c: $00
    nop                                           ; $6a6d: $00
    nop                                           ; $6a6e: $00
    nop                                           ; $6a6f: $00
    nop                                           ; $6a70: $00
    nop                                           ; $6a71: $00
    nop                                           ; $6a72: $00
    nop                                           ; $6a73: $00
    nop                                           ; $6a74: $00
    nop                                           ; $6a75: $00
    nop                                           ; $6a76: $00
    nop                                           ; $6a77: $00
    nop                                           ; $6a78: $00
    nop                                           ; $6a79: $00
    nop                                           ; $6a7a: $00
    nop                                           ; $6a7b: $00
    nop                                           ; $6a7c: $00
    nop                                           ; $6a7d: $00
    nop                                           ; $6a7e: $00
    nop                                           ; $6a7f: $00
    nop                                           ; $6a80: $00
    nop                                           ; $6a81: $00
    nop                                           ; $6a82: $00
    nop                                           ; $6a83: $00
    nop                                           ; $6a84: $00
    nop                                           ; $6a85: $00
    nop                                           ; $6a86: $00
    nop                                           ; $6a87: $00
    nop                                           ; $6a88: $00
    nop                                           ; $6a89: $00
    nop                                           ; $6a8a: $00
    nop                                           ; $6a8b: $00
    nop                                           ; $6a8c: $00
    nop                                           ; $6a8d: $00
    nop                                           ; $6a8e: $00
    nop                                           ; $6a8f: $00
    nop                                           ; $6a90: $00
    nop                                           ; $6a91: $00
    nop                                           ; $6a92: $00
    nop                                           ; $6a93: $00
    nop                                           ; $6a94: $00
    nop                                           ; $6a95: $00
    nop                                           ; $6a96: $00
    nop                                           ; $6a97: $00
    nop                                           ; $6a98: $00
    nop                                           ; $6a99: $00
    nop                                           ; $6a9a: $00
    nop                                           ; $6a9b: $00
    nop                                           ; $6a9c: $00
    nop                                           ; $6a9d: $00
    nop                                           ; $6a9e: $00
    nop                                           ; $6a9f: $00
    nop                                           ; $6aa0: $00
    nop                                           ; $6aa1: $00
    nop                                           ; $6aa2: $00
    nop                                           ; $6aa3: $00
    nop                                           ; $6aa4: $00
    nop                                           ; $6aa5: $00
    nop                                           ; $6aa6: $00
    nop                                           ; $6aa7: $00
    nop                                           ; $6aa8: $00
    nop                                           ; $6aa9: $00
    nop                                           ; $6aaa: $00
    nop                                           ; $6aab: $00
    nop                                           ; $6aac: $00
    nop                                           ; $6aad: $00
    nop                                           ; $6aae: $00
    nop                                           ; $6aaf: $00
    nop                                           ; $6ab0: $00
    nop                                           ; $6ab1: $00
    nop                                           ; $6ab2: $00
    nop                                           ; $6ab3: $00
    nop                                           ; $6ab4: $00
    nop                                           ; $6ab5: $00
    nop                                           ; $6ab6: $00
    nop                                           ; $6ab7: $00
    nop                                           ; $6ab8: $00
    nop                                           ; $6ab9: $00
    nop                                           ; $6aba: $00
    nop                                           ; $6abb: $00
    nop                                           ; $6abc: $00
    nop                                           ; $6abd: $00
    nop                                           ; $6abe: $00
    nop                                           ; $6abf: $00
    nop                                           ; $6ac0: $00
    nop                                           ; $6ac1: $00
    nop                                           ; $6ac2: $00
    nop                                           ; $6ac3: $00
    nop                                           ; $6ac4: $00
    nop                                           ; $6ac5: $00
    nop                                           ; $6ac6: $00
    nop                                           ; $6ac7: $00
    nop                                           ; $6ac8: $00
    nop                                           ; $6ac9: $00
    nop                                           ; $6aca: $00
    nop                                           ; $6acb: $00
    nop                                           ; $6acc: $00
    nop                                           ; $6acd: $00
    nop                                           ; $6ace: $00
    nop                                           ; $6acf: $00
    nop                                           ; $6ad0: $00
    nop                                           ; $6ad1: $00
    nop                                           ; $6ad2: $00
    nop                                           ; $6ad3: $00
    nop                                           ; $6ad4: $00
    nop                                           ; $6ad5: $00
    nop                                           ; $6ad6: $00
    nop                                           ; $6ad7: $00
    nop                                           ; $6ad8: $00
    nop                                           ; $6ad9: $00
    nop                                           ; $6ada: $00
    nop                                           ; $6adb: $00
    nop                                           ; $6adc: $00
    nop                                           ; $6add: $00
    nop                                           ; $6ade: $00
    nop                                           ; $6adf: $00
    nop                                           ; $6ae0: $00
    nop                                           ; $6ae1: $00
    nop                                           ; $6ae2: $00
    nop                                           ; $6ae3: $00
    nop                                           ; $6ae4: $00
    nop                                           ; $6ae5: $00
    nop                                           ; $6ae6: $00
    nop                                           ; $6ae7: $00
    nop                                           ; $6ae8: $00
    nop                                           ; $6ae9: $00
    nop                                           ; $6aea: $00
    nop                                           ; $6aeb: $00
    nop                                           ; $6aec: $00
    nop                                           ; $6aed: $00
    nop                                           ; $6aee: $00
    nop                                           ; $6aef: $00
    nop                                           ; $6af0: $00
    nop                                           ; $6af1: $00
    nop                                           ; $6af2: $00
    nop                                           ; $6af3: $00
    nop                                           ; $6af4: $00
    nop                                           ; $6af5: $00
    nop                                           ; $6af6: $00
    nop                                           ; $6af7: $00
    nop                                           ; $6af8: $00
    nop                                           ; $6af9: $00
    nop                                           ; $6afa: $00
    nop                                           ; $6afb: $00
    nop                                           ; $6afc: $00
    nop                                           ; $6afd: $00
    nop                                           ; $6afe: $00
    nop                                           ; $6aff: $00
    nop                                           ; $6b00: $00
    nop                                           ; $6b01: $00
    nop                                           ; $6b02: $00
    nop                                           ; $6b03: $00
    nop                                           ; $6b04: $00
    nop                                           ; $6b05: $00
    nop                                           ; $6b06: $00
    nop                                           ; $6b07: $00
    nop                                           ; $6b08: $00
    nop                                           ; $6b09: $00
    nop                                           ; $6b0a: $00
    nop                                           ; $6b0b: $00
    nop                                           ; $6b0c: $00
    nop                                           ; $6b0d: $00
    nop                                           ; $6b0e: $00
    nop                                           ; $6b0f: $00
    nop                                           ; $6b10: $00
    nop                                           ; $6b11: $00
    nop                                           ; $6b12: $00
    nop                                           ; $6b13: $00
    nop                                           ; $6b14: $00
    nop                                           ; $6b15: $00
    nop                                           ; $6b16: $00
    nop                                           ; $6b17: $00
    nop                                           ; $6b18: $00
    nop                                           ; $6b19: $00
    nop                                           ; $6b1a: $00
    nop                                           ; $6b1b: $00
    nop                                           ; $6b1c: $00
    nop                                           ; $6b1d: $00
    nop                                           ; $6b1e: $00
    nop                                           ; $6b1f: $00
    nop                                           ; $6b20: $00
    nop                                           ; $6b21: $00
    nop                                           ; $6b22: $00
    nop                                           ; $6b23: $00
    nop                                           ; $6b24: $00
    nop                                           ; $6b25: $00
    nop                                           ; $6b26: $00
    nop                                           ; $6b27: $00
    nop                                           ; $6b28: $00
    nop                                           ; $6b29: $00
    nop                                           ; $6b2a: $00
    nop                                           ; $6b2b: $00
    nop                                           ; $6b2c: $00
    nop                                           ; $6b2d: $00
    nop                                           ; $6b2e: $00
    nop                                           ; $6b2f: $00
    nop                                           ; $6b30: $00
    nop                                           ; $6b31: $00
    nop                                           ; $6b32: $00
    nop                                           ; $6b33: $00
    nop                                           ; $6b34: $00
    nop                                           ; $6b35: $00
    nop                                           ; $6b36: $00
    nop                                           ; $6b37: $00
    nop                                           ; $6b38: $00
    nop                                           ; $6b39: $00
    nop                                           ; $6b3a: $00
    nop                                           ; $6b3b: $00
    nop                                           ; $6b3c: $00
    nop                                           ; $6b3d: $00
    nop                                           ; $6b3e: $00
    nop                                           ; $6b3f: $00
    nop                                           ; $6b40: $00
    nop                                           ; $6b41: $00
    nop                                           ; $6b42: $00
    nop                                           ; $6b43: $00
    nop                                           ; $6b44: $00
    nop                                           ; $6b45: $00
    nop                                           ; $6b46: $00
    nop                                           ; $6b47: $00
    nop                                           ; $6b48: $00
    nop                                           ; $6b49: $00
    nop                                           ; $6b4a: $00
    nop                                           ; $6b4b: $00
    nop                                           ; $6b4c: $00
    nop                                           ; $6b4d: $00
    nop                                           ; $6b4e: $00
    nop                                           ; $6b4f: $00
    nop                                           ; $6b50: $00
    nop                                           ; $6b51: $00
    nop                                           ; $6b52: $00
    nop                                           ; $6b53: $00
    nop                                           ; $6b54: $00
    nop                                           ; $6b55: $00
    nop                                           ; $6b56: $00
    nop                                           ; $6b57: $00
    nop                                           ; $6b58: $00
    nop                                           ; $6b59: $00
    nop                                           ; $6b5a: $00
    nop                                           ; $6b5b: $00
    nop                                           ; $6b5c: $00
    nop                                           ; $6b5d: $00
    nop                                           ; $6b5e: $00
    nop                                           ; $6b5f: $00
    nop                                           ; $6b60: $00
    nop                                           ; $6b61: $00
    nop                                           ; $6b62: $00
    nop                                           ; $6b63: $00
    nop                                           ; $6b64: $00
    nop                                           ; $6b65: $00
    nop                                           ; $6b66: $00
    nop                                           ; $6b67: $00
    nop                                           ; $6b68: $00
    nop                                           ; $6b69: $00
    nop                                           ; $6b6a: $00

Call_009_6b6b:
    nop                                           ; $6b6b: $00
    nop                                           ; $6b6c: $00
    nop                                           ; $6b6d: $00
    nop                                           ; $6b6e: $00
    nop                                           ; $6b6f: $00
    nop                                           ; $6b70: $00
    nop                                           ; $6b71: $00
    nop                                           ; $6b72: $00
    nop                                           ; $6b73: $00
    nop                                           ; $6b74: $00
    nop                                           ; $6b75: $00
    nop                                           ; $6b76: $00
    nop                                           ; $6b77: $00
    nop                                           ; $6b78: $00
    nop                                           ; $6b79: $00
    nop                                           ; $6b7a: $00
    nop                                           ; $6b7b: $00
    nop                                           ; $6b7c: $00
    nop                                           ; $6b7d: $00
    nop                                           ; $6b7e: $00
    nop                                           ; $6b7f: $00
    nop                                           ; $6b80: $00
    nop                                           ; $6b81: $00
    nop                                           ; $6b82: $00
    nop                                           ; $6b83: $00
    nop                                           ; $6b84: $00
    nop                                           ; $6b85: $00
    nop                                           ; $6b86: $00
    nop                                           ; $6b87: $00
    nop                                           ; $6b88: $00
    nop                                           ; $6b89: $00
    nop                                           ; $6b8a: $00
    nop                                           ; $6b8b: $00
    nop                                           ; $6b8c: $00
    nop                                           ; $6b8d: $00
    nop                                           ; $6b8e: $00
    nop                                           ; $6b8f: $00
    nop                                           ; $6b90: $00
    nop                                           ; $6b91: $00
    nop                                           ; $6b92: $00
    nop                                           ; $6b93: $00
    nop                                           ; $6b94: $00
    nop                                           ; $6b95: $00
    nop                                           ; $6b96: $00
    nop                                           ; $6b97: $00
    nop                                           ; $6b98: $00
    nop                                           ; $6b99: $00
    nop                                           ; $6b9a: $00
    nop                                           ; $6b9b: $00
    nop                                           ; $6b9c: $00
    nop                                           ; $6b9d: $00
    nop                                           ; $6b9e: $00
    nop                                           ; $6b9f: $00
    nop                                           ; $6ba0: $00
    nop                                           ; $6ba1: $00
    nop                                           ; $6ba2: $00
    nop                                           ; $6ba3: $00
    nop                                           ; $6ba4: $00
    nop                                           ; $6ba5: $00
    nop                                           ; $6ba6: $00
    nop                                           ; $6ba7: $00
    nop                                           ; $6ba8: $00
    nop                                           ; $6ba9: $00
    nop                                           ; $6baa: $00
    nop                                           ; $6bab: $00
    nop                                           ; $6bac: $00
    nop                                           ; $6bad: $00
    nop                                           ; $6bae: $00
    nop                                           ; $6baf: $00
    nop                                           ; $6bb0: $00
    nop                                           ; $6bb1: $00
    nop                                           ; $6bb2: $00
    nop                                           ; $6bb3: $00
    nop                                           ; $6bb4: $00
    nop                                           ; $6bb5: $00
    nop                                           ; $6bb6: $00
    nop                                           ; $6bb7: $00
    nop                                           ; $6bb8: $00
    nop                                           ; $6bb9: $00
    nop                                           ; $6bba: $00
    nop                                           ; $6bbb: $00
    nop                                           ; $6bbc: $00
    nop                                           ; $6bbd: $00
    nop                                           ; $6bbe: $00
    nop                                           ; $6bbf: $00
    nop                                           ; $6bc0: $00
    nop                                           ; $6bc1: $00
    nop                                           ; $6bc2: $00
    nop                                           ; $6bc3: $00
    nop                                           ; $6bc4: $00
    nop                                           ; $6bc5: $00
    nop                                           ; $6bc6: $00
    nop                                           ; $6bc7: $00
    nop                                           ; $6bc8: $00
    nop                                           ; $6bc9: $00
    nop                                           ; $6bca: $00
    nop                                           ; $6bcb: $00
    nop                                           ; $6bcc: $00
    nop                                           ; $6bcd: $00
    nop                                           ; $6bce: $00
    nop                                           ; $6bcf: $00
    nop                                           ; $6bd0: $00
    nop                                           ; $6bd1: $00
    nop                                           ; $6bd2: $00
    nop                                           ; $6bd3: $00
    nop                                           ; $6bd4: $00
    nop                                           ; $6bd5: $00
    nop                                           ; $6bd6: $00
    nop                                           ; $6bd7: $00
    nop                                           ; $6bd8: $00
    nop                                           ; $6bd9: $00
    nop                                           ; $6bda: $00
    nop                                           ; $6bdb: $00
    nop                                           ; $6bdc: $00
    nop                                           ; $6bdd: $00
    nop                                           ; $6bde: $00
    nop                                           ; $6bdf: $00
    nop                                           ; $6be0: $00
    nop                                           ; $6be1: $00
    nop                                           ; $6be2: $00
    nop                                           ; $6be3: $00
    nop                                           ; $6be4: $00
    nop                                           ; $6be5: $00
    nop                                           ; $6be6: $00
    nop                                           ; $6be7: $00
    nop                                           ; $6be8: $00
    nop                                           ; $6be9: $00
    nop                                           ; $6bea: $00
    nop                                           ; $6beb: $00
    nop                                           ; $6bec: $00
    nop                                           ; $6bed: $00
    nop                                           ; $6bee: $00
    nop                                           ; $6bef: $00
    nop                                           ; $6bf0: $00
    nop                                           ; $6bf1: $00
    nop                                           ; $6bf2: $00
    nop                                           ; $6bf3: $00
    nop                                           ; $6bf4: $00
    nop                                           ; $6bf5: $00
    nop                                           ; $6bf6: $00
    nop                                           ; $6bf7: $00
    nop                                           ; $6bf8: $00
    nop                                           ; $6bf9: $00
    nop                                           ; $6bfa: $00
    nop                                           ; $6bfb: $00
    nop                                           ; $6bfc: $00
    nop                                           ; $6bfd: $00
    nop                                           ; $6bfe: $00
    nop                                           ; $6bff: $00
    nop                                           ; $6c00: $00
    nop                                           ; $6c01: $00
    nop                                           ; $6c02: $00
    nop                                           ; $6c03: $00
    nop                                           ; $6c04: $00
    nop                                           ; $6c05: $00
    nop                                           ; $6c06: $00
    nop                                           ; $6c07: $00
    nop                                           ; $6c08: $00
    nop                                           ; $6c09: $00
    nop                                           ; $6c0a: $00
    nop                                           ; $6c0b: $00
    nop                                           ; $6c0c: $00
    nop                                           ; $6c0d: $00
    nop                                           ; $6c0e: $00
    nop                                           ; $6c0f: $00
    nop                                           ; $6c10: $00
    nop                                           ; $6c11: $00
    nop                                           ; $6c12: $00
    nop                                           ; $6c13: $00
    nop                                           ; $6c14: $00
    nop                                           ; $6c15: $00
    nop                                           ; $6c16: $00
    nop                                           ; $6c17: $00
    nop                                           ; $6c18: $00
    nop                                           ; $6c19: $00
    nop                                           ; $6c1a: $00
    nop                                           ; $6c1b: $00
    nop                                           ; $6c1c: $00
    nop                                           ; $6c1d: $00
    nop                                           ; $6c1e: $00
    nop                                           ; $6c1f: $00
    nop                                           ; $6c20: $00
    nop                                           ; $6c21: $00
    nop                                           ; $6c22: $00
    nop                                           ; $6c23: $00
    nop                                           ; $6c24: $00
    nop                                           ; $6c25: $00
    nop                                           ; $6c26: $00
    nop                                           ; $6c27: $00
    nop                                           ; $6c28: $00
    nop                                           ; $6c29: $00
    nop                                           ; $6c2a: $00
    nop                                           ; $6c2b: $00
    nop                                           ; $6c2c: $00
    nop                                           ; $6c2d: $00
    nop                                           ; $6c2e: $00
    nop                                           ; $6c2f: $00
    nop                                           ; $6c30: $00
    nop                                           ; $6c31: $00
    nop                                           ; $6c32: $00
    nop                                           ; $6c33: $00
    nop                                           ; $6c34: $00
    nop                                           ; $6c35: $00
    nop                                           ; $6c36: $00
    nop                                           ; $6c37: $00
    nop                                           ; $6c38: $00
    nop                                           ; $6c39: $00
    nop                                           ; $6c3a: $00
    nop                                           ; $6c3b: $00
    nop                                           ; $6c3c: $00
    nop                                           ; $6c3d: $00
    nop                                           ; $6c3e: $00
    nop                                           ; $6c3f: $00
    nop                                           ; $6c40: $00
    nop                                           ; $6c41: $00
    nop                                           ; $6c42: $00
    nop                                           ; $6c43: $00
    nop                                           ; $6c44: $00
    nop                                           ; $6c45: $00
    nop                                           ; $6c46: $00
    nop                                           ; $6c47: $00
    nop                                           ; $6c48: $00
    nop                                           ; $6c49: $00
    nop                                           ; $6c4a: $00
    nop                                           ; $6c4b: $00
    nop                                           ; $6c4c: $00
    nop                                           ; $6c4d: $00
    nop                                           ; $6c4e: $00
    nop                                           ; $6c4f: $00
    nop                                           ; $6c50: $00
    nop                                           ; $6c51: $00
    nop                                           ; $6c52: $00
    nop                                           ; $6c53: $00
    nop                                           ; $6c54: $00
    nop                                           ; $6c55: $00
    nop                                           ; $6c56: $00
    nop                                           ; $6c57: $00
    nop                                           ; $6c58: $00
    nop                                           ; $6c59: $00
    nop                                           ; $6c5a: $00
    nop                                           ; $6c5b: $00
    nop                                           ; $6c5c: $00
    nop                                           ; $6c5d: $00
    nop                                           ; $6c5e: $00
    nop                                           ; $6c5f: $00
    nop                                           ; $6c60: $00
    nop                                           ; $6c61: $00
    nop                                           ; $6c62: $00
    nop                                           ; $6c63: $00
    nop                                           ; $6c64: $00
    nop                                           ; $6c65: $00
    nop                                           ; $6c66: $00
    nop                                           ; $6c67: $00
    nop                                           ; $6c68: $00
    nop                                           ; $6c69: $00
    nop                                           ; $6c6a: $00
    nop                                           ; $6c6b: $00
    nop                                           ; $6c6c: $00
    nop                                           ; $6c6d: $00
    nop                                           ; $6c6e: $00
    nop                                           ; $6c6f: $00
    nop                                           ; $6c70: $00
    nop                                           ; $6c71: $00
    nop                                           ; $6c72: $00
    nop                                           ; $6c73: $00
    nop                                           ; $6c74: $00
    nop                                           ; $6c75: $00
    nop                                           ; $6c76: $00
    nop                                           ; $6c77: $00
    nop                                           ; $6c78: $00
    nop                                           ; $6c79: $00
    nop                                           ; $6c7a: $00
    nop                                           ; $6c7b: $00
    nop                                           ; $6c7c: $00
    nop                                           ; $6c7d: $00
    nop                                           ; $6c7e: $00
    nop                                           ; $6c7f: $00
    nop                                           ; $6c80: $00
    nop                                           ; $6c81: $00
    nop                                           ; $6c82: $00
    nop                                           ; $6c83: $00
    nop                                           ; $6c84: $00
    nop                                           ; $6c85: $00
    nop                                           ; $6c86: $00
    nop                                           ; $6c87: $00
    nop                                           ; $6c88: $00
    nop                                           ; $6c89: $00
    nop                                           ; $6c8a: $00
    nop                                           ; $6c8b: $00
    nop                                           ; $6c8c: $00
    nop                                           ; $6c8d: $00
    nop                                           ; $6c8e: $00
    nop                                           ; $6c8f: $00
    nop                                           ; $6c90: $00
    nop                                           ; $6c91: $00
    nop                                           ; $6c92: $00
    nop                                           ; $6c93: $00
    nop                                           ; $6c94: $00
    nop                                           ; $6c95: $00
    nop                                           ; $6c96: $00
    nop                                           ; $6c97: $00
    nop                                           ; $6c98: $00
    nop                                           ; $6c99: $00
    nop                                           ; $6c9a: $00
    nop                                           ; $6c9b: $00
    nop                                           ; $6c9c: $00
    nop                                           ; $6c9d: $00
    nop                                           ; $6c9e: $00
    nop                                           ; $6c9f: $00
    nop                                           ; $6ca0: $00
    nop                                           ; $6ca1: $00
    nop                                           ; $6ca2: $00
    nop                                           ; $6ca3: $00
    nop                                           ; $6ca4: $00
    nop                                           ; $6ca5: $00
    nop                                           ; $6ca6: $00
    nop                                           ; $6ca7: $00
    nop                                           ; $6ca8: $00
    nop                                           ; $6ca9: $00
    nop                                           ; $6caa: $00
    nop                                           ; $6cab: $00
    nop                                           ; $6cac: $00
    nop                                           ; $6cad: $00
    nop                                           ; $6cae: $00
    nop                                           ; $6caf: $00
    nop                                           ; $6cb0: $00
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    nop                                           ; $6cb3: $00
    nop                                           ; $6cb4: $00
    nop                                           ; $6cb5: $00
    nop                                           ; $6cb6: $00
    nop                                           ; $6cb7: $00
    nop                                           ; $6cb8: $00
    nop                                           ; $6cb9: $00
    nop                                           ; $6cba: $00
    nop                                           ; $6cbb: $00
    nop                                           ; $6cbc: $00
    nop                                           ; $6cbd: $00
    nop                                           ; $6cbe: $00
    nop                                           ; $6cbf: $00
    nop                                           ; $6cc0: $00
    nop                                           ; $6cc1: $00
    nop                                           ; $6cc2: $00
    nop                                           ; $6cc3: $00
    nop                                           ; $6cc4: $00
    nop                                           ; $6cc5: $00
    nop                                           ; $6cc6: $00
    nop                                           ; $6cc7: $00
    nop                                           ; $6cc8: $00
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    nop                                           ; $6ccb: $00
    nop                                           ; $6ccc: $00
    nop                                           ; $6ccd: $00
    nop                                           ; $6cce: $00
    nop                                           ; $6ccf: $00
    nop                                           ; $6cd0: $00
    nop                                           ; $6cd1: $00
    nop                                           ; $6cd2: $00
    nop                                           ; $6cd3: $00
    nop                                           ; $6cd4: $00
    nop                                           ; $6cd5: $00
    nop                                           ; $6cd6: $00
    nop                                           ; $6cd7: $00
    nop                                           ; $6cd8: $00
    nop                                           ; $6cd9: $00
    nop                                           ; $6cda: $00
    nop                                           ; $6cdb: $00
    nop                                           ; $6cdc: $00
    nop                                           ; $6cdd: $00
    nop                                           ; $6cde: $00
    nop                                           ; $6cdf: $00
    nop                                           ; $6ce0: $00
    nop                                           ; $6ce1: $00
    nop                                           ; $6ce2: $00
    nop                                           ; $6ce3: $00
    nop                                           ; $6ce4: $00
    nop                                           ; $6ce5: $00
    nop                                           ; $6ce6: $00
    nop                                           ; $6ce7: $00
    nop                                           ; $6ce8: $00
    nop                                           ; $6ce9: $00
    nop                                           ; $6cea: $00
    nop                                           ; $6ceb: $00
    nop                                           ; $6cec: $00
    nop                                           ; $6ced: $00
    nop                                           ; $6cee: $00
    nop                                           ; $6cef: $00
    nop                                           ; $6cf0: $00
    nop                                           ; $6cf1: $00
    nop                                           ; $6cf2: $00
    nop                                           ; $6cf3: $00
    nop                                           ; $6cf4: $00
    nop                                           ; $6cf5: $00
    nop                                           ; $6cf6: $00
    nop                                           ; $6cf7: $00
    nop                                           ; $6cf8: $00
    nop                                           ; $6cf9: $00
    nop                                           ; $6cfa: $00
    nop                                           ; $6cfb: $00
    nop                                           ; $6cfc: $00
    nop                                           ; $6cfd: $00
    nop                                           ; $6cfe: $00
    nop                                           ; $6cff: $00
    nop                                           ; $6d00: $00
    nop                                           ; $6d01: $00
    nop                                           ; $6d02: $00
    nop                                           ; $6d03: $00
    nop                                           ; $6d04: $00
    nop                                           ; $6d05: $00
    nop                                           ; $6d06: $00
    nop                                           ; $6d07: $00
    nop                                           ; $6d08: $00
    nop                                           ; $6d09: $00
    nop                                           ; $6d0a: $00
    nop                                           ; $6d0b: $00
    nop                                           ; $6d0c: $00
    nop                                           ; $6d0d: $00
    nop                                           ; $6d0e: $00
    nop                                           ; $6d0f: $00
    nop                                           ; $6d10: $00
    nop                                           ; $6d11: $00
    nop                                           ; $6d12: $00
    nop                                           ; $6d13: $00
    nop                                           ; $6d14: $00
    nop                                           ; $6d15: $00
    nop                                           ; $6d16: $00
    nop                                           ; $6d17: $00
    nop                                           ; $6d18: $00
    nop                                           ; $6d19: $00
    nop                                           ; $6d1a: $00
    nop                                           ; $6d1b: $00
    nop                                           ; $6d1c: $00
    nop                                           ; $6d1d: $00
    nop                                           ; $6d1e: $00
    nop                                           ; $6d1f: $00
    nop                                           ; $6d20: $00
    nop                                           ; $6d21: $00
    nop                                           ; $6d22: $00
    nop                                           ; $6d23: $00
    nop                                           ; $6d24: $00
    nop                                           ; $6d25: $00
    nop                                           ; $6d26: $00
    nop                                           ; $6d27: $00
    nop                                           ; $6d28: $00
    nop                                           ; $6d29: $00
    nop                                           ; $6d2a: $00
    nop                                           ; $6d2b: $00
    nop                                           ; $6d2c: $00
    nop                                           ; $6d2d: $00
    nop                                           ; $6d2e: $00
    nop                                           ; $6d2f: $00
    nop                                           ; $6d30: $00
    nop                                           ; $6d31: $00
    nop                                           ; $6d32: $00
    nop                                           ; $6d33: $00
    nop                                           ; $6d34: $00
    nop                                           ; $6d35: $00
    nop                                           ; $6d36: $00
    nop                                           ; $6d37: $00
    nop                                           ; $6d38: $00
    nop                                           ; $6d39: $00
    nop                                           ; $6d3a: $00
    nop                                           ; $6d3b: $00
    nop                                           ; $6d3c: $00
    nop                                           ; $6d3d: $00
    nop                                           ; $6d3e: $00
    nop                                           ; $6d3f: $00
    nop                                           ; $6d40: $00
    nop                                           ; $6d41: $00
    nop                                           ; $6d42: $00
    nop                                           ; $6d43: $00
    nop                                           ; $6d44: $00
    nop                                           ; $6d45: $00
    nop                                           ; $6d46: $00
    nop                                           ; $6d47: $00
    nop                                           ; $6d48: $00
    nop                                           ; $6d49: $00
    nop                                           ; $6d4a: $00
    nop                                           ; $6d4b: $00
    nop                                           ; $6d4c: $00
    nop                                           ; $6d4d: $00
    nop                                           ; $6d4e: $00
    nop                                           ; $6d4f: $00
    nop                                           ; $6d50: $00
    nop                                           ; $6d51: $00
    nop                                           ; $6d52: $00
    nop                                           ; $6d53: $00
    nop                                           ; $6d54: $00
    nop                                           ; $6d55: $00
    nop                                           ; $6d56: $00
    nop                                           ; $6d57: $00
    nop                                           ; $6d58: $00
    nop                                           ; $6d59: $00
    nop                                           ; $6d5a: $00
    nop                                           ; $6d5b: $00
    nop                                           ; $6d5c: $00
    nop                                           ; $6d5d: $00
    nop                                           ; $6d5e: $00
    nop                                           ; $6d5f: $00
    nop                                           ; $6d60: $00
    nop                                           ; $6d61: $00
    nop                                           ; $6d62: $00
    nop                                           ; $6d63: $00
    nop                                           ; $6d64: $00
    nop                                           ; $6d65: $00
    nop                                           ; $6d66: $00
    nop                                           ; $6d67: $00
    nop                                           ; $6d68: $00
    nop                                           ; $6d69: $00
    nop                                           ; $6d6a: $00
    nop                                           ; $6d6b: $00
    nop                                           ; $6d6c: $00
    nop                                           ; $6d6d: $00
    nop                                           ; $6d6e: $00
    nop                                           ; $6d6f: $00
    nop                                           ; $6d70: $00
    nop                                           ; $6d71: $00
    nop                                           ; $6d72: $00
    nop                                           ; $6d73: $00
    nop                                           ; $6d74: $00
    nop                                           ; $6d75: $00
    nop                                           ; $6d76: $00
    nop                                           ; $6d77: $00
    nop                                           ; $6d78: $00
    nop                                           ; $6d79: $00
    nop                                           ; $6d7a: $00
    nop                                           ; $6d7b: $00
    nop                                           ; $6d7c: $00
    nop                                           ; $6d7d: $00
    nop                                           ; $6d7e: $00
    nop                                           ; $6d7f: $00
    nop                                           ; $6d80: $00
    nop                                           ; $6d81: $00
    nop                                           ; $6d82: $00
    nop                                           ; $6d83: $00
    nop                                           ; $6d84: $00
    nop                                           ; $6d85: $00
    nop                                           ; $6d86: $00
    nop                                           ; $6d87: $00
    nop                                           ; $6d88: $00
    nop                                           ; $6d89: $00
    nop                                           ; $6d8a: $00
    nop                                           ; $6d8b: $00
    nop                                           ; $6d8c: $00
    nop                                           ; $6d8d: $00
    nop                                           ; $6d8e: $00
    nop                                           ; $6d8f: $00
    nop                                           ; $6d90: $00
    nop                                           ; $6d91: $00
    nop                                           ; $6d92: $00
    nop                                           ; $6d93: $00
    nop                                           ; $6d94: $00
    nop                                           ; $6d95: $00
    nop                                           ; $6d96: $00
    nop                                           ; $6d97: $00
    nop                                           ; $6d98: $00
    nop                                           ; $6d99: $00
    nop                                           ; $6d9a: $00
    nop                                           ; $6d9b: $00
    nop                                           ; $6d9c: $00
    nop                                           ; $6d9d: $00
    nop                                           ; $6d9e: $00
    nop                                           ; $6d9f: $00
    nop                                           ; $6da0: $00
    nop                                           ; $6da1: $00
    nop                                           ; $6da2: $00
    nop                                           ; $6da3: $00
    nop                                           ; $6da4: $00
    nop                                           ; $6da5: $00
    nop                                           ; $6da6: $00
    nop                                           ; $6da7: $00
    nop                                           ; $6da8: $00
    nop                                           ; $6da9: $00
    nop                                           ; $6daa: $00
    nop                                           ; $6dab: $00
    nop                                           ; $6dac: $00
    nop                                           ; $6dad: $00
    nop                                           ; $6dae: $00
    nop                                           ; $6daf: $00
    nop                                           ; $6db0: $00
    nop                                           ; $6db1: $00
    nop                                           ; $6db2: $00
    nop                                           ; $6db3: $00
    nop                                           ; $6db4: $00
    nop                                           ; $6db5: $00
    nop                                           ; $6db6: $00
    nop                                           ; $6db7: $00
    nop                                           ; $6db8: $00
    nop                                           ; $6db9: $00
    nop                                           ; $6dba: $00
    nop                                           ; $6dbb: $00
    nop                                           ; $6dbc: $00
    nop                                           ; $6dbd: $00
    nop                                           ; $6dbe: $00
    nop                                           ; $6dbf: $00
    nop                                           ; $6dc0: $00
    nop                                           ; $6dc1: $00
    nop                                           ; $6dc2: $00
    nop                                           ; $6dc3: $00
    nop                                           ; $6dc4: $00
    nop                                           ; $6dc5: $00
    nop                                           ; $6dc6: $00
    nop                                           ; $6dc7: $00
    nop                                           ; $6dc8: $00
    nop                                           ; $6dc9: $00
    nop                                           ; $6dca: $00
    nop                                           ; $6dcb: $00
    nop                                           ; $6dcc: $00

Call_009_6dcd:
    nop                                           ; $6dcd: $00
    nop                                           ; $6dce: $00
    nop                                           ; $6dcf: $00
    nop                                           ; $6dd0: $00
    nop                                           ; $6dd1: $00
    nop                                           ; $6dd2: $00
    nop                                           ; $6dd3: $00
    nop                                           ; $6dd4: $00
    nop                                           ; $6dd5: $00
    nop                                           ; $6dd6: $00
    nop                                           ; $6dd7: $00
    nop                                           ; $6dd8: $00
    nop                                           ; $6dd9: $00
    nop                                           ; $6dda: $00
    nop                                           ; $6ddb: $00
    nop                                           ; $6ddc: $00
    nop                                           ; $6ddd: $00
    nop                                           ; $6dde: $00
    nop                                           ; $6ddf: $00
    nop                                           ; $6de0: $00
    nop                                           ; $6de1: $00
    nop                                           ; $6de2: $00
    nop                                           ; $6de3: $00
    nop                                           ; $6de4: $00
    nop                                           ; $6de5: $00
    nop                                           ; $6de6: $00
    nop                                           ; $6de7: $00
    nop                                           ; $6de8: $00
    nop                                           ; $6de9: $00
    nop                                           ; $6dea: $00
    nop                                           ; $6deb: $00
    nop                                           ; $6dec: $00
    nop                                           ; $6ded: $00
    nop                                           ; $6dee: $00
    nop                                           ; $6def: $00
    nop                                           ; $6df0: $00
    nop                                           ; $6df1: $00
    nop                                           ; $6df2: $00
    nop                                           ; $6df3: $00
    nop                                           ; $6df4: $00
    nop                                           ; $6df5: $00
    nop                                           ; $6df6: $00
    nop                                           ; $6df7: $00
    nop                                           ; $6df8: $00
    nop                                           ; $6df9: $00
    nop                                           ; $6dfa: $00
    nop                                           ; $6dfb: $00
    nop                                           ; $6dfc: $00
    nop                                           ; $6dfd: $00
    nop                                           ; $6dfe: $00

Call_009_6dff:
    nop                                           ; $6dff: $00
    nop                                           ; $6e00: $00
    nop                                           ; $6e01: $00
    nop                                           ; $6e02: $00
    nop                                           ; $6e03: $00
    nop                                           ; $6e04: $00
    nop                                           ; $6e05: $00
    nop                                           ; $6e06: $00
    nop                                           ; $6e07: $00
    nop                                           ; $6e08: $00
    nop                                           ; $6e09: $00
    nop                                           ; $6e0a: $00
    nop                                           ; $6e0b: $00
    nop                                           ; $6e0c: $00
    nop                                           ; $6e0d: $00
    nop                                           ; $6e0e: $00
    nop                                           ; $6e0f: $00
    nop                                           ; $6e10: $00
    nop                                           ; $6e11: $00
    nop                                           ; $6e12: $00
    nop                                           ; $6e13: $00
    nop                                           ; $6e14: $00
    nop                                           ; $6e15: $00
    nop                                           ; $6e16: $00
    nop                                           ; $6e17: $00
    nop                                           ; $6e18: $00
    nop                                           ; $6e19: $00
    nop                                           ; $6e1a: $00
    nop                                           ; $6e1b: $00
    nop                                           ; $6e1c: $00
    nop                                           ; $6e1d: $00
    nop                                           ; $6e1e: $00
    nop                                           ; $6e1f: $00
    nop                                           ; $6e20: $00
    nop                                           ; $6e21: $00
    nop                                           ; $6e22: $00
    nop                                           ; $6e23: $00
    nop                                           ; $6e24: $00
    nop                                           ; $6e25: $00
    nop                                           ; $6e26: $00
    nop                                           ; $6e27: $00
    nop                                           ; $6e28: $00
    nop                                           ; $6e29: $00
    nop                                           ; $6e2a: $00
    nop                                           ; $6e2b: $00
    nop                                           ; $6e2c: $00
    nop                                           ; $6e2d: $00
    nop                                           ; $6e2e: $00
    nop                                           ; $6e2f: $00
    nop                                           ; $6e30: $00
    nop                                           ; $6e31: $00
    nop                                           ; $6e32: $00
    nop                                           ; $6e33: $00
    nop                                           ; $6e34: $00
    nop                                           ; $6e35: $00
    nop                                           ; $6e36: $00
    nop                                           ; $6e37: $00
    nop                                           ; $6e38: $00
    nop                                           ; $6e39: $00
    nop                                           ; $6e3a: $00
    nop                                           ; $6e3b: $00
    nop                                           ; $6e3c: $00
    nop                                           ; $6e3d: $00
    nop                                           ; $6e3e: $00
    nop                                           ; $6e3f: $00
    nop                                           ; $6e40: $00
    nop                                           ; $6e41: $00
    nop                                           ; $6e42: $00
    nop                                           ; $6e43: $00
    nop                                           ; $6e44: $00
    nop                                           ; $6e45: $00
    nop                                           ; $6e46: $00
    nop                                           ; $6e47: $00
    nop                                           ; $6e48: $00
    nop                                           ; $6e49: $00
    nop                                           ; $6e4a: $00
    nop                                           ; $6e4b: $00
    nop                                           ; $6e4c: $00
    nop                                           ; $6e4d: $00
    nop                                           ; $6e4e: $00
    nop                                           ; $6e4f: $00
    nop                                           ; $6e50: $00
    nop                                           ; $6e51: $00
    nop                                           ; $6e52: $00
    nop                                           ; $6e53: $00
    nop                                           ; $6e54: $00
    nop                                           ; $6e55: $00
    nop                                           ; $6e56: $00
    nop                                           ; $6e57: $00
    nop                                           ; $6e58: $00
    nop                                           ; $6e59: $00
    nop                                           ; $6e5a: $00
    nop                                           ; $6e5b: $00
    nop                                           ; $6e5c: $00
    nop                                           ; $6e5d: $00
    nop                                           ; $6e5e: $00
    nop                                           ; $6e5f: $00
    nop                                           ; $6e60: $00
    nop                                           ; $6e61: $00
    nop                                           ; $6e62: $00
    nop                                           ; $6e63: $00
    nop                                           ; $6e64: $00
    nop                                           ; $6e65: $00
    nop                                           ; $6e66: $00
    nop                                           ; $6e67: $00
    nop                                           ; $6e68: $00
    nop                                           ; $6e69: $00
    nop                                           ; $6e6a: $00
    nop                                           ; $6e6b: $00
    nop                                           ; $6e6c: $00
    nop                                           ; $6e6d: $00
    nop                                           ; $6e6e: $00
    nop                                           ; $6e6f: $00
    nop                                           ; $6e70: $00
    nop                                           ; $6e71: $00
    nop                                           ; $6e72: $00
    nop                                           ; $6e73: $00
    nop                                           ; $6e74: $00
    nop                                           ; $6e75: $00
    nop                                           ; $6e76: $00
    nop                                           ; $6e77: $00
    nop                                           ; $6e78: $00
    nop                                           ; $6e79: $00
    nop                                           ; $6e7a: $00
    nop                                           ; $6e7b: $00
    nop                                           ; $6e7c: $00
    nop                                           ; $6e7d: $00
    nop                                           ; $6e7e: $00
    nop                                           ; $6e7f: $00
    nop                                           ; $6e80: $00
    nop                                           ; $6e81: $00
    nop                                           ; $6e82: $00
    nop                                           ; $6e83: $00
    nop                                           ; $6e84: $00
    nop                                           ; $6e85: $00
    nop                                           ; $6e86: $00
    nop                                           ; $6e87: $00
    nop                                           ; $6e88: $00
    nop                                           ; $6e89: $00
    nop                                           ; $6e8a: $00
    nop                                           ; $6e8b: $00
    nop                                           ; $6e8c: $00
    nop                                           ; $6e8d: $00
    nop                                           ; $6e8e: $00
    nop                                           ; $6e8f: $00
    nop                                           ; $6e90: $00
    nop                                           ; $6e91: $00
    nop                                           ; $6e92: $00
    nop                                           ; $6e93: $00
    nop                                           ; $6e94: $00
    nop                                           ; $6e95: $00
    nop                                           ; $6e96: $00
    nop                                           ; $6e97: $00
    nop                                           ; $6e98: $00
    nop                                           ; $6e99: $00
    nop                                           ; $6e9a: $00
    nop                                           ; $6e9b: $00
    nop                                           ; $6e9c: $00
    nop                                           ; $6e9d: $00
    nop                                           ; $6e9e: $00
    nop                                           ; $6e9f: $00
    nop                                           ; $6ea0: $00
    nop                                           ; $6ea1: $00
    nop                                           ; $6ea2: $00
    nop                                           ; $6ea3: $00
    nop                                           ; $6ea4: $00
    nop                                           ; $6ea5: $00
    nop                                           ; $6ea6: $00
    nop                                           ; $6ea7: $00
    nop                                           ; $6ea8: $00
    nop                                           ; $6ea9: $00
    nop                                           ; $6eaa: $00
    nop                                           ; $6eab: $00
    nop                                           ; $6eac: $00
    nop                                           ; $6ead: $00
    nop                                           ; $6eae: $00
    nop                                           ; $6eaf: $00
    nop                                           ; $6eb0: $00
    nop                                           ; $6eb1: $00
    nop                                           ; $6eb2: $00
    nop                                           ; $6eb3: $00
    nop                                           ; $6eb4: $00
    nop                                           ; $6eb5: $00
    nop                                           ; $6eb6: $00
    nop                                           ; $6eb7: $00
    nop                                           ; $6eb8: $00
    nop                                           ; $6eb9: $00
    nop                                           ; $6eba: $00
    nop                                           ; $6ebb: $00
    nop                                           ; $6ebc: $00
    nop                                           ; $6ebd: $00
    nop                                           ; $6ebe: $00
    nop                                           ; $6ebf: $00
    nop                                           ; $6ec0: $00
    nop                                           ; $6ec1: $00
    nop                                           ; $6ec2: $00
    nop                                           ; $6ec3: $00
    nop                                           ; $6ec4: $00
    nop                                           ; $6ec5: $00
    nop                                           ; $6ec6: $00
    nop                                           ; $6ec7: $00
    nop                                           ; $6ec8: $00
    nop                                           ; $6ec9: $00
    nop                                           ; $6eca: $00
    nop                                           ; $6ecb: $00
    nop                                           ; $6ecc: $00
    nop                                           ; $6ecd: $00
    nop                                           ; $6ece: $00
    nop                                           ; $6ecf: $00
    nop                                           ; $6ed0: $00
    nop                                           ; $6ed1: $00
    nop                                           ; $6ed2: $00
    nop                                           ; $6ed3: $00
    nop                                           ; $6ed4: $00
    nop                                           ; $6ed5: $00
    nop                                           ; $6ed6: $00
    nop                                           ; $6ed7: $00
    nop                                           ; $6ed8: $00
    nop                                           ; $6ed9: $00
    nop                                           ; $6eda: $00
    nop                                           ; $6edb: $00
    nop                                           ; $6edc: $00
    nop                                           ; $6edd: $00
    nop                                           ; $6ede: $00
    nop                                           ; $6edf: $00
    nop                                           ; $6ee0: $00
    nop                                           ; $6ee1: $00
    nop                                           ; $6ee2: $00
    nop                                           ; $6ee3: $00
    nop                                           ; $6ee4: $00
    nop                                           ; $6ee5: $00
    nop                                           ; $6ee6: $00
    nop                                           ; $6ee7: $00
    nop                                           ; $6ee8: $00
    nop                                           ; $6ee9: $00
    nop                                           ; $6eea: $00
    nop                                           ; $6eeb: $00
    nop                                           ; $6eec: $00
    nop                                           ; $6eed: $00
    nop                                           ; $6eee: $00
    nop                                           ; $6eef: $00
    nop                                           ; $6ef0: $00
    nop                                           ; $6ef1: $00
    nop                                           ; $6ef2: $00
    nop                                           ; $6ef3: $00
    nop                                           ; $6ef4: $00
    nop                                           ; $6ef5: $00
    nop                                           ; $6ef6: $00
    nop                                           ; $6ef7: $00
    nop                                           ; $6ef8: $00
    nop                                           ; $6ef9: $00
    nop                                           ; $6efa: $00
    nop                                           ; $6efb: $00
    nop                                           ; $6efc: $00
    nop                                           ; $6efd: $00
    nop                                           ; $6efe: $00
    nop                                           ; $6eff: $00
    nop                                           ; $6f00: $00
    nop                                           ; $6f01: $00
    nop                                           ; $6f02: $00
    nop                                           ; $6f03: $00
    nop                                           ; $6f04: $00
    nop                                           ; $6f05: $00
    nop                                           ; $6f06: $00
    nop                                           ; $6f07: $00
    nop                                           ; $6f08: $00
    nop                                           ; $6f09: $00
    nop                                           ; $6f0a: $00
    nop                                           ; $6f0b: $00
    nop                                           ; $6f0c: $00
    nop                                           ; $6f0d: $00
    nop                                           ; $6f0e: $00
    nop                                           ; $6f0f: $00
    nop                                           ; $6f10: $00
    nop                                           ; $6f11: $00
    nop                                           ; $6f12: $00
    nop                                           ; $6f13: $00
    nop                                           ; $6f14: $00
    nop                                           ; $6f15: $00
    nop                                           ; $6f16: $00
    nop                                           ; $6f17: $00
    nop                                           ; $6f18: $00
    nop                                           ; $6f19: $00
    nop                                           ; $6f1a: $00
    nop                                           ; $6f1b: $00
    nop                                           ; $6f1c: $00
    nop                                           ; $6f1d: $00
    nop                                           ; $6f1e: $00
    nop                                           ; $6f1f: $00
    nop                                           ; $6f20: $00
    nop                                           ; $6f21: $00
    nop                                           ; $6f22: $00
    nop                                           ; $6f23: $00
    nop                                           ; $6f24: $00
    nop                                           ; $6f25: $00
    nop                                           ; $6f26: $00
    nop                                           ; $6f27: $00
    nop                                           ; $6f28: $00
    nop                                           ; $6f29: $00
    nop                                           ; $6f2a: $00
    nop                                           ; $6f2b: $00
    nop                                           ; $6f2c: $00
    nop                                           ; $6f2d: $00
    nop                                           ; $6f2e: $00
    nop                                           ; $6f2f: $00
    nop                                           ; $6f30: $00
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    nop                                           ; $6f33: $00
    nop                                           ; $6f34: $00
    nop                                           ; $6f35: $00
    nop                                           ; $6f36: $00
    nop                                           ; $6f37: $00
    nop                                           ; $6f38: $00
    nop                                           ; $6f39: $00
    nop                                           ; $6f3a: $00
    nop                                           ; $6f3b: $00
    nop                                           ; $6f3c: $00
    nop                                           ; $6f3d: $00
    nop                                           ; $6f3e: $00
    nop                                           ; $6f3f: $00
    nop                                           ; $6f40: $00
    nop                                           ; $6f41: $00
    nop                                           ; $6f42: $00
    nop                                           ; $6f43: $00
    nop                                           ; $6f44: $00
    nop                                           ; $6f45: $00
    nop                                           ; $6f46: $00
    nop                                           ; $6f47: $00
    nop                                           ; $6f48: $00
    nop                                           ; $6f49: $00
    nop                                           ; $6f4a: $00
    nop                                           ; $6f4b: $00
    nop                                           ; $6f4c: $00
    nop                                           ; $6f4d: $00
    nop                                           ; $6f4e: $00
    nop                                           ; $6f4f: $00
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00
    nop                                           ; $6f52: $00
    nop                                           ; $6f53: $00
    nop                                           ; $6f54: $00
    nop                                           ; $6f55: $00
    nop                                           ; $6f56: $00
    nop                                           ; $6f57: $00
    nop                                           ; $6f58: $00
    nop                                           ; $6f59: $00
    nop                                           ; $6f5a: $00
    nop                                           ; $6f5b: $00
    nop                                           ; $6f5c: $00
    nop                                           ; $6f5d: $00
    nop                                           ; $6f5e: $00
    nop                                           ; $6f5f: $00
    nop                                           ; $6f60: $00
    nop                                           ; $6f61: $00
    nop                                           ; $6f62: $00
    nop                                           ; $6f63: $00
    nop                                           ; $6f64: $00
    nop                                           ; $6f65: $00
    nop                                           ; $6f66: $00
    nop                                           ; $6f67: $00
    nop                                           ; $6f68: $00
    nop                                           ; $6f69: $00
    nop                                           ; $6f6a: $00
    nop                                           ; $6f6b: $00
    nop                                           ; $6f6c: $00
    nop                                           ; $6f6d: $00
    nop                                           ; $6f6e: $00
    nop                                           ; $6f6f: $00
    nop                                           ; $6f70: $00
    nop                                           ; $6f71: $00
    nop                                           ; $6f72: $00
    nop                                           ; $6f73: $00
    nop                                           ; $6f74: $00
    nop                                           ; $6f75: $00
    nop                                           ; $6f76: $00
    nop                                           ; $6f77: $00
    nop                                           ; $6f78: $00
    nop                                           ; $6f79: $00
    nop                                           ; $6f7a: $00
    nop                                           ; $6f7b: $00
    nop                                           ; $6f7c: $00
    nop                                           ; $6f7d: $00
    nop                                           ; $6f7e: $00
    nop                                           ; $6f7f: $00
    nop                                           ; $6f80: $00
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00
    nop                                           ; $6f83: $00
    nop                                           ; $6f84: $00
    nop                                           ; $6f85: $00
    nop                                           ; $6f86: $00
    nop                                           ; $6f87: $00
    nop                                           ; $6f88: $00
    nop                                           ; $6f89: $00
    nop                                           ; $6f8a: $00
    nop                                           ; $6f8b: $00
    nop                                           ; $6f8c: $00
    nop                                           ; $6f8d: $00
    nop                                           ; $6f8e: $00
    nop                                           ; $6f8f: $00
    nop                                           ; $6f90: $00
    nop                                           ; $6f91: $00
    nop                                           ; $6f92: $00
    nop                                           ; $6f93: $00
    nop                                           ; $6f94: $00
    nop                                           ; $6f95: $00
    nop                                           ; $6f96: $00
    nop                                           ; $6f97: $00
    nop                                           ; $6f98: $00
    nop                                           ; $6f99: $00
    nop                                           ; $6f9a: $00
    nop                                           ; $6f9b: $00
    nop                                           ; $6f9c: $00
    nop                                           ; $6f9d: $00
    nop                                           ; $6f9e: $00
    nop                                           ; $6f9f: $00
    nop                                           ; $6fa0: $00
    nop                                           ; $6fa1: $00
    nop                                           ; $6fa2: $00
    nop                                           ; $6fa3: $00
    nop                                           ; $6fa4: $00
    nop                                           ; $6fa5: $00
    nop                                           ; $6fa6: $00
    nop                                           ; $6fa7: $00
    nop                                           ; $6fa8: $00
    nop                                           ; $6fa9: $00
    nop                                           ; $6faa: $00
    nop                                           ; $6fab: $00
    nop                                           ; $6fac: $00
    nop                                           ; $6fad: $00
    nop                                           ; $6fae: $00
    nop                                           ; $6faf: $00
    nop                                           ; $6fb0: $00
    nop                                           ; $6fb1: $00
    nop                                           ; $6fb2: $00
    nop                                           ; $6fb3: $00
    nop                                           ; $6fb4: $00
    nop                                           ; $6fb5: $00
    nop                                           ; $6fb6: $00
    nop                                           ; $6fb7: $00
    nop                                           ; $6fb8: $00
    nop                                           ; $6fb9: $00
    nop                                           ; $6fba: $00
    nop                                           ; $6fbb: $00
    nop                                           ; $6fbc: $00
    nop                                           ; $6fbd: $00
    nop                                           ; $6fbe: $00
    nop                                           ; $6fbf: $00
    nop                                           ; $6fc0: $00
    nop                                           ; $6fc1: $00
    nop                                           ; $6fc2: $00
    nop                                           ; $6fc3: $00
    nop                                           ; $6fc4: $00
    nop                                           ; $6fc5: $00
    nop                                           ; $6fc6: $00
    nop                                           ; $6fc7: $00
    nop                                           ; $6fc8: $00
    nop                                           ; $6fc9: $00
    nop                                           ; $6fca: $00
    nop                                           ; $6fcb: $00
    nop                                           ; $6fcc: $00
    nop                                           ; $6fcd: $00
    nop                                           ; $6fce: $00
    nop                                           ; $6fcf: $00
    nop                                           ; $6fd0: $00
    nop                                           ; $6fd1: $00
    nop                                           ; $6fd2: $00
    nop                                           ; $6fd3: $00
    nop                                           ; $6fd4: $00
    nop                                           ; $6fd5: $00
    nop                                           ; $6fd6: $00
    nop                                           ; $6fd7: $00
    nop                                           ; $6fd8: $00
    nop                                           ; $6fd9: $00
    nop                                           ; $6fda: $00
    nop                                           ; $6fdb: $00
    nop                                           ; $6fdc: $00
    nop                                           ; $6fdd: $00
    nop                                           ; $6fde: $00
    nop                                           ; $6fdf: $00
    nop                                           ; $6fe0: $00
    nop                                           ; $6fe1: $00
    nop                                           ; $6fe2: $00
    nop                                           ; $6fe3: $00
    nop                                           ; $6fe4: $00
    nop                                           ; $6fe5: $00
    nop                                           ; $6fe6: $00
    nop                                           ; $6fe7: $00
    nop                                           ; $6fe8: $00
    nop                                           ; $6fe9: $00
    nop                                           ; $6fea: $00
    nop                                           ; $6feb: $00
    nop                                           ; $6fec: $00
    nop                                           ; $6fed: $00
    nop                                           ; $6fee: $00
    nop                                           ; $6fef: $00
    nop                                           ; $6ff0: $00
    nop                                           ; $6ff1: $00
    nop                                           ; $6ff2: $00
    nop                                           ; $6ff3: $00
    nop                                           ; $6ff4: $00
    nop                                           ; $6ff5: $00
    nop                                           ; $6ff6: $00
    nop                                           ; $6ff7: $00
    nop                                           ; $6ff8: $00
    nop                                           ; $6ff9: $00
    nop                                           ; $6ffa: $00
    nop                                           ; $6ffb: $00
    nop                                           ; $6ffc: $00
    nop                                           ; $6ffd: $00
    nop                                           ; $6ffe: $00

Call_009_6fff:
    nop                                           ; $6fff: $00
    rst RST_38                                    ; $7000: $ff
    nop                                           ; $7001: $00
    rst RST_38                                    ; $7002: $ff
    nop                                           ; $7003: $00
    rst RST_38                                    ; $7004: $ff
    nop                                           ; $7005: $00
    rst RST_38                                    ; $7006: $ff
    nop                                           ; $7007: $00
    rst RST_38                                    ; $7008: $ff
    nop                                           ; $7009: $00
    db $fc                                        ; $700a: $fc
    ld bc, $07f8                                  ; $700b: $01 $f8 $07
    ldh a, [rTAC]                                 ; $700e: $f0 $07
    rst RST_38                                    ; $7010: $ff
    nop                                           ; $7011: $00
    rst RST_38                                    ; $7012: $ff
    nop                                           ; $7013: $00
    rst RST_38                                    ; $7014: $ff
    nop                                           ; $7015: $00
    rst RST_38                                    ; $7016: $ff
    nop                                           ; $7017: $00
    rst RST_38                                    ; $7018: $ff
    nop                                           ; $7019: $00
    ccf                                           ; $701a: $3f
    ret nz                                        ; $701b: $c0

    rra                                           ; $701c: $1f
    ldh [$ff1f], a                                ; $701d: $e0 $1f
    ldh [rIE], a                                  ; $701f: $e0 $ff
    nop                                           ; $7021: $00
    rst RST_38                                    ; $7022: $ff
    nop                                           ; $7023: $00
    rst RST_38                                    ; $7024: $ff
    nop                                           ; $7025: $00
    rst RST_38                                    ; $7026: $ff
    nop                                           ; $7027: $00
    rst RST_38                                    ; $7028: $ff
    nop                                           ; $7029: $00
    rst RST_38                                    ; $702a: $ff
    rrca                                          ; $702b: $0f
    rst RST_38                                    ; $702c: $ff
    inc bc                                        ; $702d: $03
    rst RST_38                                    ; $702e: $ff
    inc bc                                        ; $702f: $03
    rst RST_38                                    ; $7030: $ff
    nop                                           ; $7031: $00
    rst RST_38                                    ; $7032: $ff
    nop                                           ; $7033: $00
    rst RST_38                                    ; $7034: $ff
    nop                                           ; $7035: $00
    rst RST_38                                    ; $7036: $ff
    nop                                           ; $7037: $00
    rst RST_38                                    ; $7038: $ff
    nop                                           ; $7039: $00
    rst RST_38                                    ; $703a: $ff
    db $db                                        ; $703b: $db
    rst RST_38                                    ; $703c: $ff
    dec de                                        ; $703d: $1b
    rst RST_38                                    ; $703e: $ff
    dec de                                        ; $703f: $1b
    rst RST_38                                    ; $7040: $ff
    nop                                           ; $7041: $00
    rst RST_38                                    ; $7042: $ff
    nop                                           ; $7043: $00
    rst RST_38                                    ; $7044: $ff
    nop                                           ; $7045: $00
    rst RST_38                                    ; $7046: $ff
    nop                                           ; $7047: $00
    rst RST_38                                    ; $7048: $ff
    nop                                           ; $7049: $00
    rst RST_38                                    ; $704a: $ff
    dec bc                                        ; $704b: $0b
    rst RST_38                                    ; $704c: $ff
    sbc e                                         ; $704d: $9b
    rst RST_38                                    ; $704e: $ff
    ei                                            ; $704f: $fb
    rst RST_38                                    ; $7050: $ff
    nop                                           ; $7051: $00
    rst RST_38                                    ; $7052: $ff
    nop                                           ; $7053: $00
    rst RST_38                                    ; $7054: $ff
    nop                                           ; $7055: $00
    rst RST_38                                    ; $7056: $ff
    nop                                           ; $7057: $00
    rst RST_38                                    ; $7058: $ff
    nop                                           ; $7059: $00
    rst RST_38                                    ; $705a: $ff
    di                                            ; $705b: $f3
    rst RST_38                                    ; $705c: $ff
    nop                                           ; $705d: $00
    rst RST_38                                    ; $705e: $ff
    ldh [rIE], a                                  ; $705f: $e0 $ff
    nop                                           ; $7061: $00
    rst RST_38                                    ; $7062: $ff
    nop                                           ; $7063: $00
    rst RST_38                                    ; $7064: $ff
    nop                                           ; $7065: $00
    rst RST_38                                    ; $7066: $ff
    nop                                           ; $7067: $00
    rst RST_38                                    ; $7068: $ff
    nop                                           ; $7069: $00
    rst RST_38                                    ; $706a: $ff
    rst RST_30                                    ; $706b: $f7
    rst RST_38                                    ; $706c: $ff
    add $ff                                       ; $706d: $c6 $ff
    add $ff                                       ; $706f: $c6 $ff
    nop                                           ; $7071: $00
    rst RST_38                                    ; $7072: $ff
    nop                                           ; $7073: $00
    rst RST_38                                    ; $7074: $ff
    nop                                           ; $7075: $00
    rst RST_38                                    ; $7076: $ff
    nop                                           ; $7077: $00
    rst RST_38                                    ; $7078: $ff
    nop                                           ; $7079: $00
    rst RST_38                                    ; $707a: $ff
    call z, Call_009_6dff                         ; $707b: $cc $ff $6d
    rst RST_38                                    ; $707e: $ff
    ld l, l                                       ; $707f: $6d
    rst RST_38                                    ; $7080: $ff
    nop                                           ; $7081: $00
    rst RST_38                                    ; $7082: $ff
    nop                                           ; $7083: $00
    rst RST_38                                    ; $7084: $ff
    nop                                           ; $7085: $00
    rst RST_38                                    ; $7086: $ff
    nop                                           ; $7087: $00
    rst RST_38                                    ; $7088: $ff
    nop                                           ; $7089: $00
    rst RST_38                                    ; $708a: $ff
    di                                            ; $708b: $f3
    rst RST_38                                    ; $708c: $ff
    sbc e                                         ; $708d: $9b
    rst RST_38                                    ; $708e: $ff
    sbc e                                         ; $708f: $9b
    rst RST_38                                    ; $7090: $ff
    nop                                           ; $7091: $00
    rst RST_38                                    ; $7092: $ff
    nop                                           ; $7093: $00
    rst RST_38                                    ; $7094: $ff
    nop                                           ; $7095: $00
    rst RST_38                                    ; $7096: $ff
    nop                                           ; $7097: $00
    rst RST_38                                    ; $7098: $ff
    nop                                           ; $7099: $00
    rst RST_38                                    ; $709a: $ff
    nop                                           ; $709b: $00
    rst RST_38                                    ; $709c: $ff
    nop                                           ; $709d: $00
    rst RST_38                                    ; $709e: $ff
    nop                                           ; $709f: $00
    nop                                           ; $70a0: $00
    nop                                           ; $70a1: $00
    nop                                           ; $70a2: $00
    nop                                           ; $70a3: $00
    nop                                           ; $70a4: $00
    nop                                           ; $70a5: $00
    nop                                           ; $70a6: $00
    nop                                           ; $70a7: $00
    nop                                           ; $70a8: $00
    nop                                           ; $70a9: $00
    nop                                           ; $70aa: $00
    nop                                           ; $70ab: $00
    nop                                           ; $70ac: $00
    nop                                           ; $70ad: $00
    nop                                           ; $70ae: $00
    nop                                           ; $70af: $00
    nop                                           ; $70b0: $00
    nop                                           ; $70b1: $00
    nop                                           ; $70b2: $00
    nop                                           ; $70b3: $00
    nop                                           ; $70b4: $00
    nop                                           ; $70b5: $00
    nop                                           ; $70b6: $00
    nop                                           ; $70b7: $00
    nop                                           ; $70b8: $00
    nop                                           ; $70b9: $00
    nop                                           ; $70ba: $00
    nop                                           ; $70bb: $00
    nop                                           ; $70bc: $00
    nop                                           ; $70bd: $00
    nop                                           ; $70be: $00
    nop                                           ; $70bf: $00
    nop                                           ; $70c0: $00
    nop                                           ; $70c1: $00
    nop                                           ; $70c2: $00
    nop                                           ; $70c3: $00
    nop                                           ; $70c4: $00
    nop                                           ; $70c5: $00
    nop                                           ; $70c6: $00
    nop                                           ; $70c7: $00
    nop                                           ; $70c8: $00
    nop                                           ; $70c9: $00
    nop                                           ; $70ca: $00
    nop                                           ; $70cb: $00
    nop                                           ; $70cc: $00
    nop                                           ; $70cd: $00
    nop                                           ; $70ce: $00
    nop                                           ; $70cf: $00
    nop                                           ; $70d0: $00
    nop                                           ; $70d1: $00
    nop                                           ; $70d2: $00
    nop                                           ; $70d3: $00
    nop                                           ; $70d4: $00
    nop                                           ; $70d5: $00
    nop                                           ; $70d6: $00
    nop                                           ; $70d7: $00
    nop                                           ; $70d8: $00
    nop                                           ; $70d9: $00
    nop                                           ; $70da: $00
    nop                                           ; $70db: $00
    nop                                           ; $70dc: $00
    nop                                           ; $70dd: $00
    nop                                           ; $70de: $00
    nop                                           ; $70df: $00
    nop                                           ; $70e0: $00
    nop                                           ; $70e1: $00
    nop                                           ; $70e2: $00
    nop                                           ; $70e3: $00
    nop                                           ; $70e4: $00
    nop                                           ; $70e5: $00
    nop                                           ; $70e6: $00
    nop                                           ; $70e7: $00
    nop                                           ; $70e8: $00
    nop                                           ; $70e9: $00
    nop                                           ; $70ea: $00
    nop                                           ; $70eb: $00
    nop                                           ; $70ec: $00
    nop                                           ; $70ed: $00
    nop                                           ; $70ee: $00
    nop                                           ; $70ef: $00
    nop                                           ; $70f0: $00
    nop                                           ; $70f1: $00
    nop                                           ; $70f2: $00
    nop                                           ; $70f3: $00
    nop                                           ; $70f4: $00
    nop                                           ; $70f5: $00
    nop                                           ; $70f6: $00
    nop                                           ; $70f7: $00
    nop                                           ; $70f8: $00
    nop                                           ; $70f9: $00
    nop                                           ; $70fa: $00
    nop                                           ; $70fb: $00
    nop                                           ; $70fc: $00
    nop                                           ; $70fd: $00
    nop                                           ; $70fe: $00
    nop                                           ; $70ff: $00
    ldh a, [rIF]                                  ; $7100: $f0 $0f
    ldh a, [rIF]                                  ; $7102: $f0 $0f
    ld hl, sp+$07                                 ; $7104: $f8 $07
    rst RST_38                                    ; $7106: $ff
    nop                                           ; $7107: $00
    rst RST_38                                    ; $7108: $ff
    nop                                           ; $7109: $00
    rst RST_38                                    ; $710a: $ff
    nop                                           ; $710b: $00
    rst RST_38                                    ; $710c: $ff
    nop                                           ; $710d: $00
    rst RST_38                                    ; $710e: $ff
    rst RST_38                                    ; $710f: $ff
    rra                                           ; $7110: $1f
    ret nz                                        ; $7111: $c0

    ccf                                           ; $7112: $3f
    ret nz                                        ; $7113: $c0

    ld a, a                                       ; $7114: $7f
    nop                                           ; $7115: $00
    rst RST_38                                    ; $7116: $ff
    nop                                           ; $7117: $00
    rst RST_38                                    ; $7118: $ff
    nop                                           ; $7119: $00
    rst RST_38                                    ; $711a: $ff
    nop                                           ; $711b: $00
    rst RST_38                                    ; $711c: $ff
    nop                                           ; $711d: $00
    rst RST_38                                    ; $711e: $ff
    rst RST_38                                    ; $711f: $ff
    rst RST_38                                    ; $7120: $ff
    inc bc                                        ; $7121: $03
    rst RST_38                                    ; $7122: $ff
    inc bc                                        ; $7123: $03
    rst RST_38                                    ; $7124: $ff
    inc bc                                        ; $7125: $03
    rst RST_38                                    ; $7126: $ff
    nop                                           ; $7127: $00
    rst RST_38                                    ; $7128: $ff
    nop                                           ; $7129: $00
    rst RST_38                                    ; $712a: $ff
    nop                                           ; $712b: $00
    rst RST_38                                    ; $712c: $ff
    nop                                           ; $712d: $00
    rst RST_38                                    ; $712e: $ff
    rst RST_38                                    ; $712f: $ff
    rst RST_38                                    ; $7130: $ff
    dec de                                        ; $7131: $1b
    rst RST_38                                    ; $7132: $ff
    dec de                                        ; $7133: $1b
    rst RST_38                                    ; $7134: $ff
    dec de                                        ; $7135: $1b
    rst RST_38                                    ; $7136: $ff
    nop                                           ; $7137: $00
    rst RST_38                                    ; $7138: $ff
    nop                                           ; $7139: $00
    rst RST_38                                    ; $713a: $ff
    nop                                           ; $713b: $00
    rst RST_38                                    ; $713c: $ff
    nop                                           ; $713d: $00
    rst RST_38                                    ; $713e: $ff
    rst RST_38                                    ; $713f: $ff
    rst RST_38                                    ; $7140: $ff
    ld l, e                                       ; $7141: $6b
    rst RST_38                                    ; $7142: $ff
    dec bc                                        ; $7143: $0b
    rst RST_38                                    ; $7144: $ff
    dec bc                                        ; $7145: $0b
    rst RST_38                                    ; $7146: $ff
    nop                                           ; $7147: $00
    rst RST_38                                    ; $7148: $ff
    nop                                           ; $7149: $00
    rst RST_38                                    ; $714a: $ff
    nop                                           ; $714b: $00
    rst RST_38                                    ; $714c: $ff
    nop                                           ; $714d: $00
    rst RST_38                                    ; $714e: $ff
    rst RST_38                                    ; $714f: $ff
    rst RST_38                                    ; $7150: $ff
    nop                                           ; $7151: $00
    rst RST_38                                    ; $7152: $ff
    nop                                           ; $7153: $00
    rst RST_38                                    ; $7154: $ff
    ldh a, [rIE]                                  ; $7155: $f0 $ff
    nop                                           ; $7157: $00
    rst RST_38                                    ; $7158: $ff
    nop                                           ; $7159: $00
    rst RST_38                                    ; $715a: $ff
    nop                                           ; $715b: $00
    rst RST_38                                    ; $715c: $ff
    nop                                           ; $715d: $00
    rst RST_38                                    ; $715e: $ff
    rst RST_38                                    ; $715f: $ff
    rst RST_38                                    ; $7160: $ff
    rst RST_00                                    ; $7161: $c7
    rst RST_38                                    ; $7162: $ff
    add $ff                                       ; $7163: $c6 $ff
    add $ff                                       ; $7165: $c6 $ff
    nop                                           ; $7167: $00
    rst RST_38                                    ; $7168: $ff
    nop                                           ; $7169: $00
    rst RST_38                                    ; $716a: $ff
    nop                                           ; $716b: $00
    rst RST_38                                    ; $716c: $ff
    nop                                           ; $716d: $00
    rst RST_38                                    ; $716e: $ff
    rst RST_38                                    ; $716f: $ff
    rst RST_38                                    ; $7170: $ff
    call Call_009_6dff                            ; $7171: $cd $ff $6d
    rst RST_38                                    ; $7174: $ff
    ld l, l                                       ; $7175: $6d
    rst RST_38                                    ; $7176: $ff
    nop                                           ; $7177: $00
    rst RST_38                                    ; $7178: $ff
    nop                                           ; $7179: $00
    rst RST_38                                    ; $717a: $ff
    nop                                           ; $717b: $00
    rst RST_38                                    ; $717c: $ff
    nop                                           ; $717d: $00
    rst RST_38                                    ; $717e: $ff
    rst RST_38                                    ; $717f: $ff
    rst RST_38                                    ; $7180: $ff
    ei                                            ; $7181: $fb
    rst RST_38                                    ; $7182: $ff
    sbc e                                         ; $7183: $9b
    rst RST_38                                    ; $7184: $ff
    sbc e                                         ; $7185: $9b
    rst RST_38                                    ; $7186: $ff
    nop                                           ; $7187: $00
    rst RST_38                                    ; $7188: $ff
    nop                                           ; $7189: $00
    rst RST_38                                    ; $718a: $ff
    nop                                           ; $718b: $00
    rst RST_38                                    ; $718c: $ff
    nop                                           ; $718d: $00
    rst RST_38                                    ; $718e: $ff
    rst RST_38                                    ; $718f: $ff
    rst RST_38                                    ; $7190: $ff
    nop                                           ; $7191: $00
    rst RST_38                                    ; $7192: $ff
    nop                                           ; $7193: $00
    rst RST_38                                    ; $7194: $ff
    ldh a, [rIE]                                  ; $7195: $f0 $ff
    nop                                           ; $7197: $00
    rst RST_38                                    ; $7198: $ff
    nop                                           ; $7199: $00
    rst RST_38                                    ; $719a: $ff
    nop                                           ; $719b: $00
    rst RST_38                                    ; $719c: $ff
    nop                                           ; $719d: $00
    rst RST_38                                    ; $719e: $ff
    rst RST_38                                    ; $719f: $ff
    rst RST_38                                    ; $71a0: $ff
    nop                                           ; $71a1: $00
    rst RST_38                                    ; $71a2: $ff
    nop                                           ; $71a3: $00
    rst RST_38                                    ; $71a4: $ff
    nop                                           ; $71a5: $00
    rst RST_38                                    ; $71a6: $ff
    nop                                           ; $71a7: $00
    rst RST_38                                    ; $71a8: $ff
    nop                                           ; $71a9: $00
    rst RST_38                                    ; $71aa: $ff
    nop                                           ; $71ab: $00
    rst RST_38                                    ; $71ac: $ff
    nop                                           ; $71ad: $00
    rst RST_38                                    ; $71ae: $ff
    rst RST_38                                    ; $71af: $ff
    rst RST_38                                    ; $71b0: $ff
    rlca                                          ; $71b1: $07
    rst RST_38                                    ; $71b2: $ff
    ld [$06ff], sp                                ; $71b3: $08 $ff $06
    rst RST_38                                    ; $71b6: $ff
    ld [bc], a                                    ; $71b7: $02
    rst RST_38                                    ; $71b8: $ff
    ld [bc], a                                    ; $71b9: $02
    rst RST_38                                    ; $71ba: $ff
    ld [bc], a                                    ; $71bb: $02
    rst RST_38                                    ; $71bc: $ff
    ld [bc], a                                    ; $71bd: $02

jr_009_71be:
    rst RST_38                                    ; $71be: $ff
    ld bc, $e6fe                                  ; $71bf: $01 $fe $e6

jr_009_71c2:
    rst RST_38                                    ; $71c2: $ff
    add hl, de                                    ; $71c3: $19
    rst RST_38                                    ; $71c4: $ff
    ld l, c                                       ; $71c5: $69

jr_009_71c6:
    rst RST_38                                    ; $71c6: $ff
    ld c, c                                       ; $71c7: $49
    rst RST_28                                    ; $71c8: $ef
    ld c, c                                       ; $71c9: $49
    rst RST_18                                    ; $71ca: $df
    ld c, c                                       ; $71cb: $49
    rst RST_28                                    ; $71cc: $ef
    ld c, c                                       ; $71cd: $49
    rst RST_10                                    ; $71ce: $d7
    add [hl]                                      ; $71cf: $86
    ld a, a                                       ; $71d0: $7f
    ld h, d                                       ; $71d1: $62
    rst RST_38                                    ; $71d2: $ff
    sub l                                         ; $71d3: $95
    rst RST_38                                    ; $71d4: $ff
    adc c                                         ; $71d5: $89
    rst RST_38                                    ; $71d6: $ff
    add c                                         ; $71d7: $81
    rst RST_38                                    ; $71d8: $ff
    sub l                                         ; $71d9: $95
    rst RST_38                                    ; $71da: $ff
    sbc l                                         ; $71db: $9d
    rst RST_30                                    ; $71dc: $f7
    sub l                                         ; $71dd: $95
    ld h, d                                       ; $71de: $62
    ld h, d                                       ; $71df: $62
    rst RST_38                                    ; $71e0: $ff
    ld a, [hl]                                    ; $71e1: $7e
    rst RST_38                                    ; $71e2: $ff
    add c                                         ; $71e3: $81
    rst RST_38                                    ; $71e4: $ff
    sbc [hl]                                      ; $71e5: $9e
    rst RST_38                                    ; $71e6: $ff
    add h                                         ; $71e7: $84
    rst RST_38                                    ; $71e8: $ff
    sbc b                                         ; $71e9: $98
    rst RST_38                                    ; $71ea: $ff
    sbc [hl]                                      ; $71eb: $9e
    rst RST_38                                    ; $71ec: $ff
    add c                                         ; $71ed: $81
    rst RST_38                                    ; $71ee: $ff
    ld a, [hl]                                    ; $71ef: $7e
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
    ld d, l                                       ; $7201: $55
    jr jr_009_71be                                ; $7202: $18 $ba

    jr c, jr_009_7283                             ; $7204: $38 $7d

    jr jr_009_71c2                                ; $7206: $18 $ba

    jr jr_009_7267                                ; $7208: $18 $5d

    jr jr_009_71c6                                ; $720a: $18 $ba

    jr jr_009_726b                                ; $720c: $18 $5d

    nop                                           ; $720e: $00
    xor d                                         ; $720f: $aa
    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    inc a                                         ; $7212: $3c
    inc a                                         ; $7213: $3c
    ld h, [hl]                                    ; $7214: $66
    ld h, [hl]                                    ; $7215: $66
    ld b, $06                                     ; $7216: $06 $06
    inc a                                         ; $7218: $3c
    inc a                                         ; $7219: $3c
    ld h, b                                       ; $721a: $60
    ld h, b                                       ; $721b: $60
    ld a, [hl]                                    ; $721c: $7e
    ld a, [hl]                                    ; $721d: $7e
    nop                                           ; $721e: $00
    nop                                           ; $721f: $00
    xor d                                         ; $7220: $aa
    nop                                           ; $7221: $00
    ld a, l                                       ; $7222: $7d
    inc a                                         ; $7223: $3c
    xor $66                                       ; $7224: $ee $66
    ld e, l                                       ; $7226: $5d
    inc c                                         ; $7227: $0c
    xor $66                                       ; $7228: $ee $66
    ld [hl], a                                    ; $722a: $77
    ld h, [hl]                                    ; $722b: $66
    cp [hl]                                       ; $722c: $be
    inc a                                         ; $722d: $3c
    ld d, l                                       ; $722e: $55
    nop                                           ; $722f: $00
    rst RST_38                                    ; $7230: $ff
    nop                                           ; $7231: $00
    rst RST_38                                    ; $7232: $ff
    inc c                                         ; $7233: $0c
    rst RST_38                                    ; $7234: $ff
    inc e                                         ; $7235: $1c
    rst RST_38                                    ; $7236: $ff
    inc l                                         ; $7237: $2c
    rst RST_38                                    ; $7238: $ff
    ld l, h                                       ; $7239: $6c
    rst RST_38                                    ; $723a: $ff
    ld a, [hl]                                    ; $723b: $7e
    rst RST_38                                    ; $723c: $ff
    inc c                                         ; $723d: $0c
    rst RST_38                                    ; $723e: $ff
    nop                                           ; $723f: $00
    rst RST_38                                    ; $7240: $ff
    nop                                           ; $7241: $00
    rst RST_38                                    ; $7242: $ff
    ld a, [hl]                                    ; $7243: $7e
    rst RST_38                                    ; $7244: $ff
    ld h, b                                       ; $7245: $60
    rst RST_38                                    ; $7246: $ff
    ld a, h                                       ; $7247: $7c
    rst RST_38                                    ; $7248: $ff
    ld b, $ff                                     ; $7249: $06 $ff
    ld h, [hl]                                    ; $724b: $66
    rst RST_38                                    ; $724c: $ff
    inc a                                         ; $724d: $3c
    rst RST_38                                    ; $724e: $ff
    nop                                           ; $724f: $00
    nop                                           ; $7250: $00
    rst RST_38                                    ; $7251: $ff
    nop                                           ; $7252: $00
    rst RST_38                                    ; $7253: $ff
    nop                                           ; $7254: $00
    rst RST_38                                    ; $7255: $ff
    nop                                           ; $7256: $00
    rst RST_38                                    ; $7257: $ff
    nop                                           ; $7258: $00
    rst RST_38                                    ; $7259: $ff
    nop                                           ; $725a: $00
    rst RST_38                                    ; $725b: $ff
    nop                                           ; $725c: $00
    rst RST_38                                    ; $725d: $ff
    nop                                           ; $725e: $00
    rst RST_38                                    ; $725f: $ff
    nop                                           ; $7260: $00
    ld d, l                                       ; $7261: $55
    nop                                           ; $7262: $00
    rst RST_38                                    ; $7263: $ff
    nop                                           ; $7264: $00
    xor d                                         ; $7265: $aa
    nop                                           ; $7266: $00

jr_009_7267:
    rst RST_38                                    ; $7267: $ff
    nop                                           ; $7268: $00
    ld d, l                                       ; $7269: $55
    nop                                           ; $726a: $00

jr_009_726b:
    rst RST_38                                    ; $726b: $ff
    nop                                           ; $726c: $00
    xor d                                         ; $726d: $aa
    nop                                           ; $726e: $00
    rst RST_38                                    ; $726f: $ff
    nop                                           ; $7270: $00
    ld d, l                                       ; $7271: $55
    nop                                           ; $7272: $00
    xor d                                         ; $7273: $aa
    nop                                           ; $7274: $00
    ld d, l                                       ; $7275: $55
    nop                                           ; $7276: $00
    xor d                                         ; $7277: $aa
    nop                                           ; $7278: $00
    ld d, l                                       ; $7279: $55
    nop                                           ; $727a: $00
    xor d                                         ; $727b: $aa
    nop                                           ; $727c: $00
    ld d, l                                       ; $727d: $55
    nop                                           ; $727e: $00
    xor d                                         ; $727f: $aa
    nop                                           ; $7280: $00
    nop                                           ; $7281: $00
    nop                                           ; $7282: $00

jr_009_7283:
    ld d, l                                       ; $7283: $55
    nop                                           ; $7284: $00
    nop                                           ; $7285: $00
    nop                                           ; $7286: $00
    xor d                                         ; $7287: $aa
    nop                                           ; $7288: $00
    nop                                           ; $7289: $00
    nop                                           ; $728a: $00
    ld d, l                                       ; $728b: $55
    nop                                           ; $728c: $00
    nop                                           ; $728d: $00
    nop                                           ; $728e: $00
    xor d                                         ; $728f: $aa
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
    xor d                                         ; $72a0: $aa
    nop                                           ; $72a1: $00
    nop                                           ; $72a2: $00
    nop                                           ; $72a3: $00
    ld d, l                                       ; $72a4: $55
    nop                                           ; $72a5: $00
    nop                                           ; $72a6: $00
    nop                                           ; $72a7: $00
    xor d                                         ; $72a8: $aa
    nop                                           ; $72a9: $00
    nop                                           ; $72aa: $00
    nop                                           ; $72ab: $00
    ld d, l                                       ; $72ac: $55
    nop                                           ; $72ad: $00
    nop                                           ; $72ae: $00
    nop                                           ; $72af: $00
    xor d                                         ; $72b0: $aa
    nop                                           ; $72b1: $00
    ld d, l                                       ; $72b2: $55
    nop                                           ; $72b3: $00
    xor d                                         ; $72b4: $aa
    nop                                           ; $72b5: $00
    ld d, l                                       ; $72b6: $55
    nop                                           ; $72b7: $00
    xor d                                         ; $72b8: $aa
    nop                                           ; $72b9: $00
    ld d, l                                       ; $72ba: $55
    nop                                           ; $72bb: $00
    xor d                                         ; $72bc: $aa
    nop                                           ; $72bd: $00
    ld d, l                                       ; $72be: $55
    nop                                           ; $72bf: $00
    rst RST_38                                    ; $72c0: $ff
    nop                                           ; $72c1: $00
    xor d                                         ; $72c2: $aa
    nop                                           ; $72c3: $00
    rst RST_38                                    ; $72c4: $ff
    nop                                           ; $72c5: $00
    ld d, l                                       ; $72c6: $55
    nop                                           ; $72c7: $00
    rst RST_38                                    ; $72c8: $ff
    nop                                           ; $72c9: $00
    xor d                                         ; $72ca: $aa
    nop                                           ; $72cb: $00
    rst RST_38                                    ; $72cc: $ff
    nop                                           ; $72cd: $00
    ld d, l                                       ; $72ce: $55
    nop                                           ; $72cf: $00
    rst RST_38                                    ; $72d0: $ff
    nop                                           ; $72d1: $00
    rst RST_38                                    ; $72d2: $ff
    nop                                           ; $72d3: $00
    rst RST_38                                    ; $72d4: $ff
    nop                                           ; $72d5: $00
    rst RST_38                                    ; $72d6: $ff
    nop                                           ; $72d7: $00
    rst RST_38                                    ; $72d8: $ff
    nop                                           ; $72d9: $00
    rst RST_38                                    ; $72da: $ff
    nop                                           ; $72db: $00
    rst RST_38                                    ; $72dc: $ff
    nop                                           ; $72dd: $00
    rst RST_38                                    ; $72de: $ff
    nop                                           ; $72df: $00
    rst RST_38                                    ; $72e0: $ff
    rlca                                          ; $72e1: $07

jr_009_72e2:
    ld sp, hl                                     ; $72e2: $f9
    ld [$08f8], sp                                ; $72e3: $08 $f8 $08
    ld hl, sp+$0c                                 ; $72e6: $f8 $0c
    db $fc                                        ; $72e8: $fc
    ld a, a                                       ; $72e9: $7f

jr_009_72ea:
    cp e                                          ; $72ea: $bb
    add b                                         ; $72eb: $80
    add b                                         ; $72ec: $80
    add b                                         ; $72ed: $80
    pop bc                                        ; $72ee: $c1
    xor h                                         ; $72ef: $ac
    ld b, c                                       ; $72f0: $41
    rst RST_38                                    ; $72f1: $ff
    and d                                         ; $72f2: $a2
    ld [$0800], sp                                ; $72f3: $08 $00 $08
    nop                                           ; $72f6: $00
    sbc d                                         ; $72f7: $9a
    sbc h                                         ; $72f8: $9c
    rst RST_38                                    ; $72f9: $ff
    db $dd                                        ; $72fa: $dd
    add b                                         ; $72fb: $80
    nop                                           ; $72fc: $00
    add b                                         ; $72fd: $80
    add b                                         ; $72fe: $80
    push hl                                       ; $72ff: $e5
    nop                                           ; $7300: $00
    ld d, l                                       ; $7301: $55
    nop                                           ; $7302: $00
    xor d                                         ; $7303: $aa
    nop                                           ; $7304: $00
    ld d, l                                       ; $7305: $55
    nop                                           ; $7306: $00
    xor d                                         ; $7307: $aa
    nop                                           ; $7308: $00
    ld d, l                                       ; $7309: $55
    nop                                           ; $730a: $00
    xor d                                         ; $730b: $aa
    nop                                           ; $730c: $00
    ld d, l                                       ; $730d: $55
    nop                                           ; $730e: $00
    xor d                                         ; $730f: $aa
    nop                                           ; $7310: $00
    ld d, l                                       ; $7311: $55
    nop                                           ; $7312: $00
    xor d                                         ; $7313: $aa
    nop                                           ; $7314: $00
    ld d, l                                       ; $7315: $55
    nop                                           ; $7316: $00
    xor d                                         ; $7317: $aa
    nop                                           ; $7318: $00
    ld d, l                                       ; $7319: $55
    nop                                           ; $731a: $00
    xor d                                         ; $731b: $aa
    nop                                           ; $731c: $00
    ld d, l                                       ; $731d: $55
    nop                                           ; $731e: $00
    xor d                                         ; $731f: $aa
    jr jr_009_737f                                ; $7320: $18 $5d

    inc a                                         ; $7322: $3c
    and [hl]                                      ; $7323: $a6
    inc a                                         ; $7324: $3c
    ld h, l                                       ; $7325: $65
    jr jr_009_72e2                                ; $7326: $18 $ba

    jr jr_009_7387                                ; $7328: $18 $5d

    inc a                                         ; $732a: $3c
    and [hl]                                      ; $732b: $a6
    inc a                                         ; $732c: $3c
    ld h, l                                       ; $732d: $65
    jr jr_009_72ea                                ; $732e: $18 $ba

    nop                                           ; $7330: $00
    ld d, l                                       ; $7331: $55
    nop                                           ; $7332: $00
    xor d                                         ; $7333: $aa
    nop                                           ; $7334: $00
    ld d, l                                       ; $7335: $55
    nop                                           ; $7336: $00
    xor d                                         ; $7337: $aa
    nop                                           ; $7338: $00
    ld d, l                                       ; $7339: $55
    nop                                           ; $733a: $00
    xor d                                         ; $733b: $aa
    nop                                           ; $733c: $00
    ld d, l                                       ; $733d: $55
    nop                                           ; $733e: $00
    xor d                                         ; $733f: $aa
    nop                                           ; $7340: $00
    ld d, l                                       ; $7341: $55
    nop                                           ; $7342: $00
    xor d                                         ; $7343: $aa
    nop                                           ; $7344: $00
    ld d, l                                       ; $7345: $55
    nop                                           ; $7346: $00
    xor d                                         ; $7347: $aa
    nop                                           ; $7348: $00
    ld d, l                                       ; $7349: $55
    nop                                           ; $734a: $00
    xor d                                         ; $734b: $aa
    nop                                           ; $734c: $00
    ld d, l                                       ; $734d: $55
    nop                                           ; $734e: $00
    xor d                                         ; $734f: $aa
    nop                                           ; $7350: $00
    ld d, l                                       ; $7351: $55
    nop                                           ; $7352: $00
    xor d                                         ; $7353: $aa
    nop                                           ; $7354: $00
    ld d, l                                       ; $7355: $55
    nop                                           ; $7356: $00
    xor d                                         ; $7357: $aa
    nop                                           ; $7358: $00
    ld d, l                                       ; $7359: $55
    nop                                           ; $735a: $00
    xor d                                         ; $735b: $aa
    nop                                           ; $735c: $00
    ld d, l                                       ; $735d: $55
    nop                                           ; $735e: $00
    xor d                                         ; $735f: $aa
    nop                                           ; $7360: $00
    ld d, l                                       ; $7361: $55
    nop                                           ; $7362: $00
    xor d                                         ; $7363: $aa
    nop                                           ; $7364: $00
    ld d, l                                       ; $7365: $55
    nop                                           ; $7366: $00
    xor d                                         ; $7367: $aa
    nop                                           ; $7368: $00
    ld d, l                                       ; $7369: $55
    nop                                           ; $736a: $00
    xor d                                         ; $736b: $aa
    nop                                           ; $736c: $00
    ld d, l                                       ; $736d: $55
    nop                                           ; $736e: $00
    xor d                                         ; $736f: $aa
    nop                                           ; $7370: $00
    ld d, l                                       ; $7371: $55
    nop                                           ; $7372: $00
    xor d                                         ; $7373: $aa
    nop                                           ; $7374: $00
    ld d, l                                       ; $7375: $55
    nop                                           ; $7376: $00
    xor d                                         ; $7377: $aa
    nop                                           ; $7378: $00
    ld d, l                                       ; $7379: $55
    nop                                           ; $737a: $00
    xor d                                         ; $737b: $aa
    nop                                           ; $737c: $00
    ld d, l                                       ; $737d: $55
    nop                                           ; $737e: $00

jr_009_737f:
    xor d                                         ; $737f: $aa
    rst RST_38                                    ; $7380: $ff
    nop                                           ; $7381: $00
    rst RST_38                                    ; $7382: $ff
    nop                                           ; $7383: $00
    rst RST_38                                    ; $7384: $ff
    inc bc                                        ; $7385: $03
    db $fc                                        ; $7386: $fc

jr_009_7387:
    dec b                                         ; $7387: $05
    ld hl, sp+$0b                                 ; $7388: $f8 $0b
    ldh a, [rNR22]                                ; $738a: $f0 $17
    pop hl                                        ; $738c: $e1
    cpl                                           ; $738d: $2f
    ldh [c], a                                    ; $738e: $e2
    ld l, $ff                                     ; $738f: $2e $ff
    nop                                           ; $7391: $00
    rst RST_38                                    ; $7392: $ff
    nop                                           ; $7393: $00
    rst RST_38                                    ; $7394: $ff
    ld b, $f9                                     ; $7395: $06 $f9
    adc l                                         ; $7397: $8d
    ld [hl], b                                    ; $7398: $70
    sbc $a8                                       ; $7399: $de $a8
    xor a                                         ; $739b: $af
    inc h                                         ; $739c: $24
    ld [hl], a                                    ; $739d: $77
    ld d, d                                       ; $739e: $52
    ei                                            ; $739f: $fb
    rst RST_38                                    ; $73a0: $ff
    nop                                           ; $73a1: $00
    rst RST_38                                    ; $73a2: $ff
    nop                                           ; $73a3: $00
    rst RST_38                                    ; $73a4: $ff
    nop                                           ; $73a5: $00
    rst RST_38                                    ; $73a6: $ff
    nop                                           ; $73a7: $00
    rst RST_38                                    ; $73a8: $ff
    add b                                         ; $73a9: $80
    ld a, a                                       ; $73aa: $7f
    ld b, b                                       ; $73ab: $40
    ccf                                           ; $73ac: $3f
    and b                                         ; $73ad: $a0
    ccf                                           ; $73ae: $3f
    and b                                         ; $73af: $a0
    rst RST_38                                    ; $73b0: $ff
    rst RST_38                                    ; $73b1: $ff
    rst RST_38                                    ; $73b2: $ff
    sbc c                                         ; $73b3: $99
    rst RST_38                                    ; $73b4: $ff
    sbc c                                         ; $73b5: $99
    ld a, [hl]                                    ; $73b6: $7e
    jp $e73c                                      ; $73b7: $c3 $3c $e7


    inc a                                         ; $73ba: $3c
    rst RST_20                                    ; $73bb: $e7
    inc a                                         ; $73bc: $3c
    rst RST_20                                    ; $73bd: $e7
    jr c, @+$01                                   ; $73be: $38 $ff

    rst RST_38                                    ; $73c0: $ff
    rst RST_38                                    ; $73c1: $ff
    ld a, a                                       ; $73c2: $7f
    ld b, e                                       ; $73c3: $43
    rst RST_38                                    ; $73c4: $ff
    sbc c                                         ; $73c5: $99
    rst RST_38                                    ; $73c6: $ff
    sbc c                                         ; $73c7: $99
    rst RST_38                                    ; $73c8: $ff
    sbc c                                         ; $73c9: $99
    rst RST_38                                    ; $73ca: $ff
    sbc c                                         ; $73cb: $99
    ld a, a                                       ; $73cc: $7f
    jp $ff3d                                      ; $73cd: $c3 $3d $ff


    rst RST_38                                    ; $73d0: $ff
    ld h, [hl]                                    ; $73d1: $66
    rst RST_38                                    ; $73d2: $ff
    sbc c                                         ; $73d3: $99
    rst RST_38                                    ; $73d4: $ff
    sbc c                                         ; $73d5: $99
    rst RST_38                                    ; $73d6: $ff
    sbc c                                         ; $73d7: $99
    rst RST_38                                    ; $73d8: $ff
    sbc c                                         ; $73d9: $99
    rst RST_38                                    ; $73da: $ff
    sbc c                                         ; $73db: $99
    rst RST_38                                    ; $73dc: $ff
    ld b, e                                       ; $73dd: $43
    db $fc                                        ; $73de: $fc
    ccf                                           ; $73df: $3f
    rst RST_38                                    ; $73e0: $ff
    ld a, h                                       ; $73e1: $7c
    rst RST_38                                    ; $73e2: $ff
    add d                                         ; $73e3: $82
    rst RST_38                                    ; $73e4: $ff
    sbc c                                         ; $73e5: $99
    rst RST_38                                    ; $73e6: $ff
    sbc c                                         ; $73e7: $99
    rst RST_38                                    ; $73e8: $ff
    add d                                         ; $73e9: $82
    rst RST_38                                    ; $73ea: $ff
    sbc c                                         ; $73eb: $99
    rst RST_38                                    ; $73ec: $ff
    sbc c                                         ; $73ed: $99
    rst RST_20                                    ; $73ee: $e7
    or $7f                                        ; $73ef: $f6 $7f
    nop                                           ; $73f1: $00
    ccf                                           ; $73f2: $3f
    nop                                           ; $73f3: $00
    rra                                           ; $73f4: $1f
    nop                                           ; $73f5: $00
    rrca                                          ; $73f6: $0f
    nop                                           ; $73f7: $00
    rlca                                          ; $73f8: $07
    nop                                           ; $73f9: $00
    inc bc                                        ; $73fa: $03
    nop                                           ; $73fb: $00
    ld bc, $0000                                  ; $73fc: $01 $00 $00
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
    jr jr_009_743a                                ; $7420: $18 $18

    inc a                                         ; $7422: $3c
    inc h                                         ; $7423: $24
    inc a                                         ; $7424: $3c
    inc h                                         ; $7425: $24
    jr jr_009_7440                                ; $7426: $18 $18

    jr jr_009_7442                                ; $7428: $18 $18

    inc a                                         ; $742a: $3c
    inc h                                         ; $742b: $24
    inc a                                         ; $742c: $3c
    inc h                                         ; $742d: $24
    jr jr_009_7448                                ; $742e: $18 $18

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

jr_009_743a:
    nop                                           ; $743a: $00
    nop                                           ; $743b: $00
    nop                                           ; $743c: $00
    nop                                           ; $743d: $00
    nop                                           ; $743e: $00
    nop                                           ; $743f: $00

jr_009_7440:
    nop                                           ; $7440: $00
    nop                                           ; $7441: $00

jr_009_7442:
    nop                                           ; $7442: $00
    nop                                           ; $7443: $00
    nop                                           ; $7444: $00
    nop                                           ; $7445: $00
    nop                                           ; $7446: $00
    nop                                           ; $7447: $00

jr_009_7448:
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
    call nz, $c45d                                ; $7480: $c4 $5d $c4
    ld e, l                                       ; $7483: $5d
    adc b                                         ; $7484: $88
    cp e                                          ; $7485: $bb
    adc b                                         ; $7486: $88
    cp e                                          ; $7487: $bb
    sbc c                                         ; $7488: $99
    cp e                                          ; $7489: $bb
    sbc c                                         ; $748a: $99
    cp e                                          ; $748b: $bb
    cp e                                          ; $748c: $bb
    xor d                                         ; $748d: $aa
    ei                                            ; $748e: $fb
    ld l, d                                       ; $748f: $6a
    ld d, c                                       ; $7490: $51
    db $fd                                        ; $7491: $fd
    sub c                                         ; $7492: $91
    cp l                                          ; $7493: $bd
    sbc c                                         ; $7494: $99
    cp l                                          ; $7495: $bd
    sbc c                                         ; $7496: $99
    cp l                                          ; $7497: $bd
    sbc c                                         ; $7498: $99
    cp l                                          ; $7499: $bd
    sbc c                                         ; $749a: $99
    cp l                                          ; $749b: $bd
    reti                                          ; $749c: $d9


    db $fd                                        ; $749d: $fd
    db $dd                                        ; $749e: $dd
    push af                                       ; $749f: $f5
    rra                                           ; $74a0: $1f
    ret nc                                        ; $74a1: $d0

    rra                                           ; $74a2: $1f
    ret nc                                        ; $74a3: $d0

    rrca                                          ; $74a4: $0f
    add sp, $0f                                   ; $74a5: $e8 $0f
    add sp, -$71                                  ; $74a7: $e8 $8f
    add sp, -$31                                  ; $74a9: $e8 $cf
    ld l, b                                       ; $74ab: $68
    rst RST_28                                    ; $74ac: $ef
    jr z, @+$01                                   ; $74ad: $28 $ff

    jr jr_009_74d1                                ; $74af: $18 $20

    rst RST_38                                    ; $74b1: $ff
    jr nz, @+$01                                  ; $74b2: $20 $ff

    inc hl                                        ; $74b4: $23
    rst RST_38                                    ; $74b5: $ff
    daa                                           ; $74b6: $27
    rst RST_38                                    ; $74b7: $ff
    daa                                           ; $74b8: $27
    rst RST_38                                    ; $74b9: $ff
    daa                                           ; $74ba: $27
    rst RST_38                                    ; $74bb: $ff
    daa                                           ; $74bc: $27
    rst RST_38                                    ; $74bd: $ff
    daa                                           ; $74be: $27
    rst RST_38                                    ; $74bf: $ff
    ld bc, $01f7                                  ; $74c0: $01 $f7 $01
    rst RST_30                                    ; $74c3: $f7
    ld bc, $8177                                  ; $74c4: $01 $77 $81
    or a                                          ; $74c7: $b7
    add c                                         ; $74c8: $81
    or a                                          ; $74c9: $b7
    add c                                         ; $74ca: $81
    or a                                          ; $74cb: $b7
    add c                                         ; $74cc: $81
    or a                                          ; $74cd: $b7
    add c                                         ; $74ce: $81
    or a                                          ; $74cf: $b7
    ret                                           ; $74d0: $c9


jr_009_74d1:
    ld l, l                                       ; $74d1: $6d
    ret                                           ; $74d2: $c9


    ld e, c                                       ; $74d3: $59
    jp nc, $f273                                  ; $74d4: $d2 $73 $f2

    halt                                          ; $74d7: $76
    or $5e                                        ; $74d8: $f6 $5e
    cp $1b                                        ; $74da: $fe $1b
    rst RST_38                                    ; $74dc: $ff
    inc de                                        ; $74dd: $13
    db $fd                                        ; $74de: $fd
    inc bc                                        ; $74df: $03
    ld d, c                                       ; $74e0: $51
    ei                                            ; $74e1: $fb
    ld c, c                                       ; $74e2: $49

jr_009_74e3:
    db $dd                                        ; $74e3: $dd
    ld c, c                                       ; $74e4: $49
    ld c, a                                       ; $74e5: $4f
    ld l, l                                       ; $74e6: $6d
    ld l, a                                       ; $74e7: $6f
    ld l, a                                       ; $74e8: $6f
    ld a, e                                       ; $74e9: $7b
    ld a, a                                       ; $74ea: $7f
    ld e, c                                       ; $74eb: $59
    ld a, a                                       ; $74ec: $7f
    ret z                                         ; $74ed: $c8

    ld a, a                                       ; $74ee: $7f
    ret nz                                        ; $74ef: $c0

    cp $00                                        ; $74f0: $fe $00
    db $fd                                        ; $74f2: $fd
    nop                                           ; $74f3: $00
    ld a, [$f500]                                 ; $74f4: $fa $00 $f5
    nop                                           ; $74f7: $00
    ld [$d500], a                                 ; $74f8: $ea $00 $d5
    nop                                           ; $74fb: $00
    xor d                                         ; $74fc: $aa
    nop                                           ; $74fd: $00
    ld d, l                                       ; $74fe: $55
    nop                                           ; $74ff: $00
    xor d                                         ; $7500: $aa
    nop                                           ; $7501: $00
    ld d, l                                       ; $7502: $55
    nop                                           ; $7503: $00
    xor d                                         ; $7504: $aa
    nop                                           ; $7505: $00
    ld d, l                                       ; $7506: $55
    nop                                           ; $7507: $00
    xor d                                         ; $7508: $aa
    nop                                           ; $7509: $00
    ld d, l                                       ; $750a: $55
    nop                                           ; $750b: $00
    xor d                                         ; $750c: $aa
    nop                                           ; $750d: $00
    ld d, l                                       ; $750e: $55
    nop                                           ; $750f: $00
    xor d                                         ; $7510: $aa
    nop                                           ; $7511: $00
    ld d, l                                       ; $7512: $55
    nop                                           ; $7513: $00
    xor d                                         ; $7514: $aa
    nop                                           ; $7515: $00
    ld d, l                                       ; $7516: $55
    nop                                           ; $7517: $00
    xor d                                         ; $7518: $aa
    nop                                           ; $7519: $00
    ld d, l                                       ; $751a: $55
    nop                                           ; $751b: $00
    xor d                                         ; $751c: $aa
    nop                                           ; $751d: $00
    ld d, l                                       ; $751e: $55
    nop                                           ; $751f: $00
    cp d                                          ; $7520: $ba
    jr jr_009_75a0                                ; $7521: $18 $7d

    inc h                                         ; $7523: $24
    cp [hl]                                       ; $7524: $be
    inc h                                         ; $7525: $24
    ld e, l                                       ; $7526: $5d
    jr jr_009_74e3                                ; $7527: $18 $ba

    jr jr_009_75a8                                ; $7529: $18 $7d

    inc h                                         ; $752b: $24
    cp [hl]                                       ; $752c: $be
    inc h                                         ; $752d: $24
    ld e, l                                       ; $752e: $5d
    jr @-$54                                      ; $752f: $18 $aa

    nop                                           ; $7531: $00
    ld d, l                                       ; $7532: $55
    nop                                           ; $7533: $00
    xor d                                         ; $7534: $aa
    nop                                           ; $7535: $00
    ld d, l                                       ; $7536: $55
    nop                                           ; $7537: $00

jr_009_7538:
    xor d                                         ; $7538: $aa
    nop                                           ; $7539: $00
    ld d, l                                       ; $753a: $55
    nop                                           ; $753b: $00
    xor d                                         ; $753c: $aa
    nop                                           ; $753d: $00
    ld d, l                                       ; $753e: $55
    nop                                           ; $753f: $00
    xor d                                         ; $7540: $aa
    nop                                           ; $7541: $00
    ld d, l                                       ; $7542: $55
    nop                                           ; $7543: $00
    xor d                                         ; $7544: $aa
    nop                                           ; $7545: $00
    ld d, l                                       ; $7546: $55
    nop                                           ; $7547: $00
    xor d                                         ; $7548: $aa
    nop                                           ; $7549: $00
    ld d, l                                       ; $754a: $55
    nop                                           ; $754b: $00
    xor d                                         ; $754c: $aa
    nop                                           ; $754d: $00
    ld d, l                                       ; $754e: $55
    nop                                           ; $754f: $00
    xor d                                         ; $7550: $aa
    nop                                           ; $7551: $00
    ld d, l                                       ; $7552: $55
    nop                                           ; $7553: $00
    xor d                                         ; $7554: $aa
    nop                                           ; $7555: $00
    ld d, l                                       ; $7556: $55
    nop                                           ; $7557: $00
    xor d                                         ; $7558: $aa
    nop                                           ; $7559: $00
    ld d, l                                       ; $755a: $55
    nop                                           ; $755b: $00
    xor d                                         ; $755c: $aa
    nop                                           ; $755d: $00
    ld d, l                                       ; $755e: $55
    nop                                           ; $755f: $00
    xor d                                         ; $7560: $aa
    nop                                           ; $7561: $00
    ld d, l                                       ; $7562: $55
    nop                                           ; $7563: $00
    xor d                                         ; $7564: $aa
    nop                                           ; $7565: $00
    ld d, l                                       ; $7566: $55
    nop                                           ; $7567: $00
    xor d                                         ; $7568: $aa
    nop                                           ; $7569: $00
    ld d, l                                       ; $756a: $55
    nop                                           ; $756b: $00
    xor d                                         ; $756c: $aa
    nop                                           ; $756d: $00
    ld d, l                                       ; $756e: $55
    nop                                           ; $756f: $00
    xor d                                         ; $7570: $aa
    nop                                           ; $7571: $00
    ld d, l                                       ; $7572: $55
    nop                                           ; $7573: $00
    xor d                                         ; $7574: $aa
    nop                                           ; $7575: $00
    ld d, l                                       ; $7576: $55
    nop                                           ; $7577: $00
    xor d                                         ; $7578: $aa
    nop                                           ; $7579: $00
    ld d, l                                       ; $757a: $55
    nop                                           ; $757b: $00
    xor d                                         ; $757c: $aa
    nop                                           ; $757d: $00
    ld d, l                                       ; $757e: $55
    nop                                           ; $757f: $00
    ei                                            ; $7580: $fb
    ei                                            ; $7581: $fb
    ld b, h                                       ; $7582: $44
    ld b, h                                       ; $7583: $44
    inc b                                         ; $7584: $04
    rst RST_38                                    ; $7585: $ff
    inc b                                         ; $7586: $04
    inc b                                         ; $7587: $04
    nop                                           ; $7588: $00
    nop                                           ; $7589: $00
    nop                                           ; $758a: $00
    nop                                           ; $758b: $00
    nop                                           ; $758c: $00
    nop                                           ; $758d: $00
    nop                                           ; $758e: $00
    nop                                           ; $758f: $00
    ld a, a                                       ; $7590: $7f
    rst RST_38                                    ; $7591: $ff
    ld a, [hl+]                                   ; $7592: $2a
    cp d                                          ; $7593: $ba
    ld a, [hl+]                                   ; $7594: $2a
    sbc a                                         ; $7595: $9f
    ld a, [hl+]                                   ; $7596: $2a
    sbc d                                         ; $7597: $9a
    ld [$0898], sp                                ; $7598: $08 $98 $08
    ld hl, sp+$08                                 ; $759b: $f8 $08
    sbc b                                         ; $759d: $98
    jr z, jr_009_7538                             ; $759e: $28 $98

jr_009_75a0:
    rst RST_38                                    ; $75a0: $ff
    rst RST_38                                    ; $75a1: $ff
    ld [$000c], sp                                ; $75a2: $08 $0c $00
    db $fc                                        ; $75a5: $fc
    nop                                           ; $75a6: $00
    inc b                                         ; $75a7: $04

jr_009_75a8:
    nop                                           ; $75a8: $00
    inc b                                         ; $75a9: $04
    nop                                           ; $75aa: $00
    inc b                                         ; $75ab: $04
    nop                                           ; $75ac: $00
    inc b                                         ; $75ad: $04
    nop                                           ; $75ae: $00
    inc b                                         ; $75af: $04
    daa                                           ; $75b0: $27
    rst RST_38                                    ; $75b1: $ff
    daa                                           ; $75b2: $27
    rst RST_38                                    ; $75b3: $ff
    daa                                           ; $75b4: $27
    rst RST_38                                    ; $75b5: $ff
    daa                                           ; $75b6: $27
    rst RST_38                                    ; $75b7: $ff
    daa                                           ; $75b8: $27
    rst RST_38                                    ; $75b9: $ff
    daa                                           ; $75ba: $27
    rst RST_38                                    ; $75bb: $ff
    daa                                           ; $75bc: $27
    rst RST_38                                    ; $75bd: $ff
    daa                                           ; $75be: $27
    rst RST_38                                    ; $75bf: $ff
    add c                                         ; $75c0: $81
    or a                                          ; $75c1: $b7
    add c                                         ; $75c2: $81
    or a                                          ; $75c3: $b7
    add c                                         ; $75c4: $81
    or a                                          ; $75c5: $b7
    add c                                         ; $75c6: $81
    or a                                          ; $75c7: $b7
    add c                                         ; $75c8: $81
    or a                                          ; $75c9: $b7
    add c                                         ; $75ca: $81
    or a                                          ; $75cb: $b7
    add c                                         ; $75cc: $81
    or a                                          ; $75cd: $b7
    add c                                         ; $75ce: $81
    or a                                          ; $75cf: $b7
    db $fc                                        ; $75d0: $fc
    ld [bc], a                                    ; $75d1: $02
    db $fd                                        ; $75d2: $fd
    ld [bc], a                                    ; $75d3: $02
    db $fc                                        ; $75d4: $fc
    ld [bc], a                                    ; $75d5: $02
    db $fc                                        ; $75d6: $fc
    inc bc                                        ; $75d7: $03
    db $fc                                        ; $75d8: $fc
    ld [bc], a                                    ; $75d9: $02
    db $fd                                        ; $75da: $fd
    ld [bc], a                                    ; $75db: $02
    db $fc                                        ; $75dc: $fc
    ld [bc], a                                    ; $75dd: $02
    db $fc                                        ; $75de: $fc
    inc bc                                        ; $75df: $03
    cp $c0                                        ; $75e0: $fe $c0
    ld a, l                                       ; $75e2: $7d
    ld b, b                                       ; $75e3: $40
    ld a, d                                       ; $75e4: $7a
    ld b, b                                       ; $75e5: $40
    push af                                       ; $75e6: $f5
    ret nz                                        ; $75e7: $c0

    ld l, d                                       ; $75e8: $6a
    ld b, b                                       ; $75e9: $40
    ld d, l                                       ; $75ea: $55
    ld b, b                                       ; $75eb: $40
    ld l, d                                       ; $75ec: $6a
    ld b, b                                       ; $75ed: $40
    push de                                       ; $75ee: $d5
    ret nz                                        ; $75ef: $c0

    xor d                                         ; $75f0: $aa
    nop                                           ; $75f1: $00
    ld d, l                                       ; $75f2: $55
    nop                                           ; $75f3: $00
    xor d                                         ; $75f4: $aa
    nop                                           ; $75f5: $00
    ld d, l                                       ; $75f6: $55
    nop                                           ; $75f7: $00
    xor d                                         ; $75f8: $aa
    nop                                           ; $75f9: $00
    ld d, l                                       ; $75fa: $55
    nop                                           ; $75fb: $00
    xor d                                         ; $75fc: $aa
    nop                                           ; $75fd: $00
    ld d, l                                       ; $75fe: $55
    nop                                           ; $75ff: $00
    rst RST_38                                    ; $7600: $ff
    nop                                           ; $7601: $00
    rst RST_38                                    ; $7602: $ff
    nop                                           ; $7603: $00
    rst RST_38                                    ; $7604: $ff
    nop                                           ; $7605: $00
    rst RST_38                                    ; $7606: $ff
    nop                                           ; $7607: $00
    rst RST_38                                    ; $7608: $ff
    nop                                           ; $7609: $00
    rst RST_38                                    ; $760a: $ff
    nop                                           ; $760b: $00
    rst RST_38                                    ; $760c: $ff
    nop                                           ; $760d: $00
    rst RST_38                                    ; $760e: $ff
    nop                                           ; $760f: $00
    rst RST_38                                    ; $7610: $ff
    nop                                           ; $7611: $00
    rst RST_38                                    ; $7612: $ff
    nop                                           ; $7613: $00
    rst RST_38                                    ; $7614: $ff
    nop                                           ; $7615: $00
    rst RST_38                                    ; $7616: $ff
    nop                                           ; $7617: $00
    rst RST_38                                    ; $7618: $ff
    nop                                           ; $7619: $00

jr_009_761a:
    rst RST_38                                    ; $761a: $ff
    nop                                           ; $761b: $00
    rst RST_38                                    ; $761c: $ff
    nop                                           ; $761d: $00
    rst RST_38                                    ; $761e: $ff
    nop                                           ; $761f: $00
    rst RST_38                                    ; $7620: $ff
    jr @+$01                                      ; $7621: $18 $ff

    inc h                                         ; $7623: $24

jr_009_7624:
    rst RST_38                                    ; $7624: $ff
    inc h                                         ; $7625: $24
    rst RST_38                                    ; $7626: $ff
    jr @+$01                                      ; $7627: $18 $ff

    jr @+$01                                      ; $7629: $18 $ff

    inc h                                         ; $762b: $24
    rst RST_38                                    ; $762c: $ff
    inc h                                         ; $762d: $24
    rst RST_38                                    ; $762e: $ff
    jr @+$01                                      ; $762f: $18 $ff

    nop                                           ; $7631: $00
    rst RST_38                                    ; $7632: $ff
    nop                                           ; $7633: $00
    rst RST_38                                    ; $7634: $ff
    nop                                           ; $7635: $00
    rst RST_38                                    ; $7636: $ff
    nop                                           ; $7637: $00
    rst RST_38                                    ; $7638: $ff
    nop                                           ; $7639: $00
    rst RST_38                                    ; $763a: $ff
    nop                                           ; $763b: $00
    rst RST_38                                    ; $763c: $ff
    nop                                           ; $763d: $00
    rst RST_38                                    ; $763e: $ff
    nop                                           ; $763f: $00
    rst RST_38                                    ; $7640: $ff
    nop                                           ; $7641: $00
    rst RST_38                                    ; $7642: $ff
    nop                                           ; $7643: $00
    rst RST_38                                    ; $7644: $ff
    nop                                           ; $7645: $00
    rst RST_38                                    ; $7646: $ff
    nop                                           ; $7647: $00
    rst RST_38                                    ; $7648: $ff
    nop                                           ; $7649: $00
    rst RST_38                                    ; $764a: $ff
    nop                                           ; $764b: $00
    rst RST_38                                    ; $764c: $ff
    nop                                           ; $764d: $00
    rst RST_38                                    ; $764e: $ff
    nop                                           ; $764f: $00
    rst RST_38                                    ; $7650: $ff
    nop                                           ; $7651: $00
    rst RST_38                                    ; $7652: $ff
    nop                                           ; $7653: $00
    rst RST_38                                    ; $7654: $ff
    nop                                           ; $7655: $00
    rst RST_38                                    ; $7656: $ff
    nop                                           ; $7657: $00
    rst RST_38                                    ; $7658: $ff
    nop                                           ; $7659: $00
    rst RST_38                                    ; $765a: $ff
    nop                                           ; $765b: $00
    rst RST_38                                    ; $765c: $ff
    nop                                           ; $765d: $00
    rst RST_38                                    ; $765e: $ff
    nop                                           ; $765f: $00
    rst RST_38                                    ; $7660: $ff
    nop                                           ; $7661: $00
    rst RST_38                                    ; $7662: $ff
    nop                                           ; $7663: $00
    rst RST_38                                    ; $7664: $ff
    nop                                           ; $7665: $00
    rst RST_38                                    ; $7666: $ff
    nop                                           ; $7667: $00
    rst RST_38                                    ; $7668: $ff
    nop                                           ; $7669: $00
    rst RST_38                                    ; $766a: $ff
    nop                                           ; $766b: $00
    rst RST_38                                    ; $766c: $ff
    nop                                           ; $766d: $00
    rst RST_38                                    ; $766e: $ff
    nop                                           ; $766f: $00
    rst RST_38                                    ; $7670: $ff
    nop                                           ; $7671: $00
    rst RST_38                                    ; $7672: $ff
    nop                                           ; $7673: $00
    rst RST_38                                    ; $7674: $ff
    nop                                           ; $7675: $00
    rst RST_38                                    ; $7676: $ff
    nop                                           ; $7677: $00
    rst RST_38                                    ; $7678: $ff
    nop                                           ; $7679: $00
    rst RST_38                                    ; $767a: $ff
    nop                                           ; $767b: $00
    rst RST_38                                    ; $767c: $ff
    nop                                           ; $767d: $00
    rst RST_38                                    ; $767e: $ff
    nop                                           ; $767f: $00
    jr z, jr_009_761a                             ; $7680: $28 $98

    ld [$0898], sp                                ; $7682: $08 $98 $08
    ld hl, sp+$08                                 ; $7685: $f8 $08
    sbc b                                         ; $7687: $98
    jr z, @-$66                                   ; $7688: $28 $98

    jr z, jr_009_7624                             ; $768a: $28 $98

    ld [$0898], sp                                ; $768c: $08 $98 $08
    ld hl, sp+$00                                 ; $768f: $f8 $00
    inc b                                         ; $7691: $04
    nop                                           ; $7692: $00
    inc b                                         ; $7693: $04
    nop                                           ; $7694: $00
    inc b                                         ; $7695: $04
    nop                                           ; $7696: $00
    inc b                                         ; $7697: $04
    nop                                           ; $7698: $00
    inc b                                         ; $7699: $04
    nop                                           ; $769a: $00
    inc b                                         ; $769b: $04
    nop                                           ; $769c: $00
    inc b                                         ; $769d: $04
    nop                                           ; $769e: $00
    inc b                                         ; $769f: $04
    xor d                                         ; $76a0: $aa
    nop                                           ; $76a1: $00
    ld d, l                                       ; $76a2: $55
    nop                                           ; $76a3: $00
    xor d                                         ; $76a4: $aa
    nop                                           ; $76a5: $00
    ld d, l                                       ; $76a6: $55
    nop                                           ; $76a7: $00
    xor b                                         ; $76a8: $a8
    inc d                                         ; $76a9: $14
    ld bc, $006a                                  ; $76aa: $01 $6a $00
    rst RST_10                                    ; $76ad: $d7
    ld bc, $00be                                  ; $76ae: $01 $be $00
    nop                                           ; $76b1: $00
    nop                                           ; $76b2: $00
    nop                                           ; $76b3: $00
    nop                                           ; $76b4: $00
    nop                                           ; $76b5: $00
    nop                                           ; $76b6: $00
    nop                                           ; $76b7: $00
    nop                                           ; $76b8: $00
    inc d                                         ; $76b9: $14
    nop                                           ; $76ba: $00
    ld l, d                                       ; $76bb: $6a
    nop                                           ; $76bc: $00
    rst RST_10                                    ; $76bd: $d7
    nop                                           ; $76be: $00
    cp [hl]                                       ; $76bf: $be
    nop                                           ; $76c0: $00
    nop                                           ; $76c1: $00
    ld bc, $0000                                  ; $76c2: $01 $00 $00
    nop                                           ; $76c5: $00
    rlca                                          ; $76c6: $07
    nop                                           ; $76c7: $00
    nop                                           ; $76c8: $00
    nop                                           ; $76c9: $00
    dec e                                         ; $76ca: $1d
    nop                                           ; $76cb: $00
    nop                                           ; $76cc: $00
    nop                                           ; $76cd: $00
    ld [hl], a                                    ; $76ce: $77
    nop                                           ; $76cf: $00
    nop                                           ; $76d0: $00
    nop                                           ; $76d1: $00
    db $dd                                        ; $76d2: $dd
    nop                                           ; $76d3: $00
    nop                                           ; $76d4: $00
    nop                                           ; $76d5: $00
    ld [hl], a                                    ; $76d6: $77
    nop                                           ; $76d7: $00
    nop                                           ; $76d8: $00
    nop                                           ; $76d9: $00
    db $dd                                        ; $76da: $dd
    nop                                           ; $76db: $00
    nop                                           ; $76dc: $00
    nop                                           ; $76dd: $00
    ld [hl], a                                    ; $76de: $77
    nop                                           ; $76df: $00
    ld a, a                                       ; $76e0: $7f
    add b                                         ; $76e1: $80
    ccf                                           ; $76e2: $3f
    ld b, b                                       ; $76e3: $40
    rra                                           ; $76e4: $1f
    ldh [rIF], a                                  ; $76e5: $e0 $0f
    db $10                                        ; $76e7: $10
    rlca                                          ; $76e8: $07
    ld hl, sp+$03                                 ; $76e9: $f8 $03
    ld b, h                                       ; $76eb: $44
    ld bc, $00fe                                  ; $76ec: $01 $fe $00
    ld de, rP1                                    ; $76ef: $11 $00 $ff
    nop                                           ; $76f2: $00
    ld b, h                                       ; $76f3: $44
    nop                                           ; $76f4: $00
    rst RST_38                                    ; $76f5: $ff
    nop                                           ; $76f6: $00
    ld de, rP1                                    ; $76f7: $11 $00 $ff
    nop                                           ; $76fa: $00
    ld b, h                                       ; $76fb: $44
    nop                                           ; $76fc: $00
    rst RST_38                                    ; $76fd: $ff
    nop                                           ; $76fe: $00
    ld de, $00ff                                  ; $76ff: $11 $ff $00
    rst RST_38                                    ; $7702: $ff
    nop                                           ; $7703: $00
    rst RST_38                                    ; $7704: $ff
    nop                                           ; $7705: $00
    rst RST_38                                    ; $7706: $ff
    nop                                           ; $7707: $00
    rst RST_38                                    ; $7708: $ff
    nop                                           ; $7709: $00
    rst RST_38                                    ; $770a: $ff
    nop                                           ; $770b: $00
    rst RST_38                                    ; $770c: $ff
    nop                                           ; $770d: $00
    rst RST_38                                    ; $770e: $ff
    nop                                           ; $770f: $00
    rst RST_38                                    ; $7710: $ff
    nop                                           ; $7711: $00
    rst RST_38                                    ; $7712: $ff
    nop                                           ; $7713: $00
    rst RST_38                                    ; $7714: $ff
    nop                                           ; $7715: $00
    rst RST_38                                    ; $7716: $ff
    nop                                           ; $7717: $00
    rst RST_38                                    ; $7718: $ff
    nop                                           ; $7719: $00
    rst RST_38                                    ; $771a: $ff
    nop                                           ; $771b: $00
    rst RST_38                                    ; $771c: $ff
    nop                                           ; $771d: $00

jr_009_771e:
    rst RST_38                                    ; $771e: $ff
    nop                                           ; $771f: $00
    rst RST_38                                    ; $7720: $ff
    jr @+$01                                      ; $7721: $18 $ff

    inc h                                         ; $7723: $24
    rst RST_38                                    ; $7724: $ff
    inc h                                         ; $7725: $24

jr_009_7726:
    rst RST_38                                    ; $7726: $ff
    jr @+$01                                      ; $7727: $18 $ff

    jr @+$01                                      ; $7729: $18 $ff

    inc h                                         ; $772b: $24
    rst RST_38                                    ; $772c: $ff
    inc h                                         ; $772d: $24
    rst RST_38                                    ; $772e: $ff
    jr @+$01                                      ; $772f: $18 $ff

    nop                                           ; $7731: $00
    rst RST_38                                    ; $7732: $ff
    nop                                           ; $7733: $00
    rst RST_38                                    ; $7734: $ff
    nop                                           ; $7735: $00
    rst RST_38                                    ; $7736: $ff
    nop                                           ; $7737: $00
    rst RST_38                                    ; $7738: $ff
    nop                                           ; $7739: $00
    rst RST_38                                    ; $773a: $ff
    nop                                           ; $773b: $00
    rst RST_38                                    ; $773c: $ff
    nop                                           ; $773d: $00
    rst RST_38                                    ; $773e: $ff
    nop                                           ; $773f: $00
    rst RST_38                                    ; $7740: $ff
    nop                                           ; $7741: $00
    rst RST_38                                    ; $7742: $ff
    nop                                           ; $7743: $00
    rst RST_38                                    ; $7744: $ff
    nop                                           ; $7745: $00
    rst RST_38                                    ; $7746: $ff
    nop                                           ; $7747: $00
    rst RST_38                                    ; $7748: $ff
    nop                                           ; $7749: $00
    rst RST_38                                    ; $774a: $ff
    nop                                           ; $774b: $00
    rst RST_38                                    ; $774c: $ff
    nop                                           ; $774d: $00
    rst RST_38                                    ; $774e: $ff
    nop                                           ; $774f: $00
    rst RST_38                                    ; $7750: $ff
    nop                                           ; $7751: $00
    rst RST_38                                    ; $7752: $ff
    nop                                           ; $7753: $00
    rst RST_38                                    ; $7754: $ff
    nop                                           ; $7755: $00
    rst RST_38                                    ; $7756: $ff
    nop                                           ; $7757: $00
    rst RST_38                                    ; $7758: $ff
    nop                                           ; $7759: $00
    rst RST_38                                    ; $775a: $ff
    nop                                           ; $775b: $00
    rst RST_38                                    ; $775c: $ff
    nop                                           ; $775d: $00
    rst RST_38                                    ; $775e: $ff
    nop                                           ; $775f: $00
    rst RST_38                                    ; $7760: $ff
    nop                                           ; $7761: $00
    rst RST_38                                    ; $7762: $ff
    nop                                           ; $7763: $00
    rst RST_38                                    ; $7764: $ff
    nop                                           ; $7765: $00
    rst RST_38                                    ; $7766: $ff
    nop                                           ; $7767: $00
    rst RST_38                                    ; $7768: $ff
    nop                                           ; $7769: $00
    rst RST_38                                    ; $776a: $ff
    nop                                           ; $776b: $00
    rst RST_38                                    ; $776c: $ff
    nop                                           ; $776d: $00
    rst RST_38                                    ; $776e: $ff
    nop                                           ; $776f: $00
    rst RST_38                                    ; $7770: $ff
    nop                                           ; $7771: $00
    rst RST_38                                    ; $7772: $ff
    nop                                           ; $7773: $00
    rst RST_38                                    ; $7774: $ff
    nop                                           ; $7775: $00
    rst RST_38                                    ; $7776: $ff
    nop                                           ; $7777: $00
    rst RST_38                                    ; $7778: $ff
    nop                                           ; $7779: $00
    rst RST_38                                    ; $777a: $ff
    nop                                           ; $777b: $00
    rst RST_38                                    ; $777c: $ff
    nop                                           ; $777d: $00
    rst RST_38                                    ; $777e: $ff
    nop                                           ; $777f: $00
    ld [$2898], sp                                ; $7780: $08 $98 $28
    sbc b                                         ; $7783: $98
    jr z, jr_009_771e                             ; $7784: $28 $98

    ld [$0898], sp                                ; $7786: $08 $98 $08
    ld hl, sp+$08                                 ; $7789: $f8 $08
    sbc b                                         ; $778b: $98
    jr z, jr_009_7726                             ; $778c: $28 $98

    jr z, @-$66                                   ; $778e: $28 $98

    rst RST_38                                    ; $7790: $ff
    rst RST_38                                    ; $7791: $ff
    nop                                           ; $7792: $00
    rst RST_38                                    ; $7793: $ff
    ld [hl+], a                                   ; $7794: $22
    ld d, l                                       ; $7795: $55
    nop                                           ; $7796: $00
    xor d                                         ; $7797: $aa
    ld b, h                                       ; $7798: $44
    nop                                           ; $7799: $00
    ld [$a2a5], sp                                ; $779a: $08 $a5 $a2
    nop                                           ; $779d: $00
    ld d, h                                       ; $779e: $54
    nop                                           ; $779f: $00
    add b                                         ; $77a0: $80
    ld l, e                                       ; $77a1: $6b
    ld d, h                                       ; $77a2: $54
    add hl, hl                                    ; $77a3: $29
    and d                                         ; $77a4: $a2
    ld [$0855], sp                                ; $77a5: $08 $55 $08
    and d                                         ; $77a8: $a2
    ld [$0855], sp                                ; $77a9: $08 $55 $08
    and d                                         ; $77ac: $a2
    ld [$0855], sp                                ; $77ad: $08 $55 $08
    nop                                           ; $77b0: $00
    ld l, e                                       ; $77b1: $6b
    nop                                           ; $77b2: $00
    add hl, hl                                    ; $77b3: $29
    nop                                           ; $77b4: $00
    ld [$0800], sp                                ; $77b5: $08 $00 $08
    nop                                           ; $77b8: $00
    ld [$0800], sp                                ; $77b9: $08 $00 $08
    nop                                           ; $77bc: $00
    ld [$0800], sp                                ; $77bd: $08 $00 $08
    cp $00                                        ; $77c0: $fe $00
    db $fd                                        ; $77c2: $fd
    nop                                           ; $77c3: $00
    ld hl, sp+$00                                 ; $77c4: $f8 $00
    rst RST_30                                    ; $77c6: $f7
    nop                                           ; $77c7: $00
    ldh [rP1], a                                  ; $77c8: $e0 $00
    db $dd                                        ; $77ca: $dd
    nop                                           ; $77cb: $00
    add b                                         ; $77cc: $80
    nop                                           ; $77cd: $00
    ld [hl], a                                    ; $77ce: $77
    nop                                           ; $77cf: $00
    nop                                           ; $77d0: $00
    rst RST_38                                    ; $77d1: $ff
    nop                                           ; $77d2: $00
    add b                                         ; $77d3: $80
    nop                                           ; $77d4: $00
    add b                                         ; $77d5: $80
    inc h                                         ; $77d6: $24
    and h                                         ; $77d7: $a4
    inc h                                         ; $77d8: $24
    and h                                         ; $77d9: $a4
    nop                                           ; $77da: $00
    add b                                         ; $77db: $80
    nop                                           ; $77dc: $00
    add b                                         ; $77dd: $80
    nop                                           ; $77de: $00
    add b                                         ; $77df: $80
    nop                                           ; $77e0: $00
    rst RST_38                                    ; $77e1: $ff
    nop                                           ; $77e2: $00
    rst RST_38                                    ; $77e3: $ff
    nop                                           ; $77e4: $00
    rst RST_38                                    ; $77e5: $ff
    nop                                           ; $77e6: $00
    rst RST_38                                    ; $77e7: $ff
    nop                                           ; $77e8: $00
    rst RST_38                                    ; $77e9: $ff
    jr @+$01                                      ; $77ea: $18 $ff

    jr @+$01                                      ; $77ec: $18 $ff

    jr @+$01                                      ; $77ee: $18 $ff

    rlca                                          ; $77f0: $07
    rst RST_38                                    ; $77f1: $ff
    add hl, bc                                    ; $77f2: $09
    ld c, h                                       ; $77f3: $4c
    ld [$0cf8], sp                                ; $77f4: $08 $f8 $0c
    jr jr_009_7875                                ; $77f7: $18 $7c

    rst RST_38                                    ; $77f9: $ff
    cp e                                          ; $77fa: $bb
    add b                                         ; $77fb: $80
    add b                                         ; $77fc: $80
    add b                                         ; $77fd: $80
    pop bc                                        ; $77fe: $c1
    xor h                                         ; $77ff: $ac

Call_009_7800:
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    ld a, a                                       ; $7802: $7f
    nop                                           ; $7803: $00
    ld a, a                                       ; $7804: $7f
    nop                                           ; $7805: $00
    ld a, a                                       ; $7806: $7f
    nop                                           ; $7807: $00
    ld a, a                                       ; $7808: $7f
    nop                                           ; $7809: $00
    ld a, a                                       ; $780a: $7f
    nop                                           ; $780b: $00
    ld a, a                                       ; $780c: $7f
    nop                                           ; $780d: $00
    ld a, a                                       ; $780e: $7f
    nop                                           ; $780f: $00
    nop                                           ; $7810: $00
    nop                                           ; $7811: $00
    ld a, a                                       ; $7812: $7f
    ld a, a                                       ; $7813: $7f
    ld a, a                                       ; $7814: $7f
    ld a, a                                       ; $7815: $7f
    ld h, b                                       ; $7816: $60
    ld a, a                                       ; $7817: $7f
    ld h, b                                       ; $7818: $60
    ld a, a                                       ; $7819: $7f
    ld h, b                                       ; $781a: $60
    ld a, a                                       ; $781b: $7f
    ld h, b                                       ; $781c: $60
    ld a, a                                       ; $781d: $7f
    ld h, b                                       ; $781e: $60
    ld a, a                                       ; $781f: $7f
    nop                                           ; $7820: $00
    ld a, a                                       ; $7821: $7f
    nop                                           ; $7822: $00
    ret nz                                        ; $7823: $c0

    nop                                           ; $7824: $00
    adc a                                         ; $7825: $8f
    rrca                                          ; $7826: $0f
    sbc a                                         ; $7827: $9f
    rrca                                          ; $7828: $0f
    sbc b                                         ; $7829: $98
    rrca                                          ; $782a: $0f
    sbc b                                         ; $782b: $98
    rrca                                          ; $782c: $0f
    sbc b                                         ; $782d: $98
    rrca                                          ; $782e: $0f
    sbc b                                         ; $782f: $98
    nop                                           ; $7830: $00
    rst RST_38                                    ; $7831: $ff
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    nop                                           ; $7834: $00
    rst RST_38                                    ; $7835: $ff
    rst RST_38                                    ; $7836: $ff
    rst RST_38                                    ; $7837: $ff
    rst RST_38                                    ; $7838: $ff
    nop                                           ; $7839: $00
    rst RST_38                                    ; $783a: $ff
    nop                                           ; $783b: $00
    rst RST_38                                    ; $783c: $ff
    nop                                           ; $783d: $00
    rst RST_38                                    ; $783e: $ff
    nop                                           ; $783f: $00
    ld [bc], a                                    ; $7840: $02
    rst RST_38                                    ; $7841: $ff
    ld bc, $0107                                  ; $7842: $01 $07 $01
    db $e3                                        ; $7845: $e3
    pop hl                                        ; $7846: $e1
    di                                            ; $7847: $f3
    pop hl                                        ; $7848: $e1
    inc de                                        ; $7849: $13
    pop hl                                        ; $784a: $e1
    inc de                                        ; $784b: $13
    pop hl                                        ; $784c: $e1
    inc de                                        ; $784d: $13
    pop hl                                        ; $784e: $e1
    inc de                                        ; $784f: $13
    rrca                                          ; $7850: $0f
    sbc b                                         ; $7851: $98
    rrca                                          ; $7852: $0f
    sbc b                                         ; $7853: $98
    rrca                                          ; $7854: $0f
    sbc b                                         ; $7855: $98
    rrca                                          ; $7856: $0f
    sbc b                                         ; $7857: $98
    rrca                                          ; $7858: $0f
    sbc b                                         ; $7859: $98
    rrca                                          ; $785a: $0f
    sbc b                                         ; $785b: $98
    rrca                                          ; $785c: $0f
    sbc b                                         ; $785d: $98
    rrca                                          ; $785e: $0f
    sbc b                                         ; $785f: $98
    pop hl                                        ; $7860: $e1
    inc de                                        ; $7861: $13
    pop hl                                        ; $7862: $e1
    inc de                                        ; $7863: $13
    pop hl                                        ; $7864: $e1
    inc de                                        ; $7865: $13
    pop hl                                        ; $7866: $e1
    inc de                                        ; $7867: $13
    pop hl                                        ; $7868: $e1
    inc de                                        ; $7869: $13
    pop hl                                        ; $786a: $e1
    inc de                                        ; $786b: $13
    pop hl                                        ; $786c: $e1
    inc de                                        ; $786d: $13
    pop hl                                        ; $786e: $e1
    inc de                                        ; $786f: $13
    rrca                                          ; $7870: $0f
    sbc b                                         ; $7871: $98
    rrca                                          ; $7872: $0f
    sbc b                                         ; $7873: $98
    rrca                                          ; $7874: $0f

jr_009_7875:
    sbc b                                         ; $7875: $98
    rrca                                          ; $7876: $0f
    sbc b                                         ; $7877: $98
    nop                                           ; $7878: $00
    adc a                                         ; $7879: $8f
    nop                                           ; $787a: $00
    ret nz                                        ; $787b: $c0

    nop                                           ; $787c: $00
    rst RST_38                                    ; $787d: $ff
    ld a, a                                       ; $787e: $7f
    ld a, a                                       ; $787f: $7f
    rst RST_38                                    ; $7880: $ff
    nop                                           ; $7881: $00
    rst RST_38                                    ; $7882: $ff
    nop                                           ; $7883: $00
    rst RST_38                                    ; $7884: $ff
    nop                                           ; $7885: $00
    rst RST_38                                    ; $7886: $ff
    nop                                           ; $7887: $00
    nop                                           ; $7888: $00
    rst RST_38                                    ; $7889: $ff
    nop                                           ; $788a: $00
    nop                                           ; $788b: $00
    nop                                           ; $788c: $00
    rst RST_38                                    ; $788d: $ff
    rst RST_38                                    ; $788e: $ff
    rst RST_38                                    ; $788f: $ff
    pop hl                                        ; $7890: $e1
    inc de                                        ; $7891: $13
    pop hl                                        ; $7892: $e1
    inc de                                        ; $7893: $13
    pop hl                                        ; $7894: $e1
    inc de                                        ; $7895: $13
    pop hl                                        ; $7896: $e1
    inc de                                        ; $7897: $13
    ld bc, $01e3                                  ; $7898: $01 $e3 $01
    rlca                                          ; $789b: $07
    inc bc                                        ; $789c: $03
    rst RST_38                                    ; $789d: $ff
    rst RST_38                                    ; $789e: $ff
    rst RST_38                                    ; $789f: $ff
    rst RST_38                                    ; $78a0: $ff
    call z, $ccff                                 ; $78a1: $cc $ff $cc
    rst RST_38                                    ; $78a4: $ff
    ld a, c                                       ; $78a5: $79
    rst RST_38                                    ; $78a6: $ff
    ld sp, $31ff                                  ; $78a7: $31 $ff $31
    rst RST_38                                    ; $78aa: $ff
    jr nc, @+$01                                  ; $78ab: $30 $ff

    nop                                           ; $78ad: $00
    rst RST_38                                    ; $78ae: $ff
    nop                                           ; $78af: $00
    rst RST_38                                    ; $78b0: $ff
    nop                                           ; $78b1: $00
    rst RST_38                                    ; $78b2: $ff
    and $ff                                       ; $78b3: $e6 $ff
    or [hl]                                       ; $78b5: $b6
    rst RST_38                                    ; $78b6: $ff
    or [hl]                                       ; $78b7: $b6
    rst RST_38                                    ; $78b8: $ff
    or [hl]                                       ; $78b9: $b6
    rst RST_38                                    ; $78ba: $ff
    db $e3                                        ; $78bb: $e3
    rst RST_38                                    ; $78bc: $ff
    nop                                           ; $78bd: $00
    rst RST_38                                    ; $78be: $ff
    nop                                           ; $78bf: $00
    rst RST_38                                    ; $78c0: $ff
    nop                                           ; $78c1: $00
    rst RST_38                                    ; $78c2: $ff
    db $db                                        ; $78c3: $db
    rst RST_38                                    ; $78c4: $ff
    call c, $d8ff                                 ; $78c5: $dc $ff $d8
    rst RST_38                                    ; $78c8: $ff
    ret c                                         ; $78c9: $d8

    rst RST_38                                    ; $78ca: $ff
    ret c                                         ; $78cb: $d8

Call_009_78cc:
    rst RST_38                                    ; $78cc: $ff
    nop                                           ; $78cd: $00
    rst RST_38                                    ; $78ce: $ff
    nop                                           ; $78cf: $00
    rst RST_38                                    ; $78d0: $ff
    nop                                           ; $78d1: $00
    rst RST_38                                    ; $78d2: $ff
    rrca                                          ; $78d3: $0f
    rst RST_38                                    ; $78d4: $ff
    dec de                                        ; $78d5: $1b
    rst RST_38                                    ; $78d6: $ff
    dec de                                        ; $78d7: $1b
    rst RST_38                                    ; $78d8: $ff
    rrca                                          ; $78d9: $0f
    rst RST_38                                    ; $78da: $ff
    inc bc                                        ; $78db: $03
    rst RST_38                                    ; $78dc: $ff
    dec de                                        ; $78dd: $1b
    rst RST_38                                    ; $78de: $ff
    ld c, $ff                                     ; $78df: $0e $ff
    nop                                           ; $78e1: $00
    rst RST_38                                    ; $78e2: $ff
    jr c, @+$01                                   ; $78e3: $38 $ff

    ld l, h                                       ; $78e5: $6c
    rst RST_38                                    ; $78e6: $ff
    ld l, h                                       ; $78e7: $6c
    rst RST_38                                    ; $78e8: $ff
    ld l, h                                       ; $78e9: $6c
    rst RST_38                                    ; $78ea: $ff
    ld a, $ff                                     ; $78eb: $3e $ff
    nop                                           ; $78ed: $00
    rst RST_38                                    ; $78ee: $ff
    nop                                           ; $78ef: $00
    rst RST_38                                    ; $78f0: $ff
    nop                                           ; $78f1: $00
    rst RST_38                                    ; $78f2: $ff
    ld hl, sp-$01                                 ; $78f3: $f8 $ff
    push de                                       ; $78f5: $d5
    rst RST_38                                    ; $78f6: $ff
    push de                                       ; $78f7: $d5
    rst RST_38                                    ; $78f8: $ff
    push de                                       ; $78f9: $d5
    rst RST_38                                    ; $78fa: $ff
    call nc, Call_000_00ff                        ; $78fb: $d4 $ff $00
    rst RST_38                                    ; $78fe: $ff

Call_009_78ff:
    nop                                           ; $78ff: $00
    rst RST_38                                    ; $7900: $ff
    nop                                           ; $7901: $00
    rst RST_38                                    ; $7902: $ff
    ldh [rIE], a                                  ; $7903: $e0 $ff
    or b                                          ; $7905: $b0
    rst RST_38                                    ; $7906: $ff
    ldh a, [rIE]                                  ; $7907: $f0 $ff
    add b                                         ; $7909: $80
    rst RST_38                                    ; $790a: $ff
    ldh a, [rIE]                                  ; $790b: $f0 $ff
    nop                                           ; $790d: $00
    rst RST_38                                    ; $790e: $ff
    nop                                           ; $790f: $00
    rst RST_38                                    ; $7910: $ff
    ret nz                                        ; $7911: $c0

    rst RST_38                                    ; $7912: $ff
    pop bc                                        ; $7913: $c1
    rst RST_38                                    ; $7914: $ff
    di                                            ; $7915: $f3
    rst RST_38                                    ; $7916: $ff
    db $db                                        ; $7917: $db
    rst RST_38                                    ; $7918: $ff
    db $db                                        ; $7919: $db
    rst RST_38                                    ; $791a: $ff
    reti                                          ; $791b: $d9


    rst RST_38                                    ; $791c: $ff
    nop                                           ; $791d: $00
    rst RST_38                                    ; $791e: $ff
    nop                                           ; $791f: $00
    rst RST_38                                    ; $7920: $ff
    nop                                           ; $7921: $00
    rst RST_38                                    ; $7922: $ff
    jp Jump_009_66ff                              ; $7923: $c3 $ff $66


    rst RST_38                                    ; $7926: $ff
    ld h, e                                       ; $7927: $63
    rst RST_38                                    ; $7928: $ff
    ld h, c                                       ; $7929: $61
    rst RST_38                                    ; $792a: $ff
    rst RST_30                                    ; $792b: $f7
    rst RST_38                                    ; $792c: $ff
    nop                                           ; $792d: $00
    rst RST_38                                    ; $792e: $ff
    nop                                           ; $792f: $00
    rst RST_38                                    ; $7930: $ff
    inc bc                                        ; $7931: $03
    rst RST_38                                    ; $7932: $ff
    jp $03ff                                      ; $7933: $c3 $ff $03


    rst RST_38                                    ; $7936: $ff
    add e                                         ; $7937: $83
    rst RST_38                                    ; $7938: $ff
    jp $83ff                                      ; $7939: $c3 $ff $83


    rst RST_38                                    ; $793c: $ff
    nop                                           ; $793d: $00
    rst RST_38                                    ; $793e: $ff
    nop                                           ; $793f: $00
    rst RST_38                                    ; $7940: $ff
    nop                                           ; $7941: $00
    rst RST_38                                    ; $7942: $ff
    rlca                                          ; $7943: $07
    rst RST_38                                    ; $7944: $ff
    call Call_009_6fff                            ; $7945: $cd $ff $6f
    rst RST_38                                    ; $7948: $ff
    ld l, h                                       ; $7949: $6c
    rst RST_38                                    ; $794a: $ff
    rst RST_00                                    ; $794b: $c7
    rst RST_38                                    ; $794c: $ff
    nop                                           ; $794d: $00
    rst RST_38                                    ; $794e: $ff
    nop                                           ; $794f: $00
    rst RST_38                                    ; $7950: $ff
    nop                                           ; $7951: $00
    rst RST_38                                    ; $7952: $ff
    inc e                                         ; $7953: $1c
    rst RST_38                                    ; $7954: $ff
    or [hl]                                       ; $7955: $b6
    rst RST_38                                    ; $7956: $ff
    cp [hl]                                       ; $7957: $be
    rst RST_38                                    ; $7958: $ff
    jr nc, @+$01                                  ; $7959: $30 $ff

    sbc [hl]                                      ; $795b: $9e
    rst RST_38                                    ; $795c: $ff
    nop                                           ; $795d: $00
    rst RST_38                                    ; $795e: $ff
    nop                                           ; $795f: $00
    rst RST_38                                    ; $7960: $ff
    nop                                           ; $7961: $00
    rst RST_38                                    ; $7962: $ff
    ldh a, [rIE]                                  ; $7963: $f0 $ff
    ret c                                         ; $7965: $d8

    rst RST_38                                    ; $7966: $ff
    ret c                                         ; $7967: $d8

    rst RST_38                                    ; $7968: $ff
    ret c                                         ; $7969: $d8

    rst RST_38                                    ; $796a: $ff
    ret c                                         ; $796b: $d8

    rst RST_38                                    ; $796c: $ff
    nop                                           ; $796d: $00
    rst RST_38                                    ; $796e: $ff
    nop                                           ; $796f: $00
    rst RST_38                                    ; $7970: $ff
    nop                                           ; $7971: $00
    rst RST_38                                    ; $7972: $ff
    inc a                                         ; $7973: $3c
    rst RST_38                                    ; $7974: $ff
    ld h, c                                       ; $7975: $61
    rst RST_38                                    ; $7976: $ff
    add hl, sp                                    ; $7977: $39
    rst RST_38                                    ; $7978: $ff
    dec e                                         ; $7979: $1d
    rst RST_38                                    ; $797a: $ff
    ld a, b                                       ; $797b: $78
    rst RST_38                                    ; $797c: $ff
    nop                                           ; $797d: $00
    rst RST_38                                    ; $797e: $ff
    nop                                           ; $797f: $00
    rst RST_38                                    ; $7980: $ff
    nop                                           ; $7981: $00
    rst RST_38                                    ; $7982: $ff
    and $ff                                       ; $7983: $e6 $ff
    or [hl]                                       ; $7985: $b6
    rst RST_38                                    ; $7986: $ff
    or [hl]                                       ; $7987: $b6
    rst RST_38                                    ; $7988: $ff
    or e                                          ; $7989: $b3
    rst RST_38                                    ; $798a: $ff
    ld sp, hl                                     ; $798b: $f9
    rst RST_38                                    ; $798c: $ff
    nop                                           ; $798d: $00
    rst RST_38                                    ; $798e: $ff
    nop                                           ; $798f: $00
    rst RST_38                                    ; $7990: $ff
    nop                                           ; $7991: $00
    rst RST_38                                    ; $7992: $ff
    adc $ff                                       ; $7993: $ce $ff
    db $db                                        ; $7995: $db
    rst RST_38                                    ; $7996: $ff
    rst RST_18                                    ; $7997: $df
    rst RST_38                                    ; $7998: $ff
    sbc b                                         ; $7999: $98
    rst RST_38                                    ; $799a: $ff
    rrca                                          ; $799b: $0f
    rst RST_38                                    ; $799c: $ff
    nop                                           ; $799d: $00
    rst RST_38                                    ; $799e: $ff
    nop                                           ; $799f: $00
    rst RST_38                                    ; $79a0: $ff
    inc c                                         ; $79a1: $0c
    rst RST_38                                    ; $79a2: $ff
    inc c                                         ; $79a3: $0c
    rst RST_38                                    ; $79a4: $ff
    inc a                                         ; $79a5: $3c
    rst RST_38                                    ; $79a6: $ff
    ld l, h                                       ; $79a7: $6c
    rst RST_38                                    ; $79a8: $ff
    ld l, h                                       ; $79a9: $6c
    rst RST_38                                    ; $79aa: $ff
    inc a                                         ; $79ab: $3c
    rst RST_38                                    ; $79ac: $ff
    nop                                           ; $79ad: $00
    rst RST_38                                    ; $79ae: $ff
    nop                                           ; $79af: $00
    rst RST_38                                    ; $79b0: $ff
    call z, $ccff                                 ; $79b1: $cc $ff $cc
    rst RST_38                                    ; $79b4: $ff
    ld a, c                                       ; $79b5: $79
    rst RST_38                                    ; $79b6: $ff
    ld sp, $31ff                                  ; $79b7: $31 $ff $31
    rst RST_38                                    ; $79ba: $ff
    jr nc, @+$01                                  ; $79bb: $30 $ff

    nop                                           ; $79bd: $00
    rst RST_38                                    ; $79be: $ff
    nop                                           ; $79bf: $00
    rst RST_38                                    ; $79c0: $ff
    nop                                           ; $79c1: $00
    rst RST_38                                    ; $79c2: $ff
    and $ff                                       ; $79c3: $e6 $ff
    or [hl]                                       ; $79c5: $b6
    rst RST_38                                    ; $79c6: $ff
    or [hl]                                       ; $79c7: $b6
    rst RST_38                                    ; $79c8: $ff
    or [hl]                                       ; $79c9: $b6
    rst RST_38                                    ; $79ca: $ff
    db $e3                                        ; $79cb: $e3
    rst RST_38                                    ; $79cc: $ff
    nop                                           ; $79cd: $00
    rst RST_38                                    ; $79ce: $ff
    nop                                           ; $79cf: $00
    rst RST_38                                    ; $79d0: $ff
    nop                                           ; $79d1: $00
    rst RST_38                                    ; $79d2: $ff
    pop bc                                        ; $79d3: $c1
    rst RST_38                                    ; $79d4: $ff
    jp $c3ff                                      ; $79d5: $c3 $ff $c3


    rst RST_38                                    ; $79d8: $ff
    jp $c1ff                                      ; $79d9: $c3 $ff $c1


    rst RST_38                                    ; $79dc: $ff
    nop                                           ; $79dd: $00
    rst RST_38                                    ; $79de: $ff
    nop                                           ; $79df: $00
    rst RST_38                                    ; $79e0: $ff
    nop                                           ; $79e1: $00
    rst RST_38                                    ; $79e2: $ff
    rst RST_00                                    ; $79e3: $c7
    rst RST_38                                    ; $79e4: $ff
    ld l, l                                       ; $79e5: $6d
    rst RST_38                                    ; $79e6: $ff
    dec c                                         ; $79e7: $0d
    rst RST_38                                    ; $79e8: $ff
    ld l, l                                       ; $79e9: $6d
    rst RST_38                                    ; $79ea: $ff
    rst RST_00                                    ; $79eb: $c7
    rst RST_38                                    ; $79ec: $ff
    nop                                           ; $79ed: $00
    rst RST_38                                    ; $79ee: $ff
    nop                                           ; $79ef: $00
    rst RST_38                                    ; $79f0: $ff
    nop                                           ; $79f1: $00
    rst RST_38                                    ; $79f2: $ff
    ld e, $ff                                     ; $79f3: $1e $ff
    sbc e                                         ; $79f5: $9b
    rst RST_38                                    ; $79f6: $ff
    sbc e                                         ; $79f7: $9b
    rst RST_38                                    ; $79f8: $ff
    sbc e                                         ; $79f9: $9b
    rst RST_38                                    ; $79fa: $ff
    db $db                                        ; $79fb: $db
    rst RST_38                                    ; $79fc: $ff
    nop                                           ; $79fd: $00
    rst RST_38                                    ; $79fe: $ff

Call_009_79ff:
    nop                                           ; $79ff: $00
    rst RST_38                                    ; $7a00: $ff
    nop                                           ; $7a01: $00
    rst RST_38                                    ; $7a02: $ff
    ld [hl], c                                    ; $7a03: $71
    rst RST_38                                    ; $7a04: $ff
    db $db                                        ; $7a05: $db
    rst RST_38                                    ; $7a06: $ff
    jp $dbff                                      ; $7a07: $c3 $ff $db


    rst RST_38                                    ; $7a0a: $ff
    ld [hl], c                                    ; $7a0b: $71
    rst RST_38                                    ; $7a0c: $ff
    nop                                           ; $7a0d: $00
    rst RST_38                                    ; $7a0e: $ff
    nop                                           ; $7a0f: $00
    rst RST_38                                    ; $7a10: $ff
    nop                                           ; $7a11: $00
    rst RST_38                                    ; $7a12: $ff
    rst RST_08                                    ; $7a13: $cf
    rst RST_38                                    ; $7a14: $ff
    ld l, l                                       ; $7a15: $6d
    rst RST_38                                    ; $7a16: $ff
    ld l, l                                       ; $7a17: $6d
    rst RST_38                                    ; $7a18: $ff
    ld l, l                                       ; $7a19: $6d
    rst RST_38                                    ; $7a1a: $ff
    call Call_000_00ff                            ; $7a1b: $cd $ff $00
    rst RST_38                                    ; $7a1e: $ff
    nop                                           ; $7a1f: $00
    rst RST_38                                    ; $7a20: $ff
    jr @+$01                                      ; $7a21: $18 $ff

    ld a, $ff                                     ; $7a23: $3e $ff
    sbc b                                         ; $7a25: $98
    rst RST_38                                    ; $7a26: $ff
    sbc b                                         ; $7a27: $98
    rst RST_38                                    ; $7a28: $ff
    sbc d                                         ; $7a29: $9a
    rst RST_38                                    ; $7a2a: $ff
    adc h                                         ; $7a2b: $8c
    rst RST_38                                    ; $7a2c: $ff
    nop                                           ; $7a2d: $00
    rst RST_38                                    ; $7a2e: $ff
    nop                                           ; $7a2f: $00
    rst RST_38                                    ; $7a30: $ff
    ret nz                                        ; $7a31: $c0

    rst RST_38                                    ; $7a32: $ff
    ld e, $ff                                     ; $7a33: $1e $ff
    db $db                                        ; $7a35: $db
    rst RST_38                                    ; $7a36: $ff
    db $db                                        ; $7a37: $db
    rst RST_38                                    ; $7a38: $ff
    db $db                                        ; $7a39: $db
    rst RST_38                                    ; $7a3a: $ff
    db $db                                        ; $7a3b: $db
    rst RST_38                                    ; $7a3c: $ff
    nop                                           ; $7a3d: $00
    rst RST_38                                    ; $7a3e: $ff
    nop                                           ; $7a3f: $00
    rst RST_38                                    ; $7a40: $ff
    nop                                           ; $7a41: $00
    rst RST_38                                    ; $7a42: $ff
    ld l, h                                       ; $7a43: $6c
    rst RST_38                                    ; $7a44: $ff
    ld l, l                                       ; $7a45: $6d
    rst RST_38                                    ; $7a46: $ff
    ld l, l                                       ; $7a47: $6d
    rst RST_38                                    ; $7a48: $ff
    ld l, l                                       ; $7a49: $6d
    rst RST_38                                    ; $7a4a: $ff
    inc a                                         ; $7a4b: $3c
    rst RST_38                                    ; $7a4c: $ff
    nop                                           ; $7a4d: $00
    rst RST_38                                    ; $7a4e: $ff
    nop                                           ; $7a4f: $00
    rst RST_38                                    ; $7a50: $ff
    nop                                           ; $7a51: $00
    rst RST_38                                    ; $7a52: $ff
    ldh [rIE], a                                  ; $7a53: $e0 $ff
    or b                                          ; $7a55: $b0
    rst RST_38                                    ; $7a56: $ff
    ldh a, [rIE]                                  ; $7a57: $f0 $ff
    add b                                         ; $7a59: $80
    rst RST_38                                    ; $7a5a: $ff
    ldh a, [rIE]                                  ; $7a5b: $f0 $ff
    nop                                           ; $7a5d: $00
    rst RST_38                                    ; $7a5e: $ff
    nop                                           ; $7a5f: $00
    rst RST_38                                    ; $7a60: $ff
    ldh [rIE], a                                  ; $7a61: $e0 $ff
    ld h, a                                       ; $7a63: $67
    rst RST_38                                    ; $7a64: $ff
    ld l, l                                       ; $7a65: $6d
    rst RST_38                                    ; $7a66: $ff
    ld l, l                                       ; $7a67: $6d
    rst RST_38                                    ; $7a68: $ff
    ld l, l                                       ; $7a69: $6d
    rst RST_38                                    ; $7a6a: $ff
    ld h, a                                       ; $7a6b: $67
    rst RST_38                                    ; $7a6c: $ff
    nop                                           ; $7a6d: $00
    rst RST_38                                    ; $7a6e: $ff
    nop                                           ; $7a6f: $00
    rst RST_38                                    ; $7a70: $ff
    jr @+$01                                      ; $7a71: $18 $ff

    ld a, $ff                                     ; $7a73: $3e $ff
    sbc b                                         ; $7a75: $98
    rst RST_38                                    ; $7a76: $ff
    sbc b                                         ; $7a77: $98
    rst RST_38                                    ; $7a78: $ff
    sbc d                                         ; $7a79: $9a
    rst RST_38                                    ; $7a7a: $ff
    call z, Call_000_00ff                         ; $7a7b: $cc $ff $00
    rst RST_38                                    ; $7a7e: $ff
    nop                                           ; $7a7f: $00
    rst RST_38                                    ; $7a80: $ff
    nop                                           ; $7a81: $00
    rst RST_38                                    ; $7a82: $ff
    ld [hl], e                                    ; $7a83: $73
    rst RST_38                                    ; $7a84: $ff
    db $db                                        ; $7a85: $db
    rst RST_38                                    ; $7a86: $ff
    ei                                            ; $7a87: $fb
    rst RST_38                                    ; $7a88: $ff
    jp Jump_009_7bff                              ; $7a89: $c3 $ff $7b


    rst RST_38                                    ; $7a8c: $ff
    nop                                           ; $7a8d: $00
    rst RST_38                                    ; $7a8e: $ff
    nop                                           ; $7a8f: $00
    rst RST_38                                    ; $7a90: $ff
    nop                                           ; $7a91: $00
    rst RST_38                                    ; $7a92: $ff
    ld h, b                                       ; $7a93: $60
    rst RST_38                                    ; $7a94: $ff
    add b                                         ; $7a95: $80
    rst RST_38                                    ; $7a96: $ff
    nop                                           ; $7a97: $00
    rst RST_38                                    ; $7a98: $ff
    inc c                                         ; $7a99: $0c
    rst RST_38                                    ; $7a9a: $ff
    inc c                                         ; $7a9b: $0c
    rst RST_38                                    ; $7a9c: $ff
    nop                                           ; $7a9d: $00
    rst RST_38                                    ; $7a9e: $ff
    nop                                           ; $7a9f: $00
    rst RST_38                                    ; $7aa0: $ff
    nop                                           ; $7aa1: $00
    rst RST_38                                    ; $7aa2: $ff
    nop                                           ; $7aa3: $00
    rst RST_38                                    ; $7aa4: $ff
    nop                                           ; $7aa5: $00
    rst RST_38                                    ; $7aa6: $ff
    nop                                           ; $7aa7: $00
    rst RST_38                                    ; $7aa8: $ff
    ret nz                                        ; $7aa9: $c0

    rst RST_38                                    ; $7aaa: $ff
    ret nz                                        ; $7aab: $c0

    rst RST_38                                    ; $7aac: $ff
    nop                                           ; $7aad: $00
    rst RST_38                                    ; $7aae: $ff
    nop                                           ; $7aaf: $00
    rst RST_38                                    ; $7ab0: $ff
    nop                                           ; $7ab1: $00
    rst RST_38                                    ; $7ab2: $ff
    nop                                           ; $7ab3: $00
    rst RST_38                                    ; $7ab4: $ff
    nop                                           ; $7ab5: $00
    rst RST_38                                    ; $7ab6: $ff
    nop                                           ; $7ab7: $00
    rst RST_38                                    ; $7ab8: $ff
    nop                                           ; $7ab9: $00
    rst RST_38                                    ; $7aba: $ff
    nop                                           ; $7abb: $00
    rst RST_38                                    ; $7abc: $ff
    nop                                           ; $7abd: $00
    rst RST_38                                    ; $7abe: $ff
    nop                                           ; $7abf: $00
    rst RST_38                                    ; $7ac0: $ff
    nop                                           ; $7ac1: $00
    rst RST_38                                    ; $7ac2: $ff
    nop                                           ; $7ac3: $00
    rst RST_38                                    ; $7ac4: $ff
    nop                                           ; $7ac5: $00
    rst RST_38                                    ; $7ac6: $ff
    nop                                           ; $7ac7: $00
    rst RST_38                                    ; $7ac8: $ff
    nop                                           ; $7ac9: $00
    rst RST_38                                    ; $7aca: $ff
    nop                                           ; $7acb: $00
    rst RST_38                                    ; $7acc: $ff
    nop                                           ; $7acd: $00
    rst RST_38                                    ; $7ace: $ff
    nop                                           ; $7acf: $00
    rst RST_38                                    ; $7ad0: $ff
    nop                                           ; $7ad1: $00
    rst RST_38                                    ; $7ad2: $ff
    nop                                           ; $7ad3: $00
    rst RST_38                                    ; $7ad4: $ff
    nop                                           ; $7ad5: $00
    rst RST_38                                    ; $7ad6: $ff
    nop                                           ; $7ad7: $00
    rst RST_38                                    ; $7ad8: $ff
    nop                                           ; $7ad9: $00
    rst RST_38                                    ; $7ada: $ff
    nop                                           ; $7adb: $00
    rst RST_38                                    ; $7adc: $ff
    nop                                           ; $7add: $00
    rst RST_38                                    ; $7ade: $ff
    nop                                           ; $7adf: $00
    rst RST_38                                    ; $7ae0: $ff
    nop                                           ; $7ae1: $00
    rst RST_38                                    ; $7ae2: $ff
    nop                                           ; $7ae3: $00
    rst RST_38                                    ; $7ae4: $ff
    nop                                           ; $7ae5: $00
    rst RST_38                                    ; $7ae6: $ff
    nop                                           ; $7ae7: $00
    rst RST_38                                    ; $7ae8: $ff
    nop                                           ; $7ae9: $00
    rst RST_38                                    ; $7aea: $ff
    nop                                           ; $7aeb: $00
    rst RST_38                                    ; $7aec: $ff
    nop                                           ; $7aed: $00
    rst RST_38                                    ; $7aee: $ff
    nop                                           ; $7aef: $00
    rst RST_38                                    ; $7af0: $ff
    nop                                           ; $7af1: $00
    rst RST_38                                    ; $7af2: $ff
    nop                                           ; $7af3: $00
    rst RST_38                                    ; $7af4: $ff
    nop                                           ; $7af5: $00
    rst RST_38                                    ; $7af6: $ff
    nop                                           ; $7af7: $00
    rst RST_38                                    ; $7af8: $ff
    nop                                           ; $7af9: $00
    rst RST_38                                    ; $7afa: $ff
    nop                                           ; $7afb: $00
    rst RST_38                                    ; $7afc: $ff
    nop                                           ; $7afd: $00
    rst RST_38                                    ; $7afe: $ff
    nop                                           ; $7aff: $00
    rst RST_38                                    ; $7b00: $ff
    nop                                           ; $7b01: $00
    rst RST_38                                    ; $7b02: $ff
    nop                                           ; $7b03: $00
    rst RST_38                                    ; $7b04: $ff
    nop                                           ; $7b05: $00
    rst RST_38                                    ; $7b06: $ff
    nop                                           ; $7b07: $00
    rst RST_38                                    ; $7b08: $ff
    nop                                           ; $7b09: $00
    rst RST_38                                    ; $7b0a: $ff
    nop                                           ; $7b0b: $00
    rst RST_38                                    ; $7b0c: $ff
    nop                                           ; $7b0d: $00
    rst RST_38                                    ; $7b0e: $ff
    nop                                           ; $7b0f: $00
    rst RST_38                                    ; $7b10: $ff
    nop                                           ; $7b11: $00
    rst RST_38                                    ; $7b12: $ff
    nop                                           ; $7b13: $00
    rst RST_38                                    ; $7b14: $ff
    nop                                           ; $7b15: $00
    rst RST_38                                    ; $7b16: $ff
    nop                                           ; $7b17: $00
    rst RST_38                                    ; $7b18: $ff
    nop                                           ; $7b19: $00
    rst RST_38                                    ; $7b1a: $ff
    nop                                           ; $7b1b: $00
    rst RST_38                                    ; $7b1c: $ff
    nop                                           ; $7b1d: $00
    rst RST_38                                    ; $7b1e: $ff
    nop                                           ; $7b1f: $00
    rst RST_38                                    ; $7b20: $ff
    nop                                           ; $7b21: $00
    rst RST_38                                    ; $7b22: $ff
    nop                                           ; $7b23: $00
    rst RST_38                                    ; $7b24: $ff
    nop                                           ; $7b25: $00
    rst RST_38                                    ; $7b26: $ff
    nop                                           ; $7b27: $00
    rst RST_38                                    ; $7b28: $ff
    nop                                           ; $7b29: $00
    rst RST_38                                    ; $7b2a: $ff
    nop                                           ; $7b2b: $00
    rst RST_38                                    ; $7b2c: $ff
    nop                                           ; $7b2d: $00
    rst RST_38                                    ; $7b2e: $ff
    nop                                           ; $7b2f: $00
    rst RST_38                                    ; $7b30: $ff
    nop                                           ; $7b31: $00
    rst RST_38                                    ; $7b32: $ff
    nop                                           ; $7b33: $00
    rst RST_38                                    ; $7b34: $ff
    nop                                           ; $7b35: $00
    rst RST_38                                    ; $7b36: $ff
    nop                                           ; $7b37: $00
    rst RST_38                                    ; $7b38: $ff
    nop                                           ; $7b39: $00
    rst RST_38                                    ; $7b3a: $ff
    nop                                           ; $7b3b: $00
    rst RST_38                                    ; $7b3c: $ff
    nop                                           ; $7b3d: $00
    rst RST_38                                    ; $7b3e: $ff
    nop                                           ; $7b3f: $00
    rst RST_38                                    ; $7b40: $ff
    nop                                           ; $7b41: $00
    rst RST_38                                    ; $7b42: $ff
    nop                                           ; $7b43: $00
    rst RST_38                                    ; $7b44: $ff
    nop                                           ; $7b45: $00
    rst RST_38                                    ; $7b46: $ff
    nop                                           ; $7b47: $00
    rst RST_38                                    ; $7b48: $ff
    nop                                           ; $7b49: $00
    rst RST_38                                    ; $7b4a: $ff
    nop                                           ; $7b4b: $00
    rst RST_38                                    ; $7b4c: $ff
    nop                                           ; $7b4d: $00
    rst RST_38                                    ; $7b4e: $ff
    nop                                           ; $7b4f: $00
    rst RST_38                                    ; $7b50: $ff
    nop                                           ; $7b51: $00
    rst RST_38                                    ; $7b52: $ff
    nop                                           ; $7b53: $00
    rst RST_38                                    ; $7b54: $ff
    nop                                           ; $7b55: $00
    rst RST_38                                    ; $7b56: $ff
    nop                                           ; $7b57: $00
    rst RST_38                                    ; $7b58: $ff
    nop                                           ; $7b59: $00
    rst RST_38                                    ; $7b5a: $ff
    nop                                           ; $7b5b: $00
    rst RST_38                                    ; $7b5c: $ff
    nop                                           ; $7b5d: $00
    rst RST_38                                    ; $7b5e: $ff
    nop                                           ; $7b5f: $00
    rst RST_38                                    ; $7b60: $ff
    nop                                           ; $7b61: $00
    rst RST_38                                    ; $7b62: $ff
    nop                                           ; $7b63: $00
    rst RST_38                                    ; $7b64: $ff
    nop                                           ; $7b65: $00
    rst RST_38                                    ; $7b66: $ff
    nop                                           ; $7b67: $00
    rst RST_38                                    ; $7b68: $ff
    nop                                           ; $7b69: $00
    rst RST_38                                    ; $7b6a: $ff
    nop                                           ; $7b6b: $00
    rst RST_38                                    ; $7b6c: $ff
    nop                                           ; $7b6d: $00
    rst RST_38                                    ; $7b6e: $ff
    nop                                           ; $7b6f: $00
    rst RST_38                                    ; $7b70: $ff
    nop                                           ; $7b71: $00
    rst RST_38                                    ; $7b72: $ff
    nop                                           ; $7b73: $00
    rst RST_38                                    ; $7b74: $ff
    nop                                           ; $7b75: $00
    rst RST_38                                    ; $7b76: $ff
    nop                                           ; $7b77: $00
    rst RST_38                                    ; $7b78: $ff
    nop                                           ; $7b79: $00
    rst RST_38                                    ; $7b7a: $ff
    nop                                           ; $7b7b: $00
    rst RST_38                                    ; $7b7c: $ff
    nop                                           ; $7b7d: $00
    rst RST_38                                    ; $7b7e: $ff
    nop                                           ; $7b7f: $00
    nop                                           ; $7b80: $00
    rst RST_38                                    ; $7b81: $ff
    nop                                           ; $7b82: $00
    nop                                           ; $7b83: $00
    nop                                           ; $7b84: $00
    nop                                           ; $7b85: $00
    nop                                           ; $7b86: $00
    nop                                           ; $7b87: $00
    ld a, a                                       ; $7b88: $7f
    nop                                           ; $7b89: $00
    ld a, a                                       ; $7b8a: $7f
    nop                                           ; $7b8b: $00
    ld a, a                                       ; $7b8c: $7f
    nop                                           ; $7b8d: $00
    ld a, a                                       ; $7b8e: $7f
    nop                                           ; $7b8f: $00
    nop                                           ; $7b90: $00
    rst RST_38                                    ; $7b91: $ff
    ld a, a                                       ; $7b92: $7f
    ld a, a                                       ; $7b93: $7f
    ld a, a                                       ; $7b94: $7f
    ld a, a                                       ; $7b95: $7f
    ld a, a                                       ; $7b96: $7f
    ld a, a                                       ; $7b97: $7f
    ld h, b                                       ; $7b98: $60
    ld a, a                                       ; $7b99: $7f
    ld h, b                                       ; $7b9a: $60
    ld a, a                                       ; $7b9b: $7f
    ld h, b                                       ; $7b9c: $60
    ld a, a                                       ; $7b9d: $7f
    ld h, b                                       ; $7b9e: $60
    ld a, a                                       ; $7b9f: $7f
    nop                                           ; $7ba0: $00
    add b                                         ; $7ba1: $80
    rrca                                          ; $7ba2: $0f
    add b                                         ; $7ba3: $80
    rrca                                          ; $7ba4: $0f
    add b                                         ; $7ba5: $80
    rrca                                          ; $7ba6: $0f
    add b                                         ; $7ba7: $80
    rrca                                          ; $7ba8: $0f
    add b                                         ; $7ba9: $80
    rrca                                          ; $7baa: $0f
    add b                                         ; $7bab: $80
    rrca                                          ; $7bac: $0f
    add b                                         ; $7bad: $80
    rrca                                          ; $7bae: $0f
    add b                                         ; $7baf: $80
    nop                                           ; $7bb0: $00
    add b                                         ; $7bb1: $80
    ld a, a                                       ; $7bb2: $7f
    rst RST_38                                    ; $7bb3: $ff
    ld a, a                                       ; $7bb4: $7f
    rst RST_38                                    ; $7bb5: $ff
    ld [hl], b                                    ; $7bb6: $70
    rst RST_38                                    ; $7bb7: $ff
    ld [hl], b                                    ; $7bb8: $70
    rst RST_38                                    ; $7bb9: $ff
    ld [hl], b                                    ; $7bba: $70
    rst RST_38                                    ; $7bbb: $ff
    ld [hl], b                                    ; $7bbc: $70
    rst RST_38                                    ; $7bbd: $ff
    ld [hl], b                                    ; $7bbe: $70
    rst RST_38                                    ; $7bbf: $ff
    nop                                           ; $7bc0: $00
    add b                                         ; $7bc1: $80
    rrca                                          ; $7bc2: $0f
    nop                                           ; $7bc3: $00
    rrca                                          ; $7bc4: $0f
    nop                                           ; $7bc5: $00
    rra                                           ; $7bc6: $1f
    nop                                           ; $7bc7: $00
    ld a, a                                       ; $7bc8: $7f
    nop                                           ; $7bc9: $00
    ld a, a                                       ; $7bca: $7f
    nop                                           ; $7bcb: $00
    ld a, a                                       ; $7bcc: $7f
    nop                                           ; $7bcd: $00
    ld a, a                                       ; $7bce: $7f
    nop                                           ; $7bcf: $00
    nop                                           ; $7bd0: $00
    rlca                                          ; $7bd1: $07
    ld a, b                                       ; $7bd2: $78
    nop                                           ; $7bd3: $00
    ld a, b                                       ; $7bd4: $78
    nop                                           ; $7bd5: $00
    ld a, h                                       ; $7bd6: $7c
    nop                                           ; $7bd7: $00
    ld a, a                                       ; $7bd8: $7f
    nop                                           ; $7bd9: $00
    ld a, a                                       ; $7bda: $7f
    nop                                           ; $7bdb: $00
    ld a, a                                       ; $7bdc: $7f
    nop                                           ; $7bdd: $00
    ld a, a                                       ; $7bde: $7f
    nop                                           ; $7bdf: $00
    nop                                           ; $7be0: $00
    nop                                           ; $7be1: $00
    ld a, a                                       ; $7be2: $7f
    ld a, a                                       ; $7be3: $7f
    ld b, b                                       ; $7be4: $40
    ld a, a                                       ; $7be5: $7f
    ld b, b                                       ; $7be6: $40
    ld a, a                                       ; $7be7: $7f
    ld b, b                                       ; $7be8: $40
    ld a, a                                       ; $7be9: $7f
    ld h, b                                       ; $7bea: $60
    rst RST_38                                    ; $7beb: $ff
    ld [hl], b                                    ; $7bec: $70
    rst RST_38                                    ; $7bed: $ff
    ld [hl], b                                    ; $7bee: $70
    rst RST_38                                    ; $7bef: $ff
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

Jump_009_7bff:
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

Call_009_7dc0:
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
