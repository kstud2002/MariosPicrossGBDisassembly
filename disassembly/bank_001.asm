; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    xor l                                         ; $4000: $ad
    nop                                           ; $4001: $00
    db $d3                                        ; $4002: $d3
    nop                                           ; $4003: $00
    jp nc, $cb00                                  ; $4004: $d2 $00 $cb

    nop                                           ; $4007: $00
    sub $00                                       ; $4008: $d6 $00
    push bc                                       ; $400a: $c5
    nop                                           ; $400b: $00
    ret c                                         ; $400c: $d8

    nop                                           ; $400d: $00
    reti                                          ; $400e: $d9


    nop                                           ; $400f: $00
    ret nc                                        ; $4010: $d0

    nop                                           ; $4011: $00
    push bc                                       ; $4012: $c5
    nop                                           ; $4013: $00
    ret c                                         ; $4014: $d8

    nop                                           ; $4015: $00
    call $d300                                    ; $4016: $cd $00 $d3
    nop                                           ; $4019: $00
    jp nc, $d700                                  ; $401a: $d2 $00 $d7

    nop                                           ; $401d: $00
    rst $20                                       ; $401e: $e7
    nop                                           ; $401f: $00
    rst $20                                       ; $4020: $e7
    nop                                           ; $4021: $00
    cp $ff                                        ; $4022: $fe $ff
    jp $d300                                      ; $4024: $c3 $00 $d3


    nop                                           ; $4027: $00
    reti                                          ; $4028: $d9


    nop                                           ; $4029: $00
    rst RST_18                                    ; $402a: $df
    nop                                           ; $402b: $00
    call z, $c500                                 ; $402c: $cc $00 $c5
    nop                                           ; $402f: $00
    jp c, $c900                                   ; $4030: $da $00 $c9

    nop                                           ; $4033: $00
    rst RST_18                                    ; $4034: $df
    nop                                           ; $4035: $00
    rst $10                                       ; $4036: $d7
    nop                                           ; $4037: $00
    db $d3                                        ; $4038: $d3
    nop                                           ; $4039: $00
    ret nc                                        ; $403a: $d0

    nop                                           ; $403b: $00
    jp c, $c900                                   ; $403c: $da $00 $c9

    nop                                           ; $403f: $00
    ret z                                         ; $4040: $c8

    nop                                           ; $4041: $00
    cp $ff                                        ; $4042: $fe $ff
    push bc                                       ; $4044: $c5
    nop                                           ; $4045: $00
    ret nc                                        ; $4046: $d0

    nop                                           ; $4047: $00
    ret nc                                        ; $4048: $d0

    nop                                           ; $4049: $00
    rst RST_18                                    ; $404a: $df
    nop                                           ; $404b: $00
    ret c                                         ; $404c: $d8

    nop                                           ; $404d: $00
    call z, $c900                                 ; $404e: $cc $00 $c9
    nop                                           ; $4051: $00
    rst RST_18                                    ; $4052: $df
    nop                                           ; $4053: $00
    call nc, $d900                                ; $4054: $d4 $00 $d9
    nop                                           ; $4057: $00
    sbc $00                                       ; $4058: $de $00
    sbc $00                                       ; $405a: $de $00
    ret nc                                        ; $405c: $d0

    nop                                           ; $405d: $00
    ret                                           ; $405e: $c9


    nop                                           ; $405f: $00
    rst $10                                       ; $4060: $d7
    nop                                           ; $4061: $00
    cp $ff                                        ; $4062: $fe $ff
    call $d200                                    ; $4064: $cd $00 $d2
    nop                                           ; $4067: $00
    rst RST_18                                    ; $4068: $df
    nop                                           ; $4069: $00
    push hl                                       ; $406a: $e5
    nop                                           ; $406b: $00
    xor a                                         ; $406c: $af
    nop                                           ; $406d: $00
    xor e                                         ; $406e: $ab
    nop                                           ; $406f: $00
    cp l                                          ; $4070: $bd
    nop                                           ; $4071: $00
    jp $df00                                      ; $4072: $c3 $00 $df


    nop                                           ; $4075: $00
    cp d                                          ; $4076: $ba
    nop                                           ; $4077: $00
    or e                                          ; $4078: $b3
    nop                                           ; $4079: $00
    xor l                                         ; $407a: $ad
    nop                                           ; $407b: $00
    cp h                                          ; $407c: $bc
    nop                                           ; $407d: $00
    cp c                                          ; $407e: $b9
    nop                                           ; $407f: $00
    cp l                                          ; $4080: $bd
    nop                                           ; $4081: $00
    cp l                                          ; $4082: $bd
    nop                                           ; $4083: $00
    and $00                                       ; $4084: $e6 $00
    rst $20                                       ; $4086: $e7
    nop                                           ; $4087: $00
    rst $38                                       ; $4088: $ff
    rst $38                                       ; $4089: $ff
    xor l                                         ; $408a: $ad
    nop                                           ; $408b: $00
    db $d3                                        ; $408c: $d3
    nop                                           ; $408d: $00
    jp nc, $cb00                                  ; $408e: $d2 $00 $cb

    nop                                           ; $4091: $00
    sub $00                                       ; $4092: $d6 $00
    push bc                                       ; $4094: $c5
    nop                                           ; $4095: $00
    ret c                                         ; $4096: $d8

    nop                                           ; $4097: $00
    reti                                          ; $4098: $d9


    nop                                           ; $4099: $00
    ret nc                                        ; $409a: $d0

    nop                                           ; $409b: $00
    push bc                                       ; $409c: $c5
    nop                                           ; $409d: $00
    ret c                                         ; $409e: $d8

    nop                                           ; $409f: $00
    call $d300                                    ; $40a0: $cd $00 $d3
    nop                                           ; $40a3: $00
    jp nc, $d700                                  ; $40a4: $d2 $00 $d7

    nop                                           ; $40a7: $00
    rst $20                                       ; $40a8: $e7
    nop                                           ; $40a9: $00
    rst $20                                       ; $40aa: $e7
    nop                                           ; $40ab: $00
    cp $ff                                        ; $40ac: $fe $ff
    or [hl]                                       ; $40ae: $b6
    nop                                           ; $40af: $00
    ret                                           ; $40b0: $c9


    nop                                           ; $40b1: $00
    ret c                                         ; $40b2: $d8

    nop                                           ; $40b3: $00
    pop af                                        ; $40b4: $f1
    nop                                           ; $40b5: $00
    rst $10                                       ; $40b6: $d7
    nop                                           ; $40b7: $00
    rst RST_18                                    ; $40b8: $df
    nop                                           ; $40b9: $00
    pop de                                        ; $40ba: $d1
    nop                                           ; $40bb: $00
    db $d3                                        ; $40bc: $d3
    nop                                           ; $40bd: $00
    jp c, $c900                                   ; $40be: $da $00 $c9

    nop                                           ; $40c1: $00
    rst RST_18                                    ; $40c2: $df
    nop                                           ; $40c3: $00
    db $d3                                        ; $40c4: $d3
    nop                                           ; $40c5: $00
    jp nc, $fe00                                  ; $40c6: $d2 $00 $fe

    rst $38                                       ; $40c9: $ff
    push bc                                       ; $40ca: $c5
    nop                                           ; $40cb: $00
    jp nc, $c800                                  ; $40cc: $d2 $00 $c8

    nop                                           ; $40cf: $00
    rst RST_18                                    ; $40d0: $df
    nop                                           ; $40d1: $00
    rst RST_00                                    ; $40d2: $c7
    nop                                           ; $40d3: $00
    call z, $c500                                 ; $40d4: $cc $00 $c5
    nop                                           ; $40d7: $00
    ret nc                                        ; $40d8: $d0

    nop                                           ; $40d9: $00
    ret nc                                        ; $40da: $d0

    nop                                           ; $40db: $00
    ret                                           ; $40dc: $c9


    nop                                           ; $40dd: $00
    jp nc, $cb00                                  ; $40de: $d2 $00 $cb

    nop                                           ; $40e1: $00
    ret                                           ; $40e2: $c9


    nop                                           ; $40e3: $00
    cp $ff                                        ; $40e4: $fe $ff
    ret c                                         ; $40e6: $d8

    nop                                           ; $40e7: $00
    call z, $c900                                 ; $40e8: $cc $00 $c9
    nop                                           ; $40eb: $00
    rst RST_18                                    ; $40ec: $df
    nop                                           ; $40ed: $00
    push hl                                       ; $40ee: $e5
    nop                                           ; $40ef: $00
    cp l                                          ; $40f0: $bd
    nop                                           ; $40f1: $00
    cp [hl]                                       ; $40f2: $be
    nop                                           ; $40f3: $00
    xor e                                         ; $40f4: $ab
    nop                                           ; $40f5: $00
    cp h                                          ; $40f6: $bc
    nop                                           ; $40f7: $00
    rst RST_18                                    ; $40f8: $df
    nop                                           ; $40f9: $00
    xor l                                         ; $40fa: $ad
    nop                                           ; $40fb: $00
    cp c                                          ; $40fc: $b9
    nop                                           ; $40fd: $00
    cp a                                          ; $40fe: $bf
    nop                                           ; $40ff: $00
    cp h                                          ; $4100: $bc
    nop                                           ; $4101: $00
    cp l                                          ; $4102: $bd
    nop                                           ; $4103: $00
    xor a                                         ; $4104: $af
    nop                                           ; $4105: $00
    and $00                                       ; $4106: $e6 $00
    rst $20                                       ; $4108: $e7
    nop                                           ; $4109: $00
    rst $38                                       ; $410a: $ff
    rst $38                                       ; $410b: $ff
    xor l                                         ; $410c: $ad
    nop                                           ; $410d: $00
    db $d3                                        ; $410e: $d3
    nop                                           ; $410f: $00
    jp nc, $cb00                                  ; $4110: $d2 $00 $cb

    nop                                           ; $4113: $00
    sub $00                                       ; $4114: $d6 $00
    push bc                                       ; $4116: $c5
    nop                                           ; $4117: $00
    ret c                                         ; $4118: $d8

    nop                                           ; $4119: $00
    reti                                          ; $411a: $d9


    nop                                           ; $411b: $00
    ret nc                                        ; $411c: $d0

    nop                                           ; $411d: $00
    push bc                                       ; $411e: $c5
    nop                                           ; $411f: $00
    ret c                                         ; $4120: $d8

    nop                                           ; $4121: $00
    call $d300                                    ; $4122: $cd $00 $d3
    nop                                           ; $4125: $00
    jp nc, $d700                                  ; $4126: $d2 $00 $d7

    nop                                           ; $4129: $00
    rst $20                                       ; $412a: $e7
    nop                                           ; $412b: $00
    rst $20                                       ; $412c: $e7
    nop                                           ; $412d: $00
    cp $ff                                        ; $412e: $fe $ff
    or [hl]                                       ; $4130: $b6
    nop                                           ; $4131: $00
    ret                                           ; $4132: $c9


    nop                                           ; $4133: $00
    ret c                                         ; $4134: $d8

    nop                                           ; $4135: $00
    pop af                                        ; $4136: $f1
    nop                                           ; $4137: $00
    rst $10                                       ; $4138: $d7
    nop                                           ; $4139: $00
    rst RST_18                                    ; $413a: $df
    nop                                           ; $413b: $00
    pop de                                        ; $413c: $d1
    nop                                           ; $413d: $00
    db $d3                                        ; $413e: $d3
    nop                                           ; $413f: $00
    jp c, $c900                                   ; $4140: $da $00 $c9

    nop                                           ; $4143: $00
    rst RST_18                                    ; $4144: $df
    nop                                           ; $4145: $00
    db $d3                                        ; $4146: $d3
    nop                                           ; $4147: $00
    jp nc, $fe00                                  ; $4148: $d2 $00 $fe

    rst $38                                       ; $414b: $ff
    push bc                                       ; $414c: $c5
    nop                                           ; $414d: $00
    jp nc, $c800                                  ; $414e: $d2 $00 $c8

    nop                                           ; $4151: $00
    rst RST_18                                    ; $4152: $df
    nop                                           ; $4153: $00
    rst RST_00                                    ; $4154: $c7
    nop                                           ; $4155: $00
    call z, $c500                                 ; $4156: $cc $00 $c5
    nop                                           ; $4159: $00
    ret nc                                        ; $415a: $d0

    nop                                           ; $415b: $00
    ret nc                                        ; $415c: $d0

    nop                                           ; $415d: $00
    ret                                           ; $415e: $c9


    nop                                           ; $415f: $00
    jp nc, $cb00                                  ; $4160: $d2 $00 $cb

    nop                                           ; $4163: $00
    ret                                           ; $4164: $c9


    nop                                           ; $4165: $00
    cp $ff                                        ; $4166: $fe $ff
    ret c                                         ; $4168: $d8

    nop                                           ; $4169: $00
    call z, $c900                                 ; $416a: $cc $00 $c9
    nop                                           ; $416d: $00
    rst RST_18                                    ; $416e: $df
    nop                                           ; $416f: $00
    push hl                                       ; $4170: $e5
    nop                                           ; $4171: $00
    cp l                                          ; $4172: $bd
    nop                                           ; $4173: $00
    cp [hl]                                       ; $4174: $be
    nop                                           ; $4175: $00
    xor e                                         ; $4176: $ab
    nop                                           ; $4177: $00
    cp h                                          ; $4178: $bc
    nop                                           ; $4179: $00
    rst RST_18                                    ; $417a: $df
    nop                                           ; $417b: $00
    xor l                                         ; $417c: $ad
    nop                                           ; $417d: $00
    cp c                                          ; $417e: $b9
    nop                                           ; $417f: $00
    cp a                                          ; $4180: $bf
    nop                                           ; $4181: $00
    cp h                                          ; $4182: $bc
    nop                                           ; $4183: $00
    cp l                                          ; $4184: $bd
    nop                                           ; $4185: $00
    xor a                                         ; $4186: $af
    nop                                           ; $4187: $00
    and $00                                       ; $4188: $e6 $00
    rst $20                                       ; $418a: $e7
    nop                                           ; $418b: $00
    rst $38                                       ; $418c: $ff
    rst $38                                       ; $418d: $ff
    xor l                                         ; $418e: $ad
    nop                                           ; $418f: $00
    db $d3                                        ; $4190: $d3
    nop                                           ; $4191: $00
    jp nc, $cb00                                  ; $4192: $d2 $00 $cb

    nop                                           ; $4195: $00
    sub $00                                       ; $4196: $d6 $00
    push bc                                       ; $4198: $c5
    nop                                           ; $4199: $00
    ret c                                         ; $419a: $d8

    nop                                           ; $419b: $00
    reti                                          ; $419c: $d9


    nop                                           ; $419d: $00
    ret nc                                        ; $419e: $d0

    nop                                           ; $419f: $00
    push bc                                       ; $41a0: $c5
    nop                                           ; $41a1: $00
    ret c                                         ; $41a2: $d8

    nop                                           ; $41a3: $00
    call $d300                                    ; $41a4: $cd $00 $d3
    nop                                           ; $41a7: $00
    jp nc, $d700                                  ; $41a8: $d2 $00 $d7

    nop                                           ; $41ab: $00
    rst $20                                       ; $41ac: $e7
    nop                                           ; $41ad: $00
    rst $20                                       ; $41ae: $e7
    nop                                           ; $41af: $00
    cp $ff                                        ; $41b0: $fe $ff
    jp $d300                                      ; $41b2: $c3 $00 $d3


    nop                                           ; $41b5: $00
    reti                                          ; $41b6: $d9


    nop                                           ; $41b7: $00
    rst RST_18                                    ; $41b8: $df
    nop                                           ; $41b9: $00
    call z, $c500                                 ; $41ba: $cc $00 $c5
    nop                                           ; $41bd: $00
    jp c, $c900                                   ; $41be: $da $00 $c9

    nop                                           ; $41c1: $00
    rst RST_18                                    ; $41c2: $df
    nop                                           ; $41c3: $00
    rst $10                                       ; $41c4: $d7
    nop                                           ; $41c5: $00
    db $d3                                        ; $41c6: $d3
    nop                                           ; $41c7: $00
    ret nc                                        ; $41c8: $d0

    nop                                           ; $41c9: $00
    jp c, $c900                                   ; $41ca: $da $00 $c9

    nop                                           ; $41cd: $00
    ret z                                         ; $41ce: $c8

    nop                                           ; $41cf: $00
    cp $ff                                        ; $41d0: $fe $ff
    ret                                           ; $41d2: $c9


    nop                                           ; $41d3: $00
    jp c, $c900                                   ; $41d4: $da $00 $c9

    nop                                           ; $41d7: $00
    sub $00                                       ; $41d8: $d6 $00
    db $dd                                        ; $41da: $dd
    nop                                           ; $41db: $00
    rst RST_18                                    ; $41dc: $df
    nop                                           ; $41dd: $00
    call nc, $d900                                ; $41de: $d4 $00 $d9
    nop                                           ; $41e1: $00
    sbc $00                                       ; $41e2: $de $00
    sbc $00                                       ; $41e4: $de $00
    ret nc                                        ; $41e6: $d0

    nop                                           ; $41e7: $00
    ret                                           ; $41e8: $c9


    nop                                           ; $41e9: $00
    cp $ff                                        ; $41ea: $fe $ff
    call $d200                                    ; $41ec: $cd $00 $d2
    nop                                           ; $41ef: $00
    rst RST_18                                    ; $41f0: $df
    nop                                           ; $41f1: $00
    push hl                                       ; $41f2: $e5
    nop                                           ; $41f3: $00
    cp d                                          ; $41f4: $ba
    nop                                           ; $41f5: $00
    or e                                          ; $41f6: $b3
    nop                                           ; $41f7: $00
    xor l                                         ; $41f8: $ad
    nop                                           ; $41f9: $00
    cp h                                          ; $41fa: $bc
    nop                                           ; $41fb: $00
    cp c                                          ; $41fc: $b9
    nop                                           ; $41fd: $00
    cp l                                          ; $41fe: $bd
    nop                                           ; $41ff: $00
    cp l                                          ; $4200: $bd
    nop                                           ; $4201: $00
    and $00                                       ; $4202: $e6 $00
    rst $20                                       ; $4204: $e7
    nop                                           ; $4205: $00
    rst $38                                       ; $4206: $ff
    rst $38                                       ; $4207: $ff
    cp b                                          ; $4208: $b8
    nop                                           ; $4209: $00
    db $d3                                        ; $420a: $d3
    nop                                           ; $420b: $00
    db $db                                        ; $420c: $db
    nop                                           ; $420d: $00
    rst RST_18                                    ; $420e: $df
    nop                                           ; $420f: $00
    db $dd                                        ; $4210: $dd
    nop                                           ; $4211: $00
    db $d3                                        ; $4212: $d3
    nop                                           ; $4213: $00
    reti                                          ; $4214: $d9


    nop                                           ; $4215: $00
    rst RST_18                                    ; $4216: $df
    nop                                           ; $4217: $00
    pop de                                        ; $4218: $d1
    nop                                           ; $4219: $00
    push bc                                       ; $421a: $c5
    nop                                           ; $421b: $00
    db $dd                                        ; $421c: $dd
    nop                                           ; $421d: $00
    rst RST_18                                    ; $421e: $df
    nop                                           ; $421f: $00
    rst $10                                       ; $4220: $d7
    nop                                           ; $4221: $00
    ret                                           ; $4222: $c9


    nop                                           ; $4223: $00
    ret nc                                        ; $4224: $d0

    nop                                           ; $4225: $00
    ret                                           ; $4226: $c9


    nop                                           ; $4227: $00
    rst RST_00                                    ; $4228: $c7
    nop                                           ; $4229: $00
    ret c                                         ; $422a: $d8

    nop                                           ; $422b: $00
    cp $ff                                        ; $422c: $fe $ff
    ret c                                         ; $422e: $d8

    nop                                           ; $422f: $00
    call z, $c900                                 ; $4230: $cc $00 $c9
    nop                                           ; $4233: $00
    rst RST_18                                    ; $4234: $df
    nop                                           ; $4235: $00
    cp [hl]                                       ; $4236: $be
    nop                                           ; $4237: $00
    or e                                          ; $4238: $b3
    nop                                           ; $4239: $00
    or a                                          ; $423a: $b7
    nop                                           ; $423b: $00
    xor a                                         ; $423c: $af
    nop                                           ; $423d: $00
    rst RST_18                                    ; $423e: $df
    nop                                           ; $423f: $00
    cp [hl]                                       ; $4240: $be
    nop                                           ; $4241: $00
    cp h                                          ; $4242: $bc
    nop                                           ; $4243: $00
    or e                                          ; $4244: $b3
    nop                                           ; $4245: $00
    xor e                                         ; $4246: $ab
    nop                                           ; $4247: $00
    or [hl]                                       ; $4248: $b6
    nop                                           ; $4249: $00
    rst RST_18                                    ; $424a: $df
    nop                                           ; $424b: $00
    or a                                          ; $424c: $b7
    nop                                           ; $424d: $00
    cp c                                          ; $424e: $b9
    nop                                           ; $424f: $00
    xor [hl]                                      ; $4250: $ae
    nop                                           ; $4251: $00
    xor a                                         ; $4252: $af
    nop                                           ; $4253: $00
    db $ec                                        ; $4254: $ec
    nop                                           ; $4255: $00
    rst $38                                       ; $4256: $ff
    rst $38                                       ; $4257: $ff
    cp [hl]                                       ; $4258: $be
    nop                                           ; $4259: $00
    call z, $c900                                 ; $425a: $cc $00 $c9
    nop                                           ; $425d: $00
    sub $00                                       ; $425e: $d6 $00
    ret                                           ; $4260: $c9


    nop                                           ; $4261: $00
    rst RST_18                                    ; $4262: $df
    nop                                           ; $4263: $00
    call $d700                                    ; $4264: $cd $00 $d7
    nop                                           ; $4267: $00
    rst RST_18                                    ; $4268: $df
    nop                                           ; $4269: $00
    jp nc, $d300                                  ; $426a: $d2 $00 $d3

    nop                                           ; $426d: $00
    rst RST_18                                    ; $426e: $df
    nop                                           ; $426f: $00
    ret c                                         ; $4270: $d8

    nop                                           ; $4271: $00
    call $d100                                    ; $4272: $cd $00 $d1
    nop                                           ; $4275: $00
    ret                                           ; $4276: $c9


    nop                                           ; $4277: $00
    rst RST_18                                    ; $4278: $df
    nop                                           ; $4279: $00
    ret nc                                        ; $427a: $d0

    nop                                           ; $427b: $00
    call $d100                                    ; $427c: $cd $00 $d1
    nop                                           ; $427f: $00
    call CurrentGridSize                          ; $4280: $cd $00 $d8
    nop                                           ; $4283: $00
    db $eb                                        ; $4284: $eb
    nop                                           ; $4285: $00
    rst RST_18                                    ; $4286: $df
    nop                                           ; $4287: $00
    jp nc, $d300                                  ; $4288: $d2 $00 $d3

    nop                                           ; $428b: $00
    cp $ff                                        ; $428c: $fe $ff
    call z, $cd00                                 ; $428e: $cc $00 $cd
    nop                                           ; $4291: $00
    jp nc, CurrentGridSize                        ; $4292: $d2 $00 $d8

    nop                                           ; $4295: $00
    rst $10                                       ; $4296: $d7
    nop                                           ; $4297: $00
    rst RST_18                                    ; $4298: $df
    nop                                           ; $4299: $00
    push bc                                       ; $429a: $c5
    nop                                           ; $429b: $00
    jp nc, $c800                                  ; $429c: $d2 $00 $c8

    nop                                           ; $429f: $00
    rst RST_18                                    ; $42a0: $df
    nop                                           ; $42a1: $00
    db $dd                                        ; $42a2: $dd
    nop                                           ; $42a3: $00
    db $d3                                        ; $42a4: $d3
    nop                                           ; $42a5: $00
    reti                                          ; $42a6: $d9


    nop                                           ; $42a7: $00
    sub $00                                       ; $42a8: $d6 $00
    rst RST_18                                    ; $42aa: $df
    nop                                           ; $42ab: $00
    pop de                                        ; $42ac: $d1
    nop                                           ; $42ad: $00
    call $d700                                    ; $42ae: $cd $00 $d7
    nop                                           ; $42b1: $00
    ret c                                         ; $42b2: $d8

    nop                                           ; $42b3: $00
    push bc                                       ; $42b4: $c5
    nop                                           ; $42b5: $00
    rst RST_08                                    ; $42b6: $cf
    nop                                           ; $42b7: $00
    ret                                           ; $42b8: $c9


    nop                                           ; $42b9: $00
    rst $10                                       ; $42ba: $d7
    nop                                           ; $42bb: $00
    cp $ff                                        ; $42bc: $fe $ff
    db $db                                        ; $42be: $db
    nop                                           ; $42bf: $00
    call $d000                                    ; $42c0: $cd $00 $d0
    nop                                           ; $42c3: $00
    ret nc                                        ; $42c4: $d0

    nop                                           ; $42c5: $00
    rst RST_18                                    ; $42c6: $df
    nop                                           ; $42c7: $00
    jp nc, $d300                                  ; $42c8: $d2 $00 $d3

    nop                                           ; $42cb: $00
    ret c                                         ; $42cc: $d8

    nop                                           ; $42cd: $00
    rst RST_18                                    ; $42ce: $df
    nop                                           ; $42cf: $00
    add $00                                       ; $42d0: $c6 $00
    ret                                           ; $42d2: $c9


    nop                                           ; $42d3: $00
    rst RST_18                                    ; $42d4: $df
    nop                                           ; $42d5: $00
    sub $00                                       ; $42d6: $d6 $00
    ret                                           ; $42d8: $c9


    nop                                           ; $42d9: $00
    jp c, $c900                                   ; $42da: $da $00 $c9

    nop                                           ; $42dd: $00
    push bc                                       ; $42de: $c5
    nop                                           ; $42df: $00
    ret nc                                        ; $42e0: $d0

    nop                                           ; $42e1: $00
    ret                                           ; $42e2: $c9


    nop                                           ; $42e3: $00
    ret z                                         ; $42e4: $c8

    nop                                           ; $42e5: $00
    cp $ff                                        ; $42e6: $fe $ff
    ret c                                         ; $42e8: $d8

    nop                                           ; $42e9: $00
    db $d3                                        ; $42ea: $d3
    nop                                           ; $42eb: $00
    rst RST_18                                    ; $42ec: $df
    nop                                           ; $42ed: $00
    db $dd                                        ; $42ee: $dd
    nop                                           ; $42ef: $00
    db $d3                                        ; $42f0: $d3
    nop                                           ; $42f1: $00
    reti                                          ; $42f2: $d9


    nop                                           ; $42f3: $00
    rst RST_18                                    ; $42f4: $df
    nop                                           ; $42f5: $00
    ret z                                         ; $42f6: $c8

    nop                                           ; $42f7: $00
    reti                                          ; $42f8: $d9


    nop                                           ; $42f9: $00
    sub $00                                       ; $42fa: $d6 $00
    call $d200                                    ; $42fc: $cd $00 $d2
    nop                                           ; $42ff: $00
    rlc b                                         ; $4300: $cb $00
    rst RST_18                                    ; $4302: $df
    nop                                           ; $4303: $00
    ret c                                         ; $4304: $d8

    nop                                           ; $4305: $00
    call z, $c900                                 ; $4306: $cc $00 $c9
    nop                                           ; $4309: $00
    rst RST_18                                    ; $430a: $df
    nop                                           ; $430b: $00
    cp $ff                                        ; $430c: $fe $ff
    cp [hl]                                       ; $430e: $be
    nop                                           ; $430f: $00
    or e                                          ; $4310: $b3
    nop                                           ; $4311: $00
    or a                                          ; $4312: $b7
    nop                                           ; $4313: $00
    xor a                                         ; $4314: $af
    nop                                           ; $4315: $00
    rst RST_18                                    ; $4316: $df
    nop                                           ; $4317: $00
    cp [hl]                                       ; $4318: $be
    nop                                           ; $4319: $00
    cp h                                          ; $431a: $bc
    nop                                           ; $431b: $00
    or e                                          ; $431c: $b3
    nop                                           ; $431d: $00
    xor e                                         ; $431e: $ab
    nop                                           ; $431f: $00
    or [hl]                                       ; $4320: $b6
    nop                                           ; $4321: $00
    rst RST_18                                    ; $4322: $df
    nop                                           ; $4323: $00
    or a                                          ; $4324: $b7
    nop                                           ; $4325: $00
    cp c                                          ; $4326: $b9
    nop                                           ; $4327: $00
    xor [hl]                                      ; $4328: $ae
    nop                                           ; $4329: $00
    xor a                                         ; $432a: $af
    nop                                           ; $432b: $00
    rst RST_18                                    ; $432c: $df
    nop                                           ; $432d: $00
    call nc, $d000                                ; $432e: $d4 $00 $d0
    nop                                           ; $4331: $00
    push bc                                       ; $4332: $c5
    nop                                           ; $4333: $00
    db $dd                                        ; $4334: $dd
    nop                                           ; $4335: $00
    db $ec                                        ; $4336: $ec
    nop                                           ; $4337: $00
    rst $38                                       ; $4338: $ff
    rst $38                                       ; $4339: $ff
    cp [hl]                                       ; $433a: $be
    nop                                           ; $433b: $00
    call z, $cd00                                 ; $433c: $cc $00 $cd
    nop                                           ; $433f: $00
    rst $10                                       ; $4340: $d7
    nop                                           ; $4341: $00
    rst RST_18                                    ; $4342: $df
    nop                                           ; $4343: $00
    call $d700                                    ; $4344: $cd $00 $d7
    nop                                           ; $4347: $00
    rst RST_18                                    ; $4348: $df
    nop                                           ; $4349: $00
    ret c                                         ; $434a: $d8

    nop                                           ; $434b: $00
    call z, $c900                                 ; $434c: $cc $00 $c9
    nop                                           ; $434f: $00
    rst RST_18                                    ; $4350: $df
    nop                                           ; $4351: $00
    reti                                          ; $4352: $d9


    nop                                           ; $4353: $00
    ret nc                                        ; $4354: $d0

    nop                                           ; $4355: $00
    ret c                                         ; $4356: $d8

    nop                                           ; $4357: $00
    call $d100                                    ; $4358: $cd $00 $d1
    nop                                           ; $435b: $00
    push bc                                       ; $435c: $c5
    nop                                           ; $435d: $00
    ret c                                         ; $435e: $d8

    nop                                           ; $435f: $00
    ret                                           ; $4360: $c9


    nop                                           ; $4361: $00
    cp $ff                                        ; $4362: $fe $ff
    cp d                                          ; $4364: $ba
    nop                                           ; $4365: $00
    or e                                          ; $4366: $b3
    nop                                           ; $4367: $00
    xor l                                         ; $4368: $ad
    nop                                           ; $4369: $00
    cp h                                          ; $436a: $bc
    nop                                           ; $436b: $00
    cp c                                          ; $436c: $b9
    nop                                           ; $436d: $00
    cp l                                          ; $436e: $bd
    nop                                           ; $436f: $00
    cp l                                          ; $4370: $bd
    nop                                           ; $4371: $00
    rst RST_18                                    ; $4372: $df
    nop                                           ; $4373: $00
    rst RST_00                                    ; $4374: $c7
    nop                                           ; $4375: $00
    call z, $c500                                 ; $4376: $cc $00 $c5
    nop                                           ; $4379: $00
    ret nc                                        ; $437a: $d0

    nop                                           ; $437b: $00
    ret nc                                        ; $437c: $d0

    nop                                           ; $437d: $00
    ret                                           ; $437e: $c9


    nop                                           ; $437f: $00
    jp nc, $cb00                                  ; $4380: $d2 $00 $cb

    nop                                           ; $4383: $00
    ret                                           ; $4384: $c9


    nop                                           ; $4385: $00
    rst $20                                       ; $4386: $e7
    nop                                           ; $4387: $00
    rst $38                                       ; $4388: $ff
    rst $38                                       ; $4389: $ff

GameState_04_TODO_PhaseDispatcher::
    ld a, [StatePhase_Current]                    ; $438a: $fa $35 $d6
    rst RST_18                                    ; $438d: $df

GS04_PhasePointer_00::
    db $9a, $43

GS04_PhasePointer_01::
    db $7d, $47

GS04_PhasePointer_02::
    db $09, $48

GS04_PhasePointer_03::
    db $72, $49

GS04_PhasePointer_04::
    db $10, $44

GS04_PhasePointer_05::
    db $b7, $47

GS04_StatePhase_00_TODO::
    ld a, $43                                     ; $439a: $3e $43
    ld [$c32e], a                                 ; $439c: $ea $2e $c3
    xor a                                         ; $439f: $af
    ld [$c32f], a                                 ; $43a0: $ea $2f $c3
    ld [$c330], a                                 ; $43a3: $ea $30 $c3
    ld [$c331], a                                 ; $43a6: $ea $31 $c3
    ld [$c332], a                                 ; $43a9: $ea $32 $c3
    ld [$c333], a                                 ; $43ac: $ea $33 $c3
    call Call_000_05a0                            ; $43af: $cd $a0 $05
    call Call_000_05ab                            ; $43b2: $cd $ab $05
    ld a, $0b                                     ; $43b5: $3e $0b
    ld hl, $5000                                  ; $43b7: $21 $00 $50
    ld de, $8000                                  ; $43ba: $11 $00 $80
    ld bc, $0300                                  ; $43bd: $01 $00 $03
    call BankedTileCopy                           ; $43c0: $cd $e4 $04
    ld a, $07                                     ; $43c3: $3e $07
    ld hl, $7b00                                  ; $43c5: $21 $00 $7b
    ld de, $8300                                  ; $43c8: $11 $00 $83
    ld bc, $0200                                  ; $43cb: $01 $00 $02
    call BankedTileCopy                           ; $43ce: $cd $e4 $04
    ld a, $0a                                     ; $43d1: $3e $0a
    ld hl, $6000                                  ; $43d3: $21 $00 $60
    ld de, $8800                                  ; $43d6: $11 $00 $88
    ld bc, $1000                                  ; $43d9: $01 $00 $10
    call BankedTileCopy                           ; $43dc: $cd $e4 $04
    call Call_001_49a2                            ; $43df: $cd $a2 $49
    call Call_001_4a80                            ; $43e2: $cd $80 $4a
    call Call_001_4c0a                            ; $43e5: $cd $0a $4c
    call Call_000_05b6                            ; $43e8: $cd $b6 $05
    ld b, $03                                     ; $43eb: $06 $03
    ld hl, $4e80                                  ; $43ed: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $43f0: $cd $de $05
    ld b, $03                                     ; $43f3: $06 $03
    ld hl, $4ee9                                  ; $43f5: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $43f8: $cd $de $05
    xor a                                         ; $43fb: $af
    call Call_001_49ee                            ; $43fc: $cd $ee $49
    call Call_001_4dde                            ; $43ff: $cd $de $4d
    call Call_001_4a4e                            ; $4402: $cd $4e $4a
    call Call_000_04a2                            ; $4405: $cd $a2 $04
    call Call_001_4b5a                            ; $4408: $cd $5a $4b
    ld hl, StatePhase_Current                     ; $440b: $21 $35 $d6
    inc [hl]                                      ; $440e: $34
    ret                                           ; $440f: $c9


GS04_StatePhase_04_TODO::
    ld a, $43                                     ; $4410: $3e $43
    ld [$c32e], a                                 ; $4412: $ea $2e $c3
    xor a                                         ; $4415: $af
    ld [$c32f], a                                 ; $4416: $ea $2f $c3
    ld [$c330], a                                 ; $4419: $ea $30 $c3
    ld [$c331], a                                 ; $441c: $ea $31 $c3
    ld [$c332], a                                 ; $441f: $ea $32 $c3
    ld [$c333], a                                 ; $4422: $ea $33 $c3
    call Call_000_05a0                            ; $4425: $cd $a0 $05
    call Call_000_05ab                            ; $4428: $cd $ab $05
    ld a, $0b                                     ; $442b: $3e $0b
    ld hl, $5000                                  ; $442d: $21 $00 $50
    ld de, $8000                                  ; $4430: $11 $00 $80
    ld bc, $0300                                  ; $4433: $01 $00 $03
    call BankedTileCopy                           ; $4436: $cd $e4 $04
    ld a, $07                                     ; $4439: $3e $07
    ld hl, $7b00                                  ; $443b: $21 $00 $7b
    ld de, $8300                                  ; $443e: $11 $00 $83
    ld bc, $0200                                  ; $4441: $01 $00 $02
    call BankedTileCopy                           ; $4444: $cd $e4 $04
    ld a, $0a                                     ; $4447: $3e $0a
    ld hl, $6000                                  ; $4449: $21 $00 $60
    ld de, $8800                                  ; $444c: $11 $00 $88
    ld bc, $1000                                  ; $444f: $01 $00 $10
    call BankedTileCopy                           ; $4452: $cd $e4 $04
    call Call_001_49a2                            ; $4455: $cd $a2 $49
    call Call_001_4a80                            ; $4458: $cd $80 $4a
    call Call_001_4c3b                            ; $445b: $cd $3b $4c
    ld a, [$d84c]                                 ; $445e: $fa $4c $d8
    bit 7, a                                      ; $4461: $cb $7f
    jr z, jr_001_4470                             ; $4463: $28 $0b

    ld a, [$d636]                                 ; $4465: $fa $36 $d6
    ld c, a                                       ; $4468: $4f
    ld a, [$d637]                                 ; $4469: $fa $37 $d6
    ld b, a                                       ; $446c: $47
    call Call_001_4c78                            ; $446d: $cd $78 $4c

jr_001_4470:
    call Call_000_05b6                            ; $4470: $cd $b6 $05
    call Call_001_4f54                            ; $4473: $cd $54 $4f
    ld b, $03                                     ; $4476: $06 $03
    ld hl, $4e80                                  ; $4478: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $447b: $cd $de $05
    ld a, [$d805]                                 ; $447e: $fa $05 $d8
    and a                                         ; $4481: $a7
    push af                                       ; $4482: $f5
    jr nz, jr_001_448d                            ; $4483: $20 $08

    ld b, $03                                     ; $4485: $06 $03
    ld hl, $4ee9                                  ; $4487: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $448a: $cd $de $05

jr_001_448d:
    xor a                                         ; $448d: $af
    call Call_001_49ee                            ; $448e: $cd $ee $49
    call Call_001_4a4e                            ; $4491: $cd $4e $4a
    call Call_000_04a2                            ; $4494: $cd $a2 $04
    call Call_001_4b5a                            ; $4497: $cd $5a $4b
    pop af                                        ; $449a: $f1
    jp z, Jump_001_46dc                           ; $449b: $ca $dc $46

    call Call_001_46e4                            ; $449e: $cd $e4 $46
    ld a, [$a065]                                 ; $44a1: $fa $65 $a0
    ld c, a                                       ; $44a4: $4f
    ld b, $00                                     ; $44a5: $06 $00
    ld hl, $a387                                  ; $44a7: $21 $87 $a3
    add hl, bc                                    ; $44aa: $09
    ld a, [hl]                                    ; $44ab: $7e
    cp $03                                        ; $44ac: $fe $03
    jp z, Jump_001_46dc                           ; $44ae: $ca $dc $46

    ld hl, $a38a                                  ; $44b1: $21 $8a $a3
    add hl, bc                                    ; $44b4: $09
    ld a, [hl]                                    ; $44b5: $7e
    cp $40                                        ; $44b6: $fe $40
    jp nz, Jump_001_46dc                          ; $44b8: $c2 $dc $46

    ld hl, $a387                                  ; $44bb: $21 $87 $a3
    add hl, bc                                    ; $44be: $09
    inc [hl]                                      ; $44bf: $34
    ld a, [hl]                                    ; $44c0: $7e
    cp $03                                        ; $44c1: $fe $03
    jp z, Jump_001_45bb                           ; $44c3: $ca $bb $45

    ld hl, $a38a                                  ; $44c6: $21 $8a $a3
    add hl, bc                                    ; $44c9: $09
    xor a                                         ; $44ca: $af
    ld [hl], a                                    ; $44cb: $77
    call Call_000_1b1f                            ; $44cc: $cd $1f $1b
    ld bc, $003c                                  ; $44cf: $01 $3c $00
    call Call_000_05fa                            ; $44d2: $cd $fa $05
    ld a, $05                                     ; $44d5: $3e $05
    call Call_000_03b6                            ; $44d7: $cd $b6 $03
    ld c, $00                                     ; $44da: $0e $00
    ld a, $01                                     ; $44dc: $3e $01
    call Call_000_03b6                            ; $44de: $cd $b6 $03
    call Call_000_0399                            ; $44e1: $cd $99 $03
    ld c, $00                                     ; $44e4: $0e $00
    ld a, $01                                     ; $44e6: $3e $01
    call Call_000_03b6                            ; $44e8: $cd $b6 $03
    call Call_000_05b6                            ; $44eb: $cd $b6 $05
    call Call_001_4b84                            ; $44ee: $cd $84 $4b
    call Call_000_0483                            ; $44f1: $cd $83 $04
    ld b, $01                                     ; $44f4: $06 $01
    ld hl, $4ae4                                  ; $44f6: $21 $e4 $4a
    call SwitchBankToBAndJumpToHL                 ; $44f9: $cd $de $05
    ld a, $7e                                     ; $44fc: $3e $7e
    ld [$cd63], a                                 ; $44fe: $ea $63 $cd
    ld a, $16                                     ; $4501: $3e $16
    ld [$cd64], a                                 ; $4503: $ea $64 $cd
    ld c, $00                                     ; $4506: $0e $00
    ld a, $01                                     ; $4508: $3e $01
    call Call_000_03b6                            ; $450a: $cd $b6 $03
    call Call_000_0399                            ; $450d: $cd $99 $03
    ld c, $07                                     ; $4510: $0e $07
    ld a, $01                                     ; $4512: $3e $01
    call Call_000_03b6                            ; $4514: $cd $b6 $03
    ld a, $2f                                     ; $4517: $3e $2f
    ld [$c336], a                                 ; $4519: $ea $36 $c3
    ld hl, $c337                                  ; $451c: $21 $37 $c3
    set 6, [hl]                                   ; $451f: $cb $f6
    ld hl, rIE                                    ; $4521: $21 $ff $ff
    set 1, [hl]                                   ; $4524: $cb $ce
    ld a, $02                                     ; $4526: $3e $02
    ld [$c338], a                                 ; $4528: $ea $38 $c3
    ld [$c350], a                                 ; $452b: $ea $50 $c3
    call Call_000_04a2                            ; $452e: $cd $a2 $04
    ld b, $01                                     ; $4531: $06 $01
    ld hl, $4bae                                  ; $4533: $21 $ae $4b
    call SwitchBankToBAndJumpToHL                 ; $4536: $cd $de $05
    ld a, $10                                     ; $4539: $3e $10
    ld [$d843], a                                 ; $453b: $ea $43 $d8
    ld [$d82b], a                                 ; $453e: $ea $2b $d8
    ld a, $20                                     ; $4541: $3e $20
    ld [$d844], a                                 ; $4543: $ea $44 $d8
    ld [$d82c], a                                 ; $4546: $ea $2c $d8
    ld a, $90                                     ; $4549: $3e $90
    ld [$d845], a                                 ; $454b: $ea $45 $d8
    ld a, $58                                     ; $454e: $3e $58
    ld [$d846], a                                 ; $4550: $ea $46 $d8
    ld a, $0c                                     ; $4553: $3e $0c
    ld [$d82d], a                                 ; $4555: $ea $2d $d8
    ld a, $41                                     ; $4558: $3e $41
    ld [$d82e], a                                 ; $455a: $ea $2e $d8
    call Call_001_51dd                            ; $455d: $cd $dd $51
    call Call_001_5252                            ; $4560: $cd $52 $52
    xor a                                         ; $4563: $af
    ld [$d636], a                                 ; $4564: $ea $36 $d6
    ld [$d637], a                                 ; $4567: $ea $37 $d6
    ld bc, $003c                                  ; $456a: $01 $3c $00
    call Call_000_05fa                            ; $456d: $cd $fa $05
    ld a, $05                                     ; $4570: $3e $05
    call Call_000_03b6                            ; $4572: $cd $b6 $03
    ld c, $00                                     ; $4575: $0e $00
    ld a, $01                                     ; $4577: $3e $01
    call Call_000_03b6                            ; $4579: $cd $b6 $03
    call Call_000_0399                            ; $457c: $cd $99 $03
    ld c, $00                                     ; $457f: $0e $00
    ld a, $01                                     ; $4581: $3e $01
    call Call_000_03b6                            ; $4583: $cd $b6 $03
    ld b, $01                                     ; $4586: $06 $01
    ld hl, $4bdc                                  ; $4588: $21 $dc $4b
    call SwitchBankToBAndJumpToHL                 ; $458b: $cd $de $05
    call Call_000_0483                            ; $458e: $cd $83 $04
    ld hl, $c337                                  ; $4591: $21 $37 $c3
    res 6, [hl]                                   ; $4594: $cb $b6
    ld hl, rIE                                    ; $4596: $21 $ff $ff
    res 1, [hl]                                   ; $4599: $cb $8e
    xor a                                         ; $459b: $af
    ld [$c338], a                                 ; $459c: $ea $38 $c3
    ld [$c350], a                                 ; $459f: $ea $50 $c3
    ld a, [$a065]                                 ; $45a2: $fa $65 $a0
    ld c, a                                       ; $45a5: $4f
    ld b, $00                                     ; $45a6: $06 $00
    ld hl, $a38d                                  ; $45a8: $21 $8d $a3
    add hl, bc                                    ; $45ab: $09
    inc [hl]                                      ; $45ac: $34
    call Call_001_49c8                            ; $45ad: $cd $c8 $49
    xor a                                         ; $45b0: $af
    ld [StatePhase_Current], a                    ; $45b1: $ea $35 $d6
    ld hl, GameState_Current                      ; $45b4: $21 $34 $d6
    dec [hl]                                      ; $45b7: $35
    jp Jump_000_1b1f                              ; $45b8: $c3 $1f $1b


Jump_001_45bb:
    call Call_000_1b1f                            ; $45bb: $cd $1f $1b
    ld bc, $003c                                  ; $45be: $01 $3c $00
    call Call_000_05fa                            ; $45c1: $cd $fa $05
    ld a, $05                                     ; $45c4: $3e $05
    call Call_000_03b6                            ; $45c6: $cd $b6 $03
    ld c, $00                                     ; $45c9: $0e $00
    ld a, $01                                     ; $45cb: $3e $01
    call Call_000_03b6                            ; $45cd: $cd $b6 $03
    call Call_000_0399                            ; $45d0: $cd $99 $03
    ld c, $00                                     ; $45d3: $0e $00
    ld a, $01                                     ; $45d5: $3e $01
    call Call_000_03b6                            ; $45d7: $cd $b6 $03
    call Call_000_05b6                            ; $45da: $cd $b6 $05
    call Call_001_4b84                            ; $45dd: $cd $84 $4b
    call Call_000_0483                            ; $45e0: $cd $83 $04
    ld b, $01                                     ; $45e3: $06 $01
    ld hl, $4ae4                                  ; $45e5: $21 $e4 $4a
    call SwitchBankToBAndJumpToHL                 ; $45e8: $cd $de $05
    ld a, $7e                                     ; $45eb: $3e $7e
    ld [$cd63], a                                 ; $45ed: $ea $63 $cd
    ld a, $16                                     ; $45f0: $3e $16
    ld [$cd64], a                                 ; $45f2: $ea $64 $cd
    ld c, $00                                     ; $45f5: $0e $00
    ld a, $01                                     ; $45f7: $3e $01
    call Call_000_03b6                            ; $45f9: $cd $b6 $03
    call Call_000_0399                            ; $45fc: $cd $99 $03
    ld c, $06                                     ; $45ff: $0e $06
    ld a, $01                                     ; $4601: $3e $01
    call Call_000_03b6                            ; $4603: $cd $b6 $03
    ld a, $2f                                     ; $4606: $3e $2f
    ld [$c336], a                                 ; $4608: $ea $36 $c3
    ld hl, $c337                                  ; $460b: $21 $37 $c3
    set 6, [hl]                                   ; $460e: $cb $f6
    ld hl, rIE                                    ; $4610: $21 $ff $ff
    set 1, [hl]                                   ; $4613: $cb $ce
    ld a, $02                                     ; $4615: $3e $02
    ld [$c338], a                                 ; $4617: $ea $38 $c3
    ld [$c350], a                                 ; $461a: $ea $50 $c3
    call Call_000_04a2                            ; $461d: $cd $a2 $04
    ld b, $01                                     ; $4620: $06 $01
    ld hl, $4bae                                  ; $4622: $21 $ae $4b
    call SwitchBankToBAndJumpToHL                 ; $4625: $cd $de $05
    ld a, $10                                     ; $4628: $3e $10
    ld [$d843], a                                 ; $462a: $ea $43 $d8
    ld [$d82b], a                                 ; $462d: $ea $2b $d8
    ld a, $20                                     ; $4630: $3e $20
    ld [$d844], a                                 ; $4632: $ea $44 $d8
    ld [$d82c], a                                 ; $4635: $ea $2c $d8
    ld a, $90                                     ; $4638: $3e $90
    ld [$d845], a                                 ; $463a: $ea $45 $d8
    ld a, $58                                     ; $463d: $3e $58
    ld [$d846], a                                 ; $463f: $ea $46 $d8
    ld a, $8e                                     ; $4642: $3e $8e
    ld [$d82d], a                                 ; $4644: $ea $2d $d8
    ld a, $41                                     ; $4647: $3e $41
    ld [$d82e], a                                 ; $4649: $ea $2e $d8
    call Call_001_51dd                            ; $464c: $cd $dd $51
    call Call_001_5252                            ; $464f: $cd $52 $52
    call Call_001_51e4                            ; $4652: $cd $e4 $51
    ld a, $08                                     ; $4655: $3e $08
    ld [$d82d], a                                 ; $4657: $ea $2d $d8
    ld a, $42                                     ; $465a: $3e $42
    ld [$d82e], a                                 ; $465c: $ea $2e $d8
    call Call_001_51dd                            ; $465f: $cd $dd $51
    call Call_001_5252                            ; $4662: $cd $52 $52
    call Call_001_51e4                            ; $4665: $cd $e4 $51
    ld a, $58                                     ; $4668: $3e $58
    ld [$d82d], a                                 ; $466a: $ea $2d $d8
    ld a, $42                                     ; $466d: $3e $42
    ld [$d82e], a                                 ; $466f: $ea $2e $d8
    call Call_001_51dd                            ; $4672: $cd $dd $51
    call Call_001_5252                            ; $4675: $cd $52 $52
    call Call_001_51e4                            ; $4678: $cd $e4 $51
    ld a, $3a                                     ; $467b: $3e $3a
    ld [$d82d], a                                 ; $467d: $ea $2d $d8
    ld a, $43                                     ; $4680: $3e $43
    ld [$d82e], a                                 ; $4682: $ea $2e $d8
    call Call_001_51dd                            ; $4685: $cd $dd $51
    call Call_001_5252                            ; $4688: $cd $52 $52
    ld bc, $003c                                  ; $468b: $01 $3c $00
    call Call_000_05fa                            ; $468e: $cd $fa $05
    ld a, $05                                     ; $4691: $3e $05
    call Call_000_03b6                            ; $4693: $cd $b6 $03
    ld c, $00                                     ; $4696: $0e $00
    ld a, $01                                     ; $4698: $3e $01
    call Call_000_03b6                            ; $469a: $cd $b6 $03
    call Call_000_0399                            ; $469d: $cd $99 $03
    ld c, $00                                     ; $46a0: $0e $00
    ld a, $01                                     ; $46a2: $3e $01
    call Call_000_03b6                            ; $46a4: $cd $b6 $03
    ld b, $01                                     ; $46a7: $06 $01
    ld hl, $4bdc                                  ; $46a9: $21 $dc $4b
    call SwitchBankToBAndJumpToHL                 ; $46ac: $cd $de $05
    call Call_000_0483                            ; $46af: $cd $83 $04
    ld hl, $c337                                  ; $46b2: $21 $37 $c3
    res 6, [hl]                                   ; $46b5: $cb $b6
    ld hl, rIE                                    ; $46b7: $21 $ff $ff
    res 1, [hl]                                   ; $46ba: $cb $8e
    xor a                                         ; $46bc: $af
    ld [$c338], a                                 ; $46bd: $ea $38 $c3
    ld [$c350], a                                 ; $46c0: $ea $50 $c3
    ld a, [$a065]                                 ; $46c3: $fa $65 $a0
    ld c, a                                       ; $46c6: $4f
    ld b, $00                                     ; $46c7: $06 $00
    ld hl, $a38d                                  ; $46c9: $21 $8d $a3
    add hl, bc                                    ; $46cc: $09
    inc [hl]                                      ; $46cd: $34
    call Call_001_49c8                            ; $46ce: $cd $c8 $49
    xor a                                         ; $46d1: $af
    ld [StatePhase_Current], a                    ; $46d2: $ea $35 $d6
    ld hl, GameState_Current                      ; $46d5: $21 $34 $d6
    dec [hl]                                      ; $46d8: $35
    jp Jump_000_1b1f                              ; $46d9: $c3 $1f $1b


Jump_001_46dc:
    ld a, $01                                     ; $46dc: $3e $01
    ld [StatePhase_Current], a                    ; $46de: $ea $35 $d6
    jp Jump_000_1b1f                              ; $46e1: $c3 $1f $1b


Call_001_46e4:
    ld a, [$a065]                                 ; $46e4: $fa $65 $a0
    ld c, a                                       ; $46e7: $4f
    ld b, $00                                     ; $46e8: $06 $00
    ld hl, $a38d                                  ; $46ea: $21 $8d $a3
    add hl, bc                                    ; $46ed: $09
    ld a, [hl]                                    ; $46ee: $7e
    ld hl, $51c8                                  ; $46ef: $21 $c8 $51
    add hl, bc                                    ; $46f2: $09
    ld c, [hl]                                    ; $46f3: $4e
    add hl, bc                                    ; $46f4: $09
    sla a                                         ; $46f5: $cb $27
    ld c, a                                       ; $46f7: $4f
    add hl, bc                                    ; $46f8: $09
    ld a, [hl+]                                   ; $46f9: $2a
    ld h, [hl]                                    ; $46fa: $66
    ld l, a                                       ; $46fb: $6f
    ld a, [$d637]                                 ; $46fc: $fa $37 $d6
    sla a                                         ; $46ff: $cb $27
    sla a                                         ; $4701: $cb $27
    sla a                                         ; $4703: $cb $27
    ld c, a                                       ; $4705: $4f
    ld a, [$d636]                                 ; $4706: $fa $36 $d6
    or c                                          ; $4709: $b1
    ld c, a                                       ; $470a: $4f
    ld b, $00                                     ; $470b: $06 $00
    add hl, bc                                    ; $470d: $09
    ld a, [hl]                                    ; $470e: $7e
    ld hl, $d84c                                  ; $470f: $21 $4c $d8
    xor [hl]                                      ; $4712: $ae
    bit 7, a                                      ; $4713: $cb $7f
    jr z, jr_001_474f                             ; $4715: $28 $38

    ld c, $08                                     ; $4717: $0e $08
    ld a, $02                                     ; $4719: $3e $02
    call Call_000_03b6                            ; $471b: $cd $b6 $03
    ld c, $08                                     ; $471e: $0e $08

jr_001_4720:
    push bc                                       ; $4720: $c5
    call Call_000_05b6                            ; $4721: $cd $b6 $05
    ld a, $01                                     ; $4724: $3e $01
    call Call_001_49ee                            ; $4726: $cd $ee $49
    call Call_001_4dde                            ; $4729: $cd $de $4d
    rst RST_08                                    ; $472c: $cf
    pop bc                                        ; $472d: $c1
    dec c                                         ; $472e: $0d
    jr nz, jr_001_4720                            ; $472f: $20 $ef

    ld a, [$d636]                                 ; $4731: $fa $36 $d6
    ld c, a                                       ; $4734: $4f
    ld a, [$d637]                                 ; $4735: $fa $37 $d6
    ld b, a                                       ; $4738: $47
    call Call_001_4c78                            ; $4739: $cd $78 $4c
    ld c, $08                                     ; $473c: $0e $08

jr_001_473e:
    push bc                                       ; $473e: $c5
    call Call_000_05b6                            ; $473f: $cd $b6 $05
    ld a, $02                                     ; $4742: $3e $02
    call Call_001_49ee                            ; $4744: $cd $ee $49
    call Call_001_4dde                            ; $4747: $cd $de $4d
    rst RST_08                                    ; $474a: $cf
    pop bc                                        ; $474b: $c1
    dec c                                         ; $474c: $0d
    jr nz, jr_001_473e                            ; $474d: $20 $ef

jr_001_474f:
    rst RST_08                                    ; $474f: $cf
    ld bc, $005a                                  ; $4750: $01 $5a $00

jr_001_4753:
    push bc                                       ; $4753: $c5
    call Call_000_05b6                            ; $4754: $cd $b6 $05
    ld b, $03                                     ; $4757: $06 $03
    ld hl, $4ea6                                  ; $4759: $21 $a6 $4e
    call SwitchBankToBAndJumpToHL                 ; $475c: $cd $de $05
    ld a, [$c33a]                                 ; $475f: $fa $3a $c3
    bit 2, a                                      ; $4762: $cb $57
    jr nz, jr_001_476a                            ; $4764: $20 $04

    xor a                                         ; $4766: $af
    call Call_001_49ee                            ; $4767: $cd $ee $49

jr_001_476a:
    call Call_001_4dde                            ; $476a: $cd $de $4d
    rst RST_08                                    ; $476d: $cf
    pop bc                                        ; $476e: $c1
    ld a, [$c31e]                                 ; $476f: $fa $1e $c3
    and a                                         ; $4772: $a7
    jr nz, jr_001_477a                            ; $4773: $20 $05

    dec bc                                        ; $4775: $0b
    ld a, c                                       ; $4776: $79
    or b                                          ; $4777: $b0
    jr nz, jr_001_4753                            ; $4778: $20 $d9

jr_001_477a:
    jp Jump_001_50fe                              ; $477a: $c3 $fe $50


GS04_StatePhase_01_TODO::
    ld b, $03                                     ; $477d: $06 $03
    ld hl, $4ee9                                  ; $477f: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $4782: $cd $de $05
    xor a                                         ; $4785: $af
    call Call_001_49ee                            ; $4786: $cd $ee $49
    call Call_001_4dde                            ; $4789: $cd $de $4d
    call Call_001_4a09                            ; $478c: $cd $09 $4a
    ld a, [$c31e]                                 ; $478f: $fa $1e $c3
    and $09                                       ; $4792: $e6 $09
    jr z, jr_001_47a2                             ; $4794: $28 $0c

    ld c, $03                                     ; $4796: $0e $03
    ld a, $02                                     ; $4798: $3e $02
    call Call_000_03b6                            ; $479a: $cd $b6 $03
    ld hl, StatePhase_Current                     ; $479d: $21 $35 $d6
    inc [hl]                                      ; $47a0: $34
    ret                                           ; $47a1: $c9


jr_001_47a2:
    ld a, [$c31e]                                 ; $47a2: $fa $1e $c3
    and $02                                       ; $47a5: $e6 $02
    jr z, jr_001_47b6                             ; $47a7: $28 $0d

    ld c, $04                                     ; $47a9: $0e $04
    ld a, $02                                     ; $47ab: $3e $02
    call Call_000_03b6                            ; $47ad: $cd $b6 $03
    ld a, $03                                     ; $47b0: $3e $03
    ld [StatePhase_Current], a                    ; $47b2: $ea $35 $d6
    ret                                           ; $47b5: $c9


jr_001_47b6:
    ret                                           ; $47b6: $c9


GS04_StatePhase_05_TODO::
    ld bc, $003c                                  ; $47b7: $01 $3c $00
    call Call_000_05fa                            ; $47ba: $cd $fa $05
    ld a, $05                                     ; $47bd: $3e $05
    call Call_000_03b6                            ; $47bf: $cd $b6 $03
    ld c, $00                                     ; $47c2: $0e $00
    ld a, $01                                     ; $47c4: $3e $01
    call Call_000_03b6                            ; $47c6: $cd $b6 $03
    call Call_000_0399                            ; $47c9: $cd $99 $03
    ld c, $00                                     ; $47cc: $0e $00
    ld a, $01                                     ; $47ce: $3e $01
    call Call_000_03b6                            ; $47d0: $cd $b6 $03
    call Call_001_4b84                            ; $47d3: $cd $84 $4b
    call Call_000_0483                            ; $47d6: $cd $83 $04
    call Call_001_49c8                            ; $47d9: $cd $c8 $49
    xor a                                         ; $47dc: $af
    ld [$d80b], a                                 ; $47dd: $ea $0b $d8
    ld [$d80c], a                                 ; $47e0: $ea $0c $d8
    ld [$d809], a                                 ; $47e3: $ea $09 $d8
    ld a, $03                                     ; $47e6: $3e $03
    ld [$d80a], a                                 ; $47e8: $ea $0a $d8
    xor a                                         ; $47eb: $af
    ld [$d833], a                                 ; $47ec: $ea $33 $d8
    ld a, $01                                     ; $47ef: $3e $01
    ld [$d805], a                                 ; $47f1: $ea $05 $d8
    call Call_001_49a2                            ; $47f4: $cd $a2 $49
    call Call_001_504b                            ; $47f7: $cd $4b $50
    call Call_001_4cbc                            ; $47fa: $cd $bc $4c
    call Call_001_4cef                            ; $47fd: $cd $ef $4c
    call Call_000_1b1f                            ; $4800: $cd $1f $1b
    ld a, $04                                     ; $4803: $3e $04
    ld [StatePhase_Current], a                    ; $4805: $ea $35 $d6
    ret                                           ; $4808: $c9


GS04_StatePhase_02_TODO::
    ld bc, $003c                                  ; $4809: $01 $3c $00
    call Call_000_05fa                            ; $480c: $cd $fa $05
    ld a, $05                                     ; $480f: $3e $05
    call Call_000_03b6                            ; $4811: $cd $b6 $03
    ld c, $00                                     ; $4814: $0e $00
    ld a, $01                                     ; $4816: $3e $01
    call Call_000_03b6                            ; $4818: $cd $b6 $03
    call Call_000_0399                            ; $481b: $cd $99 $03
    ld c, $00                                     ; $481e: $0e $00
    ld a, $01                                     ; $4820: $3e $01
    call Call_000_03b6                            ; $4822: $cd $b6 $03
    call Call_001_4b84                            ; $4825: $cd $84 $4b
    call Call_000_0483                            ; $4828: $cd $83 $04
    call Call_001_49c8                            ; $482b: $cd $c8 $49
    call Call_001_504b                            ; $482e: $cd $4b $50
    call Call_001_4cbc                            ; $4831: $cd $bc $4c
    ld a, [$a065]                                 ; $4834: $fa $65 $a0
    ld c, a                                       ; $4837: $4f
    ld b, $00                                     ; $4838: $06 $00
    ld hl, $a38d                                  ; $483a: $21 $8d $a3
    add hl, bc                                    ; $483d: $09
    ld a, [hl]                                    ; $483e: $7e
    sla a                                         ; $483f: $cb $27
    ld c, a                                       ; $4841: $4f
    ld hl, $486e                                  ; $4842: $21 $6e $48
    add hl, bc                                    ; $4845: $09
    ld c, [hl]                                    ; $4846: $4e
    inc hl                                        ; $4847: $23
    ld b, [hl]                                    ; $4848: $46
    add hl, bc                                    ; $4849: $09
    ld a, [$d636]                                 ; $484a: $fa $36 $d6
    sla a                                         ; $484d: $cb $27
    ld c, a                                       ; $484f: $4f
    ld a, [$d637]                                 ; $4850: $fa $37 $d6
    swap a                                        ; $4853: $cb $37
    or c                                          ; $4855: $b1
    ld c, a                                       ; $4856: $4f
    ld b, $00                                     ; $4857: $06 $00
    add hl, bc                                    ; $4859: $09
    ld a, [hl+]                                   ; $485a: $2a
    ld [$d807], a                                 ; $485b: $ea $07 $d8
    ld a, [hl]                                    ; $485e: $7e
    ld [$d808], a                                 ; $485f: $ea $08 $d8
    xor a                                         ; $4862: $af
    ld [StatePhase_Current], a                    ; $4863: $ea $35 $d6
    ld a, $0a                                     ; $4866: $3e $0a
    ld [GameState_Current], a                     ; $4868: $ea $34 $d6
    jp Jump_000_1b1f                              ; $486b: $c3 $1f $1b


    inc bc                                        ; $486e: $03
    nop                                           ; $486f: $00
    add c                                         ; $4870: $81
    nop                                           ; $4871: $00
    ld b, c                                       ; $4872: $41
    nop                                           ; $4873: $00
    ld b, d                                       ; $4874: $42
    nop                                           ; $4875: $00
    ld b, e                                       ; $4876: $43
    nop                                           ; $4877: $00
    ld b, h                                       ; $4878: $44
    nop                                           ; $4879: $00
    ld b, l                                       ; $487a: $45
    nop                                           ; $487b: $00
    ld b, [hl]                                    ; $487c: $46
    nop                                           ; $487d: $00
    ld b, a                                       ; $487e: $47
    nop                                           ; $487f: $00
    ld c, b                                       ; $4880: $48
    nop                                           ; $4881: $00
    ld c, c                                       ; $4882: $49
    nop                                           ; $4883: $00
    ld c, d                                       ; $4884: $4a
    nop                                           ; $4885: $00
    ld c, e                                       ; $4886: $4b
    nop                                           ; $4887: $00
    ld c, h                                       ; $4888: $4c
    nop                                           ; $4889: $00
    ld c, l                                       ; $488a: $4d
    nop                                           ; $488b: $00
    ld c, [hl]                                    ; $488c: $4e
    nop                                           ; $488d: $00
    ld c, a                                       ; $488e: $4f
    nop                                           ; $488f: $00
    ld d, b                                       ; $4890: $50
    nop                                           ; $4891: $00
    ld d, c                                       ; $4892: $51
    nop                                           ; $4893: $00
    ld d, d                                       ; $4894: $52
    nop                                           ; $4895: $00
    ld d, e                                       ; $4896: $53
    nop                                           ; $4897: $00
    ld d, h                                       ; $4898: $54
    nop                                           ; $4899: $00
    ld d, l                                       ; $489a: $55
    nop                                           ; $489b: $00
    ld d, [hl]                                    ; $489c: $56
    nop                                           ; $489d: $00
    ld d, a                                       ; $489e: $57
    nop                                           ; $489f: $00
    ld e, b                                       ; $48a0: $58
    nop                                           ; $48a1: $00
    ld e, c                                       ; $48a2: $59
    nop                                           ; $48a3: $00
    ld e, d                                       ; $48a4: $5a
    nop                                           ; $48a5: $00
    ld e, e                                       ; $48a6: $5b
    nop                                           ; $48a7: $00
    ld e, h                                       ; $48a8: $5c
    nop                                           ; $48a9: $00
    ld e, l                                       ; $48aa: $5d
    nop                                           ; $48ab: $00
    ld e, [hl]                                    ; $48ac: $5e
    nop                                           ; $48ad: $00
    ld e, a                                       ; $48ae: $5f
    nop                                           ; $48af: $00
    ld h, b                                       ; $48b0: $60
    nop                                           ; $48b1: $00
    ld h, c                                       ; $48b2: $61
    nop                                           ; $48b3: $00
    ld h, d                                       ; $48b4: $62
    nop                                           ; $48b5: $00
    ld h, e                                       ; $48b6: $63
    nop                                           ; $48b7: $00
    ld h, h                                       ; $48b8: $64
    nop                                           ; $48b9: $00
    ld h, l                                       ; $48ba: $65
    nop                                           ; $48bb: $00
    ld h, [hl]                                    ; $48bc: $66
    nop                                           ; $48bd: $00
    ld h, a                                       ; $48be: $67
    nop                                           ; $48bf: $00
    ld l, b                                       ; $48c0: $68
    nop                                           ; $48c1: $00
    ld l, c                                       ; $48c2: $69
    nop                                           ; $48c3: $00
    ld l, d                                       ; $48c4: $6a
    nop                                           ; $48c5: $00
    ld l, e                                       ; $48c6: $6b
    nop                                           ; $48c7: $00
    ld l, h                                       ; $48c8: $6c
    nop                                           ; $48c9: $00
    ld l, l                                       ; $48ca: $6d
    nop                                           ; $48cb: $00
    ld l, [hl]                                    ; $48cc: $6e
    nop                                           ; $48cd: $00
    ld l, a                                       ; $48ce: $6f
    nop                                           ; $48cf: $00
    ld [hl], b                                    ; $48d0: $70
    nop                                           ; $48d1: $00
    ld [hl], c                                    ; $48d2: $71
    nop                                           ; $48d3: $00
    ld [hl], d                                    ; $48d4: $72
    nop                                           ; $48d5: $00
    ld [hl], e                                    ; $48d6: $73
    nop                                           ; $48d7: $00
    ld [hl], h                                    ; $48d8: $74
    nop                                           ; $48d9: $00
    ld [hl], l                                    ; $48da: $75
    nop                                           ; $48db: $00
    halt                                          ; $48dc: $76
    nop                                           ; $48dd: $00
    ld [hl], a                                    ; $48de: $77
    nop                                           ; $48df: $00
    ld a, b                                       ; $48e0: $78
    nop                                           ; $48e1: $00
    ld a, c                                       ; $48e2: $79
    nop                                           ; $48e3: $00
    ld a, d                                       ; $48e4: $7a
    nop                                           ; $48e5: $00
    ld a, e                                       ; $48e6: $7b
    nop                                           ; $48e7: $00
    ld a, h                                       ; $48e8: $7c
    nop                                           ; $48e9: $00
    ld a, l                                       ; $48ea: $7d
    nop                                           ; $48eb: $00
    ld a, [hl]                                    ; $48ec: $7e
    nop                                           ; $48ed: $00
    ld a, a                                       ; $48ee: $7f
    nop                                           ; $48ef: $00
    add b                                         ; $48f0: $80
    nop                                           ; $48f1: $00
    add c                                         ; $48f2: $81
    nop                                           ; $48f3: $00
    add d                                         ; $48f4: $82
    nop                                           ; $48f5: $00
    add e                                         ; $48f6: $83
    nop                                           ; $48f7: $00
    add h                                         ; $48f8: $84
    nop                                           ; $48f9: $00
    add l                                         ; $48fa: $85
    nop                                           ; $48fb: $00
    add [hl]                                      ; $48fc: $86
    nop                                           ; $48fd: $00
    add a                                         ; $48fe: $87
    nop                                           ; $48ff: $00
    adc b                                         ; $4900: $88
    nop                                           ; $4901: $00
    adc c                                         ; $4902: $89
    nop                                           ; $4903: $00
    adc d                                         ; $4904: $8a
    nop                                           ; $4905: $00
    adc e                                         ; $4906: $8b
    nop                                           ; $4907: $00
    adc h                                         ; $4908: $8c
    nop                                           ; $4909: $00
    adc l                                         ; $490a: $8d
    nop                                           ; $490b: $00
    adc [hl]                                      ; $490c: $8e
    nop                                           ; $490d: $00
    adc a                                         ; $490e: $8f
    nop                                           ; $490f: $00
    sub b                                         ; $4910: $90
    nop                                           ; $4911: $00
    sub c                                         ; $4912: $91
    nop                                           ; $4913: $00
    sub d                                         ; $4914: $92
    nop                                           ; $4915: $00
    sub e                                         ; $4916: $93
    nop                                           ; $4917: $00
    sub h                                         ; $4918: $94
    nop                                           ; $4919: $00
    sub l                                         ; $491a: $95
    nop                                           ; $491b: $00
    sub [hl]                                      ; $491c: $96
    nop                                           ; $491d: $00
    sub a                                         ; $491e: $97
    nop                                           ; $491f: $00
    sbc b                                         ; $4920: $98
    nop                                           ; $4921: $00
    sbc c                                         ; $4922: $99
    nop                                           ; $4923: $00
    sbc d                                         ; $4924: $9a
    nop                                           ; $4925: $00
    sbc e                                         ; $4926: $9b
    nop                                           ; $4927: $00
    sbc h                                         ; $4928: $9c
    nop                                           ; $4929: $00
    sbc l                                         ; $492a: $9d
    nop                                           ; $492b: $00
    sbc [hl]                                      ; $492c: $9e
    nop                                           ; $492d: $00
    sbc a                                         ; $492e: $9f
    nop                                           ; $492f: $00
    and b                                         ; $4930: $a0
    nop                                           ; $4931: $00
    and c                                         ; $4932: $a1
    nop                                           ; $4933: $00
    and d                                         ; $4934: $a2
    nop                                           ; $4935: $00
    and e                                         ; $4936: $a3
    nop                                           ; $4937: $00
    and h                                         ; $4938: $a4
    nop                                           ; $4939: $00
    and l                                         ; $493a: $a5
    nop                                           ; $493b: $00
    and [hl]                                      ; $493c: $a6
    nop                                           ; $493d: $00
    and a                                         ; $493e: $a7
    nop                                           ; $493f: $00
    xor b                                         ; $4940: $a8
    nop                                           ; $4941: $00
    xor c                                         ; $4942: $a9
    nop                                           ; $4943: $00
    xor d                                         ; $4944: $aa
    nop                                           ; $4945: $00
    xor e                                         ; $4946: $ab
    nop                                           ; $4947: $00
    xor h                                         ; $4948: $ac
    nop                                           ; $4949: $00
    xor l                                         ; $494a: $ad
    nop                                           ; $494b: $00
    xor [hl]                                      ; $494c: $ae
    nop                                           ; $494d: $00
    xor a                                         ; $494e: $af
    nop                                           ; $494f: $00
    or b                                          ; $4950: $b0
    nop                                           ; $4951: $00
    or c                                          ; $4952: $b1
    nop                                           ; $4953: $00
    or d                                          ; $4954: $b2
    nop                                           ; $4955: $00
    or e                                          ; $4956: $b3
    nop                                           ; $4957: $00
    or h                                          ; $4958: $b4
    nop                                           ; $4959: $00
    or l                                          ; $495a: $b5
    nop                                           ; $495b: $00
    or [hl]                                       ; $495c: $b6
    nop                                           ; $495d: $00
    or a                                          ; $495e: $b7
    nop                                           ; $495f: $00
    cp b                                          ; $4960: $b8
    nop                                           ; $4961: $00
    cp c                                          ; $4962: $b9
    nop                                           ; $4963: $00
    cp d                                          ; $4964: $ba
    nop                                           ; $4965: $00
    cp e                                          ; $4966: $bb
    nop                                           ; $4967: $00
    cp h                                          ; $4968: $bc
    nop                                           ; $4969: $00
    cp l                                          ; $496a: $bd
    nop                                           ; $496b: $00
    cp [hl]                                       ; $496c: $be
    nop                                           ; $496d: $00
    cp a                                          ; $496e: $bf
    nop                                           ; $496f: $00
    ret nz                                        ; $4970: $c0

    nop                                           ; $4971: $00

GS04_StatePhase_03_TODO::
    ld bc, $003c                                  ; $4972: $01 $3c $00
    call Call_000_05fa                            ; $4975: $cd $fa $05
    ld a, $05                                     ; $4978: $3e $05
    call Call_000_03b6                            ; $497a: $cd $b6 $03
    ld c, $00                                     ; $497d: $0e $00
    ld a, $01                                     ; $497f: $3e $01
    call Call_000_03b6                            ; $4981: $cd $b6 $03
    call Call_000_0399                            ; $4984: $cd $99 $03
    ld c, $00                                     ; $4987: $0e $00
    ld a, $01                                     ; $4989: $3e $01
    call Call_000_03b6                            ; $498b: $cd $b6 $03
    call Call_001_4b84                            ; $498e: $cd $84 $4b
    call Call_000_0483                            ; $4991: $cd $83 $04
    call Call_001_49c8                            ; $4994: $cd $c8 $49
    xor a                                         ; $4997: $af
    ld [StatePhase_Current], a                    ; $4998: $ea $35 $d6
    ld hl, GameState_Current                      ; $499b: $21 $34 $d6
    dec [hl]                                      ; $499e: $35
    jp Jump_000_1b1f                              ; $499f: $c3 $1f $1b


Call_001_49a2:
    ld a, [$a065]                                 ; $49a2: $fa $65 $a0
    ld c, a                                       ; $49a5: $4f
    ld b, $00                                     ; $49a6: $06 $00
    ld hl, $a38d                                  ; $49a8: $21 $8d $a3
    add hl, bc                                    ; $49ab: $09
    ld a, [$a065]                                 ; $49ac: $fa $65 $a0
    ld c, a                                       ; $49af: $4f
    sla a                                         ; $49b0: $cb $27
    add c                                         ; $49b2: $81
    add [hl]                                      ; $49b3: $86
    ld c, a                                       ; $49b4: $4f
    ld b, $00                                     ; $49b5: $06 $00
    ld hl, $a390                                  ; $49b7: $21 $90 $a3
    add hl, bc                                    ; $49ba: $09
    ld a, [hl]                                    ; $49bb: $7e
    ld [$d636], a                                 ; $49bc: $ea $36 $d6
    ld hl, $a399                                  ; $49bf: $21 $99 $a3
    add hl, bc                                    ; $49c2: $09
    ld a, [hl]                                    ; $49c3: $7e
    ld [$d637], a                                 ; $49c4: $ea $37 $d6
    ret                                           ; $49c7: $c9


Call_001_49c8:
    ld a, [$a065]                                 ; $49c8: $fa $65 $a0
    ld c, a                                       ; $49cb: $4f
    ld b, $00                                     ; $49cc: $06 $00
    ld hl, $a38d                                  ; $49ce: $21 $8d $a3
    add hl, bc                                    ; $49d1: $09
    ld a, [$a065]                                 ; $49d2: $fa $65 $a0
    ld c, a                                       ; $49d5: $4f
    sla a                                         ; $49d6: $cb $27
    add c                                         ; $49d8: $81
    add [hl]                                      ; $49d9: $86
    ld c, a                                       ; $49da: $4f
    ld b, $00                                     ; $49db: $06 $00
    ld hl, $a390                                  ; $49dd: $21 $90 $a3
    add hl, bc                                    ; $49e0: $09
    ld a, [$d636]                                 ; $49e1: $fa $36 $d6
    ld [hl], a                                    ; $49e4: $77
    ld hl, $a399                                  ; $49e5: $21 $99 $a3
    add hl, bc                                    ; $49e8: $09
    ld a, [$d637]                                 ; $49e9: $fa $37 $d6
    ld [hl], a                                    ; $49ec: $77
    ret                                           ; $49ed: $c9


Call_001_49ee:
    push af                                       ; $49ee: $f5
    ld a, [$d636]                                 ; $49ef: $fa $36 $d6
    swap a                                        ; $49f2: $cb $37
    add $20                                       ; $49f4: $c6 $20
    ld b, a                                       ; $49f6: $47
    ld a, [$d637]                                 ; $49f7: $fa $37 $d6
    sla a                                         ; $49fa: $cb $27
    sla a                                         ; $49fc: $cb $27
    sla a                                         ; $49fe: $cb $27
    add $32                                       ; $4a00: $c6 $32
    ld c, a                                       ; $4a02: $4f
    pop af                                        ; $4a03: $f1
    add $60                                       ; $4a04: $c6 $60
    jp Jump_000_20ce                              ; $4a06: $c3 $ce $20


Call_001_4a09:
    ld a, [$c322]                                 ; $4a09: $fa $22 $c3
    and $f0                                       ; $4a0c: $e6 $f0
    ret z                                         ; $4a0e: $c8

    ld c, $0a                                     ; $4a0f: $0e $0a
    ld a, $02                                     ; $4a11: $3e $02
    call Call_000_03b6                            ; $4a13: $cd $b6 $03
    ld hl, $c322                                  ; $4a16: $21 $22 $c3
    bit 5, [hl]                                   ; $4a19: $cb $6e
    jr z, jr_001_4a26                             ; $4a1b: $28 $09

    ld a, [$d636]                                 ; $4a1d: $fa $36 $d6
    dec a                                         ; $4a20: $3d
    and $07                                       ; $4a21: $e6 $07
    ld [$d636], a                                 ; $4a23: $ea $36 $d6

jr_001_4a26:
    bit 4, [hl]                                   ; $4a26: $cb $66
    jr z, jr_001_4a33                             ; $4a28: $28 $09

    ld a, [$d636]                                 ; $4a2a: $fa $36 $d6
    inc a                                         ; $4a2d: $3c
    and $07                                       ; $4a2e: $e6 $07
    ld [$d636], a                                 ; $4a30: $ea $36 $d6

jr_001_4a33:
    bit 6, [hl]                                   ; $4a33: $cb $76
    jr z, jr_001_4a40                             ; $4a35: $28 $09

    ld a, [$d637]                                 ; $4a37: $fa $37 $d6
    dec a                                         ; $4a3a: $3d
    and $07                                       ; $4a3b: $e6 $07
    ld [$d637], a                                 ; $4a3d: $ea $37 $d6

jr_001_4a40:
    bit 7, [hl]                                   ; $4a40: $cb $7e
    jr z, jr_001_4a4d                             ; $4a42: $28 $09

    ld a, [$d637]                                 ; $4a44: $fa $37 $d6
    inc a                                         ; $4a47: $3c
    and $07                                       ; $4a48: $e6 $07
    ld [$d637], a                                 ; $4a4a: $ea $37 $d6

jr_001_4a4d:
    ret                                           ; $4a4d: $c9


Call_001_4a4e:
    ld a, [$a065]                                 ; $4a4e: $fa $65 $a0
    ld c, a                                       ; $4a51: $4f
    ld b, $00                                     ; $4a52: $06 $00
    ld hl, $a38d                                  ; $4a54: $21 $8d $a3
    add hl, bc                                    ; $4a57: $09
    ld a, [hl]                                    ; $4a58: $7e
    and a                                         ; $4a59: $a7
    jr nz, jr_001_4a6e                            ; $4a5a: $20 $12

    ld c, $00                                     ; $4a5c: $0e $00
    ld a, $01                                     ; $4a5e: $3e $01
    call Call_000_03b6                            ; $4a60: $cd $b6 $03
    call Call_000_0399                            ; $4a63: $cd $99 $03
    ld c, $04                                     ; $4a66: $0e $04
    ld a, $01                                     ; $4a68: $3e $01
    call Call_000_03b6                            ; $4a6a: $cd $b6 $03
    ret                                           ; $4a6d: $c9


jr_001_4a6e:
    ld c, $00                                     ; $4a6e: $0e $00
    ld a, $01                                     ; $4a70: $3e $01
    call Call_000_03b6                            ; $4a72: $cd $b6 $03
    call Call_000_0399                            ; $4a75: $cd $99 $03
    ld c, $10                                     ; $4a78: $0e $10
    ld a, $01                                     ; $4a7a: $3e $01
    call Call_000_03b6                            ; $4a7c: $cd $b6 $03
    ret                                           ; $4a7f: $c9


Call_001_4a80:
    ld a, [$a065]                                 ; $4a80: $fa $65 $a0
    ld c, a                                       ; $4a83: $4f
    ld b, $00                                     ; $4a84: $06 $00
    ld hl, $a38d                                  ; $4a86: $21 $8d $a3
    add hl, bc                                    ; $4a89: $09
    ld a, [hl]                                    ; $4a8a: $7e
    and a                                         ; $4a8b: $a7
    jr nz, jr_001_4ab9                            ; $4a8c: $20 $2b

    ld a, $0a                                     ; $4a8e: $3e $0a
    ld hl, $7000                                  ; $4a90: $21 $00 $70
    ld de, $9300                                  ; $4a93: $11 $00 $93
    ld bc, $0500                                  ; $4a96: $01 $00 $05
    call BankedTileCopy                           ; $4a99: $cd $e4 $04
    ld a, $0a                                     ; $4a9c: $3e $0a
    ld hl, $7500                                  ; $4a9e: $21 $00 $75
    ld de, $8800                                  ; $4aa1: $11 $00 $88
    ld bc, $0100                                  ; $4aa4: $01 $00 $01
    call BankedTileCopy                           ; $4aa7: $cd $e4 $04
    ld a, $0c                                     ; $4aaa: $3e $0c
    ld hl, $7000                                  ; $4aac: $21 $00 $70
    ld de, $9800                                  ; $4aaf: $11 $00 $98
    ld bc, $0400                                  ; $4ab2: $01 $00 $04
    call BankedTileCopy                           ; $4ab5: $cd $e4 $04
    ret                                           ; $4ab8: $c9


jr_001_4ab9:
    ld a, $0a                                     ; $4ab9: $3e $0a
    ld hl, $7600                                  ; $4abb: $21 $00 $76
    ld de, $9300                                  ; $4abe: $11 $00 $93
    ld bc, $0500                                  ; $4ac1: $01 $00 $05
    call BankedTileCopy                           ; $4ac4: $cd $e4 $04
    ld a, $0a                                     ; $4ac7: $3e $0a
    ld hl, $7b00                                  ; $4ac9: $21 $00 $7b
    ld de, $8800                                  ; $4acc: $11 $00 $88
    ld bc, $0100                                  ; $4acf: $01 $00 $01
    call BankedTileCopy                           ; $4ad2: $cd $e4 $04
    ld a, $0c                                     ; $4ad5: $3e $0c
    ld hl, $7400                                  ; $4ad7: $21 $00 $74
    ld de, $9800                                  ; $4ada: $11 $00 $98
    ld bc, $0400                                  ; $4add: $01 $00 $04
    call BankedTileCopy                           ; $4ae0: $cd $e4 $04
    ret                                           ; $4ae3: $c9


    ld a, [$a065]                                 ; $4ae4: $fa $65 $a0
    ld c, a                                       ; $4ae7: $4f
    ld b, $00                                     ; $4ae8: $06 $00
    ld hl, $a38d                                  ; $4aea: $21 $8d $a3
    add hl, bc                                    ; $4aed: $09
    ld a, [hl]                                    ; $4aee: $7e
    and a                                         ; $4aef: $a7
    jr nz, jr_001_4b1f                            ; $4af0: $20 $2d

    ld a, $0a                                     ; $4af2: $3e $0a
    ld hl, $7000                                  ; $4af4: $21 $00 $70
    ld de, $9300                                  ; $4af7: $11 $00 $93
    ld bc, $0500                                  ; $4afa: $01 $00 $05
    call BankedTileCopy                           ; $4afd: $cd $e4 $04
    ld a, $0a                                     ; $4b00: $3e $0a
    ld hl, $7500                                  ; $4b02: $21 $00 $75
    ld de, $8800                                  ; $4b05: $11 $00 $88
    ld bc, $0100                                  ; $4b08: $01 $00 $01
    call BankedTileCopy                           ; $4b0b: $cd $e4 $04
    ld a, $04                                     ; $4b0e: $3e $04
    ld hl, $6c00                                  ; $4b10: $21 $00 $6c
    ld de, $9800                                  ; $4b13: $11 $00 $98
    ld bc, $0400                                  ; $4b16: $01 $00 $04
    call BankedTileCopy                           ; $4b19: $cd $e4 $04
    jp Jump_000_05ea                              ; $4b1c: $c3 $ea $05


jr_001_4b1f:
    ld a, $0a                                     ; $4b1f: $3e $0a
    ld hl, $7600                                  ; $4b21: $21 $00 $76
    ld de, $9300                                  ; $4b24: $11 $00 $93
    ld bc, $0500                                  ; $4b27: $01 $00 $05
    call BankedTileCopy                           ; $4b2a: $cd $e4 $04
    ld a, $0a                                     ; $4b2d: $3e $0a
    ld hl, $7b00                                  ; $4b2f: $21 $00 $7b
    ld de, $8800                                  ; $4b32: $11 $00 $88
    ld bc, $0100                                  ; $4b35: $01 $00 $01
    call BankedTileCopy                           ; $4b38: $cd $e4 $04
    ld a, $0a                                     ; $4b3b: $3e $0a
    ld hl, $7c00                                  ; $4b3d: $21 $00 $7c
    ld de, $9100                                  ; $4b40: $11 $00 $91
    ld bc, $0100                                  ; $4b43: $01 $00 $01
    call BankedTileCopy                           ; $4b46: $cd $e4 $04
    ld a, $04                                     ; $4b49: $3e $04
    ld hl, $7000                                  ; $4b4b: $21 $00 $70
    ld de, $9800                                  ; $4b4e: $11 $00 $98
    ld bc, $0400                                  ; $4b51: $01 $00 $04
    call BankedTileCopy                           ; $4b54: $cd $e4 $04
    jp Jump_000_05ea                              ; $4b57: $c3 $ea $05


Call_001_4b5a:
    ld a, [$a065]                                 ; $4b5a: $fa $65 $a0
    ld c, a                                       ; $4b5d: $4f
    ld b, $00                                     ; $4b5e: $06 $00
    ld hl, $a38d                                  ; $4b60: $21 $8d $a3
    add hl, bc                                    ; $4b63: $09
    ld a, [hl]                                    ; $4b64: $7e
    and a                                         ; $4b65: $a7
    jr nz, jr_001_4b76                            ; $4b66: $20 $0e

    ld b, $03                                     ; $4b68: $06 $03
    ld hl, $46f4                                  ; $4b6a: $21 $f4 $46
    ld c, $09                                     ; $4b6d: $0e $09
    ld de, $0084                                  ; $4b6f: $11 $84 $00
    call Call_000_040d                            ; $4b72: $cd $0d $04
    ret                                           ; $4b75: $c9


jr_001_4b76:
    ld b, $03                                     ; $4b76: $06 $03
    ld hl, $4700                                  ; $4b78: $21 $00 $47
    ld c, $0a                                     ; $4b7b: $0e $0a
    ld de, $0094                                  ; $4b7d: $11 $94 $00
    call Call_000_040d                            ; $4b80: $cd $0d $04
    ret                                           ; $4b83: $c9


Call_001_4b84:
    ld a, [$a065]                                 ; $4b84: $fa $65 $a0
    ld c, a                                       ; $4b87: $4f
    ld b, $00                                     ; $4b88: $06 $00
    ld hl, $a38d                                  ; $4b8a: $21 $8d $a3
    add hl, bc                                    ; $4b8d: $09
    ld a, [hl]                                    ; $4b8e: $7e
    and a                                         ; $4b8f: $a7
    jr nz, jr_001_4ba0                            ; $4b90: $20 $0e

    ld b, $03                                     ; $4b92: $06 $03
    ld hl, $46ff                                  ; $4b94: $21 $ff $46
    ld c, $09                                     ; $4b97: $0e $09
    ld de, $0093                                  ; $4b99: $11 $93 $00
    call Call_000_044e                            ; $4b9c: $cd $4e $04
    ret                                           ; $4b9f: $c9


jr_001_4ba0:
    ld b, $03                                     ; $4ba0: $06 $03
    ld hl, $470b                                  ; $4ba2: $21 $0b $47
    ld c, $0a                                     ; $4ba5: $0e $0a
    ld de, $00a3                                  ; $4ba7: $11 $a3 $00
    call Call_000_044e                            ; $4baa: $cd $4e $04
    ret                                           ; $4bad: $c9


    ld a, [$a065]                                 ; $4bae: $fa $65 $a0
    ld c, a                                       ; $4bb1: $4f
    ld b, $00                                     ; $4bb2: $06 $00
    ld hl, $a38d                                  ; $4bb4: $21 $8d $a3
    add hl, bc                                    ; $4bb7: $09
    ld a, [hl]                                    ; $4bb8: $7e
    and a                                         ; $4bb9: $a7
    jr nz, jr_001_4bcc                            ; $4bba: $20 $10

    ld b, $03                                     ; $4bbc: $06 $03
    ld hl, $46f4                                  ; $4bbe: $21 $f4 $46
    ld c, $0c                                     ; $4bc1: $0e $0c
    ld de, $0084                                  ; $4bc3: $11 $84 $00
    call Call_000_040d                            ; $4bc6: $cd $0d $04
    jp Jump_000_05ea                              ; $4bc9: $c3 $ea $05


jr_001_4bcc:
    ld b, $03                                     ; $4bcc: $06 $03
    ld hl, $4700                                  ; $4bce: $21 $00 $47
    ld c, $0d                                     ; $4bd1: $0e $0d
    ld de, $0094                                  ; $4bd3: $11 $94 $00
    call Call_000_040d                            ; $4bd6: $cd $0d $04
    jp Jump_000_05ea                              ; $4bd9: $c3 $ea $05


    ld a, [$a065]                                 ; $4bdc: $fa $65 $a0
    ld c, a                                       ; $4bdf: $4f
    ld b, $00                                     ; $4be0: $06 $00
    ld hl, $a38d                                  ; $4be2: $21 $8d $a3
    add hl, bc                                    ; $4be5: $09
    ld a, [hl]                                    ; $4be6: $7e
    and a                                         ; $4be7: $a7
    jr nz, jr_001_4bfa                            ; $4be8: $20 $10

    ld b, $03                                     ; $4bea: $06 $03
    ld hl, $46ff                                  ; $4bec: $21 $ff $46
    ld c, $0c                                     ; $4bef: $0e $0c
    ld de, $0093                                  ; $4bf1: $11 $93 $00
    call Call_000_044e                            ; $4bf4: $cd $4e $04
    jp Jump_000_05ea                              ; $4bf7: $c3 $ea $05


jr_001_4bfa:
    ld b, $03                                     ; $4bfa: $06 $03
    ld hl, $470b                                  ; $4bfc: $21 $0b $47
    ld c, $0d                                     ; $4bff: $0e $0d
    ld de, $00a3                                  ; $4c01: $11 $a3 $00
    call Call_000_044e                            ; $4c04: $cd $4e $04
    jp Jump_000_05ea                              ; $4c07: $c3 $ea $05


Call_001_4c0a:
    ld a, [$a065]                                 ; $4c0a: $fa $65 $a0
    ld c, a                                       ; $4c0d: $4f
    ld b, $00                                     ; $4c0e: $06 $00
    ld hl, $a38d                                  ; $4c10: $21 $8d $a3
    add hl, bc                                    ; $4c13: $09
    ld a, [hl]                                    ; $4c14: $7e
    ld hl, $51c8                                  ; $4c15: $21 $c8 $51
    add hl, bc                                    ; $4c18: $09
    ld c, [hl]                                    ; $4c19: $4e
    add hl, bc                                    ; $4c1a: $09
    sla a                                         ; $4c1b: $cb $27
    ld c, a                                       ; $4c1d: $4f
    add hl, bc                                    ; $4c1e: $09
    ld a, [hl+]                                   ; $4c1f: $2a
    ld h, [hl]                                    ; $4c20: $66
    ld l, a                                       ; $4c21: $6f
    ld b, $00                                     ; $4c22: $06 $00

jr_001_4c24:
    ld c, $00                                     ; $4c24: $0e $00

jr_001_4c26:
    ld a, [hl+]                                   ; $4c26: $2a
    bit 7, a                                      ; $4c27: $cb $7f
    jr z, jr_001_4c2e                             ; $4c29: $28 $03

    call Call_001_4c78                            ; $4c2b: $cd $78 $4c

jr_001_4c2e:
    inc c                                         ; $4c2e: $0c
    ld a, c                                       ; $4c2f: $79
    cp $08                                        ; $4c30: $fe $08
    jr nz, jr_001_4c26                            ; $4c32: $20 $f2

    inc b                                         ; $4c34: $04
    ld a, b                                       ; $4c35: $78
    cp $08                                        ; $4c36: $fe $08
    jr nz, jr_001_4c24                            ; $4c38: $20 $ea

    ret                                           ; $4c3a: $c9


Call_001_4c3b:
    ld a, [$a065]                                 ; $4c3b: $fa $65 $a0
    ld c, a                                       ; $4c3e: $4f
    ld b, $00                                     ; $4c3f: $06 $00
    ld hl, $a38d                                  ; $4c41: $21 $8d $a3
    add hl, bc                                    ; $4c44: $09
    ld a, [hl]                                    ; $4c45: $7e
    ld hl, $51c8                                  ; $4c46: $21 $c8 $51
    add hl, bc                                    ; $4c49: $09
    ld c, [hl]                                    ; $4c4a: $4e
    add hl, bc                                    ; $4c4b: $09
    sla a                                         ; $4c4c: $cb $27
    ld c, a                                       ; $4c4e: $4f
    add hl, bc                                    ; $4c4f: $09
    ld a, [hl+]                                   ; $4c50: $2a
    ld h, [hl]                                    ; $4c51: $66
    ld l, a                                       ; $4c52: $6f
    ld b, $00                                     ; $4c53: $06 $00

jr_001_4c55:
    ld c, $00                                     ; $4c55: $0e $00

jr_001_4c57:
    ld a, [hl+]                                   ; $4c57: $2a
    bit 7, a                                      ; $4c58: $cb $7f
    jr z, jr_001_4c6b                             ; $4c5a: $28 $0f

    ld a, [$d636]                                 ; $4c5c: $fa $36 $d6
    cp c                                          ; $4c5f: $b9
    jr nz, jr_001_4c68                            ; $4c60: $20 $06

    ld a, [$d637]                                 ; $4c62: $fa $37 $d6
    cp b                                          ; $4c65: $b8
    jr z, jr_001_4c6b                             ; $4c66: $28 $03

jr_001_4c68:
    call Call_001_4c78                            ; $4c68: $cd $78 $4c

jr_001_4c6b:
    inc c                                         ; $4c6b: $0c
    ld a, c                                       ; $4c6c: $79
    cp $08                                        ; $4c6d: $fe $08
    jr nz, jr_001_4c57                            ; $4c6f: $20 $e6

    inc b                                         ; $4c71: $04
    ld a, b                                       ; $4c72: $78
    cp $08                                        ; $4c73: $fe $08
    jr nz, jr_001_4c55                            ; $4c75: $20 $de

    ret                                           ; $4c77: $c9


Call_001_4c78:
    push bc                                       ; $4c78: $c5
    push hl                                       ; $4c79: $e5
    ld l, b                                       ; $4c7a: $68
    ld h, $00                                     ; $4c7b: $26 $00
    sla l                                         ; $4c7d: $cb $25
    rl h                                          ; $4c7f: $cb $14
    sla l                                         ; $4c81: $cb $25
    rl h                                          ; $4c83: $cb $14
    sla l                                         ; $4c85: $cb $25
    rl h                                          ; $4c87: $cb $14
    sla l                                         ; $4c89: $cb $25
    rl h                                          ; $4c8b: $cb $14
    sla l                                         ; $4c8d: $cb $25
    rl h                                          ; $4c8f: $cb $14
    sla c                                         ; $4c91: $cb $21
    ld b, $00                                     ; $4c93: $06 $00
    add hl, bc                                    ; $4c95: $09
    ld bc, $98c4                                  ; $4c96: $01 $c4 $98
    add hl, bc                                    ; $4c99: $09
    ld a, h                                       ; $4c9a: $7c
    ld [$c100], a                                 ; $4c9b: $ea $00 $c1
    ld a, l                                       ; $4c9e: $7d
    ld [$c101], a                                 ; $4c9f: $ea $01 $c1
    ld a, $01                                     ; $4ca2: $3e $01
    ld [$c102], a                                 ; $4ca4: $ea $02 $c1
    ld a, $55                                     ; $4ca7: $3e $55
    ld [$c103], a                                 ; $4ca9: $ea $03 $c1
    ld a, $00                                     ; $4cac: $3e $00
    ld [$c104], a                                 ; $4cae: $ea $04 $c1
    ld a, $00                                     ; $4cb1: $3e $00
    ld bc, $c100                                  ; $4cb3: $01 $00 $c1
    call Call_000_0738                            ; $4cb6: $cd $38 $07
    pop hl                                        ; $4cb9: $e1
    pop bc                                        ; $4cba: $c1
    ret                                           ; $4cbb: $c9


Call_001_4cbc:
    ld a, [$a065]                                 ; $4cbc: $fa $65 $a0
    ld c, a                                       ; $4cbf: $4f
    ld b, $00                                     ; $4cc0: $06 $00
    ld hl, $a38d                                  ; $4cc2: $21 $8d $a3
    add hl, bc                                    ; $4cc5: $09
    ld a, [hl]                                    ; $4cc6: $7e
    ld hl, $51c8                                  ; $4cc7: $21 $c8 $51
    add hl, bc                                    ; $4cca: $09
    ld c, [hl]                                    ; $4ccb: $4e
    add hl, bc                                    ; $4ccc: $09
    sla a                                         ; $4ccd: $cb $27
    ld c, a                                       ; $4ccf: $4f
    add hl, bc                                    ; $4cd0: $09
    ld a, [hl+]                                   ; $4cd1: $2a
    ld h, [hl]                                    ; $4cd2: $66
    ld l, a                                       ; $4cd3: $6f
    ld a, [$d637]                                 ; $4cd4: $fa $37 $d6
    sla a                                         ; $4cd7: $cb $27
    sla a                                         ; $4cd9: $cb $27
    sla a                                         ; $4cdb: $cb $27
    ld c, a                                       ; $4cdd: $4f
    ld a, [$d636]                                 ; $4cde: $fa $36 $d6
    or c                                          ; $4ce1: $b1
    ld c, a                                       ; $4ce2: $4f
    ld b, $00                                     ; $4ce3: $06 $00
    add hl, bc                                    ; $4ce5: $09
    bit 7, [hl]                                   ; $4ce6: $cb $7e
    ret nz                                        ; $4ce8: $c0

    ld a, [hl]                                    ; $4ce9: $7e
    cp $63                                        ; $4cea: $fe $63
    ret z                                         ; $4cec: $c8

    inc [hl]                                      ; $4ced: $34
    ret                                           ; $4cee: $c9


Call_001_4cef:
    xor a                                         ; $4cef: $af
    ld [$d842], a                                 ; $4cf0: $ea $42 $d8
    ld a, [$a065]                                 ; $4cf3: $fa $65 $a0
    ld c, a                                       ; $4cf6: $4f
    ld b, $00                                     ; $4cf7: $06 $00
    ld hl, $a38d                                  ; $4cf9: $21 $8d $a3
    add hl, bc                                    ; $4cfc: $09
    ld a, [hl]                                    ; $4cfd: $7e
    ld hl, $51c8                                  ; $4cfe: $21 $c8 $51
    add hl, bc                                    ; $4d01: $09
    ld c, [hl]                                    ; $4d02: $4e
    add hl, bc                                    ; $4d03: $09
    sla a                                         ; $4d04: $cb $27
    ld c, a                                       ; $4d06: $4f
    add hl, bc                                    ; $4d07: $09
    ld a, [hl+]                                   ; $4d08: $2a
    ld h, [hl]                                    ; $4d09: $66
    ld l, a                                       ; $4d0a: $6f
    ld a, [$d637]                                 ; $4d0b: $fa $37 $d6
    sla a                                         ; $4d0e: $cb $27
    sla a                                         ; $4d10: $cb $27
    sla a                                         ; $4d12: $cb $27
    ld c, a                                       ; $4d14: $4f
    ld a, [$d636]                                 ; $4d15: $fa $36 $d6
    or c                                          ; $4d18: $b1
    ld c, a                                       ; $4d19: $4f
    ld b, $00                                     ; $4d1a: $06 $00
    add hl, bc                                    ; $4d1c: $09
    bit 7, [hl]                                   ; $4d1d: $cb $7e
    push af                                       ; $4d1f: $f5
    jr nz, jr_001_4d76                            ; $4d20: $20 $54

    push hl                                       ; $4d22: $e5
    ld a, [$a065]                                 ; $4d23: $fa $65 $a0
    ld c, a                                       ; $4d26: $4f
    ld b, $00                                     ; $4d27: $06 $00
    ld hl, $a38a                                  ; $4d29: $21 $8a $a3
    add hl, bc                                    ; $4d2c: $09
    inc [hl]                                      ; $4d2d: $34
    pop hl                                        ; $4d2e: $e1
    set 7, [hl]                                   ; $4d2f: $cb $fe
    ld a, [$a065]                                 ; $4d31: $fa $65 $a0
    ld c, a                                       ; $4d34: $4f
    ld b, $00                                     ; $4d35: $06 $00
    ld hl, $a38d                                  ; $4d37: $21 $8d $a3
    add hl, bc                                    ; $4d3a: $09
    ld a, [hl]                                    ; $4d3b: $7e
    ld hl, $51b3                                  ; $4d3c: $21 $b3 $51
    add hl, bc                                    ; $4d3f: $09
    ld c, [hl]                                    ; $4d40: $4e
    add hl, bc                                    ; $4d41: $09
    sla a                                         ; $4d42: $cb $27
    ld c, a                                       ; $4d44: $4f
    add hl, bc                                    ; $4d45: $09
    ld a, [hl+]                                   ; $4d46: $2a
    ld h, [hl]                                    ; $4d47: $66
    ld l, a                                       ; $4d48: $6f
    ld a, [$d637]                                 ; $4d49: $fa $37 $d6
    sla a                                         ; $4d4c: $cb $27
    sla a                                         ; $4d4e: $cb $27
    sla a                                         ; $4d50: $cb $27
    ld c, a                                       ; $4d52: $4f
    ld a, [$d636]                                 ; $4d53: $fa $36 $d6
    or c                                          ; $4d56: $b1
    ld c, a                                       ; $4d57: $4f
    sla a                                         ; $4d58: $cb $27
    add c                                         ; $4d5a: $81
    ld c, a                                       ; $4d5b: $4f
    ld b, $00                                     ; $4d5c: $06 $00
    add hl, bc                                    ; $4d5e: $09
    call Call_001_5154                            ; $4d5f: $cd $54 $51
    ld [hl], c                                    ; $4d62: $71
    inc hl                                        ; $4d63: $23
    ld a, [hl]                                    ; $4d64: $7e
    and $f0                                       ; $4d65: $e6 $f0
    or b                                          ; $4d67: $b0
    ld [hl], a                                    ; $4d68: $77
    ld a, $01                                     ; $4d69: $3e $01
    ld [$d842], a                                 ; $4d6b: $ea $42 $d8
    ld a, [$d833]                                 ; $4d6e: $fa $33 $d8
    and a                                         ; $4d71: $a7
    jr nz, jr_001_4d76                            ; $4d72: $20 $02

    set 3, [hl]                                   ; $4d74: $cb $de

jr_001_4d76:
    ld a, [$a065]                                 ; $4d76: $fa $65 $a0
    ld c, a                                       ; $4d79: $4f
    ld b, $00                                     ; $4d7a: $06 $00
    ld hl, $a38d                                  ; $4d7c: $21 $8d $a3
    add hl, bc                                    ; $4d7f: $09
    ld a, [hl]                                    ; $4d80: $7e
    ld hl, $51b3                                  ; $4d81: $21 $b3 $51
    add hl, bc                                    ; $4d84: $09
    ld c, [hl]                                    ; $4d85: $4e
    add hl, bc                                    ; $4d86: $09
    sla a                                         ; $4d87: $cb $27
    ld c, a                                       ; $4d89: $4f
    add hl, bc                                    ; $4d8a: $09
    ld a, [hl+]                                   ; $4d8b: $2a
    ld h, [hl]                                    ; $4d8c: $66
    ld l, a                                       ; $4d8d: $6f
    ld a, [$d637]                                 ; $4d8e: $fa $37 $d6
    sla a                                         ; $4d91: $cb $27
    sla a                                         ; $4d93: $cb $27
    sla a                                         ; $4d95: $cb $27
    ld c, a                                       ; $4d97: $4f
    ld a, [$d636]                                 ; $4d98: $fa $36 $d6
    or c                                          ; $4d9b: $b1
    ld c, a                                       ; $4d9c: $4f
    sla a                                         ; $4d9d: $cb $27
    add c                                         ; $4d9f: $81
    ld c, a                                       ; $4da0: $4f
    ld b, $00                                     ; $4da1: $06 $00
    add hl, bc                                    ; $4da3: $09
    inc hl                                        ; $4da4: $23
    push hl                                       ; $4da5: $e5
    call Call_001_5154                            ; $4da6: $cd $54 $51
    ld a, [$d842]                                 ; $4da9: $fa $42 $d8
    and a                                         ; $4dac: $a7
    jr nz, jr_001_4dc7                            ; $4dad: $20 $18

    ld a, [hl+]                                   ; $4daf: $2a
    and $70                                       ; $4db0: $e6 $70
    swap a                                        ; $4db2: $cb $37
    cp b                                          ; $4db4: $b8
    jr z, jr_001_4dbb                             ; $4db5: $28 $04

    jr nc, jr_001_4ddb                            ; $4db7: $30 $22

    jr jr_001_4dc7                                ; $4db9: $18 $0c

jr_001_4dbb:
    ld a, [hl]                                    ; $4dbb: $7e
    cp c                                          ; $4dbc: $b9
    jr c, jr_001_4dc7                             ; $4dbd: $38 $08

    jr nz, jr_001_4ddb                            ; $4dbf: $20 $1a

    ld a, [$d833]                                 ; $4dc1: $fa $33 $d8
    and a                                         ; $4dc4: $a7
    jr z, jr_001_4ddb                             ; $4dc5: $28 $14

jr_001_4dc7:
    pop hl                                        ; $4dc7: $e1
    ld a, [hl]                                    ; $4dc8: $7e
    and $0f                                       ; $4dc9: $e6 $0f
    swap b                                        ; $4dcb: $cb $30
    or b                                          ; $4dcd: $b0
    ld [hl+], a                                   ; $4dce: $22
    ld [hl], c                                    ; $4dcf: $71
    ld a, [$d833]                                 ; $4dd0: $fa $33 $d8
    and a                                         ; $4dd3: $a7
    jr nz, jr_001_4ddc                            ; $4dd4: $20 $06

    dec hl                                        ; $4dd6: $2b
    set 7, [hl]                                   ; $4dd7: $cb $fe
    jr jr_001_4ddc                                ; $4dd9: $18 $01

jr_001_4ddb:
    pop hl                                        ; $4ddb: $e1

jr_001_4ddc:
    pop af                                        ; $4ddc: $f1
    ret                                           ; $4ddd: $c9


Call_001_4dde:
    ld a, [$a065]                                 ; $4dde: $fa $65 $a0
    ld c, a                                       ; $4de1: $4f
    ld b, $00                                     ; $4de2: $06 $00
    ld hl, $a38d                                  ; $4de4: $21 $8d $a3
    add hl, bc                                    ; $4de7: $09
    ld a, [hl]                                    ; $4de8: $7e
    ld hl, $51c8                                  ; $4de9: $21 $c8 $51
    add hl, bc                                    ; $4dec: $09
    ld c, [hl]                                    ; $4ded: $4e
    add hl, bc                                    ; $4dee: $09
    sla a                                         ; $4def: $cb $27
    ld c, a                                       ; $4df1: $4f
    add hl, bc                                    ; $4df2: $09
    ld a, [hl+]                                   ; $4df3: $2a
    ld h, [hl]                                    ; $4df4: $66
    ld l, a                                       ; $4df5: $6f
    ld a, [$d637]                                 ; $4df6: $fa $37 $d6
    sla a                                         ; $4df9: $cb $27
    sla a                                         ; $4dfb: $cb $27
    sla a                                         ; $4dfd: $cb $27
    ld c, a                                       ; $4dff: $4f
    ld a, [$d636]                                 ; $4e00: $fa $36 $d6
    or c                                          ; $4e03: $b1
    ld c, a                                       ; $4e04: $4f
    ld b, $00                                     ; $4e05: $06 $00
    add hl, bc                                    ; $4e07: $09
    ld a, [hl]                                    ; $4e08: $7e
    push af                                       ; $4e09: $f5
    and $7f                                       ; $4e0a: $e6 $7f
    call Call_000_1972                            ; $4e0c: $cd $72 $19
    add $51                                       ; $4e0f: $c6 $51
    ld bc, $4818                                  ; $4e11: $01 $18 $48
    call Call_000_20ce                            ; $4e14: $cd $ce $20
    pop af                                        ; $4e17: $f1
    cp $0a                                        ; $4e18: $fe $0a
    jr z, jr_001_4e24                             ; $4e1a: $28 $08

    add $51                                       ; $4e1c: $c6 $51
    ld bc, $4018                                  ; $4e1e: $01 $18 $40
    call Call_000_20ce                            ; $4e21: $cd $ce $20

jr_001_4e24:
    pop af                                        ; $4e24: $f1
    pop af                                        ; $4e25: $f1
    bit 7, a                                      ; $4e26: $cb $7f
    jp z, Jump_001_4f0d                           ; $4e28: $ca $0d $4f

    ld a, [$a065]                                 ; $4e2b: $fa $65 $a0
    ld c, a                                       ; $4e2e: $4f
    ld b, $00                                     ; $4e2f: $06 $00
    ld hl, $a38d                                  ; $4e31: $21 $8d $a3
    add hl, bc                                    ; $4e34: $09
    ld a, [hl]                                    ; $4e35: $7e
    ld hl, $51b3                                  ; $4e36: $21 $b3 $51
    add hl, bc                                    ; $4e39: $09
    ld c, [hl]                                    ; $4e3a: $4e
    add hl, bc                                    ; $4e3b: $09
    sla a                                         ; $4e3c: $cb $27
    ld c, a                                       ; $4e3e: $4f
    add hl, bc                                    ; $4e3f: $09
    ld a, [hl+]                                   ; $4e40: $2a
    ld h, [hl]                                    ; $4e41: $66
    ld l, a                                       ; $4e42: $6f
    ld a, [$d637]                                 ; $4e43: $fa $37 $d6
    sla a                                         ; $4e46: $cb $27
    sla a                                         ; $4e48: $cb $27
    sla a                                         ; $4e4a: $cb $27
    ld c, a                                       ; $4e4c: $4f
    ld a, [$d636]                                 ; $4e4d: $fa $36 $d6
    or c                                          ; $4e50: $b1
    ld c, a                                       ; $4e51: $4f
    sla a                                         ; $4e52: $cb $27
    add c                                         ; $4e54: $81
    ld c, a                                       ; $4e55: $4f
    ld b, $00                                     ; $4e56: $06 $00
    add hl, bc                                    ; $4e58: $09
    ld c, [hl]                                    ; $4e59: $4e
    inc hl                                        ; $4e5a: $23
    ld b, [hl]                                    ; $4e5b: $46
    call Call_001_5182                            ; $4e5c: $cd $82 $51
    push bc                                       ; $4e5f: $c5
    ld a, b                                       ; $4e60: $78
    and $f0                                       ; $4e61: $e6 $f0
    swap a                                        ; $4e63: $cb $37
    add $51                                       ; $4e65: $c6 $51
    ld bc, $0818                                  ; $4e67: $01 $18 $08
    call Call_000_20ce                            ; $4e6a: $cd $ce $20
    pop bc                                        ; $4e6d: $c1
    push bc                                       ; $4e6e: $c5
    ld a, b                                       ; $4e6f: $78
    and $0f                                       ; $4e70: $e6 $0f
    add $51                                       ; $4e72: $c6 $51
    ld bc, $1018                                  ; $4e74: $01 $18 $10
    call Call_000_20ce                            ; $4e77: $cd $ce $20
    pop bc                                        ; $4e7a: $c1
    push bc                                       ; $4e7b: $c5
    ld a, c                                       ; $4e7c: $79
    and $f0                                       ; $4e7d: $e6 $f0
    swap a                                        ; $4e7f: $cb $37
    add $51                                       ; $4e81: $c6 $51
    ld bc, $2018                                  ; $4e83: $01 $18 $20
    call Call_000_20ce                            ; $4e86: $cd $ce $20
    pop bc                                        ; $4e89: $c1
    ld a, c                                       ; $4e8a: $79
    and $0f                                       ; $4e8b: $e6 $0f
    add $51                                       ; $4e8d: $c6 $51
    ld bc, $2818                                  ; $4e8f: $01 $18 $28
    call Call_000_20ce                            ; $4e92: $cd $ce $20
    ld a, [hl]                                    ; $4e95: $7e
    call Call_001_50b4                            ; $4e96: $cd $b4 $50
    ld a, [$a065]                                 ; $4e99: $fa $65 $a0
    ld c, a                                       ; $4e9c: $4f
    ld b, $00                                     ; $4e9d: $06 $00
    ld hl, $a38d                                  ; $4e9f: $21 $8d $a3
    add hl, bc                                    ; $4ea2: $09
    ld a, [hl]                                    ; $4ea3: $7e
    ld hl, $51b3                                  ; $4ea4: $21 $b3 $51
    add hl, bc                                    ; $4ea7: $09
    ld c, [hl]                                    ; $4ea8: $4e
    add hl, bc                                    ; $4ea9: $09
    sla a                                         ; $4eaa: $cb $27
    ld c, a                                       ; $4eac: $4f
    add hl, bc                                    ; $4ead: $09
    ld a, [hl+]                                   ; $4eae: $2a
    ld h, [hl]                                    ; $4eaf: $66
    ld l, a                                       ; $4eb0: $6f
    ld a, [$d637]                                 ; $4eb1: $fa $37 $d6
    sla a                                         ; $4eb4: $cb $27
    sla a                                         ; $4eb6: $cb $27
    sla a                                         ; $4eb8: $cb $27
    ld c, a                                       ; $4eba: $4f
    ld a, [$d636]                                 ; $4ebb: $fa $36 $d6
    or c                                          ; $4ebe: $b1
    ld c, a                                       ; $4ebf: $4f
    sla a                                         ; $4ec0: $cb $27
    add c                                         ; $4ec2: $81
    ld c, a                                       ; $4ec3: $4f
    ld b, $00                                     ; $4ec4: $06 $00
    add hl, bc                                    ; $4ec6: $09
    inc hl                                        ; $4ec7: $23
    ld a, [hl+]                                   ; $4ec8: $2a
    and $f0                                       ; $4ec9: $e6 $f0
    swap a                                        ; $4ecb: $cb $37
    ld b, a                                       ; $4ecd: $47
    ld c, [hl]                                    ; $4ece: $4e
    call Call_001_5182                            ; $4ecf: $cd $82 $51
    push bc                                       ; $4ed2: $c5
    ld a, b                                       ; $4ed3: $78
    and $f0                                       ; $4ed4: $e6 $f0
    swap a                                        ; $4ed6: $cb $37
    add $51                                       ; $4ed8: $c6 $51
    ld bc, $6818                                  ; $4eda: $01 $18 $68
    call Call_000_20ce                            ; $4edd: $cd $ce $20
    pop bc                                        ; $4ee0: $c1
    push bc                                       ; $4ee1: $c5
    ld a, b                                       ; $4ee2: $78
    and $0f                                       ; $4ee3: $e6 $0f
    add $51                                       ; $4ee5: $c6 $51
    ld bc, $7018                                  ; $4ee7: $01 $18 $70
    call Call_000_20ce                            ; $4eea: $cd $ce $20
    pop bc                                        ; $4eed: $c1
    push bc                                       ; $4eee: $c5
    ld a, c                                       ; $4eef: $79
    and $f0                                       ; $4ef0: $e6 $f0
    swap a                                        ; $4ef2: $cb $37
    add $51                                       ; $4ef4: $c6 $51
    ld bc, $8018                                  ; $4ef6: $01 $18 $80
    call Call_000_20ce                            ; $4ef9: $cd $ce $20
    pop bc                                        ; $4efc: $c1
    ld a, c                                       ; $4efd: $79
    and $0f                                       ; $4efe: $e6 $0f
    add $51                                       ; $4f00: $c6 $51
    ld bc, $8818                                  ; $4f02: $01 $18 $88
    call Call_000_20ce                            ; $4f05: $cd $ce $20
    dec hl                                        ; $4f08: $2b
    ld a, [hl]                                    ; $4f09: $7e
    jp Jump_001_50d9                              ; $4f0a: $c3 $d9 $50


Jump_001_4f0d:
    ld a, $80                                     ; $4f0d: $3e $80
    ld bc, $0818                                  ; $4f0f: $01 $18 $08
    call Call_000_20ce                            ; $4f12: $cd $ce $20
    ld a, $80                                     ; $4f15: $3e $80
    ld bc, $1018                                  ; $4f17: $01 $18 $10
    call Call_000_20ce                            ; $4f1a: $cd $ce $20
    ld a, $80                                     ; $4f1d: $3e $80
    ld bc, $2018                                  ; $4f1f: $01 $18 $20
    call Call_000_20ce                            ; $4f22: $cd $ce $20
    ld a, $80                                     ; $4f25: $3e $80
    ld bc, $2818                                  ; $4f27: $01 $18 $28
    call Call_000_20ce                            ; $4f2a: $cd $ce $20
    ld a, $80                                     ; $4f2d: $3e $80
    ld bc, $6818                                  ; $4f2f: $01 $18 $68
    call Call_000_20ce                            ; $4f32: $cd $ce $20
    ld a, $80                                     ; $4f35: $3e $80
    ld bc, $7018                                  ; $4f37: $01 $18 $70
    call Call_000_20ce                            ; $4f3a: $cd $ce $20
    ld a, $80                                     ; $4f3d: $3e $80
    ld bc, $8018                                  ; $4f3f: $01 $18 $80
    call Call_000_20ce                            ; $4f42: $cd $ce $20
    ld a, $80                                     ; $4f45: $3e $80
    ld bc, $8818                                  ; $4f47: $01 $18 $88
    call Call_000_20ce                            ; $4f4a: $cd $ce $20
    xor a                                         ; $4f4d: $af
    call Call_001_50b4                            ; $4f4e: $cd $b4 $50
    jp Jump_001_50d9                              ; $4f51: $c3 $d9 $50


Call_001_4f54:
    ld a, [$d84c]                                 ; $4f54: $fa $4c $d8
    push af                                       ; $4f57: $f5
    and $7f                                       ; $4f58: $e6 $7f
    call Call_000_1972                            ; $4f5a: $cd $72 $19
    add $51                                       ; $4f5d: $c6 $51
    ld bc, $4818                                  ; $4f5f: $01 $18 $48
    call Call_000_20ce                            ; $4f62: $cd $ce $20
    pop af                                        ; $4f65: $f1
    cp $0a                                        ; $4f66: $fe $0a
    jr z, jr_001_4f72                             ; $4f68: $28 $08

    add $51                                       ; $4f6a: $c6 $51
    ld bc, $4018                                  ; $4f6c: $01 $18 $40
    call Call_000_20ce                            ; $4f6f: $cd $ce $20

jr_001_4f72:
    pop af                                        ; $4f72: $f1
    pop af                                        ; $4f73: $f1
    bit 7, a                                      ; $4f74: $cb $7f
    jp z, Jump_001_5004                           ; $4f76: $ca $04 $50

    ld hl, $d849                                  ; $4f79: $21 $49 $d8
    ld c, [hl]                                    ; $4f7c: $4e
    inc hl                                        ; $4f7d: $23
    ld b, [hl]                                    ; $4f7e: $46
    call Call_001_5182                            ; $4f7f: $cd $82 $51
    push bc                                       ; $4f82: $c5
    ld a, b                                       ; $4f83: $78
    and $f0                                       ; $4f84: $e6 $f0
    swap a                                        ; $4f86: $cb $37
    add $51                                       ; $4f88: $c6 $51
    ld bc, $0818                                  ; $4f8a: $01 $18 $08
    call Call_000_20ce                            ; $4f8d: $cd $ce $20
    pop bc                                        ; $4f90: $c1
    push bc                                       ; $4f91: $c5
    ld a, b                                       ; $4f92: $78
    and $0f                                       ; $4f93: $e6 $0f
    add $51                                       ; $4f95: $c6 $51
    ld bc, $1018                                  ; $4f97: $01 $18 $10
    call Call_000_20ce                            ; $4f9a: $cd $ce $20
    pop bc                                        ; $4f9d: $c1
    push bc                                       ; $4f9e: $c5
    ld a, c                                       ; $4f9f: $79
    and $f0                                       ; $4fa0: $e6 $f0
    swap a                                        ; $4fa2: $cb $37
    add $51                                       ; $4fa4: $c6 $51
    ld bc, $2018                                  ; $4fa6: $01 $18 $20
    call Call_000_20ce                            ; $4fa9: $cd $ce $20
    pop bc                                        ; $4fac: $c1
    ld a, c                                       ; $4fad: $79
    and $0f                                       ; $4fae: $e6 $0f
    add $51                                       ; $4fb0: $c6 $51
    ld bc, $2818                                  ; $4fb2: $01 $18 $28
    call Call_000_20ce                            ; $4fb5: $cd $ce $20
    ld a, [hl]                                    ; $4fb8: $7e
    call Call_001_50b4                            ; $4fb9: $cd $b4 $50
    ld hl, $d84a                                  ; $4fbc: $21 $4a $d8
    ld a, [hl+]                                   ; $4fbf: $2a
    and $f0                                       ; $4fc0: $e6 $f0
    swap a                                        ; $4fc2: $cb $37
    ld b, a                                       ; $4fc4: $47
    ld c, [hl]                                    ; $4fc5: $4e
    call Call_001_5182                            ; $4fc6: $cd $82 $51
    push bc                                       ; $4fc9: $c5
    ld a, b                                       ; $4fca: $78
    and $f0                                       ; $4fcb: $e6 $f0
    swap a                                        ; $4fcd: $cb $37
    add $51                                       ; $4fcf: $c6 $51
    ld bc, $6818                                  ; $4fd1: $01 $18 $68
    call Call_000_20ce                            ; $4fd4: $cd $ce $20
    pop bc                                        ; $4fd7: $c1
    push bc                                       ; $4fd8: $c5
    ld a, b                                       ; $4fd9: $78
    and $0f                                       ; $4fda: $e6 $0f
    add $51                                       ; $4fdc: $c6 $51
    ld bc, $7018                                  ; $4fde: $01 $18 $70
    call Call_000_20ce                            ; $4fe1: $cd $ce $20
    pop bc                                        ; $4fe4: $c1
    push bc                                       ; $4fe5: $c5
    ld a, c                                       ; $4fe6: $79
    and $f0                                       ; $4fe7: $e6 $f0
    swap a                                        ; $4fe9: $cb $37
    add $51                                       ; $4feb: $c6 $51
    ld bc, $8018                                  ; $4fed: $01 $18 $80
    call Call_000_20ce                            ; $4ff0: $cd $ce $20
    pop bc                                        ; $4ff3: $c1
    ld a, c                                       ; $4ff4: $79
    and $0f                                       ; $4ff5: $e6 $0f
    add $51                                       ; $4ff7: $c6 $51
    ld bc, $8818                                  ; $4ff9: $01 $18 $88
    call Call_000_20ce                            ; $4ffc: $cd $ce $20
    dec hl                                        ; $4fff: $2b
    ld a, [hl]                                    ; $5000: $7e
    jp Jump_001_50d9                              ; $5001: $c3 $d9 $50


Jump_001_5004:
    ld a, $80                                     ; $5004: $3e $80
    ld bc, $0818                                  ; $5006: $01 $18 $08
    call Call_000_20ce                            ; $5009: $cd $ce $20
    ld a, $80                                     ; $500c: $3e $80
    ld bc, $1018                                  ; $500e: $01 $18 $10
    call Call_000_20ce                            ; $5011: $cd $ce $20
    ld a, $80                                     ; $5014: $3e $80
    ld bc, $2018                                  ; $5016: $01 $18 $20
    call Call_000_20ce                            ; $5019: $cd $ce $20
    ld a, $80                                     ; $501c: $3e $80
    ld bc, $2818                                  ; $501e: $01 $18 $28
    call Call_000_20ce                            ; $5021: $cd $ce $20
    ld a, $80                                     ; $5024: $3e $80
    ld bc, $6818                                  ; $5026: $01 $18 $68
    call Call_000_20ce                            ; $5029: $cd $ce $20
    ld a, $80                                     ; $502c: $3e $80
    ld bc, $7018                                  ; $502e: $01 $18 $70
    call Call_000_20ce                            ; $5031: $cd $ce $20
    ld a, $80                                     ; $5034: $3e $80
    ld bc, $8018                                  ; $5036: $01 $18 $80
    call Call_000_20ce                            ; $5039: $cd $ce $20
    ld a, $80                                     ; $503c: $3e $80
    ld bc, $8818                                  ; $503e: $01 $18 $88
    call Call_000_20ce                            ; $5041: $cd $ce $20
    xor a                                         ; $5044: $af
    call Call_001_50b4                            ; $5045: $cd $b4 $50
    jp Jump_001_50d9                              ; $5048: $c3 $d9 $50


Call_001_504b:
    ld a, [$a065]                                 ; $504b: $fa $65 $a0
    ld c, a                                       ; $504e: $4f
    ld b, $00                                     ; $504f: $06 $00
    ld hl, $a38d                                  ; $5051: $21 $8d $a3
    add hl, bc                                    ; $5054: $09
    ld a, [hl]                                    ; $5055: $7e
    ld hl, $51c8                                  ; $5056: $21 $c8 $51
    add hl, bc                                    ; $5059: $09
    ld c, [hl]                                    ; $505a: $4e
    add hl, bc                                    ; $505b: $09
    sla a                                         ; $505c: $cb $27
    ld c, a                                       ; $505e: $4f
    add hl, bc                                    ; $505f: $09
    ld a, [hl+]                                   ; $5060: $2a
    ld h, [hl]                                    ; $5061: $66
    ld l, a                                       ; $5062: $6f
    ld a, [$d637]                                 ; $5063: $fa $37 $d6
    sla a                                         ; $5066: $cb $27
    sla a                                         ; $5068: $cb $27
    sla a                                         ; $506a: $cb $27
    ld c, a                                       ; $506c: $4f
    ld a, [$d636]                                 ; $506d: $fa $36 $d6
    or c                                          ; $5070: $b1
    ld c, a                                       ; $5071: $4f
    ld b, $00                                     ; $5072: $06 $00
    add hl, bc                                    ; $5074: $09
    ld a, [hl]                                    ; $5075: $7e
    ld [$d84c], a                                 ; $5076: $ea $4c $d8
    ld a, [$a065]                                 ; $5079: $fa $65 $a0
    ld c, a                                       ; $507c: $4f
    ld b, $00                                     ; $507d: $06 $00
    ld hl, $a38d                                  ; $507f: $21 $8d $a3
    add hl, bc                                    ; $5082: $09
    ld a, [hl]                                    ; $5083: $7e
    ld hl, $51b3                                  ; $5084: $21 $b3 $51
    add hl, bc                                    ; $5087: $09
    ld c, [hl]                                    ; $5088: $4e
    add hl, bc                                    ; $5089: $09
    sla a                                         ; $508a: $cb $27
    ld c, a                                       ; $508c: $4f
    add hl, bc                                    ; $508d: $09
    ld a, [hl+]                                   ; $508e: $2a
    ld h, [hl]                                    ; $508f: $66
    ld l, a                                       ; $5090: $6f
    ld a, [$d637]                                 ; $5091: $fa $37 $d6
    sla a                                         ; $5094: $cb $27
    sla a                                         ; $5096: $cb $27
    sla a                                         ; $5098: $cb $27
    ld c, a                                       ; $509a: $4f
    ld a, [$d636]                                 ; $509b: $fa $36 $d6
    or c                                          ; $509e: $b1
    ld c, a                                       ; $509f: $4f
    sla a                                         ; $50a0: $cb $27
    add c                                         ; $50a2: $81
    ld c, a                                       ; $50a3: $4f
    ld b, $00                                     ; $50a4: $06 $00
    add hl, bc                                    ; $50a6: $09
    ld a, [hl+]                                   ; $50a7: $2a
    ld [$d849], a                                 ; $50a8: $ea $49 $d8
    ld a, [hl+]                                   ; $50ab: $2a
    ld [$d84a], a                                 ; $50ac: $ea $4a $d8
    ld a, [hl]                                    ; $50af: $7e
    ld [$d84b], a                                 ; $50b0: $ea $4b $d8
    ret                                           ; $50b3: $c9


Call_001_50b4:
    push af                                       ; $50b4: $f5
    push hl                                       ; $50b5: $e5
    bit 3, a                                      ; $50b6: $cb $5f
    jr z, jr_001_50c4                             ; $50b8: $28 $0a

    ld a, $01                                     ; $50ba: $3e $01
    ld bc, $50cf                                  ; $50bc: $01 $cf $50
    call Call_000_0738                            ; $50bf: $cd $38 $07
    jr jr_001_50cc                                ; $50c2: $18 $08

jr_001_50c4:
    ld a, $01                                     ; $50c4: $3e $01
    ld bc, $50d4                                  ; $50c6: $01 $d4 $50
    call Call_000_0738                            ; $50c9: $cd $38 $07

jr_001_50cc:
    pop hl                                        ; $50cc: $e1
    pop af                                        ; $50cd: $f1
    ret                                           ; $50ce: $c9


    sbc b                                         ; $50cf: $98
    ld h, [hl]                                    ; $50d0: $66
    ld bc, $002f                                  ; $50d1: $01 $2f $00
    sbc b                                         ; $50d4: $98
    ld h, [hl]                                    ; $50d5: $66
    ld bc, $002b                                  ; $50d6: $01 $2b $00

Jump_001_50d9:
    push af                                       ; $50d9: $f5
    push hl                                       ; $50da: $e5
    bit 7, a                                      ; $50db: $cb $7f
    jr z, jr_001_50e9                             ; $50dd: $28 $0a

    ld a, $01                                     ; $50df: $3e $01
    ld bc, $50f4                                  ; $50e1: $01 $f4 $50
    call Call_000_0738                            ; $50e4: $cd $38 $07
    jr jr_001_50f1                                ; $50e7: $18 $08

jr_001_50e9:
    ld a, $01                                     ; $50e9: $3e $01
    ld bc, $50f9                                  ; $50eb: $01 $f9 $50
    call Call_000_0738                            ; $50ee: $cd $38 $07

jr_001_50f1:
    pop hl                                        ; $50f1: $e1
    pop af                                        ; $50f2: $f1
    ret                                           ; $50f3: $c9


    sbc b                                         ; $50f4: $98
    ld [hl], d                                    ; $50f5: $72
    ld bc, $002f                                  ; $50f6: $01 $2f $00
    sbc b                                         ; $50f9: $98
    ld [hl], d                                    ; $50fa: $72
    ld bc, $002b                                  ; $50fb: $01 $2b $00

Jump_001_50fe:
    ld a, [$d637]                                 ; $50fe: $fa $37 $d6
    cp $07                                        ; $5101: $fe $07
    jr nz, jr_001_510b                            ; $5103: $20 $06

    ld a, [$d636]                                 ; $5105: $fa $36 $d6
    cp $07                                        ; $5108: $fe $07
    ret z                                         ; $510a: $c8

jr_001_510b:
    ld a, [$a065]                                 ; $510b: $fa $65 $a0
    ld c, a                                       ; $510e: $4f
    ld b, $00                                     ; $510f: $06 $00
    ld hl, $a38d                                  ; $5111: $21 $8d $a3
    add hl, bc                                    ; $5114: $09
    ld a, [hl]                                    ; $5115: $7e
    ld hl, $51c8                                  ; $5116: $21 $c8 $51
    add hl, bc                                    ; $5119: $09
    ld c, [hl]                                    ; $511a: $4e
    add hl, bc                                    ; $511b: $09
    sla a                                         ; $511c: $cb $27
    ld c, a                                       ; $511e: $4f
    add hl, bc                                    ; $511f: $09
    ld a, [hl+]                                   ; $5120: $2a
    ld h, [hl]                                    ; $5121: $66
    ld l, a                                       ; $5122: $6f
    ld a, [$d637]                                 ; $5123: $fa $37 $d6
    sla a                                         ; $5126: $cb $27
    sla a                                         ; $5128: $cb $27
    sla a                                         ; $512a: $cb $27
    ld c, a                                       ; $512c: $4f
    ld a, [$d636]                                 ; $512d: $fa $36 $d6
    or c                                          ; $5130: $b1
    ld c, a                                       ; $5131: $4f
    ld b, $00                                     ; $5132: $06 $00
    add hl, bc                                    ; $5134: $09
    inc hl                                        ; $5135: $23
    bit 7, [hl]                                   ; $5136: $cb $7e
    ret nz                                        ; $5138: $c0

    ld a, [$d636]                                 ; $5139: $fa $36 $d6
    inc a                                         ; $513c: $3c
    cp $08                                        ; $513d: $fe $08
    jr nz, jr_001_5149                            ; $513f: $20 $08

    ld a, [$d637]                                 ; $5141: $fa $37 $d6
    inc a                                         ; $5144: $3c
    ld [$d637], a                                 ; $5145: $ea $37 $d6
    xor a                                         ; $5148: $af

jr_001_5149:
    ld [$d636], a                                 ; $5149: $ea $36 $d6
    ld c, $0a                                     ; $514c: $0e $0a
    ld a, $02                                     ; $514e: $3e $02
    call Call_000_03b6                            ; $5150: $cd $b6 $03
    ret                                           ; $5153: $c9


Call_001_5154:
    push hl                                       ; $5154: $e5
    ld a, [$d80c]                                 ; $5155: $fa $0c $d8
    ld c, a                                       ; $5158: $4f
    sla a                                         ; $5159: $cb $27
    sla a                                         ; $515b: $cb $27
    add c                                         ; $515d: $81
    sla a                                         ; $515e: $cb $27
    ld hl, $d80b                                  ; $5160: $21 $0b $d8
    add [hl]                                      ; $5163: $86
    ld c, a                                       ; $5164: $4f
    ld a, [$d80a]                                 ; $5165: $fa $0a $d8
    ld b, a                                       ; $5168: $47
    sla a                                         ; $5169: $cb $27
    sla a                                         ; $516b: $cb $27
    add b                                         ; $516d: $80
    sla a                                         ; $516e: $cb $27
    ld hl, $d809                                  ; $5170: $21 $09 $d8
    add [hl]                                      ; $5173: $86
    ld b, a                                       ; $5174: $47
    xor a                                         ; $5175: $af
    srl b                                         ; $5176: $cb $38
    rr a                                          ; $5178: $cb $1f
    srl b                                         ; $517a: $cb $38
    rr a                                          ; $517c: $cb $1f
    or c                                          ; $517e: $b1
    ld c, a                                       ; $517f: $4f
    pop hl                                        ; $5180: $e1
    ret                                           ; $5181: $c9


Call_001_5182:
    push hl                                       ; $5182: $e5
    ld a, c                                       ; $5183: $79
    and $3f                                       ; $5184: $e6 $3f
    ld e, $00                                     ; $5186: $1e $00

jr_001_5188:
    cp $0a                                        ; $5188: $fe $0a
    jr c, jr_001_5191                             ; $518a: $38 $05

    sub $0a                                       ; $518c: $d6 $0a
    inc e                                         ; $518e: $1c
    jr jr_001_5188                                ; $518f: $18 $f7

jr_001_5191:
    swap e                                        ; $5191: $cb $33
    or e                                          ; $5193: $b3
    ld e, a                                       ; $5194: $5f
    sla c                                         ; $5195: $cb $21
    rl b                                          ; $5197: $cb $10
    sla c                                         ; $5199: $cb $21
    rl b                                          ; $519b: $cb $10
    ld a, b                                       ; $519d: $78
    and $1f                                       ; $519e: $e6 $1f
    ld d, $00                                     ; $51a0: $16 $00

jr_001_51a2:
    cp $0a                                        ; $51a2: $fe $0a
    jr c, jr_001_51ab                             ; $51a4: $38 $05

    sub $0a                                       ; $51a6: $d6 $0a
    inc d                                         ; $51a8: $14
    jr jr_001_51a2                                ; $51a9: $18 $f7

jr_001_51ab:
    swap d                                        ; $51ab: $cb $32
    or d                                          ; $51ad: $b2
    ld d, a                                       ; $51ae: $57
    ld c, e                                       ; $51af: $4b
    ld b, d                                       ; $51b0: $42
    pop hl                                        ; $51b1: $e1
    ret                                           ; $51b2: $c9


    inc bc                                        ; $51b3: $03
    ld [$a20d], sp                                ; $51b4: $08 $0d $a2
    and e                                         ; $51b7: $a3
    ld h, d                                       ; $51b8: $62
    and h                                         ; $51b9: $a4
    ld [hl+], a                                   ; $51ba: $22
    and l                                         ; $51bb: $a5
    ldh [c], a                                    ; $51bc: $e2
    and l                                         ; $51bd: $a5
    and d                                         ; $51be: $a2
    and [hl]                                      ; $51bf: $a6
    ld h, d                                       ; $51c0: $62
    and a                                         ; $51c1: $a7
    ld [hl+], a                                   ; $51c2: $22
    xor b                                         ; $51c3: $a8
    ldh [c], a                                    ; $51c4: $e2
    xor b                                         ; $51c5: $a8
    and d                                         ; $51c6: $a2
    xor c                                         ; $51c7: $a9
    inc bc                                        ; $51c8: $03
    ld [$620d], sp                                ; $51c9: $08 $0d $62
    xor d                                         ; $51cc: $aa
    and d                                         ; $51cd: $a2
    xor d                                         ; $51ce: $aa
    ldh [c], a                                    ; $51cf: $e2
    xor d                                         ; $51d0: $aa
    ld [hl+], a                                   ; $51d1: $22
    xor e                                         ; $51d2: $ab
    ld h, d                                       ; $51d3: $62
    xor e                                         ; $51d4: $ab
    and d                                         ; $51d5: $a2
    xor e                                         ; $51d6: $ab
    ldh [c], a                                    ; $51d7: $e2
    xor e                                         ; $51d8: $ab
    ld [hl+], a                                   ; $51d9: $22
    xor h                                         ; $51da: $ac
    ld h, d                                       ; $51db: $62
    xor h                                         ; $51dc: $ac

Call_001_51dd:
jr_001_51dd:
    rst RST_08                                    ; $51dd: $cf
    call Call_000_2c1f                            ; $51de: $cd $1f $2c
    jr nz, jr_001_51dd                            ; $51e1: $20 $fa

    ret                                           ; $51e3: $c9


Call_001_51e4:
    ld bc, $1020                                  ; $51e4: $01 $20 $10
    ld de, $7f07                                  ; $51e7: $11 $07 $7f
    call Call_001_5230                            ; $51ea: $cd $30 $52
    ld bc, $1028                                  ; $51ed: $01 $28 $10
    ld de, $7f07                                  ; $51f0: $11 $07 $7f
    call Call_001_5230                            ; $51f3: $cd $30 $52
    ld bc, $1030                                  ; $51f6: $01 $30 $10
    ld de, $7f07                                  ; $51f9: $11 $07 $7f
    call Call_001_5230                            ; $51fc: $cd $30 $52
    ld bc, $1038                                  ; $51ff: $01 $38 $10
    ld de, $7f07                                  ; $5202: $11 $07 $7f
    call Call_001_5230                            ; $5205: $cd $30 $52
    ld bc, $1040                                  ; $5208: $01 $40 $10
    ld de, $7f07                                  ; $520b: $11 $07 $7f
    call Call_001_5230                            ; $520e: $cd $30 $52
    ld bc, $1048                                  ; $5211: $01 $48 $10
    ld de, $7f07                                  ; $5214: $11 $07 $7f
    call Call_001_5230                            ; $5217: $cd $30 $52
    ld bc, $1050                                  ; $521a: $01 $50 $10
    ld de, $7f07                                  ; $521d: $11 $07 $7f
    call Call_001_5230                            ; $5220: $cd $30 $52
    ld a, [$d843]                                 ; $5223: $fa $43 $d8
    ld [$d82b], a                                 ; $5226: $ea $2b $d8
    ld a, [$d844]                                 ; $5229: $fa $44 $d8
    ld [$d82c], a                                 ; $522c: $ea $2c $d8
    ret                                           ; $522f: $c9


Call_001_5230:
    ld a, $00                                     ; $5230: $3e $00
    ld [$c355], a                                 ; $5232: $ea $55 $c3
    ld a, $61                                     ; $5235: $3e $61
    ld [$c356], a                                 ; $5237: $ea $56 $c3
    ld a, $0a                                     ; $523a: $3e $0a
    ld [$c357], a                                 ; $523c: $ea $57 $c3
    ld a, b                                       ; $523f: $78
    ld [$c351], a                                 ; $5240: $ea $51 $c3
    add d                                         ; $5243: $82
    ld [$c353], a                                 ; $5244: $ea $53 $c3
    ld a, c                                       ; $5247: $79
    ld [$c352], a                                 ; $5248: $ea $52 $c3
    add e                                         ; $524b: $83
    ld [$c354], a                                 ; $524c: $ea $54 $c3
    jp Jump_000_0b0d                              ; $524f: $c3 $0d $0b


Call_001_5252:
jr_001_5252:
    ld b, $03                                     ; $5252: $06 $03
    ld hl, $4ea6                                  ; $5254: $21 $a6 $4e
    call SwitchBankToBAndJumpToHL                 ; $5257: $cd $de $05
    call Call_000_05c5                            ; $525a: $cd $c5 $05
    rst RST_08                                    ; $525d: $cf
    ld a, [$c31e]                                 ; $525e: $fa $1e $c3
    and $01                                       ; $5261: $e6 $01
    jr z, jr_001_5252                             ; $5263: $28 $ed

    ld c, $03                                     ; $5265: $0e $03
    ld a, $02                                     ; $5267: $3e $02
    call Call_000_03b6                            ; $5269: $cd $b6 $03
    ret                                           ; $526c: $c9


GameState_05_TODO_PhaseDispatcher::
    ld a, [StatePhase_Current]                    ; $526d: $fa $35 $d6
    rst RST_18                                    ; $5270: $df

GS05_PhasePointer_00::
    db $7d, $52

GS05_PhasePointer_01::
    db $85, $55

GS05_PhasePointer_02::
    db $1b, $56

GS05_PhasePointer_03::
    db $f7, $56

GS05_PhasePointer_04::
    db $16, $53

GS05_PhasePointer_05::
    db $bf, $55

GS05_StatePhase_00_TODO::
    ld a, $43                                     ; $527d: $3e $43
    ld [$c32e], a                                 ; $527f: $ea $2e $c3
    xor a                                         ; $5282: $af
    ld [$c32f], a                                 ; $5283: $ea $2f $c3
    ld [$c330], a                                 ; $5286: $ea $30 $c3
    ld [$c331], a                                 ; $5289: $ea $31 $c3
    ld [$c332], a                                 ; $528c: $ea $32 $c3
    ld [$c333], a                                 ; $528f: $ea $33 $c3
    call Call_000_05a0                            ; $5292: $cd $a0 $05
    call Call_000_05ab                            ; $5295: $cd $ab $05
    ld a, $0b                                     ; $5298: $3e $0b
    ld hl, $5000                                  ; $529a: $21 $00 $50
    ld de, $8000                                  ; $529d: $11 $00 $80
    ld bc, $0300                                  ; $52a0: $01 $00 $03
    call BankedTileCopy                           ; $52a3: $cd $e4 $04
    ld a, $07                                     ; $52a6: $3e $07
    ld hl, $7b00                                  ; $52a8: $21 $00 $7b
    ld de, $8300                                  ; $52ab: $11 $00 $83
    ld bc, $0200                                  ; $52ae: $01 $00 $02
    call BankedTileCopy                           ; $52b1: $cd $e4 $04
    ld a, $0a                                     ; $52b4: $3e $0a
    ld hl, $6000                                  ; $52b6: $21 $00 $60
    ld de, $8800                                  ; $52b9: $11 $00 $88
    ld bc, $1000                                  ; $52bc: $01 $00 $10
    call BankedTileCopy                           ; $52bf: $cd $e4 $04
    ld a, $0c                                     ; $52c2: $3e $0c
    ld hl, $6c00                                  ; $52c4: $21 $00 $6c
    ld de, $9800                                  ; $52c7: $11 $00 $98
    ld bc, $0400                                  ; $52ca: $01 $00 $04
    call BankedTileCopy                           ; $52cd: $cd $e4 $04
    call Call_001_5732                            ; $52d0: $cd $32 $57
    call Call_001_57c0                            ; $52d3: $cd $c0 $57
    call Call_000_05b6                            ; $52d6: $cd $b6 $05
    ld b, $03                                     ; $52d9: $06 $03
    ld hl, $4e80                                  ; $52db: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $52de: $cd $de $05
    ld b, $03                                     ; $52e1: $06 $03
    ld hl, $4ee9                                  ; $52e3: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $52e6: $cd $de $05
    xor a                                         ; $52e9: $af
    call Call_001_5760                            ; $52ea: $cd $60 $57
    call Call_001_595e                            ; $52ed: $cd $5e $59
    ld c, $00                                     ; $52f0: $0e $00
    ld a, $01                                     ; $52f2: $3e $01
    call Call_000_03b6                            ; $52f4: $cd $b6 $03
    call Call_000_0399                            ; $52f7: $cd $99 $03
    ld c, $04                                     ; $52fa: $0e $04
    ld a, $01                                     ; $52fc: $3e $01
    call Call_000_03b6                            ; $52fe: $cd $b6 $03
    call Call_000_04a2                            ; $5301: $cd $a2 $04
    ld b, $03                                     ; $5304: $06 $03
    ld hl, $46e8                                  ; $5306: $21 $e8 $46
    ld c, $08                                     ; $5309: $0e $08
    ld de, $0074                                  ; $530b: $11 $74 $00
    call Call_000_040d                            ; $530e: $cd $0d $04
    ld hl, StatePhase_Current                     ; $5311: $21 $35 $d6
    inc [hl]                                      ; $5314: $34
    ret                                           ; $5315: $c9


GS05_StatePhase_04_TODO::
    ld a, $43                                     ; $5316: $3e $43
    ld [$c32e], a                                 ; $5318: $ea $2e $c3
    xor a                                         ; $531b: $af
    ld [$c32f], a                                 ; $531c: $ea $2f $c3
    ld [$c330], a                                 ; $531f: $ea $30 $c3
    ld [$c331], a                                 ; $5322: $ea $31 $c3
    ld [$c332], a                                 ; $5325: $ea $32 $c3
    ld [$c333], a                                 ; $5328: $ea $33 $c3
    call Call_000_05a0                            ; $532b: $cd $a0 $05
    call Call_000_05ab                            ; $532e: $cd $ab $05
    ld a, $0b                                     ; $5331: $3e $0b
    ld hl, $5000                                  ; $5333: $21 $00 $50
    ld de, $8000                                  ; $5336: $11 $00 $80
    ld bc, $0300                                  ; $5339: $01 $00 $03
    call BankedTileCopy                           ; $533c: $cd $e4 $04
    ld a, $07                                     ; $533f: $3e $07
    ld hl, $7b00                                  ; $5341: $21 $00 $7b
    ld de, $8300                                  ; $5344: $11 $00 $83
    ld bc, $0200                                  ; $5347: $01 $00 $02
    call BankedTileCopy                           ; $534a: $cd $e4 $04
    ld a, $0a                                     ; $534d: $3e $0a
    ld hl, $6000                                  ; $534f: $21 $00 $60
    ld de, $8800                                  ; $5352: $11 $00 $88
    ld bc, $1000                                  ; $5355: $01 $00 $10
    call BankedTileCopy                           ; $5358: $cd $e4 $04
    ld a, $0c                                     ; $535b: $3e $0c
    ld hl, $6c00                                  ; $535d: $21 $00 $6c
    ld de, $9800                                  ; $5360: $11 $00 $98
    ld bc, $0400                                  ; $5363: $01 $00 $04
    call BankedTileCopy                           ; $5366: $cd $e4 $04
    call Call_001_5732                            ; $5369: $cd $32 $57
    call Call_001_57e8                            ; $536c: $cd $e8 $57
    ld a, [$d84c]                                 ; $536f: $fa $4c $d8
    bit 7, a                                      ; $5372: $cb $7f
    jr z, jr_001_5381                             ; $5374: $28 $0b

    ld a, [$d636]                                 ; $5376: $fa $36 $d6
    ld c, a                                       ; $5379: $4f
    ld a, [$d637]                                 ; $537a: $fa $37 $d6
    ld b, a                                       ; $537d: $47
    call Call_001_581c                            ; $537e: $cd $1c $58

jr_001_5381:
    call Call_000_05b6                            ; $5381: $cd $b6 $05
    call Call_001_5ab9                            ; $5384: $cd $b9 $5a
    ld b, $03                                     ; $5387: $06 $03
    ld hl, $4e80                                  ; $5389: $21 $80 $4e
    call SwitchBankToBAndJumpToHL                 ; $538c: $cd $de $05
    ld a, [$d805]                                 ; $538f: $fa $05 $d8
    and a                                         ; $5392: $a7
    push af                                       ; $5393: $f5
    jr nz, jr_001_539e                            ; $5394: $20 $08

    ld b, $03                                     ; $5396: $06 $03
    ld hl, $4ee9                                  ; $5398: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $539b: $cd $de $05

jr_001_539e:
    xor a                                         ; $539e: $af
    call Call_001_5760                            ; $539f: $cd $60 $57
    ld c, $00                                     ; $53a2: $0e $00
    ld a, $01                                     ; $53a4: $3e $01
    call Call_000_03b6                            ; $53a6: $cd $b6 $03
    call Call_000_0399                            ; $53a9: $cd $99 $03
    ld c, $04                                     ; $53ac: $0e $04
    ld a, $01                                     ; $53ae: $3e $01
    call Call_000_03b6                            ; $53b0: $cd $b6 $03
    call Call_000_04a2                            ; $53b3: $cd $a2 $04
    ld b, $03                                     ; $53b6: $06 $03
    ld hl, $46e8                                  ; $53b8: $21 $e8 $46
    ld c, $08                                     ; $53bb: $0e $08
    ld de, $0074                                  ; $53bd: $11 $74 $00
    call Call_000_040d                            ; $53c0: $cd $0d $04
    pop af                                        ; $53c3: $f1
    jp z, Jump_001_54ed                           ; $53c4: $ca $ed $54

    call Call_001_54f5                            ; $53c7: $cd $f5 $54
    ld a, [$a065]                                 ; $53ca: $fa $65 $a0
    ld c, a                                       ; $53cd: $4f
    ld b, $00                                     ; $53ce: $06 $00
    ld hl, $a07b                                  ; $53d0: $21 $7b $a0
    add hl, bc                                    ; $53d3: $09
    ld a, [hl]                                    ; $53d4: $7e
    and a                                         ; $53d5: $a7
    jp nz, Jump_001_54ed                          ; $53d6: $c2 $ed $54

    ld hl, $a07e                                  ; $53d9: $21 $7e $a0
    add hl, bc                                    ; $53dc: $09
    ld a, [hl]                                    ; $53dd: $7e
    cp $40                                        ; $53de: $fe $40
    jp nz, Jump_001_54ed                          ; $53e0: $c2 $ed $54

    ld hl, $a07b                                  ; $53e3: $21 $7b $a0
    add hl, bc                                    ; $53e6: $09
    inc [hl]                                      ; $53e7: $34
    ld a, [$a065]                                 ; $53e8: $fa $65 $a0
    ld c, a                                       ; $53eb: $4f
    ld b, $00                                     ; $53ec: $06 $00
    ld hl, $a078                                  ; $53ee: $21 $78 $a0
    add hl, bc                                    ; $53f1: $09
    ld a, $02                                     ; $53f2: $3e $02
    ld [hl], a                                    ; $53f4: $77
    call Call_000_1b1f                            ; $53f5: $cd $1f $1b
    ld bc, $00b4                                  ; $53f8: $01 $b4 $00
    call Call_000_05fa                            ; $53fb: $cd $fa $05
    ld a, $05                                     ; $53fe: $3e $05
    call Call_000_03b6                            ; $5400: $cd $b6 $03
    ld c, $00                                     ; $5403: $0e $00
    ld a, $01                                     ; $5405: $3e $01
    call Call_000_03b6                            ; $5407: $cd $b6 $03
    call Call_000_0399                            ; $540a: $cd $99 $03
    ld c, $00                                     ; $540d: $0e $00
    ld a, $01                                     ; $540f: $3e $01
    call Call_000_03b6                            ; $5411: $cd $b6 $03
    call Call_000_05b6                            ; $5414: $cd $b6 $05
    ld b, $03                                     ; $5417: $06 $03
    ld hl, $46f3                                  ; $5419: $21 $f3 $46
    ld c, $08                                     ; $541c: $0e $08
    ld de, $0083                                  ; $541e: $11 $83 $00
    call Call_000_044e                            ; $5421: $cd $4e $04
    call Call_000_0483                            ; $5424: $cd $83 $04
    ld a, $0c                                     ; $5427: $3e $0c
    ld hl, $7800                                  ; $5429: $21 $00 $78
    ld de, $9800                                  ; $542c: $11 $00 $98
    ld bc, $0400                                  ; $542f: $01 $00 $04
    call BankedTileCopy                           ; $5432: $cd $e4 $04
    ld a, $7e                                     ; $5435: $3e $7e
    ld [$cd63], a                                 ; $5437: $ea $63 $cd
    ld a, $16                                     ; $543a: $3e $16
    ld [$cd64], a                                 ; $543c: $ea $64 $cd
    ld c, $00                                     ; $543f: $0e $00
    ld a, $01                                     ; $5441: $3e $01
    call Call_000_03b6                            ; $5443: $cd $b6 $03
    call Call_000_0399                            ; $5446: $cd $99 $03
    ld c, $07                                     ; $5449: $0e $07
    ld a, $01                                     ; $544b: $3e $01
    call Call_000_03b6                            ; $544d: $cd $b6 $03
    ld a, $2f                                     ; $5450: $3e $2f
    ld [$c336], a                                 ; $5452: $ea $36 $c3
    ld hl, $c337                                  ; $5455: $21 $37 $c3
    set 6, [hl]                                   ; $5458: $cb $f6
    ld hl, rIE                                    ; $545a: $21 $ff $ff
    set 1, [hl]                                   ; $545d: $cb $ce
    ld a, $02                                     ; $545f: $3e $02
    ld [$c338], a                                 ; $5461: $ea $38 $c3
    ld [$c350], a                                 ; $5464: $ea $50 $c3
    call Call_000_04a2                            ; $5467: $cd $a2 $04
    ld b, $03                                     ; $546a: $06 $03
    ld hl, $46e8                                  ; $546c: $21 $e8 $46
    ld c, $0b                                     ; $546f: $0e $0b
    ld de, $0074                                  ; $5471: $11 $74 $00
    call Call_000_040d                            ; $5474: $cd $0d $04
    ld a, $10                                     ; $5477: $3e $10
    ld [$d843], a                                 ; $5479: $ea $43 $d8
    ld [$d82b], a                                 ; $547c: $ea $2b $d8
    ld a, $20                                     ; $547f: $3e $20
    ld [$d844], a                                 ; $5481: $ea $44 $d8
    ld [$d82c], a                                 ; $5484: $ea $2c $d8
    ld a, $90                                     ; $5487: $3e $90
    ld [$d845], a                                 ; $5489: $ea $45 $d8
    ld a, $58                                     ; $548c: $3e $58
    ld [$d846], a                                 ; $548e: $ea $46 $d8
    ld a, $00                                     ; $5491: $3e $00
    ld [$d82d], a                                 ; $5493: $ea $2d $d8
    ld a, $40                                     ; $5496: $3e $40
    ld [$d82e], a                                 ; $5498: $ea $2e $d8
    call Call_001_51dd                            ; $549b: $cd $dd $51
    call Call_001_5252                            ; $549e: $cd $52 $52
    ld bc, $003c                                  ; $54a1: $01 $3c $00
    call Call_000_05fa                            ; $54a4: $cd $fa $05
    ld a, $05                                     ; $54a7: $3e $05
    call Call_000_03b6                            ; $54a9: $cd $b6 $03
    ld c, $00                                     ; $54ac: $0e $00
    ld a, $01                                     ; $54ae: $3e $01
    call Call_000_03b6                            ; $54b0: $cd $b6 $03
    call Call_000_0399                            ; $54b3: $cd $99 $03
    ld c, $00                                     ; $54b6: $0e $00
    ld a, $01                                     ; $54b8: $3e $01
    call Call_000_03b6                            ; $54ba: $cd $b6 $03
    ld b, $03                                     ; $54bd: $06 $03
    ld hl, $46f3                                  ; $54bf: $21 $f3 $46
    ld c, $0b                                     ; $54c2: $0e $0b
    ld de, $0083                                  ; $54c4: $11 $83 $00
    call Call_000_044e                            ; $54c7: $cd $4e $04
    call Call_000_0483                            ; $54ca: $cd $83 $04
    ld hl, $c337                                  ; $54cd: $21 $37 $c3
    res 6, [hl]                                   ; $54d0: $cb $b6
    ld hl, rIE                                    ; $54d2: $21 $ff $ff
    res 1, [hl]                                   ; $54d5: $cb $8e
    xor a                                         ; $54d7: $af
    ld [$c338], a                                 ; $54d8: $ea $38 $c3
    ld [$c350], a                                 ; $54db: $ea $50 $c3
    call Call_001_5749                            ; $54de: $cd $49 $57
    xor a                                         ; $54e1: $af
    ld [StatePhase_Current], a                    ; $54e2: $ea $35 $d6
    ld a, $02                                     ; $54e5: $3e $02
    ld [GameState_Current], a                     ; $54e7: $ea $34 $d6
    jp Jump_000_1b1f                              ; $54ea: $c3 $1f $1b


Jump_001_54ed:
    ld a, $01                                     ; $54ed: $3e $01
    ld [StatePhase_Current], a                    ; $54ef: $ea $35 $d6
    jp Jump_000_1b1f                              ; $54f2: $c3 $1f $1b


Call_001_54f5:
    ld a, [$a065]                                 ; $54f5: $fa $65 $a0
    sla a                                         ; $54f8: $cb $27
    ld c, a                                       ; $54fa: $4f
    ld b, $00                                     ; $54fb: $06 $00
    ld hl, GS05_TODO_Data3                        ; $54fd: $21 $a4 $5c
    add hl, bc                                    ; $5500: $09
    ld a, [hl+]                                   ; $5501: $2a
    ld h, [hl]                                    ; $5502: $66
    ld l, a                                       ; $5503: $6f
    ld a, [$d637]                                 ; $5504: $fa $37 $d6
    sla a                                         ; $5507: $cb $27
    sla a                                         ; $5509: $cb $27
    sla a                                         ; $550b: $cb $27
    ld c, a                                       ; $550d: $4f
    ld a, [$d636]                                 ; $550e: $fa $36 $d6
    or c                                          ; $5511: $b1
    ld c, a                                       ; $5512: $4f
    ld b, $00                                     ; $5513: $06 $00
    add hl, bc                                    ; $5515: $09
    ld a, [hl]                                    ; $5516: $7e
    ld hl, $d84c                                  ; $5517: $21 $4c $d8
    xor [hl]                                      ; $551a: $ae
    bit 7, a                                      ; $551b: $cb $7f
    jr z, jr_001_5557                             ; $551d: $28 $38

    ld c, $08                                     ; $551f: $0e $08
    ld a, $02                                     ; $5521: $3e $02
    call Call_000_03b6                            ; $5523: $cd $b6 $03
    ld c, $08                                     ; $5526: $0e $08

jr_001_5528:
    push bc                                       ; $5528: $c5
    call Call_000_05b6                            ; $5529: $cd $b6 $05
    ld a, $01                                     ; $552c: $3e $01
    call Call_001_5760                            ; $552e: $cd $60 $57
    call Call_001_595e                            ; $5531: $cd $5e $59
    rst RST_08                                    ; $5534: $cf
    pop bc                                        ; $5535: $c1
    dec c                                         ; $5536: $0d
    jr nz, jr_001_5528                            ; $5537: $20 $ef

    ld a, [$d636]                                 ; $5539: $fa $36 $d6
    ld c, a                                       ; $553c: $4f
    ld a, [$d637]                                 ; $553d: $fa $37 $d6
    ld b, a                                       ; $5540: $47
    call Call_001_581c                            ; $5541: $cd $1c $58
    ld c, $08                                     ; $5544: $0e $08

jr_001_5546:
    push bc                                       ; $5546: $c5
    call Call_000_05b6                            ; $5547: $cd $b6 $05
    ld a, $02                                     ; $554a: $3e $02
    call Call_001_5760                            ; $554c: $cd $60 $57
    call Call_001_595e                            ; $554f: $cd $5e $59
    rst RST_08                                    ; $5552: $cf
    pop bc                                        ; $5553: $c1
    dec c                                         ; $5554: $0d
    jr nz, jr_001_5546                            ; $5555: $20 $ef

jr_001_5557:
    rst RST_08                                    ; $5557: $cf
    ld bc, $005a                                  ; $5558: $01 $5a $00

jr_001_555b:
    push bc                                       ; $555b: $c5
    call Call_000_05b6                            ; $555c: $cd $b6 $05
    ld b, $03                                     ; $555f: $06 $03
    ld hl, $4ea6                                  ; $5561: $21 $a6 $4e
    call SwitchBankToBAndJumpToHL                 ; $5564: $cd $de $05
    ld a, [$c33a]                                 ; $5567: $fa $3a $c3
    bit 2, a                                      ; $556a: $cb $57
    jr nz, jr_001_5572                            ; $556c: $20 $04

    xor a                                         ; $556e: $af
    call Call_001_5760                            ; $556f: $cd $60 $57

jr_001_5572:
    call Call_001_595e                            ; $5572: $cd $5e $59
    rst RST_08                                    ; $5575: $cf
    pop bc                                        ; $5576: $c1
    ld a, [$c31e]                                 ; $5577: $fa $1e $c3
    and a                                         ; $557a: $a7
    jr nz, jr_001_5582                            ; $557b: $20 $05

    dec bc                                        ; $557d: $0b
    ld a, c                                       ; $557e: $79
    or b                                          ; $557f: $b0
    jr nz, jr_001_555b                            ; $5580: $20 $d9

jr_001_5582:
    jp Jump_001_5c51                              ; $5582: $c3 $51 $5c


GS05_StatePhase_01_TODO::
    ld b, $03                                     ; $5585: $06 $03
    ld hl, $4ee9                                  ; $5587: $21 $e9 $4e
    call SwitchBankToBAndJumpToHL                 ; $558a: $cd $de $05
    xor a                                         ; $558d: $af
    call Call_001_5760                            ; $558e: $cd $60 $57
    call Call_001_595e                            ; $5591: $cd $5e $59
    call Call_001_577b                            ; $5594: $cd $7b $57
    ld a, [$c31e]                                 ; $5597: $fa $1e $c3
    and $09                                       ; $559a: $e6 $09
    jr z, jr_001_55aa                             ; $559c: $28 $0c

    ld c, $03                                     ; $559e: $0e $03
    ld a, $02                                     ; $55a0: $3e $02
    call Call_000_03b6                            ; $55a2: $cd $b6 $03
    ld hl, StatePhase_Current                     ; $55a5: $21 $35 $d6
    inc [hl]                                      ; $55a8: $34
    ret                                           ; $55a9: $c9


jr_001_55aa:
    ld a, [$c31e]                                 ; $55aa: $fa $1e $c3
    and $02                                       ; $55ad: $e6 $02
    jr z, jr_001_55be                             ; $55af: $28 $0d

    ld c, $04                                     ; $55b1: $0e $04
    ld a, $02                                     ; $55b3: $3e $02
    call Call_000_03b6                            ; $55b5: $cd $b6 $03
    ld a, $03                                     ; $55b8: $3e $03
    ld [StatePhase_Current], a                    ; $55ba: $ea $35 $d6
    ret                                           ; $55bd: $c9


jr_001_55be:
    ret                                           ; $55be: $c9


GS05_StatePhase_05_TODO::
    ld bc, $003c                                  ; $55bf: $01 $3c $00
    call Call_000_05fa                            ; $55c2: $cd $fa $05
    ld a, $05                                     ; $55c5: $3e $05
    call Call_000_03b6                            ; $55c7: $cd $b6 $03
    ld c, $00                                     ; $55ca: $0e $00
    ld a, $01                                     ; $55cc: $3e $01
    call Call_000_03b6                            ; $55ce: $cd $b6 $03
    call Call_000_0399                            ; $55d1: $cd $99 $03
    ld c, $00                                     ; $55d4: $0e $00
    ld a, $01                                     ; $55d6: $3e $01
    call Call_000_03b6                            ; $55d8: $cd $b6 $03
    ld b, $03                                     ; $55db: $06 $03
    ld hl, $46f3                                  ; $55dd: $21 $f3 $46
    ld c, $08                                     ; $55e0: $0e $08
    ld de, $0083                                  ; $55e2: $11 $83 $00
    call Call_000_044e                            ; $55e5: $cd $4e $04
    call Call_000_0483                            ; $55e8: $cd $83 $04
    call Call_001_5749                            ; $55eb: $cd $49 $57
    xor a                                         ; $55ee: $af
    ld [$d80b], a                                 ; $55ef: $ea $0b $d8
    ld [$d80c], a                                 ; $55f2: $ea $0c $d8
    ld [$d809], a                                 ; $55f5: $ea $09 $d8
    ld a, $03                                     ; $55f8: $3e $03
    ld [$d80a], a                                 ; $55fa: $ea $0a $d8
    xor a                                         ; $55fd: $af
    ld [$d833], a                                 ; $55fe: $ea $33 $d8
    ld a, $01                                     ; $5601: $3e $01
    ld [$d805], a                                 ; $5603: $ea $05 $d8
    call Call_001_5732                            ; $5606: $cd $32 $57
    call Call_001_5bb0                            ; $5609: $cd $b0 $5b
    call Call_001_5860                            ; $560c: $cd $60 $58
    call Call_001_588a                            ; $560f: $cd $8a $58
    call Call_000_1b1f                            ; $5612: $cd $1f $1b
    ld a, $04                                     ; $5615: $3e $04
    ld [StatePhase_Current], a                    ; $5617: $ea $35 $d6
    ret                                           ; $561a: $c9


GS05_StatePhase_02_TODO::
    ld bc, $003c                                  ; $561b: $01 $3c $00
    call Call_000_05fa                            ; $561e: $cd $fa $05
    ld a, $05                                     ; $5621: $3e $05
    call Call_000_03b6                            ; $5623: $cd $b6 $03
    ld c, $00                                     ; $5626: $0e $00
    ld a, $01                                     ; $5628: $3e $01
    call Call_000_03b6                            ; $562a: $cd $b6 $03
    call Call_000_0399                            ; $562d: $cd $99 $03
    ld c, $00                                     ; $5630: $0e $00
    ld a, $01                                     ; $5632: $3e $01
    call Call_000_03b6                            ; $5634: $cd $b6 $03
    ld b, $03                                     ; $5637: $06 $03
    ld hl, $46f3                                  ; $5639: $21 $f3 $46
    ld c, $08                                     ; $563c: $0e $08
    ld de, $0083                                  ; $563e: $11 $83 $00
    call Call_000_044e                            ; $5641: $cd $4e $04
    call Call_000_0483                            ; $5644: $cd $83 $04
    call Call_001_5749                            ; $5647: $cd $49 $57
    call Call_001_5bb0                            ; $564a: $cd $b0 $5b
    call Call_001_5860                            ; $564d: $cd $60 $58
    ld a, [$d637]                                 ; $5650: $fa $37 $d6
    swap a                                        ; $5653: $cb $37
    ld c, a                                       ; $5655: $4f
    ld a, [$d636]                                 ; $5656: $fa $36 $d6
    sla a                                         ; $5659: $cb $27
    or c                                          ; $565b: $b1
    ld c, a                                       ; $565c: $4f
    ld b, $00                                     ; $565d: $06 $00
    ld hl, GS05_TODO_Data1                        ; $565f: $21 $77 $56
    add hl, bc                                    ; $5662: $09
    ld a, [hl+]                                   ; $5663: $2a
    ld [$d807], a                                 ; $5664: $ea $07 $d8
    ld a, [hl]                                    ; $5667: $7e
    ld [$d808], a                                 ; $5668: $ea $08 $d8
    xor a                                         ; $566b: $af
    ld [StatePhase_Current], a                    ; $566c: $ea $35 $d6
    ld a, $08                                     ; $566f: $3e $08
    ld [GameState_Current], a                     ; $5671: $ea $34 $d6
    jp Jump_000_1b1f                              ; $5674: $c3 $1f $1b


GS05_TODO_Data1::
    db $01, $00, $02, $00, $03, $00, $04, $00
    db $05, $00, $06, $00, $07, $00, $08, $00
    db $09, $00, $0a, $00, $0b, $00, $0c, $00
    db $0d, $00, $0e, $00, $0f, $00, $10, $00
    db $11, $00, $12, $00, $13, $00, $14, $00
    db $15, $00, $16, $00, $17, $00, $18, $00
    db $19, $00, $1a, $00, $1b, $00, $1c, $00
    db $1d, $00, $1e, $00, $1f, $00, $20, $00
    db $21, $00, $22, $00, $23, $00, $24, $00
    db $25, $00, $26, $00, $27, $00, $28, $00
    db $29, $00, $2a, $00, $2b, $00, $2c, $00
    db $2d, $00, $2e, $00, $2f, $00, $30, $00
    db $31, $00, $32, $00, $33, $00, $34, $00
    db $35, $00, $36, $00, $37, $00, $38, $00
    db $39, $00, $3a, $00, $3b, $00, $3c, $00
    db $3d, $00, $3e, $00, $3f, $00, $40, $00

GS05_StatePhase_03_TODO::
    ld bc, $003c                                  ; $56f7: $01 $3c $00
    call Call_000_05fa                            ; $56fa: $cd $fa $05
    ld a, $05                                     ; $56fd: $3e $05
    call Call_000_03b6                            ; $56ff: $cd $b6 $03
    ld c, $00                                     ; $5702: $0e $00
    ld a, $01                                     ; $5704: $3e $01
    call Call_000_03b6                            ; $5706: $cd $b6 $03
    call Call_000_0399                            ; $5709: $cd $99 $03
    ld c, $00                                     ; $570c: $0e $00
    ld a, $01                                     ; $570e: $3e $01
    call Call_000_03b6                            ; $5710: $cd $b6 $03
    ld b, $03                                     ; $5713: $06 $03
    ld hl, $46f3                                  ; $5715: $21 $f3 $46
    ld c, $08                                     ; $5718: $0e $08
    ld de, $0083                                  ; $571a: $11 $83 $00
    call Call_000_044e                            ; $571d: $cd $4e $04
    call Call_000_0483                            ; $5720: $cd $83 $04
    call Call_001_5749                            ; $5723: $cd $49 $57
    xor a                                         ; $5726: $af
    ld [StatePhase_Current], a                    ; $5727: $ea $35 $d6
    ld a, $02                                     ; $572a: $3e $02
    ld [GameState_Current], a                     ; $572c: $ea $34 $d6
    jp Jump_000_1b1f                              ; $572f: $c3 $1f $1b


Call_001_5732:
    ld a, [$a065]                                 ; $5732: $fa $65 $a0
    ld c, a                                       ; $5735: $4f
    ld b, $00                                     ; $5736: $06 $00
    ld hl, $a081                                  ; $5738: $21 $81 $a0
    add hl, bc                                    ; $573b: $09
    ld a, [hl]                                    ; $573c: $7e
    ld [$d636], a                                 ; $573d: $ea $36 $d6
    ld hl, $a084                                  ; $5740: $21 $84 $a0
    add hl, bc                                    ; $5743: $09
    ld a, [hl]                                    ; $5744: $7e
    ld [$d637], a                                 ; $5745: $ea $37 $d6
    ret                                           ; $5748: $c9


Call_001_5749:
    ld a, [$a065]                                 ; $5749: $fa $65 $a0
    ld c, a                                       ; $574c: $4f
    ld b, $00                                     ; $574d: $06 $00
    ld hl, $a081                                  ; $574f: $21 $81 $a0
    add hl, bc                                    ; $5752: $09
    ld a, [$d636]                                 ; $5753: $fa $36 $d6
    ld [hl], a                                    ; $5756: $77
    ld hl, $a084                                  ; $5757: $21 $84 $a0
    add hl, bc                                    ; $575a: $09
    ld a, [$d637]                                 ; $575b: $fa $37 $d6
    ld [hl], a                                    ; $575e: $77
    ret                                           ; $575f: $c9


Call_001_5760:
    push af                                       ; $5760: $f5
    ld a, [$d636]                                 ; $5761: $fa $36 $d6
    swap a                                        ; $5764: $cb $37
    add $20                                       ; $5766: $c6 $20
    ld b, a                                       ; $5768: $47
    ld a, [$d637]                                 ; $5769: $fa $37 $d6
    sla a                                         ; $576c: $cb $27
    sla a                                         ; $576e: $cb $27
    sla a                                         ; $5770: $cb $27
    add $32                                       ; $5772: $c6 $32
    ld c, a                                       ; $5774: $4f
    pop af                                        ; $5775: $f1
    add $60                                       ; $5776: $c6 $60
    jp Jump_000_20ce                              ; $5778: $c3 $ce $20


Call_001_577b:
    ld a, [$c322]                                 ; $577b: $fa $22 $c3
    and $f0                                       ; $577e: $e6 $f0
    ret z                                         ; $5780: $c8

    ld c, $0a                                     ; $5781: $0e $0a
    ld a, $02                                     ; $5783: $3e $02
    call Call_000_03b6                            ; $5785: $cd $b6 $03
    ld hl, $c322                                  ; $5788: $21 $22 $c3
    bit 5, [hl]                                   ; $578b: $cb $6e
    jr z, jr_001_5798                             ; $578d: $28 $09

    ld a, [$d636]                                 ; $578f: $fa $36 $d6
    dec a                                         ; $5792: $3d
    and $07                                       ; $5793: $e6 $07
    ld [$d636], a                                 ; $5795: $ea $36 $d6

jr_001_5798:
    bit 4, [hl]                                   ; $5798: $cb $66
    jr z, jr_001_57a5                             ; $579a: $28 $09

    ld a, [$d636]                                 ; $579c: $fa $36 $d6
    inc a                                         ; $579f: $3c
    and $07                                       ; $57a0: $e6 $07
    ld [$d636], a                                 ; $57a2: $ea $36 $d6

jr_001_57a5:
    bit 6, [hl]                                   ; $57a5: $cb $76
    jr z, jr_001_57b2                             ; $57a7: $28 $09

    ld a, [$d637]                                 ; $57a9: $fa $37 $d6
    dec a                                         ; $57ac: $3d
    and $07                                       ; $57ad: $e6 $07
    ld [$d637], a                                 ; $57af: $ea $37 $d6

jr_001_57b2:
    bit 7, [hl]                                   ; $57b2: $cb $7e
    jr z, jr_001_57bf                             ; $57b4: $28 $09

    ld a, [$d637]                                 ; $57b6: $fa $37 $d6
    inc a                                         ; $57b9: $3c
    and $07                                       ; $57ba: $e6 $07
    ld [$d637], a                                 ; $57bc: $ea $37 $d6

jr_001_57bf:
    ret                                           ; $57bf: $c9


Call_001_57c0:
    ld a, [$a065]                                 ; $57c0: $fa $65 $a0
    sla a                                         ; $57c3: $cb $27
    ld c, a                                       ; $57c5: $4f
    ld b, $00                                     ; $57c6: $06 $00
    ld hl, GS05_TODO_Data3                        ; $57c8: $21 $a4 $5c
    add hl, bc                                    ; $57cb: $09
    ld a, [hl+]                                   ; $57cc: $2a
    ld h, [hl]                                    ; $57cd: $66
    ld l, a                                       ; $57ce: $6f
    ld b, $00                                     ; $57cf: $06 $00

jr_001_57d1:
    ld c, $00                                     ; $57d1: $0e $00

jr_001_57d3:
    ld a, [hl+]                                   ; $57d3: $2a
    bit 7, a                                      ; $57d4: $cb $7f
    jr z, jr_001_57db                             ; $57d6: $28 $03

    call Call_001_581c                            ; $57d8: $cd $1c $58

jr_001_57db:
    inc c                                         ; $57db: $0c
    ld a, c                                       ; $57dc: $79
    cp $08                                        ; $57dd: $fe $08
    jr nz, jr_001_57d3                            ; $57df: $20 $f2

    inc b                                         ; $57e1: $04
    ld a, b                                       ; $57e2: $78
    cp $08                                        ; $57e3: $fe $08
    jr nz, jr_001_57d1                            ; $57e5: $20 $ea

    ret                                           ; $57e7: $c9


Call_001_57e8:
    ld a, [$a065]                                 ; $57e8: $fa $65 $a0
    sla a                                         ; $57eb: $cb $27
    ld c, a                                       ; $57ed: $4f
    ld b, $00                                     ; $57ee: $06 $00
    ld hl, GS05_TODO_Data3                        ; $57f0: $21 $a4 $5c
    add hl, bc                                    ; $57f3: $09
    ld a, [hl+]                                   ; $57f4: $2a
    ld h, [hl]                                    ; $57f5: $66
    ld l, a                                       ; $57f6: $6f
    ld b, $00                                     ; $57f7: $06 $00

jr_001_57f9:
    ld c, $00                                     ; $57f9: $0e $00

jr_001_57fb:
    ld a, [hl+]                                   ; $57fb: $2a
    bit 7, a                                      ; $57fc: $cb $7f
    jr z, jr_001_580f                             ; $57fe: $28 $0f

    ld a, [$d636]                                 ; $5800: $fa $36 $d6
    cp c                                          ; $5803: $b9
    jr nz, jr_001_580c                            ; $5804: $20 $06

    ld a, [$d637]                                 ; $5806: $fa $37 $d6
    cp b                                          ; $5809: $b8
    jr z, jr_001_580f                             ; $580a: $28 $03

jr_001_580c:
    call Call_001_581c                            ; $580c: $cd $1c $58

jr_001_580f:
    inc c                                         ; $580f: $0c
    ld a, c                                       ; $5810: $79
    cp $08                                        ; $5811: $fe $08
    jr nz, jr_001_57fb                            ; $5813: $20 $e6

    inc b                                         ; $5815: $04
    ld a, b                                       ; $5816: $78
    cp $08                                        ; $5817: $fe $08
    jr nz, jr_001_57f9                            ; $5819: $20 $de

    ret                                           ; $581b: $c9


Call_001_581c:
    push bc                                       ; $581c: $c5
    push hl                                       ; $581d: $e5
    ld l, b                                       ; $581e: $68
    ld h, $00                                     ; $581f: $26 $00
    sla l                                         ; $5821: $cb $25
    rl h                                          ; $5823: $cb $14
    sla l                                         ; $5825: $cb $25
    rl h                                          ; $5827: $cb $14
    sla l                                         ; $5829: $cb $25
    rl h                                          ; $582b: $cb $14
    sla l                                         ; $582d: $cb $25
    rl h                                          ; $582f: $cb $14
    sla l                                         ; $5831: $cb $25
    rl h                                          ; $5833: $cb $14
    sla c                                         ; $5835: $cb $21
    ld b, $00                                     ; $5837: $06 $00
    add hl, bc                                    ; $5839: $09
    ld bc, $98c4                                  ; $583a: $01 $c4 $98
    add hl, bc                                    ; $583d: $09
    ld a, h                                       ; $583e: $7c
    ld [$c100], a                                 ; $583f: $ea $00 $c1
    ld a, l                                       ; $5842: $7d
    ld [$c101], a                                 ; $5843: $ea $01 $c1
    ld a, $01                                     ; $5846: $3e $01
    ld [$c102], a                                 ; $5848: $ea $02 $c1
    ld a, $55                                     ; $584b: $3e $55
    ld [$c103], a                                 ; $584d: $ea $03 $c1
    ld a, $00                                     ; $5850: $3e $00
    ld [$c104], a                                 ; $5852: $ea $04 $c1
    ld a, $00                                     ; $5855: $3e $00
    ld bc, $c100                                  ; $5857: $01 $00 $c1
    call Call_000_0738                            ; $585a: $cd $38 $07
    pop hl                                        ; $585d: $e1
    pop bc                                        ; $585e: $c1
    ret                                           ; $585f: $c9


Call_001_5860:
    ld a, [$a065]                                 ; $5860: $fa $65 $a0
    sla a                                         ; $5863: $cb $27
    ld c, a                                       ; $5865: $4f
    ld b, $00                                     ; $5866: $06 $00
    ld hl, GS05_TODO_Data3                        ; $5868: $21 $a4 $5c
    add hl, bc                                    ; $586b: $09
    ld a, [hl+]                                   ; $586c: $2a
    ld h, [hl]                                    ; $586d: $66
    ld l, a                                       ; $586e: $6f
    ld a, [$d637]                                 ; $586f: $fa $37 $d6
    sla a                                         ; $5872: $cb $27
    sla a                                         ; $5874: $cb $27
    sla a                                         ; $5876: $cb $27
    ld c, a                                       ; $5878: $4f
    ld a, [$d636]                                 ; $5879: $fa $36 $d6
    or c                                          ; $587c: $b1
    ld c, a                                       ; $587d: $4f
    ld b, $00                                     ; $587e: $06 $00
    add hl, bc                                    ; $5880: $09
    bit 7, [hl]                                   ; $5881: $cb $7e
    ret nz                                        ; $5883: $c0

    ld a, [hl]                                    ; $5884: $7e
    cp $63                                        ; $5885: $fe $63
    ret z                                         ; $5887: $c8

    inc [hl]                                      ; $5888: $34
    ret                                           ; $5889: $c9


Call_001_588a:
    xor a                                         ; $588a: $af
    ld [$d842], a                                 ; $588b: $ea $42 $d8
    ld a, [$a065]                                 ; $588e: $fa $65 $a0
    sla a                                         ; $5891: $cb $27
    ld c, a                                       ; $5893: $4f
    ld b, $00                                     ; $5894: $06 $00
    ld hl, GS05_TODO_Data3                        ; $5896: $21 $a4 $5c
    add hl, bc                                    ; $5899: $09
    ld a, [hl+]                                   ; $589a: $2a
    ld h, [hl]                                    ; $589b: $66
    ld l, a                                       ; $589c: $6f
    ld a, [$d637]                                 ; $589d: $fa $37 $d6
    sla a                                         ; $58a0: $cb $27
    sla a                                         ; $58a2: $cb $27
    sla a                                         ; $58a4: $cb $27
    ld c, a                                       ; $58a6: $4f
    ld a, [$d636]                                 ; $58a7: $fa $36 $d6
    or c                                          ; $58aa: $b1
    ld c, a                                       ; $58ab: $4f
    ld b, $00                                     ; $58ac: $06 $00
    add hl, bc                                    ; $58ae: $09
    bit 7, [hl]                                   ; $58af: $cb $7e
    push af                                       ; $58b1: $f5
    jr nz, jr_001_58ff                            ; $58b2: $20 $4b

    push hl                                       ; $58b4: $e5
    ld a, [$a065]                                 ; $58b5: $fa $65 $a0
    ld c, a                                       ; $58b8: $4f
    ld b, $00                                     ; $58b9: $06 $00
    ld hl, $a07e                                  ; $58bb: $21 $7e $a0
    add hl, bc                                    ; $58be: $09
    inc [hl]                                      ; $58bf: $34
    pop hl                                        ; $58c0: $e1
    set 7, [hl]                                   ; $58c1: $cb $fe
    ld a, [$a065]                                 ; $58c3: $fa $65 $a0
    sla a                                         ; $58c6: $cb $27
    ld c, a                                       ; $58c8: $4f
    ld b, $00                                     ; $58c9: $06 $00
    ld hl, GS05_TODO_Data2                        ; $58cb: $21 $9e $5c
    add hl, bc                                    ; $58ce: $09
    ld a, [hl+]                                   ; $58cf: $2a
    ld h, [hl]                                    ; $58d0: $66
    ld l, a                                       ; $58d1: $6f
    ld a, [$d637]                                 ; $58d2: $fa $37 $d6
    sla a                                         ; $58d5: $cb $27
    sla a                                         ; $58d7: $cb $27
    sla a                                         ; $58d9: $cb $27
    ld c, a                                       ; $58db: $4f
    ld a, [$d636]                                 ; $58dc: $fa $36 $d6
    or c                                          ; $58df: $b1
    ld c, a                                       ; $58e0: $4f
    sla a                                         ; $58e1: $cb $27
    add c                                         ; $58e3: $81
    ld c, a                                       ; $58e4: $4f
    ld b, $00                                     ; $58e5: $06 $00
    add hl, bc                                    ; $58e7: $09
    call Call_001_5154                            ; $58e8: $cd $54 $51
    ld [hl], c                                    ; $58eb: $71
    inc hl                                        ; $58ec: $23
    ld a, [hl]                                    ; $58ed: $7e
    and $f0                                       ; $58ee: $e6 $f0
    or b                                          ; $58f0: $b0
    ld [hl], a                                    ; $58f1: $77
    ld a, $01                                     ; $58f2: $3e $01
    ld [$d842], a                                 ; $58f4: $ea $42 $d8
    ld a, [$d833]                                 ; $58f7: $fa $33 $d8
    and a                                         ; $58fa: $a7
    jr nz, jr_001_58ff                            ; $58fb: $20 $02

    set 3, [hl]                                   ; $58fd: $cb $de

jr_001_58ff:
    ld a, [$a065]                                 ; $58ff: $fa $65 $a0
    sla a                                         ; $5902: $cb $27
    ld c, a                                       ; $5904: $4f
    ld b, $00                                     ; $5905: $06 $00
    ld hl, GS05_TODO_Data2                        ; $5907: $21 $9e $5c
    add hl, bc                                    ; $590a: $09
    ld a, [hl+]                                   ; $590b: $2a
    ld h, [hl]                                    ; $590c: $66
    ld l, a                                       ; $590d: $6f
    ld a, [$d637]                                 ; $590e: $fa $37 $d6
    sla a                                         ; $5911: $cb $27
    sla a                                         ; $5913: $cb $27
    sla a                                         ; $5915: $cb $27
    ld c, a                                       ; $5917: $4f
    ld a, [$d636]                                 ; $5918: $fa $36 $d6
    or c                                          ; $591b: $b1
    ld c, a                                       ; $591c: $4f
    sla a                                         ; $591d: $cb $27
    add c                                         ; $591f: $81
    ld c, a                                       ; $5920: $4f
    ld b, $00                                     ; $5921: $06 $00
    add hl, bc                                    ; $5923: $09
    inc hl                                        ; $5924: $23
    push hl                                       ; $5925: $e5
    call Call_001_5154                            ; $5926: $cd $54 $51
    ld a, [$d842]                                 ; $5929: $fa $42 $d8
    and a                                         ; $592c: $a7
    jr nz, jr_001_5947                            ; $592d: $20 $18

    ld a, [hl+]                                   ; $592f: $2a
    and $70                                       ; $5930: $e6 $70
    swap a                                        ; $5932: $cb $37
    cp b                                          ; $5934: $b8
    jr z, jr_001_593b                             ; $5935: $28 $04

    jr nc, jr_001_595b                            ; $5937: $30 $22

    jr jr_001_5947                                ; $5939: $18 $0c

jr_001_593b:
    ld a, [hl]                                    ; $593b: $7e
    cp c                                          ; $593c: $b9
    jr c, jr_001_5947                             ; $593d: $38 $08

    jr nz, jr_001_595b                            ; $593f: $20 $1a

    ld a, [$d833]                                 ; $5941: $fa $33 $d8
    and a                                         ; $5944: $a7
    jr z, jr_001_595b                             ; $5945: $28 $14

jr_001_5947:
    pop hl                                        ; $5947: $e1
    ld a, [hl]                                    ; $5948: $7e
    and $0f                                       ; $5949: $e6 $0f
    swap b                                        ; $594b: $cb $30
    or b                                          ; $594d: $b0
    ld [hl+], a                                   ; $594e: $22
    ld [hl], c                                    ; $594f: $71
    ld a, [$d833]                                 ; $5950: $fa $33 $d8
    and a                                         ; $5953: $a7
    jr nz, jr_001_595c                            ; $5954: $20 $06

    dec hl                                        ; $5956: $2b
    set 7, [hl]                                   ; $5957: $cb $fe
    jr jr_001_595c                                ; $5959: $18 $01

jr_001_595b:
    pop hl                                        ; $595b: $e1

jr_001_595c:
    pop af                                        ; $595c: $f1
    ret                                           ; $595d: $c9


Call_001_595e:
    ld a, [$a065]                                 ; $595e: $fa $65 $a0
    sla a                                         ; $5961: $cb $27
    ld c, a                                       ; $5963: $4f
    ld b, $00                                     ; $5964: $06 $00
    ld hl, GS05_TODO_Data3                        ; $5966: $21 $a4 $5c
    add hl, bc                                    ; $5969: $09
    ld a, [hl+]                                   ; $596a: $2a
    ld h, [hl]                                    ; $596b: $66
    ld l, a                                       ; $596c: $6f
    ld a, [$d637]                                 ; $596d: $fa $37 $d6
    sla a                                         ; $5970: $cb $27
    sla a                                         ; $5972: $cb $27
    sla a                                         ; $5974: $cb $27
    ld c, a                                       ; $5976: $4f
    ld a, [$d636]                                 ; $5977: $fa $36 $d6
    or c                                          ; $597a: $b1
    ld c, a                                       ; $597b: $4f
    ld b, $00                                     ; $597c: $06 $00
    add hl, bc                                    ; $597e: $09
    ld a, [hl]                                    ; $597f: $7e
    push af                                       ; $5980: $f5
    and $7f                                       ; $5981: $e6 $7f
    call Call_000_1972                            ; $5983: $cd $72 $19
    add $51                                       ; $5986: $c6 $51
    ld bc, $4818                                  ; $5988: $01 $18 $48
    call Call_000_20ce                            ; $598b: $cd $ce $20
    pop af                                        ; $598e: $f1
    cp $0a                                        ; $598f: $fe $0a
    jr z, jr_001_599b                             ; $5991: $28 $08

    add $51                                       ; $5993: $c6 $51
    ld bc, $4018                                  ; $5995: $01 $18 $40
    call Call_000_20ce                            ; $5998: $cd $ce $20

jr_001_599b:
    pop af                                        ; $599b: $f1
    pop af                                        ; $599c: $f1
    bit 7, a                                      ; $599d: $cb $7f
    jp z, Jump_001_5a72                           ; $599f: $ca $72 $5a

    ld a, [$a065]                                 ; $59a2: $fa $65 $a0
    sla a                                         ; $59a5: $cb $27
    ld c, a                                       ; $59a7: $4f
    ld b, $00                                     ; $59a8: $06 $00
    ld hl, GS05_TODO_Data2                        ; $59aa: $21 $9e $5c
    add hl, bc                                    ; $59ad: $09
    ld a, [hl+]                                   ; $59ae: $2a
    ld h, [hl]                                    ; $59af: $66
    ld l, a                                       ; $59b0: $6f
    ld a, [$d637]                                 ; $59b1: $fa $37 $d6
    sla a                                         ; $59b4: $cb $27
    sla a                                         ; $59b6: $cb $27
    sla a                                         ; $59b8: $cb $27
    ld c, a                                       ; $59ba: $4f
    ld a, [$d636]                                 ; $59bb: $fa $36 $d6
    or c                                          ; $59be: $b1
    ld c, a                                       ; $59bf: $4f
    sla a                                         ; $59c0: $cb $27
    add c                                         ; $59c2: $81
    ld c, a                                       ; $59c3: $4f
    ld b, $00                                     ; $59c4: $06 $00
    add hl, bc                                    ; $59c6: $09
    ld c, [hl]                                    ; $59c7: $4e
    inc hl                                        ; $59c8: $23
    ld b, [hl]                                    ; $59c9: $46
    call Call_001_5182                            ; $59ca: $cd $82 $51
    push bc                                       ; $59cd: $c5
    ld a, b                                       ; $59ce: $78
    and $f0                                       ; $59cf: $e6 $f0
    swap a                                        ; $59d1: $cb $37
    add $51                                       ; $59d3: $c6 $51
    ld bc, $0818                                  ; $59d5: $01 $18 $08
    call Call_000_20ce                            ; $59d8: $cd $ce $20
    pop bc                                        ; $59db: $c1
    push bc                                       ; $59dc: $c5
    ld a, b                                       ; $59dd: $78
    and $0f                                       ; $59de: $e6 $0f
    add $51                                       ; $59e0: $c6 $51
    ld bc, $1018                                  ; $59e2: $01 $18 $10
    call Call_000_20ce                            ; $59e5: $cd $ce $20
    pop bc                                        ; $59e8: $c1
    push bc                                       ; $59e9: $c5
    ld a, c                                       ; $59ea: $79
    and $f0                                       ; $59eb: $e6 $f0
    swap a                                        ; $59ed: $cb $37
    add $51                                       ; $59ef: $c6 $51
    ld bc, $2018                                  ; $59f1: $01 $18 $20
    call Call_000_20ce                            ; $59f4: $cd $ce $20
    pop bc                                        ; $59f7: $c1
    ld a, c                                       ; $59f8: $79
    and $0f                                       ; $59f9: $e6 $0f
    add $51                                       ; $59fb: $c6 $51
    ld bc, $2818                                  ; $59fd: $01 $18 $28
    call Call_000_20ce                            ; $5a00: $cd $ce $20
    ld a, [hl]                                    ; $5a03: $7e
    call Call_001_5c07                            ; $5a04: $cd $07 $5c
    ld a, [$a065]                                 ; $5a07: $fa $65 $a0
    sla a                                         ; $5a0a: $cb $27
    ld c, a                                       ; $5a0c: $4f
    ld b, $00                                     ; $5a0d: $06 $00
    ld hl, GS05_TODO_Data2                        ; $5a0f: $21 $9e $5c
    add hl, bc                                    ; $5a12: $09
    ld a, [hl+]                                   ; $5a13: $2a
    ld h, [hl]                                    ; $5a14: $66
    ld l, a                                       ; $5a15: $6f
    ld a, [$d637]                                 ; $5a16: $fa $37 $d6
    sla a                                         ; $5a19: $cb $27
    sla a                                         ; $5a1b: $cb $27
    sla a                                         ; $5a1d: $cb $27
    ld c, a                                       ; $5a1f: $4f
    ld a, [$d636]                                 ; $5a20: $fa $36 $d6
    or c                                          ; $5a23: $b1
    ld c, a                                       ; $5a24: $4f
    sla a                                         ; $5a25: $cb $27
    add c                                         ; $5a27: $81
    ld c, a                                       ; $5a28: $4f
    ld b, $00                                     ; $5a29: $06 $00
    add hl, bc                                    ; $5a2b: $09
    inc hl                                        ; $5a2c: $23
    ld a, [hl+]                                   ; $5a2d: $2a
    and $f0                                       ; $5a2e: $e6 $f0
    swap a                                        ; $5a30: $cb $37
    ld b, a                                       ; $5a32: $47
    ld c, [hl]                                    ; $5a33: $4e
    call Call_001_5182                            ; $5a34: $cd $82 $51
    push bc                                       ; $5a37: $c5
    ld a, b                                       ; $5a38: $78
    and $f0                                       ; $5a39: $e6 $f0
    swap a                                        ; $5a3b: $cb $37
    add $51                                       ; $5a3d: $c6 $51
    ld bc, $6818                                  ; $5a3f: $01 $18 $68
    call Call_000_20ce                            ; $5a42: $cd $ce $20
    pop bc                                        ; $5a45: $c1
    push bc                                       ; $5a46: $c5
    ld a, b                                       ; $5a47: $78
    and $0f                                       ; $5a48: $e6 $0f
    add $51                                       ; $5a4a: $c6 $51
    ld bc, $7018                                  ; $5a4c: $01 $18 $70
    call Call_000_20ce                            ; $5a4f: $cd $ce $20
    pop bc                                        ; $5a52: $c1
    push bc                                       ; $5a53: $c5
    ld a, c                                       ; $5a54: $79
    and $f0                                       ; $5a55: $e6 $f0
    swap a                                        ; $5a57: $cb $37
    add $51                                       ; $5a59: $c6 $51
    ld bc, $8018                                  ; $5a5b: $01 $18 $80
    call Call_000_20ce                            ; $5a5e: $cd $ce $20
    pop bc                                        ; $5a61: $c1
    ld a, c                                       ; $5a62: $79
    and $0f                                       ; $5a63: $e6 $0f
    add $51                                       ; $5a65: $c6 $51
    ld bc, $8818                                  ; $5a67: $01 $18 $88
    call Call_000_20ce                            ; $5a6a: $cd $ce $20
    dec hl                                        ; $5a6d: $2b
    ld a, [hl]                                    ; $5a6e: $7e
    jp Jump_001_5c2c                              ; $5a6f: $c3 $2c $5c


Jump_001_5a72:
    ld a, $80                                     ; $5a72: $3e $80
    ld bc, $0818                                  ; $5a74: $01 $18 $08
    call Call_000_20ce                            ; $5a77: $cd $ce $20
    ld a, $80                                     ; $5a7a: $3e $80
    ld bc, $1018                                  ; $5a7c: $01 $18 $10
    call Call_000_20ce                            ; $5a7f: $cd $ce $20
    ld a, $80                                     ; $5a82: $3e $80
    ld bc, $2018                                  ; $5a84: $01 $18 $20
    call Call_000_20ce                            ; $5a87: $cd $ce $20
    ld a, $80                                     ; $5a8a: $3e $80
    ld bc, $2818                                  ; $5a8c: $01 $18 $28
    call Call_000_20ce                            ; $5a8f: $cd $ce $20
    ld a, $80                                     ; $5a92: $3e $80
    ld bc, $6818                                  ; $5a94: $01 $18 $68
    call Call_000_20ce                            ; $5a97: $cd $ce $20
    ld a, $80                                     ; $5a9a: $3e $80
    ld bc, $7018                                  ; $5a9c: $01 $18 $70
    call Call_000_20ce                            ; $5a9f: $cd $ce $20
    ld a, $80                                     ; $5aa2: $3e $80
    ld bc, $8018                                  ; $5aa4: $01 $18 $80
    call Call_000_20ce                            ; $5aa7: $cd $ce $20
    ld a, $80                                     ; $5aaa: $3e $80
    ld bc, $8818                                  ; $5aac: $01 $18 $88
    call Call_000_20ce                            ; $5aaf: $cd $ce $20
    xor a                                         ; $5ab2: $af
    call Call_001_5c07                            ; $5ab3: $cd $07 $5c
    jp Jump_001_5c2c                              ; $5ab6: $c3 $2c $5c


Call_001_5ab9:
    ld a, [$d84c]                                 ; $5ab9: $fa $4c $d8
    push af                                       ; $5abc: $f5
    and $7f                                       ; $5abd: $e6 $7f
    call Call_000_1972                            ; $5abf: $cd $72 $19
    add $51                                       ; $5ac2: $c6 $51
    ld bc, $4818                                  ; $5ac4: $01 $18 $48
    call Call_000_20ce                            ; $5ac7: $cd $ce $20
    pop af                                        ; $5aca: $f1
    cp $0a                                        ; $5acb: $fe $0a
    jr z, jr_001_5ad7                             ; $5acd: $28 $08

    add $51                                       ; $5acf: $c6 $51
    ld bc, $4018                                  ; $5ad1: $01 $18 $40
    call Call_000_20ce                            ; $5ad4: $cd $ce $20

jr_001_5ad7:
    pop af                                        ; $5ad7: $f1
    pop af                                        ; $5ad8: $f1
    bit 7, a                                      ; $5ad9: $cb $7f
    jp z, Jump_001_5b69                           ; $5adb: $ca $69 $5b

    ld hl, $d849                                  ; $5ade: $21 $49 $d8
    ld c, [hl]                                    ; $5ae1: $4e
    inc hl                                        ; $5ae2: $23
    ld b, [hl]                                    ; $5ae3: $46
    call Call_001_5182                            ; $5ae4: $cd $82 $51
    push bc                                       ; $5ae7: $c5
    ld a, b                                       ; $5ae8: $78
    and $f0                                       ; $5ae9: $e6 $f0
    swap a                                        ; $5aeb: $cb $37
    add $51                                       ; $5aed: $c6 $51
    ld bc, $0818                                  ; $5aef: $01 $18 $08
    call Call_000_20ce                            ; $5af2: $cd $ce $20
    pop bc                                        ; $5af5: $c1
    push bc                                       ; $5af6: $c5
    ld a, b                                       ; $5af7: $78
    and $0f                                       ; $5af8: $e6 $0f
    add $51                                       ; $5afa: $c6 $51
    ld bc, $1018                                  ; $5afc: $01 $18 $10
    call Call_000_20ce                            ; $5aff: $cd $ce $20
    pop bc                                        ; $5b02: $c1
    push bc                                       ; $5b03: $c5
    ld a, c                                       ; $5b04: $79
    and $f0                                       ; $5b05: $e6 $f0
    swap a                                        ; $5b07: $cb $37
    add $51                                       ; $5b09: $c6 $51
    ld bc, $2018                                  ; $5b0b: $01 $18 $20
    call Call_000_20ce                            ; $5b0e: $cd $ce $20
    pop bc                                        ; $5b11: $c1
    ld a, c                                       ; $5b12: $79
    and $0f                                       ; $5b13: $e6 $0f
    add $51                                       ; $5b15: $c6 $51
    ld bc, $2818                                  ; $5b17: $01 $18 $28
    call Call_000_20ce                            ; $5b1a: $cd $ce $20
    ld a, [hl]                                    ; $5b1d: $7e
    call Call_001_5c07                            ; $5b1e: $cd $07 $5c
    ld hl, $d84a                                  ; $5b21: $21 $4a $d8
    ld a, [hl+]                                   ; $5b24: $2a
    and $f0                                       ; $5b25: $e6 $f0
    swap a                                        ; $5b27: $cb $37
    ld b, a                                       ; $5b29: $47
    ld c, [hl]                                    ; $5b2a: $4e
    call Call_001_5182                            ; $5b2b: $cd $82 $51
    push bc                                       ; $5b2e: $c5
    ld a, b                                       ; $5b2f: $78
    and $f0                                       ; $5b30: $e6 $f0
    swap a                                        ; $5b32: $cb $37
    add $51                                       ; $5b34: $c6 $51
    ld bc, $6818                                  ; $5b36: $01 $18 $68
    call Call_000_20ce                            ; $5b39: $cd $ce $20
    pop bc                                        ; $5b3c: $c1
    push bc                                       ; $5b3d: $c5
    ld a, b                                       ; $5b3e: $78
    and $0f                                       ; $5b3f: $e6 $0f
    add $51                                       ; $5b41: $c6 $51
    ld bc, $7018                                  ; $5b43: $01 $18 $70
    call Call_000_20ce                            ; $5b46: $cd $ce $20
    pop bc                                        ; $5b49: $c1
    push bc                                       ; $5b4a: $c5
    ld a, c                                       ; $5b4b: $79
    and $f0                                       ; $5b4c: $e6 $f0
    swap a                                        ; $5b4e: $cb $37
    add $51                                       ; $5b50: $c6 $51
    ld bc, $8018                                  ; $5b52: $01 $18 $80
    call Call_000_20ce                            ; $5b55: $cd $ce $20
    pop bc                                        ; $5b58: $c1
    ld a, c                                       ; $5b59: $79
    and $0f                                       ; $5b5a: $e6 $0f
    add $51                                       ; $5b5c: $c6 $51
    ld bc, $8818                                  ; $5b5e: $01 $18 $88
    call Call_000_20ce                            ; $5b61: $cd $ce $20
    dec hl                                        ; $5b64: $2b
    ld a, [hl]                                    ; $5b65: $7e
    jp Jump_001_5c2c                              ; $5b66: $c3 $2c $5c


Jump_001_5b69:
    ld a, $80                                     ; $5b69: $3e $80
    ld bc, $0818                                  ; $5b6b: $01 $18 $08
    call Call_000_20ce                            ; $5b6e: $cd $ce $20
    ld a, $80                                     ; $5b71: $3e $80
    ld bc, $1018                                  ; $5b73: $01 $18 $10
    call Call_000_20ce                            ; $5b76: $cd $ce $20
    ld a, $80                                     ; $5b79: $3e $80
    ld bc, $2018                                  ; $5b7b: $01 $18 $20
    call Call_000_20ce                            ; $5b7e: $cd $ce $20
    ld a, $80                                     ; $5b81: $3e $80
    ld bc, $2818                                  ; $5b83: $01 $18 $28
    call Call_000_20ce                            ; $5b86: $cd $ce $20
    ld a, $80                                     ; $5b89: $3e $80
    ld bc, $6818                                  ; $5b8b: $01 $18 $68
    call Call_000_20ce                            ; $5b8e: $cd $ce $20
    ld a, $80                                     ; $5b91: $3e $80
    ld bc, $7018                                  ; $5b93: $01 $18 $70
    call Call_000_20ce                            ; $5b96: $cd $ce $20
    ld a, $80                                     ; $5b99: $3e $80
    ld bc, $8018                                  ; $5b9b: $01 $18 $80
    call Call_000_20ce                            ; $5b9e: $cd $ce $20
    ld a, $80                                     ; $5ba1: $3e $80
    ld bc, $8818                                  ; $5ba3: $01 $18 $88
    call Call_000_20ce                            ; $5ba6: $cd $ce $20
    xor a                                         ; $5ba9: $af
    call Call_001_5c07                            ; $5baa: $cd $07 $5c
    jp Jump_001_5c2c                              ; $5bad: $c3 $2c $5c


Call_001_5bb0:
    ld a, [$a065]                                 ; $5bb0: $fa $65 $a0
    sla a                                         ; $5bb3: $cb $27
    ld c, a                                       ; $5bb5: $4f
    ld b, $00                                     ; $5bb6: $06 $00
    ld hl, GS05_TODO_Data3                        ; $5bb8: $21 $a4 $5c
    add hl, bc                                    ; $5bbb: $09
    ld a, [hl+]                                   ; $5bbc: $2a
    ld h, [hl]                                    ; $5bbd: $66
    ld l, a                                       ; $5bbe: $6f
    ld a, [$d637]                                 ; $5bbf: $fa $37 $d6
    sla a                                         ; $5bc2: $cb $27
    sla a                                         ; $5bc4: $cb $27
    sla a                                         ; $5bc6: $cb $27
    ld c, a                                       ; $5bc8: $4f
    ld a, [$d636]                                 ; $5bc9: $fa $36 $d6
    or c                                          ; $5bcc: $b1
    ld c, a                                       ; $5bcd: $4f
    ld b, $00                                     ; $5bce: $06 $00
    add hl, bc                                    ; $5bd0: $09
    ld a, [hl]                                    ; $5bd1: $7e
    ld [$d84c], a                                 ; $5bd2: $ea $4c $d8
    ld a, [$a065]                                 ; $5bd5: $fa $65 $a0
    sla a                                         ; $5bd8: $cb $27
    ld c, a                                       ; $5bda: $4f
    ld b, $00                                     ; $5bdb: $06 $00
    ld hl, GS05_TODO_Data2                        ; $5bdd: $21 $9e $5c
    add hl, bc                                    ; $5be0: $09
    ld a, [hl+]                                   ; $5be1: $2a
    ld h, [hl]                                    ; $5be2: $66
    ld l, a                                       ; $5be3: $6f
    ld a, [$d637]                                 ; $5be4: $fa $37 $d6
    sla a                                         ; $5be7: $cb $27
    sla a                                         ; $5be9: $cb $27
    sla a                                         ; $5beb: $cb $27
    ld c, a                                       ; $5bed: $4f
    ld a, [$d636]                                 ; $5bee: $fa $36 $d6
    or c                                          ; $5bf1: $b1
    ld c, a                                       ; $5bf2: $4f
    sla a                                         ; $5bf3: $cb $27
    add c                                         ; $5bf5: $81
    ld c, a                                       ; $5bf6: $4f
    ld b, $00                                     ; $5bf7: $06 $00
    add hl, bc                                    ; $5bf9: $09
    ld a, [hl+]                                   ; $5bfa: $2a
    ld [$d849], a                                 ; $5bfb: $ea $49 $d8
    ld a, [hl+]                                   ; $5bfe: $2a
    ld [$d84a], a                                 ; $5bff: $ea $4a $d8
    ld a, [hl]                                    ; $5c02: $7e
    ld [$d84b], a                                 ; $5c03: $ea $4b $d8
    ret                                           ; $5c06: $c9


Call_001_5c07:
    push af                                       ; $5c07: $f5
    push hl                                       ; $5c08: $e5
    bit 3, a                                      ; $5c09: $cb $5f
    jr z, jr_001_5c17                             ; $5c0b: $28 $0a

    ld a, $01                                     ; $5c0d: $3e $01
    ld bc, $5c22                                  ; $5c0f: $01 $22 $5c
    call Call_000_0738                            ; $5c12: $cd $38 $07
    jr jr_001_5c1f                                ; $5c15: $18 $08

jr_001_5c17:
    ld a, $01                                     ; $5c17: $3e $01
    ld bc, $5c27                                  ; $5c19: $01 $27 $5c
    call Call_000_0738                            ; $5c1c: $cd $38 $07

jr_001_5c1f:
    pop hl                                        ; $5c1f: $e1
    pop af                                        ; $5c20: $f1
    ret                                           ; $5c21: $c9


    sbc b                                         ; $5c22: $98
    ld h, [hl]                                    ; $5c23: $66
    ld bc, $002f                                  ; $5c24: $01 $2f $00
    sbc b                                         ; $5c27: $98
    ld h, [hl]                                    ; $5c28: $66
    ld bc, $002b                                  ; $5c29: $01 $2b $00

Jump_001_5c2c:
    push af                                       ; $5c2c: $f5
    push hl                                       ; $5c2d: $e5
    bit 7, a                                      ; $5c2e: $cb $7f
    jr z, jr_001_5c3c                             ; $5c30: $28 $0a

    ld a, $01                                     ; $5c32: $3e $01
    ld bc, $5c47                                  ; $5c34: $01 $47 $5c
    call Call_000_0738                            ; $5c37: $cd $38 $07
    jr jr_001_5c44                                ; $5c3a: $18 $08

jr_001_5c3c:
    ld a, $01                                     ; $5c3c: $3e $01
    ld bc, $5c4c                                  ; $5c3e: $01 $4c $5c
    call Call_000_0738                            ; $5c41: $cd $38 $07

jr_001_5c44:
    pop hl                                        ; $5c44: $e1
    pop af                                        ; $5c45: $f1
    ret                                           ; $5c46: $c9


    sbc b                                         ; $5c47: $98
    ld [hl], d                                    ; $5c48: $72
    ld bc, $002f                                  ; $5c49: $01 $2f $00
    sbc b                                         ; $5c4c: $98
    ld [hl], d                                    ; $5c4d: $72
    ld bc, $002b                                  ; $5c4e: $01 $2b $00

Jump_001_5c51:
    ld a, [$d637]                                 ; $5c51: $fa $37 $d6
    cp $07                                        ; $5c54: $fe $07
    jr nz, jr_001_5c5e                            ; $5c56: $20 $06

    ld a, [$d636]                                 ; $5c58: $fa $36 $d6
    cp $07                                        ; $5c5b: $fe $07
    ret z                                         ; $5c5d: $c8

jr_001_5c5e:
    ld a, [$a065]                                 ; $5c5e: $fa $65 $a0
    sla a                                         ; $5c61: $cb $27
    ld c, a                                       ; $5c63: $4f
    ld b, $00                                     ; $5c64: $06 $00
    ld hl, GS05_TODO_Data3                        ; $5c66: $21 $a4 $5c
    add hl, bc                                    ; $5c69: $09
    ld a, [hl+]                                   ; $5c6a: $2a
    ld h, [hl]                                    ; $5c6b: $66
    ld l, a                                       ; $5c6c: $6f
    ld a, [$d637]                                 ; $5c6d: $fa $37 $d6
    sla a                                         ; $5c70: $cb $27
    sla a                                         ; $5c72: $cb $27
    sla a                                         ; $5c74: $cb $27
    ld c, a                                       ; $5c76: $4f
    ld a, [$d636]                                 ; $5c77: $fa $36 $d6
    or c                                          ; $5c7a: $b1
    ld c, a                                       ; $5c7b: $4f
    ld b, $00                                     ; $5c7c: $06 $00
    add hl, bc                                    ; $5c7e: $09
    inc hl                                        ; $5c7f: $23
    bit 7, [hl]                                   ; $5c80: $cb $7e
    ret nz                                        ; $5c82: $c0

    ld a, [$d636]                                 ; $5c83: $fa $36 $d6
    inc a                                         ; $5c86: $3c
    cp $08                                        ; $5c87: $fe $08
    jr nz, jr_001_5c93                            ; $5c89: $20 $08

    ld a, [$d637]                                 ; $5c8b: $fa $37 $d6
    inc a                                         ; $5c8e: $3c
    ld [$d637], a                                 ; $5c8f: $ea $37 $d6
    xor a                                         ; $5c92: $af

jr_001_5c93:
    ld [$d636], a                                 ; $5c93: $ea $36 $d6
    ld c, $0a                                     ; $5c96: $0e $0a
    ld a, $02                                     ; $5c98: $3e $02
    call Call_000_03b6                            ; $5c9a: $cd $b6 $03
    ret                                           ; $5c9d: $c9


GS05_TODO_Data2::
    db $87, $a0
    db $47, $a1
    db $07, $a2

GS05_TODO_Data3::
    db $c7, $a2
    db $07, $a3
    db $47, $a3

    db $b6, $00, $c9, $00, $d8, $00, $f1, $00, $d7, $00, $df, $00, $d8, $00, $d6, $00
    db $dd, $00, $df, $00, $d8, $00, $cc, $00, $cd, $00, $d7, $00, $df, $00, $d3, $00
    db $d2, $00, $c9, $00, $ec, $00, $ff, $ff

    db $c0, $00, $c9, $00, $d6, $00, $dd, $00, $df, $00, $cb, $00, $d3, $00, $d3, $00
    db $c8, $00, $ec, $00, $ff, $ff

    db $b6, $00, $c9, $00, $d8, $00, $f1, $00, $d7, $00, $df, $00, $d8, $00, $d6, $00
    db $dd, $00, $df, $00, $c5, $00, $cb, $00, $c5, $00, $cd, $00, $d2, $00, $ec, $00
    db $ff, $ff, $fe, $ff

    db $b3, $00, $d8, $00, $f1, $00, $d7, $00, $df, $00, $d8, $00, $cc, $00, $c9, $00
    db $df, $00, $d0, $00, $c9, $00, $d8, $00, $d8, $00, $c9, $00, $d6, $00, $df, $00
    db $ff, $ff

    db $e5, $00, $b6, $00, $e6, $00, $ec, $00, $ff, $ff

    db $e5, $00, $af, $00, $e6, $00, $ec, $00, $ff, $ff

    db $e5, $00, $be, $00, $e6, $00, $ec, $00, $ff, $ff

    db $e5, $00, $bd, $00, $e6, $00, $ec, $00, $ff, $ff

    db $e5, $00, $c1, $00, $e6, $00, $ec, $00, $ff, $ff

    db $e5, $00, $b9, $00, $e6, $00, $ec, $00, $ff, $ff

    db $e5, $00, $bc, $00, $e6, $00, $ec, $00, $ff, $ff

    db $e5, $00, $b5, $00, $e6, $00, $ec, $00, $ff, $ff

GameState_08_TODO_PhaseDispatcher::
    ld a, [StatePhase_Current]                    ; $5d7e: $fa $35 $d6
    rst RST_18                                    ; $5d81: $df

GS08_PhasePointer_00::
    db $9a, $5d

GS08_PhasePointer_01::
    db $a5, $5f

GS08_PhasePointer_02::
    db $a8, $5f

GS08_PhasePointer_03::
    db $cb, $5f

GS08_PhasePointer_04::
    db $7b, $61

GS08_PhasePointer_05::
    db $fc, $61

GS08_PhasePointer_06::
    db $38, $62

GS08_PhasePointer_07::
    db $70, $62

GS08_PhasePointer_08::
    db $28, $63

GS08_PhasePointer_09::
    db $43, $63

GS08_PhasePointer_0a::
    db $c3, $63

GS08_PhasePointer_0b::
    db $93, $5e

GS08_StatePhase_00_TODO::
    ld a, $43                                     ; $5d9a: $3e $43
    ld [$c32e], a                                 ; $5d9c: $ea $2e $c3
    xor a                                         ; $5d9f: $af
    ld [$c32f], a                                 ; $5da0: $ea $2f $c3
    ld [$c330], a                                 ; $5da3: $ea $30 $c3
    ld [$c331], a                                 ; $5da6: $ea $31 $c3
    ld [$c332], a                                 ; $5da9: $ea $32 $c3
    ld [$c333], a                                 ; $5dac: $ea $33 $c3
    call Call_000_05a0                            ; $5daf: $cd $a0 $05
    call Call_000_05ab                            ; $5db2: $cd $ab $05
    call Call_000_07f1                            ; $5db5: $cd $f1 $07
    call LoadGameBoardTileData                    ; $5db8: $cd $b9 $69
    xor a                                         ; $5dbb: $af
    ld [$d636], a                                 ; $5dbc: $ea $36 $d6
    ld [$d637], a                                 ; $5dbf: $ea $37 $d6
    ld a, $00                                     ; $5dc2: $3e $00
    ld [$d833], a                                 ; $5dc4: $ea $33 $d8
    ld a, $02                                     ; $5dc7: $3e $02
    ld [$d811], a                                 ; $5dc9: $ea $11 $d8
    ld a, $06                                     ; $5dcc: $3e $06
    ld hl, $7800                                  ; $5dce: $21 $00 $78
    ld de, $8500                                  ; $5dd1: $11 $00 $85
    ld bc, $0200                                  ; $5dd4: $01 $00 $02
    call BankedTileCopy                           ; $5dd7: $cd $e4 $04
    ld a, $2f                                     ; $5dda: $3e $2f
    ld [$c336], a                                 ; $5ddc: $ea $36 $c3
    ld hl, $c337                                  ; $5ddf: $21 $37 $c3
    set 6, [hl]                                   ; $5de2: $cb $f6
    ld hl, rIE                                    ; $5de4: $21 $ff $ff
    set 1, [hl]                                   ; $5de7: $cb $ce
    ld a, $01                                     ; $5de9: $3e $01
    ld [$c338], a                                 ; $5deb: $ea $38 $c3
    ld [$c33c], a                                 ; $5dee: $ea $3c $c3
    ld [$c350], a                                 ; $5df1: $ea $50 $c3
    call Call_001_6f30                            ; $5df4: $cd $30 $6f
    call Call_000_05b6                            ; $5df7: $cd $b6 $05
    call Call_001_7beb                            ; $5dfa: $cd $eb $7b
    call Call_001_786e                            ; $5dfd: $cd $6e $78
    ld a, [$a065]                                 ; $5e00: $fa $65 $a0
    ld c, a                                       ; $5e03: $4f
    sla a                                         ; $5e04: $cb $27
    sla a                                         ; $5e06: $cb $27
    add c                                         ; $5e08: $81
    ld c, a                                       ; $5e09: $4f
    ld b, $00                                     ; $5e0a: $06 $00
    ld hl, $a069                                  ; $5e0c: $21 $69 $a0
    add hl, bc                                    ; $5e0f: $09
    ld c, [hl]                                    ; $5e10: $4e
    ld b, $00                                     ; $5e11: $06 $00
    ld hl, $7e2d                                  ; $5e13: $21 $2d $7e
    add hl, bc                                    ; $5e16: $09
    ld c, $00                                     ; $5e17: $0e $00
    ld a, $01                                     ; $5e19: $3e $01
    call Call_000_03b6                            ; $5e1b: $cd $b6 $03
    call Call_000_0399                            ; $5e1e: $cd $99 $03
    ld c, [hl]                                    ; $5e21: $4e
    ld a, $01                                     ; $5e22: $3e $01
    call Call_000_03b6                            ; $5e24: $cd $b6 $03
    call Call_000_04a2                            ; $5e27: $cd $a2 $04
    ld a, [CurrentGridSize]                       ; $5e2a: $fa $00 $d8
    cp $05                                        ; $5e2d: $fe $05
    jr nz, jr_001_5e40                            ; $5e2f: $20 $0f

    ld b, $03                                     ; $5e31: $06 $03
    ld hl, $46a0                                  ; $5e33: $21 $a0 $46
    ld c, $01                                     ; $5e36: $0e $01
    ld de, $0014                                  ; $5e38: $11 $14 $00
    call Call_000_040d                            ; $5e3b: $cd $0d $04
    jr jr_001_5e60                                ; $5e3e: $18 $20

jr_001_5e40:
    cp $0a                                        ; $5e40: $fe $0a
    jr nz, jr_001_5e53                            ; $5e42: $20 $0f

    ld b, $03                                     ; $5e44: $06 $03
    ld hl, $46ac                                  ; $5e46: $21 $ac $46
    ld c, $02                                     ; $5e49: $0e $02
    ld de, $0024                                  ; $5e4b: $11 $24 $00
    call Call_000_040d                            ; $5e4e: $cd $0d $04
    jr jr_001_5e60                                ; $5e51: $18 $0d

jr_001_5e53:
    ld b, $03                                     ; $5e53: $06 $03
    ld hl, $4694                                  ; $5e55: $21 $94 $46
    ld c, $00                                     ; $5e58: $0e $00
    ld de, $0004                                  ; $5e5a: $11 $04 $00
    call Call_000_040d                            ; $5e5d: $cd $0d $04

jr_001_5e60:
    ld a, [CurrentGridSize]                       ; $5e60: $fa $00 $d8
    cp $05                                        ; $5e63: $fe $05
    jr nz, jr_001_5e8e                            ; $5e65: $20 $27

    ld a, $0d                                     ; $5e67: $3e $0d
    ld [$d843], a                                 ; $5e69: $ea $43 $d8
    ld [$d82b], a                                 ; $5e6c: $ea $2b $d8
    ld a, $58                                     ; $5e6f: $3e $58
    ld [$d844], a                                 ; $5e71: $ea $44 $d8
    ld [$d82c], a                                 ; $5e74: $ea $2c $d8
    ld a, $93                                     ; $5e77: $3e $93
    ld [$d845], a                                 ; $5e79: $ea $45 $d8
    ld a, $86                                     ; $5e7c: $3e $86
    ld [$d846], a                                 ; $5e7e: $ea $46 $d8
    ld a, $aa                                     ; $5e81: $3e $aa
    ld [$d82d], a                                 ; $5e83: $ea $2d $d8
    ld a, $5c                                     ; $5e86: $3e $5c
    ld [$d82e], a                                 ; $5e88: $ea $2e $d8
    call Call_001_5fab                            ; $5e8b: $cd $ab $5f

jr_001_5e8e:
    ld hl, StatePhase_Current                     ; $5e8e: $21 $35 $d6
    inc [hl]                                      ; $5e91: $34
    ret                                           ; $5e92: $c9


GS08_StatePhase_0b_TODO::
    ld a, $43                                     ; $5e93: $3e $43
    ld [$c32e], a                                 ; $5e95: $ea $2e $c3
    xor a                                         ; $5e98: $af
    ld [$c32f], a                                 ; $5e99: $ea $2f $c3
    ld [$c330], a                                 ; $5e9c: $ea $30 $c3
    ld [$c331], a                                 ; $5e9f: $ea $31 $c3
    ld [$c332], a                                 ; $5ea2: $ea $32 $c3
    ld [$c333], a                                 ; $5ea5: $ea $33 $c3
    call Call_000_05a0                            ; $5ea8: $cd $a0 $05
    call Call_000_05ab                            ; $5eab: $cd $ab $05
    call Call_000_1c96                            ; $5eae: $cd $96 $1c
    call LoadGameBoardTileData                    ; $5eb1: $cd $b9 $69
    ld a, $2f                                     ; $5eb4: $3e $2f
    ld [$c336], a                                 ; $5eb6: $ea $36 $c3
    ld hl, $c337                                  ; $5eb9: $21 $37 $c3
    set 6, [hl]                                   ; $5ebc: $cb $f6
    ld hl, rIE                                    ; $5ebe: $21 $ff $ff
    set 1, [hl]                                   ; $5ec1: $cb $ce
    ld a, $01                                     ; $5ec3: $3e $01
    ld [$c338], a                                 ; $5ec5: $ea $38 $c3
    ld [$c33c], a                                 ; $5ec8: $ea $3c $c3
    ld [$c350], a                                 ; $5ecb: $ea $50 $c3
    call Call_001_6f30                            ; $5ece: $cd $30 $6f
    call Call_000_05b6                            ; $5ed1: $cd $b6 $05
    call Call_001_7c04                            ; $5ed4: $cd $04 $7c
    call Call_001_786e                            ; $5ed7: $cd $6e $78
    ld a, [$a065]                                 ; $5eda: $fa $65 $a0
    ld c, a                                       ; $5edd: $4f
    sla a                                         ; $5ede: $cb $27
    sla a                                         ; $5ee0: $cb $27
    add c                                         ; $5ee2: $81
    ld c, a                                       ; $5ee3: $4f
    ld b, $00                                     ; $5ee4: $06 $00
    ld hl, $a069                                  ; $5ee6: $21 $69 $a0
    add hl, bc                                    ; $5ee9: $09
    ld c, [hl]                                    ; $5eea: $4e
    ld b, $00                                     ; $5eeb: $06 $00
    ld hl, $7e2d                                  ; $5eed: $21 $2d $7e
    add hl, bc                                    ; $5ef0: $09
    ld c, $00                                     ; $5ef1: $0e $00
    ld a, $01                                     ; $5ef3: $3e $01
    call Call_000_03b6                            ; $5ef5: $cd $b6 $03
    call Call_000_0399                            ; $5ef8: $cd $99 $03
    ld c, [hl]                                    ; $5efb: $4e
    ld a, $01                                     ; $5efc: $3e $01
    call Call_000_03b6                            ; $5efe: $cd $b6 $03
    call Call_000_04a2                            ; $5f01: $cd $a2 $04
    ld a, [CurrentGridSize]                       ; $5f04: $fa $00 $d8
    cp $05                                        ; $5f07: $fe $05
    jr nz, jr_001_5f1a                            ; $5f09: $20 $0f

    ld b, $03                                     ; $5f0b: $06 $03
    ld hl, $46a0                                  ; $5f0d: $21 $a0 $46
    ld c, $01                                     ; $5f10: $0e $01
    ld de, $0014                                  ; $5f12: $11 $14 $00
    call Call_000_040d                            ; $5f15: $cd $0d $04
    jr jr_001_5f3a                                ; $5f18: $18 $20

jr_001_5f1a:
    cp $0a                                        ; $5f1a: $fe $0a
    jr nz, jr_001_5f2d                            ; $5f1c: $20 $0f

    ld b, $03                                     ; $5f1e: $06 $03
    ld hl, $46ac                                  ; $5f20: $21 $ac $46
    ld c, $02                                     ; $5f23: $0e $02
    ld de, $0024                                  ; $5f25: $11 $24 $00
    call Call_000_040d                            ; $5f28: $cd $0d $04
    jr jr_001_5f3a                                ; $5f2b: $18 $0d

jr_001_5f2d:
    ld b, $03                                     ; $5f2d: $06 $03
    ld hl, $4694                                  ; $5f2f: $21 $94 $46
    ld c, $00                                     ; $5f32: $0e $00
    ld de, $0004                                  ; $5f34: $11 $04 $00
    call Call_000_040d                            ; $5f37: $cd $0d $04

jr_001_5f3a:
    ld a, [CurrentGridSize]                       ; $5f3a: $fa $00 $d8
    cp $05                                        ; $5f3d: $fe $05
    jr nz, jr_001_5f68                            ; $5f3f: $20 $27

    ld a, $0d                                     ; $5f41: $3e $0d
    ld [$d843], a                                 ; $5f43: $ea $43 $d8
    ld [$d82b], a                                 ; $5f46: $ea $2b $d8
    ld a, $58                                     ; $5f49: $3e $58
    ld [$d844], a                                 ; $5f4b: $ea $44 $d8
    ld [$d82c], a                                 ; $5f4e: $ea $2c $d8
    ld a, $93                                     ; $5f51: $3e $93
    ld [$d845], a                                 ; $5f53: $ea $45 $d8
    ld a, $86                                     ; $5f56: $3e $86
    ld [$d846], a                                 ; $5f58: $ea $46 $d8
    ld a, $aa                                     ; $5f5b: $3e $aa
    ld [$d82d], a                                 ; $5f5d: $ea $2d $d8
    ld a, $5c                                     ; $5f60: $3e $5c
    ld [$d82e], a                                 ; $5f62: $ea $2e $d8
    call Call_001_5fab                            ; $5f65: $cd $ab $5f

jr_001_5f68:
    call Call_000_05b6                            ; $5f68: $cd $b6 $05
    rst RST_08                                    ; $5f6b: $cf
    xor a                                         ; $5f6c: $af
    ld [$d83a], a                                 ; $5f6d: $ea $3a $d8
    ld a, $01                                     ; $5f70: $3e $01
    ld [$d83b], a                                 ; $5f72: $ea $3b $d8
    ld a, [$a065]                                 ; $5f75: $fa $65 $a0
    ld c, a                                       ; $5f78: $4f
    sla a                                         ; $5f79: $cb $27
    sla a                                         ; $5f7b: $cb $27
    add c                                         ; $5f7d: $81
    ld c, a                                       ; $5f7e: $4f
    ld b, $00                                     ; $5f7f: $06 $00
    ld hl, $a069                                  ; $5f81: $21 $69 $a0
    add hl, bc                                    ; $5f84: $09
    ld a, [hl]                                    ; $5f85: $7e
    ld [$d83c], a                                 ; $5f86: $ea $3c $d8
    ld a, $01                                     ; $5f89: $3e $01
    ld [$d83d], a                                 ; $5f8b: $ea $3d $d8
    ld a, $06                                     ; $5f8e: $3e $06
    ld hl, $7a00                                  ; $5f90: $21 $00 $7a
    ld de, $8500                                  ; $5f93: $11 $00 $85
    ld bc, $0300                                  ; $5f96: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $5f99: $cd $38 $05
    call Call_001_7dcb                            ; $5f9c: $cd $cb $7d
    ld a, $06                                     ; $5f9f: $3e $06
    ld [StatePhase_Current], a                    ; $5fa1: $ea $35 $d6
    ret                                           ; $5fa4: $c9


GS08_StatePhase_01_TODO::
    jp GS0A_StatePhase_01_TODO                    ; $5fa5: $c3 $92 $6a


GS08_StatePhase_02_TODO::
    jp GS0A_StatePhase_02_TODO                    ; $5fa8: $c3 $44 $6b


Call_001_5fab:
jr_001_5fab:
    call Call_000_05c5                            ; $5fab: $cd $c5 $05
    rst RST_08                                    ; $5fae: $cf
    call Call_001_7918                            ; $5faf: $cd $18 $79
    call Call_000_3093                            ; $5fb2: $cd $93 $30
    call Call_000_2b88                            ; $5fb5: $cd $88 $2b
    jr nz, jr_001_5fab                            ; $5fb8: $20 $f1

    ret                                           ; $5fba: $c9


Call_001_5fbb:
jr_001_5fbb:
    call Call_000_2b88                            ; $5fbb: $cd $88 $2b
    ret z                                         ; $5fbe: $c8

    call Call_001_7918                            ; $5fbf: $cd $18 $79
    call Call_000_3093                            ; $5fc2: $cd $93 $30
    call Call_000_05c5                            ; $5fc5: $cd $c5 $05
    rst RST_08                                    ; $5fc8: $cf
    jr jr_001_5fbb                                ; $5fc9: $18 $f0

GS08_StatePhase_03_TODO::
    ld a, [CurrentGridSize]                       ; $5fcb: $fa $00 $d8
    cp $05                                        ; $5fce: $fe $05
    jp z, Jump_001_607a                           ; $5fd0: $ca $7a $60

    call Call_001_71ca                            ; $5fd3: $cd $ca $71
    call Call_001_713e                            ; $5fd6: $cd $3e $71
    call Call_001_7918                            ; $5fd9: $cd $18 $79
    call Call_001_7e33                            ; $5fdc: $cd $33 $7e
    call Call_001_7e77                            ; $5fdf: $cd $77 $7e
    call Call_001_7aea                            ; $5fe2: $cd $ea $7a
    call Call_001_7a98                            ; $5fe5: $cd $98 $7a
    call Call_001_7222                            ; $5fe8: $cd $22 $72
    call Call_001_7516                            ; $5feb: $cd $16 $75
    call Call_001_75f6                            ; $5fee: $cd $f6 $75
    call Call_001_7cc8                            ; $5ff1: $cd $c8 $7c
    ld a, [$c31e]                                 ; $5ff4: $fa $1e $c3
    and $08                                       ; $5ff7: $e6 $08
    jr z, jr_001_6008                             ; $5ff9: $28 $0d

    ld c, $10                                     ; $5ffb: $0e $10
    ld a, $02                                     ; $5ffd: $3e $02
    call Call_000_03b6                            ; $5fff: $cd $b6 $03
    ld a, $05                                     ; $6002: $3e $05
    ld [StatePhase_Current], a                    ; $6004: $ea $35 $d6
    ret                                           ; $6007: $c9


jr_001_6008:
    ld a, [$d805]                                 ; $6008: $fa $05 $d8
    and a                                         ; $600b: $a7
    jr z, jr_001_6059                             ; $600c: $28 $4b

    call Call_001_5732                            ; $600e: $cd $32 $57
    call Call_001_588a                            ; $6011: $cd $8a $58
    call Call_000_1b1f                            ; $6014: $cd $1f $1b
    ld c, $00                                     ; $6017: $0e $00
    ld a, $01                                     ; $6019: $3e $01
    call Call_000_03b6                            ; $601b: $cd $b6 $03
    call Call_000_0399                            ; $601e: $cd $99 $03
    ld c, $09                                     ; $6021: $0e $09
    ld a, $01                                     ; $6023: $3e $01
    call Call_000_03b6                            ; $6025: $cd $b6 $03
    call Call_000_05b6                            ; $6028: $cd $b6 $05
    call Call_001_7635                            ; $602b: $cd $35 $76

jr_001_602e:
    rst RST_08                                    ; $602e: $cf
    ld a, [$c31e]                                 ; $602f: $fa $1e $c3
    and $09                                       ; $6032: $e6 $09
    jr z, jr_001_602e                             ; $6034: $28 $f8

    ld c, $03                                     ; $6036: $0e $03
    ld a, $02                                     ; $6038: $3e $02
    call Call_000_03b6                            ; $603a: $cd $b6 $03
    call Call_001_76a9                            ; $603d: $cd $a9 $76
    call Call_000_1a45                            ; $6040: $cd $45 $1a
    ld c, $00                                     ; $6043: $0e $00
    ld a, $01                                     ; $6045: $3e $01
    call Call_000_03b6                            ; $6047: $cd $b6 $03
    call Call_000_0399                            ; $604a: $cd $99 $03
    ld c, $12                                     ; $604d: $0e $12
    ld a, $01                                     ; $604f: $3e $01
    call Call_000_03b6                            ; $6051: $cd $b6 $03
    ld hl, StatePhase_Current                     ; $6054: $21 $35 $d6
    inc [hl]                                      ; $6057: $34
    ret                                           ; $6058: $c9


jr_001_6059:
    ld a, [$d806]                                 ; $6059: $fa $06 $d8
    and a                                         ; $605c: $a7
    ret z                                         ; $605d: $c8

    ld c, $00                                     ; $605e: $0e $00
    ld a, $01                                     ; $6060: $3e $01
    call Call_000_03b6                            ; $6062: $cd $b6 $03
    call Call_000_0399                            ; $6065: $cd $99 $03
    ld c, $08                                     ; $6068: $0e $08
    ld a, $01                                     ; $606a: $3e $01
    call Call_000_03b6                            ; $606c: $cd $b6 $03
    call Call_000_05b6                            ; $606f: $cd $b6 $05
    call Call_001_7ce3                            ; $6072: $cd $e3 $7c
    ld hl, StatePhase_Current                     ; $6075: $21 $35 $d6
    inc [hl]                                      ; $6078: $34
    ret                                           ; $6079: $c9


Jump_001_607a:
    call Call_001_71ca                            ; $607a: $cd $ca $71
    call Call_001_713e                            ; $607d: $cd $3e $71
    call Call_001_7918                            ; $6080: $cd $18 $79
    call Call_001_7aea                            ; $6083: $cd $ea $7a
    call Call_001_7a98                            ; $6086: $cd $98 $7a
    call Call_001_7222                            ; $6089: $cd $22 $72
    call Call_001_7516                            ; $608c: $cd $16 $75
    call Call_001_75f6                            ; $608f: $cd $f6 $75
    call Call_001_7cc8                            ; $6092: $cd $c8 $7c
    ld a, [$c31e]                                 ; $6095: $fa $1e $c3
    and $08                                       ; $6098: $e6 $08
    jr z, jr_001_60a9                             ; $609a: $28 $0d

    ld c, $10                                     ; $609c: $0e $10
    ld a, $02                                     ; $609e: $3e $02
    call Call_000_03b6                            ; $60a0: $cd $b6 $03
    ld a, $05                                     ; $60a3: $3e $05
    ld [StatePhase_Current], a                    ; $60a5: $ea $35 $d6
    ret                                           ; $60a8: $c9


jr_001_60a9:
    ld a, [$d805]                                 ; $60a9: $fa $05 $d8
    and a                                         ; $60ac: $a7
    jp z, Jump_001_613a                           ; $60ad: $ca $3a $61

    call Call_001_5732                            ; $60b0: $cd $32 $57
    call Call_001_588a                            ; $60b3: $cd $8a $58
    call Call_000_1b1f                            ; $60b6: $cd $1f $1b
    ld c, $00                                     ; $60b9: $0e $00
    ld a, $01                                     ; $60bb: $3e $01
    call Call_000_03b6                            ; $60bd: $cd $b6 $03
    call Call_000_0399                            ; $60c0: $cd $99 $03
    ld c, $09                                     ; $60c3: $0e $09
    ld a, $01                                     ; $60c5: $3e $01
    call Call_000_03b6                            ; $60c7: $cd $b6 $03
    call Call_000_05b6                            ; $60ca: $cd $b6 $05
    call Call_001_7635                            ; $60cd: $cd $35 $76
    call Call_000_302e                            ; $60d0: $cd $2e $30
    ld a, $d2                                     ; $60d3: $3e $d2
    ld [$d82d], a                                 ; $60d5: $ea $2d $d8
    ld a, $5c                                     ; $60d8: $3e $5c
    ld [$d82e], a                                 ; $60da: $ea $2e $d8
    call Call_001_5fbb                            ; $60dd: $cd $bb $5f

jr_001_60e0:
    call Call_001_7918                            ; $60e0: $cd $18 $79
    call Call_000_05c5                            ; $60e3: $cd $c5 $05
    rst RST_08                                    ; $60e6: $cf
    ld a, [$c31e]                                 ; $60e7: $fa $1e $c3
    and $09                                       ; $60ea: $e6 $09
    jr z, jr_001_60e0                             ; $60ec: $28 $f2

    ld c, $03                                     ; $60ee: $0e $03
    ld a, $02                                     ; $60f0: $3e $02
    call Call_000_03b6                            ; $60f2: $cd $b6 $03
    call Call_001_76a9                            ; $60f5: $cd $a9 $76
    ld a, $0a                                     ; $60f8: $3e $0a
    ld [$d82d], a                                 ; $60fa: $ea $2d $d8
    ld a, $5d                                     ; $60fd: $3e $5d
    ld [$d82e], a                                 ; $60ff: $ea $2e $d8
    call Call_001_5fbb                            ; $6102: $cd $bb $5f
    ld a, [$a065]                                 ; $6105: $fa $65 $a0
    ld c, a                                       ; $6108: $4f
    ld b, $00                                     ; $6109: $06 $00
    ld hl, $a081                                  ; $610b: $21 $81 $a0
    add hl, bc                                    ; $610e: $09
    ld a, [hl]                                    ; $610f: $7e
    sla a                                         ; $6110: $cb $27
    ld c, a                                       ; $6112: $4f
    ld b, $00                                     ; $6113: $06 $00
    ld hl, $616b                                  ; $6115: $21 $6b $61
    add hl, bc                                    ; $6118: $09
    ld a, [hl+]                                   ; $6119: $2a
    ld [$d82d], a                                 ; $611a: $ea $2d $d8
    ld a, [hl]                                    ; $611d: $7e
    ld [$d82e], a                                 ; $611e: $ea $2e $d8
    call Call_001_5fbb                            ; $6121: $cd $bb $5f
    ld c, $00                                     ; $6124: $0e $00
    ld a, $01                                     ; $6126: $3e $01
    call Call_000_03b6                            ; $6128: $cd $b6 $03
    call Call_000_0399                            ; $612b: $cd $99 $03
    ld c, $12                                     ; $612e: $0e $12
    ld a, $01                                     ; $6130: $3e $01
    call Call_000_03b6                            ; $6132: $cd $b6 $03
    ld hl, StatePhase_Current                     ; $6135: $21 $35 $d6
    inc [hl]                                      ; $6138: $34
    ret                                           ; $6139: $c9


Jump_001_613a:
    ld a, [$d806]                                 ; $613a: $fa $06 $d8
    and a                                         ; $613d: $a7
    ret z                                         ; $613e: $c8

    ld c, $00                                     ; $613f: $0e $00
    ld a, $01                                     ; $6141: $3e $01
    call Call_000_03b6                            ; $6143: $cd $b6 $03
    call Call_000_0399                            ; $6146: $cd $99 $03
    ld c, $08                                     ; $6149: $0e $08
    ld a, $01                                     ; $614b: $3e $01
    call Call_000_03b6                            ; $614d: $cd $b6 $03
    call Call_000_05b6                            ; $6150: $cd $b6 $05
    call Call_001_7ce3                            ; $6153: $cd $e3 $7c
    call Call_000_302e                            ; $6156: $cd $2e $30
    ld a, $e8                                     ; $6159: $3e $e8
    ld [$d82d], a                                 ; $615b: $ea $2d $d8
    ld a, $5c                                     ; $615e: $3e $5c
    ld [$d82e], a                                 ; $6160: $ea $2e $d8
    call Call_001_5fbb                            ; $6163: $cd $bb $5f
    ld hl, StatePhase_Current                     ; $6166: $21 $35 $d6
    inc [hl]                                      ; $6169: $34
    ret                                           ; $616a: $c9


    ld l, $5d                                     ; $616b: $2e $5d
    jr c, @+$5f                                   ; $616d: $38 $5d

    ld b, d                                       ; $616f: $42
    ld e, l                                       ; $6170: $5d
    ld c, h                                       ; $6171: $4c
    ld e, l                                       ; $6172: $5d
    ld d, [hl]                                    ; $6173: $56
    ld e, l                                       ; $6174: $5d
    ld h, b                                       ; $6175: $60
    ld e, l                                       ; $6176: $5d
    ld l, d                                       ; $6177: $6a
    ld e, l                                       ; $6178: $5d
    ld [hl], h                                    ; $6179: $74
    ld e, l                                       ; $617a: $5d

GS08_StatePhase_04_TODO::
    ld a, [$c31e]                                 ; $617b: $fa $1e $c3
    and $09                                       ; $617e: $e6 $09
    ret z                                         ; $6180: $c8

    ld c, $03                                     ; $6181: $0e $03
    ld a, $02                                     ; $6183: $3e $02
    call Call_000_03b6                            ; $6185: $cd $b6 $03
    ld bc, $003c                                  ; $6188: $01 $3c $00
    call Call_000_05fa                            ; $618b: $cd $fa $05
    ld a, $05                                     ; $618e: $3e $05
    call Call_000_03b6                            ; $6190: $cd $b6 $03
    ld c, $00                                     ; $6193: $0e $00
    ld a, $01                                     ; $6195: $3e $01
    call Call_000_03b6                            ; $6197: $cd $b6 $03
    call Call_000_0399                            ; $619a: $cd $99 $03
    ld c, $00                                     ; $619d: $0e $00
    ld a, $01                                     ; $619f: $3e $01
    call Call_000_03b6                            ; $61a1: $cd $b6 $03
    ld a, [CurrentGridSize]                       ; $61a4: $fa $00 $d8
    cp $05                                        ; $61a7: $fe $05
    jr nz, jr_001_61ba                            ; $61a9: $20 $0f

    ld b, $03                                     ; $61ab: $06 $03
    ld hl, $46ab                                  ; $61ad: $21 $ab $46
    ld c, $01                                     ; $61b0: $0e $01
    ld de, $0023                                  ; $61b2: $11 $23 $00
    call Call_000_044e                            ; $61b5: $cd $4e $04
    jr jr_001_61da                                ; $61b8: $18 $20

jr_001_61ba:
    cp $0a                                        ; $61ba: $fe $0a
    jr nz, jr_001_61cd                            ; $61bc: $20 $0f

    ld b, $03                                     ; $61be: $06 $03
    ld hl, $46b7                                  ; $61c0: $21 $b7 $46
    ld c, $02                                     ; $61c3: $0e $02
    ld de, $0033                                  ; $61c5: $11 $33 $00
    call Call_000_044e                            ; $61c8: $cd $4e $04
    jr jr_001_61da                                ; $61cb: $18 $0d

jr_001_61cd:
    ld b, $03                                     ; $61cd: $06 $03
    ld hl, $469f                                  ; $61cf: $21 $9f $46
    ld c, $00                                     ; $61d2: $0e $00
    ld de, $0013                                  ; $61d4: $11 $13 $00
    call Call_000_044e                            ; $61d7: $cd $4e $04

jr_001_61da:
    call Call_000_0483                            ; $61da: $cd $83 $04
    ld hl, $c337                                  ; $61dd: $21 $37 $c3
    res 6, [hl]                                   ; $61e0: $cb $b6
    ld hl, rIE                                    ; $61e2: $21 $ff $ff
    res 1, [hl]                                   ; $61e5: $cb $8e
    xor a                                         ; $61e7: $af
    ld [$c338], a                                 ; $61e8: $ea $38 $c3
    ld [$c33c], a                                 ; $61eb: $ea $3c $c3
    ld [$c350], a                                 ; $61ee: $ea $50 $c3
    ld a, $04                                     ; $61f1: $3e $04
    ld [StatePhase_Current], a                    ; $61f3: $ea $35 $d6
    ld a, $05                                     ; $61f6: $3e $05
    ld [GameState_Current], a                     ; $61f8: $ea $34 $d6
    ret                                           ; $61fb: $c9


GS08_StatePhase_05_TODO::
    call Call_000_05b6                            ; $61fc: $cd $b6 $05
    rst RST_08                                    ; $61ff: $cf
    xor a                                         ; $6200: $af
    ld [$d83a], a                                 ; $6201: $ea $3a $d8
    ld a, $01                                     ; $6204: $3e $01
    ld [$d83b], a                                 ; $6206: $ea $3b $d8
    ld a, [$a065]                                 ; $6209: $fa $65 $a0
    ld c, a                                       ; $620c: $4f
    sla a                                         ; $620d: $cb $27
    sla a                                         ; $620f: $cb $27
    add c                                         ; $6211: $81
    ld c, a                                       ; $6212: $4f
    ld b, $00                                     ; $6213: $06 $00
    ld hl, $a069                                  ; $6215: $21 $69 $a0
    add hl, bc                                    ; $6218: $09
    ld a, [hl]                                    ; $6219: $7e
    ld [$d83c], a                                 ; $621a: $ea $3c $d8
    ld a, $01                                     ; $621d: $3e $01
    ld [$d83d], a                                 ; $621f: $ea $3d $d8
    ld a, $06                                     ; $6222: $3e $06
    ld hl, $7a00                                  ; $6224: $21 $00 $7a
    ld de, $8500                                  ; $6227: $11 $00 $85
    ld bc, $0300                                  ; $622a: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $622d: $cd $38 $05
    call Call_001_70a1                            ; $6230: $cd $a1 $70
    ld hl, StatePhase_Current                     ; $6233: $21 $35 $d6
    inc [hl]                                      ; $6236: $34
    ret                                           ; $6237: $c9


GS08_StatePhase_06_TODO::
    ld b, $02                                     ; $6238: $06 $02
    ld hl, $4632                                  ; $623a: $21 $32 $46
    call SwitchBankToBAndJumpToHL                 ; $623d: $cd $de $05
    ld a, [$c31e]                                 ; $6240: $fa $1e $c3
    bit 0, a                                      ; $6243: $cb $47
    jr z, jr_001_625d                             ; $6245: $28 $16

    ld c, $03                                     ; $6247: $0e $03
    ld a, $02                                     ; $6249: $3e $02
    call Call_000_03b6                            ; $624b: $cd $b6 $03
    ld a, [$d83a]                                 ; $624e: $fa $3a $d8
    ld c, a                                       ; $6251: $4f
    ld b, $00                                     ; $6252: $06 $00
    ld hl, GS08_StatePhase_06_TODO_Data           ; $6254: $21 $6d $62
    add hl, bc                                    ; $6257: $09
    ld a, [hl]                                    ; $6258: $7e
    ld [StatePhase_Current], a                    ; $6259: $ea $35 $d6
    ret                                           ; $625c: $c9


jr_001_625d:
    bit 3, a                                      ; $625d: $cb $5f
    ret z                                         ; $625f: $c8

    ld c, $04                                     ; $6260: $0e $04
    ld a, $02                                     ; $6262: $3e $02
    call Call_000_03b6                            ; $6264: $cd $b6 $03
    ld a, $0a                                     ; $6267: $3e $0a
    ld [StatePhase_Current], a                    ; $6269: $ea $35 $d6
    ret                                           ; $626c: $c9


GS08_StatePhase_06_TODO_Data::
    db $07, $09, $08

GS08_StatePhase_07_TODO::
    ld b, $02                                     ; $6270: $06 $02
    ld hl, $4672                                  ; $6272: $21 $72 $46
    call SwitchBankToBAndJumpToHL                 ; $6275: $cd $de $05
    ld a, [$c31e]                                 ; $6278: $fa $1e $c3
    and $01                                       ; $627b: $e6 $01
    ret z                                         ; $627d: $c8

    ld c, $04                                     ; $627e: $0e $04
    ld a, $02                                     ; $6280: $3e $02
    call Call_000_03b6                            ; $6282: $cd $b6 $03
    ld a, [$d83b]                                 ; $6285: $fa $3b $d8
    and a                                         ; $6288: $a7
    jr z, jr_001_6291                             ; $6289: $28 $06

    ld a, $06                                     ; $628b: $3e $06
    ld [StatePhase_Current], a                    ; $628d: $ea $35 $d6
    ret                                           ; $6290: $c9


jr_001_6291:
    call Call_000_1c14                            ; $6291: $cd $14 $1c
    ld a, $01                                     ; $6294: $3e $01
    ld [$aca2], a                                 ; $6296: $ea $a2 $ac
    ld c, $03                                     ; $6299: $0e $03
    ld a, $02                                     ; $629b: $3e $02
    call Call_000_03b6                            ; $629d: $cd $b6 $03
    ld bc, $003c                                  ; $62a0: $01 $3c $00
    call Call_000_05fa                            ; $62a3: $cd $fa $05
    ld a, $05                                     ; $62a6: $3e $05
    call Call_000_03b6                            ; $62a8: $cd $b6 $03
    ld c, $00                                     ; $62ab: $0e $00
    ld a, $01                                     ; $62ad: $3e $01
    call Call_000_03b6                            ; $62af: $cd $b6 $03
    call Call_000_0399                            ; $62b2: $cd $99 $03
    ld c, $00                                     ; $62b5: $0e $00
    ld a, $01                                     ; $62b7: $3e $01
    call Call_000_03b6                            ; $62b9: $cd $b6 $03
    ld a, [CurrentGridSize]                       ; $62bc: $fa $00 $d8
    cp $05                                        ; $62bf: $fe $05
    jr nz, jr_001_62d2                            ; $62c1: $20 $0f

    ld b, $03                                     ; $62c3: $06 $03
    ld hl, $46ab                                  ; $62c5: $21 $ab $46
    ld c, $01                                     ; $62c8: $0e $01
    ld de, $0023                                  ; $62ca: $11 $23 $00
    call Call_000_044e                            ; $62cd: $cd $4e $04
    jr jr_001_62f2                                ; $62d0: $18 $20

jr_001_62d2:
    cp $0a                                        ; $62d2: $fe $0a
    jr nz, jr_001_62e5                            ; $62d4: $20 $0f

    ld b, $03                                     ; $62d6: $06 $03
    ld hl, $46b7                                  ; $62d8: $21 $b7 $46
    ld c, $02                                     ; $62db: $0e $02
    ld de, $0033                                  ; $62dd: $11 $33 $00
    call Call_000_044e                            ; $62e0: $cd $4e $04
    jr jr_001_62f2                                ; $62e3: $18 $0d

jr_001_62e5:
    ld b, $03                                     ; $62e5: $06 $03
    ld hl, $469f                                  ; $62e7: $21 $9f $46
    ld c, $00                                     ; $62ea: $0e $00
    ld de, $0013                                  ; $62ec: $11 $13 $00
    call Call_000_044e                            ; $62ef: $cd $4e $04

jr_001_62f2:
    call Call_000_0483                            ; $62f2: $cd $83 $04
    ld hl, $c337                                  ; $62f5: $21 $37 $c3
    res 6, [hl]                                   ; $62f8: $cb $b6
    ld hl, rIE                                    ; $62fa: $21 $ff $ff
    res 1, [hl]                                   ; $62fd: $cb $8e
    xor a                                         ; $62ff: $af
    ld [$c338], a                                 ; $6300: $ea $38 $c3
    ld [$c33c], a                                 ; $6303: $ea $3c $c3
    ld [$c350], a                                 ; $6306: $ea $50 $c3
    ld c, a                                       ; $6309: $4f
    sla a                                         ; $630a: $cb $27
    sla a                                         ; $630c: $cb $27
    add c                                         ; $630e: $81
    ld c, a                                       ; $630f: $4f
    ld b, $00                                     ; $6310: $06 $00
    ld hl, $a069                                  ; $6312: $21 $69 $a0
    add hl, bc                                    ; $6315: $09
    ld a, [hl]                                    ; $6316: $7e
    ld a, [$d83c]                                 ; $6317: $fa $3c $d8
    ld [hl], a                                    ; $631a: $77
    ld a, $04                                     ; $631b: $3e $04
    ld [StatePhase_Current], a                    ; $631d: $ea $35 $d6
    ld a, $00                                     ; $6320: $3e $00
    ld [GameState_Current], a                     ; $6322: $ea $34 $d6
    jp Jump_000_1b1f                              ; $6325: $c3 $1f $1b


GS08_StatePhase_08_TODO::
    ld b, $02                                     ; $6328: $06 $02
    ld hl, $46b2                                  ; $632a: $21 $b2 $46
    call SwitchBankToBAndJumpToHL                 ; $632d: $cd $de $05
    ld a, [$c31e]                                 ; $6330: $fa $1e $c3
    and $01                                       ; $6333: $e6 $01
    ret z                                         ; $6335: $c8

    ld c, $04                                     ; $6336: $0e $04
    ld a, $02                                     ; $6338: $3e $02
    call Call_000_03b6                            ; $633a: $cd $b6 $03
    ld a, $06                                     ; $633d: $3e $06
    ld [StatePhase_Current], a                    ; $633f: $ea $35 $d6
    ret                                           ; $6342: $c9


GS08_StatePhase_09_TODO::
    ld b, $02                                     ; $6343: $06 $02
    ld hl, $470f                                  ; $6345: $21 $0f $47
    call SwitchBankToBAndJumpToHL                 ; $6348: $cd $de $05
    ld a, [$c31e]                                 ; $634b: $fa $1e $c3
    and $01                                       ; $634e: $e6 $01
    ret z                                         ; $6350: $c8

    ld c, $04                                     ; $6351: $0e $04
    ld a, $02                                     ; $6353: $3e $02
    call Call_000_03b6                            ; $6355: $cd $b6 $03
    ld a, [$d83d]                                 ; $6358: $fa $3d $d8
    and a                                         ; $635b: $a7
    jr z, jr_001_6364                             ; $635c: $28 $06

    ld a, $06                                     ; $635e: $3e $06
    ld [StatePhase_Current], a                    ; $6360: $ea $35 $d6
    ret                                           ; $6363: $c9


jr_001_6364:
    ld a, $01                                     ; $6364: $3e $01
    ld [$d806], a                                 ; $6366: $ea $06 $d8
    ld c, $00                                     ; $6369: $0e $00
    ld a, $01                                     ; $636b: $3e $01
    call Call_000_03b6                            ; $636d: $cd $b6 $03
    call Call_000_0399                            ; $6370: $cd $99 $03
    ld c, $08                                     ; $6373: $0e $08
    ld a, $01                                     ; $6375: $3e $01
    call Call_000_03b6                            ; $6377: $cd $b6 $03
    call Call_000_05b6                            ; $637a: $cd $b6 $05
    call Call_001_7ce3                            ; $637d: $cd $e3 $7c
    ld a, $06                                     ; $6380: $3e $06
    ld hl, $4500                                  ; $6382: $21 $00 $45
    ld de, $8500                                  ; $6385: $11 $00 $85
    ld bc, $0300                                  ; $6388: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $638b: $cd $38 $05
    ld a, [CurrentGridSize]                       ; $638e: $fa $00 $d8
    cp $05                                        ; $6391: $fe $05
    jr nz, jr_001_63a5                            ; $6393: $20 $10

    call Call_000_302e                            ; $6395: $cd $2e $30
    ld a, $e8                                     ; $6398: $3e $e8
    ld [$d82d], a                                 ; $639a: $ea $2d $d8
    ld a, $5c                                     ; $639d: $3e $5c
    ld [$d82e], a                                 ; $639f: $ea $2e $d8
    call Call_001_5fbb                            ; $63a2: $cd $bb $5f

jr_001_63a5:
    ld c, a                                       ; $63a5: $4f
    sla a                                         ; $63a6: $cb $27
    sla a                                         ; $63a8: $cb $27
    add c                                         ; $63aa: $81
    ld c, a                                       ; $63ab: $4f
    ld b, $00                                     ; $63ac: $06 $00
    ld hl, $a069                                  ; $63ae: $21 $69 $a0
    add hl, bc                                    ; $63b1: $09
    ld a, [hl]                                    ; $63b2: $7e
    ld a, [$d83c]                                 ; $63b3: $fa $3c $d8
    ld [hl], a                                    ; $63b6: $77
    ld a, $04                                     ; $63b7: $3e $04
    ld [StatePhase_Current], a                    ; $63b9: $ea $35 $d6
    xor a                                         ; $63bc: $af
    ld [$aca2], a                                 ; $63bd: $ea $a2 $ac
    jp Jump_000_1b1f                              ; $63c0: $c3 $1f $1b


GS08_StatePhase_0a_TODO::
    call Call_000_05b6                            ; $63c3: $cd $b6 $05
    rst RST_08                                    ; $63c6: $cf
    ld a, [$a065]                                 ; $63c7: $fa $65 $a0
    ld c, a                                       ; $63ca: $4f
    sla a                                         ; $63cb: $cb $27
    sla a                                         ; $63cd: $cb $27
    add c                                         ; $63cf: $81
    ld c, a                                       ; $63d0: $4f
    ld b, $00                                     ; $63d1: $06 $00
    ld hl, $a069                                  ; $63d3: $21 $69 $a0
    add hl, bc                                    ; $63d6: $09
    ld a, [hl]                                    ; $63d7: $7e
    ld a, [$d83c]                                 ; $63d8: $fa $3c $d8
    ld [hl], a                                    ; $63db: $77
    ld a, $06                                     ; $63dc: $3e $06
    ld hl, $4500                                  ; $63de: $21 $00 $45
    ld de, $8500                                  ; $63e1: $11 $00 $85
    ld bc, $0300                                  ; $63e4: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $63e7: $cd $38 $05
    call Call_001_6fb9                            ; $63ea: $cd $b9 $6f
    call Call_001_7c04                            ; $63ed: $cd $04 $7c
    ld a, $03                                     ; $63f0: $3e $03
    ld [StatePhase_Current], a                    ; $63f2: $ea $35 $d6
    xor a                                         ; $63f5: $af
    ld [$aca2], a                                 ; $63f6: $ea $a2 $ac
    jp Jump_000_1b1f                              ; $63f9: $c3 $1f $1b


GameState_09_TODO_PhaseDispatcher::
    ld a, [StatePhase_Current]                    ; $63fc: $fa $35 $d6
    rst RST_18                                    ; $63ff: $df

GS09_PhasePointer_00::
    db $14, $64

GS09_PhasePointer_01::
    db $6c, $65

GS09_PhasePointer_02::
    db $1f, $66

GS09_PhasePointer_03::
    db $77, $66

GS09_PhasePointer_04::
    db $b3, $66

GS09_PhasePointer_05::
    db $eb, $66

GS09_PhasePointer_06::
    db $7d, $67

GS09_PhasePointer_07::
    db $98, $67

GS09_PhasePointer_08::
    db $f6, $67

GS09_PhasePointer_09::
    db $b1, $64

GS09_StatePhase_00_TODO::
    ld a, $43                                     ; $6414: $3e $43
    ld [$c32e], a                                 ; $6416: $ea $2e $c3
    xor a                                         ; $6419: $af
    ld [$c32f], a                                 ; $641a: $ea $2f $c3
    ld [$c330], a                                 ; $641d: $ea $30 $c3
    ld [$c331], a                                 ; $6420: $ea $31 $c3
    ld [$c332], a                                 ; $6423: $ea $32 $c3
    ld [$c333], a                                 ; $6426: $ea $33 $c3
    call Call_000_05a0                            ; $6429: $cd $a0 $05
    call Call_000_05ab                            ; $642c: $cd $ab $05
    call Call_000_07f1                            ; $642f: $cd $f1 $07
    call LoadGameBoardTileData                    ; $6432: $cd $b9 $69
    xor a                                         ; $6435: $af
    ld [$d636], a                                 ; $6436: $ea $36 $d6
    ld [$d637], a                                 ; $6439: $ea $37 $d6
    ld a, $00                                     ; $643c: $3e $00
    ld [$d833], a                                 ; $643e: $ea $33 $d8
    ld a, $02                                     ; $6441: $3e $02
    ld [$d811], a                                 ; $6443: $ea $11 $d8
    ld a, $2f                                     ; $6446: $3e $2f
    ld [$c336], a                                 ; $6448: $ea $36 $c3
    ld hl, $c337                                  ; $644b: $21 $37 $c3
    set 6, [hl]                                   ; $644e: $cb $f6
    ld hl, rIE                                    ; $6450: $21 $ff $ff
    set 1, [hl]                                   ; $6453: $cb $ce
    ld a, $01                                     ; $6455: $3e $01
    ld [$c338], a                                 ; $6457: $ea $38 $c3
    ld [$c33c], a                                 ; $645a: $ea $3c $c3
    ld [$c350], a                                 ; $645d: $ea $50 $c3
    call Call_001_6f30                            ; $6460: $cd $30 $6f
    call Call_001_7dcb                            ; $6463: $cd $cb $7d
    call Call_000_05b6                            ; $6466: $cd $b6 $05
    call Call_001_713e                            ; $6469: $cd $3e $71
    call Call_001_7beb                            ; $646c: $cd $eb $7b
    call Call_001_786e                            ; $646f: $cd $6e $78
    ld a, [$a065]                                 ; $6472: $fa $65 $a0
    ld c, a                                       ; $6475: $4f
    sla a                                         ; $6476: $cb $27
    sla a                                         ; $6478: $cb $27
    add c                                         ; $647a: $81
    ld c, a                                       ; $647b: $4f
    ld b, $00                                     ; $647c: $06 $00
    ld hl, $a06c                                  ; $647e: $21 $6c $a0
    add hl, bc                                    ; $6481: $09
    ld c, [hl]                                    ; $6482: $4e
    ld b, $00                                     ; $6483: $06 $00
    ld hl, $7e2d                                  ; $6485: $21 $2d $7e
    add hl, bc                                    ; $6488: $09
    ld c, $00                                     ; $6489: $0e $00
    ld a, $01                                     ; $648b: $3e $01
    call Call_000_03b6                            ; $648d: $cd $b6 $03
    call Call_000_0399                            ; $6490: $cd $99 $03
    ld c, [hl]                                    ; $6493: $4e
    ld a, $01                                     ; $6494: $3e $01
    call Call_000_03b6                            ; $6496: $cd $b6 $03
    call Call_000_04a2                            ; $6499: $cd $a2 $04
    ld b, $03                                     ; $649c: $06 $03
    ld hl, $4694                                  ; $649e: $21 $94 $46
    ld c, $00                                     ; $64a1: $0e $00
    ld de, $0004                                  ; $64a3: $11 $04 $00
    call Call_000_040d                            ; $64a6: $cd $0d $04
    ld hl, StatePhase_Current                     ; $64a9: $21 $35 $d6
    inc [hl]                                      ; $64ac: $34
    call Call_001_6fb9                            ; $64ad: $cd $b9 $6f
    ret                                           ; $64b0: $c9


GS09_StatePhase_09_TODO::
    ld a, $43                                     ; $64b1: $3e $43
    ld [$c32e], a                                 ; $64b3: $ea $2e $c3
    xor a                                         ; $64b6: $af
    ld [$c32f], a                                 ; $64b7: $ea $2f $c3
    ld [$c330], a                                 ; $64ba: $ea $30 $c3
    ld [$c331], a                                 ; $64bd: $ea $31 $c3
    ld [$c332], a                                 ; $64c0: $ea $32 $c3
    ld [$c333], a                                 ; $64c3: $ea $33 $c3
    call Call_000_05a0                            ; $64c6: $cd $a0 $05
    call Call_000_05ab                            ; $64c9: $cd $ab $05
    call Call_000_1c96                            ; $64cc: $cd $96 $1c
    call LoadGameBoardTileData                    ; $64cf: $cd $b9 $69
    ld a, $2f                                     ; $64d2: $3e $2f
    ld [$c336], a                                 ; $64d4: $ea $36 $c3
    ld hl, $c337                                  ; $64d7: $21 $37 $c3
    set 6, [hl]                                   ; $64da: $cb $f6
    ld hl, rIE                                    ; $64dc: $21 $ff $ff
    set 1, [hl]                                   ; $64df: $cb $ce
    ld a, $01                                     ; $64e1: $3e $01
    ld [$c338], a                                 ; $64e3: $ea $38 $c3
    ld [$c33c], a                                 ; $64e6: $ea $3c $c3
    ld [$c350], a                                 ; $64e9: $ea $50 $c3
    call Call_001_6f30                            ; $64ec: $cd $30 $6f
    call Call_000_05b6                            ; $64ef: $cd $b6 $05
    call Call_001_7c04                            ; $64f2: $cd $04 $7c
    call Call_001_786e                            ; $64f5: $cd $6e $78
    ld a, [$a065]                                 ; $64f8: $fa $65 $a0
    ld c, a                                       ; $64fb: $4f
    sla a                                         ; $64fc: $cb $27
    sla a                                         ; $64fe: $cb $27
    add c                                         ; $6500: $81
    ld c, a                                       ; $6501: $4f
    ld b, $00                                     ; $6502: $06 $00
    ld hl, $a06c                                  ; $6504: $21 $6c $a0
    add hl, bc                                    ; $6507: $09
    ld c, [hl]                                    ; $6508: $4e
    ld b, $00                                     ; $6509: $06 $00
    ld hl, $7e2d                                  ; $650b: $21 $2d $7e
    add hl, bc                                    ; $650e: $09
    ld c, $00                                     ; $650f: $0e $00
    ld a, $01                                     ; $6511: $3e $01
    call Call_000_03b6                            ; $6513: $cd $b6 $03
    call Call_000_0399                            ; $6516: $cd $99 $03
    ld c, [hl]                                    ; $6519: $4e
    ld a, $01                                     ; $651a: $3e $01
    call Call_000_03b6                            ; $651c: $cd $b6 $03
    call Call_000_04a2                            ; $651f: $cd $a2 $04
    ld b, $03                                     ; $6522: $06 $03
    ld hl, $4694                                  ; $6524: $21 $94 $46
    ld c, $00                                     ; $6527: $0e $00
    ld de, $0004                                  ; $6529: $11 $04 $00
    call Call_000_040d                            ; $652c: $cd $0d $04
    call Call_000_05b6                            ; $652f: $cd $b6 $05
    rst RST_08                                    ; $6532: $cf
    xor a                                         ; $6533: $af
    ld [$d83a], a                                 ; $6534: $ea $3a $d8
    ld a, $01                                     ; $6537: $3e $01
    ld [$d83b], a                                 ; $6539: $ea $3b $d8
    ld a, [$a065]                                 ; $653c: $fa $65 $a0
    ld c, a                                       ; $653f: $4f
    sla a                                         ; $6540: $cb $27
    sla a                                         ; $6542: $cb $27
    add c                                         ; $6544: $81
    ld c, a                                       ; $6545: $4f
    ld b, $00                                     ; $6546: $06 $00
    ld hl, $a06c                                  ; $6548: $21 $6c $a0
    add hl, bc                                    ; $654b: $09
    ld a, [hl]                                    ; $654c: $7e
    ld [$d83c], a                                 ; $654d: $ea $3c $d8
    ld a, $01                                     ; $6550: $3e $01
    ld [$d83d], a                                 ; $6552: $ea $3d $d8
    ld a, $06                                     ; $6555: $3e $06
    ld hl, $7a00                                  ; $6557: $21 $00 $7a
    ld de, $8500                                  ; $655a: $11 $00 $85
    ld bc, $0300                                  ; $655d: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $6560: $cd $38 $05
    call Call_001_7dcb                            ; $6563: $cd $cb $7d
    ld a, $04                                     ; $6566: $3e $04
    ld [StatePhase_Current], a                    ; $6568: $ea $35 $d6
    ret                                           ; $656b: $c9


GS09_StatePhase_01_TODO::
    call Call_001_71ca                            ; $656c: $cd $ca $71
    call Call_001_713e                            ; $656f: $cd $3e $71
    call Call_001_7aea                            ; $6572: $cd $ea $7a
    call Call_001_7918                            ; $6575: $cd $18 $79
    call Call_001_682f                            ; $6578: $cd $2f $68
    call Call_001_7516                            ; $657b: $cd $16 $75
    call Call_001_75f6                            ; $657e: $cd $f6 $75
    call Call_001_7cc8                            ; $6581: $cd $c8 $7c
    ld a, [$c31e]                                 ; $6584: $fa $1e $c3
    and $08                                       ; $6587: $e6 $08
    jr z, jr_001_6598                             ; $6589: $28 $0d

    ld c, $10                                     ; $658b: $0e $10
    ld a, $02                                     ; $658d: $3e $02
    call Call_000_03b6                            ; $658f: $cd $b6 $03
    ld a, $03                                     ; $6592: $3e $03
    ld [StatePhase_Current], a                    ; $6594: $ea $35 $d6
    ret                                           ; $6597: $c9


jr_001_6598:
    ld a, [$d805]                                 ; $6598: $fa $05 $d8
    and a                                         ; $659b: $a7
    jr z, jr_001_65fe                             ; $659c: $28 $60

    ld c, $00                                     ; $659e: $0e $00
    ld a, $05                                     ; $65a0: $3e $05
    call Call_000_03b6                            ; $65a2: $cd $b6 $03
    ld c, $00                                     ; $65a5: $0e $00
    ld a, $01                                     ; $65a7: $3e $01
    call Call_000_03b6                            ; $65a9: $cd $b6 $03
    call Call_000_0399                            ; $65ac: $cd $99 $03
    ld c, $00                                     ; $65af: $0e $00
    ld a, $01                                     ; $65b1: $3e $01
    call Call_000_03b6                            ; $65b3: $cd $b6 $03
    ld bc, $0003                                  ; $65b6: $01 $03 $00
    call Call_000_0603                            ; $65b9: $cd $03 $06
    ld c, $00                                     ; $65bc: $0e $00
    ld a, $01                                     ; $65be: $3e $01
    call Call_000_03b6                            ; $65c0: $cd $b6 $03
    call Call_000_0399                            ; $65c3: $cd $99 $03
    ld c, $09                                     ; $65c6: $0e $09
    ld a, $01                                     ; $65c8: $3e $01
    call Call_000_03b6                            ; $65ca: $cd $b6 $03
    call Call_000_05b6                            ; $65cd: $cd $b6 $05
    call Call_001_7635                            ; $65d0: $cd $35 $76

jr_001_65d3:
    rst RST_08                                    ; $65d3: $cf
    ld a, [$c31e]                                 ; $65d4: $fa $1e $c3
    and $09                                       ; $65d7: $e6 $09
    jr z, jr_001_65d3                             ; $65d9: $28 $f8

    ld c, $03                                     ; $65db: $0e $03
    ld a, $02                                     ; $65dd: $3e $02
    call Call_000_03b6                            ; $65df: $cd $b6 $03
    call Call_001_76a9                            ; $65e2: $cd $a9 $76
    call Call_000_1a45                            ; $65e5: $cd $45 $1a
    ld c, $00                                     ; $65e8: $0e $00
    ld a, $01                                     ; $65ea: $3e $01
    call Call_000_03b6                            ; $65ec: $cd $b6 $03
    call Call_000_0399                            ; $65ef: $cd $99 $03
    ld c, $12                                     ; $65f2: $0e $12
    ld a, $01                                     ; $65f4: $3e $01
    call Call_000_03b6                            ; $65f6: $cd $b6 $03
    ld hl, StatePhase_Current                     ; $65f9: $21 $35 $d6
    inc [hl]                                      ; $65fc: $34
    ret                                           ; $65fd: $c9


jr_001_65fe:
    ld a, [$d806]                                 ; $65fe: $fa $06 $d8
    and a                                         ; $6601: $a7
    ret z                                         ; $6602: $c8

    ld c, $00                                     ; $6603: $0e $00
    ld a, $01                                     ; $6605: $3e $01
    call Call_000_03b6                            ; $6607: $cd $b6 $03
    call Call_000_0399                            ; $660a: $cd $99 $03
    ld c, $08                                     ; $660d: $0e $08
    ld a, $01                                     ; $660f: $3e $01
    call Call_000_03b6                            ; $6611: $cd $b6 $03
    call Call_000_05b6                            ; $6614: $cd $b6 $05
    call Call_001_7ce3                            ; $6617: $cd $e3 $7c
    ld hl, StatePhase_Current                     ; $661a: $21 $35 $d6
    inc [hl]                                      ; $661d: $34
    ret                                           ; $661e: $c9


GS09_StatePhase_02_TODO::
    ld a, [$c31e]                                 ; $661f: $fa $1e $c3
    and $09                                       ; $6622: $e6 $09
    ret z                                         ; $6624: $c8

    ld c, $03                                     ; $6625: $0e $03
    ld a, $02                                     ; $6627: $3e $02
    call Call_000_03b6                            ; $6629: $cd $b6 $03
    ld bc, $003c                                  ; $662c: $01 $3c $00
    call Call_000_05fa                            ; $662f: $cd $fa $05
    ld a, $05                                     ; $6632: $3e $05
    call Call_000_03b6                            ; $6634: $cd $b6 $03
    ld c, $00                                     ; $6637: $0e $00
    ld a, $01                                     ; $6639: $3e $01
    call Call_000_03b6                            ; $663b: $cd $b6 $03
    call Call_000_0399                            ; $663e: $cd $99 $03
    ld c, $00                                     ; $6641: $0e $00
    ld a, $01                                     ; $6643: $3e $01
    call Call_000_03b6                            ; $6645: $cd $b6 $03
    ld b, $03                                     ; $6648: $06 $03
    ld hl, $469f                                  ; $664a: $21 $9f $46
    ld c, $00                                     ; $664d: $0e $00
    ld de, $0013                                  ; $664f: $11 $13 $00
    call Call_000_044e                            ; $6652: $cd $4e $04
    call Call_000_0483                            ; $6655: $cd $83 $04
    ld hl, $c337                                  ; $6658: $21 $37 $c3
    res 6, [hl]                                   ; $665b: $cb $b6
    ld hl, rIE                                    ; $665d: $21 $ff $ff
    res 1, [hl]                                   ; $6660: $cb $8e
    xor a                                         ; $6662: $af
    ld [$c338], a                                 ; $6663: $ea $38 $c3
    ld [$c33c], a                                 ; $6666: $ea $3c $c3
    ld [$c350], a                                 ; $6669: $ea $50 $c3
    ld a, $04                                     ; $666c: $3e $04
    ld [StatePhase_Current], a                    ; $666e: $ea $35 $d6
    ld a, $07                                     ; $6671: $3e $07
    ld [GameState_Current], a                     ; $6673: $ea $34 $d6
    ret                                           ; $6676: $c9


GS09_StatePhase_03_TODO::
    call Call_000_05b6                            ; $6677: $cd $b6 $05
    rst RST_08                                    ; $667a: $cf
    xor a                                         ; $667b: $af
    ld [$d83a], a                                 ; $667c: $ea $3a $d8
    ld a, $01                                     ; $667f: $3e $01
    ld [$d83b], a                                 ; $6681: $ea $3b $d8
    ld a, [$a065]                                 ; $6684: $fa $65 $a0
    ld c, a                                       ; $6687: $4f
    sla a                                         ; $6688: $cb $27
    sla a                                         ; $668a: $cb $27
    add c                                         ; $668c: $81
    ld c, a                                       ; $668d: $4f
    ld b, $00                                     ; $668e: $06 $00
    ld hl, $a06c                                  ; $6690: $21 $6c $a0
    add hl, bc                                    ; $6693: $09
    ld a, [hl]                                    ; $6694: $7e
    ld [$d83c], a                                 ; $6695: $ea $3c $d8
    ld a, $01                                     ; $6698: $3e $01
    ld [$d83d], a                                 ; $669a: $ea $3d $d8
    ld a, $06                                     ; $669d: $3e $06
    ld hl, $7a00                                  ; $669f: $21 $00 $7a
    ld de, $8500                                  ; $66a2: $11 $00 $85
    ld bc, $0300                                  ; $66a5: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $66a8: $cd $38 $05
    call Call_001_70a1                            ; $66ab: $cd $a1 $70
    ld hl, StatePhase_Current                     ; $66ae: $21 $35 $d6
    inc [hl]                                      ; $66b1: $34
    ret                                           ; $66b2: $c9


GS09_StatePhase_04_TODO::
    ld b, $02                                     ; $66b3: $06 $02
    ld hl, $4632                                  ; $66b5: $21 $32 $46
    call SwitchBankToBAndJumpToHL                 ; $66b8: $cd $de $05
    ld a, [$c31e]                                 ; $66bb: $fa $1e $c3
    bit 0, a                                      ; $66be: $cb $47
    jr z, jr_001_66d8                             ; $66c0: $28 $16

    ld c, $03                                     ; $66c2: $0e $03
    ld a, $02                                     ; $66c4: $3e $02
    call Call_000_03b6                            ; $66c6: $cd $b6 $03
    ld a, [$d83a]                                 ; $66c9: $fa $3a $d8
    ld c, a                                       ; $66cc: $4f
    ld b, $00                                     ; $66cd: $06 $00
    ld hl, GS09_StatePhase_04_TODO_Data           ; $66cf: $21 $e8 $66
    add hl, bc                                    ; $66d2: $09
    ld a, [hl]                                    ; $66d3: $7e
    ld [StatePhase_Current], a                    ; $66d4: $ea $35 $d6
    ret                                           ; $66d7: $c9


jr_001_66d8:
    bit 3, a                                      ; $66d8: $cb $5f
    ret z                                         ; $66da: $c8

    ld c, $04                                     ; $66db: $0e $04
    ld a, $02                                     ; $66dd: $3e $02
    call Call_000_03b6                            ; $66df: $cd $b6 $03
    ld a, $08                                     ; $66e2: $3e $08
    ld [StatePhase_Current], a                    ; $66e4: $ea $35 $d6
    ret                                           ; $66e7: $c9


GS09_StatePhase_04_TODO_Data::
    db $05, $07, $06

GS09_StatePhase_05_TODO::
    ld b, $02                                     ; $66eb: $06 $02
    ld hl, $4672                                  ; $66ed: $21 $72 $46
    call SwitchBankToBAndJumpToHL                 ; $66f0: $cd $de $05
    ld a, [$c31e]                                 ; $66f3: $fa $1e $c3
    and $01                                       ; $66f6: $e6 $01
    ret z                                         ; $66f8: $c8

    ld c, $04                                     ; $66f9: $0e $04
    ld a, $02                                     ; $66fb: $3e $02
    call Call_000_03b6                            ; $66fd: $cd $b6 $03
    ld a, [$d83b]                                 ; $6700: $fa $3b $d8
    and a                                         ; $6703: $a7
    jr z, jr_001_670c                             ; $6704: $28 $06

    ld a, $04                                     ; $6706: $3e $04
    ld [StatePhase_Current], a                    ; $6708: $ea $35 $d6
    ret                                           ; $670b: $c9


jr_001_670c:
    call Call_000_1c14                            ; $670c: $cd $14 $1c
    ld a, $03                                     ; $670f: $3e $03
    ld [$aca2], a                                 ; $6711: $ea $a2 $ac
    ld c, $03                                     ; $6714: $0e $03
    ld a, $02                                     ; $6716: $3e $02
    call Call_000_03b6                            ; $6718: $cd $b6 $03
    ld bc, $003c                                  ; $671b: $01 $3c $00
    call Call_000_05fa                            ; $671e: $cd $fa $05
    ld a, $05                                     ; $6721: $3e $05
    call Call_000_03b6                            ; $6723: $cd $b6 $03
    ld c, $00                                     ; $6726: $0e $00
    ld a, $01                                     ; $6728: $3e $01
    call Call_000_03b6                            ; $672a: $cd $b6 $03
    call Call_000_0399                            ; $672d: $cd $99 $03
    ld c, $00                                     ; $6730: $0e $00
    ld a, $01                                     ; $6732: $3e $01
    call Call_000_03b6                            ; $6734: $cd $b6 $03
    ld b, $03                                     ; $6737: $06 $03
    ld hl, $469f                                  ; $6739: $21 $9f $46
    ld c, $00                                     ; $673c: $0e $00
    ld de, $0013                                  ; $673e: $11 $13 $00
    call Call_000_044e                            ; $6741: $cd $4e $04
    call Call_000_0483                            ; $6744: $cd $83 $04
    ld hl, $c337                                  ; $6747: $21 $37 $c3
    res 6, [hl]                                   ; $674a: $cb $b6
    ld hl, rIE                                    ; $674c: $21 $ff $ff
    res 1, [hl]                                   ; $674f: $cb $8e
    xor a                                         ; $6751: $af
    ld [$c338], a                                 ; $6752: $ea $38 $c3
    ld [$c33c], a                                 ; $6755: $ea $3c $c3
    ld [$c350], a                                 ; $6758: $ea $50 $c3
    ld a, [$a065]                                 ; $675b: $fa $65 $a0
    ld c, a                                       ; $675e: $4f
    sla a                                         ; $675f: $cb $27
    sla a                                         ; $6761: $cb $27
    add c                                         ; $6763: $81
    ld c, a                                       ; $6764: $4f
    ld b, $00                                     ; $6765: $06 $00
    ld hl, $a06c                                  ; $6767: $21 $6c $a0
    add hl, bc                                    ; $676a: $09
    ld a, [hl]                                    ; $676b: $7e
    ld a, [$d83c]                                 ; $676c: $fa $3c $d8
    ld [hl], a                                    ; $676f: $77
    ld a, $04                                     ; $6770: $3e $04
    ld [StatePhase_Current], a                    ; $6772: $ea $35 $d6
    ld a, $00                                     ; $6775: $3e $00
    ld [GameState_Current], a                     ; $6777: $ea $34 $d6
    jp Jump_000_1b1f                              ; $677a: $c3 $1f $1b


GS09_StatePhase_06_TODO::
    ld b, $02                                     ; $677d: $06 $02
    ld hl, $46b2                                  ; $677f: $21 $b2 $46
    call SwitchBankToBAndJumpToHL                 ; $6782: $cd $de $05
    ld a, [$c31e]                                 ; $6785: $fa $1e $c3
    and $01                                       ; $6788: $e6 $01
    ret z                                         ; $678a: $c8

    ld c, $04                                     ; $678b: $0e $04
    ld a, $02                                     ; $678d: $3e $02
    call Call_000_03b6                            ; $678f: $cd $b6 $03
    ld a, $04                                     ; $6792: $3e $04
    ld [StatePhase_Current], a                    ; $6794: $ea $35 $d6
    ret                                           ; $6797: $c9


GS09_StatePhase_07_TODO::
    ld b, $02                                     ; $6798: $06 $02
    ld hl, $470f                                  ; $679a: $21 $0f $47
    call SwitchBankToBAndJumpToHL                 ; $679d: $cd $de $05
    ld a, [$c31e]                                 ; $67a0: $fa $1e $c3
    and $01                                       ; $67a3: $e6 $01
    ret z                                         ; $67a5: $c8

    ld c, $04                                     ; $67a6: $0e $04
    ld a, $02                                     ; $67a8: $3e $02
    call Call_000_03b6                            ; $67aa: $cd $b6 $03
    ld a, [$d83d]                                 ; $67ad: $fa $3d $d8
    and a                                         ; $67b0: $a7
    jr z, jr_001_67b9                             ; $67b1: $28 $06

    ld a, $04                                     ; $67b3: $3e $04
    ld [StatePhase_Current], a                    ; $67b5: $ea $35 $d6
    ret                                           ; $67b8: $c9


jr_001_67b9:
    ld a, $01                                     ; $67b9: $3e $01
    ld [$d806], a                                 ; $67bb: $ea $06 $d8
    ld c, $00                                     ; $67be: $0e $00
    ld a, $01                                     ; $67c0: $3e $01
    call Call_000_03b6                            ; $67c2: $cd $b6 $03
    call Call_000_0399                            ; $67c5: $cd $99 $03
    ld c, $08                                     ; $67c8: $0e $08
    ld a, $01                                     ; $67ca: $3e $01
    call Call_000_03b6                            ; $67cc: $cd $b6 $03
    call Call_000_05b6                            ; $67cf: $cd $b6 $05
    call Call_001_7ce3                            ; $67d2: $cd $e3 $7c
    ld a, [$a065]                                 ; $67d5: $fa $65 $a0
    ld c, a                                       ; $67d8: $4f
    sla a                                         ; $67d9: $cb $27
    sla a                                         ; $67db: $cb $27
    add c                                         ; $67dd: $81
    ld c, a                                       ; $67de: $4f
    ld b, $00                                     ; $67df: $06 $00
    ld hl, $a06c                                  ; $67e1: $21 $6c $a0
    add hl, bc                                    ; $67e4: $09
    ld a, [hl]                                    ; $67e5: $7e
    ld a, [$d83c]                                 ; $67e6: $fa $3c $d8
    ld [hl], a                                    ; $67e9: $77
    ld a, $02                                     ; $67ea: $3e $02
    ld [StatePhase_Current], a                    ; $67ec: $ea $35 $d6
    xor a                                         ; $67ef: $af
    ld [$aca2], a                                 ; $67f0: $ea $a2 $ac
    jp Jump_000_1b1f                              ; $67f3: $c3 $1f $1b


GS09_StatePhase_08_TODO::
    call Call_000_05b6                            ; $67f6: $cd $b6 $05
    rst RST_08                                    ; $67f9: $cf
    ld a, [$a065]                                 ; $67fa: $fa $65 $a0
    ld c, a                                       ; $67fd: $4f
    sla a                                         ; $67fe: $cb $27
    sla a                                         ; $6800: $cb $27
    add c                                         ; $6802: $81
    ld c, a                                       ; $6803: $4f
    ld b, $00                                     ; $6804: $06 $00
    ld hl, $a06c                                  ; $6806: $21 $6c $a0
    add hl, bc                                    ; $6809: $09
    ld a, [hl]                                    ; $680a: $7e
    ld a, [$d83c]                                 ; $680b: $fa $3c $d8
    ld [hl], a                                    ; $680e: $77
    ld a, $06                                     ; $680f: $3e $06
    ld hl, $4500                                  ; $6811: $21 $00 $45
    ld de, $8500                                  ; $6814: $11 $00 $85
    ld bc, $0300                                  ; $6817: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $681a: $cd $38 $05
    call Call_001_6fb9                            ; $681d: $cd $b9 $6f
    call Call_001_7c04                            ; $6820: $cd $04 $7c
    ld a, $01                                     ; $6823: $3e $01
    ld [StatePhase_Current], a                    ; $6825: $ea $35 $d6
    xor a                                         ; $6828: $af
    ld [$aca2], a                                 ; $6829: $ea $a2 $ac
    jp Jump_000_1b1f                              ; $682c: $c3 $1f $1b


Call_001_682f:
    ld a, [$c31a]                                 ; $682f: $fa $1a $c3
    and $01                                       ; $6832: $e6 $01
    jr z, jr_001_683d                             ; $6834: $28 $07

    ld a, [$c322]                                 ; $6836: $fa $22 $c3
    and $f0                                       ; $6839: $e6 $f0
    jr z, jr_001_6841                             ; $683b: $28 $04

jr_001_683d:
    xor a                                         ; $683d: $af
    ld [$d80f], a                                 ; $683e: $ea $0f $d8

jr_001_6841:
    ld a, [$d637]                                 ; $6841: $fa $37 $d6
    sla a                                         ; $6844: $cb $27
    sla a                                         ; $6846: $cb $27
    sla a                                         ; $6848: $cb $27
    sla a                                         ; $684a: $cb $27
    ld hl, $d636                                  ; $684c: $21 $36 $d6
    add [hl]                                      ; $684f: $86
    ld c, a                                       ; $6850: $4f
    ld b, $00                                     ; $6851: $06 $00
    ld hl, $d640                                  ; $6853: $21 $40 $d6
    add hl, bc                                    ; $6856: $09
    push hl                                       ; $6857: $e5
    ld a, [$a065]                                 ; $6858: $fa $65 $a0
    ld c, a                                       ; $685b: $4f
    ld b, $00                                     ; $685c: $06 $00
    ld hl, $a066                                  ; $685e: $21 $66 $a0
    add hl, bc                                    ; $6861: $09
    ld a, [hl]                                    ; $6862: $7e
    pop hl                                        ; $6863: $e1
    and a                                         ; $6864: $a7
    jp z, Jump_001_7260                           ; $6865: $ca $60 $72

    dec a                                         ; $6868: $3d
    jp z, Jump_001_7260                           ; $6869: $ca $60 $72

    ret                                           ; $686c: $c9


GameState_0A_TODO_PhaseDispatcher::
    ld a, [StatePhase_Current]                    ; $686d: $fa $35 $d6
    rst RST_18                                    ; $6870: $df

GS0A_PhasePointer_00::
    db $89, $68

GS0A_PhasePointer_01::
    db $92, $6a

GS0A_PhasePointer_02::
    db $44, $6b

GS0A_PhasePointer_03::
    db $41, $6c

GS0A_PhasePointer_04::
    db $ff, $6c

GS0A_PhasePointer_05::
    db $57, $6d

GS0A_PhasePointer_06::
    db $9c, $6d

GS0A_PhasePointer_07::
    db $d4, $6d

GS0A_PhasePointer_08::
    db $6e, $6e

GS0A_PhasePointer_09::
    db $89, $6e

GS0A_PhasePointer_0a::
    db $ef, $6e

GS0A_PhasePointer_0b::
    db $07, $69

GS0A_StatePhase_00_TODO::
    ld a, $43                                     ; $6889: $3e $43
    ld [$c32e], a                                 ; $688b: $ea $2e $c3
    xor a                                         ; $688e: $af
    ld [$c32f], a                                 ; $688f: $ea $2f $c3
    ld [$c330], a                                 ; $6892: $ea $30 $c3
    ld [$c331], a                                 ; $6895: $ea $31 $c3
    ld [$c332], a                                 ; $6898: $ea $32 $c3
    ld [$c333], a                                 ; $689b: $ea $33 $c3
    call Call_000_05a0                            ; $689e: $cd $a0 $05
    call Call_000_05ab                            ; $68a1: $cd $ab $05
    call Call_000_07f1                            ; $68a4: $cd $f1 $07
    call LoadGameBoardTileData                    ; $68a7: $cd $b9 $69
    xor a                                         ; $68aa: $af
    ld [$d636], a                                 ; $68ab: $ea $36 $d6
    ld [$d637], a                                 ; $68ae: $ea $37 $d6
    ld a, $00                                     ; $68b1: $3e $00
    ld [$d833], a                                 ; $68b3: $ea $33 $d8
    ld a, $02                                     ; $68b6: $3e $02
    ld [$d811], a                                 ; $68b8: $ea $11 $d8
    ld a, $06                                     ; $68bb: $3e $06
    ld hl, $7800                                  ; $68bd: $21 $00 $78
    ld de, $8500                                  ; $68c0: $11 $00 $85
    ld bc, $0200                                  ; $68c3: $01 $00 $02
    call BankedTileCopy                           ; $68c6: $cd $e4 $04
    ld a, $2f                                     ; $68c9: $3e $2f
    ld [$c336], a                                 ; $68cb: $ea $36 $c3
    ld hl, $c337                                  ; $68ce: $21 $37 $c3
    set 6, [hl]                                   ; $68d1: $cb $f6
    ld hl, rIE                                    ; $68d3: $21 $ff $ff
    set 1, [hl]                                   ; $68d6: $cb $ce
    ld a, $01                                     ; $68d8: $3e $01
    ld [$c338], a                                 ; $68da: $ea $38 $c3
    ld [$c33c], a                                 ; $68dd: $ea $3c $c3
    ld [$c350], a                                 ; $68e0: $ea $50 $c3
    call Call_001_6f30                            ; $68e3: $cd $30 $6f
    call Call_000_05b6                            ; $68e6: $cd $b6 $05
    call Call_001_7beb                            ; $68e9: $cd $eb $7b
    call Call_001_786e                            ; $68ec: $cd $6e $78
    call Call_001_7dfe                            ; $68ef: $cd $fe $7d
    call Call_000_04a2                            ; $68f2: $cd $a2 $04
    ld b, $03                                     ; $68f5: $06 $03
    ld hl, $4694                                  ; $68f7: $21 $94 $46
    ld c, $00                                     ; $68fa: $0e $00
    ld de, $0004                                  ; $68fc: $11 $04 $00
    call Call_000_040d                            ; $68ff: $cd $0d $04
    ld hl, StatePhase_Current                     ; $6902: $21 $35 $d6
    inc [hl]                                      ; $6905: $34
    ret                                           ; $6906: $c9


GS0A_StatePhase_0b_TODO::
    ld a, $43                                     ; $6907: $3e $43
    ld [$c32e], a                                 ; $6909: $ea $2e $c3
    xor a                                         ; $690c: $af
    ld [$c32f], a                                 ; $690d: $ea $2f $c3
    ld [$c330], a                                 ; $6910: $ea $30 $c3
    ld [$c331], a                                 ; $6913: $ea $31 $c3
    ld [$c332], a                                 ; $6916: $ea $32 $c3
    ld [$c333], a                                 ; $6919: $ea $33 $c3
    call Call_000_05a0                            ; $691c: $cd $a0 $05
    call Call_000_05ab                            ; $691f: $cd $ab $05
    call Call_000_1c96                            ; $6922: $cd $96 $1c
    call LoadGameBoardTileData                    ; $6925: $cd $b9 $69
    ld a, $06                                     ; $6928: $3e $06
    ld hl, $7800                                  ; $692a: $21 $00 $78
    ld de, $8500                                  ; $692d: $11 $00 $85
    ld bc, $0200                                  ; $6930: $01 $00 $02
    call BankedTileCopy                           ; $6933: $cd $e4 $04
    ld a, $2f                                     ; $6936: $3e $2f
    ld [$c336], a                                 ; $6938: $ea $36 $c3
    ld hl, $c337                                  ; $693b: $21 $37 $c3
    set 6, [hl]                                   ; $693e: $cb $f6
    ld hl, rIE                                    ; $6940: $21 $ff $ff
    set 1, [hl]                                   ; $6943: $cb $ce
    ld a, $01                                     ; $6945: $3e $01
    ld [$c338], a                                 ; $6947: $ea $38 $c3
    ld [$c33c], a                                 ; $694a: $ea $3c $c3
    ld [$c350], a                                 ; $694d: $ea $50 $c3
    call Call_001_6f30                            ; $6950: $cd $30 $6f
    call Call_000_05b6                            ; $6953: $cd $b6 $05
    xor a                                         ; $6956: $af
    ld [$d80d], a                                 ; $6957: $ea $0d $d8
    call Call_001_7c04                            ; $695a: $cd $04 $7c
    call Call_001_786e                            ; $695d: $cd $6e $78
    call Call_001_7dfe                            ; $6960: $cd $fe $7d
    call Call_000_04a2                            ; $6963: $cd $a2 $04
    ld b, $03                                     ; $6966: $06 $03
    ld hl, $4694                                  ; $6968: $21 $94 $46
    ld c, $00                                     ; $696b: $0e $00
    ld de, $0004                                  ; $696d: $11 $04 $00
    call Call_000_040d                            ; $6970: $cd $0d $04
    call Call_000_05b6                            ; $6973: $cd $b6 $05
    rst RST_08                                    ; $6976: $cf
    xor a                                         ; $6977: $af
    ld [$d83a], a                                 ; $6978: $ea $3a $d8
    ld a, $01                                     ; $697b: $3e $01
    ld [$d83b], a                                 ; $697d: $ea $3b $d8
    ld a, [$a065]                                 ; $6980: $fa $65 $a0
    ld c, a                                       ; $6983: $4f
    ld b, $00                                     ; $6984: $06 $00
    ld hl, $a38d                                  ; $6986: $21 $8d $a3
    add hl, bc                                    ; $6989: $09
    ld a, [$a065]                                 ; $698a: $fa $65 $a0
    ld c, a                                       ; $698d: $4f
    sla a                                         ; $698e: $cb $27
    sla a                                         ; $6990: $cb $27
    add c                                         ; $6992: $81
    add [hl]                                      ; $6993: $86
    ld c, a                                       ; $6994: $4f
    ld hl, $a06a                                  ; $6995: $21 $6a $a0
    add hl, bc                                    ; $6998: $09
    ld a, [hl]                                    ; $6999: $7e
    ld [$d83c], a                                 ; $699a: $ea $3c $d8
    ld a, $01                                     ; $699d: $3e $01
    ld [$d83d], a                                 ; $699f: $ea $3d $d8
    ld a, $06                                     ; $69a2: $3e $06
    ld hl, $7a00                                  ; $69a4: $21 $00 $7a
    ld de, $8500                                  ; $69a7: $11 $00 $85
    ld bc, $0300                                  ; $69aa: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $69ad: $cd $38 $05
    call Call_001_7dcb                            ; $69b0: $cd $cb $7d
    ld a, $06                                     ; $69b3: $3e $06
    ld [StatePhase_Current], a                    ; $69b5: $ea $35 $d6
    ret                                           ; $69b8: $c9


LoadGameBoardTileData::
    ld a, [CurrentGridSize]                       ; $69b9: $fa $00 $d8
    cp $05                                        ; $69bc: $fe $05
    jr nz, Load10x10GameBoardTileData             ; $69be: $20 $36

    ld a, $07                                     ; $69c0: $3e $07
    ld hl, $4000                                  ; $69c2: $21 $00 $40
    ld de, $8000                                  ; $69c5: $11 $00 $80
    ld bc, $1800                                  ; $69c8: $01 $00 $18
    call BankedTileCopy                           ; $69cb: $cd $e4 $04
    ld a, $06                                     ; $69ce: $3e $06
    ld hl, $4800                                  ; $69d0: $21 $00 $48
    ld de, $8800                                  ; $69d3: $11 $00 $88
    ld bc, $0200                                  ; $69d6: $01 $00 $02
    call BankedTileCopy                           ; $69d9: $cd $e4 $04
    ld a, $0b                                     ; $69dc: $3e $0b
    ld hl, $6000                                  ; $69de: $21 $00 $60
    ld de, $9800                                  ; $69e1: $11 $00 $98
    ld bc, $0400                                  ; $69e4: $01 $00 $04
    call BankedTileCopy                           ; $69e7: $cd $e4 $04
    ld a, $96                                     ; $69ea: $3e $96
    ld [$cd63], a                                 ; $69ec: $ea $63 $cd
    ld a, $10                                     ; $69ef: $3e $10
    ld [$cd64], a                                 ; $69f1: $ea $64 $cd
    jr jr_001_6a48                                ; $69f4: $18 $52

Load10x10GameBoardTileData::
    cp $0a                                        ; $69f6: $fe $0a
    jr nz, Load15x15GameBoardTileData             ; $69f8: $20 $28

    ld a, $08                                     ; $69fa: $3e $08
    ld hl, $4000                                  ; $69fc: $21 $00 $40
    ld de, $8000                                  ; $69ff: $11 $00 $80
    ld bc, $1800                                  ; $6a02: $01 $00 $18
    call BankedTileCopy                           ; $6a05: $cd $e4 $04
    ld a, $0b                                     ; $6a08: $3e $0b
    ld hl, GS09_PhasePointer_00                   ; $6a0a: $21 $00 $64
    ld de, $9800                                  ; $6a0d: $11 $00 $98
    ld bc, $0400                                  ; $6a10: $01 $00 $04
    call BankedTileCopy                           ; $6a13: $cd $e4 $04
    ld a, $8a                                     ; $6a16: $3e $8a
    ld [$cd63], a                                 ; $6a18: $ea $63 $cd
    ld a, $13                                     ; $6a1b: $3e $13
    ld [$cd64], a                                 ; $6a1d: $ea $64 $cd
    jr jr_001_6a48                                ; $6a20: $18 $26

Load15x15GameBoardTileData::
    ld a, $06                                     ; $6a22: $3e $06
    ld hl, $4000                                  ; $6a24: $21 $00 $40
    ld de, $8000                                  ; $6a27: $11 $00 $80
    ld bc, $1800                                  ; $6a2a: $01 $00 $18
    call BankedTileCopy                           ; $6a2d: $cd $e4 $04
    ld a, $0b                                     ; $6a30: $3e $0b
    ld hl, $5c00                                  ; $6a32: $21 $00 $5c
    ld de, $9800                                  ; $6a35: $11 $00 $98
    ld bc, $0400                                  ; $6a38: $01 $00 $04
    call BankedTileCopy                           ; $6a3b: $cd $e4 $04
    ld a, $a2                                     ; $6a3e: $3e $a2
    ld [$cd63], a                                 ; $6a40: $ea $63 $cd
    ld a, $0d                                     ; $6a43: $3e $0d
    ld [$cd64], a                                 ; $6a45: $ea $64 $cd

jr_001_6a48:
    xor a                                         ; $6a48: $af
    ld [$d805], a                                 ; $6a49: $ea $05 $d8
    ld [$d806], a                                 ; $6a4c: $ea $06 $d8
    ld [$d818], a                                 ; $6a4f: $ea $18 $d8
    ld [$d817], a                                 ; $6a52: $ea $17 $d8
    ld [$d81c], a                                 ; $6a55: $ea $1c $d8
    ld [$d81d], a                                 ; $6a58: $ea $1d $d8
    ld [$d80f], a                                 ; $6a5b: $ea $0f $d8
    ld [$d81f], a                                 ; $6a5e: $ea $1f $d8
    ld [$d820], a                                 ; $6a61: $ea $20 $d8
    ld [$d821], a                                 ; $6a64: $ea $21 $d8
    ld [$d824], a                                 ; $6a67: $ea $24 $d8
    ld [$d825], a                                 ; $6a6a: $ea $25 $d8
    ld [$d823], a                                 ; $6a6d: $ea $23 $d8
    ld [$d822], a                                 ; $6a70: $ea $22 $d8
    ld a, $01                                     ; $6a73: $3e $01
    ld [$d812], a                                 ; $6a75: $ea $12 $d8
    ld [$d813], a                                 ; $6a78: $ea $13 $d8
    call Call_000_0614                            ; $6a7b: $cd $14 $06
    sla a                                         ; $6a7e: $cb $27
    add $b4                                       ; $6a80: $c6 $b4
    ld [$d814], a                                 ; $6a82: $ea $14 $d8
    ld a, $00                                     ; $6a85: $3e $00
    adc $00                                       ; $6a87: $ce $00
    ld [$d815], a                                 ; $6a89: $ea $15 $d8
    ld a, $05                                     ; $6a8c: $3e $05
    ld [$d82a], a                                 ; $6a8e: $ea $2a $d8
    ret                                           ; $6a91: $c9


GS0A_StatePhase_01_TODO::
    call Call_001_7918                            ; $6a92: $cd $18 $79
    ld a, [$d833]                                 ; $6a95: $fa $33 $d8
    add $3a                                       ; $6a98: $c6 $3a
    ld bc, $2848                                  ; $6a9a: $01 $48 $28
    call Call_000_20ce                            ; $6a9d: $cd $ce $20
    ld a, [$c31e]                                 ; $6aa0: $fa $1e $c3
    and $f0                                       ; $6aa3: $e6 $f0
    jr z, jr_001_6ab7                             ; $6aa5: $28 $10

    ld c, $0a                                     ; $6aa7: $0e $0a
    ld a, $02                                     ; $6aa9: $3e $02
    call Call_000_03b6                            ; $6aab: $cd $b6 $03
    ld a, [$d833]                                 ; $6aae: $fa $33 $d8
    xor $01                                       ; $6ab1: $ee $01
    ld [$d833], a                                 ; $6ab3: $ea $33 $d8
    ret                                           ; $6ab6: $c9


jr_001_6ab7:
    ld a, [$c31e]                                 ; $6ab7: $fa $1e $c3
    and $09                                       ; $6aba: $e6 $09
    jr nz, jr_001_6ae7                            ; $6abc: $20 $29

    ld a, [$c31e]                                 ; $6abe: $fa $1e $c3
    and $02                                       ; $6ac1: $e6 $02
    ret z                                         ; $6ac3: $c8

    call Call_000_05c5                            ; $6ac4: $cd $c5 $05
    rst RST_08                                    ; $6ac7: $cf
    ld c, $04                                     ; $6ac8: $0e $04
    ld a, $02                                     ; $6aca: $3e $02
    call Call_000_03b6                            ; $6acc: $cd $b6 $03
    call Call_000_05b6                            ; $6acf: $cd $b6 $05
    ld a, $01                                     ; $6ad2: $3e $01
    ld [$d833], a                                 ; $6ad4: $ea $33 $d8
    add $3a                                       ; $6ad7: $c6 $3a
    ld bc, $2848                                  ; $6ad9: $01 $48 $28
    call Call_000_20ce                            ; $6adc: $cd $ce $20
    ld bc, $001e                                  ; $6adf: $01 $1e $00
    call Call_000_05fa                            ; $6ae2: $cd $fa $05
    jr jr_001_6aee                                ; $6ae5: $18 $07

jr_001_6ae7:
    ld c, $03                                     ; $6ae7: $0e $03
    ld a, $02                                     ; $6ae9: $3e $02
    call Call_000_03b6                            ; $6aeb: $cd $b6 $03

jr_001_6aee:
    ld a, [$d833]                                 ; $6aee: $fa $33 $d8
    and a                                         ; $6af1: $a7
    jr nz, jr_001_6afa                            ; $6af2: $20 $06

    ld hl, StatePhase_Current                     ; $6af4: $21 $35 $d6
    inc [hl]                                      ; $6af7: $34
    jr jr_001_6b05                                ; $6af8: $18 $0b

jr_001_6afa:
    call Call_001_7dcb                            ; $6afa: $cd $cb $7d
    ld hl, StatePhase_Current                     ; $6afd: $21 $35 $d6
    inc [hl]                                      ; $6b00: $34
    ld hl, StatePhase_Current                     ; $6b01: $21 $35 $d6
    inc [hl]                                      ; $6b04: $34

jr_001_6b05:
    call Call_000_05b6                            ; $6b05: $cd $b6 $05
    rst RST_08                                    ; $6b08: $cf
    call Call_001_6fb9                            ; $6b09: $cd $b9 $6f
    ld a, [CurrentGridSize]                       ; $6b0c: $fa $00 $d8
    cp $05                                        ; $6b0f: $fe $05
    jr nz, jr_001_6b22                            ; $6b11: $20 $0f

    ld a, $07                                     ; $6b13: $3e $07
    ld hl, $4500                                  ; $6b15: $21 $00 $45
    ld de, $8500                                  ; $6b18: $11 $00 $85
    ld bc, $0200                                  ; $6b1b: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $6b1e: $cd $38 $05
    ret                                           ; $6b21: $c9


jr_001_6b22:
    cp $0a                                        ; $6b22: $fe $0a
    jr nz, jr_001_6b35                            ; $6b24: $20 $0f

    ld a, $08                                     ; $6b26: $3e $08
    ld hl, $4500                                  ; $6b28: $21 $00 $45
    ld de, $8500                                  ; $6b2b: $11 $00 $85
    ld bc, $0200                                  ; $6b2e: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $6b31: $cd $38 $05
    ret                                           ; $6b34: $c9


jr_001_6b35:
    ld a, $06                                     ; $6b35: $3e $06
    ld hl, $4500                                  ; $6b37: $21 $00 $45
    ld de, $8500                                  ; $6b3a: $11 $00 $85
    ld bc, $0200                                  ; $6b3d: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $6b40: $cd $38 $05
    ret                                           ; $6b43: $c9


GS0A_StatePhase_02_TODO::
    ld a, [$d812]                                 ; $6b44: $fa $12 $d8
    cp $3f                                        ; $6b47: $fe $3f
    jr z, jr_001_6b7f                             ; $6b49: $28 $34

    ld c, a                                       ; $6b4b: $4f
    ld a, [$c33a]                                 ; $6b4c: $fa $3a $c3
    and c                                         ; $6b4f: $a1
    jr nz, jr_001_6b7f                            ; $6b50: $20 $2d

    ld a, c                                       ; $6b52: $79
    cp $01                                        ; $6b53: $fe $01
    jr z, jr_001_6b5d                             ; $6b55: $28 $06

    scf                                           ; $6b57: $37
    ld hl, $d812                                  ; $6b58: $21 $12 $d8
    rl [hl]                                       ; $6b5b: $cb $16

jr_001_6b5d:
    ld a, [$d636]                                 ; $6b5d: $fa $36 $d6
    inc a                                         ; $6b60: $3c
    ld hl, CurrentGridSize                        ; $6b61: $21 $00 $d8
    cp [hl]                                       ; $6b64: $be
    jr nz, jr_001_6b68                            ; $6b65: $20 $01

    xor a                                         ; $6b67: $af

jr_001_6b68:
    ld [$d636], a                                 ; $6b68: $ea $36 $d6
    ld c, a                                       ; $6b6b: $4f
    sla a                                         ; $6b6c: $cb $27
    add c                                         ; $6b6e: $81
    sla a                                         ; $6b6f: $cb $27
    ld c, a                                       ; $6b71: $4f
    ld b, $00                                     ; $6b72: $06 $00
    ld hl, $d7a5                                  ; $6b74: $21 $a5 $d7
    add hl, bc                                    ; $6b77: $09
    ld a, [hl]                                    ; $6b78: $7e
    and a                                         ; $6b79: $a7
    jr z, jr_001_6b5d                             ; $6b7a: $28 $e1

    call Call_001_6c2c                            ; $6b7c: $cd $2c $6c

jr_001_6b7f:
    ld a, [$d813]                                 ; $6b7f: $fa $13 $d8
    cp $3f                                        ; $6b82: $fe $3f
    jr z, jr_001_6bba                             ; $6b84: $28 $34

    ld c, a                                       ; $6b86: $4f
    ld a, [$c33a]                                 ; $6b87: $fa $3a $c3
    and c                                         ; $6b8a: $a1
    jr nz, jr_001_6bba                            ; $6b8b: $20 $2d

    ld a, c                                       ; $6b8d: $79
    cp $01                                        ; $6b8e: $fe $01
    jr z, jr_001_6b98                             ; $6b90: $28 $06

    scf                                           ; $6b92: $37
    ld hl, $d813                                  ; $6b93: $21 $13 $d8
    rl [hl]                                       ; $6b96: $cb $16

jr_001_6b98:
    ld a, [$d637]                                 ; $6b98: $fa $37 $d6
    inc a                                         ; $6b9b: $3c
    ld hl, $d801                                  ; $6b9c: $21 $01 $d8
    cp [hl]                                       ; $6b9f: $be
    jr nz, jr_001_6ba3                            ; $6ba0: $20 $01

    xor a                                         ; $6ba2: $af

jr_001_6ba3:
    ld [$d637], a                                 ; $6ba3: $ea $37 $d6
    ld c, a                                       ; $6ba6: $4f
    sla a                                         ; $6ba7: $cb $27
    add c                                         ; $6ba9: $81
    sla a                                         ; $6baa: $cb $27
    ld c, a                                       ; $6bac: $4f
    ld b, $00                                     ; $6bad: $06 $00
    ld hl, $d745                                  ; $6baf: $21 $45 $d7
    add hl, bc                                    ; $6bb2: $09
    ld a, [hl]                                    ; $6bb3: $7e
    and a                                         ; $6bb4: $a7
    jr z, jr_001_6b98                             ; $6bb5: $28 $e1

    call Call_001_6c2c                            ; $6bb7: $cd $2c $6c

jr_001_6bba:
    call Call_001_7185                            ; $6bba: $cd $85 $71
    call Call_001_7918                            ; $6bbd: $cd $18 $79
    ld a, [$d812]                                 ; $6bc0: $fa $12 $d8
    ld c, a                                       ; $6bc3: $4f
    ld a, [$d813]                                 ; $6bc4: $fa $13 $d8
    and c                                         ; $6bc7: $a1
    cp $3f                                        ; $6bc8: $fe $3f
    jr nz, jr_001_6bd7                            ; $6bca: $20 $0b

    call Call_001_78a2                            ; $6bcc: $cd $a2 $78
    call Call_001_7dcb                            ; $6bcf: $cd $cb $7d
    ld hl, StatePhase_Current                     ; $6bd2: $21 $35 $d6
    inc [hl]                                      ; $6bd5: $34
    ret                                           ; $6bd6: $c9


jr_001_6bd7:
    ld a, [$d813]                                 ; $6bd7: $fa $13 $d8
    cp $01                                        ; $6bda: $fe $01
    ret nz                                        ; $6bdc: $c0

    ld hl, $d815                                  ; $6bdd: $21 $15 $d8
    ld a, [hl-]                                   ; $6be0: $3a
    or [hl]                                       ; $6be1: $b6
    jr z, jr_001_6bf3                             ; $6be2: $28 $0f

    ld a, [hl]                                    ; $6be4: $7e
    sub $01                                       ; $6be5: $d6 $01
    ld [hl], a                                    ; $6be7: $77
    inc hl                                        ; $6be8: $23
    ld a, [hl]                                    ; $6be9: $7e
    sbc $00                                       ; $6bea: $de $00
    ld [hl], a                                    ; $6bec: $77
    ld a, [$c31e]                                 ; $6bed: $fa $1e $c3
    and $09                                       ; $6bf0: $e6 $09
    ret z                                         ; $6bf2: $c8

jr_001_6bf3:
    ld a, [$d812]                                 ; $6bf3: $fa $12 $d8
    cp $01                                        ; $6bf6: $fe $01
    jr nz, jr_001_6c18                            ; $6bf8: $20 $1e

    scf                                           ; $6bfa: $37
    rl a                                          ; $6bfb: $cb $17
    ld [$d812], a                                 ; $6bfd: $ea $12 $d8
    ld hl, $d814                                  ; $6c00: $21 $14 $d8
    call Call_000_0614                            ; $6c03: $cd $14 $06
    sla a                                         ; $6c06: $cb $27
    add $78                                       ; $6c08: $c6 $78
    ld [hl+], a                                   ; $6c0a: $22
    ld a, $00                                     ; $6c0b: $3e $00
    adc $00                                       ; $6c0d: $ce $00
    ld [hl], a                                    ; $6c0f: $77
    ld c, $03                                     ; $6c10: $0e $03
    ld a, $02                                     ; $6c12: $3e $02
    call Call_000_03b6                            ; $6c14: $cd $b6 $03
    ret                                           ; $6c17: $c9


jr_001_6c18:
    ld a, [$d813]                                 ; $6c18: $fa $13 $d8
    cp $01                                        ; $6c1b: $fe $01
    ret nz                                        ; $6c1d: $c0

    scf                                           ; $6c1e: $37
    rl a                                          ; $6c1f: $cb $17
    ld [$d813], a                                 ; $6c21: $ea $13 $d8
    ld c, $03                                     ; $6c24: $0e $03
    ld a, $02                                     ; $6c26: $3e $02
    call Call_000_03b6                            ; $6c28: $cd $b6 $03
    ret                                           ; $6c2b: $c9


Call_001_6c2c:
    ld a, [$d82a]                                 ; $6c2c: $fa $2a $d8
    dec a                                         ; $6c2f: $3d
    ld [$d82a], a                                 ; $6c30: $ea $2a $d8
    ret nz                                        ; $6c33: $c0

    ld a, $05                                     ; $6c34: $3e $05
    ld [$d82a], a                                 ; $6c36: $ea $2a $d8
    ld c, $02                                     ; $6c39: $0e $02
    ld a, $02                                     ; $6c3b: $3e $02
    call Call_000_03b6                            ; $6c3d: $cd $b6 $03
    ret                                           ; $6c40: $c9


GS0A_StatePhase_03_TODO::
    call Call_001_71ca                            ; $6c41: $cd $ca $71
    call Call_001_713e                            ; $6c44: $cd $3e $71
    call Call_001_7918                            ; $6c47: $cd $18 $79
    call Call_001_7e33                            ; $6c4a: $cd $33 $7e
    call Call_001_7e77                            ; $6c4d: $cd $77 $7e
    call Call_001_7aea                            ; $6c50: $cd $ea $7a
    call Call_001_7a98                            ; $6c53: $cd $98 $7a
    call Call_001_7222                            ; $6c56: $cd $22 $72
    call Call_001_7516                            ; $6c59: $cd $16 $75
    call Call_001_75f6                            ; $6c5c: $cd $f6 $75
    call Call_001_7cc8                            ; $6c5f: $cd $c8 $7c
    ld a, [$c31e]                                 ; $6c62: $fa $1e $c3
    and $08                                       ; $6c65: $e6 $08
    jr z, jr_001_6c76                             ; $6c67: $28 $0d

    ld c, $10                                     ; $6c69: $0e $10
    ld a, $02                                     ; $6c6b: $3e $02
    call Call_000_03b6                            ; $6c6d: $cd $b6 $03
    ld a, $05                                     ; $6c70: $3e $05
    ld [StatePhase_Current], a                    ; $6c72: $ea $35 $d6
    ret                                           ; $6c75: $c9


jr_001_6c76:
    ld a, [$d805]                                 ; $6c76: $fa $05 $d8
    and a                                         ; $6c79: $a7
    jr z, jr_001_6cde                             ; $6c7a: $28 $62

    call Call_001_49a2                            ; $6c7c: $cd $a2 $49
    call Call_001_4cef                            ; $6c7f: $cd $ef $4c
    call Call_000_1b1f                            ; $6c82: $cd $1f $1b
    ld c, $00                                     ; $6c85: $0e $00
    ld a, $01                                     ; $6c87: $3e $01
    call Call_000_03b6                            ; $6c89: $cd $b6 $03
    call Call_000_0399                            ; $6c8c: $cd $99 $03
    ld c, $09                                     ; $6c8f: $0e $09
    ld a, $01                                     ; $6c91: $3e $01
    call Call_000_03b6                            ; $6c93: $cd $b6 $03
    call Call_000_05b6                            ; $6c96: $cd $b6 $05
    call Call_001_7635                            ; $6c99: $cd $35 $76

jr_001_6c9c:
    rst RST_08                                    ; $6c9c: $cf
    ld a, [$c31e]                                 ; $6c9d: $fa $1e $c3
    and $09                                       ; $6ca0: $e6 $09
    jr z, jr_001_6c9c                             ; $6ca2: $28 $f8

    ld c, $03                                     ; $6ca4: $0e $03
    ld a, $02                                     ; $6ca6: $3e $02
    call Call_000_03b6                            ; $6ca8: $cd $b6 $03
    call Call_001_76a9                            ; $6cab: $cd $a9 $76
    ld c, $00                                     ; $6cae: $0e $00
    ld a, $01                                     ; $6cb0: $3e $01
    call Call_000_03b6                            ; $6cb2: $cd $b6 $03
    call Call_000_0399                            ; $6cb5: $cd $99 $03
    ld c, $00                                     ; $6cb8: $0e $00
    ld a, $01                                     ; $6cba: $3e $01
    call Call_000_03b6                            ; $6cbc: $cd $b6 $03
    call Call_000_1a45                            ; $6cbf: $cd $45 $1a
    ld bc, $0004                                  ; $6cc2: $01 $04 $00
    call Call_000_05fa                            ; $6cc5: $cd $fa $05
    ld c, $00                                     ; $6cc8: $0e $00
    ld a, $01                                     ; $6cca: $3e $01
    call Call_000_03b6                            ; $6ccc: $cd $b6 $03
    call Call_000_0399                            ; $6ccf: $cd $99 $03
    ld c, $12                                     ; $6cd2: $0e $12
    ld a, $01                                     ; $6cd4: $3e $01
    call Call_000_03b6                            ; $6cd6: $cd $b6 $03
    ld hl, StatePhase_Current                     ; $6cd9: $21 $35 $d6
    inc [hl]                                      ; $6cdc: $34
    ret                                           ; $6cdd: $c9


jr_001_6cde:
    ld a, [$d806]                                 ; $6cde: $fa $06 $d8
    and a                                         ; $6ce1: $a7
    ret z                                         ; $6ce2: $c8

    ld c, $00                                     ; $6ce3: $0e $00
    ld a, $01                                     ; $6ce5: $3e $01
    call Call_000_03b6                            ; $6ce7: $cd $b6 $03
    call Call_000_0399                            ; $6cea: $cd $99 $03
    ld c, $08                                     ; $6ced: $0e $08
    ld a, $01                                     ; $6cef: $3e $01
    call Call_000_03b6                            ; $6cf1: $cd $b6 $03
    call Call_000_05b6                            ; $6cf4: $cd $b6 $05
    call Call_001_7ce3                            ; $6cf7: $cd $e3 $7c
    ld hl, StatePhase_Current                     ; $6cfa: $21 $35 $d6
    inc [hl]                                      ; $6cfd: $34
    ret                                           ; $6cfe: $c9


GS0A_StatePhase_04_TODO::
    ld a, [$c31e]                                 ; $6cff: $fa $1e $c3
    and $09                                       ; $6d02: $e6 $09
    ret z                                         ; $6d04: $c8

    ld c, $03                                     ; $6d05: $0e $03
    ld a, $02                                     ; $6d07: $3e $02
    call Call_000_03b6                            ; $6d09: $cd $b6 $03
    ld bc, $003c                                  ; $6d0c: $01 $3c $00
    call Call_000_05fa                            ; $6d0f: $cd $fa $05
    ld a, $05                                     ; $6d12: $3e $05
    call Call_000_03b6                            ; $6d14: $cd $b6 $03
    ld c, $00                                     ; $6d17: $0e $00
    ld a, $01                                     ; $6d19: $3e $01
    call Call_000_03b6                            ; $6d1b: $cd $b6 $03
    call Call_000_0399                            ; $6d1e: $cd $99 $03
    ld c, $00                                     ; $6d21: $0e $00
    ld a, $01                                     ; $6d23: $3e $01
    call Call_000_03b6                            ; $6d25: $cd $b6 $03
    ld b, $03                                     ; $6d28: $06 $03
    ld hl, $469f                                  ; $6d2a: $21 $9f $46
    ld c, $00                                     ; $6d2d: $0e $00
    ld de, $0013                                  ; $6d2f: $11 $13 $00
    call Call_000_044e                            ; $6d32: $cd $4e $04
    call Call_000_0483                            ; $6d35: $cd $83 $04
    ld hl, $c337                                  ; $6d38: $21 $37 $c3
    res 6, [hl]                                   ; $6d3b: $cb $b6
    ld hl, rIE                                    ; $6d3d: $21 $ff $ff
    res 1, [hl]                                   ; $6d40: $cb $8e
    xor a                                         ; $6d42: $af
    ld [$c338], a                                 ; $6d43: $ea $38 $c3
    ld [$c33c], a                                 ; $6d46: $ea $3c $c3
    ld [$c350], a                                 ; $6d49: $ea $50 $c3
    ld a, $04                                     ; $6d4c: $3e $04
    ld [StatePhase_Current], a                    ; $6d4e: $ea $35 $d6
    ld a, $04                                     ; $6d51: $3e $04
    ld [GameState_Current], a                     ; $6d53: $ea $34 $d6
    ret                                           ; $6d56: $c9


GS0A_StatePhase_05_TODO::
    call Call_000_05b6                            ; $6d57: $cd $b6 $05
    rst RST_08                                    ; $6d5a: $cf
    xor a                                         ; $6d5b: $af
    ld [$d83a], a                                 ; $6d5c: $ea $3a $d8
    ld a, $01                                     ; $6d5f: $3e $01
    ld [$d83b], a                                 ; $6d61: $ea $3b $d8
    ld a, [$a065]                                 ; $6d64: $fa $65 $a0
    ld c, a                                       ; $6d67: $4f
    ld b, $00                                     ; $6d68: $06 $00
    ld hl, $a38d                                  ; $6d6a: $21 $8d $a3
    add hl, bc                                    ; $6d6d: $09
    ld a, [$a065]                                 ; $6d6e: $fa $65 $a0
    ld c, a                                       ; $6d71: $4f
    sla a                                         ; $6d72: $cb $27
    sla a                                         ; $6d74: $cb $27
    add c                                         ; $6d76: $81
    add [hl]                                      ; $6d77: $86
    ld c, a                                       ; $6d78: $4f
    ld hl, $a06a                                  ; $6d79: $21 $6a $a0
    add hl, bc                                    ; $6d7c: $09
    ld a, [hl]                                    ; $6d7d: $7e
    ld [$d83c], a                                 ; $6d7e: $ea $3c $d8
    ld a, $01                                     ; $6d81: $3e $01
    ld [$d83d], a                                 ; $6d83: $ea $3d $d8
    ld a, $06                                     ; $6d86: $3e $06
    ld hl, $7a00                                  ; $6d88: $21 $00 $7a
    ld de, $8500                                  ; $6d8b: $11 $00 $85
    ld bc, $0300                                  ; $6d8e: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $6d91: $cd $38 $05
    call Call_001_70a1                            ; $6d94: $cd $a1 $70
    ld hl, StatePhase_Current                     ; $6d97: $21 $35 $d6
    inc [hl]                                      ; $6d9a: $34
    ret                                           ; $6d9b: $c9


GS0A_StatePhase_06_TODO::
    ld b, $02                                     ; $6d9c: $06 $02
    ld hl, $4632                                  ; $6d9e: $21 $32 $46
    call SwitchBankToBAndJumpToHL                 ; $6da1: $cd $de $05
    ld a, [$c31e]                                 ; $6da4: $fa $1e $c3
    bit 0, a                                      ; $6da7: $cb $47
    jr z, jr_001_6dc1                             ; $6da9: $28 $16

    ld c, $03                                     ; $6dab: $0e $03
    ld a, $02                                     ; $6dad: $3e $02
    call Call_000_03b6                            ; $6daf: $cd $b6 $03
    ld a, [$d83a]                                 ; $6db2: $fa $3a $d8
    ld c, a                                       ; $6db5: $4f
    ld b, $00                                     ; $6db6: $06 $00
    ld hl, GS0A_StatePhase_06_TODO_Data           ; $6db8: $21 $d1 $6d
    add hl, bc                                    ; $6dbb: $09
    ld a, [hl]                                    ; $6dbc: $7e
    ld [StatePhase_Current], a                    ; $6dbd: $ea $35 $d6
    ret                                           ; $6dc0: $c9


jr_001_6dc1:
    bit 3, a                                      ; $6dc1: $cb $5f
    ret z                                         ; $6dc3: $c8

    ld c, $04                                     ; $6dc4: $0e $04
    ld a, $02                                     ; $6dc6: $3e $02
    call Call_000_03b6                            ; $6dc8: $cd $b6 $03
    ld a, $0a                                     ; $6dcb: $3e $0a
    ld [StatePhase_Current], a                    ; $6dcd: $ea $35 $d6
    ret                                           ; $6dd0: $c9


GS0A_StatePhase_06_TODO_Data::
    db $07, $09, $08

GS0A_StatePhase_07_TODO::
    ld b, $02                                     ; $6dd4: $06 $02
    ld hl, $4672                                  ; $6dd6: $21 $72 $46
    call SwitchBankToBAndJumpToHL                 ; $6dd9: $cd $de $05
    ld a, [$c31e]                                 ; $6ddc: $fa $1e $c3
    and $01                                       ; $6ddf: $e6 $01
    ret z                                         ; $6de1: $c8

    ld c, $04                                     ; $6de2: $0e $04
    ld a, $02                                     ; $6de4: $3e $02
    call Call_000_03b6                            ; $6de6: $cd $b6 $03
    ld a, [$d83b]                                 ; $6de9: $fa $3b $d8
    and a                                         ; $6dec: $a7
    jr z, jr_001_6df5                             ; $6ded: $28 $06

    ld a, $06                                     ; $6def: $3e $06
    ld [StatePhase_Current], a                    ; $6df1: $ea $35 $d6
    ret                                           ; $6df4: $c9


jr_001_6df5:
    call Call_000_1c14                            ; $6df5: $cd $14 $1c
    ld a, $02                                     ; $6df8: $3e $02
    ld [$aca2], a                                 ; $6dfa: $ea $a2 $ac
    ld c, $03                                     ; $6dfd: $0e $03
    ld a, $02                                     ; $6dff: $3e $02
    call Call_000_03b6                            ; $6e01: $cd $b6 $03
    ld bc, $003c                                  ; $6e04: $01 $3c $00
    call Call_000_05fa                            ; $6e07: $cd $fa $05
    ld a, $05                                     ; $6e0a: $3e $05
    call Call_000_03b6                            ; $6e0c: $cd $b6 $03
    ld c, $00                                     ; $6e0f: $0e $00
    ld a, $01                                     ; $6e11: $3e $01
    call Call_000_03b6                            ; $6e13: $cd $b6 $03
    call Call_000_0399                            ; $6e16: $cd $99 $03
    ld c, $00                                     ; $6e19: $0e $00
    ld a, $01                                     ; $6e1b: $3e $01
    call Call_000_03b6                            ; $6e1d: $cd $b6 $03
    ld b, $03                                     ; $6e20: $06 $03
    ld hl, $469f                                  ; $6e22: $21 $9f $46
    ld c, $00                                     ; $6e25: $0e $00
    ld de, $0013                                  ; $6e27: $11 $13 $00
    call Call_000_044e                            ; $6e2a: $cd $4e $04
    call Call_000_0483                            ; $6e2d: $cd $83 $04
    ld hl, $c337                                  ; $6e30: $21 $37 $c3
    res 6, [hl]                                   ; $6e33: $cb $b6
    ld hl, rIE                                    ; $6e35: $21 $ff $ff
    res 1, [hl]                                   ; $6e38: $cb $8e
    xor a                                         ; $6e3a: $af
    ld [$c338], a                                 ; $6e3b: $ea $38 $c3
    ld [$c33c], a                                 ; $6e3e: $ea $3c $c3
    ld [$c350], a                                 ; $6e41: $ea $50 $c3
    ld a, [$a065]                                 ; $6e44: $fa $65 $a0
    ld c, a                                       ; $6e47: $4f
    ld b, $00                                     ; $6e48: $06 $00
    ld hl, $a38d                                  ; $6e4a: $21 $8d $a3
    add hl, bc                                    ; $6e4d: $09
    ld a, [$a065]                                 ; $6e4e: $fa $65 $a0
    ld c, a                                       ; $6e51: $4f
    sla a                                         ; $6e52: $cb $27
    sla a                                         ; $6e54: $cb $27
    add c                                         ; $6e56: $81
    add [hl]                                      ; $6e57: $86
    ld c, a                                       ; $6e58: $4f
    ld hl, $a06a                                  ; $6e59: $21 $6a $a0
    add hl, bc                                    ; $6e5c: $09
    ld a, [$d83c]                                 ; $6e5d: $fa $3c $d8
    ld [hl], a                                    ; $6e60: $77
    ld a, $04                                     ; $6e61: $3e $04
    ld [StatePhase_Current], a                    ; $6e63: $ea $35 $d6
    ld a, $00                                     ; $6e66: $3e $00
    ld [GameState_Current], a                     ; $6e68: $ea $34 $d6
    jp Jump_000_1b1f                              ; $6e6b: $c3 $1f $1b


GS0A_StatePhase_08_TODO::
    ld b, $02                                     ; $6e6e: $06 $02
    ld hl, $46b2                                  ; $6e70: $21 $b2 $46
    call SwitchBankToBAndJumpToHL                 ; $6e73: $cd $de $05
    ld a, [$c31e]                                 ; $6e76: $fa $1e $c3
    and $01                                       ; $6e79: $e6 $01
    ret z                                         ; $6e7b: $c8

    ld c, $04                                     ; $6e7c: $0e $04
    ld a, $02                                     ; $6e7e: $3e $02
    call Call_000_03b6                            ; $6e80: $cd $b6 $03
    ld a, $06                                     ; $6e83: $3e $06
    ld [StatePhase_Current], a                    ; $6e85: $ea $35 $d6
    ret                                           ; $6e88: $c9


GS0A_StatePhase_09_TODO::
    ld b, $02                                     ; $6e89: $06 $02
    ld hl, $470f                                  ; $6e8b: $21 $0f $47
    call SwitchBankToBAndJumpToHL                 ; $6e8e: $cd $de $05
    ld a, [$c31e]                                 ; $6e91: $fa $1e $c3
    and $01                                       ; $6e94: $e6 $01
    ret z                                         ; $6e96: $c8

    ld c, $04                                     ; $6e97: $0e $04
    ld a, $02                                     ; $6e99: $3e $02
    call Call_000_03b6                            ; $6e9b: $cd $b6 $03
    ld a, [$d83d]                                 ; $6e9e: $fa $3d $d8
    and a                                         ; $6ea1: $a7
    jr z, jr_001_6eaa                             ; $6ea2: $28 $06

    ld a, $06                                     ; $6ea4: $3e $06
    ld [StatePhase_Current], a                    ; $6ea6: $ea $35 $d6
    ret                                           ; $6ea9: $c9


jr_001_6eaa:
    ld a, $01                                     ; $6eaa: $3e $01
    ld [$d806], a                                 ; $6eac: $ea $06 $d8
    ld c, $00                                     ; $6eaf: $0e $00
    ld a, $01                                     ; $6eb1: $3e $01
    call Call_000_03b6                            ; $6eb3: $cd $b6 $03
    call Call_000_0399                            ; $6eb6: $cd $99 $03
    ld c, $08                                     ; $6eb9: $0e $08
    ld a, $01                                     ; $6ebb: $3e $01
    call Call_000_03b6                            ; $6ebd: $cd $b6 $03
    call Call_000_05b6                            ; $6ec0: $cd $b6 $05
    call Call_001_7ce3                            ; $6ec3: $cd $e3 $7c
    ld a, [$a065]                                 ; $6ec6: $fa $65 $a0
    ld c, a                                       ; $6ec9: $4f
    ld b, $00                                     ; $6eca: $06 $00
    ld hl, $a38d                                  ; $6ecc: $21 $8d $a3
    add hl, bc                                    ; $6ecf: $09
    ld a, [$a065]                                 ; $6ed0: $fa $65 $a0
    ld c, a                                       ; $6ed3: $4f
    sla a                                         ; $6ed4: $cb $27
    sla a                                         ; $6ed6: $cb $27
    add c                                         ; $6ed8: $81
    add [hl]                                      ; $6ed9: $86
    ld c, a                                       ; $6eda: $4f
    ld hl, $a06a                                  ; $6edb: $21 $6a $a0
    add hl, bc                                    ; $6ede: $09
    ld a, [$d83c]                                 ; $6edf: $fa $3c $d8
    ld [hl], a                                    ; $6ee2: $77
    ld a, $04                                     ; $6ee3: $3e $04
    ld [StatePhase_Current], a                    ; $6ee5: $ea $35 $d6
    xor a                                         ; $6ee8: $af
    ld [$aca2], a                                 ; $6ee9: $ea $a2 $ac
    jp Jump_000_1b1f                              ; $6eec: $c3 $1f $1b


GS0A_StatePhase_0a_TODO::
    call Call_000_05b6                            ; $6eef: $cd $b6 $05
    rst RST_08                                    ; $6ef2: $cf
    ld a, [$a065]                                 ; $6ef3: $fa $65 $a0
    ld c, a                                       ; $6ef6: $4f
    ld b, $00                                     ; $6ef7: $06 $00
    ld hl, $a38d                                  ; $6ef9: $21 $8d $a3
    add hl, bc                                    ; $6efc: $09
    ld a, [$a065]                                 ; $6efd: $fa $65 $a0
    ld c, a                                       ; $6f00: $4f
    sla a                                         ; $6f01: $cb $27
    sla a                                         ; $6f03: $cb $27
    add c                                         ; $6f05: $81
    add [hl]                                      ; $6f06: $86
    ld c, a                                       ; $6f07: $4f
    ld hl, $a06a                                  ; $6f08: $21 $6a $a0
    add hl, bc                                    ; $6f0b: $09
    ld a, [$d83c]                                 ; $6f0c: $fa $3c $d8
    ld [hl], a                                    ; $6f0f: $77
    ld a, $06                                     ; $6f10: $3e $06
    ld hl, $4500                                  ; $6f12: $21 $00 $45
    ld de, $8500                                  ; $6f15: $11 $00 $85
    ld bc, $0300                                  ; $6f18: $01 $00 $03
    call BankedTileCopyVRAMSafe                   ; $6f1b: $cd $38 $05
    call Call_001_6fb9                            ; $6f1e: $cd $b9 $6f
    call Call_001_7c04                            ; $6f21: $cd $04 $7c
    ld a, $03                                     ; $6f24: $3e $03
    ld [StatePhase_Current], a                    ; $6f26: $ea $35 $d6
    xor a                                         ; $6f29: $af
    ld [$aca2], a                                 ; $6f2a: $ea $a2 $ac
    jp Jump_000_1b1f                              ; $6f2d: $c3 $1f $1b


Call_001_6f30:
    call Call_001_6f37                            ; $6f30: $cd $37 $6f
    call Call_001_6f6c                            ; $6f33: $cd $6c $6f
    ret                                           ; $6f36: $c9


Call_001_6f37:
    ld hl, $d73f                                  ; $6f37: $21 $3f $d7
    ld de, $d799                                  ; $6f3a: $11 $99 $d7
    ld c, $10                                     ; $6f3d: $0e $10

jr_001_6f3f:
    push de                                       ; $6f3f: $d5
    xor a                                         ; $6f40: $af
    ld b, $06                                     ; $6f41: $06 $06

jr_001_6f43:
    inc de                                        ; $6f43: $13
    ld [de], a                                    ; $6f44: $12
    dec b                                         ; $6f45: $05
    jr nz, jr_001_6f43                            ; $6f46: $20 $fb

    ld b, $10                                     ; $6f48: $06 $10

jr_001_6f4a:
    bit 0, [hl]                                   ; $6f4a: $cb $46
    jr z, jr_001_6f5a                             ; $6f4c: $28 $0c

    xor a                                         ; $6f4e: $af

jr_001_6f4f:
    inc a                                         ; $6f4f: $3c
    dec hl                                        ; $6f50: $2b
    dec b                                         ; $6f51: $05
    jr z, jr_001_6f60                             ; $6f52: $28 $0c

    bit 0, [hl]                                   ; $6f54: $cb $46
    jr nz, jr_001_6f4f                            ; $6f56: $20 $f7

    ld [de], a                                    ; $6f58: $12
    dec de                                        ; $6f59: $1b

jr_001_6f5a:
    dec hl                                        ; $6f5a: $2b
    dec b                                         ; $6f5b: $05
    jr nz, jr_001_6f4a                            ; $6f5c: $20 $ec

    jr jr_001_6f61                                ; $6f5e: $18 $01

jr_001_6f60:
    ld [de], a                                    ; $6f60: $12

jr_001_6f61:
    pop de                                        ; $6f61: $d1
    dec de                                        ; $6f62: $1b
    dec de                                        ; $6f63: $1b
    dec de                                        ; $6f64: $1b
    dec de                                        ; $6f65: $1b
    dec de                                        ; $6f66: $1b
    dec de                                        ; $6f67: $1b
    dec c                                         ; $6f68: $0d
    jr nz, jr_001_6f3f                            ; $6f69: $20 $d4

    ret                                           ; $6f6b: $c9


Call_001_6f6c:
    ld hl, $d73f                                  ; $6f6c: $21 $3f $d7
    ld de, $d7f9                                  ; $6f6f: $11 $f9 $d7
    ld c, $10                                     ; $6f72: $0e $10

jr_001_6f74:
    push de                                       ; $6f74: $d5
    xor a                                         ; $6f75: $af
    ld b, $06                                     ; $6f76: $06 $06

jr_001_6f78:
    inc de                                        ; $6f78: $13
    ld [de], a                                    ; $6f79: $12
    dec b                                         ; $6f7a: $05
    jr nz, jr_001_6f78                            ; $6f7b: $20 $fb

    ld b, $10                                     ; $6f7d: $06 $10

jr_001_6f7f:
    bit 0, [hl]                                   ; $6f7f: $cb $46
    jr z, jr_001_6f98                             ; $6f81: $28 $15

    xor a                                         ; $6f83: $af

jr_001_6f84:
    inc a                                         ; $6f84: $3c
    push af                                       ; $6f85: $f5
    ld a, l                                       ; $6f86: $7d
    sub $10                                       ; $6f87: $d6 $10
    ld l, a                                       ; $6f89: $6f
    ld a, h                                       ; $6f8a: $7c
    sbc $00                                       ; $6f8b: $de $00
    ld h, a                                       ; $6f8d: $67
    pop af                                        ; $6f8e: $f1
    dec b                                         ; $6f8f: $05
    jr z, jr_001_6fa5                             ; $6f90: $28 $13

    bit 0, [hl]                                   ; $6f92: $cb $46
    jr nz, jr_001_6f84                            ; $6f94: $20 $ee

    ld [de], a                                    ; $6f96: $12
    dec de                                        ; $6f97: $1b

jr_001_6f98:
    ld a, l                                       ; $6f98: $7d
    sub $10                                       ; $6f99: $d6 $10
    ld l, a                                       ; $6f9b: $6f
    ld a, h                                       ; $6f9c: $7c
    sbc $00                                       ; $6f9d: $de $00
    ld h, a                                       ; $6f9f: $67
    dec b                                         ; $6fa0: $05
    jr nz, jr_001_6f7f                            ; $6fa1: $20 $dc

    jr jr_001_6fa6                                ; $6fa3: $18 $01

jr_001_6fa5:
    ld [de], a                                    ; $6fa5: $12

jr_001_6fa6:
    ld a, l                                       ; $6fa6: $7d
    add $ff                                       ; $6fa7: $c6 $ff
    ld l, a                                       ; $6fa9: $6f
    ld a, h                                       ; $6faa: $7c
    adc $00                                       ; $6fab: $ce $00
    ld h, a                                       ; $6fad: $67
    pop de                                        ; $6fae: $d1
    dec de                                        ; $6faf: $1b
    dec de                                        ; $6fb0: $1b
    dec de                                        ; $6fb1: $1b
    dec de                                        ; $6fb2: $1b
    dec de                                        ; $6fb3: $1b
    dec de                                        ; $6fb4: $1b
    dec c                                         ; $6fb5: $0d
    jr nz, jr_001_6f74                            ; $6fb6: $20 $bc

    ret                                           ; $6fb8: $c9


Call_001_6fb9:
    call Call_001_6fc0                            ; $6fb9: $cd $c0 $6f
    call Call_001_6fed                            ; $6fbc: $cd $ed $6f
    ret                                           ; $6fbf: $c9


Call_001_6fc0:
    ld hl, $d740                                  ; $6fc0: $21 $40 $d7
    ld e, $00                                     ; $6fc3: $1e $00
    ld b, $32                                     ; $6fc5: $06 $32
    ld a, [$d801]                                 ; $6fc7: $fa $01 $d8

jr_001_6fca:
    push af                                       ; $6fca: $f5
    ld c, $09                                     ; $6fcb: $0e $09

jr_001_6fcd:
    ld a, [hl+]                                   ; $6fcd: $2a
    and a                                         ; $6fce: $a7
    jr z, jr_001_6fd4                             ; $6fcf: $28 $03

    call Call_001_701b                            ; $6fd1: $cd $1b $70

jr_001_6fd4:
    ld a, c                                       ; $6fd4: $79
    add $07                                       ; $6fd5: $c6 $07
    ld c, a                                       ; $6fd7: $4f
    cp $2c                                        ; $6fd8: $fe $2c
    jr nz, jr_001_6fcd                            ; $6fda: $20 $f1

    ld a, [hl+]                                   ; $6fdc: $2a
    call Call_001_701b                            ; $6fdd: $cd $1b $70
    ld a, e                                       ; $6fe0: $7b
    xor $ff                                       ; $6fe1: $ee $ff
    ld e, a                                       ; $6fe3: $5f
    ld a, b                                       ; $6fe4: $78
    add $06                                       ; $6fe5: $c6 $06
    ld b, a                                       ; $6fe7: $47
    pop af                                        ; $6fe8: $f1
    dec a                                         ; $6fe9: $3d
    jr nz, jr_001_6fca                            ; $6fea: $20 $de

    ret                                           ; $6fec: $c9


Call_001_6fed:
    ld hl, $d7a0                                  ; $6fed: $21 $a0 $d7
    ld e, $00                                     ; $6ff0: $1e $00
    ld c, $3a                                     ; $6ff2: $0e $3a
    ld a, [CurrentGridSize]                       ; $6ff4: $fa $00 $d8

jr_001_6ff7:
    push af                                       ; $6ff7: $f5
    ld b, $08                                     ; $6ff8: $06 $08
    ld a, [hl+]                                   ; $6ffa: $2a

jr_001_6ffb:
    ld a, [hl+]                                   ; $6ffb: $2a
    and a                                         ; $6ffc: $a7
    jr z, jr_001_7002                             ; $6ffd: $28 $03

    call Call_001_701b                            ; $6fff: $cd $1b $70

jr_001_7002:
    ld a, b                                       ; $7002: $78
    add $07                                       ; $7003: $c6 $07
    ld b, a                                       ; $7005: $47
    cp $24                                        ; $7006: $fe $24
    jr nz, jr_001_6ffb                            ; $7008: $20 $f1

    ld a, [hl+]                                   ; $700a: $2a
    call Call_001_701b                            ; $700b: $cd $1b $70
    ld a, e                                       ; $700e: $7b
    xor $ff                                       ; $700f: $ee $ff
    ld e, a                                       ; $7011: $5f
    ld a, c                                       ; $7012: $79
    add $06                                       ; $7013: $c6 $06
    ld c, a                                       ; $7015: $4f
    pop af                                        ; $7016: $f1
    dec a                                         ; $7017: $3d
    jr nz, jr_001_6ff7                            ; $7018: $20 $dd

    ret                                           ; $701a: $c9


Call_001_701b:
    push bc                                       ; $701b: $c5
    push de                                       ; $701c: $d5
    push hl                                       ; $701d: $e5
    push af                                       ; $701e: $f5
    ld a, c                                       ; $701f: $79
    ld [$c351], a                                 ; $7020: $ea $51 $c3
    add $05                                       ; $7023: $c6 $05
    ld [$c353], a                                 ; $7025: $ea $53 $c3
    ld a, b                                       ; $7028: $78
    ld [$c352], a                                 ; $7029: $ea $52 $c3
    add $05                                       ; $702c: $c6 $05
    ld [$c354], a                                 ; $702e: $ea $54 $c3
    pop af                                        ; $7031: $f1
    sla a                                         ; $7032: $cb $27
    ld c, a                                       ; $7034: $4f
    ld b, $00                                     ; $7035: $06 $00
    ld a, e                                       ; $7037: $7b
    and a                                         ; $7038: $a7
    jr nz, jr_001_7049                            ; $7039: $20 $0e

    ld hl, $7061                                  ; $703b: $21 $61 $70
    add hl, bc                                    ; $703e: $09
    ld a, [hl+]                                   ; $703f: $2a
    ld [$c355], a                                 ; $7040: $ea $55 $c3
    ld a, [hl+]                                   ; $7043: $2a
    ld [$c356], a                                 ; $7044: $ea $56 $c3
    jr jr_001_7055                                ; $7047: $18 $0c

jr_001_7049:
    ld hl, $7081                                  ; $7049: $21 $81 $70
    add hl, bc                                    ; $704c: $09
    ld a, [hl+]                                   ; $704d: $2a
    ld [$c355], a                                 ; $704e: $ea $55 $c3
    ld a, [hl+]                                   ; $7051: $2a
    ld [$c356], a                                 ; $7052: $ea $56 $c3

jr_001_7055:
    ld a, $06                                     ; $7055: $3e $06
    ld [$c357], a                                 ; $7057: $ea $57 $c3
    call Call_000_08b3                            ; $705a: $cd $b3 $08
    pop hl                                        ; $705d: $e1
    pop de                                        ; $705e: $d1
    pop bc                                        ; $705f: $c1
    ret                                           ; $7060: $c9


    ldh a, [$ff59]                                ; $7061: $f0 $59
    nop                                           ; $7063: $00
    ld e, c                                       ; $7064: $59
    db $10                                        ; $7065: $10
    ld e, c                                       ; $7066: $59
    jr nz, jr_001_70c2                            ; $7067: $20 $59

    jr nc, jr_001_70c4                            ; $7069: $30 $59

    ld b, b                                       ; $706b: $40
    ld e, c                                       ; $706c: $59
    ld d, b                                       ; $706d: $50
    ld e, c                                       ; $706e: $59
    ld h, b                                       ; $706f: $60
    ld e, c                                       ; $7070: $59
    ld [hl], b                                    ; $7071: $70
    ld e, c                                       ; $7072: $59
    add b                                         ; $7073: $80
    ld e, c                                       ; $7074: $59
    sub b                                         ; $7075: $90
    ld e, c                                       ; $7076: $59
    and b                                         ; $7077: $a0
    ld e, c                                       ; $7078: $59
    or b                                          ; $7079: $b0
    ld e, c                                       ; $707a: $59
    ret nz                                        ; $707b: $c0

    ld e, c                                       ; $707c: $59
    ret nc                                        ; $707d: $d0

    ld e, c                                       ; $707e: $59
    ldh [$ff59], a                                ; $707f: $e0 $59
    ldh a, [$ff5a]                                ; $7081: $f0 $5a
    nop                                           ; $7083: $00
    ld e, d                                       ; $7084: $5a
    db $10                                        ; $7085: $10
    ld e, d                                       ; $7086: $5a
    jr nz, jr_001_70e3                            ; $7087: $20 $5a

    jr nc, jr_001_70e5                            ; $7089: $30 $5a

    ld b, b                                       ; $708b: $40
    ld e, d                                       ; $708c: $5a
    ld d, b                                       ; $708d: $50
    ld e, d                                       ; $708e: $5a
    ld h, b                                       ; $708f: $60
    ld e, d                                       ; $7090: $5a
    ld [hl], b                                    ; $7091: $70
    ld e, d                                       ; $7092: $5a
    add b                                         ; $7093: $80
    ld e, d                                       ; $7094: $5a
    sub b                                         ; $7095: $90
    ld e, d                                       ; $7096: $5a
    and b                                         ; $7097: $a0
    ld e, d                                       ; $7098: $5a
    or b                                          ; $7099: $b0
    ld e, d                                       ; $709a: $5a
    ret nz                                        ; $709b: $c0

    ld e, d                                       ; $709c: $5a
    ret nc                                        ; $709d: $d0

    ld e, d                                       ; $709e: $5a
    ldh [$ff5a], a                                ; $709f: $e0 $5a

Call_001_70a1:
    call Call_001_70a8                            ; $70a1: $cd $a8 $70
    call Call_001_70d5                            ; $70a4: $cd $d5 $70
    ret                                           ; $70a7: $c9


Call_001_70a8:
    ld hl, $d740                                  ; $70a8: $21 $40 $d7
    ld e, $00                                     ; $70ab: $1e $00
    ld b, $32                                     ; $70ad: $06 $32
    ld a, [$d801]                                 ; $70af: $fa $01 $d8

jr_001_70b2:
    push af                                       ; $70b2: $f5
    ld c, $09                                     ; $70b3: $0e $09

jr_001_70b5:
    ld a, [hl+]                                   ; $70b5: $2a
    and a                                         ; $70b6: $a7
    jr z, jr_001_70bc                             ; $70b7: $28 $03

    call Call_001_7103                            ; $70b9: $cd $03 $71

jr_001_70bc:
    ld a, c                                       ; $70bc: $79
    add $07                                       ; $70bd: $c6 $07
    ld c, a                                       ; $70bf: $4f
    cp $2c                                        ; $70c0: $fe $2c

jr_001_70c2:
    jr nz, jr_001_70b5                            ; $70c2: $20 $f1

jr_001_70c4:
    ld a, [hl+]                                   ; $70c4: $2a
    call Call_001_7103                            ; $70c5: $cd $03 $71
    ld a, e                                       ; $70c8: $7b
    xor $ff                                       ; $70c9: $ee $ff
    ld e, a                                       ; $70cb: $5f
    ld a, b                                       ; $70cc: $78
    add $06                                       ; $70cd: $c6 $06
    ld b, a                                       ; $70cf: $47
    pop af                                        ; $70d0: $f1
    dec a                                         ; $70d1: $3d
    jr nz, jr_001_70b2                            ; $70d2: $20 $de

    ret                                           ; $70d4: $c9


Call_001_70d5:
    ld hl, $d7a0                                  ; $70d5: $21 $a0 $d7
    ld e, $00                                     ; $70d8: $1e $00
    ld c, $3a                                     ; $70da: $0e $3a
    ld a, [CurrentGridSize]                       ; $70dc: $fa $00 $d8

jr_001_70df:
    push af                                       ; $70df: $f5
    ld b, $08                                     ; $70e0: $06 $08
    ld a, [hl+]                                   ; $70e2: $2a

jr_001_70e3:
    ld a, [hl+]                                   ; $70e3: $2a
    and a                                         ; $70e4: $a7

jr_001_70e5:
    jr z, jr_001_70ea                             ; $70e5: $28 $03

    call Call_001_7103                            ; $70e7: $cd $03 $71

jr_001_70ea:
    ld a, b                                       ; $70ea: $78
    add $07                                       ; $70eb: $c6 $07
    ld b, a                                       ; $70ed: $47
    cp $24                                        ; $70ee: $fe $24
    jr nz, jr_001_70e3                            ; $70f0: $20 $f1

    ld a, [hl+]                                   ; $70f2: $2a
    call Call_001_7103                            ; $70f3: $cd $03 $71
    ld a, e                                       ; $70f6: $7b
    xor $ff                                       ; $70f7: $ee $ff
    ld e, a                                       ; $70f9: $5f
    ld a, c                                       ; $70fa: $79
    add $06                                       ; $70fb: $c6 $06
    ld c, a                                       ; $70fd: $4f
    pop af                                        ; $70fe: $f1
    dec a                                         ; $70ff: $3d
    jr nz, jr_001_70df                            ; $7100: $20 $dd

    ret                                           ; $7102: $c9


Call_001_7103:
    push bc                                       ; $7103: $c5
    push de                                       ; $7104: $d5
    push hl                                       ; $7105: $e5
    ld a, c                                       ; $7106: $79
    ld [$c351], a                                 ; $7107: $ea $51 $c3
    add $05                                       ; $710a: $c6 $05
    ld [$c353], a                                 ; $710c: $ea $53 $c3
    ld a, b                                       ; $710f: $78
    ld [$c352], a                                 ; $7110: $ea $52 $c3
    add $05                                       ; $7113: $c6 $05
    ld [$c354], a                                 ; $7115: $ea $54 $c3
    ld a, e                                       ; $7118: $7b
    and a                                         ; $7119: $a7
    jr nz, jr_001_7128                            ; $711a: $20 $0c

    ld a, $e0                                     ; $711c: $3e $e0
    ld [$c355], a                                 ; $711e: $ea $55 $c3
    ld a, $58                                     ; $7121: $3e $58
    ld [$c356], a                                 ; $7123: $ea $56 $c3
    jr jr_001_7132                                ; $7126: $18 $0a

jr_001_7128:
    ld a, $f0                                     ; $7128: $3e $f0
    ld [$c355], a                                 ; $712a: $ea $55 $c3
    ld a, $58                                     ; $712d: $3e $58
    ld [$c356], a                                 ; $712f: $ea $56 $c3

jr_001_7132:
    ld a, $06                                     ; $7132: $3e $06
    ld [$c357], a                                 ; $7134: $ea $57 $c3
    call Call_000_08b3                            ; $7137: $cd $b3 $08
    pop hl                                        ; $713a: $e1
    pop de                                        ; $713b: $d1
    pop bc                                        ; $713c: $c1
    ret                                           ; $713d: $c9


Call_001_713e:
    ld a, [$d636]                                 ; $713e: $fa $36 $d6
    ld e, a                                       ; $7141: $5f
    sla a                                         ; $7142: $cb $27
    add e                                         ; $7144: $83
    sla a                                         ; $7145: $cb $27
    ld b, a                                       ; $7147: $47
    ld a, [$d637]                                 ; $7148: $fa $37 $d6
    ld e, a                                       ; $714b: $5f
    sla a                                         ; $714c: $cb $27
    add e                                         ; $714e: $83
    sla a                                         ; $714f: $cb $27
    ld c, a                                       ; $7151: $4f
    push bc                                       ; $7152: $c5
    ld a, b                                       ; $7153: $78
    add $3a                                       ; $7154: $c6 $3a
    ld b, a                                       ; $7156: $47
    ld c, $00                                     ; $7157: $0e $00
    ld a, [$c33a]                                 ; $7159: $fa $3a $c3
    srl a                                         ; $715c: $cb $3f
    srl a                                         ; $715e: $cb $3f
    srl a                                         ; $7160: $cb $3f
    and $01                                       ; $7162: $e6 $01
    add $03                                       ; $7164: $c6 $03
    call Call_000_20ce                            ; $7166: $cd $ce $20
    pop bc                                        ; $7169: $c1
    push bc                                       ; $716a: $c5
    ld b, $00                                     ; $716b: $06 $00
    ld a, c                                       ; $716d: $79
    add $32                                       ; $716e: $c6 $32
    ld c, a                                       ; $7170: $4f
    ld a, [$c33a]                                 ; $7171: $fa $3a $c3
    srl a                                         ; $7174: $cb $3f
    srl a                                         ; $7176: $cb $3f
    srl a                                         ; $7178: $cb $3f
    and $01                                       ; $717a: $e6 $01
    add $05                                       ; $717c: $c6 $05
    call Call_000_20ce                            ; $717e: $cd $ce $20
    pop bc                                        ; $7181: $c1
    jp Jump_001_7967                              ; $7182: $c3 $67 $79


Call_001_7185:
    ld a, [$d636]                                 ; $7185: $fa $36 $d6
    ld e, a                                       ; $7188: $5f
    sla a                                         ; $7189: $cb $27
    add e                                         ; $718b: $83
    sla a                                         ; $718c: $cb $27
    ld b, a                                       ; $718e: $47
    ld a, [$d637]                                 ; $718f: $fa $37 $d6
    ld e, a                                       ; $7192: $5f
    sla a                                         ; $7193: $cb $27
    add e                                         ; $7195: $83
    sla a                                         ; $7196: $cb $27
    ld c, a                                       ; $7198: $4f
    push bc                                       ; $7199: $c5
    ld a, b                                       ; $719a: $78
    add $3a                                       ; $719b: $c6 $3a
    ld b, a                                       ; $719d: $47
    ld c, $00                                     ; $719e: $0e $00
    ld a, [$c33a]                                 ; $71a0: $fa $3a $c3
    srl a                                         ; $71a3: $cb $3f
    srl a                                         ; $71a5: $cb $3f
    srl a                                         ; $71a7: $cb $3f
    and $01                                       ; $71a9: $e6 $01
    add $03                                       ; $71ab: $c6 $03
    call Call_000_20ce                            ; $71ad: $cd $ce $20
    pop bc                                        ; $71b0: $c1
    push bc                                       ; $71b1: $c5
    ld b, $00                                     ; $71b2: $06 $00
    ld a, c                                       ; $71b4: $79
    add $32                                       ; $71b5: $c6 $32
    ld c, a                                       ; $71b7: $4f
    ld a, [$c33a]                                 ; $71b8: $fa $3a $c3
    srl a                                         ; $71bb: $cb $3f
    srl a                                         ; $71bd: $cb $3f
    srl a                                         ; $71bf: $cb $3f
    and $01                                       ; $71c1: $e6 $01
    add $05                                       ; $71c3: $c6 $05
    call Call_000_20ce                            ; $71c5: $cd $ce $20
    pop bc                                        ; $71c8: $c1
    ret                                           ; $71c9: $c9


Call_001_71ca:
    ld a, [$c322]                                 ; $71ca: $fa $22 $c3
    and $f0                                       ; $71cd: $e6 $f0
    ret z                                         ; $71cf: $c8

    ld a, [$c31a]                                 ; $71d0: $fa $1a $c3
    and $03                                       ; $71d3: $e6 $03
    jr nz, jr_001_71de                            ; $71d5: $20 $07

    ld c, $0b                                     ; $71d7: $0e $0b
    ld a, $02                                     ; $71d9: $3e $02
    call Call_000_03b6                            ; $71db: $cd $b6 $03

jr_001_71de:
    ld hl, $c322                                  ; $71de: $21 $22 $c3
    bit 5, [hl]                                   ; $71e1: $cb $6e
    jr z, jr_001_71ef                             ; $71e3: $28 $0a

    ld a, [$d636]                                 ; $71e5: $fa $36 $d6
    and a                                         ; $71e8: $a7
    jr z, jr_001_71ef                             ; $71e9: $28 $04

    dec a                                         ; $71eb: $3d
    ld [$d636], a                                 ; $71ec: $ea $36 $d6

jr_001_71ef:
    bit 4, [hl]                                   ; $71ef: $cb $66
    jr z, jr_001_7201                             ; $71f1: $28 $0e

    ld a, [CurrentGridSize]                       ; $71f3: $fa $00 $d8
    ld c, a                                       ; $71f6: $4f
    ld a, [$d636]                                 ; $71f7: $fa $36 $d6
    inc a                                         ; $71fa: $3c
    cp c                                          ; $71fb: $b9
    jr z, jr_001_7201                             ; $71fc: $28 $03

    ld [$d636], a                                 ; $71fe: $ea $36 $d6

jr_001_7201:
    bit 6, [hl]                                   ; $7201: $cb $76
    jr z, jr_001_720f                             ; $7203: $28 $0a

    ld a, [$d637]                                 ; $7205: $fa $37 $d6
    and a                                         ; $7208: $a7
    jr z, jr_001_720f                             ; $7209: $28 $04

    dec a                                         ; $720b: $3d
    ld [$d637], a                                 ; $720c: $ea $37 $d6

jr_001_720f:
    bit 7, [hl]                                   ; $720f: $cb $7e
    jr z, jr_001_7221                             ; $7211: $28 $0e

    ld a, [$d801]                                 ; $7213: $fa $01 $d8
    ld c, a                                       ; $7216: $4f
    ld a, [$d637]                                 ; $7217: $fa $37 $d6
    inc a                                         ; $721a: $3c
    cp c                                          ; $721b: $b9
    jr z, jr_001_7221                             ; $721c: $28 $03

    ld [$d637], a                                 ; $721e: $ea $37 $d6

jr_001_7221:
    ret                                           ; $7221: $c9


Call_001_7222:
    ld a, [$c31a]                                 ; $7222: $fa $1a $c3
    and $01                                       ; $7225: $e6 $01
    jr z, jr_001_7230                             ; $7227: $28 $07

    ld a, [$c322]                                 ; $7229: $fa $22 $c3
    and $f0                                       ; $722c: $e6 $f0
    jr z, jr_001_7234                             ; $722e: $28 $04

jr_001_7230:
    xor a                                         ; $7230: $af
    ld [$d80f], a                                 ; $7231: $ea $0f $d8

jr_001_7234:
    ld a, [$d637]                                 ; $7234: $fa $37 $d6
    sla a                                         ; $7237: $cb $27
    sla a                                         ; $7239: $cb $27
    sla a                                         ; $723b: $cb $27
    sla a                                         ; $723d: $cb $27
    ld hl, $d636                                  ; $723f: $21 $36 $d6
    add [hl]                                      ; $7242: $86
    ld c, a                                       ; $7243: $4f
    ld b, $00                                     ; $7244: $06 $00
    ld hl, $d640                                  ; $7246: $21 $40 $d6
    add hl, bc                                    ; $7249: $09
    push hl                                       ; $724a: $e5
    ld a, [$a065]                                 ; $724b: $fa $65 $a0
    ld c, a                                       ; $724e: $4f
    ld b, $00                                     ; $724f: $06 $00
    ld hl, $a066                                  ; $7251: $21 $66 $a0
    add hl, bc                                    ; $7254: $09
    ld a, [hl]                                    ; $7255: $7e
    pop hl                                        ; $7256: $e1
    and a                                         ; $7257: $a7
    jp z, Jump_001_7260                           ; $7258: $ca $60 $72

    dec a                                         ; $725b: $3d
    jp z, Jump_001_7260                           ; $725c: $ca $60 $72

    ret                                           ; $725f: $c9


Jump_001_7260:
    ld a, [$c31a]                                 ; $7260: $fa $1a $c3
    and $01                                       ; $7263: $e6 $01
    jr z, jr_001_728a                             ; $7265: $28 $23

    ld a, [$c31e]                                 ; $7267: $fa $1e $c3
    and $01                                       ; $726a: $e6 $01
    jr z, jr_001_7280                             ; $726c: $28 $12

    ld a, [hl]                                    ; $726e: $7e
    and $06                                       ; $726f: $e6 $06
    cp $02                                        ; $7271: $fe $02
    jr z, jr_001_727c                             ; $7273: $28 $07

    ld a, $01                                     ; $7275: $3e $01
    ld [$d804], a                                 ; $7277: $ea $04 $d8
    jr jr_001_7280                                ; $727a: $18 $04

jr_001_727c:
    xor a                                         ; $727c: $af
    ld [$d804], a                                 ; $727d: $ea $04 $d8

jr_001_7280:
    ld a, [$d804]                                 ; $7280: $fa $04 $d8
    and a                                         ; $7283: $a7
    jp z, Jump_001_749a                           ; $7284: $ca $9a $74

    jp Jump_001_72e5                              ; $7287: $c3 $e5 $72


jr_001_728a:
    ld a, [$c31a]                                 ; $728a: $fa $1a $c3
    and $02                                       ; $728d: $e6 $02
    ret z                                         ; $728f: $c8

    ld a, [$c31e]                                 ; $7290: $fa $1e $c3
    and $02                                       ; $7293: $e6 $02
    jr z, jr_001_72a9                             ; $7295: $28 $12

    ld a, [hl]                                    ; $7297: $7e
    and $06                                       ; $7298: $e6 $06
    cp $04                                        ; $729a: $fe $04
    jr z, jr_001_72a5                             ; $729c: $28 $07

    ld a, $02                                     ; $729e: $3e $02
    ld [$d804], a                                 ; $72a0: $ea $04 $d8
    jr jr_001_72a9                                ; $72a3: $18 $04

jr_001_72a5:
    xor a                                         ; $72a5: $af
    ld [$d804], a                                 ; $72a6: $ea $04 $d8

jr_001_72a9:
    ld a, [$d804]                                 ; $72a9: $fa $04 $d8
    and a                                         ; $72ac: $a7
    jp z, Jump_001_749a                           ; $72ad: $ca $9a $74

    jp Jump_001_741c                              ; $72b0: $c3 $1c $74


    ld a, [$c31a]                                 ; $72b3: $fa $1a $c3
    and $03                                       ; $72b6: $e6 $03
    cp $03                                        ; $72b8: $fe $03
    jr z, jr_001_72df                             ; $72ba: $28 $23

    ld a, [$d804]                                 ; $72bc: $fa $04 $d8
    and a                                         ; $72bf: $a7
    jr z, jr_001_72cc                             ; $72c0: $28 $0a

    ld a, [$c31a]                                 ; $72c2: $fa $1a $c3
    and $03                                       ; $72c5: $e6 $03
    ret nz                                        ; $72c7: $c0

    ld [$d804], a                                 ; $72c8: $ea $04 $d8
    ret                                           ; $72cb: $c9


jr_001_72cc:
    ld a, [$c31a]                                 ; $72cc: $fa $1a $c3
    and $01                                       ; $72cf: $e6 $01
    jr z, jr_001_72d6                             ; $72d1: $28 $03

    jp Jump_001_72e5                              ; $72d3: $c3 $e5 $72


jr_001_72d6:
    ld a, [$c31a]                                 ; $72d6: $fa $1a $c3
    and $02                                       ; $72d9: $e6 $02
    ret z                                         ; $72db: $c8

    jp Jump_001_741c                              ; $72dc: $c3 $1c $74


jr_001_72df:
    ld [$d804], a                                 ; $72df: $ea $04 $d8
    jp Jump_001_749a                              ; $72e2: $c3 $9a $74


Jump_001_72e5:
    ld a, [hl]                                    ; $72e5: $7e
    and $06                                       ; $72e6: $e6 $06
    cp $02                                        ; $72e8: $fe $02
    ret z                                         ; $72ea: $c8

    bit 0, [hl]                                   ; $72eb: $cb $46
    jp nz, Jump_001_739f                          ; $72ed: $c2 $9f $73

    ld a, [GameState_Current]                     ; $72f0: $fa $34 $d6
    cp $09                                        ; $72f3: $fe $09
    jp z, Jump_001_739f                           ; $72f5: $ca $9f $73

    ld a, [$d80f]                                 ; $72f8: $fa $0f $d8
    and a                                         ; $72fb: $a7
    ret nz                                        ; $72fc: $c0

    ld a, [$d636]                                 ; $72fd: $fa $36 $d6
    ld e, a                                       ; $7300: $5f
    sla a                                         ; $7301: $cb $27
    add e                                         ; $7303: $83
    sla a                                         ; $7304: $cb $27
    add $32                                       ; $7306: $c6 $32
    ld [$d826], a                                 ; $7308: $ea $26 $d8
    ld a, [$d637]                                 ; $730b: $fa $37 $d6
    ld e, a                                       ; $730e: $5f
    sla a                                         ; $730f: $cb $27
    add e                                         ; $7311: $83
    sla a                                         ; $7312: $cb $27
    add $2b                                       ; $7314: $c6 $2b
    ld [$d827], a                                 ; $7316: $ea $27 $d8
    ld a, [$d822]                                 ; $7319: $fa $22 $d8
    and a                                         ; $731c: $a7
    jr z, jr_001_7328                             ; $731d: $28 $09

    ld a, [$d823]                                 ; $731f: $fa $23 $d8
    call Call_001_7549                            ; $7322: $cd $49 $75
    call Call_001_7529                            ; $7325: $cd $29 $75

jr_001_7328:
    ld a, [$d636]                                 ; $7328: $fa $36 $d6
    ld [$d824], a                                 ; $732b: $ea $24 $d8
    ld a, [$d637]                                 ; $732e: $fa $37 $d6
    ld [$d825], a                                 ; $7331: $ea $25 $d8
    xor a                                         ; $7334: $af
    ld [$d822], a                                 ; $7335: $ea $22 $d8
    ld a, [hl]                                    ; $7338: $7e
    and $06                                       ; $7339: $e6 $06
    srl a                                         ; $733b: $cb $3f
    swap a                                        ; $733d: $cb $37
    ld [$d823], a                                 ; $733f: $ea $23 $d8
    ld a, $04                                     ; $7342: $3e $04
    ld [$d821], a                                 ; $7344: $ea $21 $d8
    xor a                                         ; $7347: $af
    ld [$d820], a                                 ; $7348: $ea $20 $d8
    ld [$d81f], a                                 ; $734b: $ea $1f $d8
    xor a                                         ; $734e: $af
    ld [$d822], a                                 ; $734f: $ea $22 $d8
    ld c, $09                                     ; $7352: $0e $09
    ld a, $02                                     ; $7354: $3e $02
    call Call_000_03b6                            ; $7356: $cd $b6 $03
    xor a                                         ; $7359: $af

jr_001_735a:
    push af                                       ; $735a: $f5
    call Call_000_05c5                            ; $735b: $cd $c5 $05
    rst RST_08                                    ; $735e: $cf
    call Call_001_7d81                            ; $735f: $cd $81 $7d
    call Call_001_713e                            ; $7362: $cd $3e $71
    ld a, [GameState_Current]                     ; $7365: $fa $34 $d6
    cp $06                                        ; $7368: $fe $06
    jr z, jr_001_736f                             ; $736a: $28 $03

    call Call_001_7aea                            ; $736c: $cd $ea $7a

jr_001_736f:
    call Call_001_7918                            ; $736f: $cd $18 $79
    pop af                                        ; $7372: $f1
    push af                                       ; $7373: $f5
    cp $10                                        ; $7374: $fe $10
    jr nz, jr_001_7382                            ; $7376: $20 $0a

    ld a, $10                                     ; $7378: $3e $10
    call Call_001_7549                            ; $737a: $cd $49 $75
    call Call_001_7529                            ; $737d: $cd $29 $75
    jr jr_001_7391                                ; $7380: $18 $0f

jr_001_7382:
    cp $54                                        ; $7382: $fe $54
    jr nz, jr_001_7391                            ; $7384: $20 $0b

    ld a, [$d823]                                 ; $7386: $fa $23 $d8
    call Call_001_7549                            ; $7389: $cd $49 $75
    ld a, $10                                     ; $738c: $3e $10
    call Call_001_7529                            ; $738e: $cd $29 $75

jr_001_7391:
    pop af                                        ; $7391: $f1
    inc a                                         ; $7392: $3c
    cp $58                                        ; $7393: $fe $58
    jr nz, jr_001_735a                            ; $7395: $20 $c3

    call Call_001_7c88                            ; $7397: $cd $88 $7c
    ld hl, $d80f                                  ; $739a: $21 $0f $d8
    inc [hl]                                      ; $739d: $34
    ret                                           ; $739e: $c9


Jump_001_739f:
    bit 0, [hl]                                   ; $739f: $cb $46
    jr z, jr_001_73aa                             ; $73a1: $28 $07

    ld a, [$d802]                                 ; $73a3: $fa $02 $d8
    dec a                                         ; $73a6: $3d
    ld [$d802], a                                 ; $73a7: $ea $02 $d8

jr_001_73aa:
    ld a, [$d803]                                 ; $73aa: $fa $03 $d8
    dec a                                         ; $73ad: $3d
    ld [$d803], a                                 ; $73ae: $ea $03 $d8
    set 1, [hl]                                   ; $73b1: $cb $ce
    res 2, [hl]                                   ; $73b3: $cb $96
    ld a, [$d822]                                 ; $73b5: $fa $22 $d8
    and a                                         ; $73b8: $a7
    jr z, jr_001_73c4                             ; $73b9: $28 $09

    ld a, [$d823]                                 ; $73bb: $fa $23 $d8
    call Call_001_7549                            ; $73be: $cd $49 $75
    call Call_001_7529                            ; $73c1: $cd $29 $75

jr_001_73c4:
    ld a, [$d821]                                 ; $73c4: $fa $21 $d8
    cp $01                                        ; $73c7: $fe $01
    jr z, jr_001_73f2                             ; $73c9: $28 $27

    cp $02                                        ; $73cb: $fe $02
    jr z, jr_001_73f2                             ; $73cd: $28 $23

    ld a, $01                                     ; $73cf: $3e $01
    ld [$d821], a                                 ; $73d1: $ea $21 $d8
    xor a                                         ; $73d4: $af
    ld [$d820], a                                 ; $73d5: $ea $20 $d8
    ld [$d81f], a                                 ; $73d8: $ea $1f $d8
    ld a, $08                                     ; $73db: $3e $08
    ld [$d822], a                                 ; $73dd: $ea $22 $d8
    ld a, $10                                     ; $73e0: $3e $10
    ld [$d823], a                                 ; $73e2: $ea $23 $d8
    ld a, [$d636]                                 ; $73e5: $fa $36 $d6
    ld [$d824], a                                 ; $73e8: $ea $24 $d8
    ld a, [$d637]                                 ; $73eb: $fa $37 $d6
    ld [$d825], a                                 ; $73ee: $ea $25 $d8
    ret                                           ; $73f1: $c9


jr_001_73f2:
    ld a, [$d820]                                 ; $73f2: $fa $20 $d8
    cp $0c                                        ; $73f5: $fe $0c
    jr c, jr_001_7405                             ; $73f7: $38 $0c

    ld a, $02                                     ; $73f9: $3e $02
    ld [$d821], a                                 ; $73fb: $ea $21 $d8
    xor a                                         ; $73fe: $af
    ld [$d820], a                                 ; $73ff: $ea $20 $d8
    ld [$d81f], a                                 ; $7402: $ea $1f $d8

jr_001_7405:
    ld a, $07                                     ; $7405: $3e $07
    ld [$d822], a                                 ; $7407: $ea $22 $d8
    ld a, $10                                     ; $740a: $3e $10
    ld [$d823], a                                 ; $740c: $ea $23 $d8
    ld a, [$d636]                                 ; $740f: $fa $36 $d6
    ld [$d824], a                                 ; $7412: $ea $24 $d8
    ld a, [$d637]                                 ; $7415: $fa $37 $d6
    ld [$d825], a                                 ; $7418: $ea $25 $d8
    ret                                           ; $741b: $c9


Jump_001_741c:
    ld a, [hl]                                    ; $741c: $7e
    and $06                                       ; $741d: $e6 $06
    cp $04                                        ; $741f: $fe $04
    ret z                                         ; $7421: $c8

    cp $02                                        ; $7422: $fe $02
    jr nz, jr_001_7438                            ; $7424: $20 $12

    bit 0, [hl]                                   ; $7426: $cb $46
    jr z, jr_001_7431                             ; $7428: $28 $07

    ld a, [$d802]                                 ; $742a: $fa $02 $d8
    inc a                                         ; $742d: $3c
    ld [$d802], a                                 ; $742e: $ea $02 $d8

jr_001_7431:
    ld a, [$d803]                                 ; $7431: $fa $03 $d8
    inc a                                         ; $7434: $3c
    ld [$d803], a                                 ; $7435: $ea $03 $d8

jr_001_7438:
    res 1, [hl]                                   ; $7438: $cb $8e
    set 2, [hl]                                   ; $743a: $cb $d6
    ld a, [$d822]                                 ; $743c: $fa $22 $d8
    and a                                         ; $743f: $a7
    jr z, jr_001_744b                             ; $7440: $28 $09

    ld a, [$d823]                                 ; $7442: $fa $23 $d8
    call Call_001_7549                            ; $7445: $cd $49 $75
    call Call_001_7529                            ; $7448: $cd $29 $75

jr_001_744b:
    ld a, [$d821]                                 ; $744b: $fa $21 $d8
    cp $03                                        ; $744e: $fe $03
    jr z, jr_001_7475                             ; $7450: $28 $23

    ld a, $03                                     ; $7452: $3e $03
    ld [$d821], a                                 ; $7454: $ea $21 $d8
    xor a                                         ; $7457: $af
    ld [$d820], a                                 ; $7458: $ea $20 $d8
    ld [$d81f], a                                 ; $745b: $ea $1f $d8
    ld a, $06                                     ; $745e: $3e $06
    ld [$d822], a                                 ; $7460: $ea $22 $d8
    ld a, $20                                     ; $7463: $3e $20
    ld [$d823], a                                 ; $7465: $ea $23 $d8
    ld a, [$d636]                                 ; $7468: $fa $36 $d6
    ld [$d824], a                                 ; $746b: $ea $24 $d8
    ld a, [$d637]                                 ; $746e: $fa $37 $d6
    ld [$d825], a                                 ; $7471: $ea $25 $d8
    ret                                           ; $7474: $c9


jr_001_7475:
    ld a, [$d820]                                 ; $7475: $fa $20 $d8
    cp $02                                        ; $7478: $fe $02
    jr c, jr_001_7483                             ; $747a: $38 $07

    xor a                                         ; $747c: $af
    ld [$d820], a                                 ; $747d: $ea $20 $d8
    ld [$d81f], a                                 ; $7480: $ea $1f $d8

jr_001_7483:
    ld a, $06                                     ; $7483: $3e $06
    ld [$d822], a                                 ; $7485: $ea $22 $d8
    ld a, $20                                     ; $7488: $3e $20
    ld [$d823], a                                 ; $748a: $ea $23 $d8
    ld a, [$d636]                                 ; $748d: $fa $36 $d6
    ld [$d824], a                                 ; $7490: $ea $24 $d8
    ld a, [$d637]                                 ; $7493: $fa $37 $d6
    ld [$d825], a                                 ; $7496: $ea $25 $d8
    ret                                           ; $7499: $c9


Jump_001_749a:
    ld a, [hl]                                    ; $749a: $7e
    and $06                                       ; $749b: $e6 $06
    ret z                                         ; $749d: $c8

    cp $02                                        ; $749e: $fe $02
    jr nz, jr_001_74b4                            ; $74a0: $20 $12

    bit 0, [hl]                                   ; $74a2: $cb $46
    jr z, jr_001_74ad                             ; $74a4: $28 $07

    ld a, [$d802]                                 ; $74a6: $fa $02 $d8
    inc a                                         ; $74a9: $3c
    ld [$d802], a                                 ; $74aa: $ea $02 $d8

jr_001_74ad:
    ld a, [$d803]                                 ; $74ad: $fa $03 $d8
    inc a                                         ; $74b0: $3c
    ld [$d803], a                                 ; $74b1: $ea $03 $d8

jr_001_74b4:
    res 1, [hl]                                   ; $74b4: $cb $8e
    res 2, [hl]                                   ; $74b6: $cb $96
    ld a, [$d822]                                 ; $74b8: $fa $22 $d8
    and a                                         ; $74bb: $a7
    jr z, jr_001_74c7                             ; $74bc: $28 $09

    ld a, [$d823]                                 ; $74be: $fa $23 $d8
    call Call_001_7549                            ; $74c1: $cd $49 $75
    call Call_001_7529                            ; $74c4: $cd $29 $75

jr_001_74c7:
    ld a, [$d821]                                 ; $74c7: $fa $21 $d8
    cp $05                                        ; $74ca: $fe $05
    jr z, jr_001_74f1                             ; $74cc: $28 $23

    ld a, $05                                     ; $74ce: $3e $05
    ld [$d821], a                                 ; $74d0: $ea $21 $d8
    xor a                                         ; $74d3: $af
    ld [$d820], a                                 ; $74d4: $ea $20 $d8
    ld [$d81f], a                                 ; $74d7: $ea $1f $d8
    ld a, $0c                                     ; $74da: $3e $0c
    ld [$d822], a                                 ; $74dc: $ea $22 $d8
    ld a, $00                                     ; $74df: $3e $00
    ld [$d823], a                                 ; $74e1: $ea $23 $d8
    ld a, [$d636]                                 ; $74e4: $fa $36 $d6
    ld [$d824], a                                 ; $74e7: $ea $24 $d8
    ld a, [$d637]                                 ; $74ea: $fa $37 $d6
    ld [$d825], a                                 ; $74ed: $ea $25 $d8
    ret                                           ; $74f0: $c9


jr_001_74f1:
    ld a, [$d820]                                 ; $74f1: $fa $20 $d8
    cp $08                                        ; $74f4: $fe $08
    jr c, jr_001_74ff                             ; $74f6: $38 $07

    xor a                                         ; $74f8: $af
    ld [$d820], a                                 ; $74f9: $ea $20 $d8
    ld [$d81f], a                                 ; $74fc: $ea $1f $d8

jr_001_74ff:
    ld a, $0c                                     ; $74ff: $3e $0c
    ld [$d822], a                                 ; $7501: $ea $22 $d8
    ld a, $00                                     ; $7504: $3e $00
    ld [$d823], a                                 ; $7506: $ea $23 $d8
    ld a, [$d636]                                 ; $7509: $fa $36 $d6
    ld [$d824], a                                 ; $750c: $ea $24 $d8
    ld a, [$d637]                                 ; $750f: $fa $37 $d6
    ld [$d825], a                                 ; $7512: $ea $25 $d8
    ret                                           ; $7515: $c9


Call_001_7516:
    ld a, [$d822]                                 ; $7516: $fa $22 $d8
    and a                                         ; $7519: $a7
    ret z                                         ; $751a: $c8

    dec a                                         ; $751b: $3d
    ld [$d822], a                                 ; $751c: $ea $22 $d8
    ret nz                                        ; $751f: $c0

    ld a, [$d823]                                 ; $7520: $fa $23 $d8
    call Call_001_7549                            ; $7523: $cd $49 $75
    jp Jump_001_7529                              ; $7526: $c3 $29 $75


Call_001_7529:
Jump_001_7529:
    cp $10                                        ; $7529: $fe $10
    jr nz, jr_001_7535                            ; $752b: $20 $08

    ld c, $05                                     ; $752d: $0e $05
    ld a, $02                                     ; $752f: $3e $02
    call Call_000_03b6                            ; $7531: $cd $b6 $03
    ret                                           ; $7534: $c9


jr_001_7535:
    cp $00                                        ; $7535: $fe $00
    jr nz, jr_001_7541                            ; $7537: $20 $08

    ld c, $07                                     ; $7539: $0e $07
    ld a, $02                                     ; $753b: $3e $02
    call Call_000_03b6                            ; $753d: $cd $b6 $03
    ret                                           ; $7540: $c9


jr_001_7541:
    ld c, $0c                                     ; $7541: $0e $0c
    ld a, $02                                     ; $7543: $3e $02
    call Call_000_03b6                            ; $7545: $cd $b6 $03
    ret                                           ; $7548: $c9


Call_001_7549:
    push af                                       ; $7549: $f5
    push bc                                       ; $754a: $c5
    push de                                       ; $754b: $d5
    push hl                                       ; $754c: $e5
    push af                                       ; $754d: $f5
    ld a, [$d810]                                 ; $754e: $fa $10 $d8
    sla a                                         ; $7551: $cb $27
    ld c, a                                       ; $7553: $4f
    ld b, $00                                     ; $7554: $06 $00
    ld hl, $7599                                  ; $7556: $21 $99 $75
    add hl, bc                                    ; $7559: $09
    pop af                                        ; $755a: $f1
    add [hl]                                      ; $755b: $86
    ld [$c355], a                                 ; $755c: $ea $55 $c3
    inc hl                                        ; $755f: $23
    ld a, $00                                     ; $7560: $3e $00
    adc [hl]                                      ; $7562: $8e
    ld [$c356], a                                 ; $7563: $ea $56 $c3
    ld a, $06                                     ; $7566: $3e $06
    ld [$c357], a                                 ; $7568: $ea $57 $c3
    ld a, [$d824]                                 ; $756b: $fa $24 $d8
    ld e, a                                       ; $756e: $5f
    sla a                                         ; $756f: $cb $27
    add e                                         ; $7571: $83
    sla a                                         ; $7572: $cb $27
    add $3b                                       ; $7574: $c6 $3b
    ld [$c351], a                                 ; $7576: $ea $51 $c3
    add $04                                       ; $7579: $c6 $04
    ld [$c353], a                                 ; $757b: $ea $53 $c3
    ld a, [$d825]                                 ; $757e: $fa $25 $d8
    ld e, a                                       ; $7581: $5f
    sla a                                         ; $7582: $cb $27
    add e                                         ; $7584: $83
    sla a                                         ; $7585: $cb $27
    add $33                                       ; $7587: $c6 $33
    ld [$c352], a                                 ; $7589: $ea $52 $c3
    add $04                                       ; $758c: $c6 $04
    ld [$c354], a                                 ; $758e: $ea $54 $c3
    call Call_000_08b3                            ; $7591: $cd $b3 $08
    pop hl                                        ; $7594: $e1
    pop de                                        ; $7595: $d1
    pop bc                                        ; $7596: $c1
    pop af                                        ; $7597: $f1
    ret                                           ; $7598: $c9


    nop                                           ; $7599: $00
    ld e, b                                       ; $759a: $58
    nop                                           ; $759b: $00
    ld l, e                                       ; $759c: $6b
    jr nc, jr_001_760a                            ; $759d: $30 $6b

    ld h, b                                       ; $759f: $60
    ld l, e                                       ; $75a0: $6b
    sub b                                         ; $75a1: $90
    ld l, e                                       ; $75a2: $6b
    ret nz                                        ; $75a3: $c0

    ld l, e                                       ; $75a4: $6b
    ldh a, [rOCPD]                                ; $75a5: $f0 $6b
    jr nz, @+$6e                                  ; $75a7: $20 $6c

    ld d, b                                       ; $75a9: $50
    ld l, h                                       ; $75aa: $6c
    add b                                         ; $75ab: $80
    ld l, h                                       ; $75ac: $6c
    or b                                          ; $75ad: $b0
    ld l, h                                       ; $75ae: $6c
    ldh [$ff6c], a                                ; $75af: $e0 $6c
    db $10                                        ; $75b1: $10
    ld l, l                                       ; $75b2: $6d
    ld b, b                                       ; $75b3: $40
    ld l, l                                       ; $75b4: $6d
    ld [hl], b                                    ; $75b5: $70
    ld l, l                                       ; $75b6: $6d
    and b                                         ; $75b7: $a0
    ld l, l                                       ; $75b8: $6d
    ret nc                                        ; $75b9: $d0

    ld l, l                                       ; $75ba: $6d
    nop                                           ; $75bb: $00
    ld l, [hl]                                    ; $75bc: $6e
    jr nc, @+$70                                  ; $75bd: $30 $6e

    ld h, b                                       ; $75bf: $60
    ld l, [hl]                                    ; $75c0: $6e
    sub b                                         ; $75c1: $90
    ld l, [hl]                                    ; $75c2: $6e
    ret nz                                        ; $75c3: $c0

    ld l, [hl]                                    ; $75c4: $6e
    ldh a, [$ff6e]                                ; $75c5: $f0 $6e
    jr nz, jr_001_7638                            ; $75c7: $20 $6f

    ld d, b                                       ; $75c9: $50
    ld l, a                                       ; $75ca: $6f
    add b                                         ; $75cb: $80
    ld l, a                                       ; $75cc: $6f
    or b                                          ; $75cd: $b0
    ld l, a                                       ; $75ce: $6f

Call_001_75cf:
    push bc                                       ; $75cf: $c5
    push de                                       ; $75d0: $d5
    push hl                                       ; $75d1: $e5
    ld [$c355], a                                 ; $75d2: $ea $55 $c3
    ld a, $58                                     ; $75d5: $3e $58
    ld [$c356], a                                 ; $75d7: $ea $56 $c3
    ld a, $06                                     ; $75da: $3e $06
    ld [$c357], a                                 ; $75dc: $ea $57 $c3
    ld a, b                                       ; $75df: $78
    ld [$c351], a                                 ; $75e0: $ea $51 $c3
    add d                                         ; $75e3: $82
    ld [$c353], a                                 ; $75e4: $ea $53 $c3
    ld a, c                                       ; $75e7: $79
    ld [$c352], a                                 ; $75e8: $ea $52 $c3
    add e                                         ; $75eb: $83
    ld [$c354], a                                 ; $75ec: $ea $54 $c3
    call Call_000_08b3                            ; $75ef: $cd $b3 $08
    pop hl                                        ; $75f2: $e1
    pop de                                        ; $75f3: $d1
    pop bc                                        ; $75f4: $c1
    ret                                           ; $75f5: $c9


Call_001_75f6:
    ld a, [$d803]                                 ; $75f6: $fa $03 $d8
    ld hl, $d802                                  ; $75f9: $21 $02 $d8
    or [hl]                                       ; $75fc: $b6
    ret nz                                        ; $75fd: $c0

    ld c, $00                                     ; $75fe: $0e $00
    ld a, $01                                     ; $7600: $3e $01
    call Call_000_03b6                            ; $7602: $cd $b6 $03
    call Call_000_0399                            ; $7605: $cd $99 $03
    ld c, $00                                     ; $7608: $0e $00

jr_001_760a:
    ld a, $01                                     ; $760a: $3e $01
    call Call_000_03b6                            ; $760c: $cd $b6 $03

jr_001_760f:
    call Call_000_05c5                            ; $760f: $cd $c5 $05
    rst RST_08                                    ; $7612: $cf
    xor a                                         ; $7613: $af
    ld [$c31a], a                                 ; $7614: $ea $1a $c3
    ld [$c31e], a                                 ; $7617: $ea $1e $c3
    ld [$c322], a                                 ; $761a: $ea $22 $c3
    call Call_001_713e                            ; $761d: $cd $3e $71
    call Call_001_7918                            ; $7620: $cd $18 $79
    call Call_001_7516                            ; $7623: $cd $16 $75
    ld a, [$d821]                                 ; $7626: $fa $21 $d8
    and a                                         ; $7629: $a7
    jr nz, jr_001_760f                            ; $762a: $20 $e3

    call Call_000_05b6                            ; $762c: $cd $b6 $05
    ld a, $ff                                     ; $762f: $3e $ff
    ld [$d805], a                                 ; $7631: $ea $05 $d8
    ret                                           ; $7634: $c9


Call_001_7635:
    ld a, [CurrentGridSize]                       ; $7635: $fa $00 $d8

jr_001_7638:
    cp $05                                        ; $7638: $fe $05
    jr nz, jr_001_763e                            ; $763a: $20 $02

    jr jr_001_7660                                ; $763c: $18 $22

jr_001_763e:
    cp $0a                                        ; $763e: $fe $0a
    jr nz, jr_001_7652                            ; $7640: $20 $10

    ld a, $08                                     ; $7642: $3e $08
    ld hl, $5a00                                  ; $7644: $21 $00 $5a
    ld de, $8800                                  ; $7647: $11 $00 $88
    ld bc, $0200                                  ; $764a: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $764d: $cd $38 $05
    jr jr_001_7660                                ; $7650: $18 $0e

jr_001_7652:
    ld a, $06                                     ; $7652: $3e $06
    ld hl, $7200                                  ; $7654: $21 $00 $72
    ld de, $8800                                  ; $7657: $11 $00 $88
    ld bc, $0200                                  ; $765a: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $765d: $cd $38 $05

jr_001_7660:
    ld hl, $d640                                  ; $7660: $21 $40 $d6
    ld c, $33                                     ; $7663: $0e $33
    ld e, $05                                     ; $7665: $1e $05
    ld a, [$d801]                                 ; $7667: $fa $01 $d8

jr_001_766a:
    push af                                       ; $766a: $f5
    ld b, $3b                                     ; $766b: $06 $3b
    ld d, $05                                     ; $766d: $16 $05
    ld a, [CurrentGridSize]                       ; $766f: $fa $00 $d8

jr_001_7672:
    push af                                       ; $7672: $f5
    ld a, [hl+]                                   ; $7673: $2a
    and $01                                       ; $7674: $e6 $01
    swap a                                        ; $7676: $cb $37
    call Call_001_75cf                            ; $7678: $cd $cf $75
    ld a, b                                       ; $767b: $78
    add $06                                       ; $767c: $c6 $06
    ld b, a                                       ; $767e: $47
    pop af                                        ; $767f: $f1
    dec a                                         ; $7680: $3d
    cp $01                                        ; $7681: $fe $01
    jr nz, jr_001_7688                            ; $7683: $20 $03

    dec d                                         ; $7685: $15
    jr jr_001_7672                                ; $7686: $18 $ea

jr_001_7688:
    and a                                         ; $7688: $a7
    jr nz, jr_001_7672                            ; $7689: $20 $e7

    ld a, [CurrentGridSize]                       ; $768b: $fa $00 $d8
    sub $11                                       ; $768e: $d6 $11
    xor $ff                                       ; $7690: $ee $ff
    add l                                         ; $7692: $85
    ld l, a                                       ; $7693: $6f
    ld a, $00                                     ; $7694: $3e $00
    adc h                                         ; $7696: $8c
    ld h, a                                       ; $7697: $67
    ld a, c                                       ; $7698: $79
    add $06                                       ; $7699: $c6 $06
    ld c, a                                       ; $769b: $4f
    pop af                                        ; $769c: $f1
    dec a                                         ; $769d: $3d
    cp $01                                        ; $769e: $fe $01
    jr nz, jr_001_76a5                            ; $76a0: $20 $03

    dec e                                         ; $76a2: $1d
    jr jr_001_766a                                ; $76a3: $18 $c5

jr_001_76a5:
    and a                                         ; $76a5: $a7
    jr nz, jr_001_766a                            ; $76a6: $20 $c2

    ret                                           ; $76a8: $c9


Call_001_76a9:
    ld a, [CurrentGridSize]                       ; $76a9: $fa $00 $d8
    cp $05                                        ; $76ac: $fe $05
    jp z, Jump_001_76b9                           ; $76ae: $ca $b9 $76

    cp $0a                                        ; $76b1: $fe $0a
    jp z, Jump_001_76e8                           ; $76b3: $ca $e8 $76

    jp Jump_001_7717                              ; $76b6: $c3 $17 $77


Jump_001_76b9:
    call Call_001_7741                            ; $76b9: $cd $41 $77
    ld hl, $d640                                  ; $76bc: $21 $40 $d6
    ld c, $3c                                     ; $76bf: $0e $3c
    ld e, $01                                     ; $76c1: $1e $01

jr_001_76c3:
    ld b, $44                                     ; $76c3: $06 $44
    ld d, $01                                     ; $76c5: $16 $01

jr_001_76c7:
    ld a, [hl+]                                   ; $76c7: $2a
    and $01                                       ; $76c8: $e6 $01
    jr z, jr_001_76d1                             ; $76ca: $28 $05

    swap a                                        ; $76cc: $cb $37
    call Call_001_75cf                            ; $76ce: $cd $cf $75

jr_001_76d1:
    ld a, b                                       ; $76d1: $78
    add $02                                       ; $76d2: $c6 $02
    ld b, a                                       ; $76d4: $47
    cp $4e                                        ; $76d5: $fe $4e
    jr nz, jr_001_76c7                            ; $76d7: $20 $ee

    push bc                                       ; $76d9: $c5
    ld bc, $000b                                  ; $76da: $01 $0b $00
    add hl, bc                                    ; $76dd: $09
    pop bc                                        ; $76de: $c1
    ld a, c                                       ; $76df: $79
    add $02                                       ; $76e0: $c6 $02
    ld c, a                                       ; $76e2: $4f
    cp $46                                        ; $76e3: $fe $46
    jr nz, jr_001_76c3                            ; $76e5: $20 $dc

    ret                                           ; $76e7: $c9


Jump_001_76e8:
    call Call_001_77a6                            ; $76e8: $cd $a6 $77
    ld hl, $d640                                  ; $76eb: $21 $40 $d6
    ld c, $43                                     ; $76ee: $0e $43
    ld e, $01                                     ; $76f0: $1e $01

jr_001_76f2:
    ld b, $4e                                     ; $76f2: $06 $4e
    ld d, $01                                     ; $76f4: $16 $01

jr_001_76f6:
    ld a, [hl+]                                   ; $76f6: $2a
    and $01                                       ; $76f7: $e6 $01
    jr z, jr_001_7700                             ; $76f9: $28 $05

    swap a                                        ; $76fb: $cb $37
    call Call_001_75cf                            ; $76fd: $cd $cf $75

jr_001_7700:
    ld a, b                                       ; $7700: $78
    add $02                                       ; $7701: $c6 $02
    ld b, a                                       ; $7703: $47
    cp $62                                        ; $7704: $fe $62
    jr nz, jr_001_76f6                            ; $7706: $20 $ee

    push bc                                       ; $7708: $c5
    ld bc, $0006                                  ; $7709: $01 $06 $00
    add hl, bc                                    ; $770c: $09
    pop bc                                        ; $770d: $c1
    ld a, c                                       ; $770e: $79
    add $02                                       ; $770f: $c6 $02
    ld c, a                                       ; $7711: $4f
    cp $57                                        ; $7712: $fe $57
    jr nz, jr_001_76f2                            ; $7714: $20 $dc

    ret                                           ; $7716: $c9


Jump_001_7717:
    call Call_001_780a                            ; $7717: $cd $0a $78
    ld hl, $d640                                  ; $771a: $21 $40 $d6
    ld c, $4d                                     ; $771d: $0e $4d
    ld e, $01                                     ; $771f: $1e $01

jr_001_7721:
    ld b, $59                                     ; $7721: $06 $59
    ld d, $01                                     ; $7723: $16 $01

jr_001_7725:
    ld a, [hl+]                                   ; $7725: $2a
    and $01                                       ; $7726: $e6 $01
    jr z, jr_001_772f                             ; $7728: $28 $05

    swap a                                        ; $772a: $cb $37
    call Call_001_75cf                            ; $772c: $cd $cf $75

jr_001_772f:
    ld a, b                                       ; $772f: $78
    add $02                                       ; $7730: $c6 $02
    ld b, a                                       ; $7732: $47
    cp $77                                        ; $7733: $fe $77
    jr nz, jr_001_7725                            ; $7735: $20 $ee

    inc hl                                        ; $7737: $23
    ld a, c                                       ; $7738: $79
    add $02                                       ; $7739: $c6 $02
    ld c, a                                       ; $773b: $4f
    cp $6b                                        ; $773c: $fe $6b
    jr nz, jr_001_7721                            ; $773e: $20 $e1

    ret                                           ; $7740: $c9


Call_001_7741:
    ld hl, $6340                                  ; $7741: $21 $40 $63
    ld c, $33                                     ; $7744: $0e $33

jr_001_7746:
    push bc                                       ; $7746: $c5
    push hl                                       ; $7747: $e5
    ld a, l                                       ; $7748: $7d
    ld [$c355], a                                 ; $7749: $ea $55 $c3
    ld a, h                                       ; $774c: $7c
    ld [$c356], a                                 ; $774d: $ea $56 $c3
    ld a, $07                                     ; $7750: $3e $07
    ld [$c357], a                                 ; $7752: $ea $57 $c3
    ld a, $3b                                     ; $7755: $3e $3b
    ld [$c351], a                                 ; $7757: $ea $51 $c3
    add $1c                                       ; $775a: $c6 $1c
    ld [$c353], a                                 ; $775c: $ea $53 $c3
    ld a, c                                       ; $775f: $79
    ld [$c352], a                                 ; $7760: $ea $52 $c3
    add $0b                                       ; $7763: $c6 $0b
    ld [$c354], a                                 ; $7765: $ea $54 $c3
    call Call_000_08b3                            ; $7768: $cd $b3 $08
    pop hl                                        ; $776b: $e1
    pop bc                                        ; $776c: $c1
    ld de, $0108                                  ; $776d: $11 $08 $01
    add hl, de                                    ; $7770: $19
    bit 3, l                                      ; $7771: $cb $5d
    jr nz, jr_001_7779                            ; $7773: $20 $04

    ld de, $00f0                                  ; $7775: $11 $f0 $00
    add hl, de                                    ; $7778: $19

jr_001_7779:
    ld a, c                                       ; $7779: $79
    add $0c                                       ; $777a: $c6 $0c
    ld c, a                                       ; $777c: $4f
    cp $4b                                        ; $777d: $fe $4b
    jr nz, jr_001_7746                            ; $777f: $20 $c5

    ld a, l                                       ; $7781: $7d
    ld [$c355], a                                 ; $7782: $ea $55 $c3
    ld a, h                                       ; $7785: $7c
    ld [$c356], a                                 ; $7786: $ea $56 $c3
    ld a, $07                                     ; $7789: $3e $07
    ld [$c357], a                                 ; $778b: $ea $57 $c3
    ld a, $3b                                     ; $778e: $3e $3b
    ld [$c351], a                                 ; $7790: $ea $51 $c3
    add $1c                                       ; $7793: $c6 $1c
    ld [$c353], a                                 ; $7795: $ea $53 $c3
    ld a, c                                       ; $7798: $79
    ld [$c352], a                                 ; $7799: $ea $52 $c3
    add $04                                       ; $779c: $c6 $04
    ld [$c354], a                                 ; $779e: $ea $54 $c3
    call Call_000_08b3                            ; $77a1: $cd $b3 $08
    ret                                           ; $77a4: $c9


    ret                                           ; $77a5: $c9


Call_001_77a6:
    ld hl, $6000                                  ; $77a6: $21 $00 $60
    ld c, $33                                     ; $77a9: $0e $33

jr_001_77ab:
    push bc                                       ; $77ab: $c5
    push hl                                       ; $77ac: $e5
    ld a, l                                       ; $77ad: $7d
    ld [$c355], a                                 ; $77ae: $ea $55 $c3
    ld a, h                                       ; $77b1: $7c
    ld [$c356], a                                 ; $77b2: $ea $56 $c3
    ld a, $08                                     ; $77b5: $3e $08
    ld [$c357], a                                 ; $77b7: $ea $57 $c3
    ld a, $3b                                     ; $77ba: $3e $3b
    ld [$c351], a                                 ; $77bc: $ea $51 $c3
    add $3a                                       ; $77bf: $c6 $3a
    ld [$c353], a                                 ; $77c1: $ea $53 $c3
    ld a, c                                       ; $77c4: $79
    ld [$c352], a                                 ; $77c5: $ea $52 $c3
    add $0b                                       ; $77c8: $c6 $0b
    ld [$c354], a                                 ; $77ca: $ea $54 $c3
    call Call_000_08b3                            ; $77cd: $cd $b3 $08
    pop hl                                        ; $77d0: $e1
    pop bc                                        ; $77d1: $c1
    ld de, $0108                                  ; $77d2: $11 $08 $01
    add hl, de                                    ; $77d5: $19
    bit 3, l                                      ; $77d6: $cb $5d
    jr nz, jr_001_77de                            ; $77d8: $20 $04

    ld de, $00f0                                  ; $77da: $11 $f0 $00
    add hl, de                                    ; $77dd: $19

jr_001_77de:
    ld a, c                                       ; $77de: $79
    add $0c                                       ; $77df: $c6 $0c
    ld c, a                                       ; $77e1: $4f
    cp $63                                        ; $77e2: $fe $63
    jr nz, jr_001_77ab                            ; $77e4: $20 $c5

    ld a, l                                       ; $77e6: $7d
    ld [$c355], a                                 ; $77e7: $ea $55 $c3
    ld a, h                                       ; $77ea: $7c
    ld [$c356], a                                 ; $77eb: $ea $56 $c3
    ld a, $08                                     ; $77ee: $3e $08
    ld [$c357], a                                 ; $77f0: $ea $57 $c3
    ld a, $3b                                     ; $77f3: $3e $3b
    ld [$c351], a                                 ; $77f5: $ea $51 $c3
    add $3a                                       ; $77f8: $c6 $3a
    ld [$c353], a                                 ; $77fa: $ea $53 $c3
    ld a, c                                       ; $77fd: $79
    ld [$c352], a                                 ; $77fe: $ea $52 $c3
    add $0a                                       ; $7801: $c6 $0a
    ld [$c354], a                                 ; $7803: $ea $54 $c3
    call Call_000_08b3                            ; $7806: $cd $b3 $08
    ret                                           ; $7809: $c9


Call_001_780a:
    ld hl, $5d00                                  ; $780a: $21 $00 $5d
    ld c, $33                                     ; $780d: $0e $33

jr_001_780f:
    push bc                                       ; $780f: $c5
    push hl                                       ; $7810: $e5
    ld a, l                                       ; $7811: $7d
    ld [$c355], a                                 ; $7812: $ea $55 $c3
    ld a, h                                       ; $7815: $7c
    ld [$c356], a                                 ; $7816: $ea $56 $c3
    ld a, $06                                     ; $7819: $3e $06
    ld [$c357], a                                 ; $781b: $ea $57 $c3
    ld a, $3b                                     ; $781e: $3e $3b
    ld [$c351], a                                 ; $7820: $ea $51 $c3
    add $58                                       ; $7823: $c6 $58
    ld [$c353], a                                 ; $7825: $ea $53 $c3
    ld a, c                                       ; $7828: $79
    ld [$c352], a                                 ; $7829: $ea $52 $c3
    add $0b                                       ; $782c: $c6 $0b
    ld [$c354], a                                 ; $782e: $ea $54 $c3
    call Call_000_08b3                            ; $7831: $cd $b3 $08
    pop hl                                        ; $7834: $e1
    pop bc                                        ; $7835: $c1
    ld de, $0108                                  ; $7836: $11 $08 $01
    add hl, de                                    ; $7839: $19
    bit 3, l                                      ; $783a: $cb $5d
    jr nz, jr_001_7842                            ; $783c: $20 $04

    ld de, $00f0                                  ; $783e: $11 $f0 $00
    add hl, de                                    ; $7841: $19

jr_001_7842:
    ld a, c                                       ; $7842: $79
    add $0c                                       ; $7843: $c6 $0c
    ld c, a                                       ; $7845: $4f
    cp $87                                        ; $7846: $fe $87
    jr nz, jr_001_780f                            ; $7848: $20 $c5

    ld a, l                                       ; $784a: $7d
    ld [$c355], a                                 ; $784b: $ea $55 $c3
    ld a, h                                       ; $784e: $7c
    ld [$c356], a                                 ; $784f: $ea $56 $c3
    ld a, $06                                     ; $7852: $3e $06
    ld [$c357], a                                 ; $7854: $ea $57 $c3
    ld a, $3b                                     ; $7857: $3e $3b
    ld [$c351], a                                 ; $7859: $ea $51 $c3
    add $58                                       ; $785c: $c6 $58
    ld [$c353], a                                 ; $785e: $ea $53 $c3
    ld a, c                                       ; $7861: $79
    ld [$c352], a                                 ; $7862: $ea $52 $c3
    add $04                                       ; $7865: $c6 $04
    ld [$c354], a                                 ; $7867: $ea $54 $c3
    call Call_000_08b3                            ; $786a: $cd $b3 $08
    ret                                           ; $786d: $c9


Call_001_786e:
    ld hl, $d640                                  ; $786e: $21 $40 $d6
    ld c, $00                                     ; $7871: $0e $00

jr_001_7873:
    ld b, $00                                     ; $7873: $06 $00

jr_001_7875:
    ld a, b                                       ; $7875: $78
    ld [$d824], a                                 ; $7876: $ea $24 $d8
    ld a, c                                       ; $7879: $79
    ld [$d825], a                                 ; $787a: $ea $25 $d8
    ld a, [hl+]                                   ; $787d: $2a
    srl a                                         ; $787e: $cb $3f
    swap a                                        ; $7880: $cb $37
    call Call_001_7549                            ; $7882: $cd $49 $75
    inc b                                         ; $7885: $04
    ld a, [CurrentGridSize]                       ; $7886: $fa $00 $d8
    cp b                                          ; $7889: $b8
    jr nz, jr_001_7875                            ; $788a: $20 $e9

    ld a, [CurrentGridSize]                       ; $788c: $fa $00 $d8
    sub $11                                       ; $788f: $d6 $11
    xor $ff                                       ; $7891: $ee $ff
    add l                                         ; $7893: $85
    ld l, a                                       ; $7894: $6f
    ld a, $00                                     ; $7895: $3e $00
    adc h                                         ; $7897: $8c
    ld h, a                                       ; $7898: $67
    inc c                                         ; $7899: $0c
    ld a, [$d801]                                 ; $789a: $fa $01 $d8
    cp c                                          ; $789d: $b9
    jr nz, jr_001_7873                            ; $789e: $20 $d3

    xor a                                         ; $78a0: $af
    ret                                           ; $78a1: $c9


Call_001_78a2:
    ld a, [$d636]                                 ; $78a2: $fa $36 $d6
    ld c, a                                       ; $78a5: $4f
    ld a, [$d637]                                 ; $78a6: $fa $37 $d6
    ld b, a                                       ; $78a9: $47
    ld e, c                                       ; $78aa: $59
    ld d, $00                                     ; $78ab: $16 $00
    ld hl, $d640                                  ; $78ad: $21 $40 $d6
    add hl, de                                    ; $78b0: $19
    push bc                                       ; $78b1: $c5
    ld b, $00                                     ; $78b2: $06 $00

jr_001_78b4:
    ld a, c                                       ; $78b4: $79
    ld [$d824], a                                 ; $78b5: $ea $24 $d8
    ld a, b                                       ; $78b8: $78
    ld [$d825], a                                 ; $78b9: $ea $25 $d8
    ld a, [hl]                                    ; $78bc: $7e
    and $01                                       ; $78bd: $e6 $01
    push af                                       ; $78bf: $f5
    swap a                                        ; $78c0: $cb $37
    jr nz, jr_001_78c6                            ; $78c2: $20 $02

    ld a, $20                                     ; $78c4: $3e $20

jr_001_78c6:
    call Call_001_7549                            ; $78c6: $cd $49 $75
    pop af                                        ; $78c9: $f1
    jr z, jr_001_78d2                             ; $78ca: $28 $06

    set 1, [hl]                                   ; $78cc: $cb $ce
    res 2, [hl]                                   ; $78ce: $cb $96
    jr jr_001_78d6                                ; $78d0: $18 $04

jr_001_78d2:
    res 1, [hl]                                   ; $78d2: $cb $8e
    set 2, [hl]                                   ; $78d4: $cb $d6

jr_001_78d6:
    ld de, $0010                                  ; $78d6: $11 $10 $00
    add hl, de                                    ; $78d9: $19
    inc b                                         ; $78da: $04
    ld a, [$d801]                                 ; $78db: $fa $01 $d8
    cp b                                          ; $78de: $b8
    jr nz, jr_001_78b4                            ; $78df: $20 $d3

    pop bc                                        ; $78e1: $c1
    ld e, b                                       ; $78e2: $58
    swap e                                        ; $78e3: $cb $33
    ld d, $00                                     ; $78e5: $16 $00
    ld hl, $d640                                  ; $78e7: $21 $40 $d6
    add hl, de                                    ; $78ea: $19
    ld c, $00                                     ; $78eb: $0e $00

jr_001_78ed:
    ld a, c                                       ; $78ed: $79
    ld [$d824], a                                 ; $78ee: $ea $24 $d8
    ld a, b                                       ; $78f1: $78
    ld [$d825], a                                 ; $78f2: $ea $25 $d8
    ld a, [hl]                                    ; $78f5: $7e
    and $01                                       ; $78f6: $e6 $01
    push af                                       ; $78f8: $f5
    swap a                                        ; $78f9: $cb $37
    jr nz, jr_001_78ff                            ; $78fb: $20 $02

    ld a, $20                                     ; $78fd: $3e $20

jr_001_78ff:
    call Call_001_7549                            ; $78ff: $cd $49 $75
    pop af                                        ; $7902: $f1
    jr z, jr_001_790b                             ; $7903: $28 $06

    set 1, [hl]                                   ; $7905: $cb $ce
    res 2, [hl]                                   ; $7907: $cb $96
    jr jr_001_790f                                ; $7909: $18 $04

jr_001_790b:
    res 1, [hl]                                   ; $790b: $cb $8e
    set 2, [hl]                                   ; $790d: $cb $d6

jr_001_790f:
    inc hl                                        ; $790f: $23
    inc c                                         ; $7910: $0c
    ld a, [CurrentGridSize]                       ; $7911: $fa $00 $d8
    cp c                                          ; $7914: $b9
    jr nz, jr_001_78ed                            ; $7915: $20 $d6

    ret                                           ; $7917: $c9


Call_001_7918:
    ld a, [$d817]                                 ; $7918: $fa $17 $d8
    and a                                         ; $791b: $a7
    jr nz, jr_001_793e                            ; $791c: $20 $20

    ld a, [$d818]                                 ; $791e: $fa $18 $d8
    ld c, a                                       ; $7921: $4f
    ld b, $00                                     ; $7922: $06 $00

jr_001_7924:
    ld hl, $794e                                  ; $7924: $21 $4e $79
    add hl, bc                                    ; $7927: $09
    ld a, [hl+]                                   ; $7928: $2a
    and a                                         ; $7929: $a7
    jr nz, jr_001_7931                            ; $792a: $20 $05

    ld bc, $0000                                  ; $792c: $01 $00 $00
    jr jr_001_7924                                ; $792f: $18 $f3

jr_001_7931:
    ld [$d817], a                                 ; $7931: $ea $17 $d8
    ld a, [hl]                                    ; $7934: $7e
    ld [$d816], a                                 ; $7935: $ea $16 $d8
    inc c                                         ; $7938: $0c
    inc c                                         ; $7939: $0c
    ld a, c                                       ; $793a: $79
    ld [$d818], a                                 ; $793b: $ea $18 $d8

jr_001_793e:
    ld hl, $d817                                  ; $793e: $21 $17 $d8
    dec [hl]                                      ; $7941: $35
    ld a, [$d816]                                 ; $7942: $fa $16 $d8
    cp $ff                                        ; $7945: $fe $ff
    ret z                                         ; $7947: $c8

    ld bc, $1810                                  ; $7948: $01 $10 $18
    jp Jump_000_20ce                              ; $794b: $c3 $ce $20


    ret nz                                        ; $794e: $c0

    rst $38                                       ; $794f: $ff
    inc b                                         ; $7950: $04
    nop                                           ; $7951: $00
    inc b                                         ; $7952: $04
    ld bc, $0002                                  ; $7953: $01 $02 $00
    add b                                         ; $7956: $80
    rst $38                                       ; $7957: $ff
    inc bc                                        ; $7958: $03
    nop                                           ; $7959: $00
    dec b                                         ; $795a: $05
    ld bc, $0002                                  ; $795b: $01 $02 $00
    inc bc                                        ; $795e: $03
    rst $38                                       ; $795f: $ff
    inc bc                                        ; $7960: $03
    nop                                           ; $7961: $00
    dec b                                         ; $7962: $05
    ld bc, $0002                                  ; $7963: $01 $02 $00
    nop                                           ; $7966: $00

Jump_001_7967:
jr_001_7967:
    ld a, [$d81f]                                 ; $7967: $fa $1f $d8
    and a                                         ; $796a: $a7
    jr nz, jr_001_79ba                            ; $796b: $20 $4d

    ld a, [$d821]                                 ; $796d: $fa $21 $d8
    ld c, a                                       ; $7970: $4f
    ld b, $00                                     ; $7971: $06 $00
    ld hl, $79ff                                  ; $7973: $21 $ff $79
    add hl, bc                                    ; $7976: $09
    ld c, [hl]                                    ; $7977: $4e
    add hl, bc                                    ; $7978: $09
    ld a, [$d820]                                 ; $7979: $fa $20 $d8
    ld c, a                                       ; $797c: $4f
    ld b, $00                                     ; $797d: $06 $00

jr_001_797f:
    push hl                                       ; $797f: $e5
    add hl, bc                                    ; $7980: $09
    ld a, [hl+]                                   ; $7981: $2a
    and a                                         ; $7982: $a7
    jr nz, jr_001_798b                            ; $7983: $20 $06

    ld bc, $0000                                  ; $7985: $01 $00 $00
    pop hl                                        ; $7988: $e1
    jr jr_001_797f                                ; $7989: $18 $f4

jr_001_798b:
    cp $ff                                        ; $798b: $fe $ff
    jr nz, jr_001_79ac                            ; $798d: $20 $1d

    ld a, [$c31a]                                 ; $798f: $fa $1a $c3
    and $03                                       ; $7992: $e6 $03
    jr z, jr_001_799e                             ; $7994: $28 $08

    pop hl                                        ; $7996: $e1
    ld a, $01                                     ; $7997: $3e $01
    ld [$d81f], a                                 ; $7999: $ea $1f $d8
    jr jr_001_79ba                                ; $799c: $18 $1c

jr_001_799e:
    ld a, [hl+]                                   ; $799e: $2a
    ld [$d821], a                                 ; $799f: $ea $21 $d8
    xor a                                         ; $79a2: $af
    ld [$d81f], a                                 ; $79a3: $ea $1f $d8
    ld [$d820], a                                 ; $79a6: $ea $20 $d8
    pop hl                                        ; $79a9: $e1
    jr jr_001_7967                                ; $79aa: $18 $bb

jr_001_79ac:
    ld [$d81f], a                                 ; $79ac: $ea $1f $d8
    ld a, [hl]                                    ; $79af: $7e
    ld [$d81e], a                                 ; $79b0: $ea $1e $d8
    inc c                                         ; $79b3: $0c
    inc c                                         ; $79b4: $0c
    ld a, c                                       ; $79b5: $79
    ld [$d820], a                                 ; $79b6: $ea $20 $d8
    pop hl                                        ; $79b9: $e1

jr_001_79ba:
    ld hl, $d81f                                  ; $79ba: $21 $1f $d8
    dec [hl]                                      ; $79bd: $35
    ld a, [$d81e]                                 ; $79be: $fa $1e $d8
    cp $ff                                        ; $79c1: $fe $ff
    ret z                                         ; $79c3: $c8

    push af                                       ; $79c4: $f5
    ld a, [$d636]                                 ; $79c5: $fa $36 $d6
    ld e, a                                       ; $79c8: $5f
    sla a                                         ; $79c9: $cb $27
    add e                                         ; $79cb: $83
    sla a                                         ; $79cc: $cb $27
    add $3a                                       ; $79ce: $c6 $3a
    ld b, a                                       ; $79d0: $47
    ld a, [$d637]                                 ; $79d1: $fa $37 $d6
    ld e, a                                       ; $79d4: $5f
    sla a                                         ; $79d5: $cb $27
    add e                                         ; $79d7: $83
    sla a                                         ; $79d8: $cb $27
    add $32                                       ; $79da: $c6 $32
    ld c, a                                       ; $79dc: $4f
    pop af                                        ; $79dd: $f1
    call Call_000_20ce                            ; $79de: $cd $ce $20
    ld a, [$d821]                                 ; $79e1: $fa $21 $d8
    cp $01                                        ; $79e4: $fe $01
    jr z, jr_001_79eb                             ; $79e6: $28 $03

    cp $02                                        ; $79e8: $fe $02
    ret nz                                        ; $79ea: $c0

jr_001_79eb:
    ld a, [$d820]                                 ; $79eb: $fa $20 $d8
    cp $02                                        ; $79ee: $fe $02
    ret nz                                        ; $79f0: $c0

    ld a, [$d81f]                                 ; $79f1: $fa $1f $d8
    cp $02                                        ; $79f4: $fe $02
    ret nz                                        ; $79f6: $c0

    ld c, $06                                     ; $79f7: $0e $06
    ld a, $02                                     ; $79f9: $3e $02
    call Call_000_03b6                            ; $79fb: $cd $b6 $03
    ret                                           ; $79fe: $c9


    ld b, $0e                                     ; $79ff: $06 $0e
    ld sp, $5750                                  ; $7a01: $31 $50 $57
    adc b                                         ; $7a04: $88
    inc b                                         ; $7a05: $04
    dec bc                                        ; $7a06: $0b
    inc b                                         ; $7a07: $04
    inc c                                         ; $7a08: $0c
    inc b                                         ; $7a09: $04
    dec c                                         ; $7a0a: $0d
    inc b                                         ; $7a0b: $04
    inc c                                         ; $7a0c: $0c
    nop                                           ; $7a0d: $00
    ld bc, $011e                                  ; $7a0e: $01 $1e $01
    ld c, $01                                     ; $7a11: $0e $01
    ld a, [hl+]                                   ; $7a13: $2a
    ld bc, $010f                                  ; $7a14: $01 $0f $01
    rra                                           ; $7a17: $1f
    inc bc                                        ; $7a18: $03
    db $10                                        ; $7a19: $10
    inc b                                         ; $7a1a: $04
    ld de, $1204                                  ; $7a1b: $11 $04 $12
    inc b                                         ; $7a1e: $04
    inc de                                        ; $7a1f: $13
    inc b                                         ; $7a20: $04
    inc d                                         ; $7a21: $14
    inc b                                         ; $7a22: $04
    dec d                                         ; $7a23: $15
    inc b                                         ; $7a24: $04
    ld d, $04                                     ; $7a25: $16 $04
    rla                                           ; $7a27: $17
    inc b                                         ; $7a28: $04
    jr jr_001_7a2f                                ; $7a29: $18 $04

    add hl, de                                    ; $7a2b: $19
    inc b                                         ; $7a2c: $04
    ld a, [de]                                    ; $7a2d: $1a
    inc b                                         ; $7a2e: $04

jr_001_7a2f:
    dec de                                        ; $7a2f: $1b
    rst $38                                       ; $7a30: $ff
    nop                                           ; $7a31: $00
    ld bc, $010e                                  ; $7a32: $01 $0e $01
    ld a, [hl+]                                   ; $7a35: $2a
    ld bc, $010f                                  ; $7a36: $01 $0f $01
    rra                                           ; $7a39: $1f
    inc bc                                        ; $7a3a: $03
    db $10                                        ; $7a3b: $10
    inc b                                         ; $7a3c: $04
    ld de, $1204                                  ; $7a3d: $11 $04 $12
    inc b                                         ; $7a40: $04
    inc de                                        ; $7a41: $13
    inc b                                         ; $7a42: $04
    inc d                                         ; $7a43: $14
    inc b                                         ; $7a44: $04
    dec d                                         ; $7a45: $15
    inc b                                         ; $7a46: $04
    ld d, $04                                     ; $7a47: $16 $04
    rla                                           ; $7a49: $17
    inc b                                         ; $7a4a: $04
    add hl, de                                    ; $7a4b: $19
    inc b                                         ; $7a4c: $04
    ld a, [de]                                    ; $7a4d: $1a
    inc b                                         ; $7a4e: $04
    dec de                                        ; $7a4f: $1b
    rst $38                                       ; $7a50: $ff
    nop                                           ; $7a51: $00
    inc bc                                        ; $7a52: $03
    inc e                                         ; $7a53: $1c
    dec b                                         ; $7a54: $05
    dec e                                         ; $7a55: $1d
    inc b                                         ; $7a56: $04
    ld e, $ff                                     ; $7a57: $1e $ff
    nop                                           ; $7a59: $00
    inc b                                         ; $7a5a: $04
    ld e, $02                                     ; $7a5b: $1e $02
    ld c, $02                                     ; $7a5d: $0e $02
    ld a, [hl+]                                   ; $7a5f: $2a
    inc bc                                        ; $7a60: $03
    rrca                                          ; $7a61: $0f
    ld [bc], a                                    ; $7a62: $02
    rra                                           ; $7a63: $1f
    inc bc                                        ; $7a64: $03
    db $10                                        ; $7a65: $10
    inc b                                         ; $7a66: $04
    ld de, $1204                                  ; $7a67: $11 $04 $12
    inc b                                         ; $7a6a: $04
    inc de                                        ; $7a6b: $13
    inc b                                         ; $7a6c: $04
    inc d                                         ; $7a6d: $14
    inc b                                         ; $7a6e: $04
    dec d                                         ; $7a6f: $15
    inc b                                         ; $7a70: $04
    ld d, $04                                     ; $7a71: $16 $04
    rla                                           ; $7a73: $17
    inc b                                         ; $7a74: $04
    jr jr_001_7a7b                                ; $7a75: $18 $04

    add hl, de                                    ; $7a77: $19
    inc b                                         ; $7a78: $04
    ld a, [de]                                    ; $7a79: $1a
    inc b                                         ; $7a7a: $04

jr_001_7a7b:
    ld [hl+], a                                   ; $7a7b: $22
    inc b                                         ; $7a7c: $04
    inc hl                                        ; $7a7d: $23
    inc b                                         ; $7a7e: $04
    inc h                                         ; $7a7f: $24
    inc b                                         ; $7a80: $04
    dec h                                         ; $7a81: $25
    inc b                                         ; $7a82: $04
    ld h, $04                                     ; $7a83: $26 $04
    daa                                           ; $7a85: $27
    inc b                                         ; $7a86: $04
    jr z, jr_001_7a8d                             ; $7a87: $28 $04

    ld c, $ff                                     ; $7a89: $0e $ff
    nop                                           ; $7a8b: $00
    inc b                                         ; $7a8c: $04

jr_001_7a8d:
    jr nz, jr_001_7a96                            ; $7a8d: $20 $07

    ld hl, $2004                                  ; $7a8f: $21 $04 $20
    rlca                                          ; $7a92: $07
    ld hl, $2004                                  ; $7a93: $21 $04 $20

jr_001_7a96:
    rst $38                                       ; $7a96: $ff
    nop                                           ; $7a97: $00

Call_001_7a98:
    ld a, [$d80e]                                 ; $7a98: $fa $0e $d8
    and a                                         ; $7a9b: $a7
    ret nz                                        ; $7a9c: $c0

    ld a, $01                                     ; $7a9d: $3e $01
    ld [$d80e], a                                 ; $7a9f: $ea $0e $d8
    ld a, [$d80a]                                 ; $7aa2: $fa $0a $d8
    and a                                         ; $7aa5: $a7
    ret nz                                        ; $7aa6: $c0

    ld a, [$d809]                                 ; $7aa7: $fa $09 $d8
    cp $03                                        ; $7aaa: $fe $03
    jr z, jr_001_7aba                             ; $7aac: $28 $0c

    cp $02                                        ; $7aae: $fe $02
    jr z, jr_001_7ac4                             ; $7ab0: $28 $12

    cp $01                                        ; $7ab2: $fe $01
    jr z, jr_001_7ad6                             ; $7ab4: $28 $20

    and a                                         ; $7ab6: $a7
    jr z, jr_001_7ae2                             ; $7ab7: $28 $29

    ret                                           ; $7ab9: $c9


jr_001_7aba:
    ld a, [$d80c]                                 ; $7aba: $fa $0c $d8
    ld hl, $d80b                                  ; $7abd: $21 $0b $d8
    or [hl]                                       ; $7ac0: $b6
    jr z, jr_001_7ac4                             ; $7ac1: $28 $01

    ret                                           ; $7ac3: $c9


jr_001_7ac4:
    ld a, [$d80c]                                 ; $7ac4: $fa $0c $d8
    ld hl, $d80b                                  ; $7ac7: $21 $0b $d8
    or [hl]                                       ; $7aca: $b6
    jr z, jr_001_7ad6                             ; $7acb: $28 $09

    ld a, [hl]                                    ; $7acd: $7e
    and a                                         ; $7ace: $a7
    jr z, jr_001_7ae2                             ; $7acf: $28 $11

    cp $05                                        ; $7ad1: $fe $05
    jr z, jr_001_7ae2                             ; $7ad3: $28 $0d

    ret                                           ; $7ad5: $c9


jr_001_7ad6:
    ld a, [$d80c]                                 ; $7ad6: $fa $0c $d8
    ld hl, $d80b                                  ; $7ad9: $21 $0b $d8
    or [hl]                                       ; $7adc: $b6
    jr z, jr_001_7ae2                             ; $7add: $28 $03

    bit 0, [hl]                                   ; $7adf: $cb $46
    ret nz                                        ; $7ae1: $c0

jr_001_7ae2:
    ld c, $0d                                     ; $7ae2: $0e $0d
    ld a, $02                                     ; $7ae4: $3e $02
    call Call_000_03b6                            ; $7ae6: $cd $b6 $03
    ret                                           ; $7ae9: $c9


Call_001_7aea:
    ld a, [$d80d]                                 ; $7aea: $fa $0d $d8
    cp $3c                                        ; $7aed: $fe $3c
    ret c                                         ; $7aef: $d8

    xor a                                         ; $7af0: $af
    ld [$d80d], a                                 ; $7af1: $ea $0d $d8
    ld [$d80e], a                                 ; $7af4: $ea $0e $d8
    ld a, [GameState_Current]                     ; $7af7: $fa $34 $d6
    cp $09                                        ; $7afa: $fe $09
    jr z, jr_001_7b6e                             ; $7afc: $28 $70

    ld a, [$d80b]                                 ; $7afe: $fa $0b $d8
    ld hl, $d80c                                  ; $7b01: $21 $0c $d8
    or [hl]                                       ; $7b04: $b6
    ld hl, $d809                                  ; $7b05: $21 $09 $d8
    or [hl]                                       ; $7b08: $b6
    ld hl, $d80a                                  ; $7b09: $21 $0a $d8
    or [hl]                                       ; $7b0c: $b6
    ret z                                         ; $7b0d: $c8

    ld a, [$d80b]                                 ; $7b0e: $fa $0b $d8
    dec a                                         ; $7b11: $3d
    cp $ff                                        ; $7b12: $fe $ff
    jr nz, jr_001_7b18                            ; $7b14: $20 $02

    ld a, $09                                     ; $7b16: $3e $09

jr_001_7b18:
    ld [$d80b], a                                 ; $7b18: $ea $0b $d8
    push af                                       ; $7b1b: $f5
    ld bc, $2b27                                  ; $7b1c: $01 $27 $2b
    call Call_001_7c29                            ; $7b1f: $cd $29 $7c
    pop af                                        ; $7b22: $f1
    ret nz                                        ; $7b23: $c0

    ld a, [$d80c]                                 ; $7b24: $fa $0c $d8
    dec a                                         ; $7b27: $3d
    cp $ff                                        ; $7b28: $fe $ff
    jr nz, jr_001_7b2e                            ; $7b2a: $20 $02

    ld a, $05                                     ; $7b2c: $3e $05

jr_001_7b2e:
    ld [$d80c], a                                 ; $7b2e: $ea $0c $d8
    push af                                       ; $7b31: $f5
    ld bc, $2327                                  ; $7b32: $01 $27 $23
    call Call_001_7c29                            ; $7b35: $cd $29 $7c
    pop af                                        ; $7b38: $f1
    ret nz                                        ; $7b39: $c0

    ld a, [$d809]                                 ; $7b3a: $fa $09 $d8
    dec a                                         ; $7b3d: $3d
    cp $ff                                        ; $7b3e: $fe $ff
    jr nz, jr_001_7b44                            ; $7b40: $20 $02

    ld a, $09                                     ; $7b42: $3e $09

jr_001_7b44:
    ld [$d809], a                                 ; $7b44: $ea $09 $d8
    push af                                       ; $7b47: $f5
    ld bc, $1527                                  ; $7b48: $01 $27 $15
    call Call_001_7c29                            ; $7b4b: $cd $29 $7c
    pop af                                        ; $7b4e: $f1
    ret nz                                        ; $7b4f: $c0

    ld a, [$d80a]                                 ; $7b50: $fa $0a $d8
    dec a                                         ; $7b53: $3d
    cp $ff                                        ; $7b54: $fe $ff
    jr nz, jr_001_7b62                            ; $7b56: $20 $0a

    xor a                                         ; $7b58: $af
    ld [$d80b], a                                 ; $7b59: $ea $0b $d8
    ld [$d80c], a                                 ; $7b5c: $ea $0c $d8
    ld [$d809], a                                 ; $7b5f: $ea $09 $d8

jr_001_7b62:
    ld [$d80a], a                                 ; $7b62: $ea $0a $d8
    push af                                       ; $7b65: $f5
    ld bc, $0d27                                  ; $7b66: $01 $27 $0d
    call Call_001_7c29                            ; $7b69: $cd $29 $7c
    pop af                                        ; $7b6c: $f1
    ret                                           ; $7b6d: $c9


jr_001_7b6e:
    ld a, [$d80b]                                 ; $7b6e: $fa $0b $d8
    cp $09                                        ; $7b71: $fe $09
    jr nz, jr_001_7b8b                            ; $7b73: $20 $16

    ld a, [$d80c]                                 ; $7b75: $fa $0c $d8
    cp $05                                        ; $7b78: $fe $05
    jr nz, jr_001_7b8b                            ; $7b7a: $20 $0f

    ld a, [$d809]                                 ; $7b7c: $fa $09 $d8
    cp $09                                        ; $7b7f: $fe $09
    jr nz, jr_001_7b8b                            ; $7b81: $20 $08

    ld a, [$d80a]                                 ; $7b83: $fa $0a $d8
    cp $09                                        ; $7b86: $fe $09
    jr nz, jr_001_7b8b                            ; $7b88: $20 $01

    ret                                           ; $7b8a: $c9


jr_001_7b8b:
    ld a, [$d80b]                                 ; $7b8b: $fa $0b $d8
    inc a                                         ; $7b8e: $3c
    cp $0a                                        ; $7b8f: $fe $0a
    jr nz, jr_001_7b94                            ; $7b91: $20 $01

    xor a                                         ; $7b93: $af

jr_001_7b94:
    ld [$d80b], a                                 ; $7b94: $ea $0b $d8
    push af                                       ; $7b97: $f5
    ld bc, $2b27                                  ; $7b98: $01 $27 $2b
    call Call_001_7c29                            ; $7b9b: $cd $29 $7c
    pop af                                        ; $7b9e: $f1
    ret nz                                        ; $7b9f: $c0

    ld a, [$d80c]                                 ; $7ba0: $fa $0c $d8
    inc a                                         ; $7ba3: $3c
    cp $06                                        ; $7ba4: $fe $06
    jr nz, jr_001_7ba9                            ; $7ba6: $20 $01

    xor a                                         ; $7ba8: $af

jr_001_7ba9:
    ld [$d80c], a                                 ; $7ba9: $ea $0c $d8
    push af                                       ; $7bac: $f5
    ld bc, $2327                                  ; $7bad: $01 $27 $23
    call Call_001_7c29                            ; $7bb0: $cd $29 $7c
    pop af                                        ; $7bb3: $f1
    ret nz                                        ; $7bb4: $c0

    ld a, [$d809]                                 ; $7bb5: $fa $09 $d8
    inc a                                         ; $7bb8: $3c
    cp $0a                                        ; $7bb9: $fe $0a
    jr nz, jr_001_7bbe                            ; $7bbb: $20 $01

    xor a                                         ; $7bbd: $af

jr_001_7bbe:
    ld [$d809], a                                 ; $7bbe: $ea $09 $d8
    push af                                       ; $7bc1: $f5
    ld bc, $1527                                  ; $7bc2: $01 $27 $15
    call Call_001_7c29                            ; $7bc5: $cd $29 $7c
    pop af                                        ; $7bc8: $f1
    ret nz                                        ; $7bc9: $c0

    ld a, [$d80a]                                 ; $7bca: $fa $0a $d8
    inc a                                         ; $7bcd: $3c
    cp $0a                                        ; $7bce: $fe $0a
    jr nz, jr_001_7bdf                            ; $7bd0: $20 $0d

    ld a, $05                                     ; $7bd2: $3e $05
    ld [$d80c], a                                 ; $7bd4: $ea $0c $d8
    ld a, $09                                     ; $7bd7: $3e $09
    ld [$d80b], a                                 ; $7bd9: $ea $0b $d8
    ld [$d809], a                                 ; $7bdc: $ea $09 $d8

jr_001_7bdf:
    ld [$d80a], a                                 ; $7bdf: $ea $0a $d8
    push af                                       ; $7be2: $f5
    ld bc, $0d27                                  ; $7be3: $01 $27 $0d
    call Call_001_7c29                            ; $7be6: $cd $29 $7c
    pop af                                        ; $7be9: $f1
    ret                                           ; $7bea: $c9


Call_001_7beb:
    xor a                                         ; $7beb: $af
    ld [$d80d], a                                 ; $7bec: $ea $0d $d8
    ld [$d80b], a                                 ; $7bef: $ea $0b $d8
    ld [$d80c], a                                 ; $7bf2: $ea $0c $d8
    ld [$d809], a                                 ; $7bf5: $ea $09 $d8
    ld a, [GameState_Current]                     ; $7bf8: $fa $34 $d6
    sub $09                                       ; $7bfb: $d6 $09
    jr z, jr_001_7c01                             ; $7bfd: $28 $02

    ld a, $03                                     ; $7bff: $3e $03

jr_001_7c01:
    ld [$d80a], a                                 ; $7c01: $ea $0a $d8

Call_001_7c04:
Jump_001_7c04:
    ld a, [$d80b]                                 ; $7c04: $fa $0b $d8
    ld bc, $2b27                                  ; $7c07: $01 $27 $2b
    call Call_001_7c29                            ; $7c0a: $cd $29 $7c
    ld a, [$d80c]                                 ; $7c0d: $fa $0c $d8
    ld bc, $2327                                  ; $7c10: $01 $27 $23
    call Call_001_7c29                            ; $7c13: $cd $29 $7c
    ld a, [$d809]                                 ; $7c16: $fa $09 $d8
    ld bc, $1527                                  ; $7c19: $01 $27 $15
    call Call_001_7c29                            ; $7c1c: $cd $29 $7c
    ld a, [$d80a]                                 ; $7c1f: $fa $0a $d8
    ld bc, $0d27                                  ; $7c22: $01 $27 $0d
    call Call_001_7c29                            ; $7c25: $cd $29 $7c
    ret                                           ; $7c28: $c9


Call_001_7c29:
    ld e, a                                       ; $7c29: $5f
    ld d, $00                                     ; $7c2a: $16 $00
    sla e                                         ; $7c2c: $cb $23
    rl d                                          ; $7c2e: $cb $12
    sla e                                         ; $7c30: $cb $23
    rl d                                          ; $7c32: $cb $12
    sla e                                         ; $7c34: $cb $23
    rl d                                          ; $7c36: $cb $12
    sla e                                         ; $7c38: $cb $23
    rl d                                          ; $7c3a: $cb $12
    ld hl, $5840                                  ; $7c3c: $21 $40 $58
    add hl, de                                    ; $7c3f: $19
    ld a, l                                       ; $7c40: $7d
    ld [$c355], a                                 ; $7c41: $ea $55 $c3
    ld a, h                                       ; $7c44: $7c
    ld [$c356], a                                 ; $7c45: $ea $56 $c3
    ld a, $06                                     ; $7c48: $3e $06
    ld [$c357], a                                 ; $7c4a: $ea $57 $c3
    ld a, b                                       ; $7c4d: $78
    ld [$c351], a                                 ; $7c4e: $ea $51 $c3
    add $07                                       ; $7c51: $c6 $07
    ld [$c353], a                                 ; $7c53: $ea $53 $c3
    ld a, c                                       ; $7c56: $79
    ld [$c352], a                                 ; $7c57: $ea $52 $c3
    add $07                                       ; $7c5a: $c6 $07
    ld [$c354], a                                 ; $7c5c: $ea $54 $c3
    jp Jump_000_08b3                              ; $7c5f: $c3 $b3 $08


    ld a, $a0                                     ; $7c62: $3e $a0
    ld [$c355], a                                 ; $7c64: $ea $55 $c3
    ld a, $5b                                     ; $7c67: $3e $5b
    ld [$c356], a                                 ; $7c69: $ea $56 $c3
    ld a, $06                                     ; $7c6c: $3e $06
    ld [$c357], a                                 ; $7c6e: $ea $57 $c3
    ld a, $08                                     ; $7c71: $3e $08
    ld [$c351], a                                 ; $7c73: $ea $51 $c3
    add $2f                                       ; $7c76: $c6 $2f
    ld [$c353], a                                 ; $7c78: $ea $53 $c3
    ld a, $26                                     ; $7c7b: $3e $26
    ld [$c352], a                                 ; $7c7d: $ea $52 $c3
    add $09                                       ; $7c80: $c6 $09
    ld [$c354], a                                 ; $7c82: $ea $54 $c3
    jp Jump_000_08b3                              ; $7c85: $c3 $b3 $08


Call_001_7c88:
    ld a, [$d811]                                 ; $7c88: $fa $11 $d8
    ld c, a                                       ; $7c8b: $4f
    ld a, [$d809]                                 ; $7c8c: $fa $09 $d8
    sub c                                         ; $7c8f: $91
    ld [$d809], a                                 ; $7c90: $ea $09 $d8
    bit 7, a                                      ; $7c93: $cb $7f
    jr z, jr_001_7cb9                             ; $7c95: $28 $22

    add $0a                                       ; $7c97: $c6 $0a
    ld [$d809], a                                 ; $7c99: $ea $09 $d8
    ld a, [$d80a]                                 ; $7c9c: $fa $0a $d8
    dec a                                         ; $7c9f: $3d
    ld [$d80a], a                                 ; $7ca0: $ea $0a $d8
    bit 7, a                                      ; $7ca3: $cb $7f
    jr z, jr_001_7cb9                             ; $7ca5: $28 $12

    xor a                                         ; $7ca7: $af
    ld [$d80b], a                                 ; $7ca8: $ea $0b $d8
    ld [$d80c], a                                 ; $7cab: $ea $0c $d8
    ld [$d809], a                                 ; $7cae: $ea $09 $d8
    ld [$d80a], a                                 ; $7cb1: $ea $0a $d8
    ld a, $32                                     ; $7cb4: $3e $32
    ld [$d80d], a                                 ; $7cb6: $ea $0d $d8

jr_001_7cb9:
    ld a, [$d811]                                 ; $7cb9: $fa $11 $d8
    cp $08                                        ; $7cbc: $fe $08
    jr z, jr_001_7cc5                             ; $7cbe: $28 $05

    sla a                                         ; $7cc0: $cb $27
    ld [$d811], a                                 ; $7cc2: $ea $11 $d8

jr_001_7cc5:
    jp Jump_001_7c04                              ; $7cc5: $c3 $04 $7c


Call_001_7cc8:
    ld a, [$d80d]                                 ; $7cc8: $fa $0d $d8
    cp $32                                        ; $7ccb: $fe $32
    ret c                                         ; $7ccd: $d8

    ld a, [$d80b]                                 ; $7cce: $fa $0b $d8
    ld hl, $d80c                                  ; $7cd1: $21 $0c $d8
    or [hl]                                       ; $7cd4: $b6
    ld hl, $d809                                  ; $7cd5: $21 $09 $d8
    or [hl]                                       ; $7cd8: $b6
    ld hl, $d80a                                  ; $7cd9: $21 $0a $d8
    or [hl]                                       ; $7cdc: $b6
    ret nz                                        ; $7cdd: $c0

    ld hl, $d806                                  ; $7cde: $21 $06 $d8
    inc [hl]                                      ; $7ce1: $34
    ret                                           ; $7ce2: $c9


Call_001_7ce3:
    ld a, [CurrentGridSize]                       ; $7ce3: $fa $00 $d8
    cp $05                                        ; $7ce6: $fe $05
    jp z, Jump_001_7cf3                           ; $7ce8: $ca $f3 $7c

    cp $0a                                        ; $7ceb: $fe $0a
    jp z, Jump_001_7d19                           ; $7ced: $ca $19 $7d

    jp Jump_001_7d4d                              ; $7cf0: $c3 $4d $7d


Jump_001_7cf3:
    ld a, $00                                     ; $7cf3: $3e $00
    ld [$c355], a                                 ; $7cf5: $ea $55 $c3
    ld a, $63                                     ; $7cf8: $3e $63
    ld [$c356], a                                 ; $7cfa: $ea $56 $c3
    ld a, $07                                     ; $7cfd: $3e $07
    ld [$c357], a                                 ; $7cff: $ea $57 $c3
    ld a, $3c                                     ; $7d02: $3e $3c
    ld [$c351], a                                 ; $7d04: $ea $51 $c3
    add $1a                                       ; $7d07: $c6 $1a
    ld [$c353], a                                 ; $7d09: $ea $53 $c3
    ld a, $3a                                     ; $7d0c: $3e $3a
    ld [$c352], a                                 ; $7d0e: $ea $52 $c3
    add $0f                                       ; $7d11: $c6 $0f
    ld [$c354], a                                 ; $7d13: $ea $54 $c3
    jp Jump_000_08b3                              ; $7d16: $c3 $b3 $08


Jump_001_7d19:
    ld a, $08                                     ; $7d19: $3e $08
    ld hl, $5c00                                  ; $7d1b: $21 $00 $5c
    ld de, $8800                                  ; $7d1e: $11 $00 $88
    ld bc, $0200                                  ; $7d21: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $7d24: $cd $38 $05
    ld a, $00                                     ; $7d27: $3e $00
    ld [$c355], a                                 ; $7d29: $ea $55 $c3
    ld a, $5b                                     ; $7d2c: $3e $5b
    ld [$c356], a                                 ; $7d2e: $ea $56 $c3
    ld a, $06                                     ; $7d31: $3e $06
    ld [$c357], a                                 ; $7d33: $ea $57 $c3
    ld a, $38                                     ; $7d36: $3e $38
    ld [$c351], a                                 ; $7d38: $ea $51 $c3
    add $3f                                       ; $7d3b: $c6 $3f
    ld [$c353], a                                 ; $7d3d: $ea $53 $c3
    ld a, $49                                     ; $7d40: $3e $49
    ld [$c352], a                                 ; $7d42: $ea $52 $c3
    add $0f                                       ; $7d45: $c6 $0f
    ld [$c354], a                                 ; $7d47: $ea $54 $c3
    jp Jump_000_08b3                              ; $7d4a: $c3 $b3 $08


Jump_001_7d4d:
    ld a, $06                                     ; $7d4d: $3e $06
    ld hl, $7400                                  ; $7d4f: $21 $00 $74
    ld de, $8800                                  ; $7d52: $11 $00 $88
    ld bc, $0200                                  ; $7d55: $01 $00 $02
    call BankedTileCopyVRAMSafe                   ; $7d58: $cd $38 $05
    ld a, $00                                     ; $7d5b: $3e $00
    ld [$c355], a                                 ; $7d5d: $ea $55 $c3
    ld a, $5b                                     ; $7d60: $3e $5b
    ld [$c356], a                                 ; $7d62: $ea $56 $c3
    ld a, $06                                     ; $7d65: $3e $06
    ld [$c357], a                                 ; $7d67: $ea $57 $c3
    ld a, $47                                     ; $7d6a: $3e $47
    ld [$c351], a                                 ; $7d6c: $ea $51 $c3
    add $3f                                       ; $7d6f: $c6 $3f
    ld [$c353], a                                 ; $7d71: $ea $53 $c3
    ld a, $57                                     ; $7d74: $3e $57
    ld [$c352], a                                 ; $7d76: $ea $52 $c3
    add $0f                                       ; $7d79: $c6 $0f
    ld [$c354], a                                 ; $7d7b: $ea $54 $c3
    jp Jump_000_08b3                              ; $7d7e: $c3 $b3 $08


Call_001_7d81:
    ld a, [$d826]                                 ; $7d81: $fa $26 $d8
    ld b, a                                       ; $7d84: $47
    ld a, [$d827]                                 ; $7d85: $fa $27 $d8
    ld c, a                                       ; $7d88: $4f
    ld a, [$d811]                                 ; $7d89: $fa $11 $d8
    cp $02                                        ; $7d8c: $fe $02
    jr nz, jr_001_7d94                            ; $7d8e: $20 $04

    ld a, $07                                     ; $7d90: $3e $07
    jr jr_001_7d9e                                ; $7d92: $18 $0a

jr_001_7d94:
    cp $04                                        ; $7d94: $fe $04
    jr nz, jr_001_7d9c                            ; $7d96: $20 $04

    ld a, $08                                     ; $7d98: $3e $08
    jr jr_001_7d9e                                ; $7d9a: $18 $02

jr_001_7d9c:
    ld a, $09                                     ; $7d9c: $3e $09

jr_001_7d9e:
    call Call_000_20ce                            ; $7d9e: $cd $ce $20
    ld a, [$c33a]                                 ; $7da1: $fa $3a $c3
    and $03                                       ; $7da4: $e6 $03
    jr nz, jr_001_7daf                            ; $7da6: $20 $07

    ld a, [$d827]                                 ; $7da8: $fa $27 $d8
    dec a                                         ; $7dab: $3d
    ld [$d827], a                                 ; $7dac: $ea $27 $d8

jr_001_7daf:
    ld a, [$c33a]                                 ; $7daf: $fa $3a $c3
    and $03                                       ; $7db2: $e6 $03
    ret nz                                        ; $7db4: $c0

    ld a, [$c33a]                                 ; $7db5: $fa $3a $c3
    bit 2, a                                      ; $7db8: $cb $57
    jr nz, jr_001_7dc4                            ; $7dba: $20 $08

    ld a, [$d826]                                 ; $7dbc: $fa $26 $d8
    inc a                                         ; $7dbf: $3c
    ld [$d826], a                                 ; $7dc0: $ea $26 $d8
    ret                                           ; $7dc3: $c9


jr_001_7dc4:
    ld a, [$d826]                                 ; $7dc4: $fa $26 $d8
    ld [$d826], a                                 ; $7dc7: $ea $26 $d8
    ret                                           ; $7dca: $c9


Call_001_7dcb:
    ld hl, $d640                                  ; $7dcb: $21 $40 $d6
    ld bc, $0100                                  ; $7dce: $01 $00 $01
    ld e, $00                                     ; $7dd1: $1e $00

jr_001_7dd3:
    ld a, [hl+]                                   ; $7dd3: $2a
    bit 0, a                                      ; $7dd4: $cb $47
    jr z, jr_001_7dd9                             ; $7dd6: $28 $01

    inc e                                         ; $7dd8: $1c

jr_001_7dd9:
    dec bc                                        ; $7dd9: $0b
    ld a, c                                       ; $7dda: $79
    or b                                          ; $7ddb: $b0
    jr nz, jr_001_7dd3                            ; $7ddc: $20 $f5

    ld hl, $d640                                  ; $7dde: $21 $40 $d6
    ld bc, $0100                                  ; $7de1: $01 $00 $01
    ld d, e                                       ; $7de4: $53

jr_001_7de5:
    ld a, [hl+]                                   ; $7de5: $2a
    bit 1, a                                      ; $7de6: $cb $4f
    jr z, jr_001_7df0                             ; $7de8: $28 $06

    dec e                                         ; $7dea: $1d
    bit 0, a                                      ; $7deb: $cb $47
    jr z, jr_001_7df0                             ; $7ded: $28 $01

    dec d                                         ; $7def: $15

jr_001_7df0:
    dec bc                                        ; $7df0: $0b
    ld a, c                                       ; $7df1: $79
    or b                                          ; $7df2: $b0
    jr nz, jr_001_7de5                            ; $7df3: $20 $f0

    ld a, e                                       ; $7df5: $7b
    ld [$d803], a                                 ; $7df6: $ea $03 $d8
    ld a, d                                       ; $7df9: $7a
    ld [$d802], a                                 ; $7dfa: $ea $02 $d8
    ret                                           ; $7dfd: $c9


Call_001_7dfe:
    ld a, [$a065]                                 ; $7dfe: $fa $65 $a0
    ld c, a                                       ; $7e01: $4f
    ld b, $00                                     ; $7e02: $06 $00
    ld hl, $a38d                                  ; $7e04: $21 $8d $a3
    add hl, bc                                    ; $7e07: $09
    ld a, [$a065]                                 ; $7e08: $fa $65 $a0
    ld c, a                                       ; $7e0b: $4f
    sla a                                         ; $7e0c: $cb $27
    sla a                                         ; $7e0e: $cb $27
    add c                                         ; $7e10: $81
    add [hl]                                      ; $7e11: $86
    ld c, a                                       ; $7e12: $4f
    ld hl, $a06a                                  ; $7e13: $21 $6a $a0
    add hl, bc                                    ; $7e16: $09
    ld c, [hl]                                    ; $7e17: $4e
    ld hl, $7e2d                                  ; $7e18: $21 $2d $7e
    add hl, bc                                    ; $7e1b: $09
    ld c, $00                                     ; $7e1c: $0e $00
    ld a, $01                                     ; $7e1e: $3e $01
    call Call_000_03b6                            ; $7e20: $cd $b6 $03
    call Call_000_0399                            ; $7e23: $cd $99 $03
    ld c, [hl]                                    ; $7e26: $4e
    ld a, $01                                     ; $7e27: $3e $01
    call Call_000_03b6                            ; $7e29: $cd $b6 $03
    ret                                           ; $7e2c: $c9


    dec b                                         ; $7e2d: $05
    ld bc, $030b                                  ; $7e2e: $01 $0b $03
    ld [bc], a                                    ; $7e31: $02
    nop                                           ; $7e32: $00

Call_001_7e33:
    ld hl, $d81c                                  ; $7e33: $21 $1c $d8
    inc [hl]                                      ; $7e36: $34
    ld a, [$d80a]                                 ; $7e37: $fa $0a $d8
    and a                                         ; $7e3a: $a7
    ret nz                                        ; $7e3b: $c0

    ld a, [$d809]                                 ; $7e3c: $fa $09 $d8
    cp $02                                        ; $7e3f: $fe $02
    jr z, jr_001_7e4b                             ; $7e41: $28 $08

    cp $01                                        ; $7e43: $fe $01
    jr z, jr_001_7e57                             ; $7e45: $28 $10

    and a                                         ; $7e47: $a7
    jr z, jr_001_7e63                             ; $7e48: $28 $19

    ret                                           ; $7e4a: $c9


jr_001_7e4b:
    ld a, [hl]                                    ; $7e4b: $7e
    cp $3c                                        ; $7e4c: $fe $3c
    jr c, jr_001_7e52                             ; $7e4e: $38 $02

    xor a                                         ; $7e50: $af
    ld [hl], a                                    ; $7e51: $77

jr_001_7e52:
    cp $08                                        ; $7e52: $fe $08
    jr c, jr_001_7e6f                             ; $7e54: $38 $19

    ret                                           ; $7e56: $c9


jr_001_7e57:
    ld a, [hl]                                    ; $7e57: $7e
    cp $1e                                        ; $7e58: $fe $1e
    jr c, jr_001_7e5e                             ; $7e5a: $38 $02

    xor a                                         ; $7e5c: $af
    ld [hl], a                                    ; $7e5d: $77

jr_001_7e5e:
    cp $08                                        ; $7e5e: $fe $08
    jr c, jr_001_7e6f                             ; $7e60: $38 $0d

    ret                                           ; $7e62: $c9


jr_001_7e63:
    ld a, [hl]                                    ; $7e63: $7e
    cp $0f                                        ; $7e64: $fe $0f
    jr c, jr_001_7e6a                             ; $7e66: $38 $02

    xor a                                         ; $7e68: $af
    ld [hl], a                                    ; $7e69: $77

jr_001_7e6a:
    cp $08                                        ; $7e6a: $fe $08
    jr c, jr_001_7e6f                             ; $7e6c: $38 $01

    ret                                           ; $7e6e: $c9


jr_001_7e6f:
    ld bc, $2e0c                                  ; $7e6f: $01 $0c $2e
    ld a, $0a                                     ; $7e72: $3e $0a
    jp Jump_000_20ce                              ; $7e74: $c3 $ce $20


Call_001_7e77:
    ld a, [$d81d]                                 ; $7e77: $fa $1d $d8
    and a                                         ; $7e7a: $a7
    ret nz                                        ; $7e7b: $c0

    ld a, [$d80a]                                 ; $7e7c: $fa $0a $d8
    and a                                         ; $7e7f: $a7
    ret nz                                        ; $7e80: $c0

    ld a, [$d809]                                 ; $7e81: $fa $09 $d8
    cp $03                                        ; $7e84: $fe $03
    ret nc                                        ; $7e86: $d0

    ld a, $01                                     ; $7e87: $3e $01
    ld [$d81d], a                                 ; $7e89: $ea $1d $d8
    ld a, [CurrentGridSize]                       ; $7e8c: $fa $00 $d8
    cp $05                                        ; $7e8f: $fe $05
    jr nz, jr_001_7e95                            ; $7e91: $20 $02

    jr jr_001_7f0b                                ; $7e93: $18 $76

jr_001_7e95:
    cp $0a                                        ; $7e95: $fe $0a
    jr nz, jr_001_7ed3                            ; $7e97: $20 $3a

    ld a, $08                                     ; $7e99: $3e $08
    ld hl, $58b0                                  ; $7e9b: $21 $b0 $58
    ld de, $88b0                                  ; $7e9e: $11 $b0 $88
    ld bc, $0020                                  ; $7ea1: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7ea4: $cd $38 $05
    ld a, $08                                     ; $7ea7: $3e $08
    ld hl, $5900                                  ; $7ea9: $21 $00 $59
    ld de, $8900                                  ; $7eac: $11 $00 $89
    ld bc, $0020                                  ; $7eaf: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7eb2: $cd $38 $05
    ld a, $08                                     ; $7eb5: $3e $08
    ld hl, $5960                                  ; $7eb7: $21 $60 $59
    ld de, $8960                                  ; $7eba: $11 $60 $89
    ld bc, $0020                                  ; $7ebd: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7ec0: $cd $38 $05
    ld a, $08                                     ; $7ec3: $3e $08
    ld hl, $59c0                                  ; $7ec5: $21 $c0 $59
    ld de, $89c0                                  ; $7ec8: $11 $c0 $89
    ld bc, $0020                                  ; $7ecb: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7ece: $cd $38 $05
    jr jr_001_7f0b                                ; $7ed1: $18 $38

jr_001_7ed3:
    ld a, $06                                     ; $7ed3: $3e $06
    ld hl, $70b0                                  ; $7ed5: $21 $b0 $70
    ld de, $88b0                                  ; $7ed8: $11 $b0 $88
    ld bc, $0020                                  ; $7edb: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7ede: $cd $38 $05
    ld a, $06                                     ; $7ee1: $3e $06
    ld hl, $7100                                  ; $7ee3: $21 $00 $71
    ld de, $8900                                  ; $7ee6: $11 $00 $89
    ld bc, $0020                                  ; $7ee9: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7eec: $cd $38 $05
    ld a, $06                                     ; $7eef: $3e $06
    ld hl, $7160                                  ; $7ef1: $21 $60 $71
    ld de, $8960                                  ; $7ef4: $11 $60 $89
    ld bc, $0020                                  ; $7ef7: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7efa: $cd $38 $05
    ld a, $06                                     ; $7efd: $3e $06
    ld hl, $71c0                                  ; $7eff: $21 $c0 $71
    ld de, $89c0                                  ; $7f02: $11 $c0 $89
    ld bc, $0020                                  ; $7f05: $01 $20 $00
    call BankedTileCopyVRAMSafe                   ; $7f08: $cd $38 $05

jr_001_7f0b:
    ret                                           ; $7f0b: $c9


    ; padding
    ds $f4, $00
