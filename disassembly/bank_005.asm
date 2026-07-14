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
    rst RST_38                                    ; $4030: $ff
    rst RST_38                                    ; $4031: $ff
    rst RST_38                                    ; $4032: $ff
    rst RST_38                                    ; $4033: $ff
    rst RST_38                                    ; $4034: $ff
    rst RST_38                                    ; $4035: $ff
    rst RST_38                                    ; $4036: $ff
    rst RST_38                                    ; $4037: $ff
    rst RST_38                                    ; $4038: $ff
    rst RST_38                                    ; $4039: $ff
    rst RST_38                                    ; $403a: $ff
    rst RST_38                                    ; $403b: $ff
    rst RST_38                                    ; $403c: $ff
    rst RST_38                                    ; $403d: $ff
    rst RST_38                                    ; $403e: $ff
    rst RST_38                                    ; $403f: $ff
    rst RST_38                                    ; $4040: $ff
    nop                                           ; $4041: $00
    rst RST_38                                    ; $4042: $ff
    nop                                           ; $4043: $00
    rst RST_38                                    ; $4044: $ff
    nop                                           ; $4045: $00
    rst RST_38                                    ; $4046: $ff
    nop                                           ; $4047: $00
    rst RST_38                                    ; $4048: $ff
    nop                                           ; $4049: $00
    rst RST_38                                    ; $404a: $ff
    nop                                           ; $404b: $00
    rst RST_38                                    ; $404c: $ff
    nop                                           ; $404d: $00
    rst RST_38                                    ; $404e: $ff
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
    rst RST_28                                    ; $4079: $ef
    ld e, a                                       ; $407a: $5f
    rst RST_18                                    ; $407b: $df
    rst RST_38                                    ; $407c: $ff
    cp a                                          ; $407d: $bf
    rst RST_38                                    ; $407e: $ff
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
    rst RST_38                                    ; $4091: $ff
    rst RST_38                                    ; $4092: $ff
    rst RST_38                                    ; $4093: $ff
    rst RST_38                                    ; $4094: $ff
    nop                                           ; $4095: $00
    rst RST_38                                    ; $4096: $ff
    rst RST_38                                    ; $4097: $ff
    rst RST_38                                    ; $4098: $ff
    rst RST_38                                    ; $4099: $ff
    rst RST_38                                    ; $409a: $ff
    rst RST_38                                    ; $409b: $ff
    rst RST_38                                    ; $409c: $ff
    rst RST_38                                    ; $409d: $ff
    rst RST_38                                    ; $409e: $ff
    rst RST_38                                    ; $409f: $ff
    nop                                           ; $40a0: $00
    nop                                           ; $40a1: $00
    nop                                           ; $40a2: $00
    nop                                           ; $40a3: $00
    rst RST_38                                    ; $40a4: $ff
    nop                                           ; $40a5: $00
    rst RST_38                                    ; $40a6: $ff
    nop                                           ; $40a7: $00
    rst RST_38                                    ; $40a8: $ff
    nop                                           ; $40a9: $00
    rst RST_38                                    ; $40aa: $ff
    nop                                           ; $40ab: $00
    rst RST_38                                    ; $40ac: $ff
    nop                                           ; $40ad: $00
    rst RST_38                                    ; $40ae: $ff
    nop                                           ; $40af: $00
    nop                                           ; $40b0: $00
    rst RST_38                                    ; $40b1: $ff
    rst RST_38                                    ; $40b2: $ff
    rst RST_38                                    ; $40b3: $ff
    jp nc, rP1                                    ; $40b4: $d2 $00 $ff

    rst RST_38                                    ; $40b7: $ff
    rst RST_38                                    ; $40b8: $ff
    rst RST_38                                    ; $40b9: $ff
    rst RST_38                                    ; $40ba: $ff
    rst RST_38                                    ; $40bb: $ff
    rst RST_38                                    ; $40bc: $ff
    rst RST_38                                    ; $40bd: $ff
    rst RST_38                                    ; $40be: $ff
    rst RST_38                                    ; $40bf: $ff
    nop                                           ; $40c0: $00
    nop                                           ; $40c1: $00
    nop                                           ; $40c2: $00
    nop                                           ; $40c3: $00
    rst RST_38                                    ; $40c4: $ff
    nop                                           ; $40c5: $00
    rst RST_38                                    ; $40c6: $ff
    nop                                           ; $40c7: $00
    rst RST_38                                    ; $40c8: $ff
    nop                                           ; $40c9: $00
    rst RST_38                                    ; $40ca: $ff
    nop                                           ; $40cb: $00
    rst RST_38                                    ; $40cc: $ff
    nop                                           ; $40cd: $00
    rst RST_38                                    ; $40ce: $ff
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
    rst RST_38                                    ; $40f0: $ff
    ld a, a                                       ; $40f1: $7f
    rst RST_38                                    ; $40f2: $ff
    ld a, a                                       ; $40f3: $7f
    rst RST_38                                    ; $40f4: $ff
    ld a, a                                       ; $40f5: $7f
    rst RST_38                                    ; $40f6: $ff
    ld a, a                                       ; $40f7: $7f
    rst RST_38                                    ; $40f8: $ff
    ld a, a                                       ; $40f9: $7f
    rst RST_38                                    ; $40fa: $ff
    ld a, a                                       ; $40fb: $7f
    rst RST_38                                    ; $40fc: $ff
    ld a, a                                       ; $40fd: $7f
    rst RST_38                                    ; $40fe: $ff
    ld a, a                                       ; $40ff: $7f
    rst RST_38                                    ; $4100: $ff
    nop                                           ; $4101: $00
    rst RST_38                                    ; $4102: $ff
    nop                                           ; $4103: $00
    rst RST_38                                    ; $4104: $ff
    nop                                           ; $4105: $00
    rst RST_38                                    ; $4106: $ff
    nop                                           ; $4107: $00
    rst RST_38                                    ; $4108: $ff
    nop                                           ; $4109: $00
    rst RST_38                                    ; $410a: $ff
    nop                                           ; $410b: $00
    rst RST_38                                    ; $410c: $ff
    nop                                           ; $410d: $00
    rst RST_38                                    ; $410e: $ff
    nop                                           ; $410f: $00
    rst RST_38                                    ; $4110: $ff
    rst RST_38                                    ; $4111: $ff
    rst RST_38                                    ; $4112: $ff
    rst RST_38                                    ; $4113: $ff
    rst RST_38                                    ; $4114: $ff
    rst RST_38                                    ; $4115: $ff
    nop                                           ; $4116: $00
    rst RST_38                                    ; $4117: $ff
    rst RST_38                                    ; $4118: $ff
    rst RST_38                                    ; $4119: $ff
    rst RST_38                                    ; $411a: $ff
    rst RST_38                                    ; $411b: $ff
    rst RST_38                                    ; $411c: $ff
    rst RST_38                                    ; $411d: $ff
    rst RST_38                                    ; $411e: $ff
    rst RST_38                                    ; $411f: $ff
    rst RST_38                                    ; $4120: $ff
    nop                                           ; $4121: $00
    rst RST_38                                    ; $4122: $ff
    nop                                           ; $4123: $00
    rst RST_38                                    ; $4124: $ff
    nop                                           ; $4125: $00
    nop                                           ; $4126: $00
    rst RST_38                                    ; $4127: $ff
    rst RST_38                                    ; $4128: $ff
    nop                                           ; $4129: $00
    rst RST_38                                    ; $412a: $ff
    nop                                           ; $412b: $00
    rst RST_38                                    ; $412c: $ff
    nop                                           ; $412d: $00
    rst RST_38                                    ; $412e: $ff
    nop                                           ; $412f: $00
    rst RST_38                                    ; $4130: $ff
    rst RST_38                                    ; $4131: $ff
    rst RST_38                                    ; $4132: $ff
    rst RST_38                                    ; $4133: $ff
    rst RST_38                                    ; $4134: $ff
    rst RST_38                                    ; $4135: $ff
    rst RST_38                                    ; $4136: $ff
    pop af                                        ; $4137: $f1
    db $fd                                        ; $4138: $fd
    or $ff                                        ; $4139: $f6 $ff
    or $fd                                        ; $413b: $f6 $fd
    or $ff                                        ; $413d: $f6 $ff
    pop af                                        ; $413f: $f1
    rst RST_38                                    ; $4140: $ff
    nop                                           ; $4141: $00
    rst RST_38                                    ; $4142: $ff
    nop                                           ; $4143: $00
    rst RST_38                                    ; $4144: $ff
    nop                                           ; $4145: $00
    rst RST_38                                    ; $4146: $ff
    nop                                           ; $4147: $00
    rst RST_38                                    ; $4148: $ff
    nop                                           ; $4149: $00
    rst RST_38                                    ; $414a: $ff
    nop                                           ; $414b: $00
    rst RST_38                                    ; $414c: $ff
    nop                                           ; $414d: $00
    rst RST_38                                    ; $414e: $ff
    nop                                           ; $414f: $00
    rst RST_38                                    ; $4150: $ff
    rst RST_38                                    ; $4151: $ff
    rst RST_38                                    ; $4152: $ff
    rst RST_38                                    ; $4153: $ff
    rst RST_38                                    ; $4154: $ff
    rst RST_38                                    ; $4155: $ff
    db $fd                                        ; $4156: $fd
    add $d7                                       ; $4157: $c6 $d7
    cp e                                          ; $4159: $bb
    rst RST_38                                    ; $415a: $ff
    cp e                                          ; $415b: $bb
    rst RST_10                                    ; $415c: $d7
    cp e                                          ; $415d: $bb
    rst RST_38                                    ; $415e: $ff
    rst RST_00                                    ; $415f: $c7
    rst RST_38                                    ; $4160: $ff
    nop                                           ; $4161: $00
    rst RST_38                                    ; $4162: $ff
    nop                                           ; $4163: $00
    rst RST_38                                    ; $4164: $ff
    nop                                           ; $4165: $00
    rst RST_38                                    ; $4166: $ff
    nop                                           ; $4167: $00
    rst RST_38                                    ; $4168: $ff
    nop                                           ; $4169: $00
    rst RST_38                                    ; $416a: $ff
    nop                                           ; $416b: $00
    rst RST_38                                    ; $416c: $ff
    nop                                           ; $416d: $00
    rst RST_38                                    ; $416e: $ff
    nop                                           ; $416f: $00
    rst RST_38                                    ; $4170: $ff
    rst RST_38                                    ; $4171: $ff
    rst RST_38                                    ; $4172: $ff
    rst RST_38                                    ; $4173: $ff
    rst RST_38                                    ; $4174: $ff
    rst RST_38                                    ; $4175: $ff
    rst RST_18                                    ; $4176: $df
    ccf                                           ; $4177: $3f
    cp $7f                                        ; $4178: $fe $7f
    rst RST_38                                    ; $417a: $ff
    ld a, [hl]                                    ; $417b: $7e
    rst RST_38                                    ; $417c: $ff
    ld a, [hl]                                    ; $417d: $7e
    rst RST_38                                    ; $417e: $ff
    ld a, [hl]                                    ; $417f: $7e
    rst RST_38                                    ; $4180: $ff
    nop                                           ; $4181: $00
    rst RST_38                                    ; $4182: $ff
    nop                                           ; $4183: $00
    rst RST_38                                    ; $4184: $ff
    nop                                           ; $4185: $00
    rst RST_38                                    ; $4186: $ff
    nop                                           ; $4187: $00
    rst RST_38                                    ; $4188: $ff
    nop                                           ; $4189: $00
    rst RST_38                                    ; $418a: $ff
    nop                                           ; $418b: $00
    rst RST_38                                    ; $418c: $ff
    nop                                           ; $418d: $00
    rst RST_38                                    ; $418e: $ff
    nop                                           ; $418f: $00
    rst RST_38                                    ; $4190: $ff
    rst RST_38                                    ; $4191: $ff
    rst RST_38                                    ; $4192: $ff
    rst RST_38                                    ; $4193: $ff
    rst RST_38                                    ; $4194: $ff
    rst RST_38                                    ; $4195: $ff
    rst RST_38                                    ; $4196: $ff
    ld [hl], a                                    ; $4197: $77
    xor e                                         ; $4198: $ab
    ld [hl], a                                    ; $4199: $77
    rst RST_38                                    ; $419a: $ff
    xor e                                         ; $419b: $ab
    rst RST_38                                    ; $419c: $ff
    jp c, $daff                                   ; $419d: $da $ff $da

    rst RST_38                                    ; $41a0: $ff
    nop                                           ; $41a1: $00
    rst RST_38                                    ; $41a2: $ff
    nop                                           ; $41a3: $00
    rst RST_38                                    ; $41a4: $ff
    nop                                           ; $41a5: $00
    rst RST_38                                    ; $41a6: $ff
    nop                                           ; $41a7: $00
    rst RST_38                                    ; $41a8: $ff
    nop                                           ; $41a9: $00
    rst RST_38                                    ; $41aa: $ff
    nop                                           ; $41ab: $00
    rst RST_38                                    ; $41ac: $ff
    nop                                           ; $41ad: $00
    rst RST_38                                    ; $41ae: $ff
    nop                                           ; $41af: $00
    rst RST_38                                    ; $41b0: $ff
    rst RST_38                                    ; $41b1: $ff
    rst RST_38                                    ; $41b2: $ff
    rst RST_38                                    ; $41b3: $ff
    rst RST_38                                    ; $41b4: $ff
    rst RST_38                                    ; $41b5: $ff
    xor $b1                                       ; $41b6: $ee $b1
    rst RST_38                                    ; $41b8: $ff
    ld e, e                                       ; $41b9: $5b
    cp a                                          ; $41ba: $bf
    ld e, e                                       ; $41bb: $5b
    rst RST_38                                    ; $41bc: $ff
    db $eb                                        ; $41bd: $eb
    rst RST_38                                    ; $41be: $ff
    db $eb                                        ; $41bf: $eb
    rst RST_38                                    ; $41c0: $ff
    nop                                           ; $41c1: $00
    rst RST_38                                    ; $41c2: $ff
    nop                                           ; $41c3: $00
    rst RST_38                                    ; $41c4: $ff
    nop                                           ; $41c5: $00
    rst RST_38                                    ; $41c6: $ff
    nop                                           ; $41c7: $00
    rst RST_38                                    ; $41c8: $ff
    nop                                           ; $41c9: $00
    rst RST_38                                    ; $41ca: $ff
    nop                                           ; $41cb: $00
    rst RST_38                                    ; $41cc: $ff
    nop                                           ; $41cd: $00
    rst RST_38                                    ; $41ce: $ff
    nop                                           ; $41cf: $00
    rst RST_38                                    ; $41d0: $ff
    rst RST_38                                    ; $41d1: $ff
    rst RST_38                                    ; $41d2: $ff
    rst RST_38                                    ; $41d3: $ff
    rst RST_38                                    ; $41d4: $ff
    rst RST_38                                    ; $41d5: $ff
    rst RST_38                                    ; $41d6: $ff
    adc l                                         ; $41d7: $8d
    rst RST_28                                    ; $41d8: $ef
    or l                                          ; $41d9: $b5
    rst RST_38                                    ; $41da: $ff
    adc l                                         ; $41db: $8d
    rst RST_30                                    ; $41dc: $f7
    xor l                                         ; $41dd: $ad
    rst RST_38                                    ; $41de: $ff
    or l                                          ; $41df: $b5
    rst RST_38                                    ; $41e0: $ff
    nop                                           ; $41e1: $00
    rst RST_38                                    ; $41e2: $ff
    nop                                           ; $41e3: $00
    rst RST_38                                    ; $41e4: $ff
    nop                                           ; $41e5: $00
    rst RST_38                                    ; $41e6: $ff
    nop                                           ; $41e7: $00
    rst RST_38                                    ; $41e8: $ff
    nop                                           ; $41e9: $00
    rst RST_38                                    ; $41ea: $ff
    nop                                           ; $41eb: $00
    rst RST_38                                    ; $41ec: $ff
    nop                                           ; $41ed: $00
    rst RST_38                                    ; $41ee: $ff
    nop                                           ; $41ef: $00
    rst RST_38                                    ; $41f0: $ff
    rst RST_38                                    ; $41f1: $ff
    rst RST_38                                    ; $41f2: $ff
    rst RST_38                                    ; $41f3: $ff
    rst RST_38                                    ; $41f4: $ff
    rst RST_38                                    ; $41f5: $ff
    xor a                                         ; $41f6: $af
    ld [hl], a                                    ; $41f7: $77
    rst RST_18                                    ; $41f8: $df
    xor a                                         ; $41f9: $af
    rst RST_38                                    ; $41fa: $ff
    rst RST_18                                    ; $41fb: $df
    rst RST_18                                    ; $41fc: $df
    xor a                                         ; $41fd: $af
    xor a                                         ; $41fe: $af
    ld [hl], a                                    ; $41ff: $77
    rst RST_38                                    ; $4200: $ff
    nop                                           ; $4201: $00
    rst RST_38                                    ; $4202: $ff
    nop                                           ; $4203: $00
    rst RST_38                                    ; $4204: $ff
    nop                                           ; $4205: $00
    rst RST_38                                    ; $4206: $ff
    nop                                           ; $4207: $00
    rst RST_38                                    ; $4208: $ff
    nop                                           ; $4209: $00
    rst RST_38                                    ; $420a: $ff
    nop                                           ; $420b: $00
    rst RST_38                                    ; $420c: $ff
    nop                                           ; $420d: $00
    rst RST_38                                    ; $420e: $ff
    nop                                           ; $420f: $00
    ld a, a                                       ; $4210: $7f
    ld a, a                                       ; $4211: $7f
    rst RST_38                                    ; $4212: $ff
    ld a, a                                       ; $4213: $7f
    ld a, a                                       ; $4214: $7f
    ld a, a                                       ; $4215: $7f
    ld a, a                                       ; $4216: $7f
    ld a, a                                       ; $4217: $7f
    rst RST_38                                    ; $4218: $ff
    ld a, a                                       ; $4219: $7f
    ld a, a                                       ; $421a: $7f
    ld a, a                                       ; $421b: $7f
    rst RST_38                                    ; $421c: $ff
    ld a, a                                       ; $421d: $7f
    ld a, a                                       ; $421e: $7f
    ld a, a                                       ; $421f: $7f
    rst RST_38                                    ; $4220: $ff
    nop                                           ; $4221: $00
    rst RST_38                                    ; $4222: $ff
    nop                                           ; $4223: $00
    rst RST_38                                    ; $4224: $ff
    nop                                           ; $4225: $00
    rst RST_38                                    ; $4226: $ff
    nop                                           ; $4227: $00
    rst RST_38                                    ; $4228: $ff
    nop                                           ; $4229: $00
    rst RST_38                                    ; $422a: $ff
    nop                                           ; $422b: $00
    rst RST_38                                    ; $422c: $ff
    nop                                           ; $422d: $00
    rst RST_38                                    ; $422e: $ff
    nop                                           ; $422f: $00
    rst RST_38                                    ; $4230: $ff
    nop                                           ; $4231: $00
    rst RST_38                                    ; $4232: $ff
    rst RST_38                                    ; $4233: $ff
    rst RST_38                                    ; $4234: $ff
    rst RST_38                                    ; $4235: $ff
    rst RST_38                                    ; $4236: $ff
    rst RST_38                                    ; $4237: $ff
    rst RST_38                                    ; $4238: $ff
    rst RST_38                                    ; $4239: $ff
    rst RST_38                                    ; $423a: $ff
    rst RST_38                                    ; $423b: $ff
    rst RST_38                                    ; $423c: $ff
    rst RST_38                                    ; $423d: $ff
    rst RST_38                                    ; $423e: $ff
    rst RST_38                                    ; $423f: $ff
    nop                                           ; $4240: $00
    rst RST_38                                    ; $4241: $ff
    rst RST_38                                    ; $4242: $ff
    nop                                           ; $4243: $00
    rst RST_38                                    ; $4244: $ff
    nop                                           ; $4245: $00
    rst RST_38                                    ; $4246: $ff
    nop                                           ; $4247: $00
    rst RST_38                                    ; $4248: $ff
    nop                                           ; $4249: $00
    rst RST_38                                    ; $424a: $ff
    nop                                           ; $424b: $00
    rst RST_38                                    ; $424c: $ff
    nop                                           ; $424d: $00
    rst RST_38                                    ; $424e: $ff
    nop                                           ; $424f: $00
    rst RST_38                                    ; $4250: $ff
    nop                                           ; $4251: $00
    rst RST_38                                    ; $4252: $ff
    rst RST_38                                    ; $4253: $ff
    rst RST_38                                    ; $4254: $ff
    rst RST_38                                    ; $4255: $ff
    rst RST_38                                    ; $4256: $ff
    rst RST_38                                    ; $4257: $ff
    rst RST_38                                    ; $4258: $ff
    rst RST_38                                    ; $4259: $ff
    rst RST_38                                    ; $425a: $ff
    rst RST_38                                    ; $425b: $ff
    rst RST_38                                    ; $425c: $ff
    rst RST_38                                    ; $425d: $ff
    cp $fe                                        ; $425e: $fe $fe
    nop                                           ; $4260: $00
    rst RST_38                                    ; $4261: $ff
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
    cp $01                                        ; $426e: $fe $01
    rst RST_38                                    ; $4270: $ff
    nop                                           ; $4271: $00
    rst RST_38                                    ; $4272: $ff
    rst RST_38                                    ; $4273: $ff
    rst RST_38                                    ; $4274: $ff
    rst RST_38                                    ; $4275: $ff
    rst RST_38                                    ; $4276: $ff
    rst RST_38                                    ; $4277: $ff
    rst RST_38                                    ; $4278: $ff
    rst RST_38                                    ; $4279: $ff
    rst RST_38                                    ; $427a: $ff
    rst RST_38                                    ; $427b: $ff
    rst RST_38                                    ; $427c: $ff
    rst RST_38                                    ; $427d: $ff
    nop                                           ; $427e: $00
    nop                                           ; $427f: $00
    nop                                           ; $4280: $00
    rst RST_38                                    ; $4281: $ff
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
    nop                                           ; $428e: $00
    rst RST_38                                    ; $428f: $ff
    rst RST_38                                    ; $4290: $ff
    rst RST_38                                    ; $4291: $ff
    rst RST_38                                    ; $4292: $ff
    rst RST_38                                    ; $4293: $ff
    rst RST_38                                    ; $4294: $ff
    rst RST_38                                    ; $4295: $ff
    rst RST_38                                    ; $4296: $ff
    rst RST_38                                    ; $4297: $ff
    rst RST_38                                    ; $4298: $ff
    rst RST_38                                    ; $4299: $ff
    rst RST_38                                    ; $429a: $ff
    rst RST_38                                    ; $429b: $ff
    rst RST_38                                    ; $429c: $ff
    rst RST_38                                    ; $429d: $ff
    nop                                           ; $429e: $00
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
    nop                                           ; $42ab: $00
    rst RST_38                                    ; $42ac: $ff
    nop                                           ; $42ad: $00
    nop                                           ; $42ae: $00
    rst RST_38                                    ; $42af: $ff
    rst RST_38                                    ; $42b0: $ff
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
    rst RST_38                                    ; $42f5: $ff
    rst RST_38                                    ; $42f6: $ff
    rst RST_38                                    ; $42f7: $ff
    rst RST_38                                    ; $42f8: $ff
    rst RST_38                                    ; $42f9: $ff
    nop                                           ; $42fa: $00
    rst RST_38                                    ; $42fb: $ff
    nop                                           ; $42fc: $00
    rst RST_38                                    ; $42fd: $ff
    rst RST_38                                    ; $42fe: $ff
    rst RST_38                                    ; $42ff: $ff
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
    rst RST_38                                    ; $4312: $ff
    ld a, a                                       ; $4313: $7f
    ld a, a                                       ; $4314: $7f
    ld a, a                                       ; $4315: $7f
    rst RST_38                                    ; $4316: $ff
    ld a, a                                       ; $4317: $7f
    ld a, a                                       ; $4318: $7f
    ld a, a                                       ; $4319: $7f
    rst RST_38                                    ; $431a: $ff
    ld a, a                                       ; $431b: $7f
    ld a, a                                       ; $431c: $7f
    ld a, a                                       ; $431d: $7f
    ld a, a                                       ; $431e: $7f
    ld a, a                                       ; $431f: $7f
    rst RST_38                                    ; $4320: $ff
    nop                                           ; $4321: $00
    rst RST_38                                    ; $4322: $ff
    nop                                           ; $4323: $00
    rst RST_38                                    ; $4324: $ff
    nop                                           ; $4325: $00
    rst RST_38                                    ; $4326: $ff
    nop                                           ; $4327: $00
    rst RST_38                                    ; $4328: $ff
    nop                                           ; $4329: $00
    rst RST_38                                    ; $432a: $ff
    nop                                           ; $432b: $00
    rst RST_38                                    ; $432c: $ff
    nop                                           ; $432d: $00
    rst RST_38                                    ; $432e: $ff
    nop                                           ; $432f: $00
    rst RST_38                                    ; $4330: $ff
    ld hl, sp-$04                                 ; $4331: $f8 $fc
    di                                            ; $4333: $f3
    ld hl, sp-$0c                                 ; $4334: $f8 $f4
    ld sp, hl                                     ; $4336: $f9
    db $f4                                        ; $4337: $f4
    db $fc                                        ; $4338: $fc
    ei                                            ; $4339: $fb
    rst RST_38                                    ; $433a: $ff
    rst RST_38                                    ; $433b: $ff
    rst RST_38                                    ; $433c: $ff
    rst RST_38                                    ; $433d: $ff
    rst RST_38                                    ; $433e: $ff
    rst RST_38                                    ; $433f: $ff
    rst RST_38                                    ; $4340: $ff
    rlca                                          ; $4341: $07
    rst RST_38                                    ; $4342: $ff
    rrca                                          ; $4343: $0f
    rst RST_38                                    ; $4344: $ff
    inc c                                         ; $4345: $0c
    rst RST_38                                    ; $4346: $ff
    dec c                                         ; $4347: $0d
    rst RST_38                                    ; $4348: $ff
    rlca                                          ; $4349: $07
    rst RST_38                                    ; $434a: $ff
    nop                                           ; $434b: $00
    rst RST_38                                    ; $434c: $ff
    nop                                           ; $434d: $00
    rst RST_38                                    ; $434e: $ff
    nop                                           ; $434f: $00
    rst RST_38                                    ; $4350: $ff
    rst RST_38                                    ; $4351: $ff
    rst RST_38                                    ; $4352: $ff
    ld a, a                                       ; $4353: $7f
    ld a, a                                       ; $4354: $7f
    rst RST_38                                    ; $4355: $ff
    ld a, a                                       ; $4356: $7f
    rst RST_38                                    ; $4357: $ff
    rst RST_38                                    ; $4358: $ff
    rst RST_38                                    ; $4359: $ff
    rst RST_38                                    ; $435a: $ff
    rst RST_38                                    ; $435b: $ff
    rst RST_38                                    ; $435c: $ff
    rst RST_38                                    ; $435d: $ff
    rst RST_38                                    ; $435e: $ff
    rst RST_38                                    ; $435f: $ff
    rst RST_38                                    ; $4360: $ff
    nop                                           ; $4361: $00
    rst RST_38                                    ; $4362: $ff
    add b                                         ; $4363: $80
    rst RST_38                                    ; $4364: $ff
    add b                                         ; $4365: $80
    rst RST_38                                    ; $4366: $ff
    add b                                         ; $4367: $80
    rst RST_38                                    ; $4368: $ff
    nop                                           ; $4369: $00
    rst RST_38                                    ; $436a: $ff
    nop                                           ; $436b: $00
    rst RST_38                                    ; $436c: $ff
    nop                                           ; $436d: $00
    rst RST_38                                    ; $436e: $ff
    nop                                           ; $436f: $00
    rst RST_38                                    ; $4370: $ff
    ld a, a                                       ; $4371: $7f
    rst RST_38                                    ; $4372: $ff
    ld a, [hl]                                    ; $4373: $7e
    rst RST_38                                    ; $4374: $ff
    ld a, [hl]                                    ; $4375: $7e
    rst RST_38                                    ; $4376: $ff
    ld a, [hl]                                    ; $4377: $7e
    rst RST_38                                    ; $4378: $ff
    ld a, [hl]                                    ; $4379: $7e
    rst RST_38                                    ; $437a: $ff
    ld a, [hl]                                    ; $437b: $7e
    rst RST_38                                    ; $437c: $ff
    ld a, a                                       ; $437d: $7f
    rst RST_38                                    ; $437e: $ff
    ld a, a                                       ; $437f: $7f
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
    rst RST_38                                    ; $438e: $ff
    nop                                           ; $438f: $00
    rst RST_38                                    ; $4390: $ff
    rst RST_38                                    ; $4391: $ff
    cp a                                          ; $4392: $bf
    halt                                          ; $4393: $76
    db $eb                                        ; $4394: $eb
    or a                                          ; $4395: $b7
    cp a                                          ; $4396: $bf
    ld l, e                                       ; $4397: $6b
    rst RST_38                                    ; $4398: $ff
    and e                                         ; $4399: $a3
    cp a                                          ; $439a: $bf
    ld l, e                                       ; $439b: $6b
    rst RST_38                                    ; $439c: $ff
    rst RST_38                                    ; $439d: $ff
    rst RST_38                                    ; $439e: $ff
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
    rst RST_38                                    ; $43b0: $ff
    rst RST_38                                    ; $43b1: $ff
    rst RST_38                                    ; $43b2: $ff
    ld [hl+], a                                   ; $43b3: $22
    rst RST_38                                    ; $43b4: $ff
    halt                                          ; $43b5: $76
    rst RST_38                                    ; $43b6: $ff
    halt                                          ; $43b7: $76
    rst RST_38                                    ; $43b8: $ff
    halt                                          ; $43b9: $76
    rst RST_38                                    ; $43ba: $ff
    halt                                          ; $43bb: $76
    rst RST_38                                    ; $43bc: $ff
    rst RST_38                                    ; $43bd: $ff
    rst RST_38                                    ; $43be: $ff
    rst RST_38                                    ; $43bf: $ff
    rst RST_38                                    ; $43c0: $ff
    nop                                           ; $43c1: $00
    rst RST_38                                    ; $43c2: $ff
    nop                                           ; $43c3: $00
    rst RST_38                                    ; $43c4: $ff
    nop                                           ; $43c5: $00
    rst RST_38                                    ; $43c6: $ff
    nop                                           ; $43c7: $00
    rst RST_38                                    ; $43c8: $ff
    nop                                           ; $43c9: $00
    rst RST_38                                    ; $43ca: $ff
    nop                                           ; $43cb: $00
    rst RST_38                                    ; $43cc: $ff
    nop                                           ; $43cd: $00
    rst RST_38                                    ; $43ce: $ff
    nop                                           ; $43cf: $00
    rst RST_38                                    ; $43d0: $ff
    rst RST_38                                    ; $43d1: $ff
    ei                                            ; $43d2: $fb
    daa                                           ; $43d3: $27
    db $fd                                        ; $43d4: $fd
    db $eb                                        ; $43d5: $eb
    ei                                            ; $43d6: $fb
    daa                                           ; $43d7: $27
    db $fd                                        ; $43d8: $fd
    db $eb                                        ; $43d9: $eb
    rst RST_38                                    ; $43da: $ff
    dec l                                         ; $43db: $2d
    rst RST_38                                    ; $43dc: $ff
    rst RST_38                                    ; $43dd: $ff
    rst RST_38                                    ; $43de: $ff
    rst RST_38                                    ; $43df: $ff
    rst RST_38                                    ; $43e0: $ff
    nop                                           ; $43e1: $00
    rst RST_38                                    ; $43e2: $ff
    nop                                           ; $43e3: $00
    rst RST_38                                    ; $43e4: $ff
    nop                                           ; $43e5: $00
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
    rst RST_38                                    ; $4432: $ff
    rst RST_38                                    ; $4433: $ff
    rst RST_38                                    ; $4434: $ff
    rst RST_38                                    ; $4435: $ff
    rst RST_38                                    ; $4436: $ff
    rst RST_38                                    ; $4437: $ff
    rst RST_38                                    ; $4438: $ff
    rst RST_38                                    ; $4439: $ff
    rst RST_38                                    ; $443a: $ff
    rst RST_38                                    ; $443b: $ff
    rst RST_38                                    ; $443c: $ff
    rst RST_38                                    ; $443d: $ff
    rst RST_38                                    ; $443e: $ff
    rst RST_38                                    ; $443f: $ff
    cp $01                                        ; $4440: $fe $01
    rst RST_38                                    ; $4442: $ff
    nop                                           ; $4443: $00
    rst RST_38                                    ; $4444: $ff
    nop                                           ; $4445: $00
    rst RST_38                                    ; $4446: $ff
    nop                                           ; $4447: $00
    rst RST_38                                    ; $4448: $ff
    nop                                           ; $4449: $00
    rst RST_38                                    ; $444a: $ff
    nop                                           ; $444b: $00
    rst RST_38                                    ; $444c: $ff
    nop                                           ; $444d: $00
    rst RST_38                                    ; $444e: $ff
    nop                                           ; $444f: $00
    nop                                           ; $4450: $00
    rst RST_38                                    ; $4451: $ff
    rst RST_38                                    ; $4452: $ff
    rst RST_38                                    ; $4453: $ff
    rst RST_38                                    ; $4454: $ff
    rst RST_38                                    ; $4455: $ff
    rst RST_38                                    ; $4456: $ff
    rst RST_38                                    ; $4457: $ff
    rst RST_38                                    ; $4458: $ff
    rst RST_38                                    ; $4459: $ff
    rst RST_38                                    ; $445a: $ff
    rst RST_38                                    ; $445b: $ff
    rst RST_38                                    ; $445c: $ff
    rst RST_38                                    ; $445d: $ff
    rst RST_38                                    ; $445e: $ff
    rst RST_38                                    ; $445f: $ff
    rst RST_38                                    ; $4460: $ff
    nop                                           ; $4461: $00
    rst RST_38                                    ; $4462: $ff
    nop                                           ; $4463: $00
    rst RST_38                                    ; $4464: $ff
    nop                                           ; $4465: $00
    rst RST_38                                    ; $4466: $ff
    nop                                           ; $4467: $00
    rst RST_38                                    ; $4468: $ff
    nop                                           ; $4469: $00
    rst RST_38                                    ; $446a: $ff
    nop                                           ; $446b: $00
    rst RST_38                                    ; $446c: $ff
    nop                                           ; $446d: $00
    rst RST_38                                    ; $446e: $ff
    nop                                           ; $446f: $00
    nop                                           ; $4470: $00
    rst RST_38                                    ; $4471: $ff
    rst RST_38                                    ; $4472: $ff
    rst RST_38                                    ; $4473: $ff
    cp $ff                                        ; $4474: $fe $ff
    ld hl, sp-$01                                 ; $4476: $f8 $ff
    pop af                                        ; $4478: $f1
    rst RST_38                                    ; $4479: $ff
    pop af                                        ; $447a: $f1
    rst RST_38                                    ; $447b: $ff
    ld hl, sp-$01                                 ; $447c: $f8 $ff
    cp $ff                                        ; $447e: $fe $ff
    rst RST_38                                    ; $4480: $ff
    nop                                           ; $4481: $00
    rst RST_38                                    ; $4482: $ff
    nop                                           ; $4483: $00
    rst RST_38                                    ; $4484: $ff
    ld bc, $07ff                                  ; $4485: $01 $ff $07
    rst RST_38                                    ; $4488: $ff
    ld c, $ff                                     ; $4489: $0e $ff
    ld c, $ff                                     ; $448b: $0e $ff
    rlca                                          ; $448d: $07
    rst RST_38                                    ; $448e: $ff
    ld bc, rP1                                    ; $448f: $01 $00 $ff
    ret nz                                        ; $4492: $c0

    rst RST_38                                    ; $4493: $ff
    inc bc                                        ; $4494: $03
    rst RST_38                                    ; $4495: $ff
    ld a, a                                       ; $4496: $7f
    rst RST_38                                    ; $4497: $ff
    rst RST_38                                    ; $4498: $ff
    rst RST_38                                    ; $4499: $ff
    rst RST_38                                    ; $449a: $ff
    rst RST_38                                    ; $449b: $ff
    ld a, a                                       ; $449c: $7f
    rst RST_38                                    ; $449d: $ff
    rrca                                          ; $449e: $0f
    rst RST_38                                    ; $449f: $ff
    rst RST_38                                    ; $44a0: $ff
    inc bc                                        ; $44a1: $03
    rst RST_38                                    ; $44a2: $ff
    ccf                                           ; $44a3: $3f
    rst RST_38                                    ; $44a4: $ff
    db $fc                                        ; $44a5: $fc
    rst RST_38                                    ; $44a6: $ff
    add b                                         ; $44a7: $80
    rst RST_38                                    ; $44a8: $ff
    nop                                           ; $44a9: $00
    rst RST_38                                    ; $44aa: $ff
    nop                                           ; $44ab: $00
    rst RST_38                                    ; $44ac: $ff
    add b                                         ; $44ad: $80
    rst RST_38                                    ; $44ae: $ff
    ldh a, [rP1]                                  ; $44af: $f0 $00
    rst RST_38                                    ; $44b1: $ff
    inc bc                                        ; $44b2: $03
    rst RST_38                                    ; $44b3: $ff
    pop af                                        ; $44b4: $f1
    rst RST_38                                    ; $44b5: $ff
    ld sp, hl                                     ; $44b6: $f9
    rst RST_38                                    ; $44b7: $ff
    pop bc                                        ; $44b8: $c1
    rst RST_38                                    ; $44b9: $ff
    call nz, $f9ff                                ; $44ba: $c4 $ff $f9
    rst RST_38                                    ; $44bd: $ff
    di                                            ; $44be: $f3
    rst RST_38                                    ; $44bf: $ff
    rst RST_38                                    ; $44c0: $ff
    ldh a, [rIE]                                  ; $44c1: $f0 $ff
    db $fc                                        ; $44c3: $fc
    rst RST_38                                    ; $44c4: $ff
    ld c, $ff                                     ; $44c5: $0e $ff
    ld b, $ff                                     ; $44c7: $06 $ff
    ld a, $ff                                     ; $44c9: $3e $ff
    dec sp                                        ; $44cb: $3b
    rst RST_38                                    ; $44cc: $ff
    ld b, $ff                                     ; $44cd: $06 $ff
    inc c                                         ; $44cf: $0c
    nop                                           ; $44d0: $00
    rst RST_38                                    ; $44d1: $ff
    rst RST_38                                    ; $44d2: $ff
    rst RST_38                                    ; $44d3: $ff
    rst RST_38                                    ; $44d4: $ff
    rst RST_38                                    ; $44d5: $ff
    rst RST_38                                    ; $44d6: $ff
    rst RST_38                                    ; $44d7: $ff
    rst RST_38                                    ; $44d8: $ff
    rst RST_38                                    ; $44d9: $ff
    db $fd                                        ; $44da: $fd
    rst RST_38                                    ; $44db: $ff
    ld sp, hl                                     ; $44dc: $f9
    rst RST_38                                    ; $44dd: $ff
    db $e3                                        ; $44de: $e3
    rst RST_38                                    ; $44df: $ff
    rst RST_38                                    ; $44e0: $ff
    nop                                           ; $44e1: $00
    rst RST_38                                    ; $44e2: $ff
    nop                                           ; $44e3: $00
    rst RST_38                                    ; $44e4: $ff
    nop                                           ; $44e5: $00
    rst RST_38                                    ; $44e6: $ff
    nop                                           ; $44e7: $00
    rst RST_38                                    ; $44e8: $ff
    nop                                           ; $44e9: $00
    rst RST_38                                    ; $44ea: $ff
    ld [bc], a                                    ; $44eb: $02
    rst RST_38                                    ; $44ec: $ff
    ld b, $ff                                     ; $44ed: $06 $ff
    inc e                                         ; $44ef: $1c
    nop                                           ; $44f0: $00
    rst RST_38                                    ; $44f1: $ff
    rst RST_38                                    ; $44f2: $ff
    rst RST_38                                    ; $44f3: $ff
    rst RST_38                                    ; $44f4: $ff
    rst RST_38                                    ; $44f5: $ff
    rst RST_38                                    ; $44f6: $ff
    rst RST_38                                    ; $44f7: $ff
    rst RST_38                                    ; $44f8: $ff
    rst RST_38                                    ; $44f9: $ff
    ld hl, sp-$01                                 ; $44fa: $f8 $ff
    pop af                                        ; $44fc: $f1
    rst RST_38                                    ; $44fd: $ff
    jp rIE                                        ; $44fe: $c3 $ff $ff


    nop                                           ; $4501: $00
    rst RST_38                                    ; $4502: $ff
    nop                                           ; $4503: $00
    rst RST_38                                    ; $4504: $ff
    nop                                           ; $4505: $00
    rst RST_38                                    ; $4506: $ff
    nop                                           ; $4507: $00
    rst RST_38                                    ; $4508: $ff
    nop                                           ; $4509: $00
    rst RST_38                                    ; $450a: $ff
    rlca                                          ; $450b: $07
    rst RST_38                                    ; $450c: $ff
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
    rst RST_38                                    ; $4530: $ff
    ld a, a                                       ; $4531: $7f
    rst RST_38                                    ; $4532: $ff
    ld a, a                                       ; $4533: $7f
    cp a                                          ; $4534: $bf
    rst RST_38                                    ; $4535: $ff
    cp a                                          ; $4536: $bf
    rst RST_38                                    ; $4537: $ff
    ld e, a                                       ; $4538: $5f
    rst RST_38                                    ; $4539: $ff
    xor a                                         ; $453a: $af
    ld a, a                                       ; $453b: $7f
    ld d, e                                       ; $453c: $53
    cp a                                          ; $453d: $bf
    xor h                                         ; $453e: $ac
    ld e, a                                       ; $453f: $5f
    rst RST_38                                    ; $4540: $ff
    rst RST_38                                    ; $4541: $ff
    rst RST_38                                    ; $4542: $ff
    rst RST_38                                    ; $4543: $ff
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
    rst RST_38                                    ; $4550: $ff
    rst RST_38                                    ; $4551: $ff
    rst RST_38                                    ; $4552: $ff
    rst RST_38                                    ; $4553: $ff
    rst RST_38                                    ; $4554: $ff
    rst RST_38                                    ; $4555: $ff
    rst RST_38                                    ; $4556: $ff
    rst RST_38                                    ; $4557: $ff
    rst RST_38                                    ; $4558: $ff
    rst RST_38                                    ; $4559: $ff
    rst RST_20                                    ; $455a: $e7
    rst RST_38                                    ; $455b: $ff
    ldh [rIE], a                                  ; $455c: $e0 $ff
    nop                                           ; $455e: $00
    rst RST_38                                    ; $455f: $ff
    rst RST_38                                    ; $4560: $ff
    nop                                           ; $4561: $00
    rst RST_38                                    ; $4562: $ff
    nop                                           ; $4563: $00
    rst RST_38                                    ; $4564: $ff
    nop                                           ; $4565: $00
    rst RST_38                                    ; $4566: $ff
    nop                                           ; $4567: $00
    rst RST_38                                    ; $4568: $ff
    nop                                           ; $4569: $00
    rst RST_38                                    ; $456a: $ff
    jr @+$01                                      ; $456b: $18 $ff

    rra                                           ; $456d: $1f
    rst RST_38                                    ; $456e: $ff
    rra                                           ; $456f: $1f
    rst RST_38                                    ; $4570: $ff
    rst RST_38                                    ; $4571: $ff
    rst RST_38                                    ; $4572: $ff
    rst RST_38                                    ; $4573: $ff
    rst RST_38                                    ; $4574: $ff
    rst RST_38                                    ; $4575: $ff
    rst RST_38                                    ; $4576: $ff
    rst RST_38                                    ; $4577: $ff
    db $fc                                        ; $4578: $fc
    rst RST_38                                    ; $4579: $ff
    add b                                         ; $457a: $80
    rst RST_38                                    ; $457b: $ff
    inc bc                                        ; $457c: $03
    rst RST_38                                    ; $457d: $ff
    nop                                           ; $457e: $00
    rst RST_38                                    ; $457f: $ff
    rst RST_38                                    ; $4580: $ff
    nop                                           ; $4581: $00
    rst RST_38                                    ; $4582: $ff
    nop                                           ; $4583: $00
    rst RST_38                                    ; $4584: $ff
    nop                                           ; $4585: $00
    rst RST_38                                    ; $4586: $ff
    nop                                           ; $4587: $00
    rst RST_38                                    ; $4588: $ff
    inc bc                                        ; $4589: $03
    rst RST_38                                    ; $458a: $ff
    ld a, a                                       ; $458b: $7f
    rst RST_38                                    ; $458c: $ff
    db $fc                                        ; $458d: $fc
    rst RST_38                                    ; $458e: $ff
    add b                                         ; $458f: $80
    jp $f1ff                                      ; $4590: $c3 $ff $f1


    rst RST_38                                    ; $4593: $ff
    pop af                                        ; $4594: $f1
    rst RST_38                                    ; $4595: $ff
    jp $07ff                                      ; $4596: $c3 $ff $07


    rst RST_38                                    ; $4599: $ff
    ccf                                           ; $459a: $3f
    rst RST_38                                    ; $459b: $ff
    rst RST_38                                    ; $459c: $ff
    rst RST_38                                    ; $459d: $ff
    nop                                           ; $459e: $00
    rst RST_38                                    ; $459f: $ff
    rst RST_38                                    ; $45a0: $ff
    inc a                                         ; $45a1: $3c
    rst RST_38                                    ; $45a2: $ff
    ld c, $ff                                     ; $45a3: $0e $ff
    ld c, $ff                                     ; $45a5: $0e $ff
    inc a                                         ; $45a7: $3c
    rst RST_38                                    ; $45a8: $ff
    ld hl, sp-$01                                 ; $45a9: $f8 $ff
    ret nz                                        ; $45ab: $c0

    rst RST_38                                    ; $45ac: $ff
    nop                                           ; $45ad: $00
    rst RST_38                                    ; $45ae: $ff
    nop                                           ; $45af: $00
    rst RST_20                                    ; $45b0: $e7
    rst RST_38                                    ; $45b1: $ff
    rst RST_08                                    ; $45b2: $cf
    rst RST_38                                    ; $45b3: $ff
    sbc h                                         ; $45b4: $9c
    rst RST_38                                    ; $45b5: $ff
    sub b                                         ; $45b6: $90
    rst RST_38                                    ; $45b7: $ff
    add e                                         ; $45b8: $83
    rst RST_38                                    ; $45b9: $ff
    rst RST_08                                    ; $45ba: $cf
    rst RST_38                                    ; $45bb: $ff
    rst RST_38                                    ; $45bc: $ff
    rst RST_38                                    ; $45bd: $ff
    nop                                           ; $45be: $00
    rst RST_38                                    ; $45bf: $ff
    rst RST_38                                    ; $45c0: $ff
    jr @+$01                                      ; $45c1: $18 $ff

    jr nc, @+$01                                  ; $45c3: $30 $ff

    ld h, e                                       ; $45c5: $63
    rst RST_38                                    ; $45c6: $ff
    ld l, a                                       ; $45c7: $6f
    rst RST_38                                    ; $45c8: $ff
    ld a, h                                       ; $45c9: $7c
    rst RST_38                                    ; $45ca: $ff
    jr nc, @+$01                                  ; $45cb: $30 $ff

    nop                                           ; $45cd: $00
    rst RST_38                                    ; $45ce: $ff
    nop                                           ; $45cf: $00
    rst RST_00                                    ; $45d0: $c7
    rst RST_38                                    ; $45d1: $ff
    ld c, $ff                                     ; $45d2: $0e $ff
    jr @+$01                                      ; $45d4: $18 $ff

    add e                                         ; $45d6: $83
    rst RST_38                                    ; $45d7: $ff
    rst RST_08                                    ; $45d8: $cf
    rst RST_38                                    ; $45d9: $ff
    cp $ff                                        ; $45da: $fe $ff
    db $fc                                        ; $45dc: $fc
    rst RST_38                                    ; $45dd: $ff
    nop                                           ; $45de: $00
    rst RST_38                                    ; $45df: $ff
    rst RST_38                                    ; $45e0: $ff
    jr c, @+$01                                   ; $45e1: $38 $ff

    pop af                                        ; $45e3: $f1
    rst RST_38                                    ; $45e4: $ff
    rst RST_20                                    ; $45e5: $e7
    rst RST_38                                    ; $45e6: $ff
    ld a, h                                       ; $45e7: $7c
    rst RST_38                                    ; $45e8: $ff
    jr nc, @+$01                                  ; $45e9: $30 $ff

    ld bc, $03ff                                  ; $45eb: $01 $ff $03
    rst RST_38                                    ; $45ee: $ff
    rlca                                          ; $45ef: $07
    nop                                           ; $45f0: $00
    rst RST_38                                    ; $45f1: $ff
    ld h, b                                       ; $45f2: $60
    rst RST_38                                    ; $45f3: $ff
    jp $83ff                                      ; $45f4: $c3 $ff $83


    rst RST_38                                    ; $45f7: $ff
    db $10                                        ; $45f8: $10
    rst RST_38                                    ; $45f9: $ff
    ccf                                           ; $45fa: $3f
    rst RST_38                                    ; $45fb: $ff
    ld a, a                                       ; $45fc: $7f
    rst RST_38                                    ; $45fd: $ff
    nop                                           ; $45fe: $00
    rst RST_38                                    ; $45ff: $ff
    rst RST_38                                    ; $4600: $ff
    rst RST_38                                    ; $4601: $ff
    rst RST_38                                    ; $4602: $ff
    sbc a                                         ; $4603: $9f
    rst RST_38                                    ; $4604: $ff
    inc a                                         ; $4605: $3c
    rst RST_38                                    ; $4606: $ff
    ld a, h                                       ; $4607: $7c
    rst RST_38                                    ; $4608: $ff
    rst RST_28                                    ; $4609: $ef
    rst RST_38                                    ; $460a: $ff
    ret nz                                        ; $460b: $c0

    rst RST_38                                    ; $460c: $ff
    add b                                         ; $460d: $80
    rst RST_38                                    ; $460e: $ff
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
    rst RST_38                                    ; $4650: $ff
    rst RST_38                                    ; $4651: $ff
    rst RST_38                                    ; $4652: $ff
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
    rst RST_38                                    ; $4670: $ff
    rst RST_38                                    ; $4671: $ff
    rst RST_38                                    ; $4672: $ff
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
    rst RST_38                                    ; $4690: $ff
    rst RST_38                                    ; $4691: $ff
    rst RST_38                                    ; $4692: $ff
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
    rst RST_38                                    ; $46ac: $ff
    nop                                           ; $46ad: $00
    ret nz                                        ; $46ae: $c0

    nop                                           ; $46af: $00
    rst RST_38                                    ; $46b0: $ff
    rst RST_38                                    ; $46b1: $ff
    rst RST_38                                    ; $46b2: $ff
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
    rst RST_38                                    ; $46d0: $ff
    rst RST_38                                    ; $46d1: $ff
    rst RST_38                                    ; $46d2: $ff
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
    rst RST_38                                    ; $46f0: $ff
    rst RST_38                                    ; $46f1: $ff
    rst RST_38                                    ; $46f2: $ff
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
    rst RST_38                                    ; $4710: $ff
    rst RST_38                                    ; $4711: $ff
    rst RST_38                                    ; $4712: $ff
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
    rst RST_28                                    ; $473d: $ef
    db $ed                                        ; $473e: $ed
    rst RST_30                                    ; $473f: $f7
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
    rst RST_20                                    ; $474e: $e7
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
    rst RST_38                                    ; $475d: $ff
    rst RST_38                                    ; $475e: $ff
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
    rst RST_38                                    ; $477c: $ff
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
    rst RST_30                                    ; $479c: $f7
    xor $ef                                       ; $479d: $ee $ef
    rst RST_38                                    ; $479f: $ff
    nop                                           ; $47a0: $00
    nop                                           ; $47a1: $00
    nop                                           ; $47a2: $00
    nop                                           ; $47a3: $00
    nop                                           ; $47a4: $00
    nop                                           ; $47a5: $00
    ldh [rP1], a                                  ; $47a6: $e0 $00
    ldh a, [rP1]                                  ; $47a8: $f0 $00
    rst RST_20                                    ; $47aa: $e7
    nop                                           ; $47ab: $00
    xor $00                                       ; $47ac: $ee $00
    rst RST_28                                    ; $47ae: $ef
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
    rst RST_30                                    ; $47bb: $f7
    ld h, a                                       ; $47bc: $67
    rst RST_38                                    ; $47bd: $ff
    rst RST_38                                    ; $47be: $ff
    rst RST_30                                    ; $47bf: $f7
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
    rst RST_20                                    ; $47ca: $e7
    nop                                           ; $47cb: $00
    ld [hl], a                                    ; $47cc: $77
    nop                                           ; $47cd: $00
    rst RST_30                                    ; $47ce: $f7
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
    rst RST_38                                    ; $48b4: $ff
    or c                                          ; $48b5: $b1
    cp e                                          ; $48b6: $bb
    rst RST_30                                    ; $48b7: $f7
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
    rst RST_30                                    ; $48d8: $f7
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
    rst RST_28                                    ; $48f1: $ef
    db $eb                                        ; $48f2: $eb
    rst RST_30                                    ; $48f3: $f7
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
    rst RST_20                                    ; $4900: $e7
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
    rst RST_38                                    ; $4911: $ff
    rst RST_38                                    ; $4912: $ff
    db $dd                                        ; $4913: $dd
    db $dd                                        ; $4914: $dd
    rst RST_38                                    ; $4915: $ff
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
    rst RST_38                                    ; $4950: $ff
    xor $e6                                       ; $4951: $ee $e6
    rst RST_38                                    ; $4953: $ff
    di                                            ; $4954: $f3
    rst RST_28                                    ; $4955: $ef
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
    rst RST_20                                    ; $4964: $e7
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
    rst RST_28                                    ; $4972: $ef
    ld [hl], a                                    ; $4973: $77
    rst RST_10                                    ; $4974: $d7
    rst RST_28                                    ; $4975: $ef
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
    rst RST_20                                    ; $4984: $e7
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
    rst RST_38                                    ; $4a50: $ff
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
    rst RST_28                                    ; $4a60: $ef
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
    rst RST_38                                    ; $4ab1: $ff
    rst RST_38                                    ; $4ab2: $ff
    rst RST_38                                    ; $4ab3: $ff
    push af                                       ; $4ab4: $f5
    ld a, [bc]                                    ; $4ab5: $0a
    rst RST_38                                    ; $4ab6: $ff
    rst RST_38                                    ; $4ab7: $ff
    rst RST_38                                    ; $4ab8: $ff
    rst RST_38                                    ; $4ab9: $ff
    rst RST_38                                    ; $4aba: $ff
    rst RST_38                                    ; $4abb: $ff
    rst RST_38                                    ; $4abc: $ff
    rst RST_38                                    ; $4abd: $ff
    rst RST_38                                    ; $4abe: $ff
    rst RST_38                                    ; $4abf: $ff
    nop                                           ; $4ac0: $00
    nop                                           ; $4ac1: $00
    nop                                           ; $4ac2: $00
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
    nop                                           ; $4ad0: $00
    rst RST_38                                    ; $4ad1: $ff
    rst RST_38                                    ; $4ad2: $ff
    rst RST_38                                    ; $4ad3: $ff
    ld d, b                                       ; $4ad4: $50
    xor a                                         ; $4ad5: $af
    rst RST_38                                    ; $4ad6: $ff
    rst RST_38                                    ; $4ad7: $ff
    rst RST_38                                    ; $4ad8: $ff
    rst RST_38                                    ; $4ad9: $ff
    rst RST_38                                    ; $4ada: $ff
    rst RST_38                                    ; $4adb: $ff
    rst RST_38                                    ; $4adc: $ff
    rst RST_38                                    ; $4add: $ff
    rst RST_38                                    ; $4ade: $ff
    rst RST_38                                    ; $4adf: $ff
    nop                                           ; $4ae0: $00
    nop                                           ; $4ae1: $00
    nop                                           ; $4ae2: $00
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
    dec d                                         ; $4af0: $15
    ld [$f5ca], a                                 ; $4af1: $ea $ca $f5
    dec [hl]                                      ; $4af4: $35
    ld a, [$fdca]                                 ; $4af5: $fa $ca $fd
    push af                                       ; $4af8: $f5
    cp $fa                                        ; $4af9: $fe $fa
    rst RST_38                                    ; $4afb: $ff
    db $fd                                        ; $4afc: $fd
    rst RST_38                                    ; $4afd: $ff
    db $fd                                        ; $4afe: $fd
    rst RST_38                                    ; $4aff: $ff
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
    rst RST_38                                    ; $4b10: $ff
    rst RST_38                                    ; $4b11: $ff
    rst RST_38                                    ; $4b12: $ff
    rst RST_38                                    ; $4b13: $ff
    rst RST_38                                    ; $4b14: $ff
    rst RST_38                                    ; $4b15: $ff
    rst RST_38                                    ; $4b16: $ff
    or [hl]                                       ; $4b17: $b6
    rst RST_38                                    ; $4b18: $ff
    or [hl]                                       ; $4b19: $b6
    rst RST_38                                    ; $4b1a: $ff
    xor d                                         ; $4b1b: $aa
    xor d                                         ; $4b1c: $aa
    db $dd                                        ; $4b1d: $dd
    rst RST_38                                    ; $4b1e: $ff
    db $dd                                        ; $4b1f: $dd
    rst RST_38                                    ; $4b20: $ff
    nop                                           ; $4b21: $00
    rst RST_38                                    ; $4b22: $ff
    nop                                           ; $4b23: $00
    rst RST_38                                    ; $4b24: $ff
    nop                                           ; $4b25: $00
    rst RST_38                                    ; $4b26: $ff
    nop                                           ; $4b27: $00
    rst RST_38                                    ; $4b28: $ff
    nop                                           ; $4b29: $00
    rst RST_38                                    ; $4b2a: $ff
    nop                                           ; $4b2b: $00
    rst RST_38                                    ; $4b2c: $ff
    nop                                           ; $4b2d: $00
    rst RST_38                                    ; $4b2e: $ff
    nop                                           ; $4b2f: $00
    rst RST_38                                    ; $4b30: $ff
    rst RST_38                                    ; $4b31: $ff
    rst RST_38                                    ; $4b32: $ff
    rst RST_38                                    ; $4b33: $ff
    rst RST_38                                    ; $4b34: $ff
    rst RST_38                                    ; $4b35: $ff
    db $dd                                        ; $4b36: $dd
    and d                                         ; $4b37: $a2
    rst RST_38                                    ; $4b38: $ff
    or [hl]                                       ; $4b39: $b6
    rst RST_38                                    ; $4b3a: $ff
    or [hl]                                       ; $4b3b: $b6
    rst RST_38                                    ; $4b3c: $ff
    or [hl]                                       ; $4b3d: $b6
    rst RST_38                                    ; $4b3e: $ff
    or [hl]                                       ; $4b3f: $b6
    rst RST_38                                    ; $4b40: $ff
    nop                                           ; $4b41: $00
    rst RST_38                                    ; $4b42: $ff
    nop                                           ; $4b43: $00
    rst RST_38                                    ; $4b44: $ff
    nop                                           ; $4b45: $00
    rst RST_38                                    ; $4b46: $ff
    nop                                           ; $4b47: $00
    rst RST_38                                    ; $4b48: $ff
    nop                                           ; $4b49: $00
    rst RST_38                                    ; $4b4a: $ff
    nop                                           ; $4b4b: $00
    rst RST_38                                    ; $4b4c: $ff
    nop                                           ; $4b4d: $00
    rst RST_38                                    ; $4b4e: $ff
    nop                                           ; $4b4f: $00
    rst RST_38                                    ; $4b50: $ff
    rst RST_38                                    ; $4b51: $ff
    rst RST_38                                    ; $4b52: $ff
    rst RST_38                                    ; $4b53: $ff
    rst RST_38                                    ; $4b54: $ff
    rst RST_38                                    ; $4b55: $ff
    cp $df                                        ; $4b56: $fe $df
    rst RST_38                                    ; $4b58: $ff
    sbc $ff                                       ; $4b59: $de $ff
    rra                                           ; $4b5b: $1f
    cp $df                                        ; $4b5c: $fe $df
    cp $df                                        ; $4b5e: $fe $df
    rst RST_38                                    ; $4b60: $ff
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
    nop                                           ; $4b6b: $00
    rst RST_38                                    ; $4b6c: $ff
    nop                                           ; $4b6d: $00
    rst RST_38                                    ; $4b6e: $ff
    nop                                           ; $4b6f: $00
    rst RST_38                                    ; $4b70: $ff
    rst RST_38                                    ; $4b71: $ff
    rst RST_38                                    ; $4b72: $ff
    rst RST_38                                    ; $4b73: $ff
    rst RST_38                                    ; $4b74: $ff
    rst RST_38                                    ; $4b75: $ff
    adc $31                                       ; $4b76: $ce $31
    rst RST_18                                    ; $4b78: $df
    ei                                            ; $4b79: $fb
    rst RST_38                                    ; $4b7a: $ff
    dec sp                                        ; $4b7b: $3b
    rst RST_38                                    ; $4b7c: $ff
    db $db                                        ; $4b7d: $db
    rst RST_18                                    ; $4b7e: $df
    dec sp                                        ; $4b7f: $3b
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
    nop                                           ; $4b8b: $00
    rst RST_38                                    ; $4b8c: $ff
    nop                                           ; $4b8d: $00
    rst RST_38                                    ; $4b8e: $ff
    nop                                           ; $4b8f: $00
    rst RST_38                                    ; $4b90: $ff
    rst RST_38                                    ; $4b91: $ff
    rst RST_38                                    ; $4b92: $ff
    rst RST_38                                    ; $4b93: $ff
    rst RST_38                                    ; $4b94: $ff
    rst RST_38                                    ; $4b95: $ff
    rst RST_38                                    ; $4b96: $ff
    ld de, $76fd                                  ; $4b97: $11 $fd $76
    rst RST_38                                    ; $4b9a: $ff
    ld de, $75fe                                  ; $4b9b: $11 $fe $75
    rst RST_38                                    ; $4b9e: $ff
    ld d, $ff                                     ; $4b9f: $16 $ff
    nop                                           ; $4ba1: $00
    rst RST_38                                    ; $4ba2: $ff
    nop                                           ; $4ba3: $00
    rst RST_38                                    ; $4ba4: $ff
    nop                                           ; $4ba5: $00
    rst RST_38                                    ; $4ba6: $ff
    nop                                           ; $4ba7: $00
    rst RST_38                                    ; $4ba8: $ff
    nop                                           ; $4ba9: $00
    rst RST_38                                    ; $4baa: $ff
    nop                                           ; $4bab: $00
    rst RST_38                                    ; $4bac: $ff
    nop                                           ; $4bad: $00
    rst RST_38                                    ; $4bae: $ff
    nop                                           ; $4baf: $00
    rst RST_38                                    ; $4bb0: $ff
    rst RST_38                                    ; $4bb1: $ff
    rst RST_38                                    ; $4bb2: $ff
    rst RST_38                                    ; $4bb3: $ff
    rst RST_38                                    ; $4bb4: $ff
    rst RST_38                                    ; $4bb5: $ff
    rst RST_38                                    ; $4bb6: $ff
    adc h                                         ; $4bb7: $8c
    db $fd                                        ; $4bb8: $fd
    cp e                                          ; $4bb9: $bb
    rst RST_38                                    ; $4bba: $ff
    adc e                                         ; $4bbb: $8b
    db $fd                                        ; $4bbc: $fd
    cp e                                          ; $4bbd: $bb
    rst RST_38                                    ; $4bbe: $ff
    adc h                                         ; $4bbf: $8c
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
    rst RST_38                                    ; $4bce: $ff
    nop                                           ; $4bcf: $00
    rst RST_38                                    ; $4bd0: $ff
    rst RST_38                                    ; $4bd1: $ff
    rst RST_38                                    ; $4bd2: $ff
    rst RST_38                                    ; $4bd3: $ff
    rst RST_38                                    ; $4bd4: $ff
    rst RST_38                                    ; $4bd5: $ff
    db $fd                                        ; $4bd6: $fd
    ld a, [hl]                                    ; $4bd7: $7e
    ld a, a                                       ; $4bd8: $7f
    cp l                                          ; $4bd9: $bd
    rst RST_38                                    ; $4bda: $ff
    cp [hl]                                       ; $4bdb: $be
    ld a, l                                       ; $4bdc: $7d
    cp a                                          ; $4bdd: $bf
    db $fd                                        ; $4bde: $fd
    ld a, [hl]                                    ; $4bdf: $7e
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
    nop                                           ; $4beb: $00
    rst RST_38                                    ; $4bec: $ff
    nop                                           ; $4bed: $00
    rst RST_38                                    ; $4bee: $ff
    nop                                           ; $4bef: $00
    rst RST_38                                    ; $4bf0: $ff
    rst RST_38                                    ; $4bf1: $ff
    rst RST_38                                    ; $4bf2: $ff
    rst RST_38                                    ; $4bf3: $ff
    rst RST_38                                    ; $4bf4: $ff
    rst RST_38                                    ; $4bf5: $ff
    cp a                                          ; $4bf6: $bf
    ld [hl], c                                    ; $4bf7: $71
    or l                                          ; $4bf8: $b5
    xor $ff                                       ; $4bf9: $ee $ff
    ld l, [hl]                                    ; $4bfb: $6e
    push af                                       ; $4bfc: $f5
    xor [hl]                                      ; $4bfd: $ae
    cp a                                          ; $4bfe: $bf
    ld [hl], c                                    ; $4bff: $71
    rst RST_38                                    ; $4c00: $ff
    nop                                           ; $4c01: $00
    rst RST_38                                    ; $4c02: $ff
    nop                                           ; $4c03: $00
    rst RST_38                                    ; $4c04: $ff
    nop                                           ; $4c05: $00
    rst RST_38                                    ; $4c06: $ff
    nop                                           ; $4c07: $00
    rst RST_38                                    ; $4c08: $ff
    nop                                           ; $4c09: $00
    rst RST_38                                    ; $4c0a: $ff
    nop                                           ; $4c0b: $00
    rst RST_38                                    ; $4c0c: $ff
    nop                                           ; $4c0d: $00
    rst RST_38                                    ; $4c0e: $ff
    nop                                           ; $4c0f: $00
    rst RST_38                                    ; $4c10: $ff
    rst RST_38                                    ; $4c11: $ff
    rst RST_38                                    ; $4c12: $ff
    rst RST_38                                    ; $4c13: $ff
    rst RST_38                                    ; $4c14: $ff
    rst RST_38                                    ; $4c15: $ff
    rst RST_38                                    ; $4c16: $ff
    or l                                          ; $4c17: $b5
    rst RST_38                                    ; $4c18: $ff
    or h                                          ; $4c19: $b4
    rst RST_38                                    ; $4c1a: $ff
    or l                                          ; $4c1b: $b5
    rst RST_38                                    ; $4c1c: $ff
    or l                                          ; $4c1d: $b5
    or a                                          ; $4c1e: $b7
    call Call_000_00ff                            ; $4c1f: $cd $ff $00
    rst RST_38                                    ; $4c22: $ff
    nop                                           ; $4c23: $00
    rst RST_38                                    ; $4c24: $ff
    nop                                           ; $4c25: $00
    rst RST_38                                    ; $4c26: $ff
    nop                                           ; $4c27: $00
    rst RST_38                                    ; $4c28: $ff
    nop                                           ; $4c29: $00
    rst RST_38                                    ; $4c2a: $ff
    nop                                           ; $4c2b: $00
    rst RST_38                                    ; $4c2c: $ff
    nop                                           ; $4c2d: $00
    rst RST_38                                    ; $4c2e: $ff
    nop                                           ; $4c2f: $00
    rst RST_38                                    ; $4c30: $ff
    rst RST_38                                    ; $4c31: $ff
    rst RST_38                                    ; $4c32: $ff
    rst RST_38                                    ; $4c33: $ff
    rst RST_38                                    ; $4c34: $ff
    rst RST_38                                    ; $4c35: $ff
    db $fd                                        ; $4c36: $fd
    db $d3                                        ; $4c37: $d3
    db $fc                                        ; $4c38: $fc
    rst RST_10                                    ; $4c39: $d7
    rst RST_38                                    ; $4c3a: $ff
    ld d, [hl]                                    ; $4c3b: $56
    db $fc                                        ; $4c3c: $fc
    sub a                                         ; $4c3d: $97
    db $fd                                        ; $4c3e: $fd
    db $d3                                        ; $4c3f: $d3
    rst RST_38                                    ; $4c40: $ff
    nop                                           ; $4c41: $00
    rst RST_38                                    ; $4c42: $ff
    nop                                           ; $4c43: $00
    rst RST_38                                    ; $4c44: $ff
    nop                                           ; $4c45: $00
    rst RST_38                                    ; $4c46: $ff
    nop                                           ; $4c47: $00
    rst RST_38                                    ; $4c48: $ff
    nop                                           ; $4c49: $00
    rst RST_38                                    ; $4c4a: $ff
    nop                                           ; $4c4b: $00
    rst RST_38                                    ; $4c4c: $ff
    nop                                           ; $4c4d: $00
    rst RST_38                                    ; $4c4e: $ff
    nop                                           ; $4c4f: $00
    cp $ff                                        ; $4c50: $fe $ff
    cp $ff                                        ; $4c52: $fe $ff
    cp $ff                                        ; $4c54: $fe $ff
    cp $ff                                        ; $4c56: $fe $ff
    cp $ff                                        ; $4c58: $fe $ff
    cp $ff                                        ; $4c5a: $fe $ff
    cp $ff                                        ; $4c5c: $fe $ff
    cp $ff                                        ; $4c5e: $fe $ff
    rst RST_38                                    ; $4c60: $ff
    nop                                           ; $4c61: $00
    rst RST_38                                    ; $4c62: $ff
    nop                                           ; $4c63: $00
    rst RST_38                                    ; $4c64: $ff
    nop                                           ; $4c65: $00
    rst RST_38                                    ; $4c66: $ff
    nop                                           ; $4c67: $00
    rst RST_38                                    ; $4c68: $ff
    nop                                           ; $4c69: $00
    rst RST_38                                    ; $4c6a: $ff
    nop                                           ; $4c6b: $00
    rst RST_38                                    ; $4c6c: $ff
    nop                                           ; $4c6d: $00
    rst RST_38                                    ; $4c6e: $ff
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
    rst RST_38                                    ; $4c90: $ff
    rst RST_38                                    ; $4c91: $ff
    rst RST_38                                    ; $4c92: $ff
    rst RST_38                                    ; $4c93: $ff
    rst RST_38                                    ; $4c94: $ff
    rst RST_38                                    ; $4c95: $ff
    rst RST_38                                    ; $4c96: $ff
    rst RST_38                                    ; $4c97: $ff
    rst RST_38                                    ; $4c98: $ff
    rst RST_38                                    ; $4c99: $ff
    rst RST_38                                    ; $4c9a: $ff
    rst RST_38                                    ; $4c9b: $ff
    rst RST_38                                    ; $4c9c: $ff
    rst RST_38                                    ; $4c9d: $ff
    ld a, a                                       ; $4c9e: $7f
    rst RST_38                                    ; $4c9f: $ff
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
    rst RST_38                                    ; $4caa: $ff
    nop                                           ; $4cab: $00
    rst RST_38                                    ; $4cac: $ff
    nop                                           ; $4cad: $00
    rst RST_38                                    ; $4cae: $ff
    nop                                           ; $4caf: $00
    db $fd                                        ; $4cb0: $fd
    rst RST_38                                    ; $4cb1: $ff
    db $fd                                        ; $4cb2: $fd
    rst RST_38                                    ; $4cb3: $ff
    db $fd                                        ; $4cb4: $fd
    rst RST_38                                    ; $4cb5: $ff
    db $fd                                        ; $4cb6: $fd
    rst RST_38                                    ; $4cb7: $ff
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
    rst RST_38                                    ; $4cf1: $ff
    rst RST_38                                    ; $4cf2: $ff
    rst RST_38                                    ; $4cf3: $ff
    rst RST_38                                    ; $4cf4: $ff
    rst RST_38                                    ; $4cf5: $ff
    rst RST_38                                    ; $4cf6: $ff
    rst RST_38                                    ; $4cf7: $ff
    rst RST_38                                    ; $4cf8: $ff
    rst RST_38                                    ; $4cf9: $ff
    di                                            ; $4cfa: $f3
    rst RST_38                                    ; $4cfb: $ff
    pop bc                                        ; $4cfc: $c1
    rst RST_38                                    ; $4cfd: $ff
    add hl, de                                    ; $4cfe: $19
    rst RST_38                                    ; $4cff: $ff
    rst RST_38                                    ; $4d00: $ff
    nop                                           ; $4d01: $00
    rst RST_38                                    ; $4d02: $ff
    nop                                           ; $4d03: $00
    rst RST_38                                    ; $4d04: $ff
    nop                                           ; $4d05: $00
    rst RST_38                                    ; $4d06: $ff
    nop                                           ; $4d07: $00
    rst RST_38                                    ; $4d08: $ff
    nop                                           ; $4d09: $00
    rst RST_38                                    ; $4d0a: $ff
    inc c                                         ; $4d0b: $0c
    rst RST_38                                    ; $4d0c: $ff
    ld a, $ff                                     ; $4d0d: $3e $ff
    and $00                                       ; $4d0f: $e6 $00
    rst RST_38                                    ; $4d11: $ff
    rst RST_38                                    ; $4d12: $ff
    rst RST_38                                    ; $4d13: $ff
    rst RST_38                                    ; $4d14: $ff
    rst RST_38                                    ; $4d15: $ff
    rst RST_38                                    ; $4d16: $ff
    rst RST_38                                    ; $4d17: $ff
    db $fc                                        ; $4d18: $fc
    rst RST_38                                    ; $4d19: $ff
    ldh a, [rIE]                                  ; $4d1a: $f0 $ff
    rst RST_00                                    ; $4d1c: $c7
    rst RST_38                                    ; $4d1d: $ff
    sbc h                                         ; $4d1e: $9c
    rst RST_38                                    ; $4d1f: $ff
    rst RST_38                                    ; $4d20: $ff
    nop                                           ; $4d21: $00
    rst RST_38                                    ; $4d22: $ff
    nop                                           ; $4d23: $00
    rst RST_38                                    ; $4d24: $ff
    nop                                           ; $4d25: $00
    rst RST_38                                    ; $4d26: $ff
    nop                                           ; $4d27: $00
    rst RST_38                                    ; $4d28: $ff
    inc bc                                        ; $4d29: $03
    rst RST_38                                    ; $4d2a: $ff
    rrca                                          ; $4d2b: $0f
    rst RST_38                                    ; $4d2c: $ff
    jr c, @+$01                                   ; $4d2d: $38 $ff

    ld h, e                                       ; $4d2f: $63
    nop                                           ; $4d30: $00
    rst RST_38                                    ; $4d31: $ff
    db $fc                                        ; $4d32: $fc
    rst RST_38                                    ; $4d33: $ff
    db $fc                                        ; $4d34: $fc
    rst RST_38                                    ; $4d35: $ff
    db $fc                                        ; $4d36: $fc
    rst RST_38                                    ; $4d37: $ff
    ld a, h                                       ; $4d38: $7c
    rst RST_38                                    ; $4d39: $ff
    add hl, sp                                    ; $4d3a: $39
    rst RST_38                                    ; $4d3b: $ff
    inc sp                                        ; $4d3c: $33
    rst RST_38                                    ; $4d3d: $ff
    ld h, a                                       ; $4d3e: $67
    rst RST_38                                    ; $4d3f: $ff
    rst RST_38                                    ; $4d40: $ff
    nop                                           ; $4d41: $00
    rst RST_38                                    ; $4d42: $ff
    inc bc                                        ; $4d43: $03
    rst RST_38                                    ; $4d44: $ff
    inc bc                                        ; $4d45: $03
    rst RST_38                                    ; $4d46: $ff
    inc bc                                        ; $4d47: $03
    rst RST_38                                    ; $4d48: $ff
    add e                                         ; $4d49: $83
    rst RST_38                                    ; $4d4a: $ff
    add $ff                                       ; $4d4b: $c6 $ff
    call z, $98ff                                 ; $4d4d: $cc $ff $98
    nop                                           ; $4d50: $00
    rst RST_38                                    ; $4d51: $ff
    rst RST_38                                    ; $4d52: $ff
    rst RST_38                                    ; $4d53: $ff
    ld a, a                                       ; $4d54: $7f
    rst RST_38                                    ; $4d55: $ff
    ld a, a                                       ; $4d56: $7f
    rst RST_38                                    ; $4d57: $ff
    ld a, a                                       ; $4d58: $7f
    rst RST_38                                    ; $4d59: $ff
    ld a, a                                       ; $4d5a: $7f
    rst RST_38                                    ; $4d5b: $ff
    ccf                                           ; $4d5c: $3f
    rst RST_38                                    ; $4d5d: $ff
    sbc a                                         ; $4d5e: $9f
    rst RST_38                                    ; $4d5f: $ff
    rst RST_38                                    ; $4d60: $ff
    nop                                           ; $4d61: $00
    rst RST_38                                    ; $4d62: $ff
    nop                                           ; $4d63: $00
    rst RST_38                                    ; $4d64: $ff
    add b                                         ; $4d65: $80
    rst RST_38                                    ; $4d66: $ff
    add b                                         ; $4d67: $80
    rst RST_38                                    ; $4d68: $ff
    add b                                         ; $4d69: $80
    rst RST_38                                    ; $4d6a: $ff
    add b                                         ; $4d6b: $80
    rst RST_38                                    ; $4d6c: $ff
    ret nz                                        ; $4d6d: $c0

    rst RST_38                                    ; $4d6e: $ff
    ld h, b                                       ; $4d6f: $60
    rst RST_38                                    ; $4d70: $ff
    rst RST_38                                    ; $4d71: $ff
    rst RST_38                                    ; $4d72: $ff
    rst RST_38                                    ; $4d73: $ff
    rst RST_38                                    ; $4d74: $ff
    rst RST_38                                    ; $4d75: $ff
    rst RST_38                                    ; $4d76: $ff
    rst RST_38                                    ; $4d77: $ff
    rst RST_38                                    ; $4d78: $ff
    rst RST_38                                    ; $4d79: $ff
    rst RST_38                                    ; $4d7a: $ff
    rst RST_38                                    ; $4d7b: $ff
    rst RST_38                                    ; $4d7c: $ff
    rst RST_38                                    ; $4d7d: $ff
    cp $ff                                        ; $4d7e: $fe $ff
    rst RST_38                                    ; $4d80: $ff
    rst RST_38                                    ; $4d81: $ff
    rst RST_38                                    ; $4d82: $ff
    rst RST_38                                    ; $4d83: $ff
    rst RST_38                                    ; $4d84: $ff
    rst RST_38                                    ; $4d85: $ff
    rst RST_38                                    ; $4d86: $ff
    rst RST_38                                    ; $4d87: $ff
    rst RST_38                                    ; $4d88: $ff
    rst RST_38                                    ; $4d89: $ff
    rst RST_38                                    ; $4d8a: $ff
    rst RST_38                                    ; $4d8b: $ff
    rst RST_38                                    ; $4d8c: $ff
    rst RST_38                                    ; $4d8d: $ff
    rst RST_38                                    ; $4d8e: $ff
    rst RST_38                                    ; $4d8f: $ff
    rst RST_30                                    ; $4d90: $f7
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
    rst RST_38                                    ; $4db1: $ff
    ldh [c], a                                    ; $4db2: $e2
    rst RST_38                                    ; $4db3: $ff
    add $ff                                       ; $4db4: $c6 $ff
    inc c                                         ; $4db6: $0c
    rst RST_38                                    ; $4db7: $ff
    inc a                                         ; $4db8: $3c
    rst RST_38                                    ; $4db9: $ff
    cp $ff                                        ; $4dba: $fe $ff
    rst RST_38                                    ; $4dbc: $ff
    rst RST_38                                    ; $4dbd: $ff
    nop                                           ; $4dbe: $00
    rst RST_38                                    ; $4dbf: $ff
    rst RST_38                                    ; $4dc0: $ff
    adc [hl]                                      ; $4dc1: $8e
    rst RST_38                                    ; $4dc2: $ff
    dec e                                         ; $4dc3: $1d
    rst RST_38                                    ; $4dc4: $ff
    add hl, sp                                    ; $4dc5: $39
    rst RST_38                                    ; $4dc6: $ff
    di                                            ; $4dc7: $f3
    rst RST_38                                    ; $4dc8: $ff
    jp $01ff                                      ; $4dc9: $c3 $ff $01


    rst RST_38                                    ; $4dcc: $ff
    nop                                           ; $4dcd: $00
    rst RST_38                                    ; $4dce: $ff
    nop                                           ; $4dcf: $00
    jr nc, @+$01                                  ; $4dd0: $30 $ff

    inc bc                                        ; $4dd2: $03
    rst RST_38                                    ; $4dd3: $ff
    ld c, $ff                                     ; $4dd4: $0e $ff
    ld hl, sp-$01                                 ; $4dd6: $f8 $ff
    db $e3                                        ; $4dd8: $e3
    rst RST_38                                    ; $4dd9: $ff
    rrca                                          ; $4dda: $0f
    rst RST_38                                    ; $4ddb: $ff
    rst RST_38                                    ; $4ddc: $ff
    rst RST_38                                    ; $4ddd: $ff
    nop                                           ; $4dde: $00
    rst RST_38                                    ; $4ddf: $ff
    rst RST_38                                    ; $4de0: $ff
    rst RST_08                                    ; $4de1: $cf
    rst RST_38                                    ; $4de2: $ff
    db $fc                                        ; $4de3: $fc
    rst RST_38                                    ; $4de4: $ff
    pop af                                        ; $4de5: $f1
    rst RST_38                                    ; $4de6: $ff
    rlca                                          ; $4de7: $07
    rst RST_38                                    ; $4de8: $ff
    inc e                                         ; $4de9: $1c
    rst RST_38                                    ; $4dea: $ff
    ldh a, [rIE]                                  ; $4deb: $f0 $ff
    nop                                           ; $4ded: $00
    rst RST_38                                    ; $4dee: $ff
    nop                                           ; $4def: $00
    rst RST_08                                    ; $4df0: $cf
    rst RST_38                                    ; $4df1: $ff
    sbc a                                         ; $4df2: $9f
    rst RST_38                                    ; $4df3: $ff
    ccf                                           ; $4df4: $3f
    rst RST_38                                    ; $4df5: $ff
    cp $ff                                        ; $4df6: $fe $ff
    cp $ff                                        ; $4df8: $fe $ff
    cp $ff                                        ; $4dfa: $fe $ff
    rst RST_38                                    ; $4dfc: $ff
    rst RST_38                                    ; $4dfd: $ff
    nop                                           ; $4dfe: $00
    rst RST_38                                    ; $4dff: $ff
    rst RST_38                                    ; $4e00: $ff
    jr nc, @+$01                                  ; $4e01: $30 $ff

    ld h, b                                       ; $4e03: $60
    rst RST_38                                    ; $4e04: $ff
    ret nz                                        ; $4e05: $c0

    rst RST_38                                    ; $4e06: $ff
    ld bc, $01ff                                  ; $4e07: $01 $ff $01
    rst RST_38                                    ; $4e0a: $ff
    ld bc, $00ff                                  ; $4e0b: $01 $ff $00
    rst RST_38                                    ; $4e0e: $ff
    nop                                           ; $4e0f: $00
    sbc a                                         ; $4e10: $9f
    rst RST_38                                    ; $4e11: $ff
    cp a                                          ; $4e12: $bf
    rst RST_38                                    ; $4e13: $ff
    inc a                                         ; $4e14: $3c
    rst RST_38                                    ; $4e15: $ff
    nop                                           ; $4e16: $00
    rst RST_38                                    ; $4e17: $ff
    inc bc                                        ; $4e18: $03
    rst RST_38                                    ; $4e19: $ff
    ld a, a                                       ; $4e1a: $7f
    rst RST_38                                    ; $4e1b: $ff
    rst RST_38                                    ; $4e1c: $ff
    rst RST_38                                    ; $4e1d: $ff
    nop                                           ; $4e1e: $00
    rst RST_38                                    ; $4e1f: $ff
    rst RST_38                                    ; $4e20: $ff
    ld h, b                                       ; $4e21: $60
    rst RST_38                                    ; $4e22: $ff
    ld b, b                                       ; $4e23: $40
    rst RST_38                                    ; $4e24: $ff
    jp rIE                                        ; $4e25: $c3 $ff $ff


    rst RST_38                                    ; $4e28: $ff
    db $fc                                        ; $4e29: $fc
    rst RST_38                                    ; $4e2a: $ff
    add b                                         ; $4e2b: $80
    rst RST_38                                    ; $4e2c: $ff
    nop                                           ; $4e2d: $00
    rst RST_38                                    ; $4e2e: $ff
    nop                                           ; $4e2f: $00
    rst RST_38                                    ; $4e30: $ff
    rst RST_38                                    ; $4e31: $ff
    rst RST_38                                    ; $4e32: $ff
    rst RST_38                                    ; $4e33: $ff
    nop                                           ; $4e34: $00
    rst RST_38                                    ; $4e35: $ff
    nop                                           ; $4e36: $00
    rst RST_38                                    ; $4e37: $ff
    rst RST_38                                    ; $4e38: $ff
    rst RST_38                                    ; $4e39: $ff
    rst RST_38                                    ; $4e3a: $ff
    rst RST_38                                    ; $4e3b: $ff
    rst RST_38                                    ; $4e3c: $ff
    rst RST_38                                    ; $4e3d: $ff
    nop                                           ; $4e3e: $00
    rst RST_38                                    ; $4e3f: $ff
    rst RST_38                                    ; $4e40: $ff
    nop                                           ; $4e41: $00
    rst RST_38                                    ; $4e42: $ff
    nop                                           ; $4e43: $00
    rst RST_38                                    ; $4e44: $ff
    rst RST_38                                    ; $4e45: $ff
    rst RST_38                                    ; $4e46: $ff
    rst RST_38                                    ; $4e47: $ff
    rst RST_38                                    ; $4e48: $ff
    nop                                           ; $4e49: $00
    rst RST_38                                    ; $4e4a: $ff
    nop                                           ; $4e4b: $00
    rst RST_38                                    ; $4e4c: $ff
    nop                                           ; $4e4d: $00
    rst RST_38                                    ; $4e4e: $ff
    nop                                           ; $4e4f: $00
    rst RST_38                                    ; $4e50: $ff
    rst RST_38                                    ; $4e51: $ff
    rst RST_38                                    ; $4e52: $ff
    rst RST_38                                    ; $4e53: $ff
    ccf                                           ; $4e54: $3f
    rst RST_38                                    ; $4e55: $ff
    rra                                           ; $4e56: $1f
    rst RST_38                                    ; $4e57: $ff
    sbc a                                         ; $4e58: $9f
    rst RST_38                                    ; $4e59: $ff
    rst RST_38                                    ; $4e5a: $ff
    rst RST_38                                    ; $4e5b: $ff
    rst RST_38                                    ; $4e5c: $ff
    rst RST_38                                    ; $4e5d: $ff
    nop                                           ; $4e5e: $00
    rst RST_38                                    ; $4e5f: $ff
    rst RST_38                                    ; $4e60: $ff
    nop                                           ; $4e61: $00
    rst RST_38                                    ; $4e62: $ff
    nop                                           ; $4e63: $00
    rst RST_38                                    ; $4e64: $ff
    ret nz                                        ; $4e65: $c0

    rst RST_38                                    ; $4e66: $ff
    ldh [rIE], a                                  ; $4e67: $e0 $ff
    ld h, b                                       ; $4e69: $60
    rst RST_38                                    ; $4e6a: $ff
    nop                                           ; $4e6b: $00
    rst RST_38                                    ; $4e6c: $ff
    nop                                           ; $4e6d: $00
    rst RST_38                                    ; $4e6e: $ff
    nop                                           ; $4e6f: $00
    rst RST_38                                    ; $4e70: $ff
    rst RST_38                                    ; $4e71: $ff
    rst RST_38                                    ; $4e72: $ff
    rst RST_38                                    ; $4e73: $ff
    rst RST_38                                    ; $4e74: $ff
    rst RST_38                                    ; $4e75: $ff
    rst RST_38                                    ; $4e76: $ff
    rst RST_38                                    ; $4e77: $ff
    cp $ff                                        ; $4e78: $fe $ff
    pop af                                        ; $4e7a: $f1
    rst RST_38                                    ; $4e7b: $ff
    rrca                                          ; $4e7c: $0f
    cp $fe                                        ; $4e7d: $fe $fe
    pop af                                        ; $4e7f: $f1
    rst RST_38                                    ; $4e80: $ff
    rst RST_38                                    ; $4e81: $ff
    rst RST_38                                    ; $4e82: $ff
    rst RST_38                                    ; $4e83: $ff
    rst RST_38                                    ; $4e84: $ff
    rst RST_38                                    ; $4e85: $ff
    rst RST_38                                    ; $4e86: $ff
    rst RST_38                                    ; $4e87: $ff
    rst RST_38                                    ; $4e88: $ff
    rst RST_38                                    ; $4e89: $ff
    cp $fe                                        ; $4e8a: $fe $fe
    ldh a, [$fff0]                                ; $4e8c: $f0 $f0
    nop                                           ; $4e8e: $00
    nop                                           ; $4e8f: $00
    db $fd                                        ; $4e90: $fd
    rst RST_38                                    ; $4e91: $ff
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
    rst RST_38                                    ; $4ed0: $ff
    rst RST_38                                    ; $4ed1: $ff
    rst RST_38                                    ; $4ed2: $ff
    nop                                           ; $4ed3: $00
    ld d, l                                       ; $4ed4: $55
    xor d                                         ; $4ed5: $aa
    xor d                                         ; $4ed6: $aa
    ld d, l                                       ; $4ed7: $55
    rst RST_38                                    ; $4ed8: $ff
    nop                                           ; $4ed9: $00
    ld a, [hl]                                    ; $4eda: $7e
    ld a, a                                       ; $4edb: $7f
    rst RST_38                                    ; $4edc: $ff
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
    rst RST_38                                    ; $4ee8: $ff
    nop                                           ; $4ee9: $00
    ld a, a                                       ; $4eea: $7f
    add b                                         ; $4eeb: $80
    rst RST_38                                    ; $4eec: $ff
    nop                                           ; $4eed: $00
    ld b, b                                       ; $4eee: $40
    add b                                         ; $4eef: $80
    rst RST_38                                    ; $4ef0: $ff
    rst RST_38                                    ; $4ef1: $ff
    rst RST_38                                    ; $4ef2: $ff
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
    rst RST_38                                    ; $4f10: $ff
    rst RST_38                                    ; $4f11: $ff
    rst RST_38                                    ; $4f12: $ff
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
    rst RST_38                                    ; $4f30: $ff
    rst RST_38                                    ; $4f31: $ff
    rst RST_38                                    ; $4f32: $ff
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
    rst RST_38                                    ; $4f50: $ff
    rst RST_38                                    ; $4f51: $ff
    rst RST_38                                    ; $4f52: $ff
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
    rst RST_38                                    ; $4f71: $ff
    rst RST_38                                    ; $4f72: $ff
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
    rst RST_38                                    ; $4f90: $ff
    rst RST_38                                    ; $4f91: $ff
    rst RST_38                                    ; $4f92: $ff
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
    rst RST_38                                    ; $4fb0: $ff
    rst RST_38                                    ; $4fb1: $ff
    rst RST_38                                    ; $4fb2: $ff
    nop                                           ; $4fb3: $00
    ld d, l                                       ; $4fb4: $55
    xor d                                         ; $4fb5: $aa
    nop                                           ; $4fb6: $00
    rst RST_38                                    ; $4fb7: $ff
    rst RST_38                                    ; $4fb8: $ff
    nop                                           ; $4fb9: $00
    rst RST_38                                    ; $4fba: $ff
    nop                                           ; $4fbb: $00
    rst RST_38                                    ; $4fbc: $ff
    rst RST_38                                    ; $4fbd: $ff
    rst RST_38                                    ; $4fbe: $ff
    rst RST_38                                    ; $4fbf: $ff
    nop                                           ; $4fc0: $00
    nop                                           ; $4fc1: $00
    nop                                           ; $4fc2: $00
    nop                                           ; $4fc3: $00
    nop                                           ; $4fc4: $00
    nop                                           ; $4fc5: $00
    nop                                           ; $4fc6: $00
    nop                                           ; $4fc7: $00
    nop                                           ; $4fc8: $00
    rst RST_38                                    ; $4fc9: $ff
    nop                                           ; $4fca: $00
    rst RST_38                                    ; $4fcb: $ff
    nop                                           ; $4fcc: $00
    rst RST_38                                    ; $4fcd: $ff
    nop                                           ; $4fce: $00
    rst RST_38                                    ; $4fcf: $ff
    rst RST_38                                    ; $4fd0: $ff
    rst RST_38                                    ; $4fd1: $ff
    rst RST_38                                    ; $4fd2: $ff
    nop                                           ; $4fd3: $00
    ld d, l                                       ; $4fd4: $55
    xor d                                         ; $4fd5: $aa
    nop                                           ; $4fd6: $00
    rst RST_38                                    ; $4fd7: $ff
    rst RST_38                                    ; $4fd8: $ff
    nop                                           ; $4fd9: $00
    rst RST_38                                    ; $4fda: $ff
    nop                                           ; $4fdb: $00
    rst RST_28                                    ; $4fdc: $ef
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
    rst RST_38                                    ; $4fe9: $ff
    nop                                           ; $4fea: $00
    rst RST_38                                    ; $4feb: $ff
    nop                                           ; $4fec: $00
    rst RST_38                                    ; $4fed: $ff
    nop                                           ; $4fee: $00
    rst RST_38                                    ; $4fef: $ff
    rst RST_38                                    ; $4ff0: $ff
    rst RST_38                                    ; $4ff1: $ff
    rst RST_38                                    ; $4ff2: $ff
    nop                                           ; $4ff3: $00
    ld d, l                                       ; $4ff4: $55
    xor d                                         ; $4ff5: $aa
    nop                                           ; $4ff6: $00
    rst RST_38                                    ; $4ff7: $ff
    rst RST_38                                    ; $4ff8: $ff
    nop                                           ; $4ff9: $00
    rst RST_38                                    ; $4ffa: $ff
    nop                                           ; $4ffb: $00
    rst RST_38                                    ; $4ffc: $ff
    nop                                           ; $4ffd: $00
    rst RST_38                                    ; $4ffe: $ff
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
    push af                                       ; $5020: $f5
    ld a, [bc]                                    ; $5021: $0a
    xor d                                         ; $5022: $aa
    ld d, l                                       ; $5023: $55
    ld d, l                                       ; $5024: $55
    xor d                                         ; $5025: $aa
    nop                                           ; $5026: $00
    rst RST_38                                    ; $5027: $ff
    rst RST_38                                    ; $5028: $ff
    nop                                           ; $5029: $00
    rst RST_38                                    ; $502a: $ff
    nop                                           ; $502b: $00
    rst RST_38                                    ; $502c: $ff
    nop                                           ; $502d: $00
    rst RST_38                                    ; $502e: $ff
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
    rst RST_38                                    ; $5039: $ff
    nop                                           ; $503a: $00
    rst RST_38                                    ; $503b: $ff
    nop                                           ; $503c: $00
    rst RST_38                                    ; $503d: $ff
    nop                                           ; $503e: $00
    rst RST_38                                    ; $503f: $ff
    ld d, l                                       ; $5040: $55
    xor d                                         ; $5041: $aa
    xor d                                         ; $5042: $aa
    ld d, l                                       ; $5043: $55
    ld d, l                                       ; $5044: $55
    xor d                                         ; $5045: $aa
    nop                                           ; $5046: $00
    rst RST_38                                    ; $5047: $ff
    rst RST_38                                    ; $5048: $ff
    nop                                           ; $5049: $00
    rst RST_38                                    ; $504a: $ff
    nop                                           ; $504b: $00
    rst RST_38                                    ; $504c: $ff
    nop                                           ; $504d: $00
    rst RST_38                                    ; $504e: $ff
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
    rst RST_38                                    ; $5059: $ff
    nop                                           ; $505a: $00
    rst RST_38                                    ; $505b: $ff
    nop                                           ; $505c: $00
    rst RST_38                                    ; $505d: $ff
    nop                                           ; $505e: $00
    rst RST_38                                    ; $505f: $ff
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
    rst RST_30                                    ; $5104: $f7
    ld l, e                                       ; $5105: $6b
    ld sp, hl                                     ; $5106: $f9
    ld h, a                                       ; $5107: $67
    rst RST_30                                    ; $5108: $f7
    ld l, c                                       ; $5109: $69
    db $eb                                        ; $510a: $eb
    ld [hl], l                                    ; $510b: $75
    ld d, a                                       ; $510c: $57
    jp hl                                         ; $510d: $e9


    jp hl                                         ; $510e: $e9


    rst RST_10                                    ; $510f: $d7
    db $fd                                        ; $5110: $fd
    ld [bc], a                                    ; $5111: $02
    rst RST_30                                    ; $5112: $f7
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
    rst RST_38                                    ; $5160: $ff
    rst RST_38                                    ; $5161: $ff
    rst RST_38                                    ; $5162: $ff
    ld a, b                                       ; $5163: $78
    rst RST_38                                    ; $5164: $ff
    ld a, b                                       ; $5165: $78
    rst RST_38                                    ; $5166: $ff
    ld a, a                                       ; $5167: $7f
    rst RST_38                                    ; $5168: $ff
    ld a, a                                       ; $5169: $7f
    rst RST_38                                    ; $516a: $ff
    ld a, a                                       ; $516b: $7f
    rst RST_38                                    ; $516c: $ff
    ld a, b                                       ; $516d: $78
    rst RST_38                                    ; $516e: $ff
    ld a, b                                       ; $516f: $78
    nop                                           ; $5170: $00
    rst RST_38                                    ; $5171: $ff
    nop                                           ; $5172: $00
    rst RST_38                                    ; $5173: $ff
    nop                                           ; $5174: $00
    rst RST_38                                    ; $5175: $ff
    nop                                           ; $5176: $00
    rst RST_38                                    ; $5177: $ff
    nop                                           ; $5178: $00
    rst RST_38                                    ; $5179: $ff
    nop                                           ; $517a: $00
    rst RST_38                                    ; $517b: $ff
    nop                                           ; $517c: $00
    rst RST_38                                    ; $517d: $ff
    nop                                           ; $517e: $00
    rst RST_38                                    ; $517f: $ff
    rst RST_38                                    ; $5180: $ff
    ld hl, sp+$7f                                 ; $5181: $f8 $7f
    ld hl, sp+$7f                                 ; $5183: $f8 $7f
    ld sp, hl                                     ; $5185: $f9
    rst RST_30                                    ; $5186: $f7
    ld sp, hl                                     ; $5187: $f9
    rst RST_28                                    ; $5188: $ef
    pop af                                        ; $5189: $f1
    rst RST_30                                    ; $518a: $f7
    ld hl, sp+$7f                                 ; $518b: $f8 $7f
    ld hl, sp-$01                                 ; $518d: $f8 $ff
    ld a, b                                       ; $518f: $78
    nop                                           ; $5190: $00
    rst RST_38                                    ; $5191: $ff
    nop                                           ; $5192: $00
    rst RST_38                                    ; $5193: $ff
    nop                                           ; $5194: $00
    rst RST_38                                    ; $5195: $ff
    nop                                           ; $5196: $00
    rst RST_38                                    ; $5197: $ff
    nop                                           ; $5198: $00
    rst RST_38                                    ; $5199: $ff
    nop                                           ; $519a: $00
    rst RST_38                                    ; $519b: $ff
    nop                                           ; $519c: $00
    rst RST_38                                    ; $519d: $ff
    nop                                           ; $519e: $00
    rst RST_38                                    ; $519f: $ff
    rst RST_38                                    ; $51a0: $ff
    nop                                           ; $51a1: $00
    rst RST_38                                    ; $51a2: $ff
    nop                                           ; $51a3: $00
    ei                                            ; $51a4: $fb
    rst RST_30                                    ; $51a5: $f7
    rst RST_30                                    ; $51a6: $f7
    rst RST_38                                    ; $51a7: $ff
    rst RST_38                                    ; $51a8: $ff
    rst RST_38                                    ; $51a9: $ff
    rst RST_38                                    ; $51aa: $ff
    rst RST_38                                    ; $51ab: $ff
    rst RST_38                                    ; $51ac: $ff
    ld hl, sp-$01                                 ; $51ad: $f8 $ff
    ldh a, [rP1]                                  ; $51af: $f0 $00
    rst RST_38                                    ; $51b1: $ff
    nop                                           ; $51b2: $00
    rst RST_38                                    ; $51b3: $ff
    nop                                           ; $51b4: $00
    rst RST_38                                    ; $51b5: $ff
    nop                                           ; $51b6: $00
    rst RST_38                                    ; $51b7: $ff
    nop                                           ; $51b8: $00
    rst RST_38                                    ; $51b9: $ff
    nop                                           ; $51ba: $00
    rst RST_38                                    ; $51bb: $ff
    nop                                           ; $51bc: $00
    rst RST_38                                    ; $51bd: $ff
    nop                                           ; $51be: $00
    rst RST_38                                    ; $51bf: $ff
    rst RST_38                                    ; $51c0: $ff
    nop                                           ; $51c1: $00
    rst RST_38                                    ; $51c2: $ff
    nop                                           ; $51c3: $00
    rst RST_38                                    ; $51c4: $ff
    nop                                           ; $51c5: $00
    rst RST_28                                    ; $51c6: $ef
    rra                                           ; $51c7: $1f
    rst RST_38                                    ; $51c8: $ff
    ccf                                           ; $51c9: $3f
    cp d                                          ; $51ca: $ba
    ld a, l                                       ; $51cb: $7d
    rst RST_38                                    ; $51cc: $ff
    ld a, b                                       ; $51cd: $78
    rst RST_38                                    ; $51ce: $ff
    ld a, b                                       ; $51cf: $78
    nop                                           ; $51d0: $00
    rst RST_38                                    ; $51d1: $ff
    nop                                           ; $51d2: $00
    rst RST_38                                    ; $51d3: $ff
    nop                                           ; $51d4: $00
    rst RST_38                                    ; $51d5: $ff
    nop                                           ; $51d6: $00
    rst RST_38                                    ; $51d7: $ff
    nop                                           ; $51d8: $00
    rst RST_38                                    ; $51d9: $ff
    nop                                           ; $51da: $00
    rst RST_38                                    ; $51db: $ff
    nop                                           ; $51dc: $00
    rst RST_38                                    ; $51dd: $ff
    nop                                           ; $51de: $00
    rst RST_38                                    ; $51df: $ff
    rst RST_38                                    ; $51e0: $ff
    nop                                           ; $51e1: $00
    rst RST_38                                    ; $51e2: $ff
    nop                                           ; $51e3: $00
    rst RST_38                                    ; $51e4: $ff
    ld bc, $c3bf                                  ; $51e5: $01 $bf $c3
    rst RST_38                                    ; $51e8: $ff
    db $e3                                        ; $51e9: $e3
    rst RST_28                                    ; $51ea: $ef
    di                                            ; $51eb: $f3
    db $fd                                        ; $51ec: $fd
    di                                            ; $51ed: $f3
    rst RST_38                                    ; $51ee: $ff
    ldh a, [rP1]                                  ; $51ef: $f0 $00
    rst RST_38                                    ; $51f1: $ff
    nop                                           ; $51f2: $00
    rst RST_38                                    ; $51f3: $ff
    nop                                           ; $51f4: $00
    rst RST_38                                    ; $51f5: $ff
    nop                                           ; $51f6: $00
    rst RST_38                                    ; $51f7: $ff
    nop                                           ; $51f8: $00
    rst RST_38                                    ; $51f9: $ff
    nop                                           ; $51fa: $00
    rst RST_38                                    ; $51fb: $ff
    nop                                           ; $51fc: $00
    rst RST_38                                    ; $51fd: $ff
    nop                                           ; $51fe: $00
    rst RST_38                                    ; $51ff: $ff
    rst RST_38                                    ; $5200: $ff
    nop                                           ; $5201: $00
    rst RST_38                                    ; $5202: $ff
    nop                                           ; $5203: $00
    rst RST_18                                    ; $5204: $df
    xor $ff                                       ; $5205: $ee $ff
    cp $ff                                        ; $5207: $fe $ff
    sbc [hl]                                      ; $5209: $9e
    rst RST_10                                    ; $520a: $d7
    xor $f7                                       ; $520b: $ee $f7
    ld hl, sp+$7f                                 ; $520d: $f8 $7f
    db $fc                                        ; $520f: $fc
    nop                                           ; $5210: $00
    rst RST_38                                    ; $5211: $ff
    nop                                           ; $5212: $00
    rst RST_38                                    ; $5213: $ff
    nop                                           ; $5214: $00
    rst RST_38                                    ; $5215: $ff
    nop                                           ; $5216: $00
    rst RST_38                                    ; $5217: $ff
    nop                                           ; $5218: $00
    rst RST_38                                    ; $5219: $ff
    nop                                           ; $521a: $00
    rst RST_38                                    ; $521b: $ff
    nop                                           ; $521c: $00
    rst RST_38                                    ; $521d: $ff
    nop                                           ; $521e: $00
    rst RST_38                                    ; $521f: $ff
    rst RST_38                                    ; $5220: $ff
    nop                                           ; $5221: $00
    rst RST_38                                    ; $5222: $ff
    nop                                           ; $5223: $00
    rst RST_38                                    ; $5224: $ff
    nop                                           ; $5225: $00
    rst RST_38                                    ; $5226: $ff
    nop                                           ; $5227: $00
    rst RST_38                                    ; $5228: $ff
    nop                                           ; $5229: $00
    rst RST_38                                    ; $522a: $ff
    nop                                           ; $522b: $00
    rst RST_38                                    ; $522c: $ff
    nop                                           ; $522d: $00
    rst RST_38                                    ; $522e: $ff
    nop                                           ; $522f: $00
    nop                                           ; $5230: $00
    rst RST_38                                    ; $5231: $ff
    nop                                           ; $5232: $00
    rst RST_38                                    ; $5233: $ff
    nop                                           ; $5234: $00
    rst RST_38                                    ; $5235: $ff
    nop                                           ; $5236: $00
    rst RST_38                                    ; $5237: $ff
    nop                                           ; $5238: $00
    rst RST_38                                    ; $5239: $ff
    nop                                           ; $523a: $00
    rst RST_38                                    ; $523b: $ff
    nop                                           ; $523c: $00
    rst RST_38                                    ; $523d: $ff
    nop                                           ; $523e: $00
    rst RST_38                                    ; $523f: $ff
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
    rst RST_38                                    ; $5264: $ff
    cp $fe                                        ; $5265: $fe $fe
    rst RST_38                                    ; $5267: $ff
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


    rst RST_10                                    ; $52c3: $d7
    db $e3                                        ; $52c4: $e3
    rst RST_38                                    ; $52c5: $ff
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
    rst RST_38                                    ; $52d4: $ff
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
    rst RST_38                                    ; $5340: $ff
    ld a, b                                       ; $5341: $78
    rst RST_38                                    ; $5342: $ff
    rst RST_38                                    ; $5343: $ff
    rst RST_38                                    ; $5344: $ff
    rst RST_38                                    ; $5345: $ff
    rst RST_38                                    ; $5346: $ff
    rst RST_38                                    ; $5347: $ff
    rst RST_38                                    ; $5348: $ff
    nop                                           ; $5349: $00
    rst RST_38                                    ; $534a: $ff
    nop                                           ; $534b: $00
    nop                                           ; $534c: $00
    rst RST_38                                    ; $534d: $ff
    xor d                                         ; $534e: $aa
    ld d, l                                       ; $534f: $55
    nop                                           ; $5350: $00
    rst RST_38                                    ; $5351: $ff
    nop                                           ; $5352: $00
    rst RST_38                                    ; $5353: $ff
    nop                                           ; $5354: $00
    rst RST_38                                    ; $5355: $ff
    nop                                           ; $5356: $00
    rst RST_38                                    ; $5357: $ff
    nop                                           ; $5358: $00
    rst RST_38                                    ; $5359: $ff
    nop                                           ; $535a: $00
    rst RST_38                                    ; $535b: $ff
    nop                                           ; $535c: $00
    nop                                           ; $535d: $00
    nop                                           ; $535e: $00
    nop                                           ; $535f: $00
    ld a, a                                       ; $5360: $7f
    ld hl, sp-$01                                 ; $5361: $f8 $ff
    ld sp, hl                                     ; $5363: $f9
    rst RST_30                                    ; $5364: $f7
    ld sp, hl                                     ; $5365: $f9
    rst RST_28                                    ; $5366: $ef
    pop af                                        ; $5367: $f1
    rst RST_38                                    ; $5368: $ff
    nop                                           ; $5369: $00
    rst RST_38                                    ; $536a: $ff
    nop                                           ; $536b: $00
    nop                                           ; $536c: $00
    rst RST_38                                    ; $536d: $ff
    xor d                                         ; $536e: $aa
    ld d, l                                       ; $536f: $55
    nop                                           ; $5370: $00
    rst RST_38                                    ; $5371: $ff
    nop                                           ; $5372: $00
    rst RST_38                                    ; $5373: $ff
    nop                                           ; $5374: $00
    rst RST_38                                    ; $5375: $ff
    nop                                           ; $5376: $00
    rst RST_38                                    ; $5377: $ff
    nop                                           ; $5378: $00
    rst RST_38                                    ; $5379: $ff
    nop                                           ; $537a: $00
    rst RST_38                                    ; $537b: $ff
    nop                                           ; $537c: $00
    nop                                           ; $537d: $00
    nop                                           ; $537e: $00
    nop                                           ; $537f: $00
    rst RST_38                                    ; $5380: $ff
    ldh a, [rIE]                                  ; $5381: $f0 $ff
    ld hl, sp-$01                                 ; $5383: $f8 $ff
    ld hl, sp-$01                                 ; $5385: $f8 $ff
    ld hl, sp-$01                                 ; $5387: $f8 $ff
    nop                                           ; $5389: $00
    rst RST_38                                    ; $538a: $ff
    nop                                           ; $538b: $00
    nop                                           ; $538c: $00
    rst RST_38                                    ; $538d: $ff
    xor d                                         ; $538e: $aa
    ld d, l                                       ; $538f: $55
    nop                                           ; $5390: $00
    rst RST_38                                    ; $5391: $ff
    nop                                           ; $5392: $00
    rst RST_38                                    ; $5393: $ff
    nop                                           ; $5394: $00
    rst RST_38                                    ; $5395: $ff
    nop                                           ; $5396: $00
    rst RST_38                                    ; $5397: $ff
    nop                                           ; $5398: $00
    rst RST_38                                    ; $5399: $ff
    nop                                           ; $539a: $00
    rst RST_38                                    ; $539b: $ff
    nop                                           ; $539c: $00
    nop                                           ; $539d: $00
    nop                                           ; $539e: $00
    nop                                           ; $539f: $00
    rst RST_38                                    ; $53a0: $ff
    ld a, b                                       ; $53a1: $78
    cp d                                          ; $53a2: $ba
    ld a, l                                       ; $53a3: $7d
    rst RST_38                                    ; $53a4: $ff
    ccf                                           ; $53a5: $3f
    rst RST_28                                    ; $53a6: $ef
    rra                                           ; $53a7: $1f
    rst RST_38                                    ; $53a8: $ff
    nop                                           ; $53a9: $00
    rst RST_38                                    ; $53aa: $ff
    nop                                           ; $53ab: $00
    nop                                           ; $53ac: $00
    rst RST_38                                    ; $53ad: $ff
    xor d                                         ; $53ae: $aa
    ld d, l                                       ; $53af: $55
    nop                                           ; $53b0: $00
    rst RST_38                                    ; $53b1: $ff
    nop                                           ; $53b2: $00
    rst RST_38                                    ; $53b3: $ff
    nop                                           ; $53b4: $00
    rst RST_38                                    ; $53b5: $ff
    nop                                           ; $53b6: $00
    rst RST_38                                    ; $53b7: $ff
    nop                                           ; $53b8: $00
    rst RST_38                                    ; $53b9: $ff
    nop                                           ; $53ba: $00
    rst RST_38                                    ; $53bb: $ff
    nop                                           ; $53bc: $00
    nop                                           ; $53bd: $00
    nop                                           ; $53be: $00
    nop                                           ; $53bf: $00
    rst RST_38                                    ; $53c0: $ff
    di                                            ; $53c1: $f3
    rst RST_28                                    ; $53c2: $ef
    di                                            ; $53c3: $f3
    rst RST_38                                    ; $53c4: $ff
    db $e3                                        ; $53c5: $e3
    cp a                                          ; $53c6: $bf
    jp Jump_000_00ff                              ; $53c7: $c3 $ff $00


    rst RST_38                                    ; $53ca: $ff
    nop                                           ; $53cb: $00
    nop                                           ; $53cc: $00
    rst RST_38                                    ; $53cd: $ff
    xor d                                         ; $53ce: $aa
    ld d, l                                       ; $53cf: $55
    nop                                           ; $53d0: $00
    rst RST_38                                    ; $53d1: $ff
    nop                                           ; $53d2: $00
    rst RST_38                                    ; $53d3: $ff
    nop                                           ; $53d4: $00
    rst RST_38                                    ; $53d5: $ff
    nop                                           ; $53d6: $00
    rst RST_38                                    ; $53d7: $ff
    nop                                           ; $53d8: $00
    rst RST_38                                    ; $53d9: $ff
    nop                                           ; $53da: $00
    rst RST_38                                    ; $53db: $ff
    nop                                           ; $53dc: $00
    nop                                           ; $53dd: $00
    nop                                           ; $53de: $00
    nop                                           ; $53df: $00
    ld e, a                                       ; $53e0: $5f
    cp [hl]                                       ; $53e1: $be
    rst RST_38                                    ; $53e2: $ff
    adc $ff                                       ; $53e3: $ce $ff
    cp $df                                        ; $53e5: $fe $df
    cp h                                          ; $53e7: $bc
    rst RST_38                                    ; $53e8: $ff
    nop                                           ; $53e9: $00
    rst RST_38                                    ; $53ea: $ff
    nop                                           ; $53eb: $00
    nop                                           ; $53ec: $00
    rst RST_38                                    ; $53ed: $ff
    xor d                                         ; $53ee: $aa
    ld d, l                                       ; $53ef: $55
    nop                                           ; $53f0: $00
    rst RST_38                                    ; $53f1: $ff
    nop                                           ; $53f2: $00
    rst RST_38                                    ; $53f3: $ff
    nop                                           ; $53f4: $00
    rst RST_38                                    ; $53f5: $ff
    nop                                           ; $53f6: $00
    rst RST_38                                    ; $53f7: $ff
    nop                                           ; $53f8: $00
    rst RST_38                                    ; $53f9: $ff
    nop                                           ; $53fa: $00
    rst RST_38                                    ; $53fb: $ff
    nop                                           ; $53fc: $00
    nop                                           ; $53fd: $00
    nop                                           ; $53fe: $00
    nop                                           ; $53ff: $00
    rst RST_38                                    ; $5400: $ff
    nop                                           ; $5401: $00
    rst RST_38                                    ; $5402: $ff
    jr c, @+$01                                   ; $5403: $38 $ff

    jr c, @+$01                                   ; $5405: $38 $ff

    jr c, @+$01                                   ; $5407: $38 $ff

    nop                                           ; $5409: $00
    rst RST_38                                    ; $540a: $ff
    nop                                           ; $540b: $00
    nop                                           ; $540c: $00
    rst RST_38                                    ; $540d: $ff
    xor d                                         ; $540e: $aa
    ld d, l                                       ; $540f: $55
    nop                                           ; $5410: $00
    rst RST_38                                    ; $5411: $ff
    nop                                           ; $5412: $00
    rst RST_38                                    ; $5413: $ff
    nop                                           ; $5414: $00
    rst RST_38                                    ; $5415: $ff
    nop                                           ; $5416: $00
    rst RST_38                                    ; $5417: $ff
    nop                                           ; $5418: $00
    rst RST_38                                    ; $5419: $ff
    nop                                           ; $541a: $00
    rst RST_38                                    ; $541b: $ff
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
    rst RST_38                                    ; $5470: $ff
    rst RST_38                                    ; $5471: $ff
    rst RST_38                                    ; $5472: $ff
    rst RST_38                                    ; $5473: $ff
    rst RST_38                                    ; $5474: $ff
    rst RST_38                                    ; $5475: $ff
    rst RST_38                                    ; $5476: $ff
    rst RST_38                                    ; $5477: $ff
    rst RST_38                                    ; $5478: $ff
    rst RST_38                                    ; $5479: $ff
    rst RST_38                                    ; $547a: $ff
    rst RST_38                                    ; $547b: $ff
    rst RST_38                                    ; $547c: $ff
    rst RST_38                                    ; $547d: $ff
    rst RST_38                                    ; $547e: $ff
    rst RST_38                                    ; $547f: $ff
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
    jr nc, jr_005_6732                            ; $671c: $30 $14

    jr nc, jr_005_6734                            ; $671e: $30 $14

    jr nc, jr_005_6736                            ; $6720: $30 $14

    jr nc, jr_005_6738                            ; $6722: $30 $14

    jr nc, jr_005_673a                            ; $6724: $30 $14

    jr nc, jr_005_673c                            ; $6726: $30 $14

    jr nc, jr_005_673e                            ; $6728: $30 $14

    jr nc, jr_005_6740                            ; $672a: $30 $14

    jr nc, jr_005_6742                            ; $672c: $30 $14

    jr nc, jr_005_6744                            ; $672e: $30 $14

    and d                                         ; $6730: $a2
    db $10                                        ; $6731: $10

