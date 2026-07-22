; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

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
    ld d, l                                       ; $4050: $55
    xor d                                         ; $4051: $aa
    xor d                                         ; $4052: $aa
    ld d, l                                       ; $4053: $55
    ld d, l                                       ; $4054: $55
    xor d                                         ; $4055: $aa
    xor d                                         ; $4056: $aa
    ld d, l                                       ; $4057: $55
    ld d, l                                       ; $4058: $55
    xor d                                         ; $4059: $aa
    xor d                                         ; $405a: $aa
    ld d, l                                       ; $405b: $55
    ld d, h                                       ; $405c: $54
    xor e                                         ; $405d: $ab
    xor d                                         ; $405e: $aa
    ld d, l                                       ; $405f: $55
    nop                                           ; $4060: $00
    nop                                           ; $4061: $00
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    nop                                           ; $4064: $00
    nop                                           ; $4065: $00
    nop                                           ; $4066: $00
    nop                                           ; $4067: $00
    nop                                           ; $4068: $00
    nop                                           ; $4069: $00
    nop                                           ; $406a: $00
    nop                                           ; $406b: $00
    nop                                           ; $406c: $00
    nop                                           ; $406d: $00
    nop                                           ; $406e: $00
    nop                                           ; $406f: $00
    ld d, h                                       ; $4070: $54
    xor e                                         ; $4071: $ab
    and e                                         ; $4072: $a3
    ld e, a                                       ; $4073: $5f
    ld c, a                                       ; $4074: $4f
    cp h                                          ; $4075: $bc
    sub a                                         ; $4076: $97
    ld [hl], e                                    ; $4077: $73
    cpl                                           ; $4078: $2f
    rst $28                                       ; $4079: $ef
    ld e, a                                       ; $407a: $5f
    rst RST_18                                    ; $407b: $df
    rst $38                                       ; $407c: $ff
    cp a                                          ; $407d: $bf
    rst $38                                       ; $407e: $ff
    cp a                                          ; $407f: $bf
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    nop                                           ; $4083: $00
    inc bc                                        ; $4084: $03
    inc bc                                        ; $4085: $03
    rrca                                          ; $4086: $0f
    rrca                                          ; $4087: $0f
    rra                                           ; $4088: $1f
    rra                                           ; $4089: $1f
    ccf                                           ; $408a: $3f
    ccf                                           ; $408b: $3f
    ld a, a                                       ; $408c: $7f
    ld a, a                                       ; $408d: $7f
    ld a, a                                       ; $408e: $7f
    ld a, a                                       ; $408f: $7f
    nop                                           ; $4090: $00
    rst $38                                       ; $4091: $ff
    rst $38                                       ; $4092: $ff
    rst $38                                       ; $4093: $ff
    rst $38                                       ; $4094: $ff
    nop                                           ; $4095: $00
    rst $38                                       ; $4096: $ff
    rst $38                                       ; $4097: $ff
    rst $38                                       ; $4098: $ff
    rst $38                                       ; $4099: $ff
    rst $38                                       ; $409a: $ff
    rst $38                                       ; $409b: $ff
    rst $38                                       ; $409c: $ff
    rst $38                                       ; $409d: $ff
    rst $38                                       ; $409e: $ff
    rst $38                                       ; $409f: $ff
    nop                                           ; $40a0: $00
    nop                                           ; $40a1: $00
    nop                                           ; $40a2: $00
    nop                                           ; $40a3: $00
    rst $38                                       ; $40a4: $ff
    nop                                           ; $40a5: $00
    rst $38                                       ; $40a6: $ff
    nop                                           ; $40a7: $00
    rst $38                                       ; $40a8: $ff
    nop                                           ; $40a9: $00
    rst $38                                       ; $40aa: $ff
    nop                                           ; $40ab: $00
    rst $38                                       ; $40ac: $ff
    nop                                           ; $40ad: $00
    rst $38                                       ; $40ae: $ff
    nop                                           ; $40af: $00
    nop                                           ; $40b0: $00
    rst $38                                       ; $40b1: $ff
    rst $38                                       ; $40b2: $ff
    rst $38                                       ; $40b3: $ff
    jp nc, rP1                                    ; $40b4: $d2 $00 $ff

    rst $38                                       ; $40b7: $ff
    rst $38                                       ; $40b8: $ff
    rst $38                                       ; $40b9: $ff
    rst $38                                       ; $40ba: $ff
    rst $38                                       ; $40bb: $ff
    rst $38                                       ; $40bc: $ff
    rst $38                                       ; $40bd: $ff
    rst $38                                       ; $40be: $ff
    rst $38                                       ; $40bf: $ff
    nop                                           ; $40c0: $00
    nop                                           ; $40c1: $00
    nop                                           ; $40c2: $00
    nop                                           ; $40c3: $00
    rst $38                                       ; $40c4: $ff
    nop                                           ; $40c5: $00
    rst $38                                       ; $40c6: $ff
    nop                                           ; $40c7: $00
    rst $38                                       ; $40c8: $ff
    nop                                           ; $40c9: $00
    rst $38                                       ; $40ca: $ff
    nop                                           ; $40cb: $00
    rst $38                                       ; $40cc: $ff
    nop                                           ; $40cd: $00
    rst $38                                       ; $40ce: $ff
    nop                                           ; $40cf: $00
    ld d, l                                       ; $40d0: $55
    xor e                                         ; $40d1: $ab
    xor c                                         ; $40d2: $a9
    ld d, a                                       ; $40d3: $57
    ld d, l                                       ; $40d4: $55
    xor e                                         ; $40d5: $ab
    xor c                                         ; $40d6: $a9
    ld d, a                                       ; $40d7: $57
    ld d, l                                       ; $40d8: $55
    xor e                                         ; $40d9: $ab
    xor c                                         ; $40da: $a9
    ld d, a                                       ; $40db: $57
    ld d, l                                       ; $40dc: $55
    xor e                                         ; $40dd: $ab
    xor c                                         ; $40de: $a9
    ld d, a                                       ; $40df: $57
    nop                                           ; $40e0: $00
    nop                                           ; $40e1: $00
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
    ld a, a                                       ; $40f1: $7f
    rst $38                                       ; $40f2: $ff
    ld a, a                                       ; $40f3: $7f
    rst $38                                       ; $40f4: $ff
    ld a, a                                       ; $40f5: $7f
    rst $38                                       ; $40f6: $ff
    ld a, a                                       ; $40f7: $7f
    rst $38                                       ; $40f8: $ff
    ld a, a                                       ; $40f9: $7f
    rst $38                                       ; $40fa: $ff
    ld a, a                                       ; $40fb: $7f
    rst $38                                       ; $40fc: $ff
    ld a, a                                       ; $40fd: $7f
    rst $38                                       ; $40fe: $ff
    ld a, a                                       ; $40ff: $7f
    rst $38                                       ; $4100: $ff
    nop                                           ; $4101: $00
    rst $38                                       ; $4102: $ff
    nop                                           ; $4103: $00
    rst $38                                       ; $4104: $ff
    nop                                           ; $4105: $00
    rst $38                                       ; $4106: $ff
    nop                                           ; $4107: $00
    rst $38                                       ; $4108: $ff
    nop                                           ; $4109: $00
    rst $38                                       ; $410a: $ff
    nop                                           ; $410b: $00
    rst $38                                       ; $410c: $ff
    nop                                           ; $410d: $00
    rst $38                                       ; $410e: $ff
    nop                                           ; $410f: $00
    rst $38                                       ; $4110: $ff
    rst $38                                       ; $4111: $ff
    rst $38                                       ; $4112: $ff
    rst $38                                       ; $4113: $ff
    rst $38                                       ; $4114: $ff
    rst $38                                       ; $4115: $ff
    nop                                           ; $4116: $00
    rst $38                                       ; $4117: $ff
    rst $38                                       ; $4118: $ff
    rst $38                                       ; $4119: $ff
    rst $38                                       ; $411a: $ff
    rst $38                                       ; $411b: $ff
    rst $38                                       ; $411c: $ff
    rst $38                                       ; $411d: $ff
    rst $38                                       ; $411e: $ff
    rst $38                                       ; $411f: $ff
    rst $38                                       ; $4120: $ff
    nop                                           ; $4121: $00
    rst $38                                       ; $4122: $ff
    nop                                           ; $4123: $00
    rst $38                                       ; $4124: $ff
    nop                                           ; $4125: $00
    nop                                           ; $4126: $00
    rst $38                                       ; $4127: $ff
    rst $38                                       ; $4128: $ff
    nop                                           ; $4129: $00
    rst $38                                       ; $412a: $ff
    nop                                           ; $412b: $00
    rst $38                                       ; $412c: $ff
    nop                                           ; $412d: $00
    rst $38                                       ; $412e: $ff
    nop                                           ; $412f: $00
    rst $38                                       ; $4130: $ff
    rst $38                                       ; $4131: $ff
    rst $38                                       ; $4132: $ff
    rst $38                                       ; $4133: $ff
    rst $38                                       ; $4134: $ff
    rst $38                                       ; $4135: $ff
    rst $38                                       ; $4136: $ff
    pop af                                        ; $4137: $f1
    db $fd                                        ; $4138: $fd
    or $ff                                        ; $4139: $f6 $ff
    or $fd                                        ; $413b: $f6 $fd
    or $ff                                        ; $413d: $f6 $ff
    pop af                                        ; $413f: $f1
    rst $38                                       ; $4140: $ff
    nop                                           ; $4141: $00
    rst $38                                       ; $4142: $ff
    nop                                           ; $4143: $00
    rst $38                                       ; $4144: $ff
    nop                                           ; $4145: $00
    rst $38                                       ; $4146: $ff
    nop                                           ; $4147: $00
    rst $38                                       ; $4148: $ff
    nop                                           ; $4149: $00
    rst $38                                       ; $414a: $ff
    nop                                           ; $414b: $00
    rst $38                                       ; $414c: $ff
    nop                                           ; $414d: $00
    rst $38                                       ; $414e: $ff
    nop                                           ; $414f: $00
    rst $38                                       ; $4150: $ff
    rst $38                                       ; $4151: $ff
    rst $38                                       ; $4152: $ff
    rst $38                                       ; $4153: $ff
    rst $38                                       ; $4154: $ff
    rst $38                                       ; $4155: $ff
    db $fd                                        ; $4156: $fd
    add $d7                                       ; $4157: $c6 $d7
    cp e                                          ; $4159: $bb
    rst $38                                       ; $415a: $ff
    cp e                                          ; $415b: $bb
    rst $10                                       ; $415c: $d7
    cp e                                          ; $415d: $bb
    rst $38                                       ; $415e: $ff
    rst RST_00                                    ; $415f: $c7
    rst $38                                       ; $4160: $ff
    nop                                           ; $4161: $00
    rst $38                                       ; $4162: $ff
    nop                                           ; $4163: $00
    rst $38                                       ; $4164: $ff
    nop                                           ; $4165: $00
    rst $38                                       ; $4166: $ff
    nop                                           ; $4167: $00
    rst $38                                       ; $4168: $ff
    nop                                           ; $4169: $00
    rst $38                                       ; $416a: $ff
    nop                                           ; $416b: $00
    rst $38                                       ; $416c: $ff
    nop                                           ; $416d: $00
    rst $38                                       ; $416e: $ff
    nop                                           ; $416f: $00
    rst $38                                       ; $4170: $ff
    rst $38                                       ; $4171: $ff
    rst $38                                       ; $4172: $ff
    rst $38                                       ; $4173: $ff
    rst $38                                       ; $4174: $ff
    rst $38                                       ; $4175: $ff
    rst RST_18                                    ; $4176: $df
    ccf                                           ; $4177: $3f
    cp $7f                                        ; $4178: $fe $7f
    rst $38                                       ; $417a: $ff
    ld a, [hl]                                    ; $417b: $7e
    rst $38                                       ; $417c: $ff
    ld a, [hl]                                    ; $417d: $7e
    rst $38                                       ; $417e: $ff
    ld a, [hl]                                    ; $417f: $7e
    rst $38                                       ; $4180: $ff
    nop                                           ; $4181: $00
    rst $38                                       ; $4182: $ff
    nop                                           ; $4183: $00
    rst $38                                       ; $4184: $ff
    nop                                           ; $4185: $00
    rst $38                                       ; $4186: $ff
    nop                                           ; $4187: $00
    rst $38                                       ; $4188: $ff
    nop                                           ; $4189: $00
    rst $38                                       ; $418a: $ff
    nop                                           ; $418b: $00
    rst $38                                       ; $418c: $ff
    nop                                           ; $418d: $00
    rst $38                                       ; $418e: $ff
    nop                                           ; $418f: $00
    rst $38                                       ; $4190: $ff
    rst $38                                       ; $4191: $ff
    rst $38                                       ; $4192: $ff
    rst $38                                       ; $4193: $ff
    rst $38                                       ; $4194: $ff
    rst $38                                       ; $4195: $ff
    rst $38                                       ; $4196: $ff
    ld [hl], a                                    ; $4197: $77
    xor e                                         ; $4198: $ab
    ld [hl], a                                    ; $4199: $77
    rst $38                                       ; $419a: $ff
    xor e                                         ; $419b: $ab
    rst $38                                       ; $419c: $ff
    jp c, $daff                                   ; $419d: $da $ff $da

    rst $38                                       ; $41a0: $ff
    nop                                           ; $41a1: $00
    rst $38                                       ; $41a2: $ff
    nop                                           ; $41a3: $00
    rst $38                                       ; $41a4: $ff
    nop                                           ; $41a5: $00
    rst $38                                       ; $41a6: $ff
    nop                                           ; $41a7: $00
    rst $38                                       ; $41a8: $ff
    nop                                           ; $41a9: $00
    rst $38                                       ; $41aa: $ff
    nop                                           ; $41ab: $00
    rst $38                                       ; $41ac: $ff
    nop                                           ; $41ad: $00
    rst $38                                       ; $41ae: $ff
    nop                                           ; $41af: $00
    rst $38                                       ; $41b0: $ff
    rst $38                                       ; $41b1: $ff
    rst $38                                       ; $41b2: $ff
    rst $38                                       ; $41b3: $ff
    rst $38                                       ; $41b4: $ff
    rst $38                                       ; $41b5: $ff
    xor $b1                                       ; $41b6: $ee $b1
    rst $38                                       ; $41b8: $ff
    ld e, e                                       ; $41b9: $5b
    cp a                                          ; $41ba: $bf
    ld e, e                                       ; $41bb: $5b
    rst $38                                       ; $41bc: $ff
    db $eb                                        ; $41bd: $eb
    rst $38                                       ; $41be: $ff
    db $eb                                        ; $41bf: $eb
    rst $38                                       ; $41c0: $ff
    nop                                           ; $41c1: $00
    rst $38                                       ; $41c2: $ff
    nop                                           ; $41c3: $00
    rst $38                                       ; $41c4: $ff
    nop                                           ; $41c5: $00
    rst $38                                       ; $41c6: $ff
    nop                                           ; $41c7: $00
    rst $38                                       ; $41c8: $ff
    nop                                           ; $41c9: $00
    rst $38                                       ; $41ca: $ff
    nop                                           ; $41cb: $00
    rst $38                                       ; $41cc: $ff
    nop                                           ; $41cd: $00
    rst $38                                       ; $41ce: $ff
    nop                                           ; $41cf: $00
    rst $38                                       ; $41d0: $ff
    rst $38                                       ; $41d1: $ff
    rst $38                                       ; $41d2: $ff
    rst $38                                       ; $41d3: $ff
    rst $38                                       ; $41d4: $ff
    rst $38                                       ; $41d5: $ff
    rst $38                                       ; $41d6: $ff
    adc l                                         ; $41d7: $8d
    rst $28                                       ; $41d8: $ef
    or l                                          ; $41d9: $b5
    rst $38                                       ; $41da: $ff
    adc l                                         ; $41db: $8d
    rst $30                                       ; $41dc: $f7
    xor l                                         ; $41dd: $ad
    rst $38                                       ; $41de: $ff
    or l                                          ; $41df: $b5
    rst $38                                       ; $41e0: $ff
    nop                                           ; $41e1: $00
    rst $38                                       ; $41e2: $ff
    nop                                           ; $41e3: $00
    rst $38                                       ; $41e4: $ff
    nop                                           ; $41e5: $00
    rst $38                                       ; $41e6: $ff
    nop                                           ; $41e7: $00
    rst $38                                       ; $41e8: $ff
    nop                                           ; $41e9: $00
    rst $38                                       ; $41ea: $ff
    nop                                           ; $41eb: $00
    rst $38                                       ; $41ec: $ff
    nop                                           ; $41ed: $00
    rst $38                                       ; $41ee: $ff
    nop                                           ; $41ef: $00
    rst $38                                       ; $41f0: $ff
    rst $38                                       ; $41f1: $ff
    rst $38                                       ; $41f2: $ff
    rst $38                                       ; $41f3: $ff
    rst $38                                       ; $41f4: $ff
    rst $38                                       ; $41f5: $ff
    xor a                                         ; $41f6: $af
    ld [hl], a                                    ; $41f7: $77
    rst RST_18                                    ; $41f8: $df
    xor a                                         ; $41f9: $af
    rst $38                                       ; $41fa: $ff
    rst RST_18                                    ; $41fb: $df
    rst RST_18                                    ; $41fc: $df
    xor a                                         ; $41fd: $af
    xor a                                         ; $41fe: $af
    ld [hl], a                                    ; $41ff: $77
    rst $38                                       ; $4200: $ff
    nop                                           ; $4201: $00
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
    ld a, a                                       ; $4210: $7f
    ld a, a                                       ; $4211: $7f
    rst $38                                       ; $4212: $ff
    ld a, a                                       ; $4213: $7f
    ld a, a                                       ; $4214: $7f
    ld a, a                                       ; $4215: $7f
    ld a, a                                       ; $4216: $7f
    ld a, a                                       ; $4217: $7f
    rst $38                                       ; $4218: $ff
    ld a, a                                       ; $4219: $7f
    ld a, a                                       ; $421a: $7f
    ld a, a                                       ; $421b: $7f
    rst $38                                       ; $421c: $ff
    ld a, a                                       ; $421d: $7f
    ld a, a                                       ; $421e: $7f
    ld a, a                                       ; $421f: $7f
    rst $38                                       ; $4220: $ff
    nop                                           ; $4221: $00
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
    nop                                           ; $4231: $00
    rst $38                                       ; $4232: $ff
    rst $38                                       ; $4233: $ff
    rst $38                                       ; $4234: $ff
    rst $38                                       ; $4235: $ff
    rst $38                                       ; $4236: $ff
    rst $38                                       ; $4237: $ff
    rst $38                                       ; $4238: $ff
    rst $38                                       ; $4239: $ff
    rst $38                                       ; $423a: $ff
    rst $38                                       ; $423b: $ff
    rst $38                                       ; $423c: $ff
    rst $38                                       ; $423d: $ff
    rst $38                                       ; $423e: $ff
    rst $38                                       ; $423f: $ff
    nop                                           ; $4240: $00
    rst $38                                       ; $4241: $ff
    rst $38                                       ; $4242: $ff
    nop                                           ; $4243: $00
    rst $38                                       ; $4244: $ff
    nop                                           ; $4245: $00
    rst $38                                       ; $4246: $ff
    nop                                           ; $4247: $00
    rst $38                                       ; $4248: $ff
    nop                                           ; $4249: $00
    rst $38                                       ; $424a: $ff
    nop                                           ; $424b: $00
    rst $38                                       ; $424c: $ff
    nop                                           ; $424d: $00
    rst $38                                       ; $424e: $ff
    nop                                           ; $424f: $00
    rst $38                                       ; $4250: $ff
    nop                                           ; $4251: $00
    rst $38                                       ; $4252: $ff
    rst $38                                       ; $4253: $ff
    rst $38                                       ; $4254: $ff
    rst $38                                       ; $4255: $ff
    rst $38                                       ; $4256: $ff
    rst $38                                       ; $4257: $ff
    rst $38                                       ; $4258: $ff
    rst $38                                       ; $4259: $ff
    rst $38                                       ; $425a: $ff
    rst $38                                       ; $425b: $ff
    rst $38                                       ; $425c: $ff
    rst $38                                       ; $425d: $ff
    cp $fe                                        ; $425e: $fe $fe
    nop                                           ; $4260: $00
    rst $38                                       ; $4261: $ff
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
    cp $01                                        ; $426e: $fe $01
    rst $38                                       ; $4270: $ff
    nop                                           ; $4271: $00
    rst $38                                       ; $4272: $ff
    rst $38                                       ; $4273: $ff
    rst $38                                       ; $4274: $ff
    rst $38                                       ; $4275: $ff
    rst $38                                       ; $4276: $ff
    rst $38                                       ; $4277: $ff
    rst $38                                       ; $4278: $ff
    rst $38                                       ; $4279: $ff
    rst $38                                       ; $427a: $ff
    rst $38                                       ; $427b: $ff
    rst $38                                       ; $427c: $ff
    rst $38                                       ; $427d: $ff
    nop                                           ; $427e: $00
    nop                                           ; $427f: $00
    nop                                           ; $4280: $00
    rst $38                                       ; $4281: $ff
    rst $38                                       ; $4282: $ff
    nop                                           ; $4283: $00
    rst $38                                       ; $4284: $ff
    nop                                           ; $4285: $00
    rst $38                                       ; $4286: $ff
    nop                                           ; $4287: $00
    rst $38                                       ; $4288: $ff
    nop                                           ; $4289: $00
    rst $38                                       ; $428a: $ff
    nop                                           ; $428b: $00
    rst $38                                       ; $428c: $ff
    nop                                           ; $428d: $00
    nop                                           ; $428e: $00
    rst $38                                       ; $428f: $ff
    rst $38                                       ; $4290: $ff
    rst $38                                       ; $4291: $ff
    rst $38                                       ; $4292: $ff
    rst $38                                       ; $4293: $ff
    rst $38                                       ; $4294: $ff
    rst $38                                       ; $4295: $ff
    rst $38                                       ; $4296: $ff
    rst $38                                       ; $4297: $ff
    rst $38                                       ; $4298: $ff
    rst $38                                       ; $4299: $ff
    rst $38                                       ; $429a: $ff
    rst $38                                       ; $429b: $ff
    rst $38                                       ; $429c: $ff
    rst $38                                       ; $429d: $ff
    nop                                           ; $429e: $00
    nop                                           ; $429f: $00
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
    nop                                           ; $42ae: $00
    rst $38                                       ; $42af: $ff
    rst $38                                       ; $42b0: $ff
    nop                                           ; $42b1: $00
    xor d                                         ; $42b2: $aa
    ld d, l                                       ; $42b3: $55
    ld d, l                                       ; $42b4: $55
    xor d                                         ; $42b5: $aa
    xor d                                         ; $42b6: $aa
    ld d, l                                       ; $42b7: $55
    ld d, l                                       ; $42b8: $55
    xor d                                         ; $42b9: $aa
    xor d                                         ; $42ba: $aa
    ld d, l                                       ; $42bb: $55
    ld d, l                                       ; $42bc: $55
    xor d                                         ; $42bd: $aa
    xor d                                         ; $42be: $aa
    ld d, l                                       ; $42bf: $55
    nop                                           ; $42c0: $00
    nop                                           ; $42c1: $00
    nop                                           ; $42c2: $00
    nop                                           ; $42c3: $00
    nop                                           ; $42c4: $00
    nop                                           ; $42c5: $00
    nop                                           ; $42c6: $00
    nop                                           ; $42c7: $00
    nop                                           ; $42c8: $00
    nop                                           ; $42c9: $00
    nop                                           ; $42ca: $00
    nop                                           ; $42cb: $00
    nop                                           ; $42cc: $00
    nop                                           ; $42cd: $00
    nop                                           ; $42ce: $00
    nop                                           ; $42cf: $00
    cp $fe                                        ; $42d0: $fe $fe
    cp $fe                                        ; $42d2: $fe $fe
    cp $fe                                        ; $42d4: $fe $fe
    cp $fe                                        ; $42d6: $fe $fe
    cp $fe                                        ; $42d8: $fe $fe
    cp $fe                                        ; $42da: $fe $fe
    cp $fe                                        ; $42dc: $fe $fe
    cp $fe                                        ; $42de: $fe $fe
    cp $01                                        ; $42e0: $fe $01
    cp $01                                        ; $42e2: $fe $01
    cp $01                                        ; $42e4: $fe $01
    cp $01                                        ; $42e6: $fe $01
    cp $01                                        ; $42e8: $fe $01
    cp $01                                        ; $42ea: $fe $01
    cp $01                                        ; $42ec: $fe $01
    cp $01                                        ; $42ee: $fe $01
    ld d, l                                       ; $42f0: $55
    xor d                                         ; $42f1: $aa
    xor d                                         ; $42f2: $aa
    ld d, l                                       ; $42f3: $55
    nop                                           ; $42f4: $00
    rst $38                                       ; $42f5: $ff
    rst $38                                       ; $42f6: $ff
    rst $38                                       ; $42f7: $ff
    rst $38                                       ; $42f8: $ff
    rst $38                                       ; $42f9: $ff
    nop                                           ; $42fa: $00
    rst $38                                       ; $42fb: $ff
    nop                                           ; $42fc: $00
    rst $38                                       ; $42fd: $ff
    rst $38                                       ; $42fe: $ff
    rst $38                                       ; $42ff: $ff
    nop                                           ; $4300: $00

