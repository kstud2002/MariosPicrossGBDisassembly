; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    cp $00                                        ; $4000: $fe $00
    db $fd                                        ; $4002: $fd
    nop                                           ; $4003: $00
    ld hl, sp+$00                                 ; $4004: $f8 $00
    rst RST_30                                    ; $4006: $f7
    nop                                           ; $4007: $00
    ldh [rP1], a                                  ; $4008: $e0 $00
    db $dd                                        ; $400a: $dd
    nop                                           ; $400b: $00
    add b                                         ; $400c: $80
    nop                                           ; $400d: $00
    ld [hl], a                                    ; $400e: $77
    nop                                           ; $400f: $00
    nop                                           ; $4010: $00
    nop                                           ; $4011: $00
    db $dd                                        ; $4012: $dd
    nop                                           ; $4013: $00
    nop                                           ; $4014: $00
    nop                                           ; $4015: $00
    ld [hl], a                                    ; $4016: $77
    nop                                           ; $4017: $00
    nop                                           ; $4018: $00
    nop                                           ; $4019: $00
    db $dd                                        ; $401a: $dd
    nop                                           ; $401b: $00
    nop                                           ; $401c: $00
    nop                                           ; $401d: $00
    ld [hl], a                                    ; $401e: $77
    nop                                           ; $401f: $00
    nop                                           ; $4020: $00
    rst RST_38                                    ; $4021: $ff
    nop                                           ; $4022: $00
    ld b, h                                       ; $4023: $44
    nop                                           ; $4024: $00
    rst RST_38                                    ; $4025: $ff
    nop                                           ; $4026: $00
    ld de, rP1                                    ; $4027: $11 $00 $ff
    nop                                           ; $402a: $00
    ld b, h                                       ; $402b: $44
    nop                                           ; $402c: $00
    rst RST_38                                    ; $402d: $ff
    nop                                           ; $402e: $00
    ld de, $807f                                  ; $402f: $11 $7f $80
    ccf                                           ; $4032: $3f
    ld b, b                                       ; $4033: $40
    rra                                           ; $4034: $1f
    ldh [rIF], a                                  ; $4035: $e0 $0f
    db $10                                        ; $4037: $10
    rlca                                          ; $4038: $07
    ld hl, sp+$03                                 ; $4039: $f8 $03
    ld b, h                                       ; $403b: $44
    ld bc, $00fe                                  ; $403c: $01 $fe $00
    ld de, $07ff                                  ; $403f: $11 $ff $07
    ld sp, hl                                     ; $4042: $f9
    ld [$08f8], sp                                ; $4043: $08 $f8 $08
    ld hl, sp+$0c                                 ; $4046: $f8 $0c
    db $fc                                        ; $4048: $fc
    ld a, a                                       ; $4049: $7f
    cp e                                          ; $404a: $bb
    add b                                         ; $404b: $80
    add b                                         ; $404c: $80
    add b                                         ; $404d: $80
    add b                                         ; $404e: $80
    xor h                                         ; $404f: $ac
    nop                                           ; $4050: $00
    ld a, a                                       ; $4051: $7f
    nop                                           ; $4052: $00
    ret nz                                        ; $4053: $c0

    nop                                           ; $4054: $00
    adc a                                         ; $4055: $8f
    rrca                                          ; $4056: $0f
    sbc a                                         ; $4057: $9f
    rrca                                          ; $4058: $0f
    sbc b                                         ; $4059: $98
    rrca                                          ; $405a: $0f
    sbc b                                         ; $405b: $98
    rrca                                          ; $405c: $0f
    sbc b                                         ; $405d: $98
    rrca                                          ; $405e: $0f
    sbc b                                         ; $405f: $98
    nop                                           ; $4060: $00
    rst RST_38                                    ; $4061: $ff
    nop                                           ; $4062: $00
    nop                                           ; $4063: $00
    nop                                           ; $4064: $00
    rst RST_38                                    ; $4065: $ff
    rst RST_38                                    ; $4066: $ff
    rst RST_38                                    ; $4067: $ff
    rst RST_38                                    ; $4068: $ff
    nop                                           ; $4069: $00
    rst RST_38                                    ; $406a: $ff
    nop                                           ; $406b: $00
    rst RST_38                                    ; $406c: $ff
    nop                                           ; $406d: $00
    rst RST_38                                    ; $406e: $ff
    nop                                           ; $406f: $00
    ld [bc], a                                    ; $4070: $02
    cp $01                                        ; $4071: $fe $01
    rlca                                          ; $4073: $07
    ld bc, $e1e3                                  ; $4074: $01 $e3 $e1
    di                                            ; $4077: $f3
    pop hl                                        ; $4078: $e1
    inc de                                        ; $4079: $13
    pop hl                                        ; $407a: $e1
    inc de                                        ; $407b: $13
    pop hl                                        ; $407c: $e1
    inc de                                        ; $407d: $13
    pop hl                                        ; $407e: $e1
    inc de                                        ; $407f: $13
    rrca                                          ; $4080: $0f
    sbc b                                         ; $4081: $98
    rrca                                          ; $4082: $0f
    sbc b                                         ; $4083: $98
    rrca                                          ; $4084: $0f
    sbc b                                         ; $4085: $98
    rrca                                          ; $4086: $0f
    sbc b                                         ; $4087: $98
    rrca                                          ; $4088: $0f
    sbc b                                         ; $4089: $98
    rrca                                          ; $408a: $0f
    sbc b                                         ; $408b: $98
    rrca                                          ; $408c: $0f
    sbc b                                         ; $408d: $98
    rrca                                          ; $408e: $0f
    sbc b                                         ; $408f: $98
    pop hl                                        ; $4090: $e1
    inc de                                        ; $4091: $13
    pop hl                                        ; $4092: $e1
    inc de                                        ; $4093: $13
    pop hl                                        ; $4094: $e1
    inc de                                        ; $4095: $13
    pop hl                                        ; $4096: $e1
    inc de                                        ; $4097: $13
    pop hl                                        ; $4098: $e1
    inc de                                        ; $4099: $13
    pop hl                                        ; $409a: $e1
    inc de                                        ; $409b: $13
    pop hl                                        ; $409c: $e1
    inc de                                        ; $409d: $13
    pop hl                                        ; $409e: $e1
    inc de                                        ; $409f: $13
    rrca                                          ; $40a0: $0f
    sbc b                                         ; $40a1: $98
    rrca                                          ; $40a2: $0f
    sbc b                                         ; $40a3: $98
    rrca                                          ; $40a4: $0f
    sbc b                                         ; $40a5: $98
    nop                                           ; $40a6: $00
    adc a                                         ; $40a7: $8f
    nop                                           ; $40a8: $00
    add b                                         ; $40a9: $80
    nop                                           ; $40aa: $00
    rst RST_38                                    ; $40ab: $ff
    rst RST_38                                    ; $40ac: $ff
    ld a, a                                       ; $40ad: $7f
    rst RST_38                                    ; $40ae: $ff
    nop                                           ; $40af: $00
    rst RST_38                                    ; $40b0: $ff
    nop                                           ; $40b1: $00
    rst RST_38                                    ; $40b2: $ff
    nop                                           ; $40b3: $00
    rst RST_38                                    ; $40b4: $ff
    nop                                           ; $40b5: $00
    nop                                           ; $40b6: $00
    rst RST_38                                    ; $40b7: $ff
    nop                                           ; $40b8: $00
    nop                                           ; $40b9: $00
    nop                                           ; $40ba: $00
    rst RST_38                                    ; $40bb: $ff
    rst RST_38                                    ; $40bc: $ff
    rst RST_38                                    ; $40bd: $ff
    rst RST_38                                    ; $40be: $ff
    nop                                           ; $40bf: $00
    pop hl                                        ; $40c0: $e1
    inc de                                        ; $40c1: $13
    pop hl                                        ; $40c2: $e1
    inc de                                        ; $40c3: $13
    pop hl                                        ; $40c4: $e1
    inc de                                        ; $40c5: $13
    ld bc, $01e3                                  ; $40c6: $01 $e3 $01
    rlca                                          ; $40c9: $07
    inc bc                                        ; $40ca: $03
    rst RST_38                                    ; $40cb: $ff
    rst RST_38                                    ; $40cc: $ff
    cp $ff                                        ; $40cd: $fe $ff
    nop                                           ; $40cf: $00
    nop                                           ; $40d0: $00
    nop                                           ; $40d1: $00
    nop                                           ; $40d2: $00
    nop                                           ; $40d3: $00
    nop                                           ; $40d4: $00
    nop                                           ; $40d5: $00
    nop                                           ; $40d6: $00
    nop                                           ; $40d7: $00
    nop                                           ; $40d8: $00
    nop                                           ; $40d9: $00
    nop                                           ; $40da: $00
    nop                                           ; $40db: $00
    nop                                           ; $40dc: $00
    nop                                           ; $40dd: $00
    nop                                           ; $40de: $00
    nop                                           ; $40df: $00
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
    nop                                           ; $40f0: $00
    nop                                           ; $40f1: $00
    nop                                           ; $40f2: $00
    nop                                           ; $40f3: $00
    nop                                           ; $40f4: $00
    nop                                           ; $40f5: $00
    nop                                           ; $40f6: $00
    nop                                           ; $40f7: $00
    nop                                           ; $40f8: $00
    nop                                           ; $40f9: $00
    nop                                           ; $40fa: $00
    nop                                           ; $40fb: $00
    nop                                           ; $40fc: $00
    nop                                           ; $40fd: $00
    nop                                           ; $40fe: $00
    nop                                           ; $40ff: $00
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
    nop                                           ; $4111: $00
    rst RST_38                                    ; $4112: $ff
    nop                                           ; $4113: $00
    rst RST_38                                    ; $4114: $ff
    nop                                           ; $4115: $00
    rst RST_38                                    ; $4116: $ff
    nop                                           ; $4117: $00
    rst RST_38                                    ; $4118: $ff
    nop                                           ; $4119: $00
    rst RST_38                                    ; $411a: $ff
    nop                                           ; $411b: $00
    rst RST_38                                    ; $411c: $ff
    nop                                           ; $411d: $00
    rst RST_38                                    ; $411e: $ff
    nop                                           ; $411f: $00
    rst RST_38                                    ; $4120: $ff
    nop                                           ; $4121: $00
    rst RST_38                                    ; $4122: $ff
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
    rst RST_38                                    ; $4130: $ff
    nop                                           ; $4131: $00
    rst RST_38                                    ; $4132: $ff
    nop                                           ; $4133: $00
    rst RST_38                                    ; $4134: $ff
    nop                                           ; $4135: $00
    rst RST_38                                    ; $4136: $ff
    nop                                           ; $4137: $00
    rst RST_38                                    ; $4138: $ff
    nop                                           ; $4139: $00
    rst RST_38                                    ; $413a: $ff
    nop                                           ; $413b: $00
    rst RST_38                                    ; $413c: $ff
    nop                                           ; $413d: $00
    rst RST_38                                    ; $413e: $ff
    nop                                           ; $413f: $00
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
    nop                                           ; $4151: $00
    rst RST_38                                    ; $4152: $ff
    nop                                           ; $4153: $00
    rst RST_38                                    ; $4154: $ff
    nop                                           ; $4155: $00
    rst RST_38                                    ; $4156: $ff
    nop                                           ; $4157: $00
    rst RST_38                                    ; $4158: $ff
    nop                                           ; $4159: $00
    rst RST_38                                    ; $415a: $ff
    nop                                           ; $415b: $00
    rst RST_38                                    ; $415c: $ff
    nop                                           ; $415d: $00
    rst RST_38                                    ; $415e: $ff
    nop                                           ; $415f: $00
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
    nop                                           ; $4171: $00
    rst RST_38                                    ; $4172: $ff
    nop                                           ; $4173: $00
    rst RST_38                                    ; $4174: $ff
    nop                                           ; $4175: $00
    rst RST_38                                    ; $4176: $ff
    nop                                           ; $4177: $00
    rst RST_38                                    ; $4178: $ff
    nop                                           ; $4179: $00
    rst RST_38                                    ; $417a: $ff
    nop                                           ; $417b: $00
    rst RST_38                                    ; $417c: $ff
    nop                                           ; $417d: $00
    rst RST_38                                    ; $417e: $ff
    nop                                           ; $417f: $00
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
    nop                                           ; $4191: $00
    rst RST_38                                    ; $4192: $ff
    nop                                           ; $4193: $00
    rst RST_38                                    ; $4194: $ff
    nop                                           ; $4195: $00
    rst RST_38                                    ; $4196: $ff
    nop                                           ; $4197: $00
    rst RST_38                                    ; $4198: $ff
    nop                                           ; $4199: $00
    rst RST_38                                    ; $419a: $ff
    nop                                           ; $419b: $00
    rst RST_38                                    ; $419c: $ff
    nop                                           ; $419d: $00
    rst RST_38                                    ; $419e: $ff
    nop                                           ; $419f: $00
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
    nop                                           ; $41b1: $00
    rst RST_38                                    ; $41b2: $ff
    nop                                           ; $41b3: $00
    rst RST_38                                    ; $41b4: $ff
    nop                                           ; $41b5: $00
    rst RST_38                                    ; $41b6: $ff
    nop                                           ; $41b7: $00
    rst RST_38                                    ; $41b8: $ff
    nop                                           ; $41b9: $00
    rst RST_38                                    ; $41ba: $ff
    nop                                           ; $41bb: $00
    rst RST_38                                    ; $41bc: $ff
    nop                                           ; $41bd: $00
    rst RST_38                                    ; $41be: $ff
    nop                                           ; $41bf: $00
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
    nop                                           ; $41d1: $00
    rst RST_38                                    ; $41d2: $ff
    nop                                           ; $41d3: $00
    rst RST_38                                    ; $41d4: $ff
    nop                                           ; $41d5: $00
    rst RST_38                                    ; $41d6: $ff
    nop                                           ; $41d7: $00
    rst RST_38                                    ; $41d8: $ff
    nop                                           ; $41d9: $00
    rst RST_38                                    ; $41da: $ff
    nop                                           ; $41db: $00
    rst RST_38                                    ; $41dc: $ff
    nop                                           ; $41dd: $00
    rst RST_38                                    ; $41de: $ff
    nop                                           ; $41df: $00
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
    nop                                           ; $41f1: $00
    rst RST_38                                    ; $41f2: $ff
    nop                                           ; $41f3: $00
    rst RST_38                                    ; $41f4: $ff
    nop                                           ; $41f5: $00
    rst RST_38                                    ; $41f6: $ff
    nop                                           ; $41f7: $00
    rst RST_38                                    ; $41f8: $ff
    nop                                           ; $41f9: $00
    rst RST_38                                    ; $41fa: $ff
    nop                                           ; $41fb: $00
    rst RST_38                                    ; $41fc: $ff
    nop                                           ; $41fd: $00
    rst RST_38                                    ; $41fe: $ff
    nop                                           ; $41ff: $00
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
    rst RST_38                                    ; $4210: $ff
    nop                                           ; $4211: $00
    rst RST_38                                    ; $4212: $ff
    nop                                           ; $4213: $00
    rst RST_38                                    ; $4214: $ff
    nop                                           ; $4215: $00
    rst RST_38                                    ; $4216: $ff
    nop                                           ; $4217: $00
    rst RST_38                                    ; $4218: $ff
    nop                                           ; $4219: $00
    rst RST_38                                    ; $421a: $ff
    nop                                           ; $421b: $00
    rst RST_38                                    ; $421c: $ff
    nop                                           ; $421d: $00
    rst RST_38                                    ; $421e: $ff
    nop                                           ; $421f: $00
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
    nop                                           ; $4233: $00
    rst RST_38                                    ; $4234: $ff
    nop                                           ; $4235: $00
    rst RST_38                                    ; $4236: $ff
    nop                                           ; $4237: $00
    rst RST_38                                    ; $4238: $ff
    nop                                           ; $4239: $00
    rst RST_38                                    ; $423a: $ff
    nop                                           ; $423b: $00
    rst RST_38                                    ; $423c: $ff
    nop                                           ; $423d: $00
    rst RST_38                                    ; $423e: $ff
    nop                                           ; $423f: $00
    rst RST_38                                    ; $4240: $ff
    nop                                           ; $4241: $00
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
    nop                                           ; $4253: $00
    rst RST_38                                    ; $4254: $ff
    nop                                           ; $4255: $00
    rst RST_38                                    ; $4256: $ff
    nop                                           ; $4257: $00
    rst RST_38                                    ; $4258: $ff
    nop                                           ; $4259: $00
    rst RST_38                                    ; $425a: $ff
    nop                                           ; $425b: $00
    rst RST_38                                    ; $425c: $ff
    nop                                           ; $425d: $00
    rst RST_38                                    ; $425e: $ff
    nop                                           ; $425f: $00
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
    rst RST_38                                    ; $4270: $ff
    nop                                           ; $4271: $00
    rst RST_38                                    ; $4272: $ff
    nop                                           ; $4273: $00
    rst RST_38                                    ; $4274: $ff
    nop                                           ; $4275: $00
    rst RST_38                                    ; $4276: $ff
    nop                                           ; $4277: $00
    rst RST_38                                    ; $4278: $ff
    nop                                           ; $4279: $00
    rst RST_38                                    ; $427a: $ff
    nop                                           ; $427b: $00
    rst RST_38                                    ; $427c: $ff
    nop                                           ; $427d: $00
    rst RST_38                                    ; $427e: $ff
    nop                                           ; $427f: $00
    rst RST_38                                    ; $4280: $ff
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
    rst RST_38                                    ; $428e: $ff
    nop                                           ; $428f: $00
    rst RST_38                                    ; $4290: $ff
    nop                                           ; $4291: $00
    rst RST_38                                    ; $4292: $ff
    nop                                           ; $4293: $00
    rst RST_38                                    ; $4294: $ff
    nop                                           ; $4295: $00
    rst RST_38                                    ; $4296: $ff
    nop                                           ; $4297: $00
    rst RST_38                                    ; $4298: $ff
    nop                                           ; $4299: $00
    rst RST_38                                    ; $429a: $ff
    nop                                           ; $429b: $00
    rst RST_38                                    ; $429c: $ff
    nop                                           ; $429d: $00
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
    nop                                           ; $42ab: $00
    rst RST_38                                    ; $42ac: $ff
    nop                                           ; $42ad: $00
    rst RST_38                                    ; $42ae: $ff
    nop                                           ; $42af: $00
    rst RST_38                                    ; $42b0: $ff
    nop                                           ; $42b1: $00
    rst RST_38                                    ; $42b2: $ff
    nop                                           ; $42b3: $00
    rst RST_38                                    ; $42b4: $ff
    nop                                           ; $42b5: $00
    rst RST_38                                    ; $42b6: $ff
    nop                                           ; $42b7: $00
    rst RST_38                                    ; $42b8: $ff
    nop                                           ; $42b9: $00
    rst RST_38                                    ; $42ba: $ff
    nop                                           ; $42bb: $00
    rst RST_38                                    ; $42bc: $ff
    nop                                           ; $42bd: $00
    rst RST_38                                    ; $42be: $ff
    nop                                           ; $42bf: $00
    rst RST_38                                    ; $42c0: $ff
    nop                                           ; $42c1: $00
    rst RST_38                                    ; $42c2: $ff
    nop                                           ; $42c3: $00
    rst RST_38                                    ; $42c4: $ff
    nop                                           ; $42c5: $00
    rst RST_38                                    ; $42c6: $ff
    nop                                           ; $42c7: $00
    rst RST_38                                    ; $42c8: $ff
    nop                                           ; $42c9: $00
    rst RST_38                                    ; $42ca: $ff
    nop                                           ; $42cb: $00
    rst RST_38                                    ; $42cc: $ff
    nop                                           ; $42cd: $00
    rst RST_38                                    ; $42ce: $ff
    nop                                           ; $42cf: $00
    rst RST_38                                    ; $42d0: $ff
    nop                                           ; $42d1: $00
    rst RST_38                                    ; $42d2: $ff
    nop                                           ; $42d3: $00
    rst RST_38                                    ; $42d4: $ff
    nop                                           ; $42d5: $00
    rst RST_38                                    ; $42d6: $ff
    nop                                           ; $42d7: $00
    rst RST_38                                    ; $42d8: $ff
    nop                                           ; $42d9: $00
    rst RST_38                                    ; $42da: $ff
    nop                                           ; $42db: $00
    rst RST_38                                    ; $42dc: $ff
    nop                                           ; $42dd: $00
    rst RST_38                                    ; $42de: $ff
    nop                                           ; $42df: $00
    rst RST_38                                    ; $42e0: $ff
    nop                                           ; $42e1: $00
    rst RST_38                                    ; $42e2: $ff
    nop                                           ; $42e3: $00
    rst RST_38                                    ; $42e4: $ff
    nop                                           ; $42e5: $00
    rst RST_38                                    ; $42e6: $ff
    nop                                           ; $42e7: $00
    rst RST_38                                    ; $42e8: $ff
    nop                                           ; $42e9: $00
    rst RST_38                                    ; $42ea: $ff
    nop                                           ; $42eb: $00
    rst RST_38                                    ; $42ec: $ff
    nop                                           ; $42ed: $00
    rst RST_38                                    ; $42ee: $ff
    nop                                           ; $42ef: $00
    rst RST_38                                    ; $42f0: $ff
    nop                                           ; $42f1: $00
    rst RST_38                                    ; $42f2: $ff
    nop                                           ; $42f3: $00
    rst RST_38                                    ; $42f4: $ff
    nop                                           ; $42f5: $00
    rst RST_38                                    ; $42f6: $ff
    nop                                           ; $42f7: $00
    rst RST_38                                    ; $42f8: $ff
    nop                                           ; $42f9: $00
    rst RST_38                                    ; $42fa: $ff
    nop                                           ; $42fb: $00
    rst RST_38                                    ; $42fc: $ff
    nop                                           ; $42fd: $00
    rst RST_38                                    ; $42fe: $ff
    nop                                           ; $42ff: $00
    rst RST_38                                    ; $4300: $ff
    nop                                           ; $4301: $00
    rst RST_38                                    ; $4302: $ff
    nop                                           ; $4303: $00
    rst RST_38                                    ; $4304: $ff
    nop                                           ; $4305: $00
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
    rst RST_38                                    ; $4310: $ff
    nop                                           ; $4311: $00
    rst RST_38                                    ; $4312: $ff
    nop                                           ; $4313: $00
    rst RST_38                                    ; $4314: $ff
    nop                                           ; $4315: $00
    rst RST_38                                    ; $4316: $ff
    nop                                           ; $4317: $00
    rst RST_38                                    ; $4318: $ff
    nop                                           ; $4319: $00
    rst RST_38                                    ; $431a: $ff
    nop                                           ; $431b: $00
    rst RST_38                                    ; $431c: $ff
    nop                                           ; $431d: $00
    rst RST_38                                    ; $431e: $ff
    nop                                           ; $431f: $00
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
    nop                                           ; $4331: $00
    rst RST_38                                    ; $4332: $ff
    nop                                           ; $4333: $00
    rst RST_38                                    ; $4334: $ff
    nop                                           ; $4335: $00
    rst RST_38                                    ; $4336: $ff
    nop                                           ; $4337: $00
    rst RST_38                                    ; $4338: $ff
    nop                                           ; $4339: $00
    rst RST_38                                    ; $433a: $ff
    nop                                           ; $433b: $00
    rst RST_38                                    ; $433c: $ff
    nop                                           ; $433d: $00
    rst RST_38                                    ; $433e: $ff
    nop                                           ; $433f: $00
    rst RST_38                                    ; $4340: $ff
    nop                                           ; $4341: $00
    rst RST_38                                    ; $4342: $ff
    nop                                           ; $4343: $00
    rst RST_38                                    ; $4344: $ff
    nop                                           ; $4345: $00
    rst RST_38                                    ; $4346: $ff
    nop                                           ; $4347: $00
    rst RST_38                                    ; $4348: $ff
    nop                                           ; $4349: $00
    rst RST_38                                    ; $434a: $ff
    nop                                           ; $434b: $00
    rst RST_38                                    ; $434c: $ff
    nop                                           ; $434d: $00
    rst RST_38                                    ; $434e: $ff
    nop                                           ; $434f: $00
    rst RST_38                                    ; $4350: $ff
    nop                                           ; $4351: $00
    rst RST_38                                    ; $4352: $ff
    nop                                           ; $4353: $00
    rst RST_38                                    ; $4354: $ff
    nop                                           ; $4355: $00
    rst RST_38                                    ; $4356: $ff
    nop                                           ; $4357: $00
    rst RST_38                                    ; $4358: $ff
    nop                                           ; $4359: $00
    rst RST_38                                    ; $435a: $ff
    nop                                           ; $435b: $00
    rst RST_38                                    ; $435c: $ff
    nop                                           ; $435d: $00
    rst RST_38                                    ; $435e: $ff
    nop                                           ; $435f: $00
    rst RST_38                                    ; $4360: $ff
    nop                                           ; $4361: $00
    rst RST_38                                    ; $4362: $ff
    nop                                           ; $4363: $00
    rst RST_38                                    ; $4364: $ff
    nop                                           ; $4365: $00
    rst RST_38                                    ; $4366: $ff
    nop                                           ; $4367: $00
    rst RST_38                                    ; $4368: $ff
    nop                                           ; $4369: $00
    rst RST_38                                    ; $436a: $ff
    nop                                           ; $436b: $00
    rst RST_38                                    ; $436c: $ff
    nop                                           ; $436d: $00
    rst RST_38                                    ; $436e: $ff
    nop                                           ; $436f: $00
    rst RST_38                                    ; $4370: $ff
    nop                                           ; $4371: $00
    rst RST_38                                    ; $4372: $ff
    nop                                           ; $4373: $00
    rst RST_38                                    ; $4374: $ff
    nop                                           ; $4375: $00
    rst RST_38                                    ; $4376: $ff
    nop                                           ; $4377: $00
    rst RST_38                                    ; $4378: $ff
    nop                                           ; $4379: $00
    rst RST_38                                    ; $437a: $ff
    nop                                           ; $437b: $00
    rst RST_38                                    ; $437c: $ff
    nop                                           ; $437d: $00
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
    rst RST_38                                    ; $438e: $ff
    nop                                           ; $438f: $00
    rst RST_38                                    ; $4390: $ff
    nop                                           ; $4391: $00
    rst RST_38                                    ; $4392: $ff
    nop                                           ; $4393: $00
    rst RST_38                                    ; $4394: $ff
    nop                                           ; $4395: $00
    rst RST_38                                    ; $4396: $ff
    nop                                           ; $4397: $00
    rst RST_38                                    ; $4398: $ff
    nop                                           ; $4399: $00
    rst RST_38                                    ; $439a: $ff
    nop                                           ; $439b: $00
    rst RST_38                                    ; $439c: $ff
    nop                                           ; $439d: $00
    rst RST_38                                    ; $439e: $ff
    nop                                           ; $439f: $00
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
    nop                                           ; $43b1: $00
    rst RST_38                                    ; $43b2: $ff
    nop                                           ; $43b3: $00
    rst RST_38                                    ; $43b4: $ff
    nop                                           ; $43b5: $00
    rst RST_38                                    ; $43b6: $ff
    nop                                           ; $43b7: $00
    rst RST_38                                    ; $43b8: $ff
    nop                                           ; $43b9: $00
    rst RST_38                                    ; $43ba: $ff
    nop                                           ; $43bb: $00
    rst RST_38                                    ; $43bc: $ff
    nop                                           ; $43bd: $00
    rst RST_38                                    ; $43be: $ff
    nop                                           ; $43bf: $00
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
    nop                                           ; $43d1: $00
    rst RST_38                                    ; $43d2: $ff
    nop                                           ; $43d3: $00
    rst RST_38                                    ; $43d4: $ff
    nop                                           ; $43d5: $00
    rst RST_38                                    ; $43d6: $ff
    nop                                           ; $43d7: $00
    rst RST_38                                    ; $43d8: $ff
    nop                                           ; $43d9: $00
    rst RST_38                                    ; $43da: $ff
    nop                                           ; $43db: $00
    rst RST_38                                    ; $43dc: $ff
    nop                                           ; $43dd: $00
    rst RST_38                                    ; $43de: $ff
    nop                                           ; $43df: $00
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
    rst RST_38                                    ; $43f0: $ff
    nop                                           ; $43f1: $00
    rst RST_38                                    ; $43f2: $ff
    nop                                           ; $43f3: $00
    rst RST_38                                    ; $43f4: $ff
    nop                                           ; $43f5: $00
    rst RST_38                                    ; $43f6: $ff
    nop                                           ; $43f7: $00
    rst RST_38                                    ; $43f8: $ff
    nop                                           ; $43f9: $00
    rst RST_38                                    ; $43fa: $ff
    nop                                           ; $43fb: $00
    rst RST_38                                    ; $43fc: $ff
    nop                                           ; $43fd: $00
    rst RST_38                                    ; $43fe: $ff
    nop                                           ; $43ff: $00
    rst RST_38                                    ; $4400: $ff
    nop                                           ; $4401: $00
    rst RST_38                                    ; $4402: $ff
    nop                                           ; $4403: $00
    rst RST_38                                    ; $4404: $ff
    nop                                           ; $4405: $00
    rst RST_38                                    ; $4406: $ff
    nop                                           ; $4407: $00
    rst RST_38                                    ; $4408: $ff
    nop                                           ; $4409: $00
    rst RST_38                                    ; $440a: $ff
    nop                                           ; $440b: $00
    rst RST_38                                    ; $440c: $ff
    nop                                           ; $440d: $00
    rst RST_38                                    ; $440e: $ff
    nop                                           ; $440f: $00
    rst RST_38                                    ; $4410: $ff
    nop                                           ; $4411: $00
    rst RST_38                                    ; $4412: $ff
    nop                                           ; $4413: $00
    rst RST_38                                    ; $4414: $ff
    nop                                           ; $4415: $00
    rst RST_38                                    ; $4416: $ff
    nop                                           ; $4417: $00
    rst RST_38                                    ; $4418: $ff
    nop                                           ; $4419: $00
    rst RST_38                                    ; $441a: $ff
    nop                                           ; $441b: $00
    rst RST_38                                    ; $441c: $ff
    nop                                           ; $441d: $00
    rst RST_38                                    ; $441e: $ff
    nop                                           ; $441f: $00
    rst RST_38                                    ; $4420: $ff
    nop                                           ; $4421: $00
    rst RST_38                                    ; $4422: $ff
    nop                                           ; $4423: $00
    rst RST_38                                    ; $4424: $ff
    nop                                           ; $4425: $00
    rst RST_38                                    ; $4426: $ff
    nop                                           ; $4427: $00
    rst RST_38                                    ; $4428: $ff
    nop                                           ; $4429: $00
    rst RST_38                                    ; $442a: $ff
    nop                                           ; $442b: $00
    rst RST_38                                    ; $442c: $ff
    nop                                           ; $442d: $00
    rst RST_38                                    ; $442e: $ff
    nop                                           ; $442f: $00
    rst RST_38                                    ; $4430: $ff
    nop                                           ; $4431: $00
    rst RST_38                                    ; $4432: $ff
    nop                                           ; $4433: $00
    rst RST_38                                    ; $4434: $ff
    nop                                           ; $4435: $00
    rst RST_38                                    ; $4436: $ff
    nop                                           ; $4437: $00
    rst RST_38                                    ; $4438: $ff
    nop                                           ; $4439: $00
    rst RST_38                                    ; $443a: $ff
    nop                                           ; $443b: $00
    rst RST_38                                    ; $443c: $ff
    nop                                           ; $443d: $00
    rst RST_38                                    ; $443e: $ff
    nop                                           ; $443f: $00
    rst RST_38                                    ; $4440: $ff
    nop                                           ; $4441: $00
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
    rst RST_38                                    ; $4450: $ff
    nop                                           ; $4451: $00
    rst RST_38                                    ; $4452: $ff
    nop                                           ; $4453: $00
    rst RST_38                                    ; $4454: $ff
    nop                                           ; $4455: $00
    rst RST_38                                    ; $4456: $ff
    nop                                           ; $4457: $00
    rst RST_38                                    ; $4458: $ff
    nop                                           ; $4459: $00
    rst RST_38                                    ; $445a: $ff
    nop                                           ; $445b: $00
    rst RST_38                                    ; $445c: $ff
    nop                                           ; $445d: $00
    rst RST_38                                    ; $445e: $ff
    nop                                           ; $445f: $00
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
    rst RST_38                                    ; $4470: $ff
    nop                                           ; $4471: $00
    rst RST_38                                    ; $4472: $ff
    nop                                           ; $4473: $00
    rst RST_38                                    ; $4474: $ff
    nop                                           ; $4475: $00
    rst RST_38                                    ; $4476: $ff
    nop                                           ; $4477: $00
    rst RST_38                                    ; $4478: $ff
    nop                                           ; $4479: $00
    rst RST_38                                    ; $447a: $ff
    nop                                           ; $447b: $00
    rst RST_38                                    ; $447c: $ff
    nop                                           ; $447d: $00
    rst RST_38                                    ; $447e: $ff
    nop                                           ; $447f: $00
    rst RST_38                                    ; $4480: $ff
    nop                                           ; $4481: $00
    rst RST_38                                    ; $4482: $ff
    nop                                           ; $4483: $00
    rst RST_38                                    ; $4484: $ff
    nop                                           ; $4485: $00
    rst RST_38                                    ; $4486: $ff
    nop                                           ; $4487: $00
    rst RST_38                                    ; $4488: $ff
    nop                                           ; $4489: $00
    rst RST_38                                    ; $448a: $ff
    nop                                           ; $448b: $00
    rst RST_38                                    ; $448c: $ff
    nop                                           ; $448d: $00
    rst RST_38                                    ; $448e: $ff
    nop                                           ; $448f: $00
    rst RST_38                                    ; $4490: $ff
    nop                                           ; $4491: $00
    rst RST_38                                    ; $4492: $ff
    nop                                           ; $4493: $00
    rst RST_38                                    ; $4494: $ff
    nop                                           ; $4495: $00
    rst RST_38                                    ; $4496: $ff
    nop                                           ; $4497: $00
    rst RST_38                                    ; $4498: $ff
    nop                                           ; $4499: $00
    rst RST_38                                    ; $449a: $ff
    nop                                           ; $449b: $00
    rst RST_38                                    ; $449c: $ff
    nop                                           ; $449d: $00
    rst RST_38                                    ; $449e: $ff
    nop                                           ; $449f: $00
    rst RST_38                                    ; $44a0: $ff
    nop                                           ; $44a1: $00
    rst RST_38                                    ; $44a2: $ff
    nop                                           ; $44a3: $00
    rst RST_38                                    ; $44a4: $ff
    nop                                           ; $44a5: $00
    rst RST_38                                    ; $44a6: $ff
    nop                                           ; $44a7: $00
    rst RST_38                                    ; $44a8: $ff
    nop                                           ; $44a9: $00
    rst RST_38                                    ; $44aa: $ff
    nop                                           ; $44ab: $00
    rst RST_38                                    ; $44ac: $ff
    nop                                           ; $44ad: $00
    rst RST_38                                    ; $44ae: $ff
    nop                                           ; $44af: $00
    rst RST_38                                    ; $44b0: $ff
    nop                                           ; $44b1: $00
    rst RST_38                                    ; $44b2: $ff
    nop                                           ; $44b3: $00
    rst RST_38                                    ; $44b4: $ff
    nop                                           ; $44b5: $00
    rst RST_38                                    ; $44b6: $ff
    nop                                           ; $44b7: $00
    rst RST_38                                    ; $44b8: $ff
    nop                                           ; $44b9: $00
    rst RST_38                                    ; $44ba: $ff
    nop                                           ; $44bb: $00
    rst RST_38                                    ; $44bc: $ff
    nop                                           ; $44bd: $00
    rst RST_38                                    ; $44be: $ff
    nop                                           ; $44bf: $00
    rst RST_38                                    ; $44c0: $ff
    nop                                           ; $44c1: $00
    rst RST_38                                    ; $44c2: $ff
    nop                                           ; $44c3: $00
    rst RST_38                                    ; $44c4: $ff
    nop                                           ; $44c5: $00
    rst RST_38                                    ; $44c6: $ff
    nop                                           ; $44c7: $00
    rst RST_38                                    ; $44c8: $ff
    nop                                           ; $44c9: $00
    rst RST_38                                    ; $44ca: $ff
    nop                                           ; $44cb: $00
    rst RST_38                                    ; $44cc: $ff
    nop                                           ; $44cd: $00
    rst RST_38                                    ; $44ce: $ff
    nop                                           ; $44cf: $00
    rst RST_38                                    ; $44d0: $ff
    nop                                           ; $44d1: $00
    rst RST_38                                    ; $44d2: $ff
    nop                                           ; $44d3: $00
    rst RST_38                                    ; $44d4: $ff
    nop                                           ; $44d5: $00
    rst RST_38                                    ; $44d6: $ff
    nop                                           ; $44d7: $00
    rst RST_38                                    ; $44d8: $ff
    nop                                           ; $44d9: $00
    rst RST_38                                    ; $44da: $ff
    nop                                           ; $44db: $00
    rst RST_38                                    ; $44dc: $ff
    nop                                           ; $44dd: $00
    rst RST_38                                    ; $44de: $ff
    nop                                           ; $44df: $00
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
    nop                                           ; $44eb: $00
    rst RST_38                                    ; $44ec: $ff
    nop                                           ; $44ed: $00
    rst RST_38                                    ; $44ee: $ff
    nop                                           ; $44ef: $00
    rst RST_38                                    ; $44f0: $ff
    nop                                           ; $44f1: $00
    rst RST_38                                    ; $44f2: $ff
    nop                                           ; $44f3: $00
    rst RST_38                                    ; $44f4: $ff
    nop                                           ; $44f5: $00
    rst RST_38                                    ; $44f6: $ff
    nop                                           ; $44f7: $00
    rst RST_38                                    ; $44f8: $ff
    nop                                           ; $44f9: $00
    rst RST_38                                    ; $44fa: $ff
    nop                                           ; $44fb: $00
    rst RST_38                                    ; $44fc: $ff
    nop                                           ; $44fd: $00
    rst RST_38                                    ; $44fe: $ff
    nop                                           ; $44ff: $00
    rst RST_38                                    ; $4500: $ff
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
    nop                                           ; $450b: $00
    rst RST_38                                    ; $450c: $ff
    nop                                           ; $450d: $00
    rst RST_38                                    ; $450e: $ff
    nop                                           ; $450f: $00
    rst RST_38                                    ; $4510: $ff
    nop                                           ; $4511: $00
    rst RST_38                                    ; $4512: $ff
    nop                                           ; $4513: $00
    rst RST_38                                    ; $4514: $ff
    nop                                           ; $4515: $00
    rst RST_38                                    ; $4516: $ff
    nop                                           ; $4517: $00
    rst RST_38                                    ; $4518: $ff
    nop                                           ; $4519: $00
    rst RST_38                                    ; $451a: $ff
    nop                                           ; $451b: $00
    rst RST_38                                    ; $451c: $ff
    nop                                           ; $451d: $00
    rst RST_38                                    ; $451e: $ff
    nop                                           ; $451f: $00
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
    nop                                           ; $452b: $00
    rst RST_38                                    ; $452c: $ff
    nop                                           ; $452d: $00
    rst RST_38                                    ; $452e: $ff
    nop                                           ; $452f: $00
    rst RST_38                                    ; $4530: $ff
    nop                                           ; $4531: $00
    rst RST_38                                    ; $4532: $ff
    nop                                           ; $4533: $00
    rst RST_38                                    ; $4534: $ff
    nop                                           ; $4535: $00
    rst RST_38                                    ; $4536: $ff
    nop                                           ; $4537: $00
    rst RST_38                                    ; $4538: $ff
    nop                                           ; $4539: $00
    rst RST_38                                    ; $453a: $ff
    nop                                           ; $453b: $00
    rst RST_38                                    ; $453c: $ff
    nop                                           ; $453d: $00
    rst RST_38                                    ; $453e: $ff
    nop                                           ; $453f: $00
    rst RST_38                                    ; $4540: $ff
    nop                                           ; $4541: $00
    rst RST_38                                    ; $4542: $ff
    nop                                           ; $4543: $00
    rst RST_38                                    ; $4544: $ff
    nop                                           ; $4545: $00
    rst RST_38                                    ; $4546: $ff
    nop                                           ; $4547: $00
    rst RST_38                                    ; $4548: $ff
    nop                                           ; $4549: $00
    rst RST_38                                    ; $454a: $ff
    nop                                           ; $454b: $00
    rst RST_38                                    ; $454c: $ff
    nop                                           ; $454d: $00
    rst RST_38                                    ; $454e: $ff
    nop                                           ; $454f: $00
    rst RST_38                                    ; $4550: $ff
    nop                                           ; $4551: $00
    rst RST_38                                    ; $4552: $ff
    nop                                           ; $4553: $00
    rst RST_38                                    ; $4554: $ff
    nop                                           ; $4555: $00
    rst RST_38                                    ; $4556: $ff
    nop                                           ; $4557: $00
    rst RST_38                                    ; $4558: $ff
    nop                                           ; $4559: $00
    rst RST_38                                    ; $455a: $ff
    nop                                           ; $455b: $00
    rst RST_38                                    ; $455c: $ff
    nop                                           ; $455d: $00
    rst RST_38                                    ; $455e: $ff
    nop                                           ; $455f: $00
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
    nop                                           ; $456b: $00
    rst RST_38                                    ; $456c: $ff
    nop                                           ; $456d: $00
    rst RST_38                                    ; $456e: $ff
    nop                                           ; $456f: $00
    rst RST_38                                    ; $4570: $ff
    nop                                           ; $4571: $00
    rst RST_38                                    ; $4572: $ff
    nop                                           ; $4573: $00
    rst RST_38                                    ; $4574: $ff
    nop                                           ; $4575: $00
    rst RST_38                                    ; $4576: $ff
    nop                                           ; $4577: $00
    rst RST_38                                    ; $4578: $ff
    nop                                           ; $4579: $00
    rst RST_38                                    ; $457a: $ff
    nop                                           ; $457b: $00
    rst RST_38                                    ; $457c: $ff
    nop                                           ; $457d: $00
    rst RST_38                                    ; $457e: $ff
    nop                                           ; $457f: $00
    rst RST_38                                    ; $4580: $ff
    nop                                           ; $4581: $00
    rst RST_38                                    ; $4582: $ff
    nop                                           ; $4583: $00
    rst RST_38                                    ; $4584: $ff
    nop                                           ; $4585: $00
    rst RST_38                                    ; $4586: $ff
    nop                                           ; $4587: $00
    rst RST_38                                    ; $4588: $ff
    nop                                           ; $4589: $00
    rst RST_38                                    ; $458a: $ff
    nop                                           ; $458b: $00
    rst RST_38                                    ; $458c: $ff
    nop                                           ; $458d: $00
    rst RST_38                                    ; $458e: $ff
    nop                                           ; $458f: $00
    rst RST_38                                    ; $4590: $ff
    nop                                           ; $4591: $00
    rst RST_38                                    ; $4592: $ff
    nop                                           ; $4593: $00
    rst RST_38                                    ; $4594: $ff
    nop                                           ; $4595: $00
    rst RST_38                                    ; $4596: $ff
    nop                                           ; $4597: $00
    rst RST_38                                    ; $4598: $ff
    nop                                           ; $4599: $00
    rst RST_38                                    ; $459a: $ff
    nop                                           ; $459b: $00
    rst RST_38                                    ; $459c: $ff
    nop                                           ; $459d: $00
    rst RST_38                                    ; $459e: $ff
    nop                                           ; $459f: $00
    rst RST_38                                    ; $45a0: $ff
    nop                                           ; $45a1: $00
    rst RST_38                                    ; $45a2: $ff
    nop                                           ; $45a3: $00
    rst RST_38                                    ; $45a4: $ff
    nop                                           ; $45a5: $00
    rst RST_38                                    ; $45a6: $ff
    nop                                           ; $45a7: $00
    rst RST_38                                    ; $45a8: $ff
    nop                                           ; $45a9: $00
    rst RST_38                                    ; $45aa: $ff
    nop                                           ; $45ab: $00
    rst RST_38                                    ; $45ac: $ff
    nop                                           ; $45ad: $00
    rst RST_38                                    ; $45ae: $ff
    nop                                           ; $45af: $00
    rst RST_38                                    ; $45b0: $ff
    nop                                           ; $45b1: $00
    rst RST_38                                    ; $45b2: $ff
    nop                                           ; $45b3: $00
    rst RST_38                                    ; $45b4: $ff
    nop                                           ; $45b5: $00
    rst RST_38                                    ; $45b6: $ff
    nop                                           ; $45b7: $00
    rst RST_38                                    ; $45b8: $ff
    nop                                           ; $45b9: $00
    rst RST_38                                    ; $45ba: $ff
    nop                                           ; $45bb: $00
    rst RST_38                                    ; $45bc: $ff
    nop                                           ; $45bd: $00
    rst RST_38                                    ; $45be: $ff
    nop                                           ; $45bf: $00
    rst RST_38                                    ; $45c0: $ff
    nop                                           ; $45c1: $00
    rst RST_38                                    ; $45c2: $ff
    nop                                           ; $45c3: $00
    rst RST_38                                    ; $45c4: $ff
    nop                                           ; $45c5: $00
    rst RST_38                                    ; $45c6: $ff
    nop                                           ; $45c7: $00
    rst RST_38                                    ; $45c8: $ff
    nop                                           ; $45c9: $00
    rst RST_38                                    ; $45ca: $ff
    nop                                           ; $45cb: $00
    rst RST_38                                    ; $45cc: $ff
    nop                                           ; $45cd: $00
    rst RST_38                                    ; $45ce: $ff
    nop                                           ; $45cf: $00
    rst RST_38                                    ; $45d0: $ff
    nop                                           ; $45d1: $00
    rst RST_38                                    ; $45d2: $ff
    nop                                           ; $45d3: $00
    rst RST_38                                    ; $45d4: $ff
    nop                                           ; $45d5: $00
    rst RST_38                                    ; $45d6: $ff
    nop                                           ; $45d7: $00
    rst RST_38                                    ; $45d8: $ff
    nop                                           ; $45d9: $00
    rst RST_38                                    ; $45da: $ff
    nop                                           ; $45db: $00
    rst RST_38                                    ; $45dc: $ff
    nop                                           ; $45dd: $00
    rst RST_38                                    ; $45de: $ff
    nop                                           ; $45df: $00
    rst RST_38                                    ; $45e0: $ff
    nop                                           ; $45e1: $00
    rst RST_38                                    ; $45e2: $ff
    nop                                           ; $45e3: $00
    rst RST_38                                    ; $45e4: $ff
    nop                                           ; $45e5: $00
    rst RST_38                                    ; $45e6: $ff
    nop                                           ; $45e7: $00
    rst RST_38                                    ; $45e8: $ff
    nop                                           ; $45e9: $00
    rst RST_38                                    ; $45ea: $ff
    nop                                           ; $45eb: $00
    rst RST_38                                    ; $45ec: $ff
    nop                                           ; $45ed: $00
    rst RST_38                                    ; $45ee: $ff
    nop                                           ; $45ef: $00
    rst RST_38                                    ; $45f0: $ff
    nop                                           ; $45f1: $00
    rst RST_38                                    ; $45f2: $ff
    nop                                           ; $45f3: $00
    rst RST_38                                    ; $45f4: $ff
    nop                                           ; $45f5: $00
    rst RST_38                                    ; $45f6: $ff
    nop                                           ; $45f7: $00
    rst RST_38                                    ; $45f8: $ff
    nop                                           ; $45f9: $00
    rst RST_38                                    ; $45fa: $ff
    nop                                           ; $45fb: $00
    rst RST_38                                    ; $45fc: $ff
    nop                                           ; $45fd: $00
    rst RST_38                                    ; $45fe: $ff
    nop                                           ; $45ff: $00
    rst RST_38                                    ; $4600: $ff
    nop                                           ; $4601: $00
    rst RST_38                                    ; $4602: $ff
    nop                                           ; $4603: $00
    rst RST_38                                    ; $4604: $ff
    nop                                           ; $4605: $00
    rst RST_38                                    ; $4606: $ff
    nop                                           ; $4607: $00
    rst RST_38                                    ; $4608: $ff
    nop                                           ; $4609: $00
    rst RST_38                                    ; $460a: $ff
    nop                                           ; $460b: $00
    rst RST_38                                    ; $460c: $ff
    nop                                           ; $460d: $00
    rst RST_38                                    ; $460e: $ff
    nop                                           ; $460f: $00
    rst RST_38                                    ; $4610: $ff
    nop                                           ; $4611: $00
    rst RST_38                                    ; $4612: $ff
    nop                                           ; $4613: $00
    rst RST_38                                    ; $4614: $ff
    nop                                           ; $4615: $00
    rst RST_38                                    ; $4616: $ff
    nop                                           ; $4617: $00
    rst RST_38                                    ; $4618: $ff
    nop                                           ; $4619: $00
    rst RST_38                                    ; $461a: $ff
    nop                                           ; $461b: $00
    rst RST_38                                    ; $461c: $ff
    nop                                           ; $461d: $00
    rst RST_38                                    ; $461e: $ff
    nop                                           ; $461f: $00
    rst RST_38                                    ; $4620: $ff
    nop                                           ; $4621: $00
    rst RST_38                                    ; $4622: $ff
    nop                                           ; $4623: $00
    rst RST_38                                    ; $4624: $ff
    nop                                           ; $4625: $00
    rst RST_38                                    ; $4626: $ff
    nop                                           ; $4627: $00
    rst RST_38                                    ; $4628: $ff
    nop                                           ; $4629: $00
    rst RST_38                                    ; $462a: $ff
    nop                                           ; $462b: $00
    rst RST_38                                    ; $462c: $ff
    nop                                           ; $462d: $00
    rst RST_38                                    ; $462e: $ff
    nop                                           ; $462f: $00
    rst RST_38                                    ; $4630: $ff
    nop                                           ; $4631: $00
    rst RST_38                                    ; $4632: $ff
    nop                                           ; $4633: $00
    rst RST_38                                    ; $4634: $ff
    nop                                           ; $4635: $00
    rst RST_38                                    ; $4636: $ff
    nop                                           ; $4637: $00
    rst RST_38                                    ; $4638: $ff
    nop                                           ; $4639: $00
    rst RST_38                                    ; $463a: $ff
    nop                                           ; $463b: $00
    rst RST_38                                    ; $463c: $ff
    nop                                           ; $463d: $00
    rst RST_38                                    ; $463e: $ff
    nop                                           ; $463f: $00
    rst RST_38                                    ; $4640: $ff
    nop                                           ; $4641: $00
    rst RST_38                                    ; $4642: $ff
    nop                                           ; $4643: $00
    rst RST_38                                    ; $4644: $ff
    nop                                           ; $4645: $00
    rst RST_38                                    ; $4646: $ff
    nop                                           ; $4647: $00
    rst RST_38                                    ; $4648: $ff
    nop                                           ; $4649: $00
    rst RST_38                                    ; $464a: $ff
    nop                                           ; $464b: $00
    rst RST_38                                    ; $464c: $ff
    nop                                           ; $464d: $00
    rst RST_38                                    ; $464e: $ff
    nop                                           ; $464f: $00
    rst RST_38                                    ; $4650: $ff
    nop                                           ; $4651: $00
    rst RST_38                                    ; $4652: $ff
    nop                                           ; $4653: $00
    rst RST_38                                    ; $4654: $ff
    nop                                           ; $4655: $00
    rst RST_38                                    ; $4656: $ff
    nop                                           ; $4657: $00
    rst RST_38                                    ; $4658: $ff
    nop                                           ; $4659: $00
    rst RST_38                                    ; $465a: $ff
    nop                                           ; $465b: $00
    rst RST_38                                    ; $465c: $ff
    nop                                           ; $465d: $00
    rst RST_38                                    ; $465e: $ff
    nop                                           ; $465f: $00
    rst RST_38                                    ; $4660: $ff
    nop                                           ; $4661: $00
    rst RST_38                                    ; $4662: $ff
    nop                                           ; $4663: $00
    rst RST_38                                    ; $4664: $ff
    nop                                           ; $4665: $00
    rst RST_38                                    ; $4666: $ff
    nop                                           ; $4667: $00
    rst RST_38                                    ; $4668: $ff
    nop                                           ; $4669: $00
    rst RST_38                                    ; $466a: $ff
    nop                                           ; $466b: $00
    rst RST_38                                    ; $466c: $ff
    nop                                           ; $466d: $00
    rst RST_38                                    ; $466e: $ff
    nop                                           ; $466f: $00
    rst RST_38                                    ; $4670: $ff
    nop                                           ; $4671: $00
    rst RST_38                                    ; $4672: $ff
    nop                                           ; $4673: $00
    rst RST_38                                    ; $4674: $ff
    nop                                           ; $4675: $00
    rst RST_38                                    ; $4676: $ff
    nop                                           ; $4677: $00
    rst RST_38                                    ; $4678: $ff
    nop                                           ; $4679: $00
    rst RST_38                                    ; $467a: $ff
    nop                                           ; $467b: $00
    rst RST_38                                    ; $467c: $ff
    nop                                           ; $467d: $00
    rst RST_38                                    ; $467e: $ff
    nop                                           ; $467f: $00
    rst RST_38                                    ; $4680: $ff
    nop                                           ; $4681: $00
    rst RST_38                                    ; $4682: $ff
    nop                                           ; $4683: $00
    rst RST_38                                    ; $4684: $ff
    nop                                           ; $4685: $00
    rst RST_38                                    ; $4686: $ff
    nop                                           ; $4687: $00
    rst RST_38                                    ; $4688: $ff
    nop                                           ; $4689: $00
    rst RST_38                                    ; $468a: $ff
    nop                                           ; $468b: $00
    rst RST_38                                    ; $468c: $ff
    nop                                           ; $468d: $00
    rst RST_38                                    ; $468e: $ff
    nop                                           ; $468f: $00
    rst RST_38                                    ; $4690: $ff
    nop                                           ; $4691: $00
    rst RST_38                                    ; $4692: $ff
    nop                                           ; $4693: $00
    rst RST_38                                    ; $4694: $ff
    nop                                           ; $4695: $00
    rst RST_38                                    ; $4696: $ff
    nop                                           ; $4697: $00
    rst RST_38                                    ; $4698: $ff
    nop                                           ; $4699: $00
    rst RST_38                                    ; $469a: $ff
    nop                                           ; $469b: $00
    rst RST_38                                    ; $469c: $ff
    nop                                           ; $469d: $00
    rst RST_38                                    ; $469e: $ff
    nop                                           ; $469f: $00
    rst RST_38                                    ; $46a0: $ff
    nop                                           ; $46a1: $00
    rst RST_38                                    ; $46a2: $ff
    nop                                           ; $46a3: $00
    rst RST_38                                    ; $46a4: $ff
    nop                                           ; $46a5: $00
    rst RST_38                                    ; $46a6: $ff
    nop                                           ; $46a7: $00
    rst RST_38                                    ; $46a8: $ff
    nop                                           ; $46a9: $00
    rst RST_38                                    ; $46aa: $ff
    nop                                           ; $46ab: $00
    rst RST_38                                    ; $46ac: $ff
    nop                                           ; $46ad: $00
    rst RST_38                                    ; $46ae: $ff
    nop                                           ; $46af: $00
    rst RST_38                                    ; $46b0: $ff
    nop                                           ; $46b1: $00
    rst RST_38                                    ; $46b2: $ff
    nop                                           ; $46b3: $00
    rst RST_38                                    ; $46b4: $ff
    nop                                           ; $46b5: $00
    rst RST_38                                    ; $46b6: $ff
    nop                                           ; $46b7: $00
    rst RST_38                                    ; $46b8: $ff
    nop                                           ; $46b9: $00
    rst RST_38                                    ; $46ba: $ff
    nop                                           ; $46bb: $00
    rst RST_38                                    ; $46bc: $ff
    nop                                           ; $46bd: $00
    rst RST_38                                    ; $46be: $ff
    nop                                           ; $46bf: $00
    rst RST_38                                    ; $46c0: $ff
    nop                                           ; $46c1: $00
    rst RST_38                                    ; $46c2: $ff
    nop                                           ; $46c3: $00
    rst RST_38                                    ; $46c4: $ff
    nop                                           ; $46c5: $00
    rst RST_38                                    ; $46c6: $ff
    nop                                           ; $46c7: $00
    rst RST_38                                    ; $46c8: $ff
    nop                                           ; $46c9: $00
    rst RST_38                                    ; $46ca: $ff
    nop                                           ; $46cb: $00
    rst RST_38                                    ; $46cc: $ff
    nop                                           ; $46cd: $00
    rst RST_38                                    ; $46ce: $ff
    nop                                           ; $46cf: $00
    rst RST_38                                    ; $46d0: $ff
    nop                                           ; $46d1: $00
    rst RST_38                                    ; $46d2: $ff
    nop                                           ; $46d3: $00
    rst RST_38                                    ; $46d4: $ff
    nop                                           ; $46d5: $00
    rst RST_38                                    ; $46d6: $ff
    nop                                           ; $46d7: $00
    rst RST_38                                    ; $46d8: $ff
    nop                                           ; $46d9: $00
    rst RST_38                                    ; $46da: $ff
    nop                                           ; $46db: $00
    rst RST_38                                    ; $46dc: $ff
    nop                                           ; $46dd: $00
    rst RST_38                                    ; $46de: $ff
    nop                                           ; $46df: $00
    rst RST_38                                    ; $46e0: $ff
    nop                                           ; $46e1: $00
    rst RST_38                                    ; $46e2: $ff
    nop                                           ; $46e3: $00
    rst RST_38                                    ; $46e4: $ff
    nop                                           ; $46e5: $00
    rst RST_38                                    ; $46e6: $ff
    nop                                           ; $46e7: $00
    rst RST_38                                    ; $46e8: $ff
    nop                                           ; $46e9: $00
    rst RST_38                                    ; $46ea: $ff
    nop                                           ; $46eb: $00
    rst RST_38                                    ; $46ec: $ff
    nop                                           ; $46ed: $00
    rst RST_38                                    ; $46ee: $ff
    nop                                           ; $46ef: $00
    rst RST_38                                    ; $46f0: $ff
    nop                                           ; $46f1: $00
    rst RST_38                                    ; $46f2: $ff
    nop                                           ; $46f3: $00
    rst RST_38                                    ; $46f4: $ff
    nop                                           ; $46f5: $00
    rst RST_38                                    ; $46f6: $ff
    nop                                           ; $46f7: $00
    rst RST_38                                    ; $46f8: $ff
    nop                                           ; $46f9: $00
    rst RST_38                                    ; $46fa: $ff
    nop                                           ; $46fb: $00
    rst RST_38                                    ; $46fc: $ff
    nop                                           ; $46fd: $00
    rst RST_38                                    ; $46fe: $ff
    nop                                           ; $46ff: $00
    rst RST_38                                    ; $4700: $ff
    nop                                           ; $4701: $00
    rst RST_38                                    ; $4702: $ff
    nop                                           ; $4703: $00
    rst RST_38                                    ; $4704: $ff
    nop                                           ; $4705: $00
    rst RST_38                                    ; $4706: $ff
    nop                                           ; $4707: $00
    rst RST_38                                    ; $4708: $ff
    nop                                           ; $4709: $00
    rst RST_38                                    ; $470a: $ff
    nop                                           ; $470b: $00
    rst RST_38                                    ; $470c: $ff
    nop                                           ; $470d: $00
    rst RST_38                                    ; $470e: $ff
    nop                                           ; $470f: $00
    rst RST_38                                    ; $4710: $ff
    nop                                           ; $4711: $00
    rst RST_38                                    ; $4712: $ff
    nop                                           ; $4713: $00
    rst RST_38                                    ; $4714: $ff
    nop                                           ; $4715: $00
    rst RST_38                                    ; $4716: $ff
    nop                                           ; $4717: $00
    rst RST_38                                    ; $4718: $ff
    nop                                           ; $4719: $00
    rst RST_38                                    ; $471a: $ff
    nop                                           ; $471b: $00
    rst RST_38                                    ; $471c: $ff
    nop                                           ; $471d: $00
    rst RST_38                                    ; $471e: $ff
    nop                                           ; $471f: $00
    rst RST_38                                    ; $4720: $ff
    nop                                           ; $4721: $00
    rst RST_38                                    ; $4722: $ff
    nop                                           ; $4723: $00
    rst RST_38                                    ; $4724: $ff
    nop                                           ; $4725: $00
    rst RST_38                                    ; $4726: $ff
    nop                                           ; $4727: $00
    rst RST_38                                    ; $4728: $ff
    nop                                           ; $4729: $00
    rst RST_38                                    ; $472a: $ff
    nop                                           ; $472b: $00
    rst RST_38                                    ; $472c: $ff
    nop                                           ; $472d: $00
    rst RST_38                                    ; $472e: $ff
    nop                                           ; $472f: $00
    rst RST_38                                    ; $4730: $ff
    nop                                           ; $4731: $00
    rst RST_38                                    ; $4732: $ff
    nop                                           ; $4733: $00
    rst RST_38                                    ; $4734: $ff
    nop                                           ; $4735: $00
    rst RST_38                                    ; $4736: $ff
    nop                                           ; $4737: $00
    rst RST_38                                    ; $4738: $ff
    nop                                           ; $4739: $00
    rst RST_38                                    ; $473a: $ff
    nop                                           ; $473b: $00
    rst RST_38                                    ; $473c: $ff
    nop                                           ; $473d: $00
    rst RST_38                                    ; $473e: $ff
    nop                                           ; $473f: $00
    rst RST_38                                    ; $4740: $ff
    nop                                           ; $4741: $00
    rst RST_38                                    ; $4742: $ff
    nop                                           ; $4743: $00
    rst RST_38                                    ; $4744: $ff
    nop                                           ; $4745: $00
    rst RST_38                                    ; $4746: $ff
    nop                                           ; $4747: $00
    rst RST_38                                    ; $4748: $ff
    nop                                           ; $4749: $00
    rst RST_38                                    ; $474a: $ff
    nop                                           ; $474b: $00
    rst RST_38                                    ; $474c: $ff
    nop                                           ; $474d: $00
    rst RST_38                                    ; $474e: $ff
    nop                                           ; $474f: $00
    rst RST_38                                    ; $4750: $ff
    nop                                           ; $4751: $00
    rst RST_38                                    ; $4752: $ff
    nop                                           ; $4753: $00
    rst RST_38                                    ; $4754: $ff
    nop                                           ; $4755: $00
    rst RST_38                                    ; $4756: $ff
    nop                                           ; $4757: $00
    rst RST_38                                    ; $4758: $ff
    nop                                           ; $4759: $00
    rst RST_38                                    ; $475a: $ff
    nop                                           ; $475b: $00
    rst RST_38                                    ; $475c: $ff
    nop                                           ; $475d: $00
    rst RST_38                                    ; $475e: $ff
    nop                                           ; $475f: $00
    rst RST_38                                    ; $4760: $ff
    nop                                           ; $4761: $00
    rst RST_38                                    ; $4762: $ff
    nop                                           ; $4763: $00
    rst RST_38                                    ; $4764: $ff
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
    rst RST_38                                    ; $4770: $ff
    nop                                           ; $4771: $00
    rst RST_38                                    ; $4772: $ff
    nop                                           ; $4773: $00
    rst RST_38                                    ; $4774: $ff
    nop                                           ; $4775: $00
    rst RST_38                                    ; $4776: $ff
    nop                                           ; $4777: $00
    rst RST_38                                    ; $4778: $ff
    nop                                           ; $4779: $00
    rst RST_38                                    ; $477a: $ff
    nop                                           ; $477b: $00
    rst RST_38                                    ; $477c: $ff
    nop                                           ; $477d: $00
    rst RST_38                                    ; $477e: $ff
    nop                                           ; $477f: $00
    rst RST_38                                    ; $4780: $ff
    nop                                           ; $4781: $00
    rst RST_38                                    ; $4782: $ff
    nop                                           ; $4783: $00
    rst RST_38                                    ; $4784: $ff
    nop                                           ; $4785: $00
    rst RST_38                                    ; $4786: $ff
    nop                                           ; $4787: $00
    rst RST_38                                    ; $4788: $ff
    nop                                           ; $4789: $00
    rst RST_38                                    ; $478a: $ff
    nop                                           ; $478b: $00
    rst RST_38                                    ; $478c: $ff
    nop                                           ; $478d: $00
    rst RST_38                                    ; $478e: $ff
    nop                                           ; $478f: $00
    rst RST_38                                    ; $4790: $ff
    nop                                           ; $4791: $00
    rst RST_38                                    ; $4792: $ff
    nop                                           ; $4793: $00
    rst RST_38                                    ; $4794: $ff
    nop                                           ; $4795: $00
    rst RST_38                                    ; $4796: $ff
    nop                                           ; $4797: $00
    rst RST_38                                    ; $4798: $ff
    nop                                           ; $4799: $00
    rst RST_38                                    ; $479a: $ff
    nop                                           ; $479b: $00
    rst RST_38                                    ; $479c: $ff
    nop                                           ; $479d: $00
    rst RST_38                                    ; $479e: $ff
    nop                                           ; $479f: $00
    rst RST_38                                    ; $47a0: $ff
    nop                                           ; $47a1: $00
    rst RST_38                                    ; $47a2: $ff
    nop                                           ; $47a3: $00
    rst RST_38                                    ; $47a4: $ff
    nop                                           ; $47a5: $00
    rst RST_38                                    ; $47a6: $ff
    nop                                           ; $47a7: $00
    rst RST_38                                    ; $47a8: $ff
    nop                                           ; $47a9: $00
    rst RST_38                                    ; $47aa: $ff
    nop                                           ; $47ab: $00
    rst RST_38                                    ; $47ac: $ff
    nop                                           ; $47ad: $00
    rst RST_38                                    ; $47ae: $ff
    nop                                           ; $47af: $00
    rst RST_38                                    ; $47b0: $ff
    nop                                           ; $47b1: $00
    rst RST_38                                    ; $47b2: $ff
    nop                                           ; $47b3: $00
    rst RST_38                                    ; $47b4: $ff
    nop                                           ; $47b5: $00
    rst RST_38                                    ; $47b6: $ff
    nop                                           ; $47b7: $00
    rst RST_38                                    ; $47b8: $ff
    nop                                           ; $47b9: $00
    rst RST_38                                    ; $47ba: $ff
    nop                                           ; $47bb: $00
    rst RST_38                                    ; $47bc: $ff
    nop                                           ; $47bd: $00
    rst RST_38                                    ; $47be: $ff
    nop                                           ; $47bf: $00
    rst RST_38                                    ; $47c0: $ff
    nop                                           ; $47c1: $00
    rst RST_38                                    ; $47c2: $ff
    nop                                           ; $47c3: $00
    rst RST_38                                    ; $47c4: $ff
    nop                                           ; $47c5: $00
    rst RST_38                                    ; $47c6: $ff
    nop                                           ; $47c7: $00
    rst RST_38                                    ; $47c8: $ff
    nop                                           ; $47c9: $00
    rst RST_38                                    ; $47ca: $ff
    nop                                           ; $47cb: $00
    rst RST_38                                    ; $47cc: $ff
    nop                                           ; $47cd: $00
    rst RST_38                                    ; $47ce: $ff
    nop                                           ; $47cf: $00
    rst RST_38                                    ; $47d0: $ff
    nop                                           ; $47d1: $00
    rst RST_38                                    ; $47d2: $ff
    nop                                           ; $47d3: $00
    rst RST_38                                    ; $47d4: $ff
    nop                                           ; $47d5: $00
    rst RST_38                                    ; $47d6: $ff
    nop                                           ; $47d7: $00
    rst RST_38                                    ; $47d8: $ff
    nop                                           ; $47d9: $00
    rst RST_38                                    ; $47da: $ff
    nop                                           ; $47db: $00
    rst RST_38                                    ; $47dc: $ff
    nop                                           ; $47dd: $00
    rst RST_38                                    ; $47de: $ff
    nop                                           ; $47df: $00
    rst RST_38                                    ; $47e0: $ff
    nop                                           ; $47e1: $00
    rst RST_38                                    ; $47e2: $ff
    nop                                           ; $47e3: $00
    rst RST_38                                    ; $47e4: $ff
    nop                                           ; $47e5: $00
    rst RST_38                                    ; $47e6: $ff
    nop                                           ; $47e7: $00
    rst RST_38                                    ; $47e8: $ff
    nop                                           ; $47e9: $00
    rst RST_38                                    ; $47ea: $ff
    nop                                           ; $47eb: $00
    rst RST_38                                    ; $47ec: $ff
    nop                                           ; $47ed: $00
    rst RST_38                                    ; $47ee: $ff
    nop                                           ; $47ef: $00
    rst RST_38                                    ; $47f0: $ff
    nop                                           ; $47f1: $00
    rst RST_38                                    ; $47f2: $ff
    nop                                           ; $47f3: $00
    rst RST_38                                    ; $47f4: $ff
    nop                                           ; $47f5: $00
    rst RST_38                                    ; $47f6: $ff
    nop                                           ; $47f7: $00
    rst RST_38                                    ; $47f8: $ff
    nop                                           ; $47f9: $00
    rst RST_38                                    ; $47fa: $ff
    nop                                           ; $47fb: $00
    rst RST_38                                    ; $47fc: $ff
    nop                                           ; $47fd: $00
    rst RST_38                                    ; $47fe: $ff
    nop                                           ; $47ff: $00
    rst RST_38                                    ; $4800: $ff
    nop                                           ; $4801: $00
    rst RST_38                                    ; $4802: $ff
    nop                                           ; $4803: $00
    rst RST_38                                    ; $4804: $ff
    nop                                           ; $4805: $00
    rst RST_38                                    ; $4806: $ff
    nop                                           ; $4807: $00
    rst RST_38                                    ; $4808: $ff
    nop                                           ; $4809: $00
    db $fc                                        ; $480a: $fc
    ld bc, $07f8                                  ; $480b: $01 $f8 $07
    ldh a, [rTAC]                                 ; $480e: $f0 $07
    rst RST_38                                    ; $4810: $ff
    nop                                           ; $4811: $00
    rst RST_38                                    ; $4812: $ff
    nop                                           ; $4813: $00
    rst RST_38                                    ; $4814: $ff
    nop                                           ; $4815: $00
    rst RST_38                                    ; $4816: $ff
    nop                                           ; $4817: $00
    rst RST_38                                    ; $4818: $ff
    nop                                           ; $4819: $00
    ccf                                           ; $481a: $3f
    ret nz                                        ; $481b: $c0

    rra                                           ; $481c: $1f
    ldh [$ff1f], a                                ; $481d: $e0 $1f
    ldh [rIE], a                                  ; $481f: $e0 $ff
    nop                                           ; $4821: $00
    rst RST_38                                    ; $4822: $ff
    nop                                           ; $4823: $00
    rst RST_38                                    ; $4824: $ff
    nop                                           ; $4825: $00
    rst RST_38                                    ; $4826: $ff
    nop                                           ; $4827: $00
    rst RST_38                                    ; $4828: $ff
    nop                                           ; $4829: $00
    rst RST_38                                    ; $482a: $ff
    rrca                                          ; $482b: $0f
    rst RST_38                                    ; $482c: $ff
    inc bc                                        ; $482d: $03
    rst RST_38                                    ; $482e: $ff
    inc bc                                        ; $482f: $03
    rst RST_38                                    ; $4830: $ff
    nop                                           ; $4831: $00
    rst RST_38                                    ; $4832: $ff
    nop                                           ; $4833: $00
    rst RST_38                                    ; $4834: $ff
    nop                                           ; $4835: $00
    rst RST_38                                    ; $4836: $ff
    nop                                           ; $4837: $00
    rst RST_38                                    ; $4838: $ff
    nop                                           ; $4839: $00
    rst RST_38                                    ; $483a: $ff
    db $db                                        ; $483b: $db
    rst RST_38                                    ; $483c: $ff
    dec de                                        ; $483d: $1b
    rst RST_38                                    ; $483e: $ff
    dec de                                        ; $483f: $1b
    rst RST_38                                    ; $4840: $ff
    nop                                           ; $4841: $00
    rst RST_38                                    ; $4842: $ff
    nop                                           ; $4843: $00
    rst RST_38                                    ; $4844: $ff
    nop                                           ; $4845: $00
    rst RST_38                                    ; $4846: $ff
    nop                                           ; $4847: $00
    rst RST_38                                    ; $4848: $ff
    nop                                           ; $4849: $00
    rst RST_38                                    ; $484a: $ff
    dec bc                                        ; $484b: $0b
    rst RST_38                                    ; $484c: $ff
    sbc e                                         ; $484d: $9b
    rst RST_38                                    ; $484e: $ff
    ei                                            ; $484f: $fb
    rst RST_38                                    ; $4850: $ff
    nop                                           ; $4851: $00
    rst RST_38                                    ; $4852: $ff
    nop                                           ; $4853: $00
    rst RST_38                                    ; $4854: $ff
    nop                                           ; $4855: $00
    rst RST_38                                    ; $4856: $ff
    nop                                           ; $4857: $00
    rst RST_38                                    ; $4858: $ff
    nop                                           ; $4859: $00
    rst RST_38                                    ; $485a: $ff
    di                                            ; $485b: $f3
    rst RST_38                                    ; $485c: $ff
    nop                                           ; $485d: $00
    rst RST_38                                    ; $485e: $ff
    ldh [rIE], a                                  ; $485f: $e0 $ff
    nop                                           ; $4861: $00
    rst RST_38                                    ; $4862: $ff
    nop                                           ; $4863: $00
    rst RST_38                                    ; $4864: $ff
    nop                                           ; $4865: $00
    rst RST_38                                    ; $4866: $ff
    nop                                           ; $4867: $00
    rst RST_38                                    ; $4868: $ff
    nop                                           ; $4869: $00
    rst RST_38                                    ; $486a: $ff
    rst RST_30                                    ; $486b: $f7
    rst RST_38                                    ; $486c: $ff
    add $ff                                       ; $486d: $c6 $ff
    add $ff                                       ; $486f: $c6 $ff
    nop                                           ; $4871: $00
    rst RST_38                                    ; $4872: $ff
    nop                                           ; $4873: $00
    rst RST_38                                    ; $4874: $ff
    nop                                           ; $4875: $00
    rst RST_38                                    ; $4876: $ff
    nop                                           ; $4877: $00
    rst RST_38                                    ; $4878: $ff
    nop                                           ; $4879: $00
    rst RST_38                                    ; $487a: $ff
    call z, Call_00b_6dff                         ; $487b: $cc $ff $6d
    rst RST_38                                    ; $487e: $ff
    ld l, l                                       ; $487f: $6d
    rst RST_38                                    ; $4880: $ff
    nop                                           ; $4881: $00
    rst RST_38                                    ; $4882: $ff
    nop                                           ; $4883: $00
    rst RST_38                                    ; $4884: $ff
    nop                                           ; $4885: $00
    rst RST_38                                    ; $4886: $ff
    nop                                           ; $4887: $00
    rst RST_38                                    ; $4888: $ff
    nop                                           ; $4889: $00
    rst RST_38                                    ; $488a: $ff
    di                                            ; $488b: $f3
    rst RST_38                                    ; $488c: $ff
    sbc e                                         ; $488d: $9b
    rst RST_38                                    ; $488e: $ff
    sbc e                                         ; $488f: $9b
    rst RST_38                                    ; $4890: $ff
    nop                                           ; $4891: $00
    rst RST_38                                    ; $4892: $ff
    nop                                           ; $4893: $00
    rst RST_38                                    ; $4894: $ff
    nop                                           ; $4895: $00
    rst RST_38                                    ; $4896: $ff
    nop                                           ; $4897: $00
    rst RST_38                                    ; $4898: $ff
    nop                                           ; $4899: $00
    rst RST_38                                    ; $489a: $ff
    nop                                           ; $489b: $00
    rst RST_38                                    ; $489c: $ff
    nop                                           ; $489d: $00
    rst RST_38                                    ; $489e: $ff
    nop                                           ; $489f: $00
    nop                                           ; $48a0: $00
    nop                                           ; $48a1: $00
    nop                                           ; $48a2: $00
    nop                                           ; $48a3: $00
    nop                                           ; $48a4: $00
    nop                                           ; $48a5: $00
    nop                                           ; $48a6: $00
    nop                                           ; $48a7: $00
    nop                                           ; $48a8: $00
    nop                                           ; $48a9: $00
    nop                                           ; $48aa: $00
    nop                                           ; $48ab: $00
    nop                                           ; $48ac: $00
    nop                                           ; $48ad: $00
    nop                                           ; $48ae: $00
    nop                                           ; $48af: $00
    nop                                           ; $48b0: $00
    nop                                           ; $48b1: $00
    nop                                           ; $48b2: $00
    nop                                           ; $48b3: $00
    nop                                           ; $48b4: $00
    nop                                           ; $48b5: $00
    nop                                           ; $48b6: $00
    nop                                           ; $48b7: $00
    nop                                           ; $48b8: $00
    nop                                           ; $48b9: $00
    nop                                           ; $48ba: $00
    nop                                           ; $48bb: $00
    nop                                           ; $48bc: $00
    nop                                           ; $48bd: $00
    nop                                           ; $48be: $00
    nop                                           ; $48bf: $00
    nop                                           ; $48c0: $00
    nop                                           ; $48c1: $00
    nop                                           ; $48c2: $00
    nop                                           ; $48c3: $00
    nop                                           ; $48c4: $00
    nop                                           ; $48c5: $00
    nop                                           ; $48c6: $00
    nop                                           ; $48c7: $00
    nop                                           ; $48c8: $00
    nop                                           ; $48c9: $00
    nop                                           ; $48ca: $00
    nop                                           ; $48cb: $00
    nop                                           ; $48cc: $00
    nop                                           ; $48cd: $00
    nop                                           ; $48ce: $00
    nop                                           ; $48cf: $00
    nop                                           ; $48d0: $00
    nop                                           ; $48d1: $00
    nop                                           ; $48d2: $00
    nop                                           ; $48d3: $00
    nop                                           ; $48d4: $00
    nop                                           ; $48d5: $00
    nop                                           ; $48d6: $00
    nop                                           ; $48d7: $00
    nop                                           ; $48d8: $00
    nop                                           ; $48d9: $00
    nop                                           ; $48da: $00
    nop                                           ; $48db: $00
    nop                                           ; $48dc: $00
    nop                                           ; $48dd: $00
    nop                                           ; $48de: $00
    nop                                           ; $48df: $00
    nop                                           ; $48e0: $00
    nop                                           ; $48e1: $00
    nop                                           ; $48e2: $00
    nop                                           ; $48e3: $00
    nop                                           ; $48e4: $00
    nop                                           ; $48e5: $00
    nop                                           ; $48e6: $00
    nop                                           ; $48e7: $00
    nop                                           ; $48e8: $00
    nop                                           ; $48e9: $00
    nop                                           ; $48ea: $00
    nop                                           ; $48eb: $00
    nop                                           ; $48ec: $00
    nop                                           ; $48ed: $00
    nop                                           ; $48ee: $00
    nop                                           ; $48ef: $00
    nop                                           ; $48f0: $00
    nop                                           ; $48f1: $00
    nop                                           ; $48f2: $00
    nop                                           ; $48f3: $00
    nop                                           ; $48f4: $00
    nop                                           ; $48f5: $00
    nop                                           ; $48f6: $00
    nop                                           ; $48f7: $00
    nop                                           ; $48f8: $00
    nop                                           ; $48f9: $00
    nop                                           ; $48fa: $00
    nop                                           ; $48fb: $00
    nop                                           ; $48fc: $00
    nop                                           ; $48fd: $00
    nop                                           ; $48fe: $00
    nop                                           ; $48ff: $00
    ldh a, [rIF]                                  ; $4900: $f0 $0f
    ldh a, [rIF]                                  ; $4902: $f0 $0f
    ld hl, sp+$07                                 ; $4904: $f8 $07
    rst RST_38                                    ; $4906: $ff
    nop                                           ; $4907: $00
    rst RST_38                                    ; $4908: $ff
    nop                                           ; $4909: $00
    rst RST_38                                    ; $490a: $ff
    nop                                           ; $490b: $00
    rst RST_38                                    ; $490c: $ff
    nop                                           ; $490d: $00
    rst RST_38                                    ; $490e: $ff
    rst RST_38                                    ; $490f: $ff
    rra                                           ; $4910: $1f
    ret nz                                        ; $4911: $c0

    ccf                                           ; $4912: $3f
    ret nz                                        ; $4913: $c0

    ld a, a                                       ; $4914: $7f
    nop                                           ; $4915: $00
    rst RST_38                                    ; $4916: $ff
    nop                                           ; $4917: $00
    rst RST_38                                    ; $4918: $ff
    nop                                           ; $4919: $00
    rst RST_38                                    ; $491a: $ff
    nop                                           ; $491b: $00
    rst RST_38                                    ; $491c: $ff
    nop                                           ; $491d: $00
    rst RST_38                                    ; $491e: $ff
    rst RST_38                                    ; $491f: $ff
    rst RST_38                                    ; $4920: $ff
    inc bc                                        ; $4921: $03
    rst RST_38                                    ; $4922: $ff
    inc bc                                        ; $4923: $03
    rst RST_38                                    ; $4924: $ff
    inc bc                                        ; $4925: $03
    rst RST_38                                    ; $4926: $ff
    nop                                           ; $4927: $00
    rst RST_38                                    ; $4928: $ff
    nop                                           ; $4929: $00
    rst RST_38                                    ; $492a: $ff
    nop                                           ; $492b: $00
    rst RST_38                                    ; $492c: $ff
    nop                                           ; $492d: $00
    rst RST_38                                    ; $492e: $ff
    rst RST_38                                    ; $492f: $ff
    rst RST_38                                    ; $4930: $ff
    dec de                                        ; $4931: $1b
    rst RST_38                                    ; $4932: $ff
    dec de                                        ; $4933: $1b
    rst RST_38                                    ; $4934: $ff
    dec de                                        ; $4935: $1b
    rst RST_38                                    ; $4936: $ff
    nop                                           ; $4937: $00
    rst RST_38                                    ; $4938: $ff
    nop                                           ; $4939: $00
    rst RST_38                                    ; $493a: $ff
    nop                                           ; $493b: $00
    rst RST_38                                    ; $493c: $ff
    nop                                           ; $493d: $00
    rst RST_38                                    ; $493e: $ff
    rst RST_38                                    ; $493f: $ff
    rst RST_38                                    ; $4940: $ff
    ld l, e                                       ; $4941: $6b
    rst RST_38                                    ; $4942: $ff
    dec bc                                        ; $4943: $0b
    rst RST_38                                    ; $4944: $ff
    dec bc                                        ; $4945: $0b
    rst RST_38                                    ; $4946: $ff
    nop                                           ; $4947: $00
    rst RST_38                                    ; $4948: $ff
    nop                                           ; $4949: $00
    rst RST_38                                    ; $494a: $ff
    nop                                           ; $494b: $00
    rst RST_38                                    ; $494c: $ff
    nop                                           ; $494d: $00
    rst RST_38                                    ; $494e: $ff
    rst RST_38                                    ; $494f: $ff
    rst RST_38                                    ; $4950: $ff
    nop                                           ; $4951: $00
    rst RST_38                                    ; $4952: $ff
    nop                                           ; $4953: $00
    rst RST_38                                    ; $4954: $ff
    ldh a, [rIE]                                  ; $4955: $f0 $ff
    nop                                           ; $4957: $00
    rst RST_38                                    ; $4958: $ff
    nop                                           ; $4959: $00
    rst RST_38                                    ; $495a: $ff
    nop                                           ; $495b: $00
    rst RST_38                                    ; $495c: $ff
    nop                                           ; $495d: $00
    rst RST_38                                    ; $495e: $ff
    rst RST_38                                    ; $495f: $ff
    rst RST_38                                    ; $4960: $ff
    rst RST_00                                    ; $4961: $c7
    rst RST_38                                    ; $4962: $ff
    add $ff                                       ; $4963: $c6 $ff
    add $ff                                       ; $4965: $c6 $ff
    nop                                           ; $4967: $00
    rst RST_38                                    ; $4968: $ff
    nop                                           ; $4969: $00
    rst RST_38                                    ; $496a: $ff
    nop                                           ; $496b: $00
    rst RST_38                                    ; $496c: $ff
    nop                                           ; $496d: $00
    rst RST_38                                    ; $496e: $ff
    rst RST_38                                    ; $496f: $ff
    rst RST_38                                    ; $4970: $ff
    call Call_00b_6dff                            ; $4971: $cd $ff $6d
    rst RST_38                                    ; $4974: $ff
    ld l, l                                       ; $4975: $6d
    rst RST_38                                    ; $4976: $ff
    nop                                           ; $4977: $00
    rst RST_38                                    ; $4978: $ff
    nop                                           ; $4979: $00
    rst RST_38                                    ; $497a: $ff
    nop                                           ; $497b: $00
    rst RST_38                                    ; $497c: $ff
    nop                                           ; $497d: $00
    rst RST_38                                    ; $497e: $ff
    rst RST_38                                    ; $497f: $ff
    rst RST_38                                    ; $4980: $ff
    ei                                            ; $4981: $fb
    rst RST_38                                    ; $4982: $ff
    sbc e                                         ; $4983: $9b
    rst RST_38                                    ; $4984: $ff
    sbc e                                         ; $4985: $9b
    rst RST_38                                    ; $4986: $ff
    nop                                           ; $4987: $00
    rst RST_38                                    ; $4988: $ff
    nop                                           ; $4989: $00
    rst RST_38                                    ; $498a: $ff
    nop                                           ; $498b: $00
    rst RST_38                                    ; $498c: $ff
    nop                                           ; $498d: $00
    rst RST_38                                    ; $498e: $ff
    rst RST_38                                    ; $498f: $ff
    rst RST_38                                    ; $4990: $ff
    nop                                           ; $4991: $00
    rst RST_38                                    ; $4992: $ff
    nop                                           ; $4993: $00
    rst RST_38                                    ; $4994: $ff
    ldh a, [rIE]                                  ; $4995: $f0 $ff
    nop                                           ; $4997: $00
    rst RST_38                                    ; $4998: $ff
    nop                                           ; $4999: $00
    rst RST_38                                    ; $499a: $ff
    nop                                           ; $499b: $00
    rst RST_38                                    ; $499c: $ff
    nop                                           ; $499d: $00
    rst RST_38                                    ; $499e: $ff
    rst RST_38                                    ; $499f: $ff
    rst RST_38                                    ; $49a0: $ff
    nop                                           ; $49a1: $00
    rst RST_38                                    ; $49a2: $ff
    nop                                           ; $49a3: $00
    rst RST_38                                    ; $49a4: $ff
    nop                                           ; $49a5: $00
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
    nop                                           ; $49b1: $00
    rst RST_38                                    ; $49b2: $ff
    nop                                           ; $49b3: $00
    rst RST_38                                    ; $49b4: $ff
    nop                                           ; $49b5: $00
    rst RST_38                                    ; $49b6: $ff
    nop                                           ; $49b7: $00
    rst RST_38                                    ; $49b8: $ff
    nop                                           ; $49b9: $00
    rst RST_38                                    ; $49ba: $ff
    nop                                           ; $49bb: $00
    rst RST_38                                    ; $49bc: $ff
    nop                                           ; $49bd: $00

jr_00b_49be:
    rst RST_38                                    ; $49be: $ff
    nop                                           ; $49bf: $00
    cp $00                                        ; $49c0: $fe $00

jr_00b_49c2:
    db $fd                                        ; $49c2: $fd
    nop                                           ; $49c3: $00
    ld a, [$f500]                                 ; $49c4: $fa $00 $f5
    nop                                           ; $49c7: $00
    ld [$d500], a                                 ; $49c8: $ea $00 $d5
    nop                                           ; $49cb: $00
    xor d                                         ; $49cc: $aa
    nop                                           ; $49cd: $00
    ld d, l                                       ; $49ce: $55
    nop                                           ; $49cf: $00
    ld a, a                                       ; $49d0: $7f
    nop                                           ; $49d1: $00
    ccf                                           ; $49d2: $3f
    nop                                           ; $49d3: $00
    rra                                           ; $49d4: $1f
    nop                                           ; $49d5: $00
    rrca                                          ; $49d6: $0f
    nop                                           ; $49d7: $00
    rlca                                          ; $49d8: $07
    nop                                           ; $49d9: $00
    inc bc                                        ; $49da: $03
    nop                                           ; $49db: $00
    ld bc, $0000                                  ; $49dc: $01 $00 $00
    nop                                           ; $49df: $00
    rst RST_38                                    ; $49e0: $ff
    nop                                           ; $49e1: $00
    rst RST_38                                    ; $49e2: $ff
    nop                                           ; $49e3: $00
    rst RST_38                                    ; $49e4: $ff
    nop                                           ; $49e5: $00
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
    nop                                           ; $49f0: $00
    nop                                           ; $49f1: $00
    nop                                           ; $49f2: $00
    nop                                           ; $49f3: $00
    nop                                           ; $49f4: $00
    nop                                           ; $49f5: $00
    nop                                           ; $49f6: $00
    nop                                           ; $49f7: $00
    nop                                           ; $49f8: $00
    nop                                           ; $49f9: $00
    nop                                           ; $49fa: $00
    nop                                           ; $49fb: $00
    nop                                           ; $49fc: $00
    nop                                           ; $49fd: $00
    nop                                           ; $49fe: $00
    nop                                           ; $49ff: $00
    nop                                           ; $4a00: $00
    ld d, l                                       ; $4a01: $55
    jr jr_00b_49be                                ; $4a02: $18 $ba

    jr c, jr_00b_4a83                             ; $4a04: $38 $7d

    jr jr_00b_49c2                                ; $4a06: $18 $ba

    jr jr_00b_4a67                                ; $4a08: $18 $5d

    jr @-$44                                      ; $4a0a: $18 $ba

    jr jr_00b_4a6b                                ; $4a0c: $18 $5d

    nop                                           ; $4a0e: $00
    xor d                                         ; $4a0f: $aa
    nop                                           ; $4a10: $00
    nop                                           ; $4a11: $00
    inc a                                         ; $4a12: $3c
    inc a                                         ; $4a13: $3c
    ld h, [hl]                                    ; $4a14: $66
    ld h, [hl]                                    ; $4a15: $66
    ld b, $06                                     ; $4a16: $06 $06
    inc a                                         ; $4a18: $3c
    inc a                                         ; $4a19: $3c
    ld h, b                                       ; $4a1a: $60
    ld h, b                                       ; $4a1b: $60
    ld a, [hl]                                    ; $4a1c: $7e
    ld a, [hl]                                    ; $4a1d: $7e
    nop                                           ; $4a1e: $00
    nop                                           ; $4a1f: $00
    xor d                                         ; $4a20: $aa
    nop                                           ; $4a21: $00
    ld a, l                                       ; $4a22: $7d
    inc a                                         ; $4a23: $3c
    xor $66                                       ; $4a24: $ee $66
    ld e, l                                       ; $4a26: $5d
    inc c                                         ; $4a27: $0c
    xor $66                                       ; $4a28: $ee $66
    ld [hl], a                                    ; $4a2a: $77
    ld h, [hl]                                    ; $4a2b: $66
    cp [hl]                                       ; $4a2c: $be
    inc a                                         ; $4a2d: $3c
    ld d, l                                       ; $4a2e: $55
    nop                                           ; $4a2f: $00
    rst RST_38                                    ; $4a30: $ff
    nop                                           ; $4a31: $00
    rst RST_38                                    ; $4a32: $ff
    inc c                                         ; $4a33: $0c
    rst RST_38                                    ; $4a34: $ff
    inc e                                         ; $4a35: $1c
    rst RST_38                                    ; $4a36: $ff
    inc l                                         ; $4a37: $2c
    rst RST_38                                    ; $4a38: $ff
    ld l, h                                       ; $4a39: $6c
    rst RST_38                                    ; $4a3a: $ff
    ld a, [hl]                                    ; $4a3b: $7e
    rst RST_38                                    ; $4a3c: $ff
    inc c                                         ; $4a3d: $0c
    rst RST_38                                    ; $4a3e: $ff
    nop                                           ; $4a3f: $00
    rst RST_38                                    ; $4a40: $ff
    nop                                           ; $4a41: $00
    rst RST_38                                    ; $4a42: $ff
    ld a, [hl]                                    ; $4a43: $7e
    rst RST_38                                    ; $4a44: $ff
    ld h, b                                       ; $4a45: $60
    rst RST_38                                    ; $4a46: $ff
    ld a, h                                       ; $4a47: $7c
    rst RST_38                                    ; $4a48: $ff
    ld b, $ff                                     ; $4a49: $06 $ff
    ld h, [hl]                                    ; $4a4b: $66
    rst RST_38                                    ; $4a4c: $ff
    inc a                                         ; $4a4d: $3c
    rst RST_38                                    ; $4a4e: $ff
    nop                                           ; $4a4f: $00
    nop                                           ; $4a50: $00
    rst RST_38                                    ; $4a51: $ff
    nop                                           ; $4a52: $00
    rst RST_38                                    ; $4a53: $ff
    nop                                           ; $4a54: $00
    rst RST_38                                    ; $4a55: $ff
    nop                                           ; $4a56: $00
    rst RST_38                                    ; $4a57: $ff
    nop                                           ; $4a58: $00
    rst RST_38                                    ; $4a59: $ff
    nop                                           ; $4a5a: $00
    rst RST_38                                    ; $4a5b: $ff
    nop                                           ; $4a5c: $00
    rst RST_38                                    ; $4a5d: $ff
    nop                                           ; $4a5e: $00
    rst RST_38                                    ; $4a5f: $ff
    nop                                           ; $4a60: $00
    ld d, l                                       ; $4a61: $55
    nop                                           ; $4a62: $00
    rst RST_38                                    ; $4a63: $ff
    nop                                           ; $4a64: $00
    xor d                                         ; $4a65: $aa
    nop                                           ; $4a66: $00

jr_00b_4a67:
    rst RST_38                                    ; $4a67: $ff
    nop                                           ; $4a68: $00
    ld d, l                                       ; $4a69: $55
    nop                                           ; $4a6a: $00

jr_00b_4a6b:
    rst RST_38                                    ; $4a6b: $ff
    nop                                           ; $4a6c: $00
    xor d                                         ; $4a6d: $aa
    nop                                           ; $4a6e: $00
    rst RST_38                                    ; $4a6f: $ff
    nop                                           ; $4a70: $00
    ld d, l                                       ; $4a71: $55
    nop                                           ; $4a72: $00
    xor d                                         ; $4a73: $aa
    nop                                           ; $4a74: $00
    ld d, l                                       ; $4a75: $55
    nop                                           ; $4a76: $00
    xor d                                         ; $4a77: $aa
    nop                                           ; $4a78: $00
    ld d, l                                       ; $4a79: $55
    nop                                           ; $4a7a: $00
    xor d                                         ; $4a7b: $aa
    nop                                           ; $4a7c: $00
    ld d, l                                       ; $4a7d: $55
    nop                                           ; $4a7e: $00
    xor d                                         ; $4a7f: $aa
    nop                                           ; $4a80: $00
    nop                                           ; $4a81: $00
    nop                                           ; $4a82: $00

jr_00b_4a83:
    ld d, l                                       ; $4a83: $55
    nop                                           ; $4a84: $00
    nop                                           ; $4a85: $00
    nop                                           ; $4a86: $00
    xor d                                         ; $4a87: $aa
    nop                                           ; $4a88: $00
    nop                                           ; $4a89: $00
    nop                                           ; $4a8a: $00
    ld d, l                                       ; $4a8b: $55
    nop                                           ; $4a8c: $00
    nop                                           ; $4a8d: $00
    nop                                           ; $4a8e: $00
    xor d                                         ; $4a8f: $aa
    nop                                           ; $4a90: $00
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
    xor d                                         ; $4aa0: $aa
    nop                                           ; $4aa1: $00
    nop                                           ; $4aa2: $00
    nop                                           ; $4aa3: $00
    ld d, l                                       ; $4aa4: $55
    nop                                           ; $4aa5: $00
    nop                                           ; $4aa6: $00
    nop                                           ; $4aa7: $00
    xor d                                         ; $4aa8: $aa
    nop                                           ; $4aa9: $00
    nop                                           ; $4aaa: $00
    nop                                           ; $4aab: $00
    ld d, l                                       ; $4aac: $55
    nop                                           ; $4aad: $00
    nop                                           ; $4aae: $00
    nop                                           ; $4aaf: $00
    xor d                                         ; $4ab0: $aa
    nop                                           ; $4ab1: $00
    ld d, l                                       ; $4ab2: $55
    nop                                           ; $4ab3: $00
    xor d                                         ; $4ab4: $aa
    nop                                           ; $4ab5: $00
    ld d, l                                       ; $4ab6: $55
    nop                                           ; $4ab7: $00
    xor d                                         ; $4ab8: $aa
    nop                                           ; $4ab9: $00
    ld d, l                                       ; $4aba: $55
    nop                                           ; $4abb: $00
    xor d                                         ; $4abc: $aa
    nop                                           ; $4abd: $00
    ld d, l                                       ; $4abe: $55
    nop                                           ; $4abf: $00
    rst RST_38                                    ; $4ac0: $ff
    nop                                           ; $4ac1: $00
    xor d                                         ; $4ac2: $aa
    nop                                           ; $4ac3: $00
    rst RST_38                                    ; $4ac4: $ff
    nop                                           ; $4ac5: $00
    ld d, l                                       ; $4ac6: $55
    nop                                           ; $4ac7: $00
    rst RST_38                                    ; $4ac8: $ff
    nop                                           ; $4ac9: $00
    xor d                                         ; $4aca: $aa
    nop                                           ; $4acb: $00
    rst RST_38                                    ; $4acc: $ff
    nop                                           ; $4acd: $00
    ld d, l                                       ; $4ace: $55
    nop                                           ; $4acf: $00
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
    nop                                           ; $4adb: $00
    rst RST_38                                    ; $4adc: $ff
    nop                                           ; $4add: $00
    rst RST_38                                    ; $4ade: $ff
    nop                                           ; $4adf: $00
    rst RST_38                                    ; $4ae0: $ff
    rlca                                          ; $4ae1: $07

jr_00b_4ae2:
    ld sp, hl                                     ; $4ae2: $f9
    ld [$08f8], sp                                ; $4ae3: $08 $f8 $08
    ld hl, sp+$0c                                 ; $4ae6: $f8 $0c
    db $fc                                        ; $4ae8: $fc
    ld a, a                                       ; $4ae9: $7f

jr_00b_4aea:
    cp e                                          ; $4aea: $bb
    add b                                         ; $4aeb: $80
    add b                                         ; $4aec: $80
    add b                                         ; $4aed: $80
    pop bc                                        ; $4aee: $c1
    xor h                                         ; $4aef: $ac
    ld b, c                                       ; $4af0: $41
    rst RST_38                                    ; $4af1: $ff
    and d                                         ; $4af2: $a2
    ld [$0800], sp                                ; $4af3: $08 $00 $08
    nop                                           ; $4af6: $00
    sbc d                                         ; $4af7: $9a
    sbc h                                         ; $4af8: $9c
    rst RST_38                                    ; $4af9: $ff
    db $dd                                        ; $4afa: $dd
    add b                                         ; $4afb: $80
    nop                                           ; $4afc: $00
    add b                                         ; $4afd: $80
    add b                                         ; $4afe: $80
    push hl                                       ; $4aff: $e5
    nop                                           ; $4b00: $00
    ld d, l                                       ; $4b01: $55
    nop                                           ; $4b02: $00
    xor d                                         ; $4b03: $aa
    nop                                           ; $4b04: $00
    ld d, l                                       ; $4b05: $55
    nop                                           ; $4b06: $00
    xor d                                         ; $4b07: $aa
    nop                                           ; $4b08: $00
    ld d, l                                       ; $4b09: $55
    nop                                           ; $4b0a: $00
    xor d                                         ; $4b0b: $aa
    nop                                           ; $4b0c: $00
    ld d, l                                       ; $4b0d: $55
    nop                                           ; $4b0e: $00
    xor d                                         ; $4b0f: $aa
    nop                                           ; $4b10: $00
    ld d, l                                       ; $4b11: $55
    nop                                           ; $4b12: $00
    xor d                                         ; $4b13: $aa
    nop                                           ; $4b14: $00
    ld d, l                                       ; $4b15: $55
    nop                                           ; $4b16: $00
    xor d                                         ; $4b17: $aa
    nop                                           ; $4b18: $00
    ld d, l                                       ; $4b19: $55
    nop                                           ; $4b1a: $00
    xor d                                         ; $4b1b: $aa
    nop                                           ; $4b1c: $00
    ld d, l                                       ; $4b1d: $55
    nop                                           ; $4b1e: $00
    xor d                                         ; $4b1f: $aa
    jr jr_00b_4b7f                                ; $4b20: $18 $5d

    inc a                                         ; $4b22: $3c
    and [hl]                                      ; $4b23: $a6
    inc a                                         ; $4b24: $3c
    ld h, l                                       ; $4b25: $65
    jr jr_00b_4ae2                                ; $4b26: $18 $ba

    jr jr_00b_4b87                                ; $4b28: $18 $5d

    inc a                                         ; $4b2a: $3c
    and [hl]                                      ; $4b2b: $a6
    inc a                                         ; $4b2c: $3c
    ld h, l                                       ; $4b2d: $65
    jr jr_00b_4aea                                ; $4b2e: $18 $ba

    nop                                           ; $4b30: $00
    ld d, l                                       ; $4b31: $55
    nop                                           ; $4b32: $00
    xor d                                         ; $4b33: $aa
    nop                                           ; $4b34: $00
    ld d, l                                       ; $4b35: $55
    nop                                           ; $4b36: $00
    xor d                                         ; $4b37: $aa
    nop                                           ; $4b38: $00
    ld d, l                                       ; $4b39: $55
    nop                                           ; $4b3a: $00
    xor d                                         ; $4b3b: $aa
    nop                                           ; $4b3c: $00
    ld d, l                                       ; $4b3d: $55
    nop                                           ; $4b3e: $00
    xor d                                         ; $4b3f: $aa
    nop                                           ; $4b40: $00
    ld d, l                                       ; $4b41: $55
    nop                                           ; $4b42: $00
    xor d                                         ; $4b43: $aa
    nop                                           ; $4b44: $00
    ld d, l                                       ; $4b45: $55
    nop                                           ; $4b46: $00
    xor d                                         ; $4b47: $aa
    nop                                           ; $4b48: $00
    ld d, l                                       ; $4b49: $55
    nop                                           ; $4b4a: $00
    xor d                                         ; $4b4b: $aa
    nop                                           ; $4b4c: $00
    ld d, l                                       ; $4b4d: $55
    nop                                           ; $4b4e: $00
    xor d                                         ; $4b4f: $aa
    nop                                           ; $4b50: $00
    ld d, l                                       ; $4b51: $55
    nop                                           ; $4b52: $00
    xor d                                         ; $4b53: $aa
    nop                                           ; $4b54: $00
    ld d, l                                       ; $4b55: $55
    nop                                           ; $4b56: $00
    xor d                                         ; $4b57: $aa
    nop                                           ; $4b58: $00
    ld d, l                                       ; $4b59: $55
    nop                                           ; $4b5a: $00
    xor d                                         ; $4b5b: $aa
    nop                                           ; $4b5c: $00
    ld d, l                                       ; $4b5d: $55
    nop                                           ; $4b5e: $00
    xor d                                         ; $4b5f: $aa
    nop                                           ; $4b60: $00
    ld d, l                                       ; $4b61: $55
    nop                                           ; $4b62: $00
    xor d                                         ; $4b63: $aa
    nop                                           ; $4b64: $00
    ld d, l                                       ; $4b65: $55
    nop                                           ; $4b66: $00
    xor d                                         ; $4b67: $aa
    nop                                           ; $4b68: $00
    ld d, l                                       ; $4b69: $55
    nop                                           ; $4b6a: $00
    xor d                                         ; $4b6b: $aa
    nop                                           ; $4b6c: $00
    ld d, l                                       ; $4b6d: $55
    nop                                           ; $4b6e: $00
    xor d                                         ; $4b6f: $aa
    nop                                           ; $4b70: $00
    ld d, l                                       ; $4b71: $55
    nop                                           ; $4b72: $00
    xor d                                         ; $4b73: $aa
    nop                                           ; $4b74: $00
    ld d, l                                       ; $4b75: $55
    nop                                           ; $4b76: $00
    xor d                                         ; $4b77: $aa
    nop                                           ; $4b78: $00
    ld d, l                                       ; $4b79: $55
    nop                                           ; $4b7a: $00
    xor d                                         ; $4b7b: $aa
    nop                                           ; $4b7c: $00
    ld d, l                                       ; $4b7d: $55
    nop                                           ; $4b7e: $00

jr_00b_4b7f:
    xor d                                         ; $4b7f: $aa
    rst RST_38                                    ; $4b80: $ff
    nop                                           ; $4b81: $00
    rst RST_38                                    ; $4b82: $ff
    nop                                           ; $4b83: $00
    rst RST_38                                    ; $4b84: $ff
    inc bc                                        ; $4b85: $03
    db $fc                                        ; $4b86: $fc

jr_00b_4b87:
    dec b                                         ; $4b87: $05
    ld hl, sp+$0b                                 ; $4b88: $f8 $0b
    ldh a, [rNR22]                                ; $4b8a: $f0 $17
    pop hl                                        ; $4b8c: $e1
    cpl                                           ; $4b8d: $2f
    ldh [c], a                                    ; $4b8e: $e2
    ld l, $ff                                     ; $4b8f: $2e $ff
    nop                                           ; $4b91: $00
    rst RST_38                                    ; $4b92: $ff
    nop                                           ; $4b93: $00
    rst RST_38                                    ; $4b94: $ff
    ld b, $f9                                     ; $4b95: $06 $f9
    adc l                                         ; $4b97: $8d
    ld [hl], b                                    ; $4b98: $70
    sbc $a8                                       ; $4b99: $de $a8
    xor a                                         ; $4b9b: $af
    inc h                                         ; $4b9c: $24
    ld [hl], a                                    ; $4b9d: $77
    ld d, d                                       ; $4b9e: $52
    ei                                            ; $4b9f: $fb
    rst RST_38                                    ; $4ba0: $ff
    nop                                           ; $4ba1: $00
    rst RST_38                                    ; $4ba2: $ff
    nop                                           ; $4ba3: $00
    rst RST_38                                    ; $4ba4: $ff
    nop                                           ; $4ba5: $00
    rst RST_38                                    ; $4ba6: $ff
    nop                                           ; $4ba7: $00
    rst RST_38                                    ; $4ba8: $ff
    add b                                         ; $4ba9: $80
    ld a, a                                       ; $4baa: $7f
    ld b, b                                       ; $4bab: $40
    ccf                                           ; $4bac: $3f
    and b                                         ; $4bad: $a0
    ccf                                           ; $4bae: $3f
    and b                                         ; $4baf: $a0
    rst RST_38                                    ; $4bb0: $ff
    rst RST_38                                    ; $4bb1: $ff
    nop                                           ; $4bb2: $00
    rst RST_38                                    ; $4bb3: $ff
    rst RST_38                                    ; $4bb4: $ff
    rst RST_38                                    ; $4bb5: $ff
    jr nz, @+$01                                  ; $4bb6: $20 $ff

    jr nz, @+$01                                  ; $4bb8: $20 $ff

    jr nz, @+$01                                  ; $4bba: $20 $ff

    jr nz, @+$01                                  ; $4bbc: $20 $ff

    jr nz, @+$01                                  ; $4bbe: $20 $ff

    rst RST_38                                    ; $4bc0: $ff
    rst RST_38                                    ; $4bc1: $ff
    ld bc, rIE                                    ; $4bc2: $01 $ff $ff
    rst RST_38                                    ; $4bc5: $ff
    ld bc, $01f7                                  ; $4bc6: $01 $f7 $01
    rst RST_30                                    ; $4bc9: $f7
    ld bc, $01f7                                  ; $4bca: $01 $f7 $01
    rst RST_30                                    ; $4bcd: $f7
    ld bc, $fff7                                  ; $4bce: $01 $f7 $ff
    nop                                           ; $4bd1: $00
    rst RST_38                                    ; $4bd2: $ff
    nop                                           ; $4bd3: $00
    rst RST_38                                    ; $4bd4: $ff
    nop                                           ; $4bd5: $00
    rst RST_38                                    ; $4bd6: $ff
    nop                                           ; $4bd7: $00
    rst RST_38                                    ; $4bd8: $ff
    ld b, $f9                                     ; $4bd9: $06 $f9
    rrca                                          ; $4bdb: $0f
    di                                            ; $4bdc: $f3
    dec de                                        ; $4bdd: $1b
    db $e4                                        ; $4bde: $e4
    scf                                           ; $4bdf: $37
    rst RST_38                                    ; $4be0: $ff
    nop                                           ; $4be1: $00
    rst RST_38                                    ; $4be2: $ff
    nop                                           ; $4be3: $00
    rst RST_38                                    ; $4be4: $ff
    nop                                           ; $4be5: $00
    rst RST_38                                    ; $4be6: $ff
    nop                                           ; $4be7: $00
    rst RST_38                                    ; $4be8: $ff
    ld [hl], b                                    ; $4be9: $70
    adc a                                         ; $4bea: $8f
    ld hl, sp-$79                                 ; $4beb: $f8 $87
    db $ec                                        ; $4bed: $ec
    db $e3                                        ; $4bee: $e3
    or $7f                                        ; $4bef: $f6 $7f
    nop                                           ; $4bf1: $00
    ccf                                           ; $4bf2: $3f
    nop                                           ; $4bf3: $00
    rra                                           ; $4bf4: $1f
    nop                                           ; $4bf5: $00
    rrca                                          ; $4bf6: $0f
    nop                                           ; $4bf7: $00
    rlca                                          ; $4bf8: $07
    nop                                           ; $4bf9: $00
    inc bc                                        ; $4bfa: $03
    nop                                           ; $4bfb: $00
    ld bc, $0000                                  ; $4bfc: $01 $00 $00
    nop                                           ; $4bff: $00
    nop                                           ; $4c00: $00
    nop                                           ; $4c01: $00
    nop                                           ; $4c02: $00
    nop                                           ; $4c03: $00
    nop                                           ; $4c04: $00
    nop                                           ; $4c05: $00
    nop                                           ; $4c06: $00
    nop                                           ; $4c07: $00
    nop                                           ; $4c08: $00
    nop                                           ; $4c09: $00
    nop                                           ; $4c0a: $00
    nop                                           ; $4c0b: $00
    nop                                           ; $4c0c: $00
    nop                                           ; $4c0d: $00
    nop                                           ; $4c0e: $00
    nop                                           ; $4c0f: $00
    nop                                           ; $4c10: $00
    nop                                           ; $4c11: $00
    nop                                           ; $4c12: $00
    nop                                           ; $4c13: $00
    nop                                           ; $4c14: $00
    nop                                           ; $4c15: $00
    nop                                           ; $4c16: $00
    nop                                           ; $4c17: $00
    nop                                           ; $4c18: $00
    nop                                           ; $4c19: $00
    nop                                           ; $4c1a: $00
    nop                                           ; $4c1b: $00
    nop                                           ; $4c1c: $00
    nop                                           ; $4c1d: $00
    nop                                           ; $4c1e: $00
    nop                                           ; $4c1f: $00
    jr jr_00b_4c3a                                ; $4c20: $18 $18

    inc a                                         ; $4c22: $3c
    inc h                                         ; $4c23: $24
    inc a                                         ; $4c24: $3c
    inc h                                         ; $4c25: $24
    jr jr_00b_4c40                                ; $4c26: $18 $18

    jr jr_00b_4c42                                ; $4c28: $18 $18

    inc a                                         ; $4c2a: $3c
    inc h                                         ; $4c2b: $24
    inc a                                         ; $4c2c: $3c
    inc h                                         ; $4c2d: $24
    jr jr_00b_4c48                                ; $4c2e: $18 $18

    nop                                           ; $4c30: $00
    nop                                           ; $4c31: $00
    nop                                           ; $4c32: $00
    nop                                           ; $4c33: $00
    nop                                           ; $4c34: $00
    nop                                           ; $4c35: $00
    nop                                           ; $4c36: $00
    nop                                           ; $4c37: $00
    nop                                           ; $4c38: $00
    nop                                           ; $4c39: $00

jr_00b_4c3a:
    nop                                           ; $4c3a: $00
    nop                                           ; $4c3b: $00
    nop                                           ; $4c3c: $00
    nop                                           ; $4c3d: $00
    nop                                           ; $4c3e: $00
    nop                                           ; $4c3f: $00

jr_00b_4c40:
    nop                                           ; $4c40: $00
    nop                                           ; $4c41: $00

jr_00b_4c42:
    nop                                           ; $4c42: $00
    nop                                           ; $4c43: $00
    nop                                           ; $4c44: $00
    nop                                           ; $4c45: $00
    nop                                           ; $4c46: $00
    nop                                           ; $4c47: $00

jr_00b_4c48:
    nop                                           ; $4c48: $00
    nop                                           ; $4c49: $00
    nop                                           ; $4c4a: $00
    nop                                           ; $4c4b: $00
    nop                                           ; $4c4c: $00
    nop                                           ; $4c4d: $00
    nop                                           ; $4c4e: $00
    nop                                           ; $4c4f: $00
    nop                                           ; $4c50: $00
    nop                                           ; $4c51: $00
    nop                                           ; $4c52: $00
    nop                                           ; $4c53: $00
    nop                                           ; $4c54: $00
    nop                                           ; $4c55: $00
    nop                                           ; $4c56: $00
    nop                                           ; $4c57: $00
    nop                                           ; $4c58: $00
    nop                                           ; $4c59: $00
    nop                                           ; $4c5a: $00
    nop                                           ; $4c5b: $00
    nop                                           ; $4c5c: $00
    nop                                           ; $4c5d: $00
    nop                                           ; $4c5e: $00
    nop                                           ; $4c5f: $00
    nop                                           ; $4c60: $00
    nop                                           ; $4c61: $00
    nop                                           ; $4c62: $00
    nop                                           ; $4c63: $00
    nop                                           ; $4c64: $00
    nop                                           ; $4c65: $00
    nop                                           ; $4c66: $00
    nop                                           ; $4c67: $00
    nop                                           ; $4c68: $00
    nop                                           ; $4c69: $00
    nop                                           ; $4c6a: $00
    nop                                           ; $4c6b: $00
    nop                                           ; $4c6c: $00
    nop                                           ; $4c6d: $00
    nop                                           ; $4c6e: $00
    nop                                           ; $4c6f: $00
    nop                                           ; $4c70: $00
    nop                                           ; $4c71: $00
    nop                                           ; $4c72: $00
    nop                                           ; $4c73: $00
    nop                                           ; $4c74: $00
    nop                                           ; $4c75: $00
    nop                                           ; $4c76: $00
    nop                                           ; $4c77: $00
    nop                                           ; $4c78: $00
    nop                                           ; $4c79: $00
    nop                                           ; $4c7a: $00
    nop                                           ; $4c7b: $00
    nop                                           ; $4c7c: $00
    nop                                           ; $4c7d: $00
    nop                                           ; $4c7e: $00
    nop                                           ; $4c7f: $00
    call nz, $c45d                                ; $4c80: $c4 $5d $c4
    ld e, l                                       ; $4c83: $5d
    adc b                                         ; $4c84: $88
    cp e                                          ; $4c85: $bb
    adc b                                         ; $4c86: $88
    cp e                                          ; $4c87: $bb
    sbc c                                         ; $4c88: $99
    cp e                                          ; $4c89: $bb
    sbc c                                         ; $4c8a: $99
    cp e                                          ; $4c8b: $bb
    cp e                                          ; $4c8c: $bb
    xor d                                         ; $4c8d: $aa
    ei                                            ; $4c8e: $fb
    ld l, d                                       ; $4c8f: $6a
    ld d, c                                       ; $4c90: $51
    db $fd                                        ; $4c91: $fd
    sub c                                         ; $4c92: $91
    cp l                                          ; $4c93: $bd
    sbc c                                         ; $4c94: $99
    cp l                                          ; $4c95: $bd
    sbc c                                         ; $4c96: $99
    cp l                                          ; $4c97: $bd
    sbc c                                         ; $4c98: $99
    cp l                                          ; $4c99: $bd
    sbc c                                         ; $4c9a: $99
    cp l                                          ; $4c9b: $bd
    reti                                          ; $4c9c: $d9


    db $fd                                        ; $4c9d: $fd
    db $dd                                        ; $4c9e: $dd
    push af                                       ; $4c9f: $f5
    rra                                           ; $4ca0: $1f
    ret nc                                        ; $4ca1: $d0

    rra                                           ; $4ca2: $1f
    ret nc                                        ; $4ca3: $d0

    rrca                                          ; $4ca4: $0f
    add sp, $0f                                   ; $4ca5: $e8 $0f
    add sp, -$71                                  ; $4ca7: $e8 $8f
    add sp, -$31                                  ; $4ca9: $e8 $cf
    ld l, b                                       ; $4cab: $68
    rst RST_28                                    ; $4cac: $ef
    jr z, @+$01                                   ; $4cad: $28 $ff

    jr jr_00b_4cd1                                ; $4caf: $18 $20

    rst RST_38                                    ; $4cb1: $ff
    jr nz, @+$01                                  ; $4cb2: $20 $ff

    inc hl                                        ; $4cb4: $23
    rst RST_38                                    ; $4cb5: $ff
    daa                                           ; $4cb6: $27
    rst RST_38                                    ; $4cb7: $ff
    daa                                           ; $4cb8: $27
    rst RST_38                                    ; $4cb9: $ff
    daa                                           ; $4cba: $27
    rst RST_38                                    ; $4cbb: $ff
    daa                                           ; $4cbc: $27
    rst RST_38                                    ; $4cbd: $ff
    daa                                           ; $4cbe: $27
    rst RST_38                                    ; $4cbf: $ff
    ld bc, $01f7                                  ; $4cc0: $01 $f7 $01
    rst RST_30                                    ; $4cc3: $f7
    ld bc, $8177                                  ; $4cc4: $01 $77 $81
    or a                                          ; $4cc7: $b7
    add c                                         ; $4cc8: $81
    or a                                          ; $4cc9: $b7
    add c                                         ; $4cca: $81
    or a                                          ; $4ccb: $b7
    add c                                         ; $4ccc: $81
    or a                                          ; $4ccd: $b7
    add c                                         ; $4cce: $81
    or a                                          ; $4ccf: $b7
    ret                                           ; $4cd0: $c9


jr_00b_4cd1:
    ld l, l                                       ; $4cd1: $6d
    ret                                           ; $4cd2: $c9


    ld e, e                                       ; $4cd3: $5b
    jp nc, $f273                                  ; $4cd4: $d2 $73 $f2

    halt                                          ; $4cd7: $76
    or $5e                                        ; $4cd8: $f6 $5e
    cp $1b                                        ; $4cda: $fe $1b
    rst RST_38                                    ; $4cdc: $ff
    inc de                                        ; $4cdd: $13
    db $fd                                        ; $4cde: $fd
    inc bc                                        ; $4cdf: $03
    ld d, c                                       ; $4ce0: $51
    ei                                            ; $4ce1: $fb
    ld c, c                                       ; $4ce2: $49

jr_00b_4ce3:
    db $dd                                        ; $4ce3: $dd
    ld c, c                                       ; $4ce4: $49
    ld c, a                                       ; $4ce5: $4f
    ld l, l                                       ; $4ce6: $6d
    ld l, a                                       ; $4ce7: $6f
    ld l, a                                       ; $4ce8: $6f
    ld a, e                                       ; $4ce9: $7b
    ld a, a                                       ; $4cea: $7f
    ld e, c                                       ; $4ceb: $59
    ld a, a                                       ; $4cec: $7f
    ret z                                         ; $4ced: $c8

    ld a, a                                       ; $4cee: $7f
    ret nz                                        ; $4cef: $c0

    cp $00                                        ; $4cf0: $fe $00
    db $fd                                        ; $4cf2: $fd
    nop                                           ; $4cf3: $00
    ld a, [$f500]                                 ; $4cf4: $fa $00 $f5
    nop                                           ; $4cf7: $00
    ld [$d500], a                                 ; $4cf8: $ea $00 $d5
    nop                                           ; $4cfb: $00
    xor d                                         ; $4cfc: $aa
    nop                                           ; $4cfd: $00
    ld d, l                                       ; $4cfe: $55
    nop                                           ; $4cff: $00
    xor d                                         ; $4d00: $aa
    nop                                           ; $4d01: $00
    ld d, l                                       ; $4d02: $55
    nop                                           ; $4d03: $00
    xor d                                         ; $4d04: $aa
    nop                                           ; $4d05: $00
    ld d, l                                       ; $4d06: $55
    nop                                           ; $4d07: $00
    xor d                                         ; $4d08: $aa
    nop                                           ; $4d09: $00
    ld d, l                                       ; $4d0a: $55
    nop                                           ; $4d0b: $00
    xor d                                         ; $4d0c: $aa
    nop                                           ; $4d0d: $00
    ld d, l                                       ; $4d0e: $55
    nop                                           ; $4d0f: $00
    xor d                                         ; $4d10: $aa
    nop                                           ; $4d11: $00
    ld d, l                                       ; $4d12: $55
    nop                                           ; $4d13: $00
    xor d                                         ; $4d14: $aa
    nop                                           ; $4d15: $00
    ld d, l                                       ; $4d16: $55
    nop                                           ; $4d17: $00
    xor d                                         ; $4d18: $aa
    nop                                           ; $4d19: $00
    ld d, l                                       ; $4d1a: $55
    nop                                           ; $4d1b: $00
    xor d                                         ; $4d1c: $aa
    nop                                           ; $4d1d: $00
    ld d, l                                       ; $4d1e: $55
    nop                                           ; $4d1f: $00
    cp d                                          ; $4d20: $ba
    jr jr_00b_4da0                                ; $4d21: $18 $7d

    inc h                                         ; $4d23: $24
    cp [hl]                                       ; $4d24: $be
    inc h                                         ; $4d25: $24
    ld e, l                                       ; $4d26: $5d
    jr jr_00b_4ce3                                ; $4d27: $18 $ba

    jr jr_00b_4da8                                ; $4d29: $18 $7d

    inc h                                         ; $4d2b: $24
    cp [hl]                                       ; $4d2c: $be
    inc h                                         ; $4d2d: $24
    ld e, l                                       ; $4d2e: $5d
    jr @-$54                                      ; $4d2f: $18 $aa

    nop                                           ; $4d31: $00
    ld d, l                                       ; $4d32: $55
    nop                                           ; $4d33: $00
    xor d                                         ; $4d34: $aa
    nop                                           ; $4d35: $00
    ld d, l                                       ; $4d36: $55
    nop                                           ; $4d37: $00

jr_00b_4d38:
    xor d                                         ; $4d38: $aa
    nop                                           ; $4d39: $00
    ld d, l                                       ; $4d3a: $55
    nop                                           ; $4d3b: $00
    xor d                                         ; $4d3c: $aa
    nop                                           ; $4d3d: $00
    ld d, l                                       ; $4d3e: $55
    nop                                           ; $4d3f: $00
    xor d                                         ; $4d40: $aa
    nop                                           ; $4d41: $00
    ld d, l                                       ; $4d42: $55
    nop                                           ; $4d43: $00
    xor d                                         ; $4d44: $aa
    nop                                           ; $4d45: $00
    ld d, l                                       ; $4d46: $55
    nop                                           ; $4d47: $00
    xor d                                         ; $4d48: $aa
    nop                                           ; $4d49: $00
    ld d, l                                       ; $4d4a: $55
    nop                                           ; $4d4b: $00
    xor d                                         ; $4d4c: $aa
    nop                                           ; $4d4d: $00
    ld d, l                                       ; $4d4e: $55
    nop                                           ; $4d4f: $00
    xor d                                         ; $4d50: $aa
    nop                                           ; $4d51: $00
    ld d, l                                       ; $4d52: $55
    nop                                           ; $4d53: $00
    xor d                                         ; $4d54: $aa
    nop                                           ; $4d55: $00
    ld d, l                                       ; $4d56: $55
    nop                                           ; $4d57: $00
    xor d                                         ; $4d58: $aa
    nop                                           ; $4d59: $00
    ld d, l                                       ; $4d5a: $55
    nop                                           ; $4d5b: $00
    xor d                                         ; $4d5c: $aa
    nop                                           ; $4d5d: $00
    ld d, l                                       ; $4d5e: $55
    nop                                           ; $4d5f: $00
    xor d                                         ; $4d60: $aa
    nop                                           ; $4d61: $00
    ld d, l                                       ; $4d62: $55
    nop                                           ; $4d63: $00
    xor d                                         ; $4d64: $aa
    nop                                           ; $4d65: $00
    ld d, l                                       ; $4d66: $55
    nop                                           ; $4d67: $00
    xor d                                         ; $4d68: $aa
    nop                                           ; $4d69: $00
    ld d, l                                       ; $4d6a: $55
    nop                                           ; $4d6b: $00
    xor d                                         ; $4d6c: $aa
    nop                                           ; $4d6d: $00
    ld d, l                                       ; $4d6e: $55
    nop                                           ; $4d6f: $00
    xor d                                         ; $4d70: $aa
    nop                                           ; $4d71: $00
    ld d, l                                       ; $4d72: $55
    nop                                           ; $4d73: $00
    xor d                                         ; $4d74: $aa
    nop                                           ; $4d75: $00
    ld d, l                                       ; $4d76: $55
    nop                                           ; $4d77: $00
    xor d                                         ; $4d78: $aa
    nop                                           ; $4d79: $00
    ld d, l                                       ; $4d7a: $55
    nop                                           ; $4d7b: $00
    xor d                                         ; $4d7c: $aa
    nop                                           ; $4d7d: $00
    ld d, l                                       ; $4d7e: $55
    nop                                           ; $4d7f: $00
    ei                                            ; $4d80: $fb
    ei                                            ; $4d81: $fb
    ld b, h                                       ; $4d82: $44
    ld b, h                                       ; $4d83: $44
    inc b                                         ; $4d84: $04
    rst RST_38                                    ; $4d85: $ff
    inc b                                         ; $4d86: $04
    inc b                                         ; $4d87: $04
    nop                                           ; $4d88: $00
    nop                                           ; $4d89: $00
    nop                                           ; $4d8a: $00
    nop                                           ; $4d8b: $00
    nop                                           ; $4d8c: $00
    nop                                           ; $4d8d: $00
    nop                                           ; $4d8e: $00
    nop                                           ; $4d8f: $00
    ld a, a                                       ; $4d90: $7f
    rst RST_38                                    ; $4d91: $ff
    ld a, [hl+]                                   ; $4d92: $2a
    cp d                                          ; $4d93: $ba
    ld a, [hl+]                                   ; $4d94: $2a
    sbc a                                         ; $4d95: $9f
    ld a, [hl+]                                   ; $4d96: $2a
    sbc d                                         ; $4d97: $9a
    ld [$0898], sp                                ; $4d98: $08 $98 $08
    ld hl, sp+$08                                 ; $4d9b: $f8 $08
    sbc b                                         ; $4d9d: $98
    jr z, jr_00b_4d38                             ; $4d9e: $28 $98

jr_00b_4da0:
    rst RST_38                                    ; $4da0: $ff
    rst RST_38                                    ; $4da1: $ff
    ld [$000c], sp                                ; $4da2: $08 $0c $00
    db $fc                                        ; $4da5: $fc
    nop                                           ; $4da6: $00
    inc b                                         ; $4da7: $04

jr_00b_4da8:
    nop                                           ; $4da8: $00
    inc b                                         ; $4da9: $04
    nop                                           ; $4daa: $00
    inc b                                         ; $4dab: $04
    nop                                           ; $4dac: $00
    inc b                                         ; $4dad: $04
    nop                                           ; $4dae: $00
    inc b                                         ; $4daf: $04
    daa                                           ; $4db0: $27
    rst RST_38                                    ; $4db1: $ff
    daa                                           ; $4db2: $27
    rst RST_38                                    ; $4db3: $ff
    daa                                           ; $4db4: $27
    rst RST_38                                    ; $4db5: $ff
    daa                                           ; $4db6: $27
    rst RST_38                                    ; $4db7: $ff
    daa                                           ; $4db8: $27
    rst RST_38                                    ; $4db9: $ff
    daa                                           ; $4dba: $27
    rst RST_38                                    ; $4dbb: $ff
    daa                                           ; $4dbc: $27
    rst RST_38                                    ; $4dbd: $ff
    daa                                           ; $4dbe: $27
    rst RST_38                                    ; $4dbf: $ff
    add c                                         ; $4dc0: $81
    or a                                          ; $4dc1: $b7
    add c                                         ; $4dc2: $81
    or a                                          ; $4dc3: $b7
    add c                                         ; $4dc4: $81
    or a                                          ; $4dc5: $b7
    add c                                         ; $4dc6: $81
    or a                                          ; $4dc7: $b7
    add c                                         ; $4dc8: $81
    or a                                          ; $4dc9: $b7
    add c                                         ; $4dca: $81
    or a                                          ; $4dcb: $b7
    add c                                         ; $4dcc: $81
    or a                                          ; $4dcd: $b7
    add c                                         ; $4dce: $81
    or a                                          ; $4dcf: $b7
    db $fc                                        ; $4dd0: $fc
    ld [bc], a                                    ; $4dd1: $02
    db $fd                                        ; $4dd2: $fd
    ld [bc], a                                    ; $4dd3: $02
    db $fc                                        ; $4dd4: $fc
    ld [bc], a                                    ; $4dd5: $02

Jump_00b_4dd6:
    db $fc                                        ; $4dd6: $fc
    inc bc                                        ; $4dd7: $03
    db $fc                                        ; $4dd8: $fc
    ld [bc], a                                    ; $4dd9: $02
    db $fd                                        ; $4dda: $fd
    ld [bc], a                                    ; $4ddb: $02
    db $fc                                        ; $4ddc: $fc
    ld [bc], a                                    ; $4ddd: $02
    db $fc                                        ; $4dde: $fc
    inc bc                                        ; $4ddf: $03
    cp $c0                                        ; $4de0: $fe $c0
    ld a, l                                       ; $4de2: $7d
    ld b, b                                       ; $4de3: $40
    ld a, d                                       ; $4de4: $7a
    ld b, b                                       ; $4de5: $40
    push af                                       ; $4de6: $f5
    ret nz                                        ; $4de7: $c0

    ld l, d                                       ; $4de8: $6a
    ld b, b                                       ; $4de9: $40
    ld d, l                                       ; $4dea: $55
    ld b, b                                       ; $4deb: $40
    ld l, d                                       ; $4dec: $6a
    ld b, b                                       ; $4ded: $40
    push de                                       ; $4dee: $d5
    ret nz                                        ; $4def: $c0

    xor d                                         ; $4df0: $aa
    nop                                           ; $4df1: $00
    ld d, l                                       ; $4df2: $55
    nop                                           ; $4df3: $00
    xor d                                         ; $4df4: $aa
    nop                                           ; $4df5: $00
    ld d, l                                       ; $4df6: $55
    nop                                           ; $4df7: $00
    xor d                                         ; $4df8: $aa
    nop                                           ; $4df9: $00
    ld d, l                                       ; $4dfa: $55
    nop                                           ; $4dfb: $00
    xor d                                         ; $4dfc: $aa
    nop                                           ; $4dfd: $00
    ld d, l                                       ; $4dfe: $55
    nop                                           ; $4dff: $00
    rst RST_38                                    ; $4e00: $ff
    nop                                           ; $4e01: $00
    rst RST_38                                    ; $4e02: $ff
    nop                                           ; $4e03: $00
    rst RST_38                                    ; $4e04: $ff
    nop                                           ; $4e05: $00
    rst RST_38                                    ; $4e06: $ff
    nop                                           ; $4e07: $00
    rst RST_38                                    ; $4e08: $ff
    nop                                           ; $4e09: $00
    rst RST_38                                    ; $4e0a: $ff
    nop                                           ; $4e0b: $00
    rst RST_38                                    ; $4e0c: $ff
    nop                                           ; $4e0d: $00
    rst RST_38                                    ; $4e0e: $ff
    nop                                           ; $4e0f: $00
    rst RST_38                                    ; $4e10: $ff
    nop                                           ; $4e11: $00
    rst RST_38                                    ; $4e12: $ff
    nop                                           ; $4e13: $00
    rst RST_38                                    ; $4e14: $ff
    nop                                           ; $4e15: $00
    rst RST_38                                    ; $4e16: $ff
    nop                                           ; $4e17: $00
    rst RST_38                                    ; $4e18: $ff
    nop                                           ; $4e19: $00

jr_00b_4e1a:
    rst RST_38                                    ; $4e1a: $ff
    nop                                           ; $4e1b: $00
    rst RST_38                                    ; $4e1c: $ff
    nop                                           ; $4e1d: $00
    rst RST_38                                    ; $4e1e: $ff
    nop                                           ; $4e1f: $00
    rst RST_38                                    ; $4e20: $ff
    jr @+$01                                      ; $4e21: $18 $ff

    inc h                                         ; $4e23: $24

jr_00b_4e24:
    rst RST_38                                    ; $4e24: $ff
    inc h                                         ; $4e25: $24
    rst RST_38                                    ; $4e26: $ff
    jr @+$01                                      ; $4e27: $18 $ff

    jr @+$01                                      ; $4e29: $18 $ff

    inc h                                         ; $4e2b: $24
    rst RST_38                                    ; $4e2c: $ff
    inc h                                         ; $4e2d: $24
    rst RST_38                                    ; $4e2e: $ff
    jr @+$01                                      ; $4e2f: $18 $ff

    nop                                           ; $4e31: $00
    rst RST_38                                    ; $4e32: $ff
    nop                                           ; $4e33: $00
    rst RST_38                                    ; $4e34: $ff
    nop                                           ; $4e35: $00
    rst RST_38                                    ; $4e36: $ff
    nop                                           ; $4e37: $00
    rst RST_38                                    ; $4e38: $ff
    nop                                           ; $4e39: $00
    rst RST_38                                    ; $4e3a: $ff
    nop                                           ; $4e3b: $00
    rst RST_38                                    ; $4e3c: $ff
    nop                                           ; $4e3d: $00
    rst RST_38                                    ; $4e3e: $ff
    nop                                           ; $4e3f: $00
    rst RST_38                                    ; $4e40: $ff
    nop                                           ; $4e41: $00
    rst RST_38                                    ; $4e42: $ff
    nop                                           ; $4e43: $00
    rst RST_38                                    ; $4e44: $ff
    nop                                           ; $4e45: $00
    rst RST_38                                    ; $4e46: $ff
    nop                                           ; $4e47: $00
    rst RST_38                                    ; $4e48: $ff
    nop                                           ; $4e49: $00
    rst RST_38                                    ; $4e4a: $ff
    nop                                           ; $4e4b: $00
    rst RST_38                                    ; $4e4c: $ff

Jump_00b_4e4d:
    nop                                           ; $4e4d: $00
    rst RST_38                                    ; $4e4e: $ff
    nop                                           ; $4e4f: $00
    rst RST_38                                    ; $4e50: $ff
    nop                                           ; $4e51: $00
    rst RST_38                                    ; $4e52: $ff
    nop                                           ; $4e53: $00
    rst RST_38                                    ; $4e54: $ff
    nop                                           ; $4e55: $00
    rst RST_38                                    ; $4e56: $ff
    nop                                           ; $4e57: $00
    rst RST_38                                    ; $4e58: $ff
    nop                                           ; $4e59: $00
    rst RST_38                                    ; $4e5a: $ff
    nop                                           ; $4e5b: $00
    rst RST_38                                    ; $4e5c: $ff
    nop                                           ; $4e5d: $00
    rst RST_38                                    ; $4e5e: $ff
    nop                                           ; $4e5f: $00
    rst RST_38                                    ; $4e60: $ff
    nop                                           ; $4e61: $00
    rst RST_38                                    ; $4e62: $ff
    nop                                           ; $4e63: $00
    rst RST_38                                    ; $4e64: $ff
    nop                                           ; $4e65: $00
    rst RST_38                                    ; $4e66: $ff
    nop                                           ; $4e67: $00
    rst RST_38                                    ; $4e68: $ff
    nop                                           ; $4e69: $00
    rst RST_38                                    ; $4e6a: $ff
    nop                                           ; $4e6b: $00
    rst RST_38                                    ; $4e6c: $ff
    nop                                           ; $4e6d: $00
    rst RST_38                                    ; $4e6e: $ff
    nop                                           ; $4e6f: $00
    rst RST_38                                    ; $4e70: $ff
    nop                                           ; $4e71: $00
    rst RST_38                                    ; $4e72: $ff
    nop                                           ; $4e73: $00
    rst RST_38                                    ; $4e74: $ff
    nop                                           ; $4e75: $00
    rst RST_38                                    ; $4e76: $ff
    nop                                           ; $4e77: $00
    rst RST_38                                    ; $4e78: $ff
    nop                                           ; $4e79: $00
    rst RST_38                                    ; $4e7a: $ff
    nop                                           ; $4e7b: $00
    rst RST_38                                    ; $4e7c: $ff
    nop                                           ; $4e7d: $00
    rst RST_38                                    ; $4e7e: $ff
    nop                                           ; $4e7f: $00
    jr z, jr_00b_4e1a                             ; $4e80: $28 $98

    ld [$0898], sp                                ; $4e82: $08 $98 $08
    ld hl, sp+$08                                 ; $4e85: $f8 $08
    sbc b                                         ; $4e87: $98
    jr z, @-$66                                   ; $4e88: $28 $98

    jr z, jr_00b_4e24                             ; $4e8a: $28 $98

    ld [$0898], sp                                ; $4e8c: $08 $98 $08
    ld hl, sp+$00                                 ; $4e8f: $f8 $00
    inc b                                         ; $4e91: $04
    nop                                           ; $4e92: $00
    inc b                                         ; $4e93: $04
    nop                                           ; $4e94: $00
    inc b                                         ; $4e95: $04
    nop                                           ; $4e96: $00
    inc b                                         ; $4e97: $04
    nop                                           ; $4e98: $00
    inc b                                         ; $4e99: $04
    nop                                           ; $4e9a: $00
    inc b                                         ; $4e9b: $04
    nop                                           ; $4e9c: $00
    inc b                                         ; $4e9d: $04
    nop                                           ; $4e9e: $00
    inc b                                         ; $4e9f: $04
    xor d                                         ; $4ea0: $aa
    nop                                           ; $4ea1: $00
    ld d, l                                       ; $4ea2: $55
    nop                                           ; $4ea3: $00
    xor d                                         ; $4ea4: $aa
    nop                                           ; $4ea5: $00
    ld d, l                                       ; $4ea6: $55
    nop                                           ; $4ea7: $00
    xor b                                         ; $4ea8: $a8
    inc d                                         ; $4ea9: $14
    ld bc, $006a                                  ; $4eaa: $01 $6a $00
    rst RST_10                                    ; $4ead: $d7
    ld bc, $00be                                  ; $4eae: $01 $be $00
    nop                                           ; $4eb1: $00
    nop                                           ; $4eb2: $00
    nop                                           ; $4eb3: $00
    nop                                           ; $4eb4: $00
    nop                                           ; $4eb5: $00
    nop                                           ; $4eb6: $00
    nop                                           ; $4eb7: $00
    nop                                           ; $4eb8: $00
    inc d                                         ; $4eb9: $14
    nop                                           ; $4eba: $00
    ld l, d                                       ; $4ebb: $6a
    nop                                           ; $4ebc: $00
    rst RST_10                                    ; $4ebd: $d7
    nop                                           ; $4ebe: $00
    cp [hl]                                       ; $4ebf: $be
    nop                                           ; $4ec0: $00
    nop                                           ; $4ec1: $00
    ld bc, $0000                                  ; $4ec2: $01 $00 $00
    nop                                           ; $4ec5: $00
    rlca                                          ; $4ec6: $07
    nop                                           ; $4ec7: $00
    nop                                           ; $4ec8: $00
    nop                                           ; $4ec9: $00
    dec e                                         ; $4eca: $1d
    nop                                           ; $4ecb: $00
    nop                                           ; $4ecc: $00
    nop                                           ; $4ecd: $00
    ld [hl], a                                    ; $4ece: $77
    nop                                           ; $4ecf: $00
    nop                                           ; $4ed0: $00
    nop                                           ; $4ed1: $00
    db $dd                                        ; $4ed2: $dd
    nop                                           ; $4ed3: $00
    nop                                           ; $4ed4: $00
    nop                                           ; $4ed5: $00
    ld [hl], a                                    ; $4ed6: $77
    nop                                           ; $4ed7: $00
    nop                                           ; $4ed8: $00
    nop                                           ; $4ed9: $00
    db $dd                                        ; $4eda: $dd
    nop                                           ; $4edb: $00
    nop                                           ; $4edc: $00
    nop                                           ; $4edd: $00
    ld [hl], a                                    ; $4ede: $77
    nop                                           ; $4edf: $00
    ld a, a                                       ; $4ee0: $7f
    add b                                         ; $4ee1: $80
    ccf                                           ; $4ee2: $3f
    ld b, b                                       ; $4ee3: $40
    rra                                           ; $4ee4: $1f
    ldh [rIF], a                                  ; $4ee5: $e0 $0f
    db $10                                        ; $4ee7: $10
    rlca                                          ; $4ee8: $07
    ld hl, sp+$03                                 ; $4ee9: $f8 $03
    ld b, h                                       ; $4eeb: $44
    ld bc, $00fe                                  ; $4eec: $01 $fe $00
    ld de, rP1                                    ; $4eef: $11 $00 $ff
    nop                                           ; $4ef2: $00
    ld b, h                                       ; $4ef3: $44
    nop                                           ; $4ef4: $00
    rst RST_38                                    ; $4ef5: $ff
    nop                                           ; $4ef6: $00
    ld de, rP1                                    ; $4ef7: $11 $00 $ff
    nop                                           ; $4efa: $00
    ld b, h                                       ; $4efb: $44
    nop                                           ; $4efc: $00
    rst RST_38                                    ; $4efd: $ff
    nop                                           ; $4efe: $00
    ld de, $00ff                                  ; $4eff: $11 $ff $00
    rst RST_38                                    ; $4f02: $ff
    nop                                           ; $4f03: $00
    rst RST_38                                    ; $4f04: $ff
    nop                                           ; $4f05: $00
    rst RST_38                                    ; $4f06: $ff
    nop                                           ; $4f07: $00
    rst RST_38                                    ; $4f08: $ff
    nop                                           ; $4f09: $00
    rst RST_38                                    ; $4f0a: $ff
    nop                                           ; $4f0b: $00
    rst RST_38                                    ; $4f0c: $ff
    nop                                           ; $4f0d: $00
    rst RST_38                                    ; $4f0e: $ff
    nop                                           ; $4f0f: $00
    rst RST_38                                    ; $4f10: $ff
    nop                                           ; $4f11: $00
    rst RST_38                                    ; $4f12: $ff
    nop                                           ; $4f13: $00
    rst RST_38                                    ; $4f14: $ff
    nop                                           ; $4f15: $00
    rst RST_38                                    ; $4f16: $ff
    nop                                           ; $4f17: $00
    rst RST_38                                    ; $4f18: $ff
    nop                                           ; $4f19: $00
    rst RST_38                                    ; $4f1a: $ff
    nop                                           ; $4f1b: $00
    rst RST_38                                    ; $4f1c: $ff
    nop                                           ; $4f1d: $00

jr_00b_4f1e:
    rst RST_38                                    ; $4f1e: $ff
    nop                                           ; $4f1f: $00
    rst RST_38                                    ; $4f20: $ff
    jr @+$01                                      ; $4f21: $18 $ff

    inc h                                         ; $4f23: $24
    rst RST_38                                    ; $4f24: $ff
    inc h                                         ; $4f25: $24

jr_00b_4f26:
    rst RST_38                                    ; $4f26: $ff
    jr @+$01                                      ; $4f27: $18 $ff

    jr @+$01                                      ; $4f29: $18 $ff

    inc h                                         ; $4f2b: $24
    rst RST_38                                    ; $4f2c: $ff
    inc h                                         ; $4f2d: $24
    rst RST_38                                    ; $4f2e: $ff
    jr @+$01                                      ; $4f2f: $18 $ff

    nop                                           ; $4f31: $00
    rst RST_38                                    ; $4f32: $ff
    nop                                           ; $4f33: $00
    rst RST_38                                    ; $4f34: $ff
    nop                                           ; $4f35: $00
    rst RST_38                                    ; $4f36: $ff
    nop                                           ; $4f37: $00
    rst RST_38                                    ; $4f38: $ff
    nop                                           ; $4f39: $00
    rst RST_38                                    ; $4f3a: $ff
    nop                                           ; $4f3b: $00
    rst RST_38                                    ; $4f3c: $ff
    nop                                           ; $4f3d: $00
    rst RST_38                                    ; $4f3e: $ff
    nop                                           ; $4f3f: $00
    rst RST_38                                    ; $4f40: $ff
    nop                                           ; $4f41: $00
    rst RST_38                                    ; $4f42: $ff
    nop                                           ; $4f43: $00
    rst RST_38                                    ; $4f44: $ff
    nop                                           ; $4f45: $00
    rst RST_38                                    ; $4f46: $ff
    nop                                           ; $4f47: $00
    rst RST_38                                    ; $4f48: $ff
    nop                                           ; $4f49: $00
    rst RST_38                                    ; $4f4a: $ff
    nop                                           ; $4f4b: $00
    rst RST_38                                    ; $4f4c: $ff
    nop                                           ; $4f4d: $00
    rst RST_38                                    ; $4f4e: $ff
    nop                                           ; $4f4f: $00
    rst RST_38                                    ; $4f50: $ff
    nop                                           ; $4f51: $00
    rst RST_38                                    ; $4f52: $ff
    nop                                           ; $4f53: $00
    rst RST_38                                    ; $4f54: $ff
    nop                                           ; $4f55: $00
    rst RST_38                                    ; $4f56: $ff
    nop                                           ; $4f57: $00
    rst RST_38                                    ; $4f58: $ff
    nop                                           ; $4f59: $00
    rst RST_38                                    ; $4f5a: $ff
    nop                                           ; $4f5b: $00
    rst RST_38                                    ; $4f5c: $ff
    nop                                           ; $4f5d: $00
    rst RST_38                                    ; $4f5e: $ff
    nop                                           ; $4f5f: $00
    rst RST_38                                    ; $4f60: $ff
    nop                                           ; $4f61: $00
    rst RST_38                                    ; $4f62: $ff
    nop                                           ; $4f63: $00
    rst RST_38                                    ; $4f64: $ff
    nop                                           ; $4f65: $00
    rst RST_38                                    ; $4f66: $ff
    nop                                           ; $4f67: $00
    rst RST_38                                    ; $4f68: $ff
    nop                                           ; $4f69: $00
    rst RST_38                                    ; $4f6a: $ff
    nop                                           ; $4f6b: $00
    rst RST_38                                    ; $4f6c: $ff
    nop                                           ; $4f6d: $00
    rst RST_38                                    ; $4f6e: $ff
    nop                                           ; $4f6f: $00
    rst RST_38                                    ; $4f70: $ff
    nop                                           ; $4f71: $00
    rst RST_38                                    ; $4f72: $ff
    nop                                           ; $4f73: $00
    rst RST_38                                    ; $4f74: $ff
    nop                                           ; $4f75: $00
    rst RST_38                                    ; $4f76: $ff
    nop                                           ; $4f77: $00
    rst RST_38                                    ; $4f78: $ff
    nop                                           ; $4f79: $00
    rst RST_38                                    ; $4f7a: $ff
    nop                                           ; $4f7b: $00
    rst RST_38                                    ; $4f7c: $ff
    nop                                           ; $4f7d: $00
    rst RST_38                                    ; $4f7e: $ff
    nop                                           ; $4f7f: $00
    ld [$2898], sp                                ; $4f80: $08 $98 $28
    sbc b                                         ; $4f83: $98
    jr z, jr_00b_4f1e                             ; $4f84: $28 $98

    ld [$0898], sp                                ; $4f86: $08 $98 $08
    ld hl, sp+$08                                 ; $4f89: $f8 $08
    sbc b                                         ; $4f8b: $98
    jr z, jr_00b_4f26                             ; $4f8c: $28 $98

    jr z, @-$66                                   ; $4f8e: $28 $98

    rst RST_38                                    ; $4f90: $ff
    rst RST_38                                    ; $4f91: $ff
    nop                                           ; $4f92: $00
    rst RST_38                                    ; $4f93: $ff
    ld [hl+], a                                   ; $4f94: $22
    ld d, l                                       ; $4f95: $55
    nop                                           ; $4f96: $00
    xor d                                         ; $4f97: $aa
    ld b, h                                       ; $4f98: $44
    nop                                           ; $4f99: $00
    ld [$a2a5], sp                                ; $4f9a: $08 $a5 $a2
    nop                                           ; $4f9d: $00
    ld d, h                                       ; $4f9e: $54
    nop                                           ; $4f9f: $00
    add b                                         ; $4fa0: $80
    ld l, e                                       ; $4fa1: $6b
    ld d, h                                       ; $4fa2: $54
    add hl, hl                                    ; $4fa3: $29
    and d                                         ; $4fa4: $a2
    ld [$0855], sp                                ; $4fa5: $08 $55 $08
    and d                                         ; $4fa8: $a2
    ld [$0855], sp                                ; $4fa9: $08 $55 $08
    and d                                         ; $4fac: $a2
    ld [$0855], sp                                ; $4fad: $08 $55 $08
    nop                                           ; $4fb0: $00
    ld l, e                                       ; $4fb1: $6b
    nop                                           ; $4fb2: $00
    add hl, hl                                    ; $4fb3: $29
    nop                                           ; $4fb4: $00
    ld [$0800], sp                                ; $4fb5: $08 $00 $08
    nop                                           ; $4fb8: $00
    ld [$0800], sp                                ; $4fb9: $08 $00 $08
    nop                                           ; $4fbc: $00
    ld [$0800], sp                                ; $4fbd: $08 $00 $08
    cp $00                                        ; $4fc0: $fe $00
    db $fd                                        ; $4fc2: $fd
    nop                                           ; $4fc3: $00
    ld hl, sp+$00                                 ; $4fc4: $f8 $00
    rst RST_30                                    ; $4fc6: $f7
    nop                                           ; $4fc7: $00
    ldh [rP1], a                                  ; $4fc8: $e0 $00
    db $dd                                        ; $4fca: $dd
    nop                                           ; $4fcb: $00
    add b                                         ; $4fcc: $80
    nop                                           ; $4fcd: $00
    ld [hl], a                                    ; $4fce: $77
    nop                                           ; $4fcf: $00
    nop                                           ; $4fd0: $00
    rst RST_38                                    ; $4fd1: $ff
    nop                                           ; $4fd2: $00
    add b                                         ; $4fd3: $80
    nop                                           ; $4fd4: $00
    add b                                         ; $4fd5: $80
    inc h                                         ; $4fd6: $24
    and h                                         ; $4fd7: $a4
    inc h                                         ; $4fd8: $24
    and h                                         ; $4fd9: $a4
    nop                                           ; $4fda: $00
    add b                                         ; $4fdb: $80
    nop                                           ; $4fdc: $00
    add b                                         ; $4fdd: $80
    nop                                           ; $4fde: $00
    add b                                         ; $4fdf: $80
    nop                                           ; $4fe0: $00
    rst RST_38                                    ; $4fe1: $ff
    nop                                           ; $4fe2: $00
    rst RST_38                                    ; $4fe3: $ff
    nop                                           ; $4fe4: $00
    rst RST_38                                    ; $4fe5: $ff
    nop                                           ; $4fe6: $00
    rst RST_38                                    ; $4fe7: $ff
    nop                                           ; $4fe8: $00
    rst RST_38                                    ; $4fe9: $ff
    jr @+$01                                      ; $4fea: $18 $ff

    jr @+$01                                      ; $4fec: $18 $ff

    jr @+$01                                      ; $4fee: $18 $ff

    rlca                                          ; $4ff0: $07
    rst RST_38                                    ; $4ff1: $ff
    add hl, bc                                    ; $4ff2: $09
    ld c, h                                       ; $4ff3: $4c
    ld [$0cf8], sp                                ; $4ff4: $08 $f8 $0c
    jr jr_00b_5075                                ; $4ff7: $18 $7c

    rst RST_38                                    ; $4ff9: $ff
    cp e                                          ; $4ffa: $bb
    add b                                         ; $4ffb: $80
    add b                                         ; $4ffc: $80
    add b                                         ; $4ffd: $80
    pop bc                                        ; $4ffe: $c1
    xor h                                         ; $4fff: $ac
    inc a                                         ; $5000: $3c
    inc a                                         ; $5001: $3c
    ld a, [hl]                                    ; $5002: $7e
    ld b, d                                       ; $5003: $42
    rst RST_38                                    ; $5004: $ff
    sbc c                                         ; $5005: $99
    rst RST_38                                    ; $5006: $ff
    sbc c                                         ; $5007: $99
    rst RST_38                                    ; $5008: $ff
    add c                                         ; $5009: $81
    rst RST_38                                    ; $500a: $ff
    sbc c                                         ; $500b: $99
    rst RST_38                                    ; $500c: $ff
    sbc c                                         ; $500d: $99
    ld h, [hl]                                    ; $500e: $66
    ld h, [hl]                                    ; $500f: $66
    ld a, h                                       ; $5010: $7c
    ld a, h                                       ; $5011: $7c
    cp $82                                        ; $5012: $fe $82
    rst RST_38                                    ; $5014: $ff
    sbc c                                         ; $5015: $99
    cp $82                                        ; $5016: $fe $82
    rst RST_38                                    ; $5018: $ff
    sbc c                                         ; $5019: $99
    rst RST_38                                    ; $501a: $ff
    sbc c                                         ; $501b: $99
    cp $82                                        ; $501c: $fe $82
    ld a, h                                       ; $501e: $7c
    ld a, h                                       ; $501f: $7c
    inc a                                         ; $5020: $3c
    inc a                                         ; $5021: $3c
    ld a, [hl]                                    ; $5022: $7e
    ld b, d                                       ; $5023: $42
    rst RST_38                                    ; $5024: $ff
    sbc c                                         ; $5025: $99
    rst RST_38                                    ; $5026: $ff
    sbc a                                         ; $5027: $9f
    rst RST_38                                    ; $5028: $ff
    sbc a                                         ; $5029: $9f
    rst RST_38                                    ; $502a: $ff
    sbc c                                         ; $502b: $99
    ld a, [hl]                                    ; $502c: $7e
    ld b, d                                       ; $502d: $42
    inc a                                         ; $502e: $3c
    inc a                                         ; $502f: $3c
    ld a, h                                       ; $5030: $7c
    ld a, h                                       ; $5031: $7c
    cp $82                                        ; $5032: $fe $82
    rst RST_38                                    ; $5034: $ff
    sbc c                                         ; $5035: $99
    rst RST_38                                    ; $5036: $ff
    sbc c                                         ; $5037: $99
    rst RST_38                                    ; $5038: $ff
    sbc c                                         ; $5039: $99
    rst RST_38                                    ; $503a: $ff
    sbc c                                         ; $503b: $99
    cp $82                                        ; $503c: $fe $82
    ld a, h                                       ; $503e: $7c
    ld a, h                                       ; $503f: $7c
    ld a, [hl]                                    ; $5040: $7e
    ld a, [hl]                                    ; $5041: $7e
    rst RST_38                                    ; $5042: $ff
    add c                                         ; $5043: $81
    cp $9e                                        ; $5044: $fe $9e
    db $fc                                        ; $5046: $fc
    add h                                         ; $5047: $84
    ld hl, sp-$68                                 ; $5048: $f8 $98
    cp $9e                                        ; $504a: $fe $9e
    rst RST_38                                    ; $504c: $ff
    add c                                         ; $504d: $81
    ld a, [hl]                                    ; $504e: $7e
    ld a, [hl]                                    ; $504f: $7e
    ld a, [hl]                                    ; $5050: $7e
    ld a, [hl]                                    ; $5051: $7e
    rst RST_38                                    ; $5052: $ff
    add c                                         ; $5053: $81
    cp $9e                                        ; $5054: $fe $9e
    cp $82                                        ; $5056: $fe $82
    db $fc                                        ; $5058: $fc
    sbc h                                         ; $5059: $9c
    ldh a, [$ff90]                                ; $505a: $f0 $90
    ldh a, [$ff90]                                ; $505c: $f0 $90
    ld h, b                                       ; $505e: $60
    ld h, b                                       ; $505f: $60
    inc a                                         ; $5060: $3c
    inc a                                         ; $5061: $3c
    ld a, [hl]                                    ; $5062: $7e
    ld b, d                                       ; $5063: $42
    rst RST_38                                    ; $5064: $ff
    sbc c                                         ; $5065: $99
    cp $9e                                        ; $5066: $fe $9e
    rst RST_38                                    ; $5068: $ff
    sub c                                         ; $5069: $91
    rst RST_38                                    ; $506a: $ff
    sbc c                                         ; $506b: $99
    ld a, [hl]                                    ; $506c: $7e
    ld b, d                                       ; $506d: $42
    inc a                                         ; $506e: $3c
    inc a                                         ; $506f: $3c
    ld h, [hl]                                    ; $5070: $66
    ld h, [hl]                                    ; $5071: $66
    rst RST_38                                    ; $5072: $ff
    sbc c                                         ; $5073: $99
    rst RST_38                                    ; $5074: $ff

jr_00b_5075:
    sbc c                                         ; $5075: $99
    rst RST_38                                    ; $5076: $ff
    add c                                         ; $5077: $81
    rst RST_38                                    ; $5078: $ff
    sbc c                                         ; $5079: $99
    rst RST_38                                    ; $507a: $ff
    sbc c                                         ; $507b: $99
    rst RST_38                                    ; $507c: $ff
    sbc c                                         ; $507d: $99
    ld h, [hl]                                    ; $507e: $66
    ld h, [hl]                                    ; $507f: $66
    jr jr_00b_509a                                ; $5080: $18 $18

    inc a                                         ; $5082: $3c
    inc h                                         ; $5083: $24
    inc a                                         ; $5084: $3c
    inc h                                         ; $5085: $24
    inc a                                         ; $5086: $3c
    inc h                                         ; $5087: $24
    inc a                                         ; $5088: $3c
    inc h                                         ; $5089: $24
    inc a                                         ; $508a: $3c
    inc h                                         ; $508b: $24
    inc a                                         ; $508c: $3c
    inc h                                         ; $508d: $24
    jr jr_00b_50a8                                ; $508e: $18 $18

    ld b, $06                                     ; $5090: $06 $06
    rrca                                          ; $5092: $0f
    add hl, bc                                    ; $5093: $09
    rrca                                          ; $5094: $0f
    add hl, bc                                    ; $5095: $09
    ld l, a                                       ; $5096: $6f
    ld l, c                                       ; $5097: $69
    rst RST_38                                    ; $5098: $ff
    sbc c                                         ; $5099: $99

jr_00b_509a:
    rst RST_38                                    ; $509a: $ff
    sbc c                                         ; $509b: $99
    ld a, [hl]                                    ; $509c: $7e
    ld b, d                                       ; $509d: $42
    inc a                                         ; $509e: $3c
    inc a                                         ; $509f: $3c
    ld h, [hl]                                    ; $50a0: $66
    ld h, [hl]                                    ; $50a1: $66
    rst RST_38                                    ; $50a2: $ff
    sbc c                                         ; $50a3: $99
    cp $92                                        ; $50a4: $fe $92
    db $fc                                        ; $50a6: $fc
    add h                                         ; $50a7: $84

jr_00b_50a8:
    db $fc                                        ; $50a8: $fc
    add h                                         ; $50a9: $84
    cp $92                                        ; $50aa: $fe $92
    rst RST_38                                    ; $50ac: $ff
    sbc c                                         ; $50ad: $99
    ld h, [hl]                                    ; $50ae: $66
    ld h, [hl]                                    ; $50af: $66
    ld h, b                                       ; $50b0: $60
    ld h, b                                       ; $50b1: $60
    ldh a, [$ff90]                                ; $50b2: $f0 $90
    ldh a, [$ff90]                                ; $50b4: $f0 $90
    ldh a, [$ff90]                                ; $50b6: $f0 $90
    ldh a, [$ff90]                                ; $50b8: $f0 $90
    cp $9e                                        ; $50ba: $fe $9e
    rst RST_38                                    ; $50bc: $ff
    add c                                         ; $50bd: $81
    ld a, [hl]                                    ; $50be: $7e
    ld a, [hl]                                    ; $50bf: $7e
    ld h, d                                       ; $50c0: $62
    ld h, d                                       ; $50c1: $62
    rst RST_30                                    ; $50c2: $f7
    sub l                                         ; $50c3: $95
    rst RST_38                                    ; $50c4: $ff
    adc c                                         ; $50c5: $89
    rst RST_38                                    ; $50c6: $ff
    add c                                         ; $50c7: $81
    rst RST_38                                    ; $50c8: $ff
    sub l                                         ; $50c9: $95
    rst RST_38                                    ; $50ca: $ff
    sbc l                                         ; $50cb: $9d
    rst RST_30                                    ; $50cc: $f7
    sub l                                         ; $50cd: $95
    ld h, d                                       ; $50ce: $62
    ld h, d                                       ; $50cf: $62
    ld h, [hl]                                    ; $50d0: $66
    ld h, [hl]                                    ; $50d1: $66
    rst RST_38                                    ; $50d2: $ff
    sbc c                                         ; $50d3: $99
    rst RST_38                                    ; $50d4: $ff
    adc c                                         ; $50d5: $89
    rst RST_38                                    ; $50d6: $ff
    add c                                         ; $50d7: $81
    rst RST_38                                    ; $50d8: $ff
    sub c                                         ; $50d9: $91
    rst RST_38                                    ; $50da: $ff
    sbc c                                         ; $50db: $99
    rst RST_38                                    ; $50dc: $ff
    sbc c                                         ; $50dd: $99
    ld h, [hl]                                    ; $50de: $66
    ld h, [hl]                                    ; $50df: $66
    inc a                                         ; $50e0: $3c
    inc a                                         ; $50e1: $3c
    ld a, [hl]                                    ; $50e2: $7e
    ld b, d                                       ; $50e3: $42
    rst RST_38                                    ; $50e4: $ff
    sbc c                                         ; $50e5: $99
    rst RST_38                                    ; $50e6: $ff
    sbc c                                         ; $50e7: $99
    rst RST_38                                    ; $50e8: $ff
    sbc c                                         ; $50e9: $99
    rst RST_38                                    ; $50ea: $ff
    sbc c                                         ; $50eb: $99
    ld a, [hl]                                    ; $50ec: $7e
    ld b, d                                       ; $50ed: $42
    inc a                                         ; $50ee: $3c
    inc a                                         ; $50ef: $3c
    ld a, h                                       ; $50f0: $7c
    ld a, h                                       ; $50f1: $7c
    cp $82                                        ; $50f2: $fe $82
    rst RST_38                                    ; $50f4: $ff
    sbc c                                         ; $50f5: $99
    rst RST_38                                    ; $50f6: $ff
    sbc c                                         ; $50f7: $99
    cp $82                                        ; $50f8: $fe $82
    db $fc                                        ; $50fa: $fc
    sbc h                                         ; $50fb: $9c
    ldh a, [$ff90]                                ; $50fc: $f0 $90
    ld h, b                                       ; $50fe: $60
    ld h, b                                       ; $50ff: $60
    inc a                                         ; $5100: $3c
    inc a                                         ; $5101: $3c
    ld a, [hl]                                    ; $5102: $7e
    ld b, d                                       ; $5103: $42
    rst RST_38                                    ; $5104: $ff
    sbc c                                         ; $5105: $99
    rst RST_38                                    ; $5106: $ff
    sbc c                                         ; $5107: $99
    rst RST_38                                    ; $5108: $ff
    add c                                         ; $5109: $81
    cp $9a                                        ; $510a: $fe $9a
    ld a, a                                       ; $510c: $7f
    ld b, c                                       ; $510d: $41
    ld a, $3e                                     ; $510e: $3e $3e
    ld a, h                                       ; $5110: $7c
    ld a, h                                       ; $5111: $7c
    cp $82                                        ; $5112: $fe $82
    rst RST_38                                    ; $5114: $ff
    sbc c                                         ; $5115: $99
    rst RST_38                                    ; $5116: $ff
    sbc c                                         ; $5117: $99
    cp $82                                        ; $5118: $fe $82
    rst RST_38                                    ; $511a: $ff
    sbc c                                         ; $511b: $99
    rst RST_38                                    ; $511c: $ff
    sbc c                                         ; $511d: $99
    ld h, [hl]                                    ; $511e: $66
    ld h, [hl]                                    ; $511f: $66
    ld a, $3e                                     ; $5120: $3e $3e
    ld a, a                                       ; $5122: $7f
    ld b, c                                       ; $5123: $41
    cp $9e                                        ; $5124: $fe $9e
    ld a, [hl]                                    ; $5126: $7e
    ld b, d                                       ; $5127: $42
    ld a, a                                       ; $5128: $7f
    ld a, c                                       ; $5129: $79
    rst RST_38                                    ; $512a: $ff
    sbc c                                         ; $512b: $99
    ld a, [hl]                                    ; $512c: $7e
    ld b, d                                       ; $512d: $42
    inc a                                         ; $512e: $3c
    inc a                                         ; $512f: $3c
    ld a, [hl]                                    ; $5130: $7e
    ld a, [hl]                                    ; $5131: $7e
    rst RST_38                                    ; $5132: $ff
    add c                                         ; $5133: $81
    ld a, [hl]                                    ; $5134: $7e
    ld h, [hl]                                    ; $5135: $66
    inc a                                         ; $5136: $3c
    inc h                                         ; $5137: $24
    inc a                                         ; $5138: $3c
    inc h                                         ; $5139: $24
    inc a                                         ; $513a: $3c
    inc h                                         ; $513b: $24
    inc a                                         ; $513c: $3c
    inc h                                         ; $513d: $24
    jr jr_00b_5158                                ; $513e: $18 $18

    ld h, [hl]                                    ; $5140: $66
    ld h, [hl]                                    ; $5141: $66
    rst RST_38                                    ; $5142: $ff
    sbc c                                         ; $5143: $99
    rst RST_38                                    ; $5144: $ff
    sbc c                                         ; $5145: $99
    rst RST_38                                    ; $5146: $ff
    sbc c                                         ; $5147: $99
    rst RST_38                                    ; $5148: $ff
    sbc c                                         ; $5149: $99
    rst RST_38                                    ; $514a: $ff
    sbc c                                         ; $514b: $99
    ld a, [hl]                                    ; $514c: $7e
    ld b, d                                       ; $514d: $42
    inc a                                         ; $514e: $3c
    inc a                                         ; $514f: $3c
    ld h, d                                       ; $5150: $62
    ld h, d                                       ; $5151: $62
    rst RST_30                                    ; $5152: $f7
    sub l                                         ; $5153: $95
    rst RST_30                                    ; $5154: $f7
    sub l                                         ; $5155: $95
    rst RST_30                                    ; $5156: $f7
    sub l                                         ; $5157: $95

jr_00b_5158:
    rst RST_30                                    ; $5158: $f7
    sub l                                         ; $5159: $95
    ld a, [hl]                                    ; $515a: $7e
    ld c, d                                       ; $515b: $4a
    inc a                                         ; $515c: $3c
    inc h                                         ; $515d: $24
    jr jr_00b_5178                                ; $515e: $18 $18

    ld h, d                                       ; $5160: $62
    ld h, d                                       ; $5161: $62
    rst RST_38                                    ; $5162: $ff
    sbc l                                         ; $5163: $9d
    rst RST_38                                    ; $5164: $ff
    sub l                                         ; $5165: $95
    rst RST_38                                    ; $5166: $ff
    sub l                                         ; $5167: $95
    rst RST_38                                    ; $5168: $ff
    sub l                                         ; $5169: $95
    rst RST_38                                    ; $516a: $ff
    add c                                         ; $516b: $81
    ld a, [hl]                                    ; $516c: $7e
    ld c, d                                       ; $516d: $4a
    inc [hl]                                      ; $516e: $34
    inc [hl]                                      ; $516f: $34
    ld h, [hl]                                    ; $5170: $66
    ld h, [hl]                                    ; $5171: $66
    rst RST_38                                    ; $5172: $ff
    sbc c                                         ; $5173: $99
    ld a, [hl]                                    ; $5174: $7e
    ld b, d                                       ; $5175: $42
    inc a                                         ; $5176: $3c
    inc h                                         ; $5177: $24

jr_00b_5178:
    ld a, [hl]                                    ; $5178: $7e
    ld b, d                                       ; $5179: $42
    rst RST_38                                    ; $517a: $ff
    sbc c                                         ; $517b: $99
    rst RST_20                                    ; $517c: $e7
    and l                                         ; $517d: $a5
    ld b, d                                       ; $517e: $42
    ld b, d                                       ; $517f: $42
    ld h, [hl]                                    ; $5180: $66
    ld h, [hl]                                    ; $5181: $66
    rst RST_38                                    ; $5182: $ff
    sbc c                                         ; $5183: $99
    rst RST_38                                    ; $5184: $ff
    sbc c                                         ; $5185: $99
    ld a, [hl]                                    ; $5186: $7e
    ld b, d                                       ; $5187: $42
    inc a                                         ; $5188: $3c
    inc h                                         ; $5189: $24
    inc a                                         ; $518a: $3c
    inc h                                         ; $518b: $24
    inc a                                         ; $518c: $3c
    inc h                                         ; $518d: $24
    jr jr_00b_51a8                                ; $518e: $18 $18

    ld a, [hl]                                    ; $5190: $7e
    ld a, [hl]                                    ; $5191: $7e
    rst RST_38                                    ; $5192: $ff
    add c                                         ; $5193: $81
    ld a, [hl]                                    ; $5194: $7e
    ld [hl], d                                    ; $5195: $72
    inc a                                         ; $5196: $3c
    inc h                                         ; $5197: $24
    ld a, b                                       ; $5198: $78
    ld c, b                                       ; $5199: $48
    cp $9e                                        ; $519a: $fe $9e
    rst RST_38                                    ; $519c: $ff
    add c                                         ; $519d: $81
    ld a, [hl]                                    ; $519e: $7e
    ld a, [hl]                                    ; $519f: $7e
    jr jr_00b_51ba                                ; $51a0: $18 $18

    inc a                                         ; $51a2: $3c
    inc h                                         ; $51a3: $24
    inc a                                         ; $51a4: $3c
    inc h                                         ; $51a5: $24
    inc e                                         ; $51a6: $1c
    inc d                                         ; $51a7: $14

jr_00b_51a8:
    ld [$0008], sp                                ; $51a8: $08 $08 $00
    nop                                           ; $51ab: $00
    nop                                           ; $51ac: $00
    nop                                           ; $51ad: $00
    nop                                           ; $51ae: $00
    nop                                           ; $51af: $00
    ld [hl], $36                                  ; $51b0: $36 $36
    ld a, a                                       ; $51b2: $7f
    ld c, c                                       ; $51b3: $49
    ld a, a                                       ; $51b4: $7f
    ld c, c                                       ; $51b5: $49
    ccf                                           ; $51b6: $3f
    dec l                                         ; $51b7: $2d
    ld [de], a                                    ; $51b8: $12
    ld [de], a                                    ; $51b9: $12

jr_00b_51ba:
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
    ld a, [hl]                                    ; $51c4: $7e
    ld a, [hl]                                    ; $51c5: $7e
    rst RST_38                                    ; $51c6: $ff
    add c                                         ; $51c7: $81
    ld a, [hl]                                    ; $51c8: $7e
    ld a, [hl]                                    ; $51c9: $7e
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
    jr nc, jr_00b_520a                            ; $51d8: $30 $30

    ld a, b                                       ; $51da: $78
    ld c, b                                       ; $51db: $48
    ld a, b                                       ; $51dc: $78
    ld c, b                                       ; $51dd: $48
    jr nc, jr_00b_5210                            ; $51de: $30 $30

    nop                                           ; $51e0: $00
    nop                                           ; $51e1: $00
    nop                                           ; $51e2: $00
    nop                                           ; $51e3: $00
    nop                                           ; $51e4: $00
    nop                                           ; $51e5: $00
    ld h, b                                       ; $51e6: $60
    ld h, b                                       ; $51e7: $60
    ldh a, [$ff90]                                ; $51e8: $f0 $90
    ld [hl], b                                    ; $51ea: $70
    ld d, b                                       ; $51eb: $50
    ldh [$ffa0], a                                ; $51ec: $e0 $a0
    ret nz                                        ; $51ee: $c0

    ret nz                                        ; $51ef: $c0

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
    inc a                                         ; $5200: $3c
    inc a                                         ; $5201: $3c
    ld a, [hl]                                    ; $5202: $7e
    ld b, d                                       ; $5203: $42
    rst RST_38                                    ; $5204: $ff
    sbc c                                         ; $5205: $99
    rst RST_38                                    ; $5206: $ff
    sub c                                         ; $5207: $91
    rst RST_38                                    ; $5208: $ff
    adc c                                         ; $5209: $89

jr_00b_520a:
    rst RST_38                                    ; $520a: $ff
    sbc c                                         ; $520b: $99
    ld a, [hl]                                    ; $520c: $7e
    ld b, d                                       ; $520d: $42
    inc a                                         ; $520e: $3c
    inc a                                         ; $520f: $3c

jr_00b_5210:
    jr jr_00b_522a                                ; $5210: $18 $18

    inc a                                         ; $5212: $3c
    inc h                                         ; $5213: $24
    ld a, h                                       ; $5214: $7c
    ld b, h                                       ; $5215: $44
    inc a                                         ; $5216: $3c
    inc h                                         ; $5217: $24
    inc a                                         ; $5218: $3c
    inc h                                         ; $5219: $24
    inc a                                         ; $521a: $3c
    inc h                                         ; $521b: $24
    inc a                                         ; $521c: $3c
    inc h                                         ; $521d: $24
    jr jr_00b_5238                                ; $521e: $18 $18

    inc a                                         ; $5220: $3c
    inc a                                         ; $5221: $3c
    ld a, [hl]                                    ; $5222: $7e
    ld b, d                                       ; $5223: $42
    rst RST_38                                    ; $5224: $ff
    sbc c                                         ; $5225: $99
    ld a, a                                       ; $5226: $7f
    ld a, c                                       ; $5227: $79
    ld a, [hl]                                    ; $5228: $7e
    ld b, d                                       ; $5229: $42

jr_00b_522a:
    cp $9e                                        ; $522a: $fe $9e
    rst RST_38                                    ; $522c: $ff
    add c                                         ; $522d: $81
    ld a, [hl]                                    ; $522e: $7e
    ld a, [hl]                                    ; $522f: $7e
    inc a                                         ; $5230: $3c
    inc a                                         ; $5231: $3c
    ld a, [hl]                                    ; $5232: $7e
    ld b, d                                       ; $5233: $42
    rst RST_38                                    ; $5234: $ff
    sbc c                                         ; $5235: $99
    ld a, [hl]                                    ; $5236: $7e
    ld [hl], d                                    ; $5237: $72

jr_00b_5238:
    ld a, a                                       ; $5238: $7f
    ld a, c                                       ; $5239: $79
    rst RST_38                                    ; $523a: $ff
    sbc c                                         ; $523b: $99
    ld a, [hl]                                    ; $523c: $7e
    ld b, d                                       ; $523d: $42
    inc a                                         ; $523e: $3c
    inc a                                         ; $523f: $3c
    inc e                                         ; $5240: $1c
    inc e                                         ; $5241: $1c
    ld a, $22                                     ; $5242: $3e $22
    ld a, [hl]                                    ; $5244: $7e
    ld b, d                                       ; $5245: $42
    cp $92                                        ; $5246: $fe $92
    cp $92                                        ; $5248: $fe $92
    rst RST_38                                    ; $524a: $ff
    add c                                         ; $524b: $81
    ld a, [hl]                                    ; $524c: $7e
    ld [hl], d                                    ; $524d: $72
    inc c                                         ; $524e: $0c
    inc c                                         ; $524f: $0c
    ld a, [hl]                                    ; $5250: $7e
    ld a, [hl]                                    ; $5251: $7e
    rst RST_38                                    ; $5252: $ff
    add c                                         ; $5253: $81
    cp $9e                                        ; $5254: $fe $9e
    cp $82                                        ; $5256: $fe $82
    ld a, a                                       ; $5258: $7f
    ld a, c                                       ; $5259: $79
    rst RST_38                                    ; $525a: $ff
    sbc c                                         ; $525b: $99
    ld a, [hl]                                    ; $525c: $7e
    ld b, d                                       ; $525d: $42
    inc a                                         ; $525e: $3c
    inc a                                         ; $525f: $3c
    inc a                                         ; $5260: $3c
    inc a                                         ; $5261: $3c
    ld a, [hl]                                    ; $5262: $7e
    ld b, d                                       ; $5263: $42
    db $fc                                        ; $5264: $fc
    sbc h                                         ; $5265: $9c
    cp $82                                        ; $5266: $fe $82
    rst RST_38                                    ; $5268: $ff
    sbc c                                         ; $5269: $99
    rst RST_38                                    ; $526a: $ff
    sbc c                                         ; $526b: $99
    ld a, [hl]                                    ; $526c: $7e
    ld b, d                                       ; $526d: $42
    inc a                                         ; $526e: $3c
    inc a                                         ; $526f: $3c
    ld a, [hl]                                    ; $5270: $7e
    ld a, [hl]                                    ; $5271: $7e
    rst RST_38                                    ; $5272: $ff
    add c                                         ; $5273: $81
    rst RST_38                                    ; $5274: $ff
    sbc c                                         ; $5275: $99
    ld l, a                                       ; $5276: $6f
    ld l, c                                       ; $5277: $69
    ld e, $12                                     ; $5278: $1e $12
    inc a                                         ; $527a: $3c
    inc h                                         ; $527b: $24
    inc a                                         ; $527c: $3c
    inc h                                         ; $527d: $24
    jr jr_00b_5298                                ; $527e: $18 $18

    inc a                                         ; $5280: $3c
    inc a                                         ; $5281: $3c
    ld a, [hl]                                    ; $5282: $7e
    ld b, d                                       ; $5283: $42
    rst RST_38                                    ; $5284: $ff
    sbc c                                         ; $5285: $99
    ld a, [hl]                                    ; $5286: $7e
    ld b, d                                       ; $5287: $42
    rst RST_38                                    ; $5288: $ff
    sbc c                                         ; $5289: $99
    rst RST_38                                    ; $528a: $ff
    sbc c                                         ; $528b: $99
    ld a, [hl]                                    ; $528c: $7e
    ld b, d                                       ; $528d: $42
    inc a                                         ; $528e: $3c
    inc a                                         ; $528f: $3c
    inc a                                         ; $5290: $3c
    inc a                                         ; $5291: $3c
    ld a, [hl]                                    ; $5292: $7e
    ld b, d                                       ; $5293: $42
    rst RST_38                                    ; $5294: $ff
    sbc c                                         ; $5295: $99
    rst RST_38                                    ; $5296: $ff
    sbc c                                         ; $5297: $99

jr_00b_5298:
    ld a, a                                       ; $5298: $7f
    ld b, c                                       ; $5299: $41
    ccf                                           ; $529a: $3f
    add hl, sp                                    ; $529b: $39
    ld a, [hl]                                    ; $529c: $7e
    ld b, d                                       ; $529d: $42
    inc a                                         ; $529e: $3c
    inc a                                         ; $529f: $3c
    nop                                           ; $52a0: $00
    nop                                           ; $52a1: $00
    jr jr_00b_52bc                                ; $52a2: $18 $18

    ld a, h                                       ; $52a4: $7c
    ld [hl], h                                    ; $52a5: $74
    ld a, [hl]                                    ; $52a6: $7e
    ld b, d                                       ; $52a7: $42
    ld a, [hl]                                    ; $52a8: $7e
    ld b, d                                       ; $52a9: $42
    ld a, h                                       ; $52aa: $7c
    ld [hl], h                                    ; $52ab: $74
    jr jr_00b_52c6                                ; $52ac: $18 $18

    nop                                           ; $52ae: $00
    nop                                           ; $52af: $00
    inc a                                         ; $52b0: $3c
    inc a                                         ; $52b1: $3c
    ld a, [hl]                                    ; $52b2: $7e
    ld b, d                                       ; $52b3: $42
    rst RST_38                                    ; $52b4: $ff
    sbc c                                         ; $52b5: $99
    ld a, a                                       ; $52b6: $7f
    ld a, c                                       ; $52b7: $79
    ld a, $22                                     ; $52b8: $3e $22
    inc e                                         ; $52ba: $1c
    inc e                                         ; $52bb: $1c

jr_00b_52bc:
    inc a                                         ; $52bc: $3c
    inc h                                         ; $52bd: $24
    jr jr_00b_52d8                                ; $52be: $18 $18

    nop                                           ; $52c0: $00
    nop                                           ; $52c1: $00
    nop                                           ; $52c2: $00
    nop                                           ; $52c3: $00
    nop                                           ; $52c4: $00
    nop                                           ; $52c5: $00

jr_00b_52c6:
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

jr_00b_52d8:
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
    nop                                           ; $530e: $00
    nop                                           ; $530f: $00
    nop                                           ; $5310: $00
    nop                                           ; $5311: $00
    nop                                           ; $5312: $00
    nop                                           ; $5313: $00
    nop                                           ; $5314: $00
    nop                                           ; $5315: $00
    nop                                           ; $5316: $00
    nop                                           ; $5317: $00
    nop                                           ; $5318: $00
    nop                                           ; $5319: $00
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
    nop                                           ; $532e: $00
    nop                                           ; $532f: $00
    nop                                           ; $5330: $00
    nop                                           ; $5331: $00
    nop                                           ; $5332: $00
    nop                                           ; $5333: $00
    nop                                           ; $5334: $00
    nop                                           ; $5335: $00
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    nop                                           ; $5338: $00
    nop                                           ; $5339: $00
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
    nop                                           ; $534e: $00
    nop                                           ; $534f: $00
    nop                                           ; $5350: $00
    nop                                           ; $5351: $00
    nop                                           ; $5352: $00
    nop                                           ; $5353: $00
    nop                                           ; $5354: $00
    nop                                           ; $5355: $00
    nop                                           ; $5356: $00
    nop                                           ; $5357: $00
    nop                                           ; $5358: $00
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
    nop                                           ; $536e: $00
    nop                                           ; $536f: $00
    nop                                           ; $5370: $00
    nop                                           ; $5371: $00
    nop                                           ; $5372: $00
    nop                                           ; $5373: $00
    nop                                           ; $5374: $00
    nop                                           ; $5375: $00
    nop                                           ; $5376: $00
    nop                                           ; $5377: $00
    nop                                           ; $5378: $00
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
    nop                                           ; $538e: $00
    nop                                           ; $538f: $00
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    nop                                           ; $5394: $00
    nop                                           ; $5395: $00
    nop                                           ; $5396: $00
    nop                                           ; $5397: $00
    nop                                           ; $5398: $00
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
    dec l                                         ; $5800: $2d
    dec l                                         ; $5801: $2d
    dec l                                         ; $5802: $2d
    dec l                                         ; $5803: $2d
    nop                                           ; $5804: $00
    ld bc, $0302                                  ; $5805: $01 $02 $03
    inc b                                         ; $5808: $04
    dec b                                         ; $5809: $05
    ld b, $07                                     ; $580a: $06 $07
    ld [$0009], sp                                ; $580c: $08 $09 $00
    ld bc, $2d2d                                  ; $580f: $01 $2d $2d
    dec l                                         ; $5812: $2d
    dec l                                         ; $5813: $2d
    rst RST_38                                    ; $5814: $ff
    rst RST_38                                    ; $5815: $ff
    rst RST_38                                    ; $5816: $ff
    rst RST_38                                    ; $5817: $ff
    rst RST_38                                    ; $5818: $ff
    rst RST_38                                    ; $5819: $ff
    rst RST_38                                    ; $581a: $ff
    rst RST_38                                    ; $581b: $ff
    rst RST_38                                    ; $581c: $ff
    rst RST_38                                    ; $581d: $ff
    rst RST_38                                    ; $581e: $ff
    rst RST_38                                    ; $581f: $ff
    ld a, [de]                                    ; $5820: $1a
    ld a, [de]                                    ; $5821: $1a
    ld a, [de]                                    ; $5822: $1a
    ld a, [de]                                    ; $5823: $1a
    db $10                                        ; $5824: $10
    ld de, $1312                                  ; $5825: $11 $12 $13
    inc d                                         ; $5828: $14
    dec d                                         ; $5829: $15

jr_00b_582a:
    ld d, $17                                     ; $582a: $16 $17
    jr jr_00b_5847                                ; $582c: $18 $19

    db $10                                        ; $582e: $10
    ld de, $1a1a                                  ; $582f: $11 $1a $1a
    ld a, [de]                                    ; $5832: $1a
    ld a, [de]                                    ; $5833: $1a
    rst RST_38                                    ; $5834: $ff
    rst RST_38                                    ; $5835: $ff
    rst RST_38                                    ; $5836: $ff
    rst RST_38                                    ; $5837: $ff
    rst RST_38                                    ; $5838: $ff
    rst RST_38                                    ; $5839: $ff
    rst RST_38                                    ; $583a: $ff
    rst RST_38                                    ; $583b: $ff
    rst RST_38                                    ; $583c: $ff
    rst RST_38                                    ; $583d: $ff
    rst RST_38                                    ; $583e: $ff
    rst RST_38                                    ; $583f: $ff
    dec h                                         ; $5840: $25
    dec h                                         ; $5841: $25
    dec h                                         ; $5842: $25
    dec h                                         ; $5843: $25
    dec h                                         ; $5844: $25
    dec h                                         ; $5845: $25
    dec h                                         ; $5846: $25

jr_00b_5847:
    dec h                                         ; $5847: $25
    dec h                                         ; $5848: $25
    dec h                                         ; $5849: $25
    dec h                                         ; $584a: $25
    dec h                                         ; $584b: $25
    dec h                                         ; $584c: $25
    dec h                                         ; $584d: $25
    dec h                                         ; $584e: $25
    dec h                                         ; $584f: $25
    dec h                                         ; $5850: $25
    dec h                                         ; $5851: $25
    dec h                                         ; $5852: $25
    dec h                                         ; $5853: $25
    rst RST_38                                    ; $5854: $ff
    rst RST_38                                    ; $5855: $ff
    rst RST_38                                    ; $5856: $ff
    rst RST_38                                    ; $5857: $ff
    rst RST_38                                    ; $5858: $ff
    rst RST_38                                    ; $5859: $ff
    rst RST_38                                    ; $585a: $ff
    rst RST_38                                    ; $585b: $ff
    rst RST_38                                    ; $585c: $ff
    rst RST_38                                    ; $585d: $ff
    rst RST_38                                    ; $585e: $ff
    rst RST_38                                    ; $585f: $ff
    ld h, $85                                     ; $5860: $26 $85
    add [hl]                                      ; $5862: $86
    add [hl]                                      ; $5863: $86
    add [hl]                                      ; $5864: $86
    add [hl]                                      ; $5865: $86
    add [hl]                                      ; $5866: $86
    add [hl]                                      ; $5867: $86
    add [hl]                                      ; $5868: $86
    add [hl]                                      ; $5869: $86
    add [hl]                                      ; $586a: $86
    add [hl]                                      ; $586b: $86
    add [hl]                                      ; $586c: $86
    add [hl]                                      ; $586d: $86
    add [hl]                                      ; $586e: $86
    add [hl]                                      ; $586f: $86
    add [hl]                                      ; $5870: $86
    add [hl]                                      ; $5871: $86
    add a                                         ; $5872: $87
    ld h, $ff                                     ; $5873: $26 $ff
    rst RST_38                                    ; $5875: $ff
    rst RST_38                                    ; $5876: $ff
    rst RST_38                                    ; $5877: $ff
    rst RST_38                                    ; $5878: $ff
    rst RST_38                                    ; $5879: $ff
    rst RST_38                                    ; $587a: $ff
    rst RST_38                                    ; $587b: $ff
    rst RST_38                                    ; $587c: $ff
    rst RST_38                                    ; $587d: $ff
    rst RST_38                                    ; $587e: $ff
    rst RST_38                                    ; $587f: $ff
    daa                                           ; $5880: $27
    adc b                                         ; $5881: $88
    sub b                                         ; $5882: $90
    sub c                                         ; $5883: $91
    sub d                                         ; $5884: $92
    sub e                                         ; $5885: $93
    sub h                                         ; $5886: $94
    sub l                                         ; $5887: $95
    sub [hl]                                      ; $5888: $96
    sub a                                         ; $5889: $97
    sbc b                                         ; $588a: $98
    sbc c                                         ; $588b: $99
    sbc d                                         ; $588c: $9a
    sbc e                                         ; $588d: $9b
    sbc h                                         ; $588e: $9c
    sbc l                                         ; $588f: $9d
    sbc [hl]                                      ; $5890: $9e
    sbc a                                         ; $5891: $9f
    adc c                                         ; $5892: $89
    daa                                           ; $5893: $27
    rst RST_38                                    ; $5894: $ff
    rst RST_38                                    ; $5895: $ff
    rst RST_38                                    ; $5896: $ff
    rst RST_38                                    ; $5897: $ff
    rst RST_38                                    ; $5898: $ff
    rst RST_38                                    ; $5899: $ff
    rst RST_38                                    ; $589a: $ff
    rst RST_38                                    ; $589b: $ff
    rst RST_38                                    ; $589c: $ff
    rst RST_38                                    ; $589d: $ff
    rst RST_38                                    ; $589e: $ff
    rst RST_38                                    ; $589f: $ff
    jr z, jr_00b_582a                             ; $58a0: $28 $88

    and b                                         ; $58a2: $a0
    and c                                         ; $58a3: $a1
    and d                                         ; $58a4: $a2
    and e                                         ; $58a5: $a3
    and h                                         ; $58a6: $a4
    and l                                         ; $58a7: $a5
    and [hl]                                      ; $58a8: $a6
    and a                                         ; $58a9: $a7
    xor b                                         ; $58aa: $a8
    xor c                                         ; $58ab: $a9
    xor d                                         ; $58ac: $aa
    xor e                                         ; $58ad: $ab
    xor h                                         ; $58ae: $ac
    xor l                                         ; $58af: $ad
    xor [hl]                                      ; $58b0: $ae
    xor a                                         ; $58b1: $af
    adc c                                         ; $58b2: $89
    jr z, @+$01                                   ; $58b3: $28 $ff

    rst RST_38                                    ; $58b5: $ff
    rst RST_38                                    ; $58b6: $ff
    rst RST_38                                    ; $58b7: $ff
    rst RST_38                                    ; $58b8: $ff
    rst RST_38                                    ; $58b9: $ff
    rst RST_38                                    ; $58ba: $ff
    rst RST_38                                    ; $58bb: $ff
    rst RST_38                                    ; $58bc: $ff
    rst RST_38                                    ; $58bd: $ff
    rst RST_38                                    ; $58be: $ff
    rst RST_38                                    ; $58bf: $ff
    add hl, hl                                    ; $58c0: $29
    adc b                                         ; $58c1: $88
    or b                                          ; $58c2: $b0
    or c                                          ; $58c3: $b1
    or d                                          ; $58c4: $b2
    or e                                          ; $58c5: $b3
    or h                                          ; $58c6: $b4
    or l                                          ; $58c7: $b5
    or [hl]                                       ; $58c8: $b6
    or a                                          ; $58c9: $b7
    cp b                                          ; $58ca: $b8
    cp c                                          ; $58cb: $b9
    cp d                                          ; $58cc: $ba
    cp e                                          ; $58cd: $bb
    cp h                                          ; $58ce: $bc
    cp l                                          ; $58cf: $bd
    cp [hl]                                       ; $58d0: $be
    cp a                                          ; $58d1: $bf
    adc c                                         ; $58d2: $89
    add hl, hl                                    ; $58d3: $29
    rst RST_38                                    ; $58d4: $ff
    rst RST_38                                    ; $58d5: $ff
    rst RST_38                                    ; $58d6: $ff
    rst RST_38                                    ; $58d7: $ff
    rst RST_38                                    ; $58d8: $ff
    rst RST_38                                    ; $58d9: $ff
    rst RST_38                                    ; $58da: $ff
    rst RST_38                                    ; $58db: $ff
    rst RST_38                                    ; $58dc: $ff
    rst RST_38                                    ; $58dd: $ff
    rst RST_38                                    ; $58de: $ff
    rst RST_38                                    ; $58df: $ff
    ld a, [hl+]                                   ; $58e0: $2a
    adc b                                         ; $58e1: $88
    ret nz                                        ; $58e2: $c0

    pop bc                                        ; $58e3: $c1
    jp nz, $c4c3                                  ; $58e4: $c2 $c3 $c4

    push bc                                       ; $58e7: $c5
    add $c7                                       ; $58e8: $c6 $c7
    ret z                                         ; $58ea: $c8

    ret                                           ; $58eb: $c9


    jp z, $cccb                                   ; $58ec: $ca $cb $cc

    call $cfce                                    ; $58ef: $cd $ce $cf
    adc c                                         ; $58f2: $89
    ld a, [hl+]                                   ; $58f3: $2a
    rst RST_38                                    ; $58f4: $ff
    rst RST_38                                    ; $58f5: $ff
    rst RST_38                                    ; $58f6: $ff
    rst RST_38                                    ; $58f7: $ff
    rst RST_38                                    ; $58f8: $ff
    rst RST_38                                    ; $58f9: $ff
    rst RST_38                                    ; $58fa: $ff
    rst RST_38                                    ; $58fb: $ff
    rst RST_38                                    ; $58fc: $ff
    rst RST_38                                    ; $58fd: $ff
    rst RST_38                                    ; $58fe: $ff
    rst RST_38                                    ; $58ff: $ff
    dec hl                                        ; $5900: $2b
    adc b                                         ; $5901: $88
    ret nc                                        ; $5902: $d0

    pop de                                        ; $5903: $d1
    jp nc, $d4d3                                  ; $5904: $d2 $d3 $d4

    push de                                       ; $5907: $d5
    sub $d7                                       ; $5908: $d6 $d7
    ret c                                         ; $590a: $d8

    reti                                          ; $590b: $d9


    jp c, $dcdb                                   ; $590c: $da $db $dc

    db $dd                                        ; $590f: $dd
    sbc $df                                       ; $5910: $de $df
    adc c                                         ; $5912: $89
    dec hl                                        ; $5913: $2b
    rst RST_38                                    ; $5914: $ff
    rst RST_38                                    ; $5915: $ff
    rst RST_38                                    ; $5916: $ff
    rst RST_38                                    ; $5917: $ff
    rst RST_38                                    ; $5918: $ff
    rst RST_38                                    ; $5919: $ff
    rst RST_38                                    ; $591a: $ff
    rst RST_38                                    ; $591b: $ff
    rst RST_38                                    ; $591c: $ff
    rst RST_38                                    ; $591d: $ff
    rst RST_38                                    ; $591e: $ff
    rst RST_38                                    ; $591f: $ff
    inc l                                         ; $5920: $2c
    adc b                                         ; $5921: $88
    ldh [$ffe1], a                                ; $5922: $e0 $e1
    ldh [c], a                                    ; $5924: $e2
    db $e3                                        ; $5925: $e3
    db $e4                                        ; $5926: $e4
    push hl                                       ; $5927: $e5
    and $e7                                       ; $5928: $e6 $e7
    add sp, -$17                                  ; $592a: $e8 $e9
    ld [$eceb], a                                 ; $592c: $ea $eb $ec
    db $ed                                        ; $592f: $ed
    xor $ef                                       ; $5930: $ee $ef
    adc c                                         ; $5932: $89
    inc l                                         ; $5933: $2c
    rst RST_38                                    ; $5934: $ff
    rst RST_38                                    ; $5935: $ff
    rst RST_38                                    ; $5936: $ff
    rst RST_38                                    ; $5937: $ff
    rst RST_38                                    ; $5938: $ff
    rst RST_38                                    ; $5939: $ff
    rst RST_38                                    ; $593a: $ff
    rst RST_38                                    ; $593b: $ff
    rst RST_38                                    ; $593c: $ff
    rst RST_38                                    ; $593d: $ff
    rst RST_38                                    ; $593e: $ff
    rst RST_38                                    ; $593f: $ff
    dec l                                         ; $5940: $2d
    adc b                                         ; $5941: $88
    ldh a, [$fff1]                                ; $5942: $f0 $f1
    ldh a, [c]                                    ; $5944: $f2
    di                                            ; $5945: $f3
    db $f4                                        ; $5946: $f4
    push af                                       ; $5947: $f5
    or $f7                                        ; $5948: $f6 $f7
    ld hl, sp-$07                                 ; $594a: $f8 $f9
    ld a, [$fcfb]                                 ; $594c: $fa $fb $fc
    db $fd                                        ; $594f: $fd
    cp $ff                                        ; $5950: $fe $ff
    adc c                                         ; $5952: $89
    dec l                                         ; $5953: $2d
    rst RST_38                                    ; $5954: $ff
    rst RST_38                                    ; $5955: $ff
    rst RST_38                                    ; $5956: $ff
    rst RST_38                                    ; $5957: $ff
    rst RST_38                                    ; $5958: $ff
    rst RST_38                                    ; $5959: $ff
    rst RST_38                                    ; $595a: $ff
    rst RST_38                                    ; $595b: $ff
    rst RST_38                                    ; $595c: $ff
    rst RST_38                                    ; $595d: $ff
    rst RST_38                                    ; $595e: $ff
    rst RST_38                                    ; $595f: $ff
    dec l                                         ; $5960: $2d
    adc d                                         ; $5961: $8a
    adc e                                         ; $5962: $8b
    adc e                                         ; $5963: $8b
    adc e                                         ; $5964: $8b
    adc e                                         ; $5965: $8b
    adc e                                         ; $5966: $8b
    adc e                                         ; $5967: $8b
    adc e                                         ; $5968: $8b
    adc e                                         ; $5969: $8b
    adc e                                         ; $596a: $8b
    adc e                                         ; $596b: $8b
    adc e                                         ; $596c: $8b
    adc e                                         ; $596d: $8b
    adc e                                         ; $596e: $8b
    adc e                                         ; $596f: $8b
    adc e                                         ; $5970: $8b
    adc e                                         ; $5971: $8b
    adc h                                         ; $5972: $8c
    ld l, $ff                                     ; $5973: $2e $ff
    rst RST_38                                    ; $5975: $ff
    rst RST_38                                    ; $5976: $ff
    rst RST_38                                    ; $5977: $ff
    rst RST_38                                    ; $5978: $ff
    rst RST_38                                    ; $5979: $ff
    rst RST_38                                    ; $597a: $ff
    rst RST_38                                    ; $597b: $ff
    rst RST_38                                    ; $597c: $ff
    rst RST_38                                    ; $597d: $ff
    rst RST_38                                    ; $597e: $ff
    rst RST_38                                    ; $597f: $ff
    jr c, jr_00b_59bb                             ; $5980: $38 $39

    ld a, [hl-]                                   ; $5982: $3a
    dec l                                         ; $5983: $2d
    ld [hl], e                                    ; $5984: $73
    dec l                                         ; $5985: $2d
    ld [hl], b                                    ; $5986: $70
    ld [hl], c                                    ; $5987: $71
    ld [hl], e                                    ; $5988: $73
    ld [hl], e                                    ; $5989: $73
    ld [hl], h                                    ; $598a: $74
    dec l                                         ; $598b: $2d
    dec l                                         ; $598c: $2d
    ld [hl], l                                    ; $598d: $75
    halt                                          ; $598e: $76
    ld [hl], a                                    ; $598f: $77
    dec l                                         ; $5990: $2d
    dec l                                         ; $5991: $2d
    ld l, $2f                                     ; $5992: $2e $2f
    rst RST_38                                    ; $5994: $ff
    rst RST_38                                    ; $5995: $ff
    rst RST_38                                    ; $5996: $ff
    rst RST_38                                    ; $5997: $ff
    rst RST_38                                    ; $5998: $ff
    rst RST_38                                    ; $5999: $ff
    rst RST_38                                    ; $599a: $ff
    rst RST_38                                    ; $599b: $ff
    rst RST_38                                    ; $599c: $ff
    rst RST_38                                    ; $599d: $ff
    rst RST_38                                    ; $599e: $ff
    rst RST_38                                    ; $599f: $ff
    ld c, b                                       ; $59a0: $48
    ld c, c                                       ; $59a1: $49
    ld c, d                                       ; $59a2: $4a
    dec l                                         ; $59a3: $2d
    dec l                                         ; $59a4: $2d
    dec l                                         ; $59a5: $2d
    dec l                                         ; $59a6: $2d
    dec l                                         ; $59a7: $2d
    dec l                                         ; $59a8: $2d
    dec l                                         ; $59a9: $2d
    dec l                                         ; $59aa: $2d
    dec l                                         ; $59ab: $2d
    dec l                                         ; $59ac: $2d
    ld a, h                                       ; $59ad: $7c
    ld l, [hl]                                    ; $59ae: $6e
    dec l                                         ; $59af: $2d
    dec l                                         ; $59b0: $2d
    ld l, $2f                                     ; $59b1: $2e $2f
    cpl                                           ; $59b3: $2f
    rst RST_38                                    ; $59b4: $ff
    rst RST_38                                    ; $59b5: $ff
    rst RST_38                                    ; $59b6: $ff
    rst RST_38                                    ; $59b7: $ff
    rst RST_38                                    ; $59b8: $ff
    rst RST_38                                    ; $59b9: $ff
    rst RST_38                                    ; $59ba: $ff

jr_00b_59bb:
    rst RST_38                                    ; $59bb: $ff
    rst RST_38                                    ; $59bc: $ff
    rst RST_38                                    ; $59bd: $ff
    rst RST_38                                    ; $59be: $ff
    rst RST_38                                    ; $59bf: $ff
    ld e, b                                       ; $59c0: $58
    ld e, c                                       ; $59c1: $59
    ld e, d                                       ; $59c2: $5a
    dec sp                                        ; $59c3: $3b
    inc a                                         ; $59c4: $3c
    dec a                                         ; $59c5: $3d
    ld a, $1b                                     ; $59c6: $3e $1b
    inc e                                         ; $59c8: $1c
    dec e                                         ; $59c9: $1d
    ld e, $2d                                     ; $59ca: $1e $2d
    add b                                         ; $59cc: $80
    add c                                         ; $59cd: $81
    add d                                         ; $59ce: $82
    add e                                         ; $59cf: $83
    add h                                         ; $59d0: $84
    cpl                                           ; $59d1: $2f
    cpl                                           ; $59d2: $2f
    cpl                                           ; $59d3: $2f
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
    add hl, hl                                    ; $59e0: $29
    ld l, b                                       ; $59e1: $68
    ld l, c                                       ; $59e2: $69
    ld c, e                                       ; $59e3: $4b
    ld c, h                                       ; $59e4: $4c
    ld c, l                                       ; $59e5: $4d
    ld c, [hl]                                    ; $59e6: $4e
    ld c, a                                       ; $59e7: $4f
    ld l, d                                       ; $59e8: $6a
    ld l, e                                       ; $59e9: $6b
    ccf                                           ; $59ea: $3f
    ld a, h                                       ; $59eb: $7c
    ld l, l                                       ; $59ec: $6d
    ld l, l                                       ; $59ed: $6d
    ld l, a                                       ; $59ee: $6f
    ld a, a                                       ; $59ef: $7f
    cpl                                           ; $59f0: $2f
    cpl                                           ; $59f1: $2f
    cpl                                           ; $59f2: $2f
    cpl                                           ; $59f3: $2f
    rst RST_38                                    ; $59f4: $ff
    rst RST_38                                    ; $59f5: $ff
    rst RST_38                                    ; $59f6: $ff
    rst RST_38                                    ; $59f7: $ff
    rst RST_38                                    ; $59f8: $ff
    rst RST_38                                    ; $59f9: $ff
    rst RST_38                                    ; $59fa: $ff
    rst RST_38                                    ; $59fb: $ff
    rst RST_38                                    ; $59fc: $ff
    rst RST_38                                    ; $59fd: $ff
    rst RST_38                                    ; $59fe: $ff
    rst RST_38                                    ; $59ff: $ff
    add hl, hl                                    ; $5a00: $29
    ld a, b                                       ; $5a01: $78
    ld l, c                                       ; $5a02: $69
    ld e, e                                       ; $5a03: $5b
    ld e, h                                       ; $5a04: $5c
    ld e, l                                       ; $5a05: $5d
    ld e, [hl]                                    ; $5a06: $5e
    ld e, a                                       ; $5a07: $5f
    ld a, d                                       ; $5a08: $7a
    ld a, e                                       ; $5a09: $7b
    ld l, h                                       ; $5a0a: $6c
    ld a, l                                       ; $5a0b: $7d
    ld a, [hl]                                    ; $5a0c: $7e
    ld l, l                                       ; $5a0d: $6d
    ld a, a                                       ; $5a0e: $7f
    cpl                                           ; $5a0f: $2f
    cpl                                           ; $5a10: $2f
    cpl                                           ; $5a11: $2f
    cpl                                           ; $5a12: $2f
    cpl                                           ; $5a13: $2f
    rst RST_38                                    ; $5a14: $ff
    rst RST_38                                    ; $5a15: $ff
    rst RST_38                                    ; $5a16: $ff
    rst RST_38                                    ; $5a17: $ff
    rst RST_38                                    ; $5a18: $ff
    rst RST_38                                    ; $5a19: $ff
    rst RST_38                                    ; $5a1a: $ff
    rst RST_38                                    ; $5a1b: $ff
    rst RST_38                                    ; $5a1c: $ff
    rst RST_38                                    ; $5a1d: $ff
    rst RST_38                                    ; $5a1e: $ff
    rst RST_38                                    ; $5a1f: $ff
    ld a, c                                       ; $5a20: $79
    ld a, c                                       ; $5a21: $79
    ld a, c                                       ; $5a22: $79
    ld a, c                                       ; $5a23: $79
    ld a, c                                       ; $5a24: $79
    ld a, c                                       ; $5a25: $79
    ld a, c                                       ; $5a26: $79
    ld a, c                                       ; $5a27: $79
    ld a, c                                       ; $5a28: $79
    ld a, c                                       ; $5a29: $79
    ld a, c                                       ; $5a2a: $79
    ld a, c                                       ; $5a2b: $79
    ld a, c                                       ; $5a2c: $79
    ld a, c                                       ; $5a2d: $79
    ld a, c                                       ; $5a2e: $79
    ld a, c                                       ; $5a2f: $79
    ld a, c                                       ; $5a30: $79
    ld a, c                                       ; $5a31: $79
    ld a, c                                       ; $5a32: $79
    ld a, c                                       ; $5a33: $79
    rst RST_38                                    ; $5a34: $ff
    rst RST_38                                    ; $5a35: $ff
    rst RST_38                                    ; $5a36: $ff
    rst RST_38                                    ; $5a37: $ff
    rst RST_38                                    ; $5a38: $ff
    rst RST_38                                    ; $5a39: $ff
    rst RST_38                                    ; $5a3a: $ff
    rst RST_38                                    ; $5a3b: $ff
    rst RST_38                                    ; $5a3c: $ff
    rst RST_38                                    ; $5a3d: $ff
    rst RST_38                                    ; $5a3e: $ff
    rst RST_38                                    ; $5a3f: $ff
    rst RST_38                                    ; $5a40: $ff
    rst RST_38                                    ; $5a41: $ff
    rst RST_38                                    ; $5a42: $ff
    rst RST_38                                    ; $5a43: $ff
    rst RST_38                                    ; $5a44: $ff
    rst RST_38                                    ; $5a45: $ff
    rst RST_38                                    ; $5a46: $ff
    rst RST_38                                    ; $5a47: $ff
    rst RST_38                                    ; $5a48: $ff
    rst RST_38                                    ; $5a49: $ff
    rst RST_38                                    ; $5a4a: $ff
    rst RST_38                                    ; $5a4b: $ff
    rst RST_38                                    ; $5a4c: $ff
    rst RST_38                                    ; $5a4d: $ff
    rst RST_38                                    ; $5a4e: $ff
    rst RST_38                                    ; $5a4f: $ff
    rst RST_38                                    ; $5a50: $ff
    rst RST_38                                    ; $5a51: $ff
    rst RST_38                                    ; $5a52: $ff
    rst RST_38                                    ; $5a53: $ff
    rst RST_38                                    ; $5a54: $ff
    rst RST_38                                    ; $5a55: $ff
    rst RST_38                                    ; $5a56: $ff
    rst RST_38                                    ; $5a57: $ff
    rst RST_38                                    ; $5a58: $ff
    rst RST_38                                    ; $5a59: $ff
    rst RST_38                                    ; $5a5a: $ff
    rst RST_38                                    ; $5a5b: $ff
    rst RST_38                                    ; $5a5c: $ff
    rst RST_38                                    ; $5a5d: $ff
    rst RST_38                                    ; $5a5e: $ff
    rst RST_38                                    ; $5a5f: $ff
    rst RST_38                                    ; $5a60: $ff
    rst RST_38                                    ; $5a61: $ff
    rst RST_38                                    ; $5a62: $ff
    rst RST_38                                    ; $5a63: $ff
    rst RST_38                                    ; $5a64: $ff
    rst RST_38                                    ; $5a65: $ff
    rst RST_38                                    ; $5a66: $ff
    rst RST_38                                    ; $5a67: $ff
    rst RST_38                                    ; $5a68: $ff
    rst RST_38                                    ; $5a69: $ff
    rst RST_38                                    ; $5a6a: $ff
    rst RST_38                                    ; $5a6b: $ff
    rst RST_38                                    ; $5a6c: $ff
    rst RST_38                                    ; $5a6d: $ff
    rst RST_38                                    ; $5a6e: $ff
    rst RST_38                                    ; $5a6f: $ff
    rst RST_38                                    ; $5a70: $ff
    rst RST_38                                    ; $5a71: $ff
    rst RST_38                                    ; $5a72: $ff
    rst RST_38                                    ; $5a73: $ff
    rst RST_38                                    ; $5a74: $ff
    rst RST_38                                    ; $5a75: $ff
    rst RST_38                                    ; $5a76: $ff
    rst RST_38                                    ; $5a77: $ff
    rst RST_38                                    ; $5a78: $ff
    rst RST_38                                    ; $5a79: $ff
    rst RST_38                                    ; $5a7a: $ff
    rst RST_38                                    ; $5a7b: $ff
    rst RST_38                                    ; $5a7c: $ff
    rst RST_38                                    ; $5a7d: $ff
    rst RST_38                                    ; $5a7e: $ff
    rst RST_38                                    ; $5a7f: $ff
    rst RST_38                                    ; $5a80: $ff
    rst RST_38                                    ; $5a81: $ff
    rst RST_38                                    ; $5a82: $ff
    rst RST_38                                    ; $5a83: $ff
    rst RST_38                                    ; $5a84: $ff
    rst RST_38                                    ; $5a85: $ff
    rst RST_38                                    ; $5a86: $ff
    rst RST_38                                    ; $5a87: $ff
    rst RST_38                                    ; $5a88: $ff
    rst RST_38                                    ; $5a89: $ff
    rst RST_38                                    ; $5a8a: $ff
    rst RST_38                                    ; $5a8b: $ff
    rst RST_38                                    ; $5a8c: $ff
    rst RST_38                                    ; $5a8d: $ff
    rst RST_38                                    ; $5a8e: $ff
    rst RST_38                                    ; $5a8f: $ff
    rst RST_38                                    ; $5a90: $ff
    rst RST_38                                    ; $5a91: $ff
    rst RST_38                                    ; $5a92: $ff
    rst RST_38                                    ; $5a93: $ff
    rst RST_38                                    ; $5a94: $ff
    rst RST_38                                    ; $5a95: $ff
    rst RST_38                                    ; $5a96: $ff
    rst RST_38                                    ; $5a97: $ff
    rst RST_38                                    ; $5a98: $ff
    rst RST_38                                    ; $5a99: $ff
    rst RST_38                                    ; $5a9a: $ff
    rst RST_38                                    ; $5a9b: $ff
    rst RST_38                                    ; $5a9c: $ff
    rst RST_38                                    ; $5a9d: $ff
    rst RST_38                                    ; $5a9e: $ff
    rst RST_38                                    ; $5a9f: $ff
    rst RST_38                                    ; $5aa0: $ff
    rst RST_38                                    ; $5aa1: $ff
    rst RST_38                                    ; $5aa2: $ff
    rst RST_38                                    ; $5aa3: $ff
    rst RST_38                                    ; $5aa4: $ff
    rst RST_38                                    ; $5aa5: $ff
    rst RST_38                                    ; $5aa6: $ff
    rst RST_38                                    ; $5aa7: $ff
    rst RST_38                                    ; $5aa8: $ff
    rst RST_38                                    ; $5aa9: $ff
    rst RST_38                                    ; $5aaa: $ff
    rst RST_38                                    ; $5aab: $ff
    rst RST_38                                    ; $5aac: $ff
    rst RST_38                                    ; $5aad: $ff
    rst RST_38                                    ; $5aae: $ff
    rst RST_38                                    ; $5aaf: $ff
    rst RST_38                                    ; $5ab0: $ff
    rst RST_38                                    ; $5ab1: $ff
    rst RST_38                                    ; $5ab2: $ff
    rst RST_38                                    ; $5ab3: $ff
    rst RST_38                                    ; $5ab4: $ff
    rst RST_38                                    ; $5ab5: $ff
    rst RST_38                                    ; $5ab6: $ff
    rst RST_38                                    ; $5ab7: $ff
    rst RST_38                                    ; $5ab8: $ff
    rst RST_38                                    ; $5ab9: $ff
    rst RST_38                                    ; $5aba: $ff
    rst RST_38                                    ; $5abb: $ff
    rst RST_38                                    ; $5abc: $ff
    rst RST_38                                    ; $5abd: $ff
    rst RST_38                                    ; $5abe: $ff
    rst RST_38                                    ; $5abf: $ff
    rst RST_38                                    ; $5ac0: $ff
    rst RST_38                                    ; $5ac1: $ff
    rst RST_38                                    ; $5ac2: $ff
    rst RST_38                                    ; $5ac3: $ff
    rst RST_38                                    ; $5ac4: $ff
    rst RST_38                                    ; $5ac5: $ff
    rst RST_38                                    ; $5ac6: $ff
    rst RST_38                                    ; $5ac7: $ff
    rst RST_38                                    ; $5ac8: $ff
    rst RST_38                                    ; $5ac9: $ff
    rst RST_38                                    ; $5aca: $ff
    rst RST_38                                    ; $5acb: $ff
    rst RST_38                                    ; $5acc: $ff
    rst RST_38                                    ; $5acd: $ff
    rst RST_38                                    ; $5ace: $ff
    rst RST_38                                    ; $5acf: $ff
    rst RST_38                                    ; $5ad0: $ff
    rst RST_38                                    ; $5ad1: $ff
    rst RST_38                                    ; $5ad2: $ff
    rst RST_38                                    ; $5ad3: $ff
    rst RST_38                                    ; $5ad4: $ff
    rst RST_38                                    ; $5ad5: $ff
    rst RST_38                                    ; $5ad6: $ff
    rst RST_38                                    ; $5ad7: $ff
    rst RST_38                                    ; $5ad8: $ff
    rst RST_38                                    ; $5ad9: $ff
    rst RST_38                                    ; $5ada: $ff
    rst RST_38                                    ; $5adb: $ff
    rst RST_38                                    ; $5adc: $ff
    rst RST_38                                    ; $5add: $ff
    rst RST_38                                    ; $5ade: $ff
    rst RST_38                                    ; $5adf: $ff
    rst RST_38                                    ; $5ae0: $ff
    rst RST_38                                    ; $5ae1: $ff
    rst RST_38                                    ; $5ae2: $ff
    rst RST_38                                    ; $5ae3: $ff
    rst RST_38                                    ; $5ae4: $ff
    rst RST_38                                    ; $5ae5: $ff
    rst RST_38                                    ; $5ae6: $ff
    rst RST_38                                    ; $5ae7: $ff
    rst RST_38                                    ; $5ae8: $ff
    rst RST_38                                    ; $5ae9: $ff
    rst RST_38                                    ; $5aea: $ff
    rst RST_38                                    ; $5aeb: $ff
    rst RST_38                                    ; $5aec: $ff
    rst RST_38                                    ; $5aed: $ff
    rst RST_38                                    ; $5aee: $ff
    rst RST_38                                    ; $5aef: $ff
    rst RST_38                                    ; $5af0: $ff
    rst RST_38                                    ; $5af1: $ff
    rst RST_38                                    ; $5af2: $ff
    rst RST_38                                    ; $5af3: $ff
    rst RST_38                                    ; $5af4: $ff
    rst RST_38                                    ; $5af5: $ff
    rst RST_38                                    ; $5af6: $ff
    rst RST_38                                    ; $5af7: $ff
    rst RST_38                                    ; $5af8: $ff
    rst RST_38                                    ; $5af9: $ff
    rst RST_38                                    ; $5afa: $ff
    rst RST_38                                    ; $5afb: $ff
    rst RST_38                                    ; $5afc: $ff
    rst RST_38                                    ; $5afd: $ff
    rst RST_38                                    ; $5afe: $ff
    rst RST_38                                    ; $5aff: $ff
    rst RST_38                                    ; $5b00: $ff
    rst RST_38                                    ; $5b01: $ff
    rst RST_38                                    ; $5b02: $ff
    rst RST_38                                    ; $5b03: $ff
    rst RST_38                                    ; $5b04: $ff
    rst RST_38                                    ; $5b05: $ff
    rst RST_38                                    ; $5b06: $ff
    rst RST_38                                    ; $5b07: $ff
    rst RST_38                                    ; $5b08: $ff
    rst RST_38                                    ; $5b09: $ff
    rst RST_38                                    ; $5b0a: $ff
    rst RST_38                                    ; $5b0b: $ff
    rst RST_38                                    ; $5b0c: $ff
    rst RST_38                                    ; $5b0d: $ff
    rst RST_38                                    ; $5b0e: $ff
    rst RST_38                                    ; $5b0f: $ff
    rst RST_38                                    ; $5b10: $ff
    rst RST_38                                    ; $5b11: $ff
    rst RST_38                                    ; $5b12: $ff
    rst RST_38                                    ; $5b13: $ff
    rst RST_38                                    ; $5b14: $ff
    rst RST_38                                    ; $5b15: $ff
    rst RST_38                                    ; $5b16: $ff
    rst RST_38                                    ; $5b17: $ff
    rst RST_38                                    ; $5b18: $ff
    rst RST_38                                    ; $5b19: $ff
    rst RST_38                                    ; $5b1a: $ff
    rst RST_38                                    ; $5b1b: $ff
    rst RST_38                                    ; $5b1c: $ff
    rst RST_38                                    ; $5b1d: $ff
    rst RST_38                                    ; $5b1e: $ff
    rst RST_38                                    ; $5b1f: $ff
    rst RST_38                                    ; $5b20: $ff
    rst RST_38                                    ; $5b21: $ff
    rst RST_38                                    ; $5b22: $ff
    rst RST_38                                    ; $5b23: $ff
    rst RST_38                                    ; $5b24: $ff
    rst RST_38                                    ; $5b25: $ff
    rst RST_38                                    ; $5b26: $ff
    rst RST_38                                    ; $5b27: $ff
    rst RST_38                                    ; $5b28: $ff
    rst RST_38                                    ; $5b29: $ff
    rst RST_38                                    ; $5b2a: $ff
    rst RST_38                                    ; $5b2b: $ff
    rst RST_38                                    ; $5b2c: $ff
    rst RST_38                                    ; $5b2d: $ff
    rst RST_38                                    ; $5b2e: $ff
    rst RST_38                                    ; $5b2f: $ff
    rst RST_38                                    ; $5b30: $ff
    rst RST_38                                    ; $5b31: $ff
    rst RST_38                                    ; $5b32: $ff
    rst RST_38                                    ; $5b33: $ff
    rst RST_38                                    ; $5b34: $ff
    rst RST_38                                    ; $5b35: $ff
    rst RST_38                                    ; $5b36: $ff
    rst RST_38                                    ; $5b37: $ff
    rst RST_38                                    ; $5b38: $ff
    rst RST_38                                    ; $5b39: $ff
    rst RST_38                                    ; $5b3a: $ff
    rst RST_38                                    ; $5b3b: $ff
    rst RST_38                                    ; $5b3c: $ff
    rst RST_38                                    ; $5b3d: $ff
    rst RST_38                                    ; $5b3e: $ff
    rst RST_38                                    ; $5b3f: $ff
    rst RST_38                                    ; $5b40: $ff
    rst RST_38                                    ; $5b41: $ff
    rst RST_38                                    ; $5b42: $ff
    rst RST_38                                    ; $5b43: $ff
    rst RST_38                                    ; $5b44: $ff
    rst RST_38                                    ; $5b45: $ff
    rst RST_38                                    ; $5b46: $ff
    rst RST_38                                    ; $5b47: $ff
    rst RST_38                                    ; $5b48: $ff
    rst RST_38                                    ; $5b49: $ff
    rst RST_38                                    ; $5b4a: $ff
    rst RST_38                                    ; $5b4b: $ff
    rst RST_38                                    ; $5b4c: $ff
    rst RST_38                                    ; $5b4d: $ff
    rst RST_38                                    ; $5b4e: $ff
    rst RST_38                                    ; $5b4f: $ff
    rst RST_38                                    ; $5b50: $ff
    rst RST_38                                    ; $5b51: $ff
    rst RST_38                                    ; $5b52: $ff
    rst RST_38                                    ; $5b53: $ff
    rst RST_38                                    ; $5b54: $ff
    rst RST_38                                    ; $5b55: $ff
    rst RST_38                                    ; $5b56: $ff
    rst RST_38                                    ; $5b57: $ff
    rst RST_38                                    ; $5b58: $ff
    rst RST_38                                    ; $5b59: $ff
    rst RST_38                                    ; $5b5a: $ff
    rst RST_38                                    ; $5b5b: $ff
    rst RST_38                                    ; $5b5c: $ff
    rst RST_38                                    ; $5b5d: $ff
    rst RST_38                                    ; $5b5e: $ff
    rst RST_38                                    ; $5b5f: $ff
    rst RST_38                                    ; $5b60: $ff
    rst RST_38                                    ; $5b61: $ff
    rst RST_38                                    ; $5b62: $ff
    rst RST_38                                    ; $5b63: $ff
    rst RST_38                                    ; $5b64: $ff
    rst RST_38                                    ; $5b65: $ff
    rst RST_38                                    ; $5b66: $ff
    rst RST_38                                    ; $5b67: $ff
    rst RST_38                                    ; $5b68: $ff
    rst RST_38                                    ; $5b69: $ff
    rst RST_38                                    ; $5b6a: $ff
    rst RST_38                                    ; $5b6b: $ff
    rst RST_38                                    ; $5b6c: $ff
    rst RST_38                                    ; $5b6d: $ff
    rst RST_38                                    ; $5b6e: $ff
    rst RST_38                                    ; $5b6f: $ff
    rst RST_38                                    ; $5b70: $ff
    rst RST_38                                    ; $5b71: $ff
    rst RST_38                                    ; $5b72: $ff
    rst RST_38                                    ; $5b73: $ff
    rst RST_38                                    ; $5b74: $ff
    rst RST_38                                    ; $5b75: $ff
    rst RST_38                                    ; $5b76: $ff
    rst RST_38                                    ; $5b77: $ff
    rst RST_38                                    ; $5b78: $ff
    rst RST_38                                    ; $5b79: $ff
    rst RST_38                                    ; $5b7a: $ff
    rst RST_38                                    ; $5b7b: $ff
    rst RST_38                                    ; $5b7c: $ff
    rst RST_38                                    ; $5b7d: $ff
    rst RST_38                                    ; $5b7e: $ff
    rst RST_38                                    ; $5b7f: $ff
    rst RST_38                                    ; $5b80: $ff
    rst RST_38                                    ; $5b81: $ff
    rst RST_38                                    ; $5b82: $ff
    rst RST_38                                    ; $5b83: $ff
    rst RST_38                                    ; $5b84: $ff
    rst RST_38                                    ; $5b85: $ff
    rst RST_38                                    ; $5b86: $ff
    rst RST_38                                    ; $5b87: $ff
    rst RST_38                                    ; $5b88: $ff
    rst RST_38                                    ; $5b89: $ff
    rst RST_38                                    ; $5b8a: $ff
    rst RST_38                                    ; $5b8b: $ff
    rst RST_38                                    ; $5b8c: $ff
    rst RST_38                                    ; $5b8d: $ff
    rst RST_38                                    ; $5b8e: $ff
    rst RST_38                                    ; $5b8f: $ff
    rst RST_38                                    ; $5b90: $ff
    rst RST_38                                    ; $5b91: $ff
    rst RST_38                                    ; $5b92: $ff
    rst RST_38                                    ; $5b93: $ff
    rst RST_38                                    ; $5b94: $ff
    rst RST_38                                    ; $5b95: $ff
    rst RST_38                                    ; $5b96: $ff
    rst RST_38                                    ; $5b97: $ff
    rst RST_38                                    ; $5b98: $ff
    rst RST_38                                    ; $5b99: $ff
    rst RST_38                                    ; $5b9a: $ff
    rst RST_38                                    ; $5b9b: $ff
    rst RST_38                                    ; $5b9c: $ff
    rst RST_38                                    ; $5b9d: $ff
    rst RST_38                                    ; $5b9e: $ff
    rst RST_38                                    ; $5b9f: $ff
    rst RST_38                                    ; $5ba0: $ff
    rst RST_38                                    ; $5ba1: $ff
    rst RST_38                                    ; $5ba2: $ff
    rst RST_38                                    ; $5ba3: $ff
    rst RST_38                                    ; $5ba4: $ff
    rst RST_38                                    ; $5ba5: $ff
    rst RST_38                                    ; $5ba6: $ff
    rst RST_38                                    ; $5ba7: $ff
    rst RST_38                                    ; $5ba8: $ff
    rst RST_38                                    ; $5ba9: $ff
    rst RST_38                                    ; $5baa: $ff
    rst RST_38                                    ; $5bab: $ff
    rst RST_38                                    ; $5bac: $ff
    rst RST_38                                    ; $5bad: $ff
    rst RST_38                                    ; $5bae: $ff
    rst RST_38                                    ; $5baf: $ff
    rst RST_38                                    ; $5bb0: $ff
    rst RST_38                                    ; $5bb1: $ff
    rst RST_38                                    ; $5bb2: $ff
    rst RST_38                                    ; $5bb3: $ff
    rst RST_38                                    ; $5bb4: $ff
    rst RST_38                                    ; $5bb5: $ff
    rst RST_38                                    ; $5bb6: $ff
    rst RST_38                                    ; $5bb7: $ff
    rst RST_38                                    ; $5bb8: $ff
    rst RST_38                                    ; $5bb9: $ff
    rst RST_38                                    ; $5bba: $ff
    rst RST_38                                    ; $5bbb: $ff
    rst RST_38                                    ; $5bbc: $ff
    rst RST_38                                    ; $5bbd: $ff
    rst RST_38                                    ; $5bbe: $ff
    rst RST_38                                    ; $5bbf: $ff
    rst RST_38                                    ; $5bc0: $ff
    rst RST_38                                    ; $5bc1: $ff
    rst RST_38                                    ; $5bc2: $ff
    rst RST_38                                    ; $5bc3: $ff
    rst RST_38                                    ; $5bc4: $ff
    rst RST_38                                    ; $5bc5: $ff
    rst RST_38                                    ; $5bc6: $ff
    rst RST_38                                    ; $5bc7: $ff
    rst RST_38                                    ; $5bc8: $ff
    rst RST_38                                    ; $5bc9: $ff
    rst RST_38                                    ; $5bca: $ff
    rst RST_38                                    ; $5bcb: $ff
    rst RST_38                                    ; $5bcc: $ff
    rst RST_38                                    ; $5bcd: $ff
    rst RST_38                                    ; $5bce: $ff
    rst RST_38                                    ; $5bcf: $ff
    rst RST_38                                    ; $5bd0: $ff
    rst RST_38                                    ; $5bd1: $ff
    rst RST_38                                    ; $5bd2: $ff
    rst RST_38                                    ; $5bd3: $ff
    rst RST_38                                    ; $5bd4: $ff
    rst RST_38                                    ; $5bd5: $ff
    rst RST_38                                    ; $5bd6: $ff
    rst RST_38                                    ; $5bd7: $ff
    rst RST_38                                    ; $5bd8: $ff
    rst RST_38                                    ; $5bd9: $ff
    rst RST_38                                    ; $5bda: $ff
    rst RST_38                                    ; $5bdb: $ff
    rst RST_38                                    ; $5bdc: $ff
    rst RST_38                                    ; $5bdd: $ff
    rst RST_38                                    ; $5bde: $ff
    rst RST_38                                    ; $5bdf: $ff
    rst RST_38                                    ; $5be0: $ff
    rst RST_38                                    ; $5be1: $ff
    rst RST_38                                    ; $5be2: $ff
    rst RST_38                                    ; $5be3: $ff
    rst RST_38                                    ; $5be4: $ff
    rst RST_38                                    ; $5be5: $ff
    rst RST_38                                    ; $5be6: $ff
    rst RST_38                                    ; $5be7: $ff
    rst RST_38                                    ; $5be8: $ff
    rst RST_38                                    ; $5be9: $ff
    rst RST_38                                    ; $5bea: $ff
    rst RST_38                                    ; $5beb: $ff
    rst RST_38                                    ; $5bec: $ff
    rst RST_38                                    ; $5bed: $ff
    rst RST_38                                    ; $5bee: $ff
    rst RST_38                                    ; $5bef: $ff
    rst RST_38                                    ; $5bf0: $ff
    rst RST_38                                    ; $5bf1: $ff
    rst RST_38                                    ; $5bf2: $ff
    rst RST_38                                    ; $5bf3: $ff
    rst RST_38                                    ; $5bf4: $ff
    rst RST_38                                    ; $5bf5: $ff
    rst RST_38                                    ; $5bf6: $ff
    rst RST_38                                    ; $5bf7: $ff
    rst RST_38                                    ; $5bf8: $ff
    rst RST_38                                    ; $5bf9: $ff
    rst RST_38                                    ; $5bfa: $ff
    rst RST_38                                    ; $5bfb: $ff
    rst RST_38                                    ; $5bfc: $ff
    rst RST_38                                    ; $5bfd: $ff
    rst RST_38                                    ; $5bfe: $ff
    rst RST_38                                    ; $5bff: $ff
    and a                                         ; $5c00: $a7
    add l                                         ; $5c01: $85
    add [hl]                                      ; $5c02: $86
    add a                                         ; $5c03: $87
    adc b                                         ; $5c04: $88
    and [hl]                                      ; $5c05: $a6
    and [hl]                                      ; $5c06: $a6
    and [hl]                                      ; $5c07: $a6
    and [hl]                                      ; $5c08: $a6
    and [hl]                                      ; $5c09: $a6
    and [hl]                                      ; $5c0a: $a6
    and [hl]                                      ; $5c0b: $a6
    and [hl]                                      ; $5c0c: $a6
    and [hl]                                      ; $5c0d: $a6
    and [hl]                                      ; $5c0e: $a6
    and [hl]                                      ; $5c0f: $a6
    and [hl]                                      ; $5c10: $a6
    and [hl]                                      ; $5c11: $a6
    and [hl]                                      ; $5c12: $a6
    and a                                         ; $5c13: $a7
    rst RST_38                                    ; $5c14: $ff
    rst RST_38                                    ; $5c15: $ff
    rst RST_38                                    ; $5c16: $ff
    rst RST_38                                    ; $5c17: $ff
    rst RST_38                                    ; $5c18: $ff
    rst RST_38                                    ; $5c19: $ff
    rst RST_38                                    ; $5c1a: $ff
    rst RST_38                                    ; $5c1b: $ff
    rst RST_38                                    ; $5c1c: $ff
    rst RST_38                                    ; $5c1d: $ff
    rst RST_38                                    ; $5c1e: $ff
    rst RST_38                                    ; $5c1f: $ff
    and a                                         ; $5c20: $a7
    adc c                                         ; $5c21: $89
    adc d                                         ; $5c22: $8a
    adc e                                         ; $5c23: $8b
    adc h                                         ; $5c24: $8c
    adc l                                         ; $5c25: $8d
    ld a, [hl]                                    ; $5c26: $7e
    nop                                           ; $5c27: $00
    ld bc, $0302                                  ; $5c28: $01 $02 $03
    inc b                                         ; $5c2b: $04
    dec b                                         ; $5c2c: $05
    ld b, $07                                     ; $5c2d: $06 $07
    ld [$0a09], sp                                ; $5c2f: $08 $09 $0a
    dec bc                                        ; $5c32: $0b
    and a                                         ; $5c33: $a7
    rst RST_38                                    ; $5c34: $ff
    rst RST_38                                    ; $5c35: $ff
    rst RST_38                                    ; $5c36: $ff
    rst RST_38                                    ; $5c37: $ff
    rst RST_38                                    ; $5c38: $ff
    rst RST_38                                    ; $5c39: $ff
    rst RST_38                                    ; $5c3a: $ff
    rst RST_38                                    ; $5c3b: $ff
    rst RST_38                                    ; $5c3c: $ff
    rst RST_38                                    ; $5c3d: $ff
    rst RST_38                                    ; $5c3e: $ff
    rst RST_38                                    ; $5c3f: $ff
    and a                                         ; $5c40: $a7
    adc [hl]                                      ; $5c41: $8e
    adc a                                         ; $5c42: $8f
    sub b                                         ; $5c43: $90
    sub c                                         ; $5c44: $91
    sub d                                         ; $5c45: $92
    sub e                                         ; $5c46: $93
    db $10                                        ; $5c47: $10
    ld de, $1312                                  ; $5c48: $11 $12 $13
    inc d                                         ; $5c4b: $14
    dec d                                         ; $5c4c: $15
    ld d, $17                                     ; $5c4d: $16 $17
    jr jr_00b_5c6a                                ; $5c4f: $18 $19

    ld a, [de]                                    ; $5c51: $1a
    dec de                                        ; $5c52: $1b
    and a                                         ; $5c53: $a7
    rst RST_38                                    ; $5c54: $ff
    rst RST_38                                    ; $5c55: $ff
    rst RST_38                                    ; $5c56: $ff
    rst RST_38                                    ; $5c57: $ff
    rst RST_38                                    ; $5c58: $ff
    rst RST_38                                    ; $5c59: $ff
    rst RST_38                                    ; $5c5a: $ff
    rst RST_38                                    ; $5c5b: $ff
    rst RST_38                                    ; $5c5c: $ff
    rst RST_38                                    ; $5c5d: $ff
    rst RST_38                                    ; $5c5e: $ff
    rst RST_38                                    ; $5c5f: $ff
    and a                                         ; $5c60: $a7
    sub h                                         ; $5c61: $94
    sub l                                         ; $5c62: $95
    sub [hl]                                      ; $5c63: $96
    sub a                                         ; $5c64: $97
    sbc b                                         ; $5c65: $98
    sbc c                                         ; $5c66: $99
    jr nz, jr_00b_5c8a                            ; $5c67: $20 $21

    ld [hl+], a                                   ; $5c69: $22

jr_00b_5c6a:
    inc hl                                        ; $5c6a: $23
    inc h                                         ; $5c6b: $24
    dec h                                         ; $5c6c: $25
    ld h, $27                                     ; $5c6d: $26 $27
    jr z, jr_00b_5c9a                             ; $5c6f: $28 $29

    ld a, [hl+]                                   ; $5c71: $2a
    dec hl                                        ; $5c72: $2b
    and a                                         ; $5c73: $a7
    rst RST_38                                    ; $5c74: $ff
    rst RST_38                                    ; $5c75: $ff
    rst RST_38                                    ; $5c76: $ff
    rst RST_38                                    ; $5c77: $ff
    rst RST_38                                    ; $5c78: $ff
    rst RST_38                                    ; $5c79: $ff
    rst RST_38                                    ; $5c7a: $ff
    rst RST_38                                    ; $5c7b: $ff
    rst RST_38                                    ; $5c7c: $ff
    rst RST_38                                    ; $5c7d: $ff
    rst RST_38                                    ; $5c7e: $ff
    rst RST_38                                    ; $5c7f: $ff
    and a                                         ; $5c80: $a7
    sbc d                                         ; $5c81: $9a
    sbc e                                         ; $5c82: $9b
    sbc h                                         ; $5c83: $9c
    sbc l                                         ; $5c84: $9d
    sbc [hl]                                      ; $5c85: $9e
    sbc a                                         ; $5c86: $9f
    jr nc, jr_00b_5cba                            ; $5c87: $30 $31

    ld [hl-], a                                   ; $5c89: $32

jr_00b_5c8a:
    inc sp                                        ; $5c8a: $33
    inc [hl]                                      ; $5c8b: $34
    dec [hl]                                      ; $5c8c: $35
    ld [hl], $37                                  ; $5c8d: $36 $37
    jr c, @+$3b                                   ; $5c8f: $38 $39

    ld a, [hl-]                                   ; $5c91: $3a
    dec sp                                        ; $5c92: $3b
    and a                                         ; $5c93: $a7
    rst RST_38                                    ; $5c94: $ff
    rst RST_38                                    ; $5c95: $ff
    rst RST_38                                    ; $5c96: $ff
    rst RST_38                                    ; $5c97: $ff
    rst RST_38                                    ; $5c98: $ff
    rst RST_38                                    ; $5c99: $ff

jr_00b_5c9a:
    rst RST_38                                    ; $5c9a: $ff
    rst RST_38                                    ; $5c9b: $ff
    rst RST_38                                    ; $5c9c: $ff
    rst RST_38                                    ; $5c9d: $ff
    rst RST_38                                    ; $5c9e: $ff
    rst RST_38                                    ; $5c9f: $ff
    and a                                         ; $5ca0: $a7
    and b                                         ; $5ca1: $a0
    and c                                         ; $5ca2: $a1
    and d                                         ; $5ca3: $a2
    and e                                         ; $5ca4: $a3
    and h                                         ; $5ca5: $a4
    and l                                         ; $5ca6: $a5
    ld b, b                                       ; $5ca7: $40
    ld b, c                                       ; $5ca8: $41
    ld b, d                                       ; $5ca9: $42
    ld b, e                                       ; $5caa: $43
    ld b, h                                       ; $5cab: $44
    ld b, l                                       ; $5cac: $45
    ld b, [hl]                                    ; $5cad: $46
    ld b, a                                       ; $5cae: $47
    ld c, b                                       ; $5caf: $48
    ld c, c                                       ; $5cb0: $49
    ld c, d                                       ; $5cb1: $4a
    ld c, e                                       ; $5cb2: $4b
    and a                                         ; $5cb3: $a7
    rst RST_38                                    ; $5cb4: $ff
    rst RST_38                                    ; $5cb5: $ff
    rst RST_38                                    ; $5cb6: $ff
    rst RST_38                                    ; $5cb7: $ff
    rst RST_38                                    ; $5cb8: $ff
    rst RST_38                                    ; $5cb9: $ff

jr_00b_5cba:
    rst RST_38                                    ; $5cba: $ff
    rst RST_38                                    ; $5cbb: $ff
    rst RST_38                                    ; $5cbc: $ff
    rst RST_38                                    ; $5cbd: $ff
    rst RST_38                                    ; $5cbe: $ff
    rst RST_38                                    ; $5cbf: $ff
    and a                                         ; $5cc0: $a7
    xor b                                         ; $5cc1: $a8
    xor c                                         ; $5cc2: $a9
    ret nz                                        ; $5cc3: $c0

    pop bc                                        ; $5cc4: $c1
    jp nz, $c4c3                                  ; $5cc5: $c2 $c3 $c4

    push bc                                       ; $5cc8: $c5
    add $c7                                       ; $5cc9: $c6 $c7
    ret z                                         ; $5ccb: $c8

    ret                                           ; $5ccc: $c9


    jp z, $cccb                                   ; $5ccd: $ca $cb $cc

    call $cfce                                    ; $5cd0: $cd $ce $cf
    and a                                         ; $5cd3: $a7
    rst RST_38                                    ; $5cd4: $ff
    rst RST_38                                    ; $5cd5: $ff
    rst RST_38                                    ; $5cd6: $ff
    rst RST_38                                    ; $5cd7: $ff
    rst RST_38                                    ; $5cd8: $ff
    rst RST_38                                    ; $5cd9: $ff
    rst RST_38                                    ; $5cda: $ff
    rst RST_38                                    ; $5cdb: $ff
    rst RST_38                                    ; $5cdc: $ff
    rst RST_38                                    ; $5cdd: $ff
    rst RST_38                                    ; $5cde: $ff
    rst RST_38                                    ; $5cdf: $ff
    and a                                         ; $5ce0: $a7
    xor d                                         ; $5ce1: $aa
    xor e                                         ; $5ce2: $ab
    ret nc                                        ; $5ce3: $d0

    pop de                                        ; $5ce4: $d1
    jp nc, $d4d3                                  ; $5ce5: $d2 $d3 $d4

    push de                                       ; $5ce8: $d5
    sub $d7                                       ; $5ce9: $d6 $d7
    ret c                                         ; $5ceb: $d8

    reti                                          ; $5cec: $d9


    jp c, $dcdb                                   ; $5ced: $da $db $dc

    db $dd                                        ; $5cf0: $dd
    sbc $df                                       ; $5cf1: $de $df
    and a                                         ; $5cf3: $a7
    rst RST_38                                    ; $5cf4: $ff
    rst RST_38                                    ; $5cf5: $ff
    rst RST_38                                    ; $5cf6: $ff
    rst RST_38                                    ; $5cf7: $ff
    rst RST_38                                    ; $5cf8: $ff
    rst RST_38                                    ; $5cf9: $ff
    rst RST_38                                    ; $5cfa: $ff
    rst RST_38                                    ; $5cfb: $ff
    rst RST_38                                    ; $5cfc: $ff
    rst RST_38                                    ; $5cfd: $ff
    rst RST_38                                    ; $5cfe: $ff
    rst RST_38                                    ; $5cff: $ff
    and a                                         ; $5d00: $a7
    xor h                                         ; $5d01: $ac
    xor l                                         ; $5d02: $ad
    ldh [$ffe1], a                                ; $5d03: $e0 $e1
    ldh [c], a                                    ; $5d05: $e2
    db $e3                                        ; $5d06: $e3
    db $e4                                        ; $5d07: $e4
    push hl                                       ; $5d08: $e5
    and $e7                                       ; $5d09: $e6 $e7
    add sp, -$17                                  ; $5d0b: $e8 $e9
    ld [$eceb], a                                 ; $5d0d: $ea $eb $ec
    db $ed                                        ; $5d10: $ed
    xor $ef                                       ; $5d11: $ee $ef
    and a                                         ; $5d13: $a7
    rst RST_38                                    ; $5d14: $ff
    rst RST_38                                    ; $5d15: $ff
    rst RST_38                                    ; $5d16: $ff
    rst RST_38                                    ; $5d17: $ff
    rst RST_38                                    ; $5d18: $ff
    rst RST_38                                    ; $5d19: $ff
    rst RST_38                                    ; $5d1a: $ff
    rst RST_38                                    ; $5d1b: $ff
    rst RST_38                                    ; $5d1c: $ff
    rst RST_38                                    ; $5d1d: $ff
    rst RST_38                                    ; $5d1e: $ff
    rst RST_38                                    ; $5d1f: $ff
    and a                                         ; $5d20: $a7
    xor [hl]                                      ; $5d21: $ae
    xor a                                         ; $5d22: $af
    ldh a, [$fff1]                                ; $5d23: $f0 $f1
    ldh a, [c]                                    ; $5d25: $f2
    di                                            ; $5d26: $f3
    db $f4                                        ; $5d27: $f4
    push af                                       ; $5d28: $f5
    or $f7                                        ; $5d29: $f6 $f7
    ld hl, sp-$07                                 ; $5d2b: $f8 $f9
    ld a, [$fcfb]                                 ; $5d2d: $fa $fb $fc
    db $fd                                        ; $5d30: $fd
    cp $ff                                        ; $5d31: $fe $ff
    and a                                         ; $5d33: $a7
    rst RST_38                                    ; $5d34: $ff
    rst RST_38                                    ; $5d35: $ff
    rst RST_38                                    ; $5d36: $ff
    rst RST_38                                    ; $5d37: $ff
    rst RST_38                                    ; $5d38: $ff
    rst RST_38                                    ; $5d39: $ff
    rst RST_38                                    ; $5d3a: $ff
    rst RST_38                                    ; $5d3b: $ff
    rst RST_38                                    ; $5d3c: $ff
    rst RST_38                                    ; $5d3d: $ff
    rst RST_38                                    ; $5d3e: $ff
    rst RST_38                                    ; $5d3f: $ff
    and a                                         ; $5d40: $a7
    or b                                          ; $5d41: $b0
    or c                                          ; $5d42: $b1
    nop                                           ; $5d43: $00
    ld bc, $0302                                  ; $5d44: $01 $02 $03
    inc b                                         ; $5d47: $04
    dec b                                         ; $5d48: $05
    ld b, $07                                     ; $5d49: $06 $07
    ld [$0a09], sp                                ; $5d4b: $08 $09 $0a
    dec bc                                        ; $5d4e: $0b
    inc c                                         ; $5d4f: $0c
    dec c                                         ; $5d50: $0d
    ld c, $0f                                     ; $5d51: $0e $0f
    and a                                         ; $5d53: $a7
    rst RST_38                                    ; $5d54: $ff
    rst RST_38                                    ; $5d55: $ff
    rst RST_38                                    ; $5d56: $ff
    rst RST_38                                    ; $5d57: $ff
    rst RST_38                                    ; $5d58: $ff
    rst RST_38                                    ; $5d59: $ff
    rst RST_38                                    ; $5d5a: $ff
    rst RST_38                                    ; $5d5b: $ff
    rst RST_38                                    ; $5d5c: $ff
    rst RST_38                                    ; $5d5d: $ff
    rst RST_38                                    ; $5d5e: $ff
    rst RST_38                                    ; $5d5f: $ff
    and a                                         ; $5d60: $a7
    or d                                          ; $5d61: $b2
    or e                                          ; $5d62: $b3
    db $10                                        ; $5d63: $10
    ld de, $1312                                  ; $5d64: $11 $12 $13
    inc d                                         ; $5d67: $14
    dec d                                         ; $5d68: $15
    ld d, $17                                     ; $5d69: $16 $17
    jr jr_00b_5d86                                ; $5d6b: $18 $19

    ld a, [de]                                    ; $5d6d: $1a
    dec de                                        ; $5d6e: $1b
    inc e                                         ; $5d6f: $1c
    dec e                                         ; $5d70: $1d
    ld e, $1f                                     ; $5d71: $1e $1f
    and a                                         ; $5d73: $a7
    rst RST_38                                    ; $5d74: $ff
    rst RST_38                                    ; $5d75: $ff
    rst RST_38                                    ; $5d76: $ff
    rst RST_38                                    ; $5d77: $ff
    rst RST_38                                    ; $5d78: $ff
    rst RST_38                                    ; $5d79: $ff
    rst RST_38                                    ; $5d7a: $ff
    rst RST_38                                    ; $5d7b: $ff
    rst RST_38                                    ; $5d7c: $ff
    rst RST_38                                    ; $5d7d: $ff
    rst RST_38                                    ; $5d7e: $ff
    rst RST_38                                    ; $5d7f: $ff
    and a                                         ; $5d80: $a7
    or h                                          ; $5d81: $b4
    or l                                          ; $5d82: $b5
    jr nz, jr_00b_5da6                            ; $5d83: $20 $21

    ld [hl+], a                                   ; $5d85: $22

jr_00b_5d86:
    inc hl                                        ; $5d86: $23
    inc h                                         ; $5d87: $24
    dec h                                         ; $5d88: $25
    ld h, $27                                     ; $5d89: $26 $27
    jr z, jr_00b_5db6                             ; $5d8b: $28 $29

    ld a, [hl+]                                   ; $5d8d: $2a
    dec hl                                        ; $5d8e: $2b
    inc l                                         ; $5d8f: $2c
    dec l                                         ; $5d90: $2d
    ld l, $2f                                     ; $5d91: $2e $2f
    and a                                         ; $5d93: $a7
    rst RST_38                                    ; $5d94: $ff
    rst RST_38                                    ; $5d95: $ff
    rst RST_38                                    ; $5d96: $ff
    rst RST_38                                    ; $5d97: $ff
    rst RST_38                                    ; $5d98: $ff
    rst RST_38                                    ; $5d99: $ff
    rst RST_38                                    ; $5d9a: $ff
    rst RST_38                                    ; $5d9b: $ff
    rst RST_38                                    ; $5d9c: $ff
    rst RST_38                                    ; $5d9d: $ff
    rst RST_38                                    ; $5d9e: $ff
    rst RST_38                                    ; $5d9f: $ff
    and a                                         ; $5da0: $a7
    or [hl]                                       ; $5da1: $b6
    or a                                          ; $5da2: $b7
    jr nc, jr_00b_5dd6                            ; $5da3: $30 $31

    ld [hl-], a                                   ; $5da5: $32

jr_00b_5da6:
    inc sp                                        ; $5da6: $33
    inc [hl]                                      ; $5da7: $34
    dec [hl]                                      ; $5da8: $35
    ld [hl], $37                                  ; $5da9: $36 $37
    jr c, jr_00b_5de6                             ; $5dab: $38 $39

    ld a, [hl-]                                   ; $5dad: $3a
    dec sp                                        ; $5dae: $3b
    inc a                                         ; $5daf: $3c
    dec a                                         ; $5db0: $3d
    ld a, $3f                                     ; $5db1: $3e $3f
    and a                                         ; $5db3: $a7
    rst RST_38                                    ; $5db4: $ff
    rst RST_38                                    ; $5db5: $ff

jr_00b_5db6:
    rst RST_38                                    ; $5db6: $ff
    rst RST_38                                    ; $5db7: $ff
    rst RST_38                                    ; $5db8: $ff
    rst RST_38                                    ; $5db9: $ff
    rst RST_38                                    ; $5dba: $ff
    rst RST_38                                    ; $5dbb: $ff
    rst RST_38                                    ; $5dbc: $ff
    rst RST_38                                    ; $5dbd: $ff
    rst RST_38                                    ; $5dbe: $ff
    rst RST_38                                    ; $5dbf: $ff
    and a                                         ; $5dc0: $a7
    cp b                                          ; $5dc1: $b8
    cp c                                          ; $5dc2: $b9
    ld b, b                                       ; $5dc3: $40
    ld b, c                                       ; $5dc4: $41
    ld b, d                                       ; $5dc5: $42
    ld b, e                                       ; $5dc6: $43
    ld b, h                                       ; $5dc7: $44
    ld b, l                                       ; $5dc8: $45
    ld b, [hl]                                    ; $5dc9: $46
    ld b, a                                       ; $5dca: $47
    ld c, b                                       ; $5dcb: $48
    ld c, c                                       ; $5dcc: $49
    ld c, d                                       ; $5dcd: $4a
    ld c, e                                       ; $5dce: $4b
    ld c, h                                       ; $5dcf: $4c
    ld c, l                                       ; $5dd0: $4d
    ld c, [hl]                                    ; $5dd1: $4e
    ld c, a                                       ; $5dd2: $4f
    and a                                         ; $5dd3: $a7
    rst RST_38                                    ; $5dd4: $ff
    rst RST_38                                    ; $5dd5: $ff

jr_00b_5dd6:
    rst RST_38                                    ; $5dd6: $ff
    rst RST_38                                    ; $5dd7: $ff
    rst RST_38                                    ; $5dd8: $ff
    rst RST_38                                    ; $5dd9: $ff
    rst RST_38                                    ; $5dda: $ff
    rst RST_38                                    ; $5ddb: $ff
    rst RST_38                                    ; $5ddc: $ff
    rst RST_38                                    ; $5ddd: $ff
    rst RST_38                                    ; $5dde: $ff
    rst RST_38                                    ; $5ddf: $ff
    and a                                         ; $5de0: $a7
    cp d                                          ; $5de1: $ba
    cp e                                          ; $5de2: $bb
    ld d, b                                       ; $5de3: $50
    ld d, c                                       ; $5de4: $51
    ld d, d                                       ; $5de5: $52

jr_00b_5de6:
    ld d, e                                       ; $5de6: $53
    ld d, h                                       ; $5de7: $54
    ld d, l                                       ; $5de8: $55
    ld d, [hl]                                    ; $5de9: $56
    ld d, a                                       ; $5dea: $57
    ld e, b                                       ; $5deb: $58
    ld e, c                                       ; $5dec: $59
    ld e, d                                       ; $5ded: $5a
    ld e, e                                       ; $5dee: $5b
    ld e, h                                       ; $5def: $5c
    ld e, l                                       ; $5df0: $5d
    ld e, [hl]                                    ; $5df1: $5e
    ld e, a                                       ; $5df2: $5f
    and a                                         ; $5df3: $a7
    rst RST_38                                    ; $5df4: $ff
    rst RST_38                                    ; $5df5: $ff
    rst RST_38                                    ; $5df6: $ff
    rst RST_38                                    ; $5df7: $ff
    rst RST_38                                    ; $5df8: $ff
    rst RST_38                                    ; $5df9: $ff
    rst RST_38                                    ; $5dfa: $ff
    rst RST_38                                    ; $5dfb: $ff
    rst RST_38                                    ; $5dfc: $ff
    rst RST_38                                    ; $5dfd: $ff
    rst RST_38                                    ; $5dfe: $ff
    rst RST_38                                    ; $5dff: $ff
    and a                                         ; $5e00: $a7
    cp h                                          ; $5e01: $bc
    cp l                                          ; $5e02: $bd
    ld h, b                                       ; $5e03: $60
    ld h, c                                       ; $5e04: $61
    ld h, d                                       ; $5e05: $62
    ld h, e                                       ; $5e06: $63
    ld h, h                                       ; $5e07: $64
    ld h, l                                       ; $5e08: $65
    ld h, [hl]                                    ; $5e09: $66
    ld h, a                                       ; $5e0a: $67
    ld l, b                                       ; $5e0b: $68
    ld l, c                                       ; $5e0c: $69
    ld l, d                                       ; $5e0d: $6a
    ld l, e                                       ; $5e0e: $6b
    ld l, h                                       ; $5e0f: $6c
    ld l, l                                       ; $5e10: $6d
    ld l, [hl]                                    ; $5e11: $6e
    ld l, a                                       ; $5e12: $6f
    and a                                         ; $5e13: $a7
    rst RST_38                                    ; $5e14: $ff
    rst RST_38                                    ; $5e15: $ff
    rst RST_38                                    ; $5e16: $ff
    rst RST_38                                    ; $5e17: $ff
    rst RST_38                                    ; $5e18: $ff
    rst RST_38                                    ; $5e19: $ff
    rst RST_38                                    ; $5e1a: $ff
    rst RST_38                                    ; $5e1b: $ff
    rst RST_38                                    ; $5e1c: $ff
    rst RST_38                                    ; $5e1d: $ff
    rst RST_38                                    ; $5e1e: $ff
    rst RST_38                                    ; $5e1f: $ff
    and a                                         ; $5e20: $a7
    cp [hl]                                       ; $5e21: $be
    cp a                                          ; $5e22: $bf
    ld [hl], b                                    ; $5e23: $70
    ld [hl], c                                    ; $5e24: $71
    ld [hl], d                                    ; $5e25: $72
    ld [hl], e                                    ; $5e26: $73
    ld [hl], h                                    ; $5e27: $74
    ld [hl], l                                    ; $5e28: $75
    halt                                          ; $5e29: $76
    ld [hl], a                                    ; $5e2a: $77
    ld a, b                                       ; $5e2b: $78
    ld a, c                                       ; $5e2c: $79
    ld a, d                                       ; $5e2d: $7a
    ld a, e                                       ; $5e2e: $7b
    ld a, h                                       ; $5e2f: $7c
    ld a, l                                       ; $5e30: $7d
    ld a, [hl]                                    ; $5e31: $7e
    ld a, a                                       ; $5e32: $7f
    and a                                         ; $5e33: $a7
    rst RST_38                                    ; $5e34: $ff
    rst RST_38                                    ; $5e35: $ff
    rst RST_38                                    ; $5e36: $ff
    rst RST_38                                    ; $5e37: $ff
    rst RST_38                                    ; $5e38: $ff
    rst RST_38                                    ; $5e39: $ff
    rst RST_38                                    ; $5e3a: $ff
    rst RST_38                                    ; $5e3b: $ff
    rst RST_38                                    ; $5e3c: $ff
    rst RST_38                                    ; $5e3d: $ff
    rst RST_38                                    ; $5e3e: $ff
    rst RST_38                                    ; $5e3f: $ff
    rst RST_38                                    ; $5e40: $ff
    db $10                                        ; $5e41: $10
    ld de, $1312                                  ; $5e42: $11 $12 $13
    inc d                                         ; $5e45: $14
    dec d                                         ; $5e46: $15
    ld d, $17                                     ; $5e47: $16 $17
    jr jr_00b_5e64                                ; $5e49: $18 $19

    ld a, [de]                                    ; $5e4b: $1a
    dec de                                        ; $5e4c: $1b
    inc e                                         ; $5e4d: $1c
    dec e                                         ; $5e4e: $1d
    ld e, $1f                                     ; $5e4f: $1e $1f
    rst RST_38                                    ; $5e51: $ff
    rst RST_38                                    ; $5e52: $ff
    rst RST_38                                    ; $5e53: $ff
    rst RST_38                                    ; $5e54: $ff
    rst RST_38                                    ; $5e55: $ff
    rst RST_38                                    ; $5e56: $ff
    rst RST_38                                    ; $5e57: $ff
    rst RST_38                                    ; $5e58: $ff
    rst RST_38                                    ; $5e59: $ff
    rst RST_38                                    ; $5e5a: $ff
    rst RST_38                                    ; $5e5b: $ff
    rst RST_38                                    ; $5e5c: $ff
    rst RST_38                                    ; $5e5d: $ff
    rst RST_38                                    ; $5e5e: $ff
    rst RST_38                                    ; $5e5f: $ff
    rst RST_38                                    ; $5e60: $ff
    jr nz, jr_00b_5e84                            ; $5e61: $20 $21

    ld [hl+], a                                   ; $5e63: $22

jr_00b_5e64:
    inc hl                                        ; $5e64: $23
    inc h                                         ; $5e65: $24
    dec h                                         ; $5e66: $25
    ld h, $27                                     ; $5e67: $26 $27
    jr z, jr_00b_5e94                             ; $5e69: $28 $29

    ld a, [hl+]                                   ; $5e6b: $2a
    dec hl                                        ; $5e6c: $2b
    inc l                                         ; $5e6d: $2c
    dec l                                         ; $5e6e: $2d
    ld l, $2f                                     ; $5e6f: $2e $2f
    rst RST_38                                    ; $5e71: $ff
    rst RST_38                                    ; $5e72: $ff
    rst RST_38                                    ; $5e73: $ff
    rst RST_38                                    ; $5e74: $ff
    rst RST_38                                    ; $5e75: $ff
    rst RST_38                                    ; $5e76: $ff
    rst RST_38                                    ; $5e77: $ff
    rst RST_38                                    ; $5e78: $ff
    rst RST_38                                    ; $5e79: $ff
    rst RST_38                                    ; $5e7a: $ff
    rst RST_38                                    ; $5e7b: $ff
    rst RST_38                                    ; $5e7c: $ff
    rst RST_38                                    ; $5e7d: $ff
    rst RST_38                                    ; $5e7e: $ff
    rst RST_38                                    ; $5e7f: $ff
    rst RST_38                                    ; $5e80: $ff
    rst RST_38                                    ; $5e81: $ff
    rst RST_38                                    ; $5e82: $ff
    rst RST_38                                    ; $5e83: $ff

jr_00b_5e84:
    rst RST_38                                    ; $5e84: $ff
    rst RST_38                                    ; $5e85: $ff
    rst RST_38                                    ; $5e86: $ff
    rst RST_38                                    ; $5e87: $ff
    rst RST_38                                    ; $5e88: $ff
    rst RST_38                                    ; $5e89: $ff
    rst RST_38                                    ; $5e8a: $ff
    rst RST_38                                    ; $5e8b: $ff
    rst RST_38                                    ; $5e8c: $ff
    rst RST_38                                    ; $5e8d: $ff
    rst RST_38                                    ; $5e8e: $ff
    rst RST_38                                    ; $5e8f: $ff
    rst RST_38                                    ; $5e90: $ff
    rst RST_38                                    ; $5e91: $ff
    rst RST_38                                    ; $5e92: $ff
    rst RST_38                                    ; $5e93: $ff

jr_00b_5e94:
    rst RST_38                                    ; $5e94: $ff
    rst RST_38                                    ; $5e95: $ff
    rst RST_38                                    ; $5e96: $ff
    rst RST_38                                    ; $5e97: $ff
    rst RST_38                                    ; $5e98: $ff
    rst RST_38                                    ; $5e99: $ff
    rst RST_38                                    ; $5e9a: $ff
    rst RST_38                                    ; $5e9b: $ff
    rst RST_38                                    ; $5e9c: $ff
    rst RST_38                                    ; $5e9d: $ff
    rst RST_38                                    ; $5e9e: $ff
    rst RST_38                                    ; $5e9f: $ff
    rst RST_38                                    ; $5ea0: $ff
    rst RST_38                                    ; $5ea1: $ff
    rst RST_38                                    ; $5ea2: $ff
    rst RST_38                                    ; $5ea3: $ff
    rst RST_38                                    ; $5ea4: $ff
    rst RST_38                                    ; $5ea5: $ff
    rst RST_38                                    ; $5ea6: $ff
    rst RST_38                                    ; $5ea7: $ff
    rst RST_38                                    ; $5ea8: $ff
    rst RST_38                                    ; $5ea9: $ff
    rst RST_38                                    ; $5eaa: $ff
    rst RST_38                                    ; $5eab: $ff
    rst RST_38                                    ; $5eac: $ff
    rst RST_38                                    ; $5ead: $ff
    rst RST_38                                    ; $5eae: $ff
    rst RST_38                                    ; $5eaf: $ff
    rst RST_38                                    ; $5eb0: $ff
    rst RST_38                                    ; $5eb1: $ff
    rst RST_38                                    ; $5eb2: $ff
    rst RST_38                                    ; $5eb3: $ff
    rst RST_38                                    ; $5eb4: $ff
    rst RST_38                                    ; $5eb5: $ff
    rst RST_38                                    ; $5eb6: $ff
    rst RST_38                                    ; $5eb7: $ff
    rst RST_38                                    ; $5eb8: $ff
    rst RST_38                                    ; $5eb9: $ff
    rst RST_38                                    ; $5eba: $ff
    rst RST_38                                    ; $5ebb: $ff
    rst RST_38                                    ; $5ebc: $ff
    rst RST_38                                    ; $5ebd: $ff
    rst RST_38                                    ; $5ebe: $ff
    rst RST_38                                    ; $5ebf: $ff
    rst RST_38                                    ; $5ec0: $ff
    rst RST_38                                    ; $5ec1: $ff
    rst RST_38                                    ; $5ec2: $ff
    rst RST_38                                    ; $5ec3: $ff
    rst RST_38                                    ; $5ec4: $ff
    rst RST_38                                    ; $5ec5: $ff
    rst RST_38                                    ; $5ec6: $ff
    rst RST_38                                    ; $5ec7: $ff
    rst RST_38                                    ; $5ec8: $ff
    rst RST_38                                    ; $5ec9: $ff
    rst RST_38                                    ; $5eca: $ff
    rst RST_38                                    ; $5ecb: $ff
    rst RST_38                                    ; $5ecc: $ff
    rst RST_38                                    ; $5ecd: $ff
    rst RST_38                                    ; $5ece: $ff
    rst RST_38                                    ; $5ecf: $ff
    rst RST_38                                    ; $5ed0: $ff
    rst RST_38                                    ; $5ed1: $ff
    rst RST_38                                    ; $5ed2: $ff
    rst RST_38                                    ; $5ed3: $ff
    rst RST_38                                    ; $5ed4: $ff
    rst RST_38                                    ; $5ed5: $ff
    rst RST_38                                    ; $5ed6: $ff
    rst RST_38                                    ; $5ed7: $ff
    rst RST_38                                    ; $5ed8: $ff
    rst RST_38                                    ; $5ed9: $ff
    rst RST_38                                    ; $5eda: $ff
    rst RST_38                                    ; $5edb: $ff
    rst RST_38                                    ; $5edc: $ff
    rst RST_38                                    ; $5edd: $ff
    rst RST_38                                    ; $5ede: $ff
    rst RST_38                                    ; $5edf: $ff
    rst RST_38                                    ; $5ee0: $ff
    rst RST_38                                    ; $5ee1: $ff
    rst RST_38                                    ; $5ee2: $ff
    rst RST_38                                    ; $5ee3: $ff
    rst RST_38                                    ; $5ee4: $ff
    rst RST_38                                    ; $5ee5: $ff
    rst RST_38                                    ; $5ee6: $ff
    rst RST_38                                    ; $5ee7: $ff
    rst RST_38                                    ; $5ee8: $ff
    rst RST_38                                    ; $5ee9: $ff
    rst RST_38                                    ; $5eea: $ff
    rst RST_38                                    ; $5eeb: $ff
    rst RST_38                                    ; $5eec: $ff
    rst RST_38                                    ; $5eed: $ff
    rst RST_38                                    ; $5eee: $ff
    rst RST_38                                    ; $5eef: $ff
    rst RST_38                                    ; $5ef0: $ff
    rst RST_38                                    ; $5ef1: $ff
    rst RST_38                                    ; $5ef2: $ff
    rst RST_38                                    ; $5ef3: $ff
    rst RST_38                                    ; $5ef4: $ff
    rst RST_38                                    ; $5ef5: $ff
    rst RST_38                                    ; $5ef6: $ff
    rst RST_38                                    ; $5ef7: $ff
    rst RST_38                                    ; $5ef8: $ff
    rst RST_38                                    ; $5ef9: $ff
    rst RST_38                                    ; $5efa: $ff
    rst RST_38                                    ; $5efb: $ff
    rst RST_38                                    ; $5efc: $ff
    rst RST_38                                    ; $5efd: $ff
    rst RST_38                                    ; $5efe: $ff
    rst RST_38                                    ; $5eff: $ff
    rst RST_38                                    ; $5f00: $ff
    rst RST_38                                    ; $5f01: $ff
    rst RST_38                                    ; $5f02: $ff
    rst RST_38                                    ; $5f03: $ff
    rst RST_38                                    ; $5f04: $ff
    rst RST_38                                    ; $5f05: $ff
    rst RST_38                                    ; $5f06: $ff
    rst RST_38                                    ; $5f07: $ff
    rst RST_38                                    ; $5f08: $ff
    rst RST_38                                    ; $5f09: $ff
    rst RST_38                                    ; $5f0a: $ff
    rst RST_38                                    ; $5f0b: $ff
    rst RST_38                                    ; $5f0c: $ff
    rst RST_38                                    ; $5f0d: $ff
    rst RST_38                                    ; $5f0e: $ff
    rst RST_38                                    ; $5f0f: $ff
    rst RST_38                                    ; $5f10: $ff
    rst RST_38                                    ; $5f11: $ff
    rst RST_38                                    ; $5f12: $ff
    rst RST_38                                    ; $5f13: $ff
    rst RST_38                                    ; $5f14: $ff
    rst RST_38                                    ; $5f15: $ff
    rst RST_38                                    ; $5f16: $ff
    rst RST_38                                    ; $5f17: $ff
    rst RST_38                                    ; $5f18: $ff
    rst RST_38                                    ; $5f19: $ff
    rst RST_38                                    ; $5f1a: $ff
    rst RST_38                                    ; $5f1b: $ff
    rst RST_38                                    ; $5f1c: $ff
    rst RST_38                                    ; $5f1d: $ff
    rst RST_38                                    ; $5f1e: $ff
    rst RST_38                                    ; $5f1f: $ff
    rst RST_38                                    ; $5f20: $ff
    rst RST_38                                    ; $5f21: $ff
    rst RST_38                                    ; $5f22: $ff
    rst RST_38                                    ; $5f23: $ff
    rst RST_38                                    ; $5f24: $ff
    rst RST_38                                    ; $5f25: $ff
    rst RST_38                                    ; $5f26: $ff
    rst RST_38                                    ; $5f27: $ff
    rst RST_38                                    ; $5f28: $ff
    rst RST_38                                    ; $5f29: $ff
    rst RST_38                                    ; $5f2a: $ff
    rst RST_38                                    ; $5f2b: $ff
    rst RST_38                                    ; $5f2c: $ff
    rst RST_38                                    ; $5f2d: $ff
    rst RST_38                                    ; $5f2e: $ff
    rst RST_38                                    ; $5f2f: $ff
    rst RST_38                                    ; $5f30: $ff
    rst RST_38                                    ; $5f31: $ff
    rst RST_38                                    ; $5f32: $ff
    rst RST_38                                    ; $5f33: $ff
    rst RST_38                                    ; $5f34: $ff
    rst RST_38                                    ; $5f35: $ff
    rst RST_38                                    ; $5f36: $ff
    rst RST_38                                    ; $5f37: $ff
    rst RST_38                                    ; $5f38: $ff
    rst RST_38                                    ; $5f39: $ff
    rst RST_38                                    ; $5f3a: $ff
    rst RST_38                                    ; $5f3b: $ff
    rst RST_38                                    ; $5f3c: $ff
    rst RST_38                                    ; $5f3d: $ff
    rst RST_38                                    ; $5f3e: $ff
    rst RST_38                                    ; $5f3f: $ff
    rst RST_38                                    ; $5f40: $ff
    rst RST_38                                    ; $5f41: $ff
    rst RST_38                                    ; $5f42: $ff
    rst RST_38                                    ; $5f43: $ff
    rst RST_38                                    ; $5f44: $ff
    rst RST_38                                    ; $5f45: $ff
    rst RST_38                                    ; $5f46: $ff
    rst RST_38                                    ; $5f47: $ff
    rst RST_38                                    ; $5f48: $ff
    rst RST_38                                    ; $5f49: $ff
    rst RST_38                                    ; $5f4a: $ff
    rst RST_38                                    ; $5f4b: $ff
    rst RST_38                                    ; $5f4c: $ff
    rst RST_38                                    ; $5f4d: $ff
    rst RST_38                                    ; $5f4e: $ff
    rst RST_38                                    ; $5f4f: $ff
    rst RST_38                                    ; $5f50: $ff
    rst RST_38                                    ; $5f51: $ff
    rst RST_38                                    ; $5f52: $ff
    rst RST_38                                    ; $5f53: $ff
    rst RST_38                                    ; $5f54: $ff
    rst RST_38                                    ; $5f55: $ff
    rst RST_38                                    ; $5f56: $ff
    rst RST_38                                    ; $5f57: $ff
    rst RST_38                                    ; $5f58: $ff
    rst RST_38                                    ; $5f59: $ff
    rst RST_38                                    ; $5f5a: $ff
    rst RST_38                                    ; $5f5b: $ff
    rst RST_38                                    ; $5f5c: $ff
    rst RST_38                                    ; $5f5d: $ff
    rst RST_38                                    ; $5f5e: $ff
    rst RST_38                                    ; $5f5f: $ff
    rst RST_38                                    ; $5f60: $ff
    rst RST_38                                    ; $5f61: $ff
    rst RST_38                                    ; $5f62: $ff
    rst RST_38                                    ; $5f63: $ff
    rst RST_38                                    ; $5f64: $ff
    rst RST_38                                    ; $5f65: $ff
    rst RST_38                                    ; $5f66: $ff
    rst RST_38                                    ; $5f67: $ff
    rst RST_38                                    ; $5f68: $ff
    rst RST_38                                    ; $5f69: $ff
    rst RST_38                                    ; $5f6a: $ff
    rst RST_38                                    ; $5f6b: $ff
    rst RST_38                                    ; $5f6c: $ff
    rst RST_38                                    ; $5f6d: $ff
    rst RST_38                                    ; $5f6e: $ff
    rst RST_38                                    ; $5f6f: $ff
    rst RST_38                                    ; $5f70: $ff
    rst RST_38                                    ; $5f71: $ff
    rst RST_38                                    ; $5f72: $ff
    rst RST_38                                    ; $5f73: $ff
    rst RST_38                                    ; $5f74: $ff
    rst RST_38                                    ; $5f75: $ff
    rst RST_38                                    ; $5f76: $ff
    rst RST_38                                    ; $5f77: $ff
    rst RST_38                                    ; $5f78: $ff
    rst RST_38                                    ; $5f79: $ff
    rst RST_38                                    ; $5f7a: $ff
    rst RST_38                                    ; $5f7b: $ff
    rst RST_38                                    ; $5f7c: $ff
    rst RST_38                                    ; $5f7d: $ff
    rst RST_38                                    ; $5f7e: $ff
    rst RST_38                                    ; $5f7f: $ff
    rst RST_38                                    ; $5f80: $ff
    rst RST_38                                    ; $5f81: $ff
    rst RST_38                                    ; $5f82: $ff
    rst RST_38                                    ; $5f83: $ff
    rst RST_38                                    ; $5f84: $ff
    rst RST_38                                    ; $5f85: $ff
    rst RST_38                                    ; $5f86: $ff
    rst RST_38                                    ; $5f87: $ff
    rst RST_38                                    ; $5f88: $ff
    rst RST_38                                    ; $5f89: $ff
    rst RST_38                                    ; $5f8a: $ff
    rst RST_38                                    ; $5f8b: $ff
    rst RST_38                                    ; $5f8c: $ff
    rst RST_38                                    ; $5f8d: $ff
    rst RST_38                                    ; $5f8e: $ff
    rst RST_38                                    ; $5f8f: $ff
    rst RST_38                                    ; $5f90: $ff
    rst RST_38                                    ; $5f91: $ff
    rst RST_38                                    ; $5f92: $ff
    rst RST_38                                    ; $5f93: $ff
    rst RST_38                                    ; $5f94: $ff
    rst RST_38                                    ; $5f95: $ff
    rst RST_38                                    ; $5f96: $ff
    rst RST_38                                    ; $5f97: $ff
    rst RST_38                                    ; $5f98: $ff
    rst RST_38                                    ; $5f99: $ff
    rst RST_38                                    ; $5f9a: $ff
    rst RST_38                                    ; $5f9b: $ff
    rst RST_38                                    ; $5f9c: $ff
    rst RST_38                                    ; $5f9d: $ff
    rst RST_38                                    ; $5f9e: $ff
    rst RST_38                                    ; $5f9f: $ff
    rst RST_38                                    ; $5fa0: $ff
    rst RST_38                                    ; $5fa1: $ff
    rst RST_38                                    ; $5fa2: $ff
    rst RST_38                                    ; $5fa3: $ff
    rst RST_38                                    ; $5fa4: $ff
    rst RST_38                                    ; $5fa5: $ff
    rst RST_38                                    ; $5fa6: $ff
    rst RST_38                                    ; $5fa7: $ff
    rst RST_38                                    ; $5fa8: $ff
    rst RST_38                                    ; $5fa9: $ff
    rst RST_38                                    ; $5faa: $ff
    rst RST_38                                    ; $5fab: $ff
    rst RST_38                                    ; $5fac: $ff
    rst RST_38                                    ; $5fad: $ff
    rst RST_38                                    ; $5fae: $ff
    rst RST_38                                    ; $5faf: $ff
    rst RST_38                                    ; $5fb0: $ff
    rst RST_38                                    ; $5fb1: $ff
    rst RST_38                                    ; $5fb2: $ff
    rst RST_38                                    ; $5fb3: $ff
    rst RST_38                                    ; $5fb4: $ff
    rst RST_38                                    ; $5fb5: $ff
    rst RST_38                                    ; $5fb6: $ff
    rst RST_38                                    ; $5fb7: $ff
    rst RST_38                                    ; $5fb8: $ff
    rst RST_38                                    ; $5fb9: $ff
    rst RST_38                                    ; $5fba: $ff
    rst RST_38                                    ; $5fbb: $ff
    rst RST_38                                    ; $5fbc: $ff
    rst RST_38                                    ; $5fbd: $ff
    rst RST_38                                    ; $5fbe: $ff
    rst RST_38                                    ; $5fbf: $ff
    rst RST_38                                    ; $5fc0: $ff
    rst RST_38                                    ; $5fc1: $ff
    rst RST_38                                    ; $5fc2: $ff
    rst RST_38                                    ; $5fc3: $ff
    rst RST_38                                    ; $5fc4: $ff
    rst RST_38                                    ; $5fc5: $ff
    rst RST_38                                    ; $5fc6: $ff
    rst RST_38                                    ; $5fc7: $ff
    rst RST_38                                    ; $5fc8: $ff
    rst RST_38                                    ; $5fc9: $ff
    rst RST_38                                    ; $5fca: $ff
    rst RST_38                                    ; $5fcb: $ff
    rst RST_38                                    ; $5fcc: $ff
    rst RST_38                                    ; $5fcd: $ff
    rst RST_38                                    ; $5fce: $ff
    rst RST_38                                    ; $5fcf: $ff
    rst RST_38                                    ; $5fd0: $ff
    rst RST_38                                    ; $5fd1: $ff
    rst RST_38                                    ; $5fd2: $ff
    rst RST_38                                    ; $5fd3: $ff
    rst RST_38                                    ; $5fd4: $ff
    rst RST_38                                    ; $5fd5: $ff
    rst RST_38                                    ; $5fd6: $ff
    rst RST_38                                    ; $5fd7: $ff
    rst RST_38                                    ; $5fd8: $ff
    rst RST_38                                    ; $5fd9: $ff
    rst RST_38                                    ; $5fda: $ff
    rst RST_38                                    ; $5fdb: $ff
    rst RST_38                                    ; $5fdc: $ff
    rst RST_38                                    ; $5fdd: $ff
    rst RST_38                                    ; $5fde: $ff
    rst RST_38                                    ; $5fdf: $ff
    rst RST_38                                    ; $5fe0: $ff
    rst RST_38                                    ; $5fe1: $ff
    rst RST_38                                    ; $5fe2: $ff
    rst RST_38                                    ; $5fe3: $ff
    rst RST_38                                    ; $5fe4: $ff
    rst RST_38                                    ; $5fe5: $ff
    rst RST_38                                    ; $5fe6: $ff
    rst RST_38                                    ; $5fe7: $ff
    rst RST_38                                    ; $5fe8: $ff
    rst RST_38                                    ; $5fe9: $ff
    rst RST_38                                    ; $5fea: $ff
    rst RST_38                                    ; $5feb: $ff
    rst RST_38                                    ; $5fec: $ff
    rst RST_38                                    ; $5fed: $ff
    rst RST_38                                    ; $5fee: $ff
    rst RST_38                                    ; $5fef: $ff
    rst RST_38                                    ; $5ff0: $ff
    rst RST_38                                    ; $5ff1: $ff
    rst RST_38                                    ; $5ff2: $ff
    rst RST_38                                    ; $5ff3: $ff
    rst RST_38                                    ; $5ff4: $ff
    rst RST_38                                    ; $5ff5: $ff
    rst RST_38                                    ; $5ff6: $ff
    rst RST_38                                    ; $5ff7: $ff
    rst RST_38                                    ; $5ff8: $ff
    rst RST_38                                    ; $5ff9: $ff
    rst RST_38                                    ; $5ffa: $ff
    rst RST_38                                    ; $5ffb: $ff
    rst RST_38                                    ; $5ffc: $ff
    rst RST_38                                    ; $5ffd: $ff
    rst RST_38                                    ; $5ffe: $ff
    rst RST_38                                    ; $5fff: $ff
    and a                                         ; $6000: $a7
    add l                                         ; $6001: $85
    add [hl]                                      ; $6002: $86
    add a                                         ; $6003: $87
    adc b                                         ; $6004: $88
    and [hl]                                      ; $6005: $a6
    and [hl]                                      ; $6006: $a6
    and [hl]                                      ; $6007: $a6
    and [hl]                                      ; $6008: $a6
    and [hl]                                      ; $6009: $a6
    and [hl]                                      ; $600a: $a6
    and [hl]                                      ; $600b: $a6
    and [hl]                                      ; $600c: $a6
    and [hl]                                      ; $600d: $a6
    and [hl]                                      ; $600e: $a6
    and [hl]                                      ; $600f: $a6
    and [hl]                                      ; $6010: $a6
    and [hl]                                      ; $6011: $a6
    and [hl]                                      ; $6012: $a6
    and a                                         ; $6013: $a7
    rst RST_38                                    ; $6014: $ff
    rst RST_38                                    ; $6015: $ff
    rst RST_38                                    ; $6016: $ff
    rst RST_38                                    ; $6017: $ff
    rst RST_38                                    ; $6018: $ff
    rst RST_38                                    ; $6019: $ff
    rst RST_38                                    ; $601a: $ff
    rst RST_38                                    ; $601b: $ff
    rst RST_38                                    ; $601c: $ff
    rst RST_38                                    ; $601d: $ff
    rst RST_38                                    ; $601e: $ff
    rst RST_38                                    ; $601f: $ff
    and a                                         ; $6020: $a7
    adc c                                         ; $6021: $89
    adc d                                         ; $6022: $8a
    adc e                                         ; $6023: $8b
    adc h                                         ; $6024: $8c
    adc l                                         ; $6025: $8d
    ld a, [hl]                                    ; $6026: $7e
    nop                                           ; $6027: $00
    ld bc, $0302                                  ; $6028: $01 $02 $03
    ld a, [hl]                                    ; $602b: $7e
    ld c, c                                       ; $602c: $49
    ld c, d                                       ; $602d: $4a
    ld c, e                                       ; $602e: $4b
    db $eb                                        ; $602f: $eb
    db $ec                                        ; $6030: $ec
    db $fd                                        ; $6031: $fd
    ld a, [hl]                                    ; $6032: $7e
    and a                                         ; $6033: $a7
    rst RST_38                                    ; $6034: $ff
    rst RST_38                                    ; $6035: $ff
    rst RST_38                                    ; $6036: $ff
    rst RST_38                                    ; $6037: $ff
    rst RST_38                                    ; $6038: $ff
    rst RST_38                                    ; $6039: $ff
    rst RST_38                                    ; $603a: $ff
    rst RST_38                                    ; $603b: $ff
    rst RST_38                                    ; $603c: $ff
    rst RST_38                                    ; $603d: $ff
    rst RST_38                                    ; $603e: $ff
    rst RST_38                                    ; $603f: $ff
    and a                                         ; $6040: $a7
    adc [hl]                                      ; $6041: $8e
    adc a                                         ; $6042: $8f
    sub b                                         ; $6043: $90
    sub c                                         ; $6044: $91
    sub d                                         ; $6045: $92
    sub e                                         ; $6046: $93
    db $10                                        ; $6047: $10
    ld de, $1312                                  ; $6048: $11 $12 $13
    db $dd                                        ; $604b: $dd
    ld hl, sp-$07                                 ; $604c: $f8 $f9
    ld a, [$fcfb]                                 ; $604e: $fa $fb $fc
    cp $df                                        ; $6051: $fe $df
    and a                                         ; $6053: $a7
    rst RST_38                                    ; $6054: $ff
    rst RST_38                                    ; $6055: $ff
    rst RST_38                                    ; $6056: $ff
    rst RST_38                                    ; $6057: $ff
    rst RST_38                                    ; $6058: $ff
    rst RST_38                                    ; $6059: $ff
    rst RST_38                                    ; $605a: $ff
    rst RST_38                                    ; $605b: $ff
    rst RST_38                                    ; $605c: $ff
    rst RST_38                                    ; $605d: $ff
    rst RST_38                                    ; $605e: $ff
    rst RST_38                                    ; $605f: $ff
    and a                                         ; $6060: $a7
    sub h                                         ; $6061: $94
    sub l                                         ; $6062: $95
    sub [hl]                                      ; $6063: $96
    sub a                                         ; $6064: $97
    sbc b                                         ; $6065: $98
    sbc c                                         ; $6066: $99
    jr nz, jr_00b_608a                            ; $6067: $20 $21

    ld [hl+], a                                   ; $6069: $22
    inc hl                                        ; $606a: $23
    db $ed                                        ; $606b: $ed
    xor $ee                                       ; $606c: $ee $ee
    xor $ee                                       ; $606e: $ee $ee
    xor $ee                                       ; $6070: $ee $ee
    rst RST_28                                    ; $6072: $ef
    and a                                         ; $6073: $a7
    rst RST_38                                    ; $6074: $ff
    rst RST_38                                    ; $6075: $ff
    rst RST_38                                    ; $6076: $ff
    rst RST_38                                    ; $6077: $ff
    rst RST_38                                    ; $6078: $ff
    rst RST_38                                    ; $6079: $ff
    rst RST_38                                    ; $607a: $ff
    rst RST_38                                    ; $607b: $ff
    rst RST_38                                    ; $607c: $ff
    rst RST_38                                    ; $607d: $ff
    rst RST_38                                    ; $607e: $ff
    rst RST_38                                    ; $607f: $ff
    and a                                         ; $6080: $a7
    sbc d                                         ; $6081: $9a
    sbc e                                         ; $6082: $9b
    sbc h                                         ; $6083: $9c
    sbc l                                         ; $6084: $9d
    sbc [hl]                                      ; $6085: $9e
    sbc a                                         ; $6086: $9f
    jr nc, jr_00b_60ba                            ; $6087: $30 $31

    ld [hl-], a                                   ; $6089: $32

jr_00b_608a:
    inc sp                                        ; $608a: $33
    db $ed                                        ; $608b: $ed
    call z, $d9cd                                 ; $608c: $cc $cd $d9
    ret                                           ; $608f: $c9


    db $db                                        ; $6090: $db
    ret c                                         ; $6091: $d8

    rst RST_28                                    ; $6092: $ef
    and a                                         ; $6093: $a7
    rst RST_38                                    ; $6094: $ff
    rst RST_38                                    ; $6095: $ff
    rst RST_38                                    ; $6096: $ff
    rst RST_38                                    ; $6097: $ff
    rst RST_38                                    ; $6098: $ff
    rst RST_38                                    ; $6099: $ff
    rst RST_38                                    ; $609a: $ff
    rst RST_38                                    ; $609b: $ff
    rst RST_38                                    ; $609c: $ff
    rst RST_38                                    ; $609d: $ff
    rst RST_38                                    ; $609e: $ff
    rst RST_38                                    ; $609f: $ff
    and a                                         ; $60a0: $a7
    and b                                         ; $60a1: $a0
    and c                                         ; $60a2: $a1
    and d                                         ; $60a3: $a2
    and e                                         ; $60a4: $a3
    and h                                         ; $60a5: $a4
    and l                                         ; $60a6: $a5
    ld b, b                                       ; $60a7: $40
    ld b, c                                       ; $60a8: $41
    ld b, d                                       ; $60a9: $42
    ld b, e                                       ; $60aa: $43
    db $ed                                        ; $60ab: $ed
    xor $ee                                       ; $60ac: $ee $ee
    xor $ee                                       ; $60ae: $ee $ee
    xor $ee                                       ; $60b0: $ee $ee
    rst RST_28                                    ; $60b2: $ef
    and a                                         ; $60b3: $a7
    rst RST_38                                    ; $60b4: $ff
    rst RST_38                                    ; $60b5: $ff
    rst RST_38                                    ; $60b6: $ff
    rst RST_38                                    ; $60b7: $ff
    rst RST_38                                    ; $60b8: $ff
    rst RST_38                                    ; $60b9: $ff

jr_00b_60ba:
    rst RST_38                                    ; $60ba: $ff
    rst RST_38                                    ; $60bb: $ff
    rst RST_38                                    ; $60bc: $ff
    rst RST_38                                    ; $60bd: $ff
    rst RST_38                                    ; $60be: $ff
    rst RST_38                                    ; $60bf: $ff
    and a                                         ; $60c0: $a7
    xor b                                         ; $60c1: $a8
    xor c                                         ; $60c2: $a9
    ret nz                                        ; $60c3: $c0

    pop bc                                        ; $60c4: $c1
    jp nz, $c4c3                                  ; $60c5: $c2 $c3 $c4

    push bc                                       ; $60c8: $c5
    add $c7                                       ; $60c9: $c6 $c7
    cp [hl]                                       ; $60cb: $be
    jp z, $d9cb                                   ; $60cc: $ca $cb $d9

    ret                                           ; $60cf: $c9


    db $db                                        ; $60d0: $db
    jp c, $a7ef                                   ; $60d1: $da $ef $a7

    rst RST_38                                    ; $60d4: $ff
    rst RST_38                                    ; $60d5: $ff
    rst RST_38                                    ; $60d6: $ff
    rst RST_38                                    ; $60d7: $ff
    rst RST_38                                    ; $60d8: $ff
    rst RST_38                                    ; $60d9: $ff
    rst RST_38                                    ; $60da: $ff
    rst RST_38                                    ; $60db: $ff
    rst RST_38                                    ; $60dc: $ff
    rst RST_38                                    ; $60dd: $ff
    rst RST_38                                    ; $60de: $ff
    rst RST_38                                    ; $60df: $ff
    and a                                         ; $60e0: $a7
    xor d                                         ; $60e1: $aa
    xor e                                         ; $60e2: $ab
    ret nc                                        ; $60e3: $d0

    pop de                                        ; $60e4: $d1
    jp nc, $d4d3                                  ; $60e5: $d2 $d3 $d4

    push de                                       ; $60e8: $d5
    sub $d7                                       ; $60e9: $d6 $d7
    cp a                                          ; $60eb: $bf
    xor $ee                                       ; $60ec: $ee $ee
    xor $ee                                       ; $60ee: $ee $ee
    xor $ee                                       ; $60f0: $ee $ee
    rst RST_28                                    ; $60f2: $ef
    and a                                         ; $60f3: $a7
    rst RST_38                                    ; $60f4: $ff
    rst RST_38                                    ; $60f5: $ff
    rst RST_38                                    ; $60f6: $ff
    rst RST_38                                    ; $60f7: $ff
    rst RST_38                                    ; $60f8: $ff
    rst RST_38                                    ; $60f9: $ff
    rst RST_38                                    ; $60fa: $ff
    rst RST_38                                    ; $60fb: $ff
    rst RST_38                                    ; $60fc: $ff
    rst RST_38                                    ; $60fd: $ff
    rst RST_38                                    ; $60fe: $ff
    rst RST_38                                    ; $60ff: $ff
    and a                                         ; $6100: $a7
    xor h                                         ; $6101: $ac
    xor l                                         ; $6102: $ad
    ldh [$ffe1], a                                ; $6103: $e0 $e1
    ldh [c], a                                    ; $6105: $e2
    db $e3                                        ; $6106: $e3
    db $e4                                        ; $6107: $e4
    push hl                                       ; $6108: $e5
    and $e7                                       ; $6109: $e6 $e7
    cp a                                          ; $610b: $bf
    call c, $c8ff                                 ; $610c: $dc $ff $c8
    add sp, -$17                                  ; $610f: $e8 $e9
    ld [$a7ef], a                                 ; $6111: $ea $ef $a7
    rst RST_38                                    ; $6114: $ff
    rst RST_38                                    ; $6115: $ff
    rst RST_38                                    ; $6116: $ff
    rst RST_38                                    ; $6117: $ff
    rst RST_38                                    ; $6118: $ff
    rst RST_38                                    ; $6119: $ff
    rst RST_38                                    ; $611a: $ff
    rst RST_38                                    ; $611b: $ff
    rst RST_38                                    ; $611c: $ff
    rst RST_38                                    ; $611d: $ff
    rst RST_38                                    ; $611e: $ff
    rst RST_38                                    ; $611f: $ff
    and a                                         ; $6120: $a7
    xor [hl]                                      ; $6121: $ae
    xor a                                         ; $6122: $af
    ldh a, [$fff1]                                ; $6123: $f0 $f1
    ldh a, [c]                                    ; $6125: $f2
    di                                            ; $6126: $f3
    db $f4                                        ; $6127: $f4
    push af                                       ; $6128: $f5
    or $f7                                        ; $6129: $f6 $f7
    cp a                                          ; $612b: $bf
    xor $ee                                       ; $612c: $ee $ee
    xor $ee                                       ; $612e: $ee $ee
    xor $ee                                       ; $6130: $ee $ee
    rst RST_28                                    ; $6132: $ef
    and a                                         ; $6133: $a7
    rst RST_38                                    ; $6134: $ff
    rst RST_38                                    ; $6135: $ff
    rst RST_38                                    ; $6136: $ff
    rst RST_38                                    ; $6137: $ff
    rst RST_38                                    ; $6138: $ff
    rst RST_38                                    ; $6139: $ff
    rst RST_38                                    ; $613a: $ff
    rst RST_38                                    ; $613b: $ff
    rst RST_38                                    ; $613c: $ff
    rst RST_38                                    ; $613d: $ff
    rst RST_38                                    ; $613e: $ff
    rst RST_38                                    ; $613f: $ff
    and a                                         ; $6140: $a7
    or b                                          ; $6141: $b0
    or c                                          ; $6142: $b1
    nop                                           ; $6143: $00
    ld bc, $0302                                  ; $6144: $01 $02 $03
    inc b                                         ; $6147: $04
    dec b                                         ; $6148: $05
    ld b, $07                                     ; $6149: $06 $07
    ld [$0a09], sp                                ; $614b: $08 $09 $0a
    dec bc                                        ; $614e: $0b
    inc c                                         ; $614f: $0c
    dec c                                         ; $6150: $0d
    ld c, $0f                                     ; $6151: $0e $0f
    and a                                         ; $6153: $a7
    rst RST_38                                    ; $6154: $ff
    rst RST_38                                    ; $6155: $ff
    rst RST_38                                    ; $6156: $ff
    rst RST_38                                    ; $6157: $ff
    rst RST_38                                    ; $6158: $ff
    rst RST_38                                    ; $6159: $ff
    rst RST_38                                    ; $615a: $ff
    rst RST_38                                    ; $615b: $ff
    rst RST_38                                    ; $615c: $ff
    rst RST_38                                    ; $615d: $ff
    rst RST_38                                    ; $615e: $ff
    rst RST_38                                    ; $615f: $ff
    and a                                         ; $6160: $a7
    or d                                          ; $6161: $b2
    or e                                          ; $6162: $b3
    db $10                                        ; $6163: $10
    ld de, $1312                                  ; $6164: $11 $12 $13
    inc d                                         ; $6167: $14
    dec d                                         ; $6168: $15
    ld d, $17                                     ; $6169: $16 $17
    jr jr_00b_6186                                ; $616b: $18 $19

    ld a, [de]                                    ; $616d: $1a
    dec de                                        ; $616e: $1b
    inc e                                         ; $616f: $1c
    dec e                                         ; $6170: $1d
    ld e, $1f                                     ; $6171: $1e $1f
    and a                                         ; $6173: $a7
    rst RST_38                                    ; $6174: $ff
    rst RST_38                                    ; $6175: $ff
    rst RST_38                                    ; $6176: $ff
    rst RST_38                                    ; $6177: $ff
    rst RST_38                                    ; $6178: $ff
    rst RST_38                                    ; $6179: $ff
    rst RST_38                                    ; $617a: $ff
    rst RST_38                                    ; $617b: $ff
    rst RST_38                                    ; $617c: $ff
    rst RST_38                                    ; $617d: $ff
    rst RST_38                                    ; $617e: $ff
    rst RST_38                                    ; $617f: $ff
    and a                                         ; $6180: $a7
    or h                                          ; $6181: $b4
    or l                                          ; $6182: $b5
    jr nz, jr_00b_61a6                            ; $6183: $20 $21

    ld [hl+], a                                   ; $6185: $22

jr_00b_6186:
    inc hl                                        ; $6186: $23
    inc h                                         ; $6187: $24
    dec h                                         ; $6188: $25
    ld h, $27                                     ; $6189: $26 $27
    jr z, jr_00b_61b6                             ; $618b: $28 $29

    ld a, [hl+]                                   ; $618d: $2a
    dec hl                                        ; $618e: $2b
    inc l                                         ; $618f: $2c
    dec l                                         ; $6190: $2d
    ld l, $2f                                     ; $6191: $2e $2f
    and a                                         ; $6193: $a7
    rst RST_38                                    ; $6194: $ff
    rst RST_38                                    ; $6195: $ff
    rst RST_38                                    ; $6196: $ff
    rst RST_38                                    ; $6197: $ff
    rst RST_38                                    ; $6198: $ff
    rst RST_38                                    ; $6199: $ff
    rst RST_38                                    ; $619a: $ff
    rst RST_38                                    ; $619b: $ff
    rst RST_38                                    ; $619c: $ff
    rst RST_38                                    ; $619d: $ff
    rst RST_38                                    ; $619e: $ff
    rst RST_38                                    ; $619f: $ff
    and a                                         ; $61a0: $a7
    or [hl]                                       ; $61a1: $b6
    or a                                          ; $61a2: $b7
    jr nc, jr_00b_61d6                            ; $61a3: $30 $31

    ld [hl-], a                                   ; $61a5: $32

jr_00b_61a6:
    inc sp                                        ; $61a6: $33
    inc [hl]                                      ; $61a7: $34
    dec [hl]                                      ; $61a8: $35
    ld [hl], $37                                  ; $61a9: $36 $37
    jr c, jr_00b_61e6                             ; $61ab: $38 $39

    ld a, [hl-]                                   ; $61ad: $3a
    dec sp                                        ; $61ae: $3b
    inc a                                         ; $61af: $3c
    dec a                                         ; $61b0: $3d
    ld a, $3f                                     ; $61b1: $3e $3f
    and a                                         ; $61b3: $a7
    rst RST_38                                    ; $61b4: $ff
    rst RST_38                                    ; $61b5: $ff

jr_00b_61b6:
    rst RST_38                                    ; $61b6: $ff
    rst RST_38                                    ; $61b7: $ff
    rst RST_38                                    ; $61b8: $ff
    rst RST_38                                    ; $61b9: $ff
    rst RST_38                                    ; $61ba: $ff
    rst RST_38                                    ; $61bb: $ff
    rst RST_38                                    ; $61bc: $ff
    rst RST_38                                    ; $61bd: $ff
    rst RST_38                                    ; $61be: $ff
    rst RST_38                                    ; $61bf: $ff
    and a                                         ; $61c0: $a7
    cp b                                          ; $61c1: $b8
    cp c                                          ; $61c2: $b9
    ld b, b                                       ; $61c3: $40
    ld b, c                                       ; $61c4: $41
    ld b, d                                       ; $61c5: $42
    ld b, e                                       ; $61c6: $43
    ld b, h                                       ; $61c7: $44
    ld b, l                                       ; $61c8: $45
    ld b, [hl]                                    ; $61c9: $46
    ld b, a                                       ; $61ca: $47
    ld c, b                                       ; $61cb: $48
    ld c, c                                       ; $61cc: $49
    ld c, d                                       ; $61cd: $4a
    ld c, e                                       ; $61ce: $4b
    ld c, h                                       ; $61cf: $4c
    ld c, l                                       ; $61d0: $4d
    ld c, [hl]                                    ; $61d1: $4e
    ld c, a                                       ; $61d2: $4f
    and a                                         ; $61d3: $a7
    rst RST_38                                    ; $61d4: $ff
    rst RST_38                                    ; $61d5: $ff

jr_00b_61d6:
    rst RST_38                                    ; $61d6: $ff
    rst RST_38                                    ; $61d7: $ff
    rst RST_38                                    ; $61d8: $ff
    rst RST_38                                    ; $61d9: $ff
    rst RST_38                                    ; $61da: $ff
    rst RST_38                                    ; $61db: $ff
    rst RST_38                                    ; $61dc: $ff
    rst RST_38                                    ; $61dd: $ff
    rst RST_38                                    ; $61de: $ff
    rst RST_38                                    ; $61df: $ff
    and a                                         ; $61e0: $a7
    cp d                                          ; $61e1: $ba
    cp e                                          ; $61e2: $bb
    ld d, b                                       ; $61e3: $50
    ld d, c                                       ; $61e4: $51
    ld d, d                                       ; $61e5: $52

jr_00b_61e6:
    ld d, e                                       ; $61e6: $53
    ld d, h                                       ; $61e7: $54
    ld d, l                                       ; $61e8: $55
    ld d, [hl]                                    ; $61e9: $56
    ld d, a                                       ; $61ea: $57
    ld e, b                                       ; $61eb: $58
    ld e, c                                       ; $61ec: $59
    ld e, d                                       ; $61ed: $5a
    ld e, e                                       ; $61ee: $5b
    ld e, h                                       ; $61ef: $5c
    ld e, l                                       ; $61f0: $5d
    ld e, [hl]                                    ; $61f1: $5e
    ld e, a                                       ; $61f2: $5f
    and a                                         ; $61f3: $a7
    rst RST_38                                    ; $61f4: $ff
    rst RST_38                                    ; $61f5: $ff
    rst RST_38                                    ; $61f6: $ff
    rst RST_38                                    ; $61f7: $ff
    rst RST_38                                    ; $61f8: $ff
    rst RST_38                                    ; $61f9: $ff
    rst RST_38                                    ; $61fa: $ff
    rst RST_38                                    ; $61fb: $ff
    rst RST_38                                    ; $61fc: $ff
    rst RST_38                                    ; $61fd: $ff
    rst RST_38                                    ; $61fe: $ff
    rst RST_38                                    ; $61ff: $ff
    and a                                         ; $6200: $a7
    adc $cf                                       ; $6201: $ce $cf
    ld h, b                                       ; $6203: $60
    ld h, c                                       ; $6204: $61
    ld h, d                                       ; $6205: $62
    ld h, e                                       ; $6206: $63
    ld h, h                                       ; $6207: $64
    ld h, l                                       ; $6208: $65
    ld h, [hl]                                    ; $6209: $66
    ld h, a                                       ; $620a: $67
    ld l, b                                       ; $620b: $68
    ld l, c                                       ; $620c: $69
    ld l, d                                       ; $620d: $6a
    ld l, e                                       ; $620e: $6b
    ld l, h                                       ; $620f: $6c
    ld l, l                                       ; $6210: $6d
    ld l, [hl]                                    ; $6211: $6e
    ld l, a                                       ; $6212: $6f
    and a                                         ; $6213: $a7
    rst RST_38                                    ; $6214: $ff
    rst RST_38                                    ; $6215: $ff
    rst RST_38                                    ; $6216: $ff
    rst RST_38                                    ; $6217: $ff
    rst RST_38                                    ; $6218: $ff
    rst RST_38                                    ; $6219: $ff
    rst RST_38                                    ; $621a: $ff
    rst RST_38                                    ; $621b: $ff
    rst RST_38                                    ; $621c: $ff
    rst RST_38                                    ; $621d: $ff
    rst RST_38                                    ; $621e: $ff
    rst RST_38                                    ; $621f: $ff
    and a                                         ; $6220: $a7
    cp h                                          ; $6221: $bc
    cp l                                          ; $6222: $bd
    ld [hl], b                                    ; $6223: $70
    ld [hl], c                                    ; $6224: $71
    ld [hl], d                                    ; $6225: $72
    ld [hl], e                                    ; $6226: $73
    ld [hl], h                                    ; $6227: $74
    ld [hl], l                                    ; $6228: $75
    halt                                          ; $6229: $76
    ld [hl], a                                    ; $622a: $77
    ld a, b                                       ; $622b: $78
    ld a, c                                       ; $622c: $79
    ld a, d                                       ; $622d: $7a
    ld a, e                                       ; $622e: $7b
    ld a, h                                       ; $622f: $7c
    ld a, l                                       ; $6230: $7d
    ld a, [hl]                                    ; $6231: $7e
    ld a, a                                       ; $6232: $7f
    and a                                         ; $6233: $a7
    rst RST_38                                    ; $6234: $ff
    rst RST_38                                    ; $6235: $ff
    rst RST_38                                    ; $6236: $ff
    rst RST_38                                    ; $6237: $ff
    rst RST_38                                    ; $6238: $ff
    rst RST_38                                    ; $6239: $ff
    rst RST_38                                    ; $623a: $ff
    rst RST_38                                    ; $623b: $ff
    rst RST_38                                    ; $623c: $ff
    rst RST_38                                    ; $623d: $ff
    rst RST_38                                    ; $623e: $ff
    rst RST_38                                    ; $623f: $ff
    rst RST_38                                    ; $6240: $ff
    rst RST_38                                    ; $6241: $ff
    rst RST_38                                    ; $6242: $ff
    rst RST_38                                    ; $6243: $ff
    rst RST_38                                    ; $6244: $ff
    rst RST_38                                    ; $6245: $ff
    rst RST_38                                    ; $6246: $ff
    rst RST_38                                    ; $6247: $ff
    rst RST_38                                    ; $6248: $ff
    rst RST_38                                    ; $6249: $ff
    rst RST_38                                    ; $624a: $ff
    rst RST_38                                    ; $624b: $ff
    rst RST_38                                    ; $624c: $ff
    rst RST_38                                    ; $624d: $ff
    rst RST_38                                    ; $624e: $ff
    rst RST_38                                    ; $624f: $ff
    rst RST_38                                    ; $6250: $ff
    rst RST_38                                    ; $6251: $ff
    rst RST_38                                    ; $6252: $ff
    rst RST_38                                    ; $6253: $ff
    rst RST_38                                    ; $6254: $ff
    rst RST_38                                    ; $6255: $ff
    rst RST_38                                    ; $6256: $ff
    rst RST_38                                    ; $6257: $ff
    rst RST_38                                    ; $6258: $ff
    rst RST_38                                    ; $6259: $ff
    rst RST_38                                    ; $625a: $ff
    rst RST_38                                    ; $625b: $ff
    rst RST_38                                    ; $625c: $ff
    rst RST_38                                    ; $625d: $ff
    rst RST_38                                    ; $625e: $ff
    rst RST_38                                    ; $625f: $ff
    rst RST_38                                    ; $6260: $ff
    rst RST_38                                    ; $6261: $ff
    rst RST_38                                    ; $6262: $ff
    rst RST_38                                    ; $6263: $ff
    rst RST_38                                    ; $6264: $ff
    rst RST_38                                    ; $6265: $ff
    rst RST_38                                    ; $6266: $ff
    rst RST_38                                    ; $6267: $ff
    rst RST_38                                    ; $6268: $ff
    rst RST_38                                    ; $6269: $ff
    rst RST_38                                    ; $626a: $ff
    rst RST_38                                    ; $626b: $ff
    rst RST_38                                    ; $626c: $ff
    rst RST_38                                    ; $626d: $ff
    rst RST_38                                    ; $626e: $ff
    rst RST_38                                    ; $626f: $ff
    rst RST_38                                    ; $6270: $ff
    rst RST_38                                    ; $6271: $ff
    rst RST_38                                    ; $6272: $ff
    rst RST_38                                    ; $6273: $ff
    rst RST_38                                    ; $6274: $ff
    rst RST_38                                    ; $6275: $ff
    rst RST_38                                    ; $6276: $ff
    rst RST_38                                    ; $6277: $ff
    rst RST_38                                    ; $6278: $ff
    rst RST_38                                    ; $6279: $ff
    rst RST_38                                    ; $627a: $ff
    rst RST_38                                    ; $627b: $ff
    rst RST_38                                    ; $627c: $ff
    rst RST_38                                    ; $627d: $ff
    rst RST_38                                    ; $627e: $ff
    rst RST_38                                    ; $627f: $ff
    rst RST_38                                    ; $6280: $ff
    rst RST_38                                    ; $6281: $ff
    rst RST_38                                    ; $6282: $ff
    rst RST_38                                    ; $6283: $ff
    rst RST_38                                    ; $6284: $ff
    rst RST_38                                    ; $6285: $ff
    rst RST_38                                    ; $6286: $ff
    rst RST_38                                    ; $6287: $ff
    rst RST_38                                    ; $6288: $ff
    rst RST_38                                    ; $6289: $ff
    rst RST_38                                    ; $628a: $ff
    rst RST_38                                    ; $628b: $ff
    rst RST_38                                    ; $628c: $ff
    rst RST_38                                    ; $628d: $ff
    rst RST_38                                    ; $628e: $ff
    rst RST_38                                    ; $628f: $ff
    rst RST_38                                    ; $6290: $ff
    rst RST_38                                    ; $6291: $ff
    rst RST_38                                    ; $6292: $ff
    rst RST_38                                    ; $6293: $ff
    rst RST_38                                    ; $6294: $ff
    rst RST_38                                    ; $6295: $ff
    rst RST_38                                    ; $6296: $ff
    rst RST_38                                    ; $6297: $ff
    rst RST_38                                    ; $6298: $ff
    rst RST_38                                    ; $6299: $ff
    rst RST_38                                    ; $629a: $ff
    rst RST_38                                    ; $629b: $ff
    rst RST_38                                    ; $629c: $ff
    rst RST_38                                    ; $629d: $ff
    rst RST_38                                    ; $629e: $ff
    rst RST_38                                    ; $629f: $ff
    rst RST_38                                    ; $62a0: $ff
    rst RST_38                                    ; $62a1: $ff
    rst RST_38                                    ; $62a2: $ff
    rst RST_38                                    ; $62a3: $ff
    rst RST_38                                    ; $62a4: $ff
    rst RST_38                                    ; $62a5: $ff
    rst RST_38                                    ; $62a6: $ff
    rst RST_38                                    ; $62a7: $ff
    rst RST_38                                    ; $62a8: $ff
    rst RST_38                                    ; $62a9: $ff
    rst RST_38                                    ; $62aa: $ff
    rst RST_38                                    ; $62ab: $ff
    rst RST_38                                    ; $62ac: $ff
    rst RST_38                                    ; $62ad: $ff
    rst RST_38                                    ; $62ae: $ff
    rst RST_38                                    ; $62af: $ff
    rst RST_38                                    ; $62b0: $ff
    rst RST_38                                    ; $62b1: $ff
    rst RST_38                                    ; $62b2: $ff
    rst RST_38                                    ; $62b3: $ff
    rst RST_38                                    ; $62b4: $ff
    rst RST_38                                    ; $62b5: $ff
    rst RST_38                                    ; $62b6: $ff
    rst RST_38                                    ; $62b7: $ff
    rst RST_38                                    ; $62b8: $ff
    rst RST_38                                    ; $62b9: $ff
    rst RST_38                                    ; $62ba: $ff
    rst RST_38                                    ; $62bb: $ff
    rst RST_38                                    ; $62bc: $ff
    rst RST_38                                    ; $62bd: $ff
    rst RST_38                                    ; $62be: $ff
    rst RST_38                                    ; $62bf: $ff
    rst RST_38                                    ; $62c0: $ff
    rst RST_38                                    ; $62c1: $ff
    rst RST_38                                    ; $62c2: $ff
    rst RST_38                                    ; $62c3: $ff
    rst RST_38                                    ; $62c4: $ff
    rst RST_38                                    ; $62c5: $ff
    rst RST_38                                    ; $62c6: $ff
    rst RST_38                                    ; $62c7: $ff
    rst RST_38                                    ; $62c8: $ff
    rst RST_38                                    ; $62c9: $ff
    rst RST_38                                    ; $62ca: $ff
    rst RST_38                                    ; $62cb: $ff
    rst RST_38                                    ; $62cc: $ff
    rst RST_38                                    ; $62cd: $ff
    rst RST_38                                    ; $62ce: $ff
    rst RST_38                                    ; $62cf: $ff
    rst RST_38                                    ; $62d0: $ff
    rst RST_38                                    ; $62d1: $ff
    rst RST_38                                    ; $62d2: $ff
    rst RST_38                                    ; $62d3: $ff
    rst RST_38                                    ; $62d4: $ff
    rst RST_38                                    ; $62d5: $ff
    rst RST_38                                    ; $62d6: $ff
    rst RST_38                                    ; $62d7: $ff
    rst RST_38                                    ; $62d8: $ff
    rst RST_38                                    ; $62d9: $ff
    rst RST_38                                    ; $62da: $ff
    rst RST_38                                    ; $62db: $ff
    rst RST_38                                    ; $62dc: $ff
    rst RST_38                                    ; $62dd: $ff
    rst RST_38                                    ; $62de: $ff
    rst RST_38                                    ; $62df: $ff
    rst RST_38                                    ; $62e0: $ff
    rst RST_38                                    ; $62e1: $ff
    rst RST_38                                    ; $62e2: $ff
    rst RST_38                                    ; $62e3: $ff
    rst RST_38                                    ; $62e4: $ff
    rst RST_38                                    ; $62e5: $ff
    rst RST_38                                    ; $62e6: $ff
    rst RST_38                                    ; $62e7: $ff
    rst RST_38                                    ; $62e8: $ff
    rst RST_38                                    ; $62e9: $ff
    rst RST_38                                    ; $62ea: $ff
    rst RST_38                                    ; $62eb: $ff
    rst RST_38                                    ; $62ec: $ff
    rst RST_38                                    ; $62ed: $ff
    rst RST_38                                    ; $62ee: $ff
    rst RST_38                                    ; $62ef: $ff
    rst RST_38                                    ; $62f0: $ff
    rst RST_38                                    ; $62f1: $ff
    rst RST_38                                    ; $62f2: $ff
    rst RST_38                                    ; $62f3: $ff
    rst RST_38                                    ; $62f4: $ff
    rst RST_38                                    ; $62f5: $ff
    rst RST_38                                    ; $62f6: $ff
    rst RST_38                                    ; $62f7: $ff
    rst RST_38                                    ; $62f8: $ff
    rst RST_38                                    ; $62f9: $ff
    rst RST_38                                    ; $62fa: $ff
    rst RST_38                                    ; $62fb: $ff
    rst RST_38                                    ; $62fc: $ff
    rst RST_38                                    ; $62fd: $ff
    rst RST_38                                    ; $62fe: $ff
    rst RST_38                                    ; $62ff: $ff
    rst RST_38                                    ; $6300: $ff
    rst RST_38                                    ; $6301: $ff
    rst RST_38                                    ; $6302: $ff
    rst RST_38                                    ; $6303: $ff
    rst RST_38                                    ; $6304: $ff
    rst RST_38                                    ; $6305: $ff
    rst RST_38                                    ; $6306: $ff
    rst RST_38                                    ; $6307: $ff
    rst RST_38                                    ; $6308: $ff
    rst RST_38                                    ; $6309: $ff
    rst RST_38                                    ; $630a: $ff
    rst RST_38                                    ; $630b: $ff
    rst RST_38                                    ; $630c: $ff
    rst RST_38                                    ; $630d: $ff
    rst RST_38                                    ; $630e: $ff
    rst RST_38                                    ; $630f: $ff
    rst RST_38                                    ; $6310: $ff
    rst RST_38                                    ; $6311: $ff
    rst RST_38                                    ; $6312: $ff
    rst RST_38                                    ; $6313: $ff
    rst RST_38                                    ; $6314: $ff
    rst RST_38                                    ; $6315: $ff
    rst RST_38                                    ; $6316: $ff
    rst RST_38                                    ; $6317: $ff
    rst RST_38                                    ; $6318: $ff
    rst RST_38                                    ; $6319: $ff
    rst RST_38                                    ; $631a: $ff
    rst RST_38                                    ; $631b: $ff
    rst RST_38                                    ; $631c: $ff
    rst RST_38                                    ; $631d: $ff
    rst RST_38                                    ; $631e: $ff
    rst RST_38                                    ; $631f: $ff
    rst RST_38                                    ; $6320: $ff
    rst RST_38                                    ; $6321: $ff
    rst RST_38                                    ; $6322: $ff
    rst RST_38                                    ; $6323: $ff
    rst RST_38                                    ; $6324: $ff
    rst RST_38                                    ; $6325: $ff
    rst RST_38                                    ; $6326: $ff
    rst RST_38                                    ; $6327: $ff
    rst RST_38                                    ; $6328: $ff
    rst RST_38                                    ; $6329: $ff
    rst RST_38                                    ; $632a: $ff
    rst RST_38                                    ; $632b: $ff
    rst RST_38                                    ; $632c: $ff
    rst RST_38                                    ; $632d: $ff
    rst RST_38                                    ; $632e: $ff
    rst RST_38                                    ; $632f: $ff
    rst RST_38                                    ; $6330: $ff
    rst RST_38                                    ; $6331: $ff
    rst RST_38                                    ; $6332: $ff
    rst RST_38                                    ; $6333: $ff
    rst RST_38                                    ; $6334: $ff
    rst RST_38                                    ; $6335: $ff
    rst RST_38                                    ; $6336: $ff
    rst RST_38                                    ; $6337: $ff
    rst RST_38                                    ; $6338: $ff
    rst RST_38                                    ; $6339: $ff
    rst RST_38                                    ; $633a: $ff
    rst RST_38                                    ; $633b: $ff
    rst RST_38                                    ; $633c: $ff
    rst RST_38                                    ; $633d: $ff
    rst RST_38                                    ; $633e: $ff
    rst RST_38                                    ; $633f: $ff
    rst RST_38                                    ; $6340: $ff
    rst RST_38                                    ; $6341: $ff
    rst RST_38                                    ; $6342: $ff
    rst RST_38                                    ; $6343: $ff
    rst RST_38                                    ; $6344: $ff
    rst RST_38                                    ; $6345: $ff
    rst RST_38                                    ; $6346: $ff
    rst RST_38                                    ; $6347: $ff
    rst RST_38                                    ; $6348: $ff
    rst RST_38                                    ; $6349: $ff
    rst RST_38                                    ; $634a: $ff
    rst RST_38                                    ; $634b: $ff
    rst RST_38                                    ; $634c: $ff
    rst RST_38                                    ; $634d: $ff
    rst RST_38                                    ; $634e: $ff
    rst RST_38                                    ; $634f: $ff
    rst RST_38                                    ; $6350: $ff
    rst RST_38                                    ; $6351: $ff
    rst RST_38                                    ; $6352: $ff
    rst RST_38                                    ; $6353: $ff
    rst RST_38                                    ; $6354: $ff
    rst RST_38                                    ; $6355: $ff
    rst RST_38                                    ; $6356: $ff
    rst RST_38                                    ; $6357: $ff
    rst RST_38                                    ; $6358: $ff
    rst RST_38                                    ; $6359: $ff
    rst RST_38                                    ; $635a: $ff
    rst RST_38                                    ; $635b: $ff
    rst RST_38                                    ; $635c: $ff
    rst RST_38                                    ; $635d: $ff
    rst RST_38                                    ; $635e: $ff
    rst RST_38                                    ; $635f: $ff
    rst RST_38                                    ; $6360: $ff
    rst RST_38                                    ; $6361: $ff
    rst RST_38                                    ; $6362: $ff
    rst RST_38                                    ; $6363: $ff
    rst RST_38                                    ; $6364: $ff
    rst RST_38                                    ; $6365: $ff
    rst RST_38                                    ; $6366: $ff
    rst RST_38                                    ; $6367: $ff
    rst RST_38                                    ; $6368: $ff
    rst RST_38                                    ; $6369: $ff
    rst RST_38                                    ; $636a: $ff
    rst RST_38                                    ; $636b: $ff
    rst RST_38                                    ; $636c: $ff
    rst RST_38                                    ; $636d: $ff
    rst RST_38                                    ; $636e: $ff
    rst RST_38                                    ; $636f: $ff
    rst RST_38                                    ; $6370: $ff
    rst RST_38                                    ; $6371: $ff
    rst RST_38                                    ; $6372: $ff
    rst RST_38                                    ; $6373: $ff
    rst RST_38                                    ; $6374: $ff
    rst RST_38                                    ; $6375: $ff
    rst RST_38                                    ; $6376: $ff
    rst RST_38                                    ; $6377: $ff
    rst RST_38                                    ; $6378: $ff
    rst RST_38                                    ; $6379: $ff
    rst RST_38                                    ; $637a: $ff
    rst RST_38                                    ; $637b: $ff
    rst RST_38                                    ; $637c: $ff
    rst RST_38                                    ; $637d: $ff
    rst RST_38                                    ; $637e: $ff
    rst RST_38                                    ; $637f: $ff
    rst RST_38                                    ; $6380: $ff
    rst RST_38                                    ; $6381: $ff
    rst RST_38                                    ; $6382: $ff
    rst RST_38                                    ; $6383: $ff
    rst RST_38                                    ; $6384: $ff
    rst RST_38                                    ; $6385: $ff
    rst RST_38                                    ; $6386: $ff
    rst RST_38                                    ; $6387: $ff
    rst RST_38                                    ; $6388: $ff
    rst RST_38                                    ; $6389: $ff
    rst RST_38                                    ; $638a: $ff
    rst RST_38                                    ; $638b: $ff
    rst RST_38                                    ; $638c: $ff
    rst RST_38                                    ; $638d: $ff
    rst RST_38                                    ; $638e: $ff
    rst RST_38                                    ; $638f: $ff
    rst RST_38                                    ; $6390: $ff
    rst RST_38                                    ; $6391: $ff
    rst RST_38                                    ; $6392: $ff
    rst RST_38                                    ; $6393: $ff
    rst RST_38                                    ; $6394: $ff
    rst RST_38                                    ; $6395: $ff
    rst RST_38                                    ; $6396: $ff
    rst RST_38                                    ; $6397: $ff
    rst RST_38                                    ; $6398: $ff
    rst RST_38                                    ; $6399: $ff
    rst RST_38                                    ; $639a: $ff
    rst RST_38                                    ; $639b: $ff
    rst RST_38                                    ; $639c: $ff
    rst RST_38                                    ; $639d: $ff
    rst RST_38                                    ; $639e: $ff
    rst RST_38                                    ; $639f: $ff
    rst RST_38                                    ; $63a0: $ff
    rst RST_38                                    ; $63a1: $ff
    rst RST_38                                    ; $63a2: $ff
    rst RST_38                                    ; $63a3: $ff
    rst RST_38                                    ; $63a4: $ff
    rst RST_38                                    ; $63a5: $ff
    rst RST_38                                    ; $63a6: $ff
    rst RST_38                                    ; $63a7: $ff
    rst RST_38                                    ; $63a8: $ff
    rst RST_38                                    ; $63a9: $ff
    rst RST_38                                    ; $63aa: $ff
    rst RST_38                                    ; $63ab: $ff
    rst RST_38                                    ; $63ac: $ff
    rst RST_38                                    ; $63ad: $ff
    rst RST_38                                    ; $63ae: $ff
    rst RST_38                                    ; $63af: $ff
    rst RST_38                                    ; $63b0: $ff
    rst RST_38                                    ; $63b1: $ff
    rst RST_38                                    ; $63b2: $ff
    rst RST_38                                    ; $63b3: $ff
    rst RST_38                                    ; $63b4: $ff
    rst RST_38                                    ; $63b5: $ff
    rst RST_38                                    ; $63b6: $ff
    rst RST_38                                    ; $63b7: $ff
    rst RST_38                                    ; $63b8: $ff
    rst RST_38                                    ; $63b9: $ff
    rst RST_38                                    ; $63ba: $ff
    rst RST_38                                    ; $63bb: $ff
    rst RST_38                                    ; $63bc: $ff
    rst RST_38                                    ; $63bd: $ff
    rst RST_38                                    ; $63be: $ff
    rst RST_38                                    ; $63bf: $ff
    rst RST_38                                    ; $63c0: $ff
    rst RST_38                                    ; $63c1: $ff
    rst RST_38                                    ; $63c2: $ff
    rst RST_38                                    ; $63c3: $ff
    rst RST_38                                    ; $63c4: $ff
    rst RST_38                                    ; $63c5: $ff
    rst RST_38                                    ; $63c6: $ff
    rst RST_38                                    ; $63c7: $ff
    rst RST_38                                    ; $63c8: $ff
    rst RST_38                                    ; $63c9: $ff
    rst RST_38                                    ; $63ca: $ff
    rst RST_38                                    ; $63cb: $ff
    rst RST_38                                    ; $63cc: $ff
    rst RST_38                                    ; $63cd: $ff
    rst RST_38                                    ; $63ce: $ff
    rst RST_38                                    ; $63cf: $ff
    rst RST_38                                    ; $63d0: $ff
    rst RST_38                                    ; $63d1: $ff
    rst RST_38                                    ; $63d2: $ff
    rst RST_38                                    ; $63d3: $ff
    rst RST_38                                    ; $63d4: $ff
    rst RST_38                                    ; $63d5: $ff
    rst RST_38                                    ; $63d6: $ff
    rst RST_38                                    ; $63d7: $ff
    rst RST_38                                    ; $63d8: $ff
    rst RST_38                                    ; $63d9: $ff
    rst RST_38                                    ; $63da: $ff
    rst RST_38                                    ; $63db: $ff
    rst RST_38                                    ; $63dc: $ff
    rst RST_38                                    ; $63dd: $ff
    rst RST_38                                    ; $63de: $ff
    rst RST_38                                    ; $63df: $ff
    rst RST_38                                    ; $63e0: $ff
    rst RST_38                                    ; $63e1: $ff
    rst RST_38                                    ; $63e2: $ff
    rst RST_38                                    ; $63e3: $ff
    rst RST_38                                    ; $63e4: $ff
    rst RST_38                                    ; $63e5: $ff
    rst RST_38                                    ; $63e6: $ff
    rst RST_38                                    ; $63e7: $ff
    rst RST_38                                    ; $63e8: $ff
    rst RST_38                                    ; $63e9: $ff
    rst RST_38                                    ; $63ea: $ff
    rst RST_38                                    ; $63eb: $ff
    rst RST_38                                    ; $63ec: $ff
    rst RST_38                                    ; $63ed: $ff
    rst RST_38                                    ; $63ee: $ff
    rst RST_38                                    ; $63ef: $ff
    rst RST_38                                    ; $63f0: $ff
    rst RST_38                                    ; $63f1: $ff
    rst RST_38                                    ; $63f2: $ff
    rst RST_38                                    ; $63f3: $ff
    rst RST_38                                    ; $63f4: $ff
    rst RST_38                                    ; $63f5: $ff
    rst RST_38                                    ; $63f6: $ff
    rst RST_38                                    ; $63f7: $ff
    rst RST_38                                    ; $63f8: $ff
    rst RST_38                                    ; $63f9: $ff
    rst RST_38                                    ; $63fa: $ff
    rst RST_38                                    ; $63fb: $ff
    rst RST_38                                    ; $63fc: $ff
    rst RST_38                                    ; $63fd: $ff
    rst RST_38                                    ; $63fe: $ff
    rst RST_38                                    ; $63ff: $ff
    and a                                         ; $6400: $a7
    add l                                         ; $6401: $85
    add [hl]                                      ; $6402: $86
    add a                                         ; $6403: $87
    adc b                                         ; $6404: $88
    and [hl]                                      ; $6405: $a6
    and [hl]                                      ; $6406: $a6
    and [hl]                                      ; $6407: $a6
    and [hl]                                      ; $6408: $a6
    and [hl]                                      ; $6409: $a6
    and [hl]                                      ; $640a: $a6
    and [hl]                                      ; $640b: $a6
    and [hl]                                      ; $640c: $a6
    and [hl]                                      ; $640d: $a6
    and [hl]                                      ; $640e: $a6
    and [hl]                                      ; $640f: $a6
    and [hl]                                      ; $6410: $a6
    and [hl]                                      ; $6411: $a6
    and [hl]                                      ; $6412: $a6
    and a                                         ; $6413: $a7
    rst RST_38                                    ; $6414: $ff
    rst RST_38                                    ; $6415: $ff
    rst RST_38                                    ; $6416: $ff
    rst RST_38                                    ; $6417: $ff
    rst RST_38                                    ; $6418: $ff
    rst RST_38                                    ; $6419: $ff
    rst RST_38                                    ; $641a: $ff
    rst RST_38                                    ; $641b: $ff
    rst RST_38                                    ; $641c: $ff
    rst RST_38                                    ; $641d: $ff
    rst RST_38                                    ; $641e: $ff
    rst RST_38                                    ; $641f: $ff
    and a                                         ; $6420: $a7
    adc c                                         ; $6421: $89
    adc d                                         ; $6422: $8a
    adc e                                         ; $6423: $8b
    adc h                                         ; $6424: $8c
    adc l                                         ; $6425: $8d
    ld a, [hl]                                    ; $6426: $7e
    nop                                           ; $6427: $00
    ld bc, $0302                                  ; $6428: $01 $02 $03
    inc b                                         ; $642b: $04
    dec b                                         ; $642c: $05
    ld b, $07                                     ; $642d: $06 $07
    cp b                                          ; $642f: $b8
    cp c                                          ; $6430: $b9
    cp d                                          ; $6431: $ba
    cp e                                          ; $6432: $bb
    and a                                         ; $6433: $a7
    rst RST_38                                    ; $6434: $ff
    rst RST_38                                    ; $6435: $ff
    rst RST_38                                    ; $6436: $ff
    rst RST_38                                    ; $6437: $ff
    rst RST_38                                    ; $6438: $ff
    rst RST_38                                    ; $6439: $ff
    rst RST_38                                    ; $643a: $ff
    rst RST_38                                    ; $643b: $ff
    rst RST_38                                    ; $643c: $ff
    rst RST_38                                    ; $643d: $ff
    rst RST_38                                    ; $643e: $ff
    rst RST_38                                    ; $643f: $ff
    and a                                         ; $6440: $a7
    adc [hl]                                      ; $6441: $8e
    adc a                                         ; $6442: $8f
    sub b                                         ; $6443: $90
    sub c                                         ; $6444: $91
    sub d                                         ; $6445: $92
    sub e                                         ; $6446: $93
    db $10                                        ; $6447: $10
    ld de, $1312                                  ; $6448: $11 $12 $13
    inc d                                         ; $644b: $14
    dec d                                         ; $644c: $15
    ld d, $17                                     ; $644d: $16 $17
    cp b                                          ; $644f: $b8
    cp d                                          ; $6450: $ba
    cp e                                          ; $6451: $bb
    cp h                                          ; $6452: $bc
    and a                                         ; $6453: $a7
    rst RST_38                                    ; $6454: $ff
    rst RST_38                                    ; $6455: $ff
    rst RST_38                                    ; $6456: $ff
    rst RST_38                                    ; $6457: $ff
    rst RST_38                                    ; $6458: $ff
    rst RST_38                                    ; $6459: $ff
    rst RST_38                                    ; $645a: $ff
    rst RST_38                                    ; $645b: $ff
    rst RST_38                                    ; $645c: $ff
    rst RST_38                                    ; $645d: $ff
    rst RST_38                                    ; $645e: $ff
    rst RST_38                                    ; $645f: $ff
    and a                                         ; $6460: $a7
    sub h                                         ; $6461: $94
    sub l                                         ; $6462: $95
    sub [hl]                                      ; $6463: $96
    sub a                                         ; $6464: $97
    sbc b                                         ; $6465: $98
    sbc c                                         ; $6466: $99
    jr nz, jr_00b_648a                            ; $6467: $20 $21

    ld [hl+], a                                   ; $6469: $22
    inc hl                                        ; $646a: $23
    inc h                                         ; $646b: $24
    dec h                                         ; $646c: $25
    ld h, $27                                     ; $646d: $26 $27
    cp b                                          ; $646f: $b8
    cp c                                          ; $6470: $b9
    cp d                                          ; $6471: $ba
    cp e                                          ; $6472: $bb
    and a                                         ; $6473: $a7
    rst RST_38                                    ; $6474: $ff
    rst RST_38                                    ; $6475: $ff
    rst RST_38                                    ; $6476: $ff
    rst RST_38                                    ; $6477: $ff
    rst RST_38                                    ; $6478: $ff
    rst RST_38                                    ; $6479: $ff
    rst RST_38                                    ; $647a: $ff
    rst RST_38                                    ; $647b: $ff
    rst RST_38                                    ; $647c: $ff
    rst RST_38                                    ; $647d: $ff
    rst RST_38                                    ; $647e: $ff
    rst RST_38                                    ; $647f: $ff
    and a                                         ; $6480: $a7
    sbc d                                         ; $6481: $9a
    sbc e                                         ; $6482: $9b
    sbc h                                         ; $6483: $9c
    sbc l                                         ; $6484: $9d
    sbc [hl]                                      ; $6485: $9e
    sbc a                                         ; $6486: $9f
    jr nc, jr_00b_64ba                            ; $6487: $30 $31

    ld [hl-], a                                   ; $6489: $32

jr_00b_648a:
    inc sp                                        ; $648a: $33
    inc [hl]                                      ; $648b: $34
    dec [hl]                                      ; $648c: $35
    ld [hl], $37                                  ; $648d: $36 $37
    cp b                                          ; $648f: $b8
    cp d                                          ; $6490: $ba
    cp e                                          ; $6491: $bb
    cp h                                          ; $6492: $bc
    and a                                         ; $6493: $a7
    rst RST_38                                    ; $6494: $ff
    rst RST_38                                    ; $6495: $ff
    rst RST_38                                    ; $6496: $ff
    rst RST_38                                    ; $6497: $ff
    rst RST_38                                    ; $6498: $ff
    rst RST_38                                    ; $6499: $ff
    rst RST_38                                    ; $649a: $ff
    rst RST_38                                    ; $649b: $ff
    rst RST_38                                    ; $649c: $ff
    rst RST_38                                    ; $649d: $ff
    rst RST_38                                    ; $649e: $ff
    rst RST_38                                    ; $649f: $ff
    and a                                         ; $64a0: $a7
    and b                                         ; $64a1: $a0
    and c                                         ; $64a2: $a1
    and d                                         ; $64a3: $a2
    and e                                         ; $64a4: $a3
    and h                                         ; $64a5: $a4
    and l                                         ; $64a6: $a5
    ld b, b                                       ; $64a7: $40
    ld b, c                                       ; $64a8: $41
    ld b, d                                       ; $64a9: $42
    ld b, e                                       ; $64aa: $43
    ld b, h                                       ; $64ab: $44
    ld b, l                                       ; $64ac: $45
    ld b, [hl]                                    ; $64ad: $46
    ld b, a                                       ; $64ae: $47
    cp b                                          ; $64af: $b8
    cp c                                          ; $64b0: $b9
    cp d                                          ; $64b1: $ba
    cp e                                          ; $64b2: $bb
    and a                                         ; $64b3: $a7
    rst RST_38                                    ; $64b4: $ff
    rst RST_38                                    ; $64b5: $ff
    rst RST_38                                    ; $64b6: $ff
    rst RST_38                                    ; $64b7: $ff
    rst RST_38                                    ; $64b8: $ff
    rst RST_38                                    ; $64b9: $ff

jr_00b_64ba:
    rst RST_38                                    ; $64ba: $ff
    rst RST_38                                    ; $64bb: $ff
    rst RST_38                                    ; $64bc: $ff
    rst RST_38                                    ; $64bd: $ff
    rst RST_38                                    ; $64be: $ff
    rst RST_38                                    ; $64bf: $ff
    and a                                         ; $64c0: $a7
    xor b                                         ; $64c1: $a8
    xor c                                         ; $64c2: $a9
    ret nz                                        ; $64c3: $c0

    pop bc                                        ; $64c4: $c1
    jp nz, $c4c3                                  ; $64c5: $c2 $c3 $c4

    push bc                                       ; $64c8: $c5
    add $c7                                       ; $64c9: $c6 $c7
    ret z                                         ; $64cb: $c8

    ret                                           ; $64cc: $c9


    jp z, $b8cb                                   ; $64cd: $ca $cb $b8

    cp d                                          ; $64d0: $ba
    cp e                                          ; $64d1: $bb
    cp h                                          ; $64d2: $bc
    and a                                         ; $64d3: $a7
    rst RST_38                                    ; $64d4: $ff
    rst RST_38                                    ; $64d5: $ff
    rst RST_38                                    ; $64d6: $ff
    rst RST_38                                    ; $64d7: $ff
    rst RST_38                                    ; $64d8: $ff
    rst RST_38                                    ; $64d9: $ff
    rst RST_38                                    ; $64da: $ff
    rst RST_38                                    ; $64db: $ff
    rst RST_38                                    ; $64dc: $ff
    rst RST_38                                    ; $64dd: $ff
    rst RST_38                                    ; $64de: $ff
    rst RST_38                                    ; $64df: $ff
    and a                                         ; $64e0: $a7
    xor d                                         ; $64e1: $aa
    xor e                                         ; $64e2: $ab
    ret nc                                        ; $64e3: $d0

    pop de                                        ; $64e4: $d1
    jp nc, $d4d3                                  ; $64e5: $d2 $d3 $d4

    push de                                       ; $64e8: $d5
    sub $d7                                       ; $64e9: $d6 $d7
    ret c                                         ; $64eb: $d8

    reti                                          ; $64ec: $d9


    jp c, $b8db                                   ; $64ed: $da $db $b8

    cp c                                          ; $64f0: $b9
    cp d                                          ; $64f1: $ba
    cp e                                          ; $64f2: $bb
    and a                                         ; $64f3: $a7
    rst RST_38                                    ; $64f4: $ff
    rst RST_38                                    ; $64f5: $ff
    rst RST_38                                    ; $64f6: $ff
    rst RST_38                                    ; $64f7: $ff
    rst RST_38                                    ; $64f8: $ff
    rst RST_38                                    ; $64f9: $ff
    rst RST_38                                    ; $64fa: $ff
    rst RST_38                                    ; $64fb: $ff
    rst RST_38                                    ; $64fc: $ff
    rst RST_38                                    ; $64fd: $ff
    rst RST_38                                    ; $64fe: $ff
    rst RST_38                                    ; $64ff: $ff
    and a                                         ; $6500: $a7
    xor h                                         ; $6501: $ac
    xor l                                         ; $6502: $ad
    ldh [$ffe1], a                                ; $6503: $e0 $e1
    ldh [c], a                                    ; $6505: $e2
    db $e3                                        ; $6506: $e3
    db $e4                                        ; $6507: $e4
    push hl                                       ; $6508: $e5
    and $e7                                       ; $6509: $e6 $e7
    add sp, -$17                                  ; $650b: $e8 $e9
    ld [$b8eb], a                                 ; $650d: $ea $eb $b8
    cp d                                          ; $6510: $ba
    cp e                                          ; $6511: $bb
    cp h                                          ; $6512: $bc
    and a                                         ; $6513: $a7
    rst RST_38                                    ; $6514: $ff
    rst RST_38                                    ; $6515: $ff
    rst RST_38                                    ; $6516: $ff
    rst RST_38                                    ; $6517: $ff
    rst RST_38                                    ; $6518: $ff
    rst RST_38                                    ; $6519: $ff
    rst RST_38                                    ; $651a: $ff
    rst RST_38                                    ; $651b: $ff
    rst RST_38                                    ; $651c: $ff
    rst RST_38                                    ; $651d: $ff
    rst RST_38                                    ; $651e: $ff
    rst RST_38                                    ; $651f: $ff
    and a                                         ; $6520: $a7
    xor [hl]                                      ; $6521: $ae
    xor a                                         ; $6522: $af
    ldh a, [$fff1]                                ; $6523: $f0 $f1
    ldh a, [c]                                    ; $6525: $f2
    di                                            ; $6526: $f3
    db $f4                                        ; $6527: $f4
    push af                                       ; $6528: $f5
    or $f7                                        ; $6529: $f6 $f7
    ld hl, sp-$07                                 ; $652b: $f8 $f9
    ld a, [$b8fb]                                 ; $652d: $fa $fb $b8
    cp c                                          ; $6530: $b9
    cp d                                          ; $6531: $ba
    cp e                                          ; $6532: $bb
    and a                                         ; $6533: $a7
    rst RST_38                                    ; $6534: $ff
    rst RST_38                                    ; $6535: $ff
    rst RST_38                                    ; $6536: $ff
    rst RST_38                                    ; $6537: $ff
    rst RST_38                                    ; $6538: $ff
    rst RST_38                                    ; $6539: $ff
    rst RST_38                                    ; $653a: $ff
    rst RST_38                                    ; $653b: $ff
    rst RST_38                                    ; $653c: $ff
    rst RST_38                                    ; $653d: $ff
    rst RST_38                                    ; $653e: $ff
    rst RST_38                                    ; $653f: $ff
    and a                                         ; $6540: $a7
    or b                                          ; $6541: $b0
    or c                                          ; $6542: $b1
    nop                                           ; $6543: $00
    ld bc, $0302                                  ; $6544: $01 $02 $03
    inc b                                         ; $6547: $04
    dec b                                         ; $6548: $05
    ld b, $07                                     ; $6549: $06 $07
    ld [$0a09], sp                                ; $654b: $08 $09 $0a
    dec bc                                        ; $654e: $0b
    cp b                                          ; $654f: $b8
    cp d                                          ; $6550: $ba
    cp e                                          ; $6551: $bb
    cp h                                          ; $6552: $bc
    and a                                         ; $6553: $a7
    rst RST_38                                    ; $6554: $ff
    rst RST_38                                    ; $6555: $ff
    rst RST_38                                    ; $6556: $ff
    rst RST_38                                    ; $6557: $ff
    rst RST_38                                    ; $6558: $ff
    rst RST_38                                    ; $6559: $ff
    rst RST_38                                    ; $655a: $ff
    rst RST_38                                    ; $655b: $ff
    rst RST_38                                    ; $655c: $ff
    rst RST_38                                    ; $655d: $ff
    rst RST_38                                    ; $655e: $ff
    rst RST_38                                    ; $655f: $ff
    and a                                         ; $6560: $a7
    or d                                          ; $6561: $b2
    or e                                          ; $6562: $b3
    db $10                                        ; $6563: $10
    ld de, $1312                                  ; $6564: $11 $12 $13
    inc d                                         ; $6567: $14
    dec d                                         ; $6568: $15
    ld d, $17                                     ; $6569: $16 $17
    jr jr_00b_6586                                ; $656b: $18 $19

    ld a, [de]                                    ; $656d: $1a
    dec de                                        ; $656e: $1b
    cp b                                          ; $656f: $b8
    cp c                                          ; $6570: $b9
    cp d                                          ; $6571: $ba
    cp e                                          ; $6572: $bb
    and a                                         ; $6573: $a7
    rst RST_38                                    ; $6574: $ff
    rst RST_38                                    ; $6575: $ff
    rst RST_38                                    ; $6576: $ff
    rst RST_38                                    ; $6577: $ff
    rst RST_38                                    ; $6578: $ff
    rst RST_38                                    ; $6579: $ff
    rst RST_38                                    ; $657a: $ff
    rst RST_38                                    ; $657b: $ff
    rst RST_38                                    ; $657c: $ff
    rst RST_38                                    ; $657d: $ff
    rst RST_38                                    ; $657e: $ff
    rst RST_38                                    ; $657f: $ff
    and a                                         ; $6580: $a7
    or h                                          ; $6581: $b4
    or l                                          ; $6582: $b5
    jr nz, jr_00b_65a6                            ; $6583: $20 $21

    ld [hl+], a                                   ; $6585: $22

jr_00b_6586:
    inc hl                                        ; $6586: $23
    inc h                                         ; $6587: $24
    dec h                                         ; $6588: $25
    ld h, $27                                     ; $6589: $26 $27
    jr z, jr_00b_65b6                             ; $658b: $28 $29

    ld a, [hl+]                                   ; $658d: $2a
    dec hl                                        ; $658e: $2b
    cp b                                          ; $658f: $b8
    cp d                                          ; $6590: $ba
    cp e                                          ; $6591: $bb
    cp h                                          ; $6592: $bc
    and a                                         ; $6593: $a7
    rst RST_38                                    ; $6594: $ff
    rst RST_38                                    ; $6595: $ff
    rst RST_38                                    ; $6596: $ff
    rst RST_38                                    ; $6597: $ff
    rst RST_38                                    ; $6598: $ff
    rst RST_38                                    ; $6599: $ff
    rst RST_38                                    ; $659a: $ff
    rst RST_38                                    ; $659b: $ff
    rst RST_38                                    ; $659c: $ff
    rst RST_38                                    ; $659d: $ff
    rst RST_38                                    ; $659e: $ff
    rst RST_38                                    ; $659f: $ff
    and a                                         ; $65a0: $a7
    or [hl]                                       ; $65a1: $b6
    or a                                          ; $65a2: $b7
    jr nc, jr_00b_65d6                            ; $65a3: $30 $31

    ld [hl-], a                                   ; $65a5: $32

jr_00b_65a6:
    inc sp                                        ; $65a6: $33
    inc [hl]                                      ; $65a7: $34
    dec [hl]                                      ; $65a8: $35
    ld [hl], $37                                  ; $65a9: $36 $37
    jr c, jr_00b_65e6                             ; $65ab: $38 $39

    ld a, [hl-]                                   ; $65ad: $3a
    dec sp                                        ; $65ae: $3b
    cp b                                          ; $65af: $b8
    cp c                                          ; $65b0: $b9
    cp d                                          ; $65b1: $ba
    cp e                                          ; $65b2: $bb
    and a                                         ; $65b3: $a7
    rst RST_38                                    ; $65b4: $ff
    rst RST_38                                    ; $65b5: $ff

jr_00b_65b6:
    rst RST_38                                    ; $65b6: $ff
    rst RST_38                                    ; $65b7: $ff
    rst RST_38                                    ; $65b8: $ff
    rst RST_38                                    ; $65b9: $ff
    rst RST_38                                    ; $65ba: $ff
    rst RST_38                                    ; $65bb: $ff
    rst RST_38                                    ; $65bc: $ff
    rst RST_38                                    ; $65bd: $ff
    rst RST_38                                    ; $65be: $ff
    rst RST_38                                    ; $65bf: $ff
    and a                                         ; $65c0: $a7
    ld b, b                                       ; $65c1: $40
    ld b, c                                       ; $65c2: $41
    ld b, d                                       ; $65c3: $42
    ld b, e                                       ; $65c4: $43
    ld b, h                                       ; $65c5: $44
    ld b, l                                       ; $65c6: $45
    ld b, [hl]                                    ; $65c7: $46
    ld b, a                                       ; $65c8: $47
    ld c, b                                       ; $65c9: $48
    ld c, c                                       ; $65ca: $49
    ld c, d                                       ; $65cb: $4a
    ld c, e                                       ; $65cc: $4b
    ld c, h                                       ; $65cd: $4c
    ld c, l                                       ; $65ce: $4d
    ld c, [hl]                                    ; $65cf: $4e
    ld c, a                                       ; $65d0: $4f
    inc e                                         ; $65d1: $1c
    dec e                                         ; $65d2: $1d
    and a                                         ; $65d3: $a7
    rst RST_38                                    ; $65d4: $ff
    rst RST_38                                    ; $65d5: $ff

jr_00b_65d6:
    rst RST_38                                    ; $65d6: $ff
    rst RST_38                                    ; $65d7: $ff
    rst RST_38                                    ; $65d8: $ff
    rst RST_38                                    ; $65d9: $ff
    rst RST_38                                    ; $65da: $ff
    rst RST_38                                    ; $65db: $ff
    rst RST_38                                    ; $65dc: $ff
    rst RST_38                                    ; $65dd: $ff
    rst RST_38                                    ; $65de: $ff
    rst RST_38                                    ; $65df: $ff
    and a                                         ; $65e0: $a7
    ld d, b                                       ; $65e1: $50
    ld d, c                                       ; $65e2: $51
    ld d, d                                       ; $65e3: $52
    ld d, e                                       ; $65e4: $53
    ld d, h                                       ; $65e5: $54

jr_00b_65e6:
    ld d, l                                       ; $65e6: $55
    ld d, [hl]                                    ; $65e7: $56
    ld d, a                                       ; $65e8: $57
    ld e, b                                       ; $65e9: $58
    ld e, c                                       ; $65ea: $59
    ld e, d                                       ; $65eb: $5a
    ld e, e                                       ; $65ec: $5b
    ld e, h                                       ; $65ed: $5c
    ld e, l                                       ; $65ee: $5d
    ld e, [hl]                                    ; $65ef: $5e
    ld e, a                                       ; $65f0: $5f
    inc l                                         ; $65f1: $2c
    dec l                                         ; $65f2: $2d
    and a                                         ; $65f3: $a7
    rst RST_38                                    ; $65f4: $ff
    rst RST_38                                    ; $65f5: $ff
    rst RST_38                                    ; $65f6: $ff
    rst RST_38                                    ; $65f7: $ff
    rst RST_38                                    ; $65f8: $ff
    rst RST_38                                    ; $65f9: $ff
    rst RST_38                                    ; $65fa: $ff
    rst RST_38                                    ; $65fb: $ff
    rst RST_38                                    ; $65fc: $ff
    rst RST_38                                    ; $65fd: $ff
    rst RST_38                                    ; $65fe: $ff
    rst RST_38                                    ; $65ff: $ff
    and a                                         ; $6600: $a7
    ld h, b                                       ; $6601: $60
    ld h, c                                       ; $6602: $61
    ld h, d                                       ; $6603: $62
    ld h, e                                       ; $6604: $63
    ld h, h                                       ; $6605: $64
    ld h, l                                       ; $6606: $65
    ld h, [hl]                                    ; $6607: $66
    ld h, a                                       ; $6608: $67
    ld l, b                                       ; $6609: $68
    ld l, c                                       ; $660a: $69
    ld l, d                                       ; $660b: $6a
    ld l, e                                       ; $660c: $6b
    ld l, h                                       ; $660d: $6c
    ld l, l                                       ; $660e: $6d
    ld l, [hl]                                    ; $660f: $6e
    ld l, a                                       ; $6610: $6f
    inc a                                         ; $6611: $3c
    dec a                                         ; $6612: $3d
    and a                                         ; $6613: $a7
    rst RST_38                                    ; $6614: $ff
    rst RST_38                                    ; $6615: $ff
    rst RST_38                                    ; $6616: $ff
    rst RST_38                                    ; $6617: $ff
    rst RST_38                                    ; $6618: $ff
    rst RST_38                                    ; $6619: $ff
    rst RST_38                                    ; $661a: $ff
    rst RST_38                                    ; $661b: $ff
    rst RST_38                                    ; $661c: $ff
    rst RST_38                                    ; $661d: $ff
    rst RST_38                                    ; $661e: $ff
    rst RST_38                                    ; $661f: $ff
    and a                                         ; $6620: $a7
    and [hl]                                      ; $6621: $a6
    and [hl]                                      ; $6622: $a6
    and [hl]                                      ; $6623: $a6
    and [hl]                                      ; $6624: $a6
    and [hl]                                      ; $6625: $a6
    and [hl]                                      ; $6626: $a6
    and [hl]                                      ; $6627: $a6
    and [hl]                                      ; $6628: $a6
    and [hl]                                      ; $6629: $a6
    and [hl]                                      ; $662a: $a6
    and [hl]                                      ; $662b: $a6
    and [hl]                                      ; $662c: $a6
    and [hl]                                      ; $662d: $a6
    and [hl]                                      ; $662e: $a6
    and [hl]                                      ; $662f: $a6
    and [hl]                                      ; $6630: $a6
    and [hl]                                      ; $6631: $a6
    and [hl]                                      ; $6632: $a6
    and a                                         ; $6633: $a7
    rst RST_38                                    ; $6634: $ff
    rst RST_38                                    ; $6635: $ff
    rst RST_38                                    ; $6636: $ff
    rst RST_38                                    ; $6637: $ff
    rst RST_38                                    ; $6638: $ff
    rst RST_38                                    ; $6639: $ff
    rst RST_38                                    ; $663a: $ff
    rst RST_38                                    ; $663b: $ff
    rst RST_38                                    ; $663c: $ff
    rst RST_38                                    ; $663d: $ff
    rst RST_38                                    ; $663e: $ff
    rst RST_38                                    ; $663f: $ff
    rst RST_38                                    ; $6640: $ff
    rst RST_38                                    ; $6641: $ff
    rst RST_38                                    ; $6642: $ff
    rst RST_38                                    ; $6643: $ff
    rst RST_38                                    ; $6644: $ff
    rst RST_38                                    ; $6645: $ff
    rst RST_38                                    ; $6646: $ff
    rst RST_38                                    ; $6647: $ff
    rst RST_38                                    ; $6648: $ff
    rst RST_38                                    ; $6649: $ff
    rst RST_38                                    ; $664a: $ff
    rst RST_38                                    ; $664b: $ff
    rst RST_38                                    ; $664c: $ff
    rst RST_38                                    ; $664d: $ff
    rst RST_38                                    ; $664e: $ff
    rst RST_38                                    ; $664f: $ff
    rst RST_38                                    ; $6650: $ff
    rst RST_38                                    ; $6651: $ff
    rst RST_38                                    ; $6652: $ff
    rst RST_38                                    ; $6653: $ff
    rst RST_38                                    ; $6654: $ff
    rst RST_38                                    ; $6655: $ff
    rst RST_38                                    ; $6656: $ff
    rst RST_38                                    ; $6657: $ff
    rst RST_38                                    ; $6658: $ff
    rst RST_38                                    ; $6659: $ff
    rst RST_38                                    ; $665a: $ff
    rst RST_38                                    ; $665b: $ff
    rst RST_38                                    ; $665c: $ff
    rst RST_38                                    ; $665d: $ff
    rst RST_38                                    ; $665e: $ff
    rst RST_38                                    ; $665f: $ff
    rst RST_38                                    ; $6660: $ff
    rst RST_38                                    ; $6661: $ff
    rst RST_38                                    ; $6662: $ff
    rst RST_38                                    ; $6663: $ff
    rst RST_38                                    ; $6664: $ff
    rst RST_38                                    ; $6665: $ff
    rst RST_38                                    ; $6666: $ff
    rst RST_38                                    ; $6667: $ff
    rst RST_38                                    ; $6668: $ff
    rst RST_38                                    ; $6669: $ff
    rst RST_38                                    ; $666a: $ff
    rst RST_38                                    ; $666b: $ff
    rst RST_38                                    ; $666c: $ff
    rst RST_38                                    ; $666d: $ff
    rst RST_38                                    ; $666e: $ff
    rst RST_38                                    ; $666f: $ff
    rst RST_38                                    ; $6670: $ff
    rst RST_38                                    ; $6671: $ff
    rst RST_38                                    ; $6672: $ff
    rst RST_38                                    ; $6673: $ff
    rst RST_38                                    ; $6674: $ff
    rst RST_38                                    ; $6675: $ff
    rst RST_38                                    ; $6676: $ff
    rst RST_38                                    ; $6677: $ff
    rst RST_38                                    ; $6678: $ff
    rst RST_38                                    ; $6679: $ff
    rst RST_38                                    ; $667a: $ff
    rst RST_38                                    ; $667b: $ff
    rst RST_38                                    ; $667c: $ff
    rst RST_38                                    ; $667d: $ff
    rst RST_38                                    ; $667e: $ff
    rst RST_38                                    ; $667f: $ff
    rst RST_38                                    ; $6680: $ff
    rst RST_38                                    ; $6681: $ff
    rst RST_38                                    ; $6682: $ff
    rst RST_38                                    ; $6683: $ff
    rst RST_38                                    ; $6684: $ff
    rst RST_38                                    ; $6685: $ff
    rst RST_38                                    ; $6686: $ff
    rst RST_38                                    ; $6687: $ff
    rst RST_38                                    ; $6688: $ff
    rst RST_38                                    ; $6689: $ff
    rst RST_38                                    ; $668a: $ff
    rst RST_38                                    ; $668b: $ff
    rst RST_38                                    ; $668c: $ff
    rst RST_38                                    ; $668d: $ff
    rst RST_38                                    ; $668e: $ff
    rst RST_38                                    ; $668f: $ff
    rst RST_38                                    ; $6690: $ff
    rst RST_38                                    ; $6691: $ff
    rst RST_38                                    ; $6692: $ff
    rst RST_38                                    ; $6693: $ff
    rst RST_38                                    ; $6694: $ff
    rst RST_38                                    ; $6695: $ff
    rst RST_38                                    ; $6696: $ff
    rst RST_38                                    ; $6697: $ff
    rst RST_38                                    ; $6698: $ff
    rst RST_38                                    ; $6699: $ff
    rst RST_38                                    ; $669a: $ff
    rst RST_38                                    ; $669b: $ff
    rst RST_38                                    ; $669c: $ff
    rst RST_38                                    ; $669d: $ff
    rst RST_38                                    ; $669e: $ff
    rst RST_38                                    ; $669f: $ff
    rst RST_38                                    ; $66a0: $ff
    rst RST_38                                    ; $66a1: $ff
    rst RST_38                                    ; $66a2: $ff
    rst RST_38                                    ; $66a3: $ff
    rst RST_38                                    ; $66a4: $ff
    rst RST_38                                    ; $66a5: $ff
    rst RST_38                                    ; $66a6: $ff
    rst RST_38                                    ; $66a7: $ff
    rst RST_38                                    ; $66a8: $ff
    rst RST_38                                    ; $66a9: $ff
    rst RST_38                                    ; $66aa: $ff
    rst RST_38                                    ; $66ab: $ff
    rst RST_38                                    ; $66ac: $ff
    rst RST_38                                    ; $66ad: $ff
    rst RST_38                                    ; $66ae: $ff
    rst RST_38                                    ; $66af: $ff
    rst RST_38                                    ; $66b0: $ff
    rst RST_38                                    ; $66b1: $ff
    rst RST_38                                    ; $66b2: $ff
    rst RST_38                                    ; $66b3: $ff
    rst RST_38                                    ; $66b4: $ff
    rst RST_38                                    ; $66b5: $ff
    rst RST_38                                    ; $66b6: $ff
    rst RST_38                                    ; $66b7: $ff
    rst RST_38                                    ; $66b8: $ff
    rst RST_38                                    ; $66b9: $ff
    rst RST_38                                    ; $66ba: $ff
    rst RST_38                                    ; $66bb: $ff
    rst RST_38                                    ; $66bc: $ff
    rst RST_38                                    ; $66bd: $ff
    rst RST_38                                    ; $66be: $ff
    rst RST_38                                    ; $66bf: $ff
    rst RST_38                                    ; $66c0: $ff
    rst RST_38                                    ; $66c1: $ff
    rst RST_38                                    ; $66c2: $ff
    rst RST_38                                    ; $66c3: $ff
    rst RST_38                                    ; $66c4: $ff
    rst RST_38                                    ; $66c5: $ff
    rst RST_38                                    ; $66c6: $ff
    rst RST_38                                    ; $66c7: $ff
    rst RST_38                                    ; $66c8: $ff
    rst RST_38                                    ; $66c9: $ff
    rst RST_38                                    ; $66ca: $ff
    rst RST_38                                    ; $66cb: $ff
    rst RST_38                                    ; $66cc: $ff
    rst RST_38                                    ; $66cd: $ff
    rst RST_38                                    ; $66ce: $ff
    rst RST_38                                    ; $66cf: $ff
    rst RST_38                                    ; $66d0: $ff
    rst RST_38                                    ; $66d1: $ff
    rst RST_38                                    ; $66d2: $ff
    rst RST_38                                    ; $66d3: $ff
    rst RST_38                                    ; $66d4: $ff
    rst RST_38                                    ; $66d5: $ff
    rst RST_38                                    ; $66d6: $ff
    rst RST_38                                    ; $66d7: $ff
    rst RST_38                                    ; $66d8: $ff
    rst RST_38                                    ; $66d9: $ff
    rst RST_38                                    ; $66da: $ff
    rst RST_38                                    ; $66db: $ff
    rst RST_38                                    ; $66dc: $ff
    rst RST_38                                    ; $66dd: $ff
    rst RST_38                                    ; $66de: $ff
    rst RST_38                                    ; $66df: $ff
    rst RST_38                                    ; $66e0: $ff
    rst RST_38                                    ; $66e1: $ff
    rst RST_38                                    ; $66e2: $ff
    rst RST_38                                    ; $66e3: $ff
    rst RST_38                                    ; $66e4: $ff
    rst RST_38                                    ; $66e5: $ff
    rst RST_38                                    ; $66e6: $ff
    rst RST_38                                    ; $66e7: $ff
    rst RST_38                                    ; $66e8: $ff
    rst RST_38                                    ; $66e9: $ff
    rst RST_38                                    ; $66ea: $ff
    rst RST_38                                    ; $66eb: $ff
    rst RST_38                                    ; $66ec: $ff
    rst RST_38                                    ; $66ed: $ff
    rst RST_38                                    ; $66ee: $ff
    rst RST_38                                    ; $66ef: $ff
    rst RST_38                                    ; $66f0: $ff
    rst RST_38                                    ; $66f1: $ff
    rst RST_38                                    ; $66f2: $ff
    rst RST_38                                    ; $66f3: $ff
    rst RST_38                                    ; $66f4: $ff
    rst RST_38                                    ; $66f5: $ff
    rst RST_38                                    ; $66f6: $ff
    rst RST_38                                    ; $66f7: $ff
    rst RST_38                                    ; $66f8: $ff
    rst RST_38                                    ; $66f9: $ff
    rst RST_38                                    ; $66fa: $ff
    rst RST_38                                    ; $66fb: $ff
    rst RST_38                                    ; $66fc: $ff
    rst RST_38                                    ; $66fd: $ff
    rst RST_38                                    ; $66fe: $ff
    rst RST_38                                    ; $66ff: $ff
    rst RST_38                                    ; $6700: $ff
    rst RST_38                                    ; $6701: $ff
    rst RST_38                                    ; $6702: $ff
    rst RST_38                                    ; $6703: $ff
    rst RST_38                                    ; $6704: $ff
    rst RST_38                                    ; $6705: $ff
    rst RST_38                                    ; $6706: $ff
    rst RST_38                                    ; $6707: $ff
    rst RST_38                                    ; $6708: $ff
    rst RST_38                                    ; $6709: $ff
    rst RST_38                                    ; $670a: $ff
    rst RST_38                                    ; $670b: $ff
    rst RST_38                                    ; $670c: $ff
    rst RST_38                                    ; $670d: $ff
    rst RST_38                                    ; $670e: $ff
    rst RST_38                                    ; $670f: $ff
    rst RST_38                                    ; $6710: $ff
    rst RST_38                                    ; $6711: $ff
    rst RST_38                                    ; $6712: $ff
    rst RST_38                                    ; $6713: $ff
    rst RST_38                                    ; $6714: $ff
    rst RST_38                                    ; $6715: $ff
    rst RST_38                                    ; $6716: $ff
    rst RST_38                                    ; $6717: $ff
    rst RST_38                                    ; $6718: $ff
    rst RST_38                                    ; $6719: $ff
    rst RST_38                                    ; $671a: $ff
    rst RST_38                                    ; $671b: $ff
    rst RST_38                                    ; $671c: $ff
    rst RST_38                                    ; $671d: $ff
    rst RST_38                                    ; $671e: $ff
    rst RST_38                                    ; $671f: $ff
    rst RST_38                                    ; $6720: $ff
    rst RST_38                                    ; $6721: $ff
    rst RST_38                                    ; $6722: $ff
    rst RST_38                                    ; $6723: $ff
    rst RST_38                                    ; $6724: $ff
    rst RST_38                                    ; $6725: $ff
    rst RST_38                                    ; $6726: $ff
    rst RST_38                                    ; $6727: $ff
    rst RST_38                                    ; $6728: $ff
    rst RST_38                                    ; $6729: $ff
    rst RST_38                                    ; $672a: $ff
    rst RST_38                                    ; $672b: $ff
    rst RST_38                                    ; $672c: $ff
    rst RST_38                                    ; $672d: $ff
    rst RST_38                                    ; $672e: $ff
    rst RST_38                                    ; $672f: $ff
    rst RST_38                                    ; $6730: $ff
    rst RST_38                                    ; $6731: $ff
    rst RST_38                                    ; $6732: $ff
    rst RST_38                                    ; $6733: $ff
    rst RST_38                                    ; $6734: $ff
    rst RST_38                                    ; $6735: $ff
    rst RST_38                                    ; $6736: $ff
    rst RST_38                                    ; $6737: $ff
    rst RST_38                                    ; $6738: $ff
    rst RST_38                                    ; $6739: $ff
    rst RST_38                                    ; $673a: $ff
    rst RST_38                                    ; $673b: $ff
    rst RST_38                                    ; $673c: $ff
    rst RST_38                                    ; $673d: $ff
    rst RST_38                                    ; $673e: $ff
    rst RST_38                                    ; $673f: $ff
    rst RST_38                                    ; $6740: $ff
    rst RST_38                                    ; $6741: $ff
    rst RST_38                                    ; $6742: $ff
    rst RST_38                                    ; $6743: $ff
    rst RST_38                                    ; $6744: $ff
    rst RST_38                                    ; $6745: $ff
    rst RST_38                                    ; $6746: $ff
    rst RST_38                                    ; $6747: $ff
    rst RST_38                                    ; $6748: $ff
    rst RST_38                                    ; $6749: $ff
    rst RST_38                                    ; $674a: $ff
    rst RST_38                                    ; $674b: $ff
    rst RST_38                                    ; $674c: $ff
    rst RST_38                                    ; $674d: $ff
    rst RST_38                                    ; $674e: $ff
    rst RST_38                                    ; $674f: $ff
    rst RST_38                                    ; $6750: $ff
    rst RST_38                                    ; $6751: $ff
    rst RST_38                                    ; $6752: $ff
    rst RST_38                                    ; $6753: $ff
    rst RST_38                                    ; $6754: $ff
    rst RST_38                                    ; $6755: $ff
    rst RST_38                                    ; $6756: $ff
    rst RST_38                                    ; $6757: $ff
    rst RST_38                                    ; $6758: $ff
    rst RST_38                                    ; $6759: $ff
    rst RST_38                                    ; $675a: $ff
    rst RST_38                                    ; $675b: $ff
    rst RST_38                                    ; $675c: $ff
    rst RST_38                                    ; $675d: $ff
    rst RST_38                                    ; $675e: $ff
    rst RST_38                                    ; $675f: $ff
    rst RST_38                                    ; $6760: $ff
    rst RST_38                                    ; $6761: $ff
    rst RST_38                                    ; $6762: $ff
    rst RST_38                                    ; $6763: $ff
    rst RST_38                                    ; $6764: $ff
    rst RST_38                                    ; $6765: $ff
    rst RST_38                                    ; $6766: $ff
    rst RST_38                                    ; $6767: $ff
    rst RST_38                                    ; $6768: $ff
    rst RST_38                                    ; $6769: $ff
    rst RST_38                                    ; $676a: $ff
    rst RST_38                                    ; $676b: $ff
    rst RST_38                                    ; $676c: $ff
    rst RST_38                                    ; $676d: $ff
    rst RST_38                                    ; $676e: $ff
    rst RST_38                                    ; $676f: $ff
    rst RST_38                                    ; $6770: $ff
    rst RST_38                                    ; $6771: $ff
    rst RST_38                                    ; $6772: $ff
    rst RST_38                                    ; $6773: $ff
    rst RST_38                                    ; $6774: $ff
    rst RST_38                                    ; $6775: $ff
    rst RST_38                                    ; $6776: $ff
    rst RST_38                                    ; $6777: $ff
    rst RST_38                                    ; $6778: $ff
    rst RST_38                                    ; $6779: $ff
    rst RST_38                                    ; $677a: $ff
    rst RST_38                                    ; $677b: $ff
    rst RST_38                                    ; $677c: $ff
    rst RST_38                                    ; $677d: $ff
    rst RST_38                                    ; $677e: $ff
    rst RST_38                                    ; $677f: $ff
    rst RST_38                                    ; $6780: $ff
    rst RST_38                                    ; $6781: $ff
    rst RST_38                                    ; $6782: $ff
    rst RST_38                                    ; $6783: $ff
    rst RST_38                                    ; $6784: $ff
    rst RST_38                                    ; $6785: $ff
    rst RST_38                                    ; $6786: $ff
    rst RST_38                                    ; $6787: $ff
    rst RST_38                                    ; $6788: $ff
    rst RST_38                                    ; $6789: $ff
    rst RST_38                                    ; $678a: $ff
    rst RST_38                                    ; $678b: $ff
    rst RST_38                                    ; $678c: $ff
    rst RST_38                                    ; $678d: $ff
    rst RST_38                                    ; $678e: $ff
    rst RST_38                                    ; $678f: $ff
    rst RST_38                                    ; $6790: $ff
    rst RST_38                                    ; $6791: $ff
    rst RST_38                                    ; $6792: $ff
    rst RST_38                                    ; $6793: $ff
    rst RST_38                                    ; $6794: $ff
    rst RST_38                                    ; $6795: $ff
    rst RST_38                                    ; $6796: $ff
    rst RST_38                                    ; $6797: $ff
    rst RST_38                                    ; $6798: $ff
    rst RST_38                                    ; $6799: $ff
    rst RST_38                                    ; $679a: $ff
    rst RST_38                                    ; $679b: $ff
    rst RST_38                                    ; $679c: $ff
    rst RST_38                                    ; $679d: $ff
    rst RST_38                                    ; $679e: $ff
    rst RST_38                                    ; $679f: $ff
    rst RST_38                                    ; $67a0: $ff
    rst RST_38                                    ; $67a1: $ff
    rst RST_38                                    ; $67a2: $ff
    rst RST_38                                    ; $67a3: $ff
    rst RST_38                                    ; $67a4: $ff
    rst RST_38                                    ; $67a5: $ff
    rst RST_38                                    ; $67a6: $ff
    rst RST_38                                    ; $67a7: $ff
    rst RST_38                                    ; $67a8: $ff
    rst RST_38                                    ; $67a9: $ff
    rst RST_38                                    ; $67aa: $ff
    rst RST_38                                    ; $67ab: $ff
    rst RST_38                                    ; $67ac: $ff
    rst RST_38                                    ; $67ad: $ff
    rst RST_38                                    ; $67ae: $ff
    rst RST_38                                    ; $67af: $ff
    rst RST_38                                    ; $67b0: $ff
    rst RST_38                                    ; $67b1: $ff
    rst RST_38                                    ; $67b2: $ff
    rst RST_38                                    ; $67b3: $ff
    rst RST_38                                    ; $67b4: $ff
    rst RST_38                                    ; $67b5: $ff
    rst RST_38                                    ; $67b6: $ff
    rst RST_38                                    ; $67b7: $ff
    rst RST_38                                    ; $67b8: $ff
    rst RST_38                                    ; $67b9: $ff
    rst RST_38                                    ; $67ba: $ff
    rst RST_38                                    ; $67bb: $ff
    rst RST_38                                    ; $67bc: $ff
    rst RST_38                                    ; $67bd: $ff
    rst RST_38                                    ; $67be: $ff
    rst RST_38                                    ; $67bf: $ff
    rst RST_38                                    ; $67c0: $ff
    rst RST_38                                    ; $67c1: $ff
    rst RST_38                                    ; $67c2: $ff
    rst RST_38                                    ; $67c3: $ff
    rst RST_38                                    ; $67c4: $ff
    rst RST_38                                    ; $67c5: $ff
    rst RST_38                                    ; $67c6: $ff
    rst RST_38                                    ; $67c7: $ff
    rst RST_38                                    ; $67c8: $ff
    rst RST_38                                    ; $67c9: $ff
    rst RST_38                                    ; $67ca: $ff
    rst RST_38                                    ; $67cb: $ff
    rst RST_38                                    ; $67cc: $ff
    rst RST_38                                    ; $67cd: $ff
    rst RST_38                                    ; $67ce: $ff
    rst RST_38                                    ; $67cf: $ff
    rst RST_38                                    ; $67d0: $ff
    rst RST_38                                    ; $67d1: $ff
    rst RST_38                                    ; $67d2: $ff
    rst RST_38                                    ; $67d3: $ff
    rst RST_38                                    ; $67d4: $ff
    rst RST_38                                    ; $67d5: $ff
    rst RST_38                                    ; $67d6: $ff
    rst RST_38                                    ; $67d7: $ff
    rst RST_38                                    ; $67d8: $ff
    rst RST_38                                    ; $67d9: $ff
    rst RST_38                                    ; $67da: $ff
    rst RST_38                                    ; $67db: $ff
    rst RST_38                                    ; $67dc: $ff
    rst RST_38                                    ; $67dd: $ff
    rst RST_38                                    ; $67de: $ff
    rst RST_38                                    ; $67df: $ff
    rst RST_38                                    ; $67e0: $ff
    rst RST_38                                    ; $67e1: $ff
    rst RST_38                                    ; $67e2: $ff
    rst RST_38                                    ; $67e3: $ff
    rst RST_38                                    ; $67e4: $ff
    rst RST_38                                    ; $67e5: $ff
    rst RST_38                                    ; $67e6: $ff
    rst RST_38                                    ; $67e7: $ff
    rst RST_38                                    ; $67e8: $ff
    rst RST_38                                    ; $67e9: $ff
    rst RST_38                                    ; $67ea: $ff
    rst RST_38                                    ; $67eb: $ff
    rst RST_38                                    ; $67ec: $ff
    rst RST_38                                    ; $67ed: $ff
    rst RST_38                                    ; $67ee: $ff
    rst RST_38                                    ; $67ef: $ff
    rst RST_38                                    ; $67f0: $ff
    rst RST_38                                    ; $67f1: $ff
    rst RST_38                                    ; $67f2: $ff
    rst RST_38                                    ; $67f3: $ff
    rst RST_38                                    ; $67f4: $ff
    rst RST_38                                    ; $67f5: $ff
    rst RST_38                                    ; $67f6: $ff
    rst RST_38                                    ; $67f7: $ff
    rst RST_38                                    ; $67f8: $ff
    rst RST_38                                    ; $67f9: $ff
    rst RST_38                                    ; $67fa: $ff
    rst RST_38                                    ; $67fb: $ff
    rst RST_38                                    ; $67fc: $ff
    rst RST_38                                    ; $67fd: $ff
    rst RST_38                                    ; $67fe: $ff
    rst RST_38                                    ; $67ff: $ff
    ld bc, $8401                                  ; $6800: $01 $01 $84
    ld [bc], a                                    ; $6803: $02
    inc bc                                        ; $6804: $03
    inc b                                         ; $6805: $04
    dec b                                         ; $6806: $05
    ld b, $07                                     ; $6807: $06 $07
    ld bc, $0101                                  ; $6809: $01 $01 $01
    ld bc, $0101                                  ; $680c: $01 $01 $01
    ld bc, $0101                                  ; $680f: $01 $01 $01
    ld bc, rSB                                    ; $6812: $01 $01 $ff
    rst RST_38                                    ; $6815: $ff
    rst RST_38                                    ; $6816: $ff
    rst RST_38                                    ; $6817: $ff
    rst RST_38                                    ; $6818: $ff
    rst RST_38                                    ; $6819: $ff
    rst RST_38                                    ; $681a: $ff
    rst RST_38                                    ; $681b: $ff
    rst RST_38                                    ; $681c: $ff
    rst RST_38                                    ; $681d: $ff
    rst RST_38                                    ; $681e: $ff
    rst RST_38                                    ; $681f: $ff
    ld bc, $0801                                  ; $6820: $01 $01 $08
    add hl, bc                                    ; $6823: $09
    ld a, [bc]                                    ; $6824: $0a
    dec bc                                        ; $6825: $0b
    inc c                                         ; $6826: $0c
    dec c                                         ; $6827: $0d
    ld bc, $0101                                  ; $6828: $01 $01 $01
    ld bc, $0101                                  ; $682b: $01 $01 $01
    ld bc, $0101                                  ; $682e: $01 $01 $01
    ld bc, $0101                                  ; $6831: $01 $01 $01
    rst RST_38                                    ; $6834: $ff
    rst RST_38                                    ; $6835: $ff
    rst RST_38                                    ; $6836: $ff
    rst RST_38                                    ; $6837: $ff
    rst RST_38                                    ; $6838: $ff
    rst RST_38                                    ; $6839: $ff
    rst RST_38                                    ; $683a: $ff
    rst RST_38                                    ; $683b: $ff
    rst RST_38                                    ; $683c: $ff
    rst RST_38                                    ; $683d: $ff
    rst RST_38                                    ; $683e: $ff
    rst RST_38                                    ; $683f: $ff
    ld bc, $0e01                                  ; $6840: $01 $01 $0e
    rrca                                          ; $6843: $0f
    db $10                                        ; $6844: $10
    ld de, $0112                                  ; $6845: $11 $12 $01
    ld bc, $0101                                  ; $6848: $01 $01 $01
    ld bc, $0101                                  ; $684b: $01 $01 $01
    ld bc, $0101                                  ; $684e: $01 $01 $01
    ld bc, $0101                                  ; $6851: $01 $01 $01
    rst RST_38                                    ; $6854: $ff
    rst RST_38                                    ; $6855: $ff
    rst RST_38                                    ; $6856: $ff
    rst RST_38                                    ; $6857: $ff
    rst RST_38                                    ; $6858: $ff
    rst RST_38                                    ; $6859: $ff
    rst RST_38                                    ; $685a: $ff
    rst RST_38                                    ; $685b: $ff
    rst RST_38                                    ; $685c: $ff
    rst RST_38                                    ; $685d: $ff
    rst RST_38                                    ; $685e: $ff
    rst RST_38                                    ; $685f: $ff
    inc de                                        ; $6860: $13
    inc d                                         ; $6861: $14
    dec d                                         ; $6862: $15
    ld d, $17                                     ; $6863: $16 $17
    jr jr_00b_6880                                ; $6865: $18 $19

    ld bc, $0101                                  ; $6867: $01 $01 $01
    ld bc, $0101                                  ; $686a: $01 $01 $01
    ld bc, $0101                                  ; $686d: $01 $01 $01
    ld bc, $0101                                  ; $6870: $01 $01 $01
    ld bc, rIE                                    ; $6873: $01 $ff $ff
    rst RST_38                                    ; $6876: $ff
    rst RST_38                                    ; $6877: $ff

jr_00b_6878:
    rst RST_38                                    ; $6878: $ff
    rst RST_38                                    ; $6879: $ff
    rst RST_38                                    ; $687a: $ff
    rst RST_38                                    ; $687b: $ff
    rst RST_38                                    ; $687c: $ff
    rst RST_38                                    ; $687d: $ff
    rst RST_38                                    ; $687e: $ff
    rst RST_38                                    ; $687f: $ff

jr_00b_6880:
    ld a, [de]                                    ; $6880: $1a
    dec de                                        ; $6881: $1b
    ld bc, $0101                                  ; $6882: $01 $01 $01
    inc e                                         ; $6885: $1c
    dec e                                         ; $6886: $1d
    ld e, $01                                     ; $6887: $1e $01
    ld bc, $0101                                  ; $6889: $01 $01 $01
    ld bc, $0101                                  ; $688c: $01 $01 $01
    ld bc, $0101                                  ; $688f: $01 $01 $01
    ld bc, rSB                                    ; $6892: $01 $01 $ff
    rst RST_38                                    ; $6895: $ff
    rst RST_38                                    ; $6896: $ff
    rst RST_38                                    ; $6897: $ff
    rst RST_38                                    ; $6898: $ff
    rst RST_38                                    ; $6899: $ff
    rst RST_38                                    ; $689a: $ff
    rst RST_38                                    ; $689b: $ff
    rst RST_38                                    ; $689c: $ff
    rst RST_38                                    ; $689d: $ff
    rst RST_38                                    ; $689e: $ff
    rst RST_38                                    ; $689f: $ff
    rra                                           ; $68a0: $1f
    jr nz, @+$23                                  ; $68a1: $20 $21

    ld bc, $0101                                  ; $68a3: $01 $01 $01
    ld bc, $0122                                  ; $68a6: $01 $22 $01
    ld bc, $0101                                  ; $68a9: $01 $01 $01
    ld bc, $0101                                  ; $68ac: $01 $01 $01
    ld bc, $0101                                  ; $68af: $01 $01 $01
    ld bc, rSB                                    ; $68b2: $01 $01 $ff
    rst RST_38                                    ; $68b5: $ff
    rst RST_38                                    ; $68b6: $ff
    rst RST_38                                    ; $68b7: $ff
    rst RST_38                                    ; $68b8: $ff
    rst RST_38                                    ; $68b9: $ff
    rst RST_38                                    ; $68ba: $ff
    rst RST_38                                    ; $68bb: $ff
    rst RST_38                                    ; $68bc: $ff
    rst RST_38                                    ; $68bd: $ff
    rst RST_38                                    ; $68be: $ff
    rst RST_38                                    ; $68bf: $ff
    inc hl                                        ; $68c0: $23
    inc h                                         ; $68c1: $24
    dec h                                         ; $68c2: $25
    ld h, $27                                     ; $68c3: $26 $27
    jr z, jr_00b_68f0                             ; $68c5: $28 $29

    ld a, [hl+]                                   ; $68c7: $2a
    dec hl                                        ; $68c8: $2b
    inc l                                         ; $68c9: $2c
    dec l                                         ; $68ca: $2d
    dec l                                         ; $68cb: $2d
    dec l                                         ; $68cc: $2d
    dec l                                         ; $68cd: $2d
    dec l                                         ; $68ce: $2d
    dec l                                         ; $68cf: $2d
    dec l                                         ; $68d0: $2d
    add l                                         ; $68d1: $85
    ld bc, rSB                                    ; $68d2: $01 $01 $ff
    rst RST_38                                    ; $68d5: $ff
    rst RST_38                                    ; $68d6: $ff
    rst RST_38                                    ; $68d7: $ff
    rst RST_38                                    ; $68d8: $ff
    rst RST_38                                    ; $68d9: $ff
    rst RST_38                                    ; $68da: $ff
    rst RST_38                                    ; $68db: $ff
    rst RST_38                                    ; $68dc: $ff
    rst RST_38                                    ; $68dd: $ff
    rst RST_38                                    ; $68de: $ff
    rst RST_38                                    ; $68df: $ff
    ld l, $2f                                     ; $68e0: $2e $2f
    jr nc, jr_00b_6915                            ; $68e2: $30 $31

    ld [hl-], a                                   ; $68e4: $32
    inc sp                                        ; $68e5: $33
    inc [hl]                                      ; $68e6: $34
    dec [hl]                                      ; $68e7: $35
    ld [hl], $37                                  ; $68e8: $36 $37
    jr c, jr_00b_6924                             ; $68ea: $38 $38

    jr c, jr_00b_6926                             ; $68ec: $38 $38

    jr c, jr_00b_6928                             ; $68ee: $38 $38

jr_00b_68f0:
    jr c, jr_00b_6878                             ; $68f0: $38 $86

    ld bc, rSB                                    ; $68f2: $01 $01 $ff
    rst RST_38                                    ; $68f5: $ff
    rst RST_38                                    ; $68f6: $ff
    rst RST_38                                    ; $68f7: $ff
    rst RST_38                                    ; $68f8: $ff
    rst RST_38                                    ; $68f9: $ff
    rst RST_38                                    ; $68fa: $ff
    rst RST_38                                    ; $68fb: $ff
    rst RST_38                                    ; $68fc: $ff
    rst RST_38                                    ; $68fd: $ff
    rst RST_38                                    ; $68fe: $ff
    rst RST_38                                    ; $68ff: $ff
    add hl, sp                                    ; $6900: $39
    inc hl                                        ; $6901: $23
    ld a, [hl-]                                   ; $6902: $3a
    dec sp                                        ; $6903: $3b
    inc a                                         ; $6904: $3c
    dec a                                         ; $6905: $3d
    ld a, $3f                                     ; $6906: $3e $3f
    ld b, b                                       ; $6908: $40
    ld b, c                                       ; $6909: $41
    ld b, d                                       ; $690a: $42
    ld b, e                                       ; $690b: $43
    ld b, h                                       ; $690c: $44
    ld b, l                                       ; $690d: $45
    ld b, [hl]                                    ; $690e: $46
    ld b, a                                       ; $690f: $47
    add a                                         ; $6910: $87
    add [hl]                                      ; $6911: $86
    ld bc, rSB                                    ; $6912: $01 $01 $ff

jr_00b_6915:
    rst RST_38                                    ; $6915: $ff
    rst RST_38                                    ; $6916: $ff
    rst RST_38                                    ; $6917: $ff
    rst RST_38                                    ; $6918: $ff
    rst RST_38                                    ; $6919: $ff
    rst RST_38                                    ; $691a: $ff
    rst RST_38                                    ; $691b: $ff
    rst RST_38                                    ; $691c: $ff
    rst RST_38                                    ; $691d: $ff
    rst RST_38                                    ; $691e: $ff
    rst RST_38                                    ; $691f: $ff
    ld c, b                                       ; $6920: $48
    ld c, c                                       ; $6921: $49
    ld c, d                                       ; $6922: $4a
    ld c, e                                       ; $6923: $4b

jr_00b_6924:
    ld c, h                                       ; $6924: $4c
    ld c, l                                       ; $6925: $4d

jr_00b_6926:
    ld c, [hl]                                    ; $6926: $4e
    ld c, a                                       ; $6927: $4f

jr_00b_6928:
    ld d, b                                       ; $6928: $50
    ld d, c                                       ; $6929: $51
    ld d, d                                       ; $692a: $52
    ld c, a                                       ; $692b: $4f
    ld d, e                                       ; $692c: $53
    ld d, h                                       ; $692d: $54
    ld d, l                                       ; $692e: $55
    ld d, [hl]                                    ; $692f: $56
    adc b                                         ; $6930: $88
    add [hl]                                      ; $6931: $86
    ld bc, rSB                                    ; $6932: $01 $01 $ff
    rst RST_38                                    ; $6935: $ff
    rst RST_38                                    ; $6936: $ff
    rst RST_38                                    ; $6937: $ff
    rst RST_38                                    ; $6938: $ff
    rst RST_38                                    ; $6939: $ff
    rst RST_38                                    ; $693a: $ff
    rst RST_38                                    ; $693b: $ff
    rst RST_38                                    ; $693c: $ff
    rst RST_38                                    ; $693d: $ff
    rst RST_38                                    ; $693e: $ff
    rst RST_38                                    ; $693f: $ff
    ld bc, $5701                                  ; $6940: $01 $01 $57
    ld e, b                                       ; $6943: $58
    ld e, c                                       ; $6944: $59
    ld e, d                                       ; $6945: $5a
    ld e, e                                       ; $6946: $5b
    ld e, h                                       ; $6947: $5c
    ld e, l                                       ; $6948: $5d
    ld e, [hl]                                    ; $6949: $5e
    ld e, a                                       ; $694a: $5f
    ld e, h                                       ; $694b: $5c
    ld h, b                                       ; $694c: $60
    ld h, c                                       ; $694d: $61
    ld h, d                                       ; $694e: $62
    ld h, e                                       ; $694f: $63
    adc c                                         ; $6950: $89
    add [hl]                                      ; $6951: $86
    ld bc, rSB                                    ; $6952: $01 $01 $ff
    rst RST_38                                    ; $6955: $ff
    rst RST_38                                    ; $6956: $ff
    rst RST_38                                    ; $6957: $ff
    rst RST_38                                    ; $6958: $ff
    rst RST_38                                    ; $6959: $ff
    rst RST_38                                    ; $695a: $ff
    rst RST_38                                    ; $695b: $ff
    rst RST_38                                    ; $695c: $ff
    rst RST_38                                    ; $695d: $ff
    rst RST_38                                    ; $695e: $ff
    rst RST_38                                    ; $695f: $ff
    ld bc, $6401                                  ; $6960: $01 $01 $64
    ld h, l                                       ; $6963: $65
    ld h, [hl]                                    ; $6964: $66
    ld h, a                                       ; $6965: $67
    ld l, b                                       ; $6966: $68
    ld l, c                                       ; $6967: $69
    ld l, d                                       ; $6968: $6a
    ld l, e                                       ; $6969: $6b
    ld h, l                                       ; $696a: $65
    ld h, l                                       ; $696b: $65
    ld h, l                                       ; $696c: $65
    ld h, l                                       ; $696d: $65
    ld h, l                                       ; $696e: $65
    ld h, l                                       ; $696f: $65
    ld h, l                                       ; $6970: $65
    adc d                                         ; $6971: $8a
    ld bc, rSB                                    ; $6972: $01 $01 $ff
    rst RST_38                                    ; $6975: $ff
    rst RST_38                                    ; $6976: $ff
    rst RST_38                                    ; $6977: $ff
    rst RST_38                                    ; $6978: $ff
    rst RST_38                                    ; $6979: $ff
    rst RST_38                                    ; $697a: $ff
    rst RST_38                                    ; $697b: $ff
    rst RST_38                                    ; $697c: $ff
    rst RST_38                                    ; $697d: $ff
    rst RST_38                                    ; $697e: $ff
    rst RST_38                                    ; $697f: $ff
    ld bc, $0101                                  ; $6980: $01 $01 $01
    ld bc, $0101                                  ; $6983: $01 $01 $01
    ld bc, $0101                                  ; $6986: $01 $01 $01
    ld bc, $0101                                  ; $6989: $01 $01 $01
    ld bc, $0101                                  ; $698c: $01 $01 $01
    ld bc, $0101                                  ; $698f: $01 $01 $01
    ld bc, rSB                                    ; $6992: $01 $01 $ff
    rst RST_38                                    ; $6995: $ff
    rst RST_38                                    ; $6996: $ff
    rst RST_38                                    ; $6997: $ff
    rst RST_38                                    ; $6998: $ff
    rst RST_38                                    ; $6999: $ff
    rst RST_38                                    ; $699a: $ff
    rst RST_38                                    ; $699b: $ff
    rst RST_38                                    ; $699c: $ff
    rst RST_38                                    ; $699d: $ff
    rst RST_38                                    ; $699e: $ff
    rst RST_38                                    ; $699f: $ff
    ld bc, $0101                                  ; $69a0: $01 $01 $01
    ld bc, $0101                                  ; $69a3: $01 $01 $01
    ld bc, $0101                                  ; $69a6: $01 $01 $01
    ld bc, $0101                                  ; $69a9: $01 $01 $01
    ld bc, $0101                                  ; $69ac: $01 $01 $01
    ld bc, $0101                                  ; $69af: $01 $01 $01
    ld bc, rSB                                    ; $69b2: $01 $01 $ff
    rst RST_38                                    ; $69b5: $ff
    rst RST_38                                    ; $69b6: $ff
    rst RST_38                                    ; $69b7: $ff
    rst RST_38                                    ; $69b8: $ff
    rst RST_38                                    ; $69b9: $ff
    rst RST_38                                    ; $69ba: $ff
    rst RST_38                                    ; $69bb: $ff
    rst RST_38                                    ; $69bc: $ff
    rst RST_38                                    ; $69bd: $ff
    rst RST_38                                    ; $69be: $ff
    rst RST_38                                    ; $69bf: $ff
    ld bc, $0101                                  ; $69c0: $01 $01 $01
    ld bc, $6c01                                  ; $69c3: $01 $01 $6c
    ld l, l                                       ; $69c6: $6d
    ld l, [hl]                                    ; $69c7: $6e
    ld l, a                                       ; $69c8: $6f
    ld [hl], b                                    ; $69c9: $70
    ld [hl], c                                    ; $69ca: $71
    ld [hl], d                                    ; $69cb: $72
    ld [hl], e                                    ; $69cc: $73
    ld [hl], h                                    ; $69cd: $74
    ld [hl], l                                    ; $69ce: $75
    halt                                          ; $69cf: $76
    ld bc, $0101                                  ; $69d0: $01 $01 $01
    ld bc, rIE                                    ; $69d3: $01 $ff $ff
    rst RST_38                                    ; $69d6: $ff
    rst RST_38                                    ; $69d7: $ff
    rst RST_38                                    ; $69d8: $ff
    rst RST_38                                    ; $69d9: $ff
    rst RST_38                                    ; $69da: $ff
    rst RST_38                                    ; $69db: $ff
    rst RST_38                                    ; $69dc: $ff
    rst RST_38                                    ; $69dd: $ff
    rst RST_38                                    ; $69de: $ff
    rst RST_38                                    ; $69df: $ff
    ld bc, $0101                                  ; $69e0: $01 $01 $01
    ld bc, $0101                                  ; $69e3: $01 $01 $01
    ld l, h                                       ; $69e6: $6c
    ld l, l                                       ; $69e7: $6d
    ld l, [hl]                                    ; $69e8: $6e
    ld l, a                                       ; $69e9: $6f
    ld [hl], a                                    ; $69ea: $77
    ld a, b                                       ; $69eb: $78
    ld a, c                                       ; $69ec: $79
    ld a, d                                       ; $69ed: $7a
    ld a, e                                       ; $69ee: $7b
    ld bc, $0101                                  ; $69ef: $01 $01 $01
    ld bc, rSB                                    ; $69f2: $01 $01 $ff
    rst RST_38                                    ; $69f5: $ff
    rst RST_38                                    ; $69f6: $ff
    rst RST_38                                    ; $69f7: $ff
    rst RST_38                                    ; $69f8: $ff
    rst RST_38                                    ; $69f9: $ff
    rst RST_38                                    ; $69fa: $ff
    rst RST_38                                    ; $69fb: $ff
    rst RST_38                                    ; $69fc: $ff
    rst RST_38                                    ; $69fd: $ff
    rst RST_38                                    ; $69fe: $ff
    rst RST_38                                    ; $69ff: $ff
    ld bc, $0101                                  ; $6a00: $01 $01 $01
    ld l, h                                       ; $6a03: $6c
    ld l, l                                       ; $6a04: $6d
    ld l, [hl]                                    ; $6a05: $6e
    ld l, a                                       ; $6a06: $6f
    ld a, h                                       ; $6a07: $7c
    ld a, l                                       ; $6a08: $7d
    ld a, [hl]                                    ; $6a09: $7e
    ld a, a                                       ; $6a0a: $7f
    ld [hl], e                                    ; $6a0b: $73
    add b                                         ; $6a0c: $80
    add c                                         ; $6a0d: $81
    add d                                         ; $6a0e: $82
    add e                                         ; $6a0f: $83
    adc e                                         ; $6a10: $8b
    ld bc, $0101                                  ; $6a11: $01 $01 $01
    rst RST_38                                    ; $6a14: $ff
    rst RST_38                                    ; $6a15: $ff
    rst RST_38                                    ; $6a16: $ff
    rst RST_38                                    ; $6a17: $ff
    rst RST_38                                    ; $6a18: $ff
    rst RST_38                                    ; $6a19: $ff
    rst RST_38                                    ; $6a1a: $ff
    rst RST_38                                    ; $6a1b: $ff
    rst RST_38                                    ; $6a1c: $ff
    rst RST_38                                    ; $6a1d: $ff
    rst RST_38                                    ; $6a1e: $ff
    rst RST_38                                    ; $6a1f: $ff
    ld bc, $0101                                  ; $6a20: $01 $01 $01
    ld bc, $0101                                  ; $6a23: $01 $01 $01
    ld bc, $0101                                  ; $6a26: $01 $01 $01
    ld bc, $0101                                  ; $6a29: $01 $01 $01
    ld bc, $0101                                  ; $6a2c: $01 $01 $01
    ld bc, $0101                                  ; $6a2f: $01 $01 $01
    ld bc, rSB                                    ; $6a32: $01 $01 $ff
    rst RST_38                                    ; $6a35: $ff
    rst RST_38                                    ; $6a36: $ff
    rst RST_38                                    ; $6a37: $ff
    rst RST_38                                    ; $6a38: $ff
    rst RST_38                                    ; $6a39: $ff
    rst RST_38                                    ; $6a3a: $ff
    rst RST_38                                    ; $6a3b: $ff
    rst RST_38                                    ; $6a3c: $ff
    rst RST_38                                    ; $6a3d: $ff
    rst RST_38                                    ; $6a3e: $ff
    rst RST_38                                    ; $6a3f: $ff
    rst RST_38                                    ; $6a40: $ff
    rst RST_38                                    ; $6a41: $ff
    rst RST_38                                    ; $6a42: $ff
    rst RST_38                                    ; $6a43: $ff
    rst RST_38                                    ; $6a44: $ff
    rst RST_38                                    ; $6a45: $ff
    rst RST_38                                    ; $6a46: $ff
    rst RST_38                                    ; $6a47: $ff
    rst RST_38                                    ; $6a48: $ff
    rst RST_38                                    ; $6a49: $ff
    rst RST_38                                    ; $6a4a: $ff
    rst RST_38                                    ; $6a4b: $ff
    rst RST_38                                    ; $6a4c: $ff
    rst RST_38                                    ; $6a4d: $ff
    rst RST_38                                    ; $6a4e: $ff
    rst RST_38                                    ; $6a4f: $ff
    rst RST_38                                    ; $6a50: $ff
    rst RST_38                                    ; $6a51: $ff
    rst RST_38                                    ; $6a52: $ff
    rst RST_38                                    ; $6a53: $ff
    rst RST_38                                    ; $6a54: $ff
    rst RST_38                                    ; $6a55: $ff
    rst RST_38                                    ; $6a56: $ff
    rst RST_38                                    ; $6a57: $ff
    rst RST_38                                    ; $6a58: $ff
    rst RST_38                                    ; $6a59: $ff
    rst RST_38                                    ; $6a5a: $ff
    rst RST_38                                    ; $6a5b: $ff
    rst RST_38                                    ; $6a5c: $ff
    rst RST_38                                    ; $6a5d: $ff
    rst RST_38                                    ; $6a5e: $ff
    rst RST_38                                    ; $6a5f: $ff
    rst RST_38                                    ; $6a60: $ff
    rst RST_38                                    ; $6a61: $ff
    rst RST_38                                    ; $6a62: $ff
    rst RST_38                                    ; $6a63: $ff
    rst RST_38                                    ; $6a64: $ff
    rst RST_38                                    ; $6a65: $ff
    rst RST_38                                    ; $6a66: $ff
    rst RST_38                                    ; $6a67: $ff
    rst RST_38                                    ; $6a68: $ff
    rst RST_38                                    ; $6a69: $ff
    rst RST_38                                    ; $6a6a: $ff
    rst RST_38                                    ; $6a6b: $ff
    rst RST_38                                    ; $6a6c: $ff
    rst RST_38                                    ; $6a6d: $ff
    rst RST_38                                    ; $6a6e: $ff
    rst RST_38                                    ; $6a6f: $ff
    rst RST_38                                    ; $6a70: $ff
    rst RST_38                                    ; $6a71: $ff
    rst RST_38                                    ; $6a72: $ff
    rst RST_38                                    ; $6a73: $ff
    rst RST_38                                    ; $6a74: $ff
    rst RST_38                                    ; $6a75: $ff
    rst RST_38                                    ; $6a76: $ff
    rst RST_38                                    ; $6a77: $ff
    rst RST_38                                    ; $6a78: $ff
    rst RST_38                                    ; $6a79: $ff
    rst RST_38                                    ; $6a7a: $ff
    rst RST_38                                    ; $6a7b: $ff
    rst RST_38                                    ; $6a7c: $ff
    rst RST_38                                    ; $6a7d: $ff
    rst RST_38                                    ; $6a7e: $ff
    rst RST_38                                    ; $6a7f: $ff
    rst RST_38                                    ; $6a80: $ff
    rst RST_38                                    ; $6a81: $ff
    rst RST_38                                    ; $6a82: $ff
    rst RST_38                                    ; $6a83: $ff
    rst RST_38                                    ; $6a84: $ff
    rst RST_38                                    ; $6a85: $ff
    rst RST_38                                    ; $6a86: $ff
    rst RST_38                                    ; $6a87: $ff
    rst RST_38                                    ; $6a88: $ff
    rst RST_38                                    ; $6a89: $ff
    rst RST_38                                    ; $6a8a: $ff
    rst RST_38                                    ; $6a8b: $ff
    rst RST_38                                    ; $6a8c: $ff
    rst RST_38                                    ; $6a8d: $ff
    rst RST_38                                    ; $6a8e: $ff
    rst RST_38                                    ; $6a8f: $ff
    rst RST_38                                    ; $6a90: $ff
    rst RST_38                                    ; $6a91: $ff
    rst RST_38                                    ; $6a92: $ff
    rst RST_38                                    ; $6a93: $ff
    rst RST_38                                    ; $6a94: $ff
    rst RST_38                                    ; $6a95: $ff
    rst RST_38                                    ; $6a96: $ff
    rst RST_38                                    ; $6a97: $ff
    rst RST_38                                    ; $6a98: $ff
    rst RST_38                                    ; $6a99: $ff
    rst RST_38                                    ; $6a9a: $ff
    rst RST_38                                    ; $6a9b: $ff
    rst RST_38                                    ; $6a9c: $ff
    rst RST_38                                    ; $6a9d: $ff
    rst RST_38                                    ; $6a9e: $ff
    rst RST_38                                    ; $6a9f: $ff
    rst RST_38                                    ; $6aa0: $ff
    rst RST_38                                    ; $6aa1: $ff
    rst RST_38                                    ; $6aa2: $ff
    rst RST_38                                    ; $6aa3: $ff
    rst RST_38                                    ; $6aa4: $ff
    rst RST_38                                    ; $6aa5: $ff
    rst RST_38                                    ; $6aa6: $ff
    rst RST_38                                    ; $6aa7: $ff
    rst RST_38                                    ; $6aa8: $ff
    rst RST_38                                    ; $6aa9: $ff
    rst RST_38                                    ; $6aaa: $ff
    rst RST_38                                    ; $6aab: $ff
    rst RST_38                                    ; $6aac: $ff
    rst RST_38                                    ; $6aad: $ff
    rst RST_38                                    ; $6aae: $ff
    rst RST_38                                    ; $6aaf: $ff
    rst RST_38                                    ; $6ab0: $ff
    rst RST_38                                    ; $6ab1: $ff
    rst RST_38                                    ; $6ab2: $ff
    rst RST_38                                    ; $6ab3: $ff
    rst RST_38                                    ; $6ab4: $ff
    rst RST_38                                    ; $6ab5: $ff
    rst RST_38                                    ; $6ab6: $ff
    rst RST_38                                    ; $6ab7: $ff
    rst RST_38                                    ; $6ab8: $ff
    rst RST_38                                    ; $6ab9: $ff
    rst RST_38                                    ; $6aba: $ff
    rst RST_38                                    ; $6abb: $ff
    rst RST_38                                    ; $6abc: $ff
    rst RST_38                                    ; $6abd: $ff
    rst RST_38                                    ; $6abe: $ff
    rst RST_38                                    ; $6abf: $ff
    add h                                         ; $6ac0: $84
    add h                                         ; $6ac1: $84
    add h                                         ; $6ac2: $84
    add h                                         ; $6ac3: $84
    add h                                         ; $6ac4: $84
    add h                                         ; $6ac5: $84
    add h                                         ; $6ac6: $84
    add h                                         ; $6ac7: $84
    add h                                         ; $6ac8: $84
    add h                                         ; $6ac9: $84
    add h                                         ; $6aca: $84
    add h                                         ; $6acb: $84
    add h                                         ; $6acc: $84
    add h                                         ; $6acd: $84
    add h                                         ; $6ace: $84
    add h                                         ; $6acf: $84
    add h                                         ; $6ad0: $84
    add h                                         ; $6ad1: $84
    add h                                         ; $6ad2: $84
    add h                                         ; $6ad3: $84
    add h                                         ; $6ad4: $84
    add h                                         ; $6ad5: $84
    add h                                         ; $6ad6: $84
    add h                                         ; $6ad7: $84
    add h                                         ; $6ad8: $84
    add h                                         ; $6ad9: $84
    add h                                         ; $6ada: $84
    add h                                         ; $6adb: $84
    add h                                         ; $6adc: $84
    add h                                         ; $6add: $84
    add h                                         ; $6ade: $84
    add h                                         ; $6adf: $84
    add h                                         ; $6ae0: $84
    add h                                         ; $6ae1: $84
    add h                                         ; $6ae2: $84
    add h                                         ; $6ae3: $84
    add h                                         ; $6ae4: $84
    add h                                         ; $6ae5: $84
    add h                                         ; $6ae6: $84
    add h                                         ; $6ae7: $84
    add h                                         ; $6ae8: $84
    add h                                         ; $6ae9: $84
    add h                                         ; $6aea: $84
    add h                                         ; $6aeb: $84
    add h                                         ; $6aec: $84
    add h                                         ; $6aed: $84
    add h                                         ; $6aee: $84
    add h                                         ; $6aef: $84
    add h                                         ; $6af0: $84
    add h                                         ; $6af1: $84
    add h                                         ; $6af2: $84
    add h                                         ; $6af3: $84
    add h                                         ; $6af4: $84
    add h                                         ; $6af5: $84
    add h                                         ; $6af6: $84
    add h                                         ; $6af7: $84
    add h                                         ; $6af8: $84
    add h                                         ; $6af9: $84
    add h                                         ; $6afa: $84
    add h                                         ; $6afb: $84
    add h                                         ; $6afc: $84
    add h                                         ; $6afd: $84
    add h                                         ; $6afe: $84
    add h                                         ; $6aff: $84
    add h                                         ; $6b00: $84
    add h                                         ; $6b01: $84
    add h                                         ; $6b02: $84
    add h                                         ; $6b03: $84
    add h                                         ; $6b04: $84
    add h                                         ; $6b05: $84
    add h                                         ; $6b06: $84
    add h                                         ; $6b07: $84
    add h                                         ; $6b08: $84
    add h                                         ; $6b09: $84
    add h                                         ; $6b0a: $84
    add h                                         ; $6b0b: $84
    add h                                         ; $6b0c: $84
    add h                                         ; $6b0d: $84
    add h                                         ; $6b0e: $84
    add h                                         ; $6b0f: $84
    add h                                         ; $6b10: $84
    add h                                         ; $6b11: $84
    add h                                         ; $6b12: $84
    add h                                         ; $6b13: $84
    add h                                         ; $6b14: $84
    add h                                         ; $6b15: $84
    add h                                         ; $6b16: $84
    add h                                         ; $6b17: $84
    add h                                         ; $6b18: $84
    add h                                         ; $6b19: $84
    add h                                         ; $6b1a: $84
    add h                                         ; $6b1b: $84
    add h                                         ; $6b1c: $84
    add h                                         ; $6b1d: $84
    add h                                         ; $6b1e: $84
    add h                                         ; $6b1f: $84
    add h                                         ; $6b20: $84
    add h                                         ; $6b21: $84
    add h                                         ; $6b22: $84
    add h                                         ; $6b23: $84
    add h                                         ; $6b24: $84
    add h                                         ; $6b25: $84
    add h                                         ; $6b26: $84
    add h                                         ; $6b27: $84
    add h                                         ; $6b28: $84
    add h                                         ; $6b29: $84
    add h                                         ; $6b2a: $84
    add h                                         ; $6b2b: $84
    add h                                         ; $6b2c: $84
    add h                                         ; $6b2d: $84
    add h                                         ; $6b2e: $84
    add h                                         ; $6b2f: $84
    add h                                         ; $6b30: $84
    add h                                         ; $6b31: $84
    add h                                         ; $6b32: $84
    add h                                         ; $6b33: $84
    add h                                         ; $6b34: $84
    add h                                         ; $6b35: $84
    add h                                         ; $6b36: $84
    add h                                         ; $6b37: $84
    add h                                         ; $6b38: $84
    add h                                         ; $6b39: $84
    add h                                         ; $6b3a: $84
    add h                                         ; $6b3b: $84
    add h                                         ; $6b3c: $84
    add h                                         ; $6b3d: $84
    add h                                         ; $6b3e: $84
    add h                                         ; $6b3f: $84
    add h                                         ; $6b40: $84
    add h                                         ; $6b41: $84
    add h                                         ; $6b42: $84
    add h                                         ; $6b43: $84
    add h                                         ; $6b44: $84
    add h                                         ; $6b45: $84
    add h                                         ; $6b46: $84
    add h                                         ; $6b47: $84
    add h                                         ; $6b48: $84
    add h                                         ; $6b49: $84
    add h                                         ; $6b4a: $84
    add h                                         ; $6b4b: $84
    add h                                         ; $6b4c: $84
    add h                                         ; $6b4d: $84
    add h                                         ; $6b4e: $84
    add h                                         ; $6b4f: $84
    add h                                         ; $6b50: $84
    add h                                         ; $6b51: $84
    add h                                         ; $6b52: $84
    add h                                         ; $6b53: $84
    add h                                         ; $6b54: $84
    add h                                         ; $6b55: $84
    add h                                         ; $6b56: $84
    add h                                         ; $6b57: $84
    add h                                         ; $6b58: $84
    add h                                         ; $6b59: $84
    add h                                         ; $6b5a: $84
    add h                                         ; $6b5b: $84
    add h                                         ; $6b5c: $84
    add h                                         ; $6b5d: $84
    add h                                         ; $6b5e: $84
    add h                                         ; $6b5f: $84
    add h                                         ; $6b60: $84
    add h                                         ; $6b61: $84
    add h                                         ; $6b62: $84
    add h                                         ; $6b63: $84
    add h                                         ; $6b64: $84
    add h                                         ; $6b65: $84
    add h                                         ; $6b66: $84
    add h                                         ; $6b67: $84
    add h                                         ; $6b68: $84
    add h                                         ; $6b69: $84
    add h                                         ; $6b6a: $84
    add h                                         ; $6b6b: $84
    add h                                         ; $6b6c: $84
    add h                                         ; $6b6d: $84
    add h                                         ; $6b6e: $84
    add h                                         ; $6b6f: $84
    add h                                         ; $6b70: $84
    add h                                         ; $6b71: $84
    add h                                         ; $6b72: $84
    add h                                         ; $6b73: $84
    add h                                         ; $6b74: $84
    add h                                         ; $6b75: $84
    add h                                         ; $6b76: $84
    add h                                         ; $6b77: $84
    add h                                         ; $6b78: $84
    add h                                         ; $6b79: $84
    add h                                         ; $6b7a: $84
    add h                                         ; $6b7b: $84
    add h                                         ; $6b7c: $84
    add h                                         ; $6b7d: $84
    add h                                         ; $6b7e: $84
    add h                                         ; $6b7f: $84
    add h                                         ; $6b80: $84
    add h                                         ; $6b81: $84
    add h                                         ; $6b82: $84
    add h                                         ; $6b83: $84
    add h                                         ; $6b84: $84
    add h                                         ; $6b85: $84
    add h                                         ; $6b86: $84
    add h                                         ; $6b87: $84
    add h                                         ; $6b88: $84
    add h                                         ; $6b89: $84
    add h                                         ; $6b8a: $84
    add h                                         ; $6b8b: $84
    add h                                         ; $6b8c: $84
    add h                                         ; $6b8d: $84
    add h                                         ; $6b8e: $84
    add h                                         ; $6b8f: $84
    add h                                         ; $6b90: $84
    add h                                         ; $6b91: $84
    add h                                         ; $6b92: $84
    add h                                         ; $6b93: $84
    add h                                         ; $6b94: $84
    add h                                         ; $6b95: $84
    add h                                         ; $6b96: $84
    add h                                         ; $6b97: $84
    add h                                         ; $6b98: $84
    add h                                         ; $6b99: $84
    add h                                         ; $6b9a: $84
    add h                                         ; $6b9b: $84
    add h                                         ; $6b9c: $84
    add h                                         ; $6b9d: $84
    add h                                         ; $6b9e: $84
    add h                                         ; $6b9f: $84
    add h                                         ; $6ba0: $84
    add h                                         ; $6ba1: $84
    add h                                         ; $6ba2: $84
    add h                                         ; $6ba3: $84
    add h                                         ; $6ba4: $84
    add h                                         ; $6ba5: $84
    add h                                         ; $6ba6: $84
    add h                                         ; $6ba7: $84
    add h                                         ; $6ba8: $84
    add h                                         ; $6ba9: $84
    add h                                         ; $6baa: $84
    add h                                         ; $6bab: $84
    add h                                         ; $6bac: $84
    add h                                         ; $6bad: $84
    add h                                         ; $6bae: $84
    add h                                         ; $6baf: $84
    add h                                         ; $6bb0: $84
    add h                                         ; $6bb1: $84
    add h                                         ; $6bb2: $84
    add h                                         ; $6bb3: $84
    add h                                         ; $6bb4: $84
    add h                                         ; $6bb5: $84
    add h                                         ; $6bb6: $84
    add h                                         ; $6bb7: $84
    add h                                         ; $6bb8: $84
    add h                                         ; $6bb9: $84
    add h                                         ; $6bba: $84
    add h                                         ; $6bbb: $84
    add h                                         ; $6bbc: $84
    add h                                         ; $6bbd: $84
    add h                                         ; $6bbe: $84
    add h                                         ; $6bbf: $84
    add h                                         ; $6bc0: $84
    add h                                         ; $6bc1: $84
    add h                                         ; $6bc2: $84
    add h                                         ; $6bc3: $84
    add h                                         ; $6bc4: $84
    add h                                         ; $6bc5: $84
    add h                                         ; $6bc6: $84
    add h                                         ; $6bc7: $84
    add h                                         ; $6bc8: $84
    add h                                         ; $6bc9: $84
    add h                                         ; $6bca: $84
    add h                                         ; $6bcb: $84
    add h                                         ; $6bcc: $84
    add h                                         ; $6bcd: $84
    add h                                         ; $6bce: $84
    add h                                         ; $6bcf: $84
    add h                                         ; $6bd0: $84
    add h                                         ; $6bd1: $84
    add h                                         ; $6bd2: $84
    add h                                         ; $6bd3: $84
    add h                                         ; $6bd4: $84
    add h                                         ; $6bd5: $84
    add h                                         ; $6bd6: $84
    add h                                         ; $6bd7: $84
    add h                                         ; $6bd8: $84
    add h                                         ; $6bd9: $84
    add h                                         ; $6bda: $84
    add h                                         ; $6bdb: $84
    add h                                         ; $6bdc: $84
    add h                                         ; $6bdd: $84
    add h                                         ; $6bde: $84
    add h                                         ; $6bdf: $84
    add h                                         ; $6be0: $84
    add h                                         ; $6be1: $84
    add h                                         ; $6be2: $84
    add h                                         ; $6be3: $84
    add h                                         ; $6be4: $84
    add h                                         ; $6be5: $84
    add h                                         ; $6be6: $84
    add h                                         ; $6be7: $84
    add h                                         ; $6be8: $84
    add h                                         ; $6be9: $84
    add h                                         ; $6bea: $84
    add h                                         ; $6beb: $84
    add h                                         ; $6bec: $84
    add h                                         ; $6bed: $84
    add h                                         ; $6bee: $84
    add h                                         ; $6bef: $84
    add h                                         ; $6bf0: $84
    add h                                         ; $6bf1: $84
    add h                                         ; $6bf2: $84
    add h                                         ; $6bf3: $84
    add h                                         ; $6bf4: $84
    add h                                         ; $6bf5: $84
    add h                                         ; $6bf6: $84
    add h                                         ; $6bf7: $84
    add h                                         ; $6bf8: $84
    add h                                         ; $6bf9: $84
    add h                                         ; $6bfa: $84
    add h                                         ; $6bfb: $84
    add h                                         ; $6bfc: $84
    add h                                         ; $6bfd: $84
    add h                                         ; $6bfe: $84
    add h                                         ; $6bff: $84
    nop                                           ; $6c00: $00
    ld bc, $0100                                  ; $6c01: $01 $00 $01
    nop                                           ; $6c04: $00
    ld bc, $0100                                  ; $6c05: $01 $00 $01
    nop                                           ; $6c08: $00
    ld bc, $0100                                  ; $6c09: $01 $00 $01
    nop                                           ; $6c0c: $00
    ld bc, $0100                                  ; $6c0d: $01 $00 $01
    nop                                           ; $6c10: $00
    ld bc, $0100                                  ; $6c11: $01 $00 $01
    rst RST_38                                    ; $6c14: $ff
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
    ld bc, $0100                                  ; $6c20: $01 $00 $01
    nop                                           ; $6c23: $00
    ld bc, $0100                                  ; $6c24: $01 $00 $01
    nop                                           ; $6c27: $00
    ld bc, $0100                                  ; $6c28: $01 $00 $01
    nop                                           ; $6c2b: $00
    ld bc, $0100                                  ; $6c2c: $01 $00 $01
    nop                                           ; $6c2f: $00
    ld bc, $0100                                  ; $6c30: $01 $00 $01
    nop                                           ; $6c33: $00
    rst RST_38                                    ; $6c34: $ff
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
    nop                                           ; $6c40: $00
    ld bc, $0100                                  ; $6c41: $01 $00 $01
    nop                                           ; $6c44: $00
    ld bc, $0100                                  ; $6c45: $01 $00 $01
    nop                                           ; $6c48: $00
    ld bc, $0100                                  ; $6c49: $01 $00 $01
    nop                                           ; $6c4c: $00
    ld bc, $0100                                  ; $6c4d: $01 $00 $01
    nop                                           ; $6c50: $00
    ld bc, $0100                                  ; $6c51: $01 $00 $01
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
    ld bc, $0200                                  ; $6c60: $01 $00 $02
    inc bc                                        ; $6c63: $03
    inc bc                                        ; $6c64: $03
    inc bc                                        ; $6c65: $03
    inc bc                                        ; $6c66: $03
    inc bc                                        ; $6c67: $03
    inc bc                                        ; $6c68: $03
    inc bc                                        ; $6c69: $03
    inc bc                                        ; $6c6a: $03
    inc bc                                        ; $6c6b: $03
    inc bc                                        ; $6c6c: $03
    inc bc                                        ; $6c6d: $03
    inc bc                                        ; $6c6e: $03
    inc bc                                        ; $6c6f: $03
    inc bc                                        ; $6c70: $03
    inc b                                         ; $6c71: $04
    ld a, $00                                     ; $6c72: $3e $00
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
    nop                                           ; $6c80: $00
    ld bc, $0a05                                  ; $6c81: $01 $05 $0a
    dec bc                                        ; $6c84: $0b
    inc c                                         ; $6c85: $0c
    dec c                                         ; $6c86: $0d
    ld c, $0f                                     ; $6c87: $0e $0f
    db $10                                        ; $6c89: $10
    scf                                           ; $6c8a: $37
    scf                                           ; $6c8b: $37
    scf                                           ; $6c8c: $37
    scf                                           ; $6c8d: $37
    scf                                           ; $6c8e: $37
    scf                                           ; $6c8f: $37
    scf                                           ; $6c90: $37
    ld b, $3a                                     ; $6c91: $06 $3a
    ld bc, rIE                                    ; $6c93: $01 $ff $ff
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
    ld bc, $0500                                  ; $6ca0: $01 $00 $05
    scf                                           ; $6ca3: $37
    scf                                           ; $6ca4: $37
    scf                                           ; $6ca5: $37
    scf                                           ; $6ca6: $37
    scf                                           ; $6ca7: $37
    scf                                           ; $6ca8: $37
    scf                                           ; $6ca9: $37
    scf                                           ; $6caa: $37
    scf                                           ; $6cab: $37
    scf                                           ; $6cac: $37
    scf                                           ; $6cad: $37
    scf                                           ; $6cae: $37
    scf                                           ; $6caf: $37
    scf                                           ; $6cb0: $37
    ld b, $3b                                     ; $6cb1: $06 $3b
    nop                                           ; $6cb3: $00
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
    nop                                           ; $6cc0: $00
    ld bc, $1105                                  ; $6cc1: $01 $05 $11
    ld [de], a                                    ; $6cc4: $12
    inc de                                        ; $6cc5: $13
    inc d                                         ; $6cc6: $14
    dec d                                         ; $6cc7: $15
    ld d, $17                                     ; $6cc8: $16 $17
    jr jr_00b_6ce5                                ; $6cca: $18 $19

    ld a, [de]                                    ; $6ccc: $1a
    ld a, [hl+]                                   ; $6ccd: $2a
    scf                                           ; $6cce: $37
    scf                                           ; $6ccf: $37
    scf                                           ; $6cd0: $37
    ld b, $3a                                     ; $6cd1: $06 $3a
    ld bc, rIE                                    ; $6cd3: $01 $ff $ff
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
    ld bc, $0500                                  ; $6ce0: $01 $00 $05
    scf                                           ; $6ce3: $37
    scf                                           ; $6ce4: $37

jr_00b_6ce5:
    scf                                           ; $6ce5: $37
    scf                                           ; $6ce6: $37
    scf                                           ; $6ce7: $37
    scf                                           ; $6ce8: $37
    scf                                           ; $6ce9: $37
    scf                                           ; $6cea: $37
    scf                                           ; $6ceb: $37
    scf                                           ; $6cec: $37
    scf                                           ; $6ced: $37
    scf                                           ; $6cee: $37
    scf                                           ; $6cef: $37
    scf                                           ; $6cf0: $37
    ld b, $3b                                     ; $6cf1: $06 $3b
    nop                                           ; $6cf3: $00
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
    nop                                           ; $6d00: $00
    ld bc, $1b05                                  ; $6d01: $01 $05 $1b
    inc e                                         ; $6d04: $1c
    dec e                                         ; $6d05: $1d
    ld e, $1f                                     ; $6d06: $1e $1f
    scf                                           ; $6d08: $37
    scf                                           ; $6d09: $37
    scf                                           ; $6d0a: $37
    scf                                           ; $6d0b: $37
    scf                                           ; $6d0c: $37
    scf                                           ; $6d0d: $37
    scf                                           ; $6d0e: $37
    scf                                           ; $6d0f: $37
    scf                                           ; $6d10: $37
    ld b, $3a                                     ; $6d11: $06 $3a
    ld bc, rIE                                    ; $6d13: $01 $ff $ff
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
    ld bc, $0500                                  ; $6d20: $01 $00 $05
    scf                                           ; $6d23: $37
    scf                                           ; $6d24: $37
    scf                                           ; $6d25: $37
    scf                                           ; $6d26: $37
    scf                                           ; $6d27: $37
    scf                                           ; $6d28: $37
    scf                                           ; $6d29: $37
    scf                                           ; $6d2a: $37
    scf                                           ; $6d2b: $37
    scf                                           ; $6d2c: $37
    scf                                           ; $6d2d: $37
    scf                                           ; $6d2e: $37
    scf                                           ; $6d2f: $37
    scf                                           ; $6d30: $37
    ld b, $3b                                     ; $6d31: $06 $3b
    nop                                           ; $6d33: $00
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
    nop                                           ; $6d40: $00
    ld bc, $2005                                  ; $6d41: $01 $05 $20
    ld hl, $2322                                  ; $6d44: $21 $22 $23
    inc h                                         ; $6d47: $24
    dec h                                         ; $6d48: $25
    ld h, $27                                     ; $6d49: $26 $27
    jr z, jr_00b_6d76                             ; $6d4b: $28 $29

    scf                                           ; $6d4d: $37
    scf                                           ; $6d4e: $37
    scf                                           ; $6d4f: $37
    scf                                           ; $6d50: $37
    ld b, $3a                                     ; $6d51: $06 $3a
    ld bc, rIE                                    ; $6d53: $01 $ff $ff
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
    ld bc, $0700                                  ; $6d60: $01 $00 $07
    ld [$0808], sp                                ; $6d63: $08 $08 $08
    ld [$0808], sp                                ; $6d66: $08 $08 $08
    ld [$0808], sp                                ; $6d69: $08 $08 $08
    ld [$0808], sp                                ; $6d6c: $08 $08 $08
    ld [$0908], sp                                ; $6d6f: $08 $08 $09
    dec sp                                        ; $6d72: $3b
    nop                                           ; $6d73: $00
    rst RST_38                                    ; $6d74: $ff
    rst RST_38                                    ; $6d75: $ff

jr_00b_6d76:
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
    nop                                           ; $6d80: $00
    ld bc, $393d                                  ; $6d81: $01 $3d $39
    jr c, jr_00b_6dbf                             ; $6d84: $38 $39

    jr c, jr_00b_6dc1                             ; $6d86: $38 $39

    jr c, @+$3b                                   ; $6d88: $38 $39

    jr c, jr_00b_6dc5                             ; $6d8a: $38 $39

    jr c, @+$3b                                   ; $6d8c: $38 $39

    jr c, jr_00b_6dc9                             ; $6d8e: $38 $39

    jr c, @+$3b                                   ; $6d90: $38 $39

    inc a                                         ; $6d92: $3c
    ld bc, rIE                                    ; $6d93: $01 $ff $ff
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
    ld bc, $0100                                  ; $6da0: $01 $00 $01
    nop                                           ; $6da3: $00
    ld bc, $0100                                  ; $6da4: $01 $00 $01
    nop                                           ; $6da7: $00
    ld bc, $0100                                  ; $6da8: $01 $00 $01
    nop                                           ; $6dab: $00
    ld bc, $0100                                  ; $6dac: $01 $00 $01
    nop                                           ; $6daf: $00
    ld bc, $0100                                  ; $6db0: $01 $00 $01
    nop                                           ; $6db3: $00
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

jr_00b_6dbf:
    rst RST_38                                    ; $6dbf: $ff
    nop                                           ; $6dc0: $00

jr_00b_6dc1:
    ld bc, $0100                                  ; $6dc1: $01 $00 $01
    nop                                           ; $6dc4: $00

jr_00b_6dc5:
    ld bc, $0100                                  ; $6dc5: $01 $00 $01
    nop                                           ; $6dc8: $00

jr_00b_6dc9:
    ld bc, $0100                                  ; $6dc9: $01 $00 $01
    nop                                           ; $6dcc: $00
    ld bc, $0100                                  ; $6dcd: $01 $00 $01
    nop                                           ; $6dd0: $00
    ld bc, $0100                                  ; $6dd1: $01 $00 $01
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
    ld bc, $0100                                  ; $6de0: $01 $00 $01
    nop                                           ; $6de3: $00
    ld bc, $0100                                  ; $6de4: $01 $00 $01
    nop                                           ; $6de7: $00
    ld bc, $0100                                  ; $6de8: $01 $00 $01
    nop                                           ; $6deb: $00
    ld bc, $0100                                  ; $6dec: $01 $00 $01
    nop                                           ; $6def: $00
    ld bc, $0100                                  ; $6df0: $01 $00 $01
    nop                                           ; $6df3: $00
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

Call_00b_6dff:
    rst RST_38                                    ; $6dff: $ff
    nop                                           ; $6e00: $00
    ld bc, $0100                                  ; $6e01: $01 $00 $01
    nop                                           ; $6e04: $00
    ld bc, $0100                                  ; $6e05: $01 $00 $01
    nop                                           ; $6e08: $00
    ld bc, $0100                                  ; $6e09: $01 $00 $01
    nop                                           ; $6e0c: $00
    ld bc, $0100                                  ; $6e0d: $01 $00 $01
    nop                                           ; $6e10: $00
    ld bc, $0100                                  ; $6e11: $01 $00 $01
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
    ld bc, $0100                                  ; $6e20: $01 $00 $01
    nop                                           ; $6e23: $00
    ld bc, $0100                                  ; $6e24: $01 $00 $01
    nop                                           ; $6e27: $00
    ld bc, $0100                                  ; $6e28: $01 $00 $01
    nop                                           ; $6e2b: $00
    ld bc, $0100                                  ; $6e2c: $01 $00 $01
    nop                                           ; $6e2f: $00
    ld bc, $0100                                  ; $6e30: $01 $00 $01
    nop                                           ; $6e33: $00
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
    rra                                           ; $7000: $1f
    rra                                           ; $7001: $1f
    rra                                           ; $7002: $1f
    rra                                           ; $7003: $1f
    rra                                           ; $7004: $1f
    rra                                           ; $7005: $1f
    rra                                           ; $7006: $1f
    rra                                           ; $7007: $1f
    rra                                           ; $7008: $1f
    rra                                           ; $7009: $1f
    rra                                           ; $700a: $1f
    rra                                           ; $700b: $1f
    rra                                           ; $700c: $1f
    rra                                           ; $700d: $1f
    rra                                           ; $700e: $1f
    rra                                           ; $700f: $1f
    rra                                           ; $7010: $1f
    rra                                           ; $7011: $1f
    rra                                           ; $7012: $1f
    rra                                           ; $7013: $1f
    rst RST_38                                    ; $7014: $ff
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
    rra                                           ; $7021: $1f
    rra                                           ; $7022: $1f
    rra                                           ; $7023: $1f
    dec bc                                        ; $7024: $0b
    inc b                                         ; $7025: $04
    dec d                                         ; $7026: $15
    inc b                                         ; $7027: $04
    dec bc                                        ; $7028: $0b
    rra                                           ; $7029: $1f
    rra                                           ; $702a: $1f
    rra                                           ; $702b: $1f
    rra                                           ; $702c: $1f
    rra                                           ; $702d: $1f
    rra                                           ; $702e: $1f
    rra                                           ; $702f: $1f
    rra                                           ; $7030: $1f
    rra                                           ; $7031: $1f
    rra                                           ; $7032: $1f
    rra                                           ; $7033: $1f
    rst RST_38                                    ; $7034: $ff
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
    rra                                           ; $7040: $1f
    rra                                           ; $7041: $1f
    rra                                           ; $7042: $1f
    rra                                           ; $7043: $1f
    rra                                           ; $7044: $1f
    rra                                           ; $7045: $1f
    rra                                           ; $7046: $1f
    rra                                           ; $7047: $1f
    rra                                           ; $7048: $1f
    rra                                           ; $7049: $1f
    rra                                           ; $704a: $1f
    rra                                           ; $704b: $1f
    rra                                           ; $704c: $1f
    rra                                           ; $704d: $1f
    rra                                           ; $704e: $1f
    rra                                           ; $704f: $1f
    rra                                           ; $7050: $1f
    rra                                           ; $7051: $1f
    rra                                           ; $7052: $1f
    rra                                           ; $7053: $1f
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
    rra                                           ; $7060: $1f
    rra                                           ; $7061: $1f
    rra                                           ; $7062: $1f
    rra                                           ; $7063: $1f
    inc de                                        ; $7064: $13
    ld [$040c], sp                                ; $7065: $08 $0c $04
    rra                                           ; $7068: $1f
    rra                                           ; $7069: $1f
    rra                                           ; $706a: $1f
    rra                                           ; $706b: $1f
    ld a, [de]                                    ; $706c: $1a
    rra                                           ; $706d: $1f
    rra                                           ; $706e: $1f
    dec de                                        ; $706f: $1b
    rra                                           ; $7070: $1f
    rra                                           ; $7071: $1f
    rra                                           ; $7072: $1f
    rra                                           ; $7073: $1f
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
    rra                                           ; $7080: $1f
    rra                                           ; $7081: $1f
    rra                                           ; $7082: $1f
    rra                                           ; $7083: $1f
    rra                                           ; $7084: $1f
    rra                                           ; $7085: $1f
    rra                                           ; $7086: $1f
    rra                                           ; $7087: $1f
    rra                                           ; $7088: $1f
    rra                                           ; $7089: $1f
    rra                                           ; $708a: $1f
    rra                                           ; $708b: $1f
    rra                                           ; $708c: $1f
    rra                                           ; $708d: $1f
    rra                                           ; $708e: $1f
    rra                                           ; $708f: $1f
    rra                                           ; $7090: $1f
    rra                                           ; $7091: $1f
    rra                                           ; $7092: $1f
    rra                                           ; $7093: $1f
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
    rra                                           ; $70a0: $1f
    rra                                           ; $70a1: $1f
    rra                                           ; $70a2: $1f
    rra                                           ; $70a3: $1f
    ld a, [bc]                                    ; $70a4: $0a
    inc b                                         ; $70a5: $04
    jr jr_00b_70c7                                ; $70a6: $18 $1f

    rra                                           ; $70a8: $1f
    rra                                           ; $70a9: $1f
    rra                                           ; $70aa: $1f
    rra                                           ; $70ab: $1f
    rra                                           ; $70ac: $1f
    rra                                           ; $70ad: $1f
    rra                                           ; $70ae: $1f
    rra                                           ; $70af: $1f
    rra                                           ; $70b0: $1f
    rra                                           ; $70b1: $1f
    rra                                           ; $70b2: $1f
    rra                                           ; $70b3: $1f
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
    rra                                           ; $70c0: $1f
    rra                                           ; $70c1: $1f
    rra                                           ; $70c2: $1f
    rra                                           ; $70c3: $1f
    rra                                           ; $70c4: $1f
    rra                                           ; $70c5: $1f
    rra                                           ; $70c6: $1f

jr_00b_70c7:
    rra                                           ; $70c7: $1f
    rra                                           ; $70c8: $1f
    rra                                           ; $70c9: $1f
    rra                                           ; $70ca: $1f
    rra                                           ; $70cb: $1f
    rra                                           ; $70cc: $1f
    rra                                           ; $70cd: $1f
    rra                                           ; $70ce: $1f
    rra                                           ; $70cf: $1f
    rra                                           ; $70d0: $1f
    rra                                           ; $70d1: $1f
    rra                                           ; $70d2: $1f
    rra                                           ; $70d3: $1f
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
    rra                                           ; $70e0: $1f
    rra                                           ; $70e1: $1f
    rra                                           ; $70e2: $1f
    rra                                           ; $70e3: $1f
    rrca                                          ; $70e4: $0f
    nop                                           ; $70e5: $00
    dec c                                         ; $70e6: $0d
    inc b                                         ; $70e7: $04
    dec bc                                        ; $70e8: $0b
    rra                                           ; $70e9: $1f
    rra                                           ; $70ea: $1f
    rra                                           ; $70eb: $1f
    rra                                           ; $70ec: $1f
    rra                                           ; $70ed: $1f
    rra                                           ; $70ee: $1f
    rra                                           ; $70ef: $1f
    rra                                           ; $70f0: $1f
    rra                                           ; $70f1: $1f
    rra                                           ; $70f2: $1f
    rra                                           ; $70f3: $1f
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
    rra                                           ; $7100: $1f
    rra                                           ; $7101: $1f
    rra                                           ; $7102: $1f
    rra                                           ; $7103: $1f
    rra                                           ; $7104: $1f
    rra                                           ; $7105: $1f
    rra                                           ; $7106: $1f
    rra                                           ; $7107: $1f
    rra                                           ; $7108: $1f
    rra                                           ; $7109: $1f
    rra                                           ; $710a: $1f
    rra                                           ; $710b: $1f
    rra                                           ; $710c: $1f
    rra                                           ; $710d: $1f
    rra                                           ; $710e: $1f
    rra                                           ; $710f: $1f
    rra                                           ; $7110: $1f
    rra                                           ; $7111: $1f
    rra                                           ; $7112: $1f
    rra                                           ; $7113: $1f
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
    rra                                           ; $7120: $1f
    rra                                           ; $7121: $1f
    rra                                           ; $7122: $1f
    rra                                           ; $7123: $1f
    ld bc, $0c06                                  ; $7124: $01 $06 $0c
    rra                                           ; $7127: $1f
    rra                                           ; $7128: $1f
    rra                                           ; $7129: $1f
    rra                                           ; $712a: $1f
    rra                                           ; $712b: $1f
    rra                                           ; $712c: $1f
    rra                                           ; $712d: $1f
    rra                                           ; $712e: $1f
    rra                                           ; $712f: $1f
    rra                                           ; $7130: $1f
    rra                                           ; $7131: $1f
    rra                                           ; $7132: $1f
    rra                                           ; $7133: $1f
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
    rra                                           ; $7140: $1f
    rra                                           ; $7141: $1f
    rra                                           ; $7142: $1f
    rra                                           ; $7143: $1f
    rra                                           ; $7144: $1f
    rra                                           ; $7145: $1f
    rra                                           ; $7146: $1f
    rra                                           ; $7147: $1f
    rra                                           ; $7148: $1f
    rra                                           ; $7149: $1f
    rra                                           ; $714a: $1f
    rra                                           ; $714b: $1f
    rra                                           ; $714c: $1f
    rra                                           ; $714d: $1f
    rra                                           ; $714e: $1f
    rra                                           ; $714f: $1f
    rra                                           ; $7150: $1f
    rra                                           ; $7151: $1f
    rra                                           ; $7152: $1f
    rra                                           ; $7153: $1f
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
    rra                                           ; $7160: $1f
    rra                                           ; $7161: $1f
    rra                                           ; $7162: $1f
    rra                                           ; $7163: $1f
    ld [de], a                                    ; $7164: $12
    inc b                                         ; $7165: $04
    rra                                           ; $7166: $1f
    rra                                           ; $7167: $1f
    rra                                           ; $7168: $1f
    rra                                           ; $7169: $1f
    rra                                           ; $716a: $1f
    rra                                           ; $716b: $1f
    rra                                           ; $716c: $1f
    rra                                           ; $716d: $1f
    rra                                           ; $716e: $1f
    rra                                           ; $716f: $1f
    rra                                           ; $7170: $1f
    rra                                           ; $7171: $1f
    rra                                           ; $7172: $1f
    rra                                           ; $7173: $1f
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
    rra                                           ; $7180: $1f
    rra                                           ; $7181: $1f
    rra                                           ; $7182: $1f
    rra                                           ; $7183: $1f
    rra                                           ; $7184: $1f
    rra                                           ; $7185: $1f
    rra                                           ; $7186: $1f
    rra                                           ; $7187: $1f
    rra                                           ; $7188: $1f
    rra                                           ; $7189: $1f
    rra                                           ; $718a: $1f
    rra                                           ; $718b: $1f
    rra                                           ; $718c: $1f
    rra                                           ; $718d: $1f
    rra                                           ; $718e: $1f
    rra                                           ; $718f: $1f
    rra                                           ; $7190: $1f
    rra                                           ; $7191: $1f
    rra                                           ; $7192: $1f
    rra                                           ; $7193: $1f
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
    rra                                           ; $71a0: $1f
    rra                                           ; $71a1: $1f
    rra                                           ; $71a2: $1f
    rra                                           ; $71a3: $1f
    rra                                           ; $71a4: $1f
    rra                                           ; $71a5: $1f
    rra                                           ; $71a6: $1f
    rra                                           ; $71a7: $1f
    rra                                           ; $71a8: $1f
    rra                                           ; $71a9: $1f
    rra                                           ; $71aa: $1f
    rra                                           ; $71ab: $1f
    rra                                           ; $71ac: $1f
    rra                                           ; $71ad: $1f
    rra                                           ; $71ae: $1f
    rra                                           ; $71af: $1f
    rra                                           ; $71b0: $1f
    rra                                           ; $71b1: $1f
    rra                                           ; $71b2: $1f
    rra                                           ; $71b3: $1f
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
    rra                                           ; $71c0: $1f
    rra                                           ; $71c1: $1f
    rra                                           ; $71c2: $1f
    rra                                           ; $71c3: $1f
    rra                                           ; $71c4: $1f
    rra                                           ; $71c5: $1f
    rra                                           ; $71c6: $1f
    rra                                           ; $71c7: $1f
    rra                                           ; $71c8: $1f
    rra                                           ; $71c9: $1f
    rra                                           ; $71ca: $1f
    rra                                           ; $71cb: $1f
    rra                                           ; $71cc: $1f
    rra                                           ; $71cd: $1f
    rra                                           ; $71ce: $1f
    rra                                           ; $71cf: $1f
    rra                                           ; $71d0: $1f
    rra                                           ; $71d1: $1f
    rra                                           ; $71d2: $1f
    rra                                           ; $71d3: $1f
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
    rra                                           ; $71e0: $1f
    rra                                           ; $71e1: $1f
    rra                                           ; $71e2: $1f
    rra                                           ; $71e3: $1f
    rra                                           ; $71e4: $1f
    rra                                           ; $71e5: $1f
    rra                                           ; $71e6: $1f
    rra                                           ; $71e7: $1f
    rra                                           ; $71e8: $1f
    rra                                           ; $71e9: $1f
    rra                                           ; $71ea: $1f
    rra                                           ; $71eb: $1f
    rra                                           ; $71ec: $1f
    rra                                           ; $71ed: $1f
    rra                                           ; $71ee: $1f
    rra                                           ; $71ef: $1f
    rra                                           ; $71f0: $1f
    rra                                           ; $71f1: $1f
    rra                                           ; $71f2: $1f
    rra                                           ; $71f3: $1f
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
    rra                                           ; $7200: $1f
    rra                                           ; $7201: $1f
    rra                                           ; $7202: $1f
    rra                                           ; $7203: $1f
    rra                                           ; $7204: $1f
    rra                                           ; $7205: $1f
    rra                                           ; $7206: $1f
    rra                                           ; $7207: $1f
    rra                                           ; $7208: $1f
    rra                                           ; $7209: $1f
    rra                                           ; $720a: $1f
    rra                                           ; $720b: $1f
    rra                                           ; $720c: $1f
    rra                                           ; $720d: $1f
    rra                                           ; $720e: $1f
    rra                                           ; $720f: $1f
    rra                                           ; $7210: $1f
    rra                                           ; $7211: $1f
    rra                                           ; $7212: $1f
    rra                                           ; $7213: $1f
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
    rra                                           ; $7220: $1f
    rra                                           ; $7221: $1f
    rra                                           ; $7222: $1f
    rra                                           ; $7223: $1f
    rra                                           ; $7224: $1f
    rra                                           ; $7225: $1f
    rra                                           ; $7226: $1f
    rra                                           ; $7227: $1f
    rra                                           ; $7228: $1f
    rra                                           ; $7229: $1f
    rra                                           ; $722a: $1f
    rra                                           ; $722b: $1f
    rra                                           ; $722c: $1f
    rra                                           ; $722d: $1f
    rra                                           ; $722e: $1f
    rra                                           ; $722f: $1f
    rra                                           ; $7230: $1f
    rra                                           ; $7231: $1f
    rra                                           ; $7232: $1f
    rra                                           ; $7233: $1f
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
    ld h, b                                       ; $72c0: $60
    ld h, c                                       ; $72c1: $61
    ld h, d                                       ; $72c2: $62
    ld h, e                                       ; $72c3: $63
    ld h, h                                       ; $72c4: $64
    ld h, l                                       ; $72c5: $65
    ld h, [hl]                                    ; $72c6: $66
    ld h, a                                       ; $72c7: $67
    ld l, b                                       ; $72c8: $68
    ld l, c                                       ; $72c9: $69
    ld l, d                                       ; $72ca: $6a
    ld l, e                                       ; $72cb: $6b
    ld l, h                                       ; $72cc: $6c
    ld l, l                                       ; $72cd: $6d
    ld l, [hl]                                    ; $72ce: $6e
    ld l, a                                       ; $72cf: $6f
    ld h, b                                       ; $72d0: $60
    ld h, c                                       ; $72d1: $61
    ld h, d                                       ; $72d2: $62
    ld h, e                                       ; $72d3: $63
    ld h, h                                       ; $72d4: $64
    ld h, l                                       ; $72d5: $65
    ld h, [hl]                                    ; $72d6: $66
    ld h, a                                       ; $72d7: $67
    ld l, b                                       ; $72d8: $68
    ld l, c                                       ; $72d9: $69
    ld l, d                                       ; $72da: $6a
    ld l, e                                       ; $72db: $6b
    ld l, h                                       ; $72dc: $6c
    ld l, l                                       ; $72dd: $6d
    ld l, [hl]                                    ; $72de: $6e
    ld l, a                                       ; $72df: $6f
    ld [hl], b                                    ; $72e0: $70
    ld [hl], c                                    ; $72e1: $71
    ld [hl], d                                    ; $72e2: $72
    ld [hl], e                                    ; $72e3: $73
    ld [hl], h                                    ; $72e4: $74
    ld [hl], l                                    ; $72e5: $75
    halt                                          ; $72e6: $76
    ld [hl], a                                    ; $72e7: $77
    ld a, b                                       ; $72e8: $78
    ld a, c                                       ; $72e9: $79
    ld a, d                                       ; $72ea: $7a
    ld a, e                                       ; $72eb: $7b
    ld a, h                                       ; $72ec: $7c
    ld a, l                                       ; $72ed: $7d
    ld a, [hl]                                    ; $72ee: $7e
    ld a, a                                       ; $72ef: $7f
    ld [hl], b                                    ; $72f0: $70
    ld [hl], c                                    ; $72f1: $71
    ld [hl], d                                    ; $72f2: $72
    ld [hl], e                                    ; $72f3: $73
    ld [hl], h                                    ; $72f4: $74
    ld [hl], l                                    ; $72f5: $75
    halt                                          ; $72f6: $76
    ld [hl], a                                    ; $72f7: $77
    ld a, b                                       ; $72f8: $78
    ld a, c                                       ; $72f9: $79
    ld a, d                                       ; $72fa: $7a
    ld a, e                                       ; $72fb: $7b
    ld a, h                                       ; $72fc: $7c
    ld a, l                                       ; $72fd: $7d
    ld a, [hl]                                    ; $72fe: $7e
    ld a, a                                       ; $72ff: $7f
    add b                                         ; $7300: $80
    add c                                         ; $7301: $81
    add d                                         ; $7302: $82
    add e                                         ; $7303: $83
    add h                                         ; $7304: $84
    add l                                         ; $7305: $85
    add [hl]                                      ; $7306: $86
    add a                                         ; $7307: $87
    adc b                                         ; $7308: $88
    adc c                                         ; $7309: $89
    adc d                                         ; $730a: $8a
    adc e                                         ; $730b: $8b
    adc h                                         ; $730c: $8c
    adc l                                         ; $730d: $8d
    adc [hl]                                      ; $730e: $8e
    adc a                                         ; $730f: $8f
    add b                                         ; $7310: $80
    add c                                         ; $7311: $81
    add d                                         ; $7312: $82
    add e                                         ; $7313: $83
    add h                                         ; $7314: $84
    add l                                         ; $7315: $85
    add [hl]                                      ; $7316: $86
    add a                                         ; $7317: $87
    adc b                                         ; $7318: $88
    adc c                                         ; $7319: $89
    adc d                                         ; $731a: $8a
    adc e                                         ; $731b: $8b
    adc h                                         ; $731c: $8c
    adc l                                         ; $731d: $8d
    adc [hl]                                      ; $731e: $8e
    adc a                                         ; $731f: $8f
    sub b                                         ; $7320: $90
    sub c                                         ; $7321: $91
    sub d                                         ; $7322: $92
    sub e                                         ; $7323: $93
    sub h                                         ; $7324: $94
    sub l                                         ; $7325: $95
    sub [hl]                                      ; $7326: $96
    sub a                                         ; $7327: $97
    sbc b                                         ; $7328: $98
    sbc c                                         ; $7329: $99
    sbc d                                         ; $732a: $9a
    sbc e                                         ; $732b: $9b
    sbc h                                         ; $732c: $9c
    sbc l                                         ; $732d: $9d
    sbc [hl]                                      ; $732e: $9e
    sbc a                                         ; $732f: $9f
    sub b                                         ; $7330: $90
    sub c                                         ; $7331: $91
    sub d                                         ; $7332: $92
    sub e                                         ; $7333: $93
    sub h                                         ; $7334: $94
    sub l                                         ; $7335: $95
    sub [hl]                                      ; $7336: $96
    sub a                                         ; $7337: $97
    sbc b                                         ; $7338: $98
    sbc c                                         ; $7339: $99
    sbc d                                         ; $733a: $9a
    sbc e                                         ; $733b: $9b
    sbc h                                         ; $733c: $9c
    sbc l                                         ; $733d: $9d
    sbc [hl]                                      ; $733e: $9e
    sbc a                                         ; $733f: $9f
    and b                                         ; $7340: $a0
    and c                                         ; $7341: $a1
    and d                                         ; $7342: $a2
    and e                                         ; $7343: $a3
    and h                                         ; $7344: $a4
    and l                                         ; $7345: $a5
    and [hl]                                      ; $7346: $a6
    and a                                         ; $7347: $a7
    xor b                                         ; $7348: $a8
    xor c                                         ; $7349: $a9
    xor d                                         ; $734a: $aa
    xor e                                         ; $734b: $ab
    xor h                                         ; $734c: $ac
    xor l                                         ; $734d: $ad
    xor [hl]                                      ; $734e: $ae
    xor a                                         ; $734f: $af
    and b                                         ; $7350: $a0
    and c                                         ; $7351: $a1
    and d                                         ; $7352: $a2
    and e                                         ; $7353: $a3
    and h                                         ; $7354: $a4
    and l                                         ; $7355: $a5
    and [hl]                                      ; $7356: $a6
    and a                                         ; $7357: $a7
    xor b                                         ; $7358: $a8
    xor c                                         ; $7359: $a9
    xor d                                         ; $735a: $aa
    xor e                                         ; $735b: $ab
    xor h                                         ; $735c: $ac
    xor l                                         ; $735d: $ad
    xor [hl]                                      ; $735e: $ae
    xor a                                         ; $735f: $af
    or b                                          ; $7360: $b0
    or c                                          ; $7361: $b1
    or d                                          ; $7362: $b2
    or e                                          ; $7363: $b3
    or h                                          ; $7364: $b4
    or l                                          ; $7365: $b5
    or [hl]                                       ; $7366: $b6
    or a                                          ; $7367: $b7
    cp b                                          ; $7368: $b8
    cp c                                          ; $7369: $b9
    cp d                                          ; $736a: $ba
    cp e                                          ; $736b: $bb
    cp h                                          ; $736c: $bc
    cp l                                          ; $736d: $bd
    cp [hl]                                       ; $736e: $be
    cp a                                          ; $736f: $bf
    or b                                          ; $7370: $b0
    or c                                          ; $7371: $b1
    or d                                          ; $7372: $b2
    or e                                          ; $7373: $b3
    or h                                          ; $7374: $b4
    or l                                          ; $7375: $b5
    or [hl]                                       ; $7376: $b6
    or a                                          ; $7377: $b7
    cp b                                          ; $7378: $b8
    cp c                                          ; $7379: $b9
    cp d                                          ; $737a: $ba
    cp e                                          ; $737b: $bb
    cp h                                          ; $737c: $bc
    cp l                                          ; $737d: $bd
    cp [hl]                                       ; $737e: $be
    cp a                                          ; $737f: $bf
    ret nz                                        ; $7380: $c0

    pop bc                                        ; $7381: $c1
    jp nz, $c4c3                                  ; $7382: $c2 $c3 $c4

    push bc                                       ; $7385: $c5
    add $c7                                       ; $7386: $c6 $c7
    ret z                                         ; $7388: $c8

    ret                                           ; $7389: $c9


    jp z, $cccb                                   ; $738a: $ca $cb $cc

    call $cfce                                    ; $738d: $cd $ce $cf
    ret nz                                        ; $7390: $c0

    pop bc                                        ; $7391: $c1
    jp nz, $c4c3                                  ; $7392: $c2 $c3 $c4

    push bc                                       ; $7395: $c5
    add $c7                                       ; $7396: $c6 $c7
    ret z                                         ; $7398: $c8

    ret                                           ; $7399: $c9


    jp z, $cccb                                   ; $739a: $ca $cb $cc

    call $cfce                                    ; $739d: $cd $ce $cf
    ret nc                                        ; $73a0: $d0

    pop de                                        ; $73a1: $d1
    jp nc, $d4d3                                  ; $73a2: $d2 $d3 $d4

    push de                                       ; $73a5: $d5
    sub $d7                                       ; $73a6: $d6 $d7
    ret c                                         ; $73a8: $d8

    reti                                          ; $73a9: $d9


    jp c, $dcdb                                   ; $73aa: $da $db $dc

    db $dd                                        ; $73ad: $dd
    sbc $df                                       ; $73ae: $de $df
    ret nc                                        ; $73b0: $d0

    pop de                                        ; $73b1: $d1
    jp nc, $d4d3                                  ; $73b2: $d2 $d3 $d4

    push de                                       ; $73b5: $d5
    sub $d7                                       ; $73b6: $d6 $d7
    ret c                                         ; $73b8: $d8

    reti                                          ; $73b9: $d9


    jp c, $dcdb                                   ; $73ba: $da $db $dc

    db $dd                                        ; $73bd: $dd
    sbc $df                                       ; $73be: $de $df
    ldh [$ffe1], a                                ; $73c0: $e0 $e1
    ldh [c], a                                    ; $73c2: $e2
    db $e3                                        ; $73c3: $e3
    db $e4                                        ; $73c4: $e4
    push hl                                       ; $73c5: $e5
    and $e7                                       ; $73c6: $e6 $e7
    add sp, -$17                                  ; $73c8: $e8 $e9
    ld [$eceb], a                                 ; $73ca: $ea $eb $ec
    db $ed                                        ; $73cd: $ed
    xor $ef                                       ; $73ce: $ee $ef
    ldh [$ffe1], a                                ; $73d0: $e0 $e1
    ldh [c], a                                    ; $73d2: $e2
    db $e3                                        ; $73d3: $e3
    db $e4                                        ; $73d4: $e4
    push hl                                       ; $73d5: $e5
    and $e7                                       ; $73d6: $e6 $e7
    add sp, -$17                                  ; $73d8: $e8 $e9
    ld [$eceb], a                                 ; $73da: $ea $eb $ec
    db $ed                                        ; $73dd: $ed
    xor $ef                                       ; $73de: $ee $ef
    ldh a, [$fff1]                                ; $73e0: $f0 $f1
    ldh a, [c]                                    ; $73e2: $f2
    di                                            ; $73e3: $f3
    db $f4                                        ; $73e4: $f4
    push af                                       ; $73e5: $f5
    or $f7                                        ; $73e6: $f6 $f7
    ld hl, sp-$07                                 ; $73e8: $f8 $f9
    ld a, [$fcfb]                                 ; $73ea: $fa $fb $fc
    db $fd                                        ; $73ed: $fd
    cp $ff                                        ; $73ee: $fe $ff
    ldh a, [$fff1]                                ; $73f0: $f0 $f1
    ldh a, [c]                                    ; $73f2: $f2
    di                                            ; $73f3: $f3
    db $f4                                        ; $73f4: $f4
    push af                                       ; $73f5: $f5
    or $f7                                        ; $73f6: $f6 $f7
    ld hl, sp-$07                                 ; $73f8: $f8 $f9
    ld a, [$fcfb]                                 ; $73fa: $fa $fb $fc
    db $fd                                        ; $73fd: $fd
    cp $ff                                        ; $73fe: $fe $ff
    jr nc, jr_00b_7432                            ; $7400: $30 $30

    jr nc, @-$07                                  ; $7402: $30 $f7

    ld sp, $3332                                  ; $7404: $31 $32 $33
    inc [hl]                                      ; $7407: $34
    dec [hl]                                      ; $7408: $35
    ld [hl], $37                                  ; $7409: $36 $37
    jr c, jr_00b_7446                             ; $740b: $38 $39

    ld a, [hl-]                                   ; $740d: $3a
    dec sp                                        ; $740e: $3b
    rst RST_30                                    ; $740f: $f7
    ld sp, $3030                                  ; $7410: $31 $30 $30
    jr nc, @+$01                                  ; $7413: $30 $ff

    rst RST_38                                    ; $7415: $ff
    rst RST_38                                    ; $7416: $ff
    rst RST_38                                    ; $7417: $ff
    rst RST_38                                    ; $7418: $ff
    rst RST_38                                    ; $7419: $ff
    rst RST_38                                    ; $741a: $ff
    rst RST_38                                    ; $741b: $ff
    rst RST_38                                    ; $741c: $ff
    rst RST_38                                    ; $741d: $ff
    rst RST_38                                    ; $741e: $ff
    rst RST_38                                    ; $741f: $ff
    inc a                                         ; $7420: $3c
    inc a                                         ; $7421: $3c
    inc a                                         ; $7422: $3c
    ld hl, sp+$3d                                 ; $7423: $f8 $3d
    ld a, $3f                                     ; $7425: $3e $3f
    ld b, b                                       ; $7427: $40
    ld b, c                                       ; $7428: $41
    ld b, d                                       ; $7429: $42
    ld b, e                                       ; $742a: $43
    ld b, c                                       ; $742b: $41
    ld b, h                                       ; $742c: $44
    ld b, l                                       ; $742d: $45
    ld b, [hl]                                    ; $742e: $46
    ld hl, sp+$3d                                 ; $742f: $f8 $3d
    inc a                                         ; $7431: $3c

jr_00b_7432:
    inc a                                         ; $7432: $3c
    inc a                                         ; $7433: $3c
    rst RST_38                                    ; $7434: $ff
    rst RST_38                                    ; $7435: $ff
    rst RST_38                                    ; $7436: $ff
    rst RST_38                                    ; $7437: $ff
    rst RST_38                                    ; $7438: $ff
    rst RST_38                                    ; $7439: $ff
    rst RST_38                                    ; $743a: $ff
    rst RST_38                                    ; $743b: $ff
    rst RST_38                                    ; $743c: $ff
    rst RST_38                                    ; $743d: $ff
    rst RST_38                                    ; $743e: $ff
    rst RST_38                                    ; $743f: $ff
    ld b, a                                       ; $7440: $47
    or b                                          ; $7441: $b0
    ld c, c                                       ; $7442: $49
    ld c, d                                       ; $7443: $4a
    ld c, e                                       ; $7444: $4b
    ld c, h                                       ; $7445: $4c

jr_00b_7446:
    ld c, l                                       ; $7446: $4d
    ld c, [hl]                                    ; $7447: $4e
    ld c, a                                       ; $7448: $4f
    ld d, b                                       ; $7449: $50
    ld d, c                                       ; $744a: $51
    ld d, d                                       ; $744b: $52
    ld d, e                                       ; $744c: $53
    ld d, h                                       ; $744d: $54
    ld d, l                                       ; $744e: $55
    ld d, [hl]                                    ; $744f: $56
    ld l, l                                       ; $7450: $6d
    ld l, [hl]                                    ; $7451: $6e
    or b                                          ; $7452: $b0
    ld l, a                                       ; $7453: $6f
    rst RST_38                                    ; $7454: $ff
    rst RST_38                                    ; $7455: $ff
    rst RST_38                                    ; $7456: $ff
    rst RST_38                                    ; $7457: $ff
    rst RST_38                                    ; $7458: $ff
    rst RST_38                                    ; $7459: $ff
    rst RST_38                                    ; $745a: $ff
    rst RST_38                                    ; $745b: $ff
    rst RST_38                                    ; $745c: $ff
    rst RST_38                                    ; $745d: $ff
    rst RST_38                                    ; $745e: $ff
    rst RST_38                                    ; $745f: $ff
    xor a                                         ; $7460: $af
    ld b, a                                       ; $7461: $47
    ld e, b                                       ; $7462: $58
    ld e, c                                       ; $7463: $59
    ld e, d                                       ; $7464: $5a
    ld e, e                                       ; $7465: $5b
    ld e, h                                       ; $7466: $5c
    ld e, l                                       ; $7467: $5d
    ld e, [hl]                                    ; $7468: $5e
    ld e, a                                       ; $7469: $5f
    ld h, b                                       ; $746a: $60
    ld h, c                                       ; $746b: $61
    ld h, d                                       ; $746c: $62
    ld h, e                                       ; $746d: $63
    ld h, h                                       ; $746e: $64
    ld h, l                                       ; $746f: $65
    ld [hl], b                                    ; $7470: $70
    ld [hl], c                                    ; $7471: $71
    ld l, a                                       ; $7472: $6f
    xor e                                         ; $7473: $ab
    rst RST_38                                    ; $7474: $ff
    rst RST_38                                    ; $7475: $ff
    rst RST_38                                    ; $7476: $ff
    rst RST_38                                    ; $7477: $ff
    rst RST_38                                    ; $7478: $ff
    rst RST_38                                    ; $7479: $ff
    rst RST_38                                    ; $747a: $ff
    rst RST_38                                    ; $747b: $ff
    rst RST_38                                    ; $747c: $ff
    rst RST_38                                    ; $747d: $ff
    rst RST_38                                    ; $747e: $ff
    rst RST_38                                    ; $747f: $ff
    xor h                                         ; $7480: $ac
    xor a                                         ; $7481: $af
    ld h, [hl]                                    ; $7482: $66
    ld h, a                                       ; $7483: $67
    ld l, b                                       ; $7484: $68
    sub a                                         ; $7485: $97
    ld [hl], e                                    ; $7486: $73
    ld [hl], h                                    ; $7487: $74
    ld [hl], l                                    ; $7488: $75
    halt                                          ; $7489: $76
    ld [hl], a                                    ; $748a: $77
    ld a, b                                       ; $748b: $78
    ld a, c                                       ; $748c: $79
    ld a, d                                       ; $748d: $7a
    and b                                         ; $748e: $a0
    ld l, c                                       ; $748f: $69
    ld [hl], d                                    ; $7490: $72
    ld c, b                                       ; $7491: $48
    xor e                                         ; $7492: $ab
    xor h                                         ; $7493: $ac
    rst RST_38                                    ; $7494: $ff
    rst RST_38                                    ; $7495: $ff

jr_00b_7496:
    rst RST_38                                    ; $7496: $ff
    rst RST_38                                    ; $7497: $ff
    rst RST_38                                    ; $7498: $ff
    rst RST_38                                    ; $7499: $ff
    rst RST_38                                    ; $749a: $ff
    rst RST_38                                    ; $749b: $ff
    rst RST_38                                    ; $749c: $ff
    rst RST_38                                    ; $749d: $ff
    rst RST_38                                    ; $749e: $ff
    rst RST_38                                    ; $749f: $ff
    xor [hl]                                      ; $74a0: $ae
    xor h                                         ; $74a1: $ac
    xor a                                         ; $74a2: $af
    ld l, d                                       ; $74a3: $6a
    ld l, e                                       ; $74a4: $6b
    and c                                         ; $74a5: $a1
    ld a, e                                       ; $74a6: $7b
    ld a, h                                       ; $74a7: $7c
    ld a, l                                       ; $74a8: $7d
    ld a, [hl]                                    ; $74a9: $7e
    ld a, a                                       ; $74aa: $7f
    add b                                         ; $74ab: $80
    add c                                         ; $74ac: $81
    add d                                         ; $74ad: $82
    xor d                                         ; $74ae: $aa
    ld l, h                                       ; $74af: $6c
    ld d, a                                       ; $74b0: $57
    xor e                                         ; $74b1: $ab
    xor h                                         ; $74b2: $ac
    xor l                                         ; $74b3: $ad
    rst RST_38                                    ; $74b4: $ff
    rst RST_38                                    ; $74b5: $ff
    rst RST_38                                    ; $74b6: $ff
    rst RST_38                                    ; $74b7: $ff
    rst RST_38                                    ; $74b8: $ff
    rst RST_38                                    ; $74b9: $ff
    rst RST_38                                    ; $74ba: $ff
    rst RST_38                                    ; $74bb: $ff
    rst RST_38                                    ; $74bc: $ff
    rst RST_38                                    ; $74bd: $ff
    rst RST_38                                    ; $74be: $ff
    rst RST_38                                    ; $74bf: $ff
    dec h                                         ; $74c0: $25
    xor [hl]                                      ; $74c1: $ae
    xor h                                         ; $74c2: $ac
    xor a                                         ; $74c3: $af
    ld [de], a                                    ; $74c4: $12
    jp hl                                         ; $74c5: $e9


    ld [$eceb], a                                 ; $74c6: $ea $eb $ec
    db $ed                                        ; $74c9: $ed
    ldh a, [$fff1]                                ; $74ca: $f0 $f1
    ldh a, [c]                                    ; $74cc: $f2
    di                                            ; $74cd: $f3
    db $f4                                        ; $74ce: $f4
    dec e                                         ; $74cf: $1d
    xor e                                         ; $74d0: $ab
    xor h                                         ; $74d1: $ac
    xor l                                         ; $74d2: $ad
    ld e, b                                       ; $74d3: $58
    rst RST_38                                    ; $74d4: $ff
    rst RST_38                                    ; $74d5: $ff
    rst RST_38                                    ; $74d6: $ff
    rst RST_38                                    ; $74d7: $ff
    rst RST_38                                    ; $74d8: $ff
    rst RST_38                                    ; $74d9: $ff
    rst RST_38                                    ; $74da: $ff
    rst RST_38                                    ; $74db: $ff
    rst RST_38                                    ; $74dc: $ff
    rst RST_38                                    ; $74dd: $ff
    rst RST_38                                    ; $74de: $ff
    rst RST_38                                    ; $74df: $ff
    ld e, $1f                                     ; $74e0: $1e $1f
    xor [hl]                                      ; $74e2: $ae
    xor l                                         ; $74e3: $ad
    jr nz, jr_00b_7496                            ; $74e4: $20 $b0

    or b                                          ; $74e6: $b0
    or b                                          ; $74e7: $b0
    xor $ef                                       ; $74e8: $ee $ef
    push af                                       ; $74ea: $f5
    or $b0                                        ; $74eb: $f6 $b0
    or b                                          ; $74ed: $b0
    or b                                          ; $74ee: $b0
    ld hl, $adae                                  ; $74ef: $21 $ae $ad

jr_00b_74f2:
    ld e, c                                       ; $74f2: $59
    ld e, d                                       ; $74f3: $5a
    rst RST_38                                    ; $74f4: $ff
    rst RST_38                                    ; $74f5: $ff
    rst RST_38                                    ; $74f6: $ff
    rst RST_38                                    ; $74f7: $ff
    rst RST_38                                    ; $74f8: $ff
    rst RST_38                                    ; $74f9: $ff
    rst RST_38                                    ; $74fa: $ff
    rst RST_38                                    ; $74fb: $ff
    rst RST_38                                    ; $74fc: $ff
    rst RST_38                                    ; $74fd: $ff
    rst RST_38                                    ; $74fe: $ff
    rst RST_38                                    ; $74ff: $ff
    ld [hl+], a                                   ; $7500: $22
    inc hl                                        ; $7501: $23
    ld hl, $b020                                  ; $7502: $21 $20 $b0
    add e                                         ; $7505: $83
    add h                                         ; $7506: $84
    add l                                         ; $7507: $85
    add [hl]                                      ; $7508: $86
    add a                                         ; $7509: $87
    adc b                                         ; $750a: $88
    adc c                                         ; $750b: $89
    adc d                                         ; $750c: $8a
    adc e                                         ; $750d: $8b
    adc h                                         ; $750e: $8c
    or b                                          ; $750f: $b0
    ld hl, $5c5b                                  ; $7510: $21 $5b $5c
    ld e, l                                       ; $7513: $5d
    rst RST_38                                    ; $7514: $ff
    rst RST_38                                    ; $7515: $ff
    rst RST_38                                    ; $7516: $ff
    rst RST_38                                    ; $7517: $ff
    rst RST_38                                    ; $7518: $ff
    rst RST_38                                    ; $7519: $ff
    rst RST_38                                    ; $751a: $ff
    rst RST_38                                    ; $751b: $ff
    rst RST_38                                    ; $751c: $ff
    rst RST_38                                    ; $751d: $ff
    rst RST_38                                    ; $751e: $ff
    rst RST_38                                    ; $751f: $ff
    ld h, $27                                     ; $7520: $26 $27
    or b                                          ; $7522: $b0
    or b                                          ; $7523: $b0
    or b                                          ; $7524: $b0
    adc l                                         ; $7525: $8d
    adc [hl]                                      ; $7526: $8e
    adc a                                         ; $7527: $8f
    sub b                                         ; $7528: $90
    sub c                                         ; $7529: $91
    sub d                                         ; $752a: $92
    sub e                                         ; $752b: $93
    sub h                                         ; $752c: $94
    sub l                                         ; $752d: $95
    sub [hl]                                      ; $752e: $96
    or b                                          ; $752f: $b0
    or b                                          ; $7530: $b0
    or b                                          ; $7531: $b0
    ld e, [hl]                                    ; $7532: $5e
    ld e, a                                       ; $7533: $5f
    rst RST_38                                    ; $7534: $ff
    rst RST_38                                    ; $7535: $ff
    rst RST_38                                    ; $7536: $ff
    rst RST_38                                    ; $7537: $ff
    rst RST_38                                    ; $7538: $ff
    rst RST_38                                    ; $7539: $ff
    rst RST_38                                    ; $753a: $ff
    rst RST_38                                    ; $753b: $ff
    rst RST_38                                    ; $753c: $ff
    rst RST_38                                    ; $753d: $ff
    rst RST_38                                    ; $753e: $ff
    rst RST_38                                    ; $753f: $ff
    jr z, jr_00b_74f2                             ; $7540: $28 $b0

    or b                                          ; $7542: $b0
    or b                                          ; $7543: $b0
    or b                                          ; $7544: $b0
    jp hl                                         ; $7545: $e9


    ld [$eceb], a                                 ; $7546: $ea $eb $ec
    db $ed                                        ; $7549: $ed
    ldh a, [$fff1]                                ; $754a: $f0 $f1
    ldh a, [c]                                    ; $754c: $f2
    di                                            ; $754d: $f3
    db $f4                                        ; $754e: $f4
    or b                                          ; $754f: $b0
    or b                                          ; $7550: $b0
    or b                                          ; $7551: $b0
    or b                                          ; $7552: $b0
    ld h, b                                       ; $7553: $60
    rst RST_38                                    ; $7554: $ff
    rst RST_38                                    ; $7555: $ff
    rst RST_38                                    ; $7556: $ff
    rst RST_38                                    ; $7557: $ff
    rst RST_38                                    ; $7558: $ff
    rst RST_38                                    ; $7559: $ff
    rst RST_38                                    ; $755a: $ff
    rst RST_38                                    ; $755b: $ff
    rst RST_38                                    ; $755c: $ff
    rst RST_38                                    ; $755d: $ff
    rst RST_38                                    ; $755e: $ff
    rst RST_38                                    ; $755f: $ff
    add hl, hl                                    ; $7560: $29
    or b                                          ; $7561: $b0
    ld a, [hl+]                                   ; $7562: $2a
    or b                                          ; $7563: $b0
    or b                                          ; $7564: $b0
    or b                                          ; $7565: $b0
    or b                                          ; $7566: $b0
    or b                                          ; $7567: $b0
    xor $ef                                       ; $7568: $ee $ef
    push af                                       ; $756a: $f5
    or $b0                                        ; $756b: $f6 $b0
    or b                                          ; $756d: $b0
    or b                                          ; $756e: $b0
    or b                                          ; $756f: $b0
    or b                                          ; $7570: $b0
    ld h, c                                       ; $7571: $61
    ld h, d                                       ; $7572: $62
    ld h, e                                       ; $7573: $63
    rst RST_38                                    ; $7574: $ff
    rst RST_38                                    ; $7575: $ff
    rst RST_38                                    ; $7576: $ff
    rst RST_38                                    ; $7577: $ff
    rst RST_38                                    ; $7578: $ff
    rst RST_38                                    ; $7579: $ff
    rst RST_38                                    ; $757a: $ff
    rst RST_38                                    ; $757b: $ff
    rst RST_38                                    ; $757c: $ff
    rst RST_38                                    ; $757d: $ff
    rst RST_38                                    ; $757e: $ff
    rst RST_38                                    ; $757f: $ff
    dec hl                                        ; $7580: $2b
    inc l                                         ; $7581: $2c
    ld de, $2e2d                                  ; $7582: $11 $2d $2e
    ld a, h                                       ; $7585: $7c
    sbc b                                         ; $7586: $98
    sbc c                                         ; $7587: $99
    sbc d                                         ; $7588: $9a
    sbc e                                         ; $7589: $9b
    sbc h                                         ; $758a: $9c
    sbc l                                         ; $758b: $9d
    sbc [hl]                                      ; $758c: $9e
    sbc a                                         ; $758d: $9f
    ld a, l                                       ; $758e: $7d
    or b                                          ; $758f: $b0
    ld h, h                                       ; $7590: $64
    ld de, $6665                                  ; $7591: $11 $65 $66
    rst RST_38                                    ; $7594: $ff
    rst RST_38                                    ; $7595: $ff
    rst RST_38                                    ; $7596: $ff
    rst RST_38                                    ; $7597: $ff
    rst RST_38                                    ; $7598: $ff
    rst RST_38                                    ; $7599: $ff
    rst RST_38                                    ; $759a: $ff
    rst RST_38                                    ; $759b: $ff
    rst RST_38                                    ; $759c: $ff
    rst RST_38                                    ; $759d: $ff
    rst RST_38                                    ; $759e: $ff
    rst RST_38                                    ; $759f: $ff
    cpl                                           ; $75a0: $2f
    jr nc, jr_00b_75d4                            ; $75a1: $30 $31

    xor h                                         ; $75a3: $ac
    ld [hl-], a                                   ; $75a4: $32
    ld a, [hl]                                    ; $75a5: $7e
    and d                                         ; $75a6: $a2
    and e                                         ; $75a7: $a3
    and h                                         ; $75a8: $a4
    and l                                         ; $75a9: $a5
    and [hl]                                      ; $75aa: $a6
    and a                                         ; $75ab: $a7
    xor b                                         ; $75ac: $a8
    xor c                                         ; $75ad: $a9
    ld a, a                                       ; $75ae: $7f
    inc sp                                        ; $75af: $33
    xor h                                         ; $75b0: $ac
    ld h, a                                       ; $75b1: $67
    ld l, b                                       ; $75b2: $68
    ld l, c                                       ; $75b3: $69
    rst RST_38                                    ; $75b4: $ff
    rst RST_38                                    ; $75b5: $ff
    rst RST_38                                    ; $75b6: $ff
    rst RST_38                                    ; $75b7: $ff
    rst RST_38                                    ; $75b8: $ff
    rst RST_38                                    ; $75b9: $ff
    rst RST_38                                    ; $75ba: $ff
    rst RST_38                                    ; $75bb: $ff
    rst RST_38                                    ; $75bc: $ff
    rst RST_38                                    ; $75bd: $ff
    rst RST_38                                    ; $75be: $ff
    rst RST_38                                    ; $75bf: $ff
    inc [hl]                                      ; $75c0: $34
    dec [hl]                                      ; $75c1: $35
    ld [hl], $37                                  ; $75c2: $36 $37
    xor h                                         ; $75c4: $ac
    ld a, d                                       ; $75c5: $7a
    dec a                                         ; $75c6: $3d
    ld a, $3f                                     ; $75c7: $3e $3f
    ld b, b                                       ; $75c9: $40
    ld b, c                                       ; $75ca: $41
    ld b, d                                       ; $75cb: $42
    ld b, e                                       ; $75cc: $43
    ld b, h                                       ; $75cd: $44
    ld a, e                                       ; $75ce: $7b
    xor h                                         ; $75cf: $ac
    ld l, d                                       ; $75d0: $6a
    ld l, e                                       ; $75d1: $6b
    ld l, h                                       ; $75d2: $6c
    ld l, l                                       ; $75d3: $6d

jr_00b_75d4:
    rst RST_38                                    ; $75d4: $ff
    rst RST_38                                    ; $75d5: $ff
    rst RST_38                                    ; $75d6: $ff
    rst RST_38                                    ; $75d7: $ff
    rst RST_38                                    ; $75d8: $ff
    rst RST_38                                    ; $75d9: $ff
    rst RST_38                                    ; $75da: $ff
    rst RST_38                                    ; $75db: $ff
    rst RST_38                                    ; $75dc: $ff
    rst RST_38                                    ; $75dd: $ff
    rst RST_38                                    ; $75de: $ff
    rst RST_38                                    ; $75df: $ff
    jr c, jr_00b_761b                             ; $75e0: $38 $39

    xor h                                         ; $75e2: $ac
    ld a, [hl-]                                   ; $75e3: $3a
    dec sp                                        ; $75e4: $3b
    or b                                          ; $75e5: $b0
    or b                                          ; $75e6: $b0
    or b                                          ; $75e7: $b0
    ld c, e                                       ; $75e8: $4b
    ld c, h                                       ; $75e9: $4c
    ld c, l                                       ; $75ea: $4d
    ld c, [hl]                                    ; $75eb: $4e
    or b                                          ; $75ec: $b0
    or b                                          ; $75ed: $b0
    or b                                          ; $75ee: $b0
    ld b, [hl]                                    ; $75ef: $46
    ld l, [hl]                                    ; $75f0: $6e
    xor h                                         ; $75f1: $ac
    ld l, a                                       ; $75f2: $6f
    ld [hl], b                                    ; $75f3: $70
    rst RST_38                                    ; $75f4: $ff
    rst RST_38                                    ; $75f5: $ff
    rst RST_38                                    ; $75f6: $ff
    rst RST_38                                    ; $75f7: $ff
    rst RST_38                                    ; $75f8: $ff
    rst RST_38                                    ; $75f9: $ff
    rst RST_38                                    ; $75fa: $ff
    rst RST_38                                    ; $75fb: $ff
    rst RST_38                                    ; $75fc: $ff
    rst RST_38                                    ; $75fd: $ff
    rst RST_38                                    ; $75fe: $ff
    rst RST_38                                    ; $75ff: $ff
    ld b, a                                       ; $7600: $47
    ld de, $4948                                  ; $7601: $11 $48 $49
    ld c, d                                       ; $7604: $4a
    ld sp, hl                                     ; $7605: $f9
    ld a, [$fcfb]                                 ; $7606: $fa $fb $fc
    db $fd                                        ; $7609: $fd
    ld a, [bc]                                    ; $760a: $0a
    dec bc                                        ; $760b: $0b
    inc c                                         ; $760c: $0c
    dec c                                         ; $760d: $0d
    inc h                                         ; $760e: $24
    ld c, a                                       ; $760f: $4f
    ld [hl], c                                    ; $7610: $71
    ld [hl], d                                    ; $7611: $72
    ld de, $ff73                                  ; $7612: $11 $73 $ff
    rst RST_38                                    ; $7615: $ff
    rst RST_38                                    ; $7616: $ff
    rst RST_38                                    ; $7617: $ff
    rst RST_38                                    ; $7618: $ff
    rst RST_38                                    ; $7619: $ff
    rst RST_38                                    ; $761a: $ff

jr_00b_761b:
    rst RST_38                                    ; $761b: $ff
    rst RST_38                                    ; $761c: $ff
    rst RST_38                                    ; $761d: $ff
    rst RST_38                                    ; $761e: $ff
    rst RST_38                                    ; $761f: $ff
    ld d, b                                       ; $7620: $50
    ld d, c                                       ; $7621: $51
    ld d, d                                       ; $7622: $52
    ld d, e                                       ; $7623: $53
    ld d, h                                       ; $7624: $54
    nop                                           ; $7625: $00
    ld bc, $0302                                  ; $7626: $01 $02 $03
    inc b                                         ; $7629: $04
    dec b                                         ; $762a: $05
    ld b, $07                                     ; $762b: $06 $07
    ld [$5709], sp                                ; $762d: $08 $09 $57
    ld [hl], h                                    ; $7630: $74
    ld [hl], l                                    ; $7631: $75
    halt                                          ; $7632: $76
    ld [hl], a                                    ; $7633: $77
    rst RST_38                                    ; $7634: $ff
    rst RST_38                                    ; $7635: $ff
    rst RST_38                                    ; $7636: $ff
    rst RST_38                                    ; $7637: $ff
    rst RST_38                                    ; $7638: $ff
    rst RST_38                                    ; $7639: $ff
    rst RST_38                                    ; $763a: $ff
    rst RST_38                                    ; $763b: $ff
    rst RST_38                                    ; $763c: $ff
    rst RST_38                                    ; $763d: $ff
    rst RST_38                                    ; $763e: $ff
    rst RST_38                                    ; $763f: $ff
    rst RST_38                                    ; $7640: $ff
    rst RST_38                                    ; $7641: $ff
    rst RST_38                                    ; $7642: $ff
    rst RST_38                                    ; $7643: $ff
    rst RST_38                                    ; $7644: $ff
    daa                                           ; $7645: $27
    daa                                           ; $7646: $27
    daa                                           ; $7647: $27
    daa                                           ; $7648: $27
    daa                                           ; $7649: $27
    daa                                           ; $764a: $27
    daa                                           ; $764b: $27
    daa                                           ; $764c: $27
    daa                                           ; $764d: $27
    daa                                           ; $764e: $27
    daa                                           ; $764f: $27
    daa                                           ; $7650: $27
    daa                                           ; $7651: $27
    daa                                           ; $7652: $27
    daa                                           ; $7653: $27
    daa                                           ; $7654: $27
    daa                                           ; $7655: $27
    daa                                           ; $7656: $27
    daa                                           ; $7657: $27
    daa                                           ; $7658: $27
    daa                                           ; $7659: $27
    daa                                           ; $765a: $27
    daa                                           ; $765b: $27
    daa                                           ; $765c: $27
    daa                                           ; $765d: $27
    daa                                           ; $765e: $27
    daa                                           ; $765f: $27
    daa                                           ; $7660: $27
    daa                                           ; $7661: $27
    daa                                           ; $7662: $27
    daa                                           ; $7663: $27
    daa                                           ; $7664: $27
    rst RST_38                                    ; $7665: $ff
    rst RST_38                                    ; $7666: $ff
    rst RST_38                                    ; $7667: $ff
    rst RST_38                                    ; $7668: $ff
    rst RST_38                                    ; $7669: $ff
    rst RST_38                                    ; $766a: $ff
    rst RST_38                                    ; $766b: $ff
    rst RST_38                                    ; $766c: $ff
    rst RST_38                                    ; $766d: $ff
    rst RST_38                                    ; $766e: $ff
    rst RST_38                                    ; $766f: $ff
    daa                                           ; $7670: $27
    daa                                           ; $7671: $27
    daa                                           ; $7672: $27
    daa                                           ; $7673: $27
    daa                                           ; $7674: $27
    daa                                           ; $7675: $27
    daa                                           ; $7676: $27
    daa                                           ; $7677: $27
    daa                                           ; $7678: $27
    daa                                           ; $7679: $27
    daa                                           ; $767a: $27
    daa                                           ; $767b: $27
    daa                                           ; $767c: $27
    daa                                           ; $767d: $27
    daa                                           ; $767e: $27
    daa                                           ; $767f: $27
    daa                                           ; $7680: $27
    daa                                           ; $7681: $27
    daa                                           ; $7682: $27
    daa                                           ; $7683: $27
    daa                                           ; $7684: $27
    rst RST_38                                    ; $7685: $ff
    rst RST_38                                    ; $7686: $ff
    rst RST_38                                    ; $7687: $ff
    rst RST_38                                    ; $7688: $ff
    rst RST_38                                    ; $7689: $ff
    rst RST_38                                    ; $768a: $ff
    rst RST_38                                    ; $768b: $ff
    rst RST_38                                    ; $768c: $ff
    rst RST_38                                    ; $768d: $ff
    rst RST_38                                    ; $768e: $ff
    rst RST_38                                    ; $768f: $ff
    daa                                           ; $7690: $27
    daa                                           ; $7691: $27
    daa                                           ; $7692: $27
    daa                                           ; $7693: $27
    daa                                           ; $7694: $27
    daa                                           ; $7695: $27
    daa                                           ; $7696: $27
    daa                                           ; $7697: $27
    daa                                           ; $7698: $27
    daa                                           ; $7699: $27
    daa                                           ; $769a: $27
    daa                                           ; $769b: $27
    daa                                           ; $769c: $27
    daa                                           ; $769d: $27
    daa                                           ; $769e: $27
    daa                                           ; $769f: $27
    daa                                           ; $76a0: $27
    daa                                           ; $76a1: $27
    daa                                           ; $76a2: $27
    daa                                           ; $76a3: $27
    daa                                           ; $76a4: $27
    daa                                           ; $76a5: $27
    daa                                           ; $76a6: $27
    daa                                           ; $76a7: $27
    daa                                           ; $76a8: $27
    daa                                           ; $76a9: $27
    daa                                           ; $76aa: $27
    daa                                           ; $76ab: $27
    daa                                           ; $76ac: $27
    daa                                           ; $76ad: $27
    daa                                           ; $76ae: $27
    daa                                           ; $76af: $27
    daa                                           ; $76b0: $27
    daa                                           ; $76b1: $27
    daa                                           ; $76b2: $27
    daa                                           ; $76b3: $27
    daa                                           ; $76b4: $27
    daa                                           ; $76b5: $27
    daa                                           ; $76b6: $27
    daa                                           ; $76b7: $27
    daa                                           ; $76b8: $27
    daa                                           ; $76b9: $27
    daa                                           ; $76ba: $27
    daa                                           ; $76bb: $27
    daa                                           ; $76bc: $27
    daa                                           ; $76bd: $27
    daa                                           ; $76be: $27
    daa                                           ; $76bf: $27
    daa                                           ; $76c0: $27
    daa                                           ; $76c1: $27
    daa                                           ; $76c2: $27
    daa                                           ; $76c3: $27
    daa                                           ; $76c4: $27
    daa                                           ; $76c5: $27
    daa                                           ; $76c6: $27
    daa                                           ; $76c7: $27
    daa                                           ; $76c8: $27
    daa                                           ; $76c9: $27
    daa                                           ; $76ca: $27
    daa                                           ; $76cb: $27
    daa                                           ; $76cc: $27
    daa                                           ; $76cd: $27
    daa                                           ; $76ce: $27
    daa                                           ; $76cf: $27
    daa                                           ; $76d0: $27
    daa                                           ; $76d1: $27
    daa                                           ; $76d2: $27
    daa                                           ; $76d3: $27
    daa                                           ; $76d4: $27
    daa                                           ; $76d5: $27
    daa                                           ; $76d6: $27
    daa                                           ; $76d7: $27
    daa                                           ; $76d8: $27
    daa                                           ; $76d9: $27
    daa                                           ; $76da: $27
    daa                                           ; $76db: $27
    daa                                           ; $76dc: $27
    daa                                           ; $76dd: $27
    daa                                           ; $76de: $27
    daa                                           ; $76df: $27
    daa                                           ; $76e0: $27
    daa                                           ; $76e1: $27
    daa                                           ; $76e2: $27
    daa                                           ; $76e3: $27
    daa                                           ; $76e4: $27
    daa                                           ; $76e5: $27
    daa                                           ; $76e6: $27
    daa                                           ; $76e7: $27
    daa                                           ; $76e8: $27
    daa                                           ; $76e9: $27
    daa                                           ; $76ea: $27
    daa                                           ; $76eb: $27
    daa                                           ; $76ec: $27
    daa                                           ; $76ed: $27
    daa                                           ; $76ee: $27
    daa                                           ; $76ef: $27
    daa                                           ; $76f0: $27
    daa                                           ; $76f1: $27
    daa                                           ; $76f2: $27
    daa                                           ; $76f3: $27
    daa                                           ; $76f4: $27
    daa                                           ; $76f5: $27
    daa                                           ; $76f6: $27
    daa                                           ; $76f7: $27
    daa                                           ; $76f8: $27
    daa                                           ; $76f9: $27
    daa                                           ; $76fa: $27
    daa                                           ; $76fb: $27
    daa                                           ; $76fc: $27
    daa                                           ; $76fd: $27
    daa                                           ; $76fe: $27
    daa                                           ; $76ff: $27
    daa                                           ; $7700: $27
    daa                                           ; $7701: $27
    daa                                           ; $7702: $27
    daa                                           ; $7703: $27
    daa                                           ; $7704: $27
    daa                                           ; $7705: $27
    daa                                           ; $7706: $27
    daa                                           ; $7707: $27
    daa                                           ; $7708: $27
    daa                                           ; $7709: $27
    daa                                           ; $770a: $27
    daa                                           ; $770b: $27
    daa                                           ; $770c: $27
    daa                                           ; $770d: $27
    daa                                           ; $770e: $27
    daa                                           ; $770f: $27
    daa                                           ; $7710: $27
    daa                                           ; $7711: $27
    daa                                           ; $7712: $27
    daa                                           ; $7713: $27
    daa                                           ; $7714: $27
    daa                                           ; $7715: $27
    daa                                           ; $7716: $27
    daa                                           ; $7717: $27
    daa                                           ; $7718: $27
    daa                                           ; $7719: $27
    daa                                           ; $771a: $27
    daa                                           ; $771b: $27
    daa                                           ; $771c: $27
    daa                                           ; $771d: $27
    daa                                           ; $771e: $27
    daa                                           ; $771f: $27
    daa                                           ; $7720: $27
    daa                                           ; $7721: $27
    daa                                           ; $7722: $27
    daa                                           ; $7723: $27
    daa                                           ; $7724: $27
    daa                                           ; $7725: $27
    daa                                           ; $7726: $27
    daa                                           ; $7727: $27
    daa                                           ; $7728: $27
    daa                                           ; $7729: $27
    daa                                           ; $772a: $27
    daa                                           ; $772b: $27
    daa                                           ; $772c: $27
    daa                                           ; $772d: $27
    daa                                           ; $772e: $27
    daa                                           ; $772f: $27
    daa                                           ; $7730: $27
    daa                                           ; $7731: $27
    daa                                           ; $7732: $27
    daa                                           ; $7733: $27
    daa                                           ; $7734: $27
    daa                                           ; $7735: $27
    daa                                           ; $7736: $27
    daa                                           ; $7737: $27
    daa                                           ; $7738: $27
    daa                                           ; $7739: $27
    daa                                           ; $773a: $27
    daa                                           ; $773b: $27
    daa                                           ; $773c: $27
    daa                                           ; $773d: $27
    daa                                           ; $773e: $27
    daa                                           ; $773f: $27
    daa                                           ; $7740: $27
    daa                                           ; $7741: $27
    daa                                           ; $7742: $27
    daa                                           ; $7743: $27
    daa                                           ; $7744: $27
    daa                                           ; $7745: $27
    daa                                           ; $7746: $27
    daa                                           ; $7747: $27
    daa                                           ; $7748: $27
    daa                                           ; $7749: $27
    daa                                           ; $774a: $27
    daa                                           ; $774b: $27
    daa                                           ; $774c: $27
    daa                                           ; $774d: $27
    daa                                           ; $774e: $27
    daa                                           ; $774f: $27
    daa                                           ; $7750: $27
    daa                                           ; $7751: $27
    daa                                           ; $7752: $27
    daa                                           ; $7753: $27
    daa                                           ; $7754: $27
    daa                                           ; $7755: $27
    daa                                           ; $7756: $27
    daa                                           ; $7757: $27
    daa                                           ; $7758: $27
    daa                                           ; $7759: $27
    daa                                           ; $775a: $27
    daa                                           ; $775b: $27
    daa                                           ; $775c: $27
    daa                                           ; $775d: $27
    daa                                           ; $775e: $27
    daa                                           ; $775f: $27
    daa                                           ; $7760: $27
    daa                                           ; $7761: $27
    daa                                           ; $7762: $27
    daa                                           ; $7763: $27
    daa                                           ; $7764: $27
    daa                                           ; $7765: $27
    daa                                           ; $7766: $27
    daa                                           ; $7767: $27
    daa                                           ; $7768: $27
    daa                                           ; $7769: $27
    daa                                           ; $776a: $27
    daa                                           ; $776b: $27
    daa                                           ; $776c: $27
    daa                                           ; $776d: $27
    daa                                           ; $776e: $27
    daa                                           ; $776f: $27
    daa                                           ; $7770: $27
    daa                                           ; $7771: $27
    daa                                           ; $7772: $27
    daa                                           ; $7773: $27
    daa                                           ; $7774: $27
    daa                                           ; $7775: $27
    daa                                           ; $7776: $27
    daa                                           ; $7777: $27
    daa                                           ; $7778: $27
    daa                                           ; $7779: $27
    daa                                           ; $777a: $27
    daa                                           ; $777b: $27
    daa                                           ; $777c: $27
    daa                                           ; $777d: $27
    daa                                           ; $777e: $27
    daa                                           ; $777f: $27
    daa                                           ; $7780: $27
    daa                                           ; $7781: $27
    daa                                           ; $7782: $27
    daa                                           ; $7783: $27
    daa                                           ; $7784: $27
    daa                                           ; $7785: $27
    daa                                           ; $7786: $27
    daa                                           ; $7787: $27
    daa                                           ; $7788: $27
    daa                                           ; $7789: $27
    daa                                           ; $778a: $27
    daa                                           ; $778b: $27
    daa                                           ; $778c: $27
    daa                                           ; $778d: $27
    daa                                           ; $778e: $27
    daa                                           ; $778f: $27
    daa                                           ; $7790: $27
    daa                                           ; $7791: $27
    daa                                           ; $7792: $27
    daa                                           ; $7793: $27
    daa                                           ; $7794: $27
    daa                                           ; $7795: $27
    daa                                           ; $7796: $27
    daa                                           ; $7797: $27
    daa                                           ; $7798: $27
    daa                                           ; $7799: $27
    daa                                           ; $779a: $27
    daa                                           ; $779b: $27
    daa                                           ; $779c: $27
    daa                                           ; $779d: $27
    daa                                           ; $779e: $27
    daa                                           ; $779f: $27
    daa                                           ; $77a0: $27
    daa                                           ; $77a1: $27
    daa                                           ; $77a2: $27
    daa                                           ; $77a3: $27
    daa                                           ; $77a4: $27
    daa                                           ; $77a5: $27
    daa                                           ; $77a6: $27
    daa                                           ; $77a7: $27
    daa                                           ; $77a8: $27
    daa                                           ; $77a9: $27
    daa                                           ; $77aa: $27
    daa                                           ; $77ab: $27
    daa                                           ; $77ac: $27
    daa                                           ; $77ad: $27
    daa                                           ; $77ae: $27
    daa                                           ; $77af: $27
    daa                                           ; $77b0: $27
    daa                                           ; $77b1: $27
    daa                                           ; $77b2: $27
    daa                                           ; $77b3: $27
    daa                                           ; $77b4: $27
    daa                                           ; $77b5: $27
    daa                                           ; $77b6: $27
    daa                                           ; $77b7: $27
    daa                                           ; $77b8: $27
    daa                                           ; $77b9: $27
    daa                                           ; $77ba: $27
    daa                                           ; $77bb: $27
    daa                                           ; $77bc: $27
    daa                                           ; $77bd: $27
    daa                                           ; $77be: $27
    daa                                           ; $77bf: $27
    daa                                           ; $77c0: $27
    daa                                           ; $77c1: $27
    daa                                           ; $77c2: $27
    daa                                           ; $77c3: $27
    daa                                           ; $77c4: $27
    daa                                           ; $77c5: $27
    daa                                           ; $77c6: $27
    daa                                           ; $77c7: $27
    daa                                           ; $77c8: $27
    daa                                           ; $77c9: $27
    daa                                           ; $77ca: $27
    daa                                           ; $77cb: $27
    daa                                           ; $77cc: $27
    daa                                           ; $77cd: $27
    daa                                           ; $77ce: $27
    daa                                           ; $77cf: $27
    daa                                           ; $77d0: $27
    daa                                           ; $77d1: $27
    daa                                           ; $77d2: $27
    daa                                           ; $77d3: $27
    daa                                           ; $77d4: $27
    daa                                           ; $77d5: $27
    daa                                           ; $77d6: $27
    daa                                           ; $77d7: $27
    daa                                           ; $77d8: $27
    daa                                           ; $77d9: $27
    daa                                           ; $77da: $27
    daa                                           ; $77db: $27
    daa                                           ; $77dc: $27
    daa                                           ; $77dd: $27
    daa                                           ; $77de: $27
    daa                                           ; $77df: $27
    daa                                           ; $77e0: $27
    daa                                           ; $77e1: $27
    daa                                           ; $77e2: $27
    daa                                           ; $77e3: $27
    daa                                           ; $77e4: $27
    daa                                           ; $77e5: $27
    daa                                           ; $77e6: $27
    daa                                           ; $77e7: $27
    daa                                           ; $77e8: $27
    daa                                           ; $77e9: $27
    daa                                           ; $77ea: $27
    daa                                           ; $77eb: $27
    daa                                           ; $77ec: $27
    daa                                           ; $77ed: $27
    daa                                           ; $77ee: $27
    daa                                           ; $77ef: $27
    daa                                           ; $77f0: $27
    daa                                           ; $77f1: $27
    daa                                           ; $77f2: $27
    daa                                           ; $77f3: $27
    daa                                           ; $77f4: $27
    daa                                           ; $77f5: $27
    daa                                           ; $77f6: $27
    daa                                           ; $77f7: $27
    daa                                           ; $77f8: $27
    daa                                           ; $77f9: $27
    daa                                           ; $77fa: $27
    daa                                           ; $77fb: $27
    daa                                           ; $77fc: $27
    daa                                           ; $77fd: $27
    daa                                           ; $77fe: $27
    daa                                           ; $77ff: $27
    inc c                                         ; $7800: $0c
    inc c                                         ; $7801: $0c
    inc c                                         ; $7802: $0c
    nop                                           ; $7803: $00
    ld bc, $0302                                  ; $7804: $01 $02 $03
    inc b                                         ; $7807: $04
    dec b                                         ; $7808: $05
    ld b, $07                                     ; $7809: $06 $07
    ld [$0a09], sp                                ; $780b: $08 $09 $0a
    dec bc                                        ; $780e: $0b
    nop                                           ; $780f: $00
    ld bc, $0c0c                                  ; $7810: $01 $0c $0c
    inc c                                         ; $7813: $0c
    rst RST_38                                    ; $7814: $ff
    rst RST_38                                    ; $7815: $ff
    rst RST_38                                    ; $7816: $ff
    rst RST_38                                    ; $7817: $ff
    rst RST_38                                    ; $7818: $ff
    rst RST_38                                    ; $7819: $ff
    rst RST_38                                    ; $781a: $ff
    rst RST_38                                    ; $781b: $ff
    rst RST_38                                    ; $781c: $ff
    rst RST_38                                    ; $781d: $ff
    rst RST_38                                    ; $781e: $ff
    rst RST_38                                    ; $781f: $ff
    inc e                                         ; $7820: $1c
    inc e                                         ; $7821: $1c
    inc e                                         ; $7822: $1c
    db $10                                        ; $7823: $10
    ld de, $1312                                  ; $7824: $11 $12 $13
    inc d                                         ; $7827: $14
    dec d                                         ; $7828: $15
    ld d, $17                                     ; $7829: $16 $17
    jr @+$1b                                      ; $782b: $18 $19

    ld a, [de]                                    ; $782d: $1a
    dec de                                        ; $782e: $1b
    db $10                                        ; $782f: $10
    ld de, $1c1c                                  ; $7830: $11 $1c $1c
    inc e                                         ; $7833: $1c
    rst RST_38                                    ; $7834: $ff
    rst RST_38                                    ; $7835: $ff
    rst RST_38                                    ; $7836: $ff
    rst RST_38                                    ; $7837: $ff
    rst RST_38                                    ; $7838: $ff
    rst RST_38                                    ; $7839: $ff
    rst RST_38                                    ; $783a: $ff
    rst RST_38                                    ; $783b: $ff
    rst RST_38                                    ; $783c: $ff
    rst RST_38                                    ; $783d: $ff
    rst RST_38                                    ; $783e: $ff
    rst RST_38                                    ; $783f: $ff
    rst RST_00                                    ; $7840: $c7
    jp nz, $c3c6                                  ; $7841: $c2 $c6 $c3

    rst RST_00                                    ; $7844: $c7
    jp nz, $c0c6                                  ; $7845: $c2 $c6 $c0

    jp z, $c7c3                                   ; $7848: $ca $c3 $c7

    ret nz                                        ; $784b: $c0

    jp z, $c7c3                                   ; $784c: $ca $c3 $c7

    jp nz, $c1c6                                  ; $784f: $c2 $c6 $c1

    rst RST_00                                    ; $7852: $c7
    ret nz                                        ; $7853: $c0

    rst RST_38                                    ; $7854: $ff
    rst RST_38                                    ; $7855: $ff
    rst RST_38                                    ; $7856: $ff
    rst RST_38                                    ; $7857: $ff
    rst RST_38                                    ; $7858: $ff
    rst RST_38                                    ; $7859: $ff
    rst RST_38                                    ; $785a: $ff
    rst RST_38                                    ; $785b: $ff
    rst RST_38                                    ; $785c: $ff
    rst RST_38                                    ; $785d: $ff
    rst RST_38                                    ; $785e: $ff
    rst RST_38                                    ; $785f: $ff
    rst RST_10                                    ; $7860: $d7
    jp nc, Jump_00b_4dd6                          ; $7861: $d2 $d6 $4d

    ld c, [hl]                                    ; $7864: $4e
    ld c, a                                       ; $7865: $4f
    ld e, l                                       ; $7866: $5d
    ret nc                                        ; $7867: $d0

    ld e, [hl]                                    ; $7868: $5e
    ld e, a                                       ; $7869: $5f
    ld l, l                                       ; $786a: $6d
    ld l, [hl]                                    ; $786b: $6e
    jp c, $d77d                                   ; $786c: $da $7d $d7

    jp nc, $d1d6                                  ; $786f: $d2 $d6 $d1

    rst RST_10                                    ; $7872: $d7
    ret nc                                        ; $7873: $d0

    rst RST_38                                    ; $7874: $ff
    rst RST_38                                    ; $7875: $ff
    rst RST_38                                    ; $7876: $ff
    rst RST_38                                    ; $7877: $ff
    rst RST_38                                    ; $7878: $ff
    rst RST_38                                    ; $7879: $ff
    rst RST_38                                    ; $787a: $ff
    rst RST_38                                    ; $787b: $ff
    rst RST_38                                    ; $787c: $ff
    rst RST_38                                    ; $787d: $ff
    rst RST_38                                    ; $787e: $ff
    rst RST_38                                    ; $787f: $ff
    rst RST_20                                    ; $7880: $e7
    ldh [c], a                                    ; $7881: $e2
    and $20                                       ; $7882: $e6 $20
    ld c, d                                       ; $7884: $4a
    ld c, d                                       ; $7885: $4a
    ld c, d                                       ; $7886: $4a
    ld c, d                                       ; $7887: $4a
    ld c, d                                       ; $7888: $4a
    ld c, d                                       ; $7889: $4a
    ld c, d                                       ; $788a: $4a
    ld c, d                                       ; $788b: $4a
    ld c, d                                       ; $788c: $4a
    ld c, d                                       ; $788d: $4a
    ld c, d                                       ; $788e: $4a
    ld c, d                                       ; $788f: $4a
    daa                                           ; $7890: $27
    pop hl                                        ; $7891: $e1
    rst RST_20                                    ; $7892: $e7
    ldh [rIE], a                                  ; $7893: $e0 $ff
    rst RST_38                                    ; $7895: $ff
    rst RST_38                                    ; $7896: $ff
    rst RST_38                                    ; $7897: $ff
    rst RST_38                                    ; $7898: $ff
    rst RST_38                                    ; $7899: $ff
    rst RST_38                                    ; $789a: $ff
    rst RST_38                                    ; $789b: $ff
    rst RST_38                                    ; $789c: $ff
    rst RST_38                                    ; $789d: $ff
    rst RST_38                                    ; $789e: $ff
    rst RST_38                                    ; $789f: $ff
    rst RST_30                                    ; $78a0: $f7
    ldh a, [c]                                    ; $78a1: $f2
    or $30                                        ; $78a2: $f6 $30
    ld e, d                                       ; $78a4: $5a
    ld e, d                                       ; $78a5: $5a
    ld e, d                                       ; $78a6: $5a
    ld e, d                                       ; $78a7: $5a
    ld e, d                                       ; $78a8: $5a
    ld e, d                                       ; $78a9: $5a
    ld e, d                                       ; $78aa: $5a
    ld e, d                                       ; $78ab: $5a
    ld e, d                                       ; $78ac: $5a
    ld e, d                                       ; $78ad: $5a
    ld e, d                                       ; $78ae: $5a
    ld e, d                                       ; $78af: $5a
    scf                                           ; $78b0: $37
    pop af                                        ; $78b1: $f1
    rst RST_30                                    ; $78b2: $f7
    ldh a, [rIE]                                  ; $78b3: $f0 $ff
    rst RST_38                                    ; $78b5: $ff
    rst RST_38                                    ; $78b6: $ff
    rst RST_38                                    ; $78b7: $ff
    rst RST_38                                    ; $78b8: $ff
    rst RST_38                                    ; $78b9: $ff
    rst RST_38                                    ; $78ba: $ff
    rst RST_38                                    ; $78bb: $ff
    rst RST_38                                    ; $78bc: $ff
    rst RST_38                                    ; $78bd: $ff
    rst RST_38                                    ; $78be: $ff
    rst RST_38                                    ; $78bf: $ff
    add $c0                                       ; $78c0: $c6 $c0
    jp z, $c7c3                                   ; $78c2: $ca $c3 $c7

    jp nz, $c5c6                                  ; $78c5: $c2 $c6 $c5

    jp z, $c7c3                                   ; $78c8: $ca $c3 $c7

    ret nz                                        ; $78cb: $c0

    jp z, $c7c3                                   ; $78cc: $ca $c3 $c7

    jp nz, $c5c6                                  ; $78cf: $c2 $c6 $c5

    jp z, $ffc3                                   ; $78d2: $ca $c3 $ff

    rst RST_38                                    ; $78d5: $ff
    rst RST_38                                    ; $78d6: $ff
    rst RST_38                                    ; $78d7: $ff
    rst RST_38                                    ; $78d8: $ff
    rst RST_38                                    ; $78d9: $ff
    rst RST_38                                    ; $78da: $ff
    rst RST_38                                    ; $78db: $ff
    rst RST_38                                    ; $78dc: $ff
    rst RST_38                                    ; $78dd: $ff
    rst RST_38                                    ; $78de: $ff
    rst RST_38                                    ; $78df: $ff
    sub $d0                                       ; $78e0: $d6 $d0
    jp c, Jump_00b_4e4d                           ; $78e2: $da $4d $4e

    ld c, a                                       ; $78e5: $4f
    ld e, l                                       ; $78e6: $5d
    push de                                       ; $78e7: $d5
    ld e, [hl]                                    ; $78e8: $5e
    ld e, a                                       ; $78e9: $5f
    ld l, l                                       ; $78ea: $6d
    ld l, [hl]                                    ; $78eb: $6e
    jp c, $d77e                                   ; $78ec: $da $7e $d7

    jp nc, $d5d6                                  ; $78ef: $d2 $d6 $d5

    jp c, $ffd3                                   ; $78f2: $da $d3 $ff

    rst RST_38                                    ; $78f5: $ff
    rst RST_38                                    ; $78f6: $ff
    rst RST_38                                    ; $78f7: $ff
    rst RST_38                                    ; $78f8: $ff
    rst RST_38                                    ; $78f9: $ff
    rst RST_38                                    ; $78fa: $ff
    rst RST_38                                    ; $78fb: $ff
    rst RST_38                                    ; $78fc: $ff
    rst RST_38                                    ; $78fd: $ff
    rst RST_38                                    ; $78fe: $ff
    rst RST_38                                    ; $78ff: $ff
    and $e0                                       ; $7900: $e6 $e0
    ld [$4a20], a                                 ; $7902: $ea $20 $4a
    ld c, d                                       ; $7905: $4a
    ld c, d                                       ; $7906: $4a
    ld c, d                                       ; $7907: $4a
    ld c, d                                       ; $7908: $4a
    ld c, d                                       ; $7909: $4a
    ld c, d                                       ; $790a: $4a
    ld c, d                                       ; $790b: $4a
    ld c, d                                       ; $790c: $4a
    ld c, d                                       ; $790d: $4a
    ld c, d                                       ; $790e: $4a
    ld c, d                                       ; $790f: $4a
    daa                                           ; $7910: $27
    push hl                                       ; $7911: $e5
    rst RST_20                                    ; $7912: $e7
    db $e3                                        ; $7913: $e3
    rst RST_38                                    ; $7914: $ff
    rst RST_38                                    ; $7915: $ff
    rst RST_38                                    ; $7916: $ff
    rst RST_38                                    ; $7917: $ff
    rst RST_38                                    ; $7918: $ff
    rst RST_38                                    ; $7919: $ff
    rst RST_38                                    ; $791a: $ff
    rst RST_38                                    ; $791b: $ff
    rst RST_38                                    ; $791c: $ff
    rst RST_38                                    ; $791d: $ff
    rst RST_38                                    ; $791e: $ff
    rst RST_38                                    ; $791f: $ff
    or $f0                                        ; $7920: $f6 $f0
    ld a, [$5a30]                                 ; $7922: $fa $30 $5a
    ld e, d                                       ; $7925: $5a
    ld e, d                                       ; $7926: $5a
    ld e, d                                       ; $7927: $5a
    ld e, d                                       ; $7928: $5a
    ld e, d                                       ; $7929: $5a
    ld e, d                                       ; $792a: $5a
    ld e, d                                       ; $792b: $5a
    ld e, d                                       ; $792c: $5a
    ld e, d                                       ; $792d: $5a
    ld e, d                                       ; $792e: $5a
    ld e, d                                       ; $792f: $5a
    scf                                           ; $7930: $37
    push af                                       ; $7931: $f5
    rst RST_30                                    ; $7932: $f7
    di                                            ; $7933: $f3
    rst RST_38                                    ; $7934: $ff
    rst RST_38                                    ; $7935: $ff
    rst RST_38                                    ; $7936: $ff
    rst RST_38                                    ; $7937: $ff
    rst RST_38                                    ; $7938: $ff
    rst RST_38                                    ; $7939: $ff
    rst RST_38                                    ; $793a: $ff
    rst RST_38                                    ; $793b: $ff
    rst RST_38                                    ; $793c: $ff
    rst RST_38                                    ; $793d: $ff
    rst RST_38                                    ; $793e: $ff
    rst RST_38                                    ; $793f: $ff
    jp z, $c7c3                                   ; $7940: $ca $c3 $c7

    jp $c2c7                                      ; $7943: $c3 $c7 $c2


    add $c1                                       ; $7946: $c6 $c1
    jp z, $c7c3                                   ; $7948: $ca $c3 $c7

    ret nz                                        ; $794b: $c0

    jp z, $c7c3                                   ; $794c: $ca $c3 $c7

    jp nz, $c0c6                                  ; $794f: $c2 $c6 $c0

    add $c1                                       ; $7952: $c6 $c1
    rst RST_38                                    ; $7954: $ff
    rst RST_38                                    ; $7955: $ff
    rst RST_38                                    ; $7956: $ff
    rst RST_38                                    ; $7957: $ff
    rst RST_38                                    ; $7958: $ff
    rst RST_38                                    ; $7959: $ff
    rst RST_38                                    ; $795a: $ff
    rst RST_38                                    ; $795b: $ff
    rst RST_38                                    ; $795c: $ff
    rst RST_38                                    ; $795d: $ff
    rst RST_38                                    ; $795e: $ff
    rst RST_38                                    ; $795f: $ff
    jp c, $d7d3                                   ; $7960: $da $d3 $d7

    ld c, l                                       ; $7963: $4d
    ld c, [hl]                                    ; $7964: $4e
    ld c, a                                       ; $7965: $4f
    ld e, l                                       ; $7966: $5d
    pop de                                        ; $7967: $d1
    ld e, [hl]                                    ; $7968: $5e
    ld e, a                                       ; $7969: $5f
    ld l, l                                       ; $796a: $6d
    ld l, [hl]                                    ; $796b: $6e
    jp c, $d77f                                   ; $796c: $da $7f $d7

    jp nc, $d0d6                                  ; $796f: $d2 $d6 $d0

    sub $d1                                       ; $7972: $d6 $d1
    rst RST_38                                    ; $7974: $ff
    rst RST_38                                    ; $7975: $ff
    rst RST_38                                    ; $7976: $ff
    rst RST_38                                    ; $7977: $ff
    rst RST_38                                    ; $7978: $ff
    rst RST_38                                    ; $7979: $ff
    rst RST_38                                    ; $797a: $ff
    rst RST_38                                    ; $797b: $ff
    rst RST_38                                    ; $797c: $ff
    rst RST_38                                    ; $797d: $ff
    rst RST_38                                    ; $797e: $ff
    rst RST_38                                    ; $797f: $ff
    ld [$e7e3], a                                 ; $7980: $ea $e3 $e7
    jr nz, jr_00b_79cf                            ; $7983: $20 $4a

    ld c, d                                       ; $7985: $4a
    ld c, d                                       ; $7986: $4a
    ld c, d                                       ; $7987: $4a
    ld c, d                                       ; $7988: $4a
    ld c, d                                       ; $7989: $4a
    ld c, d                                       ; $798a: $4a
    ld c, d                                       ; $798b: $4a
    ld c, d                                       ; $798c: $4a
    ld c, d                                       ; $798d: $4a
    ld c, d                                       ; $798e: $4a
    ld c, d                                       ; $798f: $4a
    daa                                           ; $7990: $27
    ldh [$ffe6], a                                ; $7991: $e0 $e6
    pop hl                                        ; $7993: $e1
    rst RST_38                                    ; $7994: $ff
    rst RST_38                                    ; $7995: $ff
    rst RST_38                                    ; $7996: $ff
    rst RST_38                                    ; $7997: $ff
    rst RST_38                                    ; $7998: $ff
    rst RST_38                                    ; $7999: $ff
    rst RST_38                                    ; $799a: $ff
    rst RST_38                                    ; $799b: $ff
    rst RST_38                                    ; $799c: $ff
    rst RST_38                                    ; $799d: $ff
    rst RST_38                                    ; $799e: $ff
    rst RST_38                                    ; $799f: $ff
    ld a, [$f7f3]                                 ; $79a0: $fa $f3 $f7
    jr nc, jr_00b_79ff                            ; $79a3: $30 $5a

    ld e, d                                       ; $79a5: $5a
    ld e, d                                       ; $79a6: $5a
    ld e, d                                       ; $79a7: $5a
    ld e, d                                       ; $79a8: $5a
    ld e, d                                       ; $79a9: $5a
    ld e, d                                       ; $79aa: $5a
    ld e, d                                       ; $79ab: $5a
    ld e, d                                       ; $79ac: $5a
    ld e, d                                       ; $79ad: $5a
    ld e, d                                       ; $79ae: $5a
    ld e, d                                       ; $79af: $5a
    scf                                           ; $79b0: $37
    ldh a, [$fff6]                                ; $79b1: $f0 $f6
    pop af                                        ; $79b3: $f1
    rst RST_38                                    ; $79b4: $ff
    rst RST_38                                    ; $79b5: $ff
    rst RST_38                                    ; $79b6: $ff
    rst RST_38                                    ; $79b7: $ff
    rst RST_38                                    ; $79b8: $ff
    rst RST_38                                    ; $79b9: $ff
    rst RST_38                                    ; $79ba: $ff
    rst RST_38                                    ; $79bb: $ff
    rst RST_38                                    ; $79bc: $ff
    rst RST_38                                    ; $79bd: $ff
    rst RST_38                                    ; $79be: $ff
    rst RST_38                                    ; $79bf: $ff
    rst RST_00                                    ; $79c0: $c7
    ret nz                                        ; $79c1: $c0

    jp z, $c7c5                                   ; $79c2: $ca $c5 $c7

    jp nz, $c5c6                                  ; $79c5: $c2 $c6 $c5

    jp z, $c7c3                                   ; $79c8: $ca $c3 $c7

    ret nz                                        ; $79cb: $c0

    jp z, $c7c5                                   ; $79cc: $ca $c5 $c7

jr_00b_79cf:
    jp nz, $c0c6                                  ; $79cf: $c2 $c6 $c0

    jp z, $ffc3                                   ; $79d2: $ca $c3 $ff

    rst RST_38                                    ; $79d5: $ff
    rst RST_38                                    ; $79d6: $ff
    rst RST_38                                    ; $79d7: $ff
    rst RST_38                                    ; $79d8: $ff
    rst RST_38                                    ; $79d9: $ff
    rst RST_38                                    ; $79da: $ff
    rst RST_38                                    ; $79db: $ff
    rst RST_38                                    ; $79dc: $ff
    rst RST_38                                    ; $79dd: $ff
    rst RST_38                                    ; $79de: $ff
    rst RST_38                                    ; $79df: $ff
    rst RST_10                                    ; $79e0: $d7
    ret nc                                        ; $79e1: $d0

    jp c, $cbd5                                   ; $79e2: $da $d5 $cb

    call z, $cecd                                 ; $79e5: $cc $cd $ce
    rst RST_08                                    ; $79e8: $cf
    db $eb                                        ; $79e9: $eb
    db $ec                                        ; $79ea: $ec
    db $ed                                        ; $79eb: $ed
    xor $ef                                       ; $79ec: $ee $ef
    adc a                                         ; $79ee: $8f
    xor a                                         ; $79ef: $af
    sub $d0                                       ; $79f0: $d6 $d0
    jp c, $ffd3                                   ; $79f2: $da $d3 $ff

    rst RST_38                                    ; $79f5: $ff
    rst RST_38                                    ; $79f6: $ff
    rst RST_38                                    ; $79f7: $ff
    rst RST_38                                    ; $79f8: $ff
    rst RST_38                                    ; $79f9: $ff
    rst RST_38                                    ; $79fa: $ff
    rst RST_38                                    ; $79fb: $ff
    rst RST_38                                    ; $79fc: $ff
    rst RST_38                                    ; $79fd: $ff
    rst RST_38                                    ; $79fe: $ff

jr_00b_79ff:
    rst RST_38                                    ; $79ff: $ff
    rst RST_20                                    ; $7a00: $e7
    ldh [$ffea], a                                ; $7a01: $e0 $ea
    push hl                                       ; $7a03: $e5
    db $db                                        ; $7a04: $db
    call c, $dedd                                 ; $7a05: $dc $dd $de
    rst RST_18                                    ; $7a08: $df
    ei                                            ; $7a09: $fb
    db $fc                                        ; $7a0a: $fc
    db $fd                                        ; $7a0b: $fd
    cp $ff                                        ; $7a0c: $fe $ff
    sbc a                                         ; $7a0e: $9f
    cp a                                          ; $7a0f: $bf
    and $e0                                       ; $7a10: $e6 $e0
    ld [$ffe3], a                                 ; $7a12: $ea $e3 $ff
    rst RST_38                                    ; $7a15: $ff
    rst RST_38                                    ; $7a16: $ff
    rst RST_38                                    ; $7a17: $ff
    rst RST_38                                    ; $7a18: $ff
    rst RST_38                                    ; $7a19: $ff
    rst RST_38                                    ; $7a1a: $ff
    rst RST_38                                    ; $7a1b: $ff
    rst RST_38                                    ; $7a1c: $ff
    rst RST_38                                    ; $7a1d: $ff
    rst RST_38                                    ; $7a1e: $ff
    rst RST_38                                    ; $7a1f: $ff
    rst RST_30                                    ; $7a20: $f7
    ldh a, [$fffa]                                ; $7a21: $f0 $fa
    push af                                       ; $7a23: $f5
    rst RST_30                                    ; $7a24: $f7
    ldh a, [c]                                    ; $7a25: $f2
    or $f5                                        ; $7a26: $f6 $f5
    ld a, [$f7f3]                                 ; $7a28: $fa $f3 $f7
    ldh a, [$fffa]                                ; $7a2b: $f0 $fa
    push af                                       ; $7a2d: $f5
    rst RST_30                                    ; $7a2e: $f7
    ldh a, [c]                                    ; $7a2f: $f2
    or $f0                                        ; $7a30: $f6 $f0
    ld a, [$fff3]                                 ; $7a32: $fa $f3 $ff
    rst RST_38                                    ; $7a35: $ff
    rst RST_38                                    ; $7a36: $ff
    rst RST_38                                    ; $7a37: $ff
    rst RST_38                                    ; $7a38: $ff
    rst RST_38                                    ; $7a39: $ff
    rst RST_38                                    ; $7a3a: $ff
    rst RST_38                                    ; $7a3b: $ff
    rst RST_38                                    ; $7a3c: $ff
    rst RST_38                                    ; $7a3d: $ff
    rst RST_38                                    ; $7a3e: $ff
    rst RST_38                                    ; $7a3f: $ff
    rst RST_38                                    ; $7a40: $ff
    rst RST_38                                    ; $7a41: $ff
    rst RST_38                                    ; $7a42: $ff
    rst RST_38                                    ; $7a43: $ff
    rst RST_38                                    ; $7a44: $ff
    rst RST_38                                    ; $7a45: $ff
    rst RST_38                                    ; $7a46: $ff
    rst RST_38                                    ; $7a47: $ff
    rst RST_38                                    ; $7a48: $ff
    rst RST_38                                    ; $7a49: $ff
    rst RST_38                                    ; $7a4a: $ff
    rst RST_38                                    ; $7a4b: $ff
    rst RST_38                                    ; $7a4c: $ff
    rst RST_38                                    ; $7a4d: $ff
    rst RST_38                                    ; $7a4e: $ff
    rst RST_38                                    ; $7a4f: $ff
    rst RST_38                                    ; $7a50: $ff
    rst RST_38                                    ; $7a51: $ff
    rst RST_38                                    ; $7a52: $ff
    rst RST_38                                    ; $7a53: $ff
    rst RST_38                                    ; $7a54: $ff
    rst RST_38                                    ; $7a55: $ff
    rst RST_38                                    ; $7a56: $ff
    rst RST_38                                    ; $7a57: $ff
    rst RST_38                                    ; $7a58: $ff
    rst RST_38                                    ; $7a59: $ff
    rst RST_38                                    ; $7a5a: $ff
    rst RST_38                                    ; $7a5b: $ff
    rst RST_38                                    ; $7a5c: $ff
    rst RST_38                                    ; $7a5d: $ff
    rst RST_38                                    ; $7a5e: $ff
    rst RST_38                                    ; $7a5f: $ff
    rst RST_38                                    ; $7a60: $ff
    rst RST_38                                    ; $7a61: $ff
    rst RST_38                                    ; $7a62: $ff
    rst RST_38                                    ; $7a63: $ff
    rst RST_38                                    ; $7a64: $ff
    rst RST_38                                    ; $7a65: $ff
    rst RST_38                                    ; $7a66: $ff
    rst RST_38                                    ; $7a67: $ff
    rst RST_38                                    ; $7a68: $ff
    rst RST_38                                    ; $7a69: $ff
    rst RST_38                                    ; $7a6a: $ff
    rst RST_38                                    ; $7a6b: $ff
    rst RST_38                                    ; $7a6c: $ff
    rst RST_38                                    ; $7a6d: $ff
    rst RST_38                                    ; $7a6e: $ff
    rst RST_38                                    ; $7a6f: $ff
    rst RST_38                                    ; $7a70: $ff
    rst RST_38                                    ; $7a71: $ff
    rst RST_38                                    ; $7a72: $ff
    rst RST_38                                    ; $7a73: $ff
    rst RST_38                                    ; $7a74: $ff
    rst RST_38                                    ; $7a75: $ff
    rst RST_38                                    ; $7a76: $ff
    rst RST_38                                    ; $7a77: $ff
    rst RST_38                                    ; $7a78: $ff
    rst RST_38                                    ; $7a79: $ff
    rst RST_38                                    ; $7a7a: $ff
    rst RST_38                                    ; $7a7b: $ff
    rst RST_38                                    ; $7a7c: $ff
    rst RST_38                                    ; $7a7d: $ff
    rst RST_38                                    ; $7a7e: $ff
    rst RST_38                                    ; $7a7f: $ff
    rst RST_38                                    ; $7a80: $ff
    rst RST_38                                    ; $7a81: $ff
    rst RST_38                                    ; $7a82: $ff
    rst RST_38                                    ; $7a83: $ff
    rst RST_38                                    ; $7a84: $ff
    rst RST_38                                    ; $7a85: $ff
    rst RST_38                                    ; $7a86: $ff
    rst RST_38                                    ; $7a87: $ff
    rst RST_38                                    ; $7a88: $ff
    rst RST_38                                    ; $7a89: $ff
    rst RST_38                                    ; $7a8a: $ff
    rst RST_38                                    ; $7a8b: $ff
    rst RST_38                                    ; $7a8c: $ff
    rst RST_38                                    ; $7a8d: $ff
    rst RST_38                                    ; $7a8e: $ff
    rst RST_38                                    ; $7a8f: $ff
    rst RST_38                                    ; $7a90: $ff
    rst RST_38                                    ; $7a91: $ff
    rst RST_38                                    ; $7a92: $ff
    rst RST_38                                    ; $7a93: $ff
    rst RST_38                                    ; $7a94: $ff
    rst RST_38                                    ; $7a95: $ff
    rst RST_38                                    ; $7a96: $ff
    rst RST_38                                    ; $7a97: $ff
    rst RST_38                                    ; $7a98: $ff
    rst RST_38                                    ; $7a99: $ff
    rst RST_38                                    ; $7a9a: $ff
    rst RST_38                                    ; $7a9b: $ff
    rst RST_38                                    ; $7a9c: $ff
    rst RST_38                                    ; $7a9d: $ff
    rst RST_38                                    ; $7a9e: $ff
    rst RST_38                                    ; $7a9f: $ff
    rst RST_38                                    ; $7aa0: $ff
    rst RST_38                                    ; $7aa1: $ff
    rst RST_38                                    ; $7aa2: $ff
    rst RST_38                                    ; $7aa3: $ff
    rst RST_38                                    ; $7aa4: $ff
    rst RST_38                                    ; $7aa5: $ff
    rst RST_38                                    ; $7aa6: $ff
    rst RST_38                                    ; $7aa7: $ff
    rst RST_38                                    ; $7aa8: $ff
    rst RST_38                                    ; $7aa9: $ff
    rst RST_38                                    ; $7aaa: $ff
    rst RST_38                                    ; $7aab: $ff
    rst RST_38                                    ; $7aac: $ff
    rst RST_38                                    ; $7aad: $ff
    rst RST_38                                    ; $7aae: $ff
    rst RST_38                                    ; $7aaf: $ff
    rst RST_38                                    ; $7ab0: $ff
    rst RST_38                                    ; $7ab1: $ff
    rst RST_38                                    ; $7ab2: $ff
    rst RST_38                                    ; $7ab3: $ff
    rst RST_38                                    ; $7ab4: $ff
    rst RST_38                                    ; $7ab5: $ff
    rst RST_38                                    ; $7ab6: $ff
    rst RST_38                                    ; $7ab7: $ff
    rst RST_38                                    ; $7ab8: $ff
    rst RST_38                                    ; $7ab9: $ff
    rst RST_38                                    ; $7aba: $ff
    rst RST_38                                    ; $7abb: $ff
    rst RST_38                                    ; $7abc: $ff
    rst RST_38                                    ; $7abd: $ff
    rst RST_38                                    ; $7abe: $ff
    rst RST_38                                    ; $7abf: $ff
    rst RST_38                                    ; $7ac0: $ff
    rst RST_38                                    ; $7ac1: $ff
    rst RST_38                                    ; $7ac2: $ff
    rst RST_38                                    ; $7ac3: $ff
    rst RST_38                                    ; $7ac4: $ff
    rst RST_38                                    ; $7ac5: $ff
    rst RST_38                                    ; $7ac6: $ff
    rst RST_38                                    ; $7ac7: $ff
    rst RST_38                                    ; $7ac8: $ff
    rst RST_38                                    ; $7ac9: $ff
    rst RST_38                                    ; $7aca: $ff
    rst RST_38                                    ; $7acb: $ff
    rst RST_38                                    ; $7acc: $ff
    rst RST_38                                    ; $7acd: $ff
    rst RST_38                                    ; $7ace: $ff
    rst RST_38                                    ; $7acf: $ff
    rst RST_38                                    ; $7ad0: $ff
    rst RST_38                                    ; $7ad1: $ff
    rst RST_38                                    ; $7ad2: $ff
    rst RST_38                                    ; $7ad3: $ff
    rst RST_38                                    ; $7ad4: $ff
    rst RST_38                                    ; $7ad5: $ff
    rst RST_38                                    ; $7ad6: $ff
    rst RST_38                                    ; $7ad7: $ff
    rst RST_38                                    ; $7ad8: $ff
    rst RST_38                                    ; $7ad9: $ff
    rst RST_38                                    ; $7ada: $ff
    rst RST_38                                    ; $7adb: $ff
    rst RST_38                                    ; $7adc: $ff
    rst RST_38                                    ; $7add: $ff
    rst RST_38                                    ; $7ade: $ff
    rst RST_38                                    ; $7adf: $ff
    rst RST_38                                    ; $7ae0: $ff
    rst RST_38                                    ; $7ae1: $ff
    rst RST_38                                    ; $7ae2: $ff
    rst RST_38                                    ; $7ae3: $ff
    rst RST_38                                    ; $7ae4: $ff
    rst RST_38                                    ; $7ae5: $ff
    rst RST_38                                    ; $7ae6: $ff
    rst RST_38                                    ; $7ae7: $ff
    rst RST_38                                    ; $7ae8: $ff
    rst RST_38                                    ; $7ae9: $ff
    rst RST_38                                    ; $7aea: $ff
    rst RST_38                                    ; $7aeb: $ff
    rst RST_38                                    ; $7aec: $ff
    rst RST_38                                    ; $7aed: $ff
    rst RST_38                                    ; $7aee: $ff
    rst RST_38                                    ; $7aef: $ff
    rst RST_38                                    ; $7af0: $ff
    rst RST_38                                    ; $7af1: $ff
    rst RST_38                                    ; $7af2: $ff
    rst RST_38                                    ; $7af3: $ff
    rst RST_38                                    ; $7af4: $ff
    rst RST_38                                    ; $7af5: $ff
    rst RST_38                                    ; $7af6: $ff
    rst RST_38                                    ; $7af7: $ff
    rst RST_38                                    ; $7af8: $ff
    rst RST_38                                    ; $7af9: $ff
    rst RST_38                                    ; $7afa: $ff
    rst RST_38                                    ; $7afb: $ff
    rst RST_38                                    ; $7afc: $ff
    rst RST_38                                    ; $7afd: $ff
    rst RST_38                                    ; $7afe: $ff
    rst RST_38                                    ; $7aff: $ff
    rst RST_38                                    ; $7b00: $ff
    rst RST_38                                    ; $7b01: $ff
    rst RST_38                                    ; $7b02: $ff
    rst RST_38                                    ; $7b03: $ff
    rst RST_38                                    ; $7b04: $ff
    rst RST_38                                    ; $7b05: $ff
    rst RST_38                                    ; $7b06: $ff
    rst RST_38                                    ; $7b07: $ff
    rst RST_38                                    ; $7b08: $ff
    rst RST_38                                    ; $7b09: $ff
    rst RST_38                                    ; $7b0a: $ff
    rst RST_38                                    ; $7b0b: $ff
    rst RST_38                                    ; $7b0c: $ff
    rst RST_38                                    ; $7b0d: $ff
    rst RST_38                                    ; $7b0e: $ff
    rst RST_38                                    ; $7b0f: $ff
    rst RST_38                                    ; $7b10: $ff
    rst RST_38                                    ; $7b11: $ff
    rst RST_38                                    ; $7b12: $ff
    rst RST_38                                    ; $7b13: $ff
    rst RST_38                                    ; $7b14: $ff
    rst RST_38                                    ; $7b15: $ff
    rst RST_38                                    ; $7b16: $ff
    rst RST_38                                    ; $7b17: $ff
    rst RST_38                                    ; $7b18: $ff
    rst RST_38                                    ; $7b19: $ff
    rst RST_38                                    ; $7b1a: $ff
    rst RST_38                                    ; $7b1b: $ff
    rst RST_38                                    ; $7b1c: $ff
    rst RST_38                                    ; $7b1d: $ff
    rst RST_38                                    ; $7b1e: $ff
    rst RST_38                                    ; $7b1f: $ff
    rst RST_38                                    ; $7b20: $ff
    rst RST_38                                    ; $7b21: $ff
    rst RST_38                                    ; $7b22: $ff
    rst RST_38                                    ; $7b23: $ff
    rst RST_38                                    ; $7b24: $ff
    rst RST_38                                    ; $7b25: $ff
    rst RST_38                                    ; $7b26: $ff
    rst RST_38                                    ; $7b27: $ff
    rst RST_38                                    ; $7b28: $ff
    rst RST_38                                    ; $7b29: $ff
    rst RST_38                                    ; $7b2a: $ff
    rst RST_38                                    ; $7b2b: $ff
    rst RST_38                                    ; $7b2c: $ff
    rst RST_38                                    ; $7b2d: $ff
    rst RST_38                                    ; $7b2e: $ff
    rst RST_38                                    ; $7b2f: $ff
    rst RST_38                                    ; $7b30: $ff
    rst RST_38                                    ; $7b31: $ff
    rst RST_38                                    ; $7b32: $ff
    rst RST_38                                    ; $7b33: $ff
    rst RST_38                                    ; $7b34: $ff
    rst RST_38                                    ; $7b35: $ff
    rst RST_38                                    ; $7b36: $ff
    rst RST_38                                    ; $7b37: $ff
    rst RST_38                                    ; $7b38: $ff
    rst RST_38                                    ; $7b39: $ff
    rst RST_38                                    ; $7b3a: $ff
    rst RST_38                                    ; $7b3b: $ff
    rst RST_38                                    ; $7b3c: $ff
    rst RST_38                                    ; $7b3d: $ff
    rst RST_38                                    ; $7b3e: $ff
    rst RST_38                                    ; $7b3f: $ff
    rst RST_38                                    ; $7b40: $ff
    rst RST_38                                    ; $7b41: $ff
    rst RST_38                                    ; $7b42: $ff
    rst RST_38                                    ; $7b43: $ff
    rst RST_38                                    ; $7b44: $ff
    rst RST_38                                    ; $7b45: $ff
    rst RST_38                                    ; $7b46: $ff
    rst RST_38                                    ; $7b47: $ff
    rst RST_38                                    ; $7b48: $ff
    rst RST_38                                    ; $7b49: $ff
    rst RST_38                                    ; $7b4a: $ff
    rst RST_38                                    ; $7b4b: $ff
    rst RST_38                                    ; $7b4c: $ff
    rst RST_38                                    ; $7b4d: $ff
    rst RST_38                                    ; $7b4e: $ff
    rst RST_38                                    ; $7b4f: $ff
    rst RST_38                                    ; $7b50: $ff
    rst RST_38                                    ; $7b51: $ff
    rst RST_38                                    ; $7b52: $ff
    rst RST_38                                    ; $7b53: $ff
    rst RST_38                                    ; $7b54: $ff
    rst RST_38                                    ; $7b55: $ff
    rst RST_38                                    ; $7b56: $ff
    rst RST_38                                    ; $7b57: $ff
    rst RST_38                                    ; $7b58: $ff
    rst RST_38                                    ; $7b59: $ff
    rst RST_38                                    ; $7b5a: $ff
    rst RST_38                                    ; $7b5b: $ff
    rst RST_38                                    ; $7b5c: $ff
    rst RST_38                                    ; $7b5d: $ff
    rst RST_38                                    ; $7b5e: $ff
    rst RST_38                                    ; $7b5f: $ff
    rst RST_38                                    ; $7b60: $ff
    rst RST_38                                    ; $7b61: $ff
    rst RST_38                                    ; $7b62: $ff
    rst RST_38                                    ; $7b63: $ff
    rst RST_38                                    ; $7b64: $ff
    rst RST_38                                    ; $7b65: $ff
    rst RST_38                                    ; $7b66: $ff
    rst RST_38                                    ; $7b67: $ff
    rst RST_38                                    ; $7b68: $ff
    rst RST_38                                    ; $7b69: $ff
    rst RST_38                                    ; $7b6a: $ff
    rst RST_38                                    ; $7b6b: $ff
    rst RST_38                                    ; $7b6c: $ff
    rst RST_38                                    ; $7b6d: $ff
    rst RST_38                                    ; $7b6e: $ff
    rst RST_38                                    ; $7b6f: $ff
    rst RST_38                                    ; $7b70: $ff
    rst RST_38                                    ; $7b71: $ff
    rst RST_38                                    ; $7b72: $ff
    rst RST_38                                    ; $7b73: $ff
    rst RST_38                                    ; $7b74: $ff
    rst RST_38                                    ; $7b75: $ff
    rst RST_38                                    ; $7b76: $ff
    rst RST_38                                    ; $7b77: $ff
    rst RST_38                                    ; $7b78: $ff
    rst RST_38                                    ; $7b79: $ff
    rst RST_38                                    ; $7b7a: $ff
    rst RST_38                                    ; $7b7b: $ff
    rst RST_38                                    ; $7b7c: $ff
    rst RST_38                                    ; $7b7d: $ff
    rst RST_38                                    ; $7b7e: $ff
    rst RST_38                                    ; $7b7f: $ff
    rst RST_38                                    ; $7b80: $ff
    rst RST_38                                    ; $7b81: $ff
    rst RST_38                                    ; $7b82: $ff
    rst RST_38                                    ; $7b83: $ff
    rst RST_38                                    ; $7b84: $ff
    rst RST_38                                    ; $7b85: $ff
    rst RST_38                                    ; $7b86: $ff
    rst RST_38                                    ; $7b87: $ff
    rst RST_38                                    ; $7b88: $ff
    rst RST_38                                    ; $7b89: $ff
    rst RST_38                                    ; $7b8a: $ff
    rst RST_38                                    ; $7b8b: $ff
    rst RST_38                                    ; $7b8c: $ff
    rst RST_38                                    ; $7b8d: $ff
    rst RST_38                                    ; $7b8e: $ff
    rst RST_38                                    ; $7b8f: $ff
    rst RST_38                                    ; $7b90: $ff
    rst RST_38                                    ; $7b91: $ff
    rst RST_38                                    ; $7b92: $ff
    rst RST_38                                    ; $7b93: $ff
    rst RST_38                                    ; $7b94: $ff
    rst RST_38                                    ; $7b95: $ff
    rst RST_38                                    ; $7b96: $ff
    rst RST_38                                    ; $7b97: $ff
    rst RST_38                                    ; $7b98: $ff
    rst RST_38                                    ; $7b99: $ff
    rst RST_38                                    ; $7b9a: $ff
    rst RST_38                                    ; $7b9b: $ff
    rst RST_38                                    ; $7b9c: $ff
    rst RST_38                                    ; $7b9d: $ff
    rst RST_38                                    ; $7b9e: $ff
    rst RST_38                                    ; $7b9f: $ff
    rst RST_38                                    ; $7ba0: $ff
    rst RST_38                                    ; $7ba1: $ff
    rst RST_38                                    ; $7ba2: $ff
    rst RST_38                                    ; $7ba3: $ff
    rst RST_38                                    ; $7ba4: $ff
    rst RST_38                                    ; $7ba5: $ff
    rst RST_38                                    ; $7ba6: $ff
    rst RST_38                                    ; $7ba7: $ff
    rst RST_38                                    ; $7ba8: $ff
    rst RST_38                                    ; $7ba9: $ff
    rst RST_38                                    ; $7baa: $ff
    rst RST_38                                    ; $7bab: $ff
    rst RST_38                                    ; $7bac: $ff
    rst RST_38                                    ; $7bad: $ff
    rst RST_38                                    ; $7bae: $ff
    rst RST_38                                    ; $7baf: $ff
    rst RST_38                                    ; $7bb0: $ff
    rst RST_38                                    ; $7bb1: $ff
    rst RST_38                                    ; $7bb2: $ff
    rst RST_38                                    ; $7bb3: $ff
    rst RST_38                                    ; $7bb4: $ff
    rst RST_38                                    ; $7bb5: $ff
    rst RST_38                                    ; $7bb6: $ff
    rst RST_38                                    ; $7bb7: $ff
    rst RST_38                                    ; $7bb8: $ff
    rst RST_38                                    ; $7bb9: $ff
    rst RST_38                                    ; $7bba: $ff
    rst RST_38                                    ; $7bbb: $ff
    rst RST_38                                    ; $7bbc: $ff
    rst RST_38                                    ; $7bbd: $ff
    rst RST_38                                    ; $7bbe: $ff
    rst RST_38                                    ; $7bbf: $ff
    rst RST_38                                    ; $7bc0: $ff
    rst RST_38                                    ; $7bc1: $ff
    rst RST_38                                    ; $7bc2: $ff
    rst RST_38                                    ; $7bc3: $ff
    rst RST_38                                    ; $7bc4: $ff
    rst RST_38                                    ; $7bc5: $ff
    rst RST_38                                    ; $7bc6: $ff
    rst RST_38                                    ; $7bc7: $ff
    rst RST_38                                    ; $7bc8: $ff
    rst RST_38                                    ; $7bc9: $ff
    rst RST_38                                    ; $7bca: $ff
    rst RST_38                                    ; $7bcb: $ff
    rst RST_38                                    ; $7bcc: $ff
    rst RST_38                                    ; $7bcd: $ff
    rst RST_38                                    ; $7bce: $ff
    rst RST_38                                    ; $7bcf: $ff
    rst RST_38                                    ; $7bd0: $ff
    rst RST_38                                    ; $7bd1: $ff
    rst RST_38                                    ; $7bd2: $ff
    rst RST_38                                    ; $7bd3: $ff
    rst RST_38                                    ; $7bd4: $ff
    rst RST_38                                    ; $7bd5: $ff
    rst RST_38                                    ; $7bd6: $ff
    rst RST_38                                    ; $7bd7: $ff
    rst RST_38                                    ; $7bd8: $ff
    rst RST_38                                    ; $7bd9: $ff
    rst RST_38                                    ; $7bda: $ff
    rst RST_38                                    ; $7bdb: $ff
    rst RST_38                                    ; $7bdc: $ff
    rst RST_38                                    ; $7bdd: $ff
    rst RST_38                                    ; $7bde: $ff
    rst RST_38                                    ; $7bdf: $ff
    rst RST_38                                    ; $7be0: $ff
    rst RST_38                                    ; $7be1: $ff
    rst RST_38                                    ; $7be2: $ff
    rst RST_38                                    ; $7be3: $ff
    rst RST_38                                    ; $7be4: $ff
    rst RST_38                                    ; $7be5: $ff
    rst RST_38                                    ; $7be6: $ff
    rst RST_38                                    ; $7be7: $ff
    rst RST_38                                    ; $7be8: $ff
    rst RST_38                                    ; $7be9: $ff
    rst RST_38                                    ; $7bea: $ff
    rst RST_38                                    ; $7beb: $ff
    rst RST_38                                    ; $7bec: $ff
    rst RST_38                                    ; $7bed: $ff
    rst RST_38                                    ; $7bee: $ff
    rst RST_38                                    ; $7bef: $ff
    rst RST_38                                    ; $7bf0: $ff
    rst RST_38                                    ; $7bf1: $ff
    rst RST_38                                    ; $7bf2: $ff
    rst RST_38                                    ; $7bf3: $ff
    rst RST_38                                    ; $7bf4: $ff
    rst RST_38                                    ; $7bf5: $ff
    rst RST_38                                    ; $7bf6: $ff
    rst RST_38                                    ; $7bf7: $ff
    rst RST_38                                    ; $7bf8: $ff
    rst RST_38                                    ; $7bf9: $ff
    rst RST_38                                    ; $7bfa: $ff
    rst RST_38                                    ; $7bfb: $ff
    rst RST_38                                    ; $7bfc: $ff
    rst RST_38                                    ; $7bfd: $ff
    rst RST_38                                    ; $7bfe: $ff
    rst RST_38                                    ; $7bff: $ff
    ld c, h                                       ; $7c00: $4c
    ld c, h                                       ; $7c01: $4c
    ld c, d                                       ; $7c02: $4a
    ld c, e                                       ; $7c03: $4b
    ld a, [bc]                                    ; $7c04: $0a
    dec bc                                        ; $7c05: $0b
    inc c                                         ; $7c06: $0c
    dec c                                         ; $7c07: $0d
    ld c, $0f                                     ; $7c08: $0e $0f
    ld a, [hl+]                                   ; $7c0a: $2a
    dec hl                                        ; $7c0b: $2b
    inc l                                         ; $7c0c: $2c
    dec l                                         ; $7c0d: $2d
    ld l, $2f                                     ; $7c0e: $2e $2f
    ld c, d                                       ; $7c10: $4a
    ld c, e                                       ; $7c11: $4b
    ld c, h                                       ; $7c12: $4c
    ld c, h                                       ; $7c13: $4c
    rst RST_38                                    ; $7c14: $ff
    rst RST_38                                    ; $7c15: $ff
    rst RST_38                                    ; $7c16: $ff
    rst RST_38                                    ; $7c17: $ff
    rst RST_38                                    ; $7c18: $ff
    rst RST_38                                    ; $7c19: $ff
    rst RST_38                                    ; $7c1a: $ff
    rst RST_38                                    ; $7c1b: $ff
    rst RST_38                                    ; $7c1c: $ff
    rst RST_38                                    ; $7c1d: $ff
    rst RST_38                                    ; $7c1e: $ff
    rst RST_38                                    ; $7c1f: $ff
    ld e, h                                       ; $7c20: $5c
    ld e, h                                       ; $7c21: $5c
    ld e, d                                       ; $7c22: $5a
    ld e, e                                       ; $7c23: $5b
    ld a, [de]                                    ; $7c24: $1a
    dec de                                        ; $7c25: $1b
    inc e                                         ; $7c26: $1c
    dec e                                         ; $7c27: $1d
    ld e, $1f                                     ; $7c28: $1e $1f
    ld a, [hl-]                                   ; $7c2a: $3a
    dec sp                                        ; $7c2b: $3b
    inc a                                         ; $7c2c: $3c
    dec a                                         ; $7c2d: $3d
    ld a, $3f                                     ; $7c2e: $3e $3f
    ld e, d                                       ; $7c30: $5a
    ld e, e                                       ; $7c31: $5b
    ld e, h                                       ; $7c32: $5c
    ld e, h                                       ; $7c33: $5c
    rst RST_38                                    ; $7c34: $ff
    rst RST_38                                    ; $7c35: $ff
    rst RST_38                                    ; $7c36: $ff
    rst RST_38                                    ; $7c37: $ff
    rst RST_38                                    ; $7c38: $ff
    rst RST_38                                    ; $7c39: $ff
    rst RST_38                                    ; $7c3a: $ff
    rst RST_38                                    ; $7c3b: $ff
    rst RST_38                                    ; $7c3c: $ff
    rst RST_38                                    ; $7c3d: $ff
    rst RST_38                                    ; $7c3e: $ff
    rst RST_38                                    ; $7c3f: $ff
    ret nz                                        ; $7c40: $c0

    ldh [$ffe1], a                                ; $7c41: $e0 $e1
    ldh [c], a                                    ; $7c43: $e2
    db $e3                                        ; $7c44: $e3
    ret nz                                        ; $7c45: $c0

    jp $c3c3                                      ; $7c46: $c3 $c3 $c3


    jp $c1c1                                      ; $7c49: $c3 $c1 $c1


    pop bc                                        ; $7c4c: $c1
    pop bc                                        ; $7c4d: $c1
    ret nz                                        ; $7c4e: $c0

    ldh [$ffe1], a                                ; $7c4f: $e0 $e1
    ldh [c], a                                    ; $7c51: $e2
    db $e3                                        ; $7c52: $e3
    ret nz                                        ; $7c53: $c0

    rst RST_38                                    ; $7c54: $ff
    rst RST_38                                    ; $7c55: $ff
    rst RST_38                                    ; $7c56: $ff
    rst RST_38                                    ; $7c57: $ff
    rst RST_38                                    ; $7c58: $ff
    rst RST_38                                    ; $7c59: $ff
    rst RST_38                                    ; $7c5a: $ff
    rst RST_38                                    ; $7c5b: $ff
    rst RST_38                                    ; $7c5c: $ff
    rst RST_38                                    ; $7c5d: $ff
    rst RST_38                                    ; $7c5e: $ff
    rst RST_38                                    ; $7c5f: $ff
    ret nc                                        ; $7c60: $d0

    ldh a, [$fff1]                                ; $7c61: $f0 $f1
    ldh a, [c]                                    ; $7c63: $f2
    di                                            ; $7c64: $f3
    ret nc                                        ; $7c65: $d0

    db $d3                                        ; $7c66: $d3
    db $d3                                        ; $7c67: $d3
    db $d3                                        ; $7c68: $d3
    db $d3                                        ; $7c69: $d3
    pop de                                        ; $7c6a: $d1
    pop de                                        ; $7c6b: $d1
    pop de                                        ; $7c6c: $d1
    pop de                                        ; $7c6d: $d1
    ret nc                                        ; $7c6e: $d0

    ldh a, [$fff1]                                ; $7c6f: $f0 $f1
    ldh a, [c]                                    ; $7c71: $f2
    di                                            ; $7c72: $f3
    ret nc                                        ; $7c73: $d0

    rst RST_38                                    ; $7c74: $ff
    rst RST_38                                    ; $7c75: $ff
    rst RST_38                                    ; $7c76: $ff
    rst RST_38                                    ; $7c77: $ff
    rst RST_38                                    ; $7c78: $ff
    rst RST_38                                    ; $7c79: $ff
    rst RST_38                                    ; $7c7a: $ff
    rst RST_38                                    ; $7c7b: $ff
    rst RST_38                                    ; $7c7c: $ff
    rst RST_38                                    ; $7c7d: $ff
    rst RST_38                                    ; $7c7e: $ff
    rst RST_38                                    ; $7c7f: $ff
    ret nz                                        ; $7c80: $c0

    ld l, d                                       ; $7c81: $6a
    ld l, e                                       ; $7c82: $6b
    ld l, h                                       ; $7c83: $6c
    ld l, l                                       ; $7c84: $6d
    ret nz                                        ; $7c85: $c0

    jp nz, $c2c2                                  ; $7c86: $c2 $c2 $c2

    jp nz, $c2c2                                  ; $7c89: $c2 $c2 $c2

    jp nz, $c0c2                                  ; $7c8c: $c2 $c2 $c0

    ld l, [hl]                                    ; $7c8f: $6e
    ld l, a                                       ; $7c90: $6f
    call nz, $c0c5                                ; $7c91: $c4 $c5 $c0
    rst RST_38                                    ; $7c94: $ff
    rst RST_38                                    ; $7c95: $ff
    rst RST_38                                    ; $7c96: $ff
    rst RST_38                                    ; $7c97: $ff
    rst RST_38                                    ; $7c98: $ff
    rst RST_38                                    ; $7c99: $ff
    rst RST_38                                    ; $7c9a: $ff
    rst RST_38                                    ; $7c9b: $ff
    rst RST_38                                    ; $7c9c: $ff
    rst RST_38                                    ; $7c9d: $ff
    rst RST_38                                    ; $7c9e: $ff
    rst RST_38                                    ; $7c9f: $ff
    ret nc                                        ; $7ca0: $d0

    ld a, d                                       ; $7ca1: $7a
    ld a, e                                       ; $7ca2: $7b
    ld a, h                                       ; $7ca3: $7c
    ld a, l                                       ; $7ca4: $7d
    nop                                           ; $7ca5: $00
    ld bc, $0302                                  ; $7ca6: $01 $02 $03
    inc b                                         ; $7ca9: $04
    dec b                                         ; $7caa: $05
    ld b, $07                                     ; $7cab: $06 $07
    ld [$7e09], sp                                ; $7cad: $08 $09 $7e
    ld a, a                                       ; $7cb0: $7f
    call nc, $d0d5                                ; $7cb1: $d4 $d5 $d0
    rst RST_38                                    ; $7cb4: $ff
    rst RST_38                                    ; $7cb5: $ff
    rst RST_38                                    ; $7cb6: $ff
    rst RST_38                                    ; $7cb7: $ff
    rst RST_38                                    ; $7cb8: $ff
    rst RST_38                                    ; $7cb9: $ff
    rst RST_38                                    ; $7cba: $ff
    rst RST_38                                    ; $7cbb: $ff
    rst RST_38                                    ; $7cbc: $ff
    rst RST_38                                    ; $7cbd: $ff
    rst RST_38                                    ; $7cbe: $ff
    rst RST_38                                    ; $7cbf: $ff
    ret nz                                        ; $7cc0: $c0

    adc d                                         ; $7cc1: $8a
    adc e                                         ; $7cc2: $8b
    adc h                                         ; $7cc3: $8c
    adc l                                         ; $7cc4: $8d
    db $10                                        ; $7cc5: $10
    ld de, $1312                                  ; $7cc6: $11 $12 $13
    inc d                                         ; $7cc9: $14
    dec d                                         ; $7cca: $15
    ld d, $17                                     ; $7ccb: $16 $17
    jr @+$1b                                      ; $7ccd: $18 $19

    adc [hl]                                      ; $7ccf: $8e
    adc a                                         ; $7cd0: $8f
    db $e4                                        ; $7cd1: $e4
    push hl                                       ; $7cd2: $e5
    ret nz                                        ; $7cd3: $c0

    rst RST_38                                    ; $7cd4: $ff
    rst RST_38                                    ; $7cd5: $ff
    rst RST_38                                    ; $7cd6: $ff
    rst RST_38                                    ; $7cd7: $ff
    rst RST_38                                    ; $7cd8: $ff
    rst RST_38                                    ; $7cd9: $ff
    rst RST_38                                    ; $7cda: $ff
    rst RST_38                                    ; $7cdb: $ff
    rst RST_38                                    ; $7cdc: $ff
    rst RST_38                                    ; $7cdd: $ff
    rst RST_38                                    ; $7cde: $ff
    rst RST_38                                    ; $7cdf: $ff
    ret nc                                        ; $7ce0: $d0

    sbc d                                         ; $7ce1: $9a
    sbc e                                         ; $7ce2: $9b
    sbc h                                         ; $7ce3: $9c
    sbc l                                         ; $7ce4: $9d
    ret nc                                        ; $7ce5: $d0

    jp nz, $c2c2                                  ; $7ce6: $c2 $c2 $c2

    jp nz, $c2c2                                  ; $7ce9: $c2 $c2 $c2

    jp nz, $d0c2                                  ; $7cec: $c2 $c2 $d0

    sbc [hl]                                      ; $7cef: $9e
    sbc a                                         ; $7cf0: $9f
    db $f4                                        ; $7cf1: $f4
    push af                                       ; $7cf2: $f5
    ret nc                                        ; $7cf3: $d0

    rst RST_38                                    ; $7cf4: $ff
    rst RST_38                                    ; $7cf5: $ff
    rst RST_38                                    ; $7cf6: $ff
    rst RST_38                                    ; $7cf7: $ff
    rst RST_38                                    ; $7cf8: $ff
    rst RST_38                                    ; $7cf9: $ff
    rst RST_38                                    ; $7cfa: $ff
    rst RST_38                                    ; $7cfb: $ff
    rst RST_38                                    ; $7cfc: $ff
    rst RST_38                                    ; $7cfd: $ff
    rst RST_38                                    ; $7cfe: $ff
    rst RST_38                                    ; $7cff: $ff
    ret nz                                        ; $7d00: $c0

    xor d                                         ; $7d01: $aa
    xor e                                         ; $7d02: $ab
    xor h                                         ; $7d03: $ac
    xor l                                         ; $7d04: $ad
    ret nz                                        ; $7d05: $c0

    jp nz, $c2c2                                  ; $7d06: $c2 $c2 $c2

    jp nz, $c2c2                                  ; $7d09: $c2 $c2 $c2

    jp nz, $c0c2                                  ; $7d0c: $c2 $c2 $c0

    xor [hl]                                      ; $7d0f: $ae
    xor a                                         ; $7d10: $af
    add $c7                                       ; $7d11: $c6 $c7
    ret nz                                        ; $7d13: $c0

    rst RST_38                                    ; $7d14: $ff
    rst RST_38                                    ; $7d15: $ff
    rst RST_38                                    ; $7d16: $ff
    rst RST_38                                    ; $7d17: $ff
    rst RST_38                                    ; $7d18: $ff
    rst RST_38                                    ; $7d19: $ff
    rst RST_38                                    ; $7d1a: $ff
    rst RST_38                                    ; $7d1b: $ff
    rst RST_38                                    ; $7d1c: $ff
    rst RST_38                                    ; $7d1d: $ff
    rst RST_38                                    ; $7d1e: $ff
    rst RST_38                                    ; $7d1f: $ff
    ret nc                                        ; $7d20: $d0

    cp d                                          ; $7d21: $ba
    cp e                                          ; $7d22: $bb
    cp h                                          ; $7d23: $bc
    cp l                                          ; $7d24: $bd
    jr nz, jr_00b_7d48                            ; $7d25: $20 $21

    ld [hl+], a                                   ; $7d27: $22
    inc hl                                        ; $7d28: $23
    inc h                                         ; $7d29: $24
    dec h                                         ; $7d2a: $25
    ld h, $27                                     ; $7d2b: $26 $27
    jr z, jr_00b_7d58                             ; $7d2d: $28 $29

    cp [hl]                                       ; $7d2f: $be
    cp a                                          ; $7d30: $bf
    sub $d7                                       ; $7d31: $d6 $d7
    ret nc                                        ; $7d33: $d0

    rst RST_38                                    ; $7d34: $ff
    rst RST_38                                    ; $7d35: $ff
    rst RST_38                                    ; $7d36: $ff
    rst RST_38                                    ; $7d37: $ff
    rst RST_38                                    ; $7d38: $ff
    rst RST_38                                    ; $7d39: $ff
    rst RST_38                                    ; $7d3a: $ff
    rst RST_38                                    ; $7d3b: $ff
    rst RST_38                                    ; $7d3c: $ff
    rst RST_38                                    ; $7d3d: $ff
    rst RST_38                                    ; $7d3e: $ff
    rst RST_38                                    ; $7d3f: $ff
    ret nz                                        ; $7d40: $c0

    jp z, $cccb                                   ; $7d41: $ca $cb $cc

    call $3130                                    ; $7d44: $cd $30 $31
    ld [hl-], a                                   ; $7d47: $32

jr_00b_7d48:
    inc sp                                        ; $7d48: $33
    inc [hl]                                      ; $7d49: $34
    dec [hl]                                      ; $7d4a: $35
    ld [hl], $37                                  ; $7d4b: $36 $37
    jr c, @+$3b                                   ; $7d4d: $38 $39

    adc $cf                                       ; $7d4f: $ce $cf
    and $e7                                       ; $7d51: $e6 $e7
    ret nz                                        ; $7d53: $c0

    rst RST_38                                    ; $7d54: $ff
    rst RST_38                                    ; $7d55: $ff
    rst RST_38                                    ; $7d56: $ff
    rst RST_38                                    ; $7d57: $ff

jr_00b_7d58:
    rst RST_38                                    ; $7d58: $ff
    rst RST_38                                    ; $7d59: $ff
    rst RST_38                                    ; $7d5a: $ff
    rst RST_38                                    ; $7d5b: $ff
    rst RST_38                                    ; $7d5c: $ff
    rst RST_38                                    ; $7d5d: $ff
    rst RST_38                                    ; $7d5e: $ff
    rst RST_38                                    ; $7d5f: $ff
    ret nc                                        ; $7d60: $d0

    jp c, $dcdb                                   ; $7d61: $da $db $dc

    db $dd                                        ; $7d64: $dd
    ret nc                                        ; $7d65: $d0

    jp nz, $c2c2                                  ; $7d66: $c2 $c2 $c2

    jp nz, $c2c2                                  ; $7d69: $c2 $c2 $c2

    jp nz, $d0c2                                  ; $7d6c: $c2 $c2 $d0

    sbc $df                                       ; $7d6f: $de $df
    or $f7                                        ; $7d71: $f6 $f7
    ret nc                                        ; $7d73: $d0

    rst RST_38                                    ; $7d74: $ff
    rst RST_38                                    ; $7d75: $ff
    rst RST_38                                    ; $7d76: $ff
    rst RST_38                                    ; $7d77: $ff
    rst RST_38                                    ; $7d78: $ff
    rst RST_38                                    ; $7d79: $ff
    rst RST_38                                    ; $7d7a: $ff
    rst RST_38                                    ; $7d7b: $ff
    rst RST_38                                    ; $7d7c: $ff
    rst RST_38                                    ; $7d7d: $ff
    rst RST_38                                    ; $7d7e: $ff
    rst RST_38                                    ; $7d7f: $ff
    ret nz                                        ; $7d80: $c0

    ld [$eceb], a                                 ; $7d81: $ea $eb $ec
    db $ed                                        ; $7d84: $ed
    ret nz                                        ; $7d85: $c0

    jp nz, $c2c2                                  ; $7d86: $c2 $c2 $c2

    jp nz, $c2c2                                  ; $7d89: $c2 $c2 $c2

    jp nz, $c0c2                                  ; $7d8c: $c2 $c2 $c0

    xor $ef                                       ; $7d8f: $ee $ef
    ret z                                         ; $7d91: $c8

    ret                                           ; $7d92: $c9


    ret nz                                        ; $7d93: $c0

    rst RST_38                                    ; $7d94: $ff
    rst RST_38                                    ; $7d95: $ff
    rst RST_38                                    ; $7d96: $ff
    rst RST_38                                    ; $7d97: $ff
    rst RST_38                                    ; $7d98: $ff
    rst RST_38                                    ; $7d99: $ff
    rst RST_38                                    ; $7d9a: $ff
    rst RST_38                                    ; $7d9b: $ff
    rst RST_38                                    ; $7d9c: $ff
    rst RST_38                                    ; $7d9d: $ff
    rst RST_38                                    ; $7d9e: $ff
    rst RST_38                                    ; $7d9f: $ff
    ret nc                                        ; $7da0: $d0

    ld a, [$fcfb]                                 ; $7da1: $fa $fb $fc
    db $fd                                        ; $7da4: $fd
    ld b, b                                       ; $7da5: $40
    ld b, c                                       ; $7da6: $41
    ld b, d                                       ; $7da7: $42
    ld b, e                                       ; $7da8: $43
    ld b, h                                       ; $7da9: $44
    ld b, l                                       ; $7daa: $45
    ld b, [hl]                                    ; $7dab: $46
    ld b, a                                       ; $7dac: $47
    ld c, b                                       ; $7dad: $48
    ld c, c                                       ; $7dae: $49
    cp $ff                                        ; $7daf: $fe $ff
    ret c                                         ; $7db1: $d8

    reti                                          ; $7db2: $d9


    ret nc                                        ; $7db3: $d0

    rst RST_38                                    ; $7db4: $ff
    rst RST_38                                    ; $7db5: $ff
    rst RST_38                                    ; $7db6: $ff
    rst RST_38                                    ; $7db7: $ff
    rst RST_38                                    ; $7db8: $ff
    rst RST_38                                    ; $7db9: $ff
    rst RST_38                                    ; $7dba: $ff
    rst RST_38                                    ; $7dbb: $ff
    rst RST_38                                    ; $7dbc: $ff
    rst RST_38                                    ; $7dbd: $ff
    rst RST_38                                    ; $7dbe: $ff
    rst RST_38                                    ; $7dbf: $ff
    ret nz                                        ; $7dc0: $c0

    ld hl, sp-$07                                 ; $7dc1: $f8 $f9
    ld c, l                                       ; $7dc3: $4d
    ld c, [hl]                                    ; $7dc4: $4e
    ld d, b                                       ; $7dc5: $50
    ld d, c                                       ; $7dc6: $51
    ld d, d                                       ; $7dc7: $52
    ld d, e                                       ; $7dc8: $53
    ld d, h                                       ; $7dc9: $54
    ld d, l                                       ; $7dca: $55
    ld d, [hl]                                    ; $7dcb: $56
    ld d, a                                       ; $7dcc: $57
    ld e, b                                       ; $7dcd: $58
    ld e, c                                       ; $7dce: $59
    ld e, l                                       ; $7dcf: $5d
    ld e, [hl]                                    ; $7dd0: $5e
    add sp, -$17                                  ; $7dd1: $e8 $e9
    ret nz                                        ; $7dd3: $c0

    rst RST_38                                    ; $7dd4: $ff
    rst RST_38                                    ; $7dd5: $ff
    rst RST_38                                    ; $7dd6: $ff
    rst RST_38                                    ; $7dd7: $ff
    rst RST_38                                    ; $7dd8: $ff
    rst RST_38                                    ; $7dd9: $ff
    rst RST_38                                    ; $7dda: $ff
    rst RST_38                                    ; $7ddb: $ff
    rst RST_38                                    ; $7ddc: $ff
    rst RST_38                                    ; $7ddd: $ff
    rst RST_38                                    ; $7dde: $ff
    rst RST_38                                    ; $7ddf: $ff
    ret nc                                        ; $7de0: $d0

    ldh [$ffe1], a                                ; $7de1: $e0 $e1
    ldh [c], a                                    ; $7de3: $e2
    db $e3                                        ; $7de4: $e3
    ret nc                                        ; $7de5: $d0

    jp nz, $c2c2                                  ; $7de6: $c2 $c2 $c2

    jp nz, $c2c2                                  ; $7de9: $c2 $c2 $c2

    jp nz, $d0c2                                  ; $7dec: $c2 $c2 $d0

    ldh [$ffe1], a                                ; $7def: $e0 $e1
    ldh [c], a                                    ; $7df1: $e2
    db $e3                                        ; $7df2: $e3
    ret nc                                        ; $7df3: $d0

    rst RST_38                                    ; $7df4: $ff
    rst RST_38                                    ; $7df5: $ff
    rst RST_38                                    ; $7df6: $ff
    rst RST_38                                    ; $7df7: $ff
    rst RST_38                                    ; $7df8: $ff
    rst RST_38                                    ; $7df9: $ff
    rst RST_38                                    ; $7dfa: $ff
    rst RST_38                                    ; $7dfb: $ff
    rst RST_38                                    ; $7dfc: $ff
    rst RST_38                                    ; $7dfd: $ff
    rst RST_38                                    ; $7dfe: $ff
    rst RST_38                                    ; $7dff: $ff
    ret nz                                        ; $7e00: $c0

    ldh a, [$fff1]                                ; $7e01: $f0 $f1
    ldh a, [c]                                    ; $7e03: $f2
    di                                            ; $7e04: $f3
    ret nz                                        ; $7e05: $c0

    jp $c3c3                                      ; $7e06: $c3 $c3 $c3


    jp $c1c1                                      ; $7e09: $c3 $c1 $c1


    pop bc                                        ; $7e0c: $c1
    pop bc                                        ; $7e0d: $c1
    ret nz                                        ; $7e0e: $c0

    ldh a, [$fff1]                                ; $7e0f: $f0 $f1
    ldh a, [c]                                    ; $7e11: $f2
    di                                            ; $7e12: $f3
    ret nz                                        ; $7e13: $c0

    rst RST_38                                    ; $7e14: $ff
    rst RST_38                                    ; $7e15: $ff
    rst RST_38                                    ; $7e16: $ff
    rst RST_38                                    ; $7e17: $ff
    rst RST_38                                    ; $7e18: $ff
    rst RST_38                                    ; $7e19: $ff
    rst RST_38                                    ; $7e1a: $ff
    rst RST_38                                    ; $7e1b: $ff
    rst RST_38                                    ; $7e1c: $ff
    rst RST_38                                    ; $7e1d: $ff
    rst RST_38                                    ; $7e1e: $ff
    rst RST_38                                    ; $7e1f: $ff
    ret nc                                        ; $7e20: $d0

    jp nc, $d2d2                                  ; $7e21: $d2 $d2 $d2

    jp nc, $d3d0                                  ; $7e24: $d2 $d0 $d3

    db $d3                                        ; $7e27: $d3
    db $d3                                        ; $7e28: $d3
    db $d3                                        ; $7e29: $d3
    pop de                                        ; $7e2a: $d1
    pop de                                        ; $7e2b: $d1
    pop de                                        ; $7e2c: $d1
    pop de                                        ; $7e2d: $d1
    ret nc                                        ; $7e2e: $d0

    jp nc, $d2d2                                  ; $7e2f: $d2 $d2 $d2

    jp nc, $ffd0                                  ; $7e32: $d2 $d0 $ff

    rst RST_38                                    ; $7e35: $ff
    rst RST_38                                    ; $7e36: $ff
    rst RST_38                                    ; $7e37: $ff
    rst RST_38                                    ; $7e38: $ff
    rst RST_38                                    ; $7e39: $ff
    rst RST_38                                    ; $7e3a: $ff
    rst RST_38                                    ; $7e3b: $ff
    rst RST_38                                    ; $7e3c: $ff
    rst RST_38                                    ; $7e3d: $ff
    rst RST_38                                    ; $7e3e: $ff
    rst RST_38                                    ; $7e3f: $ff
    rst RST_38                                    ; $7e40: $ff
    rst RST_38                                    ; $7e41: $ff
    rst RST_38                                    ; $7e42: $ff
    rst RST_38                                    ; $7e43: $ff
    rst RST_38                                    ; $7e44: $ff
    rst RST_38                                    ; $7e45: $ff
    rst RST_38                                    ; $7e46: $ff
    rst RST_38                                    ; $7e47: $ff
    rst RST_38                                    ; $7e48: $ff
    rst RST_38                                    ; $7e49: $ff
    rst RST_38                                    ; $7e4a: $ff
    rst RST_38                                    ; $7e4b: $ff
    rst RST_38                                    ; $7e4c: $ff
    rst RST_38                                    ; $7e4d: $ff
    rst RST_38                                    ; $7e4e: $ff
    rst RST_38                                    ; $7e4f: $ff
    rst RST_38                                    ; $7e50: $ff
    rst RST_38                                    ; $7e51: $ff
    rst RST_38                                    ; $7e52: $ff
    rst RST_38                                    ; $7e53: $ff
    rst RST_38                                    ; $7e54: $ff
    rst RST_38                                    ; $7e55: $ff
    rst RST_38                                    ; $7e56: $ff
    rst RST_38                                    ; $7e57: $ff
    rst RST_38                                    ; $7e58: $ff
    rst RST_38                                    ; $7e59: $ff
    rst RST_38                                    ; $7e5a: $ff
    rst RST_38                                    ; $7e5b: $ff
    rst RST_38                                    ; $7e5c: $ff
    rst RST_38                                    ; $7e5d: $ff
    rst RST_38                                    ; $7e5e: $ff
    rst RST_38                                    ; $7e5f: $ff
    rst RST_38                                    ; $7e60: $ff
    rst RST_38                                    ; $7e61: $ff
    rst RST_38                                    ; $7e62: $ff
    rst RST_38                                    ; $7e63: $ff
    rst RST_38                                    ; $7e64: $ff
    rst RST_38                                    ; $7e65: $ff
    rst RST_38                                    ; $7e66: $ff
    rst RST_38                                    ; $7e67: $ff
    rst RST_38                                    ; $7e68: $ff
    rst RST_38                                    ; $7e69: $ff
    rst RST_38                                    ; $7e6a: $ff
    rst RST_38                                    ; $7e6b: $ff
    rst RST_38                                    ; $7e6c: $ff
    rst RST_38                                    ; $7e6d: $ff
    rst RST_38                                    ; $7e6e: $ff
    rst RST_38                                    ; $7e6f: $ff
    rst RST_38                                    ; $7e70: $ff
    rst RST_38                                    ; $7e71: $ff
    rst RST_38                                    ; $7e72: $ff
    rst RST_38                                    ; $7e73: $ff
    rst RST_38                                    ; $7e74: $ff
    rst RST_38                                    ; $7e75: $ff
    rst RST_38                                    ; $7e76: $ff
    rst RST_38                                    ; $7e77: $ff
    rst RST_38                                    ; $7e78: $ff
    rst RST_38                                    ; $7e79: $ff
    rst RST_38                                    ; $7e7a: $ff
    rst RST_38                                    ; $7e7b: $ff
    rst RST_38                                    ; $7e7c: $ff
    rst RST_38                                    ; $7e7d: $ff
    rst RST_38                                    ; $7e7e: $ff
    rst RST_38                                    ; $7e7f: $ff
    rst RST_38                                    ; $7e80: $ff
    rst RST_38                                    ; $7e81: $ff
    rst RST_38                                    ; $7e82: $ff
    rst RST_38                                    ; $7e83: $ff
    rst RST_38                                    ; $7e84: $ff
    rst RST_38                                    ; $7e85: $ff
    rst RST_38                                    ; $7e86: $ff
    rst RST_38                                    ; $7e87: $ff
    rst RST_38                                    ; $7e88: $ff
    rst RST_38                                    ; $7e89: $ff
    rst RST_38                                    ; $7e8a: $ff
    rst RST_38                                    ; $7e8b: $ff
    rst RST_38                                    ; $7e8c: $ff
    rst RST_38                                    ; $7e8d: $ff
    rst RST_38                                    ; $7e8e: $ff
    rst RST_38                                    ; $7e8f: $ff
    rst RST_38                                    ; $7e90: $ff
    rst RST_38                                    ; $7e91: $ff
    rst RST_38                                    ; $7e92: $ff
    rst RST_38                                    ; $7e93: $ff
    rst RST_38                                    ; $7e94: $ff
    rst RST_38                                    ; $7e95: $ff
    rst RST_38                                    ; $7e96: $ff
    rst RST_38                                    ; $7e97: $ff
    rst RST_38                                    ; $7e98: $ff
    rst RST_38                                    ; $7e99: $ff
    rst RST_38                                    ; $7e9a: $ff
    rst RST_38                                    ; $7e9b: $ff
    rst RST_38                                    ; $7e9c: $ff
    rst RST_38                                    ; $7e9d: $ff
    rst RST_38                                    ; $7e9e: $ff
    rst RST_38                                    ; $7e9f: $ff
    rst RST_38                                    ; $7ea0: $ff
    rst RST_38                                    ; $7ea1: $ff
    rst RST_38                                    ; $7ea2: $ff
    rst RST_38                                    ; $7ea3: $ff
    rst RST_38                                    ; $7ea4: $ff
    rst RST_38                                    ; $7ea5: $ff
    rst RST_38                                    ; $7ea6: $ff
    rst RST_38                                    ; $7ea7: $ff
    rst RST_38                                    ; $7ea8: $ff
    rst RST_38                                    ; $7ea9: $ff
    rst RST_38                                    ; $7eaa: $ff
    rst RST_38                                    ; $7eab: $ff
    rst RST_38                                    ; $7eac: $ff
    rst RST_38                                    ; $7ead: $ff
    rst RST_38                                    ; $7eae: $ff
    rst RST_38                                    ; $7eaf: $ff
    rst RST_38                                    ; $7eb0: $ff
    rst RST_38                                    ; $7eb1: $ff
    rst RST_38                                    ; $7eb2: $ff
    rst RST_38                                    ; $7eb3: $ff
    rst RST_38                                    ; $7eb4: $ff
    rst RST_38                                    ; $7eb5: $ff
    rst RST_38                                    ; $7eb6: $ff
    rst RST_38                                    ; $7eb7: $ff
    rst RST_38                                    ; $7eb8: $ff
    rst RST_38                                    ; $7eb9: $ff
    rst RST_38                                    ; $7eba: $ff
    rst RST_38                                    ; $7ebb: $ff
    rst RST_38                                    ; $7ebc: $ff
    rst RST_38                                    ; $7ebd: $ff
    rst RST_38                                    ; $7ebe: $ff
    rst RST_38                                    ; $7ebf: $ff
    rst RST_38                                    ; $7ec0: $ff
    rst RST_38                                    ; $7ec1: $ff
    rst RST_38                                    ; $7ec2: $ff
    rst RST_38                                    ; $7ec3: $ff
    rst RST_38                                    ; $7ec4: $ff
    rst RST_38                                    ; $7ec5: $ff
    rst RST_38                                    ; $7ec6: $ff
    rst RST_38                                    ; $7ec7: $ff
    rst RST_38                                    ; $7ec8: $ff
    rst RST_38                                    ; $7ec9: $ff
    rst RST_38                                    ; $7eca: $ff
    rst RST_38                                    ; $7ecb: $ff
    rst RST_38                                    ; $7ecc: $ff
    rst RST_38                                    ; $7ecd: $ff
    rst RST_38                                    ; $7ece: $ff
    rst RST_38                                    ; $7ecf: $ff
    rst RST_38                                    ; $7ed0: $ff
    rst RST_38                                    ; $7ed1: $ff
    rst RST_38                                    ; $7ed2: $ff
    rst RST_38                                    ; $7ed3: $ff
    rst RST_38                                    ; $7ed4: $ff
    rst RST_38                                    ; $7ed5: $ff
    rst RST_38                                    ; $7ed6: $ff
    rst RST_38                                    ; $7ed7: $ff
    rst RST_38                                    ; $7ed8: $ff
    rst RST_38                                    ; $7ed9: $ff
    rst RST_38                                    ; $7eda: $ff
    rst RST_38                                    ; $7edb: $ff
    rst RST_38                                    ; $7edc: $ff
    rst RST_38                                    ; $7edd: $ff
    rst RST_38                                    ; $7ede: $ff
    rst RST_38                                    ; $7edf: $ff
    rst RST_38                                    ; $7ee0: $ff
    rst RST_38                                    ; $7ee1: $ff
    rst RST_38                                    ; $7ee2: $ff
    rst RST_38                                    ; $7ee3: $ff
    rst RST_38                                    ; $7ee4: $ff
    rst RST_38                                    ; $7ee5: $ff
    rst RST_38                                    ; $7ee6: $ff
    rst RST_38                                    ; $7ee7: $ff
    rst RST_38                                    ; $7ee8: $ff
    rst RST_38                                    ; $7ee9: $ff
    rst RST_38                                    ; $7eea: $ff
    rst RST_38                                    ; $7eeb: $ff
    rst RST_38                                    ; $7eec: $ff
    rst RST_38                                    ; $7eed: $ff
    rst RST_38                                    ; $7eee: $ff
    rst RST_38                                    ; $7eef: $ff
    rst RST_38                                    ; $7ef0: $ff
    rst RST_38                                    ; $7ef1: $ff
    rst RST_38                                    ; $7ef2: $ff
    rst RST_38                                    ; $7ef3: $ff
    rst RST_38                                    ; $7ef4: $ff
    rst RST_38                                    ; $7ef5: $ff
    rst RST_38                                    ; $7ef6: $ff
    rst RST_38                                    ; $7ef7: $ff
    rst RST_38                                    ; $7ef8: $ff
    rst RST_38                                    ; $7ef9: $ff
    rst RST_38                                    ; $7efa: $ff
    rst RST_38                                    ; $7efb: $ff
    rst RST_38                                    ; $7efc: $ff
    rst RST_38                                    ; $7efd: $ff
    rst RST_38                                    ; $7efe: $ff
    rst RST_38                                    ; $7eff: $ff
    rst RST_38                                    ; $7f00: $ff
    rst RST_38                                    ; $7f01: $ff
    rst RST_38                                    ; $7f02: $ff
    rst RST_38                                    ; $7f03: $ff
    rst RST_38                                    ; $7f04: $ff
    rst RST_38                                    ; $7f05: $ff
    rst RST_38                                    ; $7f06: $ff
    rst RST_38                                    ; $7f07: $ff
    rst RST_38                                    ; $7f08: $ff
    rst RST_38                                    ; $7f09: $ff
    rst RST_38                                    ; $7f0a: $ff
    rst RST_38                                    ; $7f0b: $ff
    rst RST_38                                    ; $7f0c: $ff
    rst RST_38                                    ; $7f0d: $ff
    rst RST_38                                    ; $7f0e: $ff
    rst RST_38                                    ; $7f0f: $ff
    rst RST_38                                    ; $7f10: $ff
    rst RST_38                                    ; $7f11: $ff
    rst RST_38                                    ; $7f12: $ff
    rst RST_38                                    ; $7f13: $ff
    rst RST_38                                    ; $7f14: $ff
    rst RST_38                                    ; $7f15: $ff
    rst RST_38                                    ; $7f16: $ff
    rst RST_38                                    ; $7f17: $ff
    rst RST_38                                    ; $7f18: $ff
    rst RST_38                                    ; $7f19: $ff
    rst RST_38                                    ; $7f1a: $ff
    rst RST_38                                    ; $7f1b: $ff
    rst RST_38                                    ; $7f1c: $ff
    rst RST_38                                    ; $7f1d: $ff
    rst RST_38                                    ; $7f1e: $ff
    rst RST_38                                    ; $7f1f: $ff
    rst RST_38                                    ; $7f20: $ff
    rst RST_38                                    ; $7f21: $ff
    rst RST_38                                    ; $7f22: $ff
    rst RST_38                                    ; $7f23: $ff
    rst RST_38                                    ; $7f24: $ff
    rst RST_38                                    ; $7f25: $ff
    rst RST_38                                    ; $7f26: $ff
    rst RST_38                                    ; $7f27: $ff
    rst RST_38                                    ; $7f28: $ff
    rst RST_38                                    ; $7f29: $ff
    rst RST_38                                    ; $7f2a: $ff
    rst RST_38                                    ; $7f2b: $ff
    rst RST_38                                    ; $7f2c: $ff
    rst RST_38                                    ; $7f2d: $ff
    rst RST_38                                    ; $7f2e: $ff
    rst RST_38                                    ; $7f2f: $ff
    rst RST_38                                    ; $7f30: $ff
    rst RST_38                                    ; $7f31: $ff
    rst RST_38                                    ; $7f32: $ff
    rst RST_38                                    ; $7f33: $ff
    rst RST_38                                    ; $7f34: $ff
    rst RST_38                                    ; $7f35: $ff
    rst RST_38                                    ; $7f36: $ff
    rst RST_38                                    ; $7f37: $ff
    rst RST_38                                    ; $7f38: $ff
    rst RST_38                                    ; $7f39: $ff
    rst RST_38                                    ; $7f3a: $ff
    rst RST_38                                    ; $7f3b: $ff
    rst RST_38                                    ; $7f3c: $ff
    rst RST_38                                    ; $7f3d: $ff
    rst RST_38                                    ; $7f3e: $ff
    rst RST_38                                    ; $7f3f: $ff
    rst RST_38                                    ; $7f40: $ff
    rst RST_38                                    ; $7f41: $ff
    rst RST_38                                    ; $7f42: $ff
    rst RST_38                                    ; $7f43: $ff
    rst RST_38                                    ; $7f44: $ff
    rst RST_38                                    ; $7f45: $ff
    rst RST_38                                    ; $7f46: $ff
    rst RST_38                                    ; $7f47: $ff
    rst RST_38                                    ; $7f48: $ff
    rst RST_38                                    ; $7f49: $ff
    rst RST_38                                    ; $7f4a: $ff
    rst RST_38                                    ; $7f4b: $ff
    rst RST_38                                    ; $7f4c: $ff
    rst RST_38                                    ; $7f4d: $ff
    rst RST_38                                    ; $7f4e: $ff
    rst RST_38                                    ; $7f4f: $ff
    rst RST_38                                    ; $7f50: $ff
    rst RST_38                                    ; $7f51: $ff
    rst RST_38                                    ; $7f52: $ff
    rst RST_38                                    ; $7f53: $ff
    rst RST_38                                    ; $7f54: $ff
    rst RST_38                                    ; $7f55: $ff
    rst RST_38                                    ; $7f56: $ff
    rst RST_38                                    ; $7f57: $ff
    rst RST_38                                    ; $7f58: $ff
    rst RST_38                                    ; $7f59: $ff
    rst RST_38                                    ; $7f5a: $ff
    rst RST_38                                    ; $7f5b: $ff
    rst RST_38                                    ; $7f5c: $ff
    rst RST_38                                    ; $7f5d: $ff
    rst RST_38                                    ; $7f5e: $ff
    rst RST_38                                    ; $7f5f: $ff
    rst RST_38                                    ; $7f60: $ff
    rst RST_38                                    ; $7f61: $ff
    rst RST_38                                    ; $7f62: $ff
    rst RST_38                                    ; $7f63: $ff
    rst RST_38                                    ; $7f64: $ff
    rst RST_38                                    ; $7f65: $ff
    rst RST_38                                    ; $7f66: $ff
    rst RST_38                                    ; $7f67: $ff
    rst RST_38                                    ; $7f68: $ff
    rst RST_38                                    ; $7f69: $ff
    rst RST_38                                    ; $7f6a: $ff
    rst RST_38                                    ; $7f6b: $ff
    rst RST_38                                    ; $7f6c: $ff
    rst RST_38                                    ; $7f6d: $ff
    rst RST_38                                    ; $7f6e: $ff
    rst RST_38                                    ; $7f6f: $ff
    rst RST_38                                    ; $7f70: $ff
    rst RST_38                                    ; $7f71: $ff
    rst RST_38                                    ; $7f72: $ff
    rst RST_38                                    ; $7f73: $ff
    rst RST_38                                    ; $7f74: $ff
    rst RST_38                                    ; $7f75: $ff
    rst RST_38                                    ; $7f76: $ff
    rst RST_38                                    ; $7f77: $ff
    rst RST_38                                    ; $7f78: $ff
    rst RST_38                                    ; $7f79: $ff
    rst RST_38                                    ; $7f7a: $ff
    rst RST_38                                    ; $7f7b: $ff
    rst RST_38                                    ; $7f7c: $ff
    rst RST_38                                    ; $7f7d: $ff
    rst RST_38                                    ; $7f7e: $ff
    rst RST_38                                    ; $7f7f: $ff
    rst RST_38                                    ; $7f80: $ff
    rst RST_38                                    ; $7f81: $ff
    rst RST_38                                    ; $7f82: $ff
    rst RST_38                                    ; $7f83: $ff
    rst RST_38                                    ; $7f84: $ff
    rst RST_38                                    ; $7f85: $ff
    rst RST_38                                    ; $7f86: $ff
    rst RST_38                                    ; $7f87: $ff
    rst RST_38                                    ; $7f88: $ff
    rst RST_38                                    ; $7f89: $ff
    rst RST_38                                    ; $7f8a: $ff
    rst RST_38                                    ; $7f8b: $ff
    rst RST_38                                    ; $7f8c: $ff
    rst RST_38                                    ; $7f8d: $ff
    rst RST_38                                    ; $7f8e: $ff
    rst RST_38                                    ; $7f8f: $ff
    rst RST_38                                    ; $7f90: $ff
    rst RST_38                                    ; $7f91: $ff
    rst RST_38                                    ; $7f92: $ff
    rst RST_38                                    ; $7f93: $ff
    rst RST_38                                    ; $7f94: $ff
    rst RST_38                                    ; $7f95: $ff
    rst RST_38                                    ; $7f96: $ff
    rst RST_38                                    ; $7f97: $ff
    rst RST_38                                    ; $7f98: $ff
    rst RST_38                                    ; $7f99: $ff
    rst RST_38                                    ; $7f9a: $ff
    rst RST_38                                    ; $7f9b: $ff
    rst RST_38                                    ; $7f9c: $ff
    rst RST_38                                    ; $7f9d: $ff
    rst RST_38                                    ; $7f9e: $ff
    rst RST_38                                    ; $7f9f: $ff
    rst RST_38                                    ; $7fa0: $ff
    rst RST_38                                    ; $7fa1: $ff
    rst RST_38                                    ; $7fa2: $ff
    rst RST_38                                    ; $7fa3: $ff
    rst RST_38                                    ; $7fa4: $ff
    rst RST_38                                    ; $7fa5: $ff
    rst RST_38                                    ; $7fa6: $ff
    rst RST_38                                    ; $7fa7: $ff
    rst RST_38                                    ; $7fa8: $ff
    rst RST_38                                    ; $7fa9: $ff
    rst RST_38                                    ; $7faa: $ff
    rst RST_38                                    ; $7fab: $ff
    rst RST_38                                    ; $7fac: $ff
    rst RST_38                                    ; $7fad: $ff
    rst RST_38                                    ; $7fae: $ff
    rst RST_38                                    ; $7faf: $ff
    rst RST_38                                    ; $7fb0: $ff
    rst RST_38                                    ; $7fb1: $ff
    rst RST_38                                    ; $7fb2: $ff
    rst RST_38                                    ; $7fb3: $ff
    rst RST_38                                    ; $7fb4: $ff
    rst RST_38                                    ; $7fb5: $ff
    rst RST_38                                    ; $7fb6: $ff
    rst RST_38                                    ; $7fb7: $ff
    rst RST_38                                    ; $7fb8: $ff
    rst RST_38                                    ; $7fb9: $ff
    rst RST_38                                    ; $7fba: $ff
    rst RST_38                                    ; $7fbb: $ff
    rst RST_38                                    ; $7fbc: $ff
    rst RST_38                                    ; $7fbd: $ff
    rst RST_38                                    ; $7fbe: $ff
    rst RST_38                                    ; $7fbf: $ff
    rst RST_38                                    ; $7fc0: $ff
    rst RST_38                                    ; $7fc1: $ff
    rst RST_38                                    ; $7fc2: $ff
    rst RST_38                                    ; $7fc3: $ff
    rst RST_38                                    ; $7fc4: $ff
    rst RST_38                                    ; $7fc5: $ff
    rst RST_38                                    ; $7fc6: $ff
    rst RST_38                                    ; $7fc7: $ff
    rst RST_38                                    ; $7fc8: $ff
    rst RST_38                                    ; $7fc9: $ff
    rst RST_38                                    ; $7fca: $ff
    rst RST_38                                    ; $7fcb: $ff
    rst RST_38                                    ; $7fcc: $ff
    rst RST_38                                    ; $7fcd: $ff
    rst RST_38                                    ; $7fce: $ff
    rst RST_38                                    ; $7fcf: $ff
    rst RST_38                                    ; $7fd0: $ff
    rst RST_38                                    ; $7fd1: $ff
    rst RST_38                                    ; $7fd2: $ff
    rst RST_38                                    ; $7fd3: $ff
    rst RST_38                                    ; $7fd4: $ff
    rst RST_38                                    ; $7fd5: $ff
    rst RST_38                                    ; $7fd6: $ff
    rst RST_38                                    ; $7fd7: $ff
    rst RST_38                                    ; $7fd8: $ff
    rst RST_38                                    ; $7fd9: $ff
    rst RST_38                                    ; $7fda: $ff
    rst RST_38                                    ; $7fdb: $ff
    rst RST_38                                    ; $7fdc: $ff
    rst RST_38                                    ; $7fdd: $ff
    rst RST_38                                    ; $7fde: $ff
    rst RST_38                                    ; $7fdf: $ff
    rst RST_38                                    ; $7fe0: $ff
    rst RST_38                                    ; $7fe1: $ff
    rst RST_38                                    ; $7fe2: $ff
    rst RST_38                                    ; $7fe3: $ff
    rst RST_38                                    ; $7fe4: $ff
    rst RST_38                                    ; $7fe5: $ff
    rst RST_38                                    ; $7fe6: $ff
    rst RST_38                                    ; $7fe7: $ff
    rst RST_38                                    ; $7fe8: $ff
    rst RST_38                                    ; $7fe9: $ff
    rst RST_38                                    ; $7fea: $ff
    rst RST_38                                    ; $7feb: $ff
    rst RST_38                                    ; $7fec: $ff
    rst RST_38                                    ; $7fed: $ff
    rst RST_38                                    ; $7fee: $ff
    rst RST_38                                    ; $7fef: $ff
    rst RST_38                                    ; $7ff0: $ff
    rst RST_38                                    ; $7ff1: $ff
    rst RST_38                                    ; $7ff2: $ff
    rst RST_38                                    ; $7ff3: $ff
    rst RST_38                                    ; $7ff4: $ff
    rst RST_38                                    ; $7ff5: $ff
    rst RST_38                                    ; $7ff6: $ff
    rst RST_38                                    ; $7ff7: $ff
    rst RST_38                                    ; $7ff8: $ff
    rst RST_38                                    ; $7ff9: $ff
    rst RST_38                                    ; $7ffa: $ff
    rst RST_38                                    ; $7ffb: $ff
    rst RST_38                                    ; $7ffc: $ff
    rst RST_38                                    ; $7ffd: $ff
    rst RST_38                                    ; $7ffe: $ff
    rst RST_38                                    ; $7fff: $ff
