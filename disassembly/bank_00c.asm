; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

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
    nop                                           ; $4029: $00
    nop                                           ; $402a: $00
    nop                                           ; $402b: $00
    nop                                           ; $402c: $00
    nop                                           ; $402d: $00
    nop                                           ; $402e: $00
    nop                                           ; $402f: $00
    rst $38                                       ; $4030: $ff
    rst $38                                       ; $4031: $ff
    rst $38                                       ; $4032: $ff
    rst $38                                       ; $4033: $ff
    rst $38                                       ; $4034: $ff
    rst $38                                       ; $4035: $ff
    rst $38                                       ; $4036: $ff
    rst $38                                       ; $4037: $ff
    rst $38                                       ; $4038: $ff
    rst $38                                       ; $4039: $ff
    rst $38                                       ; $403a: $ff
    rst $38                                       ; $403b: $ff
    rst $38                                       ; $403c: $ff
    rst $38                                       ; $403d: $ff
    rst $38                                       ; $403e: $ff
    rst $38                                       ; $403f: $ff
    rst $38                                       ; $4040: $ff
    nop                                           ; $4041: $00
    rst $38                                       ; $4042: $ff
    nop                                           ; $4043: $00
    rst $38                                       ; $4044: $ff
    nop                                           ; $4045: $00
    rst $38                                       ; $4046: $ff
    nop                                           ; $4047: $00
    rst $38                                       ; $4048: $ff
    nop                                           ; $4049: $00
    rst $38                                       ; $404a: $ff
    nop                                           ; $404b: $00
    rst $38                                       ; $404c: $ff
    nop                                           ; $404d: $00
    rst $38                                       ; $404e: $ff
    nop                                           ; $404f: $00
    rst $38                                       ; $4050: $ff
    rst $38                                       ; $4051: $ff
    rst $38                                       ; $4052: $ff
    rst $38                                       ; $4053: $ff
    rst $38                                       ; $4054: $ff
    rst $38                                       ; $4055: $ff
    rst $38                                       ; $4056: $ff
    rst $38                                       ; $4057: $ff
    nop                                           ; $4058: $00
    rra                                           ; $4059: $1f
    rra                                           ; $405a: $1f
    rrca                                          ; $405b: $0f
    adc a                                         ; $405c: $8f
    rlca                                          ; $405d: $07
    nop                                           ; $405e: $00
    nop                                           ; $405f: $00
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    nop                                           ; $4064: $00
    nop                                           ; $4065: $00
    nop                                           ; $4066: $00
    rst $38                                       ; $4067: $ff
    rst $38                                       ; $4068: $ff
    rra                                           ; $4069: $1f
    ldh a, [rP1]                                  ; $406a: $f0 $00
    ld hl, sp+$00                                 ; $406c: $f8 $00
    rst $38                                       ; $406e: $ff
    nop                                           ; $406f: $00
    rst $38                                       ; $4070: $ff
    rst $38                                       ; $4071: $ff
    rst $38                                       ; $4072: $ff
    rst $38                                       ; $4073: $ff
    rst $38                                       ; $4074: $ff
    ldh a, [rIE]                                  ; $4075: $f0 $ff
    rst $38                                       ; $4077: $ff
    nop                                           ; $4078: $00
    ldh a, [$fff9]                                ; $4079: $f0 $f9
    ld hl, sp-$07                                 ; $407b: $f8 $f9
    ld hl, sp+$00                                 ; $407d: $f8 $00
    nop                                           ; $407f: $00
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    nop                                           ; $4083: $00
    rrca                                          ; $4084: $0f
    nop                                           ; $4085: $00
    nop                                           ; $4086: $00
    rst $38                                       ; $4087: $ff
    rst $38                                       ; $4088: $ff
    ldh a, [rTAC]                                 ; $4089: $f0 $07
    ld [$0807], sp                                ; $408b: $08 $07 $08
    rst $38                                       ; $408e: $ff
    nop                                           ; $408f: $00
    rst $38                                       ; $4090: $ff
    rst $38                                       ; $4091: $ff
    rst $38                                       ; $4092: $ff
    rst $38                                       ; $4093: $ff
    rst $38                                       ; $4094: $ff
    nop                                           ; $4095: $00
    rst $38                                       ; $4096: $ff
    rst $38                                       ; $4097: $ff
    nop                                           ; $4098: $00
    nop                                           ; $4099: $00
    sbc c                                         ; $409a: $99
    adc b                                         ; $409b: $88
    sbc c                                         ; $409c: $99
    adc b                                         ; $409d: $88
    nop                                           ; $409e: $00
    nop                                           ; $409f: $00
    nop                                           ; $40a0: $00
    nop                                           ; $40a1: $00
    nop                                           ; $40a2: $00
    nop                                           ; $40a3: $00
    rst $38                                       ; $40a4: $ff
    nop                                           ; $40a5: $00
    nop                                           ; $40a6: $00
    rst $38                                       ; $40a7: $ff
    rst $38                                       ; $40a8: $ff
    nop                                           ; $40a9: $00
    ld [hl], a                                    ; $40aa: $77
    adc b                                         ; $40ab: $88
    ld [hl], a                                    ; $40ac: $77
    adc b                                         ; $40ad: $88
    rst $38                                       ; $40ae: $ff
    nop                                           ; $40af: $00
    rst $38                                       ; $40b0: $ff
    nop                                           ; $40b1: $00
    nop                                           ; $40b2: $00
    rst $38                                       ; $40b3: $ff
    rst $38                                       ; $40b4: $ff
    nop                                           ; $40b5: $00
    rst $38                                       ; $40b6: $ff
    nop                                           ; $40b7: $00
    rst $38                                       ; $40b8: $ff
    nop                                           ; $40b9: $00
    rst $38                                       ; $40ba: $ff
    nop                                           ; $40bb: $00
    rst $38                                       ; $40bc: $ff
    nop                                           ; $40bd: $00
    rst $38                                       ; $40be: $ff
    nop                                           ; $40bf: $00
    rst $38                                       ; $40c0: $ff
    rst $38                                       ; $40c1: $ff
    nop                                           ; $40c2: $00
    nop                                           ; $40c3: $00
    nop                                           ; $40c4: $00
    nop                                           ; $40c5: $00
    nop                                           ; $40c6: $00
    nop                                           ; $40c7: $00
    nop                                           ; $40c8: $00
    nop                                           ; $40c9: $00
    nop                                           ; $40ca: $00
    nop                                           ; $40cb: $00
    nop                                           ; $40cc: $00
    nop                                           ; $40cd: $00
    nop                                           ; $40ce: $00
    nop                                           ; $40cf: $00
    rst $38                                       ; $40d0: $ff
    nop                                           ; $40d1: $00
    nop                                           ; $40d2: $00
    rst $38                                       ; $40d3: $ff
    rst $38                                       ; $40d4: $ff
    nop                                           ; $40d5: $00
    rst $38                                       ; $40d6: $ff
    nop                                           ; $40d7: $00
    rst $38                                       ; $40d8: $ff
    nop                                           ; $40d9: $00
    rst $38                                       ; $40da: $ff
    nop                                           ; $40db: $00
    add b                                         ; $40dc: $80
    ld a, a                                       ; $40dd: $7f
    sbc a                                         ; $40de: $9f
    ld h, b                                       ; $40df: $60
    rst $38                                       ; $40e0: $ff
    rst $38                                       ; $40e1: $ff
    nop                                           ; $40e2: $00
    nop                                           ; $40e3: $00
    nop                                           ; $40e4: $00
    nop                                           ; $40e5: $00
    nop                                           ; $40e6: $00
    nop                                           ; $40e7: $00
    nop                                           ; $40e8: $00
    nop                                           ; $40e9: $00
    nop                                           ; $40ea: $00
    nop                                           ; $40eb: $00
    nop                                           ; $40ec: $00
    nop                                           ; $40ed: $00
    nop                                           ; $40ee: $00
    nop                                           ; $40ef: $00
    rst $38                                       ; $40f0: $ff
    nop                                           ; $40f1: $00
    nop                                           ; $40f2: $00
    rst $38                                       ; $40f3: $ff
    rst $38                                       ; $40f4: $ff
    nop                                           ; $40f5: $00
    rst $38                                       ; $40f6: $ff
    nop                                           ; $40f7: $00
    rst $38                                       ; $40f8: $ff
    nop                                           ; $40f9: $00
    rst $38                                       ; $40fa: $ff
    nop                                           ; $40fb: $00
    nop                                           ; $40fc: $00
    rst $38                                       ; $40fd: $ff
    rst $38                                       ; $40fe: $ff
    nop                                           ; $40ff: $00
    rst $38                                       ; $4100: $ff
    rst $38                                       ; $4101: $ff
    nop                                           ; $4102: $00
    nop                                           ; $4103: $00
    nop                                           ; $4104: $00
    nop                                           ; $4105: $00
    nop                                           ; $4106: $00
    nop                                           ; $4107: $00
    nop                                           ; $4108: $00
    nop                                           ; $4109: $00
    nop                                           ; $410a: $00
    nop                                           ; $410b: $00
    nop                                           ; $410c: $00
    nop                                           ; $410d: $00
    nop                                           ; $410e: $00
    nop                                           ; $410f: $00
    rst $38                                       ; $4110: $ff
    nop                                           ; $4111: $00
    ld [bc], a                                    ; $4112: $02
    cp $fe                                        ; $4113: $fe $fe
    ld [bc], a                                    ; $4115: $02
    cp $02                                        ; $4116: $fe $02
    cp $02                                        ; $4118: $fe $02
    cp $02                                        ; $411a: $fe $02
    ccf                                           ; $411c: $3f
    pop bc                                        ; $411d: $c1
    ccf                                           ; $411e: $3f
    pop bc                                        ; $411f: $c1
    rst $38                                       ; $4120: $ff
    rst $38                                       ; $4121: $ff
    ld bc, $0102                                  ; $4122: $01 $02 $01
    ld [bc], a                                    ; $4125: $02
    ld bc, $0102                                  ; $4126: $01 $02 $01
    ld [bc], a                                    ; $4129: $02
    ld bc, $0002                                  ; $412a: $01 $02 $00
    ld bc, $0100                                  ; $412d: $01 $00 $01
    rst $38                                       ; $4130: $ff
    nop                                           ; $4131: $00
    ld c, b                                       ; $4132: $48
    jr nc, jr_00c_4149                            ; $4133: $30 $14

    ld h, e                                       ; $4135: $63
    inc de                                        ; $4136: $13
    ld h, h                                       ; $4137: $64
    rla                                           ; $4138: $17
    ld h, e                                       ; $4139: $63
    ld c, b                                       ; $413a: $48
    jr nc, jr_00c_4144                            ; $413b: $30 $07

    jr c, @+$19                                   ; $413d: $38 $17

    jr nc, @+$01                                  ; $413f: $30 $ff

    rst $38                                       ; $4141: $ff
    rst $38                                       ; $4142: $ff
    nop                                           ; $4143: $00

jr_00c_4144:
    rst $38                                       ; $4144: $ff
    nop                                           ; $4145: $00
    rst $38                                       ; $4146: $ff
    nop                                           ; $4147: $00
    db $fc                                        ; $4148: $fc

jr_00c_4149:
    inc bc                                        ; $4149: $03
    rst $38                                       ; $414a: $ff
    nop                                           ; $414b: $00
    rst $38                                       ; $414c: $ff
    nop                                           ; $414d: $00
    rst $28                                       ; $414e: $ef
    db $10                                        ; $414f: $10
    rst $38                                       ; $4150: $ff
    nop                                           ; $4151: $00
    sub d                                         ; $4152: $92
    ld h, c                                       ; $4153: $61
    ld b, d                                       ; $4154: $42
    ld sp, $3142                                  ; $4155: $31 $42 $31
    ld b, d                                       ; $4158: $42
    ld sp, $6192                                  ; $4159: $31 $92 $61
    inc b                                         ; $415c: $04
    db $e3                                        ; $415d: $e3
    ld b, h                                       ; $415e: $44
    ld h, a                                       ; $415f: $67
    rst $38                                       ; $4160: $ff
    rst $38                                       ; $4161: $ff
    cp $00                                        ; $4162: $fe $00
    cp $00                                        ; $4164: $fe $00
    cp $00                                        ; $4166: $fe $00
    cp $00                                        ; $4168: $fe $00
    cp $00                                        ; $416a: $fe $00
    db $fc                                        ; $416c: $fc
    nop                                           ; $416d: $00
    cp b                                          ; $416e: $b8
    ld b, h                                       ; $416f: $44
    rst $38                                       ; $4170: $ff
    nop                                           ; $4171: $00
    add hl, bc                                    ; $4172: $09
    ld hl, sp+$79                                 ; $4173: $f8 $79
    adc b                                         ; $4175: $88
    ld a, c                                       ; $4176: $79
    adc b                                         ; $4177: $88
    ld a, c                                       ; $4178: $79
    adc b                                         ; $4179: $88
    ld a, c                                       ; $417a: $79
    adc b                                         ; $417b: $88
    ld sp, hl                                     ; $417c: $f9
    ld [$f007], sp                                ; $417d: $08 $07 $f0
    rst $38                                       ; $4180: $ff
    rst $38                                       ; $4181: $ff
    rlca                                          ; $4182: $07
    ld [$0807], sp                                ; $4183: $08 $07 $08
    rlca                                          ; $4186: $07
    ld [$0807], sp                                ; $4187: $08 $07 $08
    rlca                                          ; $418a: $07
    ld [$0807], sp                                ; $418b: $08 $07 $08
    rrca                                          ; $418e: $0f
    nop                                           ; $418f: $00
    rst $38                                       ; $4190: $ff
    nop                                           ; $4191: $00
    sbc c                                         ; $4192: $99
    adc b                                         ; $4193: $88
    sbc c                                         ; $4194: $99
    adc b                                         ; $4195: $88
    sbc c                                         ; $4196: $99
    adc b                                         ; $4197: $88
    sbc c                                         ; $4198: $99
    adc b                                         ; $4199: $88
    sbc c                                         ; $419a: $99
    adc b                                         ; $419b: $88
    sbc c                                         ; $419c: $99
    adc b                                         ; $419d: $88
    ld [hl], a                                    ; $419e: $77
    nop                                           ; $419f: $00
    rst $38                                       ; $41a0: $ff
    rst $38                                       ; $41a1: $ff
    ld [hl], a                                    ; $41a2: $77
    adc b                                         ; $41a3: $88
    ld [hl], a                                    ; $41a4: $77
    adc b                                         ; $41a5: $88
    ld [hl], a                                    ; $41a6: $77
    adc b                                         ; $41a7: $88
    ld [hl], a                                    ; $41a8: $77
    adc b                                         ; $41a9: $88
    ld [hl], a                                    ; $41aa: $77
    adc b                                         ; $41ab: $88
    ld [hl], a                                    ; $41ac: $77
    adc b                                         ; $41ad: $88
    rst $38                                       ; $41ae: $ff
    nop                                           ; $41af: $00
    rst $38                                       ; $41b0: $ff
    nop                                           ; $41b1: $00
    rst $38                                       ; $41b2: $ff
    nop                                           ; $41b3: $00
    rst $38                                       ; $41b4: $ff
    nop                                           ; $41b5: $00
    rst $38                                       ; $41b6: $ff
    nop                                           ; $41b7: $00
    rst $38                                       ; $41b8: $ff
    nop                                           ; $41b9: $00
    rst $38                                       ; $41ba: $ff
    nop                                           ; $41bb: $00
    rst $38                                       ; $41bc: $ff
    ld bc, $01ff                                  ; $41bd: $01 $ff $01
    nop                                           ; $41c0: $00
    nop                                           ; $41c1: $00
    nop                                           ; $41c2: $00
    nop                                           ; $41c3: $00
    nop                                           ; $41c4: $00
    nop                                           ; $41c5: $00
    nop                                           ; $41c6: $00
    nop                                           ; $41c7: $00
    nop                                           ; $41c8: $00
    nop                                           ; $41c9: $00
    nop                                           ; $41ca: $00
    nop                                           ; $41cb: $00
    nop                                           ; $41cc: $00
    ld bc, $0100                                  ; $41cd: $01 $00 $01
    rst $38                                       ; $41d0: $ff
    inc bc                                        ; $41d1: $03
    rst $38                                       ; $41d2: $ff
    rrca                                          ; $41d3: $0f
    rst $38                                       ; $41d4: $ff
    inc e                                         ; $41d5: $1c
    rst $38                                       ; $41d6: $ff
    inc sp                                        ; $41d7: $33
    rst $38                                       ; $41d8: $ff
    ld l, a                                       ; $41d9: $6f
    rst $38                                       ; $41da: $ff
    rst RST_18                                    ; $41db: $df
    rst $38                                       ; $41dc: $ff
    cp a                                          ; $41dd: $bf
    rst $38                                       ; $41de: $ff
    cp a                                          ; $41df: $bf
    nop                                           ; $41e0: $00
    inc bc                                        ; $41e1: $03
    inc bc                                        ; $41e2: $03
    rrca                                          ; $41e3: $0f
    rrca                                          ; $41e4: $0f
    inc e                                         ; $41e5: $1c
    rra                                           ; $41e6: $1f
    inc sp                                        ; $41e7: $33
    ccf                                           ; $41e8: $3f
    ld l, a                                       ; $41e9: $6f
    ld a, a                                       ; $41ea: $7f
    rst RST_18                                    ; $41eb: $df
    rst $38                                       ; $41ec: $ff
    cp a                                          ; $41ed: $bf
    rst $38                                       ; $41ee: $ff
    cp a                                          ; $41ef: $bf
    rst $38                                       ; $41f0: $ff
    rst $38                                       ; $41f1: $ff
    rst $38                                       ; $41f2: $ff
    rst $38                                       ; $41f3: $ff
    rst $38                                       ; $41f4: $ff
    nop                                           ; $41f5: $00
    rst $38                                       ; $41f6: $ff
    rst $38                                       ; $41f7: $ff
    rst $38                                       ; $41f8: $ff
    rst $38                                       ; $41f9: $ff
    rst $38                                       ; $41fa: $ff
    rst $38                                       ; $41fb: $ff
    rst $38                                       ; $41fc: $ff
    rst $38                                       ; $41fd: $ff
    rst $38                                       ; $41fe: $ff
    rst $38                                       ; $41ff: $ff
    nop                                           ; $4200: $00
    rst $38                                       ; $4201: $ff
    rst $38                                       ; $4202: $ff
    nop                                           ; $4203: $00
    rst $38                                       ; $4204: $ff
    nop                                           ; $4205: $00
    rst $38                                       ; $4206: $ff
    nop                                           ; $4207: $00
    rst $38                                       ; $4208: $ff
    nop                                           ; $4209: $00
    rst $38                                       ; $420a: $ff
    nop                                           ; $420b: $00
    rst $38                                       ; $420c: $ff
    nop                                           ; $420d: $00
    rst $38                                       ; $420e: $ff
    nop                                           ; $420f: $00
    rst $38                                       ; $4210: $ff
    rst $38                                       ; $4211: $ff
    rst $38                                       ; $4212: $ff
    rst $38                                       ; $4213: $ff
    jp nc, rP1                                    ; $4214: $d2 $00 $ff

    rst $38                                       ; $4217: $ff
    rst $38                                       ; $4218: $ff
    rst $38                                       ; $4219: $ff
    rst $38                                       ; $421a: $ff
    rst $38                                       ; $421b: $ff
    rst $38                                       ; $421c: $ff
    rst $38                                       ; $421d: $ff
    rst $38                                       ; $421e: $ff
    rst $38                                       ; $421f: $ff
    nop                                           ; $4220: $00
    rst $38                                       ; $4221: $ff
    rst $38                                       ; $4222: $ff
    nop                                           ; $4223: $00
    rst $38                                       ; $4224: $ff
    nop                                           ; $4225: $00
    rst $38                                       ; $4226: $ff
    nop                                           ; $4227: $00
    rst $38                                       ; $4228: $ff
    nop                                           ; $4229: $00
    rst $38                                       ; $422a: $ff
    nop                                           ; $422b: $00
    rst $38                                       ; $422c: $ff
    nop                                           ; $422d: $00
    rst $38                                       ; $422e: $ff
    nop                                           ; $422f: $00
    rst $38                                       ; $4230: $ff
    inc bc                                        ; $4231: $03
    rst $38                                       ; $4232: $ff
    inc bc                                        ; $4233: $03
    rst $38                                       ; $4234: $ff
    inc bc                                        ; $4235: $03
    rst $38                                       ; $4236: $ff
    rrca                                          ; $4237: $0f
    rst $38                                       ; $4238: $ff
    rla                                           ; $4239: $17
    rst $38                                       ; $423a: $ff
    ccf                                           ; $423b: $3f
    rst $38                                       ; $423c: $ff
    ld e, a                                       ; $423d: $5f
    rst $38                                       ; $423e: $ff
    ld a, a                                       ; $423f: $7f
    ld bc, $0103                                  ; $4240: $01 $03 $01
    inc bc                                        ; $4243: $03
    ld bc, $0103                                  ; $4244: $01 $03 $01
    rrca                                          ; $4247: $0f
    ld bc, $0113                                  ; $4248: $01 $13 $01
    inc hl                                        ; $424b: $23
    ld bc, $0143                                  ; $424c: $01 $43 $01
    ld b, e                                       ; $424f: $43
    rst $38                                       ; $4250: $ff
    ld a, a                                       ; $4251: $7f
    rst $38                                       ; $4252: $ff
    ld a, a                                       ; $4253: $7f
    rst $38                                       ; $4254: $ff
    ld a, a                                       ; $4255: $7f
    rst $38                                       ; $4256: $ff
    ld a, a                                       ; $4257: $7f
    rst $38                                       ; $4258: $ff
    ld a, a                                       ; $4259: $7f
    rst $38                                       ; $425a: $ff
    ld a, a                                       ; $425b: $7f
    rst $38                                       ; $425c: $ff
    ld a, a                                       ; $425d: $7f
    rst $38                                       ; $425e: $ff
    ld a, a                                       ; $425f: $7f
    rst $38                                       ; $4260: $ff
    nop                                           ; $4261: $00
    rst $38                                       ; $4262: $ff
    nop                                           ; $4263: $00
    rst $38                                       ; $4264: $ff
    nop                                           ; $4265: $00
    rst $38                                       ; $4266: $ff
    nop                                           ; $4267: $00
    rst $38                                       ; $4268: $ff
    nop                                           ; $4269: $00
    rst $38                                       ; $426a: $ff
    nop                                           ; $426b: $00
    rst $38                                       ; $426c: $ff
    nop                                           ; $426d: $00
    rst $38                                       ; $426e: $ff
    nop                                           ; $426f: $00
    rst $38                                       ; $4270: $ff
    rst $38                                       ; $4271: $ff
    rst $38                                       ; $4272: $ff
    rst $38                                       ; $4273: $ff
    rst $38                                       ; $4274: $ff
    rst $38                                       ; $4275: $ff
    nop                                           ; $4276: $00
    rst $38                                       ; $4277: $ff
    rst $38                                       ; $4278: $ff
    rst $38                                       ; $4279: $ff
    rst $38                                       ; $427a: $ff
    rst $38                                       ; $427b: $ff
    rst $38                                       ; $427c: $ff
    rst $38                                       ; $427d: $ff
    rst $38                                       ; $427e: $ff
    rst $38                                       ; $427f: $ff
    rst $38                                       ; $4280: $ff
    nop                                           ; $4281: $00
    rst $38                                       ; $4282: $ff
    nop                                           ; $4283: $00
    rst $38                                       ; $4284: $ff
    nop                                           ; $4285: $00
    nop                                           ; $4286: $00
    rst $38                                       ; $4287: $ff
    rst $38                                       ; $4288: $ff
    nop                                           ; $4289: $00
    rst $38                                       ; $428a: $ff
    nop                                           ; $428b: $00
    rst $38                                       ; $428c: $ff
    nop                                           ; $428d: $00
    rst $38                                       ; $428e: $ff
    nop                                           ; $428f: $00
    rst $38                                       ; $4290: $ff
    rst $38                                       ; $4291: $ff
    rst $38                                       ; $4292: $ff
    rst $38                                       ; $4293: $ff
    rst $38                                       ; $4294: $ff
    rst $38                                       ; $4295: $ff
    rst $38                                       ; $4296: $ff
    pop af                                        ; $4297: $f1
    db $fd                                        ; $4298: $fd
    or $ff                                        ; $4299: $f6 $ff
    or $fd                                        ; $429b: $f6 $fd
    or $ff                                        ; $429d: $f6 $ff
    pop af                                        ; $429f: $f1
    rst $38                                       ; $42a0: $ff
    nop                                           ; $42a1: $00
    rst $38                                       ; $42a2: $ff
    nop                                           ; $42a3: $00
    rst $38                                       ; $42a4: $ff
    nop                                           ; $42a5: $00
    rst $38                                       ; $42a6: $ff
    nop                                           ; $42a7: $00
    rst $38                                       ; $42a8: $ff
    nop                                           ; $42a9: $00
    rst $38                                       ; $42aa: $ff
    nop                                           ; $42ab: $00
    rst $38                                       ; $42ac: $ff
    nop                                           ; $42ad: $00
    rst $38                                       ; $42ae: $ff
    nop                                           ; $42af: $00
    rst $38                                       ; $42b0: $ff
    rst $38                                       ; $42b1: $ff
    rst $38                                       ; $42b2: $ff
    rst $38                                       ; $42b3: $ff
    rst $38                                       ; $42b4: $ff
    rst $38                                       ; $42b5: $ff
    db $fd                                        ; $42b6: $fd
    add $d7                                       ; $42b7: $c6 $d7
    cp e                                          ; $42b9: $bb
    rst $38                                       ; $42ba: $ff
    cp e                                          ; $42bb: $bb
    rst $10                                       ; $42bc: $d7
    cp e                                          ; $42bd: $bb
    rst $38                                       ; $42be: $ff
    rst RST_00                                    ; $42bf: $c7
    rst $38                                       ; $42c0: $ff
    nop                                           ; $42c1: $00
    rst $38                                       ; $42c2: $ff
    nop                                           ; $42c3: $00
    rst $38                                       ; $42c4: $ff
    nop                                           ; $42c5: $00
    rst $38                                       ; $42c6: $ff
    nop                                           ; $42c7: $00
    rst $38                                       ; $42c8: $ff
    nop                                           ; $42c9: $00
    rst $38                                       ; $42ca: $ff
    nop                                           ; $42cb: $00
    rst $38                                       ; $42cc: $ff
    nop                                           ; $42cd: $00
    rst $38                                       ; $42ce: $ff
    nop                                           ; $42cf: $00
    rst $38                                       ; $42d0: $ff
    rst $38                                       ; $42d1: $ff
    rst $38                                       ; $42d2: $ff
    rst $38                                       ; $42d3: $ff
    rst $38                                       ; $42d4: $ff
    rst $38                                       ; $42d5: $ff
    rst RST_18                                    ; $42d6: $df
    ccf                                           ; $42d7: $3f
    cp $7f                                        ; $42d8: $fe $7f
    rst $38                                       ; $42da: $ff
    ld a, [hl]                                    ; $42db: $7e
    rst $38                                       ; $42dc: $ff
    ld a, [hl]                                    ; $42dd: $7e
    rst $38                                       ; $42de: $ff
    ld a, [hl]                                    ; $42df: $7e
    rst $38                                       ; $42e0: $ff
    nop                                           ; $42e1: $00
    rst $38                                       ; $42e2: $ff
    nop                                           ; $42e3: $00
    rst $38                                       ; $42e4: $ff
    nop                                           ; $42e5: $00
    rst $38                                       ; $42e6: $ff
    nop                                           ; $42e7: $00
    rst $38                                       ; $42e8: $ff
    nop                                           ; $42e9: $00
    rst $38                                       ; $42ea: $ff
    nop                                           ; $42eb: $00
    rst $38                                       ; $42ec: $ff
    nop                                           ; $42ed: $00
    rst $38                                       ; $42ee: $ff
    nop                                           ; $42ef: $00
    rst $38                                       ; $42f0: $ff
    rst $38                                       ; $42f1: $ff
    rst $38                                       ; $42f2: $ff
    rst $38                                       ; $42f3: $ff
    rst $38                                       ; $42f4: $ff
    rst $38                                       ; $42f5: $ff
    rst $38                                       ; $42f6: $ff
    ld [hl], a                                    ; $42f7: $77
    xor e                                         ; $42f8: $ab
    ld [hl], a                                    ; $42f9: $77
    rst $38                                       ; $42fa: $ff
    xor e                                         ; $42fb: $ab
    rst $38                                       ; $42fc: $ff
    jp c, $daff                                   ; $42fd: $da $ff $da

    rst $38                                       ; $4300: $ff
    nop                                           ; $4301: $00
    rst $38                                       ; $4302: $ff
    nop                                           ; $4303: $00
    rst $38                                       ; $4304: $ff
    nop                                           ; $4305: $00
    rst $38                                       ; $4306: $ff
    nop                                           ; $4307: $00
    rst $38                                       ; $4308: $ff
    nop                                           ; $4309: $00
    rst $38                                       ; $430a: $ff
    nop                                           ; $430b: $00
    rst $38                                       ; $430c: $ff
    nop                                           ; $430d: $00
    rst $38                                       ; $430e: $ff
    nop                                           ; $430f: $00
    rst $38                                       ; $4310: $ff
    rst $38                                       ; $4311: $ff
    rst $38                                       ; $4312: $ff
    rst $38                                       ; $4313: $ff
    rst $38                                       ; $4314: $ff
    rst $38                                       ; $4315: $ff
    xor $b1                                       ; $4316: $ee $b1
    rst $38                                       ; $4318: $ff
    ld e, e                                       ; $4319: $5b
    cp a                                          ; $431a: $bf
    ld e, e                                       ; $431b: $5b
    rst $38                                       ; $431c: $ff
    db $eb                                        ; $431d: $eb
    rst $38                                       ; $431e: $ff
    db $eb                                        ; $431f: $eb
    rst $38                                       ; $4320: $ff
    nop                                           ; $4321: $00
    rst $38                                       ; $4322: $ff
    nop                                           ; $4323: $00
    rst $38                                       ; $4324: $ff
    nop                                           ; $4325: $00
    rst $38                                       ; $4326: $ff
    nop                                           ; $4327: $00
    rst $38                                       ; $4328: $ff
    nop                                           ; $4329: $00
    rst $38                                       ; $432a: $ff
    nop                                           ; $432b: $00
    rst $38                                       ; $432c: $ff
    nop                                           ; $432d: $00
    rst $38                                       ; $432e: $ff
    nop                                           ; $432f: $00
    rst $38                                       ; $4330: $ff
    rst $38                                       ; $4331: $ff
    rst $38                                       ; $4332: $ff
    rst $38                                       ; $4333: $ff
    rst $38                                       ; $4334: $ff
    rst $38                                       ; $4335: $ff
    rst $38                                       ; $4336: $ff
    adc l                                         ; $4337: $8d
    rst $28                                       ; $4338: $ef
    or l                                          ; $4339: $b5
    rst $38                                       ; $433a: $ff
    adc l                                         ; $433b: $8d
    rst $30                                       ; $433c: $f7
    xor l                                         ; $433d: $ad
    rst $38                                       ; $433e: $ff
    or l                                          ; $433f: $b5
    rst $38                                       ; $4340: $ff
    nop                                           ; $4341: $00
    rst $38                                       ; $4342: $ff
    nop                                           ; $4343: $00
    rst $38                                       ; $4344: $ff
    nop                                           ; $4345: $00
    rst $38                                       ; $4346: $ff
    nop                                           ; $4347: $00
    rst $38                                       ; $4348: $ff
    nop                                           ; $4349: $00
    rst $38                                       ; $434a: $ff
    nop                                           ; $434b: $00
    rst $38                                       ; $434c: $ff
    nop                                           ; $434d: $00
    rst $38                                       ; $434e: $ff
    nop                                           ; $434f: $00
    rst $38                                       ; $4350: $ff
    rst $38                                       ; $4351: $ff
    rst $38                                       ; $4352: $ff
    rst $38                                       ; $4353: $ff
    rst $38                                       ; $4354: $ff
    rst $38                                       ; $4355: $ff
    xor a                                         ; $4356: $af
    ld [hl], a                                    ; $4357: $77
    rst RST_18                                    ; $4358: $df
    xor a                                         ; $4359: $af
    rst $38                                       ; $435a: $ff
    rst RST_18                                    ; $435b: $df
    rst RST_18                                    ; $435c: $df
    xor a                                         ; $435d: $af
    xor a                                         ; $435e: $af
    ld [hl], a                                    ; $435f: $77
    rst $38                                       ; $4360: $ff
    nop                                           ; $4361: $00
    rst $38                                       ; $4362: $ff
    nop                                           ; $4363: $00
    rst $38                                       ; $4364: $ff
    nop                                           ; $4365: $00
    rst $38                                       ; $4366: $ff
    nop                                           ; $4367: $00
    rst $38                                       ; $4368: $ff
    nop                                           ; $4369: $00
    rst $38                                       ; $436a: $ff
    nop                                           ; $436b: $00
    rst $38                                       ; $436c: $ff
    nop                                           ; $436d: $00
    rst $38                                       ; $436e: $ff
    nop                                           ; $436f: $00
    rst $38                                       ; $4370: $ff
    ld a, a                                       ; $4371: $7f
    rst $38                                       ; $4372: $ff
    ld a, a                                       ; $4373: $7f
    cp a                                          ; $4374: $bf
    rra                                           ; $4375: $1f
    rst RST_18                                    ; $4376: $df
    rra                                           ; $4377: $1f
    rst $28                                       ; $4378: $ef
    rlca                                          ; $4379: $07
    di                                            ; $437a: $f3
    inc bc                                        ; $437b: $03
    rst $38                                       ; $437c: $ff
    inc bc                                        ; $437d: $03
    rst $38                                       ; $437e: $ff
    inc bc                                        ; $437f: $03
    ld bc, $0143                                  ; $4380: $01 $43 $01
    ld b, e                                       ; $4383: $43
    ld b, c                                       ; $4384: $41
    inc bc                                        ; $4385: $03
    ld hl, $1103                                  ; $4386: $21 $03 $11
    inc bc                                        ; $4389: $03
    dec c                                         ; $438a: $0d
    inc bc                                        ; $438b: $03
    ld bc, $0103                                  ; $438c: $01 $03 $01
    inc bc                                        ; $438f: $03
    ld a, a                                       ; $4390: $7f
    ld a, a                                       ; $4391: $7f
    rst $38                                       ; $4392: $ff
    ld a, a                                       ; $4393: $7f
    ld a, a                                       ; $4394: $7f
    ld a, a                                       ; $4395: $7f
    ld a, a                                       ; $4396: $7f
    ld a, a                                       ; $4397: $7f
    rst $38                                       ; $4398: $ff
    ld a, a                                       ; $4399: $7f
    ld a, a                                       ; $439a: $7f
    ld a, a                                       ; $439b: $7f
    rst $38                                       ; $439c: $ff
    ld a, a                                       ; $439d: $7f
    ld a, a                                       ; $439e: $7f
    ld a, a                                       ; $439f: $7f
    rst $38                                       ; $43a0: $ff
    nop                                           ; $43a1: $00
    rst $38                                       ; $43a2: $ff
    nop                                           ; $43a3: $00
    rst $38                                       ; $43a4: $ff
    nop                                           ; $43a5: $00
    rst $38                                       ; $43a6: $ff
    nop                                           ; $43a7: $00
    rst $38                                       ; $43a8: $ff
    nop                                           ; $43a9: $00
    rst $38                                       ; $43aa: $ff
    nop                                           ; $43ab: $00
    rst $38                                       ; $43ac: $ff
    nop                                           ; $43ad: $00
    rst $38                                       ; $43ae: $ff
    nop                                           ; $43af: $00
    rst $38                                       ; $43b0: $ff
    nop                                           ; $43b1: $00
    rst $38                                       ; $43b2: $ff
    rst $38                                       ; $43b3: $ff
    rst $38                                       ; $43b4: $ff
    rst $38                                       ; $43b5: $ff
    rst $38                                       ; $43b6: $ff
    rst $38                                       ; $43b7: $ff
    rst $38                                       ; $43b8: $ff
    rst $38                                       ; $43b9: $ff
    rst $38                                       ; $43ba: $ff
    rst $38                                       ; $43bb: $ff
    rst $38                                       ; $43bc: $ff
    rst $38                                       ; $43bd: $ff
    rst $38                                       ; $43be: $ff
    rst $38                                       ; $43bf: $ff
    nop                                           ; $43c0: $00
    rst $38                                       ; $43c1: $ff
    rst $38                                       ; $43c2: $ff
    nop                                           ; $43c3: $00
    rst $38                                       ; $43c4: $ff
    nop                                           ; $43c5: $00
    rst $38                                       ; $43c6: $ff
    nop                                           ; $43c7: $00
    rst $38                                       ; $43c8: $ff
    nop                                           ; $43c9: $00
    rst $38                                       ; $43ca: $ff
    nop                                           ; $43cb: $00
    rst $38                                       ; $43cc: $ff
    nop                                           ; $43cd: $00
    rst $38                                       ; $43ce: $ff
    nop                                           ; $43cf: $00
    rst $38                                       ; $43d0: $ff
    nop                                           ; $43d1: $00
    rst $38                                       ; $43d2: $ff
    rst $38                                       ; $43d3: $ff
    rst $38                                       ; $43d4: $ff
    rst $38                                       ; $43d5: $ff
    rst $38                                       ; $43d6: $ff
    rst $38                                       ; $43d7: $ff
    rst $38                                       ; $43d8: $ff
    rst $38                                       ; $43d9: $ff
    rst $38                                       ; $43da: $ff
    rst $38                                       ; $43db: $ff
    rst $38                                       ; $43dc: $ff
    rst $38                                       ; $43dd: $ff
    cp $fe                                        ; $43de: $fe $fe
    nop                                           ; $43e0: $00
    rst $38                                       ; $43e1: $ff
    rst $38                                       ; $43e2: $ff
    nop                                           ; $43e3: $00
    rst $38                                       ; $43e4: $ff
    nop                                           ; $43e5: $00
    rst $38                                       ; $43e6: $ff
    nop                                           ; $43e7: $00
    rst $38                                       ; $43e8: $ff
    nop                                           ; $43e9: $00
    rst $38                                       ; $43ea: $ff
    nop                                           ; $43eb: $00
    rst $38                                       ; $43ec: $ff
    nop                                           ; $43ed: $00
    cp $01                                        ; $43ee: $fe $01
    rst $38                                       ; $43f0: $ff
    nop                                           ; $43f1: $00
    rst $38                                       ; $43f2: $ff
    rst $38                                       ; $43f3: $ff
    rst $38                                       ; $43f4: $ff
    rst $38                                       ; $43f5: $ff
    rst $38                                       ; $43f6: $ff
    rst $38                                       ; $43f7: $ff
    rst $38                                       ; $43f8: $ff
    rst $38                                       ; $43f9: $ff
    rst $38                                       ; $43fa: $ff
    rst $38                                       ; $43fb: $ff
    rst $38                                       ; $43fc: $ff
    rst $38                                       ; $43fd: $ff
    nop                                           ; $43fe: $00
    nop                                           ; $43ff: $00
    nop                                           ; $4400: $00
    rst $38                                       ; $4401: $ff
    rst $38                                       ; $4402: $ff
    nop                                           ; $4403: $00
    rst $38                                       ; $4404: $ff
    nop                                           ; $4405: $00
    rst $38                                       ; $4406: $ff
    nop                                           ; $4407: $00
    rst $38                                       ; $4408: $ff
    nop                                           ; $4409: $00
    rst $38                                       ; $440a: $ff
    nop                                           ; $440b: $00
    rst $38                                       ; $440c: $ff
    nop                                           ; $440d: $00
    nop                                           ; $440e: $00
    rst $38                                       ; $440f: $ff
    rst $38                                       ; $4410: $ff
    rst $38                                       ; $4411: $ff
    rst $38                                       ; $4412: $ff
    rst $38                                       ; $4413: $ff
    rst $38                                       ; $4414: $ff
    rst $38                                       ; $4415: $ff
    rst $38                                       ; $4416: $ff
    rst $38                                       ; $4417: $ff
    rst $38                                       ; $4418: $ff
    rst $38                                       ; $4419: $ff
    rst $38                                       ; $441a: $ff
    rst $38                                       ; $441b: $ff
    rst $38                                       ; $441c: $ff
    rst $38                                       ; $441d: $ff
    nop                                           ; $441e: $00
    nop                                           ; $441f: $00
    rst $38                                       ; $4420: $ff
    nop                                           ; $4421: $00
    rst $38                                       ; $4422: $ff
    nop                                           ; $4423: $00
    rst $38                                       ; $4424: $ff
    nop                                           ; $4425: $00
    rst $38                                       ; $4426: $ff
    nop                                           ; $4427: $00
    rst $38                                       ; $4428: $ff
    nop                                           ; $4429: $00
    rst $38                                       ; $442a: $ff
    nop                                           ; $442b: $00
    rst $38                                       ; $442c: $ff
    nop                                           ; $442d: $00
    nop                                           ; $442e: $00
    rst $38                                       ; $442f: $ff
    rst $38                                       ; $4430: $ff
    inc bc                                        ; $4431: $03
    rst $38                                       ; $4432: $ff
    inc bc                                        ; $4433: $03
    rst $38                                       ; $4434: $ff
    inc bc                                        ; $4435: $03
    rst $38                                       ; $4436: $ff
    inc bc                                        ; $4437: $03
    rst $38                                       ; $4438: $ff
    inc bc                                        ; $4439: $03
    rst $38                                       ; $443a: $ff
    inc bc                                        ; $443b: $03
    rst $38                                       ; $443c: $ff
    inc bc                                        ; $443d: $03
    rst $38                                       ; $443e: $ff
    inc bc                                        ; $443f: $03
    ld bc, $0103                                  ; $4440: $01 $03 $01
    inc bc                                        ; $4443: $03
    ld bc, $0103                                  ; $4444: $01 $03 $01
    inc bc                                        ; $4447: $03
    ld bc, $0103                                  ; $4448: $01 $03 $01
    inc bc                                        ; $444b: $03
    ld bc, $0103                                  ; $444c: $01 $03 $01
    inc bc                                        ; $444f: $03
    rst $38                                       ; $4450: $ff
    rst $38                                       ; $4451: $ff
    rst $38                                       ; $4452: $ff
    rst $38                                       ; $4453: $ff
    rst $38                                       ; $4454: $ff
    rst $38                                       ; $4455: $ff
    rst $38                                       ; $4456: $ff
    rst $38                                       ; $4457: $ff
    nop                                           ; $4458: $00
    ret nz                                        ; $4459: $c0

    ret nz                                        ; $445a: $c0

    ret nz                                        ; $445b: $c0

    adc b                                         ; $445c: $88
    add a                                         ; $445d: $87
    nop                                           ; $445e: $00
    nop                                           ; $445f: $00
    nop                                           ; $4460: $00
    nop                                           ; $4461: $00
    nop                                           ; $4462: $00
    nop                                           ; $4463: $00
    nop                                           ; $4464: $00
    nop                                           ; $4465: $00
    nop                                           ; $4466: $00
    rst $38                                       ; $4467: $ff
    rst $38                                       ; $4468: $ff
    ret nz                                        ; $4469: $c0

    ccf                                           ; $446a: $3f
    ld b, b                                       ; $446b: $40
    ld a, a                                       ; $446c: $7f
    add b                                         ; $446d: $80
    rst $38                                       ; $446e: $ff
    nop                                           ; $446f: $00
    cp $fe                                        ; $4470: $fe $fe
    cp $fe                                        ; $4472: $fe $fe
    cp $fe                                        ; $4474: $fe $fe
    cp $fe                                        ; $4476: $fe $fe
    cp $fe                                        ; $4478: $fe $fe
    cp $fe                                        ; $447a: $fe $fe
    cp $fe                                        ; $447c: $fe $fe
    cp $fe                                        ; $447e: $fe $fe
    cp $01                                        ; $4480: $fe $01
    cp $01                                        ; $4482: $fe $01
    cp $01                                        ; $4484: $fe $01
    cp $01                                        ; $4486: $fe $01
    cp $01                                        ; $4488: $fe $01
    cp $01                                        ; $448a: $fe $01
    cp $01                                        ; $448c: $fe $01
    cp $01                                        ; $448e: $fe $01
    rst $38                                       ; $4490: $ff
    rst $38                                       ; $4491: $ff
    rst $38                                       ; $4492: $ff
    rst $38                                       ; $4493: $ff
    rst $38                                       ; $4494: $ff
    rst $38                                       ; $4495: $ff
    rst $38                                       ; $4496: $ff
    rst $38                                       ; $4497: $ff
    nop                                           ; $4498: $00
    rst $38                                       ; $4499: $ff
    rst $38                                       ; $449a: $ff
    rst $38                                       ; $449b: $ff
    rst $38                                       ; $449c: $ff
    rst $38                                       ; $449d: $ff
    nop                                           ; $449e: $00
    nop                                           ; $449f: $00
    nop                                           ; $44a0: $00
    nop                                           ; $44a1: $00
    nop                                           ; $44a2: $00
    nop                                           ; $44a3: $00
    nop                                           ; $44a4: $00
    nop                                           ; $44a5: $00
    nop                                           ; $44a6: $00
    rst $38                                       ; $44a7: $ff
    rst $38                                       ; $44a8: $ff
    rst $38                                       ; $44a9: $ff
    nop                                           ; $44aa: $00
    nop                                           ; $44ab: $00
    nop                                           ; $44ac: $00
    nop                                           ; $44ad: $00
    rst $38                                       ; $44ae: $ff
    nop                                           ; $44af: $00
    inc bc                                        ; $44b0: $03
    rst $38                                       ; $44b1: $ff
    inc bc                                        ; $44b2: $03
    rst $38                                       ; $44b3: $ff
    inc bc                                        ; $44b4: $03
    rst $38                                       ; $44b5: $ff
    rst $38                                       ; $44b6: $ff
    inc bc                                        ; $44b7: $03
    rst $38                                       ; $44b8: $ff
    rst $38                                       ; $44b9: $ff
    rst $38                                       ; $44ba: $ff
    rst $38                                       ; $44bb: $ff
    rst $38                                       ; $44bc: $ff
    rst $38                                       ; $44bd: $ff
    rst $38                                       ; $44be: $ff
    rst $38                                       ; $44bf: $ff
    ld bc, $0103                                  ; $44c0: $01 $03 $01
    inc bc                                        ; $44c3: $03
    ld bc, $0103                                  ; $44c4: $01 $03 $01
    inc bc                                        ; $44c7: $03
    ld bc, $0103                                  ; $44c8: $01 $03 $01
    inc bc                                        ; $44cb: $03
    ld bc, $0103                                  ; $44cc: $01 $03 $01
    inc bc                                        ; $44cf: $03
    rst $38                                       ; $44d0: $ff
    rst $38                                       ; $44d1: $ff
    rst $38                                       ; $44d2: $ff
    rst $38                                       ; $44d3: $ff
    inc bc                                        ; $44d4: $03
    rst $38                                       ; $44d5: $ff
    inc bc                                        ; $44d6: $03
    inc bc                                        ; $44d7: $03
    inc bc                                        ; $44d8: $03
    inc bc                                        ; $44d9: $03
    inc bc                                        ; $44da: $03
    rst $38                                       ; $44db: $ff
    inc bc                                        ; $44dc: $03
    rst $38                                       ; $44dd: $ff
    rst $38                                       ; $44de: $ff
    rst $38                                       ; $44df: $ff
    db $fd                                        ; $44e0: $fd
    rst $38                                       ; $44e1: $ff
    db $fd                                        ; $44e2: $fd
    rst $38                                       ; $44e3: $ff
    db $fd                                        ; $44e4: $fd
    inc bc                                        ; $44e5: $03
    db $fd                                        ; $44e6: $fd
    inc bc                                        ; $44e7: $03
    db $fd                                        ; $44e8: $fd
    inc bc                                        ; $44e9: $03
    db $fd                                        ; $44ea: $fd
    inc bc                                        ; $44eb: $03
    db $fd                                        ; $44ec: $fd
    inc bc                                        ; $44ed: $03
    db $fd                                        ; $44ee: $fd
    rst $38                                       ; $44ef: $ff
    rst $38                                       ; $44f0: $ff
    rst $38                                       ; $44f1: $ff
    rst $38                                       ; $44f2: $ff
    rst $38                                       ; $44f3: $ff
    rst $38                                       ; $44f4: $ff
    rst $38                                       ; $44f5: $ff
    rst $38                                       ; $44f6: $ff
    rst $38                                       ; $44f7: $ff
    rst $38                                       ; $44f8: $ff
    rst $38                                       ; $44f9: $ff
    rst $38                                       ; $44fa: $ff

Call_00c_44fb:
    inc bc                                        ; $44fb: $03
    inc bc                                        ; $44fc: $03
    rst $38                                       ; $44fd: $ff
    inc bc                                        ; $44fe: $03
    rst $38                                       ; $44ff: $ff
    db $fd                                        ; $4500: $fd
    rst $38                                       ; $4501: $ff
    ld bc, $0103                                  ; $4502: $01 $03 $01
    inc bc                                        ; $4505: $03
    ld bc, $0103                                  ; $4506: $01 $03 $01
    inc bc                                        ; $4509: $03
    ld bc, $0103                                  ; $450a: $01 $03 $01
    inc bc                                        ; $450d: $03
    ld bc, $0303                                  ; $450e: $01 $03 $03
    rst $38                                       ; $4511: $ff
    inc bc                                        ; $4512: $03
    rst $38                                       ; $4513: $ff
    inc bc                                        ; $4514: $03
    rst $38                                       ; $4515: $ff
    inc bc                                        ; $4516: $03
    rst $38                                       ; $4517: $ff
    inc bc                                        ; $4518: $03
    rst $38                                       ; $4519: $ff
    inc bc                                        ; $451a: $03
    rst $38                                       ; $451b: $ff
    inc bc                                        ; $451c: $03
    rst $38                                       ; $451d: $ff
    inc bc                                        ; $451e: $03
    rst $38                                       ; $451f: $ff
    ld bc, $0103                                  ; $4520: $01 $03 $01
    inc bc                                        ; $4523: $03
    ld bc, $0103                                  ; $4524: $01 $03 $01
    inc bc                                        ; $4527: $03
    ld bc, $0103                                  ; $4528: $01 $03 $01
    inc bc                                        ; $452b: $03
    ld bc, $0103                                  ; $452c: $01 $03 $01
    inc bc                                        ; $452f: $03
    ld a, a                                       ; $4530: $7f
    ld a, a                                       ; $4531: $7f
    rst $38                                       ; $4532: $ff
    ld a, a                                       ; $4533: $7f
    ld a, a                                       ; $4534: $7f
    ld a, a                                       ; $4535: $7f
    rst $38                                       ; $4536: $ff
    ld a, a                                       ; $4537: $7f
    ld a, a                                       ; $4538: $7f
    ld a, a                                       ; $4539: $7f
    rst $38                                       ; $453a: $ff
    ld a, a                                       ; $453b: $7f
    ld a, a                                       ; $453c: $7f
    ld a, a                                       ; $453d: $7f
    ld a, a                                       ; $453e: $7f
    ld a, a                                       ; $453f: $7f
    rst $38                                       ; $4540: $ff
    nop                                           ; $4541: $00
    rst $38                                       ; $4542: $ff
    nop                                           ; $4543: $00
    rst $38                                       ; $4544: $ff
    nop                                           ; $4545: $00
    rst $38                                       ; $4546: $ff
    nop                                           ; $4547: $00
    rst $38                                       ; $4548: $ff
    nop                                           ; $4549: $00
    rst $38                                       ; $454a: $ff
    nop                                           ; $454b: $00
    rst $38                                       ; $454c: $ff
    nop                                           ; $454d: $00
    rst $38                                       ; $454e: $ff
    nop                                           ; $454f: $00
    rst $38                                       ; $4550: $ff
    ld hl, sp-$04                                 ; $4551: $f8 $fc
    di                                            ; $4553: $f3
    ld hl, sp-$0c                                 ; $4554: $f8 $f4
    ld sp, hl                                     ; $4556: $f9
    db $f4                                        ; $4557: $f4
    db $fc                                        ; $4558: $fc
    ei                                            ; $4559: $fb
    rst $38                                       ; $455a: $ff
    rst $38                                       ; $455b: $ff
    rst $38                                       ; $455c: $ff
    rst $38                                       ; $455d: $ff
    rst $38                                       ; $455e: $ff
    rst $38                                       ; $455f: $ff
    rst $38                                       ; $4560: $ff
    rlca                                          ; $4561: $07
    rst $38                                       ; $4562: $ff
    rrca                                          ; $4563: $0f
    rst $38                                       ; $4564: $ff
    inc c                                         ; $4565: $0c
    rst $38                                       ; $4566: $ff
    dec c                                         ; $4567: $0d
    rst $38                                       ; $4568: $ff
    rlca                                          ; $4569: $07
    rst $38                                       ; $456a: $ff
    nop                                           ; $456b: $00
    rst $38                                       ; $456c: $ff
    nop                                           ; $456d: $00
    rst $38                                       ; $456e: $ff
    nop                                           ; $456f: $00
    rst $38                                       ; $4570: $ff
    rst $38                                       ; $4571: $ff
    rst $38                                       ; $4572: $ff
    ld a, a                                       ; $4573: $7f
    ld a, a                                       ; $4574: $7f
    rst $38                                       ; $4575: $ff
    ld a, a                                       ; $4576: $7f
    rst $38                                       ; $4577: $ff
    rst $38                                       ; $4578: $ff
    rst $38                                       ; $4579: $ff
    rst $38                                       ; $457a: $ff
    rst $38                                       ; $457b: $ff
    rst $38                                       ; $457c: $ff
    rst $38                                       ; $457d: $ff
    rst $38                                       ; $457e: $ff
    rst $38                                       ; $457f: $ff
    rst $38                                       ; $4580: $ff
    nop                                           ; $4581: $00
    rst $38                                       ; $4582: $ff
    add b                                         ; $4583: $80
    rst $38                                       ; $4584: $ff
    add b                                         ; $4585: $80
    rst $38                                       ; $4586: $ff
    add b                                         ; $4587: $80
    rst $38                                       ; $4588: $ff
    nop                                           ; $4589: $00
    rst $38                                       ; $458a: $ff
    nop                                           ; $458b: $00
    rst $38                                       ; $458c: $ff
    nop                                           ; $458d: $00
    rst $38                                       ; $458e: $ff
    nop                                           ; $458f: $00
    rst $38                                       ; $4590: $ff
    inc bc                                        ; $4591: $03
    rst $38                                       ; $4592: $ff
    inc bc                                        ; $4593: $03
    rst $38                                       ; $4594: $ff
    inc bc                                        ; $4595: $03
    rst $38                                       ; $4596: $ff
    inc bc                                        ; $4597: $03
    rst RST_08                                    ; $4598: $cf
    inc sp                                        ; $4599: $33
    ld d, a                                       ; $459a: $57
    dec sp                                        ; $459b: $3b
    xor a                                         ; $459c: $af
    sbc e                                         ; $459d: $9b
    rst $28                                       ; $459e: $ef
    db $db                                        ; $459f: $db
    ld bc, $0103                                  ; $45a0: $01 $03 $01
    inc bc                                        ; $45a3: $03
    ld bc, $0103                                  ; $45a4: $01 $03 $01
    inc bc                                        ; $45a7: $03
    pop af                                        ; $45a8: $f1
    inc bc                                        ; $45a9: $03
    ld sp, hl                                     ; $45aa: $f9
    inc de                                        ; $45ab: $13
    ld a, c                                       ; $45ac: $79
    adc e                                         ; $45ad: $8b
    add hl, sp                                    ; $45ae: $39
    set 7, a                                      ; $45af: $cb $ff
    ld a, a                                       ; $45b1: $7f
    rst $38                                       ; $45b2: $ff
    ld a, [hl]                                    ; $45b3: $7e
    rst $38                                       ; $45b4: $ff
    ld a, [hl]                                    ; $45b5: $7e
    rst $38                                       ; $45b6: $ff
    ld a, [hl]                                    ; $45b7: $7e
    rst $38                                       ; $45b8: $ff
    ld a, [hl]                                    ; $45b9: $7e
    rst $38                                       ; $45ba: $ff
    ld a, [hl]                                    ; $45bb: $7e
    rst $38                                       ; $45bc: $ff
    ld a, a                                       ; $45bd: $7f
    rst $38                                       ; $45be: $ff
    ld a, a                                       ; $45bf: $7f
    rst $38                                       ; $45c0: $ff
    nop                                           ; $45c1: $00
    rst $38                                       ; $45c2: $ff
    nop                                           ; $45c3: $00
    rst $38                                       ; $45c4: $ff
    nop                                           ; $45c5: $00
    rst $38                                       ; $45c6: $ff
    nop                                           ; $45c7: $00
    rst $38                                       ; $45c8: $ff
    nop                                           ; $45c9: $00
    rst $38                                       ; $45ca: $ff
    nop                                           ; $45cb: $00
    rst $38                                       ; $45cc: $ff
    nop                                           ; $45cd: $00
    rst $38                                       ; $45ce: $ff
    nop                                           ; $45cf: $00
    rst $38                                       ; $45d0: $ff
    rst $38                                       ; $45d1: $ff
    cp a                                          ; $45d2: $bf
    halt                                          ; $45d3: $76
    db $eb                                        ; $45d4: $eb
    or a                                          ; $45d5: $b7
    cp a                                          ; $45d6: $bf
    ld l, e                                       ; $45d7: $6b
    rst $38                                       ; $45d8: $ff
    and e                                         ; $45d9: $a3
    cp a                                          ; $45da: $bf
    ld l, e                                       ; $45db: $6b
    rst $38                                       ; $45dc: $ff
    rst $38                                       ; $45dd: $ff
    rst $38                                       ; $45de: $ff
    rst $38                                       ; $45df: $ff
    rst $38                                       ; $45e0: $ff
    nop                                           ; $45e1: $00
    rst $38                                       ; $45e2: $ff
    nop                                           ; $45e3: $00
    rst $38                                       ; $45e4: $ff
    nop                                           ; $45e5: $00
    rst $38                                       ; $45e6: $ff
    nop                                           ; $45e7: $00
    rst $38                                       ; $45e8: $ff
    nop                                           ; $45e9: $00
    rst $38                                       ; $45ea: $ff
    nop                                           ; $45eb: $00
    rst $38                                       ; $45ec: $ff
    nop                                           ; $45ed: $00
    rst $38                                       ; $45ee: $ff
    nop                                           ; $45ef: $00
    rst $38                                       ; $45f0: $ff
    rst $38                                       ; $45f1: $ff
    rst $38                                       ; $45f2: $ff
    ld [hl+], a                                   ; $45f3: $22
    rst $38                                       ; $45f4: $ff
    halt                                          ; $45f5: $76
    rst $38                                       ; $45f6: $ff
    halt                                          ; $45f7: $76
    rst $38                                       ; $45f8: $ff
    halt                                          ; $45f9: $76
    rst $38                                       ; $45fa: $ff
    halt                                          ; $45fb: $76
    rst $38                                       ; $45fc: $ff
    rst $38                                       ; $45fd: $ff
    rst $38                                       ; $45fe: $ff
    rst $38                                       ; $45ff: $ff
    rst $38                                       ; $4600: $ff
    nop                                           ; $4601: $00
    rst $38                                       ; $4602: $ff
    nop                                           ; $4603: $00
    rst $38                                       ; $4604: $ff
    nop                                           ; $4605: $00
    rst $38                                       ; $4606: $ff
    nop                                           ; $4607: $00
    rst $38                                       ; $4608: $ff
    nop                                           ; $4609: $00
    rst $38                                       ; $460a: $ff
    nop                                           ; $460b: $00
    rst $38                                       ; $460c: $ff
    nop                                           ; $460d: $00
    rst $38                                       ; $460e: $ff
    nop                                           ; $460f: $00
    rst $38                                       ; $4610: $ff
    rst $38                                       ; $4611: $ff
    ei                                            ; $4612: $fb
    daa                                           ; $4613: $27
    db $fd                                        ; $4614: $fd
    db $eb                                        ; $4615: $eb
    ei                                            ; $4616: $fb
    daa                                           ; $4617: $27
    db $fd                                        ; $4618: $fd
    db $eb                                        ; $4619: $eb
    rst $38                                       ; $461a: $ff
    dec l                                         ; $461b: $2d
    rst $38                                       ; $461c: $ff
    rst $38                                       ; $461d: $ff
    rst $38                                       ; $461e: $ff
    rst $38                                       ; $461f: $ff
    rst $38                                       ; $4620: $ff
    nop                                           ; $4621: $00
    rst $38                                       ; $4622: $ff
    nop                                           ; $4623: $00
    rst $38                                       ; $4624: $ff
    nop                                           ; $4625: $00
    rst $38                                       ; $4626: $ff
    nop                                           ; $4627: $00
    rst $38                                       ; $4628: $ff
    nop                                           ; $4629: $00
    rst $38                                       ; $462a: $ff
    nop                                           ; $462b: $00
    rst $38                                       ; $462c: $ff
    nop                                           ; $462d: $00
    rst $38                                       ; $462e: $ff
    nop                                           ; $462f: $00
    cp $fe                                        ; $4630: $fe $fe
    cp $5e                                        ; $4632: $fe $5e
    cp $5e                                        ; $4634: $fe $5e
    ld e, [hl]                                    ; $4636: $5e
    cp [hl]                                       ; $4637: $be
    cp $be                                        ; $4638: $fe $be
    cp $be                                        ; $463a: $fe $be
    cp $fe                                        ; $463c: $fe $fe
    cp $fe                                        ; $463e: $fe $fe
    cp $01                                        ; $4640: $fe $01
    cp $01                                        ; $4642: $fe $01
    cp $01                                        ; $4644: $fe $01
    cp $01                                        ; $4646: $fe $01
    cp $01                                        ; $4648: $fe $01
    cp $01                                        ; $464a: $fe $01
    cp $01                                        ; $464c: $fe $01
    cp $01                                        ; $464e: $fe $01
    ld c, a                                       ; $4650: $4f
    dec sp                                        ; $4651: $3b
    rra                                           ; $4652: $1f
    ei                                            ; $4653: $fb
    or a                                          ; $4654: $b7
    ei                                            ; $4655: $fb
    rst $28                                       ; $4656: $ef
    di                                            ; $4657: $f3
    rra                                           ; $4658: $1f
    db $e3                                        ; $4659: $e3
    rst $38                                       ; $465a: $ff
    inc bc                                        ; $465b: $03
    rst $38                                       ; $465c: $ff
    inc bc                                        ; $465d: $03
    rst $38                                       ; $465e: $ff
    inc bc                                        ; $465f: $03
    ld sp, hl                                     ; $4660: $f9
    dec bc                                        ; $4661: $0b
    ld sp, hl                                     ; $4662: $f9
    dec de                                        ; $4663: $1b
    ld sp, hl                                     ; $4664: $f9
    or e                                          ; $4665: $b3
    pop af                                        ; $4666: $f1
    db $e3                                        ; $4667: $e3
    pop hl                                        ; $4668: $e1
    inc bc                                        ; $4669: $03
    ld bc, $0103                                  ; $466a: $01 $03 $01
    inc bc                                        ; $466d: $03
    ld bc, $0f03                                  ; $466e: $01 $03 $0f
    rst $38                                       ; $4671: $ff
    inc de                                        ; $4672: $13
    di                                            ; $4673: $f3
    inc hl                                        ; $4674: $23
    db $e3                                        ; $4675: $e3
    ld b, e                                       ; $4676: $43
    rst RST_00                                    ; $4677: $c7
    ld b, e                                       ; $4678: $43
    rst RST_08                                    ; $4679: $cf
    sub e                                         ; $467a: $93
    adc a                                         ; $467b: $8f
    add a                                         ; $467c: $87
    sbc e                                         ; $467d: $9b
    add a                                         ; $467e: $87
    sbc e                                         ; $467f: $9b
    ld bc, $0d0f                                  ; $4680: $01 $0f $0d
    inc de                                        ; $4683: $13
    dec e                                         ; $4684: $1d
    inc hl                                        ; $4685: $23
    dec a                                         ; $4686: $3d
    ld b, e                                       ; $4687: $43
    dec a                                         ; $4688: $3d
    ld b, e                                       ; $4689: $43
    ld a, l                                       ; $468a: $7d
    add e                                         ; $468b: $83
    ld a, l                                       ; $468c: $7d
    add e                                         ; $468d: $83
    ld a, l                                       ; $468e: $7d
    add e                                         ; $468f: $83
    add a                                         ; $4690: $87
    sbc e                                         ; $4691: $9b
    sub e                                         ; $4692: $93
    adc a                                         ; $4693: $8f
    ld b, e                                       ; $4694: $43
    rst RST_08                                    ; $4695: $cf
    ld b, e                                       ; $4696: $43
    rst RST_00                                    ; $4697: $c7
    inc hl                                        ; $4698: $23
    jp $e313                                      ; $4699: $c3 $13 $e3


    rrca                                          ; $469c: $0f
    di                                            ; $469d: $f3
    inc bc                                        ; $469e: $03
    rst $38                                       ; $469f: $ff
    ld a, l                                       ; $46a0: $7d
    add e                                         ; $46a1: $83
    ld a, l                                       ; $46a2: $7d
    add e                                         ; $46a3: $83
    dec a                                         ; $46a4: $3d
    ld b, e                                       ; $46a5: $43
    dec a                                         ; $46a6: $3d
    ld b, e                                       ; $46a7: $43
    dec a                                         ; $46a8: $3d
    inc bc                                        ; $46a9: $03
    dec e                                         ; $46aa: $1d
    inc bc                                        ; $46ab: $03
    dec c                                         ; $46ac: $0d
    inc bc                                        ; $46ad: $03
    ld bc, $fe03                                  ; $46ae: $01 $03 $fe
    cp $ff                                        ; $46b1: $fe $ff
    rst $38                                       ; $46b3: $ff
    rst $38                                       ; $46b4: $ff
    rst $38                                       ; $46b5: $ff
    rst $38                                       ; $46b6: $ff
    rst $38                                       ; $46b7: $ff
    rst $38                                       ; $46b8: $ff
    rst $38                                       ; $46b9: $ff
    rst $38                                       ; $46ba: $ff
    rst $38                                       ; $46bb: $ff
    rst $38                                       ; $46bc: $ff
    rst $38                                       ; $46bd: $ff
    rst $38                                       ; $46be: $ff
    rst $38                                       ; $46bf: $ff
    cp $01                                        ; $46c0: $fe $01
    rst $38                                       ; $46c2: $ff
    nop                                           ; $46c3: $00
    rst $38                                       ; $46c4: $ff
    nop                                           ; $46c5: $00
    rst $38                                       ; $46c6: $ff
    nop                                           ; $46c7: $00
    rst $38                                       ; $46c8: $ff
    nop                                           ; $46c9: $00
    rst $38                                       ; $46ca: $ff
    nop                                           ; $46cb: $00
    rst $38                                       ; $46cc: $ff
    nop                                           ; $46cd: $00
    rst $38                                       ; $46ce: $ff
    nop                                           ; $46cf: $00
    nop                                           ; $46d0: $00
    rst $38                                       ; $46d1: $ff
    rst $38                                       ; $46d2: $ff
    rst $38                                       ; $46d3: $ff
    rst $38                                       ; $46d4: $ff
    rst $38                                       ; $46d5: $ff
    rst $38                                       ; $46d6: $ff
    rst $38                                       ; $46d7: $ff
    rst $38                                       ; $46d8: $ff
    rst $38                                       ; $46d9: $ff
    rst $38                                       ; $46da: $ff
    rst $38                                       ; $46db: $ff
    rst $38                                       ; $46dc: $ff
    rst $38                                       ; $46dd: $ff
    rst $38                                       ; $46de: $ff
    rst $38                                       ; $46df: $ff
    rst $38                                       ; $46e0: $ff
    nop                                           ; $46e1: $00
    rst $38                                       ; $46e2: $ff
    nop                                           ; $46e3: $00
    rst $38                                       ; $46e4: $ff
    nop                                           ; $46e5: $00
    rst $38                                       ; $46e6: $ff
    nop                                           ; $46e7: $00
    rst $38                                       ; $46e8: $ff
    nop                                           ; $46e9: $00
    rst $38                                       ; $46ea: $ff
    nop                                           ; $46eb: $00
    rst $38                                       ; $46ec: $ff
    nop                                           ; $46ed: $00
    rst $38                                       ; $46ee: $ff
    nop                                           ; $46ef: $00
    nop                                           ; $46f0: $00
    rst $38                                       ; $46f1: $ff
    rst $38                                       ; $46f2: $ff
    rst $38                                       ; $46f3: $ff
    cp $ff                                        ; $46f4: $fe $ff
    ld hl, sp-$01                                 ; $46f6: $f8 $ff
    pop af                                        ; $46f8: $f1
    rst $38                                       ; $46f9: $ff
    pop af                                        ; $46fa: $f1
    rst $38                                       ; $46fb: $ff
    ld hl, sp-$01                                 ; $46fc: $f8 $ff
    cp $ff                                        ; $46fe: $fe $ff
    rst $38                                       ; $4700: $ff
    nop                                           ; $4701: $00
    rst $38                                       ; $4702: $ff
    nop                                           ; $4703: $00
    rst $38                                       ; $4704: $ff
    ld bc, $07ff                                  ; $4705: $01 $ff $07
    rst $38                                       ; $4708: $ff
    ld c, $ff                                     ; $4709: $0e $ff
    ld c, $ff                                     ; $470b: $0e $ff
    rlca                                          ; $470d: $07
    rst $38                                       ; $470e: $ff
    ld bc, rP1                                    ; $470f: $01 $00 $ff
    ret nz                                        ; $4712: $c0

    rst $38                                       ; $4713: $ff
    inc bc                                        ; $4714: $03
    rst $38                                       ; $4715: $ff
    ld a, a                                       ; $4716: $7f
    rst $38                                       ; $4717: $ff
    rst $38                                       ; $4718: $ff
    rst $38                                       ; $4719: $ff
    rst $38                                       ; $471a: $ff
    rst $38                                       ; $471b: $ff
    ld a, a                                       ; $471c: $7f
    rst $38                                       ; $471d: $ff
    rrca                                          ; $471e: $0f
    rst $38                                       ; $471f: $ff
    rst $38                                       ; $4720: $ff
    inc bc                                        ; $4721: $03
    rst $38                                       ; $4722: $ff
    ccf                                           ; $4723: $3f
    rst $38                                       ; $4724: $ff
    db $fc                                        ; $4725: $fc
    rst $38                                       ; $4726: $ff
    add b                                         ; $4727: $80
    rst $38                                       ; $4728: $ff
    nop                                           ; $4729: $00
    rst $38                                       ; $472a: $ff
    nop                                           ; $472b: $00
    rst $38                                       ; $472c: $ff
    add b                                         ; $472d: $80
    rst $38                                       ; $472e: $ff
    ldh a, [rP1]                                  ; $472f: $f0 $00
    rst $38                                       ; $4731: $ff
    inc bc                                        ; $4732: $03
    rst $38                                       ; $4733: $ff
    pop af                                        ; $4734: $f1
    rst $38                                       ; $4735: $ff
    ld sp, hl                                     ; $4736: $f9
    rst $38                                       ; $4737: $ff
    pop bc                                        ; $4738: $c1
    rst $38                                       ; $4739: $ff
    call nz, $f9ff                                ; $473a: $c4 $ff $f9
    rst $38                                       ; $473d: $ff
    di                                            ; $473e: $f3
    rst $38                                       ; $473f: $ff
    rst $38                                       ; $4740: $ff
    ldh a, [rIE]                                  ; $4741: $f0 $ff
    db $fc                                        ; $4743: $fc
    rst $38                                       ; $4744: $ff
    ld c, $ff                                     ; $4745: $0e $ff
    ld b, $ff                                     ; $4747: $06 $ff
    ld a, $ff                                     ; $4749: $3e $ff
    dec sp                                        ; $474b: $3b
    rst $38                                       ; $474c: $ff
    ld b, $ff                                     ; $474d: $06 $ff
    inc c                                         ; $474f: $0c
    nop                                           ; $4750: $00
    rst $38                                       ; $4751: $ff
    rst $38                                       ; $4752: $ff
    rst $38                                       ; $4753: $ff
    rst $38                                       ; $4754: $ff
    rst $38                                       ; $4755: $ff
    rst $38                                       ; $4756: $ff
    rst $38                                       ; $4757: $ff
    rst $38                                       ; $4758: $ff
    rst $38                                       ; $4759: $ff
    db $fd                                        ; $475a: $fd
    rst $38                                       ; $475b: $ff
    ld sp, hl                                     ; $475c: $f9
    rst $38                                       ; $475d: $ff
    db $e3                                        ; $475e: $e3
    rst $38                                       ; $475f: $ff
    rst $38                                       ; $4760: $ff
    nop                                           ; $4761: $00
    rst $38                                       ; $4762: $ff
    nop                                           ; $4763: $00
    rst $38                                       ; $4764: $ff
    nop                                           ; $4765: $00
    rst $38                                       ; $4766: $ff
    nop                                           ; $4767: $00
    rst $38                                       ; $4768: $ff
    nop                                           ; $4769: $00
    rst $38                                       ; $476a: $ff
    ld [bc], a                                    ; $476b: $02
    rst $38                                       ; $476c: $ff
    ld b, $ff                                     ; $476d: $06 $ff
    inc e                                         ; $476f: $1c
    nop                                           ; $4770: $00
    rst $38                                       ; $4771: $ff
    rst $38                                       ; $4772: $ff
    rst $38                                       ; $4773: $ff
    rst $38                                       ; $4774: $ff
    rst $38                                       ; $4775: $ff
    rst $38                                       ; $4776: $ff
    rst $38                                       ; $4777: $ff
    rst $38                                       ; $4778: $ff
    rst $38                                       ; $4779: $ff
    ld hl, sp-$01                                 ; $477a: $f8 $ff
    pop af                                        ; $477c: $f1
    rst $38                                       ; $477d: $ff
    jp rIE                                        ; $477e: $c3 $ff $ff


    nop                                           ; $4781: $00
    rst $38                                       ; $4782: $ff
    nop                                           ; $4783: $00
    rst $38                                       ; $4784: $ff
    nop                                           ; $4785: $00
    rst $38                                       ; $4786: $ff
    nop                                           ; $4787: $00
    rst $38                                       ; $4788: $ff
    nop                                           ; $4789: $00
    rst $38                                       ; $478a: $ff
    rlca                                          ; $478b: $07
    rst $38                                       ; $478c: $ff
    ld c, $ff                                     ; $478d: $0e $ff
    inc a                                         ; $478f: $3c
    rra                                           ; $4790: $1f
    rst $28                                       ; $4791: $ef
    ccf                                           ; $4792: $3f
    rst $10                                       ; $4793: $d7
    ld a, a                                       ; $4794: $7f
    cp a                                          ; $4795: $bf
    ld a, a                                       ; $4796: $7f
    rst RST_18                                    ; $4797: $df
    ld a, d                                       ; $4798: $7a
    db $fd                                        ; $4799: $fd
    ld a, l                                       ; $479a: $7d
    ld hl, sp+$7a                                 ; $479b: $f8 $7a
    db $fd                                        ; $479d: $fd
    ccf                                           ; $479e: $3f
    sbc a                                         ; $479f: $9f
    ld bc, $010f                                  ; $47a0: $01 $0f $01
    inc de                                        ; $47a3: $13
    nop                                           ; $47a4: $00
    ld hl, $4100                                  ; $47a5: $21 $00 $41
    rlca                                          ; $47a8: $07
    ld b, b                                       ; $47a9: $40
    rlca                                          ; $47aa: $07
    ld b, b                                       ; $47ab: $40
    rlca                                          ; $47ac: $07
    ld b, b                                       ; $47ad: $40
    ld b, b                                       ; $47ae: $40
    nop                                           ; $47af: $00
    rst $38                                       ; $47b0: $ff
    ld a, a                                       ; $47b1: $7f
    rst $38                                       ; $47b2: $ff
    ld a, a                                       ; $47b3: $7f
    rst $38                                       ; $47b4: $ff
    cp a                                          ; $47b5: $bf
    rst $38                                       ; $47b6: $ff
    cp a                                          ; $47b7: $bf
    rst $38                                       ; $47b8: $ff
    rst RST_18                                    ; $47b9: $df
    rst $38                                       ; $47ba: $ff
    rst $28                                       ; $47bb: $ef
    rst $38                                       ; $47bc: $ff
    di                                            ; $47bd: $f3
    db $fc                                        ; $47be: $fc
    rst RST_18                                    ; $47bf: $df
    rst $38                                       ; $47c0: $ff
    rst $38                                       ; $47c1: $ff
    rst $38                                       ; $47c2: $ff
    rst $38                                       ; $47c3: $ff
    rst $38                                       ; $47c4: $ff
    rst $38                                       ; $47c5: $ff
    rst $38                                       ; $47c6: $ff
    rst $38                                       ; $47c7: $ff
    ld a, a                                       ; $47c8: $7f
    rst $38                                       ; $47c9: $ff
    ccf                                           ; $47ca: $3f
    ld a, a                                       ; $47cb: $7f
    rra                                           ; $47cc: $1f
    ccf                                           ; $47cd: $3f
    rrca                                          ; $47ce: $0f
    rra                                           ; $47cf: $1f
    rst $38                                       ; $47d0: $ff
    rst $38                                       ; $47d1: $ff
    rst $38                                       ; $47d2: $ff
    rst $38                                       ; $47d3: $ff
    rst $38                                       ; $47d4: $ff
    rst $38                                       ; $47d5: $ff
    rst $38                                       ; $47d6: $ff
    rst $38                                       ; $47d7: $ff
    rst $38                                       ; $47d8: $ff
    rst $38                                       ; $47d9: $ff
    rst $20                                       ; $47da: $e7
    rst $38                                       ; $47db: $ff
    ldh [rIE], a                                  ; $47dc: $e0 $ff
    nop                                           ; $47de: $00
    rst $38                                       ; $47df: $ff
    rst $38                                       ; $47e0: $ff
    nop                                           ; $47e1: $00
    rst $38                                       ; $47e2: $ff
    nop                                           ; $47e3: $00
    rst $38                                       ; $47e4: $ff
    nop                                           ; $47e5: $00
    rst $38                                       ; $47e6: $ff
    nop                                           ; $47e7: $00
    rst $38                                       ; $47e8: $ff
    nop                                           ; $47e9: $00
    rst $38                                       ; $47ea: $ff
    jr @+$01                                      ; $47eb: $18 $ff

    rra                                           ; $47ed: $1f
    rst $38                                       ; $47ee: $ff
    rra                                           ; $47ef: $1f
    rst $38                                       ; $47f0: $ff
    rst $38                                       ; $47f1: $ff
    rst $38                                       ; $47f2: $ff
    rst $38                                       ; $47f3: $ff
    rst $38                                       ; $47f4: $ff
    rst $38                                       ; $47f5: $ff
    rst $38                                       ; $47f6: $ff
    rst $38                                       ; $47f7: $ff
    db $fc                                        ; $47f8: $fc
    rst $38                                       ; $47f9: $ff
    add b                                         ; $47fa: $80
    rst $38                                       ; $47fb: $ff
    inc bc                                        ; $47fc: $03
    rst $38                                       ; $47fd: $ff
    nop                                           ; $47fe: $00
    rst $38                                       ; $47ff: $ff
    rst $38                                       ; $4800: $ff
    nop                                           ; $4801: $00
    rst $38                                       ; $4802: $ff
    nop                                           ; $4803: $00
    rst $38                                       ; $4804: $ff
    nop                                           ; $4805: $00
    rst $38                                       ; $4806: $ff
    nop                                           ; $4807: $00
    rst $38                                       ; $4808: $ff
    inc bc                                        ; $4809: $03
    rst $38                                       ; $480a: $ff
    ld a, a                                       ; $480b: $7f
    rst $38                                       ; $480c: $ff
    db $fc                                        ; $480d: $fc
    rst $38                                       ; $480e: $ff
    add b                                         ; $480f: $80
    jp $f1ff                                      ; $4810: $c3 $ff $f1


    rst $38                                       ; $4813: $ff
    pop af                                        ; $4814: $f1
    rst $38                                       ; $4815: $ff
    jp $07ff                                      ; $4816: $c3 $ff $07


    rst $38                                       ; $4819: $ff
    ccf                                           ; $481a: $3f
    rst $38                                       ; $481b: $ff
    rst $38                                       ; $481c: $ff
    rst $38                                       ; $481d: $ff
    nop                                           ; $481e: $00
    rst $38                                       ; $481f: $ff
    rst $38                                       ; $4820: $ff
    inc a                                         ; $4821: $3c
    rst $38                                       ; $4822: $ff
    ld c, $ff                                     ; $4823: $0e $ff
    ld c, $ff                                     ; $4825: $0e $ff
    inc a                                         ; $4827: $3c
    rst $38                                       ; $4828: $ff
    ld hl, sp-$01                                 ; $4829: $f8 $ff
    ret nz                                        ; $482b: $c0

    rst $38                                       ; $482c: $ff
    nop                                           ; $482d: $00
    rst $38                                       ; $482e: $ff
    nop                                           ; $482f: $00
    rst $20                                       ; $4830: $e7
    rst $38                                       ; $4831: $ff
    rst RST_08                                    ; $4832: $cf
    rst $38                                       ; $4833: $ff
    sbc h                                         ; $4834: $9c
    rst $38                                       ; $4835: $ff
    sub b                                         ; $4836: $90
    rst $38                                       ; $4837: $ff
    add e                                         ; $4838: $83
    rst $38                                       ; $4839: $ff
    rst RST_08                                    ; $483a: $cf
    rst $38                                       ; $483b: $ff
    rst $38                                       ; $483c: $ff
    rst $38                                       ; $483d: $ff
    nop                                           ; $483e: $00
    rst $38                                       ; $483f: $ff
    rst $38                                       ; $4840: $ff
    jr @+$01                                      ; $4841: $18 $ff

    jr nc, @+$01                                  ; $4843: $30 $ff

    ld h, e                                       ; $4845: $63
    rst $38                                       ; $4846: $ff
    ld l, a                                       ; $4847: $6f
    rst $38                                       ; $4848: $ff
    ld a, h                                       ; $4849: $7c
    rst $38                                       ; $484a: $ff
    jr nc, @+$01                                  ; $484b: $30 $ff

    nop                                           ; $484d: $00
    rst $38                                       ; $484e: $ff
    nop                                           ; $484f: $00
    rst RST_00                                    ; $4850: $c7
    rst $38                                       ; $4851: $ff
    ld c, $ff                                     ; $4852: $0e $ff
    jr @+$01                                      ; $4854: $18 $ff

    add e                                         ; $4856: $83
    rst $38                                       ; $4857: $ff
    rst RST_08                                    ; $4858: $cf
    rst $38                                       ; $4859: $ff
    cp $ff                                        ; $485a: $fe $ff
    db $fc                                        ; $485c: $fc
    rst $38                                       ; $485d: $ff
    nop                                           ; $485e: $00
    rst $38                                       ; $485f: $ff
    rst $38                                       ; $4860: $ff
    jr c, @+$01                                   ; $4861: $38 $ff

    pop af                                        ; $4863: $f1
    rst $38                                       ; $4864: $ff
    rst $20                                       ; $4865: $e7
    rst $38                                       ; $4866: $ff
    ld a, h                                       ; $4867: $7c
    rst $38                                       ; $4868: $ff
    jr nc, @+$01                                  ; $4869: $30 $ff

    ld bc, $03ff                                  ; $486b: $01 $ff $03
    rst $38                                       ; $486e: $ff
    rlca                                          ; $486f: $07
    nop                                           ; $4870: $00
    rst $38                                       ; $4871: $ff
    ld h, b                                       ; $4872: $60
    rst $38                                       ; $4873: $ff
    jp $83ff                                      ; $4874: $c3 $ff $83


    rst $38                                       ; $4877: $ff
    db $10                                        ; $4878: $10
    rst $38                                       ; $4879: $ff
    ccf                                           ; $487a: $3f
    rst $38                                       ; $487b: $ff
    ld a, a                                       ; $487c: $7f
    rst $38                                       ; $487d: $ff
    nop                                           ; $487e: $00
    rst $38                                       ; $487f: $ff
    rst $38                                       ; $4880: $ff
    rst $38                                       ; $4881: $ff
    rst $38                                       ; $4882: $ff
    sbc a                                         ; $4883: $9f
    rst $38                                       ; $4884: $ff
    inc a                                         ; $4885: $3c
    rst $38                                       ; $4886: $ff
    ld a, h                                       ; $4887: $7c
    rst $38                                       ; $4888: $ff
    rst $28                                       ; $4889: $ef
    rst $38                                       ; $488a: $ff
    ret nz                                        ; $488b: $c0

    rst $38                                       ; $488c: $ff
    add b                                         ; $488d: $80
    rst $38                                       ; $488e: $ff
    nop                                           ; $488f: $00
    ld e, a                                       ; $4890: $5f
    sbc a                                         ; $4891: $9f
    cpl                                           ; $4892: $2f
    rst RST_00                                    ; $4893: $c7
    db $10                                        ; $4894: $10
    ldh [rP1], a                                  ; $4895: $e0 $00
    ld a, a                                       ; $4897: $7f
    nop                                           ; $4898: $00
    cp a                                          ; $4899: $bf
    nop                                           ; $489a: $00
    rst RST_08                                    ; $489b: $cf
    rlca                                          ; $489c: $07
    ldh a, [rP1]                                  ; $489d: $f0 $00
    rst $38                                       ; $489f: $ff
    jr nz, jr_00c_48a2                            ; $48a0: $20 $00

jr_00c_48a2:
    stop                                          ; $48a2: $10 $00
    rrca                                          ; $48a4: $0f
    nop                                           ; $48a5: $00
    add b                                         ; $48a6: $80
    nop                                           ; $48a7: $00
    ld b, b                                       ; $48a8: $40
    nop                                           ; $48a9: $00
    jr nc, jr_00c_48ac                            ; $48aa: $30 $00

jr_00c_48ac:
    rrca                                          ; $48ac: $0f
    rlca                                          ; $48ad: $07
    nop                                           ; $48ae: $00
    nop                                           ; $48af: $00
    rst RST_18                                    ; $48b0: $df
    rst RST_08                                    ; $48b1: $cf
    and e                                         ; $48b2: $a3
    rra                                           ; $48b3: $1f
    ld b, b                                       ; $48b4: $40
    ccf                                           ; $48b5: $3f
    nop                                           ; $48b6: $00
    rst $38                                       ; $48b7: $ff
    ld bc, $01fe                                  ; $48b8: $01 $fe $01
    cp $ff                                        ; $48bb: $fe $ff
    nop                                           ; $48bd: $00
    ld [bc], a                                    ; $48be: $02
    db $fd                                        ; $48bf: $fd
    inc hl                                        ; $48c0: $23
    rrca                                          ; $48c1: $0f
    ld b, b                                       ; $48c2: $40
    inc bc                                        ; $48c3: $03
    add b                                         ; $48c4: $80
    nop                                           ; $48c5: $00
    nop                                           ; $48c6: $00
    nop                                           ; $48c7: $00
    nop                                           ; $48c8: $00
    nop                                           ; $48c9: $00
    nop                                           ; $48ca: $00
    nop                                           ; $48cb: $00
    rst $38                                       ; $48cc: $ff
    rst $38                                       ; $48cd: $ff
    nop                                           ; $48ce: $00
    nop                                           ; $48cf: $00
    rst $38                                       ; $48d0: $ff
    rst $38                                       ; $48d1: $ff
    rst $38                                       ; $48d2: $ff
    rst $38                                       ; $48d3: $ff
    sub d                                         ; $48d4: $92
    ld l, l                                       ; $48d5: $6d
    sub d                                         ; $48d6: $92
    ld l, l                                       ; $48d7: $6d
    inc h                                         ; $48d8: $24
    db $db                                        ; $48d9: $db
    inc h                                         ; $48da: $24
    db $db                                        ; $48db: $db
    rst $38                                       ; $48dc: $ff
    nop                                           ; $48dd: $00
    ld c, c                                       ; $48de: $49
    or [hl]                                       ; $48df: $b6
    rst $38                                       ; $48e0: $ff
    rst $38                                       ; $48e1: $ff
    nop                                           ; $48e2: $00
    rst $38                                       ; $48e3: $ff
    nop                                           ; $48e4: $00
    nop                                           ; $48e5: $00
    nop                                           ; $48e6: $00
    nop                                           ; $48e7: $00
    nop                                           ; $48e8: $00
    nop                                           ; $48e9: $00
    nop                                           ; $48ea: $00
    nop                                           ; $48eb: $00
    rst $38                                       ; $48ec: $ff
    rst $38                                       ; $48ed: $ff
    nop                                           ; $48ee: $00
    nop                                           ; $48ef: $00
    rst $38                                       ; $48f0: $ff
    rst $38                                       ; $48f1: $ff
    rst $38                                       ; $48f2: $ff
    rst $38                                       ; $48f3: $ff
    ld c, c                                       ; $48f4: $49
    or [hl]                                       ; $48f5: $b6
    ld c, c                                       ; $48f6: $49
    or [hl]                                       ; $48f7: $b6
    sub d                                         ; $48f8: $92
    ld l, l                                       ; $48f9: $6d
    sub d                                         ; $48fa: $92
    ld l, l                                       ; $48fb: $6d
    rst $38                                       ; $48fc: $ff
    nop                                           ; $48fd: $00
    inc h                                         ; $48fe: $24
    db $db                                        ; $48ff: $db
    rst $38                                       ; $4900: $ff
    rst $38                                       ; $4901: $ff
    nop                                           ; $4902: $00
    rst $38                                       ; $4903: $ff
    nop                                           ; $4904: $00
    nop                                           ; $4905: $00
    nop                                           ; $4906: $00
    nop                                           ; $4907: $00
    nop                                           ; $4908: $00
    nop                                           ; $4909: $00
    nop                                           ; $490a: $00
    nop                                           ; $490b: $00
    rst $38                                       ; $490c: $ff
    rst $38                                       ; $490d: $ff
    nop                                           ; $490e: $00
    nop                                           ; $490f: $00
    rst $38                                       ; $4910: $ff
    rst $38                                       ; $4911: $ff
    rst $38                                       ; $4912: $ff
    rst $38                                       ; $4913: $ff
    ld h, $da                                     ; $4914: $26 $da
    ld h, $da                                     ; $4916: $26 $da
    ld c, e                                       ; $4918: $4b
    or a                                          ; $4919: $b7
    ld c, c                                       ; $491a: $49
    or [hl]                                       ; $491b: $b6
    ld a, [$9001]                                 ; $491c: $fa $01 $90
    ld l, h                                       ; $491f: $6c
    rst $38                                       ; $4920: $ff
    rst $38                                       ; $4921: $ff
    nop                                           ; $4922: $00
    rst $38                                       ; $4923: $ff
    ld bc, $0102                                  ; $4924: $01 $02 $01
    ld [bc], a                                    ; $4927: $02
    nop                                           ; $4928: $00
    inc bc                                        ; $4929: $03
    nop                                           ; $492a: $00
    nop                                           ; $492b: $00
    db $fc                                        ; $492c: $fc
    ld hl, sp+$03                                 ; $492d: $f8 $03
    nop                                           ; $492f: $00
    rst $38                                       ; $4930: $ff
    rst $38                                       ; $4931: $ff
    rst $38                                       ; $4932: $ff
    rst $38                                       ; $4933: $ff
    nop                                           ; $4934: $00
    rst $38                                       ; $4935: $ff
    nop                                           ; $4936: $00
    ld bc, $feff                                  ; $4937: $01 $ff $fe
    ld h, $d9                                     ; $493a: $26 $d9
    ld c, [hl]                                    ; $493c: $4e
    or c                                          ; $493d: $b1
    nop                                           ; $493e: $00
    nop                                           ; $493f: $00
    rst $38                                       ; $4940: $ff
    rst $38                                       ; $4941: $ff
    nop                                           ; $4942: $00
    rst $38                                       ; $4943: $ff
    rst $38                                       ; $4944: $ff
    nop                                           ; $4945: $00
    rst $38                                       ; $4946: $ff
    nop                                           ; $4947: $00
    ld bc, $00ff                                  ; $4948: $01 $ff $00
    nop                                           ; $494b: $00
    nop                                           ; $494c: $00
    nop                                           ; $494d: $00
    rst $38                                       ; $494e: $ff
    nop                                           ; $494f: $00
    rst $38                                       ; $4950: $ff
    rst $38                                       ; $4951: $ff
    rst $38                                       ; $4952: $ff
    rst $38                                       ; $4953: $ff
    rrca                                          ; $4954: $0f
    rst $38                                       ; $4955: $ff
    rrca                                          ; $4956: $0f
    rst $38                                       ; $4957: $ff
    rrca                                          ; $4958: $0f
    ccf                                           ; $4959: $3f
    rrca                                          ; $495a: $0f
    cp a                                          ; $495b: $bf
    ccf                                           ; $495c: $3f
    add b                                         ; $495d: $80
    rrca                                          ; $495e: $0f
    ccf                                           ; $495f: $3f
    rst $38                                       ; $4960: $ff
    rst $38                                       ; $4961: $ff
    nop                                           ; $4962: $00
    rst $38                                       ; $4963: $ff
    rst RST_08                                    ; $4964: $cf
    nop                                           ; $4965: $00
    rst RST_08                                    ; $4966: $cf
    nop                                           ; $4967: $00
    rst RST_08                                    ; $4968: $cf
    nop                                           ; $4969: $00
    ld c, a                                       ; $496a: $4f
    nop                                           ; $496b: $00
    ld a, a                                       ; $496c: $7f
    ccf                                           ; $496d: $3f
    rst RST_08                                    ; $496e: $cf
    nop                                           ; $496f: $00
    rst $38                                       ; $4970: $ff
    rst $38                                       ; $4971: $ff
    rst $38                                       ; $4972: $ff
    rst $38                                       ; $4973: $ff
    rst $38                                       ; $4974: $ff
    rst $38                                       ; $4975: $ff
    rst $38                                       ; $4976: $ff
    rst $38                                       ; $4977: $ff
    rst $38                                       ; $4978: $ff
    rst $38                                       ; $4979: $ff
    rst $38                                       ; $497a: $ff
    rst $38                                       ; $497b: $ff
    rst $38                                       ; $497c: $ff
    nop                                           ; $497d: $00
    rst $38                                       ; $497e: $ff
    rst $38                                       ; $497f: $ff
    rst $38                                       ; $4980: $ff
    rst $38                                       ; $4981: $ff
    nop                                           ; $4982: $00
    rst $38                                       ; $4983: $ff
    rst $38                                       ; $4984: $ff
    nop                                           ; $4985: $00
    rst $38                                       ; $4986: $ff
    nop                                           ; $4987: $00
    rst $38                                       ; $4988: $ff
    nop                                           ; $4989: $00
    rst $38                                       ; $498a: $ff
    nop                                           ; $498b: $00
    rst $38                                       ; $498c: $ff
    rst $38                                       ; $498d: $ff
    rst $38                                       ; $498e: $ff
    nop                                           ; $498f: $00
    rst $38                                       ; $4990: $ff
    rst $38                                       ; $4991: $ff
    rst $38                                       ; $4992: $ff
    rst $38                                       ; $4993: $ff
    nop                                           ; $4994: $00
    nop                                           ; $4995: $00
    nop                                           ; $4996: $00
    nop                                           ; $4997: $00
    nop                                           ; $4998: $00
    nop                                           ; $4999: $00
    ld bc, rP1                                    ; $499a: $01 $00 $ff
    ld bc, $0703                                  ; $499d: $01 $03 $07
    rst $38                                       ; $49a0: $ff
    rst $38                                       ; $49a1: $ff
    nop                                           ; $49a2: $00
    rst $38                                       ; $49a3: $ff
    rst $38                                       ; $49a4: $ff
    nop                                           ; $49a5: $00
    rst $38                                       ; $49a6: $ff
    nop                                           ; $49a7: $00
    rst $38                                       ; $49a8: $ff
    nop                                           ; $49a9: $00
    rst $38                                       ; $49aa: $ff
    nop                                           ; $49ab: $00
    rst $38                                       ; $49ac: $ff
    db $fc                                        ; $49ad: $fc
    rst $38                                       ; $49ae: $ff
    nop                                           ; $49af: $00
    rst $38                                       ; $49b0: $ff
    rst $38                                       ; $49b1: $ff
    rst $38                                       ; $49b2: $ff
    rst $38                                       ; $49b3: $ff
    nop                                           ; $49b4: $00
    nop                                           ; $49b5: $00
    nop                                           ; $49b6: $00
    nop                                           ; $49b7: $00
    ld b, h                                       ; $49b8: $44
    ccf                                           ; $49b9: $3f
    ld a, a                                       ; $49ba: $7f
    rst $38                                       ; $49bb: $ff
    adc $f1                                       ; $49bc: $ce $f1
    ld b, b                                       ; $49be: $40
    add b                                         ; $49bf: $80
    rst $38                                       ; $49c0: $ff
    rst $38                                       ; $49c1: $ff
    nop                                           ; $49c2: $00
    rst $38                                       ; $49c3: $ff
    rst $38                                       ; $49c4: $ff
    nop                                           ; $49c5: $00
    rst $38                                       ; $49c6: $ff
    nop                                           ; $49c7: $00
    rst $38                                       ; $49c8: $ff
    nop                                           ; $49c9: $00
    rst $38                                       ; $49ca: $ff
    nop                                           ; $49cb: $00
    rst $38                                       ; $49cc: $ff
    nop                                           ; $49cd: $00
    rst $38                                       ; $49ce: $ff
    nop                                           ; $49cf: $00
    rst $38                                       ; $49d0: $ff
    rst $38                                       ; $49d1: $ff
    rst $38                                       ; $49d2: $ff
    rst $38                                       ; $49d3: $ff
    nop                                           ; $49d4: $00
    nop                                           ; $49d5: $00
    nop                                           ; $49d6: $00
    nop                                           ; $49d7: $00
    ld [bc], a                                    ; $49d8: $02
    ld bc, $0307                                  ; $49d9: $01 $07 $03
    ei                                            ; $49dc: $fb
    rlca                                          ; $49dd: $07
    rrca                                          ; $49de: $0f
    rlca                                          ; $49df: $07
    rst $38                                       ; $49e0: $ff
    rst $38                                       ; $49e1: $ff
    nop                                           ; $49e2: $00
    rst $38                                       ; $49e3: $ff
    rst $38                                       ; $49e4: $ff
    nop                                           ; $49e5: $00
    rst $38                                       ; $49e6: $ff
    nop                                           ; $49e7: $00
    rst $38                                       ; $49e8: $ff
    nop                                           ; $49e9: $00
    rst $38                                       ; $49ea: $ff
    nop                                           ; $49eb: $00
    rst $38                                       ; $49ec: $ff
    ld hl, sp-$01                                 ; $49ed: $f8 $ff
    nop                                           ; $49ef: $00
    rst $38                                       ; $49f0: $ff
    rst $38                                       ; $49f1: $ff
    rst $38                                       ; $49f2: $ff
    rst $38                                       ; $49f3: $ff
    nop                                           ; $49f4: $00
    nop                                           ; $49f5: $00
    nop                                           ; $49f6: $00
    nop                                           ; $49f7: $00
    add b                                         ; $49f8: $80
    nop                                           ; $49f9: $00
    add b                                         ; $49fa: $80
    nop                                           ; $49fb: $00
    ld a, a                                       ; $49fc: $7f
    add b                                         ; $49fd: $80
    ld bc, $ff80                                  ; $49fe: $01 $80 $ff
    rst $38                                       ; $4a01: $ff
    nop                                           ; $4a02: $00
    rst $38                                       ; $4a03: $ff
    rst $38                                       ; $4a04: $ff
    nop                                           ; $4a05: $00
    rst $38                                       ; $4a06: $ff
    nop                                           ; $4a07: $00
    rst $38                                       ; $4a08: $ff
    nop                                           ; $4a09: $00
    rst $38                                       ; $4a0a: $ff
    nop                                           ; $4a0b: $00
    rst $38                                       ; $4a0c: $ff
    ld a, a                                       ; $4a0d: $7f
    rst $38                                       ; $4a0e: $ff
    nop                                           ; $4a0f: $00
    rst $38                                       ; $4a10: $ff
    rst $38                                       ; $4a11: $ff
    rst $38                                       ; $4a12: $ff
    rst $38                                       ; $4a13: $ff
    nop                                           ; $4a14: $00
    nop                                           ; $4a15: $00
    nop                                           ; $4a16: $00
    nop                                           ; $4a17: $00
    jr nz, jr_00c_4a5a                            ; $4a18: $20 $40

    ldh a, [$ff60]                                ; $4a1a: $f0 $60
    ld a, a                                       ; $4a1c: $7f
    ldh [$ffe0], a                                ; $4a1d: $e0 $e0
    ldh a, [rIE]                                  ; $4a1f: $f0 $ff
    rst $38                                       ; $4a21: $ff
    nop                                           ; $4a22: $00
    rst $38                                       ; $4a23: $ff
    rst $38                                       ; $4a24: $ff
    nop                                           ; $4a25: $00
    rst $38                                       ; $4a26: $ff
    nop                                           ; $4a27: $00
    rst $38                                       ; $4a28: $ff
    nop                                           ; $4a29: $00
    rst $38                                       ; $4a2a: $ff
    nop                                           ; $4a2b: $00
    rst $38                                       ; $4a2c: $ff
    rrca                                          ; $4a2d: $0f
    rst $38                                       ; $4a2e: $ff
    nop                                           ; $4a2f: $00
    rst $38                                       ; $4a30: $ff
    rst $38                                       ; $4a31: $ff
    rst $38                                       ; $4a32: $ff
    rst $38                                       ; $4a33: $ff
    nop                                           ; $4a34: $00
    nop                                           ; $4a35: $00
    nop                                           ; $4a36: $00
    nop                                           ; $4a37: $00
    ld [hl], b                                    ; $4a38: $70
    nop                                           ; $4a39: $00
    ld hl, $ef70                                  ; $4a3a: $21 $70 $ef
    ld [hl], b                                    ; $4a3d: $70
    ld [hl], b                                    ; $4a3e: $70
    pop af                                        ; $4a3f: $f1
    rst $38                                       ; $4a40: $ff
    rst $38                                       ; $4a41: $ff
    nop                                           ; $4a42: $00
    rst $38                                       ; $4a43: $ff
    rst $38                                       ; $4a44: $ff
    nop                                           ; $4a45: $00
    rst $38                                       ; $4a46: $ff
    nop                                           ; $4a47: $00
    rst $38                                       ; $4a48: $ff
    nop                                           ; $4a49: $00
    rst $38                                       ; $4a4a: $ff
    nop                                           ; $4a4b: $00
    rst $38                                       ; $4a4c: $ff
    adc [hl]                                      ; $4a4d: $8e
    rst $38                                       ; $4a4e: $ff
    nop                                           ; $4a4f: $00
    nop                                           ; $4a50: $00
    rst $38                                       ; $4a51: $ff
    nop                                           ; $4a52: $00
    rst $38                                       ; $4a53: $ff
    nop                                           ; $4a54: $00
    rst $38                                       ; $4a55: $ff
    nop                                           ; $4a56: $00
    rst $38                                       ; $4a57: $ff
    nop                                           ; $4a58: $00
    rst $38                                       ; $4a59: $ff

jr_00c_4a5a:
    nop                                           ; $4a5a: $00
    rst $38                                       ; $4a5b: $ff
    nop                                           ; $4a5c: $00
    rst $38                                       ; $4a5d: $ff
    nop                                           ; $4a5e: $00
    rst $38                                       ; $4a5f: $ff
    nop                                           ; $4a60: $00
    nop                                           ; $4a61: $00
    nop                                           ; $4a62: $00
    nop                                           ; $4a63: $00
    nop                                           ; $4a64: $00
    nop                                           ; $4a65: $00
    nop                                           ; $4a66: $00
    nop                                           ; $4a67: $00
    nop                                           ; $4a68: $00
    nop                                           ; $4a69: $00
    nop                                           ; $4a6a: $00
    nop                                           ; $4a6b: $00
    nop                                           ; $4a6c: $00
    nop                                           ; $4a6d: $00
    nop                                           ; $4a6e: $00
    nop                                           ; $4a6f: $00
    inc b                                         ; $4a70: $04
    ei                                            ; $4a71: $fb
    inc b                                         ; $4a72: $04
    ei                                            ; $4a73: $fb
    add hl, bc                                    ; $4a74: $09
    or $09                                        ; $4a75: $f6 $09
    or $12                                        ; $4a77: $f6 $12
    db $ed                                        ; $4a79: $ed
    ld [de], a                                    ; $4a7a: $12
    db $ed                                        ; $4a7b: $ed
    inc h                                         ; $4a7c: $24
    db $db                                        ; $4a7d: $db
    inc h                                         ; $4a7e: $24
    db $db                                        ; $4a7f: $db
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
    sub d                                         ; $4a90: $92
    ld l, l                                       ; $4a91: $6d
    sub d                                         ; $4a92: $92
    ld l, l                                       ; $4a93: $6d
    inc b                                         ; $4a94: $04
    ld a, [de]                                    ; $4a95: $1a
    inc b                                         ; $4a96: $04
    ld a, [bc]                                    ; $4a97: $0a
    nop                                           ; $4a98: $00
    ld b, $00                                     ; $4a99: $06 $00
    ld b, $12                                     ; $4a9b: $06 $12
    nop                                           ; $4a9d: $00
    db $10                                        ; $4a9e: $10
    ld [$0000], sp                                ; $4a9f: $08 $00 $00
    nop                                           ; $4aa2: $00
    nop                                           ; $4aa3: $00
    nop                                           ; $4aa4: $00
    pop hl                                        ; $4aa5: $e1
    nop                                           ; $4aa6: $00
    pop af                                        ; $4aa7: $f1
    nop                                           ; $4aa8: $00
    ld sp, hl                                     ; $4aa9: $f9
    nop                                           ; $4aaa: $00
    ld sp, hl                                     ; $4aab: $f9
    nop                                           ; $4aac: $00
    db $ed                                        ; $4aad: $ed
    nop                                           ; $4aae: $00
    rst $20                                       ; $4aaf: $e7
    ld c, c                                       ; $4ab0: $49
    or [hl]                                       ; $4ab1: $b6
    ld c, c                                       ; $4ab2: $49
    or [hl]                                       ; $4ab3: $b6
    ld [bc], a                                    ; $4ab4: $02
    ld hl, $2102                                  ; $4ab5: $21 $02 $21
    inc h                                         ; $4ab8: $24
    dec de                                        ; $4ab9: $1b
    jr nz, jr_00c_4abe                            ; $4aba: $20 $02

    nop                                           ; $4abc: $00
    ld [hl+], a                                   ; $4abd: $22

jr_00c_4abe:
    nop                                           ; $4abe: $00
    ld [hl+], a                                   ; $4abf: $22
    nop                                           ; $4ac0: $00
    nop                                           ; $4ac1: $00
    nop                                           ; $4ac2: $00
    nop                                           ; $4ac3: $00
    nop                                           ; $4ac4: $00
    call c, $dc00                                 ; $4ac5: $dc $00 $dc
    nop                                           ; $4ac8: $00
    ret nz                                        ; $4ac9: $c0

    nop                                           ; $4aca: $00
    db $dd                                        ; $4acb: $dd
    nop                                           ; $4acc: $00
    db $dd                                        ; $4acd: $dd
    nop                                           ; $4ace: $00
    db $dd                                        ; $4acf: $dd
    inc h                                         ; $4ad0: $24
    db $db                                        ; $4ad1: $db
    inc h                                         ; $4ad2: $24
    db $db                                        ; $4ad3: $db
    ld c, c                                       ; $4ad4: $49
    or [hl]                                       ; $4ad5: $b6
    ld c, c                                       ; $4ad6: $49
    or [hl]                                       ; $4ad7: $b6
    sub d                                         ; $4ad8: $92
    ld l, h                                       ; $4ad9: $6c
    nop                                           ; $4ada: $00
    inc hl                                        ; $4adb: $23
    nop                                           ; $4adc: $00
    ld bc, $1120                                  ; $4add: $01 $20 $11
    nop                                           ; $4ae0: $00
    nop                                           ; $4ae1: $00
    nop                                           ; $4ae2: $00
    nop                                           ; $4ae3: $00
    nop                                           ; $4ae4: $00
    nop                                           ; $4ae5: $00
    nop                                           ; $4ae6: $00
    nop                                           ; $4ae7: $00
    nop                                           ; $4ae8: $00
    ld bc, $dc02                                  ; $4ae9: $01 $02 $dc
    nop                                           ; $4aec: $00
    cp $00                                        ; $4aed: $fe $00
    adc $9e                                       ; $4aef: $ce $9e
    ld h, c                                       ; $4af1: $61
    sbc [hl]                                      ; $4af2: $9e

jr_00c_4af3:
    ld h, c                                       ; $4af3: $61
    ld a, $c1                                     ; $4af4: $3e $c1
    ld e, $01                                     ; $4af6: $1e $01
    ld c, $01                                     ; $4af8: $0e $01
    jr jr_00c_4b00                                ; $4afa: $18 $04

    db $10                                        ; $4afc: $10
    add hl, bc                                    ; $4afd: $09
    stop                                          ; $4afe: $10 $00

jr_00c_4b00:
    nop                                           ; $4b00: $00
    nop                                           ; $4b01: $00
    nop                                           ; $4b02: $00
    nop                                           ; $4b03: $00
    nop                                           ; $4b04: $00
    nop                                           ; $4b05: $00
    nop                                           ; $4b06: $00
    ldh [rP1], a                                  ; $4b07: $e0 $00
    ldh a, [rP1]                                  ; $4b09: $f0 $00
    db $e3                                        ; $4b0b: $e3
    nop                                           ; $4b0c: $00
    and $00                                       ; $4b0d: $e6 $00
    rst $28                                       ; $4b0f: $ef
    ld l, a                                       ; $4b10: $6f
    rst RST_18                                    ; $4b11: $df
    rst $38                                       ; $4b12: $ff
    rst RST_18                                    ; $4b13: $df
    ld e, a                                       ; $4b14: $5f
    ccf                                           ; $4b15: $3f
    ld l, a                                       ; $4b16: $6f
    rst $38                                       ; $4b17: $ff
    rrca                                          ; $4b18: $0f
    rst $38                                       ; $4b19: $ff
    ld [$0838], sp                                ; $4b1a: $08 $38 $08
    sbc b                                         ; $4b1d: $98
    ld [$bf08], sp                                ; $4b1e: $08 $08 $bf
    ld b, b                                       ; $4b21: $40
    ccf                                           ; $4b22: $3f
    ret nc                                        ; $4b23: $d0

    rst $38                                       ; $4b24: $ff
    db $10                                        ; $4b25: $10
    rst $38                                       ; $4b26: $ff
    ld h, b                                       ; $4b27: $60
    rrca                                          ; $4b28: $0f
    nop                                           ; $4b29: $00
    jr z, jr_00c_4af3                             ; $4b2a: $28 $c7

    jr jr_00c_4b95                                ; $4b2c: $18 $67

    ld [$fff7], sp                                ; $4b2e: $08 $f7 $ff
    rst $38                                       ; $4b31: $ff
    rst $38                                       ; $4b32: $ff
    rst $38                                       ; $4b33: $ff
    rst $38                                       ; $4b34: $ff
    rst $38                                       ; $4b35: $ff
    rst $38                                       ; $4b36: $ff
    rst $38                                       ; $4b37: $ff
    rst $38                                       ; $4b38: $ff
    rst $38                                       ; $4b39: $ff
    adc a                                         ; $4b3a: $8f
    adc [hl]                                      ; $4b3b: $8e
    ld b, $04                                     ; $4b3c: $06 $04
    call nz, $ffc4                                ; $4b3e: $c4 $c4 $ff
    nop                                           ; $4b41: $00
    rst $38                                       ; $4b42: $ff
    nop                                           ; $4b43: $00
    rst $38                                       ; $4b44: $ff
    nop                                           ; $4b45: $00
    rst $38                                       ; $4b46: $ff
    nop                                           ; $4b47: $00
    rst $38                                       ; $4b48: $ff
    nop                                           ; $4b49: $00
    adc [hl]                                      ; $4b4a: $8e
    ld [hl], c                                    ; $4b4b: $71
    inc b                                         ; $4b4c: $04
    ei                                            ; $4b4d: $fb
    call nz, $ff3b                                ; $4b4e: $c4 $3b $ff
    rst $38                                       ; $4b51: $ff
    rst $38                                       ; $4b52: $ff
    rst $38                                       ; $4b53: $ff
    db $e3                                        ; $4b54: $e3
    db $e3                                        ; $4b55: $e3
    db $e3                                        ; $4b56: $e3
    db $e3                                        ; $4b57: $e3
    db $e3                                        ; $4b58: $e3
    db $e3                                        ; $4b59: $e3
    inc bc                                        ; $4b5a: $03
    inc bc                                        ; $4b5b: $03
    ld h, e                                       ; $4b5c: $63
    ld h, d                                       ; $4b5d: $62
    ld h, d                                       ; $4b5e: $62
    ld h, d                                       ; $4b5f: $62
    rst $38                                       ; $4b60: $ff
    nop                                           ; $4b61: $00
    rst $38                                       ; $4b62: $ff
    nop                                           ; $4b63: $00
    db $e3                                        ; $4b64: $e3
    inc e                                         ; $4b65: $1c
    db $e3                                        ; $4b66: $e3
    inc e                                         ; $4b67: $1c
    db $e3                                        ; $4b68: $e3
    inc e                                         ; $4b69: $1c
    inc bc                                        ; $4b6a: $03
    db $fc                                        ; $4b6b: $fc
    ld h, d                                       ; $4b6c: $62
    sbc l                                         ; $4b6d: $9d
    ld h, d                                       ; $4b6e: $62
    sbc l                                         ; $4b6f: $9d
    rst $38                                       ; $4b70: $ff
    rst $38                                       ; $4b71: $ff
    rst $38                                       ; $4b72: $ff
    rst $38                                       ; $4b73: $ff
    rst $38                                       ; $4b74: $ff
    rst $38                                       ; $4b75: $ff
    rst $38                                       ; $4b76: $ff
    rst $38                                       ; $4b77: $ff
    rst $38                                       ; $4b78: $ff
    rst $38                                       ; $4b79: $ff
    add a                                         ; $4b7a: $87
    inc bc                                        ; $4b7b: $03
    inc sp                                        ; $4b7c: $33
    ld sp, $3131                                  ; $4b7d: $31 $31 $31
    rst $38                                       ; $4b80: $ff
    nop                                           ; $4b81: $00
    rst $38                                       ; $4b82: $ff
    nop                                           ; $4b83: $00
    rst $38                                       ; $4b84: $ff
    nop                                           ; $4b85: $00
    rst $38                                       ; $4b86: $ff
    nop                                           ; $4b87: $00
    rst $38                                       ; $4b88: $ff
    nop                                           ; $4b89: $00
    inc bc                                        ; $4b8a: $03
    db $fc                                        ; $4b8b: $fc
    ld sp, $31ce                                  ; $4b8c: $31 $ce $31
    adc $0e                                       ; $4b8f: $ce $0e
    rlca                                          ; $4b91: $07
    inc c                                         ; $4b92: $0c
    ld c, $1e                                     ; $4b93: $0e $1e

jr_00c_4b95:
    inc c                                         ; $4b95: $0c
    jr jr_00c_4ba4                                ; $4b96: $18 $0c

    inc c                                         ; $4b98: $0c
    jr jr_00c_4ba3                                ; $4b99: $18 $08

    inc e                                         ; $4b9b: $1c
    ld [$1c1c], sp                                ; $4b9c: $08 $1c $1c
    inc c                                         ; $4b9f: $0c
    rst $38                                       ; $4ba0: $ff
    nop                                           ; $4ba1: $00
    rst $38                                       ; $4ba2: $ff

jr_00c_4ba3:
    nop                                           ; $4ba3: $00

jr_00c_4ba4:
    rst $38                                       ; $4ba4: $ff
    nop                                           ; $4ba5: $00
    rst $38                                       ; $4ba6: $ff
    nop                                           ; $4ba7: $00
    rst $38                                       ; $4ba8: $ff
    nop                                           ; $4ba9: $00
    rst $38                                       ; $4baa: $ff
    nop                                           ; $4bab: $00
    rst $38                                       ; $4bac: $ff
    nop                                           ; $4bad: $00
    rst $38                                       ; $4bae: $ff
    nop                                           ; $4baf: $00
    nop                                           ; $4bb0: $00
    nop                                           ; $4bb1: $00
    nop                                           ; $4bb2: $00
    nop                                           ; $4bb3: $00
    nop                                           ; $4bb4: $00
    nop                                           ; $4bb5: $00
    nop                                           ; $4bb6: $00
    nop                                           ; $4bb7: $00
    nop                                           ; $4bb8: $00
    nop                                           ; $4bb9: $00
    ld e, $3e                                     ; $4bba: $1e $3e
    inc e                                         ; $4bbc: $1c
    ld a, $04                                     ; $4bbd: $3e $04
    ld c, $ff                                     ; $4bbf: $0e $ff
    nop                                           ; $4bc1: $00
    rst $38                                       ; $4bc2: $ff
    nop                                           ; $4bc3: $00
    rst $38                                       ; $4bc4: $ff
    nop                                           ; $4bc5: $00
    rst $38                                       ; $4bc6: $ff
    nop                                           ; $4bc7: $00
    rst $38                                       ; $4bc8: $ff
    nop                                           ; $4bc9: $00
    rst $38                                       ; $4bca: $ff
    nop                                           ; $4bcb: $00
    rst $38                                       ; $4bcc: $ff
    nop                                           ; $4bcd: $00
    rst $38                                       ; $4bce: $ff
    nop                                           ; $4bcf: $00
    rrca                                          ; $4bd0: $0f
    rlca                                          ; $4bd1: $07
    dec c                                         ; $4bd2: $0d
    rrca                                          ; $4bd3: $0f
    ld e, $0d                                     ; $4bd4: $1e $0d
    add hl, de                                    ; $4bd6: $19
    dec e                                         ; $4bd7: $1d
    jr c, jr_00c_4bf3                             ; $4bd8: $38 $19

    jr jr_00c_4c1b                                ; $4bda: $18 $3f

    ld a, a                                       ; $4bdc: $7f
    ccf                                           ; $4bdd: $3f
    jr nc, jr_00c_4c5f                            ; $4bde: $30 $7f

    rst $38                                       ; $4be0: $ff
    nop                                           ; $4be1: $00
    rst $38                                       ; $4be2: $ff
    nop                                           ; $4be3: $00
    rst $38                                       ; $4be4: $ff
    nop                                           ; $4be5: $00
    rst $38                                       ; $4be6: $ff
    nop                                           ; $4be7: $00
    rst $38                                       ; $4be8: $ff
    nop                                           ; $4be9: $00
    rst $38                                       ; $4bea: $ff
    nop                                           ; $4beb: $00
    rst $38                                       ; $4bec: $ff
    nop                                           ; $4bed: $00
    rst $38                                       ; $4bee: $ff
    nop                                           ; $4bef: $00
    add c                                         ; $4bf0: $81
    add b                                         ; $4bf1: $80
    ret nz                                        ; $4bf2: $c0

jr_00c_4bf3:
    add c                                         ; $4bf3: $81
    pop bc                                        ; $4bf4: $c1
    add c                                         ; $4bf5: $81
    jp $8181                                      ; $4bf6: $c3 $81 $81


    jp $c387                                      ; $4bf9: $c3 $87 $c3


    add $c3                                       ; $4bfc: $c6 $c3
    jp nz, $ffc7                                  ; $4bfe: $c2 $c7 $ff

    nop                                           ; $4c01: $00
    rst $38                                       ; $4c02: $ff
    nop                                           ; $4c03: $00
    rst $38                                       ; $4c04: $ff
    nop                                           ; $4c05: $00
    rst $38                                       ; $4c06: $ff
    nop                                           ; $4c07: $00
    rst $38                                       ; $4c08: $ff
    nop                                           ; $4c09: $00
    rst $38                                       ; $4c0a: $ff
    nop                                           ; $4c0b: $00
    rst $38                                       ; $4c0c: $ff
    nop                                           ; $4c0d: $00
    rst $38                                       ; $4c0e: $ff
    nop                                           ; $4c0f: $00
    ldh [$fff0], a                                ; $4c10: $e0 $f0
    add sp, -$0f                                  ; $4c12: $e8 $f1
    ei                                            ; $4c14: $fb
    or c                                          ; $4c15: $b1
    cp e                                          ; $4c16: $bb
    or e                                          ; $4c17: $b3
    rla                                           ; $4c18: $17
    cp e                                          ; $4c19: $bb
    cp [hl]                                       ; $4c1a: $be

jr_00c_4c1b:
    rra                                           ; $4c1b: $1f
    ccf                                           ; $4c1c: $3f
    ld e, $1c                                     ; $4c1d: $1e $1c
    ld e, $ff                                     ; $4c1f: $1e $ff
    nop                                           ; $4c21: $00
    rst $38                                       ; $4c22: $ff
    nop                                           ; $4c23: $00
    rst $38                                       ; $4c24: $ff
    nop                                           ; $4c25: $00
    rst $38                                       ; $4c26: $ff
    nop                                           ; $4c27: $00
    rst $38                                       ; $4c28: $ff
    nop                                           ; $4c29: $00
    rst $38                                       ; $4c2a: $ff
    nop                                           ; $4c2b: $00
    rst $38                                       ; $4c2c: $ff
    nop                                           ; $4c2d: $00
    rst $38                                       ; $4c2e: $ff
    nop                                           ; $4c2f: $00
    ldh [$fff1], a                                ; $4c30: $e0 $f1
    pop af                                        ; $4c32: $f1
    pop af                                        ; $4c33: $f1
    and c                                         ; $4c34: $a1
    pop af                                        ; $4c35: $f1
    ld [hl], c                                    ; $4c36: $71
    or c                                          ; $4c37: $b1
    di                                            ; $4c38: $f3
    ld sp, $3331                                  ; $4c39: $31 $31 $33
    ld [hl], c                                    ; $4c3c: $71
    inc sp                                        ; $4c3d: $33
    ld sp, $ff33                                  ; $4c3e: $31 $33 $ff
    nop                                           ; $4c41: $00
    rst $38                                       ; $4c42: $ff
    nop                                           ; $4c43: $00
    rst $38                                       ; $4c44: $ff
    nop                                           ; $4c45: $00
    rst $38                                       ; $4c46: $ff
    nop                                           ; $4c47: $00
    rst $38                                       ; $4c48: $ff
    nop                                           ; $4c49: $00
    rst $38                                       ; $4c4a: $ff
    nop                                           ; $4c4b: $00
    rst $38                                       ; $4c4c: $ff
    nop                                           ; $4c4d: $00
    rst $38                                       ; $4c4e: $ff
    nop                                           ; $4c4f: $00
    nop                                           ; $4c50: $00
    rst $38                                       ; $4c51: $ff
    nop                                           ; $4c52: $00
    rst $38                                       ; $4c53: $ff
    ld bc, $07fe                                  ; $4c54: $01 $fe $07
    ld hl, sp+$1f                                 ; $4c57: $f8 $1f
    ldh [$ff7f], a                                ; $4c59: $e0 $7f
    add b                                         ; $4c5b: $80
    rst $38                                       ; $4c5c: $ff
    nop                                           ; $4c5d: $00
    rst RST_08                                    ; $4c5e: $cf

jr_00c_4c5f:
    jr nc, jr_00c_4c61                            ; $4c5f: $30 $00

jr_00c_4c61:
    nop                                           ; $4c61: $00
    nop                                           ; $4c62: $00
    nop                                           ; $4c63: $00
    nop                                           ; $4c64: $00
    nop                                           ; $4c65: $00
    nop                                           ; $4c66: $00
    nop                                           ; $4c67: $00
    nop                                           ; $4c68: $00
    nop                                           ; $4c69: $00

jr_00c_4c6a:
    nop                                           ; $4c6a: $00
    nop                                           ; $4c6b: $00
    nop                                           ; $4c6c: $00
    nop                                           ; $4c6d: $00
    ldh a, [rP1]                                  ; $4c6e: $f0 $00
    ld c, c                                       ; $4c70: $49
    or [hl]                                       ; $4c71: $b6
    ld c, c                                       ; $4c72: $49
    or [hl]                                       ; $4c73: $b6
    sub d                                         ; $4c74: $92
    ld l, l                                       ; $4c75: $6d
    sub d                                         ; $4c76: $92
    ld l, l                                       ; $4c77: $6d
    sub d                                         ; $4c78: $92
    ld l, l                                       ; $4c79: $6d
    sub d                                         ; $4c7a: $92
    ld l, l                                       ; $4c7b: $6d
    sub d                                         ; $4c7c: $92
    ld l, l                                       ; $4c7d: $6d
    sub d                                         ; $4c7e: $92
    ld l, l                                       ; $4c7f: $6d
    nop                                           ; $4c80: $00
    nop                                           ; $4c81: $00
    nop                                           ; $4c82: $00
    nop                                           ; $4c83: $00
    nop                                           ; $4c84: $00
    nop                                           ; $4c85: $00
    nop                                           ; $4c86: $00
    nop                                           ; $4c87: $00
    nop                                           ; $4c88: $00
    nop                                           ; $4c89: $00
    nop                                           ; $4c8a: $00
    nop                                           ; $4c8b: $00
    nop                                           ; $4c8c: $00
    nop                                           ; $4c8d: $00
    nop                                           ; $4c8e: $00
    nop                                           ; $4c8f: $00
    nop                                           ; $4c90: $00
    jr jr_00c_4c97                                ; $4c91: $18 $04

    jr jr_00c_4c9d                                ; $4c93: $18 $08

    ld d, $49                                     ; $4c95: $16 $49

jr_00c_4c97:
    or [hl]                                       ; $4c97: $b6
    ld c, c                                       ; $4c98: $49
    or [hl]                                       ; $4c99: $b6
    ld c, c                                       ; $4c9a: $49
    or [hl]                                       ; $4c9b: $b6
    ld c, c                                       ; $4c9c: $49

jr_00c_4c9d:
    or [hl]                                       ; $4c9d: $b6
    ld c, c                                       ; $4c9e: $49
    or [hl]                                       ; $4c9f: $b6
    nop                                           ; $4ca0: $00
    rst $20                                       ; $4ca1: $e7
    nop                                           ; $4ca2: $00
    db $e3                                        ; $4ca3: $e3
    nop                                           ; $4ca4: $00
    pop hl                                        ; $4ca5: $e1
    nop                                           ; $4ca6: $00
    nop                                           ; $4ca7: $00
    nop                                           ; $4ca8: $00
    nop                                           ; $4ca9: $00
    nop                                           ; $4caa: $00
    nop                                           ; $4cab: $00
    nop                                           ; $4cac: $00
    nop                                           ; $4cad: $00
    nop                                           ; $4cae: $00
    nop                                           ; $4caf: $00
    ld [bc], a                                    ; $4cb0: $02
    jr nz, jr_00c_4cb5                            ; $4cb1: $20 $02

    jr nz, jr_00c_4cd5                            ; $4cb3: $20 $20

jr_00c_4cb5:
    ld [bc], a                                    ; $4cb5: $02
    inc h                                         ; $4cb6: $24
    db $db                                        ; $4cb7: $db
    inc h                                         ; $4cb8: $24
    db $db                                        ; $4cb9: $db
    inc h                                         ; $4cba: $24
    db $db                                        ; $4cbb: $db
    inc h                                         ; $4cbc: $24
    db $db                                        ; $4cbd: $db
    inc h                                         ; $4cbe: $24
    db $db                                        ; $4cbf: $db
    nop                                           ; $4cc0: $00
    db $dd                                        ; $4cc1: $dd
    nop                                           ; $4cc2: $00
    db $dd                                        ; $4cc3: $dd
    nop                                           ; $4cc4: $00
    db $dd                                        ; $4cc5: $dd
    nop                                           ; $4cc6: $00
    nop                                           ; $4cc7: $00
    nop                                           ; $4cc8: $00
    nop                                           ; $4cc9: $00
    nop                                           ; $4cca: $00
    nop                                           ; $4ccb: $00
    nop                                           ; $4ccc: $00
    nop                                           ; $4ccd: $00
    nop                                           ; $4cce: $00
    nop                                           ; $4ccf: $00
    ld bc, $0130                                  ; $4cd0: $01 $30 $01
    jr nc, @+$13                                  ; $4cd3: $30 $11

jr_00c_4cd5:
    jr nz, jr_00c_4c6a                            ; $4cd5: $20 $93

    ld l, h                                       ; $4cd7: $6c
    sub e                                         ; $4cd8: $93
    ld l, h                                       ; $4cd9: $6c
    sub e                                         ; $4cda: $93
    ld l, h                                       ; $4cdb: $6c
    sub e                                         ; $4cdc: $93
    ld l, h                                       ; $4cdd: $6c
    sub e                                         ; $4cde: $93
    ld l, h                                       ; $4cdf: $6c
    nop                                           ; $4ce0: $00
    adc $00                                       ; $4ce1: $ce $00
    adc $00                                       ; $4ce3: $ce $00
    adc $00                                       ; $4ce5: $ce $00
    nop                                           ; $4ce7: $00
    nop                                           ; $4ce8: $00
    nop                                           ; $4ce9: $00
    nop                                           ; $4cea: $00
    nop                                           ; $4ceb: $00
    nop                                           ; $4cec: $00

jr_00c_4ced:
    nop                                           ; $4ced: $00
    nop                                           ; $4cee: $00
    nop                                           ; $4cef: $00
    ld de, $1101                                  ; $4cf0: $11 $01 $11
    ld [$0418], sp                                ; $4cf3: $08 $18 $04
    db $fc                                        ; $4cf6: $fc
    inc bc                                        ; $4cf7: $03
    rst $38                                       ; $4cf8: $ff
    nop                                           ; $4cf9: $00
    rst $38                                       ; $4cfa: $ff
    nop                                           ; $4cfb: $00
    rst $38                                       ; $4cfc: $ff
    nop                                           ; $4cfd: $00
    rst $38                                       ; $4cfe: $ff
    nop                                           ; $4cff: $00
    nop                                           ; $4d00: $00
    rst $28                                       ; $4d01: $ef
    ld bc, $00e6                                  ; $4d02: $01 $e6 $00
    db $e3                                        ; $4d05: $e3
    nop                                           ; $4d06: $00
    nop                                           ; $4d07: $00
    nop                                           ; $4d08: $00
    nop                                           ; $4d09: $00
    nop                                           ; $4d0a: $00
    nop                                           ; $4d0b: $00
    nop                                           ; $4d0c: $00
    nop                                           ; $4d0d: $00
    nop                                           ; $4d0e: $00
    nop                                           ; $4d0f: $00
    ld hl, sp+$48                                 ; $4d10: $f8 $48
    ld [$1898], sp                                ; $4d12: $08 $98 $18
    jr z, jr_00c_4d26                             ; $4d15: $28 $0f

    rst $38                                       ; $4d17: $ff
    db $fd                                        ; $4d18: $fd
    dec c                                         ; $4d19: $0d
    rst $38                                       ; $4d1a: $ff
    rrca                                          ; $4d1b: $0f
    db $fd                                        ; $4d1c: $fd
    dec c                                         ; $4d1d: $0d
    rst $38                                       ; $4d1e: $ff
    rrca                                          ; $4d1f: $0f
    ret z                                         ; $4d20: $c8

    ld b, a                                       ; $4d21: $47
    sbc b                                         ; $4d22: $98
    ld h, a                                       ; $4d23: $67
    jr z, jr_00c_4ced                             ; $4d24: $28 $c7

jr_00c_4d26:
    rrca                                          ; $4d26: $0f
    nop                                           ; $4d27: $00
    ld c, $01                                     ; $4d28: $0e $01
    inc c                                         ; $4d2a: $0c
    inc bc                                        ; $4d2b: $03
    ld c, $01                                     ; $4d2c: $0e $01
    rrca                                          ; $4d2e: $0f
    nop                                           ; $4d2f: $00
    call nz, $c6c4                                ; $4d30: $c4 $c4 $c6
    call nz, $c6c7                                ; $4d33: $c4 $c7 $c6
    rst $38                                       ; $4d36: $ff
    rst $38                                       ; $4d37: $ff
    ld a, a                                       ; $4d38: $7f
    ld a, a                                       ; $4d39: $7f
    rst $38                                       ; $4d3a: $ff
    rst $38                                       ; $4d3b: $ff
    ld a, a                                       ; $4d3c: $7f
    ld a, a                                       ; $4d3d: $7f
    rst $38                                       ; $4d3e: $ff
    rst $38                                       ; $4d3f: $ff
    call nz, $c43b                                ; $4d40: $c4 $3b $c4
    dec sp                                        ; $4d43: $3b
    add $39                                       ; $4d44: $c6 $39
    rst $38                                       ; $4d46: $ff
    nop                                           ; $4d47: $00
    rst $38                                       ; $4d48: $ff
    nop                                           ; $4d49: $00
    ld a, a                                       ; $4d4a: $7f
    add b                                         ; $4d4b: $80
    rst $38                                       ; $4d4c: $ff
    nop                                           ; $4d4d: $00
    rst $38                                       ; $4d4e: $ff
    nop                                           ; $4d4f: $00
    ld h, d                                       ; $4d50: $62
    ld h, d                                       ; $4d51: $62
    ld h, e                                       ; $4d52: $63
    ld h, d                                       ; $4d53: $62
    inc de                                        ; $4d54: $13
    inc de                                        ; $4d55: $13
    rst $38                                       ; $4d56: $ff
    rst $38                                       ; $4d57: $ff
    rst $38                                       ; $4d58: $ff
    rst $38                                       ; $4d59: $ff
    rst $38                                       ; $4d5a: $ff
    rst $38                                       ; $4d5b: $ff
    rst $38                                       ; $4d5c: $ff
    rst $38                                       ; $4d5d: $ff
    rst $38                                       ; $4d5e: $ff
    rst $38                                       ; $4d5f: $ff
    ld h, d                                       ; $4d60: $62
    sbc l                                         ; $4d61: $9d
    ld h, d                                       ; $4d62: $62
    sbc l                                         ; $4d63: $9d
    inc de                                        ; $4d64: $13
    db $ec                                        ; $4d65: $ec
    rst $38                                       ; $4d66: $ff
    nop                                           ; $4d67: $00
    rst $38                                       ; $4d68: $ff
    nop                                           ; $4d69: $00
    rst $38                                       ; $4d6a: $ff
    nop                                           ; $4d6b: $00
    rst $38                                       ; $4d6c: $ff
    nop                                           ; $4d6d: $00
    rst $38                                       ; $4d6e: $ff
    nop                                           ; $4d6f: $00
    inc e                                         ; $4d70: $1c
    ld c, $0e                                     ; $4d71: $0e $0e
    rlca                                          ; $4d73: $07
    inc bc                                        ; $4d74: $03
    rlca                                          ; $4d75: $07
    ld [bc], a                                    ; $4d76: $02
    ld bc, $0000                                  ; $4d77: $01 $00 $00
    nop                                           ; $4d7a: $00
    nop                                           ; $4d7b: $00
    nop                                           ; $4d7c: $00
    nop                                           ; $4d7d: $00
    nop                                           ; $4d7e: $00
    nop                                           ; $4d7f: $00
    rst $38                                       ; $4d80: $ff
    nop                                           ; $4d81: $00
    rst $38                                       ; $4d82: $ff
    nop                                           ; $4d83: $00
    rst $38                                       ; $4d84: $ff
    nop                                           ; $4d85: $00
    rst $38                                       ; $4d86: $ff
    nop                                           ; $4d87: $00
    rst $38                                       ; $4d88: $ff
    nop                                           ; $4d89: $00
    rst $38                                       ; $4d8a: $ff
    nop                                           ; $4d8b: $00
    rst $38                                       ; $4d8c: $ff
    nop                                           ; $4d8d: $00
    rst $38                                       ; $4d8e: $ff
    nop                                           ; $4d8f: $00
    inc b                                         ; $4d90: $04
    ld c, $fe                                     ; $4d91: $0e $fe
    inc c                                         ; $4d93: $0c
    ld sp, hl                                     ; $4d94: $f9
    db $fc                                        ; $4d95: $fc
    pop hl                                        ; $4d96: $e1
    ld hl, sp+$00                                 ; $4d97: $f8 $00
    nop                                           ; $4d99: $00
    nop                                           ; $4d9a: $00
    nop                                           ; $4d9b: $00
    nop                                           ; $4d9c: $00
    nop                                           ; $4d9d: $00
    nop                                           ; $4d9e: $00
    nop                                           ; $4d9f: $00
    rst $38                                       ; $4da0: $ff
    nop                                           ; $4da1: $00
    rst $38                                       ; $4da2: $ff
    nop                                           ; $4da3: $00
    rst $38                                       ; $4da4: $ff
    nop                                           ; $4da5: $00
    rst $38                                       ; $4da6: $ff
    nop                                           ; $4da7: $00
    rst $38                                       ; $4da8: $ff
    nop                                           ; $4da9: $00
    rst $38                                       ; $4daa: $ff
    nop                                           ; $4dab: $00
    rst $38                                       ; $4dac: $ff
    nop                                           ; $4dad: $00
    rst $38                                       ; $4dae: $ff
    nop                                           ; $4daf: $00
    ldh a, [$ff60]                                ; $4db0: $f0 $60
    ld b, b                                       ; $4db2: $40
    ldh [$ffe0], a                                ; $4db3: $e0 $e0
    ret nz                                        ; $4db5: $c0

    nop                                           ; $4db6: $00
    ret nz                                        ; $4db7: $c0

    nop                                           ; $4db8: $00
    nop                                           ; $4db9: $00
    nop                                           ; $4dba: $00
    nop                                           ; $4dbb: $00
    nop                                           ; $4dbc: $00
    nop                                           ; $4dbd: $00
    nop                                           ; $4dbe: $00
    nop                                           ; $4dbf: $00
    rst $38                                       ; $4dc0: $ff
    nop                                           ; $4dc1: $00
    rst $38                                       ; $4dc2: $ff
    nop                                           ; $4dc3: $00
    rst $38                                       ; $4dc4: $ff
    nop                                           ; $4dc5: $00
    rst $38                                       ; $4dc6: $ff
    nop                                           ; $4dc7: $00
    rst $38                                       ; $4dc8: $ff
    nop                                           ; $4dc9: $00
    rst $38                                       ; $4dca: $ff
    nop                                           ; $4dcb: $00
    rst $38                                       ; $4dcc: $ff
    nop                                           ; $4dcd: $00
    rst $38                                       ; $4dce: $ff
    nop                                           ; $4dcf: $00
    rst $28                                       ; $4dd0: $ef
    add $64                                       ; $4dd1: $c6 $64
    adc $44                                       ; $4dd3: $ce $44
    xor $7e                                       ; $4dd5: $ee $7e
    call z, RST_00                                ; $4dd7: $cc $00 $00
    nop                                           ; $4dda: $00
    nop                                           ; $4ddb: $00
    nop                                           ; $4ddc: $00
    nop                                           ; $4ddd: $00
    nop                                           ; $4dde: $00
    nop                                           ; $4ddf: $00
    rst $38                                       ; $4de0: $ff
    nop                                           ; $4de1: $00
    rst $38                                       ; $4de2: $ff
    nop                                           ; $4de3: $00
    rst $38                                       ; $4de4: $ff
    nop                                           ; $4de5: $00
    rst $38                                       ; $4de6: $ff
    nop                                           ; $4de7: $00
    rst $38                                       ; $4de8: $ff
    nop                                           ; $4de9: $00
    rst $38                                       ; $4dea: $ff
    nop                                           ; $4deb: $00
    rst $38                                       ; $4dec: $ff
    nop                                           ; $4ded: $00
    rst $38                                       ; $4dee: $ff
    nop                                           ; $4def: $00
    ld c, $1c                                     ; $4df0: $0e $1c
    jr jr_00c_4e00                                ; $4df2: $18 $0c

    inc e                                         ; $4df4: $1c
    ld [$0018], sp                                ; $4df5: $08 $18 $00
    nop                                           ; $4df8: $00
    nop                                           ; $4df9: $00
    nop                                           ; $4dfa: $00
    nop                                           ; $4dfb: $00
    nop                                           ; $4dfc: $00
    nop                                           ; $4dfd: $00
    nop                                           ; $4dfe: $00
    nop                                           ; $4dff: $00

jr_00c_4e00:
    rst $38                                       ; $4e00: $ff
    nop                                           ; $4e01: $00
    rst $38                                       ; $4e02: $ff
    nop                                           ; $4e03: $00
    rst $38                                       ; $4e04: $ff
    nop                                           ; $4e05: $00
    rst $38                                       ; $4e06: $ff
    nop                                           ; $4e07: $00
    rst $38                                       ; $4e08: $ff
    nop                                           ; $4e09: $00
    rst $38                                       ; $4e0a: $ff
    nop                                           ; $4e0b: $00
    rst $38                                       ; $4e0c: $ff
    nop                                           ; $4e0d: $00
    rst $38                                       ; $4e0e: $ff
    nop                                           ; $4e0f: $00
    inc sp                                        ; $4e10: $33
    inc sp                                        ; $4e11: $33
    inc sp                                        ; $4e12: $33
    inc sp                                        ; $4e13: $33
    inc sp                                        ; $4e14: $33
    inc sp                                        ; $4e15: $33
    inc sp                                        ; $4e16: $33
    inc sp                                        ; $4e17: $33
    ld bc, $0100                                  ; $4e18: $01 $00 $01
    nop                                           ; $4e1b: $00
    ld bc, $0100                                  ; $4e1c: $01 $00 $01
    nop                                           ; $4e1f: $00
    rst $38                                       ; $4e20: $ff
    nop                                           ; $4e21: $00
    rst $38                                       ; $4e22: $ff
    nop                                           ; $4e23: $00
    rst $38                                       ; $4e24: $ff
    nop                                           ; $4e25: $00
    rst $38                                       ; $4e26: $ff
    nop                                           ; $4e27: $00
    cp $01                                        ; $4e28: $fe $01
    cp $01                                        ; $4e2a: $fe $01
    cp $01                                        ; $4e2c: $fe $01
    cp $01                                        ; $4e2e: $fe $01
    rst $38                                       ; $4e30: $ff
    nop                                           ; $4e31: $00
    add c                                         ; $4e32: $81
    rst $38                                       ; $4e33: $ff
    cp $82                                        ; $4e34: $fe $82
    db $fc                                        ; $4e36: $fc
    add h                                         ; $4e37: $84
    ld hl, sp-$78                                 ; $4e38: $f8 $88
    ld hl, sp-$77                                 ; $4e3a: $f8 $89
    ldh a, [c]                                    ; $4e3c: $f2
    sub c                                         ; $4e3d: $91
    ret z                                         ; $4e3e: $c8

    or e                                          ; $4e3f: $b3
    rst $38                                       ; $4e40: $ff
    rst $38                                       ; $4e41: $ff
    nop                                           ; $4e42: $00
    ld bc, $0201                                  ; $4e43: $01 $01 $02
    inc bc                                        ; $4e46: $03
    inc b                                         ; $4e47: $04
    rlca                                          ; $4e48: $07
    ld [$0807], sp                                ; $4e49: $08 $07 $08
    rrca                                          ; $4e4c: $0f
    db $10                                        ; $4e4d: $10
    rlca                                          ; $4e4e: $07
    nop                                           ; $4e4f: $00
    rst $38                                       ; $4e50: $ff
    nop                                           ; $4e51: $00
    add e                                         ; $4e52: $83
    add b                                         ; $4e53: $80
    nop                                           ; $4e54: $00
    nop                                           ; $4e55: $00
    ld b, h                                       ; $4e56: $44
    jr c, jr_00c_4e59                             ; $4e57: $38 $00

jr_00c_4e59:
    cp $38                                        ; $4e59: $fe $38
    rst RST_00                                    ; $4e5b: $c7
    ld b, h                                       ; $4e5c: $44
    add e                                         ; $4e5d: $83
    jr nz, jr_00c_4e79                            ; $4e5e: $20 $19

    rst $38                                       ; $4e60: $ff
    rst $38                                       ; $4e61: $ff
    ld a, a                                       ; $4e62: $7f
    add b                                         ; $4e63: $80
    rst $38                                       ; $4e64: $ff
    nop                                           ; $4e65: $00
    rst $38                                       ; $4e66: $ff
    nop                                           ; $4e67: $00
    rst $38                                       ; $4e68: $ff
    nop                                           ; $4e69: $00
    rst $38                                       ; $4e6a: $ff
    nop                                           ; $4e6b: $00
    rst $38                                       ; $4e6c: $ff
    nop                                           ; $4e6d: $00
    rst $38                                       ; $4e6e: $ff
    nop                                           ; $4e6f: $00
    rst $38                                       ; $4e70: $ff
    nop                                           ; $4e71: $00
    nop                                           ; $4e72: $00
    rst $38                                       ; $4e73: $ff
    rst $38                                       ; $4e74: $ff
    nop                                           ; $4e75: $00
    ld a, a                                       ; $4e76: $7f
    nop                                           ; $4e77: $00
    ccf                                           ; $4e78: $3f

jr_00c_4e79:
    nop                                           ; $4e79: $00
    ccf                                           ; $4e7a: $3f
    nop                                           ; $4e7b: $00
    sbc a                                         ; $4e7c: $9f
    nop                                           ; $4e7d: $00
    daa                                           ; $4e7e: $27
    sbc b                                         ; $4e7f: $98
    rst $38                                       ; $4e80: $ff
    rst $38                                       ; $4e81: $ff
    nop                                           ; $4e82: $00
    nop                                           ; $4e83: $00
    add b                                         ; $4e84: $80
    nop                                           ; $4e85: $00
    ret nz                                        ; $4e86: $c0

    nop                                           ; $4e87: $00
    ldh [rP1], a                                  ; $4e88: $e0 $00
    ldh [rP1], a                                  ; $4e8a: $e0 $00
    ldh a, [rP1]                                  ; $4e8c: $f0 $00
    ret nz                                        ; $4e8e: $c0

    nop                                           ; $4e8f: $00
    ld e, l                                       ; $4e90: $5d
    nop                                           ; $4e91: $00
    nop                                           ; $4e92: $00
    rst $38                                       ; $4e93: $ff
    rst $38                                       ; $4e94: $ff
    nop                                           ; $4e95: $00
    rst $38                                       ; $4e96: $ff
    nop                                           ; $4e97: $00
    rst $38                                       ; $4e98: $ff
    nop                                           ; $4e99: $00
    rst $38                                       ; $4e9a: $ff
    nop                                           ; $4e9b: $00
    rst $38                                       ; $4e9c: $ff
    nop                                           ; $4e9d: $00
    rst $38                                       ; $4e9e: $ff
    nop                                           ; $4e9f: $00
    rst $38                                       ; $4ea0: $ff
    ld e, l                                       ; $4ea1: $5d
    nop                                           ; $4ea2: $00
    nop                                           ; $4ea3: $00
    nop                                           ; $4ea4: $00
    nop                                           ; $4ea5: $00
    nop                                           ; $4ea6: $00
    nop                                           ; $4ea7: $00
    nop                                           ; $4ea8: $00
    nop                                           ; $4ea9: $00
    nop                                           ; $4eaa: $00
    nop                                           ; $4eab: $00
    nop                                           ; $4eac: $00
    nop                                           ; $4ead: $00
    nop                                           ; $4eae: $00
    nop                                           ; $4eaf: $00
    rst $38                                       ; $4eb0: $ff
    rst $38                                       ; $4eb1: $ff
    rst $38                                       ; $4eb2: $ff
    rst $38                                       ; $4eb3: $ff
    push af                                       ; $4eb4: $f5
    ld a, [bc]                                    ; $4eb5: $0a
    rst $38                                       ; $4eb6: $ff
    rst $38                                       ; $4eb7: $ff
    rst $38                                       ; $4eb8: $ff
    rst $38                                       ; $4eb9: $ff
    rst $38                                       ; $4eba: $ff
    rst $38                                       ; $4ebb: $ff
    rst $38                                       ; $4ebc: $ff
    rst $38                                       ; $4ebd: $ff
    rst $38                                       ; $4ebe: $ff
    rst $38                                       ; $4ebf: $ff
    nop                                           ; $4ec0: $00
    rst $38                                       ; $4ec1: $ff
    rst $38                                       ; $4ec2: $ff
    nop                                           ; $4ec3: $00
    rst $38                                       ; $4ec4: $ff
    nop                                           ; $4ec5: $00
    rst $38                                       ; $4ec6: $ff
    nop                                           ; $4ec7: $00
    rst $38                                       ; $4ec8: $ff
    nop                                           ; $4ec9: $00
    rst $38                                       ; $4eca: $ff
    nop                                           ; $4ecb: $00
    rst $38                                       ; $4ecc: $ff
    nop                                           ; $4ecd: $00
    rst $38                                       ; $4ece: $ff
    nop                                           ; $4ecf: $00
    rst $38                                       ; $4ed0: $ff
    rst $38                                       ; $4ed1: $ff
    rst $38                                       ; $4ed2: $ff
    rst $38                                       ; $4ed3: $ff
    ld d, b                                       ; $4ed4: $50
    xor a                                         ; $4ed5: $af
    rst $38                                       ; $4ed6: $ff
    rst $38                                       ; $4ed7: $ff
    rst $38                                       ; $4ed8: $ff
    rst $38                                       ; $4ed9: $ff
    rst $38                                       ; $4eda: $ff
    rst $38                                       ; $4edb: $ff
    rst $38                                       ; $4edc: $ff
    rst $38                                       ; $4edd: $ff
    rst $38                                       ; $4ede: $ff
    rst $38                                       ; $4edf: $ff
    nop                                           ; $4ee0: $00
    rst $38                                       ; $4ee1: $ff
    rst $38                                       ; $4ee2: $ff
    nop                                           ; $4ee3: $00
    rst $38                                       ; $4ee4: $ff
    nop                                           ; $4ee5: $00
    rst $38                                       ; $4ee6: $ff
    nop                                           ; $4ee7: $00
    rst $38                                       ; $4ee8: $ff
    nop                                           ; $4ee9: $00
    rst $38                                       ; $4eea: $ff
    nop                                           ; $4eeb: $00
    rst $38                                       ; $4eec: $ff
    nop                                           ; $4eed: $00
    rst $38                                       ; $4eee: $ff
    nop                                           ; $4eef: $00
    rst $38                                       ; $4ef0: $ff
    ret nz                                        ; $4ef1: $c0

    rst $38                                       ; $4ef2: $ff
    ldh a, [$ff3f]                                ; $4ef3: $f0 $3f
    ld hl, sp-$31                                 ; $4ef5: $f8 $cf
    db $fc                                        ; $4ef7: $fc
    rst $30                                       ; $4ef8: $f7
    cp $fb                                        ; $4ef9: $fe $fb
    rst $38                                       ; $4efb: $ff
    db $fd                                        ; $4efc: $fd
    rst $38                                       ; $4efd: $ff
    db $fd                                        ; $4efe: $fd
    rst $38                                       ; $4eff: $ff
    nop                                           ; $4f00: $00
    ret nz                                        ; $4f01: $c0

    ret nz                                        ; $4f02: $c0

    ldh a, [$fff0]                                ; $4f03: $f0 $f0
    ld hl, sp-$08                                 ; $4f05: $f8 $f8
    db $fc                                        ; $4f07: $fc
    db $fc                                        ; $4f08: $fc
    cp $fe                                        ; $4f09: $fe $fe
    rst $38                                       ; $4f0b: $ff
    rst $38                                       ; $4f0c: $ff
    rst $38                                       ; $4f0d: $ff
    rst $38                                       ; $4f0e: $ff
    rst $38                                       ; $4f0f: $ff
    rst $38                                       ; $4f10: $ff
    rst $38                                       ; $4f11: $ff
    rst $38                                       ; $4f12: $ff
    rst $38                                       ; $4f13: $ff
    rst $38                                       ; $4f14: $ff
    rst $38                                       ; $4f15: $ff
    rst $38                                       ; $4f16: $ff
    or [hl]                                       ; $4f17: $b6
    rst $38                                       ; $4f18: $ff
    or [hl]                                       ; $4f19: $b6
    rst $38                                       ; $4f1a: $ff
    xor d                                         ; $4f1b: $aa
    xor d                                         ; $4f1c: $aa
    db $dd                                        ; $4f1d: $dd
    rst $38                                       ; $4f1e: $ff
    db $dd                                        ; $4f1f: $dd
    rst $38                                       ; $4f20: $ff
    nop                                           ; $4f21: $00
    rst $38                                       ; $4f22: $ff
    nop                                           ; $4f23: $00
    rst $38                                       ; $4f24: $ff
    nop                                           ; $4f25: $00
    rst $38                                       ; $4f26: $ff
    nop                                           ; $4f27: $00
    rst $38                                       ; $4f28: $ff
    nop                                           ; $4f29: $00
    rst $38                                       ; $4f2a: $ff
    nop                                           ; $4f2b: $00
    rst $38                                       ; $4f2c: $ff
    nop                                           ; $4f2d: $00
    rst $38                                       ; $4f2e: $ff
    nop                                           ; $4f2f: $00
    rst $38                                       ; $4f30: $ff
    rst $38                                       ; $4f31: $ff
    rst $38                                       ; $4f32: $ff
    rst $38                                       ; $4f33: $ff
    rst $38                                       ; $4f34: $ff
    rst $38                                       ; $4f35: $ff
    db $dd                                        ; $4f36: $dd
    and d                                         ; $4f37: $a2
    rst $38                                       ; $4f38: $ff
    or [hl]                                       ; $4f39: $b6
    rst $38                                       ; $4f3a: $ff
    or [hl]                                       ; $4f3b: $b6
    rst $38                                       ; $4f3c: $ff
    or [hl]                                       ; $4f3d: $b6
    rst $38                                       ; $4f3e: $ff
    or [hl]                                       ; $4f3f: $b6
    rst $38                                       ; $4f40: $ff
    nop                                           ; $4f41: $00
    rst $38                                       ; $4f42: $ff
    nop                                           ; $4f43: $00
    rst $38                                       ; $4f44: $ff
    nop                                           ; $4f45: $00
    rst $38                                       ; $4f46: $ff
    nop                                           ; $4f47: $00
    rst $38                                       ; $4f48: $ff
    nop                                           ; $4f49: $00
    rst $38                                       ; $4f4a: $ff
    nop                                           ; $4f4b: $00
    rst $38                                       ; $4f4c: $ff
    nop                                           ; $4f4d: $00
    rst $38                                       ; $4f4e: $ff
    nop                                           ; $4f4f: $00
    rst $38                                       ; $4f50: $ff
    rst $38                                       ; $4f51: $ff
    rst $38                                       ; $4f52: $ff
    rst $38                                       ; $4f53: $ff
    rst $38                                       ; $4f54: $ff
    rst $38                                       ; $4f55: $ff
    cp $df                                        ; $4f56: $fe $df
    rst $38                                       ; $4f58: $ff
    sbc $ff                                       ; $4f59: $de $ff
    rra                                           ; $4f5b: $1f
    cp $df                                        ; $4f5c: $fe $df
    cp $df                                        ; $4f5e: $fe $df
    rst $38                                       ; $4f60: $ff
    nop                                           ; $4f61: $00
    rst $38                                       ; $4f62: $ff
    nop                                           ; $4f63: $00
    rst $38                                       ; $4f64: $ff
    nop                                           ; $4f65: $00
    rst $38                                       ; $4f66: $ff
    nop                                           ; $4f67: $00
    rst $38                                       ; $4f68: $ff
    nop                                           ; $4f69: $00
    rst $38                                       ; $4f6a: $ff
    nop                                           ; $4f6b: $00
    rst $38                                       ; $4f6c: $ff
    nop                                           ; $4f6d: $00
    rst $38                                       ; $4f6e: $ff
    nop                                           ; $4f6f: $00
    rst $38                                       ; $4f70: $ff
    rst $38                                       ; $4f71: $ff
    rst $38                                       ; $4f72: $ff
    rst $38                                       ; $4f73: $ff
    rst $38                                       ; $4f74: $ff
    rst $38                                       ; $4f75: $ff
    adc $31                                       ; $4f76: $ce $31
    rst RST_18                                    ; $4f78: $df
    ei                                            ; $4f79: $fb
    rst $38                                       ; $4f7a: $ff
    dec sp                                        ; $4f7b: $3b
    rst $38                                       ; $4f7c: $ff
    db $db                                        ; $4f7d: $db
    rst RST_18                                    ; $4f7e: $df
    dec sp                                        ; $4f7f: $3b
    rst $38                                       ; $4f80: $ff
    nop                                           ; $4f81: $00
    rst $38                                       ; $4f82: $ff
    nop                                           ; $4f83: $00
    rst $38                                       ; $4f84: $ff
    nop                                           ; $4f85: $00
    rst $38                                       ; $4f86: $ff
    nop                                           ; $4f87: $00
    rst $38                                       ; $4f88: $ff
    nop                                           ; $4f89: $00
    rst $38                                       ; $4f8a: $ff
    nop                                           ; $4f8b: $00
    rst $38                                       ; $4f8c: $ff
    nop                                           ; $4f8d: $00
    rst $38                                       ; $4f8e: $ff
    nop                                           ; $4f8f: $00
    rst $38                                       ; $4f90: $ff
    rst $38                                       ; $4f91: $ff
    rst $38                                       ; $4f92: $ff
    rst $38                                       ; $4f93: $ff
    rst $38                                       ; $4f94: $ff
    rst $38                                       ; $4f95: $ff
    rst $38                                       ; $4f96: $ff
    ld de, $76fd                                  ; $4f97: $11 $fd $76
    rst $38                                       ; $4f9a: $ff
    ld de, $75fe                                  ; $4f9b: $11 $fe $75
    rst $38                                       ; $4f9e: $ff
    ld d, $ff                                     ; $4f9f: $16 $ff
    nop                                           ; $4fa1: $00
    rst $38                                       ; $4fa2: $ff
    nop                                           ; $4fa3: $00
    rst $38                                       ; $4fa4: $ff
    nop                                           ; $4fa5: $00
    rst $38                                       ; $4fa6: $ff
    nop                                           ; $4fa7: $00
    rst $38                                       ; $4fa8: $ff
    nop                                           ; $4fa9: $00
    rst $38                                       ; $4faa: $ff
    nop                                           ; $4fab: $00
    rst $38                                       ; $4fac: $ff
    nop                                           ; $4fad: $00
    rst $38                                       ; $4fae: $ff
    nop                                           ; $4faf: $00
    rst $38                                       ; $4fb0: $ff
    rst $38                                       ; $4fb1: $ff
    rst $38                                       ; $4fb2: $ff
    rst $38                                       ; $4fb3: $ff
    rst $38                                       ; $4fb4: $ff
    rst $38                                       ; $4fb5: $ff
    rst $38                                       ; $4fb6: $ff
    adc h                                         ; $4fb7: $8c
    db $fd                                        ; $4fb8: $fd
    cp e                                          ; $4fb9: $bb
    rst $38                                       ; $4fba: $ff
    adc e                                         ; $4fbb: $8b
    db $fd                                        ; $4fbc: $fd
    cp e                                          ; $4fbd: $bb
    rst $38                                       ; $4fbe: $ff
    adc h                                         ; $4fbf: $8c
    rst $38                                       ; $4fc0: $ff
    nop                                           ; $4fc1: $00
    rst $38                                       ; $4fc2: $ff
    nop                                           ; $4fc3: $00
    rst $38                                       ; $4fc4: $ff
    nop                                           ; $4fc5: $00
    rst $38                                       ; $4fc6: $ff
    nop                                           ; $4fc7: $00
    rst $38                                       ; $4fc8: $ff
    nop                                           ; $4fc9: $00
    rst $38                                       ; $4fca: $ff
    nop                                           ; $4fcb: $00
    rst $38                                       ; $4fcc: $ff
    nop                                           ; $4fcd: $00
    rst $38                                       ; $4fce: $ff
    nop                                           ; $4fcf: $00
    rst $38                                       ; $4fd0: $ff
    rst $38                                       ; $4fd1: $ff
    rst $38                                       ; $4fd2: $ff
    rst $38                                       ; $4fd3: $ff
    rst $38                                       ; $4fd4: $ff
    rst $38                                       ; $4fd5: $ff
    db $fd                                        ; $4fd6: $fd
    ld a, [hl]                                    ; $4fd7: $7e
    ld a, a                                       ; $4fd8: $7f
    cp l                                          ; $4fd9: $bd
    rst $38                                       ; $4fda: $ff
    cp [hl]                                       ; $4fdb: $be
    ld a, l                                       ; $4fdc: $7d
    cp a                                          ; $4fdd: $bf
    db $fd                                        ; $4fde: $fd
    ld a, [hl]                                    ; $4fdf: $7e
    rst $38                                       ; $4fe0: $ff
    nop                                           ; $4fe1: $00
    rst $38                                       ; $4fe2: $ff
    nop                                           ; $4fe3: $00
    rst $38                                       ; $4fe4: $ff
    nop                                           ; $4fe5: $00
    rst $38                                       ; $4fe6: $ff
    nop                                           ; $4fe7: $00
    rst $38                                       ; $4fe8: $ff
    nop                                           ; $4fe9: $00
    rst $38                                       ; $4fea: $ff
    nop                                           ; $4feb: $00
    rst $38                                       ; $4fec: $ff
    nop                                           ; $4fed: $00
    rst $38                                       ; $4fee: $ff
    nop                                           ; $4fef: $00
    rst $38                                       ; $4ff0: $ff
    rst $38                                       ; $4ff1: $ff
    rst $38                                       ; $4ff2: $ff
    rst $38                                       ; $4ff3: $ff
    rst $38                                       ; $4ff4: $ff
    rst $38                                       ; $4ff5: $ff
    cp a                                          ; $4ff6: $bf
    ld [hl], c                                    ; $4ff7: $71
    or l                                          ; $4ff8: $b5
    xor $ff                                       ; $4ff9: $ee $ff
    ld l, [hl]                                    ; $4ffb: $6e
    push af                                       ; $4ffc: $f5
    xor [hl]                                      ; $4ffd: $ae
    cp a                                          ; $4ffe: $bf
    ld [hl], c                                    ; $4fff: $71
    rst $38                                       ; $5000: $ff
    nop                                           ; $5001: $00
    rst $38                                       ; $5002: $ff
    nop                                           ; $5003: $00
    rst $38                                       ; $5004: $ff
    nop                                           ; $5005: $00
    rst $38                                       ; $5006: $ff
    nop                                           ; $5007: $00
    rst $38                                       ; $5008: $ff
    nop                                           ; $5009: $00
    rst $38                                       ; $500a: $ff
    nop                                           ; $500b: $00
    rst $38                                       ; $500c: $ff
    nop                                           ; $500d: $00
    rst $38                                       ; $500e: $ff
    nop                                           ; $500f: $00
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
    rst $38                                       ; $5020: $ff
    rst $38                                       ; $5021: $ff
    rst $38                                       ; $5022: $ff
    rst $38                                       ; $5023: $ff
    rst $38                                       ; $5024: $ff
    rst $38                                       ; $5025: $ff
    rst $38                                       ; $5026: $ff
    or l                                          ; $5027: $b5
    rst $38                                       ; $5028: $ff
    or h                                          ; $5029: $b4
    rst $38                                       ; $502a: $ff
    or l                                          ; $502b: $b5
    rst $38                                       ; $502c: $ff
    or l                                          ; $502d: $b5
    or a                                          ; $502e: $b7
    call $00ff                                    ; $502f: $cd $ff $00
    rst $38                                       ; $5032: $ff
    nop                                           ; $5033: $00
    rst $38                                       ; $5034: $ff
    nop                                           ; $5035: $00
    rst $38                                       ; $5036: $ff
    nop                                           ; $5037: $00
    rst $38                                       ; $5038: $ff
    nop                                           ; $5039: $00
    rst $38                                       ; $503a: $ff
    nop                                           ; $503b: $00
    rst $38                                       ; $503c: $ff
    nop                                           ; $503d: $00
    rst $38                                       ; $503e: $ff
    nop                                           ; $503f: $00
    rst $38                                       ; $5040: $ff
    rst $38                                       ; $5041: $ff
    rst $38                                       ; $5042: $ff
    rst $38                                       ; $5043: $ff
    rst $38                                       ; $5044: $ff
    rst $38                                       ; $5045: $ff
    db $fd                                        ; $5046: $fd
    db $d3                                        ; $5047: $d3
    db $fc                                        ; $5048: $fc
    rst $10                                       ; $5049: $d7
    rst $38                                       ; $504a: $ff
    ld d, [hl]                                    ; $504b: $56
    db $fc                                        ; $504c: $fc
    sub a                                         ; $504d: $97
    db $fd                                        ; $504e: $fd
    db $d3                                        ; $504f: $d3
    rst $38                                       ; $5050: $ff
    nop                                           ; $5051: $00
    rst $38                                       ; $5052: $ff
    nop                                           ; $5053: $00
    rst $38                                       ; $5054: $ff
    nop                                           ; $5055: $00
    rst $38                                       ; $5056: $ff
    nop                                           ; $5057: $00
    rst $38                                       ; $5058: $ff
    nop                                           ; $5059: $00
    rst $38                                       ; $505a: $ff
    nop                                           ; $505b: $00
    rst $38                                       ; $505c: $ff
    nop                                           ; $505d: $00
    rst $38                                       ; $505e: $ff
    nop                                           ; $505f: $00
    cp $ff                                        ; $5060: $fe $ff
    cp $ff                                        ; $5062: $fe $ff
    cp $ff                                        ; $5064: $fe $ff
    cp $ff                                        ; $5066: $fe $ff
    cp $ff                                        ; $5068: $fe $ff
    cp $ff                                        ; $506a: $fe $ff
    cp $ff                                        ; $506c: $fe $ff
    cp $ff                                        ; $506e: $fe $ff
    rst $38                                       ; $5070: $ff
    nop                                           ; $5071: $00
    rst $38                                       ; $5072: $ff
    nop                                           ; $5073: $00
    rst $38                                       ; $5074: $ff
    nop                                           ; $5075: $00
    rst $38                                       ; $5076: $ff
    nop                                           ; $5077: $00
    rst $38                                       ; $5078: $ff
    nop                                           ; $5079: $00
    rst $38                                       ; $507a: $ff
    nop                                           ; $507b: $00
    rst $38                                       ; $507c: $ff
    nop                                           ; $507d: $00
    rst $38                                       ; $507e: $ff
    nop                                           ; $507f: $00
    rst $38                                       ; $5080: $ff
    rst $38                                       ; $5081: $ff
    rst $38                                       ; $5082: $ff
    rst $38                                       ; $5083: $ff
    rst $38                                       ; $5084: $ff
    rst $38                                       ; $5085: $ff
    rst $38                                       ; $5086: $ff
    rst $38                                       ; $5087: $ff
    rst $38                                       ; $5088: $ff
    rst $38                                       ; $5089: $ff
    rst $38                                       ; $508a: $ff
    rst $38                                       ; $508b: $ff
    rst $38                                       ; $508c: $ff
    rst $38                                       ; $508d: $ff
    ld a, a                                       ; $508e: $7f
    rst $38                                       ; $508f: $ff
    rst $38                                       ; $5090: $ff
    nop                                           ; $5091: $00
    rst $38                                       ; $5092: $ff
    nop                                           ; $5093: $00
    rst $38                                       ; $5094: $ff
    nop                                           ; $5095: $00
    rst $38                                       ; $5096: $ff
    nop                                           ; $5097: $00
    rst $38                                       ; $5098: $ff
    nop                                           ; $5099: $00
    rst $38                                       ; $509a: $ff
    nop                                           ; $509b: $00
    rst $38                                       ; $509c: $ff
    nop                                           ; $509d: $00
    rst $38                                       ; $509e: $ff
    nop                                           ; $509f: $00
    rst $38                                       ; $50a0: $ff
    ret nz                                        ; $50a1: $c0

    rst $38                                       ; $50a2: $ff
    ret nz                                        ; $50a3: $c0

    rst $38                                       ; $50a4: $ff
    ret nz                                        ; $50a5: $c0

    cp $c1                                        ; $50a6: $fe $c1
    ret nz                                        ; $50a8: $c0

    rst $38                                       ; $50a9: $ff
    ret nz                                        ; $50aa: $c0

    rst $38                                       ; $50ab: $ff
    cp $c1                                        ; $50ac: $fe $c1
    rst $38                                       ; $50ae: $ff
    ret nz                                        ; $50af: $c0

    add b                                         ; $50b0: $80
    ret nz                                        ; $50b1: $c0

    add b                                         ; $50b2: $80
    ret nz                                        ; $50b3: $c0

    add b                                         ; $50b4: $80
    ret nz                                        ; $50b5: $c0

    add b                                         ; $50b6: $80
    ret nz                                        ; $50b7: $c0

    add b                                         ; $50b8: $80
    ret nz                                        ; $50b9: $c0

    add b                                         ; $50ba: $80
    ret nz                                        ; $50bb: $c0

    add b                                         ; $50bc: $80
    ret nz                                        ; $50bd: $c0

    add b                                         ; $50be: $80
    ret nz                                        ; $50bf: $c0

    rst $38                                       ; $50c0: $ff
    ret nz                                        ; $50c1: $c0

    rst $38                                       ; $50c2: $ff
    ret nz                                        ; $50c3: $c0

    rst $38                                       ; $50c4: $ff
    ret nz                                        ; $50c5: $c0

    rst $10                                       ; $50c6: $d7
    ldh a, [$ffdb]                                ; $50c7: $f0 $db
    ld hl, sp-$25                                 ; $50c9: $f8 $db
    ld a, [$e6c3]                                 ; $50cb: $fa $c3 $e6
    rst RST_00                                    ; $50ce: $c7
    db $fc                                        ; $50cf: $fc
    add b                                         ; $50d0: $80
    ret nz                                        ; $50d1: $c0

    add b                                         ; $50d2: $80
    ret nz                                        ; $50d3: $c0

    cp h                                          ; $50d4: $bc
    ret nz                                        ; $50d5: $c0

    xor [hl]                                      ; $50d6: $ae
    ret nc                                        ; $50d7: $d0

    and [hl]                                      ; $50d8: $a6
    ret c                                         ; $50d9: $d8

    and [hl]                                      ; $50da: $a6
    jp c, $c2be                                   ; $50db: $da $be $c2

    cp h                                          ; $50de: $bc
    call nz, $fcff                                ; $50df: $c4 $ff $fc
    rst $38                                       ; $50e2: $ff
    ret nz                                        ; $50e3: $c0

    rst $38                                       ; $50e4: $ff
    ret nz                                        ; $50e5: $c0

    rst $38                                       ; $50e6: $ff
    ret nz                                        ; $50e7: $c0

    rst $38                                       ; $50e8: $ff
    ret nz                                        ; $50e9: $c0

    ret nz                                        ; $50ea: $c0

    rst $38                                       ; $50eb: $ff
    rst $38                                       ; $50ec: $ff
    rst $30                                       ; $50ed: $f7
    rst $30                                       ; $50ee: $f7
    rst $30                                       ; $50ef: $f7
    cp h                                          ; $50f0: $bc
    db $fc                                        ; $50f1: $fc
    add b                                         ; $50f2: $80
    ret nz                                        ; $50f3: $c0

    add b                                         ; $50f4: $80
    ret nz                                        ; $50f5: $c0

    add b                                         ; $50f6: $80
    ret nz                                        ; $50f7: $c0

    add b                                         ; $50f8: $80
    ret nz                                        ; $50f9: $c0

    add b                                         ; $50fa: $80
    ret nz                                        ; $50fb: $c0

    adc b                                         ; $50fc: $88
    ret nz                                        ; $50fd: $c0

    adc b                                         ; $50fe: $88
    ret nz                                        ; $50ff: $c0

    rst $30                                       ; $5100: $f7
    rst $30                                       ; $5101: $f7
    rst $30                                       ; $5102: $f7
    rst $30                                       ; $5103: $f7
    rst $38                                       ; $5104: $ff
    rst $38                                       ; $5105: $ff
    ei                                            ; $5106: $fb
    rst $20                                       ; $5107: $e7
    ei                                            ; $5108: $fb
    rst $20                                       ; $5109: $e7
    db $e3                                        ; $510a: $e3
    rst $20                                       ; $510b: $e7
    rst $38                                       ; $510c: $ff
    db $e3                                        ; $510d: $e3
    db $e3                                        ; $510e: $e3
    rst $20                                       ; $510f: $e7
    adc b                                         ; $5110: $88
    ret nz                                        ; $5111: $c0

    adc b                                         ; $5112: $88
    ret nz                                        ; $5113: $c0

    cp a                                          ; $5114: $bf
    rst $38                                       ; $5115: $ff
    cp a                                          ; $5116: $bf
    db $e3                                        ; $5117: $e3
    cp a                                          ; $5118: $bf
    db $e3                                        ; $5119: $e3
    cp a                                          ; $511a: $bf
    db $e3                                        ; $511b: $e3
    cp a                                          ; $511c: $bf
    db $e3                                        ; $511d: $e3
    cp a                                          ; $511e: $bf
    db $e3                                        ; $511f: $e3
    ei                                            ; $5120: $fb
    rst $20                                       ; $5121: $e7
    rst $20                                       ; $5122: $e7
    db $e3                                        ; $5123: $e3
    ei                                            ; $5124: $fb
    rst $20                                       ; $5125: $e7
    ei                                            ; $5126: $fb
    rst $20                                       ; $5127: $e7
    ei                                            ; $5128: $fb
    rst $20                                       ; $5129: $e7
    rst $20                                       ; $512a: $e7
    rst $38                                       ; $512b: $ff
    ei                                            ; $512c: $fb
    rst $20                                       ; $512d: $e7
    ei                                            ; $512e: $fb
    rst $20                                       ; $512f: $e7
    cp a                                          ; $5130: $bf
    db $e3                                        ; $5131: $e3
    cp a                                          ; $5132: $bf
    db $e3                                        ; $5133: $e3
    cp a                                          ; $5134: $bf
    db $e3                                        ; $5135: $e3
    cp a                                          ; $5136: $bf
    db $e3                                        ; $5137: $e3
    cp a                                          ; $5138: $bf
    db $e3                                        ; $5139: $e3
    cp a                                          ; $513a: $bf
    rst $20                                       ; $513b: $e7
    cp a                                          ; $513c: $bf
    db $e3                                        ; $513d: $e3
    cp a                                          ; $513e: $bf
    db $e3                                        ; $513f: $e3
    rst $38                                       ; $5140: $ff
    rst $38                                       ; $5141: $ff
    rst $38                                       ; $5142: $ff
    rst $38                                       ; $5143: $ff
    rst $38                                       ; $5144: $ff
    rst $38                                       ; $5145: $ff
    rst $38                                       ; $5146: $ff
    rst $38                                       ; $5147: $ff
    rst $38                                       ; $5148: $ff
    rst $38                                       ; $5149: $ff
    ret nz                                        ; $514a: $c0

    rst $38                                       ; $514b: $ff
    ret nz                                        ; $514c: $c0

    rst $38                                       ; $514d: $ff
    ret nz                                        ; $514e: $c0

    rst $38                                       ; $514f: $ff
    cp [hl]                                       ; $5150: $be
    cp $80                                        ; $5151: $fe $80
    ret nz                                        ; $5153: $c0

    add b                                         ; $5154: $80
    ret nz                                        ; $5155: $c0

    add b                                         ; $5156: $80
    ret nz                                        ; $5157: $c0

    add b                                         ; $5158: $80
    ret nz                                        ; $5159: $c0

    add b                                         ; $515a: $80
    ret nz                                        ; $515b: $c0

    add b                                         ; $515c: $80
    ret nz                                        ; $515d: $c0

    add b                                         ; $515e: $80
    ret nz                                        ; $515f: $c0

    db $fd                                        ; $5160: $fd
    rst $38                                       ; $5161: $ff
    db $fd                                        ; $5162: $fd
    rst $38                                       ; $5163: $ff
    db $fd                                        ; $5164: $fd
    rst $38                                       ; $5165: $ff
    db $fd                                        ; $5166: $fd
    rst $38                                       ; $5167: $ff
    ei                                            ; $5168: $fb
    rst $38                                       ; $5169: $ff
    ei                                            ; $516a: $fb
    rst $38                                       ; $516b: $ff
    ei                                            ; $516c: $fb
    rst $38                                       ; $516d: $ff
    or $ff                                        ; $516e: $f6 $ff
    rst $38                                       ; $5170: $ff
    rst $38                                       ; $5171: $ff
    rst $38                                       ; $5172: $ff
    rst $38                                       ; $5173: $ff
    rst $38                                       ; $5174: $ff
    rst $38                                       ; $5175: $ff
    rst $38                                       ; $5176: $ff
    rst $38                                       ; $5177: $ff
    cp $ff                                        ; $5178: $fe $ff
    cp $ff                                        ; $517a: $fe $ff
    cp $ff                                        ; $517c: $fe $ff
    db $fd                                        ; $517e: $fd
    cp $f0                                        ; $517f: $fe $f0
    rst RST_08                                    ; $5181: $cf
    adc b                                         ; $5182: $88
    add a                                         ; $5183: $87
    call nz, $8283                                ; $5184: $c4 $83 $82
    pop hl                                        ; $5187: $e1
    add d                                         ; $5188: $82
    ld [hl], c                                    ; $5189: $71
    ld c, c                                       ; $518a: $49
    ld sp, $9921                                  ; $518b: $31 $21 $99
    and b                                         ; $518e: $a0
    jr jr_00c_51c1                                ; $518f: $18 $30

    ret nz                                        ; $5191: $c0

    ld a, b                                       ; $5192: $78
    add b                                         ; $5193: $80
    ld a, h                                       ; $5194: $7c
    add b                                         ; $5195: $80
    ld a, [hl]                                    ; $5196: $7e
    add b                                         ; $5197: $80
    cp $00                                        ; $5198: $fe $00
    cp $01                                        ; $519a: $fe $01
    cp $01                                        ; $519c: $fe $01
    rst $38                                       ; $519e: $ff
    nop                                           ; $519f: $00
    nop                                           ; $51a0: $00
    rst $38                                       ; $51a1: $ff
    rst $38                                       ; $51a2: $ff
    rst $38                                       ; $51a3: $ff
    rst $38                                       ; $51a4: $ff
    rst $38                                       ; $51a5: $ff
    rst $38                                       ; $51a6: $ff
    rst $38                                       ; $51a7: $ff
    rst $38                                       ; $51a8: $ff
    rst $38                                       ; $51a9: $ff
    di                                            ; $51aa: $f3
    rst $38                                       ; $51ab: $ff
    pop bc                                        ; $51ac: $c1
    rst $38                                       ; $51ad: $ff
    add hl, de                                    ; $51ae: $19
    rst $38                                       ; $51af: $ff
    rst $38                                       ; $51b0: $ff
    nop                                           ; $51b1: $00
    rst $38                                       ; $51b2: $ff
    nop                                           ; $51b3: $00
    rst $38                                       ; $51b4: $ff
    nop                                           ; $51b5: $00
    rst $38                                       ; $51b6: $ff
    nop                                           ; $51b7: $00
    rst $38                                       ; $51b8: $ff
    nop                                           ; $51b9: $00
    rst $38                                       ; $51ba: $ff
    inc c                                         ; $51bb: $0c
    rst $38                                       ; $51bc: $ff
    ld a, $ff                                     ; $51bd: $3e $ff
    and $00                                       ; $51bf: $e6 $00

jr_00c_51c1:
    rst $38                                       ; $51c1: $ff
    rst $38                                       ; $51c2: $ff
    rst $38                                       ; $51c3: $ff
    rst $38                                       ; $51c4: $ff
    rst $38                                       ; $51c5: $ff
    rst $38                                       ; $51c6: $ff
    rst $38                                       ; $51c7: $ff
    db $fc                                        ; $51c8: $fc
    rst $38                                       ; $51c9: $ff
    ldh a, [rIE]                                  ; $51ca: $f0 $ff
    rst RST_00                                    ; $51cc: $c7
    rst $38                                       ; $51cd: $ff
    sbc h                                         ; $51ce: $9c
    rst $38                                       ; $51cf: $ff
    rst $38                                       ; $51d0: $ff
    nop                                           ; $51d1: $00
    rst $38                                       ; $51d2: $ff
    nop                                           ; $51d3: $00
    rst $38                                       ; $51d4: $ff
    nop                                           ; $51d5: $00
    rst $38                                       ; $51d6: $ff
    nop                                           ; $51d7: $00
    rst $38                                       ; $51d8: $ff
    inc bc                                        ; $51d9: $03
    rst $38                                       ; $51da: $ff
    rrca                                          ; $51db: $0f
    rst $38                                       ; $51dc: $ff
    jr c, @+$01                                   ; $51dd: $38 $ff

    ld h, e                                       ; $51df: $63
    nop                                           ; $51e0: $00
    rst $38                                       ; $51e1: $ff
    db $fc                                        ; $51e2: $fc
    rst $38                                       ; $51e3: $ff
    db $fc                                        ; $51e4: $fc
    rst $38                                       ; $51e5: $ff
    db $fc                                        ; $51e6: $fc

jr_00c_51e7:
    rst $38                                       ; $51e7: $ff
    ld a, h                                       ; $51e8: $7c
    rst $38                                       ; $51e9: $ff
    add hl, sp                                    ; $51ea: $39
    rst $38                                       ; $51eb: $ff
    inc sp                                        ; $51ec: $33
    rst $38                                       ; $51ed: $ff
    ld h, a                                       ; $51ee: $67
    rst $38                                       ; $51ef: $ff
    rst $38                                       ; $51f0: $ff
    nop                                           ; $51f1: $00
    rst $38                                       ; $51f2: $ff
    inc bc                                        ; $51f3: $03
    rst $38                                       ; $51f4: $ff
    inc bc                                        ; $51f5: $03
    rst $38                                       ; $51f6: $ff
    inc bc                                        ; $51f7: $03
    rst $38                                       ; $51f8: $ff
    add e                                         ; $51f9: $83
    rst $38                                       ; $51fa: $ff
    add $ff                                       ; $51fb: $c6 $ff
    call z, $98ff                                 ; $51fd: $cc $ff $98
    nop                                           ; $5200: $00
    rst $38                                       ; $5201: $ff
    rst $38                                       ; $5202: $ff
    rst $38                                       ; $5203: $ff
    ld a, a                                       ; $5204: $7f
    rst $38                                       ; $5205: $ff
    ld a, a                                       ; $5206: $7f
    rst $38                                       ; $5207: $ff
    ld a, a                                       ; $5208: $7f
    rst $38                                       ; $5209: $ff
    ld a, a                                       ; $520a: $7f
    rst $38                                       ; $520b: $ff
    ccf                                           ; $520c: $3f
    rst $38                                       ; $520d: $ff
    sbc a                                         ; $520e: $9f
    rst $38                                       ; $520f: $ff
    rst $38                                       ; $5210: $ff
    nop                                           ; $5211: $00
    rst $38                                       ; $5212: $ff
    nop                                           ; $5213: $00
    rst $38                                       ; $5214: $ff
    add b                                         ; $5215: $80
    rst $38                                       ; $5216: $ff
    add b                                         ; $5217: $80
    rst $38                                       ; $5218: $ff
    add b                                         ; $5219: $80
    rst $38                                       ; $521a: $ff
    add b                                         ; $521b: $80
    rst $38                                       ; $521c: $ff
    ret nz                                        ; $521d: $c0

    rst $38                                       ; $521e: $ff
    ld h, b                                       ; $521f: $60
    rst $38                                       ; $5220: $ff
    rst $38                                       ; $5221: $ff
    rst $38                                       ; $5222: $ff
    rst $38                                       ; $5223: $ff
    rst $38                                       ; $5224: $ff
    rst $38                                       ; $5225: $ff
    rst $38                                       ; $5226: $ff
    rst $38                                       ; $5227: $ff
    rst $38                                       ; $5228: $ff
    rst $38                                       ; $5229: $ff
    rst $38                                       ; $522a: $ff
    rst $38                                       ; $522b: $ff
    rst $38                                       ; $522c: $ff
    rst $38                                       ; $522d: $ff
    cp $ff                                        ; $522e: $fe $ff
    rst $38                                       ; $5230: $ff
    rst $38                                       ; $5231: $ff
    rst $38                                       ; $5232: $ff
    rst $38                                       ; $5233: $ff
    rst $38                                       ; $5234: $ff
    rst $38                                       ; $5235: $ff
    rst $38                                       ; $5236: $ff
    rst $38                                       ; $5237: $ff
    rst $38                                       ; $5238: $ff
    rst $38                                       ; $5239: $ff
    rst $38                                       ; $523a: $ff
    rst $38                                       ; $523b: $ff
    rst $38                                       ; $523c: $ff
    rst $38                                       ; $523d: $ff
    rst $38                                       ; $523e: $ff
    rst $38                                       ; $523f: $ff
    rst $30                                       ; $5240: $f7
    cp $ec                                        ; $5241: $fe $ec
    db $fc                                        ; $5243: $fc
    rst $28                                       ; $5244: $ef
    db $fc                                        ; $5245: $fc
    ret c                                         ; $5246: $d8

    rst $38                                       ; $5247: $ff
    call c, $b0fb                                 ; $5248: $dc $fb $b0
    ldh a, [$ff78]                                ; $524b: $f0 $78
    ldh [$ffd7], a                                ; $524d: $e0 $d7
    add sp, -$03                                  ; $524f: $e8 $fd
    cp $fb                                        ; $5251: $fe $fb
    db $fc                                        ; $5253: $fc
    ei                                            ; $5254: $fb
    db $fc                                        ; $5255: $fc
    rst $30                                       ; $5256: $f7
    ld hl, sp-$09                                 ; $5257: $f8 $f7
    ld hl, sp-$11                                 ; $5259: $f8 $ef
    ldh a, [$ffdf]                                ; $525b: $f0 $df
    ldh [$ff87], a                                ; $525d: $e0 $87
    ret nz                                        ; $525f: $c0

    and c                                         ; $5260: $a1
    sbc b                                         ; $5261: $98
    ld c, c                                       ; $5262: $49
    jr nc, jr_00c_51e7                            ; $5263: $30 $82

    ld [hl], c                                    ; $5265: $71
    ld [bc], a                                    ; $5266: $02
    pop hl                                        ; $5267: $e1
    ld b, h                                       ; $5268: $44
    add e                                         ; $5269: $83
    ld [$3007], sp                                ; $526a: $08 $07 $30
    rrca                                          ; $526d: $0f
    ret nz                                        ; $526e: $c0

    ccf                                           ; $526f: $3f
    ld a, a                                       ; $5270: $7f
    add b                                         ; $5271: $80
    rst $38                                       ; $5272: $ff
    nop                                           ; $5273: $00
    cp $00                                        ; $5274: $fe $00
    cp $00                                        ; $5276: $fe $00
    db $fc                                        ; $5278: $fc
    nop                                           ; $5279: $00
    ld hl, sp+$00                                 ; $527a: $f8 $00
    ldh a, [rP1]                                  ; $527c: $f0 $00
    ret nz                                        ; $527e: $c0

    nop                                           ; $527f: $00
    ld [hl], c                                    ; $5280: $71
    rst $38                                       ; $5281: $ff
    ldh [c], a                                    ; $5282: $e2
    rst $38                                       ; $5283: $ff
    add $ff                                       ; $5284: $c6 $ff
    inc c                                         ; $5286: $0c
    rst $38                                       ; $5287: $ff
    inc a                                         ; $5288: $3c
    rst $38                                       ; $5289: $ff
    cp $ff                                        ; $528a: $fe $ff
    rst $38                                       ; $528c: $ff
    rst $38                                       ; $528d: $ff
    nop                                           ; $528e: $00
    rst $38                                       ; $528f: $ff
    rst $38                                       ; $5290: $ff
    adc [hl]                                      ; $5291: $8e
    rst $38                                       ; $5292: $ff
    dec e                                         ; $5293: $1d
    rst $38                                       ; $5294: $ff
    add hl, sp                                    ; $5295: $39
    rst $38                                       ; $5296: $ff
    di                                            ; $5297: $f3
    rst $38                                       ; $5298: $ff
    jp $01ff                                      ; $5299: $c3 $ff $01


    rst $38                                       ; $529c: $ff
    nop                                           ; $529d: $00
    rst $38                                       ; $529e: $ff
    nop                                           ; $529f: $00
    jr nc, @+$01                                  ; $52a0: $30 $ff

    inc bc                                        ; $52a2: $03
    rst $38                                       ; $52a3: $ff
    ld c, $ff                                     ; $52a4: $0e $ff
    ld hl, sp-$01                                 ; $52a6: $f8 $ff
    db $e3                                        ; $52a8: $e3
    rst $38                                       ; $52a9: $ff
    rrca                                          ; $52aa: $0f
    rst $38                                       ; $52ab: $ff
    rst $38                                       ; $52ac: $ff
    rst $38                                       ; $52ad: $ff
    nop                                           ; $52ae: $00
    rst $38                                       ; $52af: $ff
    rst $38                                       ; $52b0: $ff
    rst RST_08                                    ; $52b1: $cf
    rst $38                                       ; $52b2: $ff
    db $fc                                        ; $52b3: $fc
    rst $38                                       ; $52b4: $ff
    pop af                                        ; $52b5: $f1
    rst $38                                       ; $52b6: $ff
    rlca                                          ; $52b7: $07
    rst $38                                       ; $52b8: $ff
    inc e                                         ; $52b9: $1c
    rst $38                                       ; $52ba: $ff
    ldh a, [rIE]                                  ; $52bb: $f0 $ff
    nop                                           ; $52bd: $00
    rst $38                                       ; $52be: $ff
    nop                                           ; $52bf: $00
    rst RST_08                                    ; $52c0: $cf
    rst $38                                       ; $52c1: $ff
    sbc a                                         ; $52c2: $9f
    rst $38                                       ; $52c3: $ff
    ccf                                           ; $52c4: $3f
    rst $38                                       ; $52c5: $ff
    cp $ff                                        ; $52c6: $fe $ff
    cp $ff                                        ; $52c8: $fe $ff
    cp $ff                                        ; $52ca: $fe $ff
    rst $38                                       ; $52cc: $ff
    rst $38                                       ; $52cd: $ff
    nop                                           ; $52ce: $00
    rst $38                                       ; $52cf: $ff
    rst $38                                       ; $52d0: $ff
    jr nc, @+$01                                  ; $52d1: $30 $ff

    ld h, b                                       ; $52d3: $60
    rst $38                                       ; $52d4: $ff
    ret nz                                        ; $52d5: $c0

    rst $38                                       ; $52d6: $ff
    ld bc, $01ff                                  ; $52d7: $01 $ff $01
    rst $38                                       ; $52da: $ff
    ld bc, $00ff                                  ; $52db: $01 $ff $00
    rst $38                                       ; $52de: $ff
    nop                                           ; $52df: $00
    sbc a                                         ; $52e0: $9f
    rst $38                                       ; $52e1: $ff
    cp a                                          ; $52e2: $bf
    rst $38                                       ; $52e3: $ff
    inc a                                         ; $52e4: $3c
    rst $38                                       ; $52e5: $ff
    nop                                           ; $52e6: $00
    rst $38                                       ; $52e7: $ff
    inc bc                                        ; $52e8: $03
    rst $38                                       ; $52e9: $ff
    ld a, a                                       ; $52ea: $7f
    rst $38                                       ; $52eb: $ff
    rst $38                                       ; $52ec: $ff
    rst $38                                       ; $52ed: $ff
    nop                                           ; $52ee: $00
    rst $38                                       ; $52ef: $ff
    rst $38                                       ; $52f0: $ff
    ld h, b                                       ; $52f1: $60
    rst $38                                       ; $52f2: $ff
    ld b, b                                       ; $52f3: $40
    rst $38                                       ; $52f4: $ff
    jp rIE                                        ; $52f5: $c3 $ff $ff


    rst $38                                       ; $52f8: $ff
    db $fc                                        ; $52f9: $fc
    rst $38                                       ; $52fa: $ff
    add b                                         ; $52fb: $80
    rst $38                                       ; $52fc: $ff
    nop                                           ; $52fd: $00
    rst $38                                       ; $52fe: $ff
    nop                                           ; $52ff: $00
    rst $38                                       ; $5300: $ff
    rst $38                                       ; $5301: $ff
    rst $38                                       ; $5302: $ff
    rst $38                                       ; $5303: $ff
    nop                                           ; $5304: $00
    rst $38                                       ; $5305: $ff
    nop                                           ; $5306: $00
    rst $38                                       ; $5307: $ff
    rst $38                                       ; $5308: $ff
    rst $38                                       ; $5309: $ff
    rst $38                                       ; $530a: $ff
    rst $38                                       ; $530b: $ff
    rst $38                                       ; $530c: $ff
    rst $38                                       ; $530d: $ff
    nop                                           ; $530e: $00
    rst $38                                       ; $530f: $ff
    rst $38                                       ; $5310: $ff
    nop                                           ; $5311: $00
    rst $38                                       ; $5312: $ff
    nop                                           ; $5313: $00
    rst $38                                       ; $5314: $ff
    rst $38                                       ; $5315: $ff
    rst $38                                       ; $5316: $ff
    rst $38                                       ; $5317: $ff
    rst $38                                       ; $5318: $ff
    nop                                           ; $5319: $00
    rst $38                                       ; $531a: $ff
    nop                                           ; $531b: $00
    rst $38                                       ; $531c: $ff
    nop                                           ; $531d: $00
    rst $38                                       ; $531e: $ff
    nop                                           ; $531f: $00
    rst $38                                       ; $5320: $ff
    rst $38                                       ; $5321: $ff
    rst $38                                       ; $5322: $ff
    rst $38                                       ; $5323: $ff
    ccf                                           ; $5324: $3f
    rst $38                                       ; $5325: $ff
    rra                                           ; $5326: $1f
    rst $38                                       ; $5327: $ff
    sbc a                                         ; $5328: $9f
    rst $38                                       ; $5329: $ff
    rst $38                                       ; $532a: $ff
    rst $38                                       ; $532b: $ff
    rst $38                                       ; $532c: $ff
    rst $38                                       ; $532d: $ff
    nop                                           ; $532e: $00
    rst $38                                       ; $532f: $ff
    rst $38                                       ; $5330: $ff
    nop                                           ; $5331: $00
    rst $38                                       ; $5332: $ff
    nop                                           ; $5333: $00
    rst $38                                       ; $5334: $ff
    ret nz                                        ; $5335: $c0

    rst $38                                       ; $5336: $ff
    ldh [rIE], a                                  ; $5337: $e0 $ff
    ld h, b                                       ; $5339: $60
    rst $38                                       ; $533a: $ff
    nop                                           ; $533b: $00
    rst $38                                       ; $533c: $ff
    nop                                           ; $533d: $00
    rst $38                                       ; $533e: $ff
    nop                                           ; $533f: $00
    rst $38                                       ; $5340: $ff
    rst $38                                       ; $5341: $ff
    rst $38                                       ; $5342: $ff
    rst $38                                       ; $5343: $ff
    rst $38                                       ; $5344: $ff
    rst $38                                       ; $5345: $ff
    rst $38                                       ; $5346: $ff
    rst $38                                       ; $5347: $ff
    cp $ff                                        ; $5348: $fe $ff
    pop af                                        ; $534a: $f1
    rst $38                                       ; $534b: $ff
    rrca                                          ; $534c: $0f
    rst $38                                       ; $534d: $ff
    cp $ff                                        ; $534e: $fe $ff
    rst $38                                       ; $5350: $ff
    rst $38                                       ; $5351: $ff
    rst $38                                       ; $5352: $ff
    rst $38                                       ; $5353: $ff
    rst $38                                       ; $5354: $ff
    rst $38                                       ; $5355: $ff
    rst $38                                       ; $5356: $ff
    rst $38                                       ; $5357: $ff
    rst $38                                       ; $5358: $ff
    rst $38                                       ; $5359: $ff
    rst $38                                       ; $535a: $ff
    rst $38                                       ; $535b: $ff
    cp $ff                                        ; $535c: $fe $ff
    ldh a, [$fffe]                                ; $535e: $f0 $fe
    db $fd                                        ; $5360: $fd
    rst $38                                       ; $5361: $ff
    ei                                            ; $5362: $fb
    rst $38                                       ; $5363: $ff
    rst $20                                       ; $5364: $e7
    cp $9e                                        ; $5365: $fe $9e
    db $fd                                        ; $5367: $fd
    ld a, [hl]                                    ; $5368: $7e
    ld sp, hl                                     ; $5369: $f9
    cp $e1                                        ; $536a: $fe $e1
    cp $81                                        ; $536c: $fe $81
    ld a, [hl]                                    ; $536e: $7e
    add c                                         ; $536f: $81
    rst $38                                       ; $5370: $ff
    rst $38                                       ; $5371: $ff
    cp $ff                                        ; $5372: $fe $ff
    db $fc                                        ; $5374: $fc
    cp $f8                                        ; $5375: $fe $f8
    db $fc                                        ; $5377: $fc
    ldh [$fff8], a                                ; $5378: $e0 $f8
    add b                                         ; $537a: $80
    ldh [rP1], a                                  ; $537b: $e0 $00
    add b                                         ; $537d: $80
    nop                                           ; $537e: $00
    nop                                           ; $537f: $00
    and e                                         ; $5380: $a3
    db $dd                                        ; $5381: $dd
    ld b, a                                       ; $5382: $47
    cp d                                          ; $5383: $ba
    ld c, a                                       ; $5384: $4f
    or a                                          ; $5385: $b7
    adc a                                         ; $5386: $8f
    ld a, e                                       ; $5387: $7b
    adc a                                         ; $5388: $8f
    ld l, a                                       ; $5389: $6f
    xor a                                         ; $538a: $af
    ld a, a                                       ; $538b: $7f
    rst RST_08                                    ; $538c: $cf
    ld a, a                                       ; $538d: $7f
    rlca                                          ; $538e: $07
    ld [hl], e                                    ; $538f: $73
    nop                                           ; $5390: $00
    add c                                         ; $5391: $81
    nop                                           ; $5392: $00
    ld [bc], a                                    ; $5393: $02
    nop                                           ; $5394: $00
    inc b                                         ; $5395: $04
    nop                                           ; $5396: $00
    ld [$0810], sp                                ; $5397: $08 $10 $08
    nop                                           ; $539a: $00
    jr z, jr_00c_539d                             ; $539b: $28 $00

jr_00c_539d:
    ld c, b                                       ; $539d: $48
    adc b                                         ; $539e: $88
    nop                                           ; $539f: $00
    ld hl, sp-$09                                 ; $53a0: $f8 $f7
    db $fc                                        ; $53a2: $fc
    db $eb                                        ; $53a3: $eb
    cp $fd                                        ; $53a4: $fe $fd
    cp $fb                                        ; $53a6: $fe $fb
    ld e, [hl]                                    ; $53a8: $5e
    cp a                                          ; $53a9: $bf
    cp [hl]                                       ; $53aa: $be
    rra                                           ; $53ab: $1f
    ld e, [hl]                                    ; $53ac: $5e
    cp a                                          ; $53ad: $bf
    db $fc                                        ; $53ae: $fc
    ld sp, hl                                     ; $53af: $f9
    nop                                           ; $53b0: $00
    ldh a, [rP1]                                  ; $53b1: $f0 $00
    ld [$0400], sp                                ; $53b3: $08 $00 $04
    nop                                           ; $53b6: $00
    ld [bc], a                                    ; $53b7: $02
    ldh [rSC], a                                  ; $53b8: $e0 $02
    ldh [rSC], a                                  ; $53ba: $e0 $02
    ldh [rSC], a                                  ; $53bc: $e0 $02
    ld [bc], a                                    ; $53be: $02
    nop                                           ; $53bf: $00
    rst $38                                       ; $53c0: $ff
    rst $38                                       ; $53c1: $ff
    rst $38                                       ; $53c2: $ff
    rst $38                                       ; $53c3: $ff
    nop                                           ; $53c4: $00
    nop                                           ; $53c5: $00
    nop                                           ; $53c6: $00
    nop                                           ; $53c7: $00
    rst $38                                       ; $53c8: $ff
    nop                                           ; $53c9: $00
    cp $ff                                        ; $53ca: $fe $ff
    rst $38                                       ; $53cc: $ff
    cp $80                                        ; $53cd: $fe $80
    ret nz                                        ; $53cf: $c0

    rst $38                                       ; $53d0: $ff
    rst $38                                       ; $53d1: $ff
    nop                                           ; $53d2: $00
    rst $38                                       ; $53d3: $ff
    rst $38                                       ; $53d4: $ff
    nop                                           ; $53d5: $00
    rst $38                                       ; $53d6: $ff
    nop                                           ; $53d7: $00
    rst $38                                       ; $53d8: $ff
    nop                                           ; $53d9: $00
    rst $38                                       ; $53da: $ff
    nop                                           ; $53db: $00
    rst $38                                       ; $53dc: $ff
    nop                                           ; $53dd: $00
    rst $38                                       ; $53de: $ff
    nop                                           ; $53df: $00
    rst $38                                       ; $53e0: $ff
    rst $38                                       ; $53e1: $ff
    rst $38                                       ; $53e2: $ff
    rst $38                                       ; $53e3: $ff
    nop                                           ; $53e4: $00
    nop                                           ; $53e5: $00
    nop                                           ; $53e6: $00
    nop                                           ; $53e7: $00
    inc bc                                        ; $53e8: $03
    nop                                           ; $53e9: $00
    rlca                                          ; $53ea: $07
    inc bc                                        ; $53eb: $03
    rst $38                                       ; $53ec: $ff
    inc bc                                        ; $53ed: $03
    rlca                                          ; $53ee: $07
    inc bc                                        ; $53ef: $03
    rst $38                                       ; $53f0: $ff
    rst $38                                       ; $53f1: $ff
    nop                                           ; $53f2: $00
    rst $38                                       ; $53f3: $ff
    rst $38                                       ; $53f4: $ff
    nop                                           ; $53f5: $00
    rst $38                                       ; $53f6: $ff
    nop                                           ; $53f7: $00
    rst $38                                       ; $53f8: $ff
    nop                                           ; $53f9: $00
    rst $38                                       ; $53fa: $ff
    nop                                           ; $53fb: $00
    rst $38                                       ; $53fc: $ff
    ld hl, sp-$01                                 ; $53fd: $f8 $ff
    nop                                           ; $53ff: $00
    rst $38                                       ; $5400: $ff
    rst $38                                       ; $5401: $ff
    rst $38                                       ; $5402: $ff
    rst $38                                       ; $5403: $ff
    nop                                           ; $5404: $00
    nop                                           ; $5405: $00
    nop                                           ; $5406: $00
    nop                                           ; $5407: $00
    ldh [rP1], a                                  ; $5408: $e0 $00
    ldh [$fff0], a                                ; $540a: $e0 $f0
    rst $30                                       ; $540c: $f7
    ld hl, sp-$30                                 ; $540d: $f8 $d0
    jr c, @+$01                                   ; $540f: $38 $ff

    rst $38                                       ; $5411: $ff
    nop                                           ; $5412: $00
    rst $38                                       ; $5413: $ff
    rst $38                                       ; $5414: $ff
    nop                                           ; $5415: $00
    rst $38                                       ; $5416: $ff
    nop                                           ; $5417: $00
    rst $38                                       ; $5418: $ff
    nop                                           ; $5419: $00
    rst $38                                       ; $541a: $ff
    nop                                           ; $541b: $00
    rst $38                                       ; $541c: $ff
    rlca                                          ; $541d: $07
    rst $38                                       ; $541e: $ff
    nop                                           ; $541f: $00
    rst $38                                       ; $5420: $ff
    rst $38                                       ; $5421: $ff
    rst $38                                       ; $5422: $ff
    rst $38                                       ; $5423: $ff
    nop                                           ; $5424: $00
    nop                                           ; $5425: $00
    nop                                           ; $5426: $00
    nop                                           ; $5427: $00
    dec bc                                        ; $5428: $0b
    inc b                                         ; $5429: $04
    cpl                                           ; $542a: $2f
    rra                                           ; $542b: $1f
    db $fd                                        ; $542c: $fd
    ccf                                           ; $542d: $3f
    ei                                            ; $542e: $fb
    ld [hl], b                                    ; $542f: $70
    rst $38                                       ; $5430: $ff
    rst $38                                       ; $5431: $ff
    nop                                           ; $5432: $00
    rst $38                                       ; $5433: $ff
    rst $38                                       ; $5434: $ff
    nop                                           ; $5435: $00
    rst $38                                       ; $5436: $ff
    nop                                           ; $5437: $00
    rst $38                                       ; $5438: $ff
    nop                                           ; $5439: $00
    rst $38                                       ; $543a: $ff
    nop                                           ; $543b: $00
    rst $38                                       ; $543c: $ff
    add b                                         ; $543d: $80
    rst $38                                       ; $543e: $ff
    nop                                           ; $543f: $00
    rst $38                                       ; $5440: $ff
    rst $38                                       ; $5441: $ff
    rst $38                                       ; $5442: $ff
    rst $38                                       ; $5443: $ff
    nop                                           ; $5444: $00
    nop                                           ; $5445: $00
    nop                                           ; $5446: $00
    nop                                           ; $5447: $00
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    ret z                                         ; $544a: $c8

    sbc h                                         ; $544b: $9c
    rst $38                                       ; $544c: $ff
    call z, $eec4                                 ; $544d: $cc $c4 $ee
    rst $38                                       ; $5450: $ff
    rst $38                                       ; $5451: $ff
    nop                                           ; $5452: $00
    rst $38                                       ; $5453: $ff
    rst $38                                       ; $5454: $ff
    nop                                           ; $5455: $00
    rst $38                                       ; $5456: $ff
    nop                                           ; $5457: $00
    rst $38                                       ; $5458: $ff
    nop                                           ; $5459: $00
    rst $38                                       ; $545a: $ff
    nop                                           ; $545b: $00
    rst $38                                       ; $545c: $ff
    ld bc, $00ff                                  ; $545d: $01 $ff $00
    rst $38                                       ; $5460: $ff
    rst $38                                       ; $5461: $ff
    rst $38                                       ; $5462: $ff
    rst $38                                       ; $5463: $ff
    nop                                           ; $5464: $00
    nop                                           ; $5465: $00
    nop                                           ; $5466: $00
    nop                                           ; $5467: $00
    nop                                           ; $5468: $00
    nop                                           ; $5469: $00
    inc d                                         ; $546a: $14
    ld c, $ef                                     ; $546b: $0e $ef
    inc e                                         ; $546d: $1c
    inc e                                         ; $546e: $1c
    jr c, @+$01                                   ; $546f: $38 $ff

    rst $38                                       ; $5471: $ff
    nop                                           ; $5472: $00
    rst $38                                       ; $5473: $ff
    rst $38                                       ; $5474: $ff
    nop                                           ; $5475: $00
    rst $38                                       ; $5476: $ff
    nop                                           ; $5477: $00
    rst $38                                       ; $5478: $ff
    nop                                           ; $5479: $00
    rst $38                                       ; $547a: $ff
    nop                                           ; $547b: $00
    rst $38                                       ; $547c: $ff
    pop hl                                        ; $547d: $e1
    rst $38                                       ; $547e: $ff
    nop                                           ; $547f: $00
    rst $38                                       ; $5480: $ff
    rst $38                                       ; $5481: $ff
    rst $38                                       ; $5482: $ff
    rst $38                                       ; $5483: $ff
    db $fc                                        ; $5484: $fc
    rst $38                                       ; $5485: $ff
    db $fc                                        ; $5486: $fc
    rst $38                                       ; $5487: $ff
    ld hl, sp-$04                                 ; $5488: $f8 $fc
    db $fc                                        ; $548a: $fc
    db $fd                                        ; $548b: $fd
    db $fd                                        ; $548c: $fd
    ld bc, $fcf8                                  ; $548d: $01 $f8 $fc
    rst $38                                       ; $5490: $ff
    rst $38                                       ; $5491: $ff
    nop                                           ; $5492: $00
    rst $38                                       ; $5493: $ff
    rst $38                                       ; $5494: $ff
    nop                                           ; $5495: $00
    ei                                            ; $5496: $fb
    nop                                           ; $5497: $00
    rst $30                                       ; $5498: $f7
    nop                                           ; $5499: $00
    ldh a, [c]                                    ; $549a: $f2
    nop                                           ; $549b: $00
    rst $38                                       ; $549c: $ff
    db $fc                                        ; $549d: $fc
    di                                            ; $549e: $f3
    nop                                           ; $549f: $00
    rst $38                                       ; $54a0: $ff
    rst $38                                       ; $54a1: $ff
    rst $38                                       ; $54a2: $ff
    rst $38                                       ; $54a3: $ff
    nop                                           ; $54a4: $00
    rst $38                                       ; $54a5: $ff
    nop                                           ; $54a6: $00
    add b                                         ; $54a7: $80
    rst $38                                       ; $54a8: $ff
    ld a, a                                       ; $54a9: $7f
    rlca                                          ; $54aa: $07
    rst $38                                       ; $54ab: $ff
    rst RST_18                                    ; $54ac: $df
    cp a                                          ; $54ad: $bf
    nop                                           ; $54ae: $00
    nop                                           ; $54af: $00
    rst $38                                       ; $54b0: $ff
    rst $38                                       ; $54b1: $ff
    nop                                           ; $54b2: $00
    rst $38                                       ; $54b3: $ff
    rst $38                                       ; $54b4: $ff
    nop                                           ; $54b5: $00
    rst $38                                       ; $54b6: $ff
    nop                                           ; $54b7: $00
    add b                                         ; $54b8: $80
    rst $38                                       ; $54b9: $ff
    ld h, a                                       ; $54ba: $67
    nop                                           ; $54bb: $00
    rst $38                                       ; $54bc: $ff
    nop                                           ; $54bd: $00
    rst $38                                       ; $54be: $ff
    nop                                           ; $54bf: $00
    rst $38                                       ; $54c0: $ff
    rst $38                                       ; $54c1: $ff
    rst $38                                       ; $54c2: $ff
    rst $38                                       ; $54c3: $ff
    ld c, c                                       ; $54c4: $49
    halt                                          ; $54c5: $76
    ld c, c                                       ; $54c6: $49
    halt                                          ; $54c7: $76
    db $e4                                        ; $54c8: $e4
    db $db                                        ; $54c9: $db
    db $e4                                        ; $54ca: $e4
    db $db                                        ; $54cb: $db
    jp nc, $00cc                                  ; $54cc: $d2 $cc $00

    ld bc, rIE                                    ; $54cf: $01 $ff $ff
    nop                                           ; $54d2: $00
    rst $38                                       ; $54d3: $ff
    add b                                         ; $54d4: $80
    ld b, b                                       ; $54d5: $40
    add b                                         ; $54d6: $80
    ld b, b                                       ; $54d7: $40
    nop                                           ; $54d8: $00
    ret nz                                        ; $54d9: $c0

    ret nz                                        ; $54da: $c0

    nop                                           ; $54db: $00
    pop hl                                        ; $54dc: $e1
    nop                                           ; $54dd: $00
    cp $00                                        ; $54de: $fe $00
    ld sp, hl                                     ; $54e0: $f9
    or $49                                        ; $54e1: $f6 $49
    or [hl]                                       ; $54e3: $b6
    inc h                                         ; $54e4: $24
    db $db                                        ; $54e5: $db
    inc h                                         ; $54e6: $24
    db $db                                        ; $54e7: $db
    sub b                                         ; $54e8: $90
    ld l, h                                       ; $54e9: $6c
    add d                                         ; $54ea: $82
    ld h, c                                       ; $54eb: $61
    add hl, bc                                    ; $54ec: $09
    ld d, $49                                     ; $54ed: $16 $49
    or [hl]                                       ; $54ef: $b6
    nop                                           ; $54f0: $00
    ldh a, [rP1]                                  ; $54f1: $f0 $00
    nop                                           ; $54f3: $00
    nop                                           ; $54f4: $00
    nop                                           ; $54f5: $00
    nop                                           ; $54f6: $00
    nop                                           ; $54f7: $00
    inc bc                                        ; $54f8: $03
    nop                                           ; $54f9: $00
    inc e                                         ; $54fa: $1c
    nop                                           ; $54fb: $00
    ldh [rP1], a                                  ; $54fc: $e0 $00
    nop                                           ; $54fe: $00
    nop                                           ; $54ff: $00
    ld a, $c0                                     ; $5500: $3e $c0
    add hl, sp                                    ; $5502: $39
    ret nz                                        ; $5503: $c0

    add a                                         ; $5504: $87
    ld h, b                                       ; $5505: $60
    sbc a                                         ; $5506: $9f
    nop                                           ; $5507: $00
    ld c, a                                       ; $5508: $4f
    jr nc, jr_00c_555a                            ; $5509: $30 $4f

    or b                                          ; $550b: $b0
    daa                                           ; $550c: $27
    ret c                                         ; $550d: $d8

    daa                                           ; $550e: $27
    ret c                                         ; $550f: $d8

    ld bc, $0600                                  ; $5510: $01 $00 $06
    nop                                           ; $5513: $00
    jr jr_00c_5516                                ; $5514: $18 $00

jr_00c_5516:
    ld h, b                                       ; $5516: $60
    nop                                           ; $5517: $00
    add b                                         ; $5518: $80
    nop                                           ; $5519: $00
    nop                                           ; $551a: $00
    nop                                           ; $551b: $00
    nop                                           ; $551c: $00
    nop                                           ; $551d: $00
    nop                                           ; $551e: $00
    nop                                           ; $551f: $00
    ld c, e                                       ; $5520: $4b
    or e                                          ; $5521: $b3
    ld b, l                                       ; $5522: $45
    cp b                                          ; $5523: $b8
    ld [hl+], a                                   ; $5524: $22
    call c, $6f90                                 ; $5525: $dc $90 $6f
    call z, $e333                                 ; $5528: $cc $33 $e3
    inc e                                         ; $552b: $1c
    ld hl, sp+$07                                 ; $552c: $f8 $07
    rst $38                                       ; $552e: $ff
    nop                                           ; $552f: $00
    inc b                                         ; $5530: $04
    nop                                           ; $5531: $00
    ld [bc], a                                    ; $5532: $02
    nop                                           ; $5533: $00
    ld bc, $0000                                  ; $5534: $01 $00 $00
    nop                                           ; $5537: $00
    nop                                           ; $5538: $00
    nop                                           ; $5539: $00
    nop                                           ; $553a: $00
    nop                                           ; $553b: $00
    nop                                           ; $553c: $00
    nop                                           ; $553d: $00
    nop                                           ; $553e: $00
    nop                                           ; $553f: $00
    ld a, [$f4f9]                                 ; $5540: $fa $f9 $f4
    db $e3                                        ; $5543: $e3
    ld [$0007], sp                                ; $5544: $08 $07 $00
    rst $38                                       ; $5547: $ff
    nop                                           ; $5548: $00
    rst $38                                       ; $5549: $ff
    cp $01                                        ; $554a: $fe $01
    ld [bc], a                                    ; $554c: $02
    db $fd                                        ; $554d: $fd
    ld a, [$0405]                                 ; $554e: $fa $05 $04
    nop                                           ; $5551: $00
    ld [$f000], sp                                ; $5552: $08 $00 $f0
    nop                                           ; $5555: $00
    nop                                           ; $5556: $00
    nop                                           ; $5557: $00

jr_00c_5558:
    nop                                           ; $5558: $00
    nop                                           ; $5559: $00

jr_00c_555a:
    nop                                           ; $555a: $00
    nop                                           ; $555b: $00
    nop                                           ; $555c: $00
    nop                                           ; $555d: $00
    nop                                           ; $555e: $00
    nop                                           ; $555f: $00
    add b                                         ; $5560: $80
    ret nz                                        ; $5561: $c0

    ret nz                                        ; $5562: $c0

    add b                                         ; $5563: $80
    ret nz                                        ; $5564: $c0

    add b                                         ; $5565: $80
    ldh a, [$fffc]                                ; $5566: $f0 $fc
    db $fc                                        ; $5568: $fc
    db $fc                                        ; $5569: $fc
    rst $38                                       ; $556a: $ff
    add e                                         ; $556b: $83
    ld l, d                                       ; $556c: $6a
    rst $38                                       ; $556d: $ff
    push de                                       ; $556e: $d5
    ld a, a                                       ; $556f: $7f
    rst $38                                       ; $5570: $ff
    nop                                           ; $5571: $00
    rst $38                                       ; $5572: $ff
    nop                                           ; $5573: $00
    rst $38                                       ; $5574: $ff
    nop                                           ; $5575: $00
    rst $38                                       ; $5576: $ff
    nop                                           ; $5577: $00
    rst $38                                       ; $5578: $ff
    nop                                           ; $5579: $00
    rst $38                                       ; $557a: $ff
    inc bc                                        ; $557b: $03
    rst $38                                       ; $557c: $ff
    ld a, a                                       ; $557d: $7f
    rst $38                                       ; $557e: $ff
    ld a, a                                       ; $557f: $7f
    ld [bc], a                                    ; $5580: $02
    rlca                                          ; $5581: $07
    ld [bc], a                                    ; $5582: $02
    rlca                                          ; $5583: $07
    ld [bc], a                                    ; $5584: $02
    rlca                                          ; $5585: $07
    rrca                                          ; $5586: $0f
    rlca                                          ; $5587: $07
    rrca                                          ; $5588: $0f
    rlca                                          ; $5589: $07
    rst $38                                       ; $558a: $ff
    or $af                                        ; $558b: $f6 $af
    rst $30                                       ; $558d: $f7
    ld d, l                                       ; $558e: $55
    rst $38                                       ; $558f: $ff
    rst $38                                       ; $5590: $ff
    nop                                           ; $5591: $00
    rst $38                                       ; $5592: $ff
    nop                                           ; $5593: $00
    rst $38                                       ; $5594: $ff
    nop                                           ; $5595: $00
    rst $38                                       ; $5596: $ff
    nop                                           ; $5597: $00
    rst $38                                       ; $5598: $ff
    nop                                           ; $5599: $00
    rst $38                                       ; $559a: $ff
    ldh a, [rIE]                                  ; $559b: $f0 $ff
    pop af                                        ; $559d: $f1
    rst $38                                       ; $559e: $ff
    pop af                                        ; $559f: $f1
    jr c, jr_00c_55ba                             ; $55a0: $38 $18

    add hl, de                                    ; $55a2: $19
    jr c, jr_00c_5558                             ; $55a3: $38 $b3

    ld a, b                                       ; $55a5: $78
    ld hl, sp-$0f                                 ; $55a6: $f8 $f1
    di                                            ; $55a8: $f3
    ld sp, hl                                     ; $55a9: $f9
    ld e, l                                       ; $55aa: $5d
    add hl, sp                                    ; $55ab: $39
    xor e                                         ; $55ac: $ab
    db $dd                                        ; $55ad: $dd
    ld l, c                                       ; $55ae: $69
    db $fd                                        ; $55af: $fd
    rst $38                                       ; $55b0: $ff
    nop                                           ; $55b1: $00
    rst $38                                       ; $55b2: $ff
    nop                                           ; $55b3: $00
    rst $38                                       ; $55b4: $ff
    nop                                           ; $55b5: $00
    rst $38                                       ; $55b6: $ff
    nop                                           ; $55b7: $00
    rst $38                                       ; $55b8: $ff
    nop                                           ; $55b9: $00

jr_00c_55ba:
    rst $38                                       ; $55ba: $ff
    nop                                           ; $55bb: $00
    rst $38                                       ; $55bc: $ff
    ret nz                                        ; $55bd: $c0

    rst $38                                       ; $55be: $ff
    ldh [rSVBK], a                                ; $55bf: $e0 $70
    ldh [$ffe0], a                                ; $55c1: $e0 $e0
    ret nz                                        ; $55c3: $c0

    ret nz                                        ; $55c4: $c0

    ret nz                                        ; $55c5: $c0

    add b                                         ; $55c6: $80
    ret nz                                        ; $55c7: $c0

    add b                                         ; $55c8: $80
    add b                                         ; $55c9: $80
    add b                                         ; $55ca: $80
    add b                                         ; $55cb: $80
    add b                                         ; $55cc: $80
    add b                                         ; $55cd: $80
    pop bc                                        ; $55ce: $c1
    add b                                         ; $55cf: $80
    rst $38                                       ; $55d0: $ff
    nop                                           ; $55d1: $00
    rst $38                                       ; $55d2: $ff
    nop                                           ; $55d3: $00
    rst $38                                       ; $55d4: $ff
    nop                                           ; $55d5: $00
    rst $38                                       ; $55d6: $ff
    nop                                           ; $55d7: $00
    rst $38                                       ; $55d8: $ff
    nop                                           ; $55d9: $00
    rst $38                                       ; $55da: $ff
    nop                                           ; $55db: $00
    rst $38                                       ; $55dc: $ff
    nop                                           ; $55dd: $00
    rst $38                                       ; $55de: $ff
    nop                                           ; $55df: $00
    rst $38                                       ; $55e0: $ff
    ld h, [hl]                                    ; $55e1: $66
    di                                            ; $55e2: $f3

jr_00c_55e3:
    ld h, a                                       ; $55e3: $67
    di                                            ; $55e4: $f3
    ld h, e                                       ; $55e5: $63
    pop af                                        ; $55e6: $f1
    ld h, e                                       ; $55e7: $63
    db $e3                                        ; $55e8: $e3
    ld h, c                                       ; $55e9: $61
    db $e3                                        ; $55ea: $e3
    ld h, c                                       ; $55eb: $61
    ld b, e                                       ; $55ec: $43
    pop hl                                        ; $55ed: $e1
    pop hl                                        ; $55ee: $e1
    jp $00ff                                      ; $55ef: $c3 $ff $00


    rst $38                                       ; $55f2: $ff
    nop                                           ; $55f3: $00
    rst $38                                       ; $55f4: $ff
    nop                                           ; $55f5: $00
    rst $38                                       ; $55f6: $ff
    nop                                           ; $55f7: $00
    rst $38                                       ; $55f8: $ff
    nop                                           ; $55f9: $00
    rst $38                                       ; $55fa: $ff
    nop                                           ; $55fb: $00
    rst $38                                       ; $55fc: $ff
    nop                                           ; $55fd: $00
    rst $38                                       ; $55fe: $ff
    nop                                           ; $55ff: $00
    ld [hl], b                                    ; $5600: $70
    jr c, jr_00c_55e3                             ; $5601: $38 $e0

    ld [hl], b                                    ; $5603: $70
    ldh a, [$ffe0]                                ; $5604: $f0 $e0
    ldh [$ffc0], a                                ; $5606: $e0 $c0
    add b                                         ; $5608: $80
    ret nz                                        ; $5609: $c0

    ret nz                                        ; $560a: $c0

    add b                                         ; $560b: $80
    add b                                         ; $560c: $80
    add b                                         ; $560d: $80
    nop                                           ; $560e: $00
    add b                                         ; $560f: $80
    rst $38                                       ; $5610: $ff
    nop                                           ; $5611: $00
    rst $38                                       ; $5612: $ff
    nop                                           ; $5613: $00
    rst $38                                       ; $5614: $ff
    nop                                           ; $5615: $00
    rst $38                                       ; $5616: $ff
    nop                                           ; $5617: $00
    rst $38                                       ; $5618: $ff
    nop                                           ; $5619: $00
    rst $38                                       ; $561a: $ff
    nop                                           ; $561b: $00
    rst $38                                       ; $561c: $ff
    nop                                           ; $561d: $00
    rst $38                                       ; $561e: $ff
    nop                                           ; $561f: $00
    ei                                            ; $5620: $fb
    rst $38                                       ; $5621: $ff
    rst $30                                       ; $5622: $f7
    rst $38                                       ; $5623: $ff
    push af                                       ; $5624: $f5
    rst $38                                       ; $5625: $ff
    db $fd                                        ; $5626: $fd
    rst $38                                       ; $5627: $ff
    ei                                            ; $5628: $fb
    rst $38                                       ; $5629: $ff
    ei                                            ; $562a: $fb
    rst $38                                       ; $562b: $ff
    rst $30                                       ; $562c: $f7
    rst $38                                       ; $562d: $ff
    rst $30                                       ; $562e: $f7
    rst $38                                       ; $562f: $ff
    pop af                                        ; $5630: $f1
    nop                                           ; $5631: $00
    pop af                                        ; $5632: $f1
    nop                                           ; $5633: $00
    pop af                                        ; $5634: $f1
    nop                                           ; $5635: $00
    pop af                                        ; $5636: $f1
    nop                                           ; $5637: $00
    pop af                                        ; $5638: $f1
    nop                                           ; $5639: $00
    db $e3                                        ; $563a: $e3
    nop                                           ; $563b: $00
    db $e3                                        ; $563c: $e3
    nop                                           ; $563d: $00
    rst RST_00                                    ; $563e: $c7
    nop                                           ; $563f: $00
    sbc a                                         ; $5640: $9f
    cp a                                          ; $5641: $bf
    db $dd                                        ; $5642: $dd
    db $fc                                        ; $5643: $fc
    rst RST_18                                    ; $5644: $df
    rst $38                                       ; $5645: $ff
    db $dd                                        ; $5646: $dd
    db $fc                                        ; $5647: $fc
    sbc a                                         ; $5648: $9f
    cp a                                          ; $5649: $bf
    sbc l                                         ; $564a: $9d
    cp h                                          ; $564b: $bc
    sbc a                                         ; $564c: $9f
    cp a                                          ; $564d: $bf
    sbc l                                         ; $564e: $9d
    cp h                                          ; $564f: $bc
    rst $38                                       ; $5650: $ff
    nop                                           ; $5651: $00
    cp e                                          ; $5652: $bb
    ld b, h                                       ; $5653: $44
    cp a                                          ; $5654: $bf
    ld b, b                                       ; $5655: $40
    cp e                                          ; $5656: $bb
    ld b, h                                       ; $5657: $44
    rst $38                                       ; $5658: $ff
    nop                                           ; $5659: $00
    ei                                            ; $565a: $fb
    inc b                                         ; $565b: $04
    rst $38                                       ; $565c: $ff
    nop                                           ; $565d: $00
    ei                                            ; $565e: $fb
    inc b                                         ; $565f: $04
    ret                                           ; $5660: $c9


    or $69                                        ; $5661: $f6 $69
    sub $e4                                       ; $5663: $d6 $e4
    db $db                                        ; $5665: $db
    ld h, h                                       ; $5666: $64
    db $db                                        ; $5667: $db
    db $e4                                        ; $5668: $e4
    db $db                                        ; $5669: $db
    ld h, h                                       ; $566a: $64
    db $db                                        ; $566b: $db
    db $e4                                        ; $566c: $e4
    db $db                                        ; $566d: $db
    ld h, h                                       ; $566e: $64
    db $db                                        ; $566f: $db
    ret nz                                        ; $5670: $c0

    nop                                           ; $5671: $00
    ret nz                                        ; $5672: $c0

    nop                                           ; $5673: $00
    ret nz                                        ; $5674: $c0

    nop                                           ; $5675: $00
    ret nz                                        ; $5676: $c0

    nop                                           ; $5677: $00
    ret nz                                        ; $5678: $c0

    nop                                           ; $5679: $00
    ret nz                                        ; $567a: $c0

    nop                                           ; $567b: $00
    ret nz                                        ; $567c: $c0

    nop                                           ; $567d: $00
    ret nz                                        ; $567e: $c0

    nop                                           ; $567f: $00
    inc h                                         ; $5680: $24
    db $db                                        ; $5681: $db
    inc h                                         ; $5682: $24
    db $db                                        ; $5683: $db
    sub d                                         ; $5684: $92
    ld l, l                                       ; $5685: $6d
    sub d                                         ; $5686: $92
    ld l, l                                       ; $5687: $6d
    sub d                                         ; $5688: $92
    ld l, l                                       ; $5689: $6d
    sub d                                         ; $568a: $92
    ld l, l                                       ; $568b: $6d
    sub d                                         ; $568c: $92
    ld l, l                                       ; $568d: $6d
    sub d                                         ; $568e: $92
    ld l, l                                       ; $568f: $6d
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
    sub e                                         ; $56a0: $93
    ld l, h                                       ; $56a1: $6c
    sub e                                         ; $56a2: $93
    ld l, h                                       ; $56a3: $6c
    ld c, c                                       ; $56a4: $49
    or [hl]                                       ; $56a5: $b6
    ld c, c                                       ; $56a6: $49
    or [hl]                                       ; $56a7: $b6
    ld c, c                                       ; $56a8: $49
    or [hl]                                       ; $56a9: $b6
    ld c, c                                       ; $56aa: $49
    or [hl]                                       ; $56ab: $b6
    ld c, c                                       ; $56ac: $49
    or [hl]                                       ; $56ad: $b6
    ld c, c                                       ; $56ae: $49
    or [hl]                                       ; $56af: $b6
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
    rst $38                                       ; $56c0: $ff
    nop                                           ; $56c1: $00
    rst $38                                       ; $56c2: $ff
    nop                                           ; $56c3: $00
    rst $38                                       ; $56c4: $ff
    nop                                           ; $56c5: $00
    rst $38                                       ; $56c6: $ff
    nop                                           ; $56c7: $00
    rst $38                                       ; $56c8: $ff
    nop                                           ; $56c9: $00
    rst $38                                       ; $56ca: $ff
    nop                                           ; $56cb: $00
    ld sp, hl                                     ; $56cc: $f9
    ld b, $ea                                     ; $56cd: $06 $ea
    daa                                           ; $56cf: $27
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
    ld a, $00                                     ; $56dc: $3e $00
    ld e, a                                       ; $56de: $5f
    ld [hl+], a                                   ; $56df: $22
    ld a, [$fa05]                                 ; $56e0: $fa $05 $fa
    dec b                                         ; $56e3: $05
    ld a, [$fa05]                                 ; $56e4: $fa $05 $fa
    dec b                                         ; $56e7: $05
    ld a, [$fa05]                                 ; $56e8: $fa $05 $fa
    dec b                                         ; $56eb: $05
    ld a, [$fa05]                                 ; $56ec: $fa $05 $fa
    dec b                                         ; $56ef: $05
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
    ld [$d57f], a                                 ; $5700: $ea $7f $d5
    ld a, [hl]                                    ; $5703: $7e
    cp $ff                                        ; $5704: $fe $ff
    rst $38                                       ; $5706: $ff
    rst $38                                       ; $5707: $ff
    ld [$d57f], a                                 ; $5708: $ea $7f $d5
    ld a, [hl]                                    ; $570b: $7e
    ld [$d57f], a                                 ; $570c: $ea $7f $d5
    ld a, a                                       ; $570f: $7f
    rst $38                                       ; $5710: $ff
    ld a, a                                       ; $5711: $7f
    rst $38                                       ; $5712: $ff
    ld a, a                                       ; $5713: $7f
    rst $38                                       ; $5714: $ff
    ld bc, $01ff                                  ; $5715: $01 $ff $01
    ld a, a                                       ; $5718: $7f
    rst $38                                       ; $5719: $ff
    ld a, a                                       ; $571a: $7f
    rst $38                                       ; $571b: $ff
    ld a, a                                       ; $571c: $7f
    rst $38                                       ; $571d: $ff
    ld a, a                                       ; $571e: $7f
    rst $38                                       ; $571f: $ff
    push hl                                       ; $5720: $e5
    rra                                           ; $5721: $1f
    ld d, l                                       ; $5722: $55
    rst $28                                       ; $5723: $ef
    rst $28                                       ; $5724: $ef
    rra                                           ; $5725: $1f
    ld e, a                                       ; $5726: $5f
    rst $38                                       ; $5727: $ff
    cp d                                          ; $5728: $ba
    rst $28                                       ; $5729: $ef
    push af                                       ; $572a: $f5
    rrca                                          ; $572b: $0f
    cp d                                          ; $572c: $ba
    ld l, a                                       ; $572d: $6f
    ld d, l                                       ; $572e: $55
    rst $38                                       ; $572f: $ff
    rst $38                                       ; $5730: $ff
    pop af                                        ; $5731: $f1
    rst $38                                       ; $5732: $ff
    pop af                                        ; $5733: $f1
    rst $38                                       ; $5734: $ff
    ldh a, [rIE]                                  ; $5735: $f0 $ff
    ldh a, [rIE]                                  ; $5737: $f0 $ff
    rst $38                                       ; $5739: $ff
    rst $38                                       ; $573a: $ff
    rst $38                                       ; $573b: $ff
    rst $38                                       ; $573c: $ff
    rst $38                                       ; $573d: $ff
    rst $38                                       ; $573e: $ff
    rst $38                                       ; $573f: $ff
    xor c                                         ; $5740: $a9
    db $fd                                        ; $5741: $fd
    ld e, h                                       ; $5742: $5c
    ld sp, hl                                     ; $5743: $f9
    or $f8                                        ; $5744: $f6 $f8
    xor $f8                                       ; $5746: $ee $f8
    xor [hl]                                      ; $5748: $ae
    ld hl, sp+$5e                                 ; $5749: $f8 $5e
    ld hl, sp-$52                                 ; $574b: $f8 $ae
    ld hl, sp+$5e                                 ; $574d: $f8 $5e
    ld hl, sp-$01                                 ; $574f: $f8 $ff
    ldh [rIE], a                                  ; $5751: $e0 $ff
    ret nz                                        ; $5753: $c0

    ld sp, hl                                     ; $5754: $f9
    ld b, $f9                                     ; $5755: $06 $f9
    ld c, $f9                                     ; $5757: $0e $f9
    cp $f9                                        ; $5759: $fe $f9
    cp $f9                                        ; $575b: $fe $f9
    cp $f9                                        ; $575d: $fe $f9
    cp $80                                        ; $575f: $fe $80
    pop bc                                        ; $5761: $c1
    pop hl                                        ; $5762: $e1
    jp $ffe3                                      ; $5763: $c3 $e3 $ff


    cp a                                          ; $5766: $bf
    ld a, [hl]                                    ; $5767: $7e
    nop                                           ; $5768: $00
    nop                                           ; $5769: $00
    nop                                           ; $576a: $00
    nop                                           ; $576b: $00
    nop                                           ; $576c: $00
    nop                                           ; $576d: $00
    nop                                           ; $576e: $00
    nop                                           ; $576f: $00
    rst $38                                       ; $5770: $ff
    nop                                           ; $5771: $00
    rst $38                                       ; $5772: $ff
    nop                                           ; $5773: $00
    rst $38                                       ; $5774: $ff
    nop                                           ; $5775: $00
    rst $38                                       ; $5776: $ff
    nop                                           ; $5777: $00
    rst $38                                       ; $5778: $ff
    nop                                           ; $5779: $00
    rst $38                                       ; $577a: $ff
    nop                                           ; $577b: $00
    rst $38                                       ; $577c: $ff
    nop                                           ; $577d: $00
    rst $38                                       ; $577e: $ff
    nop                                           ; $577f: $00
    pop bc                                        ; $5780: $c1
    jp $83c1                                      ; $5781: $c3 $c1 $83


    inc bc                                        ; $5784: $03
    add e                                         ; $5785: $83
    inc bc                                        ; $5786: $03
    inc bc                                        ; $5787: $03
    nop                                           ; $5788: $00
    nop                                           ; $5789: $00
    nop                                           ; $578a: $00
    nop                                           ; $578b: $00
    nop                                           ; $578c: $00
    nop                                           ; $578d: $00
    nop                                           ; $578e: $00
    nop                                           ; $578f: $00
    rst $38                                       ; $5790: $ff
    nop                                           ; $5791: $00
    rst $38                                       ; $5792: $ff
    nop                                           ; $5793: $00
    rst $38                                       ; $5794: $ff
    nop                                           ; $5795: $00
    rst $38                                       ; $5796: $ff
    nop                                           ; $5797: $00
    rst $38                                       ; $5798: $ff
    nop                                           ; $5799: $00
    rst $38                                       ; $579a: $ff
    nop                                           ; $579b: $00
    rst $38                                       ; $579c: $ff
    nop                                           ; $579d: $00
    rst $38                                       ; $579e: $ff
    nop                                           ; $579f: $00
    nop                                           ; $57a0: $00
    add b                                         ; $57a1: $80
    nop                                           ; $57a2: $00
    add b                                         ; $57a3: $80
    add b                                         ; $57a4: $80
    nop                                           ; $57a5: $00
    add b                                         ; $57a6: $80
    nop                                           ; $57a7: $00
    nop                                           ; $57a8: $00
    nop                                           ; $57a9: $00
    nop                                           ; $57aa: $00
    nop                                           ; $57ab: $00
    nop                                           ; $57ac: $00
    nop                                           ; $57ad: $00
    nop                                           ; $57ae: $00
    nop                                           ; $57af: $00
    rst $38                                       ; $57b0: $ff
    nop                                           ; $57b1: $00
    rst $38                                       ; $57b2: $ff
    nop                                           ; $57b3: $00
    rst $38                                       ; $57b4: $ff
    nop                                           ; $57b5: $00
    rst $38                                       ; $57b6: $ff
    nop                                           ; $57b7: $00
    rst $38                                       ; $57b8: $ff
    nop                                           ; $57b9: $00
    rst $38                                       ; $57ba: $ff
    nop                                           ; $57bb: $00
    rst $38                                       ; $57bc: $ff
    nop                                           ; $57bd: $00
    rst $38                                       ; $57be: $ff
    nop                                           ; $57bf: $00
    rst $28                                       ; $57c0: $ef
    rst $38                                       ; $57c1: $ff
    adc a                                         ; $57c2: $8f
    rst $38                                       ; $57c3: $ff
    sbc a                                         ; $57c4: $9f
    rst $38                                       ; $57c5: $ff
    rra                                           ; $57c6: $1f
    rst $38                                       ; $57c7: $ff
    ccf                                           ; $57c8: $3f
    rst $38                                       ; $57c9: $ff
    rst $38                                       ; $57ca: $ff
    rst $38                                       ; $57cb: $ff
    rst $38                                       ; $57cc: $ff
    rst $38                                       ; $57cd: $ff
    rst $38                                       ; $57ce: $ff
    rst $38                                       ; $57cf: $ff
    rst RST_00                                    ; $57d0: $c7
    nop                                           ; $57d1: $00
    adc a                                         ; $57d2: $8f
    nop                                           ; $57d3: $00
    adc a                                         ; $57d4: $8f
    nop                                           ; $57d5: $00
    rra                                           ; $57d6: $1f
    nop                                           ; $57d7: $00
    rra                                           ; $57d8: $1f
    nop                                           ; $57d9: $00
    rst $38                                       ; $57da: $ff
    nop                                           ; $57db: $00
    rst $38                                       ; $57dc: $ff
    nop                                           ; $57dd: $00
    rst $38                                       ; $57de: $ff
    nop                                           ; $57df: $00
    sbc a                                         ; $57e0: $9f
    cp a                                          ; $57e1: $bf
    sbc l                                         ; $57e2: $9d
    cp h                                          ; $57e3: $bc
    sbc a                                         ; $57e4: $9f
    cp a                                          ; $57e5: $bf
    sbc l                                         ; $57e6: $9d
    cp h                                          ; $57e7: $bc
    sbc a                                         ; $57e8: $9f
    cp a                                          ; $57e9: $bf
    sbc l                                         ; $57ea: $9d
    cp h                                          ; $57eb: $bc
    sbc a                                         ; $57ec: $9f
    cp a                                          ; $57ed: $bf
    sbc l                                         ; $57ee: $9d
    cp h                                          ; $57ef: $bc
    rst $38                                       ; $57f0: $ff
    nop                                           ; $57f1: $00
    ei                                            ; $57f2: $fb
    inc b                                         ; $57f3: $04
    rst $38                                       ; $57f4: $ff
    nop                                           ; $57f5: $00
    ei                                            ; $57f6: $fb
    inc b                                         ; $57f7: $04
    rst $38                                       ; $57f8: $ff
    nop                                           ; $57f9: $00
    ei                                            ; $57fa: $fb
    inc b                                         ; $57fb: $04
    rst $38                                       ; $57fc: $ff
    nop                                           ; $57fd: $00
    ei                                            ; $57fe: $fb
    inc b                                         ; $57ff: $04
    db $e4                                        ; $5800: $e4
    db $db                                        ; $5801: $db
    ld b, h                                       ; $5802: $44
    ei                                            ; $5803: $fb
    call nz, Call_00c_44fb                        ; $5804: $c4 $fb $44
    ei                                            ; $5807: $fb
    call z, Call_00c_58f3                         ; $5808: $cc $f3 $58
    rst $20                                       ; $580b: $e7
    pop af                                        ; $580c: $f1
    adc $63                                       ; $580d: $ce $63
    call c, $00c0                                 ; $580f: $dc $c0 $00
    ret nz                                        ; $5812: $c0

    nop                                           ; $5813: $00
    ret nz                                        ; $5814: $c0

    nop                                           ; $5815: $00
    ret nz                                        ; $5816: $c0

    nop                                           ; $5817: $00
    ret nz                                        ; $5818: $c0

    nop                                           ; $5819: $00
    ret nz                                        ; $581a: $c0

    nop                                           ; $581b: $00
    ret nz                                        ; $581c: $c0

    nop                                           ; $581d: $00
    ret nz                                        ; $581e: $c0

    nop                                           ; $581f: $00
    sub d                                         ; $5820: $92
    ld l, l                                       ; $5821: $6d
    sub d                                         ; $5822: $92
    ld l, l                                       ; $5823: $6d
    sub d                                         ; $5824: $92
    ld l, l                                       ; $5825: $6d
    sub d                                         ; $5826: $92
    ld l, l                                       ; $5827: $6d
    sub d                                         ; $5828: $92
    ld l, l                                       ; $5829: $6d
    sub d                                         ; $582a: $92
    ld l, l                                       ; $582b: $6d
    sub d                                         ; $582c: $92
    ld l, l                                       ; $582d: $6d
    ld [de], a                                    ; $582e: $12
    db $ed                                        ; $582f: $ed
    nop                                           ; $5830: $00
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    nop                                           ; $5833: $00
    nop                                           ; $5834: $00
    nop                                           ; $5835: $00
    nop                                           ; $5836: $00
    nop                                           ; $5837: $00
    nop                                           ; $5838: $00
    nop                                           ; $5839: $00
    nop                                           ; $583a: $00
    nop                                           ; $583b: $00
    nop                                           ; $583c: $00
    nop                                           ; $583d: $00
    nop                                           ; $583e: $00
    nop                                           ; $583f: $00
    ld c, c                                       ; $5840: $49
    or [hl]                                       ; $5841: $b6
    ld c, c                                       ; $5842: $49
    or [hl]                                       ; $5843: $b6
    ld c, c                                       ; $5844: $49
    or [hl]                                       ; $5845: $b6
    ld c, c                                       ; $5846: $49
    or [hl]                                       ; $5847: $b6
    ld c, c                                       ; $5848: $49
    or [hl]                                       ; $5849: $b6
    ld c, c                                       ; $584a: $49
    or [hl]                                       ; $584b: $b6
    ld c, c                                       ; $584c: $49
    or [hl]                                       ; $584d: $b6
    ld c, c                                       ; $584e: $49
    or [hl]                                       ; $584f: $b6
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
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
    push af                                       ; $5860: $f5
    ld [hl], e                                    ; $5861: $73
    and l                                         ; $5862: $a5
    inc hl                                        ; $5863: $23
    ld c, l                                       ; $5864: $4d
    add e                                         ; $5865: $83
    cp e                                          ; $5866: $bb
    rst RST_00                                    ; $5867: $c7
    add $ff                                       ; $5868: $c6 $ff
    ld a, l                                       ; $586a: $7d
    cp $83                                        ; $586b: $fe $83
    ld a, h                                       ; $586d: $7c
    rst $38                                       ; $586e: $ff
    nop                                           ; $586f: $00
    adc a                                         ; $5870: $8f
    ld [hl], c                                    ; $5871: $71
    rst RST_18                                    ; $5872: $df
    ld hl, $01ff                                  ; $5873: $21 $ff $01
    rst $38                                       ; $5876: $ff
    add e                                         ; $5877: $83
    rst $38                                       ; $5878: $ff
    add $fe                                       ; $5879: $c6 $fe
    ld a, h                                       ; $587b: $7c
    ld a, h                                       ; $587c: $7c
    nop                                           ; $587d: $00
    nop                                           ; $587e: $00
    nop                                           ; $587f: $00
    rst $38                                       ; $5880: $ff
    rst $38                                       ; $5881: $ff
    rst $38                                       ; $5882: $ff
    rst $38                                       ; $5883: $ff
    rst $38                                       ; $5884: $ff
    rst $38                                       ; $5885: $ff
    rst $38                                       ; $5886: $ff
    rst $38                                       ; $5887: $ff
    rst $38                                       ; $5888: $ff
    rst $38                                       ; $5889: $ff
    rst $38                                       ; $588a: $ff
    rst $38                                       ; $588b: $ff
    rst $38                                       ; $588c: $ff
    rst $38                                       ; $588d: $ff
    rst $38                                       ; $588e: $ff
    rst $38                                       ; $588f: $ff
    rst $38                                       ; $5890: $ff
    rst $38                                       ; $5891: $ff
    rst $38                                       ; $5892: $ff
    rst $38                                       ; $5893: $ff
    rst $38                                       ; $5894: $ff
    rst $38                                       ; $5895: $ff
    rst $38                                       ; $5896: $ff
    rst $38                                       ; $5897: $ff
    rst $38                                       ; $5898: $ff
    rst $38                                       ; $5899: $ff
    rst $38                                       ; $589a: $ff
    rst $38                                       ; $589b: $ff
    rst $38                                       ; $589c: $ff
    rst $38                                       ; $589d: $ff
    rst $38                                       ; $589e: $ff
    rst $38                                       ; $589f: $ff
    nop                                           ; $58a0: $00
    nop                                           ; $58a1: $00
    nop                                           ; $58a2: $00
    nop                                           ; $58a3: $00
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
    nop                                           ; $58b0: $00
    nop                                           ; $58b1: $00
    nop                                           ; $58b2: $00
    nop                                           ; $58b3: $00
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
    nop                                           ; $58c0: $00
    nop                                           ; $58c1: $00
    nop                                           ; $58c2: $00
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
    nop                                           ; $58ce: $00
    nop                                           ; $58cf: $00
    nop                                           ; $58d0: $00
    nop                                           ; $58d1: $00
    nop                                           ; $58d2: $00
    nop                                           ; $58d3: $00
    nop                                           ; $58d4: $00
    nop                                           ; $58d5: $00
    nop                                           ; $58d6: $00
    nop                                           ; $58d7: $00
    nop                                           ; $58d8: $00
    nop                                           ; $58d9: $00
    nop                                           ; $58da: $00
    nop                                           ; $58db: $00
    nop                                           ; $58dc: $00
    nop                                           ; $58dd: $00
    nop                                           ; $58de: $00
    nop                                           ; $58df: $00
    nop                                           ; $58e0: $00
    nop                                           ; $58e1: $00
    nop                                           ; $58e2: $00
    nop                                           ; $58e3: $00
    nop                                           ; $58e4: $00
    nop                                           ; $58e5: $00
    nop                                           ; $58e6: $00
    nop                                           ; $58e7: $00
    nop                                           ; $58e8: $00
    nop                                           ; $58e9: $00
    nop                                           ; $58ea: $00
    nop                                           ; $58eb: $00
    nop                                           ; $58ec: $00
    nop                                           ; $58ed: $00
    nop                                           ; $58ee: $00
    nop                                           ; $58ef: $00
    nop                                           ; $58f0: $00
    nop                                           ; $58f1: $00
    nop                                           ; $58f2: $00

Call_00c_58f3:
    nop                                           ; $58f3: $00
    nop                                           ; $58f4: $00
    nop                                           ; $58f5: $00
    nop                                           ; $58f6: $00
    nop                                           ; $58f7: $00
    nop                                           ; $58f8: $00
    nop                                           ; $58f9: $00
    nop                                           ; $58fa: $00
    nop                                           ; $58fb: $00
    nop                                           ; $58fc: $00
    nop                                           ; $58fd: $00
    nop                                           ; $58fe: $00
    nop                                           ; $58ff: $00
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
    nop                                           ; $590c: $00
    nop                                           ; $590d: $00
    nop                                           ; $590e: $00
    nop                                           ; $590f: $00
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
    nop                                           ; $591c: $00
    nop                                           ; $591d: $00
    nop                                           ; $591e: $00
    nop                                           ; $591f: $00
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    nop                                           ; $5922: $00
    nop                                           ; $5923: $00
    nop                                           ; $5924: $00
    nop                                           ; $5925: $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00
    nop                                           ; $592a: $00
    nop                                           ; $592b: $00
    nop                                           ; $592c: $00
    nop                                           ; $592d: $00
    nop                                           ; $592e: $00
    nop                                           ; $592f: $00
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    nop                                           ; $5933: $00
    nop                                           ; $5934: $00
    nop                                           ; $5935: $00
    nop                                           ; $5936: $00
    nop                                           ; $5937: $00
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    nop                                           ; $593a: $00
    nop                                           ; $593b: $00
    nop                                           ; $593c: $00
    nop                                           ; $593d: $00
    nop                                           ; $593e: $00
    nop                                           ; $593f: $00
    nop                                           ; $5940: $00
    nop                                           ; $5941: $00
    nop                                           ; $5942: $00
    nop                                           ; $5943: $00
    nop                                           ; $5944: $00
    nop                                           ; $5945: $00
    nop                                           ; $5946: $00
    nop                                           ; $5947: $00
    nop                                           ; $5948: $00
    nop                                           ; $5949: $00
    nop                                           ; $594a: $00
    nop                                           ; $594b: $00
    nop                                           ; $594c: $00
    nop                                           ; $594d: $00
    nop                                           ; $594e: $00
    nop                                           ; $594f: $00
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
    nop                                           ; $595c: $00
    nop                                           ; $595d: $00
    nop                                           ; $595e: $00
    nop                                           ; $595f: $00
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    nop                                           ; $5964: $00
    nop                                           ; $5965: $00
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    nop                                           ; $5968: $00
    nop                                           ; $5969: $00
    nop                                           ; $596a: $00
    nop                                           ; $596b: $00
    nop                                           ; $596c: $00
    nop                                           ; $596d: $00
    nop                                           ; $596e: $00
    nop                                           ; $596f: $00
    nop                                           ; $5970: $00
    nop                                           ; $5971: $00
    nop                                           ; $5972: $00
    nop                                           ; $5973: $00
    nop                                           ; $5974: $00
    nop                                           ; $5975: $00
    nop                                           ; $5976: $00
    nop                                           ; $5977: $00
    nop                                           ; $5978: $00
    nop                                           ; $5979: $00
    nop                                           ; $597a: $00
    nop                                           ; $597b: $00
    nop                                           ; $597c: $00
    nop                                           ; $597d: $00
    nop                                           ; $597e: $00
    nop                                           ; $597f: $00
    nop                                           ; $5980: $00
    nop                                           ; $5981: $00
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    nop                                           ; $5984: $00
    nop                                           ; $5985: $00
    nop                                           ; $5986: $00
    nop                                           ; $5987: $00
    nop                                           ; $5988: $00
    nop                                           ; $5989: $00
    nop                                           ; $598a: $00
    nop                                           ; $598b: $00
    nop                                           ; $598c: $00
    nop                                           ; $598d: $00
    nop                                           ; $598e: $00
    nop                                           ; $598f: $00
    nop                                           ; $5990: $00
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    nop                                           ; $5993: $00
    nop                                           ; $5994: $00
    nop                                           ; $5995: $00
    nop                                           ; $5996: $00
    nop                                           ; $5997: $00
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    nop                                           ; $599a: $00
    nop                                           ; $599b: $00
    nop                                           ; $599c: $00
    nop                                           ; $599d: $00
    nop                                           ; $599e: $00
    nop                                           ; $599f: $00
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
    nop                                           ; $59ac: $00
    nop                                           ; $59ad: $00
    nop                                           ; $59ae: $00
    nop                                           ; $59af: $00
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
    nop                                           ; $59bc: $00
    nop                                           ; $59bd: $00
    nop                                           ; $59be: $00
    nop                                           ; $59bf: $00
    nop                                           ; $59c0: $00
    nop                                           ; $59c1: $00
    nop                                           ; $59c2: $00
    nop                                           ; $59c3: $00
    nop                                           ; $59c4: $00
    nop                                           ; $59c5: $00
    nop                                           ; $59c6: $00
    nop                                           ; $59c7: $00
    nop                                           ; $59c8: $00
    nop                                           ; $59c9: $00
    nop                                           ; $59ca: $00
    nop                                           ; $59cb: $00
    nop                                           ; $59cc: $00
    nop                                           ; $59cd: $00
    nop                                           ; $59ce: $00
    nop                                           ; $59cf: $00
    nop                                           ; $59d0: $00
    nop                                           ; $59d1: $00
    nop                                           ; $59d2: $00
    nop                                           ; $59d3: $00
    nop                                           ; $59d4: $00
    nop                                           ; $59d5: $00
    nop                                           ; $59d6: $00
    nop                                           ; $59d7: $00
    nop                                           ; $59d8: $00
    nop                                           ; $59d9: $00
    nop                                           ; $59da: $00
    nop                                           ; $59db: $00
    nop                                           ; $59dc: $00
    nop                                           ; $59dd: $00
    nop                                           ; $59de: $00
    nop                                           ; $59df: $00
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
    inc h                                         ; $6030: $24
    inc d                                         ; $6031: $14
    inc h                                         ; $6032: $24
    inc d                                         ; $6033: $14
    inc h                                         ; $6034: $24
    inc d                                         ; $6035: $14
    inc h                                         ; $6036: $24
    inc d                                         ; $6037: $14
    inc h                                         ; $6038: $24
    inc d                                         ; $6039: $14
    inc h                                         ; $603a: $24
    inc d                                         ; $603b: $14
    inc h                                         ; $603c: $24
    inc d                                         ; $603d: $14
    inc h                                         ; $603e: $24
    inc d                                         ; $603f: $14
    inc h                                         ; $6040: $24
    inc d                                         ; $6041: $14
    ld [hl+], a                                   ; $6042: $22
    inc d                                         ; $6043: $14
    ld [bc], a                                    ; $6044: $02
    inc d                                         ; $6045: $14
    inc bc                                        ; $6046: $03
    inc d                                         ; $6047: $14
    inc b                                         ; $6048: $04
    inc d                                         ; $6049: $14
    inc b                                         ; $604a: $04
    inc d                                         ; $604b: $14
    inc b                                         ; $604c: $04
    inc d                                         ; $604d: $14
    inc b                                         ; $604e: $04
    inc d                                         ; $604f: $14
    inc b                                         ; $6050: $04
    inc d                                         ; $6051: $14
    inc b                                         ; $6052: $04
    inc d                                         ; $6053: $14
    inc b                                         ; $6054: $04
    inc d                                         ; $6055: $14
    inc b                                         ; $6056: $04
    inc d                                         ; $6057: $14
    inc b                                         ; $6058: $04
    inc d                                         ; $6059: $14
    inc b                                         ; $605a: $04
    inc d                                         ; $605b: $14
    inc b                                         ; $605c: $04
    inc d                                         ; $605d: $14
    inc b                                         ; $605e: $04
    inc d                                         ; $605f: $14
    inc h                                         ; $6060: $24
    inc d                                         ; $6061: $14
    inc h                                         ; $6062: $24
    inc d                                         ; $6063: $14
    inc h                                         ; $6064: $24
    inc d                                         ; $6065: $14
    inc h                                         ; $6066: $24
    inc d                                         ; $6067: $14
    inc h                                         ; $6068: $24
    inc d                                         ; $6069: $14
    inc h                                         ; $606a: $24
    inc d                                         ; $606b: $14
    inc h                                         ; $606c: $24
    inc d                                         ; $606d: $14
    inc h                                         ; $606e: $24
    inc d                                         ; $606f: $14
    dec b                                         ; $6070: $05
    inc d                                         ; $6071: $14
    dec b                                         ; $6072: $05
    inc d                                         ; $6073: $14
    ld b, $14                                     ; $6074: $06 $14
    rlca                                          ; $6076: $07
    inc d                                         ; $6077: $14
    rlca                                          ; $6078: $07
    inc d                                         ; $6079: $14
    rlca                                          ; $607a: $07
    inc d                                         ; $607b: $14
    rlca                                          ; $607c: $07
    inc d                                         ; $607d: $14
    rlca                                          ; $607e: $07
    inc d                                         ; $607f: $14
    ld [$0914], sp                                ; $6080: $08 $14 $09
    inc d                                         ; $6083: $14
    ld a, [bc]                                    ; $6084: $0a
    inc d                                         ; $6085: $14
    dec bc                                        ; $6086: $0b
    inc d                                         ; $6087: $14
    inc c                                         ; $6088: $0c
    inc d                                         ; $6089: $14
    inc c                                         ; $608a: $0c
    inc d                                         ; $608b: $14
    inc c                                         ; $608c: $0c
    inc d                                         ; $608d: $14
    inc c                                         ; $608e: $0c
    inc d                                         ; $608f: $14
    inc c                                         ; $6090: $0c
    inc d                                         ; $6091: $14
    inc c                                         ; $6092: $0c
    inc d                                         ; $6093: $14
    inc c                                         ; $6094: $0c
    inc d                                         ; $6095: $14
    inc c                                         ; $6096: $0c
    inc d                                         ; $6097: $14
    inc c                                         ; $6098: $0c
    inc d                                         ; $6099: $14
    inc c                                         ; $609a: $0c
    inc d                                         ; $609b: $14
    inc c                                         ; $609c: $0c
    inc d                                         ; $609d: $14
    inc c                                         ; $609e: $0c
    inc d                                         ; $609f: $14
    ld [hl], c                                    ; $60a0: $71
    inc d                                         ; $60a1: $14
    ld [hl], d                                    ; $60a2: $72
    inc d                                         ; $60a3: $14
    ld [hl], e                                    ; $60a4: $73
    inc d                                         ; $60a5: $14
    dec b                                         ; $60a6: $05
    inc d                                         ; $60a7: $14
    dec b                                         ; $60a8: $05
    inc d                                         ; $60a9: $14
    dec b                                         ; $60aa: $05
    inc d                                         ; $60ab: $14
    dec b                                         ; $60ac: $05
    inc d                                         ; $60ad: $14
    ld [hl], h                                    ; $60ae: $74
    inc d                                         ; $60af: $14
    dec c                                         ; $60b0: $0d
    inc d                                         ; $60b1: $14
    ld c, $14                                     ; $60b2: $0e $14
    rrca                                          ; $60b4: $0f
    db $10                                        ; $60b5: $10
    rrca                                          ; $60b6: $0f
    db $10                                        ; $60b7: $10
    db $10                                        ; $60b8: $10
    db $10                                        ; $60b9: $10
    db $10                                        ; $60ba: $10
    db $10                                        ; $60bb: $10
    rrca                                          ; $60bc: $0f
    db $10                                        ; $60bd: $10
    rrca                                          ; $60be: $0f
    db $10                                        ; $60bf: $10
    rrca                                          ; $60c0: $0f
    db $10                                        ; $60c1: $10
    rrca                                          ; $60c2: $0f
    db $10                                        ; $60c3: $10
    db $10                                        ; $60c4: $10
    db $10                                        ; $60c5: $10
    db $10                                        ; $60c6: $10
    db $10                                        ; $60c7: $10
    rrca                                          ; $60c8: $0f
    db $10                                        ; $60c9: $10
    rrca                                          ; $60ca: $0f
    db $10                                        ; $60cb: $10
    rrca                                          ; $60cc: $0f
    db $10                                        ; $60cd: $10
    rrca                                          ; $60ce: $0f
    db $10                                        ; $60cf: $10
    rrca                                          ; $60d0: $0f
    db $10                                        ; $60d1: $10
    rrca                                          ; $60d2: $0f
    db $10                                        ; $60d3: $10
    rrca                                          ; $60d4: $0f
    db $10                                        ; $60d5: $10
    rrca                                          ; $60d6: $0f
    db $10                                        ; $60d7: $10
    rrca                                          ; $60d8: $0f
    db $10                                        ; $60d9: $10
    rrca                                          ; $60da: $0f
    db $10                                        ; $60db: $10
    rrca                                          ; $60dc: $0f
    db $10                                        ; $60dd: $10
    rrca                                          ; $60de: $0f
    db $10                                        ; $60df: $10
    rrca                                          ; $60e0: $0f
    db $10                                        ; $60e1: $10
    rrca                                          ; $60e2: $0f
    db $10                                        ; $60e3: $10
    rrca                                          ; $60e4: $0f
    db $10                                        ; $60e5: $10
    db $10                                        ; $60e6: $10
    db $10                                        ; $60e7: $10
    ld [hl], l                                    ; $60e8: $75
    db $10                                        ; $60e9: $10
    halt                                          ; $60ea: $76
    db $10                                        ; $60eb: $10
    ld [hl], a                                    ; $60ec: $77
    inc d                                         ; $60ed: $14
    dec c                                         ; $60ee: $0d
    ld d, h                                       ; $60ef: $54
    ld de, $1214                                  ; $60f0: $11 $14 $12
    db $10                                        ; $60f3: $10
    inc de                                        ; $60f4: $13
    db $10                                        ; $60f5: $10
    inc de                                        ; $60f6: $13
    db $10                                        ; $60f7: $10
    inc de                                        ; $60f8: $13
    db $10                                        ; $60f9: $10
    inc de                                        ; $60fa: $13
    db $10                                        ; $60fb: $10
    inc de                                        ; $60fc: $13
    db $10                                        ; $60fd: $10
    inc de                                        ; $60fe: $13
    db $10                                        ; $60ff: $10
    inc de                                        ; $6100: $13
    db $10                                        ; $6101: $10
    inc d                                         ; $6102: $14
    db $10                                        ; $6103: $10
    dec d                                         ; $6104: $15
    db $10                                        ; $6105: $10
    ld d, $10                                     ; $6106: $16 $10
    rla                                           ; $6108: $17
    db $10                                        ; $6109: $10
    jr jr_00c_611c                                ; $610a: $18 $10

    add hl, de                                    ; $610c: $19
    db $10                                        ; $610d: $10
    ld a, [de]                                    ; $610e: $1a
    db $10                                        ; $610f: $10
    ld a, b                                       ; $6110: $78
    db $10                                        ; $6111: $10
    ld a, c                                       ; $6112: $79
    db $10                                        ; $6113: $10
    ld a, d                                       ; $6114: $7a
    db $10                                        ; $6115: $10
    ld a, e                                       ; $6116: $7b
    db $10                                        ; $6117: $10
    ld a, h                                       ; $6118: $7c
    db $10                                        ; $6119: $10
    ld a, l                                       ; $611a: $7d
    db $10                                        ; $611b: $10

jr_00c_611c:
    ld a, [hl]                                    ; $611c: $7e
    db $10                                        ; $611d: $10
    ld a, a                                       ; $611e: $7f
    db $10                                        ; $611f: $10
    add b                                         ; $6120: $80
    db $10                                        ; $6121: $10
    add c                                         ; $6122: $81
    db $10                                        ; $6123: $10
    ld bc, $1310                                  ; $6124: $01 $10 $13
    db $10                                        ; $6127: $10
    inc de                                        ; $6128: $13
    db $10                                        ; $6129: $10
    inc de                                        ; $612a: $13
    db $10                                        ; $612b: $10
    add d                                         ; $612c: $82
    db $10                                        ; $612d: $10
    ld de, $1b54                                  ; $612e: $11 $54 $1b
    inc d                                         ; $6131: $14
    inc e                                         ; $6132: $1c
    db $10                                        ; $6133: $10
    dec e                                         ; $6134: $1d
    db $10                                        ; $6135: $10
    dec e                                         ; $6136: $1d
    db $10                                        ; $6137: $10
    dec e                                         ; $6138: $1d
    db $10                                        ; $6139: $10
    ld e, $10                                     ; $613a: $1e $10
    rra                                           ; $613c: $1f
    db $10                                        ; $613d: $10
    rra                                           ; $613e: $1f
    db $10                                        ; $613f: $10
    rra                                           ; $6140: $1f
    db $10                                        ; $6141: $10
    jr nz, jr_00c_6154                            ; $6142: $20 $10

    jr nz, jr_00c_6156                            ; $6144: $20 $10

    jr nz, jr_00c_6158                            ; $6146: $20 $10

    jr nz, jr_00c_615a                            ; $6148: $20 $10

    jr nz, jr_00c_615c                            ; $614a: $20 $10

    jr nz, jr_00c_615e                            ; $614c: $20 $10

    jr nz, jr_00c_6160                            ; $614e: $20 $10

    jr nz, jr_00c_6162                            ; $6150: $20 $10

    jr nz, jr_00c_6164                            ; $6152: $20 $10

jr_00c_6154:
    jr nz, jr_00c_6166                            ; $6154: $20 $10

jr_00c_6156:
    jr nz, jr_00c_6168                            ; $6156: $20 $10

jr_00c_6158:
    jr nz, jr_00c_616a                            ; $6158: $20 $10

jr_00c_615a:
    jr nz, jr_00c_616c                            ; $615a: $20 $10

jr_00c_615c:
    jr nz, jr_00c_616e                            ; $615c: $20 $10

jr_00c_615e:
    jr nz, jr_00c_6170                            ; $615e: $20 $10

jr_00c_6160:
    jr nz, @+$12                                  ; $6160: $20 $10

jr_00c_6162:
    jr nz, jr_00c_6174                            ; $6162: $20 $10

jr_00c_6164:
    add e                                         ; $6164: $83
    db $10                                        ; $6165: $10

jr_00c_6166:
    dec e                                         ; $6166: $1d
    db $10                                        ; $6167: $10

jr_00c_6168:
    dec e                                         ; $6168: $1d
    db $10                                        ; $6169: $10

jr_00c_616a:
    dec e                                         ; $616a: $1d
    db $10                                        ; $616b: $10

jr_00c_616c:
    add d                                         ; $616c: $82
    db $10                                        ; $616d: $10

jr_00c_616e:
    dec de                                        ; $616e: $1b
    ld d, h                                       ; $616f: $54

jr_00c_6170:
    ld hl, $1214                                  ; $6170: $21 $14 $12
    db $10                                        ; $6173: $10

jr_00c_6174:
    ld bc, $0110                                  ; $6174: $01 $10 $01
    db $10                                        ; $6177: $10
    ld bc, b00_Unknown_State_04                   ; $6178: $01 $10 $23
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
    add d                                         ; $61a4: $82
    ld d, b                                       ; $61a5: $50
    ld bc, $0110                                  ; $61a6: $01 $10 $01
    db $10                                        ; $61a9: $10
    ld bc, $8210                                  ; $61aa: $01 $10 $82
    db $10                                        ; $61ad: $10
    ld hl, $2554                                  ; $61ae: $21 $54 $25
    inc d                                         ; $61b1: $14
    ld [de], a                                    ; $61b2: $12
    db $10                                        ; $61b3: $10
    ld bc, $0110                                  ; $61b4: $01 $10 $01
    db $10                                        ; $61b7: $10
    ld bc, b00_Unknown_State_04                   ; $61b8: $01 $10 $23
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
    add d                                         ; $61e4: $82
    ld d, b                                       ; $61e5: $50
    ld bc, $0110                                  ; $61e6: $01 $10 $01
    db $10                                        ; $61e9: $10
    ld bc, $8210                                  ; $61ea: $01 $10 $82
    db $10                                        ; $61ed: $10
    ld hl, $2654                                  ; $61ee: $21 $54 $26
    inc d                                         ; $61f1: $14
    ld [de], a                                    ; $61f2: $12
    db $10                                        ; $61f3: $10
    ld bc, $0110                                  ; $61f4: $01 $10 $01
    db $10                                        ; $61f7: $10
    ld bc, b00_Unknown_State_04                   ; $61f8: $01 $10 $23
    stop                                          ; $61fb: $10 $00
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
    add d                                         ; $6224: $82
    ld d, b                                       ; $6225: $50
    ld bc, $0110                                  ; $6226: $01 $10 $01
    db $10                                        ; $6229: $10
    ld bc, $8210                                  ; $622a: $01 $10 $82
    db $10                                        ; $622d: $10
    ld hl, $2754                                  ; $622e: $21 $54 $27
    inc d                                         ; $6231: $14
    ld [de], a                                    ; $6232: $12
    db $10                                        ; $6233: $10
    ld bc, $0110                                  ; $6234: $01 $10 $01
    db $10                                        ; $6237: $10
    ld bc, b00_Unknown_State_04                   ; $6238: $01 $10 $23
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
    add d                                         ; $6264: $82
    ld d, b                                       ; $6265: $50
    ld bc, $0110                                  ; $6266: $01 $10 $01
    db $10                                        ; $6269: $10
    ld bc, $8210                                  ; $626a: $01 $10 $82
    db $10                                        ; $626d: $10
    add h                                         ; $626e: $84
    inc d                                         ; $626f: $14
    jr z, jr_00c_6286                             ; $6270: $28 $14

    add hl, hl                                    ; $6272: $29
    db $10                                        ; $6273: $10
    ld bc, $0110                                  ; $6274: $01 $10 $01
    db $10                                        ; $6277: $10
    ld bc, b00_Unknown_State_04                   ; $6278: $01 $10 $23
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

jr_00c_6286:
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
    add d                                         ; $62a4: $82
    ld d, b                                       ; $62a5: $50
    ld bc, $0110                                  ; $62a6: $01 $10 $01
    db $10                                        ; $62a9: $10
    ld bc, $8210                                  ; $62aa: $01 $10 $82
    db $10                                        ; $62ad: $10
    add l                                         ; $62ae: $85
    inc d                                         ; $62af: $14
    jr z, jr_00c_62c6                             ; $62b0: $28 $14

    add hl, hl                                    ; $62b2: $29
    db $10                                        ; $62b3: $10
    ld bc, $0110                                  ; $62b4: $01 $10 $01
    db $10                                        ; $62b7: $10
    ld bc, b00_Unknown_State_04                   ; $62b8: $01 $10 $23
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

jr_00c_62c6:
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
    add d                                         ; $62e4: $82
    ld d, b                                       ; $62e5: $50
    ld bc, $0110                                  ; $62e6: $01 $10 $01
    db $10                                        ; $62e9: $10
    ld bc, $8210                                  ; $62ea: $01 $10 $82
    db $10                                        ; $62ed: $10
    add [hl]                                      ; $62ee: $86
    inc d                                         ; $62ef: $14
    jr z, jr_00c_6306                             ; $62f0: $28 $14

    ld [de], a                                    ; $62f2: $12
    db $10                                        ; $62f3: $10
    ld a, [hl+]                                   ; $62f4: $2a
    db $10                                        ; $62f5: $10
    dec hl                                        ; $62f6: $2b
    db $10                                        ; $62f7: $10
    ld bc, b00_Unknown_State_04                   ; $62f8: $01 $10 $23
    stop                                          ; $62fb: $10 $00
    inc d                                         ; $62fd: $14
    nop                                           ; $62fe: $00
    inc d                                         ; $62ff: $14
    nop                                           ; $6300: $00
    inc d                                         ; $6301: $14
    nop                                           ; $6302: $00
    inc d                                         ; $6303: $14
    nop                                           ; $6304: $00
    inc d                                         ; $6305: $14

jr_00c_6306:
    nop                                           ; $6306: $00
    inc d                                         ; $6307: $14
    nop                                           ; $6308: $00
    inc d                                         ; $6309: $14
    nop                                           ; $630a: $00
    inc d                                         ; $630b: $14
    nop                                           ; $630c: $00
    inc d                                         ; $630d: $14
    nop                                           ; $630e: $00
    inc d                                         ; $630f: $14
    nop                                           ; $6310: $00
    inc d                                         ; $6311: $14
    nop                                           ; $6312: $00
    inc d                                         ; $6313: $14
    nop                                           ; $6314: $00
    inc d                                         ; $6315: $14
    nop                                           ; $6316: $00
    inc d                                         ; $6317: $14
    nop                                           ; $6318: $00
    inc d                                         ; $6319: $14
    nop                                           ; $631a: $00
    inc d                                         ; $631b: $14
    nop                                           ; $631c: $00
    inc d                                         ; $631d: $14
    nop                                           ; $631e: $00
    inc d                                         ; $631f: $14
    nop                                           ; $6320: $00
    inc d                                         ; $6321: $14
    nop                                           ; $6322: $00
    inc d                                         ; $6323: $14
    add d                                         ; $6324: $82
    ld d, b                                       ; $6325: $50
    ld bc, $0110                                  ; $6326: $01 $10 $01
    db $10                                        ; $6329: $10
    ld bc, $8210                                  ; $632a: $01 $10 $82
    db $10                                        ; $632d: $10
    add a                                         ; $632e: $87
    inc d                                         ; $632f: $14
    inc l                                         ; $6330: $2c
    inc d                                         ; $6331: $14
    dec l                                         ; $6332: $2d
    db $10                                        ; $6333: $10
    ld l, $10                                     ; $6334: $2e $10
    cpl                                           ; $6336: $2f
    db $10                                        ; $6337: $10
    jr nc, jr_00c_634a                            ; $6338: $30 $10

    ld sp, $0010                                  ; $633a: $31 $10 $00
    inc d                                         ; $633d: $14
    nop                                           ; $633e: $00
    inc d                                         ; $633f: $14
    nop                                           ; $6340: $00
    inc d                                         ; $6341: $14
    nop                                           ; $6342: $00
    inc d                                         ; $6343: $14
    nop                                           ; $6344: $00
    inc d                                         ; $6345: $14
    nop                                           ; $6346: $00
    inc d                                         ; $6347: $14
    nop                                           ; $6348: $00
    inc d                                         ; $6349: $14

jr_00c_634a:
    nop                                           ; $634a: $00
    inc d                                         ; $634b: $14
    nop                                           ; $634c: $00
    inc d                                         ; $634d: $14
    nop                                           ; $634e: $00
    inc d                                         ; $634f: $14
    nop                                           ; $6350: $00
    inc d                                         ; $6351: $14
    nop                                           ; $6352: $00
    inc d                                         ; $6353: $14
    nop                                           ; $6354: $00
    inc d                                         ; $6355: $14
    nop                                           ; $6356: $00
    inc d                                         ; $6357: $14
    nop                                           ; $6358: $00
    inc d                                         ; $6359: $14
    nop                                           ; $635a: $00
    inc d                                         ; $635b: $14
    nop                                           ; $635c: $00
    inc d                                         ; $635d: $14
    nop                                           ; $635e: $00
    inc d                                         ; $635f: $14
    nop                                           ; $6360: $00
    inc d                                         ; $6361: $14
    nop                                           ; $6362: $00
    inc d                                         ; $6363: $14
    add d                                         ; $6364: $82
    ld d, b                                       ; $6365: $50
    ld bc, $0110                                  ; $6366: $01 $10 $01
    db $10                                        ; $6369: $10
    ld bc, $8210                                  ; $636a: $01 $10 $82
    db $10                                        ; $636d: $10
    adc b                                         ; $636e: $88
    inc d                                         ; $636f: $14
    ld [hl-], a                                   ; $6370: $32
    inc d                                         ; $6371: $14
    ld [de], a                                    ; $6372: $12
    db $10                                        ; $6373: $10
    ld bc, $0110                                  ; $6374: $01 $10 $01
    db $10                                        ; $6377: $10
    ld bc, b00_Unknown_State_04                   ; $6378: $01 $10 $23
    stop                                          ; $637b: $10 $00
    inc d                                         ; $637d: $14
    nop                                           ; $637e: $00
    inc d                                         ; $637f: $14
    nop                                           ; $6380: $00
    inc d                                         ; $6381: $14
    nop                                           ; $6382: $00
    inc d                                         ; $6383: $14
    nop                                           ; $6384: $00
    inc d                                         ; $6385: $14
    nop                                           ; $6386: $00
    inc d                                         ; $6387: $14
    nop                                           ; $6388: $00
    inc d                                         ; $6389: $14
    nop                                           ; $638a: $00
    inc d                                         ; $638b: $14
    nop                                           ; $638c: $00
    inc d                                         ; $638d: $14
    nop                                           ; $638e: $00
    inc d                                         ; $638f: $14
    nop                                           ; $6390: $00
    inc d                                         ; $6391: $14
    nop                                           ; $6392: $00
    inc d                                         ; $6393: $14
    nop                                           ; $6394: $00
    inc d                                         ; $6395: $14
    nop                                           ; $6396: $00
    inc d                                         ; $6397: $14
    nop                                           ; $6398: $00
    inc d                                         ; $6399: $14
    nop                                           ; $639a: $00
    inc d                                         ; $639b: $14
    nop                                           ; $639c: $00
    inc d                                         ; $639d: $14
    nop                                           ; $639e: $00
    inc d                                         ; $639f: $14
    nop                                           ; $63a0: $00
    inc d                                         ; $63a1: $14
    nop                                           ; $63a2: $00
    inc d                                         ; $63a3: $14
    add d                                         ; $63a4: $82
    ld d, b                                       ; $63a5: $50
    ld bc, $0110                                  ; $63a6: $01 $10 $01
    db $10                                        ; $63a9: $10
    ld bc, $8210                                  ; $63aa: $01 $10 $82
    db $10                                        ; $63ad: $10
    adc c                                         ; $63ae: $89
    inc d                                         ; $63af: $14
    jr z, jr_00c_63c6                             ; $63b0: $28 $14

    ld [de], a                                    ; $63b2: $12
    db $10                                        ; $63b3: $10
    ld bc, $0110                                  ; $63b4: $01 $10 $01
    db $10                                        ; $63b7: $10
    ld bc, b00_Unknown_State_04                   ; $63b8: $01 $10 $23
    stop                                          ; $63bb: $10 $00
    inc d                                         ; $63bd: $14
    nop                                           ; $63be: $00
    inc d                                         ; $63bf: $14
    nop                                           ; $63c0: $00
    inc d                                         ; $63c1: $14
    nop                                           ; $63c2: $00
    inc d                                         ; $63c3: $14
    nop                                           ; $63c4: $00
    inc d                                         ; $63c5: $14

jr_00c_63c6:
    nop                                           ; $63c6: $00
    inc d                                         ; $63c7: $14
    nop                                           ; $63c8: $00
    inc d                                         ; $63c9: $14
    nop                                           ; $63ca: $00
    inc d                                         ; $63cb: $14
    nop                                           ; $63cc: $00
    inc d                                         ; $63cd: $14
    nop                                           ; $63ce: $00
    inc d                                         ; $63cf: $14
    nop                                           ; $63d0: $00
    inc d                                         ; $63d1: $14
    nop                                           ; $63d2: $00
    inc d                                         ; $63d3: $14
    nop                                           ; $63d4: $00
    inc d                                         ; $63d5: $14
    nop                                           ; $63d6: $00
    inc d                                         ; $63d7: $14
    nop                                           ; $63d8: $00
    inc d                                         ; $63d9: $14
    nop                                           ; $63da: $00
    inc d                                         ; $63db: $14
    nop                                           ; $63dc: $00
    inc d                                         ; $63dd: $14
    nop                                           ; $63de: $00
    inc d                                         ; $63df: $14
    nop                                           ; $63e0: $00
    inc d                                         ; $63e1: $14
    nop                                           ; $63e2: $00
    inc d                                         ; $63e3: $14
    add d                                         ; $63e4: $82
    ld d, b                                       ; $63e5: $50
    ld bc, $0110                                  ; $63e6: $01 $10 $01
    db $10                                        ; $63e9: $10
    ld bc, $8210                                  ; $63ea: $01 $10 $82
    db $10                                        ; $63ed: $10
    jr z, jr_00c_6444                             ; $63ee: $28 $54

    jr z, jr_00c_6406                             ; $63f0: $28 $14

    ld [de], a                                    ; $63f2: $12
    db $10                                        ; $63f3: $10
    ld bc, $0110                                  ; $63f4: $01 $10 $01
    db $10                                        ; $63f7: $10
    ld bc, b00_Unknown_State_04                   ; $63f8: $01 $10 $23
    stop                                          ; $63fb: $10 $00
    inc d                                         ; $63fd: $14
    nop                                           ; $63fe: $00
    inc d                                         ; $63ff: $14
    nop                                           ; $6400: $00
    inc d                                         ; $6401: $14
    nop                                           ; $6402: $00
    inc d                                         ; $6403: $14
    nop                                           ; $6404: $00
    inc d                                         ; $6405: $14

jr_00c_6406:
    nop                                           ; $6406: $00
    inc d                                         ; $6407: $14
    nop                                           ; $6408: $00
    inc d                                         ; $6409: $14
    nop                                           ; $640a: $00
    inc d                                         ; $640b: $14
    nop                                           ; $640c: $00
    inc d                                         ; $640d: $14
    nop                                           ; $640e: $00
    inc d                                         ; $640f: $14
    nop                                           ; $6410: $00
    inc d                                         ; $6411: $14
    nop                                           ; $6412: $00
    inc d                                         ; $6413: $14
    nop                                           ; $6414: $00
    inc d                                         ; $6415: $14
    nop                                           ; $6416: $00
    inc d                                         ; $6417: $14
    nop                                           ; $6418: $00
    inc d                                         ; $6419: $14
    nop                                           ; $641a: $00
    inc d                                         ; $641b: $14
    nop                                           ; $641c: $00
    inc d                                         ; $641d: $14
    nop                                           ; $641e: $00
    inc d                                         ; $641f: $14
    nop                                           ; $6420: $00
    inc d                                         ; $6421: $14
    nop                                           ; $6422: $00
    inc d                                         ; $6423: $14
    add d                                         ; $6424: $82
    ld d, b                                       ; $6425: $50
    ld bc, $0110                                  ; $6426: $01 $10 $01
    db $10                                        ; $6429: $10
    ld bc, $8210                                  ; $642a: $01 $10 $82
    db $10                                        ; $642d: $10
    jr z, jr_00c_6484                             ; $642e: $28 $54

    inc l                                         ; $6430: $2c
    inc d                                         ; $6431: $14
    ld [de], a                                    ; $6432: $12
    db $10                                        ; $6433: $10
    ld bc, $0110                                  ; $6434: $01 $10 $01
    db $10                                        ; $6437: $10
    ld bc, b00_Unknown_State_04                   ; $6438: $01 $10 $23
    stop                                          ; $643b: $10 $00
    inc d                                         ; $643d: $14
    nop                                           ; $643e: $00
    inc d                                         ; $643f: $14
    nop                                           ; $6440: $00
    inc d                                         ; $6441: $14
    nop                                           ; $6442: $00
    inc d                                         ; $6443: $14

jr_00c_6444:
    nop                                           ; $6444: $00
    inc d                                         ; $6445: $14
    nop                                           ; $6446: $00
    inc d                                         ; $6447: $14
    nop                                           ; $6448: $00
    inc d                                         ; $6449: $14
    nop                                           ; $644a: $00
    inc d                                         ; $644b: $14
    nop                                           ; $644c: $00
    inc d                                         ; $644d: $14
    nop                                           ; $644e: $00
    inc d                                         ; $644f: $14
    nop                                           ; $6450: $00
    inc d                                         ; $6451: $14
    nop                                           ; $6452: $00
    inc d                                         ; $6453: $14
    nop                                           ; $6454: $00
    inc d                                         ; $6455: $14
    nop                                           ; $6456: $00
    inc d                                         ; $6457: $14
    nop                                           ; $6458: $00
    inc d                                         ; $6459: $14
    nop                                           ; $645a: $00
    inc d                                         ; $645b: $14
    nop                                           ; $645c: $00
    inc d                                         ; $645d: $14
    nop                                           ; $645e: $00
    inc d                                         ; $645f: $14
    nop                                           ; $6460: $00
    inc d                                         ; $6461: $14
    nop                                           ; $6462: $00
    inc d                                         ; $6463: $14
    add d                                         ; $6464: $82
    ld d, b                                       ; $6465: $50
    ld bc, $0110                                  ; $6466: $01 $10 $01
    db $10                                        ; $6469: $10
    ld bc, $8210                                  ; $646a: $01 $10 $82
    db $10                                        ; $646d: $10
    jr z, jr_00c_64c4                             ; $646e: $28 $54

    ld [hl-], a                                   ; $6470: $32
    inc d                                         ; $6471: $14
    ld [de], a                                    ; $6472: $12
    db $10                                        ; $6473: $10
    ld bc, $0110                                  ; $6474: $01 $10 $01
    db $10                                        ; $6477: $10
    ld bc, b00_Unknown_State_04                   ; $6478: $01 $10 $23
    stop                                          ; $647b: $10 $00
    inc d                                         ; $647d: $14
    nop                                           ; $647e: $00
    inc d                                         ; $647f: $14
    nop                                           ; $6480: $00
    inc d                                         ; $6481: $14
    nop                                           ; $6482: $00
    inc d                                         ; $6483: $14

jr_00c_6484:
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
    add d                                         ; $64a4: $82
    ld d, b                                       ; $64a5: $50
    ld bc, $0110                                  ; $64a6: $01 $10 $01
    db $10                                        ; $64a9: $10
    ld bc, $8210                                  ; $64aa: $01 $10 $82
    db $10                                        ; $64ad: $10
    jr z, jr_00c_6504                             ; $64ae: $28 $54

    jr z, jr_00c_64c6                             ; $64b0: $28 $14

    ld [de], a                                    ; $64b2: $12
    db $10                                        ; $64b3: $10
    ld bc, $0110                                  ; $64b4: $01 $10 $01
    db $10                                        ; $64b7: $10
    ld bc, b00_Unknown_State_04                   ; $64b8: $01 $10 $23
    stop                                          ; $64bb: $10 $00
    inc d                                         ; $64bd: $14
    nop                                           ; $64be: $00
    inc d                                         ; $64bf: $14
    nop                                           ; $64c0: $00
    inc d                                         ; $64c1: $14
    nop                                           ; $64c2: $00
    inc d                                         ; $64c3: $14

jr_00c_64c4:
    nop                                           ; $64c4: $00
    inc d                                         ; $64c5: $14

jr_00c_64c6:
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
    add d                                         ; $64e4: $82
    ld d, b                                       ; $64e5: $50
    ld bc, $0110                                  ; $64e6: $01 $10 $01
    db $10                                        ; $64e9: $10
    ld bc, $8210                                  ; $64ea: $01 $10 $82
    db $10                                        ; $64ed: $10
    jr z, jr_00c_6544                             ; $64ee: $28 $54

    jr z, jr_00c_6506                             ; $64f0: $28 $14

    ld [de], a                                    ; $64f2: $12
    db $10                                        ; $64f3: $10
    ld bc, $0110                                  ; $64f4: $01 $10 $01
    db $10                                        ; $64f7: $10
    ld bc, b00_Unknown_State_04                   ; $64f8: $01 $10 $23
    stop                                          ; $64fb: $10 $00
    inc d                                         ; $64fd: $14
    nop                                           ; $64fe: $00
    inc d                                         ; $64ff: $14
    nop                                           ; $6500: $00
    inc d                                         ; $6501: $14
    nop                                           ; $6502: $00
    inc d                                         ; $6503: $14

jr_00c_6504:
    nop                                           ; $6504: $00
    inc d                                         ; $6505: $14

jr_00c_6506:
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
    add d                                         ; $6524: $82
    ld d, b                                       ; $6525: $50
    ld bc, $0110                                  ; $6526: $01 $10 $01
    db $10                                        ; $6529: $10
    ld bc, $8210                                  ; $652a: $01 $10 $82
    db $10                                        ; $652d: $10
    jr z, jr_00c_6584                             ; $652e: $28 $54

    jr z, jr_00c_6546                             ; $6530: $28 $14

    ld [de], a                                    ; $6532: $12
    db $10                                        ; $6533: $10
    ld bc, $0110                                  ; $6534: $01 $10 $01
    db $10                                        ; $6537: $10
    ld bc, b00_Unknown_State_04                   ; $6538: $01 $10 $23
    stop                                          ; $653b: $10 $00
    inc d                                         ; $653d: $14
    nop                                           ; $653e: $00
    inc d                                         ; $653f: $14
    nop                                           ; $6540: $00
    inc d                                         ; $6541: $14
    nop                                           ; $6542: $00
    inc d                                         ; $6543: $14

jr_00c_6544:
    nop                                           ; $6544: $00
    inc d                                         ; $6545: $14

jr_00c_6546:
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
    add d                                         ; $6564: $82
    ld d, b                                       ; $6565: $50
    ld bc, $0110                                  ; $6566: $01 $10 $01
    db $10                                        ; $6569: $10
    ld bc, $8210                                  ; $656a: $01 $10 $82
    db $10                                        ; $656d: $10
    jr z, jr_00c_65c4                             ; $656e: $28 $54

    jr z, jr_00c_6586                             ; $6570: $28 $14

    ld [de], a                                    ; $6572: $12
    db $10                                        ; $6573: $10
    ld bc, $0110                                  ; $6574: $01 $10 $01
    db $10                                        ; $6577: $10
    ld bc, b00_Unknown_State_04                   ; $6578: $01 $10 $23
    stop                                          ; $657b: $10 $00
    inc d                                         ; $657d: $14
    nop                                           ; $657e: $00
    inc d                                         ; $657f: $14
    nop                                           ; $6580: $00
    inc d                                         ; $6581: $14
    nop                                           ; $6582: $00
    inc d                                         ; $6583: $14

jr_00c_6584:
    nop                                           ; $6584: $00
    inc d                                         ; $6585: $14

jr_00c_6586:
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
    add d                                         ; $65a4: $82
    ld d, b                                       ; $65a5: $50
    ld bc, $0110                                  ; $65a6: $01 $10 $01
    db $10                                        ; $65a9: $10
    ld bc, $8210                                  ; $65aa: $01 $10 $82
    db $10                                        ; $65ad: $10
    jr z, jr_00c_6604                             ; $65ae: $28 $54

    inc sp                                        ; $65b0: $33
    inc d                                         ; $65b1: $14
    ld [de], a                                    ; $65b2: $12
    db $10                                        ; $65b3: $10
    ld bc, $0110                                  ; $65b4: $01 $10 $01
    db $10                                        ; $65b7: $10
    ld bc, b00_Unknown_State_04                   ; $65b8: $01 $10 $23
    stop                                          ; $65bb: $10 $00
    inc d                                         ; $65bd: $14
    nop                                           ; $65be: $00
    inc d                                         ; $65bf: $14
    nop                                           ; $65c0: $00
    inc d                                         ; $65c1: $14
    nop                                           ; $65c2: $00
    inc d                                         ; $65c3: $14

jr_00c_65c4:
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
    add d                                         ; $65e4: $82
    ld d, b                                       ; $65e5: $50
    ld bc, $0110                                  ; $65e6: $01 $10 $01
    db $10                                        ; $65e9: $10
    ld bc, $8a10                                  ; $65ea: $01 $10 $8a
    inc d                                         ; $65ed: $14
    adc e                                         ; $65ee: $8b
    inc d                                         ; $65ef: $14
    inc [hl]                                      ; $65f0: $34
    inc d                                         ; $65f1: $14
    ld [de], a                                    ; $65f2: $12
    db $10                                        ; $65f3: $10
    ld bc, $0110                                  ; $65f4: $01 $10 $01
    db $10                                        ; $65f7: $10
    ld bc, $3510                                  ; $65f8: $01 $10 $35
    db $10                                        ; $65fb: $10
    ld [hl], $10                                  ; $65fc: $36 $10
    ld [hl], $10                                  ; $65fe: $36 $10
    ld [hl], $10                                  ; $6600: $36 $10
    ld [hl], $10                                  ; $6602: $36 $10

jr_00c_6604:
    ld [hl], $10                                  ; $6604: $36 $10
    scf                                           ; $6606: $37
    db $10                                        ; $6607: $10
    jr c, jr_00c_661a                             ; $6608: $38 $10

    add hl, sp                                    ; $660a: $39
    db $10                                        ; $660b: $10
    ld a, [hl-]                                   ; $660c: $3a
    db $10                                        ; $660d: $10
    dec sp                                        ; $660e: $3b
    db $10                                        ; $660f: $10
    adc h                                         ; $6610: $8c
    db $10                                        ; $6611: $10
    adc l                                         ; $6612: $8d
    db $10                                        ; $6613: $10
    adc [hl]                                      ; $6614: $8e
    db $10                                        ; $6615: $10
    adc a                                         ; $6616: $8f
    db $10                                        ; $6617: $10
    ld [hl], $10                                  ; $6618: $36 $10

jr_00c_661a:
    ld [hl], $10                                  ; $661a: $36 $10
    ld [hl], $10                                  ; $661c: $36 $10
    ld [hl], $10                                  ; $661e: $36 $10
    ld [hl], $10                                  ; $6620: $36 $10
    ld [hl], $10                                  ; $6622: $36 $10
    add e                                         ; $6624: $83
    sub b                                         ; $6625: $90
    ld bc, $0110                                  ; $6626: $01 $10 $01
    db $10                                        ; $6629: $10
    sub b                                         ; $662a: $90
    inc d                                         ; $662b: $14
    sub c                                         ; $662c: $91
    inc d                                         ; $662d: $14

jr_00c_662e:
    sub d                                         ; $662e: $92
    inc d                                         ; $662f: $14
    inc a                                         ; $6630: $3c

jr_00c_6631:
    inc d                                         ; $6631: $14
    dec a                                         ; $6632: $3d
    inc d                                         ; $6633: $14

jr_00c_6634:
    ld [hl], $90                                  ; $6634: $36 $90
    ld [hl], $90                                  ; $6636: $36 $90
    ld [hl], $90                                  ; $6638: $36 $90

jr_00c_663a:
    ld [hl], $90                                  ; $663a: $36 $90
    ld [hl], $90                                  ; $663c: $36 $90
    ld [hl], $90                                  ; $663e: $36 $90
    ld [hl], $90                                  ; $6640: $36 $90
    ld [hl], $90                                  ; $6642: $36 $90
    ld a, $10                                     ; $6644: $3e $10
    ccf                                           ; $6646: $3f
    db $10                                        ; $6647: $10
    ld b, b                                       ; $6648: $40
    db $10                                        ; $6649: $10
    ld b, c                                       ; $664a: $41
    db $10                                        ; $664b: $10
    ld b, d                                       ; $664c: $42
    db $10                                        ; $664d: $10
    ld b, e                                       ; $664e: $43
    db $10                                        ; $664f: $10
    sub e                                         ; $6650: $93
    db $10                                        ; $6651: $10
    sub h                                         ; $6652: $94
    db $10                                        ; $6653: $10
    sub l                                         ; $6654: $95
    db $10                                        ; $6655: $10
    sub [hl]                                      ; $6656: $96
    db $10                                        ; $6657: $10
    sub a                                         ; $6658: $97
    db $10                                        ; $6659: $10
    sbc b                                         ; $665a: $98
    db $10                                        ; $665b: $10
    ld [hl], $90                                  ; $665c: $36 $90
    ld [hl], $90                                  ; $665e: $36 $90
    ld [hl], $90                                  ; $6660: $36 $90
    ld [hl], $90                                  ; $6662: $36 $90
    ld [hl], $90                                  ; $6664: $36 $90
    ld [hl], $90                                  ; $6666: $36 $90
    sbc c                                         ; $6668: $99
    inc d                                         ; $6669: $14
    sbc d                                         ; $666a: $9a
    inc d                                         ; $666b: $14
    sbc e                                         ; $666c: $9b
    inc d                                         ; $666d: $14
    sbc h                                         ; $666e: $9c
    inc d                                         ; $666f: $14
    ld b, h                                       ; $6670: $44
    inc d                                         ; $6671: $14
    ld b, l                                       ; $6672: $45
    inc d                                         ; $6673: $14
    ld b, [hl]                                    ; $6674: $46
    inc d                                         ; $6675: $14
    ld b, a                                       ; $6676: $47
    inc d                                         ; $6677: $14
    ld c, b                                       ; $6678: $48
    inc d                                         ; $6679: $14
    ld c, c                                       ; $667a: $49

jr_00c_667b:
    inc d                                         ; $667b: $14
    ld c, d                                       ; $667c: $4a
    inc d                                         ; $667d: $14

jr_00c_667e:
    ld c, e                                       ; $667e: $4b
    inc d                                         ; $667f: $14
    ld c, e                                       ; $6680: $4b

jr_00c_6681:
    inc d                                         ; $6681: $14
    ld c, e                                       ; $6682: $4b
    inc d                                         ; $6683: $14

jr_00c_6684:
    ld c, h                                       ; $6684: $4c
    jr @+$4f                                      ; $6685: $18 $4d

jr_00c_6687:
    jr jr_00c_66d7                                ; $6687: $18 $4e

    jr @+$51                                      ; $6689: $18 $4f

    jr jr_00c_66dd                                ; $668b: $18 $50

    jr @+$53                                      ; $668d: $18 $51

    jr jr_00c_662e                                ; $668f: $18 $9d

    jr jr_00c_6631                                ; $6691: $18 $9e

    jr jr_00c_6634                                ; $6693: $18 $9f

    jr @-$5e                                      ; $6695: $18 $a0

    jr jr_00c_663a                                ; $6697: $18 $a1

    jr @-$5c                                      ; $6699: $18 $a2

    jr jr_00c_66e8                                ; $669b: $18 $4b

    inc d                                         ; $669d: $14
    ld c, e                                       ; $669e: $4b
    inc d                                         ; $669f: $14
    ld c, e                                       ; $66a0: $4b
    inc d                                         ; $66a1: $14
    and e                                         ; $66a2: $a3
    inc d                                         ; $66a3: $14
    and h                                         ; $66a4: $a4
    inc d                                         ; $66a5: $14
    and l                                         ; $66a6: $a5
    inc d                                         ; $66a7: $14
    and [hl]                                      ; $66a8: $a6
    inc d                                         ; $66a9: $14
    and a                                         ; $66aa: $a7
    inc d                                         ; $66ab: $14
    xor b                                         ; $66ac: $a8
    inc d                                         ; $66ad: $14
    xor c                                         ; $66ae: $a9
    inc d                                         ; $66af: $14
    ld d, d                                       ; $66b0: $52
    inc d                                         ; $66b1: $14
    ld d, e                                       ; $66b2: $53
    inc d                                         ; $66b3: $14
    ld d, h                                       ; $66b4: $54
    inc d                                         ; $66b5: $14
    ld d, l                                       ; $66b6: $55
    inc d                                         ; $66b7: $14
    ld d, [hl]                                    ; $66b8: $56
    inc d                                         ; $66b9: $14
    ld d, a                                       ; $66ba: $57
    inc d                                         ; $66bb: $14
    ld e, b                                       ; $66bc: $58
    inc d                                         ; $66bd: $14
    ld e, c                                       ; $66be: $59
    inc d                                         ; $66bf: $14
    ld e, d                                       ; $66c0: $5a
    inc d                                         ; $66c1: $14
    ld e, e                                       ; $66c2: $5b
    inc d                                         ; $66c3: $14
    ld e, h                                       ; $66c4: $5c
    jr jr_00c_6724                                ; $66c5: $18 $5d

    jr jr_00c_6727                                ; $66c7: $18 $5e

    jr jr_00c_672a                                ; $66c9: $18 $5f

jr_00c_66cb:
    jr @+$62                                      ; $66cb: $18 $60

    jr jr_00c_6730                                ; $66cd: $18 $61

    jr jr_00c_667b                                ; $66cf: $18 $aa

jr_00c_66d1:
    jr jr_00c_667e                                ; $66d1: $18 $ab

    jr jr_00c_6681                                ; $66d3: $18 $ac

    jr jr_00c_6684                                ; $66d5: $18 $ad

jr_00c_66d7:
    jr jr_00c_6687                                ; $66d7: $18 $ae

    jr @-$4f                                      ; $66d9: $18 $af

    jr jr_00c_66de                                ; $66db: $18 $01

jr_00c_66dd:
    inc d                                         ; $66dd: $14

jr_00c_66de:
    ld bc, $0114                                  ; $66de: $01 $14 $01
    inc d                                         ; $66e1: $14
    or b                                          ; $66e2: $b0
    inc d                                         ; $66e3: $14
    or c                                          ; $66e4: $b1
    inc d                                         ; $66e5: $14
    or d                                          ; $66e6: $b2
    inc d                                         ; $66e7: $14

jr_00c_66e8:
    or e                                          ; $66e8: $b3
    inc d                                         ; $66e9: $14
    or h                                          ; $66ea: $b4
    inc d                                         ; $66eb: $14
    or l                                          ; $66ec: $b5
    inc d                                         ; $66ed: $14
    or [hl]                                       ; $66ee: $b6
    inc d                                         ; $66ef: $14
    ld h, d                                       ; $66f0: $62
    inc d                                         ; $66f1: $14
    ld h, e                                       ; $66f2: $63
    inc d                                         ; $66f3: $14
    ld h, h                                       ; $66f4: $64
    inc d                                         ; $66f5: $14
    ld h, l                                       ; $66f6: $65
    inc d                                         ; $66f7: $14

jr_00c_66f8:
    ld h, [hl]                                    ; $66f8: $66
    inc d                                         ; $66f9: $14

jr_00c_66fa:
    ld h, a                                       ; $66fa: $67
    inc d                                         ; $66fb: $14

jr_00c_66fc:
    ld l, b                                       ; $66fc: $68
    inc d                                         ; $66fd: $14

jr_00c_66fe:
    ld l, c                                       ; $66fe: $69
    inc d                                         ; $66ff: $14

jr_00c_6700:
    ld l, d                                       ; $6700: $6a
    inc d                                         ; $6701: $14

jr_00c_6702:
    ld e, e                                       ; $6702: $5b
    sub h                                         ; $6703: $94

jr_00c_6704:
    ld l, e                                       ; $6704: $6b
    jr jr_00c_6773                                ; $6705: $18 $6c

    jr @+$6f                                      ; $6707: $18 $6d

    jr jr_00c_6779                                ; $6709: $18 $6e

    jr @+$71                                      ; $670b: $18 $6f

    jr jr_00c_677f                                ; $670d: $18 $70

    jr @-$47                                      ; $670f: $18 $b7

    jr jr_00c_66cb                                ; $6711: $18 $b8

    jr @-$45                                      ; $6713: $18 $b9

    jr jr_00c_66d1                                ; $6715: $18 $ba

    jr @-$43                                      ; $6717: $18 $bb

    jr jr_00c_66d7                                ; $6719: $18 $bc

    jr jr_00c_671e                                ; $671b: $18 $01

    inc d                                         ; $671d: $14

jr_00c_671e:
    ld bc, $0114                                  ; $671e: $01 $14 $01
    inc d                                         ; $6721: $14

jr_00c_6722:
    cp l                                          ; $6722: $bd
    inc d                                         ; $6723: $14

jr_00c_6724:
    cp [hl]                                       ; $6724: $be
    inc d                                         ; $6725: $14

jr_00c_6726:
    cp a                                          ; $6726: $bf

jr_00c_6727:
    inc d                                         ; $6727: $14

jr_00c_6728:
    ret nz                                        ; $6728: $c0

    inc d                                         ; $6729: $14

jr_00c_672a:
    pop bc                                        ; $672a: $c1
    inc d                                         ; $672b: $14

jr_00c_672c:
    jp nz, $b614                                  ; $672c: $c2 $14 $b6

    inc d                                         ; $672f: $14

jr_00c_6730:
    jp $c318                                      ; $6730: $c3 $18 $c3


    jr jr_00c_66f8                                ; $6733: $18 $c3

    jr jr_00c_66fa                                ; $6735: $18 $c3

    jr jr_00c_66fc                                ; $6737: $18 $c3

    jr jr_00c_66fe                                ; $6739: $18 $c3

    jr jr_00c_6700                                ; $673b: $18 $c3

    jr jr_00c_6702                                ; $673d: $18 $c3

    jr jr_00c_6704                                ; $673f: $18 $c3

    jr @-$3b                                      ; $6741: $18 $c3

    jr @-$3b                                      ; $6743: $18 $c3

    jr @-$3b                                      ; $6745: $18 $c3

    jr @-$3b                                      ; $6747: $18 $c3

    jr @-$3b                                      ; $6749: $18 $c3

    jr @-$3b                                      ; $674b: $18 $c3

    jr @-$3b                                      ; $674d: $18 $c3

    jr @-$3b                                      ; $674f: $18 $c3

    jr @-$3b                                      ; $6751: $18 $c3

    jr @-$3b                                      ; $6753: $18 $c3

    jr @-$3b                                      ; $6755: $18 $c3

    jr @-$3b                                      ; $6757: $18 $c3

    jr jr_00c_671e                                ; $6759: $18 $c3

    jr @-$3b                                      ; $675b: $18 $c3

    jr jr_00c_6722                                ; $675d: $18 $c3

    jr jr_00c_6724                                ; $675f: $18 $c3

    jr jr_00c_6726                                ; $6761: $18 $c3

    jr jr_00c_6728                                ; $6763: $18 $c3

    jr jr_00c_672a                                ; $6765: $18 $c3

    jr jr_00c_672c                                ; $6767: $18 $c3

    jr @-$3b                                      ; $6769: $18 $c3

    jr jr_00c_6730                                ; $676b: $18 $c3

    jr @-$3b                                      ; $676d: $18 $c3

    jr @-$3b                                      ; $676f: $18 $c3

    jr @-$3b                                      ; $6771: $18 $c3

jr_00c_6773:
    jr @-$3b                                      ; $6773: $18 $c3

    jr @-$3b                                      ; $6775: $18 $c3

    jr @-$3b                                      ; $6777: $18 $c3

jr_00c_6779:
    jr @-$3b                                      ; $6779: $18 $c3

    jr @-$3b                                      ; $677b: $18 $c3

    jr @-$3b                                      ; $677d: $18 $c3

jr_00c_677f:
    jr @-$3b                                      ; $677f: $18 $c3

    jr @-$3b                                      ; $6781: $18 $c3

    jr @-$3b                                      ; $6783: $18 $c3

    jr @-$3b                                      ; $6785: $18 $c3

    jr @-$3b                                      ; $6787: $18 $c3

    jr @-$3b                                      ; $6789: $18 $c3

    jr @-$3b                                      ; $678b: $18 $c3

    jr @-$3b                                      ; $678d: $18 $c3

    jr @-$3b                                      ; $678f: $18 $c3

    jr @-$3b                                      ; $6791: $18 $c3

    jr @-$3b                                      ; $6793: $18 $c3

    jr @-$3b                                      ; $6795: $18 $c3

    jr @-$3b                                      ; $6797: $18 $c3

    jr @-$3b                                      ; $6799: $18 $c3

    jr @-$3b                                      ; $679b: $18 $c3

    jr @-$3b                                      ; $679d: $18 $c3

    jr @-$3b                                      ; $679f: $18 $c3

    jr @-$3b                                      ; $67a1: $18 $c3

    jr @-$3b                                      ; $67a3: $18 $c3

    jr @-$3b                                      ; $67a5: $18 $c3

    jr @-$3b                                      ; $67a7: $18 $c3

    jr @-$3b                                      ; $67a9: $18 $c3

    jr @-$3b                                      ; $67ab: $18 $c3

    jr @-$3b                                      ; $67ad: $18 $c3

    jr @-$3b                                      ; $67af: $18 $c3

    jr @-$3b                                      ; $67b1: $18 $c3

    jr @-$3b                                      ; $67b3: $18 $c3

    jr @-$3b                                      ; $67b5: $18 $c3

    jr @-$3b                                      ; $67b7: $18 $c3

    jr @-$3b                                      ; $67b9: $18 $c3

    jr @-$3b                                      ; $67bb: $18 $c3

    jr @-$3b                                      ; $67bd: $18 $c3

    jr @-$3b                                      ; $67bf: $18 $c3

    jr @-$3b                                      ; $67c1: $18 $c3

    jr @-$3b                                      ; $67c3: $18 $c3

    jr @-$3b                                      ; $67c5: $18 $c3

    jr @-$3b                                      ; $67c7: $18 $c3

    jr @-$3b                                      ; $67c9: $18 $c3

    jr @-$3b                                      ; $67cb: $18 $c3

    jr @-$3b                                      ; $67cd: $18 $c3

    jr @-$3b                                      ; $67cf: $18 $c3

    jr @-$3b                                      ; $67d1: $18 $c3

    jr @-$3b                                      ; $67d3: $18 $c3

    jr @-$3b                                      ; $67d5: $18 $c3

    jr @-$3b                                      ; $67d7: $18 $c3

    jr @-$3b                                      ; $67d9: $18 $c3

    jr @-$3b                                      ; $67db: $18 $c3

    jr @-$3b                                      ; $67dd: $18 $c3

    jr @-$3b                                      ; $67df: $18 $c3

    jr @-$3b                                      ; $67e1: $18 $c3

    jr @-$3b                                      ; $67e3: $18 $c3

    jr @-$3b                                      ; $67e5: $18 $c3

    jr @-$3b                                      ; $67e7: $18 $c3

    jr @-$3b                                      ; $67e9: $18 $c3

    jr @-$3b                                      ; $67eb: $18 $c3

    jr @-$3b                                      ; $67ed: $18 $c3

    jr @-$3b                                      ; $67ef: $18 $c3

    jr @-$3b                                      ; $67f1: $18 $c3

    jr @-$3b                                      ; $67f3: $18 $c3

    jr @-$3b                                      ; $67f5: $18 $c3

    jr @-$3b                                      ; $67f7: $18 $c3

    jr @-$3b                                      ; $67f9: $18 $c3

    jr @-$3b                                      ; $67fb: $18 $c3

    jr @-$3b                                      ; $67fd: $18 $c3

    jr @-$3b                                      ; $67ff: $18 $c3

    jr @-$3b                                      ; $6801: $18 $c3

    jr @-$3b                                      ; $6803: $18 $c3

    jr @-$3b                                      ; $6805: $18 $c3

    jr @-$3b                                      ; $6807: $18 $c3

    jr @-$3b                                      ; $6809: $18 $c3

    jr @-$3b                                      ; $680b: $18 $c3

    jr @-$3b                                      ; $680d: $18 $c3

    jr @-$3b                                      ; $680f: $18 $c3

    jr @-$3b                                      ; $6811: $18 $c3

    jr @-$3b                                      ; $6813: $18 $c3

    jr @-$3b                                      ; $6815: $18 $c3

    jr @-$3b                                      ; $6817: $18 $c3

    jr @-$3b                                      ; $6819: $18 $c3

    jr @-$3b                                      ; $681b: $18 $c3

    jr @-$3b                                      ; $681d: $18 $c3

    jr @-$3b                                      ; $681f: $18 $c3

    jr @-$3b                                      ; $6821: $18 $c3

    jr @-$3b                                      ; $6823: $18 $c3

    jr @-$3b                                      ; $6825: $18 $c3

    jr @-$3b                                      ; $6827: $18 $c3

    jr @-$3b                                      ; $6829: $18 $c3

    jr @-$3b                                      ; $682b: $18 $c3

    jr @-$3b                                      ; $682d: $18 $c3

    jr jr_00c_6831                                ; $682f: $18 $00

jr_00c_6831:
    nop                                           ; $6831: $00
    db $10                                        ; $6832: $10
    ld a, d                                       ; $6833: $7a
    ld l, e                                       ; $6834: $6b
    ld d, l                                       ; $6835: $55
    add $2c                                       ; $6836: $c6 $2c
    rst $30                                       ; $6838: $f7
    ld e, d                                       ; $6839: $5a
    ld d, d                                       ; $683a: $52
    ld c, d                                       ; $683b: $4a
    ld l, e                                       ; $683c: $6b
    ld sp, $20e7                                  ; $683d: $31 $e7 $20
    add h                                         ; $6840: $84
    inc d                                         ; $6841: $14
    xor d                                         ; $6842: $aa
    ld b, b                                       ; $6843: $40
    ld [de], a                                    ; $6844: $12
    inc l                                         ; $6845: $2c
    rst $38                                       ; $6846: $ff
    ld a, a                                       ; $6847: $7f
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    ld c, a                                       ; $684a: $4f
    ld [$001f], sp                                ; $684b: $08 $1f $00
    rst $20                                       ; $684e: $e7
    jr nz, jr_00c_6851                            ; $684f: $20 $00

jr_00c_6851:
    nop                                           ; $6851: $00
    ldh a, [c]                                    ; $6852: $f2
    ld a, $e4                                     ; $6853: $3e $e4
    ld de, $1966                                  ; $6855: $11 $66 $19
    ld e, d                                       ; $6858: $5a
    ld h, e                                       ; $6859: $63
    ld [hl], e                                    ; $685a: $73
    ld b, d                                       ; $685b: $42
    rst $28                                       ; $685c: $ef
    add hl, hl                                    ; $685d: $29
    ret z                                         ; $685e: $c8

    inc b                                         ; $685f: $04
    halt                                          ; $6860: $76
    ld c, c                                       ; $6861: $49
    dec c                                         ; $6862: $0d
    dec e                                         ; $6863: $1d
    cp a                                          ; $6864: $bf
    dec sp                                        ; $6865: $3b
    rst $38                                       ; $6866: $ff
    ld a, a                                       ; $6867: $7f
    xor d                                         ; $6868: $aa
    ld b, b                                       ; $6869: $40
    ld d, d                                       ; $686a: $52
    ld c, d                                       ; $686b: $4a
    ld l, e                                       ; $686c: $6b
    ld sp, $20e7                                  ; $686d: $31 $e7 $20
    nop                                           ; $6870: $00
    nop                                           ; $6871: $00
    add hl, sp                                    ; $6872: $39
    ld h, e                                       ; $6873: $63
    ld [hl], h                                    ; $6874: $74
    ld b, d                                       ; $6875: $42
    adc [hl]                                      ; $6876: $8e
    dec h                                         ; $6877: $25
    ret z                                         ; $6878: $c8

    inc b                                         ; $6879: $04
    dec c                                         ; $687a: $0d
    dec e                                         ; $687b: $1d
    ld [hl-], a                                   ; $687c: $32
    ld sp, $4976                                  ; $687d: $31 $76 $49
    sbc e                                         ; $6880: $9b
    ld e, l                                       ; $6881: $5d
    ld h, h                                       ; $6882: $64
    inc b                                         ; $6883: $04
    nop                                           ; $6884: $00
    nop                                           ; $6885: $00
    rst $38                                       ; $6886: $ff
    ld a, a                                       ; $6887: $7f
    rst $30                                       ; $6888: $f7
    ld e, d                                       ; $6889: $5a
    ld d, d                                       ; $688a: $52
    ld c, d                                       ; $688b: $4a
    ld l, e                                       ; $688c: $6b
    ld sp, $0000                                  ; $688d: $31 $00 $00
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

EasyPicrossLevelSelectScreenTileMap::
    db $0f, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $03, $0e, $00, $01, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $20, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $13, $1e, $10, $11, $30, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $21, $22, $23, $37, $37, $37, $37, $27, $28, $29, $37, $39, $24, $25, $26, $37, $37, $37, $37, $36, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $31, $2b, $2b, $2a, $2b, $2b, $2b, $2b, $2b, $2b, $2b, $3a, $2b, $2b, $2b, $2a, $2b, $2b, $2b, $35, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $32, $33, $33, $33, $33, $33, $33, $33, $33, $33, $33, $38, $33, $33, $33, $33, $33, $33, $33, $34, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $40, $41, $0f, $4a, $0f, $4b, $0f, $4c, $0f, $4d, $0f, $4e, $0f, $4f, $0f, $50, $0f, $51, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $42, $52, $53, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $43, $52, $53, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $44, $52, $53, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $45, $52, $53, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $46, $52, $53, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $47, $52, $53, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $48, $52, $53, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $49, $52, $53, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $6f, $54, $0f, $54, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $60, $61, $0f, $0f, $62, $63, $64, $0f, $0f, $0f, $0f, $6e, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $65, $66, $61, $0f, $67, $68, $69, $0f, $56, $57, $58, $66, $80, $81, $82, $83, $84, $85, $86, $87, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $65, $72, $73, $61, $6a, $6b, $6c, $0f, $59, $5a, $5b, $5c, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

KinokoCourseLevelSelectScreenTileMap::
    db $0f, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $03, $0e, $00, $01, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $20, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $13, $1e, $10, $11, $30, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $21, $22, $23, $37, $37, $37, $37, $27, $28, $29, $37, $39, $24, $25, $26, $37, $37, $37, $37, $36, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $31, $2b, $2b, $2a, $2b, $2b, $2b, $2b, $2b, $2b, $2b, $3a, $2b, $2b, $2b, $2a, $2b, $2b, $2b, $35, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $32, $33, $33, $33, $33, $33, $33, $33, $33, $33, $33, $38, $33, $33, $33, $33, $33, $33, $33, $34, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $40, $41, $0f, $4a, $0f, $4b, $0f, $4c, $0f, $4d, $0f, $4e, $0f, $4f, $0f, $50, $0f, $51, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $42, $52, $53, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $43, $52, $53, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $44, $52, $53, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $45, $52, $53, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $46, $52, $53, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $47, $52, $53, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $48, $52, $53, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $49, $52, $53, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $54, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $79, $7a, $7b, $7c, $7d, $7e, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $67, $61, $62, $0f, $56, $57, $58, $0f, $60, $62, $0f, $0f, $60, $81, $82, $83, $84, $85, $86, $87, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $66, $64, $65, $59, $5a, $5b, $5c, $5d, $63, $68, $57, $58, $63, $89, $8a, $8b, $8c, $8d, $8e, $8f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

StarCourseLevelSelectScreenTileMap_uncertain::
    db $0f, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $03, $0e, $00, $01, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $20, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $13, $1e, $10, $11, $30, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $21, $22, $23, $37, $37, $37, $37, $27, $28, $29, $37, $39, $24, $25, $26, $37, $37, $37, $37, $36, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $31, $2b, $2b, $2a, $2b, $2b, $2b, $2b, $2b, $2b, $2b, $3a, $2b, $2b, $2b, $2a, $2b, $2b, $2b, $35, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $32, $33, $33, $33, $33, $33, $33, $33, $33, $33, $33, $38, $33, $33, $33, $33, $33, $33, $33, $34, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $56, $40, $41, $59, $4a, $56, $4b, $57, $4c, $56, $4d, $57, $4e, $56, $4f, $57, $50, $56, $51, $57, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $57, $42, $52, $53, $54, $75, $54, $56, $54, $59, $54, $58, $54, $57, $54, $56, $54, $56, $54, $58, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $59, $43, $52, $53, $54, $58, $54, $56, $54, $57, $54, $56, $54, $56, $54, $56, $54, $59, $54, $59, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $56, $44, $52, $53, $54, $56, $54, $75, $54, $56, $54, $75, $54, $59, $54, $59, $54, $75, $54, $57, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $56, $45, $52, $53, $54, $58, $54, $59, $54, $58, $54, $59, $54, $75, $54, $59, $54, $58, $54, $56, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $57, $46, $52, $53, $54, $75, $54, $75, $54, $75, $54, $58, $54, $56, $54, $56, $54, $75, $54, $56, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $58, $47, $52, $53, $54, $56, $54, $57, $54, $56, $54, $56, $54, $58, $54, $56, $54, $56, $54, $56, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $57, $48, $52, $53, $54, $59, $54, $56, $54, $56, $54, $56, $54, $56, $54, $56, $54, $57, $54, $59, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $56, $49, $52, $53, $54, $56, $54, $56, $54, $56, $54, $56, $54, $56, $54, $56, $54, $56, $54, $56, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $67, $68, $56, $56, $56, $56, $5a, $56, $56, $56, $56, $56, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $69, $6a, $61, $62, $63, $5b, $5c, $5d, $62, $63, $61, $6d, $80, $81, $82, $83, $84, $85, $86, $87, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $6b, $6c, $64, $65, $66, $5e, $5f, $60, $65, $66, $64, $6e, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

EasyPicrossContinueSavedGameScreenTileMap::
    db $0f, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $03, $0e, $00, $01, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $1f, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $13, $1e, $10, $11, $1f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $3b, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $3f, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $2e, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $2c, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $2e, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $2c, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $2e, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $2c, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $2e, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $2c, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $2e, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $2c, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $2e, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $2c, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $2e, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $2c, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $3c, $3d, $3d, $3d, $3d, $3d, $3d, $3d, $3d, $3d, $3d, $3d, $3d, $3d, $3d, $3d, $3d, $3e, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $6f, $6d, $0f, $0f, $0f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $60, $61, $0f, $0f, $62, $63, $64, $0f, $0f, $0f, $0f, $6e, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $65, $66, $61, $0f, $67, $68, $69, $0f, $56, $57, $58, $66, $80, $81, $82, $83, $84, $85, $86, $87, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $65, $72, $73, $61, $6a, $6b, $6c, $0f, $59, $5a, $5b, $5c, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $74, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

_TileMap_uncertain::
    db $2d, $2d, $2d, $2d, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $00, $01, $2d, $2d, $2d, $2d, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $1a, $1a, $1a, $1a, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $10, $11, $1a, $1a, $1a, $1a, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $25, $25, $25, $25, $25, $25, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $25, $25, $25, $25, $25, $25, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $26, $26, $26, $26, $26, $26, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $26, $26, $26, $26, $26, $26, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $27, $27, $27, $27, $20, $27, $30, $31, $32, $33, $34, $27, $27, $35, $36, $37, $27, $27, $27, $27, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $28, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $29, $29, $29, $29, $21, $29, $40, $41, $42, $43, $44, $29, $29, $45, $46, $47, $29, $29, $29, $29, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $2b, $2b, $2b, $2b, $22, $2b, $50, $51, $52, $53, $54, $2b, $2b, $55, $56, $57, $2b, $2b, $2b, $2b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $2d, $2d, $2d, $2d, $23, $2d, $60, $61, $62, $63, $64, $2d, $2d, $65, $66, $67, $2d, $2d, $2d, $2d, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2e, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $38, $39, $3a, $2d, $24, $2d, $70, $71, $72, $73, $74, $2d, $2d, $75, $76, $77, $2d, $2d, $2e, $2f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $48, $49, $4a, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $2d, $7c, $6e, $2d, $2d, $2e, $2f, $2f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $58, $59, $5a, $3b, $3c, $3d, $3e, $1b, $1c, $1d, $1e, $2d, $80, $81, $82, $83, $84, $2f, $2f, $2f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $29, $68, $69, $4b, $4c, $4d, $4e, $4f, $6a, $6b, $3f, $7c, $6d, $6d, $6f, $7f, $2f, $2f, $2f, $2f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $29, $78, $69, $5b, $5c, $5d, $5e, $5f, $7a, $7b, $6c, $7d, $7e, $6d, $7f, $2f, $2f, $2f, $2f, $2f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $79, $79, $79, $79, $79, $79, $79, $79, $79, $79, $79, $79, $79, $79, $79, $79, $79, $79, $79, $79, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
