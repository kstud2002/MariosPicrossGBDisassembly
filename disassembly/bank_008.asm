; Disassembly of "Mario's Picross (USA, Europe) (SGB Enhanced).gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    ccf                                           ; $4000: $3f
    nop                                           ; $4001: $00
    ccf                                           ; $4002: $3f
    nop                                           ; $4003: $00
    ccf                                           ; $4004: $3f
    nop                                           ; $4005: $00
    ccf                                           ; $4006: $3f
    nop                                           ; $4007: $00
    ccf                                           ; $4008: $3f
    nop                                           ; $4009: $00
    ccf                                           ; $400a: $3f
    nop                                           ; $400b: $00
    ccf                                           ; $400c: $3f
    nop                                           ; $400d: $00
    ccf                                           ; $400e: $3f
    nop                                           ; $400f: $00
    inc bc                                        ; $4010: $03
    nop                                           ; $4011: $00
    inc bc                                        ; $4012: $03
    nop                                           ; $4013: $00
    inc bc                                        ; $4014: $03
    nop                                           ; $4015: $00
    inc bc                                        ; $4016: $03
    nop                                           ; $4017: $00
    inc bc                                        ; $4018: $03
    nop                                           ; $4019: $00
    inc bc                                        ; $401a: $03
    nop                                           ; $401b: $00
    inc bc                                        ; $401c: $03
    nop                                           ; $401d: $00
    inc bc                                        ; $401e: $03
    nop                                           ; $401f: $00
    ldh a, [rP1]                                  ; $4020: $f0 $00
    ldh a, [rP1]                                  ; $4022: $f0 $00
    ldh a, [rP1]                                  ; $4024: $f0 $00
    ldh a, [rP1]                                  ; $4026: $f0 $00
    ldh a, [rP1]                                  ; $4028: $f0 $00
    ldh a, [rP1]                                  ; $402a: $f0 $00
    ldh a, [rP1]                                  ; $402c: $f0 $00
    ldh a, [rP1]                                  ; $402e: $f0 $00
    ccf                                           ; $4030: $3f
    nop                                           ; $4031: $00
    ccf                                           ; $4032: $3f
    nop                                           ; $4033: $00
    ccf                                           ; $4034: $3f
    nop                                           ; $4035: $00
    ccf                                           ; $4036: $3f
    nop                                           ; $4037: $00
    ccf                                           ; $4038: $3f
    nop                                           ; $4039: $00
    ccf                                           ; $403a: $3f
    nop                                           ; $403b: $00
    ccf                                           ; $403c: $3f
    nop                                           ; $403d: $00
    ccf                                           ; $403e: $3f
    nop                                           ; $403f: $00
    inc bc                                        ; $4040: $03
    nop                                           ; $4041: $00
    inc bc                                        ; $4042: $03
    nop                                           ; $4043: $00
    inc bc                                        ; $4044: $03
    nop                                           ; $4045: $00
    inc bc                                        ; $4046: $03
    nop                                           ; $4047: $00
    inc bc                                        ; $4048: $03
    nop                                           ; $4049: $00
    inc bc                                        ; $404a: $03
    nop                                           ; $404b: $00
    inc bc                                        ; $404c: $03
    nop                                           ; $404d: $00
    inc bc                                        ; $404e: $03
    nop                                           ; $404f: $00
    ldh a, [rP1]                                  ; $4050: $f0 $00
    ldh a, [rP1]                                  ; $4052: $f0 $00
    ldh a, [rP1]                                  ; $4054: $f0 $00
    ldh a, [rP1]                                  ; $4056: $f0 $00
    ldh a, [rP1]                                  ; $4058: $f0 $00
    ldh a, [rP1]                                  ; $405a: $f0 $00
    ldh a, [rP1]                                  ; $405c: $f0 $00
    ldh a, [rP1]                                  ; $405e: $f0 $00
    ccf                                           ; $4060: $3f
    nop                                           ; $4061: $00
    ccf                                           ; $4062: $3f
    nop                                           ; $4063: $00
    ccf                                           ; $4064: $3f
    nop                                           ; $4065: $00
    ccf                                           ; $4066: $3f
    nop                                           ; $4067: $00
    ccf                                           ; $4068: $3f
    nop                                           ; $4069: $00
    ccf                                           ; $406a: $3f
    nop                                           ; $406b: $00
    ccf                                           ; $406c: $3f
    nop                                           ; $406d: $00
    ccf                                           ; $406e: $3f
    nop                                           ; $406f: $00
    nop                                           ; $4070: $00
    nop                                           ; $4071: $00
    nop                                           ; $4072: $00
    nop                                           ; $4073: $00
    nop                                           ; $4074: $00
    nop                                           ; $4075: $00
    nop                                           ; $4076: $00
    nop                                           ; $4077: $00
    nop                                           ; $4078: $00
    nop                                           ; $4079: $00
    nop                                           ; $407a: $00
    nop                                           ; $407b: $00
    nop                                           ; $407c: $00
    nop                                           ; $407d: $00
    nop                                           ; $407e: $00
    nop                                           ; $407f: $00
    nop                                           ; $4080: $00
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00
    nop                                           ; $4083: $00
    nop                                           ; $4084: $00
    nop                                           ; $4085: $00
    nop                                           ; $4086: $00
    nop                                           ; $4087: $00
    nop                                           ; $4088: $00
    nop                                           ; $4089: $00
    nop                                           ; $408a: $00
    nop                                           ; $408b: $00
    nop                                           ; $408c: $00
    nop                                           ; $408d: $00
    nop                                           ; $408e: $00
    nop                                           ; $408f: $00
    nop                                           ; $4090: $00
    nop                                           ; $4091: $00
    nop                                           ; $4092: $00
    nop                                           ; $4093: $00
    nop                                           ; $4094: $00
    nop                                           ; $4095: $00
    nop                                           ; $4096: $00
    nop                                           ; $4097: $00
    nop                                           ; $4098: $00
    nop                                           ; $4099: $00
    nop                                           ; $409a: $00
    nop                                           ; $409b: $00
    nop                                           ; $409c: $00
    nop                                           ; $409d: $00
    nop                                           ; $409e: $00
    nop                                           ; $409f: $00
    nop                                           ; $40a0: $00
    nop                                           ; $40a1: $00
    nop                                           ; $40a2: $00
    nop                                           ; $40a3: $00
    nop                                           ; $40a4: $00
    nop                                           ; $40a5: $00
    nop                                           ; $40a6: $00
    nop                                           ; $40a7: $00
    nop                                           ; $40a8: $00
    nop                                           ; $40a9: $00
    nop                                           ; $40aa: $00
    nop                                           ; $40ab: $00
    nop                                           ; $40ac: $00
    nop                                           ; $40ad: $00
    nop                                           ; $40ae: $00
    nop                                           ; $40af: $00
    nop                                           ; $40b0: $00
    nop                                           ; $40b1: $00
    nop                                           ; $40b2: $00
    nop                                           ; $40b3: $00
    nop                                           ; $40b4: $00
    nop                                           ; $40b5: $00
    nop                                           ; $40b6: $00
    nop                                           ; $40b7: $00
    nop                                           ; $40b8: $00
    nop                                           ; $40b9: $00
    nop                                           ; $40ba: $00
    nop                                           ; $40bb: $00
    nop                                           ; $40bc: $00
    nop                                           ; $40bd: $00
    nop                                           ; $40be: $00
    nop                                           ; $40bf: $00
    nop                                           ; $40c0: $00
    nop                                           ; $40c1: $00
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
    ccf                                           ; $4100: $3f
    nop                                           ; $4101: $00
    ccf                                           ; $4102: $3f
    nop                                           ; $4103: $00
    ccf                                           ; $4104: $3f
    nop                                           ; $4105: $00
    ccf                                           ; $4106: $3f
    nop                                           ; $4107: $00
    ccf                                           ; $4108: $3f
    nop                                           ; $4109: $00
    ccf                                           ; $410a: $3f
    nop                                           ; $410b: $00
    ccf                                           ; $410c: $3f
    nop                                           ; $410d: $00
    ccf                                           ; $410e: $3f
    nop                                           ; $410f: $00
    inc bc                                        ; $4110: $03
    nop                                           ; $4111: $00
    inc bc                                        ; $4112: $03
    nop                                           ; $4113: $00
    inc bc                                        ; $4114: $03
    nop                                           ; $4115: $00
    inc bc                                        ; $4116: $03
    nop                                           ; $4117: $00
    inc bc                                        ; $4118: $03
    nop                                           ; $4119: $00
    inc bc                                        ; $411a: $03
    nop                                           ; $411b: $00
    inc bc                                        ; $411c: $03
    nop                                           ; $411d: $00
    inc bc                                        ; $411e: $03
    nop                                           ; $411f: $00
    ldh a, [rP1]                                  ; $4120: $f0 $00
    ldh a, [rP1]                                  ; $4122: $f0 $00
    ldh a, [rP1]                                  ; $4124: $f0 $00
    ldh a, [rP1]                                  ; $4126: $f0 $00
    ldh a, [rP1]                                  ; $4128: $f0 $00
    ldh a, [rP1]                                  ; $412a: $f0 $00
    ldh a, [rP1]                                  ; $412c: $f0 $00
    ldh a, [rP1]                                  ; $412e: $f0 $00
    ccf                                           ; $4130: $3f
    nop                                           ; $4131: $00
    ccf                                           ; $4132: $3f
    nop                                           ; $4133: $00
    ccf                                           ; $4134: $3f
    nop                                           ; $4135: $00
    ccf                                           ; $4136: $3f
    nop                                           ; $4137: $00
    ccf                                           ; $4138: $3f
    nop                                           ; $4139: $00
    ccf                                           ; $413a: $3f
    nop                                           ; $413b: $00
    ccf                                           ; $413c: $3f
    nop                                           ; $413d: $00
    ccf                                           ; $413e: $3f
    nop                                           ; $413f: $00
    inc bc                                        ; $4140: $03
    nop                                           ; $4141: $00
    inc bc                                        ; $4142: $03
    nop                                           ; $4143: $00
    inc bc                                        ; $4144: $03
    nop                                           ; $4145: $00
    inc bc                                        ; $4146: $03
    nop                                           ; $4147: $00
    inc bc                                        ; $4148: $03
    nop                                           ; $4149: $00
    inc bc                                        ; $414a: $03
    nop                                           ; $414b: $00
    inc bc                                        ; $414c: $03
    nop                                           ; $414d: $00
    inc bc                                        ; $414e: $03
    nop                                           ; $414f: $00
    ldh a, [rP1]                                  ; $4150: $f0 $00
    ldh a, [rP1]                                  ; $4152: $f0 $00
    ldh a, [rP1]                                  ; $4154: $f0 $00
    ldh a, [rP1]                                  ; $4156: $f0 $00
    ldh a, [rP1]                                  ; $4158: $f0 $00
    ldh a, [rP1]                                  ; $415a: $f0 $00
    ldh a, [rP1]                                  ; $415c: $f0 $00
    ldh a, [rP1]                                  ; $415e: $f0 $00
    ccf                                           ; $4160: $3f
    nop                                           ; $4161: $00
    ccf                                           ; $4162: $3f
    nop                                           ; $4163: $00
    ccf                                           ; $4164: $3f
    nop                                           ; $4165: $00
    ccf                                           ; $4166: $3f
    nop                                           ; $4167: $00
    ccf                                           ; $4168: $3f
    nop                                           ; $4169: $00
    ccf                                           ; $416a: $3f
    nop                                           ; $416b: $00
    ccf                                           ; $416c: $3f
    nop                                           ; $416d: $00
    ccf                                           ; $416e: $3f
    nop                                           ; $416f: $00
    nop                                           ; $4170: $00
    nop                                           ; $4171: $00
    nop                                           ; $4172: $00
    nop                                           ; $4173: $00
    nop                                           ; $4174: $00
    nop                                           ; $4175: $00
    nop                                           ; $4176: $00
    nop                                           ; $4177: $00
    nop                                           ; $4178: $00
    nop                                           ; $4179: $00
    nop                                           ; $417a: $00
    nop                                           ; $417b: $00
    nop                                           ; $417c: $00
    nop                                           ; $417d: $00
    nop                                           ; $417e: $00
    nop                                           ; $417f: $00
    nop                                           ; $4180: $00
    nop                                           ; $4181: $00
    nop                                           ; $4182: $00
    nop                                           ; $4183: $00
    nop                                           ; $4184: $00
    nop                                           ; $4185: $00
    nop                                           ; $4186: $00
    nop                                           ; $4187: $00
    nop                                           ; $4188: $00
    nop                                           ; $4189: $00
    nop                                           ; $418a: $00
    nop                                           ; $418b: $00
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
    nop                                           ; $4198: $00
    nop                                           ; $4199: $00
    nop                                           ; $419a: $00
    nop                                           ; $419b: $00
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
    nop                                           ; $41a8: $00
    nop                                           ; $41a9: $00
    nop                                           ; $41aa: $00
    nop                                           ; $41ab: $00
    nop                                           ; $41ac: $00
    nop                                           ; $41ad: $00
    nop                                           ; $41ae: $00
    nop                                           ; $41af: $00
    nop                                           ; $41b0: $00
    nop                                           ; $41b1: $00
    nop                                           ; $41b2: $00
    nop                                           ; $41b3: $00
    nop                                           ; $41b4: $00
    nop                                           ; $41b5: $00
    nop                                           ; $41b6: $00
    nop                                           ; $41b7: $00
    nop                                           ; $41b8: $00
    nop                                           ; $41b9: $00
    nop                                           ; $41ba: $00
    nop                                           ; $41bb: $00
    nop                                           ; $41bc: $00
    nop                                           ; $41bd: $00
    nop                                           ; $41be: $00
    nop                                           ; $41bf: $00
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
    nop                                           ; $41cd: $00
    nop                                           ; $41ce: $00
    nop                                           ; $41cf: $00
    nop                                           ; $41d0: $00
    nop                                           ; $41d1: $00
    nop                                           ; $41d2: $00
    nop                                           ; $41d3: $00
    nop                                           ; $41d4: $00
    nop                                           ; $41d5: $00
    nop                                           ; $41d6: $00
    nop                                           ; $41d7: $00
    nop                                           ; $41d8: $00
    nop                                           ; $41d9: $00
    nop                                           ; $41da: $00
    nop                                           ; $41db: $00
    nop                                           ; $41dc: $00
    nop                                           ; $41dd: $00
    nop                                           ; $41de: $00
    nop                                           ; $41df: $00
    nop                                           ; $41e0: $00
    nop                                           ; $41e1: $00
    nop                                           ; $41e2: $00
    nop                                           ; $41e3: $00
    nop                                           ; $41e4: $00
    nop                                           ; $41e5: $00
    nop                                           ; $41e6: $00
    nop                                           ; $41e7: $00
    nop                                           ; $41e8: $00
    nop                                           ; $41e9: $00
    nop                                           ; $41ea: $00
    nop                                           ; $41eb: $00
    nop                                           ; $41ec: $00
    nop                                           ; $41ed: $00
    nop                                           ; $41ee: $00
    nop                                           ; $41ef: $00
    nop                                           ; $41f0: $00
    nop                                           ; $41f1: $00
    nop                                           ; $41f2: $00
    nop                                           ; $41f3: $00
    nop                                           ; $41f4: $00
    nop                                           ; $41f5: $00
    nop                                           ; $41f6: $00
    nop                                           ; $41f7: $00
    nop                                           ; $41f8: $00
    nop                                           ; $41f9: $00
    nop                                           ; $41fa: $00
    nop                                           ; $41fb: $00
    nop                                           ; $41fc: $00
    nop                                           ; $41fd: $00
    nop                                           ; $41fe: $00
    nop                                           ; $41ff: $00
    ccf                                           ; $4200: $3f
    nop                                           ; $4201: $00
    ccf                                           ; $4202: $3f
    nop                                           ; $4203: $00
    ccf                                           ; $4204: $3f
    nop                                           ; $4205: $00
    ccf                                           ; $4206: $3f
    nop                                           ; $4207: $00
    ccf                                           ; $4208: $3f
    nop                                           ; $4209: $00
    ccf                                           ; $420a: $3f
    nop                                           ; $420b: $00
    ccf                                           ; $420c: $3f
    nop                                           ; $420d: $00
    ccf                                           ; $420e: $3f
    nop                                           ; $420f: $00
    inc bc                                        ; $4210: $03
    nop                                           ; $4211: $00
    inc bc                                        ; $4212: $03
    nop                                           ; $4213: $00
    inc bc                                        ; $4214: $03
    nop                                           ; $4215: $00
    inc bc                                        ; $4216: $03
    nop                                           ; $4217: $00
    inc bc                                        ; $4218: $03
    nop                                           ; $4219: $00
    inc bc                                        ; $421a: $03
    nop                                           ; $421b: $00
    inc bc                                        ; $421c: $03
    nop                                           ; $421d: $00
    inc bc                                        ; $421e: $03
    nop                                           ; $421f: $00
    ldh a, [rP1]                                  ; $4220: $f0 $00
    ldh a, [rP1]                                  ; $4222: $f0 $00
    ldh a, [rP1]                                  ; $4224: $f0 $00
    ldh a, [rP1]                                  ; $4226: $f0 $00
    ldh a, [rP1]                                  ; $4228: $f0 $00
    ldh a, [rP1]                                  ; $422a: $f0 $00
    ldh a, [rP1]                                  ; $422c: $f0 $00
    ldh a, [rP1]                                  ; $422e: $f0 $00
    ccf                                           ; $4230: $3f
    nop                                           ; $4231: $00
    ccf                                           ; $4232: $3f
    nop                                           ; $4233: $00
    ccf                                           ; $4234: $3f
    nop                                           ; $4235: $00
    ccf                                           ; $4236: $3f
    nop                                           ; $4237: $00
    ccf                                           ; $4238: $3f
    nop                                           ; $4239: $00
    ccf                                           ; $423a: $3f
    nop                                           ; $423b: $00
    ccf                                           ; $423c: $3f
    nop                                           ; $423d: $00
    ccf                                           ; $423e: $3f
    nop                                           ; $423f: $00
    inc bc                                        ; $4240: $03
    nop                                           ; $4241: $00
    inc bc                                        ; $4242: $03
    nop                                           ; $4243: $00
    inc bc                                        ; $4244: $03
    nop                                           ; $4245: $00
    inc bc                                        ; $4246: $03
    nop                                           ; $4247: $00
    inc bc                                        ; $4248: $03
    nop                                           ; $4249: $00
    inc bc                                        ; $424a: $03
    nop                                           ; $424b: $00
    inc bc                                        ; $424c: $03
    nop                                           ; $424d: $00
    inc bc                                        ; $424e: $03
    nop                                           ; $424f: $00
    ldh a, [rP1]                                  ; $4250: $f0 $00
    ldh a, [rP1]                                  ; $4252: $f0 $00
    ldh a, [rP1]                                  ; $4254: $f0 $00
    ldh a, [rP1]                                  ; $4256: $f0 $00
    ldh a, [rP1]                                  ; $4258: $f0 $00
    ldh a, [rP1]                                  ; $425a: $f0 $00
    ldh a, [rP1]                                  ; $425c: $f0 $00
    ldh a, [rP1]                                  ; $425e: $f0 $00
    ccf                                           ; $4260: $3f
    nop                                           ; $4261: $00
    ccf                                           ; $4262: $3f
    nop                                           ; $4263: $00
    ccf                                           ; $4264: $3f
    nop                                           ; $4265: $00
    ccf                                           ; $4266: $3f
    nop                                           ; $4267: $00
    ccf                                           ; $4268: $3f
    nop                                           ; $4269: $00
    ccf                                           ; $426a: $3f
    nop                                           ; $426b: $00
    ccf                                           ; $426c: $3f
    nop                                           ; $426d: $00
    ccf                                           ; $426e: $3f
    nop                                           ; $426f: $00
    nop                                           ; $4270: $00
    nop                                           ; $4271: $00
    nop                                           ; $4272: $00
    nop                                           ; $4273: $00
    nop                                           ; $4274: $00
    nop                                           ; $4275: $00
    nop                                           ; $4276: $00
    nop                                           ; $4277: $00
    nop                                           ; $4278: $00
    nop                                           ; $4279: $00
    nop                                           ; $427a: $00
    nop                                           ; $427b: $00
    nop                                           ; $427c: $00
    nop                                           ; $427d: $00
    nop                                           ; $427e: $00
    nop                                           ; $427f: $00
    nop                                           ; $4280: $00
    nop                                           ; $4281: $00
    nop                                           ; $4282: $00
    nop                                           ; $4283: $00
    nop                                           ; $4284: $00
    nop                                           ; $4285: $00
    nop                                           ; $4286: $00
    nop                                           ; $4287: $00
    nop                                           ; $4288: $00
    nop                                           ; $4289: $00
    nop                                           ; $428a: $00
    nop                                           ; $428b: $00
    nop                                           ; $428c: $00
    nop                                           ; $428d: $00
    nop                                           ; $428e: $00
    nop                                           ; $428f: $00
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    nop                                           ; $4292: $00
    nop                                           ; $4293: $00
    nop                                           ; $4294: $00
    nop                                           ; $4295: $00
    nop                                           ; $4296: $00
    nop                                           ; $4297: $00
    nop                                           ; $4298: $00
    nop                                           ; $4299: $00
    nop                                           ; $429a: $00
    nop                                           ; $429b: $00
    nop                                           ; $429c: $00
    nop                                           ; $429d: $00
    nop                                           ; $429e: $00
    nop                                           ; $429f: $00
    nop                                           ; $42a0: $00
    nop                                           ; $42a1: $00
    nop                                           ; $42a2: $00
    nop                                           ; $42a3: $00
    nop                                           ; $42a4: $00
    nop                                           ; $42a5: $00
    nop                                           ; $42a6: $00
    nop                                           ; $42a7: $00
    nop                                           ; $42a8: $00
    nop                                           ; $42a9: $00
    nop                                           ; $42aa: $00
    nop                                           ; $42ab: $00
    nop                                           ; $42ac: $00
    nop                                           ; $42ad: $00
    nop                                           ; $42ae: $00
    nop                                           ; $42af: $00
    nop                                           ; $42b0: $00
    nop                                           ; $42b1: $00
    nop                                           ; $42b2: $00
    nop                                           ; $42b3: $00
    nop                                           ; $42b4: $00
    nop                                           ; $42b5: $00
    nop                                           ; $42b6: $00
    nop                                           ; $42b7: $00
    nop                                           ; $42b8: $00
    nop                                           ; $42b9: $00
    nop                                           ; $42ba: $00
    nop                                           ; $42bb: $00
    nop                                           ; $42bc: $00
    nop                                           ; $42bd: $00
    nop                                           ; $42be: $00
    nop                                           ; $42bf: $00
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
    nop                                           ; $42d0: $00
    nop                                           ; $42d1: $00
    nop                                           ; $42d2: $00
    nop                                           ; $42d3: $00
    nop                                           ; $42d4: $00
    nop                                           ; $42d5: $00
    nop                                           ; $42d6: $00
    nop                                           ; $42d7: $00
    nop                                           ; $42d8: $00
    nop                                           ; $42d9: $00
    nop                                           ; $42da: $00
    nop                                           ; $42db: $00
    nop                                           ; $42dc: $00
    nop                                           ; $42dd: $00
    nop                                           ; $42de: $00
    nop                                           ; $42df: $00
    nop                                           ; $42e0: $00
    nop                                           ; $42e1: $00
    nop                                           ; $42e2: $00
    nop                                           ; $42e3: $00
    nop                                           ; $42e4: $00
    nop                                           ; $42e5: $00
    nop                                           ; $42e6: $00
    nop                                           ; $42e7: $00
    nop                                           ; $42e8: $00
    nop                                           ; $42e9: $00
    nop                                           ; $42ea: $00
    nop                                           ; $42eb: $00
    nop                                           ; $42ec: $00
    nop                                           ; $42ed: $00
    nop                                           ; $42ee: $00
    nop                                           ; $42ef: $00
    nop                                           ; $42f0: $00
    nop                                           ; $42f1: $00
    nop                                           ; $42f2: $00
    nop                                           ; $42f3: $00
    nop                                           ; $42f4: $00
    nop                                           ; $42f5: $00
    nop                                           ; $42f6: $00
    nop                                           ; $42f7: $00
    nop                                           ; $42f8: $00
    nop                                           ; $42f9: $00
    nop                                           ; $42fa: $00
    nop                                           ; $42fb: $00
    nop                                           ; $42fc: $00
    nop                                           ; $42fd: $00
    nop                                           ; $42fe: $00
    nop                                           ; $42ff: $00
    ccf                                           ; $4300: $3f
    nop                                           ; $4301: $00
    ccf                                           ; $4302: $3f
    nop                                           ; $4303: $00
    ccf                                           ; $4304: $3f
    nop                                           ; $4305: $00
    ccf                                           ; $4306: $3f
    nop                                           ; $4307: $00
    ccf                                           ; $4308: $3f
    nop                                           ; $4309: $00
    ccf                                           ; $430a: $3f
    nop                                           ; $430b: $00
    ccf                                           ; $430c: $3f
    nop                                           ; $430d: $00
    ccf                                           ; $430e: $3f
    nop                                           ; $430f: $00
    inc bc                                        ; $4310: $03
    nop                                           ; $4311: $00
    inc bc                                        ; $4312: $03
    nop                                           ; $4313: $00
    inc bc                                        ; $4314: $03
    nop                                           ; $4315: $00
    inc bc                                        ; $4316: $03
    nop                                           ; $4317: $00
    inc bc                                        ; $4318: $03
    nop                                           ; $4319: $00
    inc bc                                        ; $431a: $03
    nop                                           ; $431b: $00
    inc bc                                        ; $431c: $03
    nop                                           ; $431d: $00
    inc bc                                        ; $431e: $03
    nop                                           ; $431f: $00
    ldh a, [rP1]                                  ; $4320: $f0 $00
    ldh a, [rP1]                                  ; $4322: $f0 $00
    ldh a, [rP1]                                  ; $4324: $f0 $00
    ldh a, [rP1]                                  ; $4326: $f0 $00
    ldh a, [rP1]                                  ; $4328: $f0 $00
    ldh a, [rP1]                                  ; $432a: $f0 $00
    ldh a, [rP1]                                  ; $432c: $f0 $00
    ldh a, [rP1]                                  ; $432e: $f0 $00
    ccf                                           ; $4330: $3f
    nop                                           ; $4331: $00
    ccf                                           ; $4332: $3f
    nop                                           ; $4333: $00
    ccf                                           ; $4334: $3f
    nop                                           ; $4335: $00
    ccf                                           ; $4336: $3f
    nop                                           ; $4337: $00
    ccf                                           ; $4338: $3f
    nop                                           ; $4339: $00
    ccf                                           ; $433a: $3f
    nop                                           ; $433b: $00
    ccf                                           ; $433c: $3f
    nop                                           ; $433d: $00
    ccf                                           ; $433e: $3f
    nop                                           ; $433f: $00
    inc bc                                        ; $4340: $03
    nop                                           ; $4341: $00
    inc bc                                        ; $4342: $03
    nop                                           ; $4343: $00
    inc bc                                        ; $4344: $03
    nop                                           ; $4345: $00
    inc bc                                        ; $4346: $03
    nop                                           ; $4347: $00
    inc bc                                        ; $4348: $03
    nop                                           ; $4349: $00
    inc bc                                        ; $434a: $03
    nop                                           ; $434b: $00
    inc bc                                        ; $434c: $03
    nop                                           ; $434d: $00
    inc bc                                        ; $434e: $03
    nop                                           ; $434f: $00
    ldh a, [rP1]                                  ; $4350: $f0 $00
    ldh a, [rP1]                                  ; $4352: $f0 $00
    ldh a, [rP1]                                  ; $4354: $f0 $00
    ldh a, [rP1]                                  ; $4356: $f0 $00
    ldh a, [rP1]                                  ; $4358: $f0 $00
    ldh a, [rP1]                                  ; $435a: $f0 $00
    ldh a, [rP1]                                  ; $435c: $f0 $00
    ldh a, [rP1]                                  ; $435e: $f0 $00
    ccf                                           ; $4360: $3f
    nop                                           ; $4361: $00
    ccf                                           ; $4362: $3f
    nop                                           ; $4363: $00
    ccf                                           ; $4364: $3f
    nop                                           ; $4365: $00
    ccf                                           ; $4366: $3f
    nop                                           ; $4367: $00
    ccf                                           ; $4368: $3f
    nop                                           ; $4369: $00
    ccf                                           ; $436a: $3f
    nop                                           ; $436b: $00
    ccf                                           ; $436c: $3f
    nop                                           ; $436d: $00
    ccf                                           ; $436e: $3f
    nop                                           ; $436f: $00
    nop                                           ; $4370: $00
    nop                                           ; $4371: $00
    nop                                           ; $4372: $00
    nop                                           ; $4373: $00
    nop                                           ; $4374: $00
    nop                                           ; $4375: $00
    nop                                           ; $4376: $00
    nop                                           ; $4377: $00
    nop                                           ; $4378: $00
    nop                                           ; $4379: $00
    nop                                           ; $437a: $00
    nop                                           ; $437b: $00
    nop                                           ; $437c: $00
    nop                                           ; $437d: $00
    nop                                           ; $437e: $00
    nop                                           ; $437f: $00
    nop                                           ; $4380: $00
    nop                                           ; $4381: $00
    nop                                           ; $4382: $00
    nop                                           ; $4383: $00
    nop                                           ; $4384: $00
    nop                                           ; $4385: $00
    nop                                           ; $4386: $00
    nop                                           ; $4387: $00
    nop                                           ; $4388: $00
    nop                                           ; $4389: $00
    nop                                           ; $438a: $00
    nop                                           ; $438b: $00
    nop                                           ; $438c: $00
    nop                                           ; $438d: $00
    nop                                           ; $438e: $00
    nop                                           ; $438f: $00
    nop                                           ; $4390: $00
    nop                                           ; $4391: $00
    nop                                           ; $4392: $00
    nop                                           ; $4393: $00
    nop                                           ; $4394: $00
    nop                                           ; $4395: $00
    nop                                           ; $4396: $00
    nop                                           ; $4397: $00
    nop                                           ; $4398: $00
    nop                                           ; $4399: $00
    nop                                           ; $439a: $00
    nop                                           ; $439b: $00
    nop                                           ; $439c: $00
    nop                                           ; $439d: $00
    nop                                           ; $439e: $00
    nop                                           ; $439f: $00
    nop                                           ; $43a0: $00
    nop                                           ; $43a1: $00
    nop                                           ; $43a2: $00
    nop                                           ; $43a3: $00
    nop                                           ; $43a4: $00
    nop                                           ; $43a5: $00
    nop                                           ; $43a6: $00
    nop                                           ; $43a7: $00
    nop                                           ; $43a8: $00
    nop                                           ; $43a9: $00
    nop                                           ; $43aa: $00
    nop                                           ; $43ab: $00
    nop                                           ; $43ac: $00
    nop                                           ; $43ad: $00
    nop                                           ; $43ae: $00
    nop                                           ; $43af: $00
    nop                                           ; $43b0: $00
    nop                                           ; $43b1: $00
    nop                                           ; $43b2: $00
    nop                                           ; $43b3: $00
    nop                                           ; $43b4: $00
    nop                                           ; $43b5: $00
    nop                                           ; $43b6: $00
    nop                                           ; $43b7: $00
    nop                                           ; $43b8: $00
    nop                                           ; $43b9: $00
    nop                                           ; $43ba: $00
    nop                                           ; $43bb: $00
    nop                                           ; $43bc: $00
    nop                                           ; $43bd: $00
    nop                                           ; $43be: $00
    nop                                           ; $43bf: $00
    nop                                           ; $43c0: $00
    nop                                           ; $43c1: $00
    nop                                           ; $43c2: $00
    nop                                           ; $43c3: $00
    ld bc, $0701                                  ; $43c4: $01 $01 $07
    ld b, $0b                                     ; $43c7: $06 $0b
    dec c                                         ; $43c9: $0d
    dec e                                         ; $43ca: $1d
    ld d, $16                                     ; $43cb: $16 $16
    dec de                                        ; $43cd: $1b
    dec bc                                        ; $43ce: $0b
    dec c                                         ; $43cf: $0d
    nop                                           ; $43d0: $00
    nop                                           ; $43d1: $00
    nop                                           ; $43d2: $00
    nop                                           ; $43d3: $00
    nop                                           ; $43d4: $00
    ret nz                                        ; $43d5: $c0

    ret nz                                        ; $43d6: $c0

    and b                                         ; $43d7: $a0
    ldh [$ff50], a                                ; $43d8: $e0 $50
    ret nc                                        ; $43da: $d0

    xor b                                         ; $43db: $a8
    cp b                                          ; $43dc: $b8
    ld b, h                                       ; $43dd: $44
    ld a, b                                       ; $43de: $78
    add h                                         ; $43df: $84
    nop                                           ; $43e0: $00
    nop                                           ; $43e1: $00
    nop                                           ; $43e2: $00
    nop                                           ; $43e3: $00
    nop                                           ; $43e4: $00
    nop                                           ; $43e5: $00
    ld bc, $2105                                  ; $43e6: $01 $05 $21
    ld hl, $0101                                  ; $43e9: $21 $01 $01
    dec b                                         ; $43ec: $05
    dec d                                         ; $43ed: $15
    ld bc, $0001                                  ; $43ee: $01 $01 $00
    nop                                           ; $43f1: $00
    nop                                           ; $43f2: $00
    nop                                           ; $43f3: $00
    xor b                                         ; $43f4: $a8
    ld hl, sp-$48                                 ; $43f5: $f8 $b8
    ld d, [hl]                                    ; $43f7: $56
    cp $55                                        ; $43f8: $fe $55
    cp $55                                        ; $43fa: $fe $55
    xor d                                         ; $43fc: $aa
    ld d, l                                       ; $43fd: $55
    cp $01                                        ; $43fe: $fe $01
    ccf                                           ; $4400: $3f
    nop                                           ; $4401: $00
    ccf                                           ; $4402: $3f
    nop                                           ; $4403: $00
    ccf                                           ; $4404: $3f
    nop                                           ; $4405: $00
    ccf                                           ; $4406: $3f
    nop                                           ; $4407: $00
    ccf                                           ; $4408: $3f
    nop                                           ; $4409: $00
    ccf                                           ; $440a: $3f
    nop                                           ; $440b: $00
    ld e, $00                                     ; $440c: $1e $00
    inc c                                         ; $440e: $0c
    nop                                           ; $440f: $00
    inc bc                                        ; $4410: $03
    nop                                           ; $4411: $00
    inc bc                                        ; $4412: $03
    nop                                           ; $4413: $00
    inc bc                                        ; $4414: $03
    nop                                           ; $4415: $00
    inc bc                                        ; $4416: $03
    nop                                           ; $4417: $00
    inc bc                                        ; $4418: $03
    nop                                           ; $4419: $00
    inc bc                                        ; $441a: $03
    nop                                           ; $441b: $00
    ld a, c                                       ; $441c: $79
    nop                                           ; $441d: $00
    jr nc, jr_008_4420                            ; $441e: $30 $00

jr_008_4420:
    ldh a, [rP1]                                  ; $4420: $f0 $00
    ldh a, [rP1]                                  ; $4422: $f0 $00
    ldh a, [rP1]                                  ; $4424: $f0 $00
    ldh a, [rP1]                                  ; $4426: $f0 $00
    ldh a, [rP1]                                  ; $4428: $f0 $00
    ldh a, [rP1]                                  ; $442a: $f0 $00
    rst RST_20                                    ; $442c: $e7
    nop                                           ; $442d: $00
    jp Jump_000_3f00                              ; $442e: $c3 $00 $3f


    nop                                           ; $4431: $00
    ccf                                           ; $4432: $3f
    nop                                           ; $4433: $00
    ccf                                           ; $4434: $3f
    nop                                           ; $4435: $00
    ccf                                           ; $4436: $3f
    nop                                           ; $4437: $00
    ccf                                           ; $4438: $3f
    nop                                           ; $4439: $00
    ccf                                           ; $443a: $3f
    nop                                           ; $443b: $00
    sbc [hl]                                      ; $443c: $9e
    nop                                           ; $443d: $00
    inc c                                         ; $443e: $0c
    nop                                           ; $443f: $00
    inc bc                                        ; $4440: $03
    nop                                           ; $4441: $00
    inc bc                                        ; $4442: $03
    nop                                           ; $4443: $00
    inc bc                                        ; $4444: $03
    nop                                           ; $4445: $00
    inc bc                                        ; $4446: $03
    nop                                           ; $4447: $00
    inc bc                                        ; $4448: $03
    nop                                           ; $4449: $00
    inc bc                                        ; $444a: $03
    nop                                           ; $444b: $00
    ld a, c                                       ; $444c: $79
    nop                                           ; $444d: $00
    jr nc, jr_008_4450                            ; $444e: $30 $00

jr_008_4450:
    ldh a, [rP1]                                  ; $4450: $f0 $00
    ldh a, [rP1]                                  ; $4452: $f0 $00
    ldh a, [rP1]                                  ; $4454: $f0 $00
    ldh a, [rP1]                                  ; $4456: $f0 $00
    ldh a, [rP1]                                  ; $4458: $f0 $00
    ldh a, [rP1]                                  ; $445a: $f0 $00
    rst RST_20                                    ; $445c: $e7
    nop                                           ; $445d: $00
    jp Jump_000_3f00                              ; $445e: $c3 $00 $3f


    nop                                           ; $4461: $00
    ccf                                           ; $4462: $3f
    nop                                           ; $4463: $00
    ccf                                           ; $4464: $3f
    nop                                           ; $4465: $00
    ccf                                           ; $4466: $3f
    nop                                           ; $4467: $00
    ccf                                           ; $4468: $3f
    nop                                           ; $4469: $00
    ccf                                           ; $446a: $3f
    nop                                           ; $446b: $00
    sbc [hl]                                      ; $446c: $9e
    nop                                           ; $446d: $00
    inc c                                         ; $446e: $0c
    nop                                           ; $446f: $00
    nop                                           ; $4470: $00
    nop                                           ; $4471: $00
    nop                                           ; $4472: $00
    nop                                           ; $4473: $00
    nop                                           ; $4474: $00
    nop                                           ; $4475: $00
    nop                                           ; $4476: $00
    nop                                           ; $4477: $00
    nop                                           ; $4478: $00
    nop                                           ; $4479: $00
    nop                                           ; $447a: $00
    nop                                           ; $447b: $00
    ld a, b                                       ; $447c: $78
    nop                                           ; $447d: $00
    jr nc, jr_008_4480                            ; $447e: $30 $00

jr_008_4480:
    nop                                           ; $4480: $00
    nop                                           ; $4481: $00
    nop                                           ; $4482: $00
    nop                                           ; $4483: $00
    nop                                           ; $4484: $00
    nop                                           ; $4485: $00
    nop                                           ; $4486: $00
    nop                                           ; $4487: $00
    nop                                           ; $4488: $00
    nop                                           ; $4489: $00
    nop                                           ; $448a: $00
    nop                                           ; $448b: $00
    nop                                           ; $448c: $00
    nop                                           ; $448d: $00
    nop                                           ; $448e: $00
    nop                                           ; $448f: $00
    nop                                           ; $4490: $00
    nop                                           ; $4491: $00
    nop                                           ; $4492: $00
    nop                                           ; $4493: $00
    nop                                           ; $4494: $00
    nop                                           ; $4495: $00
    nop                                           ; $4496: $00
    nop                                           ; $4497: $00
    nop                                           ; $4498: $00
    nop                                           ; $4499: $00
    nop                                           ; $449a: $00
    nop                                           ; $449b: $00
    nop                                           ; $449c: $00
    nop                                           ; $449d: $00
    nop                                           ; $449e: $00
    nop                                           ; $449f: $00
    nop                                           ; $44a0: $00
    nop                                           ; $44a1: $00
    nop                                           ; $44a2: $00
    nop                                           ; $44a3: $00
    nop                                           ; $44a4: $00
    nop                                           ; $44a5: $00
    nop                                           ; $44a6: $00
    nop                                           ; $44a7: $00
    nop                                           ; $44a8: $00
    nop                                           ; $44a9: $00
    nop                                           ; $44aa: $00
    nop                                           ; $44ab: $00
    nop                                           ; $44ac: $00
    nop                                           ; $44ad: $00
    nop                                           ; $44ae: $00
    nop                                           ; $44af: $00
    nop                                           ; $44b0: $00
    nop                                           ; $44b1: $00
    nop                                           ; $44b2: $00
    nop                                           ; $44b3: $00
    nop                                           ; $44b4: $00
    nop                                           ; $44b5: $00
    nop                                           ; $44b6: $00
    nop                                           ; $44b7: $00
    nop                                           ; $44b8: $00
    nop                                           ; $44b9: $00
    nop                                           ; $44ba: $00
    nop                                           ; $44bb: $00
    nop                                           ; $44bc: $00
    nop                                           ; $44bd: $00
    nop                                           ; $44be: $00
    nop                                           ; $44bf: $00
    dec b                                         ; $44c0: $05
    ld b, $02                                     ; $44c1: $06 $02
    inc bc                                        ; $44c3: $03

jr_008_44c4:
    dec b                                         ; $44c4: $05
    ld b, $0f                                     ; $44c5: $06 $0f
    ld [$0f0f], sp                                ; $44c7: $08 $0f $0f
    nop                                           ; $44ca: $00
    nop                                           ; $44cb: $00
    nop                                           ; $44cc: $00
    nop                                           ; $44cd: $00
    nop                                           ; $44ce: $00
    nop                                           ; $44cf: $00
    ld hl, sp+$06                                 ; $44d0: $f8 $06
    db $f4                                        ; $44d2: $f4
    ld a, [bc]                                    ; $44d3: $0a
    ld hl, sp+$16                                 ; $44d4: $f8 $16
    db $f4                                        ; $44d6: $f4
    inc l                                         ; $44d7: $2c
    add sp, -$28                                  ; $44d8: $e8 $d8
    jr nc, @+$32                                  ; $44da: $30 $30

    nop                                           ; $44dc: $00
    nop                                           ; $44dd: $00
    nop                                           ; $44de: $00
    nop                                           ; $44df: $00
    rlca                                          ; $44e0: $07
    rlca                                          ; $44e1: $07
    ld l, $29                                     ; $44e2: $2e $29
    rlca                                          ; $44e4: $07
    inc b                                         ; $44e5: $04
    ld [bc], a                                    ; $44e6: $02
    inc bc                                        ; $44e7: $03
    ld bc, $0141                                  ; $44e8: $01 $41 $01
    ld bc, $0100                                  ; $44eb: $01 $00 $01
    nop                                           ; $44ee: $00
    nop                                           ; $44ef: $00
    cp $01                                        ; $44f0: $fe $01
    cp $01                                        ; $44f2: $fe $01
    cp $01                                        ; $44f4: $fe $01
    db $fc                                        ; $44f6: $fc
    inc bc                                        ; $44f7: $03
    ret nz                                        ; $44f8: $c0

    rst RST_38                                    ; $44f9: $ff
    ld a, [hl]                                    ; $44fa: $7e
    add c                                         ; $44fb: $81
    ldh [$fffe], a                                ; $44fc: $e0 $fe
    nop                                           ; $44fe: $00
    nop                                           ; $44ff: $00
    nop                                           ; $4500: $00
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    nop                                           ; $4503: $00
    nop                                           ; $4504: $00
    nop                                           ; $4505: $00
    nop                                           ; $4506: $00
    nop                                           ; $4507: $00
    nop                                           ; $4508: $00
    nop                                           ; $4509: $00
    nop                                           ; $450a: $00
    ld bc, $0201                                  ; $450b: $01 $01 $02
    ld bc, $0002                                  ; $450e: $01 $02 $00
    nop                                           ; $4511: $00
    nop                                           ; $4512: $00
    nop                                           ; $4513: $00
    nop                                           ; $4514: $00
    nop                                           ; $4515: $00
    nop                                           ; $4516: $00
    nop                                           ; $4517: $00
    nop                                           ; $4518: $00
    nop                                           ; $4519: $00
    ld b, b                                       ; $451a: $40
    ret nz                                        ; $451b: $c0

    ldh [rNR41], a                                ; $451c: $e0 $20
    ldh [rNR41], a                                ; $451e: $e0 $20
    dec b                                         ; $4520: $05
    ld b, $04                                     ; $4521: $06 $04
    rst RST_38                                    ; $4523: $ff
    inc bc                                        ; $4524: $03
    adc a                                         ; $4525: $8f
    inc b                                         ; $4526: $04
    sbc [hl]                                      ; $4527: $9e
    jr jr_008_44c4                                ; $4528: $18 $9a

    nop                                           ; $452a: $00
    add d                                         ; $452b: $82
    nop                                           ; $452c: $00
    add d                                         ; $452d: $82
    nop                                           ; $452e: $00
    cp $00                                        ; $452f: $fe $00
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    nop                                           ; $4533: $00
    nop                                           ; $4534: $00
    nop                                           ; $4535: $00
    nop                                           ; $4536: $00
    nop                                           ; $4537: $00
    nop                                           ; $4538: $00
    ld bc, $0201                                  ; $4539: $01 $01 $02
    ld bc, $0102                                  ; $453c: $01 $02 $01
    ld b, $00                                     ; $453f: $06 $00
    nop                                           ; $4541: $00
    nop                                           ; $4542: $00
    nop                                           ; $4543: $00
    nop                                           ; $4544: $00
    nop                                           ; $4545: $00
    nop                                           ; $4546: $00
    ldh [$ffe0], a                                ; $4547: $e0 $e0
    db $10                                        ; $4549: $10
    ldh a, [$ff08]                                ; $454a: $f0 $08
    ldh a, [$ff08]                                ; $454c: $f0 $08
    ldh a, [$ff08]                                ; $454e: $f0 $08
    nop                                           ; $4550: $00
    nop                                           ; $4551: $00
    ld [bc], a                                    ; $4552: $02
    ld bc, $2341                                  ; $4553: $01 $41 $23
    ld d, d                                       ; $4556: $52
    ld [hl-], a                                   ; $4557: $32
    ld h, b                                       ; $4558: $60
    ld h, b                                       ; $4559: $60
    inc b                                         ; $455a: $04
    inc b                                         ; $455b: $04
    add b                                         ; $455c: $80
    ld h, h                                       ; $455d: $64
    db $10                                        ; $455e: $10
    ldh a, [rP1]                                  ; $455f: $f0 $00
    nop                                           ; $4561: $00
    nop                                           ; $4562: $00
    inc c                                         ; $4563: $0c
    ld [$1414], sp                                ; $4564: $08 $14 $14
    inc e                                         ; $4567: $1c
    ld [$2008], sp                                ; $4568: $08 $08 $20
    jr nz, jr_008_456d                            ; $456b: $20 $00

jr_008_456d:
    nop                                           ; $456d: $00
    nop                                           ; $456e: $00
    stop                                          ; $456f: $10 $00
    nop                                           ; $4571: $00
    ld a, h                                       ; $4572: $7c
    ld a, h                                       ; $4573: $7c
    ld b, b                                       ; $4574: $40
    ld a, h                                       ; $4575: $7c
    ld b, b                                       ; $4576: $40
    ld a, h                                       ; $4577: $7c
    ld b, b                                       ; $4578: $40
    ld a, h                                       ; $4579: $7c
    ld b, b                                       ; $457a: $40
    ld a, h                                       ; $457b: $7c
    nop                                           ; $457c: $00
    nop                                           ; $457d: $00
    nop                                           ; $457e: $00
    nop                                           ; $457f: $00
    inc bc                                        ; $4580: $03
    rlca                                          ; $4581: $07
    rlca                                          ; $4582: $07
    dec bc                                        ; $4583: $0b
    dec bc                                        ; $4584: $0b
    dec e                                         ; $4585: $1d
    dec e                                         ; $4586: $1d
    ld e, $1e                                     ; $4587: $1e $1e
    rra                                           ; $4589: $1f
    rra                                           ; $458a: $1f
    rra                                           ; $458b: $1f
    rrca                                          ; $458c: $0f
    rrca                                          ; $458d: $0f
    rlca                                          ; $458e: $07
    rlca                                          ; $458f: $07
    add b                                         ; $4590: $80
    add b                                         ; $4591: $80
    add b                                         ; $4592: $80
    ldh [$ffe0], a                                ; $4593: $e0 $e0
    sub b                                         ; $4595: $90
    ret nz                                        ; $4596: $c0

    ldh a, [$fff8]                                ; $4597: $f0 $f8

jr_008_4599:
    ld a, b                                       ; $4599: $78
    ld a, h                                       ; $459a: $7c
    cp h                                          ; $459b: $bc
    or b                                          ; $459c: $b0
    sbc $cc                                       ; $459d: $de $cc
    ldh a, [c]                                    ; $459f: $f2
    nop                                           ; $45a0: $00
    nop                                           ; $45a1: $00
    nop                                           ; $45a2: $00
    nop                                           ; $45a3: $00
    nop                                           ; $45a4: $00
    ld bc, $0e0d                                  ; $45a5: $01 $0d $0e
    dec de                                        ; $45a8: $1b
    inc d                                         ; $45a9: $14
    dec bc                                        ; $45aa: $0b
    inc e                                         ; $45ab: $1c
    dec de                                        ; $45ac: $1b

jr_008_45ad:
    inc e                                         ; $45ad: $1c
    add hl, sp                                    ; $45ae: $39
    ld [hl], $00                                  ; $45af: $36 $00
    nop                                           ; $45b1: $00
    nop                                           ; $45b2: $00
    nop                                           ; $45b3: $00
    nop                                           ; $45b4: $00
    ret nz                                        ; $45b5: $c0

    ret nz                                        ; $45b6: $c0

    jr nz, jr_008_4599                            ; $45b7: $20 $e0

jr_008_45b9:
    db $10                                        ; $45b9: $10
    ldh [rNR10], a                                ; $45ba: $e0 $10
    ldh [rNR10], a                                ; $45bc: $e0 $10
    ret nz                                        ; $45be: $c0

    jr nz, jr_008_45c3                            ; $45bf: $20 $02

    ld b, $05                                     ; $45c1: $06 $05

jr_008_45c3:
    dec bc                                        ; $45c3: $0b
    ccf                                           ; $45c4: $3f
    ld a, a                                       ; $45c5: $7f
    ld a, [hl]                                    ; $45c6: $7e
    add c                                         ; $45c7: $81
    ld bc, $fdfe                                  ; $45c8: $01 $fe $fd
    cp $fd                                        ; $45cb: $fe $fd
    cp $fd                                        ; $45cd: $fe $fd
    cp $00                                        ; $45cf: $fe $00
    nop                                           ; $45d1: $00
    nop                                           ; $45d2: $00
    nop                                           ; $45d3: $00
    nop                                           ; $45d4: $00
    ret nz                                        ; $45d5: $c0

    ret nz                                        ; $45d6: $c0

    jr nz, jr_008_45b9                            ; $45d7: $20 $e0

    db $10                                        ; $45d9: $10
    ldh [rNR10], a                                ; $45da: $e0 $10
    ldh [rNR10], a                                ; $45dc: $e0 $10
    ldh [rNR10], a                                ; $45de: $e0 $10
    nop                                           ; $45e0: $00
    nop                                           ; $45e1: $00
    nop                                           ; $45e2: $00
    nop                                           ; $45e3: $00
    ld a, [hl]                                    ; $45e4: $7e
    ld a, [hl]                                    ; $45e5: $7e
    rst RST_38                                    ; $45e6: $ff
    add c                                         ; $45e7: $81
    ld a, [hl]                                    ; $45e8: $7e
    ld a, [hl]                                    ; $45e9: $7e
    nop                                           ; $45ea: $00
    nop                                           ; $45eb: $00
    nop                                           ; $45ec: $00
    nop                                           ; $45ed: $00
    nop                                           ; $45ee: $00
    nop                                           ; $45ef: $00
    inc e                                         ; $45f0: $1c
    inc e                                         ; $45f1: $1c
    ld a, $22                                     ; $45f2: $3e $22
    ld a, [hl]                                    ; $45f4: $7e
    ld b, d                                       ; $45f5: $42
    cp $92                                        ; $45f6: $fe $92
    cp $92                                        ; $45f8: $fe $92
    rst RST_38                                    ; $45fa: $ff
    add c                                         ; $45fb: $81
    ld a, [hl]                                    ; $45fc: $7e
    ld [hl], d                                    ; $45fd: $72
    inc c                                         ; $45fe: $0c
    inc c                                         ; $45ff: $0c
    dec b                                         ; $4600: $05
    ld b, $fc                                     ; $4601: $06 $fc
    rst RST_38                                    ; $4603: $ff
    add e                                         ; $4604: $83
    adc a                                         ; $4605: $8f
    add [hl]                                      ; $4606: $86
    sbc [hl]                                      ; $4607: $9e
    sbc d                                         ; $4608: $9a
    sbc d                                         ; $4609: $9a
    add d                                         ; $460a: $82
    add d                                         ; $460b: $82
    add d                                         ; $460c: $82
    add d                                         ; $460d: $82
    cp $fe                                        ; $460e: $fe $fe
    ldh [rNR41], a                                ; $4610: $e0 $20
    ret nz                                        ; $4612: $c0

    ret nz                                        ; $4613: $c0

    nop                                           ; $4614: $00
    nop                                           ; $4615: $00
    nop                                           ; $4616: $00
    nop                                           ; $4617: $00
    nop                                           ; $4618: $00
    nop                                           ; $4619: $00
    nop                                           ; $461a: $00
    nop                                           ; $461b: $00
    nop                                           ; $461c: $00
    nop                                           ; $461d: $00
    nop                                           ; $461e: $00
    nop                                           ; $461f: $00
    dec b                                         ; $4620: $05
    ld b, $fc                                     ; $4621: $06 $fc
    rlca                                          ; $4623: $07
    add e                                         ; $4624: $83
    rrca                                          ; $4625: $0f
    add [hl]                                      ; $4626: $86
    inc e                                         ; $4627: $1c
    sbc d                                         ; $4628: $9a
    jr jr_008_45ad                                ; $4629: $18 $82

    nop                                           ; $462b: $00
    add d                                         ; $462c: $82
    nop                                           ; $462d: $00
    cp $00                                        ; $462e: $fe $00
    ld b, $05                                     ; $4630: $06 $05

jr_008_4632:
    inc b                                         ; $4632: $04
    rlca                                          ; $4633: $07
    inc bc                                        ; $4634: $03
    rrca                                          ; $4635: $0f
    inc b                                         ; $4636: $04
    inc e                                         ; $4637: $1c
    jr jr_008_4652                                ; $4638: $18 $18

    nop                                           ; $463a: $00
    nop                                           ; $463b: $00
    nop                                           ; $463c: $00
    nop                                           ; $463d: $00
    nop                                           ; $463e: $00
    nop                                           ; $463f: $00
    ldh [rNR10], a                                ; $4640: $e0 $10
    ldh [$ffe0], a                                ; $4642: $e0 $e0
    add b                                         ; $4644: $80
    add b                                         ; $4645: $80
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
    jr nz, jr_008_4632                            ; $4650: $20 $e0

jr_008_4652:
    ret nz                                        ; $4652: $c0

    ret nz                                        ; $4653: $c0

    inc b                                         ; $4654: $04
    dec b                                         ; $4655: $05
    jr nz, jr_008_46a8                            ; $4656: $20 $50

    ld b, b                                       ; $4658: $40
    ld [hl], b                                    ; $4659: $70
    inc [hl]                                      ; $465a: $34
    inc sp                                        ; $465b: $33
    ld bc, $0607                                  ; $465c: $01 $07 $06
    ld b, $00                                     ; $465f: $06 $00
    add b                                         ; $4661: $80
    db $10                                        ; $4662: $10
    db $10                                        ; $4663: $10
    ld bc, $0606                                  ; $4664: $01 $06 $06
    ld b, $00                                     ; $4667: $06 $00
    nop                                           ; $4669: $00
    db $10                                        ; $466a: $10
    jr nz, jr_008_468d                            ; $466b: $20 $20

jr_008_466d:
    jr nc, jr_008_466f                            ; $466d: $30 $00

jr_008_466f:
    nop                                           ; $466f: $00
    nop                                           ; $4670: $00
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    nop                                           ; $4673: $00
    nop                                           ; $4674: $00
    nop                                           ; $4675: $00
    nop                                           ; $4676: $00
    jr nz, jr_008_4679                            ; $4677: $20 $00

jr_008_4679:
    nop                                           ; $4679: $00
    ld [$0008], sp                                ; $467a: $08 $08 $00
    nop                                           ; $467d: $00
    nop                                           ; $467e: $00
    nop                                           ; $467f: $00
    inc bc                                        ; $4680: $03
    rlca                                          ; $4681: $07
    dec b                                         ; $4682: $05
    dec bc                                        ; $4683: $0b
    dec b                                         ; $4684: $05
    dec bc                                        ; $4685: $0b
    inc c                                         ; $4686: $0c
    ld [de], a                                    ; $4687: $12
    ld [$1816], sp                                ; $4688: $08 $16 $18
    inc h                                         ; $468b: $24
    db $10                                        ; $468c: $10

jr_008_468d:
    inc l                                         ; $468d: $2c
    nop                                           ; $468e: $00
    jr jr_008_466d                                ; $468f: $18 $dc

    ldh [c], a                                    ; $4691: $e2
    cp b                                          ; $4692: $b8
    call nz, $c8b0                                ; $4693: $c4 $b0 $c8
    nop                                           ; $4696: $00
    ld [hl], b                                    ; $4697: $70
    nop                                           ; $4698: $00
    nop                                           ; $4699: $00
    nop                                           ; $469a: $00
    nop                                           ; $469b: $00
    nop                                           ; $469c: $00
    nop                                           ; $469d: $00
    nop                                           ; $469e: $00
    nop                                           ; $469f: $00
    ld [hl], $6f                                  ; $46a0: $36 $6f
    cpl                                           ; $46a2: $2f
    ld a, a                                       ; $46a3: $7f
    ld a, $ff                                     ; $46a4: $3e $ff
    ld e, $1f                                     ; $46a6: $1e $1f

jr_008_46a8:
    inc e                                         ; $46a8: $1c
    dec e                                         ; $46a9: $1d
    db $10                                        ; $46aa: $10
    stop                                          ; $46ab: $10 $00
    nop                                           ; $46ad: $00
    nop                                           ; $46ae: $00
    nop                                           ; $46af: $00
    nop                                           ; $46b0: $00
    ret nz                                        ; $46b1: $c0

    ret nz                                        ; $46b2: $c0

    ret nz                                        ; $46b3: $c0

    nop                                           ; $46b4: $00
    ldh [$ff80], a                                ; $46b5: $e0 $80
    ld h, b                                       ; $46b7: $60
    ret nz                                        ; $46b8: $c0

    jr nc, jr_008_46fb                            ; $46b9: $30 $40

    or b                                          ; $46bb: $b0
    ld h, b                                       ; $46bc: $60
    sub b                                         ; $46bd: $90
    nop                                           ; $46be: $00
    ld h, b                                       ; $46bf: $60
    ld a, [hl]                                    ; $46c0: $7e
    rst RST_38                                    ; $46c1: $ff
    ccf                                           ; $46c2: $3f
    ld a, a                                       ; $46c3: $7f
    nop                                           ; $46c4: $00
    rrca                                          ; $46c5: $0f
    inc b                                         ; $46c6: $04
    dec bc                                        ; $46c7: $0b
    inc b                                         ; $46c8: $04
    dec bc                                        ; $46c9: $0b
    inc b                                         ; $46ca: $04
    dec bc                                        ; $46cb: $0b
    inc b                                         ; $46cc: $04
    dec bc                                        ; $46cd: $0b
    nop                                           ; $46ce: $00
    ld b, $c0                                     ; $46cf: $06 $c0
    jr nz, jr_008_46d3                            ; $46d1: $20 $00

jr_008_46d3:
    ret nz                                        ; $46d3: $c0

    nop                                           ; $46d4: $00
    nop                                           ; $46d5: $00
    nop                                           ; $46d6: $00
    nop                                           ; $46d7: $00
    nop                                           ; $46d8: $00
    nop                                           ; $46d9: $00
    nop                                           ; $46da: $00
    nop                                           ; $46db: $00
    nop                                           ; $46dc: $00
    nop                                           ; $46dd: $00
    nop                                           ; $46de: $00
    nop                                           ; $46df: $00
    inc a                                         ; $46e0: $3c
    inc a                                         ; $46e1: $3c
    ld a, [hl]                                    ; $46e2: $7e
    ld b, d                                       ; $46e3: $42
    rst RST_38                                    ; $46e4: $ff
    sbc c                                         ; $46e5: $99
    ld a, a                                       ; $46e6: $7f
    ld a, c                                       ; $46e7: $79
    ld a, [hl]                                    ; $46e8: $7e
    ld b, d                                       ; $46e9: $42
    cp $9e                                        ; $46ea: $fe $9e
    rst RST_38                                    ; $46ec: $ff
    add c                                         ; $46ed: $81
    ld a, [hl]                                    ; $46ee: $7e
    ld a, [hl]                                    ; $46ef: $7e
    inc a                                         ; $46f0: $3c
    inc a                                         ; $46f1: $3c
    ld a, [hl]                                    ; $46f2: $7e
    ld b, d                                       ; $46f3: $42
    rst RST_38                                    ; $46f4: $ff
    sbc c                                         ; $46f5: $99
    ld a, [hl]                                    ; $46f6: $7e
    ld b, d                                       ; $46f7: $42
    rst RST_38                                    ; $46f8: $ff
    sbc c                                         ; $46f9: $99
    rst RST_38                                    ; $46fa: $ff

jr_008_46fb:
    sbc c                                         ; $46fb: $99
    ld a, [hl]                                    ; $46fc: $7e
    ld b, d                                       ; $46fd: $42
    inc a                                         ; $46fe: $3c
    inc a                                         ; $46ff: $3c
    jr nc, jr_008_4722                            ; $4700: $30 $20

    jr nc, jr_008_4724                            ; $4702: $30 $20

    ld hl, sp-$40                                 ; $4704: $f8 $c0
    inc a                                         ; $4706: $3c
    jr c, jr_008_472f                             ; $4707: $38 $26

    inc h                                         ; $4709: $24
    ld b, [hl]                                    ; $470a: $46
    ld b, [hl]                                    ; $470b: $46
    ld [$0008], sp                                ; $470c: $08 $08 $00
    nop                                           ; $470f: $00
    nop                                           ; $4710: $00
    nop                                           ; $4711: $00
    nop                                           ; $4712: $00
    nop                                           ; $4713: $00
    nop                                           ; $4714: $00
    nop                                           ; $4715: $00
    nop                                           ; $4716: $00
    add b                                         ; $4717: $80
    add b                                         ; $4718: $80
    nop                                           ; $4719: $00
    add b                                         ; $471a: $80
    nop                                           ; $471b: $00
    add b                                         ; $471c: $80
    nop                                           ; $471d: $00
    ld a, b                                       ; $471e: $78
    adc b                                         ; $471f: $88
    nop                                           ; $4720: $00
    nop                                           ; $4721: $00

jr_008_4722:
    nop                                           ; $4722: $00
    nop                                           ; $4723: $00

jr_008_4724:
    nop                                           ; $4724: $00
    nop                                           ; $4725: $00
    nop                                           ; $4726: $00
    nop                                           ; $4727: $00
    nop                                           ; $4728: $00
    nop                                           ; $4729: $00
    nop                                           ; $472a: $00
    nop                                           ; $472b: $00
    nop                                           ; $472c: $00
    nop                                           ; $472d: $00
    nop                                           ; $472e: $00

jr_008_472f:
    nop                                           ; $472f: $00
    nop                                           ; $4730: $00
    nop                                           ; $4731: $00
    nop                                           ; $4732: $00
    nop                                           ; $4733: $00
    nop                                           ; $4734: $00
    nop                                           ; $4735: $00
    nop                                           ; $4736: $00
    nop                                           ; $4737: $00
    nop                                           ; $4738: $00
    nop                                           ; $4739: $00
    nop                                           ; $473a: $00
    nop                                           ; $473b: $00
    nop                                           ; $473c: $00
    nop                                           ; $473d: $00
    nop                                           ; $473e: $00
    nop                                           ; $473f: $00
    nop                                           ; $4740: $00
    ld e, $0e                                     ; $4741: $1e $0e
    ld sp, $0906                                  ; $4743: $31 $06 $09
    nop                                           ; $4746: $00
    ld b, $00                                     ; $4747: $06 $00
    ld hl, sp+$38                                 ; $4749: $f8 $38
    ld b, h                                       ; $474b: $44
    jr jr_008_4772                                ; $474c: $18 $24

    nop                                           ; $474e: $00
    jr jr_008_4751                                ; $474f: $18 $00

jr_008_4751:
    nop                                           ; $4751: $00
    ld a, b                                       ; $4752: $78
    ld a, b                                       ; $4753: $78
    or h                                          ; $4754: $b4
    call z, $ccb4                                 ; $4755: $cc $b4 $cc
    db $fc                                        ; $4758: $fc
    db $fc                                        ; $4759: $fc
    db $fc                                        ; $475a: $fc
    add h                                         ; $475b: $84
    db $fc                                        ; $475c: $fc
    add h                                         ; $475d: $84
    db $fc                                        ; $475e: $fc
    db $fc                                        ; $475f: $fc
    nop                                           ; $4760: $00
    nop                                           ; $4761: $00
    ld a, b                                       ; $4762: $78
    ld a, b                                       ; $4763: $78
    or h                                          ; $4764: $b4
    call z, $ccb4                                 ; $4765: $cc $b4 $cc
    db $fc                                        ; $4768: $fc
    db $fc                                        ; $4769: $fc
    add h                                         ; $476a: $84
    db $fc                                        ; $476b: $fc
    add h                                         ; $476c: $84
    db $fc                                        ; $476d: $fc
    db $fc                                        ; $476e: $fc
    db $fc                                        ; $476f: $fc
    ccf                                           ; $4770: $3f
    ccf                                           ; $4771: $3f

jr_008_4772:
    ld c, a                                       ; $4772: $4f
    ld a, c                                       ; $4773: $79
    ld a, a                                       ; $4774: $7f
    ld c, c                                       ; $4775: $49
    ld a, a                                       ; $4776: $7f
    ld c, c                                       ; $4777: $49
    ld c, a                                       ; $4778: $4f
    ld a, c                                       ; $4779: $79
    ccf                                           ; $477a: $3f
    ccf                                           ; $477b: $3f
    nop                                           ; $477c: $00
    nop                                           ; $477d: $00
    nop                                           ; $477e: $00
    nop                                           ; $477f: $00
    ccf                                           ; $4780: $3f
    ccf                                           ; $4781: $3f
    ld c, c                                       ; $4782: $49
    ld a, a                                       ; $4783: $7f
    ld a, c                                       ; $4784: $79
    ld c, a                                       ; $4785: $4f
    ld a, c                                       ; $4786: $79
    ld c, a                                       ; $4787: $4f
    ld c, c                                       ; $4788: $49
    ld a, a                                       ; $4789: $7f
    ccf                                           ; $478a: $3f
    ccf                                           ; $478b: $3f
    nop                                           ; $478c: $00
    nop                                           ; $478d: $00
    nop                                           ; $478e: $00
    nop                                           ; $478f: $00
    nop                                           ; $4790: $00
    nop                                           ; $4791: $00
    nop                                           ; $4792: $00
    nop                                           ; $4793: $00
    nop                                           ; $4794: $00
    nop                                           ; $4795: $00
    nop                                           ; $4796: $00
    nop                                           ; $4797: $00
    db $fc                                        ; $4798: $fc
    db $fc                                        ; $4799: $fc
    db $fc                                        ; $479a: $fc
    add h                                         ; $479b: $84
    ld a, b                                       ; $479c: $78
    ld c, b                                       ; $479d: $48
    jr nc, jr_008_47d0                            ; $479e: $30 $30

    nop                                           ; $47a0: $00
    nop                                           ; $47a1: $00
    nop                                           ; $47a2: $00
    nop                                           ; $47a3: $00
    nop                                           ; $47a4: $00
    nop                                           ; $47a5: $00
    nop                                           ; $47a6: $00
    nop                                           ; $47a7: $00
    db $fc                                        ; $47a8: $fc
    db $fc                                        ; $47a9: $fc
    add h                                         ; $47aa: $84
    db $fc                                        ; $47ab: $fc
    ld c, b                                       ; $47ac: $48
    ld a, b                                       ; $47ad: $78
    jr nc, jr_008_47e0                            ; $47ae: $30 $30

    inc c                                         ; $47b0: $0c
    inc c                                         ; $47b1: $0c
    ld c, $0a                                     ; $47b2: $0e $0a
    rrca                                          ; $47b4: $0f
    add hl, bc                                    ; $47b5: $09
    rrca                                          ; $47b6: $0f
    add hl, bc                                    ; $47b7: $09
    ld c, $0a                                     ; $47b8: $0e $0a
    inc c                                         ; $47ba: $0c
    inc c                                         ; $47bb: $0c
    nop                                           ; $47bc: $00
    nop                                           ; $47bd: $00
    nop                                           ; $47be: $00
    nop                                           ; $47bf: $00
    inc c                                         ; $47c0: $0c
    inc c                                         ; $47c1: $0c
    ld a, [bc]                                    ; $47c2: $0a
    ld c, $09                                     ; $47c3: $0e $09
    rrca                                          ; $47c5: $0f
    add hl, bc                                    ; $47c6: $09
    rrca                                          ; $47c7: $0f
    ld a, [bc]                                    ; $47c8: $0a
    ld c, $0c                                     ; $47c9: $0e $0c
    inc c                                         ; $47cb: $0c
    nop                                           ; $47cc: $00
    nop                                           ; $47cd: $00
    nop                                           ; $47ce: $00
    nop                                           ; $47cf: $00

jr_008_47d0:
    ld hl, sp-$08                                 ; $47d0: $f8 $f8
    and h                                         ; $47d2: $a4
    db $fc                                        ; $47d3: $fc
    and d                                         ; $47d4: $a2
    and [hl]                                      ; $47d5: $a6
    ld sp, hl                                     ; $47d6: $f9
    and e                                         ; $47d7: $a3
    pop hl                                        ; $47d8: $e1
    and e                                         ; $47d9: $a3
    and d                                         ; $47da: $a2
    and [hl]                                      ; $47db: $a6
    and h                                         ; $47dc: $a4
    db $fc                                        ; $47dd: $fc
    ld hl, sp-$08                                 ; $47de: $f8 $f8

jr_008_47e0:
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
    nop                                           ; $47ea: $00
    nop                                           ; $47eb: $00
    nop                                           ; $47ec: $00
    nop                                           ; $47ed: $00
    nop                                           ; $47ee: $00
    nop                                           ; $47ef: $00
    rst RST_38                                    ; $47f0: $ff
    rst RST_38                                    ; $47f1: $ff
    di                                            ; $47f2: $f3
    ld a, a                                       ; $47f3: $7f
    and e                                         ; $47f4: $a3
    ld a, [hl]                                    ; $47f5: $7e
    db $e3                                        ; $47f6: $e3
    ld a, $7f                                     ; $47f7: $3e $7f
    sbc l                                         ; $47f9: $9d
    ld a, [hl-]                                   ; $47fa: $3a
    add $00                                       ; $47fb: $c6 $00
    nop                                           ; $47fd: $00
    nop                                           ; $47fe: $00
    nop                                           ; $47ff: $00
    nop                                           ; $4800: $00
    inc e                                         ; $4801: $1c
    inc e                                         ; $4802: $1c
    inc hl                                        ; $4803: $23
    ld a, $41                                     ; $4804: $3e $41
    ld a, $41                                     ; $4806: $3e $41
    ccf                                           ; $4808: $3f
    ld b, a                                       ; $4809: $47
    ld a, b                                       ; $480a: $78
    ld a, b                                       ; $480b: $78
    nop                                           ; $480c: $00
    nop                                           ; $480d: $00
    nop                                           ; $480e: $00
    nop                                           ; $480f: $00
    nop                                           ; $4810: $00
    jr nc, jr_008_4843                            ; $4811: $30 $30

    ld c, b                                       ; $4813: $48
    jr nc, jr_008_485e                            ; $4814: $30 $48

    ld a, b                                       ; $4816: $78
    ld a, b                                       ; $4817: $78
    nop                                           ; $4818: $00
    nop                                           ; $4819: $00
    nop                                           ; $481a: $00
    nop                                           ; $481b: $00
    nop                                           ; $481c: $00
    nop                                           ; $481d: $00
    nop                                           ; $481e: $00
    nop                                           ; $481f: $00
    nop                                           ; $4820: $00
    inc e                                         ; $4821: $1c
    inc e                                         ; $4822: $1c
    inc hl                                        ; $4823: $23
    ld a, $41                                     ; $4824: $3e $41
    ld a, $41                                     ; $4826: $3e $41
    ld a, $41                                     ; $4828: $3e $41
    ld a, $41                                     ; $482a: $3e $41
    ld a, $41                                     ; $482c: $3e $41
    ld e, l                                       ; $482e: $5d
    ld h, e                                       ; $482f: $63
    inc hl                                        ; $4830: $23
    ccf                                           ; $4831: $3f
    ld e, $1e                                     ; $4832: $1e $1e
    nop                                           ; $4834: $00
    nop                                           ; $4835: $00
    nop                                           ; $4836: $00
    nop                                           ; $4837: $00
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00
    nop                                           ; $483a: $00
    nop                                           ; $483b: $00
    nop                                           ; $483c: $00
    nop                                           ; $483d: $00
    nop                                           ; $483e: $00
    nop                                           ; $483f: $00
    nop                                           ; $4840: $00
    jr nc, jr_008_4873                            ; $4841: $30 $30

jr_008_4843:
    ld c, b                                       ; $4843: $48
    jr nc, @+$4a                                  ; $4844: $30 $48

jr_008_4846:
    jr nc, jr_008_4890                            ; $4846: $30 $48

    jr z, jr_008_48a2                             ; $4848: $28 $58

    ld a, b                                       ; $484a: $78
    ld a, b                                       ; $484b: $78
    nop                                           ; $484c: $00
    nop                                           ; $484d: $00
    nop                                           ; $484e: $00
    nop                                           ; $484f: $00
    rst RST_38                                    ; $4850: $ff
    rst RST_38                                    ; $4851: $ff
    xor d                                         ; $4852: $aa
    rst RST_38                                    ; $4853: $ff
    dec d                                         ; $4854: $15
    rst RST_38                                    ; $4855: $ff
    jp c, $a3ff                                   ; $4856: $da $ff $a3

    rst RST_38                                    ; $4859: $ff
    cp $fc                                        ; $485a: $fe $fc
    ld sp, hl                                     ; $485c: $f9
    add hl, bc                                    ; $485d: $09

jr_008_485e:
    ld a, [rIE]                                   ; $485e: $fa $ff $ff
    rst RST_38                                    ; $4861: $ff
    xor d                                         ; $4862: $aa
    rst RST_38                                    ; $4863: $ff
    dec d                                         ; $4864: $15
    rst RST_38                                    ; $4865: $ff
    sbc $ff                                       ; $4866: $de $ff
    or c                                          ; $4868: $b1
    ld hl, sp-$39                                 ; $4869: $f8 $c7
    ldh [$ff1f], a                                ; $486b: $e0 $1f
    add b                                         ; $486d: $80
    ld a, a                                       ; $486e: $7f
    nop                                           ; $486f: $00
    rst RST_38                                    ; $4870: $ff
    rst RST_38                                    ; $4871: $ff
    xor d                                         ; $4872: $aa

jr_008_4873:
    rst RST_38                                    ; $4873: $ff
    rst RST_38                                    ; $4874: $ff
    rst RST_38                                    ; $4875: $ff
    nop                                           ; $4876: $00
    add e                                         ; $4877: $83
    rst RST_38                                    ; $4878: $ff
    nop                                           ; $4879: $00
    rst RST_38                                    ; $487a: $ff
    nop                                           ; $487b: $00
    rst RST_38                                    ; $487c: $ff
    nop                                           ; $487d: $00
    rst RST_38                                    ; $487e: $ff
    nop                                           ; $487f: $00
    rst RST_38                                    ; $4880: $ff
    rst RST_38                                    ; $4881: $ff
    xor d                                         ; $4882: $aa
    rst RST_38                                    ; $4883: $ff
    dec d                                         ; $4884: $15
    rst RST_38                                    ; $4885: $ff
    jp c, Jump_000_32ff                           ; $4886: $da $ff $32

    ld a, a                                       ; $4889: $7f
    adc a                                         ; $488a: $8f
    rra                                           ; $488b: $1f
    sub c                                         ; $488c: $91
    ld h, $3c                                     ; $488d: $26 $3c
    ld a, a                                       ; $488f: $7f

jr_008_4890:
    inc c                                         ; $4890: $0c
    ld c, $09                                     ; $4891: $0e $09
    inc c                                         ; $4893: $0c
    inc de                                        ; $4894: $13
    jr jr_008_48be                                ; $4895: $18 $27

    jr nc, @+$26                                  ; $4897: $30 $24

    ld h, b                                       ; $4899: $60
    ld b, b                                       ; $489a: $40
    ld h, e                                       ; $489b: $63
    ld c, c                                       ; $489c: $49
    db $fc                                        ; $489d: $fc
    ld d, e                                       ; $489e: $53
    ld hl, sp-$08                                 ; $489f: $f8 $f8
    nop                                           ; $48a1: $00

jr_008_48a2:
    ldh [rIF], a                                  ; $48a2: $e0 $0f
    rst RST_00                                    ; $48a4: $c7
    jr nc, jr_008_4846                            ; $48a5: $30 $9f

    ld h, b                                       ; $48a7: $60
    dec a                                         ; $48a8: $3d
    add e                                         ; $48a9: $83
    ld d, $ee                                     ; $48aa: $16 $ee
    ret z                                         ; $48ac: $c8

    dec e                                         ; $48ad: $1d
    db $e3                                        ; $48ae: $e3
    add hl, bc                                    ; $48af: $09
    dec a                                         ; $48b0: $3d
    ld bc, $cf06                                  ; $48b1: $01 $06 $cf
    reti                                          ; $48b4: $d9


    inc a                                         ; $48b5: $3c
    ld l, a                                       ; $48b6: $6f
    ldh [$ff9e], a                                ; $48b7: $e0 $9e
    cp b                                          ; $48b9: $b8
    ld a, l                                       ; $48ba: $7d
    rst RST_38                                    ; $48bb: $ff
    cp $fe                                        ; $48bc: $fe $fe

jr_008_48be:
    rst RST_18                                    ; $48be: $df

jr_008_48bf:
    jp nz, $e0c4                                  ; $48bf: $c2 $c4 $e0

    ld a, a                                       ; $48c2: $7f
    nop                                           ; $48c3: $00
    db $fc                                        ; $48c4: $fc
    nop                                           ; $48c5: $00
    rst RST_08                                    ; $48c6: $cf
    rra                                           ; $48c7: $1f
    ld a, h                                       ; $48c8: $7c
    rst RST_38                                    ; $48c9: $ff
    sbc [hl]                                      ; $48ca: $9e
    cp [hl]                                       ; $48cb: $be
    cp $3e                                        ; $48cc: $fe $3e
    rst RST_38                                    ; $48ce: $ff
    ld h, $00                                     ; $48cf: $26 $00
    ldh [$ffc0], a                                ; $48d1: $e0 $c0
    db $10                                        ; $48d3: $10
    ld h, b                                       ; $48d4: $60
    ld [$88b0], sp                                ; $48d5: $08 $b0 $88
    ld h, b                                       ; $48d8: $60
    ret z                                         ; $48d9: $c8

    ld l, b                                       ; $48da: $68
    ld e, b                                       ; $48db: $58
    sub b                                         ; $48dc: $90
    db $10                                        ; $48dd: $10
    jr nz, jr_008_4940                            ; $48de: $20 $60

    and a                                         ; $48e0: $a7
    ld hl, sp-$29                                 ; $48e1: $f8 $d7
    add sp, -$59                                  ; $48e3: $e8 $a7
    ret z                                         ; $48e5: $c8

    ld c, e                                       ; $48e6: $4b
    sbc b                                         ; $48e7: $98
    sbc l                                         ; $48e8: $9d
    inc a                                         ; $48e9: $3c
    ccf                                           ; $48ea: $3f
    ld a, a                                       ; $48eb: $7f
    ld a, a                                       ; $48ec: $7f
    rst RST_38                                    ; $48ed: $ff
    rst RST_38                                    ; $48ee: $ff
    rst RST_38                                    ; $48ef: $ff
    push af                                       ; $48f0: $f5
    add hl, bc                                    ; $48f1: $09
    di                                            ; $48f2: $f3
    rrca                                          ; $48f3: $0f
    push af                                       ; $48f4: $f5
    dec c                                         ; $48f5: $0d
    db $eb                                        ; $48f6: $eb
    ld [$18d7], sp                                ; $48f7: $08 $d7 $18
    rst RST_20                                    ; $48fa: $e7
    ldh a, [$ffd1]                                ; $48fb: $f0 $d1
    db $f4                                        ; $48fd: $f4

jr_008_48fe:
    add c                                         ; $48fe: $81
    sbc $fc                                       ; $48ff: $de $fc
    sbc l                                         ; $4901: $9d
    rst RST_28                                    ; $4902: $ef
    inc hl                                        ; $4903: $23
    rst RST_18                                    ; $4904: $df
    ld b, c                                       ; $4905: $41
    rst RST_30                                    ; $4906: $f7
    ld b, a                                       ; $4907: $47
    rst RST_38                                    ; $4908: $ff
    ld c, a                                       ; $4909: $4f
    rst RST_38                                    ; $490a: $ff
    ld c, l                                       ; $490b: $4d
    rst RST_38                                    ; $490c: $ff
    ld c, a                                       ; $490d: $4f
    rst RST_38                                    ; $490e: $ff
    ld c, a                                       ; $490f: $4f
    ld a, [rPCM12]                                ; $4910: $fa $76 $ff
    ld c, e                                       ; $4913: $4b
    cp $4a                                        ; $4914: $fe $4a
    xor $7a                                       ; $4916: $ee $7a
    rst RST_18                                    ; $4918: $df
    ld e, a                                       ; $4919: $5f
    ld hl, sp+$7c                                 ; $491a: $f8 $7c
    rst RST_20                                    ; $491c: $e7
    jr nc, jr_008_48fe                            ; $491d: $30 $df

    ld h, b                                       ; $491f: $60
    ret nz                                        ; $4920: $c0

    ret nz                                        ; $4921: $c0

    nop                                           ; $4922: $00
    nop                                           ; $4923: $00
    nop                                           ; $4924: $00
    nop                                           ; $4925: $00
    nop                                           ; $4926: $00
    nop                                           ; $4927: $00
    add b                                         ; $4928: $80
    add b                                         ; $4929: $80
    ld h, b                                       ; $492a: $60
    ld h, a                                       ; $492b: $67
    sub e                                         ; $492c: $93
    jr c, @-$2d                                   ; $492d: $38 $d1

    inc de                                        ; $492f: $13
    nop                                           ; $4930: $00
    nop                                           ; $4931: $00
    nop                                           ; $4932: $00
    nop                                           ; $4933: $00
    nop                                           ; $4934: $00
    nop                                           ; $4935: $00
    nop                                           ; $4936: $00
    nop                                           ; $4937: $00
    nop                                           ; $4938: $00
    nop                                           ; $4939: $00
    nop                                           ; $493a: $00
    ret nz                                        ; $493b: $c0

    add b                                         ; $493c: $80
    jr nz, jr_008_48bf                            ; $493d: $20 $80

    ret nc                                        ; $493f: $d0

jr_008_4940:
    ld sp, hl                                     ; $4940: $f9
    rst RST_38                                    ; $4941: $ff
    ld hl, sp-$07                                 ; $4942: $f8 $f9
    ld a, [$f1f9]                                 ; $4944: $fa $f9 $f1
    db $f4                                        ; $4947: $f4
    jp hl                                         ; $4948: $e9


    db $e4                                        ; $4949: $e4
    call z, $24e2                                 ; $494a: $cc $e2 $24
    ld [hl-], a                                   ; $494d: $32
    dec e                                         ; $494e: $1d
    rra                                           ; $494f: $1f
    ld bc, $8382                                  ; $4950: $01 $82 $83
    call nz, $fc83                                ; $4953: $c4 $83 $fc
    ld c, e                                       ; $4956: $4b
    ld hl, sp+$77                                 ; $4957: $f8 $77
    ldh a, [$ffa7]                                ; $4959: $f0 $a7
    ld [hl], b                                    ; $495b: $70
    ld [hl], c                                    ; $495c: $71
    ld a, h                                       ; $495d: $7c
    sub c                                         ; $495e: $91
    add $b7                                       ; $495f: $c6 $b7
    ld h, a                                       ; $4961: $67
    rst RST_18                                    ; $4962: $df
    ld a, $ff                                     ; $4963: $3e $ff
    add b                                         ; $4965: $80
    rst RST_18                                    ; $4966: $df
    pop hl                                        ; $4967: $e1
    rst RST_38                                    ; $4968: $ff
    rst RST_38                                    ; $4969: $ff
    ld a, a                                       ; $496a: $7f
    rst RST_38                                    ; $496b: $ff
    ld a, a                                       ; $496c: $7f
    ld a, a                                       ; $496d: $7f
    rst RST_18                                    ; $496e: $df
    rra                                           ; $496f: $1f
    rst RST_38                                    ; $4970: $ff
    ld b, b                                       ; $4971: $40
    rst RST_38                                    ; $4972: $ff
    nop                                           ; $4973: $00
    rst RST_38                                    ; $4974: $ff
    nop                                           ; $4975: $00
    ld a, a                                       ; $4976: $7f
    nop                                           ; $4977: $00
    rra                                           ; $4978: $1f
    add b                                         ; $4979: $80
    add b                                         ; $497a: $80
    ret nz                                        ; $497b: $c0

    ldh [$fff0], a                                ; $497c: $e0 $f0
    rst RST_38                                    ; $497e: $ff
    rst RST_38                                    ; $497f: $ff
    xor $1f                                       ; $4980: $ee $1f
    db $ed                                        ; $4982: $ed
    rra                                           ; $4983: $1f
    xor $1e                                       ; $4984: $ee $1e
    db $dd                                        ; $4986: $dd
    inc e                                         ; $4987: $1c
    sub l                                         ; $4988: $95
    inc a                                         ; $4989: $3c
    ld a, [hl+]                                   ; $498a: $2a
    ld h, e                                       ; $498b: $63
    ld e, l                                       ; $498c: $5d
    pop hl                                        ; $498d: $e1
    cp a                                          ; $498e: $bf
    and c                                         ; $498f: $a1
    ld h, b                                       ; $4990: $60
    ldh a, [$ffe0]                                ; $4991: $f0 $e0
    ld hl, sp-$20                                 ; $4993: $f8 $e0
    inc c                                         ; $4995: $0c
    ld hl, sp+$02                                 ; $4996: $f8 $02
    ld c, b                                       ; $4998: $48
    db $e3                                        ; $4999: $e3
    ld a, h                                       ; $499a: $7c
    ld bc, $01fe                                  ; $499b: $01 $fe $01
    ld h, [hl]                                    ; $499e: $66
    ld [hl], c                                    ; $499f: $71
    ld c, $0d                                     ; $49a0: $0e $0d
    inc c                                         ; $49a2: $0c
    ld a, [bc]                                    ; $49a3: $0a
    add hl, de                                    ; $49a4: $19
    ld [de], a                                    ; $49a5: $12
    dec de                                        ; $49a6: $1b
    inc d                                         ; $49a7: $14
    dec de                                        ; $49a8: $1b
    db $10                                        ; $49a9: $10
    rla                                           ; $49aa: $17
    db $10                                        ; $49ab: $10
    ld a, a                                       ; $49ac: $7f
    ld a, a                                       ; $49ad: $7f
    and b                                         ; $49ae: $a0
    rst RST_38                                    ; $49af: $ff
    ld a, b                                       ; $49b0: $78
    ld [bc], a                                    ; $49b1: $02
    db $ec                                        ; $49b2: $ec
    rrca                                          ; $49b3: $0f
    adc $11                                       ; $49b4: $ce $11
    rst RST_18                                    ; $49b6: $df
    nop                                           ; $49b7: $00
    ei                                            ; $49b8: $fb
    inc bc                                        ; $49b9: $03
    di                                            ; $49ba: $f3
    inc b                                         ; $49bb: $04
    rst RST_38                                    ; $49bc: $ff
    rst RST_38                                    ; $49bd: $ff
    nop                                           ; $49be: $00
    rst RST_38                                    ; $49bf: $ff
    rst RST_28                                    ; $49c0: $ef
    rrca                                          ; $49c1: $0f
    ld a, l                                       ; $49c2: $7d
    inc bc                                        ; $49c3: $03
    ld a, a                                       ; $49c4: $7f
    add b                                         ; $49c5: $80
    ld a, $81                                     ; $49c6: $3e $81
    ccf                                           ; $49c8: $3f
    ret nz                                        ; $49c9: $c0

    ld e, $40                                     ; $49ca: $1e $40
    rst RST_38                                    ; $49cc: $ff
    rst RST_38                                    ; $49cd: $ff
    ld bc, $efff                                  ; $49ce: $01 $ff $ef
    rst RST_38                                    ; $49d1: $ff
    sub $ee                                       ; $49d2: $d6 $ee
    rst RST_38                                    ; $49d4: $ff
    rlca                                          ; $49d5: $07
    ld [$730d], sp                                ; $49d6: $08 $0d $73
    ld hl, sp+$67                                 ; $49d9: $f8 $67
    ld [hl], b                                    ; $49db: $70
    rst RST_38                                    ; $49dc: $ff
    rst RST_38                                    ; $49dd: $ff
    add b                                         ; $49de: $80
    rst RST_38                                    ; $49df: $ff
    dec l                                         ; $49e0: $2d
    ld hl, $1311                                  ; $49e1: $21 $11 $13
    ld e, $1e                                     ; $49e4: $1e $1e
    jp nc, Jump_000_2ed6                          ; $49e6: $d2 $d6 $2e

    ld l, e                                       ; $49e9: $6b
    sbc e                                         ; $49ea: $9b
    add hl, sp                                    ; $49eb: $39
    rst RST_38                                    ; $49ec: $ff
    rst RST_38                                    ; $49ed: $ff
    nop                                           ; $49ee: $00
    rst RST_38                                    ; $49ef: $ff
    cp [hl]                                       ; $49f0: $be
    add c                                         ; $49f1: $81
    ld a, [hl]                                    ; $49f2: $7e
    ld bc, $39d2                                  ; $49f3: $01 $d2 $39
    ld e, [hl]                                    ; $49f6: $5e
    ld b, c                                       ; $49f7: $41
    db $fc                                        ; $49f8: $fc
    add c                                         ; $49f9: $81
    or b                                          ; $49fa: $b0
    add a                                         ; $49fb: $87
    cp $fe                                        ; $49fc: $fe $fe
    inc bc                                        ; $49fe: $03
    rst RST_38                                    ; $49ff: $ff
    and b                                         ; $4a00: $a0
    and b                                         ; $4a01: $a0
    cp a                                          ; $4a02: $bf
    and b                                         ; $4a03: $a0
    rst RST_38                                    ; $4a04: $ff
    and b                                         ; $4a05: $a0
    ldh [$ffa0], a                                ; $4a06: $e0 $a0
    and b                                         ; $4a08: $a0
    and b                                         ; $4a09: $a0
    and b                                         ; $4a0a: $a0
    rst RST_38                                    ; $4a0b: $ff
    and b                                         ; $4a0c: $a0
    rst RST_38                                    ; $4a0d: $ff
    ld a, a                                       ; $4a0e: $7f
    ld a, a                                       ; $4a0f: $7f
    nop                                           ; $4a10: $00
    nop                                           ; $4a11: $00
    rst RST_38                                    ; $4a12: $ff
    nop                                           ; $4a13: $00
    rst RST_38                                    ; $4a14: $ff
    nop                                           ; $4a15: $00
    nop                                           ; $4a16: $00
    nop                                           ; $4a17: $00
    nop                                           ; $4a18: $00
    nop                                           ; $4a19: $00
    nop                                           ; $4a1a: $00
    rst RST_38                                    ; $4a1b: $ff
    nop                                           ; $4a1c: $00
    rst RST_38                                    ; $4a1d: $ff
    rst RST_38                                    ; $4a1e: $ff
    rst RST_38                                    ; $4a1f: $ff
    inc bc                                        ; $4a20: $03
    ld [bc], a                                    ; $4a21: $02
    rst RST_38                                    ; $4a22: $ff
    ld [bc], a                                    ; $4a23: $02
    rst RST_38                                    ; $4a24: $ff
    ld bc, $0101                                  ; $4a25: $01 $01 $01
    inc bc                                        ; $4a28: $03
    ld [bc], a                                    ; $4a29: $02
    inc bc                                        ; $4a2a: $03
    cp $01                                        ; $4a2b: $fe $01
    rst RST_38                                    ; $4a2d: $ff
    rst RST_38                                    ; $4a2e: $ff
    rst RST_38                                    ; $4a2f: $ff
    ret nz                                        ; $4a30: $c0

    ld b, b                                       ; $4a31: $40
    rst RST_38                                    ; $4a32: $ff
    ld b, b                                       ; $4a33: $40
    rst RST_38                                    ; $4a34: $ff
    add b                                         ; $4a35: $80
    add b                                         ; $4a36: $80
    add b                                         ; $4a37: $80
    ret nz                                        ; $4a38: $c0

    ld b, b                                       ; $4a39: $40
    ret nz                                        ; $4a3a: $c0

    ld a, a                                       ; $4a3b: $7f
    add b                                         ; $4a3c: $80
    rst RST_38                                    ; $4a3d: $ff
    rst RST_38                                    ; $4a3e: $ff
    rst RST_38                                    ; $4a3f: $ff
    nop                                           ; $4a40: $00
    nop                                           ; $4a41: $00
    rst RST_38                                    ; $4a42: $ff
    nop                                           ; $4a43: $00
    rst RST_38                                    ; $4a44: $ff
    nop                                           ; $4a45: $00
    nop                                           ; $4a46: $00
    nop                                           ; $4a47: $00
    nop                                           ; $4a48: $00
    nop                                           ; $4a49: $00
    nop                                           ; $4a4a: $00
    rst RST_38                                    ; $4a4b: $ff
    nop                                           ; $4a4c: $00
    rst RST_38                                    ; $4a4d: $ff
    rst RST_38                                    ; $4a4e: $ff
    rst RST_38                                    ; $4a4f: $ff
    dec b                                         ; $4a50: $05
    dec b                                         ; $4a51: $05
    db $fd                                        ; $4a52: $fd
    dec b                                         ; $4a53: $05
    rst RST_38                                    ; $4a54: $ff
    dec b                                         ; $4a55: $05
    rlca                                          ; $4a56: $07
    dec b                                         ; $4a57: $05
    dec b                                         ; $4a58: $05
    dec b                                         ; $4a59: $05
    dec b                                         ; $4a5a: $05
    rst RST_38                                    ; $4a5b: $ff
    dec b                                         ; $4a5c: $05
    rst RST_38                                    ; $4a5d: $ff
    cp $fe                                        ; $4a5e: $fe $fe
    rst RST_38                                    ; $4a60: $ff
    rst RST_38                                    ; $4a61: $ff
    xor d                                         ; $4a62: $aa
    rst RST_38                                    ; $4a63: $ff
    dec d                                         ; $4a64: $15
    rst RST_38                                    ; $4a65: $ff
    jp c, $a2ff                                   ; $4a66: $da $ff $a2

    rst RST_38                                    ; $4a69: $ff
    rst RST_38                                    ; $4a6a: $ff
    rst RST_38                                    ; $4a6b: $ff
    rst RST_38                                    ; $4a6c: $ff
    nop                                           ; $4a6d: $00
    rst RST_38                                    ; $4a6e: $ff
    rst RST_38                                    ; $4a6f: $ff
    db $e3                                        ; $4a70: $e3
    rst RST_38                                    ; $4a71: $ff
    db $e3                                        ; $4a72: $e3
    rst RST_38                                    ; $4a73: $ff
    db $e3                                        ; $4a74: $e3
    rst RST_38                                    ; $4a75: $ff
    db $e3                                        ; $4a76: $e3
    rst RST_38                                    ; $4a77: $ff
    db $e3                                        ; $4a78: $e3
    rst RST_38                                    ; $4a79: $ff
    db $e3                                        ; $4a7a: $e3
    rst RST_38                                    ; $4a7b: $ff
    inc e                                         ; $4a7c: $1c
    add c                                         ; $4a7d: $81
    db $e3                                        ; $4a7e: $e3
    rst RST_38                                    ; $4a7f: $ff
    nop                                           ; $4a80: $00
    nop                                           ; $4a81: $00
    nop                                           ; $4a82: $00
    nop                                           ; $4a83: $00
    rst RST_38                                    ; $4a84: $ff
    nop                                           ; $4a85: $00
    rst RST_38                                    ; $4a86: $ff
    nop                                           ; $4a87: $00
    rst RST_38                                    ; $4a88: $ff
    nop                                           ; $4a89: $00
    rst RST_38                                    ; $4a8a: $ff
    nop                                           ; $4a8b: $00
    rst RST_38                                    ; $4a8c: $ff
    nop                                           ; $4a8d: $00
    rst RST_38                                    ; $4a8e: $ff
    nop                                           ; $4a8f: $00
    nop                                           ; $4a90: $00
    nop                                           ; $4a91: $00
    nop                                           ; $4a92: $00
    nop                                           ; $4a93: $00
    rst RST_38                                    ; $4a94: $ff
    nop                                           ; $4a95: $00
    rst RST_38                                    ; $4a96: $ff
    nop                                           ; $4a97: $00
    rst RST_38                                    ; $4a98: $ff
    nop                                           ; $4a99: $00
    rst RST_38                                    ; $4a9a: $ff
    nop                                           ; $4a9b: $00
    rst RST_38                                    ; $4a9c: $ff
    nop                                           ; $4a9d: $00
    rst RST_38                                    ; $4a9e: $ff
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
    rst RST_38                                    ; $4aac: $ff
    nop                                           ; $4aad: $00
    rst RST_38                                    ; $4aae: $ff
    nop                                           ; $4aaf: $00
    nop                                           ; $4ab0: $00
    nop                                           ; $4ab1: $00
    nop                                           ; $4ab2: $00
    nop                                           ; $4ab3: $00
    nop                                           ; $4ab4: $00
    nop                                           ; $4ab5: $00
    nop                                           ; $4ab6: $00
    nop                                           ; $4ab7: $00
    nop                                           ; $4ab8: $00
    nop                                           ; $4ab9: $00
    nop                                           ; $4aba: $00
    nop                                           ; $4abb: $00
    rst RST_38                                    ; $4abc: $ff
    nop                                           ; $4abd: $00
    rst RST_38                                    ; $4abe: $ff
    nop                                           ; $4abf: $00
    rst RST_38                                    ; $4ac0: $ff
    nop                                           ; $4ac1: $00
    rst RST_38                                    ; $4ac2: $ff
    nop                                           ; $4ac3: $00
    rst RST_38                                    ; $4ac4: $ff
    nop                                           ; $4ac5: $00
    rst RST_38                                    ; $4ac6: $ff
    nop                                           ; $4ac7: $00
    nop                                           ; $4ac8: $00
    nop                                           ; $4ac9: $00
    nop                                           ; $4aca: $00
    nop                                           ; $4acb: $00
    nop                                           ; $4acc: $00
    nop                                           ; $4acd: $00
    nop                                           ; $4ace: $00
    nop                                           ; $4acf: $00
    rst RST_38                                    ; $4ad0: $ff
    nop                                           ; $4ad1: $00
    rst RST_38                                    ; $4ad2: $ff
    nop                                           ; $4ad3: $00
    rst RST_38                                    ; $4ad4: $ff
    nop                                           ; $4ad5: $00
    rst RST_38                                    ; $4ad6: $ff
    nop                                           ; $4ad7: $00
    nop                                           ; $4ad8: $00
    nop                                           ; $4ad9: $00
    nop                                           ; $4ada: $00
    nop                                           ; $4adb: $00
    nop                                           ; $4adc: $00
    nop                                           ; $4add: $00
    nop                                           ; $4ade: $00
    nop                                           ; $4adf: $00
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
    nop                                           ; $4af0: $00
    nop                                           ; $4af1: $00
    nop                                           ; $4af2: $00
    nop                                           ; $4af3: $00
    rst RST_38                                    ; $4af4: $ff
    nop                                           ; $4af5: $00
    rst RST_38                                    ; $4af6: $ff
    nop                                           ; $4af7: $00
    rst RST_38                                    ; $4af8: $ff
    nop                                           ; $4af9: $00
    rst RST_38                                    ; $4afa: $ff
    nop                                           ; $4afb: $00
    rst RST_38                                    ; $4afc: $ff
    nop                                           ; $4afd: $00
    rst RST_38                                    ; $4afe: $ff
    nop                                           ; $4aff: $00
    nop                                           ; $4b00: $00
    nop                                           ; $4b01: $00
    nop                                           ; $4b02: $00
    nop                                           ; $4b03: $00
    nop                                           ; $4b04: $00
    nop                                           ; $4b05: $00
    nop                                           ; $4b06: $00
    nop                                           ; $4b07: $00
    nop                                           ; $4b08: $00
    nop                                           ; $4b09: $00
    nop                                           ; $4b0a: $00
    nop                                           ; $4b0b: $00
    rst RST_38                                    ; $4b0c: $ff
    nop                                           ; $4b0d: $00
    rst RST_38                                    ; $4b0e: $ff
    nop                                           ; $4b0f: $00
    nop                                           ; $4b10: $00
    nop                                           ; $4b11: $00
    nop                                           ; $4b12: $00
    nop                                           ; $4b13: $00
    nop                                           ; $4b14: $00
    nop                                           ; $4b15: $00
    nop                                           ; $4b16: $00
    nop                                           ; $4b17: $00
    nop                                           ; $4b18: $00
    nop                                           ; $4b19: $00
    nop                                           ; $4b1a: $00
    nop                                           ; $4b1b: $00
    rst RST_38                                    ; $4b1c: $ff
    nop                                           ; $4b1d: $00
    rst RST_38                                    ; $4b1e: $ff
    nop                                           ; $4b1f: $00
    rst RST_38                                    ; $4b20: $ff
    nop                                           ; $4b21: $00
    rst RST_38                                    ; $4b22: $ff
    nop                                           ; $4b23: $00
    rst RST_38                                    ; $4b24: $ff
    nop                                           ; $4b25: $00
    rst RST_38                                    ; $4b26: $ff
    nop                                           ; $4b27: $00
    nop                                           ; $4b28: $00
    nop                                           ; $4b29: $00
    nop                                           ; $4b2a: $00
    nop                                           ; $4b2b: $00
    nop                                           ; $4b2c: $00
    nop                                           ; $4b2d: $00
    nop                                           ; $4b2e: $00
    nop                                           ; $4b2f: $00
    rst RST_38                                    ; $4b30: $ff
    nop                                           ; $4b31: $00
    rst RST_38                                    ; $4b32: $ff
    nop                                           ; $4b33: $00
    rst RST_38                                    ; $4b34: $ff
    nop                                           ; $4b35: $00
    rst RST_38                                    ; $4b36: $ff
    nop                                           ; $4b37: $00
    nop                                           ; $4b38: $00
    nop                                           ; $4b39: $00
    nop                                           ; $4b3a: $00
    nop                                           ; $4b3b: $00
    nop                                           ; $4b3c: $00
    nop                                           ; $4b3d: $00
    nop                                           ; $4b3e: $00
    nop                                           ; $4b3f: $00
    nop                                           ; $4b40: $00
    nop                                           ; $4b41: $00
    nop                                           ; $4b42: $00
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
    nop                                           ; $4b50: $00
    nop                                           ; $4b51: $00
    nop                                           ; $4b52: $00
    nop                                           ; $4b53: $00
    rst RST_38                                    ; $4b54: $ff
    nop                                           ; $4b55: $00
    rst RST_38                                    ; $4b56: $ff
    nop                                           ; $4b57: $00
    rst RST_38                                    ; $4b58: $ff
    nop                                           ; $4b59: $00
    rst RST_38                                    ; $4b5a: $ff
    nop                                           ; $4b5b: $00
    rst RST_38                                    ; $4b5c: $ff
    nop                                           ; $4b5d: $00
    rst RST_38                                    ; $4b5e: $ff
    nop                                           ; $4b5f: $00
    nop                                           ; $4b60: $00
    nop                                           ; $4b61: $00
    nop                                           ; $4b62: $00
    nop                                           ; $4b63: $00
    nop                                           ; $4b64: $00
    nop                                           ; $4b65: $00
    nop                                           ; $4b66: $00
    nop                                           ; $4b67: $00
    nop                                           ; $4b68: $00
    nop                                           ; $4b69: $00
    nop                                           ; $4b6a: $00
    nop                                           ; $4b6b: $00
    nop                                           ; $4b6c: $00
    nop                                           ; $4b6d: $00
    nop                                           ; $4b6e: $00
    nop                                           ; $4b6f: $00
    nop                                           ; $4b70: $00
    nop                                           ; $4b71: $00
    nop                                           ; $4b72: $00
    nop                                           ; $4b73: $00
    nop                                           ; $4b74: $00
    nop                                           ; $4b75: $00
    nop                                           ; $4b76: $00
    nop                                           ; $4b77: $00
    nop                                           ; $4b78: $00
    nop                                           ; $4b79: $00
    nop                                           ; $4b7a: $00
    nop                                           ; $4b7b: $00
    nop                                           ; $4b7c: $00
    nop                                           ; $4b7d: $00
    nop                                           ; $4b7e: $00
    nop                                           ; $4b7f: $00
    ld b, b                                       ; $4b80: $40
    ld h, b                                       ; $4b81: $60
    ld b, b                                       ; $4b82: $40
    ld h, b                                       ; $4b83: $60
    ld b, b                                       ; $4b84: $40
    ld h, b                                       ; $4b85: $60
    ld b, b                                       ; $4b86: $40
    ld h, b                                       ; $4b87: $60
    ld b, b                                       ; $4b88: $40
    ld h, b                                       ; $4b89: $60
    ld b, b                                       ; $4b8a: $40
    ld h, b                                       ; $4b8b: $60
    ld b, b                                       ; $4b8c: $40
    ld h, b                                       ; $4b8d: $60
    ld d, [hl]                                    ; $4b8e: $56
    ld a, a                                       ; $4b8f: $7f
    nop                                           ; $4b90: $00
    nop                                           ; $4b91: $00
    nop                                           ; $4b92: $00
    nop                                           ; $4b93: $00
    nop                                           ; $4b94: $00
    nop                                           ; $4b95: $00
    nop                                           ; $4b96: $00
    nop                                           ; $4b97: $00
    nop                                           ; $4b98: $00
    nop                                           ; $4b99: $00
    nop                                           ; $4b9a: $00
    nop                                           ; $4b9b: $00
    nop                                           ; $4b9c: $00
    nop                                           ; $4b9d: $00
    add sp, -$01                                  ; $4b9e: $e8 $ff
    ld b, b                                       ; $4ba0: $40
    ld b, b                                       ; $4ba1: $40
    nop                                           ; $4ba2: $00
    ld b, b                                       ; $4ba3: $40
    nop                                           ; $4ba4: $00
    ld b, b                                       ; $4ba5: $40
    nop                                           ; $4ba6: $00
    ld b, b                                       ; $4ba7: $40
    nop                                           ; $4ba8: $00
    ld b, b                                       ; $4ba9: $40
    nop                                           ; $4baa: $00
    ld b, b                                       ; $4bab: $40
    nop                                           ; $4bac: $00
    ld b, b                                       ; $4bad: $40
    db $e4                                        ; $4bae: $e4
    rst RST_38                                    ; $4baf: $ff
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
    nop                                           ; $4bba: $00
    nop                                           ; $4bbb: $00
    nop                                           ; $4bbc: $00
    nop                                           ; $4bbd: $00
    rst RST_30                                    ; $4bbe: $f7
    rst RST_38                                    ; $4bbf: $ff
    ld b, b                                       ; $4bc0: $40
    ld b, b                                       ; $4bc1: $40
    nop                                           ; $4bc2: $00
    ld b, b                                       ; $4bc3: $40
    nop                                           ; $4bc4: $00
    ld b, b                                       ; $4bc5: $40
    nop                                           ; $4bc6: $00
    ld b, b                                       ; $4bc7: $40
    nop                                           ; $4bc8: $00
    ld b, b                                       ; $4bc9: $40
    nop                                           ; $4bca: $00
    ld b, b                                       ; $4bcb: $40
    ld b, b                                       ; $4bcc: $40
    ld b, b                                       ; $4bcd: $40
    or a                                          ; $4bce: $b7
    rst RST_38                                    ; $4bcf: $ff
    nop                                           ; $4bd0: $00
    nop                                           ; $4bd1: $00
    nop                                           ; $4bd2: $00
    nop                                           ; $4bd3: $00
    nop                                           ; $4bd4: $00
    nop                                           ; $4bd5: $00
    nop                                           ; $4bd6: $00
    nop                                           ; $4bd7: $00
    nop                                           ; $4bd8: $00
    nop                                           ; $4bd9: $00
    nop                                           ; $4bda: $00
    nop                                           ; $4bdb: $00
    nop                                           ; $4bdc: $00
    nop                                           ; $4bdd: $00
    nop                                           ; $4bde: $00
    nop                                           ; $4bdf: $00
    nop                                           ; $4be0: $00
    nop                                           ; $4be1: $00
    nop                                           ; $4be2: $00
    nop                                           ; $4be3: $00
    nop                                           ; $4be4: $00
    nop                                           ; $4be5: $00
    nop                                           ; $4be6: $00
    nop                                           ; $4be7: $00
    nop                                           ; $4be8: $00
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    nop                                           ; $4beb: $00
    nop                                           ; $4bec: $00
    nop                                           ; $4bed: $00
    nop                                           ; $4bee: $00
    nop                                           ; $4bef: $00
    nop                                           ; $4bf0: $00
    nop                                           ; $4bf1: $00
    nop                                           ; $4bf2: $00
    nop                                           ; $4bf3: $00
    nop                                           ; $4bf4: $00
    nop                                           ; $4bf5: $00
    nop                                           ; $4bf6: $00
    nop                                           ; $4bf7: $00
    nop                                           ; $4bf8: $00
    nop                                           ; $4bf9: $00
    nop                                           ; $4bfa: $00
    nop                                           ; $4bfb: $00
    nop                                           ; $4bfc: $00
    nop                                           ; $4bfd: $00
    nop                                           ; $4bfe: $00
    nop                                           ; $4bff: $00
    nop                                           ; $4c00: $00
    nop                                           ; $4c01: $00
    nop                                           ; $4c02: $00
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
    nop                                           ; $4c10: $00
    nop                                           ; $4c11: $00
    nop                                           ; $4c12: $00
    nop                                           ; $4c13: $00
    rst RST_38                                    ; $4c14: $ff
    nop                                           ; $4c15: $00
    rst RST_38                                    ; $4c16: $ff
    nop                                           ; $4c17: $00
    rst RST_38                                    ; $4c18: $ff
    nop                                           ; $4c19: $00
    rst RST_38                                    ; $4c1a: $ff
    nop                                           ; $4c1b: $00
    rst RST_38                                    ; $4c1c: $ff
    nop                                           ; $4c1d: $00
    rst RST_38                                    ; $4c1e: $ff
    nop                                           ; $4c1f: $00
    nop                                           ; $4c20: $00
    nop                                           ; $4c21: $00
    nop                                           ; $4c22: $00
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
    nop                                           ; $4c30: $00
    nop                                           ; $4c31: $00
    nop                                           ; $4c32: $00
    nop                                           ; $4c33: $00
    db $fc                                        ; $4c34: $fc
    nop                                           ; $4c35: $00
    cp $00                                        ; $4c36: $fe $00
    rst RST_38                                    ; $4c38: $ff
    nop                                           ; $4c39: $00
    rst RST_38                                    ; $4c3a: $ff
    nop                                           ; $4c3b: $00
    cp $00                                        ; $4c3c: $fe $00
    db $fc                                        ; $4c3e: $fc
    nop                                           ; $4c3f: $00
    nop                                           ; $4c40: $00
    nop                                           ; $4c41: $00
    nop                                           ; $4c42: $00
    ld a, a                                       ; $4c43: $7f
    ccf                                           ; $4c44: $3f
    ld a, a                                       ; $4c45: $7f
    ccf                                           ; $4c46: $3f
    ld h, b                                       ; $4c47: $60
    ccf                                           ; $4c48: $3f
    ld h, b                                       ; $4c49: $60
    ccf                                           ; $4c4a: $3f
    ld h, b                                       ; $4c4b: $60
    ccf                                           ; $4c4c: $3f
    ld h, b                                       ; $4c4d: $60
    ccf                                           ; $4c4e: $3f
    ld h, b                                       ; $4c4f: $60
    nop                                           ; $4c50: $00
    nop                                           ; $4c51: $00
    nop                                           ; $4c52: $00
    rst RST_38                                    ; $4c53: $ff
    rst RST_38                                    ; $4c54: $ff
    rst RST_38                                    ; $4c55: $ff
    ld a, l                                       ; $4c56: $7d
    nop                                           ; $4c57: $00
    ld a, l                                       ; $4c58: $7d
    nop                                           ; $4c59: $00
    ld a, l                                       ; $4c5a: $7d
    nop                                           ; $4c5b: $00
    ld a, l                                       ; $4c5c: $7d
    nop                                           ; $4c5d: $00
    ld a, l                                       ; $4c5e: $7d
    nop                                           ; $4c5f: $00
    nop                                           ; $4c60: $00
    nop                                           ; $4c61: $00
    nop                                           ; $4c62: $00
    rst RST_38                                    ; $4c63: $ff
    rst RST_38                                    ; $4c64: $ff
    rst RST_38                                    ; $4c65: $ff
    rst RST_30                                    ; $4c66: $f7
    nop                                           ; $4c67: $00
    rst RST_30                                    ; $4c68: $f7
    nop                                           ; $4c69: $00
    rst RST_30                                    ; $4c6a: $f7
    nop                                           ; $4c6b: $00
    rst RST_30                                    ; $4c6c: $f7
    nop                                           ; $4c6d: $00
    rst RST_30                                    ; $4c6e: $f7
    nop                                           ; $4c6f: $00
    nop                                           ; $4c70: $00
    nop                                           ; $4c71: $00
    nop                                           ; $4c72: $00
    rst RST_38                                    ; $4c73: $ff
    rst RST_38                                    ; $4c74: $ff
    rst RST_38                                    ; $4c75: $ff
    rst RST_18                                    ; $4c76: $df
    nop                                           ; $4c77: $00
    rst RST_18                                    ; $4c78: $df
    nop                                           ; $4c79: $00
    rst RST_18                                    ; $4c7a: $df
    nop                                           ; $4c7b: $00
    rst RST_18                                    ; $4c7c: $df
    nop                                           ; $4c7d: $00
    rst RST_18                                    ; $4c7e: $df
    nop                                           ; $4c7f: $00
    nop                                           ; $4c80: $00
    nop                                           ; $4c81: $00
    nop                                           ; $4c82: $00
    rst RST_38                                    ; $4c83: $ff
    rst RST_38                                    ; $4c84: $ff
    rst RST_38                                    ; $4c85: $ff
    db $fd                                        ; $4c86: $fd
    add b                                         ; $4c87: $80
    db $fd                                        ; $4c88: $fd
    add b                                         ; $4c89: $80
    db $fd                                        ; $4c8a: $fd
    add b                                         ; $4c8b: $80
    db $fd                                        ; $4c8c: $fd
    add b                                         ; $4c8d: $80
    db $fd                                        ; $4c8e: $fd
    add b                                         ; $4c8f: $80
    nop                                           ; $4c90: $00
    nop                                           ; $4c91: $00
    nop                                           ; $4c92: $00
    rst RST_38                                    ; $4c93: $ff
    rst RST_38                                    ; $4c94: $ff
    rst RST_38                                    ; $4c95: $ff
    rst RST_30                                    ; $4c96: $f7
    nop                                           ; $4c97: $00
    rst RST_30                                    ; $4c98: $f7
    nop                                           ; $4c99: $00
    rst RST_30                                    ; $4c9a: $f7
    nop                                           ; $4c9b: $00
    rst RST_30                                    ; $4c9c: $f7
    nop                                           ; $4c9d: $00
    rst RST_30                                    ; $4c9e: $f7
    nop                                           ; $4c9f: $00
    nop                                           ; $4ca0: $00
    nop                                           ; $4ca1: $00
    nop                                           ; $4ca2: $00
    rst RST_38                                    ; $4ca3: $ff
    rst RST_38                                    ; $4ca4: $ff
    rst RST_38                                    ; $4ca5: $ff
    rst RST_18                                    ; $4ca6: $df
    nop                                           ; $4ca7: $00
    rst RST_18                                    ; $4ca8: $df
    nop                                           ; $4ca9: $00
    rst RST_18                                    ; $4caa: $df
    nop                                           ; $4cab: $00
    rst RST_18                                    ; $4cac: $df
    nop                                           ; $4cad: $00
    rst RST_18                                    ; $4cae: $df
    nop                                           ; $4caf: $00
    nop                                           ; $4cb0: $00
    nop                                           ; $4cb1: $00
    nop                                           ; $4cb2: $00
    rst RST_38                                    ; $4cb3: $ff
    rst RST_38                                    ; $4cb4: $ff
    cp $7f                                        ; $4cb5: $fe $7f
    ld [bc], a                                    ; $4cb7: $02
    ld a, a                                       ; $4cb8: $7f
    ld [bc], a                                    ; $4cb9: $02
    ld a, a                                       ; $4cba: $7f
    ld [bc], a                                    ; $4cbb: $02
    ld a, a                                       ; $4cbc: $7f
    ld [bc], a                                    ; $4cbd: $02
    ld a, a                                       ; $4cbe: $7f
    ld [bc], a                                    ; $4cbf: $02
    nop                                           ; $4cc0: $00
    nop                                           ; $4cc1: $00
    nop                                           ; $4cc2: $00
    nop                                           ; $4cc3: $00
    nop                                           ; $4cc4: $00
    nop                                           ; $4cc5: $00
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
    nop                                           ; $4cd0: $00
    nop                                           ; $4cd1: $00
    nop                                           ; $4cd2: $00
    nop                                           ; $4cd3: $00
    nop                                           ; $4cd4: $00
    nop                                           ; $4cd5: $00
    nop                                           ; $4cd6: $00
    nop                                           ; $4cd7: $00
    nop                                           ; $4cd8: $00
    nop                                           ; $4cd9: $00
    nop                                           ; $4cda: $00
    nop                                           ; $4cdb: $00
    nop                                           ; $4cdc: $00
    nop                                           ; $4cdd: $00
    nop                                           ; $4cde: $00
    nop                                           ; $4cdf: $00
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
    nop                                           ; $4d00: $00
    nop                                           ; $4d01: $00
    nop                                           ; $4d02: $00
    nop                                           ; $4d03: $00
    nop                                           ; $4d04: $00
    nop                                           ; $4d05: $00
    nop                                           ; $4d06: $00
    nop                                           ; $4d07: $00
    nop                                           ; $4d08: $00
    nop                                           ; $4d09: $00
    nop                                           ; $4d0a: $00
    nop                                           ; $4d0b: $00
    rst RST_38                                    ; $4d0c: $ff
    nop                                           ; $4d0d: $00
    rst RST_38                                    ; $4d0e: $ff
    nop                                           ; $4d0f: $00
    nop                                           ; $4d10: $00
    nop                                           ; $4d11: $00
    nop                                           ; $4d12: $00
    nop                                           ; $4d13: $00
    nop                                           ; $4d14: $00
    nop                                           ; $4d15: $00
    nop                                           ; $4d16: $00
    nop                                           ; $4d17: $00
    nop                                           ; $4d18: $00
    nop                                           ; $4d19: $00
    nop                                           ; $4d1a: $00
    nop                                           ; $4d1b: $00
    rst RST_38                                    ; $4d1c: $ff
    nop                                           ; $4d1d: $00
    rst RST_38                                    ; $4d1e: $ff
    nop                                           ; $4d1f: $00
    nop                                           ; $4d20: $00
    nop                                           ; $4d21: $00
    nop                                           ; $4d22: $00
    nop                                           ; $4d23: $00
    nop                                           ; $4d24: $00
    nop                                           ; $4d25: $00
    nop                                           ; $4d26: $00
    nop                                           ; $4d27: $00
    nop                                           ; $4d28: $00
    nop                                           ; $4d29: $00
    nop                                           ; $4d2a: $00
    nop                                           ; $4d2b: $00
    rst RST_38                                    ; $4d2c: $ff
    nop                                           ; $4d2d: $00
    rst RST_38                                    ; $4d2e: $ff
    nop                                           ; $4d2f: $00
    nop                                           ; $4d30: $00
    nop                                           ; $4d31: $00
    ld [bc], a                                    ; $4d32: $02
    nop                                           ; $4d33: $00
    inc bc                                        ; $4d34: $03
    nop                                           ; $4d35: $00
    inc bc                                        ; $4d36: $03
    nop                                           ; $4d37: $00
    ld [bc], a                                    ; $4d38: $02
    nop                                           ; $4d39: $00
    nop                                           ; $4d3a: $00
    nop                                           ; $4d3b: $00
    db $fc                                        ; $4d3c: $fc
    nop                                           ; $4d3d: $00
    cp $00                                        ; $4d3e: $fe $00
    jr nz, jr_008_4da2                            ; $4d40: $20 $60

    ccf                                           ; $4d42: $3f
    ld h, b                                       ; $4d43: $60
    ccf                                           ; $4d44: $3f
    ld h, b                                       ; $4d45: $60
    ccf                                           ; $4d46: $3f
    ld h, b                                       ; $4d47: $60
    ccf                                           ; $4d48: $3f
    ld h, b                                       ; $4d49: $60
    ccf                                           ; $4d4a: $3f
    ld h, b                                       ; $4d4b: $60
    jr nz, jr_008_4dae                            ; $4d4c: $20 $60

    ccf                                           ; $4d4e: $3f
    ld h, b                                       ; $4d4f: $60
    nop                                           ; $4d50: $00
    nop                                           ; $4d51: $00
    ld a, l                                       ; $4d52: $7d
    nop                                           ; $4d53: $00
    ld a, l                                       ; $4d54: $7d
    nop                                           ; $4d55: $00
    ld a, l                                       ; $4d56: $7d
    nop                                           ; $4d57: $00
    ld a, l                                       ; $4d58: $7d
    nop                                           ; $4d59: $00
    ld a, l                                       ; $4d5a: $7d
    nop                                           ; $4d5b: $00
    nop                                           ; $4d5c: $00
    nop                                           ; $4d5d: $00
    ld a, l                                       ; $4d5e: $7d
    nop                                           ; $4d5f: $00
    nop                                           ; $4d60: $00
    nop                                           ; $4d61: $00
    rst RST_30                                    ; $4d62: $f7
    nop                                           ; $4d63: $00
    rst RST_30                                    ; $4d64: $f7
    nop                                           ; $4d65: $00
    rst RST_30                                    ; $4d66: $f7
    nop                                           ; $4d67: $00
    rst RST_30                                    ; $4d68: $f7
    nop                                           ; $4d69: $00
    rst RST_30                                    ; $4d6a: $f7
    nop                                           ; $4d6b: $00
    nop                                           ; $4d6c: $00
    nop                                           ; $4d6d: $00
    rst RST_30                                    ; $4d6e: $f7
    nop                                           ; $4d6f: $00
    nop                                           ; $4d70: $00
    nop                                           ; $4d71: $00
    rst RST_18                                    ; $4d72: $df
    nop                                           ; $4d73: $00
    rst RST_18                                    ; $4d74: $df
    nop                                           ; $4d75: $00
    rst RST_18                                    ; $4d76: $df
    nop                                           ; $4d77: $00
    rst RST_18                                    ; $4d78: $df
    nop                                           ; $4d79: $00
    rst RST_18                                    ; $4d7a: $df
    nop                                           ; $4d7b: $00
    nop                                           ; $4d7c: $00
    nop                                           ; $4d7d: $00
    rst RST_18                                    ; $4d7e: $df
    nop                                           ; $4d7f: $00
    add b                                         ; $4d80: $80
    add b                                         ; $4d81: $80
    db $fd                                        ; $4d82: $fd
    add b                                         ; $4d83: $80
    db $fd                                        ; $4d84: $fd
    add b                                         ; $4d85: $80
    db $fd                                        ; $4d86: $fd
    add b                                         ; $4d87: $80
    db $fd                                        ; $4d88: $fd
    add b                                         ; $4d89: $80
    db $fd                                        ; $4d8a: $fd
    add b                                         ; $4d8b: $80
    add b                                         ; $4d8c: $80
    add b                                         ; $4d8d: $80
    db $fd                                        ; $4d8e: $fd
    add b                                         ; $4d8f: $80
    nop                                           ; $4d90: $00
    nop                                           ; $4d91: $00
    rst RST_30                                    ; $4d92: $f7
    nop                                           ; $4d93: $00
    rst RST_30                                    ; $4d94: $f7
    nop                                           ; $4d95: $00
    rst RST_30                                    ; $4d96: $f7
    nop                                           ; $4d97: $00
    rst RST_30                                    ; $4d98: $f7
    nop                                           ; $4d99: $00
    rst RST_30                                    ; $4d9a: $f7
    nop                                           ; $4d9b: $00
    nop                                           ; $4d9c: $00
    nop                                           ; $4d9d: $00
    rst RST_30                                    ; $4d9e: $f7
    nop                                           ; $4d9f: $00
    nop                                           ; $4da0: $00
    nop                                           ; $4da1: $00

jr_008_4da2:
    rst RST_18                                    ; $4da2: $df
    nop                                           ; $4da3: $00
    rst RST_18                                    ; $4da4: $df
    nop                                           ; $4da5: $00
    rst RST_18                                    ; $4da6: $df
    nop                                           ; $4da7: $00
    rst RST_18                                    ; $4da8: $df
    nop                                           ; $4da9: $00
    rst RST_18                                    ; $4daa: $df
    nop                                           ; $4dab: $00
    nop                                           ; $4dac: $00
    nop                                           ; $4dad: $00

jr_008_4dae:
    rst RST_18                                    ; $4dae: $df
    nop                                           ; $4daf: $00
    inc bc                                        ; $4db0: $03
    ld [bc], a                                    ; $4db1: $02
    ld a, a                                       ; $4db2: $7f
    ld [bc], a                                    ; $4db3: $02
    ld a, a                                       ; $4db4: $7f
    ld [bc], a                                    ; $4db5: $02
    ld a, a                                       ; $4db6: $7f
    ld [bc], a                                    ; $4db7: $02
    ld a, a                                       ; $4db8: $7f
    ld [bc], a                                    ; $4db9: $02
    ld a, a                                       ; $4dba: $7f
    ld [bc], a                                    ; $4dbb: $02
    inc bc                                        ; $4dbc: $03
    ld [bc], a                                    ; $4dbd: $02
    ld a, a                                       ; $4dbe: $7f
    ld [bc], a                                    ; $4dbf: $02
    nop                                           ; $4dc0: $00
    nop                                           ; $4dc1: $00
    nop                                           ; $4dc2: $00
    nop                                           ; $4dc3: $00
    nop                                           ; $4dc4: $00
    nop                                           ; $4dc5: $00
    nop                                           ; $4dc6: $00
    nop                                           ; $4dc7: $00
    nop                                           ; $4dc8: $00
    nop                                           ; $4dc9: $00
    nop                                           ; $4dca: $00
    nop                                           ; $4dcb: $00
    nop                                           ; $4dcc: $00
    nop                                           ; $4dcd: $00
    nop                                           ; $4dce: $00
    nop                                           ; $4dcf: $00
    nop                                           ; $4dd0: $00
    nop                                           ; $4dd1: $00
    nop                                           ; $4dd2: $00
    nop                                           ; $4dd3: $00
    nop                                           ; $4dd4: $00
    nop                                           ; $4dd5: $00
    nop                                           ; $4dd6: $00
    nop                                           ; $4dd7: $00
    nop                                           ; $4dd8: $00
    nop                                           ; $4dd9: $00
    nop                                           ; $4dda: $00
    nop                                           ; $4ddb: $00
    nop                                           ; $4ddc: $00
    nop                                           ; $4ddd: $00
    nop                                           ; $4dde: $00
    nop                                           ; $4ddf: $00
    nop                                           ; $4de0: $00
    nop                                           ; $4de1: $00
    nop                                           ; $4de2: $00
    nop                                           ; $4de3: $00
    nop                                           ; $4de4: $00
    nop                                           ; $4de5: $00
    nop                                           ; $4de6: $00
    nop                                           ; $4de7: $00
    nop                                           ; $4de8: $00
    nop                                           ; $4de9: $00
    nop                                           ; $4dea: $00
    nop                                           ; $4deb: $00
    nop                                           ; $4dec: $00
    nop                                           ; $4ded: $00
    nop                                           ; $4dee: $00
    nop                                           ; $4def: $00
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
    nop                                           ; $4e03: $00
    rst RST_38                                    ; $4e04: $ff
    nop                                           ; $4e05: $00
    rst RST_38                                    ; $4e06: $ff
    nop                                           ; $4e07: $00
    nop                                           ; $4e08: $00
    nop                                           ; $4e09: $00
    nop                                           ; $4e0a: $00
    nop                                           ; $4e0b: $00
    nop                                           ; $4e0c: $00
    nop                                           ; $4e0d: $00
    nop                                           ; $4e0e: $00
    nop                                           ; $4e0f: $00
    rst RST_38                                    ; $4e10: $ff
    nop                                           ; $4e11: $00
    rst RST_38                                    ; $4e12: $ff
    nop                                           ; $4e13: $00
    rst RST_38                                    ; $4e14: $ff
    nop                                           ; $4e15: $00
    rst RST_38                                    ; $4e16: $ff
    nop                                           ; $4e17: $00
    nop                                           ; $4e18: $00
    nop                                           ; $4e19: $00
    nop                                           ; $4e1a: $00
    nop                                           ; $4e1b: $00
    nop                                           ; $4e1c: $00
    nop                                           ; $4e1d: $00
    nop                                           ; $4e1e: $00
    nop                                           ; $4e1f: $00
    rst RST_38                                    ; $4e20: $ff
    nop                                           ; $4e21: $00
    rst RST_38                                    ; $4e22: $ff
    nop                                           ; $4e23: $00
    rst RST_38                                    ; $4e24: $ff
    nop                                           ; $4e25: $00
    rst RST_38                                    ; $4e26: $ff
    nop                                           ; $4e27: $00
    nop                                           ; $4e28: $00
    nop                                           ; $4e29: $00
    nop                                           ; $4e2a: $00
    nop                                           ; $4e2b: $00
    nop                                           ; $4e2c: $00
    nop                                           ; $4e2d: $00
    nop                                           ; $4e2e: $00
    nop                                           ; $4e2f: $00
    rst RST_38                                    ; $4e30: $ff
    nop                                           ; $4e31: $00
    rst RST_38                                    ; $4e32: $ff
    nop                                           ; $4e33: $00
    cp $00                                        ; $4e34: $fe $00
    db $fc                                        ; $4e36: $fc
    nop                                           ; $4e37: $00
    nop                                           ; $4e38: $00
    nop                                           ; $4e39: $00
    ld [bc], a                                    ; $4e3a: $02
    nop                                           ; $4e3b: $00
    inc bc                                        ; $4e3c: $03
    nop                                           ; $4e3d: $00
    inc bc                                        ; $4e3e: $03
    nop                                           ; $4e3f: $00
    ccf                                           ; $4e40: $3f
    ld h, b                                       ; $4e41: $60
    ccf                                           ; $4e42: $3f
    ld h, b                                       ; $4e43: $60
    ccf                                           ; $4e44: $3f
    ld h, b                                       ; $4e45: $60
    ccf                                           ; $4e46: $3f
    ld h, b                                       ; $4e47: $60
    jr nz, jr_008_4eaa                            ; $4e48: $20 $60

    ccf                                           ; $4e4a: $3f
    ld h, b                                       ; $4e4b: $60
    ccf                                           ; $4e4c: $3f
    ld h, b                                       ; $4e4d: $60
    ccf                                           ; $4e4e: $3f
    ld h, b                                       ; $4e4f: $60
    ld a, l                                       ; $4e50: $7d
    nop                                           ; $4e51: $00
    ld a, l                                       ; $4e52: $7d
    nop                                           ; $4e53: $00
    ld a, l                                       ; $4e54: $7d
    nop                                           ; $4e55: $00
    ld a, l                                       ; $4e56: $7d
    nop                                           ; $4e57: $00
    nop                                           ; $4e58: $00
    nop                                           ; $4e59: $00
    ld a, l                                       ; $4e5a: $7d
    nop                                           ; $4e5b: $00
    ld a, l                                       ; $4e5c: $7d
    nop                                           ; $4e5d: $00
    ld a, l                                       ; $4e5e: $7d
    nop                                           ; $4e5f: $00
    rst RST_30                                    ; $4e60: $f7
    nop                                           ; $4e61: $00
    rst RST_30                                    ; $4e62: $f7
    nop                                           ; $4e63: $00
    rst RST_30                                    ; $4e64: $f7
    nop                                           ; $4e65: $00
    rst RST_30                                    ; $4e66: $f7
    nop                                           ; $4e67: $00
    nop                                           ; $4e68: $00
    nop                                           ; $4e69: $00
    rst RST_30                                    ; $4e6a: $f7
    nop                                           ; $4e6b: $00
    rst RST_30                                    ; $4e6c: $f7
    nop                                           ; $4e6d: $00
    rst RST_30                                    ; $4e6e: $f7
    nop                                           ; $4e6f: $00
    rst RST_18                                    ; $4e70: $df
    nop                                           ; $4e71: $00
    rst RST_18                                    ; $4e72: $df
    nop                                           ; $4e73: $00
    rst RST_18                                    ; $4e74: $df
    nop                                           ; $4e75: $00
    rst RST_18                                    ; $4e76: $df
    nop                                           ; $4e77: $00
    nop                                           ; $4e78: $00
    nop                                           ; $4e79: $00
    rst RST_18                                    ; $4e7a: $df
    nop                                           ; $4e7b: $00
    rst RST_18                                    ; $4e7c: $df
    nop                                           ; $4e7d: $00
    rst RST_18                                    ; $4e7e: $df
    nop                                           ; $4e7f: $00
    db $fd                                        ; $4e80: $fd
    add b                                         ; $4e81: $80
    db $fd                                        ; $4e82: $fd
    add b                                         ; $4e83: $80
    db $fd                                        ; $4e84: $fd
    add b                                         ; $4e85: $80
    db $fd                                        ; $4e86: $fd
    add b                                         ; $4e87: $80
    add b                                         ; $4e88: $80
    add b                                         ; $4e89: $80
    db $fd                                        ; $4e8a: $fd
    add b                                         ; $4e8b: $80
    db $fd                                        ; $4e8c: $fd
    add b                                         ; $4e8d: $80
    db $fd                                        ; $4e8e: $fd
    add b                                         ; $4e8f: $80
    rst RST_30                                    ; $4e90: $f7
    nop                                           ; $4e91: $00
    rst RST_30                                    ; $4e92: $f7
    nop                                           ; $4e93: $00
    rst RST_30                                    ; $4e94: $f7
    nop                                           ; $4e95: $00
    rst RST_30                                    ; $4e96: $f7
    nop                                           ; $4e97: $00
    nop                                           ; $4e98: $00
    nop                                           ; $4e99: $00
    rst RST_30                                    ; $4e9a: $f7
    nop                                           ; $4e9b: $00
    rst RST_30                                    ; $4e9c: $f7
    nop                                           ; $4e9d: $00
    rst RST_30                                    ; $4e9e: $f7
    nop                                           ; $4e9f: $00
    rst RST_18                                    ; $4ea0: $df
    nop                                           ; $4ea1: $00
    rst RST_18                                    ; $4ea2: $df
    nop                                           ; $4ea3: $00
    rst RST_18                                    ; $4ea4: $df
    nop                                           ; $4ea5: $00
    rst RST_18                                    ; $4ea6: $df
    nop                                           ; $4ea7: $00
    nop                                           ; $4ea8: $00
    nop                                           ; $4ea9: $00

jr_008_4eaa:
    rst RST_18                                    ; $4eaa: $df
    nop                                           ; $4eab: $00
    rst RST_18                                    ; $4eac: $df
    nop                                           ; $4ead: $00
    rst RST_18                                    ; $4eae: $df
    nop                                           ; $4eaf: $00
    ld a, a                                       ; $4eb0: $7f
    ld [bc], a                                    ; $4eb1: $02
    ld a, a                                       ; $4eb2: $7f
    ld [bc], a                                    ; $4eb3: $02
    ld a, a                                       ; $4eb4: $7f
    ld [bc], a                                    ; $4eb5: $02
    ld a, a                                       ; $4eb6: $7f
    ld [bc], a                                    ; $4eb7: $02
    inc bc                                        ; $4eb8: $03
    ld [bc], a                                    ; $4eb9: $02
    ld a, a                                       ; $4eba: $7f
    ld [bc], a                                    ; $4ebb: $02
    ld a, a                                       ; $4ebc: $7f
    ld [bc], a                                    ; $4ebd: $02
    ld a, a                                       ; $4ebe: $7f
    ld [bc], a                                    ; $4ebf: $02
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
    nop                                           ; $4ed0: $00
    nop                                           ; $4ed1: $00
    nop                                           ; $4ed2: $00
    nop                                           ; $4ed3: $00
    nop                                           ; $4ed4: $00
    nop                                           ; $4ed5: $00
    nop                                           ; $4ed6: $00
    nop                                           ; $4ed7: $00
    nop                                           ; $4ed8: $00
    nop                                           ; $4ed9: $00
    nop                                           ; $4eda: $00
    nop                                           ; $4edb: $00
    nop                                           ; $4edc: $00
    nop                                           ; $4edd: $00
    nop                                           ; $4ede: $00
    nop                                           ; $4edf: $00
    nop                                           ; $4ee0: $00
    nop                                           ; $4ee1: $00
    nop                                           ; $4ee2: $00
    nop                                           ; $4ee3: $00
    nop                                           ; $4ee4: $00
    nop                                           ; $4ee5: $00
    nop                                           ; $4ee6: $00
    nop                                           ; $4ee7: $00
    nop                                           ; $4ee8: $00
    nop                                           ; $4ee9: $00
    nop                                           ; $4eea: $00
    nop                                           ; $4eeb: $00
    nop                                           ; $4eec: $00
    nop                                           ; $4eed: $00
    nop                                           ; $4eee: $00
    nop                                           ; $4eef: $00
    nop                                           ; $4ef0: $00
    nop                                           ; $4ef1: $00
    nop                                           ; $4ef2: $00
    nop                                           ; $4ef3: $00
    nop                                           ; $4ef4: $00
    nop                                           ; $4ef5: $00
    nop                                           ; $4ef6: $00
    nop                                           ; $4ef7: $00
    nop                                           ; $4ef8: $00
    nop                                           ; $4ef9: $00
    nop                                           ; $4efa: $00
    nop                                           ; $4efb: $00
    nop                                           ; $4efc: $00
    nop                                           ; $4efd: $00
    nop                                           ; $4efe: $00
    nop                                           ; $4eff: $00
    nop                                           ; $4f00: $00
    nop                                           ; $4f01: $00
    nop                                           ; $4f02: $00
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
    nop                                           ; $4f10: $00
    nop                                           ; $4f11: $00
    nop                                           ; $4f12: $00
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
    rst RST_38                                    ; $4f1e: $ff
    nop                                           ; $4f1f: $00
    nop                                           ; $4f20: $00
    nop                                           ; $4f21: $00
    nop                                           ; $4f22: $00
    nop                                           ; $4f23: $00
    rst RST_38                                    ; $4f24: $ff
    nop                                           ; $4f25: $00
    rst RST_38                                    ; $4f26: $ff
    nop                                           ; $4f27: $00
    rst RST_38                                    ; $4f28: $ff
    nop                                           ; $4f29: $00
    rst RST_38                                    ; $4f2a: $ff
    nop                                           ; $4f2b: $00
    rst RST_38                                    ; $4f2c: $ff
    nop                                           ; $4f2d: $00
    rst RST_38                                    ; $4f2e: $ff
    nop                                           ; $4f2f: $00
    ld [bc], a                                    ; $4f30: $02
    nop                                           ; $4f31: $00
    nop                                           ; $4f32: $00
    nop                                           ; $4f33: $00
    db $fc                                        ; $4f34: $fc
    nop                                           ; $4f35: $00
    cp $00                                        ; $4f36: $fe $00
    rst RST_38                                    ; $4f38: $ff
    nop                                           ; $4f39: $00
    rst RST_38                                    ; $4f3a: $ff
    nop                                           ; $4f3b: $00
    cp $00                                        ; $4f3c: $fe $00
    db $fc                                        ; $4f3e: $fc
    nop                                           ; $4f3f: $00
    ccf                                           ; $4f40: $3f
    ld h, b                                       ; $4f41: $60
    ccf                                           ; $4f42: $3f
    ld h, b                                       ; $4f43: $60
    jr nz, jr_008_4fa6                            ; $4f44: $20 $60

    ccf                                           ; $4f46: $3f
    ld h, b                                       ; $4f47: $60
    ccf                                           ; $4f48: $3f
    ld h, b                                       ; $4f49: $60
    ccf                                           ; $4f4a: $3f
    ld h, b                                       ; $4f4b: $60
    ccf                                           ; $4f4c: $3f
    ld h, b                                       ; $4f4d: $60
    ccf                                           ; $4f4e: $3f
    ld h, b                                       ; $4f4f: $60
    ld a, l                                       ; $4f50: $7d
    nop                                           ; $4f51: $00
    ld a, l                                       ; $4f52: $7d
    nop                                           ; $4f53: $00
    nop                                           ; $4f54: $00
    nop                                           ; $4f55: $00
    ld a, l                                       ; $4f56: $7d
    nop                                           ; $4f57: $00
    ld a, l                                       ; $4f58: $7d
    nop                                           ; $4f59: $00
    ld a, l                                       ; $4f5a: $7d
    nop                                           ; $4f5b: $00
    ld a, l                                       ; $4f5c: $7d
    nop                                           ; $4f5d: $00
    ld a, l                                       ; $4f5e: $7d
    nop                                           ; $4f5f: $00
    rst RST_30                                    ; $4f60: $f7
    nop                                           ; $4f61: $00
    rst RST_30                                    ; $4f62: $f7
    nop                                           ; $4f63: $00
    nop                                           ; $4f64: $00
    nop                                           ; $4f65: $00
    rst RST_30                                    ; $4f66: $f7
    nop                                           ; $4f67: $00
    rst RST_30                                    ; $4f68: $f7
    nop                                           ; $4f69: $00
    rst RST_30                                    ; $4f6a: $f7
    nop                                           ; $4f6b: $00
    rst RST_30                                    ; $4f6c: $f7
    nop                                           ; $4f6d: $00
    rst RST_30                                    ; $4f6e: $f7
    nop                                           ; $4f6f: $00
    rst RST_18                                    ; $4f70: $df
    nop                                           ; $4f71: $00
    rst RST_18                                    ; $4f72: $df
    nop                                           ; $4f73: $00
    nop                                           ; $4f74: $00
    nop                                           ; $4f75: $00
    rst RST_18                                    ; $4f76: $df
    nop                                           ; $4f77: $00
    rst RST_18                                    ; $4f78: $df
    nop                                           ; $4f79: $00
    rst RST_18                                    ; $4f7a: $df
    nop                                           ; $4f7b: $00
    rst RST_18                                    ; $4f7c: $df
    nop                                           ; $4f7d: $00
    rst RST_18                                    ; $4f7e: $df
    nop                                           ; $4f7f: $00
    db $fd                                        ; $4f80: $fd
    add b                                         ; $4f81: $80
    db $fd                                        ; $4f82: $fd
    add b                                         ; $4f83: $80
    add b                                         ; $4f84: $80
    add b                                         ; $4f85: $80
    db $fd                                        ; $4f86: $fd
    add b                                         ; $4f87: $80
    db $fd                                        ; $4f88: $fd
    add b                                         ; $4f89: $80
    db $fd                                        ; $4f8a: $fd
    add b                                         ; $4f8b: $80
    db $fd                                        ; $4f8c: $fd
    add b                                         ; $4f8d: $80
    db $fd                                        ; $4f8e: $fd
    add b                                         ; $4f8f: $80
    rst RST_30                                    ; $4f90: $f7
    nop                                           ; $4f91: $00
    rst RST_30                                    ; $4f92: $f7
    nop                                           ; $4f93: $00
    nop                                           ; $4f94: $00
    nop                                           ; $4f95: $00
    rst RST_30                                    ; $4f96: $f7
    nop                                           ; $4f97: $00
    rst RST_30                                    ; $4f98: $f7
    nop                                           ; $4f99: $00
    rst RST_30                                    ; $4f9a: $f7
    nop                                           ; $4f9b: $00
    rst RST_30                                    ; $4f9c: $f7
    nop                                           ; $4f9d: $00
    rst RST_30                                    ; $4f9e: $f7
    nop                                           ; $4f9f: $00
    rst RST_18                                    ; $4fa0: $df
    nop                                           ; $4fa1: $00
    rst RST_18                                    ; $4fa2: $df
    nop                                           ; $4fa3: $00
    nop                                           ; $4fa4: $00
    nop                                           ; $4fa5: $00

jr_008_4fa6:
    rst RST_18                                    ; $4fa6: $df
    nop                                           ; $4fa7: $00
    rst RST_18                                    ; $4fa8: $df
    nop                                           ; $4fa9: $00
    rst RST_18                                    ; $4faa: $df
    nop                                           ; $4fab: $00
    rst RST_18                                    ; $4fac: $df
    nop                                           ; $4fad: $00
    rst RST_18                                    ; $4fae: $df
    nop                                           ; $4faf: $00
    ld a, a                                       ; $4fb0: $7f
    ld [bc], a                                    ; $4fb1: $02
    ld a, a                                       ; $4fb2: $7f
    ld [bc], a                                    ; $4fb3: $02
    inc bc                                        ; $4fb4: $03
    ld [bc], a                                    ; $4fb5: $02
    ld a, a                                       ; $4fb6: $7f
    ld [bc], a                                    ; $4fb7: $02
    ld a, a                                       ; $4fb8: $7f
    ld [bc], a                                    ; $4fb9: $02
    ld a, a                                       ; $4fba: $7f
    ld [bc], a                                    ; $4fbb: $02
    ld a, a                                       ; $4fbc: $7f
    ld [bc], a                                    ; $4fbd: $02
    ld a, a                                       ; $4fbe: $7f
    ld [bc], a                                    ; $4fbf: $02
    nop                                           ; $4fc0: $00
    nop                                           ; $4fc1: $00
    nop                                           ; $4fc2: $00
    nop                                           ; $4fc3: $00
    nop                                           ; $4fc4: $00
    nop                                           ; $4fc5: $00
    nop                                           ; $4fc6: $00
    nop                                           ; $4fc7: $00
    nop                                           ; $4fc8: $00
    nop                                           ; $4fc9: $00
    nop                                           ; $4fca: $00
    nop                                           ; $4fcb: $00
    nop                                           ; $4fcc: $00
    nop                                           ; $4fcd: $00
    nop                                           ; $4fce: $00
    nop                                           ; $4fcf: $00
    nop                                           ; $4fd0: $00
    nop                                           ; $4fd1: $00
    nop                                           ; $4fd2: $00
    nop                                           ; $4fd3: $00
    nop                                           ; $4fd4: $00
    nop                                           ; $4fd5: $00
    nop                                           ; $4fd6: $00
    nop                                           ; $4fd7: $00
    nop                                           ; $4fd8: $00
    nop                                           ; $4fd9: $00
    nop                                           ; $4fda: $00
    nop                                           ; $4fdb: $00
    nop                                           ; $4fdc: $00
    nop                                           ; $4fdd: $00
    nop                                           ; $4fde: $00
    nop                                           ; $4fdf: $00
    nop                                           ; $4fe0: $00
    nop                                           ; $4fe1: $00
    nop                                           ; $4fe2: $00
    nop                                           ; $4fe3: $00
    nop                                           ; $4fe4: $00
    nop                                           ; $4fe5: $00
    nop                                           ; $4fe6: $00
    nop                                           ; $4fe7: $00
    nop                                           ; $4fe8: $00
    nop                                           ; $4fe9: $00
    nop                                           ; $4fea: $00
    nop                                           ; $4feb: $00
    nop                                           ; $4fec: $00
    nop                                           ; $4fed: $00
    nop                                           ; $4fee: $00
    nop                                           ; $4fef: $00
    nop                                           ; $4ff0: $00
    nop                                           ; $4ff1: $00
    nop                                           ; $4ff2: $00
    nop                                           ; $4ff3: $00
    nop                                           ; $4ff4: $00
    nop                                           ; $4ff5: $00
    nop                                           ; $4ff6: $00
    nop                                           ; $4ff7: $00
    nop                                           ; $4ff8: $00
    nop                                           ; $4ff9: $00
    nop                                           ; $4ffa: $00
    nop                                           ; $4ffb: $00
    nop                                           ; $4ffc: $00
    nop                                           ; $4ffd: $00
    nop                                           ; $4ffe: $00
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
    nop                                           ; $5009: $00
    nop                                           ; $500a: $00
    nop                                           ; $500b: $00
    rst RST_38                                    ; $500c: $ff
    nop                                           ; $500d: $00
    rst RST_38                                    ; $500e: $ff
    nop                                           ; $500f: $00
    nop                                           ; $5010: $00
    nop                                           ; $5011: $00
    nop                                           ; $5012: $00
    nop                                           ; $5013: $00
    nop                                           ; $5014: $00
    nop                                           ; $5015: $00
    nop                                           ; $5016: $00
    nop                                           ; $5017: $00
    nop                                           ; $5018: $00
    nop                                           ; $5019: $00
    nop                                           ; $501a: $00
    nop                                           ; $501b: $00
    rst RST_38                                    ; $501c: $ff
    nop                                           ; $501d: $00
    rst RST_38                                    ; $501e: $ff
    nop                                           ; $501f: $00
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    nop                                           ; $5023: $00
    nop                                           ; $5024: $00
    nop                                           ; $5025: $00
    nop                                           ; $5026: $00
    nop                                           ; $5027: $00
    nop                                           ; $5028: $00
    nop                                           ; $5029: $00
    nop                                           ; $502a: $00
    nop                                           ; $502b: $00
    rst RST_38                                    ; $502c: $ff
    nop                                           ; $502d: $00
    rst RST_38                                    ; $502e: $ff
    nop                                           ; $502f: $00
    nop                                           ; $5030: $00
    nop                                           ; $5031: $00
    ld [bc], a                                    ; $5032: $02
    nop                                           ; $5033: $00
    inc bc                                        ; $5034: $03
    nop                                           ; $5035: $00
    inc bc                                        ; $5036: $03
    nop                                           ; $5037: $00
    ld [bc], a                                    ; $5038: $02
    nop                                           ; $5039: $00
    nop                                           ; $503a: $00
    nop                                           ; $503b: $00
    db $fc                                        ; $503c: $fc
    nop                                           ; $503d: $00
    cp $00                                        ; $503e: $fe $00
    ccf                                           ; $5040: $3f
    ld a, a                                       ; $5041: $7f
    ccf                                           ; $5042: $3f
    ld h, b                                       ; $5043: $60
    ccf                                           ; $5044: $3f
    ld h, b                                       ; $5045: $60
    ccf                                           ; $5046: $3f
    ld h, b                                       ; $5047: $60
    ccf                                           ; $5048: $3f
    ld h, b                                       ; $5049: $60
    ccf                                           ; $504a: $3f
    ld h, b                                       ; $504b: $60
    jr nz, jr_008_50ae                            ; $504c: $20 $60

    ccf                                           ; $504e: $3f
    ld h, b                                       ; $504f: $60
    rst RST_38                                    ; $5050: $ff
    rst RST_38                                    ; $5051: $ff
    ld a, l                                       ; $5052: $7d
    nop                                           ; $5053: $00
    ld a, l                                       ; $5054: $7d
    nop                                           ; $5055: $00
    ld a, l                                       ; $5056: $7d
    nop                                           ; $5057: $00
    ld a, l                                       ; $5058: $7d
    nop                                           ; $5059: $00
    ld a, l                                       ; $505a: $7d
    nop                                           ; $505b: $00
    nop                                           ; $505c: $00
    nop                                           ; $505d: $00
    ld a, l                                       ; $505e: $7d
    nop                                           ; $505f: $00
    rst RST_38                                    ; $5060: $ff
    rst RST_38                                    ; $5061: $ff
    rst RST_30                                    ; $5062: $f7
    nop                                           ; $5063: $00
    rst RST_30                                    ; $5064: $f7
    nop                                           ; $5065: $00
    rst RST_30                                    ; $5066: $f7
    nop                                           ; $5067: $00
    rst RST_30                                    ; $5068: $f7
    nop                                           ; $5069: $00
    rst RST_30                                    ; $506a: $f7
    nop                                           ; $506b: $00
    nop                                           ; $506c: $00
    nop                                           ; $506d: $00
    rst RST_30                                    ; $506e: $f7
    nop                                           ; $506f: $00
    rst RST_38                                    ; $5070: $ff
    rst RST_38                                    ; $5071: $ff
    rst RST_18                                    ; $5072: $df
    nop                                           ; $5073: $00
    rst RST_18                                    ; $5074: $df
    nop                                           ; $5075: $00
    rst RST_18                                    ; $5076: $df
    nop                                           ; $5077: $00
    rst RST_18                                    ; $5078: $df
    nop                                           ; $5079: $00
    rst RST_18                                    ; $507a: $df
    nop                                           ; $507b: $00
    nop                                           ; $507c: $00
    nop                                           ; $507d: $00
    rst RST_18                                    ; $507e: $df
    nop                                           ; $507f: $00
    rst RST_38                                    ; $5080: $ff
    rst RST_38                                    ; $5081: $ff
    db $fd                                        ; $5082: $fd
    add b                                         ; $5083: $80
    db $fd                                        ; $5084: $fd
    add b                                         ; $5085: $80
    db $fd                                        ; $5086: $fd
    add b                                         ; $5087: $80
    db $fd                                        ; $5088: $fd
    add b                                         ; $5089: $80
    db $fd                                        ; $508a: $fd
    add b                                         ; $508b: $80
    add b                                         ; $508c: $80
    add b                                         ; $508d: $80
    db $fd                                        ; $508e: $fd
    add b                                         ; $508f: $80
    rst RST_38                                    ; $5090: $ff
    rst RST_38                                    ; $5091: $ff
    rst RST_30                                    ; $5092: $f7
    nop                                           ; $5093: $00
    rst RST_30                                    ; $5094: $f7
    nop                                           ; $5095: $00
    rst RST_30                                    ; $5096: $f7
    nop                                           ; $5097: $00
    rst RST_30                                    ; $5098: $f7
    nop                                           ; $5099: $00
    rst RST_30                                    ; $509a: $f7
    nop                                           ; $509b: $00
    nop                                           ; $509c: $00
    nop                                           ; $509d: $00
    rst RST_30                                    ; $509e: $f7
    nop                                           ; $509f: $00
    rst RST_38                                    ; $50a0: $ff
    rst RST_38                                    ; $50a1: $ff
    rst RST_18                                    ; $50a2: $df
    nop                                           ; $50a3: $00
    rst RST_18                                    ; $50a4: $df
    nop                                           ; $50a5: $00
    rst RST_18                                    ; $50a6: $df
    nop                                           ; $50a7: $00
    rst RST_18                                    ; $50a8: $df
    nop                                           ; $50a9: $00
    rst RST_18                                    ; $50aa: $df
    nop                                           ; $50ab: $00
    nop                                           ; $50ac: $00
    nop                                           ; $50ad: $00

jr_008_50ae:
    rst RST_18                                    ; $50ae: $df
    nop                                           ; $50af: $00
    rst RST_38                                    ; $50b0: $ff
    cp $7f                                        ; $50b1: $fe $7f
    ld [bc], a                                    ; $50b3: $02
    ld a, a                                       ; $50b4: $7f
    ld [bc], a                                    ; $50b5: $02
    ld a, a                                       ; $50b6: $7f
    ld [bc], a                                    ; $50b7: $02
    ld a, a                                       ; $50b8: $7f
    ld [bc], a                                    ; $50b9: $02
    ld a, a                                       ; $50ba: $7f
    ld [bc], a                                    ; $50bb: $02
    inc bc                                        ; $50bc: $03
    ld [bc], a                                    ; $50bd: $02
    ld a, a                                       ; $50be: $7f
    ld [bc], a                                    ; $50bf: $02
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
    rst RST_38                                    ; $5100: $ff
    nop                                           ; $5101: $00
    rst RST_38                                    ; $5102: $ff
    nop                                           ; $5103: $00
    rst RST_38                                    ; $5104: $ff
    nop                                           ; $5105: $00
    rst RST_38                                    ; $5106: $ff
    nop                                           ; $5107: $00
    nop                                           ; $5108: $00
    nop                                           ; $5109: $00
    nop                                           ; $510a: $00
    nop                                           ; $510b: $00
    nop                                           ; $510c: $00
    nop                                           ; $510d: $00
    nop                                           ; $510e: $00
    nop                                           ; $510f: $00
    rst RST_38                                    ; $5110: $ff
    nop                                           ; $5111: $00
    rst RST_38                                    ; $5112: $ff
    nop                                           ; $5113: $00
    rst RST_38                                    ; $5114: $ff
    nop                                           ; $5115: $00
    rst RST_38                                    ; $5116: $ff
    nop                                           ; $5117: $00
    nop                                           ; $5118: $00
    nop                                           ; $5119: $00
    nop                                           ; $511a: $00
    nop                                           ; $511b: $00
    nop                                           ; $511c: $00
    nop                                           ; $511d: $00
    nop                                           ; $511e: $00
    nop                                           ; $511f: $00
    rst RST_38                                    ; $5120: $ff
    nop                                           ; $5121: $00
    rst RST_38                                    ; $5122: $ff
    nop                                           ; $5123: $00
    rst RST_38                                    ; $5124: $ff
    nop                                           ; $5125: $00
    rst RST_38                                    ; $5126: $ff
    nop                                           ; $5127: $00
    nop                                           ; $5128: $00
    nop                                           ; $5129: $00
    nop                                           ; $512a: $00
    nop                                           ; $512b: $00
    nop                                           ; $512c: $00
    nop                                           ; $512d: $00
    nop                                           ; $512e: $00
    nop                                           ; $512f: $00
    rst RST_38                                    ; $5130: $ff
    nop                                           ; $5131: $00
    rst RST_38                                    ; $5132: $ff
    nop                                           ; $5133: $00
    cp $00                                        ; $5134: $fe $00
    db $fc                                        ; $5136: $fc
    nop                                           ; $5137: $00
    nop                                           ; $5138: $00
    nop                                           ; $5139: $00
    ld [bc], a                                    ; $513a: $02
    nop                                           ; $513b: $00
    inc bc                                        ; $513c: $03
    nop                                           ; $513d: $00
    inc bc                                        ; $513e: $03
    nop                                           ; $513f: $00
    ccf                                           ; $5140: $3f
    ld h, b                                       ; $5141: $60
    ccf                                           ; $5142: $3f
    ld h, b                                       ; $5143: $60
    ccf                                           ; $5144: $3f
    ld h, b                                       ; $5145: $60
    ccf                                           ; $5146: $3f
    ld h, b                                       ; $5147: $60
    jr nz, jr_008_51aa                            ; $5148: $20 $60

    ccf                                           ; $514a: $3f
    ld h, b                                       ; $514b: $60
    ccf                                           ; $514c: $3f
    ld h, b                                       ; $514d: $60
    ccf                                           ; $514e: $3f
    ld h, b                                       ; $514f: $60
    ld a, l                                       ; $5150: $7d
    nop                                           ; $5151: $00
    ld a, l                                       ; $5152: $7d
    nop                                           ; $5153: $00
    ld a, l                                       ; $5154: $7d
    nop                                           ; $5155: $00
    ld a, l                                       ; $5156: $7d
    nop                                           ; $5157: $00
    nop                                           ; $5158: $00
    nop                                           ; $5159: $00
    ld a, l                                       ; $515a: $7d
    nop                                           ; $515b: $00
    ld a, l                                       ; $515c: $7d
    nop                                           ; $515d: $00
    ld a, l                                       ; $515e: $7d
    nop                                           ; $515f: $00
    rst RST_30                                    ; $5160: $f7
    nop                                           ; $5161: $00
    rst RST_30                                    ; $5162: $f7
    nop                                           ; $5163: $00
    rst RST_30                                    ; $5164: $f7
    nop                                           ; $5165: $00
    rst RST_30                                    ; $5166: $f7
    nop                                           ; $5167: $00
    nop                                           ; $5168: $00
    nop                                           ; $5169: $00
    rst RST_30                                    ; $516a: $f7
    nop                                           ; $516b: $00
    rst RST_30                                    ; $516c: $f7
    nop                                           ; $516d: $00
    rst RST_30                                    ; $516e: $f7
    nop                                           ; $516f: $00
    rst RST_18                                    ; $5170: $df
    nop                                           ; $5171: $00
    rst RST_18                                    ; $5172: $df
    nop                                           ; $5173: $00
    rst RST_18                                    ; $5174: $df
    nop                                           ; $5175: $00
    rst RST_18                                    ; $5176: $df
    nop                                           ; $5177: $00
    nop                                           ; $5178: $00
    nop                                           ; $5179: $00
    rst RST_18                                    ; $517a: $df
    nop                                           ; $517b: $00
    rst RST_18                                    ; $517c: $df
    nop                                           ; $517d: $00
    rst RST_18                                    ; $517e: $df
    nop                                           ; $517f: $00
    db $fd                                        ; $5180: $fd
    add b                                         ; $5181: $80
    db $fd                                        ; $5182: $fd
    add b                                         ; $5183: $80
    db $fd                                        ; $5184: $fd
    add b                                         ; $5185: $80
    db $fd                                        ; $5186: $fd
    add b                                         ; $5187: $80
    add b                                         ; $5188: $80
    add b                                         ; $5189: $80
    db $fd                                        ; $518a: $fd
    add b                                         ; $518b: $80
    db $fd                                        ; $518c: $fd
    add b                                         ; $518d: $80
    db $fd                                        ; $518e: $fd
    add b                                         ; $518f: $80
    rst RST_30                                    ; $5190: $f7
    nop                                           ; $5191: $00
    rst RST_30                                    ; $5192: $f7
    nop                                           ; $5193: $00
    rst RST_30                                    ; $5194: $f7
    nop                                           ; $5195: $00
    rst RST_30                                    ; $5196: $f7
    nop                                           ; $5197: $00
    nop                                           ; $5198: $00
    nop                                           ; $5199: $00
    rst RST_30                                    ; $519a: $f7
    nop                                           ; $519b: $00
    rst RST_30                                    ; $519c: $f7
    nop                                           ; $519d: $00
    rst RST_30                                    ; $519e: $f7
    nop                                           ; $519f: $00
    rst RST_18                                    ; $51a0: $df
    nop                                           ; $51a1: $00
    rst RST_18                                    ; $51a2: $df
    nop                                           ; $51a3: $00
    rst RST_18                                    ; $51a4: $df
    nop                                           ; $51a5: $00
    rst RST_18                                    ; $51a6: $df
    nop                                           ; $51a7: $00
    nop                                           ; $51a8: $00
    nop                                           ; $51a9: $00

jr_008_51aa:
    rst RST_18                                    ; $51aa: $df
    nop                                           ; $51ab: $00
    rst RST_18                                    ; $51ac: $df
    nop                                           ; $51ad: $00
    rst RST_18                                    ; $51ae: $df
    nop                                           ; $51af: $00
    ld a, a                                       ; $51b0: $7f
    ld [bc], a                                    ; $51b1: $02
    ld a, a                                       ; $51b2: $7f
    ld [bc], a                                    ; $51b3: $02
    ld a, a                                       ; $51b4: $7f
    ld [bc], a                                    ; $51b5: $02
    ld a, a                                       ; $51b6: $7f
    ld [bc], a                                    ; $51b7: $02
    inc bc                                        ; $51b8: $03
    ld [bc], a                                    ; $51b9: $02
    ld a, a                                       ; $51ba: $7f
    ld [bc], a                                    ; $51bb: $02
    ld a, a                                       ; $51bc: $7f
    ld [bc], a                                    ; $51bd: $02
    ld a, a                                       ; $51be: $7f
    ld [bc], a                                    ; $51bf: $02
    nop                                           ; $51c0: $00
    nop                                           ; $51c1: $00
    nop                                           ; $51c2: $00
    nop                                           ; $51c3: $00
    rst RST_38                                    ; $51c4: $ff
    nop                                           ; $51c5: $00
    rst RST_38                                    ; $51c6: $ff
    rst RST_38                                    ; $51c7: $ff
    db $e3                                        ; $51c8: $e3
    db $e3                                        ; $51c9: $e3
    pop bc                                        ; $51ca: $c1
    rst RST_08                                    ; $51cb: $cf
    add c                                         ; $51cc: $81
    push de                                       ; $51cd: $d5
    add c                                         ; $51ce: $81
    sub c                                         ; $51cf: $91
    nop                                           ; $51d0: $00
    nop                                           ; $51d1: $00
    nop                                           ; $51d2: $00
    nop                                           ; $51d3: $00
    rst RST_38                                    ; $51d4: $ff
    nop                                           ; $51d5: $00
    rst RST_38                                    ; $51d6: $ff
    rst RST_38                                    ; $51d7: $ff
    rst RST_38                                    ; $51d8: $ff
    rst RST_38                                    ; $51d9: $ff
    cp a                                          ; $51da: $bf
    cp a                                          ; $51db: $bf
    sbc a                                         ; $51dc: $9f
    cp a                                          ; $51dd: $bf
    adc a                                         ; $51de: $8f
    rst RST_18                                    ; $51df: $df
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
    nop                                           ; $5200: $00
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    nop                                           ; $5203: $00
    rst RST_38                                    ; $5204: $ff
    nop                                           ; $5205: $00
    rst RST_38                                    ; $5206: $ff
    nop                                           ; $5207: $00
    rst RST_38                                    ; $5208: $ff
    nop                                           ; $5209: $00
    rst RST_38                                    ; $520a: $ff
    nop                                           ; $520b: $00
    rst RST_38                                    ; $520c: $ff
    nop                                           ; $520d: $00
    rst RST_38                                    ; $520e: $ff
    nop                                           ; $520f: $00
    nop                                           ; $5210: $00
    nop                                           ; $5211: $00
    nop                                           ; $5212: $00
    nop                                           ; $5213: $00
    rst RST_38                                    ; $5214: $ff
    nop                                           ; $5215: $00
    rst RST_38                                    ; $5216: $ff
    nop                                           ; $5217: $00
    rst RST_38                                    ; $5218: $ff
    nop                                           ; $5219: $00
    rst RST_38                                    ; $521a: $ff
    nop                                           ; $521b: $00
    rst RST_38                                    ; $521c: $ff
    nop                                           ; $521d: $00
    rst RST_38                                    ; $521e: $ff
    nop                                           ; $521f: $00
    nop                                           ; $5220: $00
    nop                                           ; $5221: $00
    nop                                           ; $5222: $00
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
    ld [bc], a                                    ; $5230: $02
    nop                                           ; $5231: $00
    nop                                           ; $5232: $00
    nop                                           ; $5233: $00
    db $fc                                        ; $5234: $fc
    nop                                           ; $5235: $00
    cp $00                                        ; $5236: $fe $00
    rst RST_38                                    ; $5238: $ff
    nop                                           ; $5239: $00
    rst RST_38                                    ; $523a: $ff
    nop                                           ; $523b: $00
    cp $00                                        ; $523c: $fe $00
    db $fc                                        ; $523e: $fc
    nop                                           ; $523f: $00
    ccf                                           ; $5240: $3f
    ld h, b                                       ; $5241: $60
    ccf                                           ; $5242: $3f
    ld h, b                                       ; $5243: $60
    jr nz, jr_008_52a6                            ; $5244: $20 $60

    ccf                                           ; $5246: $3f
    ld h, b                                       ; $5247: $60
    ccf                                           ; $5248: $3f
    ld h, b                                       ; $5249: $60
    ccf                                           ; $524a: $3f
    ld h, b                                       ; $524b: $60
    ccf                                           ; $524c: $3f
    ld h, b                                       ; $524d: $60
    ccf                                           ; $524e: $3f
    ld h, b                                       ; $524f: $60
    ld a, l                                       ; $5250: $7d
    nop                                           ; $5251: $00
    ld a, l                                       ; $5252: $7d
    nop                                           ; $5253: $00
    nop                                           ; $5254: $00
    nop                                           ; $5255: $00
    ld a, l                                       ; $5256: $7d
    nop                                           ; $5257: $00
    ld a, l                                       ; $5258: $7d
    nop                                           ; $5259: $00
    ld a, l                                       ; $525a: $7d
    nop                                           ; $525b: $00
    ld a, l                                       ; $525c: $7d
    nop                                           ; $525d: $00
    ld a, l                                       ; $525e: $7d
    nop                                           ; $525f: $00
    rst RST_30                                    ; $5260: $f7
    nop                                           ; $5261: $00
    rst RST_30                                    ; $5262: $f7
    nop                                           ; $5263: $00
    nop                                           ; $5264: $00
    nop                                           ; $5265: $00
    rst RST_30                                    ; $5266: $f7
    nop                                           ; $5267: $00
    rst RST_30                                    ; $5268: $f7
    nop                                           ; $5269: $00
    rst RST_30                                    ; $526a: $f7
    nop                                           ; $526b: $00
    rst RST_30                                    ; $526c: $f7
    nop                                           ; $526d: $00
    rst RST_30                                    ; $526e: $f7
    nop                                           ; $526f: $00
    rst RST_18                                    ; $5270: $df
    nop                                           ; $5271: $00
    rst RST_18                                    ; $5272: $df
    nop                                           ; $5273: $00
    nop                                           ; $5274: $00
    nop                                           ; $5275: $00
    rst RST_18                                    ; $5276: $df
    nop                                           ; $5277: $00
    rst RST_18                                    ; $5278: $df
    nop                                           ; $5279: $00
    rst RST_18                                    ; $527a: $df
    nop                                           ; $527b: $00
    rst RST_18                                    ; $527c: $df
    nop                                           ; $527d: $00
    rst RST_18                                    ; $527e: $df
    nop                                           ; $527f: $00
    db $fd                                        ; $5280: $fd
    add b                                         ; $5281: $80
    db $fd                                        ; $5282: $fd
    add b                                         ; $5283: $80
    add b                                         ; $5284: $80
    add b                                         ; $5285: $80
    db $fd                                        ; $5286: $fd
    add b                                         ; $5287: $80
    db $fd                                        ; $5288: $fd
    add b                                         ; $5289: $80
    db $fd                                        ; $528a: $fd
    add b                                         ; $528b: $80
    db $fd                                        ; $528c: $fd
    add b                                         ; $528d: $80
    db $fd                                        ; $528e: $fd
    add b                                         ; $528f: $80
    rst RST_30                                    ; $5290: $f7
    nop                                           ; $5291: $00
    rst RST_30                                    ; $5292: $f7
    nop                                           ; $5293: $00
    nop                                           ; $5294: $00
    nop                                           ; $5295: $00
    rst RST_30                                    ; $5296: $f7
    nop                                           ; $5297: $00
    rst RST_30                                    ; $5298: $f7
    nop                                           ; $5299: $00
    rst RST_30                                    ; $529a: $f7
    nop                                           ; $529b: $00
    rst RST_30                                    ; $529c: $f7
    nop                                           ; $529d: $00
    rst RST_30                                    ; $529e: $f7
    nop                                           ; $529f: $00
    rst RST_18                                    ; $52a0: $df
    nop                                           ; $52a1: $00
    rst RST_18                                    ; $52a2: $df
    nop                                           ; $52a3: $00
    nop                                           ; $52a4: $00
    nop                                           ; $52a5: $00

jr_008_52a6:
    rst RST_18                                    ; $52a6: $df
    nop                                           ; $52a7: $00
    rst RST_18                                    ; $52a8: $df
    nop                                           ; $52a9: $00
    rst RST_18                                    ; $52aa: $df
    nop                                           ; $52ab: $00
    rst RST_18                                    ; $52ac: $df
    nop                                           ; $52ad: $00
    rst RST_18                                    ; $52ae: $df
    nop                                           ; $52af: $00
    ld a, a                                       ; $52b0: $7f
    ld [bc], a                                    ; $52b1: $02
    ld a, a                                       ; $52b2: $7f
    ld [bc], a                                    ; $52b3: $02
    inc bc                                        ; $52b4: $03
    ld [bc], a                                    ; $52b5: $02
    ld a, a                                       ; $52b6: $7f
    ld [bc], a                                    ; $52b7: $02
    ld a, a                                       ; $52b8: $7f
    ld [bc], a                                    ; $52b9: $02
    ld a, a                                       ; $52ba: $7f
    ld [bc], a                                    ; $52bb: $02
    ld a, a                                       ; $52bc: $7f
    ld [bc], a                                    ; $52bd: $02
    ld a, a                                       ; $52be: $7f
    ld [bc], a                                    ; $52bf: $02
    add e                                         ; $52c0: $83
    sbc a                                         ; $52c1: $9f
    nop                                           ; $52c2: $00
    stop                                          ; $52c3: $10 $00
    ld d, d                                       ; $52c5: $52
    ld b, d                                       ; $52c6: $42
    ld [hl], d                                    ; $52c7: $72
    ld b, d                                       ; $52c8: $42
    ld b, d                                       ; $52c9: $42
    ld b, e                                       ; $52ca: $43
    ld a, a                                       ; $52cb: $7f
    ld b, e                                       ; $52cc: $43
    ld b, e                                       ; $52cd: $43
    ld b, e                                       ; $52ce: $43
    ld b, e                                       ; $52cf: $43
    rst RST_08                                    ; $52d0: $cf
    rst RST_08                                    ; $52d1: $cf
    rst RST_18                                    ; $52d2: $df
    rst RST_18                                    ; $52d3: $df
    ld e, a                                       ; $52d4: $5f
    rst RST_18                                    ; $52d5: $df
    ld e, a                                       ; $52d6: $5f
    rst RST_18                                    ; $52d7: $df
    ld e, a                                       ; $52d8: $5f
    rst RST_18                                    ; $52d9: $df
    rra                                           ; $52da: $1f
    ld e, a                                       ; $52db: $5f
    rra                                           ; $52dc: $1f
    ld e, a                                       ; $52dd: $5f
    sbc a                                         ; $52de: $9f
    cp a                                          ; $52df: $bf
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
    ld [bc], a                                    ; $5332: $02
    nop                                           ; $5333: $00
    inc bc                                        ; $5334: $03
    nop                                           ; $5335: $00
    inc bc                                        ; $5336: $03
    nop                                           ; $5337: $00
    ld [bc], a                                    ; $5338: $02
    nop                                           ; $5339: $00
    nop                                           ; $533a: $00
    nop                                           ; $533b: $00
    nop                                           ; $533c: $00
    nop                                           ; $533d: $00
    nop                                           ; $533e: $00
    nop                                           ; $533f: $00
    jr nz, jr_008_53a2                            ; $5340: $20 $60

    ccf                                           ; $5342: $3f
    ld h, b                                       ; $5343: $60
    ccf                                           ; $5344: $3f
    ld h, b                                       ; $5345: $60
    ccf                                           ; $5346: $3f
    ld h, b                                       ; $5347: $60
    ccf                                           ; $5348: $3f
    ld h, b                                       ; $5349: $60
    ccf                                           ; $534a: $3f
    ld h, b                                       ; $534b: $60
    ccf                                           ; $534c: $3f
    ld a, a                                       ; $534d: $7f
    ld a, a                                       ; $534e: $7f
    nop                                           ; $534f: $00
    nop                                           ; $5350: $00
    nop                                           ; $5351: $00
    ld a, l                                       ; $5352: $7d
    nop                                           ; $5353: $00
    ld a, l                                       ; $5354: $7d
    nop                                           ; $5355: $00
    ld a, l                                       ; $5356: $7d
    nop                                           ; $5357: $00
    ld a, l                                       ; $5358: $7d
    nop                                           ; $5359: $00
    ld a, l                                       ; $535a: $7d
    nop                                           ; $535b: $00
    rst RST_38                                    ; $535c: $ff
    rst RST_38                                    ; $535d: $ff
    rst RST_38                                    ; $535e: $ff
    nop                                           ; $535f: $00
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    rst RST_30                                    ; $5362: $f7
    nop                                           ; $5363: $00
    rst RST_30                                    ; $5364: $f7
    nop                                           ; $5365: $00
    rst RST_30                                    ; $5366: $f7
    nop                                           ; $5367: $00
    rst RST_30                                    ; $5368: $f7
    nop                                           ; $5369: $00
    rst RST_30                                    ; $536a: $f7
    nop                                           ; $536b: $00
    rst RST_38                                    ; $536c: $ff
    rst RST_38                                    ; $536d: $ff
    rst RST_38                                    ; $536e: $ff
    nop                                           ; $536f: $00
    nop                                           ; $5370: $00
    nop                                           ; $5371: $00
    rst RST_18                                    ; $5372: $df
    nop                                           ; $5373: $00
    rst RST_18                                    ; $5374: $df
    nop                                           ; $5375: $00
    rst RST_18                                    ; $5376: $df
    nop                                           ; $5377: $00
    rst RST_18                                    ; $5378: $df
    nop                                           ; $5379: $00
    rst RST_18                                    ; $537a: $df
    nop                                           ; $537b: $00
    rst RST_38                                    ; $537c: $ff
    rst RST_38                                    ; $537d: $ff
    rst RST_38                                    ; $537e: $ff
    nop                                           ; $537f: $00
    add b                                         ; $5380: $80
    add b                                         ; $5381: $80
    db $fd                                        ; $5382: $fd
    add b                                         ; $5383: $80
    db $fd                                        ; $5384: $fd

jr_008_5385:
    add b                                         ; $5385: $80
    db $fd                                        ; $5386: $fd

jr_008_5387:
    add b                                         ; $5387: $80
    db $fd                                        ; $5388: $fd
    add b                                         ; $5389: $80
    db $fd                                        ; $538a: $fd
    add b                                         ; $538b: $80
    rst RST_38                                    ; $538c: $ff
    rst RST_38                                    ; $538d: $ff
    rst RST_38                                    ; $538e: $ff
    nop                                           ; $538f: $00
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    rst RST_30                                    ; $5392: $f7
    nop                                           ; $5393: $00
    rst RST_30                                    ; $5394: $f7
    nop                                           ; $5395: $00
    rst RST_30                                    ; $5396: $f7
    nop                                           ; $5397: $00
    rst RST_30                                    ; $5398: $f7
    nop                                           ; $5399: $00
    rst RST_30                                    ; $539a: $f7
    nop                                           ; $539b: $00
    rst RST_38                                    ; $539c: $ff
    rst RST_38                                    ; $539d: $ff
    rst RST_38                                    ; $539e: $ff
    nop                                           ; $539f: $00
    nop                                           ; $53a0: $00
    nop                                           ; $53a1: $00

jr_008_53a2:
    rst RST_18                                    ; $53a2: $df
    nop                                           ; $53a3: $00
    rst RST_18                                    ; $53a4: $df
    nop                                           ; $53a5: $00
    rst RST_18                                    ; $53a6: $df
    nop                                           ; $53a7: $00
    rst RST_18                                    ; $53a8: $df
    nop                                           ; $53a9: $00
    rst RST_18                                    ; $53aa: $df
    nop                                           ; $53ab: $00
    rst RST_38                                    ; $53ac: $ff
    rst RST_38                                    ; $53ad: $ff
    rst RST_38                                    ; $53ae: $ff
    nop                                           ; $53af: $00
    inc bc                                        ; $53b0: $03
    ld [bc], a                                    ; $53b1: $02
    ld a, a                                       ; $53b2: $7f
    ld [bc], a                                    ; $53b3: $02
    ld a, a                                       ; $53b4: $7f
    ld [bc], a                                    ; $53b5: $02
    ld a, a                                       ; $53b6: $7f
    ld [bc], a                                    ; $53b7: $02
    ld a, a                                       ; $53b8: $7f
    ld [bc], a                                    ; $53b9: $02
    ld a, a                                       ; $53ba: $7f
    ld [bc], a                                    ; $53bb: $02
    rst RST_38                                    ; $53bc: $ff
    cp $ff                                        ; $53bd: $fe $ff
    nop                                           ; $53bf: $00
    add c                                         ; $53c0: $81
    db $db                                        ; $53c1: $db
    sbc c                                         ; $53c2: $99
    db $db                                        ; $53c3: $db
    sbc c                                         ; $53c4: $99
    sbc c                                         ; $53c5: $99
    jr jr_008_5385                                ; $53c6: $18 $bd

    jr jr_008_5387                                ; $53c8: $18 $bd

    inc a                                         ; $53ca: $3c
    inc a                                         ; $53cb: $3c
    inc c                                         ; $53cc: $0c
    inc c                                         ; $53cd: $0c
    rst RST_38                                    ; $53ce: $ff
    nop                                           ; $53cf: $00
    rst RST_18                                    ; $53d0: $df
    rst RST_18                                    ; $53d1: $df
    rst RST_18                                    ; $53d2: $df
    rst RST_18                                    ; $53d3: $df
    rst RST_18                                    ; $53d4: $df
    rst RST_18                                    ; $53d5: $df
    rst RST_18                                    ; $53d6: $df
    rst RST_18                                    ; $53d7: $df
    rst RST_18                                    ; $53d8: $df
    rst RST_18                                    ; $53d9: $df
    rst RST_18                                    ; $53da: $df
    rst RST_18                                    ; $53db: $df
    rra                                           ; $53dc: $1f
    ld e, a                                       ; $53dd: $5f
    rst RST_38                                    ; $53de: $ff
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
    rst RST_38                                    ; $5404: $ff
    nop                                           ; $5405: $00
    rst RST_38                                    ; $5406: $ff
    rst RST_38                                    ; $5407: $ff
    db $fc                                        ; $5408: $fc
    db $fc                                        ; $5409: $fc
    ld hl, sp-$07                                 ; $540a: $f8 $f9
    ldh a, [$fffa]                                ; $540c: $f0 $fa
    ldh a, [$fff2]                                ; $540e: $f0 $f2
    nop                                           ; $5410: $00
    nop                                           ; $5411: $00
    nop                                           ; $5412: $00
    nop                                           ; $5413: $00
    rst RST_38                                    ; $5414: $ff
    nop                                           ; $5415: $00
    rst RST_38                                    ; $5416: $ff
    rst RST_38                                    ; $5417: $ff
    ld a, a                                       ; $5418: $7f
    ld a, a                                       ; $5419: $7f
    ccf                                           ; $541a: $3f
    rst RST_38                                    ; $541b: $ff
    ccf                                           ; $541c: $3f
    cp a                                          ; $541d: $bf
    ccf                                           ; $541e: $3f
    ccf                                           ; $541f: $3f
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00
    nop                                           ; $5423: $00
    rst RST_38                                    ; $5424: $ff
    nop                                           ; $5425: $00
    rst RST_38                                    ; $5426: $ff
    rst RST_38                                    ; $5427: $ff
    rst RST_00                                    ; $5428: $c7
    rst RST_00                                    ; $5429: $c7
    add e                                         ; $542a: $83
    sbc a                                         ; $542b: $9f
    inc bc                                        ; $542c: $03
    xor e                                         ; $542d: $ab
    inc bc                                        ; $542e: $03
    inc hl                                        ; $542f: $23
    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    nop                                           ; $5432: $00
    nop                                           ; $5433: $00
    rst RST_38                                    ; $5434: $ff
    nop                                           ; $5435: $00
    rst RST_38                                    ; $5436: $ff
    rst RST_38                                    ; $5437: $ff
    rst RST_38                                    ; $5438: $ff
    rst RST_38                                    ; $5439: $ff
    ld a, a                                       ; $543a: $7f
    ld a, a                                       ; $543b: $7f
    ccf                                           ; $543c: $3f
    ld a, a                                       ; $543d: $7f
    rra                                           ; $543e: $1f
    cp a                                          ; $543f: $bf
    nop                                           ; $5440: $00
    nop                                           ; $5441: $00
    nop                                           ; $5442: $00
    nop                                           ; $5443: $00
    rst RST_38                                    ; $5444: $ff
    nop                                           ; $5445: $00
    rst RST_38                                    ; $5446: $ff
    rst RST_38                                    ; $5447: $ff
    rst RST_00                                    ; $5448: $c7
    rst RST_10                                    ; $5449: $d7
    add [hl]                                      ; $544a: $86
    add [hl]                                      ; $544b: $86
    sbc [hl]                                      ; $544c: $9e
    cp [hl]                                       ; $544d: $be
    sbc $df                                       ; $544e: $de $df
    nop                                           ; $5450: $00
    nop                                           ; $5451: $00
    nop                                           ; $5452: $00
    nop                                           ; $5453: $00
    rst RST_38                                    ; $5454: $ff
    nop                                           ; $5455: $00
    rst RST_38                                    ; $5456: $ff
    rst RST_38                                    ; $5457: $ff
    rst RST_38                                    ; $5458: $ff
    rst RST_38                                    ; $5459: $ff
    cp $ff                                        ; $545a: $fe $ff
    ld a, h                                       ; $545c: $7c
    cp $3c                                        ; $545d: $fe $3c
    ld a, h                                       ; $545f: $7c
    nop                                           ; $5460: $00
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    nop                                           ; $5463: $00
    rst RST_38                                    ; $5464: $ff
    nop                                           ; $5465: $00
    rst RST_38                                    ; $5466: $ff
    rst RST_38                                    ; $5467: $ff
    rra                                           ; $5468: $1f
    sbc a                                         ; $5469: $9f
    rrca                                          ; $546a: $0f
    ld e, a                                       ; $546b: $5f
    rlca                                          ; $546c: $07
    rrca                                          ; $546d: $0f
    inc sp                                        ; $546e: $33
    inc sp                                        ; $546f: $33
    nop                                           ; $5470: $00
    nop                                           ; $5471: $00
    nop                                           ; $5472: $00
    nop                                           ; $5473: $00
    rst RST_38                                    ; $5474: $ff
    nop                                           ; $5475: $00
    rst RST_38                                    ; $5476: $ff
    rst RST_38                                    ; $5477: $ff
    ld sp, hl                                     ; $5478: $f9
    ld sp, hl                                     ; $5479: $f9
    ldh a, [$fff0]                                ; $547a: $f0 $f0
    ldh a, [$fff1]                                ; $547c: $f0 $f1
    ldh a, [$fffa]                                ; $547e: $f0 $fa
    nop                                           ; $5480: $00
    nop                                           ; $5481: $00
    nop                                           ; $5482: $00
    nop                                           ; $5483: $00
    rst RST_38                                    ; $5484: $ff
    nop                                           ; $5485: $00
    rst RST_38                                    ; $5486: $ff
    rst RST_38                                    ; $5487: $ff
    rst RST_38                                    ; $5488: $ff
    rst RST_38                                    ; $5489: $ff
    ld a, a                                       ; $548a: $7f
    ld a, a                                       ; $548b: $7f
    inc hl                                        ; $548c: $23
    rst RST_20                                    ; $548d: $e7
    dec sp                                        ; $548e: $3b
    cp e                                          ; $548f: $bb
    nop                                           ; $5490: $00
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
    nop                                           ; $5493: $00
    rst RST_38                                    ; $5494: $ff
    nop                                           ; $5495: $00
    rst RST_28                                    ; $5496: $ef
    rst RST_28                                    ; $5497: $ef
    rst RST_08                                    ; $5498: $cf
    rst RST_08                                    ; $5499: $cf
    add e                                         ; $549a: $83
    rst RST_10                                    ; $549b: $d7
    ld bc, $01a9                                  ; $549c: $01 $a9 $01
    ld hl, $0000                                  ; $549f: $21 $00 $00
    nop                                           ; $54a2: $00
    nop                                           ; $54a3: $00
    rst RST_38                                    ; $54a4: $ff
    nop                                           ; $54a5: $00
    rst RST_38                                    ; $54a6: $ff
    rst RST_38                                    ; $54a7: $ff
    rst RST_38                                    ; $54a8: $ff
    rst RST_38                                    ; $54a9: $ff
    ld a, a                                       ; $54aa: $7f
    ld a, a                                       ; $54ab: $7f
    ccf                                           ; $54ac: $3f
    ld a, a                                       ; $54ad: $7f
    rra                                           ; $54ae: $1f
    cp a                                          ; $54af: $bf
    nop                                           ; $54b0: $00
    nop                                           ; $54b1: $00
    nop                                           ; $54b2: $00
    nop                                           ; $54b3: $00
    rst RST_38                                    ; $54b4: $ff
    nop                                           ; $54b5: $00
    rst RST_38                                    ; $54b6: $ff
    rst RST_38                                    ; $54b7: $ff
    rst RST_00                                    ; $54b8: $c7
    rst RST_10                                    ; $54b9: $d7
    add a                                         ; $54ba: $87
    add a                                         ; $54bb: $87
    sbc a                                         ; $54bc: $9f
    cp a                                          ; $54bd: $bf
    rst RST_18                                    ; $54be: $df
    rst RST_18                                    ; $54bf: $df
    nop                                           ; $54c0: $00
    nop                                           ; $54c1: $00
    nop                                           ; $54c2: $00
    nop                                           ; $54c3: $00
    rst RST_38                                    ; $54c4: $ff
    nop                                           ; $54c5: $00
    rst RST_38                                    ; $54c6: $ff
    rst RST_38                                    ; $54c7: $ff
    rst RST_38                                    ; $54c8: $ff
    rst RST_38                                    ; $54c9: $ff
    ld a, [hl]                                    ; $54ca: $7e
    cp $3c                                        ; $54cb: $fe $3c
    ld a, [hl]                                    ; $54cd: $7e
    inc a                                         ; $54ce: $3c
    inc a                                         ; $54cf: $3c
    nop                                           ; $54d0: $00
    nop                                           ; $54d1: $00
    nop                                           ; $54d2: $00
    nop                                           ; $54d3: $00
    rst RST_38                                    ; $54d4: $ff
    nop                                           ; $54d5: $00
    rst RST_38                                    ; $54d6: $ff
    rst RST_38                                    ; $54d7: $ff
    rra                                           ; $54d8: $1f
    rra                                           ; $54d9: $1f
    rrca                                          ; $54da: $0f
    ld a, a                                       ; $54db: $7f
    rrca                                          ; $54dc: $0f
    xor a                                         ; $54dd: $af
    rrca                                          ; $54de: $0f
    adc a                                         ; $54df: $8f
    nop                                           ; $54e0: $00
    nop                                           ; $54e1: $00
    nop                                           ; $54e2: $00
    nop                                           ; $54e3: $00
    rst RST_38                                    ; $54e4: $ff
    nop                                           ; $54e5: $00
    ei                                            ; $54e6: $fb
    ei                                            ; $54e7: $fb
    di                                            ; $54e8: $f3
    di                                            ; $54e9: $f3
    ldh [$fff5], a                                ; $54ea: $e0 $f5
    ret nz                                        ; $54ec: $c0

    ld [$c8c0], a                                 ; $54ed: $ea $c0 $c8
    nop                                           ; $54f0: $00
    nop                                           ; $54f1: $00
    nop                                           ; $54f2: $00
    nop                                           ; $54f3: $00
    rst RST_38                                    ; $54f4: $ff
    nop                                           ; $54f5: $00
    rst RST_38                                    ; $54f6: $ff
    rst RST_38                                    ; $54f7: $ff
    rst RST_38                                    ; $54f8: $ff
    rst RST_38                                    ; $54f9: $ff
    rst RST_18                                    ; $54fa: $df
    rst RST_18                                    ; $54fb: $df
    ld c, a                                       ; $54fc: $4f
    ld e, a                                       ; $54fd: $5f
    ld b, a                                       ; $54fe: $47
    ld l, a                                       ; $54ff: $6f
    ldh a, [$fff3]                                ; $5500: $f0 $f3
    ldh [$ffe2], a                                ; $5502: $e0 $e2
    ldh [$ffea], a                                ; $5504: $e0 $ea
    add sp, -$12                                  ; $5506: $e8 $ee
    add sp, -$14                                  ; $5508: $e8 $ec
    db $ec                                        ; $550a: $ec
    rst RST_28                                    ; $550b: $ef
    add sp, -$18                                  ; $550c: $e8 $e8
    ldh [$ffe8], a                                ; $550e: $e0 $e8
    ld a, a                                       ; $5510: $7f
    rst RST_38                                    ; $5511: $ff
    ld e, $1e                                     ; $5512: $1e $1e
    inc e                                         ; $5514: $1c
    ld e, [hl]                                    ; $5515: $5e
    ld e, h                                       ; $5516: $5c
    ld e, [hl]                                    ; $5517: $5e
    ld e, h                                       ; $5518: $5c
    sbc $dc                                       ; $5519: $de $dc
    sbc $4c                                       ; $551b: $de $4c
    ld e, [hl]                                    ; $551d: $5e
    ld l, $6e                                     ; $551e: $2e $6e
    rlca                                          ; $5520: $07
    ccf                                           ; $5521: $3f
    ld bc, $0021                                  ; $5522: $01 $21 $00
    and l                                         ; $5525: $a5
    add h                                         ; $5526: $84
    push hl                                       ; $5527: $e5
    add h                                         ; $5528: $84
    add l                                         ; $5529: $85
    add [hl]                                      ; $552a: $86
    cp $86                                        ; $552b: $fe $86
    add [hl]                                      ; $552d: $86
    add a                                         ; $552e: $87
    add a                                         ; $552f: $87
    sbc a                                         ; $5530: $9f
    sbc a                                         ; $5531: $9f
    cp h                                          ; $5532: $bc
    cp [hl]                                       ; $5533: $be
    cp b                                          ; $5534: $b8
    cp l                                          ; $5535: $bd
    cp c                                          ; $5536: $b9
    cp l                                          ; $5537: $bd
    cp c                                          ; $5538: $b9
    cp l                                          ; $5539: $bd
    add hl, sp                                    ; $553a: $39
    cp l                                          ; $553b: $bd
    add hl, sp                                    ; $553c: $39
    cp l                                          ; $553d: $bd
    dec a                                         ; $553e: $3d
    ld a, l                                       ; $553f: $7d
    sbc a                                         ; $5540: $9f
    rst RST_18                                    ; $5541: $df
    inc bc                                        ; $5542: $03
    rlca                                          ; $5543: $07
    ld bc, $090b                                  ; $5544: $01 $0b $09
    dec bc                                        ; $5547: $0b
    add hl, bc                                    ; $5548: $09
    dec bc                                        ; $5549: $0b
    ld [$0cf9], sp                                ; $554a: $08 $f9 $0c
    dec c                                         ; $554d: $0d
    ld c, $0e                                     ; $554e: $0e $0e
    inc a                                         ; $5550: $3c
    inc a                                         ; $5551: $3c
    ld a, b                                       ; $5552: $78
    ld a, b                                       ; $5553: $78
    ld [hl], b                                    ; $5554: $70
    ld a, d                                       ; $5555: $7a
    ld [hl], d                                    ; $5556: $72
    ld a, e                                       ; $5557: $7b
    ld [hl], d                                    ; $5558: $72
    ld a, d                                       ; $5559: $7a
    ld [hl], d                                    ; $555a: $72
    ld a, e                                       ; $555b: $7b
    ld [hl], d                                    ; $555c: $72
    ld a, d                                       ; $555d: $7a
    ld a, d                                       ; $555e: $7a
    ld a, [$ff1f]                                 ; $555f: $fa $1f $ff
    rlca                                          ; $5562: $07
    add a                                         ; $5563: $87
    inc bc                                        ; $5564: $03
    sub a                                         ; $5565: $97
    inc de                                        ; $5566: $13
    sub a                                         ; $5567: $97
    inc de                                        ; $5568: $13
    rla                                           ; $5569: $17
    add hl, de                                    ; $556a: $19
    ei                                            ; $556b: $fb
    add hl, de                                    ; $556c: $19
    dec de                                        ; $556d: $1b
    dec e                                         ; $556e: $1d
    dec e                                         ; $556f: $1d
    ret nc                                        ; $5570: $d0

    jp nc, $ab80                                  ; $5571: $d2 $80 $ab

    and b                                         ; $5574: $a0
    or [hl]                                       ; $5575: $b6
    add b                                         ; $5576: $80
    xor e                                         ; $5577: $ab
    adc b                                         ; $5578: $88
    sbc h                                         ; $5579: $9c
    ret nz                                        ; $557a: $c0

    call nz, $fffc                                ; $557b: $c4 $fc $ff
    ld hl, sp-$08                                 ; $557e: $f8 $f8
    inc bc                                        ; $5580: $03
    daa                                           ; $5581: $27
    ld c, $de                                     ; $5582: $0e $de
    ld e, $be                                     ; $5584: $1e $be
    ld e, $5f                                     ; $5586: $1e $5f
    ld c, a                                       ; $5588: $4f
    ld l, a                                       ; $5589: $6f
    rrca                                          ; $558a: $0f
    adc a                                         ; $558b: $8f
    rst RST_38                                    ; $558c: $ff
    rst RST_38                                    ; $558d: $ff
    ld a, a                                       ; $558e: $7f
    ld a, a                                       ; $558f: $7f
    ld b, $3e                                     ; $5590: $06 $3e
    nop                                           ; $5592: $00
    and l                                         ; $5593: $a5
    nop                                           ; $5594: $00
    ld l, e                                       ; $5595: $6b
    nop                                           ; $5596: $00
    dec [hl]                                      ; $5597: $35
    inc b                                         ; $5598: $04
    adc l                                         ; $5599: $8d
    add [hl]                                      ; $559a: $86
    cp $86                                        ; $559b: $fe $86
    add a                                         ; $559d: $87
    add a                                         ; $559e: $87
    add a                                         ; $559f: $87
    rra                                           ; $55a0: $1f
    sbc a                                         ; $55a1: $9f
    sbc h                                         ; $55a2: $9c
    sbc [hl]                                      ; $55a3: $9e
    sbc b                                         ; $55a4: $98
    sbc l                                         ; $55a5: $9d
    sbc c                                         ; $55a6: $99
    cp l                                          ; $55a7: $bd
    cp c                                          ; $55a8: $b9
    cp l                                          ; $55a9: $bd
    add hl, sp                                    ; $55aa: $39
    cp l                                          ; $55ab: $bd
    add hl, sp                                    ; $55ac: $39
    dec a                                         ; $55ad: $3d
    db $fd                                        ; $55ae: $fd
    db $fd                                        ; $55af: $fd
    sbc a                                         ; $55b0: $9f
    rst RST_18                                    ; $55b1: $df
    inc bc                                        ; $55b2: $03
    rlca                                          ; $55b3: $07
    ld bc, $090b                                  ; $55b4: $01 $0b $09
    dec bc                                        ; $55b7: $0b
    ld [$080b], sp                                ; $55b8: $08 $0b $08
    ld a, [$0a08]                                 ; $55bb: $fa $08 $0a
    dec c                                         ; $55be: $0d
    dec c                                         ; $55bf: $0d
    inc a                                         ; $55c0: $3c
    inc a                                         ; $55c1: $3c
    jr c, jr_008_55fc                             ; $55c2: $38 $38

    jr nc, jr_008_5600                            ; $55c4: $30 $3a

    ld [hl-], a                                   ; $55c6: $32
    ld a, e                                       ; $55c7: $7b
    ld [hl], d                                    ; $55c8: $72
    ld a, d                                       ; $55c9: $7a
    ld [hl], d                                    ; $55ca: $72
    ei                                            ; $55cb: $fb
    ldh a, [c]                                    ; $55cc: $f2
    ld a, [$fafa]                                 ; $55cd: $fa $fa $fa
    rra                                           ; $55d0: $1f
    rst RST_38                                    ; $55d1: $ff
    rlca                                          ; $55d2: $07
    add a                                         ; $55d3: $87
    inc bc                                        ; $55d4: $03
    sub a                                         ; $55d5: $97
    inc de                                        ; $55d6: $13
    sub a                                         ; $55d7: $97
    inc de                                        ; $55d8: $13
    rla                                           ; $55d9: $17
    inc de                                        ; $55da: $13
    rst RST_30                                    ; $55db: $f7
    inc de                                        ; $55dc: $13
    rla                                           ; $55dd: $17
    dec de                                        ; $55de: $1b
    dec de                                        ; $55df: $1b
    pop bc                                        ; $55e0: $c1
    rst RST_08                                    ; $55e1: $cf
    add b                                         ; $55e2: $80
    xor c                                         ; $55e3: $a9
    add b                                         ; $55e4: $80
    sbc d                                         ; $55e5: $9a
    add b                                         ; $55e6: $80
    call $e3c1                                    ; $55e7: $cd $c1 $e3
    pop hl                                        ; $55ea: $e1
    rst RST_38                                    ; $55eb: $ff
    pop hl                                        ; $55ec: $e1
    pop hl                                        ; $55ed: $e1
    pop hl                                        ; $55ee: $e1
    pop hl                                        ; $55ef: $e1
    add a                                         ; $55f0: $87
    and a                                         ; $55f1: $a7
    daa                                           ; $55f2: $27
    ld h, a                                       ; $55f3: $67
    ld h, $e7                                     ; $55f4: $26 $e7
    ld h, $6f                                     ; $55f6: $26 $6f
    ld l, $6f                                     ; $55f8: $2e $6f
    adc [hl]                                      ; $55fa: $8e
    xor a                                         ; $55fb: $af

jr_008_55fc:
    adc [hl]                                      ; $55fc: $8e
    rst RST_08                                    ; $55fd: $cf
    rst RST_38                                    ; $55fe: $ff
    rst RST_38                                    ; $55ff: $ff

jr_008_5600:
    ldh a, [$fff8]                                ; $5600: $f0 $f8
    ldh a, [$fff8]                                ; $5602: $f0 $f8
    ld hl, sp-$08                                 ; $5604: $f8 $f8
    ld hl, sp-$04                                 ; $5606: $f8 $fc
    ld hl, sp-$04                                 ; $5608: $f8 $fc
    ld hl, sp-$04                                 ; $560a: $f8 $fc
    ld hl, sp-$04                                 ; $560c: $f8 $fc
    rst RST_38                                    ; $560e: $ff
    nop                                           ; $560f: $00
    ccf                                           ; $5610: $3f
    ld a, a                                       ; $5611: $7f
    ccf                                           ; $5612: $3f
    ld a, a                                       ; $5613: $7f
    ld a, a                                       ; $5614: $7f
    ld a, a                                       ; $5615: $7f
    ld a, [hl]                                    ; $5616: $7e
    rst RST_38                                    ; $5617: $ff
    ld a, [hl]                                    ; $5618: $7e
    rst RST_38                                    ; $5619: $ff
    ld a, [hl]                                    ; $561a: $7e
    cp $7e                                        ; $561b: $fe $7e
    cp $ff                                        ; $561d: $fe $ff
    nop                                           ; $561f: $00
    inc bc                                        ; $5620: $03
    or a                                          ; $5621: $b7
    inc sp                                        ; $5622: $33
    or a                                          ; $5623: $b7
    inc sp                                        ; $5624: $33
    inc sp                                        ; $5625: $33
    ld sp, $317b                                  ; $5626: $31 $7b $31
    ld a, e                                       ; $5629: $7b
    ld a, c                                       ; $562a: $79
    ld a, c                                       ; $562b: $79
    jr jr_008_5646                                ; $562c: $18 $18

    rst RST_38                                    ; $562e: $ff
    nop                                           ; $562f: $00
    cp [hl]                                       ; $5630: $be
    cp a                                          ; $5631: $bf
    cp [hl]                                       ; $5632: $be
    cp a                                          ; $5633: $bf
    cp [hl]                                       ; $5634: $be
    cp [hl]                                       ; $5635: $be
    cp h                                          ; $5636: $bc
    cp [hl]                                       ; $5637: $be
    cp h                                          ; $5638: $bc
    cp [hl]                                       ; $5639: $be
    cp h                                          ; $563a: $bc
    cp h                                          ; $563b: $bc
    inc a                                         ; $563c: $3c
    cp h                                          ; $563d: $bc
    rst RST_38                                    ; $563e: $ff
    nop                                           ; $563f: $00
    rlca                                          ; $5640: $07
    ld l, a                                       ; $5641: $6f
    ld h, a                                       ; $5642: $67
    ld l, a                                       ; $5643: $6f
    ld h, a                                       ; $5644: $67
    ld h, a                                       ; $5645: $67

jr_008_5646:
    ld h, e                                       ; $5646: $63
    rst RST_30                                    ; $5647: $f7
    ld h, e                                       ; $5648: $63
    rst RST_30                                    ; $5649: $f7
    di                                            ; $564a: $f3
    di                                            ; $564b: $f3
    jr nc, jr_008_567f                            ; $564c: $30 $31

    rst RST_38                                    ; $564e: $ff
    nop                                           ; $564f: $00
    ld a, h                                       ; $5650: $7c
    ld a, [hl]                                    ; $5651: $7e
    ld a, h                                       ; $5652: $7c
    ld a, [hl]                                    ; $5653: $7e
    ld a, h                                       ; $5654: $7c
    ld a, h                                       ; $5655: $7c
    ld a, b                                       ; $5656: $78
    ld a, l                                       ; $5657: $7d
    ld a, b                                       ; $5658: $78
    ld a, l                                       ; $5659: $7d
    ld a, c                                       ; $565a: $79
    ld a, c                                       ; $565b: $79
    ld a, b                                       ; $565c: $78
    ld a, b                                       ; $565d: $78
    rst RST_38                                    ; $565e: $ff
    nop                                           ; $565f: $00
    rrca                                          ; $5660: $0f
    rst RST_18                                    ; $5661: $df
    rst RST_08                                    ; $5662: $cf
    rst RST_18                                    ; $5663: $df
    rst RST_08                                    ; $5664: $cf
    rst RST_08                                    ; $5665: $cf
    rst RST_00                                    ; $5666: $c7
    rst RST_28                                    ; $5667: $ef
    rst RST_00                                    ; $5668: $c7
    rst RST_28                                    ; $5669: $ef
    rst RST_20                                    ; $566a: $e7
    rst RST_20                                    ; $566b: $e7
    ld h, c                                       ; $566c: $61
    ld h, e                                       ; $566d: $63
    rst RST_38                                    ; $566e: $ff
    nop                                           ; $566f: $00
    ldh a, [$fff8]                                ; $5670: $f0 $f8
    ldh a, [$fff8]                                ; $5672: $f0 $f8
    ldh a, [$fff8]                                ; $5674: $f0 $f8
    ld hl, sp-$08                                 ; $5676: $f8 $f8
    ld hl, sp-$04                                 ; $5678: $f8 $fc
    ld hl, sp-$04                                 ; $567a: $f8 $fc
    ld hl, sp-$04                                 ; $567c: $f8 $fc
    rst RST_38                                    ; $567e: $ff

jr_008_567f:
    nop                                           ; $567f: $00
    ccf                                           ; $5680: $3f
    ld a, a                                       ; $5681: $7f
    ccf                                           ; $5682: $3f
    ld a, a                                       ; $5683: $7f
    ccf                                           ; $5684: $3f
    ld a, a                                       ; $5685: $7f
    ld a, [hl]                                    ; $5686: $7e
    ld a, a                                       ; $5687: $7f
    ld a, [hl]                                    ; $5688: $7e
    rst RST_38                                    ; $5689: $ff
    ld a, [hl]                                    ; $568a: $7e
    cp $7e                                        ; $568b: $fe $7e
    cp $ff                                        ; $568d: $fe $ff
    nop                                           ; $568f: $00
    inc bc                                        ; $5690: $03
    or a                                          ; $5691: $b7
    inc sp                                        ; $5692: $33
    or a                                          ; $5693: $b7
    inc sp                                        ; $5694: $33
    inc sp                                        ; $5695: $33
    ld sp, $317b                                  ; $5696: $31 $7b $31
    ld a, e                                       ; $5699: $7b
    ld a, c                                       ; $569a: $79
    ld a, c                                       ; $569b: $79
    jr jr_008_56b6                                ; $569c: $18 $18

    rst RST_38                                    ; $569e: $ff
    nop                                           ; $569f: $00
    cp $ff                                        ; $56a0: $fe $ff
    cp $ff                                        ; $56a2: $fe $ff
    cp $fe                                        ; $56a4: $fe $fe
    db $fc                                        ; $56a6: $fc
    cp $fc                                        ; $56a7: $fe $fc
    cp $fc                                        ; $56a9: $fe $fc
    db $fc                                        ; $56ab: $fc
    ld a, h                                       ; $56ac: $7c
    db $fc                                        ; $56ad: $fc
    rst RST_38                                    ; $56ae: $ff
    nop                                           ; $56af: $00
    rlca                                          ; $56b0: $07
    ld l, a                                       ; $56b1: $6f
    ld h, a                                       ; $56b2: $67
    ld l, a                                       ; $56b3: $6f
    ld h, a                                       ; $56b4: $67
    ld h, a                                       ; $56b5: $67

jr_008_56b6:
    ld h, e                                       ; $56b6: $63
    rst RST_30                                    ; $56b7: $f7
    ld h, e                                       ; $56b8: $63
    rst RST_30                                    ; $56b9: $f7
    di                                            ; $56ba: $f3
    di                                            ; $56bb: $f3
    jr nc, jr_008_56ef                            ; $56bc: $30 $31

    rst RST_38                                    ; $56be: $ff
    nop                                           ; $56bf: $00
    db $fc                                        ; $56c0: $fc
    cp $fc                                        ; $56c1: $fe $fc
    cp $fc                                        ; $56c3: $fe $fc
    db $fc                                        ; $56c5: $fc
    ld hl, sp-$03                                 ; $56c6: $f8 $fd
    ld hl, sp-$03                                 ; $56c8: $f8 $fd
    ld sp, hl                                     ; $56ca: $f9
    ld sp, hl                                     ; $56cb: $f9
    ld hl, sp-$08                                 ; $56cc: $f8 $f8
    rst RST_38                                    ; $56ce: $ff
    nop                                           ; $56cf: $00
    rrca                                          ; $56d0: $0f
    rst RST_18                                    ; $56d1: $df
    rst RST_08                                    ; $56d2: $cf
    rst RST_18                                    ; $56d3: $df
    rst RST_08                                    ; $56d4: $cf
    rst RST_08                                    ; $56d5: $cf
    rst RST_00                                    ; $56d6: $c7
    rst RST_28                                    ; $56d7: $ef
    rst RST_00                                    ; $56d8: $c7
    rst RST_28                                    ; $56d9: $ef
    rst RST_20                                    ; $56da: $e7
    rst RST_20                                    ; $56db: $e7
    ld h, c                                       ; $56dc: $61
    ld h, c                                       ; $56dd: $61
    rst RST_38                                    ; $56de: $ff
    nop                                           ; $56df: $00
    ret nz                                        ; $56e0: $c0

    db $ed                                        ; $56e1: $ed
    call z, $cced                                 ; $56e2: $cc $ed $cc
    call z, $de8c                                 ; $56e5: $cc $8c $de
    adc h                                         ; $56e8: $8c
    sbc $9e                                       ; $56e9: $de $9e
    sbc [hl]                                      ; $56eb: $9e
    add [hl]                                      ; $56ec: $86
    add [hl]                                      ; $56ed: $86
    rst RST_38                                    ; $56ee: $ff

jr_008_56ef:
    nop                                           ; $56ef: $00
    rst RST_38                                    ; $56f0: $ff
    rst RST_38                                    ; $56f1: $ff
    rst RST_38                                    ; $56f2: $ff
    rst RST_38                                    ; $56f3: $ff
    rst RST_38                                    ; $56f4: $ff
    rst RST_38                                    ; $56f5: $ff
    ld a, a                                       ; $56f6: $7f
    rst RST_38                                    ; $56f7: $ff
    ld a, a                                       ; $56f8: $7f
    rst RST_38                                    ; $56f9: $ff
    ld a, a                                       ; $56fa: $7f
    ld a, a                                       ; $56fb: $7f
    rra                                           ; $56fc: $1f
    ccf                                           ; $56fd: $3f
    rst RST_38                                    ; $56fe: $ff
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
    inc e                                         ; $5801: $1c
    inc e                                         ; $5802: $1c
    inc hl                                        ; $5803: $23
    ld a, $41                                     ; $5804: $3e $41
    ld a, $41                                     ; $5806: $3e $41
    ccf                                           ; $5808: $3f
    ld b, a                                       ; $5809: $47
    ld a, b                                       ; $580a: $78
    ld a, b                                       ; $580b: $78
    nop                                           ; $580c: $00
    nop                                           ; $580d: $00
    nop                                           ; $580e: $00
    nop                                           ; $580f: $00
    nop                                           ; $5810: $00
    jr nc, jr_008_5843                            ; $5811: $30 $30

    ld c, b                                       ; $5813: $48
    jr nc, jr_008_585e                            ; $5814: $30 $48

    ld a, b                                       ; $5816: $78
    ld a, b                                       ; $5817: $78
    nop                                           ; $5818: $00
    nop                                           ; $5819: $00
    nop                                           ; $581a: $00
    nop                                           ; $581b: $00
    nop                                           ; $581c: $00
    nop                                           ; $581d: $00
    nop                                           ; $581e: $00
    nop                                           ; $581f: $00
    nop                                           ; $5820: $00
    inc e                                         ; $5821: $1c
    inc e                                         ; $5822: $1c
    inc hl                                        ; $5823: $23
    ld a, $41                                     ; $5824: $3e $41
    ld a, $41                                     ; $5826: $3e $41
    ld a, $41                                     ; $5828: $3e $41
    ld a, $41                                     ; $582a: $3e $41
    ld a, $41                                     ; $582c: $3e $41
    ld e, l                                       ; $582e: $5d
    ld h, e                                       ; $582f: $63
    inc hl                                        ; $5830: $23
    ccf                                           ; $5831: $3f
    ld e, $1e                                     ; $5832: $1e $1e
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
    jr nc, jr_008_5873                            ; $5841: $30 $30

jr_008_5843:
    ld c, b                                       ; $5843: $48
    jr nc, @+$4a                                  ; $5844: $30 $48

jr_008_5846:
    jr nc, jr_008_5890                            ; $5846: $30 $48

    jr z, jr_008_58a2                             ; $5848: $28 $58

    ld a, b                                       ; $584a: $78
    ld a, b                                       ; $584b: $78
    nop                                           ; $584c: $00
    nop                                           ; $584d: $00
    nop                                           ; $584e: $00
    nop                                           ; $584f: $00
    rst RST_38                                    ; $5850: $ff
    rst RST_38                                    ; $5851: $ff
    xor d                                         ; $5852: $aa
    rst RST_38                                    ; $5853: $ff
    dec d                                         ; $5854: $15
    rst RST_38                                    ; $5855: $ff
    jp c, $a3ff                                   ; $5856: $da $ff $a3

    rst RST_38                                    ; $5859: $ff
    cp $fc                                        ; $585a: $fe $fc
    ld sp, hl                                     ; $585c: $f9
    add hl, bc                                    ; $585d: $09

jr_008_585e:
    ld a, [rIE]                                   ; $585e: $fa $ff $ff
    rst RST_38                                    ; $5861: $ff
    xor d                                         ; $5862: $aa
    rst RST_38                                    ; $5863: $ff
    dec d                                         ; $5864: $15
    rst RST_38                                    ; $5865: $ff
    sbc $ff                                       ; $5866: $de $ff
    or c                                          ; $5868: $b1
    ld hl, sp-$39                                 ; $5869: $f8 $c7
    ldh [$ff1f], a                                ; $586b: $e0 $1f
    add b                                         ; $586d: $80
    ld a, a                                       ; $586e: $7f
    nop                                           ; $586f: $00
    rst RST_38                                    ; $5870: $ff
    rst RST_38                                    ; $5871: $ff
    xor d                                         ; $5872: $aa

jr_008_5873:
    rst RST_38                                    ; $5873: $ff
    rst RST_38                                    ; $5874: $ff
    rst RST_38                                    ; $5875: $ff
    nop                                           ; $5876: $00
    add e                                         ; $5877: $83
    rst RST_38                                    ; $5878: $ff
    nop                                           ; $5879: $00
    rst RST_38                                    ; $587a: $ff
    nop                                           ; $587b: $00
    rst RST_38                                    ; $587c: $ff
    nop                                           ; $587d: $00
    rst RST_38                                    ; $587e: $ff
    nop                                           ; $587f: $00
    rst RST_38                                    ; $5880: $ff
    rst RST_38                                    ; $5881: $ff
    xor d                                         ; $5882: $aa
    rst RST_38                                    ; $5883: $ff
    dec d                                         ; $5884: $15
    rst RST_38                                    ; $5885: $ff
    jp c, Jump_000_32ff                           ; $5886: $da $ff $32

    ld a, a                                       ; $5889: $7f
    adc a                                         ; $588a: $8f
    rra                                           ; $588b: $1f
    sub c                                         ; $588c: $91
    ld h, $3c                                     ; $588d: $26 $3c
    ld a, a                                       ; $588f: $7f

jr_008_5890:
    inc c                                         ; $5890: $0c
    ld c, $09                                     ; $5891: $0e $09
    inc c                                         ; $5893: $0c
    inc de                                        ; $5894: $13
    jr @+$29                                      ; $5895: $18 $27

    jr nc, jr_008_58bd                            ; $5897: $30 $24

    ld h, b                                       ; $5899: $60
    ld b, b                                       ; $589a: $40
    ld h, e                                       ; $589b: $63
    ld c, c                                       ; $589c: $49
    db $fc                                        ; $589d: $fc
    ld d, e                                       ; $589e: $53
    ld hl, sp-$08                                 ; $589f: $f8 $f8
    nop                                           ; $58a1: $00

jr_008_58a2:
    ldh [rIF], a                                  ; $58a2: $e0 $0f
    rst RST_00                                    ; $58a4: $c7
    jr nc, jr_008_5846                            ; $58a5: $30 $9f

    ld h, b                                       ; $58a7: $60
    dec a                                         ; $58a8: $3d
    add e                                         ; $58a9: $83
    ld d, $ee                                     ; $58aa: $16 $ee
    ret z                                         ; $58ac: $c8

    dec e                                         ; $58ad: $1d
    db $e3                                        ; $58ae: $e3
    add hl, bc                                    ; $58af: $09
    dec a                                         ; $58b0: $3d
    ld bc, $cf06                                  ; $58b1: $01 $06 $cf
    reti                                          ; $58b4: $d9


    inc a                                         ; $58b5: $3c
    ld l, a                                       ; $58b6: $6f
    ldh [$ffba], a                                ; $58b7: $e0 $ba
    ld hl, sp+$7d                                 ; $58b9: $f8 $7d
    rst RST_38                                    ; $58bb: $ff
    rst RST_10                                    ; $58bc: $d7

jr_008_58bd:
    xor $bd                                       ; $58bd: $ee $bd

jr_008_58bf:
    add d                                         ; $58bf: $82
    call nz, Call_008_7fe0                        ; $58c0: $c4 $e0 $7f
    nop                                           ; $58c3: $00
    db $fc                                        ; $58c4: $fc
    nop                                           ; $58c5: $00
    rst RST_08                                    ; $58c6: $cf
    rra                                           ; $58c7: $1f
    ld a, h                                       ; $58c8: $7c
    rst RST_38                                    ; $58c9: $ff
    sbc [hl]                                      ; $58ca: $9e
    cp [hl]                                       ; $58cb: $be
    or $2e                                        ; $58cc: $f6 $2e
    rst RST_38                                    ; $58ce: $ff
    ld b, $00                                     ; $58cf: $06 $00
    ldh [$ffc0], a                                ; $58d1: $e0 $c0
    db $10                                        ; $58d3: $10
    ld h, b                                       ; $58d4: $60
    ld [$88b0], sp                                ; $58d5: $08 $b0 $88
    ld h, b                                       ; $58d8: $60
    ret z                                         ; $58d9: $c8

    ld l, b                                       ; $58da: $68
    ld e, b                                       ; $58db: $58
    sub b                                         ; $58dc: $90
    db $10                                        ; $58dd: $10
    jr nz, jr_008_5940                            ; $58de: $20 $60

    and a                                         ; $58e0: $a7
    ld hl, sp-$29                                 ; $58e1: $f8 $d7
    add sp, -$59                                  ; $58e3: $e8 $a7
    ret z                                         ; $58e5: $c8

    ld c, e                                       ; $58e6: $4b
    sbc b                                         ; $58e7: $98
    sbc l                                         ; $58e8: $9d
    inc a                                         ; $58e9: $3c
    ccf                                           ; $58ea: $3f
    ld a, a                                       ; $58eb: $7f
    ld a, a                                       ; $58ec: $7f
    rst RST_38                                    ; $58ed: $ff
    rst RST_38                                    ; $58ee: $ff
    rst RST_38                                    ; $58ef: $ff
    push af                                       ; $58f0: $f5
    add hl, bc                                    ; $58f1: $09
    di                                            ; $58f2: $f3
    rrca                                          ; $58f3: $0f
    push af                                       ; $58f4: $f5
    dec c                                         ; $58f5: $0d
    db $eb                                        ; $58f6: $eb
    ld [$18d7], sp                                ; $58f7: $08 $d7 $18
    rst RST_20                                    ; $58fa: $e7
    ldh a, [$ffd1]                                ; $58fb: $f0 $d1
    db $f4                                        ; $58fd: $f4

jr_008_58fe:
    add c                                         ; $58fe: $81
    sbc $7f                                       ; $58ff: $de $7f
    inc e                                         ; $5901: $1c
    rst RST_28                                    ; $5902: $ef
    ld [hl+], a                                   ; $5903: $22
    rst RST_18                                    ; $5904: $df
    ld b, c                                       ; $5905: $41
    rst RST_30                                    ; $5906: $f7
    ld b, a                                       ; $5907: $47
    rst RST_38                                    ; $5908: $ff
    ld c, a                                       ; $5909: $4f
    rst RST_38                                    ; $590a: $ff
    ld c, l                                       ; $590b: $4d
    rst RST_38                                    ; $590c: $ff
    ld c, a                                       ; $590d: $4f
    rst RST_38                                    ; $590e: $ff
    ld c, a                                       ; $590f: $4f
    cp d                                          ; $5910: $ba
    halt                                          ; $5911: $76
    rst RST_38                                    ; $5912: $ff
    ld c, e                                       ; $5913: $4b
    cp $4a                                        ; $5914: $fe $4a
    xor $7a                                       ; $5916: $ee $7a
    rst RST_18                                    ; $5918: $df
    ld e, a                                       ; $5919: $5f
    ld hl, sp+$7c                                 ; $591a: $f8 $7c
    rst RST_20                                    ; $591c: $e7
    jr nc, jr_008_58fe                            ; $591d: $30 $df

    ld h, b                                       ; $591f: $60
    ret nz                                        ; $5920: $c0

    ret nz                                        ; $5921: $c0

    nop                                           ; $5922: $00
    nop                                           ; $5923: $00
    nop                                           ; $5924: $00
    nop                                           ; $5925: $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    add b                                         ; $5928: $80
    add b                                         ; $5929: $80
    ld h, b                                       ; $592a: $60
    ld h, a                                       ; $592b: $67
    sub e                                         ; $592c: $93
    jr c, @-$2d                                   ; $592d: $38 $d1

    inc de                                        ; $592f: $13
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
    ret nz                                        ; $593b: $c0

    add b                                         ; $593c: $80
    jr nz, jr_008_58bf                            ; $593d: $20 $80

    ret nc                                        ; $593f: $d0

jr_008_5940:
    ld sp, hl                                     ; $5940: $f9
    rst RST_38                                    ; $5941: $ff
    ld hl, sp-$07                                 ; $5942: $f8 $f9
    ld a, [$f1f9]                                 ; $5944: $fa $f9 $f1
    db $f4                                        ; $5947: $f4
    jp hl                                         ; $5948: $e9


    db $e4                                        ; $5949: $e4
    call z, $24e2                                 ; $594a: $cc $e2 $24
    ld [hl-], a                                   ; $594d: $32
    dec e                                         ; $594e: $1d
    rra                                           ; $594f: $1f
    ld bc, $8382                                  ; $5950: $01 $82 $83
    call nz, $fc83                                ; $5953: $c4 $83 $fc
    ld c, e                                       ; $5956: $4b
    ld hl, sp+$77                                 ; $5957: $f8 $77
    ldh a, [$ffa7]                                ; $5959: $f0 $a7
    ld [hl], b                                    ; $595b: $70
    ld [hl], c                                    ; $595c: $71
    ld a, h                                       ; $595d: $7c
    sub c                                         ; $595e: $91
    add $37                                       ; $595f: $c6 $37
    and a                                         ; $5961: $a7
    sbc a                                         ; $5962: $9f
    ld e, [hl]                                    ; $5963: $5e
    rst RST_38                                    ; $5964: $ff
    add b                                         ; $5965: $80
    rst RST_18                                    ; $5966: $df
    pop hl                                        ; $5967: $e1
    rst RST_38                                    ; $5968: $ff
    rst RST_38                                    ; $5969: $ff
    ld a, a                                       ; $596a: $7f
    rst RST_38                                    ; $596b: $ff
    ld a, a                                       ; $596c: $7f
    ld a, a                                       ; $596d: $7f
    rst RST_18                                    ; $596e: $df
    rra                                           ; $596f: $1f
    rst RST_38                                    ; $5970: $ff
    ld b, b                                       ; $5971: $40
    rst RST_38                                    ; $5972: $ff
    nop                                           ; $5973: $00
    rst RST_38                                    ; $5974: $ff
    nop                                           ; $5975: $00
    ld a, a                                       ; $5976: $7f
    nop                                           ; $5977: $00
    rra                                           ; $5978: $1f
    add b                                         ; $5979: $80
    add b                                         ; $597a: $80
    ret nz                                        ; $597b: $c0

    ldh [$fff0], a                                ; $597c: $e0 $f0
    rst RST_38                                    ; $597e: $ff
    rst RST_38                                    ; $597f: $ff
    xor $1f                                       ; $5980: $ee $1f
    db $ed                                        ; $5982: $ed
    rra                                           ; $5983: $1f
    xor $1e                                       ; $5984: $ee $1e
    db $dd                                        ; $5986: $dd
    inc e                                         ; $5987: $1c
    sub l                                         ; $5988: $95
    inc a                                         ; $5989: $3c
    ld a, [hl+]                                   ; $598a: $2a
    ld h, e                                       ; $598b: $63
    ld e, l                                       ; $598c: $5d
    pop hl                                        ; $598d: $e1
    cp a                                          ; $598e: $bf
    and c                                         ; $598f: $a1
    ld h, b                                       ; $5990: $60
    ldh a, [$ffe0]                                ; $5991: $f0 $e0
    ld hl, sp-$20                                 ; $5993: $f8 $e0
    inc c                                         ; $5995: $0c
    ld hl, sp+$02                                 ; $5996: $f8 $02
    ld c, b                                       ; $5998: $48
    db $e3                                        ; $5999: $e3
    ld a, h                                       ; $599a: $7c
    ld bc, $01fe                                  ; $599b: $01 $fe $01
    ld h, [hl]                                    ; $599e: $66
    ld [hl], c                                    ; $599f: $71
    ld c, $0d                                     ; $59a0: $0e $0d
    inc c                                         ; $59a2: $0c
    ld a, [bc]                                    ; $59a3: $0a
    add hl, de                                    ; $59a4: $19
    ld [de], a                                    ; $59a5: $12
    dec de                                        ; $59a6: $1b
    inc d                                         ; $59a7: $14
    dec de                                        ; $59a8: $1b
    db $10                                        ; $59a9: $10
    rla                                           ; $59aa: $17
    db $10                                        ; $59ab: $10
    ld a, a                                       ; $59ac: $7f
    ld a, a                                       ; $59ad: $7f
    and b                                         ; $59ae: $a0
    rst RST_38                                    ; $59af: $ff
    ld a, b                                       ; $59b0: $78
    ld [bc], a                                    ; $59b1: $02
    db $ec                                        ; $59b2: $ec
    rrca                                          ; $59b3: $0f
    adc $11                                       ; $59b4: $ce $11
    rst RST_18                                    ; $59b6: $df
    nop                                           ; $59b7: $00
    ei                                            ; $59b8: $fb
    inc bc                                        ; $59b9: $03
    di                                            ; $59ba: $f3
    inc b                                         ; $59bb: $04
    rst RST_38                                    ; $59bc: $ff
    rst RST_38                                    ; $59bd: $ff
    nop                                           ; $59be: $00
    rst RST_38                                    ; $59bf: $ff
    rst RST_28                                    ; $59c0: $ef
    rrca                                          ; $59c1: $0f
    ld a, e                                       ; $59c2: $7b
    inc bc                                        ; $59c3: $03
    ld [hl], l                                    ; $59c4: $75
    adc h                                         ; $59c5: $8c
    ccf                                           ; $59c6: $3f
    add b                                         ; $59c7: $80
    inc a                                         ; $59c8: $3c
    pop bc                                        ; $59c9: $c1
    ld e, $40                                     ; $59ca: $1e $40
    rst RST_38                                    ; $59cc: $ff
    rst RST_38                                    ; $59cd: $ff
    ld bc, $efff                                  ; $59ce: $01 $ff $ef
    rst RST_38                                    ; $59d1: $ff
    sub [hl]                                      ; $59d2: $96
    adc $ff                                       ; $59d3: $ce $ff
    rlca                                          ; $59d5: $07
    ld [$730d], sp                                ; $59d6: $08 $0d $73
    ld hl, sp+$67                                 ; $59d9: $f8 $67
    ld [hl], b                                    ; $59db: $70
    rst RST_38                                    ; $59dc: $ff
    rst RST_38                                    ; $59dd: $ff
    add b                                         ; $59de: $80
    rst RST_38                                    ; $59df: $ff
    dec l                                         ; $59e0: $2d
    ld hl, $1311                                  ; $59e1: $21 $11 $13
    ld e, $1e                                     ; $59e4: $1e $1e
    jp nc, Jump_000_2ed6                          ; $59e6: $d2 $d6 $2e

    ld l, e                                       ; $59e9: $6b
    sbc e                                         ; $59ea: $9b
    add hl, sp                                    ; $59eb: $39
    rst RST_38                                    ; $59ec: $ff
    rst RST_38                                    ; $59ed: $ff
    nop                                           ; $59ee: $00
    rst RST_38                                    ; $59ef: $ff
    cp [hl]                                       ; $59f0: $be
    add c                                         ; $59f1: $81
    ld a, [hl]                                    ; $59f2: $7e
    ld bc, $39d2                                  ; $59f3: $01 $d2 $39
    ld e, [hl]                                    ; $59f6: $5e
    ld b, c                                       ; $59f7: $41
    db $fc                                        ; $59f8: $fc
    add c                                         ; $59f9: $81
    or b                                          ; $59fa: $b0
    add a                                         ; $59fb: $87
    cp $fe                                        ; $59fc: $fe $fe
    inc bc                                        ; $59fe: $03
    rst RST_38                                    ; $59ff: $ff
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
    rst RST_38                                    ; $5a50: $ff
    rst RST_38                                    ; $5a51: $ff
    xor d                                         ; $5a52: $aa
    rst RST_38                                    ; $5a53: $ff
    dec d                                         ; $5a54: $15
    rst RST_38                                    ; $5a55: $ff
    jp c, $a3ff                                   ; $5a56: $da $ff $a3

    rst RST_38                                    ; $5a59: $ff
    cp $fc                                        ; $5a5a: $fe $fc
    ld sp, hl                                     ; $5a5c: $f9
    add hl, bc                                    ; $5a5d: $09
    ld a, [rIE]                                   ; $5a5e: $fa $ff $ff
    rst RST_38                                    ; $5a61: $ff
    xor d                                         ; $5a62: $aa
    rst RST_38                                    ; $5a63: $ff
    dec d                                         ; $5a64: $15
    rst RST_38                                    ; $5a65: $ff
    sbc $ff                                       ; $5a66: $de $ff
    or c                                          ; $5a68: $b1
    ld hl, sp-$39                                 ; $5a69: $f8 $c7
    ldh [$ff1f], a                                ; $5a6b: $e0 $1f
    add b                                         ; $5a6d: $80
    ld a, a                                       ; $5a6e: $7f
    nop                                           ; $5a6f: $00
    rst RST_38                                    ; $5a70: $ff
    rst RST_38                                    ; $5a71: $ff
    xor d                                         ; $5a72: $aa
    rst RST_38                                    ; $5a73: $ff
    rst RST_38                                    ; $5a74: $ff
    rst RST_38                                    ; $5a75: $ff
    nop                                           ; $5a76: $00
    add e                                         ; $5a77: $83
    rst RST_38                                    ; $5a78: $ff
    nop                                           ; $5a79: $00
    rst RST_38                                    ; $5a7a: $ff
    nop                                           ; $5a7b: $00
    rst RST_38                                    ; $5a7c: $ff
    nop                                           ; $5a7d: $00
    rst RST_38                                    ; $5a7e: $ff
    nop                                           ; $5a7f: $00
    rst RST_38                                    ; $5a80: $ff
    rst RST_38                                    ; $5a81: $ff
    xor d                                         ; $5a82: $aa
    rst RST_38                                    ; $5a83: $ff
    dec d                                         ; $5a84: $15
    rst RST_38                                    ; $5a85: $ff
    jp c, Jump_000_32ff                           ; $5a86: $da $ff $32

    ld a, a                                       ; $5a89: $7f
    adc a                                         ; $5a8a: $8f
    rra                                           ; $5a8b: $1f
    sub c                                         ; $5a8c: $91
    ld h, $3c                                     ; $5a8d: $26 $3c
    ld a, a                                       ; $5a8f: $7f
    dec c                                         ; $5a90: $0d
    ld c, $0b                                     ; $5a91: $0e $0b
    inc c                                         ; $5a93: $0c
    rla                                           ; $5a94: $17
    jr jr_008_5ac6                                ; $5a95: $18 $2f

    jr nc, jr_008_5ac8                            ; $5a97: $30 $2f

    jr nz, jr_008_5af9                            ; $5a99: $20 $5e

    ld h, c                                       ; $5a9b: $61
    ld e, h                                       ; $5a9c: $5c
    ld b, c                                       ; $5a9d: $41
    ld e, c                                       ; $5a9e: $59
    ld b, d                                       ; $5a9f: $42
    db $fc                                        ; $5aa0: $fc
    nop                                           ; $5aa1: $00
    ldh [rIF], a                                  ; $5aa2: $e0 $0f
    jp $9f30                                      ; $5aa4: $c3 $30 $9f


    ld h, b                                       ; $5aa7: $60
    ccf                                           ; $5aa8: $3f
    add c                                         ; $5aa9: $81
    ld a, [hl]                                    ; $5aaa: $7e
    ld b, $ea                                     ; $5aab: $06 $ea
    add hl, de                                    ; $5aad: $19
    rst RST_30                                    ; $5aae: $f7
    ld sp, $013d                                  ; $5aaf: $31 $3d $01
    ld b, $cf                                     ; $5ab2: $06 $cf
    reti                                          ; $5ab4: $d9


    inc a                                         ; $5ab5: $3c
    ld l, a                                       ; $5ab6: $6f
    ldh [$ff9e], a                                ; $5ab7: $e0 $9e
    cp b                                          ; $5ab9: $b8
    ld a, l                                       ; $5aba: $7d
    rst RST_38                                    ; $5abb: $ff
    cp $fe                                        ; $5abc: $fe $fe
    rst RST_18                                    ; $5abe: $df
    jp nz, $e0c6                                  ; $5abf: $c2 $c6 $e0

    ld a, a                                       ; $5ac2: $7f
    nop                                           ; $5ac3: $00
    db $fc                                        ; $5ac4: $fc
    nop                                           ; $5ac5: $00

jr_008_5ac6:
    rst RST_08                                    ; $5ac6: $cf
    rra                                           ; $5ac7: $1f

jr_008_5ac8:
    ld a, h                                       ; $5ac8: $7c
    rst RST_38                                    ; $5ac9: $ff
    sbc [hl]                                      ; $5aca: $9e
    cp [hl]                                       ; $5acb: $be
    and $36                                       ; $5acc: $e6 $36
    cp e                                          ; $5ace: $bb
    ld h, $00                                     ; $5acf: $26 $00
    ld h, b                                       ; $5ad1: $60
    ret nz                                        ; $5ad2: $c0

    db $10                                        ; $5ad3: $10
    ld h, b                                       ; $5ad4: $60
    ld [$88b0], sp                                ; $5ad5: $08 $b0 $88
    ld l, b                                       ; $5ad8: $68
    ret z                                         ; $5ad9: $c8

    ld l, b                                       ; $5ada: $68
    ld e, b                                       ; $5adb: $58
    sub b                                         ; $5adc: $90
    db $10                                        ; $5add: $10
    jr nz, @+$62                                  ; $5ade: $20 $60

    sbc c                                         ; $5ae0: $99
    call nz, $c58b                                ; $5ae1: $c4 $8b $c5
    add d                                         ; $5ae4: $82
    add $85                                       ; $5ae5: $c6 $85
    db $ec                                        ; $5ae7: $ec
    adc e                                         ; $5ae8: $8b
    ld hl, sp-$62                                 ; $5ae9: $f8 $9e
    ldh a, [$ff7c]                                ; $5aeb: $f0 $7c
    ld h, c                                       ; $5aed: $61
    ei                                            ; $5aee: $fb
    jp $c1dd                                      ; $5aef: $c3 $dd $c1


    dec sp                                        ; $5af2: $3b
    add e                                         ; $5af3: $83
    db $ed                                        ; $5af4: $ed
    dec c                                         ; $5af5: $0d
    sub $11                                       ; $5af6: $d6 $11
    cp a                                          ; $5af8: $bf

jr_008_5af9:
    jr nz, jr_008_5b6a                            ; $5af9: $20 $6f

    ldh [$ff81], a                                ; $5afb: $e0 $81
    db $f4                                        ; $5afd: $f4

jr_008_5afe:
    ld bc, $fcfa                                  ; $5afe: $01 $fa $fc
    sbc l                                         ; $5b01: $9d
    rst RST_28                                    ; $5b02: $ef
    inc hl                                        ; $5b03: $23
    rst RST_18                                    ; $5b04: $df
    ld b, c                                       ; $5b05: $41
    db $db                                        ; $5b06: $db
    ld e, c                                       ; $5b07: $59
    rst RST_38                                    ; $5b08: $ff
    ld a, l                                       ; $5b09: $7d
    rst RST_38                                    ; $5b0a: $ff
    ld l, l                                       ; $5b0b: $6d
    rst RST_38                                    ; $5b0c: $ff
    ld a, l                                       ; $5b0d: $7d
    rst RST_38                                    ; $5b0e: $ff
    ld a, l                                       ; $5b0f: $7d
    cp d                                          ; $5b10: $ba
    ld b, d                                       ; $5b11: $42
    rst RST_38                                    ; $5b12: $ff
    inc bc                                        ; $5b13: $03
    sbc $1a                                       ; $5b14: $de $1a
    cp [hl]                                       ; $5b16: $be
    ld [hl+], a                                   ; $5b17: $22
    rst RST_08                                    ; $5b18: $cf
    ld e, a                                       ; $5b19: $5f
    ldh a, [$ff7c]                                ; $5b1a: $f0 $7c
    rst RST_20                                    ; $5b1c: $e7
    jr nc, jr_008_5afe                            ; $5b1d: $30 $df

    ld h, b                                       ; $5b1f: $60
    ret nz                                        ; $5b20: $c0

    ret nz                                        ; $5b21: $c0

    nop                                           ; $5b22: $00
    nop                                           ; $5b23: $00
    nop                                           ; $5b24: $00
    ld bc, $0101                                  ; $5b25: $01 $01 $01
    add c                                         ; $5b28: $81
    add c                                         ; $5b29: $81

jr_008_5b2a:
    ld h, c                                       ; $5b2a: $61
    ld h, c                                       ; $5b2b: $61
    sub c                                         ; $5b2c: $91
    ld sp, $11d1                                  ; $5b2d: $31 $d1 $11
    nop                                           ; $5b30: $00
    nop                                           ; $5b31: $00
    ld [hl], b                                    ; $5b32: $70
    ldh a, [$ff88]                                ; $5b33: $f0 $88
    sbc b                                         ; $5b35: $98
    ld l, b                                       ; $5b36: $68
    ld [$08f8], sp                                ; $5b37: $08 $f8 $08
    ld hl, sp+$08                                 ; $5b3a: $f8 $08
    ld hl, sp+$08                                 ; $5b3c: $f8 $08
    ld a, b                                       ; $5b3e: $78
    ld [$85b5], sp                                ; $5b3f: $08 $b5 $85
    inc l                                         ; $5b42: $2c
    adc h                                         ; $5b43: $8c
    dec de                                        ; $5b44: $1b
    sbc d                                         ; $5b45: $9a
    daa                                           ; $5b46: $27
    or $4f                                        ; $5b47: $f6 $4f
    ldh [c], a                                    ; $5b49: $e2
    call $27e2                                    ; $5b4a: $cd $e2 $27
    jr nc, jr_008_5b69                            ; $5b4d: $30 $1a

    jr @+$03                                      ; $5b4f: $18 $01

    jp nc, $c483                                  ; $5b51: $d2 $83 $c4

    add e                                         ; $5b54: $83
    db $ec                                        ; $5b55: $ec
    ld c, e                                       ; $5b56: $4b
    ld a, b                                       ; $5b57: $78
    or a                                          ; $5b58: $b7
    jr nc, jr_008_5b2a                            ; $5b59: $30 $cf

    nop                                           ; $5b5b: $00
    ld a, a                                       ; $5b5c: $7f
    nop                                           ; $5b5d: $00
    cp a                                          ; $5b5e: $bf
    add b                                         ; $5b5f: $80
    cp c                                          ; $5b60: $b9
    ld a, c                                       ; $5b61: $79
    rst RST_18                                    ; $5b62: $df
    ld a, $ff                                     ; $5b63: $3e $ff
    add b                                         ; $5b65: $80
    rst RST_18                                    ; $5b66: $df
    pop hl                                        ; $5b67: $e1
    rst RST_38                                    ; $5b68: $ff

jr_008_5b69:
    rst RST_38                                    ; $5b69: $ff

jr_008_5b6a:
    ld a, a                                       ; $5b6a: $7f
    rst RST_38                                    ; $5b6b: $ff
    ld a, a                                       ; $5b6c: $7f
    ld a, a                                       ; $5b6d: $7f
    rst RST_18                                    ; $5b6e: $df
    rra                                           ; $5b6f: $1f
    rst RST_38                                    ; $5b70: $ff
    ld b, b                                       ; $5b71: $40
    rst RST_38                                    ; $5b72: $ff
    nop                                           ; $5b73: $00
    rst RST_38                                    ; $5b74: $ff
    nop                                           ; $5b75: $00
    ld a, a                                       ; $5b76: $7f
    nop                                           ; $5b77: $00
    rra                                           ; $5b78: $1f
    add b                                         ; $5b79: $80
    add b                                         ; $5b7a: $80
    ret nz                                        ; $5b7b: $c0

    ldh [$fff0], a                                ; $5b7c: $e0 $f0
    rst RST_38                                    ; $5b7e: $ff
    rst RST_38                                    ; $5b7f: $ff
    add sp, $19                                   ; $5b80: $e8 $19
    add sp, $18                                   ; $5b82: $e8 $18
    rst RST_28                                    ; $5b84: $ef
    rra                                           ; $5b85: $1f
    reti                                          ; $5b86: $d9


    inc e                                         ; $5b87: $1c
    sub e                                         ; $5b88: $93
    jr c, jr_008_5bbb                             ; $5b89: $38 $30

    ld a, b                                       ; $5b8b: $78
    ld d, h                                       ; $5b8c: $54
    rst RST_18                                    ; $5b8d: $df
    adc c                                         ; $5b8e: $89
    adc h                                         ; $5b8f: $8c
    ld hl, sp-$78                                 ; $5b90: $f8 $88
    or h                                          ; $5b92: $b4
    adc h                                         ; $5b93: $8c
    call nz, $f2fc                                ; $5b94: $c4 $fc $f2
    ld b, $fa                                     ; $5b97: $06 $fa
    ld [bc], a                                    ; $5b99: $02
    dec a                                         ; $5b9a: $3d
    inc bc                                        ; $5b9b: $03
    dec a                                         ; $5b9c: $3d
    add c                                         ; $5b9d: $81
    db $fd                                        ; $5b9e: $fd
    ld bc, $0707                                  ; $5b9f: $01 $07 $07
    nop                                           ; $5ba2: $00
    nop                                           ; $5ba3: $00
    ld bc, $0201                                  ; $5ba4: $01 $01 $02
    ld [bc], a                                    ; $5ba7: $02
    dec b                                         ; $5ba8: $05
    inc b                                         ; $5ba9: $04
    dec bc                                        ; $5baa: $0b
    ld [$3f3f], sp                                ; $5bab: $08 $3f $3f
    ld h, b                                       ; $5bae: $60
    ld a, a                                       ; $5baf: $7f
    ld e, a                                       ; $5bb0: $5f
    ld b, b                                       ; $5bb1: $40
    rst RST_28                                    ; $5bb2: $ef
    ldh [$ff97], a                                ; $5bb3: $e0 $97
    ld hl, sp+$09                                 ; $5bb5: $f8 $09
    inc a                                         ; $5bb7: $3c
    add $1e                                       ; $5bb8: $c6 $1e
    db $e3                                        ; $5bba: $e3

jr_008_5bbb:
    rrca                                          ; $5bbb: $0f
    rst RST_38                                    ; $5bbc: $ff
    rst RST_38                                    ; $5bbd: $ff
    nop                                           ; $5bbe: $00
    rst RST_38                                    ; $5bbf: $ff
    rst RST_28                                    ; $5bc0: $ef
    rrca                                          ; $5bc1: $0f
    db $fd                                        ; $5bc2: $fd
    inc bc                                        ; $5bc3: $03
    rst RST_38                                    ; $5bc4: $ff
    nop                                           ; $5bc5: $00
    cp $01                                        ; $5bc6: $fe $01
    rst RST_38                                    ; $5bc8: $ff
    nop                                           ; $5bc9: $00
    ld a, $80                                     ; $5bca: $3e $80
    rst RST_38                                    ; $5bcc: $ff
    rst RST_38                                    ; $5bcd: $ff
    ld bc, $efff                                  ; $5bce: $01 $ff $ef
    rst RST_38                                    ; $5bd1: $ff
    rst RST_10                                    ; $5bd2: $d7
    rst RST_28                                    ; $5bd3: $ef
    or $06                                        ; $5bd4: $f6 $06
    add hl, bc                                    ; $5bd6: $09
    rrca                                          ; $5bd7: $0f
    ld [hl], d                                    ; $5bd8: $72
    ld hl, sp+$67                                 ; $5bd9: $f8 $67
    ld [hl], b                                    ; $5bdb: $70
    rst RST_38                                    ; $5bdc: $ff
    rst RST_38                                    ; $5bdd: $ff
    add b                                         ; $5bde: $80
    rst RST_38                                    ; $5bdf: $ff
    adc c                                         ; $5be0: $89
    adc h                                         ; $5be1: $8c
    ld c, $0f                                     ; $5be2: $0e $0f
    add hl, bc                                    ; $5be4: $09
    inc c                                         ; $5be5: $0c
    adc c                                         ; $5be6: $89
    adc h                                         ; $5be7: $8c
    ld b, [hl]                                    ; $5be8: $46
    rst RST_00                                    ; $5be9: $c7
    inc h                                         ; $5bea: $24
    ld h, [hl]                                    ; $5beb: $66
    rst RST_38                                    ; $5bec: $ff
    rst RST_38                                    ; $5bed: $ff
    nop                                           ; $5bee: $00
    rst RST_38                                    ; $5bef: $ff
    db $fd                                        ; $5bf0: $fd
    ld bc, $813d                                  ; $5bf1: $01 $3d $81
    db $fd                                        ; $5bf4: $fd
    ld bc, $01fd                                  ; $5bf5: $01 $fd $01
    dec a                                         ; $5bf8: $3d
    ld bc, $03fa                                  ; $5bf9: $01 $fa $03
    cp $ff                                        ; $5bfc: $fe $ff
    inc bc                                        ; $5bfe: $03
    rst RST_38                                    ; $5bff: $ff
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
    rst RST_38                                    ; $5c50: $ff
    rst RST_38                                    ; $5c51: $ff
    xor d                                         ; $5c52: $aa
    rst RST_38                                    ; $5c53: $ff
    dec d                                         ; $5c54: $15
    rst RST_38                                    ; $5c55: $ff
    jp c, $a2ff                                   ; $5c56: $da $ff $a2

    rst RST_38                                    ; $5c59: $ff
    rst RST_38                                    ; $5c5a: $ff
    rst RST_38                                    ; $5c5b: $ff
    rst RST_38                                    ; $5c5c: $ff
    nop                                           ; $5c5d: $00
    rst RST_38                                    ; $5c5e: $ff
    rst RST_38                                    ; $5c5f: $ff
    rst RST_38                                    ; $5c60: $ff

jr_008_5c61:
    rst RST_38                                    ; $5c61: $ff
    xor d                                         ; $5c62: $aa
    rst RST_38                                    ; $5c63: $ff
    dec d                                         ; $5c64: $15
    rst RST_38                                    ; $5c65: $ff
    jp c, $a2ff                                   ; $5c66: $da $ff $a2

    rst RST_38                                    ; $5c69: $ff
    rst RST_38                                    ; $5c6a: $ff
    rst RST_38                                    ; $5c6b: $ff
    rst RST_38                                    ; $5c6c: $ff
    nop                                           ; $5c6d: $00
    rst RST_38                                    ; $5c6e: $ff
    rst RST_38                                    ; $5c6f: $ff
    rst RST_38                                    ; $5c70: $ff
    rst RST_38                                    ; $5c71: $ff
    xor d                                         ; $5c72: $aa
    rst RST_38                                    ; $5c73: $ff
    dec d                                         ; $5c74: $15
    rst RST_38                                    ; $5c75: $ff
    jp c, $a2ff                                   ; $5c76: $da $ff $a2

    rst RST_38                                    ; $5c79: $ff
    rst RST_38                                    ; $5c7a: $ff
    rst RST_38                                    ; $5c7b: $ff
    rst RST_38                                    ; $5c7c: $ff
    nop                                           ; $5c7d: $00
    rst RST_38                                    ; $5c7e: $ff
    rst RST_38                                    ; $5c7f: $ff
    rst RST_38                                    ; $5c80: $ff
    rst RST_38                                    ; $5c81: $ff
    xor d                                         ; $5c82: $aa
    rst RST_38                                    ; $5c83: $ff
    dec d                                         ; $5c84: $15
    rst RST_38                                    ; $5c85: $ff
    jp c, $a2ff                                   ; $5c86: $da $ff $a2

    rst RST_38                                    ; $5c89: $ff
    rst RST_38                                    ; $5c8a: $ff
    rst RST_38                                    ; $5c8b: $ff
    rst RST_38                                    ; $5c8c: $ff
    nop                                           ; $5c8d: $00
    rst RST_38                                    ; $5c8e: $ff
    rst RST_38                                    ; $5c8f: $ff
    nop                                           ; $5c90: $00
    nop                                           ; $5c91: $00
    nop                                           ; $5c92: $00
    nop                                           ; $5c93: $00
    nop                                           ; $5c94: $00
    nop                                           ; $5c95: $00
    nop                                           ; $5c96: $00
    nop                                           ; $5c97: $00
    inc bc                                        ; $5c98: $03
    inc bc                                        ; $5c99: $03
    ld b, $04                                     ; $5c9a: $06 $04
    add hl, bc                                    ; $5c9c: $09
    add hl, bc                                    ; $5c9d: $09
    ld a, [bc]                                    ; $5c9e: $0a
    rrca                                          ; $5c9f: $0f
    nop                                           ; $5ca0: $00
    nop                                           ; $5ca1: $00
    nop                                           ; $5ca2: $00
    nop                                           ; $5ca3: $00
    ld bc, $0e01                                  ; $5ca4: $01 $01 $0e
    rrca                                          ; $5ca7: $0f
    or c                                          ; $5ca8: $b1
    cp b                                          ; $5ca9: $b8
    rst RST_00                                    ; $5caa: $c7
    ldh [$ff1f], a                                ; $5cab: $e0 $1f
    add b                                         ; $5cad: $80
    rst RST_38                                    ; $5cae: $ff
    nop                                           ; $5caf: $00
    nop                                           ; $5cb0: $00
    nop                                           ; $5cb1: $00
    nop                                           ; $5cb2: $00
    nop                                           ; $5cb3: $00
    rst RST_38                                    ; $5cb4: $ff
    rst RST_38                                    ; $5cb5: $ff
    nop                                           ; $5cb6: $00
    add e                                         ; $5cb7: $83
    rst RST_38                                    ; $5cb8: $ff
    nop                                           ; $5cb9: $00
    rst RST_38                                    ; $5cba: $ff
    nop                                           ; $5cbb: $00
    rst RST_38                                    ; $5cbc: $ff
    nop                                           ; $5cbd: $00
    rst RST_38                                    ; $5cbe: $ff
    nop                                           ; $5cbf: $00
    nop                                           ; $5cc0: $00
    nop                                           ; $5cc1: $00
    nop                                           ; $5cc2: $00
    nop                                           ; $5cc3: $00
    nop                                           ; $5cc4: $00
    nop                                           ; $5cc5: $00
    ret nz                                        ; $5cc6: $c0

    ret nz                                        ; $5cc7: $c0

    jr nc, jr_008_5d3a                            ; $5cc8: $30 $70

    adc b                                         ; $5cca: $88
    jr jr_008_5c61                                ; $5ccb: $18 $94

    inc h                                         ; $5ccd: $24
    inc a                                         ; $5cce: $3c
    ld a, a                                       ; $5ccf: $7f
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
    add b                                         ; $5cdf: $80
    dec c                                         ; $5ce0: $0d
    ld c, $0b                                     ; $5ce1: $0e $0b
    inc c                                         ; $5ce3: $0c
    inc de                                        ; $5ce4: $13
    jr jr_008_5d0e                                ; $5ce5: $18 $27

    jr nc, jr_008_5d18                            ; $5ce7: $30 $2f

    jr nz, jr_008_5d39                            ; $5ce9: $20 $4e

    ld h, c                                       ; $5ceb: $61
    ld e, h                                       ; $5cec: $5c
    ld h, c                                       ; $5ced: $61
    ld e, c                                       ; $5cee: $59
    ld b, d                                       ; $5cef: $42
    db $fc                                        ; $5cf0: $fc
    nop                                           ; $5cf1: $00
    ldh [rIF], a                                  ; $5cf2: $e0 $0f
    jp $9f30                                      ; $5cf4: $c3 $30 $9f


    ld h, b                                       ; $5cf7: $60
    ccf                                           ; $5cf8: $3f
    add c                                         ; $5cf9: $81
    ld a, [hl]                                    ; $5cfa: $7e
    ld b, $ea                                     ; $5cfb: $06 $ea
    add hl, de                                    ; $5cfd: $19
    rst RST_30                                    ; $5cfe: $f7
    ld sp, $013d                                  ; $5cff: $31 $3d $01
    ld b, $cf                                     ; $5d02: $06 $cf
    reti                                          ; $5d04: $d9


    inc a                                         ; $5d05: $3c
    ld l, a                                       ; $5d06: $6f
    ldh [$ff9e], a                                ; $5d07: $e0 $9e
    cp b                                          ; $5d09: $b8
    ld a, l                                       ; $5d0a: $7d
    rst RST_38                                    ; $5d0b: $ff
    cp $fe                                        ; $5d0c: $fe $fe

jr_008_5d0e:
    db $db                                        ; $5d0e: $db
    add $c6                                       ; $5d0f: $c6 $c6
    ldh [$ff7f], a                                ; $5d11: $e0 $7f
    nop                                           ; $5d13: $00
    db $fc                                        ; $5d14: $fc
    nop                                           ; $5d15: $00
    rst RST_08                                    ; $5d16: $cf
    rra                                           ; $5d17: $1f

jr_008_5d18:
    ld a, h                                       ; $5d18: $7c
    rst RST_38                                    ; $5d19: $ff
    sbc [hl]                                      ; $5d1a: $9e
    cp [hl]                                       ; $5d1b: $be
    and $36                                       ; $5d1c: $e6 $36
    ei                                            ; $5d1e: $fb
    and d                                         ; $5d1f: $a2
    nop                                           ; $5d20: $00
    ld h, b                                       ; $5d21: $60
    ret nz                                        ; $5d22: $c0

    db $10                                        ; $5d23: $10
    ld h, b                                       ; $5d24: $60
    ld [$88b0], sp                                ; $5d25: $08 $b0 $88
    ld h, b                                       ; $5d28: $60
    ret z                                         ; $5d29: $c8

    ld l, b                                       ; $5d2a: $68
    ld e, b                                       ; $5d2b: $58
    sub b                                         ; $5d2c: $90
    db $10                                        ; $5d2d: $10
    jr nz, @+$62                                  ; $5d2e: $20 $60

    nop                                           ; $5d30: $00
    nop                                           ; $5d31: $00
    nop                                           ; $5d32: $00
    nop                                           ; $5d33: $00
    nop                                           ; $5d34: $00
    nop                                           ; $5d35: $00
    nop                                           ; $5d36: $00
    nop                                           ; $5d37: $00
    nop                                           ; $5d38: $00

jr_008_5d39:
    nop                                           ; $5d39: $00

jr_008_5d3a:
    nop                                           ; $5d3a: $00
    nop                                           ; $5d3b: $00
    nop                                           ; $5d3c: $00
    nop                                           ; $5d3d: $00
    nop                                           ; $5d3e: $00
    nop                                           ; $5d3f: $00
    sbc c                                         ; $5d40: $99
    call nz, $c58b                                ; $5d41: $c4 $8b $c5
    add d                                         ; $5d44: $82
    add $85                                       ; $5d45: $c6 $85
    call z, $f88b                                 ; $5d47: $cc $8b $f8
    sbc [hl]                                      ; $5d4a: $9e
    ldh a, [$ff7c]                                ; $5d4b: $f0 $7c
    ld h, c                                       ; $5d4d: $61
    ei                                            ; $5d4e: $fb
    jp $c1dd                                      ; $5d4f: $c3 $dd $c1


    dec sp                                        ; $5d52: $3b
    add e                                         ; $5d53: $83
    db $ed                                        ; $5d54: $ed
    dec c                                         ; $5d55: $0d
    sub $11                                       ; $5d56: $d6 $11
    cp a                                          ; $5d58: $bf
    jr nz, jr_008_5dca                            ; $5d59: $20 $6f

    ldh [$ff81], a                                ; $5d5b: $e0 $81
    db $f4                                        ; $5d5d: $f4

jr_008_5d5e:
    ld bc, $fdfa                                  ; $5d5e: $01 $fa $fd
    add e                                         ; $5d61: $83
    rst RST_38                                    ; $5d62: $ff
    ld bc, $00ff                                  ; $5d63: $01 $ff $00
    db $fd                                        ; $5d66: $fd
    inc a                                         ; $5d67: $3c
    jp c, $bd42                                   ; $5d68: $da $42 $bd

    inc bc                                        ; $5d6b: $03
    rst RST_38                                    ; $5d6c: $ff
    rra                                           ; $5d6d: $1f
    xor $21                                       ; $5d6e: $ee $21
    ld a, [$ffa6]                                 ; $5d70: $fa $a6 $ff
    add e                                         ; $5d73: $83
    sbc $1a                                       ; $5d74: $de $1a
    cp [hl]                                       ; $5d76: $be
    ld [hl+], a                                   ; $5d77: $22
    rst RST_18                                    ; $5d78: $df
    ld e, a                                       ; $5d79: $5f
    ld hl, sp+$7c                                 ; $5d7a: $f8 $7c
    and a                                         ; $5d7c: $a7
    jr nc, jr_008_5d5e                            ; $5d7d: $30 $df

    ld h, b                                       ; $5d7f: $60
    ret nz                                        ; $5d80: $c0

    ret nz                                        ; $5d81: $c0

    nop                                           ; $5d82: $00
    nop                                           ; $5d83: $00
    nop                                           ; $5d84: $00
    nop                                           ; $5d85: $00
    nop                                           ; $5d86: $00
    nop                                           ; $5d87: $00
    add b                                         ; $5d88: $80
    add b                                         ; $5d89: $80

jr_008_5d8a:
    ld h, b                                       ; $5d8a: $60
    ld h, b                                       ; $5d8b: $60
    sub b                                         ; $5d8c: $90
    jr nc, @-$2e                                  ; $5d8d: $30 $d0

    stop                                          ; $5d8f: $10 $00
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
    or l                                          ; $5da0: $b5
    add l                                         ; $5da1: $85
    inc l                                         ; $5da2: $2c
    adc h                                         ; $5da3: $8c
    dec de                                        ; $5da4: $1b
    sbc d                                         ; $5da5: $9a
    daa                                           ; $5da6: $27
    or $4f                                        ; $5da7: $f6 $4f
    ldh [c], a                                    ; $5da9: $e2
    call Call_008_7fe2                            ; $5daa: $cd $e2 $7f
    ld a, a                                       ; $5dad: $7f
    and b                                         ; $5dae: $a0
    rst RST_38                                    ; $5daf: $ff
    ld bc, $83d2                                  ; $5db0: $01 $d2 $83
    call nz, $ec83                                ; $5db3: $c4 $83 $ec
    ld c, e                                       ; $5db6: $4b
    ld a, b                                       ; $5db7: $78
    or a                                          ; $5db8: $b7
    jr nc, jr_008_5d8a                            ; $5db9: $30 $cf

    nop                                           ; $5dbb: $00
    rst RST_38                                    ; $5dbc: $ff
    rst RST_38                                    ; $5dbd: $ff
    nop                                           ; $5dbe: $00
    rst RST_38                                    ; $5dbf: $ff
    rst RST_18                                    ; $5dc0: $df
    nop                                           ; $5dc1: $00
    ld a, a                                       ; $5dc2: $7f
    nop                                           ; $5dc3: $00
    cp a                                          ; $5dc4: $bf
    add b                                         ; $5dc5: $80
    rst RST_18                                    ; $5dc6: $df
    pop hl                                        ; $5dc7: $e1
    rst RST_38                                    ; $5dc8: $ff
    rst RST_38                                    ; $5dc9: $ff

jr_008_5dca:
    ld a, a                                       ; $5dca: $7f
    rst RST_38                                    ; $5dcb: $ff
    rst RST_38                                    ; $5dcc: $ff
    rst RST_38                                    ; $5dcd: $ff
    ld bc, rIE                                    ; $5dce: $01 $ff $ff
    ld b, b                                       ; $5dd1: $40
    rst RST_38                                    ; $5dd2: $ff
    nop                                           ; $5dd3: $00
    rst RST_38                                    ; $5dd4: $ff
    nop                                           ; $5dd5: $00
    ld a, a                                       ; $5dd6: $7f
    nop                                           ; $5dd7: $00
    ccf                                           ; $5dd8: $3f
    add b                                         ; $5dd9: $80
    add b                                         ; $5dda: $80
    ret nz                                        ; $5ddb: $c0

    rst RST_38                                    ; $5ddc: $ff
    rst RST_38                                    ; $5ddd: $ff
    add b                                         ; $5dde: $80
    rst RST_38                                    ; $5ddf: $ff
    rst RST_28                                    ; $5de0: $ef
    rra                                           ; $5de1: $1f
    jp hl                                         ; $5de2: $e9


    inc e                                         ; $5de3: $1c
    db $ec                                        ; $5de4: $ec
    ld a, [de]                                    ; $5de5: $1a
    sub $11                                       ; $5de6: $d6 $11
    sub [hl]                                      ; $5de8: $96
    jr nc, jr_008_5e12                            ; $5de9: $30 $27

    ld h, b                                       ; $5deb: $60
    rst RST_38                                    ; $5dec: $ff
    rst RST_38                                    ; $5ded: $ff
    nop                                           ; $5dee: $00
    rst RST_38                                    ; $5def: $ff
    ret nz                                        ; $5df0: $c0

    ret nz                                        ; $5df1: $c0

    jr c, jr_008_5e6c                             ; $5df2: $38 $78

    call z, $e624                                 ; $5df4: $cc $24 $e6
    ld [de], a                                    ; $5df7: $12
    ld h, [hl]                                    ; $5df8: $66
    sub d                                         ; $5df9: $92
    ld h, [hl]                                    ; $5dfa: $66
    sub d                                         ; $5dfb: $92
    ld a, [$06fa]                                 ; $5dfc: $fa $fa $06
    cp $00                                        ; $5dff: $fe $00
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

jr_008_5e12:
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

jr_008_5e6c:
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
    ld bc, $0301                                  ; $6016: $01 $01 $03
    ld [bc], a                                    ; $6019: $02
    rlca                                          ; $601a: $07
    dec b                                         ; $601b: $05
    rlca                                          ; $601c: $07
    dec b                                         ; $601d: $05
    rlca                                          ; $601e: $07
    dec b                                         ; $601f: $05
    nop                                           ; $6020: $00
    nop                                           ; $6021: $00
    nop                                           ; $6022: $00
    nop                                           ; $6023: $00
    nop                                           ; $6024: $00
    nop                                           ; $6025: $00
    sbc h                                         ; $6026: $9c
    sbc h                                         ; $6027: $9c
    rst RST_38                                    ; $6028: $ff
    ld h, e                                       ; $6029: $63
    rst RST_38                                    ; $602a: $ff
    xor l                                         ; $602b: $ad
    rst RST_38                                    ; $602c: $ff
    db $ed                                        ; $602d: $ed
    rst RST_38                                    ; $602e: $ff
    inc hl                                        ; $602f: $23
    nop                                           ; $6030: $00
    nop                                           ; $6031: $00
    nop                                           ; $6032: $00
    nop                                           ; $6033: $00
    nop                                           ; $6034: $00
    nop                                           ; $6035: $00
    di                                            ; $6036: $f3
    di                                            ; $6037: $f3
    rst RST_38                                    ; $6038: $ff
    inc c                                         ; $6039: $0c
    rst RST_38                                    ; $603a: $ff
    ld a, e                                       ; $603b: $7b
    rst RST_38                                    ; $603c: $ff
    dec bc                                        ; $603d: $0b
    rst RST_38                                    ; $603e: $ff
    ld a, b                                       ; $603f: $78
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    nop                                           ; $6042: $00
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    nop                                           ; $6045: $00
    ld a, $3e                                     ; $6046: $3e $3e
    rst RST_38                                    ; $6048: $ff
    pop bc                                        ; $6049: $c1
    cp $76                                        ; $604a: $fe $76
    call c, $dc54                                 ; $604c: $dc $54 $dc
    ld d, h                                       ; $604f: $54
    nop                                           ; $6050: $00
    nop                                           ; $6051: $00
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    nop                                           ; $6054: $00
    nop                                           ; $6055: $00
    ld d, b                                       ; $6056: $50
    ld d, b                                       ; $6057: $50
    ld hl, sp-$58                                 ; $6058: $f8 $a8
    ld hl, sp-$58                                 ; $605a: $f8 $a8
    ld hl, sp-$58                                 ; $605c: $f8 $a8
    ld hl, sp-$58                                 ; $605e: $f8 $a8
    nop                                           ; $6060: $00
    nop                                           ; $6061: $00
    nop                                           ; $6062: $00
    nop                                           ; $6063: $00
    nop                                           ; $6064: $00
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    nop                                           ; $6067: $00
    nop                                           ; $6068: $00
    nop                                           ; $6069: $00
    nop                                           ; $606a: $00
    nop                                           ; $606b: $00
    nop                                           ; $606c: $00
    nop                                           ; $606d: $00
    nop                                           ; $606e: $00
    nop                                           ; $606f: $00
    db $10                                        ; $6070: $10
    db $10                                        ; $6071: $10
    db $10                                        ; $6072: $10
    db $10                                        ; $6073: $10
    db $10                                        ; $6074: $10
    db $10                                        ; $6075: $10
    db $10                                        ; $6076: $10
    db $10                                        ; $6077: $10
    db $10                                        ; $6078: $10
    db $10                                        ; $6079: $10
    db $10                                        ; $607a: $10
    db $10                                        ; $607b: $10
    db $10                                        ; $607c: $10
    db $10                                        ; $607d: $10
    db $10                                        ; $607e: $10
    stop                                          ; $607f: $10 $00
    nop                                           ; $6081: $00
    nop                                           ; $6082: $00
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    nop                                           ; $6086: $00
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    nop                                           ; $608a: $00
    nop                                           ; $608b: $00
    nop                                           ; $608c: $00
    nop                                           ; $608d: $00
    nop                                           ; $608e: $00
    nop                                           ; $608f: $00
    nop                                           ; $6090: $00
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    nop                                           ; $6093: $00
    nop                                           ; $6094: $00
    nop                                           ; $6095: $00
    nop                                           ; $6096: $00
    nop                                           ; $6097: $00
    nop                                           ; $6098: $00
    nop                                           ; $6099: $00
    nop                                           ; $609a: $00
    nop                                           ; $609b: $00
    nop                                           ; $609c: $00
    nop                                           ; $609d: $00
    nop                                           ; $609e: $00
    nop                                           ; $609f: $00
    nop                                           ; $60a0: $00
    nop                                           ; $60a1: $00
    nop                                           ; $60a2: $00
    nop                                           ; $60a3: $00
    nop                                           ; $60a4: $00
    nop                                           ; $60a5: $00
    nop                                           ; $60a6: $00
    nop                                           ; $60a7: $00
    nop                                           ; $60a8: $00
    nop                                           ; $60a9: $00
    nop                                           ; $60aa: $00
    nop                                           ; $60ab: $00
    nop                                           ; $60ac: $00
    nop                                           ; $60ad: $00
    nop                                           ; $60ae: $00
    nop                                           ; $60af: $00
    nop                                           ; $60b0: $00
    nop                                           ; $60b1: $00
    nop                                           ; $60b2: $00
    nop                                           ; $60b3: $00
    nop                                           ; $60b4: $00
    nop                                           ; $60b5: $00
    nop                                           ; $60b6: $00
    nop                                           ; $60b7: $00
    nop                                           ; $60b8: $00
    nop                                           ; $60b9: $00
    nop                                           ; $60ba: $00
    nop                                           ; $60bb: $00
    nop                                           ; $60bc: $00
    nop                                           ; $60bd: $00
    nop                                           ; $60be: $00
    nop                                           ; $60bf: $00
    nop                                           ; $60c0: $00
    nop                                           ; $60c1: $00
    nop                                           ; $60c2: $00
    nop                                           ; $60c3: $00
    nop                                           ; $60c4: $00
    nop                                           ; $60c5: $00
    nop                                           ; $60c6: $00
    nop                                           ; $60c7: $00
    nop                                           ; $60c8: $00
    nop                                           ; $60c9: $00
    nop                                           ; $60ca: $00
    nop                                           ; $60cb: $00
    nop                                           ; $60cc: $00
    nop                                           ; $60cd: $00
    nop                                           ; $60ce: $00
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
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    nop                                           ; $6102: $00
    nop                                           ; $6103: $00
    nop                                           ; $6104: $00
    nop                                           ; $6105: $00
    nop                                           ; $6106: $00
    nop                                           ; $6107: $00
    nop                                           ; $6108: $00
    nop                                           ; $6109: $00
    nop                                           ; $610a: $00
    nop                                           ; $610b: $00
    nop                                           ; $610c: $00
    nop                                           ; $610d: $00
    nop                                           ; $610e: $00
    nop                                           ; $610f: $00
    rlca                                          ; $6110: $07
    dec b                                         ; $6111: $05
    inc bc                                        ; $6112: $03
    ld [bc], a                                    ; $6113: $02
    ld bc, $0001                                  ; $6114: $01 $01 $00
    nop                                           ; $6117: $00
    nop                                           ; $6118: $00
    nop                                           ; $6119: $00
    nop                                           ; $611a: $00
    nop                                           ; $611b: $00
    nop                                           ; $611c: $00
    nop                                           ; $611d: $00
    nop                                           ; $611e: $00
    nop                                           ; $611f: $00
    rst RST_38                                    ; $6120: $ff
    xor l                                         ; $6121: $ad
    rst RST_38                                    ; $6122: $ff
    ld l, l                                       ; $6123: $6d
    sub d                                         ; $6124: $92
    sub d                                         ; $6125: $92
    nop                                           ; $6126: $00
    nop                                           ; $6127: $00
    nop                                           ; $6128: $00
    nop                                           ; $6129: $00
    nop                                           ; $612a: $00
    ld a, a                                       ; $612b: $7f
    nop                                           ; $612c: $00
    add b                                         ; $612d: $80
    ccf                                           ; $612e: $3f
    add b                                         ; $612f: $80
    rst RST_38                                    ; $6130: $ff
    ld a, e                                       ; $6131: $7b
    rst RST_38                                    ; $6132: $ff
    dec bc                                        ; $6133: $0b
    db $f4                                        ; $6134: $f4
    db $f4                                        ; $6135: $f4
    nop                                           ; $6136: $00
    nop                                           ; $6137: $00
    nop                                           ; $6138: $00
    nop                                           ; $6139: $00
    nop                                           ; $613a: $00
    rst RST_38                                    ; $613b: $ff
    nop                                           ; $613c: $00
    nop                                           ; $613d: $00
    rst RST_38                                    ; $613e: $ff
    nop                                           ; $613f: $00
    call c, $dc54                                 ; $6140: $dc $54 $dc
    ld d, h                                       ; $6143: $54
    adc b                                         ; $6144: $88
    adc b                                         ; $6145: $88
    nop                                           ; $6146: $00
    nop                                           ; $6147: $00
    nop                                           ; $6148: $00
    nop                                           ; $6149: $00
    nop                                           ; $614a: $00
    rst RST_38                                    ; $614b: $ff
    nop                                           ; $614c: $00
    nop                                           ; $614d: $00
    rst RST_38                                    ; $614e: $ff
    nop                                           ; $614f: $00
    ld [hl], b                                    ; $6150: $70
    ld [hl], b                                    ; $6151: $70
    ld hl, sp-$58                                 ; $6152: $f8 $a8
    ld d, b                                       ; $6154: $50
    ld d, b                                       ; $6155: $50
    nop                                           ; $6156: $00
    nop                                           ; $6157: $00
    nop                                           ; $6158: $00
    nop                                           ; $6159: $00
    nop                                           ; $615a: $00
    add b                                         ; $615b: $80
    nop                                           ; $615c: $00
    ld b, b                                       ; $615d: $40
    nop                                           ; $615e: $00
    ld b, b                                       ; $615f: $40
    nop                                           ; $6160: $00
    nop                                           ; $6161: $00
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    nop                                           ; $6165: $00
    nop                                           ; $6166: $00
    nop                                           ; $6167: $00
    nop                                           ; $6168: $00
    nop                                           ; $6169: $00
    nop                                           ; $616a: $00
    nop                                           ; $616b: $00
    nop                                           ; $616c: $00
    nop                                           ; $616d: $00
    nop                                           ; $616e: $00
    nop                                           ; $616f: $00
    db $10                                        ; $6170: $10
    db $10                                        ; $6171: $10
    db $10                                        ; $6172: $10
    db $10                                        ; $6173: $10
    db $10                                        ; $6174: $10
    db $10                                        ; $6175: $10
    db $10                                        ; $6176: $10
    db $10                                        ; $6177: $10
    db $10                                        ; $6178: $10
    db $10                                        ; $6179: $10
    db $10                                        ; $617a: $10
    db $10                                        ; $617b: $10
    db $10                                        ; $617c: $10
    db $10                                        ; $617d: $10
    db $10                                        ; $617e: $10
    stop                                          ; $617f: $10 $00
    nop                                           ; $6181: $00
    nop                                           ; $6182: $00
    nop                                           ; $6183: $00
    nop                                           ; $6184: $00
    nop                                           ; $6185: $00
    nop                                           ; $6186: $00
    nop                                           ; $6187: $00
    nop                                           ; $6188: $00
    nop                                           ; $6189: $00
    nop                                           ; $618a: $00
    nop                                           ; $618b: $00
    nop                                           ; $618c: $00
    nop                                           ; $618d: $00
    nop                                           ; $618e: $00
    nop                                           ; $618f: $00
    nop                                           ; $6190: $00
    nop                                           ; $6191: $00
    nop                                           ; $6192: $00
    nop                                           ; $6193: $00
    nop                                           ; $6194: $00
    nop                                           ; $6195: $00
    nop                                           ; $6196: $00
    nop                                           ; $6197: $00
    nop                                           ; $6198: $00
    nop                                           ; $6199: $00
    nop                                           ; $619a: $00
    nop                                           ; $619b: $00
    nop                                           ; $619c: $00
    nop                                           ; $619d: $00
    nop                                           ; $619e: $00
    nop                                           ; $619f: $00
    nop                                           ; $61a0: $00
    nop                                           ; $61a1: $00
    nop                                           ; $61a2: $00
    nop                                           ; $61a3: $00
    nop                                           ; $61a4: $00
    nop                                           ; $61a5: $00
    nop                                           ; $61a6: $00
    nop                                           ; $61a7: $00
    nop                                           ; $61a8: $00
    nop                                           ; $61a9: $00
    nop                                           ; $61aa: $00
    nop                                           ; $61ab: $00
    nop                                           ; $61ac: $00
    nop                                           ; $61ad: $00
    nop                                           ; $61ae: $00
    nop                                           ; $61af: $00
    nop                                           ; $61b0: $00
    nop                                           ; $61b1: $00
    nop                                           ; $61b2: $00
    nop                                           ; $61b3: $00
    nop                                           ; $61b4: $00
    nop                                           ; $61b5: $00
    nop                                           ; $61b6: $00
    nop                                           ; $61b7: $00
    nop                                           ; $61b8: $00
    nop                                           ; $61b9: $00
    nop                                           ; $61ba: $00
    nop                                           ; $61bb: $00
    nop                                           ; $61bc: $00
    nop                                           ; $61bd: $00
    nop                                           ; $61be: $00
    nop                                           ; $61bf: $00
    nop                                           ; $61c0: $00
    nop                                           ; $61c1: $00
    nop                                           ; $61c2: $00
    nop                                           ; $61c3: $00
    nop                                           ; $61c4: $00
    nop                                           ; $61c5: $00
    nop                                           ; $61c6: $00
    nop                                           ; $61c7: $00
    nop                                           ; $61c8: $00
    nop                                           ; $61c9: $00
    nop                                           ; $61ca: $00
    nop                                           ; $61cb: $00
    nop                                           ; $61cc: $00
    nop                                           ; $61cd: $00
    nop                                           ; $61ce: $00
    nop                                           ; $61cf: $00
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
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    nop                                           ; $6202: $00
    nop                                           ; $6203: $00
    nop                                           ; $6204: $00
    nop                                           ; $6205: $00
    nop                                           ; $6206: $00
    nop                                           ; $6207: $00
    nop                                           ; $6208: $00
    nop                                           ; $6209: $00
    nop                                           ; $620a: $00
    nop                                           ; $620b: $00
    nop                                           ; $620c: $00
    nop                                           ; $620d: $00
    nop                                           ; $620e: $00
    nop                                           ; $620f: $00
    nop                                           ; $6210: $00
    nop                                           ; $6211: $00
    nop                                           ; $6212: $00
    nop                                           ; $6213: $00
    nop                                           ; $6214: $00
    nop                                           ; $6215: $00
    nop                                           ; $6216: $00
    nop                                           ; $6217: $00
    nop                                           ; $6218: $00
    nop                                           ; $6219: $00
    nop                                           ; $621a: $00
    nop                                           ; $621b: $00
    nop                                           ; $621c: $00
    nop                                           ; $621d: $00
    nop                                           ; $621e: $00
    nop                                           ; $621f: $00
    ccf                                           ; $6220: $3f
    add b                                         ; $6221: $80
    ccf                                           ; $6222: $3f
    add b                                         ; $6223: $80
    ccf                                           ; $6224: $3f
    add b                                         ; $6225: $80
    ccf                                           ; $6226: $3f
    add b                                         ; $6227: $80
    ccf                                           ; $6228: $3f
    add b                                         ; $6229: $80
    ccf                                           ; $622a: $3f
    add b                                         ; $622b: $80
    ccf                                           ; $622c: $3f
    add b                                         ; $622d: $80
    ccf                                           ; $622e: $3f
    add b                                         ; $622f: $80
    rst RST_38                                    ; $6230: $ff
    nop                                           ; $6231: $00
    rst RST_38                                    ; $6232: $ff
    nop                                           ; $6233: $00
    rst RST_38                                    ; $6234: $ff
    nop                                           ; $6235: $00
    rst RST_38                                    ; $6236: $ff
    nop                                           ; $6237: $00
    rst RST_38                                    ; $6238: $ff
    nop                                           ; $6239: $00
    rst RST_38                                    ; $623a: $ff
    nop                                           ; $623b: $00
    rst RST_38                                    ; $623c: $ff
    nop                                           ; $623d: $00
    rst RST_38                                    ; $623e: $ff
    nop                                           ; $623f: $00
    rst RST_38                                    ; $6240: $ff
    nop                                           ; $6241: $00
    rst RST_38                                    ; $6242: $ff
    nop                                           ; $6243: $00
    rst RST_38                                    ; $6244: $ff
    nop                                           ; $6245: $00
    rst RST_38                                    ; $6246: $ff
    nop                                           ; $6247: $00
    rst RST_38                                    ; $6248: $ff
    nop                                           ; $6249: $00
    rst RST_38                                    ; $624a: $ff
    nop                                           ; $624b: $00
    rst RST_38                                    ; $624c: $ff
    nop                                           ; $624d: $00
    rst RST_38                                    ; $624e: $ff
    nop                                           ; $624f: $00
    nop                                           ; $6250: $00
    ld b, b                                       ; $6251: $40
    nop                                           ; $6252: $00
    ld b, b                                       ; $6253: $40
    nop                                           ; $6254: $00
    ld b, b                                       ; $6255: $40
    nop                                           ; $6256: $00
    ld b, b                                       ; $6257: $40
    nop                                           ; $6258: $00
    ld b, b                                       ; $6259: $40
    nop                                           ; $625a: $00
    ld b, b                                       ; $625b: $40
    nop                                           ; $625c: $00
    ld b, b                                       ; $625d: $40
    nop                                           ; $625e: $00
    ld b, b                                       ; $625f: $40
    nop                                           ; $6260: $00
    nop                                           ; $6261: $00
    nop                                           ; $6262: $00
    nop                                           ; $6263: $00
    nop                                           ; $6264: $00
    nop                                           ; $6265: $00
    nop                                           ; $6266: $00
    nop                                           ; $6267: $00
    nop                                           ; $6268: $00
    nop                                           ; $6269: $00
    nop                                           ; $626a: $00
    nop                                           ; $626b: $00
    nop                                           ; $626c: $00
    nop                                           ; $626d: $00
    nop                                           ; $626e: $00
    nop                                           ; $626f: $00
    db $10                                        ; $6270: $10
    db $10                                        ; $6271: $10
    db $10                                        ; $6272: $10
    db $10                                        ; $6273: $10
    db $10                                        ; $6274: $10
    db $10                                        ; $6275: $10
    db $10                                        ; $6276: $10
    db $10                                        ; $6277: $10
    db $10                                        ; $6278: $10
    db $10                                        ; $6279: $10
    db $10                                        ; $627a: $10
    db $10                                        ; $627b: $10
    db $10                                        ; $627c: $10
    db $10                                        ; $627d: $10
    db $10                                        ; $627e: $10
    stop                                          ; $627f: $10 $00
    nop                                           ; $6281: $00
    nop                                           ; $6282: $00
    nop                                           ; $6283: $00
    nop                                           ; $6284: $00
    nop                                           ; $6285: $00
    nop                                           ; $6286: $00
    nop                                           ; $6287: $00
    nop                                           ; $6288: $00
    nop                                           ; $6289: $00
    nop                                           ; $628a: $00
    nop                                           ; $628b: $00
    nop                                           ; $628c: $00
    nop                                           ; $628d: $00
    nop                                           ; $628e: $00
    nop                                           ; $628f: $00
    nop                                           ; $6290: $00
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    nop                                           ; $6294: $00
    nop                                           ; $6295: $00
    nop                                           ; $6296: $00
    nop                                           ; $6297: $00
    nop                                           ; $6298: $00
    nop                                           ; $6299: $00
    nop                                           ; $629a: $00
    nop                                           ; $629b: $00
    nop                                           ; $629c: $00
    nop                                           ; $629d: $00
    nop                                           ; $629e: $00
    nop                                           ; $629f: $00
    nop                                           ; $62a0: $00
    nop                                           ; $62a1: $00
    nop                                           ; $62a2: $00
    nop                                           ; $62a3: $00
    nop                                           ; $62a4: $00
    nop                                           ; $62a5: $00
    nop                                           ; $62a6: $00
    nop                                           ; $62a7: $00
    nop                                           ; $62a8: $00
    nop                                           ; $62a9: $00
    nop                                           ; $62aa: $00
    nop                                           ; $62ab: $00
    nop                                           ; $62ac: $00
    nop                                           ; $62ad: $00
    nop                                           ; $62ae: $00
    nop                                           ; $62af: $00
    nop                                           ; $62b0: $00
    nop                                           ; $62b1: $00
    nop                                           ; $62b2: $00
    nop                                           ; $62b3: $00
    nop                                           ; $62b4: $00
    nop                                           ; $62b5: $00
    nop                                           ; $62b6: $00
    nop                                           ; $62b7: $00
    nop                                           ; $62b8: $00
    nop                                           ; $62b9: $00
    nop                                           ; $62ba: $00
    nop                                           ; $62bb: $00
    nop                                           ; $62bc: $00
    nop                                           ; $62bd: $00
    nop                                           ; $62be: $00
    nop                                           ; $62bf: $00
    nop                                           ; $62c0: $00
    nop                                           ; $62c1: $00
    nop                                           ; $62c2: $00
    nop                                           ; $62c3: $00
    nop                                           ; $62c4: $00
    nop                                           ; $62c5: $00
    nop                                           ; $62c6: $00
    nop                                           ; $62c7: $00
    nop                                           ; $62c8: $00
    nop                                           ; $62c9: $00
    nop                                           ; $62ca: $00
    nop                                           ; $62cb: $00
    nop                                           ; $62cc: $00
    nop                                           ; $62cd: $00
    nop                                           ; $62ce: $00
    nop                                           ; $62cf: $00
    nop                                           ; $62d0: $00
    nop                                           ; $62d1: $00
    nop                                           ; $62d2: $00
    nop                                           ; $62d3: $00
    nop                                           ; $62d4: $00
    nop                                           ; $62d5: $00
    nop                                           ; $62d6: $00
    nop                                           ; $62d7: $00
    nop                                           ; $62d8: $00
    nop                                           ; $62d9: $00
    nop                                           ; $62da: $00
    nop                                           ; $62db: $00
    nop                                           ; $62dc: $00
    nop                                           ; $62dd: $00
    nop                                           ; $62de: $00
    nop                                           ; $62df: $00
    nop                                           ; $62e0: $00
    nop                                           ; $62e1: $00
    nop                                           ; $62e2: $00
    nop                                           ; $62e3: $00
    nop                                           ; $62e4: $00
    nop                                           ; $62e5: $00
    nop                                           ; $62e6: $00
    nop                                           ; $62e7: $00
    nop                                           ; $62e8: $00
    nop                                           ; $62e9: $00
    nop                                           ; $62ea: $00
    nop                                           ; $62eb: $00
    nop                                           ; $62ec: $00
    nop                                           ; $62ed: $00
    nop                                           ; $62ee: $00
    nop                                           ; $62ef: $00
    nop                                           ; $62f0: $00
    nop                                           ; $62f1: $00
    nop                                           ; $62f2: $00
    nop                                           ; $62f3: $00
    nop                                           ; $62f4: $00
    nop                                           ; $62f5: $00
    nop                                           ; $62f6: $00
    nop                                           ; $62f7: $00
    nop                                           ; $62f8: $00
    nop                                           ; $62f9: $00
    nop                                           ; $62fa: $00
    nop                                           ; $62fb: $00
    nop                                           ; $62fc: $00
    nop                                           ; $62fd: $00
    nop                                           ; $62fe: $00
    nop                                           ; $62ff: $00
    nop                                           ; $6300: $00
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    nop                                           ; $6304: $00
    nop                                           ; $6305: $00
    nop                                           ; $6306: $00
    nop                                           ; $6307: $00
    nop                                           ; $6308: $00
    nop                                           ; $6309: $00
    nop                                           ; $630a: $00
    nop                                           ; $630b: $00
    nop                                           ; $630c: $00
    nop                                           ; $630d: $00
    nop                                           ; $630e: $00
    nop                                           ; $630f: $00
    nop                                           ; $6310: $00
    nop                                           ; $6311: $00
    nop                                           ; $6312: $00
    nop                                           ; $6313: $00
    nop                                           ; $6314: $00
    nop                                           ; $6315: $00
    nop                                           ; $6316: $00
    nop                                           ; $6317: $00
    nop                                           ; $6318: $00
    nop                                           ; $6319: $00
    nop                                           ; $631a: $00
    nop                                           ; $631b: $00
    nop                                           ; $631c: $00
    nop                                           ; $631d: $00
    nop                                           ; $631e: $00
    nop                                           ; $631f: $00
    ccf                                           ; $6320: $3f
    add b                                         ; $6321: $80
    ccf                                           ; $6322: $3f
    add b                                         ; $6323: $80
    ccf                                           ; $6324: $3f
    add b                                         ; $6325: $80
    ccf                                           ; $6326: $3f
    add b                                         ; $6327: $80
    ccf                                           ; $6328: $3f
    add b                                         ; $6329: $80
    ccf                                           ; $632a: $3f
    add b                                         ; $632b: $80
    ccf                                           ; $632c: $3f
    add b                                         ; $632d: $80
    ccf                                           ; $632e: $3f
    add b                                         ; $632f: $80
    rst RST_38                                    ; $6330: $ff
    nop                                           ; $6331: $00
    rst RST_38                                    ; $6332: $ff
    nop                                           ; $6333: $00
    rst RST_38                                    ; $6334: $ff
    nop                                           ; $6335: $00
    rst RST_38                                    ; $6336: $ff
    nop                                           ; $6337: $00
    rst RST_38                                    ; $6338: $ff
    nop                                           ; $6339: $00
    rst RST_38                                    ; $633a: $ff
    nop                                           ; $633b: $00
    rst RST_38                                    ; $633c: $ff
    nop                                           ; $633d: $00
    rst RST_38                                    ; $633e: $ff
    nop                                           ; $633f: $00
    rst RST_38                                    ; $6340: $ff
    nop                                           ; $6341: $00
    rst RST_38                                    ; $6342: $ff
    nop                                           ; $6343: $00
    rst RST_38                                    ; $6344: $ff
    nop                                           ; $6345: $00
    rst RST_38                                    ; $6346: $ff
    nop                                           ; $6347: $00
    rst RST_38                                    ; $6348: $ff
    nop                                           ; $6349: $00
    rst RST_38                                    ; $634a: $ff
    nop                                           ; $634b: $00
    rst RST_38                                    ; $634c: $ff
    nop                                           ; $634d: $00
    rst RST_38                                    ; $634e: $ff
    nop                                           ; $634f: $00
    nop                                           ; $6350: $00
    ld b, b                                       ; $6351: $40
    nop                                           ; $6352: $00
    ld b, b                                       ; $6353: $40
    nop                                           ; $6354: $00
    ld b, b                                       ; $6355: $40
    nop                                           ; $6356: $00
    ld b, b                                       ; $6357: $40
    nop                                           ; $6358: $00
    ld b, b                                       ; $6359: $40
    nop                                           ; $635a: $00
    ld b, b                                       ; $635b: $40
    nop                                           ; $635c: $00
    ld b, b                                       ; $635d: $40
    nop                                           ; $635e: $00
    ld b, b                                       ; $635f: $40
    nop                                           ; $6360: $00
    nop                                           ; $6361: $00
    nop                                           ; $6362: $00
    nop                                           ; $6363: $00
    nop                                           ; $6364: $00
    nop                                           ; $6365: $00
    nop                                           ; $6366: $00
    nop                                           ; $6367: $00
    nop                                           ; $6368: $00
    nop                                           ; $6369: $00
    nop                                           ; $636a: $00
    nop                                           ; $636b: $00
    nop                                           ; $636c: $00
    nop                                           ; $636d: $00
    nop                                           ; $636e: $00
    nop                                           ; $636f: $00
    db $10                                        ; $6370: $10
    db $10                                        ; $6371: $10
    db $10                                        ; $6372: $10
    db $10                                        ; $6373: $10
    db $10                                        ; $6374: $10
    db $10                                        ; $6375: $10
    db $10                                        ; $6376: $10
    db $10                                        ; $6377: $10
    db $10                                        ; $6378: $10
    db $10                                        ; $6379: $10
    db $10                                        ; $637a: $10
    db $10                                        ; $637b: $10
    db $10                                        ; $637c: $10
    db $10                                        ; $637d: $10
    db $10                                        ; $637e: $10
    stop                                          ; $637f: $10 $00
    nop                                           ; $6381: $00
    nop                                           ; $6382: $00
    nop                                           ; $6383: $00
    nop                                           ; $6384: $00
    nop                                           ; $6385: $00
    nop                                           ; $6386: $00
    nop                                           ; $6387: $00
    nop                                           ; $6388: $00
    nop                                           ; $6389: $00
    nop                                           ; $638a: $00
    nop                                           ; $638b: $00
    nop                                           ; $638c: $00
    nop                                           ; $638d: $00
    nop                                           ; $638e: $00
    nop                                           ; $638f: $00
    nop                                           ; $6390: $00
    nop                                           ; $6391: $00
    nop                                           ; $6392: $00
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    nop                                           ; $6395: $00
    nop                                           ; $6396: $00
    nop                                           ; $6397: $00
    nop                                           ; $6398: $00
    nop                                           ; $6399: $00
    nop                                           ; $639a: $00
    nop                                           ; $639b: $00
    nop                                           ; $639c: $00
    nop                                           ; $639d: $00
    nop                                           ; $639e: $00
    nop                                           ; $639f: $00
    nop                                           ; $63a0: $00
    nop                                           ; $63a1: $00
    nop                                           ; $63a2: $00
    nop                                           ; $63a3: $00
    nop                                           ; $63a4: $00
    nop                                           ; $63a5: $00
    nop                                           ; $63a6: $00
    nop                                           ; $63a7: $00
    nop                                           ; $63a8: $00
    nop                                           ; $63a9: $00
    nop                                           ; $63aa: $00
    nop                                           ; $63ab: $00
    nop                                           ; $63ac: $00
    nop                                           ; $63ad: $00
    nop                                           ; $63ae: $00
    nop                                           ; $63af: $00
    nop                                           ; $63b0: $00
    nop                                           ; $63b1: $00
    nop                                           ; $63b2: $00
    nop                                           ; $63b3: $00
    nop                                           ; $63b4: $00
    nop                                           ; $63b5: $00
    nop                                           ; $63b6: $00
    nop                                           ; $63b7: $00
    nop                                           ; $63b8: $00
    nop                                           ; $63b9: $00
    nop                                           ; $63ba: $00
    nop                                           ; $63bb: $00
    nop                                           ; $63bc: $00
    nop                                           ; $63bd: $00
    nop                                           ; $63be: $00
    nop                                           ; $63bf: $00
    nop                                           ; $63c0: $00
    nop                                           ; $63c1: $00
    nop                                           ; $63c2: $00
    nop                                           ; $63c3: $00
    nop                                           ; $63c4: $00
    nop                                           ; $63c5: $00
    nop                                           ; $63c6: $00
    nop                                           ; $63c7: $00
    nop                                           ; $63c8: $00
    nop                                           ; $63c9: $00
    nop                                           ; $63ca: $00
    nop                                           ; $63cb: $00
    nop                                           ; $63cc: $00
    nop                                           ; $63cd: $00
    nop                                           ; $63ce: $00
    nop                                           ; $63cf: $00
    nop                                           ; $63d0: $00
    nop                                           ; $63d1: $00
    nop                                           ; $63d2: $00
    nop                                           ; $63d3: $00
    nop                                           ; $63d4: $00
    nop                                           ; $63d5: $00
    nop                                           ; $63d6: $00
    nop                                           ; $63d7: $00
    nop                                           ; $63d8: $00
    nop                                           ; $63d9: $00
    nop                                           ; $63da: $00
    nop                                           ; $63db: $00
    nop                                           ; $63dc: $00
    nop                                           ; $63dd: $00
    nop                                           ; $63de: $00
    nop                                           ; $63df: $00
    nop                                           ; $63e0: $00
    nop                                           ; $63e1: $00
    nop                                           ; $63e2: $00
    nop                                           ; $63e3: $00
    nop                                           ; $63e4: $00
    nop                                           ; $63e5: $00
    nop                                           ; $63e6: $00
    nop                                           ; $63e7: $00
    nop                                           ; $63e8: $00
    nop                                           ; $63e9: $00
    nop                                           ; $63ea: $00
    nop                                           ; $63eb: $00
    nop                                           ; $63ec: $00
    nop                                           ; $63ed: $00
    nop                                           ; $63ee: $00
    nop                                           ; $63ef: $00
    nop                                           ; $63f0: $00
    nop                                           ; $63f1: $00
    nop                                           ; $63f2: $00
    nop                                           ; $63f3: $00
    nop                                           ; $63f4: $00
    nop                                           ; $63f5: $00
    nop                                           ; $63f6: $00
    nop                                           ; $63f7: $00
    nop                                           ; $63f8: $00
    nop                                           ; $63f9: $00
    nop                                           ; $63fa: $00
    nop                                           ; $63fb: $00
    nop                                           ; $63fc: $00
    nop                                           ; $63fd: $00
    nop                                           ; $63fe: $00
    nop                                           ; $63ff: $00
    nop                                           ; $6400: $00
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    nop                                           ; $6404: $00
    nop                                           ; $6405: $00
    nop                                           ; $6406: $00
    nop                                           ; $6407: $00
    nop                                           ; $6408: $00
    nop                                           ; $6409: $00
    nop                                           ; $640a: $00
    nop                                           ; $640b: $00
    nop                                           ; $640c: $00
    nop                                           ; $640d: $00
    nop                                           ; $640e: $00
    nop                                           ; $640f: $00
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    nop                                           ; $6416: $00
    nop                                           ; $6417: $00
    nop                                           ; $6418: $00
    nop                                           ; $6419: $00
    nop                                           ; $641a: $00
    nop                                           ; $641b: $00
    nop                                           ; $641c: $00
    nop                                           ; $641d: $00
    nop                                           ; $641e: $00
    nop                                           ; $641f: $00
    ccf                                           ; $6420: $3f
    add b                                         ; $6421: $80
    ccf                                           ; $6422: $3f
    add b                                         ; $6423: $80
    ccf                                           ; $6424: $3f
    add b                                         ; $6425: $80
    ccf                                           ; $6426: $3f
    add b                                         ; $6427: $80
    ccf                                           ; $6428: $3f
    add b                                         ; $6429: $80
    nop                                           ; $642a: $00
    add b                                         ; $642b: $80
    nop                                           ; $642c: $00
    ld a, a                                       ; $642d: $7f
    nop                                           ; $642e: $00
    nop                                           ; $642f: $00
    rst RST_38                                    ; $6430: $ff
    nop                                           ; $6431: $00
    rst RST_38                                    ; $6432: $ff
    nop                                           ; $6433: $00
    rst RST_38                                    ; $6434: $ff
    nop                                           ; $6435: $00
    rst RST_38                                    ; $6436: $ff
    nop                                           ; $6437: $00
    rst RST_38                                    ; $6438: $ff
    nop                                           ; $6439: $00
    nop                                           ; $643a: $00
    nop                                           ; $643b: $00
    nop                                           ; $643c: $00
    rst RST_38                                    ; $643d: $ff
    nop                                           ; $643e: $00
    nop                                           ; $643f: $00
    rst RST_38                                    ; $6440: $ff
    nop                                           ; $6441: $00
    rst RST_38                                    ; $6442: $ff
    nop                                           ; $6443: $00
    rst RST_38                                    ; $6444: $ff
    nop                                           ; $6445: $00
    rst RST_38                                    ; $6446: $ff
    nop                                           ; $6447: $00
    rst RST_38                                    ; $6448: $ff
    nop                                           ; $6449: $00
    nop                                           ; $644a: $00
    nop                                           ; $644b: $00
    nop                                           ; $644c: $00
    rst RST_38                                    ; $644d: $ff
    nop                                           ; $644e: $00
    nop                                           ; $644f: $00
    nop                                           ; $6450: $00
    ld b, b                                       ; $6451: $40
    nop                                           ; $6452: $00
    ld b, b                                       ; $6453: $40
    nop                                           ; $6454: $00
    ld b, b                                       ; $6455: $40
    nop                                           ; $6456: $00
    ld b, b                                       ; $6457: $40
    nop                                           ; $6458: $00
    ld b, b                                       ; $6459: $40
    nop                                           ; $645a: $00
    ld b, b                                       ; $645b: $40
    nop                                           ; $645c: $00
    add b                                         ; $645d: $80
    nop                                           ; $645e: $00
    nop                                           ; $645f: $00
    nop                                           ; $6460: $00
    nop                                           ; $6461: $00
    nop                                           ; $6462: $00
    nop                                           ; $6463: $00
    nop                                           ; $6464: $00
    nop                                           ; $6465: $00
    nop                                           ; $6466: $00
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    nop                                           ; $6469: $00
    nop                                           ; $646a: $00
    nop                                           ; $646b: $00
    nop                                           ; $646c: $00
    nop                                           ; $646d: $00
    nop                                           ; $646e: $00
    nop                                           ; $646f: $00
    db $10                                        ; $6470: $10
    db $10                                        ; $6471: $10
    db $10                                        ; $6472: $10
    db $10                                        ; $6473: $10
    db $10                                        ; $6474: $10
    db $10                                        ; $6475: $10
    db $10                                        ; $6476: $10
    db $10                                        ; $6477: $10
    db $10                                        ; $6478: $10
    db $10                                        ; $6479: $10
    db $10                                        ; $647a: $10
    db $10                                        ; $647b: $10
    db $10                                        ; $647c: $10
    db $10                                        ; $647d: $10
    db $10                                        ; $647e: $10
    stop                                          ; $647f: $10 $00
    nop                                           ; $6481: $00
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    nop                                           ; $6484: $00
    nop                                           ; $6485: $00
    nop                                           ; $6486: $00
    nop                                           ; $6487: $00
    nop                                           ; $6488: $00
    nop                                           ; $6489: $00
    nop                                           ; $648a: $00
    nop                                           ; $648b: $00
    nop                                           ; $648c: $00
    nop                                           ; $648d: $00
    nop                                           ; $648e: $00
    nop                                           ; $648f: $00
    nop                                           ; $6490: $00
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00
    nop                                           ; $6493: $00
    nop                                           ; $6494: $00
    nop                                           ; $6495: $00
    nop                                           ; $6496: $00
    nop                                           ; $6497: $00
    nop                                           ; $6498: $00
    nop                                           ; $6499: $00
    nop                                           ; $649a: $00
    nop                                           ; $649b: $00
    nop                                           ; $649c: $00
    nop                                           ; $649d: $00
    nop                                           ; $649e: $00
    nop                                           ; $649f: $00
    nop                                           ; $64a0: $00
    nop                                           ; $64a1: $00
    nop                                           ; $64a2: $00
    nop                                           ; $64a3: $00
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
    nop                                           ; $64b0: $00
    nop                                           ; $64b1: $00
    nop                                           ; $64b2: $00
    nop                                           ; $64b3: $00
    nop                                           ; $64b4: $00
    nop                                           ; $64b5: $00
    nop                                           ; $64b6: $00
    nop                                           ; $64b7: $00
    nop                                           ; $64b8: $00
    nop                                           ; $64b9: $00
    nop                                           ; $64ba: $00
    nop                                           ; $64bb: $00
    nop                                           ; $64bc: $00
    nop                                           ; $64bd: $00
    nop                                           ; $64be: $00
    nop                                           ; $64bf: $00
    nop                                           ; $64c0: $00
    nop                                           ; $64c1: $00
    nop                                           ; $64c2: $00
    nop                                           ; $64c3: $00
    nop                                           ; $64c4: $00
    nop                                           ; $64c5: $00
    nop                                           ; $64c6: $00
    nop                                           ; $64c7: $00
    nop                                           ; $64c8: $00
    nop                                           ; $64c9: $00
    nop                                           ; $64ca: $00
    nop                                           ; $64cb: $00
    nop                                           ; $64cc: $00
    nop                                           ; $64cd: $00
    nop                                           ; $64ce: $00
    nop                                           ; $64cf: $00
    nop                                           ; $64d0: $00
    nop                                           ; $64d1: $00
    nop                                           ; $64d2: $00
    nop                                           ; $64d3: $00
    nop                                           ; $64d4: $00
    nop                                           ; $64d5: $00
    nop                                           ; $64d6: $00
    nop                                           ; $64d7: $00
    nop                                           ; $64d8: $00
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    nop                                           ; $64db: $00
    nop                                           ; $64dc: $00
    nop                                           ; $64dd: $00
    nop                                           ; $64de: $00
    nop                                           ; $64df: $00
    nop                                           ; $64e0: $00
    nop                                           ; $64e1: $00
    nop                                           ; $64e2: $00
    nop                                           ; $64e3: $00
    nop                                           ; $64e4: $00
    nop                                           ; $64e5: $00
    nop                                           ; $64e6: $00
    nop                                           ; $64e7: $00
    nop                                           ; $64e8: $00
    nop                                           ; $64e9: $00
    nop                                           ; $64ea: $00
    nop                                           ; $64eb: $00
    nop                                           ; $64ec: $00
    nop                                           ; $64ed: $00
    nop                                           ; $64ee: $00
    nop                                           ; $64ef: $00
    nop                                           ; $64f0: $00
    nop                                           ; $64f1: $00
    nop                                           ; $64f2: $00
    nop                                           ; $64f3: $00
    nop                                           ; $64f4: $00
    nop                                           ; $64f5: $00
    nop                                           ; $64f6: $00
    nop                                           ; $64f7: $00
    nop                                           ; $64f8: $00
    nop                                           ; $64f9: $00
    nop                                           ; $64fa: $00
    nop                                           ; $64fb: $00
    nop                                           ; $64fc: $00
    nop                                           ; $64fd: $00
    nop                                           ; $64fe: $00
    nop                                           ; $64ff: $00
    nop                                           ; $6500: $00
    nop                                           ; $6501: $00
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    nop                                           ; $6504: $00
    nop                                           ; $6505: $00
    nop                                           ; $6506: $00
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    nop                                           ; $6509: $00
    nop                                           ; $650a: $00
    nop                                           ; $650b: $00
    nop                                           ; $650c: $00
    nop                                           ; $650d: $00
    nop                                           ; $650e: $00
    nop                                           ; $650f: $00
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    nop                                           ; $6513: $00
    nop                                           ; $6514: $00
    nop                                           ; $6515: $00
    nop                                           ; $6516: $00
    nop                                           ; $6517: $00
    nop                                           ; $6518: $00
    nop                                           ; $6519: $00
    nop                                           ; $651a: $00
    nop                                           ; $651b: $00
    nop                                           ; $651c: $00
    nop                                           ; $651d: $00
    nop                                           ; $651e: $00
    nop                                           ; $651f: $00
    nop                                           ; $6520: $00
    nop                                           ; $6521: $00
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00
    nop                                           ; $652a: $00
    nop                                           ; $652b: $00
    nop                                           ; $652c: $00
    nop                                           ; $652d: $00
    nop                                           ; $652e: $00
    nop                                           ; $652f: $00
    nop                                           ; $6530: $00
    nop                                           ; $6531: $00
    nop                                           ; $6532: $00
    nop                                           ; $6533: $00
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    nop                                           ; $6536: $00
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    nop                                           ; $6539: $00
    nop                                           ; $653a: $00
    nop                                           ; $653b: $00
    nop                                           ; $653c: $00
    nop                                           ; $653d: $00
    nop                                           ; $653e: $00
    nop                                           ; $653f: $00
    nop                                           ; $6540: $00
    nop                                           ; $6541: $00
    nop                                           ; $6542: $00
    nop                                           ; $6543: $00
    nop                                           ; $6544: $00
    nop                                           ; $6545: $00
    nop                                           ; $6546: $00
    nop                                           ; $6547: $00
    nop                                           ; $6548: $00
    nop                                           ; $6549: $00
    nop                                           ; $654a: $00
    nop                                           ; $654b: $00
    nop                                           ; $654c: $00
    nop                                           ; $654d: $00
    nop                                           ; $654e: $00
    nop                                           ; $654f: $00
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    nop                                           ; $6553: $00
    nop                                           ; $6554: $00
    nop                                           ; $6555: $00
    nop                                           ; $6556: $00
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    nop                                           ; $655a: $00
    nop                                           ; $655b: $00
    nop                                           ; $655c: $00
    nop                                           ; $655d: $00
    nop                                           ; $655e: $00
    nop                                           ; $655f: $00
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    nop                                           ; $6567: $00
    nop                                           ; $6568: $00
    nop                                           ; $6569: $00
    nop                                           ; $656a: $00
    nop                                           ; $656b: $00
    nop                                           ; $656c: $00
    nop                                           ; $656d: $00
    nop                                           ; $656e: $00
    nop                                           ; $656f: $00
    db $10                                        ; $6570: $10
    db $10                                        ; $6571: $10
    db $10                                        ; $6572: $10
    db $10                                        ; $6573: $10
    db $10                                        ; $6574: $10
    db $10                                        ; $6575: $10
    db $10                                        ; $6576: $10
    db $10                                        ; $6577: $10
    db $10                                        ; $6578: $10
    db $10                                        ; $6579: $10
    db $10                                        ; $657a: $10
    db $10                                        ; $657b: $10
    db $10                                        ; $657c: $10
    db $10                                        ; $657d: $10
    db $10                                        ; $657e: $10
    stop                                          ; $657f: $10 $00
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    nop                                           ; $6583: $00
    nop                                           ; $6584: $00
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    nop                                           ; $6589: $00
    nop                                           ; $658a: $00
    nop                                           ; $658b: $00
    nop                                           ; $658c: $00
    nop                                           ; $658d: $00
    nop                                           ; $658e: $00
    nop                                           ; $658f: $00
    nop                                           ; $6590: $00
    nop                                           ; $6591: $00
    nop                                           ; $6592: $00
    nop                                           ; $6593: $00
    nop                                           ; $6594: $00
    nop                                           ; $6595: $00
    nop                                           ; $6596: $00
    nop                                           ; $6597: $00
    nop                                           ; $6598: $00
    nop                                           ; $6599: $00
    nop                                           ; $659a: $00
    nop                                           ; $659b: $00
    nop                                           ; $659c: $00
    nop                                           ; $659d: $00
    nop                                           ; $659e: $00
    nop                                           ; $659f: $00
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
    nop                                           ; $65ac: $00
    nop                                           ; $65ad: $00
    nop                                           ; $65ae: $00
    nop                                           ; $65af: $00
    nop                                           ; $65b0: $00
    nop                                           ; $65b1: $00
    nop                                           ; $65b2: $00
    nop                                           ; $65b3: $00
    nop                                           ; $65b4: $00
    nop                                           ; $65b5: $00
    nop                                           ; $65b6: $00
    nop                                           ; $65b7: $00
    nop                                           ; $65b8: $00
    nop                                           ; $65b9: $00
    nop                                           ; $65ba: $00
    nop                                           ; $65bb: $00
    nop                                           ; $65bc: $00
    nop                                           ; $65bd: $00
    nop                                           ; $65be: $00
    nop                                           ; $65bf: $00
    nop                                           ; $65c0: $00
    nop                                           ; $65c1: $00
    nop                                           ; $65c2: $00
    nop                                           ; $65c3: $00
    nop                                           ; $65c4: $00
    nop                                           ; $65c5: $00
    nop                                           ; $65c6: $00
    nop                                           ; $65c7: $00
    nop                                           ; $65c8: $00
    nop                                           ; $65c9: $00
    nop                                           ; $65ca: $00
    nop                                           ; $65cb: $00
    nop                                           ; $65cc: $00
    nop                                           ; $65cd: $00
    nop                                           ; $65ce: $00
    nop                                           ; $65cf: $00
    nop                                           ; $65d0: $00
    nop                                           ; $65d1: $00
    nop                                           ; $65d2: $00
    nop                                           ; $65d3: $00
    nop                                           ; $65d4: $00
    nop                                           ; $65d5: $00
    nop                                           ; $65d6: $00
    nop                                           ; $65d7: $00
    nop                                           ; $65d8: $00
    nop                                           ; $65d9: $00
    nop                                           ; $65da: $00
    nop                                           ; $65db: $00
    nop                                           ; $65dc: $00
    nop                                           ; $65dd: $00
    nop                                           ; $65de: $00
    nop                                           ; $65df: $00
    nop                                           ; $65e0: $00
    nop                                           ; $65e1: $00
    nop                                           ; $65e2: $00
    nop                                           ; $65e3: $00
    nop                                           ; $65e4: $00
    nop                                           ; $65e5: $00
    nop                                           ; $65e6: $00
    nop                                           ; $65e7: $00
    nop                                           ; $65e8: $00
    nop                                           ; $65e9: $00
    nop                                           ; $65ea: $00
    nop                                           ; $65eb: $00
    nop                                           ; $65ec: $00
    nop                                           ; $65ed: $00
    nop                                           ; $65ee: $00
    nop                                           ; $65ef: $00
    nop                                           ; $65f0: $00
    nop                                           ; $65f1: $00
    nop                                           ; $65f2: $00
    nop                                           ; $65f3: $00
    nop                                           ; $65f4: $00
    nop                                           ; $65f5: $00
    nop                                           ; $65f6: $00
    nop                                           ; $65f7: $00
    nop                                           ; $65f8: $00
    nop                                           ; $65f9: $00
    nop                                           ; $65fa: $00
    nop                                           ; $65fb: $00
    nop                                           ; $65fc: $00
    nop                                           ; $65fd: $00
    nop                                           ; $65fe: $00
    nop                                           ; $65ff: $00
    nop                                           ; $6600: $00
    nop                                           ; $6601: $00
    nop                                           ; $6602: $00
    nop                                           ; $6603: $00
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    nop                                           ; $6606: $00
    nop                                           ; $6607: $00
    nop                                           ; $6608: $00
    nop                                           ; $6609: $00
    nop                                           ; $660a: $00
    nop                                           ; $660b: $00
    nop                                           ; $660c: $00
    nop                                           ; $660d: $00
    nop                                           ; $660e: $00
    nop                                           ; $660f: $00
    nop                                           ; $6610: $00
    nop                                           ; $6611: $00
    nop                                           ; $6612: $00
    nop                                           ; $6613: $00
    nop                                           ; $6614: $00
    nop                                           ; $6615: $00
    nop                                           ; $6616: $00
    nop                                           ; $6617: $00
    nop                                           ; $6618: $00
    nop                                           ; $6619: $00
    nop                                           ; $661a: $00
    nop                                           ; $661b: $00
    nop                                           ; $661c: $00
    nop                                           ; $661d: $00
    nop                                           ; $661e: $00
    nop                                           ; $661f: $00
    nop                                           ; $6620: $00
    nop                                           ; $6621: $00
    nop                                           ; $6622: $00
    nop                                           ; $6623: $00
    nop                                           ; $6624: $00
    nop                                           ; $6625: $00
    nop                                           ; $6626: $00
    nop                                           ; $6627: $00
    nop                                           ; $6628: $00
    nop                                           ; $6629: $00
    nop                                           ; $662a: $00
    nop                                           ; $662b: $00
    nop                                           ; $662c: $00
    nop                                           ; $662d: $00
    nop                                           ; $662e: $00
    nop                                           ; $662f: $00
    nop                                           ; $6630: $00
    nop                                           ; $6631: $00
    nop                                           ; $6632: $00
    nop                                           ; $6633: $00
    nop                                           ; $6634: $00
    nop                                           ; $6635: $00
    nop                                           ; $6636: $00
    nop                                           ; $6637: $00
    nop                                           ; $6638: $00
    nop                                           ; $6639: $00
    nop                                           ; $663a: $00
    nop                                           ; $663b: $00
    nop                                           ; $663c: $00
    nop                                           ; $663d: $00
    nop                                           ; $663e: $00
    nop                                           ; $663f: $00
    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    nop                                           ; $6642: $00
    nop                                           ; $6643: $00
    nop                                           ; $6644: $00
    nop                                           ; $6645: $00
    nop                                           ; $6646: $00
    nop                                           ; $6647: $00
    nop                                           ; $6648: $00
    nop                                           ; $6649: $00
    nop                                           ; $664a: $00
    nop                                           ; $664b: $00
    nop                                           ; $664c: $00
    nop                                           ; $664d: $00
    nop                                           ; $664e: $00
    nop                                           ; $664f: $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    nop                                           ; $6655: $00
    nop                                           ; $6656: $00
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    nop                                           ; $6659: $00
    nop                                           ; $665a: $00
    nop                                           ; $665b: $00
    nop                                           ; $665c: $00
    nop                                           ; $665d: $00
    nop                                           ; $665e: $00
    nop                                           ; $665f: $00
    nop                                           ; $6660: $00
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    nop                                           ; $6663: $00
    nop                                           ; $6664: $00
    nop                                           ; $6665: $00
    nop                                           ; $6666: $00
    nop                                           ; $6667: $00
    nop                                           ; $6668: $00
    nop                                           ; $6669: $00
    nop                                           ; $666a: $00
    nop                                           ; $666b: $00
    nop                                           ; $666c: $00
    nop                                           ; $666d: $00
    nop                                           ; $666e: $00
    nop                                           ; $666f: $00
    db $10                                        ; $6670: $10
    db $10                                        ; $6671: $10
    db $10                                        ; $6672: $10
    db $10                                        ; $6673: $10
    db $10                                        ; $6674: $10
    db $10                                        ; $6675: $10
    db $10                                        ; $6676: $10
    db $10                                        ; $6677: $10
    db $10                                        ; $6678: $10
    db $10                                        ; $6679: $10
    db $10                                        ; $667a: $10
    db $10                                        ; $667b: $10
    db $10                                        ; $667c: $10
    db $10                                        ; $667d: $10
    db $10                                        ; $667e: $10
    stop                                          ; $667f: $10 $00
    nop                                           ; $6681: $00
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    nop                                           ; $6684: $00
    nop                                           ; $6685: $00
    nop                                           ; $6686: $00
    nop                                           ; $6687: $00
    nop                                           ; $6688: $00
    nop                                           ; $6689: $00
    nop                                           ; $668a: $00
    nop                                           ; $668b: $00
    nop                                           ; $668c: $00
    nop                                           ; $668d: $00
    nop                                           ; $668e: $00
    nop                                           ; $668f: $00
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    nop                                           ; $6693: $00
    nop                                           ; $6694: $00
    nop                                           ; $6695: $00
    nop                                           ; $6696: $00
    nop                                           ; $6697: $00
    nop                                           ; $6698: $00
    nop                                           ; $6699: $00
    nop                                           ; $669a: $00
    nop                                           ; $669b: $00
    nop                                           ; $669c: $00
    nop                                           ; $669d: $00
    nop                                           ; $669e: $00
    nop                                           ; $669f: $00
    nop                                           ; $66a0: $00
    nop                                           ; $66a1: $00
    nop                                           ; $66a2: $00
    nop                                           ; $66a3: $00
    nop                                           ; $66a4: $00
    nop                                           ; $66a5: $00
    nop                                           ; $66a6: $00
    nop                                           ; $66a7: $00
    nop                                           ; $66a8: $00
    nop                                           ; $66a9: $00
    nop                                           ; $66aa: $00
    nop                                           ; $66ab: $00
    nop                                           ; $66ac: $00
    nop                                           ; $66ad: $00
    nop                                           ; $66ae: $00
    nop                                           ; $66af: $00
    nop                                           ; $66b0: $00
    nop                                           ; $66b1: $00
    nop                                           ; $66b2: $00
    nop                                           ; $66b3: $00
    nop                                           ; $66b4: $00
    nop                                           ; $66b5: $00
    nop                                           ; $66b6: $00
    nop                                           ; $66b7: $00
    nop                                           ; $66b8: $00
    nop                                           ; $66b9: $00
    nop                                           ; $66ba: $00
    nop                                           ; $66bb: $00
    nop                                           ; $66bc: $00
    nop                                           ; $66bd: $00
    nop                                           ; $66be: $00
    nop                                           ; $66bf: $00
    nop                                           ; $66c0: $00
    nop                                           ; $66c1: $00
    nop                                           ; $66c2: $00
    nop                                           ; $66c3: $00
    nop                                           ; $66c4: $00
    nop                                           ; $66c5: $00
    nop                                           ; $66c6: $00
    nop                                           ; $66c7: $00
    nop                                           ; $66c8: $00
    nop                                           ; $66c9: $00
    nop                                           ; $66ca: $00
    nop                                           ; $66cb: $00
    nop                                           ; $66cc: $00
    nop                                           ; $66cd: $00
    nop                                           ; $66ce: $00
    nop                                           ; $66cf: $00
    nop                                           ; $66d0: $00
    nop                                           ; $66d1: $00
    nop                                           ; $66d2: $00
    nop                                           ; $66d3: $00
    nop                                           ; $66d4: $00
    nop                                           ; $66d5: $00
    nop                                           ; $66d6: $00
    nop                                           ; $66d7: $00
    nop                                           ; $66d8: $00
    nop                                           ; $66d9: $00
    nop                                           ; $66da: $00
    nop                                           ; $66db: $00
    nop                                           ; $66dc: $00
    nop                                           ; $66dd: $00
    nop                                           ; $66de: $00
    nop                                           ; $66df: $00
    nop                                           ; $66e0: $00
    nop                                           ; $66e1: $00
    nop                                           ; $66e2: $00
    nop                                           ; $66e3: $00
    nop                                           ; $66e4: $00
    nop                                           ; $66e5: $00
    nop                                           ; $66e6: $00
    nop                                           ; $66e7: $00
    nop                                           ; $66e8: $00
    nop                                           ; $66e9: $00
    nop                                           ; $66ea: $00
    nop                                           ; $66eb: $00
    nop                                           ; $66ec: $00
    nop                                           ; $66ed: $00
    nop                                           ; $66ee: $00
    nop                                           ; $66ef: $00
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
    nop                                           ; $66ff: $00
    nop                                           ; $6700: $00
    nop                                           ; $6701: $00
    nop                                           ; $6702: $00
    nop                                           ; $6703: $00
    nop                                           ; $6704: $00
    nop                                           ; $6705: $00
    rst RST_38                                    ; $6706: $ff
    rst RST_38                                    ; $6707: $ff
    nop                                           ; $6708: $00
    nop                                           ; $6709: $00
    nop                                           ; $670a: $00
    nop                                           ; $670b: $00
    nop                                           ; $670c: $00
    nop                                           ; $670d: $00
    nop                                           ; $670e: $00
    nop                                           ; $670f: $00
    nop                                           ; $6710: $00
    nop                                           ; $6711: $00
    nop                                           ; $6712: $00
    nop                                           ; $6713: $00
    nop                                           ; $6714: $00
    nop                                           ; $6715: $00
    rst RST_38                                    ; $6716: $ff
    rst RST_38                                    ; $6717: $ff
    nop                                           ; $6718: $00
    nop                                           ; $6719: $00
    nop                                           ; $671a: $00
    nop                                           ; $671b: $00
    nop                                           ; $671c: $00
    nop                                           ; $671d: $00
    nop                                           ; $671e: $00
    nop                                           ; $671f: $00
    nop                                           ; $6720: $00
    nop                                           ; $6721: $00
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    nop                                           ; $6725: $00
    rst RST_38                                    ; $6726: $ff
    rst RST_38                                    ; $6727: $ff
    nop                                           ; $6728: $00
    nop                                           ; $6729: $00
    nop                                           ; $672a: $00
    nop                                           ; $672b: $00
    nop                                           ; $672c: $00
    nop                                           ; $672d: $00
    nop                                           ; $672e: $00
    nop                                           ; $672f: $00
    nop                                           ; $6730: $00
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    nop                                           ; $6733: $00
    nop                                           ; $6734: $00
    nop                                           ; $6735: $00
    rst RST_38                                    ; $6736: $ff
    rst RST_38                                    ; $6737: $ff
    nop                                           ; $6738: $00
    nop                                           ; $6739: $00
    nop                                           ; $673a: $00
    nop                                           ; $673b: $00
    nop                                           ; $673c: $00
    nop                                           ; $673d: $00
    nop                                           ; $673e: $00
    nop                                           ; $673f: $00
    nop                                           ; $6740: $00
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    nop                                           ; $6744: $00
    nop                                           ; $6745: $00
    rst RST_38                                    ; $6746: $ff
    rst RST_38                                    ; $6747: $ff
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    nop                                           ; $674a: $00
    nop                                           ; $674b: $00
    nop                                           ; $674c: $00
    nop                                           ; $674d: $00
    nop                                           ; $674e: $00
    nop                                           ; $674f: $00
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    nop                                           ; $6752: $00
    nop                                           ; $6753: $00
    nop                                           ; $6754: $00
    nop                                           ; $6755: $00
    rst RST_38                                    ; $6756: $ff
    rst RST_38                                    ; $6757: $ff
    nop                                           ; $6758: $00
    nop                                           ; $6759: $00
    nop                                           ; $675a: $00
    nop                                           ; $675b: $00
    nop                                           ; $675c: $00
    nop                                           ; $675d: $00
    nop                                           ; $675e: $00
    nop                                           ; $675f: $00
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    nop                                           ; $6764: $00
    nop                                           ; $6765: $00
    rst RST_38                                    ; $6766: $ff
    rst RST_38                                    ; $6767: $ff
    nop                                           ; $6768: $00
    nop                                           ; $6769: $00
    nop                                           ; $676a: $00
    nop                                           ; $676b: $00
    nop                                           ; $676c: $00
    nop                                           ; $676d: $00
    nop                                           ; $676e: $00
    nop                                           ; $676f: $00
    db $10                                        ; $6770: $10
    db $10                                        ; $6771: $10
    db $10                                        ; $6772: $10
    db $10                                        ; $6773: $10
    db $10                                        ; $6774: $10
    db $10                                        ; $6775: $10
    ldh a, [$fff0]                                ; $6776: $f0 $f0
    nop                                           ; $6778: $00
    nop                                           ; $6779: $00
    nop                                           ; $677a: $00
    nop                                           ; $677b: $00
    nop                                           ; $677c: $00
    nop                                           ; $677d: $00
    nop                                           ; $677e: $00
    nop                                           ; $677f: $00
    nop                                           ; $6780: $00
    nop                                           ; $6781: $00
    nop                                           ; $6782: $00
    nop                                           ; $6783: $00
    nop                                           ; $6784: $00
    nop                                           ; $6785: $00
    nop                                           ; $6786: $00
    nop                                           ; $6787: $00
    nop                                           ; $6788: $00
    nop                                           ; $6789: $00
    nop                                           ; $678a: $00
    nop                                           ; $678b: $00
    nop                                           ; $678c: $00
    nop                                           ; $678d: $00
    nop                                           ; $678e: $00
    nop                                           ; $678f: $00
    nop                                           ; $6790: $00
    nop                                           ; $6791: $00
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    nop                                           ; $6794: $00
    nop                                           ; $6795: $00
    nop                                           ; $6796: $00
    nop                                           ; $6797: $00
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    nop                                           ; $679a: $00
    nop                                           ; $679b: $00
    nop                                           ; $679c: $00
    nop                                           ; $679d: $00
    nop                                           ; $679e: $00
    nop                                           ; $679f: $00
    nop                                           ; $67a0: $00
    nop                                           ; $67a1: $00
    nop                                           ; $67a2: $00
    nop                                           ; $67a3: $00
    nop                                           ; $67a4: $00
    nop                                           ; $67a5: $00
    nop                                           ; $67a6: $00
    nop                                           ; $67a7: $00
    nop                                           ; $67a8: $00
    nop                                           ; $67a9: $00
    nop                                           ; $67aa: $00
    nop                                           ; $67ab: $00
    nop                                           ; $67ac: $00
    nop                                           ; $67ad: $00
    nop                                           ; $67ae: $00
    nop                                           ; $67af: $00
    nop                                           ; $67b0: $00
    nop                                           ; $67b1: $00
    nop                                           ; $67b2: $00
    nop                                           ; $67b3: $00
    nop                                           ; $67b4: $00
    nop                                           ; $67b5: $00
    nop                                           ; $67b6: $00
    nop                                           ; $67b7: $00
    nop                                           ; $67b8: $00
    nop                                           ; $67b9: $00
    nop                                           ; $67ba: $00
    nop                                           ; $67bb: $00
    nop                                           ; $67bc: $00
    nop                                           ; $67bd: $00
    nop                                           ; $67be: $00
    nop                                           ; $67bf: $00
    nop                                           ; $67c0: $00
    nop                                           ; $67c1: $00
    nop                                           ; $67c2: $00
    nop                                           ; $67c3: $00
    nop                                           ; $67c4: $00
    nop                                           ; $67c5: $00
    nop                                           ; $67c6: $00
    nop                                           ; $67c7: $00
    nop                                           ; $67c8: $00
    nop                                           ; $67c9: $00
    nop                                           ; $67ca: $00
    nop                                           ; $67cb: $00
    nop                                           ; $67cc: $00
    nop                                           ; $67cd: $00
    nop                                           ; $67ce: $00
    nop                                           ; $67cf: $00
    nop                                           ; $67d0: $00
    nop                                           ; $67d1: $00
    nop                                           ; $67d2: $00
    nop                                           ; $67d3: $00
    nop                                           ; $67d4: $00
    nop                                           ; $67d5: $00
    nop                                           ; $67d6: $00
    nop                                           ; $67d7: $00
    nop                                           ; $67d8: $00
    nop                                           ; $67d9: $00
    nop                                           ; $67da: $00
    nop                                           ; $67db: $00
    nop                                           ; $67dc: $00
    nop                                           ; $67dd: $00
    nop                                           ; $67de: $00
    nop                                           ; $67df: $00
    nop                                           ; $67e0: $00
    nop                                           ; $67e1: $00
    nop                                           ; $67e2: $00
    nop                                           ; $67e3: $00
    nop                                           ; $67e4: $00
    nop                                           ; $67e5: $00
    nop                                           ; $67e6: $00
    nop                                           ; $67e7: $00
    nop                                           ; $67e8: $00
    nop                                           ; $67e9: $00
    nop                                           ; $67ea: $00
    nop                                           ; $67eb: $00
    nop                                           ; $67ec: $00
    nop                                           ; $67ed: $00
    nop                                           ; $67ee: $00
    nop                                           ; $67ef: $00
    nop                                           ; $67f0: $00
    nop                                           ; $67f1: $00
    nop                                           ; $67f2: $00
    nop                                           ; $67f3: $00
    nop                                           ; $67f4: $00
    nop                                           ; $67f5: $00
    nop                                           ; $67f6: $00
    nop                                           ; $67f7: $00
    nop                                           ; $67f8: $00
    nop                                           ; $67f9: $00
    nop                                           ; $67fa: $00
    nop                                           ; $67fb: $00
    nop                                           ; $67fc: $00
    nop                                           ; $67fd: $00
    nop                                           ; $67fe: $00
    nop                                           ; $67ff: $00
    nop                                           ; $6800: $00
    nop                                           ; $6801: $00
    ld a, h                                       ; $6802: $7c
    ld a, b                                       ; $6803: $78
    ld l, h                                       ; $6804: $6c
    ld l, h                                       ; $6805: $6c
    ld a, h                                       ; $6806: $7c
    ld a, b                                       ; $6807: $78
    ld l, h                                       ; $6808: $6c
    ld l, h                                       ; $6809: $6c
    ld l, h                                       ; $680a: $6c
    ld l, h                                       ; $680b: $6c
    nop                                           ; $680c: $00
    nop                                           ; $680d: $00
    nop                                           ; $680e: $00
    nop                                           ; $680f: $00
    nop                                           ; $6810: $00
    nop                                           ; $6811: $00
    ld a, h                                       ; $6812: $7c
    inc a                                         ; $6813: $3c
    ld h, c                                       ; $6814: $61
    ld h, b                                       ; $6815: $60
    ld h, c                                       ; $6816: $61
    ld h, c                                       ; $6817: $61
    ld h, c                                       ; $6818: $61
    ld h, c                                       ; $6819: $61
    ld a, l                                       ; $681a: $7d
    inc a                                         ; $681b: $3c
    nop                                           ; $681c: $00
    nop                                           ; $681d: $00
    nop                                           ; $681e: $00
    nop                                           ; $681f: $00
    nop                                           ; $6820: $00
    nop                                           ; $6821: $00
    nop                                           ; $6822: $00
    nop                                           ; $6823: $00
    ldh [$ffc0], a                                ; $6824: $e0 $c0
    and b                                         ; $6826: $a0
    and b                                         ; $6827: $a0
    and b                                         ; $6828: $a0
    and b                                         ; $6829: $a0
    jp hl                                         ; $682a: $e9


    ret                                           ; $682b: $c9


    inc bc                                        ; $682c: $03
    ld [bc], a                                    ; $682d: $02
    nop                                           ; $682e: $00
    nop                                           ; $682f: $00
    nop                                           ; $6830: $00
    nop                                           ; $6831: $00
    ld h, e                                       ; $6832: $63
    ld h, e                                       ; $6833: $63
    ld h, a                                       ; $6834: $67
    ld h, a                                       ; $6835: $67
    ld h, e                                       ; $6836: $63
    ld h, e                                       ; $6837: $63
    ld h, e                                       ; $6838: $63
    ld h, e                                       ; $6839: $63
    ld a, e                                       ; $683a: $7b
    ld a, e                                       ; $683b: $7b
    nop                                           ; $683c: $00
    nop                                           ; $683d: $00
    nop                                           ; $683e: $00
    nop                                           ; $683f: $00
    nop                                           ; $6840: $00
    nop                                           ; $6841: $00
    nop                                           ; $6842: $00
    nop                                           ; $6843: $00
    nop                                           ; $6844: $00
    nop                                           ; $6845: $00
    nop                                           ; $6846: $00
    nop                                           ; $6847: $00
    nop                                           ; $6848: $00
    nop                                           ; $6849: $00
    nop                                           ; $684a: $00
    nop                                           ; $684b: $00
    ld bc, $0100                                  ; $684c: $01 $00 $01
    ld bc, $0000                                  ; $684f: $01 $00 $00
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
    ret nz                                        ; $685e: $c0

    ret nz                                        ; $685f: $c0

    ld b, b                                       ; $6860: $40
    ld b, b                                       ; $6861: $40
    ld b, b                                       ; $6862: $40
    ld b, b                                       ; $6863: $40
    ld b, b                                       ; $6864: $40
    ld b, b                                       ; $6865: $40
    ld b, b                                       ; $6866: $40
    ld b, b                                       ; $6867: $40
    ld b, b                                       ; $6868: $40
    ld b, b                                       ; $6869: $40
    ld b, b                                       ; $686a: $40
    ld b, b                                       ; $686b: $40
    ld b, b                                       ; $686c: $40
    ld b, b                                       ; $686d: $40
    ld b, b                                       ; $686e: $40
    ld b, b                                       ; $686f: $40
    add b                                         ; $6870: $80
    ld a, a                                       ; $6871: $7f
    ldh [$ff1f], a                                ; $6872: $e0 $1f
    ldh a, [rIF]                                  ; $6874: $f0 $0f
    ld hl, sp+$1f                                 ; $6876: $f8 $1f
    ldh a, [$ff3f]                                ; $6878: $f0 $3f
    ldh [rIE], a                                  ; $687a: $e0 $ff
    nop                                           ; $687c: $00
    rst RST_38                                    ; $687d: $ff
    nop                                           ; $687e: $00
    rst RST_38                                    ; $687f: $ff
    add b                                         ; $6880: $80
    ld a, a                                       ; $6881: $7f
    ret nz                                        ; $6882: $c0

    ccf                                           ; $6883: $3f
    ldh [$ff1f], a                                ; $6884: $e0 $1f
    ldh a, [rIF]                                  ; $6886: $f0 $0f
    ld hl, sp+$0f                                 ; $6888: $f8 $0f
    ld hl, sp+$0f                                 ; $688a: $f8 $0f
    ld hl, sp+$0f                                 ; $688c: $f8 $0f
    add sp, $1f                                   ; $688e: $e8 $1f
    ldh a, [$ff1f]                                ; $6890: $f0 $1f
    ldh a, [$ff3f]                                ; $6892: $f0 $3f
    ld h, b                                       ; $6894: $60
    rst RST_38                                    ; $6895: $ff
    add b                                         ; $6896: $80
    rst RST_38                                    ; $6897: $ff
    nop                                           ; $6898: $00
    rst RST_38                                    ; $6899: $ff
    nop                                           ; $689a: $00
    rst RST_38                                    ; $689b: $ff
    nop                                           ; $689c: $00
    rst RST_38                                    ; $689d: $ff
    nop                                           ; $689e: $00
    nop                                           ; $689f: $00
    ret nz                                        ; $68a0: $c0

    ret nz                                        ; $68a1: $c0

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
    inc c                                         ; $68b2: $0c
    inc c                                         ; $68b3: $0c
    adc h                                         ; $68b4: $8c
    adc h                                         ; $68b5: $8c
    ld a, h                                       ; $68b6: $7c
    inc a                                         ; $68b7: $3c
    ld l, h                                       ; $68b8: $6c
    ld l, h                                       ; $68b9: $6c
    ld a, l                                       ; $68ba: $7d
    dec a                                         ; $68bb: $3d
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
    nop                                           ; $6fff: $00
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    nop                                           ; $7005: $00
    nop                                           ; $7006: $00
    nop                                           ; $7007: $00
    nop                                           ; $7008: $00
    nop                                           ; $7009: $00
    nop                                           ; $700a: $00
    nop                                           ; $700b: $00
    nop                                           ; $700c: $00
    nop                                           ; $700d: $00
    nop                                           ; $700e: $00
    nop                                           ; $700f: $00
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    nop                                           ; $7013: $00
    nop                                           ; $7014: $00
    nop                                           ; $7015: $00
    nop                                           ; $7016: $00
    nop                                           ; $7017: $00
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    nop                                           ; $701a: $00
    nop                                           ; $701b: $00
    nop                                           ; $701c: $00
    nop                                           ; $701d: $00
    nop                                           ; $701e: $00
    nop                                           ; $701f: $00
    ld e, $1c                                     ; $7020: $1e $1c
    inc a                                         ; $7022: $3c
    jr jr_008_705d                                ; $7023: $18 $38

    jr c, @+$72                                   ; $7025: $38 $70

    ld [hl], b                                    ; $7027: $70
    ldh [$ff60], a                                ; $7028: $e0 $60
    pop hl                                        ; $702a: $e1
    pop hl                                        ; $702b: $e1
    jp nz, $c4c3                                  ; $702c: $c2 $c3 $c4

    rst RST_00                                    ; $702f: $c7
    nop                                           ; $7030: $00
    nop                                           ; $7031: $00
    rlca                                          ; $7032: $07
    inc bc                                        ; $7033: $03
    inc a                                         ; $7034: $3c
    rra                                           ; $7035: $1f
    ld h, b                                       ; $7036: $60
    ld a, a                                       ; $7037: $7f
    add b                                         ; $7038: $80
    rst RST_38                                    ; $7039: $ff
    nop                                           ; $703a: $00
    rst RST_38                                    ; $703b: $ff
    nop                                           ; $703c: $00
    rst RST_38                                    ; $703d: $ff
    nop                                           ; $703e: $00
    rst RST_38                                    ; $703f: $ff
    nop                                           ; $7040: $00
    nop                                           ; $7041: $00
    db $fc                                        ; $7042: $fc
    ld hl, sp+$06                                 ; $7043: $f8 $06
    cp $01                                        ; $7045: $fe $01
    rst RST_38                                    ; $7047: $ff
    nop                                           ; $7048: $00
    rst RST_38                                    ; $7049: $ff
    nop                                           ; $704a: $00
    rst RST_38                                    ; $704b: $ff
    nop                                           ; $704c: $00
    rst RST_38                                    ; $704d: $ff
    nop                                           ; $704e: $00
    rst RST_38                                    ; $704f: $ff
    ld bc, $0101                                  ; $7050: $01 $01 $01
    ld bc, $0101                                  ; $7053: $01 $01 $01
    ld bc, $8101                                  ; $7056: $01 $01 $81
    add c                                         ; $7059: $81
    ld b, e                                       ; $705a: $43
    pop bc                                        ; $705b: $c1
    inc hl                                        ; $705c: $23

jr_008_705d:
    db $e3                                        ; $705d: $e3
    inc sp                                        ; $705e: $33
    db $e3                                        ; $705f: $e3
    ret nz                                        ; $7060: $c0

    ret nz                                        ; $7061: $c0

    ret nz                                        ; $7062: $c0

    ret nz                                        ; $7063: $c0

    ret nz                                        ; $7064: $c0

    ret nz                                        ; $7065: $c0

    ret nz                                        ; $7066: $c0

    ret nz                                        ; $7067: $c0

    ret nz                                        ; $7068: $c0

    ret nz                                        ; $7069: $c0

    ret nz                                        ; $706a: $c0

    add b                                         ; $706b: $80
    add b                                         ; $706c: $80
    add b                                         ; $706d: $80
    add b                                         ; $706e: $80
    add b                                         ; $706f: $80
    add b                                         ; $7070: $80
    ret nz                                        ; $7071: $c0

    nop                                           ; $7072: $00
    add b                                         ; $7073: $80
    nop                                           ; $7074: $00
    nop                                           ; $7075: $00
    nop                                           ; $7076: $00
    nop                                           ; $7077: $00
    nop                                           ; $7078: $00
    nop                                           ; $7079: $00
    nop                                           ; $707a: $00
    nop                                           ; $707b: $00
    nop                                           ; $707c: $00
    nop                                           ; $707d: $00
    nop                                           ; $707e: $00
    nop                                           ; $707f: $00
    inc bc                                        ; $7080: $03
    ld bc, $0303                                  ; $7081: $01 $03 $03
    inc bc                                        ; $7084: $03
    inc bc                                        ; $7085: $03
    rlca                                          ; $7086: $07
    inc bc                                        ; $7087: $03
    rlca                                          ; $7088: $07
    rlca                                          ; $7089: $07
    rlca                                          ; $708a: $07
    rlca                                          ; $708b: $07
    rlca                                          ; $708c: $07
    rlca                                          ; $708d: $07
    rlca                                          ; $708e: $07
    rlca                                          ; $708f: $07
    adc b                                         ; $7090: $88
    adc a                                         ; $7091: $8f
    sub b                                         ; $7092: $90
    sbc a                                         ; $7093: $9f
    or b                                          ; $7094: $b0
    rra                                           ; $7095: $1f
    jr nz, jr_008_70d7                            ; $7096: $20 $3f

    ld h, b                                       ; $7098: $60
    ccf                                           ; $7099: $3f
    ld b, c                                       ; $709a: $41
    ld a, a                                       ; $709b: $7f
    ld b, e                                       ; $709c: $43
    ld a, a                                       ; $709d: $7f
    jp Jump_000_037f                              ; $709e: $c3 $7f $03


    rst RST_38                                    ; $70a1: $ff
    rrca                                          ; $70a2: $0f
    rst RST_38                                    ; $70a3: $ff
    ccf                                           ; $70a4: $3f
    rst RST_38                                    ; $70a5: $ff
    ld a, a                                       ; $70a6: $7f
    rst RST_38                                    ; $70a7: $ff
    rst RST_38                                    ; $70a8: $ff
    rst RST_38                                    ; $70a9: $ff
    rst RST_38                                    ; $70aa: $ff
    rst RST_38                                    ; $70ab: $ff
    rst RST_38                                    ; $70ac: $ff
    rst RST_38                                    ; $70ad: $ff
    rst RST_38                                    ; $70ae: $ff
    rst RST_38                                    ; $70af: $ff
    ret nz                                        ; $70b0: $c0

    rst RST_38                                    ; $70b1: $ff
    ldh a, [rIE]                                  ; $70b2: $f0 $ff
    ld hl, sp-$01                                 ; $70b4: $f8 $ff
    db $fc                                        ; $70b6: $fc
    rst RST_38                                    ; $70b7: $ff
    db $fc                                        ; $70b8: $fc
    rst RST_38                                    ; $70b9: $ff
    cp $ff                                        ; $70ba: $fe $ff
    cp $ff                                        ; $70bc: $fe $ff
    cp $ff                                        ; $70be: $fe $ff
    rla                                           ; $70c0: $17
    di                                            ; $70c1: $f3
    rla                                           ; $70c2: $17
    rst RST_30                                    ; $70c3: $f7
    rla                                           ; $70c4: $17
    or $1e                                        ; $70c5: $f6 $1e
    or $1e                                        ; $70c7: $f6 $1e
    db $fc                                        ; $70c9: $fc
    inc e                                         ; $70ca: $1c
    db $fc                                        ; $70cb: $fc
    inc a                                         ; $70cc: $3c
    ld hl, sp+$38                                 ; $70cd: $f8 $38
    ld hl, sp-$80                                 ; $70cf: $f8 $80
    nop                                           ; $70d1: $00
    nop                                           ; $70d2: $00
    nop                                           ; $70d3: $00
    nop                                           ; $70d4: $00
    nop                                           ; $70d5: $00
    nop                                           ; $70d6: $00

jr_008_70d7:
    nop                                           ; $70d7: $00
    nop                                           ; $70d8: $00
    nop                                           ; $70d9: $00
    nop                                           ; $70da: $00
    nop                                           ; $70db: $00
    nop                                           ; $70dc: $00
    nop                                           ; $70dd: $00
    nop                                           ; $70de: $00
    nop                                           ; $70df: $00
    rlca                                          ; $70e0: $07
    rlca                                          ; $70e1: $07
    rlca                                          ; $70e2: $07
    inc bc                                        ; $70e3: $03
    inc bc                                        ; $70e4: $03
    inc bc                                        ; $70e5: $03
    inc bc                                        ; $70e6: $03
    inc bc                                        ; $70e7: $03
    inc bc                                        ; $70e8: $03
    ld bc, $0101                                  ; $70e9: $01 $01 $01
    nop                                           ; $70ec: $00
    nop                                           ; $70ed: $00
    nop                                           ; $70ee: $00
    nop                                           ; $70ef: $00
    add a                                         ; $70f0: $87
    rst RST_38                                    ; $70f1: $ff
    add a                                         ; $70f2: $87
    rst RST_38                                    ; $70f3: $ff
    add a                                         ; $70f4: $87
    rst RST_38                                    ; $70f5: $ff
    rst RST_00                                    ; $70f6: $c7
    rst RST_38                                    ; $70f7: $ff
    rst RST_00                                    ; $70f8: $c7
    rst RST_38                                    ; $70f9: $ff
    rst RST_20                                    ; $70fa: $e7
    rst RST_38                                    ; $70fb: $ff
    di                                            ; $70fc: $f3
    rst RST_38                                    ; $70fd: $ff
    ld a, a                                       ; $70fe: $7f
    ld a, a                                       ; $70ff: $7f
    rst RST_38                                    ; $7100: $ff
    rst RST_38                                    ; $7101: $ff
    db $e3                                        ; $7102: $e3
    pop af                                        ; $7103: $f1
    pop bc                                        ; $7104: $c1
    ldh [$ffc0], a                                ; $7105: $e0 $c0
    ret nz                                        ; $7107: $c0

    add b                                         ; $7108: $80
    pop bc                                        ; $7109: $c1
    add c                                         ; $710a: $81
    jp $e7db                                      ; $710b: $c3 $db $e7


    rst RST_38                                    ; $710e: $ff
    rst RST_38                                    ; $710f: $ff
    cp $ff                                        ; $7110: $fe $ff
    db $fc                                        ; $7112: $fc
    rst RST_38                                    ; $7113: $ff
    db $fd                                        ; $7114: $fd
    rst RST_38                                    ; $7115: $ff
    ei                                            ; $7116: $fb
    rst RST_38                                    ; $7117: $ff
    rst RST_38                                    ; $7118: $ff
    rst RST_38                                    ; $7119: $ff
    cp $fe                                        ; $711a: $fe $fe
    db $fc                                        ; $711c: $fc
    db $fc                                        ; $711d: $fc
    ld hl, sp-$08                                 ; $711e: $f8 $f8
    ld [hl], b                                    ; $7120: $70
    ldh a, [$ffe0]                                ; $7121: $f0 $e0
    ldh [$ffc0], a                                ; $7123: $e0 $c0
    ret nz                                        ; $7125: $c0

    add b                                         ; $7126: $80
    add b                                         ; $7127: $80
    nop                                           ; $7128: $00
    nop                                           ; $7129: $00
    nop                                           ; $712a: $00
    nop                                           ; $712b: $00
    nop                                           ; $712c: $00
    nop                                           ; $712d: $00
    nop                                           ; $712e: $00
    nop                                           ; $712f: $00
    nop                                           ; $7130: $00
    nop                                           ; $7131: $00
    nop                                           ; $7132: $00
    nop                                           ; $7133: $00
    nop                                           ; $7134: $00
    nop                                           ; $7135: $00
    nop                                           ; $7136: $00
    add b                                         ; $7137: $80
    add b                                         ; $7138: $80
    ret nz                                        ; $7139: $c0

    ret nz                                        ; $713a: $c0

    ldh [$fff0], a                                ; $713b: $e0 $f0
    ld hl, sp-$04                                 ; $713d: $f8 $fc
    cp $00                                        ; $713f: $fe $00
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    nop                                           ; $7143: $00
    nop                                           ; $7144: $00
    ld bc, $0300                                  ; $7145: $01 $00 $03
    nop                                           ; $7148: $00
    rrca                                          ; $7149: $0f
    nop                                           ; $714a: $00
    rra                                           ; $714b: $1f
    inc bc                                        ; $714c: $03
    inc a                                         ; $714d: $3c
    rlca                                          ; $714e: $07
    ld a, b                                       ; $714f: $78
    nop                                           ; $7150: $00
    rrca                                          ; $7151: $0f
    nop                                           ; $7152: $00
    ld a, a                                       ; $7153: $7f
    nop                                           ; $7154: $00
    cp $00                                        ; $7155: $fe $00
    ldh a, [rNR41]                                ; $7157: $f0 $20
    ret nz                                        ; $7159: $c0

    ret nz                                        ; $715a: $c0

    nop                                           ; $715b: $00
    add b                                         ; $715c: $80
    nop                                           ; $715d: $00
    nop                                           ; $715e: $00
    nop                                           ; $715f: $00

jr_008_7160:
    nop                                           ; $7160: $00
    rst RST_38                                    ; $7161: $ff
    nop                                           ; $7162: $00
    rst RST_38                                    ; $7163: $ff
    nop                                           ; $7164: $00
    nop                                           ; $7165: $00
    nop                                           ; $7166: $00
    nop                                           ; $7167: $00
    nop                                           ; $7168: $00
    nop                                           ; $7169: $00
    nop                                           ; $716a: $00
    nop                                           ; $716b: $00
    nop                                           ; $716c: $00
    nop                                           ; $716d: $00
    nop                                           ; $716e: $00
    nop                                           ; $716f: $00
    rra                                           ; $7170: $1f
    rst RST_38                                    ; $7171: $ff
    ld bc, $20ff                                  ; $7172: $01 $ff $20
    rra                                           ; $7175: $1f
    inc b                                         ; $7176: $04
    inc bc                                        ; $7177: $03
    nop                                           ; $7178: $00
    nop                                           ; $7179: $00
    nop                                           ; $717a: $00
    nop                                           ; $717b: $00
    nop                                           ; $717c: $00
    nop                                           ; $717d: $00
    nop                                           ; $717e: $00
    nop                                           ; $717f: $00
    ldh a, [$ffe0]                                ; $7180: $f0 $e0
    ret nz                                        ; $7182: $c0

    add b                                         ; $7183: $80
    nop                                           ; $7184: $00
    ret nz                                        ; $7185: $c0

    nop                                           ; $7186: $00
    ldh a, [$ff80]                                ; $7187: $f0 $80
    ld a, h                                       ; $7189: $7c
    jr nz, @+$21                                  ; $718a: $20 $1f

    ld [$0007], sp                                ; $718c: $08 $07 $00
    inc bc                                        ; $718f: $03
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
    ld b, b                                       ; $719c: $40
    add b                                         ; $719d: $80
    jr nz, jr_008_7160                            ; $719e: $20 $c0

    rst RST_38                                    ; $71a0: $ff
    rst RST_38                                    ; $71a1: $ff
    rst RST_38                                    ; $71a2: $ff
    rst RST_38                                    ; $71a3: $ff
    rst RST_38                                    ; $71a4: $ff
    rst RST_38                                    ; $71a5: $ff
    rst RST_38                                    ; $71a6: $ff
    rst RST_38                                    ; $71a7: $ff
    cp $ff                                        ; $71a8: $fe $ff
    cp $ff                                        ; $71aa: $fe $ff
    cp $ff                                        ; $71ac: $fe $ff
    cp $ff                                        ; $71ae: $fe $ff
    adc [hl]                                      ; $71b0: $8e
    ldh a, [$ff8e]                                ; $71b1: $f0 $8e
    ldh a, [rNR32]                                ; $71b3: $f0 $1c
    ldh [rNR32], a                                ; $71b5: $e0 $1c
    ldh [rNR32], a                                ; $71b7: $e0 $1c
    ldh [$ff3c], a                                ; $71b9: $e0 $3c
    ret nz                                        ; $71bb: $c0

    inc a                                         ; $71bc: $3c
    ret nz                                        ; $71bd: $c0

    inc a                                         ; $71be: $3c
    ret nz                                        ; $71bf: $c0

    ld bc, $0000                                  ; $71c0: $01 $00 $00
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
    ldh a, [rP1]                                  ; $71d1: $f0 $00
    ld a, b                                       ; $71d3: $78
    nop                                           ; $71d4: $00
    inc a                                         ; $71d5: $3c
    nop                                           ; $71d6: $00
    ld e, $00                                     ; $71d7: $1e $00
    rrca                                          ; $71d9: $0f
    nop                                           ; $71da: $00
    rlca                                          ; $71db: $07
    nop                                           ; $71dc: $00
    inc bc                                        ; $71dd: $03
    nop                                           ; $71de: $00
    ld bc, $0000                                  ; $71df: $01 $00 $00
    nop                                           ; $71e2: $00
    nop                                           ; $71e3: $00
    nop                                           ; $71e4: $00
    nop                                           ; $71e5: $00
    nop                                           ; $71e6: $00
    nop                                           ; $71e7: $00
    nop                                           ; $71e8: $00
    nop                                           ; $71e9: $00
    nop                                           ; $71ea: $00
    add b                                         ; $71eb: $80
    nop                                           ; $71ec: $00
    ret nz                                        ; $71ed: $c0

    nop                                           ; $71ee: $00
    ldh [$fffe], a                                ; $71ef: $e0 $fe
    rst RST_38                                    ; $71f1: $ff
    cp $ff                                        ; $71f2: $fe $ff
    cp $ff                                        ; $71f4: $fe $ff
    cp $ff                                        ; $71f6: $fe $ff
    cp $ff                                        ; $71f8: $fe $ff
    rst RST_38                                    ; $71fa: $ff
    rst RST_38                                    ; $71fb: $ff
    rst RST_38                                    ; $71fc: $ff
    rst RST_38                                    ; $71fd: $ff
    rst RST_38                                    ; $71fe: $ff
    rst RST_38                                    ; $71ff: $ff
    inc a                                         ; $7200: $3c
    ret nz                                        ; $7201: $c0

    inc a                                         ; $7202: $3c
    ret nz                                        ; $7203: $c0

    ld a, $c0                                     ; $7204: $3e $c0
    ld a, $c0                                     ; $7206: $3e $c0
    ld a, $c0                                     ; $7208: $3e $c0
    ccf                                           ; $720a: $3f
    ret nz                                        ; $720b: $c0

    rra                                           ; $720c: $1f
    ldh [$ff1f], a                                ; $720d: $e0 $1f
    ldh [rP1], a                                  ; $720f: $e0 $00
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
    add b                                         ; $721e: $80
    nop                                           ; $721f: $00
    nop                                           ; $7220: $00
    ldh a, [$ff88]                                ; $7221: $f0 $88
    ld [hl], b                                    ; $7223: $70
    ld b, b                                       ; $7224: $40
    jr c, jr_008_7227                             ; $7225: $38 $00

jr_008_7227:
    inc a                                         ; $7227: $3c
    jr nz, @+$1e                                  ; $7228: $20 $1c

    nop                                           ; $722a: $00
    ld e, $10                                     ; $722b: $1e $10
    ld c, $00                                     ; $722d: $0e $00
    rrca                                          ; $722f: $0f
    rst RST_38                                    ; $7230: $ff
    rst RST_38                                    ; $7231: $ff
    rst RST_38                                    ; $7232: $ff
    rst RST_38                                    ; $7233: $ff
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
    sbc a                                         ; $7240: $9f
    ldh [$ff8f], a                                ; $7241: $e0 $8f
    ldh a, [$ff8f]                                ; $7243: $f0 $8f
    ldh a, [$ffc7]                                ; $7245: $f0 $c7
    ld hl, sp-$39                                 ; $7247: $f8 $c7
    ld hl, sp-$1d                                 ; $7249: $f8 $e3
    db $fc                                        ; $724b: $fc
    db $e3                                        ; $724c: $e3
    db $fc                                        ; $724d: $fc
    pop af                                        ; $724e: $f1
    cp $80                                        ; $724f: $fe $80
    nop                                           ; $7251: $00
    ret nz                                        ; $7252: $c0

    nop                                           ; $7253: $00
    ret nz                                        ; $7254: $c0

    nop                                           ; $7255: $00
    ldh [rP1], a                                  ; $7256: $e0 $00
    ldh a, [rP1]                                  ; $7258: $f0 $00
    ld hl, sp+$00                                 ; $725a: $f8 $00
    db $fc                                        ; $725c: $fc
    nop                                           ; $725d: $00
    rst RST_38                                    ; $725e: $ff
    rlca                                          ; $725f: $07
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
    ld c, $0e                                     ; $726a: $0e $0e
    inc de                                        ; $726c: $13
    inc de                                        ; $726d: $13
    pop de                                        ; $726e: $d1
    pop de                                        ; $726f: $d1
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
    db $e3                                        ; $727a: $e3
    di                                            ; $727b: $f3
    sub h                                         ; $727c: $94
    sbc h                                         ; $727d: $9c
    add hl, de                                    ; $727e: $19
    add hl, de                                    ; $727f: $19
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
    rst RST_00                                    ; $728a: $c7
    rst RST_20                                    ; $728b: $e7
    jr z, jr_008_72c6                             ; $728c: $28 $38

    sbc c                                         ; $728e: $99
    sbc c                                         ; $728f: $99
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
    add $e7                                       ; $729a: $c6 $e7
    add hl, hl                                    ; $729c: $29
    add hl, sp                                    ; $729d: $39
    sbc c                                         ; $729e: $99
    sbc c                                         ; $729f: $99
    ld [$0007], sp                                ; $72a0: $08 $07 $00
    rlca                                          ; $72a3: $07
    nop                                           ; $72a4: $00
    rlca                                          ; $72a5: $07
    inc b                                         ; $72a6: $04
    inc bc                                        ; $72a7: $03
    nop                                           ; $72a8: $00
    inc bc                                        ; $72a9: $03
    ld a, $3f                                     ; $72aa: $3e $3f
    ld b, e                                       ; $72ac: $43
    jp $9999                                      ; $72ad: $c3 $99 $99


    nop                                           ; $72b0: $00
    nop                                           ; $72b1: $00
    nop                                           ; $72b2: $00
    nop                                           ; $72b3: $00
    nop                                           ; $72b4: $00
    nop                                           ; $72b5: $00
    add b                                         ; $72b6: $80
    add b                                         ; $72b7: $80
    ldh [$ffe0], a                                ; $72b8: $e0 $e0
    sub b                                         ; $72ba: $90
    sub b                                         ; $72bb: $90
    sbc a                                         ; $72bc: $9f
    sbc a                                         ; $72bd: $9f
    jr nz, jr_008_72f0                            ; $72be: $20 $30

    nop                                           ; $72c0: $00
    nop                                           ; $72c1: $00
    nop                                           ; $72c2: $00
    nop                                           ; $72c3: $00
    nop                                           ; $72c4: $00
    nop                                           ; $72c5: $00

jr_008_72c6:
    nop                                           ; $72c6: $00
    nop                                           ; $72c7: $00
    nop                                           ; $72c8: $00
    nop                                           ; $72c9: $00
    nop                                           ; $72ca: $00
    nop                                           ; $72cb: $00
    add b                                         ; $72cc: $80
    add b                                         ; $72cd: $80
    ld c, a                                       ; $72ce: $4f
    ld c, a                                       ; $72cf: $4f
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
    ld a, a                                       ; $72ea: $7f
    ld a, a                                       ; $72eb: $7f
    ld a, a                                       ; $72ec: $7f
    ld a, a                                       ; $72ed: $7f
    ld a, a                                       ; $72ee: $7f
    ld a, a                                       ; $72ef: $7f

jr_008_72f0:
    ld hl, sp-$01                                 ; $72f0: $f8 $ff
    ld hl, sp-$01                                 ; $72f2: $f8 $ff
    db $fc                                        ; $72f4: $fc
    rst RST_38                                    ; $72f5: $ff
    cp $ff                                        ; $72f6: $fe $ff
    rst RST_38                                    ; $72f8: $ff
    rst RST_38                                    ; $72f9: $ff
    rst RST_38                                    ; $72fa: $ff
    rst RST_38                                    ; $72fb: $ff
    rst RST_38                                    ; $72fc: $ff
    rst RST_38                                    ; $72fd: $ff
    rst RST_38                                    ; $72fe: $ff
    rst RST_38                                    ; $72ff: $ff
    db $fc                                        ; $7300: $fc
    inc b                                         ; $7301: $04
    ld a, l                                       ; $7302: $7d
    add l                                         ; $7303: $85
    dec a                                         ; $7304: $3d
    push bc                                       ; $7305: $c5
    dec e                                         ; $7306: $1d
    push hl                                       ; $7307: $e5
    dec c                                         ; $7308: $0d
    push af                                       ; $7309: $f5
    add l                                         ; $730a: $85
    db $fd                                        ; $730b: $fd
    push bc                                       ; $730c: $c5
    db $fd                                        ; $730d: $fd
    push hl                                       ; $730e: $e5
    db $fd                                        ; $730f: $fd
    ld d, b                                       ; $7310: $50
    ld [hl], b                                    ; $7311: $70
    jp nc, Jump_000_13f2                          ; $7312: $d2 $f2 $13

    di                                            ; $7315: $f3
    ld [de], a                                    ; $7316: $12
    di                                            ; $7317: $f3
    ld c, $ff                                     ; $7318: $0e $ff
    nop                                           ; $731a: $00
    rst RST_38                                    ; $731b: $ff
    nop                                           ; $731c: $00
    rst RST_38                                    ; $731d: $ff
    nop                                           ; $731e: $00
    rst RST_38                                    ; $731f: $ff
    add hl, de                                    ; $7320: $19
    add hl, de                                    ; $7321: $19
    sbc b                                         ; $7322: $98
    sbc b                                         ; $7323: $98
    sbc c                                         ; $7324: $99
    sbc c                                         ; $7325: $99
    sbc c                                         ; $7326: $99
    sbc c                                         ; $7327: $99
    ld [hl], a                                    ; $7328: $77
    rst RST_38                                    ; $7329: $ff
    nop                                           ; $732a: $00
    rst RST_38                                    ; $732b: $ff
    nop                                           ; $732c: $00
    rst RST_38                                    ; $732d: $ff
    nop                                           ; $732e: $00
    rst RST_38                                    ; $732f: $ff
    sbc c                                         ; $7330: $99
    sbc c                                         ; $7331: $99
    jr jr_008_734c                                ; $7332: $18 $18

    sbc c                                         ; $7334: $99
    sbc c                                         ; $7335: $99
    sbc c                                         ; $7336: $99
    sbc c                                         ; $7337: $99
    ld [hl], a                                    ; $7338: $77
    rst RST_38                                    ; $7339: $ff
    nop                                           ; $733a: $00
    rst RST_38                                    ; $733b: $ff
    nop                                           ; $733c: $00
    rst RST_38                                    ; $733d: $ff
    nop                                           ; $733e: $00
    rst RST_38                                    ; $733f: $ff
    sbc c                                         ; $7340: $99
    sbc c                                         ; $7341: $99
    add hl, sp                                    ; $7342: $39
    add hl, sp                                    ; $7343: $39
    sbc c                                         ; $7344: $99
    sbc c                                         ; $7345: $99
    sbc c                                         ; $7346: $99
    sbc c                                         ; $7347: $99

jr_008_7348:
    halt                                          ; $7348: $76
    rst RST_38                                    ; $7349: $ff
    nop                                           ; $734a: $00
    rst RST_38                                    ; $734b: $ff

jr_008_734c:
    nop                                           ; $734c: $00
    rst RST_38                                    ; $734d: $ff
    nop                                           ; $734e: $00
    rst RST_38                                    ; $734f: $ff
    sbc c                                         ; $7350: $99
    sbc c                                         ; $7351: $99
    sbc c                                         ; $7352: $99
    sbc c                                         ; $7353: $99

jr_008_7354:
    sbc c                                         ; $7354: $99
    sbc c                                         ; $7355: $99
    ld b, e                                       ; $7356: $43
    jp $ff3e                                      ; $7357: $c3 $3e $ff


    nop                                           ; $735a: $00
    rst RST_38                                    ; $735b: $ff
    nop                                           ; $735c: $00
    rst RST_38                                    ; $735d: $ff
    nop                                           ; $735e: $00
    rst RST_38                                    ; $735f: $ff
    db $e3                                        ; $7360: $e3
    db $e3                                        ; $7361: $e3
    jr nz, jr_008_7354                            ; $7362: $20 $f0

    ld e, $fe                                     ; $7364: $1e $fe
    jr nz, jr_008_7348                            ; $7366: $20 $e0

    ccf                                           ; $7368: $3f
    rst RST_38                                    ; $7369: $ff
    nop                                           ; $736a: $00
    rst RST_38                                    ; $736b: $ff
    nop                                           ; $736c: $00
    rst RST_38                                    ; $736d: $ff
    nop                                           ; $736e: $00
    rst RST_38                                    ; $736f: $ff
    ret z                                         ; $7370: $c8

    ld hl, sp+$2f                                 ; $7371: $f8 $2f
    ld a, a                                       ; $7373: $7f
    jr nz, jr_008_73b5                            ; $7374: $20 $3f

    jr nz, jr_008_73f7                            ; $7376: $20 $7f

    ret nz                                        ; $7378: $c0

    rst RST_38                                    ; $7379: $ff
    nop                                           ; $737a: $00
    rst RST_38                                    ; $737b: $ff
    nop                                           ; $737c: $00
    rst RST_38                                    ; $737d: $ff
    nop                                           ; $737e: $00
    rst RST_38                                    ; $737f: $ff
    nop                                           ; $7380: $00
    nop                                           ; $7381: $00
    rst RST_38                                    ; $7382: $ff
    rst RST_38                                    ; $7383: $ff
    nop                                           ; $7384: $00
    rst RST_38                                    ; $7385: $ff
    nop                                           ; $7386: $00
    rst RST_38                                    ; $7387: $ff
    nop                                           ; $7388: $00
    rst RST_38                                    ; $7389: $ff
    nop                                           ; $738a: $00
    rst RST_38                                    ; $738b: $ff
    nop                                           ; $738c: $00
    rst RST_38                                    ; $738d: $ff
    nop                                           ; $738e: $00
    rst RST_38                                    ; $738f: $ff
    ld a, a                                       ; $7390: $7f
    ld a, a                                       ; $7391: $7f
    ld a, a                                       ; $7392: $7f
    ld a, a                                       ; $7393: $7f
    ccf                                           ; $7394: $3f
    ld a, a                                       ; $7395: $7f
    ccf                                           ; $7396: $3f
    ccf                                           ; $7397: $3f
    rra                                           ; $7398: $1f
    ccf                                           ; $7399: $3f
    rra                                           ; $739a: $1f
    rra                                           ; $739b: $1f
    rrca                                          ; $739c: $0f
    rra                                           ; $739d: $1f
    rlca                                          ; $739e: $07
    rrca                                          ; $739f: $0f
    push af                                       ; $73a0: $f5
    db $fd                                        ; $73a1: $fd
    db $fd                                        ; $73a2: $fd
    db $fd                                        ; $73a3: $fd
    db $fd                                        ; $73a4: $fd
    db $fd                                        ; $73a5: $fd
    db $fd                                        ; $73a6: $fd
    db $fd                                        ; $73a7: $fd
    db $fd                                        ; $73a8: $fd
    db $fd                                        ; $73a9: $fd
    db $fd                                        ; $73aa: $fd
    db $fd                                        ; $73ab: $fd
    db $fd                                        ; $73ac: $fd
    db $fd                                        ; $73ad: $fd
    db $fd                                        ; $73ae: $fd
    db $fd                                        ; $73af: $fd
    nop                                           ; $73b0: $00
    ldh a, [rTAC]                                 ; $73b1: $f0 $07
    ldh a, [rTAC]                                 ; $73b3: $f0 $07

jr_008_73b5:
    ldh a, [rTAC]                                 ; $73b5: $f0 $07
    ldh a, [rTAC]                                 ; $73b7: $f0 $07
    ldh a, [rTAC]                                 ; $73b9: $f0 $07
    ldh a, [rTAC]                                 ; $73bb: $f0 $07
    ldh a, [rTAC]                                 ; $73bd: $f0 $07
    ldh a, [rSC]                                  ; $73bf: $f0 $02
    ld bc, $00ff                                  ; $73c1: $01 $ff $00
    rst RST_38                                    ; $73c4: $ff
    nop                                           ; $73c5: $00
    rst RST_38                                    ; $73c6: $ff
    nop                                           ; $73c7: $00
    rst RST_38                                    ; $73c8: $ff
    ld [hl], b                                    ; $73c9: $70
    bit 7, b                                      ; $73ca: $cb $78
    jp $c778                                      ; $73cc: $c3 $78 $c7


    ld [hl], b                                    ; $73cf: $70
    nop                                           ; $73d0: $00
    ld hl, sp+$03                                 ; $73d1: $f8 $03
    ld hl, sp-$7d                                 ; $73d3: $f8 $83
    ld a, b                                       ; $73d5: $78
    jp $c378                                      ; $73d6: $c3 $78 $c3


    jr c, @-$1b                                   ; $73d9: $38 $e3

    jr c, @-$1b                                   ; $73db: $38 $e3

    jr c, @-$1b                                   ; $73dd: $38 $e3

    jr c, jr_008_7421                             ; $73df: $38 $40

    ccf                                           ; $73e1: $3f
    ldh [$ff3f], a                                ; $73e2: $e0 $3f
    ldh [$ff3f], a                                ; $73e4: $e0 $3f

jr_008_73e6:
    ldh [$ff3e], a                                ; $73e6: $e0 $3e

jr_008_73e8:
    pop hl                                        ; $73e8: $e1
    inc a                                         ; $73e9: $3c

jr_008_73ea:
    pop hl                                        ; $73ea: $e1
    inc a                                         ; $73eb: $3c

jr_008_73ec:
    db $e3                                        ; $73ec: $e3
    jr c, @-$1b                                   ; $73ed: $38 $e3

    jr c, jr_008_73f1                             ; $73ef: $38 $00

jr_008_73f1:
    ldh [$ff3f], a                                ; $73f1: $e0 $3f
    add b                                         ; $73f3: $80
    ld a, a                                       ; $73f4: $7f
    nop                                           ; $73f5: $00
    rst RST_38                                    ; $73f6: $ff

jr_008_73f7:
    nop                                           ; $73f7: $00
    rst RST_38                                    ; $73f8: $ff
    nop                                           ; $73f9: $00
    rst RST_38                                    ; $73fa: $ff
    rrca                                          ; $73fb: $0f
    ld hl, sp+$1f                                 ; $73fc: $f8 $1f
    ldh a, [$ff3f]                                ; $73fe: $f0 $3f

jr_008_7400:
    ld b, b                                       ; $7400: $40
    jr c, jr_008_73e6                             ; $7401: $38 $e3

    jr c, jr_008_73e8                             ; $7403: $38 $e3

    jr c, jr_008_73ea                             ; $7405: $38 $e3

    jr c, jr_008_73ec                             ; $7407: $38 $e3

    jr c, @-$1b                                   ; $7409: $38 $e3

    cp b                                          ; $740b: $b8
    ld h, e                                       ; $740c: $63
    ld hl, sp+$03                                 ; $740d: $f8 $03
    ld hl, sp+$01                                 ; $740f: $f8 $01
    nop                                           ; $7411: $00
    rst RST_38                                    ; $7412: $ff
    nop                                           ; $7413: $00
    rst RST_38                                    ; $7414: $ff
    nop                                           ; $7415: $00
    rst RST_38                                    ; $7416: $ff
    nop                                           ; $7417: $00
    rst RST_38                                    ; $7418: $ff
    jr c, jr_008_7400                             ; $7419: $38 $e5

    inc a                                         ; $741b: $3c
    pop hl                                        ; $741c: $e1
    inc a                                         ; $741d: $3c
    db $e3                                        ; $741e: $e3
    jr c, jr_008_7421                             ; $741f: $38 $00

jr_008_7421:
    rst RST_38                                    ; $7421: $ff

jr_008_7422:
    add b                                         ; $7422: $80
    ld a, a                                       ; $7423: $7f
    ret nz                                        ; $7424: $c0

    ccf                                           ; $7425: $3f
    ldh [$ff3e], a                                ; $7426: $e0 $3e
    pop hl                                        ; $7428: $e1
    inc e                                         ; $7429: $1c
    pop af                                        ; $742a: $f1
    inc e                                         ; $742b: $1c
    di                                            ; $742c: $f3
    jr jr_008_7422                                ; $742d: $18 $f3

    jr jr_008_7431                                ; $742f: $18 $00

jr_008_7431:
    ldh [$ff1f], a                                ; $7431: $e0 $1f
    add b                                         ; $7433: $80
    ld a, a                                       ; $7434: $7f
    nop                                           ; $7435: $00
    rst RST_38                                    ; $7436: $ff
    nop                                           ; $7437: $00
    rst RST_38                                    ; $7438: $ff
    nop                                           ; $7439: $00
    rst RST_38                                    ; $743a: $ff
    rrca                                          ; $743b: $0f
    ld hl, sp+$1f                                 ; $743c: $f8 $1f
    ldh a, [$ff3f]                                ; $743e: $f0 $3f
    ld b, b                                       ; $7440: $40
    ccf                                           ; $7441: $3f
    ldh a, [rIF]                                  ; $7442: $f0 $0f
    ld hl, sp+$07                                 ; $7444: $f8 $07
    db $fc                                        ; $7446: $fc
    inc bc                                        ; $7447: $03
    cp $01                                        ; $7448: $fe $01
    rst RST_38                                    ; $744a: $ff
    add c                                         ; $744b: $81
    ld a, a                                       ; $744c: $7f
    ret nz                                        ; $744d: $c0

    cpl                                           ; $744e: $2f
    ldh [rDIV], a                                 ; $744f: $e0 $04
    ld hl, sp+$03                                 ; $7451: $f8 $03
    ldh a, [rIF]                                  ; $7453: $f0 $0f
    ldh [$ff2f], a                                ; $7455: $e0 $2f
    ret nz                                        ; $7457: $c0

    rra                                           ; $7458: $1f
    pop bc                                        ; $7459: $c1
    rra                                           ; $745a: $1f
    jp $c11e                                      ; $745b: $c3 $1e $c1


    cp a                                          ; $745e: $bf
    ret nz                                        ; $745f: $c0

    jr nz, jr_008_7481                            ; $7460: $20 $1f

    ld hl, sp+$07                                 ; $7462: $f8 $07
    db $fc                                        ; $7464: $fc
    inc bc                                        ; $7465: $03
    cp $07                                        ; $7466: $fe $07
    db $fc                                        ; $7468: $fc
    rst RST_08                                    ; $7469: $cf
    jr c, @+$01                                   ; $746a: $38 $ff

    nop                                           ; $746c: $00
    rst RST_38                                    ; $746d: $ff
    add b                                         ; $746e: $80
    ld a, a                                       ; $746f: $7f
    db $10                                        ; $7470: $10
    ldh [rIF], a                                  ; $7471: $e0 $0f
    ret nz                                        ; $7473: $c0

    ccf                                           ; $7474: $3f
    add b                                         ; $7475: $80
    cp a                                          ; $7476: $bf
    nop                                           ; $7477: $00
    ld a, a                                       ; $7478: $7f
    rlca                                          ; $7479: $07
    ld a, h                                       ; $747a: $7c
    rrca                                          ; $747b: $0f
    ld a, b                                       ; $747c: $78
    rlca                                          ; $747d: $07
    cp $01                                        ; $747e: $fe $01
    inc bc                                        ; $7480: $03

jr_008_7481:
    rlca                                          ; $7481: $07
    ld bc, $0003                                  ; $7482: $01 $03 $00
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
    rst RST_38                                    ; $7490: $ff
    rst RST_38                                    ; $7491: $ff
    rst RST_38                                    ; $7492: $ff
    rst RST_38                                    ; $7493: $ff
    ccf                                           ; $7494: $3f
    rst RST_38                                    ; $7495: $ff
    inc bc                                        ; $7496: $03
    inc bc                                        ; $7497: $03
    ld bc, $0103                                  ; $7498: $01 $03 $01
    ld bc, $0100                                  ; $749b: $01 $00 $01
    nop                                           ; $749e: $00
    nop                                           ; $749f: $00
    db $fd                                        ; $74a0: $fd
    db $fd                                        ; $74a1: $fd
    db $fd                                        ; $74a2: $fd
    db $fd                                        ; $74a3: $fd
    db $fd                                        ; $74a4: $fd
    db $fd                                        ; $74a5: $fd
    db $fd                                        ; $74a6: $fd
    db $fd                                        ; $74a7: $fd
    db $fd                                        ; $74a8: $fd
    db $fd                                        ; $74a9: $fd
    db $fd                                        ; $74aa: $fd
    db $fd                                        ; $74ab: $fd
    db $fd                                        ; $74ac: $fd
    db $fd                                        ; $74ad: $fd
    ld a, l                                       ; $74ae: $7d
    db $fd                                        ; $74af: $fd
    rlca                                          ; $74b0: $07
    ldh a, [rTAC]                                 ; $74b1: $f0 $07
    ldh a, [rTAC]                                 ; $74b3: $f0 $07
    ldh a, [rTAC]                                 ; $74b5: $f0 $07
    ldh a, [rTAC]                                 ; $74b7: $f0 $07
    ldh a, [rTAC]                                 ; $74b9: $f0 $07
    ldh a, [rTAC]                                 ; $74bb: $f0 $07
    ldh a, [rTAC]                                 ; $74bd: $f0 $07
    ldh a, [$ff8f]                                ; $74bf: $f0 $8f
    nop                                           ; $74c1: $00
    rst RST_38                                    ; $74c2: $ff
    nop                                           ; $74c3: $00
    rst RST_38                                    ; $74c4: $ff
    nop                                           ; $74c5: $00

jr_008_74c6:
    rst RST_38                                    ; $74c6: $ff
    ld bc, $7fff                                  ; $74c7: $01 $ff $7f

jr_008_74ca:
    ret nz                                        ; $74ca: $c0

    ld a, a                                       ; $74cb: $7f

jr_008_74cc:
    ret nz                                        ; $74cc: $c0

    ld a, a                                       ; $74cd: $7f
    ret nz                                        ; $74ce: $c0

    ld a, a                                       ; $74cf: $7f
    db $e3                                        ; $74d0: $e3
    ld a, b                                       ; $74d1: $78

jr_008_74d2:
    jp $c378                                      ; $74d2: $c3 $78 $c3


    ld hl, sp-$7d                                 ; $74d5: $f8 $83
    ld hl, sp+$03                                 ; $74d7: $f8 $03
    ld hl, sp+$03                                 ; $74d9: $f8 $03
    ld hl, sp+$03                                 ; $74db: $f8 $03
    ld hl, sp+$03                                 ; $74dd: $f8 $03
    ld hl, sp-$1d                                 ; $74df: $f8 $e3
    jr c, jr_008_74c6                             ; $74e1: $38 $e3

    jr c, @-$1b                                   ; $74e3: $38 $e3

    jr c, jr_008_74ca                             ; $74e5: $38 $e3

    jr c, jr_008_74cc                             ; $74e7: $38 $e3

    jr c, jr_008_74d2                             ; $74e9: $38 $e7

    inc a                                         ; $74eb: $3c
    db $e3                                        ; $74ec: $e3
    inc a                                         ; $74ed: $3c
    db $e3                                        ; $74ee: $e3
    ld a, $e0                                     ; $74ef: $3e $e0
    ccf                                           ; $74f1: $3f

jr_008_74f2:
    ldh [$ff3f], a                                ; $74f2: $e0 $3f
    ldh [$ff3f], a                                ; $74f4: $e0 $3f
    ldh [$ff3f], a                                ; $74f6: $e0 $3f
    ldh [$ff1f], a                                ; $74f8: $e0 $1f
    ldh a, [rIF]                                  ; $74fa: $f0 $0f
    ldh a, [rP1]                                  ; $74fc: $f0 $00
    rst RST_38                                    ; $74fe: $ff
    nop                                           ; $74ff: $00
    inc bc                                        ; $7500: $03
    ld hl, sp+$03                                 ; $7501: $f8 $03
    ld hl, sp+$03                                 ; $7503: $f8 $03
    ld hl, sp+$03                                 ; $7505: $f8 $03
    ld hl, sp+$03                                 ; $7507: $f8 $03
    ld hl, sp+$03                                 ; $7509: $f8 $03
    cp b                                          ; $750b: $b8
    ld h, e                                       ; $750c: $63
    jr c, jr_008_74f2                             ; $750d: $38 $e3

    jr c, @-$37                                   ; $750f: $38 $c7

    nop                                           ; $7511: $00
    rst RST_38                                    ; $7512: $ff
    nop                                           ; $7513: $00

jr_008_7514:
    rst RST_38                                    ; $7514: $ff
    nop                                           ; $7515: $00
    rst RST_38                                    ; $7516: $ff
    nop                                           ; $7517: $00
    rst RST_38                                    ; $7518: $ff
    jr nz, @+$01                                  ; $7519: $20 $ff

    jr nz, @+$01                                  ; $751b: $20 $ff

    jr nc, @-$0f                                  ; $751d: $30 $ef

    jr c, jr_008_7514                             ; $751f: $38 $f3

    jr c, @-$1b                                   ; $7521: $38 $e3

    jr c, @-$1b                                   ; $7523: $38 $e3

    ld a, b                                       ; $7525: $78
    jp $83f8                                      ; $7526: $c3 $f8 $83


    ld hl, sp-$79                                 ; $7529: $f8 $87
    ld a, h                                       ; $752b: $7c
    jp $c37c                                      ; $752c: $c3 $7c $c3


    ld a, $0f                                     ; $752f: $3e $0f
    ldh [rIF], a                                  ; $7531: $e0 $0f
    ldh [rIF], a                                  ; $7533: $e0 $0f
    ldh [rIF], a                                  ; $7535: $e0 $0f
    ldh [$ff1f], a                                ; $7537: $e0 $1f
    ret nz                                        ; $7539: $c0

    ccf                                           ; $753a: $3f
    add c                                         ; $753b: $81
    ld a, a                                       ; $753c: $7f
    ld bc, $03ff                                  ; $753d: $01 $ff $03
    cp a                                          ; $7540: $bf
    ldh [$ff9f], a                                ; $7541: $e0 $9f
    ldh a, [$ff8f]                                ; $7543: $f0 $8f
    db $fc                                        ; $7545: $fc
    add e                                         ; $7546: $83
    rst RST_38                                    ; $7547: $ff
    add b                                         ; $7548: $80
    rst RST_38                                    ; $7549: $ff
    add b                                         ; $754a: $80
    rst RST_28                                    ; $754b: $ef
    db $10                                        ; $754c: $10
    jp $803c                                      ; $754d: $c3 $3c $80


    ldh [$ff1f], a                                ; $7550: $e0 $1f
    ldh a, [rIF]                                  ; $7552: $f0 $0f
    ld hl, sp+$07                                 ; $7554: $f8 $07
    db $fc                                        ; $7556: $fc
    inc bc                                        ; $7557: $03
    cp $83                                        ; $7558: $fe $83
    ld a, [hl]                                    ; $755a: $7e
    add e                                         ; $755b: $83
    ld a, [hl]                                    ; $755c: $7e
    inc bc                                        ; $755d: $03
    ld a, [rTMA]                                  ; $755e: $fa $06 $ff
    add b                                         ; $7561: $80
    ld a, a                                       ; $7562: $7f
    ret nz                                        ; $7563: $c0

    ccf                                           ; $7564: $3f
    ldh a, [rIF]                                  ; $7565: $f0 $0f
    db $fc                                        ; $7567: $fc
    inc bc                                        ; $7568: $03
    cp $01                                        ; $7569: $fe $01
    cp [hl]                                       ; $756b: $be
    ld b, c                                       ; $756c: $41
    inc c                                         ; $756d: $0c
    di                                            ; $756e: $f3
    nop                                           ; $756f: $00
    dec a                                         ; $7570: $3d
    ld a, l                                       ; $7571: $7d
    dec e                                         ; $7572: $1d
    dec a                                         ; $7573: $3d
    dec b                                         ; $7574: $05
    dec c                                         ; $7575: $0d
    dec b                                         ; $7576: $05
    dec b                                         ; $7577: $05
    dec b                                         ; $7578: $05
    dec b                                         ; $7579: $05
    dec b                                         ; $757a: $05
    dec b                                         ; $757b: $05
    dec b                                         ; $757c: $05
    dec b                                         ; $757d: $05
    inc b                                         ; $757e: $04
    inc b                                         ; $757f: $04
    rlca                                          ; $7580: $07
    ldh a, [rTAC]                                 ; $7581: $f0 $07
    ldh a, [rTAC]                                 ; $7583: $f0 $07
    ldh a, [rIF]                                  ; $7585: $f0 $0f
    rst RST_38                                    ; $7587: $ff
    nop                                           ; $7588: $00
    rst RST_38                                    ; $7589: $ff
    nop                                           ; $758a: $00
    rst RST_38                                    ; $758b: $ff
    nop                                           ; $758c: $00
    rst RST_38                                    ; $758d: $ff
    nop                                           ; $758e: $00
    nop                                           ; $758f: $00
    ret nz                                        ; $7590: $c0

    ld a, a                                       ; $7591: $7f
    ret nz                                        ; $7592: $c0

    ld a, a                                       ; $7593: $7f
    ret nz                                        ; $7594: $c0

    ld a, a                                       ; $7595: $7f
    ret nz                                        ; $7596: $c0

    rst RST_38                                    ; $7597: $ff
    nop                                           ; $7598: $00
    rst RST_38                                    ; $7599: $ff
    nop                                           ; $759a: $00
    rst RST_38                                    ; $759b: $ff
    nop                                           ; $759c: $00
    rst RST_38                                    ; $759d: $ff
    nop                                           ; $759e: $00
    nop                                           ; $759f: $00
    inc bc                                        ; $75a0: $03
    ld hl, sp+$03                                 ; $75a1: $f8 $03
    ld hl, sp+$03                                 ; $75a3: $f8 $03
    ld hl, sp+$07                                 ; $75a5: $f8 $07
    rst RST_38                                    ; $75a7: $ff
    nop                                           ; $75a8: $00
    rst RST_38                                    ; $75a9: $ff
    nop                                           ; $75aa: $00
    rst RST_38                                    ; $75ab: $ff
    nop                                           ; $75ac: $00
    rst RST_38                                    ; $75ad: $ff
    nop                                           ; $75ae: $00
    nop                                           ; $75af: $00
    pop hl                                        ; $75b0: $e1
    ccf                                           ; $75b1: $3f
    ldh [$ff3f], a                                ; $75b2: $e0 $3f
    ldh [$ff3f], a                                ; $75b4: $e0 $3f

jr_008_75b6:
    ldh [rIE], a                                  ; $75b6: $e0 $ff

jr_008_75b8:
    nop                                           ; $75b8: $00
    rst RST_38                                    ; $75b9: $ff
    nop                                           ; $75ba: $00
    rst RST_38                                    ; $75bb: $ff
    nop                                           ; $75bc: $00
    rst RST_38                                    ; $75bd: $ff

jr_008_75be:
    nop                                           ; $75be: $00
    nop                                           ; $75bf: $00
    rst RST_38                                    ; $75c0: $ff
    nop                                           ; $75c1: $00
    rst RST_38                                    ; $75c2: $ff
    add b                                         ; $75c3: $80
    ld a, a                                       ; $75c4: $7f
    ldh [$ff1f], a                                ; $75c5: $e0 $1f
    rst RST_38                                    ; $75c7: $ff
    nop                                           ; $75c8: $00
    rst RST_38                                    ; $75c9: $ff

jr_008_75ca:
    nop                                           ; $75ca: $00
    rst RST_38                                    ; $75cb: $ff
    nop                                           ; $75cc: $00
    rst RST_38                                    ; $75cd: $ff
    nop                                           ; $75ce: $00
    nop                                           ; $75cf: $00
    db $e3                                        ; $75d0: $e3
    jr c, jr_008_75b6                             ; $75d1: $38 $e3

    jr c, jr_008_75b8                             ; $75d3: $38 $e3

    jr c, jr_008_75be                             ; $75d5: $38 $e7

    rst RST_38                                    ; $75d7: $ff
    nop                                           ; $75d8: $00
    rst RST_38                                    ; $75d9: $ff
    nop                                           ; $75da: $00
    rst RST_38                                    ; $75db: $ff
    nop                                           ; $75dc: $00
    rst RST_38                                    ; $75dd: $ff
    nop                                           ; $75de: $00
    nop                                           ; $75df: $00
    rst RST_20                                    ; $75e0: $e7
    jr c, jr_008_75ca                             ; $75e1: $38 $e7

    inc a                                         ; $75e3: $3c
    db $e3                                        ; $75e4: $e3
    inc a                                         ; $75e5: $3c
    db $e3                                        ; $75e6: $e3
    rst RST_38                                    ; $75e7: $ff
    nop                                           ; $75e8: $00
    rst RST_38                                    ; $75e9: $ff
    nop                                           ; $75ea: $00
    rst RST_38                                    ; $75eb: $ff
    nop                                           ; $75ec: $00
    rst RST_38                                    ; $75ed: $ff
    nop                                           ; $75ee: $00
    nop                                           ; $75ef: $00
    pop hl                                        ; $75f0: $e1
    rra                                           ; $75f1: $1f
    ldh a, [$ff1f]                                ; $75f2: $f0 $1f
    ldh a, [rIF]                                  ; $75f4: $f0 $0f
    ld hl, sp-$01                                 ; $75f6: $f8 $ff
    nop                                           ; $75f8: $00
    rst RST_38                                    ; $75f9: $ff
    nop                                           ; $75fa: $00
    rst RST_38                                    ; $75fb: $ff
    nop                                           ; $75fc: $00
    rst RST_38                                    ; $75fd: $ff
    nop                                           ; $75fe: $00
    nop                                           ; $75ff: $00
    cp $07                                        ; $7600: $fe $07
    db $fc                                        ; $7602: $fc
    rrca                                          ; $7603: $0f
    ld hl, sp+$3f                                 ; $7604: $f8 $3f
    ldh [rIE], a                                  ; $7606: $e0 $ff
    nop                                           ; $7608: $00
    rst RST_38                                    ; $7609: $ff
    nop                                           ; $760a: $00
    rst RST_38                                    ; $760b: $ff
    nop                                           ; $760c: $00
    rst RST_38                                    ; $760d: $ff
    nop                                           ; $760e: $00
    nop                                           ; $760f: $00
    ccf                                           ; $7610: $3f
    add b                                         ; $7611: $80
    ld a, a                                       ; $7612: $7f
    ret nz                                        ; $7613: $c0

    ccf                                           ; $7614: $3f
    ldh a, [rIF]                                  ; $7615: $f0 $0f
    rst RST_38                                    ; $7617: $ff
    nop                                           ; $7618: $00
    rst RST_38                                    ; $7619: $ff
    nop                                           ; $761a: $00
    rst RST_38                                    ; $761b: $ff
    nop                                           ; $761c: $00
    rst RST_38                                    ; $761d: $ff
    nop                                           ; $761e: $00
    nop                                           ; $761f: $00
    db $fc                                        ; $7620: $fc
    ld b, $fd                                     ; $7621: $06 $fd
    rrca                                          ; $7623: $0f
    ret c                                         ; $7624: $d8

    ccf                                           ; $7625: $3f
    ldh [rIE], a                                  ; $7626: $e0 $ff
    nop                                           ; $7628: $00
    rst RST_38                                    ; $7629: $ff
    nop                                           ; $762a: $00
    rst RST_38                                    ; $762b: $ff
    nop                                           ; $762c: $00
    rst RST_38                                    ; $762d: $ff
    nop                                           ; $762e: $00
    nop                                           ; $762f: $00
    rst RST_38                                    ; $7630: $ff
    nop                                           ; $7631: $00
    rst RST_38                                    ; $7632: $ff
    nop                                           ; $7633: $00
    rst RST_38                                    ; $7634: $ff
    ret nz                                        ; $7635: $c0

    ccf                                           ; $7636: $3f
    rst RST_38                                    ; $7637: $ff
    nop                                           ; $7638: $00
    rst RST_38                                    ; $7639: $ff
    nop                                           ; $763a: $00
    rst RST_38                                    ; $763b: $ff
    nop                                           ; $763c: $00
    rst RST_38                                    ; $763d: $ff
    nop                                           ; $763e: $00
    nop                                           ; $763f: $00
    rlca                                          ; $7640: $07
    rlca                                          ; $7641: $07
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
    rst RST_38                                    ; $7650: $ff
    rst RST_38                                    ; $7651: $ff
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
    rst RST_38                                    ; $7660: $ff
    rst RST_38                                    ; $7661: $ff
    rlca                                          ; $7662: $07
    rrca                                          ; $7663: $0f
    ld bc, $0003                                  ; $7664: $01 $03 $00
    nop                                           ; $7667: $00
    nop                                           ; $7668: $00
    nop                                           ; $7669: $00
    nop                                           ; $766a: $00
    nop                                           ; $766b: $00
    nop                                           ; $766c: $00
    nop                                           ; $766d: $00
    nop                                           ; $766e: $00
    nop                                           ; $766f: $00
    rst RST_38                                    ; $7670: $ff
    rst RST_38                                    ; $7671: $ff
    cp $ff                                        ; $7672: $fe $ff
    ld hl, sp-$04                                 ; $7674: $f8 $fc
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
    rst RST_38                                    ; $7680: $ff
    rst RST_38                                    ; $7681: $ff
    rrca                                          ; $7682: $0f
    rra                                           ; $7683: $1f
    rlca                                          ; $7684: $07
    rrca                                          ; $7685: $0f
    inc bc                                        ; $7686: $03
    rlca                                          ; $7687: $07
    nop                                           ; $7688: $00
    ld bc, $0000                                  ; $7689: $01 $00 $00
    nop                                           ; $768c: $00
    nop                                           ; $768d: $00
    nop                                           ; $768e: $00
    nop                                           ; $768f: $00
    rst RST_38                                    ; $7690: $ff
    rst RST_38                                    ; $7691: $ff
    rst RST_38                                    ; $7692: $ff
    rst RST_38                                    ; $7693: $ff
    rst RST_38                                    ; $7694: $ff
    rst RST_38                                    ; $7695: $ff
    rst RST_38                                    ; $7696: $ff
    rst RST_38                                    ; $7697: $ff
    rst RST_38                                    ; $7698: $ff
    rst RST_38                                    ; $7699: $ff
    rra                                           ; $769a: $1f
    ccf                                           ; $769b: $3f
    nop                                           ; $769c: $00
    nop                                           ; $769d: $00
    nop                                           ; $769e: $00
    nop                                           ; $769f: $00
    rst RST_38                                    ; $76a0: $ff
    rst RST_38                                    ; $76a1: $ff
    rst RST_38                                    ; $76a2: $ff
    rst RST_38                                    ; $76a3: $ff
    rst RST_38                                    ; $76a4: $ff
    rst RST_38                                    ; $76a5: $ff
    db $fc                                        ; $76a6: $fc
    cp $f0                                        ; $76a7: $fe $f0
    ld hl, sp-$60                                 ; $76a9: $f8 $a0
    ret nz                                        ; $76ab: $c0

    nop                                           ; $76ac: $00
    nop                                           ; $76ad: $00
    nop                                           ; $76ae: $00
    nop                                           ; $76af: $00
    rst RST_38                                    ; $76b0: $ff
    rst RST_38                                    ; $76b1: $ff
    add b                                         ; $76b2: $80
    ret nz                                        ; $76b3: $c0

    nop                                           ; $76b4: $00
    add b                                         ; $76b5: $80
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
    ld a, $3e                                     ; $76c0: $3e $3e
    ld b, c                                       ; $76c2: $41
    ld h, e                                       ; $76c3: $63
    ld c, l                                       ; $76c4: $4d
    ld e, l                                       ; $76c5: $5d
    ld d, c                                       ; $76c6: $51
    ld d, c                                       ; $76c7: $51
    ld c, l                                       ; $76c8: $4d
    ld e, l                                       ; $76c9: $5d
    ld b, c                                       ; $76ca: $41
    ld h, e                                       ; $76cb: $63
    ld a, $3e                                     ; $76cc: $3e $3e
    nop                                           ; $76ce: $00
    nop                                           ; $76cf: $00
    nop                                           ; $76d0: $00
    nop                                           ; $76d1: $00
    inc sp                                        ; $76d2: $33
    ld sp, $3333                                  ; $76d3: $31 $33 $33
    inc sp                                        ; $76d6: $33
    ld sp, $3030                                  ; $76d7: $31 $30 $30
    inc sp                                        ; $76da: $33
    inc sp                                        ; $76db: $33
    nop                                           ; $76dc: $00
    nop                                           ; $76dd: $00
    nop                                           ; $76de: $00
    nop                                           ; $76df: $00
    nop                                           ; $76e0: $00
    nop                                           ; $76e1: $00
    rst RST_28                                    ; $76e2: $ef
    rst RST_00                                    ; $76e3: $c7
    ld l, l                                       ; $76e4: $6d
    ld l, l                                       ; $76e5: $6d
    rst RST_28                                    ; $76e6: $ef
    rst RST_20                                    ; $76e7: $e7
    ld h, c                                       ; $76e8: $61
    ld h, c                                       ; $76e9: $61
    rst RST_28                                    ; $76ea: $ef
    rst RST_08                                    ; $76eb: $cf
    nop                                           ; $76ec: $00
    nop                                           ; $76ed: $00
    nop                                           ; $76ee: $00
    nop                                           ; $76ef: $00
    nop                                           ; $76f0: $00
    nop                                           ; $76f1: $00
    cp [hl]                                       ; $76f2: $be
    ld a, $b0                                     ; $76f3: $3e $b0
    or b                                          ; $76f5: $b0
    cp [hl]                                       ; $76f6: $be
    cp h                                          ; $76f7: $bc
    add [hl]                                      ; $76f8: $86
    add [hl]                                      ; $76f9: $86
    cp [hl]                                       ; $76fa: $be
    inc a                                         ; $76fb: $3c
    nop                                           ; $76fc: $00
    nop                                           ; $76fd: $00
    nop                                           ; $76fe: $00
    nop                                           ; $76ff: $00
    nop                                           ; $7700: $00
    nop                                           ; $7701: $00
    add hl, de                                    ; $7702: $19
    add hl, de                                    ; $7703: $19
    dec e                                         ; $7704: $1d
    dec e                                         ; $7705: $1d
    rra                                           ; $7706: $1f
    rra                                           ; $7707: $1f
    dec de                                        ; $7708: $1b
    dec de                                        ; $7709: $1b
    add hl, de                                    ; $770a: $19
    add hl, de                                    ; $770b: $19
    nop                                           ; $770c: $00
    nop                                           ; $770d: $00
    nop                                           ; $770e: $00
    nop                                           ; $770f: $00
    nop                                           ; $7710: $00
    nop                                           ; $7711: $00
    ld a, e                                       ; $7712: $7b
    ld a, e                                       ; $7713: $7b
    inc sp                                        ; $7714: $33
    inc sp                                        ; $7715: $33
    inc sp                                        ; $7716: $33
    inc sp                                        ; $7717: $33
    inc sp                                        ; $7718: $33
    inc sp                                        ; $7719: $33
    ld a, e                                       ; $771a: $7b
    ld a, e                                       ; $771b: $7b
    nop                                           ; $771c: $00
    nop                                           ; $771d: $00
    nop                                           ; $771e: $00
    nop                                           ; $771f: $00
    nop                                           ; $7720: $00
    nop                                           ; $7721: $00
    cpl                                           ; $7722: $2f
    cpl                                           ; $7723: $2f
    and e                                         ; $7724: $a3
    and e                                         ; $7725: $a3
    db $e3                                        ; $7726: $e3
    db $e3                                        ; $7727: $e3
    ld h, e                                       ; $7728: $63
    ld h, e                                       ; $7729: $63
    inc hl                                        ; $772a: $23
    inc hl                                        ; $772b: $23
    nop                                           ; $772c: $00
    nop                                           ; $772d: $00
    nop                                           ; $772e: $00
    nop                                           ; $772f: $00
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    rst RST_18                                    ; $7732: $df
    rst RST_18                                    ; $7733: $df
    jr jr_008_774e                                ; $7734: $18 $18

    ld e, $1e                                     ; $7736: $1e $1e
    jr jr_008_7752                                ; $7738: $18 $18

    rra                                           ; $773a: $1f
    rra                                           ; $773b: $1f
    nop                                           ; $773c: $00
    nop                                           ; $773d: $00
    nop                                           ; $773e: $00
    nop                                           ; $773f: $00
    nop                                           ; $7740: $00
    nop                                           ; $7741: $00
    ld h, l                                       ; $7742: $65
    ld h, l                                       ; $7743: $65
    ld [hl], l                                    ; $7744: $75
    ld [hl], l                                    ; $7745: $75
    ld a, l                                       ; $7746: $7d
    ld a, l                                       ; $7747: $7d
    ld l, l                                       ; $7748: $6d
    ld l, l                                       ; $7749: $6d
    ld h, l                                       ; $774a: $65
    ld h, l                                       ; $774b: $65
    nop                                           ; $774c: $00
    nop                                           ; $774d: $00

jr_008_774e:
    nop                                           ; $774e: $00
    nop                                           ; $774f: $00
    nop                                           ; $7750: $00
    nop                                           ; $7751: $00

jr_008_7752:
    rst RST_20                                    ; $7752: $e7
    db $e3                                        ; $7753: $e3
    or [hl]                                       ; $7754: $b6
    or [hl]                                       ; $7755: $b6
    or [hl]                                       ; $7756: $b6
    or [hl]                                       ; $7757: $b6
    or [hl]                                       ; $7758: $b6
    or [hl]                                       ; $7759: $b6
    rst RST_20                                    ; $775a: $e7
    db $e3                                        ; $775b: $e3
    nop                                           ; $775c: $00
    nop                                           ; $775d: $00
    nop                                           ; $775e: $00
    nop                                           ; $775f: $00
    nop                                           ; $7760: $00
    nop                                           ; $7761: $00
    ret nz                                        ; $7762: $c0

    add b                                         ; $7763: $80
    ret nz                                        ; $7764: $c0

    ret nz                                        ; $7765: $c0

    ret nz                                        ; $7766: $c0

    ret nz                                        ; $7767: $c0

    ret nz                                        ; $7768: $c0

    ret nz                                        ; $7769: $c0

    ret nz                                        ; $776a: $c0

    add b                                         ; $776b: $80
    nop                                           ; $776c: $00
    nop                                           ; $776d: $00
    nop                                           ; $776e: $00
    nop                                           ; $776f: $00
    nop                                           ; $7770: $00
    nop                                           ; $7771: $00
    rra                                           ; $7772: $1f
    ld c, $1b                                     ; $7773: $0e $1b
    dec de                                        ; $7775: $1b
    rra                                           ; $7776: $1f
    rra                                           ; $7777: $1f
    dec de                                        ; $7778: $1b
    dec de                                        ; $7779: $1b
    dec de                                        ; $777a: $1b
    dec de                                        ; $777b: $1b
    nop                                           ; $777c: $00
    nop                                           ; $777d: $00
    nop                                           ; $777e: $00
    nop                                           ; $777f: $00
    nop                                           ; $7780: $00
    nop                                           ; $7781: $00
    ld a, l                                       ; $7782: $7d
    ld a, c                                       ; $7783: $79
    ld l, l                                       ; $7784: $6d
    ld l, l                                       ; $7785: $6d
    ld a, l                                       ; $7786: $7d
    ld a, c                                       ; $7787: $79
    ld h, c                                       ; $7788: $61
    ld h, c                                       ; $7789: $61
    ld h, c                                       ; $778a: $61
    ld h, c                                       ; $778b: $61
    nop                                           ; $778c: $00
    nop                                           ; $778d: $00
    nop                                           ; $778e: $00
    nop                                           ; $778f: $00
    nop                                           ; $7790: $00
    nop                                           ; $7791: $00
    ldh a, [$fff0]                                ; $7792: $f0 $f0
    add b                                         ; $7794: $80
    add b                                         ; $7795: $80
    ldh [$ffe0], a                                ; $7796: $e0 $e0
    add b                                         ; $7798: $80
    add b                                         ; $7799: $80
    ldh a, [$fff0]                                ; $779a: $f0 $f0
    nop                                           ; $779c: $00
    nop                                           ; $779d: $00
    nop                                           ; $779e: $00
    nop                                           ; $779f: $00
    ret nz                                        ; $77a0: $c0

    ret nz                                        ; $77a1: $c0

    nop                                           ; $77a2: $00
    nop                                           ; $77a3: $00
    sbc $dc                                       ; $77a4: $de $dc
    jp c, $dada                                   ; $77a6: $da $da $da

    jp c, $dada                                   ; $77a9: $da $da $da

    nop                                           ; $77ac: $00
    nop                                           ; $77ad: $00
    nop                                           ; $77ae: $00
    nop                                           ; $77af: $00
    nop                                           ; $77b0: $00
    nop                                           ; $77b1: $00
    nop                                           ; $77b2: $00
    nop                                           ; $77b3: $00
    ldh a, [rSVBK]                                ; $77b4: $f0 $70
    ret nz                                        ; $77b6: $c0

    ret nz                                        ; $77b7: $c0

    ret nz                                        ; $77b8: $c0

    ret nz                                        ; $77b9: $c0

    db $f4                                        ; $77ba: $f4
    ld [hl], h                                    ; $77bb: $74
    nop                                           ; $77bc: $00
    nop                                           ; $77bd: $00
    nop                                           ; $77be: $00
    nop                                           ; $77bf: $00
    nop                                           ; $77c0: $00
    nop                                           ; $77c1: $00
    inc bc                                        ; $77c2: $03
    inc bc                                        ; $77c3: $03
    ld bc, $0101                                  ; $77c4: $01 $01 $01
    ld bc, $0d0d                                  ; $77c7: $01 $0d $0d
    rrca                                          ; $77ca: $0f
    rlca                                          ; $77cb: $07
    nop                                           ; $77cc: $00
    nop                                           ; $77cd: $00
    nop                                           ; $77ce: $00
    nop                                           ; $77cf: $00
    nop                                           ; $77d0: $00
    nop                                           ; $77d1: $00
    db $db                                        ; $77d2: $db
    db $db                                        ; $77d3: $db
    sbc e                                         ; $77d4: $9b
    sbc e                                         ; $77d5: $9b
    sbc e                                         ; $77d6: $9b
    sbc e                                         ; $77d7: $9b
    sbc e                                         ; $77d8: $9b
    sbc e                                         ; $77d9: $9b
    sbc a                                         ; $77da: $9f
    ld c, $00                                     ; $77db: $0e $00
    nop                                           ; $77dd: $00
    nop                                           ; $77de: $00
    nop                                           ; $77df: $00
    nop                                           ; $77e0: $00
    nop                                           ; $77e1: $00
    ld a, l                                       ; $77e2: $7d
    ld a, c                                       ; $77e3: $79
    ld l, h                                       ; $77e4: $6c
    ld l, h                                       ; $77e5: $6c
    ld a, h                                       ; $77e6: $7c
    ld a, b                                       ; $77e7: $78
    ld h, b                                       ; $77e8: $60
    ld h, b                                       ; $77e9: $60
    ld h, c                                       ; $77ea: $61
    ld h, c                                       ; $77eb: $61
    nop                                           ; $77ec: $00
    nop                                           ; $77ed: $00
    nop                                           ; $77ee: $00
    nop                                           ; $77ef: $00
    nop                                           ; $77f0: $00
    nop                                           ; $77f1: $00
    rst RST_28                                    ; $77f2: $ef
    rst RST_28                                    ; $77f3: $ef
    jp $c3c3                                      ; $77f4: $c3 $c3 $c3


    jp $c3c3                                      ; $77f7: $c3 $c3 $c3


    db $e3                                        ; $77fa: $e3
    db $e3                                        ; $77fb: $e3
    nop                                           ; $77fc: $00
    nop                                           ; $77fd: $00
    nop                                           ; $77fe: $00
    nop                                           ; $77ff: $00
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    nop                                           ; $7802: $00
    nop                                           ; $7803: $00
    nop                                           ; $7804: $00
    ld bc, $0703                                  ; $7805: $01 $03 $07
    nop                                           ; $7808: $00
    nop                                           ; $7809: $00
    nop                                           ; $780a: $00
    nop                                           ; $780b: $00
    nop                                           ; $780c: $00
    nop                                           ; $780d: $00
    nop                                           ; $780e: $00
    nop                                           ; $780f: $00
    inc de                                        ; $7810: $13
    rrca                                          ; $7811: $0f
    ccf                                           ; $7812: $3f
    ld a, a                                       ; $7813: $7f
    rst RST_38                                    ; $7814: $ff
    rst RST_38                                    ; $7815: $ff
    rst RST_38                                    ; $7816: $ff
    rst RST_38                                    ; $7817: $ff
    rlca                                          ; $7818: $07
    rrca                                          ; $7819: $0f
    nop                                           ; $781a: $00
    ld bc, $0000                                  ; $781b: $01 $00 $00
    nop                                           ; $781e: $00
    nop                                           ; $781f: $00
    db $f4                                        ; $7820: $f4
    ld hl, sp-$02                                 ; $7821: $f8 $fe
    rst RST_38                                    ; $7823: $ff
    rst RST_38                                    ; $7824: $ff
    rst RST_38                                    ; $7825: $ff
    rst RST_38                                    ; $7826: $ff
    rst RST_38                                    ; $7827: $ff
    rst RST_38                                    ; $7828: $ff
    rst RST_38                                    ; $7829: $ff
    rst RST_38                                    ; $782a: $ff
    rst RST_38                                    ; $782b: $ff
    ccf                                           ; $782c: $3f
    ld a, a                                       ; $782d: $7f
    rrca                                          ; $782e: $0f
    rra                                           ; $782f: $1f
    nop                                           ; $7830: $00
    nop                                           ; $7831: $00
    nop                                           ; $7832: $00
    nop                                           ; $7833: $00
    add b                                         ; $7834: $80
    ret nz                                        ; $7835: $c0

    ldh [$fff0], a                                ; $7836: $e0 $f0
    ldh a, [$fff8]                                ; $7838: $f0 $f8
    ld hl, sp-$04                                 ; $783a: $f8 $fc
    db $fc                                        ; $783c: $fc
    cp $fe                                        ; $783d: $fe $fe
    rst RST_38                                    ; $783f: $ff
    nop                                           ; $7840: $00
    nop                                           ; $7841: $00
    nop                                           ; $7842: $00
    nop                                           ; $7843: $00
    nop                                           ; $7844: $00
    nop                                           ; $7845: $00
    nop                                           ; $7846: $00
    nop                                           ; $7847: $00
    ld bc, $0701                                  ; $7848: $01 $01 $07
    rlca                                          ; $784b: $07
    rrca                                          ; $784c: $0f
    rrca                                          ; $784d: $0f
    rra                                           ; $784e: $1f
    rra                                           ; $784f: $1f
    nop                                           ; $7850: $00
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    nop                                           ; $7853: $00
    rrca                                          ; $7854: $0f
    rlca                                          ; $7855: $07
    ld a, a                                       ; $7856: $7f
    ccf                                           ; $7857: $3f
    rst RST_38                                    ; $7858: $ff
    db $fc                                        ; $7859: $fc
    ldh [$ffc0], a                                ; $785a: $e0 $c0
    nop                                           ; $785c: $00
    nop                                           ; $785d: $00
    ldh [$ffe0], a                                ; $785e: $e0 $e0
    nop                                           ; $7860: $00
    nop                                           ; $7861: $00
    nop                                           ; $7862: $00
    nop                                           ; $7863: $00
    db $fc                                        ; $7864: $fc
    ld hl, sp-$01                                 ; $7865: $f8 $ff
    cp $7f                                        ; $7867: $fe $7f
    rra                                           ; $7869: $1f
    rlca                                          ; $786a: $07
    inc bc                                        ; $786b: $03
    ld bc, $0000                                  ; $786c: $01 $00 $00
    nop                                           ; $786f: $00
    rlca                                          ; $7870: $07
    rrca                                          ; $7871: $0f
    ld bc, $0003                                  ; $7872: $01 $03 $00
    ld bc, $0000                                  ; $7875: $01 $00 $00
    add b                                         ; $7878: $80
    add b                                         ; $7879: $80
    ret nz                                        ; $787a: $c0

    ret nz                                        ; $787b: $c0

    ldh [$ffe0], a                                ; $787c: $e0 $e0
    ldh a, [$ff60]                                ; $787e: $f0 $60
    rst RST_38                                    ; $7880: $ff
    rst RST_38                                    ; $7881: $ff
    rst RST_38                                    ; $7882: $ff
    rst RST_38                                    ; $7883: $ff
    rst RST_38                                    ; $7884: $ff
    rst RST_38                                    ; $7885: $ff
    ld a, a                                       ; $7886: $7f
    rst RST_38                                    ; $7887: $ff
    ccf                                           ; $7888: $3f
    ld a, a                                       ; $7889: $7f
    ccf                                           ; $788a: $3f
    ccf                                           ; $788b: $3f
    rra                                           ; $788c: $1f
    ccf                                           ; $788d: $3f
    rrca                                          ; $788e: $0f
    rrca                                          ; $788f: $0f
    nop                                           ; $7890: $00
    nop                                           ; $7891: $00
    nop                                           ; $7892: $00
    add b                                         ; $7893: $80
    nop                                           ; $7894: $00
    add b                                         ; $7895: $80
    add b                                         ; $7896: $80
    add b                                         ; $7897: $80
    add b                                         ; $7898: $80
    ret nz                                        ; $7899: $c0

    add b                                         ; $789a: $80
    ret nz                                        ; $789b: $c0

    ret nz                                        ; $789c: $c0

    ret nz                                        ; $789d: $c0

    ret nz                                        ; $789e: $c0

    ret nz                                        ; $789f: $c0

    nop                                           ; $78a0: $00
    nop                                           ; $78a1: $00
    nop                                           ; $78a2: $00
    nop                                           ; $78a3: $00
    nop                                           ; $78a4: $00
    nop                                           ; $78a5: $00
    ld bc, $0301                                  ; $78a6: $01 $01 $03
    inc bc                                        ; $78a9: $03
    rlca                                          ; $78aa: $07
    rlca                                          ; $78ab: $07
    rrca                                          ; $78ac: $0f
    rrca                                          ; $78ad: $0f
    rrca                                          ; $78ae: $0f
    rrca                                          ; $78af: $0f
    jr c, jr_008_78f1                             ; $78b0: $38 $3f

    ld [hl], b                                    ; $78b2: $70
    ld a, a                                       ; $78b3: $7f
    ldh [rIE], a                                  ; $78b4: $e0 $ff
    ret nz                                        ; $78b6: $c0

    rst RST_38                                    ; $78b7: $ff
    cp h                                          ; $78b8: $bc
    rst RST_38                                    ; $78b9: $ff

jr_008_78ba:
    rst RST_38                                    ; $78ba: $ff
    rst RST_38                                    ; $78bb: $ff
    rst RST_38                                    ; $78bc: $ff
    rst RST_38                                    ; $78bd: $ff
    rst RST_38                                    ; $78be: $ff
    rst RST_38                                    ; $78bf: $ff

jr_008_78c0:
    jr jr_008_78ba                                ; $78c0: $18 $f8

    ld b, $fe                                     ; $78c2: $06 $fe
    ld bc, $00ff                                  ; $78c4: $01 $ff $00
    rst RST_38                                    ; $78c7: $ff
    nop                                           ; $78c8: $00
    rst RST_38                                    ; $78c9: $ff
    nop                                           ; $78ca: $00
    rst RST_38                                    ; $78cb: $ff
    add b                                         ; $78cc: $80
    rst RST_38                                    ; $78cd: $ff
    ret nz                                        ; $78ce: $c0

    rst RST_38                                    ; $78cf: $ff
    nop                                           ; $78d0: $00
    nop                                           ; $78d1: $00
    nop                                           ; $78d2: $00
    nop                                           ; $78d3: $00
    nop                                           ; $78d4: $00
    nop                                           ; $78d5: $00
    add b                                         ; $78d6: $80
    add b                                         ; $78d7: $80
    add b                                         ; $78d8: $80
    add b                                         ; $78d9: $80
    ld b, b                                       ; $78da: $40
    ret nz                                        ; $78db: $c0

    ld b, b                                       ; $78dc: $40
    ret nz                                        ; $78dd: $c0

    jr nz, jr_008_78c0                            ; $78de: $20 $e0

    ld [hl], b                                    ; $78e0: $70
    ld [hl], b                                    ; $78e1: $70
    ld a, b                                       ; $78e2: $78
    jr nc, @+$3a                                  ; $78e3: $30 $38

    jr nc, @+$3a                                  ; $78e5: $30 $38

    jr c, jr_008_7921                             ; $78e7: $38 $38

    jr jr_008_7923                                ; $78e9: $18 $38

    jr jr_008_7925                                ; $78eb: $18 $38

    jr jr_008_7927                                ; $78ed: $18 $38

    jr jr_008_7900                                ; $78ef: $18 $0f

jr_008_78f1:
    rrca                                          ; $78f1: $0f
    rlca                                          ; $78f2: $07
    rrca                                          ; $78f3: $0f
    rlca                                          ; $78f4: $07
    rlca                                          ; $78f5: $07
    rlca                                          ; $78f6: $07
    rlca                                          ; $78f7: $07
    inc bc                                        ; $78f8: $03
    rlca                                          ; $78f9: $07
    inc bc                                        ; $78fa: $03
    inc bc                                        ; $78fb: $03
    inc bc                                        ; $78fc: $03
    inc bc                                        ; $78fd: $03
    inc bc                                        ; $78fe: $03
    inc bc                                        ; $78ff: $03

jr_008_7900:
    ret nz                                        ; $7900: $c0

    ret nz                                        ; $7901: $c0

    ret nz                                        ; $7902: $c0

    ret nz                                        ; $7903: $c0

    ret nz                                        ; $7904: $c0

    ret nz                                        ; $7905: $c0

    ret nz                                        ; $7906: $c0

    ret nz                                        ; $7907: $c0

    add b                                         ; $7908: $80
    ret nz                                        ; $7909: $c0

    add b                                         ; $790a: $80
    ret nz                                        ; $790b: $c0

    add b                                         ; $790c: $80
    add b                                         ; $790d: $80
    add b                                         ; $790e: $80
    add b                                         ; $790f: $80
    rra                                           ; $7910: $1f
    rra                                           ; $7911: $1f
    ccf                                           ; $7912: $3f
    ccf                                           ; $7913: $3f
    ccf                                           ; $7914: $3f
    ccf                                           ; $7915: $3f
    ld a, a                                       ; $7916: $7f
    ld a, [hl]                                    ; $7917: $7e
    ld a, [hl]                                    ; $7918: $7e
    ld a, h                                       ; $7919: $7c
    ld a, h                                       ; $791a: $7c
    ld a, b                                       ; $791b: $78
    jr c, @+$3a                                   ; $791c: $38 $38

    jr jr_008_7938                                ; $791e: $18 $18

    rst RST_38                                    ; $7920: $ff

jr_008_7921:
    rst RST_38                                    ; $7921: $ff

jr_008_7922:
    rst RST_38                                    ; $7922: $ff

jr_008_7923:
    rst RST_38                                    ; $7923: $ff

jr_008_7924:
    rst RST_38                                    ; $7924: $ff

jr_008_7925:
    rst RST_38                                    ; $7925: $ff

jr_008_7926:
    ld a, a                                       ; $7926: $7f

jr_008_7927:
    ccf                                           ; $7927: $3f

jr_008_7928:
    ccf                                           ; $7928: $3f
    rra                                           ; $7929: $1f

jr_008_792a:
    rra                                           ; $792a: $1f
    rra                                           ; $792b: $1f

jr_008_792c:
    rra                                           ; $792c: $1f
    rra                                           ; $792d: $1f
    rra                                           ; $792e: $1f
    ccf                                           ; $792f: $3f
    ret nz                                        ; $7930: $c0

    rst RST_38                                    ; $7931: $ff
    ldh [rIE], a                                  ; $7932: $e0 $ff
    ldh [rIE], a                                  ; $7934: $e0 $ff
    ldh [rIE], a                                  ; $7936: $e0 $ff

jr_008_7938:
    ldh [rIE], a                                  ; $7938: $e0 $ff
    ldh [rIE], a                                  ; $793a: $e0 $ff
    ret nz                                        ; $793c: $c0

    rst RST_38                                    ; $793d: $ff
    ret nz                                        ; $793e: $c0

    rst RST_38                                    ; $793f: $ff
    jr nz, jr_008_7922                            ; $7940: $20 $e0

    jr nz, jr_008_7924                            ; $7942: $20 $e0

    jr nz, jr_008_7926                            ; $7944: $20 $e0

    jr nz, jr_008_7928                            ; $7946: $20 $e0

    jr nz, jr_008_792a                            ; $7948: $20 $e0

    jr nz, jr_008_792c                            ; $794a: $20 $e0

    ld b, b                                       ; $794c: $40
    ret nz                                        ; $794d: $c0

    ld b, c                                       ; $794e: $41
    ret nz                                        ; $794f: $c0

    jr c, jr_008_798a                             ; $7950: $38 $38

    jr c, jr_008_7984                             ; $7952: $38 $30

    ld a, b                                       ; $7954: $78
    jr nc, jr_008_79c7                            ; $7955: $30 $70

    ld [hl], b                                    ; $7957: $70
    ld [hl], b                                    ; $7958: $70
    ld [hl], b                                    ; $7959: $70
    ldh a, [$ff60]                                ; $795a: $f0 $60
    ldh [$ffe0], a                                ; $795c: $e0 $e0
    ldh [$ffe0], a                                ; $795e: $e0 $e0
    inc bc                                        ; $7960: $03
    inc bc                                        ; $7961: $03
    inc bc                                        ; $7962: $03
    inc bc                                        ; $7963: $03
    ld [bc], a                                    ; $7964: $02
    inc bc                                        ; $7965: $03
    nop                                           ; $7966: $00
    ld [bc], a                                    ; $7967: $02
    nop                                           ; $7968: $00
    nop                                           ; $7969: $00
    nop                                           ; $796a: $00
    nop                                           ; $796b: $00
    nop                                           ; $796c: $00
    nop                                           ; $796d: $00
    nop                                           ; $796e: $00
    nop                                           ; $796f: $00
    nop                                           ; $7970: $00
    add b                                         ; $7971: $80
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
    ld [$0700], sp                                ; $7980: $08 $00 $07
    nop                                           ; $7983: $00

jr_008_7984:
    rlca                                          ; $7984: $07
    rlca                                          ; $7985: $07
    inc bc                                        ; $7986: $03
    inc bc                                        ; $7987: $03
    inc bc                                        ; $7988: $03
    inc bc                                        ; $7989: $03

jr_008_798a:
    ld bc, $0101                                  ; $798a: $01 $01 $01
    ld bc, $0000                                  ; $798d: $01 $00 $00
    ld a, a                                       ; $7990: $7f
    ccf                                           ; $7991: $3f
    rst RST_38                                    ; $7992: $ff
    rst RST_38                                    ; $7993: $ff
    rst RST_38                                    ; $7994: $ff
    rst RST_38                                    ; $7995: $ff
    rst RST_38                                    ; $7996: $ff
    rst RST_38                                    ; $7997: $ff
    db $fc                                        ; $7998: $fc
    rst RST_38                                    ; $7999: $ff
    ld hl, sp-$01                                 ; $799a: $f8 $ff
    ldh [rIE], a                                  ; $799c: $e0 $ff
    nop                                           ; $799e: $00
    rst RST_38                                    ; $799f: $ff
    add b                                         ; $79a0: $80
    rst RST_38                                    ; $79a1: $ff
    add b                                         ; $79a2: $80
    rst RST_38                                    ; $79a3: $ff
    ld bc, $01ff                                  ; $79a4: $01 $ff $01
    rst RST_38                                    ; $79a7: $ff
    ld [bc], a                                    ; $79a8: $02
    cp $04                                        ; $79a9: $fe $04
    db $fc                                        ; $79ab: $fc
    ld [$10f8], sp                                ; $79ac: $08 $f8 $10
    ldh a, [$ff81]                                ; $79af: $f0 $81
    add c                                         ; $79b1: $81
    add e                                         ; $79b2: $83
    add e                                         ; $79b3: $83
    rlca                                          ; $79b4: $07
    inc bc                                        ; $79b5: $03
    rrca                                          ; $79b6: $0f

jr_008_79b7:
    rlca                                          ; $79b7: $07
    rra                                           ; $79b8: $1f
    ld c, $3e                                     ; $79b9: $0e $3e
    inc e                                         ; $79bb: $1c
    ld a, h                                       ; $79bc: $7c
    jr c, jr_008_79b7                             ; $79bd: $38 $f8

    ld [hl], b                                    ; $79bf: $70
    ret nz                                        ; $79c0: $c0

    ret nz                                        ; $79c1: $c0

    ret nz                                        ; $79c2: $c0

    add b                                         ; $79c3: $80
    add b                                         ; $79c4: $80
    add b                                         ; $79c5: $80
    nop                                           ; $79c6: $00

jr_008_79c7:
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
    rst RST_38                                    ; $79d1: $ff
    ld bc, $86ff                                  ; $79d2: $01 $ff $86
    cp $fc                                        ; $79d5: $fe $fc
    db $fc                                        ; $79d7: $fc
    rst RST_38                                    ; $79d8: $ff
    rst RST_38                                    ; $79d9: $ff
    sbc a                                         ; $79da: $9f
    sbc a                                         ; $79db: $9f
    sbc a                                         ; $79dc: $9f
    sbc a                                         ; $79dd: $9f
    jr nz, jr_008_7a10                            ; $79de: $20 $30

    ld h, c                                       ; $79e0: $61
    pop hl                                        ; $79e1: $e1
    add e                                         ; $79e2: $83
    add e                                         ; $79e3: $83
    rrca                                          ; $79e4: $0f
    rrca                                          ; $79e5: $0f
    ld a, a                                       ; $79e6: $7f
    ld a, a                                       ; $79e7: $7f
    db $fc                                        ; $79e8: $fc
    db $fc                                        ; $79e9: $fc
    ldh a, [$fff0]                                ; $79ea: $f0 $f0
    add b                                         ; $79ec: $80
    add b                                         ; $79ed: $80
    nop                                           ; $79ee: $00
    nop                                           ; $79ef: $00
    ldh a, [$ffe0]                                ; $79f0: $f0 $e0
    ldh [$ffc0], a                                ; $79f2: $e0 $c0
    add b                                         ; $79f4: $80
    add b                                         ; $79f5: $80
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
    ld bc, $0703                                  ; $7a06: $01 $03 $07
    rrca                                          ; $7a09: $0f
    nop                                           ; $7a0a: $00
    nop                                           ; $7a0b: $00
    nop                                           ; $7a0c: $00
    nop                                           ; $7a0d: $00
    nop                                           ; $7a0e: $00
    nop                                           ; $7a0f: $00

jr_008_7a10:
    nop                                           ; $7a10: $00
    nop                                           ; $7a11: $00
    rlca                                          ; $7a12: $07
    rrca                                          ; $7a13: $0f
    ld a, a                                       ; $7a14: $7f
    rst RST_38                                    ; $7a15: $ff
    rst RST_38                                    ; $7a16: $ff
    rst RST_38                                    ; $7a17: $ff
    rst RST_38                                    ; $7a18: $ff
    rst RST_38                                    ; $7a19: $ff
    rrca                                          ; $7a1a: $0f
    rra                                           ; $7a1b: $1f
    ld bc, $0003                                  ; $7a1c: $01 $03 $00
    nop                                           ; $7a1f: $00
    nop                                           ; $7a20: $00
    nop                                           ; $7a21: $00
    ldh [$fff0], a                                ; $7a22: $e0 $f0
    db $fc                                        ; $7a24: $fc
    cp $ff                                        ; $7a25: $fe $ff
    rst RST_38                                    ; $7a27: $ff
    rst RST_38                                    ; $7a28: $ff
    rst RST_38                                    ; $7a29: $ff
    rst RST_38                                    ; $7a2a: $ff
    rst RST_38                                    ; $7a2b: $ff
    rst RST_38                                    ; $7a2c: $ff
    rst RST_38                                    ; $7a2d: $ff
    ld a, a                                       ; $7a2e: $7f
    rst RST_38                                    ; $7a2f: $ff
    nop                                           ; $7a30: $00
    nop                                           ; $7a31: $00
    nop                                           ; $7a32: $00
    nop                                           ; $7a33: $00
    nop                                           ; $7a34: $00
    nop                                           ; $7a35: $00
    nop                                           ; $7a36: $00
    add b                                         ; $7a37: $80
    ret nz                                        ; $7a38: $c0

    ldh [$ffe0], a                                ; $7a39: $e0 $e0
    ldh a, [$fff0]                                ; $7a3b: $f0 $f0
    ld hl, sp-$08                                 ; $7a3d: $f8 $f8
    db $fc                                        ; $7a3f: $fc
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
    rrca                                          ; $7a56: $0f
    nop                                           ; $7a57: $00
    ld [hl], b                                    ; $7a58: $70
    nop                                           ; $7a59: $00
    add b                                         ; $7a5a: $80
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
    ldh a, [rP1]                                  ; $7a66: $f0 $00
    inc c                                         ; $7a68: $0c
    nop                                           ; $7a69: $00
    inc bc                                        ; $7a6a: $03
    nop                                           ; $7a6b: $00
    nop                                           ; $7a6c: $00
    nop                                           ; $7a6d: $00
    nop                                           ; $7a6e: $00
    nop                                           ; $7a6f: $00
    rra                                           ; $7a70: $1f
    ccf                                           ; $7a71: $3f
    rrca                                          ; $7a72: $0f
    rra                                           ; $7a73: $1f
    inc bc                                        ; $7a74: $03
    rlca                                          ; $7a75: $07
    ld bc, $0003                                  ; $7a76: $01 $03 $00
    ld bc, $0000                                  ; $7a79: $01 $00 $00
    add b                                         ; $7a7c: $80
    nop                                           ; $7a7d: $00
    ld b, b                                       ; $7a7e: $40
    nop                                           ; $7a7f: $00
    db $fc                                        ; $7a80: $fc
    db $fc                                        ; $7a81: $fc
    cp $fe                                        ; $7a82: $fe $fe
    cp $ff                                        ; $7a84: $fe $ff
    cp $ff                                        ; $7a86: $fe $ff
    rst RST_38                                    ; $7a88: $ff
    rst RST_38                                    ; $7a89: $ff
    ld a, a                                       ; $7a8a: $7f
    rst RST_38                                    ; $7a8b: $ff
    ld a, a                                       ; $7a8c: $7f
    ld a, a                                       ; $7a8d: $7f
    ccf                                           ; $7a8e: $3f
    ld a, a                                       ; $7a8f: $7f
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
    add b                                         ; $7a9b: $80
    nop                                           ; $7a9c: $00
    add b                                         ; $7a9d: $80
    add b                                         ; $7a9e: $80
    add b                                         ; $7a9f: $80
    nop                                           ; $7aa0: $00
    nop                                           ; $7aa1: $00
    nop                                           ; $7aa2: $00
    nop                                           ; $7aa3: $00
    nop                                           ; $7aa4: $00
    nop                                           ; $7aa5: $00
    nop                                           ; $7aa6: $00
    nop                                           ; $7aa7: $00
    ld bc, $0301                                  ; $7aa8: $01 $01 $03
    inc bc                                        ; $7aab: $03
    ld bc, $0001                                  ; $7aac: $01 $01 $00
    nop                                           ; $7aaf: $00
    nop                                           ; $7ab0: $00
    nop                                           ; $7ab1: $00
    nop                                           ; $7ab2: $00
    nop                                           ; $7ab3: $00
    ccf                                           ; $7ab4: $3f
    rra                                           ; $7ab5: $1f
    ld a, a                                       ; $7ab6: $7f
    ld a, a                                       ; $7ab7: $7f
    rst RST_38                                    ; $7ab8: $ff
    rst RST_38                                    ; $7ab9: $ff
    rst RST_38                                    ; $7aba: $ff
    rst RST_38                                    ; $7abb: $ff
    rst RST_38                                    ; $7abc: $ff
    rst RST_38                                    ; $7abd: $ff
    rst RST_38                                    ; $7abe: $ff
    rst RST_38                                    ; $7abf: $ff
    nop                                           ; $7ac0: $00
    nop                                           ; $7ac1: $00
    nop                                           ; $7ac2: $00
    nop                                           ; $7ac3: $00
    add b                                         ; $7ac4: $80
    nop                                           ; $7ac5: $00
    ldh a, [$ffe0]                                ; $7ac6: $f0 $e0
    db $fc                                        ; $7ac8: $fc
    db $fc                                        ; $7ac9: $fc
    ccf                                           ; $7aca: $3f
    cp $87                                        ; $7acb: $fe $87
    rst RST_38                                    ; $7acd: $ff
    pop bc                                        ; $7ace: $c1
    rst RST_38                                    ; $7acf: $ff
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
    ret nz                                        ; $7adc: $c0

    add b                                         ; $7add: $80
    ldh [$ffc0], a                                ; $7ade: $e0 $c0
    ld b, b                                       ; $7ae0: $40
    nop                                           ; $7ae1: $00
    jr nz, jr_008_7ae4                            ; $7ae2: $20 $00

jr_008_7ae4:
    jr nz, jr_008_7ae6                            ; $7ae4: $20 $00

jr_008_7ae6:
    stop                                          ; $7ae6: $10 $00
    stop                                          ; $7ae8: $10 $00
    stop                                          ; $7aea: $10 $00
    stop                                          ; $7aec: $10 $00
    stop                                          ; $7aee: $10 $00
    rra                                           ; $7af0: $1f
    ccf                                           ; $7af1: $3f
    rra                                           ; $7af2: $1f
    rra                                           ; $7af3: $1f
    rrca                                          ; $7af4: $0f
    rra                                           ; $7af5: $1f
    rrca                                          ; $7af6: $0f
    rrca                                          ; $7af7: $0f
    rrca                                          ; $7af8: $0f
    rrca                                          ; $7af9: $0f
    rlca                                          ; $7afa: $07
    rrca                                          ; $7afb: $0f
    rlca                                          ; $7afc: $07
    rlca                                          ; $7afd: $07
    rlca                                          ; $7afe: $07
    rlca                                          ; $7aff: $07
    add b                                         ; $7b00: $80
    add b                                         ; $7b01: $80
    add b                                         ; $7b02: $80
    add b                                         ; $7b03: $80
    add b                                         ; $7b04: $80
    add b                                         ; $7b05: $80
    add b                                         ; $7b06: $80
    add b                                         ; $7b07: $80
    add b                                         ; $7b08: $80
    add b                                         ; $7b09: $80
    nop                                           ; $7b0a: $00
    add b                                         ; $7b0b: $80
    nop                                           ; $7b0c: $00
    add b                                         ; $7b0d: $80
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
    ld [hl], c                                    ; $7b20: $71
    inc sp                                        ; $7b21: $33
    add hl, sp                                    ; $7b22: $39
    add hl, de                                    ; $7b23: $19
    dec c                                         ; $7b24: $0d
    dec c                                         ; $7b25: $0d
    rlca                                          ; $7b26: $07
    rlca                                          ; $7b27: $07
    rlca                                          ; $7b28: $07
    inc bc                                        ; $7b29: $03
    inc bc                                        ; $7b2a: $03
    ld bc, $0103                                  ; $7b2b: $01 $03 $01
    ld bc, $e000                                  ; $7b2e: $01 $00 $e0
    rst RST_38                                    ; $7b31: $ff
    ldh [rIE], a                                  ; $7b32: $e0 $ff
    ldh a, [rIE]                                  ; $7b34: $f0 $ff
    ldh a, [rIE]                                  ; $7b36: $f0 $ff
    ldh a, [rIE]                                  ; $7b38: $f0 $ff
    ldh a, [rIE]                                  ; $7b3a: $f0 $ff
    ldh [rIE], a                                  ; $7b3c: $e0 $ff
    ldh [rIE], a                                  ; $7b3e: $e0 $ff
    ld [hl], b                                    ; $7b40: $70
    ldh [$ff38], a                                ; $7b41: $e0 $38
    ldh a, [$ff38]                                ; $7b43: $f0 $38
    ld hl, sp+$3c                                 ; $7b45: $f8 $3c
    ld hl, sp+$2c                                 ; $7b47: $f8 $2c
    db $ec                                        ; $7b49: $ec
    ld c, [hl]                                    ; $7b4a: $4e
    call z, $ce4e                                 ; $7b4b: $cc $4e $ce
    adc [hl]                                      ; $7b4e: $8e
    add [hl]                                      ; $7b4f: $86
    stop                                          ; $7b50: $10 $00
    stop                                          ; $7b52: $10 $00
    stop                                          ; $7b54: $10 $00
    jr nz, jr_008_7b58                            ; $7b56: $20 $00

jr_008_7b58:
    jr nz, jr_008_7b5a                            ; $7b58: $20 $00

jr_008_7b5a:
    nop                                           ; $7b5a: $00
    nop                                           ; $7b5b: $00
    nop                                           ; $7b5c: $00
    nop                                           ; $7b5d: $00
    nop                                           ; $7b5e: $00
    nop                                           ; $7b5f: $00
    rlca                                          ; $7b60: $07
    rlca                                          ; $7b61: $07
    ld b, $07                                     ; $7b62: $06 $07
    ld b, $06                                     ; $7b64: $06 $06
    inc b                                         ; $7b66: $04
    ld b, $00                                     ; $7b67: $06 $00
    inc b                                         ; $7b69: $04
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
    ret nz                                        ; $7ba0: $c0

    rst RST_38                                    ; $7ba1: $ff
    pop hl                                        ; $7ba2: $e1
    ld a, a                                       ; $7ba3: $7f
    ld h, c                                       ; $7ba4: $61
    ld a, a                                       ; $7ba5: $7f
    ld [hl], d                                    ; $7ba6: $72
    ld a, [hl]                                    ; $7ba7: $7e
    ld [hl], h                                    ; $7ba8: $74
    inc a                                         ; $7ba9: $3c
    inc a                                         ; $7baa: $3c
    jr c, jr_008_7be5                             ; $7bab: $38 $38

    jr jr_008_7be7                                ; $7bad: $18 $38

    jr @-$78                                      ; $7baf: $18 $86

    add [hl]                                      ; $7bb1: $86
    ld b, $04                                     ; $7bb2: $06 $04
    inc b                                         ; $7bb4: $04
    inc b                                         ; $7bb5: $04
    nop                                           ; $7bb6: $00
    nop                                           ; $7bb7: $00
    ld [$1000], sp                                ; $7bb8: $08 $00 $10
    nop                                           ; $7bbb: $00
    jr nz, jr_008_7bbe                            ; $7bbc: $20 $00

jr_008_7bbe:
    ret nz                                        ; $7bbe: $c0

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
    inc e                                         ; $7be0: $1c
    jr jr_008_7c01                                ; $7be1: $18 $1e

    jr jr_008_7bfd                                ; $7be3: $18 $18

jr_008_7be5:
    nop                                           ; $7be5: $00
    nop                                           ; $7be6: $00

jr_008_7be7:
    nop                                           ; $7be7: $00
    nop                                           ; $7be8: $00
    nop                                           ; $7be9: $00
    nop                                           ; $7bea: $00
    nop                                           ; $7beb: $00
    nop                                           ; $7bec: $00
    nop                                           ; $7bed: $00
    nop                                           ; $7bee: $00
    nop                                           ; $7bef: $00
    add b                                         ; $7bf0: $80
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

jr_008_7bfd:
    nop                                           ; $7bfd: $00
    nop                                           ; $7bfe: $00
    nop                                           ; $7bff: $00
    nop                                           ; $7c00: $00

jr_008_7c01:
    nop                                           ; $7c01: $00
    nop                                           ; $7c02: $00
    nop                                           ; $7c03: $00
    nop                                           ; $7c04: $00
    nop                                           ; $7c05: $00
    nop                                           ; $7c06: $00
    nop                                           ; $7c07: $00
    nop                                           ; $7c08: $00
    ld bc, $0703                                  ; $7c09: $01 $03 $07
    rrca                                          ; $7c0c: $0f
    rra                                           ; $7c0d: $1f
    nop                                           ; $7c0e: $00
    nop                                           ; $7c0f: $00
    nop                                           ; $7c10: $00
    nop                                           ; $7c11: $00
    nop                                           ; $7c12: $00
    nop                                           ; $7c13: $00
    nop                                           ; $7c14: $00
    nop                                           ; $7c15: $00
    rrca                                          ; $7c16: $0f
    rra                                           ; $7c17: $1f
    rst RST_38                                    ; $7c18: $ff
    rst RST_38                                    ; $7c19: $ff
    rst RST_38                                    ; $7c1a: $ff
    rst RST_38                                    ; $7c1b: $ff
    rst RST_38                                    ; $7c1c: $ff
    rst RST_38                                    ; $7c1d: $ff
    rra                                           ; $7c1e: $1f
    ccf                                           ; $7c1f: $3f
    nop                                           ; $7c20: $00
    nop                                           ; $7c21: $00
    nop                                           ; $7c22: $00
    nop                                           ; $7c23: $00
    nop                                           ; $7c24: $00
    nop                                           ; $7c25: $00
    ret nz                                        ; $7c26: $c0

    ldh [$fff8], a                                ; $7c27: $e0 $f8
    db $fc                                        ; $7c29: $fc
    cp $ff                                        ; $7c2a: $fe $ff
    rst RST_38                                    ; $7c2c: $ff
    rst RST_38                                    ; $7c2d: $ff
    rst RST_38                                    ; $7c2e: $ff
    rst RST_38                                    ; $7c2f: $ff
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
    add b                                         ; $7c3c: $80
    ret nz                                        ; $7c3d: $c0

    ret nz                                        ; $7c3e: $c0

    ldh [rP1], a                                  ; $7c3f: $e0 $00
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
    inc bc                                        ; $7c4e: $03
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
    rst RST_38                                    ; $7c5c: $ff
    nop                                           ; $7c5d: $00
    nop                                           ; $7c5e: $00
    nop                                           ; $7c5f: $00
    inc bc                                        ; $7c60: $03
    rlca                                          ; $7c61: $07
    nop                                           ; $7c62: $00
    ld bc, $0000                                  ; $7c63: $01 $00 $00
    nop                                           ; $7c66: $00
    nop                                           ; $7c67: $00
    nop                                           ; $7c68: $00
    nop                                           ; $7c69: $00
    nop                                           ; $7c6a: $00
    nop                                           ; $7c6b: $00
    nop                                           ; $7c6c: $00
    nop                                           ; $7c6d: $00
    ldh [rP1], a                                  ; $7c6e: $e0 $00
    rst RST_38                                    ; $7c70: $ff
    rst RST_38                                    ; $7c71: $ff
    rst RST_38                                    ; $7c72: $ff
    rst RST_38                                    ; $7c73: $ff
    ccf                                           ; $7c74: $3f
    ld a, a                                       ; $7c75: $7f
    rra                                           ; $7c76: $1f
    ccf                                           ; $7c77: $3f
    rlca                                          ; $7c78: $07
    rrca                                          ; $7c79: $0f
    inc bc                                        ; $7c7a: $03
    rlca                                          ; $7c7b: $07
    ld bc, $0003                                  ; $7c7c: $01 $03 $00
    ld bc, $f0e0                                  ; $7c7f: $01 $e0 $f0
    ldh a, [$fff8]                                ; $7c82: $f0 $f8
    ld hl, sp-$04                                 ; $7c84: $f8 $fc
    db $fc                                        ; $7c86: $fc
    db $fc                                        ; $7c87: $fc
    db $fc                                        ; $7c88: $fc
    cp $fc                                        ; $7c89: $fe $fc
    cp $fe                                        ; $7c8b: $fe $fe
    cp $fe                                        ; $7c8d: $fe $fe
    rst RST_38                                    ; $7c8f: $ff
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
    inc bc                                        ; $7cac: $03
    ld bc, $0303                                  ; $7cad: $01 $03 $03
    ld [$0000], sp                                ; $7cb0: $08 $00 $00
    nop                                           ; $7cb3: $00
    nop                                           ; $7cb4: $00
    nop                                           ; $7cb5: $00
    nop                                           ; $7cb6: $00
    nop                                           ; $7cb7: $00
    nop                                           ; $7cb8: $00
    nop                                           ; $7cb9: $00
    nop                                           ; $7cba: $00
    nop                                           ; $7cbb: $00
    ldh a, [$ffe0]                                ; $7cbc: $f0 $e0
    db $fc                                        ; $7cbe: $fc
    db $fc                                        ; $7cbf: $fc
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
    jr jr_008_7cd2                                ; $7cd0: $18 $00

jr_008_7cd2:
    inc b                                         ; $7cd2: $04
    nop                                           ; $7cd3: $00
    ld [bc], a                                    ; $7cd4: $02
    nop                                           ; $7cd5: $00
    ld [bc], a                                    ; $7cd6: $02
    nop                                           ; $7cd7: $00
    ld bc, $0100                                  ; $7cd8: $01 $00 $01
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
    add b                                         ; $7cec: $80
    nop                                           ; $7ced: $00
    add b                                         ; $7cee: $80
    nop                                           ; $7cef: $00
    cp $ff                                        ; $7cf0: $fe $ff
    ld a, a                                       ; $7cf2: $7f
    rst RST_38                                    ; $7cf3: $ff
    ccf                                           ; $7cf4: $3f
    ld a, a                                       ; $7cf5: $7f
    ccf                                           ; $7cf6: $3f
    ccf                                           ; $7cf7: $3f
    rra                                           ; $7cf8: $1f
    ccf                                           ; $7cf9: $3f
    rra                                           ; $7cfa: $1f
    rra                                           ; $7cfb: $1f
    rra                                           ; $7cfc: $1f
    rra                                           ; $7cfd: $1f
    ld c, $1f                                     ; $7cfe: $0e $1f
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
    rst RST_38                                    ; $7d20: $ff
    ld a, [hl]                                    ; $7d21: $7e
    rra                                           ; $7d22: $1f
    rrca                                          ; $7d23: $0f
    inc bc                                        ; $7d24: $03
    ld bc, $0001                                  ; $7d25: $01 $01 $00
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
    add b                                         ; $7d32: $80
    add b                                         ; $7d33: $80
    ldh [$ffc0], a                                ; $7d34: $e0 $c0
    ldh a, [$ffe0]                                ; $7d36: $f0 $e0
    ld hl, sp+$70                                 ; $7d38: $f8 $70
    ld a, b                                       ; $7d3a: $78
    jr c, jr_008_7d79                             ; $7d3b: $38 $3c

    jr jr_008_7d5b                                ; $7d3d: $18 $1c

    inc e                                         ; $7d3f: $1c
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
    ld bc, $0100                                  ; $7d4c: $01 $00 $01
    nop                                           ; $7d4f: $00
    add b                                         ; $7d50: $80
    nop                                           ; $7d51: $00
    add b                                         ; $7d52: $80
    nop                                           ; $7d53: $00
    add b                                         ; $7d54: $80
    nop                                           ; $7d55: $00
    add b                                         ; $7d56: $80
    nop                                           ; $7d57: $00
    add b                                         ; $7d58: $80
    nop                                           ; $7d59: $00
    add b                                         ; $7d5a: $80

jr_008_7d5b:
    nop                                           ; $7d5b: $00
    nop                                           ; $7d5c: $00
    nop                                           ; $7d5d: $00
    nop                                           ; $7d5e: $00
    nop                                           ; $7d5f: $00
    ld c, $0f                                     ; $7d60: $0e $0f
    ld c, $0e                                     ; $7d62: $0e $0e
    ld c, $0e                                     ; $7d64: $0e $0e
    inc c                                         ; $7d66: $0c
    ld c, $0c                                     ; $7d67: $0e $0c
    inc c                                         ; $7d69: $0c
    ld [$000c], sp                                ; $7d6a: $08 $0c $00
    ld [$0000], sp                                ; $7d6d: $08 $00 $00
    nop                                           ; $7d70: $00
    nop                                           ; $7d71: $00
    nop                                           ; $7d72: $00
    nop                                           ; $7d73: $00
    nop                                           ; $7d74: $00
    nop                                           ; $7d75: $00
    nop                                           ; $7d76: $00
    nop                                           ; $7d77: $00
    nop                                           ; $7d78: $00

jr_008_7d79:
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
    ld e, $0c                                     ; $7da0: $1e $0c
    ld c, $0e                                     ; $7da2: $0e $0e
    ld c, $06                                     ; $7da4: $0e $06
    rrca                                          ; $7da6: $0f
    ld b, $07                                     ; $7da7: $06 $07
    rlca                                          ; $7da9: $07
    rlca                                          ; $7daa: $07
    rlca                                          ; $7dab: $07
    rlca                                          ; $7dac: $07
    inc bc                                        ; $7dad: $03
    rlca                                          ; $7dae: $07
    ld [bc], a                                    ; $7daf: $02
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

Call_008_7fe0:
    nop                                           ; $7fe0: $00
    nop                                           ; $7fe1: $00

Call_008_7fe2:
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