jr_005_6732:
    and d                                         ; $6732: $a2
    db $10                                        ; $6733: $10

jr_005_6734:
    and d                                         ; $6734: $a2
    db $10                                        ; $6735: $10

jr_005_6736:
    and d                                         ; $6736: $a2
    db $10                                        ; $6737: $10

jr_005_6738:
    and d                                         ; $6738: $a2
    db $10                                        ; $6739: $10

jr_005_673a:
    and d                                         ; $673a: $a2
    db $10                                        ; $673b: $10

jr_005_673c:
    and d                                         ; $673c: $a2
    db $10                                        ; $673d: $10

jr_005_673e:
    and d                                         ; $673e: $a2
    db $10                                        ; $673f: $10

jr_005_6740:
    and d                                         ; $6740: $a2
    db $10                                        ; $6741: $10

jr_005_6742:
    and d                                         ; $6742: $a2
    db $10                                        ; $6743: $10

jr_005_6744:
    and d                                         ; $6744: $a2
    db $10                                        ; $6745: $10
    and d                                         ; $6746: $a2
    db $10                                        ; $6747: $10
    and d                                         ; $6748: $a2
    db $10                                        ; $6749: $10
    and d                                         ; $674a: $a2
    db $10                                        ; $674b: $10
    and d                                         ; $674c: $a2
    db $10                                        ; $674d: $10
    and d                                         ; $674e: $a2
    db $10                                        ; $674f: $10
    and d                                         ; $6750: $a2
    db $10                                        ; $6751: $10
    and d                                         ; $6752: $a2
    db $10                                        ; $6753: $10
    and d                                         ; $6754: $a2
    db $10                                        ; $6755: $10
    and d                                         ; $6756: $a2
    db $10                                        ; $6757: $10
    and d                                         ; $6758: $a2
    db $10                                        ; $6759: $10
    and d                                         ; $675a: $a2
    db $10                                        ; $675b: $10
    and d                                         ; $675c: $a2
    db $10                                        ; $675d: $10
    and d                                         ; $675e: $a2
    db $10                                        ; $675f: $10
    and d                                         ; $6760: $a2
    db $10                                        ; $6761: $10
    and d                                         ; $6762: $a2
    db $10                                        ; $6763: $10
    and d                                         ; $6764: $a2
    db $10                                        ; $6765: $10
    and d                                         ; $6766: $a2
    db $10                                        ; $6767: $10
    and d                                         ; $6768: $a2
    db $10                                        ; $6769: $10
    and d                                         ; $676a: $a2
    db $10                                        ; $676b: $10
    and d                                         ; $676c: $a2
    db $10                                        ; $676d: $10
    and d                                         ; $676e: $a2
    db $10                                        ; $676f: $10
    and d                                         ; $6770: $a2
    db $10                                        ; $6771: $10
    and d                                         ; $6772: $a2
    db $10                                        ; $6773: $10
    and d                                         ; $6774: $a2
    db $10                                        ; $6775: $10
    and d                                         ; $6776: $a2
    db $10                                        ; $6777: $10
    and d                                         ; $6778: $a2
    db $10                                        ; $6779: $10
    and d                                         ; $677a: $a2
    db $10                                        ; $677b: $10
    and d                                         ; $677c: $a2
    db $10                                        ; $677d: $10
    and d                                         ; $677e: $a2
    db $10                                        ; $677f: $10
    and d                                         ; $6780: $a2
    db $10                                        ; $6781: $10
    and d                                         ; $6782: $a2
    db $10                                        ; $6783: $10
    and d                                         ; $6784: $a2
    db $10                                        ; $6785: $10
    and d                                         ; $6786: $a2
    db $10                                        ; $6787: $10
    and d                                         ; $6788: $a2
    db $10                                        ; $6789: $10
    and d                                         ; $678a: $a2
    db $10                                        ; $678b: $10
    and d                                         ; $678c: $a2
    db $10                                        ; $678d: $10
    and d                                         ; $678e: $a2
    db $10                                        ; $678f: $10
    and d                                         ; $6790: $a2
    db $10                                        ; $6791: $10
    and d                                         ; $6792: $a2
    db $10                                        ; $6793: $10
    and d                                         ; $6794: $a2
    db $10                                        ; $6795: $10
    and d                                         ; $6796: $a2
    db $10                                        ; $6797: $10
    and d                                         ; $6798: $a2
    db $10                                        ; $6799: $10
    and d                                         ; $679a: $a2
    db $10                                        ; $679b: $10
    and d                                         ; $679c: $a2
    db $10                                        ; $679d: $10
    and d                                         ; $679e: $a2
    db $10                                        ; $679f: $10
    and d                                         ; $67a0: $a2
    db $10                                        ; $67a1: $10
    and d                                         ; $67a2: $a2
    db $10                                        ; $67a3: $10
    and d                                         ; $67a4: $a2
    db $10                                        ; $67a5: $10
    and d                                         ; $67a6: $a2
    db $10                                        ; $67a7: $10
    and d                                         ; $67a8: $a2
    db $10                                        ; $67a9: $10
    and d                                         ; $67aa: $a2
    db $10                                        ; $67ab: $10
    and d                                         ; $67ac: $a2
    db $10                                        ; $67ad: $10
    and d                                         ; $67ae: $a2
    db $10                                        ; $67af: $10
    and d                                         ; $67b0: $a2
    db $10                                        ; $67b1: $10
    and d                                         ; $67b2: $a2
    db $10                                        ; $67b3: $10
    and d                                         ; $67b4: $a2
    db $10                                        ; $67b5: $10
    and d                                         ; $67b6: $a2
    db $10                                        ; $67b7: $10
    and d                                         ; $67b8: $a2
    db $10                                        ; $67b9: $10
    and d                                         ; $67ba: $a2
    db $10                                        ; $67bb: $10
    and d                                         ; $67bc: $a2
    db $10                                        ; $67bd: $10
    and d                                         ; $67be: $a2
    db $10                                        ; $67bf: $10
    and d                                         ; $67c0: $a2
    db $10                                        ; $67c1: $10
    and d                                         ; $67c2: $a2
    db $10                                        ; $67c3: $10
    and d                                         ; $67c4: $a2
    db $10                                        ; $67c5: $10
    and d                                         ; $67c6: $a2
    db $10                                        ; $67c7: $10
    and d                                         ; $67c8: $a2
    db $10                                        ; $67c9: $10
    and d                                         ; $67ca: $a2
    db $10                                        ; $67cb: $10
    and d                                         ; $67cc: $a2
    db $10                                        ; $67cd: $10
    and d                                         ; $67ce: $a2
    db $10                                        ; $67cf: $10
    and d                                         ; $67d0: $a2
    db $10                                        ; $67d1: $10
    and d                                         ; $67d2: $a2
    db $10                                        ; $67d3: $10
    and d                                         ; $67d4: $a2
    db $10                                        ; $67d5: $10
    and d                                         ; $67d6: $a2
    db $10                                        ; $67d7: $10
    and d                                         ; $67d8: $a2
    db $10                                        ; $67d9: $10
    and d                                         ; $67da: $a2
    db $10                                        ; $67db: $10
    and d                                         ; $67dc: $a2
    db $10                                        ; $67dd: $10
    and d                                         ; $67de: $a2
    db $10                                        ; $67df: $10
    and d                                         ; $67e0: $a2
    db $10                                        ; $67e1: $10
    and d                                         ; $67e2: $a2
    db $10                                        ; $67e3: $10
    and d                                         ; $67e4: $a2
    db $10                                        ; $67e5: $10
    and d                                         ; $67e6: $a2
    db $10                                        ; $67e7: $10
    and d                                         ; $67e8: $a2
    db $10                                        ; $67e9: $10
    and d                                         ; $67ea: $a2
    db $10                                        ; $67eb: $10
    and d                                         ; $67ec: $a2
    db $10                                        ; $67ed: $10
    and d                                         ; $67ee: $a2
    db $10                                        ; $67ef: $10
    and d                                         ; $67f0: $a2
    db $10                                        ; $67f1: $10
    and d                                         ; $67f2: $a2
    db $10                                        ; $67f3: $10
    and d                                         ; $67f4: $a2
    db $10                                        ; $67f5: $10
    and d                                         ; $67f6: $a2
    db $10                                        ; $67f7: $10
    and d                                         ; $67f8: $a2
    db $10                                        ; $67f9: $10
    and d                                         ; $67fa: $a2
    db $10                                        ; $67fb: $10
    and d                                         ; $67fc: $a2
    db $10                                        ; $67fd: $10
    and d                                         ; $67fe: $a2
    db $10                                        ; $67ff: $10
    and d                                         ; $6800: $a2
    db $10                                        ; $6801: $10
    and d                                         ; $6802: $a2
    db $10                                        ; $6803: $10
    and d                                         ; $6804: $a2
    db $10                                        ; $6805: $10
    and d                                         ; $6806: $a2
    db $10                                        ; $6807: $10
    and d                                         ; $6808: $a2
    db $10                                        ; $6809: $10
    and d                                         ; $680a: $a2
    db $10                                        ; $680b: $10
    and d                                         ; $680c: $a2
    db $10                                        ; $680d: $10
    and d                                         ; $680e: $a2
    db $10                                        ; $680f: $10
    and d                                         ; $6810: $a2
    db $10                                        ; $6811: $10
    and d                                         ; $6812: $a2
    db $10                                        ; $6813: $10
    and d                                         ; $6814: $a2
    db $10                                        ; $6815: $10
    and d                                         ; $6816: $a2
    db $10                                        ; $6817: $10
    and d                                         ; $6818: $a2
    db $10                                        ; $6819: $10
    and d                                         ; $681a: $a2
    db $10                                        ; $681b: $10
    and d                                         ; $681c: $a2
    db $10                                        ; $681d: $10
    and d                                         ; $681e: $a2
    db $10                                        ; $681f: $10
    and d                                         ; $6820: $a2
    db $10                                        ; $6821: $10
    and d                                         ; $6822: $a2
    db $10                                        ; $6823: $10
    and d                                         ; $6824: $a2
    db $10                                        ; $6825: $10
    and d                                         ; $6826: $a2
    db $10                                        ; $6827: $10
    and d                                         ; $6828: $a2
    db $10                                        ; $6829: $10
    and d                                         ; $682a: $a2
    db $10                                        ; $682b: $10
    and d                                         ; $682c: $a2
    db $10                                        ; $682d: $10
    and d                                         ; $682e: $a2
    db $10                                        ; $682f: $10

