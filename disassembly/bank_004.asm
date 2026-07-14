; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    sbc c                                         ; $4000: $99
    nop                                           ; $4001: $00
    nop                                           ; $4002: $00
    nop                                           ; $4003: $00
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    nop                                           ; $4006: $00
    nop                                           ; $4007: $00
    nop                                           ; $4008: $00
    nop                                           ; $4009: $00
    nop                                           ; $400a: $00
    nop                                           ; $400b: $00
    nop                                           ; $400c: $00
    nop                                           ; $400d: $00
    nop                                           ; $400e: $00
    nop                                           ; $400f: $00
    nop                                           ; $4010: $00
    nop                                           ; $4011: $00
    nop                                           ; $4012: $00
    nop                                           ; $4013: $00
    nop                                           ; $4014: $00
    nop                                           ; $4015: $00
    nop                                           ; $4016: $00
    nop                                           ; $4017: $00
    nop                                           ; $4018: $00
    nop                                           ; $4019: $00
    nop                                           ; $401a: $00
    nop                                           ; $401b: $00
    nop                                           ; $401c: $00
    nop                                           ; $401d: $00
    nop                                           ; $401e: $00
    nop                                           ; $401f: $00
    nop                                           ; $4020: $00
    nop                                           ; $4021: $00
    nop                                           ; $4022: $00
    nop                                           ; $4023: $00
    nop                                           ; $4024: $00
    nop                                           ; $4025: $00
    nop                                           ; $4026: $00
    nop                                           ; $4027: $00
    nop                                           ; $4028: $00

jr_004_4029:
    nop                                           ; $4029: $00
    nop                                           ; $402a: $00
    nop                                           ; $402b: $00
    nop                                           ; $402c: $00
    nop                                           ; $402d: $00
    nop                                           ; $402e: $00
    nop                                           ; $402f: $00
    nop                                           ; $4030: $00
    rst RST_38                                    ; $4031: $ff
    nop                                           ; $4032: $00
    rst RST_38                                    ; $4033: $ff
    nop                                           ; $4034: $00
    rst RST_38                                    ; $4035: $ff
    nop                                           ; $4036: $00
    rst RST_38                                    ; $4037: $ff
    nop                                           ; $4038: $00
    rst RST_38                                    ; $4039: $ff
    nop                                           ; $403a: $00
    rst RST_38                                    ; $403b: $ff
    nop                                           ; $403c: $00
    rst RST_38                                    ; $403d: $ff
    nop                                           ; $403e: $00

jr_004_403f:
    rst RST_38                                    ; $403f: $ff
    nop                                           ; $4040: $00
    rst RST_38                                    ; $4041: $ff
    nop                                           ; $4042: $00
    rst RST_38                                    ; $4043: $ff
    nop                                           ; $4044: $00
    rst RST_38                                    ; $4045: $ff
    nop                                           ; $4046: $00
    rst RST_38                                    ; $4047: $ff
    nop                                           ; $4048: $00
    rst RST_38                                    ; $4049: $ff
    nop                                           ; $404a: $00
    rst RST_38                                    ; $404b: $ff
    nop                                           ; $404c: $00
    rst RST_38                                    ; $404d: $ff
    nop                                           ; $404e: $00
    rst RST_38                                    ; $404f: $ff
    nop                                           ; $4050: $00
    rst RST_38                                    ; $4051: $ff
    inc bc                                        ; $4052: $03
    db $fc                                        ; $4053: $fc
    ld c, $f1                                     ; $4054: $0e $f1
    jr jr_004_403f                                ; $4056: $18 $e7

    jr nc, jr_004_4029                            ; $4058: $30 $cf

    ld h, b                                       ; $405a: $60
    sbc a                                         ; $405b: $9f
    ld b, b                                       ; $405c: $40
    cp a                                          ; $405d: $bf
    ret nz                                        ; $405e: $c0

    ccf                                           ; $405f: $3f
    nop                                           ; $4060: $00
    rst RST_38                                    ; $4061: $ff
    ld [bc], a                                    ; $4062: $02
    db $fc                                        ; $4063: $fc
    ld [$11f0], sp                                ; $4064: $08 $f0 $11
    ldh [$ff27], a                                ; $4067: $e0 $27
    ret nz                                        ; $4069: $c0

    ld c, a                                       ; $406a: $4f
    add b                                         ; $406b: $80
    rra                                           ; $406c: $1f
    and b                                         ; $406d: $a0
    sbc a                                         ; $406e: $9f
    jr nz, jr_004_4071                            ; $406f: $20 $00

jr_004_4071:
    rst RST_38                                    ; $4071: $ff
    rst RST_38                                    ; $4072: $ff
    nop                                           ; $4073: $00
    nop                                           ; $4074: $00
    rst RST_38                                    ; $4075: $ff
    nop                                           ; $4076: $00
    rst RST_38                                    ; $4077: $ff
    nop                                           ; $4078: $00
    rst RST_38                                    ; $4079: $ff
    nop                                           ; $407a: $00
    rst RST_38                                    ; $407b: $ff
    nop                                           ; $407c: $00
    rst RST_38                                    ; $407d: $ff
    nop                                           ; $407e: $00
    rst RST_38                                    ; $407f: $ff
    nop                                           ; $4080: $00
    rst RST_38                                    ; $4081: $ff
    nop                                           ; $4082: $00
    nop                                           ; $4083: $00
    nop                                           ; $4084: $00
    nop                                           ; $4085: $00
    rst RST_38                                    ; $4086: $ff
    nop                                           ; $4087: $00
    rst RST_38                                    ; $4088: $ff
    nop                                           ; $4089: $00
    rst RST_38                                    ; $408a: $ff
    nop                                           ; $408b: $00
    rst RST_38                                    ; $408c: $ff
    nop                                           ; $408d: $00
    rst RST_38                                    ; $408e: $ff
    nop                                           ; $408f: $00
    nop                                           ; $4090: $00
    rst RST_38                                    ; $4091: $ff
    rst RST_38                                    ; $4092: $ff
    nop                                           ; $4093: $00
    ld [de], a                                    ; $4094: $12
    db $ed                                        ; $4095: $ed
    nop                                           ; $4096: $00
    rst RST_38                                    ; $4097: $ff
    nop                                           ; $4098: $00
    rst RST_38                                    ; $4099: $ff
    nop                                           ; $409a: $00
    rst RST_38                                    ; $409b: $ff
    inc bc                                        ; $409c: $03
    cp $07                                        ; $409d: $fe $07
    ld sp, hl                                     ; $409f: $f9
    nop                                           ; $40a0: $00
    rst RST_38                                    ; $40a1: $ff
    nop                                           ; $40a2: $00
    nop                                           ; $40a3: $00
    ld [de], a                                    ; $40a4: $12
    dec l                                         ; $40a5: $2d
    rst RST_38                                    ; $40a6: $ff
    nop                                           ; $40a7: $00
    rst RST_38                                    ; $40a8: $ff
    nop                                           ; $40a9: $00
    rst RST_38                                    ; $40aa: $ff
    nop                                           ; $40ab: $00
    cp $02                                        ; $40ac: $fe $02
    ld sp, hl                                     ; $40ae: $f9
    ld bc, rP1                                    ; $40af: $01 $00 $ff
    rst RST_38                                    ; $40b2: $ff
    nop                                           ; $40b3: $00
    jp nc, $032d                                  ; $40b4: $d2 $2d $03

    cp $3f                                        ; $40b7: $fe $3f
    pop hl                                        ; $40b9: $e1
    ldh a, [$ff9f]                                ; $40ba: $f0 $9f
    ret nz                                        ; $40bc: $c0

    ld a, a                                       ; $40bd: $7f
    nop                                           ; $40be: $00
    rst RST_38                                    ; $40bf: $ff
    nop                                           ; $40c0: $00
    rst RST_38                                    ; $40c1: $ff
    nop                                           ; $40c2: $00
    nop                                           ; $40c3: $00
    jp nc, $fe2d                                  ; $40c4: $d2 $2d $fe

    ld [bc], a                                    ; $40c7: $02
    pop hl                                        ; $40c8: $e1
    ld hl, $909f                                  ; $40c9: $21 $9f $90
    ld a, a                                       ; $40cc: $7f
    ld b, b                                       ; $40cd: $40
    rst RST_38                                    ; $40ce: $ff
    nop                                           ; $40cf: $00
    nop                                           ; $40d0: $00
    rst RST_38                                    ; $40d1: $ff
    rst RST_38                                    ; $40d2: $ff
    nop                                           ; $40d3: $00
    rst RST_38                                    ; $40d4: $ff
    nop                                           ; $40d5: $00
    rst RST_38                                    ; $40d6: $ff
    inc bc                                        ; $40d7: $03
    ld bc, $00ff                                  ; $40d8: $01 $ff $00
    rst RST_38                                    ; $40db: $ff
    nop                                           ; $40dc: $00
    rst RST_38                                    ; $40dd: $ff
    nop                                           ; $40de: $00
    rst RST_38                                    ; $40df: $ff
    nop                                           ; $40e0: $00
    rst RST_38                                    ; $40e1: $ff
    nop                                           ; $40e2: $00
    nop                                           ; $40e3: $00
    rst RST_38                                    ; $40e4: $ff
    nop                                           ; $40e5: $00
    inc bc                                        ; $40e6: $03
    inc bc                                        ; $40e7: $03
    rst RST_38                                    ; $40e8: $ff
    ld bc, $00ff                                  ; $40e9: $01 $ff $00
    rst RST_38                                    ; $40ec: $ff
    nop                                           ; $40ed: $00
    rst RST_38                                    ; $40ee: $ff
    nop                                           ; $40ef: $00
    nop                                           ; $40f0: $00
    rst RST_38                                    ; $40f1: $ff
    rst RST_38                                    ; $40f2: $ff
    nop                                           ; $40f3: $00
    rst RST_38                                    ; $40f4: $ff
    nop                                           ; $40f5: $00
    nop                                           ; $40f6: $00
    rst RST_38                                    ; $40f7: $ff
    ldh [rIE], a                                  ; $40f8: $e0 $ff
    jr c, @+$01                                   ; $40fa: $38 $ff

    ld c, $ff                                     ; $40fc: $0e $ff
    inc bc                                        ; $40fe: $03
    rst RST_38                                    ; $40ff: $ff
    nop                                           ; $4100: $00
    rst RST_38                                    ; $4101: $ff
    nop                                           ; $4102: $00
    nop                                           ; $4103: $00
    rst RST_38                                    ; $4104: $ff
    nop                                           ; $4105: $00
    rst RST_38                                    ; $4106: $ff
    nop                                           ; $4107: $00
    rst RST_38                                    ; $4108: $ff
    ldh [rIE], a                                  ; $4109: $e0 $ff
    jr c, @+$01                                   ; $410b: $38 $ff

    ld c, $ff                                     ; $410d: $0e $ff
    inc bc                                        ; $410f: $03
    nop                                           ; $4110: $00
    rst RST_38                                    ; $4111: $ff
    rst RST_38                                    ; $4112: $ff
    nop                                           ; $4113: $00
    rst RST_38                                    ; $4114: $ff
    nop                                           ; $4115: $00
    nop                                           ; $4116: $00
    rst RST_38                                    ; $4117: $ff
    nop                                           ; $4118: $00
    rst RST_38                                    ; $4119: $ff
    nop                                           ; $411a: $00
    rst RST_38                                    ; $411b: $ff
    nop                                           ; $411c: $00
    rst RST_38                                    ; $411d: $ff
    nop                                           ; $411e: $00
    rst RST_38                                    ; $411f: $ff
    nop                                           ; $4120: $00
    rst RST_38                                    ; $4121: $ff
    nop                                           ; $4122: $00
    nop                                           ; $4123: $00
    rst RST_38                                    ; $4124: $ff
    nop                                           ; $4125: $00
    rst RST_38                                    ; $4126: $ff
    nop                                           ; $4127: $00
    rst RST_38                                    ; $4128: $ff
    nop                                           ; $4129: $00
    rst RST_38                                    ; $412a: $ff
    nop                                           ; $412b: $00
    rst RST_38                                    ; $412c: $ff
    nop                                           ; $412d: $00
    rst RST_38                                    ; $412e: $ff
    nop                                           ; $412f: $00
    ret nz                                        ; $4130: $c0

    ccf                                           ; $4131: $3f
    ret nz                                        ; $4132: $c0

    ccf                                           ; $4133: $3f
    ret nz                                        ; $4134: $c0

    ccf                                           ; $4135: $3f
    ret nz                                        ; $4136: $c0

    ccf                                           ; $4137: $3f
    ret nz                                        ; $4138: $c0

    ccf                                           ; $4139: $3f
    ret nz                                        ; $413a: $c0

    ccf                                           ; $413b: $3f
    ret nz                                        ; $413c: $c0

    ccf                                           ; $413d: $3f
    ret nz                                        ; $413e: $c0

    ccf                                           ; $413f: $3f
    ld a, a                                       ; $4140: $7f
    nop                                           ; $4141: $00
    ld a, a                                       ; $4142: $7f
    nop                                           ; $4143: $00
    ld a, a                                       ; $4144: $7f
    nop                                           ; $4145: $00
    ld a, a                                       ; $4146: $7f
    nop                                           ; $4147: $00
    ld a, a                                       ; $4148: $7f
    nop                                           ; $4149: $00
    ld a, a                                       ; $414a: $7f
    nop                                           ; $414b: $00
    ld a, a                                       ; $414c: $7f
    nop                                           ; $414d: $00
    ld a, a                                       ; $414e: $7f
    nop                                           ; $414f: $00
    nop                                           ; $4150: $00
    rst RST_38                                    ; $4151: $ff
    nop                                           ; $4152: $00
    rst RST_38                                    ; $4153: $ff
    nop                                           ; $4154: $00
    rst RST_38                                    ; $4155: $ff
    rst RST_38                                    ; $4156: $ff
    rst RST_38                                    ; $4157: $ff
    nop                                           ; $4158: $00
    rst RST_38                                    ; $4159: $ff
    nop                                           ; $415a: $00
    rst RST_38                                    ; $415b: $ff
    nop                                           ; $415c: $00
    rst RST_38                                    ; $415d: $ff
    nop                                           ; $415e: $00
    rst RST_38                                    ; $415f: $ff
    rst RST_38                                    ; $4160: $ff
    nop                                           ; $4161: $00
    rst RST_38                                    ; $4162: $ff
    nop                                           ; $4163: $00
    rst RST_38                                    ; $4164: $ff
    nop                                           ; $4165: $00
    nop                                           ; $4166: $00
    nop                                           ; $4167: $00
    rst RST_38                                    ; $4168: $ff
    nop                                           ; $4169: $00
    rst RST_38                                    ; $416a: $ff
    nop                                           ; $416b: $00
    rst RST_38                                    ; $416c: $ff
    nop                                           ; $416d: $00
    rst RST_38                                    ; $416e: $ff
    nop                                           ; $416f: $00
    nop                                           ; $4170: $00

jr_004_4171:
    rst RST_38                                    ; $4171: $ff
    nop                                           ; $4172: $00
    rst RST_38                                    ; $4173: $ff
    nop                                           ; $4174: $00

jr_004_4175:
    rst RST_38                                    ; $4175: $ff
    nop                                           ; $4176: $00
    rst RST_38                                    ; $4177: $ff
    ld [bc], a                                    ; $4178: $02
    db $fd                                        ; $4179: $fd
    nop                                           ; $417a: $00
    rst RST_38                                    ; $417b: $ff
    ld [bc], a                                    ; $417c: $02
    db $fd                                        ; $417d: $fd
    nop                                           ; $417e: $00
    rst RST_38                                    ; $417f: $ff
    rst RST_38                                    ; $4180: $ff
    nop                                           ; $4181: $00
    rst RST_38                                    ; $4182: $ff
    nop                                           ; $4183: $00
    rst RST_38                                    ; $4184: $ff
    nop                                           ; $4185: $00
    pop af                                        ; $4186: $f1
    nop                                           ; $4187: $00
    or $00                                        ; $4188: $f6 $00
    or $00                                        ; $418a: $f6 $00
    or $00                                        ; $418c: $f6 $00
    pop af                                        ; $418e: $f1
    nop                                           ; $418f: $00
    rra                                           ; $4190: $1f
    ldh a, [rP1]                                  ; $4191: $f0 $00
    rst RST_38                                    ; $4193: $ff
    nop                                           ; $4194: $00
    rst RST_38                                    ; $4195: $ff
    ld [bc], a                                    ; $4196: $02

jr_004_4197:
    db $fd                                        ; $4197: $fd
    jr z, jr_004_4171                             ; $4198: $28 $d7

    nop                                           ; $419a: $00

jr_004_419b:
    rst RST_38                                    ; $419b: $ff
    jr z, jr_004_4175                             ; $419c: $28 $d7

    inc bc                                        ; $419e: $03
    cp $f0                                        ; $419f: $fe $f0
    inc de                                        ; $41a1: $13
    rst RST_38                                    ; $41a2: $ff
    nop                                           ; $41a3: $00
    rst RST_38                                    ; $41a4: $ff
    nop                                           ; $41a5: $00
    add $00                                       ; $41a6: $c6 $00
    cp e                                          ; $41a8: $bb
    nop                                           ; $41a9: $00
    cp e                                          ; $41aa: $bb
    nop                                           ; $41ab: $00
    cp e                                          ; $41ac: $bb
    nop                                           ; $41ad: $00
    add $02                                       ; $41ae: $c6 $02
    db $fc                                        ; $41b0: $fc
    inc bc                                        ; $41b1: $03
    nop                                           ; $41b2: $00
    rst RST_38                                    ; $41b3: $ff
    nop                                           ; $41b4: $00
    rst RST_38                                    ; $41b5: $ff
    jr nz, jr_004_4197                            ; $41b6: $20 $df

    ld bc, $00fe                                  ; $41b8: $01 $fe $00
    rst RST_38                                    ; $41bb: $ff
    ld a, a                                       ; $41bc: $7f
    add $c0                                       ; $41bd: $c6 $c0
    ccf                                           ; $41bf: $3f
    ld e, h                                       ; $41c0: $5c
    and e                                         ; $41c1: $a3
    rst RST_38                                    ; $41c2: $ff
    nop                                           ; $41c3: $00
    rst RST_38                                    ; $41c4: $ff
    nop                                           ; $41c5: $00
    ccf                                           ; $41c6: $3f

jr_004_41c7:
    nop                                           ; $41c7: $00
    ld a, a                                       ; $41c8: $7f
    nop                                           ; $41c9: $00
    ld a, [hl]                                    ; $41ca: $7e
    nop                                           ; $41cb: $00
    ld b, a                                       ; $41cc: $47
    ld b, [hl]                                    ; $41cd: $46
    ld a, $01                                     ; $41ce: $3e $01
    ret nz                                        ; $41d0: $c0

    ccf                                           ; $41d1: $3f
    jr c, jr_004_419b                             ; $41d2: $38 $c7

    ld b, $ff                                     ; $41d4: $06 $ff
    ld bc, $54ff                                  ; $41d6: $01 $ff $54
    xor e                                         ; $41d9: $ab
    nop                                           ; $41da: $00
    rst RST_38                                    ; $41db: $ff
    ldh [$ffdf], a                                ; $41dc: $e0 $df
    jr jr_004_41c7                                ; $41de: $18 $e7

    cp a                                          ; $41e0: $bf
    ld b, b                                       ; $41e1: $40
    rst RST_00                                    ; $41e2: $c7
    jr c, @+$01                                   ; $41e3: $38 $ff

    ld b, $77                                     ; $41e5: $06 $77
    ld bc, $0077                                  ; $41e7: $01 $77 $00
    xor e                                         ; $41ea: $ab
    nop                                           ; $41eb: $00
    ld a, [$c2c0]                                 ; $41ec: $fa $c0 $c2
    jr c, @+$03                                   ; $41ef: $38 $01

    cp $00                                        ; $41f1: $fe $00
    rst RST_38                                    ; $41f3: $ff
    nop                                           ; $41f4: $00
    rst RST_38                                    ; $41f5: $ff
    add b                                         ; $41f6: $80

jr_004_41f7:
    rst RST_38                                    ; $41f7: $ff
    ld d, c                                       ; $41f8: $51
    xor $60                                       ; $41f9: $ee $60

jr_004_41fb:
    sbc a                                         ; $41fb: $9f
    db $10                                        ; $41fc: $10
    rst RST_28                                    ; $41fd: $ef
    ld [$fef7], sp                                ; $41fe: $08 $f7 $fe
    ld bc, $00ff                                  ; $4201: $01 $ff $00
    rst RST_38                                    ; $4204: $ff

jr_004_4205:
    nop                                           ; $4205: $00
    rst RST_38                                    ; $4206: $ff
    add b                                         ; $4207: $80
    ld [hl], c                                    ; $4208: $71
    ld c, [hl]                                    ; $4209: $4e
    ld e, e                                       ; $420a: $5b
    inc b                                         ; $420b: $04
    db $eb                                        ; $420c: $eb
    inc b                                         ; $420d: $04
    db $e3                                        ; $420e: $e3
    inc b                                         ; $420f: $04
    add b                                         ; $4210: $80
    ld a, a                                       ; $4211: $7f
    ret nz                                        ; $4212: $c0

    ccf                                           ; $4213: $3f
    ld b, b                                       ; $4214: $40
    cp a                                          ; $4215: $bf
    jr nz, jr_004_41f7                            ; $4216: $20 $df

    jr nc, @-$2f                                  ; $4218: $30 $cf

    jr nz, jr_004_41fb                            ; $421a: $20 $df

    jr jr_004_4205                                ; $421c: $18 $e7

    db $10                                        ; $421e: $10
    rst RST_28                                    ; $421f: $ef
    ld a, a                                       ; $4220: $7f
    add b                                         ; $4221: $80
    ccf                                           ; $4222: $3f
    ret nz                                        ; $4223: $c0

    cp a                                          ; $4224: $bf
    ld b, b                                       ; $4225: $40
    call $9520                                    ; $4226: $cd $20 $95
    ld h, b                                       ; $4229: $60
    adc l                                         ; $422a: $8d
    ld h, b                                       ; $422b: $60
    sbc l                                         ; $422c: $9d
    ld h, b                                       ; $422d: $60
    or l                                          ; $422e: $b5
    ld b, b                                       ; $422f: $40
    nop                                           ; $4230: $00
    rst RST_38                                    ; $4231: $ff
    nop                                           ; $4232: $00
    rst RST_38                                    ; $4233: $ff
    nop                                           ; $4234: $00
    rst RST_38                                    ; $4235: $ff
    ld d, b                                       ; $4236: $50
    xor a                                         ; $4237: $af
    jr nz, @-$1f                                  ; $4238: $20 $df

    nop                                           ; $423a: $00
    rst RST_38                                    ; $423b: $ff
    jr nz, @-$1f                                  ; $423c: $20 $df

    ld d, b                                       ; $423e: $50
    xor a                                         ; $423f: $af
    rst RST_38                                    ; $4240: $ff
    nop                                           ; $4241: $00
    rst RST_38                                    ; $4242: $ff
    nop                                           ; $4243: $00
    rst RST_38                                    ; $4244: $ff
    nop                                           ; $4245: $00
    ld [hl], a                                    ; $4246: $77
    nop                                           ; $4247: $00
    xor a                                         ; $4248: $af
    nop                                           ; $4249: $00
    rst RST_18                                    ; $424a: $df
    nop                                           ; $424b: $00
    xor a                                         ; $424c: $af
    nop                                           ; $424d: $00
    ld [hl], a                                    ; $424e: $77
    nop                                           ; $424f: $00
    nop                                           ; $4250: $00
    nop                                           ; $4251: $00
    nop                                           ; $4252: $00
    rst RST_38                                    ; $4253: $ff
    nop                                           ; $4254: $00
    rst RST_38                                    ; $4255: $ff
    nop                                           ; $4256: $00
    rst RST_38                                    ; $4257: $ff
    nop                                           ; $4258: $00
    rst RST_38                                    ; $4259: $ff
    nop                                           ; $425a: $00
    rst RST_38                                    ; $425b: $ff
    nop                                           ; $425c: $00
    rst RST_38                                    ; $425d: $ff
    nop                                           ; $425e: $00
    rst RST_38                                    ; $425f: $ff
    rst RST_38                                    ; $4260: $ff
    nop                                           ; $4261: $00
    rst RST_38                                    ; $4262: $ff
    nop                                           ; $4263: $00
    rst RST_38                                    ; $4264: $ff
    nop                                           ; $4265: $00
    rst RST_38                                    ; $4266: $ff
    nop                                           ; $4267: $00
    rst RST_38                                    ; $4268: $ff
    nop                                           ; $4269: $00
    rst RST_38                                    ; $426a: $ff
    nop                                           ; $426b: $00
    rst RST_38                                    ; $426c: $ff
    nop                                           ; $426d: $00
    rst RST_38                                    ; $426e: $ff
    nop                                           ; $426f: $00
    nop                                           ; $4270: $00
    nop                                           ; $4271: $00
    nop                                           ; $4272: $00
    rst RST_38                                    ; $4273: $ff
    nop                                           ; $4274: $00
    rst RST_38                                    ; $4275: $ff
    nop                                           ; $4276: $00
    rst RST_38                                    ; $4277: $ff
    nop                                           ; $4278: $00
    rst RST_38                                    ; $4279: $ff
    nop                                           ; $427a: $00
    rst RST_38                                    ; $427b: $ff
    nop                                           ; $427c: $00
    rst RST_38                                    ; $427d: $ff
    ld bc, $fffe                                  ; $427e: $01 $fe $ff
    nop                                           ; $4281: $00
    rst RST_38                                    ; $4282: $ff
    nop                                           ; $4283: $00
    rst RST_38                                    ; $4284: $ff
    nop                                           ; $4285: $00
    rst RST_38                                    ; $4286: $ff
    nop                                           ; $4287: $00
    rst RST_38                                    ; $4288: $ff
    nop                                           ; $4289: $00
    rst RST_38                                    ; $428a: $ff
    nop                                           ; $428b: $00
    rst RST_38                                    ; $428c: $ff
    nop                                           ; $428d: $00
    cp $00                                        ; $428e: $fe $00
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    nop                                           ; $4292: $00
    rst RST_38                                    ; $4293: $ff
    nop                                           ; $4294: $00
    rst RST_38                                    ; $4295: $ff
    nop                                           ; $4296: $00
    rst RST_38                                    ; $4297: $ff
    nop                                           ; $4298: $00
    rst RST_38                                    ; $4299: $ff
    nop                                           ; $429a: $00
    rst RST_38                                    ; $429b: $ff
    nop                                           ; $429c: $00
    rst RST_38                                    ; $429d: $ff
    rst RST_38                                    ; $429e: $ff
    nop                                           ; $429f: $00
    rst RST_38                                    ; $42a0: $ff
    nop                                           ; $42a1: $00
    rst RST_38                                    ; $42a2: $ff
    nop                                           ; $42a3: $00
    rst RST_38                                    ; $42a4: $ff
    nop                                           ; $42a5: $00
    rst RST_38                                    ; $42a6: $ff
    nop                                           ; $42a7: $00
    rst RST_38                                    ; $42a8: $ff
    nop                                           ; $42a9: $00
    rst RST_38                                    ; $42aa: $ff

jr_004_42ab:
    nop                                           ; $42ab: $00
    rst RST_38                                    ; $42ac: $ff
    nop                                           ; $42ad: $00
    nop                                           ; $42ae: $00
    nop                                           ; $42af: $00
    nop                                           ; $42b0: $00
    rst RST_38                                    ; $42b1: $ff
    nop                                           ; $42b2: $00
    rst RST_38                                    ; $42b3: $ff
    nop                                           ; $42b4: $00
    rst RST_38                                    ; $42b5: $ff
    nop                                           ; $42b6: $00
    rst RST_38                                    ; $42b7: $ff
    ld bc, $03fe                                  ; $42b8: $01 $fe $03

jr_004_42bb:
    db $fd                                        ; $42bb: $fd
    ld b, $fb                                     ; $42bc: $06 $fb
    db $fc                                        ; $42be: $fc
    rlca                                          ; $42bf: $07
    rst RST_38                                    ; $42c0: $ff
    nop                                           ; $42c1: $00
    rst RST_38                                    ; $42c2: $ff
    nop                                           ; $42c3: $00
    rst RST_38                                    ; $42c4: $ff
    nop                                           ; $42c5: $00
    rst RST_38                                    ; $42c6: $ff
    nop                                           ; $42c7: $00
    cp $00                                        ; $42c8: $fe $00
    db $fd                                        ; $42ca: $fd
    ld bc, $02fb                                  ; $42cb: $01 $fb $02
    rlca                                          ; $42ce: $07
    inc b                                         ; $42cf: $04
    ld c, $f9                                     ; $42d0: $0e $f9
    jr c, jr_004_42bb                             ; $42d2: $38 $e7

    ld h, b                                       ; $42d4: $60
    sbc a                                         ; $42d5: $9f
    ret nz                                        ; $42d6: $c0

    ld a, a                                       ; $42d7: $7f
    sub b                                         ; $42d8: $90
    rst RST_28                                    ; $42d9: $ef
    jr nc, jr_004_42ab                            ; $42da: $30 $cf

    ld h, b                                       ; $42dc: $60
    sbc a                                         ; $42dd: $9f
    add b                                         ; $42de: $80
    ld a, a                                       ; $42df: $7f
    ld sp, hl                                     ; $42e0: $f9
    ld [$20e7], sp                                ; $42e1: $08 $e7 $20
    sbc [hl]                                      ; $42e4: $9e
    ld bc, $4679                                  ; $42e5: $01 $79 $46
    rst RST_30                                    ; $42e8: $f7
    adc b                                         ; $42e9: $88
    rst RST_38                                    ; $42ea: $ff
    nop                                           ; $42eb: $00
    rst RST_38                                    ; $42ec: $ff
    nop                                           ; $42ed: $00
    rst RST_38                                    ; $42ee: $ff
    nop                                           ; $42ef: $00
    nop                                           ; $42f0: $00
    rst RST_38                                    ; $42f1: $ff
    ld a, a                                       ; $42f2: $7f
    add b                                         ; $42f3: $80
    nop                                           ; $42f4: $00
    rst RST_38                                    ; $42f5: $ff
    nop                                           ; $42f6: $00
    rst RST_38                                    ; $42f7: $ff
    nop                                           ; $42f8: $00
    rst RST_38                                    ; $42f9: $ff
    nop                                           ; $42fa: $00
    rst RST_38                                    ; $42fb: $ff
    nop                                           ; $42fc: $00
    rst RST_38                                    ; $42fd: $ff
    nop                                           ; $42fe: $00
    rst RST_38                                    ; $42ff: $ff
    cp $01                                        ; $4300: $fe $01
    ldh a, [rIF]                                  ; $4302: $f0 $0f
    ld a, a                                       ; $4304: $7f
    add b                                         ; $4305: $80
    rst RST_38                                    ; $4306: $ff
    nop                                           ; $4307: $00
    rst RST_38                                    ; $4308: $ff
    nop                                           ; $4309: $00
    rst RST_38                                    ; $430a: $ff
    nop                                           ; $430b: $00
    rst RST_38                                    ; $430c: $ff
    nop                                           ; $430d: $00
    rst RST_38                                    ; $430e: $ff
    nop                                           ; $430f: $00
    ld b, $f9                                     ; $4310: $06 $f9
    pop hl                                        ; $4312: $e1
    cp $38                                        ; $4313: $fe $38
    rst RST_28                                    ; $4315: $ef
    inc c                                         ; $4316: $0c
    rst RST_30                                    ; $4317: $f7
    ld b, $fb                                     ; $4318: $06 $fb
    inc bc                                        ; $431a: $03
    db $fd                                        ; $431b: $fd
    ld bc, $01fe                                  ; $431c: $01 $fe $01
    cp $d9                                        ; $431f: $fe $d9
    ld h, $fe                                     ; $4321: $26 $fe
    pop hl                                        ; $4323: $e1
    rst RST_28                                    ; $4324: $ef
    jr z, @-$07                                   ; $4325: $28 $f7

    inc b                                         ; $4327: $04
    ei                                            ; $4328: $fb
    ld [bc], a                                    ; $4329: $02
    db $fd                                        ; $432a: $fd
    ld bc, $00fe                                  ; $432b: $01 $fe $00
    cp $00                                        ; $432e: $fe $00
    inc b                                         ; $4330: $04
    rst RST_38                                    ; $4331: $ff
    inc b                                         ; $4332: $04
    ei                                            ; $4333: $fb
    add d                                         ; $4334: $82
    ld a, l                                       ; $4335: $7d
    ld b, d                                       ; $4336: $42
    cp l                                          ; $4337: $bd
    ld b, c                                       ; $4338: $41
    cp [hl]                                       ; $4339: $be
    ld hl, $01de                                  ; $433a: $21 $de $01

jr_004_433d:
    cp $3f                                        ; $433d: $fe $3f
    ret nz                                        ; $433f: $c0

    rst RST_38                                    ; $4340: $ff
    inc b                                         ; $4341: $04
    ei                                            ; $4342: $fb
    nop                                           ; $4343: $00
    db $fd                                        ; $4344: $fd
    nop                                           ; $4345: $00
    db $fd                                        ; $4346: $fd
    nop                                           ; $4347: $00
    cp $00                                        ; $4348: $fe $00
    cp $00                                        ; $434a: $fe $00
    sbc $20                                       ; $434c: $de $20
    ldh [rP1], a                                  ; $434e: $e0 $00
    db $10                                        ; $4350: $10
    rst RST_28                                    ; $4351: $ef
    db $10                                        ; $4352: $10
    rst RST_28                                    ; $4353: $ef
    nop                                           ; $4354: $00
    rst RST_38                                    ; $4355: $ff
    nop                                           ; $4356: $00
    rst RST_38                                    ; $4357: $ff
    nop                                           ; $4358: $00
    rst RST_38                                    ; $4359: $ff
    db $10                                        ; $435a: $10
    rst RST_28                                    ; $435b: $ef
    jr nz, jr_004_433d                            ; $435c: $20 $df

    ccf                                           ; $435e: $3f
    ret nz                                        ; $435f: $c0

    cp a                                          ; $4360: $bf
    ld b, b                                       ; $4361: $40
    rst RST_38                                    ; $4362: $ff
    nop                                           ; $4363: $00
    rst RST_28                                    ; $4364: $ef
    db $10                                        ; $4365: $10
    rst RST_28                                    ; $4366: $ef
    db $10                                        ; $4367: $10
    rst RST_28                                    ; $4368: $ef
    db $10                                        ; $4369: $10
    rst RST_38                                    ; $436a: $ff
    nop                                           ; $436b: $00
    rst RST_38                                    ; $436c: $ff
    nop                                           ; $436d: $00
    ldh [rP1], a                                  ; $436e: $e0 $00
    nop                                           ; $4370: $00
    rst RST_38                                    ; $4371: $ff
    nop                                           ; $4372: $00
    rst RST_38                                    ; $4373: $ff
    nop                                           ; $4374: $00
    rst RST_38                                    ; $4375: $ff
    nop                                           ; $4376: $00
    rst RST_38                                    ; $4377: $ff
    nop                                           ; $4378: $00
    rst RST_38                                    ; $4379: $ff
    nop                                           ; $437a: $00
    rst RST_38                                    ; $437b: $ff
    nop                                           ; $437c: $00
    rst RST_38                                    ; $437d: $ff
    rst RST_38                                    ; $437e: $ff
    nop                                           ; $437f: $00
    rst RST_38                                    ; $4380: $ff
    nop                                           ; $4381: $00
    rst RST_38                                    ; $4382: $ff
    nop                                           ; $4383: $00
    rst RST_38                                    ; $4384: $ff
    nop                                           ; $4385: $00
    rst RST_38                                    ; $4386: $ff
    nop                                           ; $4387: $00
    rst RST_38                                    ; $4388: $ff
    nop                                           ; $4389: $00
    rst RST_38                                    ; $438a: $ff
    nop                                           ; $438b: $00
    rst RST_38                                    ; $438c: $ff
    nop                                           ; $438d: $00
    nop                                           ; $438e: $00
    nop                                           ; $438f: $00
    nop                                           ; $4390: $00
    rst RST_38                                    ; $4391: $ff
    nop                                           ; $4392: $00
    rst RST_38                                    ; $4393: $ff
    nop                                           ; $4394: $00
    rst RST_38                                    ; $4395: $ff
    nop                                           ; $4396: $00
    rst RST_38                                    ; $4397: $ff
    nop                                           ; $4398: $00
    rst RST_38                                    ; $4399: $ff
    nop                                           ; $439a: $00
    rst RST_38                                    ; $439b: $ff
    nop                                           ; $439c: $00
    rst RST_38                                    ; $439d: $ff
    nop                                           ; $439e: $00
    rst RST_38                                    ; $439f: $ff
    rst RST_38                                    ; $43a0: $ff
    nop                                           ; $43a1: $00
    rst RST_38                                    ; $43a2: $ff
    nop                                           ; $43a3: $00
    rst RST_38                                    ; $43a4: $ff
    nop                                           ; $43a5: $00
    rst RST_38                                    ; $43a6: $ff
    nop                                           ; $43a7: $00
    rst RST_38                                    ; $43a8: $ff
    nop                                           ; $43a9: $00
    rst RST_38                                    ; $43aa: $ff
    nop                                           ; $43ab: $00
    rst RST_38                                    ; $43ac: $ff
    nop                                           ; $43ad: $00
    rst RST_38                                    ; $43ae: $ff
    nop                                           ; $43af: $00
    ld bc, $01fe                                  ; $43b0: $01 $fe $01
    cp $01                                        ; $43b3: $fe $01
    cp $01                                        ; $43b5: $fe $01
    cp $01                                        ; $43b7: $fe $01
    cp $01                                        ; $43b9: $fe $01
    cp $01                                        ; $43bb: $fe $01
    cp $01                                        ; $43bd: $fe $01
    cp $fe                                        ; $43bf: $fe $fe
    nop                                           ; $43c1: $00
    cp $00                                        ; $43c2: $fe $00
    cp $00                                        ; $43c4: $fe $00
    cp $00                                        ; $43c6: $fe $00
    cp $00                                        ; $43c8: $fe $00
    cp $00                                        ; $43ca: $fe $00
    cp $00                                        ; $43cc: $fe $00
    cp $00                                        ; $43ce: $fe $00
    nop                                           ; $43d0: $00
    rst RST_38                                    ; $43d1: $ff
    nop                                           ; $43d2: $00
    rst RST_38                                    ; $43d3: $ff
    nop                                           ; $43d4: $00
    rst RST_38                                    ; $43d5: $ff
    nop                                           ; $43d6: $00
    rst RST_38                                    ; $43d7: $ff
    nop                                           ; $43d8: $00
    rst RST_38                                    ; $43d9: $ff
    rst RST_38                                    ; $43da: $ff
    nop                                           ; $43db: $00
    rst RST_38                                    ; $43dc: $ff
    nop                                           ; $43dd: $00
    nop                                           ; $43de: $00
    rst RST_38                                    ; $43df: $ff
    nop                                           ; $43e0: $00
    rst RST_38                                    ; $43e1: $ff
    nop                                           ; $43e2: $00
    rst RST_38                                    ; $43e3: $ff
    nop                                           ; $43e4: $00
    rst RST_38                                    ; $43e5: $ff
    rst RST_38                                    ; $43e6: $ff
    nop                                           ; $43e7: $00
    rst RST_38                                    ; $43e8: $ff
    nop                                           ; $43e9: $00
    rst RST_38                                    ; $43ea: $ff
    nop                                           ; $43eb: $00
    rst RST_38                                    ; $43ec: $ff
    nop                                           ; $43ed: $00
    rst RST_38                                    ; $43ee: $ff
    nop                                           ; $43ef: $00
    nop                                           ; $43f0: $00
    rst RST_38                                    ; $43f1: $ff
    nop                                           ; $43f2: $00
    rst RST_38                                    ; $43f3: $ff
    nop                                           ; $43f4: $00
    rst RST_38                                    ; $43f5: $ff
    nop                                           ; $43f6: $00
    rst RST_38                                    ; $43f7: $ff
    ld bc, $03ff                                  ; $43f8: $01 $ff $03
    cp $06                                        ; $43fb: $fe $06
    db $fd                                        ; $43fd: $fd
    inc b                                         ; $43fe: $04
    ei                                            ; $43ff: $fb
    rst RST_38                                    ; $4400: $ff
    nop                                           ; $4401: $00
    rst RST_38                                    ; $4402: $ff
    nop                                           ; $4403: $00
    rst RST_38                                    ; $4404: $ff
    nop                                           ; $4405: $00
    rst RST_38                                    ; $4406: $ff
    nop                                           ; $4407: $00
    rst RST_38                                    ; $4408: $ff
    ld bc, $02fe                                  ; $4409: $01 $fe $02
    db $fd                                        ; $440c: $fd
    inc b                                         ; $440d: $04
    ei                                            ; $440e: $fb
    nop                                           ; $440f: $00
    ld bc, $31fe                                  ; $4410: $01 $fe $31
    xor $71                                       ; $4413: $ee $71
    adc $d9                                       ; $4415: $ce $d9
    cp [hl]                                       ; $4417: $be
    adc c                                         ; $4418: $89

jr_004_4419:
    ld a, [hl]                                    ; $4419: $7e
    dec c                                         ; $441a: $0d

jr_004_441b:
    cp $05                                        ; $441b: $fe $05

jr_004_441d:
    cp $07                                        ; $441d: $fe $07

jr_004_441f:
    cp $fe                                        ; $441f: $fe $fe
    nop                                           ; $4421: $00
    xor $20                                       ; $4422: $ee $20
    adc $40                                       ; $4424: $ce $40
    cp [hl]                                       ; $4426: $be

jr_004_4427:
    sbc b                                         ; $4427: $98
    ld a, [hl]                                    ; $4428: $7e
    ld [$0cfe], sp                                ; $4429: $08 $fe $0c
    cp $04                                        ; $442c: $fe $04
    cp $06                                        ; $442e: $fe $06
    inc c                                         ; $4430: $0c
    rst RST_30                                    ; $4431: $f7
    jr @-$07                                      ; $4432: $18 $f7

    jr @-$0f                                      ; $4434: $18 $ef

    jr nc, jr_004_4427                            ; $4436: $30 $ef

    jr nc, jr_004_4419                            ; $4438: $30 $df

    jr nz, jr_004_441b                            ; $443a: $20 $df

    jr nz, jr_004_441d                            ; $443c: $20 $df

    jr nz, jr_004_441f                            ; $443e: $20 $df

    rst RST_30                                    ; $4440: $f7
    inc b                                         ; $4441: $04
    rst RST_30                                    ; $4442: $f7
    db $10                                        ; $4443: $10
    rst RST_28                                    ; $4444: $ef
    ld [$20ef], sp                                ; $4445: $08 $ef $20
    rst RST_18                                    ; $4448: $df
    db $10                                        ; $4449: $10
    rst RST_18                                    ; $444a: $df
    nop                                           ; $444b: $00
    rst RST_18                                    ; $444c: $df
    nop                                           ; $444d: $00
    rst RST_18                                    ; $444e: $df
    nop                                           ; $444f: $00
    inc bc                                        ; $4450: $03
    cp $03                                        ; $4451: $fe $03
    rst RST_38                                    ; $4453: $ff
    ld bc, $00ff                                  ; $4454: $01 $ff $00
    rst RST_38                                    ; $4457: $ff
    nop                                           ; $4458: $00
    rst RST_38                                    ; $4459: $ff
    nop                                           ; $445a: $00
    rst RST_38                                    ; $445b: $ff
    nop                                           ; $445c: $00
    rst RST_38                                    ; $445d: $ff
    nop                                           ; $445e: $00
    rst RST_38                                    ; $445f: $ff
    cp $02                                        ; $4460: $fe $02
    rst RST_38                                    ; $4462: $ff
    inc bc                                        ; $4463: $03
    rst RST_38                                    ; $4464: $ff
    ld bc, $00ff                                  ; $4465: $01 $ff $00
    rst RST_38                                    ; $4468: $ff
    nop                                           ; $4469: $00
    rst RST_38                                    ; $446a: $ff
    nop                                           ; $446b: $00
    rst RST_38                                    ; $446c: $ff
    nop                                           ; $446d: $00
    rst RST_38                                    ; $446e: $ff
    nop                                           ; $446f: $00
    jr nz, @+$01                                  ; $4470: $20 $ff

    jr nz, @+$01                                  ; $4472: $20 $ff

    jr nz, @+$01                                  ; $4474: $20 $ff

    db $10                                        ; $4476: $10
    rst RST_38                                    ; $4477: $ff
    db $10                                        ; $4478: $10
    rst RST_38                                    ; $4479: $ff
    ld [$0cff], sp                                ; $447a: $08 $ff $0c
    di                                            ; $447d: $f3
    ld b, $f9                                     ; $447e: $06 $f9
    rst RST_38                                    ; $4480: $ff
    jr nz, @+$01                                  ; $4481: $20 $ff

    jr nz, @+$01                                  ; $4483: $20 $ff

    jr nz, @+$01                                  ; $4485: $20 $ff

    db $10                                        ; $4487: $10
    rst RST_38                                    ; $4488: $ff
    db $10                                        ; $4489: $10
    rst RST_38                                    ; $448a: $ff
    ld [$0cf3], sp                                ; $448b: $08 $f3 $0c
    ld sp, hl                                     ; $448e: $f9
    ld b, $03                                     ; $448f: $06 $03
    db $fc                                        ; $4491: $fc
    ld bc, $00fe                                  ; $4492: $01 $fe $00
    rst RST_38                                    ; $4495: $ff
    nop                                           ; $4496: $00
    rst RST_38                                    ; $4497: $ff
    nop                                           ; $4498: $00
    rst RST_38                                    ; $4499: $ff
    ld bc, $01fe                                  ; $449a: $01 $fe $01
    cp $01                                        ; $449d: $fe $01
    cp $ff                                        ; $449f: $fe $ff
    nop                                           ; $44a1: $00
    rst RST_38                                    ; $44a2: $ff
    nop                                           ; $44a3: $00
    rst RST_38                                    ; $44a4: $ff
    nop                                           ; $44a5: $00
    rst RST_38                                    ; $44a6: $ff
    nop                                           ; $44a7: $00
    rst RST_38                                    ; $44a8: $ff
    nop                                           ; $44a9: $00
    cp $00                                        ; $44aa: $fe $00
    cp $00                                        ; $44ac: $fe $00
    cp $00                                        ; $44ae: $fe $00
    nop                                           ; $44b0: $00
    rst RST_38                                    ; $44b1: $ff
    nop                                           ; $44b2: $00
    rst RST_38                                    ; $44b3: $ff
    add b                                         ; $44b4: $80
    ld a, a                                       ; $44b5: $7f
    ret nz                                        ; $44b6: $c0

    ld a, a                                       ; $44b7: $7f
    add b                                         ; $44b8: $80
    ld a, a                                       ; $44b9: $7f
    add b                                         ; $44ba: $80
    rst RST_38                                    ; $44bb: $ff
    nop                                           ; $44bc: $00
    rst RST_38                                    ; $44bd: $ff
    nop                                           ; $44be: $00
    rst RST_38                                    ; $44bf: $ff
    rst RST_38                                    ; $44c0: $ff
    nop                                           ; $44c1: $00
    ld a, a                                       ; $44c2: $7f
    add b                                         ; $44c3: $80
    cp a                                          ; $44c4: $bf
    ld b, b                                       ; $44c5: $40
    ld a, a                                       ; $44c6: $7f
    ld b, b                                       ; $44c7: $40
    ld a, a                                       ; $44c8: $7f
    nop                                           ; $44c9: $00
    rst RST_38                                    ; $44ca: $ff
    add b                                         ; $44cb: $80
    rst RST_38                                    ; $44cc: $ff
    nop                                           ; $44cd: $00
    rst RST_38                                    ; $44ce: $ff
    nop                                           ; $44cf: $00
    nop                                           ; $44d0: $00
    rst RST_38                                    ; $44d1: $ff
    ld c, $ff                                     ; $44d2: $0e $ff
    add hl, de                                    ; $44d4: $19
    ld sp, hl                                     ; $44d5: $f9
    db $10                                        ; $44d6: $10
    or $12                                        ; $44d7: $f6 $12
    or $08                                        ; $44d9: $f6 $08
    ld sp, hl                                     ; $44db: $f9
    nop                                           ; $44dc: $00
    rst RST_38                                    ; $44dd: $ff
    nop                                           ; $44de: $00
    rst RST_38                                    ; $44df: $ff
    rst RST_38                                    ; $44e0: $ff
    nop                                           ; $44e1: $00
    rst RST_38                                    ; $44e2: $ff
    nop                                           ; $44e3: $00
    ld sp, hl                                     ; $44e4: $f9
    ld b, $f0                                     ; $44e5: $06 $f0
    rrca                                          ; $44e7: $0f
    ldh a, [c]                                    ; $44e8: $f2
    dec c                                         ; $44e9: $0d
    ld sp, hl                                     ; $44ea: $f9
    ld b, $ff                                     ; $44eb: $06 $ff
    nop                                           ; $44ed: $00
    rst RST_38                                    ; $44ee: $ff
    nop                                           ; $44ef: $00
    ld bc, $01fe                                  ; $44f0: $01 $fe $01
    cp $01                                        ; $44f3: $fe $01
    cp $01                                        ; $44f5: $fe $01
    rst RST_38                                    ; $44f7: $ff
    ld bc, $01ff                                  ; $44f8: $01 $ff $01
    rst RST_38                                    ; $44fb: $ff
    nop                                           ; $44fc: $00
    rst RST_38                                    ; $44fd: $ff
    nop                                           ; $44fe: $00
    rst RST_38                                    ; $44ff: $ff
    cp $00                                        ; $4500: $fe $00
    cp $00                                        ; $4502: $fe $00
    cp $00                                        ; $4504: $fe $00
    rst RST_38                                    ; $4506: $ff
    ld bc, $01ff                                  ; $4507: $01 $ff $01
    rst RST_38                                    ; $450a: $ff
    ld bc, $00ff                                  ; $450b: $01 $ff $00
    rst RST_38                                    ; $450e: $ff
    nop                                           ; $450f: $00
    nop                                           ; $4510: $00
    rst RST_38                                    ; $4511: $ff
    nop                                           ; $4512: $00
    rst RST_38                                    ; $4513: $ff
    nop                                           ; $4514: $00
    rst RST_38                                    ; $4515: $ff
    nop                                           ; $4516: $00
    rst RST_38                                    ; $4517: $ff
    nop                                           ; $4518: $00
    rst RST_38                                    ; $4519: $ff
    add b                                         ; $451a: $80
    rst RST_38                                    ; $451b: $ff
    ret nz                                        ; $451c: $c0

    cp a                                          ; $451d: $bf
    ld b, b                                       ; $451e: $40
    cp a                                          ; $451f: $bf
    rst RST_38                                    ; $4520: $ff
    nop                                           ; $4521: $00
    rst RST_38                                    ; $4522: $ff
    nop                                           ; $4523: $00
    rst RST_38                                    ; $4524: $ff
    nop                                           ; $4525: $00
    rst RST_38                                    ; $4526: $ff
    nop                                           ; $4527: $00
    rst RST_38                                    ; $4528: $ff
    nop                                           ; $4529: $00
    rst RST_38                                    ; $452a: $ff
    add b                                         ; $452b: $80
    cp a                                          ; $452c: $bf
    ret nz                                        ; $452d: $c0

    cp a                                          ; $452e: $bf
    ld b, b                                       ; $452f: $40
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    nop                                           ; $4533: $00
    nop                                           ; $4534: $00
    nop                                           ; $4535: $00
    nop                                           ; $4536: $00
    nop                                           ; $4537: $00
    nop                                           ; $4538: $00
    nop                                           ; $4539: $00
    nop                                           ; $453a: $00
    nop                                           ; $453b: $00
    nop                                           ; $453c: $00
    nop                                           ; $453d: $00
    nop                                           ; $453e: $00
    rlca                                          ; $453f: $07
    nop                                           ; $4540: $00
    nop                                           ; $4541: $00
    nop                                           ; $4542: $00
    nop                                           ; $4543: $00
    nop                                           ; $4544: $00
    nop                                           ; $4545: $00
    nop                                           ; $4546: $00
    nop                                           ; $4547: $00
    nop                                           ; $4548: $00
    nop                                           ; $4549: $00
    nop                                           ; $454a: $00
    nop                                           ; $454b: $00
    nop                                           ; $454c: $00
    nop                                           ; $454d: $00
    nop                                           ; $454e: $00
    nop                                           ; $454f: $00
    nop                                           ; $4550: $00
    nop                                           ; $4551: $00
    nop                                           ; $4552: $00
    nop                                           ; $4553: $00
    nop                                           ; $4554: $00
    nop                                           ; $4555: $00
    nop                                           ; $4556: $00
    nop                                           ; $4557: $00
    nop                                           ; $4558: $00
    nop                                           ; $4559: $00
    ld [bc], a                                    ; $455a: $02
    ld c, $03                                     ; $455b: $0e $03
    inc de                                        ; $455d: $13
    ld b, b                                       ; $455e: $40
    pop de                                        ; $455f: $d1
    nop                                           ; $4560: $00
    nop                                           ; $4561: $00
    nop                                           ; $4562: $00
    nop                                           ; $4563: $00
    nop                                           ; $4564: $00
    nop                                           ; $4565: $00
    nop                                           ; $4566: $00
    nop                                           ; $4567: $00
    nop                                           ; $4568: $00
    nop                                           ; $4569: $00
    ld [bc], a                                    ; $456a: $02
    nop                                           ; $456b: $00
    rrca                                          ; $456c: $0f
    nop                                           ; $456d: $00
    ld c, [hl]                                    ; $456e: $4e
    nop                                           ; $456f: $00
    nop                                           ; $4570: $00
    nop                                           ; $4571: $00
    nop                                           ; $4572: $00
    nop                                           ; $4573: $00
    nop                                           ; $4574: $00
    nop                                           ; $4575: $00
    nop                                           ; $4576: $00
    nop                                           ; $4577: $00
    nop                                           ; $4578: $00
    nop                                           ; $4579: $00
    nop                                           ; $457a: $00
    di                                            ; $457b: $f3
    db $10                                        ; $457c: $10
    sbc h                                         ; $457d: $9c
    ld de, $0019                                  ; $457e: $11 $19 $00
    nop                                           ; $4581: $00
    nop                                           ; $4582: $00
    nop                                           ; $4583: $00
    nop                                           ; $4584: $00
    nop                                           ; $4585: $00
    nop                                           ; $4586: $00
    nop                                           ; $4587: $00
    nop                                           ; $4588: $00
    nop                                           ; $4589: $00
    nop                                           ; $458a: $00
    db $10                                        ; $458b: $10
    ld [hl], e                                    ; $458c: $73
    ld [$00f7], sp                                ; $458d: $08 $f7 $00
    nop                                           ; $4590: $00
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    nop                                           ; $4593: $00

jr_004_4594:
    nop                                           ; $4594: $00
    nop                                           ; $4595: $00
    nop                                           ; $4596: $00
    nop                                           ; $4597: $00
    nop                                           ; $4598: $00
    nop                                           ; $4599: $00
    nop                                           ; $459a: $00
    rst RST_20                                    ; $459b: $e7
    jr nz, jr_004_45d6                            ; $459c: $20 $38

    ld de, $0099                                  ; $459e: $11 $99 $00
    nop                                           ; $45a1: $00
    nop                                           ; $45a2: $00
    nop                                           ; $45a3: $00
    nop                                           ; $45a4: $00
    nop                                           ; $45a5: $00
    nop                                           ; $45a6: $00
    nop                                           ; $45a7: $00
    nop                                           ; $45a8: $00
    nop                                           ; $45a9: $00
    nop                                           ; $45aa: $00
    jr nz, jr_004_4594                            ; $45ab: $20 $e7

    db $10                                        ; $45ad: $10
    ld [hl], a                                    ; $45ae: $77
    nop                                           ; $45af: $00
    nop                                           ; $45b0: $00
    nop                                           ; $45b1: $00
    nop                                           ; $45b2: $00
    nop                                           ; $45b3: $00
    nop                                           ; $45b4: $00
    nop                                           ; $45b5: $00
    nop                                           ; $45b6: $00
    nop                                           ; $45b7: $00
    nop                                           ; $45b8: $00
    nop                                           ; $45b9: $00
    nop                                           ; $45ba: $00
    rst RST_20                                    ; $45bb: $e7
    ld hl, $1139                                  ; $45bc: $21 $39 $11
    sbc c                                         ; $45bf: $99
    nop                                           ; $45c0: $00
    nop                                           ; $45c1: $00
    nop                                           ; $45c2: $00
    nop                                           ; $45c3: $00
    nop                                           ; $45c4: $00
    nop                                           ; $45c5: $00
    nop                                           ; $45c6: $00
    nop                                           ; $45c7: $00
    nop                                           ; $45c8: $00
    nop                                           ; $45c9: $00
    nop                                           ; $45ca: $00
    ld hl, $10e7                                  ; $45cb: $21 $e7 $10
    ld [hl], a                                    ; $45ce: $77
    nop                                           ; $45cf: $00
    nop                                           ; $45d0: $00
    nop                                           ; $45d1: $00
    nop                                           ; $45d2: $00
    nop                                           ; $45d3: $00
    nop                                           ; $45d4: $00
    nop                                           ; $45d5: $00

jr_004_45d6:
    nop                                           ; $45d6: $00
    nop                                           ; $45d7: $00
    nop                                           ; $45d8: $00
    nop                                           ; $45d9: $00
    ld [bc], a                                    ; $45da: $02
    ld a, $03                                     ; $45db: $3e $03
    jp $9919                                      ; $45dd: $c3 $19 $99


    nop                                           ; $45e0: $00
    nop                                           ; $45e1: $00
    nop                                           ; $45e2: $00
    nop                                           ; $45e3: $00
    nop                                           ; $45e4: $00
    nop                                           ; $45e5: $00
    nop                                           ; $45e6: $00
    nop                                           ; $45e7: $00
    nop                                           ; $45e8: $00
    nop                                           ; $45e9: $00
    ld [bc], a                                    ; $45ea: $02
    nop                                           ; $45eb: $00
    ccf                                           ; $45ec: $3f
    add b                                         ; $45ed: $80
    ld a, a                                       ; $45ee: $7f
    nop                                           ; $45ef: $00
    nop                                           ; $45f0: $00
    nop                                           ; $45f1: $00
    nop                                           ; $45f2: $00
    nop                                           ; $45f3: $00
    nop                                           ; $45f4: $00
    nop                                           ; $45f5: $00
    nop                                           ; $45f6: $00
    nop                                           ; $45f7: $00
    nop                                           ; $45f8: $00
    ldh [rNR10], a                                ; $45f9: $e0 $10
    sub b                                         ; $45fb: $90
    nop                                           ; $45fc: $00
    sbc a                                         ; $45fd: $9f
    db $10                                        ; $45fe: $10
    jr nc, jr_004_4601                            ; $45ff: $30 $00

jr_004_4601:
    nop                                           ; $4601: $00
    nop                                           ; $4602: $00
    nop                                           ; $4603: $00
    nop                                           ; $4604: $00
    nop                                           ; $4605: $00
    nop                                           ; $4606: $00
    nop                                           ; $4607: $00
    nop                                           ; $4608: $00
    nop                                           ; $4609: $00
    ld [hl], b                                    ; $460a: $70
    nop                                           ; $460b: $00
    ld h, b                                       ; $460c: $60
    nop                                           ; $460d: $00
    rst RST_08                                    ; $460e: $cf
    nop                                           ; $460f: $00
    nop                                           ; $4610: $00

jr_004_4611:
    nop                                           ; $4611: $00
    nop                                           ; $4612: $00
    nop                                           ; $4613: $00
    nop                                           ; $4614: $00

jr_004_4615:
    nop                                           ; $4615: $00
    nop                                           ; $4616: $00
    nop                                           ; $4617: $00
    nop                                           ; $4618: $00

jr_004_4619:
    nop                                           ; $4619: $00
    nop                                           ; $461a: $00
    nop                                           ; $461b: $00
    nop                                           ; $461c: $00
    add b                                         ; $461d: $80
    ld b, b                                       ; $461e: $40
    ld c, a                                       ; $461f: $4f
    nop                                           ; $4620: $00
    nop                                           ; $4621: $00
    nop                                           ; $4622: $00
    nop                                           ; $4623: $00
    nop                                           ; $4624: $00
    nop                                           ; $4625: $00
    nop                                           ; $4626: $00
    nop                                           ; $4627: $00
    nop                                           ; $4628: $00
    nop                                           ; $4629: $00
    nop                                           ; $462a: $00
    nop                                           ; $462b: $00
    nop                                           ; $462c: $00
    nop                                           ; $462d: $00
    ret nz                                        ; $462e: $c0

    nop                                           ; $462f: $00
    jr nz, jr_004_4611                            ; $4630: $20 $df

    ld a, [bc]                                    ; $4632: $0a
    push af                                       ; $4633: $f5
    jr nz, jr_004_4615                            ; $4634: $20 $df

    nop                                           ; $4636: $00
    rst RST_38                                    ; $4637: $ff
    jr nz, jr_004_4619                            ; $4638: $20 $df

    nop                                           ; $463a: $00
    rst RST_38                                    ; $463b: $ff
    nop                                           ; $463c: $00
    rst RST_38                                    ; $463d: $ff
    nop                                           ; $463e: $00
    rst RST_38                                    ; $463f: $ff
    dec sp                                        ; $4640: $3b
    nop                                           ; $4641: $00
    ld e, e                                       ; $4642: $5b
    nop                                           ; $4643: $00
    dec [hl]                                      ; $4644: $35
    nop                                           ; $4645: $00
    ld d, c                                       ; $4646: $51
    nop                                           ; $4647: $00
    dec [hl]                                      ; $4648: $35
    nop                                           ; $4649: $00
    rst RST_38                                    ; $464a: $ff
    nop                                           ; $464b: $00

jr_004_464c:
    rst RST_38                                    ; $464c: $ff
    nop                                           ; $464d: $00
    rst RST_38                                    ; $464e: $ff
    nop                                           ; $464f: $00
    nop                                           ; $4650: $00
    rst RST_38                                    ; $4651: $ff
    nop                                           ; $4652: $00
    rst RST_38                                    ; $4653: $ff
    nop                                           ; $4654: $00
    rst RST_38                                    ; $4655: $ff
    nop                                           ; $4656: $00
    rst RST_38                                    ; $4657: $ff
    nop                                           ; $4658: $00
    rst RST_38                                    ; $4659: $ff

jr_004_465a:
    nop                                           ; $465a: $00
    rst RST_38                                    ; $465b: $ff
    nop                                           ; $465c: $00
    rst RST_38                                    ; $465d: $ff
    nop                                           ; $465e: $00
    rst RST_38                                    ; $465f: $ff
    ld de, $bb00                                  ; $4660: $11 $00 $bb

jr_004_4663:
    nop                                           ; $4663: $00
    cp e                                          ; $4664: $bb
    nop                                           ; $4665: $00
    cp e                                          ; $4666: $bb
    nop                                           ; $4667: $00
    cp e                                          ; $4668: $bb
    nop                                           ; $4669: $00
    rst RST_38                                    ; $466a: $ff
    nop                                           ; $466b: $00
    rst RST_38                                    ; $466c: $ff
    nop                                           ; $466d: $00
    rst RST_38                                    ; $466e: $ff
    nop                                           ; $466f: $00
    nop                                           ; $4670: $00
    rst RST_38                                    ; $4671: $ff
    nop                                           ; $4672: $00
    rst RST_38                                    ; $4673: $ff
    ld [bc], a                                    ; $4674: $02
    db $fd                                        ; $4675: $fd
    ld [bc], a                                    ; $4676: $02
    db $fd                                        ; $4677: $fd
    nop                                           ; $4678: $00
    rst RST_38                                    ; $4679: $ff
    nop                                           ; $467a: $00
    rst RST_38                                    ; $467b: $ff
    nop                                           ; $467c: $00
    rst RST_38                                    ; $467d: $ff
    nop                                           ; $467e: $00
    rst RST_38                                    ; $467f: $ff
    inc de                                        ; $4680: $13
    nop                                           ; $4681: $00
    ld [hl], l                                    ; $4682: $75
    nop                                           ; $4683: $00
    inc de                                        ; $4684: $13
    nop                                           ; $4685: $00
    ld [hl], e                                    ; $4686: $73
    nop                                           ; $4687: $00
    dec d                                         ; $4688: $15
    nop                                           ; $4689: $00
    rst RST_38                                    ; $468a: $ff
    nop                                           ; $468b: $00
    rst RST_38                                    ; $468c: $ff
    nop                                           ; $468d: $00
    rst RST_38                                    ; $468e: $ff
    nop                                           ; $468f: $00
    ld h, b                                       ; $4690: $60
    sbc a                                         ; $4691: $9f
    jr nc, jr_004_4663                            ; $4692: $30 $cf

    db $10                                        ; $4694: $10
    rst RST_28                                    ; $4695: $ef
    ld a, [bc]                                    ; $4696: $0a
    push af                                       ; $4697: $f5
    rlca                                          ; $4698: $07
    ld hl, sp+$01                                 ; $4699: $f8 $01
    cp $01                                        ; $469b: $fe $01
    cp $01                                        ; $469d: $fe $01
    cp $1f                                        ; $469f: $fe $1f
    ld h, b                                       ; $46a1: $60
    ld e, a                                       ; $46a2: $5f
    jr nz, jr_004_464c                            ; $46a3: $20 $a7

    jr jr_004_465a                                ; $46a5: $18 $b3

    inc c                                         ; $46a7: $0c
    cp e                                          ; $46a8: $bb
    inc b                                         ; $46a9: $04
    cp $00                                        ; $46aa: $fe $00
    cp $00                                        ; $46ac: $fe $00
    cp $00                                        ; $46ae: $fe $00
    nop                                           ; $46b0: $00
    inc b                                         ; $46b1: $04
    ld bc, $0105                                  ; $46b2: $01 $05 $01
    dec b                                         ; $46b5: $05
    ld bc, $0105                                  ; $46b6: $01 $05 $01
    dec b                                         ; $46b9: $05
    ld bc, $0105                                  ; $46ba: $01 $05 $01
    dec b                                         ; $46bd: $05
    ld bc, $0305                                  ; $46be: $01 $05 $03
    nop                                           ; $46c1: $00
    inc bc                                        ; $46c2: $03
    nop                                           ; $46c3: $00
    inc bc                                        ; $46c4: $03
    nop                                           ; $46c5: $00
    inc bc                                        ; $46c6: $03
    nop                                           ; $46c7: $00
    inc bc                                        ; $46c8: $03
    nop                                           ; $46c9: $00
    inc bc                                        ; $46ca: $03
    nop                                           ; $46cb: $00
    inc bc                                        ; $46cc: $03
    nop                                           ; $46cd: $00
    inc bc                                        ; $46ce: $03
    nop                                           ; $46cf: $00
    ld b, b                                       ; $46d0: $40
    ld [hl], b                                    ; $46d1: $70
    jp nz, Jump_000_03f2                          ; $46d2: $c2 $f2 $03

    di                                            ; $46d5: $f3
    ld [bc], a                                    ; $46d6: $02
    di                                            ; $46d7: $f3
    ld c, $ff                                     ; $46d8: $0e $ff
    nop                                           ; $46da: $00
    rst RST_38                                    ; $46db: $ff
    nop                                           ; $46dc: $00
    rst RST_38                                    ; $46dd: $ff
    nop                                           ; $46de: $00
    rst RST_38                                    ; $46df: $ff
    rst RST_28                                    ; $46e0: $ef
    nop                                           ; $46e1: $00
    rst RST_28                                    ; $46e2: $ef
    nop                                           ; $46e3: $00
    rst RST_28                                    ; $46e4: $ef
    nop                                           ; $46e5: $00
    rst RST_28                                    ; $46e6: $ef
    nop                                           ; $46e7: $00
    rst RST_38                                    ; $46e8: $ff
    nop                                           ; $46e9: $00
    rst RST_38                                    ; $46ea: $ff
    nop                                           ; $46eb: $00
    rst RST_38                                    ; $46ec: $ff
    nop                                           ; $46ed: $00
    rst RST_38                                    ; $46ee: $ff
    nop                                           ; $46ef: $00
    ld de, $1019                                  ; $46f0: $11 $19 $10
    sbc b                                         ; $46f3: $98
    ld de, $1199                                  ; $46f4: $11 $99 $11
    sbc c                                         ; $46f7: $99
    ld [hl], a                                    ; $46f8: $77
    rst RST_38                                    ; $46f9: $ff
    nop                                           ; $46fa: $00
    rst RST_38                                    ; $46fb: $ff
    nop                                           ; $46fc: $00
    rst RST_38                                    ; $46fd: $ff
    nop                                           ; $46fe: $00
    rst RST_38                                    ; $46ff: $ff
    rst RST_30                                    ; $4700: $f7
    nop                                           ; $4701: $00
    ld [hl], a                                    ; $4702: $77
    nop                                           ; $4703: $00
    ld [hl], a                                    ; $4704: $77
    nop                                           ; $4705: $00
    ld [hl], a                                    ; $4706: $77
    nop                                           ; $4707: $00
    rst RST_38                                    ; $4708: $ff
    nop                                           ; $4709: $00
    rst RST_38                                    ; $470a: $ff
    nop                                           ; $470b: $00
    rst RST_38                                    ; $470c: $ff
    nop                                           ; $470d: $00
    rst RST_38                                    ; $470e: $ff
    nop                                           ; $470f: $00
    ld de, $1099                                  ; $4710: $11 $99 $10
    jr jr_004_4726                                ; $4713: $18 $11

    sbc c                                         ; $4715: $99
    ld de, $7799                                  ; $4716: $11 $99 $77
    rst RST_38                                    ; $4719: $ff
    nop                                           ; $471a: $00
    rst RST_38                                    ; $471b: $ff
    nop                                           ; $471c: $00
    rst RST_38                                    ; $471d: $ff
    nop                                           ; $471e: $00
    rst RST_38                                    ; $471f: $ff
    ld [hl], a                                    ; $4720: $77
    nop                                           ; $4721: $00
    rst RST_30                                    ; $4722: $f7
    nop                                           ; $4723: $00
    ld [hl], a                                    ; $4724: $77
    nop                                           ; $4725: $00

jr_004_4726:
    ld [hl], a                                    ; $4726: $77
    nop                                           ; $4727: $00
    rst RST_38                                    ; $4728: $ff
    nop                                           ; $4729: $00
    rst RST_38                                    ; $472a: $ff
    nop                                           ; $472b: $00
    rst RST_38                                    ; $472c: $ff
    nop                                           ; $472d: $00
    rst RST_38                                    ; $472e: $ff
    nop                                           ; $472f: $00
    ld de, $3199                                  ; $4730: $11 $99 $31
    add hl, sp                                    ; $4733: $39
    ld de, $1199                                  ; $4734: $11 $99 $11
    sbc c                                         ; $4737: $99
    halt                                          ; $4738: $76
    rst RST_38                                    ; $4739: $ff
    nop                                           ; $473a: $00
    rst RST_38                                    ; $473b: $ff
    nop                                           ; $473c: $00
    rst RST_38                                    ; $473d: $ff
    nop                                           ; $473e: $00
    rst RST_38                                    ; $473f: $ff
    ld [hl], a                                    ; $4740: $77
    nop                                           ; $4741: $00
    rst RST_30                                    ; $4742: $f7
    nop                                           ; $4743: $00
    ld [hl], a                                    ; $4744: $77
    nop                                           ; $4745: $00
    ld [hl], a                                    ; $4746: $77
    nop                                           ; $4747: $00
    rst RST_38                                    ; $4748: $ff
    nop                                           ; $4749: $00
    rst RST_38                                    ; $474a: $ff
    nop                                           ; $474b: $00
    rst RST_38                                    ; $474c: $ff
    nop                                           ; $474d: $00
    rst RST_38                                    ; $474e: $ff
    nop                                           ; $474f: $00
    add hl, de                                    ; $4750: $19
    sbc c                                         ; $4751: $99
    add hl, de                                    ; $4752: $19
    sbc c                                         ; $4753: $99
    add hl, de                                    ; $4754: $19
    sbc c                                         ; $4755: $99
    ld b, e                                       ; $4756: $43
    jp $ff3e                                      ; $4757: $c3 $3e $ff


    nop                                           ; $475a: $00
    rst RST_38                                    ; $475b: $ff
    nop                                           ; $475c: $00
    rst RST_38                                    ; $475d: $ff
    nop                                           ; $475e: $00
    rst RST_38                                    ; $475f: $ff
    ld a, a                                       ; $4760: $7f
    nop                                           ; $4761: $00
    ld a, a                                       ; $4762: $7f
    nop                                           ; $4763: $00
    ld a, a                                       ; $4764: $7f
    nop                                           ; $4765: $00
    rst RST_38                                    ; $4766: $ff
    nop                                           ; $4767: $00
    rst RST_38                                    ; $4768: $ff
    nop                                           ; $4769: $00
    rst RST_38                                    ; $476a: $ff
    nop                                           ; $476b: $00
    rst RST_38                                    ; $476c: $ff
    nop                                           ; $476d: $00
    rst RST_38                                    ; $476e: $ff
    nop                                           ; $476f: $00
    jp Jump_000_10e3                              ; $4770: $c3 $e3 $10


    ldh a, [rNR34]                                ; $4773: $f0 $1e
    cp $00                                        ; $4775: $fe $00
    ldh [$ff3f], a                                ; $4777: $e0 $3f
    rst RST_38                                    ; $4779: $ff
    nop                                           ; $477a: $00
    rst RST_38                                    ; $477b: $ff
    nop                                           ; $477c: $00
    rst RST_38                                    ; $477d: $ff
    nop                                           ; $477e: $00
    rst RST_38                                    ; $477f: $ff
    rst RST_18                                    ; $4780: $df
    nop                                           ; $4781: $00
    rst RST_08                                    ; $4782: $cf
    nop                                           ; $4783: $00
    rst RST_38                                    ; $4784: $ff
    nop                                           ; $4785: $00
    rst RST_18                                    ; $4786: $df
    nop                                           ; $4787: $00
    rst RST_38                                    ; $4788: $ff
    nop                                           ; $4789: $00
    rst RST_38                                    ; $478a: $ff
    nop                                           ; $478b: $00
    rst RST_38                                    ; $478c: $ff
    nop                                           ; $478d: $00
    rst RST_38                                    ; $478e: $ff
    nop                                           ; $478f: $00
    ret nz                                        ; $4790: $c0

    ld hl, sp+$2f                                 ; $4791: $f8 $2f
    ld a, a                                       ; $4793: $7f
    jr nz, jr_004_47d5                            ; $4794: $20 $3f

    jr nz, @+$81                                  ; $4796: $20 $7f

    ret nz                                        ; $4798: $c0

    rst RST_38                                    ; $4799: $ff
    nop                                           ; $479a: $00
    rst RST_38                                    ; $479b: $ff
    nop                                           ; $479c: $00
    rst RST_38                                    ; $479d: $ff
    nop                                           ; $479e: $00
    rst RST_38                                    ; $479f: $ff
    rst RST_30                                    ; $47a0: $f7
    nop                                           ; $47a1: $00
    cp a                                          ; $47a2: $bf
    nop                                           ; $47a3: $00
    rst RST_38                                    ; $47a4: $ff
    nop                                           ; $47a5: $00
    cp a                                          ; $47a6: $bf
    nop                                           ; $47a7: $00
    rst RST_38                                    ; $47a8: $ff
    nop                                           ; $47a9: $00
    rst RST_38                                    ; $47aa: $ff
    nop                                           ; $47ab: $00
    rst RST_38                                    ; $47ac: $ff
    nop                                           ; $47ad: $00
    rst RST_38                                    ; $47ae: $ff
    nop                                           ; $47af: $00
    ld bc, $0105                                  ; $47b0: $01 $05 $01
    dec b                                         ; $47b3: $05
    ld bc, $0105                                  ; $47b4: $01 $05 $01
    dec b                                         ; $47b7: $05
    ld bc, $0105                                  ; $47b8: $01 $05 $01
    dec b                                         ; $47bb: $05
    ld bc, $0105                                  ; $47bc: $01 $05 $01
    dec b                                         ; $47bf: $05
    inc bc                                        ; $47c0: $03
    nop                                           ; $47c1: $00
    inc bc                                        ; $47c2: $03
    nop                                           ; $47c3: $00
    inc bc                                        ; $47c4: $03
    nop                                           ; $47c5: $00
    inc bc                                        ; $47c6: $03
    nop                                           ; $47c7: $00
    inc bc                                        ; $47c8: $03
    nop                                           ; $47c9: $00
    inc bc                                        ; $47ca: $03
    nop                                           ; $47cb: $00
    inc bc                                        ; $47cc: $03
    nop                                           ; $47cd: $00
    inc bc                                        ; $47ce: $03
    nop                                           ; $47cf: $00
    nop                                           ; $47d0: $00
    ldh a, [rTAC]                                 ; $47d1: $f0 $07
    ldh a, [rTAC]                                 ; $47d3: $f0 $07

jr_004_47d5:
    ldh a, [rTAC]                                 ; $47d5: $f0 $07
    ldh a, [rTAC]                                 ; $47d7: $f0 $07
    ldh a, [rTAC]                                 ; $47d9: $f0 $07
    ldh a, [rTAC]                                 ; $47db: $f0 $07
    ldh a, [rTAC]                                 ; $47dd: $f0 $07
    ldh a, [$fff0]                                ; $47df: $f0 $f0
    rrca                                          ; $47e1: $0f
    rst RST_30                                    ; $47e2: $f7
    ld [$08f7], sp                                ; $47e3: $08 $f7 $08
    rst RST_30                                    ; $47e6: $f7
    ld [$08f7], sp                                ; $47e7: $08 $f7 $08
    rst RST_30                                    ; $47ea: $f7
    ld [$08f7], sp                                ; $47eb: $08 $f7 $08
    rst RST_30                                    ; $47ee: $f7
    ld [$0102], sp                                ; $47ef: $08 $02 $01
    rst RST_38                                    ; $47f2: $ff
    nop                                           ; $47f3: $00
    rst RST_38                                    ; $47f4: $ff
    nop                                           ; $47f5: $00
    rst RST_38                                    ; $47f6: $ff
    nop                                           ; $47f7: $00
    rst RST_38                                    ; $47f8: $ff
    ld [hl], b                                    ; $47f9: $70
    bit 7, b                                      ; $47fa: $cb $78
    jp $c778                                      ; $47fc: $c3 $78 $c7


    ld [hl], b                                    ; $47ff: $70

jr_004_4800:
    ld bc, $fffe                                  ; $4800: $01 $fe $ff
    nop                                           ; $4803: $00
    rst RST_38                                    ; $4804: $ff
    nop                                           ; $4805: $00
    rst RST_38                                    ; $4806: $ff
    nop                                           ; $4807: $00
    rst RST_38                                    ; $4808: $ff
    nop                                           ; $4809: $00
    ei                                            ; $480a: $fb
    inc b                                         ; $480b: $04
    ei                                            ; $480c: $fb
    inc b                                         ; $480d: $04
    rst RST_30                                    ; $480e: $f7
    ld [$f800], sp                                ; $480f: $08 $00 $f8

jr_004_4812:
    inc bc                                        ; $4812: $03
    ld hl, sp-$7d                                 ; $4813: $f8 $83
    ld a, b                                       ; $4815: $78
    jp $c338                                      ; $4816: $c3 $38 $c3


jr_004_4819:
    jr c, @-$1b                                   ; $4819: $38 $e3

    jr c, jr_004_4800                             ; $481b: $38 $e3

    jr c, @-$1b                                   ; $481d: $38 $e3

    jr c, jr_004_4819                             ; $481f: $38 $f8

    rlca                                          ; $4821: $07

jr_004_4822:
    ei                                            ; $4822: $fb
    inc b                                         ; $4823: $04
    ei                                            ; $4824: $fb
    inc b                                         ; $4825: $04
    cp e                                          ; $4826: $bb
    ld b, h                                       ; $4827: $44
    ei                                            ; $4828: $fb
    inc b                                         ; $4829: $04
    ei                                            ; $482a: $fb
    inc b                                         ; $482b: $04
    ei                                            ; $482c: $fb
    inc b                                         ; $482d: $04
    ei                                            ; $482e: $fb
    inc b                                         ; $482f: $04
    ld b, b                                       ; $4830: $40
    ccf                                           ; $4831: $3f
    ldh [$ff3f], a                                ; $4832: $e0 $3f
    ldh [$ff3f], a                                ; $4834: $e0 $3f
    ldh [$ff3e], a                                ; $4836: $e0 $3e
    pop hl                                        ; $4838: $e1
    inc a                                         ; $4839: $3c
    push hl                                       ; $483a: $e5
    jr c, @-$1b                                   ; $483b: $38 $e3

    jr c, jr_004_4822                             ; $483d: $38 $e3

    jr c, @+$81                                   ; $483f: $38 $7f

    add b                                         ; $4841: $80
    rst RST_38                                    ; $4842: $ff
    nop                                           ; $4843: $00
    rst RST_38                                    ; $4844: $ff
    nop                                           ; $4845: $00
    cp $01                                        ; $4846: $fe $01
    db $fd                                        ; $4848: $fd
    ld [bc], a                                    ; $4849: $02
    ld sp, hl                                     ; $484a: $f9
    ld b, $fb                                     ; $484b: $06 $fb
    inc b                                         ; $484d: $04
    ei                                            ; $484e: $fb
    inc b                                         ; $484f: $04
    jr nz, jr_004_4812                            ; $4850: $20 $c0

    ccf                                           ; $4852: $3f
    add b                                         ; $4853: $80
    ld a, a                                       ; $4854: $7f
    nop                                           ; $4855: $00

jr_004_4856:
    rst RST_38                                    ; $4856: $ff
    nop                                           ; $4857: $00

jr_004_4858:
    rst RST_38                                    ; $4858: $ff
    nop                                           ; $4859: $00

jr_004_485a:
    rst RST_30                                    ; $485a: $f7
    rrca                                          ; $485b: $0f

jr_004_485c:
    ld hl, sp+$1f                                 ; $485c: $f8 $1f

jr_004_485e:
    ret nc                                        ; $485e: $d0

    ccf                                           ; $485f: $3f
    ret nz                                        ; $4860: $c0

    ccf                                           ; $4861: $3f
    cp a                                          ; $4862: $bf
    ld b, b                                       ; $4863: $40
    ld a, a                                       ; $4864: $7f
    add b                                         ; $4865: $80
    rst RST_38                                    ; $4866: $ff
    nop                                           ; $4867: $00
    rst RST_38                                    ; $4868: $ff
    nop                                           ; $4869: $00
    rst RST_30                                    ; $486a: $f7
    ld [$00ff], sp                                ; $486b: $08 $ff $00
    rst RST_18                                    ; $486e: $df
    jr nz, jr_004_48b1                            ; $486f: $20 $40

    jr c, jr_004_4856                             ; $4871: $38 $e3

    jr c, jr_004_4858                             ; $4873: $38 $e3

    jr c, jr_004_485a                             ; $4875: $38 $e3

    jr c, jr_004_485c                             ; $4877: $38 $e3

    jr c, jr_004_485e                             ; $4879: $38 $e3

    cp b                                          ; $487b: $b8
    ld h, e                                       ; $487c: $63
    ld hl, sp+$03                                 ; $487d: $f8 $03
    ld hl, sp+$78                                 ; $487f: $f8 $78
    add a                                         ; $4881: $87

jr_004_4882:
    ei                                            ; $4882: $fb
    inc b                                         ; $4883: $04
    ei                                            ; $4884: $fb
    inc b                                         ; $4885: $04
    ei                                            ; $4886: $fb
    inc b                                         ; $4887: $04
    ei                                            ; $4888: $fb
    inc b                                         ; $4889: $04
    ei                                            ; $488a: $fb
    inc b                                         ; $488b: $04
    ei                                            ; $488c: $fb
    inc b                                         ; $488d: $04
    ei                                            ; $488e: $fb
    inc b                                         ; $488f: $04
    ld bc, rP1                                    ; $4890: $01 $00 $ff
    nop                                           ; $4893: $00
    rst RST_38                                    ; $4894: $ff
    nop                                           ; $4895: $00
    rst RST_38                                    ; $4896: $ff
    nop                                           ; $4897: $00
    rst RST_38                                    ; $4898: $ff
    jr c, jr_004_4882                             ; $4899: $38 $e7

    inc a                                         ; $489b: $3c
    pop hl                                        ; $489c: $e1
    inc a                                         ; $489d: $3c
    db $e3                                        ; $489e: $e3
    jr c, @+$03                                   ; $489f: $38 $01

    cp $ff                                        ; $48a1: $fe $ff
    nop                                           ; $48a3: $00
    rst RST_38                                    ; $48a4: $ff
    nop                                           ; $48a5: $00
    rst RST_38                                    ; $48a6: $ff
    nop                                           ; $48a7: $00
    rst RST_38                                    ; $48a8: $ff
    nop                                           ; $48a9: $00
    rst RST_38                                    ; $48aa: $ff
    nop                                           ; $48ab: $00
    db $fd                                        ; $48ac: $fd
    ld [bc], a                                    ; $48ad: $02
    ei                                            ; $48ae: $fb
    inc b                                         ; $48af: $04
    rlca                                          ; $48b0: $07

jr_004_48b1:
    ldh a, [rTAC]                                 ; $48b1: $f0 $07
    ldh a, [rTAC]                                 ; $48b3: $f0 $07
    ldh a, [rTAC]                                 ; $48b5: $f0 $07
    ldh a, [rTAC]                                 ; $48b7: $f0 $07
    ldh a, [rTAC]                                 ; $48b9: $f0 $07
    ldh a, [rTAC]                                 ; $48bb: $f0 $07
    ldh a, [rTAC]                                 ; $48bd: $f0 $07
    ldh a, [$fff7]                                ; $48bf: $f0 $f7
    ld [$08f7], sp                                ; $48c1: $08 $f7 $08
    rst RST_30                                    ; $48c4: $f7
    ld [$08f7], sp                                ; $48c5: $08 $f7 $08
    rst RST_30                                    ; $48c8: $f7
    ld [$08f7], sp                                ; $48c9: $08 $f7 $08
    rst RST_30                                    ; $48cc: $f7
    ld [$08f7], sp                                ; $48cd: $08 $f7 $08
    adc a                                         ; $48d0: $8f
    nop                                           ; $48d1: $00
    rst RST_38                                    ; $48d2: $ff
    nop                                           ; $48d3: $00
    rst RST_38                                    ; $48d4: $ff
    nop                                           ; $48d5: $00
    rst RST_38                                    ; $48d6: $ff
    ld bc, $7fff                                  ; $48d7: $01 $ff $7f
    ret nz                                        ; $48da: $c0

    ld a, a                                       ; $48db: $7f
    ret nz                                        ; $48dc: $c0

    ld a, a                                       ; $48dd: $7f
    ret nz                                        ; $48de: $c0

    ld a, a                                       ; $48df: $7f
    adc a                                         ; $48e0: $8f
    ld [hl], b                                    ; $48e1: $70
    rst RST_38                                    ; $48e2: $ff
    nop                                           ; $48e3: $00
    rst RST_38                                    ; $48e4: $ff
    nop                                           ; $48e5: $00
    db $fd                                        ; $48e6: $fd
    ld [bc], a                                    ; $48e7: $02
    rst RST_38                                    ; $48e8: $ff
    nop                                           ; $48e9: $00
    rst RST_38                                    ; $48ea: $ff
    nop                                           ; $48eb: $00
    rst RST_38                                    ; $48ec: $ff
    nop                                           ; $48ed: $00
    rst RST_38                                    ; $48ee: $ff
    nop                                           ; $48ef: $00
    db $e3                                        ; $48f0: $e3
    jr c, @-$3b                                   ; $48f1: $38 $c3

    ld a, b                                       ; $48f3: $78
    jp $83f8                                      ; $48f4: $c3 $f8 $83


    ld hl, sp+$03                                 ; $48f7: $f8 $03
    ld hl, sp+$03                                 ; $48f9: $f8 $03
    ld hl, sp+$03                                 ; $48fb: $f8 $03
    ld hl, sp+$03                                 ; $48fd: $f8 $03
    ld hl, sp-$45                                 ; $48ff: $f8 $bb
    ld b, h                                       ; $4901: $44

jr_004_4902:
    ei                                            ; $4902: $fb
    inc b                                         ; $4903: $04
    ei                                            ; $4904: $fb
    inc b                                         ; $4905: $04
    ei                                            ; $4906: $fb
    inc b                                         ; $4907: $04
    ei                                            ; $4908: $fb
    inc b                                         ; $4909: $04
    ei                                            ; $490a: $fb
    inc b                                         ; $490b: $04
    ei                                            ; $490c: $fb
    inc b                                         ; $490d: $04
    ei                                            ; $490e: $fb
    inc b                                         ; $490f: $04
    db $e3                                        ; $4910: $e3
    jr c, @-$1b                                   ; $4911: $38 $e3

    jr c, @-$1b                                   ; $4913: $38 $e3

    jr c, @-$1b                                   ; $4915: $38 $e3

    jr c, @-$17                                   ; $4917: $38 $e7

    jr c, jr_004_4902                             ; $4919: $38 $e7

    jr c, @-$1b                                   ; $491b: $38 $e3

    inc a                                         ; $491d: $3c
    db $e3                                        ; $491e: $e3
    ld a, $fb                                     ; $491f: $3e $fb
    inc b                                         ; $4921: $04
    ei                                            ; $4922: $fb
    inc b                                         ; $4923: $04
    ei                                            ; $4924: $fb
    inc b                                         ; $4925: $04
    ei                                            ; $4926: $fb
    inc b                                         ; $4927: $04

jr_004_4928:
    rst RST_38                                    ; $4928: $ff
    nop                                           ; $4929: $00
    ei                                            ; $492a: $fb
    inc b                                         ; $492b: $04
    rst RST_38                                    ; $492c: $ff
    nop                                           ; $492d: $00
    rst RST_38                                    ; $492e: $ff
    nop                                           ; $492f: $00
    ldh [$ff3f], a                                ; $4930: $e0 $3f
    ldh [$ff3f], a                                ; $4932: $e0 $3f
    ldh [$ff3f], a                                ; $4934: $e0 $3f
    ret nz                                        ; $4936: $c0

    ccf                                           ; $4937: $3f
    ldh [$ff1f], a                                ; $4938: $e0 $1f

jr_004_493a:
    ldh a, [rIF]                                  ; $493a: $f0 $0f
    ldh a, [rP1]                                  ; $493c: $f0 $00
    rst RST_38                                    ; $493e: $ff
    nop                                           ; $493f: $00
    rst RST_38                                    ; $4940: $ff
    nop                                           ; $4941: $00

jr_004_4942:
    rst RST_38                                    ; $4942: $ff
    nop                                           ; $4943: $00
    rst RST_38                                    ; $4944: $ff
    nop                                           ; $4945: $00
    rst RST_18                                    ; $4946: $df
    jr nz, jr_004_4928                            ; $4947: $20 $df

    jr nz, jr_004_493a                            ; $4949: $20 $ef

    db $10                                        ; $494b: $10
    ldh a, [rIF]                                  ; $494c: $f0 $0f
    rst RST_38                                    ; $494e: $ff
    nop                                           ; $494f: $00
    inc bc                                        ; $4950: $03
    ld hl, sp+$03                                 ; $4951: $f8 $03
    ld hl, sp+$03                                 ; $4953: $f8 $03
    ld hl, sp+$03                                 ; $4955: $f8 $03
    ld hl, sp+$03                                 ; $4957: $f8 $03
    ld hl, sp+$03                                 ; $4959: $f8 $03
    cp b                                          ; $495b: $b8

jr_004_495c:
    ld h, e                                       ; $495c: $63
    jr c, jr_004_4942                             ; $495d: $38 $e3

    jr c, jr_004_495c                             ; $495f: $38 $fb

    inc b                                         ; $4961: $04
    ei                                            ; $4962: $fb
    inc b                                         ; $4963: $04
    ei                                            ; $4964: $fb
    inc b                                         ; $4965: $04

jr_004_4966:
    ei                                            ; $4966: $fb
    inc b                                         ; $4967: $04
    ei                                            ; $4968: $fb
    inc b                                         ; $4969: $04

jr_004_496a:
    cp e                                          ; $496a: $bb
    ld b, h                                       ; $496b: $44
    ld a, e                                       ; $496c: $7b
    add h                                         ; $496d: $84
    ei                                            ; $496e: $fb
    inc b                                         ; $496f: $04
    rst RST_00                                    ; $4970: $c7
    nop                                           ; $4971: $00
    rst RST_38                                    ; $4972: $ff
    nop                                           ; $4973: $00
    rst RST_38                                    ; $4974: $ff
    nop                                           ; $4975: $00
    rst RST_38                                    ; $4976: $ff
    nop                                           ; $4977: $00
    rst RST_38                                    ; $4978: $ff
    jr nz, jr_004_496a                            ; $4979: $20 $ef

    jr nc, @+$01                                  ; $497b: $30 $ff

    jr nc, jr_004_4966                            ; $497d: $30 $e7

    jr c, @-$37                                   ; $497f: $38 $c7

    jr c, @+$01                                   ; $4981: $38 $ff

    nop                                           ; $4983: $00
    rst RST_38                                    ; $4984: $ff
    nop                                           ; $4985: $00
    rst RST_38                                    ; $4986: $ff
    nop                                           ; $4987: $00
    cp $01                                        ; $4988: $fe $01
    rst RST_28                                    ; $498a: $ef
    db $10                                        ; $498b: $10
    rst RST_38                                    ; $498c: $ff
    nop                                           ; $498d: $00
    rst RST_30                                    ; $498e: $f7
    ld [$f007], sp                                ; $498f: $08 $07 $f0
    rlca                                          ; $4992: $07
    ldh a, [rTAC]                                 ; $4993: $f0 $07
    ldh a, [rIF]                                  ; $4995: $f0 $0f
    rst RST_38                                    ; $4997: $ff
    nop                                           ; $4998: $00
    rst RST_38                                    ; $4999: $ff
    nop                                           ; $499a: $00
    rst RST_38                                    ; $499b: $ff
    nop                                           ; $499c: $00
    rst RST_38                                    ; $499d: $ff
    nop                                           ; $499e: $00
    nop                                           ; $499f: $00
    rst RST_30                                    ; $49a0: $f7
    ld [$08f7], sp                                ; $49a1: $08 $f7 $08
    rst RST_30                                    ; $49a4: $f7
    ld [$00ff], sp                                ; $49a5: $08 $ff $00
    rst RST_38                                    ; $49a8: $ff
    nop                                           ; $49a9: $00
    rst RST_38                                    ; $49aa: $ff
    nop                                           ; $49ab: $00
    rst RST_38                                    ; $49ac: $ff
    nop                                           ; $49ad: $00
    rst RST_38                                    ; $49ae: $ff
    nop                                           ; $49af: $00
    ret nz                                        ; $49b0: $c0

    ld a, a                                       ; $49b1: $7f
    ret nz                                        ; $49b2: $c0

    ld a, a                                       ; $49b3: $7f
    ret nz                                        ; $49b4: $c0

    ld a, a                                       ; $49b5: $7f
    ret nz                                        ; $49b6: $c0

    rst RST_38                                    ; $49b7: $ff
    nop                                           ; $49b8: $00
    rst RST_38                                    ; $49b9: $ff
    nop                                           ; $49ba: $00
    rst RST_38                                    ; $49bb: $ff
    nop                                           ; $49bc: $00
    rst RST_38                                    ; $49bd: $ff
    nop                                           ; $49be: $00
    nop                                           ; $49bf: $00
    rst RST_38                                    ; $49c0: $ff
    nop                                           ; $49c1: $00
    rst RST_38                                    ; $49c2: $ff
    nop                                           ; $49c3: $00
    rst RST_38                                    ; $49c4: $ff
    nop                                           ; $49c5: $00
    rst RST_38                                    ; $49c6: $ff
    nop                                           ; $49c7: $00
    rst RST_38                                    ; $49c8: $ff
    nop                                           ; $49c9: $00
    rst RST_38                                    ; $49ca: $ff
    nop                                           ; $49cb: $00
    rst RST_38                                    ; $49cc: $ff
    nop                                           ; $49cd: $00
    rst RST_38                                    ; $49ce: $ff
    nop                                           ; $49cf: $00
    inc bc                                        ; $49d0: $03
    ld hl, sp+$03                                 ; $49d1: $f8 $03
    ld hl, sp+$03                                 ; $49d3: $f8 $03
    ld hl, sp+$07                                 ; $49d5: $f8 $07
    rst RST_38                                    ; $49d7: $ff
    nop                                           ; $49d8: $00
    rst RST_38                                    ; $49d9: $ff
    nop                                           ; $49da: $00
    rst RST_38                                    ; $49db: $ff
    nop                                           ; $49dc: $00
    rst RST_38                                    ; $49dd: $ff
    nop                                           ; $49de: $00
    nop                                           ; $49df: $00
    ei                                            ; $49e0: $fb
    inc b                                         ; $49e1: $04
    ei                                            ; $49e2: $fb
    inc b                                         ; $49e3: $04
    ei                                            ; $49e4: $fb
    inc b                                         ; $49e5: $04
    rst RST_38                                    ; $49e6: $ff
    nop                                           ; $49e7: $00
    rst RST_38                                    ; $49e8: $ff
    nop                                           ; $49e9: $00
    rst RST_38                                    ; $49ea: $ff
    nop                                           ; $49eb: $00
    rst RST_38                                    ; $49ec: $ff
    nop                                           ; $49ed: $00
    rst RST_38                                    ; $49ee: $ff
    nop                                           ; $49ef: $00
    pop hl                                        ; $49f0: $e1
    ccf                                           ; $49f1: $3f
    ldh [$ff3f], a                                ; $49f2: $e0 $3f
    ldh [$ff3f], a                                ; $49f4: $e0 $3f
    ldh [rIE], a                                  ; $49f6: $e0 $ff
    nop                                           ; $49f8: $00
    rst RST_38                                    ; $49f9: $ff
    nop                                           ; $49fa: $00
    rst RST_38                                    ; $49fb: $ff
    nop                                           ; $49fc: $00
    rst RST_38                                    ; $49fd: $ff
    nop                                           ; $49fe: $00
    nop                                           ; $49ff: $00
    rst RST_38                                    ; $4a00: $ff
    nop                                           ; $4a01: $00
    rst RST_38                                    ; $4a02: $ff
    nop                                           ; $4a03: $00
    rst RST_38                                    ; $4a04: $ff
    nop                                           ; $4a05: $00
    rst RST_38                                    ; $4a06: $ff
    nop                                           ; $4a07: $00
    rst RST_38                                    ; $4a08: $ff
    nop                                           ; $4a09: $00
    rst RST_38                                    ; $4a0a: $ff
    nop                                           ; $4a0b: $00
    rst RST_38                                    ; $4a0c: $ff
    nop                                           ; $4a0d: $00
    rst RST_38                                    ; $4a0e: $ff
    nop                                           ; $4a0f: $00
    rst RST_38                                    ; $4a10: $ff
    nop                                           ; $4a11: $00
    rst RST_38                                    ; $4a12: $ff
    add b                                         ; $4a13: $80
    ld a, a                                       ; $4a14: $7f
    ldh [$ff1f], a                                ; $4a15: $e0 $1f
    rst RST_38                                    ; $4a17: $ff

jr_004_4a18:
    nop                                           ; $4a18: $00
    rst RST_38                                    ; $4a19: $ff
    nop                                           ; $4a1a: $00
    rst RST_38                                    ; $4a1b: $ff
    nop                                           ; $4a1c: $00
    rst RST_38                                    ; $4a1d: $ff

jr_004_4a1e:
    nop                                           ; $4a1e: $00
    nop                                           ; $4a1f: $00
    rst RST_38                                    ; $4a20: $ff
    nop                                           ; $4a21: $00
    rst RST_38                                    ; $4a22: $ff
    nop                                           ; $4a23: $00
    rst RST_38                                    ; $4a24: $ff
    nop                                           ; $4a25: $00
    rst RST_38                                    ; $4a26: $ff
    nop                                           ; $4a27: $00
    rst RST_38                                    ; $4a28: $ff
    nop                                           ; $4a29: $00
    rst RST_38                                    ; $4a2a: $ff
    nop                                           ; $4a2b: $00
    rst RST_38                                    ; $4a2c: $ff
    nop                                           ; $4a2d: $00
    rst RST_38                                    ; $4a2e: $ff
    nop                                           ; $4a2f: $00
    db $e3                                        ; $4a30: $e3
    jr c, @-$1b                                   ; $4a31: $38 $e3

    jr c, jr_004_4a18                             ; $4a33: $38 $e3

    jr c, jr_004_4a1e                             ; $4a35: $38 $e7

    rst RST_38                                    ; $4a37: $ff
    nop                                           ; $4a38: $00
    rst RST_38                                    ; $4a39: $ff
    nop                                           ; $4a3a: $00
    rst RST_38                                    ; $4a3b: $ff
    nop                                           ; $4a3c: $00
    rst RST_38                                    ; $4a3d: $ff
    nop                                           ; $4a3e: $00
    nop                                           ; $4a3f: $00
    ei                                            ; $4a40: $fb
    inc b                                         ; $4a41: $04
    ei                                            ; $4a42: $fb
    inc b                                         ; $4a43: $04
    ei                                            ; $4a44: $fb
    inc b                                         ; $4a45: $04
    rst RST_38                                    ; $4a46: $ff
    nop                                           ; $4a47: $00
    rst RST_38                                    ; $4a48: $ff
    nop                                           ; $4a49: $00
    rst RST_38                                    ; $4a4a: $ff
    nop                                           ; $4a4b: $00
    rst RST_38                                    ; $4a4c: $ff
    nop                                           ; $4a4d: $00
    rst RST_38                                    ; $4a4e: $ff
    nop                                           ; $4a4f: $00
    rst RST_20                                    ; $4a50: $e7
    jr c, @-$1b                                   ; $4a51: $38 $e3

    inc a                                         ; $4a53: $3c
    db $e3                                        ; $4a54: $e3
    inc a                                         ; $4a55: $3c
    pop hl                                        ; $4a56: $e1
    rst RST_38                                    ; $4a57: $ff
    nop                                           ; $4a58: $00
    rst RST_38                                    ; $4a59: $ff
    nop                                           ; $4a5a: $00
    rst RST_38                                    ; $4a5b: $ff
    nop                                           ; $4a5c: $00
    rst RST_38                                    ; $4a5d: $ff
    nop                                           ; $4a5e: $00
    nop                                           ; $4a5f: $00
    rst RST_38                                    ; $4a60: $ff
    nop                                           ; $4a61: $00
    ei                                            ; $4a62: $fb
    inc b                                         ; $4a63: $04
    rst RST_38                                    ; $4a64: $ff
    nop                                           ; $4a65: $00
    db $fd                                        ; $4a66: $fd
    ld [bc], a                                    ; $4a67: $02
    rst RST_38                                    ; $4a68: $ff
    nop                                           ; $4a69: $00
    rst RST_38                                    ; $4a6a: $ff
    nop                                           ; $4a6b: $00
    rst RST_38                                    ; $4a6c: $ff
    nop                                           ; $4a6d: $00
    rst RST_38                                    ; $4a6e: $ff
    nop                                           ; $4a6f: $00
    inc bc                                        ; $4a70: $03
    inc b                                         ; $4a71: $04
    nop                                           ; $4a72: $00
    nop                                           ; $4a73: $00
    nop                                           ; $4a74: $00
    nop                                           ; $4a75: $00
    nop                                           ; $4a76: $00
    nop                                           ; $4a77: $00
    nop                                           ; $4a78: $00
    nop                                           ; $4a79: $00
    nop                                           ; $4a7a: $00
    nop                                           ; $4a7b: $00
    nop                                           ; $4a7c: $00
    nop                                           ; $4a7d: $00
    nop                                           ; $4a7e: $00
    nop                                           ; $4a7f: $00
    nop                                           ; $4a80: $00
    nop                                           ; $4a81: $00
    nop                                           ; $4a82: $00
    nop                                           ; $4a83: $00
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
    nop                                           ; $4a91: $00
    nop                                           ; $4a92: $00
    nop                                           ; $4a93: $00
    nop                                           ; $4a94: $00
    nop                                           ; $4a95: $00
    nop                                           ; $4a96: $00
    nop                                           ; $4a97: $00
    nop                                           ; $4a98: $00
    nop                                           ; $4a99: $00
    nop                                           ; $4a9a: $00
    nop                                           ; $4a9b: $00
    nop                                           ; $4a9c: $00
    nop                                           ; $4a9d: $00
    nop                                           ; $4a9e: $00
    nop                                           ; $4a9f: $00
    nop                                           ; $4aa0: $00
    nop                                           ; $4aa1: $00
    nop                                           ; $4aa2: $00
    nop                                           ; $4aa3: $00
    nop                                           ; $4aa4: $00
    nop                                           ; $4aa5: $00
    nop                                           ; $4aa6: $00
    nop                                           ; $4aa7: $00
    nop                                           ; $4aa8: $00
    nop                                           ; $4aa9: $00
    nop                                           ; $4aaa: $00
    nop                                           ; $4aab: $00
    nop                                           ; $4aac: $00
    nop                                           ; $4aad: $00
    nop                                           ; $4aae: $00
    nop                                           ; $4aaf: $00
    ld bc, $00fe                                  ; $4ab0: $01 $fe $00
    rst RST_38                                    ; $4ab3: $ff
    nop                                           ; $4ab4: $00
    rst RST_38                                    ; $4ab5: $ff
    nop                                           ; $4ab6: $00
    rst RST_38                                    ; $4ab7: $ff
    nop                                           ; $4ab8: $00
    rst RST_38                                    ; $4ab9: $ff
    nop                                           ; $4aba: $00
    rst RST_38                                    ; $4abb: $ff
    nop                                           ; $4abc: $00
    rst RST_38                                    ; $4abd: $ff
    nop                                           ; $4abe: $00
    rst RST_38                                    ; $4abf: $ff
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
    nop                                           ; $4acb: $00
    rst RST_38                                    ; $4acc: $ff
    nop                                           ; $4acd: $00
    rst RST_38                                    ; $4ace: $ff
    nop                                           ; $4acf: $00
    rst RST_38                                    ; $4ad0: $ff
    nop                                           ; $4ad1: $00
    nop                                           ; $4ad2: $00
    rst RST_38                                    ; $4ad3: $ff
    nop                                           ; $4ad4: $00
    rst RST_38                                    ; $4ad5: $ff
    nop                                           ; $4ad6: $00
    rst RST_38                                    ; $4ad7: $ff
    nop                                           ; $4ad8: $00
    rst RST_38                                    ; $4ad9: $ff
    nop                                           ; $4ada: $00
    rst RST_38                                    ; $4adb: $ff
    nop                                           ; $4adc: $00
    rst RST_38                                    ; $4add: $ff
    nop                                           ; $4ade: $00
    rst RST_38                                    ; $4adf: $ff
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
    nop                                           ; $4aeb: $00
    rst RST_38                                    ; $4aec: $ff
    nop                                           ; $4aed: $00
    rst RST_38                                    ; $4aee: $ff
    nop                                           ; $4aef: $00
    rst RST_38                                    ; $4af0: $ff
    nop                                           ; $4af1: $00
    nop                                           ; $4af2: $00
    rst RST_38                                    ; $4af3: $ff
    nop                                           ; $4af4: $00
    rst RST_38                                    ; $4af5: $ff
    nop                                           ; $4af6: $00
    rst RST_38                                    ; $4af7: $ff
    nop                                           ; $4af8: $00
    cp $00                                        ; $4af9: $fe $00
    rst RST_38                                    ; $4afb: $ff
    nop                                           ; $4afc: $00
    rst RST_30                                    ; $4afd: $f7
    nop                                           ; $4afe: $00
    ld sp, hl                                     ; $4aff: $f9
    rst RST_38                                    ; $4b00: $ff
    nop                                           ; $4b01: $00
    rst RST_38                                    ; $4b02: $ff
    nop                                           ; $4b03: $00
    rst RST_38                                    ; $4b04: $ff
    ld bc, $07ff                                  ; $4b05: $01 $ff $07
    rst RST_38                                    ; $4b08: $ff
    ld c, $ff                                     ; $4b09: $0e $ff
    ld c, $ff                                     ; $4b0b: $0e $ff
    rlca                                          ; $4b0d: $07
    rst RST_38                                    ; $4b0e: $ff
    ld bc, $03fc                                  ; $4b0f: $01 $fc $03
    nop                                           ; $4b12: $00
    rst RST_38                                    ; $4b13: $ff
    nop                                           ; $4b14: $00
    ld hl, sp+$00                                 ; $4b15: $f8 $00
    add a                                         ; $4b17: $87
    nop                                           ; $4b18: $00
    ld a, a                                       ; $4b19: $7f
    nop                                           ; $4b1a: $00
    rst RST_38                                    ; $4b1b: $ff
    nop                                           ; $4b1c: $00
    rst RST_38                                    ; $4b1d: $ff
    nop                                           ; $4b1e: $00
    rst RST_38                                    ; $4b1f: $ff
    rst RST_38                                    ; $4b20: $ff
    inc bc                                        ; $4b21: $03
    rst RST_38                                    ; $4b22: $ff
    ccf                                           ; $4b23: $3f
    rst RST_38                                    ; $4b24: $ff
    ld hl, sp-$01                                 ; $4b25: $f8 $ff
    add b                                         ; $4b27: $80
    rst RST_38                                    ; $4b28: $ff
    nop                                           ; $4b29: $00
    rst RST_38                                    ; $4b2a: $ff
    nop                                           ; $4b2b: $00
    rst RST_38                                    ; $4b2c: $ff
    add b                                         ; $4b2d: $80
    rst RST_38                                    ; $4b2e: $ff
    ldh a, [rIF]                                  ; $4b2f: $f0 $0f
    ldh a, [rP1]                                  ; $4b31: $f0 $00
    rst RST_38                                    ; $4b33: $ff
    nop                                           ; $4b34: $00
    rrca                                          ; $4b35: $0f
    nop                                           ; $4b36: $00
    rst RST_30                                    ; $4b37: $f7
    nop                                           ; $4b38: $00
    db $fd                                        ; $4b39: $fd
    nop                                           ; $4b3a: $00
    ei                                            ; $4b3b: $fb
    nop                                           ; $4b3c: $00
    add $00                                       ; $4b3d: $c6 $00
    db $fd                                        ; $4b3f: $fd
    rst RST_38                                    ; $4b40: $ff
    ldh a, [rIE]                                  ; $4b41: $f0 $ff
    db $fc                                        ; $4b43: $fc
    rst RST_38                                    ; $4b44: $ff
    ld c, $ff                                     ; $4b45: $0e $ff
    ld b, $ff                                     ; $4b47: $06 $ff
    inc a                                         ; $4b49: $3c
    rst RST_38                                    ; $4b4a: $ff
    dec sp                                        ; $4b4b: $3b
    rst RST_38                                    ; $4b4c: $ff
    ld b, $ff                                     ; $4b4d: $06 $ff
    inc c                                         ; $4b4f: $0c
    rst RST_38                                    ; $4b50: $ff
    nop                                           ; $4b51: $00
    nop                                           ; $4b52: $00
    rst RST_38                                    ; $4b53: $ff
    nop                                           ; $4b54: $00
    rst RST_38                                    ; $4b55: $ff
    nop                                           ; $4b56: $00
    rst RST_38                                    ; $4b57: $ff
    nop                                           ; $4b58: $00
    rst RST_38                                    ; $4b59: $ff
    nop                                           ; $4b5a: $00
    ld a, a                                       ; $4b5b: $7f
    nop                                           ; $4b5c: $00
    cp $00                                        ; $4b5d: $fe $00
    db $fd                                        ; $4b5f: $fd
    rst RST_38                                    ; $4b60: $ff

jr_004_4b61:
    nop                                           ; $4b61: $00
    rst RST_38                                    ; $4b62: $ff
    nop                                           ; $4b63: $00
    rst RST_38                                    ; $4b64: $ff
    nop                                           ; $4b65: $00
    rst RST_38                                    ; $4b66: $ff
    nop                                           ; $4b67: $00
    rst RST_38                                    ; $4b68: $ff
    nop                                           ; $4b69: $00
    rst RST_38                                    ; $4b6a: $ff
    inc bc                                        ; $4b6b: $03
    rst RST_38                                    ; $4b6c: $ff
    ld b, $ff                                     ; $4b6d: $06 $ff
    inc e                                         ; $4b6f: $1c
    rst RST_38                                    ; $4b70: $ff
    nop                                           ; $4b71: $00
    nop                                           ; $4b72: $00
    rst RST_38                                    ; $4b73: $ff
    nop                                           ; $4b74: $00
    rst RST_38                                    ; $4b75: $ff
    nop                                           ; $4b76: $00
    rst RST_38                                    ; $4b77: $ff
    nop                                           ; $4b78: $00
    rst RST_38                                    ; $4b79: $ff
    nop                                           ; $4b7a: $00
    ld a, a                                       ; $4b7b: $7f
    nop                                           ; $4b7c: $00
    cp $00                                        ; $4b7d: $fe $00
    db $fd                                        ; $4b7f: $fd
    rst RST_38                                    ; $4b80: $ff
    nop                                           ; $4b81: $00
    rst RST_38                                    ; $4b82: $ff
    nop                                           ; $4b83: $00
    rst RST_38                                    ; $4b84: $ff
    nop                                           ; $4b85: $00
    rst RST_38                                    ; $4b86: $ff
    nop                                           ; $4b87: $00
    rst RST_38                                    ; $4b88: $ff
    nop                                           ; $4b89: $00
    rst RST_38                                    ; $4b8a: $ff
    rlca                                          ; $4b8b: $07
    rst RST_38                                    ; $4b8c: $ff
    ld c, $ff                                     ; $4b8d: $0e $ff
    inc a                                         ; $4b8f: $3c
    ret nz                                        ; $4b90: $c0

    ccf                                           ; $4b91: $3f
    ldh [$ff1f], a                                ; $4b92: $e0 $1f
    ld h, b                                       ; $4b94: $60
    sbc a                                         ; $4b95: $9f
    ld [hl], b                                    ; $4b96: $70
    adc a                                         ; $4b97: $8f
    jr c, jr_004_4b61                             ; $4b98: $38 $c7

    ld e, $e1                                     ; $4b9a: $1e $e1
    rrca                                          ; $4b9c: $0f
    ldh a, [$ff03]                                ; $4b9d: $f0 $03
    db $fc                                        ; $4b9f: $fc
    ld a, a                                       ; $4ba0: $7f
    nop                                           ; $4ba1: $00
    cp a                                          ; $4ba2: $bf
    nop                                           ; $4ba3: $00
    ccf                                           ; $4ba4: $3f
    add b                                         ; $4ba5: $80
    ld e, a                                       ; $4ba6: $5f
    add b                                         ; $4ba7: $80
    cpl                                           ; $4ba8: $2f
    ret nz                                        ; $4ba9: $c0

    rla                                           ; $4baa: $17
    ldh [$ff09], a                                ; $4bab: $e0 $09
    ldh a, [rSC]                                  ; $4bad: $f0 $02
    db $fc                                        ; $4baf: $fc
    nop                                           ; $4bb0: $00
    rst RST_38                                    ; $4bb1: $ff
    nop                                           ; $4bb2: $00
    rst RST_38                                    ; $4bb3: $ff
    nop                                           ; $4bb4: $00
    rst RST_38                                    ; $4bb5: $ff
    nop                                           ; $4bb6: $00
    rst RST_38                                    ; $4bb7: $ff
    nop                                           ; $4bb8: $00
    rst RST_38                                    ; $4bb9: $ff
    nop                                           ; $4bba: $00
    rst RST_38                                    ; $4bbb: $ff
    rst RST_38                                    ; $4bbc: $ff
    nop                                           ; $4bbd: $00
    rst RST_38                                    ; $4bbe: $ff
    nop                                           ; $4bbf: $00
    rst RST_38                                    ; $4bc0: $ff
    nop                                           ; $4bc1: $00
    rst RST_38                                    ; $4bc2: $ff
    nop                                           ; $4bc3: $00
    rst RST_38                                    ; $4bc4: $ff
    nop                                           ; $4bc5: $00
    rst RST_38                                    ; $4bc6: $ff
    nop                                           ; $4bc7: $00
    rst RST_38                                    ; $4bc8: $ff
    nop                                           ; $4bc9: $00
    rst RST_38                                    ; $4bca: $ff
    nop                                           ; $4bcb: $00
    rst RST_38                                    ; $4bcc: $ff
    nop                                           ; $4bcd: $00
    nop                                           ; $4bce: $00
    nop                                           ; $4bcf: $00
    nop                                           ; $4bd0: $00
    rst RST_38                                    ; $4bd1: $ff
    nop                                           ; $4bd2: $00
    rst RST_38                                    ; $4bd3: $ff
    nop                                           ; $4bd4: $00
    rst RST_38                                    ; $4bd5: $ff
    nop                                           ; $4bd6: $00
    rst RST_38                                    ; $4bd7: $ff
    nop                                           ; $4bd8: $00
    rst RST_38                                    ; $4bd9: $ff
    nop                                           ; $4bda: $00
    rst RST_38                                    ; $4bdb: $ff
    ldh [$ff1f], a                                ; $4bdc: $e0 $1f
    ldh [$ff1f], a                                ; $4bde: $e0 $1f
    rst RST_38                                    ; $4be0: $ff
    nop                                           ; $4be1: $00
    rst RST_38                                    ; $4be2: $ff
    nop                                           ; $4be3: $00
    rst RST_38                                    ; $4be4: $ff
    nop                                           ; $4be5: $00
    rst RST_38                                    ; $4be6: $ff
    nop                                           ; $4be7: $00
    rst RST_38                                    ; $4be8: $ff
    nop                                           ; $4be9: $00
    rst RST_38                                    ; $4bea: $ff
    jr @+$01                                      ; $4beb: $18 $ff

    rra                                           ; $4bed: $1f
    rra                                           ; $4bee: $1f
    rra                                           ; $4bef: $1f
    nop                                           ; $4bf0: $00
    cp $00                                        ; $4bf1: $fe $00
    rst RST_38                                    ; $4bf3: $ff
    nop                                           ; $4bf4: $00
    rst RST_38                                    ; $4bf5: $ff
    nop                                           ; $4bf6: $00
    rst RST_38                                    ; $4bf7: $ff
    nop                                           ; $4bf8: $00
    rst RST_38                                    ; $4bf9: $ff
    nop                                           ; $4bfa: $00
    rst RST_38                                    ; $4bfb: $ff
    nop                                           ; $4bfc: $00
    cp $01                                        ; $4bfd: $fe $01
    add b                                         ; $4bff: $80
    rst RST_38                                    ; $4c00: $ff
    nop                                           ; $4c01: $00
    rst RST_38                                    ; $4c02: $ff
    nop                                           ; $4c03: $00
    rst RST_38                                    ; $4c04: $ff
    nop                                           ; $4c05: $00
    rst RST_38                                    ; $4c06: $ff
    nop                                           ; $4c07: $00
    rst RST_38                                    ; $4c08: $ff
    inc bc                                        ; $4c09: $03
    rst RST_38                                    ; $4c0a: $ff
    ld a, a                                       ; $4c0b: $7f
    rst RST_38                                    ; $4c0c: $ff
    cp $fe                                        ; $4c0d: $fe $fe
    add b                                         ; $4c0f: $80
    nop                                           ; $4c10: $00
    ccf                                           ; $4c11: $3f
    nop                                           ; $4c12: $00
    rst RST_08                                    ; $4c13: $cf
    nop                                           ; $4c14: $00
    or $00                                        ; $4c15: $f6 $00
    cp $00                                        ; $4c17: $fe $00
    ld sp, hl                                     ; $4c19: $f9
    nop                                           ; $4c1a: $00
    rst RST_00                                    ; $4c1b: $c7
    ccf                                           ; $4c1c: $3f
    nop                                           ; $4c1d: $00
    rst RST_38                                    ; $4c1e: $ff
    nop                                           ; $4c1f: $00
    rst RST_38                                    ; $4c20: $ff
    inc a                                         ; $4c21: $3c
    rst RST_38                                    ; $4c22: $ff
    ld c, $ff                                     ; $4c23: $0e $ff
    ld b, $ff                                     ; $4c25: $06 $ff
    ld a, $ff                                     ; $4c27: $3e $ff
    ld hl, sp-$01                                 ; $4c29: $f8 $ff
    ret nz                                        ; $4c2b: $c0

    rst RST_38                                    ; $4c2c: $ff
    nop                                           ; $4c2d: $00
    nop                                           ; $4c2e: $00
    nop                                           ; $4c2f: $00
    nop                                           ; $4c30: $00
    ei                                            ; $4c31: $fb
    nop                                           ; $4c32: $00
    rst RST_30                                    ; $4c33: $f7
    nop                                           ; $4c34: $00
    rst RST_28                                    ; $4c35: $ef
    nop                                           ; $4c36: $00
    rst RST_28                                    ; $4c37: $ef
    nop                                           ; $4c38: $00
    db $fc                                        ; $4c39: $fc
    nop                                           ; $4c3a: $00
    or e                                          ; $4c3b: $b3
    rst RST_08                                    ; $4c3c: $cf
    nop                                           ; $4c3d: $00
    rst RST_38                                    ; $4c3e: $ff
    nop                                           ; $4c3f: $00
    rst RST_38                                    ; $4c40: $ff
    jr @+$01                                      ; $4c41: $18 $ff

    jr nc, @+$01                                  ; $4c43: $30 $ff

    ld h, e                                       ; $4c45: $63
    rst RST_38                                    ; $4c46: $ff
    ld l, a                                       ; $4c47: $6f
    rst RST_38                                    ; $4c48: $ff
    ld a, h                                       ; $4c49: $7c
    rst RST_38                                    ; $4c4a: $ff
    jr nc, @+$01                                  ; $4c4b: $30 $ff

    nop                                           ; $4c4d: $00
    nop                                           ; $4c4e: $00
    nop                                           ; $4c4f: $00
    nop                                           ; $4c50: $00
    ei                                            ; $4c51: $fb
    nop                                           ; $4c52: $00
    rst RST_30                                    ; $4c53: $f7
    nop                                           ; $4c54: $00
    rst RST_28                                    ; $4c55: $ef
    nop                                           ; $4c56: $00
    ld a, h                                       ; $4c57: $7c
    nop                                           ; $4c58: $00
    di                                            ; $4c59: $f3
    nop                                           ; $4c5a: $00
    rst RST_08                                    ; $4c5b: $cf
    db $fc                                        ; $4c5c: $fc
    inc bc                                        ; $4c5d: $03
    ld hl, sp+$07                                 ; $4c5e: $f8 $07
    rst RST_38                                    ; $4c60: $ff
    jr c, @+$01                                   ; $4c61: $38 $ff

    pop af                                        ; $4c63: $f1
    rst RST_38                                    ; $4c64: $ff
    rst RST_20                                    ; $4c65: $e7
    rst RST_38                                    ; $4c66: $ff
    ld a, h                                       ; $4c67: $7c
    rst RST_38                                    ; $4c68: $ff
    jr nc, @+$01                                  ; $4c69: $30 $ff

    ld bc, $03ff                                  ; $4c6b: $01 $ff $03
    rlca                                          ; $4c6e: $07
    rlca                                          ; $4c6f: $07
    nop                                           ; $4c70: $00
    ei                                            ; $4c71: $fb
    nop                                           ; $4c72: $00
    sbc $00                                       ; $4c73: $de $00
    dec a                                         ; $4c75: $3d
    nop                                           ; $4c76: $00
    rst RST_38                                    ; $4c77: $ff
    nop                                           ; $4c78: $00
    rst RST_28                                    ; $4c79: $ef
    nop                                           ; $4c7a: $00
    ret nc                                        ; $4c7b: $d0

    ccf                                           ; $4c7c: $3f
    add b                                         ; $4c7d: $80
    ld a, a                                       ; $4c7e: $7f
    nop                                           ; $4c7f: $00
    rst RST_38                                    ; $4c80: $ff
    ld a, e                                       ; $4c81: $7b
    rst RST_38                                    ; $4c82: $ff
    sbc $ff                                       ; $4c83: $de $ff
    inc a                                         ; $4c85: $3c
    rst RST_38                                    ; $4c86: $ff
    ld a, h                                       ; $4c87: $7c
    rst RST_38                                    ; $4c88: $ff
    rst RST_28                                    ; $4c89: $ef
    rst RST_38                                    ; $4c8a: $ff
    ret nz                                        ; $4c8b: $c0

    rst RST_38                                    ; $4c8c: $ff
    add b                                         ; $4c8d: $80
    add b                                         ; $4c8e: $80
    nop                                           ; $4c8f: $00
    nop                                           ; $4c90: $00
    ldh [rP1], a                                  ; $4c91: $e0 $00
    rst RST_38                                    ; $4c93: $ff
    nop                                           ; $4c94: $00
    rst RST_38                                    ; $4c95: $ff
    nop                                           ; $4c96: $00
    rst RST_38                                    ; $4c97: $ff
    nop                                           ; $4c98: $00
    rst RST_38                                    ; $4c99: $ff
    nop                                           ; $4c9a: $00
    rst RST_38                                    ; $4c9b: $ff
    nop                                           ; $4c9c: $00
    db $fc                                        ; $4c9d: $fc
    nop                                           ; $4c9e: $00
    ld hl, sp+$1f                                 ; $4c9f: $f8 $1f
    ldh [rP1], a                                  ; $4ca1: $e0 $00
    rst RST_38                                    ; $4ca3: $ff
    nop                                           ; $4ca4: $00
    rst RST_38                                    ; $4ca5: $ff
    nop                                           ; $4ca6: $00
    rst RST_38                                    ; $4ca7: $ff
    nop                                           ; $4ca8: $00
    rst RST_38                                    ; $4ca9: $ff
    ld bc, $03fe                                  ; $4caa: $01 $fe $03
    db $fc                                        ; $4cad: $fc
    rlca                                          ; $4cae: $07
    ld hl, sp+$00                                 ; $4caf: $f8 $00
    ld a, a                                       ; $4cb1: $7f
    nop                                           ; $4cb2: $00
    rst RST_38                                    ; $4cb3: $ff
    nop                                           ; $4cb4: $00
    rst RST_38                                    ; $4cb5: $ff
    nop                                           ; $4cb6: $00
    rst RST_38                                    ; $4cb7: $ff
    nop                                           ; $4cb8: $00
    ret nz                                        ; $4cb9: $c0

    nop                                           ; $4cba: $00
    nop                                           ; $4cbb: $00
    nop                                           ; $4cbc: $00
    ccf                                           ; $4cbd: $3f
    nop                                           ; $4cbe: $00
    rst RST_38                                    ; $4cbf: $ff
    add b                                         ; $4cc0: $80
    ld a, a                                       ; $4cc1: $7f
    nop                                           ; $4cc2: $00
    rst RST_38                                    ; $4cc3: $ff
    nop                                           ; $4cc4: $00
    rst RST_38                                    ; $4cc5: $ff
    nop                                           ; $4cc6: $00
    rst RST_38                                    ; $4cc7: $ff
    ld a, a                                       ; $4cc8: $7f
    add b                                         ; $4cc9: $80
    rst RST_38                                    ; $4cca: $ff
    nop                                           ; $4ccb: $00
    ldh [$ff1f], a                                ; $4ccc: $e0 $1f
    add b                                         ; $4cce: $80
    ld a, a                                       ; $4ccf: $7f
    nop                                           ; $4cd0: $00
    rst RST_38                                    ; $4cd1: $ff
    nop                                           ; $4cd2: $00
    rst RST_38                                    ; $4cd3: $ff
    nop                                           ; $4cd4: $00
    rst RST_38                                    ; $4cd5: $ff
    nop                                           ; $4cd6: $00
    rst RST_38                                    ; $4cd7: $ff
    nop                                           ; $4cd8: $00
    rst RST_38                                    ; $4cd9: $ff
    nop                                           ; $4cda: $00
    db $fc                                        ; $4cdb: $fc
    nop                                           ; $4cdc: $00
    db $fc                                        ; $4cdd: $fc
    nop                                           ; $4cde: $00
    ld hl, sp+$00                                 ; $4cdf: $f8 $00
    rst RST_38                                    ; $4ce1: $ff
    nop                                           ; $4ce2: $00
    rst RST_38                                    ; $4ce3: $ff
    nop                                           ; $4ce4: $00
    rst RST_38                                    ; $4ce5: $ff
    nop                                           ; $4ce6: $00
    rst RST_38                                    ; $4ce7: $ff
    nop                                           ; $4ce8: $00
    rst RST_38                                    ; $4ce9: $ff
    inc bc                                        ; $4cea: $03
    db $fc                                        ; $4ceb: $fc
    rlca                                          ; $4cec: $07
    ld hl, sp+$07                                 ; $4ced: $f8 $07
    ld hl, sp+$00                                 ; $4cef: $f8 $00
    rst RST_38                                    ; $4cf1: $ff
    nop                                           ; $4cf2: $00
    rst RST_38                                    ; $4cf3: $ff
    nop                                           ; $4cf4: $00
    rst RST_38                                    ; $4cf5: $ff
    nop                                           ; $4cf6: $00
    rst RST_38                                    ; $4cf7: $ff
    nop                                           ; $4cf8: $00
    rst RST_38                                    ; $4cf9: $ff
    nop                                           ; $4cfa: $00
    rst RST_38                                    ; $4cfb: $ff
    nop                                           ; $4cfc: $00
    rst RST_38                                    ; $4cfd: $ff
    nop                                           ; $4cfe: $00
    rst RST_38                                    ; $4cff: $ff
    nop                                           ; $4d00: $00
    rst RST_38                                    ; $4d01: $ff
    nop                                           ; $4d02: $00
    rst RST_38                                    ; $4d03: $ff
    nop                                           ; $4d04: $00
    rst RST_38                                    ; $4d05: $ff
    nop                                           ; $4d06: $00
    rst RST_38                                    ; $4d07: $ff
    nop                                           ; $4d08: $00
    rst RST_38                                    ; $4d09: $ff
    nop                                           ; $4d0a: $00
    rst RST_38                                    ; $4d0b: $ff
    nop                                           ; $4d0c: $00
    rst RST_38                                    ; $4d0d: $ff
    add b                                         ; $4d0e: $80
    ld a, a                                       ; $4d0f: $7f
    nop                                           ; $4d10: $00
    cp $00                                        ; $4d11: $fe $00
    db $fd                                        ; $4d13: $fd
    nop                                           ; $4d14: $00
    rst RST_38                                    ; $4d15: $ff
    nop                                           ; $4d16: $00
    rst RST_38                                    ; $4d17: $ff
    nop                                           ; $4d18: $00
    rst RST_38                                    ; $4d19: $ff
    nop                                           ; $4d1a: $00
    sbc a                                         ; $4d1b: $9f
    nop                                           ; $4d1c: $00
    sbc a                                         ; $4d1d: $9f
    nop                                           ; $4d1e: $00
    rra                                           ; $4d1f: $1f
    rlca                                          ; $4d20: $07
    cp $06                                        ; $4d21: $fe $06
    db $fd                                        ; $4d23: $fd
    nop                                           ; $4d24: $00
    rst RST_38                                    ; $4d25: $ff
    nop                                           ; $4d26: $00
    rst RST_38                                    ; $4d27: $ff
    nop                                           ; $4d28: $00
    rst RST_38                                    ; $4d29: $ff
    ld h, b                                       ; $4d2a: $60
    sbc a                                         ; $4d2b: $9f
    ldh a, [rIF]                                  ; $4d2c: $f0 $0f
    ldh a, [rIF]                                  ; $4d2e: $f0 $0f
    nop                                           ; $4d30: $00
    rst RST_38                                    ; $4d31: $ff
    nop                                           ; $4d32: $00
    rst RST_38                                    ; $4d33: $ff
    nop                                           ; $4d34: $00
    rst RST_38                                    ; $4d35: $ff
    nop                                           ; $4d36: $00
    rst RST_38                                    ; $4d37: $ff
    nop                                           ; $4d38: $00
    rst RST_38                                    ; $4d39: $ff
    nop                                           ; $4d3a: $00
    adc a                                         ; $4d3b: $8f
    nop                                           ; $4d3c: $00
    adc a                                         ; $4d3d: $8f
    nop                                           ; $4d3e: $00
    rrca                                          ; $4d3f: $0f
    nop                                           ; $4d40: $00
    rst RST_38                                    ; $4d41: $ff
    nop                                           ; $4d42: $00
    rst RST_38                                    ; $4d43: $ff
    nop                                           ; $4d44: $00
    rst RST_38                                    ; $4d45: $ff
    nop                                           ; $4d46: $00
    rst RST_38                                    ; $4d47: $ff
    nop                                           ; $4d48: $00
    rst RST_38                                    ; $4d49: $ff
    ld [hl], b                                    ; $4d4a: $70
    adc a                                         ; $4d4b: $8f
    ld [hl], b                                    ; $4d4c: $70
    adc a                                         ; $4d4d: $8f
    ldh a, [rIF]                                  ; $4d4e: $f0 $0f
    nop                                           ; $4d50: $00
    rst RST_38                                    ; $4d51: $ff
    nop                                           ; $4d52: $00
    rst RST_38                                    ; $4d53: $ff
    nop                                           ; $4d54: $00
    ld e, $00                                     ; $4d55: $1e $00
    ld c, $00                                     ; $4d57: $0e $00
    ld c, $00                                     ; $4d59: $0e $00
    ld d, $00                                     ; $4d5b: $16 $00
    ld [de], a                                    ; $4d5d: $12
    nop                                           ; $4d5e: $00
    ld a, [de]                                    ; $4d5f: $1a
    nop                                           ; $4d60: $00
    rst RST_38                                    ; $4d61: $ff
    nop                                           ; $4d62: $00
    rst RST_38                                    ; $4d63: $ff
    pop hl                                        ; $4d64: $e1
    ld e, $f1                                     ; $4d65: $1e $f1
    ld c, $f9                                     ; $4d67: $0e $f9
    ld b, $f9                                     ; $4d69: $06 $f9
    ld b, $ed                                     ; $4d6b: $06 $ed
    ld [de], a                                    ; $4d6d: $12
    rst RST_20                                    ; $4d6e: $e7
    jr jr_004_4d71                                ; $4d6f: $18 $00

jr_004_4d71:
    rst RST_38                                    ; $4d71: $ff
    nop                                           ; $4d72: $00
    rst RST_38                                    ; $4d73: $ff
    nop                                           ; $4d74: $00
    inc hl                                        ; $4d75: $23
    nop                                           ; $4d76: $00
    inc hl                                        ; $4d77: $23
    nop                                           ; $4d78: $00
    ccf                                           ; $4d79: $3f
    nop                                           ; $4d7a: $00
    ld [hl+], a                                   ; $4d7b: $22
    nop                                           ; $4d7c: $00
    ld [hl+], a                                   ; $4d7d: $22
    nop                                           ; $4d7e: $00
    ld [hl+], a                                   ; $4d7f: $22
    nop                                           ; $4d80: $00
    rst RST_38                                    ; $4d81: $ff
    nop                                           ; $4d82: $00
    rst RST_38                                    ; $4d83: $ff
    call c, $dc23                                 ; $4d84: $dc $23 $dc
    inc hl                                        ; $4d87: $23
    ret nz                                        ; $4d88: $c0

    ccf                                           ; $4d89: $3f
    db $dd                                        ; $4d8a: $dd
    ld [hl+], a                                   ; $4d8b: $22
    db $dd                                        ; $4d8c: $dd
    ld [hl+], a                                   ; $4d8d: $22
    db $dd                                        ; $4d8e: $dd
    ld [hl+], a                                   ; $4d8f: $22
    nop                                           ; $4d90: $00
    rst RST_38                                    ; $4d91: $ff
    nop                                           ; $4d92: $00
    rst RST_38                                    ; $4d93: $ff
    nop                                           ; $4d94: $00
    rst RST_38                                    ; $4d95: $ff
    nop                                           ; $4d96: $00
    rst RST_38                                    ; $4d97: $ff
    nop                                           ; $4d98: $00
    cp $00                                        ; $4d99: $fe $00
    inc hl                                        ; $4d9b: $23
    nop                                           ; $4d9c: $00
    ld bc, $3100                                  ; $4d9d: $01 $00 $31
    nop                                           ; $4da0: $00
    rst RST_38                                    ; $4da1: $ff
    nop                                           ; $4da2: $00
    rst RST_38                                    ; $4da3: $ff
    nop                                           ; $4da4: $00
    rst RST_38                                    ; $4da5: $ff
    nop                                           ; $4da6: $00
    rst RST_38                                    ; $4da7: $ff
    ld bc, $defe                                  ; $4da8: $01 $fe $de
    ld hl, $01fe                                  ; $4dab: $21 $fe $01
    adc $31                                       ; $4dae: $ce $31
    nop                                           ; $4db0: $00
    rst RST_38                                    ; $4db1: $ff
    nop                                           ; $4db2: $00
    rst RST_38                                    ; $4db3: $ff
    nop                                           ; $4db4: $00
    rst RST_38                                    ; $4db5: $ff
    nop                                           ; $4db6: $00
    rra                                           ; $4db7: $1f
    nop                                           ; $4db8: $00
    rrca                                          ; $4db9: $0f
    nop                                           ; $4dba: $00

jr_004_4dbb:
    inc e                                         ; $4dbb: $1c
    nop                                           ; $4dbc: $00
    add hl, de                                    ; $4dbd: $19
    nop                                           ; $4dbe: $00
    stop                                          ; $4dbf: $10 $00
    rst RST_38                                    ; $4dc1: $ff
    nop                                           ; $4dc2: $00
    rst RST_38                                    ; $4dc3: $ff
    nop                                           ; $4dc4: $00
    rst RST_38                                    ; $4dc5: $ff
    ldh [$ff1f], a                                ; $4dc6: $e0 $1f
    ldh a, [rIF]                                  ; $4dc8: $f0 $0f
    rst RST_20                                    ; $4dca: $e7
    jr jr_004_4dbb                                ; $4dcb: $18 $ee

    ld de, $10ef                                  ; $4dcd: $11 $ef $10
    nop                                           ; $4dd0: $00
    rst RST_38                                    ; $4dd1: $ff
    nop                                           ; $4dd2: $00
    rst RST_38                                    ; $4dd3: $ff
    nop                                           ; $4dd4: $00
    rst RST_38                                    ; $4dd5: $ff
    nop                                           ; $4dd6: $00
    rst RST_38                                    ; $4dd7: $ff
    nop                                           ; $4dd8: $00
    rst RST_38                                    ; $4dd9: $ff
    nop                                           ; $4dda: $00
    jr c, jr_004_4ddd                             ; $4ddb: $38 $00

jr_004_4ddd:
    sbc b                                         ; $4ddd: $98
    nop                                           ; $4dde: $00
    ld [rP1], sp                                  ; $4ddf: $08 $00 $ff
    nop                                           ; $4de2: $00
    rst RST_38                                    ; $4de3: $ff
    nop                                           ; $4de4: $00
    rst RST_38                                    ; $4de5: $ff
    nop                                           ; $4de6: $00
    rst RST_38                                    ; $4de7: $ff
    nop                                           ; $4de8: $00
    rst RST_38                                    ; $4de9: $ff
    rst RST_20                                    ; $4dea: $e7
    jr jr_004_4e64                                ; $4deb: $18 $77

    adc b                                         ; $4ded: $88
    rst RST_30                                    ; $4dee: $f7
    ld [rP1], sp                                  ; $4def: $08 $00 $ff
    nop                                           ; $4df2: $00
    rst RST_38                                    ; $4df3: $ff
    nop                                           ; $4df4: $00
    rst RST_38                                    ; $4df5: $ff
    nop                                           ; $4df6: $00
    rst RST_38                                    ; $4df7: $ff
    nop                                           ; $4df8: $00
    rst RST_38                                    ; $4df9: $ff
    nop                                           ; $4dfa: $00
    adc a                                         ; $4dfb: $8f
    nop                                           ; $4dfc: $00
    ld b, $00                                     ; $4dfd: $06 $00
    call nz, rP1                                  ; $4dff: $c4 $00 $ff
    nop                                           ; $4e02: $00
    rst RST_38                                    ; $4e03: $ff
    nop                                           ; $4e04: $00
    rst RST_38                                    ; $4e05: $ff
    nop                                           ; $4e06: $00
    rst RST_38                                    ; $4e07: $ff
    nop                                           ; $4e08: $00
    rst RST_38                                    ; $4e09: $ff
    ld a, c                                       ; $4e0a: $79
    add [hl]                                      ; $4e0b: $86
    ei                                            ; $4e0c: $fb
    inc b                                         ; $4e0d: $04
    dec sp                                        ; $4e0e: $3b
    call nz, rP1                                  ; $4e0f: $c4 $00 $ff
    nop                                           ; $4e12: $00
    rst RST_38                                    ; $4e13: $ff
    nop                                           ; $4e14: $00
    db $e3                                        ; $4e15: $e3
    nop                                           ; $4e16: $00
    db $e3                                        ; $4e17: $e3
    nop                                           ; $4e18: $00
    db $e3                                        ; $4e19: $e3
    nop                                           ; $4e1a: $00
    inc bc                                        ; $4e1b: $03
    nop                                           ; $4e1c: $00
    ld h, e                                       ; $4e1d: $63
    nop                                           ; $4e1e: $00
    ld h, d                                       ; $4e1f: $62
    nop                                           ; $4e20: $00
    rst RST_38                                    ; $4e21: $ff
    nop                                           ; $4e22: $00
    rst RST_38                                    ; $4e23: $ff
    inc e                                         ; $4e24: $1c
    db $e3                                        ; $4e25: $e3
    inc e                                         ; $4e26: $1c
    db $e3                                        ; $4e27: $e3
    inc e                                         ; $4e28: $1c
    db $e3                                        ; $4e29: $e3
    db $fc                                        ; $4e2a: $fc
    inc bc                                        ; $4e2b: $03
    sbc l                                         ; $4e2c: $9d
    ld h, d                                       ; $4e2d: $62
    sbc l                                         ; $4e2e: $9d
    ld h, d                                       ; $4e2f: $62
    nop                                           ; $4e30: $00
    rst RST_38                                    ; $4e31: $ff
    nop                                           ; $4e32: $00
    rst RST_38                                    ; $4e33: $ff
    nop                                           ; $4e34: $00
    rst RST_38                                    ; $4e35: $ff
    nop                                           ; $4e36: $00
    rst RST_38                                    ; $4e37: $ff
    nop                                           ; $4e38: $00
    rst RST_38                                    ; $4e39: $ff
    nop                                           ; $4e3a: $00
    add a                                         ; $4e3b: $87
    nop                                           ; $4e3c: $00
    inc sp                                        ; $4e3d: $33
    nop                                           ; $4e3e: $00
    ld sp, rP1                                    ; $4e3f: $31 $00 $ff
    nop                                           ; $4e42: $00
    rst RST_38                                    ; $4e43: $ff
    nop                                           ; $4e44: $00
    rst RST_38                                    ; $4e45: $ff
    nop                                           ; $4e46: $00
    rst RST_38                                    ; $4e47: $ff
    nop                                           ; $4e48: $00
    rst RST_38                                    ; $4e49: $ff
    db $fc                                        ; $4e4a: $fc
    inc bc                                        ; $4e4b: $03
    adc $31                                       ; $4e4c: $ce $31
    adc $31                                       ; $4e4e: $ce $31
    nop                                           ; $4e50: $00

jr_004_4e51:
    ld sp, hl                                     ; $4e51: $f9
    nop                                           ; $4e52: $00

jr_004_4e53:
    di                                            ; $4e53: $f3
    nop                                           ; $4e54: $00
    di                                            ; $4e55: $f3
    nop                                           ; $4e56: $00
    rst RST_20                                    ; $4e57: $e7
    nop                                           ; $4e58: $00
    rst RST_20                                    ; $4e59: $e7
    nop                                           ; $4e5a: $00
    rst RST_20                                    ; $4e5b: $e7
    nop                                           ; $4e5c: $00
    rst RST_20                                    ; $4e5d: $e7
    nop                                           ; $4e5e: $00
    db $e3                                        ; $4e5f: $e3
    rrca                                          ; $4e60: $0f
    ldh a, [$ff0e]                                ; $4e61: $f0 $0e
    pop af                                        ; $4e63: $f1

jr_004_4e64:
    inc e                                         ; $4e64: $1c
    db $e3                                        ; $4e65: $e3
    inc e                                         ; $4e66: $1c
    db $e3                                        ; $4e67: $e3
    jr jr_004_4e51                                ; $4e68: $18 $e7

    jr jr_004_4e53                                ; $4e6a: $18 $e7

    inc e                                         ; $4e6c: $1c
    db $e3                                        ; $4e6d: $e3
    inc e                                         ; $4e6e: $1c
    db $e3                                        ; $4e6f: $e3
    nop                                           ; $4e70: $00
    rst RST_38                                    ; $4e71: $ff
    nop                                           ; $4e72: $00
    rst RST_38                                    ; $4e73: $ff
    nop                                           ; $4e74: $00
    rst RST_38                                    ; $4e75: $ff
    nop                                           ; $4e76: $00
    rst RST_38                                    ; $4e77: $ff
    nop                                           ; $4e78: $00
    rst RST_38                                    ; $4e79: $ff
    nop                                           ; $4e7a: $00
    pop bc                                        ; $4e7b: $c1
    nop                                           ; $4e7c: $00
    pop bc                                        ; $4e7d: $c1
    nop                                           ; $4e7e: $00
    pop af                                        ; $4e7f: $f1
    nop                                           ; $4e80: $00
    rst RST_38                                    ; $4e81: $ff
    nop                                           ; $4e82: $00
    rst RST_38                                    ; $4e83: $ff
    nop                                           ; $4e84: $00
    rst RST_38                                    ; $4e85: $ff
    nop                                           ; $4e86: $00
    rst RST_38                                    ; $4e87: $ff
    nop                                           ; $4e88: $00
    rst RST_38                                    ; $4e89: $ff
    ld a, $c1                                     ; $4e8a: $3e $c1
    ld a, $c1                                     ; $4e8c: $3e $c1
    ld c, $f1                                     ; $4e8e: $0e $f1
    nop                                           ; $4e90: $00
    ld hl, sp+$00                                 ; $4e91: $f8 $00
    ldh a, [c]                                    ; $4e93: $f2
    nop                                           ; $4e94: $00
    ldh a, [c]                                    ; $4e95: $f2
    nop                                           ; $4e96: $00
    and $00                                       ; $4e97: $e6 $00
    rst RST_20                                    ; $4e99: $e7
    nop                                           ; $4e9a: $00
    rst RST_00                                    ; $4e9b: $c7
    nop                                           ; $4e9c: $00
    ret nz                                        ; $4e9d: $c0

    nop                                           ; $4e9e: $00
    adc a                                         ; $4e9f: $8f
    rrca                                          ; $4ea0: $0f
    ldh a, [rIF]                                  ; $4ea1: $f0 $0f
    ldh a, [rNR33]                                ; $4ea3: $f0 $1d
    ldh [c], a                                    ; $4ea5: $e2
    dec e                                         ; $4ea6: $1d
    ldh [c], a                                    ; $4ea7: $e2
    add hl, sp                                    ; $4ea8: $39
    add $3f                                       ; $4ea9: $c6 $3f
    ret nz                                        ; $4eab: $c0

    ld a, a                                       ; $4eac: $7f
    add b                                         ; $4ead: $80
    ld a, a                                       ; $4eae: $7f
    add b                                         ; $4eaf: $80
    nop                                           ; $4eb0: $00
    rst RST_38                                    ; $4eb1: $ff
    nop                                           ; $4eb2: $00
    ld a, a                                       ; $4eb3: $7f
    nop                                           ; $4eb4: $00
    ld a, [hl]                                    ; $4eb5: $7e
    nop                                           ; $4eb6: $00
    ld a, [hl]                                    ; $4eb7: $7e
    nop                                           ; $4eb8: $00
    ld a, [hl]                                    ; $4eb9: $7e
    nop                                           ; $4eba: $00
    inc a                                         ; $4ebb: $3c
    nop                                           ; $4ebc: $00
    inc a                                         ; $4ebd: $3c
    nop                                           ; $4ebe: $00
    inc a                                         ; $4ebf: $3c
    add b                                         ; $4ec0: $80
    ld a, a                                       ; $4ec1: $7f
    add c                                         ; $4ec2: $81
    ld a, [hl]                                    ; $4ec3: $7e
    add c                                         ; $4ec4: $81
    ld a, [hl]                                    ; $4ec5: $7e
    pop bc                                        ; $4ec6: $c1
    ld a, $c3                                     ; $4ec7: $3e $c3
    inc a                                         ; $4ec9: $3c
    jp $c33c                                      ; $4eca: $c3 $3c $c3


    inc a                                         ; $4ecd: $3c
    rst RST_20                                    ; $4ece: $e7
    jr jr_004_4ed1                                ; $4ecf: $18 $00

jr_004_4ed1:
    rrca                                          ; $4ed1: $0f
    nop                                           ; $4ed2: $00
    ld c, $00                                     ; $4ed3: $0e $00
    ld c, [hl]                                    ; $4ed5: $4e
    nop                                           ; $4ed6: $00
    ld c, h                                       ; $4ed7: $4c
    nop                                           ; $4ed8: $00
    ld l, h                                       ; $4ed9: $6c
    nop                                           ; $4eda: $00
    jp hl                                         ; $4edb: $e9


    nop                                           ; $4edc: $00
    pop hl                                        ; $4edd: $e1
    nop                                           ; $4ede: $00
    db $e3                                        ; $4edf: $e3
    ldh a, [rIF]                                  ; $4ee0: $f0 $0f
    pop af                                        ; $4ee2: $f1
    ld c, $f9                                     ; $4ee3: $0e $f9
    ld b, $bb                                     ; $4ee5: $06 $bb
    ld b, h                                       ; $4ee7: $44
    cp e                                          ; $4ee8: $bb
    ld b, h                                       ; $4ee9: $44
    cp a                                          ; $4eea: $bf
    ld b, b                                       ; $4eeb: $40
    rra                                           ; $4eec: $1f
    ldh [rNR34], a                                ; $4eed: $e0 $1e
    pop hl                                        ; $4eef: $e1
    nop                                           ; $4ef0: $00
    rrca                                          ; $4ef1: $0f
    nop                                           ; $4ef2: $00
    rrca                                          ; $4ef3: $0f
    nop                                           ; $4ef4: $00
    ld c, [hl]                                    ; $4ef5: $4e
    nop                                           ; $4ef6: $00
    adc $00                                       ; $4ef7: $ce $00
    adc $00                                       ; $4ef9: $ce $00
    adc $00                                       ; $4efb: $ce $00
    call z, $cc00                                 ; $4efd: $cc $00 $cc
    pop af                                        ; $4f00: $f1
    ld c, $f1                                     ; $4f01: $0e $f1
    ld c, $f1                                     ; $4f03: $0e $f1
    ld c, $f1                                     ; $4f05: $0e $f1
    ld c, $b3                                     ; $4f07: $0e $b3
    ld c, h                                       ; $4f09: $4c
    inc sp                                        ; $4f0a: $33
    call z, $cc33                                 ; $4f0b: $cc $33 $cc
    inc sp                                        ; $4f0e: $33
    call z, Call_000_1c00                         ; $4f0f: $cc $00 $1c
    nop                                           ; $4f12: $00
    inc e                                         ; $4f13: $1c
    nop                                           ; $4f14: $00
    ld e, $00                                     ; $4f15: $1e $00
    rst RST_38                                    ; $4f17: $ff
    nop                                           ; $4f18: $00
    rst RST_38                                    ; $4f19: $ff
    nop                                           ; $4f1a: $00
    rst RST_38                                    ; $4f1b: $ff
    nop                                           ; $4f1c: $00
    rst RST_38                                    ; $4f1d: $ff
    nop                                           ; $4f1e: $00
    rst RST_38                                    ; $4f1f: $ff
    rst RST_20                                    ; $4f20: $e7
    jr @-$1b                                      ; $4f21: $18 $e3

    inc e                                         ; $4f23: $1c
    pop hl                                        ; $4f24: $e1
    ld e, $00                                     ; $4f25: $1e $00
    rst RST_38                                    ; $4f27: $ff
    nop                                           ; $4f28: $00
    rst RST_38                                    ; $4f29: $ff
    nop                                           ; $4f2a: $00
    rst RST_38                                    ; $4f2b: $ff
    nop                                           ; $4f2c: $00
    rst RST_38                                    ; $4f2d: $ff
    nop                                           ; $4f2e: $00
    rst RST_38                                    ; $4f2f: $ff
    nop                                           ; $4f30: $00
    ld [hl+], a                                   ; $4f31: $22
    nop                                           ; $4f32: $00
    ld [hl+], a                                   ; $4f33: $22
    nop                                           ; $4f34: $00
    ld [hl+], a                                   ; $4f35: $22
    nop                                           ; $4f36: $00
    rst RST_38                                    ; $4f37: $ff
    nop                                           ; $4f38: $00
    rst RST_38                                    ; $4f39: $ff
    nop                                           ; $4f3a: $00
    rst RST_38                                    ; $4f3b: $ff
    nop                                           ; $4f3c: $00
    rst RST_38                                    ; $4f3d: $ff
    nop                                           ; $4f3e: $00
    rst RST_38                                    ; $4f3f: $ff
    db $dd                                        ; $4f40: $dd
    ld [hl+], a                                   ; $4f41: $22
    db $dd                                        ; $4f42: $dd
    ld [hl+], a                                   ; $4f43: $22
    db $dd                                        ; $4f44: $dd
    ld [hl+], a                                   ; $4f45: $22
    nop                                           ; $4f46: $00
    rst RST_38                                    ; $4f47: $ff
    nop                                           ; $4f48: $00
    rst RST_38                                    ; $4f49: $ff
    nop                                           ; $4f4a: $00
    rst RST_38                                    ; $4f4b: $ff
    nop                                           ; $4f4c: $00
    rst RST_38                                    ; $4f4d: $ff
    nop                                           ; $4f4e: $00
    rst RST_38                                    ; $4f4f: $ff
    nop                                           ; $4f50: $00
    ld sp, $3100                                  ; $4f51: $31 $00 $31
    nop                                           ; $4f54: $00
    ld sp, rP1                                    ; $4f55: $31 $00 $ff
    nop                                           ; $4f58: $00
    rst RST_38                                    ; $4f59: $ff
    nop                                           ; $4f5a: $00
    rst RST_38                                    ; $4f5b: $ff
    nop                                           ; $4f5c: $00
    rst RST_38                                    ; $4f5d: $ff
    nop                                           ; $4f5e: $00
    rst RST_38                                    ; $4f5f: $ff
    adc $31                                       ; $4f60: $ce $31
    adc $31                                       ; $4f62: $ce $31
    adc $31                                       ; $4f64: $ce $31
    nop                                           ; $4f66: $00
    rst RST_38                                    ; $4f67: $ff
    nop                                           ; $4f68: $00
    rst RST_38                                    ; $4f69: $ff
    nop                                           ; $4f6a: $00
    rst RST_38                                    ; $4f6b: $ff
    nop                                           ; $4f6c: $00
    rst RST_38                                    ; $4f6d: $ff
    nop                                           ; $4f6e: $00
    rst RST_38                                    ; $4f6f: $ff
    nop                                           ; $4f70: $00
    ld de, $1900                                  ; $4f71: $11 $00 $19
    nop                                           ; $4f74: $00
    inc e                                         ; $4f75: $1c
    nop                                           ; $4f76: $00
    rst RST_38                                    ; $4f77: $ff
    nop                                           ; $4f78: $00
    rst RST_38                                    ; $4f79: $ff
    nop                                           ; $4f7a: $00
    rst RST_38                                    ; $4f7b: $ff
    nop                                           ; $4f7c: $00
    rst RST_38                                    ; $4f7d: $ff
    nop                                           ; $4f7e: $00
    rst RST_38                                    ; $4f7f: $ff
    xor $11                                       ; $4f80: $ee $11
    xor $11                                       ; $4f82: $ee $11
    rst RST_20                                    ; $4f84: $e7
    jr jr_004_4f87                                ; $4f85: $18 $00

jr_004_4f87:
    rst RST_38                                    ; $4f87: $ff
    nop                                           ; $4f88: $00
    rst RST_38                                    ; $4f89: $ff
    nop                                           ; $4f8a: $00
    rst RST_38                                    ; $4f8b: $ff
    nop                                           ; $4f8c: $00
    rst RST_38                                    ; $4f8d: $ff
    nop                                           ; $4f8e: $00
    rst RST_38                                    ; $4f8f: $ff
    nop                                           ; $4f90: $00
    ld hl, sp+$00                                 ; $4f91: $f8 $00
    sbc b                                         ; $4f93: $98
    nop                                           ; $4f94: $00
    jr c, jr_004_4f97                             ; $4f95: $38 $00

jr_004_4f97:
    rst RST_38                                    ; $4f97: $ff
    nop                                           ; $4f98: $00
    rst RST_38                                    ; $4f99: $ff
    nop                                           ; $4f9a: $00
    rst RST_38                                    ; $4f9b: $ff
    nop                                           ; $4f9c: $00
    rst RST_38                                    ; $4f9d: $ff
    nop                                           ; $4f9e: $00
    rst RST_38                                    ; $4f9f: $ff
    rlca                                          ; $4fa0: $07
    ld hl, sp+$77                                 ; $4fa1: $f8 $77
    adc b                                         ; $4fa3: $88
    rst RST_20                                    ; $4fa4: $e7
    jr jr_004_4fa7                                ; $4fa5: $18 $00

jr_004_4fa7:
    rst RST_38                                    ; $4fa7: $ff
    nop                                           ; $4fa8: $00
    rst RST_38                                    ; $4fa9: $ff
    nop                                           ; $4faa: $00
    rst RST_38                                    ; $4fab: $ff
    nop                                           ; $4fac: $00
    rst RST_38                                    ; $4fad: $ff
    nop                                           ; $4fae: $00
    rst RST_38                                    ; $4faf: $ff
    nop                                           ; $4fb0: $00
    call nz, $c600                                ; $4fb1: $c4 $00 $c6
    nop                                           ; $4fb4: $00
    rst RST_00                                    ; $4fb5: $c7
    nop                                           ; $4fb6: $00
    rst RST_38                                    ; $4fb7: $ff
    nop                                           ; $4fb8: $00
    rst RST_38                                    ; $4fb9: $ff
    nop                                           ; $4fba: $00
    rst RST_38                                    ; $4fbb: $ff
    nop                                           ; $4fbc: $00
    rst RST_38                                    ; $4fbd: $ff
    nop                                           ; $4fbe: $00
    rst RST_38                                    ; $4fbf: $ff
    dec sp                                        ; $4fc0: $3b
    call nz, $c43b                                ; $4fc1: $c4 $3b $c4
    add hl, sp                                    ; $4fc4: $39
    add $00                                       ; $4fc5: $c6 $00
    rst RST_38                                    ; $4fc7: $ff
    nop                                           ; $4fc8: $00
    rst RST_38                                    ; $4fc9: $ff
    nop                                           ; $4fca: $00
    rst RST_38                                    ; $4fcb: $ff
    nop                                           ; $4fcc: $00
    rst RST_38                                    ; $4fcd: $ff
    nop                                           ; $4fce: $00
    rst RST_38                                    ; $4fcf: $ff
    nop                                           ; $4fd0: $00
    ld h, d                                       ; $4fd1: $62
    nop                                           ; $4fd2: $00
    ld h, e                                       ; $4fd3: $63
    nop                                           ; $4fd4: $00
    inc de                                        ; $4fd5: $13
    nop                                           ; $4fd6: $00
    rst RST_38                                    ; $4fd7: $ff
    nop                                           ; $4fd8: $00
    rst RST_38                                    ; $4fd9: $ff
    nop                                           ; $4fda: $00
    rst RST_38                                    ; $4fdb: $ff
    nop                                           ; $4fdc: $00
    rst RST_38                                    ; $4fdd: $ff
    nop                                           ; $4fde: $00
    rst RST_38                                    ; $4fdf: $ff
    sbc l                                         ; $4fe0: $9d
    ld h, d                                       ; $4fe1: $62
    sbc l                                         ; $4fe2: $9d
    ld h, d                                       ; $4fe3: $62
    db $ec                                        ; $4fe4: $ec
    inc de                                        ; $4fe5: $13
    nop                                           ; $4fe6: $00
    rst RST_38                                    ; $4fe7: $ff
    nop                                           ; $4fe8: $00
    rst RST_38                                    ; $4fe9: $ff
    nop                                           ; $4fea: $00
    rst RST_38                                    ; $4feb: $ff
    nop                                           ; $4fec: $00
    rst RST_38                                    ; $4fed: $ff
    nop                                           ; $4fee: $00
    rst RST_38                                    ; $4fef: $ff
    nop                                           ; $4ff0: $00
    di                                            ; $4ff1: $f3
    nop                                           ; $4ff2: $00
    ldh a, [rP1]                                  ; $4ff3: $f0 $00
    ld hl, sp+$00                                 ; $4ff5: $f8 $00
    cp $00                                        ; $4ff7: $fe $00
    rst RST_38                                    ; $4ff9: $ff
    nop                                           ; $4ffa: $00
    rst RST_38                                    ; $4ffb: $ff
    nop                                           ; $4ffc: $00
    rst RST_38                                    ; $4ffd: $ff
    nop                                           ; $4ffe: $00
    rst RST_38                                    ; $4fff: $ff
    ld e, $e1                                     ; $5000: $1e $e1
    rrca                                          ; $5002: $0f
    ldh a, [rTAC]                                 ; $5003: $f0 $07
    ld hl, sp+$03                                 ; $5005: $f8 $03
    db $fc                                        ; $5007: $fc
    nop                                           ; $5008: $00
    rst RST_38                                    ; $5009: $ff
    nop                                           ; $500a: $00
    rst RST_38                                    ; $500b: $ff
    nop                                           ; $500c: $00
    rst RST_38                                    ; $500d: $ff
    nop                                           ; $500e: $00
    rst RST_38                                    ; $500f: $ff
    sbc c                                         ; $5010: $99
    ld bc, $0000                                  ; $5011: $01 $00 $00
    nop                                           ; $5014: $00
    nop                                           ; $5015: $00
    nop                                           ; $5016: $00
    nop                                           ; $5017: $00
    nop                                           ; $5018: $00
    nop                                           ; $5019: $00
    nop                                           ; $501a: $00
    nop                                           ; $501b: $00
    nop                                           ; $501c: $00
    nop                                           ; $501d: $00
    nop                                           ; $501e: $00
    nop                                           ; $501f: $00
    nop                                           ; $5020: $00
    di                                            ; $5021: $f3
    nop                                           ; $5022: $00
    db $e3                                        ; $5023: $e3
    nop                                           ; $5024: $00
    rlca                                          ; $5025: $07
    nop                                           ; $5026: $00
    ld c, $00                                     ; $5027: $0e $00
    rst RST_38                                    ; $5029: $ff
    nop                                           ; $502a: $00
    rst RST_38                                    ; $502b: $ff
    nop                                           ; $502c: $00
    rst RST_38                                    ; $502d: $ff
    nop                                           ; $502e: $00
    rst RST_38                                    ; $502f: $ff
    ld c, $f1                                     ; $5030: $0e $f1
    cp h                                          ; $5032: $bc
    ld b, e                                       ; $5033: $43
    db $fd                                        ; $5034: $fd
    ld [bc], a                                    ; $5035: $02
    pop af                                        ; $5036: $f1
    ld c, $00                                     ; $5037: $0e $00
    rst RST_38                                    ; $5039: $ff
    nop                                           ; $503a: $00
    rst RST_38                                    ; $503b: $ff
    nop                                           ; $503c: $00
    rst RST_38                                    ; $503d: $ff
    nop                                           ; $503e: $00
    rst RST_38                                    ; $503f: $ff
    nop                                           ; $5040: $00
    sbc a                                         ; $5041: $9f
    nop                                           ; $5042: $00
    ccf                                           ; $5043: $3f
    nop                                           ; $5044: $00
    ccf                                           ; $5045: $3f
    nop                                           ; $5046: $00
    ld a, a                                       ; $5047: $7f
    nop                                           ; $5048: $00
    rst RST_38                                    ; $5049: $ff
    nop                                           ; $504a: $00
    rst RST_38                                    ; $504b: $ff
    nop                                           ; $504c: $00
    rst RST_38                                    ; $504d: $ff
    nop                                           ; $504e: $00
    rst RST_38                                    ; $504f: $ff
    ldh [$ff1f], a                                ; $5050: $e0 $1f
    ldh [$ff1f], a                                ; $5052: $e0 $1f
    ret nz                                        ; $5054: $c0

    ccf                                           ; $5055: $3f
    ret nz                                        ; $5056: $c0

    ccf                                           ; $5057: $3f
    nop                                           ; $5058: $00

jr_004_5059:
    rst RST_38                                    ; $5059: $ff
    nop                                           ; $505a: $00
    rst RST_38                                    ; $505b: $ff
    nop                                           ; $505c: $00
    rst RST_38                                    ; $505d: $ff
    nop                                           ; $505e: $00
    rst RST_38                                    ; $505f: $ff
    nop                                           ; $5060: $00
    add hl, sp                                    ; $5061: $39
    nop                                           ; $5062: $00
    sbc c                                         ; $5063: $99
    nop                                           ; $5064: $00
    sbc c                                         ; $5065: $99
    nop                                           ; $5066: $00
    sub e                                         ; $5067: $93
    nop                                           ; $5068: $00
    rst RST_38                                    ; $5069: $ff
    nop                                           ; $506a: $00
    rst RST_38                                    ; $506b: $ff
    nop                                           ; $506c: $00
    rst RST_38                                    ; $506d: $ff
    nop                                           ; $506e: $00
    rst RST_38                                    ; $506f: $ff
    rst RST_20                                    ; $5070: $e7
    jr jr_004_5059                                ; $5071: $18 $e6

    add hl, de                                    ; $5073: $19
    ld l, [hl]                                    ; $5074: $6e
    sub c                                         ; $5075: $91
    ld a, [hl]                                    ; $5076: $7e
    add c                                         ; $5077: $81
    nop                                           ; $5078: $00
    rst RST_38                                    ; $5079: $ff
    nop                                           ; $507a: $00
    rst RST_38                                    ; $507b: $ff
    nop                                           ; $507c: $00
    rst RST_38                                    ; $507d: $ff
    nop                                           ; $507e: $00
    rst RST_38                                    ; $507f: $ff
    nop                                           ; $5080: $00
    di                                            ; $5081: $f3
    nop                                           ; $5082: $00
    rst RST_30                                    ; $5083: $f7
    nop                                           ; $5084: $00
    rst RST_30                                    ; $5085: $f7
    nop                                           ; $5086: $00
    rst RST_38                                    ; $5087: $ff
    nop                                           ; $5088: $00
    rst RST_38                                    ; $5089: $ff
    nop                                           ; $508a: $00
    rst RST_38                                    ; $508b: $ff
    nop                                           ; $508c: $00
    rst RST_38                                    ; $508d: $ff
    nop                                           ; $508e: $00
    rst RST_38                                    ; $508f: $ff
    ld e, $e1                                     ; $5090: $1e $e1
    inc c                                         ; $5092: $0c
    di                                            ; $5093: $f3
    inc c                                         ; $5094: $0c
    di                                            ; $5095: $f3
    ld [$00f7], sp                                ; $5096: $08 $f7 $00
    rst RST_38                                    ; $5099: $ff
    nop                                           ; $509a: $00
    rst RST_38                                    ; $509b: $ff
    nop                                           ; $509c: $00
    rst RST_38                                    ; $509d: $ff
    nop                                           ; $509e: $00
    rst RST_38                                    ; $509f: $ff
    nop                                           ; $50a0: $00
    call z, $cc00                                 ; $50a1: $cc $00 $cc
    nop                                           ; $50a4: $00
    call z, $c800                                 ; $50a5: $cc $00 $c8
    nop                                           ; $50a8: $00
    rst RST_38                                    ; $50a9: $ff
    nop                                           ; $50aa: $00
    rst RST_38                                    ; $50ab: $ff
    nop                                           ; $50ac: $00
    rst RST_38                                    ; $50ad: $ff
    nop                                           ; $50ae: $00
    rst RST_38                                    ; $50af: $ff
    scf                                           ; $50b0: $37
    ret z                                         ; $50b1: $c8

    scf                                           ; $50b2: $37
    ret z                                         ; $50b3: $c8

    scf                                           ; $50b4: $37
    ret z                                         ; $50b5: $c8

    scf                                           ; $50b6: $37
    ret z                                         ; $50b7: $c8

    nop                                           ; $50b8: $00
    rst RST_38                                    ; $50b9: $ff
    nop                                           ; $50ba: $00
    rst RST_38                                    ; $50bb: $ff
    nop                                           ; $50bc: $00
    rst RST_38                                    ; $50bd: $ff
    nop                                           ; $50be: $00
    rst RST_38                                    ; $50bf: $ff
    nop                                           ; $50c0: $00
    rst RST_38                                    ; $50c1: $ff
    ret nz                                        ; $50c2: $c0

    ccf                                           ; $50c3: $3f
    ldh a, [rIF]                                  ; $50c4: $f0 $0f
    ld a, b                                       ; $50c6: $78
    add a                                         ; $50c7: $87
    inc e                                         ; $50c8: $1c
    db $e3                                        ; $50c9: $e3
    ld c, $f1                                     ; $50ca: $0e $f1
    ld b, $f9                                     ; $50cc: $06 $f9
    rlca                                          ; $50ce: $07
    ld hl, sp+$00                                 ; $50cf: $f8 $00
    rst RST_38                                    ; $50d1: $ff
    ld b, b                                       ; $50d2: $40
    ccf                                           ; $50d3: $3f
    sub b                                         ; $50d4: $90
    rrca                                          ; $50d5: $0f
    add sp, $07                                   ; $50d6: $e8 $07
    db $f4                                        ; $50d8: $f4
    inc bc                                        ; $50d9: $03
    ld a, [$fc01]                                 ; $50da: $fa $01 $fc
    ld bc, $00fd                                  ; $50dd: $01 $fd $00
    nop                                           ; $50e0: $00
    rst RST_38                                    ; $50e1: $ff
    nop                                           ; $50e2: $00
    rst RST_38                                    ; $50e3: $ff
    nop                                           ; $50e4: $00
    rst RST_38                                    ; $50e5: $ff
    nop                                           ; $50e6: $00
    rst RST_38                                    ; $50e7: $ff
    nop                                           ; $50e8: $00
    rst RST_38                                    ; $50e9: $ff
    nop                                           ; $50ea: $00
    rst RST_38                                    ; $50eb: $ff
    ld d, l                                       ; $50ec: $55
    xor d                                         ; $50ed: $aa
    nop                                           ; $50ee: $00
    rst RST_38                                    ; $50ef: $ff
    rst RST_38                                    ; $50f0: $ff
    nop                                           ; $50f1: $00
    rst RST_38                                    ; $50f2: $ff
    nop                                           ; $50f3: $00
    rst RST_38                                    ; $50f4: $ff
    nop                                           ; $50f5: $00
    or [hl]                                       ; $50f6: $b6
    nop                                           ; $50f7: $00
    or [hl]                                       ; $50f8: $b6
    nop                                           ; $50f9: $00
    xor d                                         ; $50fa: $aa
    nop                                           ; $50fb: $00
    db $dd                                        ; $50fc: $dd
    nop                                           ; $50fd: $00
    db $dd                                        ; $50fe: $dd
    nop                                           ; $50ff: $00
    nop                                           ; $5100: $00
    rst RST_38                                    ; $5101: $ff
    nop                                           ; $5102: $00
    rst RST_38                                    ; $5103: $ff
    nop                                           ; $5104: $00
    rst RST_38                                    ; $5105: $ff
    ld [hl+], a                                   ; $5106: $22
    db $dd                                        ; $5107: $dd
    nop                                           ; $5108: $00
    rst RST_38                                    ; $5109: $ff
    nop                                           ; $510a: $00
    rst RST_38                                    ; $510b: $ff
    nop                                           ; $510c: $00
    rst RST_38                                    ; $510d: $ff
    nop                                           ; $510e: $00
    rst RST_38                                    ; $510f: $ff
    rst RST_38                                    ; $5110: $ff
    nop                                           ; $5111: $00
    rst RST_38                                    ; $5112: $ff
    nop                                           ; $5113: $00
    rst RST_38                                    ; $5114: $ff
    nop                                           ; $5115: $00
    and d                                         ; $5116: $a2
    nop                                           ; $5117: $00
    or [hl]                                       ; $5118: $b6
    nop                                           ; $5119: $00
    or [hl]                                       ; $511a: $b6
    nop                                           ; $511b: $00
    or [hl]                                       ; $511c: $b6
    nop                                           ; $511d: $00
    or [hl]                                       ; $511e: $b6
    nop                                           ; $511f: $00
    nop                                           ; $5120: $00
    rst RST_38                                    ; $5121: $ff
    nop                                           ; $5122: $00
    rst RST_38                                    ; $5123: $ff
    nop                                           ; $5124: $00
    rst RST_38                                    ; $5125: $ff
    ld bc, $00fe                                  ; $5126: $01 $fe $00
    rst RST_38                                    ; $5129: $ff
    nop                                           ; $512a: $00
    rst RST_38                                    ; $512b: $ff
    ld bc, $01fe                                  ; $512c: $01 $fe $01

jr_004_512f:
    cp $ff                                        ; $512f: $fe $ff
    nop                                           ; $5131: $00
    rst RST_38                                    ; $5132: $ff
    nop                                           ; $5133: $00
    rst RST_38                                    ; $5134: $ff
    nop                                           ; $5135: $00
    rst RST_18                                    ; $5136: $df
    nop                                           ; $5137: $00
    sbc $00                                       ; $5138: $de $00
    rra                                           ; $513a: $1f
    nop                                           ; $513b: $00
    rst RST_18                                    ; $513c: $df
    nop                                           ; $513d: $00
    rst RST_18                                    ; $513e: $df
    nop                                           ; $513f: $00
    nop                                           ; $5140: $00
    rst RST_38                                    ; $5141: $ff
    nop                                           ; $5142: $00
    rst RST_38                                    ; $5143: $ff
    nop                                           ; $5144: $00
    rst RST_38                                    ; $5145: $ff
    ld sp, $20ce                                  ; $5146: $31 $ce $20
    rst RST_18                                    ; $5149: $df
    nop                                           ; $514a: $00
    rst RST_38                                    ; $514b: $ff
    nop                                           ; $514c: $00
    rst RST_38                                    ; $514d: $ff
    jr nz, jr_004_512f                            ; $514e: $20 $df

    rst RST_38                                    ; $5150: $ff
    nop                                           ; $5151: $00
    rst RST_38                                    ; $5152: $ff
    nop                                           ; $5153: $00
    rst RST_38                                    ; $5154: $ff
    nop                                           ; $5155: $00
    ld sp, $fb00                                  ; $5156: $31 $00 $fb
    nop                                           ; $5159: $00
    dec sp                                        ; $515a: $3b
    nop                                           ; $515b: $00
    db $db                                        ; $515c: $db
    nop                                           ; $515d: $00
    dec sp                                        ; $515e: $3b
    nop                                           ; $515f: $00
    nop                                           ; $5160: $00
    rst RST_38                                    ; $5161: $ff
    nop                                           ; $5162: $00
    rst RST_38                                    ; $5163: $ff
    nop                                           ; $5164: $00
    rst RST_38                                    ; $5165: $ff
    nop                                           ; $5166: $00
    rst RST_38                                    ; $5167: $ff
    ld [bc], a                                    ; $5168: $02
    db $fd                                        ; $5169: $fd
    nop                                           ; $516a: $00
    rst RST_38                                    ; $516b: $ff
    ld bc, $00fe                                  ; $516c: $01 $fe $00
    rst RST_38                                    ; $516f: $ff
    rst RST_38                                    ; $5170: $ff
    nop                                           ; $5171: $00
    rst RST_38                                    ; $5172: $ff
    nop                                           ; $5173: $00
    rst RST_38                                    ; $5174: $ff
    nop                                           ; $5175: $00
    ld de, $7600                                  ; $5176: $11 $00 $76
    nop                                           ; $5179: $00
    ld de, $7500                                  ; $517a: $11 $00 $75
    nop                                           ; $517d: $00
    ld d, $00                                     ; $517e: $16 $00
    nop                                           ; $5180: $00
    rst RST_38                                    ; $5181: $ff
    nop                                           ; $5182: $00
    rst RST_38                                    ; $5183: $ff
    nop                                           ; $5184: $00
    rst RST_38                                    ; $5185: $ff
    nop                                           ; $5186: $00
    rst RST_38                                    ; $5187: $ff
    ld [bc], a                                    ; $5188: $02
    db $fd                                        ; $5189: $fd
    nop                                           ; $518a: $00
    rst RST_38                                    ; $518b: $ff
    ld [bc], a                                    ; $518c: $02
    db $fd                                        ; $518d: $fd
    nop                                           ; $518e: $00
    rst RST_38                                    ; $518f: $ff
    rst RST_38                                    ; $5190: $ff
    nop                                           ; $5191: $00
    rst RST_38                                    ; $5192: $ff
    nop                                           ; $5193: $00
    rst RST_38                                    ; $5194: $ff
    nop                                           ; $5195: $00
    adc h                                         ; $5196: $8c
    ld [bc], a                                    ; $5197: $02
    cp e                                          ; $5198: $bb
    inc b                                         ; $5199: $04
    adc e                                         ; $519a: $8b
    nop                                           ; $519b: $00
    cp e                                          ; $519c: $bb
    inc b                                         ; $519d: $04
    adc h                                         ; $519e: $8c
    ld [bc], a                                    ; $519f: $02
    nop                                           ; $51a0: $00
    rst RST_38                                    ; $51a1: $ff
    nop                                           ; $51a2: $00
    rst RST_38                                    ; $51a3: $ff
    nop                                           ; $51a4: $00
    rst RST_38                                    ; $51a5: $ff
    ld [bc], a                                    ; $51a6: $02
    db $fd                                        ; $51a7: $fd
    add b                                         ; $51a8: $80
    ld a, a                                       ; $51a9: $7f
    nop                                           ; $51aa: $00
    rst RST_38                                    ; $51ab: $ff
    add d                                         ; $51ac: $82
    ld a, l                                       ; $51ad: $7d
    ld [bc], a                                    ; $51ae: $02
    db $fd                                        ; $51af: $fd
    rst RST_38                                    ; $51b0: $ff
    nop                                           ; $51b1: $00
    rst RST_38                                    ; $51b2: $ff
    nop                                           ; $51b3: $00
    rst RST_38                                    ; $51b4: $ff
    nop                                           ; $51b5: $00
    ld a, [hl]                                    ; $51b6: $7e
    add b                                         ; $51b7: $80
    cp l                                          ; $51b8: $bd
    ld b, b                                       ; $51b9: $40
    cp [hl]                                       ; $51ba: $be
    nop                                           ; $51bb: $00
    cp a                                          ; $51bc: $bf
    ld b, b                                       ; $51bd: $40
    ld a, [hl]                                    ; $51be: $7e
    add b                                         ; $51bf: $80
    nop                                           ; $51c0: $00
    rst RST_38                                    ; $51c1: $ff
    nop                                           ; $51c2: $00
    rst RST_38                                    ; $51c3: $ff
    nop                                           ; $51c4: $00
    rst RST_38                                    ; $51c5: $ff
    ld b, b                                       ; $51c6: $40
    cp a                                          ; $51c7: $bf
    ld c, d                                       ; $51c8: $4a
    or l                                          ; $51c9: $b5
    nop                                           ; $51ca: $00
    rst RST_38                                    ; $51cb: $ff
    ld a, [bc]                                    ; $51cc: $0a
    push af                                       ; $51cd: $f5
    ld b, b                                       ; $51ce: $40
    cp a                                          ; $51cf: $bf
    rst RST_38                                    ; $51d0: $ff
    nop                                           ; $51d1: $00
    rst RST_38                                    ; $51d2: $ff
    nop                                           ; $51d3: $00
    rst RST_38                                    ; $51d4: $ff
    nop                                           ; $51d5: $00
    ld [hl], c                                    ; $51d6: $71
    ld a, [bc]                                    ; $51d7: $0a
    xor $11                                       ; $51d8: $ee $11
    ld l, [hl]                                    ; $51da: $6e
    nop                                           ; $51db: $00
    xor [hl]                                      ; $51dc: $ae
    ld de, $0a71                                  ; $51dd: $11 $71 $0a
    nop                                           ; $51e0: $00
    rst RST_38                                    ; $51e1: $ff
    nop                                           ; $51e2: $00
    rst RST_38                                    ; $51e3: $ff
    nop                                           ; $51e4: $00
    rst RST_38                                    ; $51e5: $ff
    nop                                           ; $51e6: $00
    rst RST_38                                    ; $51e7: $ff
    nop                                           ; $51e8: $00
    rst RST_38                                    ; $51e9: $ff
    nop                                           ; $51ea: $00
    rst RST_38                                    ; $51eb: $ff
    nop                                           ; $51ec: $00
    rst RST_38                                    ; $51ed: $ff
    ld c, b                                       ; $51ee: $48
    or a                                          ; $51ef: $b7
    rst RST_38                                    ; $51f0: $ff
    nop                                           ; $51f1: $00
    rst RST_38                                    ; $51f2: $ff
    nop                                           ; $51f3: $00
    rst RST_38                                    ; $51f4: $ff
    nop                                           ; $51f5: $00
    or l                                          ; $51f6: $b5
    nop                                           ; $51f7: $00
    or h                                          ; $51f8: $b4
    nop                                           ; $51f9: $00
    or l                                          ; $51fa: $b5
    nop                                           ; $51fb: $00
    or l                                          ; $51fc: $b5
    nop                                           ; $51fd: $00
    call RST_00                                   ; $51fe: $cd $00 $00
    rst RST_38                                    ; $5201: $ff
    nop                                           ; $5202: $00
    rst RST_38                                    ; $5203: $ff
    nop                                           ; $5204: $00
    rst RST_38                                    ; $5205: $ff
    nop                                           ; $5206: $00
    rst RST_38                                    ; $5207: $ff
    ld [bc], a                                    ; $5208: $02
    db $fd                                        ; $5209: $fd
    nop                                           ; $520a: $00
    rst RST_38                                    ; $520b: $ff
    ld [bc], a                                    ; $520c: $02
    db $fd                                        ; $520d: $fd
    nop                                           ; $520e: $00
    rst RST_38                                    ; $520f: $ff
    rst RST_38                                    ; $5210: $ff
    nop                                           ; $5211: $00
    rst RST_38                                    ; $5212: $ff
    nop                                           ; $5213: $00
    rst RST_38                                    ; $5214: $ff
    nop                                           ; $5215: $00
    pop de                                        ; $5216: $d1
    ld [bc], a                                    ; $5217: $02
    sub $01                                       ; $5218: $d6 $01
    ld d, [hl]                                    ; $521a: $56
    nop                                           ; $521b: $00
    sub [hl]                                      ; $521c: $96
    ld bc, $02d1                                  ; $521d: $01 $d1 $02
    nop                                           ; $5220: $00
    rst RST_38                                    ; $5221: $ff
    nop                                           ; $5222: $00
    rst RST_38                                    ; $5223: $ff
    nop                                           ; $5224: $00
    rst RST_38                                    ; $5225: $ff
    nop                                           ; $5226: $00
    rst RST_38                                    ; $5227: $ff
    nop                                           ; $5228: $00
    rst RST_38                                    ; $5229: $ff
    nop                                           ; $522a: $00
    rst RST_38                                    ; $522b: $ff
    nop                                           ; $522c: $00
    rst RST_38                                    ; $522d: $ff
    add b                                         ; $522e: $80
    ld a, a                                       ; $522f: $7f
    rst RST_38                                    ; $5230: $ff
    nop                                           ; $5231: $00
    rst RST_38                                    ; $5232: $ff
    nop                                           ; $5233: $00
    rst RST_38                                    ; $5234: $ff
    nop                                           ; $5235: $00
    rst RST_38                                    ; $5236: $ff
    nop                                           ; $5237: $00
    rst RST_38                                    ; $5238: $ff
    nop                                           ; $5239: $00
    rst RST_38                                    ; $523a: $ff
    nop                                           ; $523b: $00
    rst RST_38                                    ; $523c: $ff
    nop                                           ; $523d: $00
    ld a, a                                       ; $523e: $7f
    nop                                           ; $523f: $00
    add b                                         ; $5240: $80
    ld a, a                                       ; $5241: $7f
    add b                                         ; $5242: $80
    ld a, a                                       ; $5243: $7f
    add b                                         ; $5244: $80
    ld a, a                                       ; $5245: $7f
    add b                                         ; $5246: $80
    ld a, a                                       ; $5247: $7f
    add b                                         ; $5248: $80
    ld a, a                                       ; $5249: $7f
    add b                                         ; $524a: $80
    ld a, a                                       ; $524b: $7f
    add b                                         ; $524c: $80
    ld a, a                                       ; $524d: $7f
    add b                                         ; $524e: $80
    ld a, a                                       ; $524f: $7f
    rst RST_38                                    ; $5250: $ff
    nop                                           ; $5251: $00
    rst RST_38                                    ; $5252: $ff
    nop                                           ; $5253: $00
    rst RST_38                                    ; $5254: $ff
    nop                                           ; $5255: $00
    rst RST_38                                    ; $5256: $ff
    nop                                           ; $5257: $00
    rst RST_38                                    ; $5258: $ff
    nop                                           ; $5259: $00
    rst RST_38                                    ; $525a: $ff
    nop                                           ; $525b: $00
    rst RST_38                                    ; $525c: $ff
    nop                                           ; $525d: $00
    rst RST_38                                    ; $525e: $ff
    nop                                           ; $525f: $00
    nop                                           ; $5260: $00
    nop                                           ; $5261: $00
    nop                                           ; $5262: $00
    nop                                           ; $5263: $00
    nop                                           ; $5264: $00
    nop                                           ; $5265: $00
    nop                                           ; $5266: $00
    nop                                           ; $5267: $00
    nop                                           ; $5268: $00
    nop                                           ; $5269: $00
    nop                                           ; $526a: $00
    nop                                           ; $526b: $00
    nop                                           ; $526c: $00
    nop                                           ; $526d: $00
    nop                                           ; $526e: $00
    rst RST_38                                    ; $526f: $ff
    nop                                           ; $5270: $00
    nop                                           ; $5271: $00
    nop                                           ; $5272: $00
    nop                                           ; $5273: $00
    nop                                           ; $5274: $00
    nop                                           ; $5275: $00
    nop                                           ; $5276: $00
    nop                                           ; $5277: $00
    nop                                           ; $5278: $00
    nop                                           ; $5279: $00
    nop                                           ; $527a: $00
    nop                                           ; $527b: $00
    nop                                           ; $527c: $00
    nop                                           ; $527d: $00
    nop                                           ; $527e: $00
    nop                                           ; $527f: $00
    nop                                           ; $5280: $00
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00
    nop                                           ; $5283: $00
    nop                                           ; $5284: $00
    nop                                           ; $5285: $00
    nop                                           ; $5286: $00
    nop                                           ; $5287: $00
    nop                                           ; $5288: $00
    nop                                           ; $5289: $00
    nop                                           ; $528a: $00
    nop                                           ; $528b: $00
    nop                                           ; $528c: $00
    nop                                           ; $528d: $00
    nop                                           ; $528e: $00
    ret nz                                        ; $528f: $c0

    nop                                           ; $5290: $00
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    nop                                           ; $5293: $00
    nop                                           ; $5294: $00
    nop                                           ; $5295: $00
    nop                                           ; $5296: $00
    nop                                           ; $5297: $00
    nop                                           ; $5298: $00
    nop                                           ; $5299: $00
    nop                                           ; $529a: $00
    nop                                           ; $529b: $00
    nop                                           ; $529c: $00
    nop                                           ; $529d: $00
    nop                                           ; $529e: $00
    nop                                           ; $529f: $00
    nop                                           ; $52a0: $00
    nop                                           ; $52a1: $00
    rst RST_38                                    ; $52a2: $ff
    rst RST_38                                    ; $52a3: $ff
    nop                                           ; $52a4: $00
    rst RST_38                                    ; $52a5: $ff
    nop                                           ; $52a6: $00
    rst RST_38                                    ; $52a7: $ff
    nop                                           ; $52a8: $00
    rst RST_38                                    ; $52a9: $ff
    nop                                           ; $52aa: $00
    rst RST_38                                    ; $52ab: $ff
    nop                                           ; $52ac: $00
    rst RST_38                                    ; $52ad: $ff
    nop                                           ; $52ae: $00
    rst RST_38                                    ; $52af: $ff
    rst RST_38                                    ; $52b0: $ff
    nop                                           ; $52b1: $00
    rst RST_38                                    ; $52b2: $ff
    nop                                           ; $52b3: $00
    rst RST_38                                    ; $52b4: $ff
    nop                                           ; $52b5: $00
    rst RST_38                                    ; $52b6: $ff
    nop                                           ; $52b7: $00
    rst RST_38                                    ; $52b8: $ff
    nop                                           ; $52b9: $00
    rst RST_38                                    ; $52ba: $ff
    nop                                           ; $52bb: $00
    rst RST_38                                    ; $52bc: $ff
    nop                                           ; $52bd: $00
    rst RST_38                                    ; $52be: $ff
    nop                                           ; $52bf: $00
    ld b, b                                       ; $52c0: $40
    nop                                           ; $52c1: $00
    ld b, b                                       ; $52c2: $40
    nop                                           ; $52c3: $00
    ld b, b                                       ; $52c4: $40
    nop                                           ; $52c5: $00
    ld b, b                                       ; $52c6: $40
    nop                                           ; $52c7: $00
    ld b, b                                       ; $52c8: $40
    nop                                           ; $52c9: $00
    ld b, b                                       ; $52ca: $40
    nop                                           ; $52cb: $00
    ld b, b                                       ; $52cc: $40
    nop                                           ; $52cd: $00
    ld b, b                                       ; $52ce: $40
    nop                                           ; $52cf: $00
    add b                                         ; $52d0: $80
    nop                                           ; $52d1: $00
    add b                                         ; $52d2: $80
    nop                                           ; $52d3: $00
    add b                                         ; $52d4: $80
    nop                                           ; $52d5: $00
    add b                                         ; $52d6: $80
    nop                                           ; $52d7: $00
    add b                                         ; $52d8: $80
    nop                                           ; $52d9: $00
    add b                                         ; $52da: $80
    nop                                           ; $52db: $00
    add b                                         ; $52dc: $80
    nop                                           ; $52dd: $00
    add b                                         ; $52de: $80
    nop                                           ; $52df: $00
    nop                                           ; $52e0: $00
    rst RST_38                                    ; $52e1: $ff

jr_004_52e2:
    add b                                         ; $52e2: $80
    ld a, a                                       ; $52e3: $7f
    ret nz                                        ; $52e4: $c0

    ccf                                           ; $52e5: $3f
    ret nz                                        ; $52e6: $c0

    ld a, $e1                                     ; $52e7: $3e $e1
    inc e                                         ; $52e9: $1c
    pop af                                        ; $52ea: $f1
    inc e                                         ; $52eb: $1c
    di                                            ; $52ec: $f3
    jr jr_004_52e2                                ; $52ed: $18 $f3

    jr @+$01                                      ; $52ef: $18 $ff

    nop                                           ; $52f1: $00
    rst RST_38                                    ; $52f2: $ff
    nop                                           ; $52f3: $00
    rst RST_38                                    ; $52f4: $ff
    nop                                           ; $52f5: $00
    cp $01                                        ; $52f6: $fe $01
    db $fd                                        ; $52f8: $fd
    ld [bc], a                                    ; $52f9: $02
    db $fd                                        ; $52fa: $fd
    ld [bc], a                                    ; $52fb: $02
    ei                                            ; $52fc: $fb
    inc b                                         ; $52fd: $04
    ei                                            ; $52fe: $fb
    inc b                                         ; $52ff: $04
    nop                                           ; $5300: $00
    ldh [$ff1f], a                                ; $5301: $e0 $1f
    add b                                         ; $5303: $80
    ld a, a                                       ; $5304: $7f
    nop                                           ; $5305: $00
    rst RST_38                                    ; $5306: $ff
    nop                                           ; $5307: $00
    rst RST_38                                    ; $5308: $ff
    nop                                           ; $5309: $00
    rst RST_30                                    ; $530a: $f7
    rrca                                          ; $530b: $0f
    ld hl, sp+$1f                                 ; $530c: $f8 $1f
    ret nc                                        ; $530e: $d0

    ccf                                           ; $530f: $3f
    ldh [$ff1f], a                                ; $5310: $e0 $1f
    sbc a                                         ; $5312: $9f
    ld h, b                                       ; $5313: $60
    ld a, a                                       ; $5314: $7f
    add b                                         ; $5315: $80
    rst RST_38                                    ; $5316: $ff
    nop                                           ; $5317: $00
    rst RST_38                                    ; $5318: $ff
    nop                                           ; $5319: $00
    rst RST_30                                    ; $531a: $f7
    ld [$00ff], sp                                ; $531b: $08 $ff $00
    rst RST_18                                    ; $531e: $df
    jr nz, @+$42                                  ; $531f: $20 $40

    ccf                                           ; $5321: $3f
    ldh a, [rIF]                                  ; $5322: $f0 $0f
    ld hl, sp+$07                                 ; $5324: $f8 $07
    db $fc                                        ; $5326: $fc
    inc bc                                        ; $5327: $03
    cp $01                                        ; $5328: $fe $01
    cp $81                                        ; $532a: $fe $81
    ld a, a                                       ; $532c: $7f
    ret nz                                        ; $532d: $c0

    cpl                                           ; $532e: $2f
    ldh [$ff7f], a                                ; $532f: $e0 $7f
    add b                                         ; $5331: $80
    rst RST_38                                    ; $5332: $ff
    nop                                           ; $5333: $00
    rst RST_38                                    ; $5334: $ff
    nop                                           ; $5335: $00

jr_004_5336:
    rst RST_38                                    ; $5336: $ff
    nop                                           ; $5337: $00
    rst RST_38                                    ; $5338: $ff
    nop                                           ; $5339: $00
    rst RST_38                                    ; $533a: $ff
    nop                                           ; $533b: $00
    rst RST_38                                    ; $533c: $ff
    nop                                           ; $533d: $00
    rst RST_28                                    ; $533e: $ef
    db $10                                        ; $533f: $10
    inc b                                         ; $5340: $04
    ld hl, sp+$03                                 ; $5341: $f8 $03
    ldh a, [rIF]                                  ; $5343: $f0 $0f
    ldh [$ff2f], a                                ; $5345: $e0 $2f
    ret nz                                        ; $5347: $c0

    rra                                           ; $5348: $1f
    pop bc                                        ; $5349: $c1
    dec e                                         ; $534a: $1d
    jp $c11e                                      ; $534b: $c3 $1e $c1


    cp a                                          ; $534e: $bf
    ret nz                                        ; $534f: $c0

    ld hl, sp+$07                                 ; $5350: $f8 $07
    di                                            ; $5352: $f3
    inc c                                         ; $5353: $0c

jr_004_5354:
    rst RST_28                                    ; $5354: $ef
    db $10                                        ; $5355: $10
    rst RST_08                                    ; $5356: $cf
    jr nc, jr_004_5336                            ; $5357: $30 $dd

    ld [hl+], a                                   ; $5359: $22
    db $dd                                        ; $535a: $dd

jr_004_535b:
    ld [hl+], a                                   ; $535b: $22
    rst RST_18                                    ; $535c: $df
    jr nz, @+$01                                  ; $535d: $20 $ff

    nop                                           ; $535f: $00
    jr nz, jr_004_5381                            ; $5360: $20 $1f

    ld hl, sp+$07                                 ; $5362: $f8 $07
    db $fc                                        ; $5364: $fc
    inc bc                                        ; $5365: $03
    cp $03                                        ; $5366: $fe $03
    db $fc                                        ; $5368: $fc
    rst RST_00                                    ; $5369: $c7
    jr c, jr_004_535b                             ; $536a: $38 $ef

    db $10                                        ; $536c: $10
    rst RST_38                                    ; $536d: $ff
    add b                                         ; $536e: $80
    ld a, a                                       ; $536f: $7f
    ccf                                           ; $5370: $3f
    ret nz                                        ; $5371: $c0

    rst RST_38                                    ; $5372: $ff
    nop                                           ; $5373: $00
    rst RST_38                                    ; $5374: $ff
    nop                                           ; $5375: $00
    ei                                            ; $5376: $fb
    inc b                                         ; $5377: $04
    rst RST_30                                    ; $5378: $f7
    ld [$10ef], sp                                ; $5379: $08 $ef $10
    rst RST_38                                    ; $537c: $ff
    nop                                           ; $537d: $00
    rst RST_38                                    ; $537e: $ff
    nop                                           ; $537f: $00
    db $10                                        ; $5380: $10

jr_004_5381:
    ldh [rIF], a                                  ; $5381: $e0 $0f
    ret nz                                        ; $5383: $c0

    ccf                                           ; $5384: $3f
    add b                                         ; $5385: $80
    cp a                                          ; $5386: $bf
    nop                                           ; $5387: $00
    ld a, a                                       ; $5388: $7f
    rlca                                          ; $5389: $07
    ld [hl], h                                    ; $538a: $74
    rrca                                          ; $538b: $0f
    ld a, b                                       ; $538c: $78
    rlca                                          ; $538d: $07
    cp $01                                        ; $538e: $fe $01
    ldh [$ff1f], a                                ; $5390: $e0 $1f
    rst RST_08                                    ; $5392: $cf
    jr nc, jr_004_5354                            ; $5393: $30 $bf

    ld b, b                                       ; $5395: $40
    ccf                                           ; $5396: $3f
    ret nz                                        ; $5397: $c0

    ld [hl], a                                    ; $5398: $77
    adc b                                         ; $5399: $88
    ld [hl], a                                    ; $539a: $77
    adc b                                         ; $539b: $88
    ld a, a                                       ; $539c: $7f
    add b                                         ; $539d: $80
    rst RST_38                                    ; $539e: $ff
    nop                                           ; $539f: $00
    add b                                         ; $53a0: $80
    ld a, a                                       ; $53a1: $7f
    ldh [$ff1f], a                                ; $53a2: $e0 $1f
    ldh a, [rIF]                                  ; $53a4: $f0 $0f

jr_004_53a6:
    ld hl, sp+$0f                                 ; $53a6: $f8 $0f

jr_004_53a8:
    ldh a, [$ff1f]                                ; $53a8: $f0 $1f
    ldh [$ffbf], a                                ; $53aa: $e0 $bf
    ld b, b                                       ; $53ac: $40
    rst RST_38                                    ; $53ad: $ff
    nop                                           ; $53ae: $00
    rst RST_38                                    ; $53af: $ff
    rst RST_38                                    ; $53b0: $ff
    nop                                           ; $53b1: $00
    rst RST_38                                    ; $53b2: $ff
    nop                                           ; $53b3: $00
    rst RST_38                                    ; $53b4: $ff
    nop                                           ; $53b5: $00
    rst RST_28                                    ; $53b6: $ef
    db $10                                        ; $53b7: $10
    rst RST_18                                    ; $53b8: $df
    jr nz, @-$3f                                  ; $53b9: $20 $bf

    ld b, b                                       ; $53bb: $40
    rst RST_38                                    ; $53bc: $ff
    nop                                           ; $53bd: $00
    rst RST_38                                    ; $53be: $ff
    nop                                           ; $53bf: $00
    db $d3                                        ; $53c0: $d3
    jr c, jr_004_53a6                             ; $53c1: $38 $e3

    jr c, jr_004_53a8                             ; $53c3: $38 $e3

    ld a, b                                       ; $53c5: $78
    rst RST_00                                    ; $53c6: $c7
    ld hl, sp-$79                                 ; $53c7: $f8 $87
    ld hl, sp-$39                                 ; $53c9: $f8 $c7
    ld a, h                                       ; $53cb: $7c
    jp $e37c                                      ; $53cc: $c3 $7c $e3


    ld a, $db                                     ; $53cf: $3e $db
    inc h                                         ; $53d1: $24
    ei                                            ; $53d2: $fb
    inc b                                         ; $53d3: $04
    ei                                            ; $53d4: $fb
    inc b                                         ; $53d5: $04
    rst RST_38                                    ; $53d6: $ff
    nop                                           ; $53d7: $00
    ei                                            ; $53d8: $fb
    inc b                                         ; $53d9: $04
    ld a, a                                       ; $53da: $7f
    add b                                         ; $53db: $80
    db $fd                                        ; $53dc: $fd
    ld [bc], a                                    ; $53dd: $02
    rst RST_38                                    ; $53de: $ff
    nop                                           ; $53df: $00
    rrca                                          ; $53e0: $0f
    ldh [rIF], a                                  ; $53e1: $e0 $0f
    ldh [rIF], a                                  ; $53e3: $e0 $0f
    ldh [rIF], a                                  ; $53e5: $e0 $0f
    ldh [$ff1f], a                                ; $53e7: $e0 $1f
    ret nz                                        ; $53e9: $c0

    ccf                                           ; $53ea: $3f
    add c                                         ; $53eb: $81
    ld a, a                                       ; $53ec: $7f
    ld bc, $03ff                                  ; $53ed: $01 $ff $03
    rst RST_28                                    ; $53f0: $ef
    db $10                                        ; $53f1: $10
    rst RST_28                                    ; $53f2: $ef
    db $10                                        ; $53f3: $10
    rst RST_28                                    ; $53f4: $ef
    db $10                                        ; $53f5: $10
    rst RST_28                                    ; $53f6: $ef
    db $10                                        ; $53f7: $10
    sbc $21                                       ; $53f8: $de $21
    cp a                                          ; $53fa: $bf
    ld b, b                                       ; $53fb: $40
    ld a, l                                       ; $53fc: $7d
    add d                                         ; $53fd: $82
    rst RST_38                                    ; $53fe: $ff
    nop                                           ; $53ff: $00
    cp a                                          ; $5400: $bf
    ldh [$ff9f], a                                ; $5401: $e0 $9f
    ldh a, [$ff8f]                                ; $5403: $f0 $8f
    db $fc                                        ; $5405: $fc
    add e                                         ; $5406: $83
    rst RST_38                                    ; $5407: $ff
    add b                                         ; $5408: $80
    rst RST_38                                    ; $5409: $ff
    add b                                         ; $540a: $80
    rst RST_28                                    ; $540b: $ef
    db $10                                        ; $540c: $10
    jp $803c                                      ; $540d: $c3 $3c $80


    rst RST_38                                    ; $5410: $ff
    nop                                           ; $5411: $00
    rst RST_38                                    ; $5412: $ff
    nop                                           ; $5413: $00
    rst RST_38                                    ; $5414: $ff
    nop                                           ; $5415: $00
    rst RST_38                                    ; $5416: $ff
    nop                                           ; $5417: $00
    rst RST_38                                    ; $5418: $ff
    nop                                           ; $5419: $00
    rst RST_28                                    ; $541a: $ef
    db $10                                        ; $541b: $10
    di                                            ; $541c: $f3
    inc c                                         ; $541d: $0c
    cp h                                          ; $541e: $bc
    ld b, e                                       ; $541f: $43
    ldh [$ff1f], a                                ; $5420: $e0 $1f
    ldh a, [rIF]                                  ; $5422: $f0 $0f
    ld hl, sp+$07                                 ; $5424: $f8 $07
    db $fc                                        ; $5426: $fc
    inc bc                                        ; $5427: $03
    cp $83                                        ; $5428: $fe $83
    ld a, [hl]                                    ; $542a: $7e
    add e                                         ; $542b: $83
    ld a, [hl]                                    ; $542c: $7e
    inc bc                                        ; $542d: $03
    cp $02                                        ; $542e: $fe $02
    rst RST_38                                    ; $5430: $ff
    nop                                           ; $5431: $00
    rst RST_38                                    ; $5432: $ff
    nop                                           ; $5433: $00
    rst RST_38                                    ; $5434: $ff
    nop                                           ; $5435: $00
    ei                                            ; $5436: $fb
    inc b                                         ; $5437: $04
    rst RST_38                                    ; $5438: $ff
    nop                                           ; $5439: $00
    rst RST_38                                    ; $543a: $ff
    nop                                           ; $543b: $00
    ld a, a                                       ; $543c: $7f
    add b                                         ; $543d: $80
    ld a, [rTIMA]                                 ; $543e: $fa $05 $ff
    add b                                         ; $5441: $80
    ld a, a                                       ; $5442: $7f
    ret nz                                        ; $5443: $c0

    ccf                                           ; $5444: $3f
    ldh a, [rIF]                                  ; $5445: $f0 $0f
    db $fc                                        ; $5447: $fc
    inc bc                                        ; $5448: $03
    cp $01                                        ; $5449: $fe $01
    cp [hl]                                       ; $544b: $be
    ld b, c                                       ; $544c: $41
    inc c                                         ; $544d: $0c
    di                                            ; $544e: $f3
    nop                                           ; $544f: $00
    rst RST_38                                    ; $5450: $ff
    nop                                           ; $5451: $00
    rst RST_38                                    ; $5452: $ff
    nop                                           ; $5453: $00
    rst RST_38                                    ; $5454: $ff
    nop                                           ; $5455: $00
    rst RST_38                                    ; $5456: $ff
    nop                                           ; $5457: $00
    rst RST_38                                    ; $5458: $ff
    nop                                           ; $5459: $00
    cp a                                          ; $545a: $bf
    ld b, b                                       ; $545b: $40
    ld c, l                                       ; $545c: $4d
    or d                                          ; $545d: $b2
    di                                            ; $545e: $f3
    inc c                                         ; $545f: $0c
    add b                                         ; $5460: $80
    ld a, a                                       ; $5461: $7f
    ret nz                                        ; $5462: $c0

    ccf                                           ; $5463: $3f
    ldh [$ff1f], a                                ; $5464: $e0 $1f
    ldh a, [rIF]                                  ; $5466: $f0 $0f
    ld hl, sp+$0f                                 ; $5468: $f8 $0f
    ld hl, sp+$0f                                 ; $546a: $f8 $0f
    ld hl, sp+$0f                                 ; $546c: $f8 $0f
    ld hl, sp+$0f                                 ; $546e: $f8 $0f
    rst RST_38                                    ; $5470: $ff
    nop                                           ; $5471: $00
    rst RST_38                                    ; $5472: $ff
    nop                                           ; $5473: $00
    rst RST_38                                    ; $5474: $ff
    nop                                           ; $5475: $00
    rst RST_28                                    ; $5476: $ef
    db $10                                        ; $5477: $10
    rst RST_38                                    ; $5478: $ff
    nop                                           ; $5479: $00
    rst RST_38                                    ; $547a: $ff
    nop                                           ; $547b: $00
    rst RST_38                                    ; $547c: $ff
    nop                                           ; $547d: $00
    rst RST_28                                    ; $547e: $ef
    db $10                                        ; $547f: $10
    pop af                                        ; $5480: $f1
    rra                                           ; $5481: $1f
    ldh a, [$ff1f]                                ; $5482: $f0 $1f
    ld hl, sp+$0f                                 ; $5484: $f8 $0f
    ld hl, sp-$01                                 ; $5486: $f8 $ff
    nop                                           ; $5488: $00
    rst RST_38                                    ; $5489: $ff
    nop                                           ; $548a: $00
    rst RST_38                                    ; $548b: $ff
    nop                                           ; $548c: $00
    rst RST_38                                    ; $548d: $ff
    nop                                           ; $548e: $00
    nop                                           ; $548f: $00
    rst RST_18                                    ; $5490: $df
    jr nz, @+$01                                  ; $5491: $20 $ff

    nop                                           ; $5493: $00
    rst RST_38                                    ; $5494: $ff
    nop                                           ; $5495: $00
    rst RST_38                                    ; $5496: $ff
    nop                                           ; $5497: $00
    rst RST_38                                    ; $5498: $ff
    nop                                           ; $5499: $00
    rst RST_38                                    ; $549a: $ff
    nop                                           ; $549b: $00
    rst RST_38                                    ; $549c: $ff
    nop                                           ; $549d: $00
    rst RST_38                                    ; $549e: $ff
    nop                                           ; $549f: $00
    rst RST_38                                    ; $54a0: $ff
    nop                                           ; $54a1: $00
    rst RST_38                                    ; $54a2: $ff
    add b                                         ; $54a3: $80
    ld a, a                                       ; $54a4: $7f
    ldh [$ff1f], a                                ; $54a5: $e0 $1f
    rst RST_38                                    ; $54a7: $ff
    nop                                           ; $54a8: $00
    rst RST_38                                    ; $54a9: $ff
    nop                                           ; $54aa: $00
    rst RST_38                                    ; $54ab: $ff
    nop                                           ; $54ac: $00
    rst RST_38                                    ; $54ad: $ff
    nop                                           ; $54ae: $00
    nop                                           ; $54af: $00
    rst RST_38                                    ; $54b0: $ff
    nop                                           ; $54b1: $00
    cp a                                          ; $54b2: $bf
    ld b, b                                       ; $54b3: $40
    rst RST_28                                    ; $54b4: $ef
    db $10                                        ; $54b5: $10
    rst RST_38                                    ; $54b6: $ff
    nop                                           ; $54b7: $00
    rst RST_38                                    ; $54b8: $ff
    nop                                           ; $54b9: $00
    rst RST_38                                    ; $54ba: $ff
    nop                                           ; $54bb: $00
    rst RST_38                                    ; $54bc: $ff
    nop                                           ; $54bd: $00
    rst RST_38                                    ; $54be: $ff
    nop                                           ; $54bf: $00
    cp $07                                        ; $54c0: $fe $07
    db $fc                                        ; $54c2: $fc
    rrca                                          ; $54c3: $0f
    ld hl, sp+$3f                                 ; $54c4: $f8 $3f
    ldh [rIE], a                                  ; $54c6: $e0 $ff
    nop                                           ; $54c8: $00
    rst RST_38                                    ; $54c9: $ff
    nop                                           ; $54ca: $00
    rst RST_38                                    ; $54cb: $ff
    nop                                           ; $54cc: $00
    rst RST_38                                    ; $54cd: $ff
    nop                                           ; $54ce: $00
    nop                                           ; $54cf: $00
    rst RST_38                                    ; $54d0: $ff
    nop                                           ; $54d1: $00
    rst RST_28                                    ; $54d2: $ef
    db $10                                        ; $54d3: $10
    cp a                                          ; $54d4: $bf
    ld b, b                                       ; $54d5: $40
    rst RST_38                                    ; $54d6: $ff
    nop                                           ; $54d7: $00
    rst RST_38                                    ; $54d8: $ff
    nop                                           ; $54d9: $00
    rst RST_38                                    ; $54da: $ff
    nop                                           ; $54db: $00
    rst RST_38                                    ; $54dc: $ff
    nop                                           ; $54dd: $00
    rst RST_38                                    ; $54de: $ff
    nop                                           ; $54df: $00
    ccf                                           ; $54e0: $3f
    add b                                         ; $54e1: $80
    ld a, a                                       ; $54e2: $7f
    ret nz                                        ; $54e3: $c0

    ccf                                           ; $54e4: $3f
    ldh a, [rIF]                                  ; $54e5: $f0 $0f
    rst RST_38                                    ; $54e7: $ff
    nop                                           ; $54e8: $00
    rst RST_38                                    ; $54e9: $ff
    nop                                           ; $54ea: $00
    rst RST_38                                    ; $54eb: $ff
    nop                                           ; $54ec: $00
    rst RST_38                                    ; $54ed: $ff
    nop                                           ; $54ee: $00
    nop                                           ; $54ef: $00
    cp a                                          ; $54f0: $bf
    ld b, b                                       ; $54f1: $40
    rst RST_38                                    ; $54f2: $ff
    nop                                           ; $54f3: $00
    rst RST_38                                    ; $54f4: $ff
    nop                                           ; $54f5: $00
    rst RST_38                                    ; $54f6: $ff
    nop                                           ; $54f7: $00
    rst RST_38                                    ; $54f8: $ff
    nop                                           ; $54f9: $00
    rst RST_38                                    ; $54fa: $ff
    nop                                           ; $54fb: $00
    rst RST_38                                    ; $54fc: $ff
    nop                                           ; $54fd: $00
    rst RST_38                                    ; $54fe: $ff
    nop                                           ; $54ff: $00
    db $fc                                        ; $5500: $fc
    ld b, $fd                                     ; $5501: $06 $fd
    rrca                                          ; $5503: $0f
    ld hl, sp+$1f                                 ; $5504: $f8 $1f
    ldh [rIE], a                                  ; $5506: $e0 $ff
    nop                                           ; $5508: $00
    rst RST_38                                    ; $5509: $ff
    nop                                           ; $550a: $00
    rst RST_38                                    ; $550b: $ff
    nop                                           ; $550c: $00
    rst RST_38                                    ; $550d: $ff
    nop                                           ; $550e: $00
    nop                                           ; $550f: $00
    cp $01                                        ; $5510: $fe $01
    rst RST_38                                    ; $5512: $ff
    nop                                           ; $5513: $00
    rst RST_18                                    ; $5514: $df
    jr nz, @+$01                                  ; $5515: $20 $ff

    nop                                           ; $5517: $00
    rst RST_38                                    ; $5518: $ff
    nop                                           ; $5519: $00
    rst RST_38                                    ; $551a: $ff
    nop                                           ; $551b: $00
    rst RST_38                                    ; $551c: $ff
    nop                                           ; $551d: $00
    rst RST_38                                    ; $551e: $ff
    nop                                           ; $551f: $00
    rst RST_38                                    ; $5520: $ff
    nop                                           ; $5521: $00
    rst RST_38                                    ; $5522: $ff
    nop                                           ; $5523: $00
    rst RST_38                                    ; $5524: $ff
    ret nz                                        ; $5525: $c0

    ccf                                           ; $5526: $3f
    rst RST_38                                    ; $5527: $ff
    nop                                           ; $5528: $00
    rst RST_38                                    ; $5529: $ff
    nop                                           ; $552a: $00
    rst RST_38                                    ; $552b: $ff
    nop                                           ; $552c: $00
    rst RST_38                                    ; $552d: $ff
    nop                                           ; $552e: $00
    nop                                           ; $552f: $00
    rst RST_38                                    ; $5530: $ff
    nop                                           ; $5531: $00
    rst RST_38                                    ; $5532: $ff
    nop                                           ; $5533: $00
    rst RST_38                                    ; $5534: $ff
    nop                                           ; $5535: $00
    rst RST_38                                    ; $5536: $ff
    nop                                           ; $5537: $00
    rst RST_38                                    ; $5538: $ff
    nop                                           ; $5539: $00
    rst RST_38                                    ; $553a: $ff
    nop                                           ; $553b: $00
    rst RST_38                                    ; $553c: $ff
    nop                                           ; $553d: $00
    rst RST_38                                    ; $553e: $ff
    nop                                           ; $553f: $00
    ldh a, [$ff1f]                                ; $5540: $f0 $1f
    ldh a, [$ff3f]                                ; $5542: $f0 $3f
    ldh [$ff7f], a                                ; $5544: $e0 $7f
    add b                                         ; $5546: $80
    rst RST_38                                    ; $5547: $ff
    nop                                           ; $5548: $00
    rst RST_38                                    ; $5549: $ff
    nop                                           ; $554a: $00
    rst RST_38                                    ; $554b: $ff
    nop                                           ; $554c: $00
    rst RST_38                                    ; $554d: $ff
    nop                                           ; $554e: $00
    nop                                           ; $554f: $00
    rst RST_38                                    ; $5550: $ff
    nop                                           ; $5551: $00
    rst RST_38                                    ; $5552: $ff
    nop                                           ; $5553: $00
    ld a, a                                       ; $5554: $7f
    add b                                         ; $5555: $80
    rst RST_38                                    ; $5556: $ff
    nop                                           ; $5557: $00
    rst RST_38                                    ; $5558: $ff
    nop                                           ; $5559: $00
    rst RST_38                                    ; $555a: $ff
    nop                                           ; $555b: $00
    rst RST_38                                    ; $555c: $ff
    nop                                           ; $555d: $00
    rst RST_38                                    ; $555e: $ff
    nop                                           ; $555f: $00
    ret nz                                        ; $5560: $c0

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

jr_004_5577:
    nop                                           ; $5577: $00
    nop                                           ; $5578: $00
    nop                                           ; $5579: $00
    nop                                           ; $557a: $00
    nop                                           ; $557b: $00
    nop                                           ; $557c: $00
    nop                                           ; $557d: $00
    nop                                           ; $557e: $00
    nop                                           ; $557f: $00
    rlca                                          ; $5580: $07
    ld hl, sp+$06                                 ; $5581: $f8 $06
    ld sp, hl                                     ; $5583: $f9
    ld b, $f9                                     ; $5584: $06 $f9
    ld c, $f1                                     ; $5586: $0e $f1
    inc c                                         ; $5588: $0c
    di                                            ; $5589: $f3
    inc c                                         ; $558a: $0c
    di                                            ; $558b: $f3
    inc e                                         ; $558c: $1c
    db $e3                                        ; $558d: $e3
    jr jr_004_5577                                ; $558e: $18 $e7

    db $fd                                        ; $5590: $fd
    nop                                           ; $5591: $00
    db $fc                                        ; $5592: $fc
    ld bc, $01fc                                  ; $5593: $01 $fc $01
    ld a, [$f801]                                 ; $5596: $fa $01 $f8
    inc bc                                        ; $5599: $03
    ld hl, sp+$03                                 ; $559a: $f8 $03
    db $f4                                        ; $559c: $f4
    inc bc                                        ; $559d: $03
    ldh a, [rTAC]                                 ; $559e: $f0 $07
    rst RST_38                                    ; $55a0: $ff
    nop                                           ; $55a1: $00
    nop                                           ; $55a2: $00
    rst RST_38                                    ; $55a3: $ff
    nop                                           ; $55a4: $00
    rst RST_38                                    ; $55a5: $ff
    nop                                           ; $55a6: $00
    rst RST_38                                    ; $55a7: $ff
    nop                                           ; $55a8: $00
    rst RST_38                                    ; $55a9: $ff
    nop                                           ; $55aa: $00
    rst RST_38                                    ; $55ab: $ff
    nop                                           ; $55ac: $00
    rst RST_38                                    ; $55ad: $ff
    nop                                           ; $55ae: $00
    and $ff                                       ; $55af: $e6 $ff
    nop                                           ; $55b1: $00
    rst RST_38                                    ; $55b2: $ff
    nop                                           ; $55b3: $00
    rst RST_38                                    ; $55b4: $ff
    nop                                           ; $55b5: $00
    rst RST_38                                    ; $55b6: $ff
    nop                                           ; $55b7: $00
    rst RST_38                                    ; $55b8: $ff
    nop                                           ; $55b9: $00
    rst RST_38                                    ; $55ba: $ff
    inc c                                         ; $55bb: $0c
    rst RST_38                                    ; $55bc: $ff
    ld a, $ff                                     ; $55bd: $3e $ff
    and $ff                                       ; $55bf: $e6 $ff
    nop                                           ; $55c1: $00
    nop                                           ; $55c2: $00
    rst RST_38                                    ; $55c3: $ff
    nop                                           ; $55c4: $00
    rst RST_38                                    ; $55c5: $ff
    nop                                           ; $55c6: $00
    rst RST_38                                    ; $55c7: $ff
    nop                                           ; $55c8: $00
    rst RST_38                                    ; $55c9: $ff
    nop                                           ; $55ca: $00
    rst RST_38                                    ; $55cb: $ff
    nop                                           ; $55cc: $00
    ld hl, sp+$00                                 ; $55cd: $f8 $00
    rst RST_20                                    ; $55cf: $e7
    rst RST_38                                    ; $55d0: $ff
    nop                                           ; $55d1: $00
    rst RST_38                                    ; $55d2: $ff
    nop                                           ; $55d3: $00
    rst RST_38                                    ; $55d4: $ff
    nop                                           ; $55d5: $00
    rst RST_38                                    ; $55d6: $ff
    nop                                           ; $55d7: $00
    rst RST_38                                    ; $55d8: $ff
    inc bc                                        ; $55d9: $03
    rst RST_38                                    ; $55da: $ff
    rrca                                          ; $55db: $0f
    rst RST_38                                    ; $55dc: $ff
    jr c, @+$01                                   ; $55dd: $38 $ff

    ld h, c                                       ; $55df: $61
    rst RST_38                                    ; $55e0: $ff
    nop                                           ; $55e1: $00
    nop                                           ; $55e2: $00
    rst RST_38                                    ; $55e3: $ff
    nop                                           ; $55e4: $00
    rst RST_38                                    ; $55e5: $ff
    nop                                           ; $55e6: $00
    rst RST_38                                    ; $55e7: $ff
    nop                                           ; $55e8: $00
    rst RST_38                                    ; $55e9: $ff
    nop                                           ; $55ea: $00
    cp $00                                        ; $55eb: $fe $00
    db $fd                                        ; $55ed: $fd
    nop                                           ; $55ee: $00
    cp e                                          ; $55ef: $bb
    rst RST_38                                    ; $55f0: $ff
    nop                                           ; $55f1: $00
    rst RST_38                                    ; $55f2: $ff
    inc bc                                        ; $55f3: $03
    rst RST_38                                    ; $55f4: $ff
    inc bc                                        ; $55f5: $03
    rst RST_38                                    ; $55f6: $ff
    inc bc                                        ; $55f7: $03
    rst RST_38                                    ; $55f8: $ff
    add e                                         ; $55f9: $83
    rst RST_38                                    ; $55fa: $ff
    add $ff                                       ; $55fb: $c6 $ff
    call z, $98ff                                 ; $55fd: $cc $ff $98
    rst RST_38                                    ; $5600: $ff
    nop                                           ; $5601: $00
    nop                                           ; $5602: $00
    rst RST_38                                    ; $5603: $ff
    nop                                           ; $5604: $00
    cp a                                          ; $5605: $bf
    nop                                           ; $5606: $00
    cp a                                          ; $5607: $bf
    nop                                           ; $5608: $00

jr_004_5609:
    cp a                                          ; $5609: $bf
    nop                                           ; $560a: $00
    rst RST_38                                    ; $560b: $ff
    nop                                           ; $560c: $00
    rst RST_38                                    ; $560d: $ff
    nop                                           ; $560e: $00
    rst RST_28                                    ; $560f: $ef
    rst RST_38                                    ; $5610: $ff
    nop                                           ; $5611: $00
    rst RST_38                                    ; $5612: $ff

jr_004_5613:
    nop                                           ; $5613: $00
    rst RST_38                                    ; $5614: $ff
    add b                                         ; $5615: $80
    rst RST_38                                    ; $5616: $ff
    add b                                         ; $5617: $80
    rst RST_38                                    ; $5618: $ff
    add b                                         ; $5619: $80
    rst RST_38                                    ; $561a: $ff
    ret nz                                        ; $561b: $c0

    rst RST_38                                    ; $561c: $ff
    ld h, b                                       ; $561d: $60
    rst RST_38                                    ; $561e: $ff
    jr nz, jr_004_5621                            ; $561f: $20 $00

jr_004_5621:
    rst RST_38                                    ; $5621: $ff
    nop                                           ; $5622: $00
    rst RST_38                                    ; $5623: $ff
    nop                                           ; $5624: $00
    rst RST_38                                    ; $5625: $ff
    nop                                           ; $5626: $00
    rst RST_38                                    ; $5627: $ff
    nop                                           ; $5628: $00
    rst RST_38                                    ; $5629: $ff
    ld bc, $03fe                                  ; $562a: $01 $fe $03
    db $fc                                        ; $562d: $fc
    rlca                                          ; $562e: $07
    ld hl, sp-$01                                 ; $562f: $f8 $ff
    nop                                           ; $5631: $00
    rst RST_38                                    ; $5632: $ff
    nop                                           ; $5633: $00
    rst RST_38                                    ; $5634: $ff
    nop                                           ; $5635: $00
    rst RST_38                                    ; $5636: $ff
    nop                                           ; $5637: $00
    rst RST_38                                    ; $5638: $ff
    nop                                           ; $5639: $00
    rst RST_38                                    ; $563a: $ff
    nop                                           ; $563b: $00
    cp $00                                        ; $563c: $fe $00
    db $fd                                        ; $563e: $fd
    nop                                           ; $563f: $00
    jr c, jr_004_5609                             ; $5640: $38 $c7

    jr nc, jr_004_5613                            ; $5642: $30 $cf

    ld [hl], b                                    ; $5644: $70
    adc a                                         ; $5645: $8f
    ld h, b                                       ; $5646: $60
    sbc a                                         ; $5647: $9f
    ret nz                                        ; $5648: $c0

    ccf                                           ; $5649: $3f
    ret nz                                        ; $564a: $c0

    ccf                                           ; $564b: $3f
    add b                                         ; $564c: $80
    ld a, a                                       ; $564d: $7f
    nop                                           ; $564e: $00
    rst RST_38                                    ; $564f: $ff
    add sp, $07                                   ; $5650: $e8 $07
    ldh [rIF], a                                  ; $5652: $e0 $0f
    ret nc                                        ; $5654: $d0

    rrca                                          ; $5655: $0f
    ret nz                                        ; $5656: $c0

    rra                                           ; $5657: $1f
    add b                                         ; $5658: $80
    ccf                                           ; $5659: $3f
    ld b, b                                       ; $565a: $40
    ccf                                           ; $565b: $3f
    add b                                         ; $565c: $80
    ld a, a                                       ; $565d: $7f
    nop                                           ; $565e: $00
    rst RST_38                                    ; $565f: $ff
    nop                                           ; $5660: $00
    sbc [hl]                                      ; $5661: $9e
    nop                                           ; $5662: $00
    ld a, l                                       ; $5663: $7d
    nop                                           ; $5664: $00
    ei                                            ; $5665: $fb
    nop                                           ; $5666: $00
    rst RST_20                                    ; $5667: $e7
    nop                                           ; $5668: $00
    sbc a                                         ; $5669: $9f
    nop                                           ; $566a: $00
    ld a, a                                       ; $566b: $7f
    cp $00                                        ; $566c: $fe $00
    rst RST_38                                    ; $566e: $ff
    nop                                           ; $566f: $00
    rst RST_38                                    ; $5670: $ff
    add [hl]                                      ; $5671: $86
    rst RST_38                                    ; $5672: $ff
    dec c                                         ; $5673: $0d
    rst RST_38                                    ; $5674: $ff
    add hl, sp                                    ; $5675: $39
    rst RST_38                                    ; $5676: $ff
    db $e3                                        ; $5677: $e3
    rst RST_38                                    ; $5678: $ff
    add e                                         ; $5679: $83
    rst RST_38                                    ; $567a: $ff
    ld bc, $00ff                                  ; $567b: $01 $ff $00
    nop                                           ; $567e: $00
    nop                                           ; $567f: $00
    nop                                           ; $5680: $00
    rst RST_18                                    ; $5681: $df
    nop                                           ; $5682: $00
    db $fc                                        ; $5683: $fc
    nop                                           ; $5684: $00
    ld [hl], e                                    ; $5685: $73
    nop                                           ; $5686: $00
    rrca                                          ; $5687: $0f
    nop                                           ; $5688: $00
    ld a, h                                       ; $5689: $7c
    nop                                           ; $568a: $00
    di                                            ; $568b: $f3
    rrca                                          ; $568c: $0f
    nop                                           ; $568d: $00
    rst RST_38                                    ; $568e: $ff
    nop                                           ; $568f: $00
    rst RST_38                                    ; $5690: $ff
    rst RST_00                                    ; $5691: $c7
    rst RST_38                                    ; $5692: $ff
    db $fc                                        ; $5693: $fc
    rst RST_38                                    ; $5694: $ff
    ld [hl], c                                    ; $5695: $71
    rst RST_38                                    ; $5696: $ff
    rlca                                          ; $5697: $07
    rst RST_38                                    ; $5698: $ff
    inc e                                         ; $5699: $1c
    rst RST_38                                    ; $569a: $ff
    ldh a, [rIE]                                  ; $569b: $f0 $ff
    nop                                           ; $569d: $00
    nop                                           ; $569e: $00
    nop                                           ; $569f: $00
    nop                                           ; $56a0: $00
    ld [hl], a                                    ; $56a1: $77
    nop                                           ; $56a2: $00
    rst RST_28                                    ; $56a3: $ef
    nop                                           ; $56a4: $00
    rst RST_18                                    ; $56a5: $df
    nop                                           ; $56a6: $00
    ccf                                           ; $56a7: $3f
    nop                                           ; $56a8: $00
    rst RST_38                                    ; $56a9: $ff
    nop                                           ; $56aa: $00
    rst RST_38                                    ; $56ab: $ff
    rst RST_38                                    ; $56ac: $ff
    nop                                           ; $56ad: $00
    rst RST_38                                    ; $56ae: $ff
    nop                                           ; $56af: $00
    rst RST_38                                    ; $56b0: $ff
    jr nc, @+$01                                  ; $56b1: $30 $ff

    ld h, b                                       ; $56b3: $60
    rst RST_38                                    ; $56b4: $ff
    ret nz                                        ; $56b5: $c0

    rst RST_38                                    ; $56b6: $ff
    nop                                           ; $56b7: $00
    rst RST_38                                    ; $56b8: $ff
    nop                                           ; $56b9: $00
    rst RST_38                                    ; $56ba: $ff
    nop                                           ; $56bb: $00
    rst RST_38                                    ; $56bc: $ff
    nop                                           ; $56bd: $00
    nop                                           ; $56be: $00
    nop                                           ; $56bf: $00
    nop                                           ; $56c0: $00
    rst RST_28                                    ; $56c1: $ef
    nop                                           ; $56c2: $00
    rst RST_18                                    ; $56c3: $df
    nop                                           ; $56c4: $00
    rst RST_18                                    ; $56c5: $df
    nop                                           ; $56c6: $00
    rst RST_38                                    ; $56c7: $ff
    nop                                           ; $56c8: $00
    db $fc                                        ; $56c9: $fc
    nop                                           ; $56ca: $00
    add e                                         ; $56cb: $83
    rst RST_38                                    ; $56cc: $ff
    nop                                           ; $56cd: $00
    rst RST_38                                    ; $56ce: $ff
    nop                                           ; $56cf: $00
    rst RST_38                                    ; $56d0: $ff
    ld h, b                                       ; $56d1: $60
    rst RST_38                                    ; $56d2: $ff
    ld b, b                                       ; $56d3: $40
    rst RST_38                                    ; $56d4: $ff
    jp rIE                                        ; $56d5: $c3 $ff $ff


    rst RST_38                                    ; $56d8: $ff
    ld a, h                                       ; $56d9: $7c
    rst RST_38                                    ; $56da: $ff
    nop                                           ; $56db: $00
    rst RST_38                                    ; $56dc: $ff
    nop                                           ; $56dd: $00
    nop                                           ; $56de: $00
    nop                                           ; $56df: $00
    nop                                           ; $56e0: $00
    rst RST_38                                    ; $56e1: $ff
    nop                                           ; $56e2: $00
    rst RST_38                                    ; $56e3: $ff
    nop                                           ; $56e4: $00
    rst RST_38                                    ; $56e5: $ff
    nop                                           ; $56e6: $00
    rst RST_38                                    ; $56e7: $ff
    nop                                           ; $56e8: $00
    nop                                           ; $56e9: $00
    nop                                           ; $56ea: $00
    rst RST_38                                    ; $56eb: $ff
    rst RST_38                                    ; $56ec: $ff
    nop                                           ; $56ed: $00
    rst RST_38                                    ; $56ee: $ff
    nop                                           ; $56ef: $00
    rst RST_38                                    ; $56f0: $ff
    nop                                           ; $56f1: $00
    rst RST_38                                    ; $56f2: $ff
    nop                                           ; $56f3: $00
    rst RST_38                                    ; $56f4: $ff
    rst RST_38                                    ; $56f5: $ff
    rst RST_38                                    ; $56f6: $ff
    rst RST_38                                    ; $56f7: $ff
    rst RST_38                                    ; $56f8: $ff
    nop                                           ; $56f9: $00
    rst RST_38                                    ; $56fa: $ff
    nop                                           ; $56fb: $00
    rst RST_38                                    ; $56fc: $ff
    nop                                           ; $56fd: $00
    nop                                           ; $56fe: $00
    nop                                           ; $56ff: $00
    nop                                           ; $5700: $00
    rst RST_38                                    ; $5701: $ff
    nop                                           ; $5702: $00
    rst RST_38                                    ; $5703: $ff
    nop                                           ; $5704: $00
    rst RST_38                                    ; $5705: $ff
    nop                                           ; $5706: $00
    rst RST_38                                    ; $5707: $ff
    nop                                           ; $5708: $00
    ld l, a                                       ; $5709: $6f
    nop                                           ; $570a: $00
    adc a                                         ; $570b: $8f
    rst RST_38                                    ; $570c: $ff
    nop                                           ; $570d: $00
    rst RST_38                                    ; $570e: $ff
    nop                                           ; $570f: $00
    rst RST_38                                    ; $5710: $ff
    nop                                           ; $5711: $00
    rst RST_38                                    ; $5712: $ff
    nop                                           ; $5713: $00
    rst RST_38                                    ; $5714: $ff
    ret nz                                        ; $5715: $c0

    rst RST_38                                    ; $5716: $ff
    ldh [rIE], a                                  ; $5717: $e0 $ff
    ld h, b                                       ; $5719: $60
    rst RST_38                                    ; $571a: $ff
    nop                                           ; $571b: $00
    rst RST_38                                    ; $571c: $ff
    nop                                           ; $571d: $00
    nop                                           ; $571e: $00
    nop                                           ; $571f: $00
    nop                                           ; $5720: $00
    rst RST_38                                    ; $5721: $ff
    nop                                           ; $5722: $00
    rst RST_38                                    ; $5723: $ff
    nop                                           ; $5724: $00
    rst RST_38                                    ; $5725: $ff
    inc bc                                        ; $5726: $03
    db $fc                                        ; $5727: $fc
    rra                                           ; $5728: $1f
    ldh [$fffe], a                                ; $5729: $e0 $fe
    ld bc, $0ff0                                  ; $572b: $01 $f0 $0f
    add b                                         ; $572e: $80
    ld a, a                                       ; $572f: $7f
    rst RST_38                                    ; $5730: $ff
    nop                                           ; $5731: $00
    rst RST_38                                    ; $5732: $ff
    nop                                           ; $5733: $00
    rst RST_38                                    ; $5734: $ff
    nop                                           ; $5735: $00
    rst RST_38                                    ; $5736: $ff
    nop                                           ; $5737: $00
    db $fc                                        ; $5738: $fc
    nop                                           ; $5739: $00
    ldh [c], a                                    ; $573a: $e2
    ld bc, $0f10                                  ; $573b: $01 $10 $0f
    add b                                         ; $573e: $80
    ld a, a                                       ; $573f: $7f
    ld c, $f1                                     ; $5740: $0e $f1
    inc a                                         ; $5742: $3c
    jp Jump_000_0ff0                              ; $5743: $c3 $f0 $0f


    ldh [$ff1f], a                                ; $5746: $e0 $1f
    add b                                         ; $5748: $80
    ld a, a                                       ; $5749: $7f
    nop                                           ; $574a: $00
    rst RST_38                                    ; $574b: $ff
    nop                                           ; $574c: $00
    rst RST_38                                    ; $574d: $ff
    nop                                           ; $574e: $00
    rst RST_38                                    ; $574f: $ff
    ld a, [$f401]                                 ; $5750: $fa $01 $f4
    inc bc                                        ; $5753: $03
    ret nz                                        ; $5754: $c0

    rrca                                          ; $5755: $0f
    jr nz, jr_004_5777                            ; $5756: $20 $1f

    add b                                         ; $5758: $80
    ld a, a                                       ; $5759: $7f
    nop                                           ; $575a: $00
    rst RST_38                                    ; $575b: $ff
    nop                                           ; $575c: $00
    rst RST_38                                    ; $575d: $ff
    nop                                           ; $575e: $00
    rst RST_38                                    ; $575f: $ff
    nop                                           ; $5760: $00
    rst RST_38                                    ; $5761: $ff
    nop                                           ; $5762: $00
    rst RST_38                                    ; $5763: $ff
    nop                                           ; $5764: $00
    rst RST_38                                    ; $5765: $ff
    nop                                           ; $5766: $00
    rst RST_38                                    ; $5767: $ff
    nop                                           ; $5768: $00
    rst RST_38                                    ; $5769: $ff
    nop                                           ; $576a: $00
    nop                                           ; $576b: $00
    nop                                           ; $576c: $00
    nop                                           ; $576d: $00
    nop                                           ; $576e: $00
    ccf                                           ; $576f: $3f
    nop                                           ; $5770: $00
    rst RST_38                                    ; $5771: $ff
    nop                                           ; $5772: $00
    rst RST_38                                    ; $5773: $ff
    nop                                           ; $5774: $00
    rst RST_38                                    ; $5775: $ff
    nop                                           ; $5776: $00

jr_004_5777:
    rst RST_38                                    ; $5777: $ff
    nop                                           ; $5778: $00
    rst RST_38                                    ; $5779: $ff
    rst RST_38                                    ; $577a: $ff
    nop                                           ; $577b: $00
    rst RST_38                                    ; $577c: $ff
    nop                                           ; $577d: $00
    ldh [$ff1f], a                                ; $577e: $e0 $1f
    nop                                           ; $5780: $00
    rst RST_38                                    ; $5781: $ff
    nop                                           ; $5782: $00
    rst RST_38                                    ; $5783: $ff
    nop                                           ; $5784: $00
    rst RST_38                                    ; $5785: $ff
    nop                                           ; $5786: $00

jr_004_5787:
    rst RST_38                                    ; $5787: $ff
    nop                                           ; $5788: $00
    rst RST_38                                    ; $5789: $ff
    nop                                           ; $578a: $00
    db $fc                                        ; $578b: $fc
    nop                                           ; $578c: $00
    db $fc                                        ; $578d: $fc
    nop                                           ; $578e: $00
    db $fc                                        ; $578f: $fc
    nop                                           ; $5790: $00
    rst RST_38                                    ; $5791: $ff
    nop                                           ; $5792: $00
    rst RST_38                                    ; $5793: $ff
    nop                                           ; $5794: $00
    rst RST_38                                    ; $5795: $ff
    nop                                           ; $5796: $00
    rst RST_38                                    ; $5797: $ff
    nop                                           ; $5798: $00
    rst RST_38                                    ; $5799: $ff
    inc bc                                        ; $579a: $03
    db $fc                                        ; $579b: $fc
    inc bc                                        ; $579c: $03
    db $fc                                        ; $579d: $fc
    inc bc                                        ; $579e: $03
    db $fc                                        ; $579f: $fc
    nop                                           ; $57a0: $00
    rst RST_38                                    ; $57a1: $ff
    nop                                           ; $57a2: $00
    rst RST_38                                    ; $57a3: $ff
    nop                                           ; $57a4: $00
    rst RST_38                                    ; $57a5: $ff
    nop                                           ; $57a6: $00
    rst RST_38                                    ; $57a7: $ff
    nop                                           ; $57a8: $00
    rst RST_38                                    ; $57a9: $ff
    nop                                           ; $57aa: $00
    rra                                           ; $57ab: $1f
    nop                                           ; $57ac: $00
    rrca                                          ; $57ad: $0f
    nop                                           ; $57ae: $00
    rst RST_20                                    ; $57af: $e7
    nop                                           ; $57b0: $00
    rst RST_38                                    ; $57b1: $ff
    nop                                           ; $57b2: $00
    rst RST_38                                    ; $57b3: $ff
    nop                                           ; $57b4: $00
    rst RST_38                                    ; $57b5: $ff
    nop                                           ; $57b6: $00
    rst RST_38                                    ; $57b7: $ff
    nop                                           ; $57b8: $00
    rst RST_38                                    ; $57b9: $ff
    ldh a, [rIF]                                  ; $57ba: $f0 $0f
    ld hl, sp+$07                                 ; $57bc: $f8 $07
    jr c, jr_004_5787                             ; $57be: $38 $c7

    nop                                           ; $57c0: $00
    rst RST_38                                    ; $57c1: $ff
    nop                                           ; $57c2: $00
    rst RST_38                                    ; $57c3: $ff
    nop                                           ; $57c4: $00
    rst RST_38                                    ; $57c5: $ff
    nop                                           ; $57c6: $00
    rst RST_38                                    ; $57c7: $ff
    nop                                           ; $57c8: $00
    rst RST_38                                    ; $57c9: $ff
    nop                                           ; $57ca: $00
    ldh a, [rP1]                                  ; $57cb: $f0 $00
    ldh [rP1], a                                  ; $57cd: $e0 $00
    rst RST_08                                    ; $57cf: $cf
    nop                                           ; $57d0: $00
    rst RST_38                                    ; $57d1: $ff
    nop                                           ; $57d2: $00
    rst RST_38                                    ; $57d3: $ff
    nop                                           ; $57d4: $00
    rst RST_38                                    ; $57d5: $ff
    nop                                           ; $57d6: $00
    rst RST_38                                    ; $57d7: $ff
    nop                                           ; $57d8: $00
    rst RST_38                                    ; $57d9: $ff
    rrca                                          ; $57da: $0f
    ldh a, [$ff3f]                                ; $57db: $f0 $3f
    ret nz                                        ; $57dd: $c0

    ld a, c                                       ; $57de: $79
    add [hl]                                      ; $57df: $86
    nop                                           ; $57e0: $00
    rst RST_38                                    ; $57e1: $ff
    nop                                           ; $57e2: $00
    rst RST_38                                    ; $57e3: $ff
    nop                                           ; $57e4: $00
    rst RST_38                                    ; $57e5: $ff
    nop                                           ; $57e6: $00
    rst RST_38                                    ; $57e7: $ff
    nop                                           ; $57e8: $00
    rst RST_38                                    ; $57e9: $ff
    nop                                           ; $57ea: $00
    rst RST_20                                    ; $57eb: $e7
    nop                                           ; $57ec: $00
    ld [hl], e                                    ; $57ed: $73
    nop                                           ; $57ee: $00
    inc sp                                        ; $57ef: $33
    nop                                           ; $57f0: $00
    rst RST_38                                    ; $57f1: $ff
    nop                                           ; $57f2: $00
    rst RST_38                                    ; $57f3: $ff
    nop                                           ; $57f4: $00
    rst RST_38                                    ; $57f5: $ff
    nop                                           ; $57f6: $00
    rst RST_38                                    ; $57f7: $ff
    nop                                           ; $57f8: $00
    rst RST_38                                    ; $57f9: $ff
    sbc h                                         ; $57fa: $9c
    ld h, e                                       ; $57fb: $63
    call c, $ce23                                 ; $57fc: $dc $23 $ce
    ld sp, rP1                                    ; $57ff: $31 $00 $ff
    nop                                           ; $5802: $00
    rst RST_38                                    ; $5803: $ff
    nop                                           ; $5804: $00
    rst RST_38                                    ; $5805: $ff
    nop                                           ; $5806: $00
    rst RST_38                                    ; $5807: $ff
    nop                                           ; $5808: $00
    rst RST_38                                    ; $5809: $ff
    nop                                           ; $580a: $00
    ld hl, sp+$00                                 ; $580b: $f8 $00
    pop af                                        ; $580d: $f1
    nop                                           ; $580e: $00
    db $e3                                        ; $580f: $e3
    nop                                           ; $5810: $00
    rst RST_38                                    ; $5811: $ff
    nop                                           ; $5812: $00
    rst RST_38                                    ; $5813: $ff
    nop                                           ; $5814: $00
    rst RST_38                                    ; $5815: $ff
    nop                                           ; $5816: $00
    rst RST_38                                    ; $5817: $ff
    nop                                           ; $5818: $00
    rst RST_38                                    ; $5819: $ff
    rlca                                          ; $581a: $07
    ld hl, sp+$0e                                 ; $581b: $f8 $0e
    pop af                                        ; $581d: $f1
    inc e                                         ; $581e: $1c
    db $e3                                        ; $581f: $e3
    nop                                           ; $5820: $00
    ccf                                           ; $5821: $3f
    nop                                           ; $5822: $00
    ld a, a                                       ; $5823: $7f
    nop                                           ; $5824: $00
    ld a, a                                       ; $5825: $7f
    nop                                           ; $5826: $00
    inc bc                                        ; $5827: $03
    nop                                           ; $5828: $00
    inc bc                                        ; $5829: $03
    nop                                           ; $582a: $00
    ld a, a                                       ; $582b: $7f
    nop                                           ; $582c: $00
    ld a, a                                       ; $582d: $7f
    nop                                           ; $582e: $00
    rst RST_38                                    ; $582f: $ff
    ldh [$ff1f], a                                ; $5830: $e0 $1f
    ret nz                                        ; $5832: $c0

    ccf                                           ; $5833: $3f
    ret nz                                        ; $5834: $c0

    ccf                                           ; $5835: $3f
    db $fc                                        ; $5836: $fc
    inc bc                                        ; $5837: $03
    db $fc                                        ; $5838: $fc
    inc bc                                        ; $5839: $03
    ret nz                                        ; $583a: $c0

    ccf                                           ; $583b: $3f
    add b                                         ; $583c: $80

jr_004_583d:
    ld a, a                                       ; $583d: $7f
    add b                                         ; $583e: $80
    ld a, a                                       ; $583f: $7f
    nop                                           ; $5840: $00
    db $fc                                        ; $5841: $fc
    nop                                           ; $5842: $00
    db $fc                                        ; $5843: $fc
    nop                                           ; $5844: $00
    db $fc                                        ; $5845: $fc
    nop                                           ; $5846: $00
    ld hl, sp+$00                                 ; $5847: $f8 $00
    ld hl, sp+$00                                 ; $5849: $f8 $00
    ld sp, hl                                     ; $584b: $f9
    nop                                           ; $584c: $00
    ld sp, hl                                     ; $584d: $f9
    nop                                           ; $584e: $00
    ld sp, hl                                     ; $584f: $f9
    rlca                                          ; $5850: $07
    ld hl, sp+$07                                 ; $5851: $f8 $07
    ld hl, sp+$07                                 ; $5853: $f8 $07
    ld hl, sp+$07                                 ; $5855: $f8 $07
    ld hl, sp+$07                                 ; $5857: $f8 $07
    ld hl, sp+$06                                 ; $5859: $f8 $06

jr_004_585b:
    ld sp, hl                                     ; $585b: $f9
    ld b, $f9                                     ; $585c: $06 $f9
    ld c, $f1                                     ; $585e: $0e $f1
    nop                                           ; $5860: $00
    rst RST_20                                    ; $5861: $e7
    nop                                           ; $5862: $00
    rst RST_20                                    ; $5863: $e7
    nop                                           ; $5864: $00
    rst RST_28                                    ; $5865: $ef
    nop                                           ; $5866: $00
    rrca                                          ; $5867: $0f
    nop                                           ; $5868: $00
    ld c, $00                                     ; $5869: $0e $00
    and $00                                       ; $586b: $e6 $00
    or $00                                        ; $586d: $f6 $00
    or $18                                        ; $586f: $f6 $18
    rst RST_20                                    ; $5871: $e7
    jr jr_004_585b                                ; $5872: $18 $e7

    jr c, jr_004_583d                             ; $5874: $38 $c7

    pop af                                        ; $5876: $f1
    ld c, $f9                                     ; $5877: $0e $f9
    ld b, $39                                     ; $5879: $06 $39
    add $1d                                       ; $587b: $c6 $1d
    ldh [c], a                                    ; $587d: $e2
    dec e                                         ; $587e: $1d
    ldh [c], a                                    ; $587f: $e2
    nop                                           ; $5880: $00
    sbc a                                         ; $5881: $9f
    nop                                           ; $5882: $00
    ccf                                           ; $5883: $3f
    nop                                           ; $5884: $00
    ccf                                           ; $5885: $3f
    nop                                           ; $5886: $00
    ld a, a                                       ; $5887: $7f
    nop                                           ; $5888: $00
    ld a, a                                       ; $5889: $7f
    nop                                           ; $588a: $00
    ld a, a                                       ; $588b: $7f
    nop                                           ; $588c: $00
    ld a, a                                       ; $588d: $7f
    nop                                           ; $588e: $00
    ld a, a                                       ; $588f: $7f
    ld [hl], b                                    ; $5890: $70
    adc a                                         ; $5891: $8f
    ldh [$ff1f], a                                ; $5892: $e0 $1f
    ret nz                                        ; $5894: $c0

    ccf                                           ; $5895: $3f
    ret nz                                        ; $5896: $c0

    ccf                                           ; $5897: $3f
    add b                                         ; $5898: $80

jr_004_5899:
    ld a, a                                       ; $5899: $7f
    add b                                         ; $589a: $80
    ld a, a                                       ; $589b: $7f
    add b                                         ; $589c: $80
    ld a, a                                       ; $589d: $7f
    ret nz                                        ; $589e: $c0

    ccf                                           ; $589f: $3f
    nop                                           ; $58a0: $00
    cp c                                          ; $58a1: $b9
    nop                                           ; $58a2: $00
    sbc h                                         ; $58a3: $9c
    nop                                           ; $58a4: $00
    sbc h                                         ; $58a5: $9c
    nop                                           ; $58a6: $00
    sbc [hl]                                      ; $58a7: $9e
    nop                                           ; $58a8: $00
    sbc [hl]                                      ; $58a9: $9e
    nop                                           ; $58aa: $00
    sbc [hl]                                      ; $58ab: $9e
    nop                                           ; $58ac: $00
    sbc [hl]                                      ; $58ad: $9e
    nop                                           ; $58ae: $00
    cp [hl]                                       ; $58af: $be
    and $19                                       ; $58b0: $e6 $19
    ld h, a                                       ; $58b2: $67
    sbc b                                         ; $58b3: $98
    ld h, e                                       ; $58b4: $63
    sbc h                                         ; $58b5: $9c
    ld h, e                                       ; $58b6: $63
    sbc h                                         ; $58b7: $9c
    ld h, e                                       ; $58b8: $63
    sbc h                                         ; $58b9: $9c
    ld h, c                                       ; $58ba: $61
    sbc [hl]                                      ; $58bb: $9e
    ld h, e                                       ; $58bc: $63
    sbc h                                         ; $58bd: $9c
    db $e3                                        ; $58be: $e3
    inc e                                         ; $58bf: $1c
    nop                                           ; $58c0: $00
    rst RST_00                                    ; $58c1: $c7
    nop                                           ; $58c2: $00
    adc a                                         ; $58c3: $8f
    nop                                           ; $58c4: $00
    rra                                           ; $58c5: $1f
    nop                                           ; $58c6: $00
    ccf                                           ; $58c7: $3f
    nop                                           ; $58c8: $00
    ld a, a                                       ; $58c9: $7f
    nop                                           ; $58ca: $00
    ld a, a                                       ; $58cb: $7f
    nop                                           ; $58cc: $00
    ld a, a                                       ; $58cd: $7f
    nop                                           ; $58ce: $00
    ld a, a                                       ; $58cf: $7f
    jr c, jr_004_5899                             ; $58d0: $38 $c7

    ld [hl], b                                    ; $58d2: $70
    adc a                                         ; $58d3: $8f
    ldh [$ff1f], a                                ; $58d4: $e0 $1f
    ret nz                                        ; $58d6: $c0

    ccf                                           ; $58d7: $3f
    ret nz                                        ; $58d8: $c0

    ccf                                           ; $58d9: $3f
    add b                                         ; $58da: $80
    ld a, a                                       ; $58db: $7f
    add b                                         ; $58dc: $80
    ld a, a                                       ; $58dd: $7f
    add b                                         ; $58de: $80
    ld a, a                                       ; $58df: $7f
    nop                                           ; $58e0: $00
    rst RST_38                                    ; $58e1: $ff
    nop                                           ; $58e2: $00
    rst RST_38                                    ; $58e3: $ff
    nop                                           ; $58e4: $00
    ld bc, $0100                                  ; $58e5: $01 $00 $01
    nop                                           ; $58e8: $00
    rst RST_38                                    ; $58e9: $ff
    nop                                           ; $58ea: $00
    rst RST_38                                    ; $58eb: $ff
    nop                                           ; $58ec: $00
    rst RST_38                                    ; $58ed: $ff
    nop                                           ; $58ee: $00
    rst RST_38                                    ; $58ef: $ff
    add b                                         ; $58f0: $80
    ld a, a                                       ; $58f1: $7f
    add b                                         ; $58f2: $80
    ld a, a                                       ; $58f3: $7f
    cp $01                                        ; $58f4: $fe $01
    cp $01                                        ; $58f6: $fe $01
    nop                                           ; $58f8: $00
    rst RST_38                                    ; $58f9: $ff
    nop                                           ; $58fa: $00

jr_004_58fb:
    rst RST_38                                    ; $58fb: $ff
    nop                                           ; $58fc: $00
    rst RST_38                                    ; $58fd: $ff
    nop                                           ; $58fe: $00
    rst RST_38                                    ; $58ff: $ff
    nop                                           ; $5900: $00
    ld sp, hl                                     ; $5901: $f9
    nop                                           ; $5902: $00
    pop af                                        ; $5903: $f1
    nop                                           ; $5904: $00
    ldh a, [rP1]                                  ; $5905: $f0 $00
    ldh a, [rP1]                                  ; $5907: $f0 $00
    rst RST_38                                    ; $5909: $ff
    nop                                           ; $590a: $00
    rst RST_38                                    ; $590b: $ff
    nop                                           ; $590c: $00
    rst RST_38                                    ; $590d: $ff
    nop                                           ; $590e: $00
    rst RST_38                                    ; $590f: $ff
    ld c, $f1                                     ; $5910: $0e $f1
    ld c, $f1                                     ; $5912: $0e $f1
    rrca                                          ; $5914: $0f
    ldh a, [rIF]                                  ; $5915: $f0 $0f
    ldh a, [rP1]                                  ; $5917: $f0 $00
    rst RST_38                                    ; $5919: $ff
    nop                                           ; $591a: $00
    rst RST_38                                    ; $591b: $ff
    nop                                           ; $591c: $00
    rst RST_38                                    ; $591d: $ff
    nop                                           ; $591e: $00
    rst RST_38                                    ; $591f: $ff
    nop                                           ; $5920: $00
    or $00                                        ; $5921: $f6 $00
    rst RST_20                                    ; $5923: $e7
    nop                                           ; $5924: $00
    rrca                                          ; $5925: $0f
    nop                                           ; $5926: $00
    rra                                           ; $5927: $1f
    nop                                           ; $5928: $00
    rst RST_38                                    ; $5929: $ff
    nop                                           ; $592a: $00
    rst RST_38                                    ; $592b: $ff
    nop                                           ; $592c: $00
    rst RST_38                                    ; $592d: $ff
    nop                                           ; $592e: $00
    rst RST_38                                    ; $592f: $ff
    dec e                                         ; $5930: $1d
    ldh [c], a                                    ; $5931: $e2
    jr c, jr_004_58fb                             ; $5932: $38 $c7

    ld hl, sp+$07                                 ; $5934: $f8 $07
    ldh a, [rIF]                                  ; $5936: $f0 $0f
    nop                                           ; $5938: $00
    rst RST_38                                    ; $5939: $ff
    nop                                           ; $593a: $00
    rst RST_38                                    ; $593b: $ff
    nop                                           ; $593c: $00
    rst RST_38                                    ; $593d: $ff
    nop                                           ; $593e: $00
    rst RST_38                                    ; $593f: $ff
    nop                                           ; $5940: $00
    ccf                                           ; $5941: $3f
    nop                                           ; $5942: $00
    ld a, $00                                     ; $5943: $3e $00
    sbc b                                         ; $5945: $98
    nop                                           ; $5946: $00
    pop bc                                        ; $5947: $c1
    nop                                           ; $5948: $00
    rst RST_38                                    ; $5949: $ff
    nop                                           ; $594a: $00
    rst RST_38                                    ; $594b: $ff
    nop                                           ; $594c: $00
    rst RST_38                                    ; $594d: $ff
    nop                                           ; $594e: $00
    rst RST_38                                    ; $594f: $ff
    ret nz                                        ; $5950: $c0

    ccf                                           ; $5951: $3f
    db $e3                                        ; $5952: $e3
    inc e                                         ; $5953: $1c
    rst RST_38                                    ; $5954: $ff
    nop                                           ; $5955: $00
    ld a, $c1                                     ; $5956: $3e $c1
    nop                                           ; $5958: $00
    rst RST_38                                    ; $5959: $ff
    nop                                           ; $595a: $00
    rst RST_38                                    ; $595b: $ff
    nop                                           ; $595c: $00
    rst RST_38                                    ; $595d: $ff
    nop                                           ; $595e: $00
    rst RST_38                                    ; $595f: $ff
    nop                                           ; $5960: $00
    ld a, $00                                     ; $5961: $3e $00
    ld a, h                                       ; $5963: $7c
    nop                                           ; $5964: $00
    db $fc                                        ; $5965: $fc
    nop                                           ; $5966: $00
    db $fc                                        ; $5967: $fc
    nop                                           ; $5968: $00
    rst RST_38                                    ; $5969: $ff
    nop                                           ; $596a: $00
    rst RST_38                                    ; $596b: $ff
    nop                                           ; $596c: $00
    rst RST_38                                    ; $596d: $ff
    nop                                           ; $596e: $00
    rst RST_38                                    ; $596f: $ff
    jp $c33c                                      ; $5970: $c3 $3c $c3


    inc a                                         ; $5973: $3c
    add e                                         ; $5974: $83
    ld a, h                                       ; $5975: $7c
    inc bc                                        ; $5976: $03
    db $fc                                        ; $5977: $fc
    nop                                           ; $5978: $00
    rst RST_38                                    ; $5979: $ff
    nop                                           ; $597a: $00
    rst RST_38                                    ; $597b: $ff
    nop                                           ; $597c: $00
    rst RST_38                                    ; $597d: $ff
    nop                                           ; $597e: $00
    rst RST_38                                    ; $597f: $ff
    nop                                           ; $5980: $00
    ld a, b                                       ; $5981: $78
    nop                                           ; $5982: $00
    cp $00                                        ; $5983: $fe $00
    cp $00                                        ; $5985: $fe $00
    cp $00                                        ; $5987: $fe $00
    rst RST_38                                    ; $5989: $ff
    nop                                           ; $598a: $00
    rst RST_38                                    ; $598b: $ff
    nop                                           ; $598c: $00
    rst RST_38                                    ; $598d: $ff
    nop                                           ; $598e: $00
    rst RST_38                                    ; $598f: $ff
    add a                                         ; $5990: $87
    ld a, b                                       ; $5991: $78
    add c                                         ; $5992: $81
    ld a, [hl]                                    ; $5993: $7e
    add c                                         ; $5994: $81
    ld a, [hl]                                    ; $5995: $7e
    add c                                         ; $5996: $81
    ld a, [hl]                                    ; $5997: $7e
    nop                                           ; $5998: $00
    rst RST_38                                    ; $5999: $ff
    nop                                           ; $599a: $00
    rst RST_38                                    ; $599b: $ff
    nop                                           ; $599c: $00
    rst RST_38                                    ; $599d: $ff
    nop                                           ; $599e: $00
    rst RST_38                                    ; $599f: $ff
    nop                                           ; $59a0: $00
    ld l, $00                                     ; $59a1: $2e $00
    db $e4                                        ; $59a3: $e4
    nop                                           ; $59a4: $00
    ld [$ee00], a                                 ; $59a5: $ea $00 $ee
    nop                                           ; $59a8: $00
    rst RST_38                                    ; $59a9: $ff
    nop                                           ; $59aa: $00
    rst RST_38                                    ; $59ab: $ff
    nop                                           ; $59ac: $00
    rst RST_38                                    ; $59ad: $ff
    nop                                           ; $59ae: $00
    rst RST_38                                    ; $59af: $ff
    db $db                                        ; $59b0: $db
    inc h                                         ; $59b1: $24
    rra                                           ; $59b2: $1f
    ldh [$ff15], a                                ; $59b3: $e0 $15
    ld [$ee11], a                                 ; $59b5: $ea $11 $ee
    nop                                           ; $59b8: $00
    rst RST_38                                    ; $59b9: $ff
    nop                                           ; $59ba: $00
    rst RST_38                                    ; $59bb: $ff
    nop                                           ; $59bc: $00
    rst RST_38                                    ; $59bd: $ff
    nop                                           ; $59be: $00
    rst RST_38                                    ; $59bf: $ff
    rst RST_38                                    ; $59c0: $ff
    rst RST_38                                    ; $59c1: $ff
    rst RST_38                                    ; $59c2: $ff
    rst RST_38                                    ; $59c3: $ff
    rst RST_38                                    ; $59c4: $ff
    rst RST_38                                    ; $59c5: $ff
    rst RST_38                                    ; $59c6: $ff
    rst RST_38                                    ; $59c7: $ff
    rst RST_38                                    ; $59c8: $ff
    rst RST_38                                    ; $59c9: $ff
    rst RST_38                                    ; $59ca: $ff
    rst RST_38                                    ; $59cb: $ff
    rst RST_38                                    ; $59cc: $ff
    rst RST_38                                    ; $59cd: $ff
    rst RST_38                                    ; $59ce: $ff
    rst RST_38                                    ; $59cf: $ff
    rst RST_38                                    ; $59d0: $ff
    rst RST_38                                    ; $59d1: $ff
    rst RST_38                                    ; $59d2: $ff
    rst RST_38                                    ; $59d3: $ff
    rst RST_38                                    ; $59d4: $ff
    rst RST_38                                    ; $59d5: $ff
    rst RST_38                                    ; $59d6: $ff
    rst RST_38                                    ; $59d7: $ff
    rst RST_38                                    ; $59d8: $ff
    rst RST_38                                    ; $59d9: $ff
    rst RST_38                                    ; $59da: $ff
    rst RST_38                                    ; $59db: $ff
    rst RST_38                                    ; $59dc: $ff
    rst RST_38                                    ; $59dd: $ff
    rst RST_38                                    ; $59de: $ff
    rst RST_38                                    ; $59df: $ff
    nop                                           ; $59e0: $00
    nop                                           ; $59e1: $00
    nop                                           ; $59e2: $00
    nop                                           ; $59e3: $00
    nop                                           ; $59e4: $00
    nop                                           ; $59e5: $00
    nop                                           ; $59e6: $00
    nop                                           ; $59e7: $00
    nop                                           ; $59e8: $00
    nop                                           ; $59e9: $00
    nop                                           ; $59ea: $00
    nop                                           ; $59eb: $00
    nop                                           ; $59ec: $00
    nop                                           ; $59ed: $00
    nop                                           ; $59ee: $00
    nop                                           ; $59ef: $00
    nop                                           ; $59f0: $00
    nop                                           ; $59f1: $00
    nop                                           ; $59f2: $00
    nop                                           ; $59f3: $00
    nop                                           ; $59f4: $00
    nop                                           ; $59f5: $00
    nop                                           ; $59f6: $00
    nop                                           ; $59f7: $00
    nop                                           ; $59f8: $00
    nop                                           ; $59f9: $00
    nop                                           ; $59fa: $00
    nop                                           ; $59fb: $00
    nop                                           ; $59fc: $00
    nop                                           ; $59fd: $00
    nop                                           ; $59fe: $00
    nop                                           ; $59ff: $00
    nop                                           ; $5a00: $00
    nop                                           ; $5a01: $00
    nop                                           ; $5a02: $00
    nop                                           ; $5a03: $00
    nop                                           ; $5a04: $00
    nop                                           ; $5a05: $00
    nop                                           ; $5a06: $00
    nop                                           ; $5a07: $00
    nop                                           ; $5a08: $00
    nop                                           ; $5a09: $00
    nop                                           ; $5a0a: $00
    nop                                           ; $5a0b: $00
    nop                                           ; $5a0c: $00
    nop                                           ; $5a0d: $00
    nop                                           ; $5a0e: $00
    nop                                           ; $5a0f: $00
    nop                                           ; $5a10: $00
    nop                                           ; $5a11: $00
    nop                                           ; $5a12: $00
    nop                                           ; $5a13: $00
    nop                                           ; $5a14: $00
    nop                                           ; $5a15: $00
    nop                                           ; $5a16: $00
    nop                                           ; $5a17: $00
    nop                                           ; $5a18: $00
    nop                                           ; $5a19: $00
    nop                                           ; $5a1a: $00
    nop                                           ; $5a1b: $00
    nop                                           ; $5a1c: $00
    nop                                           ; $5a1d: $00
    nop                                           ; $5a1e: $00
    nop                                           ; $5a1f: $00
    nop                                           ; $5a20: $00
    nop                                           ; $5a21: $00
    nop                                           ; $5a22: $00
    nop                                           ; $5a23: $00
    nop                                           ; $5a24: $00
    nop                                           ; $5a25: $00
    nop                                           ; $5a26: $00
    nop                                           ; $5a27: $00
    nop                                           ; $5a28: $00
    nop                                           ; $5a29: $00
    nop                                           ; $5a2a: $00
    nop                                           ; $5a2b: $00
    nop                                           ; $5a2c: $00
    nop                                           ; $5a2d: $00
    nop                                           ; $5a2e: $00
    nop                                           ; $5a2f: $00
    nop                                           ; $5a30: $00
    nop                                           ; $5a31: $00
    nop                                           ; $5a32: $00
    nop                                           ; $5a33: $00
    nop                                           ; $5a34: $00
    nop                                           ; $5a35: $00
    nop                                           ; $5a36: $00
    nop                                           ; $5a37: $00
    nop                                           ; $5a38: $00
    nop                                           ; $5a39: $00
    nop                                           ; $5a3a: $00
    nop                                           ; $5a3b: $00
    nop                                           ; $5a3c: $00
    nop                                           ; $5a3d: $00
    nop                                           ; $5a3e: $00
    nop                                           ; $5a3f: $00
    nop                                           ; $5a40: $00
    nop                                           ; $5a41: $00
    nop                                           ; $5a42: $00
    nop                                           ; $5a43: $00
    nop                                           ; $5a44: $00
    nop                                           ; $5a45: $00
    nop                                           ; $5a46: $00
    nop                                           ; $5a47: $00
    nop                                           ; $5a48: $00
    nop                                           ; $5a49: $00
    nop                                           ; $5a4a: $00
    nop                                           ; $5a4b: $00
    nop                                           ; $5a4c: $00
    nop                                           ; $5a4d: $00
    nop                                           ; $5a4e: $00
    nop                                           ; $5a4f: $00
    nop                                           ; $5a50: $00
    nop                                           ; $5a51: $00
    nop                                           ; $5a52: $00
    nop                                           ; $5a53: $00
    nop                                           ; $5a54: $00
    nop                                           ; $5a55: $00
    nop                                           ; $5a56: $00
    nop                                           ; $5a57: $00
    nop                                           ; $5a58: $00
    nop                                           ; $5a59: $00
    nop                                           ; $5a5a: $00
    nop                                           ; $5a5b: $00
    nop                                           ; $5a5c: $00
    nop                                           ; $5a5d: $00
    nop                                           ; $5a5e: $00
    nop                                           ; $5a5f: $00
    nop                                           ; $5a60: $00
    nop                                           ; $5a61: $00
    nop                                           ; $5a62: $00
    nop                                           ; $5a63: $00
    nop                                           ; $5a64: $00
    nop                                           ; $5a65: $00
    nop                                           ; $5a66: $00
    nop                                           ; $5a67: $00
    nop                                           ; $5a68: $00
    nop                                           ; $5a69: $00
    nop                                           ; $5a6a: $00
    nop                                           ; $5a6b: $00
    nop                                           ; $5a6c: $00
    nop                                           ; $5a6d: $00
    nop                                           ; $5a6e: $00
    nop                                           ; $5a6f: $00
    nop                                           ; $5a70: $00
    nop                                           ; $5a71: $00
    nop                                           ; $5a72: $00
    nop                                           ; $5a73: $00
    nop                                           ; $5a74: $00
    nop                                           ; $5a75: $00
    nop                                           ; $5a76: $00
    nop                                           ; $5a77: $00
    nop                                           ; $5a78: $00
    nop                                           ; $5a79: $00
    nop                                           ; $5a7a: $00
    nop                                           ; $5a7b: $00
    nop                                           ; $5a7c: $00
    nop                                           ; $5a7d: $00
    nop                                           ; $5a7e: $00
    nop                                           ; $5a7f: $00
    nop                                           ; $5a80: $00
    nop                                           ; $5a81: $00
    nop                                           ; $5a82: $00
    nop                                           ; $5a83: $00
    nop                                           ; $5a84: $00
    nop                                           ; $5a85: $00
    nop                                           ; $5a86: $00
    nop                                           ; $5a87: $00
    nop                                           ; $5a88: $00
    nop                                           ; $5a89: $00
    nop                                           ; $5a8a: $00
    nop                                           ; $5a8b: $00
    nop                                           ; $5a8c: $00
    nop                                           ; $5a8d: $00
    nop                                           ; $5a8e: $00
    nop                                           ; $5a8f: $00
    nop                                           ; $5a90: $00
    nop                                           ; $5a91: $00
    nop                                           ; $5a92: $00
    nop                                           ; $5a93: $00
    nop                                           ; $5a94: $00
    nop                                           ; $5a95: $00
    nop                                           ; $5a96: $00
    nop                                           ; $5a97: $00
    nop                                           ; $5a98: $00
    nop                                           ; $5a99: $00
    nop                                           ; $5a9a: $00
    nop                                           ; $5a9b: $00
    nop                                           ; $5a9c: $00
    nop                                           ; $5a9d: $00
    nop                                           ; $5a9e: $00
    nop                                           ; $5a9f: $00
    nop                                           ; $5aa0: $00
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00
    nop                                           ; $5aa3: $00
    nop                                           ; $5aa4: $00
    nop                                           ; $5aa5: $00
    nop                                           ; $5aa6: $00
    nop                                           ; $5aa7: $00
    nop                                           ; $5aa8: $00
    nop                                           ; $5aa9: $00
    nop                                           ; $5aaa: $00
    nop                                           ; $5aab: $00
    nop                                           ; $5aac: $00
    nop                                           ; $5aad: $00
    nop                                           ; $5aae: $00
    nop                                           ; $5aaf: $00
    nop                                           ; $5ab0: $00
    nop                                           ; $5ab1: $00
    nop                                           ; $5ab2: $00
    nop                                           ; $5ab3: $00
    nop                                           ; $5ab4: $00
    nop                                           ; $5ab5: $00
    nop                                           ; $5ab6: $00
    nop                                           ; $5ab7: $00
    nop                                           ; $5ab8: $00
    nop                                           ; $5ab9: $00
    nop                                           ; $5aba: $00
    nop                                           ; $5abb: $00
    nop                                           ; $5abc: $00
    nop                                           ; $5abd: $00
    nop                                           ; $5abe: $00
    nop                                           ; $5abf: $00
    nop                                           ; $5ac0: $00
    nop                                           ; $5ac1: $00
    nop                                           ; $5ac2: $00
    nop                                           ; $5ac3: $00
    nop                                           ; $5ac4: $00
    nop                                           ; $5ac5: $00
    nop                                           ; $5ac6: $00
    nop                                           ; $5ac7: $00
    nop                                           ; $5ac8: $00
    nop                                           ; $5ac9: $00
    nop                                           ; $5aca: $00
    nop                                           ; $5acb: $00
    nop                                           ; $5acc: $00
    nop                                           ; $5acd: $00
    nop                                           ; $5ace: $00
    nop                                           ; $5acf: $00
    nop                                           ; $5ad0: $00
    nop                                           ; $5ad1: $00
    nop                                           ; $5ad2: $00
    nop                                           ; $5ad3: $00
    nop                                           ; $5ad4: $00
    nop                                           ; $5ad5: $00
    nop                                           ; $5ad6: $00
    nop                                           ; $5ad7: $00
    nop                                           ; $5ad8: $00
    nop                                           ; $5ad9: $00
    nop                                           ; $5ada: $00
    nop                                           ; $5adb: $00
    nop                                           ; $5adc: $00
    nop                                           ; $5add: $00
    nop                                           ; $5ade: $00
    nop                                           ; $5adf: $00
    nop                                           ; $5ae0: $00
    nop                                           ; $5ae1: $00
    nop                                           ; $5ae2: $00
    nop                                           ; $5ae3: $00
    nop                                           ; $5ae4: $00
    nop                                           ; $5ae5: $00
    nop                                           ; $5ae6: $00
    nop                                           ; $5ae7: $00
    nop                                           ; $5ae8: $00
    nop                                           ; $5ae9: $00
    nop                                           ; $5aea: $00
    nop                                           ; $5aeb: $00
    nop                                           ; $5aec: $00
    nop                                           ; $5aed: $00
    nop                                           ; $5aee: $00
    nop                                           ; $5aef: $00
    nop                                           ; $5af0: $00
    nop                                           ; $5af1: $00
    nop                                           ; $5af2: $00
    nop                                           ; $5af3: $00
    nop                                           ; $5af4: $00
    nop                                           ; $5af5: $00
    nop                                           ; $5af6: $00
    nop                                           ; $5af7: $00
    nop                                           ; $5af8: $00
    nop                                           ; $5af9: $00
    nop                                           ; $5afa: $00
    nop                                           ; $5afb: $00
    nop                                           ; $5afc: $00
    nop                                           ; $5afd: $00
    nop                                           ; $5afe: $00
    nop                                           ; $5aff: $00
    nop                                           ; $5b00: $00
    nop                                           ; $5b01: $00
    nop                                           ; $5b02: $00
    nop                                           ; $5b03: $00
    nop                                           ; $5b04: $00
    nop                                           ; $5b05: $00
    nop                                           ; $5b06: $00
    nop                                           ; $5b07: $00
    nop                                           ; $5b08: $00
    nop                                           ; $5b09: $00
    nop                                           ; $5b0a: $00
    nop                                           ; $5b0b: $00
    nop                                           ; $5b0c: $00
    nop                                           ; $5b0d: $00
    nop                                           ; $5b0e: $00
    nop                                           ; $5b0f: $00
    nop                                           ; $5b10: $00
    nop                                           ; $5b11: $00
    nop                                           ; $5b12: $00
    nop                                           ; $5b13: $00
    nop                                           ; $5b14: $00
    nop                                           ; $5b15: $00
    nop                                           ; $5b16: $00
    nop                                           ; $5b17: $00
    nop                                           ; $5b18: $00
    nop                                           ; $5b19: $00
    nop                                           ; $5b1a: $00
    nop                                           ; $5b1b: $00
    nop                                           ; $5b1c: $00
    nop                                           ; $5b1d: $00
    nop                                           ; $5b1e: $00
    nop                                           ; $5b1f: $00
    nop                                           ; $5b20: $00
    nop                                           ; $5b21: $00
    nop                                           ; $5b22: $00
    nop                                           ; $5b23: $00
    nop                                           ; $5b24: $00
    nop                                           ; $5b25: $00
    nop                                           ; $5b26: $00
    nop                                           ; $5b27: $00
    nop                                           ; $5b28: $00
    nop                                           ; $5b29: $00
    nop                                           ; $5b2a: $00
    nop                                           ; $5b2b: $00
    nop                                           ; $5b2c: $00
    nop                                           ; $5b2d: $00
    nop                                           ; $5b2e: $00
    nop                                           ; $5b2f: $00
    nop                                           ; $5b30: $00
    nop                                           ; $5b31: $00
    nop                                           ; $5b32: $00
    nop                                           ; $5b33: $00
    nop                                           ; $5b34: $00
    nop                                           ; $5b35: $00
    nop                                           ; $5b36: $00
    nop                                           ; $5b37: $00
    nop                                           ; $5b38: $00
    nop                                           ; $5b39: $00
    nop                                           ; $5b3a: $00
    nop                                           ; $5b3b: $00
    nop                                           ; $5b3c: $00
    nop                                           ; $5b3d: $00
    nop                                           ; $5b3e: $00
    nop                                           ; $5b3f: $00
    nop                                           ; $5b40: $00
    nop                                           ; $5b41: $00
    nop                                           ; $5b42: $00
    nop                                           ; $5b43: $00
    nop                                           ; $5b44: $00
    nop                                           ; $5b45: $00
    nop                                           ; $5b46: $00
    nop                                           ; $5b47: $00
    nop                                           ; $5b48: $00
    nop                                           ; $5b49: $00
    nop                                           ; $5b4a: $00
    nop                                           ; $5b4b: $00
    nop                                           ; $5b4c: $00
    nop                                           ; $5b4d: $00
    nop                                           ; $5b4e: $00
    nop                                           ; $5b4f: $00
    nop                                           ; $5b50: $00
    nop                                           ; $5b51: $00
    nop                                           ; $5b52: $00
    nop                                           ; $5b53: $00
    nop                                           ; $5b54: $00
    nop                                           ; $5b55: $00
    nop                                           ; $5b56: $00
    nop                                           ; $5b57: $00
    nop                                           ; $5b58: $00
    nop                                           ; $5b59: $00
    nop                                           ; $5b5a: $00
    nop                                           ; $5b5b: $00
    nop                                           ; $5b5c: $00
    nop                                           ; $5b5d: $00
    nop                                           ; $5b5e: $00
    nop                                           ; $5b5f: $00
    nop                                           ; $5b60: $00
    nop                                           ; $5b61: $00
    nop                                           ; $5b62: $00
    nop                                           ; $5b63: $00
    nop                                           ; $5b64: $00
    nop                                           ; $5b65: $00
    nop                                           ; $5b66: $00
    nop                                           ; $5b67: $00
    nop                                           ; $5b68: $00
    nop                                           ; $5b69: $00
    nop                                           ; $5b6a: $00
    nop                                           ; $5b6b: $00
    nop                                           ; $5b6c: $00
    nop                                           ; $5b6d: $00
    nop                                           ; $5b6e: $00
    nop                                           ; $5b6f: $00
    nop                                           ; $5b70: $00
    nop                                           ; $5b71: $00
    nop                                           ; $5b72: $00
    nop                                           ; $5b73: $00
    nop                                           ; $5b74: $00
    nop                                           ; $5b75: $00
    nop                                           ; $5b76: $00
    nop                                           ; $5b77: $00
    nop                                           ; $5b78: $00
    nop                                           ; $5b79: $00
    nop                                           ; $5b7a: $00
    nop                                           ; $5b7b: $00
    nop                                           ; $5b7c: $00
    nop                                           ; $5b7d: $00
    nop                                           ; $5b7e: $00
    nop                                           ; $5b7f: $00
    nop                                           ; $5b80: $00
    nop                                           ; $5b81: $00
    nop                                           ; $5b82: $00
    nop                                           ; $5b83: $00
    nop                                           ; $5b84: $00
    nop                                           ; $5b85: $00
    nop                                           ; $5b86: $00
    nop                                           ; $5b87: $00
    nop                                           ; $5b88: $00
    nop                                           ; $5b89: $00
    nop                                           ; $5b8a: $00
    nop                                           ; $5b8b: $00
    nop                                           ; $5b8c: $00
    nop                                           ; $5b8d: $00
    nop                                           ; $5b8e: $00
    nop                                           ; $5b8f: $00
    nop                                           ; $5b90: $00
    nop                                           ; $5b91: $00
    nop                                           ; $5b92: $00
    nop                                           ; $5b93: $00
    nop                                           ; $5b94: $00
    nop                                           ; $5b95: $00
    nop                                           ; $5b96: $00
    nop                                           ; $5b97: $00
    nop                                           ; $5b98: $00
    nop                                           ; $5b99: $00
    nop                                           ; $5b9a: $00
    nop                                           ; $5b9b: $00
    nop                                           ; $5b9c: $00
    nop                                           ; $5b9d: $00
    nop                                           ; $5b9e: $00
    nop                                           ; $5b9f: $00
    nop                                           ; $5ba0: $00
    nop                                           ; $5ba1: $00
    nop                                           ; $5ba2: $00
    nop                                           ; $5ba3: $00
    nop                                           ; $5ba4: $00
    nop                                           ; $5ba5: $00
    nop                                           ; $5ba6: $00
    nop                                           ; $5ba7: $00
    nop                                           ; $5ba8: $00
    nop                                           ; $5ba9: $00
    nop                                           ; $5baa: $00
    nop                                           ; $5bab: $00
    nop                                           ; $5bac: $00
    nop                                           ; $5bad: $00
    nop                                           ; $5bae: $00
    nop                                           ; $5baf: $00
    nop                                           ; $5bb0: $00
    nop                                           ; $5bb1: $00
    nop                                           ; $5bb2: $00
    nop                                           ; $5bb3: $00
    nop                                           ; $5bb4: $00
    nop                                           ; $5bb5: $00
    nop                                           ; $5bb6: $00
    nop                                           ; $5bb7: $00
    nop                                           ; $5bb8: $00
    nop                                           ; $5bb9: $00
    nop                                           ; $5bba: $00
    nop                                           ; $5bbb: $00
    nop                                           ; $5bbc: $00
    nop                                           ; $5bbd: $00
    nop                                           ; $5bbe: $00
    nop                                           ; $5bbf: $00
    nop                                           ; $5bc0: $00
    nop                                           ; $5bc1: $00
    nop                                           ; $5bc2: $00
    nop                                           ; $5bc3: $00
    nop                                           ; $5bc4: $00
    nop                                           ; $5bc5: $00
    nop                                           ; $5bc6: $00
    nop                                           ; $5bc7: $00
    nop                                           ; $5bc8: $00
    nop                                           ; $5bc9: $00
    nop                                           ; $5bca: $00
    nop                                           ; $5bcb: $00
    nop                                           ; $5bcc: $00
    nop                                           ; $5bcd: $00
    nop                                           ; $5bce: $00
    nop                                           ; $5bcf: $00
    nop                                           ; $5bd0: $00
    nop                                           ; $5bd1: $00
    nop                                           ; $5bd2: $00
    nop                                           ; $5bd3: $00
    nop                                           ; $5bd4: $00
    nop                                           ; $5bd5: $00
    nop                                           ; $5bd6: $00
    nop                                           ; $5bd7: $00
    nop                                           ; $5bd8: $00
    nop                                           ; $5bd9: $00
    nop                                           ; $5bda: $00
    nop                                           ; $5bdb: $00
    nop                                           ; $5bdc: $00
    nop                                           ; $5bdd: $00
    nop                                           ; $5bde: $00
    nop                                           ; $5bdf: $00
    nop                                           ; $5be0: $00
    nop                                           ; $5be1: $00
    nop                                           ; $5be2: $00
    nop                                           ; $5be3: $00
    nop                                           ; $5be4: $00
    nop                                           ; $5be5: $00
    nop                                           ; $5be6: $00
    nop                                           ; $5be7: $00
    nop                                           ; $5be8: $00
    nop                                           ; $5be9: $00
    nop                                           ; $5bea: $00
    nop                                           ; $5beb: $00
    nop                                           ; $5bec: $00
    nop                                           ; $5bed: $00
    nop                                           ; $5bee: $00
    nop                                           ; $5bef: $00
    nop                                           ; $5bf0: $00
    nop                                           ; $5bf1: $00
    nop                                           ; $5bf2: $00
    nop                                           ; $5bf3: $00
    nop                                           ; $5bf4: $00
    nop                                           ; $5bf5: $00
    nop                                           ; $5bf6: $00
    nop                                           ; $5bf7: $00
    nop                                           ; $5bf8: $00
    nop                                           ; $5bf9: $00
    nop                                           ; $5bfa: $00
    nop                                           ; $5bfb: $00
    nop                                           ; $5bfc: $00
    nop                                           ; $5bfd: $00
    nop                                           ; $5bfe: $00
    nop                                           ; $5bff: $00
    nop                                           ; $5c00: $00
    nop                                           ; $5c01: $00
    nop                                           ; $5c02: $00
    nop                                           ; $5c03: $00
    nop                                           ; $5c04: $00
    nop                                           ; $5c05: $00
    nop                                           ; $5c06: $00
    nop                                           ; $5c07: $00
    nop                                           ; $5c08: $00
    nop                                           ; $5c09: $00
    nop                                           ; $5c0a: $00
    nop                                           ; $5c0b: $00
    nop                                           ; $5c0c: $00
    nop                                           ; $5c0d: $00
    nop                                           ; $5c0e: $00
    nop                                           ; $5c0f: $00
    nop                                           ; $5c10: $00
    nop                                           ; $5c11: $00
    nop                                           ; $5c12: $00
    nop                                           ; $5c13: $00
    nop                                           ; $5c14: $00
    nop                                           ; $5c15: $00
    nop                                           ; $5c16: $00
    nop                                           ; $5c17: $00
    nop                                           ; $5c18: $00
    nop                                           ; $5c19: $00
    nop                                           ; $5c1a: $00
    nop                                           ; $5c1b: $00
    nop                                           ; $5c1c: $00
    nop                                           ; $5c1d: $00
    nop                                           ; $5c1e: $00
    nop                                           ; $5c1f: $00
    nop                                           ; $5c20: $00
    nop                                           ; $5c21: $00
    nop                                           ; $5c22: $00
    nop                                           ; $5c23: $00
    nop                                           ; $5c24: $00
    nop                                           ; $5c25: $00
    nop                                           ; $5c26: $00
    nop                                           ; $5c27: $00
    nop                                           ; $5c28: $00
    nop                                           ; $5c29: $00
    nop                                           ; $5c2a: $00
    nop                                           ; $5c2b: $00
    nop                                           ; $5c2c: $00
    nop                                           ; $5c2d: $00
    nop                                           ; $5c2e: $00
    nop                                           ; $5c2f: $00
    nop                                           ; $5c30: $00
    nop                                           ; $5c31: $00
    nop                                           ; $5c32: $00
    nop                                           ; $5c33: $00
    nop                                           ; $5c34: $00
    nop                                           ; $5c35: $00
    nop                                           ; $5c36: $00
    nop                                           ; $5c37: $00
    nop                                           ; $5c38: $00
    nop                                           ; $5c39: $00
    nop                                           ; $5c3a: $00
    nop                                           ; $5c3b: $00
    nop                                           ; $5c3c: $00
    nop                                           ; $5c3d: $00
    nop                                           ; $5c3e: $00
    nop                                           ; $5c3f: $00
    nop                                           ; $5c40: $00
    nop                                           ; $5c41: $00
    nop                                           ; $5c42: $00
    nop                                           ; $5c43: $00
    nop                                           ; $5c44: $00
    nop                                           ; $5c45: $00
    nop                                           ; $5c46: $00
    nop                                           ; $5c47: $00
    nop                                           ; $5c48: $00
    nop                                           ; $5c49: $00
    nop                                           ; $5c4a: $00
    nop                                           ; $5c4b: $00
    nop                                           ; $5c4c: $00
    nop                                           ; $5c4d: $00
    nop                                           ; $5c4e: $00
    nop                                           ; $5c4f: $00
    nop                                           ; $5c50: $00
    nop                                           ; $5c51: $00
    nop                                           ; $5c52: $00
    nop                                           ; $5c53: $00
    nop                                           ; $5c54: $00
    nop                                           ; $5c55: $00
    nop                                           ; $5c56: $00
    nop                                           ; $5c57: $00
    nop                                           ; $5c58: $00
    nop                                           ; $5c59: $00
    nop                                           ; $5c5a: $00
    nop                                           ; $5c5b: $00
    nop                                           ; $5c5c: $00
    nop                                           ; $5c5d: $00
    nop                                           ; $5c5e: $00
    nop                                           ; $5c5f: $00
    nop                                           ; $5c60: $00
    nop                                           ; $5c61: $00
    nop                                           ; $5c62: $00
    nop                                           ; $5c63: $00
    nop                                           ; $5c64: $00
    nop                                           ; $5c65: $00
    nop                                           ; $5c66: $00
    nop                                           ; $5c67: $00
    nop                                           ; $5c68: $00
    nop                                           ; $5c69: $00
    nop                                           ; $5c6a: $00
    nop                                           ; $5c6b: $00
    nop                                           ; $5c6c: $00
    nop                                           ; $5c6d: $00
    nop                                           ; $5c6e: $00
    nop                                           ; $5c6f: $00
    nop                                           ; $5c70: $00
    nop                                           ; $5c71: $00
    nop                                           ; $5c72: $00
    nop                                           ; $5c73: $00
    nop                                           ; $5c74: $00
    nop                                           ; $5c75: $00
    nop                                           ; $5c76: $00
    nop                                           ; $5c77: $00
    nop                                           ; $5c78: $00
    nop                                           ; $5c79: $00
    nop                                           ; $5c7a: $00
    nop                                           ; $5c7b: $00
    nop                                           ; $5c7c: $00
    nop                                           ; $5c7d: $00
    nop                                           ; $5c7e: $00
    nop                                           ; $5c7f: $00
    nop                                           ; $5c80: $00
    nop                                           ; $5c81: $00
    nop                                           ; $5c82: $00
    nop                                           ; $5c83: $00
    nop                                           ; $5c84: $00
    nop                                           ; $5c85: $00
    nop                                           ; $5c86: $00
    nop                                           ; $5c87: $00
    nop                                           ; $5c88: $00
    nop                                           ; $5c89: $00
    nop                                           ; $5c8a: $00
    nop                                           ; $5c8b: $00
    nop                                           ; $5c8c: $00
    nop                                           ; $5c8d: $00
    nop                                           ; $5c8e: $00
    nop                                           ; $5c8f: $00
    nop                                           ; $5c90: $00
    nop                                           ; $5c91: $00
    nop                                           ; $5c92: $00
    nop                                           ; $5c93: $00
    nop                                           ; $5c94: $00
    nop                                           ; $5c95: $00
    nop                                           ; $5c96: $00
    nop                                           ; $5c97: $00
    nop                                           ; $5c98: $00
    nop                                           ; $5c99: $00
    nop                                           ; $5c9a: $00
    nop                                           ; $5c9b: $00
    nop                                           ; $5c9c: $00
    nop                                           ; $5c9d: $00
    nop                                           ; $5c9e: $00
    nop                                           ; $5c9f: $00
    nop                                           ; $5ca0: $00
    nop                                           ; $5ca1: $00
    nop                                           ; $5ca2: $00
    nop                                           ; $5ca3: $00
    nop                                           ; $5ca4: $00
    nop                                           ; $5ca5: $00
    nop                                           ; $5ca6: $00
    nop                                           ; $5ca7: $00
    nop                                           ; $5ca8: $00
    nop                                           ; $5ca9: $00
    nop                                           ; $5caa: $00
    nop                                           ; $5cab: $00
    nop                                           ; $5cac: $00
    nop                                           ; $5cad: $00
    nop                                           ; $5cae: $00
    nop                                           ; $5caf: $00
    nop                                           ; $5cb0: $00
    nop                                           ; $5cb1: $00
    nop                                           ; $5cb2: $00
    nop                                           ; $5cb3: $00
    nop                                           ; $5cb4: $00
    nop                                           ; $5cb5: $00
    nop                                           ; $5cb6: $00
    nop                                           ; $5cb7: $00
    nop                                           ; $5cb8: $00
    nop                                           ; $5cb9: $00
    nop                                           ; $5cba: $00
    nop                                           ; $5cbb: $00
    nop                                           ; $5cbc: $00
    nop                                           ; $5cbd: $00
    nop                                           ; $5cbe: $00
    nop                                           ; $5cbf: $00
    nop                                           ; $5cc0: $00
    nop                                           ; $5cc1: $00
    nop                                           ; $5cc2: $00
    nop                                           ; $5cc3: $00
    nop                                           ; $5cc4: $00
    nop                                           ; $5cc5: $00
    nop                                           ; $5cc6: $00
    nop                                           ; $5cc7: $00
    nop                                           ; $5cc8: $00
    nop                                           ; $5cc9: $00
    nop                                           ; $5cca: $00
    nop                                           ; $5ccb: $00
    nop                                           ; $5ccc: $00
    nop                                           ; $5ccd: $00
    nop                                           ; $5cce: $00
    nop                                           ; $5ccf: $00
    nop                                           ; $5cd0: $00
    nop                                           ; $5cd1: $00
    nop                                           ; $5cd2: $00
    nop                                           ; $5cd3: $00
    nop                                           ; $5cd4: $00
    nop                                           ; $5cd5: $00
    nop                                           ; $5cd6: $00
    nop                                           ; $5cd7: $00
    nop                                           ; $5cd8: $00
    nop                                           ; $5cd9: $00
    nop                                           ; $5cda: $00
    nop                                           ; $5cdb: $00
    nop                                           ; $5cdc: $00
    nop                                           ; $5cdd: $00
    nop                                           ; $5cde: $00
    nop                                           ; $5cdf: $00
    nop                                           ; $5ce0: $00
    nop                                           ; $5ce1: $00
    nop                                           ; $5ce2: $00
    nop                                           ; $5ce3: $00
    nop                                           ; $5ce4: $00
    nop                                           ; $5ce5: $00
    nop                                           ; $5ce6: $00
    nop                                           ; $5ce7: $00
    nop                                           ; $5ce8: $00
    nop                                           ; $5ce9: $00
    nop                                           ; $5cea: $00
    nop                                           ; $5ceb: $00
    nop                                           ; $5cec: $00
    nop                                           ; $5ced: $00
    nop                                           ; $5cee: $00
    nop                                           ; $5cef: $00
    nop                                           ; $5cf0: $00
    nop                                           ; $5cf1: $00
    nop                                           ; $5cf2: $00
    nop                                           ; $5cf3: $00
    nop                                           ; $5cf4: $00
    nop                                           ; $5cf5: $00
    nop                                           ; $5cf6: $00
    nop                                           ; $5cf7: $00
    nop                                           ; $5cf8: $00
    nop                                           ; $5cf9: $00
    nop                                           ; $5cfa: $00
    nop                                           ; $5cfb: $00
    nop                                           ; $5cfc: $00
    nop                                           ; $5cfd: $00
    nop                                           ; $5cfe: $00
    nop                                           ; $5cff: $00
    nop                                           ; $5d00: $00
    nop                                           ; $5d01: $00
    nop                                           ; $5d02: $00
    nop                                           ; $5d03: $00
    nop                                           ; $5d04: $00
    nop                                           ; $5d05: $00
    nop                                           ; $5d06: $00
    nop                                           ; $5d07: $00
    nop                                           ; $5d08: $00
    nop                                           ; $5d09: $00
    nop                                           ; $5d0a: $00
    nop                                           ; $5d0b: $00
    nop                                           ; $5d0c: $00
    nop                                           ; $5d0d: $00
    nop                                           ; $5d0e: $00
    nop                                           ; $5d0f: $00
    nop                                           ; $5d10: $00
    nop                                           ; $5d11: $00
    nop                                           ; $5d12: $00
    nop                                           ; $5d13: $00
    nop                                           ; $5d14: $00
    nop                                           ; $5d15: $00
    nop                                           ; $5d16: $00
    nop                                           ; $5d17: $00
    nop                                           ; $5d18: $00
    nop                                           ; $5d19: $00
    nop                                           ; $5d1a: $00
    nop                                           ; $5d1b: $00
    nop                                           ; $5d1c: $00
    nop                                           ; $5d1d: $00
    nop                                           ; $5d1e: $00
    nop                                           ; $5d1f: $00
    nop                                           ; $5d20: $00
    nop                                           ; $5d21: $00
    nop                                           ; $5d22: $00
    nop                                           ; $5d23: $00
    nop                                           ; $5d24: $00
    nop                                           ; $5d25: $00
    nop                                           ; $5d26: $00
    nop                                           ; $5d27: $00
    nop                                           ; $5d28: $00
    nop                                           ; $5d29: $00
    nop                                           ; $5d2a: $00
    nop                                           ; $5d2b: $00
    nop                                           ; $5d2c: $00
    nop                                           ; $5d2d: $00
    nop                                           ; $5d2e: $00
    nop                                           ; $5d2f: $00
    nop                                           ; $5d30: $00
    nop                                           ; $5d31: $00
    nop                                           ; $5d32: $00
    nop                                           ; $5d33: $00
    nop                                           ; $5d34: $00
    nop                                           ; $5d35: $00
    nop                                           ; $5d36: $00
    nop                                           ; $5d37: $00
    nop                                           ; $5d38: $00
    nop                                           ; $5d39: $00
    nop                                           ; $5d3a: $00
    nop                                           ; $5d3b: $00
    nop                                           ; $5d3c: $00
    nop                                           ; $5d3d: $00
    nop                                           ; $5d3e: $00
    nop                                           ; $5d3f: $00
    nop                                           ; $5d40: $00
    nop                                           ; $5d41: $00
    nop                                           ; $5d42: $00
    nop                                           ; $5d43: $00
    nop                                           ; $5d44: $00
    nop                                           ; $5d45: $00
    nop                                           ; $5d46: $00
    nop                                           ; $5d47: $00
    nop                                           ; $5d48: $00
    nop                                           ; $5d49: $00
    nop                                           ; $5d4a: $00
    nop                                           ; $5d4b: $00
    nop                                           ; $5d4c: $00
    nop                                           ; $5d4d: $00
    nop                                           ; $5d4e: $00
    nop                                           ; $5d4f: $00
    nop                                           ; $5d50: $00
    nop                                           ; $5d51: $00
    nop                                           ; $5d52: $00
    nop                                           ; $5d53: $00
    nop                                           ; $5d54: $00
    nop                                           ; $5d55: $00
    nop                                           ; $5d56: $00
    nop                                           ; $5d57: $00
    nop                                           ; $5d58: $00
    nop                                           ; $5d59: $00
    nop                                           ; $5d5a: $00
    nop                                           ; $5d5b: $00
    nop                                           ; $5d5c: $00
    nop                                           ; $5d5d: $00
    nop                                           ; $5d5e: $00
    nop                                           ; $5d5f: $00
    nop                                           ; $5d60: $00
    nop                                           ; $5d61: $00
    nop                                           ; $5d62: $00
    nop                                           ; $5d63: $00
    nop                                           ; $5d64: $00
    nop                                           ; $5d65: $00
    nop                                           ; $5d66: $00
    nop                                           ; $5d67: $00
    nop                                           ; $5d68: $00
    nop                                           ; $5d69: $00
    nop                                           ; $5d6a: $00
    nop                                           ; $5d6b: $00
    nop                                           ; $5d6c: $00
    nop                                           ; $5d6d: $00
    nop                                           ; $5d6e: $00
    nop                                           ; $5d6f: $00
    nop                                           ; $5d70: $00
    nop                                           ; $5d71: $00
    nop                                           ; $5d72: $00
    nop                                           ; $5d73: $00
    nop                                           ; $5d74: $00
    nop                                           ; $5d75: $00
    nop                                           ; $5d76: $00
    nop                                           ; $5d77: $00
    nop                                           ; $5d78: $00
    nop                                           ; $5d79: $00
    nop                                           ; $5d7a: $00
    nop                                           ; $5d7b: $00
    nop                                           ; $5d7c: $00
    nop                                           ; $5d7d: $00
    nop                                           ; $5d7e: $00
    nop                                           ; $5d7f: $00
    nop                                           ; $5d80: $00
    nop                                           ; $5d81: $00
    nop                                           ; $5d82: $00
    nop                                           ; $5d83: $00
    nop                                           ; $5d84: $00
    nop                                           ; $5d85: $00
    nop                                           ; $5d86: $00
    nop                                           ; $5d87: $00
    nop                                           ; $5d88: $00
    nop                                           ; $5d89: $00
    nop                                           ; $5d8a: $00
    nop                                           ; $5d8b: $00
    nop                                           ; $5d8c: $00
    nop                                           ; $5d8d: $00
    nop                                           ; $5d8e: $00
    nop                                           ; $5d8f: $00
    nop                                           ; $5d90: $00
    nop                                           ; $5d91: $00
    nop                                           ; $5d92: $00
    nop                                           ; $5d93: $00
    nop                                           ; $5d94: $00
    nop                                           ; $5d95: $00
    nop                                           ; $5d96: $00
    nop                                           ; $5d97: $00
    nop                                           ; $5d98: $00
    nop                                           ; $5d99: $00
    nop                                           ; $5d9a: $00
    nop                                           ; $5d9b: $00
    nop                                           ; $5d9c: $00
    nop                                           ; $5d9d: $00
    nop                                           ; $5d9e: $00
    nop                                           ; $5d9f: $00
    nop                                           ; $5da0: $00
    nop                                           ; $5da1: $00
    nop                                           ; $5da2: $00
    nop                                           ; $5da3: $00
    nop                                           ; $5da4: $00
    nop                                           ; $5da5: $00
    nop                                           ; $5da6: $00
    nop                                           ; $5da7: $00
    nop                                           ; $5da8: $00
    nop                                           ; $5da9: $00
    nop                                           ; $5daa: $00
    nop                                           ; $5dab: $00
    nop                                           ; $5dac: $00
    nop                                           ; $5dad: $00
    nop                                           ; $5dae: $00
    nop                                           ; $5daf: $00
    nop                                           ; $5db0: $00
    nop                                           ; $5db1: $00
    nop                                           ; $5db2: $00
    nop                                           ; $5db3: $00
    nop                                           ; $5db4: $00
    nop                                           ; $5db5: $00
    nop                                           ; $5db6: $00
    nop                                           ; $5db7: $00
    nop                                           ; $5db8: $00
    nop                                           ; $5db9: $00
    nop                                           ; $5dba: $00
    nop                                           ; $5dbb: $00
    nop                                           ; $5dbc: $00
    nop                                           ; $5dbd: $00
    nop                                           ; $5dbe: $00
    nop                                           ; $5dbf: $00
    nop                                           ; $5dc0: $00
    nop                                           ; $5dc1: $00
    nop                                           ; $5dc2: $00
    nop                                           ; $5dc3: $00
    nop                                           ; $5dc4: $00
    nop                                           ; $5dc5: $00
    nop                                           ; $5dc6: $00
    nop                                           ; $5dc7: $00
    nop                                           ; $5dc8: $00
    nop                                           ; $5dc9: $00
    nop                                           ; $5dca: $00
    nop                                           ; $5dcb: $00
    nop                                           ; $5dcc: $00
    nop                                           ; $5dcd: $00
    nop                                           ; $5dce: $00
    nop                                           ; $5dcf: $00
    nop                                           ; $5dd0: $00
    nop                                           ; $5dd1: $00
    nop                                           ; $5dd2: $00
    nop                                           ; $5dd3: $00
    nop                                           ; $5dd4: $00
    nop                                           ; $5dd5: $00
    nop                                           ; $5dd6: $00
    nop                                           ; $5dd7: $00
    nop                                           ; $5dd8: $00
    nop                                           ; $5dd9: $00
    nop                                           ; $5dda: $00
    nop                                           ; $5ddb: $00
    nop                                           ; $5ddc: $00
    nop                                           ; $5ddd: $00
    nop                                           ; $5dde: $00
    nop                                           ; $5ddf: $00
    nop                                           ; $5de0: $00
    nop                                           ; $5de1: $00
    nop                                           ; $5de2: $00
    nop                                           ; $5de3: $00
    nop                                           ; $5de4: $00
    nop                                           ; $5de5: $00
    nop                                           ; $5de6: $00
    nop                                           ; $5de7: $00
    nop                                           ; $5de8: $00
    nop                                           ; $5de9: $00
    nop                                           ; $5dea: $00
    nop                                           ; $5deb: $00
    nop                                           ; $5dec: $00
    nop                                           ; $5ded: $00
    nop                                           ; $5dee: $00
    nop                                           ; $5def: $00
    nop                                           ; $5df0: $00
    nop                                           ; $5df1: $00
    nop                                           ; $5df2: $00
    nop                                           ; $5df3: $00
    nop                                           ; $5df4: $00
    nop                                           ; $5df5: $00
    nop                                           ; $5df6: $00
    nop                                           ; $5df7: $00
    nop                                           ; $5df8: $00
    nop                                           ; $5df9: $00
    nop                                           ; $5dfa: $00
    nop                                           ; $5dfb: $00
    nop                                           ; $5dfc: $00
    nop                                           ; $5dfd: $00
    nop                                           ; $5dfe: $00
    nop                                           ; $5dff: $00
    nop                                           ; $5e00: $00
    nop                                           ; $5e01: $00
    nop                                           ; $5e02: $00
    nop                                           ; $5e03: $00
    nop                                           ; $5e04: $00
    nop                                           ; $5e05: $00
    nop                                           ; $5e06: $00
    nop                                           ; $5e07: $00
    nop                                           ; $5e08: $00
    nop                                           ; $5e09: $00
    nop                                           ; $5e0a: $00
    nop                                           ; $5e0b: $00
    nop                                           ; $5e0c: $00
    nop                                           ; $5e0d: $00
    nop                                           ; $5e0e: $00
    nop                                           ; $5e0f: $00
    nop                                           ; $5e10: $00
    nop                                           ; $5e11: $00
    nop                                           ; $5e12: $00
    nop                                           ; $5e13: $00
    nop                                           ; $5e14: $00
    nop                                           ; $5e15: $00
    nop                                           ; $5e16: $00
    nop                                           ; $5e17: $00
    nop                                           ; $5e18: $00
    nop                                           ; $5e19: $00
    nop                                           ; $5e1a: $00
    nop                                           ; $5e1b: $00
    nop                                           ; $5e1c: $00
    nop                                           ; $5e1d: $00
    nop                                           ; $5e1e: $00
    nop                                           ; $5e1f: $00
    nop                                           ; $5e20: $00
    nop                                           ; $5e21: $00
    nop                                           ; $5e22: $00
    nop                                           ; $5e23: $00
    nop                                           ; $5e24: $00
    nop                                           ; $5e25: $00
    nop                                           ; $5e26: $00
    nop                                           ; $5e27: $00
    nop                                           ; $5e28: $00
    nop                                           ; $5e29: $00
    nop                                           ; $5e2a: $00
    nop                                           ; $5e2b: $00
    nop                                           ; $5e2c: $00
    nop                                           ; $5e2d: $00
    nop                                           ; $5e2e: $00
    nop                                           ; $5e2f: $00
    nop                                           ; $5e30: $00
    nop                                           ; $5e31: $00
    nop                                           ; $5e32: $00
    nop                                           ; $5e33: $00
    nop                                           ; $5e34: $00
    nop                                           ; $5e35: $00
    nop                                           ; $5e36: $00
    nop                                           ; $5e37: $00
    nop                                           ; $5e38: $00
    nop                                           ; $5e39: $00
    nop                                           ; $5e3a: $00
    nop                                           ; $5e3b: $00
    nop                                           ; $5e3c: $00
    nop                                           ; $5e3d: $00
    nop                                           ; $5e3e: $00
    nop                                           ; $5e3f: $00
    nop                                           ; $5e40: $00
    nop                                           ; $5e41: $00
    nop                                           ; $5e42: $00
    nop                                           ; $5e43: $00
    nop                                           ; $5e44: $00
    nop                                           ; $5e45: $00
    nop                                           ; $5e46: $00
    nop                                           ; $5e47: $00
    nop                                           ; $5e48: $00
    nop                                           ; $5e49: $00
    nop                                           ; $5e4a: $00
    nop                                           ; $5e4b: $00
    nop                                           ; $5e4c: $00
    nop                                           ; $5e4d: $00
    nop                                           ; $5e4e: $00
    nop                                           ; $5e4f: $00
    nop                                           ; $5e50: $00
    nop                                           ; $5e51: $00
    nop                                           ; $5e52: $00
    nop                                           ; $5e53: $00
    nop                                           ; $5e54: $00
    nop                                           ; $5e55: $00
    nop                                           ; $5e56: $00
    nop                                           ; $5e57: $00
    nop                                           ; $5e58: $00
    nop                                           ; $5e59: $00
    nop                                           ; $5e5a: $00
    nop                                           ; $5e5b: $00
    nop                                           ; $5e5c: $00
    nop                                           ; $5e5d: $00
    nop                                           ; $5e5e: $00
    nop                                           ; $5e5f: $00
    nop                                           ; $5e60: $00
    nop                                           ; $5e61: $00
    nop                                           ; $5e62: $00
    nop                                           ; $5e63: $00
    nop                                           ; $5e64: $00
    nop                                           ; $5e65: $00
    nop                                           ; $5e66: $00
    nop                                           ; $5e67: $00
    nop                                           ; $5e68: $00
    nop                                           ; $5e69: $00
    nop                                           ; $5e6a: $00
    nop                                           ; $5e6b: $00
    nop                                           ; $5e6c: $00
    nop                                           ; $5e6d: $00
    nop                                           ; $5e6e: $00
    nop                                           ; $5e6f: $00
    nop                                           ; $5e70: $00
    nop                                           ; $5e71: $00
    nop                                           ; $5e72: $00
    nop                                           ; $5e73: $00
    nop                                           ; $5e74: $00
    nop                                           ; $5e75: $00
    nop                                           ; $5e76: $00
    nop                                           ; $5e77: $00
    nop                                           ; $5e78: $00
    nop                                           ; $5e79: $00
    nop                                           ; $5e7a: $00
    nop                                           ; $5e7b: $00
    nop                                           ; $5e7c: $00
    nop                                           ; $5e7d: $00
    nop                                           ; $5e7e: $00
    nop                                           ; $5e7f: $00
    nop                                           ; $5e80: $00
    nop                                           ; $5e81: $00
    nop                                           ; $5e82: $00
    nop                                           ; $5e83: $00
    nop                                           ; $5e84: $00
    nop                                           ; $5e85: $00
    nop                                           ; $5e86: $00
    nop                                           ; $5e87: $00
    nop                                           ; $5e88: $00
    nop                                           ; $5e89: $00
    nop                                           ; $5e8a: $00
    nop                                           ; $5e8b: $00
    nop                                           ; $5e8c: $00
    nop                                           ; $5e8d: $00
    nop                                           ; $5e8e: $00
    nop                                           ; $5e8f: $00
    nop                                           ; $5e90: $00
    nop                                           ; $5e91: $00
    nop                                           ; $5e92: $00
    nop                                           ; $5e93: $00
    nop                                           ; $5e94: $00
    nop                                           ; $5e95: $00
    nop                                           ; $5e96: $00
    nop                                           ; $5e97: $00
    nop                                           ; $5e98: $00
    nop                                           ; $5e99: $00
    nop                                           ; $5e9a: $00
    nop                                           ; $5e9b: $00
    nop                                           ; $5e9c: $00
    nop                                           ; $5e9d: $00
    nop                                           ; $5e9e: $00
    nop                                           ; $5e9f: $00
    nop                                           ; $5ea0: $00
    nop                                           ; $5ea1: $00
    nop                                           ; $5ea2: $00
    nop                                           ; $5ea3: $00
    nop                                           ; $5ea4: $00
    nop                                           ; $5ea5: $00
    nop                                           ; $5ea6: $00
    nop                                           ; $5ea7: $00
    nop                                           ; $5ea8: $00
    nop                                           ; $5ea9: $00
    nop                                           ; $5eaa: $00
    nop                                           ; $5eab: $00
    nop                                           ; $5eac: $00
    nop                                           ; $5ead: $00
    nop                                           ; $5eae: $00
    nop                                           ; $5eaf: $00
    nop                                           ; $5eb0: $00
    nop                                           ; $5eb1: $00
    nop                                           ; $5eb2: $00
    nop                                           ; $5eb3: $00
    nop                                           ; $5eb4: $00
    nop                                           ; $5eb5: $00
    nop                                           ; $5eb6: $00
    nop                                           ; $5eb7: $00
    nop                                           ; $5eb8: $00
    nop                                           ; $5eb9: $00
    nop                                           ; $5eba: $00
    nop                                           ; $5ebb: $00
    nop                                           ; $5ebc: $00
    nop                                           ; $5ebd: $00
    nop                                           ; $5ebe: $00
    nop                                           ; $5ebf: $00
    nop                                           ; $5ec0: $00
    nop                                           ; $5ec1: $00
    nop                                           ; $5ec2: $00
    nop                                           ; $5ec3: $00
    nop                                           ; $5ec4: $00
    nop                                           ; $5ec5: $00
    nop                                           ; $5ec6: $00
    nop                                           ; $5ec7: $00
    nop                                           ; $5ec8: $00
    nop                                           ; $5ec9: $00
    nop                                           ; $5eca: $00
    nop                                           ; $5ecb: $00
    nop                                           ; $5ecc: $00
    nop                                           ; $5ecd: $00
    nop                                           ; $5ece: $00
    nop                                           ; $5ecf: $00
    nop                                           ; $5ed0: $00
    nop                                           ; $5ed1: $00
    nop                                           ; $5ed2: $00
    nop                                           ; $5ed3: $00
    nop                                           ; $5ed4: $00
    nop                                           ; $5ed5: $00
    nop                                           ; $5ed6: $00
    nop                                           ; $5ed7: $00
    nop                                           ; $5ed8: $00
    nop                                           ; $5ed9: $00
    nop                                           ; $5eda: $00
    nop                                           ; $5edb: $00
    nop                                           ; $5edc: $00
    nop                                           ; $5edd: $00
    nop                                           ; $5ede: $00
    nop                                           ; $5edf: $00
    nop                                           ; $5ee0: $00
    nop                                           ; $5ee1: $00
    nop                                           ; $5ee2: $00
    nop                                           ; $5ee3: $00
    nop                                           ; $5ee4: $00
    nop                                           ; $5ee5: $00
    nop                                           ; $5ee6: $00
    nop                                           ; $5ee7: $00
    nop                                           ; $5ee8: $00
    nop                                           ; $5ee9: $00
    nop                                           ; $5eea: $00
    nop                                           ; $5eeb: $00
    nop                                           ; $5eec: $00
    nop                                           ; $5eed: $00
    nop                                           ; $5eee: $00
    nop                                           ; $5eef: $00
    nop                                           ; $5ef0: $00
    nop                                           ; $5ef1: $00
    nop                                           ; $5ef2: $00
    nop                                           ; $5ef3: $00
    nop                                           ; $5ef4: $00
    nop                                           ; $5ef5: $00
    nop                                           ; $5ef6: $00
    nop                                           ; $5ef7: $00
    nop                                           ; $5ef8: $00
    nop                                           ; $5ef9: $00
    nop                                           ; $5efa: $00
    nop                                           ; $5efb: $00
    nop                                           ; $5efc: $00
    nop                                           ; $5efd: $00
    nop                                           ; $5efe: $00
    nop                                           ; $5eff: $00
    nop                                           ; $5f00: $00
    nop                                           ; $5f01: $00
    nop                                           ; $5f02: $00
    nop                                           ; $5f03: $00
    nop                                           ; $5f04: $00
    nop                                           ; $5f05: $00
    nop                                           ; $5f06: $00
    nop                                           ; $5f07: $00
    nop                                           ; $5f08: $00
    nop                                           ; $5f09: $00
    nop                                           ; $5f0a: $00
    nop                                           ; $5f0b: $00
    nop                                           ; $5f0c: $00
    nop                                           ; $5f0d: $00
    nop                                           ; $5f0e: $00
    nop                                           ; $5f0f: $00
    nop                                           ; $5f10: $00
    nop                                           ; $5f11: $00
    nop                                           ; $5f12: $00
    nop                                           ; $5f13: $00
    nop                                           ; $5f14: $00
    nop                                           ; $5f15: $00
    nop                                           ; $5f16: $00
    nop                                           ; $5f17: $00
    nop                                           ; $5f18: $00
    nop                                           ; $5f19: $00
    nop                                           ; $5f1a: $00
    nop                                           ; $5f1b: $00
    nop                                           ; $5f1c: $00
    nop                                           ; $5f1d: $00
    nop                                           ; $5f1e: $00
    nop                                           ; $5f1f: $00
    nop                                           ; $5f20: $00
    nop                                           ; $5f21: $00
    nop                                           ; $5f22: $00
    nop                                           ; $5f23: $00
    nop                                           ; $5f24: $00
    nop                                           ; $5f25: $00
    nop                                           ; $5f26: $00
    nop                                           ; $5f27: $00
    nop                                           ; $5f28: $00
    nop                                           ; $5f29: $00
    nop                                           ; $5f2a: $00
    nop                                           ; $5f2b: $00
    nop                                           ; $5f2c: $00
    nop                                           ; $5f2d: $00
    nop                                           ; $5f2e: $00
    nop                                           ; $5f2f: $00
    nop                                           ; $5f30: $00
    nop                                           ; $5f31: $00
    nop                                           ; $5f32: $00
    nop                                           ; $5f33: $00
    nop                                           ; $5f34: $00
    nop                                           ; $5f35: $00
    nop                                           ; $5f36: $00
    nop                                           ; $5f37: $00
    nop                                           ; $5f38: $00
    nop                                           ; $5f39: $00
    nop                                           ; $5f3a: $00
    nop                                           ; $5f3b: $00
    nop                                           ; $5f3c: $00
    nop                                           ; $5f3d: $00
    nop                                           ; $5f3e: $00
    nop                                           ; $5f3f: $00
    nop                                           ; $5f40: $00
    nop                                           ; $5f41: $00
    nop                                           ; $5f42: $00
    nop                                           ; $5f43: $00
    nop                                           ; $5f44: $00
    nop                                           ; $5f45: $00
    nop                                           ; $5f46: $00
    nop                                           ; $5f47: $00
    nop                                           ; $5f48: $00
    nop                                           ; $5f49: $00
    nop                                           ; $5f4a: $00
    nop                                           ; $5f4b: $00
    nop                                           ; $5f4c: $00
    nop                                           ; $5f4d: $00
    nop                                           ; $5f4e: $00
    nop                                           ; $5f4f: $00
    nop                                           ; $5f50: $00
    nop                                           ; $5f51: $00
    nop                                           ; $5f52: $00
    nop                                           ; $5f53: $00
    nop                                           ; $5f54: $00
    nop                                           ; $5f55: $00
    nop                                           ; $5f56: $00
    nop                                           ; $5f57: $00
    nop                                           ; $5f58: $00
    nop                                           ; $5f59: $00
    nop                                           ; $5f5a: $00
    nop                                           ; $5f5b: $00
    nop                                           ; $5f5c: $00
    nop                                           ; $5f5d: $00
    nop                                           ; $5f5e: $00
    nop                                           ; $5f5f: $00
    nop                                           ; $5f60: $00
    nop                                           ; $5f61: $00
    nop                                           ; $5f62: $00
    nop                                           ; $5f63: $00
    nop                                           ; $5f64: $00
    nop                                           ; $5f65: $00
    nop                                           ; $5f66: $00
    nop                                           ; $5f67: $00
    nop                                           ; $5f68: $00
    nop                                           ; $5f69: $00
    nop                                           ; $5f6a: $00
    nop                                           ; $5f6b: $00
    nop                                           ; $5f6c: $00
    nop                                           ; $5f6d: $00
    nop                                           ; $5f6e: $00
    nop                                           ; $5f6f: $00
    nop                                           ; $5f70: $00
    nop                                           ; $5f71: $00
    nop                                           ; $5f72: $00
    nop                                           ; $5f73: $00
    nop                                           ; $5f74: $00
    nop                                           ; $5f75: $00
    nop                                           ; $5f76: $00
    nop                                           ; $5f77: $00
    nop                                           ; $5f78: $00
    nop                                           ; $5f79: $00
    nop                                           ; $5f7a: $00
    nop                                           ; $5f7b: $00
    nop                                           ; $5f7c: $00
    nop                                           ; $5f7d: $00
    nop                                           ; $5f7e: $00
    nop                                           ; $5f7f: $00
    nop                                           ; $5f80: $00
    nop                                           ; $5f81: $00
    nop                                           ; $5f82: $00
    nop                                           ; $5f83: $00
    nop                                           ; $5f84: $00
    nop                                           ; $5f85: $00
    nop                                           ; $5f86: $00
    nop                                           ; $5f87: $00
    nop                                           ; $5f88: $00
    nop                                           ; $5f89: $00
    nop                                           ; $5f8a: $00
    nop                                           ; $5f8b: $00
    nop                                           ; $5f8c: $00
    nop                                           ; $5f8d: $00
    nop                                           ; $5f8e: $00
    nop                                           ; $5f8f: $00
    nop                                           ; $5f90: $00
    nop                                           ; $5f91: $00
    nop                                           ; $5f92: $00
    nop                                           ; $5f93: $00
    nop                                           ; $5f94: $00
    nop                                           ; $5f95: $00
    nop                                           ; $5f96: $00
    nop                                           ; $5f97: $00
    nop                                           ; $5f98: $00
    nop                                           ; $5f99: $00
    nop                                           ; $5f9a: $00
    nop                                           ; $5f9b: $00
    nop                                           ; $5f9c: $00
    nop                                           ; $5f9d: $00
    nop                                           ; $5f9e: $00
    nop                                           ; $5f9f: $00
    nop                                           ; $5fa0: $00
    nop                                           ; $5fa1: $00
    nop                                           ; $5fa2: $00
    nop                                           ; $5fa3: $00
    nop                                           ; $5fa4: $00
    nop                                           ; $5fa5: $00
    nop                                           ; $5fa6: $00
    nop                                           ; $5fa7: $00
    nop                                           ; $5fa8: $00
    nop                                           ; $5fa9: $00
    nop                                           ; $5faa: $00
    nop                                           ; $5fab: $00
    nop                                           ; $5fac: $00
    nop                                           ; $5fad: $00
    nop                                           ; $5fae: $00
    nop                                           ; $5faf: $00
    nop                                           ; $5fb0: $00
    nop                                           ; $5fb1: $00
    nop                                           ; $5fb2: $00
    nop                                           ; $5fb3: $00
    nop                                           ; $5fb4: $00
    nop                                           ; $5fb5: $00
    nop                                           ; $5fb6: $00
    nop                                           ; $5fb7: $00
    nop                                           ; $5fb8: $00
    nop                                           ; $5fb9: $00
    nop                                           ; $5fba: $00
    nop                                           ; $5fbb: $00
    nop                                           ; $5fbc: $00
    nop                                           ; $5fbd: $00
    nop                                           ; $5fbe: $00
    nop                                           ; $5fbf: $00
    nop                                           ; $5fc0: $00
    nop                                           ; $5fc1: $00
    nop                                           ; $5fc2: $00
    nop                                           ; $5fc3: $00
    nop                                           ; $5fc4: $00
    nop                                           ; $5fc5: $00
    nop                                           ; $5fc6: $00
    nop                                           ; $5fc7: $00
    nop                                           ; $5fc8: $00
    nop                                           ; $5fc9: $00
    nop                                           ; $5fca: $00
    nop                                           ; $5fcb: $00
    nop                                           ; $5fcc: $00
    nop                                           ; $5fcd: $00
    nop                                           ; $5fce: $00
    nop                                           ; $5fcf: $00
    nop                                           ; $5fd0: $00
    nop                                           ; $5fd1: $00
    nop                                           ; $5fd2: $00
    nop                                           ; $5fd3: $00
    nop                                           ; $5fd4: $00
    nop                                           ; $5fd5: $00
    nop                                           ; $5fd6: $00
    nop                                           ; $5fd7: $00
    nop                                           ; $5fd8: $00
    nop                                           ; $5fd9: $00
    nop                                           ; $5fda: $00
    nop                                           ; $5fdb: $00
    nop                                           ; $5fdc: $00
    nop                                           ; $5fdd: $00
    nop                                           ; $5fde: $00
    nop                                           ; $5fdf: $00
    nop                                           ; $5fe0: $00
    nop                                           ; $5fe1: $00
    nop                                           ; $5fe2: $00
    nop                                           ; $5fe3: $00
    nop                                           ; $5fe4: $00
    nop                                           ; $5fe5: $00
    nop                                           ; $5fe6: $00
    nop                                           ; $5fe7: $00
    nop                                           ; $5fe8: $00
    nop                                           ; $5fe9: $00
    nop                                           ; $5fea: $00
    nop                                           ; $5feb: $00
    nop                                           ; $5fec: $00
    nop                                           ; $5fed: $00
    nop                                           ; $5fee: $00
    nop                                           ; $5fef: $00
    nop                                           ; $5ff0: $00
    nop                                           ; $5ff1: $00
    nop                                           ; $5ff2: $00
    nop                                           ; $5ff3: $00
    nop                                           ; $5ff4: $00
    nop                                           ; $5ff5: $00
    nop                                           ; $5ff6: $00
    nop                                           ; $5ff7: $00
    nop                                           ; $5ff8: $00
    nop                                           ; $5ff9: $00
    nop                                           ; $5ffa: $00
    nop                                           ; $5ffb: $00
    nop                                           ; $5ffc: $00
    nop                                           ; $5ffd: $00
    nop                                           ; $5ffe: $00
    nop                                           ; $5fff: $00
    nop                                           ; $6000: $00
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    nop                                           ; $6004: $00
    nop                                           ; $6005: $00
    nop                                           ; $6006: $00
    nop                                           ; $6007: $00
    nop                                           ; $6008: $00
    nop                                           ; $6009: $00
    nop                                           ; $600a: $00
    nop                                           ; $600b: $00
    nop                                           ; $600c: $00
    nop                                           ; $600d: $00
    nop                                           ; $600e: $00
    nop                                           ; $600f: $00
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    nop                                           ; $6012: $00
    nop                                           ; $6013: $00
    nop                                           ; $6014: $00
    nop                                           ; $6015: $00
    nop                                           ; $6016: $00
    nop                                           ; $6017: $00
    nop                                           ; $6018: $00
    nop                                           ; $6019: $00
    nop                                           ; $601a: $00
    nop                                           ; $601b: $00
    nop                                           ; $601c: $00
    nop                                           ; $601d: $00
    nop                                           ; $601e: $00
    nop                                           ; $601f: $00
    and c                                         ; $6020: $a1
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    nop                                           ; $6027: $00
    nop                                           ; $6028: $00
    nop                                           ; $6029: $00
    nop                                           ; $602a: $00
    nop                                           ; $602b: $00
    nop                                           ; $602c: $00
    nop                                           ; $602d: $00
    nop                                           ; $602e: $00
    nop                                           ; $602f: $00
    ld e, $10                                     ; $6030: $1e $10
    ld e, $10                                     ; $6032: $1e $10
    ld e, $10                                     ; $6034: $1e $10
    ld e, $10                                     ; $6036: $1e $10
    ld e, $10                                     ; $6038: $1e $10
    ld e, $10                                     ; $603a: $1e $10
    ld e, $10                                     ; $603c: $1e $10
    ld e, $10                                     ; $603e: $1e $10
    ld e, $10                                     ; $6040: $1e $10
    ld e, $10                                     ; $6042: $1e $10
    ld e, $10                                     ; $6044: $1e $10
    ld e, $10                                     ; $6046: $1e $10
    ld e, $10                                     ; $6048: $1e $10
    ld e, $10                                     ; $604a: $1e $10
    ld e, $10                                     ; $604c: $1e $10
    ld e, $10                                     ; $604e: $1e $10
    ld e, $10                                     ; $6050: $1e $10
    ld e, $10                                     ; $6052: $1e $10
    ld e, $10                                     ; $6054: $1e $10
    ld e, $10                                     ; $6056: $1e $10
    ld e, $10                                     ; $6058: $1e $10
    ld e, $10                                     ; $605a: $1e $10
    ld e, $10                                     ; $605c: $1e $10
    ld e, $10                                     ; $605e: $1e $10
    ld e, $10                                     ; $6060: $1e $10
    ld e, $10                                     ; $6062: $1e $10
    ld e, $10                                     ; $6064: $1e $10
    ld e, $10                                     ; $6066: $1e $10
    ld e, $10                                     ; $6068: $1e $10
    ld e, $10                                     ; $606a: $1e $10
    ld e, $10                                     ; $606c: $1e $10
    ld e, $10                                     ; $606e: $1e $10
    ld bc, $0110                                  ; $6070: $01 $10 $01
    db $10                                        ; $6073: $10
    ld bc, $0110                                  ; $6074: $01 $10 $01
    db $10                                        ; $6077: $10
    ld bc, $0110                                  ; $6078: $01 $10 $01
    db $10                                        ; $607b: $10
    ld bc, $0110                                  ; $607c: $01 $10 $01
    db $10                                        ; $607f: $10
    ld bc, $0110                                  ; $6080: $01 $10 $01
    db $10                                        ; $6083: $10
    ld bc, $0110                                  ; $6084: $01 $10 $01
    db $10                                        ; $6087: $10
    ld bc, $0110                                  ; $6088: $01 $10 $01
    db $10                                        ; $608b: $10
    ld bc, $0110                                  ; $608c: $01 $10 $01
    db $10                                        ; $608f: $10
    ld bc, $0110                                  ; $6090: $01 $10 $01
    db $10                                        ; $6093: $10
    ld bc, $0110                                  ; $6094: $01 $10 $01
    db $10                                        ; $6097: $10
    ld bc, $0110                                  ; $6098: $01 $10 $01
    db $10                                        ; $609b: $10
    ld bc, $0110                                  ; $609c: $01 $10 $01
    db $10                                        ; $609f: $10
    ld bc, $0110                                  ; $60a0: $01 $10 $01
    db $10                                        ; $60a3: $10
    ld bc, $0110                                  ; $60a4: $01 $10 $01
    db $10                                        ; $60a7: $10
    ld bc, $0110                                  ; $60a8: $01 $10 $01
    db $10                                        ; $60ab: $10
    ld bc, $0110                                  ; $60ac: $01 $10 $01
    db $10                                        ; $60af: $10
    ld bc, $0210                                  ; $60b0: $01 $10 $02
    db $10                                        ; $60b3: $10
    inc bc                                        ; $60b4: $03
    db $10                                        ; $60b5: $10
    inc bc                                        ; $60b6: $03
    db $10                                        ; $60b7: $10
    inc bc                                        ; $60b8: $03
    db $10                                        ; $60b9: $10
    inc bc                                        ; $60ba: $03
    db $10                                        ; $60bb: $10
    inc bc                                        ; $60bc: $03
    db $10                                        ; $60bd: $10
    inc bc                                        ; $60be: $03
    db $10                                        ; $60bf: $10
    inc bc                                        ; $60c0: $03
    db $10                                        ; $60c1: $10
    inc bc                                        ; $60c2: $03
    db $10                                        ; $60c3: $10
    inc b                                         ; $60c4: $04
    db $10                                        ; $60c5: $10
    dec b                                         ; $60c6: $05
    db $10                                        ; $60c7: $10
    ld b, $10                                     ; $60c8: $06 $10
    rlca                                          ; $60ca: $07
    db $10                                        ; $60cb: $10
    ld [$0810], sp                                ; $60cc: $08 $10 $08
    db $10                                        ; $60cf: $10
    ld [$0810], sp                                ; $60d0: $08 $10 $08
    db $10                                        ; $60d3: $10
    ld [$0810], sp                                ; $60d4: $08 $10 $08
    db $10                                        ; $60d7: $10
    ld [$0810], sp                                ; $60d8: $08 $10 $08
    db $10                                        ; $60db: $10
    ld [$0810], sp                                ; $60dc: $08 $10 $08
    db $10                                        ; $60df: $10
    ld [$0810], sp                                ; $60e0: $08 $10 $08
    db $10                                        ; $60e3: $10
    ld [$0810], sp                                ; $60e4: $08 $10 $08
    db $10                                        ; $60e7: $10
    ld [$0810], sp                                ; $60e8: $08 $10 $08
    db $10                                        ; $60eb: $10
    add l                                         ; $60ec: $85
    db $10                                        ; $60ed: $10
    ld bc, $0110                                  ; $60ee: $01 $10 $01
    db $10                                        ; $60f1: $10
    add hl, bc                                    ; $60f2: $09
    db $10                                        ; $60f3: $10
    ld a, [bc]                                    ; $60f4: $0a
    db $10                                        ; $60f5: $10
    ld a, [bc]                                    ; $60f6: $0a
    db $10                                        ; $60f7: $10
    ld a, [bc]                                    ; $60f8: $0a
    db $10                                        ; $60f9: $10
    ld a, [bc]                                    ; $60fa: $0a
    db $10                                        ; $60fb: $10
    ld a, [bc]                                    ; $60fc: $0a
    db $10                                        ; $60fd: $10
    ld a, [bc]                                    ; $60fe: $0a
    db $10                                        ; $60ff: $10
    ld a, [bc]                                    ; $6100: $0a
    db $10                                        ; $6101: $10
    dec bc                                        ; $6102: $0b
    db $10                                        ; $6103: $10
    inc c                                         ; $6104: $0c
    db $10                                        ; $6105: $10
    dec c                                         ; $6106: $0d
    db $10                                        ; $6107: $10
    ld c, $10                                     ; $6108: $0e $10
    rrca                                          ; $610a: $0f
    db $10                                        ; $610b: $10
    db $10                                        ; $610c: $10
    db $10                                        ; $610d: $10
    ld de, $8610                                  ; $610e: $11 $10 $86
    db $10                                        ; $6111: $10
    add a                                         ; $6112: $87
    db $10                                        ; $6113: $10
    adc b                                         ; $6114: $88
    db $10                                        ; $6115: $10
    adc c                                         ; $6116: $89
    db $10                                        ; $6117: $10
    adc d                                         ; $6118: $8a
    db $10                                        ; $6119: $10
    adc e                                         ; $611a: $8b
    db $10                                        ; $611b: $10
    adc h                                         ; $611c: $8c
    db $10                                        ; $611d: $10
    adc l                                         ; $611e: $8d
    db $10                                        ; $611f: $10
    adc [hl]                                      ; $6120: $8e
    db $10                                        ; $6121: $10
    adc a                                         ; $6122: $8f
    db $10                                        ; $6123: $10
    inc e                                         ; $6124: $1c
    db $10                                        ; $6125: $10
    ld a, [bc]                                    ; $6126: $0a
    db $10                                        ; $6127: $10
    ld a, [bc]                                    ; $6128: $0a
    db $10                                        ; $6129: $10
    ld a, [bc]                                    ; $612a: $0a
    db $10                                        ; $612b: $10
    add hl, bc                                    ; $612c: $09
    ld d, b                                       ; $612d: $50
    ld bc, $0110                                  ; $612e: $01 $10 $01
    db $10                                        ; $6131: $10
    add hl, bc                                    ; $6132: $09
    db $10                                        ; $6133: $10
    ld [de], a                                    ; $6134: $12
    db $10                                        ; $6135: $10
    ld [de], a                                    ; $6136: $12
    db $10                                        ; $6137: $10
    ld [de], a                                    ; $6138: $12
    db $10                                        ; $6139: $10
    inc de                                        ; $613a: $13
    db $10                                        ; $613b: $10
    inc d                                         ; $613c: $14
    db $10                                        ; $613d: $10
    inc d                                         ; $613e: $14
    db $10                                        ; $613f: $10
    inc d                                         ; $6140: $14
    db $10                                        ; $6141: $10
    dec d                                         ; $6142: $15
    db $10                                        ; $6143: $10
    ld d, $10                                     ; $6144: $16 $10
    rla                                           ; $6146: $17
    db $10                                        ; $6147: $10
    jr jr_004_615a                                ; $6148: $18 $10

    add hl, de                                    ; $614a: $19
    db $10                                        ; $614b: $10
    ld a, [de]                                    ; $614c: $1a
    db $10                                        ; $614d: $10
    dec de                                        ; $614e: $1b
    db $10                                        ; $614f: $10
    dec de                                        ; $6150: $1b
    db $10                                        ; $6151: $10
    dec de                                        ; $6152: $1b
    db $10                                        ; $6153: $10
    dec de                                        ; $6154: $1b
    db $10                                        ; $6155: $10
    dec de                                        ; $6156: $1b
    db $10                                        ; $6157: $10
    dec de                                        ; $6158: $1b
    db $10                                        ; $6159: $10

jr_004_615a:
    dec de                                        ; $615a: $1b
    db $10                                        ; $615b: $10
    dec de                                        ; $615c: $1b
    db $10                                        ; $615d: $10
    dec de                                        ; $615e: $1b
    db $10                                        ; $615f: $10
    dec de                                        ; $6160: $1b
    db $10                                        ; $6161: $10
    dec de                                        ; $6162: $1b
    db $10                                        ; $6163: $10
    sub b                                         ; $6164: $90
    db $10                                        ; $6165: $10
    ld [de], a                                    ; $6166: $12
    db $10                                        ; $6167: $10
    ld [de], a                                    ; $6168: $12
    db $10                                        ; $6169: $10
    ld [de], a                                    ; $616a: $12
    db $10                                        ; $616b: $10
    add hl, bc                                    ; $616c: $09
    ld d, b                                       ; $616d: $50
    ld bc, $0110                                  ; $616e: $01 $10 $01
    db $10                                        ; $6171: $10
    add hl, bc                                    ; $6172: $09
    db $10                                        ; $6173: $10
    inc e                                         ; $6174: $1c
    db $10                                        ; $6175: $10
    inc e                                         ; $6176: $1c
    db $10                                        ; $6177: $10
    inc e                                         ; $6178: $1c
    db $10                                        ; $6179: $10
    dec e                                         ; $617a: $1d
    stop                                          ; $617b: $10 $00
    inc d                                         ; $617d: $14
    nop                                           ; $617e: $00
    inc d                                         ; $617f: $14
    nop                                           ; $6180: $00
    inc d                                         ; $6181: $14
    nop                                           ; $6182: $00
    inc d                                         ; $6183: $14
    nop                                           ; $6184: $00
    inc d                                         ; $6185: $14
    nop                                           ; $6186: $00
    inc d                                         ; $6187: $14
    nop                                           ; $6188: $00
    inc d                                         ; $6189: $14
    nop                                           ; $618a: $00
    inc d                                         ; $618b: $14
    nop                                           ; $618c: $00
    inc d                                         ; $618d: $14
    nop                                           ; $618e: $00
    inc d                                         ; $618f: $14
    nop                                           ; $6190: $00
    inc d                                         ; $6191: $14
    nop                                           ; $6192: $00
    inc d                                         ; $6193: $14
    nop                                           ; $6194: $00
    inc d                                         ; $6195: $14
    nop                                           ; $6196: $00
    inc d                                         ; $6197: $14
    nop                                           ; $6198: $00
    inc d                                         ; $6199: $14
    nop                                           ; $619a: $00
    inc d                                         ; $619b: $14
    nop                                           ; $619c: $00
    inc d                                         ; $619d: $14
    nop                                           ; $619e: $00
    inc d                                         ; $619f: $14
    nop                                           ; $61a0: $00
    inc d                                         ; $61a1: $14
    nop                                           ; $61a2: $00
    inc d                                         ; $61a3: $14
    sub c                                         ; $61a4: $91
    db $10                                        ; $61a5: $10
    inc e                                         ; $61a6: $1c
    db $10                                        ; $61a7: $10
    inc e                                         ; $61a8: $1c
    db $10                                        ; $61a9: $10
    inc e                                         ; $61aa: $1c
    db $10                                        ; $61ab: $10
    add hl, bc                                    ; $61ac: $09
    ld d, b                                       ; $61ad: $50
    ld bc, $0110                                  ; $61ae: $01 $10 $01
    db $10                                        ; $61b1: $10
    add hl, bc                                    ; $61b2: $09
    db $10                                        ; $61b3: $10
    inc e                                         ; $61b4: $1c
    db $10                                        ; $61b5: $10
    inc e                                         ; $61b6: $1c
    db $10                                        ; $61b7: $10
    inc e                                         ; $61b8: $1c
    db $10                                        ; $61b9: $10
    dec e                                         ; $61ba: $1d
    stop                                          ; $61bb: $10 $00
    inc d                                         ; $61bd: $14
    nop                                           ; $61be: $00
    inc d                                         ; $61bf: $14
    nop                                           ; $61c0: $00
    inc d                                         ; $61c1: $14
    nop                                           ; $61c2: $00
    inc d                                         ; $61c3: $14
    nop                                           ; $61c4: $00
    inc d                                         ; $61c5: $14
    nop                                           ; $61c6: $00
    inc d                                         ; $61c7: $14
    nop                                           ; $61c8: $00
    inc d                                         ; $61c9: $14
    nop                                           ; $61ca: $00
    inc d                                         ; $61cb: $14
    nop                                           ; $61cc: $00
    inc d                                         ; $61cd: $14
    nop                                           ; $61ce: $00
    inc d                                         ; $61cf: $14
    nop                                           ; $61d0: $00
    inc d                                         ; $61d1: $14
    nop                                           ; $61d2: $00
    inc d                                         ; $61d3: $14
    nop                                           ; $61d4: $00
    inc d                                         ; $61d5: $14
    nop                                           ; $61d6: $00
    inc d                                         ; $61d7: $14
    nop                                           ; $61d8: $00
    inc d                                         ; $61d9: $14
    nop                                           ; $61da: $00
    inc d                                         ; $61db: $14
    nop                                           ; $61dc: $00
    inc d                                         ; $61dd: $14
    nop                                           ; $61de: $00
    inc d                                         ; $61df: $14
    nop                                           ; $61e0: $00
    inc d                                         ; $61e1: $14
    nop                                           ; $61e2: $00
    inc d                                         ; $61e3: $14
    sub c                                         ; $61e4: $91
    db $10                                        ; $61e5: $10
    inc e                                         ; $61e6: $1c
    db $10                                        ; $61e7: $10
    inc e                                         ; $61e8: $1c
    db $10                                        ; $61e9: $10
    inc e                                         ; $61ea: $1c
    db $10                                        ; $61eb: $10
    add hl, bc                                    ; $61ec: $09
    ld d, b                                       ; $61ed: $50
    ld bc, $0110                                  ; $61ee: $01 $10 $01
    db $10                                        ; $61f1: $10
    add hl, bc                                    ; $61f2: $09
    db $10                                        ; $61f3: $10
    inc e                                         ; $61f4: $1c
    db $10                                        ; $61f5: $10
    inc e                                         ; $61f6: $1c
    db $10                                        ; $61f7: $10
    rra                                           ; $61f8: $1f
    db $10                                        ; $61f9: $10
    jr nz, jr_004_620c                            ; $61fa: $20 $10

    nop                                           ; $61fc: $00
    inc d                                         ; $61fd: $14
    nop                                           ; $61fe: $00
    inc d                                         ; $61ff: $14
    nop                                           ; $6200: $00
    inc d                                         ; $6201: $14
    nop                                           ; $6202: $00
    inc d                                         ; $6203: $14
    nop                                           ; $6204: $00
    inc d                                         ; $6205: $14
    nop                                           ; $6206: $00
    inc d                                         ; $6207: $14
    nop                                           ; $6208: $00
    inc d                                         ; $6209: $14
    nop                                           ; $620a: $00
    inc d                                         ; $620b: $14

jr_004_620c:
    nop                                           ; $620c: $00
    inc d                                         ; $620d: $14
    nop                                           ; $620e: $00
    inc d                                         ; $620f: $14
    nop                                           ; $6210: $00
    inc d                                         ; $6211: $14
    nop                                           ; $6212: $00
    inc d                                         ; $6213: $14
    nop                                           ; $6214: $00
    inc d                                         ; $6215: $14
    nop                                           ; $6216: $00
    inc d                                         ; $6217: $14
    nop                                           ; $6218: $00
    inc d                                         ; $6219: $14
    nop                                           ; $621a: $00
    inc d                                         ; $621b: $14
    nop                                           ; $621c: $00
    inc d                                         ; $621d: $14
    nop                                           ; $621e: $00
    inc d                                         ; $621f: $14
    nop                                           ; $6220: $00
    inc d                                         ; $6221: $14
    nop                                           ; $6222: $00
    inc d                                         ; $6223: $14
    sub c                                         ; $6224: $91
    db $10                                        ; $6225: $10
    inc e                                         ; $6226: $1c
    db $10                                        ; $6227: $10
    inc e                                         ; $6228: $1c
    db $10                                        ; $6229: $10
    inc e                                         ; $622a: $1c
    db $10                                        ; $622b: $10
    add hl, bc                                    ; $622c: $09
    ld d, b                                       ; $622d: $50
    ld bc, $0110                                  ; $622e: $01 $10 $01
    db $10                                        ; $6231: $10
    add hl, bc                                    ; $6232: $09
    db $10                                        ; $6233: $10
    inc e                                         ; $6234: $1c
    db $10                                        ; $6235: $10
    inc e                                         ; $6236: $1c
    db $10                                        ; $6237: $10
    ld hl, $2210                                  ; $6238: $21 $10 $22
    stop                                          ; $623b: $10 $00
    inc d                                         ; $623d: $14
    nop                                           ; $623e: $00
    inc d                                         ; $623f: $14
    nop                                           ; $6240: $00
    inc d                                         ; $6241: $14
    nop                                           ; $6242: $00
    inc d                                         ; $6243: $14
    nop                                           ; $6244: $00
    inc d                                         ; $6245: $14
    nop                                           ; $6246: $00
    inc d                                         ; $6247: $14
    nop                                           ; $6248: $00
    inc d                                         ; $6249: $14
    nop                                           ; $624a: $00
    inc d                                         ; $624b: $14
    nop                                           ; $624c: $00
    inc d                                         ; $624d: $14
    nop                                           ; $624e: $00
    inc d                                         ; $624f: $14
    nop                                           ; $6250: $00
    inc d                                         ; $6251: $14
    nop                                           ; $6252: $00
    inc d                                         ; $6253: $14
    nop                                           ; $6254: $00
    inc d                                         ; $6255: $14
    nop                                           ; $6256: $00
    inc d                                         ; $6257: $14
    nop                                           ; $6258: $00
    inc d                                         ; $6259: $14
    nop                                           ; $625a: $00
    inc d                                         ; $625b: $14
    nop                                           ; $625c: $00
    inc d                                         ; $625d: $14
    nop                                           ; $625e: $00
    inc d                                         ; $625f: $14
    nop                                           ; $6260: $00
    inc d                                         ; $6261: $14
    nop                                           ; $6262: $00
    inc d                                         ; $6263: $14
    sub c                                         ; $6264: $91
    db $10                                        ; $6265: $10
    inc e                                         ; $6266: $1c
    db $10                                        ; $6267: $10
    inc e                                         ; $6268: $1c
    db $10                                        ; $6269: $10
    inc e                                         ; $626a: $1c
    db $10                                        ; $626b: $10
    add hl, bc                                    ; $626c: $09
    ld d, b                                       ; $626d: $50
    ld bc, $0110                                  ; $626e: $01 $10 $01
    db $10                                        ; $6271: $10
    add hl, bc                                    ; $6272: $09
    db $10                                        ; $6273: $10
    inc e                                         ; $6274: $1c
    db $10                                        ; $6275: $10
    inc e                                         ; $6276: $1c
    db $10                                        ; $6277: $10
    inc hl                                        ; $6278: $23
    db $10                                        ; $6279: $10
    inc e                                         ; $627a: $1c
    stop                                          ; $627b: $10 $00
    inc d                                         ; $627d: $14
    nop                                           ; $627e: $00
    inc d                                         ; $627f: $14
    nop                                           ; $6280: $00
    inc d                                         ; $6281: $14
    nop                                           ; $6282: $00
    inc d                                         ; $6283: $14
    nop                                           ; $6284: $00
    inc d                                         ; $6285: $14
    nop                                           ; $6286: $00
    inc d                                         ; $6287: $14
    nop                                           ; $6288: $00
    inc d                                         ; $6289: $14
    nop                                           ; $628a: $00
    inc d                                         ; $628b: $14
    nop                                           ; $628c: $00
    inc d                                         ; $628d: $14
    nop                                           ; $628e: $00
    inc d                                         ; $628f: $14
    nop                                           ; $6290: $00
    inc d                                         ; $6291: $14
    nop                                           ; $6292: $00
    inc d                                         ; $6293: $14
    nop                                           ; $6294: $00
    inc d                                         ; $6295: $14
    nop                                           ; $6296: $00
    inc d                                         ; $6297: $14
    nop                                           ; $6298: $00
    inc d                                         ; $6299: $14
    nop                                           ; $629a: $00
    inc d                                         ; $629b: $14
    nop                                           ; $629c: $00
    inc d                                         ; $629d: $14
    nop                                           ; $629e: $00
    inc d                                         ; $629f: $14
    nop                                           ; $62a0: $00
    inc d                                         ; $62a1: $14
    nop                                           ; $62a2: $00
    inc d                                         ; $62a3: $14
    sub c                                         ; $62a4: $91
    db $10                                        ; $62a5: $10
    inc e                                         ; $62a6: $1c
    db $10                                        ; $62a7: $10
    inc e                                         ; $62a8: $1c
    db $10                                        ; $62a9: $10
    inc e                                         ; $62aa: $1c
    db $10                                        ; $62ab: $10
    add hl, bc                                    ; $62ac: $09
    ld d, b                                       ; $62ad: $50
    ld bc, $0110                                  ; $62ae: $01 $10 $01
    db $10                                        ; $62b1: $10
    add hl, bc                                    ; $62b2: $09
    db $10                                        ; $62b3: $10
    inc e                                         ; $62b4: $1c
    db $10                                        ; $62b5: $10
    inc e                                         ; $62b6: $1c
    db $10                                        ; $62b7: $10
    inc h                                         ; $62b8: $24
    db $10                                        ; $62b9: $10
    dec h                                         ; $62ba: $25
    stop                                          ; $62bb: $10 $00
    inc d                                         ; $62bd: $14
    nop                                           ; $62be: $00
    inc d                                         ; $62bf: $14
    nop                                           ; $62c0: $00
    inc d                                         ; $62c1: $14
    nop                                           ; $62c2: $00
    inc d                                         ; $62c3: $14
    nop                                           ; $62c4: $00
    inc d                                         ; $62c5: $14
    nop                                           ; $62c6: $00
    inc d                                         ; $62c7: $14
    nop                                           ; $62c8: $00
    inc d                                         ; $62c9: $14
    nop                                           ; $62ca: $00
    inc d                                         ; $62cb: $14
    nop                                           ; $62cc: $00
    inc d                                         ; $62cd: $14
    nop                                           ; $62ce: $00
    inc d                                         ; $62cf: $14
    nop                                           ; $62d0: $00
    inc d                                         ; $62d1: $14
    nop                                           ; $62d2: $00
    inc d                                         ; $62d3: $14
    nop                                           ; $62d4: $00
    inc d                                         ; $62d5: $14
    nop                                           ; $62d6: $00
    inc d                                         ; $62d7: $14
    nop                                           ; $62d8: $00
    inc d                                         ; $62d9: $14
    nop                                           ; $62da: $00
    inc d                                         ; $62db: $14
    nop                                           ; $62dc: $00
    inc d                                         ; $62dd: $14
    nop                                           ; $62de: $00
    inc d                                         ; $62df: $14
    nop                                           ; $62e0: $00
    inc d                                         ; $62e1: $14
    nop                                           ; $62e2: $00
    inc d                                         ; $62e3: $14
    sub c                                         ; $62e4: $91
    db $10                                        ; $62e5: $10
    inc e                                         ; $62e6: $1c
    db $10                                        ; $62e7: $10
    inc e                                         ; $62e8: $1c
    db $10                                        ; $62e9: $10
    inc e                                         ; $62ea: $1c
    db $10                                        ; $62eb: $10
    add hl, bc                                    ; $62ec: $09
    ld d, b                                       ; $62ed: $50
    ld bc, $0110                                  ; $62ee: $01 $10 $01
    db $10                                        ; $62f1: $10
    add hl, bc                                    ; $62f2: $09
    db $10                                        ; $62f3: $10
    ld h, $10                                     ; $62f4: $26 $10
    inc e                                         ; $62f6: $1c
    db $10                                        ; $62f7: $10
    daa                                           ; $62f8: $27
    db $10                                        ; $62f9: $10
    jr z, jr_004_630c                             ; $62fa: $28 $10

    nop                                           ; $62fc: $00
    inc d                                         ; $62fd: $14
    nop                                           ; $62fe: $00
    inc d                                         ; $62ff: $14
    add hl, hl                                    ; $6300: $29
    inc d                                         ; $6301: $14
    ld a, [hl+]                                   ; $6302: $2a
    inc d                                         ; $6303: $14
    dec hl                                        ; $6304: $2b
    inc d                                         ; $6305: $14
    inc l                                         ; $6306: $2c
    inc d                                         ; $6307: $14
    dec l                                         ; $6308: $2d
    inc d                                         ; $6309: $14
    ld l, $14                                     ; $630a: $2e $14

jr_004_630c:
    cpl                                           ; $630c: $2f
    inc d                                         ; $630d: $14
    jr nc, jr_004_6324                            ; $630e: $30 $14

    sub d                                         ; $6310: $92
    inc d                                         ; $6311: $14
    sub d                                         ; $6312: $92
    inc d                                         ; $6313: $14
    sub d                                         ; $6314: $92
    inc d                                         ; $6315: $14
    sub d                                         ; $6316: $92
    inc d                                         ; $6317: $14
    sub d                                         ; $6318: $92
    inc d                                         ; $6319: $14
    sub d                                         ; $631a: $92
    inc d                                         ; $631b: $14
    sub d                                         ; $631c: $92
    inc d                                         ; $631d: $14
    sub e                                         ; $631e: $93
    inc d                                         ; $631f: $14
    nop                                           ; $6320: $00
    inc d                                         ; $6321: $14
    nop                                           ; $6322: $00
    inc d                                         ; $6323: $14

jr_004_6324:
    sub c                                         ; $6324: $91
    db $10                                        ; $6325: $10
    inc e                                         ; $6326: $1c
    db $10                                        ; $6327: $10
    inc e                                         ; $6328: $1c
    db $10                                        ; $6329: $10
    inc e                                         ; $632a: $1c
    db $10                                        ; $632b: $10
    add hl, bc                                    ; $632c: $09
    ld d, b                                       ; $632d: $50
    ld bc, $0110                                  ; $632e: $01 $10 $01
    db $10                                        ; $6331: $10
    add hl, bc                                    ; $6332: $09
    db $10                                        ; $6333: $10
    ld sp, $3210                                  ; $6334: $31 $10 $32
    db $10                                        ; $6337: $10
    inc sp                                        ; $6338: $33
    db $10                                        ; $6339: $10
    inc [hl]                                      ; $633a: $34
    stop                                          ; $633b: $10 $00
    inc d                                         ; $633d: $14
    nop                                           ; $633e: $00
    inc d                                         ; $633f: $14
    dec [hl]                                      ; $6340: $35
    inc d                                         ; $6341: $14
    ld [hl], $14                                  ; $6342: $36 $14
    scf                                           ; $6344: $37
    inc d                                         ; $6345: $14
    jr c, jr_004_635c                             ; $6346: $38 $14

    add hl, sp                                    ; $6348: $39
    inc d                                         ; $6349: $14
    ld a, [hl-]                                   ; $634a: $3a
    inc d                                         ; $634b: $14
    dec sp                                        ; $634c: $3b
    inc d                                         ; $634d: $14
    inc a                                         ; $634e: $3c
    inc d                                         ; $634f: $14
    sub h                                         ; $6350: $94
    inc d                                         ; $6351: $14
    sub h                                         ; $6352: $94
    inc d                                         ; $6353: $14
    sub h                                         ; $6354: $94
    inc d                                         ; $6355: $14
    sub h                                         ; $6356: $94
    inc d                                         ; $6357: $14
    sub h                                         ; $6358: $94
    inc d                                         ; $6359: $14
    sub h                                         ; $635a: $94
    inc d                                         ; $635b: $14

jr_004_635c:
    sub h                                         ; $635c: $94
    inc d                                         ; $635d: $14
    sub l                                         ; $635e: $95
    inc d                                         ; $635f: $14
    nop                                           ; $6360: $00
    inc d                                         ; $6361: $14
    nop                                           ; $6362: $00
    inc d                                         ; $6363: $14
    sub c                                         ; $6364: $91
    db $10                                        ; $6365: $10
    inc e                                         ; $6366: $1c
    db $10                                        ; $6367: $10
    inc e                                         ; $6368: $1c
    db $10                                        ; $6369: $10
    inc e                                         ; $636a: $1c
    db $10                                        ; $636b: $10
    add hl, bc                                    ; $636c: $09
    ld d, b                                       ; $636d: $50
    ld bc, $0110                                  ; $636e: $01 $10 $01
    db $10                                        ; $6371: $10
    add hl, bc                                    ; $6372: $09
    db $10                                        ; $6373: $10
    inc e                                         ; $6374: $1c
    db $10                                        ; $6375: $10
    inc e                                         ; $6376: $1c
    db $10                                        ; $6377: $10
    inc e                                         ; $6378: $1c
    db $10                                        ; $6379: $10
    dec e                                         ; $637a: $1d
    stop                                          ; $637b: $10 $00
    inc d                                         ; $637d: $14
    nop                                           ; $637e: $00
    inc d                                         ; $637f: $14
    dec a                                         ; $6380: $3d
    inc d                                         ; $6381: $14
    ld a, $14                                     ; $6382: $3e $14
    ccf                                           ; $6384: $3f
    inc d                                         ; $6385: $14
    ld b, b                                       ; $6386: $40
    inc d                                         ; $6387: $14
    ld b, c                                       ; $6388: $41
    inc d                                         ; $6389: $14
    ld b, d                                       ; $638a: $42
    inc d                                         ; $638b: $14
    ld b, e                                       ; $638c: $43
    inc d                                         ; $638d: $14
    ld b, h                                       ; $638e: $44
    inc d                                         ; $638f: $14
    sub [hl]                                      ; $6390: $96
    inc d                                         ; $6391: $14
    sub a                                         ; $6392: $97
    inc d                                         ; $6393: $14
    sbc b                                         ; $6394: $98
    inc d                                         ; $6395: $14
    sbc c                                         ; $6396: $99
    inc d                                         ; $6397: $14
    sbc d                                         ; $6398: $9a
    inc d                                         ; $6399: $14
    sbc e                                         ; $639a: $9b
    inc d                                         ; $639b: $14
    sbc h                                         ; $639c: $9c
    inc d                                         ; $639d: $14
    sub l                                         ; $639e: $95
    inc d                                         ; $639f: $14
    nop                                           ; $63a0: $00
    inc d                                         ; $63a1: $14
    nop                                           ; $63a2: $00
    inc d                                         ; $63a3: $14
    sub c                                         ; $63a4: $91
    db $10                                        ; $63a5: $10
    inc e                                         ; $63a6: $1c
    db $10                                        ; $63a7: $10
    inc e                                         ; $63a8: $1c
    db $10                                        ; $63a9: $10
    inc e                                         ; $63aa: $1c
    db $10                                        ; $63ab: $10
    add hl, bc                                    ; $63ac: $09
    ld d, b                                       ; $63ad: $50
    ld bc, $0110                                  ; $63ae: $01 $10 $01
    db $10                                        ; $63b1: $10
    add hl, bc                                    ; $63b2: $09
    db $10                                        ; $63b3: $10
    inc e                                         ; $63b4: $1c
    db $10                                        ; $63b5: $10
    inc e                                         ; $63b6: $1c
    db $10                                        ; $63b7: $10
    inc e                                         ; $63b8: $1c
    db $10                                        ; $63b9: $10
    dec e                                         ; $63ba: $1d
    stop                                          ; $63bb: $10 $00
    inc d                                         ; $63bd: $14
    nop                                           ; $63be: $00
    inc d                                         ; $63bf: $14
    dec a                                         ; $63c0: $3d
    inc d                                         ; $63c1: $14
    ld b, l                                       ; $63c2: $45
    inc d                                         ; $63c3: $14
    ld b, [hl]                                    ; $63c4: $46
    inc d                                         ; $63c5: $14
    ld b, a                                       ; $63c6: $47
    inc d                                         ; $63c7: $14
    ld c, b                                       ; $63c8: $48
    inc d                                         ; $63c9: $14
    ld c, c                                       ; $63ca: $49
    inc d                                         ; $63cb: $14
    ld c, d                                       ; $63cc: $4a
    inc d                                         ; $63cd: $14
    ld c, e                                       ; $63ce: $4b
    inc d                                         ; $63cf: $14
    sbc l                                         ; $63d0: $9d
    inc d                                         ; $63d1: $14
    ld c, c                                       ; $63d2: $49
    inc d                                         ; $63d3: $14
    sbc [hl]                                      ; $63d4: $9e
    inc d                                         ; $63d5: $14
    sbc a                                         ; $63d6: $9f
    inc d                                         ; $63d7: $14
    and b                                         ; $63d8: $a0
    inc d                                         ; $63d9: $14
    and c                                         ; $63da: $a1
    inc d                                         ; $63db: $14
    and d                                         ; $63dc: $a2
    inc d                                         ; $63dd: $14
    sub l                                         ; $63de: $95
    inc d                                         ; $63df: $14
    nop                                           ; $63e0: $00
    inc d                                         ; $63e1: $14
    nop                                           ; $63e2: $00
    inc d                                         ; $63e3: $14
    sub c                                         ; $63e4: $91
    db $10                                        ; $63e5: $10
    inc e                                         ; $63e6: $1c
    db $10                                        ; $63e7: $10
    inc e                                         ; $63e8: $1c
    db $10                                        ; $63e9: $10
    inc e                                         ; $63ea: $1c
    db $10                                        ; $63eb: $10
    add hl, bc                                    ; $63ec: $09
    ld d, b                                       ; $63ed: $50
    ld bc, $0110                                  ; $63ee: $01 $10 $01
    db $10                                        ; $63f1: $10
    add hl, bc                                    ; $63f2: $09
    db $10                                        ; $63f3: $10
    inc e                                         ; $63f4: $1c
    db $10                                        ; $63f5: $10
    inc e                                         ; $63f6: $1c
    db $10                                        ; $63f7: $10
    inc e                                         ; $63f8: $1c
    db $10                                        ; $63f9: $10
    dec e                                         ; $63fa: $1d
    stop                                          ; $63fb: $10 $00
    inc d                                         ; $63fd: $14
    nop                                           ; $63fe: $00
    inc d                                         ; $63ff: $14
    dec [hl]                                      ; $6400: $35
    sub h                                         ; $6401: $94
    ld c, h                                       ; $6402: $4c
    inc d                                         ; $6403: $14
    ld c, l                                       ; $6404: $4d
    inc d                                         ; $6405: $14
    ld c, [hl]                                    ; $6406: $4e
    inc d                                         ; $6407: $14
    ld c, a                                       ; $6408: $4f
    inc d                                         ; $6409: $14
    ld d, b                                       ; $640a: $50
    inc d                                         ; $640b: $14
    ld d, c                                       ; $640c: $51
    inc d                                         ; $640d: $14
    ld d, d                                       ; $640e: $52
    inc d                                         ; $640f: $14
    and e                                         ; $6410: $a3
    inc d                                         ; $6411: $14
    and h                                         ; $6412: $a4
    inc d                                         ; $6413: $14
    and l                                         ; $6414: $a5
    inc d                                         ; $6415: $14
    and [hl]                                      ; $6416: $a6
    inc d                                         ; $6417: $14
    and a                                         ; $6418: $a7
    inc d                                         ; $6419: $14
    xor b                                         ; $641a: $a8
    inc d                                         ; $641b: $14
    xor c                                         ; $641c: $a9
    inc d                                         ; $641d: $14
    sub l                                         ; $641e: $95
    inc d                                         ; $641f: $14
    nop                                           ; $6420: $00
    inc d                                         ; $6421: $14
    nop                                           ; $6422: $00
    inc d                                         ; $6423: $14
    sub c                                         ; $6424: $91
    db $10                                        ; $6425: $10
    inc e                                         ; $6426: $1c
    db $10                                        ; $6427: $10
    inc e                                         ; $6428: $1c
    db $10                                        ; $6429: $10
    inc e                                         ; $642a: $1c
    db $10                                        ; $642b: $10
    add hl, bc                                    ; $642c: $09
    ld d, b                                       ; $642d: $50
    ld bc, $0110                                  ; $642e: $01 $10 $01
    db $10                                        ; $6431: $10
    add hl, bc                                    ; $6432: $09
    db $10                                        ; $6433: $10
    inc e                                         ; $6434: $1c
    db $10                                        ; $6435: $10
    inc e                                         ; $6436: $1c
    db $10                                        ; $6437: $10
    inc e                                         ; $6438: $1c
    db $10                                        ; $6439: $10
    dec e                                         ; $643a: $1d
    stop                                          ; $643b: $10 $00
    inc d                                         ; $643d: $14
    nop                                           ; $643e: $00
    inc d                                         ; $643f: $14
    ld d, e                                       ; $6440: $53
    inc d                                         ; $6441: $14
    ld d, h                                       ; $6442: $54
    inc d                                         ; $6443: $14
    ld d, h                                       ; $6444: $54
    inc d                                         ; $6445: $14
    ld d, h                                       ; $6446: $54
    inc d                                         ; $6447: $14
    ld d, h                                       ; $6448: $54
    inc d                                         ; $6449: $14
    ld d, h                                       ; $644a: $54
    inc d                                         ; $644b: $14
    ld d, h                                       ; $644c: $54
    inc d                                         ; $644d: $14
    ld d, h                                       ; $644e: $54
    inc d                                         ; $644f: $14
    ld d, h                                       ; $6450: $54
    inc d                                         ; $6451: $14
    ld d, h                                       ; $6452: $54
    inc d                                         ; $6453: $14
    ld d, h                                       ; $6454: $54
    inc d                                         ; $6455: $14
    ld d, h                                       ; $6456: $54
    inc d                                         ; $6457: $14
    ld d, h                                       ; $6458: $54
    inc d                                         ; $6459: $14
    ld d, h                                       ; $645a: $54
    inc d                                         ; $645b: $14
    ld d, h                                       ; $645c: $54
    inc d                                         ; $645d: $14
    xor d                                         ; $645e: $aa
    inc d                                         ; $645f: $14
    nop                                           ; $6460: $00
    inc d                                         ; $6461: $14
    nop                                           ; $6462: $00
    inc d                                         ; $6463: $14
    sub c                                         ; $6464: $91
    db $10                                        ; $6465: $10
    inc e                                         ; $6466: $1c
    db $10                                        ; $6467: $10
    inc e                                         ; $6468: $1c
    db $10                                        ; $6469: $10
    inc e                                         ; $646a: $1c
    db $10                                        ; $646b: $10
    add hl, bc                                    ; $646c: $09
    ld d, b                                       ; $646d: $50
    ld bc, $0110                                  ; $646e: $01 $10 $01
    db $10                                        ; $6471: $10
    add hl, bc                                    ; $6472: $09
    db $10                                        ; $6473: $10
    inc e                                         ; $6474: $1c
    db $10                                        ; $6475: $10
    inc e                                         ; $6476: $1c
    db $10                                        ; $6477: $10
    inc e                                         ; $6478: $1c
    db $10                                        ; $6479: $10
    dec e                                         ; $647a: $1d
    stop                                          ; $647b: $10 $00
    inc d                                         ; $647d: $14
    nop                                           ; $647e: $00
    inc d                                         ; $647f: $14
    nop                                           ; $6480: $00
    inc d                                         ; $6481: $14
    nop                                           ; $6482: $00
    inc d                                         ; $6483: $14
    nop                                           ; $6484: $00
    inc d                                         ; $6485: $14
    nop                                           ; $6486: $00
    inc d                                         ; $6487: $14
    nop                                           ; $6488: $00
    inc d                                         ; $6489: $14
    nop                                           ; $648a: $00
    inc d                                         ; $648b: $14
    nop                                           ; $648c: $00
    inc d                                         ; $648d: $14
    nop                                           ; $648e: $00
    inc d                                         ; $648f: $14
    nop                                           ; $6490: $00
    inc d                                         ; $6491: $14
    nop                                           ; $6492: $00
    inc d                                         ; $6493: $14
    nop                                           ; $6494: $00
    inc d                                         ; $6495: $14
    nop                                           ; $6496: $00
    inc d                                         ; $6497: $14
    nop                                           ; $6498: $00
    inc d                                         ; $6499: $14
    nop                                           ; $649a: $00
    inc d                                         ; $649b: $14
    nop                                           ; $649c: $00
    inc d                                         ; $649d: $14
    nop                                           ; $649e: $00
    inc d                                         ; $649f: $14
    nop                                           ; $64a0: $00
    inc d                                         ; $64a1: $14
    nop                                           ; $64a2: $00
    inc d                                         ; $64a3: $14
    sub c                                         ; $64a4: $91
    db $10                                        ; $64a5: $10
    inc e                                         ; $64a6: $1c
    db $10                                        ; $64a7: $10
    inc e                                         ; $64a8: $1c
    db $10                                        ; $64a9: $10
    inc e                                         ; $64aa: $1c
    db $10                                        ; $64ab: $10
    add hl, bc                                    ; $64ac: $09
    ld d, b                                       ; $64ad: $50
    ld bc, $0110                                  ; $64ae: $01 $10 $01
    db $10                                        ; $64b1: $10
    add hl, bc                                    ; $64b2: $09
    db $10                                        ; $64b3: $10
    inc e                                         ; $64b4: $1c
    db $10                                        ; $64b5: $10
    inc e                                         ; $64b6: $1c
    db $10                                        ; $64b7: $10
    inc e                                         ; $64b8: $1c
    db $10                                        ; $64b9: $10
    dec e                                         ; $64ba: $1d
    stop                                          ; $64bb: $10 $00
    inc d                                         ; $64bd: $14
    nop                                           ; $64be: $00
    inc d                                         ; $64bf: $14
    nop                                           ; $64c0: $00
    inc d                                         ; $64c1: $14
    nop                                           ; $64c2: $00
    inc d                                         ; $64c3: $14
    nop                                           ; $64c4: $00
    inc d                                         ; $64c5: $14
    nop                                           ; $64c6: $00
    inc d                                         ; $64c7: $14
    nop                                           ; $64c8: $00
    inc d                                         ; $64c9: $14
    nop                                           ; $64ca: $00
    inc d                                         ; $64cb: $14
    nop                                           ; $64cc: $00
    inc d                                         ; $64cd: $14
    nop                                           ; $64ce: $00
    inc d                                         ; $64cf: $14
    nop                                           ; $64d0: $00
    inc d                                         ; $64d1: $14
    nop                                           ; $64d2: $00
    inc d                                         ; $64d3: $14
    nop                                           ; $64d4: $00
    inc d                                         ; $64d5: $14
    nop                                           ; $64d6: $00
    inc d                                         ; $64d7: $14
    nop                                           ; $64d8: $00
    inc d                                         ; $64d9: $14
    nop                                           ; $64da: $00
    inc d                                         ; $64db: $14
    nop                                           ; $64dc: $00
    inc d                                         ; $64dd: $14
    nop                                           ; $64de: $00
    inc d                                         ; $64df: $14
    nop                                           ; $64e0: $00
    inc d                                         ; $64e1: $14
    nop                                           ; $64e2: $00
    inc d                                         ; $64e3: $14
    sub c                                         ; $64e4: $91
    db $10                                        ; $64e5: $10
    inc e                                         ; $64e6: $1c
    db $10                                        ; $64e7: $10
    inc e                                         ; $64e8: $1c
    db $10                                        ; $64e9: $10
    inc e                                         ; $64ea: $1c
    db $10                                        ; $64eb: $10
    add hl, bc                                    ; $64ec: $09
    ld d, b                                       ; $64ed: $50
    ld bc, $0110                                  ; $64ee: $01 $10 $01
    db $10                                        ; $64f1: $10
    add hl, bc                                    ; $64f2: $09
    db $10                                        ; $64f3: $10
    inc e                                         ; $64f4: $1c
    db $10                                        ; $64f5: $10
    inc e                                         ; $64f6: $1c
    db $10                                        ; $64f7: $10
    inc e                                         ; $64f8: $1c
    db $10                                        ; $64f9: $10
    dec e                                         ; $64fa: $1d
    stop                                          ; $64fb: $10 $00
    inc d                                         ; $64fd: $14
    nop                                           ; $64fe: $00
    inc d                                         ; $64ff: $14
    nop                                           ; $6500: $00
    inc d                                         ; $6501: $14
    nop                                           ; $6502: $00
    inc d                                         ; $6503: $14
    nop                                           ; $6504: $00
    inc d                                         ; $6505: $14
    nop                                           ; $6506: $00
    inc d                                         ; $6507: $14
    nop                                           ; $6508: $00
    inc d                                         ; $6509: $14
    nop                                           ; $650a: $00
    inc d                                         ; $650b: $14
    nop                                           ; $650c: $00
    inc d                                         ; $650d: $14
    nop                                           ; $650e: $00
    inc d                                         ; $650f: $14
    nop                                           ; $6510: $00
    inc d                                         ; $6511: $14
    nop                                           ; $6512: $00
    inc d                                         ; $6513: $14
    nop                                           ; $6514: $00
    inc d                                         ; $6515: $14
    nop                                           ; $6516: $00
    inc d                                         ; $6517: $14
    nop                                           ; $6518: $00
    inc d                                         ; $6519: $14
    nop                                           ; $651a: $00
    inc d                                         ; $651b: $14
    nop                                           ; $651c: $00
    inc d                                         ; $651d: $14
    nop                                           ; $651e: $00
    inc d                                         ; $651f: $14
    nop                                           ; $6520: $00
    inc d                                         ; $6521: $14
    nop                                           ; $6522: $00
    inc d                                         ; $6523: $14
    sub c                                         ; $6524: $91
    db $10                                        ; $6525: $10
    inc e                                         ; $6526: $1c
    db $10                                        ; $6527: $10
    inc e                                         ; $6528: $1c
    db $10                                        ; $6529: $10
    inc e                                         ; $652a: $1c
    db $10                                        ; $652b: $10
    add hl, bc                                    ; $652c: $09
    ld d, b                                       ; $652d: $50
    ld bc, $0110                                  ; $652e: $01 $10 $01
    db $10                                        ; $6531: $10
    add hl, bc                                    ; $6532: $09
    db $10                                        ; $6533: $10
    inc e                                         ; $6534: $1c
    db $10                                        ; $6535: $10
    inc e                                         ; $6536: $1c
    db $10                                        ; $6537: $10
    inc e                                         ; $6538: $1c
    db $10                                        ; $6539: $10
    dec e                                         ; $653a: $1d
    stop                                          ; $653b: $10 $00
    inc d                                         ; $653d: $14
    nop                                           ; $653e: $00
    inc d                                         ; $653f: $14
    nop                                           ; $6540: $00
    inc d                                         ; $6541: $14
    nop                                           ; $6542: $00
    inc d                                         ; $6543: $14
    nop                                           ; $6544: $00
    inc d                                         ; $6545: $14
    nop                                           ; $6546: $00
    inc d                                         ; $6547: $14
    nop                                           ; $6548: $00
    inc d                                         ; $6549: $14
    nop                                           ; $654a: $00
    inc d                                         ; $654b: $14
    nop                                           ; $654c: $00
    inc d                                         ; $654d: $14
    nop                                           ; $654e: $00
    inc d                                         ; $654f: $14
    nop                                           ; $6550: $00
    inc d                                         ; $6551: $14
    nop                                           ; $6552: $00
    inc d                                         ; $6553: $14
    nop                                           ; $6554: $00
    inc d                                         ; $6555: $14
    nop                                           ; $6556: $00
    inc d                                         ; $6557: $14
    nop                                           ; $6558: $00
    inc d                                         ; $6559: $14
    nop                                           ; $655a: $00
    inc d                                         ; $655b: $14
    nop                                           ; $655c: $00
    inc d                                         ; $655d: $14
    nop                                           ; $655e: $00
    inc d                                         ; $655f: $14
    nop                                           ; $6560: $00
    inc d                                         ; $6561: $14
    nop                                           ; $6562: $00
    inc d                                         ; $6563: $14
    sub c                                         ; $6564: $91
    db $10                                        ; $6565: $10
    inc e                                         ; $6566: $1c
    db $10                                        ; $6567: $10
    inc e                                         ; $6568: $1c
    db $10                                        ; $6569: $10
    inc e                                         ; $656a: $1c
    db $10                                        ; $656b: $10
    add hl, bc                                    ; $656c: $09
    ld d, b                                       ; $656d: $50
    ld bc, $0110                                  ; $656e: $01 $10 $01
    db $10                                        ; $6571: $10
    add hl, bc                                    ; $6572: $09
    db $10                                        ; $6573: $10
    inc e                                         ; $6574: $1c
    db $10                                        ; $6575: $10
    inc e                                         ; $6576: $1c
    db $10                                        ; $6577: $10
    inc e                                         ; $6578: $1c
    db $10                                        ; $6579: $10
    dec e                                         ; $657a: $1d
    stop                                          ; $657b: $10 $00
    inc d                                         ; $657d: $14
    nop                                           ; $657e: $00
    inc d                                         ; $657f: $14
    nop                                           ; $6580: $00
    inc d                                         ; $6581: $14
    nop                                           ; $6582: $00
    inc d                                         ; $6583: $14
    nop                                           ; $6584: $00
    inc d                                         ; $6585: $14
    nop                                           ; $6586: $00
    inc d                                         ; $6587: $14
    nop                                           ; $6588: $00
    inc d                                         ; $6589: $14
    nop                                           ; $658a: $00
    inc d                                         ; $658b: $14
    nop                                           ; $658c: $00
    inc d                                         ; $658d: $14
    nop                                           ; $658e: $00
    inc d                                         ; $658f: $14
    nop                                           ; $6590: $00
    inc d                                         ; $6591: $14
    nop                                           ; $6592: $00
    inc d                                         ; $6593: $14
    nop                                           ; $6594: $00
    inc d                                         ; $6595: $14
    nop                                           ; $6596: $00
    inc d                                         ; $6597: $14
    nop                                           ; $6598: $00
    inc d                                         ; $6599: $14
    nop                                           ; $659a: $00
    inc d                                         ; $659b: $14
    nop                                           ; $659c: $00
    inc d                                         ; $659d: $14
    nop                                           ; $659e: $00
    inc d                                         ; $659f: $14
    nop                                           ; $65a0: $00
    inc d                                         ; $65a1: $14
    nop                                           ; $65a2: $00
    inc d                                         ; $65a3: $14
    sub c                                         ; $65a4: $91
    db $10                                        ; $65a5: $10
    inc e                                         ; $65a6: $1c
    db $10                                        ; $65a7: $10
    inc e                                         ; $65a8: $1c
    db $10                                        ; $65a9: $10
    inc e                                         ; $65aa: $1c
    db $10                                        ; $65ab: $10
    add hl, bc                                    ; $65ac: $09
    ld d, b                                       ; $65ad: $50
    ld bc, $0110                                  ; $65ae: $01 $10 $01
    db $10                                        ; $65b1: $10
    add hl, bc                                    ; $65b2: $09
    db $10                                        ; $65b3: $10
    inc e                                         ; $65b4: $1c
    db $10                                        ; $65b5: $10
    inc e                                         ; $65b6: $1c
    db $10                                        ; $65b7: $10
    inc e                                         ; $65b8: $1c
    db $10                                        ; $65b9: $10
    dec e                                         ; $65ba: $1d
    stop                                          ; $65bb: $10 $00
    inc d                                         ; $65bd: $14
    nop                                           ; $65be: $00
    inc d                                         ; $65bf: $14
    nop                                           ; $65c0: $00
    inc d                                         ; $65c1: $14
    nop                                           ; $65c2: $00
    inc d                                         ; $65c3: $14
    nop                                           ; $65c4: $00
    inc d                                         ; $65c5: $14
    nop                                           ; $65c6: $00
    inc d                                         ; $65c7: $14
    nop                                           ; $65c8: $00
    inc d                                         ; $65c9: $14
    nop                                           ; $65ca: $00
    inc d                                         ; $65cb: $14
    nop                                           ; $65cc: $00
    inc d                                         ; $65cd: $14
    nop                                           ; $65ce: $00
    inc d                                         ; $65cf: $14
    nop                                           ; $65d0: $00
    inc d                                         ; $65d1: $14
    nop                                           ; $65d2: $00
    inc d                                         ; $65d3: $14
    nop                                           ; $65d4: $00
    inc d                                         ; $65d5: $14
    nop                                           ; $65d6: $00
    inc d                                         ; $65d7: $14
    nop                                           ; $65d8: $00
    inc d                                         ; $65d9: $14
    nop                                           ; $65da: $00
    inc d                                         ; $65db: $14
    nop                                           ; $65dc: $00
    inc d                                         ; $65dd: $14
    nop                                           ; $65de: $00
    inc d                                         ; $65df: $14
    nop                                           ; $65e0: $00
    inc d                                         ; $65e1: $14
    nop                                           ; $65e2: $00
    inc d                                         ; $65e3: $14
    sub c                                         ; $65e4: $91
    db $10                                        ; $65e5: $10
    inc e                                         ; $65e6: $1c
    db $10                                        ; $65e7: $10
    inc e                                         ; $65e8: $1c
    db $10                                        ; $65e9: $10
    inc e                                         ; $65ea: $1c
    db $10                                        ; $65eb: $10
    xor e                                         ; $65ec: $ab
    db $10                                        ; $65ed: $10
    ld bc, $0110                                  ; $65ee: $01 $10 $01
    db $10                                        ; $65f1: $10
    add hl, bc                                    ; $65f2: $09
    db $10                                        ; $65f3: $10
    inc e                                         ; $65f4: $1c
    db $10                                        ; $65f5: $10
    inc e                                         ; $65f6: $1c
    db $10                                        ; $65f7: $10
    inc e                                         ; $65f8: $1c
    db $10                                        ; $65f9: $10
    ld d, l                                       ; $65fa: $55
    db $10                                        ; $65fb: $10
    ld d, [hl]                                    ; $65fc: $56
    db $10                                        ; $65fd: $10
    ld d, [hl]                                    ; $65fe: $56
    db $10                                        ; $65ff: $10
    ld d, [hl]                                    ; $6600: $56
    db $10                                        ; $6601: $10
    ld d, [hl]                                    ; $6602: $56
    db $10                                        ; $6603: $10
    ld d, [hl]                                    ; $6604: $56
    db $10                                        ; $6605: $10
    ld d, a                                       ; $6606: $57
    db $10                                        ; $6607: $10
    ld e, b                                       ; $6608: $58
    db $10                                        ; $6609: $10
    ld e, c                                       ; $660a: $59
    db $10                                        ; $660b: $10
    ld e, d                                       ; $660c: $5a
    db $10                                        ; $660d: $10
    ld e, e                                       ; $660e: $5b
    db $10                                        ; $660f: $10
    xor h                                         ; $6610: $ac
    db $10                                        ; $6611: $10
    xor l                                         ; $6612: $ad
    db $10                                        ; $6613: $10
    xor [hl]                                      ; $6614: $ae
    db $10                                        ; $6615: $10
    xor a                                         ; $6616: $af
    db $10                                        ; $6617: $10
    ld d, [hl]                                    ; $6618: $56
    db $10                                        ; $6619: $10
    ld d, [hl]                                    ; $661a: $56
    db $10                                        ; $661b: $10
    ld d, [hl]                                    ; $661c: $56
    db $10                                        ; $661d: $10
    ld d, [hl]                                    ; $661e: $56
    db $10                                        ; $661f: $10
    ld d, [hl]                                    ; $6620: $56
    db $10                                        ; $6621: $10
    ld d, [hl]                                    ; $6622: $56
    db $10                                        ; $6623: $10
    ld d, l                                       ; $6624: $55
    ld d, b                                       ; $6625: $50
    inc e                                         ; $6626: $1c
    db $10                                        ; $6627: $10
    inc e                                         ; $6628: $1c
    db $10                                        ; $6629: $10
    or b                                          ; $662a: $b0
    db $10                                        ; $662b: $10
    or c                                          ; $662c: $b1
    db $10                                        ; $662d: $10
    ld bc, $0110                                  ; $662e: $01 $10 $01
    db $10                                        ; $6631: $10
    ld e, h                                       ; $6632: $5c
    db $10                                        ; $6633: $10
    ld e, l                                       ; $6634: $5d
    db $10                                        ; $6635: $10
    ld e, l                                       ; $6636: $5d
    db $10                                        ; $6637: $10
    ld e, l                                       ; $6638: $5d
    db $10                                        ; $6639: $10
    ld e, l                                       ; $663a: $5d
    db $10                                        ; $663b: $10
    ld e, l                                       ; $663c: $5d
    db $10                                        ; $663d: $10
    ld e, l                                       ; $663e: $5d
    db $10                                        ; $663f: $10
    ld e, l                                       ; $6640: $5d
    db $10                                        ; $6641: $10
    ld e, l                                       ; $6642: $5d
    db $10                                        ; $6643: $10
    ld e, [hl]                                    ; $6644: $5e
    db $10                                        ; $6645: $10
    ld e, a                                       ; $6646: $5f
    db $10                                        ; $6647: $10
    ld h, b                                       ; $6648: $60
    db $10                                        ; $6649: $10
    ld h, c                                       ; $664a: $61
    db $10                                        ; $664b: $10
    ld h, d                                       ; $664c: $62
    db $10                                        ; $664d: $10
    ld h, e                                       ; $664e: $63
    db $10                                        ; $664f: $10
    or d                                          ; $6650: $b2
    db $10                                        ; $6651: $10
    or e                                          ; $6652: $b3
    db $10                                        ; $6653: $10
    or h                                          ; $6654: $b4
    db $10                                        ; $6655: $10
    or l                                          ; $6656: $b5
    db $10                                        ; $6657: $10
    or [hl]                                       ; $6658: $b6
    db $10                                        ; $6659: $10
    or a                                          ; $665a: $b7
    db $10                                        ; $665b: $10
    ld e, l                                       ; $665c: $5d
    db $10                                        ; $665d: $10
    ld e, l                                       ; $665e: $5d
    db $10                                        ; $665f: $10
    ld e, l                                       ; $6660: $5d
    db $10                                        ; $6661: $10
    ld e, l                                       ; $6662: $5d
    db $10                                        ; $6663: $10
    ld e, l                                       ; $6664: $5d
    db $10                                        ; $6665: $10
    ld e, l                                       ; $6666: $5d
    db $10                                        ; $6667: $10
    cp b                                          ; $6668: $b8
    db $10                                        ; $6669: $10
    cp c                                          ; $666a: $b9
    db $10                                        ; $666b: $10
    ld bc, $0110                                  ; $666c: $01 $10 $01
    db $10                                        ; $666f: $10
    ld bc, $0110                                  ; $6670: $01 $10 $01
    db $10                                        ; $6673: $10
    ld bc, $0110                                  ; $6674: $01 $10 $01
    db $10                                        ; $6677: $10
    ld bc, $0110                                  ; $6678: $01 $10 $01
    db $10                                        ; $667b: $10
    ld bc, $0110                                  ; $667c: $01 $10 $01
    db $10                                        ; $667f: $10
    ld bc, $0110                                  ; $6680: $01 $10 $01
    db $10                                        ; $6683: $10
    ld h, h                                       ; $6684: $64
    db $10                                        ; $6685: $10
    ld h, l                                       ; $6686: $65
    db $10                                        ; $6687: $10
    ld h, [hl]                                    ; $6688: $66
    db $10                                        ; $6689: $10
    ld h, a                                       ; $668a: $67
    db $10                                        ; $668b: $10
    ld l, b                                       ; $668c: $68
    db $10                                        ; $668d: $10
    ld l, c                                       ; $668e: $69
    db $10                                        ; $668f: $10
    cp d                                          ; $6690: $ba
    db $10                                        ; $6691: $10
    cp e                                          ; $6692: $bb
    db $10                                        ; $6693: $10
    cp h                                          ; $6694: $bc
    db $10                                        ; $6695: $10
    cp l                                          ; $6696: $bd
    db $10                                        ; $6697: $10
    cp [hl]                                       ; $6698: $be
    db $10                                        ; $6699: $10
    cp a                                          ; $669a: $bf
    db $10                                        ; $669b: $10
    ld bc, $0110                                  ; $669c: $01 $10 $01
    db $10                                        ; $669f: $10
    ld bc, $0110                                  ; $66a0: $01 $10 $01
    db $10                                        ; $66a3: $10
    ld bc, $0110                                  ; $66a4: $01 $10 $01
    db $10                                        ; $66a7: $10
    ld bc, $0110                                  ; $66a8: $01 $10 $01
    db $10                                        ; $66ab: $10
    ld bc, $0110                                  ; $66ac: $01 $10 $01
    db $10                                        ; $66af: $10
    ld bc, $0110                                  ; $66b0: $01 $10 $01
    db $10                                        ; $66b3: $10
    ld l, d                                       ; $66b4: $6a
    db $10                                        ; $66b5: $10
    ld l, e                                       ; $66b6: $6b
    db $10                                        ; $66b7: $10
    ld l, h                                       ; $66b8: $6c
    db $10                                        ; $66b9: $10
    ld l, l                                       ; $66ba: $6d
    db $10                                        ; $66bb: $10
    ld l, [hl]                                    ; $66bc: $6e
    db $10                                        ; $66bd: $10
    ld l, a                                       ; $66be: $6f
    db $10                                        ; $66bf: $10
    ld [hl], b                                    ; $66c0: $70
    db $10                                        ; $66c1: $10
    ld [hl], c                                    ; $66c2: $71
    db $10                                        ; $66c3: $10
    ld [hl], d                                    ; $66c4: $72
    db $10                                        ; $66c5: $10
    ld [hl], e                                    ; $66c6: $73
    db $10                                        ; $66c7: $10
    ld [hl], h                                    ; $66c8: $74
    db $10                                        ; $66c9: $10
    ld [hl], l                                    ; $66ca: $75
    db $10                                        ; $66cb: $10
    halt                                          ; $66cc: $76
    db $10                                        ; $66cd: $10
    ld [hl], a                                    ; $66ce: $77
    db $10                                        ; $66cf: $10
    ret nz                                        ; $66d0: $c0

    db $10                                        ; $66d1: $10
    pop bc                                        ; $66d2: $c1
    db $10                                        ; $66d3: $10
    jp nz, $c310                                  ; $66d4: $c2 $10 $c3

    db $10                                        ; $66d7: $10
    call nz, $c510                                ; $66d8: $c4 $10 $c5
    db $10                                        ; $66db: $10
    ld bc, $0110                                  ; $66dc: $01 $10 $01
    db $10                                        ; $66df: $10
    ld bc, $0110                                  ; $66e0: $01 $10 $01
    db $10                                        ; $66e3: $10
    ld bc, $0110                                  ; $66e4: $01 $10 $01
    db $10                                        ; $66e7: $10
    ld bc, $0110                                  ; $66e8: $01 $10 $01
    db $10                                        ; $66eb: $10
    ld bc, $0110                                  ; $66ec: $01 $10 $01
    db $10                                        ; $66ef: $10
    ld bc, $0110                                  ; $66f0: $01 $10 $01
    db $10                                        ; $66f3: $10
    ld a, b                                       ; $66f4: $78
    db $10                                        ; $66f5: $10
    ld a, c                                       ; $66f6: $79
    db $10                                        ; $66f7: $10
    ld a, d                                       ; $66f8: $7a
    db $10                                        ; $66f9: $10
    ld a, e                                       ; $66fa: $7b
    db $10                                        ; $66fb: $10
    ld a, h                                       ; $66fc: $7c
    db $10                                        ; $66fd: $10
    ld a, l                                       ; $66fe: $7d
    db $10                                        ; $66ff: $10
    ld a, [hl]                                    ; $6700: $7e
    db $10                                        ; $6701: $10
    ld [hl], c                                    ; $6702: $71
    sub b                                         ; $6703: $90
    ld a, a                                       ; $6704: $7f
    db $10                                        ; $6705: $10
    add b                                         ; $6706: $80
    db $10                                        ; $6707: $10
    add c                                         ; $6708: $81
    db $10                                        ; $6709: $10
    add d                                         ; $670a: $82
    db $10                                        ; $670b: $10
    add e                                         ; $670c: $83
    db $10                                        ; $670d: $10
    add h                                         ; $670e: $84
    db $10                                        ; $670f: $10
    add $10                                       ; $6710: $c6 $10
    rst RST_00                                    ; $6712: $c7
    db $10                                        ; $6713: $10
    ret z                                         ; $6714: $c8

    db $10                                        ; $6715: $10
    ret                                           ; $6716: $c9


    db $10                                        ; $6717: $10
    jp z, $cb10                                   ; $6718: $ca $10 $cb

    db $10                                        ; $671b: $10
    call z, $0110                                 ; $671c: $cc $10 $01
    db $10                                        ; $671f: $10
    ld bc, $0110                                  ; $6720: $01 $10 $01
    db $10                                        ; $6723: $10
    ld bc, $0110                                  ; $6724: $01 $10 $01
    db $10                                        ; $6727: $10
    ld bc, $0110                                  ; $6728: $01 $10 $01
    db $10                                        ; $672b: $10
    ld bc, $0110                                  ; $672c: $01 $10 $01
    db $10                                        ; $672f: $10
    call $cd14                                    ; $6730: $cd $14 $cd
    inc d                                         ; $6733: $14
    call $cd14                                    ; $6734: $cd $14 $cd
    inc d                                         ; $6737: $14
    call $cd14                                    ; $6738: $cd $14 $cd
    inc d                                         ; $673b: $14
    call $cd14                                    ; $673c: $cd $14 $cd
    inc d                                         ; $673f: $14
    call $cd14                                    ; $6740: $cd $14 $cd
    inc d                                         ; $6743: $14
    call $cd14                                    ; $6744: $cd $14 $cd
    inc d                                         ; $6747: $14
    call $cd14                                    ; $6748: $cd $14 $cd
    inc d                                         ; $674b: $14
    call $cd14                                    ; $674c: $cd $14 $cd
    inc d                                         ; $674f: $14
    call $cd14                                    ; $6750: $cd $14 $cd
    inc d                                         ; $6753: $14
    call $cd14                                    ; $6754: $cd $14 $cd
    inc d                                         ; $6757: $14
    call $cd14                                    ; $6758: $cd $14 $cd
    inc d                                         ; $675b: $14
    call $cd14                                    ; $675c: $cd $14 $cd
    inc d                                         ; $675f: $14
    call $cd14                                    ; $6760: $cd $14 $cd
    inc d                                         ; $6763: $14
    call $cd14                                    ; $6764: $cd $14 $cd
    inc d                                         ; $6767: $14
    call $cd14                                    ; $6768: $cd $14 $cd
    inc d                                         ; $676b: $14
    call $cd14                                    ; $676c: $cd $14 $cd
    inc d                                         ; $676f: $14
    call $cd14                                    ; $6770: $cd $14 $cd
    inc d                                         ; $6773: $14
    call $cd14                                    ; $6774: $cd $14 $cd
    inc d                                         ; $6777: $14
    call $cd14                                    ; $6778: $cd $14 $cd
    inc d                                         ; $677b: $14
    call $cd14                                    ; $677c: $cd $14 $cd
    inc d                                         ; $677f: $14
    call $cd14                                    ; $6780: $cd $14 $cd
    inc d                                         ; $6783: $14
    call $cd14                                    ; $6784: $cd $14 $cd
    inc d                                         ; $6787: $14
    call $cd14                                    ; $6788: $cd $14 $cd
    inc d                                         ; $678b: $14
    call $cd14                                    ; $678c: $cd $14 $cd
    inc d                                         ; $678f: $14
    call $cd14                                    ; $6790: $cd $14 $cd
    inc d                                         ; $6793: $14
    call $cd14                                    ; $6794: $cd $14 $cd
    inc d                                         ; $6797: $14
    call $cd14                                    ; $6798: $cd $14 $cd
    inc d                                         ; $679b: $14
    call $cd14                                    ; $679c: $cd $14 $cd
    inc d                                         ; $679f: $14
    call $cd14                                    ; $67a0: $cd $14 $cd
    inc d                                         ; $67a3: $14
    call $cd14                                    ; $67a4: $cd $14 $cd
    inc d                                         ; $67a7: $14
    call $cd14                                    ; $67a8: $cd $14 $cd
    inc d                                         ; $67ab: $14
    call $cd14                                    ; $67ac: $cd $14 $cd
    inc d                                         ; $67af: $14
    call $cd14                                    ; $67b0: $cd $14 $cd
    inc d                                         ; $67b3: $14
    call $cd14                                    ; $67b4: $cd $14 $cd
    inc d                                         ; $67b7: $14
    call $cd14                                    ; $67b8: $cd $14 $cd
    inc d                                         ; $67bb: $14
    call $cd14                                    ; $67bc: $cd $14 $cd
    inc d                                         ; $67bf: $14
    call $cd14                                    ; $67c0: $cd $14 $cd
    inc d                                         ; $67c3: $14
    call $cd14                                    ; $67c4: $cd $14 $cd
    inc d                                         ; $67c7: $14
    call $cd14                                    ; $67c8: $cd $14 $cd
    inc d                                         ; $67cb: $14
    call $cd14                                    ; $67cc: $cd $14 $cd
    inc d                                         ; $67cf: $14
    call $cd14                                    ; $67d0: $cd $14 $cd
    inc d                                         ; $67d3: $14
    call $cd14                                    ; $67d4: $cd $14 $cd
    inc d                                         ; $67d7: $14
    call $cd14                                    ; $67d8: $cd $14 $cd
    inc d                                         ; $67db: $14
    call $cd14                                    ; $67dc: $cd $14 $cd
    inc d                                         ; $67df: $14
    call $cd14                                    ; $67e0: $cd $14 $cd
    inc d                                         ; $67e3: $14
    call $cd14                                    ; $67e4: $cd $14 $cd
    inc d                                         ; $67e7: $14
    call $cd14                                    ; $67e8: $cd $14 $cd
    inc d                                         ; $67eb: $14
    call $cd14                                    ; $67ec: $cd $14 $cd
    inc d                                         ; $67ef: $14
    call $cd14                                    ; $67f0: $cd $14 $cd
    inc d                                         ; $67f3: $14
    call $cd14                                    ; $67f4: $cd $14 $cd
    inc d                                         ; $67f7: $14
    call $cd14                                    ; $67f8: $cd $14 $cd
    inc d                                         ; $67fb: $14
    call $cd14                                    ; $67fc: $cd $14 $cd
    inc d                                         ; $67ff: $14
    call $cd14                                    ; $6800: $cd $14 $cd
    inc d                                         ; $6803: $14
    call $cd14                                    ; $6804: $cd $14 $cd
    inc d                                         ; $6807: $14
    call $cd14                                    ; $6808: $cd $14 $cd
    inc d                                         ; $680b: $14
    call $cd14                                    ; $680c: $cd $14 $cd
    inc d                                         ; $680f: $14
    call $cd14                                    ; $6810: $cd $14 $cd
    inc d                                         ; $6813: $14
    call $cd14                                    ; $6814: $cd $14 $cd
    inc d                                         ; $6817: $14
    call $cd14                                    ; $6818: $cd $14 $cd
    inc d                                         ; $681b: $14
    call $cd14                                    ; $681c: $cd $14 $cd
    inc d                                         ; $681f: $14
    call $cd14                                    ; $6820: $cd $14 $cd
    inc d                                         ; $6823: $14
    call $cd14                                    ; $6824: $cd $14 $cd
    inc d                                         ; $6827: $14
    call $cd14                                    ; $6828: $cd $14 $cd
    inc d                                         ; $682b: $14
    call $cd14                                    ; $682c: $cd $14 $cd
    inc d                                         ; $682f: $14
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    ld c, d                                       ; $6832: $4a
    add hl, hl                                    ; $6833: $29
    rst RST_38                                    ; $6834: $ff
    ld a, a                                       ; $6835: $7f
    ld [de], a                                    ; $6836: $12
    inc l                                         ; $6837: $2c
    ld h, [hl]                                    ; $6838: $66
    inc l                                         ; $6839: $2c
    sub $5a                                       ; $683a: $d6 $5a
    ldh a, [rSTAT]                                ; $683c: $f0 $41
    ld c, a                                       ; $683e: $4f
    ld [$001f], sp                                ; $683f: $08 $1f $00
    ld d, d                                       ; $6842: $52
    ld c, d                                       ; $6843: $4a
    sbc h                                         ; $6844: $9c
    ld l, a                                       ; $6845: $6f
    xor b                                         ; $6846: $a8
    inc c                                         ; $6847: $0c
    sbc a                                         ; $6848: $9f
    ld d, e                                       ; $6849: $53
    jp c, $3b42                                   ; $684a: $da $42 $3b

    dec h                                         ; $684d: $25
    xor l                                         ; $684e: $ad
    dec [hl]                                      ; $684f: $35
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    nop                                           ; $6852: $00
    nop                                           ; $6853: $00
    xor l                                         ; $6854: $ad
    dec [hl]                                      ; $6855: $35
    sub $5a                                       ; $6856: $d6 $5a
    rst RST_38                                    ; $6858: $ff
    ld a, a                                       ; $6859: $7f
    ld a, [de]                                    ; $685a: $1a
    inc bc                                        ; $685b: $03
    or $1c                                        ; $685c: $f6 $1c
    ld b, h                                       ; $685e: $44
    ld [$5bff], sp                                ; $685f: $08 $ff $5b
    inc sp                                        ; $6862: $33
    ld d, $2b                                     ; $6863: $16 $2b
    dec b                                         ; $6865: $05
    xor b                                         ; $6866: $a8
    inc c                                         ; $6867: $0c
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
    nop                                           ; $6881: $00
    nop                                           ; $6882: $00
    nop                                           ; $6883: $00
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    nop                                           ; $6886: $00
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    nop                                           ; $6889: $00
    nop                                           ; $688a: $00
    nop                                           ; $688b: $00
    nop                                           ; $688c: $00
    nop                                           ; $688d: $00
    nop                                           ; $688e: $00
    nop                                           ; $688f: $00
    nop                                           ; $6890: $00
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    nop                                           ; $6896: $00
    nop                                           ; $6897: $00
    nop                                           ; $6898: $00
    nop                                           ; $6899: $00
    nop                                           ; $689a: $00
    nop                                           ; $689b: $00
    nop                                           ; $689c: $00
    nop                                           ; $689d: $00
    nop                                           ; $689e: $00
    nop                                           ; $689f: $00
    nop                                           ; $68a0: $00
    nop                                           ; $68a1: $00
    nop                                           ; $68a2: $00
    nop                                           ; $68a3: $00
    nop                                           ; $68a4: $00
    nop                                           ; $68a5: $00
    nop                                           ; $68a6: $00
    nop                                           ; $68a7: $00
    nop                                           ; $68a8: $00
    nop                                           ; $68a9: $00
    nop                                           ; $68aa: $00
    nop                                           ; $68ab: $00
    nop                                           ; $68ac: $00
    nop                                           ; $68ad: $00
    nop                                           ; $68ae: $00
    nop                                           ; $68af: $00
    nop                                           ; $68b0: $00
    nop                                           ; $68b1: $00
    nop                                           ; $68b2: $00
    nop                                           ; $68b3: $00
    nop                                           ; $68b4: $00
    nop                                           ; $68b5: $00
    nop                                           ; $68b6: $00
    nop                                           ; $68b7: $00
    nop                                           ; $68b8: $00
    nop                                           ; $68b9: $00
    nop                                           ; $68ba: $00
    nop                                           ; $68bb: $00
    nop                                           ; $68bc: $00
    nop                                           ; $68bd: $00
    nop                                           ; $68be: $00
    nop                                           ; $68bf: $00
    nop                                           ; $68c0: $00
    nop                                           ; $68c1: $00
    nop                                           ; $68c2: $00
    nop                                           ; $68c3: $00
    nop                                           ; $68c4: $00
    nop                                           ; $68c5: $00
    nop                                           ; $68c6: $00
    nop                                           ; $68c7: $00
    nop                                           ; $68c8: $00
    nop                                           ; $68c9: $00
    nop                                           ; $68ca: $00
    nop                                           ; $68cb: $00
    nop                                           ; $68cc: $00
    nop                                           ; $68cd: $00
    nop                                           ; $68ce: $00
    nop                                           ; $68cf: $00
    nop                                           ; $68d0: $00
    nop                                           ; $68d1: $00
    nop                                           ; $68d2: $00
    nop                                           ; $68d3: $00
    nop                                           ; $68d4: $00
    nop                                           ; $68d5: $00
    nop                                           ; $68d6: $00
    nop                                           ; $68d7: $00
    nop                                           ; $68d8: $00
    nop                                           ; $68d9: $00
    nop                                           ; $68da: $00
    nop                                           ; $68db: $00
    nop                                           ; $68dc: $00
    nop                                           ; $68dd: $00
    nop                                           ; $68de: $00
    nop                                           ; $68df: $00
    nop                                           ; $68e0: $00
    nop                                           ; $68e1: $00
    nop                                           ; $68e2: $00
    nop                                           ; $68e3: $00
    nop                                           ; $68e4: $00
    nop                                           ; $68e5: $00
    nop                                           ; $68e6: $00
    nop                                           ; $68e7: $00
    nop                                           ; $68e8: $00
    nop                                           ; $68e9: $00
    nop                                           ; $68ea: $00
    nop                                           ; $68eb: $00
    nop                                           ; $68ec: $00
    nop                                           ; $68ed: $00
    nop                                           ; $68ee: $00
    nop                                           ; $68ef: $00
    nop                                           ; $68f0: $00
    nop                                           ; $68f1: $00
    nop                                           ; $68f2: $00
    nop                                           ; $68f3: $00
    nop                                           ; $68f4: $00
    nop                                           ; $68f5: $00
    nop                                           ; $68f6: $00
    nop                                           ; $68f7: $00
    nop                                           ; $68f8: $00
    nop                                           ; $68f9: $00
    nop                                           ; $68fa: $00
    nop                                           ; $68fb: $00
    nop                                           ; $68fc: $00
    nop                                           ; $68fd: $00
    nop                                           ; $68fe: $00
    nop                                           ; $68ff: $00
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
    nop                                           ; $6980: $00
    nop                                           ; $6981: $00
    nop                                           ; $6982: $00
    nop                                           ; $6983: $00
    nop                                           ; $6984: $00
    nop                                           ; $6985: $00
    nop                                           ; $6986: $00
    nop                                           ; $6987: $00
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    nop                                           ; $698a: $00
    nop                                           ; $698b: $00
    nop                                           ; $698c: $00
    nop                                           ; $698d: $00
    nop                                           ; $698e: $00
    nop                                           ; $698f: $00
    nop                                           ; $6990: $00
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    nop                                           ; $6995: $00
    nop                                           ; $6996: $00
    nop                                           ; $6997: $00
    nop                                           ; $6998: $00
    nop                                           ; $6999: $00
    nop                                           ; $699a: $00
    nop                                           ; $699b: $00
    nop                                           ; $699c: $00
    nop                                           ; $699d: $00
    nop                                           ; $699e: $00
    nop                                           ; $699f: $00
    nop                                           ; $69a0: $00
    nop                                           ; $69a1: $00
    nop                                           ; $69a2: $00
    nop                                           ; $69a3: $00
    nop                                           ; $69a4: $00
    nop                                           ; $69a5: $00
    nop                                           ; $69a6: $00
    nop                                           ; $69a7: $00
    nop                                           ; $69a8: $00
    nop                                           ; $69a9: $00
    nop                                           ; $69aa: $00
    nop                                           ; $69ab: $00
    nop                                           ; $69ac: $00
    nop                                           ; $69ad: $00
    nop                                           ; $69ae: $00
    nop                                           ; $69af: $00
    nop                                           ; $69b0: $00
    nop                                           ; $69b1: $00
    nop                                           ; $69b2: $00
    nop                                           ; $69b3: $00
    nop                                           ; $69b4: $00
    nop                                           ; $69b5: $00
    nop                                           ; $69b6: $00
    nop                                           ; $69b7: $00
    nop                                           ; $69b8: $00
    nop                                           ; $69b9: $00
    nop                                           ; $69ba: $00
    nop                                           ; $69bb: $00
    nop                                           ; $69bc: $00
    nop                                           ; $69bd: $00
    nop                                           ; $69be: $00
    nop                                           ; $69bf: $00
    nop                                           ; $69c0: $00
    nop                                           ; $69c1: $00
    nop                                           ; $69c2: $00
    nop                                           ; $69c3: $00
    nop                                           ; $69c4: $00
    nop                                           ; $69c5: $00
    nop                                           ; $69c6: $00
    nop                                           ; $69c7: $00
    nop                                           ; $69c8: $00
    nop                                           ; $69c9: $00
    nop                                           ; $69ca: $00
    nop                                           ; $69cb: $00
    nop                                           ; $69cc: $00
    nop                                           ; $69cd: $00
    nop                                           ; $69ce: $00
    nop                                           ; $69cf: $00
    nop                                           ; $69d0: $00
    nop                                           ; $69d1: $00
    nop                                           ; $69d2: $00
    nop                                           ; $69d3: $00
    nop                                           ; $69d4: $00
    nop                                           ; $69d5: $00
    nop                                           ; $69d6: $00
    nop                                           ; $69d7: $00
    nop                                           ; $69d8: $00
    nop                                           ; $69d9: $00
    nop                                           ; $69da: $00
    nop                                           ; $69db: $00
    nop                                           ; $69dc: $00
    nop                                           ; $69dd: $00
    nop                                           ; $69de: $00
    nop                                           ; $69df: $00
    nop                                           ; $69e0: $00
    nop                                           ; $69e1: $00
    nop                                           ; $69e2: $00
    nop                                           ; $69e3: $00
    nop                                           ; $69e4: $00
    nop                                           ; $69e5: $00
    nop                                           ; $69e6: $00
    nop                                           ; $69e7: $00
    nop                                           ; $69e8: $00
    nop                                           ; $69e9: $00
    nop                                           ; $69ea: $00
    nop                                           ; $69eb: $00
    nop                                           ; $69ec: $00
    nop                                           ; $69ed: $00
    nop                                           ; $69ee: $00
    nop                                           ; $69ef: $00
    nop                                           ; $69f0: $00
    nop                                           ; $69f1: $00
    nop                                           ; $69f2: $00
    nop                                           ; $69f3: $00
    nop                                           ; $69f4: $00
    nop                                           ; $69f5: $00
    nop                                           ; $69f6: $00
    nop                                           ; $69f7: $00
    nop                                           ; $69f8: $00
    nop                                           ; $69f9: $00
    nop                                           ; $69fa: $00
    nop                                           ; $69fb: $00
    nop                                           ; $69fc: $00
    nop                                           ; $69fd: $00
    nop                                           ; $69fe: $00
    nop                                           ; $69ff: $00
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
    rrca                                          ; $6c00: $0f
    nop                                           ; $6c01: $00
    ld bc, $0302                                  ; $6c02: $01 $02 $03
    inc b                                         ; $6c05: $04
    dec b                                         ; $6c06: $05
    ld b, $07                                     ; $6c07: $06 $07
    ld [$0a09], sp                                ; $6c09: $08 $09 $0a
    dec bc                                        ; $6c0c: $0b
    inc c                                         ; $6c0d: $0c
    dec c                                         ; $6c0e: $0d
    inc bc                                        ; $6c0f: $03
    ld c, $00                                     ; $6c10: $0e $00
    ld bc, rIF                                    ; $6c12: $01 $0f $ff
    rst RST_38                                    ; $6c15: $ff
    rst RST_38                                    ; $6c16: $ff
    rst RST_38                                    ; $6c17: $ff
    rst RST_38                                    ; $6c18: $ff
    rst RST_38                                    ; $6c19: $ff
    rst RST_38                                    ; $6c1a: $ff
    rst RST_38                                    ; $6c1b: $ff
    rst RST_38                                    ; $6c1c: $ff
    rst RST_38                                    ; $6c1d: $ff
    rst RST_38                                    ; $6c1e: $ff
    rst RST_38                                    ; $6c1f: $ff
    rra                                           ; $6c20: $1f
    db $10                                        ; $6c21: $10
    ld de, $1312                                  ; $6c22: $11 $12 $13
    inc d                                         ; $6c25: $14
    dec d                                         ; $6c26: $15
    ld d, $17                                     ; $6c27: $16 $17
    jr jr_004_6c44                                ; $6c29: $18 $19

    ld a, [de]                                    ; $6c2b: $1a
    dec de                                        ; $6c2c: $1b
    inc e                                         ; $6c2d: $1c
    dec e                                         ; $6c2e: $1d
    inc de                                        ; $6c2f: $13
    ld e, $10                                     ; $6c30: $1e $10
    ld de, $ff1f                                  ; $6c32: $11 $1f $ff
    rst RST_38                                    ; $6c35: $ff
    rst RST_38                                    ; $6c36: $ff
    rst RST_38                                    ; $6c37: $ff
    rst RST_38                                    ; $6c38: $ff
    rst RST_38                                    ; $6c39: $ff
    rst RST_38                                    ; $6c3a: $ff
    rst RST_38                                    ; $6c3b: $ff
    rst RST_38                                    ; $6c3c: $ff
    rst RST_38                                    ; $6c3d: $ff
    rst RST_38                                    ; $6c3e: $ff
    rst RST_38                                    ; $6c3f: $ff
    rrca                                          ; $6c40: $0f
    rrca                                          ; $6c41: $0f
    rrca                                          ; $6c42: $0f
    rrca                                          ; $6c43: $0f

jr_004_6c44:
    rrca                                          ; $6c44: $0f
    rrca                                          ; $6c45: $0f
    rrca                                          ; $6c46: $0f
    rrca                                          ; $6c47: $0f
    rrca                                          ; $6c48: $0f
    rrca                                          ; $6c49: $0f
    rrca                                          ; $6c4a: $0f
    rrca                                          ; $6c4b: $0f
    rrca                                          ; $6c4c: $0f
    rrca                                          ; $6c4d: $0f
    rrca                                          ; $6c4e: $0f
    rrca                                          ; $6c4f: $0f
    rrca                                          ; $6c50: $0f
    rrca                                          ; $6c51: $0f
    rrca                                          ; $6c52: $0f
    rrca                                          ; $6c53: $0f
    rst RST_38                                    ; $6c54: $ff
    rst RST_38                                    ; $6c55: $ff
    rst RST_38                                    ; $6c56: $ff
    rst RST_38                                    ; $6c57: $ff
    rst RST_38                                    ; $6c58: $ff
    rst RST_38                                    ; $6c59: $ff
    rst RST_38                                    ; $6c5a: $ff
    rst RST_38                                    ; $6c5b: $ff
    rst RST_38                                    ; $6c5c: $ff
    rst RST_38                                    ; $6c5d: $ff
    rst RST_38                                    ; $6c5e: $ff
    rst RST_38                                    ; $6c5f: $ff
    rrca                                          ; $6c60: $0f
    dec sp                                        ; $6c61: $3b
    dec l                                         ; $6c62: $2d
    dec l                                         ; $6c63: $2d
    dec l                                         ; $6c64: $2d
    dec l                                         ; $6c65: $2d
    dec l                                         ; $6c66: $2d
    dec l                                         ; $6c67: $2d
    dec l                                         ; $6c68: $2d
    dec l                                         ; $6c69: $2d
    dec l                                         ; $6c6a: $2d
    dec l                                         ; $6c6b: $2d
    dec l                                         ; $6c6c: $2d
    dec l                                         ; $6c6d: $2d
    dec l                                         ; $6c6e: $2d
    dec l                                         ; $6c6f: $2d
    dec l                                         ; $6c70: $2d
    dec l                                         ; $6c71: $2d
    ccf                                           ; $6c72: $3f
    rrca                                          ; $6c73: $0f
    rst RST_38                                    ; $6c74: $ff
    rst RST_38                                    ; $6c75: $ff
    rst RST_38                                    ; $6c76: $ff
    rst RST_38                                    ; $6c77: $ff
    rst RST_38                                    ; $6c78: $ff
    rst RST_38                                    ; $6c79: $ff
    rst RST_38                                    ; $6c7a: $ff
    rst RST_38                                    ; $6c7b: $ff
    rst RST_38                                    ; $6c7c: $ff
    rst RST_38                                    ; $6c7d: $ff
    rst RST_38                                    ; $6c7e: $ff
    rst RST_38                                    ; $6c7f: $ff
    rrca                                          ; $6c80: $0f
    ld l, $90                                     ; $6c81: $2e $90
    sub c                                         ; $6c83: $91
    sub d                                         ; $6c84: $92
    sub e                                         ; $6c85: $93
    sub h                                         ; $6c86: $94
    sub l                                         ; $6c87: $95
    sub [hl]                                      ; $6c88: $96
    sub a                                         ; $6c89: $97
    sbc b                                         ; $6c8a: $98
    sbc c                                         ; $6c8b: $99
    sbc d                                         ; $6c8c: $9a
    sbc e                                         ; $6c8d: $9b
    sbc h                                         ; $6c8e: $9c
    sbc l                                         ; $6c8f: $9d
    sbc [hl]                                      ; $6c90: $9e
    sbc a                                         ; $6c91: $9f
    inc l                                         ; $6c92: $2c
    rrca                                          ; $6c93: $0f
    rst RST_38                                    ; $6c94: $ff
    rst RST_38                                    ; $6c95: $ff
    rst RST_38                                    ; $6c96: $ff
    rst RST_38                                    ; $6c97: $ff
    rst RST_38                                    ; $6c98: $ff
    rst RST_38                                    ; $6c99: $ff
    rst RST_38                                    ; $6c9a: $ff
    rst RST_38                                    ; $6c9b: $ff
    rst RST_38                                    ; $6c9c: $ff
    rst RST_38                                    ; $6c9d: $ff
    rst RST_38                                    ; $6c9e: $ff
    rst RST_38                                    ; $6c9f: $ff
    rrca                                          ; $6ca0: $0f
    ld l, $a0                                     ; $6ca1: $2e $a0
    and c                                         ; $6ca3: $a1
    and d                                         ; $6ca4: $a2
    and e                                         ; $6ca5: $a3
    and h                                         ; $6ca6: $a4
    and l                                         ; $6ca7: $a5
    and [hl]                                      ; $6ca8: $a6
    and a                                         ; $6ca9: $a7
    xor b                                         ; $6caa: $a8
    xor c                                         ; $6cab: $a9
    xor d                                         ; $6cac: $aa
    xor e                                         ; $6cad: $ab
    xor h                                         ; $6cae: $ac
    xor l                                         ; $6caf: $ad
    xor [hl]                                      ; $6cb0: $ae
    xor a                                         ; $6cb1: $af
    inc l                                         ; $6cb2: $2c
    rrca                                          ; $6cb3: $0f
    rst RST_38                                    ; $6cb4: $ff
    rst RST_38                                    ; $6cb5: $ff
    rst RST_38                                    ; $6cb6: $ff
    rst RST_38                                    ; $6cb7: $ff
    rst RST_38                                    ; $6cb8: $ff
    rst RST_38                                    ; $6cb9: $ff
    rst RST_38                                    ; $6cba: $ff
    rst RST_38                                    ; $6cbb: $ff
    rst RST_38                                    ; $6cbc: $ff
    rst RST_38                                    ; $6cbd: $ff
    rst RST_38                                    ; $6cbe: $ff
    rst RST_38                                    ; $6cbf: $ff
    rrca                                          ; $6cc0: $0f
    ld l, $b0                                     ; $6cc1: $2e $b0
    or c                                          ; $6cc3: $b1
    or d                                          ; $6cc4: $b2
    or e                                          ; $6cc5: $b3
    or h                                          ; $6cc6: $b4
    or l                                          ; $6cc7: $b5
    or [hl]                                       ; $6cc8: $b6
    or a                                          ; $6cc9: $b7
    cp b                                          ; $6cca: $b8
    cp c                                          ; $6ccb: $b9
    cp d                                          ; $6ccc: $ba
    cp e                                          ; $6ccd: $bb
    cp h                                          ; $6cce: $bc
    cp l                                          ; $6ccf: $bd
    cp [hl]                                       ; $6cd0: $be
    cp a                                          ; $6cd1: $bf
    inc l                                         ; $6cd2: $2c
    rrca                                          ; $6cd3: $0f
    rst RST_38                                    ; $6cd4: $ff
    rst RST_38                                    ; $6cd5: $ff
    rst RST_38                                    ; $6cd6: $ff
    rst RST_38                                    ; $6cd7: $ff
    rst RST_38                                    ; $6cd8: $ff
    rst RST_38                                    ; $6cd9: $ff
    rst RST_38                                    ; $6cda: $ff
    rst RST_38                                    ; $6cdb: $ff
    rst RST_38                                    ; $6cdc: $ff
    rst RST_38                                    ; $6cdd: $ff
    rst RST_38                                    ; $6cde: $ff
    rst RST_38                                    ; $6cdf: $ff
    rrca                                          ; $6ce0: $0f
    ld l, $c0                                     ; $6ce1: $2e $c0
    pop bc                                        ; $6ce3: $c1
    jp nz, $c4c3                                  ; $6ce4: $c2 $c3 $c4

    push bc                                       ; $6ce7: $c5
    add $c7                                       ; $6ce8: $c6 $c7
    ret z                                         ; $6cea: $c8

    ret                                           ; $6ceb: $c9


    jp z, $cccb                                   ; $6cec: $ca $cb $cc

    call $cfce                                    ; $6cef: $cd $ce $cf
    inc l                                         ; $6cf2: $2c
    rrca                                          ; $6cf3: $0f
    rst RST_38                                    ; $6cf4: $ff
    rst RST_38                                    ; $6cf5: $ff
    rst RST_38                                    ; $6cf6: $ff
    rst RST_38                                    ; $6cf7: $ff
    rst RST_38                                    ; $6cf8: $ff
    rst RST_38                                    ; $6cf9: $ff
    rst RST_38                                    ; $6cfa: $ff
    rst RST_38                                    ; $6cfb: $ff
    rst RST_38                                    ; $6cfc: $ff
    rst RST_38                                    ; $6cfd: $ff
    rst RST_38                                    ; $6cfe: $ff
    rst RST_38                                    ; $6cff: $ff
    rrca                                          ; $6d00: $0f
    ld l, $d0                                     ; $6d01: $2e $d0
    pop de                                        ; $6d03: $d1
    jp nc, $d4d3                                  ; $6d04: $d2 $d3 $d4

    push de                                       ; $6d07: $d5
    sub $d7                                       ; $6d08: $d6 $d7
    ret c                                         ; $6d0a: $d8

    reti                                          ; $6d0b: $d9


    jp c, $dcdb                                   ; $6d0c: $da $db $dc

    db $dd                                        ; $6d0f: $dd
    sbc $df                                       ; $6d10: $de $df
    inc l                                         ; $6d12: $2c
    rrca                                          ; $6d13: $0f
    rst RST_38                                    ; $6d14: $ff
    rst RST_38                                    ; $6d15: $ff
    rst RST_38                                    ; $6d16: $ff
    rst RST_38                                    ; $6d17: $ff
    rst RST_38                                    ; $6d18: $ff
    rst RST_38                                    ; $6d19: $ff
    rst RST_38                                    ; $6d1a: $ff
    rst RST_38                                    ; $6d1b: $ff
    rst RST_38                                    ; $6d1c: $ff
    rst RST_38                                    ; $6d1d: $ff
    rst RST_38                                    ; $6d1e: $ff
    rst RST_38                                    ; $6d1f: $ff
    rrca                                          ; $6d20: $0f
    ld l, $e0                                     ; $6d21: $2e $e0
    pop hl                                        ; $6d23: $e1
    ldh [c], a                                    ; $6d24: $e2
    db $e3                                        ; $6d25: $e3
    db $e4                                        ; $6d26: $e4
    push hl                                       ; $6d27: $e5
    and $e7                                       ; $6d28: $e6 $e7
    add sp, -$17                                  ; $6d2a: $e8 $e9
    ld [$eceb], a                                 ; $6d2c: $ea $eb $ec
    db $ed                                        ; $6d2f: $ed
    xor $ef                                       ; $6d30: $ee $ef
    inc l                                         ; $6d32: $2c
    rrca                                          ; $6d33: $0f
    rst RST_38                                    ; $6d34: $ff
    rst RST_38                                    ; $6d35: $ff
    rst RST_38                                    ; $6d36: $ff
    rst RST_38                                    ; $6d37: $ff
    rst RST_38                                    ; $6d38: $ff
    rst RST_38                                    ; $6d39: $ff
    rst RST_38                                    ; $6d3a: $ff
    rst RST_38                                    ; $6d3b: $ff
    rst RST_38                                    ; $6d3c: $ff
    rst RST_38                                    ; $6d3d: $ff
    rst RST_38                                    ; $6d3e: $ff
    rst RST_38                                    ; $6d3f: $ff
    rrca                                          ; $6d40: $0f
    ld l, $f0                                     ; $6d41: $2e $f0
    pop af                                        ; $6d43: $f1
    ldh a, [c]                                    ; $6d44: $f2
    di                                            ; $6d45: $f3
    db $f4                                        ; $6d46: $f4
    push af                                       ; $6d47: $f5
    or $f7                                        ; $6d48: $f6 $f7
    ld hl, sp-$07                                 ; $6d4a: $f8 $f9
    ld a, [$fcfb]                                 ; $6d4c: $fa $fb $fc
    db $fd                                        ; $6d4f: $fd
    cp $ff                                        ; $6d50: $fe $ff
    inc l                                         ; $6d52: $2c
    rrca                                          ; $6d53: $0f
    rst RST_38                                    ; $6d54: $ff
    rst RST_38                                    ; $6d55: $ff
    rst RST_38                                    ; $6d56: $ff
    rst RST_38                                    ; $6d57: $ff
    rst RST_38                                    ; $6d58: $ff
    rst RST_38                                    ; $6d59: $ff
    rst RST_38                                    ; $6d5a: $ff
    rst RST_38                                    ; $6d5b: $ff
    rst RST_38                                    ; $6d5c: $ff
    rst RST_38                                    ; $6d5d: $ff
    rst RST_38                                    ; $6d5e: $ff
    rst RST_38                                    ; $6d5f: $ff
    rrca                                          ; $6d60: $0f
    inc a                                         ; $6d61: $3c
    dec a                                         ; $6d62: $3d
    dec a                                         ; $6d63: $3d
    dec a                                         ; $6d64: $3d
    dec a                                         ; $6d65: $3d
    dec a                                         ; $6d66: $3d
    dec a                                         ; $6d67: $3d
    dec a                                         ; $6d68: $3d
    dec a                                         ; $6d69: $3d
    dec a                                         ; $6d6a: $3d
    dec a                                         ; $6d6b: $3d
    dec a                                         ; $6d6c: $3d
    dec a                                         ; $6d6d: $3d
    dec a                                         ; $6d6e: $3d
    dec a                                         ; $6d6f: $3d
    dec a                                         ; $6d70: $3d
    dec a                                         ; $6d71: $3d
    ld a, $0f                                     ; $6d72: $3e $0f
    rst RST_38                                    ; $6d74: $ff
    rst RST_38                                    ; $6d75: $ff
    rst RST_38                                    ; $6d76: $ff
    rst RST_38                                    ; $6d77: $ff
    rst RST_38                                    ; $6d78: $ff
    rst RST_38                                    ; $6d79: $ff
    rst RST_38                                    ; $6d7a: $ff
    rst RST_38                                    ; $6d7b: $ff
    rst RST_38                                    ; $6d7c: $ff
    rst RST_38                                    ; $6d7d: $ff
    rst RST_38                                    ; $6d7e: $ff
    rst RST_38                                    ; $6d7f: $ff
    rrca                                          ; $6d80: $0f
    rrca                                          ; $6d81: $0f
    rrca                                          ; $6d82: $0f
    rrca                                          ; $6d83: $0f
    rrca                                          ; $6d84: $0f
    rrca                                          ; $6d85: $0f
    rrca                                          ; $6d86: $0f
    rrca                                          ; $6d87: $0f
    rrca                                          ; $6d88: $0f
    rrca                                          ; $6d89: $0f
    rrca                                          ; $6d8a: $0f
    rrca                                          ; $6d8b: $0f
    rrca                                          ; $6d8c: $0f
    rrca                                          ; $6d8d: $0f
    rrca                                          ; $6d8e: $0f
    rrca                                          ; $6d8f: $0f
    rrca                                          ; $6d90: $0f
    rrca                                          ; $6d91: $0f
    rrca                                          ; $6d92: $0f
    rrca                                          ; $6d93: $0f
    rst RST_38                                    ; $6d94: $ff
    rst RST_38                                    ; $6d95: $ff
    rst RST_38                                    ; $6d96: $ff
    rst RST_38                                    ; $6d97: $ff
    rst RST_38                                    ; $6d98: $ff
    rst RST_38                                    ; $6d99: $ff
    rst RST_38                                    ; $6d9a: $ff
    rst RST_38                                    ; $6d9b: $ff
    rst RST_38                                    ; $6d9c: $ff
    rst RST_38                                    ; $6d9d: $ff
    rst RST_38                                    ; $6d9e: $ff
    rst RST_38                                    ; $6d9f: $ff
    rrca                                          ; $6da0: $0f
    rrca                                          ; $6da1: $0f
    rrca                                          ; $6da2: $0f
    rrca                                          ; $6da3: $0f
    rrca                                          ; $6da4: $0f
    rrca                                          ; $6da5: $0f
    rrca                                          ; $6da6: $0f
    rrca                                          ; $6da7: $0f
    rrca                                          ; $6da8: $0f
    rrca                                          ; $6da9: $0f
    rrca                                          ; $6daa: $0f
    rrca                                          ; $6dab: $0f
    rrca                                          ; $6dac: $0f
    rrca                                          ; $6dad: $0f
    rrca                                          ; $6dae: $0f
    rrca                                          ; $6daf: $0f
    rrca                                          ; $6db0: $0f
    rrca                                          ; $6db1: $0f
    rrca                                          ; $6db2: $0f
    rrca                                          ; $6db3: $0f
    rst RST_38                                    ; $6db4: $ff
    rst RST_38                                    ; $6db5: $ff
    rst RST_38                                    ; $6db6: $ff
    rst RST_38                                    ; $6db7: $ff
    rst RST_38                                    ; $6db8: $ff
    rst RST_38                                    ; $6db9: $ff
    rst RST_38                                    ; $6dba: $ff
    rst RST_38                                    ; $6dbb: $ff
    rst RST_38                                    ; $6dbc: $ff
    rst RST_38                                    ; $6dbd: $ff
    rst RST_38                                    ; $6dbe: $ff
    rst RST_38                                    ; $6dbf: $ff
    rrca                                          ; $6dc0: $0f
    rrca                                          ; $6dc1: $0f
    rrca                                          ; $6dc2: $0f
    rrca                                          ; $6dc3: $0f
    rrca                                          ; $6dc4: $0f
    rrca                                          ; $6dc5: $0f
    rrca                                          ; $6dc6: $0f
    rrca                                          ; $6dc7: $0f
    rrca                                          ; $6dc8: $0f
    rrca                                          ; $6dc9: $0f
    rrca                                          ; $6dca: $0f
    rrca                                          ; $6dcb: $0f
    rrca                                          ; $6dcc: $0f
    ld a, c                                       ; $6dcd: $79
    ld a, d                                       ; $6dce: $7a
    ld a, e                                       ; $6dcf: $7b
    ld a, h                                       ; $6dd0: $7c
    ld a, l                                       ; $6dd1: $7d
    ld a, [hl]                                    ; $6dd2: $7e
    ld a, a                                       ; $6dd3: $7f
    rst RST_38                                    ; $6dd4: $ff
    rst RST_38                                    ; $6dd5: $ff
    rst RST_38                                    ; $6dd6: $ff
    rst RST_38                                    ; $6dd7: $ff
    rst RST_38                                    ; $6dd8: $ff
    rst RST_38                                    ; $6dd9: $ff
    rst RST_38                                    ; $6dda: $ff
    rst RST_38                                    ; $6ddb: $ff
    rst RST_38                                    ; $6ddc: $ff
    rst RST_38                                    ; $6ddd: $ff
    rst RST_38                                    ; $6dde: $ff
    rst RST_38                                    ; $6ddf: $ff
    ld h, a                                       ; $6de0: $67
    ld h, c                                       ; $6de1: $61
    ld h, d                                       ; $6de2: $62
    rrca                                          ; $6de3: $0f
    ld d, [hl]                                    ; $6de4: $56
    ld d, a                                       ; $6de5: $57
    ld e, b                                       ; $6de6: $58
    rrca                                          ; $6de7: $0f
    ld h, b                                       ; $6de8: $60
    ld h, d                                       ; $6de9: $62
    rrca                                          ; $6dea: $0f
    rrca                                          ; $6deb: $0f
    ld h, b                                       ; $6dec: $60
    add c                                         ; $6ded: $81
    add d                                         ; $6dee: $82
    add e                                         ; $6def: $83
    add h                                         ; $6df0: $84
    add l                                         ; $6df1: $85
    add [hl]                                      ; $6df2: $86
    add a                                         ; $6df3: $87
    rst RST_38                                    ; $6df4: $ff
    rst RST_38                                    ; $6df5: $ff
    rst RST_38                                    ; $6df6: $ff
    rst RST_38                                    ; $6df7: $ff
    rst RST_38                                    ; $6df8: $ff
    rst RST_38                                    ; $6df9: $ff
    rst RST_38                                    ; $6dfa: $ff
    rst RST_38                                    ; $6dfb: $ff
    rst RST_38                                    ; $6dfc: $ff
    rst RST_38                                    ; $6dfd: $ff
    rst RST_38                                    ; $6dfe: $ff
    rst RST_38                                    ; $6dff: $ff
    ld h, [hl]                                    ; $6e00: $66
    ld h, h                                       ; $6e01: $64
    ld h, l                                       ; $6e02: $65
    ld e, c                                       ; $6e03: $59
    ld e, d                                       ; $6e04: $5a
    ld e, e                                       ; $6e05: $5b
    ld e, h                                       ; $6e06: $5c
    ld e, l                                       ; $6e07: $5d
    ld h, e                                       ; $6e08: $63
    ld l, b                                       ; $6e09: $68
    ld d, a                                       ; $6e0a: $57
    ld e, b                                       ; $6e0b: $58
    ld h, e                                       ; $6e0c: $63
    adc c                                         ; $6e0d: $89
    adc d                                         ; $6e0e: $8a
    adc e                                         ; $6e0f: $8b
    adc h                                         ; $6e10: $8c
    adc l                                         ; $6e11: $8d
    adc [hl]                                      ; $6e12: $8e
    adc a                                         ; $6e13: $8f
    rst RST_38                                    ; $6e14: $ff
    rst RST_38                                    ; $6e15: $ff
    rst RST_38                                    ; $6e16: $ff
    rst RST_38                                    ; $6e17: $ff
    rst RST_38                                    ; $6e18: $ff
    rst RST_38                                    ; $6e19: $ff
    rst RST_38                                    ; $6e1a: $ff
    rst RST_38                                    ; $6e1b: $ff
    rst RST_38                                    ; $6e1c: $ff
    rst RST_38                                    ; $6e1d: $ff
    rst RST_38                                    ; $6e1e: $ff
    rst RST_38                                    ; $6e1f: $ff
    ld [hl], h                                    ; $6e20: $74
    ld [hl], h                                    ; $6e21: $74
    ld [hl], h                                    ; $6e22: $74
    ld [hl], h                                    ; $6e23: $74
    ld [hl], h                                    ; $6e24: $74
    ld [hl], h                                    ; $6e25: $74
    ld [hl], h                                    ; $6e26: $74
    ld [hl], h                                    ; $6e27: $74
    ld [hl], h                                    ; $6e28: $74
    ld [hl], h                                    ; $6e29: $74
    ld [hl], h                                    ; $6e2a: $74
    ld [hl], h                                    ; $6e2b: $74
    ld [hl], h                                    ; $6e2c: $74
    ld [hl], h                                    ; $6e2d: $74
    ld [hl], h                                    ; $6e2e: $74
    ld [hl], h                                    ; $6e2f: $74
    ld [hl], h                                    ; $6e30: $74
    ld [hl], h                                    ; $6e31: $74
    ld [hl], h                                    ; $6e32: $74
    ld [hl], h                                    ; $6e33: $74
    rst RST_38                                    ; $6e34: $ff
    rst RST_38                                    ; $6e35: $ff
    rst RST_38                                    ; $6e36: $ff
    rst RST_38                                    ; $6e37: $ff
    rst RST_38                                    ; $6e38: $ff
    rst RST_38                                    ; $6e39: $ff
    rst RST_38                                    ; $6e3a: $ff
    rst RST_38                                    ; $6e3b: $ff
    rst RST_38                                    ; $6e3c: $ff
    rst RST_38                                    ; $6e3d: $ff
    rst RST_38                                    ; $6e3e: $ff
    rst RST_38                                    ; $6e3f: $ff
    rst RST_38                                    ; $6e40: $ff
    rst RST_38                                    ; $6e41: $ff
    rst RST_38                                    ; $6e42: $ff
    rst RST_38                                    ; $6e43: $ff
    rst RST_38                                    ; $6e44: $ff
    rst RST_38                                    ; $6e45: $ff
    rst RST_38                                    ; $6e46: $ff
    rst RST_38                                    ; $6e47: $ff
    rst RST_38                                    ; $6e48: $ff
    rst RST_38                                    ; $6e49: $ff
    rst RST_38                                    ; $6e4a: $ff
    rst RST_38                                    ; $6e4b: $ff
    rst RST_38                                    ; $6e4c: $ff
    rst RST_38                                    ; $6e4d: $ff
    rst RST_38                                    ; $6e4e: $ff
    rst RST_38                                    ; $6e4f: $ff
    rst RST_38                                    ; $6e50: $ff
    rst RST_38                                    ; $6e51: $ff
    rst RST_38                                    ; $6e52: $ff
    rst RST_38                                    ; $6e53: $ff
    rst RST_38                                    ; $6e54: $ff
    rst RST_38                                    ; $6e55: $ff
    rst RST_38                                    ; $6e56: $ff
    rst RST_38                                    ; $6e57: $ff
    rst RST_38                                    ; $6e58: $ff
    rst RST_38                                    ; $6e59: $ff
    rst RST_38                                    ; $6e5a: $ff
    rst RST_38                                    ; $6e5b: $ff
    rst RST_38                                    ; $6e5c: $ff
    rst RST_38                                    ; $6e5d: $ff
    rst RST_38                                    ; $6e5e: $ff
    rst RST_38                                    ; $6e5f: $ff
    rst RST_38                                    ; $6e60: $ff
    rst RST_38                                    ; $6e61: $ff
    rst RST_38                                    ; $6e62: $ff
    rst RST_38                                    ; $6e63: $ff
    rst RST_38                                    ; $6e64: $ff
    rst RST_38                                    ; $6e65: $ff
    rst RST_38                                    ; $6e66: $ff
    rst RST_38                                    ; $6e67: $ff
    rst RST_38                                    ; $6e68: $ff
    rst RST_38                                    ; $6e69: $ff
    rst RST_38                                    ; $6e6a: $ff
    rst RST_38                                    ; $6e6b: $ff
    rst RST_38                                    ; $6e6c: $ff
    rst RST_38                                    ; $6e6d: $ff
    rst RST_38                                    ; $6e6e: $ff
    rst RST_38                                    ; $6e6f: $ff
    rst RST_38                                    ; $6e70: $ff
    rst RST_38                                    ; $6e71: $ff
    rst RST_38                                    ; $6e72: $ff
    rst RST_38                                    ; $6e73: $ff
    rst RST_38                                    ; $6e74: $ff
    rst RST_38                                    ; $6e75: $ff
    rst RST_38                                    ; $6e76: $ff
    rst RST_38                                    ; $6e77: $ff
    rst RST_38                                    ; $6e78: $ff
    rst RST_38                                    ; $6e79: $ff
    rst RST_38                                    ; $6e7a: $ff
    rst RST_38                                    ; $6e7b: $ff
    rst RST_38                                    ; $6e7c: $ff
    rst RST_38                                    ; $6e7d: $ff
    rst RST_38                                    ; $6e7e: $ff
    rst RST_38                                    ; $6e7f: $ff
    rst RST_38                                    ; $6e80: $ff
    rst RST_38                                    ; $6e81: $ff
    rst RST_38                                    ; $6e82: $ff
    rst RST_38                                    ; $6e83: $ff
    rst RST_38                                    ; $6e84: $ff
    rst RST_38                                    ; $6e85: $ff
    rst RST_38                                    ; $6e86: $ff
    rst RST_38                                    ; $6e87: $ff
    rst RST_38                                    ; $6e88: $ff
    rst RST_38                                    ; $6e89: $ff
    rst RST_38                                    ; $6e8a: $ff
    rst RST_38                                    ; $6e8b: $ff
    rst RST_38                                    ; $6e8c: $ff
    rst RST_38                                    ; $6e8d: $ff
    rst RST_38                                    ; $6e8e: $ff
    rst RST_38                                    ; $6e8f: $ff
    rst RST_38                                    ; $6e90: $ff
    rst RST_38                                    ; $6e91: $ff
    rst RST_38                                    ; $6e92: $ff
    rst RST_38                                    ; $6e93: $ff
    rst RST_38                                    ; $6e94: $ff
    rst RST_38                                    ; $6e95: $ff
    rst RST_38                                    ; $6e96: $ff
    rst RST_38                                    ; $6e97: $ff
    rst RST_38                                    ; $6e98: $ff
    rst RST_38                                    ; $6e99: $ff
    rst RST_38                                    ; $6e9a: $ff
    rst RST_38                                    ; $6e9b: $ff
    rst RST_38                                    ; $6e9c: $ff
    rst RST_38                                    ; $6e9d: $ff
    rst RST_38                                    ; $6e9e: $ff
    rst RST_38                                    ; $6e9f: $ff
    rst RST_38                                    ; $6ea0: $ff
    rst RST_38                                    ; $6ea1: $ff
    rst RST_38                                    ; $6ea2: $ff
    rst RST_38                                    ; $6ea3: $ff
    rst RST_38                                    ; $6ea4: $ff
    rst RST_38                                    ; $6ea5: $ff
    rst RST_38                                    ; $6ea6: $ff
    rst RST_38                                    ; $6ea7: $ff
    rst RST_38                                    ; $6ea8: $ff
    rst RST_38                                    ; $6ea9: $ff
    rst RST_38                                    ; $6eaa: $ff
    rst RST_38                                    ; $6eab: $ff
    rst RST_38                                    ; $6eac: $ff
    rst RST_38                                    ; $6ead: $ff
    rst RST_38                                    ; $6eae: $ff
    rst RST_38                                    ; $6eaf: $ff
    rst RST_38                                    ; $6eb0: $ff
    rst RST_38                                    ; $6eb1: $ff
    rst RST_38                                    ; $6eb2: $ff
    rst RST_38                                    ; $6eb3: $ff
    rst RST_38                                    ; $6eb4: $ff
    rst RST_38                                    ; $6eb5: $ff
    rst RST_38                                    ; $6eb6: $ff
    rst RST_38                                    ; $6eb7: $ff
    rst RST_38                                    ; $6eb8: $ff
    rst RST_38                                    ; $6eb9: $ff
    rst RST_38                                    ; $6eba: $ff
    rst RST_38                                    ; $6ebb: $ff
    rst RST_38                                    ; $6ebc: $ff
    rst RST_38                                    ; $6ebd: $ff
    rst RST_38                                    ; $6ebe: $ff
    rst RST_38                                    ; $6ebf: $ff
    rst RST_38                                    ; $6ec0: $ff
    rst RST_38                                    ; $6ec1: $ff
    rst RST_38                                    ; $6ec2: $ff
    rst RST_38                                    ; $6ec3: $ff
    rst RST_38                                    ; $6ec4: $ff
    rst RST_38                                    ; $6ec5: $ff
    rst RST_38                                    ; $6ec6: $ff
    rst RST_38                                    ; $6ec7: $ff
    rst RST_38                                    ; $6ec8: $ff
    rst RST_38                                    ; $6ec9: $ff
    rst RST_38                                    ; $6eca: $ff
    rst RST_38                                    ; $6ecb: $ff
    rst RST_38                                    ; $6ecc: $ff
    rst RST_38                                    ; $6ecd: $ff
    rst RST_38                                    ; $6ece: $ff
    rst RST_38                                    ; $6ecf: $ff
    rst RST_38                                    ; $6ed0: $ff
    rst RST_38                                    ; $6ed1: $ff
    rst RST_38                                    ; $6ed2: $ff
    rst RST_38                                    ; $6ed3: $ff
    rst RST_38                                    ; $6ed4: $ff
    rst RST_38                                    ; $6ed5: $ff
    rst RST_38                                    ; $6ed6: $ff
    rst RST_38                                    ; $6ed7: $ff
    rst RST_38                                    ; $6ed8: $ff
    rst RST_38                                    ; $6ed9: $ff
    rst RST_38                                    ; $6eda: $ff
    rst RST_38                                    ; $6edb: $ff
    rst RST_38                                    ; $6edc: $ff
    rst RST_38                                    ; $6edd: $ff
    rst RST_38                                    ; $6ede: $ff
    rst RST_38                                    ; $6edf: $ff
    rst RST_38                                    ; $6ee0: $ff
    rst RST_38                                    ; $6ee1: $ff
    rst RST_38                                    ; $6ee2: $ff
    rst RST_38                                    ; $6ee3: $ff
    rst RST_38                                    ; $6ee4: $ff
    rst RST_38                                    ; $6ee5: $ff
    rst RST_38                                    ; $6ee6: $ff
    rst RST_38                                    ; $6ee7: $ff
    rst RST_38                                    ; $6ee8: $ff
    rst RST_38                                    ; $6ee9: $ff
    rst RST_38                                    ; $6eea: $ff
    rst RST_38                                    ; $6eeb: $ff
    rst RST_38                                    ; $6eec: $ff
    rst RST_38                                    ; $6eed: $ff
    rst RST_38                                    ; $6eee: $ff
    rst RST_38                                    ; $6eef: $ff
    rst RST_38                                    ; $6ef0: $ff
    rst RST_38                                    ; $6ef1: $ff
    rst RST_38                                    ; $6ef2: $ff
    rst RST_38                                    ; $6ef3: $ff
    rst RST_38                                    ; $6ef4: $ff
    rst RST_38                                    ; $6ef5: $ff
    rst RST_38                                    ; $6ef6: $ff
    rst RST_38                                    ; $6ef7: $ff
    rst RST_38                                    ; $6ef8: $ff
    rst RST_38                                    ; $6ef9: $ff
    rst RST_38                                    ; $6efa: $ff
    rst RST_38                                    ; $6efb: $ff
    rst RST_38                                    ; $6efc: $ff
    rst RST_38                                    ; $6efd: $ff
    rst RST_38                                    ; $6efe: $ff
    rst RST_38                                    ; $6eff: $ff
    rst RST_38                                    ; $6f00: $ff
    rst RST_38                                    ; $6f01: $ff
    rst RST_38                                    ; $6f02: $ff
    rst RST_38                                    ; $6f03: $ff
    rst RST_38                                    ; $6f04: $ff
    rst RST_38                                    ; $6f05: $ff
    rst RST_38                                    ; $6f06: $ff
    rst RST_38                                    ; $6f07: $ff
    rst RST_38                                    ; $6f08: $ff
    rst RST_38                                    ; $6f09: $ff
    rst RST_38                                    ; $6f0a: $ff
    rst RST_38                                    ; $6f0b: $ff
    rst RST_38                                    ; $6f0c: $ff
    rst RST_38                                    ; $6f0d: $ff
    rst RST_38                                    ; $6f0e: $ff
    rst RST_38                                    ; $6f0f: $ff
    rst RST_38                                    ; $6f10: $ff
    rst RST_38                                    ; $6f11: $ff
    rst RST_38                                    ; $6f12: $ff
    rst RST_38                                    ; $6f13: $ff
    rst RST_38                                    ; $6f14: $ff
    rst RST_38                                    ; $6f15: $ff
    rst RST_38                                    ; $6f16: $ff
    rst RST_38                                    ; $6f17: $ff
    rst RST_38                                    ; $6f18: $ff
    rst RST_38                                    ; $6f19: $ff
    rst RST_38                                    ; $6f1a: $ff
    rst RST_38                                    ; $6f1b: $ff
    rst RST_38                                    ; $6f1c: $ff
    rst RST_38                                    ; $6f1d: $ff
    rst RST_38                                    ; $6f1e: $ff
    rst RST_38                                    ; $6f1f: $ff
    rst RST_38                                    ; $6f20: $ff
    rst RST_38                                    ; $6f21: $ff
    rst RST_38                                    ; $6f22: $ff
    rst RST_38                                    ; $6f23: $ff
    rst RST_38                                    ; $6f24: $ff
    rst RST_38                                    ; $6f25: $ff
    rst RST_38                                    ; $6f26: $ff
    rst RST_38                                    ; $6f27: $ff
    rst RST_38                                    ; $6f28: $ff
    rst RST_38                                    ; $6f29: $ff
    rst RST_38                                    ; $6f2a: $ff
    rst RST_38                                    ; $6f2b: $ff
    rst RST_38                                    ; $6f2c: $ff
    rst RST_38                                    ; $6f2d: $ff
    rst RST_38                                    ; $6f2e: $ff
    rst RST_38                                    ; $6f2f: $ff
    rst RST_38                                    ; $6f30: $ff
    rst RST_38                                    ; $6f31: $ff
    rst RST_38                                    ; $6f32: $ff
    rst RST_38                                    ; $6f33: $ff
    rst RST_38                                    ; $6f34: $ff
    rst RST_38                                    ; $6f35: $ff
    rst RST_38                                    ; $6f36: $ff
    rst RST_38                                    ; $6f37: $ff
    rst RST_38                                    ; $6f38: $ff
    rst RST_38                                    ; $6f39: $ff
    rst RST_38                                    ; $6f3a: $ff
    rst RST_38                                    ; $6f3b: $ff
    rst RST_38                                    ; $6f3c: $ff
    rst RST_38                                    ; $6f3d: $ff
    rst RST_38                                    ; $6f3e: $ff
    rst RST_38                                    ; $6f3f: $ff
    rst RST_38                                    ; $6f40: $ff
    rst RST_38                                    ; $6f41: $ff
    rst RST_38                                    ; $6f42: $ff
    rst RST_38                                    ; $6f43: $ff
    rst RST_38                                    ; $6f44: $ff
    rst RST_38                                    ; $6f45: $ff
    rst RST_38                                    ; $6f46: $ff
    rst RST_38                                    ; $6f47: $ff
    rst RST_38                                    ; $6f48: $ff
    rst RST_38                                    ; $6f49: $ff
    rst RST_38                                    ; $6f4a: $ff
    rst RST_38                                    ; $6f4b: $ff
    rst RST_38                                    ; $6f4c: $ff
    rst RST_38                                    ; $6f4d: $ff
    rst RST_38                                    ; $6f4e: $ff
    rst RST_38                                    ; $6f4f: $ff
    rst RST_38                                    ; $6f50: $ff
    rst RST_38                                    ; $6f51: $ff
    rst RST_38                                    ; $6f52: $ff
    rst RST_38                                    ; $6f53: $ff
    rst RST_38                                    ; $6f54: $ff
    rst RST_38                                    ; $6f55: $ff
    rst RST_38                                    ; $6f56: $ff
    rst RST_38                                    ; $6f57: $ff
    rst RST_38                                    ; $6f58: $ff
    rst RST_38                                    ; $6f59: $ff
    rst RST_38                                    ; $6f5a: $ff
    rst RST_38                                    ; $6f5b: $ff
    rst RST_38                                    ; $6f5c: $ff
    rst RST_38                                    ; $6f5d: $ff
    rst RST_38                                    ; $6f5e: $ff
    rst RST_38                                    ; $6f5f: $ff
    rst RST_38                                    ; $6f60: $ff
    rst RST_38                                    ; $6f61: $ff
    rst RST_38                                    ; $6f62: $ff
    rst RST_38                                    ; $6f63: $ff
    rst RST_38                                    ; $6f64: $ff
    rst RST_38                                    ; $6f65: $ff
    rst RST_38                                    ; $6f66: $ff
    rst RST_38                                    ; $6f67: $ff
    rst RST_38                                    ; $6f68: $ff
    rst RST_38                                    ; $6f69: $ff
    rst RST_38                                    ; $6f6a: $ff
    rst RST_38                                    ; $6f6b: $ff
    rst RST_38                                    ; $6f6c: $ff
    rst RST_38                                    ; $6f6d: $ff
    rst RST_38                                    ; $6f6e: $ff
    rst RST_38                                    ; $6f6f: $ff
    rst RST_38                                    ; $6f70: $ff
    rst RST_38                                    ; $6f71: $ff
    rst RST_38                                    ; $6f72: $ff
    rst RST_38                                    ; $6f73: $ff
    rst RST_38                                    ; $6f74: $ff
    rst RST_38                                    ; $6f75: $ff
    rst RST_38                                    ; $6f76: $ff
    rst RST_38                                    ; $6f77: $ff
    rst RST_38                                    ; $6f78: $ff
    rst RST_38                                    ; $6f79: $ff
    rst RST_38                                    ; $6f7a: $ff
    rst RST_38                                    ; $6f7b: $ff
    rst RST_38                                    ; $6f7c: $ff
    rst RST_38                                    ; $6f7d: $ff
    rst RST_38                                    ; $6f7e: $ff
    rst RST_38                                    ; $6f7f: $ff
    rst RST_38                                    ; $6f80: $ff
    rst RST_38                                    ; $6f81: $ff
    rst RST_38                                    ; $6f82: $ff
    rst RST_38                                    ; $6f83: $ff
    rst RST_38                                    ; $6f84: $ff
    rst RST_38                                    ; $6f85: $ff
    rst RST_38                                    ; $6f86: $ff
    rst RST_38                                    ; $6f87: $ff
    rst RST_38                                    ; $6f88: $ff
    rst RST_38                                    ; $6f89: $ff
    rst RST_38                                    ; $6f8a: $ff
    rst RST_38                                    ; $6f8b: $ff
    rst RST_38                                    ; $6f8c: $ff
    rst RST_38                                    ; $6f8d: $ff
    rst RST_38                                    ; $6f8e: $ff
    rst RST_38                                    ; $6f8f: $ff
    rst RST_38                                    ; $6f90: $ff
    rst RST_38                                    ; $6f91: $ff
    rst RST_38                                    ; $6f92: $ff
    rst RST_38                                    ; $6f93: $ff
    rst RST_38                                    ; $6f94: $ff
    rst RST_38                                    ; $6f95: $ff
    rst RST_38                                    ; $6f96: $ff
    rst RST_38                                    ; $6f97: $ff
    rst RST_38                                    ; $6f98: $ff
    rst RST_38                                    ; $6f99: $ff
    rst RST_38                                    ; $6f9a: $ff
    rst RST_38                                    ; $6f9b: $ff
    rst RST_38                                    ; $6f9c: $ff
    rst RST_38                                    ; $6f9d: $ff
    rst RST_38                                    ; $6f9e: $ff
    rst RST_38                                    ; $6f9f: $ff
    rst RST_38                                    ; $6fa0: $ff
    rst RST_38                                    ; $6fa1: $ff
    rst RST_38                                    ; $6fa2: $ff
    rst RST_38                                    ; $6fa3: $ff
    rst RST_38                                    ; $6fa4: $ff
    rst RST_38                                    ; $6fa5: $ff
    rst RST_38                                    ; $6fa6: $ff
    rst RST_38                                    ; $6fa7: $ff
    rst RST_38                                    ; $6fa8: $ff
    rst RST_38                                    ; $6fa9: $ff
    rst RST_38                                    ; $6faa: $ff
    rst RST_38                                    ; $6fab: $ff
    rst RST_38                                    ; $6fac: $ff
    rst RST_38                                    ; $6fad: $ff
    rst RST_38                                    ; $6fae: $ff
    rst RST_38                                    ; $6faf: $ff
    rst RST_38                                    ; $6fb0: $ff
    rst RST_38                                    ; $6fb1: $ff
    rst RST_38                                    ; $6fb2: $ff
    rst RST_38                                    ; $6fb3: $ff
    rst RST_38                                    ; $6fb4: $ff
    rst RST_38                                    ; $6fb5: $ff
    rst RST_38                                    ; $6fb6: $ff
    rst RST_38                                    ; $6fb7: $ff
    rst RST_38                                    ; $6fb8: $ff
    rst RST_38                                    ; $6fb9: $ff
    rst RST_38                                    ; $6fba: $ff
    rst RST_38                                    ; $6fbb: $ff
    rst RST_38                                    ; $6fbc: $ff
    rst RST_38                                    ; $6fbd: $ff
    rst RST_38                                    ; $6fbe: $ff
    rst RST_38                                    ; $6fbf: $ff
    rst RST_38                                    ; $6fc0: $ff
    rst RST_38                                    ; $6fc1: $ff
    rst RST_38                                    ; $6fc2: $ff
    rst RST_38                                    ; $6fc3: $ff
    rst RST_38                                    ; $6fc4: $ff
    rst RST_38                                    ; $6fc5: $ff
    rst RST_38                                    ; $6fc6: $ff
    rst RST_38                                    ; $6fc7: $ff
    rst RST_38                                    ; $6fc8: $ff
    rst RST_38                                    ; $6fc9: $ff
    rst RST_38                                    ; $6fca: $ff
    rst RST_38                                    ; $6fcb: $ff
    rst RST_38                                    ; $6fcc: $ff
    rst RST_38                                    ; $6fcd: $ff
    rst RST_38                                    ; $6fce: $ff
    rst RST_38                                    ; $6fcf: $ff
    rst RST_38                                    ; $6fd0: $ff
    rst RST_38                                    ; $6fd1: $ff
    rst RST_38                                    ; $6fd2: $ff
    rst RST_38                                    ; $6fd3: $ff
    rst RST_38                                    ; $6fd4: $ff
    rst RST_38                                    ; $6fd5: $ff
    rst RST_38                                    ; $6fd6: $ff
    rst RST_38                                    ; $6fd7: $ff
    rst RST_38                                    ; $6fd8: $ff
    rst RST_38                                    ; $6fd9: $ff
    rst RST_38                                    ; $6fda: $ff
    rst RST_38                                    ; $6fdb: $ff
    rst RST_38                                    ; $6fdc: $ff
    rst RST_38                                    ; $6fdd: $ff
    rst RST_38                                    ; $6fde: $ff
    rst RST_38                                    ; $6fdf: $ff
    rst RST_38                                    ; $6fe0: $ff
    rst RST_38                                    ; $6fe1: $ff
    rst RST_38                                    ; $6fe2: $ff
    rst RST_38                                    ; $6fe3: $ff
    rst RST_38                                    ; $6fe4: $ff
    rst RST_38                                    ; $6fe5: $ff
    rst RST_38                                    ; $6fe6: $ff
    rst RST_38                                    ; $6fe7: $ff
    rst RST_38                                    ; $6fe8: $ff
    rst RST_38                                    ; $6fe9: $ff
    rst RST_38                                    ; $6fea: $ff
    rst RST_38                                    ; $6feb: $ff
    rst RST_38                                    ; $6fec: $ff
    rst RST_38                                    ; $6fed: $ff
    rst RST_38                                    ; $6fee: $ff
    rst RST_38                                    ; $6fef: $ff
    rst RST_38                                    ; $6ff0: $ff
    rst RST_38                                    ; $6ff1: $ff
    rst RST_38                                    ; $6ff2: $ff
    rst RST_38                                    ; $6ff3: $ff
    rst RST_38                                    ; $6ff4: $ff
    rst RST_38                                    ; $6ff5: $ff
    rst RST_38                                    ; $6ff6: $ff
    rst RST_38                                    ; $6ff7: $ff
    rst RST_38                                    ; $6ff8: $ff
    rst RST_38                                    ; $6ff9: $ff
    rst RST_38                                    ; $6ffa: $ff
    rst RST_38                                    ; $6ffb: $ff
    rst RST_38                                    ; $6ffc: $ff
    rst RST_38                                    ; $6ffd: $ff
    rst RST_38                                    ; $6ffe: $ff
    rst RST_38                                    ; $6fff: $ff
    rrca                                          ; $7000: $0f
    nop                                           ; $7001: $00
    ld bc, $0302                                  ; $7002: $01 $02 $03
    inc b                                         ; $7005: $04
    dec b                                         ; $7006: $05
    ld b, $07                                     ; $7007: $06 $07
    ld [$0a09], sp                                ; $7009: $08 $09 $0a
    dec bc                                        ; $700c: $0b
    inc c                                         ; $700d: $0c
    dec c                                         ; $700e: $0d
    inc bc                                        ; $700f: $03
    ld c, $00                                     ; $7010: $0e $00
    ld bc, rIF                                    ; $7012: $01 $0f $ff
    rst RST_38                                    ; $7015: $ff
    rst RST_38                                    ; $7016: $ff
    rst RST_38                                    ; $7017: $ff
    rst RST_38                                    ; $7018: $ff
    rst RST_38                                    ; $7019: $ff
    rst RST_38                                    ; $701a: $ff
    rst RST_38                                    ; $701b: $ff
    rst RST_38                                    ; $701c: $ff
    rst RST_38                                    ; $701d: $ff
    rst RST_38                                    ; $701e: $ff
    rst RST_38                                    ; $701f: $ff
    rra                                           ; $7020: $1f
    db $10                                        ; $7021: $10
    ld de, $1312                                  ; $7022: $11 $12 $13
    inc d                                         ; $7025: $14
    dec d                                         ; $7026: $15
    ld d, $17                                     ; $7027: $16 $17
    jr jr_004_7044                                ; $7029: $18 $19

    ld a, [de]                                    ; $702b: $1a
    dec de                                        ; $702c: $1b
    inc e                                         ; $702d: $1c
    dec e                                         ; $702e: $1d
    inc de                                        ; $702f: $13
    ld e, $10                                     ; $7030: $1e $10
    ld de, $ff1f                                  ; $7032: $11 $1f $ff
    rst RST_38                                    ; $7035: $ff
    rst RST_38                                    ; $7036: $ff
    rst RST_38                                    ; $7037: $ff
    rst RST_38                                    ; $7038: $ff
    rst RST_38                                    ; $7039: $ff
    rst RST_38                                    ; $703a: $ff
    rst RST_38                                    ; $703b: $ff
    rst RST_38                                    ; $703c: $ff
    rst RST_38                                    ; $703d: $ff
    rst RST_38                                    ; $703e: $ff
    rst RST_38                                    ; $703f: $ff
    ld d, [hl]                                    ; $7040: $56
    ld e, c                                       ; $7041: $59
    ld d, [hl]                                    ; $7042: $56
    ld e, c                                       ; $7043: $59

jr_004_7044:
    ld d, [hl]                                    ; $7044: $56
    ld d, a                                       ; $7045: $57
    ld [hl], l                                    ; $7046: $75
    ld e, c                                       ; $7047: $59
    ld d, [hl]                                    ; $7048: $56
    ld [hl], l                                    ; $7049: $75
    ld d, a                                       ; $704a: $57
    ld e, b                                       ; $704b: $58
    ld d, [hl]                                    ; $704c: $56
    ld [hl], l                                    ; $704d: $75
    ld e, c                                       ; $704e: $59
    ld d, [hl]                                    ; $704f: $56
    ld d, a                                       ; $7050: $57
    ld e, b                                       ; $7051: $58
    ld e, b                                       ; $7052: $58
    ld [hl], l                                    ; $7053: $75
    rst RST_38                                    ; $7054: $ff
    rst RST_38                                    ; $7055: $ff
    rst RST_38                                    ; $7056: $ff
    rst RST_38                                    ; $7057: $ff
    rst RST_38                                    ; $7058: $ff
    rst RST_38                                    ; $7059: $ff
    rst RST_38                                    ; $705a: $ff
    rst RST_38                                    ; $705b: $ff
    rst RST_38                                    ; $705c: $ff
    rst RST_38                                    ; $705d: $ff
    rst RST_38                                    ; $705e: $ff
    rst RST_38                                    ; $705f: $ff
    ld e, b                                       ; $7060: $58
    dec sp                                        ; $7061: $3b
    dec l                                         ; $7062: $2d
    dec l                                         ; $7063: $2d
    dec l                                         ; $7064: $2d
    dec l                                         ; $7065: $2d
    dec l                                         ; $7066: $2d
    dec l                                         ; $7067: $2d
    dec l                                         ; $7068: $2d
    dec l                                         ; $7069: $2d
    dec l                                         ; $706a: $2d
    dec l                                         ; $706b: $2d
    dec l                                         ; $706c: $2d
    dec l                                         ; $706d: $2d
    dec l                                         ; $706e: $2d
    dec l                                         ; $706f: $2d
    dec l                                         ; $7070: $2d
    dec l                                         ; $7071: $2d
    ccf                                           ; $7072: $3f
    ld e, c                                       ; $7073: $59
    rst RST_38                                    ; $7074: $ff
    rst RST_38                                    ; $7075: $ff
    rst RST_38                                    ; $7076: $ff
    rst RST_38                                    ; $7077: $ff
    rst RST_38                                    ; $7078: $ff
    rst RST_38                                    ; $7079: $ff
    rst RST_38                                    ; $707a: $ff
    rst RST_38                                    ; $707b: $ff
    rst RST_38                                    ; $707c: $ff
    rst RST_38                                    ; $707d: $ff
    rst RST_38                                    ; $707e: $ff
    rst RST_38                                    ; $707f: $ff
    ld [hl], l                                    ; $7080: $75
    ld l, $90                                     ; $7081: $2e $90
    sub c                                         ; $7083: $91
    sub d                                         ; $7084: $92
    sub e                                         ; $7085: $93
    sub h                                         ; $7086: $94
    sub l                                         ; $7087: $95
    sub [hl]                                      ; $7088: $96
    sub a                                         ; $7089: $97
    sbc b                                         ; $708a: $98
    sbc c                                         ; $708b: $99
    sbc d                                         ; $708c: $9a
    sbc e                                         ; $708d: $9b
    sbc h                                         ; $708e: $9c
    sbc l                                         ; $708f: $9d
    sbc [hl]                                      ; $7090: $9e
    sbc a                                         ; $7091: $9f
    inc l                                         ; $7092: $2c
    ld d, [hl]                                    ; $7093: $56
    rst RST_38                                    ; $7094: $ff
    rst RST_38                                    ; $7095: $ff
    rst RST_38                                    ; $7096: $ff
    rst RST_38                                    ; $7097: $ff
    rst RST_38                                    ; $7098: $ff
    rst RST_38                                    ; $7099: $ff
    rst RST_38                                    ; $709a: $ff
    rst RST_38                                    ; $709b: $ff
    rst RST_38                                    ; $709c: $ff
    rst RST_38                                    ; $709d: $ff
    rst RST_38                                    ; $709e: $ff
    rst RST_38                                    ; $709f: $ff
    ld d, a                                       ; $70a0: $57
    ld l, $a0                                     ; $70a1: $2e $a0
    and c                                         ; $70a3: $a1
    and d                                         ; $70a4: $a2
    and e                                         ; $70a5: $a3
    and h                                         ; $70a6: $a4
    and l                                         ; $70a7: $a5
    and [hl]                                      ; $70a8: $a6
    and a                                         ; $70a9: $a7
    xor b                                         ; $70aa: $a8
    xor c                                         ; $70ab: $a9
    xor d                                         ; $70ac: $aa
    xor e                                         ; $70ad: $ab
    xor h                                         ; $70ae: $ac
    xor l                                         ; $70af: $ad
    xor [hl]                                      ; $70b0: $ae
    xor a                                         ; $70b1: $af
    inc l                                         ; $70b2: $2c
    ld d, a                                       ; $70b3: $57
    rst RST_38                                    ; $70b4: $ff
    rst RST_38                                    ; $70b5: $ff
    rst RST_38                                    ; $70b6: $ff
    rst RST_38                                    ; $70b7: $ff
    rst RST_38                                    ; $70b8: $ff
    rst RST_38                                    ; $70b9: $ff
    rst RST_38                                    ; $70ba: $ff
    rst RST_38                                    ; $70bb: $ff
    rst RST_38                                    ; $70bc: $ff
    rst RST_38                                    ; $70bd: $ff
    rst RST_38                                    ; $70be: $ff
    rst RST_38                                    ; $70bf: $ff
    ld e, c                                       ; $70c0: $59
    ld l, $b0                                     ; $70c1: $2e $b0
    or c                                          ; $70c3: $b1
    or d                                          ; $70c4: $b2
    or e                                          ; $70c5: $b3
    or h                                          ; $70c6: $b4
    or l                                          ; $70c7: $b5
    or [hl]                                       ; $70c8: $b6
    or a                                          ; $70c9: $b7
    cp b                                          ; $70ca: $b8
    cp c                                          ; $70cb: $b9
    cp d                                          ; $70cc: $ba
    cp e                                          ; $70cd: $bb
    cp h                                          ; $70ce: $bc
    cp l                                          ; $70cf: $bd
    cp [hl]                                       ; $70d0: $be
    cp a                                          ; $70d1: $bf
    inc l                                         ; $70d2: $2c
    ld e, b                                       ; $70d3: $58
    rst RST_38                                    ; $70d4: $ff
    rst RST_38                                    ; $70d5: $ff
    rst RST_38                                    ; $70d6: $ff
    rst RST_38                                    ; $70d7: $ff
    rst RST_38                                    ; $70d8: $ff
    rst RST_38                                    ; $70d9: $ff
    rst RST_38                                    ; $70da: $ff
    rst RST_38                                    ; $70db: $ff
    rst RST_38                                    ; $70dc: $ff
    rst RST_38                                    ; $70dd: $ff
    rst RST_38                                    ; $70de: $ff
    rst RST_38                                    ; $70df: $ff
    ld d, [hl]                                    ; $70e0: $56
    ld l, $c0                                     ; $70e1: $2e $c0
    pop bc                                        ; $70e3: $c1
    jp nz, $c4c3                                  ; $70e4: $c2 $c3 $c4

    push bc                                       ; $70e7: $c5
    add $c7                                       ; $70e8: $c6 $c7
    ret z                                         ; $70ea: $c8

    ret                                           ; $70eb: $c9


    jp z, $cccb                                   ; $70ec: $ca $cb $cc

    call $cfce                                    ; $70ef: $cd $ce $cf
    inc l                                         ; $70f2: $2c
    ld [hl], l                                    ; $70f3: $75
    rst RST_38                                    ; $70f4: $ff
    rst RST_38                                    ; $70f5: $ff
    rst RST_38                                    ; $70f6: $ff
    rst RST_38                                    ; $70f7: $ff
    rst RST_38                                    ; $70f8: $ff
    rst RST_38                                    ; $70f9: $ff
    rst RST_38                                    ; $70fa: $ff
    rst RST_38                                    ; $70fb: $ff
    rst RST_38                                    ; $70fc: $ff
    rst RST_38                                    ; $70fd: $ff
    rst RST_38                                    ; $70fe: $ff
    rst RST_38                                    ; $70ff: $ff
    ld e, b                                       ; $7100: $58
    ld l, $d0                                     ; $7101: $2e $d0
    pop de                                        ; $7103: $d1
    jp nc, $d4d3                                  ; $7104: $d2 $d3 $d4

    push de                                       ; $7107: $d5
    sub $d7                                       ; $7108: $d6 $d7
    ret c                                         ; $710a: $d8

    reti                                          ; $710b: $d9


    jp c, $dcdb                                   ; $710c: $da $db $dc

    db $dd                                        ; $710f: $dd
    sbc $df                                       ; $7110: $de $df
    inc l                                         ; $7112: $2c
    ld d, [hl]                                    ; $7113: $56
    rst RST_38                                    ; $7114: $ff
    rst RST_38                                    ; $7115: $ff
    rst RST_38                                    ; $7116: $ff
    rst RST_38                                    ; $7117: $ff
    rst RST_38                                    ; $7118: $ff
    rst RST_38                                    ; $7119: $ff
    rst RST_38                                    ; $711a: $ff
    rst RST_38                                    ; $711b: $ff
    rst RST_38                                    ; $711c: $ff
    rst RST_38                                    ; $711d: $ff
    rst RST_38                                    ; $711e: $ff
    rst RST_38                                    ; $711f: $ff
    ld d, a                                       ; $7120: $57
    ld l, $e0                                     ; $7121: $2e $e0
    pop hl                                        ; $7123: $e1
    ldh [c], a                                    ; $7124: $e2
    db $e3                                        ; $7125: $e3
    db $e4                                        ; $7126: $e4
    push hl                                       ; $7127: $e5
    and $e7                                       ; $7128: $e6 $e7
    add sp, -$17                                  ; $712a: $e8 $e9
    ld [$eceb], a                                 ; $712c: $ea $eb $ec
    db $ed                                        ; $712f: $ed
    xor $ef                                       ; $7130: $ee $ef
    inc l                                         ; $7132: $2c
    ld [hl], l                                    ; $7133: $75
    rst RST_38                                    ; $7134: $ff
    rst RST_38                                    ; $7135: $ff
    rst RST_38                                    ; $7136: $ff
    rst RST_38                                    ; $7137: $ff
    rst RST_38                                    ; $7138: $ff
    rst RST_38                                    ; $7139: $ff
    rst RST_38                                    ; $713a: $ff
    rst RST_38                                    ; $713b: $ff
    rst RST_38                                    ; $713c: $ff
    rst RST_38                                    ; $713d: $ff
    rst RST_38                                    ; $713e: $ff
    rst RST_38                                    ; $713f: $ff
    ld d, [hl]                                    ; $7140: $56
    ld l, $f0                                     ; $7141: $2e $f0
    pop af                                        ; $7143: $f1
    ldh a, [c]                                    ; $7144: $f2
    di                                            ; $7145: $f3
    db $f4                                        ; $7146: $f4
    push af                                       ; $7147: $f5
    or $f7                                        ; $7148: $f6 $f7
    ld hl, sp-$07                                 ; $714a: $f8 $f9
    ld a, [$fcfb]                                 ; $714c: $fa $fb $fc
    db $fd                                        ; $714f: $fd
    cp $ff                                        ; $7150: $fe $ff
    inc l                                         ; $7152: $2c
    ld d, [hl]                                    ; $7153: $56
    rst RST_38                                    ; $7154: $ff
    rst RST_38                                    ; $7155: $ff
    rst RST_38                                    ; $7156: $ff
    rst RST_38                                    ; $7157: $ff
    rst RST_38                                    ; $7158: $ff
    rst RST_38                                    ; $7159: $ff
    rst RST_38                                    ; $715a: $ff
    rst RST_38                                    ; $715b: $ff
    rst RST_38                                    ; $715c: $ff
    rst RST_38                                    ; $715d: $ff
    rst RST_38                                    ; $715e: $ff
    rst RST_38                                    ; $715f: $ff
    ld d, [hl]                                    ; $7160: $56
    inc a                                         ; $7161: $3c
    dec a                                         ; $7162: $3d
    dec a                                         ; $7163: $3d
    dec a                                         ; $7164: $3d
    dec a                                         ; $7165: $3d
    dec a                                         ; $7166: $3d
    dec a                                         ; $7167: $3d
    dec a                                         ; $7168: $3d
    dec a                                         ; $7169: $3d
    dec a                                         ; $716a: $3d
    dec a                                         ; $716b: $3d
    dec a                                         ; $716c: $3d
    dec a                                         ; $716d: $3d
    dec a                                         ; $716e: $3d
    dec a                                         ; $716f: $3d
    dec a                                         ; $7170: $3d
    dec a                                         ; $7171: $3d
    ld a, $59                                     ; $7172: $3e $59
    rst RST_38                                    ; $7174: $ff
    rst RST_38                                    ; $7175: $ff
    rst RST_38                                    ; $7176: $ff
    rst RST_38                                    ; $7177: $ff
    rst RST_38                                    ; $7178: $ff
    rst RST_38                                    ; $7179: $ff
    rst RST_38                                    ; $717a: $ff
    rst RST_38                                    ; $717b: $ff
    rst RST_38                                    ; $717c: $ff
    rst RST_38                                    ; $717d: $ff
    rst RST_38                                    ; $717e: $ff
    rst RST_38                                    ; $717f: $ff
    ld d, [hl]                                    ; $7180: $56
    ld [hl], l                                    ; $7181: $75
    ld d, [hl]                                    ; $7182: $56
    ld [hl], l                                    ; $7183: $75
    ld d, [hl]                                    ; $7184: $56
    ld d, [hl]                                    ; $7185: $56
    ld [hl], l                                    ; $7186: $75
    ld d, [hl]                                    ; $7187: $56
    ld [hl], l                                    ; $7188: $75
    ld d, a                                       ; $7189: $57
    ld d, [hl]                                    ; $718a: $56
    ld d, [hl]                                    ; $718b: $56
    ld [hl], l                                    ; $718c: $75
    ld d, [hl]                                    ; $718d: $56
    ld [hl], l                                    ; $718e: $75
    ld [hl], l                                    ; $718f: $75
    ld d, [hl]                                    ; $7190: $56
    ld d, [hl]                                    ; $7191: $56
    ld d, [hl]                                    ; $7192: $56
    ld [hl], l                                    ; $7193: $75
    rst RST_38                                    ; $7194: $ff
    rst RST_38                                    ; $7195: $ff
    rst RST_38                                    ; $7196: $ff
    rst RST_38                                    ; $7197: $ff
    rst RST_38                                    ; $7198: $ff
    rst RST_38                                    ; $7199: $ff
    rst RST_38                                    ; $719a: $ff
    rst RST_38                                    ; $719b: $ff
    rst RST_38                                    ; $719c: $ff
    rst RST_38                                    ; $719d: $ff
    rst RST_38                                    ; $719e: $ff
    rst RST_38                                    ; $719f: $ff
    ld d, [hl]                                    ; $71a0: $56
    ld d, [hl]                                    ; $71a1: $56
    ld [hl], l                                    ; $71a2: $75
    ld d, [hl]                                    ; $71a3: $56
    ld d, [hl]                                    ; $71a4: $56
    ld d, [hl]                                    ; $71a5: $56
    ld d, [hl]                                    ; $71a6: $56
    ld d, [hl]                                    ; $71a7: $56
    ld d, [hl]                                    ; $71a8: $56
    ld d, [hl]                                    ; $71a9: $56
    ld [hl], l                                    ; $71aa: $75
    ld d, [hl]                                    ; $71ab: $56
    ld d, [hl]                                    ; $71ac: $56
    ld d, [hl]                                    ; $71ad: $56
    ld d, [hl]                                    ; $71ae: $56
    ld d, [hl]                                    ; $71af: $56
    ld d, [hl]                                    ; $71b0: $56
    ld [hl], l                                    ; $71b1: $75
    ld d, [hl]                                    ; $71b2: $56
    ld [hl], l                                    ; $71b3: $75
    rst RST_38                                    ; $71b4: $ff
    rst RST_38                                    ; $71b5: $ff
    rst RST_38                                    ; $71b6: $ff
    rst RST_38                                    ; $71b7: $ff
    rst RST_38                                    ; $71b8: $ff
    rst RST_38                                    ; $71b9: $ff
    rst RST_38                                    ; $71ba: $ff
    rst RST_38                                    ; $71bb: $ff
    rst RST_38                                    ; $71bc: $ff
    rst RST_38                                    ; $71bd: $ff
    rst RST_38                                    ; $71be: $ff
    rst RST_38                                    ; $71bf: $ff
    ld h, a                                       ; $71c0: $67
    ld l, b                                       ; $71c1: $68
    ld d, [hl]                                    ; $71c2: $56
    ld d, [hl]                                    ; $71c3: $56
    ld [hl], l                                    ; $71c4: $75
    ld d, [hl]                                    ; $71c5: $56
    ld e, d                                       ; $71c6: $5a
    ld d, [hl]                                    ; $71c7: $56
    ld d, [hl]                                    ; $71c8: $56
    ld d, [hl]                                    ; $71c9: $56
    ld d, [hl]                                    ; $71ca: $56
    ld d, [hl]                                    ; $71cb: $56
    ld a, b                                       ; $71cc: $78
    ld a, c                                       ; $71cd: $79
    ld a, d                                       ; $71ce: $7a
    ld a, e                                       ; $71cf: $7b
    ld a, h                                       ; $71d0: $7c
    ld a, l                                       ; $71d1: $7d
    ld a, [hl]                                    ; $71d2: $7e
    ld a, a                                       ; $71d3: $7f
    rst RST_38                                    ; $71d4: $ff
    rst RST_38                                    ; $71d5: $ff
    rst RST_38                                    ; $71d6: $ff
    rst RST_38                                    ; $71d7: $ff
    rst RST_38                                    ; $71d8: $ff
    rst RST_38                                    ; $71d9: $ff
    rst RST_38                                    ; $71da: $ff
    rst RST_38                                    ; $71db: $ff
    rst RST_38                                    ; $71dc: $ff
    rst RST_38                                    ; $71dd: $ff
    rst RST_38                                    ; $71de: $ff
    rst RST_38                                    ; $71df: $ff
    ld l, c                                       ; $71e0: $69
    ld l, d                                       ; $71e1: $6a
    ld h, c                                       ; $71e2: $61
    ld h, d                                       ; $71e3: $62
    ld h, e                                       ; $71e4: $63
    ld e, e                                       ; $71e5: $5b
    ld e, h                                       ; $71e6: $5c
    ld e, l                                       ; $71e7: $5d
    ld h, d                                       ; $71e8: $62
    ld h, e                                       ; $71e9: $63
    ld h, c                                       ; $71ea: $61
    ld l, l                                       ; $71eb: $6d
    add b                                         ; $71ec: $80
    add c                                         ; $71ed: $81
    add d                                         ; $71ee: $82
    add e                                         ; $71ef: $83
    add h                                         ; $71f0: $84
    add l                                         ; $71f1: $85
    add [hl]                                      ; $71f2: $86
    add a                                         ; $71f3: $87
    rst RST_38                                    ; $71f4: $ff
    rst RST_38                                    ; $71f5: $ff
    rst RST_38                                    ; $71f6: $ff
    rst RST_38                                    ; $71f7: $ff
    rst RST_38                                    ; $71f8: $ff
    rst RST_38                                    ; $71f9: $ff
    rst RST_38                                    ; $71fa: $ff
    rst RST_38                                    ; $71fb: $ff
    rst RST_38                                    ; $71fc: $ff
    rst RST_38                                    ; $71fd: $ff
    rst RST_38                                    ; $71fe: $ff
    rst RST_38                                    ; $71ff: $ff
    ld l, e                                       ; $7200: $6b
    ld l, h                                       ; $7201: $6c
    ld h, h                                       ; $7202: $64
    ld h, l                                       ; $7203: $65
    ld h, [hl]                                    ; $7204: $66
    ld e, [hl]                                    ; $7205: $5e
    ld e, a                                       ; $7206: $5f
    ld h, b                                       ; $7207: $60
    ld h, l                                       ; $7208: $65
    ld h, [hl]                                    ; $7209: $66
    ld h, h                                       ; $720a: $64
    ld l, [hl]                                    ; $720b: $6e
    adc b                                         ; $720c: $88
    adc c                                         ; $720d: $89
    adc d                                         ; $720e: $8a
    adc e                                         ; $720f: $8b
    adc h                                         ; $7210: $8c
    adc l                                         ; $7211: $8d
    adc [hl]                                      ; $7212: $8e
    adc a                                         ; $7213: $8f
    rst RST_38                                    ; $7214: $ff
    rst RST_38                                    ; $7215: $ff
    rst RST_38                                    ; $7216: $ff
    rst RST_38                                    ; $7217: $ff
    rst RST_38                                    ; $7218: $ff
    rst RST_38                                    ; $7219: $ff
    rst RST_38                                    ; $721a: $ff
    rst RST_38                                    ; $721b: $ff
    rst RST_38                                    ; $721c: $ff
    rst RST_38                                    ; $721d: $ff
    rst RST_38                                    ; $721e: $ff
    rst RST_38                                    ; $721f: $ff
    ld [hl], h                                    ; $7220: $74
    ld [hl], h                                    ; $7221: $74
    ld [hl], h                                    ; $7222: $74
    ld [hl], h                                    ; $7223: $74
    ld [hl], h                                    ; $7224: $74
    ld [hl], h                                    ; $7225: $74
    ld [hl], h                                    ; $7226: $74
    ld [hl], h                                    ; $7227: $74
    ld [hl], h                                    ; $7228: $74
    ld [hl], h                                    ; $7229: $74
    ld [hl], h                                    ; $722a: $74
    ld [hl], h                                    ; $722b: $74
    ld [hl], h                                    ; $722c: $74
    ld [hl], h                                    ; $722d: $74
    ld [hl], h                                    ; $722e: $74
    ld [hl], h                                    ; $722f: $74
    ld [hl], h                                    ; $7230: $74
    ld [hl], h                                    ; $7231: $74
    ld [hl], h                                    ; $7232: $74
    ld [hl], h                                    ; $7233: $74
    rst RST_38                                    ; $7234: $ff
    rst RST_38                                    ; $7235: $ff
    rst RST_38                                    ; $7236: $ff
    rst RST_38                                    ; $7237: $ff
    rst RST_38                                    ; $7238: $ff
    rst RST_38                                    ; $7239: $ff
    rst RST_38                                    ; $723a: $ff
    rst RST_38                                    ; $723b: $ff
    rst RST_38                                    ; $723c: $ff
    rst RST_38                                    ; $723d: $ff
    rst RST_38                                    ; $723e: $ff
    rst RST_38                                    ; $723f: $ff
    rst RST_38                                    ; $7240: $ff
    rst RST_38                                    ; $7241: $ff
    rst RST_38                                    ; $7242: $ff
    rst RST_38                                    ; $7243: $ff
    rst RST_38                                    ; $7244: $ff
    rst RST_38                                    ; $7245: $ff
    rst RST_38                                    ; $7246: $ff
    rst RST_38                                    ; $7247: $ff
    rst RST_38                                    ; $7248: $ff
    rst RST_38                                    ; $7249: $ff
    rst RST_38                                    ; $724a: $ff
    rst RST_38                                    ; $724b: $ff
    rst RST_38                                    ; $724c: $ff
    rst RST_38                                    ; $724d: $ff
    rst RST_38                                    ; $724e: $ff
    rst RST_38                                    ; $724f: $ff
    rst RST_38                                    ; $7250: $ff
    rst RST_38                                    ; $7251: $ff
    rst RST_38                                    ; $7252: $ff
    rst RST_38                                    ; $7253: $ff
    rst RST_38                                    ; $7254: $ff
    rst RST_38                                    ; $7255: $ff
    rst RST_38                                    ; $7256: $ff
    rst RST_38                                    ; $7257: $ff
    rst RST_38                                    ; $7258: $ff
    rst RST_38                                    ; $7259: $ff
    rst RST_38                                    ; $725a: $ff
    rst RST_38                                    ; $725b: $ff
    rst RST_38                                    ; $725c: $ff
    rst RST_38                                    ; $725d: $ff
    rst RST_38                                    ; $725e: $ff
    rst RST_38                                    ; $725f: $ff
    rst RST_38                                    ; $7260: $ff
    rst RST_38                                    ; $7261: $ff
    rst RST_38                                    ; $7262: $ff
    rst RST_38                                    ; $7263: $ff
    rst RST_38                                    ; $7264: $ff
    rst RST_38                                    ; $7265: $ff
    rst RST_38                                    ; $7266: $ff
    rst RST_38                                    ; $7267: $ff
    rst RST_38                                    ; $7268: $ff
    rst RST_38                                    ; $7269: $ff
    rst RST_38                                    ; $726a: $ff
    rst RST_38                                    ; $726b: $ff
    rst RST_38                                    ; $726c: $ff
    rst RST_38                                    ; $726d: $ff
    rst RST_38                                    ; $726e: $ff
    rst RST_38                                    ; $726f: $ff
    rst RST_38                                    ; $7270: $ff
    rst RST_38                                    ; $7271: $ff
    rst RST_38                                    ; $7272: $ff
    rst RST_38                                    ; $7273: $ff
    rst RST_38                                    ; $7274: $ff
    rst RST_38                                    ; $7275: $ff
    rst RST_38                                    ; $7276: $ff
    rst RST_38                                    ; $7277: $ff
    rst RST_38                                    ; $7278: $ff
    rst RST_38                                    ; $7279: $ff
    rst RST_38                                    ; $727a: $ff
    rst RST_38                                    ; $727b: $ff
    rst RST_38                                    ; $727c: $ff
    rst RST_38                                    ; $727d: $ff
    rst RST_38                                    ; $727e: $ff
    rst RST_38                                    ; $727f: $ff
    rst RST_38                                    ; $7280: $ff
    rst RST_38                                    ; $7281: $ff
    rst RST_38                                    ; $7282: $ff
    rst RST_38                                    ; $7283: $ff
    rst RST_38                                    ; $7284: $ff
    rst RST_38                                    ; $7285: $ff
    rst RST_38                                    ; $7286: $ff
    rst RST_38                                    ; $7287: $ff
    rst RST_38                                    ; $7288: $ff
    rst RST_38                                    ; $7289: $ff
    rst RST_38                                    ; $728a: $ff
    rst RST_38                                    ; $728b: $ff
    rst RST_38                                    ; $728c: $ff
    rst RST_38                                    ; $728d: $ff
    rst RST_38                                    ; $728e: $ff
    rst RST_38                                    ; $728f: $ff
    rst RST_38                                    ; $7290: $ff
    rst RST_38                                    ; $7291: $ff
    rst RST_38                                    ; $7292: $ff
    rst RST_38                                    ; $7293: $ff
    rst RST_38                                    ; $7294: $ff
    rst RST_38                                    ; $7295: $ff
    rst RST_38                                    ; $7296: $ff
    rst RST_38                                    ; $7297: $ff
    rst RST_38                                    ; $7298: $ff
    rst RST_38                                    ; $7299: $ff
    rst RST_38                                    ; $729a: $ff
    rst RST_38                                    ; $729b: $ff
    rst RST_38                                    ; $729c: $ff
    rst RST_38                                    ; $729d: $ff
    rst RST_38                                    ; $729e: $ff
    rst RST_38                                    ; $729f: $ff
    rst RST_38                                    ; $72a0: $ff
    rst RST_38                                    ; $72a1: $ff
    rst RST_38                                    ; $72a2: $ff
    rst RST_38                                    ; $72a3: $ff
    rst RST_38                                    ; $72a4: $ff
    rst RST_38                                    ; $72a5: $ff
    rst RST_38                                    ; $72a6: $ff
    rst RST_38                                    ; $72a7: $ff
    rst RST_38                                    ; $72a8: $ff
    rst RST_38                                    ; $72a9: $ff
    rst RST_38                                    ; $72aa: $ff
    rst RST_38                                    ; $72ab: $ff
    rst RST_38                                    ; $72ac: $ff
    rst RST_38                                    ; $72ad: $ff
    rst RST_38                                    ; $72ae: $ff
    rst RST_38                                    ; $72af: $ff
    rst RST_38                                    ; $72b0: $ff
    rst RST_38                                    ; $72b1: $ff
    rst RST_38                                    ; $72b2: $ff
    rst RST_38                                    ; $72b3: $ff
    rst RST_38                                    ; $72b4: $ff
    rst RST_38                                    ; $72b5: $ff
    rst RST_38                                    ; $72b6: $ff
    rst RST_38                                    ; $72b7: $ff
    rst RST_38                                    ; $72b8: $ff
    rst RST_38                                    ; $72b9: $ff
    rst RST_38                                    ; $72ba: $ff
    rst RST_38                                    ; $72bb: $ff
    rst RST_38                                    ; $72bc: $ff
    rst RST_38                                    ; $72bd: $ff
    rst RST_38                                    ; $72be: $ff
    rst RST_38                                    ; $72bf: $ff
    rst RST_38                                    ; $72c0: $ff
    rst RST_38                                    ; $72c1: $ff
    rst RST_38                                    ; $72c2: $ff
    rst RST_38                                    ; $72c3: $ff
    rst RST_38                                    ; $72c4: $ff
    rst RST_38                                    ; $72c5: $ff
    rst RST_38                                    ; $72c6: $ff
    rst RST_38                                    ; $72c7: $ff
    rst RST_38                                    ; $72c8: $ff
    rst RST_38                                    ; $72c9: $ff
    rst RST_38                                    ; $72ca: $ff
    rst RST_38                                    ; $72cb: $ff
    rst RST_38                                    ; $72cc: $ff
    rst RST_38                                    ; $72cd: $ff
    rst RST_38                                    ; $72ce: $ff
    rst RST_38                                    ; $72cf: $ff
    rst RST_38                                    ; $72d0: $ff
    rst RST_38                                    ; $72d1: $ff
    rst RST_38                                    ; $72d2: $ff
    rst RST_38                                    ; $72d3: $ff
    rst RST_38                                    ; $72d4: $ff
    rst RST_38                                    ; $72d5: $ff
    rst RST_38                                    ; $72d6: $ff
    rst RST_38                                    ; $72d7: $ff
    rst RST_38                                    ; $72d8: $ff
    rst RST_38                                    ; $72d9: $ff
    rst RST_38                                    ; $72da: $ff
    rst RST_38                                    ; $72db: $ff
    rst RST_38                                    ; $72dc: $ff
    rst RST_38                                    ; $72dd: $ff
    rst RST_38                                    ; $72de: $ff
    rst RST_38                                    ; $72df: $ff
    rst RST_38                                    ; $72e0: $ff
    rst RST_38                                    ; $72e1: $ff
    rst RST_38                                    ; $72e2: $ff
    rst RST_38                                    ; $72e3: $ff
    rst RST_38                                    ; $72e4: $ff
    rst RST_38                                    ; $72e5: $ff
    rst RST_38                                    ; $72e6: $ff
    rst RST_38                                    ; $72e7: $ff
    rst RST_38                                    ; $72e8: $ff
    rst RST_38                                    ; $72e9: $ff
    rst RST_38                                    ; $72ea: $ff
    rst RST_38                                    ; $72eb: $ff
    rst RST_38                                    ; $72ec: $ff
    rst RST_38                                    ; $72ed: $ff
    rst RST_38                                    ; $72ee: $ff
    rst RST_38                                    ; $72ef: $ff
    rst RST_38                                    ; $72f0: $ff
    rst RST_38                                    ; $72f1: $ff
    rst RST_38                                    ; $72f2: $ff
    rst RST_38                                    ; $72f3: $ff
    rst RST_38                                    ; $72f4: $ff
    rst RST_38                                    ; $72f5: $ff
    rst RST_38                                    ; $72f6: $ff
    rst RST_38                                    ; $72f7: $ff
    rst RST_38                                    ; $72f8: $ff
    rst RST_38                                    ; $72f9: $ff
    rst RST_38                                    ; $72fa: $ff
    rst RST_38                                    ; $72fb: $ff
    rst RST_38                                    ; $72fc: $ff
    rst RST_38                                    ; $72fd: $ff
    rst RST_38                                    ; $72fe: $ff
    rst RST_38                                    ; $72ff: $ff
    rst RST_38                                    ; $7300: $ff
    rst RST_38                                    ; $7301: $ff
    rst RST_38                                    ; $7302: $ff
    rst RST_38                                    ; $7303: $ff
    rst RST_38                                    ; $7304: $ff
    rst RST_38                                    ; $7305: $ff
    rst RST_38                                    ; $7306: $ff
    rst RST_38                                    ; $7307: $ff
    rst RST_38                                    ; $7308: $ff
    rst RST_38                                    ; $7309: $ff
    rst RST_38                                    ; $730a: $ff
    rst RST_38                                    ; $730b: $ff
    rst RST_38                                    ; $730c: $ff
    rst RST_38                                    ; $730d: $ff
    rst RST_38                                    ; $730e: $ff
    rst RST_38                                    ; $730f: $ff
    rst RST_38                                    ; $7310: $ff
    rst RST_38                                    ; $7311: $ff
    rst RST_38                                    ; $7312: $ff
    rst RST_38                                    ; $7313: $ff
    rst RST_38                                    ; $7314: $ff
    rst RST_38                                    ; $7315: $ff
    rst RST_38                                    ; $7316: $ff
    rst RST_38                                    ; $7317: $ff
    rst RST_38                                    ; $7318: $ff
    rst RST_38                                    ; $7319: $ff
    rst RST_38                                    ; $731a: $ff
    rst RST_38                                    ; $731b: $ff
    rst RST_38                                    ; $731c: $ff
    rst RST_38                                    ; $731d: $ff
    rst RST_38                                    ; $731e: $ff
    rst RST_38                                    ; $731f: $ff
    rst RST_38                                    ; $7320: $ff
    rst RST_38                                    ; $7321: $ff
    rst RST_38                                    ; $7322: $ff
    rst RST_38                                    ; $7323: $ff
    rst RST_38                                    ; $7324: $ff
    rst RST_38                                    ; $7325: $ff
    rst RST_38                                    ; $7326: $ff
    rst RST_38                                    ; $7327: $ff
    rst RST_38                                    ; $7328: $ff
    rst RST_38                                    ; $7329: $ff
    rst RST_38                                    ; $732a: $ff
    rst RST_38                                    ; $732b: $ff
    rst RST_38                                    ; $732c: $ff
    rst RST_38                                    ; $732d: $ff
    rst RST_38                                    ; $732e: $ff
    rst RST_38                                    ; $732f: $ff
    rst RST_38                                    ; $7330: $ff
    rst RST_38                                    ; $7331: $ff
    rst RST_38                                    ; $7332: $ff
    rst RST_38                                    ; $7333: $ff
    rst RST_38                                    ; $7334: $ff
    rst RST_38                                    ; $7335: $ff
    rst RST_38                                    ; $7336: $ff
    rst RST_38                                    ; $7337: $ff
    rst RST_38                                    ; $7338: $ff
    rst RST_38                                    ; $7339: $ff
    rst RST_38                                    ; $733a: $ff
    rst RST_38                                    ; $733b: $ff
    rst RST_38                                    ; $733c: $ff
    rst RST_38                                    ; $733d: $ff
    rst RST_38                                    ; $733e: $ff
    rst RST_38                                    ; $733f: $ff
    rst RST_38                                    ; $7340: $ff
    rst RST_38                                    ; $7341: $ff
    rst RST_38                                    ; $7342: $ff
    rst RST_38                                    ; $7343: $ff
    rst RST_38                                    ; $7344: $ff
    rst RST_38                                    ; $7345: $ff
    rst RST_38                                    ; $7346: $ff
    rst RST_38                                    ; $7347: $ff
    rst RST_38                                    ; $7348: $ff
    rst RST_38                                    ; $7349: $ff
    rst RST_38                                    ; $734a: $ff
    rst RST_38                                    ; $734b: $ff
    rst RST_38                                    ; $734c: $ff
    rst RST_38                                    ; $734d: $ff
    rst RST_38                                    ; $734e: $ff
    rst RST_38                                    ; $734f: $ff
    rst RST_38                                    ; $7350: $ff
    rst RST_38                                    ; $7351: $ff
    rst RST_38                                    ; $7352: $ff
    rst RST_38                                    ; $7353: $ff
    rst RST_38                                    ; $7354: $ff
    rst RST_38                                    ; $7355: $ff
    rst RST_38                                    ; $7356: $ff
    rst RST_38                                    ; $7357: $ff
    rst RST_38                                    ; $7358: $ff
    rst RST_38                                    ; $7359: $ff
    rst RST_38                                    ; $735a: $ff
    rst RST_38                                    ; $735b: $ff
    rst RST_38                                    ; $735c: $ff
    rst RST_38                                    ; $735d: $ff
    rst RST_38                                    ; $735e: $ff
    rst RST_38                                    ; $735f: $ff
    rst RST_38                                    ; $7360: $ff
    rst RST_38                                    ; $7361: $ff
    rst RST_38                                    ; $7362: $ff
    rst RST_38                                    ; $7363: $ff
    rst RST_38                                    ; $7364: $ff
    rst RST_38                                    ; $7365: $ff
    rst RST_38                                    ; $7366: $ff
    rst RST_38                                    ; $7367: $ff
    rst RST_38                                    ; $7368: $ff
    rst RST_38                                    ; $7369: $ff
    rst RST_38                                    ; $736a: $ff
    rst RST_38                                    ; $736b: $ff
    rst RST_38                                    ; $736c: $ff
    rst RST_38                                    ; $736d: $ff
    rst RST_38                                    ; $736e: $ff
    rst RST_38                                    ; $736f: $ff
    rst RST_38                                    ; $7370: $ff
    rst RST_38                                    ; $7371: $ff
    rst RST_38                                    ; $7372: $ff
    rst RST_38                                    ; $7373: $ff
    rst RST_38                                    ; $7374: $ff
    rst RST_38                                    ; $7375: $ff
    rst RST_38                                    ; $7376: $ff
    rst RST_38                                    ; $7377: $ff
    rst RST_38                                    ; $7378: $ff
    rst RST_38                                    ; $7379: $ff
    rst RST_38                                    ; $737a: $ff
    rst RST_38                                    ; $737b: $ff
    rst RST_38                                    ; $737c: $ff
    rst RST_38                                    ; $737d: $ff
    rst RST_38                                    ; $737e: $ff
    rst RST_38                                    ; $737f: $ff
    rst RST_38                                    ; $7380: $ff
    rst RST_38                                    ; $7381: $ff
    rst RST_38                                    ; $7382: $ff
    rst RST_38                                    ; $7383: $ff
    rst RST_38                                    ; $7384: $ff
    rst RST_38                                    ; $7385: $ff
    rst RST_38                                    ; $7386: $ff
    rst RST_38                                    ; $7387: $ff
    rst RST_38                                    ; $7388: $ff
    rst RST_38                                    ; $7389: $ff
    rst RST_38                                    ; $738a: $ff
    rst RST_38                                    ; $738b: $ff
    rst RST_38                                    ; $738c: $ff
    rst RST_38                                    ; $738d: $ff
    rst RST_38                                    ; $738e: $ff
    rst RST_38                                    ; $738f: $ff
    rst RST_38                                    ; $7390: $ff
    rst RST_38                                    ; $7391: $ff
    rst RST_38                                    ; $7392: $ff
    rst RST_38                                    ; $7393: $ff
    rst RST_38                                    ; $7394: $ff
    rst RST_38                                    ; $7395: $ff
    rst RST_38                                    ; $7396: $ff
    rst RST_38                                    ; $7397: $ff
    rst RST_38                                    ; $7398: $ff
    rst RST_38                                    ; $7399: $ff
    rst RST_38                                    ; $739a: $ff
    rst RST_38                                    ; $739b: $ff
    rst RST_38                                    ; $739c: $ff
    rst RST_38                                    ; $739d: $ff
    rst RST_38                                    ; $739e: $ff
    rst RST_38                                    ; $739f: $ff
    rst RST_38                                    ; $73a0: $ff
    rst RST_38                                    ; $73a1: $ff
    rst RST_38                                    ; $73a2: $ff
    rst RST_38                                    ; $73a3: $ff
    rst RST_38                                    ; $73a4: $ff
    rst RST_38                                    ; $73a5: $ff
    rst RST_38                                    ; $73a6: $ff
    rst RST_38                                    ; $73a7: $ff
    rst RST_38                                    ; $73a8: $ff
    rst RST_38                                    ; $73a9: $ff
    rst RST_38                                    ; $73aa: $ff
    rst RST_38                                    ; $73ab: $ff
    rst RST_38                                    ; $73ac: $ff
    rst RST_38                                    ; $73ad: $ff
    rst RST_38                                    ; $73ae: $ff
    rst RST_38                                    ; $73af: $ff
    rst RST_38                                    ; $73b0: $ff
    rst RST_38                                    ; $73b1: $ff
    rst RST_38                                    ; $73b2: $ff
    rst RST_38                                    ; $73b3: $ff
    rst RST_38                                    ; $73b4: $ff
    rst RST_38                                    ; $73b5: $ff
    rst RST_38                                    ; $73b6: $ff
    rst RST_38                                    ; $73b7: $ff
    rst RST_38                                    ; $73b8: $ff
    rst RST_38                                    ; $73b9: $ff
    rst RST_38                                    ; $73ba: $ff
    rst RST_38                                    ; $73bb: $ff
    rst RST_38                                    ; $73bc: $ff
    rst RST_38                                    ; $73bd: $ff
    rst RST_38                                    ; $73be: $ff
    rst RST_38                                    ; $73bf: $ff
    rst RST_38                                    ; $73c0: $ff
    rst RST_38                                    ; $73c1: $ff
    rst RST_38                                    ; $73c2: $ff
    rst RST_38                                    ; $73c3: $ff
    rst RST_38                                    ; $73c4: $ff
    rst RST_38                                    ; $73c5: $ff
    rst RST_38                                    ; $73c6: $ff
    rst RST_38                                    ; $73c7: $ff
    rst RST_38                                    ; $73c8: $ff
    rst RST_38                                    ; $73c9: $ff
    rst RST_38                                    ; $73ca: $ff
    rst RST_38                                    ; $73cb: $ff
    rst RST_38                                    ; $73cc: $ff
    rst RST_38                                    ; $73cd: $ff
    rst RST_38                                    ; $73ce: $ff
    rst RST_38                                    ; $73cf: $ff
    rst RST_38                                    ; $73d0: $ff
    rst RST_38                                    ; $73d1: $ff
    rst RST_38                                    ; $73d2: $ff
    rst RST_38                                    ; $73d3: $ff
    rst RST_38                                    ; $73d4: $ff
    rst RST_38                                    ; $73d5: $ff
    rst RST_38                                    ; $73d6: $ff
    rst RST_38                                    ; $73d7: $ff
    rst RST_38                                    ; $73d8: $ff
    rst RST_38                                    ; $73d9: $ff
    rst RST_38                                    ; $73da: $ff
    rst RST_38                                    ; $73db: $ff
    rst RST_38                                    ; $73dc: $ff
    rst RST_38                                    ; $73dd: $ff
    rst RST_38                                    ; $73de: $ff
    rst RST_38                                    ; $73df: $ff
    rst RST_38                                    ; $73e0: $ff
    rst RST_38                                    ; $73e1: $ff
    rst RST_38                                    ; $73e2: $ff
    rst RST_38                                    ; $73e3: $ff
    rst RST_38                                    ; $73e4: $ff
    rst RST_38                                    ; $73e5: $ff
    rst RST_38                                    ; $73e6: $ff
    rst RST_38                                    ; $73e7: $ff
    rst RST_38                                    ; $73e8: $ff
    rst RST_38                                    ; $73e9: $ff
    rst RST_38                                    ; $73ea: $ff
    rst RST_38                                    ; $73eb: $ff
    rst RST_38                                    ; $73ec: $ff
    rst RST_38                                    ; $73ed: $ff
    rst RST_38                                    ; $73ee: $ff
    rst RST_38                                    ; $73ef: $ff
    rst RST_38                                    ; $73f0: $ff
    rst RST_38                                    ; $73f1: $ff
    rst RST_38                                    ; $73f2: $ff
    rst RST_38                                    ; $73f3: $ff
    rst RST_38                                    ; $73f4: $ff
    rst RST_38                                    ; $73f5: $ff
    rst RST_38                                    ; $73f6: $ff
    rst RST_38                                    ; $73f7: $ff
    rst RST_38                                    ; $73f8: $ff
    rst RST_38                                    ; $73f9: $ff
    rst RST_38                                    ; $73fa: $ff
    rst RST_38                                    ; $73fb: $ff
    rst RST_38                                    ; $73fc: $ff
    rst RST_38                                    ; $73fd: $ff
    rst RST_38                                    ; $73fe: $ff
    rst RST_38                                    ; $73ff: $ff
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