Jump_005_4301:
    nop                                           ; $4301: $00
    nop                                           ; $4302: $00
    nop                                           ; $4303: $00
    nop                                           ; $4304: $00
    nop                                           ; $4305: $00
    nop                                           ; $4306: $00
    nop                                           ; $4307: $00
    nop                                           ; $4308: $00
    nop                                           ; $4309: $00
    nop                                           ; $430a: $00
    nop                                           ; $430b: $00
    nop                                           ; $430c: $00
    nop                                           ; $430d: $00
    nop                                           ; $430e: $00
    nop                                           ; $430f: $00
    ld a, a                                       ; $4310: $7f
    ld a, a                                       ; $4311: $7f
    rst $38                                       ; $4312: $ff
    ld a, a                                       ; $4313: $7f
    ld a, a                                       ; $4314: $7f
    ld a, a                                       ; $4315: $7f
    rst $38                                       ; $4316: $ff
    ld a, a                                       ; $4317: $7f
    ld a, a                                       ; $4318: $7f
    ld a, a                                       ; $4319: $7f
    rst $38                                       ; $431a: $ff
    ld a, a                                       ; $431b: $7f
    ld a, a                                       ; $431c: $7f
    ld a, a                                       ; $431d: $7f
    ld a, a                                       ; $431e: $7f
    ld a, a                                       ; $431f: $7f
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
    ld hl, sp-$04                                 ; $4331: $f8 $fc
    di                                            ; $4333: $f3
    ld hl, sp-$0c                                 ; $4334: $f8 $f4
    ld sp, hl                                     ; $4336: $f9
    db $f4                                        ; $4337: $f4
    db $fc                                        ; $4338: $fc
    ei                                            ; $4339: $fb
    rst $38                                       ; $433a: $ff
    rst $38                                       ; $433b: $ff
    rst $38                                       ; $433c: $ff
    rst $38                                       ; $433d: $ff
    rst $38                                       ; $433e: $ff
    rst $38                                       ; $433f: $ff
    rst $38                                       ; $4340: $ff
    rlca                                          ; $4341: $07
    rst $38                                       ; $4342: $ff
    rrca                                          ; $4343: $0f
    rst $38                                       ; $4344: $ff
    inc c                                         ; $4345: $0c
    rst $38                                       ; $4346: $ff
    dec c                                         ; $4347: $0d
    rst $38                                       ; $4348: $ff
    rlca                                          ; $4349: $07
    rst $38                                       ; $434a: $ff
    nop                                           ; $434b: $00
    rst $38                                       ; $434c: $ff
    nop                                           ; $434d: $00
    rst $38                                       ; $434e: $ff
    nop                                           ; $434f: $00
    rst $38                                       ; $4350: $ff
    rst $38                                       ; $4351: $ff
    rst $38                                       ; $4352: $ff
    ld a, a                                       ; $4353: $7f
    ld a, a                                       ; $4354: $7f
    rst $38                                       ; $4355: $ff
    ld a, a                                       ; $4356: $7f
    rst $38                                       ; $4357: $ff
    rst $38                                       ; $4358: $ff
    rst $38                                       ; $4359: $ff
    rst $38                                       ; $435a: $ff
    rst $38                                       ; $435b: $ff
    rst $38                                       ; $435c: $ff
    rst $38                                       ; $435d: $ff
    rst $38                                       ; $435e: $ff
    rst $38                                       ; $435f: $ff
    rst $38                                       ; $4360: $ff
    nop                                           ; $4361: $00
    rst $38                                       ; $4362: $ff
    add b                                         ; $4363: $80
    rst $38                                       ; $4364: $ff
    add b                                         ; $4365: $80
    rst $38                                       ; $4366: $ff
    add b                                         ; $4367: $80
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
    ld a, [hl]                                    ; $4373: $7e
    rst $38                                       ; $4374: $ff
    ld a, [hl]                                    ; $4375: $7e
    rst $38                                       ; $4376: $ff
    ld a, [hl]                                    ; $4377: $7e
    rst $38                                       ; $4378: $ff
    ld a, [hl]                                    ; $4379: $7e
    rst $38                                       ; $437a: $ff
    ld a, [hl]                                    ; $437b: $7e
    rst $38                                       ; $437c: $ff
    ld a, a                                       ; $437d: $7f
    rst $38                                       ; $437e: $ff
    ld a, a                                       ; $437f: $7f
    rst $38                                       ; $4380: $ff
    nop                                           ; $4381: $00
    rst $38                                       ; $4382: $ff
    nop                                           ; $4383: $00
    rst $38                                       ; $4384: $ff
    nop                                           ; $4385: $00
    rst $38                                       ; $4386: $ff
    nop                                           ; $4387: $00
    rst $38                                       ; $4388: $ff
    nop                                           ; $4389: $00
    rst $38                                       ; $438a: $ff
    nop                                           ; $438b: $00
    rst $38                                       ; $438c: $ff
    nop                                           ; $438d: $00
    rst $38                                       ; $438e: $ff
    nop                                           ; $438f: $00
    rst $38                                       ; $4390: $ff
    rst $38                                       ; $4391: $ff
    cp a                                          ; $4392: $bf
    halt                                          ; $4393: $76
    db $eb                                        ; $4394: $eb
    or a                                          ; $4395: $b7
    cp a                                          ; $4396: $bf
    ld l, e                                       ; $4397: $6b
    rst $38                                       ; $4398: $ff
    and e                                         ; $4399: $a3
    cp a                                          ; $439a: $bf
    ld l, e                                       ; $439b: $6b
    rst $38                                       ; $439c: $ff
    rst $38                                       ; $439d: $ff
    rst $38                                       ; $439e: $ff
    rst $38                                       ; $439f: $ff
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
    rst $38                                       ; $43b1: $ff
    rst $38                                       ; $43b2: $ff
    ld [hl+], a                                   ; $43b3: $22
    rst $38                                       ; $43b4: $ff
    halt                                          ; $43b5: $76
    rst $38                                       ; $43b6: $ff
    halt                                          ; $43b7: $76
    rst $38                                       ; $43b8: $ff
    halt                                          ; $43b9: $76
    rst $38                                       ; $43ba: $ff
    halt                                          ; $43bb: $76
    rst $38                                       ; $43bc: $ff
    rst $38                                       ; $43bd: $ff
    rst $38                                       ; $43be: $ff
    rst $38                                       ; $43bf: $ff
    rst $38                                       ; $43c0: $ff
    nop                                           ; $43c1: $00
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
    rst $38                                       ; $43d1: $ff
    ei                                            ; $43d2: $fb
    daa                                           ; $43d3: $27
    db $fd                                        ; $43d4: $fd
    db $eb                                        ; $43d5: $eb
    ei                                            ; $43d6: $fb
    daa                                           ; $43d7: $27
    db $fd                                        ; $43d8: $fd
    db $eb                                        ; $43d9: $eb
    rst $38                                       ; $43da: $ff
    dec l                                         ; $43db: $2d
    rst $38                                       ; $43dc: $ff
    rst $38                                       ; $43dd: $ff
    rst $38                                       ; $43de: $ff
    rst $38                                       ; $43df: $ff
    rst $38                                       ; $43e0: $ff
    nop                                           ; $43e1: $00
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
    rst $38                                       ; $43ee: $ff
    nop                                           ; $43ef: $00
    cp $fe                                        ; $43f0: $fe $fe
    cp $5e                                        ; $43f2: $fe $5e
    cp $5e                                        ; $43f4: $fe $5e
    ld e, [hl]                                    ; $43f6: $5e
    cp [hl]                                       ; $43f7: $be
    cp $be                                        ; $43f8: $fe $be
    cp $be                                        ; $43fa: $fe $be
    cp $fe                                        ; $43fc: $fe $fe
    cp $fe                                        ; $43fe: $fe $fe
    cp $01                                        ; $4400: $fe $01
    cp $01                                        ; $4402: $fe $01
    cp $01                                        ; $4404: $fe $01
    cp $01                                        ; $4406: $fe $01
    cp $01                                        ; $4408: $fe $01
    cp $01                                        ; $440a: $fe $01
    cp $01                                        ; $440c: $fe $01
    cp $01                                        ; $440e: $fe $01
    ld d, l                                       ; $4410: $55
    xor e                                         ; $4411: $ab
    xor e                                         ; $4412: $ab
    ld d, l                                       ; $4413: $55
    ld d, l                                       ; $4414: $55
    xor e                                         ; $4415: $ab
    xor e                                         ; $4416: $ab
    ld d, l                                       ; $4417: $55
    ld d, l                                       ; $4418: $55
    xor e                                         ; $4419: $ab
    xor e                                         ; $441a: $ab
    ld d, l                                       ; $441b: $55
    ld d, l                                       ; $441c: $55
    xor e                                         ; $441d: $ab
    xor e                                         ; $441e: $ab
    ld d, l                                       ; $441f: $55
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    nop                                           ; $4422: $00
    nop                                           ; $4423: $00
    nop                                           ; $4424: $00
    nop                                           ; $4425: $00
    nop                                           ; $4426: $00
    nop                                           ; $4427: $00
    nop                                           ; $4428: $00
    nop                                           ; $4429: $00
    nop                                           ; $442a: $00
    nop                                           ; $442b: $00
    nop                                           ; $442c: $00
    nop                                           ; $442d: $00
    nop                                           ; $442e: $00
    nop                                           ; $442f: $00
    cp $fe                                        ; $4430: $fe $fe
    rst $38                                       ; $4432: $ff
    rst $38                                       ; $4433: $ff
    rst $38                                       ; $4434: $ff
    rst $38                                       ; $4435: $ff
    rst $38                                       ; $4436: $ff
    rst $38                                       ; $4437: $ff
    rst $38                                       ; $4438: $ff
    rst $38                                       ; $4439: $ff
    rst $38                                       ; $443a: $ff
    rst $38                                       ; $443b: $ff
    rst $38                                       ; $443c: $ff
    rst $38                                       ; $443d: $ff
    rst $38                                       ; $443e: $ff
    rst $38                                       ; $443f: $ff
    cp $01                                        ; $4440: $fe $01
    rst $38                                       ; $4442: $ff
    nop                                           ; $4443: $00
    rst $38                                       ; $4444: $ff
    nop                                           ; $4445: $00
    rst $38                                       ; $4446: $ff
    nop                                           ; $4447: $00
    rst $38                                       ; $4448: $ff
    nop                                           ; $4449: $00
    rst $38                                       ; $444a: $ff
    nop                                           ; $444b: $00
    rst $38                                       ; $444c: $ff
    nop                                           ; $444d: $00
    rst $38                                       ; $444e: $ff
    nop                                           ; $444f: $00
    nop                                           ; $4450: $00
    rst $38                                       ; $4451: $ff
    rst $38                                       ; $4452: $ff
    rst $38                                       ; $4453: $ff
    rst $38                                       ; $4454: $ff
    rst $38                                       ; $4455: $ff
    rst $38                                       ; $4456: $ff
    rst $38                                       ; $4457: $ff
    rst $38                                       ; $4458: $ff
    rst $38                                       ; $4459: $ff
    rst $38                                       ; $445a: $ff
    rst $38                                       ; $445b: $ff
    rst $38                                       ; $445c: $ff
    rst $38                                       ; $445d: $ff
    rst $38                                       ; $445e: $ff
    rst $38                                       ; $445f: $ff
    rst $38                                       ; $4460: $ff
    nop                                           ; $4461: $00
    rst $38                                       ; $4462: $ff
    nop                                           ; $4463: $00
    rst $38                                       ; $4464: $ff
    nop                                           ; $4465: $00
    rst $38                                       ; $4466: $ff
    nop                                           ; $4467: $00
    rst $38                                       ; $4468: $ff
    nop                                           ; $4469: $00
    rst $38                                       ; $446a: $ff
    nop                                           ; $446b: $00
    rst $38                                       ; $446c: $ff
    nop                                           ; $446d: $00
    rst $38                                       ; $446e: $ff
    nop                                           ; $446f: $00
    nop                                           ; $4470: $00
    rst $38                                       ; $4471: $ff
    rst $38                                       ; $4472: $ff
    rst $38                                       ; $4473: $ff
    cp $ff                                        ; $4474: $fe $ff
    ld hl, sp-$01                                 ; $4476: $f8 $ff
    pop af                                        ; $4478: $f1
    rst $38                                       ; $4479: $ff
    pop af                                        ; $447a: $f1
    rst $38                                       ; $447b: $ff
    ld hl, sp-$01                                 ; $447c: $f8 $ff
    cp $ff                                        ; $447e: $fe $ff
    rst $38                                       ; $4480: $ff
    nop                                           ; $4481: $00
    rst $38                                       ; $4482: $ff
    nop                                           ; $4483: $00
    rst $38                                       ; $4484: $ff
    ld bc, $07ff                                  ; $4485: $01 $ff $07
    rst $38                                       ; $4488: $ff
    ld c, $ff                                     ; $4489: $0e $ff
    ld c, $ff                                     ; $448b: $0e $ff
    rlca                                          ; $448d: $07
    rst $38                                       ; $448e: $ff
    ld bc, rP1                                    ; $448f: $01 $00 $ff
    ret nz                                        ; $4492: $c0

    rst $38                                       ; $4493: $ff
    inc bc                                        ; $4494: $03
    rst $38                                       ; $4495: $ff
    ld a, a                                       ; $4496: $7f
    rst $38                                       ; $4497: $ff
    rst $38                                       ; $4498: $ff
    rst $38                                       ; $4499: $ff
    rst $38                                       ; $449a: $ff
    rst $38                                       ; $449b: $ff
    ld a, a                                       ; $449c: $7f
    rst $38                                       ; $449d: $ff
    rrca                                          ; $449e: $0f
    rst $38                                       ; $449f: $ff
    rst $38                                       ; $44a0: $ff
    inc bc                                        ; $44a1: $03
    rst $38                                       ; $44a2: $ff
    ccf                                           ; $44a3: $3f
    rst $38                                       ; $44a4: $ff
    db $fc                                        ; $44a5: $fc
    rst $38                                       ; $44a6: $ff
    add b                                         ; $44a7: $80
    rst $38                                       ; $44a8: $ff
    nop                                           ; $44a9: $00
    rst $38                                       ; $44aa: $ff
    nop                                           ; $44ab: $00
    rst $38                                       ; $44ac: $ff
    add b                                         ; $44ad: $80
    rst $38                                       ; $44ae: $ff
    ldh a, [rP1]                                  ; $44af: $f0 $00
    rst $38                                       ; $44b1: $ff
    inc bc                                        ; $44b2: $03
    rst $38                                       ; $44b3: $ff
    pop af                                        ; $44b4: $f1
    rst $38                                       ; $44b5: $ff
    ld sp, hl                                     ; $44b6: $f9
    rst $38                                       ; $44b7: $ff
    pop bc                                        ; $44b8: $c1
    rst $38                                       ; $44b9: $ff
    call nz, $f9ff                                ; $44ba: $c4 $ff $f9
    rst $38                                       ; $44bd: $ff
    di                                            ; $44be: $f3
    rst $38                                       ; $44bf: $ff
    rst $38                                       ; $44c0: $ff
    ldh a, [rIE]                                  ; $44c1: $f0 $ff
    db $fc                                        ; $44c3: $fc
    rst $38                                       ; $44c4: $ff
    ld c, $ff                                     ; $44c5: $0e $ff
    ld b, $ff                                     ; $44c7: $06 $ff
    ld a, $ff                                     ; $44c9: $3e $ff
    dec sp                                        ; $44cb: $3b
    rst $38                                       ; $44cc: $ff
    ld b, $ff                                     ; $44cd: $06 $ff
    inc c                                         ; $44cf: $0c
    nop                                           ; $44d0: $00
    rst $38                                       ; $44d1: $ff
    rst $38                                       ; $44d2: $ff
    rst $38                                       ; $44d3: $ff
    rst $38                                       ; $44d4: $ff
    rst $38                                       ; $44d5: $ff
    rst $38                                       ; $44d6: $ff
    rst $38                                       ; $44d7: $ff
    rst $38                                       ; $44d8: $ff
    rst $38                                       ; $44d9: $ff
    db $fd                                        ; $44da: $fd
    rst $38                                       ; $44db: $ff
    ld sp, hl                                     ; $44dc: $f9
    rst $38                                       ; $44dd: $ff
    db $e3                                        ; $44de: $e3
    rst $38                                       ; $44df: $ff
    rst $38                                       ; $44e0: $ff
    nop                                           ; $44e1: $00
    rst $38                                       ; $44e2: $ff
    nop                                           ; $44e3: $00
    rst $38                                       ; $44e4: $ff
    nop                                           ; $44e5: $00
    rst $38                                       ; $44e6: $ff
    nop                                           ; $44e7: $00
    rst $38                                       ; $44e8: $ff
    nop                                           ; $44e9: $00
    rst $38                                       ; $44ea: $ff
    ld [bc], a                                    ; $44eb: $02
    rst $38                                       ; $44ec: $ff
    ld b, $ff                                     ; $44ed: $06 $ff
    inc e                                         ; $44ef: $1c
    nop                                           ; $44f0: $00
    rst $38                                       ; $44f1: $ff
    rst $38                                       ; $44f2: $ff
    rst $38                                       ; $44f3: $ff
    rst $38                                       ; $44f4: $ff
    rst $38                                       ; $44f5: $ff
    rst $38                                       ; $44f6: $ff
    rst $38                                       ; $44f7: $ff
    rst $38                                       ; $44f8: $ff
    rst $38                                       ; $44f9: $ff
    ld hl, sp-$01                                 ; $44fa: $f8 $ff
    pop af                                        ; $44fc: $f1
    rst $38                                       ; $44fd: $ff
    jp rIE                                        ; $44fe: $c3 $ff $ff


    nop                                           ; $4501: $00
    rst $38                                       ; $4502: $ff
    nop                                           ; $4503: $00
    rst $38                                       ; $4504: $ff
    nop                                           ; $4505: $00
    rst $38                                       ; $4506: $ff
    nop                                           ; $4507: $00
    rst $38                                       ; $4508: $ff
    nop                                           ; $4509: $00
    rst $38                                       ; $450a: $ff
    rlca                                          ; $450b: $07
    rst $38                                       ; $450c: $ff
    ld c, $ff                                     ; $450d: $0e $ff
    inc a                                         ; $450f: $3c
    ld d, l                                       ; $4510: $55
    xor e                                         ; $4511: $ab
    xor c                                         ; $4512: $a9
    ld d, a                                       ; $4513: $57
    ld d, h                                       ; $4514: $54
    xor e                                         ; $4515: $ab
    xor d                                         ; $4516: $aa
    ld d, l                                       ; $4517: $55
    ld d, l                                       ; $4518: $55
    xor d                                         ; $4519: $aa
    xor d                                         ; $451a: $aa
    ld d, l                                       ; $451b: $55
    ld d, l                                       ; $451c: $55
    xor d                                         ; $451d: $aa
    xor d                                         ; $451e: $aa
    ld d, l                                       ; $451f: $55
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    nop                                           ; $4524: $00
    nop                                           ; $4525: $00
    nop                                           ; $4526: $00
    nop                                           ; $4527: $00
    nop                                           ; $4528: $00
    nop                                           ; $4529: $00
    nop                                           ; $452a: $00
    nop                                           ; $452b: $00
    nop                                           ; $452c: $00
    nop                                           ; $452d: $00
    nop                                           ; $452e: $00
    nop                                           ; $452f: $00
    rst $38                                       ; $4530: $ff
    ld a, a                                       ; $4531: $7f
    rst $38                                       ; $4532: $ff
    ld a, a                                       ; $4533: $7f
    cp a                                          ; $4534: $bf
    rst $38                                       ; $4535: $ff
    cp a                                          ; $4536: $bf
    rst $38                                       ; $4537: $ff
    ld e, a                                       ; $4538: $5f
    rst $38                                       ; $4539: $ff
    xor a                                         ; $453a: $af
    ld a, a                                       ; $453b: $7f
    ld d, e                                       ; $453c: $53
    cp a                                          ; $453d: $bf
    xor h                                         ; $453e: $ac
    ld e, a                                       ; $453f: $5f
    rst $38                                       ; $4540: $ff
    rst $38                                       ; $4541: $ff
    rst $38                                       ; $4542: $ff
    rst $38                                       ; $4543: $ff
    ld a, a                                       ; $4544: $7f
    ld a, a                                       ; $4545: $7f
    ld a, a                                       ; $4546: $7f
    ld a, a                                       ; $4547: $7f
    ccf                                           ; $4548: $3f
    ccf                                           ; $4549: $3f
    rra                                           ; $454a: $1f
    rra                                           ; $454b: $1f
    rrca                                          ; $454c: $0f
    rrca                                          ; $454d: $0f
    inc bc                                        ; $454e: $03
    inc bc                                        ; $454f: $03
    rst $38                                       ; $4550: $ff
    rst $38                                       ; $4551: $ff
    rst $38                                       ; $4552: $ff
    rst $38                                       ; $4553: $ff
    rst $38                                       ; $4554: $ff
    rst $38                                       ; $4555: $ff
    rst $38                                       ; $4556: $ff
    rst $38                                       ; $4557: $ff
    rst $38                                       ; $4558: $ff
    rst $38                                       ; $4559: $ff
    rst $20                                       ; $455a: $e7
    rst $38                                       ; $455b: $ff
    ldh [rIE], a                                  ; $455c: $e0 $ff
    nop                                           ; $455e: $00
    rst $38                                       ; $455f: $ff
    rst $38                                       ; $4560: $ff
    nop                                           ; $4561: $00
    rst $38                                       ; $4562: $ff
    nop                                           ; $4563: $00
    rst $38                                       ; $4564: $ff
    nop                                           ; $4565: $00
    rst $38                                       ; $4566: $ff
    nop                                           ; $4567: $00
    rst $38                                       ; $4568: $ff
    nop                                           ; $4569: $00
    rst $38                                       ; $456a: $ff
    jr @+$01                                      ; $456b: $18 $ff

    rra                                           ; $456d: $1f
    rst $38                                       ; $456e: $ff
    rra                                           ; $456f: $1f
    rst $38                                       ; $4570: $ff
    rst $38                                       ; $4571: $ff
    rst $38                                       ; $4572: $ff
    rst $38                                       ; $4573: $ff
    rst $38                                       ; $4574: $ff
    rst $38                                       ; $4575: $ff
    rst $38                                       ; $4576: $ff
    rst $38                                       ; $4577: $ff
    db $fc                                        ; $4578: $fc
    rst $38                                       ; $4579: $ff
    add b                                         ; $457a: $80
    rst $38                                       ; $457b: $ff
    inc bc                                        ; $457c: $03
    rst $38                                       ; $457d: $ff
    nop                                           ; $457e: $00
    rst $38                                       ; $457f: $ff
    rst $38                                       ; $4580: $ff
    nop                                           ; $4581: $00
    rst $38                                       ; $4582: $ff
    nop                                           ; $4583: $00
    rst $38                                       ; $4584: $ff
    nop                                           ; $4585: $00
    rst $38                                       ; $4586: $ff
    nop                                           ; $4587: $00
    rst $38                                       ; $4588: $ff
    inc bc                                        ; $4589: $03
    rst $38                                       ; $458a: $ff
    ld a, a                                       ; $458b: $7f
    rst $38                                       ; $458c: $ff
    db $fc                                        ; $458d: $fc
    rst $38                                       ; $458e: $ff
    add b                                         ; $458f: $80
    jp $f1ff                                      ; $4590: $c3 $ff $f1


    rst $38                                       ; $4593: $ff
    pop af                                        ; $4594: $f1
    rst $38                                       ; $4595: $ff
    jp $07ff                                      ; $4596: $c3 $ff $07


    rst $38                                       ; $4599: $ff
    ccf                                           ; $459a: $3f
    rst $38                                       ; $459b: $ff
    rst $38                                       ; $459c: $ff
    rst $38                                       ; $459d: $ff
    nop                                           ; $459e: $00
    rst $38                                       ; $459f: $ff
    rst $38                                       ; $45a0: $ff
    inc a                                         ; $45a1: $3c
    rst $38                                       ; $45a2: $ff
    ld c, $ff                                     ; $45a3: $0e $ff
    ld c, $ff                                     ; $45a5: $0e $ff
    inc a                                         ; $45a7: $3c
    rst $38                                       ; $45a8: $ff
    ld hl, sp-$01                                 ; $45a9: $f8 $ff
    ret nz                                        ; $45ab: $c0

    rst $38                                       ; $45ac: $ff
    nop                                           ; $45ad: $00
    rst $38                                       ; $45ae: $ff
    nop                                           ; $45af: $00
    rst $20                                       ; $45b0: $e7
    rst $38                                       ; $45b1: $ff
    rst RST_08                                    ; $45b2: $cf
    rst $38                                       ; $45b3: $ff
    sbc h                                         ; $45b4: $9c
    rst $38                                       ; $45b5: $ff
    sub b                                         ; $45b6: $90
    rst $38                                       ; $45b7: $ff
    add e                                         ; $45b8: $83
    rst $38                                       ; $45b9: $ff
    rst RST_08                                    ; $45ba: $cf
    rst $38                                       ; $45bb: $ff
    rst $38                                       ; $45bc: $ff
    rst $38                                       ; $45bd: $ff
    nop                                           ; $45be: $00
    rst $38                                       ; $45bf: $ff
    rst $38                                       ; $45c0: $ff
    jr @+$01                                      ; $45c1: $18 $ff

    jr nc, @+$01                                  ; $45c3: $30 $ff

    ld h, e                                       ; $45c5: $63
    rst $38                                       ; $45c6: $ff
    ld l, a                                       ; $45c7: $6f
    rst $38                                       ; $45c8: $ff
    ld a, h                                       ; $45c9: $7c
    rst $38                                       ; $45ca: $ff
    jr nc, @+$01                                  ; $45cb: $30 $ff

    nop                                           ; $45cd: $00
    rst $38                                       ; $45ce: $ff
    nop                                           ; $45cf: $00
    rst RST_00                                    ; $45d0: $c7
    rst $38                                       ; $45d1: $ff
    ld c, $ff                                     ; $45d2: $0e $ff
    jr @+$01                                      ; $45d4: $18 $ff

    add e                                         ; $45d6: $83
    rst $38                                       ; $45d7: $ff
    rst RST_08                                    ; $45d8: $cf
    rst $38                                       ; $45d9: $ff
    cp $ff                                        ; $45da: $fe $ff
    db $fc                                        ; $45dc: $fc
    rst $38                                       ; $45dd: $ff
    nop                                           ; $45de: $00
    rst $38                                       ; $45df: $ff
    rst $38                                       ; $45e0: $ff
    jr c, @+$01                                   ; $45e1: $38 $ff

    pop af                                        ; $45e3: $f1
    rst $38                                       ; $45e4: $ff
    rst $20                                       ; $45e5: $e7
    rst $38                                       ; $45e6: $ff
    ld a, h                                       ; $45e7: $7c
    rst $38                                       ; $45e8: $ff
    jr nc, @+$01                                  ; $45e9: $30 $ff

    ld bc, $03ff                                  ; $45eb: $01 $ff $03
    rst $38                                       ; $45ee: $ff
    rlca                                          ; $45ef: $07
    nop                                           ; $45f0: $00
    rst $38                                       ; $45f1: $ff
    ld h, b                                       ; $45f2: $60
    rst $38                                       ; $45f3: $ff
    jp $83ff                                      ; $45f4: $c3 $ff $83


    rst $38                                       ; $45f7: $ff
    db $10                                        ; $45f8: $10
    rst $38                                       ; $45f9: $ff
    ccf                                           ; $45fa: $3f
    rst $38                                       ; $45fb: $ff
    ld a, a                                       ; $45fc: $7f
    rst $38                                       ; $45fd: $ff
    nop                                           ; $45fe: $00
    rst $38                                       ; $45ff: $ff
    rst $38                                       ; $4600: $ff
    rst $38                                       ; $4601: $ff
    rst $38                                       ; $4602: $ff
    sbc a                                         ; $4603: $9f
    rst $38                                       ; $4604: $ff
    inc a                                         ; $4605: $3c
    rst $38                                       ; $4606: $ff
    ld a, h                                       ; $4607: $7c
    rst $38                                       ; $4608: $ff
    rst $28                                       ; $4609: $ef
    rst $38                                       ; $460a: $ff
    ret nz                                        ; $460b: $c0

    rst $38                                       ; $460c: $ff
    add b                                         ; $460d: $80
    rst $38                                       ; $460e: $ff
    nop                                           ; $460f: $00
    ld d, l                                       ; $4610: $55
    xor d                                         ; $4611: $aa
    xor d                                         ; $4612: $aa
    ld d, l                                       ; $4613: $55
    ld d, l                                       ; $4614: $55
    xor d                                         ; $4615: $aa
    xor d                                         ; $4616: $aa
    ld d, l                                       ; $4617: $55
    ld d, l                                       ; $4618: $55
    xor d                                         ; $4619: $aa
    xor d                                         ; $461a: $aa
    ld d, l                                       ; $461b: $55
    ld d, l                                       ; $461c: $55
    xor d                                         ; $461d: $aa
    xor d                                         ; $461e: $aa
    ld d, l                                       ; $461f: $55
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
    nop                                           ; $462e: $00
    nop                                           ; $462f: $00
    ld d, a                                       ; $4630: $57
    xor e                                         ; $4631: $ab
    xor e                                         ; $4632: $ab
    ld d, h                                       ; $4633: $54
    ld d, l                                       ; $4634: $55
    xor d                                         ; $4635: $aa
    xor d                                         ; $4636: $aa
    ld d, l                                       ; $4637: $55
    ld d, l                                       ; $4638: $55
    xor d                                         ; $4639: $aa
    xor d                                         ; $463a: $aa
    ld d, l                                       ; $463b: $55
    ld d, l                                       ; $463c: $55
    xor d                                         ; $463d: $aa
    xor d                                         ; $463e: $aa
    ld d, l                                       ; $463f: $55
    nop                                           ; $4640: $00
    nop                                           ; $4641: $00
    nop                                           ; $4642: $00
    nop                                           ; $4643: $00
    nop                                           ; $4644: $00
    nop                                           ; $4645: $00
    nop                                           ; $4646: $00
    nop                                           ; $4647: $00
    nop                                           ; $4648: $00
    nop                                           ; $4649: $00
    nop                                           ; $464a: $00
    nop                                           ; $464b: $00
    nop                                           ; $464c: $00
    nop                                           ; $464d: $00
    nop                                           ; $464e: $00
    nop                                           ; $464f: $00
    rst $38                                       ; $4650: $ff
    rst $38                                       ; $4651: $ff
    rst $38                                       ; $4652: $ff
    nop                                           ; $4653: $00
    ld d, l                                       ; $4654: $55
    xor d                                         ; $4655: $aa
    xor d                                         ; $4656: $aa
    ld d, l                                       ; $4657: $55
    ld d, l                                       ; $4658: $55
    xor d                                         ; $4659: $aa
    xor d                                         ; $465a: $aa
    ld d, l                                       ; $465b: $55
    ld d, l                                       ; $465c: $55
    xor d                                         ; $465d: $aa
    xor d                                         ; $465e: $aa
    ld d, l                                       ; $465f: $55
    nop                                           ; $4660: $00
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    nop                                           ; $4663: $00
    nop                                           ; $4664: $00
    nop                                           ; $4665: $00
    nop                                           ; $4666: $00
    nop                                           ; $4667: $00
    nop                                           ; $4668: $00
    nop                                           ; $4669: $00
    nop                                           ; $466a: $00
    nop                                           ; $466b: $00
    nop                                           ; $466c: $00
    nop                                           ; $466d: $00
    nop                                           ; $466e: $00
    nop                                           ; $466f: $00
    rst $38                                       ; $4670: $ff
    rst $38                                       ; $4671: $ff
    rst $38                                       ; $4672: $ff
    nop                                           ; $4673: $00
    ld d, l                                       ; $4674: $55
    xor d                                         ; $4675: $aa
    xor d                                         ; $4676: $aa
    ld d, l                                       ; $4677: $55
    ld d, l                                       ; $4678: $55
    xor d                                         ; $4679: $aa
    xor e                                         ; $467a: $ab
    ld d, h                                       ; $467b: $54
    ld d, a                                       ; $467c: $57
    xor c                                         ; $467d: $a9
    xor e                                         ; $467e: $ab
    ld d, a                                       ; $467f: $57
    nop                                           ; $4680: $00
    nop                                           ; $4681: $00
    nop                                           ; $4682: $00
    nop                                           ; $4683: $00
    nop                                           ; $4684: $00
    nop                                           ; $4685: $00
    nop                                           ; $4686: $00
    nop                                           ; $4687: $00
    nop                                           ; $4688: $00
    nop                                           ; $4689: $00
    ld bc, $0300                                  ; $468a: $01 $00 $03
    nop                                           ; $468d: $00
    rlca                                          ; $468e: $07
    nop                                           ; $468f: $00
    rst $38                                       ; $4690: $ff
    rst $38                                       ; $4691: $ff
    rst $38                                       ; $4692: $ff
    nop                                           ; $4693: $00
    ld d, l                                       ; $4694: $55
    xor d                                         ; $4695: $aa
    xor d                                         ; $4696: $aa
    ld d, l                                       ; $4697: $55
    ld b, h                                       ; $4698: $44
    cp a                                          ; $4699: $bf
    ld l, [hl]                                    ; $469a: $6e
    xor $ce                                       ; $469b: $ee $ce
    pop af                                        ; $469d: $f1
    ld l, d                                       ; $469e: $6a
    sub l                                         ; $469f: $95
    nop                                           ; $46a0: $00
    nop                                           ; $46a1: $00
    nop                                           ; $46a2: $00
    nop                                           ; $46a3: $00
    nop                                           ; $46a4: $00
    nop                                           ; $46a5: $00
    nop                                           ; $46a6: $00
    nop                                           ; $46a7: $00
    ld a, a                                       ; $46a8: $7f
    nop                                           ; $46a9: $00
    xor $11                                       ; $46aa: $ee $11
    rst $38                                       ; $46ac: $ff
    nop                                           ; $46ad: $00
    ret nz                                        ; $46ae: $c0

    nop                                           ; $46af: $00
    rst $38                                       ; $46b0: $ff
    rst $38                                       ; $46b1: $ff
    rst $38                                       ; $46b2: $ff
    nop                                           ; $46b3: $00
    ld d, l                                       ; $46b4: $55
    xor d                                         ; $46b5: $aa
    xor d                                         ; $46b6: $aa
    ld d, l                                       ; $46b7: $55
    ld d, [hl]                                    ; $46b8: $56
    xor c                                         ; $46b9: $a9
    xor a                                         ; $46ba: $af
    ld d, e                                       ; $46bb: $53
    ld d, a                                       ; $46bc: $57
    xor e                                         ; $46bd: $ab
    xor a                                         ; $46be: $af
    ld d, a                                       ; $46bf: $57
    nop                                           ; $46c0: $00
    nop                                           ; $46c1: $00
    nop                                           ; $46c2: $00
    nop                                           ; $46c3: $00
    nop                                           ; $46c4: $00
    nop                                           ; $46c5: $00
    nop                                           ; $46c6: $00
    nop                                           ; $46c7: $00
    inc bc                                        ; $46c8: $03
    nop                                           ; $46c9: $00
    rlca                                          ; $46ca: $07
    nop                                           ; $46cb: $00
    rlca                                          ; $46cc: $07
    nop                                           ; $46cd: $00
    rrca                                          ; $46ce: $0f
    nop                                           ; $46cf: $00
    rst $38                                       ; $46d0: $ff
    rst $38                                       ; $46d1: $ff
    rst $38                                       ; $46d2: $ff
    nop                                           ; $46d3: $00
    ld d, l                                       ; $46d4: $55
    xor d                                         ; $46d5: $aa
    xor d                                         ; $46d6: $aa
    ld d, l                                       ; $46d7: $55
    push de                                       ; $46d8: $d5
    ld a, [hl+]                                   ; $46d9: $2a
    xor d                                         ; $46da: $aa
    ld d, l                                       ; $46db: $55
    ld d, l                                       ; $46dc: $55
    xor d                                         ; $46dd: $aa
    dec hl                                        ; $46de: $2b
    call nc, RST_00                               ; $46df: $d4 $00 $00
    nop                                           ; $46e2: $00
    nop                                           ; $46e3: $00
    nop                                           ; $46e4: $00
    nop                                           ; $46e5: $00
    nop                                           ; $46e6: $00
    nop                                           ; $46e7: $00
    add b                                         ; $46e8: $80
    nop                                           ; $46e9: $00
    add b                                         ; $46ea: $80
    nop                                           ; $46eb: $00
    add b                                         ; $46ec: $80
    nop                                           ; $46ed: $00
    add c                                         ; $46ee: $81
    nop                                           ; $46ef: $00
    rst $38                                       ; $46f0: $ff
    rst $38                                       ; $46f1: $ff
    rst $38                                       ; $46f2: $ff
    nop                                           ; $46f3: $00
    ld d, l                                       ; $46f4: $55
    xor d                                         ; $46f5: $aa
    xor d                                         ; $46f6: $aa
    ld d, l                                       ; $46f7: $55
    dec [hl]                                      ; $46f8: $35
    jp z, $65fa                                   ; $46f9: $ca $fa $65

    ld [hl], l                                    ; $46fc: $75
    ld [$f5ea], a                                 ; $46fd: $ea $ea $f5
    nop                                           ; $4700: $00
    nop                                           ; $4701: $00
    nop                                           ; $4702: $00
    nop                                           ; $4703: $00
    nop                                           ; $4704: $00
    nop                                           ; $4705: $00
    nop                                           ; $4706: $00
    nop                                           ; $4707: $00
    ld h, b                                       ; $4708: $60
    nop                                           ; $4709: $00
    ldh a, [rP1]                                  ; $470a: $f0 $00
    ldh a, [rP1]                                  ; $470c: $f0 $00
    ldh a, [rP1]                                  ; $470e: $f0 $00
    rst $38                                       ; $4710: $ff
    rst $38                                       ; $4711: $ff
    rst $38                                       ; $4712: $ff
    nop                                           ; $4713: $00
    ld d, l                                       ; $4714: $55
    xor d                                         ; $4715: $aa
    xor d                                         ; $4716: $aa
    ld d, l                                       ; $4717: $55
    ld [hl], l                                    ; $4718: $75
    adc d                                         ; $4719: $8a
    adc e                                         ; $471a: $8b
    ld d, h                                       ; $471b: $54
    ld h, l                                       ; $471c: $65
    ld a, [$f57a]                                 ; $471d: $fa $7a $f5
    nop                                           ; $4720: $00
    nop                                           ; $4721: $00
    nop                                           ; $4722: $00
    nop                                           ; $4723: $00
    nop                                           ; $4724: $00
    nop                                           ; $4725: $00
    nop                                           ; $4726: $00
    nop                                           ; $4727: $00
    ld [hl], b                                    ; $4728: $70
    nop                                           ; $4729: $00
    ld d, c                                       ; $472a: $51
    jr nz, @+$73                                  ; $472b: $20 $71

    nop                                           ; $472d: $00
    pop af                                        ; $472e: $f1
    nop                                           ; $472f: $00
    ld d, l                                       ; $4730: $55
    xor d                                         ; $4731: $aa
    xor d                                         ; $4732: $aa
    ld d, l                                       ; $4733: $55
    push af                                       ; $4734: $f5
    db $eb                                        ; $4735: $eb
    ei                                            ; $4736: $fb
    push af                                       ; $4737: $f5
    push af                                       ; $4738: $f5
    ei                                            ; $4739: $fb
    db $eb                                        ; $473a: $eb
    db $fd                                        ; $473b: $fd
    db $fd                                        ; $473c: $fd
    rst $28                                       ; $473d: $ef
    db $ed                                        ; $473e: $ed
    rst $30                                       ; $473f: $f7
    nop                                           ; $4740: $00
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00
    nop                                           ; $4743: $00
    pop hl                                        ; $4744: $e1
    nop                                           ; $4745: $00
    pop af                                        ; $4746: $f1
    nop                                           ; $4747: $00
    ld sp, hl                                     ; $4748: $f9
    nop                                           ; $4749: $00
    ld sp, hl                                     ; $474a: $f9
    nop                                           ; $474b: $00
    db $ed                                        ; $474c: $ed
    nop                                           ; $474d: $00
    rst $20                                       ; $474e: $e7
    nop                                           ; $474f: $00
    ld d, l                                       ; $4750: $55
    xor d                                         ; $4751: $aa
    xor d                                         ; $4752: $aa
    ld d, l                                       ; $4753: $55
    db $dd                                        ; $4754: $dd
    cp $fe                                        ; $4755: $fe $fe
    db $dd                                        ; $4757: $dd
    push de                                       ; $4758: $d5
    ld [$ddff], a                                 ; $4759: $ea $ff $dd
    db $dd                                        ; $475c: $dd
    rst $38                                       ; $475d: $ff
    rst $38                                       ; $475e: $ff
    db $dd                                        ; $475f: $dd
    nop                                           ; $4760: $00
    nop                                           ; $4761: $00
    nop                                           ; $4762: $00
    nop                                           ; $4763: $00
    call c, $dc00                                 ; $4764: $dc $00 $dc
    nop                                           ; $4767: $00
    ret nz                                        ; $4768: $c0

    nop                                           ; $4769: $00
    db $dd                                        ; $476a: $dd
    nop                                           ; $476b: $00
    db $dd                                        ; $476c: $dd
    nop                                           ; $476d: $00
    db $dd                                        ; $476e: $dd
    nop                                           ; $476f: $00
    ld d, l                                       ; $4770: $55
    xor d                                         ; $4771: $aa
    xor d                                         ; $4772: $aa
    ld d, l                                       ; $4773: $55
    ld d, l                                       ; $4774: $55
    xor d                                         ; $4775: $aa
    xor d                                         ; $4776: $aa
    ld d, l                                       ; $4777: $55
    ld d, l                                       ; $4778: $55
    xor e                                         ; $4779: $ab
    db $fc                                        ; $477a: $fc
    rst RST_18                                    ; $477b: $df
    rst $38                                       ; $477c: $ff
    cp $ee                                        ; $477d: $fe $ee
    rst RST_18                                    ; $477f: $df
    nop                                           ; $4780: $00
    nop                                           ; $4781: $00
    nop                                           ; $4782: $00
    nop                                           ; $4783: $00
    nop                                           ; $4784: $00
    nop                                           ; $4785: $00
    nop                                           ; $4786: $00
    nop                                           ; $4787: $00
    ld bc, $de00                                  ; $4788: $01 $00 $de
    nop                                           ; $478b: $00
    cp $00                                        ; $478c: $fe $00
    adc $00                                       ; $478e: $ce $00
    ld d, l                                       ; $4790: $55
    xor d                                         ; $4791: $aa
    xor d                                         ; $4792: $aa
    ld d, l                                       ; $4793: $55
    ld d, l                                       ; $4794: $55
    xor d                                         ; $4795: $aa
    ld [$f5f5], a                                 ; $4796: $ea $f5 $f5
    ld a, [$f7eb]                                 ; $4799: $fa $eb $f7
    rst $30                                       ; $479c: $f7
    xor $ef                                       ; $479d: $ee $ef
    rst $38                                       ; $479f: $ff
    nop                                           ; $47a0: $00
    nop                                           ; $47a1: $00
    nop                                           ; $47a2: $00
    nop                                           ; $47a3: $00
    nop                                           ; $47a4: $00
    nop                                           ; $47a5: $00
    ldh [rP1], a                                  ; $47a6: $e0 $00
    ldh a, [rP1]                                  ; $47a8: $f0 $00
    rst $20                                       ; $47aa: $e7
    nop                                           ; $47ab: $00
    xor $00                                       ; $47ac: $ee $00
    rst $28                                       ; $47ae: $ef
    nop                                           ; $47af: $00
    ld d, l                                       ; $47b0: $55
    xor d                                         ; $47b1: $aa
    xor d                                         ; $47b2: $aa
    ld d, l                                       ; $47b3: $55
    ld d, l                                       ; $47b4: $55
    xor d                                         ; $47b5: $aa
    xor d                                         ; $47b6: $aa
    ld d, l                                       ; $47b7: $55
    ld d, l                                       ; $47b8: $55
    xor d                                         ; $47b9: $aa
    rst RST_08                                    ; $47ba: $cf
    rst $30                                       ; $47bb: $f7
    ld h, a                                       ; $47bc: $67
    rst $38                                       ; $47bd: $ff
    rst $38                                       ; $47be: $ff
    rst $30                                       ; $47bf: $f7
    nop                                           ; $47c0: $00
    nop                                           ; $47c1: $00
    nop                                           ; $47c2: $00
    nop                                           ; $47c3: $00
    nop                                           ; $47c4: $00
    nop                                           ; $47c5: $00
    nop                                           ; $47c6: $00
    nop                                           ; $47c7: $00
    nop                                           ; $47c8: $00
    nop                                           ; $47c9: $00
    rst $20                                       ; $47ca: $e7
    nop                                           ; $47cb: $00
    ld [hl], a                                    ; $47cc: $77
    nop                                           ; $47cd: $00
    rst $30                                       ; $47ce: $f7
    nop                                           ; $47cf: $00
    ld d, l                                       ; $47d0: $55
    xor d                                         ; $47d1: $aa
    xor d                                         ; $47d2: $aa
    ld d, l                                       ; $47d3: $55
    ld d, l                                       ; $47d4: $55
    xor d                                         ; $47d5: $aa
    xor d                                         ; $47d6: $aa
    ld d, l                                       ; $47d7: $55
    ld d, l                                       ; $47d8: $55
    xor d                                         ; $47d9: $aa
    ldh a, [c]                                    ; $47da: $f2
    ld a, l                                       ; $47db: $7d
    db $fd                                        ; $47dc: $fd
    ei                                            ; $47dd: $fb
    cp e                                          ; $47de: $bb
    ld a, a                                       ; $47df: $7f
    nop                                           ; $47e0: $00
    nop                                           ; $47e1: $00
    nop                                           ; $47e2: $00
    nop                                           ; $47e3: $00
    nop                                           ; $47e4: $00
    nop                                           ; $47e5: $00
    nop                                           ; $47e6: $00
    nop                                           ; $47e7: $00
    nop                                           ; $47e8: $00
    nop                                           ; $47e9: $00
    ld a, c                                       ; $47ea: $79
    nop                                           ; $47eb: $00
    ei                                            ; $47ec: $fb
    nop                                           ; $47ed: $00
    dec sp                                        ; $47ee: $3b
    nop                                           ; $47ef: $00
    ld d, l                                       ; $47f0: $55
    xor d                                         ; $47f1: $aa
    xor d                                         ; $47f2: $aa
    ld d, l                                       ; $47f3: $55
    ld e, l                                       ; $47f4: $5d
    cp [hl]                                       ; $47f5: $be
    cp [hl]                                       ; $47f6: $be
    ld e, l                                       ; $47f7: $5d
    ld e, l                                       ; $47f8: $5d
    cp [hl]                                       ; $47f9: $be
    cp $fd                                        ; $47fa: $fe $fd
    call c, $bfbf                                 ; $47fc: $dc $bf $bf
    db $dd                                        ; $47ff: $dd
    nop                                           ; $4800: $00
    nop                                           ; $4801: $00
    nop                                           ; $4802: $00
    nop                                           ; $4803: $00
    inc e                                         ; $4804: $1c
    nop                                           ; $4805: $00
    inc e                                         ; $4806: $1c
    nop                                           ; $4807: $00
    inc e                                         ; $4808: $1c
    nop                                           ; $4809: $00
    db $fc                                        ; $480a: $fc
    nop                                           ; $480b: $00
    sbc l                                         ; $480c: $9d
    nop                                           ; $480d: $00
    sbc l                                         ; $480e: $9d
    nop                                           ; $480f: $00
    ld d, l                                       ; $4810: $55
    xor d                                         ; $4811: $aa
    xor d                                         ; $4812: $aa
    ld d, l                                       ; $4813: $55
    ld d, l                                       ; $4814: $55
    xor d                                         ; $4815: $aa
    xor d                                         ; $4816: $aa
    ld d, l                                       ; $4817: $55
    ld d, l                                       ; $4818: $55
    xor d                                         ; $4819: $aa
    ld a, d                                       ; $481a: $7a
    db $fd                                        ; $481b: $fd
    db $dd                                        ; $481c: $dd
    xor $ee                                       ; $481d: $ee $ee
    rst RST_18                                    ; $481f: $df
    nop                                           ; $4820: $00
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    nop                                           ; $4823: $00
    nop                                           ; $4824: $00
    nop                                           ; $4825: $00
    nop                                           ; $4826: $00
    nop                                           ; $4827: $00
    nop                                           ; $4828: $00
    nop                                           ; $4829: $00
    db $fc                                        ; $482a: $fc
    nop                                           ; $482b: $00
    adc $00                                       ; $482c: $ce $00
    adc $00                                       ; $482e: $ce $00
    ld e, [hl]                                    ; $4830: $5e
    and a                                         ; $4831: $a7
    xor h                                         ; $4832: $ac
    ld e, a                                       ; $4833: $5f
    ld e, a                                       ; $4834: $5f
    xor h                                         ; $4835: $ac
    or d                                          ; $4836: $b2
    ld b, l                                       ; $4837: $45
    ld b, l                                       ; $4838: $45
    or d                                          ; $4839: $b2
    xor d                                         ; $483a: $aa
    ld e, l                                       ; $483b: $5d
    ld c, c                                       ; $483c: $49
    cp [hl]                                       ; $483d: $be
    cp [hl]                                       ; $483e: $be
    ld c, l                                       ; $483f: $4d
    rrca                                          ; $4840: $0f
    nop                                           ; $4841: $00
    ld c, $00                                     ; $4842: $0e $00
    ld e, $00                                     ; $4844: $1e $00
    inc d                                         ; $4846: $14
    ld [$0814], sp                                ; $4847: $08 $14 $08
    inc e                                         ; $484a: $1c
    nop                                           ; $484b: $00
    inc e                                         ; $484c: $1c
    nop                                           ; $484d: $00
    inc e                                         ; $484e: $1c
    nop                                           ; $484f: $00
    ld d, l                                       ; $4850: $55
    xor d                                         ; $4851: $aa
    xor d                                         ; $4852: $aa
    ld d, l                                       ; $4853: $55
    ld d, l                                       ; $4854: $55
    xor d                                         ; $4855: $aa
    xor d                                         ; $4856: $aa
    ld d, l                                       ; $4857: $55
    ld d, l                                       ; $4858: $55
    xor d                                         ; $4859: $aa
    sbc [hl]                                      ; $485a: $9e
    ld a, a                                       ; $485b: $7f
    ld e, l                                       ; $485c: $5d
    cp [hl]                                       ; $485d: $be
    and h                                         ; $485e: $a4
    ld e, a                                       ; $485f: $5f
    nop                                           ; $4860: $00
    nop                                           ; $4861: $00
    nop                                           ; $4862: $00
    nop                                           ; $4863: $00
    nop                                           ; $4864: $00
    nop                                           ; $4865: $00
    nop                                           ; $4866: $00
    nop                                           ; $4867: $00
    nop                                           ; $4868: $00
    nop                                           ; $4869: $00
    ld a, $00                                     ; $486a: $3e $00
    ld a, $00                                     ; $486c: $3e $00
    ld c, $00                                     ; $486e: $0e $00
    ld e, a                                       ; $4870: $5f
    and a                                         ; $4871: $a7
    xor l                                         ; $4872: $ad
    ld e, a                                       ; $4873: $5f
    ld e, [hl]                                    ; $4874: $5e
    xor l                                         ; $4875: $ad
    cp e                                          ; $4876: $bb
    ld e, l                                       ; $4877: $5d
    ld a, h                                       ; $4878: $7c
    sbc e                                         ; $4879: $9b
    sbc b                                         ; $487a: $98
    ld a, a                                       ; $487b: $7f
    ld a, a                                       ; $487c: $7f
    cp a                                          ; $487d: $bf
    or b                                          ; $487e: $b0
    ld a, a                                       ; $487f: $7f
    rrca                                          ; $4880: $0f
    nop                                           ; $4881: $00
    rrca                                          ; $4882: $0f
    nop                                           ; $4883: $00
    rra                                           ; $4884: $1f
    nop                                           ; $4885: $00
    dec e                                         ; $4886: $1d
    nop                                           ; $4887: $00
    add hl, sp                                    ; $4888: $39
    nop                                           ; $4889: $00
    ccf                                           ; $488a: $3f
    nop                                           ; $488b: $00
    ld a, a                                       ; $488c: $7f
    nop                                           ; $488d: $00
    ld a, a                                       ; $488e: $7f
    nop                                           ; $488f: $00
    push de                                       ; $4890: $d5
    xor d                                         ; $4891: $aa
    ld [$d595], a                                 ; $4892: $ea $95 $d5
    xor e                                         ; $4895: $ab
    ld [$1594], a                                 ; $4896: $ea $94 $15
    ld l, e                                       ; $4899: $6b
    xor a                                         ; $489a: $af
    db $d3                                        ; $489b: $d3
    call nc, $e8e9                                ; $489c: $d4 $e9 $e8
    push de                                       ; $489f: $d5
    add c                                         ; $48a0: $81
    nop                                           ; $48a1: $00
    pop bc                                        ; $48a2: $c1
    nop                                           ; $48a3: $00
    pop bc                                        ; $48a4: $c1
    nop                                           ; $48a5: $00
    jp nz, Jump_005_4301                          ; $48a6: $c2 $01 $43

    add b                                         ; $48a9: $80
    rst RST_00                                    ; $48aa: $c7
    nop                                           ; $48ab: $00
    push bc                                       ; $48ac: $c5
    ld [bc], a                                    ; $48ad: $02
    push bc                                       ; $48ae: $c5
    ld [bc], a                                    ; $48af: $02
    push hl                                       ; $48b0: $e5
    ld a, [$f5ea]                                 ; $48b1: $fa $ea $f5
    rst $38                                       ; $48b4: $ff
    or c                                          ; $48b5: $b1
    cp e                                          ; $48b6: $bb
    rst $30                                       ; $48b7: $f7
    ld d, a                                       ; $48b8: $57
    cp e                                          ; $48b9: $bb
    cp [hl]                                       ; $48ba: $be
    ld e, a                                       ; $48bb: $5f
    ld a, a                                       ; $48bc: $7f
    sbc [hl]                                      ; $48bd: $9e
    cp h                                          ; $48be: $bc
    ld e, a                                       ; $48bf: $5f
    ldh a, [rP1]                                  ; $48c0: $f0 $00
    ld sp, hl                                     ; $48c2: $f9
    nop                                           ; $48c3: $00
    ei                                            ; $48c4: $fb
    nop                                           ; $48c5: $00
    cp e                                          ; $48c6: $bb
    nop                                           ; $48c7: $00
    cp a                                          ; $48c8: $bf
    nop                                           ; $48c9: $00
    cp a                                          ; $48ca: $bf
    nop                                           ; $48cb: $00
    ccf                                           ; $48cc: $3f
    nop                                           ; $48cd: $00
    ld e, $00                                     ; $48ce: $1e $00
    db $e4                                        ; $48d0: $e4
    ei                                            ; $48d1: $fb
    ei                                            ; $48d2: $fb
    push af                                       ; $48d3: $f5
    and l                                         ; $48d4: $a5
    ei                                            ; $48d5: $fb
    ld a, e                                       ; $48d6: $7b
    or l                                          ; $48d7: $b5
    rst $30                                       ; $48d8: $f7
    add hl, sp                                    ; $48d9: $39
    cp c                                          ; $48da: $b9
    ld [hl], a                                    ; $48db: $77
    ld [hl], l                                    ; $48dc: $75
    cp e                                          ; $48dd: $bb
    cp c                                          ; $48de: $b9
    ld [hl], a                                    ; $48df: $77
    pop af                                        ; $48e0: $f1
    nop                                           ; $48e1: $00
    pop af                                        ; $48e2: $f1
    nop                                           ; $48e3: $00
    pop af                                        ; $48e4: $f1
    nop                                           ; $48e5: $00
    pop af                                        ; $48e6: $f1
    nop                                           ; $48e7: $00
    di                                            ; $48e8: $f3
    nop                                           ; $48e9: $00
    inc sp                                        ; $48ea: $33
    nop                                           ; $48eb: $00
    ld [hl], e                                    ; $48ec: $73
    nop                                           ; $48ed: $00
    inc sp                                        ; $48ee: $33
    nop                                           ; $48ef: $00
    di                                            ; $48f0: $f3
    rst $28                                       ; $48f1: $ef
    db $eb                                        ; $48f2: $eb
    rst $30                                       ; $48f3: $f7
    push af                                       ; $48f4: $f5
    db $eb                                        ; $48f5: $eb
    xor d                                         ; $48f6: $aa
    ld d, l                                       ; $48f7: $55
    ld d, l                                       ; $48f8: $55
    xor d                                         ; $48f9: $aa
    xor d                                         ; $48fa: $aa
    ld d, l                                       ; $48fb: $55
    ld d, l                                       ; $48fc: $55
    xor d                                         ; $48fd: $aa
    xor d                                         ; $48fe: $aa
    ld d, l                                       ; $48ff: $55
    rst $20                                       ; $4900: $e7
    nop                                           ; $4901: $00
    db $e3                                        ; $4902: $e3
    nop                                           ; $4903: $00
    pop hl                                        ; $4904: $e1
    nop                                           ; $4905: $00
    nop                                           ; $4906: $00
    nop                                           ; $4907: $00
    nop                                           ; $4908: $00
    nop                                           ; $4909: $00
    nop                                           ; $490a: $00
    nop                                           ; $490b: $00
    nop                                           ; $490c: $00
    nop                                           ; $490d: $00
    nop                                           ; $490e: $00
    nop                                           ; $490f: $00
    db $dd                                        ; $4910: $dd
    rst $38                                       ; $4911: $ff
    rst $38                                       ; $4912: $ff
    db $dd                                        ; $4913: $dd
    db $dd                                        ; $4914: $dd
    rst $38                                       ; $4915: $ff
    xor d                                         ; $4916: $aa
    ld d, l                                       ; $4917: $55
    ld d, l                                       ; $4918: $55
    xor d                                         ; $4919: $aa
    xor d                                         ; $491a: $aa
    ld d, l                                       ; $491b: $55
    ld d, l                                       ; $491c: $55
    xor d                                         ; $491d: $aa
    xor d                                         ; $491e: $aa
    ld d, l                                       ; $491f: $55
    db $dd                                        ; $4920: $dd
    nop                                           ; $4921: $00
    db $dd                                        ; $4922: $dd
    nop                                           ; $4923: $00
    db $dd                                        ; $4924: $dd
    nop                                           ; $4925: $00
    nop                                           ; $4926: $00
    nop                                           ; $4927: $00
    nop                                           ; $4928: $00
    nop                                           ; $4929: $00
    nop                                           ; $492a: $00
    nop                                           ; $492b: $00
    nop                                           ; $492c: $00
    nop                                           ; $492d: $00
    nop                                           ; $492e: $00
    nop                                           ; $492f: $00
    rst RST_18                                    ; $4930: $df
    xor $ee                                       ; $4931: $ee $ee
    rst RST_18                                    ; $4933: $df
    rst RST_18                                    ; $4934: $df
    xor $aa                                       ; $4935: $ee $aa
    ld d, l                                       ; $4937: $55
    ld d, l                                       ; $4938: $55
    xor d                                         ; $4939: $aa
    xor d                                         ; $493a: $aa
    ld d, l                                       ; $493b: $55
    ld d, l                                       ; $493c: $55
    xor d                                         ; $493d: $aa
    xor d                                         ; $493e: $aa
    ld d, l                                       ; $493f: $55
    adc $00                                       ; $4940: $ce $00
    adc $00                                       ; $4942: $ce $00
    adc $00                                       ; $4944: $ce $00
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    nop                                           ; $4948: $00
    nop                                           ; $4949: $00
    nop                                           ; $494a: $00
    nop                                           ; $494b: $00
    nop                                           ; $494c: $00
    nop                                           ; $494d: $00
    nop                                           ; $494e: $00
    nop                                           ; $494f: $00
    rst $38                                       ; $4950: $ff
    xor $e6                                       ; $4951: $ee $e6
    rst $38                                       ; $4953: $ff
    di                                            ; $4954: $f3
    rst $28                                       ; $4955: $ef
    xor d                                         ; $4956: $aa
    ld d, l                                       ; $4957: $55
    ld d, l                                       ; $4958: $55
    xor d                                         ; $4959: $aa
    xor d                                         ; $495a: $aa
    ld d, l                                       ; $495b: $55
    ld d, l                                       ; $495c: $55
    xor d                                         ; $495d: $aa
    xor d                                         ; $495e: $aa
    ld d, l                                       ; $495f: $55
    xor $00                                       ; $4960: $ee $00
    xor $00                                       ; $4962: $ee $00
    rst $20                                       ; $4964: $e7
    nop                                           ; $4965: $00
    nop                                           ; $4966: $00
    nop                                           ; $4967: $00
    nop                                           ; $4968: $00
    nop                                           ; $4969: $00
    nop                                           ; $496a: $00
    nop                                           ; $496b: $00
    nop                                           ; $496c: $00
    nop                                           ; $496d: $00
    nop                                           ; $496e: $00
    nop                                           ; $496f: $00
    ld d, a                                       ; $4970: $57
    xor a                                         ; $4971: $af
    rst $28                                       ; $4972: $ef
    ld [hl], a                                    ; $4973: $77
    rst $10                                       ; $4974: $d7
    rst $28                                       ; $4975: $ef
    xor d                                         ; $4976: $aa
    ld d, l                                       ; $4977: $55
    ld d, l                                       ; $4978: $55
    xor d                                         ; $4979: $aa
    xor d                                         ; $497a: $aa
    ld d, l                                       ; $497b: $55
    ld d, l                                       ; $497c: $55
    xor d                                         ; $497d: $aa
    xor d                                         ; $497e: $aa
    ld d, l                                       ; $497f: $55
    rlca                                          ; $4980: $07
    nop                                           ; $4981: $00
    ld [hl], a                                    ; $4982: $77
    nop                                           ; $4983: $00
    rst $20                                       ; $4984: $e7
    nop                                           ; $4985: $00
    nop                                           ; $4986: $00
    nop                                           ; $4987: $00
    nop                                           ; $4988: $00
    nop                                           ; $4989: $00
    nop                                           ; $498a: $00
    nop                                           ; $498b: $00
    nop                                           ; $498c: $00
    nop                                           ; $498d: $00
    nop                                           ; $498e: $00
    nop                                           ; $498f: $00
    ld a, a                                       ; $4990: $7f
    cp e                                          ; $4991: $bb
    cp c                                          ; $4992: $b9
    ld a, a                                       ; $4993: $7f
    ld a, h                                       ; $4994: $7c
    cp e                                          ; $4995: $bb
    xor d                                         ; $4996: $aa
    ld d, l                                       ; $4997: $55
    ld d, l                                       ; $4998: $55
    xor d                                         ; $4999: $aa
    xor d                                         ; $499a: $aa
    ld d, l                                       ; $499b: $55
    ld d, l                                       ; $499c: $55
    xor d                                         ; $499d: $aa
    xor d                                         ; $499e: $aa
    ld d, l                                       ; $499f: $55
    dec sp                                        ; $49a0: $3b
    nop                                           ; $49a1: $00
    dec sp                                        ; $49a2: $3b
    nop                                           ; $49a3: $00
    add hl, sp                                    ; $49a4: $39
    nop                                           ; $49a5: $00
    nop                                           ; $49a6: $00
    nop                                           ; $49a7: $00
    nop                                           ; $49a8: $00
    nop                                           ; $49a9: $00
    nop                                           ; $49aa: $00
    nop                                           ; $49ab: $00
    nop                                           ; $49ac: $00
    nop                                           ; $49ad: $00
    nop                                           ; $49ae: $00
    nop                                           ; $49af: $00
    db $dd                                        ; $49b0: $dd
    cp a                                          ; $49b1: $bf
    cp [hl]                                       ; $49b2: $be
    db $dd                                        ; $49b3: $dd
    db $fd                                        ; $49b4: $fd
    xor $aa                                       ; $49b5: $ee $aa
    ld d, l                                       ; $49b7: $55
    ld d, l                                       ; $49b8: $55
    xor d                                         ; $49b9: $aa
    xor d                                         ; $49ba: $aa
    ld d, l                                       ; $49bb: $55
    ld d, l                                       ; $49bc: $55
    xor d                                         ; $49bd: $aa
    xor d                                         ; $49be: $aa
    ld d, l                                       ; $49bf: $55
    sbc l                                         ; $49c0: $9d
    nop                                           ; $49c1: $00
    sbc l                                         ; $49c2: $9d
    nop                                           ; $49c3: $00
    db $ec                                        ; $49c4: $ec
    nop                                           ; $49c5: $00
    nop                                           ; $49c6: $00
    nop                                           ; $49c7: $00
    nop                                           ; $49c8: $00
    nop                                           ; $49c9: $00
    nop                                           ; $49ca: $00
    nop                                           ; $49cb: $00
    nop                                           ; $49cc: $00
    nop                                           ; $49cd: $00
    nop                                           ; $49ce: $00
    nop                                           ; $49cf: $00
    rst RST_18                                    ; $49d0: $df
    xor $ec                                       ; $49d1: $ee $ec
    rst RST_18                                    ; $49d3: $df
    ld a, c                                       ; $49d4: $79
    cp $aa                                        ; $49d5: $fe $aa
    ld d, l                                       ; $49d7: $55
    ld d, l                                       ; $49d8: $55
    xor d                                         ; $49d9: $aa
    xor d                                         ; $49da: $aa
    ld d, l                                       ; $49db: $55
    ld d, l                                       ; $49dc: $55
    xor d                                         ; $49dd: $aa
    xor d                                         ; $49de: $aa
    ld d, l                                       ; $49df: $55
    adc $00                                       ; $49e0: $ce $00
    adc $00                                       ; $49e2: $ce $00
    db $fc                                        ; $49e4: $fc
    nop                                           ; $49e5: $00
    nop                                           ; $49e6: $00
    nop                                           ; $49e7: $00
    nop                                           ; $49e8: $00
    nop                                           ; $49e9: $00
    nop                                           ; $49ea: $00
    nop                                           ; $49eb: $00
    nop                                           ; $49ec: $00
    nop                                           ; $49ed: $00
    nop                                           ; $49ee: $00
    nop                                           ; $49ef: $00
    ld e, l                                       ; $49f0: $5d
    xor [hl]                                      ; $49f1: $ae
    xor [hl]                                      ; $49f2: $ae
    ld d, a                                       ; $49f3: $57
    ld d, e                                       ; $49f4: $53
    xor a                                         ; $49f5: $af
    xor d                                         ; $49f6: $aa
    ld d, l                                       ; $49f7: $55
    ld d, l                                       ; $49f8: $55
    xor d                                         ; $49f9: $aa
    xor d                                         ; $49fa: $aa
    ld d, l                                       ; $49fb: $55
    ld d, l                                       ; $49fc: $55
    xor d                                         ; $49fd: $aa
    xor d                                         ; $49fe: $aa
    ld d, l                                       ; $49ff: $55
    ld e, $00                                     ; $4a00: $1e $00
    rrca                                          ; $4a02: $0f
    nop                                           ; $4a03: $00
    rlca                                          ; $4a04: $07
    nop                                           ; $4a05: $00
    inc bc                                        ; $4a06: $03
    nop                                           ; $4a07: $00
    nop                                           ; $4a08: $00
    nop                                           ; $4a09: $00
    nop                                           ; $4a0a: $00
    nop                                           ; $4a0b: $00
    nop                                           ; $4a0c: $00
    nop                                           ; $4a0d: $00
    nop                                           ; $4a0e: $00
    nop                                           ; $4a0f: $00
    ld d, c                                       ; $4a10: $51
    xor d                                         ; $4a11: $aa
    cp $0d                                        ; $4a12: $fe $0d
    pop af                                        ; $4a14: $f1
    or $e3                                        ; $4a15: $f6 $e3
    db $fc                                        ; $4a17: $fc
    ld d, l                                       ; $4a18: $55
    xor d                                         ; $4a19: $aa
    xor d                                         ; $4a1a: $aa
    ld d, l                                       ; $4a1b: $55
    ld d, l                                       ; $4a1c: $55
    xor d                                         ; $4a1d: $aa
    xor d                                         ; $4a1e: $aa
    ld d, l                                       ; $4a1f: $55
    ld a, [bc]                                    ; $4a20: $0a
    inc b                                         ; $4a21: $04
    cp $00                                        ; $4a22: $fe $00
    push af                                       ; $4a24: $f5
    ld [$00f9], sp                                ; $4a25: $08 $f9 $00
    nop                                           ; $4a28: $00
    nop                                           ; $4a29: $00
    nop                                           ; $4a2a: $00
    nop                                           ; $4a2b: $00
    nop                                           ; $4a2c: $00
    nop                                           ; $4a2d: $00
    nop                                           ; $4a2e: $00
    nop                                           ; $4a2f: $00
    push af                                       ; $4a30: $f5
    ld l, d                                       ; $4a31: $6a
    ld c, d                                       ; $4a32: $4a
    push af                                       ; $4a33: $f5
    push af                                       ; $4a34: $f5
    jp z, $d52a                                   ; $4a35: $ca $2a $d5

    ld d, l                                       ; $4a38: $55
    xor d                                         ; $4a39: $aa
    xor d                                         ; $4a3a: $aa
    ld d, l                                       ; $4a3b: $55
    ld d, l                                       ; $4a3c: $55
    xor d                                         ; $4a3d: $aa
    xor d                                         ; $4a3e: $aa
    ld d, l                                       ; $4a3f: $55
    ldh a, [rP1]                                  ; $4a40: $f0 $00
    ldh [rP1], a                                  ; $4a42: $e0 $00
    ldh [rP1], a                                  ; $4a44: $e0 $00
    ret nz                                        ; $4a46: $c0

    nop                                           ; $4a47: $00
    nop                                           ; $4a48: $00
    nop                                           ; $4a49: $00
    nop                                           ; $4a4a: $00
    nop                                           ; $4a4b: $00
    nop                                           ; $4a4c: $00
    nop                                           ; $4a4d: $00
    nop                                           ; $4a4e: $00
    nop                                           ; $4a4f: $00
    rst $38                                       ; $4a50: $ff
    add $64                                       ; $4a51: $c6 $64
    rst RST_18                                    ; $4a53: $df
    dec d                                         ; $4a54: $15
    xor [hl]                                      ; $4a55: $ae
    ld a, [hl]                                    ; $4a56: $7e
    call $aa55                                    ; $4a57: $cd $55 $aa
    xor d                                         ; $4a5a: $aa
    ld d, l                                       ; $4a5b: $55
    ld d, l                                       ; $4a5c: $55
    xor d                                         ; $4a5d: $aa
    xor d                                         ; $4a5e: $aa
    ld d, l                                       ; $4a5f: $55
    rst $28                                       ; $4a60: $ef
    nop                                           ; $4a61: $00
    xor $00                                       ; $4a62: $ee $00
    xor [hl]                                      ; $4a64: $ae
    ld b, b                                       ; $4a65: $40
    cp $00                                        ; $4a66: $fe $00
    nop                                           ; $4a68: $00
    nop                                           ; $4a69: $00
    nop                                           ; $4a6a: $00
    nop                                           ; $4a6b: $00
    nop                                           ; $4a6c: $00
    nop                                           ; $4a6d: $00
    nop                                           ; $4a6e: $00
    nop                                           ; $4a6f: $00
    ld c, a                                       ; $4a70: $4f
    cp h                                          ; $4a71: $bc
    cp d                                          ; $4a72: $ba
    ld c, l                                       ; $4a73: $4d
    ld e, l                                       ; $4a74: $5d
    xor d                                         ; $4a75: $aa
    cp d                                          ; $4a76: $ba
    ld b, l                                       ; $4a77: $45
    ld d, l                                       ; $4a78: $55
    xor d                                         ; $4a79: $aa
    xor d                                         ; $4a7a: $aa
    ld d, l                                       ; $4a7b: $55
    ld d, l                                       ; $4a7c: $55
    xor d                                         ; $4a7d: $aa
    xor d                                         ; $4a7e: $aa
    ld d, l                                       ; $4a7f: $55
    ld e, $00                                     ; $4a80: $1e $00
    inc e                                         ; $4a82: $1c
    nop                                           ; $4a83: $00
    inc e                                         ; $4a84: $1c
    nop                                           ; $4a85: $00
    jr jr_005_4a88                                ; $4a86: $18 $00