jr_005_6830:
    sbc a                                         ; $6830: $9f
    ld d, e                                       ; $6831: $53
    ld b, a                                       ; $6832: $47
    ld e, $e4                                     ; $6833: $1e $e4
    ld de, $1966                                  ; $6835: $11 $66 $19
    rst RST_30                                    ; $6838: $f7
    ld e, d                                       ; $6839: $5a
    ld d, d                                       ; $683a: $52
    ld c, d                                       ; $683b: $4a
    ld l, e                                       ; $683c: $6b
    ld sp, $20e7                                  ; $683d: $31 $e7 $20
    add h                                         ; $6840: $84

jr_005_6841:
    inc d                                         ; $6841: $14
    xor d                                         ; $6842: $aa
    ld b, b                                       ; $6843: $40
    ld [de], a                                    ; $6844: $12
    inc l                                         ; $6845: $2c
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    ld c, a                                       ; $684a: $4f
    ld [$001f], sp                                ; $684b: $08 $1f $00
    rst RST_20                                    ; $684e: $e7
    jr nz, jr_005_6851                            ; $684f: $20 $00

jr_005_6851:
    jr c, jr_005_689a                             ; $6851: $38 $47

    ld e, $e4                                     ; $6853: $1e $e4
    ld de, $1966                                  ; $6855: $11 $66 $19
    nop                                           ; $6858: $00
    nop                                           ; $6859: $00
    add $19                                       ; $685a: $c6 $19
    ld h, l                                       ; $685c: $65
    add hl, de                                    ; $685d: $19
    push hl                                       ; $685e: $e5
    inc d                                         ; $685f: $14
    add h                                         ; $6860: $84