jr_005_4a88:
    nop                                           ; $4a88: $00
    nop                                           ; $4a89: $00
    nop                                           ; $4a8a: $00
    nop                                           ; $4a8b: $00
    nop                                           ; $4a8c: $00
    nop                                           ; $4a8d: $00
    nop                                           ; $4a8e: $00
    nop                                           ; $4a8f: $00
    ld [hl], a                                    ; $4a90: $77
    cp e                                          ; $4a91: $bb
    cp d                                          ; $4a92: $ba
    halt                                          ; $4a93: $76
    ld [hl], a                                    ; $4a94: $77
    cp e                                          ; $4a95: $bb
    cp e                                          ; $4a96: $bb
    ld [hl], a                                    ; $4a97: $77
    ld d, l                                       ; $4a98: $55
    xor d                                         ; $4a99: $aa
    xor d                                         ; $4a9a: $aa
    ld d, l                                       ; $4a9b: $55
    ld d, l                                       ; $4a9c: $55
    xor d                                         ; $4a9d: $aa
    xor d                                         ; $4a9e: $aa
    ld d, l                                       ; $4a9f: $55
    inc sp                                        ; $4aa0: $33
    nop                                           ; $4aa1: $00
    ld [hl-], a                                   ; $4aa2: $32
    ld bc, $0033                                  ; $4aa3: $01 $33 $00
    inc sp                                        ; $4aa6: $33
    nop                                           ; $4aa7: $00
    nop                                           ; $4aa8: $00
    nop                                           ; $4aa9: $00
    nop                                           ; $4aaa: $00
    nop                                           ; $4aab: $00
    nop                                           ; $4aac: $00
    nop                                           ; $4aad: $00
    nop                                           ; $4aae: $00
    nop                                           ; $4aaf: $00
    nop                                           ; $4ab0: $00
    rst $38                                       ; $4ab1: $ff
    rst $38                                       ; $4ab2: $ff
    rst $38                                       ; $4ab3: $ff
    push af                                       ; $4ab4: $f5
    ld a, [bc]                                    ; $4ab5: $0a
    rst $38                                       ; $4ab6: $ff
    rst $38                                       ; $4ab7: $ff
    rst $38                                       ; $4ab8: $ff
    rst $38                                       ; $4ab9: $ff
    rst $38                                       ; $4aba: $ff
    rst $38                                       ; $4abb: $ff
    rst $38                                       ; $4abc: $ff
    rst $38                                       ; $4abd: $ff
    rst $38                                       ; $4abe: $ff
    rst $38                                       ; $4abf: $ff
    nop                                           ; $4ac0: $00
    nop                                           ; $4ac1: $00
    nop                                           ; $4ac2: $00
    nop                                           ; $4ac3: $00
    rst $38                                       ; $4ac4: $ff
    nop                                           ; $4ac5: $00
    rst $38                                       ; $4ac6: $ff
    nop                                           ; $4ac7: $00
    rst $38                                       ; $4ac8: $ff
    nop                                           ; $4ac9: $00
    rst $38                                       ; $4aca: $ff
    nop                                           ; $4acb: $00
    rst $38                                       ; $4acc: $ff
    nop                                           ; $4acd: $00
    rst $38                                       ; $4ace: $ff
    nop                                           ; $4acf: $00
    nop                                           ; $4ad0: $00
    rst $38                                       ; $4ad1: $ff
    rst $38                                       ; $4ad2: $ff
    rst $38                                       ; $4ad3: $ff
    ld d, b                                       ; $4ad4: $50
    xor a                                         ; $4ad5: $af
    rst $38                                       ; $4ad6: $ff
    rst $38                                       ; $4ad7: $ff
    rst $38                                       ; $4ad8: $ff
    rst $38                                       ; $4ad9: $ff
    rst $38                                       ; $4ada: $ff
    rst $38                                       ; $4adb: $ff
    rst $38                                       ; $4adc: $ff
    rst $38                                       ; $4add: $ff
    rst $38                                       ; $4ade: $ff
    rst $38                                       ; $4adf: $ff
    nop                                           ; $4ae0: $00
    nop                                           ; $4ae1: $00
    nop                                           ; $4ae2: $00
    nop                                           ; $4ae3: $00
    rst $38                                       ; $4ae4: $ff
    nop                                           ; $4ae5: $00
    rst $38                                       ; $4ae6: $ff
    nop                                           ; $4ae7: $00
    rst $38                                       ; $4ae8: $ff
    nop                                           ; $4ae9: $00
    rst $38                                       ; $4aea: $ff
    nop                                           ; $4aeb: $00
    rst $38                                       ; $4aec: $ff
    nop                                           ; $4aed: $00
    rst $38                                       ; $4aee: $ff
    nop                                           ; $4aef: $00
    dec d                                         ; $4af0: $15
    ld [$f5ca], a                                 ; $4af1: $ea $ca $f5
    dec [hl]                                      ; $4af4: $35
    ld a, [$fdca]                                 ; $4af5: $fa $ca $fd
    push af                                       ; $4af8: $f5
    cp $fa                                        ; $4af9: $fe $fa
    rst $38                                       ; $4afb: $ff
    db $fd                                        ; $4afc: $fd
    rst $38                                       ; $4afd: $ff
    db $fd                                        ; $4afe: $fd
    rst $38                                       ; $4aff: $ff
    nop                                           ; $4b00: $00
    nop                                           ; $4b01: $00
    nop                                           ; $4b02: $00
    nop                                           ; $4b03: $00
    ret nz                                        ; $4b04: $c0

    ret nz                                        ; $4b05: $c0

    ldh a, [$fff0]                                ; $4b06: $f0 $f0
    ld hl, sp-$08                                 ; $4b08: $f8 $f8
    db $fc                                        ; $4b0a: $fc
    db $fc                                        ; $4b0b: $fc
    cp $fe                                        ; $4b0c: $fe $fe
    cp $fe                                        ; $4b0e: $fe $fe
    rst $38                                       ; $4b10: $ff
    rst $38                                       ; $4b11: $ff
    rst $38                                       ; $4b12: $ff
    rst $38                                       ; $4b13: $ff
    rst $38                                       ; $4b14: $ff
    rst $38                                       ; $4b15: $ff
    rst $38                                       ; $4b16: $ff
    or [hl]                                       ; $4b17: $b6
    rst $38                                       ; $4b18: $ff
    or [hl]                                       ; $4b19: $b6
    rst $38                                       ; $4b1a: $ff
    xor d                                         ; $4b1b: $aa
    xor d                                         ; $4b1c: $aa
    db $dd                                        ; $4b1d: $dd
    rst $38                                       ; $4b1e: $ff
    db $dd                                        ; $4b1f: $dd
    rst $38                                       ; $4b20: $ff
    nop                                           ; $4b21: $00
    rst $38                                       ; $4b22: $ff
    nop                                           ; $4b23: $00
    rst $38                                       ; $4b24: $ff
    nop                                           ; $4b25: $00
    rst $38                                       ; $4b26: $ff
    nop                                           ; $4b27: $00
    rst $38                                       ; $4b28: $ff
    nop                                           ; $4b29: $00
    rst $38                                       ; $4b2a: $ff
    nop                                           ; $4b2b: $00
    rst $38                                       ; $4b2c: $ff
    nop                                           ; $4b2d: $00
    rst $38                                       ; $4b2e: $ff
    nop                                           ; $4b2f: $00
    rst $38                                       ; $4b30: $ff
    rst $38                                       ; $4b31: $ff
    rst $38                                       ; $4b32: $ff
    rst $38                                       ; $4b33: $ff
    rst $38                                       ; $4b34: $ff
    rst $38                                       ; $4b35: $ff
    db $dd                                        ; $4b36: $dd
    and d                                         ; $4b37: $a2
    rst $38                                       ; $4b38: $ff
    or [hl]                                       ; $4b39: $b6
    rst $38                                       ; $4b3a: $ff
    or [hl]                                       ; $4b3b: $b6
    rst $38                                       ; $4b3c: $ff
    or [hl]                                       ; $4b3d: $b6
    rst $38                                       ; $4b3e: $ff
    or [hl]                                       ; $4b3f: $b6
    rst $38                                       ; $4b40: $ff
    nop                                           ; $4b41: $00
    rst $38                                       ; $4b42: $ff
    nop                                           ; $4b43: $00
    rst $38                                       ; $4b44: $ff
    nop                                           ; $4b45: $00
    rst $38                                       ; $4b46: $ff
    nop                                           ; $4b47: $00
    rst $38                                       ; $4b48: $ff
    nop                                           ; $4b49: $00
    rst $38                                       ; $4b4a: $ff
    nop                                           ; $4b4b: $00
    rst $38                                       ; $4b4c: $ff
    nop                                           ; $4b4d: $00
    rst $38                                       ; $4b4e: $ff
    nop                                           ; $4b4f: $00
    rst $38                                       ; $4b50: $ff
    rst $38                                       ; $4b51: $ff
    rst $38                                       ; $4b52: $ff
    rst $38                                       ; $4b53: $ff
    rst $38                                       ; $4b54: $ff
    rst $38                                       ; $4b55: $ff
    cp $df                                        ; $4b56: $fe $df
    rst $38                                       ; $4b58: $ff
    sbc $ff                                       ; $4b59: $de $ff
    rra                                           ; $4b5b: $1f
    cp $df                                        ; $4b5c: $fe $df
    cp $df                                        ; $4b5e: $fe $df
    rst $38                                       ; $4b60: $ff
    nop                                           ; $4b61: $00
    rst $38                                       ; $4b62: $ff
    nop                                           ; $4b63: $00
    rst $38                                       ; $4b64: $ff
    nop                                           ; $4b65: $00
    rst $38                                       ; $4b66: $ff
    nop                                           ; $4b67: $00
    rst $38                                       ; $4b68: $ff
    nop                                           ; $4b69: $00
    rst $38                                       ; $4b6a: $ff
    nop                                           ; $4b6b: $00
    rst $38                                       ; $4b6c: $ff
    nop                                           ; $4b6d: $00
    rst $38                                       ; $4b6e: $ff
    nop                                           ; $4b6f: $00
    rst $38                                       ; $4b70: $ff
    rst $38                                       ; $4b71: $ff
    rst $38                                       ; $4b72: $ff
    rst $38                                       ; $4b73: $ff
    rst $38                                       ; $4b74: $ff
    rst $38                                       ; $4b75: $ff
    adc $31                                       ; $4b76: $ce $31
    rst RST_18                                    ; $4b78: $df
    ei                                            ; $4b79: $fb
    rst $38                                       ; $4b7a: $ff
    dec sp                                        ; $4b7b: $3b
    rst $38                                       ; $4b7c: $ff
    db $db                                        ; $4b7d: $db
    rst RST_18                                    ; $4b7e: $df
    dec sp                                        ; $4b7f: $3b
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
    rst $38                                       ; $4b8a: $ff
    nop                                           ; $4b8b: $00
    rst $38                                       ; $4b8c: $ff
    nop                                           ; $4b8d: $00
    rst $38                                       ; $4b8e: $ff
    nop                                           ; $4b8f: $00
    rst $38                                       ; $4b90: $ff
    rst $38                                       ; $4b91: $ff
    rst $38                                       ; $4b92: $ff
    rst $38                                       ; $4b93: $ff
    rst $38                                       ; $4b94: $ff
    rst $38                                       ; $4b95: $ff
    rst $38                                       ; $4b96: $ff
    ld de, $76fd                                  ; $4b97: $11 $fd $76
    rst $38                                       ; $4b9a: $ff
    ld de, $75fe                                  ; $4b9b: $11 $fe $75
    rst $38                                       ; $4b9e: $ff
    ld d, $ff                                     ; $4b9f: $16 $ff
    nop                                           ; $4ba1: $00
    rst $38                                       ; $4ba2: $ff
    nop                                           ; $4ba3: $00
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
    rst $38                                       ; $4bb0: $ff
    rst $38                                       ; $4bb1: $ff
    rst $38                                       ; $4bb2: $ff
    rst $38                                       ; $4bb3: $ff
    rst $38                                       ; $4bb4: $ff
    rst $38                                       ; $4bb5: $ff
    rst $38                                       ; $4bb6: $ff
    adc h                                         ; $4bb7: $8c
    db $fd                                        ; $4bb8: $fd
    cp e                                          ; $4bb9: $bb
    rst $38                                       ; $4bba: $ff
    adc e                                         ; $4bbb: $8b
    db $fd                                        ; $4bbc: $fd
    cp e                                          ; $4bbd: $bb
    rst $38                                       ; $4bbe: $ff
    adc h                                         ; $4bbf: $8c
    rst $38                                       ; $4bc0: $ff
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
    rst $38                                       ; $4bd0: $ff
    rst $38                                       ; $4bd1: $ff
    rst $38                                       ; $4bd2: $ff
    rst $38                                       ; $4bd3: $ff
    rst $38                                       ; $4bd4: $ff
    rst $38                                       ; $4bd5: $ff
    db $fd                                        ; $4bd6: $fd
    ld a, [hl]                                    ; $4bd7: $7e
    ld a, a                                       ; $4bd8: $7f
    cp l                                          ; $4bd9: $bd
    rst $38                                       ; $4bda: $ff
    cp [hl]                                       ; $4bdb: $be
    ld a, l                                       ; $4bdc: $7d
    cp a                                          ; $4bdd: $bf
    db $fd                                        ; $4bde: $fd
    ld a, [hl]                                    ; $4bdf: $7e
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
    rst $38                                       ; $4bf0: $ff
    rst $38                                       ; $4bf1: $ff
    rst $38                                       ; $4bf2: $ff
    rst $38                                       ; $4bf3: $ff
    rst $38                                       ; $4bf4: $ff
    rst $38                                       ; $4bf5: $ff
    cp a                                          ; $4bf6: $bf
    ld [hl], c                                    ; $4bf7: $71
    or l                                          ; $4bf8: $b5
    xor $ff                                       ; $4bf9: $ee $ff
    ld l, [hl]                                    ; $4bfb: $6e
    push af                                       ; $4bfc: $f5
    xor [hl]                                      ; $4bfd: $ae
    cp a                                          ; $4bfe: $bf
    ld [hl], c                                    ; $4bff: $71
    rst $38                                       ; $4c00: $ff
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
    rst $38                                       ; $4c10: $ff
    rst $38                                       ; $4c11: $ff
    rst $38                                       ; $4c12: $ff
    rst $38                                       ; $4c13: $ff
    rst $38                                       ; $4c14: $ff
    rst $38                                       ; $4c15: $ff
    rst $38                                       ; $4c16: $ff
    or l                                          ; $4c17: $b5
    rst $38                                       ; $4c18: $ff
    or h                                          ; $4c19: $b4
    rst $38                                       ; $4c1a: $ff
    or l                                          ; $4c1b: $b5
    rst $38                                       ; $4c1c: $ff
    or l                                          ; $4c1d: $b5
    or a                                          ; $4c1e: $b7
    call $00ff                                    ; $4c1f: $cd $ff $00
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
    rst $38                                       ; $4c30: $ff
    rst $38                                       ; $4c31: $ff
    rst $38                                       ; $4c32: $ff
    rst $38                                       ; $4c33: $ff
    rst $38                                       ; $4c34: $ff
    rst $38                                       ; $4c35: $ff
    db $fd                                        ; $4c36: $fd
    db $d3                                        ; $4c37: $d3
    db $fc                                        ; $4c38: $fc
    rst $10                                       ; $4c39: $d7
    rst $38                                       ; $4c3a: $ff
    ld d, [hl]                                    ; $4c3b: $56
    db $fc                                        ; $4c3c: $fc
    sub a                                         ; $4c3d: $97
    db $fd                                        ; $4c3e: $fd
    db $d3                                        ; $4c3f: $d3
    rst $38                                       ; $4c40: $ff
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
    cp $ff                                        ; $4c50: $fe $ff
    cp $ff                                        ; $4c52: $fe $ff
    cp $ff                                        ; $4c54: $fe $ff
    cp $ff                                        ; $4c56: $fe $ff
    cp $ff                                        ; $4c58: $fe $ff
    cp $ff                                        ; $4c5a: $fe $ff
    cp $ff                                        ; $4c5c: $fe $ff
    cp $ff                                        ; $4c5e: $fe $ff
    rst $38                                       ; $4c60: $ff
    nop                                           ; $4c61: $00
    rst $38                                       ; $4c62: $ff
    nop                                           ; $4c63: $00
    rst $38                                       ; $4c64: $ff
    nop                                           ; $4c65: $00
    rst $38                                       ; $4c66: $ff
    nop                                           ; $4c67: $00
    rst $38                                       ; $4c68: $ff
    nop                                           ; $4c69: $00
    rst $38                                       ; $4c6a: $ff
    nop                                           ; $4c6b: $00
    rst $38                                       ; $4c6c: $ff
    nop                                           ; $4c6d: $00
    rst $38                                       ; $4c6e: $ff
    nop                                           ; $4c6f: $00
    push de                                       ; $4c70: $d5
    xor d                                         ; $4c71: $aa
    ld [$d595], a                                 ; $4c72: $ea $95 $d5
    xor d                                         ; $4c75: $aa
    ld [$d595], a                                 ; $4c76: $ea $95 $d5
    xor d                                         ; $4c79: $aa
    ld [$d595], a                                 ; $4c7a: $ea $95 $d5
    xor d                                         ; $4c7d: $aa
    ld [$0095], a                                 ; $4c7e: $ea $95 $00
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
    rst $38                                       ; $4c90: $ff
    rst $38                                       ; $4c91: $ff
    rst $38                                       ; $4c92: $ff
    rst $38                                       ; $4c93: $ff
    rst $38                                       ; $4c94: $ff
    rst $38                                       ; $4c95: $ff
    rst $38                                       ; $4c96: $ff
    rst $38                                       ; $4c97: $ff
    rst $38                                       ; $4c98: $ff
    rst $38                                       ; $4c99: $ff
    rst $38                                       ; $4c9a: $ff
    rst $38                                       ; $4c9b: $ff
    rst $38                                       ; $4c9c: $ff
    rst $38                                       ; $4c9d: $ff
    ld a, a                                       ; $4c9e: $7f
    rst $38                                       ; $4c9f: $ff
    rst $38                                       ; $4ca0: $ff
    nop                                           ; $4ca1: $00
    rst $38                                       ; $4ca2: $ff
    nop                                           ; $4ca3: $00
    rst $38                                       ; $4ca4: $ff
    nop                                           ; $4ca5: $00
    rst $38                                       ; $4ca6: $ff
    nop                                           ; $4ca7: $00
    rst $38                                       ; $4ca8: $ff
    nop                                           ; $4ca9: $00
    rst $38                                       ; $4caa: $ff
    nop                                           ; $4cab: $00
    rst $38                                       ; $4cac: $ff
    nop                                           ; $4cad: $00
    rst $38                                       ; $4cae: $ff
    nop                                           ; $4caf: $00
    db $fd                                        ; $4cb0: $fd
    rst $38                                       ; $4cb1: $ff
    db $fd                                        ; $4cb2: $fd
    rst $38                                       ; $4cb3: $ff
    db $fd                                        ; $4cb4: $fd
    rst $38                                       ; $4cb5: $ff
    db $fd                                        ; $4cb6: $fd
    rst $38                                       ; $4cb7: $ff
    ei                                            ; $4cb8: $fb
    cp $fb                                        ; $4cb9: $fe $fb
    cp $fb                                        ; $4cbb: $fe $fb
    cp $f6                                        ; $4cbd: $fe $f6
    db $fd                                        ; $4cbf: $fd
    cp $fe                                        ; $4cc0: $fe $fe
    cp $fe                                        ; $4cc2: $fe $fe
    cp $fe                                        ; $4cc4: $fe $fe
    cp $fe                                        ; $4cc6: $fe $fe
    db $fc                                        ; $4cc8: $fc
    db $fc                                        ; $4cc9: $fc
    db $fc                                        ; $4cca: $fc
    db $fc                                        ; $4ccb: $fc
    db $fc                                        ; $4ccc: $fc
    db $fc                                        ; $4ccd: $fc
    ld hl, sp-$08                                 ; $4cce: $f8 $f8
    push de                                       ; $4cd0: $d5
    ld a, [hl+]                                   ; $4cd1: $2a
    xor d                                         ; $4cd2: $aa
    ld d, l                                       ; $4cd3: $55
    push de                                       ; $4cd4: $d5
    ld a, [hl+]                                   ; $4cd5: $2a
    xor d                                         ; $4cd6: $aa
    ld d, l                                       ; $4cd7: $55
    ld d, l                                       ; $4cd8: $55
    xor d                                         ; $4cd9: $aa
    xor d                                         ; $4cda: $aa
    ld d, l                                       ; $4cdb: $55
    ld d, l                                       ; $4cdc: $55
    xor d                                         ; $4cdd: $aa
    xor d                                         ; $4cde: $aa
    ld d, l                                       ; $4cdf: $55
    nop                                           ; $4ce0: $00
    nop                                           ; $4ce1: $00
    nop                                           ; $4ce2: $00
    nop                                           ; $4ce3: $00
    nop                                           ; $4ce4: $00
    nop                                           ; $4ce5: $00
    nop                                           ; $4ce6: $00
    nop                                           ; $4ce7: $00
    nop                                           ; $4ce8: $00
    nop                                           ; $4ce9: $00
    nop                                           ; $4cea: $00
    nop                                           ; $4ceb: $00
    nop                                           ; $4cec: $00
    nop                                           ; $4ced: $00
    nop                                           ; $4cee: $00
    nop                                           ; $4cef: $00
    nop                                           ; $4cf0: $00
    rst $38                                       ; $4cf1: $ff
    rst $38                                       ; $4cf2: $ff
    rst $38                                       ; $4cf3: $ff
    rst $38                                       ; $4cf4: $ff
    rst $38                                       ; $4cf5: $ff
    rst $38                                       ; $4cf6: $ff
    rst $38                                       ; $4cf7: $ff
    rst $38                                       ; $4cf8: $ff
    rst $38                                       ; $4cf9: $ff
    di                                            ; $4cfa: $f3
    rst $38                                       ; $4cfb: $ff
    pop bc                                        ; $4cfc: $c1
    rst $38                                       ; $4cfd: $ff
    add hl, de                                    ; $4cfe: $19
    rst $38                                       ; $4cff: $ff
    rst $38                                       ; $4d00: $ff
    nop                                           ; $4d01: $00
    rst $38                                       ; $4d02: $ff
    nop                                           ; $4d03: $00
    rst $38                                       ; $4d04: $ff
    nop                                           ; $4d05: $00
    rst $38                                       ; $4d06: $ff
    nop                                           ; $4d07: $00
    rst $38                                       ; $4d08: $ff
    nop                                           ; $4d09: $00
    rst $38                                       ; $4d0a: $ff
    inc c                                         ; $4d0b: $0c
    rst $38                                       ; $4d0c: $ff
    ld a, $ff                                     ; $4d0d: $3e $ff
    and $00                                       ; $4d0f: $e6 $00
    rst $38                                       ; $4d11: $ff
    rst $38                                       ; $4d12: $ff
    rst $38                                       ; $4d13: $ff
    rst $38                                       ; $4d14: $ff
    rst $38                                       ; $4d15: $ff
    rst $38                                       ; $4d16: $ff
    rst $38                                       ; $4d17: $ff
    db $fc                                        ; $4d18: $fc
    rst $38                                       ; $4d19: $ff
    ldh a, [rIE]                                  ; $4d1a: $f0 $ff
    rst RST_00                                    ; $4d1c: $c7
    rst $38                                       ; $4d1d: $ff
    sbc h                                         ; $4d1e: $9c
    rst $38                                       ; $4d1f: $ff
    rst $38                                       ; $4d20: $ff
    nop                                           ; $4d21: $00
    rst $38                                       ; $4d22: $ff
    nop                                           ; $4d23: $00
    rst $38                                       ; $4d24: $ff
    nop                                           ; $4d25: $00
    rst $38                                       ; $4d26: $ff
    nop                                           ; $4d27: $00
    rst $38                                       ; $4d28: $ff
    inc bc                                        ; $4d29: $03
    rst $38                                       ; $4d2a: $ff
    rrca                                          ; $4d2b: $0f
    rst $38                                       ; $4d2c: $ff
    jr c, @+$01                                   ; $4d2d: $38 $ff

    ld h, e                                       ; $4d2f: $63
    nop                                           ; $4d30: $00
    rst $38                                       ; $4d31: $ff
    db $fc                                        ; $4d32: $fc
    rst $38                                       ; $4d33: $ff
    db $fc                                        ; $4d34: $fc
    rst $38                                       ; $4d35: $ff
    db $fc                                        ; $4d36: $fc
    rst $38                                       ; $4d37: $ff
    ld a, h                                       ; $4d38: $7c
    rst $38                                       ; $4d39: $ff
    add hl, sp                                    ; $4d3a: $39
    rst $38                                       ; $4d3b: $ff
    inc sp                                        ; $4d3c: $33
    rst $38                                       ; $4d3d: $ff
    ld h, a                                       ; $4d3e: $67
    rst $38                                       ; $4d3f: $ff
    rst $38                                       ; $4d40: $ff
    nop                                           ; $4d41: $00
    rst $38                                       ; $4d42: $ff
    inc bc                                        ; $4d43: $03
    rst $38                                       ; $4d44: $ff
    inc bc                                        ; $4d45: $03
    rst $38                                       ; $4d46: $ff
    inc bc                                        ; $4d47: $03
    rst $38                                       ; $4d48: $ff
    add e                                         ; $4d49: $83
    rst $38                                       ; $4d4a: $ff
    add $ff                                       ; $4d4b: $c6 $ff
    call z, $98ff                                 ; $4d4d: $cc $ff $98
    nop                                           ; $4d50: $00
    rst $38                                       ; $4d51: $ff
    rst $38                                       ; $4d52: $ff
    rst $38                                       ; $4d53: $ff
    ld a, a                                       ; $4d54: $7f
    rst $38                                       ; $4d55: $ff
    ld a, a                                       ; $4d56: $7f
    rst $38                                       ; $4d57: $ff
    ld a, a                                       ; $4d58: $7f
    rst $38                                       ; $4d59: $ff
    ld a, a                                       ; $4d5a: $7f
    rst $38                                       ; $4d5b: $ff
    ccf                                           ; $4d5c: $3f
    rst $38                                       ; $4d5d: $ff
    sbc a                                         ; $4d5e: $9f
    rst $38                                       ; $4d5f: $ff
    rst $38                                       ; $4d60: $ff
    nop                                           ; $4d61: $00
    rst $38                                       ; $4d62: $ff
    nop                                           ; $4d63: $00
    rst $38                                       ; $4d64: $ff
    add b                                         ; $4d65: $80
    rst $38                                       ; $4d66: $ff
    add b                                         ; $4d67: $80
    rst $38                                       ; $4d68: $ff
    add b                                         ; $4d69: $80
    rst $38                                       ; $4d6a: $ff
    add b                                         ; $4d6b: $80
    rst $38                                       ; $4d6c: $ff
    ret nz                                        ; $4d6d: $c0

    rst $38                                       ; $4d6e: $ff
    ld h, b                                       ; $4d6f: $60
    rst $38                                       ; $4d70: $ff
    rst $38                                       ; $4d71: $ff
    rst $38                                       ; $4d72: $ff
    rst $38                                       ; $4d73: $ff
    rst $38                                       ; $4d74: $ff
    rst $38                                       ; $4d75: $ff
    rst $38                                       ; $4d76: $ff
    rst $38                                       ; $4d77: $ff
    rst $38                                       ; $4d78: $ff
    rst $38                                       ; $4d79: $ff
    rst $38                                       ; $4d7a: $ff
    rst $38                                       ; $4d7b: $ff
    rst $38                                       ; $4d7c: $ff
    rst $38                                       ; $4d7d: $ff
    cp $ff                                        ; $4d7e: $fe $ff
    rst $38                                       ; $4d80: $ff
    rst $38                                       ; $4d81: $ff
    rst $38                                       ; $4d82: $ff
    rst $38                                       ; $4d83: $ff
    rst $38                                       ; $4d84: $ff
    rst $38                                       ; $4d85: $ff
    rst $38                                       ; $4d86: $ff
    rst $38                                       ; $4d87: $ff
    rst $38                                       ; $4d88: $ff
    rst $38                                       ; $4d89: $ff
    rst $38                                       ; $4d8a: $ff
    rst $38                                       ; $4d8b: $ff
    rst $38                                       ; $4d8c: $ff
    rst $38                                       ; $4d8d: $ff
    rst $38                                       ; $4d8e: $ff
    rst $38                                       ; $4d8f: $ff
    rst $30                                       ; $4d90: $f7
    db $fc                                        ; $4d91: $fc
    xor $f9                                       ; $4d92: $ee $f9
    db $ed                                        ; $4d94: $ed
    ld a, [$f5da]                                 ; $4d95: $fa $da $f5
    db $dd                                        ; $4d98: $dd
    ldh a, [c]                                    ; $4d99: $f2
    cp d                                          ; $4d9a: $ba
    push hl                                       ; $4d9b: $e5
    ld [hl], l                                    ; $4d9c: $75
    jp z, $95ea                                   ; $4d9d: $ca $ea $95

    ld hl, sp-$08                                 ; $4da0: $f8 $f8
    ldh a, [$fff0]                                ; $4da2: $f0 $f0
    ldh a, [$fff0]                                ; $4da4: $f0 $f0
    ldh [$ffe0], a                                ; $4da6: $e0 $e0
    ldh [$ffe0], a                                ; $4da8: $e0 $e0
    ret nz                                        ; $4daa: $c0

    ret nz                                        ; $4dab: $c0

    add b                                         ; $4dac: $80
    add b                                         ; $4dad: $80
    nop                                           ; $4dae: $00
    nop                                           ; $4daf: $00
    ld [hl], c                                    ; $4db0: $71
    rst $38                                       ; $4db1: $ff
    ldh [c], a                                    ; $4db2: $e2
    rst $38                                       ; $4db3: $ff
    add $ff                                       ; $4db4: $c6 $ff
    inc c                                         ; $4db6: $0c
    rst $38                                       ; $4db7: $ff
    inc a                                         ; $4db8: $3c
    rst $38                                       ; $4db9: $ff
    cp $ff                                        ; $4dba: $fe $ff
    rst $38                                       ; $4dbc: $ff
    rst $38                                       ; $4dbd: $ff
    nop                                           ; $4dbe: $00
    rst $38                                       ; $4dbf: $ff
    rst $38                                       ; $4dc0: $ff
    adc [hl]                                      ; $4dc1: $8e
    rst $38                                       ; $4dc2: $ff
    dec e                                         ; $4dc3: $1d
    rst $38                                       ; $4dc4: $ff
    add hl, sp                                    ; $4dc5: $39
    rst $38                                       ; $4dc6: $ff
    di                                            ; $4dc7: $f3
    rst $38                                       ; $4dc8: $ff
    jp $01ff                                      ; $4dc9: $c3 $ff $01


    rst $38                                       ; $4dcc: $ff
    nop                                           ; $4dcd: $00
    rst $38                                       ; $4dce: $ff
    nop                                           ; $4dcf: $00
    jr nc, @+$01                                  ; $4dd0: $30 $ff

    inc bc                                        ; $4dd2: $03
    rst $38                                       ; $4dd3: $ff
    ld c, $ff                                     ; $4dd4: $0e $ff
    ld hl, sp-$01                                 ; $4dd6: $f8 $ff
    db $e3                                        ; $4dd8: $e3
    rst $38                                       ; $4dd9: $ff
    rrca                                          ; $4dda: $0f
    rst $38                                       ; $4ddb: $ff
    rst $38                                       ; $4ddc: $ff
    rst $38                                       ; $4ddd: $ff
    nop                                           ; $4dde: $00
    rst $38                                       ; $4ddf: $ff
    rst $38                                       ; $4de0: $ff
    rst RST_08                                    ; $4de1: $cf
    rst $38                                       ; $4de2: $ff
    db $fc                                        ; $4de3: $fc
    rst $38                                       ; $4de4: $ff
    pop af                                        ; $4de5: $f1
    rst $38                                       ; $4de6: $ff
    rlca                                          ; $4de7: $07
    rst $38                                       ; $4de8: $ff
    inc e                                         ; $4de9: $1c
    rst $38                                       ; $4dea: $ff
    ldh a, [rIE]                                  ; $4deb: $f0 $ff
    nop                                           ; $4ded: $00
    rst $38                                       ; $4dee: $ff
    nop                                           ; $4def: $00
    rst RST_08                                    ; $4df0: $cf
    rst $38                                       ; $4df1: $ff
    sbc a                                         ; $4df2: $9f
    rst $38                                       ; $4df3: $ff
    ccf                                           ; $4df4: $3f
    rst $38                                       ; $4df5: $ff
    cp $ff                                        ; $4df6: $fe $ff
    cp $ff                                        ; $4df8: $fe $ff
    cp $ff                                        ; $4dfa: $fe $ff
    rst $38                                       ; $4dfc: $ff
    rst $38                                       ; $4dfd: $ff
    nop                                           ; $4dfe: $00
    rst $38                                       ; $4dff: $ff
    rst $38                                       ; $4e00: $ff
    jr nc, @+$01                                  ; $4e01: $30 $ff

    ld h, b                                       ; $4e03: $60
    rst $38                                       ; $4e04: $ff
    ret nz                                        ; $4e05: $c0

    rst $38                                       ; $4e06: $ff
    ld bc, $01ff                                  ; $4e07: $01 $ff $01
    rst $38                                       ; $4e0a: $ff
    ld bc, $00ff                                  ; $4e0b: $01 $ff $00
    rst $38                                       ; $4e0e: $ff
    nop                                           ; $4e0f: $00
    sbc a                                         ; $4e10: $9f
    rst $38                                       ; $4e11: $ff
    cp a                                          ; $4e12: $bf
    rst $38                                       ; $4e13: $ff
    inc a                                         ; $4e14: $3c
    rst $38                                       ; $4e15: $ff
    nop                                           ; $4e16: $00
    rst $38                                       ; $4e17: $ff
    inc bc                                        ; $4e18: $03
    rst $38                                       ; $4e19: $ff
    ld a, a                                       ; $4e1a: $7f
    rst $38                                       ; $4e1b: $ff
    rst $38                                       ; $4e1c: $ff
    rst $38                                       ; $4e1d: $ff
    nop                                           ; $4e1e: $00
    rst $38                                       ; $4e1f: $ff
    rst $38                                       ; $4e20: $ff
    ld h, b                                       ; $4e21: $60
    rst $38                                       ; $4e22: $ff
    ld b, b                                       ; $4e23: $40
    rst $38                                       ; $4e24: $ff
    jp rIE                                        ; $4e25: $c3 $ff $ff


    rst $38                                       ; $4e28: $ff
    db $fc                                        ; $4e29: $fc
    rst $38                                       ; $4e2a: $ff
    add b                                         ; $4e2b: $80
    rst $38                                       ; $4e2c: $ff
    nop                                           ; $4e2d: $00
    rst $38                                       ; $4e2e: $ff
    nop                                           ; $4e2f: $00
    rst $38                                       ; $4e30: $ff
    rst $38                                       ; $4e31: $ff
    rst $38                                       ; $4e32: $ff
    rst $38                                       ; $4e33: $ff
    nop                                           ; $4e34: $00
    rst $38                                       ; $4e35: $ff
    nop                                           ; $4e36: $00
    rst $38                                       ; $4e37: $ff
    rst $38                                       ; $4e38: $ff
    rst $38                                       ; $4e39: $ff
    rst $38                                       ; $4e3a: $ff
    rst $38                                       ; $4e3b: $ff
    rst $38                                       ; $4e3c: $ff
    rst $38                                       ; $4e3d: $ff
    nop                                           ; $4e3e: $00
    rst $38                                       ; $4e3f: $ff
    rst $38                                       ; $4e40: $ff
    nop                                           ; $4e41: $00
    rst $38                                       ; $4e42: $ff
    nop                                           ; $4e43: $00
    rst $38                                       ; $4e44: $ff
    rst $38                                       ; $4e45: $ff
    rst $38                                       ; $4e46: $ff
    rst $38                                       ; $4e47: $ff
    rst $38                                       ; $4e48: $ff
    nop                                           ; $4e49: $00
    rst $38                                       ; $4e4a: $ff
    nop                                           ; $4e4b: $00
    rst $38                                       ; $4e4c: $ff
    nop                                           ; $4e4d: $00
    rst $38                                       ; $4e4e: $ff
    nop                                           ; $4e4f: $00
    rst $38                                       ; $4e50: $ff
    rst $38                                       ; $4e51: $ff
    rst $38                                       ; $4e52: $ff
    rst $38                                       ; $4e53: $ff
    ccf                                           ; $4e54: $3f
    rst $38                                       ; $4e55: $ff
    rra                                           ; $4e56: $1f
    rst $38                                       ; $4e57: $ff
    sbc a                                         ; $4e58: $9f
    rst $38                                       ; $4e59: $ff
    rst $38                                       ; $4e5a: $ff
    rst $38                                       ; $4e5b: $ff
    rst $38                                       ; $4e5c: $ff
    rst $38                                       ; $4e5d: $ff
    nop                                           ; $4e5e: $00
    rst $38                                       ; $4e5f: $ff
    rst $38                                       ; $4e60: $ff
    nop                                           ; $4e61: $00
    rst $38                                       ; $4e62: $ff
    nop                                           ; $4e63: $00
    rst $38                                       ; $4e64: $ff
    ret nz                                        ; $4e65: $c0

    rst $38                                       ; $4e66: $ff
    ldh [rIE], a                                  ; $4e67: $e0 $ff
    ld h, b                                       ; $4e69: $60
    rst $38                                       ; $4e6a: $ff
    nop                                           ; $4e6b: $00
    rst $38                                       ; $4e6c: $ff
    nop                                           ; $4e6d: $00
    rst $38                                       ; $4e6e: $ff
    nop                                           ; $4e6f: $00
    rst $38                                       ; $4e70: $ff
    rst $38                                       ; $4e71: $ff
    rst $38                                       ; $4e72: $ff
    rst $38                                       ; $4e73: $ff
    rst $38                                       ; $4e74: $ff
    rst $38                                       ; $4e75: $ff
    rst $38                                       ; $4e76: $ff
    rst $38                                       ; $4e77: $ff
    cp $ff                                        ; $4e78: $fe $ff
    pop af                                        ; $4e7a: $f1
    rst $38                                       ; $4e7b: $ff
    rrca                                          ; $4e7c: $0f
    cp $fe                                        ; $4e7d: $fe $fe
    pop af                                        ; $4e7f: $f1
    rst $38                                       ; $4e80: $ff
    rst $38                                       ; $4e81: $ff
    rst $38                                       ; $4e82: $ff
    rst $38                                       ; $4e83: $ff
    rst $38                                       ; $4e84: $ff
    rst $38                                       ; $4e85: $ff
    rst $38                                       ; $4e86: $ff
    rst $38                                       ; $4e87: $ff
    rst $38                                       ; $4e88: $ff
    rst $38                                       ; $4e89: $ff
    cp $fe                                        ; $4e8a: $fe $fe
    ldh a, [$fff0]                                ; $4e8c: $f0 $f0
    nop                                           ; $4e8e: $00
    nop                                           ; $4e8f: $00
    db $fd                                        ; $4e90: $fd
    rst $38                                       ; $4e91: $ff
    ei                                            ; $4e92: $fb
    cp $e7                                        ; $4e93: $fe $e7
    db $fc                                        ; $4e95: $fc
    sbc [hl]                                      ; $4e96: $9e
    ld sp, hl                                     ; $4e97: $f9
    ld [hl], l                                    ; $4e98: $75
    ld [$95ea], a                                 ; $4e99: $ea $ea $95
    push de                                       ; $4e9c: $d5
    ld a, [hl+]                                   ; $4e9d: $2a
    xor d                                         ; $4e9e: $aa
    ld d, l                                       ; $4e9f: $55
    cp $fe                                        ; $4ea0: $fe $fe
    db $fc                                        ; $4ea2: $fc
    db $fc                                        ; $4ea3: $fc
    ld hl, sp-$08                                 ; $4ea4: $f8 $f8
    ldh [$ffe0], a                                ; $4ea6: $e0 $e0
    add b                                         ; $4ea8: $80
    add b                                         ; $4ea9: $80
    nop                                           ; $4eaa: $00
    nop                                           ; $4eab: $00
    nop                                           ; $4eac: $00
    nop                                           ; $4ead: $00
    nop                                           ; $4eae: $00
    nop                                           ; $4eaf: $00
    push de                                       ; $4eb0: $d5
    ld a, [hl+]                                   ; $4eb1: $2a
    xor d                                         ; $4eb2: $aa
    ld d, l                                       ; $4eb3: $55
    ld d, l                                       ; $4eb4: $55
    xor d                                         ; $4eb5: $aa
    xor d                                         ; $4eb6: $aa
    ld d, l                                       ; $4eb7: $55
    ld d, l                                       ; $4eb8: $55
    xor d                                         ; $4eb9: $aa
    xor d                                         ; $4eba: $aa
    ld d, l                                       ; $4ebb: $55
    ld d, l                                       ; $4ebc: $55
    xor d                                         ; $4ebd: $aa
    xor d                                         ; $4ebe: $aa
    ld d, l                                       ; $4ebf: $55
    nop                                           ; $4ec0: $00
    nop                                           ; $4ec1: $00
    nop                                           ; $4ec2: $00
    nop                                           ; $4ec3: $00
    nop                                           ; $4ec4: $00
    nop                                           ; $4ec5: $00
    nop                                           ; $4ec6: $00
    nop                                           ; $4ec7: $00
    nop                                           ; $4ec8: $00
    nop                                           ; $4ec9: $00
    nop                                           ; $4eca: $00
    nop                                           ; $4ecb: $00
    nop                                           ; $4ecc: $00
    nop                                           ; $4ecd: $00
    nop                                           ; $4ece: $00
    nop                                           ; $4ecf: $00
    rst $38                                       ; $4ed0: $ff
    rst $38                                       ; $4ed1: $ff
    rst $38                                       ; $4ed2: $ff
    nop                                           ; $4ed3: $00
    ld d, l                                       ; $4ed4: $55
    xor d                                         ; $4ed5: $aa
    xor d                                         ; $4ed6: $aa
    ld d, l                                       ; $4ed7: $55
    rst $38                                       ; $4ed8: $ff
    nop                                           ; $4ed9: $00
    ld a, [hl]                                    ; $4eda: $7e
    ld a, a                                       ; $4edb: $7f
    rst $38                                       ; $4edc: $ff
    cp $2a                                        ; $4edd: $fe $2a
    ld d, l                                       ; $4edf: $55
    nop                                           ; $4ee0: $00
    nop                                           ; $4ee1: $00
    nop                                           ; $4ee2: $00
    nop                                           ; $4ee3: $00
    nop                                           ; $4ee4: $00
    nop                                           ; $4ee5: $00
    nop                                           ; $4ee6: $00
    nop                                           ; $4ee7: $00
    rst $38                                       ; $4ee8: $ff
    nop                                           ; $4ee9: $00
    ld a, a                                       ; $4eea: $7f
    add b                                         ; $4eeb: $80
    rst $38                                       ; $4eec: $ff
    nop                                           ; $4eed: $00
    ld b, b                                       ; $4eee: $40
    add b                                         ; $4eef: $80
    rst $38                                       ; $4ef0: $ff
    rst $38                                       ; $4ef1: $ff
    rst $38                                       ; $4ef2: $ff
    nop                                           ; $4ef3: $00
    ld d, l                                       ; $4ef4: $55
    xor d                                         ; $4ef5: $aa
    xor d                                         ; $4ef6: $aa
    ld d, l                                       ; $4ef7: $55
    ld d, a                                       ; $4ef8: $57
    xor b                                         ; $4ef9: $a8
    xor [hl]                                      ; $4efa: $ae
    ld d, d                                       ; $4efb: $52
    ld d, a                                       ; $4efc: $57
    xor e                                         ; $4efd: $ab
    xor a                                         ; $4efe: $af
    ld d, e                                       ; $4eff: $53
    nop                                           ; $4f00: $00
    nop                                           ; $4f01: $00
    nop                                           ; $4f02: $00
    nop                                           ; $4f03: $00
    nop                                           ; $4f04: $00
    nop                                           ; $4f05: $00
    nop                                           ; $4f06: $00
    nop                                           ; $4f07: $00
    inc bc                                        ; $4f08: $03
    nop                                           ; $4f09: $00
    ld b, $01                                     ; $4f0a: $06 $01
    rlca                                          ; $4f0c: $07
    nop                                           ; $4f0d: $00
    rlca                                          ; $4f0e: $07
    nop                                           ; $4f0f: $00
    rst $38                                       ; $4f10: $ff
    rst $38                                       ; $4f11: $ff
    rst $38                                       ; $4f12: $ff
    nop                                           ; $4f13: $00
    ld d, l                                       ; $4f14: $55
    xor d                                         ; $4f15: $aa
    xor d                                         ; $4f16: $aa
    ld d, l                                       ; $4f17: $55
    push af                                       ; $4f18: $f5
    ld a, [bc]                                    ; $4f19: $0a
    ld [$f5f5], a                                 ; $4f1a: $ea $f5 $f5
    ld a, [$3dd2]                                 ; $4f1d: $fa $d2 $3d
    nop                                           ; $4f20: $00
    nop                                           ; $4f21: $00
    nop                                           ; $4f22: $00
    nop                                           ; $4f23: $00
    nop                                           ; $4f24: $00
    nop                                           ; $4f25: $00
    nop                                           ; $4f26: $00
    nop                                           ; $4f27: $00
    ldh [rP1], a                                  ; $4f28: $e0 $00
    ldh a, [rP1]                                  ; $4f2a: $f0 $00
    ld hl, sp+$00                                 ; $4f2c: $f8 $00
    ld hl, sp+$00                                 ; $4f2e: $f8 $00
    rst $38                                       ; $4f30: $ff
    rst $38                                       ; $4f31: $ff
    rst $38                                       ; $4f32: $ff
    nop                                           ; $4f33: $00
    ld d, l                                       ; $4f34: $55
    xor d                                         ; $4f35: $aa
    xor d                                         ; $4f36: $aa
    ld d, l                                       ; $4f37: $55
    ld e, e                                       ; $4f38: $5b
    and h                                         ; $4f39: $a4
    xor l                                         ; $4f3a: $ad
    ld e, l                                       ; $4f3b: $5d
    ld l, l                                       ; $4f3c: $6d
    xor a                                         ; $4f3d: $af
    ei                                            ; $4f3e: $fb
    ld [hl], h                                    ; $4f3f: $74
    nop                                           ; $4f40: $00
    nop                                           ; $4f41: $00
    nop                                           ; $4f42: $00
    nop                                           ; $4f43: $00
    nop                                           ; $4f44: $00
    nop                                           ; $4f45: $00
    nop                                           ; $4f46: $00
    nop                                           ; $4f47: $00
    rrca                                          ; $4f48: $0f
    nop                                           ; $4f49: $00
    dec a                                         ; $4f4a: $3d
    ld [bc], a                                    ; $4f4b: $02
    ld l, a                                       ; $4f4c: $6f
    db $10                                        ; $4f4d: $10
    ei                                            ; $4f4e: $fb
    nop                                           ; $4f4f: $00
    rst $38                                       ; $4f50: $ff
    rst $38                                       ; $4f51: $ff
    rst $38                                       ; $4f52: $ff
    nop                                           ; $4f53: $00
    ld d, l                                       ; $4f54: $55
    xor d                                         ; $4f55: $aa
    xor d                                         ; $4f56: $aa
    ld d, l                                       ; $4f57: $55
    ld d, l                                       ; $4f58: $55
    xor d                                         ; $4f59: $aa
    ld [$ff9d], a                                 ; $4f5a: $ea $9d $ff
    call z, $fbc0                                 ; $4f5d: $cc $c0 $fb
    nop                                           ; $4f60: $00
    nop                                           ; $4f61: $00
    nop                                           ; $4f62: $00
    nop                                           ; $4f63: $00
    nop                                           ; $4f64: $00
    nop                                           ; $4f65: $00
    nop                                           ; $4f66: $00
    nop                                           ; $4f67: $00
    nop                                           ; $4f68: $00
    nop                                           ; $4f69: $00
    call c, $fe00                                 ; $4f6a: $dc $00 $fe
    nop                                           ; $4f6d: $00
    ld [rDIV], a                                  ; $4f6e: $ea $04 $ff
    rst $38                                       ; $4f71: $ff
    rst $38                                       ; $4f72: $ff
    nop                                           ; $4f73: $00
    ld d, l                                       ; $4f74: $55
    xor d                                         ; $4f75: $aa
    xor d                                         ; $4f76: $aa
    ld d, l                                       ; $4f77: $55
    ld d, l                                       ; $4f78: $55
    xor d                                         ; $4f79: $aa
    or h                                          ; $4f7a: $b4
    ld c, a                                       ; $4f7b: $4f
    ld c, a                                       ; $4f7c: $4f
    cp h                                          ; $4f7d: $bc
    sbc [hl]                                      ; $4f7e: $9e
    ld a, c                                       ; $4f7f: $79
    nop                                           ; $4f80: $00
    nop                                           ; $4f81: $00
    nop                                           ; $4f82: $00
    nop                                           ; $4f83: $00
    nop                                           ; $4f84: $00
    nop                                           ; $4f85: $00
    nop                                           ; $4f86: $00
    nop                                           ; $4f87: $00
    nop                                           ; $4f88: $00
    nop                                           ; $4f89: $00
    ld e, $00                                     ; $4f8a: $1e $00
    ld e, $00                                     ; $4f8c: $1e $00
    inc a                                         ; $4f8e: $3c
    nop                                           ; $4f8f: $00
    rst $38                                       ; $4f90: $ff
    rst $38                                       ; $4f91: $ff
    rst $38                                       ; $4f92: $ff
    nop                                           ; $4f93: $00
    ld d, l                                       ; $4f94: $55
    xor d                                         ; $4f95: $aa
    and b                                         ; $4f96: $a0
    ld e, a                                       ; $4f97: $5f
    ld d, a                                       ; $4f98: $57
    xor b                                         ; $4f99: $a8
    and a                                         ; $4f9a: $a7
    ld e, b                                       ; $4f9b: $58
    ld d, a                                       ; $4f9c: $57
    xor b                                         ; $4f9d: $a8
    and a                                         ; $4f9e: $a7
    ld e, b                                       ; $4f9f: $58
    nop                                           ; $4fa0: $00
    nop                                           ; $4fa1: $00
    nop                                           ; $4fa2: $00
    nop                                           ; $4fa3: $00
    nop                                           ; $4fa4: $00
    nop                                           ; $4fa5: $00
    nop                                           ; $4fa6: $00
    nop                                           ; $4fa7: $00
    nop                                           ; $4fa8: $00
    rlca                                          ; $4fa9: $07
    nop                                           ; $4faa: $00
    rlca                                          ; $4fab: $07
    nop                                           ; $4fac: $00
    rlca                                          ; $4fad: $07
    nop                                           ; $4fae: $00
    rlca                                          ; $4faf: $07
    rst $38                                       ; $4fb0: $ff
    rst $38                                       ; $4fb1: $ff
    rst $38                                       ; $4fb2: $ff
    nop                                           ; $4fb3: $00
    ld d, l                                       ; $4fb4: $55
    xor d                                         ; $4fb5: $aa
    nop                                           ; $4fb6: $00
    rst $38                                       ; $4fb7: $ff
    rst $38                                       ; $4fb8: $ff
    nop                                           ; $4fb9: $00
    rst $38                                       ; $4fba: $ff
    nop                                           ; $4fbb: $00
    rst $38                                       ; $4fbc: $ff
    rst $38                                       ; $4fbd: $ff
    rst $38                                       ; $4fbe: $ff
    rst $38                                       ; $4fbf: $ff
    nop                                           ; $4fc0: $00
    nop                                           ; $4fc1: $00
    nop                                           ; $4fc2: $00
    nop                                           ; $4fc3: $00
    nop                                           ; $4fc4: $00
    nop                                           ; $4fc5: $00
    nop                                           ; $4fc6: $00
    nop                                           ; $4fc7: $00
    nop                                           ; $4fc8: $00
    rst $38                                       ; $4fc9: $ff
    nop                                           ; $4fca: $00
    rst $38                                       ; $4fcb: $ff
    nop                                           ; $4fcc: $00
    rst $38                                       ; $4fcd: $ff
    nop                                           ; $4fce: $00
    rst $38                                       ; $4fcf: $ff
    rst $38                                       ; $4fd0: $ff
    rst $38                                       ; $4fd1: $ff
    rst $38                                       ; $4fd2: $ff
    nop                                           ; $4fd3: $00
    ld d, l                                       ; $4fd4: $55
    xor d                                         ; $4fd5: $aa
    nop                                           ; $4fd6: $00
    rst $38                                       ; $4fd7: $ff
    rst $38                                       ; $4fd8: $ff
    nop                                           ; $4fd9: $00
    rst $38                                       ; $4fda: $ff
    nop                                           ; $4fdb: $00
    rst $28                                       ; $4fdc: $ef
    ldh a, [$fff7]                                ; $4fdd: $f0 $f7
    ld hl, sp+$00                                 ; $4fdf: $f8 $00
    nop                                           ; $4fe1: $00
    nop                                           ; $4fe2: $00
    nop                                           ; $4fe3: $00
    nop                                           ; $4fe4: $00
    nop                                           ; $4fe5: $00
    nop                                           ; $4fe6: $00
    nop                                           ; $4fe7: $00
    nop                                           ; $4fe8: $00
    rst $38                                       ; $4fe9: $ff
    nop                                           ; $4fea: $00
    rst $38                                       ; $4feb: $ff
    nop                                           ; $4fec: $00
    rst $38                                       ; $4fed: $ff
    nop                                           ; $4fee: $00
    rst $38                                       ; $4fef: $ff
    rst $38                                       ; $4ff0: $ff
    rst $38                                       ; $4ff1: $ff
    rst $38                                       ; $4ff2: $ff
    nop                                           ; $4ff3: $00
    ld d, l                                       ; $4ff4: $55
    xor d                                         ; $4ff5: $aa
    nop                                           ; $4ff6: $00
    rst $38                                       ; $4ff7: $ff
    rst $38                                       ; $4ff8: $ff
    nop                                           ; $4ff9: $00
    rst $38                                       ; $4ffa: $ff
    nop                                           ; $4ffb: $00
    rst $38                                       ; $4ffc: $ff
    nop                                           ; $4ffd: $00
    rst $38                                       ; $4ffe: $ff
    nop                                           ; $4fff: $00
    nop                                           ; $5000: $00
    nop                                           ; $5001: $00
    nop                                           ; $5002: $00
    nop                                           ; $5003: $00
    nop                                           ; $5004: $00
    nop                                           ; $5005: $00
    nop                                           ; $5006: $00
    nop                                           ; $5007: $00
    nop                                           ; $5008: $00
    rst $38                                       ; $5009: $ff
    nop                                           ; $500a: $00
    rst $38                                       ; $500b: $ff
    nop                                           ; $500c: $00
    rst $38                                       ; $500d: $ff
    nop                                           ; $500e: $00
    rst $38                                       ; $500f: $ff
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
    push af                                       ; $5020: $f5
    ld a, [bc]                                    ; $5021: $0a
    xor d                                         ; $5022: $aa
    ld d, l                                       ; $5023: $55
    ld d, l                                       ; $5024: $55
    xor d                                         ; $5025: $aa
    nop                                           ; $5026: $00
    rst $38                                       ; $5027: $ff
    rst $38                                       ; $5028: $ff
    nop                                           ; $5029: $00
    rst $38                                       ; $502a: $ff
    nop                                           ; $502b: $00
    rst $38                                       ; $502c: $ff
    nop                                           ; $502d: $00
    rst $38                                       ; $502e: $ff
    nop                                           ; $502f: $00
    nop                                           ; $5030: $00
    nop                                           ; $5031: $00
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    nop                                           ; $5034: $00
    nop                                           ; $5035: $00
    nop                                           ; $5036: $00
    nop                                           ; $5037: $00
    nop                                           ; $5038: $00
    rst $38                                       ; $5039: $ff
    nop                                           ; $503a: $00
    rst $38                                       ; $503b: $ff
    nop                                           ; $503c: $00
    rst $38                                       ; $503d: $ff
    nop                                           ; $503e: $00
    rst $38                                       ; $503f: $ff
    ld d, l                                       ; $5040: $55
    xor d                                         ; $5041: $aa
    xor d                                         ; $5042: $aa
    ld d, l                                       ; $5043: $55
    ld d, l                                       ; $5044: $55
    xor d                                         ; $5045: $aa
    nop                                           ; $5046: $00
    rst $38                                       ; $5047: $ff
    rst $38                                       ; $5048: $ff
    nop                                           ; $5049: $00
    rst $38                                       ; $504a: $ff
    nop                                           ; $504b: $00
    rst $38                                       ; $504c: $ff
    nop                                           ; $504d: $00
    rst $38                                       ; $504e: $ff
    nop                                           ; $504f: $00
    nop                                           ; $5050: $00
    nop                                           ; $5051: $00
    nop                                           ; $5052: $00
    nop                                           ; $5053: $00
    nop                                           ; $5054: $00
    nop                                           ; $5055: $00
    nop                                           ; $5056: $00
    nop                                           ; $5057: $00
    nop                                           ; $5058: $00
    rst $38                                       ; $5059: $ff
    nop                                           ; $505a: $00
    rst $38                                       ; $505b: $ff
    nop                                           ; $505c: $00
    rst $38                                       ; $505d: $ff
    nop                                           ; $505e: $00
    rst $38                                       ; $505f: $ff
    ld d, l                                       ; $5060: $55
    xor d                                         ; $5061: $aa
    xor d                                         ; $5062: $aa
    ld d, l                                       ; $5063: $55
    ld d, l                                       ; $5064: $55
    xor d                                         ; $5065: $aa
    ld a, [hl+]                                   ; $5066: $2a
    push de                                       ; $5067: $d5
    ld d, l                                       ; $5068: $55
    xor d                                         ; $5069: $aa
    ld a, [hl+]                                   ; $506a: $2a
    push de                                       ; $506b: $d5
    ld d, l                                       ; $506c: $55
    xor d                                         ; $506d: $aa
    ld a, [hl+]                                   ; $506e: $2a
    push de                                       ; $506f: $d5
    nop                                           ; $5070: $00
    nop                                           ; $5071: $00
    nop                                           ; $5072: $00
    nop                                           ; $5073: $00
    nop                                           ; $5074: $00
    nop                                           ; $5075: $00
    nop                                           ; $5076: $00
    nop                                           ; $5077: $00
    nop                                           ; $5078: $00
    nop                                           ; $5079: $00
    nop                                           ; $507a: $00
    nop                                           ; $507b: $00
    nop                                           ; $507c: $00
    nop                                           ; $507d: $00
    nop                                           ; $507e: $00
    nop                                           ; $507f: $00
    dec d                                         ; $5080: $15
    ld l, d                                       ; $5081: $6a
    ld [$d595], a                                 ; $5082: $ea $95 $d5
    xor d                                         ; $5085: $aa
    ldh a, [c]                                    ; $5086: $f2
    db $fd                                        ; $5087: $fd
    push af                                       ; $5088: $f5
    or $fe                                        ; $5089: $f6 $fe
    add c                                         ; $508b: $81
    ld d, l                                       ; $508c: $55
    xor d                                         ; $508d: $aa
    xor d                                         ; $508e: $aa
    ld d, l                                       ; $508f: $55
    ld b, b                                       ; $5090: $40
    add b                                         ; $5091: $80
    ret nz                                        ; $5092: $c0

    nop                                           ; $5093: $00
    ret nz                                        ; $5094: $c0

    nop                                           ; $5095: $00
    db $fc                                        ; $5096: $fc
    nop                                           ; $5097: $00
    db $f4                                        ; $5098: $f4
    ld [$00fc], sp                                ; $5099: $08 $fc $00
    add b                                         ; $509c: $80
    nop                                           ; $509d: $00
    add b                                         ; $509e: $80
    nop                                           ; $509f: $00
    ld d, d                                       ; $50a0: $52
    xor a                                         ; $50a1: $af
    xor b                                         ; $50a2: $a8
    ld d, l                                       ; $50a3: $55
    ld d, d                                       ; $50a4: $52
    xor a                                         ; $50a5: $af
    xor a                                         ; $50a6: $af
    ld d, a                                       ; $50a7: $57
    ld e, a                                       ; $50a8: $5f
    and a                                         ; $50a9: $a7
    xor a                                         ; $50aa: $af
    ld d, [hl]                                    ; $50ab: $56
    ld e, a                                       ; $50ac: $5f
    and [hl]                                      ; $50ad: $a6
    and h                                         ; $50ae: $a4
    ld e, a                                       ; $50af: $5f
    rlca                                          ; $50b0: $07
    nop                                           ; $50b1: $00
    dec b                                         ; $50b2: $05
    ld [bc], a                                    ; $50b3: $02
    rlca                                          ; $50b4: $07
    nop                                           ; $50b5: $00
    rrca                                          ; $50b6: $0f
    nop                                           ; $50b7: $00
    rrca                                          ; $50b8: $0f
    nop                                           ; $50b9: $00
    rrca                                          ; $50ba: $0f
    nop                                           ; $50bb: $00
    ld c, $00                                     ; $50bc: $0e $00
    ld c, $00                                     ; $50be: $0e $00
    ld l, l                                       ; $50c0: $6d
    adc d                                         ; $50c1: $8a
    sbc e                                         ; $50c2: $9b
    ld a, h                                       ; $50c3: $7c
    or a                                          ; $50c4: $b7
    ld a, b                                       ; $50c5: $78
    ld a, [$f7f5]                                 ; $50c6: $fa $f5 $f7
    ld sp, hl                                     ; $50c9: $f9
    rst RST_18                                    ; $50ca: $df
    add hl, sp                                    ; $50cb: $39
    ld c, e                                       ; $50cc: $4b
    cp l                                          ; $50cd: $bd
    and e                                         ; $50ce: $a3
    ld d, l                                       ; $50cf: $55
    jr z, jr_005_50e2                             ; $50d0: $28 $10

    add hl, sp                                    ; $50d2: $39
    nop                                           ; $50d3: $00
    ei                                            ; $50d4: $fb
    nop                                           ; $50d5: $00
    ld sp, hl                                     ; $50d6: $f9
    nop                                           ; $50d7: $00
    ei                                            ; $50d8: $fb
    nop                                           ; $50d9: $00
    ld a, l                                       ; $50da: $7d
    nop                                           ; $50db: $00
    rra                                           ; $50dc: $1f
    nop                                           ; $50dd: $00
    dec d                                         ; $50de: $15
    ld [$ea75], sp                                ; $50df: $08 $75 $ea

jr_005_50e2:
    ld [$d5d5], a                                 ; $50e2: $ea $d5 $d5
    ld [$552a], a                                 ; $50e5: $ea $2a $55
    push de                                       ; $50e8: $d5
    xor d                                         ; $50e9: $aa
    xor d                                         ; $50ea: $aa
    push de                                       ; $50eb: $d5
    push de                                       ; $50ec: $d5
    xor d                                         ; $50ed: $aa
    db $eb                                        ; $50ee: $eb
    sub h                                         ; $50ef: $94
    ldh a, [rP1]                                  ; $50f0: $f0 $00
    ldh [rP1], a                                  ; $50f2: $e0 $00
    ret nz                                        ; $50f4: $c0

    nop                                           ; $50f5: $00
    ld b, b                                       ; $50f6: $40
    add b                                         ; $50f7: $80
    add b                                         ; $50f8: $80
    nop                                           ; $50f9: $00
    add b                                         ; $50fa: $80
    nop                                           ; $50fb: $00
    add b                                         ; $50fc: $80
    nop                                           ; $50fd: $00
    pop bc                                        ; $50fe: $c1
    nop                                           ; $50ff: $00
    db $fd                                        ; $5100: $fd
    ld h, h                                       ; $5101: $64
    ei                                            ; $5102: $fb
    ld h, a                                       ; $5103: $67
    rst $30                                       ; $5104: $f7
    ld l, e                                       ; $5105: $6b
    ld sp, hl                                     ; $5106: $f9
    ld h, a                                       ; $5107: $67
    rst $30                                       ; $5108: $f7
    ld l, c                                       ; $5109: $69
    db $eb                                        ; $510a: $eb
    ld [hl], l                                    ; $510b: $75
    ld d, a                                       ; $510c: $57
    jp hl                                         ; $510d: $e9


    jp hl                                         ; $510e: $e9


    rst $10                                       ; $510f: $d7
    db $fd                                        ; $5110: $fd
    ld [bc], a                                    ; $5111: $02
    rst $30                                       ; $5112: $f7
    nop                                           ; $5113: $00
    di                                            ; $5114: $f3
    nop                                           ; $5115: $00
    di                                            ; $5116: $f3
    nop                                           ; $5117: $00
    db $e3                                        ; $5118: $e3
    nop                                           ; $5119: $00
    db $e3                                        ; $511a: $e3
    nop                                           ; $511b: $00
    db $e3                                        ; $511c: $e3
    nop                                           ; $511d: $00
    db $e3                                        ; $511e: $e3
    nop                                           ; $511f: $00
    ld [hl], l                                    ; $5120: $75
    cp d                                          ; $5121: $ba
    jp z, $f555                                   ; $5122: $ca $55 $f5