jr_005_6861:
    inc d                                         ; $6861: $14
    xor d                                         ; $6862: $aa
    ld b, b                                       ; $6863: $40
    dec [hl]                                      ; $6864: $35
    ld a, $bf                                     ; $6865: $3e $bf
    dec sp                                        ; $6867: $3b
    rst RST_30                                    ; $6868: $f7
    ld e, d                                       ; $6869: $5a
    ld d, d                                       ; $686a: $52
    ld c, d                                       ; $686b: $4a
    ld l, e                                       ; $686c: $6b
    ld sp, $20e7                                  ; $686d: $31 $e7 $20
    nop                                           ; $6870: $00
    jr c, jr_005_6830                             ; $6871: $38 $bd

    rla                                           ; $6873: $17
    or l                                          ; $6874: $b5
    ld [de], a                                    ; $6875: $12
    xor l                                         ; $6876: $ad
    add hl, bc                                    ; $6877: $09
    rst RST_30                                    ; $6878: $f7
    ld e, d                                       ; $6879: $5a
    ld d, d                                       ; $687a: $52
    ld c, d                                       ; $687b: $4a
    ld l, e                                       ; $687c: $6b
    ld sp, $20e7                                  ; $687d: $31 $e7 $20
    add h                                         ; $6880: $84
    inc d                                         ; $6881: $14
    xor d                                         ; $6882: $aa
    ld b, b                                       ; $6883: $40
    ld [de], a                                    ; $6884: $12
    inc l                                         ; $6885: $2c
    nop                                           ; $6886: $00
    nop                                           ; $6887: $00
    nop                                           ; $6888: $00
    nop                                           ; $6889: $00
    ld c, a                                       ; $688a: $4f
    ld [$001f], sp                                ; $688b: $08 $1f $00
    rst RST_20                                    ; $688e: $e7
    jr nz, jr_005_6891                            ; $688f: $20 $00