jr_005_5125:
    ld [$d5ea], a                                 ; $5125: $ea $ea $d5
    sub l                                         ; $5128: $95
    ld [$95ea], a                                 ; $5129: $ea $ea $95
    push de                                       ; $512c: $d5
    xor d                                         ; $512d: $aa
    ld a, [hl+]                                   ; $512e: $2a
    push de                                       ; $512f: $d5
    ld a, b                                       ; $5130: $78
    nop                                           ; $5131: $00
    ret nc                                        ; $5132: $d0

    jr nz, jr_005_5125                            ; $5133: $20 $f0

    nop                                           ; $5135: $00
    ldh [rP1], a                                  ; $5136: $e0 $00
    ret nz                                        ; $5138: $c0

    nop                                           ; $5139: $00
    ret nz                                        ; $513a: $c0

    nop                                           ; $513b: $00
    add b                                         ; $513c: $80
    nop                                           ; $513d: $00
    add b                                         ; $513e: $80
    nop                                           ; $513f: $00
    ld d, a                                       ; $5140: $57
    xor b                                         ; $5141: $a8
    and a                                         ; $5142: $a7
    ld e, b                                       ; $5143: $58
    ld d, a                                       ; $5144: $57
    xor b                                         ; $5145: $a8
    and a                                         ; $5146: $a7
    ld e, b                                       ; $5147: $58
    ld d, a                                       ; $5148: $57
    xor b                                         ; $5149: $a8
    and a                                         ; $514a: $a7
    ld e, b                                       ; $514b: $58
    ld d, a                                       ; $514c: $57
    xor b                                         ; $514d: $a8
    and a                                         ; $514e: $a7
    ld e, b                                       ; $514f: $58
    nop                                           ; $5150: $00
    rlca                                          ; $5151: $07
    nop                                           ; $5152: $00
    rlca                                          ; $5153: $07
    nop                                           ; $5154: $00
    rlca                                          ; $5155: $07
    nop                                           ; $5156: $00
    rlca                                          ; $5157: $07
    nop                                           ; $5158: $00
    rlca                                          ; $5159: $07
    nop                                           ; $515a: $00
    rlca                                          ; $515b: $07
    nop                                           ; $515c: $00
    rlca                                          ; $515d: $07
    nop                                           ; $515e: $00
    rlca                                          ; $515f: $07
    rst $38                                       ; $5160: $ff
    rst $38                                       ; $5161: $ff
    rst $38                                       ; $5162: $ff
    ld a, b                                       ; $5163: $78
    rst $38                                       ; $5164: $ff
    ld a, b                                       ; $5165: $78
    rst $38                                       ; $5166: $ff
    ld a, a                                       ; $5167: $7f
    rst $38                                       ; $5168: $ff
    ld a, a                                       ; $5169: $7f
    rst $38                                       ; $516a: $ff
    ld a, a                                       ; $516b: $7f
    rst $38                                       ; $516c: $ff
    ld a, b                                       ; $516d: $78
    rst $38                                       ; $516e: $ff
    ld a, b                                       ; $516f: $78
    nop                                           ; $5170: $00
    rst $38                                       ; $5171: $ff
    nop                                           ; $5172: $00
    rst $38                                       ; $5173: $ff
    nop                                           ; $5174: $00
    rst $38                                       ; $5175: $ff
    nop                                           ; $5176: $00
    rst $38                                       ; $5177: $ff
    nop                                           ; $5178: $00
    rst $38                                       ; $5179: $ff
    nop                                           ; $517a: $00
    rst $38                                       ; $517b: $ff
    nop                                           ; $517c: $00
    rst $38                                       ; $517d: $ff
    nop                                           ; $517e: $00
    rst $38                                       ; $517f: $ff
    rst $38                                       ; $5180: $ff
    ld hl, sp+$7f                                 ; $5181: $f8 $7f
    ld hl, sp+$7f                                 ; $5183: $f8 $7f
    ld sp, hl                                     ; $5185: $f9
    rst $30                                       ; $5186: $f7
    ld sp, hl                                     ; $5187: $f9
    rst $28                                       ; $5188: $ef
    pop af                                        ; $5189: $f1
    rst $30                                       ; $518a: $f7
    ld hl, sp+$7f                                 ; $518b: $f8 $7f
    ld hl, sp-$01                                 ; $518d: $f8 $ff
    ld a, b                                       ; $518f: $78
    nop                                           ; $5190: $00
    rst $38                                       ; $5191: $ff
    nop                                           ; $5192: $00
    rst $38                                       ; $5193: $ff
    nop                                           ; $5194: $00
    rst $38                                       ; $5195: $ff
    nop                                           ; $5196: $00
    rst $38                                       ; $5197: $ff
    nop                                           ; $5198: $00
    rst $38                                       ; $5199: $ff
    nop                                           ; $519a: $00
    rst $38                                       ; $519b: $ff
    nop                                           ; $519c: $00
    rst $38                                       ; $519d: $ff
    nop                                           ; $519e: $00
    rst $38                                       ; $519f: $ff
    rst $38                                       ; $51a0: $ff
    nop                                           ; $51a1: $00
    rst $38                                       ; $51a2: $ff
    nop                                           ; $51a3: $00
    ei                                            ; $51a4: $fb
    rst $30                                       ; $51a5: $f7
    rst $30                                       ; $51a6: $f7
    rst $38                                       ; $51a7: $ff
    rst $38                                       ; $51a8: $ff
    rst $38                                       ; $51a9: $ff
    rst $38                                       ; $51aa: $ff
    rst $38                                       ; $51ab: $ff
    rst $38                                       ; $51ac: $ff
    ld hl, sp-$01                                 ; $51ad: $f8 $ff
    ldh a, [rP1]                                  ; $51af: $f0 $00
    rst $38                                       ; $51b1: $ff
    nop                                           ; $51b2: $00
    rst $38                                       ; $51b3: $ff
    nop                                           ; $51b4: $00
    rst $38                                       ; $51b5: $ff
    nop                                           ; $51b6: $00
    rst $38                                       ; $51b7: $ff
    nop                                           ; $51b8: $00
    rst $38                                       ; $51b9: $ff
    nop                                           ; $51ba: $00
    rst $38                                       ; $51bb: $ff
    nop                                           ; $51bc: $00
    rst $38                                       ; $51bd: $ff
    nop                                           ; $51be: $00
    rst $38                                       ; $51bf: $ff
    rst $38                                       ; $51c0: $ff
    nop                                           ; $51c1: $00
    rst $38                                       ; $51c2: $ff
    nop                                           ; $51c3: $00
    rst $38                                       ; $51c4: $ff
    nop                                           ; $51c5: $00
    rst $28                                       ; $51c6: $ef
    rra                                           ; $51c7: $1f
    rst $38                                       ; $51c8: $ff
    ccf                                           ; $51c9: $3f
    cp d                                          ; $51ca: $ba
    ld a, l                                       ; $51cb: $7d
    rst $38                                       ; $51cc: $ff
    ld a, b                                       ; $51cd: $78
    rst $38                                       ; $51ce: $ff
    ld a, b                                       ; $51cf: $78
    nop                                           ; $51d0: $00
    rst $38                                       ; $51d1: $ff
    nop                                           ; $51d2: $00
    rst $38                                       ; $51d3: $ff
    nop                                           ; $51d4: $00
    rst $38                                       ; $51d5: $ff
    nop                                           ; $51d6: $00
    rst $38                                       ; $51d7: $ff
    nop                                           ; $51d8: $00
    rst $38                                       ; $51d9: $ff
    nop                                           ; $51da: $00
    rst $38                                       ; $51db: $ff
    nop                                           ; $51dc: $00
    rst $38                                       ; $51dd: $ff
    nop                                           ; $51de: $00
    rst $38                                       ; $51df: $ff
    rst $38                                       ; $51e0: $ff
    nop                                           ; $51e1: $00
    rst $38                                       ; $51e2: $ff
    nop                                           ; $51e3: $00
    rst $38                                       ; $51e4: $ff
    ld bc, $c3bf                                  ; $51e5: $01 $bf $c3
    rst $38                                       ; $51e8: $ff
    db $e3                                        ; $51e9: $e3
    rst $28                                       ; $51ea: $ef
    di                                            ; $51eb: $f3
    db $fd                                        ; $51ec: $fd
    di                                            ; $51ed: $f3
    rst $38                                       ; $51ee: $ff
    ldh a, [rP1]                                  ; $51ef: $f0 $00
    rst $38                                       ; $51f1: $ff
    nop                                           ; $51f2: $00
    rst $38                                       ; $51f3: $ff
    nop                                           ; $51f4: $00
    rst $38                                       ; $51f5: $ff
    nop                                           ; $51f6: $00
    rst $38                                       ; $51f7: $ff
    nop                                           ; $51f8: $00
    rst $38                                       ; $51f9: $ff
    nop                                           ; $51fa: $00
    rst $38                                       ; $51fb: $ff
    nop                                           ; $51fc: $00
    rst $38                                       ; $51fd: $ff
    nop                                           ; $51fe: $00
    rst $38                                       ; $51ff: $ff
    rst $38                                       ; $5200: $ff
    nop                                           ; $5201: $00
    rst $38                                       ; $5202: $ff
    nop                                           ; $5203: $00
    rst RST_18                                    ; $5204: $df
    xor $ff                                       ; $5205: $ee $ff
    cp $ff                                        ; $5207: $fe $ff
    sbc [hl]                                      ; $5209: $9e
    rst $10                                       ; $520a: $d7
    xor $f7                                       ; $520b: $ee $f7
    ld hl, sp+$7f                                 ; $520d: $f8 $7f
    db $fc                                        ; $520f: $fc
    nop                                           ; $5210: $00
    rst $38                                       ; $5211: $ff
    nop                                           ; $5212: $00
    rst $38                                       ; $5213: $ff
    nop                                           ; $5214: $00
    rst $38                                       ; $5215: $ff
    nop                                           ; $5216: $00
    rst $38                                       ; $5217: $ff
    nop                                           ; $5218: $00
    rst $38                                       ; $5219: $ff
    nop                                           ; $521a: $00
    rst $38                                       ; $521b: $ff
    nop                                           ; $521c: $00
    rst $38                                       ; $521d: $ff
    nop                                           ; $521e: $00
    rst $38                                       ; $521f: $ff
    rst $38                                       ; $5220: $ff
    nop                                           ; $5221: $00
    rst $38                                       ; $5222: $ff
    nop                                           ; $5223: $00
    rst $38                                       ; $5224: $ff
    nop                                           ; $5225: $00
    rst $38                                       ; $5226: $ff
    nop                                           ; $5227: $00
    rst $38                                       ; $5228: $ff
    nop                                           ; $5229: $00
    rst $38                                       ; $522a: $ff
    nop                                           ; $522b: $00
    rst $38                                       ; $522c: $ff
    nop                                           ; $522d: $00
    rst $38                                       ; $522e: $ff
    nop                                           ; $522f: $00
    nop                                           ; $5230: $00
    rst $38                                       ; $5231: $ff
    nop                                           ; $5232: $00
    rst $38                                       ; $5233: $ff
    nop                                           ; $5234: $00
    rst $38                                       ; $5235: $ff
    nop                                           ; $5236: $00
    rst $38                                       ; $5237: $ff
    nop                                           ; $5238: $00
    rst $38                                       ; $5239: $ff
    nop                                           ; $523a: $00
    rst $38                                       ; $523b: $ff
    nop                                           ; $523c: $00
    rst $38                                       ; $523d: $ff
    nop                                           ; $523e: $00
    rst $38                                       ; $523f: $ff
    ld d, l                                       ; $5240: $55
    xor d                                         ; $5241: $aa
    ld a, [hl+]                                   ; $5242: $2a
    push de                                       ; $5243: $d5
    ld d, l                                       ; $5244: $55
    xor d                                         ; $5245: $aa
    ld a, [hl+]                                   ; $5246: $2a
    push de                                       ; $5247: $d5
    ld d, l                                       ; $5248: $55
    xor d                                         ; $5249: $aa
    ld a, [hl+]                                   ; $524a: $2a
    push de                                       ; $524b: $d5
    ld d, l                                       ; $524c: $55
    xor d                                         ; $524d: $aa
    ld a, [hl+]                                   ; $524e: $2a
    push de                                       ; $524f: $d5
    nop                                           ; $5250: $00
    nop                                           ; $5251: $00
    nop                                           ; $5252: $00
    nop                                           ; $5253: $00
    nop                                           ; $5254: $00
    nop                                           ; $5255: $00
    nop                                           ; $5256: $00
    nop                                           ; $5257: $00
    nop                                           ; $5258: $00
    nop                                           ; $5259: $00
    nop                                           ; $525a: $00
    nop                                           ; $525b: $00
    nop                                           ; $525c: $00
    nop                                           ; $525d: $00
    nop                                           ; $525e: $00
    nop                                           ; $525f: $00
    push de                                       ; $5260: $d5
    ld a, [hl+]                                   ; $5261: $2a
    xor d                                         ; $5262: $aa
    ld d, l                                       ; $5263: $55
    rst $38                                       ; $5264: $ff
    cp $fe                                        ; $5265: $fe $fe
    rst $38                                       ; $5267: $ff
    ld d, l                                       ; $5268: $55
    xor d                                         ; $5269: $aa
    xor d                                         ; $526a: $aa
    ld d, l                                       ; $526b: $55
    ld d, l                                       ; $526c: $55
    xor d                                         ; $526d: $aa
    xor d                                         ; $526e: $aa
    ld d, l                                       ; $526f: $55
    add b                                         ; $5270: $80
    nop                                           ; $5271: $00
    add b                                         ; $5272: $80
    nop                                           ; $5273: $00
    cp $00                                        ; $5274: $fe $00
    cp $00                                        ; $5276: $fe $00
    nop                                           ; $5278: $00
    nop                                           ; $5279: $00
    nop                                           ; $527a: $00
    nop                                           ; $527b: $00
    nop                                           ; $527c: $00
    nop                                           ; $527d: $00
    nop                                           ; $527e: $00
    nop                                           ; $527f: $00
    ld d, c                                       ; $5280: $51
    xor d                                         ; $5281: $aa
    and h                                         ; $5282: $a4
    ld e, a                                       ; $5283: $5f
    ld e, a                                       ; $5284: $5f
    xor a                                         ; $5285: $af
    xor a                                         ; $5286: $af
    ld e, a                                       ; $5287: $5f
    ld d, l                                       ; $5288: $55
    xor d                                         ; $5289: $aa
    xor d                                         ; $528a: $aa
    ld d, l                                       ; $528b: $55
    ld d, l                                       ; $528c: $55
    xor d                                         ; $528d: $aa
    xor d                                         ; $528e: $aa
    ld d, l                                       ; $528f: $55
    ld a, [bc]                                    ; $5290: $0a
    inc b                                         ; $5291: $04
    ld c, $00                                     ; $5292: $0e $00
    rrca                                          ; $5294: $0f
    nop                                           ; $5295: $00
    rrca                                          ; $5296: $0f
    nop                                           ; $5297: $00
    nop                                           ; $5298: $00
    nop                                           ; $5299: $00
    nop                                           ; $529a: $00
    nop                                           ; $529b: $00
    nop                                           ; $529c: $00
    nop                                           ; $529d: $00
    nop                                           ; $529e: $00
    nop                                           ; $529f: $00
    ld b, c                                       ; $52a0: $41
    or a                                          ; $52a1: $b7
    sbc [hl]                                      ; $52a2: $9e
    ld a, c                                       ; $52a3: $79
    push af                                       ; $52a4: $f5
    ld a, [$f5ea]                                 ; $52a5: $fa $ea $f5
    ld d, l                                       ; $52a8: $55
    xor d                                         ; $52a9: $aa
    xor d                                         ; $52aa: $aa
    ld d, l                                       ; $52ab: $55
    ld d, l                                       ; $52ac: $55
    xor d                                         ; $52ad: $aa
    xor d                                         ; $52ae: $aa
    ld d, l                                       ; $52af: $55
    dec d                                         ; $52b0: $15
    ld [$003d], sp                                ; $52b1: $08 $3d $00
    ld hl, sp+$00                                 ; $52b4: $f8 $00
    ldh a, [rP1]                                  ; $52b6: $f0 $00
    nop                                           ; $52b8: $00
    nop                                           ; $52b9: $00
    nop                                           ; $52ba: $00
    nop                                           ; $52bb: $00
    nop                                           ; $52bc: $00
    nop                                           ; $52bd: $00
    nop                                           ; $52be: $00
    nop                                           ; $52bf: $00
    sub h                                         ; $52c0: $94
    db $eb                                        ; $52c1: $eb
    jp hl                                         ; $52c2: $e9


    rst $10                                       ; $52c3: $d7
    db $e3                                        ; $52c4: $e3
    rst $38                                       ; $52c5: $ff
    cp e                                          ; $52c6: $bb
    ld a, d                                       ; $52c7: $7a
    ld d, l                                       ; $52c8: $55
    xor d                                         ; $52c9: $aa
    xor d                                         ; $52ca: $aa
    ld d, l                                       ; $52cb: $55
    ld d, l                                       ; $52cc: $55
    xor d                                         ; $52cd: $aa
    xor d                                         ; $52ce: $aa
    ld d, l                                       ; $52cf: $55
    pop bc                                        ; $52d0: $c1
    nop                                           ; $52d1: $00
    db $e3                                        ; $52d2: $e3
    nop                                           ; $52d3: $00
    rst $38                                       ; $52d4: $ff
    nop                                           ; $52d5: $00
    ei                                            ; $52d6: $fb
    inc b                                         ; $52d7: $04
    nop                                           ; $52d8: $00
    nop                                           ; $52d9: $00
    nop                                           ; $52da: $00
    nop                                           ; $52db: $00
    nop                                           ; $52dc: $00
    nop                                           ; $52dd: $00
    nop                                           ; $52de: $00
    nop                                           ; $52df: $00
    ld d, l                                       ; $52e0: $55
    ld l, e                                       ; $52e1: $6b
    jp hl                                         ; $52e2: $e9


    sub a                                         ; $52e3: $97
    ld d, [hl]                                    ; $52e4: $56
    xor d                                         ; $52e5: $aa
    xor e                                         ; $52e6: $ab
    ld d, a                                       ; $52e7: $57
    ld d, l                                       ; $52e8: $55
    xor d                                         ; $52e9: $aa
    xor d                                         ; $52ea: $aa
    ld d, l                                       ; $52eb: $55
    ld d, l                                       ; $52ec: $55
    xor d                                         ; $52ed: $aa
    xor d                                         ; $52ee: $aa
    ld d, l                                       ; $52ef: $55
    ld b, e                                       ; $52f0: $43
    add b                                         ; $52f1: $80
    jp $8200                                      ; $52f2: $c3 $00 $82


    ld bc, $0003                                  ; $52f5: $01 $03 $00
    nop                                           ; $52f8: $00
    nop                                           ; $52f9: $00
    nop                                           ; $52fa: $00
    nop                                           ; $52fb: $00
    nop                                           ; $52fc: $00
    nop                                           ; $52fd: $00
    nop                                           ; $52fe: $00
    nop                                           ; $52ff: $00
    ld d, l                                       ; $5300: $55
    xor d                                         ; $5301: $aa
    ld a, [hl+]                                   ; $5302: $2a
    push de                                       ; $5303: $d5
    push de                                       ; $5304: $d5
    ld a, [hl+]                                   ; $5305: $2a
    xor d                                         ; $5306: $aa
    ld d, l                                       ; $5307: $55
    ld d, l                                       ; $5308: $55
    xor d                                         ; $5309: $aa
    xor d                                         ; $530a: $aa
    ld d, l                                       ; $530b: $55
    ld d, l                                       ; $530c: $55
    xor d                                         ; $530d: $aa
    xor d                                         ; $530e: $aa
    ld d, l                                       ; $530f: $55
    ret nz                                        ; $5310: $c0

    nop                                           ; $5311: $00
    add b                                         ; $5312: $80
    nop                                           ; $5313: $00
    add b                                         ; $5314: $80
    nop                                           ; $5315: $00
    add b                                         ; $5316: $80
    nop                                           ; $5317: $00
    nop                                           ; $5318: $00
    nop                                           ; $5319: $00
    nop                                           ; $531a: $00
    nop                                           ; $531b: $00
    nop                                           ; $531c: $00
    nop                                           ; $531d: $00
    nop                                           ; $531e: $00
    nop                                           ; $531f: $00
    ld d, a                                       ; $5320: $57
    xor b                                         ; $5321: $a8
    and a                                         ; $5322: $a7
    ld e, b                                       ; $5323: $58
    ld d, a                                       ; $5324: $57
    xor b                                         ; $5325: $a8
    and a                                         ; $5326: $a7
    ld e, b                                       ; $5327: $58
    ld d, a                                       ; $5328: $57
    xor b                                         ; $5329: $a8
    and a                                         ; $532a: $a7
    ld e, b                                       ; $532b: $58
    ld d, b                                       ; $532c: $50
    xor a                                         ; $532d: $af
    xor d                                         ; $532e: $aa
    ld d, l                                       ; $532f: $55
    nop                                           ; $5330: $00
    rlca                                          ; $5331: $07
    nop                                           ; $5332: $00
    rlca                                          ; $5333: $07
    nop                                           ; $5334: $00
    rlca                                          ; $5335: $07
    nop                                           ; $5336: $00
    rlca                                          ; $5337: $07
    nop                                           ; $5338: $00
    rlca                                          ; $5339: $07
    nop                                           ; $533a: $00
    rlca                                          ; $533b: $07
    nop                                           ; $533c: $00
    nop                                           ; $533d: $00
    nop                                           ; $533e: $00
    nop                                           ; $533f: $00
    rst $38                                       ; $5340: $ff
    ld a, b                                       ; $5341: $78
    rst $38                                       ; $5342: $ff
    rst $38                                       ; $5343: $ff
    rst $38                                       ; $5344: $ff
    rst $38                                       ; $5345: $ff
    rst $38                                       ; $5346: $ff
    rst $38                                       ; $5347: $ff
    rst $38                                       ; $5348: $ff
    nop                                           ; $5349: $00
    rst $38                                       ; $534a: $ff
    nop                                           ; $534b: $00
    nop                                           ; $534c: $00
    rst $38                                       ; $534d: $ff
    xor d                                         ; $534e: $aa
    ld d, l                                       ; $534f: $55
    nop                                           ; $5350: $00
    rst $38                                       ; $5351: $ff
    nop                                           ; $5352: $00
    rst $38                                       ; $5353: $ff
    nop                                           ; $5354: $00
    rst $38                                       ; $5355: $ff
    nop                                           ; $5356: $00
    rst $38                                       ; $5357: $ff
    nop                                           ; $5358: $00
    rst $38                                       ; $5359: $ff
    nop                                           ; $535a: $00
    rst $38                                       ; $535b: $ff
    nop                                           ; $535c: $00
    nop                                           ; $535d: $00
    nop                                           ; $535e: $00
    nop                                           ; $535f: $00
    ld a, a                                       ; $5360: $7f
    ld hl, sp-$01                                 ; $5361: $f8 $ff
    ld sp, hl                                     ; $5363: $f9
    rst $30                                       ; $5364: $f7
    ld sp, hl                                     ; $5365: $f9
    rst $28                                       ; $5366: $ef
    pop af                                        ; $5367: $f1
    rst $38                                       ; $5368: $ff
    nop                                           ; $5369: $00
    rst $38                                       ; $536a: $ff
    nop                                           ; $536b: $00
    nop                                           ; $536c: $00
    rst $38                                       ; $536d: $ff
    xor d                                         ; $536e: $aa
    ld d, l                                       ; $536f: $55
    nop                                           ; $5370: $00
    rst $38                                       ; $5371: $ff
    nop                                           ; $5372: $00
    rst $38                                       ; $5373: $ff
    nop                                           ; $5374: $00
    rst $38                                       ; $5375: $ff
    nop                                           ; $5376: $00
    rst $38                                       ; $5377: $ff
    nop                                           ; $5378: $00
    rst $38                                       ; $5379: $ff
    nop                                           ; $537a: $00
    rst $38                                       ; $537b: $ff
    nop                                           ; $537c: $00
    nop                                           ; $537d: $00
    nop                                           ; $537e: $00
    nop                                           ; $537f: $00
    rst $38                                       ; $5380: $ff
    ldh a, [rIE]                                  ; $5381: $f0 $ff
    ld hl, sp-$01                                 ; $5383: $f8 $ff
    ld hl, sp-$01                                 ; $5385: $f8 $ff
    ld hl, sp-$01                                 ; $5387: $f8 $ff
    nop                                           ; $5389: $00
    rst $38                                       ; $538a: $ff
    nop                                           ; $538b: $00
    nop                                           ; $538c: $00
    rst $38                                       ; $538d: $ff
    xor d                                         ; $538e: $aa
    ld d, l                                       ; $538f: $55
    nop                                           ; $5390: $00
    rst $38                                       ; $5391: $ff
    nop                                           ; $5392: $00
    rst $38                                       ; $5393: $ff
    nop                                           ; $5394: $00
    rst $38                                       ; $5395: $ff
    nop                                           ; $5396: $00
    rst $38                                       ; $5397: $ff
    nop                                           ; $5398: $00
    rst $38                                       ; $5399: $ff
    nop                                           ; $539a: $00
    rst $38                                       ; $539b: $ff
    nop                                           ; $539c: $00
    nop                                           ; $539d: $00
    nop                                           ; $539e: $00
    nop                                           ; $539f: $00
    rst $38                                       ; $53a0: $ff
    ld a, b                                       ; $53a1: $78
    cp d                                          ; $53a2: $ba
    ld a, l                                       ; $53a3: $7d
    rst $38                                       ; $53a4: $ff
    ccf                                           ; $53a5: $3f
    rst $28                                       ; $53a6: $ef
    rra                                           ; $53a7: $1f
    rst $38                                       ; $53a8: $ff
    nop                                           ; $53a9: $00
    rst $38                                       ; $53aa: $ff
    nop                                           ; $53ab: $00
    nop                                           ; $53ac: $00
    rst $38                                       ; $53ad: $ff
    xor d                                         ; $53ae: $aa
    ld d, l                                       ; $53af: $55
    nop                                           ; $53b0: $00
    rst $38                                       ; $53b1: $ff
    nop                                           ; $53b2: $00
    rst $38                                       ; $53b3: $ff
    nop                                           ; $53b4: $00
    rst $38                                       ; $53b5: $ff
    nop                                           ; $53b6: $00
    rst $38                                       ; $53b7: $ff
    nop                                           ; $53b8: $00
    rst $38                                       ; $53b9: $ff
    nop                                           ; $53ba: $00
    rst $38                                       ; $53bb: $ff
    nop                                           ; $53bc: $00
    nop                                           ; $53bd: $00
    nop                                           ; $53be: $00
    nop                                           ; $53bf: $00
    rst $38                                       ; $53c0: $ff
    di                                            ; $53c1: $f3
    rst $28                                       ; $53c2: $ef
    di                                            ; $53c3: $f3
    rst $38                                       ; $53c4: $ff
    db $e3                                        ; $53c5: $e3
    cp a                                          ; $53c6: $bf
    jp $00ff                                      ; $53c7: $c3 $ff $00


    rst $38                                       ; $53ca: $ff
    nop                                           ; $53cb: $00
    nop                                           ; $53cc: $00
    rst $38                                       ; $53cd: $ff
    xor d                                         ; $53ce: $aa
    ld d, l                                       ; $53cf: $55
    nop                                           ; $53d0: $00
    rst $38                                       ; $53d1: $ff
    nop                                           ; $53d2: $00
    rst $38                                       ; $53d3: $ff
    nop                                           ; $53d4: $00
    rst $38                                       ; $53d5: $ff
    nop                                           ; $53d6: $00
    rst $38                                       ; $53d7: $ff
    nop                                           ; $53d8: $00
    rst $38                                       ; $53d9: $ff
    nop                                           ; $53da: $00
    rst $38                                       ; $53db: $ff
    nop                                           ; $53dc: $00
    nop                                           ; $53dd: $00
    nop                                           ; $53de: $00
    nop                                           ; $53df: $00
    ld e, a                                       ; $53e0: $5f
    cp [hl]                                       ; $53e1: $be
    rst $38                                       ; $53e2: $ff
    adc $ff                                       ; $53e3: $ce $ff
    cp $df                                        ; $53e5: $fe $df
    cp h                                          ; $53e7: $bc
    rst $38                                       ; $53e8: $ff
    nop                                           ; $53e9: $00
    rst $38                                       ; $53ea: $ff
    nop                                           ; $53eb: $00
    nop                                           ; $53ec: $00
    rst $38                                       ; $53ed: $ff
    xor d                                         ; $53ee: $aa
    ld d, l                                       ; $53ef: $55
    nop                                           ; $53f0: $00
    rst $38                                       ; $53f1: $ff
    nop                                           ; $53f2: $00
    rst $38                                       ; $53f3: $ff
    nop                                           ; $53f4: $00
    rst $38                                       ; $53f5: $ff
    nop                                           ; $53f6: $00
    rst $38                                       ; $53f7: $ff
    nop                                           ; $53f8: $00
    rst $38                                       ; $53f9: $ff
    nop                                           ; $53fa: $00
    rst $38                                       ; $53fb: $ff
    nop                                           ; $53fc: $00
    nop                                           ; $53fd: $00
    nop                                           ; $53fe: $00
    nop                                           ; $53ff: $00
    rst $38                                       ; $5400: $ff
    nop                                           ; $5401: $00
    rst $38                                       ; $5402: $ff
    jr c, @+$01                                   ; $5403: $38 $ff

    jr c, @+$01                                   ; $5405: $38 $ff

    jr c, @+$01                                   ; $5407: $38 $ff

    nop                                           ; $5409: $00
    rst $38                                       ; $540a: $ff
    nop                                           ; $540b: $00
    nop                                           ; $540c: $00
    rst $38                                       ; $540d: $ff
    xor d                                         ; $540e: $aa
    ld d, l                                       ; $540f: $55
    nop                                           ; $5410: $00
    rst $38                                       ; $5411: $ff
    nop                                           ; $5412: $00
    rst $38                                       ; $5413: $ff
    nop                                           ; $5414: $00
    rst $38                                       ; $5415: $ff
    nop                                           ; $5416: $00
    rst $38                                       ; $5417: $ff
    nop                                           ; $5418: $00
    rst $38                                       ; $5419: $ff
    nop                                           ; $541a: $00
    rst $38                                       ; $541b: $ff
    nop                                           ; $541c: $00
    nop                                           ; $541d: $00
    nop                                           ; $541e: $00
    nop                                           ; $541f: $00
    ld d, l                                       ; $5420: $55
    xor d                                         ; $5421: $aa
    ld a, [hl+]                                   ; $5422: $2a
    push de                                       ; $5423: $d5
    ld d, l                                       ; $5424: $55
    xor d                                         ; $5425: $aa
    ld a, [hl+]                                   ; $5426: $2a
    push de                                       ; $5427: $d5
    ld d, l                                       ; $5428: $55
    xor d                                         ; $5429: $aa
    ld a, [hl+]                                   ; $542a: $2a
    push de                                       ; $542b: $d5
    ld d, l                                       ; $542c: $55
    xor d                                         ; $542d: $aa
    xor d                                         ; $542e: $aa
    ld d, l                                       ; $542f: $55
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
    push af                                       ; $5440: $f5
    ld a, [bc]                                    ; $5441: $0a
    xor d                                         ; $5442: $aa
    ld d, l                                       ; $5443: $55
    ld d, l                                       ; $5444: $55
    xor d                                         ; $5445: $aa
    xor d                                         ; $5446: $aa
    ld d, l                                       ; $5447: $55
    ld d, l                                       ; $5448: $55
    xor d                                         ; $5449: $aa
    xor d                                         ; $544a: $aa
    ld d, l                                       ; $544b: $55
    ld d, l                                       ; $544c: $55
    xor d                                         ; $544d: $aa
    xor d                                         ; $544e: $aa
    ld d, l                                       ; $544f: $55
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
    rst $38                                       ; $5470: $ff
    rst $38                                       ; $5471: $ff
    rst $38                                       ; $5472: $ff
    rst $38                                       ; $5473: $ff
    rst $38                                       ; $5474: $ff
    rst $38                                       ; $5475: $ff
    rst $38                                       ; $5476: $ff
    rst $38                                       ; $5477: $ff
    rst $38                                       ; $5478: $ff
    rst $38                                       ; $5479: $ff
    rst $38                                       ; $547a: $ff
    rst $38                                       ; $547b: $ff
    rst $38                                       ; $547c: $ff
    rst $38                                       ; $547d: $ff
    rst $38                                       ; $547e: $ff
    rst $38                                       ; $547f: $ff
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
    nop                                           ; $5800: $00
    nop                                           ; $5801: $00
    nop                                           ; $5802: $00
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
    nop                                           ; $580e: $00
    nop                                           ; $580f: $00
    nop                                           ; $5810: $00
    nop                                           ; $5811: $00
    nop                                           ; $5812: $00
    nop                                           ; $5813: $00
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
    nop                                           ; $5820: $00
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    nop                                           ; $5823: $00
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
    nop                                           ; $582e: $00
    nop                                           ; $582f: $00
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
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
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
    nop                                           ; $584e: $00
    nop                                           ; $584f: $00
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
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
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
    nop                                           ; $586e: $00
    nop                                           ; $586f: $00
    nop                                           ; $5870: $00
    nop                                           ; $5871: $00
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    nop                                           ; $5874: $00
    nop                                           ; $5875: $00
    nop                                           ; $5876: $00
    nop                                           ; $5877: $00
    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    nop                                           ; $587a: $00
    nop                                           ; $587b: $00
    nop                                           ; $587c: $00
    nop                                           ; $587d: $00
    nop                                           ; $587e: $00
    nop                                           ; $587f: $00
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
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
    nop                                           ; $588e: $00
    nop                                           ; $588f: $00
    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    nop                                           ; $5892: $00
    nop                                           ; $5893: $00
    nop                                           ; $5894: $00
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    nop                                           ; $589a: $00
    nop                                           ; $589b: $00
    nop                                           ; $589c: $00
    nop                                           ; $589d: $00
    nop                                           ; $589e: $00
    nop                                           ; $589f: $00
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
    rla                                           ; $6030: $17
    inc d                                         ; $6031: $14
    rla                                           ; $6032: $17
    inc d                                         ; $6033: $14
    rla                                           ; $6034: $17
    inc d                                         ; $6035: $14
    rla                                           ; $6036: $17
    inc d                                         ; $6037: $14
    rla                                           ; $6038: $17
    inc d                                         ; $6039: $14
    rla                                           ; $603a: $17
    inc d                                         ; $603b: $14
    rla                                           ; $603c: $17
    inc d                                         ; $603d: $14
    rla                                           ; $603e: $17
    inc d                                         ; $603f: $14
    rla                                           ; $6040: $17
    inc d                                         ; $6041: $14
    rla                                           ; $6042: $17
    inc d                                         ; $6043: $14
    rla                                           ; $6044: $17
    inc d                                         ; $6045: $14
    rla                                           ; $6046: $17
    inc d                                         ; $6047: $14
    rla                                           ; $6048: $17
    inc d                                         ; $6049: $14
    rla                                           ; $604a: $17
    inc d                                         ; $604b: $14
    rla                                           ; $604c: $17
    inc d                                         ; $604d: $14
    rla                                           ; $604e: $17
    inc d                                         ; $604f: $14
    rla                                           ; $6050: $17
    inc d                                         ; $6051: $14
    rla                                           ; $6052: $17
    inc d                                         ; $6053: $14
    rla                                           ; $6054: $17
    inc d                                         ; $6055: $14
    rla                                           ; $6056: $17
    inc d                                         ; $6057: $14
    rla                                           ; $6058: $17
    inc d                                         ; $6059: $14
    rla                                           ; $605a: $17
    inc d                                         ; $605b: $14
    rla                                           ; $605c: $17
    inc d                                         ; $605d: $14
    rla                                           ; $605e: $17
    inc d                                         ; $605f: $14
    rla                                           ; $6060: $17
    inc d                                         ; $6061: $14
    rla                                           ; $6062: $17
    inc d                                         ; $6063: $14
    rla                                           ; $6064: $17
    inc d                                         ; $6065: $14
    rla                                           ; $6066: $17
    inc d                                         ; $6067: $14
    rla                                           ; $6068: $17
    inc d                                         ; $6069: $14
    rla                                           ; $606a: $17
    inc d                                         ; $606b: $14
    rla                                           ; $606c: $17
    inc d                                         ; $606d: $14
    rla                                           ; $606e: $17
    inc d                                         ; $606f: $14
    dec d                                         ; $6070: $15
    inc d                                         ; $6071: $14
    dec d                                         ; $6072: $15
    inc d                                         ; $6073: $14
    dec d                                         ; $6074: $15
    inc d                                         ; $6075: $14
    dec d                                         ; $6076: $15
    inc d                                         ; $6077: $14
    dec d                                         ; $6078: $15
    inc d                                         ; $6079: $14
    dec d                                         ; $607a: $15
    inc d                                         ; $607b: $14
    dec d                                         ; $607c: $15
    inc d                                         ; $607d: $14
    dec d                                         ; $607e: $15
    inc d                                         ; $607f: $14
    dec d                                         ; $6080: $15
    inc d                                         ; $6081: $14
    dec d                                         ; $6082: $15
    inc d                                         ; $6083: $14
    dec d                                         ; $6084: $15
    inc d                                         ; $6085: $14
    dec d                                         ; $6086: $15
    inc d                                         ; $6087: $14
    dec d                                         ; $6088: $15
    inc d                                         ; $6089: $14
    dec d                                         ; $608a: $15
    inc d                                         ; $608b: $14
    dec d                                         ; $608c: $15
    inc d                                         ; $608d: $14
    dec d                                         ; $608e: $15
    inc d                                         ; $608f: $14
    dec d                                         ; $6090: $15
    inc d                                         ; $6091: $14
    dec d                                         ; $6092: $15
    inc d                                         ; $6093: $14
    dec d                                         ; $6094: $15
    inc d                                         ; $6095: $14
    dec d                                         ; $6096: $15
    inc d                                         ; $6097: $14
    dec d                                         ; $6098: $15
    inc d                                         ; $6099: $14
    dec d                                         ; $609a: $15
    inc d                                         ; $609b: $14
    dec d                                         ; $609c: $15
    inc d                                         ; $609d: $14
    dec d                                         ; $609e: $15
    inc d                                         ; $609f: $14
    dec d                                         ; $60a0: $15
    inc d                                         ; $60a1: $14
    dec d                                         ; $60a2: $15
    inc d                                         ; $60a3: $14
    dec d                                         ; $60a4: $15
    inc d                                         ; $60a5: $14
    dec d                                         ; $60a6: $15
    inc d                                         ; $60a7: $14
    dec d                                         ; $60a8: $15
    inc d                                         ; $60a9: $14
    dec d                                         ; $60aa: $15
    inc d                                         ; $60ab: $14
    dec d                                         ; $60ac: $15
    inc d                                         ; $60ad: $14
    dec d                                         ; $60ae: $15
    inc d                                         ; $60af: $14
    ld [bc], a                                    ; $60b0: $02
    inc d                                         ; $60b1: $14
    inc bc                                        ; $60b2: $03
    inc d                                         ; $60b3: $14
    inc b                                         ; $60b4: $04
    db $10                                        ; $60b5: $10
    inc b                                         ; $60b6: $04
    db $10                                        ; $60b7: $10
    dec b                                         ; $60b8: $05
    db $10                                        ; $60b9: $10
    dec b                                         ; $60ba: $05
    db $10                                        ; $60bb: $10
    inc b                                         ; $60bc: $04
    db $10                                        ; $60bd: $10
    inc b                                         ; $60be: $04
    db $10                                        ; $60bf: $10
    inc b                                         ; $60c0: $04
    db $10                                        ; $60c1: $10
    inc b                                         ; $60c2: $04
    db $10                                        ; $60c3: $10
    dec b                                         ; $60c4: $05
    db $10                                        ; $60c5: $10
    dec b                                         ; $60c6: $05
    db $10                                        ; $60c7: $10
    inc b                                         ; $60c8: $04
    db $10                                        ; $60c9: $10
    inc b                                         ; $60ca: $04
    db $10                                        ; $60cb: $10
    inc b                                         ; $60cc: $04
    db $10                                        ; $60cd: $10
    inc b                                         ; $60ce: $04
    db $10                                        ; $60cf: $10
    inc b                                         ; $60d0: $04
    db $10                                        ; $60d1: $10
    inc b                                         ; $60d2: $04
    db $10                                        ; $60d3: $10
    inc b                                         ; $60d4: $04
    db $10                                        ; $60d5: $10
    inc b                                         ; $60d6: $04
    db $10                                        ; $60d7: $10
    inc b                                         ; $60d8: $04
    db $10                                        ; $60d9: $10
    inc b                                         ; $60da: $04
    db $10                                        ; $60db: $10
    inc b                                         ; $60dc: $04
    db $10                                        ; $60dd: $10
    inc b                                         ; $60de: $04
    db $10                                        ; $60df: $10
    inc b                                         ; $60e0: $04
    db $10                                        ; $60e1: $10
    inc b                                         ; $60e2: $04
    db $10                                        ; $60e3: $10
    inc b                                         ; $60e4: $04
    db $10                                        ; $60e5: $10
    dec b                                         ; $60e6: $05
    db $10                                        ; $60e7: $10
    ld d, l                                       ; $60e8: $55
    db $10                                        ; $60e9: $10
    ld d, [hl]                                    ; $60ea: $56
    db $10                                        ; $60eb: $10
    ld d, a                                       ; $60ec: $57
    inc d                                         ; $60ed: $14
    jr nc, jr_005_6104                            ; $60ee: $30 $14

    ld b, $14                                     ; $60f0: $06 $14
    rlca                                          ; $60f2: $07
    db $10                                        ; $60f3: $10
    ld [$0810], sp                                ; $60f4: $08 $10 $08
    db $10                                        ; $60f7: $10
    ld [$0810], sp                                ; $60f8: $08 $10 $08
    db $10                                        ; $60fb: $10
    ld [$0810], sp                                ; $60fc: $08 $10 $08
    db $10                                        ; $60ff: $10
    ld [$0910], sp                                ; $6100: $08 $10 $09
    db $10                                        ; $6103: $10

jr_005_6104:
    ld a, [bc]                                    ; $6104: $0a
    db $10                                        ; $6105: $10
    dec bc                                        ; $6106: $0b
    db $10                                        ; $6107: $10
    inc c                                         ; $6108: $0c
    db $10                                        ; $6109: $10
    dec c                                         ; $610a: $0d
    db $10                                        ; $610b: $10
    ld c, $10                                     ; $610c: $0e $10
    rrca                                          ; $610e: $0f
    db $10                                        ; $610f: $10
    ld e, b                                       ; $6110: $58
    db $10                                        ; $6111: $10
    ld e, c                                       ; $6112: $59
    db $10                                        ; $6113: $10
    ld e, d                                       ; $6114: $5a
    db $10                                        ; $6115: $10
    ld e, e                                       ; $6116: $5b
    db $10                                        ; $6117: $10
    ld e, h                                       ; $6118: $5c
    db $10                                        ; $6119: $10
    ld e, l                                       ; $611a: $5d
    db $10                                        ; $611b: $10
    ld e, [hl]                                    ; $611c: $5e
    db $10                                        ; $611d: $10
    ld e, a                                       ; $611e: $5f
    db $10                                        ; $611f: $10
    ld h, b                                       ; $6120: $60
    db $10                                        ; $6121: $10
    ld h, c                                       ; $6122: $61
    db $10                                        ; $6123: $10
    ld bc, $0810                                  ; $6124: $01 $10 $08
    db $10                                        ; $6127: $10
    ld [$0810], sp                                ; $6128: $08 $10 $08
    db $10                                        ; $612b: $10
    ld h, d                                       ; $612c: $62
    db $10                                        ; $612d: $10
    ld h, e                                       ; $612e: $63
    inc d                                         ; $612f: $14
    ld b, $14                                     ; $6130: $06 $14
    db $10                                        ; $6132: $10
    db $10                                        ; $6133: $10
    ld de, $1110                                  ; $6134: $11 $10 $11
    db $10                                        ; $6137: $10
    ld de, $1210                                  ; $6138: $11 $10 $12
    db $10                                        ; $613b: $10
    inc de                                        ; $613c: $13
    db $10                                        ; $613d: $10
    inc de                                        ; $613e: $13
    db $10                                        ; $613f: $10
    inc de                                        ; $6140: $13
    db $10                                        ; $6141: $10
    inc d                                         ; $6142: $14
    db $10                                        ; $6143: $10
    inc d                                         ; $6144: $14
    db $10                                        ; $6145: $10
    inc d                                         ; $6146: $14
    db $10                                        ; $6147: $10
    inc d                                         ; $6148: $14
    db $10                                        ; $6149: $10
    inc d                                         ; $614a: $14
    db $10                                        ; $614b: $10
    inc d                                         ; $614c: $14
    db $10                                        ; $614d: $10
    inc d                                         ; $614e: $14
    db $10                                        ; $614f: $10
    inc d                                         ; $6150: $14
    db $10                                        ; $6151: $10
    inc d                                         ; $6152: $14
    db $10                                        ; $6153: $10
    inc d                                         ; $6154: $14
    db $10                                        ; $6155: $10
    inc d                                         ; $6156: $14
    db $10                                        ; $6157: $10
    inc d                                         ; $6158: $14
    db $10                                        ; $6159: $10
    inc d                                         ; $615a: $14
    db $10                                        ; $615b: $10
    inc d                                         ; $615c: $14
    db $10                                        ; $615d: $10
    inc d                                         ; $615e: $14
    db $10                                        ; $615f: $10
    inc d                                         ; $6160: $14
    db $10                                        ; $6161: $10
    inc d                                         ; $6162: $14
    db $10                                        ; $6163: $10
    ld h, h                                       ; $6164: $64
    db $10                                        ; $6165: $10
    ld de, $1110                                  ; $6166: $11 $10 $11
    db $10                                        ; $6169: $10
    ld de, $6210                                  ; $616a: $11 $10 $62
    db $10                                        ; $616d: $10
    ld h, e                                       ; $616e: $63
    inc d                                         ; $616f: $14
    ld b, $14                                     ; $6170: $06 $14
    rlca                                          ; $6172: $07
    db $10                                        ; $6173: $10
    ld bc, $0110                                  ; $6174: $01 $10 $01
    db $10                                        ; $6177: $10
    ld bc, $1610                                  ; $6178: $01 $10 $16
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
    ld h, d                                       ; $61a4: $62
    ld d, b                                       ; $61a5: $50
    ld bc, $0110                                  ; $61a6: $01 $10 $01
    db $10                                        ; $61a9: $10
    ld bc, $6210                                  ; $61aa: $01 $10 $62
    db $10                                        ; $61ad: $10
    ld h, e                                       ; $61ae: $63
    inc d                                         ; $61af: $14
    ld b, $14                                     ; $61b0: $06 $14
    rlca                                          ; $61b2: $07
    db $10                                        ; $61b3: $10
    ld bc, $0110                                  ; $61b4: $01 $10 $01
    db $10                                        ; $61b7: $10
    ld bc, $1610                                  ; $61b8: $01 $10 $16
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
    ld h, d                                       ; $61e4: $62
    ld d, b                                       ; $61e5: $50
    ld bc, $0110                                  ; $61e6: $01 $10 $01
    db $10                                        ; $61e9: $10
    ld bc, $6210                                  ; $61ea: $01 $10 $62
    db $10                                        ; $61ed: $10
    ld h, e                                       ; $61ee: $63
    inc d                                         ; $61ef: $14
    ld b, $14                                     ; $61f0: $06 $14
    rlca                                          ; $61f2: $07
    db $10                                        ; $61f3: $10
    ld bc, $0110                                  ; $61f4: $01 $10 $01
    db $10                                        ; $61f7: $10
    ld bc, $1610                                  ; $61f8: $01 $10 $16
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
    ld h, d                                       ; $6224: $62
    ld d, b                                       ; $6225: $50
    ld bc, $0110                                  ; $6226: $01 $10 $01
    db $10                                        ; $6229: $10
    ld bc, $6210                                  ; $622a: $01 $10 $62
    db $10                                        ; $622d: $10
    ld h, e                                       ; $622e: $63
    inc d                                         ; $622f: $14
    ld b, $14                                     ; $6230: $06 $14
    rlca                                          ; $6232: $07
    db $10                                        ; $6233: $10
    ld bc, $0110                                  ; $6234: $01 $10 $01
    db $10                                        ; $6237: $10
    ld bc, $1610                                  ; $6238: $01 $10 $16
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
    ld h, d                                       ; $6264: $62
    ld d, b                                       ; $6265: $50
    ld bc, $0110                                  ; $6266: $01 $10 $01
    db $10                                        ; $6269: $10
    ld bc, $6210                                  ; $626a: $01 $10 $62
    db $10                                        ; $626d: $10
    ld h, e                                       ; $626e: $63
    inc d                                         ; $626f: $14
    ld b, $14                                     ; $6270: $06 $14
    jr jr_005_6284                                ; $6272: $18 $10

    ld bc, $0110                                  ; $6274: $01 $10 $01
    db $10                                        ; $6277: $10
    ld bc, $1610                                  ; $6278: $01 $10 $16
    stop                                          ; $627b: $10 $00
    inc d                                         ; $627d: $14
    nop                                           ; $627e: $00
    inc d                                         ; $627f: $14
    nop                                           ; $6280: $00
    inc d                                         ; $6281: $14
    nop                                           ; $6282: $00
    inc d                                         ; $6283: $14