jr_005_6891:
    jr c, @-$41                                   ; $6891: $38 $bd

    rla                                           ; $6893: $17
    or l                                          ; $6894: $b5
    ld [de], a                                    ; $6895: $12
    xor l                                         ; $6896: $ad
    add hl, bc                                    ; $6897: $09
    add hl, sp                                    ; $6898: $39
    rla                                           ; $6899: $17

jr_005_689a:
    sub h                                         ; $689a: $94
    ld d, $ef                                     ; $689b: $16 $ef
    dec d                                         ; $689d: $15
    add hl, hl                                    ; $689e: $29
    dec d                                         ; $689f: $15
    add h                                         ; $68a0: $84
    inc d                                         ; $68a1: $14
    xor d                                         ; $68a2: $aa
    ld b, b                                       ; $68a3: $40
    dec [hl]                                      ; $68a4: $35
    ld a, $bf                                     ; $68a5: $3e $bf
    dec sp                                        ; $68a7: $3b
    rst RST_30                                    ; $68a8: $f7
    ld e, d                                       ; $68a9: $5a
    ld d, d                                       ; $68aa: $52
    ld c, d                                       ; $68ab: $4a
    ld l, e                                       ; $68ac: $6b
    ld sp, $20e7                                  ; $68ad: $31 $e7 $20
    nop                                           ; $68b0: $00
    nop                                           ; $68b1: $00
    jr jr_005_68d5                                ; $68b2: $18 $21

    pop de                                        ; $68b4: $d1
    jr jr_005_6841                                ; $68b5: $18 $8a

    db $10                                        ; $68b7: $10
    rst RST_30                                    ; $68b8: $f7
    ld e, d                                       ; $68b9: $5a

jr_005_68ba:
    ld d, d                                       ; $68ba: $52
    ld c, d                                       ; $68bb: $4a
    ld l, e                                       ; $68bc: $6b
    ld sp, $20e7                                  ; $68bd: $31 $e7 $20
    add h                                         ; $68c0: $84
    inc d                                         ; $68c1: $14
    xor d                                         ; $68c2: $aa
    ld b, b                                       ; $68c3: $40
    ld [de], a                                    ; $68c4: $12
    inc l                                         ; $68c5: $2c
    nop                                           ; $68c6: $00
    nop                                           ; $68c7: $00
    nop                                           ; $68c8: $00
    nop                                           ; $68c9: $00
    ld c, a                                       ; $68ca: $4f
    ld [$001f], sp                                ; $68cb: $08 $1f $00
    rst RST_20                                    ; $68ce: $e7
    jr nz, jr_005_68d1                            ; $68cf: $20 $00

jr_005_68d1:
    nop                                           ; $68d1: $00
    jr jr_005_68f5                                ; $68d2: $18 $21

    pop de                                        ; $68d4: $d1

jr_005_68d5:
    jr jr_005_6861                                ; $68d5: $18 $8a

    db $10                                        ; $68d7: $10
    dec d                                         ; $68d8: $15
    ld hl, $1cef                                  ; $68d9: $21 $ef $1c
    jp z, $8618                                   ; $68dc: $ca $18 $86

    inc d                                         ; $68df: $14
    ld h, e                                       ; $68e0: $63
    db $10                                        ; $68e1: $10
    xor d                                         ; $68e2: $aa
    ld b, b                                       ; $68e3: $40
    dec [hl]                                      ; $68e4: $35
    ld a, $bf                                     ; $68e5: $3e $bf
    dec sp                                        ; $68e7: $3b
    rst RST_30                                    ; $68e8: $f7
    ld e, d                                       ; $68e9: $5a
    ld d, d                                       ; $68ea: $52
    ld c, d                                       ; $68eb: $4a
    ld l, e                                       ; $68ec: $6b
    ld sp, $20e7                                  ; $68ed: $31 $e7 $20
    nop                                           ; $68f0: $00
    nop                                           ; $68f1: $00
    rst RST_20                                    ; $68f2: $e7
    jr nz, jr_005_689a                            ; $68f3: $20 $a5

jr_005_68f5:
    inc d                                         ; $68f5: $14
    ld b, d                                       ; $68f6: $42
    ld [$6339], sp                                ; $68f7: $08 $39 $63
    sub h                                         ; $68fa: $94
    ld d, d                                       ; $68fb: $52
    xor l                                         ; $68fc: $ad
    add hl, sp                                    ; $68fd: $39
    add hl, hl                                    ; $68fe: $29
    add hl, hl                                    ; $68ff: $29
    add $1c                                       ; $6900: $c6 $1c
    xor d                                         ; $6902: $aa
    ld b, b                                       ; $6903: $40
    ld [de], a                                    ; $6904: $12
    inc l                                         ; $6905: $2c
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    nop                                           ; $6908: $00
    nop                                           ; $6909: $00
    ld c, a                                       ; $690a: $4f
    ld [$001f], sp                                ; $690b: $08 $1f $00
    rst RST_20                                    ; $690e: $e7
    jr nz, jr_005_6911                            ; $690f: $20 $00

jr_005_6911:
    nop                                           ; $6911: $00
    rst RST_20                                    ; $6912: $e7
    jr nz, jr_005_68ba                            ; $6913: $20 $a5

    inc d                                         ; $6915: $14
    ld b, d                                       ; $6916: $42
    ld [$1ce7], sp                                ; $6917: $08 $e7 $1c
    db $ec                                        ; $691a: $ec
    inc e                                         ; $691b: $1c
    ldh a, [c]                                    ; $691c: $f2
    inc e                                         ; $691d: $1c
    rst RST_30                                    ; $691e: $f7
    inc e                                         ; $691f: $1c
    db $fc                                        ; $6920: $fc
    inc e                                         ; $6921: $1c
    xor d                                         ; $6922: $aa
    ld b, b                                       ; $6923: $40
    dec [hl]                                      ; $6924: $35
    ld a, $bf                                     ; $6925: $3e $bf
    dec sp                                        ; $6927: $3b
    add hl, sp                                    ; $6928: $39
    ld h, e                                       ; $6929: $63
    sub h                                         ; $692a: $94
    ld d, d                                       ; $692b: $52
    xor l                                         ; $692c: $ad
    add hl, sp                                    ; $692d: $39
    add hl, hl                                    ; $692e: $29
    add hl, hl                                    ; $692f: $29
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    rst RST_38                                    ; $6932: $ff
    ld a, a                                       ; $6933: $7f
    sbc h                                         ; $6934: $9c
    ld [hl], a                                    ; $6935: $77
    add hl, sp                                    ; $6936: $39
    ld l, a                                       ; $6937: $6f
    rst RST_30                                    ; $6938: $f7
    ld e, d                                       ; $6939: $5a
    ld d, d                                       ; $693a: $52
    ld c, d                                       ; $693b: $4a
    ld l, e                                       ; $693c: $6b
    ld sp, $20e7                                  ; $693d: $31 $e7 $20
    add h                                         ; $6940: $84
    inc d                                         ; $6941: $14
    xor d                                         ; $6942: $aa
    ld b, b                                       ; $6943: $40
    ld [de], a                                    ; $6944: $12
    inc l                                         ; $6945: $2c
    nop                                           ; $6946: $00
    nop                                           ; $6947: $00
    nop                                           ; $6948: $00
    nop                                           ; $6949: $00
    ld c, a                                       ; $694a: $4f
    ld [$001f], sp                                ; $694b: $08 $1f $00
    rst RST_20                                    ; $694e: $e7
    jr nz, jr_005_6951                            ; $694f: $20 $00