jr_005_6284:
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
    ld h, d                                       ; $62a4: $62
    ld d, b                                       ; $62a5: $50
    ld bc, $0110                                  ; $62a6: $01 $10 $01
    db $10                                        ; $62a9: $10
    ld bc, $6210                                  ; $62aa: $01 $10 $62
    db $10                                        ; $62ad: $10
    ld h, e                                       ; $62ae: $63
    inc d                                         ; $62af: $14
    ld b, $14                                     ; $62b0: $06 $14
    jr jr_005_62c4                                ; $62b2: $18 $10

    ld bc, $0110                                  ; $62b4: $01 $10 $01
    db $10                                        ; $62b7: $10
    ld bc, $1610                                  ; $62b8: $01 $10 $16
    stop                                          ; $62bb: $10 $00
    inc d                                         ; $62bd: $14
    nop                                           ; $62be: $00
    inc d                                         ; $62bf: $14
    nop                                           ; $62c0: $00
    inc d                                         ; $62c1: $14
    nop                                           ; $62c2: $00
    inc d                                         ; $62c3: $14

jr_005_62c4:
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
    ld h, d                                       ; $62e4: $62
    ld d, b                                       ; $62e5: $50
    ld bc, $0110                                  ; $62e6: $01 $10 $01
    db $10                                        ; $62e9: $10
    ld bc, $6210                                  ; $62ea: $01 $10 $62
    db $10                                        ; $62ed: $10
    ld h, e                                       ; $62ee: $63
    inc d                                         ; $62ef: $14
    ld b, $14                                     ; $62f0: $06 $14
    rlca                                          ; $62f2: $07
    db $10                                        ; $62f3: $10
    add hl, de                                    ; $62f4: $19
    db $10                                        ; $62f5: $10
    ld a, [de]                                    ; $62f6: $1a
    db $10                                        ; $62f7: $10
    ld bc, $1610                                  ; $62f8: $01 $10 $16
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
    ld h, d                                       ; $6324: $62
    ld d, b                                       ; $6325: $50
    ld bc, $0110                                  ; $6326: $01 $10 $01
    db $10                                        ; $6329: $10
    ld bc, $6210                                  ; $632a: $01 $10 $62
    db $10                                        ; $632d: $10
    ld h, e                                       ; $632e: $63
    inc d                                         ; $632f: $14
    ld b, $14                                     ; $6330: $06 $14
    dec de                                        ; $6332: $1b
    db $10                                        ; $6333: $10
    inc e                                         ; $6334: $1c
    db $10                                        ; $6335: $10
    dec e                                         ; $6336: $1d
    db $10                                        ; $6337: $10
    ld e, $10                                     ; $6338: $1e $10
    rra                                           ; $633a: $1f
    stop                                          ; $633b: $10 $00
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
    ld h, d                                       ; $6364: $62
    ld d, b                                       ; $6365: $50
    ld bc, $0110                                  ; $6366: $01 $10 $01
    db $10                                        ; $6369: $10
    ld bc, $6210                                  ; $636a: $01 $10 $62
    db $10                                        ; $636d: $10
    ld h, e                                       ; $636e: $63
    inc d                                         ; $636f: $14
    ld b, $14                                     ; $6370: $06 $14
    rlca                                          ; $6372: $07
    db $10                                        ; $6373: $10
    ld bc, $0110                                  ; $6374: $01 $10 $01
    db $10                                        ; $6377: $10
    ld bc, $1610                                  ; $6378: $01 $10 $16
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
    ld h, d                                       ; $63a4: $62
    ld d, b                                       ; $63a5: $50
    ld bc, $0110                                  ; $63a6: $01 $10 $01
    db $10                                        ; $63a9: $10
    ld bc, $6210                                  ; $63aa: $01 $10 $62
    db $10                                        ; $63ad: $10
    ld h, e                                       ; $63ae: $63
    inc d                                         ; $63af: $14
    ld b, $14                                     ; $63b0: $06 $14
    rlca                                          ; $63b2: $07
    db $10                                        ; $63b3: $10
    ld bc, $0110                                  ; $63b4: $01 $10 $01
    db $10                                        ; $63b7: $10
    ld bc, $1610                                  ; $63b8: $01 $10 $16
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
    ld h, d                                       ; $63e4: $62
    ld d, b                                       ; $63e5: $50
    ld bc, $0110                                  ; $63e6: $01 $10 $01
    db $10                                        ; $63e9: $10
    ld bc, $6210                                  ; $63ea: $01 $10 $62
    db $10                                        ; $63ed: $10
    ld h, e                                       ; $63ee: $63
    inc d                                         ; $63ef: $14
    ld b, $14                                     ; $63f0: $06 $14
    rlca                                          ; $63f2: $07
    db $10                                        ; $63f3: $10
    ld bc, $0110                                  ; $63f4: $01 $10 $01
    db $10                                        ; $63f7: $10
    ld bc, $1610                                  ; $63f8: $01 $10 $16
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
    ld h, d                                       ; $6424: $62
    ld d, b                                       ; $6425: $50
    ld bc, $0110                                  ; $6426: $01 $10 $01
    db $10                                        ; $6429: $10
    ld bc, $6210                                  ; $642a: $01 $10 $62
    db $10                                        ; $642d: $10
    ld h, e                                       ; $642e: $63
    inc d                                         ; $642f: $14
    ld b, $14                                     ; $6430: $06 $14
    rlca                                          ; $6432: $07
    db $10                                        ; $6433: $10
    ld bc, $0110                                  ; $6434: $01 $10 $01
    db $10                                        ; $6437: $10
    ld bc, $1610                                  ; $6438: $01 $10 $16
    stop                                          ; $643b: $10 $00
    inc d                                         ; $643d: $14
    nop                                           ; $643e: $00
    inc d                                         ; $643f: $14
    nop                                           ; $6440: $00
    inc d                                         ; $6441: $14
    nop                                           ; $6442: $00
    inc d                                         ; $6443: $14
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
    ld h, d                                       ; $6464: $62
    ld d, b                                       ; $6465: $50
    ld bc, $0110                                  ; $6466: $01 $10 $01
    db $10                                        ; $6469: $10
    ld bc, $6210                                  ; $646a: $01 $10 $62
    db $10                                        ; $646d: $10
    ld h, e                                       ; $646e: $63
    inc d                                         ; $646f: $14
    ld b, $14                                     ; $6470: $06 $14
    rlca                                          ; $6472: $07
    db $10                                        ; $6473: $10
    ld bc, $0110                                  ; $6474: $01 $10 $01
    db $10                                        ; $6477: $10
    ld bc, $1610                                  ; $6478: $01 $10 $16
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
    ld h, d                                       ; $64a4: $62
    ld d, b                                       ; $64a5: $50
    ld bc, $0110                                  ; $64a6: $01 $10 $01
    db $10                                        ; $64a9: $10
    ld bc, $6210                                  ; $64aa: $01 $10 $62
    db $10                                        ; $64ad: $10
    ld h, e                                       ; $64ae: $63
    inc d                                         ; $64af: $14
    ld b, $14                                     ; $64b0: $06 $14
    rlca                                          ; $64b2: $07
    db $10                                        ; $64b3: $10
    ld bc, $0110                                  ; $64b4: $01 $10 $01
    db $10                                        ; $64b7: $10
    ld bc, $1610                                  ; $64b8: $01 $10 $16
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
    ld h, d                                       ; $64e4: $62
    ld d, b                                       ; $64e5: $50
    ld bc, $0110                                  ; $64e6: $01 $10 $01
    db $10                                        ; $64e9: $10
    ld bc, $6210                                  ; $64ea: $01 $10 $62
    db $10                                        ; $64ed: $10
    ld h, e                                       ; $64ee: $63
    inc d                                         ; $64ef: $14
    ld b, $14                                     ; $64f0: $06 $14
    rlca                                          ; $64f2: $07
    db $10                                        ; $64f3: $10
    ld bc, $0110                                  ; $64f4: $01 $10 $01
    db $10                                        ; $64f7: $10
    ld bc, $1610                                  ; $64f8: $01 $10 $16
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
    ld h, d                                       ; $6524: $62
    ld d, b                                       ; $6525: $50
    ld bc, $0110                                  ; $6526: $01 $10 $01
    db $10                                        ; $6529: $10
    ld bc, $6210                                  ; $652a: $01 $10 $62
    db $10                                        ; $652d: $10
    ld h, e                                       ; $652e: $63
    inc d                                         ; $652f: $14
    ld b, $14                                     ; $6530: $06 $14
    rlca                                          ; $6532: $07
    db $10                                        ; $6533: $10
    ld bc, $0110                                  ; $6534: $01 $10 $01
    db $10                                        ; $6537: $10
    ld bc, $1610                                  ; $6538: $01 $10 $16
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
    ld h, d                                       ; $6564: $62
    ld d, b                                       ; $6565: $50
    ld bc, $0110                                  ; $6566: $01 $10 $01
    db $10                                        ; $6569: $10
    ld bc, $6210                                  ; $656a: $01 $10 $62
    db $10                                        ; $656d: $10
    ld h, e                                       ; $656e: $63
    inc d                                         ; $656f: $14
    ld b, $14                                     ; $6570: $06 $14
    rlca                                          ; $6572: $07
    db $10                                        ; $6573: $10
    ld bc, $0110                                  ; $6574: $01 $10 $01
    db $10                                        ; $6577: $10
    ld bc, $1610                                  ; $6578: $01 $10 $16
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
    ld h, d                                       ; $65a4: $62
    ld d, b                                       ; $65a5: $50
    ld bc, $0110                                  ; $65a6: $01 $10 $01
    db $10                                        ; $65a9: $10
    ld bc, $6210                                  ; $65aa: $01 $10 $62
    db $10                                        ; $65ad: $10
    ld h, e                                       ; $65ae: $63
    inc d                                         ; $65af: $14
    ld b, $14                                     ; $65b0: $06 $14
    rlca                                          ; $65b2: $07
    db $10                                        ; $65b3: $10
    ld bc, $0110                                  ; $65b4: $01 $10 $01
    db $10                                        ; $65b7: $10
    ld bc, $1610                                  ; $65b8: $01 $10 $16
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
    ld h, d                                       ; $65e4: $62
    ld d, b                                       ; $65e5: $50
    ld bc, $0110                                  ; $65e6: $01 $10 $01
    db $10                                        ; $65e9: $10
    ld bc, $6510                                  ; $65ea: $01 $10 $65
    inc d                                         ; $65ed: $14
    ld h, [hl]                                    ; $65ee: $66
    inc d                                         ; $65ef: $14
    ld b, $14                                     ; $65f0: $06 $14
    rlca                                          ; $65f2: $07
    db $10                                        ; $65f3: $10
    ld bc, $0110                                  ; $65f4: $01 $10 $01
    db $10                                        ; $65f7: $10
    ld bc, $2110                                  ; $65f8: $01 $10 $21
    db $10                                        ; $65fb: $10
    ld [hl+], a                                   ; $65fc: $22
    db $10                                        ; $65fd: $10
    ld [hl+], a                                   ; $65fe: $22
    db $10                                        ; $65ff: $10
    ld [hl+], a                                   ; $6600: $22
    db $10                                        ; $6601: $10
    ld [hl+], a                                   ; $6602: $22
    db $10                                        ; $6603: $10
    ld [hl+], a                                   ; $6604: $22
    db $10                                        ; $6605: $10
    inc hl                                        ; $6606: $23
    db $10                                        ; $6607: $10
    inc h                                         ; $6608: $24
    db $10                                        ; $6609: $10
    dec h                                         ; $660a: $25
    db $10                                        ; $660b: $10
    ld h, $10                                     ; $660c: $26 $10
    daa                                           ; $660e: $27
    db $10                                        ; $660f: $10
    ld h, a                                       ; $6610: $67
    db $10                                        ; $6611: $10
    ld l, b                                       ; $6612: $68
    db $10                                        ; $6613: $10
    ld l, c                                       ; $6614: $69
    db $10                                        ; $6615: $10
    ld l, d                                       ; $6616: $6a
    db $10                                        ; $6617: $10
    ld [hl+], a                                   ; $6618: $22
    db $10                                        ; $6619: $10
    ld [hl+], a                                   ; $661a: $22
    db $10                                        ; $661b: $10
    ld [hl+], a                                   ; $661c: $22
    db $10                                        ; $661d: $10
    ld [hl+], a                                   ; $661e: $22
    db $10                                        ; $661f: $10
    ld [hl+], a                                   ; $6620: $22
    db $10                                        ; $6621: $10
    ld [hl+], a                                   ; $6622: $22
    db $10                                        ; $6623: $10
    ld h, h                                       ; $6624: $64
    sub b                                         ; $6625: $90
    ld bc, $0110                                  ; $6626: $01 $10 $01
    db $10                                        ; $6629: $10
    ld l, e                                       ; $662a: $6b
    inc d                                         ; $662b: $14
    ld l, h                                       ; $662c: $6c
    inc d                                         ; $662d: $14
    jr nc, jr_005_6644                            ; $662e: $30 $14

    jr z, jr_005_6646                             ; $6630: $28 $14

    add hl, hl                                    ; $6632: $29
    inc d                                         ; $6633: $14
    ld [hl+], a                                   ; $6634: $22
    sub b                                         ; $6635: $90
    ld [hl+], a                                   ; $6636: $22
    sub b                                         ; $6637: $90
    ld [hl+], a                                   ; $6638: $22
    sub b                                         ; $6639: $90
    ld [hl+], a                                   ; $663a: $22
    sub b                                         ; $663b: $90
    ld [hl+], a                                   ; $663c: $22
    sub b                                         ; $663d: $90
    ld [hl+], a                                   ; $663e: $22
    sub b                                         ; $663f: $90
    ld [hl+], a                                   ; $6640: $22
    sub b                                         ; $6641: $90
    ld [hl+], a                                   ; $6642: $22
    sub b                                         ; $6643: $90

jr_005_6644:
    ld a, [hl+]                                   ; $6644: $2a
    db $10                                        ; $6645: $10

jr_005_6646:
    dec hl                                        ; $6646: $2b
    db $10                                        ; $6647: $10
    inc l                                         ; $6648: $2c
    db $10                                        ; $6649: $10
    dec l                                         ; $664a: $2d
    db $10                                        ; $664b: $10
    ld l, $10                                     ; $664c: $2e $10
    cpl                                           ; $664e: $2f
    db $10                                        ; $664f: $10
    ld l, l                                       ; $6650: $6d
    db $10                                        ; $6651: $10
    ld l, [hl]                                    ; $6652: $6e
    db $10                                        ; $6653: $10
    ld l, a                                       ; $6654: $6f
    db $10                                        ; $6655: $10
    ld [hl], b                                    ; $6656: $70
    db $10                                        ; $6657: $10
    ld [hl], c                                    ; $6658: $71
    db $10                                        ; $6659: $10
    ld [hl], d                                    ; $665a: $72
    db $10                                        ; $665b: $10
    ld [hl+], a                                   ; $665c: $22
    sub b                                         ; $665d: $90
    ld [hl+], a                                   ; $665e: $22
    sub b                                         ; $665f: $90
    ld [hl+], a                                   ; $6660: $22
    sub b                                         ; $6661: $90
    ld [hl+], a                                   ; $6662: $22
    sub b                                         ; $6663: $90
    ld [hl+], a                                   ; $6664: $22
    sub b                                         ; $6665: $90
    ld [hl+], a                                   ; $6666: $22
    sub b                                         ; $6667: $90
    ld [hl], e                                    ; $6668: $73
    inc d                                         ; $6669: $14
    ld [hl], h                                    ; $666a: $74
    inc d                                         ; $666b: $14
    ld [hl], l                                    ; $666c: $75
    inc d                                         ; $666d: $14
    jr nc, jr_005_6684                            ; $666e: $30 $14

    jr nc, jr_005_6686                            ; $6670: $30 $14

    ld sp, $3214                                  ; $6672: $31 $14 $32
    inc d                                         ; $6675: $14
    ld [hl-], a                                   ; $6676: $32
    inc d                                         ; $6677: $14
    ld [hl-], a                                   ; $6678: $32
    inc d                                         ; $6679: $14
    ld [hl-], a                                   ; $667a: $32
    inc d                                         ; $667b: $14
    ld [hl-], a                                   ; $667c: $32
    inc d                                         ; $667d: $14
    ld [hl-], a                                   ; $667e: $32
    inc d                                         ; $667f: $14
    ld [hl-], a                                   ; $6680: $32
    inc d                                         ; $6681: $14
    ld [hl-], a                                   ; $6682: $32
    inc d                                         ; $6683: $14

jr_005_6684:
    inc sp                                        ; $6684: $33
    inc d                                         ; $6685: $14

jr_005_6686:
    inc [hl]                                      ; $6686: $34
    inc d                                         ; $6687: $14
    dec [hl]                                      ; $6688: $35
    inc d                                         ; $6689: $14
    ld [hl], $14                                  ; $668a: $36 $14
    scf                                           ; $668c: $37
    inc d                                         ; $668d: $14
    jr c, jr_005_66a4                             ; $668e: $38 $14

    halt                                          ; $6690: $76
    inc d                                         ; $6691: $14
    ld [hl], a                                    ; $6692: $77
    inc d                                         ; $6693: $14
    ld a, b                                       ; $6694: $78
    inc d                                         ; $6695: $14
    ld a, c                                       ; $6696: $79
    inc d                                         ; $6697: $14
    ld a, d                                       ; $6698: $7a
    inc d                                         ; $6699: $14
    ld a, e                                       ; $669a: $7b
    inc d                                         ; $669b: $14
    ld [hl-], a                                   ; $669c: $32
    inc d                                         ; $669d: $14
    ld [hl-], a                                   ; $669e: $32
    inc d                                         ; $669f: $14
    ld [hl-], a                                   ; $66a0: $32
    inc d                                         ; $66a1: $14
    ld [hl-], a                                   ; $66a2: $32
    inc d                                         ; $66a3: $14

jr_005_66a4:
    ld [hl-], a                                   ; $66a4: $32
    inc d                                         ; $66a5: $14
    ld [hl-], a                                   ; $66a6: $32
    inc d                                         ; $66a7: $14
    and c                                         ; $66a8: $a1
    inc d                                         ; $66a9: $14
    jr nc, jr_005_66c0                            ; $66aa: $30 $14

    jr nc, jr_005_66c2                            ; $66ac: $30 $14

    jr nc, jr_005_66c4                            ; $66ae: $30 $14

    jr nc, jr_005_66c6                            ; $66b0: $30 $14

    jr nc, jr_005_66c8                            ; $66b2: $30 $14

    add hl, sp                                    ; $66b4: $39
    inc d                                         ; $66b5: $14
    ld a, [hl-]                                   ; $66b6: $3a
    inc d                                         ; $66b7: $14
    dec sp                                        ; $66b8: $3b
    inc d                                         ; $66b9: $14
    inc a                                         ; $66ba: $3c
    inc d                                         ; $66bb: $14
    dec a                                         ; $66bc: $3d
    inc d                                         ; $66bd: $14
    ld a, $14                                     ; $66be: $3e $14

jr_005_66c0:
    ccf                                           ; $66c0: $3f
    inc d                                         ; $66c1: $14

jr_005_66c2:
    ld b, b                                       ; $66c2: $40
    inc d                                         ; $66c3: $14

jr_005_66c4:
    ld b, c                                       ; $66c4: $41
    inc d                                         ; $66c5: $14

jr_005_66c6:
    ld b, d                                       ; $66c6: $42
    inc d                                         ; $66c7: $14

jr_005_66c8:
    ld b, e                                       ; $66c8: $43
    inc d                                         ; $66c9: $14
    ld b, h                                       ; $66ca: $44
    inc d                                         ; $66cb: $14
    ld b, l                                       ; $66cc: $45
    inc d                                         ; $66cd: $14
    ld b, [hl]                                    ; $66ce: $46
    inc d                                         ; $66cf: $14
    add e                                         ; $66d0: $83
    inc d                                         ; $66d1: $14
    add h                                         ; $66d2: $84
    inc d                                         ; $66d3: $14
    add l                                         ; $66d4: $85
    inc d                                         ; $66d5: $14
    add [hl]                                      ; $66d6: $86
    inc d                                         ; $66d7: $14
    add a                                         ; $66d8: $87
    inc d                                         ; $66d9: $14
    adc b                                         ; $66da: $88
    inc d                                         ; $66db: $14
    jr nc, jr_005_66f2                            ; $66dc: $30 $14

    jr nc, jr_005_66f4                            ; $66de: $30 $14

    jr nc, jr_005_66f6                            ; $66e0: $30 $14

    jr nc, jr_005_66f8                            ; $66e2: $30 $14

    jr nc, jr_005_66fa                            ; $66e4: $30 $14

    jr nc, jr_005_66fc                            ; $66e6: $30 $14

    jr nc, jr_005_66fe                            ; $66e8: $30 $14

    jr nc, jr_005_6700                            ; $66ea: $30 $14

    jr nc, jr_005_6702                            ; $66ec: $30 $14

    jr nc, jr_005_6704                            ; $66ee: $30 $14

    jr nc, jr_005_6706                            ; $66f0: $30 $14

jr_005_66f2:
    jr nc, jr_005_6708                            ; $66f2: $30 $14

jr_005_66f4:
    ld b, a                                       ; $66f4: $47
    inc d                                         ; $66f5: $14

jr_005_66f6:
    ld c, b                                       ; $66f6: $48
    inc d                                         ; $66f7: $14

jr_005_66f8:
    ld c, c                                       ; $66f8: $49
    inc d                                         ; $66f9: $14

jr_005_66fa:
    ld c, d                                       ; $66fa: $4a
    inc d                                         ; $66fb: $14

jr_005_66fc:
    ld c, e                                       ; $66fc: $4b
    inc d                                         ; $66fd: $14

jr_005_66fe:
    ld c, h                                       ; $66fe: $4c
    inc d                                         ; $66ff: $14

jr_005_6700:
    ld c, l                                       ; $6700: $4d
    inc d                                         ; $6701: $14

jr_005_6702:
    ld c, [hl]                                    ; $6702: $4e
    inc d                                         ; $6703: $14

jr_005_6704:
    ld c, a                                       ; $6704: $4f
    inc d                                         ; $6705: $14

jr_005_6706:
    ld d, b                                       ; $6706: $50
    inc d                                         ; $6707: $14

jr_005_6708:
    ld d, c                                       ; $6708: $51
    inc d                                         ; $6709: $14
    ld d, d                                       ; $670a: $52
    inc d                                         ; $670b: $14
    ld d, e                                       ; $670c: $53
    inc d                                         ; $670d: $14
    ld d, h                                       ; $670e: $54
    inc d                                         ; $670f: $14
    sub d                                         ; $6710: $92
    inc d                                         ; $6711: $14
    sub e                                         ; $6712: $93
    inc d                                         ; $6713: $14
    sub h                                         ; $6714: $94
    inc d                                         ; $6715: $14
    sub l                                         ; $6716: $95
    inc d                                         ; $6717: $14
    sub [hl]                                      ; $6718: $96
    inc d                                         ; $6719: $14
    sub a                                         ; $671a: $97
    inc d                                         ; $671b: $14
    jr nc, @+$16                                  ; $671c: $30 $14

    jr nc, @+$16                                  ; $671e: $30 $14

    jr nc, @+$16                                  ; $6720: $30 $14

    jr nc, @+$16                                  ; $6722: $30 $14

    jr nc, @+$16                                  ; $6724: $30 $14

    jr nc, @+$16                                  ; $6726: $30 $14

    jr nc, @+$16                                  ; $6728: $30 $14

    jr nc, @+$16                                  ; $672a: $30 $14

    jr nc, @+$16                                  ; $672c: $30 $14

    jr nc, @+$16                                  ; $672e: $30 $14

    db $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10
    db $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10
    db $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10
    db $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10
    db $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10
    db $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10
    db $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10
    db $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10
    db $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10
    db $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10
    db $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10
    db $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10
    db $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10
    db $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10
    db $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10
    db $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10

    db $9f, $53, $47, $1e, $e4, $11, $66, $19, $f7, $5a, $52, $4a, $6b, $31, $e7, $20
    db $84, $14, $aa, $40, $12, $2c, $00, $00, $00, $00, $4f, $08, $1f, $00, $e7, $20
    db $00, $38, $47, $1e, $e4, $11, $66, $19, $00, $00

    db $c6, $19, $65, $19, $e5, $14, $84, $14, $aa, $40, $35, $3e, $bf, $3b, $f7, $5a
    db $52, $4a, $6b, $31, $e7, $20, $00, $38, $bd, $17, $b5, $12, $ad, $09, $f7, $5a
    db $52, $4a, $6b, $31, $e7, $20, $84, $14, $aa, $40, $12, $2c, $00, $00, $00, $00
    db $4f, $08, $1f, $00, $e7, $20, $00, $38, $bd, $17, $b5, $12, $ad, $09, $39, $17
    db $94, $16, $ef, $15, $29, $15, $84, $14, $aa, $40, $35, $3e, $bf, $3b, $f7, $5a
    db $52, $4a, $6b, $31, $e7, $20, $00, $00

    db $18, $21, $d1, $18, $8a, $10, $f7, $5a, $52, $4a, $6b, $31, $e7, $20, $84, $14
    db $aa, $40, $12, $2c, $00, $00, $00, $00, $4f, $08, $1f, $00, $e7, $20, $00, $00

    db $18, $21, $d1, $18, $8a, $10, $15, $21, $ef, $1c, $ca, $18, $86, $14, $63, $10
    db $aa, $40, $35, $3e, $bf, $3b, $f7, $5a, $52, $4a, $6b, $31, $e7, $20, $00, $00

    db $e7, $20, $a5, $14, $42, $08, $39, $63, $94, $52, $ad, $39, $29, $29, $c6, $1c
    db $aa, $40, $12, $2c, $00, $00, $00, $00, $4f, $08, $1f, $00, $e7, $20, $00, $00

    db $e7, $20, $a5, $14, $42, $08, $e7, $1c, $ec, $1c, $f2, $1c, $f7, $1c, $fc, $1c
    db $aa, $40, $35, $3e, $bf, $3b, $39, $63, $94, $52, $ad, $39, $29, $29, $00, $00

    db $ff, $7f, $9c, $77, $39, $6f, $f7, $5a, $52, $4a, $6b, $31, $e7, $20, $84, $14
    db $aa, $40, $12, $2c, $00, $00, $00, $00, $4f, $08, $1f, $00, $e7, $20, $00, $00

    db $ff, $7f, $9c, $77, $39, $6f, $bd, $7b, $f7, $62, $10, $46, $4a, $2d, $63, $10
    db $aa, $40, $35, $3e, $bf, $3b, $f7, $5a, $52, $4a, $6b, $31, $e7, $20, $00, $00

    db $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08
    db $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $00, $00

    db $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08
    db $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $00, $00

    db $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08
    db $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $00, $00

    db $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08
    db $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $00, $00

    db $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08
    db $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $00, $00

    db $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08
    db $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08, $42, $08

SETCHARMAP messages

HowToPlayText_State01::
    db "H⁣i⁣,⁣ ⁣K⁣i⁣d⁣s⁣!⁣!⁣", $fe, $ff

    db "I⁣t⁣'⁣s⁣ ⁣t⁣i⁣m⁣e⁣ ⁣f⁣o⁣r⁣ ⁣u⁣s⁣ ⁣t⁣o⁣ ⁣s⁣o⁣l⁣v⁣e⁣", $fe, $ff

    db "t⁣h⁣e⁣ ⁣m⁣y⁣s⁣t⁣e⁣r⁣y⁣ ⁣o⁣f⁣", $fe, $ff

    db "“⁣P⁣i⁣c⁣r⁣o⁣s⁣s⁣”⁣!⁣", $ff, $ff

HowToPlayText_State02::
    db "T⁣h⁣e⁣ ⁣m⁣y⁣s⁣t⁣e⁣r⁣y⁣ ⁣l⁣i⁣e⁣s⁣ ⁣i⁣n⁣ ⁣t⁣h⁣e⁣", $fe, $ff

    db "n⁣u⁣m⁣b⁣e⁣r⁣s⁣ ⁣o⁣n⁣ ⁣t⁣h⁣e⁣ ⁣t⁣o⁣p⁣", $ff, $ff

HowToPlayText_State04::
    db " ⁣a⁣n⁣d⁣", $fe, $ff

    db "t⁣h⁣e⁣ ⁣l⁣e⁣f⁣t⁣ ⁣s⁣i⁣d⁣e⁣", $ff, $ff

HowToPlayText_State06::
    db " ⁣o⁣f⁣ ⁣t⁣h⁣e⁣", $fe, $ff

    db "w⁣i⁣n⁣d⁣o⁣w⁣,⁣", $ff, $ff

HowToPlayText_State07::
    db "w⁣h⁣i⁣c⁣h⁣ ⁣t⁣o⁣g⁣e⁣t⁣h⁣e⁣r⁣ ⁣w⁣i⁣l⁣l⁣ ⁣h⁣e⁣l⁣p⁣", $fe, $ff

    db "y⁣o⁣u⁣ ⁣t⁣o⁣ ⁣d⁣r⁣a⁣w⁣ ⁣t⁣h⁣e⁣ ⁣s⁣e⁣c⁣r⁣e⁣t⁣", $fe, $ff

    db "p⁣i⁣c⁣t⁣u⁣r⁣e⁣.⁣", $ff, $ff

HowToPlayText_State08::
    db "I⁣f⁣ ⁣y⁣o⁣u⁣ ⁣s⁣o⁣l⁣v⁣e⁣ ⁣t⁣h⁣e⁣ ⁣p⁣u⁣z⁣z⁣l⁣e⁣", $fe, $ff

    db "c⁣o⁣r⁣r⁣e⁣c⁣t⁣l⁣y⁣,⁣", $ff, $ff

HowToPlayText_State0b::
    db " ⁣t⁣h⁣e⁣ ⁣e⁣n⁣t⁣i⁣r⁣e⁣", $fe, $ff

    db "p⁣i⁣c⁣t⁣u⁣r⁣e⁣ ⁣w⁣i⁣l⁣l⁣ ⁣b⁣e⁣ ⁣s⁣h⁣o⁣w⁣n⁣.⁣", $fe, $ff

    db "(⁣I⁣t⁣'⁣s⁣ ⁣t⁣h⁣e⁣ ⁣l⁣e⁣t⁣t⁣e⁣r⁣ ⁣“⁣N⁣”⁣.⁣)⁣", $ff, $ff

HowToPlayText_State0c::
    db "H⁣e⁣r⁣e⁣ ⁣a⁣r⁣e⁣ ⁣t⁣h⁣e⁣ ⁣r⁣u⁣l⁣e⁣s⁣ ⁣t⁣o⁣", $fe, $ff

    db "s⁣o⁣l⁣v⁣i⁣n⁣g⁣ ⁣t⁣h⁣e⁣ ⁣m⁣y⁣s⁣t⁣e⁣r⁣y⁣·⁣·⁣·⁣", $ff, $ff

HowToPlayText_State0d::
    db "T⁣h⁣e⁣ ⁣n⁣u⁣m⁣b⁣e⁣r⁣s⁣ ⁣a⁣b⁣o⁣v⁣e⁣ ⁣t⁣h⁣e⁣", $fe, $ff

    db "c⁣o⁣l⁣u⁣m⁣n⁣s⁣", $ff, $ff

HowToPlayText_State0f::
    db " ⁣t⁣e⁣l⁣l⁣ ⁣y⁣o⁣u⁣ ⁣h⁣o⁣w⁣", $fe, $ff

    db "m⁣a⁣n⁣y⁣ ⁣b⁣o⁣x⁣e⁣s⁣ ⁣y⁣o⁣u⁣ ⁣n⁣e⁣e⁣d⁣ ⁣t⁣o⁣", $fe, $ff

    db "c⁣h⁣i⁣s⁣e⁣l⁣ ⁣i⁣n⁣ ⁣t⁣h⁣e⁣ ⁣d⁣o⁣w⁣n⁣w⁣a⁣r⁣d⁣", $fe, $ff

    db "d⁣i⁣r⁣e⁣c⁣t⁣i⁣o⁣n⁣.⁣", $ff, $ff

HowToPlayText_State10::
    db "T⁣h⁣i⁣s⁣ ⁣o⁣n⁣e⁣ ⁣i⁣s⁣ ⁣a⁣ ⁣5⁣,⁣", $ff, $ff

HowToPlayText_State12::
    db " ⁣s⁣o⁣ ⁣y⁣o⁣u⁣", $fe, $ff

    db "w⁣i⁣l⁣l⁣ ⁣n⁣e⁣e⁣d⁣ ⁣t⁣o⁣ ⁣c⁣h⁣i⁣s⁣e⁣l⁣ ⁣i⁣n⁣ ⁣5⁣", $fe, $ff

    db "c⁣o⁣n⁣s⁣e⁣c⁣u⁣t⁣i⁣v⁣e⁣ ⁣b⁣o⁣x⁣e⁣s⁣.⁣", $ff, $ff

HowToPlayText_State14::
    db "T⁣h⁣e⁣ ⁣n⁣u⁣m⁣b⁣e⁣r⁣s⁣ ⁣o⁣n⁣ ⁣t⁣h⁣e⁣ ⁣l⁣e⁣f⁣t⁣", $fe, $ff

    db "o⁣f⁣ ⁣t⁣h⁣e⁣ ⁣r⁣o⁣w⁣s⁣", $ff, $ff

HowToPlayText_State16::
    db " ⁣t⁣e⁣l⁣l⁣ ⁣y⁣o⁣u⁣", $fe, $ff

    db "h⁣o⁣w⁣ ⁣m⁣a⁣n⁣y⁣ ⁣b⁣o⁣x⁣e⁣s⁣ ⁣y⁣o⁣u⁣", $fe, $ff

    db "n⁣e⁣e⁣d⁣ ⁣t⁣o⁣ ⁣c⁣h⁣i⁣s⁣e⁣l⁣ ⁣i⁣n⁣ ⁣t⁣h⁣e⁣", $fe, $ff

    db "l⁣e⁣f⁣t⁣-⁣t⁣o⁣-⁣r⁣i⁣g⁣h⁣t⁣ ⁣d⁣i⁣r⁣e⁣c⁣t⁣i⁣o⁣n⁣.⁣", $ff, $ff

HowToPlayText_State17::
    db "T⁣h⁣i⁣s⁣ ⁣o⁣n⁣e⁣ ⁣i⁣s⁣ ⁣a⁣ ⁣3⁣ ⁣a⁣n⁣d⁣ ⁣a⁣ ⁣1⁣,⁣", $ff, $ff

HowToPlayText_State19::
    db " ⁣s⁣o⁣", $fe, $ff

    db "y⁣o⁣u⁣ ⁣w⁣i⁣l⁣l⁣ ⁣n⁣e⁣e⁣d⁣ ⁣t⁣o⁣ ⁣c⁣h⁣i⁣s⁣e⁣l⁣ ⁣i⁣n⁣", $fe, $ff

    db "3⁣ ⁣c⁣o⁣n⁣s⁣e⁣c⁣u⁣t⁣i⁣v⁣e⁣ ⁣b⁣o⁣x⁣e⁣s⁣ ⁣a⁣n⁣d⁣", $fe, $ff

    db "1⁣ ⁣s⁣i⁣n⁣g⁣l⁣e⁣ ⁣b⁣o⁣x⁣,⁣ ⁣s⁣e⁣p⁣a⁣r⁣a⁣t⁣e⁣d⁣", $fe, $ff

    db "b⁣y⁣ ⁣a⁣t⁣ ⁣l⁣e⁣a⁣s⁣t⁣ ⁣1⁣ ⁣s⁣p⁣a⁣c⁣e⁣.⁣", $ff, $ff

HowToPlayText_State1b::
    db "I⁣f⁣ ⁣y⁣o⁣u⁣ ⁣d⁣o⁣ ⁣n⁣o⁣t⁣ ⁣s⁣o⁣l⁣v⁣e⁣ ⁣t⁣h⁣e⁣", $fe, $ff

    db "s⁣e⁣c⁣r⁣e⁣t⁣ ⁣p⁣i⁣c⁣t⁣u⁣r⁣e⁣ ⁣i⁣n⁣ ⁣3⁣0⁣", $fe, $ff

    db "m⁣i⁣n⁣u⁣t⁣e⁣s⁣,⁣", $ff, $ff

HowToPlayText_State1d::
    db " ⁣t⁣h⁣e⁣n⁣ ⁣y⁣o⁣u⁣r⁣ ⁣g⁣a⁣m⁣e⁣", $fe, $ff

    db "i⁣s⁣ ⁣o⁣v⁣e⁣r⁣.⁣", $ff, $ff

HowToPlayText_State1e::
    db "I⁣f⁣ ⁣y⁣o⁣u⁣ ⁣m⁣a⁣k⁣e⁣ ⁣m⁣i⁣s⁣t⁣a⁣k⁣e⁣,⁣", $fe, $ff

    db "t⁣h⁣e⁣n⁣ ⁣y⁣o⁣u⁣r⁣ ⁣r⁣e⁣m⁣a⁣i⁣n⁣i⁣n⁣g⁣ ⁣t⁣i⁣m⁣e⁣", $fe, $ff

    db "w⁣i⁣l⁣l⁣ ⁣b⁣e⁣ ⁣r⁣e⁣d⁣u⁣c⁣e⁣d⁣.⁣", $ff, $ff

HowToPlayText_State20::
    db $fe, $ff, "B⁣u⁣t⁣ ⁣t⁣r⁣y⁣ ⁣n⁣o⁣t⁣ ⁣t⁣o⁣ ⁣p⁣a⁣n⁣i⁣c⁣!⁣", $ff, $ff

HowToPlayText_State21::
    db "Y⁣o⁣u⁣ ⁣c⁣a⁣n⁣ ⁣m⁣a⁣r⁣k⁣ ⁣b⁣o⁣x⁣e⁣s⁣ ⁣t⁣h⁣a⁣t⁣", $fe, $ff

    db "y⁣o⁣u⁣ ⁣t⁣h⁣i⁣n⁣k⁣ ⁣s⁣h⁣o⁣u⁣l⁣d⁣ ⁣s⁣t⁣a⁣y⁣", $fe, $ff

    db "c⁣l⁣e⁣a⁣r⁣ ⁣w⁣i⁣t⁣h⁣ ⁣a⁣n⁣ ⁣“⁣⨯⁣”⁣.⁣", $ff, $ff

HowToPlayText_State23::
    db "T⁣o⁣ ⁣g⁣e⁣t⁣ ⁣h⁣i⁣n⁣t⁣s⁣ ⁣a⁣s⁣ ⁣y⁣o⁣u⁣ ⁣p⁣l⁣a⁣y⁣,⁣", $fe, $ff

    db "c⁣h⁣o⁣o⁣s⁣e⁣ ⁣“⁣Y⁣e⁣s⁣”⁣ ⁣o⁣n⁣ ⁣t⁣h⁣e⁣", $fe, $ff

    db "“⁣W⁣i⁣t⁣h⁣ ⁣H⁣i⁣n⁣t⁣”⁣ ⁣o⁣p⁣t⁣i⁣o⁣n⁣ ⁣a⁣t⁣ ⁣t⁣h⁣e⁣", $fe, $ff

    db "b⁣e⁣g⁣i⁣n⁣n⁣i⁣n⁣g⁣ ⁣o⁣f⁣ ⁣t⁣h⁣e⁣ ⁣g⁣a⁣m⁣e⁣.⁣", $ff, $ff

HowToPlayText_State25::
    db "W⁣h⁣e⁣n⁣ ⁣y⁣o⁣u⁣ ⁣s⁣t⁣a⁣r⁣t⁣ ⁣a⁣ ⁣n⁣e⁣w⁣", $fe, $ff

    db "s⁣e⁣c⁣r⁣e⁣t⁣ ⁣p⁣i⁣c⁣t⁣u⁣r⁣e⁣,⁣ ⁣t⁣h⁣e⁣ ⁣t⁣o⁣p⁣", $fe, $ff

    db "a⁣n⁣d⁣ ⁣l⁣e⁣f⁣t⁣ ⁣c⁣u⁣r⁣s⁣o⁣r⁣s⁣ ⁣w⁣i⁣l⁣l⁣", $fe, $ff

    db "b⁣e⁣ ⁣m⁣o⁣v⁣i⁣n⁣g⁣.⁣", $ff, $ff

HowToPlayText_State26::
    db "P⁣u⁣s⁣h⁣ ⁣t⁣h⁣e⁣ ⁣A⁣ ⁣B⁣u⁣t⁣t⁣o⁣n⁣ ⁣t⁣o⁣", $fe, $ff

    db "s⁣t⁣o⁣p⁣ ⁣t⁣h⁣e⁣ ⁣t⁣o⁣p⁣ ⁣c⁣u⁣r⁣s⁣o⁣r⁣.⁣", $ff, $ff

HowToPlayText_State27::
    db $fe, $ff, "P⁣r⁣e⁣s⁣s⁣ ⁣i⁣t⁣ ⁣a⁣g⁣a⁣i⁣n⁣ ⁣t⁣o⁣ ⁣s⁣t⁣o⁣p⁣", $fe, $ff

    db "t⁣h⁣e⁣ ⁣l⁣e⁣f⁣t⁣ ⁣c⁣u⁣r⁣s⁣o⁣r⁣.⁣", $ff, $ff

HowToPlayText_State28::
    db "T⁣h⁣e⁣n⁣ ⁣t⁣h⁣e⁣ ⁣a⁣n⁣s⁣w⁣e⁣r⁣s⁣ ⁣f⁣o⁣r⁣", $fe, $ff

    db "t⁣h⁣a⁣t⁣ ⁣c⁣o⁣m⁣b⁣i⁣n⁣a⁣t⁣i⁣o⁣n⁣ ⁣w⁣i⁣l⁣l⁣ ⁣b⁣e⁣", $fe, $ff

    db "s⁣h⁣o⁣w⁣n⁣.⁣", $ff, $ff

HowToPlayText_State29::
    db "G⁣O⁣O⁣D⁣ ⁣L⁣U⁣C⁣K⁣!⁣!⁣", $ff, $ff

    ; padding
    ds $bb4, $00