jr_005_6951:
    nop                                           ; $6951: $00
    rst RST_38                                    ; $6952: $ff
    ld a, a                                       ; $6953: $7f
    sbc h                                         ; $6954: $9c
    ld [hl], a                                    ; $6955: $77
    add hl, sp                                    ; $6956: $39
    ld l, a                                       ; $6957: $6f
    cp l                                          ; $6958: $bd
    ld a, e                                       ; $6959: $7b
    rst RST_30                                    ; $695a: $f7
    ld h, d                                       ; $695b: $62
    db $10                                        ; $695c: $10
    ld b, [hl]                                    ; $695d: $46
    ld c, d                                       ; $695e: $4a
    dec l                                         ; $695f: $2d
    ld h, e                                       ; $6960: $63
    db $10                                        ; $6961: $10
    xor d                                         ; $6962: $aa
    ld b, b                                       ; $6963: $40
    dec [hl]                                      ; $6964: $35
    ld a, $bf                                     ; $6965: $3e $bf
    dec sp                                        ; $6967: $3b
    rst RST_30                                    ; $6968: $f7
    ld e, d                                       ; $6969: $5a
    ld d, d                                       ; $696a: $52
    ld c, d                                       ; $696b: $4a
    ld l, e                                       ; $696c: $6b
    ld sp, $20e7                                  ; $696d: $31 $e7 $20
    nop                                           ; $6970: $00
    nop                                           ; $6971: $00
    ld b, d                                       ; $6972: $42
    ld [$0842], sp                                ; $6973: $08 $42 $08
    ld b, d                                       ; $6976: $42
    ld [$0842], sp                                ; $6977: $08 $42 $08
    ld b, d                                       ; $697a: $42
    ld [$0842], sp                                ; $697b: $08 $42 $08
    ld b, d                                       ; $697e: $42
    ld [$0842], sp                                ; $697f: $08 $42 $08
    ld b, d                                       ; $6982: $42
    ld [$0842], sp                                ; $6983: $08 $42 $08
    ld b, d                                       ; $6986: $42
    ld [$0842], sp                                ; $6987: $08 $42 $08
    ld b, d                                       ; $698a: $42
    ld [$0842], sp                                ; $698b: $08 $42 $08
    ld b, d                                       ; $698e: $42
    ld [$0000], sp                                ; $698f: $08 $00 $00
    ld b, d                                       ; $6992: $42
    ld [$0842], sp                                ; $6993: $08 $42 $08
    ld b, d                                       ; $6996: $42
    ld [$0842], sp                                ; $6997: $08 $42 $08
    ld b, d                                       ; $699a: $42
    ld [$0842], sp                                ; $699b: $08 $42 $08
    ld b, d                                       ; $699e: $42
    ld [$0842], sp                                ; $699f: $08 $42 $08
    ld b, d                                       ; $69a2: $42
    ld [$0842], sp                                ; $69a3: $08 $42 $08
    ld b, d                                       ; $69a6: $42
    ld [$0842], sp                                ; $69a7: $08 $42 $08
    ld b, d                                       ; $69aa: $42
    ld [$0842], sp                                ; $69ab: $08 $42 $08
    ld b, d                                       ; $69ae: $42
    ld [$0000], sp                                ; $69af: $08 $00 $00
    ld b, d                                       ; $69b2: $42
    ld [$0842], sp                                ; $69b3: $08 $42 $08
    ld b, d                                       ; $69b6: $42
    ld [$0842], sp                                ; $69b7: $08 $42 $08
    ld b, d                                       ; $69ba: $42
    ld [$0842], sp                                ; $69bb: $08 $42 $08
    ld b, d                                       ; $69be: $42
    ld [$0842], sp                                ; $69bf: $08 $42 $08
    ld b, d                                       ; $69c2: $42
    ld [$0842], sp                                ; $69c3: $08 $42 $08
    ld b, d                                       ; $69c6: $42
    ld [$0842], sp                                ; $69c7: $08 $42 $08
    ld b, d                                       ; $69ca: $42
    ld [$0842], sp                                ; $69cb: $08 $42 $08
    ld b, d                                       ; $69ce: $42
    ld [$0000], sp                                ; $69cf: $08 $00 $00
    ld b, d                                       ; $69d2: $42
    ld [$0842], sp                                ; $69d3: $08 $42 $08
    ld b, d                                       ; $69d6: $42
    ld [$0842], sp                                ; $69d7: $08 $42 $08
    ld b, d                                       ; $69da: $42
    ld [$0842], sp                                ; $69db: $08 $42 $08
    ld b, d                                       ; $69de: $42
    ld [$0842], sp                                ; $69df: $08 $42 $08
    ld b, d                                       ; $69e2: $42
    ld [$0842], sp                                ; $69e3: $08 $42 $08
    ld b, d                                       ; $69e6: $42
    ld [$0842], sp                                ; $69e7: $08 $42 $08
    ld b, d                                       ; $69ea: $42
    ld [$0842], sp                                ; $69eb: $08 $42 $08
    ld b, d                                       ; $69ee: $42
    ld [$0000], sp                                ; $69ef: $08 $00 $00
    ld b, d                                       ; $69f2: $42
    ld [$0842], sp                                ; $69f3: $08 $42 $08
    ld b, d                                       ; $69f6: $42
    ld [$0842], sp                                ; $69f7: $08 $42 $08
    ld b, d                                       ; $69fa: $42
    ld [$0842], sp                                ; $69fb: $08 $42 $08
    ld b, d                                       ; $69fe: $42
    ld [$0842], sp                                ; $69ff: $08 $42 $08
    ld b, d                                       ; $6a02: $42
    ld [$0842], sp                                ; $6a03: $08 $42 $08
    ld b, d                                       ; $6a06: $42
    ld [$0842], sp                                ; $6a07: $08 $42 $08
    ld b, d                                       ; $6a0a: $42
    ld [$0842], sp                                ; $6a0b: $08 $42 $08
    ld b, d                                       ; $6a0e: $42
    ld [$0000], sp                                ; $6a0f: $08 $00 $00
    ld b, d                                       ; $6a12: $42
    ld [$0842], sp                                ; $6a13: $08 $42 $08
    ld b, d                                       ; $6a16: $42
    ld [$0842], sp                                ; $6a17: $08 $42 $08
    ld b, d                                       ; $6a1a: $42
    ld [$0842], sp                                ; $6a1b: $08 $42 $08
    ld b, d                                       ; $6a1e: $42
    ld [$0842], sp                                ; $6a1f: $08 $42 $08
    ld b, d                                       ; $6a22: $42
    ld [$0842], sp                                ; $6a23: $08 $42 $08
    ld b, d                                       ; $6a26: $42
    ld [$0842], sp                                ; $6a27: $08 $42 $08
    ld b, d                                       ; $6a2a: $42
    ld [$0842], sp                                ; $6a2b: $08 $42 $08
    ld b, d                                       ; $6a2e: $42
    ld [$00b2], sp                                ; $6a2f: $08 $b2 $00
    call $eb00                                    ; $6a32: $cd $00 $eb
    nop                                           ; $6a35: $00
    rst RST_18                                    ; $6a36: $df
    nop                                           ; $6a37: $00
    or l                                          ; $6a38: $b5
    nop                                           ; $6a39: $00
    call $c800                                    ; $6a3a: $cd $00 $c8
    nop                                           ; $6a3d: $00
    rst RST_10                                    ; $6a3e: $d7
    nop                                           ; $6a3f: $00
    rst RST_20                                    ; $6a40: $e7
    nop                                           ; $6a41: $00
    rst RST_20                                    ; $6a42: $e7
    nop                                           ; $6a43: $00
    cp $ff                                        ; $6a44: $fe $ff
    or e                                          ; $6a46: $b3
    nop                                           ; $6a47: $00
    ret c                                         ; $6a48: $d8

    nop                                           ; $6a49: $00
    pop af                                        ; $6a4a: $f1
    nop                                           ; $6a4b: $00
    rst RST_10                                    ; $6a4c: $d7
    nop                                           ; $6a4d: $00
    rst RST_18                                    ; $6a4e: $df
    nop                                           ; $6a4f: $00
    ret c                                         ; $6a50: $d8

    nop                                           ; $6a51: $00
    call $d100                                    ; $6a52: $cd $00 $d1
    nop                                           ; $6a55: $00
    ret                                           ; $6a56: $c9


    nop                                           ; $6a57: $00
    rst RST_18                                    ; $6a58: $df
    nop                                           ; $6a59: $00
    jp z, $d300                                   ; $6a5a: $ca $00 $d3

    nop                                           ; $6a5d: $00
    sub $00                                       ; $6a5e: $d6 $00
    rst RST_18                                    ; $6a60: $df
    nop                                           ; $6a61: $00
    reti                                          ; $6a62: $d9


    nop                                           ; $6a63: $00
    rst RST_10                                    ; $6a64: $d7
    nop                                           ; $6a65: $00
    rst RST_18                                    ; $6a66: $df
    nop                                           ; $6a67: $00
    ret c                                         ; $6a68: $d8

    nop                                           ; $6a69: $00
    db $d3                                        ; $6a6a: $d3
    nop                                           ; $6a6b: $00
    rst RST_18                                    ; $6a6c: $df
    nop                                           ; $6a6d: $00
    rst RST_10                                    ; $6a6e: $d7
    nop                                           ; $6a6f: $00
    db $d3                                        ; $6a70: $d3
    nop                                           ; $6a71: $00
    ret nc                                        ; $6a72: $d0

    nop                                           ; $6a73: $00
    jp c, $c900                                   ; $6a74: $da $00 $c9

    nop                                           ; $6a77: $00
    cp $ff                                        ; $6a78: $fe $ff
    ret c                                         ; $6a7a: $d8

    nop                                           ; $6a7b: $00
    call z, $c900                                 ; $6a7c: $cc $00 $c9
    nop                                           ; $6a7f: $00
    rst RST_18                                    ; $6a80: $df
    nop                                           ; $6a81: $00
    pop de                                        ; $6a82: $d1
    nop                                           ; $6a83: $00
    db $dd                                        ; $6a84: $dd
    nop                                           ; $6a85: $00
    rst RST_10                                    ; $6a86: $d7
    nop                                           ; $6a87: $00
    ret c                                         ; $6a88: $d8

    nop                                           ; $6a89: $00
    ret                                           ; $6a8a: $c9


    nop                                           ; $6a8b: $00
    sub $00                                       ; $6a8c: $d6 $00
    db $dd                                        ; $6a8e: $dd
    nop                                           ; $6a8f: $00
    rst RST_18                                    ; $6a90: $df
    nop                                           ; $6a91: $00
    db $d3                                        ; $6a92: $d3
    nop                                           ; $6a93: $00
    jp z, $fe00                                   ; $6a94: $ca $00 $fe

    rst RST_38                                    ; $6a97: $ff
    push hl                                       ; $6a98: $e5
    nop                                           ; $6a99: $00
    cp d                                          ; $6a9a: $ba
    nop                                           ; $6a9b: $00
    call $c700                                    ; $6a9c: $cd $00 $c7
    nop                                           ; $6a9f: $00
    sub $00                                       ; $6aa0: $d6 $00
    db $d3                                        ; $6aa2: $d3
    nop                                           ; $6aa3: $00
    rst RST_10                                    ; $6aa4: $d7
    nop                                           ; $6aa5: $00
    rst RST_10                                    ; $6aa6: $d7
    nop                                           ; $6aa7: $00
    and $00                                       ; $6aa8: $e6 $00
    rst RST_20                                    ; $6aaa: $e7
    nop                                           ; $6aab: $00
    rst RST_38                                    ; $6aac: $ff
    rst RST_38                                    ; $6aad: $ff
    cp [hl]                                       ; $6aae: $be
    nop                                           ; $6aaf: $00
    call z, $c900                                 ; $6ab0: $cc $00 $c9
    nop                                           ; $6ab3: $00
    rst RST_18                                    ; $6ab4: $df
    nop                                           ; $6ab5: $00
    pop de                                        ; $6ab6: $d1
    nop                                           ; $6ab7: $00
    db $dd                                        ; $6ab8: $dd
    nop                                           ; $6ab9: $00
    rst RST_10                                    ; $6aba: $d7
    nop                                           ; $6abb: $00
    ret c                                         ; $6abc: $d8

    nop                                           ; $6abd: $00
    ret                                           ; $6abe: $c9


    nop                                           ; $6abf: $00
    sub $00                                       ; $6ac0: $d6 $00
    db $dd                                        ; $6ac2: $dd
    nop                                           ; $6ac3: $00
    rst RST_18                                    ; $6ac4: $df
    nop                                           ; $6ac5: $00
    ret nc                                        ; $6ac6: $d0

    nop                                           ; $6ac7: $00
    call $c900                                    ; $6ac8: $cd $00 $c9
    nop                                           ; $6acb: $00
    rst RST_10                                    ; $6acc: $d7
    nop                                           ; $6acd: $00
    rst RST_18                                    ; $6ace: $df
    nop                                           ; $6acf: $00
    call $d200                                    ; $6ad0: $cd $00 $d2
    nop                                           ; $6ad3: $00
    rst RST_18                                    ; $6ad4: $df
    nop                                           ; $6ad5: $00
    ret c                                         ; $6ad6: $d8

    nop                                           ; $6ad7: $00
    call z, $c900                                 ; $6ad8: $cc $00 $c9
    nop                                           ; $6adb: $00
    cp $ff                                        ; $6adc: $fe $ff
    jp nc, $d900                                  ; $6ade: $d2 $00 $d9

    nop                                           ; $6ae1: $00
    pop de                                        ; $6ae2: $d1
    nop                                           ; $6ae3: $00
    add $00                                       ; $6ae4: $c6 $00
    ret                                           ; $6ae6: $c9


    nop                                           ; $6ae7: $00
    sub $00                                       ; $6ae8: $d6 $00
    rst RST_10                                    ; $6aea: $d7
    nop                                           ; $6aeb: $00
    rst RST_18                                    ; $6aec: $df
    nop                                           ; $6aed: $00
    db $d3                                        ; $6aee: $d3
    nop                                           ; $6aef: $00
    jp nc, $df00                                  ; $6af0: $d2 $00 $df

    nop                                           ; $6af3: $00
    ret c                                         ; $6af4: $d8

    nop                                           ; $6af5: $00
    call z, $c900                                 ; $6af6: $cc $00 $c9
    nop                                           ; $6af9: $00
    rst RST_18                                    ; $6afa: $df
    nop                                           ; $6afb: $00
    ret c                                         ; $6afc: $d8

    nop                                           ; $6afd: $00
    db $d3                                        ; $6afe: $d3
    nop                                           ; $6aff: $00
    call nc, rP1                                  ; $6b00: $d4 $00 $ff
    rst RST_38                                    ; $6b03: $ff
    rst RST_18                                    ; $6b04: $df
    nop                                           ; $6b05: $00
    push bc                                       ; $6b06: $c5
    nop                                           ; $6b07: $00
    jp nc, $c800                                  ; $6b08: $d2 $00 $c8

    nop                                           ; $6b0b: $00
    cp $ff                                        ; $6b0c: $fe $ff
    ret c                                         ; $6b0e: $d8

    nop                                           ; $6b0f: $00
    call z, $c900                                 ; $6b10: $cc $00 $c9
    nop                                           ; $6b13: $00
    rst RST_18                                    ; $6b14: $df
    nop                                           ; $6b15: $00
    ret nc                                        ; $6b16: $d0

    nop                                           ; $6b17: $00
    ret                                           ; $6b18: $c9


    nop                                           ; $6b19: $00
    jp z, $d800                                   ; $6b1a: $ca $00 $d8

    nop                                           ; $6b1d: $00
    rst RST_18                                    ; $6b1e: $df
    nop                                           ; $6b1f: $00
    rst RST_10                                    ; $6b20: $d7
    nop                                           ; $6b21: $00
    call $c800                                    ; $6b22: $cd $00 $c8
    nop                                           ; $6b25: $00
    ret                                           ; $6b26: $c9


    nop                                           ; $6b27: $00
    rst RST_38                                    ; $6b28: $ff
    rst RST_38                                    ; $6b29: $ff
    rst RST_18                                    ; $6b2a: $df
    nop                                           ; $6b2b: $00
    db $d3                                        ; $6b2c: $d3
    nop                                           ; $6b2d: $00
    jp z, $df00                                   ; $6b2e: $ca $00 $df

    nop                                           ; $6b31: $00
    ret c                                         ; $6b32: $d8

    nop                                           ; $6b33: $00
    call z, $c900                                 ; $6b34: $cc $00 $c9
    nop                                           ; $6b37: $00
    cp $ff                                        ; $6b38: $fe $ff
    db $db                                        ; $6b3a: $db
    nop                                           ; $6b3b: $00
    call $d200                                    ; $6b3c: $cd $00 $d2
    nop                                           ; $6b3f: $00
    ret z                                         ; $6b40: $c8

    nop                                           ; $6b41: $00
    db $d3                                        ; $6b42: $d3
    nop                                           ; $6b43: $00
    db $db                                        ; $6b44: $db
    nop                                           ; $6b45: $00
    db $eb                                        ; $6b46: $eb
    nop                                           ; $6b47: $00
    rst RST_38                                    ; $6b48: $ff
    rst RST_38                                    ; $6b49: $ff
    db $db                                        ; $6b4a: $db
    nop                                           ; $6b4b: $00
    call z, $cd00                                 ; $6b4c: $cc $00 $cd
    nop                                           ; $6b4f: $00
    rst RST_00                                    ; $6b50: $c7
    nop                                           ; $6b51: $00
    call z, $df00                                 ; $6b52: $cc $00 $df
    nop                                           ; $6b55: $00
    ret c                                         ; $6b56: $d8

    nop                                           ; $6b57: $00
    db $d3                                        ; $6b58: $d3
    nop                                           ; $6b59: $00
    rlc b                                         ; $6b5a: $cb $00
    ret                                           ; $6b5c: $c9


    nop                                           ; $6b5d: $00
    ret c                                         ; $6b5e: $d8

    nop                                           ; $6b5f: $00
    call z, $c900                                 ; $6b60: $cc $00 $c9
    nop                                           ; $6b63: $00
    sub $00                                       ; $6b64: $d6 $00
    rst RST_18                                    ; $6b66: $df
    nop                                           ; $6b67: $00
    db $db                                        ; $6b68: $db
    nop                                           ; $6b69: $00
    call $d000                                    ; $6b6a: $cd $00 $d0
    nop                                           ; $6b6d: $00
    ret nc                                        ; $6b6e: $d0

    nop                                           ; $6b6f: $00
    rst RST_18                                    ; $6b70: $df
    nop                                           ; $6b71: $00
    call z, $c900                                 ; $6b72: $cc $00 $c9
    nop                                           ; $6b75: $00
    ret nc                                        ; $6b76: $d0

    nop                                           ; $6b77: $00
    call nc, $fe00                                ; $6b78: $d4 $00 $fe
    rst RST_38                                    ; $6b7b: $ff
    db $dd                                        ; $6b7c: $dd
    nop                                           ; $6b7d: $00
    db $d3                                        ; $6b7e: $d3
    nop                                           ; $6b7f: $00
    reti                                          ; $6b80: $d9


    nop                                           ; $6b81: $00
    rst RST_18                                    ; $6b82: $df
    nop                                           ; $6b83: $00
    ret c                                         ; $6b84: $d8

    nop                                           ; $6b85: $00
    db $d3                                        ; $6b86: $d3
    nop                                           ; $6b87: $00
    rst RST_18                                    ; $6b88: $df
    nop                                           ; $6b89: $00
    ret z                                         ; $6b8a: $c8

    nop                                           ; $6b8b: $00
    sub $00                                       ; $6b8c: $d6 $00
    push bc                                       ; $6b8e: $c5
    nop                                           ; $6b8f: $00
    db $db                                        ; $6b90: $db
    nop                                           ; $6b91: $00
    rst RST_18                                    ; $6b92: $df
    nop                                           ; $6b93: $00
    ret c                                         ; $6b94: $d8

    nop                                           ; $6b95: $00
    call z, $c900                                 ; $6b96: $cc $00 $c9
    nop                                           ; $6b99: $00
    rst RST_18                                    ; $6b9a: $df
    nop                                           ; $6b9b: $00
    rst RST_10                                    ; $6b9c: $d7
    nop                                           ; $6b9d: $00
    ret                                           ; $6b9e: $c9


    nop                                           ; $6b9f: $00
    rst RST_00                                    ; $6ba0: $c7
    nop                                           ; $6ba1: $00
    sub $00                                       ; $6ba2: $d6 $00
    ret                                           ; $6ba4: $c9


    nop                                           ; $6ba5: $00
    ret c                                         ; $6ba6: $d8

    nop                                           ; $6ba7: $00
    cp $ff                                        ; $6ba8: $fe $ff
    call nc, $cd00                                ; $6baa: $d4 $00 $cd
    nop                                           ; $6bad: $00
    rst RST_00                                    ; $6bae: $c7
    nop                                           ; $6baf: $00
    ret c                                         ; $6bb0: $d8

    nop                                           ; $6bb1: $00
    reti                                          ; $6bb2: $d9


    nop                                           ; $6bb3: $00
    sub $00                                       ; $6bb4: $d6 $00
    ret                                           ; $6bb6: $c9


    nop                                           ; $6bb7: $00
    db $ec                                        ; $6bb8: $ec
    nop                                           ; $6bb9: $00
    rst RST_38                                    ; $6bba: $ff
    rst RST_38                                    ; $6bbb: $ff
    or e                                          ; $6bbc: $b3
    nop                                           ; $6bbd: $00
    jp z, $df00                                   ; $6bbe: $ca $00 $df

    nop                                           ; $6bc1: $00
    db $dd                                        ; $6bc2: $dd
    nop                                           ; $6bc3: $00
    db $d3                                        ; $6bc4: $d3
    nop                                           ; $6bc5: $00
    reti                                          ; $6bc6: $d9


    nop                                           ; $6bc7: $00
    rst RST_18                                    ; $6bc8: $df
    nop                                           ; $6bc9: $00
    rst RST_10                                    ; $6bca: $d7
    nop                                           ; $6bcb: $00
    db $d3                                        ; $6bcc: $d3
    nop                                           ; $6bcd: $00
    ret nc                                        ; $6bce: $d0

    nop                                           ; $6bcf: $00
    jp c, $c900                                   ; $6bd0: $da $00 $c9

    nop                                           ; $6bd3: $00
    rst RST_18                                    ; $6bd4: $df
    nop                                           ; $6bd5: $00
    ret c                                         ; $6bd6: $d8

    nop                                           ; $6bd7: $00
    call z, $c900                                 ; $6bd8: $cc $00 $c9
    nop                                           ; $6bdb: $00
    rst RST_18                                    ; $6bdc: $df
    nop                                           ; $6bdd: $00
    call nc, $d900                                ; $6bde: $d4 $00 $d9
    nop                                           ; $6be1: $00
    sbc $00                                       ; $6be2: $de $00
    sbc $00                                       ; $6be4: $de $00
    ret nc                                        ; $6be6: $d0

    nop                                           ; $6be7: $00
    ret                                           ; $6be8: $c9


    nop                                           ; $6be9: $00
    cp $ff                                        ; $6bea: $fe $ff
    rst RST_00                                    ; $6bec: $c7
    nop                                           ; $6bed: $00
    db $d3                                        ; $6bee: $d3
    nop                                           ; $6bef: $00
    sub $00                                       ; $6bf0: $d6 $00
    sub $00                                       ; $6bf2: $d6 $00
    ret                                           ; $6bf4: $c9


    nop                                           ; $6bf5: $00
    rst RST_00                                    ; $6bf6: $c7
    nop                                           ; $6bf7: $00
    ret c                                         ; $6bf8: $d8

    nop                                           ; $6bf9: $00
    ret nc                                        ; $6bfa: $d0

    nop                                           ; $6bfb: $00
    db $dd                                        ; $6bfc: $dd
    nop                                           ; $6bfd: $00
    db $eb                                        ; $6bfe: $eb
    nop                                           ; $6bff: $00
    rst RST_38                                    ; $6c00: $ff
    rst RST_38                                    ; $6c01: $ff
    rst RST_18                                    ; $6c02: $df
    nop                                           ; $6c03: $00
    ret c                                         ; $6c04: $d8

    nop                                           ; $6c05: $00
    call z, $c900                                 ; $6c06: $cc $00 $c9
    nop                                           ; $6c09: $00
    rst RST_18                                    ; $6c0a: $df
    nop                                           ; $6c0b: $00
    ret                                           ; $6c0c: $c9


    nop                                           ; $6c0d: $00
    jp nc, $d800                                  ; $6c0e: $d2 $00 $d8

    nop                                           ; $6c11: $00
    call $d600                                    ; $6c12: $cd $00 $d6
    nop                                           ; $6c15: $00
    ret                                           ; $6c16: $c9


    nop                                           ; $6c17: $00
    cp $ff                                        ; $6c18: $fe $ff
    call nc, $cd00                                ; $6c1a: $d4 $00 $cd
    nop                                           ; $6c1d: $00
    rst RST_00                                    ; $6c1e: $c7
    nop                                           ; $6c1f: $00
    ret c                                         ; $6c20: $d8

    nop                                           ; $6c21: $00
    reti                                          ; $6c22: $d9


    nop                                           ; $6c23: $00
    sub $00                                       ; $6c24: $d6 $00
    ret                                           ; $6c26: $c9


    nop                                           ; $6c27: $00
    rst RST_18                                    ; $6c28: $df
    nop                                           ; $6c29: $00
    db $db                                        ; $6c2a: $db
    nop                                           ; $6c2b: $00
    call $d000                                    ; $6c2c: $cd $00 $d0
    nop                                           ; $6c2f: $00
    ret nc                                        ; $6c30: $d0

    nop                                           ; $6c31: $00
    rst RST_18                                    ; $6c32: $df
    nop                                           ; $6c33: $00
    add $00                                       ; $6c34: $c6 $00
    ret                                           ; $6c36: $c9


    nop                                           ; $6c37: $00
    rst RST_18                                    ; $6c38: $df
    nop                                           ; $6c39: $00
    rst RST_10                                    ; $6c3a: $d7
    nop                                           ; $6c3b: $00
    call z, $d300                                 ; $6c3c: $cc $00 $d3
    nop                                           ; $6c3f: $00
    db $db                                        ; $6c40: $db
    nop                                           ; $6c41: $00
    jp nc, $ec00                                  ; $6c42: $d2 $00 $ec

    nop                                           ; $6c45: $00
    cp $ff                                        ; $6c46: $fe $ff
    xor $00                                       ; $6c48: $ee $00
    or e                                          ; $6c4a: $b3
    nop                                           ; $6c4b: $00
    ret c                                         ; $6c4c: $d8

    nop                                           ; $6c4d: $00
    pop af                                        ; $6c4e: $f1
    nop                                           ; $6c4f: $00
    rst RST_10                                    ; $6c50: $d7
    nop                                           ; $6c51: $00
    rst RST_18                                    ; $6c52: $df
    nop                                           ; $6c53: $00
    ret c                                         ; $6c54: $d8

    nop                                           ; $6c55: $00
    call z, $c900                                 ; $6c56: $cc $00 $c9
    nop                                           ; $6c59: $00
    rst RST_18                                    ; $6c5a: $df
    nop                                           ; $6c5b: $00
    ret nc                                        ; $6c5c: $d0

    nop                                           ; $6c5d: $00
    ret                                           ; $6c5e: $c9


    nop                                           ; $6c5f: $00
    ret c                                         ; $6c60: $d8

    nop                                           ; $6c61: $00
    ret c                                         ; $6c62: $d8

    nop                                           ; $6c63: $00
    ret                                           ; $6c64: $c9


    nop                                           ; $6c65: $00
    sub $00                                       ; $6c66: $d6 $00
    rst RST_18                                    ; $6c68: $df
    nop                                           ; $6c69: $00
    push hl                                       ; $6c6a: $e5
    nop                                           ; $6c6b: $00
    cp b                                          ; $6c6c: $b8
    nop                                           ; $6c6d: $00
    and $00                                       ; $6c6e: $e6 $00
    db $ec                                        ; $6c70: $ec
    nop                                           ; $6c71: $00
    rst RST_28                                    ; $6c72: $ef
    nop                                           ; $6c73: $00
    rst RST_38                                    ; $6c74: $ff
    rst RST_38                                    ; $6c75: $ff
    or d                                          ; $6c76: $b2
    nop                                           ; $6c77: $00
    ret                                           ; $6c78: $c9


    nop                                           ; $6c79: $00
    sub $00                                       ; $6c7a: $d6 $00
    ret                                           ; $6c7c: $c9


    nop                                           ; $6c7d: $00
    rst RST_18                                    ; $6c7e: $df
    nop                                           ; $6c7f: $00
    push bc                                       ; $6c80: $c5
    nop                                           ; $6c81: $00
    sub $00                                       ; $6c82: $d6 $00
    ret                                           ; $6c84: $c9


    nop                                           ; $6c85: $00
    rst RST_18                                    ; $6c86: $df
    nop                                           ; $6c87: $00
    ret c                                         ; $6c88: $d8

    nop                                           ; $6c89: $00
    call z, $c900                                 ; $6c8a: $cc $00 $c9
    nop                                           ; $6c8d: $00
    rst RST_18                                    ; $6c8e: $df
    nop                                           ; $6c8f: $00
    sub $00                                       ; $6c90: $d6 $00
    reti                                          ; $6c92: $d9


    nop                                           ; $6c93: $00
    ret nc                                        ; $6c94: $d0

    nop                                           ; $6c95: $00
    ret                                           ; $6c96: $c9


    nop                                           ; $6c97: $00
    rst RST_10                                    ; $6c98: $d7
    nop                                           ; $6c99: $00
    rst RST_18                                    ; $6c9a: $df
    nop                                           ; $6c9b: $00
    ret c                                         ; $6c9c: $d8

    nop                                           ; $6c9d: $00
    db $d3                                        ; $6c9e: $d3
    nop                                           ; $6c9f: $00
    cp $ff                                        ; $6ca0: $fe $ff
    rst RST_10                                    ; $6ca2: $d7
    nop                                           ; $6ca3: $00
    db $d3                                        ; $6ca4: $d3
    nop                                           ; $6ca5: $00
    ret nc                                        ; $6ca6: $d0

    nop                                           ; $6ca7: $00
    jp c, $cd00                                   ; $6ca8: $da $00 $cd

    nop                                           ; $6cab: $00
    jp nc, $cb00                                  ; $6cac: $d2 $00 $cb

    nop                                           ; $6caf: $00
    rst RST_18                                    ; $6cb0: $df
    nop                                           ; $6cb1: $00
    ret c                                         ; $6cb2: $d8

    nop                                           ; $6cb3: $00
    call z, $c900                                 ; $6cb4: $cc $00 $c9
    nop                                           ; $6cb7: $00
    rst RST_18                                    ; $6cb8: $df
    nop                                           ; $6cb9: $00
    pop de                                        ; $6cba: $d1
    nop                                           ; $6cbb: $00
    db $dd                                        ; $6cbc: $dd
    nop                                           ; $6cbd: $00
    rst RST_10                                    ; $6cbe: $d7
    nop                                           ; $6cbf: $00
    ret c                                         ; $6cc0: $d8

    nop                                           ; $6cc1: $00
    ret                                           ; $6cc2: $c9


    nop                                           ; $6cc3: $00
    sub $00                                       ; $6cc4: $d6 $00
    db $dd                                        ; $6cc6: $dd
    nop                                           ; $6cc7: $00
    db $ed                                        ; $6cc8: $ed
    nop                                           ; $6cc9: $00
    db $ed                                        ; $6cca: $ed
    nop                                           ; $6ccb: $00
    db $ed                                        ; $6ccc: $ed
    nop                                           ; $6ccd: $00
    rst RST_38                                    ; $6cce: $ff
    rst RST_38                                    ; $6ccf: $ff
    cp [hl]                                       ; $6cd0: $be
    nop                                           ; $6cd1: $00
    call z, $c900                                 ; $6cd2: $cc $00 $c9
    nop                                           ; $6cd5: $00
    rst RST_18                                    ; $6cd6: $df
    nop                                           ; $6cd7: $00
    jp nc, $d900                                  ; $6cd8: $d2 $00 $d9

    nop                                           ; $6cdb: $00
    pop de                                        ; $6cdc: $d1
    nop                                           ; $6cdd: $00
    add $00                                       ; $6cde: $c6 $00
    ret                                           ; $6ce0: $c9


    nop                                           ; $6ce1: $00
    sub $00                                       ; $6ce2: $d6 $00
    rst RST_10                                    ; $6ce4: $d7
    nop                                           ; $6ce5: $00
    rst RST_18                                    ; $6ce6: $df
    nop                                           ; $6ce7: $00
    push bc                                       ; $6ce8: $c5
    nop                                           ; $6ce9: $00
    add $00                                       ; $6cea: $c6 $00
    db $d3                                        ; $6cec: $d3
    nop                                           ; $6ced: $00
    jp c, $c900                                   ; $6cee: $da $00 $c9

    nop                                           ; $6cf1: $00
    rst RST_18                                    ; $6cf2: $df
    nop                                           ; $6cf3: $00
    ret c                                         ; $6cf4: $d8

    nop                                           ; $6cf5: $00
    call z, $c900                                 ; $6cf6: $cc $00 $c9
    nop                                           ; $6cf9: $00
    cp $ff                                        ; $6cfa: $fe $ff
    rst RST_00                                    ; $6cfc: $c7
    nop                                           ; $6cfd: $00
    db $d3                                        ; $6cfe: $d3
    nop                                           ; $6cff: $00
    ret nc                                        ; $6d00: $d0

    nop                                           ; $6d01: $00
    reti                                          ; $6d02: $d9


    nop                                           ; $6d03: $00
    pop de                                        ; $6d04: $d1
    nop                                           ; $6d05: $00
    jp nc, $d700                                  ; $6d06: $d2 $00 $d7

    nop                                           ; $6d09: $00
    rst RST_38                                    ; $6d0a: $ff
    rst RST_38                                    ; $6d0b: $ff
    rst RST_18                                    ; $6d0c: $df
    nop                                           ; $6d0d: $00
    ret c                                         ; $6d0e: $d8

    nop                                           ; $6d0f: $00
    ret                                           ; $6d10: $c9


    nop                                           ; $6d11: $00
    ret nc                                        ; $6d12: $d0

    nop                                           ; $6d13: $00
    ret nc                                        ; $6d14: $d0

    nop                                           ; $6d15: $00
    rst RST_18                                    ; $6d16: $df
    nop                                           ; $6d17: $00
    db $dd                                        ; $6d18: $dd
    nop                                           ; $6d19: $00
    db $d3                                        ; $6d1a: $d3
    nop                                           ; $6d1b: $00
    reti                                          ; $6d1c: $d9


    nop                                           ; $6d1d: $00
    rst RST_18                                    ; $6d1e: $df
    nop                                           ; $6d1f: $00
    call z, $d300                                 ; $6d20: $cc $00 $d3
    nop                                           ; $6d23: $00
    db $db                                        ; $6d24: $db
    nop                                           ; $6d25: $00
    cp $ff                                        ; $6d26: $fe $ff
    pop de                                        ; $6d28: $d1
    nop                                           ; $6d29: $00
    push bc                                       ; $6d2a: $c5
    nop                                           ; $6d2b: $00
    jp nc, $dd00                                  ; $6d2c: $d2 $00 $dd

    nop                                           ; $6d2f: $00
    rst RST_18                                    ; $6d30: $df
    nop                                           ; $6d31: $00
    add $00                                       ; $6d32: $c6 $00
    db $d3                                        ; $6d34: $d3
    nop                                           ; $6d35: $00
    call c, $c900                                 ; $6d36: $dc $00 $c9
    nop                                           ; $6d39: $00
    rst RST_10                                    ; $6d3a: $d7
    nop                                           ; $6d3b: $00
    rst RST_18                                    ; $6d3c: $df
    nop                                           ; $6d3d: $00
    db $dd                                        ; $6d3e: $dd
    nop                                           ; $6d3f: $00
    db $d3                                        ; $6d40: $d3
    nop                                           ; $6d41: $00
    reti                                          ; $6d42: $d9


    nop                                           ; $6d43: $00
    rst RST_18                                    ; $6d44: $df
    nop                                           ; $6d45: $00
    jp nc, $c900                                  ; $6d46: $d2 $00 $c9

    nop                                           ; $6d49: $00
    ret                                           ; $6d4a: $c9


    nop                                           ; $6d4b: $00
    ret z                                         ; $6d4c: $c8

    nop                                           ; $6d4d: $00
    rst RST_18                                    ; $6d4e: $df
    nop                                           ; $6d4f: $00
    ret c                                         ; $6d50: $d8

    nop                                           ; $6d51: $00
    db $d3                                        ; $6d52: $d3
    nop                                           ; $6d53: $00
    cp $ff                                        ; $6d54: $fe $ff
    rst RST_00                                    ; $6d56: $c7
    nop                                           ; $6d57: $00
    call z, $cd00                                 ; $6d58: $cc $00 $cd
    nop                                           ; $6d5b: $00
    rst RST_10                                    ; $6d5c: $d7
    nop                                           ; $6d5d: $00
    ret                                           ; $6d5e: $c9


    nop                                           ; $6d5f: $00
    ret nc                                        ; $6d60: $d0

    nop                                           ; $6d61: $00
    rst RST_18                                    ; $6d62: $df
    nop                                           ; $6d63: $00
    call $d200                                    ; $6d64: $cd $00 $d2
    nop                                           ; $6d67: $00
    rst RST_18                                    ; $6d68: $df
    nop                                           ; $6d69: $00
    ret c                                         ; $6d6a: $d8

    nop                                           ; $6d6b: $00
    call z, $c900                                 ; $6d6c: $cc $00 $c9
    nop                                           ; $6d6f: $00
    rst RST_18                                    ; $6d70: $df
    nop                                           ; $6d71: $00
    ret z                                         ; $6d72: $c8

    nop                                           ; $6d73: $00
    db $d3                                        ; $6d74: $d3
    nop                                           ; $6d75: $00
    db $db                                        ; $6d76: $db
    nop                                           ; $6d77: $00
    jp nc, $db00                                  ; $6d78: $d2 $00 $db

    nop                                           ; $6d7b: $00
    push bc                                       ; $6d7c: $c5
    nop                                           ; $6d7d: $00
    sub $00                                       ; $6d7e: $d6 $00
    ret z                                         ; $6d80: $c8

    nop                                           ; $6d81: $00
    cp $ff                                        ; $6d82: $fe $ff
    ret z                                         ; $6d84: $c8

    nop                                           ; $6d85: $00
    call $d600                                    ; $6d86: $cd $00 $d6
    nop                                           ; $6d89: $00
    ret                                           ; $6d8a: $c9


    nop                                           ; $6d8b: $00
    rst RST_00                                    ; $6d8c: $c7
    nop                                           ; $6d8d: $00
    ret c                                         ; $6d8e: $d8

    nop                                           ; $6d8f: $00
    call $d300                                    ; $6d90: $cd $00 $d3
    nop                                           ; $6d93: $00
    jp nc, $ec00                                  ; $6d94: $d2 $00 $ec

    nop                                           ; $6d97: $00
    rst RST_38                                    ; $6d98: $ff
    rst RST_38                                    ; $6d99: $ff
    cp [hl]                                       ; $6d9a: $be
    nop                                           ; $6d9b: $00
    call z, $cd00                                 ; $6d9c: $cc $00 $cd
    nop                                           ; $6d9f: $00
    rst RST_10                                    ; $6da0: $d7
    nop                                           ; $6da1: $00
    rst RST_18                                    ; $6da2: $df
    nop                                           ; $6da3: $00
    db $d3                                        ; $6da4: $d3
    nop                                           ; $6da5: $00
    jp nc, $c900                                  ; $6da6: $d2 $00 $c9

    nop                                           ; $6da9: $00
    rst RST_18                                    ; $6daa: $df
    nop                                           ; $6dab: $00
    call $d700                                    ; $6dac: $cd $00 $d7
    nop                                           ; $6daf: $00
    rst RST_18                                    ; $6db0: $df
    nop                                           ; $6db1: $00
    push bc                                       ; $6db2: $c5
    nop                                           ; $6db3: $00
    rst RST_18                                    ; $6db4: $df
    nop                                           ; $6db5: $00
    and l                                         ; $6db6: $a5
    nop                                           ; $6db7: $00
    db $eb                                        ; $6db8: $eb
    nop                                           ; $6db9: $00
    rst RST_38                                    ; $6dba: $ff
    rst RST_38                                    ; $6dbb: $ff
    rst RST_18                                    ; $6dbc: $df
    nop                                           ; $6dbd: $00
    rst RST_10                                    ; $6dbe: $d7
    nop                                           ; $6dbf: $00
    db $d3                                        ; $6dc0: $d3
    nop                                           ; $6dc1: $00
    rst RST_18                                    ; $6dc2: $df
    nop                                           ; $6dc3: $00
    db $dd                                        ; $6dc4: $dd
    nop                                           ; $6dc5: $00
    db $d3                                        ; $6dc6: $d3
    nop                                           ; $6dc7: $00
    reti                                          ; $6dc8: $d9


    nop                                           ; $6dc9: $00
    cp $ff                                        ; $6dca: $fe $ff
    db $db                                        ; $6dcc: $db
    nop                                           ; $6dcd: $00
    call $d000                                    ; $6dce: $cd $00 $d0
    nop                                           ; $6dd1: $00
    ret nc                                        ; $6dd2: $d0

    nop                                           ; $6dd3: $00
    rst RST_18                                    ; $6dd4: $df
    nop                                           ; $6dd5: $00
    jp nc, $c900                                  ; $6dd6: $d2 $00 $c9

    nop                                           ; $6dd9: $00
    ret                                           ; $6dda: $c9


    nop                                           ; $6ddb: $00
    ret z                                         ; $6ddc: $c8

    nop                                           ; $6ddd: $00
    rst RST_18                                    ; $6dde: $df
    nop                                           ; $6ddf: $00
    ret c                                         ; $6de0: $d8

    nop                                           ; $6de1: $00
    db $d3                                        ; $6de2: $d3
    nop                                           ; $6de3: $00
    rst RST_18                                    ; $6de4: $df
    nop                                           ; $6de5: $00
    rst RST_00                                    ; $6de6: $c7
    nop                                           ; $6de7: $00
    call z, $cd00                                 ; $6de8: $cc $00 $cd
    nop                                           ; $6deb: $00
    rst RST_10                                    ; $6dec: $d7
    nop                                           ; $6ded: $00
    ret                                           ; $6dee: $c9


    nop                                           ; $6def: $00
    ret nc                                        ; $6df0: $d0

    nop                                           ; $6df1: $00
    rst RST_18                                    ; $6df2: $df
    nop                                           ; $6df3: $00
    call $d200                                    ; $6df4: $cd $00 $d2
    nop                                           ; $6df7: $00
    rst RST_18                                    ; $6df8: $df
    nop                                           ; $6df9: $00
    and l                                         ; $6dfa: $a5
    nop                                           ; $6dfb: $00
    cp $ff                                        ; $6dfc: $fe $ff
    rst RST_00                                    ; $6dfe: $c7
    nop                                           ; $6dff: $00
    db $d3                                        ; $6e00: $d3
    nop                                           ; $6e01: $00
    jp nc, $d700                                  ; $6e02: $d2 $00 $d7

    nop                                           ; $6e05: $00
    ret                                           ; $6e06: $c9


    nop                                           ; $6e07: $00
    rst RST_00                                    ; $6e08: $c7
    nop                                           ; $6e09: $00
    reti                                          ; $6e0a: $d9


    nop                                           ; $6e0b: $00
    ret c                                         ; $6e0c: $d8

    nop                                           ; $6e0d: $00
    call $da00                                    ; $6e0e: $cd $00 $da
    nop                                           ; $6e11: $00
    ret                                           ; $6e12: $c9


    nop                                           ; $6e13: $00
    rst RST_18                                    ; $6e14: $df
    nop                                           ; $6e15: $00
    add $00                                       ; $6e16: $c6 $00
    db $d3                                        ; $6e18: $d3
    nop                                           ; $6e19: $00
    call c, $c900                                 ; $6e1a: $dc $00 $c9
    nop                                           ; $6e1d: $00
    rst RST_10                                    ; $6e1e: $d7
    nop                                           ; $6e1f: $00
    db $ec                                        ; $6e20: $ec
    nop                                           ; $6e21: $00
    rst RST_38                                    ; $6e22: $ff
    rst RST_38                                    ; $6e23: $ff
    cp [hl]                                       ; $6e24: $be
    nop                                           ; $6e25: $00
    call z, $c900                                 ; $6e26: $cc $00 $c9
    nop                                           ; $6e29: $00
    rst RST_18                                    ; $6e2a: $df
    nop                                           ; $6e2b: $00
    jp nc, $d900                                  ; $6e2c: $d2 $00 $d9

    nop                                           ; $6e2f: $00
    pop de                                        ; $6e30: $d1
    nop                                           ; $6e31: $00
    add $00                                       ; $6e32: $c6 $00
    ret                                           ; $6e34: $c9


    nop                                           ; $6e35: $00
    sub $00                                       ; $6e36: $d6 $00
    rst RST_10                                    ; $6e38: $d7
    nop                                           ; $6e39: $00
    rst RST_18                                    ; $6e3a: $df
    nop                                           ; $6e3b: $00
    db $d3                                        ; $6e3c: $d3
    nop                                           ; $6e3d: $00
    jp nc, $df00                                  ; $6e3e: $d2 $00 $df

    nop                                           ; $6e41: $00
    ret c                                         ; $6e42: $d8

    nop                                           ; $6e43: $00
    call z, $c900                                 ; $6e44: $cc $00 $c9
    nop                                           ; $6e47: $00
    rst RST_18                                    ; $6e48: $df
    nop                                           ; $6e49: $00
    ret nc                                        ; $6e4a: $d0

    nop                                           ; $6e4b: $00
    ret                                           ; $6e4c: $c9


    nop                                           ; $6e4d: $00
    jp z, $d800                                   ; $6e4e: $ca $00 $d8

    nop                                           ; $6e51: $00
    cp $ff                                        ; $6e52: $fe $ff
    db $d3                                        ; $6e54: $d3
    nop                                           ; $6e55: $00
    jp z, $df00                                   ; $6e56: $ca $00 $df

    nop                                           ; $6e59: $00
    ret c                                         ; $6e5a: $d8

    nop                                           ; $6e5b: $00
    call z, $c900                                 ; $6e5c: $cc $00 $c9
    nop                                           ; $6e5f: $00
    rst RST_18                                    ; $6e60: $df
    nop                                           ; $6e61: $00
    sub $00                                       ; $6e62: $d6 $00
    db $d3                                        ; $6e64: $d3
    nop                                           ; $6e65: $00
    db $db                                        ; $6e66: $db
    nop                                           ; $6e67: $00
    rst RST_10                                    ; $6e68: $d7
    nop                                           ; $6e69: $00
    rst RST_38                                    ; $6e6a: $ff
    rst RST_38                                    ; $6e6b: $ff
    rst RST_18                                    ; $6e6c: $df
    nop                                           ; $6e6d: $00
    ret c                                         ; $6e6e: $d8

    nop                                           ; $6e6f: $00
    ret                                           ; $6e70: $c9


    nop                                           ; $6e71: $00
    ret nc                                        ; $6e72: $d0

    nop                                           ; $6e73: $00
    ret nc                                        ; $6e74: $d0

    nop                                           ; $6e75: $00
    rst RST_18                                    ; $6e76: $df
    nop                                           ; $6e77: $00
    db $dd                                        ; $6e78: $dd
    nop                                           ; $6e79: $00
    db $d3                                        ; $6e7a: $d3
    nop                                           ; $6e7b: $00
    reti                                          ; $6e7c: $d9


    nop                                           ; $6e7d: $00
    cp $ff                                        ; $6e7e: $fe $ff
    call z, $d300                                 ; $6e80: $cc $00 $d3
    nop                                           ; $6e83: $00
    db $db                                        ; $6e84: $db
    nop                                           ; $6e85: $00
    rst RST_18                                    ; $6e86: $df
    nop                                           ; $6e87: $00
    pop de                                        ; $6e88: $d1
    nop                                           ; $6e89: $00
    push bc                                       ; $6e8a: $c5
    nop                                           ; $6e8b: $00
    jp nc, $dd00                                  ; $6e8c: $d2 $00 $dd

    nop                                           ; $6e8f: $00
    rst RST_18                                    ; $6e90: $df
    nop                                           ; $6e91: $00
    add $00                                       ; $6e92: $c6 $00
    db $d3                                        ; $6e94: $d3
    nop                                           ; $6e95: $00
    call c, $c900                                 ; $6e96: $dc $00 $c9
    nop                                           ; $6e99: $00
    rst RST_10                                    ; $6e9a: $d7
    nop                                           ; $6e9b: $00
    rst RST_18                                    ; $6e9c: $df
    nop                                           ; $6e9d: $00
    db $dd                                        ; $6e9e: $dd
    nop                                           ; $6e9f: $00
    db $d3                                        ; $6ea0: $d3
    nop                                           ; $6ea1: $00
    reti                                          ; $6ea2: $d9


    nop                                           ; $6ea3: $00
    cp $ff                                        ; $6ea4: $fe $ff
    jp nc, $c900                                  ; $6ea6: $d2 $00 $c9

    nop                                           ; $6ea9: $00
    ret                                           ; $6eaa: $c9


    nop                                           ; $6eab: $00
    ret z                                         ; $6eac: $c8

    nop                                           ; $6ead: $00
    rst RST_18                                    ; $6eae: $df
    nop                                           ; $6eaf: $00
    ret c                                         ; $6eb0: $d8

    nop                                           ; $6eb1: $00
    db $d3                                        ; $6eb2: $d3
    nop                                           ; $6eb3: $00
    rst RST_18                                    ; $6eb4: $df
    nop                                           ; $6eb5: $00
    rst RST_00                                    ; $6eb6: $c7
    nop                                           ; $6eb7: $00
    call z, $cd00                                 ; $6eb8: $cc $00 $cd
    nop                                           ; $6ebb: $00
    rst RST_10                                    ; $6ebc: $d7
    nop                                           ; $6ebd: $00
    ret                                           ; $6ebe: $c9


    nop                                           ; $6ebf: $00
    ret nc                                        ; $6ec0: $d0

    nop                                           ; $6ec1: $00
    rst RST_18                                    ; $6ec2: $df
    nop                                           ; $6ec3: $00
    call $d200                                    ; $6ec4: $cd $00 $d2
    nop                                           ; $6ec7: $00
    rst RST_18                                    ; $6ec8: $df
    nop                                           ; $6ec9: $00
    ret c                                         ; $6eca: $d8

    nop                                           ; $6ecb: $00
    call z, $c900                                 ; $6ecc: $cc $00 $c9
    nop                                           ; $6ecf: $00
    cp $ff                                        ; $6ed0: $fe $ff
    ret nc                                        ; $6ed2: $d0

    nop                                           ; $6ed3: $00
    ret                                           ; $6ed4: $c9


    nop                                           ; $6ed5: $00
    jp z, $d800                                   ; $6ed6: $ca $00 $d8

    nop                                           ; $6ed9: $00
    ldh a, [rP1]                                  ; $6eda: $f0 $00
    ret c                                         ; $6edc: $d8

    nop                                           ; $6edd: $00
    db $d3                                        ; $6ede: $d3
    nop                                           ; $6edf: $00
    ldh a, [rP1]                                  ; $6ee0: $f0 $00
    sub $00                                       ; $6ee2: $d6 $00
    call $cb00                                    ; $6ee4: $cd $00 $cb
    nop                                           ; $6ee7: $00
    call z, $d800                                 ; $6ee8: $cc $00 $d8
    nop                                           ; $6eeb: $00
    rst RST_18                                    ; $6eec: $df
    nop                                           ; $6eed: $00
    ret z                                         ; $6eee: $c8

    nop                                           ; $6eef: $00
    call $d600                                    ; $6ef0: $cd $00 $d6
    nop                                           ; $6ef3: $00
    ret                                           ; $6ef4: $c9


    nop                                           ; $6ef5: $00
    rst RST_00                                    ; $6ef6: $c7
    nop                                           ; $6ef7: $00
    ret c                                         ; $6ef8: $d8

    nop                                           ; $6ef9: $00
    call $d300                                    ; $6efa: $cd $00 $d3
    nop                                           ; $6efd: $00
    jp nc, $ec00                                  ; $6efe: $d2 $00 $ec

    nop                                           ; $6f01: $00
    rst RST_38                                    ; $6f02: $ff
    rst RST_38                                    ; $6f03: $ff
    cp [hl]                                       ; $6f04: $be
    nop                                           ; $6f05: $00
    call z, $cd00                                 ; $6f06: $cc $00 $cd
    nop                                           ; $6f09: $00
    rst RST_10                                    ; $6f0a: $d7
    nop                                           ; $6f0b: $00
    rst RST_18                                    ; $6f0c: $df
    nop                                           ; $6f0d: $00
    db $d3                                        ; $6f0e: $d3
    nop                                           ; $6f0f: $00
    jp nc, $c900                                  ; $6f10: $d2 $00 $c9

    nop                                           ; $6f13: $00
    rst RST_18                                    ; $6f14: $df
    nop                                           ; $6f15: $00
    call $d700                                    ; $6f16: $cd $00 $d7
    nop                                           ; $6f19: $00
    rst RST_18                                    ; $6f1a: $df
    nop                                           ; $6f1b: $00
    push bc                                       ; $6f1c: $c5
    nop                                           ; $6f1d: $00
    rst RST_18                                    ; $6f1e: $df
    nop                                           ; $6f1f: $00
    and e                                         ; $6f20: $a3
    nop                                           ; $6f21: $00
    rst RST_18                                    ; $6f22: $df
    nop                                           ; $6f23: $00
    push bc                                       ; $6f24: $c5
    nop                                           ; $6f25: $00
    jp nc, $c800                                  ; $6f26: $d2 $00 $c8

    nop                                           ; $6f29: $00
    rst RST_18                                    ; $6f2a: $df
    nop                                           ; $6f2b: $00
    push bc                                       ; $6f2c: $c5
    nop                                           ; $6f2d: $00
    rst RST_18                                    ; $6f2e: $df
    nop                                           ; $6f2f: $00
    and c                                         ; $6f30: $a1
    nop                                           ; $6f31: $00
    db $eb                                        ; $6f32: $eb
    nop                                           ; $6f33: $00
    rst RST_38                                    ; $6f34: $ff
    rst RST_38                                    ; $6f35: $ff
    rst RST_18                                    ; $6f36: $df
    nop                                           ; $6f37: $00
    rst RST_10                                    ; $6f38: $d7
    nop                                           ; $6f39: $00
    db $d3                                        ; $6f3a: $d3
    nop                                           ; $6f3b: $00
    cp $ff                                        ; $6f3c: $fe $ff
    db $dd                                        ; $6f3e: $dd
    nop                                           ; $6f3f: $00
    db $d3                                        ; $6f40: $d3
    nop                                           ; $6f41: $00
    reti                                          ; $6f42: $d9


    nop                                           ; $6f43: $00
    rst RST_18                                    ; $6f44: $df
    nop                                           ; $6f45: $00
    db $db                                        ; $6f46: $db
    nop                                           ; $6f47: $00
    call $d000                                    ; $6f48: $cd $00 $d0
    nop                                           ; $6f4b: $00
    ret nc                                        ; $6f4c: $d0

    nop                                           ; $6f4d: $00
    rst RST_18                                    ; $6f4e: $df
    nop                                           ; $6f4f: $00
    jp nc, $c900                                  ; $6f50: $d2 $00 $c9

    nop                                           ; $6f53: $00
    ret                                           ; $6f54: $c9


    nop                                           ; $6f55: $00
    ret z                                         ; $6f56: $c8

    nop                                           ; $6f57: $00
    rst RST_18                                    ; $6f58: $df
    nop                                           ; $6f59: $00
    ret c                                         ; $6f5a: $d8

    nop                                           ; $6f5b: $00
    db $d3                                        ; $6f5c: $d3
    nop                                           ; $6f5d: $00
    rst RST_18                                    ; $6f5e: $df
    nop                                           ; $6f5f: $00
    rst RST_00                                    ; $6f60: $c7
    nop                                           ; $6f61: $00
    call z, $cd00                                 ; $6f62: $cc $00 $cd
    nop                                           ; $6f65: $00
    rst RST_10                                    ; $6f66: $d7
    nop                                           ; $6f67: $00
    ret                                           ; $6f68: $c9


    nop                                           ; $6f69: $00
    ret nc                                        ; $6f6a: $d0

    nop                                           ; $6f6b: $00
    rst RST_18                                    ; $6f6c: $df
    nop                                           ; $6f6d: $00
    call $d200                                    ; $6f6e: $cd $00 $d2
    nop                                           ; $6f71: $00
    cp $ff                                        ; $6f72: $fe $ff
    and e                                         ; $6f74: $a3
    nop                                           ; $6f75: $00
    rst RST_18                                    ; $6f76: $df
    nop                                           ; $6f77: $00
    rst RST_00                                    ; $6f78: $c7
    nop                                           ; $6f79: $00
    db $d3                                        ; $6f7a: $d3
    nop                                           ; $6f7b: $00
    jp nc, $d700                                  ; $6f7c: $d2 $00 $d7

    nop                                           ; $6f7f: $00
    ret                                           ; $6f80: $c9


    nop                                           ; $6f81: $00
    rst RST_00                                    ; $6f82: $c7
    nop                                           ; $6f83: $00
    reti                                          ; $6f84: $d9


    nop                                           ; $6f85: $00
    ret c                                         ; $6f86: $d8

    nop                                           ; $6f87: $00
    call $da00                                    ; $6f88: $cd $00 $da
    nop                                           ; $6f8b: $00
    ret                                           ; $6f8c: $c9


    nop                                           ; $6f8d: $00
    rst RST_18                                    ; $6f8e: $df
    nop                                           ; $6f8f: $00
    add $00                                       ; $6f90: $c6 $00
    db $d3                                        ; $6f92: $d3
    nop                                           ; $6f93: $00
    call c, $c900                                 ; $6f94: $dc $00 $c9
    nop                                           ; $6f97: $00
    rst RST_10                                    ; $6f98: $d7
    nop                                           ; $6f99: $00
    rst RST_18                                    ; $6f9a: $df
    nop                                           ; $6f9b: $00
    push bc                                       ; $6f9c: $c5
    nop                                           ; $6f9d: $00
    jp nc, $c800                                  ; $6f9e: $d2 $00 $c8

    nop                                           ; $6fa1: $00
    cp $ff                                        ; $6fa2: $fe $ff
    and c                                         ; $6fa4: $a1
    nop                                           ; $6fa5: $00
    rst RST_18                                    ; $6fa6: $df
    nop                                           ; $6fa7: $00
    rst RST_10                                    ; $6fa8: $d7
    nop                                           ; $6fa9: $00
    call $d200                                    ; $6faa: $cd $00 $d2
    nop                                           ; $6fad: $00
    rlc b                                         ; $6fae: $cb $00
    ret nc                                        ; $6fb0: $d0

    nop                                           ; $6fb1: $00
    ret                                           ; $6fb2: $c9


    nop                                           ; $6fb3: $00
    rst RST_18                                    ; $6fb4: $df
    nop                                           ; $6fb5: $00
    add $00                                       ; $6fb6: $c6 $00
    db $d3                                        ; $6fb8: $d3
    nop                                           ; $6fb9: $00
    call c, $eb00                                 ; $6fba: $dc $00 $eb
    nop                                           ; $6fbd: $00
    rst RST_18                                    ; $6fbe: $df
    nop                                           ; $6fbf: $00
    rst RST_10                                    ; $6fc0: $d7
    nop                                           ; $6fc1: $00
    ret                                           ; $6fc2: $c9


    nop                                           ; $6fc3: $00
    call nc, $c500                                ; $6fc4: $d4 $00 $c5
    nop                                           ; $6fc7: $00
    sub $00                                       ; $6fc8: $d6 $00
    push bc                                       ; $6fca: $c5
    nop                                           ; $6fcb: $00
    ret c                                         ; $6fcc: $d8

    nop                                           ; $6fcd: $00
    ret                                           ; $6fce: $c9


    nop                                           ; $6fcf: $00
    ret z                                         ; $6fd0: $c8

    nop                                           ; $6fd1: $00
    cp $ff                                        ; $6fd2: $fe $ff
    add $00                                       ; $6fd4: $c6 $00
    db $dd                                        ; $6fd6: $dd
    nop                                           ; $6fd7: $00
    rst RST_18                                    ; $6fd8: $df
    nop                                           ; $6fd9: $00
    push bc                                       ; $6fda: $c5
    nop                                           ; $6fdb: $00
    ret c                                         ; $6fdc: $d8

    nop                                           ; $6fdd: $00
    rst RST_18                                    ; $6fde: $df
    nop                                           ; $6fdf: $00
    ret nc                                        ; $6fe0: $d0

    nop                                           ; $6fe1: $00
    ret                                           ; $6fe2: $c9


    nop                                           ; $6fe3: $00
    push bc                                       ; $6fe4: $c5
    nop                                           ; $6fe5: $00
    rst RST_10                                    ; $6fe6: $d7
    nop                                           ; $6fe7: $00
    ret c                                         ; $6fe8: $d8

    nop                                           ; $6fe9: $00
    rst RST_18                                    ; $6fea: $df
    nop                                           ; $6feb: $00
    and c                                         ; $6fec: $a1
    nop                                           ; $6fed: $00
    rst RST_18                                    ; $6fee: $df
    nop                                           ; $6fef: $00
    rst RST_10                                    ; $6ff0: $d7
    nop                                           ; $6ff1: $00
    call nc, $c500                                ; $6ff2: $d4 $00 $c5
    nop                                           ; $6ff5: $00
    rst RST_00                                    ; $6ff6: $c7
    nop                                           ; $6ff7: $00
    ret                                           ; $6ff8: $c9


    nop                                           ; $6ff9: $00
    db $ec                                        ; $6ffa: $ec
    nop                                           ; $6ffb: $00
    rst RST_38                                    ; $6ffc: $ff
    rst RST_38                                    ; $6ffd: $ff
    or e                                          ; $6ffe: $b3
    nop                                           ; $6fff: $00
    jp z, $df00                                   ; $7000: $ca $00 $df

    nop                                           ; $7003: $00
    db $dd                                        ; $7004: $dd
    nop                                           ; $7005: $00
    db $d3                                        ; $7006: $d3
    nop                                           ; $7007: $00
    reti                                          ; $7008: $d9


    nop                                           ; $7009: $00
    rst RST_18                                    ; $700a: $df
    nop                                           ; $700b: $00
    ret z                                         ; $700c: $c8

    nop                                           ; $700d: $00
    db $d3                                        ; $700e: $d3
    nop                                           ; $700f: $00
    rst RST_18                                    ; $7010: $df
    nop                                           ; $7011: $00
    jp nc, $d300                                  ; $7012: $d2 $00 $d3

    nop                                           ; $7015: $00
    ret c                                         ; $7016: $d8

    nop                                           ; $7017: $00
    rst RST_18                                    ; $7018: $df
    nop                                           ; $7019: $00
    rst RST_10                                    ; $701a: $d7
    nop                                           ; $701b: $00
    db $d3                                        ; $701c: $d3
    nop                                           ; $701d: $00
    ret nc                                        ; $701e: $d0

    nop                                           ; $701f: $00
    jp c, $c900                                   ; $7020: $da $00 $c9

    nop                                           ; $7023: $00
    rst RST_18                                    ; $7024: $df
    nop                                           ; $7025: $00
    ret c                                         ; $7026: $d8

    nop                                           ; $7027: $00
    call z, $c900                                 ; $7028: $cc $00 $c9
    nop                                           ; $702b: $00
    cp $ff                                        ; $702c: $fe $ff
    rst RST_10                                    ; $702e: $d7
    nop                                           ; $702f: $00
    ret                                           ; $7030: $c9


    nop                                           ; $7031: $00
    rst RST_00                                    ; $7032: $c7
    nop                                           ; $7033: $00
    sub $00                                       ; $7034: $d6 $00
    ret                                           ; $7036: $c9


    nop                                           ; $7037: $00
    ret c                                         ; $7038: $d8

    nop                                           ; $7039: $00
    rst RST_18                                    ; $703a: $df
    nop                                           ; $703b: $00
    call nc, $cd00                                ; $703c: $d4 $00 $cd
    nop                                           ; $703f: $00
    rst RST_00                                    ; $7040: $c7
    nop                                           ; $7041: $00
    ret c                                         ; $7042: $d8

    nop                                           ; $7043: $00
    reti                                          ; $7044: $d9


    nop                                           ; $7045: $00
    sub $00                                       ; $7046: $d6 $00
    ret                                           ; $7048: $c9


    nop                                           ; $7049: $00
    rst RST_18                                    ; $704a: $df
    nop                                           ; $704b: $00
    call $d200                                    ; $704c: $cd $00 $d2
    nop                                           ; $704f: $00
    rst RST_18                                    ; $7050: $df
    nop                                           ; $7051: $00
    and e                                         ; $7052: $a3
    nop                                           ; $7053: $00
    and b                                         ; $7054: $a0
    nop                                           ; $7055: $00
    cp $ff                                        ; $7056: $fe $ff
    pop de                                        ; $7058: $d1
    nop                                           ; $7059: $00
    call $d200                                    ; $705a: $cd $00 $d2
    nop                                           ; $705d: $00
    reti                                          ; $705e: $d9


    nop                                           ; $705f: $00
    ret c                                         ; $7060: $d8

    nop                                           ; $7061: $00
    ret                                           ; $7062: $c9


    nop                                           ; $7063: $00
    rst RST_10                                    ; $7064: $d7
    nop                                           ; $7065: $00
    db $eb                                        ; $7066: $eb
    nop                                           ; $7067: $00
    rst RST_38                                    ; $7068: $ff
    rst RST_38                                    ; $7069: $ff
    rst RST_18                                    ; $706a: $df
    nop                                           ; $706b: $00
    ret c                                         ; $706c: $d8

    nop                                           ; $706d: $00
    call z, $c900                                 ; $706e: $cc $00 $c9
    nop                                           ; $7071: $00
    jp nc, $df00                                  ; $7072: $d2 $00 $df

    nop                                           ; $7075: $00
    db $dd                                        ; $7076: $dd
    nop                                           ; $7077: $00
    db $d3                                        ; $7078: $d3
    nop                                           ; $7079: $00
    reti                                          ; $707a: $d9


    nop                                           ; $707b: $00
    sub $00                                       ; $707c: $d6 $00
    rst RST_18                                    ; $707e: $df
    nop                                           ; $707f: $00
    rlc b                                         ; $7080: $cb $00
    push bc                                       ; $7082: $c5
    nop                                           ; $7083: $00
    pop de                                        ; $7084: $d1
    nop                                           ; $7085: $00
    ret                                           ; $7086: $c9


    nop                                           ; $7087: $00
    cp $ff                                        ; $7088: $fe $ff
    call $d700                                    ; $708a: $cd $00 $d7
    nop                                           ; $708d: $00
    rst RST_18                                    ; $708e: $df
    nop                                           ; $708f: $00
    db $d3                                        ; $7090: $d3
    nop                                           ; $7091: $00
    jp c, $c900                                   ; $7092: $da $00 $c9

    nop                                           ; $7095: $00
    sub $00                                       ; $7096: $d6 $00
    db $ec                                        ; $7098: $ec
    nop                                           ; $7099: $00
    rst RST_38                                    ; $709a: $ff
    rst RST_38                                    ; $709b: $ff
    or e                                          ; $709c: $b3
    nop                                           ; $709d: $00
    jp z, $df00                                   ; $709e: $ca $00 $df

    nop                                           ; $70a1: $00
    db $dd                                        ; $70a2: $dd
    nop                                           ; $70a3: $00
    db $d3                                        ; $70a4: $d3
    nop                                           ; $70a5: $00
    reti                                          ; $70a6: $d9


    nop                                           ; $70a7: $00
    rst RST_18                                    ; $70a8: $df
    nop                                           ; $70a9: $00
    pop de                                        ; $70aa: $d1
    nop                                           ; $70ab: $00
    push bc                                       ; $70ac: $c5
    nop                                           ; $70ad: $00
    rst RST_08                                    ; $70ae: $cf
    nop                                           ; $70af: $00
    ret                                           ; $70b0: $c9


    nop                                           ; $70b1: $00
    rst RST_18                                    ; $70b2: $df
    nop                                           ; $70b3: $00
    pop de                                        ; $70b4: $d1
    nop                                           ; $70b5: $00
    call $d700                                    ; $70b6: $cd $00 $d7
    nop                                           ; $70b9: $00
    ret c                                         ; $70ba: $d8

    nop                                           ; $70bb: $00
    push bc                                       ; $70bc: $c5
    nop                                           ; $70bd: $00
    rst RST_08                                    ; $70be: $cf
    nop                                           ; $70bf: $00
    ret                                           ; $70c0: $c9


    nop                                           ; $70c1: $00
    db $eb                                        ; $70c2: $eb
    nop                                           ; $70c3: $00
    cp $ff                                        ; $70c4: $fe $ff
    ret c                                         ; $70c6: $d8

    nop                                           ; $70c7: $00
    call z, $c900                                 ; $70c8: $cc $00 $c9
    nop                                           ; $70cb: $00
    jp nc, $df00                                  ; $70cc: $d2 $00 $df

    nop                                           ; $70cf: $00
    db $dd                                        ; $70d0: $dd
    nop                                           ; $70d1: $00
    db $d3                                        ; $70d2: $d3
    nop                                           ; $70d3: $00
    reti                                          ; $70d4: $d9


    nop                                           ; $70d5: $00
    sub $00                                       ; $70d6: $d6 $00
    rst RST_18                                    ; $70d8: $df
    nop                                           ; $70d9: $00
    sub $00                                       ; $70da: $d6 $00
    ret                                           ; $70dc: $c9


    nop                                           ; $70dd: $00
    pop de                                        ; $70de: $d1
    nop                                           ; $70df: $00
    push bc                                       ; $70e0: $c5
    nop                                           ; $70e1: $00
    call $d200                                    ; $70e2: $cd $00 $d2
    nop                                           ; $70e5: $00
    call $d200                                    ; $70e6: $cd $00 $d2
    nop                                           ; $70e9: $00
    rlc b                                         ; $70ea: $cb $00
    rst RST_18                                    ; $70ec: $df
    nop                                           ; $70ed: $00
    ret c                                         ; $70ee: $d8

    nop                                           ; $70ef: $00
    call $d100                                    ; $70f0: $cd $00 $d1
    nop                                           ; $70f3: $00
    ret                                           ; $70f4: $c9


    nop                                           ; $70f5: $00
    cp $ff                                        ; $70f6: $fe $ff
    db $db                                        ; $70f8: $db
    nop                                           ; $70f9: $00
    call $d000                                    ; $70fa: $cd $00 $d0
    nop                                           ; $70fd: $00
    ret nc                                        ; $70fe: $d0

    nop                                           ; $70ff: $00
    rst RST_18                                    ; $7100: $df
    nop                                           ; $7101: $00
    add $00                                       ; $7102: $c6 $00
    ret                                           ; $7104: $c9


    nop                                           ; $7105: $00
    rst RST_18                                    ; $7106: $df
    nop                                           ; $7107: $00
    sub $00                                       ; $7108: $d6 $00
    ret                                           ; $710a: $c9


    nop                                           ; $710b: $00
    ret z                                         ; $710c: $c8

    nop                                           ; $710d: $00
    reti                                          ; $710e: $d9


    nop                                           ; $710f: $00
    rst RST_00                                    ; $7110: $c7
    nop                                           ; $7111: $00
    ret                                           ; $7112: $c9


    nop                                           ; $7113: $00
    ret z                                         ; $7114: $c8

    nop                                           ; $7115: $00
    db $ec                                        ; $7116: $ec
    nop                                           ; $7117: $00
    rst RST_38                                    ; $7118: $ff
    rst RST_38                                    ; $7119: $ff
    cp $ff                                        ; $711a: $fe $ff
    xor h                                         ; $711c: $ac
    nop                                           ; $711d: $00
    reti                                          ; $711e: $d9


    nop                                           ; $711f: $00
    ret c                                         ; $7120: $d8

    nop                                           ; $7121: $00
    rst RST_18                                    ; $7122: $df
    nop                                           ; $7123: $00
    ret c                                         ; $7124: $d8

    nop                                           ; $7125: $00
    sub $00                                       ; $7126: $d6 $00
    db $dd                                        ; $7128: $dd
    nop                                           ; $7129: $00
    rst RST_18                                    ; $712a: $df
    nop                                           ; $712b: $00
    jp nc, $d300                                  ; $712c: $d2 $00 $d3

    nop                                           ; $712f: $00
    ret c                                         ; $7130: $d8

    nop                                           ; $7131: $00
    rst RST_18                                    ; $7132: $df
    nop                                           ; $7133: $00
    ret c                                         ; $7134: $d8

    nop                                           ; $7135: $00
    db $d3                                        ; $7136: $d3
    nop                                           ; $7137: $00
    rst RST_18                                    ; $7138: $df
    nop                                           ; $7139: $00
    call nc, $c500                                ; $713a: $d4 $00 $c5
    nop                                           ; $713d: $00
    jp nc, $cd00                                  ; $713e: $d2 $00 $cd

    nop                                           ; $7141: $00
    rst RST_00                                    ; $7142: $c7
    nop                                           ; $7143: $00
    rst RST_20                                    ; $7144: $e7
    nop                                           ; $7145: $00
    rst RST_38                                    ; $7146: $ff
    rst RST_38                                    ; $7147: $ff
    jp $d300                                      ; $7148: $c3 $00 $d3


    nop                                           ; $714b: $00
    reti                                          ; $714c: $d9


    nop                                           ; $714d: $00
    rst RST_18                                    ; $714e: $df
    nop                                           ; $714f: $00
    rst RST_00                                    ; $7150: $c7
    nop                                           ; $7151: $00
    push bc                                       ; $7152: $c5
    nop                                           ; $7153: $00
    jp nc, $df00                                  ; $7154: $d2 $00 $df

    nop                                           ; $7157: $00
    pop de                                        ; $7158: $d1
    nop                                           ; $7159: $00
    push bc                                       ; $715a: $c5
    nop                                           ; $715b: $00
    sub $00                                       ; $715c: $d6 $00
    rst RST_08                                    ; $715e: $cf
    nop                                           ; $715f: $00
    rst RST_18                                    ; $7160: $df
    nop                                           ; $7161: $00
    add $00                                       ; $7162: $c6 $00
    db $d3                                        ; $7164: $d3
    nop                                           ; $7165: $00
    call c, $c900                                 ; $7166: $dc $00 $c9
    nop                                           ; $7169: $00
    rst RST_10                                    ; $716a: $d7
    nop                                           ; $716b: $00
    rst RST_18                                    ; $716c: $df
    nop                                           ; $716d: $00
    ret c                                         ; $716e: $d8

    nop                                           ; $716f: $00
    call z, $c500                                 ; $7170: $cc $00 $c5
    nop                                           ; $7173: $00
    ret c                                         ; $7174: $d8

    nop                                           ; $7175: $00
    cp $ff                                        ; $7176: $fe $ff
    db $dd                                        ; $7178: $dd
    nop                                           ; $7179: $00
    db $d3                                        ; $717a: $d3
    nop                                           ; $717b: $00
    reti                                          ; $717c: $d9


    nop                                           ; $717d: $00
    rst RST_18                                    ; $717e: $df
    nop                                           ; $717f: $00
    ret c                                         ; $7180: $d8

    nop                                           ; $7181: $00
    call z, $cd00                                 ; $7182: $cc $00 $cd
    nop                                           ; $7185: $00
    jp nc, $cf00                                  ; $7186: $d2 $00 $cf

    nop                                           ; $7189: $00
    rst RST_18                                    ; $718a: $df
    nop                                           ; $718b: $00
    rst RST_10                                    ; $718c: $d7
    nop                                           ; $718d: $00
    call z, $d300                                 ; $718e: $cc $00 $d3
    nop                                           ; $7191: $00
    reti                                          ; $7192: $d9


    nop                                           ; $7193: $00
    ret nc                                        ; $7194: $d0

    nop                                           ; $7195: $00
    ret z                                         ; $7196: $c8

    nop                                           ; $7197: $00
    rst RST_18                                    ; $7198: $df
    nop                                           ; $7199: $00
    rst RST_10                                    ; $719a: $d7
    nop                                           ; $719b: $00
    ret c                                         ; $719c: $d8

    nop                                           ; $719d: $00
    push bc                                       ; $719e: $c5
    nop                                           ; $719f: $00
    db $dd                                        ; $71a0: $dd
    nop                                           ; $71a1: $00
    cp $ff                                        ; $71a2: $fe $ff
    rst RST_00                                    ; $71a4: $c7
    nop                                           ; $71a5: $00
    ret nc                                        ; $71a6: $d0

    nop                                           ; $71a7: $00
    ret                                           ; $71a8: $c9


    nop                                           ; $71a9: $00
    push bc                                       ; $71aa: $c5
    nop                                           ; $71ab: $00
    sub $00                                       ; $71ac: $d6 $00
    rst RST_18                                    ; $71ae: $df
    nop                                           ; $71af: $00
    db $db                                        ; $71b0: $db
    nop                                           ; $71b1: $00
    call $d800                                    ; $71b2: $cd $00 $d8
    nop                                           ; $71b5: $00
    call z, $df00                                 ; $71b6: $cc $00 $df
    nop                                           ; $71b9: $00
    push bc                                       ; $71ba: $c5
    nop                                           ; $71bb: $00
    jp nc, $df00                                  ; $71bc: $d2 $00 $df

    nop                                           ; $71bf: $00
    push hl                                       ; $71c0: $e5
    nop                                           ; $71c1: $00
    db $e4                                        ; $71c2: $e4
    nop                                           ; $71c3: $00
    and $00                                       ; $71c4: $e6 $00
    db $ec                                        ; $71c6: $ec
    nop                                           ; $71c7: $00
    rst RST_38                                    ; $71c8: $ff
    rst RST_38                                    ; $71c9: $ff
    cp [hl]                                       ; $71ca: $be
    nop                                           ; $71cb: $00
    db $d3                                        ; $71cc: $d3
    nop                                           ; $71cd: $00
    rst RST_18                                    ; $71ce: $df
    nop                                           ; $71cf: $00
    rlc b                                         ; $71d0: $cb $00
    ret                                           ; $71d2: $c9


    nop                                           ; $71d3: $00
    ret c                                         ; $71d4: $d8

    nop                                           ; $71d5: $00
    rst RST_18                                    ; $71d6: $df
    nop                                           ; $71d7: $00
    call z, $cd00                                 ; $71d8: $cc $00 $cd
    nop                                           ; $71db: $00
    jp nc, $d800                                  ; $71dc: $d2 $00 $d8

    nop                                           ; $71df: $00
    rst RST_10                                    ; $71e0: $d7
    nop                                           ; $71e1: $00
    rst RST_18                                    ; $71e2: $df
    nop                                           ; $71e3: $00
    push bc                                       ; $71e4: $c5
    nop                                           ; $71e5: $00
    rst RST_10                                    ; $71e6: $d7
    nop                                           ; $71e7: $00
    rst RST_18                                    ; $71e8: $df
    nop                                           ; $71e9: $00
    db $dd                                        ; $71ea: $dd
    nop                                           ; $71eb: $00
    db $d3                                        ; $71ec: $d3
    nop                                           ; $71ed: $00
    reti                                          ; $71ee: $d9


    nop                                           ; $71ef: $00
    rst RST_18                                    ; $71f0: $df
    nop                                           ; $71f1: $00
    call nc, $d000                                ; $71f2: $d4 $00 $d0
    nop                                           ; $71f5: $00
    push bc                                       ; $71f6: $c5
    nop                                           ; $71f7: $00
    db $dd                                        ; $71f8: $dd
    nop                                           ; $71f9: $00
    db $eb                                        ; $71fa: $eb
    nop                                           ; $71fb: $00
    cp $ff                                        ; $71fc: $fe $ff
    rst RST_00                                    ; $71fe: $c7
    nop                                           ; $71ff: $00
    call z, $d300                                 ; $7200: $cc $00 $d3
    nop                                           ; $7203: $00
    db $d3                                        ; $7204: $d3
    nop                                           ; $7205: $00
    rst RST_10                                    ; $7206: $d7
    nop                                           ; $7207: $00
    ret                                           ; $7208: $c9


    nop                                           ; $7209: $00
    rst RST_18                                    ; $720a: $df
    nop                                           ; $720b: $00
    push hl                                       ; $720c: $e5
    nop                                           ; $720d: $00
    jp $c900                                      ; $720e: $c3 $00 $c9


    nop                                           ; $7211: $00
    rst RST_10                                    ; $7212: $d7
    nop                                           ; $7213: $00
    and $00                                       ; $7214: $e6 $00
    rst RST_18                                    ; $7216: $df
    nop                                           ; $7217: $00
    db $d3                                        ; $7218: $d3
    nop                                           ; $7219: $00
    jp nc, $df00                                  ; $721a: $d2 $00 $df

    nop                                           ; $721d: $00
    ret c                                         ; $721e: $d8

    nop                                           ; $721f: $00
    call z, $c900                                 ; $7220: $cc $00 $c9
    nop                                           ; $7223: $00
    cp $ff                                        ; $7224: $fe $ff
    push hl                                       ; $7226: $e5
    nop                                           ; $7227: $00
    pop bc                                        ; $7228: $c1
    nop                                           ; $7229: $00
    call $d800                                    ; $722a: $cd $00 $d8
    nop                                           ; $722d: $00
    call z, $df00                                 ; $722e: $cc $00 $df
    nop                                           ; $7231: $00
    or d                                          ; $7232: $b2
    nop                                           ; $7233: $00
    call $d200                                    ; $7234: $cd $00 $d2
    nop                                           ; $7237: $00
    ret c                                         ; $7238: $d8

    nop                                           ; $7239: $00
    and $00                                       ; $723a: $e6 $00
    rst RST_18                                    ; $723c: $df
    nop                                           ; $723d: $00
    db $d3                                        ; $723e: $d3
    nop                                           ; $723f: $00
    call nc, $d800                                ; $7240: $d4 $00 $d8
    nop                                           ; $7243: $00
    call $d300                                    ; $7244: $cd $00 $d3
    nop                                           ; $7247: $00
    jp nc, $df00                                  ; $7248: $d2 $00 $df

    nop                                           ; $724b: $00
    push bc                                       ; $724c: $c5
    nop                                           ; $724d: $00
    ret c                                         ; $724e: $d8

    nop                                           ; $724f: $00
    rst RST_18                                    ; $7250: $df
    nop                                           ; $7251: $00
    ret c                                         ; $7252: $d8

    nop                                           ; $7253: $00
    call z, $c900                                 ; $7254: $cc $00 $c9
    nop                                           ; $7257: $00
    cp $ff                                        ; $7258: $fe $ff
    add $00                                       ; $725a: $c6 $00
    ret                                           ; $725c: $c9


    nop                                           ; $725d: $00
    rlc b                                         ; $725e: $cb $00
    call $d200                                    ; $7260: $cd $00 $d2
    nop                                           ; $7263: $00
    jp nc, $cd00                                  ; $7264: $d2 $00 $cd

    nop                                           ; $7267: $00
    jp nc, $cb00                                  ; $7268: $d2 $00 $cb

    nop                                           ; $726b: $00
    rst RST_18                                    ; $726c: $df
    nop                                           ; $726d: $00
    db $d3                                        ; $726e: $d3
    nop                                           ; $726f: $00
    jp z, $df00                                   ; $7270: $ca $00 $df

    nop                                           ; $7273: $00
    ret c                                         ; $7274: $d8

    nop                                           ; $7275: $00
    call z, $c900                                 ; $7276: $cc $00 $c9
    nop                                           ; $7279: $00
    rst RST_18                                    ; $727a: $df
    nop                                           ; $727b: $00
    rlc b                                         ; $727c: $cb $00
    push bc                                       ; $727e: $c5
    nop                                           ; $727f: $00
    pop de                                        ; $7280: $d1
    nop                                           ; $7281: $00
    ret                                           ; $7282: $c9


    nop                                           ; $7283: $00
    db $ec                                        ; $7284: $ec
    nop                                           ; $7285: $00
    rst RST_38                                    ; $7286: $ff
    rst RST_38                                    ; $7287: $ff
    pop bc                                        ; $7288: $c1
    nop                                           ; $7289: $00
    call z, $c900                                 ; $728a: $cc $00 $c9
    nop                                           ; $728d: $00
    jp nc, $df00                                  ; $728e: $d2 $00 $df

    nop                                           ; $7291: $00
    db $dd                                        ; $7292: $dd
    nop                                           ; $7293: $00
    db $d3                                        ; $7294: $d3
    nop                                           ; $7295: $00
    reti                                          ; $7296: $d9


    nop                                           ; $7297: $00
    rst RST_18                                    ; $7298: $df
    nop                                           ; $7299: $00
    rst RST_10                                    ; $729a: $d7
    nop                                           ; $729b: $00
    ret c                                         ; $729c: $d8

    nop                                           ; $729d: $00
    push bc                                       ; $729e: $c5
    nop                                           ; $729f: $00
    sub $00                                       ; $72a0: $d6 $00
    ret c                                         ; $72a2: $d8

    nop                                           ; $72a3: $00
    rst RST_18                                    ; $72a4: $df
    nop                                           ; $72a5: $00
    push bc                                       ; $72a6: $c5
    nop                                           ; $72a7: $00
    rst RST_18                                    ; $72a8: $df
    nop                                           ; $72a9: $00
    jp nc, $c900                                  ; $72aa: $d2 $00 $c9

    nop                                           ; $72ad: $00
    db $db                                        ; $72ae: $db
    nop                                           ; $72af: $00
    cp $ff                                        ; $72b0: $fe $ff
    rst RST_10                                    ; $72b2: $d7
    nop                                           ; $72b3: $00
    ret                                           ; $72b4: $c9


    nop                                           ; $72b5: $00
    rst RST_00                                    ; $72b6: $c7
    nop                                           ; $72b7: $00
    sub $00                                       ; $72b8: $d6 $00
    ret                                           ; $72ba: $c9


    nop                                           ; $72bb: $00
    ret c                                         ; $72bc: $d8

    nop                                           ; $72bd: $00
    rst RST_18                                    ; $72be: $df
    nop                                           ; $72bf: $00
    call nc, $cd00                                ; $72c0: $d4 $00 $cd
    nop                                           ; $72c3: $00
    rst RST_00                                    ; $72c4: $c7
    nop                                           ; $72c5: $00
    ret c                                         ; $72c6: $d8

    nop                                           ; $72c7: $00
    reti                                          ; $72c8: $d9


    nop                                           ; $72c9: $00
    sub $00                                       ; $72ca: $d6 $00
    ret                                           ; $72cc: $c9


    nop                                           ; $72cd: $00
    db $eb                                        ; $72ce: $eb
    nop                                           ; $72cf: $00
    rst RST_18                                    ; $72d0: $df
    nop                                           ; $72d1: $00
    ret c                                         ; $72d2: $d8

    nop                                           ; $72d3: $00
    call z, $c900                                 ; $72d4: $cc $00 $c9
    nop                                           ; $72d7: $00
    rst RST_18                                    ; $72d8: $df
    nop                                           ; $72d9: $00
    ret c                                         ; $72da: $d8

    nop                                           ; $72db: $00
    db $d3                                        ; $72dc: $d3
    nop                                           ; $72dd: $00
    call nc, $fe00                                ; $72de: $d4 $00 $fe
    rst RST_38                                    ; $72e1: $ff
    push bc                                       ; $72e2: $c5
    nop                                           ; $72e3: $00
    jp nc, $c800                                  ; $72e4: $d2 $00 $c8

    nop                                           ; $72e7: $00
    rst RST_18                                    ; $72e8: $df
    nop                                           ; $72e9: $00
    ret nc                                        ; $72ea: $d0

    nop                                           ; $72eb: $00
    ret                                           ; $72ec: $c9


    nop                                           ; $72ed: $00
    jp z, $d800                                   ; $72ee: $ca $00 $d8

    nop                                           ; $72f1: $00
    rst RST_18                                    ; $72f2: $df
    nop                                           ; $72f3: $00
    rst RST_00                                    ; $72f4: $c7
    nop                                           ; $72f5: $00
    reti                                          ; $72f6: $d9


    nop                                           ; $72f7: $00
    sub $00                                       ; $72f8: $d6 $00
    rst RST_10                                    ; $72fa: $d7
    nop                                           ; $72fb: $00
    db $d3                                        ; $72fc: $d3
    nop                                           ; $72fd: $00
    sub $00                                       ; $72fe: $d6 $00
    rst RST_10                                    ; $7300: $d7
    nop                                           ; $7301: $00
    rst RST_18                                    ; $7302: $df
    nop                                           ; $7303: $00
    db $db                                        ; $7304: $db
    nop                                           ; $7305: $00
    call $d000                                    ; $7306: $cd $00 $d0
    nop                                           ; $7309: $00
    ret nc                                        ; $730a: $d0

    nop                                           ; $730b: $00
    cp $ff                                        ; $730c: $fe $ff
    add $00                                       ; $730e: $c6 $00
    ret                                           ; $7310: $c9


    nop                                           ; $7311: $00
    rst RST_18                                    ; $7312: $df
    nop                                           ; $7313: $00
    pop de                                        ; $7314: $d1
    nop                                           ; $7315: $00
    db $d3                                        ; $7316: $d3
    nop                                           ; $7317: $00
    jp c, $cd00                                   ; $7318: $da $00 $cd

    nop                                           ; $731b: $00
    jp nc, $cb00                                  ; $731c: $d2 $00 $cb

    nop                                           ; $731f: $00
    db $ec                                        ; $7320: $ec
    nop                                           ; $7321: $00
    rst RST_38                                    ; $7322: $ff
    rst RST_38                                    ; $7323: $ff
    cp d                                          ; $7324: $ba
    nop                                           ; $7325: $00
    reti                                          ; $7326: $d9


    nop                                           ; $7327: $00
    rst RST_10                                    ; $7328: $d7
    nop                                           ; $7329: $00
    call z, $df00                                 ; $732a: $cc $00 $df
    nop                                           ; $732d: $00
    ret c                                         ; $732e: $d8

    nop                                           ; $732f: $00
    call z, $c900                                 ; $7330: $cc $00 $c9
    nop                                           ; $7333: $00
    rst RST_18                                    ; $7334: $df
    nop                                           ; $7335: $00
    xor e                                         ; $7336: $ab
    nop                                           ; $7337: $00
    rst RST_18                                    ; $7338: $df
    nop                                           ; $7339: $00
    xor h                                         ; $733a: $ac
    nop                                           ; $733b: $00
    reti                                          ; $733c: $d9


    nop                                           ; $733d: $00
    ret c                                         ; $733e: $d8

    nop                                           ; $733f: $00
    ret c                                         ; $7340: $d8

    nop                                           ; $7341: $00
    db $d3                                        ; $7342: $d3
    nop                                           ; $7343: $00
    jp nc, $df00                                  ; $7344: $d2 $00 $df

    nop                                           ; $7347: $00
    ret c                                         ; $7348: $d8

    nop                                           ; $7349: $00
    db $d3                                        ; $734a: $d3
    nop                                           ; $734b: $00
    cp $ff                                        ; $734c: $fe $ff
    rst RST_10                                    ; $734e: $d7
    nop                                           ; $734f: $00
    ret c                                         ; $7350: $d8

    nop                                           ; $7351: $00
    db $d3                                        ; $7352: $d3
    nop                                           ; $7353: $00
    call nc, $df00                                ; $7354: $d4 $00 $df
    nop                                           ; $7357: $00
    ret c                                         ; $7358: $d8

    nop                                           ; $7359: $00
    call z, $c900                                 ; $735a: $cc $00 $c9
    nop                                           ; $735d: $00
    rst RST_18                                    ; $735e: $df
    nop                                           ; $735f: $00
    ret c                                         ; $7360: $d8

    nop                                           ; $7361: $00
    db $d3                                        ; $7362: $d3
    nop                                           ; $7363: $00
    call nc, $df00                                ; $7364: $d4 $00 $df
    nop                                           ; $7367: $00
    rst RST_00                                    ; $7368: $c7
    nop                                           ; $7369: $00
    reti                                          ; $736a: $d9


    nop                                           ; $736b: $00
    sub $00                                       ; $736c: $d6 $00
    rst RST_10                                    ; $736e: $d7
    nop                                           ; $736f: $00
    db $d3                                        ; $7370: $d3
    nop                                           ; $7371: $00
    sub $00                                       ; $7372: $d6 $00
    db $ec                                        ; $7374: $ec
    nop                                           ; $7375: $00
    rst RST_38                                    ; $7376: $ff
    rst RST_38                                    ; $7377: $ff
    cp $ff                                        ; $7378: $fe $ff
    cp d                                          ; $737a: $ba
    nop                                           ; $737b: $00
    sub $00                                       ; $737c: $d6 $00
    ret                                           ; $737e: $c9


    nop                                           ; $737f: $00
    rst RST_10                                    ; $7380: $d7
    nop                                           ; $7381: $00
    rst RST_10                                    ; $7382: $d7
    nop                                           ; $7383: $00
    rst RST_18                                    ; $7384: $df
    nop                                           ; $7385: $00
    call $d800                                    ; $7386: $cd $00 $d8
    nop                                           ; $7389: $00
    rst RST_18                                    ; $738a: $df
    nop                                           ; $738b: $00
    push bc                                       ; $738c: $c5
    nop                                           ; $738d: $00
    rlc b                                         ; $738e: $cb $00
    push bc                                       ; $7390: $c5
    nop                                           ; $7391: $00
    call $d200                                    ; $7392: $cd $00 $d2
    nop                                           ; $7395: $00
    rst RST_18                                    ; $7396: $df
    nop                                           ; $7397: $00
    ret c                                         ; $7398: $d8

    nop                                           ; $7399: $00
    db $d3                                        ; $739a: $d3
    nop                                           ; $739b: $00
    rst RST_18                                    ; $739c: $df
    nop                                           ; $739d: $00
    rst RST_10                                    ; $739e: $d7
    nop                                           ; $739f: $00
    ret c                                         ; $73a0: $d8

    nop                                           ; $73a1: $00
    db $d3                                        ; $73a2: $d3
    nop                                           ; $73a3: $00
    call nc, $fe00                                ; $73a4: $d4 $00 $fe
    rst RST_38                                    ; $73a7: $ff
    ret c                                         ; $73a8: $d8

    nop                                           ; $73a9: $00
    call z, $c900                                 ; $73aa: $cc $00 $c9
    nop                                           ; $73ad: $00
    rst RST_18                                    ; $73ae: $df
    nop                                           ; $73af: $00
    ret nc                                        ; $73b0: $d0

    nop                                           ; $73b1: $00
    ret                                           ; $73b2: $c9


    nop                                           ; $73b3: $00
    jp z, $d800                                   ; $73b4: $ca $00 $d8

    nop                                           ; $73b7: $00
    rst RST_18                                    ; $73b8: $df
    nop                                           ; $73b9: $00
    rst RST_00                                    ; $73ba: $c7
    nop                                           ; $73bb: $00
    reti                                          ; $73bc: $d9


    nop                                           ; $73bd: $00
    sub $00                                       ; $73be: $d6 $00
    rst RST_10                                    ; $73c0: $d7
    nop                                           ; $73c1: $00
    db $d3                                        ; $73c2: $d3
    nop                                           ; $73c3: $00
    sub $00                                       ; $73c4: $d6 $00
    db $ec                                        ; $73c6: $ec
    nop                                           ; $73c7: $00
    rst RST_38                                    ; $73c8: $ff
    rst RST_38                                    ; $73c9: $ff
    cp [hl]                                       ; $73ca: $be
    nop                                           ; $73cb: $00
    call z, $c900                                 ; $73cc: $cc $00 $c9
    nop                                           ; $73cf: $00
    jp nc, $df00                                  ; $73d0: $d2 $00 $df

    nop                                           ; $73d3: $00
    ret c                                         ; $73d4: $d8

    nop                                           ; $73d5: $00
    call z, $c900                                 ; $73d6: $cc $00 $c9
    nop                                           ; $73d9: $00
    rst RST_18                                    ; $73da: $df
    nop                                           ; $73db: $00
    push bc                                       ; $73dc: $c5
    nop                                           ; $73dd: $00
    jp nc, $d700                                  ; $73de: $d2 $00 $d7

    nop                                           ; $73e1: $00
    db $db                                        ; $73e2: $db
    nop                                           ; $73e3: $00
    ret                                           ; $73e4: $c9


    nop                                           ; $73e5: $00
    sub $00                                       ; $73e6: $d6 $00
    rst RST_10                                    ; $73e8: $d7
    nop                                           ; $73e9: $00
    rst RST_18                                    ; $73ea: $df
    nop                                           ; $73eb: $00
    jp z, $d300                                   ; $73ec: $ca $00 $d3

    nop                                           ; $73ef: $00
    sub $00                                       ; $73f0: $d6 $00
    cp $ff                                        ; $73f2: $fe $ff
    ret c                                         ; $73f4: $d8

    nop                                           ; $73f5: $00
    call z, $c500                                 ; $73f6: $cc $00 $c5
    nop                                           ; $73f9: $00
    ret c                                         ; $73fa: $d8

    nop                                           ; $73fb: $00
    rst RST_18                                    ; $73fc: $df
    nop                                           ; $73fd: $00
    rst RST_00                                    ; $73fe: $c7
    nop                                           ; $73ff: $00
    db $d3                                        ; $7400: $d3
    nop                                           ; $7401: $00
    pop de                                        ; $7402: $d1
    nop                                           ; $7403: $00
    add $00                                       ; $7404: $c6 $00
    call $d200                                    ; $7406: $cd $00 $d2
    nop                                           ; $7409: $00
    push bc                                       ; $740a: $c5
    nop                                           ; $740b: $00
    ret c                                         ; $740c: $d8

    nop                                           ; $740d: $00
    call $d300                                    ; $740e: $cd $00 $d3
    nop                                           ; $7411: $00
    jp nc, $df00                                  ; $7412: $d2 $00 $df

    nop                                           ; $7415: $00
    db $db                                        ; $7416: $db
    nop                                           ; $7417: $00
    call $d000                                    ; $7418: $cd $00 $d0
    nop                                           ; $741b: $00
    ret nc                                        ; $741c: $d0

    nop                                           ; $741d: $00
    rst RST_18                                    ; $741e: $df
    nop                                           ; $741f: $00
    add $00                                       ; $7420: $c6 $00
    ret                                           ; $7422: $c9


    nop                                           ; $7423: $00
    cp $ff                                        ; $7424: $fe $ff
    rst RST_10                                    ; $7426: $d7
    nop                                           ; $7427: $00
    call z, $d300                                 ; $7428: $cc $00 $d3
    nop                                           ; $742b: $00
    db $db                                        ; $742c: $db
    nop                                           ; $742d: $00
    jp nc, $ec00                                  ; $742e: $d2 $00 $ec

    nop                                           ; $7431: $00
    rst RST_38                                    ; $7432: $ff
    rst RST_38                                    ; $7433: $ff
    or c                                          ; $7434: $b1
    nop                                           ; $7435: $00
    cp c                                          ; $7436: $b9
    nop                                           ; $7437: $00
    cp c                                          ; $7438: $b9
    nop                                           ; $7439: $00
    xor [hl]                                      ; $743a: $ae
    nop                                           ; $743b: $00
    rst RST_18                                    ; $743c: $df
    nop                                           ; $743d: $00
    or [hl]                                       ; $743e: $b6
    nop                                           ; $743f: $00
    cp a                                          ; $7440: $bf
    nop                                           ; $7441: $00
    xor l                                         ; $7442: $ad
    nop                                           ; $7443: $00
    or l                                          ; $7444: $b5
    nop                                           ; $7445: $00
    rst RST_20                                    ; $7446: $e7
    nop                                           ; $7447: $00
    rst RST_20                                    ; $7448: $e7
    nop                                           ; $7449: $00
    rst RST_38                                    ; $744a: $ff
    rst RST_38                                    ; $744b: $ff
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
